#[derive(Debug)]
pub enum ExceptionLevel {
	EL3,
	EL2,
	EL1,
	EL0,
}

impl ExceptionLevel {
	pub fn current_el() -> Self {
		let current_el: u64;
		unsafe {
			asm!("mrs {}, CurrentEL", out(reg) current_el);
		}
		let current_el = (current_el >> 2) & 0b11;
		match current_el {
			0b11 => Self::EL3,
			0b10 => Self::EL2,
			0b01 => Self::EL1,
			0b00 => Self::EL0,
			_ => unreachable!(),
		}
	}
}
