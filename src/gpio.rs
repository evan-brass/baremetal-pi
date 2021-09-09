use super::register::{ReadOnly, ReadWrite, RegField, Shared, WriteOnly};
use core::sync::atomic::AtomicU32;

use super::memory::gpio::*;

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
		// BCM2837 has 54 gpio pins in two banks.  Not all are accessible through the header.
		assert!(pin < 54);
		Self { pin }
	}
	// TODO: make gpfsel Shared instead of ReadWrite
	// SAFETY: These RegFields should be safe as long as there is only one Gpio struct active per GPIO pin at a time.  I intend to add an atomic bitset to check this on creation, and release the gpio on drop.
	const fn gpfsel(pin: u8) -> RegField<ReadWrite> {
		let fsel = unsafe { GPIO_BASE.offset(pin as isize / 10) as *mut u32 };
		let offset = (pin as u32 % 10) * 3;
		unsafe { RegField::new(ReadWrite(fsel), 3, offset) }
	}
	const fn gpset(pin: u8) -> RegField<WriteOnly> {
		let gpset = unsafe { GPIO_BASE.offset(7 + pin as isize / 32) as *mut u32 };
		let offset = pin as u32 % 32;
		unsafe { RegField::new(WriteOnly(gpset), 1, offset) }
	}
	const fn gpclr(pin: u8) -> RegField<WriteOnly> {
		let gpclr = unsafe { GPIO_BASE.offset(10 + pin as isize / 32) as *mut u32 };
		let offset = pin as u32 % 32;
		unsafe { RegField::new(WriteOnly(gpclr), 1, offset) }
	}
	#[allow(unused)]
	const fn gplev(pin: u8) -> RegField<ReadOnly> {
		let gplev = unsafe { GPIO_BASE.offset(13 + pin as isize / 32) as *const u32 };
		let offset = pin as u32 % 32;
		unsafe { RegField::new(ReadOnly(gplev), 1, offset) }
	}
	#[inline]
	pub fn configure(&mut self, func: Func) {
		Self::gpfsel(self.pin).write(func.val());
	}
	#[inline]
	pub fn high(&mut self) {
		Self::gpset(self.pin).write(1);
	}
	#[inline]
	pub fn low(&mut self) {
		Self::gpclr(self.pin).write(1);
	}
}

#[cfg(all(not(target_arch = "aarch64"), test))]
mod tests {
	use super::*;

	#[test]
	fn check_register_fields() {
		/*
		 * GPFSEL2: 0x7E20_0008(bus address)
		 * GPIO Pin 29 is the ACT LED.  It's FSEL is bits 29-27 of GPFSEL2.  001 is output, 000 is input.
		 *
		 * Peripheral base address in bus coords: 0x7e00_0000
		 */
		// (should be GPFSEL2)
		assert_eq!(Gpio::gpfsel(29), unsafe {
			RegField::new(ReadWrite(0x3F20_0008 as *mut u32), 3, 27)
		});

		// (should be GPSET0)
		assert_eq!(Gpio::gpset(29), unsafe {
			RegField::new(WriteOnly(0x3F20_001c as *mut u32), 1, 29)
		});

		// (should be GPCLR0)
		assert_eq!(Gpio::gpclr(29), unsafe {
			RegField::new(WriteOnly(0x3F20_0028 as *mut u32), 1, 29)
		});
	}
}
