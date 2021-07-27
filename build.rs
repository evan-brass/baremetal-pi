fn main() {
	// Invalidate when the linker file changes
	println!("cargo:rerun-if-changed=link.ld");
}