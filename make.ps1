# Clean
rm .\tftp-root\kernel8.img
rm .\tftp-root\kernel8.S
# Output the binary and assembly
cargo objcopy --release -- -O binary .\tftp-root\kernel8.img
cargo objdump --release -- -d > .\tftp-root\kernel8.S