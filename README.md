# A skeleton baremetal project

## Dependencies
* cargo-binutils: `cargo install cargo-binutils`
* ARM64 cross-target: `rustup target add aarch64-unknown-none`

## Instructions
### Initial Configuration:
* Add firewall rule for TFTP: UDP 69 inbound
* Add firewall rule for DHCP: UDP 67 inbound
* Configure static ip for eth0: 10.0.0.10 subnet 255.0.0.0

### Development time setup
* Plug in the raspberry pi + power it on:
	* The static ip configuration only takes effect when the computer sees something on eth0.  The DHCP server will ignore eth0 if doesn't have a subnet configuration that matches (eth0 is 169 if no device)
* Start the DHCP server `clear; sudo dhcpd -f -4 -cf ./dhcp.conf`
* Start the TFTP server `clear; sudo in.tftpd -4 --listen -s tftp-root`
* (optional) Run wireshark `sudo wireshark`

### Development cycle
* run `./make.sh`
* Restart the pi (either unplug / replug or use the reset button)

## Links
* Boot Codes: https://www.raspberrypi.org/documentation/configuration/led_blink_warnings.md
* Network booting: https://metebalci.com/blog/bare-metal-rpi3-network-boot/
* OS dev: https://github.com/rust-embedded/rust-raspberrypi-OS-tutorials