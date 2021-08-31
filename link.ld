ENTRY(_start)

SECTIONS {
	# To get EL3 we need a custom armstub (which we include here and use kernel_old in config.txt)
	#.armstub 0x0 : { *(.armstub*) }

	# Regular boot code
	.boot 0x80000 : {
		__stack_start = .;
		*(.boot)
	}
	
	.text : ALIGN(8) { *(.text*) }
	
	.int_vec : ALIGN(2048) SUBALIGN(128) {
		__int_vec_base = .;
		KEEP(*(.int_vec*))
	}

	.rodata : ALIGN(8) { *(.rodata*) }
	
	.data : ALIGN(8) { *(.data*) }

	.bss : ALIGN(8) {
		__bss_start = .;
		*(.bss*)
		__bss_end = .;
	}
	__kernel_end = .;

	/DISCARD/ : {
		*(.debug*)
		*(.comment*)
	}
}