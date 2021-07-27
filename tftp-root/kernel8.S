
baremetal-pi:	file format elf64-littleaarch64


Disassembly of section .text._start:

0000000000080000 <_start>:
   80000: ff 03 71 b2  	orr	sp, xzr, #0x8000
   80004: a8 00 38 d5  	mrs	x8, MPIDR_EL1
   80008: 1f 05 40 f2  	tst	x8, #0x3
   8000c: 60 00 00 54  	b.eq	0x80018 <_start+0x18>
   80010: 5f 20 03 d5  	wfe
   80014: ff ff ff 17  	b	0x80010 <_start+0x10>
   80018: 88 00 80 52  	mov	w8, #4
   8001c: 4b 02 80 52  	mov	w11, #18
   80020: 08 e4 a7 72  	movk	w8, #16160, lsl #16
   80024: 6c 00 80 52  	mov	w12, #3
   80028: 09 05 40 b9  	ldr	w9, [x8, #4]
   8002c: 29 71 02 12  	and	w9, w9, #0xc7ffffff
   80030: 29 01 05 32  	orr	w9, w9, #0x8000000
   80034: 09 05 00 b9  	str	w9, [x8, #4]
   80038: 89 0c 8a 52  	mov	w9, #20580
   8003c: 0a 01 40 b9  	ldr	w10, [x8]
   80040: 29 e4 a7 72  	movk	w9, #16161, lsl #16
   80044: 6a 15 14 33  	bfi	w10, w11, #12, #6
   80048: 0a 01 00 b9  	str	w10, [x8]
   8004c: ca 21 80 52  	mov	w10, #270
   80050: 2b 05 40 b9  	ldr	w11, [x9, #4]
   80054: 4b 3d 00 33  	bfxil	w11, w10, #0, #16
   80058: ca 12 80 52  	mov	w10, #150
   8005c: 2b 05 00 b9  	str	w11, [x9, #4]
   80060: 2c 81 1e b8  	stur	w12, [x9, #-24]
   80064: 1f 20 03 d5  	nop
   80068: 4a 05 00 f1  	subs	x10, x10, #1
   8006c: c1 ff ff 54  	b.ne	0x80064 <_start+0x64>
   80070: 0c 20 81 52  	mov	w12, #2304
   80074: 0d 48 88 52  	mov	w13, #16960
   80078: 6e 00 80 52  	mov	w14, #3
   8007c: 0a 00 a4 52  	mov	w10, #536870912
   80080: 2b 0c 80 52  	mov	w11, #97
   80084: ac 07 a0 72  	movk	w12, #61, lsl #16
   80088: ed 01 a0 72  	movk	w13, #15, lsl #16
   8008c: 2e c1 1f b8  	stur	w14, [x9, #-4]
   80090: 0a 19 00 b9  	str	w10, [x8, #24]
   80094: 2e 01 40 b9  	ldr	w14, [x9]
   80098: ee ff 07 36  	tbz	w14, #0, 0x80094 <_start+0x94>
   8009c: 2b c1 1d b8  	stur	w11, [x9, #-36]
   800a0: 2e 01 40 b9  	ldr	w14, [x9]
   800a4: ee ff 17 36  	tbz	w14, #2, 0x800a0 <_start+0xa0>
   800a8: ee 03 0c aa  	mov	x14, x12
   800ac: 1f 20 03 d5  	nop
   800b0: ce 05 00 f1  	subs	x14, x14, #1
   800b4: c1 ff ff 54  	b.ne	0x800ac <_start+0xac>
   800b8: ee 03 0d aa  	mov	x14, x13
   800bc: 0a 25 00 b9  	str	w10, [x8, #36]
   800c0: 1f 20 03 d5  	nop
   800c4: ce 05 00 f1  	subs	x14, x14, #1
   800c8: c1 ff ff 54  	b.ne	0x800c0 <_start+0xc0>
   800cc: f1 ff ff 17  	b	0x80090 <_start+0x90>
