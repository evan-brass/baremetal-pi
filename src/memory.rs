#![allow(dead_code)]

use core::sync::atomic::AtomicU32;

// Peripheral Base address in bus coords: 0x7e000000
pub const IO_BASE: u64 = 0x3F000000;

pub mod gpio {
	use super::*;
	pub const GPIO_BASE: *const AtomicU32 = (IO_BASE + 0x20_0000) as *const AtomicU32;
}

// The base (bus) address for the interrupt registers is: 0x7E00B000
// The base (bus) address for the system timer is: 0x7E003000
pub mod interrupts {
	use super::*;
	pub const INTERRUPT_BASE: u64 = IO_BASE + 0xB000;
	pub const IRQ_PEND_BASIC: *mut u32 = (INTERRUPT_BASE + 0x200) as *mut u32;
	pub const IRQ_PEND_1: *mut u32 = (INTERRUPT_BASE + 0x204) as *mut u32;
	pub const IRQ_PEND_2: *mut u32 = (INTERRUPT_BASE + 0x208) as *mut u32;
	pub const FIQ_CTL: *const u32 = (INTERRUPT_BASE + 0x20C) as *const u32;
	pub const IRQ_ENABLE_1: *mut u32 = (INTERRUPT_BASE + 0x210) as *mut u32;
	pub const IRQ_ENABLE_2: *mut u32 = (INTERRUPT_BASE + 0x214) as *mut u32;
	pub const IRQ_ENABLE_BASIC: *mut u32 = (INTERRUPT_BASE + 0x218) as *mut u32;
	pub const IRQ_DISABLE_1: *mut u32 = (INTERRUPT_BASE + 0x21C) as *mut u32;
	pub const IRQ_DISABLE_2: *mut u32 = (INTERRUPT_BASE + 0x220) as *mut u32;
	pub const IRQ_DISABLE_BASIC: *mut u32 = (INTERRUPT_BASE + 0x224) as *mut u32;
}

pub mod timer {
	use super::*;
	pub const TIMER_BASE: u64 = IO_BASE + 0x3000;
	pub const TIMER_CONTROL_STATUS: *mut u32 = (TIMER_BASE + 0x0) as *mut u32;
	pub const TIMER_COUNTER_LO: *const u32 = (TIMER_BASE + 0x4) as *const u32;
	pub const TIMER_COUNTER_HI: *const u32 = (TIMER_BASE + 0x8) as *const u32;
	pub const TIMER_COMPARE_0: *mut u32 = (TIMER_BASE + 0xC) as *mut u32;
	pub const TIMER_COMPARE_1: *mut u32 = (TIMER_BASE + 0x10) as *mut u32;
	pub const TIMER_COMPARE_2: *mut u32 = (TIMER_BASE + 0x14) as *mut u32;
	pub const TIMER_COMPARE_3: *mut u32 = (TIMER_BASE + 0x18) as *mut u32;
}

pub mod uart {
	use super::*;
	pub const AUX_MU_IO_REG: *mut u32 = (IO_BASE + 0x21_5040) as *mut u32;
	pub const AUX_MU_LCR_REG: *mut u32 = (IO_BASE + 0x21_504c) as *mut u32;
	pub const AUX_MU_CNTL_REG: *mut u32 = (IO_BASE + 0x21_5060) as *mut u32;
	pub const AUX_MU_STAT_REG: *mut u32 = (IO_BASE + 0x21_5064) as *mut u32;
	pub const AUX_MU_BAUD: *mut u32 = (IO_BASE + 0x21_5068) as *mut u32;
}
