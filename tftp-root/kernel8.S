
baremetal-pi:	file format elf64-littleaarch64


Disassembly of section .text._start:

0000000000080000 <_start>:
   80000: ff 03 71 b2  	orr	sp, xzr, #0x8000
   80004: a8 00 38 d5  	mrs	x8, MPIDR_EL1
   80008: 1f 05 40 f2  	tst	x8, #0x3
   8000c: 60 00 00 54  	b.eq	0x80018 <_start+0x18>
   80010: 5f 20 03 d5  	wfe
   80014: ff ff ff 17  	b	0x80010 <_start+0x10>
   80018: 08 01 80 52  	mov	w8, #8
   8001c: 09 48 88 52  	mov	w9, #16960
   80020: 08 e4 a7 72  	movk	w8, #16160, lsl #16
   80024: 0b 00 a1 52  	mov	w11, #134217728
   80028: e9 01 a0 72  	movk	w9, #15, lsl #16
   8002c: 0a 00 a4 52  	mov	w10, #536870912
   80030: 0b 01 00 b9  	str	w11, [x8]
   80034: eb 03 09 aa  	mov	x11, x9
   80038: 0a 15 00 b9  	str	w10, [x8, #20]
   8003c: 1f 20 03 d5  	nop
   80040: 6b 05 00 f1  	subs	x11, x11, #1
   80044: c1 ff ff 54  	b.ne	0x8003c <_start+0x3c>
   80048: eb 03 09 aa  	mov	x11, x9
   8004c: 0a 21 00 b9  	str	w10, [x8, #32]
   80050: 1f 20 03 d5  	nop
   80054: 6b 05 00 f1  	subs	x11, x11, #1
   80058: c1 ff ff 54  	b.ne	0x80050 <_start+0x50>
   8005c: f6 ff ff 17  	b	0x80034 <_start+0x34>
