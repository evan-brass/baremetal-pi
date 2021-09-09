#![cfg_attr(target_arch = "aarch64", no_main, no_std)]
#![cfg_attr(not(target_arch = "aarch64"), allow(unused))]
#![feature(asm)]
#![feature(const_ptr_offset)]
#![feature(naked_functions)]
#![feature(global_asm)]
#![allow(unused_imports)]

use core::{fmt::Write, ops::Range, ptr, sync::atomic::AtomicU32};

#[cfg(target_arch = "aarch64")]
mod cpu;
mod gpio;
#[cfg(target_arch = "aarch64")]
mod grit;
#[cfg(target_arch = "aarch64")]
mod interrupts;
#[cfg(target_arch = "aarch64")]
mod memory;
mod register;
mod uart;
use self::{gpio::Gpio, uart::Uart1};

extern "C" {
	static __int_vec_base: *const u8;
	static __bss_start: *const u8;
	static __bss_end: *const u8;
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

#[inline]
fn delay(count: usize) {
	for _ in 0..count {
		unsafe {
			asm!("nop");
		}
	}
}

macro_rules! get_sys_reg {
	($reg_name:literal) => {
		{
			let a: u64;
			unsafe {
				asm!(concat!("mrs {}, ", $reg_name), out(reg) a, options(nomem));
			}
			a
		}
	}
}

fn main() -> ! {
	let mut uart1 = Uart1::new();

	writeln!(
		&mut uart1,
		"CNTPS_TVAL_EL1: {}",
		get_sys_reg!("CNTPS_TVAL_EL1")
	)
	.unwrap();

	writeln!(
		&mut uart1,
		"Current Exception level: {:?}",
		cpu::ExceptionLevel::current_el()
	)
	.unwrap();
	// writeln!(
	// 	&mut uart1,
	// 	"CNTHV_CVAL_EL2: {:b}",
	// 	get_sys_reg!("CNTHV_CVAL_EL2")
	// )
	// .unwrap();
	writeln!(&mut uart1, "CNTFRQ_EL0: {:?}", get_sys_reg!("CNTFRQ_EL0")).unwrap();
	writeln!(&mut uart1, "CNTVCT_EL0: {:?}", get_sys_reg!("CNTVCT_EL0")).unwrap();
	writeln!(&mut uart1, "SPSel: {:?}", get_sys_reg!("SPSel")).unwrap();
	writeln!(&mut uart1, "DAIF: {:b}", get_sys_reg!("DAIF")).unwrap();
	writeln!(
		&mut uart1,
		"RVBAR_EL3: {:p}",
		get_sys_reg!("RVBAR_EL3") as *const u8
	)
	.unwrap();

	interrupts::setup_interrupts(&mut uart1);

	writeln!(&mut uart1, "DAIF after setup: {:b}", get_sys_reg!("DAIF")).unwrap();
	writeln!(
		&mut uart1,
		"SCR_EL3 after setup: {:b}",
		get_sys_reg!("SCR_EL3")
	)
	.unwrap();

	let mut act_led = Gpio::new(29);
	act_led.configure(gpio::Func::Output);

	for _ in 0..1 {
		writeln!(&mut uart1, "Hello World!").unwrap();
		act_led.high();
		delay(1_000_000);

		act_led.low();
		delay(4_000_000);
	}

	unsafe {
		// asm!("wfi");
		asm!("smc {}", const 42);
	}

	// let timeout = 1000;
	// let el3_timer_ctl = 0b001; // Enable the timer and unmask the interrupts
	// unsafe {
	// 	asm!(
	// 		"msr cntps_tval_el1, {:x}",
	// 		"msr cntps_ctl_el1, {:x}",
	// 		// "wfi",
	// 		in(reg) timeout,
	// 		in(reg) el3_timer_ctl
	// 	);
	// // }
	// loop {
	// 	let tval = get_sys_reg!("CNTPS_TVAL_EL1");
	// 	writeln!(&mut uart1, "CNTPS_TVAL_EL1: {}", tval).unwrap();

	// 	delay(1_000_000);
	// }
	loop {
		unsafe {
			let lower = core::ptr::read_volatile(memory::timer::TIMER_COUNTER_LO);
			let compare = lower + 3 * 250 * 1000;
			core::ptr::write_volatile(memory::timer::TIMER_COMPARE_1, compare);
			writeln!(&mut uart1, "Setting Timer compare 1 to: {}", compare).unwrap();

			asm!("wfi");
		}
	}

	// panic!("End of program.");
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
