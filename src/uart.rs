use super::{delay, set_bits, IO_BASE};
use core::{
	fmt::{self, Write},
	ptr,
};

const GPFSEL1: *mut u32 = (IO_BASE + 0x20_0004) as *mut u32;

const AUX_MU_IO_REG: *mut u32 = (IO_BASE + 0x21_5040) as *mut u32;
const AUX_MU_LCR_REG: *mut u32 = (IO_BASE + 0x21_504c) as *mut u32;
const AUX_MU_CNTL_REG: *mut u32 = (IO_BASE + 0x21_5060) as *mut u32;
const AUX_MU_STAT_REG: *mut u32 = (IO_BASE + 0x21_5064) as *mut u32;
const AUX_MU_BAUD: *mut u32 = (IO_BASE + 0x21_5068) as *mut u32;

pub struct Uart1;
impl Uart1 {
	pub fn new() -> Self {
		// set GPIO15 and GPIO14 to AUX5
		unsafe {
			set_bits(GPFSEL1, 12..18, 0b010_010);
			// set baud rate to 115200
			set_bits(AUX_MU_BAUD, 0..16, 270);
			// set the data size to 8 bit
			*AUX_MU_LCR_REG = 0b11;
			// Give a little delay so that the aux can take effect? I guess?
			delay(150);
			// Enable the mini uart
			*AUX_MU_CNTL_REG = 0b_0_0_00_0_0_1_1;
		}
		Self {}
	}
	pub fn write(&mut self, bytes: &[u8]) {
		for b in bytes {
			loop {
				let s = unsafe { ptr::read_volatile(AUX_MU_STAT_REG) };

				if s & 0b10 != 0 {
					break;
				}
			}
			unsafe { ptr::write_volatile(AUX_MU_IO_REG, *b as u32) };
		}
	}
	pub fn flush(&mut self) {
		loop {
			let s = unsafe { ptr::read_volatile(AUX_MU_STAT_REG) };
			if s & 0b1000 != 0 {
				break;
			}
		}
	}
}
impl Write for Uart1 {
	fn write_str(&mut self, s: &str) -> fmt::Result {
		self.write(s.as_bytes());
		self.flush();
		Ok(())
	}
}
