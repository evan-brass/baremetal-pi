ENTRY(_start)

SECTIONS {
	.boot 0x80000 : { *(.boot) }
	
	.text : ALIGN(8) { *(.text*) }
	
	.rodata : ALIGN(8) { *(.rodata*) }
	
	.data : ALIGN(8) { *(.data*) }

	# Both __bss_start and __bss_end need to be 8 byte aligned I guess.  The linker complains otherwise.
	__bss_start = ALIGN(8);
	.bss : { *(.bss*) }
	__bss_end = ALIGN(8);

	__interrupt_vector = ALIGN(4096);
	.interrupts : SUBALIGN(128) {
		*(.int_vec*)
	}

	/DISCARD/ : {
		*(.debug*)
		*(.comment*)
	}
}