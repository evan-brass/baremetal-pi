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

	/DISCARD/ : {
		*(.debug*)
		*(.comment*)
	}
}