#![allow(unused)]
use core::{
	ptr,
	sync::atomic::{AtomicU32, Ordering},
};

#[derive(PartialEq, Debug)]
pub struct ReadOnly(pub *const u32);
#[derive(PartialEq, Debug)]
pub struct WriteOnly(pub *mut u32);
#[derive(PartialEq, Debug)]
pub struct Shared(pub *const AtomicU32); // Shared is ReadWrite automatically because we need to read modify and write atomically.
#[derive(PartialEq, Debug)]
pub struct ReadWrite(pub *mut u32); // For future use - like the uart

#[derive(PartialEq, Debug)]
pub struct RegField<A> {
	access: A,
	size: u32,
	offset: u32,
}
impl<A> RegField<A> {
	pub const unsafe fn new(access: A, size: u32, offset: u32) -> Self {
		Self {
			access,
			size,
			offset,
		}
	}
}
impl RegField<ReadOnly> {
	#[inline]
	pub fn read(&self) -> u32 {
		(unsafe { ptr::read_volatile(self.access.0) } >> self.offset) & (2u32.pow(self.size) - 1)
	}
}
impl RegField<WriteOnly> {
	#[inline]
	pub fn write(&mut self, v: u32) {
		assert!(v < 2u32.pow(self.size));
		unsafe { ptr::write_volatile(self.access.0, v << self.offset) }
	}
}
impl RegField<ReadWrite> {
	#[inline]
	pub fn read(&self) -> u32 {
		(unsafe { ptr::read_volatile(self.access.0) } >> self.offset) & (2u32.pow(self.size) - 1)
	}
	#[inline]
	pub fn write(&mut self, v: u32) {
		assert!(v < 2u32.pow(self.size));
		let v = v << self.offset;
		let mask = !(2u32.pow(self.offset + self.size) - 2u32.pow(self.offset));
		let mut t = unsafe { ptr::read_volatile(self.access.0) };
		t &= mask;
		t |= v;
		unsafe { ptr::write_volatile(self.access.0, t) }
	}
}
impl RegField<Shared> {
	#[inline]
	pub fn read(&self) -> u32 {
		let t = unsafe { &*self.access.0 };
		(t.load(Ordering::Acquire) >> self.offset) & (2u32.pow(self.size) - 1)
	}
	#[inline]
	pub fn write(&mut self, v: u32) {
		assert!(v < 2u32.pow(self.size));
		let t = unsafe { &*self.access.0 };
		let v = v << self.offset;
		let mask = !(2u32.pow(self.offset + self.size) - 2u32.pow(self.offset));
		t.fetch_update(Ordering::AcqRel, Ordering::Acquire, |mut t| {
			t &= mask;
			t |= v;
			Some(t)
		})
		.unwrap();
	}
}

#[cfg(all(not(target_arch = "aarch64"), test))]
mod tests {
	use core::ptr::{addr_of, addr_of_mut};

	use super::*;

	#[test]
	fn check_register_fields() {
		// Check normal RW
		let mut test = 0b10_010_010_101_010_101_010_101_010_101_010;
		let mut reg = unsafe { RegField::new(ReadWrite(addr_of_mut!(test)), 3, 27) };
		assert_eq!(reg.read(), 0b010);
		reg.write(0b111);
		assert_eq!(test, 0b10_111_010_101_010_101_010_101_010_101_010);

		// Check normal W
		let mut test = 0b10_010_010_101_010_101_010_101_010_101_010;
		let mut reg = unsafe { RegField::new(WriteOnly(addr_of_mut!(test)), 3, 27) };
		reg.write(0b111);
		assert_eq!(test, 0b00_111_000_000_000_000_000_000_000_000_000);

		// Check normal R
		let mut test = 0b10_010_010_101_010_101_010_101_010_101_010;
		let mut reg = unsafe { RegField::new(ReadOnly(addr_of!(test)), 3, 27) };
		assert_eq!(reg.read(), 0b010);

		// Check normal shared
		let mut test = AtomicU32::new(0b10_010_010_101_010_101_010_101_010_101_010);
		let mut reg = unsafe { RegField::new(Shared(addr_of!(test)), 3, 27) };
		assert_eq!(reg.read(), 0b010);
		reg.write(0b111);
		assert_eq!(
			*test.get_mut(),
			0b10_111_010_101_010_101_010_101_010_101_010
		);
	}
}
