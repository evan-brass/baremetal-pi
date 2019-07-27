# Clean
rm .\serve\kernel8.img
rm .\serve\kernel8
rm .\serve\kernel8.S
# Build the project
cargo xbuild --release
# Get the image 
cp .\target\aarch64-unknown-none\release\baremetal-pi .\serve\kernel8
cargo objcopy -- --strip-all -O binary .\serve\kernel8 .\serve\kernel8.img
cargo objdump --target aarch64-unknown-none -- -disassemble .\serve\kernel8 > .\serve\kernel8.S