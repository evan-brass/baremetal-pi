#![allow(unused)]
#![no_std]
#![no_main]
#![feature(asm)]
use core::{fmt::Write, ops::Range, panic::PanicInfo, ptr};

mod gpio;
mod uart;
use self::{gpio::Gpio, uart::Uart1};

extern "C" {
	#[no_mangle]
	static __bss_start: *mut u8;
	#[no_mangle]
	static __bss_end: *mut u8;
}

#[panic_handler]
fn handle_panic(_: &PanicInfo) -> ! {
	loop {}
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
unsafe fn send_byte(b: u8) {
	// Wait until space is available
	loop {
		let s = ptr::read_volatile(AUX_MU_STAT_REG);
		if s & 0b1 != 0 {
			break;
		}
	}
	ptr::write_volatile(AUX_MU_IO_REG, b as u32);
	// Wait until the byte has been sent
	loop {
		let s = ptr::read_volatile(AUX_MU_STAT_REG);
		if s & 0b100 != 0 {
			break;
		}
	}
}

const IO_BASE: usize = 0x3F000000;
const GPFSEL1: *mut u32 = (IO_BASE + 0x20_0004) as *mut u32;
// const GPFSEL2: *mut u32 = (IO_BASE + 0x20_0008) as *mut u32;
// const GPSET0: *mut u32 = (IO_BASE + 0x20_001c) as *mut u32;
// const GPCLR0: *mut u32 = (IO_BASE + 0x20_0028) as *mut u32;

const AUX_MU_IO_REG: *mut u32 = (IO_BASE + 0x21_5040) as *mut u32;
const AUX_MU_LCR_REG: *mut u32 = (IO_BASE + 0x21_504c) as *mut u32;
const AUX_MU_CNTL_REG: *mut u32 = (IO_BASE + 0x21_5060) as *mut u32;
const AUX_MU_STAT_REG: *mut u32 = (IO_BASE + 0x21_5064) as *mut u32;
const AUX_MU_BAUD: *mut u32 = (IO_BASE + 0x21_5068) as *mut u32;
/*
 * GPFSEL2: 0x7E20_0008(bus address)
 * GPIO Pin 29 is the ACT LED.  It's FSEL is bits 29-27 of GPFSEL2.  001 is output, 000 is input.
 *
 * Peripheral base address in bus coords: 0x7e00_0000
 */

#[inline]
fn delay(count: usize) {
	for _ in 0..count {
		unsafe {
			asm!("nop");
		}
	}
}

#[no_mangle]
pub extern "C" fn _start() -> ! {
	unsafe {
		// Setup stack pointer:
		asm!("mov sp, #0x8000"); // Our code starts at 0x8000 so the stack must grow down in memory.

		// TODO: Setup interrupt handling

		// Sleep if running on a core other than core 0:
		let cpu_info: u64;
		asm!("mrs {}, mpidr_el1", out(reg) cpu_info);

		let cpu_id = cpu_info & 0b11;
		if cpu_id != 0 {
			loop {
				asm!("wfe");
			}
		}

		// Zero the bss section
		let mut bss = unsafe {
			core::slice::from_raw_parts_mut(__bss_start, __bss_start.offset_from(__bss_end) as usize)
		};

		// set GPIO29 (ACT LED) to output:
		// let mut act_led = Gpio::new(29);
		// act_led.configure(gpio::Func::Output);
		// set_bits(GPFSEL2, 27..30, 0b001);

		let mut uart1 = Uart1::new();

		loop {
			// uart1.write_str("Hello World!\r\n");
			writeln!(&mut uart1, "Hello World!");
			delay(4_000_000);
		}
	}
}
