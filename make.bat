rm .\serve\kernel8.img
cargo xbuild --release
cp .\target\aarch64-unknown-none\release\baremetal-pi .\serve\kernel8
cargo objcopy -- --strip-all -O binary .\serve\kernel8 .\serve\kernel8.img
cargo objdump --target aarch64-unknown-none -- -disassemble .\serve\kernel8 > .\serve\kernel8.S