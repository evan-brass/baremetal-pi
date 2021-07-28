# Clean
rm ./tftp-root/kernel8.img
rm ./tftp-root/kernel8.S
# Output the binary and assembly
cargo objcopy --target aarch64-unknown-none --release -- -O binary ./tftp-root/kernel8.img
cargo objdump --target aarch64-unknown-none --release -- -d > ./tftp-root/kernel8.S