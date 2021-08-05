use super::{
	delay,
	gpio::{self, Gpio},
	set_bits, IO_BASE,
};
use core::{
	fmt::{self, Write},
	hint::spin_loop,
	ptr,
};

const AUX_MU_IO_REG: *mut u32 = (IO_BASE + 0x21_5040) as *mut u32;
const AUX_MU_LCR_REG: *mut u32 = (IO_BASE + 0x21_504c) as *mut u32;
const AUX_MU_CNTL_REG: *mut u32 = (IO_BASE + 0x21_5060) as *mut u32;
const AUX_MU_STAT_REG: *mut u32 = (IO_BASE + 0x21_5064) as *mut u32;
const AUX_MU_BAUD: *mut u32 = (IO_BASE + 0x21_5068) as *mut u32;

pub struct Uart1;
impl Uart1 {
	pub fn new() -> Self {
		// set GPIO15 and GPIO14 to AUX5
		Gpio::new(14).configure(gpio::Func::Alt5);
		Gpio::new(15).configure(gpio::Func::Alt5);
		unsafe {
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
	fn transmit_ready(&self) -> bool {
		let s = unsafe { ptr::read_volatile(AUX_MU_STAT_REG) };
		s & 0b10 != 0
	}
	// If queue_byte is called when the transmit queue is full, the byte will be lost.
	fn queue_byte(&mut self, b: u8) {
		unsafe { ptr::write_volatile(AUX_MU_IO_REG, b as u32) };
	}
	pub fn flush(&mut self) {
		loop {
			let s = unsafe { ptr::read_volatile(AUX_MU_STAT_REG) };
			if s & 0b1000 != 0 {
				break;
			}
			spin_loop();
		}
	}
}
impl Write for Uart1 {
	fn write_str(&mut self, s: &str) -> fmt::Result {
		let bytes = s.as_bytes();
		let r = b"\r\n";

		// Send out each byte, replacing \n with \r\n
		for b in s
			.char_indices()
			.map(|(i, c)| match c {
				'\n' => r,
				_ => &bytes[i..i + c.len_utf8()],
			})
			.flatten()
		{
			while !self.transmit_ready() {
				spin_loop();
			}
			self.queue_byte(*b);
		}
		self.flush();
		Ok(())
	}
}
