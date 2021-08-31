use super::{main, uart::Uart1};
use core::{fmt::Write, panic::PanicInfo};

// pub fn get_el() -> u8 {
// 	let current_el: u64;
// 	unsafe {
// 		asm!("mrs {}, CurrentEL", out(reg) current_el);
// 	}
// 	(current_el >> 2) as u8
// }

extern "C" {
	static __stack_start: u8;
	static mut __bss_start: u8;
	static __bss_end: u8;
}

#[cfg(target_arch = "aarch64")]
#[panic_handler]
fn handle_panic(panic_info: &PanicInfo) -> ! {
	let mut uart1 = Uart1::new();
	write!(&mut uart1, "\r\npanic occurred: {:#?}", panic_info).unwrap();
	halt();
}

#[cfg(target_arch = "aarch64")]
fn halt() -> ! {
	loop {
		unsafe {
			asm!("wfe");
		}
	}
}

// armstub8.S
// global_asm!(include_str!("armstub.S"));
// #[no_mangle]
// #[link_section = ".armstub"]
// #[naked]
// pub unsafe extern "C" fn _armstub() {
// 	asm!(
// 		// Turn on the ACT LED
// 		"mrs x8, mpidr_el1",
// 		"tst x8, #0x3",
// 		"b {}",
// 		sym _start,
// 		options(noreturn)
// 	)
// }

// STAGE 0: Since we're setting up the stack pointer in this function, we can't use the stack pointer.  If we have any calls in here then a function prelude will be inserted that
#[no_mangle]
#[link_section = ".boot"]
#[naked]
pub unsafe extern "C" fn _start() -> ! {
	// TODO: Setup the non-boot cores
	asm!(
		"mrs x8, mpidr_el1",
		"tst x8, #0x3",
		"b.eq 3f",
		"2:",
		"wfe",
		"b 2b",
		"3:",
		// "ldr x8, {}",
		// "mov sp, x8",
		"adrp x1, {}",
		"mov sp, x1",
		"b {}",
		// const 0x80_000,
		sym __stack_start,
		// sym _start,
		sym rust_entry,
		options(noreturn)
	);
}

unsafe fn get_bss() -> &'static mut [u8] {
	let start = core::ptr::addr_of_mut!(__bss_start);
	let end = core::ptr::addr_of!(__bss_end);
	core::slice::from_raw_parts_mut(start, start.offset_from(end) as usize)
}

// STAGE 1: Now that the stack pointer is setup and only one processor is running, we need to clear BSS and (TODO) setup globals.
#[no_mangle]
fn rust_entry() -> ! {
	// Zero the bss section
	let bss = unsafe { get_bss() };
	bss.fill(0);

	// Break to main
	main();
}
