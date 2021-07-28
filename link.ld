ENTRY(_start)

SECTIONS {
	.boot 0x80000 : { *(.boot) }
	
	.text : { *(.text._start) *(.text*) }
	# . = ALIGN(4096);
	
	.rodata : { *(.rodata*) }
	. = ALIGN(4096);
	
	.data : { *(.data*) }
	. = ALIGN(4096);

	__bss_start = .;
	.bss : { *(.bss*) }
	__bss_end = .;

	/DISCARD/ : {
		*(.debug*)
		*(.comment*)
	}
}