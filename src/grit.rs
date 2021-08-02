use super::main;

extern "C" {
	static __bss_start: *mut u8;
	static __bss_end: *mut u8;
}

pub fn halt() -> ! {
	loop {
		unsafe {
			asm!("wfe");
		}
	}
}

// STAGE 0: Since we're setting up the stack pointer in this function, we can't use the stack pointer.  If we have any calls in here then a function prelude will be inserted that
#[no_mangle]
#[link_section = ".boot"]
pub extern "C" fn _start() -> ! {
	unsafe {
		// Setup stack pointer for the boot core:
		asm!("mov sp, {}", const 0x80_000); // The stack grows down in memory.

		// Sleep if running on a core other than core 0:
		let cpu_info: u64;
		asm!("mrs {}, mpidr_el1", out(reg) cpu_info);
		let cpu_id = cpu_info & 0b11;
		if cpu_id != 0 {
			loop {
				asm!("wfe");
			}
		}
	}
	stage_one();
}

// STAGE 1: Now that the stack pointer is setup and only one processor is running, we need to clear BSS and (TODO) setup globals.
fn stage_one() -> ! {
	// Zero the bss section
	let bss = unsafe {
		core::slice::from_raw_parts_mut(__bss_start, __bss_start.offset_from(__bss_end) as usize)
	};
	bss.fill(0);

	// Break to main
	main();
}
