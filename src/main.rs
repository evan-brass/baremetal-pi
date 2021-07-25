#![no_std]
#![no_main]
#![feature(asm)]

use core::panic::PanicInfo;

#[panic_handler]
fn handle_panic(_: &PanicInfo) -> ! {
	loop {}
}

const IO_BASE: usize = 0x3F000000;
const GPFSEL2: *mut u32 = (IO_BASE + 0x20_0008) as *mut u32;
const GPSET0: *mut u32 = (IO_BASE + 0x20_001c) as *mut u32;
const GPCLR0: *mut u32 = (IO_BASE + 0x20_0028) as *mut u32;
/**
 * GPFSEL2: 0x7E20_0008(bus address)
 * GPIO Pin 29 is the ACT LED.  It's FSEL is bits 29-27 of GPFSEL2.  001 is output, 000 is input.
 * 
 * Peripheral base address in bus coords: 0x7e00_0000
 */

 fn delay(count: usize) {
	 for _ in 0..count {
		 unsafe {
			asm!("nop");
		 }
	 }
 }

#[no_mangle]
pub extern "C" fn _start() -> ! {
	unsafe {
		// Setup stack pointer:
		asm!("mov sp, #0x8000"); // Our code starts at 0x8000 so the stack must grow down in memory.
		
		// TODO: Setup interrupt handling
	
		// Sleep  if running on a core other than core 0:
		let cpu_info: u64;
		asm!("mrs {}, mpidr_el1", out(reg) cpu_info);
		
		let cpu_id = cpu_info & 0b11;
		if cpu_id != 0 {
			loop { asm!("wfe"); }
		}

		// set GPIO29 (ACT LED) to output:
		*GPFSEL2 = 0b00_001_000_000_000_000_000_000_000_000_000;
		
		loop {
			*GPSET0 = 1 << 29;
			delay(4_000_000);
			*GPCLR0 = 1 << 29;
			delay(1_000_000);
		}
	}
}