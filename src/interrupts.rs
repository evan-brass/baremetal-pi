use super::{
	delay,
	gpio::{self, Gpio},
	uart::Uart1,
};
use core::fmt::Write;

/* C-calling convention: ARM (A64)

The 64-bit ARM (AArch64) calling convention allocates the 31 general-purpose registers as:[2]

x31 (SP): Stack pointer or a zero register, depending on context.
x30 (LR): Procedure link register, used to return from subroutines.
x29 (FP): Frame pointer.
x19 to x29: Callee-saved.
x18 (PR): Platform register. Used for some operating-system-specific special purpose, or an additional caller-saved register.
x16 (IP0) and x17 (IP1): Intra-Procedure-call scratch registers.
x9 to x15: Local variables, caller saved.
x8 (XR): Indirect return value address.
x0 to x7: Argument values passed to and results returned from a subroutine.


All registers starting with x have a corresponding 32-bit register prefixed with w. Thus, a 32-bit x0 is called w0.

Similarly, the 32 floating-point registers are allocated as:[3]

v0 to v7: Argument values passed to and results returned from a subroutine.
v8 to v15: callee-saved, but only the bottom 64 bits need to be preserved.
v16 to v31: Local variables, caller saved.
*/

extern "C" {
	static __int_vec_base: u8;
}

macro_rules! make_interrupt {
	($function_name:ident, $id:literal, $handler_name:literal) => {
		#[link_section = concat!(".int_vec.", stringify!($function_name))]
		#[no_mangle]
		#[naked]
		pub unsafe extern "C" fn $function_name() {
			asm!(
				// Store corruptible registers
				"stp x0, x1, [sp, #-16]!",
				"stp x2, x3, [sp, #-16]!",
				"stp x4, x5, [sp, #-16]!",
				"stp x6, x7, [sp, #-16]!",
				"stp x8, x9, [sp, #-16]!",
				"stp x10, x11, [sp, #-16]!",
				"stp x12, x13, [sp, #-16]!",
				"stp x14, x15, [sp, #-16]!",
				"stp x16, x17, [sp, #-16]!",
				"stp x18, x19, [sp, #-16]!",
				"stp x29, x30, [sp, #-16]!",
				// Pass the exception level to the handler
				// "mov x0, {}",
				// Call the Rust interrupt handler
				concat!("bl ", $handler_name),
				// Restore corruptible registers
				"ldp x29, x30, [sp], #16",
				"ldp x18, x19, [sp], #16",
				"ldp x16, x17, [sp], #16",
				"ldp x14, x15, [sp], #16",
				"ldp x12, x13, [sp], #16",
				"ldp x10, x11, [sp], #16",
				"ldp x8, x9, [sp], #16",
				"ldp x6, x7, [sp], #16",
				"ldp x4, x5, [sp], #16",
				"ldp x2, x3, [sp], #16",
				"ldp x0, x1, [sp], #16",
				// Return from the exception
				"eret",
				// const $id,
				options(noreturn)
			);
		}
	};
}

// Current Exception level - Stack 0
make_interrupt!(int_sync_sp0, 0, "interrupt_handler");
make_interrupt!(int_irq_sp0, 1, "interrupt_handler");
make_interrupt!(int_fiq_sp0, 2, "interrupt_handler");
make_interrupt!(int_serr_sp0, 3, "interrupt_handler");
// Current Exception level - Stack x
make_interrupt!(int_sync_spx, 4, "interrupt_handler");
make_interrupt!(int_irq_spx, 5, "interrupt_handler");
make_interrupt!(int_fiq_spx, 6, "interrupt_handler");
make_interrupt!(int_serr_spx, 7, "interrupt_handler");
// Lower Exception level - aarch64
make_interrupt!(int_sync_lel64, 8, "interrupt_handler");
make_interrupt!(int_irq_lel64, 9, "interrupt_handler");
make_interrupt!(int_fiq_lel64, 10, "interrupt_handler");
make_interrupt!(int_serr_lel64, 11, "interrupt_handler");
// Lower Exception level - aarch32
make_interrupt!(int_sync_lel32, 12, "interrupt_handler");
make_interrupt!(int_irq_lel32, 13, "interrupt_handler");
make_interrupt!(int_fiq_lel32, 14, "interrupt_handler");
make_interrupt!(int_serr_lel32, 15, "interrupt_handler");

#[no_mangle]
pub extern "C" fn interrupt_handler() {
	// TODO: Make this function work for more then just el3
	let link: *const u8;
	let esr: u64;
	let far: u64;
	let mut elr: *const u8;
	unsafe {
		asm!(
			"mov {}, x30",
			"mrs {:x}, ESR_EL3",
			"mrs {:x}, FAR_EL3",
			"mrs {:x}, ELR_EL3",
			out(reg) link,
			out(reg) esr,
			out(reg) far,
			out(reg) elr
		);
	}
	let vbase = unsafe { core::ptr::addr_of!(__int_vec_base) };
	let id = unsafe { link.offset_from(vbase) } / 128;
	let instruction_length = (esr >> 25) & 0b1;
	let exception_class = (esr >> 26) & 0b111111;
	let mut uart1 = Uart1::new();
	writeln!(&mut uart1, "Exception occured ({}):", id).unwrap();
	writeln!(&mut uart1, "- Link Register: {:p}", link).unwrap();
	writeln!(
		&mut uart1,
		"- Syndrome: {:b} {:b}",
		exception_class, instruction_length
	)
	.unwrap();
	writeln!(&mut uart1, "- Fault Address: {}", far).unwrap();
	writeln!(&mut uart1, "- Exception Link: {:p}", elr).unwrap();
	writeln!(&mut uart1, "Exception ended.").unwrap();

	// elr += 4;

	// unsafe {
	// 	asm!(
	// 		"msr ELR_EL3, {:x}",
	// 		in(reg) elr
	// 	);
	// }
}

pub fn setup_interrupts(console: &mut Uart1) {
	let vbar = unsafe { core::ptr::addr_of!(__int_vec_base) };
	// unsafe {
	// 	asm!("ldr {}, __interrupt_vector", out(reg) vbar);
	// }
	writeln!(console, "Interrupt vector base: {:p}", vbar).unwrap();
	let res = vbar as u64 & 0b11111111111;
	if res != 0 {
		writeln!(
			console,
			"The interrupt vector ({:p}) isn't properly aligned: {:b}",
			vbar as *const u8, res
		)
		.unwrap();
	} else {
		writeln!(console, "Interrupt vec is properly aligned.").unwrap();
	}
	unsafe {
		// Set the Vector base into the VBAR
		asm!(
			"msr VBAR_EL3, {0}",
			"msr VBAR_EL2, {0}",
			"msr VBAR_EL1, {0}",
			in(reg) vbar
		);

		// Unmask all interrupts (Interrupts are bits 9-6; 0 is unmasked.)
		let mask = 0b0000 << 6;
		asm!("msr DAIF, {:x}", in(reg) mask);
	}
}
