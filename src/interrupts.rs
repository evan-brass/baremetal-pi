use bitvec::{array::BitArray, order::Msb0};

use crate::memory::interrupts::*;
use crate::memory::timer::TIMER_CONTROL_STATUS;

use super::{
	cpu::ExceptionLevel,
	delay,
	gpio::{self, Gpio},
	uart::Uart1,
};
use core::fmt::Write;

extern "C" {
	static __int_vec_base: u8;
}

/*
	The base (bus) address for the interrupt registers is: 0x7E00B000
	The base (bus) address for the system timer is: 0x7E003000
*/

// We use the same interrupt vector for all exception levels, so this handler is called for all exceptions.
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
	writeln!(&mut uart1, "\nException occured ({}):", id).unwrap();
	writeln!(&mut uart1, "- Link Register: {:p}", link).unwrap();
	writeln!(
		&mut uart1,
		"- Syndrome: {:b} {:b}",
		exception_class, instruction_length
	)
	.unwrap();
	writeln!(&mut uart1, "- Fault Address: {}", far).unwrap();
	writeln!(&mut uart1, "- Exception Link: {:p}", elr).unwrap();
	match id {
		0 | 4 | 8 | 12 => {
			// Sync
		}
		1 | 5 | 9 | 13 => {
			// IRQ
			let basic = unsafe { core::ptr::read_volatile(IRQ_PEND_BASIC) };
			writeln!(&mut uart1, "- IRQ Basic: {:b}", basic).unwrap();
			if basic & 0b100000000 != 0 {
				let irq1 = unsafe { core::ptr::read_volatile(IRQ_PEND_1) };
				writeln!(&mut uart1, "  - IRQ 1: {:b}", irq1).unwrap();
				unsafe {
					core::ptr::write_volatile(IRQ_PEND_1, 0);
				}
				if irq1 & 0b10 != 0 {
					writeln!(&mut uart1, "  - TIMER_CS: {:b}", unsafe {
						core::ptr::read_volatile(TIMER_CONTROL_STATUS)
					})
					.unwrap();
					unsafe { core::ptr::write_volatile(TIMER_CONTROL_STATUS, 0b10) };
				}
			}
			if basic & 0b1000000000 != 0 {
				let irq2 = unsafe { core::ptr::read_volatile(IRQ_PEND_2) };
				writeln!(&mut uart1, "  - IRQ 2: {:b}", irq2).unwrap();
			}
		}
		2 | 6 | 10 | 14 => {
			// FIQ
		}
		3 | 7 | 11 | 15 => {
			// SError
		}
		_ => unreachable!(),
	}
	writeln!(&mut uart1, "Exception ended.").unwrap();
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

		// Setup interrupt routing: SError / Abort, FIQ, and IRQ should be taken and routed to EL3
		asm!(
			"mrs x8, SCR_EL3",
			"orr x8, x8, {}",
			"msr SCR_EL3, x8",
			const 0b1110,
			out("x8") _
		);

		// Unmask the IRQs that we're allowed to access (The others are only for the GPU)

		// Unmask all interrupts (Interrupts are bits 9-6; 0 is unmasked.)
		let mask = 0b0000 << 6;
		asm!("msr DAIF, {:x}", in(reg) mask);

		// Enable all the basic interrupts in the interrupt *controller*
		core::ptr::write_volatile(IRQ_ENABLE_BASIC, !0b11111111);

		// Enable Sytem Timer Match IRQ 1
		core::ptr::write_volatile(IRQ_ENABLE_1, 0b10);
	}
}

macro_rules! make_interrupt {
	($function_name:ident, $handler_name:literal) => {
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
				options(noreturn)
			);
		}
	};
}

// Current Exception level - Stack 0
make_interrupt!(int_sync_sp0, "interrupt_handler");
make_interrupt!(int_irq_sp0, "interrupt_handler");
make_interrupt!(int_fiq_sp0, "interrupt_handler");
make_interrupt!(int_serr_sp0, "interrupt_handler");
// Current Exception level - Stack x
make_interrupt!(int_sync_spx, "interrupt_handler");
make_interrupt!(int_irq_spx, "interrupt_handler");
make_interrupt!(int_fiq_spx, "interrupt_handler");
make_interrupt!(int_serr_spx, "interrupt_handler");
// Lower Exception level - aarch64
make_interrupt!(int_sync_lel64, "interrupt_handler");
make_interrupt!(int_irq_lel64, "interrupt_handler");
make_interrupt!(int_fiq_lel64, "interrupt_handler");
make_interrupt!(int_serr_lel64, "interrupt_handler");
// Lower Exception level - aarch32
make_interrupt!(int_sync_lel32, "interrupt_handler");
make_interrupt!(int_irq_lel32, "interrupt_handler");
make_interrupt!(int_fiq_lel32, "interrupt_handler");
make_interrupt!(int_serr_lel32, "interrupt_handler");
