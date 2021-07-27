
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
   8001c: 48 e0 a7 72  	movk	w8, #16130, lsl #16
   80020: 09 7d 5f 88  	ldxr	w9, [x8]
   80024: 29 71 02 12  	and	w9, w9, #0xc7ffffff
   80028: 09 7d 0a 88  	stxr	w10, w9, [x8]
   8002c: aa ff ff 35  	cbnz	w10, 0x80020 <_start+0x20>
   80030: 09 7d 5f 88  	ldxr	w9, [x8]
   80034: 29 01 05 32  	orr	w9, w9, #0x8000000
   80038: 09 7d 0a 88  	stxr	w10, w9, [x8]
   8003c: aa ff ff 35  	cbnz	w10, 0x80030 <_start+0x30>
   80040: 0a 20 81 52  	mov	w10, #2304
   80044: 0b 48 88 52  	mov	w11, #16960
   80048: 09 00 a4 52  	mov	w9, #536870912
   8004c: aa 07 a0 72  	movk	w10, #61, lsl #16
   80050: eb 01 a0 72  	movk	w11, #15, lsl #16
   80054: ec 03 0a aa  	mov	x12, x10
   80058: 09 15 00 b9  	str	w9, [x8, #20]
   8005c: 1f 20 03 d5  	nop
   80060: 8c 05 00 f1  	subs	x12, x12, #1
   80064: c1 ff ff 54  	b.ne	0x8005c <_start+0x5c>
   80068: ec 03 0b aa  	mov	x12, x11
   8006c: 09 21 00 b9  	str	w9, [x8, #32]
   80070: 1f 20 03 d5  	nop
   80074: 8c 05 00 f1  	subs	x12, x12, #1
   80078: c1 ff ff 54  	b.ne	0x80070 <_start+0x70>
   8007c: f6 ff ff 17  	b	0x80054 <_start+0x54>
