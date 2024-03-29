# A skeleton baremetal project

## Dependencies
* cargo-binutils: `cargo install cargo-binutils`
	* (required by binutils) `rustup component add llvm-tools-preview`
* ARM64 cross-target: `rustup target add aarch64-unknown-none-softfloat`

## Status
It doesn't do much.  It currently just blinks the green ACT led a few times and outputs "Hello World!" to the console before panicking.  The panic handler outputs the panic message to the console.
The stack issue was resolved.  Current issue: Any atomic memory access fails.  I don't really know what that means.  I haven't setup everything yet.  We still need page tables.  Also, maybe there's some multi cpu setup that needs to happen before being able to use atomics.  I don't know.

## Instructions
### Initial Configuration:
* Add firewall rule for TFTP: UDP 69 inbound
* Add firewall rule for DHCP: UDP 67 inbound
* Configure static ip for eth0: 10.0.0.10 subnet 255.0.0.0

### Development time setup
* Plug in the raspberry pi + power it on:
	* The static ip configuration only takes effect when the computer sees something on eth0.  The DHCP server will ignore eth0 if doesn't have a subnet configuration that matches (eth0 is 169 if no device)
* Start the DHCP server `clear; sudo dhcpd -4 -cf ./dhcp.conf`
* Start the TFTP server `clear; sudo in.tftpd -4 --listen -s tftp-root`
* (optional) Run wireshark `sudo wireshark`

### Development cycle
* run `./make.sh`
* Restart the pi (either unplug / replug or use the reset button)

## Links
* Boot Codes: https://www.raspberrypi.org/documentation/configuration/led_blink_warnings.md
* Network booting: https://metebalci.com/blog/bare-metal-rpi3-network-boot/
* OS dev: https://github.com/rust-embedded/rust-raspberrypi-OS-tutorials
* BCM2837: https://cs140e.sergio.bz/docs/BCM2837-ARM-Peripherals.pdf