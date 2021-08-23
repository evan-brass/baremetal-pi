TARGET=aarch64-unknown-none-softfloat

# Clean
rm ./tftp-root/kernel8.img
rm ./kernel8.S
rm ./elfinfo.txt
# Output the binary and assembly
cargo build --release --target $TARGET
rust-objcopy -O binary target/$TARGET/release/baremetal-pi tftp-root/kernel8.img
rust-objdump -D target/$TARGET/release/baremetal-pi > kernel8.S
readelf -a target/$TARGET/release/baremetal-pi > elfinfo.txt
# rust-objdump -d --no-leading-addr --no-show-raw-insn target/$TARGET/release/baremetal-pi > kernel8.S

# cargo objcopy --release -- -O binary tftp-root/kernel8.img
# OLD:
# cargo objcopy --target aarch64-unknown-none --release -- -O binary ./tftp-root/kernel8.img
# cargo objdump --target aarch64-unknown-none --release -- -d > ./tftp-root/kernel8.S