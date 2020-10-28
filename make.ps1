# Clean
rm .\tftp-root\kernel8.img
rm .\tftp-root\kernel8
rm .\tftp-root\kernel8.S
# Build the project
cargo xbuild --release
# Get the image 
cp .\target\aarch64-unknown-none\release\baremetal-pi .\tftp-root\kernel8
cargo objcopy -- --strip-all -O binary .\tftp-root\kernel8 .\tftp-root\kernel8.img
cargo objdump --target aarch64-unknown-none -- -disassemble .\tftp-root\kernel8 > .\tftp-root\kernel8.S