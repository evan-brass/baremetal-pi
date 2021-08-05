#![cfg_attr(target_arch = "aarch64", no_main, no_std)]
#![cfg_attr(not(target_arch = "aarch64"), allow(unused))]
#![feature(asm)]
#![feature(const_ptr_offset)]

use core::{fmt::Write, ops::Range, ptr};

mod gpio;
mod grit;
mod register;
mod uart;
use self::{gpio::Gpio, uart::Uart1};

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
	for _ in 0..count {
		unsafe {
			asm!("nop");
		}
	}
}

fn main() -> ! {
	let mut uart1 = Uart1::new();

	let mut act_led = Gpio::new(29);
	act_led.configure(gpio::Func::Output);

	for _ in 0..10 {
		act_led.high();
		delay(1_000_000);

		act_led.low();
		writeln!(&mut uart1, "Hello World!").unwrap();
		delay(4_000_000);
	}
	panic!("End of program.");
}

#[cfg(all(not(target_arch = "aarch64"), test))]
mod tests {
	use super::*;

	#[test]
	fn test_set_bits() {
		let mut j = 0b10_101_010_101_010_101_010_101_010_101_010u32;
		unsafe {
			set_bits(&mut j, 27..30, 0b010);
		}
		assert_eq!(j, 0b10_010_010_101_010_101_010_101_010_101_010);
	}
}
