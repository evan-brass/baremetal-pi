#![no_std]
#![feature(asm)]
#![no_main]

extern crate panic_abort;

const MAILBOX: u32 = 0x3f00b880;
static mut MSG: [u32;8] = [0, 0, 0, 0, 0, 0, 0, 0];

fn wait(time: u32) {
	for _ in 0..time {
		for _ in 0..10000 {
			unsafe { asm!("nop") }
		}
	}
}

fn mailbox_send() {
	let mut status: u32 = 0x80000000u32;
	while (status & 0x80000000u32) != 0 {
		status = unsafe{*((MAILBOX + 0x18) as *const u32)};
	}
	unsafe{
		*((MAILBOX + 0x20) as *mut u32) = (&MSG as *const u32 as *const u8).offset(8) as u32
	};
}

fn turn_on() {
	unsafe {
		MSG = [32, 0, 0x00038041, 8, 0, 130, 1, 0];
	}
	mailbox_send();

}

fn turn_off() {
	unsafe {
		MSG = [32, 0, 0x00038041, 8, 0, 130, 0, 0];
	}
	mailbox_send();
}

#[link_section=".text.boot"]
#[no_mangle]
pub extern fn boot () -> ! {
	let core: u64;
	// Read in identification register
	unsafe {
		asm!("mrs $0, mpidr_el1"
			: "=r"(core));
	}
	// Mask everything except the affinity 0 section
	let core = core & 0b000000000000000000000000_00000000_0_0_00000_0_0_00000000_00000000_11111111;
	if core == 1 {
		loop {
			turn_on();
			wait(500);
			turn_off();
			wait(500);
		}
	} else {
		loop {}
	}
}
