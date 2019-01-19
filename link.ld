
ENTRY(boot);

SECTIONS
{
	. = 0x80000;
	.text :
	{
		KEEP(*(.text.boot)) *(.text .text.*)
	}

	. = ALIGN(16);
	.rodata :
	{
		KEEP(*(.rodata.*))
	}

	/DISCARD/ : { *(.comment) *(.gnu*) *(.note*) *(.eh_frame*) }
}
