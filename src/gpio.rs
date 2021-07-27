use super::IO_BASE;
use core::{
	ptr,
	sync::atomic::{AtomicU32, Ordering},
};

const GPIO_BASE: *const AtomicU32 = (IO_BASE + 0x20_000) as *mut AtomicU32;

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
		let fsel = unsafe { &*GPIO_BASE.offset(self.pin as isize / 10) };
		// Clear the function
		let mask = !(0b111 << ((self.pin % 10) * 3));
		fsel.fetch_and(mask, Ordering::Relaxed);

		let val = func.val();
		// If func isn't an input then we need to put the other bits in:
		if val != 0b000 {
			let val = val << ((self.pin % 10) * 3);
			fsel.fetch_or(val, Ordering::Relaxed);
		}
	}
	#[inline]
	pub fn high(&mut self) {
		unsafe {
			let set = GPIO_BASE.offset(7 + self.pin as isize / 32) as *mut u32;
			ptr::write_volatile(set, 0b1 << self.pin);
		}
	}
	#[inline]
	pub fn low(&mut self) {
		unsafe {
			let clr = GPIO_BASE.offset(10 + self.pin as isize / 32) as *mut u32;
			ptr::write_volatile(clr, 0b1 << self.pin);
		}
	}
}
