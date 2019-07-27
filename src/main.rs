#![no_std]
#![feature(asm)]
#![no_main]

// const MAILBOX: u32 = 0x3f00b880;
// static mut MSG: [u32;8] = [0, 0, 0, 0, 0, 0, 0, 0];

fn wait(time: u32) {
	for _ in 0..time {
		for _ in 0..100 {
			unsafe { asm!("nop") }
		}
	}
}

// fn mailbox_send() {
// 	let mut status: u32 = 0x80000000u32;
// 	while (status & 0x80000000u32) != 0 {
// 		status = unsafe{*((MAILBOX + 0x18) as *const u32)};
// 	}
// 	unsafe{
// 		*((MAILBOX + 0x20) as *mut u32) = (&MSG as *const u32 as *const u8).offset(8) as u32
// 	};
// }

const GPFSEL2: u32 = 0x3f_20_0008;
fn led_init() {
	unsafe {
		*(GPFSEL2 as *mut u32) = 0b001 << 27;
	}
}

const GPSET0: u32 = 0x3f_20_001c;
fn led_off() {
	unsafe {
		*(GPSET0 as *mut u32) = 0b1 << 29;
	}
}

const GPCLR0: u32 = 0x3f_20_0028;
// LED is active low
fn led_on() {
	unsafe {
		*(GPCLR0 as *mut u32) = 0b1 << 29;
	}
}

fn kernel_entry() -> ! {
	led_init();
	loop {
		led_on();
		wait(100000);
		led_off();
		wait(100000);
	}
}

raspi3_boot::entry!(kernel_entry);
