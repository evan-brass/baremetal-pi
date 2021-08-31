
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
   8001c: a1 03 00 14  	b	0x80ea0 <rust_entry>
   80020: 20 00 20 d4  	brk	#0x1

Disassembly of section .text:

0000000000080028 <_ZN4core3ptr37drop_in_place$LT$core..fmt..Error$GT$17hca62313edb06dc58E>:
   80028: c0 03 5f d6  	ret
   8002c: 00 00 00 00  	udf	#0

0000000000080030 <interrupt_handler>:
   80030: ff 43 02 d1  	sub	sp, sp, #144
   80034: fe 57 07 a9  	stp	x30, x21, [sp, #112]
   80038: f4 4f 08 a9  	stp	x20, x19, [sp, #128]
   8003c: 88 03 80 52  	mov	w8, #28
   80040: 09 00 a4 52  	mov	w9, #536870912
   80044: 08 e4 a7 72  	movk	w8, #16160, lsl #16
   80048: e0 0f 00 b9  	str	w0, [sp, #12]
   8004c: c0 01 80 52  	mov	w0, #14
   80050: 13 0d 8a 52  	mov	w19, #20584
   80054: 33 e4 a7 72  	movk	w19, #16161, lsl #16
   80058: 09 01 00 b9  	str	w9, [x8]
   8005c: 08 52 38 d5  	mrs	x8, ESR_EL1
   80060: 09 60 38 d5  	mrs	x9, FAR_EL1
   80064: 2a 40 38 d5  	mrs	x10, ELR_EL1
   80068: e8 27 01 a9  	stp	x8, x9, [sp, #16]
   8006c: ea 13 00 f9  	str	x10, [sp, #32]
   80070: 24 03 00 94  	bl	0x80d00 <_ZN12baremetal_pi4gpio4Gpio9configure17h4cba8c34a7a1e1eeE>
   80074: e0 01 80 52  	mov	w0, #15
   80078: 22 03 00 94  	bl	0x80d00 <_ZN12baremetal_pi4gpio4Gpio9configure17h4cba8c34a7a1e1eeE>
   8007c: 69 02 40 b9  	ldr	w9, [x19]
   80080: c8 21 80 52  	mov	w8, #270
   80084: 6a 00 80 52  	mov	w10, #3
   80088: 09 3d 00 33  	bfxil	w9, w8, #0, #16
   8008c: c8 12 80 52  	mov	w8, #150
   80090: 69 02 00 b9  	str	w9, [x19]
   80094: 6a 42 1e b8  	stur	w10, [x19, #-28]
   80098: 1f 20 03 d5  	nop
   8009c: 08 05 00 f1  	subs	x8, x8, #1
   800a0: c1 ff ff 54  	b.ne	0x80098 <interrupt_handler+0x68>
   800a4: 68 00 80 52  	mov	w8, #3
   800a8: 0a 00 00 b0  	adrp	x10, 0x81000 <interrupt_handler+0x7c>
   800ac: e9 33 00 91  	add	x9, sp, #12
   800b0: 4a 21 2d 91  	add	x10, x10, #2888
   800b4: 21 00 00 b0  	adrp	x1, 0x85000 <interrupt_handler+0x98>
   800b8: f4 a3 00 91  	add	x20, sp, #40
   800bc: 68 82 1f b8  	stur	w8, [x19, #-8]
   800c0: e8 03 01 91  	add	x8, sp, #64
   800c4: e9 ab 02 a9  	stp	x9, x10, [sp, #40]
   800c8: 29 00 00 90  	adrp	x9, 0x84000 <interrupt_handler+0xa8>
   800cc: 29 81 37 91  	add	x9, x9, #3552
   800d0: 21 a0 0b 91  	add	x1, x1, #744
   800d4: e8 1f 00 f9  	str	x8, [sp, #56]
   800d8: 48 00 80 52  	mov	w8, #2
   800dc: e0 e3 00 91  	add	x0, sp, #56
   800e0: e2 03 01 91  	add	x2, sp, #64
   800e4: ff 7f 05 a9  	stp	xzr, xzr, [sp, #80]
   800e8: f5 03 01 91  	add	x21, sp, #64
   800ec: e9 23 04 a9  	stp	x9, x8, [sp, #64]
   800f0: 28 00 80 52  	mov	w8, #1
   800f4: f4 23 06 a9  	stp	x20, x8, [sp, #96]
   800f8: 04 06 00 94  	bl	0x81908 <_ZN4core3fmt5write17h63775af3066fbce8E>
   800fc: c0 07 00 35  	cbnz	w0, 0x801f4 <interrupt_handler+0x1c4>
   80100: e8 43 00 91  	add	x8, sp, #16
   80104: 29 00 00 90  	adrp	x9, 0x84000 <interrupt_handler+0xe4>
   80108: 29 01 39 91  	add	x9, x9, #3648
   8010c: 13 00 00 90  	adrp	x19, 0x80000 <interrupt_handler+0xdc>
   80110: 21 00 00 b0  	adrp	x1, 0x85000 <interrupt_handler+0xf4>
   80114: 73 a2 3c 91  	add	x19, x19, #3880
   80118: e8 17 00 f9  	str	x8, [sp, #40]
   8011c: 48 00 80 52  	mov	w8, #2
   80120: 21 a0 0b 91  	add	x1, x1, #744
   80124: e0 e3 00 91  	add	x0, sp, #56
   80128: e2 03 01 91  	add	x2, sp, #64
   8012c: f3 57 03 a9  	stp	x19, x21, [sp, #48]
   80130: e9 23 04 a9  	stp	x9, x8, [sp, #64]
   80134: 28 00 80 52  	mov	w8, #1
   80138: ff 7f 05 a9  	stp	xzr, xzr, [sp, #80]
   8013c: f4 23 06 a9  	stp	x20, x8, [sp, #96]
   80140: f4 03 01 91  	add	x20, sp, #64
   80144: f1 05 00 94  	bl	0x81908 <_ZN4core3fmt5write17h63775af3066fbce8E>
   80148: 40 06 00 35  	cbnz	w0, 0x80210 <interrupt_handler+0x1e0>
   8014c: e8 63 00 91  	add	x8, sp, #24
   80150: 29 00 00 90  	adrp	x9, 0x84000 <interrupt_handler+0x130>
   80154: 21 00 00 b0  	adrp	x1, 0x85000 <interrupt_handler+0x138>
   80158: f3 53 03 a9  	stp	x19, x20, [sp, #48]
   8015c: 29 41 3a 91  	add	x9, x9, #3728
   80160: 4a 00 80 52  	mov	w10, #2
   80164: e8 17 00 f9  	str	x8, [sp, #40]
   80168: f4 a3 00 91  	add	x20, sp, #40
   8016c: 28 00 80 52  	mov	w8, #1
   80170: 21 a0 0b 91  	add	x1, x1, #744
   80174: e0 e3 00 91  	add	x0, sp, #56
   80178: e2 03 01 91  	add	x2, sp, #64
   8017c: e9 2b 04 a9  	stp	x9, x10, [sp, #64]
   80180: f5 03 01 91  	add	x21, sp, #64
   80184: ff 7f 05 a9  	stp	xzr, xzr, [sp, #80]
   80188: f4 23 06 a9  	stp	x20, x8, [sp, #96]
   8018c: df 05 00 94  	bl	0x81908 <_ZN4core3fmt5write17h63775af3066fbce8E>
   80190: e0 04 00 35  	cbnz	w0, 0x8022c <interrupt_handler+0x1fc>
   80194: e8 83 00 91  	add	x8, sp, #32
   80198: 29 00 00 90  	adrp	x9, 0x84000 <interrupt_handler+0x178>
   8019c: 21 00 00 b0  	adrp	x1, 0x85000 <interrupt_handler+0x180>
   801a0: 29 21 3b 91  	add	x9, x9, #3784
   801a4: 4a 00 80 52  	mov	w10, #2
   801a8: 21 a0 0b 91  	add	x1, x1, #744
   801ac: e8 17 00 f9  	str	x8, [sp, #40]
   801b0: 28 00 80 52  	mov	w8, #1
   801b4: e0 e3 00 91  	add	x0, sp, #56
   801b8: e2 03 01 91  	add	x2, sp, #64
   801bc: f3 57 03 a9  	stp	x19, x21, [sp, #48]
   801c0: e9 2b 04 a9  	stp	x9, x10, [sp, #64]
   801c4: ff 7f 05 a9  	stp	xzr, xzr, [sp, #80]
   801c8: f4 23 06 a9  	stp	x20, x8, [sp, #96]
   801cc: cf 05 00 94  	bl	0x81908 <_ZN4core3fmt5write17h63775af3066fbce8E>
   801d0: c0 03 00 35  	cbnz	w0, 0x80248 <interrupt_handler+0x218>
   801d4: e8 13 40 f9  	ldr	x8, [sp, #32]
   801d8: 08 11 00 91  	add	x8, x8, #4
   801dc: e8 13 00 f9  	str	x8, [sp, #32]
   801e0: 28 40 18 d5  	msr	ELR_EL1, x8
   801e4: f4 4f 48 a9  	ldp	x20, x19, [sp, #128]
   801e8: fe 57 47 a9  	ldp	x30, x21, [sp, #112]
   801ec: ff 43 02 91  	add	sp, sp, #144
   801f0: c0 03 5f d6  	ret
   801f4: 20 00 00 b0  	adrp	x0, 0x85000 <interrupt_handler+0x1d8>
   801f8: 22 00 00 90  	adrp	x2, 0x84000 <interrupt_handler+0x1d8>
   801fc: 23 00 00 90  	adrp	x3, 0x84000 <interrupt_handler+0x1dc>
   80200: 00 40 0e 91  	add	x0, x0, #912
   80204: 42 a0 36 91  	add	x2, x2, #3496
   80208: 63 60 38 91  	add	x3, x3, #3608
   8020c: 15 00 00 14  	b	0x80260 <interrupt_handler+0x230>
   80210: 20 00 00 b0  	adrp	x0, 0x85000 <interrupt_handler+0x1f4>
   80214: 22 00 00 90  	adrp	x2, 0x84000 <interrupt_handler+0x1f4>
   80218: 23 00 00 90  	adrp	x3, 0x84000 <interrupt_handler+0x1f8>
   8021c: 00 40 0e 91  	add	x0, x0, #912
   80220: 42 a0 36 91  	add	x2, x2, #3496
   80224: 63 80 39 91  	add	x3, x3, #3680
   80228: 0e 00 00 14  	b	0x80260 <interrupt_handler+0x230>
   8022c: 20 00 00 b0  	adrp	x0, 0x85000 <interrupt_handler+0x210>
   80230: 22 00 00 90  	adrp	x2, 0x84000 <interrupt_handler+0x210>
   80234: 23 00 00 90  	adrp	x3, 0x84000 <interrupt_handler+0x214>
   80238: 00 40 0e 91  	add	x0, x0, #912
   8023c: 42 a0 36 91  	add	x2, x2, #3496
   80240: 63 c0 3a 91  	add	x3, x3, #3760
   80244: 07 00 00 14  	b	0x80260 <interrupt_handler+0x230>
   80248: 20 00 00 b0  	adrp	x0, 0x85000 <interrupt_handler+0x22c>
   8024c: 22 00 00 90  	adrp	x2, 0x84000 <interrupt_handler+0x22c>
   80250: 23 00 00 90  	adrp	x3, 0x84000 <interrupt_handler+0x230>
   80254: 00 40 0e 91  	add	x0, x0, #912
   80258: 42 a0 36 91  	add	x2, x2, #3496
   8025c: 63 a0 3b 91  	add	x3, x3, #3816
   80260: e1 03 01 91  	add	x1, sp, #64
   80264: 96 06 00 94  	bl	0x81cbc <_ZN4core6result13unwrap_failed17he5d63f92106ab51dE>
   80268: 20 00 20 d4  	brk	#0x1
   8026c: 00 00 00 00  	udf	#0

0000000000080270 <_ZN54_$LT$$BP$const$u20$T$u20$as$u20$core..fmt..Pointer$GT$3fmt17h2b752c575737db25E>:
   80270: ff 43 01 d1  	sub	sp, sp, #80
   80274: fe 5f 02 a9  	stp	x30, x23, [sp, #32]
   80278: f6 57 03 a9  	stp	x22, x21, [sp, #48]
   8027c: f4 4f 04 a9  	stp	x20, x19, [sp, #64]
   80280: 35 58 40 a9  	ldp	x21, x22, [x1]
   80284: f4 03 00 aa  	mov	x20, x0
   80288: e0 03 01 aa  	mov	x0, x1
   8028c: 37 30 40 b9  	ldr	w23, [x1, #48]
   80290: f3 03 01 aa  	mov	x19, x1
   80294: 4f 0b 00 94  	bl	0x82fd0 <_ZN4core3fmt9Formatter9alternate17h5a07b4bd7e02e2b8E>
   80298: e8 03 17 2a  	mov	w8, w23
   8029c: 40 01 00 36  	tbz	w0, #0, 0x802c4 <_ZN54_$LT$$BP$const$u20$T$u20$as$u20$core..fmt..Pointer$GT$3fmt17h2b752c575737db25E+0x54>
   802a0: e8 02 1d 32  	orr	w8, w23, #0x8
   802a4: 15 01 00 b5  	cbnz	x21, 0x802c4 <_ZN54_$LT$$BP$const$u20$T$u20$as$u20$core..fmt..Pointer$GT$3fmt17h2b752c575737db25E+0x54>
   802a8: 29 00 00 90  	adrp	x9, 0x84000 <_ZN54_$LT$$BP$const$u20$T$u20$as$u20$core..fmt..Pointer$GT$3fmt17h2b752c575737db25E+0x48>
   802ac: 20 45 c3 3d  	ldr	q0, [x9, #3344]
   802b0: e0 03 80 3d  	str	q0, [sp]
   802b4: e9 07 40 f9  	ldr	x9, [sp, #8]
   802b8: 69 06 00 f9  	str	x9, [x19, #8]
   802bc: e9 03 40 f9  	ldr	x9, [sp]
   802c0: 69 02 00 f9  	str	x9, [x19]
   802c4: 89 02 40 f9  	ldr	x9, [x20]
   802c8: 08 01 1e 32  	orr	w8, w8, #0x4
   802cc: e0 63 00 91  	add	x0, sp, #24
   802d0: e1 03 13 aa  	mov	x1, x19
   802d4: 68 32 00 b9  	str	w8, [x19, #48]
   802d8: e9 0f 00 f9  	str	x9, [sp, #24]
   802dc: 25 0e 00 94  	bl	0x83b70 <_ZN4core3fmt3num53_$LT$impl$u20$core..fmt..LowerHex$u20$for$u20$i64$GT$3fmt17h89727d655d417749E>
   802e0: 75 5a 00 a9  	stp	x21, x22, [x19]
   802e4: 77 32 00 b9  	str	w23, [x19, #48]
   802e8: f4 4f 44 a9  	ldp	x20, x19, [sp, #64]
   802ec: f6 57 43 a9  	ldp	x22, x21, [sp, #48]
   802f0: fe 5f 42 a9  	ldp	x30, x23, [sp, #32]
   802f4: ff 43 01 91  	add	sp, sp, #80
   802f8: c0 03 5f d6  	ret
   802fc: 00 00 00 00  	udf	#0

0000000000080300 <_ZN12baremetal_pi4main17h21043854e4a71016E>:
   80300: ff 83 02 d1  	sub	sp, sp, #160
   80304: fe 5f 07 a9  	stp	x30, x23, [sp, #112]
   80308: f6 57 08 a9  	stp	x22, x21, [sp, #128]
   8030c: f4 4f 09 a9  	stp	x20, x19, [sp, #144]
   80310: c0 01 80 52  	mov	w0, #14
   80314: 14 0d 8a 52  	mov	w20, #20584
   80318: 34 e4 a7 72  	movk	w20, #16161, lsl #16
   8031c: 79 02 00 94  	bl	0x80d00 <_ZN12baremetal_pi4gpio4Gpio9configure17h4cba8c34a7a1e1eeE>
   80320: e0 01 80 52  	mov	w0, #15
   80324: 77 02 00 94  	bl	0x80d00 <_ZN12baremetal_pi4gpio4Gpio9configure17h4cba8c34a7a1e1eeE>
   80328: 89 02 40 b9  	ldr	w9, [x20]
   8032c: c8 21 80 52  	mov	w8, #270
   80330: 6a 00 80 52  	mov	w10, #3
   80334: 09 3d 00 33  	bfxil	w9, w8, #0, #16
   80338: c8 12 80 52  	mov	w8, #150
   8033c: 89 02 00 b9  	str	w9, [x20]
   80340: 8a 42 1e b8  	stur	w10, [x20, #-28]
   80344: 1f 20 03 d5  	nop
   80348: 08 05 00 f1  	subs	x8, x8, #1
   8034c: c1 ff ff 54  	b.ne	0x80344 <_ZN12baremetal_pi4main17h21043854e4a71016E+0x44>
   80350: 68 00 80 52  	mov	w8, #3
   80354: 13 00 00 f0  	adrp	x19, 0x83000 <_ZN12baremetal_pi4main17h21043854e4a71016E+0x60>
   80358: 21 00 00 b0  	adrp	x1, 0x85000 <_ZN12baremetal_pi4main17h21043854e4a71016E+0x6c>
   8035c: f5 c3 00 91  	add	x21, sp, #48
   80360: 73 a2 2b 91  	add	x19, x19, #2792
   80364: f6 43 00 91  	add	x22, sp, #16
   80368: 88 82 1f b8  	stur	w8, [x20, #-8]
   8036c: e8 03 01 91  	add	x8, sp, #64
   80370: 49 42 38 d5  	mrs	x9, CurrentEL
   80374: 21 a0 0b 91  	add	x1, x1, #744
   80378: e0 e3 00 91  	add	x0, sp, #56
   8037c: e2 03 01 91  	add	x2, sp, #64
   80380: e9 23 03 a9  	stp	x9, x8, [sp, #48]
   80384: 29 00 00 90  	adrp	x9, 0x84000 <_ZN12baremetal_pi4main17h21043854e4a71016E+0x94>
   80388: 48 00 80 52  	mov	w8, #2
   8038c: 29 21 3f 91  	add	x9, x9, #4040
   80390: f5 4f 01 a9  	stp	x21, x19, [sp, #16]
   80394: f7 03 01 91  	add	x23, sp, #64
   80398: ff 7f 05 a9  	stp	xzr, xzr, [sp, #80]
   8039c: e9 23 04 a9  	stp	x9, x8, [sp, #64]
   803a0: 28 00 80 52  	mov	w8, #1
   803a4: f6 23 06 a9  	stp	x22, x8, [sp, #96]
   803a8: 58 05 00 94  	bl	0x81908 <_ZN4core3fmt5write17h63775af3066fbce8E>
   803ac: 40 01 00 34  	cbz	w0, 0x803d4 <_ZN12baremetal_pi4main17h21043854e4a71016E+0xd4>
   803b0: 20 00 00 b0  	adrp	x0, 0x85000 <_ZN12baremetal_pi4main17h21043854e4a71016E+0xc4>
   803b4: 22 00 00 90  	adrp	x2, 0x84000 <_ZN12baremetal_pi4main17h21043854e4a71016E+0xc4>
   803b8: 23 00 00 b0  	adrp	x3, 0x85000 <_ZN12baremetal_pi4main17h21043854e4a71016E+0xcc>
   803bc: 00 40 0e 91  	add	x0, x0, #912
   803c0: 42 a0 3f 91  	add	x2, x2, #4072
   803c4: 63 20 00 91  	add	x3, x3, #8
   803c8: e1 03 01 91  	add	x1, sp, #64
   803cc: 3c 06 00 94  	bl	0x81cbc <_ZN4core6result13unwrap_failed17he5d63f92106ab51dE>
   803d0: 20 00 20 d4  	brk	#0x1
   803d4: 08 e0 3b d5  	mrs	x8, CNTFRQ_EL0
   803d8: 29 00 00 b0  	adrp	x9, 0x85000 <_ZN12baremetal_pi4main17h21043854e4a71016E+0xec>
   803dc: e8 5f 03 a9  	stp	x8, x23, [sp, #48]
   803e0: 48 00 80 52  	mov	w8, #2
   803e4: 29 81 00 91  	add	x9, x9, #32
   803e8: 14 00 00 90  	adrp	x20, 0x80000 <_ZN12baremetal_pi4main17h21043854e4a71016E+0xe8>
   803ec: 21 00 00 b0  	adrp	x1, 0x85000 <_ZN12baremetal_pi4main17h21043854e4a71016E+0x100>
   803f0: 94 62 26 91  	add	x20, x20, #2456
   803f4: 21 a0 0b 91  	add	x1, x1, #744
   803f8: e0 e3 00 91  	add	x0, sp, #56
   803fc: e9 23 04 a9  	stp	x9, x8, [sp, #64]
   80400: 28 00 80 52  	mov	w8, #1
   80404: e2 03 01 91  	add	x2, sp, #64
   80408: f5 53 01 a9  	stp	x21, x20, [sp, #16]
   8040c: ff 7f 05 a9  	stp	xzr, xzr, [sp, #80]
   80410: f5 03 01 91  	add	x21, sp, #64
   80414: f6 23 06 a9  	stp	x22, x8, [sp, #96]
   80418: 3c 05 00 94  	bl	0x81908 <_ZN4core3fmt5write17h63775af3066fbce8E>
   8041c: 40 01 00 34  	cbz	w0, 0x80444 <_ZN12baremetal_pi4main17h21043854e4a71016E+0x144>
   80420: 20 00 00 b0  	adrp	x0, 0x85000 <_ZN12baremetal_pi4main17h21043854e4a71016E+0x134>
   80424: 22 00 00 90  	adrp	x2, 0x84000 <_ZN12baremetal_pi4main17h21043854e4a71016E+0x134>
   80428: 23 00 00 b0  	adrp	x3, 0x85000 <_ZN12baremetal_pi4main17h21043854e4a71016E+0x13c>
   8042c: 00 40 0e 91  	add	x0, x0, #912
   80430: 42 a0 3f 91  	add	x2, x2, #4072
   80434: 63 00 01 91  	add	x3, x3, #64
   80438: e1 03 01 91  	add	x1, sp, #64
   8043c: 20 06 00 94  	bl	0x81cbc <_ZN4core6result13unwrap_failed17he5d63f92106ab51dE>
   80440: 20 00 20 d4  	brk	#0x1
   80444: 48 e0 3b d5  	mrs	x8, CNTVCT_EL0
   80448: 29 00 00 b0  	adrp	x9, 0x85000 <_ZN12baremetal_pi4main17h21043854e4a71016E+0x15c>
   8044c: e8 57 03 a9  	stp	x8, x21, [sp, #48]
   80450: 48 00 80 52  	mov	w8, #2
   80454: 29 61 01 91  	add	x9, x9, #88
   80458: 21 00 00 b0  	adrp	x1, 0x85000 <_ZN12baremetal_pi4main17h21043854e4a71016E+0x16c>
   8045c: f6 c3 00 91  	add	x22, sp, #48
   80460: f5 43 00 91  	add	x21, sp, #16
   80464: 21 a0 0b 91  	add	x1, x1, #744
   80468: e0 e3 00 91  	add	x0, sp, #56
   8046c: e9 23 04 a9  	stp	x9, x8, [sp, #64]
   80470: 28 00 80 52  	mov	w8, #1
   80474: e2 03 01 91  	add	x2, sp, #64
   80478: f6 53 01 a9  	stp	x22, x20, [sp, #16]
   8047c: ff 7f 05 a9  	stp	xzr, xzr, [sp, #80]
   80480: f7 03 01 91  	add	x23, sp, #64
   80484: f5 23 06 a9  	stp	x21, x8, [sp, #96]
   80488: 20 05 00 94  	bl	0x81908 <_ZN4core3fmt5write17h63775af3066fbce8E>
   8048c: 40 01 00 34  	cbz	w0, 0x804b4 <_ZN12baremetal_pi4main17h21043854e4a71016E+0x1b4>
   80490: 20 00 00 b0  	adrp	x0, 0x85000 <_ZN12baremetal_pi4main17h21043854e4a71016E+0x1a4>
   80494: 22 00 00 90  	adrp	x2, 0x84000 <_ZN12baremetal_pi4main17h21043854e4a71016E+0x1a4>
   80498: 23 00 00 b0  	adrp	x3, 0x85000 <_ZN12baremetal_pi4main17h21043854e4a71016E+0x1ac>
   8049c: 00 40 0e 91  	add	x0, x0, #912
   804a0: 42 a0 3f 91  	add	x2, x2, #4072
   804a4: 63 e0 01 91  	add	x3, x3, #120
   804a8: e1 03 01 91  	add	x1, sp, #64
   804ac: 04 06 00 94  	bl	0x81cbc <_ZN4core6result13unwrap_failed17he5d63f92106ab51dE>
   804b0: 20 00 20 d4  	brk	#0x1
   804b4: 08 42 38 d5  	mrs	x8, SPSel
   804b8: 29 00 00 b0  	adrp	x9, 0x85000 <_ZN12baremetal_pi4main17h21043854e4a71016E+0x1cc>
   804bc: e8 5f 03 a9  	stp	x8, x23, [sp, #48]
   804c0: 48 00 80 52  	mov	w8, #2
   804c4: 29 41 02 91  	add	x9, x9, #144
   804c8: 21 00 00 b0  	adrp	x1, 0x85000 <_ZN12baremetal_pi4main17h21043854e4a71016E+0x1dc>
   804cc: 21 a0 0b 91  	add	x1, x1, #744
   804d0: e0 e3 00 91  	add	x0, sp, #56
   804d4: e2 03 01 91  	add	x2, sp, #64
   804d8: f6 53 01 a9  	stp	x22, x20, [sp, #16]
   804dc: e9 23 04 a9  	stp	x9, x8, [sp, #64]
   804e0: 28 00 80 52  	mov	w8, #1
   804e4: ff 7f 05 a9  	stp	xzr, xzr, [sp, #80]
   804e8: f4 03 01 91  	add	x20, sp, #64
   804ec: f5 23 06 a9  	stp	x21, x8, [sp, #96]
   804f0: 06 05 00 94  	bl	0x81908 <_ZN4core3fmt5write17h63775af3066fbce8E>
   804f4: 40 01 00 34  	cbz	w0, 0x8051c <_ZN12baremetal_pi4main17h21043854e4a71016E+0x21c>
   804f8: 20 00 00 b0  	adrp	x0, 0x85000 <_ZN12baremetal_pi4main17h21043854e4a71016E+0x20c>
   804fc: 22 00 00 90  	adrp	x2, 0x84000 <_ZN12baremetal_pi4main17h21043854e4a71016E+0x20c>
   80500: 23 00 00 b0  	adrp	x3, 0x85000 <_ZN12baremetal_pi4main17h21043854e4a71016E+0x214>
   80504: 00 40 0e 91  	add	x0, x0, #912
   80508: 42 a0 3f 91  	add	x2, x2, #4072
   8050c: 63 c0 02 91  	add	x3, x3, #176
   80510: e1 03 01 91  	add	x1, sp, #64
   80514: ea 05 00 94  	bl	0x81cbc <_ZN4core6result13unwrap_failed17he5d63f92106ab51dE>
   80518: 20 00 20 d4  	brk	#0x1
   8051c: 28 42 3b d5  	mrs	x8, DAIF
   80520: 29 00 00 b0  	adrp	x9, 0x85000 <_ZN12baremetal_pi4main17h21043854e4a71016E+0x234>
   80524: e8 53 03 a9  	stp	x8, x20, [sp, #48]
   80528: 48 00 80 52  	mov	w8, #2
   8052c: 29 21 03 91  	add	x9, x9, #200
   80530: 21 00 00 b0  	adrp	x1, 0x85000 <_ZN12baremetal_pi4main17h21043854e4a71016E+0x244>
   80534: f6 c3 00 91  	add	x22, sp, #48
   80538: f5 43 00 91  	add	x21, sp, #16
   8053c: 21 a0 0b 91  	add	x1, x1, #744
   80540: e0 e3 00 91  	add	x0, sp, #56
   80544: e9 23 04 a9  	stp	x9, x8, [sp, #64]
   80548: 28 00 80 52  	mov	w8, #1
   8054c: e2 03 01 91  	add	x2, sp, #64
   80550: f6 4f 01 a9  	stp	x22, x19, [sp, #16]
   80554: ff 7f 05 a9  	stp	xzr, xzr, [sp, #80]
   80558: f7 03 01 91  	add	x23, sp, #64
   8055c: f5 23 06 a9  	stp	x21, x8, [sp, #96]
   80560: ea 04 00 94  	bl	0x81908 <_ZN4core3fmt5write17h63775af3066fbce8E>
   80564: 40 01 00 34  	cbz	w0, 0x8058c <_ZN12baremetal_pi4main17h21043854e4a71016E+0x28c>
   80568: 20 00 00 b0  	adrp	x0, 0x85000 <_ZN12baremetal_pi4main17h21043854e4a71016E+0x27c>
   8056c: 22 00 00 90  	adrp	x2, 0x84000 <_ZN12baremetal_pi4main17h21043854e4a71016E+0x27c>
   80570: 23 00 00 b0  	adrp	x3, 0x85000 <_ZN12baremetal_pi4main17h21043854e4a71016E+0x284>
   80574: 00 40 0e 91  	add	x0, x0, #912
   80578: 42 a0 3f 91  	add	x2, x2, #4072
   8057c: 63 a0 03 91  	add	x3, x3, #232
   80580: e1 03 01 91  	add	x1, sp, #64
   80584: ce 05 00 94  	bl	0x81cbc <_ZN4core6result13unwrap_failed17he5d63f92106ab51dE>
   80588: 20 00 20 d4  	brk	#0x1
   8058c: 28 c0 3e d5  	mrs	x8, RVBAR_EL3
   80590: 29 00 00 b0  	adrp	x9, 0x85000 <_ZN12baremetal_pi4main17h21043854e4a71016E+0x2a4>
   80594: e8 5f 03 a9  	stp	x8, x23, [sp, #48]
   80598: 48 00 80 52  	mov	w8, #2
   8059c: 29 01 04 91  	add	x9, x9, #256
   805a0: 14 00 00 90  	adrp	x20, 0x80000 <_ZN12baremetal_pi4main17h21043854e4a71016E+0x2a0>
   805a4: 21 00 00 b0  	adrp	x1, 0x85000 <_ZN12baremetal_pi4main17h21043854e4a71016E+0x2b8>
   805a8: 94 c2 09 91  	add	x20, x20, #624
   805ac: 21 a0 0b 91  	add	x1, x1, #744
   805b0: e0 e3 00 91  	add	x0, sp, #56
   805b4: e9 23 04 a9  	stp	x9, x8, [sp, #64]
   805b8: 28 00 80 52  	mov	w8, #1
   805bc: e2 03 01 91  	add	x2, sp, #64
   805c0: f6 53 01 a9  	stp	x22, x20, [sp, #16]
   805c4: ff 7f 05 a9  	stp	xzr, xzr, [sp, #80]
   805c8: f5 23 06 a9  	stp	x21, x8, [sp, #96]
   805cc: cf 04 00 94  	bl	0x81908 <_ZN4core3fmt5write17h63775af3066fbce8E>
   805d0: 40 01 00 34  	cbz	w0, 0x805f8 <_ZN12baremetal_pi4main17h21043854e4a71016E+0x2f8>
   805d4: 20 00 00 b0  	adrp	x0, 0x85000 <_ZN12baremetal_pi4main17h21043854e4a71016E+0x2e8>
   805d8: 22 00 00 90  	adrp	x2, 0x84000 <_ZN12baremetal_pi4main17h21043854e4a71016E+0x2e8>
   805dc: 23 00 00 b0  	adrp	x3, 0x85000 <_ZN12baremetal_pi4main17h21043854e4a71016E+0x2f0>
   805e0: 00 40 0e 91  	add	x0, x0, #912
   805e4: 42 a0 3f 91  	add	x2, x2, #4072
   805e8: 63 80 04 91  	add	x3, x3, #288
   805ec: e1 03 01 91  	add	x1, sp, #64
   805f0: b3 05 00 94  	bl	0x81cbc <_ZN4core6result13unwrap_failed17he5d63f92106ab51dE>
   805f4: 20 00 20 d4  	brk	#0x1
   805f8: 35 00 00 90  	adrp	x21, 0x84000 <_ZN12baremetal_pi4main17h21043854e4a71016E+0x308>
   805fc: b6 02 44 f9  	ldr	x22, [x21, #2048]
   80600: c8 2a 40 f2  	ands	x8, x22, #0x7ff
   80604: e8 07 00 f9  	str	x8, [sp, #8]
   80608: 41 03 00 54  	b.ne	0x80670 <_ZN12baremetal_pi4main17h21043854e4a71016E+0x370>
   8060c: e8 03 01 91  	add	x8, sp, #64
   80610: 29 00 00 90  	adrp	x9, 0x84000 <_ZN12baremetal_pi4main17h21043854e4a71016E+0x320>
   80614: 21 00 00 b0  	adrp	x1, 0x85000 <_ZN12baremetal_pi4main17h21043854e4a71016E+0x328>
   80618: 29 81 3e 91  	add	x9, x9, #4000
   8061c: 2a 00 80 52  	mov	w10, #1
   80620: 21 a0 0b 91  	add	x1, x1, #744
   80624: e8 0b 00 f9  	str	x8, [sp, #16]
   80628: 28 00 00 b0  	adrp	x8, 0x85000 <_ZN12baremetal_pi4main17h21043854e4a71016E+0x33c>
   8062c: 08 e1 10 91  	add	x8, x8, #1080
   80630: e0 43 00 91  	add	x0, sp, #16
   80634: e2 03 01 91  	add	x2, sp, #64
   80638: e9 2b 04 a9  	stp	x9, x10, [sp, #64]
   8063c: ff 7f 05 a9  	stp	xzr, xzr, [sp, #80]
   80640: e8 7f 06 a9  	stp	x8, xzr, [sp, #96]
   80644: b1 04 00 94  	bl	0x81908 <_ZN4core3fmt5write17h63775af3066fbce8E>
   80648: 00 05 00 34  	cbz	w0, 0x806e8 <_ZN12baremetal_pi4main17h21043854e4a71016E+0x3e8>
   8064c: 20 00 00 b0  	adrp	x0, 0x85000 <_ZN12baremetal_pi4main17h21043854e4a71016E+0x360>
   80650: 22 00 00 90  	adrp	x2, 0x84000 <_ZN12baremetal_pi4main17h21043854e4a71016E+0x360>
   80654: 23 00 00 90  	adrp	x3, 0x84000 <_ZN12baremetal_pi4main17h21043854e4a71016E+0x364>
   80658: 00 40 0e 91  	add	x0, x0, #912
   8065c: 42 a0 36 91  	add	x2, x2, #3496
   80660: 63 c0 3e 91  	add	x3, x3, #4016
   80664: e1 03 01 91  	add	x1, sp, #64
   80668: 95 05 00 94  	bl	0x81cbc <_ZN4core6result13unwrap_failed17he5d63f92106ab51dE>
   8066c: 20 00 20 d4  	brk	#0x1
   80670: e8 c3 00 91  	add	x8, sp, #48
   80674: e9 23 00 91  	add	x9, sp, #8
   80678: 21 00 00 b0  	adrp	x1, 0x85000 <_ZN12baremetal_pi4main17h21043854e4a71016E+0x38c>
   8067c: e0 e3 00 91  	add	x0, sp, #56
   80680: 21 a0 0b 91  	add	x1, x1, #744
   80684: e2 03 01 91  	add	x2, sp, #64
   80688: e8 53 01 a9  	stp	x8, x20, [sp, #16]
   8068c: e8 03 01 91  	add	x8, sp, #64
   80690: e9 13 00 f9  	str	x9, [sp, #32]
   80694: 29 00 00 90  	adrp	x9, 0x84000 <_ZN12baremetal_pi4main17h21043854e4a71016E+0x3a4>
   80698: 29 c1 3c 91  	add	x9, x9, #3888
   8069c: f3 db 02 a9  	stp	x19, x22, [sp, #40]
   806a0: e8 1f 00 f9  	str	x8, [sp, #56]
   806a4: 68 00 80 52  	mov	w8, #3
   806a8: ff 7f 05 a9  	stp	xzr, xzr, [sp, #80]
   806ac: e9 23 04 a9  	stp	x9, x8, [sp, #64]
   806b0: e8 43 00 91  	add	x8, sp, #16
   806b4: 49 00 80 52  	mov	w9, #2
   806b8: e8 27 06 a9  	stp	x8, x9, [sp, #96]
   806bc: 93 04 00 94  	bl	0x81908 <_ZN4core3fmt5write17h63775af3066fbce8E>
   806c0: 40 01 00 34  	cbz	w0, 0x806e8 <_ZN12baremetal_pi4main17h21043854e4a71016E+0x3e8>
   806c4: 20 00 00 b0  	adrp	x0, 0x85000 <_ZN12baremetal_pi4main17h21043854e4a71016E+0x3d8>
   806c8: 22 00 00 90  	adrp	x2, 0x84000 <_ZN12baremetal_pi4main17h21043854e4a71016E+0x3d8>
   806cc: 23 00 00 90  	adrp	x3, 0x84000 <_ZN12baremetal_pi4main17h21043854e4a71016E+0x3dc>
   806d0: 00 40 0e 91  	add	x0, x0, #912
   806d4: 42 a0 36 91  	add	x2, x2, #3496
   806d8: 63 80 3d 91  	add	x3, x3, #3936
   806dc: e1 03 01 91  	add	x1, sp, #64
   806e0: 77 05 00 94  	bl	0x81cbc <_ZN4core6result13unwrap_failed17he5d63f92106ab51dE>
   806e4: 20 00 20 d4  	brk	#0x1
   806e8: e9 c3 00 91  	add	x9, sp, #48
   806ec: ea 03 01 91  	add	x10, sp, #64
   806f0: e8 03 1f 2a  	mov	w8, wzr
   806f4: 16 c0 1e d5  	msr	VBAR_EL3, x22
   806f8: 16 c0 1c d5  	msr	VBAR_EL2, x22
   806fc: 16 c0 18 d5  	msr	VBAR_EL1, x22
   80700: 28 42 1b d5  	msr	DAIF, x8
   80704: 28 42 3b d5  	mrs	x8, DAIF
   80708: e9 4f 01 a9  	stp	x9, x19, [sp, #16]
   8070c: 29 00 00 b0  	adrp	x9, 0x85000 <_ZN12baremetal_pi4main17h21043854e4a71016E+0x420>
   80710: e8 2b 03 a9  	stp	x8, x10, [sp, #48]
   80714: 48 00 80 52  	mov	w8, #2
   80718: 29 e1 04 91  	add	x9, x9, #312
   8071c: 21 00 00 b0  	adrp	x1, 0x85000 <_ZN12baremetal_pi4main17h21043854e4a71016E+0x430>
   80720: f3 43 00 91  	add	x19, sp, #16
   80724: 21 a0 0b 91  	add	x1, x1, #744
   80728: e0 e3 00 91  	add	x0, sp, #56
   8072c: e2 03 01 91  	add	x2, sp, #64
   80730: e9 23 04 a9  	stp	x9, x8, [sp, #64]
   80734: 28 00 80 52  	mov	w8, #1
   80738: ff 7f 05 a9  	stp	xzr, xzr, [sp, #80]
   8073c: f6 03 01 91  	add	x22, sp, #64
   80740: f3 23 06 a9  	stp	x19, x8, [sp, #96]
   80744: 71 04 00 94  	bl	0x81908 <_ZN4core3fmt5write17h63775af3066fbce8E>
   80748: 40 01 00 34  	cbz	w0, 0x80770 <_ZN12baremetal_pi4main17h21043854e4a71016E+0x470>
   8074c: 20 00 00 b0  	adrp	x0, 0x85000 <_ZN12baremetal_pi4main17h21043854e4a71016E+0x460>
   80750: 22 00 00 90  	adrp	x2, 0x84000 <_ZN12baremetal_pi4main17h21043854e4a71016E+0x460>
   80754: 23 00 00 b0  	adrp	x3, 0x85000 <_ZN12baremetal_pi4main17h21043854e4a71016E+0x468>
   80758: 00 40 0e 91  	add	x0, x0, #912
   8075c: 42 a0 3f 91  	add	x2, x2, #4072
   80760: 63 60 05 91  	add	x3, x3, #344
   80764: e1 03 01 91  	add	x1, sp, #64
   80768: 55 05 00 94  	bl	0x81cbc <_ZN4core6result13unwrap_failed17he5d63f92106ab51dE>
   8076c: 20 00 20 d4  	brk	#0x1
   80770: a8 02 44 f9  	ldr	x8, [x21, #2048]
   80774: e9 03 00 91  	mov	x9, sp
   80778: 2a 00 00 b0  	adrp	x10, 0x85000 <_ZN12baremetal_pi4main17h21043854e4a71016E+0x48c>
   8077c: 21 00 00 b0  	adrp	x1, 0x85000 <_ZN12baremetal_pi4main17h21043854e4a71016E+0x490>
   80780: 4a c1 05 91  	add	x10, x10, #368
   80784: 21 a0 0b 91  	add	x1, x1, #744
   80788: e9 53 01 a9  	stp	x9, x20, [sp, #16]
   8078c: 49 00 80 52  	mov	w9, #2
   80790: e8 03 00 f9  	str	x8, [sp]
   80794: 28 00 80 52  	mov	w8, #1
   80798: e0 e3 00 91  	add	x0, sp, #56
   8079c: e2 03 01 91  	add	x2, sp, #64
   807a0: f6 ab 03 a9  	stp	x22, x10, [sp, #56]
   807a4: e9 ff 04 a9  	stp	x9, xzr, [sp, #72]
   807a8: ff cf 05 a9  	stp	xzr, x19, [sp, #88]
   807ac: f3 03 01 91  	add	x19, sp, #64
   807b0: e8 37 00 f9  	str	x8, [sp, #104]
   807b4: 55 04 00 94  	bl	0x81908 <_ZN4core3fmt5write17h63775af3066fbce8E>
   807b8: 40 01 00 34  	cbz	w0, 0x807e0 <_ZN12baremetal_pi4main17h21043854e4a71016E+0x4e0>
   807bc: 20 00 00 b0  	adrp	x0, 0x85000 <_ZN12baremetal_pi4main17h21043854e4a71016E+0x4d0>
   807c0: 22 00 00 90  	adrp	x2, 0x84000 <_ZN12baremetal_pi4main17h21043854e4a71016E+0x4d0>
   807c4: 23 00 00 b0  	adrp	x3, 0x85000 <_ZN12baremetal_pi4main17h21043854e4a71016E+0x4d8>
   807c8: 00 40 0e 91  	add	x0, x0, #912
   807cc: 42 a0 3f 91  	add	x2, x2, #4072
   807d0: 63 40 06 91  	add	x3, x3, #400
   807d4: e1 03 01 91  	add	x1, sp, #64
   807d8: 39 05 00 94  	bl	0x81cbc <_ZN4core6result13unwrap_failed17he5d63f92106ab51dE>
   807dc: 20 00 20 d4  	brk	#0x1
   807e0: e9 23 00 91  	add	x9, sp, #8
   807e4: e8 00 02 58  	ldr	x8, 0x84800 <int_sync_sp0>
   807e8: 21 00 00 b0  	adrp	x1, 0x85000 <_ZN12baremetal_pi4main17h21043854e4a71016E+0x4fc>
   807ec: e0 e3 00 91  	add	x0, sp, #56
   807f0: 21 a0 0b 91  	add	x1, x1, #744
   807f4: e2 03 01 91  	add	x2, sp, #64
   807f8: e8 a7 00 a9  	stp	x8, x9, [sp, #8]
   807fc: 29 00 00 b0  	adrp	x9, 0x85000 <_ZN12baremetal_pi4main17h21043854e4a71016E+0x510>
   80800: 48 00 80 52  	mov	w8, #2
   80804: 29 a1 06 91  	add	x9, x9, #424
   80808: f4 0f 00 f9  	str	x20, [sp, #24]
   8080c: f5 03 01 91  	add	x21, sp, #64
   80810: f3 a7 03 a9  	stp	x19, x9, [sp, #56]
   80814: f3 43 00 91  	add	x19, sp, #16
   80818: e8 ff 04 a9  	stp	x8, xzr, [sp, #72]
   8081c: 28 00 80 52  	mov	w8, #1
   80820: ff cf 05 a9  	stp	xzr, x19, [sp, #88]
   80824: e8 37 00 f9  	str	x8, [sp, #104]
   80828: 38 04 00 94  	bl	0x81908 <_ZN4core3fmt5write17h63775af3066fbce8E>
   8082c: 40 01 00 34  	cbz	w0, 0x80854 <_ZN12baremetal_pi4main17h21043854e4a71016E+0x554>
   80830: 20 00 00 b0  	adrp	x0, 0x85000 <_ZN12baremetal_pi4main17h21043854e4a71016E+0x544>
   80834: 22 00 00 90  	adrp	x2, 0x84000 <_ZN12baremetal_pi4main17h21043854e4a71016E+0x544>
   80838: 23 00 00 b0  	adrp	x3, 0x85000 <_ZN12baremetal_pi4main17h21043854e4a71016E+0x54c>
   8083c: 00 40 0e 91  	add	x0, x0, #912
   80840: 42 a0 3f 91  	add	x2, x2, #4072
   80844: 63 20 07 91  	add	x3, x3, #456
   80848: e1 03 01 91  	add	x1, sp, #64
   8084c: 1c 05 00 94  	bl	0x81cbc <_ZN4core6result13unwrap_failed17he5d63f92106ab51dE>
   80850: 20 00 20 d4  	brk	#0x1
   80854: 28 00 00 90  	adrp	x8, 0x84000 <_ZN12baremetal_pi4main17h21043854e4a71016E+0x564>
   80858: e9 c3 00 91  	add	x9, sp, #48
   8085c: 08 01 20 91  	add	x8, x8, #2048
   80860: 21 00 00 b0  	adrp	x1, 0x85000 <_ZN12baremetal_pi4main17h21043854e4a71016E+0x574>
   80864: 21 a0 0b 91  	add	x1, x1, #744
   80868: e0 e3 00 91  	add	x0, sp, #56
   8086c: e9 53 01 a9  	stp	x9, x20, [sp, #16]
   80870: 29 00 00 b0  	adrp	x9, 0x85000 <_ZN12baremetal_pi4main17h21043854e4a71016E+0x584>
   80874: e8 57 03 a9  	stp	x8, x21, [sp, #48]
   80878: 48 00 80 52  	mov	w8, #2
   8087c: 29 81 07 91  	add	x9, x9, #480
   80880: e2 03 01 91  	add	x2, sp, #64
   80884: ff 7f 05 a9  	stp	xzr, xzr, [sp, #80]
   80888: f4 03 01 91  	add	x20, sp, #64
   8088c: e9 23 04 a9  	stp	x9, x8, [sp, #64]
   80890: 28 00 80 52  	mov	w8, #1
   80894: f3 23 06 a9  	stp	x19, x8, [sp, #96]
   80898: 1c 04 00 94  	bl	0x81908 <_ZN4core3fmt5write17h63775af3066fbce8E>
   8089c: 40 01 00 34  	cbz	w0, 0x808c4 <_ZN12baremetal_pi4main17h21043854e4a71016E+0x5c4>
   808a0: 20 00 00 b0  	adrp	x0, 0x85000 <_ZN12baremetal_pi4main17h21043854e4a71016E+0x5b4>
   808a4: 22 00 00 90  	adrp	x2, 0x84000 <_ZN12baremetal_pi4main17h21043854e4a71016E+0x5b4>
   808a8: 23 00 00 b0  	adrp	x3, 0x85000 <_ZN12baremetal_pi4main17h21043854e4a71016E+0x5bc>
   808ac: 00 40 0e 91  	add	x0, x0, #912
   808b0: 42 a0 3f 91  	add	x2, x2, #4072
   808b4: 63 00 08 91  	add	x3, x3, #512
   808b8: e1 03 01 91  	add	x1, sp, #64
   808bc: 00 05 00 94  	bl	0x81cbc <_ZN4core6result13unwrap_failed17he5d63f92106ab51dE>
   808c0: 20 00 20 d4  	brk	#0x1
   808c4: 13 01 80 52  	mov	w19, #8
   808c8: 29 00 00 b0  	adrp	x9, 0x85000 <_ZN12baremetal_pi4main17h21043854e4a71016E+0x5dc>
   808cc: 13 e4 a7 72  	movk	w19, #16160, lsl #16
   808d0: 2a 00 00 b0  	adrp	x10, 0x85000 <_ZN12baremetal_pi4main17h21043854e4a71016E+0x5e4>
   808d4: 21 00 00 b0  	adrp	x1, 0x85000 <_ZN12baremetal_pi4main17h21043854e4a71016E+0x5e8>
   808d8: 29 61 08 91  	add	x9, x9, #536
   808dc: 4a e1 10 91  	add	x10, x10, #1080
   808e0: 2b 00 80 52  	mov	w11, #1
   808e4: 68 02 40 b9  	ldr	w8, [x19]
   808e8: 21 a0 0b 91  	add	x1, x1, #744
   808ec: e0 43 00 91  	add	x0, sp, #16
   808f0: e2 03 01 91  	add	x2, sp, #64
   808f4: 08 71 02 12  	and	w8, w8, #0xc7ffffff
   808f8: 08 01 05 32  	orr	w8, w8, #0x8000000
   808fc: 68 02 00 b9  	str	w8, [x19]
   80900: f4 0b 00 f9  	str	x20, [sp, #16]
   80904: e9 2f 04 a9  	stp	x9, x11, [sp, #64]
   80908: ff 7f 05 a9  	stp	xzr, xzr, [sp, #80]
   8090c: ea 7f 06 a9  	stp	x10, xzr, [sp, #96]
   80910: fe 03 00 94  	bl	0x81908 <_ZN4core3fmt5write17h63775af3066fbce8E>
   80914: 40 01 00 36  	tbz	w0, #0, 0x8093c <_ZN12baremetal_pi4main17h21043854e4a71016E+0x63c>
   80918: 20 00 00 b0  	adrp	x0, 0x85000 <_ZN12baremetal_pi4main17h21043854e4a71016E+0x62c>
   8091c: 22 00 00 90  	adrp	x2, 0x84000 <_ZN12baremetal_pi4main17h21043854e4a71016E+0x62c>
   80920: 23 00 00 b0  	adrp	x3, 0x85000 <_ZN12baremetal_pi4main17h21043854e4a71016E+0x634>
   80924: 00 40 0e 91  	add	x0, x0, #912
   80928: 42 a0 3f 91  	add	x2, x2, #4072
   8092c: 63 40 09 91  	add	x3, x3, #592
   80930: e1 03 01 91  	add	x1, sp, #64
   80934: e2 04 00 94  	bl	0x81cbc <_ZN4core6result13unwrap_failed17he5d63f92106ab51dE>
   80938: 20 00 20 d4  	brk	#0x1
   8093c: 08 48 88 52  	mov	w8, #16960
   80940: 09 00 a4 52  	mov	w9, #536870912
   80944: e8 01 a0 72  	movk	w8, #15, lsl #16
   80948: 69 16 00 b9  	str	w9, [x19, #20]
   8094c: 1f 20 03 d5  	nop
   80950: 08 05 00 f1  	subs	x8, x8, #1
   80954: c1 ff ff 54  	b.ne	0x8094c <_ZN12baremetal_pi4main17h21043854e4a71016E+0x64c>
   80958: 08 20 81 52  	mov	w8, #2304
   8095c: 09 00 a4 52  	mov	w9, #536870912
   80960: a8 07 a0 72  	movk	w8, #61, lsl #16
   80964: 69 22 00 b9  	str	w9, [x19, #32]
   80968: 1f 20 03 d5  	nop
   8096c: 08 05 00 f1  	subs	x8, x8, #1
   80970: c1 ff ff 54  	b.ne	0x80968 <_ZN12baremetal_pi4main17h21043854e4a71016E+0x668>
   80974: 20 00 00 b0  	adrp	x0, 0x85000 <_ZN12baremetal_pi4main17h21043854e4a71016E+0x688>
   80978: 22 00 00 b0  	adrp	x2, 0x85000 <_ZN12baremetal_pi4main17h21043854e4a71016E+0x68c>
   8097c: 00 a0 08 91  	add	x0, x0, #552
   80980: 42 e0 08 91  	add	x2, x2, #568
   80984: e1 01 80 52  	mov	w1, #15
   80988: 7f 20 03 d5  	wfi
   8098c: c6 02 00 94  	bl	0x814a4 <_ZN4core9panicking5panic17h0d86cd7d69f331f6E>
   80990: 20 00 20 d4  	brk	#0x1
   80994: 00 00 00 00  	udf	#0

0000000000080998 <_ZN4core3fmt3num50_$LT$impl$u20$core..fmt..Debug$u20$for$u20$u64$GT$3fmt17hc6ba90be7ac70288E>:
   80998: fe 0f 1e f8  	str	x30, [sp, #-32]!
   8099c: f4 4f 01 a9  	stp	x20, x19, [sp, #16]
   809a0: f4 03 00 aa  	mov	x20, x0
   809a4: e0 03 01 aa  	mov	x0, x1
   809a8: f3 03 01 aa  	mov	x19, x1
   809ac: 8c 09 00 94  	bl	0x82fdc <_ZN4core3fmt9Formatter15debug_lower_hex17h0b7f072683990bf5E>
   809b0: c0 00 00 36  	tbz	w0, #0, 0x809c8 <_ZN4core3fmt3num50_$LT$impl$u20$core..fmt..Debug$u20$for$u20$u64$GT$3fmt17hc6ba90be7ac70288E+0x30>
   809b4: e0 03 14 aa  	mov	x0, x20
   809b8: e1 03 13 aa  	mov	x1, x19
   809bc: f4 4f 41 a9  	ldp	x20, x19, [sp, #16]
   809c0: fe 07 42 f8  	ldr	x30, [sp], #32
   809c4: 6b 0c 00 14  	b	0x83b70 <_ZN4core3fmt3num53_$LT$impl$u20$core..fmt..LowerHex$u20$for$u20$i64$GT$3fmt17h89727d655d417749E>
   809c8: e0 03 13 aa  	mov	x0, x19
   809cc: 87 09 00 94  	bl	0x82fe8 <_ZN4core3fmt9Formatter15debug_upper_hex17hc999bac86c60dde4E>
   809d0: c0 00 00 36  	tbz	w0, #0, 0x809e8 <_ZN4core3fmt3num50_$LT$impl$u20$core..fmt..Debug$u20$for$u20$u64$GT$3fmt17hc6ba90be7ac70288E+0x50>
   809d4: e0 03 14 aa  	mov	x0, x20
   809d8: e1 03 13 aa  	mov	x1, x19
   809dc: f4 4f 41 a9  	ldp	x20, x19, [sp, #16]
   809e0: fe 07 42 f8  	ldr	x30, [sp], #32
   809e4: 89 0c 00 14  	b	0x83c08 <_ZN4core3fmt3num53_$LT$impl$u20$core..fmt..UpperHex$u20$for$u20$i64$GT$3fmt17h0da107dab2280b2bE>
   809e8: e0 03 14 aa  	mov	x0, x20
   809ec: e1 03 13 aa  	mov	x1, x19
   809f0: f4 4f 41 a9  	ldp	x20, x19, [sp, #16]
   809f4: fe 07 42 f8  	ldr	x30, [sp], #32
   809f8: 4c 01 00 14  	b	0x80f28 <_ZN4core3fmt3num3imp52_$LT$impl$u20$core..fmt..Display$u20$for$u20$u64$GT$3fmt17h3635720e402b4b05E>
   809fc: 00 00 00 00  	udf	#0

0000000000080a00 <_ZN50_$LT$$RF$mut$u20$W$u20$as$u20$core..fmt..Write$GT$9write_str17h17203092371d9d42E>:
   80a00: fe 0f 1f f8  	str	x30, [sp, #-16]!
   80a04: e0 03 01 aa  	mov	x0, x1
   80a08: e1 03 02 aa  	mov	x1, x2
   80a0c: 45 00 00 94  	bl	0x80b20 <_ZN62_$LT$baremetal_pi..uart..Uart1$u20$as$u20$core..fmt..Write$GT$9write_str17h3ed99d62375e3953E>
   80a10: e0 03 1f 2a  	mov	w0, wzr
   80a14: fe 07 41 f8  	ldr	x30, [sp], #16
   80a18: c0 03 5f d6  	ret
   80a1c: 00 00 00 00  	udf	#0

0000000000080a20 <_ZN50_$LT$$RF$mut$u20$W$u20$as$u20$core..fmt..Write$GT$10write_char17ha2808f50e603e001E>:
   80a20: fe 0f 1f f8  	str	x30, [sp, #-16]!
   80a24: 3f 00 02 71  	cmp	w1, #128
   80a28: ff 0f 00 b9  	str	wzr, [sp, #12]
   80a2c: 82 00 00 54  	b.hs	0x80a3c <_ZN50_$LT$$RF$mut$u20$W$u20$as$u20$core..fmt..Write$GT$10write_char17ha2808f50e603e001E+0x1c>
   80a30: 28 00 80 52  	mov	w8, #1
   80a34: e1 33 00 39  	strb	w1, [sp, #12]
   80a38: 25 00 00 14  	b	0x80acc <_ZN50_$LT$$RF$mut$u20$W$u20$as$u20$core..fmt..Write$GT$10write_char17ha2808f50e603e001E+0xac>
   80a3c: 3f 00 20 71  	cmp	w1, #2048
   80a40: 22 01 00 54  	b.hs	0x80a64 <_ZN50_$LT$$RF$mut$u20$W$u20$as$u20$core..fmt..Write$GT$10write_char17ha2808f50e603e001E+0x44>
   80a44: 28 7c 06 53  	lsr	w8, w1, #6
   80a48: 09 05 1a 32  	orr	w9, w8, #0xc0
   80a4c: 0a 10 80 52  	mov	w10, #128
   80a50: 48 00 80 52  	mov	w8, #2
   80a54: 2a 14 00 33  	bfxil	w10, w1, #0, #6
   80a58: e9 33 00 39  	strb	w9, [sp, #12]
   80a5c: ea 37 00 39  	strb	w10, [sp, #13]
   80a60: 1b 00 00 14  	b	0x80acc <_ZN50_$LT$$RF$mut$u20$W$u20$as$u20$core..fmt..Write$GT$10write_char17ha2808f50e603e001E+0xac>
   80a64: 3f 40 40 71  	cmp	w1, #16, lsl #12
   80a68: 82 01 00 54  	b.hs	0x80a98 <_ZN50_$LT$$RF$mut$u20$W$u20$as$u20$core..fmt..Write$GT$10write_char17ha2808f50e603e001E+0x78>
   80a6c: 28 7c 0c 53  	lsr	w8, w1, #12
   80a70: 09 09 1b 32  	orr	w9, w8, #0xe0
   80a74: 0a 10 80 52  	mov	w10, #128
   80a78: 0b 10 80 52  	mov	w11, #128
   80a7c: 2b 2c 06 33  	bfxil	w11, w1, #6, #6
   80a80: 2a 14 00 33  	bfxil	w10, w1, #0, #6
   80a84: 68 00 80 52  	mov	w8, #3
   80a88: e9 33 00 39  	strb	w9, [sp, #12]
   80a8c: eb 37 00 39  	strb	w11, [sp, #13]
   80a90: ea 3b 00 39  	strb	w10, [sp, #14]
   80a94: 0e 00 00 14  	b	0x80acc <_ZN50_$LT$$RF$mut$u20$W$u20$as$u20$core..fmt..Write$GT$10write_char17ha2808f50e603e001E+0xac>
   80a98: 28 7c 12 53  	lsr	w8, w1, #18
   80a9c: 09 10 80 52  	mov	w9, #128
   80aa0: 08 0d 1c 32  	orr	w8, w8, #0xf0
   80aa4: 0a 10 80 52  	mov	w10, #128
   80aa8: 0b 10 80 52  	mov	w11, #128
   80aac: 29 44 0c 33  	bfxil	w9, w1, #12, #6
   80ab0: 2b 2c 06 33  	bfxil	w11, w1, #6, #6
   80ab4: 2a 14 00 33  	bfxil	w10, w1, #0, #6
   80ab8: e8 33 00 39  	strb	w8, [sp, #12]
   80abc: 88 00 80 52  	mov	w8, #4
   80ac0: e9 37 00 39  	strb	w9, [sp, #13]
   80ac4: eb 3b 00 39  	strb	w11, [sp, #14]
   80ac8: ea 3f 00 39  	strb	w10, [sp, #15]
   80acc: e0 33 00 91  	add	x0, sp, #12
   80ad0: e1 03 08 aa  	mov	x1, x8
   80ad4: 13 00 00 94  	bl	0x80b20 <_ZN62_$LT$baremetal_pi..uart..Uart1$u20$as$u20$core..fmt..Write$GT$9write_str17h3ed99d62375e3953E>
   80ad8: e0 03 1f 2a  	mov	w0, wzr
   80adc: fe 07 41 f8  	ldr	x30, [sp], #16
   80ae0: c0 03 5f d6  	ret
   80ae4: 00 00 00 00  	udf	#0

0000000000080ae8 <_ZN50_$LT$$RF$mut$u20$W$u20$as$u20$core..fmt..Write$GT$9write_fmt17h4cb58af88345ff79E>:
   80ae8: ff 03 01 d1  	sub	sp, sp, #64
   80aec: 08 00 40 f9  	ldr	x8, [x0]
   80af0: e0 03 00 91  	mov	x0, sp
   80af4: 02 06 80 52  	mov	w2, #48
   80af8: fe 23 03 a9  	stp	x30, x8, [sp, #48]
   80afc: 6f 0c 00 94  	bl	0x83cb8 <memcpy>
   80b00: 21 00 00 b0  	adrp	x1, 0x85000 <_ZN50_$LT$$RF$mut$u20$W$u20$as$u20$core..fmt..Write$GT$9write_fmt17h4cb58af88345ff79E+0x2c>
   80b04: e0 e3 00 91  	add	x0, sp, #56
   80b08: 21 a0 0b 91  	add	x1, x1, #744
   80b0c: e2 03 00 91  	mov	x2, sp
   80b10: 7e 03 00 94  	bl	0x81908 <_ZN4core3fmt5write17h63775af3066fbce8E>
   80b14: fe 1b 40 f9  	ldr	x30, [sp, #48]
   80b18: ff 03 01 91  	add	sp, sp, #64
   80b1c: c0 03 5f d6  	ret

0000000000080b20 <_ZN62_$LT$baremetal_pi..uart..Uart1$u20$as$u20$core..fmt..Write$GT$9write_str17h3ed99d62375e3953E>:
   80b20: e8 03 00 aa  	mov	x8, x0
   80b24: 8a 0c 8a 52  	mov	w10, #20580
   80b28: 2d 00 00 b0  	adrp	x13, 0x85000 <_ZN62_$LT$baremetal_pi..uart..Uart1$u20$as$u20$core..fmt..Write$GT$9write_str17h3ed99d62375e3953E+0x1c>
   80b2c: e0 03 1f aa  	mov	x0, xzr
   80b30: ef 03 1f aa  	mov	x15, xzr
   80b34: e9 03 1f aa  	mov	x9, xzr
   80b38: 2a e4 a7 72  	movk	w10, #16161, lsl #16
   80b3c: 0b 01 01 8b  	add	x11, x8, x1
   80b40: 6c 00 80 52  	mov	w12, #3
   80b44: ee 03 08 aa  	mov	x14, x8
   80b48: ad 61 0c 91  	add	x13, x13, #792
   80b4c: 29 01 00 b5  	cbnz	x9, 0x80b70 <_ZN62_$LT$baremetal_pi..uart..Uart1$u20$as$u20$core..fmt..Write$GT$9write_str17h3ed99d62375e3953E+0x50>
   80b50: 13 00 00 14  	b	0x80b9c <_ZN62_$LT$baremetal_pi..uart..Uart1$u20$as$u20$core..fmt..Write$GT$9write_str17h3ed99d62375e3953E+0x7c>
   80b54: 51 00 80 52  	mov	w17, #2
   80b58: e9 03 0d aa  	mov	x9, x13
   80b5c: 0e 00 0e cb  	sub	x14, x0, x14
   80b60: c0 01 0f 8b  	add	x0, x14, x15
   80b64: 2f 01 11 8b  	add	x15, x9, x17
   80b68: ee 03 10 aa  	mov	x14, x16
   80b6c: 89 01 00 b4  	cbz	x9, 0x80b9c <_ZN62_$LT$baremetal_pi..uart..Uart1$u20$as$u20$core..fmt..Write$GT$9write_str17h3ed99d62375e3953E+0x7c>
   80b70: 3f 01 0f eb  	cmp	x9, x15
   80b74: 61 00 00 54  	b.ne	0x80b80 <_ZN62_$LT$baremetal_pi..uart..Uart1$u20$as$u20$core..fmt..Write$GT$9write_str17h3ed99d62375e3953E+0x60>
   80b78: 09 00 00 14  	b	0x80b9c <_ZN62_$LT$baremetal_pi..uart..Uart1$u20$as$u20$core..fmt..Write$GT$9write_str17h3ed99d62375e3953E+0x7c>
   80b7c: df 3f 03 d5  	isb
   80b80: 50 01 40 b9  	ldr	w16, [x10]
   80b84: d0 ff 0f 36  	tbz	w16, #1, 0x80b7c <_ZN62_$LT$baremetal_pi..uart..Uart1$u20$as$u20$core..fmt..Write$GT$9write_str17h3ed99d62375e3953E+0x5c>
   80b88: 31 01 40 39  	ldrb	w17, [x9]
   80b8c: 30 05 00 91  	add	x16, x9, #1
   80b90: e9 03 10 aa  	mov	x9, x16
   80b94: 51 c1 1d b8  	stur	w17, [x10, #-36]
   80b98: c9 fe ff b5  	cbnz	x9, 0x80b70 <_ZN62_$LT$baremetal_pi..uart..Uart1$u20$as$u20$core..fmt..Write$GT$9write_str17h3ed99d62375e3953E+0x50>
   80b9c: 6e 09 00 b4  	cbz	x14, 0x80cc8 <_ZN62_$LT$baremetal_pi..uart..Uart1$u20$as$u20$core..fmt..Write$GT$9write_str17h3ed99d62375e3953E+0x1a8>
   80ba0: 7f 01 0e eb  	cmp	x11, x14
   80ba4: 20 09 00 54  	b.eq	0x80cc8 <_ZN62_$LT$baremetal_pi..uart..Uart1$u20$as$u20$core..fmt..Write$GT$9write_str17h3ed99d62375e3953E+0x1a8>
   80ba8: ef 03 0e aa  	mov	x15, x14
   80bac: e9 15 c0 38  	ldrsb	w9, [x15], #1
   80bb0: 31 1d 00 12  	and	w17, w9, #0xff
   80bb4: 89 00 f8 37  	tbnz	w9, #31, 0x80bc4 <_ZN62_$LT$baremetal_pi..uart..Uart1$u20$as$u20$core..fmt..Write$GT$9write_str17h3ed99d62375e3953E+0xa4>
   80bb8: f0 03 0f aa  	mov	x16, x15
   80bbc: e9 03 11 2a  	mov	w9, w17
   80bc0: 2f 00 00 14  	b	0x80c7c <_ZN62_$LT$baremetal_pi..uart..Uart1$u20$as$u20$core..fmt..Write$GT$9write_str17h3ed99d62375e3953E+0x15c>
   80bc4: ff 01 0b eb  	cmp	x15, x11
   80bc8: c0 02 00 54  	b.eq	0x80c20 <_ZN62_$LT$baremetal_pi..uart..Uart1$u20$as$u20$core..fmt..Write$GT$9write_str17h3ed99d62375e3953E+0x100>
   80bcc: c9 05 40 39  	ldrb	w9, [x14, #1]
   80bd0: d0 09 00 91  	add	x16, x14, #2
   80bd4: ef 03 10 aa  	mov	x15, x16
   80bd8: 29 15 00 12  	and	w9, w9, #0x3f
   80bdc: 32 12 00 12  	and	w18, w17, #0x1f
   80be0: 3f 7e 03 71  	cmp	w17, #223
   80be4: a9 02 00 54  	b.ls	0x80c38 <_ZN62_$LT$baremetal_pi..uart..Uart1$u20$as$u20$core..fmt..Write$GT$9write_str17h3ed99d62375e3953E+0x118>
   80be8: ff 01 0b eb  	cmp	x15, x11
   80bec: a0 02 00 54  	b.eq	0x80c40 <_ZN62_$LT$baremetal_pi..uart..Uart1$u20$as$u20$core..fmt..Write$GT$9write_str17h3ed99d62375e3953E+0x120>
   80bf0: e2 15 40 38  	ldrb	w2, [x15], #1
   80bf4: f0 03 0f aa  	mov	x16, x15
   80bf8: 42 14 00 12  	and	w2, w2, #0x3f
   80bfc: 22 15 1a 33  	bfi	w2, w9, #6, #6
   80c00: 3f c2 03 71  	cmp	w17, #240
   80c04: 83 02 00 54  	b.lo	0x80c54 <_ZN62_$LT$baremetal_pi..uart..Uart1$u20$as$u20$core..fmt..Write$GT$9write_str17h3ed99d62375e3953E+0x134>
   80c08: ff 01 0b eb  	cmp	x15, x11
   80c0c: a0 02 00 54  	b.eq	0x80c60 <_ZN62_$LT$baremetal_pi..uart..Uart1$u20$as$u20$core..fmt..Write$GT$9write_str17h3ed99d62375e3953E+0x140>
   80c10: e9 15 40 38  	ldrb	w9, [x15], #1
   80c14: f0 03 0f aa  	mov	x16, x15
   80c18: 29 15 00 12  	and	w9, w9, #0x3f
   80c1c: 13 00 00 14  	b	0x80c68 <_ZN62_$LT$baremetal_pi..uart..Uart1$u20$as$u20$core..fmt..Write$GT$9write_str17h3ed99d62375e3953E+0x148>
   80c20: e9 03 1f 2a  	mov	w9, wzr
   80c24: f0 03 0f aa  	mov	x16, x15
   80c28: ef 03 0b aa  	mov	x15, x11
   80c2c: 32 12 00 12  	and	w18, w17, #0x1f
   80c30: 3f 7e 03 71  	cmp	w17, #223
   80c34: a8 fd ff 54  	b.hi	0x80be8 <_ZN62_$LT$baremetal_pi..uart..Uart1$u20$as$u20$core..fmt..Write$GT$9write_str17h3ed99d62375e3953E+0xc8>
   80c38: 49 12 1a 33  	bfi	w9, w18, #6, #5
   80c3c: 10 00 00 14  	b	0x80c7c <_ZN62_$LT$baremetal_pi..uart..Uart1$u20$as$u20$core..fmt..Write$GT$9write_str17h3ed99d62375e3953E+0x15c>
   80c40: e2 03 1f 2a  	mov	w2, wzr
   80c44: ef 03 0b aa  	mov	x15, x11
   80c48: 22 15 1a 33  	bfi	w2, w9, #6, #6
   80c4c: 3f c2 03 71  	cmp	w17, #240
   80c50: c2 fd ff 54  	b.hs	0x80c08 <_ZN62_$LT$baremetal_pi..uart..Uart1$u20$as$u20$core..fmt..Write$GT$9write_str17h3ed99d62375e3953E+0xe8>
   80c54: 42 12 14 33  	bfi	w2, w18, #12, #5
   80c58: e9 03 02 2a  	mov	w9, w2
   80c5c: 08 00 00 14  	b	0x80c7c <_ZN62_$LT$baremetal_pi..uart..Uart1$u20$as$u20$core..fmt..Write$GT$9write_str17h3ed99d62375e3953E+0x15c>
   80c60: e9 03 1f 2a  	mov	w9, wzr
   80c64: ef 03 0b aa  	mov	x15, x11
   80c68: 51 0a 0e 53  	ubfiz	w17, w18, #18, #3
   80c6c: 51 2c 1a 33  	bfi	w17, w2, #6, #12
   80c70: 29 02 09 2a  	orr	w9, w17, w9
   80c74: 3f 41 44 71  	cmp	w9, #272, lsl #12
   80c78: 80 02 00 54  	b.eq	0x80cc8 <_ZN62_$LT$baremetal_pi..uart..Uart1$u20$as$u20$core..fmt..Write$GT$9write_str17h3ed99d62375e3953E+0x1a8>
   80c7c: 3f 29 00 71  	cmp	w9, #10
   80c80: a0 f6 ff 54  	b.eq	0x80b54 <_ZN62_$LT$baremetal_pi..uart..Uart1$u20$as$u20$core..fmt..Write$GT$9write_str17h3ed99d62375e3953E+0x34>
   80c84: 3f 01 02 71  	cmp	w9, #128
   80c88: 62 00 00 54  	b.hs	0x80c94 <_ZN62_$LT$baremetal_pi..uart..Uart1$u20$as$u20$core..fmt..Write$GT$9write_str17h3ed99d62375e3953E+0x174>
   80c8c: 31 00 80 52  	mov	w17, #1
   80c90: 07 00 00 14  	b	0x80cac <_ZN62_$LT$baremetal_pi..uart..Uart1$u20$as$u20$core..fmt..Write$GT$9write_str17h3ed99d62375e3953E+0x18c>
   80c94: 3f 01 20 71  	cmp	w9, #2048
   80c98: 62 00 00 54  	b.hs	0x80ca4 <_ZN62_$LT$baremetal_pi..uart..Uart1$u20$as$u20$core..fmt..Write$GT$9write_str17h3ed99d62375e3953E+0x184>
   80c9c: 51 00 80 52  	mov	w17, #2
   80ca0: 03 00 00 14  	b	0x80cac <_ZN62_$LT$baremetal_pi..uart..Uart1$u20$as$u20$core..fmt..Write$GT$9write_str17h3ed99d62375e3953E+0x18c>
   80ca4: 3f 41 40 71  	cmp	w9, #16, lsl #12
   80ca8: 91 35 8c 9a  	cinc	x17, x12, hs
   80cac: 29 02 00 ab  	adds	x9, x17, x0
   80cb0: c2 01 00 54  	b.hs	0x80ce8 <_ZN62_$LT$baremetal_pi..uart..Uart1$u20$as$u20$core..fmt..Write$GT$9write_str17h3ed99d62375e3953E+0x1c8>
   80cb4: 3f 01 01 eb  	cmp	x9, x1
   80cb8: e8 00 00 54  	b.hi	0x80cd4 <_ZN62_$LT$baremetal_pi..uart..Uart1$u20$as$u20$core..fmt..Write$GT$9write_str17h3ed99d62375e3953E+0x1b4>
   80cbc: 09 01 00 8b  	add	x9, x8, x0
   80cc0: a7 ff ff 17  	b	0x80b5c <_ZN62_$LT$baremetal_pi..uart..Uart1$u20$as$u20$core..fmt..Write$GT$9write_str17h3ed99d62375e3953E+0x3c>
   80cc4: df 3f 03 d5  	isb
   80cc8: 48 01 40 b9  	ldr	w8, [x10]
   80ccc: c8 ff 1f 36  	tbz	w8, #3, 0x80cc4 <_ZN62_$LT$baremetal_pi..uart..Uart1$u20$as$u20$core..fmt..Write$GT$9write_str17h3ed99d62375e3953E+0x1a4>
   80cd0: c0 03 5f d6  	ret
   80cd4: 22 00 00 b0  	adrp	x2, 0x85000 <_ZN62_$LT$baremetal_pi..uart..Uart1$u20$as$u20$core..fmt..Write$GT$9write_str17h3ed99d62375e3953E+0x1c8>
   80cd8: e0 03 09 aa  	mov	x0, x9
   80cdc: 42 80 0c 91  	add	x2, x2, #800
   80ce0: df 01 00 94  	bl	0x8145c <_ZN4core5slice5index24slice_end_index_len_fail17hfcb16d41a5d796d5E>
   80ce4: 20 00 20 d4  	brk	#0x1
   80ce8: 22 00 00 b0  	adrp	x2, 0x85000 <_ZN62_$LT$baremetal_pi..uart..Uart1$u20$as$u20$core..fmt..Write$GT$9write_str17h3ed99d62375e3953E+0x1dc>
   80cec: e1 03 09 aa  	mov	x1, x9
   80cf0: 42 80 0c 91  	add	x2, x2, #800
   80cf4: 83 03 00 94  	bl	0x81b00 <_ZN4core5slice5index22slice_index_order_fail17h806852bf6aeb5b48E>
   80cf8: 20 00 20 d4  	brk	#0x1
   80cfc: 00 00 00 00  	udf	#0

0000000000080d00 <_ZN12baremetal_pi4gpio4Gpio9configure17h4cba8c34a7a1e1eeE>:
   80d00: a8 99 99 52  	mov	w8, #52429
   80d04: 09 1c 00 12  	and	w9, w0, #0xff
   80d08: 88 99 b9 72  	movk	w8, #52428, lsl #16
   80d0c: 2a 00 80 52  	mov	w10, #1
   80d10: 4b 00 80 52  	mov	w11, #2
   80d14: 28 7d a8 9b  	umull	x8, w9, w8
   80d18: 29 01 80 12  	mov	w9, #-10
   80d1c: 08 fd 63 d3  	lsr	x8, x8, #35
   80d20: 09 01 09 1b  	madd	w9, w8, w9, w0
   80d24: 29 05 09 0b  	add	w9, w9, w9, lsl #1
   80d28: 29 1d 00 12  	and	w9, w9, #0xff
   80d2c: 2d 0d 00 11  	add	w13, w9, #3
   80d30: ec 03 09 2a  	mov	w12, w9
   80d34: bf 01 00 72  	tst	w13, #0x1
   80d38: af 7d 01 53  	lsr	w15, w13, #1
   80d3c: 6e 15 9f 1a  	csinc	w14, w11, wzr, ne
   80d40: 6b 7d 0b 1b  	mul	w11, w11, w11
   80d44: bf 0d 00 71  	cmp	w13, #3
   80d48: ed 03 0f 2a  	mov	w13, w15
   80d4c: ca 7d 0a 1b  	mul	w10, w14, w10
   80d50: 28 ff ff 54  	b.hi	0x80d34 <_ZN12baremetal_pi4gpio4Gpio9configure17h4cba8c34a7a1e1eeE+0x34>
   80d54: 4d 00 80 52  	mov	w13, #2
   80d58: 2e 00 80 52  	mov	w14, #1
   80d5c: ec 01 00 34  	cbz	w12, 0x80d98 <_ZN12baremetal_pi4gpio4Gpio9configure17h4cba8c34a7a1e1eeE+0x98>
   80d60: 4f 00 80 52  	mov	w15, #2
   80d64: 9f 05 00 71  	cmp	w12, #1
   80d68: 60 01 00 54  	b.eq	0x80d94 <_ZN12baremetal_pi4gpio4Gpio9configure17h4cba8c34a7a1e1eeE+0x94>
   80d6c: 2e 00 80 52  	mov	w14, #1
   80d70: 4f 00 80 52  	mov	w15, #2
   80d74: 9f 01 00 72  	tst	w12, #0x1
   80d78: 91 7d 01 53  	lsr	w17, w12, #1
   80d7c: f0 15 9f 1a  	csinc	w16, w15, wzr, ne
   80d80: ef 7d 0f 1b  	mul	w15, w15, w15
   80d84: 9f 0d 00 71  	cmp	w12, #3
   80d88: ec 03 11 2a  	mov	w12, w17
   80d8c: 0e 7e 0e 1b  	mul	w14, w16, w14
   80d90: 28 ff ff 54  	b.hi	0x80d74 <_ZN12baremetal_pi4gpio4Gpio9configure17h4cba8c34a7a1e1eeE+0x74>
   80d94: ee 7d 0e 1b  	mul	w14, w15, w14
   80d98: 0c e4 a7 52  	mov	w12, #1059061760
   80d9c: a9 21 c9 1a  	lsl	w9, w13, w9
   80da0: 0c 11 7e b3  	bfi	x12, x8, #2, #5
   80da4: 68 7d 0a 1b  	mul	w8, w11, w10
   80da8: 8a 01 40 b9  	ldr	w10, [x12]
   80dac: e8 03 28 2a  	mvn	w8, w8
   80db0: c8 01 08 0b  	add	w8, w14, w8
   80db4: 48 01 08 0a  	and	w8, w10, w8
   80db8: 08 01 09 2a  	orr	w8, w8, w9
   80dbc: 88 01 00 b9  	str	w8, [x12]
   80dc0: c0 03 5f d6  	ret
   80dc4: 00 00 00 00  	udf	#0

0000000000080dc8 <rust_begin_unwind>:
   80dc8: ff 83 01 d1  	sub	sp, sp, #96
   80dcc: fe 4f 05 a9  	stp	x30, x19, [sp, #80]
   80dd0: e0 03 00 f9  	str	x0, [sp]
   80dd4: c0 01 80 52  	mov	w0, #14
   80dd8: 13 0d 8a 52  	mov	w19, #20584
   80ddc: 33 e4 a7 72  	movk	w19, #16161, lsl #16
   80de0: c8 ff ff 97  	bl	0x80d00 <_ZN12baremetal_pi4gpio4Gpio9configure17h4cba8c34a7a1e1eeE>
   80de4: e0 01 80 52  	mov	w0, #15
   80de8: c6 ff ff 97  	bl	0x80d00 <_ZN12baremetal_pi4gpio4Gpio9configure17h4cba8c34a7a1e1eeE>
   80dec: 69 02 40 b9  	ldr	w9, [x19]
   80df0: c8 21 80 52  	mov	w8, #270
   80df4: 6a 00 80 52  	mov	w10, #3
   80df8: 09 3d 00 33  	bfxil	w9, w8, #0, #16
   80dfc: c8 12 80 52  	mov	w8, #150
   80e00: 69 02 00 b9  	str	w9, [x19]
   80e04: 6a 42 1e b8  	stur	w10, [x19, #-28]
   80e08: 1f 20 03 d5  	nop
   80e0c: 08 05 00 f1  	subs	x8, x8, #1
   80e10: c1 ff ff 54  	b.ne	0x80e08 <rust_begin_unwind+0x40>
   80e14: 68 00 80 52  	mov	w8, #3
   80e18: e9 03 00 91  	mov	x9, sp
   80e1c: ea 83 00 91  	add	x10, sp, #32
   80e20: 21 00 00 b0  	adrp	x1, 0x85000 <rust_begin_unwind+0x6c>
   80e24: 21 a0 0b 91  	add	x1, x1, #744
   80e28: e0 63 00 91  	add	x0, sp, #24
   80e2c: 68 82 1f b8  	stur	w8, [x19, #-8]
   80e30: 08 00 00 90  	adrp	x8, 0x80000 <rust_begin_unwind+0x68>
   80e34: 08 41 3b 91  	add	x8, x8, #3792
   80e38: e2 83 00 91  	add	x2, sp, #32
   80e3c: e9 a3 00 a9  	stp	x9, x8, [sp, #8]
   80e40: 28 00 00 b0  	adrp	x8, 0x85000 <rust_begin_unwind+0x8c>
   80e44: 08 21 0d 91  	add	x8, x8, #840
   80e48: 29 00 80 52  	mov	w9, #1
   80e4c: ea a3 01 a9  	stp	x10, x8, [sp, #24]
   80e50: 2a 00 00 b0  	adrp	x10, 0x85000 <rust_begin_unwind+0x9c>
   80e54: 4a 61 0d 91  	add	x10, x10, #856
   80e58: e8 23 00 91  	add	x8, sp, #8
   80e5c: e9 27 00 f9  	str	x9, [sp, #72]
   80e60: e9 ab 02 a9  	stp	x9, x10, [sp, #40]
   80e64: e9 a3 03 a9  	stp	x9, x8, [sp, #56]
   80e68: a8 02 00 94  	bl	0x81908 <_ZN4core3fmt5write17h63775af3066fbce8E>
   80e6c: 60 00 00 35  	cbnz	w0, 0x80e78 <rust_begin_unwind+0xb0>
   80e70: 5f 20 03 d5  	wfe
   80e74: ff ff ff 17  	b	0x80e70 <rust_begin_unwind+0xa8>
   80e78: 20 00 00 b0  	adrp	x0, 0x85000 <rust_begin_unwind+0xc4>
   80e7c: 22 00 00 b0  	adrp	x2, 0x85000 <rust_begin_unwind+0xc8>
   80e80: 23 00 00 b0  	adrp	x3, 0x85000 <rust_begin_unwind+0xcc>
   80e84: 00 40 0e 91  	add	x0, x0, #912
   80e88: 42 00 0f 91  	add	x2, x2, #960
   80e8c: 63 80 0f 91  	add	x3, x3, #992
   80e90: e1 83 00 91  	add	x1, sp, #32
   80e94: 8a 03 00 94  	bl	0x81cbc <_ZN4core6result13unwrap_failed17he5d63f92106ab51dE>
   80e98: 20 00 20 d4  	brk	#0x1
   80e9c: 00 00 00 00  	udf	#0

0000000000080ea0 <rust_entry>:
   80ea0: fe 0f 1f f8  	str	x30, [sp, #-16]!
   80ea4: 28 00 00 d0  	adrp	x8, 0x86000 <rust_entry+0x1c>
   80ea8: 20 00 00 d0  	adrp	x0, 0x86000 <rust_entry+0x20>
   80eac: 08 c1 0d 91  	add	x8, x8, #880
   80eb0: 00 c0 0d 91  	add	x0, x0, #880
   80eb4: 02 00 08 eb  	subs	x2, x0, x8
   80eb8: 60 00 00 54  	b.eq	0x80ec4 <rust_entry+0x24>
   80ebc: e1 03 1f 2a  	mov	w1, wzr
   80ec0: 51 0c 00 94  	bl	0x84004 <memset>
   80ec4: 0f fd ff 97  	bl	0x80300 <_ZN12baremetal_pi4main17h21043854e4a71016E>
   80ec8: 20 00 20 d4  	brk	#0x1
   80ecc: 00 00 00 00  	udf	#0

0000000000080ed0 <_ZN42_$LT$$RF$T$u20$as$u20$core..fmt..Debug$GT$3fmt17h470510a8092c6ef2E>:
   80ed0: 00 00 40 f9  	ldr	x0, [x0]
   80ed4: 09 0a 00 14  	b	0x836f8 <_ZN71_$LT$core..panic..panic_info..PanicInfo$u20$as$u20$core..fmt..Debug$GT$3fmt17ha3e0b3cc45a627c8E>

0000000000080ed8 <_ZN4core3ops8function6FnOnce9call_once17hf084a51a9b44c1f3E>:
   80ed8: 1f 00 40 f9  	ldr	xzr, [x0]
   80edc: 00 00 00 14  	b	0x80edc <_ZN4core3ops8function6FnOnce9call_once17hf084a51a9b44c1f3E+0x4>

0000000000080ee0 <_ZN4core9panicking18panic_bounds_check17h8ada80d8af39de02E>:
   80ee0: e0 07 ba a9  	stp	x0, x1, [sp, #-96]!
   80ee4: 09 00 00 90  	adrp	x9, 0x80000 <_ZN4core9panicking18panic_bounds_check17h8ada80d8af39de02E+0x4>
   80ee8: e8 23 00 91  	add	x8, sp, #8
   80eec: 29 a1 3c 91  	add	x9, x9, #3880
   80ef0: 2b 00 00 b0  	adrp	x11, 0x85000 <_ZN4core9panicking18panic_bounds_check17h8ada80d8af39de02E+0x24>
   80ef4: ea 03 00 91  	mov	x10, sp
   80ef8: 6b 61 10 91  	add	x11, x11, #1048
   80efc: 4c 00 80 52  	mov	w12, #2
   80f00: e8 27 04 a9  	stp	x8, x9, [sp, #64]
   80f04: e8 03 01 91  	add	x8, sp, #64
   80f08: e0 43 00 91  	add	x0, sp, #16
   80f0c: e1 03 02 aa  	mov	x1, x2
   80f10: ff 7f 02 a9  	stp	xzr, xzr, [sp, #32]
   80f14: ea 27 05 a9  	stp	x10, x9, [sp, #80]
   80f18: eb 33 01 a9  	stp	x11, x12, [sp, #16]
   80f1c: e8 33 03 a9  	stp	x8, x12, [sp, #48]
   80f20: 5f 00 00 94  	bl	0x8109c <_ZN4core9panicking9panic_fmt17h136e9995f1aed1cdE>
   80f24: 20 00 20 d4  	brk	#0x1

0000000000080f28 <_ZN4core3fmt3num3imp52_$LT$impl$u20$core..fmt..Display$u20$for$u20$u64$GT$3fmt17h3635720e402b4b05E>:
   80f28: ff 03 01 d1  	sub	sp, sp, #64
   80f2c: fe 1b 00 f9  	str	x30, [sp, #48]
   80f30: 0a 00 40 f9  	ldr	x10, [x0]
   80f34: e8 03 01 aa  	mov	x8, x1
   80f38: 49 fd 44 d3  	lsr	x9, x10, #4
   80f3c: 3f c5 09 f1  	cmp	x9, #625
   80f40: 29 00 00 b0  	adrp	x9, 0x85000 <_ZN4core3fmt3num3imp52_$LT$impl$u20$core..fmt..Display$u20$for$u20$u64$GT$3fmt17h3635720e402b4b05E+0x2c>
   80f44: 29 29 13 91  	add	x9, x9, #1226
   80f48: e3 04 00 54  	b.lo	0x80fe4 <_ZN4core3fmt3num3imp52_$LT$impl$u20$core..fmt..Display$u20$for$u20$u64$GT$3fmt17h3635720e402b4b05E+0xbc>
   80f4c: 6c 29 8b d2  	mov	x12, #22859
   80f50: cc 10 a7 f2  	movk	x12, #14470, lsl #16
   80f54: cc ba d8 f2  	movk	x12, #50646, lsl #32
   80f58: ee a3 90 52  	mov	w14, #34079
   80f5c: f1 1f 9c 52  	mov	w17, #57599
   80f60: eb 03 1f aa  	mov	x11, xzr
   80f64: ac 8d e6 f2  	movk	x12, #13421, lsl #48
   80f68: ed e1 84 12  	mov	w13, #-10000
   80f6c: 6e 3d aa 72  	movk	w14, #20971, lsl #16
   80f70: 6f 0c 80 12  	mov	w15, #-100
   80f74: f0 23 00 91  	add	x16, sp, #8
   80f78: b1 be a0 72  	movk	w17, #1525, lsl #16
   80f7c: f2 03 0a aa  	mov	x18, x10
   80f80: 4a 7d cc 9b  	umulh	x10, x10, x12
   80f84: 4a fd 4b d3  	lsr	x10, x10, #11
   80f88: 5f 02 11 eb  	cmp	x18, x17
   80f8c: 52 49 0d 1b  	madd	w18, w10, w13, w18
   80f90: 41 3e 00 12  	and	w1, w18, #0xffff
   80f94: 21 7c ae 9b  	umull	x1, w1, w14
   80f98: 21 fc 65 d3  	lsr	x1, x1, #37
   80f9c: 32 48 0f 1b  	madd	w18, w1, w15, w18
   80fa0: 21 05 01 8b  	add	x1, x9, x1, lsl #1
   80fa4: 32 25 32 8b  	add	x18, x9, w18, uxth #1
   80fa8: 22 00 40 39  	ldrb	w2, [x1]
   80fac: 21 04 40 39  	ldrb	w1, [x1, #1]
   80fb0: 43 06 40 39  	ldrb	w3, [x18, #1]
   80fb4: 52 02 40 39  	ldrb	w18, [x18]
   80fb8: 00 02 0b 8b  	add	x0, x16, x11
   80fbc: 6b 11 00 d1  	sub	x11, x11, #4
   80fc0: 01 90 00 39  	strb	w1, [x0, #36]
   80fc4: 02 8c 00 39  	strb	w2, [x0, #35]
   80fc8: 03 98 00 39  	strb	w3, [x0, #38]
   80fcc: 12 94 00 39  	strb	w18, [x0, #37]
   80fd0: 68 fd ff 54  	b.hi	0x80f7c <_ZN4core3fmt3num3imp52_$LT$impl$u20$core..fmt..Display$u20$for$u20$u64$GT$3fmt17h3635720e402b4b05E+0x54>
   80fd4: 6b 9d 00 91  	add	x11, x11, #39
   80fd8: 5f 8d 01 f1  	cmp	x10, #99
   80fdc: ac 00 00 54  	b.gt	0x80ff0 <_ZN4core3fmt3num3imp52_$LT$impl$u20$core..fmt..Display$u20$for$u20$u64$GT$3fmt17h3635720e402b4b05E+0xc8>
   80fe0: 14 00 00 14  	b	0x81030 <_ZN4core3fmt3num3imp52_$LT$impl$u20$core..fmt..Display$u20$for$u20$u64$GT$3fmt17h3635720e402b4b05E+0x108>
   80fe4: eb 04 80 52  	mov	w11, #39
   80fe8: 5f 8d 01 f1  	cmp	x10, #99
   80fec: 2d 02 00 54  	b.le	0x81030 <_ZN4core3fmt3num3imp52_$LT$impl$u20$core..fmt..Display$u20$for$u20$u64$GT$3fmt17h3635720e402b4b05E+0x108>
   80ff0: ed a3 90 52  	mov	w13, #34079
   80ff4: 4c 3d 00 12  	and	w12, w10, #0xffff
   80ff8: 6d 3d aa 72  	movk	w13, #20971, lsl #16
   80ffc: 8c 7d ad 9b  	umull	x12, w12, w13
   81000: 6e 0c 80 12  	mov	w14, #-100
   81004: 8c fd 65 d3  	lsr	x12, x12, #37
   81008: 8a 29 0e 1b  	madd	w10, w12, w14, w10
   8100c: 2a 25 2a 8b  	add	x10, x9, w10, uxth #1
   81010: 4d 05 40 39  	ldrb	w13, [x10, #1]
   81014: 4a 01 40 39  	ldrb	w10, [x10]
   81018: 6b 09 00 d1  	sub	x11, x11, #2
   8101c: ee 23 00 91  	add	x14, sp, #8
   81020: ce 01 0b 8b  	add	x14, x14, x11
   81024: ca 01 00 39  	strb	w10, [x14]
   81028: ea 03 0c aa  	mov	x10, x12
   8102c: cd 05 00 39  	strb	w13, [x14, #1]
   81030: 5f 29 00 f1  	cmp	x10, #10
   81034: ca 00 00 54  	b.ge	0x8104c <_ZN4core3fmt3num3imp52_$LT$impl$u20$core..fmt..Display$u20$for$u20$u64$GT$3fmt17h3635720e402b4b05E+0x124>
   81038: 6b 05 00 d1  	sub	x11, x11, #1
   8103c: 49 c1 00 11  	add	w9, w10, #48
   81040: ea 23 00 91  	add	x10, sp, #8
   81044: 49 69 2b 38  	strb	w9, [x10, x11]
   81048: 09 00 00 14  	b	0x8106c <_ZN4core3fmt3num3imp52_$LT$impl$u20$core..fmt..Display$u20$for$u20$u64$GT$3fmt17h3635720e402b4b05E+0x144>
   8104c: 29 05 0a 8b  	add	x9, x9, x10, lsl #1
   81050: 2a 05 40 39  	ldrb	w10, [x9, #1]
   81054: 29 01 40 39  	ldrb	w9, [x9]
   81058: 6b 09 00 d1  	sub	x11, x11, #2
   8105c: ec 23 00 91  	add	x12, sp, #8
   81060: 8c 01 0b 8b  	add	x12, x12, x11
   81064: 8a 05 00 39  	strb	w10, [x12, #1]
   81068: 89 01 00 39  	strb	w9, [x12]
   8106c: e9 23 00 91  	add	x9, sp, #8
   81070: ea 04 80 52  	mov	w10, #39
   81074: 21 00 00 90  	adrp	x1, 0x85000 <_ZN4core3fmt3num3imp52_$LT$impl$u20$core..fmt..Display$u20$for$u20$u64$GT$3fmt17h3635720e402b4b05E+0x15c>
   81078: 23 01 0b 8b  	add	x3, x9, x11
   8107c: 44 01 0b cb  	sub	x4, x10, x11
   81080: 21 e0 10 91  	add	x1, x1, #1080
   81084: e0 03 08 aa  	mov	x0, x8
   81088: e2 03 1f aa  	mov	x2, xzr
   8108c: 13 00 00 94  	bl	0x810d8 <_ZN4core3fmt9Formatter12pad_integral17ha6f583ca7a70f44dE>
   81090: fe 1b 40 f9  	ldr	x30, [sp, #48]
   81094: ff 03 01 91  	add	sp, sp, #64
   81098: c0 03 5f d6  	ret

000000000008109c <_ZN4core9panicking9panic_fmt17h136e9995f1aed1cdE>:
   8109c: 28 00 00 90  	adrp	x8, 0x85000 <_ZN4core9panicking9panic_fmt17h136e9995f1aed1cdE+0x10>
   810a0: 29 00 00 90  	adrp	x9, 0x85000 <_ZN4core9panicking9panic_fmt17h136e9995f1aed1cdE+0x14>
   810a4: 08 e1 10 91  	add	x8, x8, #1080
   810a8: 29 e1 10 91  	add	x9, x9, #1080
   810ac: e8 27 be a9  	stp	x8, x9, [sp, #-32]!
   810b0: e0 07 01 a9  	stp	x0, x1, [sp, #16]
   810b4: e0 03 00 91  	mov	x0, sp
   810b8: 44 ff ff 97  	bl	0x80dc8 <rust_begin_unwind>
   810bc: 20 00 20 d4  	brk	#0x1

00000000000810c0 <_ZN4core3ptr102drop_in_place$LT$$RF$core..iter..adapters..copied..Copied$LT$core..slice..iter..Iter$LT$u8$GT$$GT$$GT$17h4126b20262e0ab35E>:
   810c0: c0 03 5f d6  	ret

00000000000810c4 <_ZN36_$LT$T$u20$as$u20$core..any..Any$GT$7type_id17hf8fe02da2457d98aE>:
   810c4: a0 1c 91 d2  	mov	x0, #35045
   810c8: c0 03 b0 f2  	movk	x0, #32798, lsl #16
   810cc: a0 b2 d5 f2  	movk	x0, #44437, lsl #32
   810d0: 00 d2 e7 f2  	movk	x0, #16016, lsl #48
   810d4: c0 03 5f d6  	ret

00000000000810d8 <_ZN4core3fmt9Formatter12pad_integral17ha6f583ca7a70f44dE>:
   810d8: fd 7b ba a9  	stp	x29, x30, [sp, #-96]!
   810dc: fc 6f 01 a9  	stp	x28, x27, [sp, #16]
   810e0: fa 67 02 a9  	stp	x26, x25, [sp, #32]
   810e4: f8 5f 03 a9  	stp	x24, x23, [sp, #48]
   810e8: f6 57 04 a9  	stp	x22, x21, [sp, #64]
   810ec: f4 4f 05 a9  	stp	x20, x19, [sp, #80]
   810f0: 08 30 40 b9  	ldr	w8, [x0, #48]
   810f4: 69 05 80 52  	mov	w9, #43
   810f8: 2a 02 a0 52  	mov	w10, #1114112
   810fc: f3 03 04 aa  	mov	x19, x4
   81100: 0b 01 40 92  	and	x11, x8, #0x1
   81104: 7f 01 00 71  	cmp	w11, #0
   81108: f4 03 03 aa  	mov	x20, x3
   8110c: f5 03 00 aa  	mov	x21, x0
   81110: 58 01 89 1a  	csel	w24, w10, w9, eq
   81114: 69 01 04 8b  	add	x9, x11, x4
   81118: e8 00 10 37  	tbnz	w8, #2, 0x81134 <_ZN4core3fmt9Formatter12pad_integral17ha6f583ca7a70f44dE+0x5c>
   8111c: f7 03 1f aa  	mov	x23, xzr
   81120: f6 03 1f aa  	mov	x22, xzr
   81124: aa 02 40 f9  	ldr	x10, [x21]
   81128: 5f 05 00 f1  	cmp	x10, #1
   8112c: 20 05 00 54  	b.eq	0x811d0 <_ZN4core3fmt9Formatter12pad_integral17ha6f583ca7a70f44dE+0xf8>
   81130: 35 00 00 14  	b	0x81204 <_ZN4core3fmt9Formatter12pad_integral17ha6f583ca7a70f44dE+0x12c>
   81134: f6 03 02 aa  	mov	x22, x2
   81138: f7 03 01 aa  	mov	x23, x1
   8113c: eb 03 02 aa  	mov	x11, x2
   81140: 02 04 00 b4  	cbz	x2, 0x811c0 <_ZN4core3fmt9Formatter12pad_integral17ha6f583ca7a70f44dE+0xe8>
   81144: df 06 00 f1  	cmp	x22, #1
   81148: 81 00 00 54  	b.ne	0x81158 <_ZN4core3fmt9Formatter12pad_integral17ha6f583ca7a70f44dE+0x80>
   8114c: eb 03 1f aa  	mov	x11, xzr
   81150: ea 03 17 aa  	mov	x10, x23
   81154: 14 00 00 14  	b	0x811a4 <_ZN4core3fmt9Formatter12pad_integral17ha6f583ca7a70f44dE+0xcc>
   81158: ca fa 7f 92  	and	x10, x22, #0xfffffffffffffffe
   8115c: eb 03 1f aa  	mov	x11, xzr
   81160: ec 03 1f aa  	mov	x12, xzr
   81164: ed 06 00 91  	add	x13, x23, #1
   81168: ee 03 0a aa  	mov	x14, x10
   8116c: af f1 5f 38  	ldurb	w15, [x13, #-1]
   81170: b0 25 40 38  	ldrb	w16, [x13], #2
   81174: ef 05 1a 12  	and	w15, w15, #0xc0
   81178: 10 06 1a 12  	and	w16, w16, #0xc0
   8117c: ff 01 02 71  	cmp	w15, #128
   81180: 6b 05 8b 9a  	cinc	x11, x11, ne
   81184: 1f 02 02 71  	cmp	w16, #128
   81188: 8c 05 8c 9a  	cinc	x12, x12, ne
   8118c: ce 09 00 f1  	subs	x14, x14, #2
   81190: e1 fe ff 54  	b.ne	0x8116c <_ZN4core3fmt9Formatter12pad_integral17ha6f583ca7a70f44dE+0x94>
   81194: 5f 01 16 eb  	cmp	x10, x22
   81198: 8b 01 0b 8b  	add	x11, x12, x11
   8119c: 20 01 00 54  	b.eq	0x811c0 <_ZN4core3fmt9Formatter12pad_integral17ha6f583ca7a70f44dE+0xe8>
   811a0: ea 02 0a 8b  	add	x10, x23, x10
   811a4: ec 02 16 8b  	add	x12, x23, x22
   811a8: 4d 15 40 38  	ldrb	w13, [x10], #1
   811ac: ad 05 1a 12  	and	w13, w13, #0xc0
   811b0: bf 01 02 71  	cmp	w13, #128
   811b4: 6b 05 8b 9a  	cinc	x11, x11, ne
   811b8: 9f 01 0a eb  	cmp	x12, x10
   811bc: 61 ff ff 54  	b.ne	0x811a8 <_ZN4core3fmt9Formatter12pad_integral17ha6f583ca7a70f44dE+0xd0>
   811c0: 69 01 09 8b  	add	x9, x11, x9
   811c4: aa 02 40 f9  	ldr	x10, [x21]
   811c8: 5f 05 00 f1  	cmp	x10, #1
   811cc: c1 01 00 54  	b.ne	0x81204 <_ZN4core3fmt9Formatter12pad_integral17ha6f583ca7a70f44dE+0x12c>
   811d0: aa 06 40 f9  	ldr	x10, [x21, #8]
   811d4: 5c 01 09 eb  	subs	x28, x10, x9
   811d8: 69 01 00 54  	b.ls	0x81204 <_ZN4core3fmt9Formatter12pad_integral17ha6f583ca7a70f44dE+0x12c>
   811dc: 88 04 18 37  	tbnz	w8, #3, 0x8126c <_ZN4core3fmt9Formatter12pad_integral17ha6f583ca7a70f44dE+0x194>
   811e0: a8 e2 40 39  	ldrb	w8, [x21, #56]
   811e4: 1f 0d 00 71  	cmp	w8, #3
   811e8: 08 15 9f 1a  	csinc	w8, w8, wzr, ne
   811ec: 08 05 00 72  	ands	w8, w8, #0x3
   811f0: a0 06 00 54  	b.eq	0x812c4 <_ZN4core3fmt9Formatter12pad_integral17ha6f583ca7a70f44dE+0x1ec>
   811f4: 1f 05 00 71  	cmp	w8, #1
   811f8: c1 06 00 54  	b.ne	0x812d0 <_ZN4core3fmt9Formatter12pad_integral17ha6f583ca7a70f44dE+0x1f8>
   811fc: fd 03 1f aa  	mov	x29, xzr
   81200: 37 00 00 14  	b	0x812dc <_ZN4core3fmt9Formatter12pad_integral17ha6f583ca7a70f44dE+0x204>
   81204: e0 03 15 aa  	mov	x0, x21
   81208: e1 03 18 2a  	mov	w1, w24
   8120c: e2 03 17 aa  	mov	x2, x23
   81210: e3 03 16 aa  	mov	x3, x22
   81214: 65 00 00 94  	bl	0x813a8 <_ZN4core3fmt9Formatter12pad_integral12write_prefix17h7a2809ec683865f4E>
   81218: 40 01 00 36  	tbz	w0, #0, 0x81240 <_ZN4core3fmt9Formatter12pad_integral17ha6f583ca7a70f44dE+0x168>
   8121c: 39 00 80 52  	mov	w25, #1
   81220: e0 03 19 2a  	mov	w0, w25
   81224: f4 4f 45 a9  	ldp	x20, x19, [sp, #80]
   81228: f6 57 44 a9  	ldp	x22, x21, [sp, #64]
   8122c: f8 5f 43 a9  	ldp	x24, x23, [sp, #48]
   81230: fa 67 42 a9  	ldp	x26, x25, [sp, #32]
   81234: fc 6f 41 a9  	ldp	x28, x27, [sp, #16]
   81238: fd 7b c6 a8  	ldp	x29, x30, [sp], #96
   8123c: c0 03 5f d6  	ret
   81240: a0 22 42 a9  	ldp	x0, x8, [x21, #32]
   81244: e1 03 14 aa  	mov	x1, x20
   81248: e2 03 13 aa  	mov	x2, x19
   8124c: f4 4f 45 a9  	ldp	x20, x19, [sp, #80]
   81250: 03 0d 40 f9  	ldr	x3, [x8, #24]
   81254: f6 57 44 a9  	ldp	x22, x21, [sp, #64]
   81258: f8 5f 43 a9  	ldp	x24, x23, [sp, #48]
   8125c: fa 67 42 a9  	ldp	x26, x25, [sp, #32]
   81260: fc 6f 41 a9  	ldp	x28, x27, [sp, #16]
   81264: fd 7b c6 a8  	ldp	x29, x30, [sp], #96
   81268: 60 00 1f d6  	br	x3
   8126c: ba 36 40 b9  	ldr	w26, [x21, #52]
   81270: bb e2 40 39  	ldrb	w27, [x21, #56]
   81274: 08 06 80 52  	mov	w8, #48
   81278: 39 00 80 52  	mov	w25, #1
   8127c: e0 03 15 aa  	mov	x0, x21
   81280: e1 03 18 2a  	mov	w1, w24
   81284: e2 03 17 aa  	mov	x2, x23
   81288: e3 03 16 aa  	mov	x3, x22
   8128c: a8 36 00 b9  	str	w8, [x21, #52]
   81290: b9 e2 00 39  	strb	w25, [x21, #56]
   81294: 45 00 00 94  	bl	0x813a8 <_ZN4core3fmt9Formatter12pad_integral12write_prefix17h7a2809ec683865f4E>
   81298: 40 fc 07 37  	tbnz	w0, #0, 0x81220 <_ZN4core3fmt9Formatter12pad_integral17ha6f583ca7a70f44dE+0x148>
   8129c: b6 5e 42 a9  	ldp	x22, x23, [x21, #32]
   812a0: 98 07 00 91  	add	x24, x28, #1
   812a4: 18 07 00 f1  	subs	x24, x24, #1
   812a8: 40 06 00 54  	b.eq	0x81370 <_ZN4core3fmt9Formatter12pad_integral17ha6f583ca7a70f44dE+0x298>
   812ac: e8 12 40 f9  	ldr	x8, [x23, #32]
   812b0: 01 06 80 52  	mov	w1, #48
   812b4: e0 03 16 aa  	mov	x0, x22
   812b8: 00 01 3f d6  	blr	x8
   812bc: 40 ff 07 36  	tbz	w0, #0, 0x812a4 <_ZN4core3fmt9Formatter12pad_integral17ha6f583ca7a70f44dE+0x1cc>
   812c0: d7 ff ff 17  	b	0x8121c <_ZN4core3fmt9Formatter12pad_integral17ha6f583ca7a70f44dE+0x144>
   812c4: fd 03 1c aa  	mov	x29, x28
   812c8: fc 03 1f aa  	mov	x28, xzr
   812cc: 04 00 00 14  	b	0x812dc <_ZN4core3fmt9Formatter12pad_integral17ha6f583ca7a70f44dE+0x204>
   812d0: 88 07 00 91  	add	x8, x28, #1
   812d4: 9c ff 41 d3  	lsr	x28, x28, #1
   812d8: 1d fd 41 d3  	lsr	x29, x8, #1
   812dc: b9 6e 42 a9  	ldp	x25, x27, [x21, #32]
   812e0: ba 36 40 b9  	ldr	w26, [x21, #52]
   812e4: 9c 07 00 91  	add	x28, x28, #1
   812e8: 9c 07 00 f1  	subs	x28, x28, #1
   812ec: e0 00 00 54  	b.eq	0x81308 <_ZN4core3fmt9Formatter12pad_integral17ha6f583ca7a70f44dE+0x230>
   812f0: 68 13 40 f9  	ldr	x8, [x27, #32]
   812f4: e0 03 19 aa  	mov	x0, x25
   812f8: e1 03 1a 2a  	mov	w1, w26
   812fc: 00 01 3f d6  	blr	x8
   81300: 40 ff 07 36  	tbz	w0, #0, 0x812e8 <_ZN4core3fmt9Formatter12pad_integral17ha6f583ca7a70f44dE+0x210>
   81304: c6 ff ff 17  	b	0x8121c <_ZN4core3fmt9Formatter12pad_integral17ha6f583ca7a70f44dE+0x144>
   81308: 5f 43 44 71  	cmp	w26, #272, lsl #12
   8130c: fc 03 9d 9a  	csel	x28, xzr, x29, eq
   81310: 60 f8 ff 54  	b.eq	0x8121c <_ZN4core3fmt9Formatter12pad_integral17ha6f583ca7a70f44dE+0x144>
   81314: e0 03 15 aa  	mov	x0, x21
   81318: e1 03 18 2a  	mov	w1, w24
   8131c: e2 03 17 aa  	mov	x2, x23
   81320: e3 03 16 aa  	mov	x3, x22
   81324: 21 00 00 94  	bl	0x813a8 <_ZN4core3fmt9Formatter12pad_integral12write_prefix17h7a2809ec683865f4E>
   81328: a0 f7 07 37  	tbnz	w0, #0, 0x8121c <_ZN4core3fmt9Formatter12pad_integral17ha6f583ca7a70f44dE+0x144>
   8132c: 68 0f 40 f9  	ldr	x8, [x27, #24]
   81330: e0 03 19 aa  	mov	x0, x25
   81334: e1 03 14 aa  	mov	x1, x20
   81338: e2 03 13 aa  	mov	x2, x19
   8133c: 00 01 3f d6  	blr	x8
   81340: e0 f6 07 37  	tbnz	w0, #0, 0x8121c <_ZN4core3fmt9Formatter12pad_integral17ha6f583ca7a70f44dE+0x144>
   81344: f3 03 1f aa  	mov	x19, xzr
   81348: 9f 03 13 eb  	cmp	x28, x19
   8134c: 60 02 00 54  	b.eq	0x81398 <_ZN4core3fmt9Formatter12pad_integral17ha6f583ca7a70f44dE+0x2c0>
   81350: 68 13 40 f9  	ldr	x8, [x27, #32]
   81354: e0 03 19 aa  	mov	x0, x25
   81358: e1 03 1a 2a  	mov	w1, w26
   8135c: 73 06 00 91  	add	x19, x19, #1
   81360: 00 01 3f d6  	blr	x8
   81364: 20 ff ff 34  	cbz	w0, 0x81348 <_ZN4core3fmt9Formatter12pad_integral17ha6f583ca7a70f44dE+0x270>
   81368: 68 06 00 d1  	sub	x8, x19, #1
   8136c: 0c 00 00 14  	b	0x8139c <_ZN4core3fmt9Formatter12pad_integral17ha6f583ca7a70f44dE+0x2c4>
   81370: e8 0e 40 f9  	ldr	x8, [x23, #24]
   81374: e0 03 16 aa  	mov	x0, x22
   81378: e1 03 14 aa  	mov	x1, x20
   8137c: e2 03 13 aa  	mov	x2, x19
   81380: 00 01 3f d6  	blr	x8
   81384: c0 f4 07 37  	tbnz	w0, #0, 0x8121c <_ZN4core3fmt9Formatter12pad_integral17ha6f583ca7a70f44dE+0x144>
   81388: f9 03 1f 2a  	mov	w25, wzr
   8138c: ba 36 00 b9  	str	w26, [x21, #52]
   81390: bb e2 00 39  	strb	w27, [x21, #56]
   81394: a3 ff ff 17  	b	0x81220 <_ZN4core3fmt9Formatter12pad_integral17ha6f583ca7a70f44dE+0x148>
   81398: e8 03 1c aa  	mov	x8, x28
   8139c: 1f 01 1c eb  	cmp	x8, x28
   813a0: f9 27 9f 1a  	cset	w25, lo
   813a4: 9f ff ff 17  	b	0x81220 <_ZN4core3fmt9Formatter12pad_integral17ha6f583ca7a70f44dE+0x148>

00000000000813a8 <_ZN4core3fmt9Formatter12pad_integral12write_prefix17h7a2809ec683865f4E>:
   813a8: fe 57 be a9  	stp	x30, x21, [sp, #-32]!
   813ac: f4 4f 01 a9  	stp	x20, x19, [sp, #16]
   813b0: f3 03 03 aa  	mov	x19, x3
   813b4: f4 03 02 aa  	mov	x20, x2
   813b8: 3f 40 44 71  	cmp	w1, #272, lsl #12
   813bc: f5 03 00 aa  	mov	x21, x0
   813c0: 20 01 00 54  	b.eq	0x813e4 <_ZN4core3fmt9Formatter12pad_integral12write_prefix17h7a2809ec683865f4E+0x3c>
   813c4: a0 22 42 a9  	ldp	x0, x8, [x21, #32]
   813c8: 08 11 40 f9  	ldr	x8, [x8, #32]
   813cc: 00 01 3f d6  	blr	x8
   813d0: a0 00 00 36  	tbz	w0, #0, 0x813e4 <_ZN4core3fmt9Formatter12pad_integral12write_prefix17h7a2809ec683865f4E+0x3c>
   813d4: 20 00 80 52  	mov	w0, #1
   813d8: f4 4f 41 a9  	ldp	x20, x19, [sp, #16]
   813dc: fe 57 c2 a8  	ldp	x30, x21, [sp], #32
   813e0: c0 03 5f d6  	ret
   813e4: 14 01 00 b4  	cbz	x20, 0x81404 <_ZN4core3fmt9Formatter12pad_integral12write_prefix17h7a2809ec683865f4E+0x5c>
   813e8: a0 22 42 a9  	ldp	x0, x8, [x21, #32]
   813ec: e1 03 14 aa  	mov	x1, x20
   813f0: e2 03 13 aa  	mov	x2, x19
   813f4: f4 4f 41 a9  	ldp	x20, x19, [sp, #16]
   813f8: 03 0d 40 f9  	ldr	x3, [x8, #24]
   813fc: fe 57 c2 a8  	ldp	x30, x21, [sp], #32
   81400: 60 00 1f d6  	br	x3
   81404: e0 03 1f 2a  	mov	w0, wzr
   81408: f4 4f 41 a9  	ldp	x20, x19, [sp, #16]
   8140c: fe 57 c2 a8  	ldp	x30, x21, [sp], #32
   81410: c0 03 5f d6  	ret

0000000000081414 <_ZN4core5slice5index26slice_start_index_len_fail17ha3ad23336e78e7f7E>:
   81414: e0 07 ba a9  	stp	x0, x1, [sp, #-96]!
   81418: e9 ff ff f0  	adrp	x9, 0x80000 <_ZN4core5slice5index26slice_start_index_len_fail17ha3ad23336e78e7f7E>
   8141c: e8 03 00 91  	mov	x8, sp
   81420: 29 a1 3c 91  	add	x9, x9, #3880
   81424: 2b 00 00 90  	adrp	x11, 0x85000 <_ZN4core5slice5index26slice_start_index_len_fail17ha3ad23336e78e7f7E+0x20>
   81428: ea 23 00 91  	add	x10, sp, #8
   8142c: 6b 61 16 91  	add	x11, x11, #1432
   81430: 4c 00 80 52  	mov	w12, #2
   81434: e8 27 04 a9  	stp	x8, x9, [sp, #64]
   81438: e8 03 01 91  	add	x8, sp, #64
   8143c: e0 43 00 91  	add	x0, sp, #16
   81440: e1 03 02 aa  	mov	x1, x2
   81444: ff 7f 02 a9  	stp	xzr, xzr, [sp, #32]
   81448: ea 27 05 a9  	stp	x10, x9, [sp, #80]
   8144c: eb 33 01 a9  	stp	x11, x12, [sp, #16]
   81450: e8 33 03 a9  	stp	x8, x12, [sp, #48]
   81454: 12 ff ff 97  	bl	0x8109c <_ZN4core9panicking9panic_fmt17h136e9995f1aed1cdE>
   81458: 20 00 20 d4  	brk	#0x1

000000000008145c <_ZN4core5slice5index24slice_end_index_len_fail17hfcb16d41a5d796d5E>:
   8145c: e0 07 ba a9  	stp	x0, x1, [sp, #-96]!
   81460: e9 ff ff f0  	adrp	x9, 0x80000 <_ZN4core5slice5index24slice_end_index_len_fail17hfcb16d41a5d796d5E>
   81464: e8 03 00 91  	mov	x8, sp
   81468: 29 a1 3c 91  	add	x9, x9, #3880
   8146c: 2b 00 00 90  	adrp	x11, 0x85000 <_ZN4core5slice5index24slice_end_index_len_fail17hfcb16d41a5d796d5E+0x20>
   81470: ea 23 00 91  	add	x10, sp, #8
   81474: 6b c1 17 91  	add	x11, x11, #1520
   81478: 4c 00 80 52  	mov	w12, #2
   8147c: e8 27 04 a9  	stp	x8, x9, [sp, #64]
   81480: e8 03 01 91  	add	x8, sp, #64
   81484: e0 43 00 91  	add	x0, sp, #16
   81488: e1 03 02 aa  	mov	x1, x2
   8148c: ff 7f 02 a9  	stp	xzr, xzr, [sp, #32]
   81490: ea 27 05 a9  	stp	x10, x9, [sp, #80]
   81494: eb 33 01 a9  	stp	x11, x12, [sp, #16]
   81498: e8 33 03 a9  	stp	x8, x12, [sp, #48]
   8149c: 00 ff ff 97  	bl	0x8109c <_ZN4core9panicking9panic_fmt17h136e9995f1aed1cdE>
   814a0: 20 00 20 d4  	brk	#0x1

00000000000814a4 <_ZN4core9panicking5panic17h0d86cd7d69f331f6E>:
   814a4: ff 03 01 d1  	sub	sp, sp, #64
   814a8: 2a 00 00 90  	adrp	x10, 0x85000 <_ZN4core9panicking5panic17h0d86cd7d69f331f6E+0x14>
   814ac: e0 07 03 a9  	stp	x0, x1, [sp, #48]
   814b0: e8 c3 00 91  	add	x8, sp, #48
   814b4: 29 00 80 52  	mov	w9, #1
   814b8: 4a e1 10 91  	add	x10, x10, #1080
   814bc: e0 03 00 91  	mov	x0, sp
   814c0: e1 03 02 aa  	mov	x1, x2
   814c4: ff 7f 01 a9  	stp	xzr, xzr, [sp, #16]
   814c8: e8 27 00 a9  	stp	x8, x9, [sp]
   814cc: ea 7f 02 a9  	stp	x10, xzr, [sp, #32]
   814d0: f3 fe ff 97  	bl	0x8109c <_ZN4core9panicking9panic_fmt17h136e9995f1aed1cdE>
   814d4: 20 00 20 d4  	brk	#0x1

00000000000814d8 <_ZN44_$LT$$RF$T$u20$as$u20$core..fmt..Display$GT$3fmt17h36ba8db926b991f8E>:
   814d8: fe 67 bc a9  	stp	x30, x25, [sp, #-64]!
   814dc: f8 5f 01 a9  	stp	x24, x23, [sp, #16]
   814e0: f6 57 02 a9  	stp	x22, x21, [sp, #32]
   814e4: f4 4f 03 a9  	stp	x20, x19, [sp, #48]
   814e8: 28 00 40 f9  	ldr	x8, [x1]
   814ec: 14 4c 40 a9  	ldp	x20, x19, [x0]
   814f0: 29 08 40 f9  	ldr	x9, [x1, #16]
   814f4: 1f 05 00 f1  	cmp	x8, #1
   814f8: 81 00 00 54  	b.ne	0x81508 <_ZN44_$LT$$RF$T$u20$as$u20$core..fmt..Display$GT$3fmt17h36ba8db926b991f8E+0x30>
   814fc: 3f 05 00 f1  	cmp	x9, #1
   81500: 80 00 00 54  	b.eq	0x81510 <_ZN44_$LT$$RF$T$u20$as$u20$core..fmt..Display$GT$3fmt17h36ba8db926b991f8E+0x38>
   81504: 5a 00 00 14  	b	0x8166c <_ZN44_$LT$$RF$T$u20$as$u20$core..fmt..Display$GT$3fmt17h36ba8db926b991f8E+0x194>
   81508: 3f 05 00 f1  	cmp	x9, #1
   8150c: 81 10 00 54  	b.ne	0x8171c <_ZN44_$LT$$RF$T$u20$as$u20$core..fmt..Display$GT$3fmt17h36ba8db926b991f8E+0x244>
   81510: 2b 0c 40 f9  	ldr	x11, [x1, #24]
   81514: 8a 02 13 8b  	add	x10, x20, x19
   81518: e9 03 1f aa  	mov	x9, xzr
   8151c: 6b 06 00 b4  	cbz	x11, 0x815e8 <_ZN44_$LT$$RF$T$u20$as$u20$core..fmt..Display$GT$3fmt17h36ba8db926b991f8E+0x110>
   81520: ed 03 14 aa  	mov	x13, x20
   81524: 0e 00 00 14  	b	0x8155c <_ZN44_$LT$$RF$T$u20$as$u20$core..fmt..Display$GT$3fmt17h36ba8db926b991f8E+0x84>
   81528: 91 15 40 38  	ldrb	w17, [x12], #1
   8152c: 31 16 00 12  	and	w17, w17, #0x3f
   81530: ef 09 0e 53  	ubfiz	w15, w15, #18, #3
   81534: cf 15 14 33  	bfi	w15, w14, #12, #6
   81538: 0f 16 1a 33  	bfi	w15, w16, #6, #6
   8153c: ee 01 11 2a  	orr	w14, w15, w17
   81540: df 41 44 71  	cmp	w14, #272, lsl #12
   81544: 00 09 00 54  	b.eq	0x81664 <_ZN44_$LT$$RF$T$u20$as$u20$core..fmt..Display$GT$3fmt17h36ba8db926b991f8E+0x18c>
   81548: 29 01 0d cb  	sub	x9, x9, x13
   8154c: 6b 05 00 f1  	subs	x11, x11, #1
   81550: 29 01 0c 8b  	add	x9, x9, x12
   81554: ed 03 0c aa  	mov	x13, x12
   81558: a0 04 00 54  	b.eq	0x815ec <_ZN44_$LT$$RF$T$u20$as$u20$core..fmt..Display$GT$3fmt17h36ba8db926b991f8E+0x114>
   8155c: bf 01 0a eb  	cmp	x13, x10
   81560: 20 08 00 54  	b.eq	0x81664 <_ZN44_$LT$$RF$T$u20$as$u20$core..fmt..Display$GT$3fmt17h36ba8db926b991f8E+0x18c>
   81564: ec 03 0d aa  	mov	x12, x13
   81568: 8f 15 c0 38  	ldrsb	w15, [x12], #1
   8156c: ef fe ff 36  	tbz	w15, #31, 0x81548 <_ZN44_$LT$$RF$T$u20$as$u20$core..fmt..Display$GT$3fmt17h36ba8db926b991f8E+0x70>
   81570: 9f 01 0a eb  	cmp	x12, x10
   81574: 00 01 00 54  	b.eq	0x81594 <_ZN44_$LT$$RF$T$u20$as$u20$core..fmt..Display$GT$3fmt17h36ba8db926b991f8E+0xbc>
   81578: ae 05 40 39  	ldrb	w14, [x13, #1]
   8157c: ac 09 00 91  	add	x12, x13, #2
   81580: ce 15 00 12  	and	w14, w14, #0x3f
   81584: ef 1d 00 12  	and	w15, w15, #0xff
   81588: ff 81 03 71  	cmp	w15, #224
   8158c: e3 fd ff 54  	b.lo	0x81548 <_ZN44_$LT$$RF$T$u20$as$u20$core..fmt..Display$GT$3fmt17h36ba8db926b991f8E+0x70>
   81590: 06 00 00 14  	b	0x815a8 <_ZN44_$LT$$RF$T$u20$as$u20$core..fmt..Display$GT$3fmt17h36ba8db926b991f8E+0xd0>
   81594: ee 03 1f 2a  	mov	w14, wzr
   81598: ec 03 0a aa  	mov	x12, x10
   8159c: ef 1d 00 12  	and	w15, w15, #0xff
   815a0: ff 81 03 71  	cmp	w15, #224
   815a4: 23 fd ff 54  	b.lo	0x81548 <_ZN44_$LT$$RF$T$u20$as$u20$core..fmt..Display$GT$3fmt17h36ba8db926b991f8E+0x70>
   815a8: 9f 01 0a eb  	cmp	x12, x10
   815ac: c0 00 00 54  	b.eq	0x815c4 <_ZN44_$LT$$RF$T$u20$as$u20$core..fmt..Display$GT$3fmt17h36ba8db926b991f8E+0xec>
   815b0: 90 15 40 38  	ldrb	w16, [x12], #1
   815b4: 10 16 00 12  	and	w16, w16, #0x3f
   815b8: ff c1 03 71  	cmp	w15, #240
   815bc: 63 fc ff 54  	b.lo	0x81548 <_ZN44_$LT$$RF$T$u20$as$u20$core..fmt..Display$GT$3fmt17h36ba8db926b991f8E+0x70>
   815c0: 05 00 00 14  	b	0x815d4 <_ZN44_$LT$$RF$T$u20$as$u20$core..fmt..Display$GT$3fmt17h36ba8db926b991f8E+0xfc>
   815c4: f0 03 1f 2a  	mov	w16, wzr
   815c8: ec 03 0a aa  	mov	x12, x10
   815cc: ff c1 03 71  	cmp	w15, #240
   815d0: c3 fb ff 54  	b.lo	0x81548 <_ZN44_$LT$$RF$T$u20$as$u20$core..fmt..Display$GT$3fmt17h36ba8db926b991f8E+0x70>
   815d4: 9f 01 0a eb  	cmp	x12, x10
   815d8: 81 fa ff 54  	b.ne	0x81528 <_ZN44_$LT$$RF$T$u20$as$u20$core..fmt..Display$GT$3fmt17h36ba8db926b991f8E+0x50>
   815dc: f1 03 1f 2a  	mov	w17, wzr
   815e0: ec 03 0a aa  	mov	x12, x10
   815e4: d3 ff ff 17  	b	0x81530 <_ZN44_$LT$$RF$T$u20$as$u20$core..fmt..Display$GT$3fmt17h36ba8db926b991f8E+0x58>
   815e8: ec 03 14 aa  	mov	x12, x20
   815ec: 9f 01 0a eb  	cmp	x12, x10
   815f0: a0 03 00 54  	b.eq	0x81664 <_ZN44_$LT$$RF$T$u20$as$u20$core..fmt..Display$GT$3fmt17h36ba8db926b991f8E+0x18c>
   815f4: eb 03 0c aa  	mov	x11, x12
   815f8: 6d 15 c0 38  	ldrsb	w13, [x11], #1
   815fc: 4d 01 f8 37  	tbnz	w13, #31, 0x81624 <_ZN44_$LT$$RF$T$u20$as$u20$core..fmt..Display$GT$3fmt17h36ba8db926b991f8E+0x14c>
   81600: a9 02 00 b4  	cbz	x9, 0x81654 <_ZN44_$LT$$RF$T$u20$as$u20$core..fmt..Display$GT$3fmt17h36ba8db926b991f8E+0x17c>
   81604: 3f 01 13 eb  	cmp	x9, x19
   81608: 22 02 00 54  	b.hs	0x8164c <_ZN44_$LT$$RF$T$u20$as$u20$core..fmt..Display$GT$3fmt17h36ba8db926b991f8E+0x174>
   8160c: 8a 6a e9 38  	ldrsb	w10, [x20, x9]
   81610: 5f 01 01 31  	cmn	w10, #64
   81614: 0a 02 00 54  	b.ge	0x81654 <_ZN44_$LT$$RF$T$u20$as$u20$core..fmt..Display$GT$3fmt17h36ba8db926b991f8E+0x17c>
   81618: ea 03 1f aa  	mov	x10, xzr
   8161c: e9 03 1f aa  	mov	x9, xzr
   81620: 0e 00 00 14  	b	0x81658 <_ZN44_$LT$$RF$T$u20$as$u20$core..fmt..Display$GT$3fmt17h36ba8db926b991f8E+0x180>
   81624: 7f 01 0a eb  	cmp	x11, x10
   81628: ab 1d 00 12  	and	w11, w13, #0xff
   8162c: 80 12 00 54  	b.eq	0x8187c <_ZN44_$LT$$RF$T$u20$as$u20$core..fmt..Display$GT$3fmt17h36ba8db926b991f8E+0x3a4>
   81630: 8e 05 40 39  	ldrb	w14, [x12, #1]
   81634: 8d 09 00 91  	add	x13, x12, #2
   81638: cc 15 00 12  	and	w12, w14, #0x3f
   8163c: 8c 4d 14 53  	lsl	w12, w12, #12
   81640: 7f 81 03 71  	cmp	w11, #224
   81644: 42 12 00 54  	b.hs	0x8188c <_ZN44_$LT$$RF$T$u20$as$u20$core..fmt..Display$GT$3fmt17h36ba8db926b991f8E+0x3b4>
   81648: ee ff ff 17  	b	0x81600 <_ZN44_$LT$$RF$T$u20$as$u20$core..fmt..Display$GT$3fmt17h36ba8db926b991f8E+0x128>
   8164c: 3f 01 13 eb  	cmp	x9, x19
   81650: 41 fe ff 54  	b.ne	0x81618 <_ZN44_$LT$$RF$T$u20$as$u20$core..fmt..Display$GT$3fmt17h36ba8db926b991f8E+0x140>
   81654: ea 03 14 aa  	mov	x10, x20
   81658: 5f 01 00 f1  	cmp	x10, #0
   8165c: 94 02 8a 9a  	csel	x20, x20, x10, eq
   81660: 73 02 89 9a  	csel	x19, x19, x9, eq
   81664: 1f 05 00 f1  	cmp	x8, #1
   81668: a1 05 00 54  	b.ne	0x8171c <_ZN44_$LT$$RF$T$u20$as$u20$core..fmt..Display$GT$3fmt17h36ba8db926b991f8E+0x244>
   8166c: d3 00 00 b4  	cbz	x19, 0x81684 <_ZN44_$LT$$RF$T$u20$as$u20$core..fmt..Display$GT$3fmt17h36ba8db926b991f8E+0x1ac>
   81670: 7f 06 00 f1  	cmp	x19, #1
   81674: 01 01 00 54  	b.ne	0x81694 <_ZN44_$LT$$RF$T$u20$as$u20$core..fmt..Display$GT$3fmt17h36ba8db926b991f8E+0x1bc>
   81678: e9 03 1f aa  	mov	x9, xzr
   8167c: e8 03 14 aa  	mov	x8, x20
   81680: 18 00 00 14  	b	0x816e0 <_ZN44_$LT$$RF$T$u20$as$u20$core..fmt..Display$GT$3fmt17h36ba8db926b991f8E+0x208>
   81684: 28 04 40 f9  	ldr	x8, [x1, #8]
   81688: a8 04 00 b4  	cbz	x8, 0x8171c <_ZN44_$LT$$RF$T$u20$as$u20$core..fmt..Display$GT$3fmt17h36ba8db926b991f8E+0x244>
   8168c: e9 03 1f aa  	mov	x9, xzr
   81690: 46 00 00 14  	b	0x817a8 <_ZN44_$LT$$RF$T$u20$as$u20$core..fmt..Display$GT$3fmt17h36ba8db926b991f8E+0x2d0>
   81694: 68 fa 7f 92  	and	x8, x19, #0xfffffffffffffffe
   81698: e9 03 1f aa  	mov	x9, xzr
   8169c: ea 03 1f aa  	mov	x10, xzr
   816a0: 8b 06 00 91  	add	x11, x20, #1
   816a4: ec 03 08 aa  	mov	x12, x8
   816a8: 6d f1 5f 38  	ldurb	w13, [x11, #-1]
   816ac: 6e 25 40 38  	ldrb	w14, [x11], #2
   816b0: ad 05 1a 12  	and	w13, w13, #0xc0
   816b4: ce 05 1a 12  	and	w14, w14, #0xc0
   816b8: bf 01 02 71  	cmp	w13, #128
   816bc: 29 05 89 9a  	cinc	x9, x9, ne
   816c0: df 01 02 71  	cmp	w14, #128
   816c4: 4a 05 8a 9a  	cinc	x10, x10, ne
   816c8: 8c 09 00 f1  	subs	x12, x12, #2
   816cc: e1 fe ff 54  	b.ne	0x816a8 <_ZN44_$LT$$RF$T$u20$as$u20$core..fmt..Display$GT$3fmt17h36ba8db926b991f8E+0x1d0>
   816d0: 7f 02 08 eb  	cmp	x19, x8
   816d4: 49 01 09 8b  	add	x9, x10, x9
   816d8: 20 01 00 54  	b.eq	0x816fc <_ZN44_$LT$$RF$T$u20$as$u20$core..fmt..Display$GT$3fmt17h36ba8db926b991f8E+0x224>
   816dc: 88 02 08 8b  	add	x8, x20, x8
   816e0: 8a 02 13 8b  	add	x10, x20, x19
   816e4: 0b 15 40 38  	ldrb	w11, [x8], #1
   816e8: 6b 05 1a 12  	and	w11, w11, #0xc0
   816ec: 7f 01 02 71  	cmp	w11, #128
   816f0: 29 05 89 9a  	cinc	x9, x9, ne
   816f4: 5f 01 08 eb  	cmp	x10, x8
   816f8: 61 ff ff 54  	b.ne	0x816e4 <_ZN44_$LT$$RF$T$u20$as$u20$core..fmt..Display$GT$3fmt17h36ba8db926b991f8E+0x20c>
   816fc: 28 04 40 f9  	ldr	x8, [x1, #8]
   81700: 3f 01 08 eb  	cmp	x9, x8
   81704: c2 00 00 54  	b.hs	0x8171c <_ZN44_$LT$$RF$T$u20$as$u20$core..fmt..Display$GT$3fmt17h36ba8db926b991f8E+0x244>
   81708: 7f 06 00 f1  	cmp	x19, #1
   8170c: a8 01 00 54  	b.hi	0x81740 <_ZN44_$LT$$RF$T$u20$as$u20$core..fmt..Display$GT$3fmt17h36ba8db926b991f8E+0x268>
   81710: e9 03 1f aa  	mov	x9, xzr
   81714: ea 03 14 aa  	mov	x10, x20
   81718: 1d 00 00 14  	b	0x8178c <_ZN44_$LT$$RF$T$u20$as$u20$core..fmt..Display$GT$3fmt17h36ba8db926b991f8E+0x2b4>
   8171c: 20 20 42 a9  	ldp	x0, x8, [x1, #32]
   81720: e1 03 14 aa  	mov	x1, x20
   81724: e2 03 13 aa  	mov	x2, x19
   81728: f4 4f 43 a9  	ldp	x20, x19, [sp, #48]
   8172c: 03 0d 40 f9  	ldr	x3, [x8, #24]
   81730: f6 57 42 a9  	ldp	x22, x21, [sp, #32]
   81734: f8 5f 41 a9  	ldp	x24, x23, [sp, #16]
   81738: fe 67 c4 a8  	ldp	x30, x25, [sp], #64
   8173c: 60 00 1f d6  	br	x3
   81740: 6a fa 7f 92  	and	x10, x19, #0xfffffffffffffffe
   81744: e9 03 1f aa  	mov	x9, xzr
   81748: eb 03 1f aa  	mov	x11, xzr
   8174c: 8c 06 00 91  	add	x12, x20, #1
   81750: ed 03 0a aa  	mov	x13, x10
   81754: 8e f1 5f 38  	ldurb	w14, [x12, #-1]
   81758: 8f 25 40 38  	ldrb	w15, [x12], #2
   8175c: ce 05 1a 12  	and	w14, w14, #0xc0
   81760: ef 05 1a 12  	and	w15, w15, #0xc0
   81764: df 01 02 71  	cmp	w14, #128
   81768: 29 05 89 9a  	cinc	x9, x9, ne
   8176c: ff 01 02 71  	cmp	w15, #128
   81770: 6b 05 8b 9a  	cinc	x11, x11, ne
   81774: ad 09 00 f1  	subs	x13, x13, #2
   81778: e1 fe ff 54  	b.ne	0x81754 <_ZN44_$LT$$RF$T$u20$as$u20$core..fmt..Display$GT$3fmt17h36ba8db926b991f8E+0x27c>
   8177c: 7f 02 0a eb  	cmp	x19, x10
   81780: 69 01 09 8b  	add	x9, x11, x9
   81784: 20 01 00 54  	b.eq	0x817a8 <_ZN44_$LT$$RF$T$u20$as$u20$core..fmt..Display$GT$3fmt17h36ba8db926b991f8E+0x2d0>
   81788: 8a 02 0a 8b  	add	x10, x20, x10
   8178c: 8b 02 13 8b  	add	x11, x20, x19
   81790: 4c 15 40 38  	ldrb	w12, [x10], #1
   81794: 8c 05 1a 12  	and	w12, w12, #0xc0
   81798: 9f 01 02 71  	cmp	w12, #128
   8179c: 29 05 89 9a  	cinc	x9, x9, ne
   817a0: 7f 01 0a eb  	cmp	x11, x10
   817a4: 61 ff ff 54  	b.ne	0x81790 <_ZN44_$LT$$RF$T$u20$as$u20$core..fmt..Display$GT$3fmt17h36ba8db926b991f8E+0x2b8>
   817a8: 2a e0 40 39  	ldrb	w10, [x1, #56]
   817ac: 08 01 09 cb  	sub	x8, x8, x9
   817b0: 5f 0d 00 71  	cmp	w10, #3
   817b4: ea 03 8a 1a  	csel	w10, wzr, w10, eq
   817b8: 4a 05 00 72  	ands	w10, w10, #0x3
   817bc: a0 00 00 54  	b.eq	0x817d0 <_ZN44_$LT$$RF$T$u20$as$u20$core..fmt..Display$GT$3fmt17h36ba8db926b991f8E+0x2f8>
   817c0: 5f 05 00 71  	cmp	w10, #1
   817c4: c1 00 00 54  	b.ne	0x817dc <_ZN44_$LT$$RF$T$u20$as$u20$core..fmt..Display$GT$3fmt17h36ba8db926b991f8E+0x304>
   817c8: f8 03 1f aa  	mov	x24, xzr
   817cc: 07 00 00 14  	b	0x817e8 <_ZN44_$LT$$RF$T$u20$as$u20$core..fmt..Display$GT$3fmt17h36ba8db926b991f8E+0x310>
   817d0: f8 03 08 aa  	mov	x24, x8
   817d4: e8 03 1f aa  	mov	x8, xzr
   817d8: 04 00 00 14  	b	0x817e8 <_ZN44_$LT$$RF$T$u20$as$u20$core..fmt..Display$GT$3fmt17h36ba8db926b991f8E+0x310>
   817dc: 09 05 00 91  	add	x9, x8, #1
   817e0: 08 fd 41 d3  	lsr	x8, x8, #1
   817e4: 38 fd 41 d3  	lsr	x24, x9, #1
   817e8: 35 5c 42 a9  	ldp	x21, x23, [x1, #32]
   817ec: 36 34 40 b9  	ldr	w22, [x1, #52]
   817f0: 19 05 00 91  	add	x25, x8, #1
   817f4: 39 07 00 f1  	subs	x25, x25, #1
   817f8: e0 00 00 54  	b.eq	0x81814 <_ZN44_$LT$$RF$T$u20$as$u20$core..fmt..Display$GT$3fmt17h36ba8db926b991f8E+0x33c>
   817fc: e8 12 40 f9  	ldr	x8, [x23, #32]
   81800: e0 03 15 aa  	mov	x0, x21
   81804: e1 03 16 2a  	mov	w1, w22
   81808: 00 01 3f d6  	blr	x8
   8180c: 40 ff 07 36  	tbz	w0, #0, 0x817f4 <_ZN44_$LT$$RF$T$u20$as$u20$core..fmt..Display$GT$3fmt17h36ba8db926b991f8E+0x31c>
   81810: 0a 00 00 14  	b	0x81838 <_ZN44_$LT$$RF$T$u20$as$u20$core..fmt..Display$GT$3fmt17h36ba8db926b991f8E+0x360>
   81814: df 42 44 71  	cmp	w22, #272, lsl #12
   81818: f8 03 98 9a  	csel	x24, xzr, x24, eq
   8181c: e0 00 00 54  	b.eq	0x81838 <_ZN44_$LT$$RF$T$u20$as$u20$core..fmt..Display$GT$3fmt17h36ba8db926b991f8E+0x360>
   81820: e8 0e 40 f9  	ldr	x8, [x23, #24]
   81824: e0 03 15 aa  	mov	x0, x21
   81828: e1 03 14 aa  	mov	x1, x20
   8182c: e2 03 13 aa  	mov	x2, x19
   81830: 00 01 3f d6  	blr	x8
   81834: e0 00 00 36  	tbz	w0, #0, 0x81850 <_ZN44_$LT$$RF$T$u20$as$u20$core..fmt..Display$GT$3fmt17h36ba8db926b991f8E+0x378>
   81838: 20 00 80 52  	mov	w0, #1
   8183c: f4 4f 43 a9  	ldp	x20, x19, [sp, #48]
   81840: f6 57 42 a9  	ldp	x22, x21, [sp, #32]
   81844: f8 5f 41 a9  	ldp	x24, x23, [sp, #16]
   81848: fe 67 c4 a8  	ldp	x30, x25, [sp], #64
   8184c: c0 03 5f d6  	ret
   81850: f3 03 1f aa  	mov	x19, xzr
   81854: 1f 03 13 eb  	cmp	x24, x19
   81858: a0 02 00 54  	b.eq	0x818ac <_ZN44_$LT$$RF$T$u20$as$u20$core..fmt..Display$GT$3fmt17h36ba8db926b991f8E+0x3d4>
   8185c: e8 12 40 f9  	ldr	x8, [x23, #32]
   81860: e0 03 15 aa  	mov	x0, x21
   81864: e1 03 16 2a  	mov	w1, w22
   81868: 73 06 00 91  	add	x19, x19, #1
   8186c: 00 01 3f d6  	blr	x8
   81870: 20 ff ff 34  	cbz	w0, 0x81854 <_ZN44_$LT$$RF$T$u20$as$u20$core..fmt..Display$GT$3fmt17h36ba8db926b991f8E+0x37c>
   81874: 68 06 00 d1  	sub	x8, x19, #1
   81878: 0e 00 00 14  	b	0x818b0 <_ZN44_$LT$$RF$T$u20$as$u20$core..fmt..Display$GT$3fmt17h36ba8db926b991f8E+0x3d8>
   8187c: ec 03 1f 2a  	mov	w12, wzr
   81880: ed 03 0a aa  	mov	x13, x10
   81884: 7f 81 03 71  	cmp	w11, #224
   81888: c3 eb ff 54  	b.lo	0x81600 <_ZN44_$LT$$RF$T$u20$as$u20$core..fmt..Display$GT$3fmt17h36ba8db926b991f8E+0x128>
   8188c: bf 01 0a eb  	cmp	x13, x10
   81890: 60 01 00 54  	b.eq	0x818bc <_ZN44_$LT$$RF$T$u20$as$u20$core..fmt..Display$GT$3fmt17h36ba8db926b991f8E+0x3e4>
   81894: ae 15 40 38  	ldrb	w14, [x13], #1
   81898: ce 15 00 12  	and	w14, w14, #0x3f
   8189c: ce 65 1a 53  	lsl	w14, w14, #6
   818a0: 7f c1 03 71  	cmp	w11, #240
   818a4: 42 01 00 54  	b.hs	0x818cc <_ZN44_$LT$$RF$T$u20$as$u20$core..fmt..Display$GT$3fmt17h36ba8db926b991f8E+0x3f4>
   818a8: 56 ff ff 17  	b	0x81600 <_ZN44_$LT$$RF$T$u20$as$u20$core..fmt..Display$GT$3fmt17h36ba8db926b991f8E+0x128>
   818ac: e8 03 18 aa  	mov	x8, x24
   818b0: 1f 01 18 eb  	cmp	x8, x24
   818b4: e0 27 9f 1a  	cset	w0, lo
   818b8: e1 ff ff 17  	b	0x8183c <_ZN44_$LT$$RF$T$u20$as$u20$core..fmt..Display$GT$3fmt17h36ba8db926b991f8E+0x364>
   818bc: ee 03 1f 2a  	mov	w14, wzr
   818c0: ed 03 0a aa  	mov	x13, x10
   818c4: 7f c1 03 71  	cmp	w11, #240
   818c8: c3 e9 ff 54  	b.lo	0x81600 <_ZN44_$LT$$RF$T$u20$as$u20$core..fmt..Display$GT$3fmt17h36ba8db926b991f8E+0x128>
   818cc: bf 01 0a eb  	cmp	x13, x10
   818d0: 80 00 00 54  	b.eq	0x818e0 <_ZN44_$LT$$RF$T$u20$as$u20$core..fmt..Display$GT$3fmt17h36ba8db926b991f8E+0x408>
   818d4: aa 01 40 39  	ldrb	w10, [x13]
   818d8: 4a 15 00 12  	and	w10, w10, #0x3f
   818dc: 02 00 00 14  	b	0x818e4 <_ZN44_$LT$$RF$T$u20$as$u20$core..fmt..Display$GT$3fmt17h36ba8db926b991f8E+0x40c>
   818e0: ea 03 1f 2a  	mov	w10, wzr
   818e4: 6c 09 0e 33  	bfi	w12, w11, #18, #3
   818e8: 8b 01 0e 2a  	orr	w11, w12, w14
   818ec: 6a 01 0a 2a  	orr	w10, w11, w10
   818f0: 5f 41 44 71  	cmp	w10, #272, lsl #12
   818f4: 80 eb ff 54  	b.eq	0x81664 <_ZN44_$LT$$RF$T$u20$as$u20$core..fmt..Display$GT$3fmt17h36ba8db926b991f8E+0x18c>
   818f8: 42 ff ff 17  	b	0x81600 <_ZN44_$LT$$RF$T$u20$as$u20$core..fmt..Display$GT$3fmt17h36ba8db926b991f8E+0x128>

00000000000818fc <_ZN42_$LT$$RF$T$u20$as$u20$core..fmt..Debug$GT$3fmt17h06e6f11dfdb75eceE>:
   818fc: 00 20 40 a9  	ldp	x0, x8, [x0]
   81900: 02 0d 40 f9  	ldr	x2, [x8, #24]
   81904: 40 00 1f d6  	br	x2

0000000000081908 <_ZN4core3fmt5write17h63775af3066fbce8E>:
   81908: ff 43 02 d1  	sub	sp, sp, #144
   8190c: fe 23 00 f9  	str	x30, [sp, #64]
   81910: fa 67 05 a9  	stp	x26, x25, [sp, #80]
   81914: f8 5f 06 a9  	stp	x24, x23, [sp, #96]
   81918: f6 57 07 a9  	stp	x22, x21, [sp, #112]
   8191c: f4 4f 08 a9  	stp	x20, x19, [sp, #128]
   81920: 08 00 00 f0  	adrp	x8, 0x84000 <_ZN4core3fmt5write17h63775af3066fbce8E+0x24>
   81924: 00 a5 46 fd  	ldr	d0, [x8, #3400]
   81928: 48 08 40 f9  	ldr	x8, [x2, #16]
   8192c: f3 03 02 aa  	mov	x19, x2
   81930: 69 00 80 52  	mov	w9, #3
   81934: ff 03 00 f9  	str	xzr, [sp]
   81938: ff 0b 00 f9  	str	xzr, [sp, #16]
   8193c: e9 e3 00 39  	strb	w9, [sp, #56]
   81940: e0 1b 00 fd  	str	d0, [sp, #48]
   81944: e0 07 02 a9  	stp	x0, x1, [sp, #32]
   81948: 88 08 00 b4  	cbz	x8, 0x81a58 <_ZN4core3fmt5write17h63775af3066fbce8E+0x150>
   8194c: 69 0e 40 f9  	ldr	x9, [x19, #24]
   81950: 74 56 40 a9  	ldp	x20, x21, [x19]
   81954: 3f 01 15 eb  	cmp	x9, x21
   81958: b6 82 89 9a  	csel	x22, x21, x9, hi
   8195c: f6 0a 00 b4  	cbz	x22, 0x81ab8 <_ZN4core3fmt5write17h63775af3066fbce8E+0x1b0>
   81960: f9 ff ff f0  	adrp	x25, 0x80000 <_ZN4core3fmt5write17h63775af3066fbce8E+0x54>
   81964: 97 22 00 91  	add	x23, x20, #8
   81968: 18 61 00 91  	add	x24, x8, #24
   8196c: 39 63 3b 91  	add	x25, x25, #3800
   81970: fa 03 16 aa  	mov	x26, x22
   81974: e2 02 40 f9  	ldr	x2, [x23]
   81978: c2 00 00 b4  	cbz	x2, 0x81990 <_ZN4core3fmt5write17h63775af3066fbce8E+0x88>
   8197c: e0 23 42 a9  	ldp	x0, x8, [sp, #32]
   81980: e1 82 5f f8  	ldur	x1, [x23, #-8]
   81984: 08 0d 40 f9  	ldr	x8, [x8, #24]
   81988: 00 01 3f d6  	blr	x8
   8198c: 60 0a 00 37  	tbnz	w0, #0, 0x81ad8 <_ZN4core3fmt5write17h63775af3066fbce8E+0x1d0>
   81990: 08 63 40 39  	ldrb	w8, [x24, #24]
   81994: e8 e3 00 39  	strb	w8, [sp, #56]
   81998: 00 0b 40 fd  	ldr	d0, [x24, #16]
   8199c: 68 12 40 f9  	ldr	x8, [x19, #32]
   819a0: 00 08 a0 0e  	rev64	v0.2s, v0.2s
   819a4: e0 1b 00 fd  	str	d0, [sp, #48]
   819a8: 0a 27 40 a9  	ldp	x10, x9, [x24]
   819ac: ea 01 00 b4  	cbz	x10, 0x819e8 <_ZN4core3fmt5write17h63775af3066fbce8E+0xe0>
   819b0: 5f 05 00 f1  	cmp	x10, #1
   819b4: a1 00 00 54  	b.ne	0x819c8 <_ZN4core3fmt5write17h63775af3066fbce8E+0xc0>
   819b8: 0a 11 09 8b  	add	x10, x8, x9, lsl #4
   819bc: 4a 05 40 f9  	ldr	x10, [x10, #8]
   819c0: 5f 01 19 eb  	cmp	x10, x25
   819c4: c0 00 00 54  	b.eq	0x819dc <_ZN4core3fmt5write17h63775af3066fbce8E+0xd4>
   819c8: ea 03 1f aa  	mov	x10, xzr
   819cc: ea 27 00 a9  	stp	x10, x9, [sp]
   819d0: 0a 27 7f a9  	ldp	x10, x9, [x24, #-16]
   819d4: 2a 01 00 b5  	cbnz	x10, 0x819f8 <_ZN4core3fmt5write17h63775af3066fbce8E+0xf0>
   819d8: 13 00 00 14  	b	0x81a24 <_ZN4core3fmt5write17h63775af3066fbce8E+0x11c>
   819dc: 29 ed 7c d3  	lsl	x9, x9, #4
   819e0: 09 69 69 f8  	ldr	x9, [x8, x9]
   819e4: 29 01 40 f9  	ldr	x9, [x9]
   819e8: 2a 00 80 52  	mov	w10, #1
   819ec: ea 27 00 a9  	stp	x10, x9, [sp]
   819f0: 0a 27 7f a9  	ldp	x10, x9, [x24, #-16]
   819f4: 8a 01 00 b4  	cbz	x10, 0x81a24 <_ZN4core3fmt5write17h63775af3066fbce8E+0x11c>
   819f8: 5f 05 00 f1  	cmp	x10, #1
   819fc: a1 00 00 54  	b.ne	0x81a10 <_ZN4core3fmt5write17h63775af3066fbce8E+0x108>
   81a00: 0a 11 09 8b  	add	x10, x8, x9, lsl #4
   81a04: 4a 05 40 f9  	ldr	x10, [x10, #8]
   81a08: 5f 01 19 eb  	cmp	x10, x25
   81a0c: 60 00 00 54  	b.eq	0x81a18 <_ZN4core3fmt5write17h63775af3066fbce8E+0x110>
   81a10: ea 03 1f aa  	mov	x10, xzr
   81a14: 05 00 00 14  	b	0x81a28 <_ZN4core3fmt5write17h63775af3066fbce8E+0x120>
   81a18: 29 ed 7c d3  	lsl	x9, x9, #4
   81a1c: 09 69 69 f8  	ldr	x9, [x8, x9]
   81a20: 29 01 40 f9  	ldr	x9, [x9]
   81a24: 2a 00 80 52  	mov	w10, #1
   81a28: ea 27 01 a9  	stp	x10, x9, [sp, #16]
   81a2c: 09 83 5e f8  	ldur	x9, [x24, #-24]
   81a30: e1 03 00 91  	mov	x1, sp
   81a34: 08 11 09 8b  	add	x8, x8, x9, lsl #4
   81a38: 00 25 40 a9  	ldp	x0, x9, [x8]
   81a3c: 20 01 3f d6  	blr	x9
   81a40: c0 04 00 37  	tbnz	w0, #0, 0x81ad8 <_ZN4core3fmt5write17h63775af3066fbce8E+0x1d0>
   81a44: f7 42 00 91  	add	x23, x23, #16
   81a48: 5a 07 00 f1  	subs	x26, x26, #1
   81a4c: 18 e3 00 91  	add	x24, x24, #56
   81a50: 21 f9 ff 54  	b.ne	0x81974 <_ZN4core3fmt5write17h63775af3066fbce8E+0x6c>
   81a54: 19 00 00 14  	b	0x81ab8 <_ZN4core3fmt5write17h63775af3066fbce8E+0x1b0>
   81a58: 68 16 40 f9  	ldr	x8, [x19, #40]
   81a5c: 74 56 40 a9  	ldp	x20, x21, [x19]
   81a60: 1f 01 15 eb  	cmp	x8, x21
   81a64: b6 82 88 9a  	csel	x22, x21, x8, hi
   81a68: 96 02 00 b4  	cbz	x22, 0x81ab8 <_ZN4core3fmt5write17h63775af3066fbce8E+0x1b0>
   81a6c: 73 12 40 f9  	ldr	x19, [x19, #32]
   81a70: f7 03 1f aa  	mov	x23, xzr
   81a74: f8 03 16 aa  	mov	x24, x22
   81a78: 88 02 17 8b  	add	x8, x20, x23
   81a7c: 02 05 40 f9  	ldr	x2, [x8, #8]
   81a80: c2 00 00 b4  	cbz	x2, 0x81a98 <_ZN4core3fmt5write17h63775af3066fbce8E+0x190>
   81a84: e0 23 42 a9  	ldp	x0, x8, [sp, #32]
   81a88: 81 6a 77 f8  	ldr	x1, [x20, x23]
   81a8c: 08 0d 40 f9  	ldr	x8, [x8, #24]
   81a90: 00 01 3f d6  	blr	x8
   81a94: 20 02 00 37  	tbnz	w0, #0, 0x81ad8 <_ZN4core3fmt5write17h63775af3066fbce8E+0x1d0>
   81a98: 68 02 17 8b  	add	x8, x19, x23
   81a9c: 00 25 40 a9  	ldp	x0, x9, [x8]
   81aa0: e1 03 00 91  	mov	x1, sp
   81aa4: 20 01 3f d6  	blr	x9
   81aa8: 80 01 00 37  	tbnz	w0, #0, 0x81ad8 <_ZN4core3fmt5write17h63775af3066fbce8E+0x1d0>
   81aac: 18 07 00 f1  	subs	x24, x24, #1
   81ab0: f7 42 00 91  	add	x23, x23, #16
   81ab4: 21 fe ff 54  	b.ne	0x81a78 <_ZN4core3fmt5write17h63775af3066fbce8E+0x170>
   81ab8: df 02 15 eb  	cmp	x22, x21
   81abc: 22 01 00 54  	b.hs	0x81ae0 <_ZN4core3fmt5write17h63775af3066fbce8E+0x1d8>
   81ac0: e0 23 42 a9  	ldp	x0, x8, [sp, #32]
   81ac4: 89 12 16 8b  	add	x9, x20, x22, lsl #4
   81ac8: 21 09 40 a9  	ldp	x1, x2, [x9]
   81acc: 08 0d 40 f9  	ldr	x8, [x8, #24]
   81ad0: 00 01 3f d6  	blr	x8
   81ad4: 60 00 00 36  	tbz	w0, #0, 0x81ae0 <_ZN4core3fmt5write17h63775af3066fbce8E+0x1d8>
   81ad8: 20 00 80 52  	mov	w0, #1
   81adc: 02 00 00 14  	b	0x81ae4 <_ZN4core3fmt5write17h63775af3066fbce8E+0x1dc>
   81ae0: e0 03 1f 2a  	mov	w0, wzr
   81ae4: f4 4f 48 a9  	ldp	x20, x19, [sp, #128]
   81ae8: f6 57 47 a9  	ldp	x22, x21, [sp, #112]
   81aec: f8 5f 46 a9  	ldp	x24, x23, [sp, #96]
   81af0: fa 67 45 a9  	ldp	x26, x25, [sp, #80]
   81af4: fe 23 40 f9  	ldr	x30, [sp, #64]
   81af8: ff 43 02 91  	add	sp, sp, #144
   81afc: c0 03 5f d6  	ret

0000000000081b00 <_ZN4core5slice5index22slice_index_order_fail17h806852bf6aeb5b48E>:
   81b00: e0 07 ba a9  	stp	x0, x1, [sp, #-96]!
   81b04: e9 ff ff f0  	adrp	x9, 0x80000 <_ZN4core5slice5index22slice_index_order_fail17h806852bf6aeb5b48E>
   81b08: e8 03 00 91  	mov	x8, sp
   81b0c: 29 a1 3c 91  	add	x9, x9, #3880
   81b10: 2b 00 00 90  	adrp	x11, 0x85000 <_ZN4core5slice5index22slice_index_order_fail17h806852bf6aeb5b48E+0x20>
   81b14: ea 23 00 91  	add	x10, sp, #8
   81b18: 6b 41 19 91  	add	x11, x11, #1616
   81b1c: 4c 00 80 52  	mov	w12, #2
   81b20: e8 27 04 a9  	stp	x8, x9, [sp, #64]
   81b24: e8 03 01 91  	add	x8, sp, #64
   81b28: e0 43 00 91  	add	x0, sp, #16
   81b2c: e1 03 02 aa  	mov	x1, x2
   81b30: ff 7f 02 a9  	stp	xzr, xzr, [sp, #32]
   81b34: ea 27 05 a9  	stp	x10, x9, [sp, #80]
   81b38: eb 33 01 a9  	stp	x11, x12, [sp, #16]
   81b3c: e8 33 03 a9  	stp	x8, x12, [sp, #48]
   81b40: 57 fd ff 97  	bl	0x8109c <_ZN4core9panicking9panic_fmt17h136e9995f1aed1cdE>
   81b44: 20 00 20 d4  	brk	#0x1

0000000000081b48 <_ZN4core3fmt3num3imp52_$LT$impl$u20$core..fmt..Display$u20$for$u20$u32$GT$3fmt17hc90bd5e1868e80e2E>:
   81b48: ff 03 01 d1  	sub	sp, sp, #64
   81b4c: fe 1b 00 f9  	str	x30, [sp, #48]
   81b50: 0a 00 40 b9  	ldr	w10, [x0]
   81b54: e8 03 01 aa  	mov	x8, x1
   81b58: 49 7d 44 d3  	ubfx	x9, x10, #4, #28
   81b5c: 3f c5 09 71  	cmp	w9, #625
   81b60: 29 00 00 90  	adrp	x9, 0x85000 <_ZN4core3fmt3num3imp52_$LT$impl$u20$core..fmt..Display$u20$for$u20$u32$GT$3fmt17hc90bd5e1868e80e2E+0x28>
   81b64: 29 29 13 91  	add	x9, x9, #1226
   81b68: e3 04 00 54  	b.lo	0x81c04 <_ZN4core3fmt3num3imp52_$LT$impl$u20$core..fmt..Display$u20$for$u20$u32$GT$3fmt17hc90bd5e1868e80e2E+0xbc>
   81b6c: 6c 29 8b d2  	mov	x12, #22859
   81b70: cc 10 a7 f2  	movk	x12, #14470, lsl #16
   81b74: cc ba d8 f2  	movk	x12, #50646, lsl #32
   81b78: ee a3 90 52  	mov	w14, #34079
   81b7c: f1 1f 9c 52  	mov	w17, #57599
   81b80: eb 03 1f aa  	mov	x11, xzr
   81b84: ac 8d e6 f2  	movk	x12, #13421, lsl #48
   81b88: ed e1 84 12  	mov	w13, #-10000
   81b8c: 6e 3d aa 72  	movk	w14, #20971, lsl #16
   81b90: 6f 0c 80 12  	mov	w15, #-100
   81b94: f0 23 00 91  	add	x16, sp, #8
   81b98: b1 be a0 72  	movk	w17, #1525, lsl #16
   81b9c: f2 03 0a aa  	mov	x18, x10
   81ba0: 4a 7d cc 9b  	umulh	x10, x10, x12
   81ba4: 4a fd 4b d3  	lsr	x10, x10, #11
   81ba8: 5f 02 11 eb  	cmp	x18, x17
   81bac: 52 49 0d 1b  	madd	w18, w10, w13, w18
   81bb0: 41 3e 00 12  	and	w1, w18, #0xffff
   81bb4: 21 7c ae 9b  	umull	x1, w1, w14
   81bb8: 21 fc 65 d3  	lsr	x1, x1, #37
   81bbc: 32 48 0f 1b  	madd	w18, w1, w15, w18
   81bc0: 21 05 01 8b  	add	x1, x9, x1, lsl #1
   81bc4: 32 25 32 8b  	add	x18, x9, w18, uxth #1
   81bc8: 22 00 40 39  	ldrb	w2, [x1]
   81bcc: 21 04 40 39  	ldrb	w1, [x1, #1]
   81bd0: 43 06 40 39  	ldrb	w3, [x18, #1]
   81bd4: 52 02 40 39  	ldrb	w18, [x18]
   81bd8: 00 02 0b 8b  	add	x0, x16, x11
   81bdc: 6b 11 00 d1  	sub	x11, x11, #4
   81be0: 01 90 00 39  	strb	w1, [x0, #36]
   81be4: 02 8c 00 39  	strb	w2, [x0, #35]
   81be8: 03 98 00 39  	strb	w3, [x0, #38]
   81bec: 12 94 00 39  	strb	w18, [x0, #37]
   81bf0: 68 fd ff 54  	b.hi	0x81b9c <_ZN4core3fmt3num3imp52_$LT$impl$u20$core..fmt..Display$u20$for$u20$u32$GT$3fmt17hc90bd5e1868e80e2E+0x54>
   81bf4: 6b 9d 00 91  	add	x11, x11, #39
   81bf8: 5f 8d 01 f1  	cmp	x10, #99
   81bfc: a8 00 00 54  	b.hi	0x81c10 <_ZN4core3fmt3num3imp52_$LT$impl$u20$core..fmt..Display$u20$for$u20$u32$GT$3fmt17hc90bd5e1868e80e2E+0xc8>
   81c00: 14 00 00 14  	b	0x81c50 <_ZN4core3fmt3num3imp52_$LT$impl$u20$core..fmt..Display$u20$for$u20$u32$GT$3fmt17hc90bd5e1868e80e2E+0x108>
   81c04: eb 04 80 52  	mov	w11, #39
   81c08: 5f 8d 01 f1  	cmp	x10, #99
   81c0c: 29 02 00 54  	b.ls	0x81c50 <_ZN4core3fmt3num3imp52_$LT$impl$u20$core..fmt..Display$u20$for$u20$u32$GT$3fmt17hc90bd5e1868e80e2E+0x108>
   81c10: ed a3 90 52  	mov	w13, #34079
   81c14: 4c 3d 00 12  	and	w12, w10, #0xffff
   81c18: 6d 3d aa 72  	movk	w13, #20971, lsl #16
   81c1c: 8c 7d ad 9b  	umull	x12, w12, w13
   81c20: 6e 0c 80 12  	mov	w14, #-100
   81c24: 8c fd 65 d3  	lsr	x12, x12, #37
   81c28: 8a 29 0e 1b  	madd	w10, w12, w14, w10
   81c2c: 2a 25 2a 8b  	add	x10, x9, w10, uxth #1
   81c30: 4d 05 40 39  	ldrb	w13, [x10, #1]
   81c34: 4a 01 40 39  	ldrb	w10, [x10]
   81c38: 6b 09 00 d1  	sub	x11, x11, #2
   81c3c: ee 23 00 91  	add	x14, sp, #8
   81c40: ce 01 0b 8b  	add	x14, x14, x11
   81c44: ca 01 00 39  	strb	w10, [x14]
   81c48: ea 03 0c aa  	mov	x10, x12
   81c4c: cd 05 00 39  	strb	w13, [x14, #1]
   81c50: 5f 29 00 f1  	cmp	x10, #10
   81c54: ca 00 00 54  	b.ge	0x81c6c <_ZN4core3fmt3num3imp52_$LT$impl$u20$core..fmt..Display$u20$for$u20$u32$GT$3fmt17hc90bd5e1868e80e2E+0x124>
   81c58: 6b 05 00 d1  	sub	x11, x11, #1
   81c5c: 49 c1 00 11  	add	w9, w10, #48
   81c60: ea 23 00 91  	add	x10, sp, #8
   81c64: 49 69 2b 38  	strb	w9, [x10, x11]
   81c68: 09 00 00 14  	b	0x81c8c <_ZN4core3fmt3num3imp52_$LT$impl$u20$core..fmt..Display$u20$for$u20$u32$GT$3fmt17hc90bd5e1868e80e2E+0x144>
   81c6c: 29 05 0a 8b  	add	x9, x9, x10, lsl #1
   81c70: 2a 05 40 39  	ldrb	w10, [x9, #1]
   81c74: 29 01 40 39  	ldrb	w9, [x9]
   81c78: 6b 09 00 d1  	sub	x11, x11, #2
   81c7c: ec 23 00 91  	add	x12, sp, #8
   81c80: 8c 01 0b 8b  	add	x12, x12, x11
   81c84: 8a 05 00 39  	strb	w10, [x12, #1]
   81c88: 89 01 00 39  	strb	w9, [x12]
   81c8c: e9 23 00 91  	add	x9, sp, #8
   81c90: ea 04 80 52  	mov	w10, #39
   81c94: 21 00 00 90  	adrp	x1, 0x85000 <_ZN4core3fmt3num3imp52_$LT$impl$u20$core..fmt..Display$u20$for$u20$u32$GT$3fmt17hc90bd5e1868e80e2E+0x15c>
   81c98: 23 01 0b 8b  	add	x3, x9, x11
   81c9c: 44 01 0b cb  	sub	x4, x10, x11
   81ca0: 21 e0 10 91  	add	x1, x1, #1080
   81ca4: e0 03 08 aa  	mov	x0, x8
   81ca8: e2 03 1f aa  	mov	x2, xzr
   81cac: 0b fd ff 97  	bl	0x810d8 <_ZN4core3fmt9Formatter12pad_integral17ha6f583ca7a70f44dE>
   81cb0: fe 1b 40 f9  	ldr	x30, [sp, #48]
   81cb4: ff 03 01 91  	add	sp, sp, #64
   81cb8: c0 03 5f d6  	ret

0000000000081cbc <_ZN4core6result13unwrap_failed17he5d63f92106ab51dE>:
   81cbc: ff c3 01 d1  	sub	sp, sp, #112
   81cc0: 68 05 80 52  	mov	w8, #43
   81cc4: 0a 00 00 90  	adrp	x10, 0x81000 <_ZN4core6result13unwrap_failed17he5d63f92106ab51dE+0x8>
   81cc8: e9 03 00 91  	mov	x9, sp
   81ccc: 4a 61 13 91  	add	x10, x10, #1240
   81cd0: 0c 00 00 90  	adrp	x12, 0x81000 <_ZN4core6result13unwrap_failed17he5d63f92106ab51dE+0x14>
   81cd4: e0 23 00 a9  	stp	x0, x8, [sp]
   81cd8: 28 00 00 90  	adrp	x8, 0x85000 <_ZN4core6result13unwrap_failed17he5d63f92106ab51dE+0x2c>
   81cdc: e1 0b 01 a9  	stp	x1, x2, [sp, #16]
   81ce0: eb 43 00 91  	add	x11, sp, #16
   81ce4: 8c f1 23 91  	add	x12, x12, #2300
   81ce8: 08 e1 1a 91  	add	x8, x8, #1720
   81cec: e9 2b 05 a9  	stp	x9, x10, [sp, #80]
   81cf0: 49 00 80 52  	mov	w9, #2
   81cf4: ea 43 01 91  	add	x10, sp, #80
   81cf8: e0 83 00 91  	add	x0, sp, #32
   81cfc: e1 03 03 aa  	mov	x1, x3
   81d00: ff 7f 03 a9  	stp	xzr, xzr, [sp, #48]
   81d04: eb 33 06 a9  	stp	x11, x12, [sp, #96]
   81d08: e8 27 02 a9  	stp	x8, x9, [sp, #32]
   81d0c: ea 27 04 a9  	stp	x10, x9, [sp, #64]
   81d10: e3 fc ff 97  	bl	0x8109c <_ZN4core9panicking9panic_fmt17h136e9995f1aed1cdE>
   81d14: 20 00 20 d4  	brk	#0x1

0000000000081d18 <_ZN68_$LT$core..fmt..builders..PadAdapter$u20$as$u20$core..fmt..Write$GT$9write_str17h3825e647a41714ecE>:
   81d18: ff 83 01 d1  	sub	sp, sp, #96
   81d1c: fe 67 02 a9  	stp	x30, x25, [sp, #32]
   81d20: f8 5f 03 a9  	stp	x24, x23, [sp, #48]
   81d24: f6 57 04 a9  	stp	x22, x21, [sp, #64]
   81d28: f4 4f 05 a9  	stp	x20, x19, [sp, #80]
   81d2c: 62 12 00 b4  	cbz	x2, 0x81f78 <_ZN68_$LT$core..fmt..builders..PadAdapter$u20$as$u20$core..fmt..Write$GT$9write_str17h3825e647a41714ecE+0x260>
   81d30: 19 e0 40 a9  	ldp	x25, x24, [x0, #8]
   81d34: 15 00 40 f9  	ldr	x21, [x0]
   81d38: e8 db 07 b2  	mov	x8, #-72340172838076674
   81d3c: e8 df 9f f2  	movk	x8, #65279
   81d40: 36 00 00 90  	adrp	x22, 0x85000 <_ZN68_$LT$core..fmt..builders..PadAdapter$u20$as$u20$core..fmt..Write$GT$9write_str17h3825e647a41714ecE+0x38>
   81d44: f3 03 02 aa  	mov	x19, x2
   81d48: f4 03 01 aa  	mov	x20, x1
   81d4c: 42 e5 00 4f  	movi	v2.16b, #10
   81d50: 03 0d 08 4e  	dup	v3.2d, x8
   81d54: 04 e4 04 4f  	movi	v4.16b, #128
   81d58: d6 e2 1b 91  	add	x22, x22, #1784
   81d5c: e3 03 80 3d  	str	q3, [sp]
   81d60: 07 00 00 14  	b	0x81d7c <_ZN68_$LT$core..fmt..builders..PadAdapter$u20$as$u20$core..fmt..Write$GT$9write_str17h3825e647a41714ecE+0x64>
   81d64: e3 03 c0 3d  	ldr	q3, [sp]
   81d68: 73 02 17 eb  	subs	x19, x19, x23
   81d6c: 94 02 17 8b  	add	x20, x20, x23
   81d70: 42 e5 00 4f  	movi	v2.16b, #10
   81d74: 04 e4 04 4f  	movi	v4.16b, #128
   81d78: 00 10 00 54  	b.eq	0x81f78 <_ZN68_$LT$core..fmt..builders..PadAdapter$u20$as$u20$core..fmt..Write$GT$9write_str17h3825e647a41714ecE+0x260>
   81d7c: 08 03 40 39  	ldrb	w8, [x24]
   81d80: 48 01 00 34  	cbz	w8, 0x81da8 <_ZN68_$LT$core..fmt..builders..PadAdapter$u20$as$u20$core..fmt..Write$GT$9write_str17h3825e647a41714ecE+0x90>
   81d84: 28 0f 40 f9  	ldr	x8, [x25, #24]
   81d88: 82 00 80 52  	mov	w2, #4
   81d8c: e0 03 15 aa  	mov	x0, x21
   81d90: e1 03 16 aa  	mov	x1, x22
   81d94: 00 01 3f d6  	blr	x8
   81d98: e3 03 c0 3d  	ldr	q3, [sp]
   81d9c: 04 e4 04 4f  	movi	v4.16b, #128
   81da0: 42 e5 00 4f  	movi	v2.16b, #10
   81da4: e0 0e 00 37  	tbnz	w0, #0, 0x81f80 <_ZN68_$LT$core..fmt..builders..PadAdapter$u20$as$u20$core..fmt..Write$GT$9write_str17h3825e647a41714ecE+0x268>
   81da8: f7 03 1f aa  	mov	x23, xzr
   81dac: e1 03 13 aa  	mov	x1, x19
   81db0: 05 00 00 14  	b	0x81dc4 <_ZN68_$LT$core..fmt..builders..PadAdapter$u20$as$u20$core..fmt..Write$GT$9write_str17h3825e647a41714ecE+0xac>
   81db4: 68 02 17 eb  	subs	x8, x19, x23
   81db8: e1 33 88 9a  	csel	x1, xzr, x8, lo
   81dbc: ff 02 13 eb  	cmp	x23, x19
   81dc0: a8 0a 00 54  	b.hi	0x81f14 <_ZN68_$LT$core..fmt..builders..PadAdapter$u20$as$u20$core..fmt..Write$GT$9write_str17h3825e647a41714ecE+0x1fc>
   81dc4: 28 40 00 f1  	subs	x8, x1, #16
   81dc8: 62 01 00 54  	b.hs	0x81df4 <_ZN68_$LT$core..fmt..builders..PadAdapter$u20$as$u20$core..fmt..Write$GT$9write_str17h3825e647a41714ecE+0xdc>
   81dcc: 41 0a 00 b4  	cbz	x1, 0x81f14 <_ZN68_$LT$core..fmt..builders..PadAdapter$u20$as$u20$core..fmt..Write$GT$9write_str17h3825e647a41714ecE+0x1fc>
   81dd0: e9 03 1f aa  	mov	x9, xzr
   81dd4: 88 02 17 8b  	add	x8, x20, x23
   81dd8: 0a 69 69 38  	ldrb	w10, [x8, x9]
   81ddc: 5f 29 00 71  	cmp	w10, #10
   81de0: 40 07 00 54  	b.eq	0x81ec8 <_ZN68_$LT$core..fmt..builders..PadAdapter$u20$as$u20$core..fmt..Write$GT$9write_str17h3825e647a41714ecE+0x1b0>
   81de4: 29 05 00 91  	add	x9, x9, #1
   81de8: 3f 00 09 eb  	cmp	x1, x9
   81dec: 61 ff ff 54  	b.ne	0x81dd8 <_ZN68_$LT$core..fmt..builders..PadAdapter$u20$as$u20$core..fmt..Write$GT$9write_str17h3825e647a41714ecE+0xc0>
   81df0: 49 00 00 14  	b	0x81f14 <_ZN68_$LT$core..fmt..builders..PadAdapter$u20$as$u20$core..fmt..Write$GT$9write_str17h3825e647a41714ecE+0x1fc>
   81df4: 89 02 17 8b  	add	x9, x20, x23
   81df8: 2a 1d 00 91  	add	x10, x9, #7
   81dfc: 4a f1 7d 92  	and	x10, x10, #0xfffffffffffffff8
   81e00: 4a 01 09 eb  	subs	x10, x10, x9
   81e04: c0 01 00 54  	b.eq	0x81e3c <_ZN68_$LT$core..fmt..builders..PadAdapter$u20$as$u20$core..fmt..Write$GT$9write_str17h3825e647a41714ecE+0x124>
   81e08: 5f 01 01 eb  	cmp	x10, x1
   81e0c: e9 03 1f aa  	mov	x9, xzr
   81e10: 20 80 8a 9a  	csel	x0, x1, x10, hi
   81e14: 8a 02 17 8b  	add	x10, x20, x23
   81e18: 4b 69 69 38  	ldrb	w11, [x10, x9]
   81e1c: 7f 29 00 71  	cmp	w11, #10
   81e20: 40 05 00 54  	b.eq	0x81ec8 <_ZN68_$LT$core..fmt..builders..PadAdapter$u20$as$u20$core..fmt..Write$GT$9write_str17h3825e647a41714ecE+0x1b0>
   81e24: 29 05 00 91  	add	x9, x9, #1
   81e28: 1f 00 09 eb  	cmp	x0, x9
   81e2c: 61 ff ff 54  	b.ne	0x81e18 <_ZN68_$LT$core..fmt..builders..PadAdapter$u20$as$u20$core..fmt..Write$GT$9write_str17h3825e647a41714ecE+0x100>
   81e30: 1f 00 08 eb  	cmp	x0, x8
   81e34: 69 00 00 54  	b.ls	0x81e40 <_ZN68_$LT$core..fmt..builders..PadAdapter$u20$as$u20$core..fmt..Write$GT$9write_str17h3825e647a41714ecE+0x128>
   81e38: 16 00 00 14  	b	0x81e90 <_ZN68_$LT$core..fmt..builders..PadAdapter$u20$as$u20$core..fmt..Write$GT$9write_str17h3825e647a41714ecE+0x178>
   81e3c: e0 03 1f aa  	mov	x0, xzr
   81e40: 89 02 17 8b  	add	x9, x20, x23
   81e44: 2a 01 00 8b  	add	x10, x9, x0
   81e48: 4b 05 40 f9  	ldr	x11, [x10, #8]
   81e4c: eb 0f 00 f9  	str	x11, [sp, #24]
   81e50: 4a 01 40 f9  	ldr	x10, [x10]
   81e54: ea 0b 00 f9  	str	x10, [sp, #16]
   81e58: e0 07 c0 3d  	ldr	q0, [sp, #16]
   81e5c: 01 1c 22 6e  	eor	v1.16b, v0.16b, v2.16b
   81e60: 21 84 e3 4e  	add	v1.2d, v1.2d, v3.2d
   81e64: 20 1c 60 4e  	bic	v0.16b, v1.16b, v0.16b
   81e68: 00 1c 24 4e  	and	v0.16b, v0.16b, v4.16b
   81e6c: 01 04 18 4e  	dup	v1.2d, v0.d[1]
   81e70: 20 1c a0 4e  	orr	v0.16b, v1.16b, v0.16b
   81e74: 0a 00 66 9e  	fmov	x10, d0
   81e78: 8a 00 00 b5  	cbnz	x10, 0x81e88 <_ZN68_$LT$core..fmt..builders..PadAdapter$u20$as$u20$core..fmt..Write$GT$9write_str17h3825e647a41714ecE+0x170>
   81e7c: 00 40 00 91  	add	x0, x0, #16
   81e80: 1f 00 08 eb  	cmp	x0, x8
   81e84: 09 fe ff 54  	b.ls	0x81e44 <_ZN68_$LT$core..fmt..builders..PadAdapter$u20$as$u20$core..fmt..Write$GT$9write_str17h3825e647a41714ecE+0x12c>
   81e88: 1f 00 01 eb  	cmp	x0, x1
   81e8c: 88 09 00 54  	b.hi	0x81fbc <_ZN68_$LT$core..fmt..builders..PadAdapter$u20$as$u20$core..fmt..Write$GT$9write_str17h3825e647a41714ecE+0x2a4>
   81e90: 1f 00 01 eb  	cmp	x0, x1
   81e94: 00 04 00 54  	b.eq	0x81f14 <_ZN68_$LT$core..fmt..builders..PadAdapter$u20$as$u20$core..fmt..Write$GT$9write_str17h3825e647a41714ecE+0x1fc>
   81e98: 09 00 17 8b  	add	x9, x0, x23
   81e9c: e8 03 1f aa  	mov	x8, xzr
   81ea0: 89 02 09 8b  	add	x9, x20, x9
   81ea4: 2a 00 00 cb  	sub	x10, x1, x0
   81ea8: 2b 69 68 38  	ldrb	w11, [x9, x8]
   81eac: 7f 29 00 71  	cmp	w11, #10
   81eb0: a0 00 00 54  	b.eq	0x81ec4 <_ZN68_$LT$core..fmt..builders..PadAdapter$u20$as$u20$core..fmt..Write$GT$9write_str17h3825e647a41714ecE+0x1ac>
   81eb4: 08 05 00 91  	add	x8, x8, #1
   81eb8: 5f 01 08 eb  	cmp	x10, x8
   81ebc: 61 ff ff 54  	b.ne	0x81ea8 <_ZN68_$LT$core..fmt..builders..PadAdapter$u20$as$u20$core..fmt..Write$GT$9write_str17h3825e647a41714ecE+0x190>
   81ec0: 15 00 00 14  	b	0x81f14 <_ZN68_$LT$core..fmt..builders..PadAdapter$u20$as$u20$core..fmt..Write$GT$9write_str17h3825e647a41714ecE+0x1fc>
   81ec4: 09 00 08 8b  	add	x9, x0, x8
   81ec8: 28 01 17 8b  	add	x8, x9, x23
   81ecc: 1f 01 13 eb  	cmp	x8, x19
   81ed0: 17 05 00 91  	add	x23, x8, #1
   81ed4: 02 f7 ff 54  	b.hs	0x81db4 <_ZN68_$LT$core..fmt..builders..PadAdapter$u20$as$u20$core..fmt..Write$GT$9write_str17h3825e647a41714ecE+0x9c>
   81ed8: 88 6a 68 38  	ldrb	w8, [x20, x8]
   81edc: 1f 29 00 71  	cmp	w8, #10
   81ee0: a1 f6 ff 54  	b.ne	0x81db4 <_ZN68_$LT$core..fmt..builders..PadAdapter$u20$as$u20$core..fmt..Write$GT$9write_str17h3825e647a41714ecE+0x9c>
   81ee4: 28 00 80 52  	mov	w8, #1
   81ee8: 7f 02 17 eb  	cmp	x19, x23
   81eec: 08 03 00 39  	strb	w8, [x24]
   81ef0: c8 01 00 54  	b.hi	0x81f28 <_ZN68_$LT$core..fmt..builders..PadAdapter$u20$as$u20$core..fmt..Write$GT$9write_str17h3825e647a41714ecE+0x210>
   81ef4: 41 05 00 54  	b.ne	0x81f9c <_ZN68_$LT$core..fmt..builders..PadAdapter$u20$as$u20$core..fmt..Write$GT$9write_str17h3825e647a41714ecE+0x284>
   81ef8: 28 0f 40 f9  	ldr	x8, [x25, #24]
   81efc: e0 03 15 aa  	mov	x0, x21
   81f00: e1 03 14 aa  	mov	x1, x20
   81f04: e2 03 13 aa  	mov	x2, x19
   81f08: 00 01 3f d6  	blr	x8
   81f0c: c0 f2 07 36  	tbz	w0, #0, 0x81d64 <_ZN68_$LT$core..fmt..builders..PadAdapter$u20$as$u20$core..fmt..Write$GT$9write_str17h3825e647a41714ecE+0x4c>
   81f10: 1c 00 00 14  	b	0x81f80 <_ZN68_$LT$core..fmt..builders..PadAdapter$u20$as$u20$core..fmt..Write$GT$9write_str17h3825e647a41714ecE+0x268>
   81f14: e8 03 1f 2a  	mov	w8, wzr
   81f18: f7 03 13 aa  	mov	x23, x19
   81f1c: 7f 02 17 eb  	cmp	x19, x23
   81f20: 08 03 00 39  	strb	w8, [x24]
   81f24: 89 fe ff 54  	b.ls	0x81ef4 <_ZN68_$LT$core..fmt..builders..PadAdapter$u20$as$u20$core..fmt..Write$GT$9write_str17h3825e647a41714ecE+0x1dc>
   81f28: 88 6a f7 38  	ldrsb	w8, [x20, x23]
   81f2c: 1f 05 01 31  	cmn	w8, #65
   81f30: 6d 03 00 54  	b.le	0x81f9c <_ZN68_$LT$core..fmt..builders..PadAdapter$u20$as$u20$core..fmt..Write$GT$9write_str17h3825e647a41714ecE+0x284>
   81f34: 28 0f 40 f9  	ldr	x8, [x25, #24]
   81f38: e0 03 15 aa  	mov	x0, x21
   81f3c: e1 03 14 aa  	mov	x1, x20
   81f40: e2 03 17 aa  	mov	x2, x23
   81f44: 00 01 3f d6  	blr	x8
   81f48: c0 01 00 37  	tbnz	w0, #0, 0x81f80 <_ZN68_$LT$core..fmt..builders..PadAdapter$u20$as$u20$core..fmt..Write$GT$9write_str17h3825e647a41714ecE+0x268>
   81f4c: 88 6a f7 38  	ldrsb	w8, [x20, x23]
   81f50: 1f 05 01 31  	cmn	w8, #65
   81f54: 8c f0 ff 54  	b.gt	0x81d64 <_ZN68_$LT$core..fmt..builders..PadAdapter$u20$as$u20$core..fmt..Write$GT$9write_str17h3825e647a41714ecE+0x4c>
   81f58: 24 00 00 90  	adrp	x4, 0x85000 <_ZN68_$LT$core..fmt..builders..PadAdapter$u20$as$u20$core..fmt..Write$GT$9write_str17h3825e647a41714ecE+0x250>
   81f5c: 84 a0 1c 91  	add	x4, x4, #1832
   81f60: e0 03 14 aa  	mov	x0, x20
   81f64: e1 03 13 aa  	mov	x1, x19
   81f68: e2 03 17 aa  	mov	x2, x23
   81f6c: e3 03 13 aa  	mov	x3, x19
   81f70: 17 00 00 94  	bl	0x81fcc <_ZN4core3str16slice_error_fail17hcc0d3c3105355e6aE>
   81f74: 20 00 20 d4  	brk	#0x1
   81f78: e0 03 1f 2a  	mov	w0, wzr
   81f7c: 02 00 00 14  	b	0x81f84 <_ZN68_$LT$core..fmt..builders..PadAdapter$u20$as$u20$core..fmt..Write$GT$9write_str17h3825e647a41714ecE+0x26c>
   81f80: 20 00 80 52  	mov	w0, #1
   81f84: f4 4f 45 a9  	ldp	x20, x19, [sp, #80]
   81f88: f6 57 44 a9  	ldp	x22, x21, [sp, #64]
   81f8c: f8 5f 43 a9  	ldp	x24, x23, [sp, #48]
   81f90: fe 67 42 a9  	ldp	x30, x25, [sp, #32]
   81f94: ff 83 01 91  	add	sp, sp, #96
   81f98: c0 03 5f d6  	ret
   81f9c: 24 00 00 90  	adrp	x4, 0x85000 <_ZN68_$LT$core..fmt..builders..PadAdapter$u20$as$u20$core..fmt..Write$GT$9write_str17h3825e647a41714ecE+0x294>
   81fa0: 84 40 1c 91  	add	x4, x4, #1808
   81fa4: e0 03 14 aa  	mov	x0, x20
   81fa8: e1 03 13 aa  	mov	x1, x19
   81fac: e2 03 1f aa  	mov	x2, xzr
   81fb0: e3 03 17 aa  	mov	x3, x23
   81fb4: 06 00 00 94  	bl	0x81fcc <_ZN4core3str16slice_error_fail17hcc0d3c3105355e6aE>
   81fb8: 20 00 20 d4  	brk	#0x1
   81fbc: 22 00 00 90  	adrp	x2, 0x85000 <_ZN4core3str16slice_error_fail17hcc0d3c3105355e6aE>
   81fc0: 42 80 1b 91  	add	x2, x2, #1760
   81fc4: 14 fd ff 97  	bl	0x81414 <_ZN4core5slice5index26slice_start_index_len_fail17ha3ad23336e78e7f7E>
   81fc8: 20 00 20 d4  	brk	#0x1

0000000000081fcc <_ZN4core3str16slice_error_fail17hcc0d3c3105355e6aE>:
   81fcc: e2 0f b3 a9  	stp	x2, x3, [sp, #-208]!
   81fd0: 3f 04 04 f1  	cmp	x1, #257
   81fd4: 22 01 00 54  	b.hs	0x81ff8 <_ZN4core3str16slice_error_fail17hcc0d3c3105355e6aE+0x2c>
   81fd8: 29 00 00 90  	adrp	x9, 0x85000 <_ZN4core3str16slice_error_fail17hcc0d3c3105355e6aE+0x1c>
   81fdc: 29 e1 10 91  	add	x9, x9, #1080
   81fe0: e8 03 1f aa  	mov	x8, xzr
   81fe4: e0 07 01 a9  	stp	x0, x1, [sp, #16]
   81fe8: e9 23 02 a9  	stp	x9, x8, [sp, #32]
   81fec: 5f 00 01 eb  	cmp	x2, x1
   81ff0: a9 02 00 54  	b.ls	0x82044 <_ZN4core3str16slice_error_fail17hcc0d3c3105355e6aE+0x78>
   81ff4: 2b 00 00 14  	b	0x820a0 <_ZN4core3str16slice_error_fail17hcc0d3c3105355e6aE+0xd4>
   81ff8: 08 20 80 52  	mov	w8, #256
   81ffc: 06 00 00 14  	b	0x82014 <_ZN4core3str16slice_error_fail17hcc0d3c3105355e6aE+0x48>
   82000: 09 68 e8 38  	ldrsb	w9, [x0, x8]
   82004: 3f 05 01 31  	cmn	w9, #65
   82008: 0c 01 00 54  	b.gt	0x82028 <_ZN4core3str16slice_error_fail17hcc0d3c3105355e6aE+0x5c>
   8200c: 08 05 00 f1  	subs	x8, x8, #1
   82010: c0 00 00 54  	b.eq	0x82028 <_ZN4core3str16slice_error_fail17hcc0d3c3105355e6aE+0x5c>
   82014: 1f 01 01 eb  	cmp	x8, x1
   82018: 43 ff ff 54  	b.lo	0x82000 <_ZN4core3str16slice_error_fail17hcc0d3c3105355e6aE+0x34>
   8201c: 3f 00 08 eb  	cmp	x1, x8
   82020: 61 ff ff 54  	b.ne	0x8200c <_ZN4core3str16slice_error_fail17hcc0d3c3105355e6aE+0x40>
   82024: e8 03 01 aa  	mov	x8, x1
   82028: e0 23 01 a9  	stp	x0, x8, [sp, #16]
   8202c: 08 00 00 f0  	adrp	x8, 0x85000 <_ZN4core3str16slice_error_fail17hcc0d3c3105355e6aE+0x6c>
   82030: 09 01 1d 91  	add	x9, x8, #1856
   82034: a8 00 80 52  	mov	w8, #5
   82038: 5f 00 01 eb  	cmp	x2, x1
   8203c: e9 23 02 a9  	stp	x9, x8, [sp, #32]
   82040: 08 03 00 54  	b.hi	0x820a0 <_ZN4core3str16slice_error_fail17hcc0d3c3105355e6aE+0xd4>
   82044: 7f 00 01 eb  	cmp	x3, x1
   82048: c8 02 00 54  	b.hi	0x820a0 <_ZN4core3str16slice_error_fail17hcc0d3c3105355e6aE+0xd4>
   8204c: 5f 00 03 eb  	cmp	x2, x3
   82050: 89 05 00 54  	b.ls	0x82100 <_ZN4core3str16slice_error_fail17hcc0d3c3105355e6aE+0x134>
   82054: e9 ff ff d0  	adrp	x9, 0x80000 <_ZN4core3str16slice_error_fail17hcc0d3c3105355e6aE+0x80>
   82058: e8 03 00 91  	mov	x8, sp
   8205c: 29 a1 3c 91  	add	x9, x9, #3880
   82060: ec ff ff f0  	adrp	x12, 0x81000 <_ZN4core3str16slice_error_fail17hcc0d3c3105355e6aE+0x90>
   82064: 0e 00 00 f0  	adrp	x14, 0x85000 <_ZN4core3str16slice_error_fail17hcc0d3c3105355e6aE+0xa4>
   82068: ea 23 00 91  	add	x10, sp, #8
   8206c: eb 43 00 91  	add	x11, sp, #16
   82070: 8c 61 13 91  	add	x12, x12, #1240
   82074: ed 83 00 91  	add	x13, sp, #32
   82078: ce e1 1d 91  	add	x14, x14, #1912
   8207c: e8 27 08 a9  	stp	x8, x9, [sp, #128]
   82080: 88 00 80 52  	mov	w8, #4
   82084: ea 27 09 a9  	stp	x10, x9, [sp, #144]
   82088: ff 7f 06 a9  	stp	xzr, xzr, [sp, #96]
   8208c: eb 33 0a a9  	stp	x11, x12, [sp, #160]
   82090: ed 33 0b a9  	stp	x13, x12, [sp, #176]
   82094: e9 03 02 91  	add	x9, sp, #128
   82098: ee 23 05 a9  	stp	x14, x8, [sp, #80]
   8209c: 14 00 00 14  	b	0x820ec <_ZN4core3str16slice_error_fail17hcc0d3c3105355e6aE+0x120>
   820a0: e9 ff ff d0  	adrp	x9, 0x80000 <_ZN4core3str16slice_error_fail17hcc0d3c3105355e6aE+0xcc>
   820a4: 5f 00 01 eb  	cmp	x2, x1
   820a8: e8 03 01 91  	add	x8, sp, #64
   820ac: 29 a1 3c 91  	add	x9, x9, #3880
   820b0: eb ff ff f0  	adrp	x11, 0x81000 <_ZN4core3str16slice_error_fail17hcc0d3c3105355e6aE+0xe0>
   820b4: 0e 00 00 f0  	adrp	x14, 0x85000 <_ZN4core3str16slice_error_fail17hcc0d3c3105355e6aE+0xf4>
   820b8: ea 43 00 91  	add	x10, sp, #16
   820bc: 6b 61 13 91  	add	x11, x11, #1240
   820c0: ec 83 00 91  	add	x12, sp, #32
   820c4: 4d 80 83 9a  	csel	x13, x2, x3, hi
   820c8: ce 21 1d 91  	add	x14, x14, #1864
   820cc: e8 27 08 a9  	stp	x8, x9, [sp, #128]
   820d0: 68 00 80 52  	mov	w8, #3
   820d4: e9 03 02 91  	add	x9, sp, #128
   820d8: ff 7f 06 a9  	stp	xzr, xzr, [sp, #96]
   820dc: ea 2f 09 a9  	stp	x10, x11, [sp, #144]
   820e0: ec 2f 0a a9  	stp	x12, x11, [sp, #160]
   820e4: ee 23 05 a9  	stp	x14, x8, [sp, #80]
   820e8: ed 23 00 f9  	str	x13, [sp, #64]
   820ec: e9 23 07 a9  	stp	x9, x8, [sp, #112]
   820f0: e0 43 01 91  	add	x0, sp, #80
   820f4: e1 03 04 aa  	mov	x1, x4
   820f8: e9 fb ff 97  	bl	0x8109c <_ZN4core9panicking9panic_fmt17h136e9995f1aed1cdE>
   820fc: 20 00 20 d4  	brk	#0x1
   82100: 82 01 00 b5  	cbnz	x2, 0x82130 <_ZN4core3str16slice_error_fail17hcc0d3c3105355e6aE+0x164>
   82104: e3 1b 00 f9  	str	x3, [sp, #48]
   82108: 23 04 00 b5  	cbnz	x3, 0x8218c <_ZN4core3str16slice_error_fail17hcc0d3c3105355e6aE+0x1c0>
   8210c: e3 03 1f aa  	mov	x3, xzr
   82110: 7f 00 01 eb  	cmp	x3, x1
   82114: a1 01 00 54  	b.ne	0x82148 <_ZN4core3str16slice_error_fail17hcc0d3c3105355e6aE+0x17c>
   82118: 00 00 00 f0  	adrp	x0, 0x85000 <_ZN4core3str16slice_error_fail17hcc0d3c3105355e6aE+0x158>
   8211c: 00 e0 1e 91  	add	x0, x0, #1976
   82120: 61 05 80 52  	mov	w1, #43
   82124: e2 03 04 aa  	mov	x2, x4
   82128: df fc ff 97  	bl	0x814a4 <_ZN4core9panicking5panic17h0d86cd7d69f331f6E>
   8212c: 20 00 20 d4  	brk	#0x1
   82130: 5f 00 01 eb  	cmp	x2, x1
   82134: a2 01 00 54  	b.hs	0x82168 <_ZN4core3str16slice_error_fail17hcc0d3c3105355e6aE+0x19c>
   82138: 08 68 e2 38  	ldrsb	w8, [x0, x2]
   8213c: 1f 05 01 31  	cmn	w8, #65
   82140: 2c fe ff 54  	b.gt	0x82104 <_ZN4core3str16slice_error_fail17hcc0d3c3105355e6aE+0x138>
   82144: 0b 00 00 14  	b	0x82170 <_ZN4core3str16slice_error_fail17hcc0d3c3105355e6aE+0x1a4>
   82148: 08 00 03 8b  	add	x8, x0, x3
   8214c: eb 03 08 aa  	mov	x11, x8
   82150: 6a 15 c0 38  	ldrsb	w10, [x11], #1
   82154: 49 1d 00 12  	and	w9, w10, #0xff
   82158: 6a 02 f8 37  	tbnz	w10, #31, 0x821a4 <_ZN4core3str16slice_error_fail17hcc0d3c3105355e6aE+0x1d8>
   8215c: e9 3f 00 b9  	str	w9, [sp, #60]
   82160: 28 00 80 52  	mov	w8, #1
   82164: 44 00 00 14  	b	0x82274 <_ZN4core3str16slice_error_fail17hcc0d3c3105355e6aE+0x2a8>
   82168: 3f 00 02 eb  	cmp	x1, x2
   8216c: c0 fc ff 54  	b.eq	0x82104 <_ZN4core3str16slice_error_fail17hcc0d3c3105355e6aE+0x138>
   82170: e3 03 02 aa  	mov	x3, x2
   82174: e2 1b 00 f9  	str	x2, [sp, #48]
   82178: 05 00 00 14  	b	0x8218c <_ZN4core3str16slice_error_fail17hcc0d3c3105355e6aE+0x1c0>
   8217c: 3f 00 03 eb  	cmp	x1, x3
   82180: c0 fc ff 54  	b.eq	0x82118 <_ZN4core3str16slice_error_fail17hcc0d3c3105355e6aE+0x14c>
   82184: 63 04 00 f1  	subs	x3, x3, #1
   82188: 20 fc ff 54  	b.eq	0x8210c <_ZN4core3str16slice_error_fail17hcc0d3c3105355e6aE+0x140>
   8218c: 7f 00 01 eb  	cmp	x3, x1
   82190: 62 ff ff 54  	b.hs	0x8217c <_ZN4core3str16slice_error_fail17hcc0d3c3105355e6aE+0x1b0>
   82194: 08 68 e3 38  	ldrsb	w8, [x0, x3]
   82198: 1f 01 01 31  	cmn	w8, #64
   8219c: 4b ff ff 54  	b.lt	0x82184 <_ZN4core3str16slice_error_fail17hcc0d3c3105355e6aE+0x1b8>
   821a0: dc ff ff 17  	b	0x82110 <_ZN4core3str16slice_error_fail17hcc0d3c3105355e6aE+0x144>
   821a4: 0a 00 01 8b  	add	x10, x0, x1
   821a8: 7f 01 0a eb  	cmp	x11, x10
   821ac: 01 01 00 54  	b.ne	0x821cc <_ZN4core3str16slice_error_fail17hcc0d3c3105355e6aE+0x200>
   821b0: e8 03 1f 2a  	mov	w8, wzr
   821b4: ec 03 0a aa  	mov	x12, x10
   821b8: 3f 7d 03 71  	cmp	w9, #223
   821bc: 2b 11 00 12  	and	w11, w9, #0x1f
   821c0: 28 01 00 54  	b.hi	0x821e4 <_ZN4core3str16slice_error_fail17hcc0d3c3105355e6aE+0x218>
   821c4: 68 11 1a 33  	bfi	w8, w11, #6, #5
   821c8: 1f 00 00 14  	b	0x82244 <_ZN4core3str16slice_error_fail17hcc0d3c3105355e6aE+0x278>
   821cc: 0b 05 40 39  	ldrb	w11, [x8, #1]
   821d0: 0c 09 00 91  	add	x12, x8, #2
   821d4: 68 15 00 12  	and	w8, w11, #0x3f
   821d8: 3f 7d 03 71  	cmp	w9, #223
   821dc: 2b 11 00 12  	and	w11, w9, #0x1f
   821e0: 29 ff ff 54  	b.ls	0x821c4 <_ZN4core3str16slice_error_fail17hcc0d3c3105355e6aE+0x1f8>
   821e4: 9f 01 0a eb  	cmp	x12, x10
   821e8: 81 00 00 54  	b.ne	0x821f8 <_ZN4core3str16slice_error_fail17hcc0d3c3105355e6aE+0x22c>
   821ec: ed 03 1f 2a  	mov	w13, wzr
   821f0: ec 03 0a aa  	mov	x12, x10
   821f4: 03 00 00 14  	b	0x82200 <_ZN4core3str16slice_error_fail17hcc0d3c3105355e6aE+0x234>
   821f8: 8d 15 40 38  	ldrb	w13, [x12], #1
   821fc: ad 15 00 12  	and	w13, w13, #0x3f
   82200: 3f c1 03 71  	cmp	w9, #240
   82204: 0d 15 1a 33  	bfi	w13, w8, #6, #6
   82208: a3 00 00 54  	b.lo	0x8221c <_ZN4core3str16slice_error_fail17hcc0d3c3105355e6aE+0x250>
   8220c: 9f 01 0a eb  	cmp	x12, x10
   82210: c1 00 00 54  	b.ne	0x82228 <_ZN4core3str16slice_error_fail17hcc0d3c3105355e6aE+0x25c>
   82214: e8 03 1f 2a  	mov	w8, wzr
   82218: 06 00 00 14  	b	0x82230 <_ZN4core3str16slice_error_fail17hcc0d3c3105355e6aE+0x264>
   8221c: 6d 11 14 33  	bfi	w13, w11, #12, #5
   82220: e8 03 0d 2a  	mov	w8, w13
   82224: 08 00 00 14  	b	0x82244 <_ZN4core3str16slice_error_fail17hcc0d3c3105355e6aE+0x278>
   82228: 88 01 40 39  	ldrb	w8, [x12]
   8222c: 08 15 00 12  	and	w8, w8, #0x3f
   82230: 69 09 0e 53  	ubfiz	w9, w11, #18, #3
   82234: a9 2d 1a 33  	bfi	w9, w13, #6, #12
   82238: 28 01 08 2a  	orr	w8, w9, w8
   8223c: 1f 41 44 71  	cmp	w8, #272, lsl #12
   82240: c0 f6 ff 54  	b.eq	0x82118 <_ZN4core3str16slice_error_fail17hcc0d3c3105355e6aE+0x14c>
   82244: 1f 01 02 71  	cmp	w8, #128
   82248: e8 3f 00 b9  	str	w8, [sp, #60]
   8224c: 62 00 00 54  	b.hs	0x82258 <_ZN4core3str16slice_error_fail17hcc0d3c3105355e6aE+0x28c>
   82250: 28 00 80 52  	mov	w8, #1
   82254: 08 00 00 14  	b	0x82274 <_ZN4core3str16slice_error_fail17hcc0d3c3105355e6aE+0x2a8>
   82258: 1f 01 20 71  	cmp	w8, #2048
   8225c: 62 00 00 54  	b.hs	0x82268 <_ZN4core3str16slice_error_fail17hcc0d3c3105355e6aE+0x29c>
   82260: 48 00 80 52  	mov	w8, #2
   82264: 04 00 00 14  	b	0x82274 <_ZN4core3str16slice_error_fail17hcc0d3c3105355e6aE+0x2a8>
   82268: 1f 41 40 71  	cmp	w8, #16, lsl #12
   8226c: 68 00 80 52  	mov	w8, #3
   82270: 08 35 88 9a  	cinc	x8, x8, hs
   82274: 08 01 03 8b  	add	x8, x8, x3
   82278: ea ff ff d0  	adrp	x10, 0x80000 <_ZN4core3str16slice_error_fail17hcc0d3c3105355e6aE+0x2a4>
   8227c: e9 c3 00 91  	add	x9, sp, #48
   82280: 4a a1 3c 91  	add	x10, x10, #3880
   82284: 0c 00 00 90  	adrp	x12, 0x82000 <_ZN4core3str16slice_error_fail17hcc0d3c3105355e6aE+0x2b8>
   82288: e3 23 04 a9  	stp	x3, x8, [sp, #64]
   8228c: e8 ff ff f0  	adrp	x8, 0x81000 <_ZN4core3str16slice_error_fail17hcc0d3c3105355e6aE+0x2bc>
   82290: eb f3 00 91  	add	x11, sp, #60
   82294: 8c c1 0b 91  	add	x12, x12, #752
   82298: 0e 00 00 90  	adrp	x14, 0x82000 <_ZN4core3str16slice_error_fail17hcc0d3c3105355e6aE+0x2cc>
   8229c: ef 43 00 91  	add	x15, sp, #16
   822a0: 08 61 13 91  	add	x8, x8, #1240
   822a4: e9 2b 08 a9  	stp	x9, x10, [sp, #128]
   822a8: e9 83 00 91  	add	x9, sp, #32
   822ac: 0a 00 00 f0  	adrp	x10, 0x85000 <_ZN4core3str16slice_error_fail17hcc0d3c3105355e6aE+0x2ec>
   822b0: ed 03 01 91  	add	x13, sp, #64
   822b4: ce e1 13 91  	add	x14, x14, #1272
   822b8: eb 33 09 a9  	stp	x11, x12, [sp, #144]
   822bc: 4a a1 1f 91  	add	x10, x10, #2024
   822c0: ab 00 80 52  	mov	w11, #5
   822c4: ef 23 0b a9  	stp	x15, x8, [sp, #176]
   822c8: e9 23 0c a9  	stp	x9, x8, [sp, #192]
   822cc: e8 03 02 91  	add	x8, sp, #128
   822d0: ed 3b 0a a9  	stp	x13, x14, [sp, #160]
   822d4: ff 7f 06 a9  	stp	xzr, xzr, [sp, #96]
   822d8: ea 2f 05 a9  	stp	x10, x11, [sp, #80]
   822dc: e8 2f 07 a9  	stp	x8, x11, [sp, #112]
   822e0: e0 43 01 91  	add	x0, sp, #80
   822e4: e1 03 04 aa  	mov	x1, x4
   822e8: 6d fb ff 97  	bl	0x8109c <_ZN4core9panicking9panic_fmt17h136e9995f1aed1cdE>
   822ec: 20 00 20 d4  	brk	#0x1

00000000000822f0 <_ZN41_$LT$char$u20$as$u20$core..fmt..Debug$GT$3fmt17hbb417021e48ac295E>:
   822f0: ff 83 01 d1  	sub	sp, sp, #96
   822f4: fe 6f 01 a9  	stp	x30, x27, [sp, #16]
   822f8: fa 67 02 a9  	stp	x26, x25, [sp, #32]
   822fc: f8 5f 03 a9  	stp	x24, x23, [sp, #48]
   82300: f6 57 04 a9  	stp	x22, x21, [sp, #64]
   82304: f4 4f 05 a9  	stp	x20, x19, [sp, #80]
   82308: 33 20 42 a9  	ldp	x19, x8, [x1, #32]
   8230c: f4 03 00 aa  	mov	x20, x0
   82310: e1 04 80 52  	mov	w1, #39
   82314: 02 11 40 f9  	ldr	x2, [x8, #32]
   82318: e0 03 13 aa  	mov	x0, x19
   8231c: e2 07 00 f9  	str	x2, [sp, #8]
   82320: 40 00 3f d6  	blr	x2
   82324: 20 01 00 36  	tbz	w0, #0, 0x82348 <_ZN41_$LT$char$u20$as$u20$core..fmt..Debug$GT$3fmt17hbb417021e48ac295E+0x58>
   82328: f4 4f 45 a9  	ldp	x20, x19, [sp, #80]
   8232c: f6 57 44 a9  	ldp	x22, x21, [sp, #64]
   82330: f8 5f 43 a9  	ldp	x24, x23, [sp, #48]
   82334: fa 67 42 a9  	ldp	x26, x25, [sp, #32]
   82338: fe 6f 41 a9  	ldp	x30, x27, [sp, #16]
   8233c: 20 00 80 52  	mov	w0, #1
   82340: ff 83 01 91  	add	sp, sp, #96
   82344: c0 03 5f d6  	ret
   82348: 94 02 40 b9  	ldr	w20, [x20]
   8234c: 88 26 00 51  	sub	w8, w20, #9
   82350: 1f 79 00 71  	cmp	w8, #30
   82354: 88 01 00 54  	b.hi	0x82384 <_ZN41_$LT$char$u20$as$u20$core..fmt..Debug$GT$3fmt17hbb417021e48ac295E+0x94>
   82358: 09 00 00 d0  	adrp	x9, 0x84000 <_ZN41_$LT$char$u20$as$u20$core..fmt..Debug$GT$3fmt17hbb417021e48ac295E+0x70>
   8235c: 29 61 35 91  	add	x9, x9, #3416
   82360: ca 00 00 10  	adr	x10, #24
   82364: 2b 69 68 38  	ldrb	w11, [x9, x8]
   82368: 4a 09 0b 8b  	add	x10, x10, x11, lsl #2
   8236c: 95 0e 80 52  	mov	w21, #116
   82370: 58 00 80 52  	mov	w24, #2
   82374: 40 01 1f d6  	br	x10
   82378: d5 0d 80 52  	mov	w21, #110
   8237c: 58 00 80 52  	mov	w24, #2
   82380: 1a 00 00 14  	b	0x823e8 <_ZN41_$LT$char$u20$as$u20$core..fmt..Debug$GT$3fmt17hbb417021e48ac295E+0xf8>
   82384: 9f 72 01 71  	cmp	w20, #92
   82388: 81 00 00 54  	b.ne	0x82398 <_ZN41_$LT$char$u20$as$u20$core..fmt..Debug$GT$3fmt17hbb417021e48ac295E+0xa8>
   8238c: 58 00 80 52  	mov	w24, #2
   82390: f5 03 14 2a  	mov	w21, w20
   82394: 15 00 00 14  	b	0x823e8 <_ZN41_$LT$char$u20$as$u20$core..fmt..Debug$GT$3fmt17hbb417021e48ac295E+0xf8>
   82398: e0 03 14 2a  	mov	w0, w20
   8239c: 0b 01 00 94  	bl	0x827c8 <_ZN4core7unicode12unicode_data15grapheme_extend6lookup17h6270b00245d19f23E>
   823a0: 40 01 00 37  	tbnz	w0, #0, 0x823c8 <_ZN41_$LT$char$u20$as$u20$core..fmt..Debug$GT$3fmt17hbb417021e48ac295E+0xd8>
   823a4: e0 03 14 2a  	mov	w0, w20
   823a8: 56 01 00 94  	bl	0x82900 <_ZN4core7unicode9printable12is_printable17ha641fcfcb2036eb6E>
   823ac: e0 00 00 36  	tbz	w0, #0, 0x823c8 <_ZN41_$LT$char$u20$as$u20$core..fmt..Debug$GT$3fmt17hbb417021e48ac295E+0xd8>
   823b0: 38 00 80 52  	mov	w24, #1
   823b4: f5 03 14 2a  	mov	w21, w20
   823b8: 0c 00 00 14  	b	0x823e8 <_ZN41_$LT$char$u20$as$u20$core..fmt..Debug$GT$3fmt17hbb417021e48ac295E+0xf8>
   823bc: 55 0e 80 52  	mov	w21, #114
   823c0: 58 00 80 52  	mov	w24, #2
   823c4: 09 00 00 14  	b	0x823e8 <_ZN41_$LT$char$u20$as$u20$core..fmt..Debug$GT$3fmt17hbb417021e48ac295E+0xf8>
   823c8: 88 02 00 32  	orr	w8, w20, #0x1
   823cc: 08 11 c0 5a  	clz	w8, w8
   823d0: e9 03 14 2a  	mov	w9, w20
   823d4: aa 00 c0 d2  	mov	x10, #21474836480
   823d8: 08 7d 02 53  	lsr	w8, w8, #2
   823dc: 37 01 0a aa  	orr	x23, x9, x10
   823e0: 16 09 00 52  	eor	w22, w8, #0x7
   823e4: 78 00 80 52  	mov	w24, #3
   823e8: 14 00 00 d0  	adrp	x20, 0x84000 <_ZN41_$LT$char$u20$as$u20$core..fmt..Debug$GT$3fmt17hbb417021e48ac295E+0x100>
   823ec: 19 00 00 d0  	adrp	x25, 0x84000 <_ZN41_$LT$char$u20$as$u20$core..fmt..Debug$GT$3fmt17hbb417021e48ac295E+0x104>
   823f0: 94 de 35 91  	add	x20, x20, #3447
   823f4: 39 ef 35 91  	add	x25, x25, #3451
   823f8: fa 0a 80 52  	mov	w26, #87
   823fc: 1b 06 80 52  	mov	w27, #48
   82400: 07 00 00 14  	b	0x8241c <_ZN41_$LT$char$u20$as$u20$core..fmt..Debug$GT$3fmt17hbb417021e48ac295E+0x12c>
   82404: f8 03 1f 2a  	mov	w24, wzr
   82408: e1 03 15 2a  	mov	w1, w21
   8240c: e2 07 40 f9  	ldr	x2, [sp, #8]
   82410: e0 03 13 aa  	mov	x0, x19
   82414: 40 00 3f d6  	blr	x2
   82418: 80 f8 07 37  	tbnz	w0, #0, 0x82328 <_ZN41_$LT$char$u20$as$u20$core..fmt..Debug$GT$3fmt17hbb417021e48ac295E+0x38>
   8241c: e8 03 18 2a  	mov	w8, w24
   82420: 29 ff ff 10  	adr	x9, #-28
   82424: 8a 6a 68 38  	ldrb	w10, [x20, x8]
   82428: 29 09 0a 8b  	add	x9, x9, x10, lsl #2
   8242c: 38 00 80 52  	mov	w24, #1
   82430: 81 0b 80 52  	mov	w1, #92
   82434: 20 01 1f d6  	br	x9
   82438: e8 9e 60 d3  	ubfx	x8, x23, #32, #8
   8243c: 89 00 00 10  	adr	x9, #16
   82440: 2a 6b 68 38  	ldrb	w10, [x25, x8]
   82444: 29 09 0a 8b  	add	x9, x9, x10, lsl #2
   82448: 20 01 1f d6  	br	x9
   8244c: f7 de 58 92  	and	x23, x23, #0xffffff00ffffffff
   82450: 78 00 80 52  	mov	w24, #3
   82454: a1 0f 80 52  	mov	w1, #125
   82458: ed ff ff 17  	b	0x8240c <_ZN41_$LT$char$u20$as$u20$core..fmt..Debug$GT$3fmt17hbb417021e48ac295E+0x11c>
   8245c: c8 0a 1e 53  	ubfiz	w8, w22, #2, #3
   82460: e8 26 c8 1a  	lsr	w8, w23, w8
   82464: 08 0d 00 12  	and	w8, w8, #0xf
   82468: 1f 29 00 71  	cmp	w8, #10
   8246c: 69 33 9a 1a  	csel	w9, w27, w26, lo
   82470: 21 01 08 0b  	add	w1, w9, w8
   82474: 76 02 00 b4  	cbz	x22, 0x824c0 <_ZN41_$LT$char$u20$as$u20$core..fmt..Debug$GT$3fmt17hbb417021e48ac295E+0x1d0>
   82478: d6 06 00 d1  	sub	x22, x22, #1
   8247c: 78 00 80 52  	mov	w24, #3
   82480: e3 ff ff 17  	b	0x8240c <_ZN41_$LT$char$u20$as$u20$core..fmt..Debug$GT$3fmt17hbb417021e48ac295E+0x11c>
   82484: e8 de 58 92  	and	x8, x23, #0xffffff00ffffffff
   82488: 78 00 80 52  	mov	w24, #3
   8248c: 17 01 5f b2  	orr	x23, x8, #0x200000000
   82490: 61 0f 80 52  	mov	w1, #123
   82494: de ff ff 17  	b	0x8240c <_ZN41_$LT$char$u20$as$u20$core..fmt..Debug$GT$3fmt17hbb417021e48ac295E+0x11c>
   82498: e8 de 58 92  	and	x8, x23, #0xffffff00ffffffff
   8249c: 78 00 80 52  	mov	w24, #3
   824a0: 17 05 60 b2  	orr	x23, x8, #0x300000000
   824a4: a1 0e 80 52  	mov	w1, #117
   824a8: d9 ff ff 17  	b	0x8240c <_ZN41_$LT$char$u20$as$u20$core..fmt..Debug$GT$3fmt17hbb417021e48ac295E+0x11c>
   824ac: e8 de 58 92  	and	x8, x23, #0xffffff00ffffffff
   824b0: 78 00 80 52  	mov	w24, #3
   824b4: 17 01 5e b2  	orr	x23, x8, #0x400000000
   824b8: 81 0b 80 52  	mov	w1, #92
   824bc: d4 ff ff 17  	b	0x8240c <_ZN41_$LT$char$u20$as$u20$core..fmt..Debug$GT$3fmt17hbb417021e48ac295E+0x11c>
   824c0: e8 de 58 92  	and	x8, x23, #0xffffff00ffffffff
   824c4: 17 01 60 b2  	orr	x23, x8, #0x100000000
   824c8: 78 00 80 52  	mov	w24, #3
   824cc: d0 ff ff 17  	b	0x8240c <_ZN41_$LT$char$u20$as$u20$core..fmt..Debug$GT$3fmt17hbb417021e48ac295E+0x11c>
   824d0: e0 03 13 aa  	mov	x0, x19
   824d4: e2 07 40 f9  	ldr	x2, [sp, #8]
   824d8: f4 4f 45 a9  	ldp	x20, x19, [sp, #80]
   824dc: f6 57 44 a9  	ldp	x22, x21, [sp, #64]
   824e0: f8 5f 43 a9  	ldp	x24, x23, [sp, #48]
   824e4: fa 67 42 a9  	ldp	x26, x25, [sp, #32]
   824e8: fe 6f 41 a9  	ldp	x30, x27, [sp, #16]
   824ec: e1 04 80 52  	mov	w1, #39
   824f0: ff 83 01 91  	add	sp, sp, #96
   824f4: 40 00 1f d6  	br	x2

00000000000824f8 <_ZN71_$LT$core..ops..range..Range$LT$Idx$GT$$u20$as$u20$core..fmt..Debug$GT$3fmt17hb02ca6d9aeb51757E>:
   824f8: ff 43 01 d1  	sub	sp, sp, #80
   824fc: fe 1b 00 f9  	str	x30, [sp, #48]
   82500: f4 4f 04 a9  	stp	x20, x19, [sp, #64]
   82504: f4 03 00 aa  	mov	x20, x0
   82508: 00 00 40 f9  	ldr	x0, [x0]
   8250c: f3 03 01 aa  	mov	x19, x1
   82510: 19 00 00 94  	bl	0x82574 <_ZN4core3fmt3num52_$LT$impl$u20$core..fmt..Debug$u20$for$u20$usize$GT$3fmt17h5db37932efbb435aE>
   82514: a0 01 00 37  	tbnz	w0, #0, 0x82548 <_ZN71_$LT$core..ops..range..Range$LT$Idx$GT$$u20$as$u20$core..fmt..Debug$GT$3fmt17hb02ca6d9aeb51757E+0x50>
   82518: 60 06 42 a9  	ldp	x0, x1, [x19, #32]
   8251c: 08 00 00 f0  	adrp	x8, 0x85000 <_ZN71_$LT$core..ops..range..Range$LT$Idx$GT$$u20$as$u20$core..fmt..Debug$GT$3fmt17hb02ca6d9aeb51757E+0x30>
   82520: 08 61 1a 91  	add	x8, x8, #1688
   82524: 29 00 80 52  	mov	w9, #1
   82528: e8 27 00 a9  	stp	x8, x9, [sp]
   8252c: 08 00 00 f0  	adrp	x8, 0x85000 <_ZN71_$LT$core..ops..range..Range$LT$Idx$GT$$u20$as$u20$core..fmt..Debug$GT$3fmt17hb02ca6d9aeb51757E+0x40>
   82530: 08 e1 10 91  	add	x8, x8, #1080
   82534: e2 03 00 91  	mov	x2, sp
   82538: ff 7f 01 a9  	stp	xzr, xzr, [sp, #16]
   8253c: e8 7f 02 a9  	stp	x8, xzr, [sp, #32]
   82540: f2 fc ff 97  	bl	0x81908 <_ZN4core3fmt5write17h63775af3066fbce8E>
   82544: c0 00 00 34  	cbz	w0, 0x8255c <_ZN71_$LT$core..ops..range..Range$LT$Idx$GT$$u20$as$u20$core..fmt..Debug$GT$3fmt17hb02ca6d9aeb51757E+0x64>
   82548: f4 4f 44 a9  	ldp	x20, x19, [sp, #64]
   8254c: fe 1b 40 f9  	ldr	x30, [sp, #48]
   82550: 20 00 80 52  	mov	w0, #1
   82554: ff 43 01 91  	add	sp, sp, #80
   82558: c0 03 5f d6  	ret
   8255c: 80 06 40 f9  	ldr	x0, [x20, #8]
   82560: e1 03 13 aa  	mov	x1, x19
   82564: f4 4f 44 a9  	ldp	x20, x19, [sp, #64]
   82568: fe 1b 40 f9  	ldr	x30, [sp, #48]
   8256c: ff 43 01 91  	add	sp, sp, #80
   82570: 01 00 00 14  	b	0x82574 <_ZN4core3fmt3num52_$LT$impl$u20$core..fmt..Debug$u20$for$u20$usize$GT$3fmt17h5db37932efbb435aE>

0000000000082574 <_ZN4core3fmt3num52_$LT$impl$u20$core..fmt..Debug$u20$for$u20$usize$GT$3fmt17h5db37932efbb435aE>:
   82574: ff 43 02 d1  	sub	sp, sp, #144
   82578: fe 43 00 f9  	str	x30, [sp, #128]
   8257c: 28 30 40 b9  	ldr	w8, [x1, #48]
   82580: a8 05 20 37  	tbnz	w8, #4, 0x82634 <_ZN4core3fmt3num52_$LT$impl$u20$core..fmt..Debug$u20$for$u20$usize$GT$3fmt17h5db37932efbb435aE+0xc0>
   82584: 68 07 28 37  	tbnz	w8, #5, 0x82670 <_ZN4core3fmt3num52_$LT$impl$u20$core..fmt..Debug$u20$for$u20$usize$GT$3fmt17h5db37932efbb435aE+0xfc>
   82588: 08 fc 44 d3  	lsr	x8, x0, #4
   8258c: 1f c5 09 f1  	cmp	x8, #625
   82590: c3 0a 00 54  	b.lo	0x826e8 <_ZN4core3fmt3num52_$LT$impl$u20$core..fmt..Debug$u20$for$u20$usize$GT$3fmt17h5db37932efbb435aE+0x174>
   82594: 69 29 8b d2  	mov	x9, #22859
   82598: c9 10 a7 f2  	movk	x9, #14470, lsl #16
   8259c: c9 ba d8 f2  	movk	x9, #50646, lsl #32
   825a0: eb a3 90 52  	mov	w11, #34079
   825a4: 0d 00 00 f0  	adrp	x13, 0x85000 <_ZN4core3fmt3num52_$LT$impl$u20$core..fmt..Debug$u20$for$u20$usize$GT$3fmt17h5db37932efbb435aE+0x3c>
   825a8: ef 1f 9c 52  	mov	w15, #57599
   825ac: e8 03 1f aa  	mov	x8, xzr
   825b0: a9 8d e6 f2  	movk	x9, #13421, lsl #48
   825b4: ea e1 84 12  	mov	w10, #-10000
   825b8: 6b 3d aa 72  	movk	w11, #20971, lsl #16
   825bc: 6c 0c 80 12  	mov	w12, #-100
   825c0: ad 29 13 91  	add	x13, x13, #1226
   825c4: ee 03 00 91  	mov	x14, sp
   825c8: af be a0 72  	movk	w15, #1525, lsl #16
   825cc: 11 7c c9 9b  	umulh	x17, x0, x9
   825d0: f0 03 00 aa  	mov	x16, x0
   825d4: 1f 00 0f eb  	cmp	x0, x15
   825d8: 20 fe 4b d3  	lsr	x0, x17, #11
   825dc: 10 40 0a 1b  	madd	w16, w0, w10, w16
   825e0: 11 3e 00 12  	and	w17, w16, #0xffff
   825e4: 31 7e ab 9b  	umull	x17, w17, w11
   825e8: 31 fe 65 d3  	lsr	x17, x17, #37
   825ec: 30 42 0c 1b  	madd	w16, w17, w12, w16
   825f0: b1 05 11 8b  	add	x17, x13, x17, lsl #1
   825f4: b0 25 30 8b  	add	x16, x13, w16, uxth #1
   825f8: 22 02 40 39  	ldrb	w2, [x17]
   825fc: 31 06 40 39  	ldrb	w17, [x17, #1]
   82600: 03 06 40 39  	ldrb	w3, [x16, #1]
   82604: 10 02 40 39  	ldrb	w16, [x16]
   82608: d2 01 08 8b  	add	x18, x14, x8
   8260c: 08 11 00 d1  	sub	x8, x8, #4
   82610: 51 92 00 39  	strb	w17, [x18, #36]
   82614: 42 8e 00 39  	strb	w2, [x18, #35]
   82618: 43 9a 00 39  	strb	w3, [x18, #38]
   8261c: 50 96 00 39  	strb	w16, [x18, #37]
   82620: 68 fd ff 54  	b.hi	0x825cc <_ZN4core3fmt3num52_$LT$impl$u20$core..fmt..Debug$u20$for$u20$usize$GT$3fmt17h5db37932efbb435aE+0x58>
   82624: 08 9d 00 91  	add	x8, x8, #39
   82628: 1f 8c 01 f1  	cmp	x0, #99
   8262c: 4c 06 00 54  	b.gt	0x826f4 <_ZN4core3fmt3num52_$LT$impl$u20$core..fmt..Debug$u20$for$u20$usize$GT$3fmt17h5db37932efbb435aE+0x180>
   82630: 43 00 00 14  	b	0x8273c <_ZN4core3fmt3num52_$LT$impl$u20$core..fmt..Debug$u20$for$u20$usize$GT$3fmt17h5db37932efbb435aE+0x1c8>
   82634: e8 03 1f aa  	mov	x8, xzr
   82638: e9 03 00 91  	mov	x9, sp
   8263c: 0c 0c 00 12  	and	w12, w0, #0xf
   82640: 0d 06 80 52  	mov	w13, #48
   82644: 0b fc 44 d3  	lsr	x11, x0, #4
   82648: 0d 0c 00 33  	bfxil	w13, w0, #0, #4
   8264c: 8e 5d 01 11  	add	w14, w12, #87
   82650: 9f 29 00 71  	cmp	w12, #10
   82654: 2a 01 08 8b  	add	x10, x9, x8
   82658: ac 31 8e 1a  	csel	w12, w13, w14, lo
   8265c: 08 05 00 d1  	sub	x8, x8, #1
   82660: e0 03 0b aa  	mov	x0, x11
   82664: 4c fd 01 39  	strb	w12, [x10, #127]
   82668: ab fe ff b5  	cbnz	x11, 0x8263c <_ZN4core3fmt3num52_$LT$impl$u20$core..fmt..Debug$u20$for$u20$usize$GT$3fmt17h5db37932efbb435aE+0xc8>
   8266c: 0f 00 00 14  	b	0x826a8 <_ZN4core3fmt3num52_$LT$impl$u20$core..fmt..Debug$u20$for$u20$usize$GT$3fmt17h5db37932efbb435aE+0x134>
   82670: e8 03 1f aa  	mov	x8, xzr
   82674: e9 03 00 91  	mov	x9, sp
   82678: 0c 0c 00 12  	and	w12, w0, #0xf
   8267c: 0d 06 80 52  	mov	w13, #48
   82680: 0b fc 44 d3  	lsr	x11, x0, #4
   82684: 0d 0c 00 33  	bfxil	w13, w0, #0, #4
   82688: 8e dd 00 11  	add	w14, w12, #55
   8268c: 9f 29 00 71  	cmp	w12, #10
   82690: 2a 01 08 8b  	add	x10, x9, x8
   82694: ac 31 8e 1a  	csel	w12, w13, w14, lo
   82698: 08 05 00 d1  	sub	x8, x8, #1
   8269c: e0 03 0b aa  	mov	x0, x11
   826a0: 4c fd 01 39  	strb	w12, [x10, #127]
   826a4: ab fe ff b5  	cbnz	x11, 0x82678 <_ZN4core3fmt3num52_$LT$impl$u20$core..fmt..Debug$u20$for$u20$usize$GT$3fmt17h5db37932efbb435aE+0x104>
   826a8: 00 01 02 91  	add	x0, x8, #128
   826ac: 1f 04 02 f1  	cmp	x0, #129
   826b0: 22 08 00 54  	b.hs	0x827b4 <_ZN4core3fmt3num52_$LT$impl$u20$core..fmt..Debug$u20$for$u20$usize$GT$3fmt17h5db37932efbb435aE+0x240>
   826b4: e9 03 00 91  	mov	x9, sp
   826b8: e4 03 08 cb  	neg	x4, x8
   826bc: 28 01 08 8b  	add	x8, x9, x8
   826c0: 03 01 02 91  	add	x3, x8, #128
   826c4: 08 00 00 f0  	adrp	x8, 0x85000 <_ZN4core3fmt3num52_$LT$impl$u20$core..fmt..Debug$u20$for$u20$usize$GT$3fmt17h5db37932efbb435aE+0x15c>
   826c8: 08 c1 18 91  	add	x8, x8, #1584
   826cc: 42 00 80 52  	mov	w2, #2
   826d0: e0 03 01 aa  	mov	x0, x1
   826d4: e1 03 08 aa  	mov	x1, x8
   826d8: 80 fa ff 97  	bl	0x810d8 <_ZN4core3fmt9Formatter12pad_integral17ha6f583ca7a70f44dE>
   826dc: fe 43 40 f9  	ldr	x30, [sp, #128]
   826e0: ff 43 02 91  	add	sp, sp, #144
   826e4: c0 03 5f d6  	ret
   826e8: e8 04 80 52  	mov	w8, #39
   826ec: 1f 8c 01 f1  	cmp	x0, #99
   826f0: 6d 02 00 54  	b.le	0x8273c <_ZN4core3fmt3num52_$LT$impl$u20$core..fmt..Debug$u20$for$u20$usize$GT$3fmt17h5db37932efbb435aE+0x1c8>
   826f4: ea a3 90 52  	mov	w10, #34079
   826f8: 09 3c 00 12  	and	w9, w0, #0xffff
   826fc: 6a 3d aa 72  	movk	w10, #20971, lsl #16
   82700: 29 7d aa 9b  	umull	x9, w9, w10
   82704: 6b 0c 80 12  	mov	w11, #-100
   82708: 0a 00 00 f0  	adrp	x10, 0x85000 <_ZN4core3fmt3num52_$LT$impl$u20$core..fmt..Debug$u20$for$u20$usize$GT$3fmt17h5db37932efbb435aE+0x1a0>
   8270c: 29 fd 65 d3  	lsr	x9, x9, #37
   82710: 4a 29 13 91  	add	x10, x10, #1226
   82714: 2b 01 0b 1b  	madd	w11, w9, w11, w0
   82718: 4a 25 2b 8b  	add	x10, x10, w11, uxth #1
   8271c: 4b 05 40 39  	ldrb	w11, [x10, #1]
   82720: 4a 01 40 39  	ldrb	w10, [x10]
   82724: 08 09 00 d1  	sub	x8, x8, #2
   82728: ec 03 00 91  	mov	x12, sp
   8272c: 8c 01 08 8b  	add	x12, x12, x8
   82730: e0 03 09 aa  	mov	x0, x9
   82734: 8b 05 00 39  	strb	w11, [x12, #1]
   82738: 8a 01 00 39  	strb	w10, [x12]
   8273c: 1f 28 00 f1  	cmp	x0, #10
   82740: ca 00 00 54  	b.ge	0x82758 <_ZN4core3fmt3num52_$LT$impl$u20$core..fmt..Debug$u20$for$u20$usize$GT$3fmt17h5db37932efbb435aE+0x1e4>
   82744: 08 05 00 d1  	sub	x8, x8, #1
   82748: 09 c0 00 11  	add	w9, w0, #48
   8274c: ea 03 00 91  	mov	x10, sp
   82750: 49 69 28 38  	strb	w9, [x10, x8]
   82754: 0b 00 00 14  	b	0x82780 <_ZN4core3fmt3num52_$LT$impl$u20$core..fmt..Debug$u20$for$u20$usize$GT$3fmt17h5db37932efbb435aE+0x20c>
   82758: 09 00 00 f0  	adrp	x9, 0x85000 <_ZN4core3fmt3num52_$LT$impl$u20$core..fmt..Debug$u20$for$u20$usize$GT$3fmt17h5db37932efbb435aE+0x1f0>
   8275c: 29 29 13 91  	add	x9, x9, #1226
   82760: 29 05 00 8b  	add	x9, x9, x0, lsl #1
   82764: 2a 05 40 39  	ldrb	w10, [x9, #1]
   82768: 29 01 40 39  	ldrb	w9, [x9]
   8276c: 08 09 00 d1  	sub	x8, x8, #2
   82770: eb 03 00 91  	mov	x11, sp
   82774: 6b 01 08 8b  	add	x11, x11, x8
   82778: 6a 05 00 39  	strb	w10, [x11, #1]
   8277c: 69 01 00 39  	strb	w9, [x11]
   82780: e9 03 00 91  	mov	x9, sp
   82784: ea 04 80 52  	mov	w10, #39
   82788: 23 01 08 8b  	add	x3, x9, x8
   8278c: 44 01 08 cb  	sub	x4, x10, x8
   82790: 08 00 00 f0  	adrp	x8, 0x85000 <_ZN4core3fmt3num52_$LT$impl$u20$core..fmt..Debug$u20$for$u20$usize$GT$3fmt17h5db37932efbb435aE+0x228>
   82794: 08 e1 10 91  	add	x8, x8, #1080
   82798: e0 03 01 aa  	mov	x0, x1
   8279c: e1 03 08 aa  	mov	x1, x8
   827a0: e2 03 1f aa  	mov	x2, xzr
   827a4: 4d fa ff 97  	bl	0x810d8 <_ZN4core3fmt9Formatter12pad_integral17ha6f583ca7a70f44dE>
   827a8: fe 43 40 f9  	ldr	x30, [sp, #128]
   827ac: ff 43 02 91  	add	sp, sp, #144
   827b0: c0 03 5f d6  	ret
   827b4: 02 00 00 f0  	adrp	x2, 0x85000 <_ZN4core3fmt3num52_$LT$impl$u20$core..fmt..Debug$u20$for$u20$usize$GT$3fmt17h5db37932efbb435aE+0x24c>
   827b8: 42 60 18 91  	add	x2, x2, #1560
   827bc: 01 10 80 52  	mov	w1, #128
   827c0: 15 fb ff 97  	bl	0x81414 <_ZN4core5slice5index26slice_start_index_len_fail17ha3ad23336e78e7f7E>
   827c4: 20 00 20 d4  	brk	#0x1

00000000000827c8 <_ZN4core7unicode12unicode_data15grapheme_extend6lookup17h6270b00245d19f23E>:
   827c8: 0a 00 00 f0  	adrp	x10, 0x85000 <_ZN4core7unicode12unicode_data15grapheme_extend6lookup17h6270b00245d19f23E+0xc>
   827cc: e8 03 1f aa  	mov	x8, xzr
   827d0: 09 50 15 53  	lsl	w9, w0, #11
   827d4: ec 03 80 52  	mov	w12, #31
   827d8: 4a 51 38 91  	add	x10, x10, #3604
   827dc: eb 03 80 52  	mov	w11, #31
   827e0: 04 00 00 14  	b	0x827f0 <_ZN4core7unicode12unicode_data15grapheme_extend6lookup17h6270b00245d19f23E+0x28>
   827e4: 88 05 00 91  	add	x8, x12, #1
   827e8: 6c 01 08 eb  	subs	x12, x11, x8
   827ec: 29 01 00 54  	b.ls	0x82810 <_ZN4core7unicode12unicode_data15grapheme_extend6lookup17h6270b00245d19f23E+0x48>
   827f0: 0c 05 4c 8b  	add	x12, x8, x12, lsr #1
   827f4: 4d 79 6c b8  	ldr	w13, [x10, x12, lsl #2]
   827f8: ad 51 15 53  	lsl	w13, w13, #11
   827fc: bf 01 09 6b  	cmp	w13, w9
   82800: 23 ff ff 54  	b.lo	0x827e4 <_ZN4core7unicode12unicode_data15grapheme_extend6lookup17h6270b00245d19f23E+0x1c>
   82804: eb 03 0c aa  	mov	x11, x12
   82808: 01 ff ff 54  	b.ne	0x827e8 <_ZN4core7unicode12unicode_data15grapheme_extend6lookup17h6270b00245d19f23E+0x20>
   8280c: 88 05 00 91  	add	x8, x12, #1
   82810: 1f 79 00 f1  	cmp	x8, #30
   82814: e8 05 00 54  	b.hi	0x828d0 <_ZN4core7unicode12unicode_data15grapheme_extend6lookup17h6270b00245d19f23E+0x108>
   82818: 1f 79 00 f1  	cmp	x8, #30
   8281c: 21 01 00 54  	b.ne	0x82840 <_ZN4core7unicode12unicode_data15grapheme_extend6lookup17h6270b00245d19f23E+0x78>
   82820: 2b 56 80 52  	mov	w11, #689
   82824: 09 05 00 f1  	subs	x9, x8, #1
   82828: 63 01 00 54  	b.lo	0x82854 <_ZN4core7unicode12unicode_data15grapheme_extend6lookup17h6270b00245d19f23E+0x8c>
   8282c: 3f 7d 00 f1  	cmp	x9, #31
   82830: c2 05 00 54  	b.hs	0x828e8 <_ZN4core7unicode12unicode_data15grapheme_extend6lookup17h6270b00245d19f23E+0x120>
   82834: 49 79 69 b8  	ldr	w9, [x10, x9, lsl #2]
   82838: 2c 51 00 12  	and	w12, w9, #0x1fffff
   8283c: 07 00 00 14  	b	0x82858 <_ZN4core7unicode12unicode_data15grapheme_extend6lookup17h6270b00245d19f23E+0x90>
   82840: 49 09 08 8b  	add	x9, x10, x8, lsl #2
   82844: 29 05 40 b9  	ldr	w9, [x9, #4]
   82848: 2b fd 55 d3  	lsr	x11, x9, #21
   8284c: 09 05 00 f1  	subs	x9, x8, #1
   82850: e2 fe ff 54  	b.hs	0x8282c <_ZN4core7unicode12unicode_data15grapheme_extend6lookup17h6270b00245d19f23E+0x64>
   82854: ec 03 1f 2a  	mov	w12, wzr
   82858: 48 79 68 b8  	ldr	w8, [x10, x8, lsl #2]
   8285c: 08 fd 55 d3  	lsr	x8, x8, #21
   82860: 09 05 00 91  	add	x9, x8, #1
   82864: 7f 01 09 eb  	cmp	x11, x9
   82868: 60 02 00 54  	b.eq	0x828b4 <_ZN4core7unicode12unicode_data15grapheme_extend6lookup17h6270b00245d19f23E+0xec>
   8286c: 0a 00 0c 4b  	sub	w10, w0, w12
   82870: 1f c5 0a f1  	cmp	x8, #689
   82874: 2c 56 80 52  	mov	w12, #689
   82878: 00 81 8c 9a  	csel	x0, x8, x12, hi
   8287c: 0c 00 00 f0  	adrp	x12, 0x85000 <_ZN4core7unicode12unicode_data15grapheme_extend6lookup17h6270b00245d19f23E+0xc0>
   82880: e9 03 1f 2a  	mov	w9, wzr
   82884: 6b 05 00 d1  	sub	x11, x11, #1
   82888: 8c 01 3b 91  	add	x12, x12, #3776
   8288c: 1f 00 08 eb  	cmp	x0, x8
   82890: 60 01 00 54  	b.eq	0x828bc <_ZN4core7unicode12unicode_data15grapheme_extend6lookup17h6270b00245d19f23E+0xf4>
   82894: 8d 69 68 38  	ldrb	w13, [x12, x8]
   82898: 29 01 0d 0b  	add	w9, w9, w13
   8289c: 3f 01 0a 6b  	cmp	w9, w10
   828a0: a8 00 00 54  	b.hi	0x828b4 <_ZN4core7unicode12unicode_data15grapheme_extend6lookup17h6270b00245d19f23E+0xec>
   828a4: 08 05 00 91  	add	x8, x8, #1
   828a8: 7f 01 08 eb  	cmp	x11, x8
   828ac: 01 ff ff 54  	b.ne	0x8288c <_ZN4core7unicode12unicode_data15grapheme_extend6lookup17h6270b00245d19f23E+0xc4>
   828b0: e8 03 0b aa  	mov	x8, x11
   828b4: 00 01 00 12  	and	w0, w8, #0x1
   828b8: c0 03 5f d6  	ret
   828bc: 22 00 00 90  	adrp	x2, 0x86000 <_ZN4core7unicode12unicode_data15grapheme_extend6lookup17h6270b00245d19f23E+0x104>
   828c0: 42 e0 05 91  	add	x2, x2, #376
   828c4: 21 56 80 52  	mov	w1, #689
   828c8: 86 f9 ff 97  	bl	0x80ee0 <_ZN4core9panicking18panic_bounds_check17h8ada80d8af39de02E>
   828cc: 20 00 20 d4  	brk	#0x1
   828d0: 02 00 00 f0  	adrp	x2, 0x85000 <_ZN4core7unicode12unicode_data15grapheme_extend6lookup17h6270b00245d19f23E+0x114>
   828d4: 42 40 3a 91  	add	x2, x2, #3728
   828d8: e1 03 80 52  	mov	w1, #31
   828dc: e0 03 08 aa  	mov	x0, x8
   828e0: 80 f9 ff 97  	bl	0x80ee0 <_ZN4core9panicking18panic_bounds_check17h8ada80d8af39de02E>
   828e4: 20 00 20 d4  	brk	#0x1
   828e8: 02 00 00 f0  	adrp	x2, 0x85000 <_ZN4core7unicode12unicode_data15grapheme_extend6lookup17h6270b00245d19f23E+0x12c>
   828ec: 42 a0 3a 91  	add	x2, x2, #3752
   828f0: e1 03 80 52  	mov	w1, #31
   828f4: e0 03 09 aa  	mov	x0, x9
   828f8: 7a f9 ff 97  	bl	0x80ee0 <_ZN4core9panicking18panic_bounds_check17h8ada80d8af39de02E>
   828fc: 20 00 20 d4  	brk	#0x1

0000000000082900 <_ZN4core7unicode9printable12is_printable17ha641fcfcb2036eb6E>:
   82900: 1f 40 40 71  	cmp	w0, #16, lsl #12
   82904: a2 04 00 54  	b.hs	0x82998 <_ZN4core7unicode9printable12is_printable17ha641fcfcb2036eb6E+0x98>
   82908: 0c 00 00 f0  	adrp	x12, 0x85000 <_ZN4core7unicode9printable12is_printable17ha641fcfcb2036eb6E+0x14>
   8290c: 0b 00 00 f0  	adrp	x11, 0x85000 <_ZN4core7unicode9printable12is_printable17ha641fcfcb2036eb6E+0x18>
   82910: 0d 00 00 f0  	adrp	x13, 0x85000 <_ZN4core7unicode9printable12is_printable17ha641fcfcb2036eb6E+0x1c>
   82914: e9 03 1f aa  	mov	x9, xzr
   82918: 8c bd 21 91  	add	x12, x12, #2159
   8291c: 0a 7c 08 53  	lsr	w10, w0, #8
   82920: 6b 81 23 91  	add	x11, x11, #2272
   82924: ad 05 23 91  	add	x13, x13, #2241
   82928: 88 01 40 39  	ldrb	w8, [x12]
   8292c: 8e 05 40 39  	ldrb	w14, [x12, #1]
   82930: 8c 09 00 91  	add	x12, x12, #2
   82934: 1f 01 2a 6b  	cmp	w8, w10, uxtb
   82938: 28 01 0e 8b  	add	x8, x9, x14
   8293c: 81 01 00 54  	b.ne	0x8296c <_ZN4core7unicode9printable12is_printable17ha641fcfcb2036eb6E+0x6c>
   82940: 1f 01 09 eb  	cmp	x8, x9
   82944: a3 11 00 54  	b.lo	0x82b78 <_ZN4core7unicode9printable12is_printable17ha641fcfcb2036eb6E+0x278>
   82948: 1f 89 04 f1  	cmp	x8, #290
   8294c: 28 12 00 54  	b.hi	0x82b90 <_ZN4core7unicode9printable12is_printable17ha641fcfcb2036eb6E+0x290>
   82950: 69 01 09 8b  	add	x9, x11, x9
   82954: ee 00 00 b4  	cbz	x14, 0x82970 <_ZN4core7unicode9printable12is_printable17ha641fcfcb2036eb6E+0x70>
   82958: 2f 15 40 38  	ldrb	w15, [x9], #1
   8295c: ce 05 00 d1  	sub	x14, x14, #1
   82960: ff 01 20 6b  	cmp	w15, w0, uxtb
   82964: 81 ff ff 54  	b.ne	0x82954 <_ZN4core7unicode9printable12is_printable17ha641fcfcb2036eb6E+0x54>
   82968: 32 00 00 14  	b	0x82a30 <_ZN4core7unicode9printable12is_printable17ha641fcfcb2036eb6E+0x130>
   8296c: 88 00 00 54  	b.hi	0x8297c <_ZN4core7unicode9printable12is_printable17ha641fcfcb2036eb6E+0x7c>
   82970: 9f 01 0d eb  	cmp	x12, x13
   82974: e9 03 08 aa  	mov	x9, x8
   82978: 81 fd ff 54  	b.ne	0x82928 <_ZN4core7unicode9printable12is_printable17ha641fcfcb2036eb6E+0x28>
   8297c: 0b 00 00 f0  	adrp	x11, 0x85000 <_ZN4core7unicode9printable12is_printable17ha641fcfcb2036eb6E+0x88>
   82980: 0a 00 00 f0  	adrp	x10, 0x85000 <_ZN4core7unicode9printable12is_printable17ha641fcfcb2036eb6E+0x8c>
   82984: 09 3c 00 12  	and	w9, w0, #0xffff
   82988: 6b 09 28 91  	add	x11, x11, #2562
   8298c: 28 00 80 52  	mov	w8, #1
   82990: 4a dd 2c 91  	add	x10, x10, #2871
   82994: 2f 00 00 14  	b	0x82a50 <_ZN4core7unicode9printable12is_printable17ha641fcfcb2036eb6E+0x150>
   82998: 1f 80 40 71  	cmp	w0, #32, lsl #12
   8299c: 42 07 00 54  	b.hs	0x82a84 <_ZN4core7unicode9printable12is_printable17ha641fcfcb2036eb6E+0x184>
   829a0: 0c 00 00 f0  	adrp	x12, 0x85000 <_ZN4core7unicode9printable12is_printable17ha641fcfcb2036eb6E+0xac>
   829a4: 0b 00 00 f0  	adrp	x11, 0x85000 <_ZN4core7unicode9printable12is_printable17ha641fcfcb2036eb6E+0xb0>
   829a8: 0d 00 00 f0  	adrp	x13, 0x85000 <_ZN4core7unicode9printable12is_printable17ha641fcfcb2036eb6E+0xb4>
   829ac: e9 03 1f aa  	mov	x9, xzr
   829b0: 8c 41 2d 91  	add	x12, x12, #2896
   829b4: 0a 7c 08 53  	lsr	w10, w0, #8
   829b8: 6b 71 2e 91  	add	x11, x11, #2972
   829bc: ad 71 2e 91  	add	x13, x13, #2972
   829c0: 88 01 40 39  	ldrb	w8, [x12]
   829c4: 8e 05 40 39  	ldrb	w14, [x12, #1]
   829c8: 8c 09 00 91  	add	x12, x12, #2
   829cc: 1f 01 2a 6b  	cmp	w8, w10, uxtb
   829d0: 28 01 0e 8b  	add	x8, x9, x14
   829d4: 81 01 00 54  	b.ne	0x82a04 <_ZN4core7unicode9printable12is_printable17ha641fcfcb2036eb6E+0x104>
   829d8: 1f 01 09 eb  	cmp	x8, x9
   829dc: e3 0c 00 54  	b.lo	0x82b78 <_ZN4core7unicode9printable12is_printable17ha641fcfcb2036eb6E+0x278>
   829e0: 1f bd 02 f1  	cmp	x8, #175
   829e4: e8 0d 00 54  	b.hi	0x82ba0 <_ZN4core7unicode9printable12is_printable17ha641fcfcb2036eb6E+0x2a0>
   829e8: 69 01 09 8b  	add	x9, x11, x9
   829ec: ee 00 00 b4  	cbz	x14, 0x82a08 <_ZN4core7unicode9printable12is_printable17ha641fcfcb2036eb6E+0x108>
   829f0: 2f 15 40 38  	ldrb	w15, [x9], #1
   829f4: ce 05 00 d1  	sub	x14, x14, #1
   829f8: ff 01 20 6b  	cmp	w15, w0, uxtb
   829fc: 81 ff ff 54  	b.ne	0x829ec <_ZN4core7unicode9printable12is_printable17ha641fcfcb2036eb6E+0xec>
   82a00: 0c 00 00 14  	b	0x82a30 <_ZN4core7unicode9printable12is_printable17ha641fcfcb2036eb6E+0x130>
   82a04: 88 00 00 54  	b.hi	0x82a14 <_ZN4core7unicode9printable12is_printable17ha641fcfcb2036eb6E+0x114>
   82a08: 9f 01 0d eb  	cmp	x12, x13
   82a0c: e9 03 08 aa  	mov	x9, x8
   82a10: 81 fd ff 54  	b.ne	0x829c0 <_ZN4core7unicode9printable12is_printable17ha641fcfcb2036eb6E+0xc0>
   82a14: 0b 00 00 f0  	adrp	x11, 0x85000 <_ZN4core7unicode9printable12is_printable17ha641fcfcb2036eb6E+0x120>
   82a18: 0a 00 00 f0  	adrp	x10, 0x85000 <_ZN4core7unicode9printable12is_printable17ha641fcfcb2036eb6E+0x124>
   82a1c: 09 3c 00 12  	and	w9, w0, #0xffff
   82a20: 6b 2d 31 91  	add	x11, x11, #3147
   82a24: 28 00 80 52  	mov	w8, #1
   82a28: 4a b9 37 91  	add	x10, x10, #3566
   82a2c: 45 00 00 14  	b	0x82b40 <_ZN4core7unicode9printable12is_printable17ha641fcfcb2036eb6E+0x240>
   82a30: e0 03 00 12  	and	w0, wzr, #0x1
   82a34: c0 03 5f d6  	ret
   82a38: eb 03 0d aa  	mov	x11, x13
   82a3c: 29 01 0c 6b  	subs	w9, w9, w12
   82a40: 84 09 00 54  	b.mi	0x82b70 <_ZN4core7unicode9printable12is_printable17ha641fcfcb2036eb6E+0x270>
   82a44: 7f 01 0a eb  	cmp	x11, x10
   82a48: 08 01 00 52  	eor	w8, w8, #0x1
   82a4c: 20 09 00 54  	b.eq	0x82b70 <_ZN4core7unicode9printable12is_printable17ha641fcfcb2036eb6E+0x270>
   82a50: ed 03 0b aa  	mov	x13, x11
   82a54: ae 15 c0 38  	ldrsb	w14, [x13], #1
   82a58: cc 1d 00 12  	and	w12, w14, #0xff
   82a5c: ee fe ff 36  	tbz	w14, #31, 0x82a38 <_ZN4core7unicode9printable12is_printable17ha641fcfcb2036eb6E+0x138>
   82a60: bf 01 0a eb  	cmp	x13, x10
   82a64: a0 0a 00 54  	b.eq	0x82bb8 <_ZN4core7unicode9printable12is_printable17ha641fcfcb2036eb6E+0x2b8>
   82a68: 8d 19 00 12  	and	w13, w12, #0x7f
   82a6c: 6c 05 40 39  	ldrb	w12, [x11, #1]
   82a70: 6b 09 00 91  	add	x11, x11, #2
   82a74: ac 19 18 33  	bfi	w12, w13, #8, #7
   82a78: 29 01 0c 6b  	subs	w9, w9, w12
   82a7c: 45 fe ff 54  	b.pl	0x82a44 <_ZN4core7unicode9printable12is_printable17ha641fcfcb2036eb6E+0x144>
   82a80: 3c 00 00 14  	b	0x82b70 <_ZN4core7unicode9printable12is_printable17ha641fcfcb2036eb6E+0x270>
   82a84: a8 96 9d 52  	mov	w8, #60597
   82a88: 88 ff bf 72  	movk	w8, #65532, lsl #16
   82a8c: a9 b6 9d 52  	mov	w9, #60853
   82a90: 08 00 08 0b  	add	w8, w0, w8
   82a94: 49 01 a0 72  	movk	w9, #10, lsl #16
   82a98: 1f 01 09 6b  	cmp	w8, w9
   82a9c: e8 03 1f 2a  	mov	w8, wzr
   82aa0: 83 06 00 54  	b.lo	0x82b70 <_ZN4core7unicode9printable12is_printable17ha641fcfcb2036eb6E+0x270>
   82aa4: 49 bc 80 52  	mov	w9, #1506
   82aa8: a9 ff bf 72  	movk	w9, #65533, lsl #16
   82aac: 09 00 09 0b  	add	w9, w0, w9
   82ab0: 3f 89 17 71  	cmp	w9, #1506
   82ab4: e3 05 00 54  	b.lo	0x82b70 <_ZN4core7unicode9printable12is_printable17ha641fcfcb2036eb6E+0x270>
   82ab8: 29 f5 38 11  	add	w9, w9, #3645
   82abc: 3f 7d 30 71  	cmp	w9, #3103
   82ac0: 83 05 00 54  	b.lo	0x82b70 <_ZN4core7unicode9printable12is_printable17ha641fcfcb2036eb6E+0x270>
   82ac4: c9 2b 86 52  	mov	w9, #12638
   82ac8: a9 ff bf 72  	movk	w9, #65533, lsl #16
   82acc: 09 00 09 0b  	add	w9, w0, w9
   82ad0: 3f 39 00 71  	cmp	w9, #14
   82ad4: e3 04 00 54  	b.lo	0x82b70 <_ZN4core7unicode9printable12is_printable17ha641fcfcb2036eb6E+0x270>
   82ad8: ca 03 97 52  	mov	w10, #47134
   82adc: 09 4c 1f 12  	and	w9, w0, #0x1ffffe
   82ae0: 4a 00 a0 72  	movk	w10, #2, lsl #16
   82ae4: 3f 01 0a 6b  	cmp	w9, w10
   82ae8: 40 04 00 54  	b.eq	0x82b70 <_ZN4core7unicode9printable12is_printable17ha641fcfcb2036eb6E+0x270>
   82aec: 49 24 8b 52  	mov	w9, #22818
   82af0: a9 ff bf 72  	movk	w9, #65533, lsl #16
   82af4: 09 00 09 0b  	add	w9, w0, w9
   82af8: 3f 89 00 71  	cmp	w9, #34
   82afc: a3 03 00 54  	b.lo	0x82b70 <_ZN4core7unicode9printable12is_printable17ha641fcfcb2036eb6E+0x270>
   82b00: 69 19 89 52  	mov	w9, #18635
   82b04: a9 ff bf 72  	movk	w9, #65533, lsl #16
   82b08: 09 00 09 0b  	add	w9, w0, w9
   82b0c: 3f 2d 00 71  	cmp	w9, #11
   82b10: 03 03 00 54  	b.lo	0x82b70 <_ZN4core7unicode9printable12is_printable17ha641fcfcb2036eb6E+0x270>
   82b14: 08 3e 80 52  	mov	w8, #496
   82b18: c8 01 a0 72  	movk	w8, #14, lsl #16
   82b1c: 1f 00 08 6b  	cmp	w0, w8
   82b20: e0 27 9f 1a  	cset	w0, lo
   82b24: c0 03 5f d6  	ret
   82b28: eb 03 0d aa  	mov	x11, x13
   82b2c: 29 01 0c 6b  	subs	w9, w9, w12
   82b30: 04 02 00 54  	b.mi	0x82b70 <_ZN4core7unicode9printable12is_printable17ha641fcfcb2036eb6E+0x270>
   82b34: 7f 01 0a eb  	cmp	x11, x10
   82b38: 08 01 00 52  	eor	w8, w8, #0x1
   82b3c: a0 01 00 54  	b.eq	0x82b70 <_ZN4core7unicode9printable12is_printable17ha641fcfcb2036eb6E+0x270>
   82b40: ed 03 0b aa  	mov	x13, x11
   82b44: ae 15 c0 38  	ldrsb	w14, [x13], #1
   82b48: cc 1d 00 12  	and	w12, w14, #0xff
   82b4c: ee fe ff 36  	tbz	w14, #31, 0x82b28 <_ZN4core7unicode9printable12is_printable17ha641fcfcb2036eb6E+0x228>
   82b50: bf 01 0a eb  	cmp	x13, x10
   82b54: 20 03 00 54  	b.eq	0x82bb8 <_ZN4core7unicode9printable12is_printable17ha641fcfcb2036eb6E+0x2b8>
   82b58: 8d 19 00 12  	and	w13, w12, #0x7f
   82b5c: 6c 05 40 39  	ldrb	w12, [x11, #1]
   82b60: 6b 09 00 91  	add	x11, x11, #2
   82b64: ac 19 18 33  	bfi	w12, w13, #8, #7
   82b68: 29 01 0c 6b  	subs	w9, w9, w12
   82b6c: 45 fe ff 54  	b.pl	0x82b34 <_ZN4core7unicode9printable12is_printable17ha641fcfcb2036eb6E+0x234>
   82b70: 00 01 00 12  	and	w0, w8, #0x1
   82b74: c0 03 5f d6  	ret
   82b78: 02 00 00 f0  	adrp	x2, 0x85000 <_ZN4core7unicode9printable12is_printable17ha641fcfcb2036eb6E+0x284>
   82b7c: 42 20 23 91  	add	x2, x2, #2248
   82b80: e0 03 09 aa  	mov	x0, x9
   82b84: e1 03 08 aa  	mov	x1, x8
   82b88: de fb ff 97  	bl	0x81b00 <_ZN4core5slice5index22slice_index_order_fail17h806852bf6aeb5b48E>
   82b8c: 20 00 20 d4  	brk	#0x1
   82b90: 02 00 00 f0  	adrp	x2, 0x85000 <_ZN4core7unicode9printable12is_printable17ha641fcfcb2036eb6E+0x29c>
   82b94: 42 20 23 91  	add	x2, x2, #2248
   82b98: 41 24 80 52  	mov	w1, #290
   82b9c: 04 00 00 14  	b	0x82bac <_ZN4core7unicode9printable12is_printable17ha641fcfcb2036eb6E+0x2ac>
   82ba0: 02 00 00 f0  	adrp	x2, 0x85000 <_ZN4core7unicode9printable12is_printable17ha641fcfcb2036eb6E+0x2ac>
   82ba4: 42 20 23 91  	add	x2, x2, #2248
   82ba8: e1 15 80 52  	mov	w1, #175
   82bac: e0 03 08 aa  	mov	x0, x8
   82bb0: 2b fa ff 97  	bl	0x8145c <_ZN4core5slice5index24slice_end_index_len_fail17hfcb16d41a5d796d5E>
   82bb4: 20 00 20 d4  	brk	#0x1
   82bb8: 00 00 00 f0  	adrp	x0, 0x85000 <_ZN4core7unicode9printable12is_printable17ha641fcfcb2036eb6E+0x2c4>
   82bbc: 02 00 00 f0  	adrp	x2, 0x85000 <_ZN4core7unicode9printable12is_printable17ha641fcfcb2036eb6E+0x2c8>
   82bc0: 00 e0 1e 91  	add	x0, x0, #1976
   82bc4: 42 e0 2c 91  	add	x2, x2, #2872
   82bc8: 61 05 80 52  	mov	w1, #43
   82bcc: 36 fa ff 97  	bl	0x814a4 <_ZN4core9panicking5panic17h0d86cd7d69f331f6E>
   82bd0: 20 00 20 d4  	brk	#0x1

0000000000082bd4 <_ZN4core3fmt8builders11DebugStruct5field17hd9641a54df8a3bf1E>:
   82bd4: ff 03 03 d1  	sub	sp, sp, #192
   82bd8: fe 67 08 a9  	stp	x30, x25, [sp, #128]
   82bdc: f8 5f 09 a9  	stp	x24, x23, [sp, #144]
   82be0: f6 57 0a a9  	stp	x22, x21, [sp, #160]
   82be4: f4 4f 0b a9  	stp	x20, x19, [sp, #176]
   82be8: 08 20 40 39  	ldrb	w8, [x0, #8]
   82bec: f3 03 00 aa  	mov	x19, x0
   82bf0: 39 00 80 52  	mov	w25, #1
   82bf4: 20 00 80 52  	mov	w0, #1
   82bf8: 08 0b 00 35  	cbnz	w8, 0x82d58 <_ZN4core3fmt8builders11DebugStruct5field17hd9641a54df8a3bf1E+0x184>
   82bfc: 76 02 40 f9  	ldr	x22, [x19]
   82c00: 68 26 40 39  	ldrb	w8, [x19, #9]
   82c04: f5 03 04 aa  	mov	x21, x4
   82c08: f4 03 03 aa  	mov	x20, x3
   82c0c: c9 c2 40 39  	ldrb	w9, [x22, #48]
   82c10: f7 03 02 aa  	mov	x23, x2
   82c14: f8 03 01 aa  	mov	x24, x1
   82c18: e9 03 10 37  	tbnz	w9, #2, 0x82c94 <_ZN4core3fmt8builders11DebugStruct5field17hd9641a54df8a3bf1E+0xc0>
   82c1c: c0 26 42 a9  	ldp	x0, x9, [x22, #32]
   82c20: 1f 01 00 71  	cmp	w8, #0
   82c24: 2a 00 00 90  	adrp	x10, 0x86000 <_ZN4core3fmt8builders11DebugStruct5field17hd9641a54df8a3bf1E+0x60>
   82c28: 2b 00 00 90  	adrp	x11, 0x86000 <_ZN4core3fmt8builders11DebugStruct5field17hd9641a54df8a3bf1E+0x64>
   82c2c: 28 0d 40 f9  	ldr	x8, [x9, #24]
   82c30: 4a 7d 07 91  	add	x10, x10, #479
   82c34: 6b 71 07 91  	add	x11, x11, #476
   82c38: 49 00 80 52  	mov	w9, #2
   82c3c: 61 01 8a 9a  	csel	x1, x11, x10, eq
   82c40: 22 15 89 9a  	cinc	x2, x9, eq
   82c44: 00 01 3f d6  	blr	x8
   82c48: 60 08 00 37  	tbnz	w0, #0, 0x82d54 <_ZN4core3fmt8builders11DebugStruct5field17hd9641a54df8a3bf1E+0x180>
   82c4c: c0 22 42 a9  	ldp	x0, x8, [x22, #32]
   82c50: e1 03 18 aa  	mov	x1, x24
   82c54: e2 03 17 aa  	mov	x2, x23
   82c58: 08 0d 40 f9  	ldr	x8, [x8, #24]
   82c5c: 00 01 3f d6  	blr	x8
   82c60: a0 07 00 37  	tbnz	w0, #0, 0x82d54 <_ZN4core3fmt8builders11DebugStruct5field17hd9641a54df8a3bf1E+0x180>
   82c64: c0 22 42 a9  	ldp	x0, x8, [x22, #32]
   82c68: 01 00 00 f0  	adrp	x1, 0x85000 <_ZN4core3fmt8builders11DebugStruct5field17hd9641a54df8a3bf1E+0xa0>
   82c6c: 21 60 1b 91  	add	x1, x1, #1752
   82c70: 42 00 80 52  	mov	w2, #2
   82c74: 08 0d 40 f9  	ldr	x8, [x8, #24]
   82c78: 00 01 3f d6  	blr	x8
   82c7c: c0 06 00 37  	tbnz	w0, #0, 0x82d54 <_ZN4core3fmt8builders11DebugStruct5field17hd9641a54df8a3bf1E+0x180>
   82c80: a8 0e 40 f9  	ldr	x8, [x21, #24]
   82c84: e0 03 14 aa  	mov	x0, x20
   82c88: e1 03 16 aa  	mov	x1, x22
   82c8c: 00 01 3f d6  	blr	x8
   82c90: 32 00 00 14  	b	0x82d58 <_ZN4core3fmt8builders11DebugStruct5field17hd9641a54df8a3bf1E+0x184>
   82c94: 08 01 00 35  	cbnz	w8, 0x82cb4 <_ZN4core3fmt8builders11DebugStruct5field17hd9641a54df8a3bf1E+0xe0>
   82c98: c0 22 42 a9  	ldp	x0, x8, [x22, #32]
   82c9c: 21 00 00 90  	adrp	x1, 0x86000 <_ZN4core3fmt8builders11DebugStruct5field17hd9641a54df8a3bf1E+0xd8>
   82ca0: 21 60 08 91  	add	x1, x1, #536
   82ca4: 62 00 80 52  	mov	w2, #3
   82ca8: 08 0d 40 f9  	ldr	x8, [x8, #24]
   82cac: 00 01 3f d6  	blr	x8
   82cb0: 20 05 00 37  	tbnz	w0, #0, 0x82d54 <_ZN4core3fmt8builders11DebugStruct5field17hd9641a54df8a3bf1E+0x180>
   82cb4: 28 00 80 52  	mov	w8, #1
   82cb8: e8 f3 00 39  	strb	w8, [sp, #60]
   82cbc: c8 26 42 a9  	ldp	x8, x9, [x22, #32]
   82cc0: ea f3 00 91  	add	x10, sp, #60
   82cc4: e0 83 00 91  	add	x0, sp, #32
   82cc8: e1 03 18 aa  	mov	x1, x24
   82ccc: e9 ab 02 a9  	stp	x9, x10, [sp, #40]
   82cd0: e8 13 00 f9  	str	x8, [sp, #32]
   82cd4: c8 06 40 f9  	ldr	x8, [x22, #8]
   82cd8: c0 1a 40 fd  	ldr	d0, [x22, #48]
   82cdc: c9 e2 40 39  	ldrb	w9, [x22, #56]
   82ce0: ea 83 00 91  	add	x10, sp, #32
   82ce4: e8 07 00 f9  	str	x8, [sp, #8]
   82ce8: c8 02 40 f9  	ldr	x8, [x22]
   82cec: e2 03 17 aa  	mov	x2, x23
   82cf0: e8 03 00 f9  	str	x8, [sp]
   82cf4: c8 0e 40 f9  	ldr	x8, [x22, #24]
   82cf8: e8 0f 00 f9  	str	x8, [sp, #24]
   82cfc: c8 0a 40 f9  	ldr	x8, [x22, #16]
   82d00: e0 3b 00 fd  	str	d0, [sp, #112]
   82d04: e9 e3 01 39  	strb	w9, [sp, #120]
   82d08: e8 0b 00 f9  	str	x8, [sp, #16]
   82d0c: e1 0b 40 ad  	ldp	q1, q2, [sp]
   82d10: 28 00 00 90  	adrp	x8, 0x86000 <_ZN4core3fmt8builders11DebugStruct5field17hd9641a54df8a3bf1E+0x14c>
   82d14: 08 a1 07 91  	add	x8, x8, #488
   82d18: ea 23 06 a9  	stp	x10, x8, [sp, #96]
   82d1c: e1 0b 02 ad  	stp	q1, q2, [sp, #64]
   82d20: fe fb ff 97  	bl	0x81d18 <_ZN68_$LT$core..fmt..builders..PadAdapter$u20$as$u20$core..fmt..Write$GT$9write_str17h3825e647a41714ecE>
   82d24: 80 01 00 37  	tbnz	w0, #0, 0x82d54 <_ZN4core3fmt8builders11DebugStruct5field17hd9641a54df8a3bf1E+0x180>
   82d28: 01 00 00 f0  	adrp	x1, 0x85000 <_ZN4core3fmt8builders11DebugStruct5field17hd9641a54df8a3bf1E+0x160>
   82d2c: 21 60 1b 91  	add	x1, x1, #1752
   82d30: e0 83 00 91  	add	x0, sp, #32
   82d34: 42 00 80 52  	mov	w2, #2
   82d38: f8 fb ff 97  	bl	0x81d18 <_ZN68_$LT$core..fmt..builders..PadAdapter$u20$as$u20$core..fmt..Write$GT$9write_str17h3825e647a41714ecE>
   82d3c: c0 00 00 35  	cbnz	w0, 0x82d54 <_ZN4core3fmt8builders11DebugStruct5field17hd9641a54df8a3bf1E+0x180>
   82d40: a8 0e 40 f9  	ldr	x8, [x21, #24]
   82d44: e1 03 01 91  	add	x1, sp, #64
   82d48: e0 03 14 aa  	mov	x0, x20
   82d4c: 00 01 3f d6  	blr	x8
   82d50: 60 01 00 36  	tbz	w0, #0, 0x82d7c <_ZN4core3fmt8builders11DebugStruct5field17hd9641a54df8a3bf1E+0x1a8>
   82d54: 20 00 80 52  	mov	w0, #1
   82d58: 60 22 00 39  	strb	w0, [x19, #8]
   82d5c: 79 26 00 39  	strb	w25, [x19, #9]
   82d60: e0 03 13 aa  	mov	x0, x19
   82d64: f4 4f 4b a9  	ldp	x20, x19, [sp, #176]
   82d68: f6 57 4a a9  	ldp	x22, x21, [sp, #160]
   82d6c: f8 5f 49 a9  	ldp	x24, x23, [sp, #144]
   82d70: fe 67 48 a9  	ldp	x30, x25, [sp, #128]
   82d74: ff 03 03 91  	add	sp, sp, #192
   82d78: c0 03 5f d6  	ret
   82d7c: e0 23 46 a9  	ldp	x0, x8, [sp, #96]
   82d80: 21 00 00 90  	adrp	x1, 0x86000 <_ZN4core3fmt8builders11DebugStruct5field17hd9641a54df8a3bf1E+0x1bc>
   82d84: 21 6c 08 91  	add	x1, x1, #539
   82d88: 42 00 80 52  	mov	w2, #2
   82d8c: 08 0d 40 f9  	ldr	x8, [x8, #24]
   82d90: 00 01 3f d6  	blr	x8
   82d94: f1 ff ff 17  	b	0x82d58 <_ZN4core3fmt8builders11DebugStruct5field17hd9641a54df8a3bf1E+0x184>

0000000000082d98 <_ZN4core3fmt5Write10write_char17h2b1e5227eb5c9fe4E>:
   82d98: fe 0f 1f f8  	str	x30, [sp, #-16]!
   82d9c: 3f 00 02 71  	cmp	w1, #128
   82da0: ff 0f 00 b9  	str	wzr, [sp, #12]
   82da4: e2 00 00 54  	b.hs	0x82dc0 <_ZN4core3fmt5Write10write_char17h2b1e5227eb5c9fe4E+0x28>
   82da8: e1 33 00 39  	strb	w1, [sp, #12]
   82dac: 22 00 80 52  	mov	w2, #1
   82db0: e1 33 00 91  	add	x1, sp, #12
   82db4: d9 fb ff 97  	bl	0x81d18 <_ZN68_$LT$core..fmt..builders..PadAdapter$u20$as$u20$core..fmt..Write$GT$9write_str17h3825e647a41714ecE>
   82db8: fe 07 41 f8  	ldr	x30, [sp], #16
   82dbc: c0 03 5f d6  	ret
   82dc0: 3f 00 20 71  	cmp	w1, #2048
   82dc4: 82 01 00 54  	b.hs	0x82df4 <_ZN4core3fmt5Write10write_char17h2b1e5227eb5c9fe4E+0x5c>
   82dc8: 28 7c 06 53  	lsr	w8, w1, #6
   82dcc: 09 10 80 52  	mov	w9, #128
   82dd0: 08 05 1a 32  	orr	w8, w8, #0xc0
   82dd4: 29 14 00 33  	bfxil	w9, w1, #0, #6
   82dd8: e8 33 00 39  	strb	w8, [sp, #12]
   82ddc: e9 37 00 39  	strb	w9, [sp, #13]
   82de0: 42 00 80 52  	mov	w2, #2
   82de4: e1 33 00 91  	add	x1, sp, #12
   82de8: cc fb ff 97  	bl	0x81d18 <_ZN68_$LT$core..fmt..builders..PadAdapter$u20$as$u20$core..fmt..Write$GT$9write_str17h3825e647a41714ecE>
   82dec: fe 07 41 f8  	ldr	x30, [sp], #16
   82df0: c0 03 5f d6  	ret
   82df4: 3f 40 40 71  	cmp	w1, #16, lsl #12
   82df8: e2 01 00 54  	b.hs	0x82e34 <_ZN4core3fmt5Write10write_char17h2b1e5227eb5c9fe4E+0x9c>
   82dfc: 28 7c 0c 53  	lsr	w8, w1, #12
   82e00: 09 10 80 52  	mov	w9, #128
   82e04: 0a 10 80 52  	mov	w10, #128
   82e08: 08 09 1b 32  	orr	w8, w8, #0xe0
   82e0c: 2a 2c 06 33  	bfxil	w10, w1, #6, #6
   82e10: 29 14 00 33  	bfxil	w9, w1, #0, #6
   82e14: e8 33 00 39  	strb	w8, [sp, #12]
   82e18: ea 37 00 39  	strb	w10, [sp, #13]
   82e1c: e9 3b 00 39  	strb	w9, [sp, #14]
   82e20: 62 00 80 52  	mov	w2, #3
   82e24: e1 33 00 91  	add	x1, sp, #12
   82e28: bc fb ff 97  	bl	0x81d18 <_ZN68_$LT$core..fmt..builders..PadAdapter$u20$as$u20$core..fmt..Write$GT$9write_str17h3825e647a41714ecE>
   82e2c: fe 07 41 f8  	ldr	x30, [sp], #16
   82e30: c0 03 5f d6  	ret
   82e34: 28 7c 12 53  	lsr	w8, w1, #18
   82e38: 09 10 80 52  	mov	w9, #128
   82e3c: 0a 10 80 52  	mov	w10, #128
   82e40: 0b 10 80 52  	mov	w11, #128
   82e44: 08 0d 1c 32  	orr	w8, w8, #0xf0
   82e48: 2a 44 0c 33  	bfxil	w10, w1, #12, #6
   82e4c: 2b 2c 06 33  	bfxil	w11, w1, #6, #6
   82e50: 29 14 00 33  	bfxil	w9, w1, #0, #6
   82e54: 82 00 80 52  	mov	w2, #4
   82e58: e8 33 00 39  	strb	w8, [sp, #12]
   82e5c: ea 37 00 39  	strb	w10, [sp, #13]
   82e60: eb 3b 00 39  	strb	w11, [sp, #14]
   82e64: e9 3f 00 39  	strb	w9, [sp, #15]
   82e68: e1 33 00 91  	add	x1, sp, #12
   82e6c: ab fb ff 97  	bl	0x81d18 <_ZN68_$LT$core..fmt..builders..PadAdapter$u20$as$u20$core..fmt..Write$GT$9write_str17h3825e647a41714ecE>
   82e70: fe 07 41 f8  	ldr	x30, [sp], #16
   82e74: c0 03 5f d6  	ret

0000000000082e78 <_ZN4core3fmt5Write9write_fmt17h30467bf8f008fbccE>:
   82e78: ff 03 01 d1  	sub	sp, sp, #64
   82e7c: fe 03 03 a9  	stp	x30, x0, [sp, #48]
   82e80: e0 03 00 91  	mov	x0, sp
   82e84: 02 06 80 52  	mov	w2, #48
   82e88: 8c 03 00 94  	bl	0x83cb8 <memcpy>
   82e8c: 21 00 00 90  	adrp	x1, 0x86000 <_ZN4core3fmt5Write9write_fmt17h30467bf8f008fbccE+0x24>
   82e90: 21 80 08 91  	add	x1, x1, #544
   82e94: e0 e3 00 91  	add	x0, sp, #56
   82e98: e2 03 00 91  	mov	x2, sp
   82e9c: 9b fa ff 97  	bl	0x81908 <_ZN4core3fmt5write17h63775af3066fbce8E>
   82ea0: fe 1b 40 f9  	ldr	x30, [sp, #48]
   82ea4: ff 03 01 91  	add	sp, sp, #64
   82ea8: c0 03 5f d6  	ret

0000000000082eac <_ZN50_$LT$$RF$mut$u20$W$u20$as$u20$core..fmt..Write$GT$9write_str17h4389b3a94789348fE>:
   82eac: 00 00 40 f9  	ldr	x0, [x0]
   82eb0: 9a fb ff 17  	b	0x81d18 <_ZN68_$LT$core..fmt..builders..PadAdapter$u20$as$u20$core..fmt..Write$GT$9write_str17h3825e647a41714ecE>

0000000000082eb4 <_ZN50_$LT$$RF$mut$u20$W$u20$as$u20$core..fmt..Write$GT$10write_char17h36047407a7ec2c59E>:
   82eb4: fe 0f 1f f8  	str	x30, [sp, #-16]!
   82eb8: 00 00 40 f9  	ldr	x0, [x0]
   82ebc: 3f 00 02 71  	cmp	w1, #128
   82ec0: ff 0f 00 b9  	str	wzr, [sp, #12]
   82ec4: e2 00 00 54  	b.hs	0x82ee0 <_ZN50_$LT$$RF$mut$u20$W$u20$as$u20$core..fmt..Write$GT$10write_char17h36047407a7ec2c59E+0x2c>
   82ec8: e1 33 00 39  	strb	w1, [sp, #12]
   82ecc: 22 00 80 52  	mov	w2, #1
   82ed0: e1 33 00 91  	add	x1, sp, #12
   82ed4: 91 fb ff 97  	bl	0x81d18 <_ZN68_$LT$core..fmt..builders..PadAdapter$u20$as$u20$core..fmt..Write$GT$9write_str17h3825e647a41714ecE>
   82ed8: fe 07 41 f8  	ldr	x30, [sp], #16
   82edc: c0 03 5f d6  	ret
   82ee0: 3f 00 20 71  	cmp	w1, #2048
   82ee4: 82 01 00 54  	b.hs	0x82f14 <_ZN50_$LT$$RF$mut$u20$W$u20$as$u20$core..fmt..Write$GT$10write_char17h36047407a7ec2c59E+0x60>
   82ee8: 28 7c 06 53  	lsr	w8, w1, #6
   82eec: 09 10 80 52  	mov	w9, #128
   82ef0: 08 05 1a 32  	orr	w8, w8, #0xc0
   82ef4: 29 14 00 33  	bfxil	w9, w1, #0, #6
   82ef8: e8 33 00 39  	strb	w8, [sp, #12]
   82efc: e9 37 00 39  	strb	w9, [sp, #13]
   82f00: 42 00 80 52  	mov	w2, #2
   82f04: e1 33 00 91  	add	x1, sp, #12
   82f08: 84 fb ff 97  	bl	0x81d18 <_ZN68_$LT$core..fmt..builders..PadAdapter$u20$as$u20$core..fmt..Write$GT$9write_str17h3825e647a41714ecE>
   82f0c: fe 07 41 f8  	ldr	x30, [sp], #16
   82f10: c0 03 5f d6  	ret
   82f14: 3f 40 40 71  	cmp	w1, #16, lsl #12
   82f18: e2 01 00 54  	b.hs	0x82f54 <_ZN50_$LT$$RF$mut$u20$W$u20$as$u20$core..fmt..Write$GT$10write_char17h36047407a7ec2c59E+0xa0>
   82f1c: 28 7c 0c 53  	lsr	w8, w1, #12
   82f20: 09 10 80 52  	mov	w9, #128
   82f24: 0a 10 80 52  	mov	w10, #128
   82f28: 08 09 1b 32  	orr	w8, w8, #0xe0
   82f2c: 2a 2c 06 33  	bfxil	w10, w1, #6, #6
   82f30: 29 14 00 33  	bfxil	w9, w1, #0, #6
   82f34: e8 33 00 39  	strb	w8, [sp, #12]
   82f38: ea 37 00 39  	strb	w10, [sp, #13]
   82f3c: e9 3b 00 39  	strb	w9, [sp, #14]
   82f40: 62 00 80 52  	mov	w2, #3
   82f44: e1 33 00 91  	add	x1, sp, #12
   82f48: 74 fb ff 97  	bl	0x81d18 <_ZN68_$LT$core..fmt..builders..PadAdapter$u20$as$u20$core..fmt..Write$GT$9write_str17h3825e647a41714ecE>
   82f4c: fe 07 41 f8  	ldr	x30, [sp], #16
   82f50: c0 03 5f d6  	ret
   82f54: 28 7c 12 53  	lsr	w8, w1, #18
   82f58: 09 10 80 52  	mov	w9, #128
   82f5c: 0a 10 80 52  	mov	w10, #128
   82f60: 0b 10 80 52  	mov	w11, #128
   82f64: 08 0d 1c 32  	orr	w8, w8, #0xf0
   82f68: 2a 44 0c 33  	bfxil	w10, w1, #12, #6
   82f6c: 2b 2c 06 33  	bfxil	w11, w1, #6, #6
   82f70: 29 14 00 33  	bfxil	w9, w1, #0, #6
   82f74: 82 00 80 52  	mov	w2, #4
   82f78: e8 33 00 39  	strb	w8, [sp, #12]
   82f7c: ea 37 00 39  	strb	w10, [sp, #13]
   82f80: eb 3b 00 39  	strb	w11, [sp, #14]
   82f84: e9 3f 00 39  	strb	w9, [sp, #15]
   82f88: e1 33 00 91  	add	x1, sp, #12
   82f8c: 63 fb ff 97  	bl	0x81d18 <_ZN68_$LT$core..fmt..builders..PadAdapter$u20$as$u20$core..fmt..Write$GT$9write_str17h3825e647a41714ecE>
   82f90: fe 07 41 f8  	ldr	x30, [sp], #16
   82f94: c0 03 5f d6  	ret

0000000000082f98 <_ZN50_$LT$$RF$mut$u20$W$u20$as$u20$core..fmt..Write$GT$9write_fmt17h06bf00dcb2c943e6E>:
   82f98: ff 03 01 d1  	sub	sp, sp, #64
   82f9c: 08 00 40 f9  	ldr	x8, [x0]
   82fa0: e0 03 00 91  	mov	x0, sp
   82fa4: 02 06 80 52  	mov	w2, #48
   82fa8: fe 23 03 a9  	stp	x30, x8, [sp, #48]
   82fac: 43 03 00 94  	bl	0x83cb8 <memcpy>
   82fb0: 21 00 00 90  	adrp	x1, 0x86000 <_ZN50_$LT$$RF$mut$u20$W$u20$as$u20$core..fmt..Write$GT$9write_fmt17h06bf00dcb2c943e6E+0x28>
   82fb4: 21 80 08 91  	add	x1, x1, #544
   82fb8: e0 e3 00 91  	add	x0, sp, #56
   82fbc: e2 03 00 91  	mov	x2, sp
   82fc0: 52 fa ff 97  	bl	0x81908 <_ZN4core3fmt5write17h63775af3066fbce8E>
   82fc4: fe 1b 40 f9  	ldr	x30, [sp, #48]
   82fc8: ff 03 01 91  	add	sp, sp, #64
   82fcc: c0 03 5f d6  	ret

0000000000082fd0 <_ZN4core3fmt9Formatter9alternate17h5a07b4bd7e02e2b8E>:
   82fd0: 08 c0 40 39  	ldrb	w8, [x0, #48]
   82fd4: 00 09 02 53  	ubfx	w0, w8, #2, #1
   82fd8: c0 03 5f d6  	ret

0000000000082fdc <_ZN4core3fmt9Formatter15debug_lower_hex17h0b7f072683990bf5E>:
   82fdc: 08 c0 40 39  	ldrb	w8, [x0, #48]
   82fe0: 00 11 04 53  	ubfx	w0, w8, #4, #1
   82fe4: c0 03 5f d6  	ret

0000000000082fe8 <_ZN4core3fmt9Formatter15debug_upper_hex17hc999bac86c60dde4E>:
   82fe8: 08 c0 40 39  	ldrb	w8, [x0, #48]
   82fec: 00 15 05 53  	ubfx	w0, w8, #5, #1
   82ff0: c0 03 5f d6  	ret

0000000000082ff4 <_ZN42_$LT$$RF$T$u20$as$u20$core..fmt..Debug$GT$3fmt17hfc760a505aab9f54E>:
   82ff4: ff 43 02 d1  	sub	sp, sp, #144
   82ff8: fe 43 00 f9  	str	x30, [sp, #128]
   82ffc: 28 30 40 b9  	ldr	w8, [x1, #48]
   83000: 09 00 40 f9  	ldr	x9, [x0]
   83004: c8 05 20 37  	tbnz	w8, #4, 0x830bc <_ZN42_$LT$$RF$T$u20$as$u20$core..fmt..Debug$GT$3fmt17hfc760a505aab9f54E+0xc8>
   83008: a8 07 28 37  	tbnz	w8, #5, 0x830fc <_ZN42_$LT$$RF$T$u20$as$u20$core..fmt..Debug$GT$3fmt17hfc760a505aab9f54E+0x108>
   8300c: 28 01 40 b9  	ldr	w8, [x9]
   83010: 09 7d 44 d3  	ubfx	x9, x8, #4, #28
   83014: 3f c5 09 71  	cmp	w9, #625
   83018: 03 0b 00 54  	b.lo	0x83178 <_ZN42_$LT$$RF$T$u20$as$u20$core..fmt..Debug$GT$3fmt17hfc760a505aab9f54E+0x184>
   8301c: 6a 29 8b d2  	mov	x10, #22859
   83020: ca 10 a7 f2  	movk	x10, #14470, lsl #16
   83024: ca ba d8 f2  	movk	x10, #50646, lsl #32
   83028: ec a3 90 52  	mov	w12, #34079
   8302c: 0e 00 00 d0  	adrp	x14, 0x85000 <_ZN42_$LT$$RF$T$u20$as$u20$core..fmt..Debug$GT$3fmt17hfc760a505aab9f54E+0x40>
   83030: f0 1f 9c 52  	mov	w16, #57599
   83034: e9 03 1f aa  	mov	x9, xzr
   83038: aa 8d e6 f2  	movk	x10, #13421, lsl #48
   8303c: eb e1 84 12  	mov	w11, #-10000
   83040: 6c 3d aa 72  	movk	w12, #20971, lsl #16
   83044: 6d 0c 80 12  	mov	w13, #-100
   83048: ce 29 13 91  	add	x14, x14, #1226
   8304c: ef 03 00 91  	mov	x15, sp
   83050: b0 be a0 72  	movk	w16, #1525, lsl #16
   83054: f1 03 08 aa  	mov	x17, x8
   83058: 08 7d ca 9b  	umulh	x8, x8, x10
   8305c: 08 fd 4b d3  	lsr	x8, x8, #11
   83060: 3f 02 10 eb  	cmp	x17, x16
   83064: 11 45 0b 1b  	madd	w17, w8, w11, w17
   83068: 20 3e 00 12  	and	w0, w17, #0xffff
   8306c: 00 7c ac 9b  	umull	x0, w0, w12
   83070: 00 fc 65 d3  	lsr	x0, x0, #37
   83074: 11 44 0d 1b  	madd	w17, w0, w13, w17
   83078: c0 05 00 8b  	add	x0, x14, x0, lsl #1
   8307c: d1 25 31 8b  	add	x17, x14, w17, uxth #1
   83080: 02 00 40 39  	ldrb	w2, [x0]
   83084: 00 04 40 39  	ldrb	w0, [x0, #1]
   83088: 23 06 40 39  	ldrb	w3, [x17, #1]
   8308c: 31 02 40 39  	ldrb	w17, [x17]
   83090: f2 01 09 8b  	add	x18, x15, x9
   83094: 29 11 00 d1  	sub	x9, x9, #4
   83098: 40 92 00 39  	strb	w0, [x18, #36]
   8309c: 42 8e 00 39  	strb	w2, [x18, #35]
   830a0: 43 9a 00 39  	strb	w3, [x18, #38]
   830a4: 51 96 00 39  	strb	w17, [x18, #37]
   830a8: 68 fd ff 54  	b.hi	0x83054 <_ZN42_$LT$$RF$T$u20$as$u20$core..fmt..Debug$GT$3fmt17hfc760a505aab9f54E+0x60>
   830ac: 29 9d 00 91  	add	x9, x9, #39
   830b0: 1f 8d 01 f1  	cmp	x8, #99
   830b4: 88 06 00 54  	b.hi	0x83184 <_ZN42_$LT$$RF$T$u20$as$u20$core..fmt..Debug$GT$3fmt17hfc760a505aab9f54E+0x190>
   830b8: 45 00 00 14  	b	0x831cc <_ZN42_$LT$$RF$T$u20$as$u20$core..fmt..Debug$GT$3fmt17hfc760a505aab9f54E+0x1d8>
   830bc: 2a 01 40 b9  	ldr	w10, [x9]
   830c0: e8 03 1f aa  	mov	x8, xzr
   830c4: e9 03 00 91  	mov	x9, sp
   830c8: 4d 0d 00 12  	and	w13, w10, #0xf
   830cc: 0e 06 80 52  	mov	w14, #48
   830d0: 4c 7d 04 53  	lsr	w12, w10, #4
   830d4: 4e 0d 00 33  	bfxil	w14, w10, #0, #4
   830d8: aa 5d 01 11  	add	w10, w13, #87
   830dc: bf 29 00 71  	cmp	w13, #10
   830e0: 2b 01 08 8b  	add	x11, x9, x8
   830e4: ca 31 8a 1a  	csel	w10, w14, w10, lo
   830e8: 6a fd 01 39  	strb	w10, [x11, #127]
   830ec: 08 05 00 d1  	sub	x8, x8, #1
   830f0: ea 03 0c 2a  	mov	w10, w12
   830f4: ac fe ff 35  	cbnz	w12, 0x830c8 <_ZN42_$LT$$RF$T$u20$as$u20$core..fmt..Debug$GT$3fmt17hfc760a505aab9f54E+0xd4>
   830f8: 10 00 00 14  	b	0x83138 <_ZN42_$LT$$RF$T$u20$as$u20$core..fmt..Debug$GT$3fmt17hfc760a505aab9f54E+0x144>
   830fc: 2a 01 40 b9  	ldr	w10, [x9]
   83100: e8 03 1f aa  	mov	x8, xzr
   83104: e9 03 00 91  	mov	x9, sp
   83108: 4d 0d 00 12  	and	w13, w10, #0xf
   8310c: 0e 06 80 52  	mov	w14, #48
   83110: 4c 7d 04 53  	lsr	w12, w10, #4
   83114: 4e 0d 00 33  	bfxil	w14, w10, #0, #4
   83118: aa dd 00 11  	add	w10, w13, #55
   8311c: bf 29 00 71  	cmp	w13, #10
   83120: 2b 01 08 8b  	add	x11, x9, x8
   83124: ca 31 8a 1a  	csel	w10, w14, w10, lo
   83128: 6a fd 01 39  	strb	w10, [x11, #127]
   8312c: 08 05 00 d1  	sub	x8, x8, #1
   83130: ea 03 0c 2a  	mov	w10, w12
   83134: ac fe ff 35  	cbnz	w12, 0x83108 <_ZN42_$LT$$RF$T$u20$as$u20$core..fmt..Debug$GT$3fmt17hfc760a505aab9f54E+0x114>
   83138: 00 01 02 91  	add	x0, x8, #128
   8313c: 1f 04 02 f1  	cmp	x0, #129
   83140: 22 08 00 54  	b.hs	0x83244 <_ZN42_$LT$$RF$T$u20$as$u20$core..fmt..Debug$GT$3fmt17hfc760a505aab9f54E+0x250>
   83144: e9 03 00 91  	mov	x9, sp
   83148: e4 03 08 cb  	neg	x4, x8
   8314c: 28 01 08 8b  	add	x8, x9, x8
   83150: 03 01 02 91  	add	x3, x8, #128
   83154: 08 00 00 d0  	adrp	x8, 0x85000 <_ZN42_$LT$$RF$T$u20$as$u20$core..fmt..Debug$GT$3fmt17hfc760a505aab9f54E+0x168>
   83158: 08 c1 18 91  	add	x8, x8, #1584
   8315c: 42 00 80 52  	mov	w2, #2
   83160: e0 03 01 aa  	mov	x0, x1
   83164: e1 03 08 aa  	mov	x1, x8
   83168: dc f7 ff 97  	bl	0x810d8 <_ZN4core3fmt9Formatter12pad_integral17ha6f583ca7a70f44dE>
   8316c: fe 43 40 f9  	ldr	x30, [sp, #128]
   83170: ff 43 02 91  	add	sp, sp, #144
   83174: c0 03 5f d6  	ret
   83178: e9 04 80 52  	mov	w9, #39
   8317c: 1f 8d 01 f1  	cmp	x8, #99
   83180: 69 02 00 54  	b.ls	0x831cc <_ZN42_$LT$$RF$T$u20$as$u20$core..fmt..Debug$GT$3fmt17hfc760a505aab9f54E+0x1d8>
   83184: eb a3 90 52  	mov	w11, #34079
   83188: 0a 3d 00 12  	and	w10, w8, #0xffff
   8318c: 6b 3d aa 72  	movk	w11, #20971, lsl #16
   83190: 4a 7d ab 9b  	umull	x10, w10, w11
   83194: 6c 0c 80 12  	mov	w12, #-100
   83198: 0b 00 00 d0  	adrp	x11, 0x85000 <_ZN42_$LT$$RF$T$u20$as$u20$core..fmt..Debug$GT$3fmt17hfc760a505aab9f54E+0x1ac>
   8319c: 4a fd 65 d3  	lsr	x10, x10, #37
   831a0: 6b 29 13 91  	add	x11, x11, #1226
   831a4: 48 21 0c 1b  	madd	w8, w10, w12, w8
   831a8: 68 25 28 8b  	add	x8, x11, w8, uxth #1
   831ac: 0b 05 40 39  	ldrb	w11, [x8, #1]
   831b0: 08 01 40 39  	ldrb	w8, [x8]
   831b4: 29 09 00 d1  	sub	x9, x9, #2
   831b8: ec 03 00 91  	mov	x12, sp
   831bc: 8c 01 09 8b  	add	x12, x12, x9
   831c0: 88 01 00 39  	strb	w8, [x12]
   831c4: e8 03 0a aa  	mov	x8, x10
   831c8: 8b 05 00 39  	strb	w11, [x12, #1]
   831cc: 1f 29 00 f1  	cmp	x8, #10
   831d0: ca 00 00 54  	b.ge	0x831e8 <_ZN42_$LT$$RF$T$u20$as$u20$core..fmt..Debug$GT$3fmt17hfc760a505aab9f54E+0x1f4>
   831d4: 29 05 00 d1  	sub	x9, x9, #1
   831d8: 08 c1 00 11  	add	w8, w8, #48
   831dc: ea 03 00 91  	mov	x10, sp
   831e0: 48 69 29 38  	strb	w8, [x10, x9]
   831e4: 0b 00 00 14  	b	0x83210 <_ZN42_$LT$$RF$T$u20$as$u20$core..fmt..Debug$GT$3fmt17hfc760a505aab9f54E+0x21c>
   831e8: 0a 00 00 d0  	adrp	x10, 0x85000 <_ZN42_$LT$$RF$T$u20$as$u20$core..fmt..Debug$GT$3fmt17hfc760a505aab9f54E+0x1fc>
   831ec: 4a 29 13 91  	add	x10, x10, #1226
   831f0: 48 05 08 8b  	add	x8, x10, x8, lsl #1
   831f4: 0a 05 40 39  	ldrb	w10, [x8, #1]
   831f8: 08 01 40 39  	ldrb	w8, [x8]
   831fc: 29 09 00 d1  	sub	x9, x9, #2
   83200: eb 03 00 91  	mov	x11, sp
   83204: 6b 01 09 8b  	add	x11, x11, x9
   83208: 6a 05 00 39  	strb	w10, [x11, #1]
   8320c: 68 01 00 39  	strb	w8, [x11]
   83210: e8 03 00 91  	mov	x8, sp
   83214: 03 01 09 8b  	add	x3, x8, x9
   83218: 08 00 00 d0  	adrp	x8, 0x85000 <_ZN42_$LT$$RF$T$u20$as$u20$core..fmt..Debug$GT$3fmt17hfc760a505aab9f54E+0x22c>
   8321c: ea 04 80 52  	mov	w10, #39
   83220: 08 e1 10 91  	add	x8, x8, #1080
   83224: 44 01 09 cb  	sub	x4, x10, x9
   83228: e0 03 01 aa  	mov	x0, x1
   8322c: e1 03 08 aa  	mov	x1, x8
   83230: e2 03 1f aa  	mov	x2, xzr
   83234: a9 f7 ff 97  	bl	0x810d8 <_ZN4core3fmt9Formatter12pad_integral17ha6f583ca7a70f44dE>
   83238: fe 43 40 f9  	ldr	x30, [sp, #128]
   8323c: ff 43 02 91  	add	sp, sp, #144
   83240: c0 03 5f d6  	ret
   83244: 02 00 00 d0  	adrp	x2, 0x85000 <_ZN42_$LT$$RF$T$u20$as$u20$core..fmt..Debug$GT$3fmt17hfc760a505aab9f54E+0x258>
   83248: 42 60 18 91  	add	x2, x2, #1560
   8324c: 01 10 80 52  	mov	w1, #128
   83250: 71 f8 ff 97  	bl	0x81414 <_ZN4core5slice5index26slice_start_index_len_fail17ha3ad23336e78e7f7E>
   83254: 20 00 20 d4  	brk	#0x1

0000000000083258 <_ZN42_$LT$$RF$T$u20$as$u20$core..fmt..Debug$GT$3fmt17h2118265c3795f77dE>:
   83258: ff 83 02 d1  	sub	sp, sp, #160
   8325c: fd 7b 04 a9  	stp	x29, x30, [sp, #64]
   83260: fc 6f 05 a9  	stp	x28, x27, [sp, #80]
   83264: fa 67 06 a9  	stp	x26, x25, [sp, #96]
   83268: f8 5f 07 a9  	stp	x24, x23, [sp, #112]
   8326c: f6 57 08 a9  	stp	x22, x21, [sp, #128]
   83270: f4 4f 09 a9  	stp	x20, x19, [sp, #144]
   83274: 08 00 40 f9  	ldr	x8, [x0]
   83278: 33 24 42 a9  	ldp	x19, x9, [x1, #32]
   8327c: 41 04 80 52  	mov	w1, #34
   83280: 0a 21 40 a9  	ldp	x10, x8, [x8]
   83284: 22 11 40 f9  	ldr	x2, [x9, #32]
   83288: e0 03 13 aa  	mov	x0, x19
   8328c: e9 13 00 f9  	str	x9, [sp, #32]
   83290: e8 ab 02 a9  	stp	x8, x10, [sp, #40]
   83294: e2 1f 00 f9  	str	x2, [sp, #56]
   83298: 40 00 3f d6  	blr	x2
   8329c: 40 01 00 36  	tbz	w0, #0, 0x832c4 <_ZN42_$LT$$RF$T$u20$as$u20$core..fmt..Debug$GT$3fmt17h2118265c3795f77dE+0x6c>
   832a0: f4 4f 49 a9  	ldp	x20, x19, [sp, #144]
   832a4: f6 57 48 a9  	ldp	x22, x21, [sp, #128]
   832a8: f8 5f 47 a9  	ldp	x24, x23, [sp, #112]
   832ac: fa 67 46 a9  	ldp	x26, x25, [sp, #96]
   832b0: fc 6f 45 a9  	ldp	x28, x27, [sp, #80]
   832b4: fd 7b 44 a9  	ldp	x29, x30, [sp, #64]
   832b8: 20 00 80 52  	mov	w0, #1
   832bc: ff 83 02 91  	add	sp, sp, #160
   832c0: c0 03 5f d6  	ret
   832c4: eb 17 40 f9  	ldr	x11, [sp, #40]
   832c8: cb 1c 00 b4  	cbz	x11, 0x83660 <_ZN42_$LT$$RF$T$u20$as$u20$core..fmt..Debug$GT$3fmt17h2118265c3795f77dE+0x408>
   832cc: e8 1b 40 f9  	ldr	x8, [sp, #48]
   832d0: 1b 00 00 b0  	adrp	x27, 0x84000 <_ZN42_$LT$$RF$T$u20$as$u20$core..fmt..Debug$GT$3fmt17h2118265c3795f77dE+0x7c>
   832d4: 0e 00 00 b0  	adrp	x14, 0x84000 <_ZN42_$LT$$RF$T$u20$as$u20$core..fmt..Debug$GT$3fmt17h2118265c3795f77dE+0x80>
   832d8: f8 03 1f aa  	mov	x24, xzr
   832dc: e3 03 1f aa  	mov	x3, xzr
   832e0: 15 01 0b 8b  	add	x21, x8, x11
   832e4: 7b 6f 36 91  	add	x27, x27, #3483
   832e8: ce 05 36 91  	add	x14, x14, #3457
   832ec: ec 03 08 aa  	mov	x12, x8
   832f0: ea 03 08 aa  	mov	x10, x8
   832f4: fc 03 0a aa  	mov	x28, x10
   832f8: 88 17 c0 38  	ldrsb	w8, [x28], #1
   832fc: 1d 1d 00 12  	and	w29, w8, #0xff
   83300: 68 00 f8 37  	tbnz	w8, #31, 0x8330c <_ZN42_$LT$$RF$T$u20$as$u20$core..fmt..Debug$GT$3fmt17h2118265c3795f77dE+0xb4>
   83304: ed 03 1c aa  	mov	x13, x28
   83308: 2f 00 00 14  	b	0x833c4 <_ZN42_$LT$$RF$T$u20$as$u20$core..fmt..Debug$GT$3fmt17h2118265c3795f77dE+0x16c>
   8330c: 9f 03 15 eb  	cmp	x28, x21
   83310: 80 02 00 54  	b.eq	0x83360 <_ZN42_$LT$$RF$T$u20$as$u20$core..fmt..Debug$GT$3fmt17h2118265c3795f77dE+0x108>
   83314: 48 05 40 39  	ldrb	w8, [x10, #1]
   83318: 4d 09 00 91  	add	x13, x10, #2
   8331c: 0a 15 00 12  	and	w10, w8, #0x3f
   83320: bf 7f 03 71  	cmp	w29, #223
   83324: a8 13 00 12  	and	w8, w29, #0x1f
   83328: 69 02 00 54  	b.ls	0x83374 <_ZN42_$LT$$RF$T$u20$as$u20$core..fmt..Debug$GT$3fmt17h2118265c3795f77dE+0x11c>
   8332c: bf 01 15 eb  	cmp	x13, x21
   83330: a0 02 00 54  	b.eq	0x83384 <_ZN42_$LT$$RF$T$u20$as$u20$core..fmt..Debug$GT$3fmt17h2118265c3795f77dE+0x12c>
   83334: a9 15 40 38  	ldrb	w9, [x13], #1
   83338: 29 15 00 12  	and	w9, w9, #0x3f
   8333c: bf c3 03 71  	cmp	w29, #240
   83340: 49 15 1a 33  	bfi	w9, w10, #6, #6
   83344: a3 02 00 54  	b.lo	0x83398 <_ZN42_$LT$$RF$T$u20$as$u20$core..fmt..Debug$GT$3fmt17h2118265c3795f77dE+0x140>
   83348: bf 01 15 eb  	cmp	x13, x21
   8334c: e0 02 00 54  	b.eq	0x833a8 <_ZN42_$LT$$RF$T$u20$as$u20$core..fmt..Debug$GT$3fmt17h2118265c3795f77dE+0x150>
   83350: aa 15 40 38  	ldrb	w10, [x13], #1
   83354: 4a 15 00 12  	and	w10, w10, #0x3f
   83358: fc 03 0d aa  	mov	x28, x13
   8335c: 15 00 00 14  	b	0x833b0 <_ZN42_$LT$$RF$T$u20$as$u20$core..fmt..Debug$GT$3fmt17h2118265c3795f77dE+0x158>
   83360: ea 03 1f 2a  	mov	w10, wzr
   83364: ed 03 15 aa  	mov	x13, x21
   83368: bf 7f 03 71  	cmp	w29, #223
   8336c: a8 13 00 12  	and	w8, w29, #0x1f
   83370: e8 fd ff 54  	b.hi	0x8332c <_ZN42_$LT$$RF$T$u20$as$u20$core..fmt..Debug$GT$3fmt17h2118265c3795f77dE+0xd4>
   83374: 0a 11 1a 33  	bfi	w10, w8, #6, #5
   83378: fc 03 0d aa  	mov	x28, x13
   8337c: fd 03 0a 2a  	mov	w29, w10
   83380: 11 00 00 14  	b	0x833c4 <_ZN42_$LT$$RF$T$u20$as$u20$core..fmt..Debug$GT$3fmt17h2118265c3795f77dE+0x16c>
   83384: e9 03 1f 2a  	mov	w9, wzr
   83388: ed 03 15 aa  	mov	x13, x21
   8338c: bf c3 03 71  	cmp	w29, #240
   83390: 49 15 1a 33  	bfi	w9, w10, #6, #6
   83394: a2 fd ff 54  	b.hs	0x83348 <_ZN42_$LT$$RF$T$u20$as$u20$core..fmt..Debug$GT$3fmt17h2118265c3795f77dE+0xf0>
   83398: 09 11 14 33  	bfi	w9, w8, #12, #5
   8339c: fc 03 0d aa  	mov	x28, x13
   833a0: fd 03 09 2a  	mov	w29, w9
   833a4: 08 00 00 14  	b	0x833c4 <_ZN42_$LT$$RF$T$u20$as$u20$core..fmt..Debug$GT$3fmt17h2118265c3795f77dE+0x16c>
   833a8: ea 03 1f 2a  	mov	w10, wzr
   833ac: fc 03 15 aa  	mov	x28, x21
   833b0: 08 09 0e 53  	ubfiz	w8, w8, #18, #3
   833b4: 28 2d 1a 33  	bfi	w8, w9, #6, #12
   833b8: 1d 01 0a 2a  	orr	w29, w8, w10
   833bc: bf 43 44 71  	cmp	w29, #272, lsl #12
   833c0: 00 14 00 54  	b.eq	0x83640 <_ZN42_$LT$$RF$T$u20$as$u20$core..fmt..Debug$GT$3fmt17h2118265c3795f77dE+0x3e8>
   833c4: a8 27 00 51  	sub	w8, w29, #9
   833c8: 1f 65 00 71  	cmp	w8, #25
   833cc: ed 33 01 a9  	stp	x13, x12, [sp, #16]
   833d0: fc 07 00 f9  	str	x28, [sp, #8]
   833d4: 48 01 00 54  	b.hi	0x833fc <_ZN42_$LT$$RF$T$u20$as$u20$core..fmt..Debug$GT$3fmt17h2118265c3795f77dE+0x1a4>
   833d8: c9 00 00 10  	adr	x9, #24
   833dc: ca 69 68 38  	ldrb	w10, [x14, x8]
   833e0: 29 09 0a 8b  	add	x9, x9, x10, lsl #2
   833e4: 97 0e 80 52  	mov	w23, #116
   833e8: 59 00 80 52  	mov	w25, #2
   833ec: 20 01 1f d6  	br	x9
   833f0: d7 0d 80 52  	mov	w23, #110
   833f4: 59 00 80 52  	mov	w25, #2
   833f8: 1f 00 00 14  	b	0x83474 <_ZN42_$LT$$RF$T$u20$as$u20$core..fmt..Debug$GT$3fmt17h2118265c3795f77dE+0x21c>
   833fc: bf 73 01 71  	cmp	w29, #92
   83400: 81 00 00 54  	b.ne	0x83410 <_ZN42_$LT$$RF$T$u20$as$u20$core..fmt..Debug$GT$3fmt17h2118265c3795f77dE+0x1b8>
   83404: 59 00 80 52  	mov	w25, #2
   83408: f7 03 1d 2a  	mov	w23, w29
   8340c: 1a 00 00 14  	b	0x83474 <_ZN42_$LT$$RF$T$u20$as$u20$core..fmt..Debug$GT$3fmt17h2118265c3795f77dE+0x21c>
   83410: e0 03 1d 2a  	mov	w0, w29
   83414: f4 03 03 aa  	mov	x20, x3
   83418: ec fc ff 97  	bl	0x827c8 <_ZN4core7unicode12unicode_data15grapheme_extend6lookup17h6270b00245d19f23E>
   8341c: 80 01 00 37  	tbnz	w0, #0, 0x8344c <_ZN42_$LT$$RF$T$u20$as$u20$core..fmt..Debug$GT$3fmt17h2118265c3795f77dE+0x1f4>
   83420: e0 03 1d 2a  	mov	w0, w29
   83424: 37 fd ff 97  	bl	0x82900 <_ZN4core7unicode9printable12is_printable17ha641fcfcb2036eb6E>
   83428: 20 01 00 36  	tbz	w0, #0, 0x8344c <_ZN42_$LT$$RF$T$u20$as$u20$core..fmt..Debug$GT$3fmt17h2118265c3795f77dE+0x1f4>
   8342c: eb 17 40 f9  	ldr	x11, [sp, #40]
   83430: ea 27 41 a9  	ldp	x10, x9, [sp, #16]
   83434: fc 03 15 aa  	mov	x28, x21
   83438: f5 03 14 aa  	mov	x21, x20
   8343c: 78 00 00 14  	b	0x8361c <_ZN42_$LT$$RF$T$u20$as$u20$core..fmt..Debug$GT$3fmt17h2118265c3795f77dE+0x3c4>
   83440: 57 0e 80 52  	mov	w23, #114
   83444: 59 00 80 52  	mov	w25, #2
   83448: 0b 00 00 14  	b	0x83474 <_ZN42_$LT$$RF$T$u20$as$u20$core..fmt..Debug$GT$3fmt17h2118265c3795f77dE+0x21c>
   8344c: a8 03 00 32  	orr	w8, w29, #0x1
   83450: eb 17 40 f9  	ldr	x11, [sp, #40]
   83454: 08 11 c0 5a  	clz	w8, w8
   83458: e9 03 1d 2a  	mov	w9, w29
   8345c: aa 00 c0 d2  	mov	x10, #21474836480
   83460: 08 7d 02 53  	lsr	w8, w8, #2
   83464: 3a 01 0a aa  	orr	x26, x9, x10
   83468: 16 09 00 52  	eor	w22, w8, #0x7
   8346c: 79 00 80 52  	mov	w25, #3
   83470: e3 03 14 aa  	mov	x3, x20
   83474: 7f 00 18 eb  	cmp	x3, x24
   83478: 23 12 00 54  	b.lo	0x836bc <_ZN42_$LT$$RF$T$u20$as$u20$core..fmt..Debug$GT$3fmt17h2118265c3795f77dE+0x464>
   8347c: 38 01 00 b4  	cbz	x24, 0x834a0 <_ZN42_$LT$$RF$T$u20$as$u20$core..fmt..Debug$GT$3fmt17h2118265c3795f77dE+0x248>
   83480: 1f 03 0b eb  	cmp	x24, x11
   83484: c2 00 00 54  	b.hs	0x8349c <_ZN42_$LT$$RF$T$u20$as$u20$core..fmt..Debug$GT$3fmt17h2118265c3795f77dE+0x244>
   83488: e8 1b 40 f9  	ldr	x8, [sp, #48]
   8348c: 08 69 f8 38  	ldrsb	w8, [x8, x24]
   83490: 1f 01 01 31  	cmn	w8, #64
   83494: 6a 00 00 54  	b.ge	0x834a0 <_ZN42_$LT$$RF$T$u20$as$u20$core..fmt..Debug$GT$3fmt17h2118265c3795f77dE+0x248>
   83498: 89 00 00 14  	b	0x836bc <_ZN42_$LT$$RF$T$u20$as$u20$core..fmt..Debug$GT$3fmt17h2118265c3795f77dE+0x464>
   8349c: 01 11 00 54  	b.ne	0x836bc <_ZN42_$LT$$RF$T$u20$as$u20$core..fmt..Debug$GT$3fmt17h2118265c3795f77dE+0x464>
   834a0: 23 01 00 b4  	cbz	x3, 0x834c4 <_ZN42_$LT$$RF$T$u20$as$u20$core..fmt..Debug$GT$3fmt17h2118265c3795f77dE+0x26c>
   834a4: 7f 00 0b eb  	cmp	x3, x11
   834a8: 22 01 00 54  	b.hs	0x834cc <_ZN42_$LT$$RF$T$u20$as$u20$core..fmt..Debug$GT$3fmt17h2118265c3795f77dE+0x274>
   834ac: e8 1b 40 f9  	ldr	x8, [sp, #48]
   834b0: f4 03 03 aa  	mov	x20, x3
   834b4: 08 69 e3 38  	ldrsb	w8, [x8, x3]
   834b8: 1f 05 01 31  	cmn	w8, #65
   834bc: cc 00 00 54  	b.gt	0x834d4 <_ZN42_$LT$$RF$T$u20$as$u20$core..fmt..Debug$GT$3fmt17h2118265c3795f77dE+0x27c>
   834c0: 7f 00 00 14  	b	0x836bc <_ZN42_$LT$$RF$T$u20$as$u20$core..fmt..Debug$GT$3fmt17h2118265c3795f77dE+0x464>
   834c4: f4 03 1f aa  	mov	x20, xzr
   834c8: 03 00 00 14  	b	0x834d4 <_ZN42_$LT$$RF$T$u20$as$u20$core..fmt..Debug$GT$3fmt17h2118265c3795f77dE+0x27c>
   834cc: f4 03 0b aa  	mov	x20, x11
   834d0: 61 0f 00 54  	b.ne	0x836bc <_ZN42_$LT$$RF$T$u20$as$u20$core..fmt..Debug$GT$3fmt17h2118265c3795f77dE+0x464>
   834d4: e8 13 40 f9  	ldr	x8, [sp, #32]
   834d8: e9 1b 40 f9  	ldr	x9, [sp, #48]
   834dc: 82 02 18 cb  	sub	x2, x20, x24
   834e0: e0 03 13 aa  	mov	x0, x19
   834e4: 08 0d 40 f9  	ldr	x8, [x8, #24]
   834e8: 21 01 18 8b  	add	x1, x9, x24
   834ec: fc 03 15 aa  	mov	x28, x21
   834f0: f5 03 03 aa  	mov	x21, x3
   834f4: 00 01 3f d6  	blr	x8
   834f8: 18 00 00 b0  	adrp	x24, 0x84000 <_ZN42_$LT$$RF$T$u20$as$u20$core..fmt..Debug$GT$3fmt17h2118265c3795f77dE+0x2a4>
   834fc: 18 7f 36 91  	add	x24, x24, #3487
   83500: 00 01 00 36  	tbz	w0, #0, 0x83520 <_ZN42_$LT$$RF$T$u20$as$u20$core..fmt..Debug$GT$3fmt17h2118265c3795f77dE+0x2c8>
   83504: 67 ff ff 17  	b	0x832a0 <_ZN42_$LT$$RF$T$u20$as$u20$core..fmt..Debug$GT$3fmt17h2118265c3795f77dE+0x48>
   83508: f9 03 1f 2a  	mov	w25, wzr
   8350c: e1 03 17 2a  	mov	w1, w23
   83510: e2 1f 40 f9  	ldr	x2, [sp, #56]
   83514: e0 03 13 aa  	mov	x0, x19
   83518: 40 00 3f d6  	blr	x2
   8351c: 20 ec 07 37  	tbnz	w0, #0, 0x832a0 <_ZN42_$LT$$RF$T$u20$as$u20$core..fmt..Debug$GT$3fmt17h2118265c3795f77dE+0x48>
   83520: e8 03 19 2a  	mov	w8, w25
   83524: 29 ff ff 10  	adr	x9, #-28
   83528: 6a 6b 68 38  	ldrb	w10, [x27, x8]
   8352c: 29 09 0a 8b  	add	x9, x9, x10, lsl #2
   83530: 39 00 80 52  	mov	w25, #1
   83534: 81 0b 80 52  	mov	w1, #92
   83538: 20 01 1f d6  	br	x9
   8353c: 48 9f 60 d3  	ubfx	x8, x26, #32, #8
   83540: 89 00 00 10  	adr	x9, #16
   83544: 0a 6b 68 38  	ldrb	w10, [x24, x8]
   83548: 29 09 0a 8b  	add	x9, x9, x10, lsl #2
   8354c: 20 01 1f d6  	br	x9
   83550: 5a df 58 92  	and	x26, x26, #0xffffff00ffffffff
   83554: 79 00 80 52  	mov	w25, #3
   83558: a1 0f 80 52  	mov	w1, #125
   8355c: ed ff ff 17  	b	0x83510 <_ZN42_$LT$$RF$T$u20$as$u20$core..fmt..Debug$GT$3fmt17h2118265c3795f77dE+0x2b8>
   83560: 48 df 58 92  	and	x8, x26, #0xffffff00ffffffff
   83564: 79 00 80 52  	mov	w25, #3
   83568: 1a 05 60 b2  	orr	x26, x8, #0x300000000
   8356c: a1 0e 80 52  	mov	w1, #117
   83570: e8 ff ff 17  	b	0x83510 <_ZN42_$LT$$RF$T$u20$as$u20$core..fmt..Debug$GT$3fmt17h2118265c3795f77dE+0x2b8>
   83574: c8 0a 1e 53  	ubfiz	w8, w22, #2, #3
   83578: 48 27 c8 1a  	lsr	w8, w26, w8
   8357c: 08 0d 00 12  	and	w8, w8, #0xf
   83580: 1f 29 00 71  	cmp	w8, #10
   83584: e9 0a 80 52  	mov	w9, #87
   83588: 0a 06 80 52  	mov	w10, #48
   8358c: 49 31 89 1a  	csel	w9, w10, w9, lo
   83590: 21 01 08 0b  	add	w1, w9, w8
   83594: d6 01 00 b4  	cbz	x22, 0x835cc <_ZN42_$LT$$RF$T$u20$as$u20$core..fmt..Debug$GT$3fmt17h2118265c3795f77dE+0x374>
   83598: d6 06 00 d1  	sub	x22, x22, #1
   8359c: 79 00 80 52  	mov	w25, #3
   835a0: dc ff ff 17  	b	0x83510 <_ZN42_$LT$$RF$T$u20$as$u20$core..fmt..Debug$GT$3fmt17h2118265c3795f77dE+0x2b8>
   835a4: 48 df 58 92  	and	x8, x26, #0xffffff00ffffffff
   835a8: 79 00 80 52  	mov	w25, #3
   835ac: 1a 01 5f b2  	orr	x26, x8, #0x200000000
   835b0: 61 0f 80 52  	mov	w1, #123
   835b4: d7 ff ff 17  	b	0x83510 <_ZN42_$LT$$RF$T$u20$as$u20$core..fmt..Debug$GT$3fmt17h2118265c3795f77dE+0x2b8>
   835b8: 48 df 58 92  	and	x8, x26, #0xffffff00ffffffff
   835bc: 79 00 80 52  	mov	w25, #3
   835c0: 1a 01 5e b2  	orr	x26, x8, #0x400000000
   835c4: 81 0b 80 52  	mov	w1, #92
   835c8: d2 ff ff 17  	b	0x83510 <_ZN42_$LT$$RF$T$u20$as$u20$core..fmt..Debug$GT$3fmt17h2118265c3795f77dE+0x2b8>
   835cc: 48 df 58 92  	and	x8, x26, #0xffffff00ffffffff
   835d0: 1a 01 60 b2  	orr	x26, x8, #0x100000000
   835d4: 79 00 80 52  	mov	w25, #3
   835d8: ce ff ff 17  	b	0x83510 <_ZN42_$LT$$RF$T$u20$as$u20$core..fmt..Debug$GT$3fmt17h2118265c3795f77dE+0x2b8>
   835dc: bf 03 02 71  	cmp	w29, #128
   835e0: a2 00 00 54  	b.hs	0x835f4 <_ZN42_$LT$$RF$T$u20$as$u20$core..fmt..Debug$GT$3fmt17h2118265c3795f77dE+0x39c>
   835e4: eb 17 40 f9  	ldr	x11, [sp, #40]
   835e8: ea 27 41 a9  	ldp	x10, x9, [sp, #16]
   835ec: 28 00 80 52  	mov	w8, #1
   835f0: 0a 00 00 14  	b	0x83618 <_ZN42_$LT$$RF$T$u20$as$u20$core..fmt..Debug$GT$3fmt17h2118265c3795f77dE+0x3c0>
   835f4: eb 17 40 f9  	ldr	x11, [sp, #40]
   835f8: ea 27 41 a9  	ldp	x10, x9, [sp, #16]
   835fc: bf 03 20 71  	cmp	w29, #2048
   83600: 62 00 00 54  	b.hs	0x8360c <_ZN42_$LT$$RF$T$u20$as$u20$core..fmt..Debug$GT$3fmt17h2118265c3795f77dE+0x3b4>
   83604: 48 00 80 52  	mov	w8, #2
   83608: 04 00 00 14  	b	0x83618 <_ZN42_$LT$$RF$T$u20$as$u20$core..fmt..Debug$GT$3fmt17h2118265c3795f77dE+0x3c0>
   8360c: bf 43 40 71  	cmp	w29, #16, lsl #12
   83610: 68 00 80 52  	mov	w8, #3
   83614: 08 35 88 9a  	cinc	x8, x8, hs
   83618: 18 01 14 8b  	add	x24, x8, x20
   8361c: a8 02 09 cb  	sub	x8, x21, x9
   83620: e9 07 40 f9  	ldr	x9, [sp, #8]
   83624: 0e 00 00 b0  	adrp	x14, 0x84000 <_ZN42_$LT$$RF$T$u20$as$u20$core..fmt..Debug$GT$3fmt17h2118265c3795f77dE+0x3d0>
   83628: f5 03 1c aa  	mov	x21, x28
   8362c: 5f 01 1c eb  	cmp	x10, x28
   83630: 03 01 09 8b  	add	x3, x8, x9
   83634: ec 03 0a aa  	mov	x12, x10
   83638: ce 05 36 91  	add	x14, x14, #3457
   8363c: c1 e5 ff 54  	b.ne	0x832f4 <_ZN42_$LT$$RF$T$u20$as$u20$core..fmt..Debug$GT$3fmt17h2118265c3795f77dE+0x9c>
   83640: 38 01 00 b4  	cbz	x24, 0x83664 <_ZN42_$LT$$RF$T$u20$as$u20$core..fmt..Debug$GT$3fmt17h2118265c3795f77dE+0x40c>
   83644: 1f 03 0b eb  	cmp	x24, x11
   83648: 42 03 00 54  	b.hs	0x836b0 <_ZN42_$LT$$RF$T$u20$as$u20$core..fmt..Debug$GT$3fmt17h2118265c3795f77dE+0x458>
   8364c: e8 1b 40 f9  	ldr	x8, [sp, #48]
   83650: 08 69 f8 38  	ldrsb	w8, [x8, x24]
   83654: 1f 05 01 31  	cmn	w8, #65
   83658: 6c 00 00 54  	b.gt	0x83664 <_ZN42_$LT$$RF$T$u20$as$u20$core..fmt..Debug$GT$3fmt17h2118265c3795f77dE+0x40c>
   8365c: 1f 00 00 14  	b	0x836d8 <_ZN42_$LT$$RF$T$u20$as$u20$core..fmt..Debug$GT$3fmt17h2118265c3795f77dE+0x480>
   83660: f8 03 1f aa  	mov	x24, xzr
   83664: e8 13 40 f9  	ldr	x8, [sp, #32]
   83668: e9 1b 40 f9  	ldr	x9, [sp, #48]
   8366c: 62 01 18 cb  	sub	x2, x11, x24
   83670: e0 03 13 aa  	mov	x0, x19
   83674: 08 0d 40 f9  	ldr	x8, [x8, #24]
   83678: 21 01 18 8b  	add	x1, x9, x24
   8367c: 00 01 3f d6  	blr	x8
   83680: 00 e1 07 37  	tbnz	w0, #0, 0x832a0 <_ZN42_$LT$$RF$T$u20$as$u20$core..fmt..Debug$GT$3fmt17h2118265c3795f77dE+0x48>
   83684: e0 03 13 aa  	mov	x0, x19
   83688: e2 1f 40 f9  	ldr	x2, [sp, #56]
   8368c: f4 4f 49 a9  	ldp	x20, x19, [sp, #144]
   83690: f6 57 48 a9  	ldp	x22, x21, [sp, #128]
   83694: f8 5f 47 a9  	ldp	x24, x23, [sp, #112]
   83698: fa 67 46 a9  	ldp	x26, x25, [sp, #96]
   8369c: fc 6f 45 a9  	ldp	x28, x27, [sp, #80]
   836a0: fd 7b 44 a9  	ldp	x29, x30, [sp, #64]
   836a4: 41 04 80 52  	mov	w1, #34
   836a8: ff 83 02 91  	add	sp, sp, #160
   836ac: 40 00 1f d6  	br	x2
   836b0: 41 01 00 54  	b.ne	0x836d8 <_ZN42_$LT$$RF$T$u20$as$u20$core..fmt..Debug$GT$3fmt17h2118265c3795f77dE+0x480>
   836b4: f8 03 0b aa  	mov	x24, x11
   836b8: eb ff ff 17  	b	0x83664 <_ZN42_$LT$$RF$T$u20$as$u20$core..fmt..Debug$GT$3fmt17h2118265c3795f77dE+0x40c>
   836bc: e0 1b 40 f9  	ldr	x0, [sp, #48]
   836c0: 04 00 00 f0  	adrp	x4, 0x86000 <_ZN42_$LT$$RF$T$u20$as$u20$core..fmt..Debug$GT$3fmt17h2118265c3795f77dE+0x474>
   836c4: 84 c0 09 91  	add	x4, x4, #624
   836c8: e1 03 0b aa  	mov	x1, x11
   836cc: e2 03 18 aa  	mov	x2, x24
   836d0: 3f fa ff 97  	bl	0x81fcc <_ZN4core3str16slice_error_fail17hcc0d3c3105355e6aE>
   836d4: 20 00 20 d4  	brk	#0x1
   836d8: e0 1b 40 f9  	ldr	x0, [sp, #48]
   836dc: 04 00 00 f0  	adrp	x4, 0x86000 <_ZN42_$LT$$RF$T$u20$as$u20$core..fmt..Debug$GT$3fmt17h2118265c3795f77dE+0x490>
   836e0: 84 60 09 91  	add	x4, x4, #600
   836e4: e1 03 0b aa  	mov	x1, x11
   836e8: e2 03 18 aa  	mov	x2, x24
   836ec: e3 03 0b aa  	mov	x3, x11
   836f0: 37 fa ff 97  	bl	0x81fcc <_ZN4core3str16slice_error_fail17hcc0d3c3105355e6aE>
   836f4: 20 00 20 d4  	brk	#0x1

00000000000836f8 <_ZN71_$LT$core..panic..panic_info..PanicInfo$u20$as$u20$core..fmt..Debug$GT$3fmt17ha3e0b3cc45a627c8E>:
   836f8: ff 03 01 d1  	sub	sp, sp, #64
   836fc: fe 0b 00 f9  	str	x30, [sp, #16]
   83700: f6 57 02 a9  	stp	x22, x21, [sp, #32]
   83704: f4 4f 03 a9  	stp	x20, x19, [sp, #48]
   83708: f4 03 00 aa  	mov	x20, x0
   8370c: 20 20 42 a9  	ldp	x0, x8, [x1, #32]
   83710: f3 03 01 aa  	mov	x19, x1
   83714: 01 00 00 f0  	adrp	x1, 0x86000 <_ZN71_$LT$core..panic..panic_info..PanicInfo$u20$as$u20$core..fmt..Debug$GT$3fmt17ha3e0b3cc45a627c8E+0x28>
   83718: 21 ac 0b 91  	add	x1, x1, #747
   8371c: 08 0d 40 f9  	ldr	x8, [x8, #24]
   83720: 22 01 80 52  	mov	w2, #9
   83724: 95 42 00 91  	add	x21, x20, #16
   83728: 96 62 00 91  	add	x22, x20, #24
   8372c: 00 01 3f d6  	blr	x8
   83730: 1f 00 00 71  	cmp	w0, #0
   83734: 01 00 00 f0  	adrp	x1, 0x86000 <_ZN71_$LT$core..panic..panic_info..PanicInfo$u20$as$u20$core..fmt..Debug$GT$3fmt17ha3e0b3cc45a627c8E+0x48>
   83738: 04 00 00 f0  	adrp	x4, 0x86000 <_ZN71_$LT$core..panic..panic_info..PanicInfo$u20$as$u20$core..fmt..Debug$GT$3fmt17ha3e0b3cc45a627c8E+0x4c>
   8373c: e8 07 9f 9a  	cset	x8, ne
   83740: 21 d0 0b 91  	add	x1, x1, #756
   83744: 84 00 0c 91  	add	x4, x4, #768
   83748: e0 03 00 91  	mov	x0, sp
   8374c: e3 63 00 91  	add	x3, sp, #24
   83750: e2 00 80 52  	mov	w2, #7
   83754: f3 23 00 a9  	stp	x19, x8, [sp]
   83758: f4 0f 00 f9  	str	x20, [sp, #24]
   8375c: 1e fd ff 97  	bl	0x82bd4 <_ZN4core3fmt8builders11DebugStruct5field17hd9641a54df8a3bf1E>
   83760: 01 00 00 f0  	adrp	x1, 0x86000 <_ZN71_$LT$core..panic..panic_info..PanicInfo$u20$as$u20$core..fmt..Debug$GT$3fmt17ha3e0b3cc45a627c8E+0x74>
   83764: 04 00 00 f0  	adrp	x4, 0x86000 <_ZN71_$LT$core..panic..panic_info..PanicInfo$u20$as$u20$core..fmt..Debug$GT$3fmt17ha3e0b3cc45a627c8E+0x78>
   83768: 21 80 0c 91  	add	x1, x1, #800
   8376c: 84 a0 0c 91  	add	x4, x4, #808
   83770: e0 03 00 91  	mov	x0, sp
   83774: e3 63 00 91  	add	x3, sp, #24
   83778: e2 00 80 52  	mov	w2, #7
   8377c: f5 0f 00 f9  	str	x21, [sp, #24]
   83780: 15 fd ff 97  	bl	0x82bd4 <_ZN4core3fmt8builders11DebugStruct5field17hd9641a54df8a3bf1E>
   83784: 01 00 00 b0  	adrp	x1, 0x84000 <_ZN71_$LT$core..panic..panic_info..PanicInfo$u20$as$u20$core..fmt..Debug$GT$3fmt17ha3e0b3cc45a627c8E+0x90>
   83788: 04 00 00 f0  	adrp	x4, 0x86000 <_ZN71_$LT$core..panic..panic_info..PanicInfo$u20$as$u20$core..fmt..Debug$GT$3fmt17ha3e0b3cc45a627c8E+0x9c>
   8378c: 21 00 35 91  	add	x1, x1, #3392
   83790: 84 20 0d 91  	add	x4, x4, #840
   83794: e0 03 00 91  	mov	x0, sp
   83798: e3 63 00 91  	add	x3, sp, #24
   8379c: 02 01 80 52  	mov	w2, #8
   837a0: f6 0f 00 f9  	str	x22, [sp, #24]
   837a4: 0c fd ff 97  	bl	0x82bd4 <_ZN4core3fmt8builders11DebugStruct5field17hd9641a54df8a3bf1E>
   837a8: e8 27 40 39  	ldrb	w8, [sp, #9]
   837ac: e0 23 40 39  	ldrb	w0, [sp, #8]
   837b0: 48 02 00 34  	cbz	w8, 0x837f8 <_ZN71_$LT$core..panic..panic_info..PanicInfo$u20$as$u20$core..fmt..Debug$GT$3fmt17ha3e0b3cc45a627c8E+0x100>
   837b4: 60 00 00 34  	cbz	w0, 0x837c0 <_ZN71_$LT$core..panic..panic_info..PanicInfo$u20$as$u20$core..fmt..Debug$GT$3fmt17ha3e0b3cc45a627c8E+0xc8>
   837b8: 20 00 80 52  	mov	w0, #1
   837bc: 0f 00 00 14  	b	0x837f8 <_ZN71_$LT$core..panic..panic_info..PanicInfo$u20$as$u20$core..fmt..Debug$GT$3fmt17ha3e0b3cc45a627c8E+0x100>
   837c0: e8 03 40 f9  	ldr	x8, [sp]
   837c4: 09 c1 40 39  	ldrb	w9, [x8, #48]
   837c8: c9 00 10 37  	tbnz	w9, #2, 0x837e0 <_ZN71_$LT$core..panic..panic_info..PanicInfo$u20$as$u20$core..fmt..Debug$GT$3fmt17ha3e0b3cc45a627c8E+0xe8>
   837cc: 00 25 42 a9  	ldp	x0, x9, [x8, #32]
   837d0: 01 00 00 f0  	adrp	x1, 0x86000 <_ZN71_$LT$core..panic..panic_info..PanicInfo$u20$as$u20$core..fmt..Debug$GT$3fmt17ha3e0b3cc45a627c8E+0xe4>
   837d4: 21 44 09 91  	add	x1, x1, #593
   837d8: 42 00 80 52  	mov	w2, #2
   837dc: 05 00 00 14  	b	0x837f0 <_ZN71_$LT$core..panic..panic_info..PanicInfo$u20$as$u20$core..fmt..Debug$GT$3fmt17ha3e0b3cc45a627c8E+0xf8>
   837e0: 00 25 42 a9  	ldp	x0, x9, [x8, #32]
   837e4: 01 00 00 f0  	adrp	x1, 0x86000 <_ZN71_$LT$core..panic..panic_info..PanicInfo$u20$as$u20$core..fmt..Debug$GT$3fmt17ha3e0b3cc45a627c8E+0xf8>
   837e8: 21 40 09 91  	add	x1, x1, #592
   837ec: 22 00 80 52  	mov	w2, #1
   837f0: 28 0d 40 f9  	ldr	x8, [x9, #24]
   837f4: 00 01 3f d6  	blr	x8
   837f8: f4 4f 43 a9  	ldp	x20, x19, [sp, #48]
   837fc: f6 57 42 a9  	ldp	x22, x21, [sp, #32]
   83800: fe 0b 40 f9  	ldr	x30, [sp, #16]
   83804: 1f 00 00 71  	cmp	w0, #0
   83808: e0 07 9f 1a  	cset	w0, ne
   8380c: ff 03 01 91  	add	sp, sp, #64
   83810: c0 03 5f d6  	ret

0000000000083814 <_ZN42_$LT$$RF$T$u20$as$u20$core..fmt..Debug$GT$3fmt17h0702462b4f7b9fe3E>:
   83814: ff 03 01 d1  	sub	sp, sp, #64
   83818: fe 0b 00 f9  	str	x30, [sp, #16]
   8381c: f6 57 02 a9  	stp	x22, x21, [sp, #32]
   83820: f4 4f 03 a9  	stp	x20, x19, [sp, #48]
   83824: 08 00 40 f9  	ldr	x8, [x0]
   83828: 20 24 42 a9  	ldp	x0, x9, [x1, #32]
   8382c: f3 03 01 aa  	mov	x19, x1
   83830: 01 00 00 b0  	adrp	x1, 0x84000 <_ZN42_$LT$$RF$T$u20$as$u20$core..fmt..Debug$GT$3fmt17h0702462b4f7b9fe3E+0x20>
   83834: 14 01 40 f9  	ldr	x20, [x8]
   83838: 28 0d 40 f9  	ldr	x8, [x9, #24]
   8383c: 21 40 35 91  	add	x1, x1, #3408
   83840: 02 01 80 52  	mov	w2, #8
   83844: 95 42 00 91  	add	x21, x20, #16
   83848: 96 52 00 91  	add	x22, x20, #20
   8384c: 00 01 3f d6  	blr	x8
   83850: 1f 00 00 71  	cmp	w0, #0
   83854: 01 00 00 d0  	adrp	x1, 0x85000 <_ZN42_$LT$$RF$T$u20$as$u20$core..fmt..Debug$GT$3fmt17h0702462b4f7b9fe3E+0x48>
   83858: 04 00 00 f0  	adrp	x4, 0x86000 <_ZN42_$LT$$RF$T$u20$as$u20$core..fmt..Debug$GT$3fmt17h0702462b4f7b9fe3E+0x50>
   8385c: e8 07 9f 9a  	cset	x8, ne
   83860: 21 10 1c 91  	add	x1, x1, #1796
   83864: 84 a0 0a 91  	add	x4, x4, #680
   83868: e0 03 00 91  	mov	x0, sp
   8386c: e3 63 00 91  	add	x3, sp, #24
   83870: 82 00 80 52  	mov	w2, #4
   83874: f3 23 00 a9  	stp	x19, x8, [sp]
   83878: f4 0f 00 f9  	str	x20, [sp, #24]
   8387c: d6 fc ff 97  	bl	0x82bd4 <_ZN4core3fmt8builders11DebugStruct5field17hd9641a54df8a3bf1E>
   83880: 13 00 00 f0  	adrp	x19, 0x86000 <_ZN42_$LT$$RF$T$u20$as$u20$core..fmt..Debug$GT$3fmt17h0702462b4f7b9fe3E+0x78>
   83884: 01 00 00 d0  	adrp	x1, 0x85000 <_ZN42_$LT$$RF$T$u20$as$u20$core..fmt..Debug$GT$3fmt17h0702462b4f7b9fe3E+0x78>
   83888: 73 22 0b 91  	add	x19, x19, #712
   8388c: 21 20 1c 91  	add	x1, x1, #1800
   83890: e0 03 00 91  	mov	x0, sp
   83894: e3 63 00 91  	add	x3, sp, #24
   83898: 82 00 80 52  	mov	w2, #4
   8389c: e4 03 13 aa  	mov	x4, x19
   838a0: f5 0f 00 f9  	str	x21, [sp, #24]
   838a4: cc fc ff 97  	bl	0x82bd4 <_ZN4core3fmt8builders11DebugStruct5field17hd9641a54df8a3bf1E>
   838a8: 01 00 00 f0  	adrp	x1, 0x86000 <_ZN42_$LT$$RF$T$u20$as$u20$core..fmt..Debug$GT$3fmt17h0702462b4f7b9fe3E+0xa0>
   838ac: 21 a0 0b 91  	add	x1, x1, #744
   838b0: e0 03 00 91  	mov	x0, sp
   838b4: e3 63 00 91  	add	x3, sp, #24
   838b8: 62 00 80 52  	mov	w2, #3
   838bc: e4 03 13 aa  	mov	x4, x19
   838c0: f6 0f 00 f9  	str	x22, [sp, #24]
   838c4: c4 fc ff 97  	bl	0x82bd4 <_ZN4core3fmt8builders11DebugStruct5field17hd9641a54df8a3bf1E>
   838c8: e8 27 40 39  	ldrb	w8, [sp, #9]
   838cc: e0 23 40 39  	ldrb	w0, [sp, #8]
   838d0: 48 02 00 34  	cbz	w8, 0x83918 <_ZN42_$LT$$RF$T$u20$as$u20$core..fmt..Debug$GT$3fmt17h0702462b4f7b9fe3E+0x104>
   838d4: 60 00 00 34  	cbz	w0, 0x838e0 <_ZN42_$LT$$RF$T$u20$as$u20$core..fmt..Debug$GT$3fmt17h0702462b4f7b9fe3E+0xcc>
   838d8: 20 00 80 52  	mov	w0, #1
   838dc: 0f 00 00 14  	b	0x83918 <_ZN42_$LT$$RF$T$u20$as$u20$core..fmt..Debug$GT$3fmt17h0702462b4f7b9fe3E+0x104>
   838e0: e8 03 40 f9  	ldr	x8, [sp]
   838e4: 09 c1 40 39  	ldrb	w9, [x8, #48]
   838e8: c9 00 10 37  	tbnz	w9, #2, 0x83900 <_ZN42_$LT$$RF$T$u20$as$u20$core..fmt..Debug$GT$3fmt17h0702462b4f7b9fe3E+0xec>
   838ec: 00 25 42 a9  	ldp	x0, x9, [x8, #32]
   838f0: 01 00 00 f0  	adrp	x1, 0x86000 <_ZN42_$LT$$RF$T$u20$as$u20$core..fmt..Debug$GT$3fmt17h0702462b4f7b9fe3E+0xe8>
   838f4: 21 44 09 91  	add	x1, x1, #593
   838f8: 42 00 80 52  	mov	w2, #2
   838fc: 05 00 00 14  	b	0x83910 <_ZN42_$LT$$RF$T$u20$as$u20$core..fmt..Debug$GT$3fmt17h0702462b4f7b9fe3E+0xfc>
   83900: 00 25 42 a9  	ldp	x0, x9, [x8, #32]
   83904: 01 00 00 f0  	adrp	x1, 0x86000 <_ZN42_$LT$$RF$T$u20$as$u20$core..fmt..Debug$GT$3fmt17h0702462b4f7b9fe3E+0xfc>
   83908: 21 40 09 91  	add	x1, x1, #592
   8390c: 22 00 80 52  	mov	w2, #1
   83910: 28 0d 40 f9  	ldr	x8, [x9, #24]
   83914: 00 01 3f d6  	blr	x8
   83918: f4 4f 43 a9  	ldp	x20, x19, [sp, #48]
   8391c: f6 57 42 a9  	ldp	x22, x21, [sp, #32]
   83920: fe 0b 40 f9  	ldr	x30, [sp, #16]
   83924: 1f 00 00 71  	cmp	w0, #0
   83928: e0 07 9f 1a  	cset	w0, ne
   8392c: ff 03 01 91  	add	sp, sp, #64
   83930: c0 03 5f d6  	ret

0000000000083934 <_ZN42_$LT$$RF$T$u20$as$u20$core..fmt..Debug$GT$3fmt17hf9e5d8fb08b527bfE>:
   83934: ff 03 02 d1  	sub	sp, sp, #128
   83938: fe 5f 05 a9  	stp	x30, x23, [sp, #80]
   8393c: f6 57 06 a9  	stp	x22, x21, [sp, #96]
   83940: f4 4f 07 a9  	stp	x20, x19, [sp, #112]
   83944: 17 00 40 f9  	ldr	x23, [x0]
   83948: f5 03 01 aa  	mov	x21, x1
   8394c: e8 02 40 f9  	ldr	x8, [x23]
   83950: 08 02 00 b4  	cbz	x8, 0x83990 <_ZN42_$LT$$RF$T$u20$as$u20$core..fmt..Debug$GT$3fmt17hf9e5d8fb08b527bfE+0x5c>
   83954: b3 52 42 a9  	ldp	x19, x20, [x21, #32]
   83958: 01 00 00 d0  	adrp	x1, 0x85000 <_ZN42_$LT$$RF$T$u20$as$u20$core..fmt..Debug$GT$3fmt17hf9e5d8fb08b527bfE+0x2c>
   8395c: 21 f0 1b 91  	add	x1, x1, #1788
   83960: 82 00 80 52  	mov	w2, #4
   83964: 96 0e 40 f9  	ldr	x22, [x20, #24]
   83968: e0 03 13 aa  	mov	x0, x19
   8396c: c0 02 3f d6  	blr	x22
   83970: 40 02 00 36  	tbz	w0, #0, 0x839b8 <_ZN42_$LT$$RF$T$u20$as$u20$core..fmt..Debug$GT$3fmt17hf9e5d8fb08b527bfE+0x84>
   83974: 35 00 80 52  	mov	w21, #1
   83978: e0 03 15 2a  	mov	w0, w21
   8397c: f4 4f 47 a9  	ldp	x20, x19, [sp, #112]
   83980: f6 57 46 a9  	ldp	x22, x21, [sp, #96]
   83984: fe 5f 45 a9  	ldp	x30, x23, [sp, #80]
   83988: ff 03 02 91  	add	sp, sp, #128
   8398c: c0 03 5f d6  	ret
   83990: a0 22 42 a9  	ldp	x0, x8, [x21, #32]
   83994: f4 4f 47 a9  	ldp	x20, x19, [sp, #112]
   83998: f6 57 46 a9  	ldp	x22, x21, [sp, #96]
   8399c: fe 5f 45 a9  	ldp	x30, x23, [sp, #80]
   839a0: 03 0d 40 f9  	ldr	x3, [x8, #24]
   839a4: 01 00 00 d0  	adrp	x1, 0x85000 <_ZN42_$LT$$RF$T$u20$as$u20$core..fmt..Debug$GT$3fmt17hf9e5d8fb08b527bfE+0x78>
   839a8: 21 30 1c 91  	add	x1, x1, #1804
   839ac: 82 00 80 52  	mov	w2, #4
   839b0: ff 03 02 91  	add	sp, sp, #128
   839b4: 60 00 1f d6  	br	x3
   839b8: a8 c2 40 39  	ldrb	w8, [x21, #48]
   839bc: 48 02 10 37  	tbnz	w8, #2, 0x83a04 <_ZN42_$LT$$RF$T$u20$as$u20$core..fmt..Debug$GT$3fmt17hf9e5d8fb08b527bfE+0xd0>
   839c0: 01 00 00 f0  	adrp	x1, 0x86000 <_ZN42_$LT$$RF$T$u20$as$u20$core..fmt..Debug$GT$3fmt17hf9e5d8fb08b527bfE+0x98>
   839c4: 21 4c 09 91  	add	x1, x1, #595
   839c8: 22 00 80 52  	mov	w2, #1
   839cc: e0 03 13 aa  	mov	x0, x19
   839d0: 35 00 80 52  	mov	w21, #1
   839d4: c0 02 3f d6  	blr	x22
   839d8: 00 fd 07 37  	tbnz	w0, #0, 0x83978 <_ZN42_$LT$$RF$T$u20$as$u20$core..fmt..Debug$GT$3fmt17hf9e5d8fb08b527bfE+0x44>
   839dc: e1 02 40 f9  	ldr	x1, [x23]
   839e0: e0 83 00 91  	add	x0, sp, #32
   839e4: 02 06 80 52  	mov	w2, #48
   839e8: b4 00 00 94  	bl	0x83cb8 <memcpy>
   839ec: e2 83 00 91  	add	x2, sp, #32
   839f0: e0 03 13 aa  	mov	x0, x19
   839f4: e1 03 14 aa  	mov	x1, x20
   839f8: c4 f7 ff 97  	bl	0x81908 <_ZN4core3fmt5write17h63775af3066fbce8E>
   839fc: c0 fb 07 37  	tbnz	w0, #0, 0x83974 <_ZN42_$LT$$RF$T$u20$as$u20$core..fmt..Debug$GT$3fmt17hf9e5d8fb08b527bfE+0x40>
   83a00: 1c 00 00 14  	b	0x83a70 <_ZN42_$LT$$RF$T$u20$as$u20$core..fmt..Debug$GT$3fmt17hf9e5d8fb08b527bfE+0x13c>
   83a04: 01 00 00 f0  	adrp	x1, 0x86000 <_ZN42_$LT$$RF$T$u20$as$u20$core..fmt..Debug$GT$3fmt17hf9e5d8fb08b527bfE+0xdc>
   83a08: 21 50 09 91  	add	x1, x1, #596
   83a0c: 42 00 80 52  	mov	w2, #2
   83a10: e0 03 13 aa  	mov	x0, x19
   83a14: c0 02 3f d6  	blr	x22
   83a18: 35 00 80 52  	mov	w21, #1
   83a1c: e0 fa 07 37  	tbnz	w0, #0, 0x83978 <_ZN42_$LT$$RF$T$u20$as$u20$core..fmt..Debug$GT$3fmt17hf9e5d8fb08b527bfE+0x44>
   83a20: e8 73 00 91  	add	x8, sp, #28
   83a24: f5 73 00 39  	strb	w21, [sp, #28]
   83a28: f3 53 00 a9  	stp	x19, x20, [sp]
   83a2c: e8 0b 00 f9  	str	x8, [sp, #16]
   83a30: e1 02 40 f9  	ldr	x1, [x23]
   83a34: e0 83 00 91  	add	x0, sp, #32
   83a38: 02 06 80 52  	mov	w2, #48
   83a3c: 9f 00 00 94  	bl	0x83cb8 <memcpy>
   83a40: 01 00 00 f0  	adrp	x1, 0x86000 <_ZN42_$LT$$RF$T$u20$as$u20$core..fmt..Debug$GT$3fmt17hf9e5d8fb08b527bfE+0x118>
   83a44: 21 a0 07 91  	add	x1, x1, #488
   83a48: e0 03 00 91  	mov	x0, sp
   83a4c: e2 83 00 91  	add	x2, sp, #32
   83a50: ae f7 ff 97  	bl	0x81908 <_ZN4core3fmt5write17h63775af3066fbce8E>
   83a54: 00 f9 07 37  	tbnz	w0, #0, 0x83974 <_ZN42_$LT$$RF$T$u20$as$u20$core..fmt..Debug$GT$3fmt17hf9e5d8fb08b527bfE+0x40>
   83a58: 01 00 00 f0  	adrp	x1, 0x86000 <_ZN42_$LT$$RF$T$u20$as$u20$core..fmt..Debug$GT$3fmt17hf9e5d8fb08b527bfE+0x130>
   83a5c: 21 6c 08 91  	add	x1, x1, #539
   83a60: e0 03 00 91  	mov	x0, sp
   83a64: 42 00 80 52  	mov	w2, #2
   83a68: ac f8 ff 97  	bl	0x81d18 <_ZN68_$LT$core..fmt..builders..PadAdapter$u20$as$u20$core..fmt..Write$GT$9write_str17h3825e647a41714ecE>
   83a6c: 40 f8 07 37  	tbnz	w0, #0, 0x83974 <_ZN42_$LT$$RF$T$u20$as$u20$core..fmt..Debug$GT$3fmt17hf9e5d8fb08b527bfE+0x40>
   83a70: 01 00 00 f0  	adrp	x1, 0x86000 <_ZN42_$LT$$RF$T$u20$as$u20$core..fmt..Debug$GT$3fmt17hf9e5d8fb08b527bfE+0x148>
   83a74: 21 58 09 91  	add	x1, x1, #598
   83a78: 22 00 80 52  	mov	w2, #1
   83a7c: e0 03 13 aa  	mov	x0, x19
   83a80: c0 02 3f d6  	blr	x22
   83a84: f5 03 00 2a  	mov	w21, w0
   83a88: bc ff ff 17  	b	0x83978 <_ZN42_$LT$$RF$T$u20$as$u20$core..fmt..Debug$GT$3fmt17hf9e5d8fb08b527bfE+0x44>

0000000000083a8c <_ZN42_$LT$$RF$T$u20$as$u20$core..fmt..Debug$GT$3fmt17h79baed9a49716602E>:
   83a8c: ff 83 00 d1  	sub	sp, sp, #32
   83a90: fe 4f 01 a9  	stp	x30, x19, [sp, #16]
   83a94: 33 20 42 a9  	ldp	x19, x8, [x1, #32]
   83a98: 01 00 00 d0  	adrp	x1, 0x85000 <_ZN42_$LT$$RF$T$u20$as$u20$core..fmt..Debug$GT$3fmt17h79baed9a49716602E+0x14>
   83a9c: 21 a8 1a 91  	add	x1, x1, #1706
   83aa0: 62 00 80 52  	mov	w2, #3
   83aa4: 03 0d 40 f9  	ldr	x3, [x8, #24]
   83aa8: e0 03 13 aa  	mov	x0, x19
   83aac: e3 07 00 f9  	str	x3, [sp, #8]
   83ab0: 60 00 3f d6  	blr	x3
   83ab4: a0 00 00 36  	tbz	w0, #0, 0x83ac8 <_ZN42_$LT$$RF$T$u20$as$u20$core..fmt..Debug$GT$3fmt17h79baed9a49716602E+0x3c>
   83ab8: fe 4f 41 a9  	ldp	x30, x19, [sp, #16]
   83abc: 20 00 80 52  	mov	w0, #1
   83ac0: ff 83 00 91  	add	sp, sp, #32
   83ac4: c0 03 5f d6  	ret
   83ac8: e0 03 13 aa  	mov	x0, x19
   83acc: e3 07 40 f9  	ldr	x3, [sp, #8]
   83ad0: fe 4f 41 a9  	ldp	x30, x19, [sp, #16]
   83ad4: 01 00 00 d0  	adrp	x1, 0x85000 <_ZN42_$LT$$RF$T$u20$as$u20$core..fmt..Debug$GT$3fmt17h79baed9a49716602E+0x50>
   83ad8: 21 b4 1a 91  	add	x1, x1, #1709
   83adc: e2 00 80 52  	mov	w2, #7
   83ae0: ff 83 00 91  	add	sp, sp, #32
   83ae4: 60 00 1f d6  	br	x3

0000000000083ae8 <_ZN4core3fmt3num51_$LT$impl$u20$core..fmt..Binary$u20$for$u20$i64$GT$3fmt17he77c3abe7c79070fE>:
   83ae8: ff 43 02 d1  	sub	sp, sp, #144
   83aec: fe 43 00 f9  	str	x30, [sp, #128]
   83af0: 0a 00 40 f9  	ldr	x10, [x0]
   83af4: e8 03 1f aa  	mov	x8, xzr
   83af8: e9 03 00 91  	mov	x9, sp
   83afc: 4c fd 41 d3  	lsr	x12, x10, #1
   83b00: 0d 06 80 52  	mov	w13, #48
   83b04: 2b 01 08 8b  	add	x11, x9, x8
   83b08: 4d 01 00 33  	bfxil	w13, w10, #0, #1
   83b0c: 08 05 00 d1  	sub	x8, x8, #1
   83b10: ea 03 0c aa  	mov	x10, x12
   83b14: 6d fd 01 39  	strb	w13, [x11, #127]
   83b18: 2c ff ff b5  	cbnz	x12, 0x83afc <_ZN4core3fmt3num51_$LT$impl$u20$core..fmt..Binary$u20$for$u20$i64$GT$3fmt17he77c3abe7c79070fE+0x14>
   83b1c: 00 01 02 91  	add	x0, x8, #128
   83b20: 1f 04 02 f1  	cmp	x0, #129
   83b24: c2 01 00 54  	b.hs	0x83b5c <_ZN4core3fmt3num51_$LT$impl$u20$core..fmt..Binary$u20$for$u20$i64$GT$3fmt17he77c3abe7c79070fE+0x74>
   83b28: e9 03 00 91  	mov	x9, sp
   83b2c: e4 03 08 cb  	neg	x4, x8
   83b30: 28 01 08 8b  	add	x8, x9, x8
   83b34: 03 01 02 91  	add	x3, x8, #128
   83b38: 08 00 00 f0  	adrp	x8, 0x86000 <_ZN4core3fmt3num51_$LT$impl$u20$core..fmt..Binary$u20$for$u20$i64$GT$3fmt17he77c3abe7c79070fE+0x5c>
   83b3c: 08 a1 0d 91  	add	x8, x8, #872
   83b40: 42 00 80 52  	mov	w2, #2
   83b44: e0 03 01 aa  	mov	x0, x1
   83b48: e1 03 08 aa  	mov	x1, x8
   83b4c: 63 f5 ff 97  	bl	0x810d8 <_ZN4core3fmt9Formatter12pad_integral17ha6f583ca7a70f44dE>
   83b50: fe 43 40 f9  	ldr	x30, [sp, #128]
   83b54: ff 43 02 91  	add	sp, sp, #144
   83b58: c0 03 5f d6  	ret
   83b5c: 02 00 00 d0  	adrp	x2, 0x85000 <_ZN4core3fmt3num51_$LT$impl$u20$core..fmt..Binary$u20$for$u20$i64$GT$3fmt17he77c3abe7c79070fE+0x7c>
   83b60: 42 60 18 91  	add	x2, x2, #1560
   83b64: 01 10 80 52  	mov	w1, #128
   83b68: 2b f6 ff 97  	bl	0x81414 <_ZN4core5slice5index26slice_start_index_len_fail17ha3ad23336e78e7f7E>
   83b6c: 20 00 20 d4  	brk	#0x1

0000000000083b70 <_ZN4core3fmt3num53_$LT$impl$u20$core..fmt..LowerHex$u20$for$u20$i64$GT$3fmt17h89727d655d417749E>:
   83b70: ff 43 02 d1  	sub	sp, sp, #144
   83b74: fe 43 00 f9  	str	x30, [sp, #128]
   83b78: 0a 00 40 f9  	ldr	x10, [x0]
   83b7c: e8 03 1f aa  	mov	x8, xzr
   83b80: e9 03 00 91  	mov	x9, sp
   83b84: 4d 0d 00 12  	and	w13, w10, #0xf
   83b88: 0e 06 80 52  	mov	w14, #48
   83b8c: 4c fd 44 d3  	lsr	x12, x10, #4
   83b90: 4e 0d 00 33  	bfxil	w14, w10, #0, #4
   83b94: aa 5d 01 11  	add	w10, w13, #87
   83b98: bf 29 00 71  	cmp	w13, #10
   83b9c: 2b 01 08 8b  	add	x11, x9, x8
   83ba0: ca 31 8a 1a  	csel	w10, w14, w10, lo
   83ba4: 6a fd 01 39  	strb	w10, [x11, #127]
   83ba8: 08 05 00 d1  	sub	x8, x8, #1
   83bac: ea 03 0c aa  	mov	x10, x12
   83bb0: ac fe ff b5  	cbnz	x12, 0x83b84 <_ZN4core3fmt3num53_$LT$impl$u20$core..fmt..LowerHex$u20$for$u20$i64$GT$3fmt17h89727d655d417749E+0x14>
   83bb4: 00 01 02 91  	add	x0, x8, #128
   83bb8: 1f 04 02 f1  	cmp	x0, #129
   83bbc: c2 01 00 54  	b.hs	0x83bf4 <_ZN4core3fmt3num53_$LT$impl$u20$core..fmt..LowerHex$u20$for$u20$i64$GT$3fmt17h89727d655d417749E+0x84>
   83bc0: e9 03 00 91  	mov	x9, sp
   83bc4: e4 03 08 cb  	neg	x4, x8
   83bc8: 28 01 08 8b  	add	x8, x9, x8
   83bcc: 03 01 02 91  	add	x3, x8, #128
   83bd0: 08 00 00 d0  	adrp	x8, 0x85000 <_ZN4core3fmt3num53_$LT$impl$u20$core..fmt..LowerHex$u20$for$u20$i64$GT$3fmt17h89727d655d417749E+0x68>
   83bd4: 08 c1 18 91  	add	x8, x8, #1584
   83bd8: 42 00 80 52  	mov	w2, #2
   83bdc: e0 03 01 aa  	mov	x0, x1
   83be0: e1 03 08 aa  	mov	x1, x8
   83be4: 3d f5 ff 97  	bl	0x810d8 <_ZN4core3fmt9Formatter12pad_integral17ha6f583ca7a70f44dE>
   83be8: fe 43 40 f9  	ldr	x30, [sp, #128]
   83bec: ff 43 02 91  	add	sp, sp, #144
   83bf0: c0 03 5f d6  	ret
   83bf4: 02 00 00 d0  	adrp	x2, 0x85000 <_ZN4core3fmt3num53_$LT$impl$u20$core..fmt..LowerHex$u20$for$u20$i64$GT$3fmt17h89727d655d417749E+0x8c>
   83bf8: 42 60 18 91  	add	x2, x2, #1560
   83bfc: 01 10 80 52  	mov	w1, #128
   83c00: 05 f6 ff 97  	bl	0x81414 <_ZN4core5slice5index26slice_start_index_len_fail17ha3ad23336e78e7f7E>
   83c04: 20 00 20 d4  	brk	#0x1

0000000000083c08 <_ZN4core3fmt3num53_$LT$impl$u20$core..fmt..UpperHex$u20$for$u20$i64$GT$3fmt17h0da107dab2280b2bE>:
   83c08: ff 43 02 d1  	sub	sp, sp, #144
   83c0c: fe 43 00 f9  	str	x30, [sp, #128]
   83c10: 0a 00 40 f9  	ldr	x10, [x0]
   83c14: e8 03 1f aa  	mov	x8, xzr
   83c18: e9 03 00 91  	mov	x9, sp
   83c1c: 4d 0d 00 12  	and	w13, w10, #0xf
   83c20: 0e 06 80 52  	mov	w14, #48
   83c24: 4c fd 44 d3  	lsr	x12, x10, #4
   83c28: 4e 0d 00 33  	bfxil	w14, w10, #0, #4
   83c2c: aa dd 00 11  	add	w10, w13, #55
   83c30: bf 29 00 71  	cmp	w13, #10
   83c34: 2b 01 08 8b  	add	x11, x9, x8
   83c38: ca 31 8a 1a  	csel	w10, w14, w10, lo
   83c3c: 6a fd 01 39  	strb	w10, [x11, #127]
   83c40: 08 05 00 d1  	sub	x8, x8, #1
   83c44: ea 03 0c aa  	mov	x10, x12
   83c48: ac fe ff b5  	cbnz	x12, 0x83c1c <_ZN4core3fmt3num53_$LT$impl$u20$core..fmt..UpperHex$u20$for$u20$i64$GT$3fmt17h0da107dab2280b2bE+0x14>
   83c4c: 00 01 02 91  	add	x0, x8, #128
   83c50: 1f 04 02 f1  	cmp	x0, #129
   83c54: c2 01 00 54  	b.hs	0x83c8c <_ZN4core3fmt3num53_$LT$impl$u20$core..fmt..UpperHex$u20$for$u20$i64$GT$3fmt17h0da107dab2280b2bE+0x84>
   83c58: e9 03 00 91  	mov	x9, sp
   83c5c: e4 03 08 cb  	neg	x4, x8
   83c60: 28 01 08 8b  	add	x8, x9, x8
   83c64: 03 01 02 91  	add	x3, x8, #128
   83c68: 08 00 00 d0  	adrp	x8, 0x85000 <_ZN4core3fmt3num53_$LT$impl$u20$core..fmt..UpperHex$u20$for$u20$i64$GT$3fmt17h0da107dab2280b2bE+0x68>
   83c6c: 08 c1 18 91  	add	x8, x8, #1584
   83c70: 42 00 80 52  	mov	w2, #2
   83c74: e0 03 01 aa  	mov	x0, x1
   83c78: e1 03 08 aa  	mov	x1, x8
   83c7c: 17 f5 ff 97  	bl	0x810d8 <_ZN4core3fmt9Formatter12pad_integral17ha6f583ca7a70f44dE>
   83c80: fe 43 40 f9  	ldr	x30, [sp, #128]
   83c84: ff 43 02 91  	add	sp, sp, #144
   83c88: c0 03 5f d6  	ret
   83c8c: 02 00 00 d0  	adrp	x2, 0x85000 <_ZN4core3fmt3num53_$LT$impl$u20$core..fmt..UpperHex$u20$for$u20$i64$GT$3fmt17h0da107dab2280b2bE+0x8c>
   83c90: 42 60 18 91  	add	x2, x2, #1560
   83c94: 01 10 80 52  	mov	w1, #128
   83c98: df f5 ff 97  	bl	0x81414 <_ZN4core5slice5index26slice_start_index_len_fail17ha3ad23336e78e7f7E>
   83c9c: 20 00 20 d4  	brk	#0x1

0000000000083ca0 <_ZN53_$LT$core..fmt..Error$u20$as$u20$core..fmt..Debug$GT$3fmt17h35673c67a40cb87eE>:
   83ca0: 20 20 42 a9  	ldp	x0, x8, [x1, #32]
   83ca4: 01 00 00 f0  	adrp	x1, 0x86000 <_ZN53_$LT$core..fmt..Error$u20$as$u20$core..fmt..Debug$GT$3fmt17h35673c67a40cb87eE+0x10>
   83ca8: 21 a8 0d 91  	add	x1, x1, #874
   83cac: a2 00 80 52  	mov	w2, #5
   83cb0: 03 0d 40 f9  	ldr	x3, [x8, #24]
   83cb4: 60 00 1f d6  	br	x3

0000000000083cb8 <memcpy>:
   83cb8: ff 03 01 d1  	sub	sp, sp, #64
   83cbc: 22 02 00 b4  	cbz	x2, 0x83d00 <memcpy+0x48>
   83cc0: 5f 20 00 f1  	cmp	x2, #8
   83cc4: e3 00 00 54  	b.lo	0x83ce0 <memcpy+0x28>
   83cc8: 28 00 02 8b  	add	x8, x1, x2
   83ccc: 1f 01 00 eb  	cmp	x8, x0
   83cd0: c9 01 00 54  	b.ls	0x83d08 <memcpy+0x50>
   83cd4: 08 00 02 8b  	add	x8, x0, x2
   83cd8: 1f 01 01 eb  	cmp	x8, x1
   83cdc: 69 01 00 54  	b.ls	0x83d08 <memcpy+0x50>
   83ce0: e8 03 1f aa  	mov	x8, xzr
   83ce4: 49 00 08 cb  	sub	x9, x2, x8
   83ce8: 0a 00 08 8b  	add	x10, x0, x8
   83cec: 28 00 08 8b  	add	x8, x1, x8
   83cf0: 0b 15 40 38  	ldrb	w11, [x8], #1
   83cf4: 29 05 00 f1  	subs	x9, x9, #1
   83cf8: 4b 15 00 38  	strb	w11, [x10], #1
   83cfc: a1 ff ff 54  	b.ne	0x83cf0 <memcpy+0x38>
   83d00: ff 03 01 91  	add	sp, sp, #64
   83d04: c0 03 5f d6  	ret
   83d08: 5f 80 00 f1  	cmp	x2, #32
   83d0c: 62 00 00 54  	b.hs	0x83d18 <memcpy+0x60>
   83d10: e8 03 1f aa  	mov	x8, xzr
   83d14: 9a 00 00 14  	b	0x83f7c <memcpy+0x2c4>
   83d18: 48 e8 7b 92  	and	x8, x2, #0xffffffffffffffe0
   83d1c: 29 40 00 91  	add	x9, x1, #16
   83d20: 0b 40 00 91  	add	x11, x0, #16
   83d24: ea 03 08 aa  	mov	x10, x8
   83d28: ed 03 09 aa  	mov	x13, x9
   83d2c: 2c 11 5f 38  	ldurb	w12, [x9, #-15]
   83d30: ae 0d 5f 38  	ldrb	w14, [x13, #-16]!
   83d34: 4a 81 00 f1  	subs	x10, x10, #32
   83d38: f1 03 0d aa  	mov	x17, x13
   83d3c: af 0d 40 39  	ldrb	w15, [x13, #3]
   83d40: b0 09 40 39  	ldrb	w16, [x13, #2]
   83d44: 32 4e 40 38  	ldrb	w18, [x17, #4]!
   83d48: 23 51 5f 38  	ldurb	w3, [x9, #-11]
   83d4c: 8e 1d 78 b3  	bfi	x14, x12, #8, #8
   83d50: f0 1d 78 b3  	bfi	x16, x15, #8, #8
   83d54: 24 0e 40 39  	ldrb	w4, [x17, #3]
   83d58: 31 0a 40 39  	ldrb	w17, [x17, #2]
   83d5c: 72 1c 18 33  	bfi	w18, w3, #8, #8
   83d60: 0e 3e 70 b3  	bfi	x14, x16, #16, #16
   83d64: ec 03 0d aa  	mov	x12, x13
   83d68: 91 1c 18 33  	bfi	w17, w4, #8, #8
   83d6c: 32 3e 10 33  	bfi	w18, w17, #16, #16
   83d70: 4e 7e 60 b3  	bfi	x14, x18, #32, #32
   83d74: ee 0b 00 f9  	str	x14, [sp, #16]
   83d78: ae 25 40 39  	ldrb	w14, [x13, #9]
   83d7c: 8f 8d 40 38  	ldrb	w15, [x12, #8]!
   83d80: 90 0d 40 39  	ldrb	w16, [x12, #3]
   83d84: 91 09 40 39  	ldrb	w17, [x12, #2]
   83d88: 92 4d 40 38  	ldrb	w18, [x12, #4]!
   83d8c: ad 35 40 39  	ldrb	w13, [x13, #13]
   83d90: cf 1d 78 b3  	bfi	x15, x14, #8, #8
   83d94: 11 1e 78 b3  	bfi	x17, x16, #8, #8
   83d98: 83 0d 40 39  	ldrb	w3, [x12, #3]
   83d9c: 8c 09 40 39  	ldrb	w12, [x12, #2]
   83da0: b2 1d 18 33  	bfi	w18, w13, #8, #8
   83da4: 2f 3e 70 b3  	bfi	x15, x17, #16, #16
   83da8: ee 03 09 aa  	mov	x14, x9
   83dac: 6c 1c 18 33  	bfi	w12, w3, #8, #8
   83db0: 92 3d 10 33  	bfi	w18, w12, #16, #16
   83db4: 4f 7e 60 b3  	bfi	x15, x18, #32, #32
   83db8: ef 0f 00 f9  	str	x15, [sp, #24]
   83dbc: e0 07 c0 3d  	ldr	q0, [sp, #16]
   83dc0: 2c 0d 40 39  	ldrb	w12, [x9, #3]
   83dc4: 2d 09 40 39  	ldrb	w13, [x9, #2]
   83dc8: 2f 05 40 39  	ldrb	w15, [x9, #1]
   83dcc: 30 01 40 39  	ldrb	w16, [x9]
   83dd0: d1 4d 40 38  	ldrb	w17, [x14, #4]!
   83dd4: 32 15 40 39  	ldrb	w18, [x9, #5]
   83dd8: 8d 1d 78 b3  	bfi	x13, x12, #8, #8
   83ddc: f0 1d 78 b3  	bfi	x16, x15, #8, #8
   83de0: c3 0d 40 39  	ldrb	w3, [x14, #3]
   83de4: ce 09 40 39  	ldrb	w14, [x14, #2]
   83de8: 51 1e 18 33  	bfi	w17, w18, #8, #8
   83dec: b0 3d 70 b3  	bfi	x16, x13, #16, #16
   83df0: ec 03 09 aa  	mov	x12, x9
   83df4: 6e 1c 18 33  	bfi	w14, w3, #8, #8
   83df8: d1 3d 10 33  	bfi	w17, w14, #16, #16
   83dfc: 30 7e 60 b3  	bfi	x16, x17, #32, #32
   83e00: f0 03 00 f9  	str	x16, [sp]
   83e04: 2d 25 40 39  	ldrb	w13, [x9, #9]
   83e08: 8e 8d 40 38  	ldrb	w14, [x12, #8]!
   83e0c: 8f 0d 40 39  	ldrb	w15, [x12, #3]
   83e10: 90 09 40 39  	ldrb	w16, [x12, #2]
   83e14: 91 4d 40 38  	ldrb	w17, [x12, #4]!
   83e18: 32 35 40 39  	ldrb	w18, [x9, #13]
   83e1c: ae 1d 78 b3  	bfi	x14, x13, #8, #8
   83e20: f0 1d 78 b3  	bfi	x16, x15, #8, #8
   83e24: 83 0d 40 39  	ldrb	w3, [x12, #3]
   83e28: 8c 09 40 39  	ldrb	w12, [x12, #2]
   83e2c: 51 1e 18 33  	bfi	w17, w18, #8, #8
   83e30: e0 0f 80 3d  	str	q0, [sp, #48]
   83e34: 0e 3e 70 b3  	bfi	x14, x16, #16, #16
   83e38: 6c 1c 18 33  	bfi	w12, w3, #8, #8
   83e3c: 91 3d 10 33  	bfi	w17, w12, #16, #16
   83e40: ec 1b 40 f9  	ldr	x12, [sp, #48]
   83e44: 2e 7e 60 b3  	bfi	x14, x17, #32, #32
   83e48: ee 07 00 f9  	str	x14, [sp, #8]
   83e4c: ed 03 0b aa  	mov	x13, x11
   83e50: e1 03 c0 3d  	ldr	q1, [sp]
   83e54: ac 0d 1f 38  	strb	w12, [x13, #-16]!
   83e58: f0 1f 40 f9  	ldr	x16, [sp, #56]
   83e5c: 8f fd 58 d3  	lsr	x15, x12, #24
   83e60: 8e fd 68 d3  	lsr	x14, x12, #40
   83e64: af 0d 00 39  	strb	w15, [x13, #3]
   83e68: 8f fd 48 d3  	lsr	x15, x12, #8
   83e6c: 6e 51 1f 38  	sturb	w14, [x11, #-11]
   83e70: 8e fd 50 d3  	lsr	x14, x12, #16
   83e74: 6f 11 1f 38  	sturb	w15, [x11, #-15]
   83e78: 0f fe 68 d3  	lsr	x15, x16, #40
   83e7c: ae 09 00 39  	strb	w14, [x13, #2]
   83e80: ee 03 0d aa  	mov	x14, x13
   83e84: af 35 00 39  	strb	w15, [x13, #13]
   83e88: 0f fe 48 d3  	lsr	x15, x16, #8
   83e8c: d0 8d 00 38  	strb	w16, [x14, #8]!
   83e90: af 25 00 39  	strb	w15, [x13, #9]
   83e94: 0f fe 58 d3  	lsr	x15, x16, #24
   83e98: cf 0d 00 39  	strb	w15, [x14, #3]
   83e9c: 0f fe 50 d3  	lsr	x15, x16, #16
   83ea0: cf 09 00 39  	strb	w15, [x14, #2]
   83ea4: 8f fd 60 d3  	lsr	x15, x12, #32
   83ea8: af 4d 00 38  	strb	w15, [x13, #4]!
   83eac: 0f fe 60 d3  	lsr	x15, x16, #32
   83eb0: cf 4d 00 38  	strb	w15, [x14, #4]!
   83eb4: 8f fd 78 d3  	lsr	x15, x12, #56
   83eb8: 8c fd 70 d3  	lsr	x12, x12, #48
   83ebc: af 0d 00 39  	strb	w15, [x13, #3]
   83ec0: 0f fe 78 d3  	lsr	x15, x16, #56
   83ec4: 10 fe 70 d3  	lsr	x16, x16, #48
   83ec8: ac 09 00 39  	strb	w12, [x13, #2]
   83ecc: cf 0d 00 39  	strb	w15, [x14, #3]
   83ed0: d0 09 00 39  	strb	w16, [x14, #2]
   83ed4: e1 0b 80 3d  	str	q1, [sp, #32]
   83ed8: ec 13 40 f9  	ldr	x12, [sp, #32]
   83edc: ed 03 0b aa  	mov	x13, x11
   83ee0: 6e 81 00 91  	add	x14, x11, #32
   83ee4: 29 81 00 91  	add	x9, x9, #32
   83ee8: 6c 01 00 39  	strb	w12, [x11]
   83eec: 8f fd 68 d3  	lsr	x15, x12, #40
   83ef0: f0 17 40 f9  	ldr	x16, [sp, #40]
   83ef4: 6f 15 00 39  	strb	w15, [x11, #5]
   83ef8: 8f fd 58 d3  	lsr	x15, x12, #24
   83efc: 6f 0d 00 39  	strb	w15, [x11, #3]
   83f00: 8f fd 50 d3  	lsr	x15, x12, #16
   83f04: 6f 09 00 39  	strb	w15, [x11, #2]
   83f08: 8f fd 48 d3  	lsr	x15, x12, #8
   83f0c: 6f 05 00 39  	strb	w15, [x11, #1]
   83f10: 0f fe 68 d3  	lsr	x15, x16, #40
   83f14: b0 8d 00 38  	strb	w16, [x13, #8]!
   83f18: 6f 35 00 39  	strb	w15, [x11, #13]
   83f1c: 0f fe 58 d3  	lsr	x15, x16, #24
   83f20: af 0d 00 39  	strb	w15, [x13, #3]
   83f24: 0f fe 50 d3  	lsr	x15, x16, #16
   83f28: af 09 00 39  	strb	w15, [x13, #2]
   83f2c: 0f fe 48 d3  	lsr	x15, x16, #8
   83f30: 6f 25 00 39  	strb	w15, [x11, #9]
   83f34: 0f fe 60 d3  	lsr	x15, x16, #32
   83f38: af 4d 00 38  	strb	w15, [x13, #4]!
   83f3c: 8f fd 60 d3  	lsr	x15, x12, #32
   83f40: 6f 4d 00 38  	strb	w15, [x11, #4]!
   83f44: 0f fe 78 d3  	lsr	x15, x16, #56
   83f48: af 0d 00 39  	strb	w15, [x13, #3]
   83f4c: 8f fd 78 d3  	lsr	x15, x12, #56
   83f50: 8c fd 70 d3  	lsr	x12, x12, #48
   83f54: 10 fe 70 d3  	lsr	x16, x16, #48
   83f58: 6f 0d 00 39  	strb	w15, [x11, #3]
   83f5c: 6c 09 00 39  	strb	w12, [x11, #2]
   83f60: eb 03 0e aa  	mov	x11, x14
   83f64: b0 09 00 39  	strb	w16, [x13, #2]
   83f68: 01 ee ff 54  	b.ne	0x83d28 <memcpy+0x70>
   83f6c: 1f 01 02 eb  	cmp	x8, x2
   83f70: 80 ec ff 54  	b.eq	0x83d00 <memcpy+0x48>
   83f74: 5f 04 7d f2  	tst	x2, #0x18
   83f78: 60 eb ff 54  	b.eq	0x83ce4 <memcpy+0x2c>
   83f7c: ea 03 08 aa  	mov	x10, x8
   83f80: 48 f0 7d 92  	and	x8, x2, #0xfffffffffffffff8
   83f84: 29 00 0a 8b  	add	x9, x1, x10
   83f88: 0b 00 0a 8b  	add	x11, x0, x10
   83f8c: 4a 01 08 cb  	sub	x10, x10, x8
   83f90: ed 03 09 aa  	mov	x13, x9
   83f94: 2c 15 40 39  	ldrb	w12, [x9, #5]
   83f98: ae 4d 40 38  	ldrb	w14, [x13, #4]!
   83f9c: 2f 05 40 39  	ldrb	w15, [x9, #1]
   83fa0: 30 01 40 39  	ldrb	w16, [x9]
   83fa4: 31 0d 40 39  	ldrb	w17, [x9, #3]
   83fa8: a3 0d 40 39  	ldrb	w3, [x13, #3]
   83fac: ad 09 40 39  	ldrb	w13, [x13, #2]
   83fb0: 32 09 40 39  	ldrb	w18, [x9, #2]
   83fb4: 8e 1d 18 33  	bfi	w14, w12, #8, #8
   83fb8: 6f 05 00 39  	strb	w15, [x11, #1]
   83fbc: ef 03 0d 2a  	mov	w15, w13
   83fc0: 6f 1c 18 33  	bfi	w15, w3, #8, #8
   83fc4: ee 3d 10 33  	bfi	w14, w15, #16, #16
   83fc8: 6c 15 00 39  	strb	w12, [x11, #5]
   83fcc: 6c 21 00 91  	add	x12, x11, #8
   83fd0: 72 09 00 39  	strb	w18, [x11, #2]
   83fd4: 71 0d 00 39  	strb	w17, [x11, #3]
   83fd8: 70 01 00 39  	strb	w16, [x11]
   83fdc: 6e 4d 00 38  	strb	w14, [x11, #4]!
   83fe0: 4a 21 00 b1  	adds	x10, x10, #8
   83fe4: 6d 09 00 39  	strb	w13, [x11, #2]
   83fe8: 63 0d 00 39  	strb	w3, [x11, #3]
   83fec: 29 21 00 91  	add	x9, x9, #8
   83ff0: eb 03 0c aa  	mov	x11, x12
   83ff4: e1 fc ff 54  	b.ne	0x83f90 <memcpy+0x2d8>
   83ff8: 1f 01 02 eb  	cmp	x8, x2
   83ffc: 20 e8 ff 54  	b.eq	0x83d00 <memcpy+0x48>
   84000: 39 ff ff 17  	b	0x83ce4 <memcpy+0x2c>

0000000000084004 <memset>:
   84004: ff 83 00 d1  	sub	sp, sp, #32
   84008: 02 0e 00 b4  	cbz	x2, 0x841c8 <memset+0x1c4>
   8400c: 5f 10 00 f1  	cmp	x2, #4
   84010: 62 00 00 54  	b.hs	0x8401c <memset+0x18>
   84014: e8 03 1f aa  	mov	x8, xzr
   84018: 67 00 00 14  	b	0x841b4 <memset+0x1b0>
   8401c: 5f 80 00 f1  	cmp	x2, #32
   84020: 62 00 00 54  	b.hs	0x8402c <memset+0x28>
   84024: e8 03 1f aa  	mov	x8, xzr
   84028: 52 00 00 14  	b	0x84170 <memset+0x16c>
   8402c: 48 e8 7b 92  	and	x8, x2, #0xffffffffffffffe0
   84030: 20 0c 01 4e  	dup	v0.16b, w1
   84034: 09 40 00 91  	add	x9, x0, #16
   84038: ea 03 08 aa  	mov	x10, x8
   8403c: e0 07 80 3d  	str	q0, [sp, #16]
   84040: eb 0b 40 f9  	ldr	x11, [sp, #16]
   84044: ec 03 09 aa  	mov	x12, x9
   84048: 4a 81 00 f1  	subs	x10, x10, #32
   8404c: 8b 0d 1f 38  	strb	w11, [x12, #-16]!
   84050: ef 0f 40 f9  	ldr	x15, [sp, #24]
   84054: 6e fd 58 d3  	lsr	x14, x11, #24
   84058: 6d fd 68 d3  	lsr	x13, x11, #40
   8405c: 8e 0d 00 39  	strb	w14, [x12, #3]
   84060: 6e fd 48 d3  	lsr	x14, x11, #8
   84064: 2d 51 1f 38  	sturb	w13, [x9, #-11]
   84068: 6d fd 50 d3  	lsr	x13, x11, #16
   8406c: 2e 11 1f 38  	sturb	w14, [x9, #-15]
   84070: ee fd 68 d3  	lsr	x14, x15, #40
   84074: 8d 09 00 39  	strb	w13, [x12, #2]
   84078: ed 03 0c aa  	mov	x13, x12
   8407c: 8e 35 00 39  	strb	w14, [x12, #13]
   84080: ee fd 48 d3  	lsr	x14, x15, #8
   84084: af 8d 00 38  	strb	w15, [x13, #8]!
   84088: 8e 25 00 39  	strb	w14, [x12, #9]
   8408c: ee fd 58 d3  	lsr	x14, x15, #24
   84090: ae 0d 00 39  	strb	w14, [x13, #3]
   84094: ee fd 50 d3  	lsr	x14, x15, #16
   84098: ae 09 00 39  	strb	w14, [x13, #2]
   8409c: 6e fd 60 d3  	lsr	x14, x11, #32
   840a0: 8e 4d 00 38  	strb	w14, [x12, #4]!
   840a4: ee fd 60 d3  	lsr	x14, x15, #32
   840a8: ae 4d 00 38  	strb	w14, [x13, #4]!
   840ac: 6e fd 78 d3  	lsr	x14, x11, #56
   840b0: 6b fd 70 d3  	lsr	x11, x11, #48
   840b4: 8e 0d 00 39  	strb	w14, [x12, #3]
   840b8: ee fd 78 d3  	lsr	x14, x15, #56
   840bc: ef fd 70 d3  	lsr	x15, x15, #48
   840c0: 8b 09 00 39  	strb	w11, [x12, #2]
   840c4: ae 0d 00 39  	strb	w14, [x13, #3]
   840c8: af 09 00 39  	strb	w15, [x13, #2]
   840cc: e0 03 80 3d  	str	q0, [sp]
   840d0: eb 03 40 f9  	ldr	x11, [sp]
   840d4: ec 03 09 aa  	mov	x12, x9
   840d8: 2d 81 00 91  	add	x13, x9, #32
   840dc: 2b 01 00 39  	strb	w11, [x9]
   840e0: 6e fd 68 d3  	lsr	x14, x11, #40
   840e4: ef 07 40 f9  	ldr	x15, [sp, #8]
   840e8: 2e 15 00 39  	strb	w14, [x9, #5]
   840ec: 6e fd 58 d3  	lsr	x14, x11, #24
   840f0: 2e 0d 00 39  	strb	w14, [x9, #3]
   840f4: 6e fd 50 d3  	lsr	x14, x11, #16
   840f8: 2e 09 00 39  	strb	w14, [x9, #2]
   840fc: 6e fd 48 d3  	lsr	x14, x11, #8
   84100: 2e 05 00 39  	strb	w14, [x9, #1]
   84104: ee fd 68 d3  	lsr	x14, x15, #40
   84108: 8f 8d 00 38  	strb	w15, [x12, #8]!
   8410c: 2e 35 00 39  	strb	w14, [x9, #13]
   84110: ee fd 58 d3  	lsr	x14, x15, #24
   84114: 8e 0d 00 39  	strb	w14, [x12, #3]
   84118: ee fd 50 d3  	lsr	x14, x15, #16
   8411c: 8e 09 00 39  	strb	w14, [x12, #2]
   84120: ee fd 48 d3  	lsr	x14, x15, #8
   84124: 2e 25 00 39  	strb	w14, [x9, #9]
   84128: ee fd 60 d3  	lsr	x14, x15, #32
   8412c: 8e 4d 00 38  	strb	w14, [x12, #4]!
   84130: 6e fd 60 d3  	lsr	x14, x11, #32
   84134: 2e 4d 00 38  	strb	w14, [x9, #4]!
   84138: ee fd 78 d3  	lsr	x14, x15, #56
   8413c: 8e 0d 00 39  	strb	w14, [x12, #3]
   84140: 6e fd 78 d3  	lsr	x14, x11, #56
   84144: 6b fd 70 d3  	lsr	x11, x11, #48
   84148: ef fd 70 d3  	lsr	x15, x15, #48
   8414c: 2e 0d 00 39  	strb	w14, [x9, #3]
   84150: 2b 09 00 39  	strb	w11, [x9, #2]
   84154: e9 03 0d aa  	mov	x9, x13
   84158: 8f 09 00 39  	strb	w15, [x12, #2]
   8415c: 01 f7 ff 54  	b.ne	0x8403c <memset+0x38>
   84160: 1f 01 02 eb  	cmp	x8, x2
   84164: 20 03 00 54  	b.eq	0x841c8 <memset+0x1c4>
   84168: 5f 08 7e f2  	tst	x2, #0x1c
   8416c: 40 02 00 54  	b.eq	0x841b4 <memset+0x1b0>
   84170: ea 03 08 aa  	mov	x10, x8
   84174: 48 f4 7e 92  	and	x8, x2, #0xfffffffffffffffc
   84178: 20 0c 02 0e  	dup	v0.4h, w1
   8417c: 09 00 0a 8b  	add	x9, x0, x10
   84180: 4a 01 08 cb  	sub	x10, x10, x8
   84184: 0b 3c 0e 0e  	umov	w11, v0.h[3]
   84188: 0c 3c 0a 0e  	umov	w12, v0.h[2]
   8418c: 0d 3c 06 0e  	umov	w13, v0.h[1]
   84190: 0e 3c 02 0e  	umov	w14, v0.h[0]
   84194: 2b 0d 00 39  	strb	w11, [x9, #3]
   84198: 2c 09 00 39  	strb	w12, [x9, #2]
   8419c: 2d 05 00 39  	strb	w13, [x9, #1]
   841a0: 2e 45 00 38  	strb	w14, [x9], #4
   841a4: 4a 11 00 b1  	adds	x10, x10, #4
   841a8: 61 ff ff 54  	b.ne	0x84194 <memset+0x190>
   841ac: 1f 01 02 eb  	cmp	x8, x2
   841b0: c0 00 00 54  	b.eq	0x841c8 <memset+0x1c4>
   841b4: 49 00 08 cb  	sub	x9, x2, x8
   841b8: 08 00 08 8b  	add	x8, x0, x8
   841bc: 29 05 00 f1  	subs	x9, x9, #1
   841c0: 01 15 00 38  	strb	w1, [x8], #1
   841c4: c1 ff ff 54  	b.ne	0x841bc <memset+0x1b8>
   841c8: ff 83 00 91  	add	sp, sp, #32
   841cc: c0 03 5f d6  	ret

Disassembly of section .int_vec:

0000000000084800 <int_sync_sp0>:
   84800: e0 07 bf a9  	stp	x0, x1, [sp, #-16]!
   84804: e2 0f bf a9  	stp	x2, x3, [sp, #-16]!
   84808: e4 17 bf a9  	stp	x4, x5, [sp, #-16]!
   8480c: e6 1f bf a9  	stp	x6, x7, [sp, #-16]!
   84810: e8 27 bf a9  	stp	x8, x9, [sp, #-16]!
   84814: ea 2f bf a9  	stp	x10, x11, [sp, #-16]!
   84818: ec 37 bf a9  	stp	x12, x13, [sp, #-16]!
   8481c: ee 3f bf a9  	stp	x14, x15, [sp, #-16]!
   84820: 00 00 80 d2  	mov	x0, #0
   84824: 03 ee ff 97  	bl	0x80030 <interrupt_handler>
   84828: ee 3f c1 a8  	ldp	x14, x15, [sp], #16
   8482c: ec 37 c1 a8  	ldp	x12, x13, [sp], #16
   84830: ea 2f c1 a8  	ldp	x10, x11, [sp], #16
   84834: e8 27 c1 a8  	ldp	x8, x9, [sp], #16
   84838: e6 1f c1 a8  	ldp	x6, x7, [sp], #16
   8483c: e4 17 c1 a8  	ldp	x4, x5, [sp], #16
   84840: e2 0f c1 a8  	ldp	x2, x3, [sp], #16
   84844: e0 07 c1 a8  	ldp	x0, x1, [sp], #16
   84848: e0 03 9f d6  	eret
   8484c: 20 00 20 d4  	brk	#0x1

0000000000084850 <int_irq_sp0>:
   84850: e0 07 bf a9  	stp	x0, x1, [sp, #-16]!
   84854: e2 0f bf a9  	stp	x2, x3, [sp, #-16]!
   84858: e4 17 bf a9  	stp	x4, x5, [sp, #-16]!
   8485c: e6 1f bf a9  	stp	x6, x7, [sp, #-16]!
   84860: e8 27 bf a9  	stp	x8, x9, [sp, #-16]!
   84864: ea 2f bf a9  	stp	x10, x11, [sp, #-16]!
   84868: ec 37 bf a9  	stp	x12, x13, [sp, #-16]!
   8486c: ee 3f bf a9  	stp	x14, x15, [sp, #-16]!
   84870: 20 00 80 d2  	mov	x0, #1
   84874: ef ed ff 97  	bl	0x80030 <interrupt_handler>
   84878: ee 3f c1 a8  	ldp	x14, x15, [sp], #16
   8487c: ec 37 c1 a8  	ldp	x12, x13, [sp], #16
   84880: ea 2f c1 a8  	ldp	x10, x11, [sp], #16
   84884: e8 27 c1 a8  	ldp	x8, x9, [sp], #16
   84888: e6 1f c1 a8  	ldp	x6, x7, [sp], #16
   8488c: e4 17 c1 a8  	ldp	x4, x5, [sp], #16
   84890: e2 0f c1 a8  	ldp	x2, x3, [sp], #16
   84894: e0 07 c1 a8  	ldp	x0, x1, [sp], #16
   84898: e0 03 9f d6  	eret
   8489c: 20 00 20 d4  	brk	#0x1

00000000000848a0 <int_fiq_sp0>:
   848a0: e0 07 bf a9  	stp	x0, x1, [sp, #-16]!
   848a4: e2 0f bf a9  	stp	x2, x3, [sp, #-16]!
   848a8: e4 17 bf a9  	stp	x4, x5, [sp, #-16]!
   848ac: e6 1f bf a9  	stp	x6, x7, [sp, #-16]!
   848b0: e8 27 bf a9  	stp	x8, x9, [sp, #-16]!
   848b4: ea 2f bf a9  	stp	x10, x11, [sp, #-16]!
   848b8: ec 37 bf a9  	stp	x12, x13, [sp, #-16]!
   848bc: ee 3f bf a9  	stp	x14, x15, [sp, #-16]!
   848c0: 40 00 80 d2  	mov	x0, #2
   848c4: db ed ff 97  	bl	0x80030 <interrupt_handler>
   848c8: ee 3f c1 a8  	ldp	x14, x15, [sp], #16
   848cc: ec 37 c1 a8  	ldp	x12, x13, [sp], #16
   848d0: ea 2f c1 a8  	ldp	x10, x11, [sp], #16
   848d4: e8 27 c1 a8  	ldp	x8, x9, [sp], #16
   848d8: e6 1f c1 a8  	ldp	x6, x7, [sp], #16
   848dc: e4 17 c1 a8  	ldp	x4, x5, [sp], #16
   848e0: e2 0f c1 a8  	ldp	x2, x3, [sp], #16
   848e4: e0 07 c1 a8  	ldp	x0, x1, [sp], #16
   848e8: e0 03 9f d6  	eret
   848ec: 20 00 20 d4  	brk	#0x1

00000000000848f0 <int_serr_sp0>:
   848f0: e0 07 bf a9  	stp	x0, x1, [sp, #-16]!
   848f4: e2 0f bf a9  	stp	x2, x3, [sp, #-16]!
   848f8: e4 17 bf a9  	stp	x4, x5, [sp, #-16]!
   848fc: e6 1f bf a9  	stp	x6, x7, [sp, #-16]!
   84900: e8 27 bf a9  	stp	x8, x9, [sp, #-16]!
   84904: ea 2f bf a9  	stp	x10, x11, [sp, #-16]!
   84908: ec 37 bf a9  	stp	x12, x13, [sp, #-16]!
   8490c: ee 3f bf a9  	stp	x14, x15, [sp, #-16]!
   84910: 60 00 80 d2  	mov	x0, #3
   84914: c7 ed ff 97  	bl	0x80030 <interrupt_handler>
   84918: ee 3f c1 a8  	ldp	x14, x15, [sp], #16
   8491c: ec 37 c1 a8  	ldp	x12, x13, [sp], #16
   84920: ea 2f c1 a8  	ldp	x10, x11, [sp], #16
   84924: e8 27 c1 a8  	ldp	x8, x9, [sp], #16
   84928: e6 1f c1 a8  	ldp	x6, x7, [sp], #16
   8492c: e4 17 c1 a8  	ldp	x4, x5, [sp], #16
   84930: e2 0f c1 a8  	ldp	x2, x3, [sp], #16
   84934: e0 07 c1 a8  	ldp	x0, x1, [sp], #16
   84938: e0 03 9f d6  	eret
   8493c: 20 00 20 d4  	brk	#0x1

0000000000084940 <int_sync_spx>:
   84940: e0 07 bf a9  	stp	x0, x1, [sp, #-16]!
   84944: e2 0f bf a9  	stp	x2, x3, [sp, #-16]!
   84948: e4 17 bf a9  	stp	x4, x5, [sp, #-16]!
   8494c: e6 1f bf a9  	stp	x6, x7, [sp, #-16]!
   84950: e8 27 bf a9  	stp	x8, x9, [sp, #-16]!
   84954: ea 2f bf a9  	stp	x10, x11, [sp, #-16]!
   84958: ec 37 bf a9  	stp	x12, x13, [sp, #-16]!
   8495c: ee 3f bf a9  	stp	x14, x15, [sp, #-16]!
   84960: 80 00 80 d2  	mov	x0, #4
   84964: b3 ed ff 97  	bl	0x80030 <interrupt_handler>
   84968: ee 3f c1 a8  	ldp	x14, x15, [sp], #16
   8496c: ec 37 c1 a8  	ldp	x12, x13, [sp], #16
   84970: ea 2f c1 a8  	ldp	x10, x11, [sp], #16
   84974: e8 27 c1 a8  	ldp	x8, x9, [sp], #16
   84978: e6 1f c1 a8  	ldp	x6, x7, [sp], #16
   8497c: e4 17 c1 a8  	ldp	x4, x5, [sp], #16
   84980: e2 0f c1 a8  	ldp	x2, x3, [sp], #16
   84984: e0 07 c1 a8  	ldp	x0, x1, [sp], #16
   84988: e0 03 9f d6  	eret
   8498c: 20 00 20 d4  	brk	#0x1

0000000000084990 <int_irq_spx>:
   84990: e0 07 bf a9  	stp	x0, x1, [sp, #-16]!
   84994: e2 0f bf a9  	stp	x2, x3, [sp, #-16]!
   84998: e4 17 bf a9  	stp	x4, x5, [sp, #-16]!
   8499c: e6 1f bf a9  	stp	x6, x7, [sp, #-16]!
   849a0: e8 27 bf a9  	stp	x8, x9, [sp, #-16]!
   849a4: ea 2f bf a9  	stp	x10, x11, [sp, #-16]!
   849a8: ec 37 bf a9  	stp	x12, x13, [sp, #-16]!
   849ac: ee 3f bf a9  	stp	x14, x15, [sp, #-16]!
   849b0: a0 00 80 d2  	mov	x0, #5
   849b4: 9f ed ff 97  	bl	0x80030 <interrupt_handler>
   849b8: ee 3f c1 a8  	ldp	x14, x15, [sp], #16
   849bc: ec 37 c1 a8  	ldp	x12, x13, [sp], #16
   849c0: ea 2f c1 a8  	ldp	x10, x11, [sp], #16
   849c4: e8 27 c1 a8  	ldp	x8, x9, [sp], #16
   849c8: e6 1f c1 a8  	ldp	x6, x7, [sp], #16
   849cc: e4 17 c1 a8  	ldp	x4, x5, [sp], #16
   849d0: e2 0f c1 a8  	ldp	x2, x3, [sp], #16
   849d4: e0 07 c1 a8  	ldp	x0, x1, [sp], #16
   849d8: e0 03 9f d6  	eret
   849dc: 20 00 20 d4  	brk	#0x1

00000000000849e0 <int_fiq_spx>:
   849e0: e0 07 bf a9  	stp	x0, x1, [sp, #-16]!
   849e4: e2 0f bf a9  	stp	x2, x3, [sp, #-16]!
   849e8: e4 17 bf a9  	stp	x4, x5, [sp, #-16]!
   849ec: e6 1f bf a9  	stp	x6, x7, [sp, #-16]!
   849f0: e8 27 bf a9  	stp	x8, x9, [sp, #-16]!
   849f4: ea 2f bf a9  	stp	x10, x11, [sp, #-16]!
   849f8: ec 37 bf a9  	stp	x12, x13, [sp, #-16]!
   849fc: ee 3f bf a9  	stp	x14, x15, [sp, #-16]!
   84a00: c0 00 80 d2  	mov	x0, #6
   84a04: 8b ed ff 97  	bl	0x80030 <interrupt_handler>
   84a08: ee 3f c1 a8  	ldp	x14, x15, [sp], #16
   84a0c: ec 37 c1 a8  	ldp	x12, x13, [sp], #16
   84a10: ea 2f c1 a8  	ldp	x10, x11, [sp], #16
   84a14: e8 27 c1 a8  	ldp	x8, x9, [sp], #16
   84a18: e6 1f c1 a8  	ldp	x6, x7, [sp], #16
   84a1c: e4 17 c1 a8  	ldp	x4, x5, [sp], #16
   84a20: e2 0f c1 a8  	ldp	x2, x3, [sp], #16
   84a24: e0 07 c1 a8  	ldp	x0, x1, [sp], #16
   84a28: e0 03 9f d6  	eret
   84a2c: 20 00 20 d4  	brk	#0x1

0000000000084a30 <int_serr_spx>:
   84a30: e0 07 bf a9  	stp	x0, x1, [sp, #-16]!
   84a34: e2 0f bf a9  	stp	x2, x3, [sp, #-16]!
   84a38: e4 17 bf a9  	stp	x4, x5, [sp, #-16]!
   84a3c: e6 1f bf a9  	stp	x6, x7, [sp, #-16]!
   84a40: e8 27 bf a9  	stp	x8, x9, [sp, #-16]!
   84a44: ea 2f bf a9  	stp	x10, x11, [sp, #-16]!
   84a48: ec 37 bf a9  	stp	x12, x13, [sp, #-16]!
   84a4c: ee 3f bf a9  	stp	x14, x15, [sp, #-16]!
   84a50: e0 00 80 d2  	mov	x0, #7
   84a54: 77 ed ff 97  	bl	0x80030 <interrupt_handler>
   84a58: ee 3f c1 a8  	ldp	x14, x15, [sp], #16
   84a5c: ec 37 c1 a8  	ldp	x12, x13, [sp], #16
   84a60: ea 2f c1 a8  	ldp	x10, x11, [sp], #16
   84a64: e8 27 c1 a8  	ldp	x8, x9, [sp], #16
   84a68: e6 1f c1 a8  	ldp	x6, x7, [sp], #16
   84a6c: e4 17 c1 a8  	ldp	x4, x5, [sp], #16
   84a70: e2 0f c1 a8  	ldp	x2, x3, [sp], #16
   84a74: e0 07 c1 a8  	ldp	x0, x1, [sp], #16
   84a78: e0 03 9f d6  	eret
   84a7c: 20 00 20 d4  	brk	#0x1

0000000000084a80 <int_sync_lel64>:
   84a80: e0 07 bf a9  	stp	x0, x1, [sp, #-16]!
   84a84: e2 0f bf a9  	stp	x2, x3, [sp, #-16]!
   84a88: e4 17 bf a9  	stp	x4, x5, [sp, #-16]!
   84a8c: e6 1f bf a9  	stp	x6, x7, [sp, #-16]!
   84a90: e8 27 bf a9  	stp	x8, x9, [sp, #-16]!
   84a94: ea 2f bf a9  	stp	x10, x11, [sp, #-16]!
   84a98: ec 37 bf a9  	stp	x12, x13, [sp, #-16]!
   84a9c: ee 3f bf a9  	stp	x14, x15, [sp, #-16]!
   84aa0: 00 01 80 d2  	mov	x0, #8
   84aa4: 63 ed ff 97  	bl	0x80030 <interrupt_handler>
   84aa8: ee 3f c1 a8  	ldp	x14, x15, [sp], #16
   84aac: ec 37 c1 a8  	ldp	x12, x13, [sp], #16
   84ab0: ea 2f c1 a8  	ldp	x10, x11, [sp], #16
   84ab4: e8 27 c1 a8  	ldp	x8, x9, [sp], #16
   84ab8: e6 1f c1 a8  	ldp	x6, x7, [sp], #16
   84abc: e4 17 c1 a8  	ldp	x4, x5, [sp], #16
   84ac0: e2 0f c1 a8  	ldp	x2, x3, [sp], #16
   84ac4: e0 07 c1 a8  	ldp	x0, x1, [sp], #16
   84ac8: e0 03 9f d6  	eret
   84acc: 20 00 20 d4  	brk	#0x1

0000000000084ad0 <int_irq_lel64>:
   84ad0: e0 07 bf a9  	stp	x0, x1, [sp, #-16]!
   84ad4: e2 0f bf a9  	stp	x2, x3, [sp, #-16]!
   84ad8: e4 17 bf a9  	stp	x4, x5, [sp, #-16]!
   84adc: e6 1f bf a9  	stp	x6, x7, [sp, #-16]!
   84ae0: e8 27 bf a9  	stp	x8, x9, [sp, #-16]!
   84ae4: ea 2f bf a9  	stp	x10, x11, [sp, #-16]!
   84ae8: ec 37 bf a9  	stp	x12, x13, [sp, #-16]!
   84aec: ee 3f bf a9  	stp	x14, x15, [sp, #-16]!
   84af0: 20 01 80 d2  	mov	x0, #9
   84af4: 4f ed ff 97  	bl	0x80030 <interrupt_handler>
   84af8: ee 3f c1 a8  	ldp	x14, x15, [sp], #16
   84afc: ec 37 c1 a8  	ldp	x12, x13, [sp], #16
   84b00: ea 2f c1 a8  	ldp	x10, x11, [sp], #16
   84b04: e8 27 c1 a8  	ldp	x8, x9, [sp], #16
   84b08: e6 1f c1 a8  	ldp	x6, x7, [sp], #16
   84b0c: e4 17 c1 a8  	ldp	x4, x5, [sp], #16
   84b10: e2 0f c1 a8  	ldp	x2, x3, [sp], #16
   84b14: e0 07 c1 a8  	ldp	x0, x1, [sp], #16
   84b18: e0 03 9f d6  	eret
   84b1c: 20 00 20 d4  	brk	#0x1

0000000000084b20 <int_fiq_lel64>:
   84b20: e0 07 bf a9  	stp	x0, x1, [sp, #-16]!
   84b24: e2 0f bf a9  	stp	x2, x3, [sp, #-16]!
   84b28: e4 17 bf a9  	stp	x4, x5, [sp, #-16]!
   84b2c: e6 1f bf a9  	stp	x6, x7, [sp, #-16]!
   84b30: e8 27 bf a9  	stp	x8, x9, [sp, #-16]!
   84b34: ea 2f bf a9  	stp	x10, x11, [sp, #-16]!
   84b38: ec 37 bf a9  	stp	x12, x13, [sp, #-16]!
   84b3c: ee 3f bf a9  	stp	x14, x15, [sp, #-16]!
   84b40: 40 01 80 d2  	mov	x0, #10
   84b44: 3b ed ff 97  	bl	0x80030 <interrupt_handler>
   84b48: ee 3f c1 a8  	ldp	x14, x15, [sp], #16
   84b4c: ec 37 c1 a8  	ldp	x12, x13, [sp], #16
   84b50: ea 2f c1 a8  	ldp	x10, x11, [sp], #16
   84b54: e8 27 c1 a8  	ldp	x8, x9, [sp], #16
   84b58: e6 1f c1 a8  	ldp	x6, x7, [sp], #16
   84b5c: e4 17 c1 a8  	ldp	x4, x5, [sp], #16
   84b60: e2 0f c1 a8  	ldp	x2, x3, [sp], #16
   84b64: e0 07 c1 a8  	ldp	x0, x1, [sp], #16
   84b68: e0 03 9f d6  	eret
   84b6c: 20 00 20 d4  	brk	#0x1

0000000000084b70 <int_serr_lel64>:
   84b70: e0 07 bf a9  	stp	x0, x1, [sp, #-16]!
   84b74: e2 0f bf a9  	stp	x2, x3, [sp, #-16]!
   84b78: e4 17 bf a9  	stp	x4, x5, [sp, #-16]!
   84b7c: e6 1f bf a9  	stp	x6, x7, [sp, #-16]!
   84b80: e8 27 bf a9  	stp	x8, x9, [sp, #-16]!
   84b84: ea 2f bf a9  	stp	x10, x11, [sp, #-16]!
   84b88: ec 37 bf a9  	stp	x12, x13, [sp, #-16]!
   84b8c: ee 3f bf a9  	stp	x14, x15, [sp, #-16]!
   84b90: 60 01 80 d2  	mov	x0, #11
   84b94: 27 ed ff 97  	bl	0x80030 <interrupt_handler>
   84b98: ee 3f c1 a8  	ldp	x14, x15, [sp], #16
   84b9c: ec 37 c1 a8  	ldp	x12, x13, [sp], #16
   84ba0: ea 2f c1 a8  	ldp	x10, x11, [sp], #16
   84ba4: e8 27 c1 a8  	ldp	x8, x9, [sp], #16
   84ba8: e6 1f c1 a8  	ldp	x6, x7, [sp], #16
   84bac: e4 17 c1 a8  	ldp	x4, x5, [sp], #16
   84bb0: e2 0f c1 a8  	ldp	x2, x3, [sp], #16
   84bb4: e0 07 c1 a8  	ldp	x0, x1, [sp], #16
   84bb8: e0 03 9f d6  	eret
   84bbc: 20 00 20 d4  	brk	#0x1

0000000000084bc0 <int_sync_lel32>:
   84bc0: e0 07 bf a9  	stp	x0, x1, [sp, #-16]!
   84bc4: e2 0f bf a9  	stp	x2, x3, [sp, #-16]!
   84bc8: e4 17 bf a9  	stp	x4, x5, [sp, #-16]!
   84bcc: e6 1f bf a9  	stp	x6, x7, [sp, #-16]!
   84bd0: e8 27 bf a9  	stp	x8, x9, [sp, #-16]!
   84bd4: ea 2f bf a9  	stp	x10, x11, [sp, #-16]!
   84bd8: ec 37 bf a9  	stp	x12, x13, [sp, #-16]!
   84bdc: ee 3f bf a9  	stp	x14, x15, [sp, #-16]!
   84be0: 80 01 80 d2  	mov	x0, #12
   84be4: 13 ed ff 97  	bl	0x80030 <interrupt_handler>
   84be8: ee 3f c1 a8  	ldp	x14, x15, [sp], #16
   84bec: ec 37 c1 a8  	ldp	x12, x13, [sp], #16
   84bf0: ea 2f c1 a8  	ldp	x10, x11, [sp], #16
   84bf4: e8 27 c1 a8  	ldp	x8, x9, [sp], #16
   84bf8: e6 1f c1 a8  	ldp	x6, x7, [sp], #16
   84bfc: e4 17 c1 a8  	ldp	x4, x5, [sp], #16
   84c00: e2 0f c1 a8  	ldp	x2, x3, [sp], #16
   84c04: e0 07 c1 a8  	ldp	x0, x1, [sp], #16
   84c08: e0 03 9f d6  	eret
   84c0c: 20 00 20 d4  	brk	#0x1

0000000000084c10 <int_irq_lel32>:
   84c10: e0 07 bf a9  	stp	x0, x1, [sp, #-16]!
   84c14: e2 0f bf a9  	stp	x2, x3, [sp, #-16]!
   84c18: e4 17 bf a9  	stp	x4, x5, [sp, #-16]!
   84c1c: e6 1f bf a9  	stp	x6, x7, [sp, #-16]!
   84c20: e8 27 bf a9  	stp	x8, x9, [sp, #-16]!
   84c24: ea 2f bf a9  	stp	x10, x11, [sp, #-16]!
   84c28: ec 37 bf a9  	stp	x12, x13, [sp, #-16]!
   84c2c: ee 3f bf a9  	stp	x14, x15, [sp, #-16]!
   84c30: a0 01 80 d2  	mov	x0, #13
   84c34: ff ec ff 97  	bl	0x80030 <interrupt_handler>
   84c38: ee 3f c1 a8  	ldp	x14, x15, [sp], #16
   84c3c: ec 37 c1 a8  	ldp	x12, x13, [sp], #16
   84c40: ea 2f c1 a8  	ldp	x10, x11, [sp], #16
   84c44: e8 27 c1 a8  	ldp	x8, x9, [sp], #16
   84c48: e6 1f c1 a8  	ldp	x6, x7, [sp], #16
   84c4c: e4 17 c1 a8  	ldp	x4, x5, [sp], #16
   84c50: e2 0f c1 a8  	ldp	x2, x3, [sp], #16
   84c54: e0 07 c1 a8  	ldp	x0, x1, [sp], #16
   84c58: e0 03 9f d6  	eret
   84c5c: 20 00 20 d4  	brk	#0x1

0000000000084c60 <int_fiq_lel32>:
   84c60: e0 07 bf a9  	stp	x0, x1, [sp, #-16]!
   84c64: e2 0f bf a9  	stp	x2, x3, [sp, #-16]!
   84c68: e4 17 bf a9  	stp	x4, x5, [sp, #-16]!
   84c6c: e6 1f bf a9  	stp	x6, x7, [sp, #-16]!
   84c70: e8 27 bf a9  	stp	x8, x9, [sp, #-16]!
   84c74: ea 2f bf a9  	stp	x10, x11, [sp, #-16]!
   84c78: ec 37 bf a9  	stp	x12, x13, [sp, #-16]!
   84c7c: ee 3f bf a9  	stp	x14, x15, [sp, #-16]!
   84c80: c0 01 80 d2  	mov	x0, #14
   84c84: eb ec ff 97  	bl	0x80030 <interrupt_handler>
   84c88: ee 3f c1 a8  	ldp	x14, x15, [sp], #16
   84c8c: ec 37 c1 a8  	ldp	x12, x13, [sp], #16
   84c90: ea 2f c1 a8  	ldp	x10, x11, [sp], #16
   84c94: e8 27 c1 a8  	ldp	x8, x9, [sp], #16
   84c98: e6 1f c1 a8  	ldp	x6, x7, [sp], #16
   84c9c: e4 17 c1 a8  	ldp	x4, x5, [sp], #16
   84ca0: e2 0f c1 a8  	ldp	x2, x3, [sp], #16
   84ca4: e0 07 c1 a8  	ldp	x0, x1, [sp], #16
   84ca8: e0 03 9f d6  	eret
   84cac: 20 00 20 d4  	brk	#0x1

0000000000084cb0 <int_serr_lel32>:
   84cb0: e0 07 bf a9  	stp	x0, x1, [sp, #-16]!
   84cb4: e2 0f bf a9  	stp	x2, x3, [sp, #-16]!
   84cb8: e4 17 bf a9  	stp	x4, x5, [sp, #-16]!
   84cbc: e6 1f bf a9  	stp	x6, x7, [sp, #-16]!
   84cc0: e8 27 bf a9  	stp	x8, x9, [sp, #-16]!
   84cc4: ea 2f bf a9  	stp	x10, x11, [sp, #-16]!
   84cc8: ec 37 bf a9  	stp	x12, x13, [sp, #-16]!
   84ccc: ee 3f bf a9  	stp	x14, x15, [sp, #-16]!
   84cd0: e0 01 80 d2  	mov	x0, #15
   84cd4: d7 ec ff 97  	bl	0x80030 <interrupt_handler>
   84cd8: ee 3f c1 a8  	ldp	x14, x15, [sp], #16
   84cdc: ec 37 c1 a8  	ldp	x12, x13, [sp], #16
   84ce0: ea 2f c1 a8  	ldp	x10, x11, [sp], #16
   84ce4: e8 27 c1 a8  	ldp	x8, x9, [sp], #16
   84ce8: e6 1f c1 a8  	ldp	x6, x7, [sp], #16
   84cec: e4 17 c1 a8  	ldp	x4, x5, [sp], #16
   84cf0: e2 0f c1 a8  	ldp	x2, x3, [sp], #16
   84cf4: e0 07 c1 a8  	ldp	x0, x1, [sp], #16
   84cf8: e0 03 9f d6  	eret
   84cfc: 20 00 20 d4  	brk	#0x1
