
target/aarch64-unknown-none/release/baremetal-pi:	file format elf64-littleaarch64


Disassembly of section .boot:

0000000000080000 <_start>:
   80000: a8 00 38 d5  	mrs	x8, MPIDR_EL1
   80004: 1f 05 40 f2  	tst	x8, #0x3
   80008: 60 00 00 54  	b.eq	0x80014 <_start+0x14>
   8000c: 5f 20 03 d5  	wfe
   80010: ff ff ff 17  	b	0x8000c <_start+0xc>
   80014: 01 00 00 90  	adrp	x1, 0x80000 <_start+0x14>
   80018: 3f 00 00 91  	mov	sp, x1
   8001c: c1 03 00 14  	b	0x80f20 <rust_entry>
   80020: 20 00 20 d4  	brk	#0x1

Disassembly of section .text:

0000000000080028 <_ZN4core3ptr37drop_in_place$LT$core..fmt..Error$GT$17h241c066d02853945E>:
   80028: c0 03 5f d6  	ret
   8002c: 00 00 00 00  	udf	#0

0000000000080030 <interrupt_handler>:
   80030: ff 03 03 d1  	sub	sp, sp, #192
   80034: fe 4b 00 f9  	str	x30, [sp, #144]
   80038: f6 57 0a a9  	stp	x22, x21, [sp, #160]
   8003c: f4 4f 0b a9  	stp	x20, x19, [sp, #176]
   80040: e8 03 1e aa  	mov	x8, x30
   80044: 09 52 3e d5  	mrs	x9, ESR_EL3
   80048: 0a 60 3e d5  	mrs	x10, FAR_EL3
   8004c: 2b 40 3e d5  	mrs	x11, ELR_EL3
   80050: e8 2b 00 a9  	stp	x8, x10, [sp]
   80054: 2a 00 00 b0  	adrp	x10, 0x85000 <interrupt_handler+0x38>
   80058: c0 01 80 52  	mov	w0, #14
   8005c: 4a 01 00 91  	add	x10, x10, #0
   80060: 13 0d 8a 52  	mov	w19, #20584
   80064: 08 01 0a cb  	sub	x8, x8, x10
   80068: 33 e4 a7 72  	movk	w19, #16161, lsl #16
   8006c: 0a fd 01 91  	add	x10, x8, #127
   80070: 1f 01 00 f1  	cmp	x8, #0
   80074: 48 b1 88 9a  	csel	x8, x10, x8, lt
   80078: 2a 65 59 d3  	ubfx	x10, x9, #25, #1
   8007c: 08 fd 47 93  	asr	x8, x8, #7
   80080: 29 7d 5a d3  	ubfx	x9, x9, #26, #6
   80084: ea 27 02 a9  	stp	x10, x9, [sp, #32]
   80088: eb 23 01 a9  	stp	x11, x8, [sp, #16]
   8008c: 71 04 00 94  	bl	0x81250 <_ZN12baremetal_pi4gpio4Gpio9configure17hb1583b5e8840e111E>
   80090: e0 01 80 52  	mov	w0, #15
   80094: 6f 04 00 94  	bl	0x81250 <_ZN12baremetal_pi4gpio4Gpio9configure17hb1583b5e8840e111E>
   80098: 69 02 40 b9  	ldr	w9, [x19]
   8009c: c8 21 80 52  	mov	w8, #270
   800a0: 6a 00 80 52  	mov	w10, #3
   800a4: 09 3d 00 33  	bfxil	w9, w8, #0, #16
   800a8: c8 12 80 52  	mov	w8, #150
   800ac: 69 02 00 b9  	str	w9, [x19]
   800b0: 6a 42 1e b8  	stur	w10, [x19, #-28]
   800b4: 1f 20 03 d5  	nop
   800b8: 08 05 00 f1  	subs	x8, x8, #1
   800bc: c1 ff ff 54  	b.ne	0x800b4 <interrupt_handler+0x84>
   800c0: 68 00 80 52  	mov	w8, #3
   800c4: 2a 00 00 90  	adrp	x10, 0x84000 <interrupt_handler+0xa4>
   800c8: e9 63 00 91  	add	x9, sp, #24
   800cc: 4a d1 09 91  	add	x10, x10, #628
   800d0: 21 00 00 d0  	adrp	x1, 0x86000 <interrupt_handler+0xb8>
   800d4: f4 c3 00 91  	add	x20, sp, #48
   800d8: 68 82 1f b8  	stur	w8, [x19, #-8]
   800dc: e8 83 01 91  	add	x8, sp, #96
   800e0: e9 2b 03 a9  	stp	x9, x10, [sp, #48]
   800e4: 29 00 00 b0  	adrp	x9, 0x85000 <interrupt_handler+0xc8>
   800e8: 29 c1 23 91  	add	x9, x9, #2288
   800ec: 21 a0 04 91  	add	x1, x1, #296
   800f0: e8 4f 00 f9  	str	x8, [sp, #152]
   800f4: 48 00 80 52  	mov	w8, #2
   800f8: e0 63 02 91  	add	x0, sp, #152
   800fc: e2 83 01 91  	add	x2, sp, #96
   80100: ff 7f 07 a9  	stp	xzr, xzr, [sp, #112]
   80104: f5 83 01 91  	add	x21, sp, #96
   80108: e9 23 06 a9  	stp	x9, x8, [sp, #96]
   8010c: 28 00 80 52  	mov	w8, #1
   80110: f4 23 08 a9  	stp	x20, x8, [sp, #128]
   80114: 12 07 00 94  	bl	0x81d5c <_ZN4core3fmt5write17h63775af3066fbce8E>
   80118: 00 1a 00 35  	cbnz	w0, 0x80458 <interrupt_handler+0x428>
   8011c: 13 00 00 90  	adrp	x19, 0x80000 <interrupt_handler+0xec>
   80120: e8 03 00 91  	mov	x8, sp
   80124: 73 22 35 91  	add	x19, x19, #3400
   80128: 29 00 00 b0  	adrp	x9, 0x85000 <interrupt_handler+0x10c>
   8012c: 29 01 25 91  	add	x9, x9, #2368
   80130: 21 00 00 d0  	adrp	x1, 0x86000 <interrupt_handler+0x118>
   80134: 21 a0 04 91  	add	x1, x1, #296
   80138: e0 63 02 91  	add	x0, sp, #152
   8013c: e8 4f 03 a9  	stp	x8, x19, [sp, #48]
   80140: 48 00 80 52  	mov	w8, #2
   80144: e2 83 01 91  	add	x2, sp, #96
   80148: f5 4f 00 f9  	str	x21, [sp, #152]
   8014c: ff 7f 07 a9  	stp	xzr, xzr, [sp, #112]
   80150: e9 23 06 a9  	stp	x9, x8, [sp, #96]
   80154: 28 00 80 52  	mov	w8, #1
   80158: f4 23 08 a9  	stp	x20, x8, [sp, #128]
   8015c: f4 83 01 91  	add	x20, sp, #96
   80160: ff 06 00 94  	bl	0x81d5c <_ZN4core3fmt5write17h63775af3066fbce8E>
   80164: 80 18 00 35  	cbnz	w0, 0x80474 <interrupt_handler+0x444>
   80168: 29 00 00 90  	adrp	x9, 0x84000 <interrupt_handler+0x148>
   8016c: e8 a3 00 91  	add	x8, sp, #40
   80170: 29 c1 02 91  	add	x9, x9, #176
   80174: ea 83 00 91  	add	x10, sp, #32
   80178: 21 00 00 d0  	adrp	x1, 0x86000 <interrupt_handler+0x160>
   8017c: f4 4f 00 f9  	str	x20, [sp, #152]
   80180: f4 c3 00 91  	add	x20, sp, #48
   80184: 21 a0 04 91  	add	x1, x1, #296
   80188: e8 27 03 a9  	stp	x8, x9, [sp, #48]
   8018c: 68 00 80 52  	mov	w8, #3
   80190: ea 27 04 a9  	stp	x10, x9, [sp, #64]
   80194: 29 00 00 b0  	adrp	x9, 0x85000 <interrupt_handler+0x178>
   80198: 29 21 26 91  	add	x9, x9, #2440
   8019c: e0 63 02 91  	add	x0, sp, #152
   801a0: e2 83 01 91  	add	x2, sp, #96
   801a4: ff 7f 07 a9  	stp	xzr, xzr, [sp, #112]
   801a8: f5 83 01 91  	add	x21, sp, #96
   801ac: e9 23 06 a9  	stp	x9, x8, [sp, #96]
   801b0: 48 00 80 52  	mov	w8, #2
   801b4: f4 23 08 a9  	stp	x20, x8, [sp, #128]
   801b8: e9 06 00 94  	bl	0x81d5c <_ZN4core3fmt5write17h63775af3066fbce8E>
   801bc: a0 16 00 35  	cbnz	w0, 0x80490 <interrupt_handler+0x460>
   801c0: 09 00 00 b0  	adrp	x9, 0x81000 <interrupt_handler+0x194>
   801c4: e8 23 00 91  	add	x8, sp, #8
   801c8: 29 91 0d 91  	add	x9, x9, #868
   801cc: 21 00 00 d0  	adrp	x1, 0x86000 <interrupt_handler+0x1b4>
   801d0: 21 a0 04 91  	add	x1, x1, #296
   801d4: e0 63 02 91  	add	x0, sp, #152
   801d8: e2 83 01 91  	add	x2, sp, #96
   801dc: f5 4f 00 f9  	str	x21, [sp, #152]
   801e0: e8 27 03 a9  	stp	x8, x9, [sp, #48]
   801e4: 29 00 00 b0  	adrp	x9, 0x85000 <interrupt_handler+0x1c8>
   801e8: 48 00 80 52  	mov	w8, #2
   801ec: 29 a1 27 91  	add	x9, x9, #2536
   801f0: ff 7f 07 a9  	stp	xzr, xzr, [sp, #112]
   801f4: e9 23 06 a9  	stp	x9, x8, [sp, #96]
   801f8: 28 00 80 52  	mov	w8, #1
   801fc: f4 23 08 a9  	stp	x20, x8, [sp, #128]
   80200: f4 83 01 91  	add	x20, sp, #96
   80204: d6 06 00 94  	bl	0x81d5c <_ZN4core3fmt5write17h63775af3066fbce8E>
   80208: 20 15 00 35  	cbnz	w0, 0x804ac <interrupt_handler+0x47c>
   8020c: 29 00 00 b0  	adrp	x9, 0x85000 <interrupt_handler+0x1f0>
   80210: e8 43 00 91  	add	x8, sp, #16
   80214: 29 e1 28 91  	add	x9, x9, #2616
   80218: 4a 00 80 52  	mov	w10, #2
   8021c: 21 00 00 d0  	adrp	x1, 0x86000 <interrupt_handler+0x204>
   80220: e0 63 02 91  	add	x0, sp, #152
   80224: e8 4f 03 a9  	stp	x8, x19, [sp, #48]
   80228: e8 c3 00 91  	add	x8, sp, #48
   8022c: e9 2b 06 a9  	stp	x9, x10, [sp, #96]
   80230: 29 00 80 52  	mov	w9, #1
   80234: 21 a0 04 91  	add	x1, x1, #296
   80238: e2 83 01 91  	add	x2, sp, #96
   8023c: f4 4f 00 f9  	str	x20, [sp, #152]
   80240: ff 7f 07 a9  	stp	xzr, xzr, [sp, #112]
   80244: e8 27 08 a9  	stp	x8, x9, [sp, #128]
   80248: c5 06 00 94  	bl	0x81d5c <_ZN4core3fmt5write17h63775af3066fbce8E>
   8024c: e0 13 00 35  	cbnz	w0, 0x804c8 <interrupt_handler+0x498>
   80250: e8 0f 40 f9  	ldr	x8, [sp, #24]
   80254: 1f 3d 00 f1  	cmp	x8, #15
   80258: 08 17 00 54  	b.hi	0x80538 <interrupt_handler+0x508>
   8025c: 29 00 80 52  	mov	w9, #1
   80260: aa bb 9b 52  	mov	w10, #56797
   80264: 28 21 c8 9a  	lsl	x8, x9, x8
   80268: 1f 01 0a ea  	tst	x8, x10
   8026c: c0 02 00 54  	b.eq	0x802c4 <interrupt_handler+0x294>
   80270: e8 83 01 91  	add	x8, sp, #96
   80274: 29 00 00 b0  	adrp	x9, 0x85000 <interrupt_handler+0x258>
   80278: 21 00 00 d0  	adrp	x1, 0x86000 <interrupt_handler+0x260>
   8027c: 29 a1 2f 91  	add	x9, x9, #3048
   80280: 2a 00 80 52  	mov	w10, #1
   80284: 21 a0 04 91  	add	x1, x1, #296
   80288: e8 1b 00 f9  	str	x8, [sp, #48]
   8028c: 28 00 00 d0  	adrp	x8, 0x86000 <interrupt_handler+0x274>
   80290: 08 a1 06 91  	add	x8, x8, #424
   80294: e0 c3 00 91  	add	x0, sp, #48
   80298: e2 83 01 91  	add	x2, sp, #96
   8029c: e9 2b 06 a9  	stp	x9, x10, [sp, #96]
   802a0: ff 7f 07 a9  	stp	xzr, xzr, [sp, #112]
   802a4: e8 7f 08 a9  	stp	x8, xzr, [sp, #128]
   802a8: ad 06 00 94  	bl	0x81d5c <_ZN4core3fmt5write17h63775af3066fbce8E>
   802ac: c0 11 00 35  	cbnz	w0, 0x804e4 <interrupt_handler+0x4b4>
   802b0: f4 4f 4b a9  	ldp	x20, x19, [sp, #176]
   802b4: f6 57 4a a9  	ldp	x22, x21, [sp, #160]
   802b8: fe 4b 40 f9  	ldr	x30, [sp, #144]
   802bc: ff 03 03 91  	add	sp, sp, #192
   802c0: c0 03 5f d6  	ret
   802c4: 93 40 96 52  	mov	w19, #45572
   802c8: 34 00 00 90  	adrp	x20, 0x84000 <interrupt_handler+0x2a8>
   802cc: 13 e0 a7 72  	movk	w19, #16128, lsl #16
   802d0: e9 83 01 91  	add	x9, sp, #96
   802d4: e8 53 01 91  	add	x8, sp, #84
   802d8: 94 92 00 91  	add	x20, x20, #36
   802dc: 21 00 00 d0  	adrp	x1, 0x86000 <interrupt_handler+0x2c4>
   802e0: e0 63 02 91  	add	x0, sp, #152
   802e4: 6a c2 5f b8  	ldur	w10, [x19, #-4]
   802e8: 21 a0 04 91  	add	x1, x1, #296
   802ec: e9 4f 00 f9  	str	x9, [sp, #152]
   802f0: 29 00 00 b0  	adrp	x9, 0x85000 <interrupt_handler+0x2d4>
   802f4: e8 53 03 a9  	stp	x8, x20, [sp, #48]
   802f8: 48 00 80 52  	mov	w8, #2
   802fc: 29 01 2b 91  	add	x9, x9, #2752
   80300: e2 83 01 91  	add	x2, sp, #96
   80304: ea 57 00 b9  	str	w10, [sp, #84]
   80308: ff 7f 07 a9  	stp	xzr, xzr, [sp, #112]
   8030c: e9 23 06 a9  	stp	x9, x8, [sp, #96]
   80310: e8 c3 00 91  	add	x8, sp, #48
   80314: 29 00 80 52  	mov	w9, #1
   80318: e8 27 08 a9  	stp	x8, x9, [sp, #128]
   8031c: 90 06 00 94  	bl	0x81d5c <_ZN4core3fmt5write17h63775af3066fbce8E>
   80320: 00 0f 00 35  	cbnz	w0, 0x80500 <interrupt_handler+0x4d0>
   80324: e8 57 40 b9  	ldr	w8, [sp, #84]
   80328: 08 06 40 36  	tbz	w8, #8, 0x803e8 <interrupt_handler+0x3b8>
   8032c: e8 83 01 91  	add	x8, sp, #96
   80330: 69 02 40 b9  	ldr	w9, [x19]
   80334: 21 00 00 d0  	adrp	x1, 0x86000 <interrupt_handler+0x31c>
   80338: ea 63 01 91  	add	x10, sp, #88
   8033c: 21 a0 04 91  	add	x1, x1, #296
   80340: e0 63 02 91  	add	x0, sp, #152
   80344: e8 4f 00 f9  	str	x8, [sp, #152]
   80348: 28 00 00 b0  	adrp	x8, 0x85000 <interrupt_handler+0x32c>
   8034c: 08 21 2c 91  	add	x8, x8, #2824
   80350: e9 5b 00 b9  	str	w9, [sp, #88]
   80354: 49 00 80 52  	mov	w9, #2
   80358: e2 83 01 91  	add	x2, sp, #96
   8035c: ea 53 03 a9  	stp	x10, x20, [sp, #48]
   80360: ff 7f 07 a9  	stp	xzr, xzr, [sp, #112]
   80364: e8 27 06 a9  	stp	x8, x9, [sp, #96]
   80368: e8 c3 00 91  	add	x8, sp, #48
   8036c: 29 00 80 52  	mov	w9, #1
   80370: e8 27 08 a9  	stp	x8, x9, [sp, #128]
   80374: 7a 06 00 94  	bl	0x81d5c <_ZN4core3fmt5write17h63775af3066fbce8E>
   80378: 20 0d 00 35  	cbnz	w0, 0x8051c <interrupt_handler+0x4ec>
   8037c: 7f 02 00 b9  	str	wzr, [x19]
   80380: e8 63 41 39  	ldrb	w8, [sp, #88]
   80384: 08 03 08 36  	tbz	w8, #1, 0x803e4 <interrupt_handler+0x3b4>
   80388: 15 00 86 52  	mov	w21, #12288
   8038c: e8 73 01 91  	add	x8, sp, #92
   80390: 15 e0 a7 72  	movk	w21, #16128, lsl #16
   80394: e9 83 01 91  	add	x9, sp, #96
   80398: 2a 00 00 b0  	adrp	x10, 0x85000 <interrupt_handler+0x37c>
   8039c: 21 00 00 d0  	adrp	x1, 0x86000 <interrupt_handler+0x384>
   803a0: 4a 41 2d 91  	add	x10, x10, #2896
   803a4: 56 00 80 52  	mov	w22, #2
   803a8: ab 02 40 b9  	ldr	w11, [x21]
   803ac: 21 a0 04 91  	add	x1, x1, #296
   803b0: e9 4f 00 f9  	str	x9, [sp, #152]
   803b4: 29 00 80 52  	mov	w9, #1
   803b8: e8 53 03 a9  	stp	x8, x20, [sp, #48]
   803bc: e8 c3 00 91  	add	x8, sp, #48
   803c0: e0 63 02 91  	add	x0, sp, #152
   803c4: e2 83 01 91  	add	x2, sp, #96
   803c8: ea 5b 06 a9  	stp	x10, x22, [sp, #96]
   803cc: eb 5f 00 b9  	str	w11, [sp, #92]
   803d0: ff 7f 07 a9  	stp	xzr, xzr, [sp, #112]
   803d4: e8 27 08 a9  	stp	x8, x9, [sp, #128]
   803d8: 61 06 00 94  	bl	0x81d5c <_ZN4core3fmt5write17h63775af3066fbce8E>
   803dc: c0 0b 00 35  	cbnz	w0, 0x80554 <interrupt_handler+0x524>
   803e0: b6 02 00 b9  	str	w22, [x21]
   803e4: e8 57 40 b9  	ldr	w8, [sp, #84]
   803e8: 48 f4 4f 36  	tbz	w8, #9, 0x80270 <interrupt_handler+0x240>
   803ec: 69 06 40 b9  	ldr	w9, [x19, #4]
   803f0: e8 73 01 91  	add	x8, sp, #92
   803f4: 21 00 00 d0  	adrp	x1, 0x86000 <interrupt_handler+0x3dc>
   803f8: ea 83 01 91  	add	x10, sp, #96
   803fc: 21 a0 04 91  	add	x1, x1, #296
   80400: e0 63 02 91  	add	x0, sp, #152
   80404: e8 53 03 a9  	stp	x8, x20, [sp, #48]
   80408: 48 00 80 52  	mov	w8, #2
   8040c: e9 5f 00 b9  	str	w9, [sp, #92]
   80410: 29 00 00 b0  	adrp	x9, 0x85000 <interrupt_handler+0x3f4>
   80414: 29 61 2e 91  	add	x9, x9, #2968
   80418: e2 83 01 91  	add	x2, sp, #96
   8041c: ea 4f 00 f9  	str	x10, [sp, #152]
   80420: ff 7f 07 a9  	stp	xzr, xzr, [sp, #112]
   80424: e9 23 06 a9  	stp	x9, x8, [sp, #96]
   80428: e8 c3 00 91  	add	x8, sp, #48
   8042c: 29 00 80 52  	mov	w9, #1
   80430: e8 27 08 a9  	stp	x8, x9, [sp, #128]
   80434: 4a 06 00 94  	bl	0x81d5c <_ZN4core3fmt5write17h63775af3066fbce8E>
   80438: c0 f1 ff 34  	cbz	w0, 0x80270 <interrupt_handler+0x240>
   8043c: 20 00 00 d0  	adrp	x0, 0x86000 <interrupt_handler+0x424>
   80440: 22 00 00 b0  	adrp	x2, 0x85000 <interrupt_handler+0x424>
   80444: 23 00 00 b0  	adrp	x3, 0x85000 <interrupt_handler+0x428>
   80448: 00 80 02 91  	add	x0, x0, #160
   8044c: 42 a0 22 91  	add	x2, x2, #2216
   80450: 63 e0 2e 91  	add	x3, x3, #3000
   80454: 46 00 00 14  	b	0x8056c <interrupt_handler+0x53c>
   80458: 20 00 00 d0  	adrp	x0, 0x86000 <interrupt_handler+0x440>
   8045c: 22 00 00 b0  	adrp	x2, 0x85000 <interrupt_handler+0x440>
   80460: 23 00 00 b0  	adrp	x3, 0x85000 <interrupt_handler+0x444>
   80464: 00 80 02 91  	add	x0, x0, #160
   80468: 42 a0 22 91  	add	x2, x2, #2216
   8046c: 63 40 24 91  	add	x3, x3, #2320
   80470: 3f 00 00 14  	b	0x8056c <interrupt_handler+0x53c>
   80474: 20 00 00 d0  	adrp	x0, 0x86000 <interrupt_handler+0x45c>
   80478: 22 00 00 b0  	adrp	x2, 0x85000 <interrupt_handler+0x45c>
   8047c: 23 00 00 b0  	adrp	x3, 0x85000 <interrupt_handler+0x460>
   80480: 00 80 02 91  	add	x0, x0, #160
   80484: 42 a0 22 91  	add	x2, x2, #2216
   80488: 63 80 25 91  	add	x3, x3, #2400
   8048c: 38 00 00 14  	b	0x8056c <interrupt_handler+0x53c>
   80490: 20 00 00 d0  	adrp	x0, 0x86000 <interrupt_handler+0x478>
   80494: 22 00 00 b0  	adrp	x2, 0x85000 <interrupt_handler+0x478>
   80498: 23 00 00 b0  	adrp	x3, 0x85000 <interrupt_handler+0x47c>
   8049c: 00 80 02 91  	add	x0, x0, #160
   804a0: 42 a0 22 91  	add	x2, x2, #2216
   804a4: 63 e0 26 91  	add	x3, x3, #2488
   804a8: 31 00 00 14  	b	0x8056c <interrupt_handler+0x53c>
   804ac: 20 00 00 d0  	adrp	x0, 0x86000 <interrupt_handler+0x494>
   804b0: 22 00 00 b0  	adrp	x2, 0x85000 <interrupt_handler+0x494>
   804b4: 23 00 00 b0  	adrp	x3, 0x85000 <interrupt_handler+0x498>
   804b8: 00 80 02 91  	add	x0, x0, #160
   804bc: 42 a0 22 91  	add	x2, x2, #2216
   804c0: 63 20 28 91  	add	x3, x3, #2568
   804c4: 2a 00 00 14  	b	0x8056c <interrupt_handler+0x53c>
   804c8: 20 00 00 d0  	adrp	x0, 0x86000 <interrupt_handler+0x4b0>
   804cc: 22 00 00 b0  	adrp	x2, 0x85000 <interrupt_handler+0x4b0>
   804d0: 23 00 00 b0  	adrp	x3, 0x85000 <interrupt_handler+0x4b4>
   804d4: 00 80 02 91  	add	x0, x0, #160
   804d8: 42 a0 22 91  	add	x2, x2, #2216
   804dc: 63 60 29 91  	add	x3, x3, #2648
   804e0: 23 00 00 14  	b	0x8056c <interrupt_handler+0x53c>
   804e4: 20 00 00 d0  	adrp	x0, 0x86000 <interrupt_handler+0x4cc>
   804e8: 22 00 00 b0  	adrp	x2, 0x85000 <interrupt_handler+0x4cc>
   804ec: 23 00 00 b0  	adrp	x3, 0x85000 <interrupt_handler+0x4d0>
   804f0: 00 80 02 91  	add	x0, x0, #160
   804f4: 42 a0 22 91  	add	x2, x2, #2216
   804f8: 63 e0 2f 91  	add	x3, x3, #3064
   804fc: 1c 00 00 14  	b	0x8056c <interrupt_handler+0x53c>
   80500: 20 00 00 d0  	adrp	x0, 0x86000 <interrupt_handler+0x4e8>
   80504: 22 00 00 b0  	adrp	x2, 0x85000 <interrupt_handler+0x4e8>
   80508: 23 00 00 b0  	adrp	x3, 0x85000 <interrupt_handler+0x4ec>
   8050c: 00 80 02 91  	add	x0, x0, #160
   80510: 42 a0 22 91  	add	x2, x2, #2216
   80514: 63 80 2b 91  	add	x3, x3, #2784
   80518: 15 00 00 14  	b	0x8056c <interrupt_handler+0x53c>
   8051c: 20 00 00 d0  	adrp	x0, 0x86000 <interrupt_handler+0x504>
   80520: 22 00 00 b0  	adrp	x2, 0x85000 <interrupt_handler+0x504>
   80524: 23 00 00 b0  	adrp	x3, 0x85000 <interrupt_handler+0x508>
   80528: 00 80 02 91  	add	x0, x0, #160
   8052c: 42 a0 22 91  	add	x2, x2, #2216
   80530: 63 a0 2c 91  	add	x3, x3, #2856
   80534: 0e 00 00 14  	b	0x8056c <interrupt_handler+0x53c>
   80538: 20 00 00 b0  	adrp	x0, 0x85000 <interrupt_handler+0x51c>
   8053c: 22 00 00 b0  	adrp	x2, 0x85000 <interrupt_handler+0x520>
   80540: 00 c0 29 91  	add	x0, x0, #2672
   80544: 01 05 80 52  	mov	w1, #40
   80548: 42 60 2a 91  	add	x2, x2, #2712
   8054c: eb 04 00 94  	bl	0x818f8 <_ZN4core9panicking5panic17h0d86cd7d69f331f6E>
   80550: 20 00 20 d4  	brk	#0x1
   80554: 20 00 00 d0  	adrp	x0, 0x86000 <interrupt_handler+0x53c>
   80558: 22 00 00 b0  	adrp	x2, 0x85000 <interrupt_handler+0x53c>
   8055c: 23 00 00 b0  	adrp	x3, 0x85000 <interrupt_handler+0x540>
   80560: 00 80 02 91  	add	x0, x0, #160
   80564: 42 a0 22 91  	add	x2, x2, #2216
   80568: 63 c0 2d 91  	add	x3, x3, #2928
   8056c: e1 83 01 91  	add	x1, sp, #96
   80570: e9 06 00 94  	bl	0x82114 <_ZN4core6result13unwrap_failed17he5d63f92106ab51dE>
   80574: 20 00 20 d4  	brk	#0x1

0000000000080578 <_ZN12baremetal_pi4main17hd2a33588efc1e3e3E>:
   80578: ff 43 03 d1  	sub	sp, sp, #208
   8057c: fd 7b 07 a9  	stp	x29, x30, [sp, #112]
   80580: fc 6f 08 a9  	stp	x28, x27, [sp, #128]
   80584: fa 67 09 a9  	stp	x26, x25, [sp, #144]
   80588: f8 5f 0a a9  	stp	x24, x23, [sp, #160]
   8058c: f6 57 0b a9  	stp	x22, x21, [sp, #176]
   80590: f4 4f 0c a9  	stp	x20, x19, [sp, #192]
   80594: c0 01 80 52  	mov	w0, #14
   80598: 14 0d 8a 52  	mov	w20, #20584
   8059c: 34 e4 a7 72  	movk	w20, #16161, lsl #16
   805a0: 2c 03 00 94  	bl	0x81250 <_ZN12baremetal_pi4gpio4Gpio9configure17hb1583b5e8840e111E>
   805a4: e0 01 80 52  	mov	w0, #15
   805a8: 2a 03 00 94  	bl	0x81250 <_ZN12baremetal_pi4gpio4Gpio9configure17hb1583b5e8840e111E>
   805ac: 89 02 40 b9  	ldr	w9, [x20]
   805b0: c8 21 80 52  	mov	w8, #270
   805b4: 6a 00 80 52  	mov	w10, #3
   805b8: 09 3d 00 33  	bfxil	w9, w8, #0, #16
   805bc: c8 12 80 52  	mov	w8, #150
   805c0: 89 02 00 b9  	str	w9, [x20]
   805c4: 8a 42 1e b8  	stur	w10, [x20, #-28]
   805c8: 1f 20 03 d5  	nop
   805cc: 08 05 00 f1  	subs	x8, x8, #1
   805d0: c1 ff ff 54  	b.ne	0x805c8 <_ZN12baremetal_pi4main17hd2a33588efc1e3e3E+0x50>
   805d4: 73 00 80 52  	mov	w19, #3
   805d8: 08 00 00 b0  	adrp	x8, 0x81000 <_ZN12baremetal_pi4main17hd2a33588efc1e3e3E+0x64>
   805dc: e9 03 01 91  	add	x9, sp, #64
   805e0: f5 c3 00 91  	add	x21, sp, #48
   805e4: 08 91 0d 91  	add	x8, x8, #868
   805e8: 21 00 00 d0  	adrp	x1, 0x86000 <_ZN12baremetal_pi4main17hd2a33588efc1e3e3E+0x88>
   805ec: 93 82 1f b8  	stur	w19, [x20, #-8]
   805f0: 0a e2 3f d5  	mrs	x10, CNTPS_TVAL_EL1
   805f4: ea 27 03 a9  	stp	x10, x9, [sp, #48]
   805f8: 29 00 00 b0  	adrp	x9, 0x85000 <_ZN12baremetal_pi4main17hd2a33588efc1e3e3E+0x94>
   805fc: f5 23 01 a9  	stp	x21, x8, [sp, #16]
   80600: 48 00 80 52  	mov	w8, #2
   80604: 29 a1 34 91  	add	x9, x9, #3368
   80608: f4 43 00 91  	add	x20, sp, #16
   8060c: 21 a0 04 91  	add	x1, x1, #296
   80610: e0 e3 00 91  	add	x0, sp, #56
   80614: e2 03 01 91  	add	x2, sp, #64
   80618: ff 7f 05 a9  	stp	xzr, xzr, [sp, #80]
   8061c: e9 23 04 a9  	stp	x9, x8, [sp, #64]
   80620: 28 00 80 52  	mov	w8, #1
   80624: f6 03 01 91  	add	x22, sp, #64
   80628: f4 23 06 a9  	stp	x20, x8, [sp, #96]
   8062c: cc 05 00 94  	bl	0x81d5c <_ZN4core3fmt5write17h63775af3066fbce8E>
   80630: 40 01 00 34  	cbz	w0, 0x80658 <_ZN12baremetal_pi4main17hd2a33588efc1e3e3E+0xe0>
   80634: 20 00 00 d0  	adrp	x0, 0x86000 <_ZN12baremetal_pi4main17hd2a33588efc1e3e3E+0xd4>
   80638: 22 00 00 b0  	adrp	x2, 0x85000 <_ZN12baremetal_pi4main17hd2a33588efc1e3e3E+0xd4>
   8063c: 23 00 00 b0  	adrp	x3, 0x85000 <_ZN12baremetal_pi4main17hd2a33588efc1e3e3E+0xd8>
   80640: 00 80 02 91  	add	x0, x0, #160
   80644: 42 20 35 91  	add	x2, x2, #3400
   80648: 63 a0 35 91  	add	x3, x3, #3432
   8064c: e1 03 01 91  	add	x1, sp, #64
   80650: b1 06 00 94  	bl	0x82114 <_ZN4core6result13unwrap_failed17he5d63f92106ab51dE>
   80654: 20 00 20 d4  	brk	#0x1
   80658: 08 00 00 90  	adrp	x8, 0x80000 <_ZN12baremetal_pi4main17hd2a33588efc1e3e3E+0xe0>
   8065c: 49 42 38 d5  	mrs	x9, CurrentEL
   80660: 08 61 37 91  	add	x8, x8, #3544
   80664: 2a 00 00 b0  	adrp	x10, 0x85000 <_ZN12baremetal_pi4main17hd2a33588efc1e3e3E+0x100>
   80668: 21 00 00 d0  	adrp	x1, 0x86000 <_ZN12baremetal_pi4main17hd2a33588efc1e3e3E+0x108>
   8066c: 69 0a 69 0a  	bic	w9, w19, w9, lsr #2
   80670: 4a 01 36 91  	add	x10, x10, #3456
   80674: 21 a0 04 91  	add	x1, x1, #296
   80678: f5 23 01 a9  	stp	x21, x8, [sp, #16]
   8067c: 48 00 80 52  	mov	w8, #2
   80680: e0 e3 00 91  	add	x0, sp, #56
   80684: e2 03 01 91  	add	x2, sp, #64
   80688: f6 ab 03 a9  	stp	x22, x10, [sp, #56]
   8068c: e8 ff 04 a9  	stp	x8, xzr, [sp, #72]
   80690: 28 00 80 52  	mov	w8, #1
   80694: e9 c3 00 39  	strb	w9, [sp, #48]
   80698: ff d3 05 a9  	stp	xzr, x20, [sp, #88]
   8069c: f4 03 01 91  	add	x20, sp, #64
   806a0: e8 37 00 f9  	str	x8, [sp, #104]
   806a4: ae 05 00 94  	bl	0x81d5c <_ZN4core3fmt5write17h63775af3066fbce8E>
   806a8: 40 01 00 34  	cbz	w0, 0x806d0 <_ZN12baremetal_pi4main17hd2a33588efc1e3e3E+0x158>
   806ac: 20 00 00 d0  	adrp	x0, 0x86000 <_ZN12baremetal_pi4main17hd2a33588efc1e3e3E+0x14c>
   806b0: 22 00 00 b0  	adrp	x2, 0x85000 <_ZN12baremetal_pi4main17hd2a33588efc1e3e3E+0x14c>
   806b4: 23 00 00 b0  	adrp	x3, 0x85000 <_ZN12baremetal_pi4main17hd2a33588efc1e3e3E+0x150>
   806b8: 00 80 02 91  	add	x0, x0, #160
   806bc: 42 20 35 91  	add	x2, x2, #3400
   806c0: 63 80 36 91  	add	x3, x3, #3488
   806c4: e1 03 01 91  	add	x1, sp, #64
   806c8: 93 06 00 94  	bl	0x82114 <_ZN4core6result13unwrap_failed17he5d63f92106ab51dE>
   806cc: 20 00 20 d4  	brk	#0x1
   806d0: 08 e0 3b d5  	mrs	x8, CNTFRQ_EL0
   806d4: 29 00 00 b0  	adrp	x9, 0x85000 <_ZN12baremetal_pi4main17hd2a33588efc1e3e3E+0x170>
   806d8: e8 53 03 a9  	stp	x8, x20, [sp, #48]
   806dc: 48 00 80 52  	mov	w8, #2
   806e0: 29 e1 36 91  	add	x9, x9, #3512
   806e4: 13 00 00 90  	adrp	x19, 0x80000 <_ZN12baremetal_pi4main17hd2a33588efc1e3e3E+0x16c>
   806e8: 21 00 00 d0  	adrp	x1, 0x86000 <_ZN12baremetal_pi4main17hd2a33588efc1e3e3E+0x188>
   806ec: f5 c3 00 91  	add	x21, sp, #48
   806f0: 73 62 33 91  	add	x19, x19, #3288
   806f4: f4 43 00 91  	add	x20, sp, #16
   806f8: e9 23 04 a9  	stp	x9, x8, [sp, #64]
   806fc: 28 00 80 52  	mov	w8, #1
   80700: 21 a0 04 91  	add	x1, x1, #296
   80704: e0 e3 00 91  	add	x0, sp, #56
   80708: e2 03 01 91  	add	x2, sp, #64
   8070c: f5 4f 01 a9  	stp	x21, x19, [sp, #16]
   80710: ff 7f 05 a9  	stp	xzr, xzr, [sp, #80]
   80714: f6 03 01 91  	add	x22, sp, #64
   80718: f4 23 06 a9  	stp	x20, x8, [sp, #96]
   8071c: 90 05 00 94  	bl	0x81d5c <_ZN4core3fmt5write17h63775af3066fbce8E>
   80720: 40 01 00 34  	cbz	w0, 0x80748 <_ZN12baremetal_pi4main17hd2a33588efc1e3e3E+0x1d0>
   80724: 20 00 00 d0  	adrp	x0, 0x86000 <_ZN12baremetal_pi4main17hd2a33588efc1e3e3E+0x1c4>
   80728: 22 00 00 b0  	adrp	x2, 0x85000 <_ZN12baremetal_pi4main17hd2a33588efc1e3e3E+0x1c4>
   8072c: 23 00 00 b0  	adrp	x3, 0x85000 <_ZN12baremetal_pi4main17hd2a33588efc1e3e3E+0x1c8>
   80730: 00 80 02 91  	add	x0, x0, #160
   80734: 42 20 35 91  	add	x2, x2, #3400
   80738: 63 60 37 91  	add	x3, x3, #3544
   8073c: e1 03 01 91  	add	x1, sp, #64
   80740: 75 06 00 94  	bl	0x82114 <_ZN4core6result13unwrap_failed17he5d63f92106ab51dE>
   80744: 20 00 20 d4  	brk	#0x1
   80748: 48 e0 3b d5  	mrs	x8, CNTVCT_EL0
   8074c: 29 00 00 b0  	adrp	x9, 0x85000 <_ZN12baremetal_pi4main17hd2a33588efc1e3e3E+0x1e8>
   80750: e8 5b 03 a9  	stp	x8, x22, [sp, #48]
   80754: 48 00 80 52  	mov	w8, #2
   80758: 29 c1 37 91  	add	x9, x9, #3568
   8075c: 21 00 00 d0  	adrp	x1, 0x86000 <_ZN12baremetal_pi4main17hd2a33588efc1e3e3E+0x1fc>
   80760: 21 a0 04 91  	add	x1, x1, #296
   80764: e0 e3 00 91  	add	x0, sp, #56
   80768: e2 03 01 91  	add	x2, sp, #64
   8076c: f5 4f 01 a9  	stp	x21, x19, [sp, #16]
   80770: e9 23 04 a9  	stp	x9, x8, [sp, #64]
   80774: 28 00 80 52  	mov	w8, #1
   80778: ff 7f 05 a9  	stp	xzr, xzr, [sp, #80]
   8077c: f4 23 06 a9  	stp	x20, x8, [sp, #96]
   80780: f4 03 01 91  	add	x20, sp, #64
   80784: 76 05 00 94  	bl	0x81d5c <_ZN4core3fmt5write17h63775af3066fbce8E>
   80788: 40 01 00 34  	cbz	w0, 0x807b0 <_ZN12baremetal_pi4main17hd2a33588efc1e3e3E+0x238>
   8078c: 20 00 00 d0  	adrp	x0, 0x86000 <_ZN12baremetal_pi4main17hd2a33588efc1e3e3E+0x22c>
   80790: 22 00 00 b0  	adrp	x2, 0x85000 <_ZN12baremetal_pi4main17hd2a33588efc1e3e3E+0x22c>
   80794: 23 00 00 b0  	adrp	x3, 0x85000 <_ZN12baremetal_pi4main17hd2a33588efc1e3e3E+0x230>
   80798: 00 80 02 91  	add	x0, x0, #160
   8079c: 42 20 35 91  	add	x2, x2, #3400
   807a0: 63 40 38 91  	add	x3, x3, #3600
   807a4: e1 03 01 91  	add	x1, sp, #64
   807a8: 5b 06 00 94  	bl	0x82114 <_ZN4core6result13unwrap_failed17he5d63f92106ab51dE>
   807ac: 20 00 20 d4  	brk	#0x1
   807b0: 08 42 38 d5  	mrs	x8, SPSel
   807b4: 29 00 00 b0  	adrp	x9, 0x85000 <_ZN12baremetal_pi4main17hd2a33588efc1e3e3E+0x250>
   807b8: e8 53 03 a9  	stp	x8, x20, [sp, #48]
   807bc: 48 00 80 52  	mov	w8, #2
   807c0: 29 a1 38 91  	add	x9, x9, #3624
   807c4: 21 00 00 d0  	adrp	x1, 0x86000 <_ZN12baremetal_pi4main17hd2a33588efc1e3e3E+0x264>
   807c8: f5 c3 00 91  	add	x21, sp, #48
   807cc: f4 43 00 91  	add	x20, sp, #16
   807d0: 21 a0 04 91  	add	x1, x1, #296
   807d4: e0 e3 00 91  	add	x0, sp, #56
   807d8: e9 23 04 a9  	stp	x9, x8, [sp, #64]
   807dc: 28 00 80 52  	mov	w8, #1
   807e0: e2 03 01 91  	add	x2, sp, #64
   807e4: f5 4f 01 a9  	stp	x21, x19, [sp, #16]
   807e8: ff 7f 05 a9  	stp	xzr, xzr, [sp, #80]
   807ec: f6 03 01 91  	add	x22, sp, #64
   807f0: f4 23 06 a9  	stp	x20, x8, [sp, #96]
   807f4: 5a 05 00 94  	bl	0x81d5c <_ZN4core3fmt5write17h63775af3066fbce8E>
   807f8: 40 01 00 34  	cbz	w0, 0x80820 <_ZN12baremetal_pi4main17hd2a33588efc1e3e3E+0x2a8>
   807fc: 20 00 00 d0  	adrp	x0, 0x86000 <_ZN12baremetal_pi4main17hd2a33588efc1e3e3E+0x29c>
   80800: 22 00 00 b0  	adrp	x2, 0x85000 <_ZN12baremetal_pi4main17hd2a33588efc1e3e3E+0x29c>
   80804: 23 00 00 b0  	adrp	x3, 0x85000 <_ZN12baremetal_pi4main17hd2a33588efc1e3e3E+0x2a0>
   80808: 00 80 02 91  	add	x0, x0, #160
   8080c: 42 20 35 91  	add	x2, x2, #3400
   80810: 63 20 39 91  	add	x3, x3, #3656
   80814: e1 03 01 91  	add	x1, sp, #64
   80818: 3f 06 00 94  	bl	0x82114 <_ZN4core6result13unwrap_failed17he5d63f92106ab51dE>
   8081c: 20 00 20 d4  	brk	#0x1
   80820: 28 42 3b d5  	mrs	x8, DAIF
   80824: 29 00 00 b0  	adrp	x9, 0x85000 <_ZN12baremetal_pi4main17hd2a33588efc1e3e3E+0x2c0>
   80828: e8 5b 03 a9  	stp	x8, x22, [sp, #48]
   8082c: 48 00 80 52  	mov	w8, #2
   80830: 29 81 39 91  	add	x9, x9, #3680
   80834: 33 00 00 90  	adrp	x19, 0x84000 <_ZN12baremetal_pi4main17hd2a33588efc1e3e3E+0x2cc>
   80838: 21 00 00 d0  	adrp	x1, 0x86000 <_ZN12baremetal_pi4main17hd2a33588efc1e3e3E+0x2d8>
   8083c: 73 c2 02 91  	add	x19, x19, #176
   80840: 21 a0 04 91  	add	x1, x1, #296
   80844: e0 e3 00 91  	add	x0, sp, #56
   80848: e9 23 04 a9  	stp	x9, x8, [sp, #64]
   8084c: 28 00 80 52  	mov	w8, #1
   80850: e2 03 01 91  	add	x2, sp, #64
   80854: f5 4f 01 a9  	stp	x21, x19, [sp, #16]
   80858: ff 7f 05 a9  	stp	xzr, xzr, [sp, #80]
   8085c: f4 23 06 a9  	stp	x20, x8, [sp, #96]
   80860: f4 03 01 91  	add	x20, sp, #64
   80864: 3e 05 00 94  	bl	0x81d5c <_ZN4core3fmt5write17h63775af3066fbce8E>
   80868: 40 01 00 34  	cbz	w0, 0x80890 <_ZN12baremetal_pi4main17hd2a33588efc1e3e3E+0x318>
   8086c: 20 00 00 d0  	adrp	x0, 0x86000 <_ZN12baremetal_pi4main17hd2a33588efc1e3e3E+0x30c>
   80870: 22 00 00 b0  	adrp	x2, 0x85000 <_ZN12baremetal_pi4main17hd2a33588efc1e3e3E+0x30c>
   80874: 23 00 00 b0  	adrp	x3, 0x85000 <_ZN12baremetal_pi4main17hd2a33588efc1e3e3E+0x310>
   80878: 00 80 02 91  	add	x0, x0, #160
   8087c: 42 20 35 91  	add	x2, x2, #3400
   80880: 63 00 3a 91  	add	x3, x3, #3712
   80884: e1 03 01 91  	add	x1, sp, #64
   80888: 23 06 00 94  	bl	0x82114 <_ZN4core6result13unwrap_failed17he5d63f92106ab51dE>
   8088c: 20 00 20 d4  	brk	#0x1
   80890: 28 c0 3e d5  	mrs	x8, RVBAR_EL3
   80894: e8 53 03 a9  	stp	x8, x20, [sp, #48]
   80898: 14 00 00 90  	adrp	x20, 0x80000 <_ZN12baremetal_pi4main17hd2a33588efc1e3e3E+0x320>
   8089c: e9 c3 00 91  	add	x9, sp, #48
   808a0: 94 22 35 91  	add	x20, x20, #3400
   808a4: 48 00 80 52  	mov	w8, #2
   808a8: 21 00 00 d0  	adrp	x1, 0x86000 <_ZN12baremetal_pi4main17hd2a33588efc1e3e3E+0x348>
   808ac: f5 43 00 91  	add	x21, sp, #16
   808b0: 21 a0 04 91  	add	x1, x1, #296
   808b4: e0 e3 00 91  	add	x0, sp, #56
   808b8: e9 53 01 a9  	stp	x9, x20, [sp, #16]
   808bc: 29 00 00 b0  	adrp	x9, 0x85000 <_ZN12baremetal_pi4main17hd2a33588efc1e3e3E+0x358>
   808c0: 29 61 3a 91  	add	x9, x9, #3736
   808c4: e2 03 01 91  	add	x2, sp, #64
   808c8: ff 7f 05 a9  	stp	xzr, xzr, [sp, #80]
   808cc: f6 03 01 91  	add	x22, sp, #64
   808d0: e9 23 04 a9  	stp	x9, x8, [sp, #64]
   808d4: 28 00 80 52  	mov	w8, #1
   808d8: f5 23 06 a9  	stp	x21, x8, [sp, #96]
   808dc: 20 05 00 94  	bl	0x81d5c <_ZN4core3fmt5write17h63775af3066fbce8E>
   808e0: 40 01 00 34  	cbz	w0, 0x80908 <_ZN12baremetal_pi4main17hd2a33588efc1e3e3E+0x390>
   808e4: 20 00 00 d0  	adrp	x0, 0x86000 <_ZN12baremetal_pi4main17hd2a33588efc1e3e3E+0x384>
   808e8: 22 00 00 b0  	adrp	x2, 0x85000 <_ZN12baremetal_pi4main17hd2a33588efc1e3e3E+0x384>
   808ec: 23 00 00 b0  	adrp	x3, 0x85000 <_ZN12baremetal_pi4main17hd2a33588efc1e3e3E+0x388>
   808f0: 00 80 02 91  	add	x0, x0, #160
   808f4: 42 20 35 91  	add	x2, x2, #3400
   808f8: 63 e0 3a 91  	add	x3, x3, #3768
   808fc: e1 03 01 91  	add	x1, sp, #64
   80900: 05 06 00 94  	bl	0x82114 <_ZN4core6result13unwrap_failed17he5d63f92106ab51dE>
   80904: 20 00 20 d4  	brk	#0x1
   80908: 28 00 00 b0  	adrp	x8, 0x85000 <_ZN12baremetal_pi4main17hd2a33588efc1e3e3E+0x3a4>
   8090c: e9 03 00 91  	mov	x9, sp
   80910: 08 01 00 91  	add	x8, x8, #0
   80914: 21 00 00 d0  	adrp	x1, 0x86000 <_ZN12baremetal_pi4main17hd2a33588efc1e3e3E+0x3b4>
   80918: 21 a0 04 91  	add	x1, x1, #296
   8091c: e0 e3 00 91  	add	x0, sp, #56
   80920: e9 53 01 a9  	stp	x9, x20, [sp, #16]
   80924: 29 00 00 b0  	adrp	x9, 0x85000 <_ZN12baremetal_pi4main17hd2a33588efc1e3e3E+0x3c0>
   80928: e8 03 00 f9  	str	x8, [sp]
   8092c: 48 00 80 52  	mov	w8, #2
   80930: 29 a1 30 91  	add	x9, x9, #3112
   80934: e2 03 01 91  	add	x2, sp, #64
   80938: ff d7 05 a9  	stp	xzr, x21, [sp, #88]
   8093c: e8 ff 04 a9  	stp	x8, xzr, [sp, #72]
   80940: 28 00 80 52  	mov	w8, #1
   80944: f6 a7 03 a9  	stp	x22, x9, [sp, #56]
   80948: e8 37 00 f9  	str	x8, [sp, #104]
   8094c: 04 05 00 94  	bl	0x81d5c <_ZN4core3fmt5write17h63775af3066fbce8E>
   80950: 40 01 00 34  	cbz	w0, 0x80978 <_ZN12baremetal_pi4main17hd2a33588efc1e3e3E+0x400>
   80954: 20 00 00 d0  	adrp	x0, 0x86000 <_ZN12baremetal_pi4main17hd2a33588efc1e3e3E+0x3f4>
   80958: 22 00 00 b0  	adrp	x2, 0x85000 <_ZN12baremetal_pi4main17hd2a33588efc1e3e3E+0x3f4>
   8095c: 23 00 00 b0  	adrp	x3, 0x85000 <_ZN12baremetal_pi4main17hd2a33588efc1e3e3E+0x3f8>
   80960: 00 80 02 91  	add	x0, x0, #160
   80964: 42 a0 22 91  	add	x2, x2, #2216
   80968: 63 20 31 91  	add	x3, x3, #3144
   8096c: e1 03 01 91  	add	x1, sp, #64
   80970: e9 05 00 94  	bl	0x82114 <_ZN4core6result13unwrap_failed17he5d63f92106ab51dE>
   80974: 20 00 20 d4  	brk	#0x1
   80978: e8 03 40 f9  	ldr	x8, [sp]
   8097c: 09 29 40 f2  	ands	x9, x8, #0x7ff
   80980: e9 07 00 f9  	str	x9, [sp, #8]
   80984: 41 03 00 54  	b.ne	0x809ec <_ZN12baremetal_pi4main17hd2a33588efc1e3e3E+0x474>
   80988: e8 03 01 91  	add	x8, sp, #64
   8098c: 29 00 00 b0  	adrp	x9, 0x85000 <_ZN12baremetal_pi4main17hd2a33588efc1e3e3E+0x428>
   80990: 21 00 00 d0  	adrp	x1, 0x86000 <_ZN12baremetal_pi4main17hd2a33588efc1e3e3E+0x430>
   80994: 29 01 34 91  	add	x9, x9, #3328
   80998: 2a 00 80 52  	mov	w10, #1
   8099c: 21 a0 04 91  	add	x1, x1, #296
   809a0: e8 0b 00 f9  	str	x8, [sp, #16]
   809a4: 28 00 00 d0  	adrp	x8, 0x86000 <_ZN12baremetal_pi4main17hd2a33588efc1e3e3E+0x444>
   809a8: 08 a1 06 91  	add	x8, x8, #424
   809ac: e0 43 00 91  	add	x0, sp, #16
   809b0: e2 03 01 91  	add	x2, sp, #64
   809b4: e9 2b 04 a9  	stp	x9, x10, [sp, #64]
   809b8: ff 7f 05 a9  	stp	xzr, xzr, [sp, #80]
   809bc: e8 7f 06 a9  	stp	x8, xzr, [sp, #96]
   809c0: e7 04 00 94  	bl	0x81d5c <_ZN4core3fmt5write17h63775af3066fbce8E>
   809c4: 00 05 00 34  	cbz	w0, 0x80a64 <_ZN12baremetal_pi4main17hd2a33588efc1e3e3E+0x4ec>
   809c8: 20 00 00 d0  	adrp	x0, 0x86000 <_ZN12baremetal_pi4main17hd2a33588efc1e3e3E+0x468>
   809cc: 22 00 00 b0  	adrp	x2, 0x85000 <_ZN12baremetal_pi4main17hd2a33588efc1e3e3E+0x468>
   809d0: 23 00 00 b0  	adrp	x3, 0x85000 <_ZN12baremetal_pi4main17hd2a33588efc1e3e3E+0x46c>
   809d4: 00 80 02 91  	add	x0, x0, #160
   809d8: 42 a0 22 91  	add	x2, x2, #2216
   809dc: 63 40 34 91  	add	x3, x3, #3344
   809e0: e1 03 01 91  	add	x1, sp, #64
   809e4: cc 05 00 94  	bl	0x82114 <_ZN4core6result13unwrap_failed17he5d63f92106ab51dE>
   809e8: 20 00 20 d4  	brk	#0x1
   809ec: e9 c3 00 91  	add	x9, sp, #48
   809f0: f3 a3 02 a9  	stp	x19, x8, [sp, #40]
   809f4: e8 23 00 91  	add	x8, sp, #8
   809f8: 21 00 00 d0  	adrp	x1, 0x86000 <_ZN12baremetal_pi4main17hd2a33588efc1e3e3E+0x498>
   809fc: 21 a0 04 91  	add	x1, x1, #296
   80a00: e0 e3 00 91  	add	x0, sp, #56
   80a04: e9 53 01 a9  	stp	x9, x20, [sp, #16]
   80a08: e9 03 01 91  	add	x9, sp, #64
   80a0c: e8 13 00 f9  	str	x8, [sp, #32]
   80a10: 68 00 80 52  	mov	w8, #3
   80a14: e2 03 01 91  	add	x2, sp, #64
   80a18: ff 7f 05 a9  	stp	xzr, xzr, [sp, #80]
   80a1c: e9 1f 00 f9  	str	x9, [sp, #56]
   80a20: 29 00 00 b0  	adrp	x9, 0x85000 <_ZN12baremetal_pi4main17hd2a33588efc1e3e3E+0x4bc>
   80a24: 29 41 32 91  	add	x9, x9, #3216
   80a28: e9 23 04 a9  	stp	x9, x8, [sp, #64]
   80a2c: e8 43 00 91  	add	x8, sp, #16
   80a30: 49 00 80 52  	mov	w9, #2
   80a34: e8 27 06 a9  	stp	x8, x9, [sp, #96]
   80a38: c9 04 00 94  	bl	0x81d5c <_ZN4core3fmt5write17h63775af3066fbce8E>
   80a3c: 40 01 00 34  	cbz	w0, 0x80a64 <_ZN12baremetal_pi4main17hd2a33588efc1e3e3E+0x4ec>
   80a40: 20 00 00 d0  	adrp	x0, 0x86000 <_ZN12baremetal_pi4main17hd2a33588efc1e3e3E+0x4e0>
   80a44: 22 00 00 b0  	adrp	x2, 0x85000 <_ZN12baremetal_pi4main17hd2a33588efc1e3e3E+0x4e0>
   80a48: 23 00 00 b0  	adrp	x3, 0x85000 <_ZN12baremetal_pi4main17hd2a33588efc1e3e3E+0x4e4>
   80a4c: 00 80 02 91  	add	x0, x0, #160
   80a50: 42 a0 22 91  	add	x2, x2, #2216
   80a54: 63 00 33 91  	add	x3, x3, #3264
   80a58: e1 03 01 91  	add	x1, sp, #64
   80a5c: ae 05 00 94  	bl	0x82114 <_ZN4core6result13unwrap_failed17he5d63f92106ab51dE>
   80a60: 20 00 20 d4  	brk	#0x1
   80a64: 0a 42 96 52  	mov	w10, #45584
   80a68: eb 1f 80 12  	mov	w11, #-256
   80a6c: 0a e0 a7 72  	movk	w10, #16128, lsl #16
   80a70: 4c 00 80 52  	mov	w12, #2
   80a74: e8 03 40 f9  	ldr	x8, [sp]
   80a78: 08 c0 1e d5  	msr	VBAR_EL3, x8
   80a7c: 08 c0 1c d5  	msr	VBAR_EL2, x8
   80a80: 08 c0 18 d5  	msr	VBAR_EL1, x8
   80a84: 08 11 3e d5  	mrs	x8, SCR_EL3
   80a88: 08 09 7f b2  	orr	x8, x8, #0xe
   80a8c: 08 11 1e d5  	msr	SCR_EL3, x8
   80a90: e9 03 1f 2a  	mov	w9, wzr
   80a94: 29 42 1b d5  	msr	DAIF, x9
   80a98: 4b 09 00 b9  	str	w11, [x10, #8]
   80a9c: 4c 01 00 b9  	str	w12, [x10]
   80aa0: 28 42 3b d5  	mrs	x8, DAIF
   80aa4: e8 1b 00 f9  	str	x8, [sp, #48]
   80aa8: e8 03 01 91  	add	x8, sp, #64
   80aac: 21 00 00 d0  	adrp	x1, 0x86000 <_ZN12baremetal_pi4main17hd2a33588efc1e3e3E+0x54c>
   80ab0: f5 c3 00 91  	add	x21, sp, #48
   80ab4: f4 43 00 91  	add	x20, sp, #16
   80ab8: 21 a0 04 91  	add	x1, x1, #296
   80abc: e8 1f 00 f9  	str	x8, [sp, #56]
   80ac0: 28 00 00 b0  	adrp	x8, 0x85000 <_ZN12baremetal_pi4main17hd2a33588efc1e3e3E+0x55c>
   80ac4: 08 41 3b 91  	add	x8, x8, #3792
   80ac8: e0 e3 00 91  	add	x0, sp, #56
   80acc: e2 03 01 91  	add	x2, sp, #64
   80ad0: f5 4f 01 a9  	stp	x21, x19, [sp, #16]
   80ad4: ff 7f 05 a9  	stp	xzr, xzr, [sp, #80]
   80ad8: f6 03 01 91  	add	x22, sp, #64
   80adc: e8 33 04 a9  	stp	x8, x12, [sp, #64]
   80ae0: 28 00 80 52  	mov	w8, #1
   80ae4: f4 23 06 a9  	stp	x20, x8, [sp, #96]
   80ae8: 9d 04 00 94  	bl	0x81d5c <_ZN4core3fmt5write17h63775af3066fbce8E>
   80aec: 40 01 00 34  	cbz	w0, 0x80b14 <_ZN12baremetal_pi4main17hd2a33588efc1e3e3E+0x59c>
   80af0: 20 00 00 d0  	adrp	x0, 0x86000 <_ZN12baremetal_pi4main17hd2a33588efc1e3e3E+0x590>
   80af4: 22 00 00 b0  	adrp	x2, 0x85000 <_ZN12baremetal_pi4main17hd2a33588efc1e3e3E+0x590>
   80af8: 23 00 00 b0  	adrp	x3, 0x85000 <_ZN12baremetal_pi4main17hd2a33588efc1e3e3E+0x594>
   80afc: 00 80 02 91  	add	x0, x0, #160
   80b00: 42 20 35 91  	add	x2, x2, #3400
   80b04: 63 c0 3b 91  	add	x3, x3, #3824
   80b08: e1 03 01 91  	add	x1, sp, #64
   80b0c: 82 05 00 94  	bl	0x82114 <_ZN4core6result13unwrap_failed17he5d63f92106ab51dE>
   80b10: 20 00 20 d4  	brk	#0x1
   80b14: 08 11 3e d5  	mrs	x8, SCR_EL3
   80b18: 29 00 00 b0  	adrp	x9, 0x85000 <_ZN12baremetal_pi4main17hd2a33588efc1e3e3E+0x5b4>
   80b1c: e8 5b 03 a9  	stp	x8, x22, [sp, #48]
   80b20: 48 00 80 52  	mov	w8, #2
   80b24: 29 21 3c 91  	add	x9, x9, #3848
   80b28: 21 00 00 d0  	adrp	x1, 0x86000 <_ZN12baremetal_pi4main17hd2a33588efc1e3e3E+0x5c8>
   80b2c: 21 a0 04 91  	add	x1, x1, #296
   80b30: e0 e3 00 91  	add	x0, sp, #56
   80b34: e2 03 01 91  	add	x2, sp, #64
   80b38: f5 4f 01 a9  	stp	x21, x19, [sp, #16]
   80b3c: e9 23 04 a9  	stp	x9, x8, [sp, #64]
   80b40: 28 00 80 52  	mov	w8, #1
   80b44: ff 7f 05 a9  	stp	xzr, xzr, [sp, #80]
   80b48: f4 23 06 a9  	stp	x20, x8, [sp, #96]
   80b4c: f4 03 01 91  	add	x20, sp, #64
   80b50: 83 04 00 94  	bl	0x81d5c <_ZN4core3fmt5write17h63775af3066fbce8E>
   80b54: 40 01 00 34  	cbz	w0, 0x80b7c <_ZN12baremetal_pi4main17hd2a33588efc1e3e3E+0x604>
   80b58: 20 00 00 d0  	adrp	x0, 0x86000 <_ZN12baremetal_pi4main17hd2a33588efc1e3e3E+0x5f8>
   80b5c: 22 00 00 b0  	adrp	x2, 0x85000 <_ZN12baremetal_pi4main17hd2a33588efc1e3e3E+0x5f8>
   80b60: 23 00 00 b0  	adrp	x3, 0x85000 <_ZN12baremetal_pi4main17hd2a33588efc1e3e3E+0x5fc>
   80b64: 00 80 02 91  	add	x0, x0, #160
   80b68: 42 20 35 91  	add	x2, x2, #3400
   80b6c: 63 a0 3c 91  	add	x3, x3, #3880
   80b70: e1 03 01 91  	add	x1, sp, #64
   80b74: 68 05 00 94  	bl	0x82114 <_ZN4core6result13unwrap_failed17he5d63f92106ab51dE>
   80b78: 20 00 20 d4  	brk	#0x1
   80b7c: 13 01 80 52  	mov	w19, #8
   80b80: 29 00 00 b0  	adrp	x9, 0x85000 <_ZN12baremetal_pi4main17hd2a33588efc1e3e3E+0x61c>
   80b84: 13 e4 a7 72  	movk	w19, #16160, lsl #16
   80b88: 2a 00 00 d0  	adrp	x10, 0x86000 <_ZN12baremetal_pi4main17hd2a33588efc1e3e3E+0x628>
   80b8c: 21 00 00 d0  	adrp	x1, 0x86000 <_ZN12baremetal_pi4main17hd2a33588efc1e3e3E+0x62c>
   80b90: 29 01 3d 91  	add	x9, x9, #3904
   80b94: 4a a1 06 91  	add	x10, x10, #424
   80b98: 2b 00 80 52  	mov	w11, #1
   80b9c: 68 02 40 b9  	ldr	w8, [x19]
   80ba0: 21 a0 04 91  	add	x1, x1, #296
   80ba4: e0 43 00 91  	add	x0, sp, #16
   80ba8: e2 03 01 91  	add	x2, sp, #64
   80bac: 08 71 02 12  	and	w8, w8, #0xc7ffffff
   80bb0: 08 01 05 32  	orr	w8, w8, #0x8000000
   80bb4: 68 02 00 b9  	str	w8, [x19]
   80bb8: f4 0b 00 f9  	str	x20, [sp, #16]
   80bbc: e9 2f 04 a9  	stp	x9, x11, [sp, #64]
   80bc0: ff 7f 05 a9  	stp	xzr, xzr, [sp, #80]
   80bc4: ea 7f 06 a9  	stp	x10, xzr, [sp, #96]
   80bc8: 65 04 00 94  	bl	0x81d5c <_ZN4core3fmt5write17h63775af3066fbce8E>
   80bcc: 40 01 00 36  	tbz	w0, #0, 0x80bf4 <_ZN12baremetal_pi4main17hd2a33588efc1e3e3E+0x67c>
   80bd0: 20 00 00 d0  	adrp	x0, 0x86000 <_ZN12baremetal_pi4main17hd2a33588efc1e3e3E+0x670>
   80bd4: 22 00 00 b0  	adrp	x2, 0x85000 <_ZN12baremetal_pi4main17hd2a33588efc1e3e3E+0x670>
   80bd8: 23 00 00 b0  	adrp	x3, 0x85000 <_ZN12baremetal_pi4main17hd2a33588efc1e3e3E+0x674>
   80bdc: 00 80 02 91  	add	x0, x0, #160
   80be0: 42 20 35 91  	add	x2, x2, #3400
   80be4: 63 40 3d 91  	add	x3, x3, #3920
   80be8: e1 03 01 91  	add	x1, sp, #64
   80bec: 4a 05 00 94  	bl	0x82114 <_ZN4core6result13unwrap_failed17he5d63f92106ab51dE>
   80bf0: 20 00 20 d4  	brk	#0x1
   80bf4: 08 48 88 52  	mov	w8, #16960
   80bf8: 09 00 a4 52  	mov	w9, #536870912
   80bfc: e8 01 a0 72  	movk	w8, #15, lsl #16
   80c00: 69 16 00 b9  	str	w9, [x19, #20]
   80c04: 1f 20 03 d5  	nop
   80c08: 08 05 00 f1  	subs	x8, x8, #1
   80c0c: c1 ff ff 54  	b.ne	0x80c04 <_ZN12baremetal_pi4main17hd2a33588efc1e3e3E+0x68c>
   80c10: 08 20 81 52  	mov	w8, #2304
   80c14: 09 00 a4 52  	mov	w9, #536870912
   80c18: a8 07 a0 72  	movk	w8, #61, lsl #16
   80c1c: 69 22 00 b9  	str	w9, [x19, #32]
   80c20: 1f 20 03 d5  	nop
   80c24: 08 05 00 f1  	subs	x8, x8, #1
   80c28: c1 ff ff 54  	b.ne	0x80c20 <_ZN12baremetal_pi4main17hd2a33588efc1e3e3E+0x6a8>
   80c2c: 94 00 86 52  	mov	w20, #12292
   80c30: f5 03 01 91  	add	x21, sp, #64
   80c34: 17 36 8e 52  	mov	w23, #29104
   80c38: 18 00 00 b0  	adrp	x24, 0x81000 <_ZN12baremetal_pi4main17hd2a33588efc1e3e3E+0x6c4>
   80c3c: 3d 00 00 b0  	adrp	x29, 0x85000 <_ZN12baremetal_pi4main17hd2a33588efc1e3e3E+0x6d8>
   80c40: 33 00 00 d0  	adrp	x19, 0x86000 <_ZN12baremetal_pi4main17hd2a33588efc1e3e3E+0x6e0>
   80c44: 14 e0 a7 72  	movk	w20, #16128, lsl #16
   80c48: b6 42 00 91  	add	x22, x21, #16
   80c4c: 77 01 a0 72  	movk	w23, #11, lsl #16
   80c50: 18 73 3e 91  	add	x24, x24, #3996
   80c54: f9 c3 00 91  	add	x25, sp, #48
   80c58: 5a 00 80 52  	mov	w26, #2
   80c5c: fb 43 00 91  	add	x27, sp, #16
   80c60: 3c 00 80 52  	mov	w28, #1
   80c64: bd a3 3d 91  	add	x29, x29, #3944
   80c68: 73 a2 04 91  	add	x19, x19, #296
   80c6c: 43 05 00 d4  	smc	#0x2a
   80c70: 88 02 40 b9  	ldr	w8, [x20]
   80c74: e0 e3 00 91  	add	x0, sp, #56
   80c78: e2 03 01 91  	add	x2, sp, #64
   80c7c: e1 03 13 aa  	mov	x1, x19
   80c80: 08 01 17 0b  	add	w8, w8, w23
   80c84: e8 33 00 b9  	str	w8, [sp, #48]
   80c88: 88 0e 00 b9  	str	w8, [x20, #12]
   80c8c: f9 63 01 a9  	stp	x25, x24, [sp, #16]
   80c90: f5 f7 03 a9  	stp	x21, x29, [sp, #56]
   80c94: fa 27 00 f9  	str	x26, [sp, #72]
   80c98: df 7e 00 a9  	stp	xzr, xzr, [x22]
   80c9c: fb 73 06 a9  	stp	x27, x28, [sp, #96]
   80ca0: 2f 04 00 94  	bl	0x81d5c <_ZN4core3fmt5write17h63775af3066fbce8E>
   80ca4: 60 00 00 35  	cbnz	w0, 0x80cb0 <_ZN12baremetal_pi4main17hd2a33588efc1e3e3E+0x738>
   80ca8: 7f 20 03 d5  	wfi
   80cac: f1 ff ff 17  	b	0x80c70 <_ZN12baremetal_pi4main17hd2a33588efc1e3e3E+0x6f8>
   80cb0: 20 00 00 d0  	adrp	x0, 0x86000 <_ZN12baremetal_pi4main17hd2a33588efc1e3e3E+0x750>
   80cb4: 22 00 00 b0  	adrp	x2, 0x85000 <_ZN12baremetal_pi4main17hd2a33588efc1e3e3E+0x750>
   80cb8: 23 00 00 b0  	adrp	x3, 0x85000 <_ZN12baremetal_pi4main17hd2a33588efc1e3e3E+0x754>
   80cbc: 00 80 02 91  	add	x0, x0, #160
   80cc0: 42 20 35 91  	add	x2, x2, #3400
   80cc4: 63 20 3e 91  	add	x3, x3, #3976
   80cc8: e1 03 01 91  	add	x1, sp, #64
   80ccc: 12 05 00 94  	bl	0x82114 <_ZN4core6result13unwrap_failed17he5d63f92106ab51dE>
   80cd0: 20 00 20 d4  	brk	#0x1
   80cd4: 00 00 00 00  	udf	#0

0000000000080cd8 <_ZN4core3fmt3num50_$LT$impl$u20$core..fmt..Debug$u20$for$u20$u64$GT$3fmt17hc6ba90be7ac70288E>:
   80cd8: fe 0f 1e f8  	str	x30, [sp, #-32]!
   80cdc: f4 4f 01 a9  	stp	x20, x19, [sp, #16]
   80ce0: f4 03 00 aa  	mov	x20, x0
   80ce4: e0 03 01 aa  	mov	x0, x1
   80ce8: f3 03 01 aa  	mov	x19, x1
   80cec: f9 09 00 94  	bl	0x834d0 <_ZN4core3fmt9Formatter15debug_lower_hex17h0b7f072683990bf5E>
   80cf0: c0 00 00 36  	tbz	w0, #0, 0x80d08 <_ZN4core3fmt3num50_$LT$impl$u20$core..fmt..Debug$u20$for$u20$u64$GT$3fmt17hc6ba90be7ac70288E+0x30>
   80cf4: e0 03 14 aa  	mov	x0, x20
   80cf8: e1 03 13 aa  	mov	x1, x19
   80cfc: f4 4f 41 a9  	ldp	x20, x19, [sp, #16]
   80d00: fe 07 42 f8  	ldr	x30, [sp], #32
   80d04: 0e 0d 00 14  	b	0x8413c <_ZN4core3fmt3num53_$LT$impl$u20$core..fmt..LowerHex$u20$for$u20$i64$GT$3fmt17h89727d655d417749E>
   80d08: e0 03 13 aa  	mov	x0, x19
   80d0c: f4 09 00 94  	bl	0x834dc <_ZN4core3fmt9Formatter15debug_upper_hex17hc999bac86c60dde4E>
   80d10: c0 00 00 36  	tbz	w0, #0, 0x80d28 <_ZN4core3fmt3num50_$LT$impl$u20$core..fmt..Debug$u20$for$u20$u64$GT$3fmt17hc6ba90be7ac70288E+0x50>
   80d14: e0 03 14 aa  	mov	x0, x20
   80d18: e1 03 13 aa  	mov	x1, x19
   80d1c: f4 4f 41 a9  	ldp	x20, x19, [sp, #16]
   80d20: fe 07 42 f8  	ldr	x30, [sp], #32
   80d24: 2d 0d 00 14  	b	0x841d8 <_ZN4core3fmt3num53_$LT$impl$u20$core..fmt..UpperHex$u20$for$u20$i64$GT$3fmt17h0da107dab2280b2bE>
   80d28: e0 03 14 aa  	mov	x0, x20
   80d2c: e1 03 13 aa  	mov	x1, x19
   80d30: f4 4f 41 a9  	ldp	x20, x19, [sp, #16]
   80d34: fe 07 42 f8  	ldr	x30, [sp], #32
   80d38: 8b 01 00 14  	b	0x81364 <_ZN4core3fmt3num3imp52_$LT$impl$u20$core..fmt..Display$u20$for$u20$u64$GT$3fmt17h3635720e402b4b05E>
   80d3c: 00 00 00 00  	udf	#0

0000000000080d40 <_ZN42_$LT$$RF$T$u20$as$u20$core..fmt..Debug$GT$3fmt17hb64362cde680909dE>:
   80d40: 00 00 40 f9  	ldr	x0, [x0]
   80d44: bc 0b 00 14  	b	0x83c34 <_ZN71_$LT$core..panic..panic_info..PanicInfo$u20$as$u20$core..fmt..Debug$GT$3fmt17ha3e0b3cc45a627c8E>

0000000000080d48 <_ZN54_$LT$$BP$const$u20$T$u20$as$u20$core..fmt..Pointer$GT$3fmt17h136b114b37e32b82E>:
   80d48: ff 43 01 d1  	sub	sp, sp, #80
   80d4c: fe 5f 02 a9  	stp	x30, x23, [sp, #32]
   80d50: f6 57 03 a9  	stp	x22, x21, [sp, #48]
   80d54: f4 4f 04 a9  	stp	x20, x19, [sp, #64]
   80d58: 35 58 40 a9  	ldp	x21, x22, [x1]
   80d5c: f4 03 00 aa  	mov	x20, x0
   80d60: e0 03 01 aa  	mov	x0, x1
   80d64: 37 30 40 b9  	ldr	w23, [x1, #48]
   80d68: f3 03 01 aa  	mov	x19, x1
   80d6c: d6 09 00 94  	bl	0x834c4 <_ZN4core3fmt9Formatter9alternate17h5a07b4bd7e02e2b8E>
   80d70: e8 03 17 2a  	mov	w8, w23
   80d74: 40 01 00 36  	tbz	w0, #0, 0x80d9c <_ZN54_$LT$$BP$const$u20$T$u20$as$u20$core..fmt..Pointer$GT$3fmt17h136b114b37e32b82E+0x54>
   80d78: e8 02 1d 32  	orr	w8, w23, #0x8
   80d7c: 15 01 00 b5  	cbnz	x21, 0x80d9c <_ZN54_$LT$$BP$const$u20$T$u20$as$u20$core..fmt..Pointer$GT$3fmt17h136b114b37e32b82E+0x54>
   80d80: 29 00 00 b0  	adrp	x9, 0x85000 <_ZN54_$LT$$BP$const$u20$T$u20$as$u20$core..fmt..Pointer$GT$3fmt17h136b114b37e32b82E+0x4c>
   80d84: 20 05 c2 3d  	ldr	q0, [x9, #2064]
   80d88: e0 03 80 3d  	str	q0, [sp]
   80d8c: e9 07 40 f9  	ldr	x9, [sp, #8]
   80d90: 69 06 00 f9  	str	x9, [x19, #8]
   80d94: e9 03 40 f9  	ldr	x9, [sp]
   80d98: 69 02 00 f9  	str	x9, [x19]
   80d9c: 89 02 40 f9  	ldr	x9, [x20]
   80da0: 08 01 1e 32  	orr	w8, w8, #0x4
   80da4: e0 63 00 91  	add	x0, sp, #24
   80da8: e1 03 13 aa  	mov	x1, x19
   80dac: 68 32 00 b9  	str	w8, [x19, #48]
   80db0: e9 0f 00 f9  	str	x9, [sp, #24]
   80db4: e2 0c 00 94  	bl	0x8413c <_ZN4core3fmt3num53_$LT$impl$u20$core..fmt..LowerHex$u20$for$u20$i64$GT$3fmt17h89727d655d417749E>
   80db8: 75 5a 00 a9  	stp	x21, x22, [x19]
   80dbc: 77 32 00 b9  	str	w23, [x19, #48]
   80dc0: f4 4f 44 a9  	ldp	x20, x19, [sp, #64]
   80dc4: f6 57 43 a9  	ldp	x22, x21, [sp, #48]
   80dc8: fe 5f 42 a9  	ldp	x30, x23, [sp, #32]
   80dcc: ff 43 01 91  	add	sp, sp, #80
   80dd0: c0 03 5f d6  	ret
   80dd4: 00 00 00 00  	udf	#0

0000000000080dd8 <_ZN70_$LT$baremetal_pi..cpu..ExceptionLevel$u20$as$u20$core..fmt..Debug$GT$3fmt17hd48fa037d75651a4E>:
   80dd8: ff c3 00 d1  	sub	sp, sp, #48
   80ddc: fe 13 00 f9  	str	x30, [sp, #32]
   80de0: 08 00 40 39  	ldrb	w8, [x0]
   80de4: 29 00 00 b0  	adrp	x9, 0x85000 <_ZN70_$LT$baremetal_pi..cpu..ExceptionLevel$u20$as$u20$core..fmt..Debug$GT$3fmt17hd48fa037d75651a4E+0x20>
   80de8: 29 c1 20 91  	add	x9, x9, #2096
   80dec: 8a 00 00 10  	adr	x10, #16
   80df0: 2b 69 68 38  	ldrb	w11, [x9, x8]
   80df4: 4a 09 0b 8b  	add	x10, x10, x11, lsl #2
   80df8: 40 01 1f d6  	br	x10
   80dfc: 22 00 00 d0  	adrp	x2, 0x86000 <_ZN70_$LT$baremetal_pi..cpu..ExceptionLevel$u20$as$u20$core..fmt..Debug$GT$3fmt17hd48fa037d75651a4E+0x3c>
   80e00: 42 14 01 91  	add	x2, x2, #69
   80e04: 09 00 00 14  	b	0x80e28 <_ZN70_$LT$baremetal_pi..cpu..ExceptionLevel$u20$as$u20$core..fmt..Debug$GT$3fmt17hd48fa037d75651a4E+0x50>
   80e08: 22 00 00 d0  	adrp	x2, 0x86000 <_ZN70_$LT$baremetal_pi..cpu..ExceptionLevel$u20$as$u20$core..fmt..Debug$GT$3fmt17hd48fa037d75651a4E+0x48>
   80e0c: 42 2c 01 91  	add	x2, x2, #75
   80e10: 06 00 00 14  	b	0x80e28 <_ZN70_$LT$baremetal_pi..cpu..ExceptionLevel$u20$as$u20$core..fmt..Debug$GT$3fmt17hd48fa037d75651a4E+0x50>
   80e14: 22 00 00 d0  	adrp	x2, 0x86000 <_ZN70_$LT$baremetal_pi..cpu..ExceptionLevel$u20$as$u20$core..fmt..Debug$GT$3fmt17hd48fa037d75651a4E+0x54>
   80e18: 42 38 01 91  	add	x2, x2, #78
   80e1c: 03 00 00 14  	b	0x80e28 <_ZN70_$LT$baremetal_pi..cpu..ExceptionLevel$u20$as$u20$core..fmt..Debug$GT$3fmt17hd48fa037d75651a4E+0x50>
   80e20: 22 00 00 d0  	adrp	x2, 0x86000 <_ZN70_$LT$baremetal_pi..cpu..ExceptionLevel$u20$as$u20$core..fmt..Debug$GT$3fmt17hd48fa037d75651a4E+0x60>
   80e24: 42 20 01 91  	add	x2, x2, #72
   80e28: e0 23 00 91  	add	x0, sp, #8
   80e2c: af 09 00 94  	bl	0x834e8 <_ZN4core3fmt9Formatter11debug_tuple17h1ba458f6981b4e48E>
   80e30: e0 23 00 91  	add	x0, sp, #8
   80e34: 7e 09 00 94  	bl	0x8342c <_ZN4core3fmt8builders10DebugTuple6finish17ha0a3c8a734c73285E>
   80e38: fe 13 40 f9  	ldr	x30, [sp, #32]
   80e3c: ff c3 00 91  	add	sp, sp, #48
   80e40: c0 03 5f d6  	ret
   80e44: 00 00 00 00  	udf	#0

0000000000080e48 <rust_begin_unwind>:
   80e48: ff 83 01 d1  	sub	sp, sp, #96
   80e4c: fe 4f 05 a9  	stp	x30, x19, [sp, #80]
   80e50: e0 03 00 f9  	str	x0, [sp]
   80e54: c0 01 80 52  	mov	w0, #14
   80e58: 13 0d 8a 52  	mov	w19, #20584
   80e5c: 33 e4 a7 72  	movk	w19, #16161, lsl #16
   80e60: fc 00 00 94  	bl	0x81250 <_ZN12baremetal_pi4gpio4Gpio9configure17hb1583b5e8840e111E>
   80e64: e0 01 80 52  	mov	w0, #15
   80e68: fa 00 00 94  	bl	0x81250 <_ZN12baremetal_pi4gpio4Gpio9configure17hb1583b5e8840e111E>
   80e6c: 69 02 40 b9  	ldr	w9, [x19]
   80e70: c8 21 80 52  	mov	w8, #270
   80e74: 6a 00 80 52  	mov	w10, #3
   80e78: 09 3d 00 33  	bfxil	w9, w8, #0, #16
   80e7c: c8 12 80 52  	mov	w8, #150
   80e80: 69 02 00 b9  	str	w9, [x19]
   80e84: 6a 42 1e b8  	stur	w10, [x19, #-28]
   80e88: 1f 20 03 d5  	nop
   80e8c: 08 05 00 f1  	subs	x8, x8, #1
   80e90: c1 ff ff 54  	b.ne	0x80e88 <rust_begin_unwind+0x40>
   80e94: 68 00 80 52  	mov	w8, #3
   80e98: e9 03 00 91  	mov	x9, sp
   80e9c: ea 83 00 91  	add	x10, sp, #32
   80ea0: 21 00 00 d0  	adrp	x1, 0x86000 <rust_begin_unwind+0x70>
   80ea4: 21 a0 04 91  	add	x1, x1, #296
   80ea8: e0 63 00 91  	add	x0, sp, #24
   80eac: 68 82 1f b8  	stur	w8, [x19, #-8]
   80eb0: 08 00 00 90  	adrp	x8, 0x80000 <rust_begin_unwind+0x68>
   80eb4: 08 01 35 91  	add	x8, x8, #3392
   80eb8: e2 83 00 91  	add	x2, sp, #32
   80ebc: e9 a3 00 a9  	stp	x9, x8, [sp, #8]
   80ec0: 28 00 00 d0  	adrp	x8, 0x86000 <rust_begin_unwind+0x90>
   80ec4: 08 61 01 91  	add	x8, x8, #88
   80ec8: 29 00 80 52  	mov	w9, #1
   80ecc: ea a3 01 a9  	stp	x10, x8, [sp, #24]
   80ed0: 2a 00 00 d0  	adrp	x10, 0x86000 <rust_begin_unwind+0xa0>
   80ed4: 4a a1 01 91  	add	x10, x10, #104
   80ed8: e8 23 00 91  	add	x8, sp, #8
   80edc: e9 27 00 f9  	str	x9, [sp, #72]
   80ee0: e9 ab 02 a9  	stp	x9, x10, [sp, #40]
   80ee4: e9 a3 03 a9  	stp	x9, x8, [sp, #56]
   80ee8: 9d 03 00 94  	bl	0x81d5c <_ZN4core3fmt5write17h63775af3066fbce8E>
   80eec: 60 00 00 35  	cbnz	w0, 0x80ef8 <rust_begin_unwind+0xb0>
   80ef0: 5f 20 03 d5  	wfe
   80ef4: ff ff ff 17  	b	0x80ef0 <rust_begin_unwind+0xa8>
   80ef8: 20 00 00 d0  	adrp	x0, 0x86000 <rust_begin_unwind+0xc8>
   80efc: 22 00 00 d0  	adrp	x2, 0x86000 <rust_begin_unwind+0xcc>
   80f00: 23 00 00 d0  	adrp	x3, 0x86000 <rust_begin_unwind+0xd0>
   80f04: 00 80 02 91  	add	x0, x0, #160
   80f08: 42 40 03 91  	add	x2, x2, #208
   80f0c: 63 c0 03 91  	add	x3, x3, #240
   80f10: e1 83 00 91  	add	x1, sp, #32
   80f14: 80 04 00 94  	bl	0x82114 <_ZN4core6result13unwrap_failed17he5d63f92106ab51dE>
   80f18: 20 00 20 d4  	brk	#0x1
   80f1c: 00 00 00 00  	udf	#0

0000000000080f20 <rust_entry>:
   80f20: fe 0f 1f f8  	str	x30, [sp, #-16]!
   80f24: 28 00 00 f0  	adrp	x8, 0x87000 <rust_entry+0x20>
   80f28: 20 00 00 f0  	adrp	x0, 0x87000 <rust_entry+0x24>
   80f2c: 08 81 03 91  	add	x8, x8, #224
   80f30: 00 80 03 91  	add	x0, x0, #224
   80f34: 02 00 08 eb  	subs	x2, x0, x8
   80f38: 60 00 00 54  	b.eq	0x80f44 <rust_entry+0x24>
   80f3c: e1 03 1f 2a  	mov	w1, wzr
   80f40: 07 0e 00 94  	bl	0x8475c <memset>
   80f44: 8d fd ff 97  	bl	0x80578 <_ZN12baremetal_pi4main17hd2a33588efc1e3e3E>
   80f48: 20 00 20 d4  	brk	#0x1
   80f4c: 00 00 00 00  	udf	#0

0000000000080f50 <_ZN50_$LT$$RF$mut$u20$W$u20$as$u20$core..fmt..Write$GT$9write_str17h1d0d0907b98d4d3aE>:
   80f50: fe 0f 1f f8  	str	x30, [sp, #-16]!
   80f54: e0 03 01 aa  	mov	x0, x1
   80f58: e1 03 02 aa  	mov	x1, x2
   80f5c: 45 00 00 94  	bl	0x81070 <_ZN62_$LT$baremetal_pi..uart..Uart1$u20$as$u20$core..fmt..Write$GT$9write_str17hef22804259f41a1dE>
   80f60: e0 03 1f 2a  	mov	w0, wzr
   80f64: fe 07 41 f8  	ldr	x30, [sp], #16
   80f68: c0 03 5f d6  	ret
   80f6c: 00 00 00 00  	udf	#0

0000000000080f70 <_ZN50_$LT$$RF$mut$u20$W$u20$as$u20$core..fmt..Write$GT$10write_char17hd82ef601b001f672E>:
   80f70: fe 0f 1f f8  	str	x30, [sp, #-16]!
   80f74: 3f 00 02 71  	cmp	w1, #128
   80f78: ff 0f 00 b9  	str	wzr, [sp, #12]
   80f7c: 82 00 00 54  	b.hs	0x80f8c <_ZN50_$LT$$RF$mut$u20$W$u20$as$u20$core..fmt..Write$GT$10write_char17hd82ef601b001f672E+0x1c>
   80f80: 28 00 80 52  	mov	w8, #1
   80f84: e1 33 00 39  	strb	w1, [sp, #12]
   80f88: 25 00 00 14  	b	0x8101c <_ZN50_$LT$$RF$mut$u20$W$u20$as$u20$core..fmt..Write$GT$10write_char17hd82ef601b001f672E+0xac>
   80f8c: 3f 00 20 71  	cmp	w1, #2048
   80f90: 22 01 00 54  	b.hs	0x80fb4 <_ZN50_$LT$$RF$mut$u20$W$u20$as$u20$core..fmt..Write$GT$10write_char17hd82ef601b001f672E+0x44>
   80f94: 28 7c 06 53  	lsr	w8, w1, #6
   80f98: 09 05 1a 32  	orr	w9, w8, #0xc0
   80f9c: 0a 10 80 52  	mov	w10, #128
   80fa0: 48 00 80 52  	mov	w8, #2
   80fa4: 2a 14 00 33  	bfxil	w10, w1, #0, #6
   80fa8: e9 33 00 39  	strb	w9, [sp, #12]
   80fac: ea 37 00 39  	strb	w10, [sp, #13]
   80fb0: 1b 00 00 14  	b	0x8101c <_ZN50_$LT$$RF$mut$u20$W$u20$as$u20$core..fmt..Write$GT$10write_char17hd82ef601b001f672E+0xac>
   80fb4: 3f 40 40 71  	cmp	w1, #16, lsl #12
   80fb8: 82 01 00 54  	b.hs	0x80fe8 <_ZN50_$LT$$RF$mut$u20$W$u20$as$u20$core..fmt..Write$GT$10write_char17hd82ef601b001f672E+0x78>
   80fbc: 28 7c 0c 53  	lsr	w8, w1, #12
   80fc0: 09 09 1b 32  	orr	w9, w8, #0xe0
   80fc4: 0a 10 80 52  	mov	w10, #128
   80fc8: 0b 10 80 52  	mov	w11, #128
   80fcc: 2b 2c 06 33  	bfxil	w11, w1, #6, #6
   80fd0: 2a 14 00 33  	bfxil	w10, w1, #0, #6
   80fd4: 68 00 80 52  	mov	w8, #3
   80fd8: e9 33 00 39  	strb	w9, [sp, #12]
   80fdc: eb 37 00 39  	strb	w11, [sp, #13]
   80fe0: ea 3b 00 39  	strb	w10, [sp, #14]
   80fe4: 0e 00 00 14  	b	0x8101c <_ZN50_$LT$$RF$mut$u20$W$u20$as$u20$core..fmt..Write$GT$10write_char17hd82ef601b001f672E+0xac>
   80fe8: 28 7c 12 53  	lsr	w8, w1, #18
   80fec: 09 10 80 52  	mov	w9, #128
   80ff0: 08 0d 1c 32  	orr	w8, w8, #0xf0
   80ff4: 0a 10 80 52  	mov	w10, #128
   80ff8: 0b 10 80 52  	mov	w11, #128
   80ffc: 29 44 0c 33  	bfxil	w9, w1, #12, #6
   81000: 2b 2c 06 33  	bfxil	w11, w1, #6, #6
   81004: 2a 14 00 33  	bfxil	w10, w1, #0, #6
   81008: e8 33 00 39  	strb	w8, [sp, #12]
   8100c: 88 00 80 52  	mov	w8, #4
   81010: e9 37 00 39  	strb	w9, [sp, #13]
   81014: eb 3b 00 39  	strb	w11, [sp, #14]
   81018: ea 3f 00 39  	strb	w10, [sp, #15]
   8101c: e0 33 00 91  	add	x0, sp, #12
   81020: e1 03 08 aa  	mov	x1, x8
   81024: 13 00 00 94  	bl	0x81070 <_ZN62_$LT$baremetal_pi..uart..Uart1$u20$as$u20$core..fmt..Write$GT$9write_str17hef22804259f41a1dE>
   81028: e0 03 1f 2a  	mov	w0, wzr
   8102c: fe 07 41 f8  	ldr	x30, [sp], #16
   81030: c0 03 5f d6  	ret
   81034: 00 00 00 00  	udf	#0

0000000000081038 <_ZN50_$LT$$RF$mut$u20$W$u20$as$u20$core..fmt..Write$GT$9write_fmt17h3cbd3316831addb5E>:
   81038: ff 03 01 d1  	sub	sp, sp, #64
   8103c: 08 00 40 f9  	ldr	x8, [x0]
   81040: e0 03 00 91  	mov	x0, sp
   81044: 02 06 80 52  	mov	w2, #48
   81048: fe 23 03 a9  	stp	x30, x8, [sp, #48]
   8104c: f1 0c 00 94  	bl	0x84410 <memcpy>
   81050: 21 00 00 b0  	adrp	x1, 0x86000 <_ZN50_$LT$$RF$mut$u20$W$u20$as$u20$core..fmt..Write$GT$9write_fmt17h3cbd3316831addb5E+0x2c>
   81054: e0 e3 00 91  	add	x0, sp, #56
   81058: 21 a0 04 91  	add	x1, x1, #296
   8105c: e2 03 00 91  	mov	x2, sp
   81060: 3f 03 00 94  	bl	0x81d5c <_ZN4core3fmt5write17h63775af3066fbce8E>
   81064: fe 1b 40 f9  	ldr	x30, [sp, #48]
   81068: ff 03 01 91  	add	sp, sp, #64
   8106c: c0 03 5f d6  	ret

0000000000081070 <_ZN62_$LT$baremetal_pi..uart..Uart1$u20$as$u20$core..fmt..Write$GT$9write_str17hef22804259f41a1dE>:
   81070: e8 03 00 aa  	mov	x8, x0
   81074: 8a 0c 8a 52  	mov	w10, #20580
   81078: 2d 00 00 b0  	adrp	x13, 0x86000 <_ZN62_$LT$baremetal_pi..uart..Uart1$u20$as$u20$core..fmt..Write$GT$9write_str17hef22804259f41a1dE+0x1c>
   8107c: e0 03 1f aa  	mov	x0, xzr
   81080: ef 03 1f aa  	mov	x15, xzr
   81084: e9 03 1f aa  	mov	x9, xzr
   81088: 2a e4 a7 72  	movk	w10, #16161, lsl #16
   8108c: 0b 01 01 8b  	add	x11, x8, x1
   81090: 6c 00 80 52  	mov	w12, #3
   81094: ee 03 08 aa  	mov	x14, x8
   81098: ad 61 05 91  	add	x13, x13, #344
   8109c: 29 01 00 b5  	cbnz	x9, 0x810c0 <_ZN62_$LT$baremetal_pi..uart..Uart1$u20$as$u20$core..fmt..Write$GT$9write_str17hef22804259f41a1dE+0x50>
   810a0: 13 00 00 14  	b	0x810ec <_ZN62_$LT$baremetal_pi..uart..Uart1$u20$as$u20$core..fmt..Write$GT$9write_str17hef22804259f41a1dE+0x7c>
   810a4: 51 00 80 52  	mov	w17, #2
   810a8: e9 03 0d aa  	mov	x9, x13
   810ac: 0e 00 0e cb  	sub	x14, x0, x14
   810b0: c0 01 0f 8b  	add	x0, x14, x15
   810b4: 2f 01 11 8b  	add	x15, x9, x17
   810b8: ee 03 10 aa  	mov	x14, x16
   810bc: 89 01 00 b4  	cbz	x9, 0x810ec <_ZN62_$LT$baremetal_pi..uart..Uart1$u20$as$u20$core..fmt..Write$GT$9write_str17hef22804259f41a1dE+0x7c>
   810c0: 3f 01 0f eb  	cmp	x9, x15
   810c4: 61 00 00 54  	b.ne	0x810d0 <_ZN62_$LT$baremetal_pi..uart..Uart1$u20$as$u20$core..fmt..Write$GT$9write_str17hef22804259f41a1dE+0x60>
   810c8: 09 00 00 14  	b	0x810ec <_ZN62_$LT$baremetal_pi..uart..Uart1$u20$as$u20$core..fmt..Write$GT$9write_str17hef22804259f41a1dE+0x7c>
   810cc: df 3f 03 d5  	isb
   810d0: 50 01 40 b9  	ldr	w16, [x10]
   810d4: d0 ff 0f 36  	tbz	w16, #1, 0x810cc <_ZN62_$LT$baremetal_pi..uart..Uart1$u20$as$u20$core..fmt..Write$GT$9write_str17hef22804259f41a1dE+0x5c>
   810d8: 31 01 40 39  	ldrb	w17, [x9]
   810dc: 30 05 00 91  	add	x16, x9, #1
   810e0: e9 03 10 aa  	mov	x9, x16
   810e4: 51 c1 1d b8  	stur	w17, [x10, #-36]
   810e8: c9 fe ff b5  	cbnz	x9, 0x810c0 <_ZN62_$LT$baremetal_pi..uart..Uart1$u20$as$u20$core..fmt..Write$GT$9write_str17hef22804259f41a1dE+0x50>
   810ec: 6e 09 00 b4  	cbz	x14, 0x81218 <_ZN62_$LT$baremetal_pi..uart..Uart1$u20$as$u20$core..fmt..Write$GT$9write_str17hef22804259f41a1dE+0x1a8>
   810f0: 7f 01 0e eb  	cmp	x11, x14
   810f4: 20 09 00 54  	b.eq	0x81218 <_ZN62_$LT$baremetal_pi..uart..Uart1$u20$as$u20$core..fmt..Write$GT$9write_str17hef22804259f41a1dE+0x1a8>
   810f8: ef 03 0e aa  	mov	x15, x14
   810fc: e9 15 c0 38  	ldrsb	w9, [x15], #1
   81100: 31 1d 00 12  	and	w17, w9, #0xff
   81104: 89 00 f8 37  	tbnz	w9, #31, 0x81114 <_ZN62_$LT$baremetal_pi..uart..Uart1$u20$as$u20$core..fmt..Write$GT$9write_str17hef22804259f41a1dE+0xa4>
   81108: f0 03 0f aa  	mov	x16, x15
   8110c: e9 03 11 2a  	mov	w9, w17
   81110: 2f 00 00 14  	b	0x811cc <_ZN62_$LT$baremetal_pi..uart..Uart1$u20$as$u20$core..fmt..Write$GT$9write_str17hef22804259f41a1dE+0x15c>
   81114: ff 01 0b eb  	cmp	x15, x11
   81118: c0 02 00 54  	b.eq	0x81170 <_ZN62_$LT$baremetal_pi..uart..Uart1$u20$as$u20$core..fmt..Write$GT$9write_str17hef22804259f41a1dE+0x100>
   8111c: c9 05 40 39  	ldrb	w9, [x14, #1]
   81120: d0 09 00 91  	add	x16, x14, #2
   81124: ef 03 10 aa  	mov	x15, x16
   81128: 29 15 00 12  	and	w9, w9, #0x3f
   8112c: 32 12 00 12  	and	w18, w17, #0x1f
   81130: 3f 7e 03 71  	cmp	w17, #223
   81134: a9 02 00 54  	b.ls	0x81188 <_ZN62_$LT$baremetal_pi..uart..Uart1$u20$as$u20$core..fmt..Write$GT$9write_str17hef22804259f41a1dE+0x118>
   81138: ff 01 0b eb  	cmp	x15, x11
   8113c: a0 02 00 54  	b.eq	0x81190 <_ZN62_$LT$baremetal_pi..uart..Uart1$u20$as$u20$core..fmt..Write$GT$9write_str17hef22804259f41a1dE+0x120>
   81140: e2 15 40 38  	ldrb	w2, [x15], #1
   81144: f0 03 0f aa  	mov	x16, x15
   81148: 42 14 00 12  	and	w2, w2, #0x3f
   8114c: 22 15 1a 33  	bfi	w2, w9, #6, #6
   81150: 3f c2 03 71  	cmp	w17, #240
   81154: 83 02 00 54  	b.lo	0x811a4 <_ZN62_$LT$baremetal_pi..uart..Uart1$u20$as$u20$core..fmt..Write$GT$9write_str17hef22804259f41a1dE+0x134>
   81158: ff 01 0b eb  	cmp	x15, x11
   8115c: a0 02 00 54  	b.eq	0x811b0 <_ZN62_$LT$baremetal_pi..uart..Uart1$u20$as$u20$core..fmt..Write$GT$9write_str17hef22804259f41a1dE+0x140>
   81160: e9 15 40 38  	ldrb	w9, [x15], #1
   81164: f0 03 0f aa  	mov	x16, x15
   81168: 29 15 00 12  	and	w9, w9, #0x3f
   8116c: 13 00 00 14  	b	0x811b8 <_ZN62_$LT$baremetal_pi..uart..Uart1$u20$as$u20$core..fmt..Write$GT$9write_str17hef22804259f41a1dE+0x148>
   81170: e9 03 1f 2a  	mov	w9, wzr
   81174: f0 03 0f aa  	mov	x16, x15
   81178: ef 03 0b aa  	mov	x15, x11
   8117c: 32 12 00 12  	and	w18, w17, #0x1f
   81180: 3f 7e 03 71  	cmp	w17, #223
   81184: a8 fd ff 54  	b.hi	0x81138 <_ZN62_$LT$baremetal_pi..uart..Uart1$u20$as$u20$core..fmt..Write$GT$9write_str17hef22804259f41a1dE+0xc8>
   81188: 49 12 1a 33  	bfi	w9, w18, #6, #5
   8118c: 10 00 00 14  	b	0x811cc <_ZN62_$LT$baremetal_pi..uart..Uart1$u20$as$u20$core..fmt..Write$GT$9write_str17hef22804259f41a1dE+0x15c>
   81190: e2 03 1f 2a  	mov	w2, wzr
   81194: ef 03 0b aa  	mov	x15, x11
   81198: 22 15 1a 33  	bfi	w2, w9, #6, #6
   8119c: 3f c2 03 71  	cmp	w17, #240
   811a0: c2 fd ff 54  	b.hs	0x81158 <_ZN62_$LT$baremetal_pi..uart..Uart1$u20$as$u20$core..fmt..Write$GT$9write_str17hef22804259f41a1dE+0xe8>
   811a4: 42 12 14 33  	bfi	w2, w18, #12, #5
   811a8: e9 03 02 2a  	mov	w9, w2
   811ac: 08 00 00 14  	b	0x811cc <_ZN62_$LT$baremetal_pi..uart..Uart1$u20$as$u20$core..fmt..Write$GT$9write_str17hef22804259f41a1dE+0x15c>
   811b0: e9 03 1f 2a  	mov	w9, wzr
   811b4: ef 03 0b aa  	mov	x15, x11
   811b8: 51 0a 0e 53  	ubfiz	w17, w18, #18, #3
   811bc: 51 2c 1a 33  	bfi	w17, w2, #6, #12
   811c0: 29 02 09 2a  	orr	w9, w17, w9
   811c4: 3f 41 44 71  	cmp	w9, #272, lsl #12
   811c8: 80 02 00 54  	b.eq	0x81218 <_ZN62_$LT$baremetal_pi..uart..Uart1$u20$as$u20$core..fmt..Write$GT$9write_str17hef22804259f41a1dE+0x1a8>
   811cc: 3f 29 00 71  	cmp	w9, #10
   811d0: a0 f6 ff 54  	b.eq	0x810a4 <_ZN62_$LT$baremetal_pi..uart..Uart1$u20$as$u20$core..fmt..Write$GT$9write_str17hef22804259f41a1dE+0x34>
   811d4: 3f 01 02 71  	cmp	w9, #128
   811d8: 62 00 00 54  	b.hs	0x811e4 <_ZN62_$LT$baremetal_pi..uart..Uart1$u20$as$u20$core..fmt..Write$GT$9write_str17hef22804259f41a1dE+0x174>
   811dc: 31 00 80 52  	mov	w17, #1
   811e0: 07 00 00 14  	b	0x811fc <_ZN62_$LT$baremetal_pi..uart..Uart1$u20$as$u20$core..fmt..Write$GT$9write_str17hef22804259f41a1dE+0x18c>
   811e4: 3f 01 20 71  	cmp	w9, #2048
   811e8: 62 00 00 54  	b.hs	0x811f4 <_ZN62_$LT$baremetal_pi..uart..Uart1$u20$as$u20$core..fmt..Write$GT$9write_str17hef22804259f41a1dE+0x184>
   811ec: 51 00 80 52  	mov	w17, #2
   811f0: 03 00 00 14  	b	0x811fc <_ZN62_$LT$baremetal_pi..uart..Uart1$u20$as$u20$core..fmt..Write$GT$9write_str17hef22804259f41a1dE+0x18c>
   811f4: 3f 41 40 71  	cmp	w9, #16, lsl #12
   811f8: 91 35 8c 9a  	cinc	x17, x12, hs
   811fc: 29 02 00 ab  	adds	x9, x17, x0
   81200: c2 01 00 54  	b.hs	0x81238 <_ZN62_$LT$baremetal_pi..uart..Uart1$u20$as$u20$core..fmt..Write$GT$9write_str17hef22804259f41a1dE+0x1c8>
   81204: 3f 01 01 eb  	cmp	x9, x1
   81208: e8 00 00 54  	b.hi	0x81224 <_ZN62_$LT$baremetal_pi..uart..Uart1$u20$as$u20$core..fmt..Write$GT$9write_str17hef22804259f41a1dE+0x1b4>
   8120c: 09 01 00 8b  	add	x9, x8, x0
   81210: a7 ff ff 17  	b	0x810ac <_ZN62_$LT$baremetal_pi..uart..Uart1$u20$as$u20$core..fmt..Write$GT$9write_str17hef22804259f41a1dE+0x3c>
   81214: df 3f 03 d5  	isb
   81218: 48 01 40 b9  	ldr	w8, [x10]
   8121c: c8 ff 1f 36  	tbz	w8, #3, 0x81214 <_ZN62_$LT$baremetal_pi..uart..Uart1$u20$as$u20$core..fmt..Write$GT$9write_str17hef22804259f41a1dE+0x1a4>
   81220: c0 03 5f d6  	ret
   81224: 22 00 00 b0  	adrp	x2, 0x86000 <_ZN62_$LT$baremetal_pi..uart..Uart1$u20$as$u20$core..fmt..Write$GT$9write_str17hef22804259f41a1dE+0x1c8>
   81228: e0 03 09 aa  	mov	x0, x9
   8122c: 42 80 05 91  	add	x2, x2, #352
   81230: a0 01 00 94  	bl	0x818b0 <_ZN4core5slice5index24slice_end_index_len_fail17hfcb16d41a5d796d5E>
   81234: 20 00 20 d4  	brk	#0x1
   81238: 22 00 00 b0  	adrp	x2, 0x86000 <_ZN62_$LT$baremetal_pi..uart..Uart1$u20$as$u20$core..fmt..Write$GT$9write_str17hef22804259f41a1dE+0x1dc>
   8123c: e1 03 09 aa  	mov	x1, x9
   81240: 42 80 05 91  	add	x2, x2, #352
   81244: 44 03 00 94  	bl	0x81f54 <_ZN4core5slice5index22slice_index_order_fail17h806852bf6aeb5b48E>
   81248: 20 00 20 d4  	brk	#0x1
   8124c: 00 00 00 00  	udf	#0

0000000000081250 <_ZN12baremetal_pi4gpio4Gpio9configure17hb1583b5e8840e111E>:
   81250: a8 99 99 52  	mov	w8, #52429
   81254: 09 1c 00 12  	and	w9, w0, #0xff
   81258: 88 99 b9 72  	movk	w8, #52428, lsl #16
   8125c: 2a 00 80 52  	mov	w10, #1
   81260: 4b 00 80 52  	mov	w11, #2
   81264: 28 7d a8 9b  	umull	x8, w9, w8
   81268: 29 01 80 12  	mov	w9, #-10
   8126c: 08 fd 63 d3  	lsr	x8, x8, #35
   81270: 09 01 09 1b  	madd	w9, w8, w9, w0
   81274: 29 05 09 0b  	add	w9, w9, w9, lsl #1
   81278: 29 1d 00 12  	and	w9, w9, #0xff
   8127c: 2d 0d 00 11  	add	w13, w9, #3
   81280: ec 03 09 2a  	mov	w12, w9
   81284: bf 01 00 72  	tst	w13, #0x1
   81288: af 7d 01 53  	lsr	w15, w13, #1
   8128c: 6e 15 9f 1a  	csinc	w14, w11, wzr, ne
   81290: 6b 7d 0b 1b  	mul	w11, w11, w11
   81294: bf 0d 00 71  	cmp	w13, #3
   81298: ed 03 0f 2a  	mov	w13, w15
   8129c: ca 7d 0a 1b  	mul	w10, w14, w10
   812a0: 28 ff ff 54  	b.hi	0x81284 <_ZN12baremetal_pi4gpio4Gpio9configure17hb1583b5e8840e111E+0x34>
   812a4: 4d 00 80 52  	mov	w13, #2
   812a8: 2e 00 80 52  	mov	w14, #1
   812ac: ec 01 00 34  	cbz	w12, 0x812e8 <_ZN12baremetal_pi4gpio4Gpio9configure17hb1583b5e8840e111E+0x98>
   812b0: 4f 00 80 52  	mov	w15, #2
   812b4: 9f 05 00 71  	cmp	w12, #1
   812b8: 60 01 00 54  	b.eq	0x812e4 <_ZN12baremetal_pi4gpio4Gpio9configure17hb1583b5e8840e111E+0x94>
   812bc: 2e 00 80 52  	mov	w14, #1
   812c0: 4f 00 80 52  	mov	w15, #2
   812c4: 9f 01 00 72  	tst	w12, #0x1
   812c8: 91 7d 01 53  	lsr	w17, w12, #1
   812cc: f0 15 9f 1a  	csinc	w16, w15, wzr, ne
   812d0: ef 7d 0f 1b  	mul	w15, w15, w15
   812d4: 9f 0d 00 71  	cmp	w12, #3
   812d8: ec 03 11 2a  	mov	w12, w17
   812dc: 0e 7e 0e 1b  	mul	w14, w16, w14
   812e0: 28 ff ff 54  	b.hi	0x812c4 <_ZN12baremetal_pi4gpio4Gpio9configure17hb1583b5e8840e111E+0x74>
   812e4: ee 7d 0e 1b  	mul	w14, w15, w14
   812e8: 0c e4 a7 52  	mov	w12, #1059061760
   812ec: a9 21 c9 1a  	lsl	w9, w13, w9
   812f0: 0c 11 7e b3  	bfi	x12, x8, #2, #5
   812f4: 68 7d 0a 1b  	mul	w8, w11, w10
   812f8: 8a 01 40 b9  	ldr	w10, [x12]
   812fc: e8 03 28 2a  	mvn	w8, w8
   81300: c8 01 08 0b  	add	w8, w14, w8
   81304: 48 01 08 0a  	and	w8, w10, w8
   81308: 08 01 09 2a  	orr	w8, w8, w9
   8130c: 88 01 00 b9  	str	w8, [x12]
   81310: c0 03 5f d6  	ret

0000000000081314 <_ZN4core3ops8function6FnOnce9call_once17hf084a51a9b44c1f3E>:
   81314: 1f 00 40 f9  	ldr	xzr, [x0]
   81318: 00 00 00 14  	b	0x81318 <_ZN4core3ops8function6FnOnce9call_once17hf084a51a9b44c1f3E+0x4>

000000000008131c <_ZN4core9panicking18panic_bounds_check17h8ada80d8af39de02E>:
   8131c: e0 07 ba a9  	stp	x0, x1, [sp, #-96]!
   81320: 09 00 00 90  	adrp	x9, 0x81000 <_ZN4core9panicking18panic_bounds_check17h8ada80d8af39de02E+0x4>
   81324: e8 23 00 91  	add	x8, sp, #8
   81328: 29 91 0d 91  	add	x9, x9, #868
   8132c: 2b 00 00 b0  	adrp	x11, 0x86000 <_ZN4core9panicking18panic_bounds_check17h8ada80d8af39de02E+0x24>
   81330: ea 03 00 91  	mov	x10, sp
   81334: 6b 21 06 91  	add	x11, x11, #392
   81338: 4c 00 80 52  	mov	w12, #2
   8133c: e8 27 04 a9  	stp	x8, x9, [sp, #64]
   81340: e8 03 01 91  	add	x8, sp, #64
   81344: e0 43 00 91  	add	x0, sp, #16
   81348: e1 03 02 aa  	mov	x1, x2
   8134c: ff 7f 02 a9  	stp	xzr, xzr, [sp, #32]
   81350: ea 27 05 a9  	stp	x10, x9, [sp, #80]
   81354: eb 33 01 a9  	stp	x11, x12, [sp, #16]
   81358: e8 33 03 a9  	stp	x8, x12, [sp, #48]
   8135c: 60 00 00 94  	bl	0x814dc <_ZN4core9panicking9panic_fmt17h136e9995f1aed1cdE>
   81360: 20 00 20 d4  	brk	#0x1

0000000000081364 <_ZN4core3fmt3num3imp52_$LT$impl$u20$core..fmt..Display$u20$for$u20$u64$GT$3fmt17h3635720e402b4b05E>:
   81364: ff 03 01 d1  	sub	sp, sp, #64
   81368: fe 1b 00 f9  	str	x30, [sp, #48]
   8136c: 0a 00 40 f9  	ldr	x10, [x0]
   81370: e8 03 01 aa  	mov	x8, x1
   81374: 49 fd 44 d3  	lsr	x9, x10, #4
   81378: 3f c5 09 f1  	cmp	x9, #625
   8137c: 29 00 00 b0  	adrp	x9, 0x86000 <_ZN4core3fmt3num3imp52_$LT$impl$u20$core..fmt..Display$u20$for$u20$u64$GT$3fmt17h3635720e402b4b05E+0x2c>
   81380: 29 e9 08 91  	add	x9, x9, #570
   81384: e3 04 00 54  	b.lo	0x81420 <_ZN4core3fmt3num3imp52_$LT$impl$u20$core..fmt..Display$u20$for$u20$u64$GT$3fmt17h3635720e402b4b05E+0xbc>
   81388: 6c 29 8b d2  	mov	x12, #22859
   8138c: cc 10 a7 f2  	movk	x12, #14470, lsl #16
   81390: cc ba d8 f2  	movk	x12, #50646, lsl #32
   81394: ee a3 90 52  	mov	w14, #34079
   81398: f1 1f 9c 52  	mov	w17, #57599
   8139c: eb 03 1f aa  	mov	x11, xzr
   813a0: ac 8d e6 f2  	movk	x12, #13421, lsl #48
   813a4: ed e1 84 12  	mov	w13, #-10000
   813a8: 6e 3d aa 72  	movk	w14, #20971, lsl #16
   813ac: 6f 0c 80 12  	mov	w15, #-100
   813b0: f0 23 00 91  	add	x16, sp, #8
   813b4: b1 be a0 72  	movk	w17, #1525, lsl #16
   813b8: f2 03 0a aa  	mov	x18, x10
   813bc: 4a 7d cc 9b  	umulh	x10, x10, x12
   813c0: 4a fd 4b d3  	lsr	x10, x10, #11
   813c4: 5f 02 11 eb  	cmp	x18, x17
   813c8: 52 49 0d 1b  	madd	w18, w10, w13, w18
   813cc: 41 3e 00 12  	and	w1, w18, #0xffff
   813d0: 21 7c ae 9b  	umull	x1, w1, w14
   813d4: 21 fc 65 d3  	lsr	x1, x1, #37
   813d8: 32 48 0f 1b  	madd	w18, w1, w15, w18
   813dc: 21 05 01 8b  	add	x1, x9, x1, lsl #1
   813e0: 32 25 32 8b  	add	x18, x9, w18, uxth #1
   813e4: 22 00 40 39  	ldrb	w2, [x1]
   813e8: 21 04 40 39  	ldrb	w1, [x1, #1]
   813ec: 43 06 40 39  	ldrb	w3, [x18, #1]
   813f0: 52 02 40 39  	ldrb	w18, [x18]
   813f4: 00 02 0b 8b  	add	x0, x16, x11
   813f8: 6b 11 00 d1  	sub	x11, x11, #4
   813fc: 01 90 00 39  	strb	w1, [x0, #36]
   81400: 02 8c 00 39  	strb	w2, [x0, #35]
   81404: 03 98 00 39  	strb	w3, [x0, #38]
   81408: 12 94 00 39  	strb	w18, [x0, #37]
   8140c: 68 fd ff 54  	b.hi	0x813b8 <_ZN4core3fmt3num3imp52_$LT$impl$u20$core..fmt..Display$u20$for$u20$u64$GT$3fmt17h3635720e402b4b05E+0x54>
   81410: 6b 9d 00 91  	add	x11, x11, #39
   81414: 5f 8d 01 f1  	cmp	x10, #99
   81418: ac 00 00 54  	b.gt	0x8142c <_ZN4core3fmt3num3imp52_$LT$impl$u20$core..fmt..Display$u20$for$u20$u64$GT$3fmt17h3635720e402b4b05E+0xc8>
   8141c: 14 00 00 14  	b	0x8146c <_ZN4core3fmt3num3imp52_$LT$impl$u20$core..fmt..Display$u20$for$u20$u64$GT$3fmt17h3635720e402b4b05E+0x108>
   81420: eb 04 80 52  	mov	w11, #39
   81424: 5f 8d 01 f1  	cmp	x10, #99
   81428: 2d 02 00 54  	b.le	0x8146c <_ZN4core3fmt3num3imp52_$LT$impl$u20$core..fmt..Display$u20$for$u20$u64$GT$3fmt17h3635720e402b4b05E+0x108>
   8142c: ed a3 90 52  	mov	w13, #34079
   81430: 4c 3d 00 12  	and	w12, w10, #0xffff
   81434: 6d 3d aa 72  	movk	w13, #20971, lsl #16
   81438: 8c 7d ad 9b  	umull	x12, w12, w13
   8143c: 6e 0c 80 12  	mov	w14, #-100
   81440: 8c fd 65 d3  	lsr	x12, x12, #37
   81444: 8a 29 0e 1b  	madd	w10, w12, w14, w10
   81448: 2a 25 2a 8b  	add	x10, x9, w10, uxth #1
   8144c: 4d 05 40 39  	ldrb	w13, [x10, #1]
   81450: 4a 01 40 39  	ldrb	w10, [x10]
   81454: 6b 09 00 d1  	sub	x11, x11, #2
   81458: ee 23 00 91  	add	x14, sp, #8
   8145c: ce 01 0b 8b  	add	x14, x14, x11
   81460: ca 01 00 39  	strb	w10, [x14]
   81464: ea 03 0c aa  	mov	x10, x12
   81468: cd 05 00 39  	strb	w13, [x14, #1]
   8146c: 5f 29 00 f1  	cmp	x10, #10
   81470: ca 00 00 54  	b.ge	0x81488 <_ZN4core3fmt3num3imp52_$LT$impl$u20$core..fmt..Display$u20$for$u20$u64$GT$3fmt17h3635720e402b4b05E+0x124>
   81474: 6b 05 00 d1  	sub	x11, x11, #1
   81478: 49 c1 00 11  	add	w9, w10, #48
   8147c: ea 23 00 91  	add	x10, sp, #8
   81480: 49 69 2b 38  	strb	w9, [x10, x11]
   81484: 09 00 00 14  	b	0x814a8 <_ZN4core3fmt3num3imp52_$LT$impl$u20$core..fmt..Display$u20$for$u20$u64$GT$3fmt17h3635720e402b4b05E+0x144>
   81488: 29 05 0a 8b  	add	x9, x9, x10, lsl #1
   8148c: 2a 05 40 39  	ldrb	w10, [x9, #1]
   81490: 29 01 40 39  	ldrb	w9, [x9]
   81494: 6b 09 00 d1  	sub	x11, x11, #2
   81498: ec 23 00 91  	add	x12, sp, #8
   8149c: 8c 01 0b 8b  	add	x12, x12, x11
   814a0: 8a 05 00 39  	strb	w10, [x12, #1]
   814a4: 89 01 00 39  	strb	w9, [x12]
   814a8: e9 23 00 91  	add	x9, sp, #8
   814ac: ea 04 80 52  	mov	w10, #39
   814b0: 22 00 00 b0  	adrp	x2, 0x86000 <_ZN4core3fmt3num3imp52_$LT$impl$u20$core..fmt..Display$u20$for$u20$u64$GT$3fmt17h3635720e402b4b05E+0x160>
   814b4: 24 01 0b 8b  	add	x4, x9, x11
   814b8: 45 01 0b cb  	sub	x5, x10, x11
   814bc: 42 a0 06 91  	add	x2, x2, #424
   814c0: 21 00 80 52  	mov	w1, #1
   814c4: e0 03 08 aa  	mov	x0, x8
   814c8: e3 03 1f aa  	mov	x3, xzr
   814cc: 13 00 00 94  	bl	0x81518 <_ZN4core3fmt9Formatter12pad_integral17ha6f583ca7a70f44dE>
   814d0: fe 1b 40 f9  	ldr	x30, [sp, #48]
   814d4: ff 03 01 91  	add	sp, sp, #64
   814d8: c0 03 5f d6  	ret

00000000000814dc <_ZN4core9panicking9panic_fmt17h136e9995f1aed1cdE>:
   814dc: 28 00 00 b0  	adrp	x8, 0x86000 <_ZN4core9panicking9panic_fmt17h136e9995f1aed1cdE+0x14>
   814e0: 29 00 00 b0  	adrp	x9, 0x86000 <_ZN4core9panicking9panic_fmt17h136e9995f1aed1cdE+0x18>
   814e4: 08 a1 06 91  	add	x8, x8, #424
   814e8: 29 a1 06 91  	add	x9, x9, #424
   814ec: e8 27 be a9  	stp	x8, x9, [sp, #-32]!
   814f0: e0 07 01 a9  	stp	x0, x1, [sp, #16]
   814f4: e0 03 00 91  	mov	x0, sp
   814f8: 54 fe ff 97  	bl	0x80e48 <rust_begin_unwind>
   814fc: 20 00 20 d4  	brk	#0x1

0000000000081500 <_ZN4core3ptr102drop_in_place$LT$$RF$core..iter..adapters..copied..Copied$LT$core..slice..iter..Iter$LT$u8$GT$$GT$$GT$17h4126b20262e0ab35E>:
   81500: c0 03 5f d6  	ret

0000000000081504 <_ZN36_$LT$T$u20$as$u20$core..any..Any$GT$7type_id17hf8fe02da2457d98aE>:
   81504: a0 1c 91 d2  	mov	x0, #35045
   81508: c0 03 b0 f2  	movk	x0, #32798, lsl #16
   8150c: a0 b2 d5 f2  	movk	x0, #44437, lsl #32
   81510: 00 d2 e7 f2  	movk	x0, #16016, lsl #48
   81514: c0 03 5f d6  	ret

0000000000081518 <_ZN4core3fmt9Formatter12pad_integral17ha6f583ca7a70f44dE>:
   81518: fd 7b ba a9  	stp	x29, x30, [sp, #-96]!
   8151c: fc 6f 01 a9  	stp	x28, x27, [sp, #16]
   81520: fa 67 02 a9  	stp	x26, x25, [sp, #32]
   81524: f8 5f 03 a9  	stp	x24, x23, [sp, #48]
   81528: f6 57 04 a9  	stp	x22, x21, [sp, #64]
   8152c: f4 4f 05 a9  	stp	x20, x19, [sp, #80]
   81530: f3 03 05 aa  	mov	x19, x5
   81534: f4 03 04 aa  	mov	x20, x4
   81538: f6 03 03 aa  	mov	x22, x3
   8153c: f7 03 02 aa  	mov	x23, x2
   81540: f5 03 00 aa  	mov	x21, x0
   81544: 01 02 00 34  	cbz	w1, 0x81584 <_ZN4core3fmt9Formatter12pad_integral17ha6f583ca7a70f44dE+0x6c>
   81548: a8 32 40 b9  	ldr	w8, [x21, #48]
   8154c: 69 05 80 52  	mov	w9, #43
   81550: 2a 02 a0 52  	mov	w10, #1114112
   81554: 0b 01 40 92  	and	x11, x8, #0x1
   81558: 7f 01 00 71  	cmp	w11, #0
   8155c: 58 01 89 1a  	csel	w24, w10, w9, eq
   81560: 69 01 13 8b  	add	x9, x11, x19
   81564: 88 01 10 36  	tbz	w8, #2, 0x81594 <_ZN4core3fmt9Formatter12pad_integral17ha6f583ca7a70f44dE+0x7c>
   81568: eb 03 16 aa  	mov	x11, x22
   8156c: 56 05 00 b4  	cbz	x22, 0x81614 <_ZN4core3fmt9Formatter12pad_integral17ha6f583ca7a70f44dE+0xfc>
   81570: df 06 00 f1  	cmp	x22, #1
   81574: c1 01 00 54  	b.ne	0x815ac <_ZN4core3fmt9Formatter12pad_integral17ha6f583ca7a70f44dE+0x94>
   81578: eb 03 1f aa  	mov	x11, xzr
   8157c: ea 03 17 aa  	mov	x10, x23
   81580: 1e 00 00 14  	b	0x815f8 <_ZN4core3fmt9Formatter12pad_integral17ha6f583ca7a70f44dE+0xe0>
   81584: a8 32 40 b9  	ldr	w8, [x21, #48]
   81588: 69 06 00 91  	add	x9, x19, #1
   8158c: b8 05 80 52  	mov	w24, #45
   81590: c8 fe 17 37  	tbnz	w8, #2, 0x81568 <_ZN4core3fmt9Formatter12pad_integral17ha6f583ca7a70f44dE+0x50>
   81594: f7 03 1f aa  	mov	x23, xzr
   81598: f6 03 1f aa  	mov	x22, xzr
   8159c: aa 02 40 f9  	ldr	x10, [x21]
   815a0: 5f 05 00 f1  	cmp	x10, #1
   815a4: 00 04 00 54  	b.eq	0x81624 <_ZN4core3fmt9Formatter12pad_integral17ha6f583ca7a70f44dE+0x10c>
   815a8: 2c 00 00 14  	b	0x81658 <_ZN4core3fmt9Formatter12pad_integral17ha6f583ca7a70f44dE+0x140>
   815ac: ca fa 7f 92  	and	x10, x22, #0xfffffffffffffffe
   815b0: eb 03 1f aa  	mov	x11, xzr
   815b4: ec 03 1f aa  	mov	x12, xzr
   815b8: ed 06 00 91  	add	x13, x23, #1
   815bc: ee 03 0a aa  	mov	x14, x10
   815c0: af f1 5f 38  	ldurb	w15, [x13, #-1]
   815c4: b0 25 40 38  	ldrb	w16, [x13], #2
   815c8: ef 05 1a 12  	and	w15, w15, #0xc0
   815cc: 10 06 1a 12  	and	w16, w16, #0xc0
   815d0: ff 01 02 71  	cmp	w15, #128
   815d4: 6b 05 8b 9a  	cinc	x11, x11, ne
   815d8: 1f 02 02 71  	cmp	w16, #128
   815dc: 8c 05 8c 9a  	cinc	x12, x12, ne
   815e0: ce 09 00 f1  	subs	x14, x14, #2
   815e4: e1 fe ff 54  	b.ne	0x815c0 <_ZN4core3fmt9Formatter12pad_integral17ha6f583ca7a70f44dE+0xa8>
   815e8: 5f 01 16 eb  	cmp	x10, x22
   815ec: 8b 01 0b 8b  	add	x11, x12, x11
   815f0: 20 01 00 54  	b.eq	0x81614 <_ZN4core3fmt9Formatter12pad_integral17ha6f583ca7a70f44dE+0xfc>
   815f4: ea 02 0a 8b  	add	x10, x23, x10
   815f8: ec 02 16 8b  	add	x12, x23, x22
   815fc: 4d 15 40 38  	ldrb	w13, [x10], #1
   81600: ad 05 1a 12  	and	w13, w13, #0xc0
   81604: bf 01 02 71  	cmp	w13, #128
   81608: 6b 05 8b 9a  	cinc	x11, x11, ne
   8160c: 9f 01 0a eb  	cmp	x12, x10
   81610: 61 ff ff 54  	b.ne	0x815fc <_ZN4core3fmt9Formatter12pad_integral17ha6f583ca7a70f44dE+0xe4>
   81614: 69 01 09 8b  	add	x9, x11, x9
   81618: aa 02 40 f9  	ldr	x10, [x21]
   8161c: 5f 05 00 f1  	cmp	x10, #1
   81620: c1 01 00 54  	b.ne	0x81658 <_ZN4core3fmt9Formatter12pad_integral17ha6f583ca7a70f44dE+0x140>
   81624: aa 06 40 f9  	ldr	x10, [x21, #8]
   81628: 5c 01 09 eb  	subs	x28, x10, x9
   8162c: 69 01 00 54  	b.ls	0x81658 <_ZN4core3fmt9Formatter12pad_integral17ha6f583ca7a70f44dE+0x140>
   81630: 88 04 18 37  	tbnz	w8, #3, 0x816c0 <_ZN4core3fmt9Formatter12pad_integral17ha6f583ca7a70f44dE+0x1a8>
   81634: a8 e2 40 39  	ldrb	w8, [x21, #56]
   81638: 1f 0d 00 71  	cmp	w8, #3
   8163c: 08 15 9f 1a  	csinc	w8, w8, wzr, ne
   81640: 08 05 00 72  	ands	w8, w8, #0x3
   81644: a0 06 00 54  	b.eq	0x81718 <_ZN4core3fmt9Formatter12pad_integral17ha6f583ca7a70f44dE+0x200>
   81648: 1f 05 00 71  	cmp	w8, #1
   8164c: c1 06 00 54  	b.ne	0x81724 <_ZN4core3fmt9Formatter12pad_integral17ha6f583ca7a70f44dE+0x20c>
   81650: fd 03 1f aa  	mov	x29, xzr
   81654: 37 00 00 14  	b	0x81730 <_ZN4core3fmt9Formatter12pad_integral17ha6f583ca7a70f44dE+0x218>
   81658: e0 03 15 aa  	mov	x0, x21
   8165c: e1 03 18 2a  	mov	w1, w24
   81660: e2 03 17 aa  	mov	x2, x23
   81664: e3 03 16 aa  	mov	x3, x22
   81668: 65 00 00 94  	bl	0x817fc <_ZN4core3fmt9Formatter12pad_integral12write_prefix17h7a2809ec683865f4E>
   8166c: 40 01 00 36  	tbz	w0, #0, 0x81694 <_ZN4core3fmt9Formatter12pad_integral17ha6f583ca7a70f44dE+0x17c>
   81670: 39 00 80 52  	mov	w25, #1
   81674: e0 03 19 2a  	mov	w0, w25
   81678: f4 4f 45 a9  	ldp	x20, x19, [sp, #80]
   8167c: f6 57 44 a9  	ldp	x22, x21, [sp, #64]
   81680: f8 5f 43 a9  	ldp	x24, x23, [sp, #48]
   81684: fa 67 42 a9  	ldp	x26, x25, [sp, #32]
   81688: fc 6f 41 a9  	ldp	x28, x27, [sp, #16]
   8168c: fd 7b c6 a8  	ldp	x29, x30, [sp], #96
   81690: c0 03 5f d6  	ret
   81694: a0 22 42 a9  	ldp	x0, x8, [x21, #32]
   81698: e1 03 14 aa  	mov	x1, x20
   8169c: e2 03 13 aa  	mov	x2, x19
   816a0: f4 4f 45 a9  	ldp	x20, x19, [sp, #80]
   816a4: 03 0d 40 f9  	ldr	x3, [x8, #24]
   816a8: f6 57 44 a9  	ldp	x22, x21, [sp, #64]
   816ac: f8 5f 43 a9  	ldp	x24, x23, [sp, #48]
   816b0: fa 67 42 a9  	ldp	x26, x25, [sp, #32]
   816b4: fc 6f 41 a9  	ldp	x28, x27, [sp, #16]
   816b8: fd 7b c6 a8  	ldp	x29, x30, [sp], #96
   816bc: 60 00 1f d6  	br	x3
   816c0: ba 36 40 b9  	ldr	w26, [x21, #52]
   816c4: bb e2 40 39  	ldrb	w27, [x21, #56]
   816c8: 08 06 80 52  	mov	w8, #48
   816cc: 39 00 80 52  	mov	w25, #1
   816d0: e0 03 15 aa  	mov	x0, x21
   816d4: e1 03 18 2a  	mov	w1, w24
   816d8: e2 03 17 aa  	mov	x2, x23
   816dc: e3 03 16 aa  	mov	x3, x22
   816e0: a8 36 00 b9  	str	w8, [x21, #52]
   816e4: b9 e2 00 39  	strb	w25, [x21, #56]
   816e8: 45 00 00 94  	bl	0x817fc <_ZN4core3fmt9Formatter12pad_integral12write_prefix17h7a2809ec683865f4E>
   816ec: 40 fc 07 37  	tbnz	w0, #0, 0x81674 <_ZN4core3fmt9Formatter12pad_integral17ha6f583ca7a70f44dE+0x15c>
   816f0: b6 5e 42 a9  	ldp	x22, x23, [x21, #32]
   816f4: 98 07 00 91  	add	x24, x28, #1
   816f8: 18 07 00 f1  	subs	x24, x24, #1
   816fc: 40 06 00 54  	b.eq	0x817c4 <_ZN4core3fmt9Formatter12pad_integral17ha6f583ca7a70f44dE+0x2ac>
   81700: e8 12 40 f9  	ldr	x8, [x23, #32]
   81704: 01 06 80 52  	mov	w1, #48
   81708: e0 03 16 aa  	mov	x0, x22
   8170c: 00 01 3f d6  	blr	x8
   81710: 40 ff 07 36  	tbz	w0, #0, 0x816f8 <_ZN4core3fmt9Formatter12pad_integral17ha6f583ca7a70f44dE+0x1e0>
   81714: d7 ff ff 17  	b	0x81670 <_ZN4core3fmt9Formatter12pad_integral17ha6f583ca7a70f44dE+0x158>
   81718: fd 03 1c aa  	mov	x29, x28
   8171c: fc 03 1f aa  	mov	x28, xzr
   81720: 04 00 00 14  	b	0x81730 <_ZN4core3fmt9Formatter12pad_integral17ha6f583ca7a70f44dE+0x218>
   81724: 88 07 00 91  	add	x8, x28, #1
   81728: 9c ff 41 d3  	lsr	x28, x28, #1
   8172c: 1d fd 41 d3  	lsr	x29, x8, #1
   81730: b9 6e 42 a9  	ldp	x25, x27, [x21, #32]
   81734: ba 36 40 b9  	ldr	w26, [x21, #52]
   81738: 9c 07 00 91  	add	x28, x28, #1
   8173c: 9c 07 00 f1  	subs	x28, x28, #1
   81740: e0 00 00 54  	b.eq	0x8175c <_ZN4core3fmt9Formatter12pad_integral17ha6f583ca7a70f44dE+0x244>
   81744: 68 13 40 f9  	ldr	x8, [x27, #32]
   81748: e0 03 19 aa  	mov	x0, x25
   8174c: e1 03 1a 2a  	mov	w1, w26
   81750: 00 01 3f d6  	blr	x8
   81754: 40 ff 07 36  	tbz	w0, #0, 0x8173c <_ZN4core3fmt9Formatter12pad_integral17ha6f583ca7a70f44dE+0x224>
   81758: c6 ff ff 17  	b	0x81670 <_ZN4core3fmt9Formatter12pad_integral17ha6f583ca7a70f44dE+0x158>
   8175c: 5f 43 44 71  	cmp	w26, #272, lsl #12
   81760: fc 03 9d 9a  	csel	x28, xzr, x29, eq
   81764: 60 f8 ff 54  	b.eq	0x81670 <_ZN4core3fmt9Formatter12pad_integral17ha6f583ca7a70f44dE+0x158>
   81768: e0 03 15 aa  	mov	x0, x21
   8176c: e1 03 18 2a  	mov	w1, w24
   81770: e2 03 17 aa  	mov	x2, x23
   81774: e3 03 16 aa  	mov	x3, x22
   81778: 21 00 00 94  	bl	0x817fc <_ZN4core3fmt9Formatter12pad_integral12write_prefix17h7a2809ec683865f4E>
   8177c: a0 f7 07 37  	tbnz	w0, #0, 0x81670 <_ZN4core3fmt9Formatter12pad_integral17ha6f583ca7a70f44dE+0x158>
   81780: 68 0f 40 f9  	ldr	x8, [x27, #24]
   81784: e0 03 19 aa  	mov	x0, x25
   81788: e1 03 14 aa  	mov	x1, x20
   8178c: e2 03 13 aa  	mov	x2, x19
   81790: 00 01 3f d6  	blr	x8
   81794: e0 f6 07 37  	tbnz	w0, #0, 0x81670 <_ZN4core3fmt9Formatter12pad_integral17ha6f583ca7a70f44dE+0x158>
   81798: f3 03 1f aa  	mov	x19, xzr
   8179c: 9f 03 13 eb  	cmp	x28, x19
   817a0: 60 02 00 54  	b.eq	0x817ec <_ZN4core3fmt9Formatter12pad_integral17ha6f583ca7a70f44dE+0x2d4>
   817a4: 68 13 40 f9  	ldr	x8, [x27, #32]
   817a8: e0 03 19 aa  	mov	x0, x25
   817ac: e1 03 1a 2a  	mov	w1, w26
   817b0: 73 06 00 91  	add	x19, x19, #1
   817b4: 00 01 3f d6  	blr	x8
   817b8: 20 ff ff 34  	cbz	w0, 0x8179c <_ZN4core3fmt9Formatter12pad_integral17ha6f583ca7a70f44dE+0x284>
   817bc: 68 06 00 d1  	sub	x8, x19, #1
   817c0: 0c 00 00 14  	b	0x817f0 <_ZN4core3fmt9Formatter12pad_integral17ha6f583ca7a70f44dE+0x2d8>
   817c4: e8 0e 40 f9  	ldr	x8, [x23, #24]
   817c8: e0 03 16 aa  	mov	x0, x22
   817cc: e1 03 14 aa  	mov	x1, x20
   817d0: e2 03 13 aa  	mov	x2, x19
   817d4: 00 01 3f d6  	blr	x8
   817d8: c0 f4 07 37  	tbnz	w0, #0, 0x81670 <_ZN4core3fmt9Formatter12pad_integral17ha6f583ca7a70f44dE+0x158>
   817dc: f9 03 1f 2a  	mov	w25, wzr
   817e0: ba 36 00 b9  	str	w26, [x21, #52]
   817e4: bb e2 00 39  	strb	w27, [x21, #56]
   817e8: a3 ff ff 17  	b	0x81674 <_ZN4core3fmt9Formatter12pad_integral17ha6f583ca7a70f44dE+0x15c>
   817ec: e8 03 1c aa  	mov	x8, x28
   817f0: 1f 01 1c eb  	cmp	x8, x28
   817f4: f9 27 9f 1a  	cset	w25, lo
   817f8: 9f ff ff 17  	b	0x81674 <_ZN4core3fmt9Formatter12pad_integral17ha6f583ca7a70f44dE+0x15c>

00000000000817fc <_ZN4core3fmt9Formatter12pad_integral12write_prefix17h7a2809ec683865f4E>:
   817fc: fe 57 be a9  	stp	x30, x21, [sp, #-32]!
   81800: f4 4f 01 a9  	stp	x20, x19, [sp, #16]
   81804: f3 03 03 aa  	mov	x19, x3
   81808: f4 03 02 aa  	mov	x20, x2
   8180c: 3f 40 44 71  	cmp	w1, #272, lsl #12
   81810: f5 03 00 aa  	mov	x21, x0
   81814: 20 01 00 54  	b.eq	0x81838 <_ZN4core3fmt9Formatter12pad_integral12write_prefix17h7a2809ec683865f4E+0x3c>
   81818: a0 22 42 a9  	ldp	x0, x8, [x21, #32]
   8181c: 08 11 40 f9  	ldr	x8, [x8, #32]
   81820: 00 01 3f d6  	blr	x8
   81824: a0 00 00 36  	tbz	w0, #0, 0x81838 <_ZN4core3fmt9Formatter12pad_integral12write_prefix17h7a2809ec683865f4E+0x3c>
   81828: 20 00 80 52  	mov	w0, #1
   8182c: f4 4f 41 a9  	ldp	x20, x19, [sp, #16]
   81830: fe 57 c2 a8  	ldp	x30, x21, [sp], #32
   81834: c0 03 5f d6  	ret
   81838: 14 01 00 b4  	cbz	x20, 0x81858 <_ZN4core3fmt9Formatter12pad_integral12write_prefix17h7a2809ec683865f4E+0x5c>
   8183c: a0 22 42 a9  	ldp	x0, x8, [x21, #32]
   81840: e1 03 14 aa  	mov	x1, x20
   81844: e2 03 13 aa  	mov	x2, x19
   81848: f4 4f 41 a9  	ldp	x20, x19, [sp, #16]
   8184c: 03 0d 40 f9  	ldr	x3, [x8, #24]
   81850: fe 57 c2 a8  	ldp	x30, x21, [sp], #32
   81854: 60 00 1f d6  	br	x3
   81858: e0 03 1f 2a  	mov	w0, wzr
   8185c: f4 4f 41 a9  	ldp	x20, x19, [sp, #16]
   81860: fe 57 c2 a8  	ldp	x30, x21, [sp], #32
   81864: c0 03 5f d6  	ret

0000000000081868 <_ZN4core5slice5index26slice_start_index_len_fail17ha3ad23336e78e7f7E>:
   81868: e0 07 ba a9  	stp	x0, x1, [sp, #-96]!
   8186c: 09 00 00 90  	adrp	x9, 0x81000 <_ZN4core5slice5index26slice_start_index_len_fail17ha3ad23336e78e7f7E+0x4>
   81870: e8 03 00 91  	mov	x8, sp
   81874: 29 91 0d 91  	add	x9, x9, #868
   81878: 2b 00 00 b0  	adrp	x11, 0x86000 <_ZN4core5slice5index26slice_start_index_len_fail17ha3ad23336e78e7f7E+0x24>
   8187c: ea 23 00 91  	add	x10, sp, #8
   81880: 6b 21 0c 91  	add	x11, x11, #776
   81884: 4c 00 80 52  	mov	w12, #2
   81888: e8 27 04 a9  	stp	x8, x9, [sp, #64]
   8188c: e8 03 01 91  	add	x8, sp, #64
   81890: e0 43 00 91  	add	x0, sp, #16
   81894: e1 03 02 aa  	mov	x1, x2
   81898: ff 7f 02 a9  	stp	xzr, xzr, [sp, #32]
   8189c: ea 27 05 a9  	stp	x10, x9, [sp, #80]
   818a0: eb 33 01 a9  	stp	x11, x12, [sp, #16]
   818a4: e8 33 03 a9  	stp	x8, x12, [sp, #48]
   818a8: 0d ff ff 97  	bl	0x814dc <_ZN4core9panicking9panic_fmt17h136e9995f1aed1cdE>
   818ac: 20 00 20 d4  	brk	#0x1

00000000000818b0 <_ZN4core5slice5index24slice_end_index_len_fail17hfcb16d41a5d796d5E>:
   818b0: e0 07 ba a9  	stp	x0, x1, [sp, #-96]!
   818b4: 09 00 00 90  	adrp	x9, 0x81000 <_ZN4core5slice5index24slice_end_index_len_fail17hfcb16d41a5d796d5E+0x4>
   818b8: e8 03 00 91  	mov	x8, sp
   818bc: 29 91 0d 91  	add	x9, x9, #868
   818c0: 2b 00 00 b0  	adrp	x11, 0x86000 <_ZN4core5slice5index24slice_end_index_len_fail17hfcb16d41a5d796d5E+0x24>
   818c4: ea 23 00 91  	add	x10, sp, #8
   818c8: 6b 81 0d 91  	add	x11, x11, #864
   818cc: 4c 00 80 52  	mov	w12, #2
   818d0: e8 27 04 a9  	stp	x8, x9, [sp, #64]
   818d4: e8 03 01 91  	add	x8, sp, #64
   818d8: e0 43 00 91  	add	x0, sp, #16
   818dc: e1 03 02 aa  	mov	x1, x2
   818e0: ff 7f 02 a9  	stp	xzr, xzr, [sp, #32]
   818e4: ea 27 05 a9  	stp	x10, x9, [sp, #80]
   818e8: eb 33 01 a9  	stp	x11, x12, [sp, #16]
   818ec: e8 33 03 a9  	stp	x8, x12, [sp, #48]
   818f0: fb fe ff 97  	bl	0x814dc <_ZN4core9panicking9panic_fmt17h136e9995f1aed1cdE>
   818f4: 20 00 20 d4  	brk	#0x1

00000000000818f8 <_ZN4core9panicking5panic17h0d86cd7d69f331f6E>:
   818f8: ff 03 01 d1  	sub	sp, sp, #64
   818fc: 2a 00 00 b0  	adrp	x10, 0x86000 <_ZN4core9panicking5panic17h0d86cd7d69f331f6E+0x18>
   81900: e0 07 03 a9  	stp	x0, x1, [sp, #48]
   81904: e8 c3 00 91  	add	x8, sp, #48
   81908: 29 00 80 52  	mov	w9, #1
   8190c: 4a a1 06 91  	add	x10, x10, #424
   81910: e0 03 00 91  	mov	x0, sp
   81914: e1 03 02 aa  	mov	x1, x2
   81918: ff 7f 01 a9  	stp	xzr, xzr, [sp, #16]
   8191c: e8 27 00 a9  	stp	x8, x9, [sp]
   81920: ea 7f 02 a9  	stp	x10, xzr, [sp, #32]
   81924: ee fe ff 97  	bl	0x814dc <_ZN4core9panicking9panic_fmt17h136e9995f1aed1cdE>
   81928: 20 00 20 d4  	brk	#0x1

000000000008192c <_ZN44_$LT$$RF$T$u20$as$u20$core..fmt..Display$GT$3fmt17h36ba8db926b991f8E>:
   8192c: fe 67 bc a9  	stp	x30, x25, [sp, #-64]!
   81930: f8 5f 01 a9  	stp	x24, x23, [sp, #16]
   81934: f6 57 02 a9  	stp	x22, x21, [sp, #32]
   81938: f4 4f 03 a9  	stp	x20, x19, [sp, #48]
   8193c: 28 00 40 f9  	ldr	x8, [x1]
   81940: 14 4c 40 a9  	ldp	x20, x19, [x0]
   81944: 29 08 40 f9  	ldr	x9, [x1, #16]
   81948: 1f 05 00 f1  	cmp	x8, #1
   8194c: 81 00 00 54  	b.ne	0x8195c <_ZN44_$LT$$RF$T$u20$as$u20$core..fmt..Display$GT$3fmt17h36ba8db926b991f8E+0x30>
   81950: 3f 05 00 f1  	cmp	x9, #1
   81954: 80 00 00 54  	b.eq	0x81964 <_ZN44_$LT$$RF$T$u20$as$u20$core..fmt..Display$GT$3fmt17h36ba8db926b991f8E+0x38>
   81958: 5a 00 00 14  	b	0x81ac0 <_ZN44_$LT$$RF$T$u20$as$u20$core..fmt..Display$GT$3fmt17h36ba8db926b991f8E+0x194>
   8195c: 3f 05 00 f1  	cmp	x9, #1
   81960: 81 10 00 54  	b.ne	0x81b70 <_ZN44_$LT$$RF$T$u20$as$u20$core..fmt..Display$GT$3fmt17h36ba8db926b991f8E+0x244>
   81964: 2b 0c 40 f9  	ldr	x11, [x1, #24]
   81968: 8a 02 13 8b  	add	x10, x20, x19
   8196c: e9 03 1f aa  	mov	x9, xzr
   81970: 6b 06 00 b4  	cbz	x11, 0x81a3c <_ZN44_$LT$$RF$T$u20$as$u20$core..fmt..Display$GT$3fmt17h36ba8db926b991f8E+0x110>
   81974: ed 03 14 aa  	mov	x13, x20
   81978: 0e 00 00 14  	b	0x819b0 <_ZN44_$LT$$RF$T$u20$as$u20$core..fmt..Display$GT$3fmt17h36ba8db926b991f8E+0x84>
   8197c: 91 15 40 38  	ldrb	w17, [x12], #1
   81980: 31 16 00 12  	and	w17, w17, #0x3f
   81984: ef 09 0e 53  	ubfiz	w15, w15, #18, #3
   81988: cf 15 14 33  	bfi	w15, w14, #12, #6
   8198c: 0f 16 1a 33  	bfi	w15, w16, #6, #6
   81990: ee 01 11 2a  	orr	w14, w15, w17
   81994: df 41 44 71  	cmp	w14, #272, lsl #12
   81998: 00 09 00 54  	b.eq	0x81ab8 <_ZN44_$LT$$RF$T$u20$as$u20$core..fmt..Display$GT$3fmt17h36ba8db926b991f8E+0x18c>
   8199c: 29 01 0d cb  	sub	x9, x9, x13
   819a0: 6b 05 00 f1  	subs	x11, x11, #1
   819a4: 29 01 0c 8b  	add	x9, x9, x12
   819a8: ed 03 0c aa  	mov	x13, x12
   819ac: a0 04 00 54  	b.eq	0x81a40 <_ZN44_$LT$$RF$T$u20$as$u20$core..fmt..Display$GT$3fmt17h36ba8db926b991f8E+0x114>
   819b0: bf 01 0a eb  	cmp	x13, x10
   819b4: 20 08 00 54  	b.eq	0x81ab8 <_ZN44_$LT$$RF$T$u20$as$u20$core..fmt..Display$GT$3fmt17h36ba8db926b991f8E+0x18c>
   819b8: ec 03 0d aa  	mov	x12, x13
   819bc: 8f 15 c0 38  	ldrsb	w15, [x12], #1
   819c0: ef fe ff 36  	tbz	w15, #31, 0x8199c <_ZN44_$LT$$RF$T$u20$as$u20$core..fmt..Display$GT$3fmt17h36ba8db926b991f8E+0x70>
   819c4: 9f 01 0a eb  	cmp	x12, x10
   819c8: 00 01 00 54  	b.eq	0x819e8 <_ZN44_$LT$$RF$T$u20$as$u20$core..fmt..Display$GT$3fmt17h36ba8db926b991f8E+0xbc>
   819cc: ae 05 40 39  	ldrb	w14, [x13, #1]
   819d0: ac 09 00 91  	add	x12, x13, #2
   819d4: ce 15 00 12  	and	w14, w14, #0x3f
   819d8: ef 1d 00 12  	and	w15, w15, #0xff
   819dc: ff 81 03 71  	cmp	w15, #224
   819e0: e3 fd ff 54  	b.lo	0x8199c <_ZN44_$LT$$RF$T$u20$as$u20$core..fmt..Display$GT$3fmt17h36ba8db926b991f8E+0x70>
   819e4: 06 00 00 14  	b	0x819fc <_ZN44_$LT$$RF$T$u20$as$u20$core..fmt..Display$GT$3fmt17h36ba8db926b991f8E+0xd0>
   819e8: ee 03 1f 2a  	mov	w14, wzr
   819ec: ec 03 0a aa  	mov	x12, x10
   819f0: ef 1d 00 12  	and	w15, w15, #0xff
   819f4: ff 81 03 71  	cmp	w15, #224
   819f8: 23 fd ff 54  	b.lo	0x8199c <_ZN44_$LT$$RF$T$u20$as$u20$core..fmt..Display$GT$3fmt17h36ba8db926b991f8E+0x70>
   819fc: 9f 01 0a eb  	cmp	x12, x10
   81a00: c0 00 00 54  	b.eq	0x81a18 <_ZN44_$LT$$RF$T$u20$as$u20$core..fmt..Display$GT$3fmt17h36ba8db926b991f8E+0xec>
   81a04: 90 15 40 38  	ldrb	w16, [x12], #1
   81a08: 10 16 00 12  	and	w16, w16, #0x3f
   81a0c: ff c1 03 71  	cmp	w15, #240
   81a10: 63 fc ff 54  	b.lo	0x8199c <_ZN44_$LT$$RF$T$u20$as$u20$core..fmt..Display$GT$3fmt17h36ba8db926b991f8E+0x70>
   81a14: 05 00 00 14  	b	0x81a28 <_ZN44_$LT$$RF$T$u20$as$u20$core..fmt..Display$GT$3fmt17h36ba8db926b991f8E+0xfc>
   81a18: f0 03 1f 2a  	mov	w16, wzr
   81a1c: ec 03 0a aa  	mov	x12, x10
   81a20: ff c1 03 71  	cmp	w15, #240
   81a24: c3 fb ff 54  	b.lo	0x8199c <_ZN44_$LT$$RF$T$u20$as$u20$core..fmt..Display$GT$3fmt17h36ba8db926b991f8E+0x70>
   81a28: 9f 01 0a eb  	cmp	x12, x10
   81a2c: 81 fa ff 54  	b.ne	0x8197c <_ZN44_$LT$$RF$T$u20$as$u20$core..fmt..Display$GT$3fmt17h36ba8db926b991f8E+0x50>
   81a30: f1 03 1f 2a  	mov	w17, wzr
   81a34: ec 03 0a aa  	mov	x12, x10
   81a38: d3 ff ff 17  	b	0x81984 <_ZN44_$LT$$RF$T$u20$as$u20$core..fmt..Display$GT$3fmt17h36ba8db926b991f8E+0x58>
   81a3c: ec 03 14 aa  	mov	x12, x20
   81a40: 9f 01 0a eb  	cmp	x12, x10
   81a44: a0 03 00 54  	b.eq	0x81ab8 <_ZN44_$LT$$RF$T$u20$as$u20$core..fmt..Display$GT$3fmt17h36ba8db926b991f8E+0x18c>
   81a48: eb 03 0c aa  	mov	x11, x12
   81a4c: 6d 15 c0 38  	ldrsb	w13, [x11], #1
   81a50: 4d 01 f8 37  	tbnz	w13, #31, 0x81a78 <_ZN44_$LT$$RF$T$u20$as$u20$core..fmt..Display$GT$3fmt17h36ba8db926b991f8E+0x14c>
   81a54: a9 02 00 b4  	cbz	x9, 0x81aa8 <_ZN44_$LT$$RF$T$u20$as$u20$core..fmt..Display$GT$3fmt17h36ba8db926b991f8E+0x17c>
   81a58: 3f 01 13 eb  	cmp	x9, x19
   81a5c: 22 02 00 54  	b.hs	0x81aa0 <_ZN44_$LT$$RF$T$u20$as$u20$core..fmt..Display$GT$3fmt17h36ba8db926b991f8E+0x174>
   81a60: 8a 6a e9 38  	ldrsb	w10, [x20, x9]
   81a64: 5f 01 01 31  	cmn	w10, #64
   81a68: 0a 02 00 54  	b.ge	0x81aa8 <_ZN44_$LT$$RF$T$u20$as$u20$core..fmt..Display$GT$3fmt17h36ba8db926b991f8E+0x17c>
   81a6c: ea 03 1f aa  	mov	x10, xzr
   81a70: e9 03 1f aa  	mov	x9, xzr
   81a74: 0e 00 00 14  	b	0x81aac <_ZN44_$LT$$RF$T$u20$as$u20$core..fmt..Display$GT$3fmt17h36ba8db926b991f8E+0x180>
   81a78: 7f 01 0a eb  	cmp	x11, x10
   81a7c: ab 1d 00 12  	and	w11, w13, #0xff
   81a80: 80 12 00 54  	b.eq	0x81cd0 <_ZN44_$LT$$RF$T$u20$as$u20$core..fmt..Display$GT$3fmt17h36ba8db926b991f8E+0x3a4>
   81a84: 8e 05 40 39  	ldrb	w14, [x12, #1]
   81a88: 8d 09 00 91  	add	x13, x12, #2
   81a8c: cc 15 00 12  	and	w12, w14, #0x3f
   81a90: 8c 4d 14 53  	lsl	w12, w12, #12
   81a94: 7f 81 03 71  	cmp	w11, #224
   81a98: 42 12 00 54  	b.hs	0x81ce0 <_ZN44_$LT$$RF$T$u20$as$u20$core..fmt..Display$GT$3fmt17h36ba8db926b991f8E+0x3b4>
   81a9c: ee ff ff 17  	b	0x81a54 <_ZN44_$LT$$RF$T$u20$as$u20$core..fmt..Display$GT$3fmt17h36ba8db926b991f8E+0x128>
   81aa0: 3f 01 13 eb  	cmp	x9, x19
   81aa4: 41 fe ff 54  	b.ne	0x81a6c <_ZN44_$LT$$RF$T$u20$as$u20$core..fmt..Display$GT$3fmt17h36ba8db926b991f8E+0x140>
   81aa8: ea 03 14 aa  	mov	x10, x20
   81aac: 5f 01 00 f1  	cmp	x10, #0
   81ab0: 94 02 8a 9a  	csel	x20, x20, x10, eq
   81ab4: 73 02 89 9a  	csel	x19, x19, x9, eq
   81ab8: 1f 05 00 f1  	cmp	x8, #1
   81abc: a1 05 00 54  	b.ne	0x81b70 <_ZN44_$LT$$RF$T$u20$as$u20$core..fmt..Display$GT$3fmt17h36ba8db926b991f8E+0x244>
   81ac0: d3 00 00 b4  	cbz	x19, 0x81ad8 <_ZN44_$LT$$RF$T$u20$as$u20$core..fmt..Display$GT$3fmt17h36ba8db926b991f8E+0x1ac>
   81ac4: 7f 06 00 f1  	cmp	x19, #1
   81ac8: 01 01 00 54  	b.ne	0x81ae8 <_ZN44_$LT$$RF$T$u20$as$u20$core..fmt..Display$GT$3fmt17h36ba8db926b991f8E+0x1bc>
   81acc: e9 03 1f aa  	mov	x9, xzr
   81ad0: e8 03 14 aa  	mov	x8, x20
   81ad4: 18 00 00 14  	b	0x81b34 <_ZN44_$LT$$RF$T$u20$as$u20$core..fmt..Display$GT$3fmt17h36ba8db926b991f8E+0x208>
   81ad8: 28 04 40 f9  	ldr	x8, [x1, #8]
   81adc: a8 04 00 b4  	cbz	x8, 0x81b70 <_ZN44_$LT$$RF$T$u20$as$u20$core..fmt..Display$GT$3fmt17h36ba8db926b991f8E+0x244>
   81ae0: e9 03 1f aa  	mov	x9, xzr
   81ae4: 46 00 00 14  	b	0x81bfc <_ZN44_$LT$$RF$T$u20$as$u20$core..fmt..Display$GT$3fmt17h36ba8db926b991f8E+0x2d0>
   81ae8: 68 fa 7f 92  	and	x8, x19, #0xfffffffffffffffe
   81aec: e9 03 1f aa  	mov	x9, xzr
   81af0: ea 03 1f aa  	mov	x10, xzr
   81af4: 8b 06 00 91  	add	x11, x20, #1
   81af8: ec 03 08 aa  	mov	x12, x8
   81afc: 6d f1 5f 38  	ldurb	w13, [x11, #-1]
   81b00: 6e 25 40 38  	ldrb	w14, [x11], #2
   81b04: ad 05 1a 12  	and	w13, w13, #0xc0
   81b08: ce 05 1a 12  	and	w14, w14, #0xc0
   81b0c: bf 01 02 71  	cmp	w13, #128
   81b10: 29 05 89 9a  	cinc	x9, x9, ne
   81b14: df 01 02 71  	cmp	w14, #128
   81b18: 4a 05 8a 9a  	cinc	x10, x10, ne
   81b1c: 8c 09 00 f1  	subs	x12, x12, #2
   81b20: e1 fe ff 54  	b.ne	0x81afc <_ZN44_$LT$$RF$T$u20$as$u20$core..fmt..Display$GT$3fmt17h36ba8db926b991f8E+0x1d0>
   81b24: 7f 02 08 eb  	cmp	x19, x8
   81b28: 49 01 09 8b  	add	x9, x10, x9
   81b2c: 20 01 00 54  	b.eq	0x81b50 <_ZN44_$LT$$RF$T$u20$as$u20$core..fmt..Display$GT$3fmt17h36ba8db926b991f8E+0x224>
   81b30: 88 02 08 8b  	add	x8, x20, x8
   81b34: 8a 02 13 8b  	add	x10, x20, x19
   81b38: 0b 15 40 38  	ldrb	w11, [x8], #1
   81b3c: 6b 05 1a 12  	and	w11, w11, #0xc0
   81b40: 7f 01 02 71  	cmp	w11, #128
   81b44: 29 05 89 9a  	cinc	x9, x9, ne
   81b48: 5f 01 08 eb  	cmp	x10, x8
   81b4c: 61 ff ff 54  	b.ne	0x81b38 <_ZN44_$LT$$RF$T$u20$as$u20$core..fmt..Display$GT$3fmt17h36ba8db926b991f8E+0x20c>
   81b50: 28 04 40 f9  	ldr	x8, [x1, #8]
   81b54: 3f 01 08 eb  	cmp	x9, x8
   81b58: c2 00 00 54  	b.hs	0x81b70 <_ZN44_$LT$$RF$T$u20$as$u20$core..fmt..Display$GT$3fmt17h36ba8db926b991f8E+0x244>
   81b5c: 7f 06 00 f1  	cmp	x19, #1
   81b60: a8 01 00 54  	b.hi	0x81b94 <_ZN44_$LT$$RF$T$u20$as$u20$core..fmt..Display$GT$3fmt17h36ba8db926b991f8E+0x268>
   81b64: e9 03 1f aa  	mov	x9, xzr
   81b68: ea 03 14 aa  	mov	x10, x20
   81b6c: 1d 00 00 14  	b	0x81be0 <_ZN44_$LT$$RF$T$u20$as$u20$core..fmt..Display$GT$3fmt17h36ba8db926b991f8E+0x2b4>
   81b70: 20 20 42 a9  	ldp	x0, x8, [x1, #32]
   81b74: e1 03 14 aa  	mov	x1, x20
   81b78: e2 03 13 aa  	mov	x2, x19
   81b7c: f4 4f 43 a9  	ldp	x20, x19, [sp, #48]
   81b80: 03 0d 40 f9  	ldr	x3, [x8, #24]
   81b84: f6 57 42 a9  	ldp	x22, x21, [sp, #32]
   81b88: f8 5f 41 a9  	ldp	x24, x23, [sp, #16]
   81b8c: fe 67 c4 a8  	ldp	x30, x25, [sp], #64
   81b90: 60 00 1f d6  	br	x3
   81b94: 6a fa 7f 92  	and	x10, x19, #0xfffffffffffffffe
   81b98: e9 03 1f aa  	mov	x9, xzr
   81b9c: eb 03 1f aa  	mov	x11, xzr
   81ba0: 8c 06 00 91  	add	x12, x20, #1
   81ba4: ed 03 0a aa  	mov	x13, x10
   81ba8: 8e f1 5f 38  	ldurb	w14, [x12, #-1]
   81bac: 8f 25 40 38  	ldrb	w15, [x12], #2
   81bb0: ce 05 1a 12  	and	w14, w14, #0xc0
   81bb4: ef 05 1a 12  	and	w15, w15, #0xc0
   81bb8: df 01 02 71  	cmp	w14, #128
   81bbc: 29 05 89 9a  	cinc	x9, x9, ne
   81bc0: ff 01 02 71  	cmp	w15, #128
   81bc4: 6b 05 8b 9a  	cinc	x11, x11, ne
   81bc8: ad 09 00 f1  	subs	x13, x13, #2
   81bcc: e1 fe ff 54  	b.ne	0x81ba8 <_ZN44_$LT$$RF$T$u20$as$u20$core..fmt..Display$GT$3fmt17h36ba8db926b991f8E+0x27c>
   81bd0: 7f 02 0a eb  	cmp	x19, x10
   81bd4: 69 01 09 8b  	add	x9, x11, x9
   81bd8: 20 01 00 54  	b.eq	0x81bfc <_ZN44_$LT$$RF$T$u20$as$u20$core..fmt..Display$GT$3fmt17h36ba8db926b991f8E+0x2d0>
   81bdc: 8a 02 0a 8b  	add	x10, x20, x10
   81be0: 8b 02 13 8b  	add	x11, x20, x19
   81be4: 4c 15 40 38  	ldrb	w12, [x10], #1
   81be8: 8c 05 1a 12  	and	w12, w12, #0xc0
   81bec: 9f 01 02 71  	cmp	w12, #128
   81bf0: 29 05 89 9a  	cinc	x9, x9, ne
   81bf4: 7f 01 0a eb  	cmp	x11, x10
   81bf8: 61 ff ff 54  	b.ne	0x81be4 <_ZN44_$LT$$RF$T$u20$as$u20$core..fmt..Display$GT$3fmt17h36ba8db926b991f8E+0x2b8>
   81bfc: 2a e0 40 39  	ldrb	w10, [x1, #56]
   81c00: 08 01 09 cb  	sub	x8, x8, x9
   81c04: 5f 0d 00 71  	cmp	w10, #3
   81c08: ea 03 8a 1a  	csel	w10, wzr, w10, eq
   81c0c: 4a 05 00 72  	ands	w10, w10, #0x3
   81c10: a0 00 00 54  	b.eq	0x81c24 <_ZN44_$LT$$RF$T$u20$as$u20$core..fmt..Display$GT$3fmt17h36ba8db926b991f8E+0x2f8>
   81c14: 5f 05 00 71  	cmp	w10, #1
   81c18: c1 00 00 54  	b.ne	0x81c30 <_ZN44_$LT$$RF$T$u20$as$u20$core..fmt..Display$GT$3fmt17h36ba8db926b991f8E+0x304>
   81c1c: f8 03 1f aa  	mov	x24, xzr
   81c20: 07 00 00 14  	b	0x81c3c <_ZN44_$LT$$RF$T$u20$as$u20$core..fmt..Display$GT$3fmt17h36ba8db926b991f8E+0x310>
   81c24: f8 03 08 aa  	mov	x24, x8
   81c28: e8 03 1f aa  	mov	x8, xzr
   81c2c: 04 00 00 14  	b	0x81c3c <_ZN44_$LT$$RF$T$u20$as$u20$core..fmt..Display$GT$3fmt17h36ba8db926b991f8E+0x310>
   81c30: 09 05 00 91  	add	x9, x8, #1
   81c34: 08 fd 41 d3  	lsr	x8, x8, #1
   81c38: 38 fd 41 d3  	lsr	x24, x9, #1
   81c3c: 35 5c 42 a9  	ldp	x21, x23, [x1, #32]
   81c40: 36 34 40 b9  	ldr	w22, [x1, #52]
   81c44: 19 05 00 91  	add	x25, x8, #1
   81c48: 39 07 00 f1  	subs	x25, x25, #1
   81c4c: e0 00 00 54  	b.eq	0x81c68 <_ZN44_$LT$$RF$T$u20$as$u20$core..fmt..Display$GT$3fmt17h36ba8db926b991f8E+0x33c>
   81c50: e8 12 40 f9  	ldr	x8, [x23, #32]
   81c54: e0 03 15 aa  	mov	x0, x21
   81c58: e1 03 16 2a  	mov	w1, w22
   81c5c: 00 01 3f d6  	blr	x8
   81c60: 40 ff 07 36  	tbz	w0, #0, 0x81c48 <_ZN44_$LT$$RF$T$u20$as$u20$core..fmt..Display$GT$3fmt17h36ba8db926b991f8E+0x31c>
   81c64: 0a 00 00 14  	b	0x81c8c <_ZN44_$LT$$RF$T$u20$as$u20$core..fmt..Display$GT$3fmt17h36ba8db926b991f8E+0x360>
   81c68: df 42 44 71  	cmp	w22, #272, lsl #12
   81c6c: f8 03 98 9a  	csel	x24, xzr, x24, eq
   81c70: e0 00 00 54  	b.eq	0x81c8c <_ZN44_$LT$$RF$T$u20$as$u20$core..fmt..Display$GT$3fmt17h36ba8db926b991f8E+0x360>
   81c74: e8 0e 40 f9  	ldr	x8, [x23, #24]
   81c78: e0 03 15 aa  	mov	x0, x21
   81c7c: e1 03 14 aa  	mov	x1, x20
   81c80: e2 03 13 aa  	mov	x2, x19
   81c84: 00 01 3f d6  	blr	x8
   81c88: e0 00 00 36  	tbz	w0, #0, 0x81ca4 <_ZN44_$LT$$RF$T$u20$as$u20$core..fmt..Display$GT$3fmt17h36ba8db926b991f8E+0x378>
   81c8c: 20 00 80 52  	mov	w0, #1
   81c90: f4 4f 43 a9  	ldp	x20, x19, [sp, #48]
   81c94: f6 57 42 a9  	ldp	x22, x21, [sp, #32]
   81c98: f8 5f 41 a9  	ldp	x24, x23, [sp, #16]
   81c9c: fe 67 c4 a8  	ldp	x30, x25, [sp], #64
   81ca0: c0 03 5f d6  	ret
   81ca4: f3 03 1f aa  	mov	x19, xzr
   81ca8: 1f 03 13 eb  	cmp	x24, x19
   81cac: a0 02 00 54  	b.eq	0x81d00 <_ZN44_$LT$$RF$T$u20$as$u20$core..fmt..Display$GT$3fmt17h36ba8db926b991f8E+0x3d4>
   81cb0: e8 12 40 f9  	ldr	x8, [x23, #32]
   81cb4: e0 03 15 aa  	mov	x0, x21
   81cb8: e1 03 16 2a  	mov	w1, w22
   81cbc: 73 06 00 91  	add	x19, x19, #1
   81cc0: 00 01 3f d6  	blr	x8
   81cc4: 20 ff ff 34  	cbz	w0, 0x81ca8 <_ZN44_$LT$$RF$T$u20$as$u20$core..fmt..Display$GT$3fmt17h36ba8db926b991f8E+0x37c>
   81cc8: 68 06 00 d1  	sub	x8, x19, #1
   81ccc: 0e 00 00 14  	b	0x81d04 <_ZN44_$LT$$RF$T$u20$as$u20$core..fmt..Display$GT$3fmt17h36ba8db926b991f8E+0x3d8>
   81cd0: ec 03 1f 2a  	mov	w12, wzr
   81cd4: ed 03 0a aa  	mov	x13, x10
   81cd8: 7f 81 03 71  	cmp	w11, #224
   81cdc: c3 eb ff 54  	b.lo	0x81a54 <_ZN44_$LT$$RF$T$u20$as$u20$core..fmt..Display$GT$3fmt17h36ba8db926b991f8E+0x128>
   81ce0: bf 01 0a eb  	cmp	x13, x10
   81ce4: 60 01 00 54  	b.eq	0x81d10 <_ZN44_$LT$$RF$T$u20$as$u20$core..fmt..Display$GT$3fmt17h36ba8db926b991f8E+0x3e4>
   81ce8: ae 15 40 38  	ldrb	w14, [x13], #1
   81cec: ce 15 00 12  	and	w14, w14, #0x3f
   81cf0: ce 65 1a 53  	lsl	w14, w14, #6
   81cf4: 7f c1 03 71  	cmp	w11, #240
   81cf8: 42 01 00 54  	b.hs	0x81d20 <_ZN44_$LT$$RF$T$u20$as$u20$core..fmt..Display$GT$3fmt17h36ba8db926b991f8E+0x3f4>
   81cfc: 56 ff ff 17  	b	0x81a54 <_ZN44_$LT$$RF$T$u20$as$u20$core..fmt..Display$GT$3fmt17h36ba8db926b991f8E+0x128>
   81d00: e8 03 18 aa  	mov	x8, x24
   81d04: 1f 01 18 eb  	cmp	x8, x24
   81d08: e0 27 9f 1a  	cset	w0, lo
   81d0c: e1 ff ff 17  	b	0x81c90 <_ZN44_$LT$$RF$T$u20$as$u20$core..fmt..Display$GT$3fmt17h36ba8db926b991f8E+0x364>
   81d10: ee 03 1f 2a  	mov	w14, wzr
   81d14: ed 03 0a aa  	mov	x13, x10
   81d18: 7f c1 03 71  	cmp	w11, #240
   81d1c: c3 e9 ff 54  	b.lo	0x81a54 <_ZN44_$LT$$RF$T$u20$as$u20$core..fmt..Display$GT$3fmt17h36ba8db926b991f8E+0x128>
   81d20: bf 01 0a eb  	cmp	x13, x10
   81d24: 80 00 00 54  	b.eq	0x81d34 <_ZN44_$LT$$RF$T$u20$as$u20$core..fmt..Display$GT$3fmt17h36ba8db926b991f8E+0x408>
   81d28: aa 01 40 39  	ldrb	w10, [x13]
   81d2c: 4a 15 00 12  	and	w10, w10, #0x3f
   81d30: 02 00 00 14  	b	0x81d38 <_ZN44_$LT$$RF$T$u20$as$u20$core..fmt..Display$GT$3fmt17h36ba8db926b991f8E+0x40c>
   81d34: ea 03 1f 2a  	mov	w10, wzr
   81d38: 6c 09 0e 33  	bfi	w12, w11, #18, #3
   81d3c: 8b 01 0e 2a  	orr	w11, w12, w14
   81d40: 6a 01 0a 2a  	orr	w10, w11, w10
   81d44: 5f 41 44 71  	cmp	w10, #272, lsl #12
   81d48: 80 eb ff 54  	b.eq	0x81ab8 <_ZN44_$LT$$RF$T$u20$as$u20$core..fmt..Display$GT$3fmt17h36ba8db926b991f8E+0x18c>
   81d4c: 42 ff ff 17  	b	0x81a54 <_ZN44_$LT$$RF$T$u20$as$u20$core..fmt..Display$GT$3fmt17h36ba8db926b991f8E+0x128>

0000000000081d50 <_ZN42_$LT$$RF$T$u20$as$u20$core..fmt..Debug$GT$3fmt17h06e6f11dfdb75eceE>:
   81d50: 00 20 40 a9  	ldp	x0, x8, [x0]
   81d54: 02 0d 40 f9  	ldr	x2, [x8, #24]
   81d58: 40 00 1f d6  	br	x2

0000000000081d5c <_ZN4core3fmt5write17h63775af3066fbce8E>:
   81d5c: ff 43 02 d1  	sub	sp, sp, #144
   81d60: fe 23 00 f9  	str	x30, [sp, #64]
   81d64: fa 67 05 a9  	stp	x26, x25, [sp, #80]
   81d68: f8 5f 06 a9  	stp	x24, x23, [sp, #96]
   81d6c: f6 57 07 a9  	stp	x22, x21, [sp, #112]
   81d70: f4 4f 08 a9  	stp	x20, x19, [sp, #128]
   81d74: 28 00 00 90  	adrp	x8, 0x85000 <_ZN4core3fmt5write17h63775af3066fbce8E+0x28>
   81d78: 00 25 44 fd  	ldr	d0, [x8, #2120]
   81d7c: 48 08 40 f9  	ldr	x8, [x2, #16]
   81d80: f3 03 02 aa  	mov	x19, x2
   81d84: 69 00 80 52  	mov	w9, #3
   81d88: ff 03 00 f9  	str	xzr, [sp]
   81d8c: ff 0b 00 f9  	str	xzr, [sp, #16]
   81d90: e9 e3 00 39  	strb	w9, [sp, #56]
   81d94: e0 1b 00 fd  	str	d0, [sp, #48]
   81d98: e0 07 02 a9  	stp	x0, x1, [sp, #32]
   81d9c: 88 08 00 b4  	cbz	x8, 0x81eac <_ZN4core3fmt5write17h63775af3066fbce8E+0x150>
   81da0: 69 0e 40 f9  	ldr	x9, [x19, #24]
   81da4: 74 56 40 a9  	ldp	x20, x21, [x19]
   81da8: 3f 01 15 eb  	cmp	x9, x21
   81dac: b6 82 89 9a  	csel	x22, x21, x9, hi
   81db0: f6 0a 00 b4  	cbz	x22, 0x81f0c <_ZN4core3fmt5write17h63775af3066fbce8E+0x1b0>
   81db4: 19 00 00 90  	adrp	x25, 0x81000 <_ZN4core3fmt5write17h63775af3066fbce8E+0x58>
   81db8: 97 22 00 91  	add	x23, x20, #8
   81dbc: 18 61 00 91  	add	x24, x8, #24
   81dc0: 39 53 0c 91  	add	x25, x25, #788
   81dc4: fa 03 16 aa  	mov	x26, x22
   81dc8: e2 02 40 f9  	ldr	x2, [x23]
   81dcc: c2 00 00 b4  	cbz	x2, 0x81de4 <_ZN4core3fmt5write17h63775af3066fbce8E+0x88>
   81dd0: e0 23 42 a9  	ldp	x0, x8, [sp, #32]
   81dd4: e1 82 5f f8  	ldur	x1, [x23, #-8]
   81dd8: 08 0d 40 f9  	ldr	x8, [x8, #24]
   81ddc: 00 01 3f d6  	blr	x8
   81de0: 60 0a 00 37  	tbnz	w0, #0, 0x81f2c <_ZN4core3fmt5write17h63775af3066fbce8E+0x1d0>
   81de4: 08 63 40 39  	ldrb	w8, [x24, #24]
   81de8: e8 e3 00 39  	strb	w8, [sp, #56]
   81dec: 00 0b 40 fd  	ldr	d0, [x24, #16]
   81df0: 68 12 40 f9  	ldr	x8, [x19, #32]
   81df4: 00 08 a0 0e  	rev64	v0.2s, v0.2s
   81df8: e0 1b 00 fd  	str	d0, [sp, #48]
   81dfc: 0a 27 40 a9  	ldp	x10, x9, [x24]
   81e00: ea 01 00 b4  	cbz	x10, 0x81e3c <_ZN4core3fmt5write17h63775af3066fbce8E+0xe0>
   81e04: 5f 05 00 f1  	cmp	x10, #1
   81e08: a1 00 00 54  	b.ne	0x81e1c <_ZN4core3fmt5write17h63775af3066fbce8E+0xc0>
   81e0c: 0a 11 09 8b  	add	x10, x8, x9, lsl #4
   81e10: 4a 05 40 f9  	ldr	x10, [x10, #8]
   81e14: 5f 01 19 eb  	cmp	x10, x25
   81e18: c0 00 00 54  	b.eq	0x81e30 <_ZN4core3fmt5write17h63775af3066fbce8E+0xd4>
   81e1c: ea 03 1f aa  	mov	x10, xzr
   81e20: ea 27 00 a9  	stp	x10, x9, [sp]
   81e24: 0a 27 7f a9  	ldp	x10, x9, [x24, #-16]
   81e28: 2a 01 00 b5  	cbnz	x10, 0x81e4c <_ZN4core3fmt5write17h63775af3066fbce8E+0xf0>
   81e2c: 13 00 00 14  	b	0x81e78 <_ZN4core3fmt5write17h63775af3066fbce8E+0x11c>
   81e30: 29 ed 7c d3  	lsl	x9, x9, #4
   81e34: 09 69 69 f8  	ldr	x9, [x8, x9]
   81e38: 29 01 40 f9  	ldr	x9, [x9]
   81e3c: 2a 00 80 52  	mov	w10, #1
   81e40: ea 27 00 a9  	stp	x10, x9, [sp]
   81e44: 0a 27 7f a9  	ldp	x10, x9, [x24, #-16]
   81e48: 8a 01 00 b4  	cbz	x10, 0x81e78 <_ZN4core3fmt5write17h63775af3066fbce8E+0x11c>
   81e4c: 5f 05 00 f1  	cmp	x10, #1
   81e50: a1 00 00 54  	b.ne	0x81e64 <_ZN4core3fmt5write17h63775af3066fbce8E+0x108>
   81e54: 0a 11 09 8b  	add	x10, x8, x9, lsl #4
   81e58: 4a 05 40 f9  	ldr	x10, [x10, #8]
   81e5c: 5f 01 19 eb  	cmp	x10, x25
   81e60: 60 00 00 54  	b.eq	0x81e6c <_ZN4core3fmt5write17h63775af3066fbce8E+0x110>
   81e64: ea 03 1f aa  	mov	x10, xzr
   81e68: 05 00 00 14  	b	0x81e7c <_ZN4core3fmt5write17h63775af3066fbce8E+0x120>
   81e6c: 29 ed 7c d3  	lsl	x9, x9, #4
   81e70: 09 69 69 f8  	ldr	x9, [x8, x9]
   81e74: 29 01 40 f9  	ldr	x9, [x9]
   81e78: 2a 00 80 52  	mov	w10, #1
   81e7c: ea 27 01 a9  	stp	x10, x9, [sp, #16]
   81e80: 09 83 5e f8  	ldur	x9, [x24, #-24]
   81e84: e1 03 00 91  	mov	x1, sp
   81e88: 08 11 09 8b  	add	x8, x8, x9, lsl #4
   81e8c: 00 25 40 a9  	ldp	x0, x9, [x8]
   81e90: 20 01 3f d6  	blr	x9
   81e94: c0 04 00 37  	tbnz	w0, #0, 0x81f2c <_ZN4core3fmt5write17h63775af3066fbce8E+0x1d0>
   81e98: f7 42 00 91  	add	x23, x23, #16
   81e9c: 5a 07 00 f1  	subs	x26, x26, #1
   81ea0: 18 e3 00 91  	add	x24, x24, #56
   81ea4: 21 f9 ff 54  	b.ne	0x81dc8 <_ZN4core3fmt5write17h63775af3066fbce8E+0x6c>
   81ea8: 19 00 00 14  	b	0x81f0c <_ZN4core3fmt5write17h63775af3066fbce8E+0x1b0>
   81eac: 68 16 40 f9  	ldr	x8, [x19, #40]
   81eb0: 74 56 40 a9  	ldp	x20, x21, [x19]
   81eb4: 1f 01 15 eb  	cmp	x8, x21
   81eb8: b6 82 88 9a  	csel	x22, x21, x8, hi
   81ebc: 96 02 00 b4  	cbz	x22, 0x81f0c <_ZN4core3fmt5write17h63775af3066fbce8E+0x1b0>
   81ec0: 73 12 40 f9  	ldr	x19, [x19, #32]
   81ec4: f7 03 1f aa  	mov	x23, xzr
   81ec8: f8 03 16 aa  	mov	x24, x22
   81ecc: 88 02 17 8b  	add	x8, x20, x23
   81ed0: 02 05 40 f9  	ldr	x2, [x8, #8]
   81ed4: c2 00 00 b4  	cbz	x2, 0x81eec <_ZN4core3fmt5write17h63775af3066fbce8E+0x190>
   81ed8: e0 23 42 a9  	ldp	x0, x8, [sp, #32]
   81edc: 81 6a 77 f8  	ldr	x1, [x20, x23]
   81ee0: 08 0d 40 f9  	ldr	x8, [x8, #24]
   81ee4: 00 01 3f d6  	blr	x8
   81ee8: 20 02 00 37  	tbnz	w0, #0, 0x81f2c <_ZN4core3fmt5write17h63775af3066fbce8E+0x1d0>
   81eec: 68 02 17 8b  	add	x8, x19, x23
   81ef0: 00 25 40 a9  	ldp	x0, x9, [x8]
   81ef4: e1 03 00 91  	mov	x1, sp
   81ef8: 20 01 3f d6  	blr	x9
   81efc: 80 01 00 37  	tbnz	w0, #0, 0x81f2c <_ZN4core3fmt5write17h63775af3066fbce8E+0x1d0>
   81f00: 18 07 00 f1  	subs	x24, x24, #1
   81f04: f7 42 00 91  	add	x23, x23, #16
   81f08: 21 fe ff 54  	b.ne	0x81ecc <_ZN4core3fmt5write17h63775af3066fbce8E+0x170>
   81f0c: df 02 15 eb  	cmp	x22, x21
   81f10: 22 01 00 54  	b.hs	0x81f34 <_ZN4core3fmt5write17h63775af3066fbce8E+0x1d8>
   81f14: e0 23 42 a9  	ldp	x0, x8, [sp, #32]
   81f18: 89 12 16 8b  	add	x9, x20, x22, lsl #4
   81f1c: 21 09 40 a9  	ldp	x1, x2, [x9]
   81f20: 08 0d 40 f9  	ldr	x8, [x8, #24]
   81f24: 00 01 3f d6  	blr	x8
   81f28: 60 00 00 36  	tbz	w0, #0, 0x81f34 <_ZN4core3fmt5write17h63775af3066fbce8E+0x1d8>
   81f2c: 20 00 80 52  	mov	w0, #1
   81f30: 02 00 00 14  	b	0x81f38 <_ZN4core3fmt5write17h63775af3066fbce8E+0x1dc>
   81f34: e0 03 1f 2a  	mov	w0, wzr
   81f38: f4 4f 48 a9  	ldp	x20, x19, [sp, #128]
   81f3c: f6 57 47 a9  	ldp	x22, x21, [sp, #112]
   81f40: f8 5f 46 a9  	ldp	x24, x23, [sp, #96]
   81f44: fa 67 45 a9  	ldp	x26, x25, [sp, #80]
   81f48: fe 23 40 f9  	ldr	x30, [sp, #64]
   81f4c: ff 43 02 91  	add	sp, sp, #144
   81f50: c0 03 5f d6  	ret

0000000000081f54 <_ZN4core5slice5index22slice_index_order_fail17h806852bf6aeb5b48E>:
   81f54: e0 07 ba a9  	stp	x0, x1, [sp, #-96]!
   81f58: 09 00 00 90  	adrp	x9, 0x81000 <_ZN4core5slice5index22slice_index_order_fail17h806852bf6aeb5b48E+0x4>
   81f5c: e8 03 00 91  	mov	x8, sp
   81f60: 29 91 0d 91  	add	x9, x9, #868
   81f64: 2b 00 00 b0  	adrp	x11, 0x86000 <_ZN4core5slice5index22slice_index_order_fail17h806852bf6aeb5b48E+0x24>
   81f68: ea 23 00 91  	add	x10, sp, #8
   81f6c: 6b 01 0f 91  	add	x11, x11, #960
   81f70: 4c 00 80 52  	mov	w12, #2
   81f74: e8 27 04 a9  	stp	x8, x9, [sp, #64]
   81f78: e8 03 01 91  	add	x8, sp, #64
   81f7c: e0 43 00 91  	add	x0, sp, #16
   81f80: e1 03 02 aa  	mov	x1, x2
   81f84: ff 7f 02 a9  	stp	xzr, xzr, [sp, #32]
   81f88: ea 27 05 a9  	stp	x10, x9, [sp, #80]
   81f8c: eb 33 01 a9  	stp	x11, x12, [sp, #16]
   81f90: e8 33 03 a9  	stp	x8, x12, [sp, #48]
   81f94: 52 fd ff 97  	bl	0x814dc <_ZN4core9panicking9panic_fmt17h136e9995f1aed1cdE>
   81f98: 20 00 20 d4  	brk	#0x1

0000000000081f9c <_ZN4core3fmt3num3imp52_$LT$impl$u20$core..fmt..Display$u20$for$u20$u32$GT$3fmt17hc90bd5e1868e80e2E>:
   81f9c: ff 03 01 d1  	sub	sp, sp, #64
   81fa0: fe 1b 00 f9  	str	x30, [sp, #48]
   81fa4: 0a 00 40 b9  	ldr	w10, [x0]
   81fa8: e8 03 01 aa  	mov	x8, x1
   81fac: 49 7d 44 d3  	ubfx	x9, x10, #4, #28
   81fb0: 3f c5 09 71  	cmp	w9, #625
   81fb4: 29 00 00 b0  	adrp	x9, 0x86000 <_ZN4core3fmt3num3imp52_$LT$impl$u20$core..fmt..Display$u20$for$u20$u32$GT$3fmt17hc90bd5e1868e80e2E+0x2c>
   81fb8: 29 e9 08 91  	add	x9, x9, #570
   81fbc: e3 04 00 54  	b.lo	0x82058 <_ZN4core3fmt3num3imp52_$LT$impl$u20$core..fmt..Display$u20$for$u20$u32$GT$3fmt17hc90bd5e1868e80e2E+0xbc>
   81fc0: 6c 29 8b d2  	mov	x12, #22859
   81fc4: cc 10 a7 f2  	movk	x12, #14470, lsl #16
   81fc8: cc ba d8 f2  	movk	x12, #50646, lsl #32
   81fcc: ee a3 90 52  	mov	w14, #34079
   81fd0: f1 1f 9c 52  	mov	w17, #57599
   81fd4: eb 03 1f aa  	mov	x11, xzr
   81fd8: ac 8d e6 f2  	movk	x12, #13421, lsl #48
   81fdc: ed e1 84 12  	mov	w13, #-10000
   81fe0: 6e 3d aa 72  	movk	w14, #20971, lsl #16
   81fe4: 6f 0c 80 12  	mov	w15, #-100
   81fe8: f0 23 00 91  	add	x16, sp, #8
   81fec: b1 be a0 72  	movk	w17, #1525, lsl #16
   81ff0: f2 03 0a aa  	mov	x18, x10
   81ff4: 4a 7d cc 9b  	umulh	x10, x10, x12
   81ff8: 4a fd 4b d3  	lsr	x10, x10, #11
   81ffc: 5f 02 11 eb  	cmp	x18, x17
   82000: 52 49 0d 1b  	madd	w18, w10, w13, w18
   82004: 41 3e 00 12  	and	w1, w18, #0xffff
   82008: 21 7c ae 9b  	umull	x1, w1, w14
   8200c: 21 fc 65 d3  	lsr	x1, x1, #37
   82010: 32 48 0f 1b  	madd	w18, w1, w15, w18
   82014: 21 05 01 8b  	add	x1, x9, x1, lsl #1
   82018: 32 25 32 8b  	add	x18, x9, w18, uxth #1
   8201c: 22 00 40 39  	ldrb	w2, [x1]
   82020: 21 04 40 39  	ldrb	w1, [x1, #1]
   82024: 43 06 40 39  	ldrb	w3, [x18, #1]
   82028: 52 02 40 39  	ldrb	w18, [x18]
   8202c: 00 02 0b 8b  	add	x0, x16, x11
   82030: 6b 11 00 d1  	sub	x11, x11, #4
   82034: 01 90 00 39  	strb	w1, [x0, #36]
   82038: 02 8c 00 39  	strb	w2, [x0, #35]
   8203c: 03 98 00 39  	strb	w3, [x0, #38]
   82040: 12 94 00 39  	strb	w18, [x0, #37]
   82044: 68 fd ff 54  	b.hi	0x81ff0 <_ZN4core3fmt3num3imp52_$LT$impl$u20$core..fmt..Display$u20$for$u20$u32$GT$3fmt17hc90bd5e1868e80e2E+0x54>
   82048: 6b 9d 00 91  	add	x11, x11, #39
   8204c: 5f 8d 01 f1  	cmp	x10, #99
   82050: a8 00 00 54  	b.hi	0x82064 <_ZN4core3fmt3num3imp52_$LT$impl$u20$core..fmt..Display$u20$for$u20$u32$GT$3fmt17hc90bd5e1868e80e2E+0xc8>
   82054: 14 00 00 14  	b	0x820a4 <_ZN4core3fmt3num3imp52_$LT$impl$u20$core..fmt..Display$u20$for$u20$u32$GT$3fmt17hc90bd5e1868e80e2E+0x108>
   82058: eb 04 80 52  	mov	w11, #39
   8205c: 5f 8d 01 f1  	cmp	x10, #99
   82060: 29 02 00 54  	b.ls	0x820a4 <_ZN4core3fmt3num3imp52_$LT$impl$u20$core..fmt..Display$u20$for$u20$u32$GT$3fmt17hc90bd5e1868e80e2E+0x108>
   82064: ed a3 90 52  	mov	w13, #34079
   82068: 4c 3d 00 12  	and	w12, w10, #0xffff
   8206c: 6d 3d aa 72  	movk	w13, #20971, lsl #16
   82070: 8c 7d ad 9b  	umull	x12, w12, w13
   82074: 6e 0c 80 12  	mov	w14, #-100
   82078: 8c fd 65 d3  	lsr	x12, x12, #37
   8207c: 8a 29 0e 1b  	madd	w10, w12, w14, w10
   82080: 2a 25 2a 8b  	add	x10, x9, w10, uxth #1
   82084: 4d 05 40 39  	ldrb	w13, [x10, #1]
   82088: 4a 01 40 39  	ldrb	w10, [x10]
   8208c: 6b 09 00 d1  	sub	x11, x11, #2
   82090: ee 23 00 91  	add	x14, sp, #8
   82094: ce 01 0b 8b  	add	x14, x14, x11
   82098: ca 01 00 39  	strb	w10, [x14]
   8209c: ea 03 0c aa  	mov	x10, x12
   820a0: cd 05 00 39  	strb	w13, [x14, #1]
   820a4: 5f 29 00 f1  	cmp	x10, #10
   820a8: ca 00 00 54  	b.ge	0x820c0 <_ZN4core3fmt3num3imp52_$LT$impl$u20$core..fmt..Display$u20$for$u20$u32$GT$3fmt17hc90bd5e1868e80e2E+0x124>
   820ac: 6b 05 00 d1  	sub	x11, x11, #1
   820b0: 49 c1 00 11  	add	w9, w10, #48
   820b4: ea 23 00 91  	add	x10, sp, #8
   820b8: 49 69 2b 38  	strb	w9, [x10, x11]
   820bc: 09 00 00 14  	b	0x820e0 <_ZN4core3fmt3num3imp52_$LT$impl$u20$core..fmt..Display$u20$for$u20$u32$GT$3fmt17hc90bd5e1868e80e2E+0x144>
   820c0: 29 05 0a 8b  	add	x9, x9, x10, lsl #1
   820c4: 2a 05 40 39  	ldrb	w10, [x9, #1]
   820c8: 29 01 40 39  	ldrb	w9, [x9]
   820cc: 6b 09 00 d1  	sub	x11, x11, #2
   820d0: ec 23 00 91  	add	x12, sp, #8
   820d4: 8c 01 0b 8b  	add	x12, x12, x11
   820d8: 8a 05 00 39  	strb	w10, [x12, #1]
   820dc: 89 01 00 39  	strb	w9, [x12]
   820e0: e9 23 00 91  	add	x9, sp, #8
   820e4: ea 04 80 52  	mov	w10, #39
   820e8: 22 00 00 90  	adrp	x2, 0x86000 <_ZN4core3fmt3num3imp52_$LT$impl$u20$core..fmt..Display$u20$for$u20$u32$GT$3fmt17hc90bd5e1868e80e2E+0x15c>
   820ec: 24 01 0b 8b  	add	x4, x9, x11
   820f0: 45 01 0b cb  	sub	x5, x10, x11
   820f4: 42 a0 06 91  	add	x2, x2, #424
   820f8: 21 00 80 52  	mov	w1, #1
   820fc: e0 03 08 aa  	mov	x0, x8
   82100: e3 03 1f aa  	mov	x3, xzr
   82104: 05 fd ff 97  	bl	0x81518 <_ZN4core3fmt9Formatter12pad_integral17ha6f583ca7a70f44dE>
   82108: fe 1b 40 f9  	ldr	x30, [sp, #48]
   8210c: ff 03 01 91  	add	sp, sp, #64
   82110: c0 03 5f d6  	ret

0000000000082114 <_ZN4core6result13unwrap_failed17he5d63f92106ab51dE>:
   82114: ff c3 01 d1  	sub	sp, sp, #112
   82118: 68 05 80 52  	mov	w8, #43
   8211c: ea ff ff f0  	adrp	x10, 0x81000 <_ZN4core6result13unwrap_failed17he5d63f92106ab51dE+0x4>
   82120: e9 03 00 91  	mov	x9, sp
   82124: 4a b1 24 91  	add	x10, x10, #2348
   82128: ec ff ff f0  	adrp	x12, 0x81000 <_ZN4core6result13unwrap_failed17he5d63f92106ab51dE+0x10>
   8212c: e0 23 00 a9  	stp	x0, x8, [sp]
   82130: 28 00 00 90  	adrp	x8, 0x86000 <_ZN4core6result13unwrap_failed17he5d63f92106ab51dE+0x2c>
   82134: e1 0b 01 a9  	stp	x1, x2, [sp, #16]
   82138: eb 43 00 91  	add	x11, sp, #16
   8213c: 8c 41 35 91  	add	x12, x12, #3408
   82140: 08 a1 10 91  	add	x8, x8, #1064
   82144: e9 2b 05 a9  	stp	x9, x10, [sp, #80]
   82148: 49 00 80 52  	mov	w9, #2
   8214c: ea 43 01 91  	add	x10, sp, #80
   82150: e0 83 00 91  	add	x0, sp, #32
   82154: e1 03 03 aa  	mov	x1, x3
   82158: ff 7f 03 a9  	stp	xzr, xzr, [sp, #48]
   8215c: eb 33 06 a9  	stp	x11, x12, [sp, #96]
   82160: e8 27 02 a9  	stp	x8, x9, [sp, #32]
   82164: ea 27 04 a9  	stp	x10, x9, [sp, #64]
   82168: dd fc ff 97  	bl	0x814dc <_ZN4core9panicking9panic_fmt17h136e9995f1aed1cdE>
   8216c: 20 00 20 d4  	brk	#0x1

0000000000082170 <_ZN68_$LT$core..fmt..builders..PadAdapter$u20$as$u20$core..fmt..Write$GT$9write_str17h3825e647a41714ecE>:
   82170: ff 83 01 d1  	sub	sp, sp, #96
   82174: fe 67 02 a9  	stp	x30, x25, [sp, #32]
   82178: f8 5f 03 a9  	stp	x24, x23, [sp, #48]
   8217c: f6 57 04 a9  	stp	x22, x21, [sp, #64]
   82180: f4 4f 05 a9  	stp	x20, x19, [sp, #80]
   82184: 62 12 00 b4  	cbz	x2, 0x823d0 <_ZN68_$LT$core..fmt..builders..PadAdapter$u20$as$u20$core..fmt..Write$GT$9write_str17h3825e647a41714ecE+0x260>
   82188: 19 e0 40 a9  	ldp	x25, x24, [x0, #8]
   8218c: 15 00 40 f9  	ldr	x21, [x0]
   82190: e8 db 07 b2  	mov	x8, #-72340172838076674
   82194: e8 df 9f f2  	movk	x8, #65279
   82198: 36 00 00 90  	adrp	x22, 0x86000 <_ZN68_$LT$core..fmt..builders..PadAdapter$u20$as$u20$core..fmt..Write$GT$9write_str17h3825e647a41714ecE+0x38>
   8219c: f3 03 02 aa  	mov	x19, x2
   821a0: f4 03 01 aa  	mov	x20, x1
   821a4: 42 e5 00 4f  	movi	v2.16b, #10
   821a8: 03 0d 08 4e  	dup	v3.2d, x8
   821ac: 04 e4 04 4f  	movi	v4.16b, #128
   821b0: d6 a2 11 91  	add	x22, x22, #1128
   821b4: e3 03 80 3d  	str	q3, [sp]
   821b8: 07 00 00 14  	b	0x821d4 <_ZN68_$LT$core..fmt..builders..PadAdapter$u20$as$u20$core..fmt..Write$GT$9write_str17h3825e647a41714ecE+0x64>
   821bc: e3 03 c0 3d  	ldr	q3, [sp]
   821c0: 73 02 17 eb  	subs	x19, x19, x23
   821c4: 94 02 17 8b  	add	x20, x20, x23
   821c8: 42 e5 00 4f  	movi	v2.16b, #10
   821cc: 04 e4 04 4f  	movi	v4.16b, #128
   821d0: 00 10 00 54  	b.eq	0x823d0 <_ZN68_$LT$core..fmt..builders..PadAdapter$u20$as$u20$core..fmt..Write$GT$9write_str17h3825e647a41714ecE+0x260>
   821d4: 08 03 40 39  	ldrb	w8, [x24]
   821d8: 48 01 00 34  	cbz	w8, 0x82200 <_ZN68_$LT$core..fmt..builders..PadAdapter$u20$as$u20$core..fmt..Write$GT$9write_str17h3825e647a41714ecE+0x90>
   821dc: 28 0f 40 f9  	ldr	x8, [x25, #24]
   821e0: 82 00 80 52  	mov	w2, #4
   821e4: e0 03 15 aa  	mov	x0, x21
   821e8: e1 03 16 aa  	mov	x1, x22
   821ec: 00 01 3f d6  	blr	x8
   821f0: e3 03 c0 3d  	ldr	q3, [sp]
   821f4: 04 e4 04 4f  	movi	v4.16b, #128
   821f8: 42 e5 00 4f  	movi	v2.16b, #10
   821fc: e0 0e 00 37  	tbnz	w0, #0, 0x823d8 <_ZN68_$LT$core..fmt..builders..PadAdapter$u20$as$u20$core..fmt..Write$GT$9write_str17h3825e647a41714ecE+0x268>
   82200: f7 03 1f aa  	mov	x23, xzr
   82204: e1 03 13 aa  	mov	x1, x19
   82208: 05 00 00 14  	b	0x8221c <_ZN68_$LT$core..fmt..builders..PadAdapter$u20$as$u20$core..fmt..Write$GT$9write_str17h3825e647a41714ecE+0xac>
   8220c: 68 02 17 eb  	subs	x8, x19, x23
   82210: e1 33 88 9a  	csel	x1, xzr, x8, lo
   82214: ff 02 13 eb  	cmp	x23, x19
   82218: a8 0a 00 54  	b.hi	0x8236c <_ZN68_$LT$core..fmt..builders..PadAdapter$u20$as$u20$core..fmt..Write$GT$9write_str17h3825e647a41714ecE+0x1fc>
   8221c: 28 40 00 f1  	subs	x8, x1, #16
   82220: 62 01 00 54  	b.hs	0x8224c <_ZN68_$LT$core..fmt..builders..PadAdapter$u20$as$u20$core..fmt..Write$GT$9write_str17h3825e647a41714ecE+0xdc>
   82224: 41 0a 00 b4  	cbz	x1, 0x8236c <_ZN68_$LT$core..fmt..builders..PadAdapter$u20$as$u20$core..fmt..Write$GT$9write_str17h3825e647a41714ecE+0x1fc>
   82228: e9 03 1f aa  	mov	x9, xzr
   8222c: 88 02 17 8b  	add	x8, x20, x23
   82230: 0a 69 69 38  	ldrb	w10, [x8, x9]
   82234: 5f 29 00 71  	cmp	w10, #10
   82238: 40 07 00 54  	b.eq	0x82320 <_ZN68_$LT$core..fmt..builders..PadAdapter$u20$as$u20$core..fmt..Write$GT$9write_str17h3825e647a41714ecE+0x1b0>
   8223c: 29 05 00 91  	add	x9, x9, #1
   82240: 3f 00 09 eb  	cmp	x1, x9
   82244: 61 ff ff 54  	b.ne	0x82230 <_ZN68_$LT$core..fmt..builders..PadAdapter$u20$as$u20$core..fmt..Write$GT$9write_str17h3825e647a41714ecE+0xc0>
   82248: 49 00 00 14  	b	0x8236c <_ZN68_$LT$core..fmt..builders..PadAdapter$u20$as$u20$core..fmt..Write$GT$9write_str17h3825e647a41714ecE+0x1fc>
   8224c: 89 02 17 8b  	add	x9, x20, x23
   82250: 2a 1d 00 91  	add	x10, x9, #7
   82254: 4a f1 7d 92  	and	x10, x10, #0xfffffffffffffff8
   82258: 4a 01 09 eb  	subs	x10, x10, x9
   8225c: c0 01 00 54  	b.eq	0x82294 <_ZN68_$LT$core..fmt..builders..PadAdapter$u20$as$u20$core..fmt..Write$GT$9write_str17h3825e647a41714ecE+0x124>
   82260: 5f 01 01 eb  	cmp	x10, x1
   82264: e9 03 1f aa  	mov	x9, xzr
   82268: 20 80 8a 9a  	csel	x0, x1, x10, hi
   8226c: 8a 02 17 8b  	add	x10, x20, x23
   82270: 4b 69 69 38  	ldrb	w11, [x10, x9]
   82274: 7f 29 00 71  	cmp	w11, #10
   82278: 40 05 00 54  	b.eq	0x82320 <_ZN68_$LT$core..fmt..builders..PadAdapter$u20$as$u20$core..fmt..Write$GT$9write_str17h3825e647a41714ecE+0x1b0>
   8227c: 29 05 00 91  	add	x9, x9, #1
   82280: 1f 00 09 eb  	cmp	x0, x9
   82284: 61 ff ff 54  	b.ne	0x82270 <_ZN68_$LT$core..fmt..builders..PadAdapter$u20$as$u20$core..fmt..Write$GT$9write_str17h3825e647a41714ecE+0x100>
   82288: 1f 00 08 eb  	cmp	x0, x8
   8228c: 69 00 00 54  	b.ls	0x82298 <_ZN68_$LT$core..fmt..builders..PadAdapter$u20$as$u20$core..fmt..Write$GT$9write_str17h3825e647a41714ecE+0x128>
   82290: 16 00 00 14  	b	0x822e8 <_ZN68_$LT$core..fmt..builders..PadAdapter$u20$as$u20$core..fmt..Write$GT$9write_str17h3825e647a41714ecE+0x178>
   82294: e0 03 1f aa  	mov	x0, xzr
   82298: 89 02 17 8b  	add	x9, x20, x23
   8229c: 2a 01 00 8b  	add	x10, x9, x0
   822a0: 4b 05 40 f9  	ldr	x11, [x10, #8]
   822a4: eb 0f 00 f9  	str	x11, [sp, #24]
   822a8: 4a 01 40 f9  	ldr	x10, [x10]
   822ac: ea 0b 00 f9  	str	x10, [sp, #16]
   822b0: e0 07 c0 3d  	ldr	q0, [sp, #16]
   822b4: 01 1c 22 6e  	eor	v1.16b, v0.16b, v2.16b
   822b8: 21 84 e3 4e  	add	v1.2d, v1.2d, v3.2d
   822bc: 20 1c 60 4e  	bic	v0.16b, v1.16b, v0.16b
   822c0: 00 1c 24 4e  	and	v0.16b, v0.16b, v4.16b
   822c4: 01 04 18 4e  	dup	v1.2d, v0.d[1]
   822c8: 20 1c a0 4e  	orr	v0.16b, v1.16b, v0.16b
   822cc: 0a 00 66 9e  	fmov	x10, d0
   822d0: 8a 00 00 b5  	cbnz	x10, 0x822e0 <_ZN68_$LT$core..fmt..builders..PadAdapter$u20$as$u20$core..fmt..Write$GT$9write_str17h3825e647a41714ecE+0x170>
   822d4: 00 40 00 91  	add	x0, x0, #16
   822d8: 1f 00 08 eb  	cmp	x0, x8
   822dc: 09 fe ff 54  	b.ls	0x8229c <_ZN68_$LT$core..fmt..builders..PadAdapter$u20$as$u20$core..fmt..Write$GT$9write_str17h3825e647a41714ecE+0x12c>
   822e0: 1f 00 01 eb  	cmp	x0, x1
   822e4: 88 09 00 54  	b.hi	0x82414 <_ZN68_$LT$core..fmt..builders..PadAdapter$u20$as$u20$core..fmt..Write$GT$9write_str17h3825e647a41714ecE+0x2a4>
   822e8: 1f 00 01 eb  	cmp	x0, x1
   822ec: 00 04 00 54  	b.eq	0x8236c <_ZN68_$LT$core..fmt..builders..PadAdapter$u20$as$u20$core..fmt..Write$GT$9write_str17h3825e647a41714ecE+0x1fc>
   822f0: 09 00 17 8b  	add	x9, x0, x23
   822f4: e8 03 1f aa  	mov	x8, xzr
   822f8: 89 02 09 8b  	add	x9, x20, x9
   822fc: 2a 00 00 cb  	sub	x10, x1, x0
   82300: 2b 69 68 38  	ldrb	w11, [x9, x8]
   82304: 7f 29 00 71  	cmp	w11, #10
   82308: a0 00 00 54  	b.eq	0x8231c <_ZN68_$LT$core..fmt..builders..PadAdapter$u20$as$u20$core..fmt..Write$GT$9write_str17h3825e647a41714ecE+0x1ac>
   8230c: 08 05 00 91  	add	x8, x8, #1
   82310: 5f 01 08 eb  	cmp	x10, x8
   82314: 61 ff ff 54  	b.ne	0x82300 <_ZN68_$LT$core..fmt..builders..PadAdapter$u20$as$u20$core..fmt..Write$GT$9write_str17h3825e647a41714ecE+0x190>
   82318: 15 00 00 14  	b	0x8236c <_ZN68_$LT$core..fmt..builders..PadAdapter$u20$as$u20$core..fmt..Write$GT$9write_str17h3825e647a41714ecE+0x1fc>
   8231c: 09 00 08 8b  	add	x9, x0, x8
   82320: 28 01 17 8b  	add	x8, x9, x23
   82324: 1f 01 13 eb  	cmp	x8, x19
   82328: 17 05 00 91  	add	x23, x8, #1
   8232c: 02 f7 ff 54  	b.hs	0x8220c <_ZN68_$LT$core..fmt..builders..PadAdapter$u20$as$u20$core..fmt..Write$GT$9write_str17h3825e647a41714ecE+0x9c>
   82330: 88 6a 68 38  	ldrb	w8, [x20, x8]
   82334: 1f 29 00 71  	cmp	w8, #10
   82338: a1 f6 ff 54  	b.ne	0x8220c <_ZN68_$LT$core..fmt..builders..PadAdapter$u20$as$u20$core..fmt..Write$GT$9write_str17h3825e647a41714ecE+0x9c>
   8233c: 28 00 80 52  	mov	w8, #1
   82340: 7f 02 17 eb  	cmp	x19, x23
   82344: 08 03 00 39  	strb	w8, [x24]
   82348: c8 01 00 54  	b.hi	0x82380 <_ZN68_$LT$core..fmt..builders..PadAdapter$u20$as$u20$core..fmt..Write$GT$9write_str17h3825e647a41714ecE+0x210>
   8234c: 41 05 00 54  	b.ne	0x823f4 <_ZN68_$LT$core..fmt..builders..PadAdapter$u20$as$u20$core..fmt..Write$GT$9write_str17h3825e647a41714ecE+0x284>
   82350: 28 0f 40 f9  	ldr	x8, [x25, #24]
   82354: e0 03 15 aa  	mov	x0, x21
   82358: e1 03 14 aa  	mov	x1, x20
   8235c: e2 03 13 aa  	mov	x2, x19
   82360: 00 01 3f d6  	blr	x8
   82364: c0 f2 07 36  	tbz	w0, #0, 0x821bc <_ZN68_$LT$core..fmt..builders..PadAdapter$u20$as$u20$core..fmt..Write$GT$9write_str17h3825e647a41714ecE+0x4c>
   82368: 1c 00 00 14  	b	0x823d8 <_ZN68_$LT$core..fmt..builders..PadAdapter$u20$as$u20$core..fmt..Write$GT$9write_str17h3825e647a41714ecE+0x268>
   8236c: e8 03 1f 2a  	mov	w8, wzr
   82370: f7 03 13 aa  	mov	x23, x19
   82374: 7f 02 17 eb  	cmp	x19, x23
   82378: 08 03 00 39  	strb	w8, [x24]
   8237c: 89 fe ff 54  	b.ls	0x8234c <_ZN68_$LT$core..fmt..builders..PadAdapter$u20$as$u20$core..fmt..Write$GT$9write_str17h3825e647a41714ecE+0x1dc>
   82380: 88 6a f7 38  	ldrsb	w8, [x20, x23]
   82384: 1f 05 01 31  	cmn	w8, #65
   82388: 6d 03 00 54  	b.le	0x823f4 <_ZN68_$LT$core..fmt..builders..PadAdapter$u20$as$u20$core..fmt..Write$GT$9write_str17h3825e647a41714ecE+0x284>
   8238c: 28 0f 40 f9  	ldr	x8, [x25, #24]
   82390: e0 03 15 aa  	mov	x0, x21
   82394: e1 03 14 aa  	mov	x1, x20
   82398: e2 03 17 aa  	mov	x2, x23
   8239c: 00 01 3f d6  	blr	x8
   823a0: c0 01 00 37  	tbnz	w0, #0, 0x823d8 <_ZN68_$LT$core..fmt..builders..PadAdapter$u20$as$u20$core..fmt..Write$GT$9write_str17h3825e647a41714ecE+0x268>
   823a4: 88 6a f7 38  	ldrsb	w8, [x20, x23]
   823a8: 1f 05 01 31  	cmn	w8, #65
   823ac: 8c f0 ff 54  	b.gt	0x821bc <_ZN68_$LT$core..fmt..builders..PadAdapter$u20$as$u20$core..fmt..Write$GT$9write_str17h3825e647a41714ecE+0x4c>
   823b0: 24 00 00 90  	adrp	x4, 0x86000 <_ZN68_$LT$core..fmt..builders..PadAdapter$u20$as$u20$core..fmt..Write$GT$9write_str17h3825e647a41714ecE+0x250>
   823b4: 84 60 12 91  	add	x4, x4, #1176
   823b8: e0 03 14 aa  	mov	x0, x20
   823bc: e1 03 13 aa  	mov	x1, x19
   823c0: e2 03 17 aa  	mov	x2, x23
   823c4: e3 03 13 aa  	mov	x3, x19
   823c8: 17 00 00 94  	bl	0x82424 <_ZN4core3str16slice_error_fail17hcc0d3c3105355e6aE>
   823cc: 20 00 20 d4  	brk	#0x1
   823d0: e0 03 1f 2a  	mov	w0, wzr
   823d4: 02 00 00 14  	b	0x823dc <_ZN68_$LT$core..fmt..builders..PadAdapter$u20$as$u20$core..fmt..Write$GT$9write_str17h3825e647a41714ecE+0x26c>
   823d8: 20 00 80 52  	mov	w0, #1
   823dc: f4 4f 45 a9  	ldp	x20, x19, [sp, #80]
   823e0: f6 57 44 a9  	ldp	x22, x21, [sp, #64]
   823e4: f8 5f 43 a9  	ldp	x24, x23, [sp, #48]
   823e8: fe 67 42 a9  	ldp	x30, x25, [sp, #32]
   823ec: ff 83 01 91  	add	sp, sp, #96
   823f0: c0 03 5f d6  	ret
   823f4: 24 00 00 90  	adrp	x4, 0x86000 <_ZN68_$LT$core..fmt..builders..PadAdapter$u20$as$u20$core..fmt..Write$GT$9write_str17h3825e647a41714ecE+0x294>
   823f8: 84 00 12 91  	add	x4, x4, #1152
   823fc: e0 03 14 aa  	mov	x0, x20
   82400: e1 03 13 aa  	mov	x1, x19
   82404: e2 03 1f aa  	mov	x2, xzr
   82408: e3 03 17 aa  	mov	x3, x23
   8240c: 06 00 00 94  	bl	0x82424 <_ZN4core3str16slice_error_fail17hcc0d3c3105355e6aE>
   82410: 20 00 20 d4  	brk	#0x1
   82414: 22 00 00 90  	adrp	x2, 0x86000 <_ZN4core3str16slice_error_fail17hcc0d3c3105355e6aE>
   82418: 42 40 11 91  	add	x2, x2, #1104
   8241c: 13 fd ff 97  	bl	0x81868 <_ZN4core5slice5index26slice_start_index_len_fail17ha3ad23336e78e7f7E>
   82420: 20 00 20 d4  	brk	#0x1

0000000000082424 <_ZN4core3str16slice_error_fail17hcc0d3c3105355e6aE>:
   82424: e2 0f b3 a9  	stp	x2, x3, [sp, #-208]!
   82428: 3f 04 04 f1  	cmp	x1, #257
   8242c: 22 01 00 54  	b.hs	0x82450 <_ZN4core3str16slice_error_fail17hcc0d3c3105355e6aE+0x2c>
   82430: 29 00 00 90  	adrp	x9, 0x86000 <_ZN4core3str16slice_error_fail17hcc0d3c3105355e6aE+0x1c>
   82434: 29 a1 06 91  	add	x9, x9, #424
   82438: e8 03 1f aa  	mov	x8, xzr
   8243c: e0 07 01 a9  	stp	x0, x1, [sp, #16]
   82440: e9 23 02 a9  	stp	x9, x8, [sp, #32]
   82444: 5f 00 01 eb  	cmp	x2, x1
   82448: a9 02 00 54  	b.ls	0x8249c <_ZN4core3str16slice_error_fail17hcc0d3c3105355e6aE+0x78>
   8244c: 2b 00 00 14  	b	0x824f8 <_ZN4core3str16slice_error_fail17hcc0d3c3105355e6aE+0xd4>
   82450: 08 20 80 52  	mov	w8, #256
   82454: 06 00 00 14  	b	0x8246c <_ZN4core3str16slice_error_fail17hcc0d3c3105355e6aE+0x48>
   82458: 09 68 e8 38  	ldrsb	w9, [x0, x8]
   8245c: 3f 05 01 31  	cmn	w9, #65
   82460: 0c 01 00 54  	b.gt	0x82480 <_ZN4core3str16slice_error_fail17hcc0d3c3105355e6aE+0x5c>
   82464: 08 05 00 f1  	subs	x8, x8, #1
   82468: c0 00 00 54  	b.eq	0x82480 <_ZN4core3str16slice_error_fail17hcc0d3c3105355e6aE+0x5c>
   8246c: 1f 01 01 eb  	cmp	x8, x1
   82470: 43 ff ff 54  	b.lo	0x82458 <_ZN4core3str16slice_error_fail17hcc0d3c3105355e6aE+0x34>
   82474: 3f 00 08 eb  	cmp	x1, x8
   82478: 61 ff ff 54  	b.ne	0x82464 <_ZN4core3str16slice_error_fail17hcc0d3c3105355e6aE+0x40>
   8247c: e8 03 01 aa  	mov	x8, x1
   82480: e0 23 01 a9  	stp	x0, x8, [sp, #16]
   82484: 28 00 00 90  	adrp	x8, 0x86000 <_ZN4core3str16slice_error_fail17hcc0d3c3105355e6aE+0x70>
   82488: 09 c1 12 91  	add	x9, x8, #1200
   8248c: a8 00 80 52  	mov	w8, #5
   82490: 5f 00 01 eb  	cmp	x2, x1
   82494: e9 23 02 a9  	stp	x9, x8, [sp, #32]
   82498: 08 03 00 54  	b.hi	0x824f8 <_ZN4core3str16slice_error_fail17hcc0d3c3105355e6aE+0xd4>
   8249c: 7f 00 01 eb  	cmp	x3, x1
   824a0: c8 02 00 54  	b.hi	0x824f8 <_ZN4core3str16slice_error_fail17hcc0d3c3105355e6aE+0xd4>
   824a4: 5f 00 03 eb  	cmp	x2, x3
   824a8: 89 05 00 54  	b.ls	0x82558 <_ZN4core3str16slice_error_fail17hcc0d3c3105355e6aE+0x134>
   824ac: e9 ff ff f0  	adrp	x9, 0x81000 <_ZN4core3str16slice_error_fail17hcc0d3c3105355e6aE+0x84>
   824b0: e8 03 00 91  	mov	x8, sp
   824b4: 29 91 0d 91  	add	x9, x9, #868
   824b8: ec ff ff f0  	adrp	x12, 0x81000 <_ZN4core3str16slice_error_fail17hcc0d3c3105355e6aE+0x90>
   824bc: 2e 00 00 90  	adrp	x14, 0x86000 <_ZN4core3str16slice_error_fail17hcc0d3c3105355e6aE+0xa8>
   824c0: ea 23 00 91  	add	x10, sp, #8
   824c4: eb 43 00 91  	add	x11, sp, #16
   824c8: 8c b1 24 91  	add	x12, x12, #2348
   824cc: ed 83 00 91  	add	x13, sp, #32
   824d0: ce a1 13 91  	add	x14, x14, #1256
   824d4: e8 27 08 a9  	stp	x8, x9, [sp, #128]
   824d8: 88 00 80 52  	mov	w8, #4
   824dc: ea 27 09 a9  	stp	x10, x9, [sp, #144]
   824e0: ff 7f 06 a9  	stp	xzr, xzr, [sp, #96]
   824e4: eb 33 0a a9  	stp	x11, x12, [sp, #160]
   824e8: ed 33 0b a9  	stp	x13, x12, [sp, #176]
   824ec: e9 03 02 91  	add	x9, sp, #128
   824f0: ee 23 05 a9  	stp	x14, x8, [sp, #80]
   824f4: 14 00 00 14  	b	0x82544 <_ZN4core3str16slice_error_fail17hcc0d3c3105355e6aE+0x120>
   824f8: e9 ff ff f0  	adrp	x9, 0x81000 <_ZN4core3str16slice_error_fail17hcc0d3c3105355e6aE+0xd0>
   824fc: 5f 00 01 eb  	cmp	x2, x1
   82500: e8 03 01 91  	add	x8, sp, #64
   82504: 29 91 0d 91  	add	x9, x9, #868
   82508: eb ff ff f0  	adrp	x11, 0x81000 <_ZN4core3str16slice_error_fail17hcc0d3c3105355e6aE+0xe0>
   8250c: 2e 00 00 90  	adrp	x14, 0x86000 <_ZN4core3str16slice_error_fail17hcc0d3c3105355e6aE+0xf8>
   82510: ea 43 00 91  	add	x10, sp, #16
   82514: 6b b1 24 91  	add	x11, x11, #2348
   82518: ec 83 00 91  	add	x12, sp, #32
   8251c: 4d 80 83 9a  	csel	x13, x2, x3, hi
   82520: ce e1 12 91  	add	x14, x14, #1208
   82524: e8 27 08 a9  	stp	x8, x9, [sp, #128]
   82528: 68 00 80 52  	mov	w8, #3
   8252c: e9 03 02 91  	add	x9, sp, #128
   82530: ff 7f 06 a9  	stp	xzr, xzr, [sp, #96]
   82534: ea 2f 09 a9  	stp	x10, x11, [sp, #144]
   82538: ec 2f 0a a9  	stp	x12, x11, [sp, #160]
   8253c: ee 23 05 a9  	stp	x14, x8, [sp, #80]
   82540: ed 23 00 f9  	str	x13, [sp, #64]
   82544: e9 23 07 a9  	stp	x9, x8, [sp, #112]
   82548: e0 43 01 91  	add	x0, sp, #80
   8254c: e1 03 04 aa  	mov	x1, x4
   82550: e3 fb ff 97  	bl	0x814dc <_ZN4core9panicking9panic_fmt17h136e9995f1aed1cdE>
   82554: 20 00 20 d4  	brk	#0x1
   82558: 82 01 00 b5  	cbnz	x2, 0x82588 <_ZN4core3str16slice_error_fail17hcc0d3c3105355e6aE+0x164>
   8255c: e3 1b 00 f9  	str	x3, [sp, #48]
   82560: 23 04 00 b5  	cbnz	x3, 0x825e4 <_ZN4core3str16slice_error_fail17hcc0d3c3105355e6aE+0x1c0>
   82564: e3 03 1f aa  	mov	x3, xzr
   82568: 7f 00 01 eb  	cmp	x3, x1
   8256c: a1 01 00 54  	b.ne	0x825a0 <_ZN4core3str16slice_error_fail17hcc0d3c3105355e6aE+0x17c>
   82570: 20 00 00 90  	adrp	x0, 0x86000 <_ZN4core3str16slice_error_fail17hcc0d3c3105355e6aE+0x15c>
   82574: 00 a0 14 91  	add	x0, x0, #1320
   82578: 61 05 80 52  	mov	w1, #43
   8257c: e2 03 04 aa  	mov	x2, x4
   82580: de fc ff 97  	bl	0x818f8 <_ZN4core9panicking5panic17h0d86cd7d69f331f6E>
   82584: 20 00 20 d4  	brk	#0x1
   82588: 5f 00 01 eb  	cmp	x2, x1
   8258c: a2 01 00 54  	b.hs	0x825c0 <_ZN4core3str16slice_error_fail17hcc0d3c3105355e6aE+0x19c>
   82590: 08 68 e2 38  	ldrsb	w8, [x0, x2]
   82594: 1f 05 01 31  	cmn	w8, #65
   82598: 2c fe ff 54  	b.gt	0x8255c <_ZN4core3str16slice_error_fail17hcc0d3c3105355e6aE+0x138>
   8259c: 0b 00 00 14  	b	0x825c8 <_ZN4core3str16slice_error_fail17hcc0d3c3105355e6aE+0x1a4>
   825a0: 08 00 03 8b  	add	x8, x0, x3
   825a4: eb 03 08 aa  	mov	x11, x8
   825a8: 6a 15 c0 38  	ldrsb	w10, [x11], #1
   825ac: 49 1d 00 12  	and	w9, w10, #0xff
   825b0: 6a 02 f8 37  	tbnz	w10, #31, 0x825fc <_ZN4core3str16slice_error_fail17hcc0d3c3105355e6aE+0x1d8>
   825b4: e9 3f 00 b9  	str	w9, [sp, #60]
   825b8: 28 00 80 52  	mov	w8, #1
   825bc: 44 00 00 14  	b	0x826cc <_ZN4core3str16slice_error_fail17hcc0d3c3105355e6aE+0x2a8>
   825c0: 3f 00 02 eb  	cmp	x1, x2
   825c4: c0 fc ff 54  	b.eq	0x8255c <_ZN4core3str16slice_error_fail17hcc0d3c3105355e6aE+0x138>
   825c8: e3 03 02 aa  	mov	x3, x2
   825cc: e2 1b 00 f9  	str	x2, [sp, #48]
   825d0: 05 00 00 14  	b	0x825e4 <_ZN4core3str16slice_error_fail17hcc0d3c3105355e6aE+0x1c0>
   825d4: 3f 00 03 eb  	cmp	x1, x3
   825d8: c0 fc ff 54  	b.eq	0x82570 <_ZN4core3str16slice_error_fail17hcc0d3c3105355e6aE+0x14c>
   825dc: 63 04 00 f1  	subs	x3, x3, #1
   825e0: 20 fc ff 54  	b.eq	0x82564 <_ZN4core3str16slice_error_fail17hcc0d3c3105355e6aE+0x140>
   825e4: 7f 00 01 eb  	cmp	x3, x1
   825e8: 62 ff ff 54  	b.hs	0x825d4 <_ZN4core3str16slice_error_fail17hcc0d3c3105355e6aE+0x1b0>
   825ec: 08 68 e3 38  	ldrsb	w8, [x0, x3]
   825f0: 1f 01 01 31  	cmn	w8, #64
   825f4: 4b ff ff 54  	b.lt	0x825dc <_ZN4core3str16slice_error_fail17hcc0d3c3105355e6aE+0x1b8>
   825f8: dc ff ff 17  	b	0x82568 <_ZN4core3str16slice_error_fail17hcc0d3c3105355e6aE+0x144>
   825fc: 0a 00 01 8b  	add	x10, x0, x1
   82600: 7f 01 0a eb  	cmp	x11, x10
   82604: 01 01 00 54  	b.ne	0x82624 <_ZN4core3str16slice_error_fail17hcc0d3c3105355e6aE+0x200>
   82608: e8 03 1f 2a  	mov	w8, wzr
   8260c: ec 03 0a aa  	mov	x12, x10
   82610: 3f 7d 03 71  	cmp	w9, #223
   82614: 2b 11 00 12  	and	w11, w9, #0x1f
   82618: 28 01 00 54  	b.hi	0x8263c <_ZN4core3str16slice_error_fail17hcc0d3c3105355e6aE+0x218>
   8261c: 68 11 1a 33  	bfi	w8, w11, #6, #5
   82620: 1f 00 00 14  	b	0x8269c <_ZN4core3str16slice_error_fail17hcc0d3c3105355e6aE+0x278>
   82624: 0b 05 40 39  	ldrb	w11, [x8, #1]
   82628: 0c 09 00 91  	add	x12, x8, #2
   8262c: 68 15 00 12  	and	w8, w11, #0x3f
   82630: 3f 7d 03 71  	cmp	w9, #223
   82634: 2b 11 00 12  	and	w11, w9, #0x1f
   82638: 29 ff ff 54  	b.ls	0x8261c <_ZN4core3str16slice_error_fail17hcc0d3c3105355e6aE+0x1f8>
   8263c: 9f 01 0a eb  	cmp	x12, x10
   82640: 81 00 00 54  	b.ne	0x82650 <_ZN4core3str16slice_error_fail17hcc0d3c3105355e6aE+0x22c>
   82644: ed 03 1f 2a  	mov	w13, wzr
   82648: ec 03 0a aa  	mov	x12, x10
   8264c: 03 00 00 14  	b	0x82658 <_ZN4core3str16slice_error_fail17hcc0d3c3105355e6aE+0x234>
   82650: 8d 15 40 38  	ldrb	w13, [x12], #1
   82654: ad 15 00 12  	and	w13, w13, #0x3f
   82658: 3f c1 03 71  	cmp	w9, #240
   8265c: 0d 15 1a 33  	bfi	w13, w8, #6, #6
   82660: a3 00 00 54  	b.lo	0x82674 <_ZN4core3str16slice_error_fail17hcc0d3c3105355e6aE+0x250>
   82664: 9f 01 0a eb  	cmp	x12, x10
   82668: c1 00 00 54  	b.ne	0x82680 <_ZN4core3str16slice_error_fail17hcc0d3c3105355e6aE+0x25c>
   8266c: e8 03 1f 2a  	mov	w8, wzr
   82670: 06 00 00 14  	b	0x82688 <_ZN4core3str16slice_error_fail17hcc0d3c3105355e6aE+0x264>
   82674: 6d 11 14 33  	bfi	w13, w11, #12, #5
   82678: e8 03 0d 2a  	mov	w8, w13
   8267c: 08 00 00 14  	b	0x8269c <_ZN4core3str16slice_error_fail17hcc0d3c3105355e6aE+0x278>
   82680: 88 01 40 39  	ldrb	w8, [x12]
   82684: 08 15 00 12  	and	w8, w8, #0x3f
   82688: 69 09 0e 53  	ubfiz	w9, w11, #18, #3
   8268c: a9 2d 1a 33  	bfi	w9, w13, #6, #12
   82690: 28 01 08 2a  	orr	w8, w9, w8
   82694: 1f 41 44 71  	cmp	w8, #272, lsl #12
   82698: c0 f6 ff 54  	b.eq	0x82570 <_ZN4core3str16slice_error_fail17hcc0d3c3105355e6aE+0x14c>
   8269c: 1f 01 02 71  	cmp	w8, #128
   826a0: e8 3f 00 b9  	str	w8, [sp, #60]
   826a4: 62 00 00 54  	b.hs	0x826b0 <_ZN4core3str16slice_error_fail17hcc0d3c3105355e6aE+0x28c>
   826a8: 28 00 80 52  	mov	w8, #1
   826ac: 08 00 00 14  	b	0x826cc <_ZN4core3str16slice_error_fail17hcc0d3c3105355e6aE+0x2a8>
   826b0: 1f 01 20 71  	cmp	w8, #2048
   826b4: 62 00 00 54  	b.hs	0x826c0 <_ZN4core3str16slice_error_fail17hcc0d3c3105355e6aE+0x29c>
   826b8: 48 00 80 52  	mov	w8, #2
   826bc: 04 00 00 14  	b	0x826cc <_ZN4core3str16slice_error_fail17hcc0d3c3105355e6aE+0x2a8>
   826c0: 1f 41 40 71  	cmp	w8, #16, lsl #12
   826c4: 68 00 80 52  	mov	w8, #3
   826c8: 08 35 88 9a  	cinc	x8, x8, hs
   826cc: 08 01 03 8b  	add	x8, x8, x3
   826d0: ea ff ff f0  	adrp	x10, 0x81000 <_ZN4core3str16slice_error_fail17hcc0d3c3105355e6aE+0x2a8>
   826d4: e9 c3 00 91  	add	x9, sp, #48
   826d8: 4a 91 0d 91  	add	x10, x10, #868
   826dc: 0c 00 00 90  	adrp	x12, 0x82000 <_ZN4core3str16slice_error_fail17hcc0d3c3105355e6aE+0x2b8>
   826e0: e3 23 04 a9  	stp	x3, x8, [sp, #64]
   826e4: e8 ff ff f0  	adrp	x8, 0x81000 <_ZN4core3str16slice_error_fail17hcc0d3c3105355e6aE+0x2bc>
   826e8: eb f3 00 91  	add	x11, sp, #60
   826ec: 8c 21 1d 91  	add	x12, x12, #1864
   826f0: 0e 00 00 90  	adrp	x14, 0x82000 <_ZN4core3str16slice_error_fail17hcc0d3c3105355e6aE+0x2cc>
   826f4: ef 43 00 91  	add	x15, sp, #16
   826f8: 08 b1 24 91  	add	x8, x8, #2348
   826fc: e9 2b 08 a9  	stp	x9, x10, [sp, #128]
   82700: e9 83 00 91  	add	x9, sp, #32
   82704: 2a 00 00 90  	adrp	x10, 0x86000 <_ZN4core3str16slice_error_fail17hcc0d3c3105355e6aE+0x2f0>
   82708: ed 03 01 91  	add	x13, sp, #64
   8270c: ce 41 25 91  	add	x14, x14, #2384
   82710: eb 33 09 a9  	stp	x11, x12, [sp, #144]
   82714: 4a 61 15 91  	add	x10, x10, #1368
   82718: ab 00 80 52  	mov	w11, #5
   8271c: ef 23 0b a9  	stp	x15, x8, [sp, #176]
   82720: e9 23 0c a9  	stp	x9, x8, [sp, #192]
   82724: e8 03 02 91  	add	x8, sp, #128
   82728: ed 3b 0a a9  	stp	x13, x14, [sp, #160]
   8272c: ff 7f 06 a9  	stp	xzr, xzr, [sp, #96]
   82730: ea 2f 05 a9  	stp	x10, x11, [sp, #80]
   82734: e8 2f 07 a9  	stp	x8, x11, [sp, #112]
   82738: e0 43 01 91  	add	x0, sp, #80
   8273c: e1 03 04 aa  	mov	x1, x4
   82740: 67 fb ff 97  	bl	0x814dc <_ZN4core9panicking9panic_fmt17h136e9995f1aed1cdE>
   82744: 20 00 20 d4  	brk	#0x1

0000000000082748 <_ZN41_$LT$char$u20$as$u20$core..fmt..Debug$GT$3fmt17hbb417021e48ac295E>:
   82748: ff 83 01 d1  	sub	sp, sp, #96
   8274c: fe 6f 01 a9  	stp	x30, x27, [sp, #16]
   82750: fa 67 02 a9  	stp	x26, x25, [sp, #32]
   82754: f8 5f 03 a9  	stp	x24, x23, [sp, #48]
   82758: f6 57 04 a9  	stp	x22, x21, [sp, #64]
   8275c: f4 4f 05 a9  	stp	x20, x19, [sp, #80]
   82760: 33 20 42 a9  	ldp	x19, x8, [x1, #32]
   82764: f4 03 00 aa  	mov	x20, x0
   82768: e1 04 80 52  	mov	w1, #39
   8276c: 02 11 40 f9  	ldr	x2, [x8, #32]
   82770: e0 03 13 aa  	mov	x0, x19
   82774: e2 07 00 f9  	str	x2, [sp, #8]
   82778: 40 00 3f d6  	blr	x2
   8277c: 20 01 00 36  	tbz	w0, #0, 0x827a0 <_ZN41_$LT$char$u20$as$u20$core..fmt..Debug$GT$3fmt17hbb417021e48ac295E+0x58>
   82780: f4 4f 45 a9  	ldp	x20, x19, [sp, #80]
   82784: f6 57 44 a9  	ldp	x22, x21, [sp, #64]
   82788: f8 5f 43 a9  	ldp	x24, x23, [sp, #48]
   8278c: fa 67 42 a9  	ldp	x26, x25, [sp, #32]
   82790: fe 6f 41 a9  	ldp	x30, x27, [sp, #16]
   82794: 20 00 80 52  	mov	w0, #1
   82798: ff 83 01 91  	add	sp, sp, #96
   8279c: c0 03 5f d6  	ret
   827a0: 94 02 40 b9  	ldr	w20, [x20]
   827a4: 88 26 00 51  	sub	w8, w20, #9
   827a8: 1f 79 00 71  	cmp	w8, #30
   827ac: 88 01 00 54  	b.hi	0x827dc <_ZN41_$LT$char$u20$as$u20$core..fmt..Debug$GT$3fmt17hbb417021e48ac295E+0x94>
   827b0: 09 00 00 f0  	adrp	x9, 0x85000 <_ZN41_$LT$char$u20$as$u20$core..fmt..Debug$GT$3fmt17hbb417021e48ac295E+0x74>
   827b4: 29 61 21 91  	add	x9, x9, #2136
   827b8: ca 00 00 10  	adr	x10, #24
   827bc: 2b 69 68 38  	ldrb	w11, [x9, x8]
   827c0: 4a 09 0b 8b  	add	x10, x10, x11, lsl #2
   827c4: 95 0e 80 52  	mov	w21, #116
   827c8: 58 00 80 52  	mov	w24, #2
   827cc: 40 01 1f d6  	br	x10
   827d0: d5 0d 80 52  	mov	w21, #110
   827d4: 58 00 80 52  	mov	w24, #2
   827d8: 1a 00 00 14  	b	0x82840 <_ZN41_$LT$char$u20$as$u20$core..fmt..Debug$GT$3fmt17hbb417021e48ac295E+0xf8>
   827dc: 9f 72 01 71  	cmp	w20, #92
   827e0: 81 00 00 54  	b.ne	0x827f0 <_ZN41_$LT$char$u20$as$u20$core..fmt..Debug$GT$3fmt17hbb417021e48ac295E+0xa8>
   827e4: 58 00 80 52  	mov	w24, #2
   827e8: f5 03 14 2a  	mov	w21, w20
   827ec: 15 00 00 14  	b	0x82840 <_ZN41_$LT$char$u20$as$u20$core..fmt..Debug$GT$3fmt17hbb417021e48ac295E+0xf8>
   827f0: e0 03 14 2a  	mov	w0, w20
   827f4: 0c 01 00 94  	bl	0x82c24 <_ZN4core7unicode12unicode_data15grapheme_extend6lookup17h6270b00245d19f23E>
   827f8: 40 01 00 37  	tbnz	w0, #0, 0x82820 <_ZN41_$LT$char$u20$as$u20$core..fmt..Debug$GT$3fmt17hbb417021e48ac295E+0xd8>
   827fc: e0 03 14 2a  	mov	w0, w20
   82800: 57 01 00 94  	bl	0x82d5c <_ZN4core7unicode9printable12is_printable17ha641fcfcb2036eb6E>
   82804: e0 00 00 36  	tbz	w0, #0, 0x82820 <_ZN41_$LT$char$u20$as$u20$core..fmt..Debug$GT$3fmt17hbb417021e48ac295E+0xd8>
   82808: 38 00 80 52  	mov	w24, #1
   8280c: f5 03 14 2a  	mov	w21, w20
   82810: 0c 00 00 14  	b	0x82840 <_ZN41_$LT$char$u20$as$u20$core..fmt..Debug$GT$3fmt17hbb417021e48ac295E+0xf8>
   82814: 55 0e 80 52  	mov	w21, #114
   82818: 58 00 80 52  	mov	w24, #2
   8281c: 09 00 00 14  	b	0x82840 <_ZN41_$LT$char$u20$as$u20$core..fmt..Debug$GT$3fmt17hbb417021e48ac295E+0xf8>
   82820: 88 02 00 32  	orr	w8, w20, #0x1
   82824: 08 11 c0 5a  	clz	w8, w8
   82828: e9 03 14 2a  	mov	w9, w20
   8282c: aa 00 c0 d2  	mov	x10, #21474836480
   82830: 08 7d 02 53  	lsr	w8, w8, #2
   82834: 37 01 0a aa  	orr	x23, x9, x10
   82838: 16 09 00 52  	eor	w22, w8, #0x7
   8283c: 78 00 80 52  	mov	w24, #3
   82840: 14 00 00 f0  	adrp	x20, 0x85000 <_ZN41_$LT$char$u20$as$u20$core..fmt..Debug$GT$3fmt17hbb417021e48ac295E+0x104>
   82844: 19 00 00 f0  	adrp	x25, 0x85000 <_ZN41_$LT$char$u20$as$u20$core..fmt..Debug$GT$3fmt17hbb417021e48ac295E+0x108>
   82848: 94 de 21 91  	add	x20, x20, #2167
   8284c: 39 ef 21 91  	add	x25, x25, #2171
   82850: fa 0a 80 52  	mov	w26, #87
   82854: 1b 06 80 52  	mov	w27, #48
   82858: 07 00 00 14  	b	0x82874 <_ZN41_$LT$char$u20$as$u20$core..fmt..Debug$GT$3fmt17hbb417021e48ac295E+0x12c>
   8285c: f8 03 1f 2a  	mov	w24, wzr
   82860: e1 03 15 2a  	mov	w1, w21
   82864: e2 07 40 f9  	ldr	x2, [sp, #8]
   82868: e0 03 13 aa  	mov	x0, x19
   8286c: 40 00 3f d6  	blr	x2
   82870: 80 f8 07 37  	tbnz	w0, #0, 0x82780 <_ZN41_$LT$char$u20$as$u20$core..fmt..Debug$GT$3fmt17hbb417021e48ac295E+0x38>
   82874: e8 03 18 2a  	mov	w8, w24
   82878: 29 ff ff 10  	adr	x9, #-28
   8287c: 8a 6a 68 38  	ldrb	w10, [x20, x8]
   82880: 29 09 0a 8b  	add	x9, x9, x10, lsl #2
   82884: 38 00 80 52  	mov	w24, #1
   82888: 81 0b 80 52  	mov	w1, #92
   8288c: 20 01 1f d6  	br	x9
   82890: e8 9e 60 d3  	ubfx	x8, x23, #32, #8
   82894: 89 00 00 10  	adr	x9, #16
   82898: 2a 6b 68 38  	ldrb	w10, [x25, x8]
   8289c: 29 09 0a 8b  	add	x9, x9, x10, lsl #2
   828a0: 20 01 1f d6  	br	x9
   828a4: f7 de 58 92  	and	x23, x23, #0xffffff00ffffffff
   828a8: 78 00 80 52  	mov	w24, #3
   828ac: a1 0f 80 52  	mov	w1, #125
   828b0: ed ff ff 17  	b	0x82864 <_ZN41_$LT$char$u20$as$u20$core..fmt..Debug$GT$3fmt17hbb417021e48ac295E+0x11c>
   828b4: c8 0a 1e 53  	ubfiz	w8, w22, #2, #3
   828b8: e8 26 c8 1a  	lsr	w8, w23, w8
   828bc: 08 0d 00 12  	and	w8, w8, #0xf
   828c0: 1f 29 00 71  	cmp	w8, #10
   828c4: 69 33 9a 1a  	csel	w9, w27, w26, lo
   828c8: 21 01 08 0b  	add	w1, w9, w8
   828cc: 76 02 00 b4  	cbz	x22, 0x82918 <_ZN41_$LT$char$u20$as$u20$core..fmt..Debug$GT$3fmt17hbb417021e48ac295E+0x1d0>
   828d0: d6 06 00 d1  	sub	x22, x22, #1
   828d4: 78 00 80 52  	mov	w24, #3
   828d8: e3 ff ff 17  	b	0x82864 <_ZN41_$LT$char$u20$as$u20$core..fmt..Debug$GT$3fmt17hbb417021e48ac295E+0x11c>
   828dc: e8 de 58 92  	and	x8, x23, #0xffffff00ffffffff
   828e0: 78 00 80 52  	mov	w24, #3
   828e4: 17 01 5f b2  	orr	x23, x8, #0x200000000
   828e8: 61 0f 80 52  	mov	w1, #123
   828ec: de ff ff 17  	b	0x82864 <_ZN41_$LT$char$u20$as$u20$core..fmt..Debug$GT$3fmt17hbb417021e48ac295E+0x11c>
   828f0: e8 de 58 92  	and	x8, x23, #0xffffff00ffffffff
   828f4: 78 00 80 52  	mov	w24, #3
   828f8: 17 05 60 b2  	orr	x23, x8, #0x300000000
   828fc: a1 0e 80 52  	mov	w1, #117
   82900: d9 ff ff 17  	b	0x82864 <_ZN41_$LT$char$u20$as$u20$core..fmt..Debug$GT$3fmt17hbb417021e48ac295E+0x11c>
   82904: e8 de 58 92  	and	x8, x23, #0xffffff00ffffffff
   82908: 78 00 80 52  	mov	w24, #3
   8290c: 17 01 5e b2  	orr	x23, x8, #0x400000000
   82910: 81 0b 80 52  	mov	w1, #92
   82914: d4 ff ff 17  	b	0x82864 <_ZN41_$LT$char$u20$as$u20$core..fmt..Debug$GT$3fmt17hbb417021e48ac295E+0x11c>
   82918: e8 de 58 92  	and	x8, x23, #0xffffff00ffffffff
   8291c: 17 01 60 b2  	orr	x23, x8, #0x100000000
   82920: 78 00 80 52  	mov	w24, #3
   82924: d0 ff ff 17  	b	0x82864 <_ZN41_$LT$char$u20$as$u20$core..fmt..Debug$GT$3fmt17hbb417021e48ac295E+0x11c>
   82928: e0 03 13 aa  	mov	x0, x19
   8292c: e2 07 40 f9  	ldr	x2, [sp, #8]
   82930: f4 4f 45 a9  	ldp	x20, x19, [sp, #80]
   82934: f6 57 44 a9  	ldp	x22, x21, [sp, #64]
   82938: f8 5f 43 a9  	ldp	x24, x23, [sp, #48]
   8293c: fa 67 42 a9  	ldp	x26, x25, [sp, #32]
   82940: fe 6f 41 a9  	ldp	x30, x27, [sp, #16]
   82944: e1 04 80 52  	mov	w1, #39
   82948: ff 83 01 91  	add	sp, sp, #96
   8294c: 40 00 1f d6  	br	x2

0000000000082950 <_ZN71_$LT$core..ops..range..Range$LT$Idx$GT$$u20$as$u20$core..fmt..Debug$GT$3fmt17hb02ca6d9aeb51757E>:
   82950: ff 43 01 d1  	sub	sp, sp, #80
   82954: fe 1b 00 f9  	str	x30, [sp, #48]
   82958: f4 4f 04 a9  	stp	x20, x19, [sp, #64]
   8295c: f4 03 00 aa  	mov	x20, x0
   82960: 00 00 40 f9  	ldr	x0, [x0]
   82964: f3 03 01 aa  	mov	x19, x1
   82968: 19 00 00 94  	bl	0x829cc <_ZN4core3fmt3num52_$LT$impl$u20$core..fmt..Debug$u20$for$u20$usize$GT$3fmt17h5db37932efbb435aE.72>
   8296c: a0 01 00 37  	tbnz	w0, #0, 0x829a0 <_ZN71_$LT$core..ops..range..Range$LT$Idx$GT$$u20$as$u20$core..fmt..Debug$GT$3fmt17hb02ca6d9aeb51757E+0x50>
   82970: 60 06 42 a9  	ldp	x0, x1, [x19, #32]
   82974: 28 00 00 90  	adrp	x8, 0x86000 <_ZN71_$LT$core..ops..range..Range$LT$Idx$GT$$u20$as$u20$core..fmt..Debug$GT$3fmt17hb02ca6d9aeb51757E+0x34>
   82978: 08 21 10 91  	add	x8, x8, #1032
   8297c: 29 00 80 52  	mov	w9, #1
   82980: e8 27 00 a9  	stp	x8, x9, [sp]
   82984: 28 00 00 90  	adrp	x8, 0x86000 <_ZN71_$LT$core..ops..range..Range$LT$Idx$GT$$u20$as$u20$core..fmt..Debug$GT$3fmt17hb02ca6d9aeb51757E+0x44>
   82988: 08 a1 06 91  	add	x8, x8, #424
   8298c: e2 03 00 91  	mov	x2, sp
   82990: ff 7f 01 a9  	stp	xzr, xzr, [sp, #16]
   82994: e8 7f 02 a9  	stp	x8, xzr, [sp, #32]
   82998: f1 fc ff 97  	bl	0x81d5c <_ZN4core3fmt5write17h63775af3066fbce8E>
   8299c: c0 00 00 34  	cbz	w0, 0x829b4 <_ZN71_$LT$core..ops..range..Range$LT$Idx$GT$$u20$as$u20$core..fmt..Debug$GT$3fmt17hb02ca6d9aeb51757E+0x64>
   829a0: f4 4f 44 a9  	ldp	x20, x19, [sp, #64]
   829a4: fe 1b 40 f9  	ldr	x30, [sp, #48]
   829a8: 20 00 80 52  	mov	w0, #1
   829ac: ff 43 01 91  	add	sp, sp, #80
   829b0: c0 03 5f d6  	ret
   829b4: 80 06 40 f9  	ldr	x0, [x20, #8]
   829b8: e1 03 13 aa  	mov	x1, x19
   829bc: f4 4f 44 a9  	ldp	x20, x19, [sp, #64]
   829c0: fe 1b 40 f9  	ldr	x30, [sp, #48]
   829c4: ff 43 01 91  	add	sp, sp, #80
   829c8: 01 00 00 14  	b	0x829cc <_ZN4core3fmt3num52_$LT$impl$u20$core..fmt..Debug$u20$for$u20$usize$GT$3fmt17h5db37932efbb435aE.72>

00000000000829cc <_ZN4core3fmt3num52_$LT$impl$u20$core..fmt..Debug$u20$for$u20$usize$GT$3fmt17h5db37932efbb435aE.72>:
   829cc: ff 43 02 d1  	sub	sp, sp, #144
   829d0: fe 43 00 f9  	str	x30, [sp, #128]
   829d4: 29 30 40 b9  	ldr	w9, [x1, #48]
   829d8: e8 03 01 aa  	mov	x8, x1
   829dc: a9 05 20 37  	tbnz	w9, #4, 0x82a90 <_ZN4core3fmt3num52_$LT$impl$u20$core..fmt..Debug$u20$for$u20$usize$GT$3fmt17h5db37932efbb435aE.72+0xc4>
   829e0: 69 07 28 37  	tbnz	w9, #5, 0x82acc <_ZN4core3fmt3num52_$LT$impl$u20$core..fmt..Debug$u20$for$u20$usize$GT$3fmt17h5db37932efbb435aE.72+0x100>
   829e4: 09 fc 44 d3  	lsr	x9, x0, #4
   829e8: 3f c5 09 f1  	cmp	x9, #625
   829ec: c3 0a 00 54  	b.lo	0x82b44 <_ZN4core3fmt3num52_$LT$impl$u20$core..fmt..Debug$u20$for$u20$usize$GT$3fmt17h5db37932efbb435aE.72+0x178>
   829f0: 6a 29 8b d2  	mov	x10, #22859
   829f4: ca 10 a7 f2  	movk	x10, #14470, lsl #16
   829f8: ca ba d8 f2  	movk	x10, #50646, lsl #32
   829fc: ec a3 90 52  	mov	w12, #34079
   82a00: 2e 00 00 90  	adrp	x14, 0x86000 <_ZN4core3fmt3num52_$LT$impl$u20$core..fmt..Debug$u20$for$u20$usize$GT$3fmt17h5db37932efbb435aE.72+0x44>
   82a04: f0 1f 9c 52  	mov	w16, #57599
   82a08: e9 03 1f aa  	mov	x9, xzr
   82a0c: aa 8d e6 f2  	movk	x10, #13421, lsl #48
   82a10: eb e1 84 12  	mov	w11, #-10000
   82a14: 6c 3d aa 72  	movk	w12, #20971, lsl #16
   82a18: 6d 0c 80 12  	mov	w13, #-100
   82a1c: ce e9 08 91  	add	x14, x14, #570
   82a20: ef 03 00 91  	mov	x15, sp
   82a24: b0 be a0 72  	movk	w16, #1525, lsl #16
   82a28: 12 7c ca 9b  	umulh	x18, x0, x10
   82a2c: f1 03 00 aa  	mov	x17, x0
   82a30: 1f 00 10 eb  	cmp	x0, x16
   82a34: 40 fe 4b d3  	lsr	x0, x18, #11
   82a38: 11 44 0b 1b  	madd	w17, w0, w11, w17
   82a3c: 32 3e 00 12  	and	w18, w17, #0xffff
   82a40: 52 7e ac 9b  	umull	x18, w18, w12
   82a44: 52 fe 65 d3  	lsr	x18, x18, #37
   82a48: 51 46 0d 1b  	madd	w17, w18, w13, w17
   82a4c: d2 05 12 8b  	add	x18, x14, x18, lsl #1
   82a50: d1 25 31 8b  	add	x17, x14, w17, uxth #1
   82a54: 42 02 40 39  	ldrb	w2, [x18]
   82a58: 52 06 40 39  	ldrb	w18, [x18, #1]
   82a5c: 23 06 40 39  	ldrb	w3, [x17, #1]
   82a60: 31 02 40 39  	ldrb	w17, [x17]
   82a64: e1 01 09 8b  	add	x1, x15, x9
   82a68: 29 11 00 d1  	sub	x9, x9, #4
   82a6c: 32 90 00 39  	strb	w18, [x1, #36]
   82a70: 22 8c 00 39  	strb	w2, [x1, #35]
   82a74: 23 98 00 39  	strb	w3, [x1, #38]
   82a78: 31 94 00 39  	strb	w17, [x1, #37]
   82a7c: 68 fd ff 54  	b.hi	0x82a28 <_ZN4core3fmt3num52_$LT$impl$u20$core..fmt..Debug$u20$for$u20$usize$GT$3fmt17h5db37932efbb435aE.72+0x5c>
   82a80: 29 9d 00 91  	add	x9, x9, #39
   82a84: 1f 8c 01 f1  	cmp	x0, #99
   82a88: 4c 06 00 54  	b.gt	0x82b50 <_ZN4core3fmt3num52_$LT$impl$u20$core..fmt..Debug$u20$for$u20$usize$GT$3fmt17h5db37932efbb435aE.72+0x184>
   82a8c: 43 00 00 14  	b	0x82b98 <_ZN4core3fmt3num52_$LT$impl$u20$core..fmt..Debug$u20$for$u20$usize$GT$3fmt17h5db37932efbb435aE.72+0x1cc>
   82a90: e9 03 1f aa  	mov	x9, xzr
   82a94: ea 03 00 91  	mov	x10, sp
   82a98: 0d 0c 00 12  	and	w13, w0, #0xf
   82a9c: 0e 06 80 52  	mov	w14, #48
   82aa0: 0c fc 44 d3  	lsr	x12, x0, #4
   82aa4: 0e 0c 00 33  	bfxil	w14, w0, #0, #4
   82aa8: af 5d 01 11  	add	w15, w13, #87
   82aac: bf 29 00 71  	cmp	w13, #10
   82ab0: 4b 01 09 8b  	add	x11, x10, x9
   82ab4: cd 31 8f 1a  	csel	w13, w14, w15, lo
   82ab8: 29 05 00 d1  	sub	x9, x9, #1
   82abc: e0 03 0c aa  	mov	x0, x12
   82ac0: 6d fd 01 39  	strb	w13, [x11, #127]
   82ac4: ac fe ff b5  	cbnz	x12, 0x82a98 <_ZN4core3fmt3num52_$LT$impl$u20$core..fmt..Debug$u20$for$u20$usize$GT$3fmt17h5db37932efbb435aE.72+0xcc>
   82ac8: 0f 00 00 14  	b	0x82b04 <_ZN4core3fmt3num52_$LT$impl$u20$core..fmt..Debug$u20$for$u20$usize$GT$3fmt17h5db37932efbb435aE.72+0x138>
   82acc: e9 03 1f aa  	mov	x9, xzr
   82ad0: ea 03 00 91  	mov	x10, sp
   82ad4: 0d 0c 00 12  	and	w13, w0, #0xf
   82ad8: 0e 06 80 52  	mov	w14, #48
   82adc: 0c fc 44 d3  	lsr	x12, x0, #4
   82ae0: 0e 0c 00 33  	bfxil	w14, w0, #0, #4
   82ae4: af dd 00 11  	add	w15, w13, #55
   82ae8: bf 29 00 71  	cmp	w13, #10
   82aec: 4b 01 09 8b  	add	x11, x10, x9
   82af0: cd 31 8f 1a  	csel	w13, w14, w15, lo
   82af4: 29 05 00 d1  	sub	x9, x9, #1
   82af8: e0 03 0c aa  	mov	x0, x12
   82afc: 6d fd 01 39  	strb	w13, [x11, #127]
   82b00: ac fe ff b5  	cbnz	x12, 0x82ad4 <_ZN4core3fmt3num52_$LT$impl$u20$core..fmt..Debug$u20$for$u20$usize$GT$3fmt17h5db37932efbb435aE.72+0x108>
   82b04: 20 01 02 91  	add	x0, x9, #128
   82b08: 1f 04 02 f1  	cmp	x0, #129
   82b0c: 22 08 00 54  	b.hs	0x82c10 <_ZN4core3fmt3num52_$LT$impl$u20$core..fmt..Debug$u20$for$u20$usize$GT$3fmt17h5db37932efbb435aE.72+0x244>
   82b10: ea 03 00 91  	mov	x10, sp
   82b14: e5 03 09 cb  	neg	x5, x9
   82b18: 49 01 09 8b  	add	x9, x10, x9
   82b1c: 22 00 00 90  	adrp	x2, 0x86000 <_ZN4core3fmt3num52_$LT$impl$u20$core..fmt..Debug$u20$for$u20$usize$GT$3fmt17h5db37932efbb435aE.72+0x160>
   82b20: 24 01 02 91  	add	x4, x9, #128
   82b24: 42 80 0e 91  	add	x2, x2, #928
   82b28: 21 00 80 52  	mov	w1, #1
   82b2c: 43 00 80 52  	mov	w3, #2
   82b30: e0 03 08 aa  	mov	x0, x8
   82b34: 79 fa ff 97  	bl	0x81518 <_ZN4core3fmt9Formatter12pad_integral17ha6f583ca7a70f44dE>
   82b38: fe 43 40 f9  	ldr	x30, [sp, #128]
   82b3c: ff 43 02 91  	add	sp, sp, #144
   82b40: c0 03 5f d6  	ret
   82b44: e9 04 80 52  	mov	w9, #39
   82b48: 1f 8c 01 f1  	cmp	x0, #99
   82b4c: 6d 02 00 54  	b.le	0x82b98 <_ZN4core3fmt3num52_$LT$impl$u20$core..fmt..Debug$u20$for$u20$usize$GT$3fmt17h5db37932efbb435aE.72+0x1cc>
   82b50: eb a3 90 52  	mov	w11, #34079
   82b54: 0a 3c 00 12  	and	w10, w0, #0xffff
   82b58: 6b 3d aa 72  	movk	w11, #20971, lsl #16
   82b5c: 4a 7d ab 9b  	umull	x10, w10, w11
   82b60: 6c 0c 80 12  	mov	w12, #-100
   82b64: 2b 00 00 90  	adrp	x11, 0x86000 <_ZN4core3fmt3num52_$LT$impl$u20$core..fmt..Debug$u20$for$u20$usize$GT$3fmt17h5db37932efbb435aE.72+0x1a8>
   82b68: 4a fd 65 d3  	lsr	x10, x10, #37
   82b6c: 6b e9 08 91  	add	x11, x11, #570
   82b70: 4c 01 0c 1b  	madd	w12, w10, w12, w0
   82b74: 6b 25 2c 8b  	add	x11, x11, w12, uxth #1
   82b78: 6c 05 40 39  	ldrb	w12, [x11, #1]
   82b7c: 6b 01 40 39  	ldrb	w11, [x11]
   82b80: 29 09 00 d1  	sub	x9, x9, #2
   82b84: ed 03 00 91  	mov	x13, sp
   82b88: ad 01 09 8b  	add	x13, x13, x9
   82b8c: e0 03 0a aa  	mov	x0, x10
   82b90: ac 05 00 39  	strb	w12, [x13, #1]
   82b94: ab 01 00 39  	strb	w11, [x13]
   82b98: 1f 28 00 f1  	cmp	x0, #10
   82b9c: ca 00 00 54  	b.ge	0x82bb4 <_ZN4core3fmt3num52_$LT$impl$u20$core..fmt..Debug$u20$for$u20$usize$GT$3fmt17h5db37932efbb435aE.72+0x1e8>
   82ba0: 29 05 00 d1  	sub	x9, x9, #1
   82ba4: 0a c0 00 11  	add	w10, w0, #48
   82ba8: eb 03 00 91  	mov	x11, sp
   82bac: 6a 69 29 38  	strb	w10, [x11, x9]
   82bb0: 0b 00 00 14  	b	0x82bdc <_ZN4core3fmt3num52_$LT$impl$u20$core..fmt..Debug$u20$for$u20$usize$GT$3fmt17h5db37932efbb435aE.72+0x210>
   82bb4: 2a 00 00 90  	adrp	x10, 0x86000 <_ZN4core3fmt3num52_$LT$impl$u20$core..fmt..Debug$u20$for$u20$usize$GT$3fmt17h5db37932efbb435aE.72+0x1f8>
   82bb8: 4a e9 08 91  	add	x10, x10, #570
   82bbc: 4a 05 00 8b  	add	x10, x10, x0, lsl #1
   82bc0: 4b 05 40 39  	ldrb	w11, [x10, #1]
   82bc4: 4a 01 40 39  	ldrb	w10, [x10]
   82bc8: 29 09 00 d1  	sub	x9, x9, #2
   82bcc: ec 03 00 91  	mov	x12, sp
   82bd0: 8c 01 09 8b  	add	x12, x12, x9
   82bd4: 8b 05 00 39  	strb	w11, [x12, #1]
   82bd8: 8a 01 00 39  	strb	w10, [x12]
   82bdc: ea 03 00 91  	mov	x10, sp
   82be0: eb 04 80 52  	mov	w11, #39
   82be4: 22 00 00 90  	adrp	x2, 0x86000 <_ZN4core3fmt3num52_$LT$impl$u20$core..fmt..Debug$u20$for$u20$usize$GT$3fmt17h5db37932efbb435aE.72+0x228>
   82be8: 44 01 09 8b  	add	x4, x10, x9
   82bec: 65 01 09 cb  	sub	x5, x11, x9
   82bf0: 42 a0 06 91  	add	x2, x2, #424
   82bf4: 21 00 80 52  	mov	w1, #1
   82bf8: e0 03 08 aa  	mov	x0, x8
   82bfc: e3 03 1f aa  	mov	x3, xzr
   82c00: 46 fa ff 97  	bl	0x81518 <_ZN4core3fmt9Formatter12pad_integral17ha6f583ca7a70f44dE>
   82c04: fe 43 40 f9  	ldr	x30, [sp, #128]
   82c08: ff 43 02 91  	add	sp, sp, #144
   82c0c: c0 03 5f d6  	ret
   82c10: 22 00 00 90  	adrp	x2, 0x86000 <_ZN4core3fmt3num52_$LT$impl$u20$core..fmt..Debug$u20$for$u20$usize$GT$3fmt17h5db37932efbb435aE.72+0x254>
   82c14: 42 20 0e 91  	add	x2, x2, #904
   82c18: 01 10 80 52  	mov	w1, #128
   82c1c: 13 fb ff 97  	bl	0x81868 <_ZN4core5slice5index26slice_start_index_len_fail17ha3ad23336e78e7f7E>
   82c20: 20 00 20 d4  	brk	#0x1

0000000000082c24 <_ZN4core7unicode12unicode_data15grapheme_extend6lookup17h6270b00245d19f23E>:
   82c24: 2a 00 00 90  	adrp	x10, 0x86000 <_ZN4core7unicode12unicode_data15grapheme_extend6lookup17h6270b00245d19f23E+0x10>
   82c28: e8 03 1f aa  	mov	x8, xzr
   82c2c: 09 50 15 53  	lsl	w9, w0, #11
   82c30: ec 03 80 52  	mov	w12, #31
   82c34: 4a 11 2e 91  	add	x10, x10, #2948
   82c38: eb 03 80 52  	mov	w11, #31
   82c3c: 04 00 00 14  	b	0x82c4c <_ZN4core7unicode12unicode_data15grapheme_extend6lookup17h6270b00245d19f23E+0x28>
   82c40: 88 05 00 91  	add	x8, x12, #1
   82c44: 6c 01 08 eb  	subs	x12, x11, x8
   82c48: 29 01 00 54  	b.ls	0x82c6c <_ZN4core7unicode12unicode_data15grapheme_extend6lookup17h6270b00245d19f23E+0x48>
   82c4c: 0c 05 4c 8b  	add	x12, x8, x12, lsr #1
   82c50: 4d 79 6c b8  	ldr	w13, [x10, x12, lsl #2]
   82c54: ad 51 15 53  	lsl	w13, w13, #11
   82c58: bf 01 09 6b  	cmp	w13, w9
   82c5c: 23 ff ff 54  	b.lo	0x82c40 <_ZN4core7unicode12unicode_data15grapheme_extend6lookup17h6270b00245d19f23E+0x1c>
   82c60: eb 03 0c aa  	mov	x11, x12
   82c64: 01 ff ff 54  	b.ne	0x82c44 <_ZN4core7unicode12unicode_data15grapheme_extend6lookup17h6270b00245d19f23E+0x20>
   82c68: 88 05 00 91  	add	x8, x12, #1
   82c6c: 1f 79 00 f1  	cmp	x8, #30
   82c70: e8 05 00 54  	b.hi	0x82d2c <_ZN4core7unicode12unicode_data15grapheme_extend6lookup17h6270b00245d19f23E+0x108>
   82c74: 1f 79 00 f1  	cmp	x8, #30
   82c78: 21 01 00 54  	b.ne	0x82c9c <_ZN4core7unicode12unicode_data15grapheme_extend6lookup17h6270b00245d19f23E+0x78>
   82c7c: 2b 56 80 52  	mov	w11, #689
   82c80: 09 05 00 f1  	subs	x9, x8, #1
   82c84: 63 01 00 54  	b.lo	0x82cb0 <_ZN4core7unicode12unicode_data15grapheme_extend6lookup17h6270b00245d19f23E+0x8c>
   82c88: 3f 7d 00 f1  	cmp	x9, #31
   82c8c: c2 05 00 54  	b.hs	0x82d44 <_ZN4core7unicode12unicode_data15grapheme_extend6lookup17h6270b00245d19f23E+0x120>
   82c90: 49 79 69 b8  	ldr	w9, [x10, x9, lsl #2]
   82c94: 2c 51 00 12  	and	w12, w9, #0x1fffff
   82c98: 07 00 00 14  	b	0x82cb4 <_ZN4core7unicode12unicode_data15grapheme_extend6lookup17h6270b00245d19f23E+0x90>
   82c9c: 49 09 08 8b  	add	x9, x10, x8, lsl #2
   82ca0: 29 05 40 b9  	ldr	w9, [x9, #4]
   82ca4: 2b fd 55 d3  	lsr	x11, x9, #21
   82ca8: 09 05 00 f1  	subs	x9, x8, #1
   82cac: e2 fe ff 54  	b.hs	0x82c88 <_ZN4core7unicode12unicode_data15grapheme_extend6lookup17h6270b00245d19f23E+0x64>
   82cb0: ec 03 1f 2a  	mov	w12, wzr
   82cb4: 48 79 68 b8  	ldr	w8, [x10, x8, lsl #2]
   82cb8: 08 fd 55 d3  	lsr	x8, x8, #21
   82cbc: 09 05 00 91  	add	x9, x8, #1
   82cc0: 7f 01 09 eb  	cmp	x11, x9
   82cc4: 60 02 00 54  	b.eq	0x82d10 <_ZN4core7unicode12unicode_data15grapheme_extend6lookup17h6270b00245d19f23E+0xec>
   82cc8: 0a 00 0c 4b  	sub	w10, w0, w12
   82ccc: 1f c5 0a f1  	cmp	x8, #689
   82cd0: 2c 56 80 52  	mov	w12, #689
   82cd4: 00 81 8c 9a  	csel	x0, x8, x12, hi
   82cd8: 2c 00 00 90  	adrp	x12, 0x86000 <_ZN4core7unicode12unicode_data15grapheme_extend6lookup17h6270b00245d19f23E+0xc4>
   82cdc: e9 03 1f 2a  	mov	w9, wzr
   82ce0: 6b 05 00 d1  	sub	x11, x11, #1
   82ce4: 8c c1 30 91  	add	x12, x12, #3120
   82ce8: 1f 00 08 eb  	cmp	x0, x8
   82cec: 60 01 00 54  	b.eq	0x82d18 <_ZN4core7unicode12unicode_data15grapheme_extend6lookup17h6270b00245d19f23E+0xf4>
   82cf0: 8d 69 68 38  	ldrb	w13, [x12, x8]
   82cf4: 29 01 0d 0b  	add	w9, w9, w13
   82cf8: 3f 01 0a 6b  	cmp	w9, w10
   82cfc: a8 00 00 54  	b.hi	0x82d10 <_ZN4core7unicode12unicode_data15grapheme_extend6lookup17h6270b00245d19f23E+0xec>
   82d00: 08 05 00 91  	add	x8, x8, #1
   82d04: 7f 01 08 eb  	cmp	x11, x8
   82d08: 01 ff ff 54  	b.ne	0x82ce8 <_ZN4core7unicode12unicode_data15grapheme_extend6lookup17h6270b00245d19f23E+0xc4>
   82d0c: e8 03 0b aa  	mov	x8, x11
   82d10: 00 01 00 12  	and	w0, w8, #0x1
   82d14: c0 03 5f d6  	ret
   82d18: 22 00 00 90  	adrp	x2, 0x86000 <_ZN4core7unicode12unicode_data15grapheme_extend6lookup17h6270b00245d19f23E+0x104>
   82d1c: 42 a0 3b 91  	add	x2, x2, #3816
   82d20: 21 56 80 52  	mov	w1, #689
   82d24: 7e f9 ff 97  	bl	0x8131c <_ZN4core9panicking18panic_bounds_check17h8ada80d8af39de02E>
   82d28: 20 00 20 d4  	brk	#0x1
   82d2c: 22 00 00 90  	adrp	x2, 0x86000 <_ZN4core7unicode12unicode_data15grapheme_extend6lookup17h6270b00245d19f23E+0x118>
   82d30: 42 00 30 91  	add	x2, x2, #3072
   82d34: e1 03 80 52  	mov	w1, #31
   82d38: e0 03 08 aa  	mov	x0, x8
   82d3c: 78 f9 ff 97  	bl	0x8131c <_ZN4core9panicking18panic_bounds_check17h8ada80d8af39de02E>
   82d40: 20 00 20 d4  	brk	#0x1
   82d44: 22 00 00 90  	adrp	x2, 0x86000 <_ZN4core7unicode12unicode_data15grapheme_extend6lookup17h6270b00245d19f23E+0x130>
   82d48: 42 60 30 91  	add	x2, x2, #3096
   82d4c: e1 03 80 52  	mov	w1, #31
   82d50: e0 03 09 aa  	mov	x0, x9
   82d54: 72 f9 ff 97  	bl	0x8131c <_ZN4core9panicking18panic_bounds_check17h8ada80d8af39de02E>
   82d58: 20 00 20 d4  	brk	#0x1

0000000000082d5c <_ZN4core7unicode9printable12is_printable17ha641fcfcb2036eb6E>:
   82d5c: 1f 40 40 71  	cmp	w0, #16, lsl #12
   82d60: a2 04 00 54  	b.hs	0x82df4 <_ZN4core7unicode9printable12is_printable17ha641fcfcb2036eb6E+0x98>
   82d64: 2c 00 00 90  	adrp	x12, 0x86000 <_ZN4core7unicode9printable12is_printable17ha641fcfcb2036eb6E+0x18>
   82d68: 2b 00 00 90  	adrp	x11, 0x86000 <_ZN4core7unicode9printable12is_printable17ha641fcfcb2036eb6E+0x1c>
   82d6c: 2d 00 00 90  	adrp	x13, 0x86000 <_ZN4core7unicode9printable12is_printable17ha641fcfcb2036eb6E+0x20>
   82d70: e9 03 1f aa  	mov	x9, xzr
   82d74: 8c 7d 17 91  	add	x12, x12, #1503
   82d78: 0a 7c 08 53  	lsr	w10, w0, #8
   82d7c: 6b 41 19 91  	add	x11, x11, #1616
   82d80: ad c5 18 91  	add	x13, x13, #1585
   82d84: 88 01 40 39  	ldrb	w8, [x12]
   82d88: 8e 05 40 39  	ldrb	w14, [x12, #1]
   82d8c: 8c 09 00 91  	add	x12, x12, #2
   82d90: 1f 01 2a 6b  	cmp	w8, w10, uxtb
   82d94: 28 01 0e 8b  	add	x8, x9, x14
   82d98: 81 01 00 54  	b.ne	0x82dc8 <_ZN4core7unicode9printable12is_printable17ha641fcfcb2036eb6E+0x6c>
   82d9c: 1f 01 09 eb  	cmp	x8, x9
   82da0: a3 11 00 54  	b.lo	0x82fd4 <_ZN4core7unicode9printable12is_printable17ha641fcfcb2036eb6E+0x278>
   82da4: 1f 89 04 f1  	cmp	x8, #290
   82da8: 28 12 00 54  	b.hi	0x82fec <_ZN4core7unicode9printable12is_printable17ha641fcfcb2036eb6E+0x290>
   82dac: 69 01 09 8b  	add	x9, x11, x9
   82db0: ee 00 00 b4  	cbz	x14, 0x82dcc <_ZN4core7unicode9printable12is_printable17ha641fcfcb2036eb6E+0x70>
   82db4: 2f 15 40 38  	ldrb	w15, [x9], #1
   82db8: ce 05 00 d1  	sub	x14, x14, #1
   82dbc: ff 01 20 6b  	cmp	w15, w0, uxtb
   82dc0: 81 ff ff 54  	b.ne	0x82db0 <_ZN4core7unicode9printable12is_printable17ha641fcfcb2036eb6E+0x54>
   82dc4: 32 00 00 14  	b	0x82e8c <_ZN4core7unicode9printable12is_printable17ha641fcfcb2036eb6E+0x130>
   82dc8: 88 00 00 54  	b.hi	0x82dd8 <_ZN4core7unicode9printable12is_printable17ha641fcfcb2036eb6E+0x7c>
   82dcc: 9f 01 0d eb  	cmp	x12, x13
   82dd0: e9 03 08 aa  	mov	x9, x8
   82dd4: 81 fd ff 54  	b.ne	0x82d84 <_ZN4core7unicode9printable12is_printable17ha641fcfcb2036eb6E+0x28>
   82dd8: 2b 00 00 90  	adrp	x11, 0x86000 <_ZN4core7unicode9printable12is_printable17ha641fcfcb2036eb6E+0x8c>
   82ddc: 2a 00 00 90  	adrp	x10, 0x86000 <_ZN4core7unicode9printable12is_printable17ha641fcfcb2036eb6E+0x90>
   82de0: 09 3c 00 12  	and	w9, w0, #0xffff
   82de4: 6b c9 1d 91  	add	x11, x11, #1906
   82de8: 28 00 80 52  	mov	w8, #1
   82dec: 4a 9d 22 91  	add	x10, x10, #2215
   82df0: 2f 00 00 14  	b	0x82eac <_ZN4core7unicode9printable12is_printable17ha641fcfcb2036eb6E+0x150>
   82df4: 1f 80 40 71  	cmp	w0, #32, lsl #12
   82df8: 42 07 00 54  	b.hs	0x82ee0 <_ZN4core7unicode9printable12is_printable17ha641fcfcb2036eb6E+0x184>
   82dfc: 2c 00 00 90  	adrp	x12, 0x86000 <_ZN4core7unicode9printable12is_printable17ha641fcfcb2036eb6E+0xb0>
   82e00: 2b 00 00 90  	adrp	x11, 0x86000 <_ZN4core7unicode9printable12is_printable17ha641fcfcb2036eb6E+0xb4>
   82e04: 2d 00 00 90  	adrp	x13, 0x86000 <_ZN4core7unicode9printable12is_printable17ha641fcfcb2036eb6E+0xb8>
   82e08: e9 03 1f aa  	mov	x9, xzr
   82e0c: 8c 01 23 91  	add	x12, x12, #2240
   82e10: 0a 7c 08 53  	lsr	w10, w0, #8
   82e14: 6b 31 24 91  	add	x11, x11, #2316
   82e18: ad 31 24 91  	add	x13, x13, #2316
   82e1c: 88 01 40 39  	ldrb	w8, [x12]
   82e20: 8e 05 40 39  	ldrb	w14, [x12, #1]
   82e24: 8c 09 00 91  	add	x12, x12, #2
   82e28: 1f 01 2a 6b  	cmp	w8, w10, uxtb
   82e2c: 28 01 0e 8b  	add	x8, x9, x14
   82e30: 81 01 00 54  	b.ne	0x82e60 <_ZN4core7unicode9printable12is_printable17ha641fcfcb2036eb6E+0x104>
   82e34: 1f 01 09 eb  	cmp	x8, x9
   82e38: e3 0c 00 54  	b.lo	0x82fd4 <_ZN4core7unicode9printable12is_printable17ha641fcfcb2036eb6E+0x278>
   82e3c: 1f bd 02 f1  	cmp	x8, #175
   82e40: e8 0d 00 54  	b.hi	0x82ffc <_ZN4core7unicode9printable12is_printable17ha641fcfcb2036eb6E+0x2a0>
   82e44: 69 01 09 8b  	add	x9, x11, x9
   82e48: ee 00 00 b4  	cbz	x14, 0x82e64 <_ZN4core7unicode9printable12is_printable17ha641fcfcb2036eb6E+0x108>
   82e4c: 2f 15 40 38  	ldrb	w15, [x9], #1
   82e50: ce 05 00 d1  	sub	x14, x14, #1
   82e54: ff 01 20 6b  	cmp	w15, w0, uxtb
   82e58: 81 ff ff 54  	b.ne	0x82e48 <_ZN4core7unicode9printable12is_printable17ha641fcfcb2036eb6E+0xec>
   82e5c: 0c 00 00 14  	b	0x82e8c <_ZN4core7unicode9printable12is_printable17ha641fcfcb2036eb6E+0x130>
   82e60: 88 00 00 54  	b.hi	0x82e70 <_ZN4core7unicode9printable12is_printable17ha641fcfcb2036eb6E+0x114>
   82e64: 9f 01 0d eb  	cmp	x12, x13
   82e68: e9 03 08 aa  	mov	x9, x8
   82e6c: 81 fd ff 54  	b.ne	0x82e1c <_ZN4core7unicode9printable12is_printable17ha641fcfcb2036eb6E+0xc0>
   82e70: 2b 00 00 90  	adrp	x11, 0x86000 <_ZN4core7unicode9printable12is_printable17ha641fcfcb2036eb6E+0x124>
   82e74: 2a 00 00 90  	adrp	x10, 0x86000 <_ZN4core7unicode9printable12is_printable17ha641fcfcb2036eb6E+0x128>
   82e78: 09 3c 00 12  	and	w9, w0, #0xffff
   82e7c: 6b ed 26 91  	add	x11, x11, #2491
   82e80: 28 00 80 52  	mov	w8, #1
   82e84: 4a 79 2d 91  	add	x10, x10, #2910
   82e88: 45 00 00 14  	b	0x82f9c <_ZN4core7unicode9printable12is_printable17ha641fcfcb2036eb6E+0x240>
   82e8c: e0 03 00 12  	and	w0, wzr, #0x1
   82e90: c0 03 5f d6  	ret
   82e94: eb 03 0d aa  	mov	x11, x13
   82e98: 29 01 0c 6b  	subs	w9, w9, w12
   82e9c: 84 09 00 54  	b.mi	0x82fcc <_ZN4core7unicode9printable12is_printable17ha641fcfcb2036eb6E+0x270>
   82ea0: 7f 01 0a eb  	cmp	x11, x10
   82ea4: 08 01 00 52  	eor	w8, w8, #0x1
   82ea8: 20 09 00 54  	b.eq	0x82fcc <_ZN4core7unicode9printable12is_printable17ha641fcfcb2036eb6E+0x270>
   82eac: ed 03 0b aa  	mov	x13, x11
   82eb0: ae 15 c0 38  	ldrsb	w14, [x13], #1
   82eb4: cc 1d 00 12  	and	w12, w14, #0xff
   82eb8: ee fe ff 36  	tbz	w14, #31, 0x82e94 <_ZN4core7unicode9printable12is_printable17ha641fcfcb2036eb6E+0x138>
   82ebc: bf 01 0a eb  	cmp	x13, x10
   82ec0: a0 0a 00 54  	b.eq	0x83014 <_ZN4core7unicode9printable12is_printable17ha641fcfcb2036eb6E+0x2b8>
   82ec4: 8d 19 00 12  	and	w13, w12, #0x7f
   82ec8: 6c 05 40 39  	ldrb	w12, [x11, #1]
   82ecc: 6b 09 00 91  	add	x11, x11, #2
   82ed0: ac 19 18 33  	bfi	w12, w13, #8, #7
   82ed4: 29 01 0c 6b  	subs	w9, w9, w12
   82ed8: 45 fe ff 54  	b.pl	0x82ea0 <_ZN4core7unicode9printable12is_printable17ha641fcfcb2036eb6E+0x144>
   82edc: 3c 00 00 14  	b	0x82fcc <_ZN4core7unicode9printable12is_printable17ha641fcfcb2036eb6E+0x270>
   82ee0: a8 96 9d 52  	mov	w8, #60597
   82ee4: 88 ff bf 72  	movk	w8, #65532, lsl #16
   82ee8: a9 b6 9d 52  	mov	w9, #60853
   82eec: 08 00 08 0b  	add	w8, w0, w8
   82ef0: 49 01 a0 72  	movk	w9, #10, lsl #16
   82ef4: 1f 01 09 6b  	cmp	w8, w9
   82ef8: e8 03 1f 2a  	mov	w8, wzr
   82efc: 83 06 00 54  	b.lo	0x82fcc <_ZN4core7unicode9printable12is_printable17ha641fcfcb2036eb6E+0x270>
   82f00: 49 bc 80 52  	mov	w9, #1506
   82f04: a9 ff bf 72  	movk	w9, #65533, lsl #16
   82f08: 09 00 09 0b  	add	w9, w0, w9
   82f0c: 3f 89 17 71  	cmp	w9, #1506
   82f10: e3 05 00 54  	b.lo	0x82fcc <_ZN4core7unicode9printable12is_printable17ha641fcfcb2036eb6E+0x270>
   82f14: 29 f5 38 11  	add	w9, w9, #3645
   82f18: 3f 7d 30 71  	cmp	w9, #3103
   82f1c: 83 05 00 54  	b.lo	0x82fcc <_ZN4core7unicode9printable12is_printable17ha641fcfcb2036eb6E+0x270>
   82f20: c9 2b 86 52  	mov	w9, #12638
   82f24: a9 ff bf 72  	movk	w9, #65533, lsl #16
   82f28: 09 00 09 0b  	add	w9, w0, w9
   82f2c: 3f 39 00 71  	cmp	w9, #14
   82f30: e3 04 00 54  	b.lo	0x82fcc <_ZN4core7unicode9printable12is_printable17ha641fcfcb2036eb6E+0x270>
   82f34: ca 03 97 52  	mov	w10, #47134
   82f38: 09 4c 1f 12  	and	w9, w0, #0x1ffffe
   82f3c: 4a 00 a0 72  	movk	w10, #2, lsl #16
   82f40: 3f 01 0a 6b  	cmp	w9, w10
   82f44: 40 04 00 54  	b.eq	0x82fcc <_ZN4core7unicode9printable12is_printable17ha641fcfcb2036eb6E+0x270>
   82f48: 49 24 8b 52  	mov	w9, #22818
   82f4c: a9 ff bf 72  	movk	w9, #65533, lsl #16
   82f50: 09 00 09 0b  	add	w9, w0, w9
   82f54: 3f 89 00 71  	cmp	w9, #34
   82f58: a3 03 00 54  	b.lo	0x82fcc <_ZN4core7unicode9printable12is_printable17ha641fcfcb2036eb6E+0x270>
   82f5c: 69 19 89 52  	mov	w9, #18635
   82f60: a9 ff bf 72  	movk	w9, #65533, lsl #16
   82f64: 09 00 09 0b  	add	w9, w0, w9
   82f68: 3f 2d 00 71  	cmp	w9, #11
   82f6c: 03 03 00 54  	b.lo	0x82fcc <_ZN4core7unicode9printable12is_printable17ha641fcfcb2036eb6E+0x270>
   82f70: 08 3e 80 52  	mov	w8, #496
   82f74: c8 01 a0 72  	movk	w8, #14, lsl #16
   82f78: 1f 00 08 6b  	cmp	w0, w8
   82f7c: e0 27 9f 1a  	cset	w0, lo
   82f80: c0 03 5f d6  	ret
   82f84: eb 03 0d aa  	mov	x11, x13
   82f88: 29 01 0c 6b  	subs	w9, w9, w12
   82f8c: 04 02 00 54  	b.mi	0x82fcc <_ZN4core7unicode9printable12is_printable17ha641fcfcb2036eb6E+0x270>
   82f90: 7f 01 0a eb  	cmp	x11, x10
   82f94: 08 01 00 52  	eor	w8, w8, #0x1
   82f98: a0 01 00 54  	b.eq	0x82fcc <_ZN4core7unicode9printable12is_printable17ha641fcfcb2036eb6E+0x270>
   82f9c: ed 03 0b aa  	mov	x13, x11
   82fa0: ae 15 c0 38  	ldrsb	w14, [x13], #1
   82fa4: cc 1d 00 12  	and	w12, w14, #0xff
   82fa8: ee fe ff 36  	tbz	w14, #31, 0x82f84 <_ZN4core7unicode9printable12is_printable17ha641fcfcb2036eb6E+0x228>
   82fac: bf 01 0a eb  	cmp	x13, x10
   82fb0: 20 03 00 54  	b.eq	0x83014 <_ZN4core7unicode9printable12is_printable17ha641fcfcb2036eb6E+0x2b8>
   82fb4: 8d 19 00 12  	and	w13, w12, #0x7f
   82fb8: 6c 05 40 39  	ldrb	w12, [x11, #1]
   82fbc: 6b 09 00 91  	add	x11, x11, #2
   82fc0: ac 19 18 33  	bfi	w12, w13, #8, #7
   82fc4: 29 01 0c 6b  	subs	w9, w9, w12
   82fc8: 45 fe ff 54  	b.pl	0x82f90 <_ZN4core7unicode9printable12is_printable17ha641fcfcb2036eb6E+0x234>
   82fcc: 00 01 00 12  	and	w0, w8, #0x1
   82fd0: c0 03 5f d6  	ret
   82fd4: 22 00 00 90  	adrp	x2, 0x86000 <_ZN4core7unicode9printable12is_printable17ha641fcfcb2036eb6E+0x288>
   82fd8: 42 e0 18 91  	add	x2, x2, #1592
   82fdc: e0 03 09 aa  	mov	x0, x9
   82fe0: e1 03 08 aa  	mov	x1, x8
   82fe4: dc fb ff 97  	bl	0x81f54 <_ZN4core5slice5index22slice_index_order_fail17h806852bf6aeb5b48E>
   82fe8: 20 00 20 d4  	brk	#0x1
   82fec: 22 00 00 90  	adrp	x2, 0x86000 <_ZN4core7unicode9printable12is_printable17ha641fcfcb2036eb6E+0x2a0>
   82ff0: 42 e0 18 91  	add	x2, x2, #1592
   82ff4: 41 24 80 52  	mov	w1, #290
   82ff8: 04 00 00 14  	b	0x83008 <_ZN4core7unicode9printable12is_printable17ha641fcfcb2036eb6E+0x2ac>
   82ffc: 22 00 00 90  	adrp	x2, 0x86000 <_ZN4core7unicode9printable12is_printable17ha641fcfcb2036eb6E+0x2b0>
   83000: 42 e0 18 91  	add	x2, x2, #1592
   83004: e1 15 80 52  	mov	w1, #175
   83008: e0 03 08 aa  	mov	x0, x8
   8300c: 29 fa ff 97  	bl	0x818b0 <_ZN4core5slice5index24slice_end_index_len_fail17hfcb16d41a5d796d5E>
   83010: 20 00 20 d4  	brk	#0x1
   83014: 00 00 00 f0  	adrp	x0, 0x86000 <_ZN4core7unicode9printable12is_printable17ha641fcfcb2036eb6E+0x2c4>
   83018: 02 00 00 f0  	adrp	x2, 0x86000 <_ZN4core7unicode9printable12is_printable17ha641fcfcb2036eb6E+0x2c8>
   8301c: 00 a0 14 91  	add	x0, x0, #1320
   83020: 42 a0 22 91  	add	x2, x2, #2216
   83024: 61 05 80 52  	mov	w1, #43
   83028: 34 fa ff 97  	bl	0x818f8 <_ZN4core9panicking5panic17h0d86cd7d69f331f6E>
   8302c: 20 00 20 d4  	brk	#0x1

0000000000083030 <_ZN4core3fmt8builders11DebugStruct5field17hd9641a54df8a3bf1E>:
   83030: ff 03 03 d1  	sub	sp, sp, #192
   83034: fe 67 08 a9  	stp	x30, x25, [sp, #128]
   83038: f8 5f 09 a9  	stp	x24, x23, [sp, #144]
   8303c: f6 57 0a a9  	stp	x22, x21, [sp, #160]
   83040: f4 4f 0b a9  	stp	x20, x19, [sp, #176]
   83044: 08 20 40 39  	ldrb	w8, [x0, #8]
   83048: f3 03 00 aa  	mov	x19, x0
   8304c: 39 00 80 52  	mov	w25, #1
   83050: 20 00 80 52  	mov	w0, #1
   83054: 08 0b 00 35  	cbnz	w8, 0x831b4 <_ZN4core3fmt8builders11DebugStruct5field17hd9641a54df8a3bf1E+0x184>
   83058: 76 02 40 f9  	ldr	x22, [x19]
   8305c: 68 26 40 39  	ldrb	w8, [x19, #9]
   83060: f5 03 04 aa  	mov	x21, x4
   83064: f4 03 03 aa  	mov	x20, x3
   83068: c9 c2 40 39  	ldrb	w9, [x22, #48]
   8306c: f7 03 02 aa  	mov	x23, x2
   83070: f8 03 01 aa  	mov	x24, x1
   83074: e9 03 10 37  	tbnz	w9, #2, 0x830f0 <_ZN4core3fmt8builders11DebugStruct5field17hd9641a54df8a3bf1E+0xc0>
   83078: c0 26 42 a9  	ldp	x0, x9, [x22, #32]
   8307c: 1f 01 00 71  	cmp	w8, #0
   83080: 0a 00 00 f0  	adrp	x10, 0x86000 <_ZN4core3fmt8builders11DebugStruct5field17hd9641a54df8a3bf1E+0x5c>
   83084: 0b 00 00 f0  	adrp	x11, 0x86000 <_ZN4core3fmt8builders11DebugStruct5field17hd9641a54df8a3bf1E+0x60>
   83088: 28 0d 40 f9  	ldr	x8, [x9, #24]
   8308c: 4a 3d 3d 91  	add	x10, x10, #3919
   83090: 6b 31 3d 91  	add	x11, x11, #3916
   83094: 49 00 80 52  	mov	w9, #2
   83098: 61 01 8a 9a  	csel	x1, x11, x10, eq
   8309c: 22 15 89 9a  	cinc	x2, x9, eq
   830a0: 00 01 3f d6  	blr	x8
   830a4: 60 08 00 37  	tbnz	w0, #0, 0x831b0 <_ZN4core3fmt8builders11DebugStruct5field17hd9641a54df8a3bf1E+0x180>
   830a8: c0 22 42 a9  	ldp	x0, x8, [x22, #32]
   830ac: e1 03 18 aa  	mov	x1, x24
   830b0: e2 03 17 aa  	mov	x2, x23
   830b4: 08 0d 40 f9  	ldr	x8, [x8, #24]
   830b8: 00 01 3f d6  	blr	x8
   830bc: a0 07 00 37  	tbnz	w0, #0, 0x831b0 <_ZN4core3fmt8builders11DebugStruct5field17hd9641a54df8a3bf1E+0x180>
   830c0: c0 22 42 a9  	ldp	x0, x8, [x22, #32]
   830c4: 01 00 00 f0  	adrp	x1, 0x86000 <_ZN4core3fmt8builders11DebugStruct5field17hd9641a54df8a3bf1E+0xa0>
   830c8: 21 20 11 91  	add	x1, x1, #1096
   830cc: 42 00 80 52  	mov	w2, #2
   830d0: 08 0d 40 f9  	ldr	x8, [x8, #24]
   830d4: 00 01 3f d6  	blr	x8
   830d8: c0 06 00 37  	tbnz	w0, #0, 0x831b0 <_ZN4core3fmt8builders11DebugStruct5field17hd9641a54df8a3bf1E+0x180>
   830dc: a8 0e 40 f9  	ldr	x8, [x21, #24]
   830e0: e0 03 14 aa  	mov	x0, x20
   830e4: e1 03 16 aa  	mov	x1, x22
   830e8: 00 01 3f d6  	blr	x8
   830ec: 32 00 00 14  	b	0x831b4 <_ZN4core3fmt8builders11DebugStruct5field17hd9641a54df8a3bf1E+0x184>
   830f0: 08 01 00 35  	cbnz	w8, 0x83110 <_ZN4core3fmt8builders11DebugStruct5field17hd9641a54df8a3bf1E+0xe0>
   830f4: c0 22 42 a9  	ldp	x0, x8, [x22, #32]
   830f8: 01 00 00 f0  	adrp	x1, 0x86000 <_ZN4core3fmt8builders11DebugStruct5field17hd9641a54df8a3bf1E+0xd4>
   830fc: 21 20 3e 91  	add	x1, x1, #3976
   83100: 62 00 80 52  	mov	w2, #3
   83104: 08 0d 40 f9  	ldr	x8, [x8, #24]
   83108: 00 01 3f d6  	blr	x8
   8310c: 20 05 00 37  	tbnz	w0, #0, 0x831b0 <_ZN4core3fmt8builders11DebugStruct5field17hd9641a54df8a3bf1E+0x180>
   83110: 28 00 80 52  	mov	w8, #1
   83114: e8 f3 00 39  	strb	w8, [sp, #60]
   83118: c8 26 42 a9  	ldp	x8, x9, [x22, #32]
   8311c: ea f3 00 91  	add	x10, sp, #60
   83120: e0 83 00 91  	add	x0, sp, #32
   83124: e1 03 18 aa  	mov	x1, x24
   83128: e9 ab 02 a9  	stp	x9, x10, [sp, #40]
   8312c: e8 13 00 f9  	str	x8, [sp, #32]
   83130: c8 06 40 f9  	ldr	x8, [x22, #8]
   83134: c0 1a 40 fd  	ldr	d0, [x22, #48]
   83138: c9 e2 40 39  	ldrb	w9, [x22, #56]
   8313c: ea 83 00 91  	add	x10, sp, #32
   83140: e8 07 00 f9  	str	x8, [sp, #8]
   83144: c8 02 40 f9  	ldr	x8, [x22]
   83148: e2 03 17 aa  	mov	x2, x23
   8314c: e8 03 00 f9  	str	x8, [sp]
   83150: c8 0e 40 f9  	ldr	x8, [x22, #24]
   83154: e8 0f 00 f9  	str	x8, [sp, #24]
   83158: c8 0a 40 f9  	ldr	x8, [x22, #16]
   8315c: e0 3b 00 fd  	str	d0, [sp, #112]
   83160: e9 e3 01 39  	strb	w9, [sp, #120]
   83164: e8 0b 00 f9  	str	x8, [sp, #16]
   83168: e1 0b 40 ad  	ldp	q1, q2, [sp]
   8316c: 08 00 00 f0  	adrp	x8, 0x86000 <_ZN4core3fmt8builders11DebugStruct5field17hd9641a54df8a3bf1E+0x148>
   83170: 08 61 3d 91  	add	x8, x8, #3928
   83174: ea 23 06 a9  	stp	x10, x8, [sp, #96]
   83178: e1 0b 02 ad  	stp	q1, q2, [sp, #64]
   8317c: fd fb ff 97  	bl	0x82170 <_ZN68_$LT$core..fmt..builders..PadAdapter$u20$as$u20$core..fmt..Write$GT$9write_str17h3825e647a41714ecE>
   83180: 80 01 00 37  	tbnz	w0, #0, 0x831b0 <_ZN4core3fmt8builders11DebugStruct5field17hd9641a54df8a3bf1E+0x180>
   83184: 01 00 00 f0  	adrp	x1, 0x86000 <_ZN4core3fmt8builders11DebugStruct5field17hd9641a54df8a3bf1E+0x160>
   83188: 21 20 11 91  	add	x1, x1, #1096
   8318c: e0 83 00 91  	add	x0, sp, #32
   83190: 42 00 80 52  	mov	w2, #2
   83194: f7 fb ff 97  	bl	0x82170 <_ZN68_$LT$core..fmt..builders..PadAdapter$u20$as$u20$core..fmt..Write$GT$9write_str17h3825e647a41714ecE>
   83198: c0 00 00 35  	cbnz	w0, 0x831b0 <_ZN4core3fmt8builders11DebugStruct5field17hd9641a54df8a3bf1E+0x180>
   8319c: a8 0e 40 f9  	ldr	x8, [x21, #24]
   831a0: e1 03 01 91  	add	x1, sp, #64
   831a4: e0 03 14 aa  	mov	x0, x20
   831a8: 00 01 3f d6  	blr	x8
   831ac: 60 01 00 36  	tbz	w0, #0, 0x831d8 <_ZN4core3fmt8builders11DebugStruct5field17hd9641a54df8a3bf1E+0x1a8>
   831b0: 20 00 80 52  	mov	w0, #1
   831b4: 60 22 00 39  	strb	w0, [x19, #8]
   831b8: 79 26 00 39  	strb	w25, [x19, #9]
   831bc: e0 03 13 aa  	mov	x0, x19
   831c0: f4 4f 4b a9  	ldp	x20, x19, [sp, #176]
   831c4: f6 57 4a a9  	ldp	x22, x21, [sp, #160]
   831c8: f8 5f 49 a9  	ldp	x24, x23, [sp, #144]
   831cc: fe 67 48 a9  	ldp	x30, x25, [sp, #128]
   831d0: ff 03 03 91  	add	sp, sp, #192
   831d4: c0 03 5f d6  	ret
   831d8: e0 23 46 a9  	ldp	x0, x8, [sp, #96]
   831dc: 01 00 00 f0  	adrp	x1, 0x86000 <_ZN4core3fmt8builders11DebugStruct5field17hd9641a54df8a3bf1E+0x1b8>
   831e0: 21 2c 3e 91  	add	x1, x1, #3979
   831e4: 42 00 80 52  	mov	w2, #2
   831e8: 08 0d 40 f9  	ldr	x8, [x8, #24]
   831ec: 00 01 3f d6  	blr	x8
   831f0: f1 ff ff 17  	b	0x831b4 <_ZN4core3fmt8builders11DebugStruct5field17hd9641a54df8a3bf1E+0x184>

00000000000831f4 <_ZN4core3fmt5Write10write_char17h2b1e5227eb5c9fe4E>:
   831f4: fe 0f 1f f8  	str	x30, [sp, #-16]!
   831f8: 3f 00 02 71  	cmp	w1, #128
   831fc: ff 0f 00 b9  	str	wzr, [sp, #12]
   83200: e2 00 00 54  	b.hs	0x8321c <_ZN4core3fmt5Write10write_char17h2b1e5227eb5c9fe4E+0x28>
   83204: e1 33 00 39  	strb	w1, [sp, #12]
   83208: 22 00 80 52  	mov	w2, #1
   8320c: e1 33 00 91  	add	x1, sp, #12
   83210: d8 fb ff 97  	bl	0x82170 <_ZN68_$LT$core..fmt..builders..PadAdapter$u20$as$u20$core..fmt..Write$GT$9write_str17h3825e647a41714ecE>
   83214: fe 07 41 f8  	ldr	x30, [sp], #16
   83218: c0 03 5f d6  	ret
   8321c: 3f 00 20 71  	cmp	w1, #2048
   83220: 82 01 00 54  	b.hs	0x83250 <_ZN4core3fmt5Write10write_char17h2b1e5227eb5c9fe4E+0x5c>
   83224: 28 7c 06 53  	lsr	w8, w1, #6
   83228: 09 10 80 52  	mov	w9, #128
   8322c: 08 05 1a 32  	orr	w8, w8, #0xc0
   83230: 29 14 00 33  	bfxil	w9, w1, #0, #6
   83234: e8 33 00 39  	strb	w8, [sp, #12]
   83238: e9 37 00 39  	strb	w9, [sp, #13]
   8323c: 42 00 80 52  	mov	w2, #2
   83240: e1 33 00 91  	add	x1, sp, #12
   83244: cb fb ff 97  	bl	0x82170 <_ZN68_$LT$core..fmt..builders..PadAdapter$u20$as$u20$core..fmt..Write$GT$9write_str17h3825e647a41714ecE>
   83248: fe 07 41 f8  	ldr	x30, [sp], #16
   8324c: c0 03 5f d6  	ret
   83250: 3f 40 40 71  	cmp	w1, #16, lsl #12
   83254: e2 01 00 54  	b.hs	0x83290 <_ZN4core3fmt5Write10write_char17h2b1e5227eb5c9fe4E+0x9c>
   83258: 28 7c 0c 53  	lsr	w8, w1, #12
   8325c: 09 10 80 52  	mov	w9, #128
   83260: 0a 10 80 52  	mov	w10, #128
   83264: 08 09 1b 32  	orr	w8, w8, #0xe0
   83268: 2a 2c 06 33  	bfxil	w10, w1, #6, #6
   8326c: 29 14 00 33  	bfxil	w9, w1, #0, #6
   83270: e8 33 00 39  	strb	w8, [sp, #12]
   83274: ea 37 00 39  	strb	w10, [sp, #13]
   83278: e9 3b 00 39  	strb	w9, [sp, #14]
   8327c: 62 00 80 52  	mov	w2, #3
   83280: e1 33 00 91  	add	x1, sp, #12
   83284: bb fb ff 97  	bl	0x82170 <_ZN68_$LT$core..fmt..builders..PadAdapter$u20$as$u20$core..fmt..Write$GT$9write_str17h3825e647a41714ecE>
   83288: fe 07 41 f8  	ldr	x30, [sp], #16
   8328c: c0 03 5f d6  	ret
   83290: 28 7c 12 53  	lsr	w8, w1, #18
   83294: 09 10 80 52  	mov	w9, #128
   83298: 0a 10 80 52  	mov	w10, #128
   8329c: 0b 10 80 52  	mov	w11, #128
   832a0: 08 0d 1c 32  	orr	w8, w8, #0xf0
   832a4: 2a 44 0c 33  	bfxil	w10, w1, #12, #6
   832a8: 2b 2c 06 33  	bfxil	w11, w1, #6, #6
   832ac: 29 14 00 33  	bfxil	w9, w1, #0, #6
   832b0: 82 00 80 52  	mov	w2, #4
   832b4: e8 33 00 39  	strb	w8, [sp, #12]
   832b8: ea 37 00 39  	strb	w10, [sp, #13]
   832bc: eb 3b 00 39  	strb	w11, [sp, #14]
   832c0: e9 3f 00 39  	strb	w9, [sp, #15]
   832c4: e1 33 00 91  	add	x1, sp, #12
   832c8: aa fb ff 97  	bl	0x82170 <_ZN68_$LT$core..fmt..builders..PadAdapter$u20$as$u20$core..fmt..Write$GT$9write_str17h3825e647a41714ecE>
   832cc: fe 07 41 f8  	ldr	x30, [sp], #16
   832d0: c0 03 5f d6  	ret

00000000000832d4 <_ZN4core3fmt5Write9write_fmt17h30467bf8f008fbccE>:
   832d4: ff 03 01 d1  	sub	sp, sp, #64
   832d8: fe 03 03 a9  	stp	x30, x0, [sp, #48]
   832dc: e0 03 00 91  	mov	x0, sp
   832e0: 02 06 80 52  	mov	w2, #48
   832e4: 4b 04 00 94  	bl	0x84410 <memcpy>
   832e8: 01 00 00 f0  	adrp	x1, 0x86000 <_ZN4core3fmt5Write9write_fmt17h30467bf8f008fbccE+0x20>
   832ec: 21 40 3e 91  	add	x1, x1, #3984
   832f0: e0 e3 00 91  	add	x0, sp, #56
   832f4: e2 03 00 91  	mov	x2, sp
   832f8: 99 fa ff 97  	bl	0x81d5c <_ZN4core3fmt5write17h63775af3066fbce8E>
   832fc: fe 1b 40 f9  	ldr	x30, [sp, #48]
   83300: ff 03 01 91  	add	sp, sp, #64
   83304: c0 03 5f d6  	ret

0000000000083308 <_ZN50_$LT$$RF$mut$u20$W$u20$as$u20$core..fmt..Write$GT$9write_str17h4389b3a94789348fE>:
   83308: 00 00 40 f9  	ldr	x0, [x0]
   8330c: 99 fb ff 17  	b	0x82170 <_ZN68_$LT$core..fmt..builders..PadAdapter$u20$as$u20$core..fmt..Write$GT$9write_str17h3825e647a41714ecE>

0000000000083310 <_ZN50_$LT$$RF$mut$u20$W$u20$as$u20$core..fmt..Write$GT$10write_char17h36047407a7ec2c59E>:
   83310: fe 0f 1f f8  	str	x30, [sp, #-16]!
   83314: 00 00 40 f9  	ldr	x0, [x0]
   83318: 3f 00 02 71  	cmp	w1, #128
   8331c: ff 0f 00 b9  	str	wzr, [sp, #12]
   83320: e2 00 00 54  	b.hs	0x8333c <_ZN50_$LT$$RF$mut$u20$W$u20$as$u20$core..fmt..Write$GT$10write_char17h36047407a7ec2c59E+0x2c>
   83324: e1 33 00 39  	strb	w1, [sp, #12]
   83328: 22 00 80 52  	mov	w2, #1
   8332c: e1 33 00 91  	add	x1, sp, #12
   83330: 90 fb ff 97  	bl	0x82170 <_ZN68_$LT$core..fmt..builders..PadAdapter$u20$as$u20$core..fmt..Write$GT$9write_str17h3825e647a41714ecE>
   83334: fe 07 41 f8  	ldr	x30, [sp], #16
   83338: c0 03 5f d6  	ret
   8333c: 3f 00 20 71  	cmp	w1, #2048
   83340: 82 01 00 54  	b.hs	0x83370 <_ZN50_$LT$$RF$mut$u20$W$u20$as$u20$core..fmt..Write$GT$10write_char17h36047407a7ec2c59E+0x60>
   83344: 28 7c 06 53  	lsr	w8, w1, #6
   83348: 09 10 80 52  	mov	w9, #128
   8334c: 08 05 1a 32  	orr	w8, w8, #0xc0
   83350: 29 14 00 33  	bfxil	w9, w1, #0, #6
   83354: e8 33 00 39  	strb	w8, [sp, #12]
   83358: e9 37 00 39  	strb	w9, [sp, #13]
   8335c: 42 00 80 52  	mov	w2, #2
   83360: e1 33 00 91  	add	x1, sp, #12
   83364: 83 fb ff 97  	bl	0x82170 <_ZN68_$LT$core..fmt..builders..PadAdapter$u20$as$u20$core..fmt..Write$GT$9write_str17h3825e647a41714ecE>
   83368: fe 07 41 f8  	ldr	x30, [sp], #16
   8336c: c0 03 5f d6  	ret
   83370: 3f 40 40 71  	cmp	w1, #16, lsl #12
   83374: e2 01 00 54  	b.hs	0x833b0 <_ZN50_$LT$$RF$mut$u20$W$u20$as$u20$core..fmt..Write$GT$10write_char17h36047407a7ec2c59E+0xa0>
   83378: 28 7c 0c 53  	lsr	w8, w1, #12
   8337c: 09 10 80 52  	mov	w9, #128
   83380: 0a 10 80 52  	mov	w10, #128
   83384: 08 09 1b 32  	orr	w8, w8, #0xe0
   83388: 2a 2c 06 33  	bfxil	w10, w1, #6, #6
   8338c: 29 14 00 33  	bfxil	w9, w1, #0, #6
   83390: e8 33 00 39  	strb	w8, [sp, #12]
   83394: ea 37 00 39  	strb	w10, [sp, #13]
   83398: e9 3b 00 39  	strb	w9, [sp, #14]
   8339c: 62 00 80 52  	mov	w2, #3
   833a0: e1 33 00 91  	add	x1, sp, #12
   833a4: 73 fb ff 97  	bl	0x82170 <_ZN68_$LT$core..fmt..builders..PadAdapter$u20$as$u20$core..fmt..Write$GT$9write_str17h3825e647a41714ecE>
   833a8: fe 07 41 f8  	ldr	x30, [sp], #16
   833ac: c0 03 5f d6  	ret
   833b0: 28 7c 12 53  	lsr	w8, w1, #18
   833b4: 09 10 80 52  	mov	w9, #128
   833b8: 0a 10 80 52  	mov	w10, #128
   833bc: 0b 10 80 52  	mov	w11, #128
   833c0: 08 0d 1c 32  	orr	w8, w8, #0xf0
   833c4: 2a 44 0c 33  	bfxil	w10, w1, #12, #6
   833c8: 2b 2c 06 33  	bfxil	w11, w1, #6, #6
   833cc: 29 14 00 33  	bfxil	w9, w1, #0, #6
   833d0: 82 00 80 52  	mov	w2, #4
   833d4: e8 33 00 39  	strb	w8, [sp, #12]
   833d8: ea 37 00 39  	strb	w10, [sp, #13]
   833dc: eb 3b 00 39  	strb	w11, [sp, #14]
   833e0: e9 3f 00 39  	strb	w9, [sp, #15]
   833e4: e1 33 00 91  	add	x1, sp, #12
   833e8: 62 fb ff 97  	bl	0x82170 <_ZN68_$LT$core..fmt..builders..PadAdapter$u20$as$u20$core..fmt..Write$GT$9write_str17h3825e647a41714ecE>
   833ec: fe 07 41 f8  	ldr	x30, [sp], #16
   833f0: c0 03 5f d6  	ret

00000000000833f4 <_ZN50_$LT$$RF$mut$u20$W$u20$as$u20$core..fmt..Write$GT$9write_fmt17h06bf00dcb2c943e6E>:
   833f4: ff 03 01 d1  	sub	sp, sp, #64
   833f8: 08 00 40 f9  	ldr	x8, [x0]
   833fc: e0 03 00 91  	mov	x0, sp
   83400: 02 06 80 52  	mov	w2, #48
   83404: fe 23 03 a9  	stp	x30, x8, [sp, #48]
   83408: 02 04 00 94  	bl	0x84410 <memcpy>
   8340c: 01 00 00 f0  	adrp	x1, 0x86000 <_ZN50_$LT$$RF$mut$u20$W$u20$as$u20$core..fmt..Write$GT$9write_fmt17h06bf00dcb2c943e6E+0x24>
   83410: 21 40 3e 91  	add	x1, x1, #3984
   83414: e0 e3 00 91  	add	x0, sp, #56
   83418: e2 03 00 91  	mov	x2, sp
   8341c: 50 fa ff 97  	bl	0x81d5c <_ZN4core3fmt5write17h63775af3066fbce8E>
   83420: fe 1b 40 f9  	ldr	x30, [sp, #48]
   83424: ff 03 01 91  	add	sp, sp, #64
   83428: c0 03 5f d6  	ret

000000000008342c <_ZN4core3fmt8builders10DebugTuple6finish17ha0a3c8a734c73285E>:
   8342c: fe 0f 1e f8  	str	x30, [sp, #-32]!
   83430: f4 4f 01 a9  	stp	x20, x19, [sp, #16]
   83434: 08 04 40 f9  	ldr	x8, [x0, #8]
   83438: 14 40 40 39  	ldrb	w20, [x0, #16]
   8343c: a8 03 00 b4  	cbz	x8, 0x834b0 <_ZN4core3fmt8builders10DebugTuple6finish17ha0a3c8a734c73285E+0x84>
   83440: f3 03 00 aa  	mov	x19, x0
   83444: 74 00 00 34  	cbz	w20, 0x83450 <_ZN4core3fmt8builders10DebugTuple6finish17ha0a3c8a734c73285E+0x24>
   83448: 34 00 80 52  	mov	w20, #1
   8344c: 18 00 00 14  	b	0x834ac <_ZN4core3fmt8builders10DebugTuple6finish17ha0a3c8a734c73285E+0x80>
   83450: 1f 05 00 f1  	cmp	x8, #1
   83454: c1 01 00 54  	b.ne	0x8348c <_ZN4core3fmt8builders10DebugTuple6finish17ha0a3c8a734c73285E+0x60>
   83458: 68 46 40 39  	ldrb	w8, [x19, #17]
   8345c: 88 01 00 34  	cbz	w8, 0x8348c <_ZN4core3fmt8builders10DebugTuple6finish17ha0a3c8a734c73285E+0x60>
   83460: 68 02 40 f9  	ldr	x8, [x19]
   83464: 09 c1 40 39  	ldrb	w9, [x8, #48]
   83468: 29 01 10 37  	tbnz	w9, #2, 0x8348c <_ZN4core3fmt8builders10DebugTuple6finish17ha0a3c8a734c73285E+0x60>
   8346c: 00 25 42 a9  	ldp	x0, x9, [x8, #32]
   83470: 01 00 00 f0  	adrp	x1, 0x86000 <_ZN4core3fmt8builders10DebugTuple6finish17ha0a3c8a734c73285E+0x50>
   83474: 21 1c 3f 91  	add	x1, x1, #4039
   83478: 22 00 80 52  	mov	w2, #1
   8347c: 28 0d 40 f9  	ldr	x8, [x9, #24]
   83480: 34 00 80 52  	mov	w20, #1
   83484: 00 01 3f d6  	blr	x8
   83488: 20 01 00 35  	cbnz	w0, 0x834ac <_ZN4core3fmt8builders10DebugTuple6finish17ha0a3c8a734c73285E+0x80>
   8348c: 68 02 40 f9  	ldr	x8, [x19]
   83490: 01 00 00 f0  	adrp	x1, 0x86000 <_ZN4core3fmt8builders10DebugTuple6finish17ha0a3c8a734c73285E+0x70>
   83494: 21 18 3f 91  	add	x1, x1, #4038
   83498: 22 00 80 52  	mov	w2, #1
   8349c: 00 25 42 a9  	ldp	x0, x9, [x8, #32]
   834a0: 28 0d 40 f9  	ldr	x8, [x9, #24]
   834a4: 00 01 3f d6  	blr	x8
   834a8: f4 03 00 2a  	mov	w20, w0
   834ac: 74 42 00 39  	strb	w20, [x19, #16]
   834b0: 9f 02 00 71  	cmp	w20, #0
   834b4: f4 4f 41 a9  	ldp	x20, x19, [sp, #16]
   834b8: e0 07 9f 1a  	cset	w0, ne
   834bc: fe 07 42 f8  	ldr	x30, [sp], #32
   834c0: c0 03 5f d6  	ret

00000000000834c4 <_ZN4core3fmt9Formatter9alternate17h5a07b4bd7e02e2b8E>:
   834c4: 08 c0 40 39  	ldrb	w8, [x0, #48]
   834c8: 00 09 02 53  	ubfx	w0, w8, #2, #1
   834cc: c0 03 5f d6  	ret

00000000000834d0 <_ZN4core3fmt9Formatter15debug_lower_hex17h0b7f072683990bf5E>:
   834d0: 08 c0 40 39  	ldrb	w8, [x0, #48]
   834d4: 00 11 04 53  	ubfx	w0, w8, #4, #1
   834d8: c0 03 5f d6  	ret

00000000000834dc <_ZN4core3fmt9Formatter15debug_upper_hex17hc999bac86c60dde4E>:
   834dc: 08 c0 40 39  	ldrb	w8, [x0, #48]
   834e0: 00 15 05 53  	ubfx	w0, w8, #5, #1
   834e4: c0 03 5f d6  	ret

00000000000834e8 <_ZN4core3fmt9Formatter11debug_tuple17h1ba458f6981b4e48E>:
   834e8: fe 0f 1e f8  	str	x30, [sp, #-32]!
   834ec: f4 4f 01 a9  	stp	x20, x19, [sp, #16]
   834f0: 29 28 42 a9  	ldp	x9, x10, [x1, #32]
   834f4: e8 03 02 aa  	mov	x8, x2
   834f8: f3 03 01 aa  	mov	x19, x1
   834fc: f4 03 00 aa  	mov	x20, x0
   83500: 4a 0d 40 f9  	ldr	x10, [x10, #24]
   83504: 62 00 80 52  	mov	w2, #3
   83508: e0 03 09 aa  	mov	x0, x9
   8350c: e1 03 08 aa  	mov	x1, x8
   83510: 40 01 3f d6  	blr	x10
   83514: 80 42 00 39  	strb	w0, [x20, #16]
   83518: 93 7e 00 a9  	stp	x19, xzr, [x20]
   8351c: 9f 46 00 39  	strb	wzr, [x20, #17]
   83520: f4 4f 41 a9  	ldp	x20, x19, [sp, #16]
   83524: fe 07 42 f8  	ldr	x30, [sp], #32
   83528: c0 03 5f d6  	ret

000000000008352c <_ZN42_$LT$$RF$T$u20$as$u20$core..fmt..Debug$GT$3fmt17hfc760a505aab9f54E>:
   8352c: ff 43 02 d1  	sub	sp, sp, #144
   83530: fe 43 00 f9  	str	x30, [sp, #128]
   83534: 29 30 40 b9  	ldr	w9, [x1, #48]
   83538: 0a 00 40 f9  	ldr	x10, [x0]
   8353c: e8 03 01 aa  	mov	x8, x1
   83540: c9 05 20 37  	tbnz	w9, #4, 0x835f8 <_ZN42_$LT$$RF$T$u20$as$u20$core..fmt..Debug$GT$3fmt17hfc760a505aab9f54E+0xcc>
   83544: a9 07 28 37  	tbnz	w9, #5, 0x83638 <_ZN42_$LT$$RF$T$u20$as$u20$core..fmt..Debug$GT$3fmt17hfc760a505aab9f54E+0x10c>
   83548: 49 01 40 b9  	ldr	w9, [x10]
   8354c: 2a 7d 44 d3  	ubfx	x10, x9, #4, #28
   83550: 5f c5 09 71  	cmp	w10, #625
   83554: 03 0b 00 54  	b.lo	0x836b4 <_ZN42_$LT$$RF$T$u20$as$u20$core..fmt..Debug$GT$3fmt17hfc760a505aab9f54E+0x188>
   83558: 6b 29 8b d2  	mov	x11, #22859
   8355c: cb 10 a7 f2  	movk	x11, #14470, lsl #16
   83560: cb ba d8 f2  	movk	x11, #50646, lsl #32
   83564: ed a3 90 52  	mov	w13, #34079
   83568: 0f 00 00 f0  	adrp	x15, 0x86000 <_ZN42_$LT$$RF$T$u20$as$u20$core..fmt..Debug$GT$3fmt17hfc760a505aab9f54E+0x48>
   8356c: f1 1f 9c 52  	mov	w17, #57599
   83570: ea 03 1f aa  	mov	x10, xzr
   83574: ab 8d e6 f2  	movk	x11, #13421, lsl #48
   83578: ec e1 84 12  	mov	w12, #-10000
   8357c: 6d 3d aa 72  	movk	w13, #20971, lsl #16
   83580: 6e 0c 80 12  	mov	w14, #-100
   83584: ef e9 08 91  	add	x15, x15, #570
   83588: f0 03 00 91  	mov	x16, sp
   8358c: b1 be a0 72  	movk	w17, #1525, lsl #16
   83590: f2 03 09 aa  	mov	x18, x9
   83594: 29 7d cb 9b  	umulh	x9, x9, x11
   83598: 29 fd 4b d3  	lsr	x9, x9, #11
   8359c: 5f 02 11 eb  	cmp	x18, x17
   835a0: 32 49 0c 1b  	madd	w18, w9, w12, w18
   835a4: 41 3e 00 12  	and	w1, w18, #0xffff
   835a8: 21 7c ad 9b  	umull	x1, w1, w13
   835ac: 21 fc 65 d3  	lsr	x1, x1, #37
   835b0: 32 48 0e 1b  	madd	w18, w1, w14, w18
   835b4: e1 05 01 8b  	add	x1, x15, x1, lsl #1
   835b8: f2 25 32 8b  	add	x18, x15, w18, uxth #1
   835bc: 22 00 40 39  	ldrb	w2, [x1]
   835c0: 21 04 40 39  	ldrb	w1, [x1, #1]
   835c4: 43 06 40 39  	ldrb	w3, [x18, #1]
   835c8: 52 02 40 39  	ldrb	w18, [x18]
   835cc: 00 02 0a 8b  	add	x0, x16, x10
   835d0: 4a 11 00 d1  	sub	x10, x10, #4
   835d4: 01 90 00 39  	strb	w1, [x0, #36]
   835d8: 02 8c 00 39  	strb	w2, [x0, #35]
   835dc: 03 98 00 39  	strb	w3, [x0, #38]
   835e0: 12 94 00 39  	strb	w18, [x0, #37]
   835e4: 68 fd ff 54  	b.hi	0x83590 <_ZN42_$LT$$RF$T$u20$as$u20$core..fmt..Debug$GT$3fmt17hfc760a505aab9f54E+0x64>
   835e8: 4a 9d 00 91  	add	x10, x10, #39
   835ec: 3f 8d 01 f1  	cmp	x9, #99
   835f0: 88 06 00 54  	b.hi	0x836c0 <_ZN42_$LT$$RF$T$u20$as$u20$core..fmt..Debug$GT$3fmt17hfc760a505aab9f54E+0x194>
   835f4: 45 00 00 14  	b	0x83708 <_ZN42_$LT$$RF$T$u20$as$u20$core..fmt..Debug$GT$3fmt17hfc760a505aab9f54E+0x1dc>
   835f8: 4b 01 40 b9  	ldr	w11, [x10]
   835fc: e9 03 1f aa  	mov	x9, xzr
   83600: ea 03 00 91  	mov	x10, sp
   83604: 6e 0d 00 12  	and	w14, w11, #0xf
   83608: 0f 06 80 52  	mov	w15, #48
   8360c: 6d 7d 04 53  	lsr	w13, w11, #4
   83610: 6f 0d 00 33  	bfxil	w15, w11, #0, #4
   83614: cb 5d 01 11  	add	w11, w14, #87
   83618: df 29 00 71  	cmp	w14, #10
   8361c: 4c 01 09 8b  	add	x12, x10, x9
   83620: eb 31 8b 1a  	csel	w11, w15, w11, lo
   83624: 8b fd 01 39  	strb	w11, [x12, #127]
   83628: 29 05 00 d1  	sub	x9, x9, #1
   8362c: eb 03 0d 2a  	mov	w11, w13
   83630: ad fe ff 35  	cbnz	w13, 0x83604 <_ZN42_$LT$$RF$T$u20$as$u20$core..fmt..Debug$GT$3fmt17hfc760a505aab9f54E+0xd8>
   83634: 10 00 00 14  	b	0x83674 <_ZN42_$LT$$RF$T$u20$as$u20$core..fmt..Debug$GT$3fmt17hfc760a505aab9f54E+0x148>
   83638: 4b 01 40 b9  	ldr	w11, [x10]
   8363c: e9 03 1f aa  	mov	x9, xzr
   83640: ea 03 00 91  	mov	x10, sp
   83644: 6e 0d 00 12  	and	w14, w11, #0xf
   83648: 0f 06 80 52  	mov	w15, #48
   8364c: 6d 7d 04 53  	lsr	w13, w11, #4
   83650: 6f 0d 00 33  	bfxil	w15, w11, #0, #4
   83654: cb dd 00 11  	add	w11, w14, #55
   83658: df 29 00 71  	cmp	w14, #10
   8365c: 4c 01 09 8b  	add	x12, x10, x9
   83660: eb 31 8b 1a  	csel	w11, w15, w11, lo
   83664: 8b fd 01 39  	strb	w11, [x12, #127]
   83668: 29 05 00 d1  	sub	x9, x9, #1
   8366c: eb 03 0d 2a  	mov	w11, w13
   83670: ad fe ff 35  	cbnz	w13, 0x83644 <_ZN42_$LT$$RF$T$u20$as$u20$core..fmt..Debug$GT$3fmt17hfc760a505aab9f54E+0x118>
   83674: 20 01 02 91  	add	x0, x9, #128
   83678: 1f 04 02 f1  	cmp	x0, #129
   8367c: 22 08 00 54  	b.hs	0x83780 <_ZN42_$LT$$RF$T$u20$as$u20$core..fmt..Debug$GT$3fmt17hfc760a505aab9f54E+0x254>
   83680: ea 03 00 91  	mov	x10, sp
   83684: e5 03 09 cb  	neg	x5, x9
   83688: 49 01 09 8b  	add	x9, x10, x9
   8368c: 02 00 00 f0  	adrp	x2, 0x86000 <_ZN42_$LT$$RF$T$u20$as$u20$core..fmt..Debug$GT$3fmt17hfc760a505aab9f54E+0x16c>
   83690: 24 01 02 91  	add	x4, x9, #128
   83694: 42 80 0e 91  	add	x2, x2, #928
   83698: 21 00 80 52  	mov	w1, #1
   8369c: 43 00 80 52  	mov	w3, #2
   836a0: e0 03 08 aa  	mov	x0, x8
   836a4: 9d f7 ff 97  	bl	0x81518 <_ZN4core3fmt9Formatter12pad_integral17ha6f583ca7a70f44dE>
   836a8: fe 43 40 f9  	ldr	x30, [sp, #128]
   836ac: ff 43 02 91  	add	sp, sp, #144
   836b0: c0 03 5f d6  	ret
   836b4: ea 04 80 52  	mov	w10, #39
   836b8: 3f 8d 01 f1  	cmp	x9, #99
   836bc: 69 02 00 54  	b.ls	0x83708 <_ZN42_$LT$$RF$T$u20$as$u20$core..fmt..Debug$GT$3fmt17hfc760a505aab9f54E+0x1dc>
   836c0: ec a3 90 52  	mov	w12, #34079
   836c4: 2b 3d 00 12  	and	w11, w9, #0xffff
   836c8: 6c 3d aa 72  	movk	w12, #20971, lsl #16
   836cc: 6b 7d ac 9b  	umull	x11, w11, w12
   836d0: 6d 0c 80 12  	mov	w13, #-100
   836d4: 0c 00 00 f0  	adrp	x12, 0x86000 <_ZN42_$LT$$RF$T$u20$as$u20$core..fmt..Debug$GT$3fmt17hfc760a505aab9f54E+0x1b4>
   836d8: 6b fd 65 d3  	lsr	x11, x11, #37
   836dc: 8c e9 08 91  	add	x12, x12, #570
   836e0: 69 25 0d 1b  	madd	w9, w11, w13, w9
   836e4: 89 25 29 8b  	add	x9, x12, w9, uxth #1
   836e8: 2c 05 40 39  	ldrb	w12, [x9, #1]
   836ec: 29 01 40 39  	ldrb	w9, [x9]
   836f0: 4a 09 00 d1  	sub	x10, x10, #2
   836f4: ed 03 00 91  	mov	x13, sp
   836f8: ad 01 0a 8b  	add	x13, x13, x10
   836fc: a9 01 00 39  	strb	w9, [x13]
   83700: e9 03 0b aa  	mov	x9, x11
   83704: ac 05 00 39  	strb	w12, [x13, #1]
   83708: 3f 29 00 f1  	cmp	x9, #10
   8370c: ca 00 00 54  	b.ge	0x83724 <_ZN42_$LT$$RF$T$u20$as$u20$core..fmt..Debug$GT$3fmt17hfc760a505aab9f54E+0x1f8>
   83710: 4a 05 00 d1  	sub	x10, x10, #1
   83714: 29 c1 00 11  	add	w9, w9, #48
   83718: eb 03 00 91  	mov	x11, sp
   8371c: 69 69 2a 38  	strb	w9, [x11, x10]
   83720: 0b 00 00 14  	b	0x8374c <_ZN42_$LT$$RF$T$u20$as$u20$core..fmt..Debug$GT$3fmt17hfc760a505aab9f54E+0x220>
   83724: 0b 00 00 f0  	adrp	x11, 0x86000 <_ZN42_$LT$$RF$T$u20$as$u20$core..fmt..Debug$GT$3fmt17hfc760a505aab9f54E+0x204>
   83728: 6b e9 08 91  	add	x11, x11, #570
   8372c: 69 05 09 8b  	add	x9, x11, x9, lsl #1
   83730: 2b 05 40 39  	ldrb	w11, [x9, #1]
   83734: 29 01 40 39  	ldrb	w9, [x9]
   83738: 4a 09 00 d1  	sub	x10, x10, #2
   8373c: ec 03 00 91  	mov	x12, sp
   83740: 8c 01 0a 8b  	add	x12, x12, x10
   83744: 8b 05 00 39  	strb	w11, [x12, #1]
   83748: 89 01 00 39  	strb	w9, [x12]
   8374c: e9 03 00 91  	mov	x9, sp
   83750: eb 04 80 52  	mov	w11, #39
   83754: 02 00 00 f0  	adrp	x2, 0x86000 <_ZN42_$LT$$RF$T$u20$as$u20$core..fmt..Debug$GT$3fmt17hfc760a505aab9f54E+0x234>
   83758: 24 01 0a 8b  	add	x4, x9, x10
   8375c: 65 01 0a cb  	sub	x5, x11, x10
   83760: 42 a0 06 91  	add	x2, x2, #424
   83764: 21 00 80 52  	mov	w1, #1
   83768: e0 03 08 aa  	mov	x0, x8
   8376c: e3 03 1f aa  	mov	x3, xzr
   83770: 6a f7 ff 97  	bl	0x81518 <_ZN4core3fmt9Formatter12pad_integral17ha6f583ca7a70f44dE>
   83774: fe 43 40 f9  	ldr	x30, [sp, #128]
   83778: ff 43 02 91  	add	sp, sp, #144
   8377c: c0 03 5f d6  	ret
   83780: 02 00 00 f0  	adrp	x2, 0x86000 <_ZN42_$LT$$RF$T$u20$as$u20$core..fmt..Debug$GT$3fmt17hfc760a505aab9f54E+0x260>
   83784: 42 20 0e 91  	add	x2, x2, #904
   83788: 01 10 80 52  	mov	w1, #128
   8378c: 37 f8 ff 97  	bl	0x81868 <_ZN4core5slice5index26slice_start_index_len_fail17ha3ad23336e78e7f7E>
   83790: 20 00 20 d4  	brk	#0x1

0000000000083794 <_ZN42_$LT$$RF$T$u20$as$u20$core..fmt..Debug$GT$3fmt17h2118265c3795f77dE>:
   83794: ff 83 02 d1  	sub	sp, sp, #160
   83798: fd 7b 04 a9  	stp	x29, x30, [sp, #64]
   8379c: fc 6f 05 a9  	stp	x28, x27, [sp, #80]
   837a0: fa 67 06 a9  	stp	x26, x25, [sp, #96]
   837a4: f8 5f 07 a9  	stp	x24, x23, [sp, #112]
   837a8: f6 57 08 a9  	stp	x22, x21, [sp, #128]
   837ac: f4 4f 09 a9  	stp	x20, x19, [sp, #144]
   837b0: 08 00 40 f9  	ldr	x8, [x0]
   837b4: 33 24 42 a9  	ldp	x19, x9, [x1, #32]
   837b8: 41 04 80 52  	mov	w1, #34
   837bc: 0a 21 40 a9  	ldp	x10, x8, [x8]
   837c0: 22 11 40 f9  	ldr	x2, [x9, #32]
   837c4: e0 03 13 aa  	mov	x0, x19
   837c8: e9 13 00 f9  	str	x9, [sp, #32]
   837cc: e8 ab 02 a9  	stp	x8, x10, [sp, #40]
   837d0: e2 1f 00 f9  	str	x2, [sp, #56]
   837d4: 40 00 3f d6  	blr	x2
   837d8: 40 01 00 36  	tbz	w0, #0, 0x83800 <_ZN42_$LT$$RF$T$u20$as$u20$core..fmt..Debug$GT$3fmt17h2118265c3795f77dE+0x6c>
   837dc: f4 4f 49 a9  	ldp	x20, x19, [sp, #144]
   837e0: f6 57 48 a9  	ldp	x22, x21, [sp, #128]
   837e4: f8 5f 47 a9  	ldp	x24, x23, [sp, #112]
   837e8: fa 67 46 a9  	ldp	x26, x25, [sp, #96]
   837ec: fc 6f 45 a9  	ldp	x28, x27, [sp, #80]
   837f0: fd 7b 44 a9  	ldp	x29, x30, [sp, #64]
   837f4: 20 00 80 52  	mov	w0, #1
   837f8: ff 83 02 91  	add	sp, sp, #160
   837fc: c0 03 5f d6  	ret
   83800: eb 17 40 f9  	ldr	x11, [sp, #40]
   83804: cb 1c 00 b4  	cbz	x11, 0x83b9c <_ZN42_$LT$$RF$T$u20$as$u20$core..fmt..Debug$GT$3fmt17h2118265c3795f77dE+0x408>
   83808: e8 1b 40 f9  	ldr	x8, [sp, #48]
   8380c: 1b 00 00 d0  	adrp	x27, 0x85000 <_ZN42_$LT$$RF$T$u20$as$u20$core..fmt..Debug$GT$3fmt17h2118265c3795f77dE+0x80>
   83810: 0e 00 00 d0  	adrp	x14, 0x85000 <_ZN42_$LT$$RF$T$u20$as$u20$core..fmt..Debug$GT$3fmt17h2118265c3795f77dE+0x84>
   83814: f8 03 1f aa  	mov	x24, xzr
   83818: e3 03 1f aa  	mov	x3, xzr
   8381c: 15 01 0b 8b  	add	x21, x8, x11
   83820: 7b 6f 22 91  	add	x27, x27, #2203
   83824: ce 05 22 91  	add	x14, x14, #2177
   83828: ec 03 08 aa  	mov	x12, x8
   8382c: ea 03 08 aa  	mov	x10, x8
   83830: fc 03 0a aa  	mov	x28, x10
   83834: 88 17 c0 38  	ldrsb	w8, [x28], #1
   83838: 1d 1d 00 12  	and	w29, w8, #0xff
   8383c: 68 00 f8 37  	tbnz	w8, #31, 0x83848 <_ZN42_$LT$$RF$T$u20$as$u20$core..fmt..Debug$GT$3fmt17h2118265c3795f77dE+0xb4>
   83840: ed 03 1c aa  	mov	x13, x28
   83844: 2f 00 00 14  	b	0x83900 <_ZN42_$LT$$RF$T$u20$as$u20$core..fmt..Debug$GT$3fmt17h2118265c3795f77dE+0x16c>
   83848: 9f 03 15 eb  	cmp	x28, x21
   8384c: 80 02 00 54  	b.eq	0x8389c <_ZN42_$LT$$RF$T$u20$as$u20$core..fmt..Debug$GT$3fmt17h2118265c3795f77dE+0x108>
   83850: 48 05 40 39  	ldrb	w8, [x10, #1]
   83854: 4d 09 00 91  	add	x13, x10, #2
   83858: 0a 15 00 12  	and	w10, w8, #0x3f
   8385c: bf 7f 03 71  	cmp	w29, #223
   83860: a8 13 00 12  	and	w8, w29, #0x1f
   83864: 69 02 00 54  	b.ls	0x838b0 <_ZN42_$LT$$RF$T$u20$as$u20$core..fmt..Debug$GT$3fmt17h2118265c3795f77dE+0x11c>
   83868: bf 01 15 eb  	cmp	x13, x21
   8386c: a0 02 00 54  	b.eq	0x838c0 <_ZN42_$LT$$RF$T$u20$as$u20$core..fmt..Debug$GT$3fmt17h2118265c3795f77dE+0x12c>
   83870: a9 15 40 38  	ldrb	w9, [x13], #1
   83874: 29 15 00 12  	and	w9, w9, #0x3f
   83878: bf c3 03 71  	cmp	w29, #240
   8387c: 49 15 1a 33  	bfi	w9, w10, #6, #6
   83880: a3 02 00 54  	b.lo	0x838d4 <_ZN42_$LT$$RF$T$u20$as$u20$core..fmt..Debug$GT$3fmt17h2118265c3795f77dE+0x140>
   83884: bf 01 15 eb  	cmp	x13, x21
   83888: e0 02 00 54  	b.eq	0x838e4 <_ZN42_$LT$$RF$T$u20$as$u20$core..fmt..Debug$GT$3fmt17h2118265c3795f77dE+0x150>
   8388c: aa 15 40 38  	ldrb	w10, [x13], #1
   83890: 4a 15 00 12  	and	w10, w10, #0x3f
   83894: fc 03 0d aa  	mov	x28, x13
   83898: 15 00 00 14  	b	0x838ec <_ZN42_$LT$$RF$T$u20$as$u20$core..fmt..Debug$GT$3fmt17h2118265c3795f77dE+0x158>
   8389c: ea 03 1f 2a  	mov	w10, wzr
   838a0: ed 03 15 aa  	mov	x13, x21
   838a4: bf 7f 03 71  	cmp	w29, #223
   838a8: a8 13 00 12  	and	w8, w29, #0x1f
   838ac: e8 fd ff 54  	b.hi	0x83868 <_ZN42_$LT$$RF$T$u20$as$u20$core..fmt..Debug$GT$3fmt17h2118265c3795f77dE+0xd4>
   838b0: 0a 11 1a 33  	bfi	w10, w8, #6, #5
   838b4: fc 03 0d aa  	mov	x28, x13
   838b8: fd 03 0a 2a  	mov	w29, w10
   838bc: 11 00 00 14  	b	0x83900 <_ZN42_$LT$$RF$T$u20$as$u20$core..fmt..Debug$GT$3fmt17h2118265c3795f77dE+0x16c>
   838c0: e9 03 1f 2a  	mov	w9, wzr
   838c4: ed 03 15 aa  	mov	x13, x21
   838c8: bf c3 03 71  	cmp	w29, #240
   838cc: 49 15 1a 33  	bfi	w9, w10, #6, #6
   838d0: a2 fd ff 54  	b.hs	0x83884 <_ZN42_$LT$$RF$T$u20$as$u20$core..fmt..Debug$GT$3fmt17h2118265c3795f77dE+0xf0>
   838d4: 09 11 14 33  	bfi	w9, w8, #12, #5
   838d8: fc 03 0d aa  	mov	x28, x13
   838dc: fd 03 09 2a  	mov	w29, w9
   838e0: 08 00 00 14  	b	0x83900 <_ZN42_$LT$$RF$T$u20$as$u20$core..fmt..Debug$GT$3fmt17h2118265c3795f77dE+0x16c>
   838e4: ea 03 1f 2a  	mov	w10, wzr
   838e8: fc 03 15 aa  	mov	x28, x21
   838ec: 08 09 0e 53  	ubfiz	w8, w8, #18, #3
   838f0: 28 2d 1a 33  	bfi	w8, w9, #6, #12
   838f4: 1d 01 0a 2a  	orr	w29, w8, w10
   838f8: bf 43 44 71  	cmp	w29, #272, lsl #12
   838fc: 00 14 00 54  	b.eq	0x83b7c <_ZN42_$LT$$RF$T$u20$as$u20$core..fmt..Debug$GT$3fmt17h2118265c3795f77dE+0x3e8>
   83900: a8 27 00 51  	sub	w8, w29, #9
   83904: 1f 65 00 71  	cmp	w8, #25
   83908: ed 33 01 a9  	stp	x13, x12, [sp, #16]
   8390c: fc 07 00 f9  	str	x28, [sp, #8]
   83910: 48 01 00 54  	b.hi	0x83938 <_ZN42_$LT$$RF$T$u20$as$u20$core..fmt..Debug$GT$3fmt17h2118265c3795f77dE+0x1a4>
   83914: c9 00 00 10  	adr	x9, #24
   83918: ca 69 68 38  	ldrb	w10, [x14, x8]
   8391c: 29 09 0a 8b  	add	x9, x9, x10, lsl #2
   83920: 97 0e 80 52  	mov	w23, #116
   83924: 59 00 80 52  	mov	w25, #2
   83928: 20 01 1f d6  	br	x9
   8392c: d7 0d 80 52  	mov	w23, #110
   83930: 59 00 80 52  	mov	w25, #2
   83934: 1f 00 00 14  	b	0x839b0 <_ZN42_$LT$$RF$T$u20$as$u20$core..fmt..Debug$GT$3fmt17h2118265c3795f77dE+0x21c>
   83938: bf 73 01 71  	cmp	w29, #92
   8393c: 81 00 00 54  	b.ne	0x8394c <_ZN42_$LT$$RF$T$u20$as$u20$core..fmt..Debug$GT$3fmt17h2118265c3795f77dE+0x1b8>
   83940: 59 00 80 52  	mov	w25, #2
   83944: f7 03 1d 2a  	mov	w23, w29
   83948: 1a 00 00 14  	b	0x839b0 <_ZN42_$LT$$RF$T$u20$as$u20$core..fmt..Debug$GT$3fmt17h2118265c3795f77dE+0x21c>
   8394c: e0 03 1d 2a  	mov	w0, w29
   83950: f4 03 03 aa  	mov	x20, x3
   83954: b4 fc ff 97  	bl	0x82c24 <_ZN4core7unicode12unicode_data15grapheme_extend6lookup17h6270b00245d19f23E>
   83958: 80 01 00 37  	tbnz	w0, #0, 0x83988 <_ZN42_$LT$$RF$T$u20$as$u20$core..fmt..Debug$GT$3fmt17h2118265c3795f77dE+0x1f4>
   8395c: e0 03 1d 2a  	mov	w0, w29
   83960: ff fc ff 97  	bl	0x82d5c <_ZN4core7unicode9printable12is_printable17ha641fcfcb2036eb6E>
   83964: 20 01 00 36  	tbz	w0, #0, 0x83988 <_ZN42_$LT$$RF$T$u20$as$u20$core..fmt..Debug$GT$3fmt17h2118265c3795f77dE+0x1f4>
   83968: eb 17 40 f9  	ldr	x11, [sp, #40]
   8396c: ea 27 41 a9  	ldp	x10, x9, [sp, #16]
   83970: fc 03 15 aa  	mov	x28, x21
   83974: f5 03 14 aa  	mov	x21, x20
   83978: 78 00 00 14  	b	0x83b58 <_ZN42_$LT$$RF$T$u20$as$u20$core..fmt..Debug$GT$3fmt17h2118265c3795f77dE+0x3c4>
   8397c: 57 0e 80 52  	mov	w23, #114
   83980: 59 00 80 52  	mov	w25, #2
   83984: 0b 00 00 14  	b	0x839b0 <_ZN42_$LT$$RF$T$u20$as$u20$core..fmt..Debug$GT$3fmt17h2118265c3795f77dE+0x21c>
   83988: a8 03 00 32  	orr	w8, w29, #0x1
   8398c: eb 17 40 f9  	ldr	x11, [sp, #40]
   83990: 08 11 c0 5a  	clz	w8, w8
   83994: e9 03 1d 2a  	mov	w9, w29
   83998: aa 00 c0 d2  	mov	x10, #21474836480
   8399c: 08 7d 02 53  	lsr	w8, w8, #2
   839a0: 3a 01 0a aa  	orr	x26, x9, x10
   839a4: 16 09 00 52  	eor	w22, w8, #0x7
   839a8: 79 00 80 52  	mov	w25, #3
   839ac: e3 03 14 aa  	mov	x3, x20
   839b0: 7f 00 18 eb  	cmp	x3, x24
   839b4: 23 12 00 54  	b.lo	0x83bf8 <_ZN42_$LT$$RF$T$u20$as$u20$core..fmt..Debug$GT$3fmt17h2118265c3795f77dE+0x464>
   839b8: 38 01 00 b4  	cbz	x24, 0x839dc <_ZN42_$LT$$RF$T$u20$as$u20$core..fmt..Debug$GT$3fmt17h2118265c3795f77dE+0x248>
   839bc: 1f 03 0b eb  	cmp	x24, x11
   839c0: c2 00 00 54  	b.hs	0x839d8 <_ZN42_$LT$$RF$T$u20$as$u20$core..fmt..Debug$GT$3fmt17h2118265c3795f77dE+0x244>
   839c4: e8 1b 40 f9  	ldr	x8, [sp, #48]
   839c8: 08 69 f8 38  	ldrsb	w8, [x8, x24]
   839cc: 1f 01 01 31  	cmn	w8, #64
   839d0: 6a 00 00 54  	b.ge	0x839dc <_ZN42_$LT$$RF$T$u20$as$u20$core..fmt..Debug$GT$3fmt17h2118265c3795f77dE+0x248>
   839d4: 89 00 00 14  	b	0x83bf8 <_ZN42_$LT$$RF$T$u20$as$u20$core..fmt..Debug$GT$3fmt17h2118265c3795f77dE+0x464>
   839d8: 01 11 00 54  	b.ne	0x83bf8 <_ZN42_$LT$$RF$T$u20$as$u20$core..fmt..Debug$GT$3fmt17h2118265c3795f77dE+0x464>
   839dc: 23 01 00 b4  	cbz	x3, 0x83a00 <_ZN42_$LT$$RF$T$u20$as$u20$core..fmt..Debug$GT$3fmt17h2118265c3795f77dE+0x26c>
   839e0: 7f 00 0b eb  	cmp	x3, x11
   839e4: 22 01 00 54  	b.hs	0x83a08 <_ZN42_$LT$$RF$T$u20$as$u20$core..fmt..Debug$GT$3fmt17h2118265c3795f77dE+0x274>
   839e8: e8 1b 40 f9  	ldr	x8, [sp, #48]
   839ec: f4 03 03 aa  	mov	x20, x3
   839f0: 08 69 e3 38  	ldrsb	w8, [x8, x3]
   839f4: 1f 05 01 31  	cmn	w8, #65
   839f8: cc 00 00 54  	b.gt	0x83a10 <_ZN42_$LT$$RF$T$u20$as$u20$core..fmt..Debug$GT$3fmt17h2118265c3795f77dE+0x27c>
   839fc: 7f 00 00 14  	b	0x83bf8 <_ZN42_$LT$$RF$T$u20$as$u20$core..fmt..Debug$GT$3fmt17h2118265c3795f77dE+0x464>
   83a00: f4 03 1f aa  	mov	x20, xzr
   83a04: 03 00 00 14  	b	0x83a10 <_ZN42_$LT$$RF$T$u20$as$u20$core..fmt..Debug$GT$3fmt17h2118265c3795f77dE+0x27c>
   83a08: f4 03 0b aa  	mov	x20, x11
   83a0c: 61 0f 00 54  	b.ne	0x83bf8 <_ZN42_$LT$$RF$T$u20$as$u20$core..fmt..Debug$GT$3fmt17h2118265c3795f77dE+0x464>
   83a10: e8 13 40 f9  	ldr	x8, [sp, #32]
   83a14: e9 1b 40 f9  	ldr	x9, [sp, #48]
   83a18: 82 02 18 cb  	sub	x2, x20, x24
   83a1c: e0 03 13 aa  	mov	x0, x19
   83a20: 08 0d 40 f9  	ldr	x8, [x8, #24]
   83a24: 21 01 18 8b  	add	x1, x9, x24
   83a28: fc 03 15 aa  	mov	x28, x21
   83a2c: f5 03 03 aa  	mov	x21, x3
   83a30: 00 01 3f d6  	blr	x8
   83a34: 18 00 00 d0  	adrp	x24, 0x85000 <_ZN42_$LT$$RF$T$u20$as$u20$core..fmt..Debug$GT$3fmt17h2118265c3795f77dE+0x2a8>
   83a38: 18 7f 22 91  	add	x24, x24, #2207
   83a3c: 00 01 00 36  	tbz	w0, #0, 0x83a5c <_ZN42_$LT$$RF$T$u20$as$u20$core..fmt..Debug$GT$3fmt17h2118265c3795f77dE+0x2c8>
   83a40: 67 ff ff 17  	b	0x837dc <_ZN42_$LT$$RF$T$u20$as$u20$core..fmt..Debug$GT$3fmt17h2118265c3795f77dE+0x48>
   83a44: f9 03 1f 2a  	mov	w25, wzr
   83a48: e1 03 17 2a  	mov	w1, w23
   83a4c: e2 1f 40 f9  	ldr	x2, [sp, #56]
   83a50: e0 03 13 aa  	mov	x0, x19
   83a54: 40 00 3f d6  	blr	x2
   83a58: 20 ec 07 37  	tbnz	w0, #0, 0x837dc <_ZN42_$LT$$RF$T$u20$as$u20$core..fmt..Debug$GT$3fmt17h2118265c3795f77dE+0x48>
   83a5c: e8 03 19 2a  	mov	w8, w25
   83a60: 29 ff ff 10  	adr	x9, #-28
   83a64: 6a 6b 68 38  	ldrb	w10, [x27, x8]
   83a68: 29 09 0a 8b  	add	x9, x9, x10, lsl #2
   83a6c: 39 00 80 52  	mov	w25, #1
   83a70: 81 0b 80 52  	mov	w1, #92
   83a74: 20 01 1f d6  	br	x9
   83a78: 48 9f 60 d3  	ubfx	x8, x26, #32, #8
   83a7c: 89 00 00 10  	adr	x9, #16
   83a80: 0a 6b 68 38  	ldrb	w10, [x24, x8]
   83a84: 29 09 0a 8b  	add	x9, x9, x10, lsl #2
   83a88: 20 01 1f d6  	br	x9
   83a8c: 5a df 58 92  	and	x26, x26, #0xffffff00ffffffff
   83a90: 79 00 80 52  	mov	w25, #3
   83a94: a1 0f 80 52  	mov	w1, #125
   83a98: ed ff ff 17  	b	0x83a4c <_ZN42_$LT$$RF$T$u20$as$u20$core..fmt..Debug$GT$3fmt17h2118265c3795f77dE+0x2b8>
   83a9c: 48 df 58 92  	and	x8, x26, #0xffffff00ffffffff
   83aa0: 79 00 80 52  	mov	w25, #3
   83aa4: 1a 05 60 b2  	orr	x26, x8, #0x300000000
   83aa8: a1 0e 80 52  	mov	w1, #117
   83aac: e8 ff ff 17  	b	0x83a4c <_ZN42_$LT$$RF$T$u20$as$u20$core..fmt..Debug$GT$3fmt17h2118265c3795f77dE+0x2b8>
   83ab0: c8 0a 1e 53  	ubfiz	w8, w22, #2, #3
   83ab4: 48 27 c8 1a  	lsr	w8, w26, w8
   83ab8: 08 0d 00 12  	and	w8, w8, #0xf
   83abc: 1f 29 00 71  	cmp	w8, #10
   83ac0: e9 0a 80 52  	mov	w9, #87
   83ac4: 0a 06 80 52  	mov	w10, #48
   83ac8: 49 31 89 1a  	csel	w9, w10, w9, lo
   83acc: 21 01 08 0b  	add	w1, w9, w8
   83ad0: d6 01 00 b4  	cbz	x22, 0x83b08 <_ZN42_$LT$$RF$T$u20$as$u20$core..fmt..Debug$GT$3fmt17h2118265c3795f77dE+0x374>
   83ad4: d6 06 00 d1  	sub	x22, x22, #1
   83ad8: 79 00 80 52  	mov	w25, #3
   83adc: dc ff ff 17  	b	0x83a4c <_ZN42_$LT$$RF$T$u20$as$u20$core..fmt..Debug$GT$3fmt17h2118265c3795f77dE+0x2b8>
   83ae0: 48 df 58 92  	and	x8, x26, #0xffffff00ffffffff
   83ae4: 79 00 80 52  	mov	w25, #3
   83ae8: 1a 01 5f b2  	orr	x26, x8, #0x200000000
   83aec: 61 0f 80 52  	mov	w1, #123
   83af0: d7 ff ff 17  	b	0x83a4c <_ZN42_$LT$$RF$T$u20$as$u20$core..fmt..Debug$GT$3fmt17h2118265c3795f77dE+0x2b8>
   83af4: 48 df 58 92  	and	x8, x26, #0xffffff00ffffffff
   83af8: 79 00 80 52  	mov	w25, #3
   83afc: 1a 01 5e b2  	orr	x26, x8, #0x400000000
   83b00: 81 0b 80 52  	mov	w1, #92
   83b04: d2 ff ff 17  	b	0x83a4c <_ZN42_$LT$$RF$T$u20$as$u20$core..fmt..Debug$GT$3fmt17h2118265c3795f77dE+0x2b8>
   83b08: 48 df 58 92  	and	x8, x26, #0xffffff00ffffffff
   83b0c: 1a 01 60 b2  	orr	x26, x8, #0x100000000
   83b10: 79 00 80 52  	mov	w25, #3
   83b14: ce ff ff 17  	b	0x83a4c <_ZN42_$LT$$RF$T$u20$as$u20$core..fmt..Debug$GT$3fmt17h2118265c3795f77dE+0x2b8>
   83b18: bf 03 02 71  	cmp	w29, #128
   83b1c: a2 00 00 54  	b.hs	0x83b30 <_ZN42_$LT$$RF$T$u20$as$u20$core..fmt..Debug$GT$3fmt17h2118265c3795f77dE+0x39c>
   83b20: eb 17 40 f9  	ldr	x11, [sp, #40]
   83b24: ea 27 41 a9  	ldp	x10, x9, [sp, #16]
   83b28: 28 00 80 52  	mov	w8, #1
   83b2c: 0a 00 00 14  	b	0x83b54 <_ZN42_$LT$$RF$T$u20$as$u20$core..fmt..Debug$GT$3fmt17h2118265c3795f77dE+0x3c0>
   83b30: eb 17 40 f9  	ldr	x11, [sp, #40]
   83b34: ea 27 41 a9  	ldp	x10, x9, [sp, #16]
   83b38: bf 03 20 71  	cmp	w29, #2048
   83b3c: 62 00 00 54  	b.hs	0x83b48 <_ZN42_$LT$$RF$T$u20$as$u20$core..fmt..Debug$GT$3fmt17h2118265c3795f77dE+0x3b4>
   83b40: 48 00 80 52  	mov	w8, #2
   83b44: 04 00 00 14  	b	0x83b54 <_ZN42_$LT$$RF$T$u20$as$u20$core..fmt..Debug$GT$3fmt17h2118265c3795f77dE+0x3c0>
   83b48: bf 43 40 71  	cmp	w29, #16, lsl #12
   83b4c: 68 00 80 52  	mov	w8, #3
   83b50: 08 35 88 9a  	cinc	x8, x8, hs
   83b54: 18 01 14 8b  	add	x24, x8, x20
   83b58: a8 02 09 cb  	sub	x8, x21, x9
   83b5c: e9 07 40 f9  	ldr	x9, [sp, #8]
   83b60: 0e 00 00 d0  	adrp	x14, 0x85000 <_ZN42_$LT$$RF$T$u20$as$u20$core..fmt..Debug$GT$3fmt17h2118265c3795f77dE+0x3d4>
   83b64: f5 03 1c aa  	mov	x21, x28
   83b68: 5f 01 1c eb  	cmp	x10, x28
   83b6c: 03 01 09 8b  	add	x3, x8, x9
   83b70: ec 03 0a aa  	mov	x12, x10
   83b74: ce 05 22 91  	add	x14, x14, #2177
   83b78: c1 e5 ff 54  	b.ne	0x83830 <_ZN42_$LT$$RF$T$u20$as$u20$core..fmt..Debug$GT$3fmt17h2118265c3795f77dE+0x9c>
   83b7c: 38 01 00 b4  	cbz	x24, 0x83ba0 <_ZN42_$LT$$RF$T$u20$as$u20$core..fmt..Debug$GT$3fmt17h2118265c3795f77dE+0x40c>
   83b80: 1f 03 0b eb  	cmp	x24, x11
   83b84: 42 03 00 54  	b.hs	0x83bec <_ZN42_$LT$$RF$T$u20$as$u20$core..fmt..Debug$GT$3fmt17h2118265c3795f77dE+0x458>
   83b88: e8 1b 40 f9  	ldr	x8, [sp, #48]
   83b8c: 08 69 f8 38  	ldrsb	w8, [x8, x24]
   83b90: 1f 05 01 31  	cmn	w8, #65
   83b94: 6c 00 00 54  	b.gt	0x83ba0 <_ZN42_$LT$$RF$T$u20$as$u20$core..fmt..Debug$GT$3fmt17h2118265c3795f77dE+0x40c>
   83b98: 1f 00 00 14  	b	0x83c14 <_ZN42_$LT$$RF$T$u20$as$u20$core..fmt..Debug$GT$3fmt17h2118265c3795f77dE+0x480>
   83b9c: f8 03 1f aa  	mov	x24, xzr
   83ba0: e8 13 40 f9  	ldr	x8, [sp, #32]
   83ba4: e9 1b 40 f9  	ldr	x9, [sp, #48]
   83ba8: 62 01 18 cb  	sub	x2, x11, x24
   83bac: e0 03 13 aa  	mov	x0, x19
   83bb0: 08 0d 40 f9  	ldr	x8, [x8, #24]
   83bb4: 21 01 18 8b  	add	x1, x9, x24
   83bb8: 00 01 3f d6  	blr	x8
   83bbc: 00 e1 07 37  	tbnz	w0, #0, 0x837dc <_ZN42_$LT$$RF$T$u20$as$u20$core..fmt..Debug$GT$3fmt17h2118265c3795f77dE+0x48>
   83bc0: e0 03 13 aa  	mov	x0, x19
   83bc4: e2 1f 40 f9  	ldr	x2, [sp, #56]
   83bc8: f4 4f 49 a9  	ldp	x20, x19, [sp, #144]
   83bcc: f6 57 48 a9  	ldp	x22, x21, [sp, #128]
   83bd0: f8 5f 47 a9  	ldp	x24, x23, [sp, #112]
   83bd4: fa 67 46 a9  	ldp	x26, x25, [sp, #96]
   83bd8: fc 6f 45 a9  	ldp	x28, x27, [sp, #80]
   83bdc: fd 7b 44 a9  	ldp	x29, x30, [sp, #64]
   83be0: 41 04 80 52  	mov	w1, #34
   83be4: ff 83 02 91  	add	sp, sp, #160
   83be8: 40 00 1f d6  	br	x2
   83bec: 41 01 00 54  	b.ne	0x83c14 <_ZN42_$LT$$RF$T$u20$as$u20$core..fmt..Debug$GT$3fmt17h2118265c3795f77dE+0x480>
   83bf0: f8 03 0b aa  	mov	x24, x11
   83bf4: eb ff ff 17  	b	0x83ba0 <_ZN42_$LT$$RF$T$u20$as$u20$core..fmt..Debug$GT$3fmt17h2118265c3795f77dE+0x40c>
   83bf8: e0 1b 40 f9  	ldr	x0, [sp, #48]
   83bfc: 04 00 00 f0  	adrp	x4, 0x86000 <_ZN42_$LT$$RF$T$u20$as$u20$core..fmt..Debug$GT$3fmt17h2118265c3795f77dE+0x474>
   83c00: 84 80 3f 91  	add	x4, x4, #4064
   83c04: e1 03 0b aa  	mov	x1, x11
   83c08: e2 03 18 aa  	mov	x2, x24
   83c0c: 06 fa ff 97  	bl	0x82424 <_ZN4core3str16slice_error_fail17hcc0d3c3105355e6aE>
   83c10: 20 00 20 d4  	brk	#0x1
   83c14: e0 1b 40 f9  	ldr	x0, [sp, #48]
   83c18: 04 00 00 f0  	adrp	x4, 0x86000 <_ZN42_$LT$$RF$T$u20$as$u20$core..fmt..Debug$GT$3fmt17h2118265c3795f77dE+0x490>
   83c1c: 84 20 3f 91  	add	x4, x4, #4040
   83c20: e1 03 0b aa  	mov	x1, x11
   83c24: e2 03 18 aa  	mov	x2, x24
   83c28: e3 03 0b aa  	mov	x3, x11
   83c2c: fe f9 ff 97  	bl	0x82424 <_ZN4core3str16slice_error_fail17hcc0d3c3105355e6aE>
   83c30: 20 00 20 d4  	brk	#0x1

0000000000083c34 <_ZN71_$LT$core..panic..panic_info..PanicInfo$u20$as$u20$core..fmt..Debug$GT$3fmt17ha3e0b3cc45a627c8E>:
   83c34: ff 03 01 d1  	sub	sp, sp, #64
   83c38: fe 0b 00 f9  	str	x30, [sp, #16]
   83c3c: f6 57 02 a9  	stp	x22, x21, [sp, #32]
   83c40: f4 4f 03 a9  	stp	x20, x19, [sp, #48]
   83c44: f4 03 00 aa  	mov	x20, x0
   83c48: 20 20 42 a9  	ldp	x0, x8, [x1, #32]
   83c4c: f3 03 01 aa  	mov	x19, x1
   83c50: 21 00 00 90  	adrp	x1, 0x87000 <_ZN71_$LT$core..panic..panic_info..PanicInfo$u20$as$u20$core..fmt..Debug$GT$3fmt17ha3e0b3cc45a627c8E+0x2c>
   83c54: 21 6c 01 91  	add	x1, x1, #91
   83c58: 08 0d 40 f9  	ldr	x8, [x8, #24]
   83c5c: 22 01 80 52  	mov	w2, #9
   83c60: 95 42 00 91  	add	x21, x20, #16
   83c64: 96 62 00 91  	add	x22, x20, #24
   83c68: 00 01 3f d6  	blr	x8
   83c6c: 1f 00 00 71  	cmp	w0, #0
   83c70: 21 00 00 90  	adrp	x1, 0x87000 <_ZN71_$LT$core..panic..panic_info..PanicInfo$u20$as$u20$core..fmt..Debug$GT$3fmt17ha3e0b3cc45a627c8E+0x4c>
   83c74: 24 00 00 90  	adrp	x4, 0x87000 <_ZN71_$LT$core..panic..panic_info..PanicInfo$u20$as$u20$core..fmt..Debug$GT$3fmt17ha3e0b3cc45a627c8E+0x50>
   83c78: e8 07 9f 9a  	cset	x8, ne
   83c7c: 21 90 01 91  	add	x1, x1, #100
   83c80: 84 c0 01 91  	add	x4, x4, #112
   83c84: e0 03 00 91  	mov	x0, sp
   83c88: e3 63 00 91  	add	x3, sp, #24
   83c8c: e2 00 80 52  	mov	w2, #7
   83c90: f3 23 00 a9  	stp	x19, x8, [sp]
   83c94: f4 0f 00 f9  	str	x20, [sp, #24]
   83c98: e6 fc ff 97  	bl	0x83030 <_ZN4core3fmt8builders11DebugStruct5field17hd9641a54df8a3bf1E>
   83c9c: 21 00 00 90  	adrp	x1, 0x87000 <_ZN71_$LT$core..panic..panic_info..PanicInfo$u20$as$u20$core..fmt..Debug$GT$3fmt17ha3e0b3cc45a627c8E+0x78>
   83ca0: 24 00 00 90  	adrp	x4, 0x87000 <_ZN71_$LT$core..panic..panic_info..PanicInfo$u20$as$u20$core..fmt..Debug$GT$3fmt17ha3e0b3cc45a627c8E+0x7c>
   83ca4: 21 40 02 91  	add	x1, x1, #144
   83ca8: 84 60 02 91  	add	x4, x4, #152
   83cac: e0 03 00 91  	mov	x0, sp
   83cb0: e3 63 00 91  	add	x3, sp, #24
   83cb4: e2 00 80 52  	mov	w2, #7
   83cb8: f5 0f 00 f9  	str	x21, [sp, #24]
   83cbc: dd fc ff 97  	bl	0x83030 <_ZN4core3fmt8builders11DebugStruct5field17hd9641a54df8a3bf1E>
   83cc0: 01 00 00 d0  	adrp	x1, 0x85000 <_ZN71_$LT$core..panic..panic_info..PanicInfo$u20$as$u20$core..fmt..Debug$GT$3fmt17ha3e0b3cc45a627c8E+0x94>
   83cc4: 24 00 00 90  	adrp	x4, 0x87000 <_ZN71_$LT$core..panic..panic_info..PanicInfo$u20$as$u20$core..fmt..Debug$GT$3fmt17ha3e0b3cc45a627c8E+0xa0>
   83cc8: 21 00 21 91  	add	x1, x1, #2112
   83ccc: 84 e0 02 91  	add	x4, x4, #184
   83cd0: e0 03 00 91  	mov	x0, sp
   83cd4: e3 63 00 91  	add	x3, sp, #24
   83cd8: 02 01 80 52  	mov	w2, #8
   83cdc: f6 0f 00 f9  	str	x22, [sp, #24]
   83ce0: d4 fc ff 97  	bl	0x83030 <_ZN4core3fmt8builders11DebugStruct5field17hd9641a54df8a3bf1E>
   83ce4: e8 27 40 39  	ldrb	w8, [sp, #9]
   83ce8: e0 23 40 39  	ldrb	w0, [sp, #8]
   83cec: 48 02 00 34  	cbz	w8, 0x83d34 <_ZN71_$LT$core..panic..panic_info..PanicInfo$u20$as$u20$core..fmt..Debug$GT$3fmt17ha3e0b3cc45a627c8E+0x100>
   83cf0: 60 00 00 34  	cbz	w0, 0x83cfc <_ZN71_$LT$core..panic..panic_info..PanicInfo$u20$as$u20$core..fmt..Debug$GT$3fmt17ha3e0b3cc45a627c8E+0xc8>
   83cf4: 20 00 80 52  	mov	w0, #1
   83cf8: 0f 00 00 14  	b	0x83d34 <_ZN71_$LT$core..panic..panic_info..PanicInfo$u20$as$u20$core..fmt..Debug$GT$3fmt17ha3e0b3cc45a627c8E+0x100>
   83cfc: e8 03 40 f9  	ldr	x8, [sp]
   83d00: 09 c1 40 39  	ldrb	w9, [x8, #48]
   83d04: c9 00 10 37  	tbnz	w9, #2, 0x83d1c <_ZN71_$LT$core..panic..panic_info..PanicInfo$u20$as$u20$core..fmt..Debug$GT$3fmt17ha3e0b3cc45a627c8E+0xe8>
   83d08: 00 25 42 a9  	ldp	x0, x9, [x8, #32]
   83d0c: 01 00 00 f0  	adrp	x1, 0x86000 <_ZN71_$LT$core..panic..panic_info..PanicInfo$u20$as$u20$core..fmt..Debug$GT$3fmt17ha3e0b3cc45a627c8E+0xe4>
   83d10: 21 04 3f 91  	add	x1, x1, #4033
   83d14: 42 00 80 52  	mov	w2, #2
   83d18: 05 00 00 14  	b	0x83d2c <_ZN71_$LT$core..panic..panic_info..PanicInfo$u20$as$u20$core..fmt..Debug$GT$3fmt17ha3e0b3cc45a627c8E+0xf8>
   83d1c: 00 25 42 a9  	ldp	x0, x9, [x8, #32]
   83d20: 01 00 00 f0  	adrp	x1, 0x86000 <_ZN71_$LT$core..panic..panic_info..PanicInfo$u20$as$u20$core..fmt..Debug$GT$3fmt17ha3e0b3cc45a627c8E+0xf8>
   83d24: 21 00 3f 91  	add	x1, x1, #4032
   83d28: 22 00 80 52  	mov	w2, #1
   83d2c: 28 0d 40 f9  	ldr	x8, [x9, #24]
   83d30: 00 01 3f d6  	blr	x8
   83d34: f4 4f 43 a9  	ldp	x20, x19, [sp, #48]
   83d38: f6 57 42 a9  	ldp	x22, x21, [sp, #32]
   83d3c: fe 0b 40 f9  	ldr	x30, [sp, #16]
   83d40: 1f 00 00 71  	cmp	w0, #0
   83d44: e0 07 9f 1a  	cset	w0, ne
   83d48: ff 03 01 91  	add	sp, sp, #64
   83d4c: c0 03 5f d6  	ret

0000000000083d50 <_ZN42_$LT$$RF$T$u20$as$u20$core..fmt..Debug$GT$3fmt17h0702462b4f7b9fe3E>:
   83d50: ff 03 01 d1  	sub	sp, sp, #64
   83d54: fe 0b 00 f9  	str	x30, [sp, #16]
   83d58: f6 57 02 a9  	stp	x22, x21, [sp, #32]
   83d5c: f4 4f 03 a9  	stp	x20, x19, [sp, #48]
   83d60: 08 00 40 f9  	ldr	x8, [x0]
   83d64: 20 24 42 a9  	ldp	x0, x9, [x1, #32]
   83d68: f3 03 01 aa  	mov	x19, x1
   83d6c: 01 00 00 d0  	adrp	x1, 0x85000 <_ZN42_$LT$$RF$T$u20$as$u20$core..fmt..Debug$GT$3fmt17h0702462b4f7b9fe3E+0x24>
   83d70: 14 01 40 f9  	ldr	x20, [x8]
   83d74: 28 0d 40 f9  	ldr	x8, [x9, #24]
   83d78: 21 40 21 91  	add	x1, x1, #2128
   83d7c: 02 01 80 52  	mov	w2, #8
   83d80: 95 42 00 91  	add	x21, x20, #16
   83d84: 96 52 00 91  	add	x22, x20, #20
   83d88: 00 01 3f d6  	blr	x8
   83d8c: 1f 00 00 71  	cmp	w0, #0
   83d90: 01 00 00 f0  	adrp	x1, 0x86000 <_ZN42_$LT$$RF$T$u20$as$u20$core..fmt..Debug$GT$3fmt17h0702462b4f7b9fe3E+0x4c>
   83d94: 24 00 00 90  	adrp	x4, 0x87000 <_ZN42_$LT$$RF$T$u20$as$u20$core..fmt..Debug$GT$3fmt17h0702462b4f7b9fe3E+0x54>
   83d98: e8 07 9f 9a  	cset	x8, ne
   83d9c: 21 d0 11 91  	add	x1, x1, #1140
   83da0: 84 60 00 91  	add	x4, x4, #24
   83da4: e0 03 00 91  	mov	x0, sp
   83da8: e3 63 00 91  	add	x3, sp, #24
   83dac: 82 00 80 52  	mov	w2, #4
   83db0: f3 23 00 a9  	stp	x19, x8, [sp]
   83db4: f4 0f 00 f9  	str	x20, [sp, #24]
   83db8: 9e fc ff 97  	bl	0x83030 <_ZN4core3fmt8builders11DebugStruct5field17hd9641a54df8a3bf1E>
   83dbc: 33 00 00 90  	adrp	x19, 0x87000 <_ZN42_$LT$$RF$T$u20$as$u20$core..fmt..Debug$GT$3fmt17h0702462b4f7b9fe3E+0x7c>
   83dc0: 01 00 00 f0  	adrp	x1, 0x86000 <_ZN42_$LT$$RF$T$u20$as$u20$core..fmt..Debug$GT$3fmt17h0702462b4f7b9fe3E+0x7c>
   83dc4: 73 e2 00 91  	add	x19, x19, #56
   83dc8: 21 e0 11 91  	add	x1, x1, #1144
   83dcc: e0 03 00 91  	mov	x0, sp
   83dd0: e3 63 00 91  	add	x3, sp, #24
   83dd4: 82 00 80 52  	mov	w2, #4
   83dd8: e4 03 13 aa  	mov	x4, x19
   83ddc: f5 0f 00 f9  	str	x21, [sp, #24]
   83de0: 94 fc ff 97  	bl	0x83030 <_ZN4core3fmt8builders11DebugStruct5field17hd9641a54df8a3bf1E>
   83de4: 21 00 00 90  	adrp	x1, 0x87000 <_ZN42_$LT$$RF$T$u20$as$u20$core..fmt..Debug$GT$3fmt17h0702462b4f7b9fe3E+0xa4>
   83de8: 21 60 01 91  	add	x1, x1, #88
   83dec: e0 03 00 91  	mov	x0, sp
   83df0: e3 63 00 91  	add	x3, sp, #24
   83df4: 62 00 80 52  	mov	w2, #3
   83df8: e4 03 13 aa  	mov	x4, x19
   83dfc: f6 0f 00 f9  	str	x22, [sp, #24]
   83e00: 8c fc ff 97  	bl	0x83030 <_ZN4core3fmt8builders11DebugStruct5field17hd9641a54df8a3bf1E>
   83e04: e8 27 40 39  	ldrb	w8, [sp, #9]
   83e08: e0 23 40 39  	ldrb	w0, [sp, #8]
   83e0c: 48 02 00 34  	cbz	w8, 0x83e54 <_ZN42_$LT$$RF$T$u20$as$u20$core..fmt..Debug$GT$3fmt17h0702462b4f7b9fe3E+0x104>
   83e10: 60 00 00 34  	cbz	w0, 0x83e1c <_ZN42_$LT$$RF$T$u20$as$u20$core..fmt..Debug$GT$3fmt17h0702462b4f7b9fe3E+0xcc>
   83e14: 20 00 80 52  	mov	w0, #1
   83e18: 0f 00 00 14  	b	0x83e54 <_ZN42_$LT$$RF$T$u20$as$u20$core..fmt..Debug$GT$3fmt17h0702462b4f7b9fe3E+0x104>
   83e1c: e8 03 40 f9  	ldr	x8, [sp]
   83e20: 09 c1 40 39  	ldrb	w9, [x8, #48]
   83e24: c9 00 10 37  	tbnz	w9, #2, 0x83e3c <_ZN42_$LT$$RF$T$u20$as$u20$core..fmt..Debug$GT$3fmt17h0702462b4f7b9fe3E+0xec>
   83e28: 00 25 42 a9  	ldp	x0, x9, [x8, #32]
   83e2c: 01 00 00 f0  	adrp	x1, 0x86000 <_ZN42_$LT$$RF$T$u20$as$u20$core..fmt..Debug$GT$3fmt17h0702462b4f7b9fe3E+0xe8>
   83e30: 21 04 3f 91  	add	x1, x1, #4033
   83e34: 42 00 80 52  	mov	w2, #2
   83e38: 05 00 00 14  	b	0x83e4c <_ZN42_$LT$$RF$T$u20$as$u20$core..fmt..Debug$GT$3fmt17h0702462b4f7b9fe3E+0xfc>
   83e3c: 00 25 42 a9  	ldp	x0, x9, [x8, #32]
   83e40: 01 00 00 f0  	adrp	x1, 0x86000 <_ZN42_$LT$$RF$T$u20$as$u20$core..fmt..Debug$GT$3fmt17h0702462b4f7b9fe3E+0xfc>
   83e44: 21 00 3f 91  	add	x1, x1, #4032
   83e48: 22 00 80 52  	mov	w2, #1
   83e4c: 28 0d 40 f9  	ldr	x8, [x9, #24]
   83e50: 00 01 3f d6  	blr	x8
   83e54: f4 4f 43 a9  	ldp	x20, x19, [sp, #48]
   83e58: f6 57 42 a9  	ldp	x22, x21, [sp, #32]
   83e5c: fe 0b 40 f9  	ldr	x30, [sp, #16]
   83e60: 1f 00 00 71  	cmp	w0, #0
   83e64: e0 07 9f 1a  	cset	w0, ne
   83e68: ff 03 01 91  	add	sp, sp, #64
   83e6c: c0 03 5f d6  	ret

0000000000083e70 <_ZN42_$LT$$RF$T$u20$as$u20$core..fmt..Debug$GT$3fmt17hf9e5d8fb08b527bfE>:
   83e70: ff 03 02 d1  	sub	sp, sp, #128
   83e74: fe 5f 05 a9  	stp	x30, x23, [sp, #80]
   83e78: f6 57 06 a9  	stp	x22, x21, [sp, #96]
   83e7c: f4 4f 07 a9  	stp	x20, x19, [sp, #112]
   83e80: 17 00 40 f9  	ldr	x23, [x0]
   83e84: f5 03 01 aa  	mov	x21, x1
   83e88: e8 02 40 f9  	ldr	x8, [x23]
   83e8c: 08 02 00 b4  	cbz	x8, 0x83ecc <_ZN42_$LT$$RF$T$u20$as$u20$core..fmt..Debug$GT$3fmt17hf9e5d8fb08b527bfE+0x5c>
   83e90: b3 52 42 a9  	ldp	x19, x20, [x21, #32]
   83e94: 01 00 00 f0  	adrp	x1, 0x86000 <_ZN42_$LT$$RF$T$u20$as$u20$core..fmt..Debug$GT$3fmt17hf9e5d8fb08b527bfE+0x30>
   83e98: 21 b0 11 91  	add	x1, x1, #1132
   83e9c: 82 00 80 52  	mov	w2, #4
   83ea0: 96 0e 40 f9  	ldr	x22, [x20, #24]
   83ea4: e0 03 13 aa  	mov	x0, x19
   83ea8: c0 02 3f d6  	blr	x22
   83eac: 40 02 00 36  	tbz	w0, #0, 0x83ef4 <_ZN42_$LT$$RF$T$u20$as$u20$core..fmt..Debug$GT$3fmt17hf9e5d8fb08b527bfE+0x84>
   83eb0: 35 00 80 52  	mov	w21, #1
   83eb4: e0 03 15 2a  	mov	w0, w21
   83eb8: f4 4f 47 a9  	ldp	x20, x19, [sp, #112]
   83ebc: f6 57 46 a9  	ldp	x22, x21, [sp, #96]
   83ec0: fe 5f 45 a9  	ldp	x30, x23, [sp, #80]
   83ec4: ff 03 02 91  	add	sp, sp, #128
   83ec8: c0 03 5f d6  	ret
   83ecc: a0 22 42 a9  	ldp	x0, x8, [x21, #32]
   83ed0: f4 4f 47 a9  	ldp	x20, x19, [sp, #112]
   83ed4: f6 57 46 a9  	ldp	x22, x21, [sp, #96]
   83ed8: fe 5f 45 a9  	ldp	x30, x23, [sp, #80]
   83edc: 03 0d 40 f9  	ldr	x3, [x8, #24]
   83ee0: 01 00 00 f0  	adrp	x1, 0x86000 <_ZN42_$LT$$RF$T$u20$as$u20$core..fmt..Debug$GT$3fmt17hf9e5d8fb08b527bfE+0x7c>
   83ee4: 21 f0 11 91  	add	x1, x1, #1148
   83ee8: 82 00 80 52  	mov	w2, #4
   83eec: ff 03 02 91  	add	sp, sp, #128
   83ef0: 60 00 1f d6  	br	x3
   83ef4: a8 c2 40 39  	ldrb	w8, [x21, #48]
   83ef8: 48 02 10 37  	tbnz	w8, #2, 0x83f40 <_ZN42_$LT$$RF$T$u20$as$u20$core..fmt..Debug$GT$3fmt17hf9e5d8fb08b527bfE+0xd0>
   83efc: 01 00 00 f0  	adrp	x1, 0x86000 <_ZN42_$LT$$RF$T$u20$as$u20$core..fmt..Debug$GT$3fmt17hf9e5d8fb08b527bfE+0x98>
   83f00: 21 0c 3f 91  	add	x1, x1, #4035
   83f04: 22 00 80 52  	mov	w2, #1
   83f08: e0 03 13 aa  	mov	x0, x19
   83f0c: 35 00 80 52  	mov	w21, #1
   83f10: c0 02 3f d6  	blr	x22
   83f14: 00 fd 07 37  	tbnz	w0, #0, 0x83eb4 <_ZN42_$LT$$RF$T$u20$as$u20$core..fmt..Debug$GT$3fmt17hf9e5d8fb08b527bfE+0x44>
   83f18: e1 02 40 f9  	ldr	x1, [x23]
   83f1c: e0 83 00 91  	add	x0, sp, #32
   83f20: 02 06 80 52  	mov	w2, #48
   83f24: 3b 01 00 94  	bl	0x84410 <memcpy>
   83f28: e2 83 00 91  	add	x2, sp, #32
   83f2c: e0 03 13 aa  	mov	x0, x19
   83f30: e1 03 14 aa  	mov	x1, x20
   83f34: 8a f7 ff 97  	bl	0x81d5c <_ZN4core3fmt5write17h63775af3066fbce8E>
   83f38: c0 fb 07 37  	tbnz	w0, #0, 0x83eb0 <_ZN42_$LT$$RF$T$u20$as$u20$core..fmt..Debug$GT$3fmt17hf9e5d8fb08b527bfE+0x40>
   83f3c: 1c 00 00 14  	b	0x83fac <_ZN42_$LT$$RF$T$u20$as$u20$core..fmt..Debug$GT$3fmt17hf9e5d8fb08b527bfE+0x13c>
   83f40: 01 00 00 f0  	adrp	x1, 0x86000 <_ZN42_$LT$$RF$T$u20$as$u20$core..fmt..Debug$GT$3fmt17hf9e5d8fb08b527bfE+0xdc>
   83f44: 21 10 3f 91  	add	x1, x1, #4036
   83f48: 42 00 80 52  	mov	w2, #2
   83f4c: e0 03 13 aa  	mov	x0, x19
   83f50: c0 02 3f d6  	blr	x22
   83f54: 35 00 80 52  	mov	w21, #1
   83f58: e0 fa 07 37  	tbnz	w0, #0, 0x83eb4 <_ZN42_$LT$$RF$T$u20$as$u20$core..fmt..Debug$GT$3fmt17hf9e5d8fb08b527bfE+0x44>
   83f5c: e8 73 00 91  	add	x8, sp, #28
   83f60: f5 73 00 39  	strb	w21, [sp, #28]
   83f64: f3 53 00 a9  	stp	x19, x20, [sp]
   83f68: e8 0b 00 f9  	str	x8, [sp, #16]
   83f6c: e1 02 40 f9  	ldr	x1, [x23]
   83f70: e0 83 00 91  	add	x0, sp, #32
   83f74: 02 06 80 52  	mov	w2, #48
   83f78: 26 01 00 94  	bl	0x84410 <memcpy>
   83f7c: 01 00 00 f0  	adrp	x1, 0x86000 <_ZN42_$LT$$RF$T$u20$as$u20$core..fmt..Debug$GT$3fmt17hf9e5d8fb08b527bfE+0x118>
   83f80: 21 60 3d 91  	add	x1, x1, #3928
   83f84: e0 03 00 91  	mov	x0, sp
   83f88: e2 83 00 91  	add	x2, sp, #32
   83f8c: 74 f7 ff 97  	bl	0x81d5c <_ZN4core3fmt5write17h63775af3066fbce8E>
   83f90: 00 f9 07 37  	tbnz	w0, #0, 0x83eb0 <_ZN42_$LT$$RF$T$u20$as$u20$core..fmt..Debug$GT$3fmt17hf9e5d8fb08b527bfE+0x40>
   83f94: 01 00 00 f0  	adrp	x1, 0x86000 <_ZN42_$LT$$RF$T$u20$as$u20$core..fmt..Debug$GT$3fmt17hf9e5d8fb08b527bfE+0x130>
   83f98: 21 2c 3e 91  	add	x1, x1, #3979
   83f9c: e0 03 00 91  	mov	x0, sp
   83fa0: 42 00 80 52  	mov	w2, #2
   83fa4: 73 f8 ff 97  	bl	0x82170 <_ZN68_$LT$core..fmt..builders..PadAdapter$u20$as$u20$core..fmt..Write$GT$9write_str17h3825e647a41714ecE>
   83fa8: 40 f8 07 37  	tbnz	w0, #0, 0x83eb0 <_ZN42_$LT$$RF$T$u20$as$u20$core..fmt..Debug$GT$3fmt17hf9e5d8fb08b527bfE+0x40>
   83fac: 01 00 00 f0  	adrp	x1, 0x86000 <_ZN42_$LT$$RF$T$u20$as$u20$core..fmt..Debug$GT$3fmt17hf9e5d8fb08b527bfE+0x148>
   83fb0: 21 18 3f 91  	add	x1, x1, #4038
   83fb4: 22 00 80 52  	mov	w2, #1
   83fb8: e0 03 13 aa  	mov	x0, x19
   83fbc: c0 02 3f d6  	blr	x22
   83fc0: f5 03 00 2a  	mov	w21, w0
   83fc4: bc ff ff 17  	b	0x83eb4 <_ZN42_$LT$$RF$T$u20$as$u20$core..fmt..Debug$GT$3fmt17hf9e5d8fb08b527bfE+0x44>

0000000000083fc8 <_ZN42_$LT$$RF$T$u20$as$u20$core..fmt..Debug$GT$3fmt17h79baed9a49716602E>:
   83fc8: ff 83 00 d1  	sub	sp, sp, #32
   83fcc: fe 4f 01 a9  	stp	x30, x19, [sp, #16]
   83fd0: 33 20 42 a9  	ldp	x19, x8, [x1, #32]
   83fd4: 01 00 00 f0  	adrp	x1, 0x86000 <_ZN42_$LT$$RF$T$u20$as$u20$core..fmt..Debug$GT$3fmt17h79baed9a49716602E+0x18>
   83fd8: 21 68 10 91  	add	x1, x1, #1050
   83fdc: 62 00 80 52  	mov	w2, #3
   83fe0: 03 0d 40 f9  	ldr	x3, [x8, #24]
   83fe4: e0 03 13 aa  	mov	x0, x19
   83fe8: e3 07 00 f9  	str	x3, [sp, #8]
   83fec: 60 00 3f d6  	blr	x3
   83ff0: a0 00 00 36  	tbz	w0, #0, 0x84004 <_ZN42_$LT$$RF$T$u20$as$u20$core..fmt..Debug$GT$3fmt17h79baed9a49716602E+0x3c>
   83ff4: fe 4f 41 a9  	ldp	x30, x19, [sp, #16]
   83ff8: 20 00 80 52  	mov	w0, #1
   83ffc: ff 83 00 91  	add	sp, sp, #32
   84000: c0 03 5f d6  	ret
   84004: e0 03 13 aa  	mov	x0, x19
   84008: e3 07 40 f9  	ldr	x3, [sp, #8]
   8400c: fe 4f 41 a9  	ldp	x30, x19, [sp, #16]
   84010: 01 00 00 d0  	adrp	x1, 0x86000 <_ZN42_$LT$$RF$T$u20$as$u20$core..fmt..Debug$GT$3fmt17h79baed9a49716602E+0x50>
   84014: 21 74 10 91  	add	x1, x1, #1053
   84018: e2 00 80 52  	mov	w2, #7
   8401c: ff 83 00 91  	add	sp, sp, #32
   84020: 60 00 1f d6  	br	x3

0000000000084024 <_ZN4core3fmt3num51_$LT$impl$u20$core..fmt..Binary$u20$for$u20$i32$GT$3fmt17h254e012821a9f15aE>:
   84024: ff 43 02 d1  	sub	sp, sp, #144
   84028: fe 43 00 f9  	str	x30, [sp, #128]
   8402c: 0b 00 40 b9  	ldr	w11, [x0]
   84030: e8 03 01 aa  	mov	x8, x1
   84034: e9 03 1f aa  	mov	x9, xzr
   84038: ea 03 00 91  	mov	x10, sp
   8403c: 6d 7d 01 53  	lsr	w13, w11, #1
   84040: 0e 06 80 52  	mov	w14, #48
   84044: 4c 01 09 8b  	add	x12, x10, x9
   84048: 6e 01 00 33  	bfxil	w14, w11, #0, #1
   8404c: 29 05 00 d1  	sub	x9, x9, #1
   84050: eb 03 0d 2a  	mov	w11, w13
   84054: 8e fd 01 39  	strb	w14, [x12, #127]
   84058: 2d ff ff 35  	cbnz	w13, 0x8403c <_ZN4core3fmt3num51_$LT$impl$u20$core..fmt..Binary$u20$for$u20$i32$GT$3fmt17h254e012821a9f15aE+0x18>
   8405c: 20 01 02 91  	add	x0, x9, #128
   84060: 1f 04 02 f1  	cmp	x0, #129
   84064: c2 01 00 54  	b.hs	0x8409c <_ZN4core3fmt3num51_$LT$impl$u20$core..fmt..Binary$u20$for$u20$i32$GT$3fmt17h254e012821a9f15aE+0x78>
   84068: ea 03 00 91  	mov	x10, sp
   8406c: e5 03 09 cb  	neg	x5, x9
   84070: 49 01 09 8b  	add	x9, x10, x9
   84074: 02 00 00 f0  	adrp	x2, 0x87000 <_ZN4core3fmt3num51_$LT$impl$u20$core..fmt..Binary$u20$for$u20$i32$GT$3fmt17h254e012821a9f15aE+0x5c>
   84078: 24 01 02 91  	add	x4, x9, #128
   8407c: 42 60 03 91  	add	x2, x2, #216
   84080: 21 00 80 52  	mov	w1, #1
   84084: 43 00 80 52  	mov	w3, #2
   84088: e0 03 08 aa  	mov	x0, x8
   8408c: 23 f5 ff 97  	bl	0x81518 <_ZN4core3fmt9Formatter12pad_integral17ha6f583ca7a70f44dE>
   84090: fe 43 40 f9  	ldr	x30, [sp, #128]
   84094: ff 43 02 91  	add	sp, sp, #144
   84098: c0 03 5f d6  	ret
   8409c: 02 00 00 d0  	adrp	x2, 0x86000 <_ZN4core3fmt3num51_$LT$impl$u20$core..fmt..Binary$u20$for$u20$i32$GT$3fmt17h254e012821a9f15aE+0x80>
   840a0: 42 20 0e 91  	add	x2, x2, #904
   840a4: 01 10 80 52  	mov	w1, #128
   840a8: f0 f5 ff 97  	bl	0x81868 <_ZN4core5slice5index26slice_start_index_len_fail17ha3ad23336e78e7f7E>
   840ac: 20 00 20 d4  	brk	#0x1

00000000000840b0 <_ZN4core3fmt3num51_$LT$impl$u20$core..fmt..Binary$u20$for$u20$i64$GT$3fmt17he77c3abe7c79070fE>:
   840b0: ff 43 02 d1  	sub	sp, sp, #144
   840b4: fe 43 00 f9  	str	x30, [sp, #128]
   840b8: 0b 00 40 f9  	ldr	x11, [x0]
   840bc: e8 03 01 aa  	mov	x8, x1
   840c0: e9 03 1f aa  	mov	x9, xzr
   840c4: ea 03 00 91  	mov	x10, sp
   840c8: 6d fd 41 d3  	lsr	x13, x11, #1
   840cc: 0e 06 80 52  	mov	w14, #48
   840d0: 4c 01 09 8b  	add	x12, x10, x9
   840d4: 6e 01 00 33  	bfxil	w14, w11, #0, #1
   840d8: 29 05 00 d1  	sub	x9, x9, #1
   840dc: eb 03 0d aa  	mov	x11, x13
   840e0: 8e fd 01 39  	strb	w14, [x12, #127]
   840e4: 2d ff ff b5  	cbnz	x13, 0x840c8 <_ZN4core3fmt3num51_$LT$impl$u20$core..fmt..Binary$u20$for$u20$i64$GT$3fmt17he77c3abe7c79070fE+0x18>
   840e8: 20 01 02 91  	add	x0, x9, #128
   840ec: 1f 04 02 f1  	cmp	x0, #129
   840f0: c2 01 00 54  	b.hs	0x84128 <_ZN4core3fmt3num51_$LT$impl$u20$core..fmt..Binary$u20$for$u20$i64$GT$3fmt17he77c3abe7c79070fE+0x78>
   840f4: ea 03 00 91  	mov	x10, sp
   840f8: e5 03 09 cb  	neg	x5, x9
   840fc: 49 01 09 8b  	add	x9, x10, x9
   84100: 02 00 00 f0  	adrp	x2, 0x87000 <_ZN4core3fmt3num51_$LT$impl$u20$core..fmt..Binary$u20$for$u20$i64$GT$3fmt17he77c3abe7c79070fE+0x5c>
   84104: 24 01 02 91  	add	x4, x9, #128
   84108: 42 60 03 91  	add	x2, x2, #216
   8410c: 21 00 80 52  	mov	w1, #1
   84110: 43 00 80 52  	mov	w3, #2
   84114: e0 03 08 aa  	mov	x0, x8
   84118: 00 f5 ff 97  	bl	0x81518 <_ZN4core3fmt9Formatter12pad_integral17ha6f583ca7a70f44dE>
   8411c: fe 43 40 f9  	ldr	x30, [sp, #128]
   84120: ff 43 02 91  	add	sp, sp, #144
   84124: c0 03 5f d6  	ret
   84128: 02 00 00 d0  	adrp	x2, 0x86000 <_ZN4core3fmt3num51_$LT$impl$u20$core..fmt..Binary$u20$for$u20$i64$GT$3fmt17he77c3abe7c79070fE+0x80>
   8412c: 42 20 0e 91  	add	x2, x2, #904
   84130: 01 10 80 52  	mov	w1, #128
   84134: cd f5 ff 97  	bl	0x81868 <_ZN4core5slice5index26slice_start_index_len_fail17ha3ad23336e78e7f7E>
   84138: 20 00 20 d4  	brk	#0x1

000000000008413c <_ZN4core3fmt3num53_$LT$impl$u20$core..fmt..LowerHex$u20$for$u20$i64$GT$3fmt17h89727d655d417749E>:
   8413c: ff 43 02 d1  	sub	sp, sp, #144
   84140: fe 43 00 f9  	str	x30, [sp, #128]
   84144: 0b 00 40 f9  	ldr	x11, [x0]
   84148: e8 03 01 aa  	mov	x8, x1
   8414c: e9 03 1f aa  	mov	x9, xzr
   84150: ea 03 00 91  	mov	x10, sp
   84154: 6e 0d 00 12  	and	w14, w11, #0xf
   84158: 0f 06 80 52  	mov	w15, #48
   8415c: 6d fd 44 d3  	lsr	x13, x11, #4
   84160: 6f 0d 00 33  	bfxil	w15, w11, #0, #4
   84164: cb 5d 01 11  	add	w11, w14, #87
   84168: df 29 00 71  	cmp	w14, #10
   8416c: 4c 01 09 8b  	add	x12, x10, x9
   84170: eb 31 8b 1a  	csel	w11, w15, w11, lo
   84174: 8b fd 01 39  	strb	w11, [x12, #127]
   84178: 29 05 00 d1  	sub	x9, x9, #1
   8417c: eb 03 0d aa  	mov	x11, x13
   84180: ad fe ff b5  	cbnz	x13, 0x84154 <_ZN4core3fmt3num53_$LT$impl$u20$core..fmt..LowerHex$u20$for$u20$i64$GT$3fmt17h89727d655d417749E+0x18>
   84184: 20 01 02 91  	add	x0, x9, #128
   84188: 1f 04 02 f1  	cmp	x0, #129
   8418c: c2 01 00 54  	b.hs	0x841c4 <_ZN4core3fmt3num53_$LT$impl$u20$core..fmt..LowerHex$u20$for$u20$i64$GT$3fmt17h89727d655d417749E+0x88>
   84190: ea 03 00 91  	mov	x10, sp
   84194: e5 03 09 cb  	neg	x5, x9
   84198: 49 01 09 8b  	add	x9, x10, x9
   8419c: 02 00 00 d0  	adrp	x2, 0x86000 <_ZN4core3fmt3num53_$LT$impl$u20$core..fmt..LowerHex$u20$for$u20$i64$GT$3fmt17h89727d655d417749E+0x68>
   841a0: 24 01 02 91  	add	x4, x9, #128
   841a4: 42 80 0e 91  	add	x2, x2, #928
   841a8: 21 00 80 52  	mov	w1, #1
   841ac: 43 00 80 52  	mov	w3, #2
   841b0: e0 03 08 aa  	mov	x0, x8
   841b4: d9 f4 ff 97  	bl	0x81518 <_ZN4core3fmt9Formatter12pad_integral17ha6f583ca7a70f44dE>
   841b8: fe 43 40 f9  	ldr	x30, [sp, #128]
   841bc: ff 43 02 91  	add	sp, sp, #144
   841c0: c0 03 5f d6  	ret
   841c4: 02 00 00 d0  	adrp	x2, 0x86000 <_ZN4core3fmt3num53_$LT$impl$u20$core..fmt..LowerHex$u20$for$u20$i64$GT$3fmt17h89727d655d417749E+0x90>
   841c8: 42 20 0e 91  	add	x2, x2, #904
   841cc: 01 10 80 52  	mov	w1, #128
   841d0: a6 f5 ff 97  	bl	0x81868 <_ZN4core5slice5index26slice_start_index_len_fail17ha3ad23336e78e7f7E>
   841d4: 20 00 20 d4  	brk	#0x1

00000000000841d8 <_ZN4core3fmt3num53_$LT$impl$u20$core..fmt..UpperHex$u20$for$u20$i64$GT$3fmt17h0da107dab2280b2bE>:
   841d8: ff 43 02 d1  	sub	sp, sp, #144
   841dc: fe 43 00 f9  	str	x30, [sp, #128]
   841e0: 0b 00 40 f9  	ldr	x11, [x0]
   841e4: e8 03 01 aa  	mov	x8, x1
   841e8: e9 03 1f aa  	mov	x9, xzr
   841ec: ea 03 00 91  	mov	x10, sp
   841f0: 6e 0d 00 12  	and	w14, w11, #0xf
   841f4: 0f 06 80 52  	mov	w15, #48
   841f8: 6d fd 44 d3  	lsr	x13, x11, #4
   841fc: 6f 0d 00 33  	bfxil	w15, w11, #0, #4
   84200: cb dd 00 11  	add	w11, w14, #55
   84204: df 29 00 71  	cmp	w14, #10
   84208: 4c 01 09 8b  	add	x12, x10, x9
   8420c: eb 31 8b 1a  	csel	w11, w15, w11, lo
   84210: 8b fd 01 39  	strb	w11, [x12, #127]
   84214: 29 05 00 d1  	sub	x9, x9, #1
   84218: eb 03 0d aa  	mov	x11, x13
   8421c: ad fe ff b5  	cbnz	x13, 0x841f0 <_ZN4core3fmt3num53_$LT$impl$u20$core..fmt..UpperHex$u20$for$u20$i64$GT$3fmt17h0da107dab2280b2bE+0x18>
   84220: 20 01 02 91  	add	x0, x9, #128
   84224: 1f 04 02 f1  	cmp	x0, #129
   84228: c2 01 00 54  	b.hs	0x84260 <_ZN4core3fmt3num53_$LT$impl$u20$core..fmt..UpperHex$u20$for$u20$i64$GT$3fmt17h0da107dab2280b2bE+0x88>
   8422c: ea 03 00 91  	mov	x10, sp
   84230: e5 03 09 cb  	neg	x5, x9
   84234: 49 01 09 8b  	add	x9, x10, x9
   84238: 02 00 00 d0  	adrp	x2, 0x86000 <_ZN4core3fmt3num53_$LT$impl$u20$core..fmt..UpperHex$u20$for$u20$i64$GT$3fmt17h0da107dab2280b2bE+0x68>
   8423c: 24 01 02 91  	add	x4, x9, #128
   84240: 42 80 0e 91  	add	x2, x2, #928
   84244: 21 00 80 52  	mov	w1, #1
   84248: 43 00 80 52  	mov	w3, #2
   8424c: e0 03 08 aa  	mov	x0, x8
   84250: b2 f4 ff 97  	bl	0x81518 <_ZN4core3fmt9Formatter12pad_integral17ha6f583ca7a70f44dE>
   84254: fe 43 40 f9  	ldr	x30, [sp, #128]
   84258: ff 43 02 91  	add	sp, sp, #144
   8425c: c0 03 5f d6  	ret
   84260: 02 00 00 d0  	adrp	x2, 0x86000 <_ZN4core3fmt3num53_$LT$impl$u20$core..fmt..UpperHex$u20$for$u20$i64$GT$3fmt17h0da107dab2280b2bE+0x90>
   84264: 42 20 0e 91  	add	x2, x2, #904
   84268: 01 10 80 52  	mov	w1, #128
   8426c: 7f f5 ff 97  	bl	0x81868 <_ZN4core5slice5index26slice_start_index_len_fail17ha3ad23336e78e7f7E>
   84270: 20 00 20 d4  	brk	#0x1

0000000000084274 <_ZN4core3fmt3num3imp52_$LT$impl$u20$core..fmt..Display$u20$for$u20$i64$GT$3fmt17hc89e537dc291e8beE>:
   84274: ff 03 01 d1  	sub	sp, sp, #64
   84278: fe 1b 00 f9  	str	x30, [sp, #48]
   8427c: 09 00 40 f9  	ldr	x9, [x0]
   84280: e8 03 01 aa  	mov	x8, x1
   84284: 3f 01 00 f1  	cmp	x9, #0
   84288: 2b 55 89 da  	cneg	x11, x9, mi
   8428c: 6a fd 44 d3  	lsr	x10, x11, #4
   84290: 5f c5 09 f1  	cmp	x10, #625
   84294: 0a 00 00 d0  	adrp	x10, 0x86000 <_ZN4core3fmt3num3imp52_$LT$impl$u20$core..fmt..Display$u20$for$u20$i64$GT$3fmt17hc89e537dc291e8beE+0x28>
   84298: 4a e9 08 91  	add	x10, x10, #570
   8429c: e3 04 00 54  	b.lo	0x84338 <_ZN4core3fmt3num3imp52_$LT$impl$u20$core..fmt..Display$u20$for$u20$i64$GT$3fmt17hc89e537dc291e8beE+0xc4>
   842a0: 6d 29 8b d2  	mov	x13, #22859
   842a4: cd 10 a7 f2  	movk	x13, #14470, lsl #16
   842a8: cd ba d8 f2  	movk	x13, #50646, lsl #32
   842ac: ef a3 90 52  	mov	w15, #34079
   842b0: f2 1f 9c 52  	mov	w18, #57599
   842b4: ec 03 1f aa  	mov	x12, xzr
   842b8: ad 8d e6 f2  	movk	x13, #13421, lsl #48
   842bc: ee e1 84 12  	mov	w14, #-10000
   842c0: 6f 3d aa 72  	movk	w15, #20971, lsl #16
   842c4: 70 0c 80 12  	mov	w16, #-100
   842c8: f1 23 00 91  	add	x17, sp, #8
   842cc: b2 be a0 72  	movk	w18, #1525, lsl #16
   842d0: e0 03 0b aa  	mov	x0, x11
   842d4: 6b 7d cd 9b  	umulh	x11, x11, x13
   842d8: 6b fd 4b d3  	lsr	x11, x11, #11
   842dc: 1f 00 12 eb  	cmp	x0, x18
   842e0: 60 01 0e 1b  	madd	w0, w11, w14, w0
   842e4: 02 3c 00 12  	and	w2, w0, #0xffff
   842e8: 42 7c af 9b  	umull	x2, w2, w15
   842ec: 42 fc 65 d3  	lsr	x2, x2, #37
   842f0: 40 00 10 1b  	madd	w0, w2, w16, w0
   842f4: 42 05 02 8b  	add	x2, x10, x2, lsl #1
   842f8: 40 25 20 8b  	add	x0, x10, w0, uxth #1
   842fc: 43 00 40 39  	ldrb	w3, [x2]
   84300: 42 04 40 39  	ldrb	w2, [x2, #1]
   84304: 04 04 40 39  	ldrb	w4, [x0, #1]
   84308: 00 00 40 39  	ldrb	w0, [x0]
   8430c: 21 02 0c 8b  	add	x1, x17, x12
   84310: 8c 11 00 d1  	sub	x12, x12, #4
   84314: 22 90 00 39  	strb	w2, [x1, #36]
   84318: 23 8c 00 39  	strb	w3, [x1, #35]
   8431c: 24 98 00 39  	strb	w4, [x1, #38]
   84320: 20 94 00 39  	strb	w0, [x1, #37]
   84324: 68 fd ff 54  	b.hi	0x842d0 <_ZN4core3fmt3num3imp52_$LT$impl$u20$core..fmt..Display$u20$for$u20$i64$GT$3fmt17hc89e537dc291e8beE+0x5c>
   84328: 8c 9d 00 91  	add	x12, x12, #39
   8432c: 7f 8d 01 f1  	cmp	x11, #99
   84330: ac 00 00 54  	b.gt	0x84344 <_ZN4core3fmt3num3imp52_$LT$impl$u20$core..fmt..Display$u20$for$u20$i64$GT$3fmt17hc89e537dc291e8beE+0xd0>
   84334: 14 00 00 14  	b	0x84384 <_ZN4core3fmt3num3imp52_$LT$impl$u20$core..fmt..Display$u20$for$u20$i64$GT$3fmt17hc89e537dc291e8beE+0x110>
   84338: ec 04 80 52  	mov	w12, #39
   8433c: 7f 8d 01 f1  	cmp	x11, #99
   84340: 2d 02 00 54  	b.le	0x84384 <_ZN4core3fmt3num3imp52_$LT$impl$u20$core..fmt..Display$u20$for$u20$i64$GT$3fmt17hc89e537dc291e8beE+0x110>
   84344: ee a3 90 52  	mov	w14, #34079
   84348: 6d 3d 00 12  	and	w13, w11, #0xffff
   8434c: 6e 3d aa 72  	movk	w14, #20971, lsl #16
   84350: ad 7d ae 9b  	umull	x13, w13, w14
   84354: 6f 0c 80 12  	mov	w15, #-100
   84358: ad fd 65 d3  	lsr	x13, x13, #37
   8435c: ab 2d 0f 1b  	madd	w11, w13, w15, w11
   84360: 4b 25 2b 8b  	add	x11, x10, w11, uxth #1
   84364: 6e 05 40 39  	ldrb	w14, [x11, #1]
   84368: 6b 01 40 39  	ldrb	w11, [x11]
   8436c: 8c 09 00 d1  	sub	x12, x12, #2
   84370: ef 23 00 91  	add	x15, sp, #8
   84374: ef 01 0c 8b  	add	x15, x15, x12
   84378: eb 01 00 39  	strb	w11, [x15]
   8437c: eb 03 0d aa  	mov	x11, x13
   84380: ee 05 00 39  	strb	w14, [x15, #1]
   84384: 7f 29 00 f1  	cmp	x11, #10
   84388: ca 00 00 54  	b.ge	0x843a0 <_ZN4core3fmt3num3imp52_$LT$impl$u20$core..fmt..Display$u20$for$u20$i64$GT$3fmt17hc89e537dc291e8beE+0x12c>
   8438c: 8c 05 00 d1  	sub	x12, x12, #1
   84390: 6a c1 00 11  	add	w10, w11, #48
   84394: eb 23 00 91  	add	x11, sp, #8
   84398: 6a 69 2c 38  	strb	w10, [x11, x12]
   8439c: 09 00 00 14  	b	0x843c0 <_ZN4core3fmt3num3imp52_$LT$impl$u20$core..fmt..Display$u20$for$u20$i64$GT$3fmt17hc89e537dc291e8beE+0x14c>
   843a0: 4a 05 0b 8b  	add	x10, x10, x11, lsl #1
   843a4: 4b 05 40 39  	ldrb	w11, [x10, #1]
   843a8: 4a 01 40 39  	ldrb	w10, [x10]
   843ac: 8c 09 00 d1  	sub	x12, x12, #2
   843b0: ed 23 00 91  	add	x13, sp, #8
   843b4: ad 01 0c 8b  	add	x13, x13, x12
   843b8: ab 05 00 39  	strb	w11, [x13, #1]
   843bc: aa 01 00 39  	strb	w10, [x13]
   843c0: ea 23 00 91  	add	x10, sp, #8
   843c4: eb 04 80 52  	mov	w11, #39
   843c8: 29 fd 7f d3  	lsr	x9, x9, #63
   843cc: 02 00 00 d0  	adrp	x2, 0x86000 <_ZN4core3fmt3num3imp52_$LT$impl$u20$core..fmt..Display$u20$for$u20$i64$GT$3fmt17hc89e537dc291e8beE+0x160>
   843d0: 44 01 0c 8b  	add	x4, x10, x12
   843d4: 65 01 0c cb  	sub	x5, x11, x12
   843d8: 21 01 00 52  	eor	w1, w9, #0x1
   843dc: 42 a0 06 91  	add	x2, x2, #424
   843e0: e0 03 08 aa  	mov	x0, x8
   843e4: e3 03 1f aa  	mov	x3, xzr
   843e8: 4c f4 ff 97  	bl	0x81518 <_ZN4core3fmt9Formatter12pad_integral17ha6f583ca7a70f44dE>
   843ec: fe 1b 40 f9  	ldr	x30, [sp, #48]
   843f0: ff 03 01 91  	add	sp, sp, #64
   843f4: c0 03 5f d6  	ret

00000000000843f8 <_ZN53_$LT$core..fmt..Error$u20$as$u20$core..fmt..Debug$GT$3fmt17h35673c67a40cb87eE>:
   843f8: 20 20 42 a9  	ldp	x0, x8, [x1, #32]
   843fc: 01 00 00 f0  	adrp	x1, 0x87000 <_ZN53_$LT$core..fmt..Error$u20$as$u20$core..fmt..Debug$GT$3fmt17h35673c67a40cb87eE+0x10>
   84400: 21 68 03 91  	add	x1, x1, #218
   84404: a2 00 80 52  	mov	w2, #5
   84408: 03 0d 40 f9  	ldr	x3, [x8, #24]
   8440c: 60 00 1f d6  	br	x3

0000000000084410 <memcpy>:
   84410: ff 03 01 d1  	sub	sp, sp, #64
   84414: 22 02 00 b4  	cbz	x2, 0x84458 <memcpy+0x48>
   84418: 5f 20 00 f1  	cmp	x2, #8
   8441c: e3 00 00 54  	b.lo	0x84438 <memcpy+0x28>
   84420: 28 00 02 8b  	add	x8, x1, x2
   84424: 1f 01 00 eb  	cmp	x8, x0
   84428: c9 01 00 54  	b.ls	0x84460 <memcpy+0x50>
   8442c: 08 00 02 8b  	add	x8, x0, x2
   84430: 1f 01 01 eb  	cmp	x8, x1
   84434: 69 01 00 54  	b.ls	0x84460 <memcpy+0x50>
   84438: e8 03 1f aa  	mov	x8, xzr
   8443c: 49 00 08 cb  	sub	x9, x2, x8
   84440: 0a 00 08 8b  	add	x10, x0, x8
   84444: 28 00 08 8b  	add	x8, x1, x8
   84448: 0b 15 40 38  	ldrb	w11, [x8], #1
   8444c: 29 05 00 f1  	subs	x9, x9, #1
   84450: 4b 15 00 38  	strb	w11, [x10], #1
   84454: a1 ff ff 54  	b.ne	0x84448 <memcpy+0x38>
   84458: ff 03 01 91  	add	sp, sp, #64
   8445c: c0 03 5f d6  	ret
   84460: 5f 80 00 f1  	cmp	x2, #32
   84464: 62 00 00 54  	b.hs	0x84470 <memcpy+0x60>
   84468: e8 03 1f aa  	mov	x8, xzr
   8446c: 9a 00 00 14  	b	0x846d4 <memcpy+0x2c4>
   84470: 48 e8 7b 92  	and	x8, x2, #0xffffffffffffffe0
   84474: 29 40 00 91  	add	x9, x1, #16
   84478: 0b 40 00 91  	add	x11, x0, #16
   8447c: ea 03 08 aa  	mov	x10, x8
   84480: ed 03 09 aa  	mov	x13, x9
   84484: 2c 11 5f 38  	ldurb	w12, [x9, #-15]
   84488: ae 0d 5f 38  	ldrb	w14, [x13, #-16]!
   8448c: 4a 81 00 f1  	subs	x10, x10, #32
   84490: f1 03 0d aa  	mov	x17, x13
   84494: af 0d 40 39  	ldrb	w15, [x13, #3]
   84498: b0 09 40 39  	ldrb	w16, [x13, #2]
   8449c: 32 4e 40 38  	ldrb	w18, [x17, #4]!
   844a0: 23 51 5f 38  	ldurb	w3, [x9, #-11]
   844a4: 8e 1d 78 b3  	bfi	x14, x12, #8, #8
   844a8: f0 1d 78 b3  	bfi	x16, x15, #8, #8
   844ac: 24 0e 40 39  	ldrb	w4, [x17, #3]
   844b0: 31 0a 40 39  	ldrb	w17, [x17, #2]
   844b4: 72 1c 18 33  	bfi	w18, w3, #8, #8
   844b8: 0e 3e 70 b3  	bfi	x14, x16, #16, #16
   844bc: ec 03 0d aa  	mov	x12, x13
   844c0: 91 1c 18 33  	bfi	w17, w4, #8, #8
   844c4: 32 3e 10 33  	bfi	w18, w17, #16, #16
   844c8: 4e 7e 60 b3  	bfi	x14, x18, #32, #32
   844cc: ee 0b 00 f9  	str	x14, [sp, #16]
   844d0: ae 25 40 39  	ldrb	w14, [x13, #9]
   844d4: 8f 8d 40 38  	ldrb	w15, [x12, #8]!
   844d8: 90 0d 40 39  	ldrb	w16, [x12, #3]
   844dc: 91 09 40 39  	ldrb	w17, [x12, #2]
   844e0: 92 4d 40 38  	ldrb	w18, [x12, #4]!
   844e4: ad 35 40 39  	ldrb	w13, [x13, #13]
   844e8: cf 1d 78 b3  	bfi	x15, x14, #8, #8
   844ec: 11 1e 78 b3  	bfi	x17, x16, #8, #8
   844f0: 83 0d 40 39  	ldrb	w3, [x12, #3]
   844f4: 8c 09 40 39  	ldrb	w12, [x12, #2]
   844f8: b2 1d 18 33  	bfi	w18, w13, #8, #8
   844fc: 2f 3e 70 b3  	bfi	x15, x17, #16, #16
   84500: ee 03 09 aa  	mov	x14, x9
   84504: 6c 1c 18 33  	bfi	w12, w3, #8, #8
   84508: 92 3d 10 33  	bfi	w18, w12, #16, #16
   8450c: 4f 7e 60 b3  	bfi	x15, x18, #32, #32
   84510: ef 0f 00 f9  	str	x15, [sp, #24]
   84514: e0 07 c0 3d  	ldr	q0, [sp, #16]
   84518: 2c 0d 40 39  	ldrb	w12, [x9, #3]
   8451c: 2d 09 40 39  	ldrb	w13, [x9, #2]
   84520: 2f 05 40 39  	ldrb	w15, [x9, #1]
   84524: 30 01 40 39  	ldrb	w16, [x9]
   84528: d1 4d 40 38  	ldrb	w17, [x14, #4]!
   8452c: 32 15 40 39  	ldrb	w18, [x9, #5]
   84530: 8d 1d 78 b3  	bfi	x13, x12, #8, #8
   84534: f0 1d 78 b3  	bfi	x16, x15, #8, #8
   84538: c3 0d 40 39  	ldrb	w3, [x14, #3]
   8453c: ce 09 40 39  	ldrb	w14, [x14, #2]
   84540: 51 1e 18 33  	bfi	w17, w18, #8, #8
   84544: b0 3d 70 b3  	bfi	x16, x13, #16, #16
   84548: ec 03 09 aa  	mov	x12, x9
   8454c: 6e 1c 18 33  	bfi	w14, w3, #8, #8
   84550: d1 3d 10 33  	bfi	w17, w14, #16, #16
   84554: 30 7e 60 b3  	bfi	x16, x17, #32, #32
   84558: f0 03 00 f9  	str	x16, [sp]
   8455c: 2d 25 40 39  	ldrb	w13, [x9, #9]
   84560: 8e 8d 40 38  	ldrb	w14, [x12, #8]!
   84564: 8f 0d 40 39  	ldrb	w15, [x12, #3]
   84568: 90 09 40 39  	ldrb	w16, [x12, #2]
   8456c: 91 4d 40 38  	ldrb	w17, [x12, #4]!
   84570: 32 35 40 39  	ldrb	w18, [x9, #13]
   84574: ae 1d 78 b3  	bfi	x14, x13, #8, #8
   84578: f0 1d 78 b3  	bfi	x16, x15, #8, #8
   8457c: 83 0d 40 39  	ldrb	w3, [x12, #3]
   84580: 8c 09 40 39  	ldrb	w12, [x12, #2]
   84584: 51 1e 18 33  	bfi	w17, w18, #8, #8
   84588: e0 0f 80 3d  	str	q0, [sp, #48]
   8458c: 0e 3e 70 b3  	bfi	x14, x16, #16, #16
   84590: 6c 1c 18 33  	bfi	w12, w3, #8, #8
   84594: 91 3d 10 33  	bfi	w17, w12, #16, #16
   84598: ec 1b 40 f9  	ldr	x12, [sp, #48]
   8459c: 2e 7e 60 b3  	bfi	x14, x17, #32, #32
   845a0: ee 07 00 f9  	str	x14, [sp, #8]
   845a4: ed 03 0b aa  	mov	x13, x11
   845a8: e1 03 c0 3d  	ldr	q1, [sp]
   845ac: ac 0d 1f 38  	strb	w12, [x13, #-16]!
   845b0: f0 1f 40 f9  	ldr	x16, [sp, #56]
   845b4: 8f fd 58 d3  	lsr	x15, x12, #24
   845b8: 8e fd 68 d3  	lsr	x14, x12, #40
   845bc: af 0d 00 39  	strb	w15, [x13, #3]
   845c0: 8f fd 48 d3  	lsr	x15, x12, #8
   845c4: 6e 51 1f 38  	sturb	w14, [x11, #-11]
   845c8: 8e fd 50 d3  	lsr	x14, x12, #16
   845cc: 6f 11 1f 38  	sturb	w15, [x11, #-15]
   845d0: 0f fe 68 d3  	lsr	x15, x16, #40
   845d4: ae 09 00 39  	strb	w14, [x13, #2]
   845d8: ee 03 0d aa  	mov	x14, x13
   845dc: af 35 00 39  	strb	w15, [x13, #13]
   845e0: 0f fe 48 d3  	lsr	x15, x16, #8
   845e4: d0 8d 00 38  	strb	w16, [x14, #8]!
   845e8: af 25 00 39  	strb	w15, [x13, #9]
   845ec: 0f fe 58 d3  	lsr	x15, x16, #24
   845f0: cf 0d 00 39  	strb	w15, [x14, #3]
   845f4: 0f fe 50 d3  	lsr	x15, x16, #16
   845f8: cf 09 00 39  	strb	w15, [x14, #2]
   845fc: 8f fd 60 d3  	lsr	x15, x12, #32
   84600: af 4d 00 38  	strb	w15, [x13, #4]!
   84604: 0f fe 60 d3  	lsr	x15, x16, #32
   84608: cf 4d 00 38  	strb	w15, [x14, #4]!
   8460c: 8f fd 78 d3  	lsr	x15, x12, #56
   84610: 8c fd 70 d3  	lsr	x12, x12, #48
   84614: af 0d 00 39  	strb	w15, [x13, #3]
   84618: 0f fe 78 d3  	lsr	x15, x16, #56
   8461c: 10 fe 70 d3  	lsr	x16, x16, #48
   84620: ac 09 00 39  	strb	w12, [x13, #2]
   84624: cf 0d 00 39  	strb	w15, [x14, #3]
   84628: d0 09 00 39  	strb	w16, [x14, #2]
   8462c: e1 0b 80 3d  	str	q1, [sp, #32]
   84630: ec 13 40 f9  	ldr	x12, [sp, #32]
   84634: ed 03 0b aa  	mov	x13, x11
   84638: 6e 81 00 91  	add	x14, x11, #32
   8463c: 29 81 00 91  	add	x9, x9, #32
   84640: 6c 01 00 39  	strb	w12, [x11]
   84644: 8f fd 68 d3  	lsr	x15, x12, #40
   84648: f0 17 40 f9  	ldr	x16, [sp, #40]
   8464c: 6f 15 00 39  	strb	w15, [x11, #5]
   84650: 8f fd 58 d3  	lsr	x15, x12, #24
   84654: 6f 0d 00 39  	strb	w15, [x11, #3]
   84658: 8f fd 50 d3  	lsr	x15, x12, #16
   8465c: 6f 09 00 39  	strb	w15, [x11, #2]
   84660: 8f fd 48 d3  	lsr	x15, x12, #8
   84664: 6f 05 00 39  	strb	w15, [x11, #1]
   84668: 0f fe 68 d3  	lsr	x15, x16, #40
   8466c: b0 8d 00 38  	strb	w16, [x13, #8]!
   84670: 6f 35 00 39  	strb	w15, [x11, #13]
   84674: 0f fe 58 d3  	lsr	x15, x16, #24
   84678: af 0d 00 39  	strb	w15, [x13, #3]
   8467c: 0f fe 50 d3  	lsr	x15, x16, #16
   84680: af 09 00 39  	strb	w15, [x13, #2]
   84684: 0f fe 48 d3  	lsr	x15, x16, #8
   84688: 6f 25 00 39  	strb	w15, [x11, #9]
   8468c: 0f fe 60 d3  	lsr	x15, x16, #32
   84690: af 4d 00 38  	strb	w15, [x13, #4]!
   84694: 8f fd 60 d3  	lsr	x15, x12, #32
   84698: 6f 4d 00 38  	strb	w15, [x11, #4]!
   8469c: 0f fe 78 d3  	lsr	x15, x16, #56
   846a0: af 0d 00 39  	strb	w15, [x13, #3]
   846a4: 8f fd 78 d3  	lsr	x15, x12, #56
   846a8: 8c fd 70 d3  	lsr	x12, x12, #48
   846ac: 10 fe 70 d3  	lsr	x16, x16, #48
   846b0: 6f 0d 00 39  	strb	w15, [x11, #3]
   846b4: 6c 09 00 39  	strb	w12, [x11, #2]
   846b8: eb 03 0e aa  	mov	x11, x14
   846bc: b0 09 00 39  	strb	w16, [x13, #2]
   846c0: 01 ee ff 54  	b.ne	0x84480 <memcpy+0x70>
   846c4: 1f 01 02 eb  	cmp	x8, x2
   846c8: 80 ec ff 54  	b.eq	0x84458 <memcpy+0x48>
   846cc: 5f 04 7d f2  	tst	x2, #0x18
   846d0: 60 eb ff 54  	b.eq	0x8443c <memcpy+0x2c>
   846d4: ea 03 08 aa  	mov	x10, x8
   846d8: 48 f0 7d 92  	and	x8, x2, #0xfffffffffffffff8
   846dc: 29 00 0a 8b  	add	x9, x1, x10
   846e0: 0b 00 0a 8b  	add	x11, x0, x10
   846e4: 4a 01 08 cb  	sub	x10, x10, x8
   846e8: ed 03 09 aa  	mov	x13, x9
   846ec: 2c 15 40 39  	ldrb	w12, [x9, #5]
   846f0: ae 4d 40 38  	ldrb	w14, [x13, #4]!
   846f4: 2f 05 40 39  	ldrb	w15, [x9, #1]
   846f8: 30 01 40 39  	ldrb	w16, [x9]
   846fc: 31 0d 40 39  	ldrb	w17, [x9, #3]
   84700: a3 0d 40 39  	ldrb	w3, [x13, #3]
   84704: ad 09 40 39  	ldrb	w13, [x13, #2]
   84708: 32 09 40 39  	ldrb	w18, [x9, #2]
   8470c: 8e 1d 18 33  	bfi	w14, w12, #8, #8
   84710: 6f 05 00 39  	strb	w15, [x11, #1]
   84714: ef 03 0d 2a  	mov	w15, w13
   84718: 6f 1c 18 33  	bfi	w15, w3, #8, #8
   8471c: ee 3d 10 33  	bfi	w14, w15, #16, #16
   84720: 6c 15 00 39  	strb	w12, [x11, #5]
   84724: 6c 21 00 91  	add	x12, x11, #8
   84728: 72 09 00 39  	strb	w18, [x11, #2]
   8472c: 71 0d 00 39  	strb	w17, [x11, #3]
   84730: 70 01 00 39  	strb	w16, [x11]
   84734: 6e 4d 00 38  	strb	w14, [x11, #4]!
   84738: 4a 21 00 b1  	adds	x10, x10, #8
   8473c: 6d 09 00 39  	strb	w13, [x11, #2]
   84740: 63 0d 00 39  	strb	w3, [x11, #3]
   84744: 29 21 00 91  	add	x9, x9, #8
   84748: eb 03 0c aa  	mov	x11, x12
   8474c: e1 fc ff 54  	b.ne	0x846e8 <memcpy+0x2d8>
   84750: 1f 01 02 eb  	cmp	x8, x2
   84754: 20 e8 ff 54  	b.eq	0x84458 <memcpy+0x48>
   84758: 39 ff ff 17  	b	0x8443c <memcpy+0x2c>

000000000008475c <memset>:
   8475c: ff 83 00 d1  	sub	sp, sp, #32
   84760: 02 0e 00 b4  	cbz	x2, 0x84920 <memset+0x1c4>
   84764: 5f 10 00 f1  	cmp	x2, #4
   84768: 62 00 00 54  	b.hs	0x84774 <memset+0x18>
   8476c: e8 03 1f aa  	mov	x8, xzr
   84770: 67 00 00 14  	b	0x8490c <memset+0x1b0>
   84774: 5f 80 00 f1  	cmp	x2, #32
   84778: 62 00 00 54  	b.hs	0x84784 <memset+0x28>
   8477c: e8 03 1f aa  	mov	x8, xzr
   84780: 52 00 00 14  	b	0x848c8 <memset+0x16c>
   84784: 48 e8 7b 92  	and	x8, x2, #0xffffffffffffffe0
   84788: 20 0c 01 4e  	dup	v0.16b, w1
   8478c: 09 40 00 91  	add	x9, x0, #16
   84790: ea 03 08 aa  	mov	x10, x8
   84794: e0 07 80 3d  	str	q0, [sp, #16]
   84798: eb 0b 40 f9  	ldr	x11, [sp, #16]
   8479c: ec 03 09 aa  	mov	x12, x9
   847a0: 4a 81 00 f1  	subs	x10, x10, #32
   847a4: 8b 0d 1f 38  	strb	w11, [x12, #-16]!
   847a8: ef 0f 40 f9  	ldr	x15, [sp, #24]
   847ac: 6e fd 58 d3  	lsr	x14, x11, #24
   847b0: 6d fd 68 d3  	lsr	x13, x11, #40
   847b4: 8e 0d 00 39  	strb	w14, [x12, #3]
   847b8: 6e fd 48 d3  	lsr	x14, x11, #8
   847bc: 2d 51 1f 38  	sturb	w13, [x9, #-11]
   847c0: 6d fd 50 d3  	lsr	x13, x11, #16
   847c4: 2e 11 1f 38  	sturb	w14, [x9, #-15]
   847c8: ee fd 68 d3  	lsr	x14, x15, #40
   847cc: 8d 09 00 39  	strb	w13, [x12, #2]
   847d0: ed 03 0c aa  	mov	x13, x12
   847d4: 8e 35 00 39  	strb	w14, [x12, #13]
   847d8: ee fd 48 d3  	lsr	x14, x15, #8
   847dc: af 8d 00 38  	strb	w15, [x13, #8]!
   847e0: 8e 25 00 39  	strb	w14, [x12, #9]
   847e4: ee fd 58 d3  	lsr	x14, x15, #24
   847e8: ae 0d 00 39  	strb	w14, [x13, #3]
   847ec: ee fd 50 d3  	lsr	x14, x15, #16
   847f0: ae 09 00 39  	strb	w14, [x13, #2]
   847f4: 6e fd 60 d3  	lsr	x14, x11, #32
   847f8: 8e 4d 00 38  	strb	w14, [x12, #4]!
   847fc: ee fd 60 d3  	lsr	x14, x15, #32
   84800: ae 4d 00 38  	strb	w14, [x13, #4]!
   84804: 6e fd 78 d3  	lsr	x14, x11, #56
   84808: 6b fd 70 d3  	lsr	x11, x11, #48
   8480c: 8e 0d 00 39  	strb	w14, [x12, #3]
   84810: ee fd 78 d3  	lsr	x14, x15, #56
   84814: ef fd 70 d3  	lsr	x15, x15, #48
   84818: 8b 09 00 39  	strb	w11, [x12, #2]
   8481c: ae 0d 00 39  	strb	w14, [x13, #3]
   84820: af 09 00 39  	strb	w15, [x13, #2]
   84824: e0 03 80 3d  	str	q0, [sp]
   84828: eb 03 40 f9  	ldr	x11, [sp]
   8482c: ec 03 09 aa  	mov	x12, x9
   84830: 2d 81 00 91  	add	x13, x9, #32
   84834: 2b 01 00 39  	strb	w11, [x9]
   84838: 6e fd 68 d3  	lsr	x14, x11, #40
   8483c: ef 07 40 f9  	ldr	x15, [sp, #8]
   84840: 2e 15 00 39  	strb	w14, [x9, #5]
   84844: 6e fd 58 d3  	lsr	x14, x11, #24
   84848: 2e 0d 00 39  	strb	w14, [x9, #3]
   8484c: 6e fd 50 d3  	lsr	x14, x11, #16
   84850: 2e 09 00 39  	strb	w14, [x9, #2]
   84854: 6e fd 48 d3  	lsr	x14, x11, #8
   84858: 2e 05 00 39  	strb	w14, [x9, #1]
   8485c: ee fd 68 d3  	lsr	x14, x15, #40
   84860: 8f 8d 00 38  	strb	w15, [x12, #8]!
   84864: 2e 35 00 39  	strb	w14, [x9, #13]
   84868: ee fd 58 d3  	lsr	x14, x15, #24
   8486c: 8e 0d 00 39  	strb	w14, [x12, #3]
   84870: ee fd 50 d3  	lsr	x14, x15, #16
   84874: 8e 09 00 39  	strb	w14, [x12, #2]
   84878: ee fd 48 d3  	lsr	x14, x15, #8
   8487c: 2e 25 00 39  	strb	w14, [x9, #9]
   84880: ee fd 60 d3  	lsr	x14, x15, #32
   84884: 8e 4d 00 38  	strb	w14, [x12, #4]!
   84888: 6e fd 60 d3  	lsr	x14, x11, #32
   8488c: 2e 4d 00 38  	strb	w14, [x9, #4]!
   84890: ee fd 78 d3  	lsr	x14, x15, #56
   84894: 8e 0d 00 39  	strb	w14, [x12, #3]
   84898: 6e fd 78 d3  	lsr	x14, x11, #56
   8489c: 6b fd 70 d3  	lsr	x11, x11, #48
   848a0: ef fd 70 d3  	lsr	x15, x15, #48
   848a4: 2e 0d 00 39  	strb	w14, [x9, #3]
   848a8: 2b 09 00 39  	strb	w11, [x9, #2]
   848ac: e9 03 0d aa  	mov	x9, x13
   848b0: 8f 09 00 39  	strb	w15, [x12, #2]
   848b4: 01 f7 ff 54  	b.ne	0x84794 <memset+0x38>
   848b8: 1f 01 02 eb  	cmp	x8, x2
   848bc: 20 03 00 54  	b.eq	0x84920 <memset+0x1c4>
   848c0: 5f 08 7e f2  	tst	x2, #0x1c
   848c4: 40 02 00 54  	b.eq	0x8490c <memset+0x1b0>
   848c8: ea 03 08 aa  	mov	x10, x8
   848cc: 48 f4 7e 92  	and	x8, x2, #0xfffffffffffffffc
   848d0: 20 0c 02 0e  	dup	v0.4h, w1
   848d4: 09 00 0a 8b  	add	x9, x0, x10
   848d8: 4a 01 08 cb  	sub	x10, x10, x8
   848dc: 0b 3c 0e 0e  	umov	w11, v0.h[3]
   848e0: 0c 3c 0a 0e  	umov	w12, v0.h[2]
   848e4: 0d 3c 06 0e  	umov	w13, v0.h[1]
   848e8: 0e 3c 02 0e  	umov	w14, v0.h[0]
   848ec: 2b 0d 00 39  	strb	w11, [x9, #3]
   848f0: 2c 09 00 39  	strb	w12, [x9, #2]
   848f4: 2d 05 00 39  	strb	w13, [x9, #1]
   848f8: 2e 45 00 38  	strb	w14, [x9], #4
   848fc: 4a 11 00 b1  	adds	x10, x10, #4
   84900: 61 ff ff 54  	b.ne	0x848ec <memset+0x190>
   84904: 1f 01 02 eb  	cmp	x8, x2
   84908: c0 00 00 54  	b.eq	0x84920 <memset+0x1c4>
   8490c: 49 00 08 cb  	sub	x9, x2, x8
   84910: 08 00 08 8b  	add	x8, x0, x8
   84914: 29 05 00 f1  	subs	x9, x9, #1
   84918: 01 15 00 38  	strb	w1, [x8], #1
   8491c: c1 ff ff 54  	b.ne	0x84914 <memset+0x1b8>
   84920: ff 83 00 91  	add	sp, sp, #32
   84924: c0 03 5f d6  	ret

Disassembly of section .int_vec:

0000000000085000 <int_sync_sp0>:
   85000: e0 07 bf a9  	stp	x0, x1, [sp, #-16]!
   85004: e2 0f bf a9  	stp	x2, x3, [sp, #-16]!
   85008: e4 17 bf a9  	stp	x4, x5, [sp, #-16]!
   8500c: e6 1f bf a9  	stp	x6, x7, [sp, #-16]!
   85010: e8 27 bf a9  	stp	x8, x9, [sp, #-16]!
   85014: ea 2f bf a9  	stp	x10, x11, [sp, #-16]!
   85018: ec 37 bf a9  	stp	x12, x13, [sp, #-16]!
   8501c: ee 3f bf a9  	stp	x14, x15, [sp, #-16]!
   85020: f0 47 bf a9  	stp	x16, x17, [sp, #-16]!
   85024: f2 4f bf a9  	stp	x18, x19, [sp, #-16]!
   85028: fd 7b bf a9  	stp	x29, x30, [sp, #-16]!
   8502c: 01 ec ff 97  	bl	0x80030 <interrupt_handler>
   85030: fd 7b c1 a8  	ldp	x29, x30, [sp], #16
   85034: f2 4f c1 a8  	ldp	x18, x19, [sp], #16
   85038: f0 47 c1 a8  	ldp	x16, x17, [sp], #16
   8503c: ee 3f c1 a8  	ldp	x14, x15, [sp], #16
   85040: ec 37 c1 a8  	ldp	x12, x13, [sp], #16
   85044: ea 2f c1 a8  	ldp	x10, x11, [sp], #16
   85048: e8 27 c1 a8  	ldp	x8, x9, [sp], #16
   8504c: e6 1f c1 a8  	ldp	x6, x7, [sp], #16
   85050: e4 17 c1 a8  	ldp	x4, x5, [sp], #16
   85054: e2 0f c1 a8  	ldp	x2, x3, [sp], #16
   85058: e0 07 c1 a8  	ldp	x0, x1, [sp], #16
   8505c: e0 03 9f d6  	eret
   85060: 20 00 20 d4  	brk	#0x1
		...

0000000000085080 <int_irq_sp0>:
   85080: e0 07 bf a9  	stp	x0, x1, [sp, #-16]!
   85084: e2 0f bf a9  	stp	x2, x3, [sp, #-16]!
   85088: e4 17 bf a9  	stp	x4, x5, [sp, #-16]!
   8508c: e6 1f bf a9  	stp	x6, x7, [sp, #-16]!
   85090: e8 27 bf a9  	stp	x8, x9, [sp, #-16]!
   85094: ea 2f bf a9  	stp	x10, x11, [sp, #-16]!
   85098: ec 37 bf a9  	stp	x12, x13, [sp, #-16]!
   8509c: ee 3f bf a9  	stp	x14, x15, [sp, #-16]!
   850a0: f0 47 bf a9  	stp	x16, x17, [sp, #-16]!
   850a4: f2 4f bf a9  	stp	x18, x19, [sp, #-16]!
   850a8: fd 7b bf a9  	stp	x29, x30, [sp, #-16]!
   850ac: e1 eb ff 97  	bl	0x80030 <interrupt_handler>
   850b0: fd 7b c1 a8  	ldp	x29, x30, [sp], #16
   850b4: f2 4f c1 a8  	ldp	x18, x19, [sp], #16
   850b8: f0 47 c1 a8  	ldp	x16, x17, [sp], #16
   850bc: ee 3f c1 a8  	ldp	x14, x15, [sp], #16
   850c0: ec 37 c1 a8  	ldp	x12, x13, [sp], #16
   850c4: ea 2f c1 a8  	ldp	x10, x11, [sp], #16
   850c8: e8 27 c1 a8  	ldp	x8, x9, [sp], #16
   850cc: e6 1f c1 a8  	ldp	x6, x7, [sp], #16
   850d0: e4 17 c1 a8  	ldp	x4, x5, [sp], #16
   850d4: e2 0f c1 a8  	ldp	x2, x3, [sp], #16
   850d8: e0 07 c1 a8  	ldp	x0, x1, [sp], #16
   850dc: e0 03 9f d6  	eret
   850e0: 20 00 20 d4  	brk	#0x1
		...

0000000000085100 <int_fiq_sp0>:
   85100: e0 07 bf a9  	stp	x0, x1, [sp, #-16]!
   85104: e2 0f bf a9  	stp	x2, x3, [sp, #-16]!
   85108: e4 17 bf a9  	stp	x4, x5, [sp, #-16]!
   8510c: e6 1f bf a9  	stp	x6, x7, [sp, #-16]!
   85110: e8 27 bf a9  	stp	x8, x9, [sp, #-16]!
   85114: ea 2f bf a9  	stp	x10, x11, [sp, #-16]!
   85118: ec 37 bf a9  	stp	x12, x13, [sp, #-16]!
   8511c: ee 3f bf a9  	stp	x14, x15, [sp, #-16]!
   85120: f0 47 bf a9  	stp	x16, x17, [sp, #-16]!
   85124: f2 4f bf a9  	stp	x18, x19, [sp, #-16]!
   85128: fd 7b bf a9  	stp	x29, x30, [sp, #-16]!
   8512c: c1 eb ff 97  	bl	0x80030 <interrupt_handler>
   85130: fd 7b c1 a8  	ldp	x29, x30, [sp], #16
   85134: f2 4f c1 a8  	ldp	x18, x19, [sp], #16
   85138: f0 47 c1 a8  	ldp	x16, x17, [sp], #16
   8513c: ee 3f c1 a8  	ldp	x14, x15, [sp], #16
   85140: ec 37 c1 a8  	ldp	x12, x13, [sp], #16
   85144: ea 2f c1 a8  	ldp	x10, x11, [sp], #16
   85148: e8 27 c1 a8  	ldp	x8, x9, [sp], #16
   8514c: e6 1f c1 a8  	ldp	x6, x7, [sp], #16
   85150: e4 17 c1 a8  	ldp	x4, x5, [sp], #16
   85154: e2 0f c1 a8  	ldp	x2, x3, [sp], #16
   85158: e0 07 c1 a8  	ldp	x0, x1, [sp], #16
   8515c: e0 03 9f d6  	eret
   85160: 20 00 20 d4  	brk	#0x1
		...

0000000000085180 <int_serr_sp0>:
   85180: e0 07 bf a9  	stp	x0, x1, [sp, #-16]!
   85184: e2 0f bf a9  	stp	x2, x3, [sp, #-16]!
   85188: e4 17 bf a9  	stp	x4, x5, [sp, #-16]!
   8518c: e6 1f bf a9  	stp	x6, x7, [sp, #-16]!
   85190: e8 27 bf a9  	stp	x8, x9, [sp, #-16]!
   85194: ea 2f bf a9  	stp	x10, x11, [sp, #-16]!
   85198: ec 37 bf a9  	stp	x12, x13, [sp, #-16]!
   8519c: ee 3f bf a9  	stp	x14, x15, [sp, #-16]!
   851a0: f0 47 bf a9  	stp	x16, x17, [sp, #-16]!
   851a4: f2 4f bf a9  	stp	x18, x19, [sp, #-16]!
   851a8: fd 7b bf a9  	stp	x29, x30, [sp, #-16]!
   851ac: a1 eb ff 97  	bl	0x80030 <interrupt_handler>
   851b0: fd 7b c1 a8  	ldp	x29, x30, [sp], #16
   851b4: f2 4f c1 a8  	ldp	x18, x19, [sp], #16
   851b8: f0 47 c1 a8  	ldp	x16, x17, [sp], #16
   851bc: ee 3f c1 a8  	ldp	x14, x15, [sp], #16
   851c0: ec 37 c1 a8  	ldp	x12, x13, [sp], #16
   851c4: ea 2f c1 a8  	ldp	x10, x11, [sp], #16
   851c8: e8 27 c1 a8  	ldp	x8, x9, [sp], #16
   851cc: e6 1f c1 a8  	ldp	x6, x7, [sp], #16
   851d0: e4 17 c1 a8  	ldp	x4, x5, [sp], #16
   851d4: e2 0f c1 a8  	ldp	x2, x3, [sp], #16
   851d8: e0 07 c1 a8  	ldp	x0, x1, [sp], #16
   851dc: e0 03 9f d6  	eret
   851e0: 20 00 20 d4  	brk	#0x1
		...

0000000000085200 <int_sync_spx>:
   85200: e0 07 bf a9  	stp	x0, x1, [sp, #-16]!
   85204: e2 0f bf a9  	stp	x2, x3, [sp, #-16]!
   85208: e4 17 bf a9  	stp	x4, x5, [sp, #-16]!
   8520c: e6 1f bf a9  	stp	x6, x7, [sp, #-16]!
   85210: e8 27 bf a9  	stp	x8, x9, [sp, #-16]!
   85214: ea 2f bf a9  	stp	x10, x11, [sp, #-16]!
   85218: ec 37 bf a9  	stp	x12, x13, [sp, #-16]!
   8521c: ee 3f bf a9  	stp	x14, x15, [sp, #-16]!
   85220: f0 47 bf a9  	stp	x16, x17, [sp, #-16]!
   85224: f2 4f bf a9  	stp	x18, x19, [sp, #-16]!
   85228: fd 7b bf a9  	stp	x29, x30, [sp, #-16]!
   8522c: 81 eb ff 97  	bl	0x80030 <interrupt_handler>
   85230: fd 7b c1 a8  	ldp	x29, x30, [sp], #16
   85234: f2 4f c1 a8  	ldp	x18, x19, [sp], #16
   85238: f0 47 c1 a8  	ldp	x16, x17, [sp], #16
   8523c: ee 3f c1 a8  	ldp	x14, x15, [sp], #16
   85240: ec 37 c1 a8  	ldp	x12, x13, [sp], #16
   85244: ea 2f c1 a8  	ldp	x10, x11, [sp], #16
   85248: e8 27 c1 a8  	ldp	x8, x9, [sp], #16
   8524c: e6 1f c1 a8  	ldp	x6, x7, [sp], #16
   85250: e4 17 c1 a8  	ldp	x4, x5, [sp], #16
   85254: e2 0f c1 a8  	ldp	x2, x3, [sp], #16
   85258: e0 07 c1 a8  	ldp	x0, x1, [sp], #16
   8525c: e0 03 9f d6  	eret
   85260: 20 00 20 d4  	brk	#0x1
		...

0000000000085280 <int_irq_spx>:
   85280: e0 07 bf a9  	stp	x0, x1, [sp, #-16]!
   85284: e2 0f bf a9  	stp	x2, x3, [sp, #-16]!
   85288: e4 17 bf a9  	stp	x4, x5, [sp, #-16]!
   8528c: e6 1f bf a9  	stp	x6, x7, [sp, #-16]!
   85290: e8 27 bf a9  	stp	x8, x9, [sp, #-16]!
   85294: ea 2f bf a9  	stp	x10, x11, [sp, #-16]!
   85298: ec 37 bf a9  	stp	x12, x13, [sp, #-16]!
   8529c: ee 3f bf a9  	stp	x14, x15, [sp, #-16]!
   852a0: f0 47 bf a9  	stp	x16, x17, [sp, #-16]!
   852a4: f2 4f bf a9  	stp	x18, x19, [sp, #-16]!
   852a8: fd 7b bf a9  	stp	x29, x30, [sp, #-16]!
   852ac: 61 eb ff 97  	bl	0x80030 <interrupt_handler>
   852b0: fd 7b c1 a8  	ldp	x29, x30, [sp], #16
   852b4: f2 4f c1 a8  	ldp	x18, x19, [sp], #16
   852b8: f0 47 c1 a8  	ldp	x16, x17, [sp], #16
   852bc: ee 3f c1 a8  	ldp	x14, x15, [sp], #16
   852c0: ec 37 c1 a8  	ldp	x12, x13, [sp], #16
   852c4: ea 2f c1 a8  	ldp	x10, x11, [sp], #16
   852c8: e8 27 c1 a8  	ldp	x8, x9, [sp], #16
   852cc: e6 1f c1 a8  	ldp	x6, x7, [sp], #16
   852d0: e4 17 c1 a8  	ldp	x4, x5, [sp], #16
   852d4: e2 0f c1 a8  	ldp	x2, x3, [sp], #16
   852d8: e0 07 c1 a8  	ldp	x0, x1, [sp], #16
   852dc: e0 03 9f d6  	eret
   852e0: 20 00 20 d4  	brk	#0x1
		...

0000000000085300 <int_fiq_spx>:
   85300: e0 07 bf a9  	stp	x0, x1, [sp, #-16]!
   85304: e2 0f bf a9  	stp	x2, x3, [sp, #-16]!
   85308: e4 17 bf a9  	stp	x4, x5, [sp, #-16]!
   8530c: e6 1f bf a9  	stp	x6, x7, [sp, #-16]!
   85310: e8 27 bf a9  	stp	x8, x9, [sp, #-16]!
   85314: ea 2f bf a9  	stp	x10, x11, [sp, #-16]!
   85318: ec 37 bf a9  	stp	x12, x13, [sp, #-16]!
   8531c: ee 3f bf a9  	stp	x14, x15, [sp, #-16]!
   85320: f0 47 bf a9  	stp	x16, x17, [sp, #-16]!
   85324: f2 4f bf a9  	stp	x18, x19, [sp, #-16]!
   85328: fd 7b bf a9  	stp	x29, x30, [sp, #-16]!
   8532c: 41 eb ff 97  	bl	0x80030 <interrupt_handler>
   85330: fd 7b c1 a8  	ldp	x29, x30, [sp], #16
   85334: f2 4f c1 a8  	ldp	x18, x19, [sp], #16
   85338: f0 47 c1 a8  	ldp	x16, x17, [sp], #16
   8533c: ee 3f c1 a8  	ldp	x14, x15, [sp], #16
   85340: ec 37 c1 a8  	ldp	x12, x13, [sp], #16
   85344: ea 2f c1 a8  	ldp	x10, x11, [sp], #16
   85348: e8 27 c1 a8  	ldp	x8, x9, [sp], #16
   8534c: e6 1f c1 a8  	ldp	x6, x7, [sp], #16
   85350: e4 17 c1 a8  	ldp	x4, x5, [sp], #16
   85354: e2 0f c1 a8  	ldp	x2, x3, [sp], #16
   85358: e0 07 c1 a8  	ldp	x0, x1, [sp], #16
   8535c: e0 03 9f d6  	eret
   85360: 20 00 20 d4  	brk	#0x1
		...

0000000000085380 <int_serr_spx>:
   85380: e0 07 bf a9  	stp	x0, x1, [sp, #-16]!
   85384: e2 0f bf a9  	stp	x2, x3, [sp, #-16]!
   85388: e4 17 bf a9  	stp	x4, x5, [sp, #-16]!
   8538c: e6 1f bf a9  	stp	x6, x7, [sp, #-16]!
   85390: e8 27 bf a9  	stp	x8, x9, [sp, #-16]!
   85394: ea 2f bf a9  	stp	x10, x11, [sp, #-16]!
   85398: ec 37 bf a9  	stp	x12, x13, [sp, #-16]!
   8539c: ee 3f bf a9  	stp	x14, x15, [sp, #-16]!
   853a0: f0 47 bf a9  	stp	x16, x17, [sp, #-16]!
   853a4: f2 4f bf a9  	stp	x18, x19, [sp, #-16]!
   853a8: fd 7b bf a9  	stp	x29, x30, [sp, #-16]!
   853ac: 21 eb ff 97  	bl	0x80030 <interrupt_handler>
   853b0: fd 7b c1 a8  	ldp	x29, x30, [sp], #16
   853b4: f2 4f c1 a8  	ldp	x18, x19, [sp], #16
   853b8: f0 47 c1 a8  	ldp	x16, x17, [sp], #16
   853bc: ee 3f c1 a8  	ldp	x14, x15, [sp], #16
   853c0: ec 37 c1 a8  	ldp	x12, x13, [sp], #16
   853c4: ea 2f c1 a8  	ldp	x10, x11, [sp], #16
   853c8: e8 27 c1 a8  	ldp	x8, x9, [sp], #16
   853cc: e6 1f c1 a8  	ldp	x6, x7, [sp], #16
   853d0: e4 17 c1 a8  	ldp	x4, x5, [sp], #16
   853d4: e2 0f c1 a8  	ldp	x2, x3, [sp], #16
   853d8: e0 07 c1 a8  	ldp	x0, x1, [sp], #16
   853dc: e0 03 9f d6  	eret
   853e0: 20 00 20 d4  	brk	#0x1
		...

0000000000085400 <int_sync_lel64>:
   85400: e0 07 bf a9  	stp	x0, x1, [sp, #-16]!
   85404: e2 0f bf a9  	stp	x2, x3, [sp, #-16]!
   85408: e4 17 bf a9  	stp	x4, x5, [sp, #-16]!
   8540c: e6 1f bf a9  	stp	x6, x7, [sp, #-16]!
   85410: e8 27 bf a9  	stp	x8, x9, [sp, #-16]!
   85414: ea 2f bf a9  	stp	x10, x11, [sp, #-16]!
   85418: ec 37 bf a9  	stp	x12, x13, [sp, #-16]!
   8541c: ee 3f bf a9  	stp	x14, x15, [sp, #-16]!
   85420: f0 47 bf a9  	stp	x16, x17, [sp, #-16]!
   85424: f2 4f bf a9  	stp	x18, x19, [sp, #-16]!
   85428: fd 7b bf a9  	stp	x29, x30, [sp, #-16]!
   8542c: 01 eb ff 97  	bl	0x80030 <interrupt_handler>
   85430: fd 7b c1 a8  	ldp	x29, x30, [sp], #16
   85434: f2 4f c1 a8  	ldp	x18, x19, [sp], #16
   85438: f0 47 c1 a8  	ldp	x16, x17, [sp], #16
   8543c: ee 3f c1 a8  	ldp	x14, x15, [sp], #16
   85440: ec 37 c1 a8  	ldp	x12, x13, [sp], #16
   85444: ea 2f c1 a8  	ldp	x10, x11, [sp], #16
   85448: e8 27 c1 a8  	ldp	x8, x9, [sp], #16
   8544c: e6 1f c1 a8  	ldp	x6, x7, [sp], #16
   85450: e4 17 c1 a8  	ldp	x4, x5, [sp], #16
   85454: e2 0f c1 a8  	ldp	x2, x3, [sp], #16
   85458: e0 07 c1 a8  	ldp	x0, x1, [sp], #16
   8545c: e0 03 9f d6  	eret
   85460: 20 00 20 d4  	brk	#0x1
		...

0000000000085480 <int_irq_lel64>:
   85480: e0 07 bf a9  	stp	x0, x1, [sp, #-16]!
   85484: e2 0f bf a9  	stp	x2, x3, [sp, #-16]!
   85488: e4 17 bf a9  	stp	x4, x5, [sp, #-16]!
   8548c: e6 1f bf a9  	stp	x6, x7, [sp, #-16]!
   85490: e8 27 bf a9  	stp	x8, x9, [sp, #-16]!
   85494: ea 2f bf a9  	stp	x10, x11, [sp, #-16]!
   85498: ec 37 bf a9  	stp	x12, x13, [sp, #-16]!
   8549c: ee 3f bf a9  	stp	x14, x15, [sp, #-16]!
   854a0: f0 47 bf a9  	stp	x16, x17, [sp, #-16]!
   854a4: f2 4f bf a9  	stp	x18, x19, [sp, #-16]!
   854a8: fd 7b bf a9  	stp	x29, x30, [sp, #-16]!
   854ac: e1 ea ff 97  	bl	0x80030 <interrupt_handler>
   854b0: fd 7b c1 a8  	ldp	x29, x30, [sp], #16
   854b4: f2 4f c1 a8  	ldp	x18, x19, [sp], #16
   854b8: f0 47 c1 a8  	ldp	x16, x17, [sp], #16
   854bc: ee 3f c1 a8  	ldp	x14, x15, [sp], #16
   854c0: ec 37 c1 a8  	ldp	x12, x13, [sp], #16
   854c4: ea 2f c1 a8  	ldp	x10, x11, [sp], #16
   854c8: e8 27 c1 a8  	ldp	x8, x9, [sp], #16
   854cc: e6 1f c1 a8  	ldp	x6, x7, [sp], #16
   854d0: e4 17 c1 a8  	ldp	x4, x5, [sp], #16
   854d4: e2 0f c1 a8  	ldp	x2, x3, [sp], #16
   854d8: e0 07 c1 a8  	ldp	x0, x1, [sp], #16
   854dc: e0 03 9f d6  	eret
   854e0: 20 00 20 d4  	brk	#0x1
		...

0000000000085500 <int_fiq_lel64>:
   85500: e0 07 bf a9  	stp	x0, x1, [sp, #-16]!
   85504: e2 0f bf a9  	stp	x2, x3, [sp, #-16]!
   85508: e4 17 bf a9  	stp	x4, x5, [sp, #-16]!
   8550c: e6 1f bf a9  	stp	x6, x7, [sp, #-16]!
   85510: e8 27 bf a9  	stp	x8, x9, [sp, #-16]!
   85514: ea 2f bf a9  	stp	x10, x11, [sp, #-16]!
   85518: ec 37 bf a9  	stp	x12, x13, [sp, #-16]!
   8551c: ee 3f bf a9  	stp	x14, x15, [sp, #-16]!
   85520: f0 47 bf a9  	stp	x16, x17, [sp, #-16]!
   85524: f2 4f bf a9  	stp	x18, x19, [sp, #-16]!
   85528: fd 7b bf a9  	stp	x29, x30, [sp, #-16]!
   8552c: c1 ea ff 97  	bl	0x80030 <interrupt_handler>
   85530: fd 7b c1 a8  	ldp	x29, x30, [sp], #16
   85534: f2 4f c1 a8  	ldp	x18, x19, [sp], #16
   85538: f0 47 c1 a8  	ldp	x16, x17, [sp], #16
   8553c: ee 3f c1 a8  	ldp	x14, x15, [sp], #16
   85540: ec 37 c1 a8  	ldp	x12, x13, [sp], #16
   85544: ea 2f c1 a8  	ldp	x10, x11, [sp], #16
   85548: e8 27 c1 a8  	ldp	x8, x9, [sp], #16
   8554c: e6 1f c1 a8  	ldp	x6, x7, [sp], #16
   85550: e4 17 c1 a8  	ldp	x4, x5, [sp], #16
   85554: e2 0f c1 a8  	ldp	x2, x3, [sp], #16
   85558: e0 07 c1 a8  	ldp	x0, x1, [sp], #16
   8555c: e0 03 9f d6  	eret
   85560: 20 00 20 d4  	brk	#0x1
		...

0000000000085580 <int_serr_lel64>:
   85580: e0 07 bf a9  	stp	x0, x1, [sp, #-16]!
   85584: e2 0f bf a9  	stp	x2, x3, [sp, #-16]!
   85588: e4 17 bf a9  	stp	x4, x5, [sp, #-16]!
   8558c: e6 1f bf a9  	stp	x6, x7, [sp, #-16]!
   85590: e8 27 bf a9  	stp	x8, x9, [sp, #-16]!
   85594: ea 2f bf a9  	stp	x10, x11, [sp, #-16]!
   85598: ec 37 bf a9  	stp	x12, x13, [sp, #-16]!
   8559c: ee 3f bf a9  	stp	x14, x15, [sp, #-16]!
   855a0: f0 47 bf a9  	stp	x16, x17, [sp, #-16]!
   855a4: f2 4f bf a9  	stp	x18, x19, [sp, #-16]!
   855a8: fd 7b bf a9  	stp	x29, x30, [sp, #-16]!
   855ac: a1 ea ff 97  	bl	0x80030 <interrupt_handler>
   855b0: fd 7b c1 a8  	ldp	x29, x30, [sp], #16
   855b4: f2 4f c1 a8  	ldp	x18, x19, [sp], #16
   855b8: f0 47 c1 a8  	ldp	x16, x17, [sp], #16
   855bc: ee 3f c1 a8  	ldp	x14, x15, [sp], #16
   855c0: ec 37 c1 a8  	ldp	x12, x13, [sp], #16
   855c4: ea 2f c1 a8  	ldp	x10, x11, [sp], #16
   855c8: e8 27 c1 a8  	ldp	x8, x9, [sp], #16
   855cc: e6 1f c1 a8  	ldp	x6, x7, [sp], #16
   855d0: e4 17 c1 a8  	ldp	x4, x5, [sp], #16
   855d4: e2 0f c1 a8  	ldp	x2, x3, [sp], #16
   855d8: e0 07 c1 a8  	ldp	x0, x1, [sp], #16
   855dc: e0 03 9f d6  	eret
   855e0: 20 00 20 d4  	brk	#0x1
		...

0000000000085600 <int_sync_lel32>:
   85600: e0 07 bf a9  	stp	x0, x1, [sp, #-16]!
   85604: e2 0f bf a9  	stp	x2, x3, [sp, #-16]!
   85608: e4 17 bf a9  	stp	x4, x5, [sp, #-16]!
   8560c: e6 1f bf a9  	stp	x6, x7, [sp, #-16]!
   85610: e8 27 bf a9  	stp	x8, x9, [sp, #-16]!
   85614: ea 2f bf a9  	stp	x10, x11, [sp, #-16]!
   85618: ec 37 bf a9  	stp	x12, x13, [sp, #-16]!
   8561c: ee 3f bf a9  	stp	x14, x15, [sp, #-16]!
   85620: f0 47 bf a9  	stp	x16, x17, [sp, #-16]!
   85624: f2 4f bf a9  	stp	x18, x19, [sp, #-16]!
   85628: fd 7b bf a9  	stp	x29, x30, [sp, #-16]!
   8562c: 81 ea ff 97  	bl	0x80030 <interrupt_handler>
   85630: fd 7b c1 a8  	ldp	x29, x30, [sp], #16
   85634: f2 4f c1 a8  	ldp	x18, x19, [sp], #16
   85638: f0 47 c1 a8  	ldp	x16, x17, [sp], #16
   8563c: ee 3f c1 a8  	ldp	x14, x15, [sp], #16
   85640: ec 37 c1 a8  	ldp	x12, x13, [sp], #16
   85644: ea 2f c1 a8  	ldp	x10, x11, [sp], #16
   85648: e8 27 c1 a8  	ldp	x8, x9, [sp], #16
   8564c: e6 1f c1 a8  	ldp	x6, x7, [sp], #16
   85650: e4 17 c1 a8  	ldp	x4, x5, [sp], #16
   85654: e2 0f c1 a8  	ldp	x2, x3, [sp], #16
   85658: e0 07 c1 a8  	ldp	x0, x1, [sp], #16
   8565c: e0 03 9f d6  	eret
   85660: 20 00 20 d4  	brk	#0x1
		...

0000000000085680 <int_irq_lel32>:
   85680: e0 07 bf a9  	stp	x0, x1, [sp, #-16]!
   85684: e2 0f bf a9  	stp	x2, x3, [sp, #-16]!
   85688: e4 17 bf a9  	stp	x4, x5, [sp, #-16]!
   8568c: e6 1f bf a9  	stp	x6, x7, [sp, #-16]!
   85690: e8 27 bf a9  	stp	x8, x9, [sp, #-16]!
   85694: ea 2f bf a9  	stp	x10, x11, [sp, #-16]!
   85698: ec 37 bf a9  	stp	x12, x13, [sp, #-16]!
   8569c: ee 3f bf a9  	stp	x14, x15, [sp, #-16]!
   856a0: f0 47 bf a9  	stp	x16, x17, [sp, #-16]!
   856a4: f2 4f bf a9  	stp	x18, x19, [sp, #-16]!
   856a8: fd 7b bf a9  	stp	x29, x30, [sp, #-16]!
   856ac: 61 ea ff 97  	bl	0x80030 <interrupt_handler>
   856b0: fd 7b c1 a8  	ldp	x29, x30, [sp], #16
   856b4: f2 4f c1 a8  	ldp	x18, x19, [sp], #16
   856b8: f0 47 c1 a8  	ldp	x16, x17, [sp], #16
   856bc: ee 3f c1 a8  	ldp	x14, x15, [sp], #16
   856c0: ec 37 c1 a8  	ldp	x12, x13, [sp], #16
   856c4: ea 2f c1 a8  	ldp	x10, x11, [sp], #16
   856c8: e8 27 c1 a8  	ldp	x8, x9, [sp], #16
   856cc: e6 1f c1 a8  	ldp	x6, x7, [sp], #16
   856d0: e4 17 c1 a8  	ldp	x4, x5, [sp], #16
   856d4: e2 0f c1 a8  	ldp	x2, x3, [sp], #16
   856d8: e0 07 c1 a8  	ldp	x0, x1, [sp], #16
   856dc: e0 03 9f d6  	eret
   856e0: 20 00 20 d4  	brk	#0x1
		...

0000000000085700 <int_fiq_lel32>:
   85700: e0 07 bf a9  	stp	x0, x1, [sp, #-16]!
   85704: e2 0f bf a9  	stp	x2, x3, [sp, #-16]!
   85708: e4 17 bf a9  	stp	x4, x5, [sp, #-16]!
   8570c: e6 1f bf a9  	stp	x6, x7, [sp, #-16]!
   85710: e8 27 bf a9  	stp	x8, x9, [sp, #-16]!
   85714: ea 2f bf a9  	stp	x10, x11, [sp, #-16]!
   85718: ec 37 bf a9  	stp	x12, x13, [sp, #-16]!
   8571c: ee 3f bf a9  	stp	x14, x15, [sp, #-16]!
   85720: f0 47 bf a9  	stp	x16, x17, [sp, #-16]!
   85724: f2 4f bf a9  	stp	x18, x19, [sp, #-16]!
   85728: fd 7b bf a9  	stp	x29, x30, [sp, #-16]!
   8572c: 41 ea ff 97  	bl	0x80030 <interrupt_handler>
   85730: fd 7b c1 a8  	ldp	x29, x30, [sp], #16
   85734: f2 4f c1 a8  	ldp	x18, x19, [sp], #16
   85738: f0 47 c1 a8  	ldp	x16, x17, [sp], #16
   8573c: ee 3f c1 a8  	ldp	x14, x15, [sp], #16
   85740: ec 37 c1 a8  	ldp	x12, x13, [sp], #16
   85744: ea 2f c1 a8  	ldp	x10, x11, [sp], #16
   85748: e8 27 c1 a8  	ldp	x8, x9, [sp], #16
   8574c: e6 1f c1 a8  	ldp	x6, x7, [sp], #16
   85750: e4 17 c1 a8  	ldp	x4, x5, [sp], #16
   85754: e2 0f c1 a8  	ldp	x2, x3, [sp], #16
   85758: e0 07 c1 a8  	ldp	x0, x1, [sp], #16
   8575c: e0 03 9f d6  	eret
   85760: 20 00 20 d4  	brk	#0x1
		...

0000000000085780 <int_serr_lel32>:
   85780: e0 07 bf a9  	stp	x0, x1, [sp, #-16]!
   85784: e2 0f bf a9  	stp	x2, x3, [sp, #-16]!
   85788: e4 17 bf a9  	stp	x4, x5, [sp, #-16]!
   8578c: e6 1f bf a9  	stp	x6, x7, [sp, #-16]!
   85790: e8 27 bf a9  	stp	x8, x9, [sp, #-16]!
   85794: ea 2f bf a9  	stp	x10, x11, [sp, #-16]!
   85798: ec 37 bf a9  	stp	x12, x13, [sp, #-16]!
   8579c: ee 3f bf a9  	stp	x14, x15, [sp, #-16]!
   857a0: f0 47 bf a9  	stp	x16, x17, [sp, #-16]!
   857a4: f2 4f bf a9  	stp	x18, x19, [sp, #-16]!
   857a8: fd 7b bf a9  	stp	x29, x30, [sp, #-16]!
   857ac: 21 ea ff 97  	bl	0x80030 <interrupt_handler>
   857b0: fd 7b c1 a8  	ldp	x29, x30, [sp], #16
   857b4: f2 4f c1 a8  	ldp	x18, x19, [sp], #16
   857b8: f0 47 c1 a8  	ldp	x16, x17, [sp], #16
   857bc: ee 3f c1 a8  	ldp	x14, x15, [sp], #16
   857c0: ec 37 c1 a8  	ldp	x12, x13, [sp], #16
   857c4: ea 2f c1 a8  	ldp	x10, x11, [sp], #16
   857c8: e8 27 c1 a8  	ldp	x8, x9, [sp], #16
   857cc: e6 1f c1 a8  	ldp	x6, x7, [sp], #16
   857d0: e4 17 c1 a8  	ldp	x4, x5, [sp], #16
   857d4: e2 0f c1 a8  	ldp	x2, x3, [sp], #16
   857d8: e0 07 c1 a8  	ldp	x0, x1, [sp], #16
   857dc: e0 03 9f d6  	eret
   857e0: 20 00 20 d4  	brk	#0x1
