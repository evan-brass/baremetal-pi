#![no_std]
#![no_main]
#![feature(asm)]

use core::{panic::PanicInfo, ptr};
use core::ops::Range;

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
		if s & 0b1 != 0 { break }
	}
	ptr::write_volatile(AUX_MU_IO_REG, b as u32);
	// Wait until the byte has been sent
	loop {
		let s = ptr::read_volatile(AUX_MU_STAT_REG);
		if s & 0b100 != 0 { break }
	}
}

const IO_BASE: usize = 0x3F000000;
const GPFSEL1: *mut u32 = (IO_BASE + 0x20_0004) as *mut u32;
const GPFSEL2: *mut u32 = (IO_BASE + 0x20_0008) as *mut u32;
const GPSET0: *mut u32 = (IO_BASE + 0x20_001c) as *mut u32;
const GPCLR0: *mut u32 = (IO_BASE + 0x20_0028) as *mut u32;

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

/*
 * UART0: (Where are the configuration registers for UART0?)
 * GPIO pins 14(TX) and 15(RX)
 * both pins need to be configured for ALT0
 * pin14 bits 12-14 of GPFSEL1 (20_0004)
 * pin15 bits 15-17 of GPFSEL1

 * UART1:
 * GPIO pins 14(TX) and 15(RX)
 * both pins need to be configured for ALT5 (010)
 * Read and write data: AUX_MU_IO_REG (bus 0x7e21_5040)
 * FIFO status: AUX_MU_LSR_REG (bus 0x7e21_5054)
 *  bit 0 - data ready, bit 1 - recv overrun, bit 5 - trans can accept, bit 6 - trans finished
 * Alternative status: AUX_MU_STAT_REG (bus 0x7e21_5064)
 * Enable: AUX_MU_CNTL_REG (bus 0x7e21_5060)
 *  bit 0 - recv enable, bit 1 - tran enable
 * Baud rate: AUX_MU_BAUD (bus 0x7e21_5068) bits 0-15
 *  baudrate = system_clock_freq / (8*(baudrate_reg + 1))
 *  115200 = sc / (8*(270 + 1))
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
	
		// Sleep  if running on a core other than core 0:
		let cpu_info: u64;
		asm!("mrs {}, mpidr_el1", out(reg) cpu_info);
		
		let cpu_id = cpu_info & 0b11;
		if cpu_id != 0 {
			loop { asm!("wfe"); }
		}

		// set GPIO29 (ACT LED) to output:
		set_bits(GPFSEL2, 27..30, 0b001);

		// set GPIO15 and GPIO14 to AUX5
		set_bits(GPFSEL1, 12..18, 0b010_010);
		// set baud rate to 115200
		set_bits(AUX_MU_BAUD, 0..16, 270);
		// set the data size to 8 bit
		*AUX_MU_LCR_REG = 0b11;
		// Give a little delay so that the aux can take effect? I guess?
		delay(150);
		// Enable the mini uart
		*AUX_MU_CNTL_REG = 0b_0_0_00_0_0_1_1;
		
		loop {
			*GPSET0 = 1 << 29;
			send_byte(b"a"[0]);
			delay(4_000_000);
			*GPCLR0 = 1 << 29;
			delay(1_000_000);
		}
	}
}