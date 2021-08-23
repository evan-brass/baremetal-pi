use super::{main, uart::Uart1};
use core::{fmt::Write, panic::PanicInfo};

extern "C" {
	static __bss_start: *mut u8;
	static __bss_end: *mut u8;
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

// STAGE 0: Since we're setting up the stack pointer in this function, we can't use the stack pointer.  If we have any calls in here then a function prelude will be inserted that
#[no_mangle]
#[link_section = ".boot"]
#[naked]
pub unsafe extern "C" fn _start() -> ! {
	asm!(
		"mrs x8, mpidr_el1",
		"tst x8, #0x3",
		"b.eq 3f",
		"2:",
		"wfe",
		"b 2b",
		"3:",
		"mov sp, {}",
		"b rust_entry",
		const 0x80_000,
		options(noreturn)
	);

	// // Sleep if running on a core other than core 0:
	// let cpu_info: u64;
	// asm!("mrs {}, mpidr_el1", out(reg) cpu_info);
	// let cpu_id = cpu_info & 0b11;
	// while cpu_id != 0 {
	// 	asm!("wfe");
	// }

	// // Setup stack pointer for the boot core:
	// asm!("mov sp, {}", const 0x80_000); // The stack grows down in memory.

	// // TODO: Jump to the entry function.

	// rust_entry();
}

// STAGE 1: Now that the stack pointer is setup and only one processor is running, we need to clear BSS and (TODO) setup globals.
#[no_mangle]
fn rust_entry() -> ! {
	// Zero the bss section
	let bss = unsafe {
		core::slice::from_raw_parts_mut(__bss_start, __bss_start.offset_from(__bss_end) as usize)
	};
	bss.fill(0);

	// Break to main
	main();
}
