use crate::set_bits;

use super::IO_BASE;
use core::{
	ptr,
};

const GPIO_BASE: *mut u32 = (IO_BASE + 0x20_0000) as *mut u32;

/*
 * GPFSEL2: 0x7E20_0008(bus address)
 * GPIO Pin 29 is the ACT LED.  It's FSEL is bits 29-27 of GPFSEL2.  001 is output, 000 is input.
 *
 * Peripheral base address in bus coords: 0x7e00_0000
 */

#[allow(unused)]
pub enum Func {
	Input,
	Output,
	Alt0,
	Alt1,
	Alt2,
	Alt3,
	Alt4,
	Alt5,
}
impl Func {
	fn val(&self) -> u32 {
		match self {
			Func::Input => 0b000,
			Func::Output => 0b001,
			Func::Alt0 => 0b100,
			Func::Alt1 => 0b101,
			Func::Alt2 => 0b110,
			Func::Alt3 => 0b111,
			Func::Alt4 => 0b011,
			Func::Alt5 => 0b010,
		}
	}
}

pub struct Gpio {
	pin: u8,
}
impl Gpio {
	// TODO: to make gpio pins accessible from multiple cores, we need to guard
	pub fn new(pin: u8) -> Self {
		assert!(pin < 54);
		Self { pin }
	}
	#[inline]
	pub fn configure(&mut self, func: Func) {
		let fsel = unsafe { GPIO_BASE.offset(self.pin as isize / 10) };

		let r = (self.pin as u32 % 10) * 3;
		unsafe { set_bits(fsel, r..(r + 3), func.val()) };
	}
	#[inline]
	pub fn high(&mut self) {
		unsafe {
			let set = GPIO_BASE.offset(7 + self.pin as isize / 32);
			ptr::write_volatile(set, 1 << self.pin);
		}
	}
	#[inline]
	pub fn low(&mut self) {
		unsafe {
			let clr = GPIO_BASE.offset(10 + self.pin as isize / 32);
			ptr::write_volatile(clr, 1 << self.pin);
		}
	}
}


#[cfg(test)]
mod tests {
	use super::*;

	#[test]
	fn check_configure_math() {
		// Make sure that the fsel pointer is correct
		assert_eq!(
			unsafe { GPIO_BASE.offset(29 / 10) },
			0x3F20_0008 as *mut u32
		);

		// Check bit range math
		let r = (29 as u32 % 10) * 3;
		assert_eq!(
			r..(r+3),
			27..30
		)
	}

	#[test]
	fn check_high_math() {
		// Check ptr math for pin29 (should be GPSET0)
		assert_eq!(
			unsafe { GPIO_BASE.offset(7 + 29 / 32) },
			0x3F20_001c as *mut u32
		);

		assert_eq!(
			0b1 << 29,
			1 << 29
		)
	}

	#[test]
	fn check_low_math() {
		// Check ptr math for pin29 (should be GPCLR0)
		assert_eq!(
			unsafe { GPIO_BASE.offset(10 + 29 / 32) },
			0x3F20_0028 as *mut u32
		);
	}
}