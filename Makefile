TRIPLE= aarch64-unknown-none

.PHONY=all

all: kernel8.img

kernel8.img: src/**/*.*
	cargo xbuild --release
	cargo objdump --target $(TRIPLE) -- -disassemble -print-imm-hex ./target/$(TRIPLE)/release/baremetal-pi
