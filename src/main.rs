#![cfg_attr(target_arch = "aarch64", no_main, no_std)]
#![feature(asm)]
#![cfg_attr(not(target_arch = "aarch64"), allow(unused))]
#[cfg(not(target_arch = "aarch64"))]
fn main() {}


use core::{fmt::Write, ops::Range, panic::PanicInfo, ptr};

mod gpio;
mod uart;
use self::{
	gpio::Gpio,
	uart::Uart1,
};

extern "C" {
	static __bss_start: *mut u8;
	static __bss_end: *mut u8;
}

#[cfg(target_arch = "aarch64")]
#[panic_handler]
fn handle_panic(_: &PanicInfo) -> ! {
	loop {}
}

#[inline]
unsafe fn set_bits(target: *mut u32, r: Range<u32>, val: u32) {
	assert!(r.end <= 32);
	assert!(val < 2u32.pow(r.end - r.start));
	let val = val << r.start;

	let mask = !(2u32.pow(r.end) - 2u32.pow(r.start));

	let mut m = ptr::read_volatile(target);
	m &= mask;
	m |= val;
	ptr::write_volatile(target, m);
}

const IO_BASE: usize = 0x3F000000;

#[inline]
fn delay(count: usize) {
	if cfg!(target_arch = "aarch64") {
		for _ in 0..count {
			unsafe {
				asm!("nop");
			}
		}
	} else {}
}

#[cfg(target_arch = "aarch64")]
#[no_mangle]
#[link_section = ".boot"]
pub extern "C" fn _start() -> ! {
	unsafe {
		// Setup stack pointer:
		asm!("mov sp, #0x80000"); // Our code starts at 0x80000 so the stack must grow down in memory.

		// TODO: Setup interrupt handling

		// Sleep if running on a core other than core 0:
		let cpu_info: u64;
		asm!("mrs {}, mpidr_el1", out(reg) cpu_info);

		let cpu_id = cpu_info & 0b11;
		if cpu_id != 0 {
			loop {
				asm!("wfe");
			}
		}

		// Zero the bss section
		// let mut bss = unsafe {
		// 	core::slice::from_raw_parts_mut(__bss_start, __bss_start.offset_from(__bss_end) as usize)
		// };
		// bss.fill(0);

		// set GPIO29 (ACT LED) to output:
		// let mut act_led = Gpio::new(29);
		// act_led.configure(gpio::Func::Output);
		// set_bits(GPFSEL2, 27..30, 0b001);

		let mut uart1 = Uart1::new();
		// uart1.write_str("\r\nGot to the first spot\r\n").unwrap();
		// uart1.write_fmt(format_args!("Hello World")).unwrap();

		let mut act_led = Gpio::new(29);
		act_led.configure(gpio::Func::Output);
		// *GPFSEL2 = 0b00_001_000_000_000_000_000_000_000_000_000;

		loop {
			act_led.high();
			delay(1_000_000);

			act_led.low();
			uart1.write_str("Hello World!\r\n").unwrap();
			// writeln!(&mut uart1, "Hello World!");
			delay(4_000_000);
		}
	}
}

#[cfg(test)]
mod tests {
	use super::*;

	#[test]
	fn test_set_bits() {
		let mut j = 0b10_101_010_101_010_101_010_101_010_101_010u32;
		unsafe {
			set_bits(&mut j, 27..30, 0b010);
		}
		assert_eq!(
			j,
			0b10_010_010_101_010_101_010_101_010_101_010
		);
	}
}