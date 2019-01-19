#![no_std]
#![feature(asm)]
#![no_main]

extern crate panic_abort;

//const GPIO_BASE: u32 = 0x2020_0000;
const GPFSEL1: *mut u32 = 0x2020_0004 as *mut u32;
const GPSET0: *mut u32 = 0x2020_001c as *mut u32;
const GPCLR0: *mut u32 = 0x2020_0028 as *mut u32;

fn wait(time: u32) {
	for _ in 0..time {
		for _ in 0..10000 {
			unsafe { asm!("nop") }
		}
	}
}

#[link_section=".text.boot"]
#[no_mangle]
pub extern fn boot () -> ! {
	// Set the ACT LED (GPIO Pin 29) to output (001)
	unsafe {
		// 000 -> Input; 001 -> Output
		*GPFSEL1 = 0b00_001_000_000_000_000_000_000_000_000_000
	}
    loop {
		// Turn the ACT LED on
		unsafe {
			*GPSET0 = 1 << 29;
		}
		wait(500);
		// Turn the ACT LED off
		unsafe {
			*GPCLR0 = 1 << 29;
		}
		wait(500);
	}
}
