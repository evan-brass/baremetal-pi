
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
   80030: ff c3 02 d1  	sub	sp, sp, #176
   80034: fe 57 09 a9  	stp	x30, x21, [sp, #144]
   80038: f4 4f 0a a9  	stp	x20, x19, [sp, #160]
   8003c: e8 03 1e aa  	mov	x8, x30
   80040: 09 52 3e d5  	mrs	x9, ESR_EL3
   80044: 0a 60 3e d5  	mrs	x10, FAR_EL3
   80048: 2b 40 3e d5  	mrs	x11, ELR_EL3
   8004c: e8 ab 00 a9  	stp	x8, x10, [sp, #8]
   80050: 2a 00 00 90  	adrp	x10, 0x84000 <interrupt_handler+0x30>
   80054: c0 01 80 52  	mov	w0, #14
   80058: 4a 01 20 91  	add	x10, x10, #2048
   8005c: 13 0d 8a 52  	mov	w19, #20584
   80060: 08 01 0a cb  	sub	x8, x8, x10
   80064: 33 e4 a7 72  	movk	w19, #16161, lsl #16
   80068: 0a fd 01 91  	add	x10, x8, #127
   8006c: 1f 01 00 f1  	cmp	x8, #0
   80070: 48 b1 88 9a  	csel	x8, x10, x8, lt
   80074: 2a 65 59 d3  	ubfx	x10, x9, #25, #1
   80078: 08 fd 47 93  	asr	x8, x8, #7
   8007c: 29 7d 5a d3  	ubfx	x9, x9, #26, #6
   80080: ea a7 02 a9  	stp	x10, x9, [sp, #40]
   80084: eb a3 01 a9  	stp	x11, x8, [sp, #24]
   80088: 1e 03 00 94  	bl	0x80d00 <_ZN12baremetal_pi4gpio4Gpio9configure17h4cba8c34a7a1e1eeE>
   8008c: e0 01 80 52  	mov	w0, #15
   80090: 1c 03 00 94  	bl	0x80d00 <_ZN12baremetal_pi4gpio4Gpio9configure17h4cba8c34a7a1e1eeE>
   80094: 69 02 40 b9  	ldr	w9, [x19]
   80098: c8 21 80 52  	mov	w8, #270
   8009c: 6a 00 80 52  	mov	w10, #3
   800a0: 09 3d 00 33  	bfxil	w9, w8, #0, #16
   800a4: c8 12 80 52  	mov	w8, #150
   800a8: 69 02 00 b9  	str	w9, [x19]
   800ac: 6a 42 1e b8  	stur	w10, [x19, #-28]
   800b0: 1f 20 03 d5  	nop
   800b4: 08 05 00 f1  	subs	x8, x8, #1
   800b8: c1 ff ff 54  	b.ne	0x800b0 <interrupt_handler+0x80>
   800bc: 68 00 80 52  	mov	w8, #3
   800c0: 0a 00 00 f0  	adrp	x10, 0x83000 <interrupt_handler+0x9c>
   800c4: e9 83 00 91  	add	x9, sp, #32
   800c8: 4a 61 2d 91  	add	x10, x10, #2904
   800cc: 21 00 00 b0  	adrp	x1, 0x85000 <interrupt_handler+0xb0>
   800d0: f4 e3 00 91  	add	x20, sp, #56
   800d4: 68 82 1f b8  	stur	w8, [x19, #-8]
   800d8: e8 83 01 91  	add	x8, sp, #96
   800dc: e9 ab 03 a9  	stp	x9, x10, [sp, #56]
   800e0: 29 00 00 b0  	adrp	x9, 0x85000 <interrupt_handler+0xc4>
   800e4: 29 61 03 91  	add	x9, x9, #216
   800e8: 21 80 18 91  	add	x1, x1, #1568
   800ec: e8 2f 00 f9  	str	x8, [sp, #88]
   800f0: 48 00 80 52  	mov	w8, #2
   800f4: e0 63 01 91  	add	x0, sp, #88
   800f8: e2 83 01 91  	add	x2, sp, #96
   800fc: ff 7f 07 a9  	stp	xzr, xzr, [sp, #112]
   80100: f5 83 01 91  	add	x21, sp, #96
   80104: e9 23 06 a9  	stp	x9, x8, [sp, #96]
   80108: 28 00 80 52  	mov	w8, #1
   8010c: f4 23 08 a9  	stp	x20, x8, [sp, #128]
   80110: 04 06 00 94  	bl	0x81920 <_ZN4core3fmt5write17h63775af3066fbce8E>
   80114: 40 0c 00 35  	cbnz	w0, 0x8029c <interrupt_handler+0x26c>
   80118: 13 00 00 90  	adrp	x19, 0x80000 <interrupt_handler+0xe8>
   8011c: e8 23 00 91  	add	x8, sp, #8
   80120: 73 42 0d 91  	add	x19, x19, #848
   80124: 29 00 00 b0  	adrp	x9, 0x85000 <interrupt_handler+0x108>
   80128: 21 00 00 b0  	adrp	x1, 0x85000 <interrupt_handler+0x10c>
   8012c: 29 a1 04 91  	add	x9, x9, #296
   80130: 21 80 18 91  	add	x1, x1, #1568
   80134: e0 63 01 91  	add	x0, sp, #88
   80138: e8 cf 03 a9  	stp	x8, x19, [sp, #56]
   8013c: 48 00 80 52  	mov	w8, #2
   80140: e2 83 01 91  	add	x2, sp, #96
   80144: f5 a7 05 a9  	stp	x21, x9, [sp, #88]
   80148: ff d3 07 a9  	stp	xzr, x20, [sp, #120]
   8014c: f4 83 01 91  	add	x20, sp, #96
   80150: e8 ff 06 a9  	stp	x8, xzr, [sp, #104]
   80154: 28 00 80 52  	mov	w8, #1
   80158: e8 47 00 f9  	str	x8, [sp, #136]
   8015c: f1 05 00 94  	bl	0x81920 <_ZN4core3fmt5write17h63775af3066fbce8E>
   80160: c0 0a 00 35  	cbnz	w0, 0x802b8 <interrupt_handler+0x288>
   80164: 09 00 00 f0  	adrp	x9, 0x83000 <interrupt_handler+0x140>
   80168: e8 c3 00 91  	add	x8, sp, #48
   8016c: 29 51 26 91  	add	x9, x9, #2452
   80170: ea a3 00 91  	add	x10, sp, #40
   80174: 21 00 00 b0  	adrp	x1, 0x85000 <interrupt_handler+0x158>
   80178: e0 63 01 91  	add	x0, sp, #88
   8017c: 21 80 18 91  	add	x1, x1, #1568
   80180: e2 83 01 91  	add	x2, sp, #96
   80184: e8 a7 03 a9  	stp	x8, x9, [sp, #56]
   80188: 68 00 80 52  	mov	w8, #3
   8018c: ea a7 04 a9  	stp	x10, x9, [sp, #72]
   80190: 29 00 00 b0  	adrp	x9, 0x85000 <interrupt_handler+0x174>
   80194: 29 c1 05 91  	add	x9, x9, #368
   80198: f5 83 01 91  	add	x21, sp, #96
   8019c: e8 ff 06 a9  	stp	x8, xzr, [sp, #104]
   801a0: 48 00 80 52  	mov	w8, #2
   801a4: f4 a7 05 a9  	stp	x20, x9, [sp, #88]
   801a8: f4 e3 00 91  	add	x20, sp, #56
   801ac: e8 47 00 f9  	str	x8, [sp, #136]
   801b0: ff d3 07 a9  	stp	xzr, x20, [sp, #120]
   801b4: db 05 00 94  	bl	0x81920 <_ZN4core3fmt5write17h63775af3066fbce8E>
   801b8: e0 08 00 35  	cbnz	w0, 0x802d4 <interrupt_handler+0x2a4>
   801bc: 09 00 00 90  	adrp	x9, 0x80000 <interrupt_handler+0x18c>
   801c0: e8 43 00 91  	add	x8, sp, #16
   801c4: 29 a1 3c 91  	add	x9, x9, #3880
   801c8: 21 00 00 b0  	adrp	x1, 0x85000 <interrupt_handler+0x1ac>
   801cc: 21 80 18 91  	add	x1, x1, #1568
   801d0: e0 63 01 91  	add	x0, sp, #88
   801d4: e2 83 01 91  	add	x2, sp, #96
   801d8: ff d3 07 a9  	stp	xzr, x20, [sp, #120]
   801dc: e8 a7 03 a9  	stp	x8, x9, [sp, #56]
   801e0: 48 00 80 52  	mov	w8, #2
   801e4: 29 00 00 b0  	adrp	x9, 0x85000 <interrupt_handler+0x1c8>
   801e8: f4 83 01 91  	add	x20, sp, #96
   801ec: 29 41 07 91  	add	x9, x9, #464
   801f0: e8 ff 06 a9  	stp	x8, xzr, [sp, #104]
   801f4: 28 00 80 52  	mov	w8, #1
   801f8: f5 a7 05 a9  	stp	x21, x9, [sp, #88]
   801fc: e8 47 00 f9  	str	x8, [sp, #136]
   80200: c8 05 00 94  	bl	0x81920 <_ZN4core3fmt5write17h63775af3066fbce8E>
   80204: 60 07 00 35  	cbnz	w0, 0x802f0 <interrupt_handler+0x2c0>
   80208: 29 00 00 b0  	adrp	x9, 0x85000 <interrupt_handler+0x1ec>
   8020c: e8 63 00 91  	add	x8, sp, #24
   80210: 29 81 08 91  	add	x9, x9, #544
   80214: 21 00 00 b0  	adrp	x1, 0x85000 <interrupt_handler+0x1f8>
   80218: 4a 00 80 52  	mov	w10, #2
   8021c: 21 80 18 91  	add	x1, x1, #1568
   80220: e8 cf 03 a9  	stp	x8, x19, [sp, #56]
   80224: e8 e3 00 91  	add	x8, sp, #56
   80228: f4 a7 05 a9  	stp	x20, x9, [sp, #88]
   8022c: 29 00 80 52  	mov	w9, #1
   80230: e0 63 01 91  	add	x0, sp, #88
   80234: e2 83 01 91  	add	x2, sp, #96
   80238: ea ff 06 a9  	stp	x10, xzr, [sp, #104]
   8023c: f3 83 01 91  	add	x19, sp, #96
   80240: ff a3 07 a9  	stp	xzr, x8, [sp, #120]
   80244: e9 47 00 f9  	str	x9, [sp, #136]
   80248: b6 05 00 94  	bl	0x81920 <_ZN4core3fmt5write17h63775af3066fbce8E>
   8024c: 00 06 00 35  	cbnz	w0, 0x8030c <interrupt_handler+0x2dc>
   80250: 29 00 00 b0  	adrp	x9, 0x85000 <interrupt_handler+0x234>
   80254: 28 00 80 52  	mov	w8, #1
   80258: 29 c1 09 91  	add	x9, x9, #624
   8025c: 21 00 00 b0  	adrp	x1, 0x85000 <interrupt_handler+0x240>
   80260: 21 80 18 91  	add	x1, x1, #1568
   80264: e0 e3 00 91  	add	x0, sp, #56
   80268: e2 83 01 91  	add	x2, sp, #96
   8026c: f3 1f 00 f9  	str	x19, [sp, #56]
   80270: e9 23 06 a9  	stp	x9, x8, [sp, #96]
   80274: 28 00 00 b0  	adrp	x8, 0x85000 <interrupt_handler+0x258>
   80278: 08 c1 1d 91  	add	x8, x8, #1904
   8027c: ff 7f 07 a9  	stp	xzr, xzr, [sp, #112]
   80280: e8 7f 08 a9  	stp	x8, xzr, [sp, #128]
   80284: a7 05 00 94  	bl	0x81920 <_ZN4core3fmt5write17h63775af3066fbce8E>
   80288: 00 05 00 35  	cbnz	w0, 0x80328 <interrupt_handler+0x2f8>
   8028c: f4 4f 4a a9  	ldp	x20, x19, [sp, #160]
   80290: fe 57 49 a9  	ldp	x30, x21, [sp, #144]
   80294: ff c3 02 91  	add	sp, sp, #176
   80298: c0 03 5f d6  	ret
   8029c: 20 00 00 b0  	adrp	x0, 0x85000 <interrupt_handler+0x280>
   802a0: 22 00 00 b0  	adrp	x2, 0x85000 <interrupt_handler+0x284>
   802a4: 23 00 00 b0  	adrp	x3, 0x85000 <interrupt_handler+0x288>
   802a8: 00 20 1b 91  	add	x0, x0, #1736
   802ac: 42 40 02 91  	add	x2, x2, #144
   802b0: 63 e0 03 91  	add	x3, x3, #248
   802b4: 23 00 00 14  	b	0x80340 <interrupt_handler+0x310>
   802b8: 20 00 00 b0  	adrp	x0, 0x85000 <interrupt_handler+0x29c>
   802bc: 22 00 00 b0  	adrp	x2, 0x85000 <interrupt_handler+0x2a0>
   802c0: 23 00 00 b0  	adrp	x3, 0x85000 <interrupt_handler+0x2a4>
   802c4: 00 20 1b 91  	add	x0, x0, #1736
   802c8: 42 40 02 91  	add	x2, x2, #144
   802cc: 63 20 05 91  	add	x3, x3, #328
   802d0: 1c 00 00 14  	b	0x80340 <interrupt_handler+0x310>
   802d4: 20 00 00 b0  	adrp	x0, 0x85000 <interrupt_handler+0x2b8>
   802d8: 22 00 00 b0  	adrp	x2, 0x85000 <interrupt_handler+0x2bc>
   802dc: 23 00 00 b0  	adrp	x3, 0x85000 <interrupt_handler+0x2c0>
   802e0: 00 20 1b 91  	add	x0, x0, #1736
   802e4: 42 40 02 91  	add	x2, x2, #144
   802e8: 63 80 06 91  	add	x3, x3, #416
   802ec: 15 00 00 14  	b	0x80340 <interrupt_handler+0x310>
   802f0: 20 00 00 b0  	adrp	x0, 0x85000 <interrupt_handler+0x2d4>
   802f4: 22 00 00 b0  	adrp	x2, 0x85000 <interrupt_handler+0x2d8>
   802f8: 23 00 00 b0  	adrp	x3, 0x85000 <interrupt_handler+0x2dc>
   802fc: 00 20 1b 91  	add	x0, x0, #1736
   80300: 42 40 02 91  	add	x2, x2, #144
   80304: 63 c0 07 91  	add	x3, x3, #496
   80308: 0e 00 00 14  	b	0x80340 <interrupt_handler+0x310>
   8030c: 20 00 00 b0  	adrp	x0, 0x85000 <interrupt_handler+0x2f0>
   80310: 22 00 00 b0  	adrp	x2, 0x85000 <interrupt_handler+0x2f4>
   80314: 23 00 00 b0  	adrp	x3, 0x85000 <interrupt_handler+0x2f8>
   80318: 00 20 1b 91  	add	x0, x0, #1736
   8031c: 42 40 02 91  	add	x2, x2, #144
   80320: 63 00 09 91  	add	x3, x3, #576
   80324: 07 00 00 14  	b	0x80340 <interrupt_handler+0x310>
   80328: 20 00 00 b0  	adrp	x0, 0x85000 <interrupt_handler+0x30c>
   8032c: 22 00 00 b0  	adrp	x2, 0x85000 <interrupt_handler+0x310>
   80330: 23 00 00 b0  	adrp	x3, 0x85000 <interrupt_handler+0x314>
   80334: 00 20 1b 91  	add	x0, x0, #1736
   80338: 42 40 02 91  	add	x2, x2, #144
   8033c: 63 00 0a 91  	add	x3, x3, #640
   80340: e1 83 01 91  	add	x1, sp, #96
   80344: 07 06 00 94  	bl	0x81b60 <_ZN4core6result13unwrap_failed17he5d63f92106ab51dE>
   80348: 20 00 20 d4  	brk	#0x1
   8034c: 00 00 00 00  	udf	#0

0000000000080350 <_ZN54_$LT$$BP$const$u20$T$u20$as$u20$core..fmt..Pointer$GT$3fmt17h9106aecea6dc8428E>:
   80350: ff 43 01 d1  	sub	sp, sp, #80
   80354: fe 5f 02 a9  	stp	x30, x23, [sp, #32]
   80358: f6 57 03 a9  	stp	x22, x21, [sp, #48]
   8035c: f4 4f 04 a9  	stp	x20, x19, [sp, #64]
   80360: 35 58 40 a9  	ldp	x21, x22, [x1]
   80364: f4 03 00 aa  	mov	x20, x0
   80368: e0 03 01 aa  	mov	x0, x1
   8036c: 37 30 40 b9  	ldr	w23, [x1, #48]
   80370: f3 03 01 aa  	mov	x19, x1
   80374: c1 0a 00 94  	bl	0x82e78 <_ZN4core3fmt9Formatter9alternate17h5a07b4bd7e02e2b8E>
   80378: e8 03 17 2a  	mov	w8, w23
   8037c: 40 01 00 36  	tbz	w0, #0, 0x803a4 <_ZN54_$LT$$BP$const$u20$T$u20$as$u20$core..fmt..Pointer$GT$3fmt17h9106aecea6dc8428E+0x54>
   80380: e8 02 1d 32  	orr	w8, w23, #0x8
   80384: 15 01 00 b5  	cbnz	x21, 0x803a4 <_ZN54_$LT$$BP$const$u20$T$u20$as$u20$core..fmt..Pointer$GT$3fmt17h9106aecea6dc8428E+0x54>
   80388: 29 00 00 b0  	adrp	x9, 0x85000 <_ZN54_$LT$$BP$const$u20$T$u20$as$u20$core..fmt..Pointer$GT$3fmt17h9106aecea6dc8428E+0x4c>
   8038c: 20 01 c0 3d  	ldr	q0, [x9]
   80390: e0 03 80 3d  	str	q0, [sp]
   80394: e9 07 40 f9  	ldr	x9, [sp, #8]
   80398: 69 06 00 f9  	str	x9, [x19, #8]
   8039c: e9 03 40 f9  	ldr	x9, [sp]
   803a0: 69 02 00 f9  	str	x9, [x19]
   803a4: 89 02 40 f9  	ldr	x9, [x20]
   803a8: 08 01 1e 32  	orr	w8, w8, #0x4
   803ac: e0 63 00 91  	add	x0, sp, #24
   803b0: e1 03 13 aa  	mov	x1, x19
   803b4: 68 32 00 b9  	str	w8, [x19, #48]
   803b8: e9 0f 00 f9  	str	x9, [sp, #24]
   803bc: 99 0d 00 94  	bl	0x83a20 <_ZN4core3fmt3num53_$LT$impl$u20$core..fmt..LowerHex$u20$for$u20$i64$GT$3fmt17h89727d655d417749E>
   803c0: 75 5a 00 a9  	stp	x21, x22, [x19]
   803c4: 77 32 00 b9  	str	w23, [x19, #48]
   803c8: f4 4f 44 a9  	ldp	x20, x19, [sp, #64]
   803cc: f6 57 43 a9  	ldp	x22, x21, [sp, #48]
   803d0: fe 5f 42 a9  	ldp	x30, x23, [sp, #32]
   803d4: ff 43 01 91  	add	sp, sp, #80
   803d8: c0 03 5f d6  	ret
   803dc: 00 00 00 00  	udf	#0

00000000000803e0 <_ZN12baremetal_pi4main17h21043854e4a71016E>:
   803e0: ff 83 02 d1  	sub	sp, sp, #160
   803e4: fe 5f 07 a9  	stp	x30, x23, [sp, #112]
   803e8: f6 57 08 a9  	stp	x22, x21, [sp, #128]
   803ec: f4 4f 09 a9  	stp	x20, x19, [sp, #144]
   803f0: c0 01 80 52  	mov	w0, #14
   803f4: 14 0d 8a 52  	mov	w20, #20584
   803f8: 34 e4 a7 72  	movk	w20, #16161, lsl #16
   803fc: 41 02 00 94  	bl	0x80d00 <_ZN12baremetal_pi4gpio4Gpio9configure17h4cba8c34a7a1e1eeE>
   80400: e0 01 80 52  	mov	w0, #15
   80404: 3f 02 00 94  	bl	0x80d00 <_ZN12baremetal_pi4gpio4Gpio9configure17h4cba8c34a7a1e1eeE>
   80408: 89 02 40 b9  	ldr	w9, [x20]
   8040c: c8 21 80 52  	mov	w8, #270
   80410: 6a 00 80 52  	mov	w10, #3
   80414: 09 3d 00 33  	bfxil	w9, w8, #0, #16
   80418: c8 12 80 52  	mov	w8, #150
   8041c: 89 02 00 b9  	str	w9, [x20]
   80420: 8a 42 1e b8  	stur	w10, [x20, #-28]
   80424: 1f 20 03 d5  	nop
   80428: 08 05 00 f1  	subs	x8, x8, #1
   8042c: c1 ff ff 54  	b.ne	0x80424 <_ZN12baremetal_pi4main17h21043854e4a71016E+0x44>
   80430: 68 00 80 52  	mov	w8, #3
   80434: 13 00 00 f0  	adrp	x19, 0x83000 <_ZN12baremetal_pi4main17h21043854e4a71016E+0x60>
   80438: 21 00 00 b0  	adrp	x1, 0x85000 <_ZN12baremetal_pi4main17h21043854e4a71016E+0x6c>
   8043c: f5 c3 00 91  	add	x21, sp, #48
   80440: 73 52 26 91  	add	x19, x19, #2452
   80444: f6 43 00 91  	add	x22, sp, #16
   80448: 88 82 1f b8  	stur	w8, [x20, #-8]
   8044c: e8 03 01 91  	add	x8, sp, #64
   80450: 49 42 38 d5  	mrs	x9, CurrentEL
   80454: 21 80 18 91  	add	x1, x1, #1568
   80458: e0 e3 00 91  	add	x0, sp, #56
   8045c: e2 03 01 91  	add	x2, sp, #64
   80460: e9 23 03 a9  	stp	x9, x8, [sp, #48]
   80464: 29 00 00 b0  	adrp	x9, 0x85000 <_ZN12baremetal_pi4main17h21043854e4a71016E+0x98>
   80468: 48 00 80 52  	mov	w8, #2
   8046c: 29 c1 0e 91  	add	x9, x9, #944
   80470: f5 4f 01 a9  	stp	x21, x19, [sp, #16]
   80474: f7 03 01 91  	add	x23, sp, #64
   80478: ff 7f 05 a9  	stp	xzr, xzr, [sp, #80]
   8047c: e9 23 04 a9  	stp	x9, x8, [sp, #64]
   80480: 28 00 80 52  	mov	w8, #1
   80484: f6 23 06 a9  	stp	x22, x8, [sp, #96]
   80488: 26 05 00 94  	bl	0x81920 <_ZN4core3fmt5write17h63775af3066fbce8E>
   8048c: 40 01 00 34  	cbz	w0, 0x804b4 <_ZN12baremetal_pi4main17h21043854e4a71016E+0xd4>
   80490: 20 00 00 b0  	adrp	x0, 0x85000 <_ZN12baremetal_pi4main17h21043854e4a71016E+0xc4>
   80494: 22 00 00 b0  	adrp	x2, 0x85000 <_ZN12baremetal_pi4main17h21043854e4a71016E+0xc8>
   80498: 23 00 00 b0  	adrp	x3, 0x85000 <_ZN12baremetal_pi4main17h21043854e4a71016E+0xcc>
   8049c: 00 20 1b 91  	add	x0, x0, #1736
   804a0: 42 40 0f 91  	add	x2, x2, #976
   804a4: 63 c0 0f 91  	add	x3, x3, #1008
   804a8: e1 03 01 91  	add	x1, sp, #64
   804ac: ad 05 00 94  	bl	0x81b60 <_ZN4core6result13unwrap_failed17he5d63f92106ab51dE>
   804b0: 20 00 20 d4  	brk	#0x1
   804b4: 08 e0 3b d5  	mrs	x8, CNTFRQ_EL0
   804b8: 29 00 00 b0  	adrp	x9, 0x85000 <_ZN12baremetal_pi4main17h21043854e4a71016E+0xec>
   804bc: e8 5f 03 a9  	stp	x8, x23, [sp, #48]
   804c0: 48 00 80 52  	mov	w8, #2
   804c4: 29 21 10 91  	add	x9, x9, #1032
   804c8: 14 00 00 90  	adrp	x20, 0x80000 <_ZN12baremetal_pi4main17h21043854e4a71016E+0xe8>
   804cc: 21 00 00 b0  	adrp	x1, 0x85000 <_ZN12baremetal_pi4main17h21043854e4a71016E+0x100>
   804d0: 94 62 26 91  	add	x20, x20, #2456
   804d4: 21 80 18 91  	add	x1, x1, #1568
   804d8: e0 e3 00 91  	add	x0, sp, #56
   804dc: e9 23 04 a9  	stp	x9, x8, [sp, #64]
   804e0: 28 00 80 52  	mov	w8, #1
   804e4: e2 03 01 91  	add	x2, sp, #64
   804e8: f5 53 01 a9  	stp	x21, x20, [sp, #16]
   804ec: ff 7f 05 a9  	stp	xzr, xzr, [sp, #80]
   804f0: f5 03 01 91  	add	x21, sp, #64
   804f4: f6 23 06 a9  	stp	x22, x8, [sp, #96]
   804f8: 0a 05 00 94  	bl	0x81920 <_ZN4core3fmt5write17h63775af3066fbce8E>
   804fc: 40 01 00 34  	cbz	w0, 0x80524 <_ZN12baremetal_pi4main17h21043854e4a71016E+0x144>
   80500: 20 00 00 b0  	adrp	x0, 0x85000 <_ZN12baremetal_pi4main17h21043854e4a71016E+0x134>
   80504: 22 00 00 b0  	adrp	x2, 0x85000 <_ZN12baremetal_pi4main17h21043854e4a71016E+0x138>
   80508: 23 00 00 b0  	adrp	x3, 0x85000 <_ZN12baremetal_pi4main17h21043854e4a71016E+0x13c>
   8050c: 00 20 1b 91  	add	x0, x0, #1736
   80510: 42 40 0f 91  	add	x2, x2, #976
   80514: 63 a0 10 91  	add	x3, x3, #1064
   80518: e1 03 01 91  	add	x1, sp, #64
   8051c: 91 05 00 94  	bl	0x81b60 <_ZN4core6result13unwrap_failed17he5d63f92106ab51dE>
   80520: 20 00 20 d4  	brk	#0x1
   80524: 48 e0 3b d5  	mrs	x8, CNTVCT_EL0
   80528: 29 00 00 b0  	adrp	x9, 0x85000 <_ZN12baremetal_pi4main17h21043854e4a71016E+0x15c>
   8052c: e8 57 03 a9  	stp	x8, x21, [sp, #48]
   80530: 48 00 80 52  	mov	w8, #2
   80534: 29 01 11 91  	add	x9, x9, #1088
   80538: 21 00 00 b0  	adrp	x1, 0x85000 <_ZN12baremetal_pi4main17h21043854e4a71016E+0x16c>
   8053c: f6 c3 00 91  	add	x22, sp, #48
   80540: f5 43 00 91  	add	x21, sp, #16
   80544: 21 80 18 91  	add	x1, x1, #1568
   80548: e0 e3 00 91  	add	x0, sp, #56
   8054c: e9 23 04 a9  	stp	x9, x8, [sp, #64]
   80550: 28 00 80 52  	mov	w8, #1
   80554: e2 03 01 91  	add	x2, sp, #64
   80558: f6 53 01 a9  	stp	x22, x20, [sp, #16]
   8055c: ff 7f 05 a9  	stp	xzr, xzr, [sp, #80]
   80560: f7 03 01 91  	add	x23, sp, #64
   80564: f5 23 06 a9  	stp	x21, x8, [sp, #96]
   80568: ee 04 00 94  	bl	0x81920 <_ZN4core3fmt5write17h63775af3066fbce8E>
   8056c: 40 01 00 34  	cbz	w0, 0x80594 <_ZN12baremetal_pi4main17h21043854e4a71016E+0x1b4>
   80570: 20 00 00 b0  	adrp	x0, 0x85000 <_ZN12baremetal_pi4main17h21043854e4a71016E+0x1a4>
   80574: 22 00 00 b0  	adrp	x2, 0x85000 <_ZN12baremetal_pi4main17h21043854e4a71016E+0x1a8>
   80578: 23 00 00 b0  	adrp	x3, 0x85000 <_ZN12baremetal_pi4main17h21043854e4a71016E+0x1ac>
   8057c: 00 20 1b 91  	add	x0, x0, #1736
   80580: 42 40 0f 91  	add	x2, x2, #976
   80584: 63 80 11 91  	add	x3, x3, #1120
   80588: e1 03 01 91  	add	x1, sp, #64
   8058c: 75 05 00 94  	bl	0x81b60 <_ZN4core6result13unwrap_failed17he5d63f92106ab51dE>
   80590: 20 00 20 d4  	brk	#0x1
   80594: 08 42 38 d5  	mrs	x8, SPSel
   80598: 29 00 00 b0  	adrp	x9, 0x85000 <_ZN12baremetal_pi4main17h21043854e4a71016E+0x1cc>
   8059c: e8 5f 03 a9  	stp	x8, x23, [sp, #48]
   805a0: 48 00 80 52  	mov	w8, #2
   805a4: 29 e1 11 91  	add	x9, x9, #1144
   805a8: 21 00 00 b0  	adrp	x1, 0x85000 <_ZN12baremetal_pi4main17h21043854e4a71016E+0x1dc>
   805ac: 21 80 18 91  	add	x1, x1, #1568
   805b0: e0 e3 00 91  	add	x0, sp, #56
   805b4: e2 03 01 91  	add	x2, sp, #64
   805b8: f6 53 01 a9  	stp	x22, x20, [sp, #16]
   805bc: e9 23 04 a9  	stp	x9, x8, [sp, #64]
   805c0: 28 00 80 52  	mov	w8, #1
   805c4: ff 7f 05 a9  	stp	xzr, xzr, [sp, #80]
   805c8: f4 03 01 91  	add	x20, sp, #64
   805cc: f5 23 06 a9  	stp	x21, x8, [sp, #96]
   805d0: d4 04 00 94  	bl	0x81920 <_ZN4core3fmt5write17h63775af3066fbce8E>
   805d4: 40 01 00 34  	cbz	w0, 0x805fc <_ZN12baremetal_pi4main17h21043854e4a71016E+0x21c>
   805d8: 20 00 00 b0  	adrp	x0, 0x85000 <_ZN12baremetal_pi4main17h21043854e4a71016E+0x20c>
   805dc: 22 00 00 b0  	adrp	x2, 0x85000 <_ZN12baremetal_pi4main17h21043854e4a71016E+0x210>
   805e0: 23 00 00 b0  	adrp	x3, 0x85000 <_ZN12baremetal_pi4main17h21043854e4a71016E+0x214>
   805e4: 00 20 1b 91  	add	x0, x0, #1736
   805e8: 42 40 0f 91  	add	x2, x2, #976
   805ec: 63 60 12 91  	add	x3, x3, #1176
   805f0: e1 03 01 91  	add	x1, sp, #64
   805f4: 5b 05 00 94  	bl	0x81b60 <_ZN4core6result13unwrap_failed17he5d63f92106ab51dE>
   805f8: 20 00 20 d4  	brk	#0x1
   805fc: 28 42 3b d5  	mrs	x8, DAIF
   80600: 29 00 00 b0  	adrp	x9, 0x85000 <_ZN12baremetal_pi4main17h21043854e4a71016E+0x234>
   80604: e8 53 03 a9  	stp	x8, x20, [sp, #48]
   80608: 48 00 80 52  	mov	w8, #2
   8060c: 29 c1 12 91  	add	x9, x9, #1200
   80610: 21 00 00 b0  	adrp	x1, 0x85000 <_ZN12baremetal_pi4main17h21043854e4a71016E+0x244>
   80614: f6 c3 00 91  	add	x22, sp, #48
   80618: f5 43 00 91  	add	x21, sp, #16
   8061c: 21 80 18 91  	add	x1, x1, #1568
   80620: e0 e3 00 91  	add	x0, sp, #56
   80624: e9 23 04 a9  	stp	x9, x8, [sp, #64]
   80628: 28 00 80 52  	mov	w8, #1
   8062c: e2 03 01 91  	add	x2, sp, #64
   80630: f6 4f 01 a9  	stp	x22, x19, [sp, #16]
   80634: ff 7f 05 a9  	stp	xzr, xzr, [sp, #80]
   80638: f7 03 01 91  	add	x23, sp, #64
   8063c: f5 23 06 a9  	stp	x21, x8, [sp, #96]
   80640: b8 04 00 94  	bl	0x81920 <_ZN4core3fmt5write17h63775af3066fbce8E>
   80644: 40 01 00 34  	cbz	w0, 0x8066c <_ZN12baremetal_pi4main17h21043854e4a71016E+0x28c>
   80648: 20 00 00 b0  	adrp	x0, 0x85000 <_ZN12baremetal_pi4main17h21043854e4a71016E+0x27c>
   8064c: 22 00 00 b0  	adrp	x2, 0x85000 <_ZN12baremetal_pi4main17h21043854e4a71016E+0x280>
   80650: 23 00 00 b0  	adrp	x3, 0x85000 <_ZN12baremetal_pi4main17h21043854e4a71016E+0x284>
   80654: 00 20 1b 91  	add	x0, x0, #1736
   80658: 42 40 0f 91  	add	x2, x2, #976
   8065c: 63 40 13 91  	add	x3, x3, #1232
   80660: e1 03 01 91  	add	x1, sp, #64
   80664: 3f 05 00 94  	bl	0x81b60 <_ZN4core6result13unwrap_failed17he5d63f92106ab51dE>
   80668: 20 00 20 d4  	brk	#0x1
   8066c: 28 c0 3e d5  	mrs	x8, RVBAR_EL3
   80670: 29 00 00 b0  	adrp	x9, 0x85000 <_ZN12baremetal_pi4main17h21043854e4a71016E+0x2a4>
   80674: e8 5f 03 a9  	stp	x8, x23, [sp, #48]
   80678: 48 00 80 52  	mov	w8, #2
   8067c: 29 a1 13 91  	add	x9, x9, #1256
   80680: 14 00 00 90  	adrp	x20, 0x80000 <_ZN12baremetal_pi4main17h21043854e4a71016E+0x2a0>
   80684: 21 00 00 b0  	adrp	x1, 0x85000 <_ZN12baremetal_pi4main17h21043854e4a71016E+0x2b8>
   80688: 94 42 0d 91  	add	x20, x20, #848
   8068c: 21 80 18 91  	add	x1, x1, #1568
   80690: e0 e3 00 91  	add	x0, sp, #56
   80694: e9 23 04 a9  	stp	x9, x8, [sp, #64]
   80698: 28 00 80 52  	mov	w8, #1
   8069c: e2 03 01 91  	add	x2, sp, #64
   806a0: f6 53 01 a9  	stp	x22, x20, [sp, #16]
   806a4: ff 7f 05 a9  	stp	xzr, xzr, [sp, #80]
   806a8: f5 23 06 a9  	stp	x21, x8, [sp, #96]
   806ac: f5 03 01 91  	add	x21, sp, #64
   806b0: 9c 04 00 94  	bl	0x81920 <_ZN4core3fmt5write17h63775af3066fbce8E>
   806b4: 40 01 00 34  	cbz	w0, 0x806dc <_ZN12baremetal_pi4main17h21043854e4a71016E+0x2fc>
   806b8: 20 00 00 b0  	adrp	x0, 0x85000 <_ZN12baremetal_pi4main17h21043854e4a71016E+0x2ec>
   806bc: 22 00 00 b0  	adrp	x2, 0x85000 <_ZN12baremetal_pi4main17h21043854e4a71016E+0x2f0>
   806c0: 23 00 00 b0  	adrp	x3, 0x85000 <_ZN12baremetal_pi4main17h21043854e4a71016E+0x2f4>
   806c4: 00 20 1b 91  	add	x0, x0, #1736
   806c8: 42 40 0f 91  	add	x2, x2, #976
   806cc: 63 20 14 91  	add	x3, x3, #1288
   806d0: e1 03 01 91  	add	x1, sp, #64
   806d4: 23 05 00 94  	bl	0x81b60 <_ZN4core6result13unwrap_failed17he5d63f92106ab51dE>
   806d8: 20 00 20 d4  	brk	#0x1
   806dc: 28 00 00 90  	adrp	x8, 0x84000 <_ZN12baremetal_pi4main17h21043854e4a71016E+0x30c>
   806e0: e9 03 00 91  	mov	x9, sp
   806e4: 08 01 20 91  	add	x8, x8, #2048
   806e8: 21 00 00 b0  	adrp	x1, 0x85000 <_ZN12baremetal_pi4main17h21043854e4a71016E+0x31c>
   806ec: 21 80 18 91  	add	x1, x1, #1568
   806f0: e0 e3 00 91  	add	x0, sp, #56
   806f4: e9 53 01 a9  	stp	x9, x20, [sp, #16]
   806f8: 29 00 00 b0  	adrp	x9, 0x85000 <_ZN12baremetal_pi4main17h21043854e4a71016E+0x32c>
   806fc: e8 03 00 f9  	str	x8, [sp]
   80700: 48 00 80 52  	mov	w8, #2
   80704: 29 c1 0a 91  	add	x9, x9, #688
   80708: e2 03 01 91  	add	x2, sp, #64
   8070c: e8 ff 04 a9  	stp	x8, xzr, [sp, #72]
   80710: e8 43 00 91  	add	x8, sp, #16
   80714: f5 a7 03 a9  	stp	x21, x9, [sp, #56]
   80718: 29 00 80 52  	mov	w9, #1
   8071c: ff a3 05 a9  	stp	xzr, x8, [sp, #88]
   80720: e9 37 00 f9  	str	x9, [sp, #104]
   80724: 7f 04 00 94  	bl	0x81920 <_ZN4core3fmt5write17h63775af3066fbce8E>
   80728: 40 01 00 34  	cbz	w0, 0x80750 <_ZN12baremetal_pi4main17h21043854e4a71016E+0x370>
   8072c: 20 00 00 b0  	adrp	x0, 0x85000 <_ZN12baremetal_pi4main17h21043854e4a71016E+0x360>
   80730: 22 00 00 b0  	adrp	x2, 0x85000 <_ZN12baremetal_pi4main17h21043854e4a71016E+0x364>
   80734: 23 00 00 b0  	adrp	x3, 0x85000 <_ZN12baremetal_pi4main17h21043854e4a71016E+0x368>
   80738: 00 20 1b 91  	add	x0, x0, #1736
   8073c: 42 40 02 91  	add	x2, x2, #144
   80740: 63 40 0b 91  	add	x3, x3, #720
   80744: e1 03 01 91  	add	x1, sp, #64
   80748: 06 05 00 94  	bl	0x81b60 <_ZN4core6result13unwrap_failed17he5d63f92106ab51dE>
   8074c: 20 00 20 d4  	brk	#0x1
   80750: e8 03 40 f9  	ldr	x8, [sp]
   80754: 09 29 40 f2  	ands	x9, x8, #0x7ff
   80758: e9 07 00 f9  	str	x9, [sp, #8]
   8075c: 41 03 00 54  	b.ne	0x807c4 <_ZN12baremetal_pi4main17h21043854e4a71016E+0x3e4>
   80760: e8 03 01 91  	add	x8, sp, #64
   80764: 29 00 00 b0  	adrp	x9, 0x85000 <_ZN12baremetal_pi4main17h21043854e4a71016E+0x398>
   80768: 21 00 00 b0  	adrp	x1, 0x85000 <_ZN12baremetal_pi4main17h21043854e4a71016E+0x39c>
   8076c: 29 21 0e 91  	add	x9, x9, #904
   80770: 2a 00 80 52  	mov	w10, #1
   80774: 21 80 18 91  	add	x1, x1, #1568
   80778: e8 0b 00 f9  	str	x8, [sp, #16]
   8077c: 28 00 00 b0  	adrp	x8, 0x85000 <_ZN12baremetal_pi4main17h21043854e4a71016E+0x3b0>
   80780: 08 c1 1d 91  	add	x8, x8, #1904
   80784: e0 43 00 91  	add	x0, sp, #16
   80788: e2 03 01 91  	add	x2, sp, #64
   8078c: e9 2b 04 a9  	stp	x9, x10, [sp, #64]
   80790: ff 7f 05 a9  	stp	xzr, xzr, [sp, #80]
   80794: e8 7f 06 a9  	stp	x8, xzr, [sp, #96]
   80798: 62 04 00 94  	bl	0x81920 <_ZN4core3fmt5write17h63775af3066fbce8E>
   8079c: 00 05 00 34  	cbz	w0, 0x8083c <_ZN12baremetal_pi4main17h21043854e4a71016E+0x45c>
   807a0: 20 00 00 b0  	adrp	x0, 0x85000 <_ZN12baremetal_pi4main17h21043854e4a71016E+0x3d4>
   807a4: 22 00 00 b0  	adrp	x2, 0x85000 <_ZN12baremetal_pi4main17h21043854e4a71016E+0x3d8>
   807a8: 23 00 00 b0  	adrp	x3, 0x85000 <_ZN12baremetal_pi4main17h21043854e4a71016E+0x3dc>
   807ac: 00 20 1b 91  	add	x0, x0, #1736
   807b0: 42 40 02 91  	add	x2, x2, #144
   807b4: 63 60 0e 91  	add	x3, x3, #920
   807b8: e1 03 01 91  	add	x1, sp, #64
   807bc: e9 04 00 94  	bl	0x81b60 <_ZN4core6result13unwrap_failed17he5d63f92106ab51dE>
   807c0: 20 00 20 d4  	brk	#0x1
   807c4: e9 c3 00 91  	add	x9, sp, #48
   807c8: f3 a3 02 a9  	stp	x19, x8, [sp, #40]
   807cc: e8 23 00 91  	add	x8, sp, #8
   807d0: 21 00 00 b0  	adrp	x1, 0x85000 <_ZN12baremetal_pi4main17h21043854e4a71016E+0x404>
   807d4: 21 80 18 91  	add	x1, x1, #1568
   807d8: e0 e3 00 91  	add	x0, sp, #56
   807dc: e9 53 01 a9  	stp	x9, x20, [sp, #16]
   807e0: e9 03 01 91  	add	x9, sp, #64
   807e4: e8 13 00 f9  	str	x8, [sp, #32]
   807e8: 68 00 80 52  	mov	w8, #3
   807ec: e2 03 01 91  	add	x2, sp, #64
   807f0: ff 7f 05 a9  	stp	xzr, xzr, [sp, #80]
   807f4: e9 1f 00 f9  	str	x9, [sp, #56]
   807f8: 29 00 00 b0  	adrp	x9, 0x85000 <_ZN12baremetal_pi4main17h21043854e4a71016E+0x42c>
   807fc: 29 61 0c 91  	add	x9, x9, #792
   80800: e9 23 04 a9  	stp	x9, x8, [sp, #64]
   80804: e8 43 00 91  	add	x8, sp, #16
   80808: 49 00 80 52  	mov	w9, #2
   8080c: e8 27 06 a9  	stp	x8, x9, [sp, #96]
   80810: 44 04 00 94  	bl	0x81920 <_ZN4core3fmt5write17h63775af3066fbce8E>
   80814: 40 01 00 34  	cbz	w0, 0x8083c <_ZN12baremetal_pi4main17h21043854e4a71016E+0x45c>
   80818: 20 00 00 b0  	adrp	x0, 0x85000 <_ZN12baremetal_pi4main17h21043854e4a71016E+0x44c>
   8081c: 22 00 00 b0  	adrp	x2, 0x85000 <_ZN12baremetal_pi4main17h21043854e4a71016E+0x450>
   80820: 23 00 00 b0  	adrp	x3, 0x85000 <_ZN12baremetal_pi4main17h21043854e4a71016E+0x454>
   80824: 00 20 1b 91  	add	x0, x0, #1736
   80828: 42 40 02 91  	add	x2, x2, #144
   8082c: 63 20 0d 91  	add	x3, x3, #840
   80830: e1 03 01 91  	add	x1, sp, #64
   80834: cb 04 00 94  	bl	0x81b60 <_ZN4core6result13unwrap_failed17he5d63f92106ab51dE>
   80838: 20 00 20 d4  	brk	#0x1
   8083c: e9 03 40 f9  	ldr	x9, [sp]
   80840: 09 c0 1e d5  	msr	VBAR_EL3, x9
   80844: 09 c0 1c d5  	msr	VBAR_EL2, x9
   80848: 09 c0 18 d5  	msr	VBAR_EL1, x9
   8084c: e9 03 01 91  	add	x9, sp, #64
   80850: e8 03 1f 2a  	mov	w8, wzr
   80854: 28 42 1b d5  	msr	DAIF, x8
   80858: 28 42 3b d5  	mrs	x8, DAIF
   8085c: 21 00 00 b0  	adrp	x1, 0x85000 <_ZN12baremetal_pi4main17h21043854e4a71016E+0x490>
   80860: ea c3 00 91  	add	x10, sp, #48
   80864: e8 27 03 a9  	stp	x8, x9, [sp, #48]
   80868: 28 00 00 b0  	adrp	x8, 0x85000 <_ZN12baremetal_pi4main17h21043854e4a71016E+0x49c>
   8086c: 49 00 80 52  	mov	w9, #2
   80870: 08 81 14 91  	add	x8, x8, #1312
   80874: 21 80 18 91  	add	x1, x1, #1568
   80878: e0 e3 00 91  	add	x0, sp, #56
   8087c: e2 03 01 91  	add	x2, sp, #64
   80880: ea 4f 01 a9  	stp	x10, x19, [sp, #16]
   80884: e8 27 04 a9  	stp	x8, x9, [sp, #64]
   80888: e8 43 00 91  	add	x8, sp, #16
   8088c: 29 00 80 52  	mov	w9, #1
   80890: ff 7f 05 a9  	stp	xzr, xzr, [sp, #80]
   80894: f4 03 01 91  	add	x20, sp, #64
   80898: e8 27 06 a9  	stp	x8, x9, [sp, #96]
   8089c: 21 04 00 94  	bl	0x81920 <_ZN4core3fmt5write17h63775af3066fbce8E>
   808a0: 40 01 00 34  	cbz	w0, 0x808c8 <_ZN12baremetal_pi4main17h21043854e4a71016E+0x4e8>
   808a4: 20 00 00 b0  	adrp	x0, 0x85000 <_ZN12baremetal_pi4main17h21043854e4a71016E+0x4d8>
   808a8: 22 00 00 b0  	adrp	x2, 0x85000 <_ZN12baremetal_pi4main17h21043854e4a71016E+0x4dc>
   808ac: 23 00 00 b0  	adrp	x3, 0x85000 <_ZN12baremetal_pi4main17h21043854e4a71016E+0x4e0>
   808b0: 00 20 1b 91  	add	x0, x0, #1736
   808b4: 42 40 0f 91  	add	x2, x2, #976
   808b8: 63 00 15 91  	add	x3, x3, #1344
   808bc: e1 03 01 91  	add	x1, sp, #64
   808c0: a8 04 00 94  	bl	0x81b60 <_ZN4core6result13unwrap_failed17he5d63f92106ab51dE>
   808c4: 20 00 20 d4  	brk	#0x1
   808c8: 13 01 80 52  	mov	w19, #8
   808cc: 29 00 00 b0  	adrp	x9, 0x85000 <_ZN12baremetal_pi4main17h21043854e4a71016E+0x500>
   808d0: 13 e4 a7 72  	movk	w19, #16160, lsl #16
   808d4: 2a 00 00 b0  	adrp	x10, 0x85000 <_ZN12baremetal_pi4main17h21043854e4a71016E+0x508>
   808d8: 21 00 00 b0  	adrp	x1, 0x85000 <_ZN12baremetal_pi4main17h21043854e4a71016E+0x50c>
   808dc: 29 61 15 91  	add	x9, x9, #1368
   808e0: 4a c1 1d 91  	add	x10, x10, #1904
   808e4: 2b 00 80 52  	mov	w11, #1
   808e8: 68 02 40 b9  	ldr	w8, [x19]
   808ec: 21 80 18 91  	add	x1, x1, #1568
   808f0: e0 43 00 91  	add	x0, sp, #16
   808f4: e2 03 01 91  	add	x2, sp, #64
   808f8: 08 71 02 12  	and	w8, w8, #0xc7ffffff
   808fc: 08 01 05 32  	orr	w8, w8, #0x8000000
   80900: 68 02 00 b9  	str	w8, [x19]
   80904: f4 0b 00 f9  	str	x20, [sp, #16]
   80908: e9 2f 04 a9  	stp	x9, x11, [sp, #64]
   8090c: ff 7f 05 a9  	stp	xzr, xzr, [sp, #80]
   80910: ea 7f 06 a9  	stp	x10, xzr, [sp, #96]
   80914: 03 04 00 94  	bl	0x81920 <_ZN4core3fmt5write17h63775af3066fbce8E>
   80918: 40 01 00 36  	tbz	w0, #0, 0x80940 <_ZN12baremetal_pi4main17h21043854e4a71016E+0x560>
   8091c: 20 00 00 b0  	adrp	x0, 0x85000 <_ZN12baremetal_pi4main17h21043854e4a71016E+0x550>
   80920: 22 00 00 b0  	adrp	x2, 0x85000 <_ZN12baremetal_pi4main17h21043854e4a71016E+0x554>
   80924: 23 00 00 b0  	adrp	x3, 0x85000 <_ZN12baremetal_pi4main17h21043854e4a71016E+0x558>
   80928: 00 20 1b 91  	add	x0, x0, #1736
   8092c: 42 40 0f 91  	add	x2, x2, #976
   80930: 63 40 16 91  	add	x3, x3, #1424
   80934: e1 03 01 91  	add	x1, sp, #64
   80938: 8a 04 00 94  	bl	0x81b60 <_ZN4core6result13unwrap_failed17he5d63f92106ab51dE>
   8093c: 20 00 20 d4  	brk	#0x1
   80940: 08 48 88 52  	mov	w8, #16960
   80944: 09 00 a4 52  	mov	w9, #536870912
   80948: e8 01 a0 72  	movk	w8, #15, lsl #16
   8094c: 69 16 00 b9  	str	w9, [x19, #20]
   80950: 1f 20 03 d5  	nop
   80954: 08 05 00 f1  	subs	x8, x8, #1
   80958: c1 ff ff 54  	b.ne	0x80950 <_ZN12baremetal_pi4main17h21043854e4a71016E+0x570>
   8095c: 08 20 81 52  	mov	w8, #2304
   80960: 09 00 a4 52  	mov	w9, #536870912
   80964: a8 07 a0 72  	movk	w8, #61, lsl #16
   80968: 69 22 00 b9  	str	w9, [x19, #32]
   8096c: 1f 20 03 d5  	nop
   80970: 08 05 00 f1  	subs	x8, x8, #1
   80974: c1 ff ff 54  	b.ne	0x8096c <_ZN12baremetal_pi4main17h21043854e4a71016E+0x58c>
   80978: 20 00 00 b0  	adrp	x0, 0x85000 <_ZN12baremetal_pi4main17h21043854e4a71016E+0x5ac>
   8097c: 22 00 00 b0  	adrp	x2, 0x85000 <_ZN12baremetal_pi4main17h21043854e4a71016E+0x5b0>
   80980: 00 a0 15 91  	add	x0, x0, #1384
   80984: 42 e0 15 91  	add	x2, x2, #1400
   80988: e1 01 80 52  	mov	w1, #15
   8098c: 43 05 00 d4  	smc	#0x2a
   80990: cb 02 00 94  	bl	0x814bc <_ZN4core9panicking5panic17h0d86cd7d69f331f6E>
   80994: 20 00 20 d4  	brk	#0x1

0000000000080998 <_ZN4core3fmt3num50_$LT$impl$u20$core..fmt..Debug$u20$for$u20$u64$GT$3fmt17hc6ba90be7ac70288E>:
   80998: fe 0f 1e f8  	str	x30, [sp, #-32]!
   8099c: f4 4f 01 a9  	stp	x20, x19, [sp, #16]
   809a0: f4 03 00 aa  	mov	x20, x0
   809a4: e0 03 01 aa  	mov	x0, x1
   809a8: f3 03 01 aa  	mov	x19, x1
   809ac: 36 09 00 94  	bl	0x82e84 <_ZN4core3fmt9Formatter15debug_lower_hex17h0b7f072683990bf5E>
   809b0: c0 00 00 36  	tbz	w0, #0, 0x809c8 <_ZN4core3fmt3num50_$LT$impl$u20$core..fmt..Debug$u20$for$u20$u64$GT$3fmt17hc6ba90be7ac70288E+0x30>
   809b4: e0 03 14 aa  	mov	x0, x20
   809b8: e1 03 13 aa  	mov	x1, x19
   809bc: f4 4f 41 a9  	ldp	x20, x19, [sp, #16]
   809c0: fe 07 42 f8  	ldr	x30, [sp], #32
   809c4: 17 0c 00 14  	b	0x83a20 <_ZN4core3fmt3num53_$LT$impl$u20$core..fmt..LowerHex$u20$for$u20$i64$GT$3fmt17h89727d655d417749E>
   809c8: e0 03 13 aa  	mov	x0, x19
   809cc: 31 09 00 94  	bl	0x82e90 <_ZN4core3fmt9Formatter15debug_upper_hex17hc999bac86c60dde4E>
   809d0: c0 00 00 36  	tbz	w0, #0, 0x809e8 <_ZN4core3fmt3num50_$LT$impl$u20$core..fmt..Debug$u20$for$u20$u64$GT$3fmt17hc6ba90be7ac70288E+0x50>
   809d4: e0 03 14 aa  	mov	x0, x20
   809d8: e1 03 13 aa  	mov	x1, x19
   809dc: f4 4f 41 a9  	ldp	x20, x19, [sp, #16]
   809e0: fe 07 42 f8  	ldr	x30, [sp], #32
   809e4: 36 0c 00 14  	b	0x83abc <_ZN4core3fmt3num53_$LT$impl$u20$core..fmt..UpperHex$u20$for$u20$i64$GT$3fmt17h0da107dab2280b2bE>
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
   80afc: 7e 0c 00 94  	bl	0x83cf4 <memcpy>
   80b00: 21 00 00 b0  	adrp	x1, 0x85000 <_ZN50_$LT$$RF$mut$u20$W$u20$as$u20$core..fmt..Write$GT$9write_fmt17h4cb58af88345ff79E+0x2c>
   80b04: e0 e3 00 91  	add	x0, sp, #56
   80b08: 21 80 18 91  	add	x1, x1, #1568
   80b0c: e2 03 00 91  	mov	x2, sp
   80b10: 84 03 00 94  	bl	0x81920 <_ZN4core3fmt5write17h63775af3066fbce8E>
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
   80b48: ad 41 19 91  	add	x13, x13, #1616
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
   80cdc: 42 60 19 91  	add	x2, x2, #1624
   80ce0: e5 01 00 94  	bl	0x81474 <_ZN4core5slice5index24slice_end_index_len_fail17hfcb16d41a5d796d5E>
   80ce4: 20 00 20 d4  	brk	#0x1
   80ce8: 22 00 00 b0  	adrp	x2, 0x85000 <_ZN62_$LT$baremetal_pi..uart..Uart1$u20$as$u20$core..fmt..Write$GT$9write_str17h3ed99d62375e3953E+0x1dc>
   80cec: e1 03 09 aa  	mov	x1, x9
   80cf0: 42 60 19 91  	add	x2, x2, #1624
   80cf4: 89 03 00 94  	bl	0x81b18 <_ZN4core5slice5index22slice_index_order_fail17h806852bf6aeb5b48E>
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
   80e24: 21 80 18 91  	add	x1, x1, #1568
   80e28: e0 63 00 91  	add	x0, sp, #24
   80e2c: 68 82 1f b8  	stur	w8, [x19, #-8]
   80e30: 08 00 00 90  	adrp	x8, 0x80000 <rust_begin_unwind+0x68>
   80e34: 08 41 3b 91  	add	x8, x8, #3792
   80e38: e2 83 00 91  	add	x2, sp, #32
   80e3c: e9 a3 00 a9  	stp	x9, x8, [sp, #8]
   80e40: 28 00 00 b0  	adrp	x8, 0x85000 <rust_begin_unwind+0x8c>
   80e44: 08 01 1a 91  	add	x8, x8, #1664
   80e48: 29 00 80 52  	mov	w9, #1
   80e4c: ea a3 01 a9  	stp	x10, x8, [sp, #24]
   80e50: 2a 00 00 b0  	adrp	x10, 0x85000 <rust_begin_unwind+0x9c>
   80e54: 4a 41 1a 91  	add	x10, x10, #1680
   80e58: e8 23 00 91  	add	x8, sp, #8
   80e5c: e9 27 00 f9  	str	x9, [sp, #72]
   80e60: e9 ab 02 a9  	stp	x9, x10, [sp, #40]
   80e64: e9 a3 03 a9  	stp	x9, x8, [sp, #56]
   80e68: ae 02 00 94  	bl	0x81920 <_ZN4core3fmt5write17h63775af3066fbce8E>
   80e6c: 60 00 00 35  	cbnz	w0, 0x80e78 <rust_begin_unwind+0xb0>
   80e70: 5f 20 03 d5  	wfe
   80e74: ff ff ff 17  	b	0x80e70 <rust_begin_unwind+0xa8>
   80e78: 20 00 00 b0  	adrp	x0, 0x85000 <rust_begin_unwind+0xc4>
   80e7c: 22 00 00 b0  	adrp	x2, 0x85000 <rust_begin_unwind+0xc8>
   80e80: 23 00 00 b0  	adrp	x3, 0x85000 <rust_begin_unwind+0xcc>
   80e84: 00 20 1b 91  	add	x0, x0, #1736
   80e88: 42 e0 1b 91  	add	x2, x2, #1784
   80e8c: 63 60 1c 91  	add	x3, x3, #1816
   80e90: e1 83 00 91  	add	x1, sp, #32
   80e94: 33 03 00 94  	bl	0x81b60 <_ZN4core6result13unwrap_failed17he5d63f92106ab51dE>
   80e98: 20 00 20 d4  	brk	#0x1
   80e9c: 00 00 00 00  	udf	#0

0000000000080ea0 <rust_entry>:
   80ea0: fe 0f 1f f8  	str	x30, [sp, #-16]!
   80ea4: 28 00 00 d0  	adrp	x8, 0x86000 <rust_entry+0x1c>
   80ea8: 20 00 00 d0  	adrp	x0, 0x86000 <rust_entry+0x20>
   80eac: 08 a1 1a 91  	add	x8, x8, #1704
   80eb0: 00 a0 1a 91  	add	x0, x0, #1704
   80eb4: 02 00 08 eb  	subs	x2, x0, x8
   80eb8: 60 00 00 54  	b.eq	0x80ec4 <rust_entry+0x24>
   80ebc: e1 03 1f 2a  	mov	w1, wzr
   80ec0: 60 0c 00 94  	bl	0x84040 <memset>
   80ec4: 47 fd ff 97  	bl	0x803e0 <_ZN12baremetal_pi4main17h21043854e4a71016E>
   80ec8: 20 00 20 d4  	brk	#0x1
   80ecc: 00 00 00 00  	udf	#0

0000000000080ed0 <_ZN42_$LT$$RF$T$u20$as$u20$core..fmt..Debug$GT$3fmt17h470510a8092c6ef2E>:
   80ed0: 00 00 40 f9  	ldr	x0, [x0]
   80ed4: b4 09 00 14  	b	0x835a4 <_ZN71_$LT$core..panic..panic_info..PanicInfo$u20$as$u20$core..fmt..Debug$GT$3fmt17ha3e0b3cc45a627c8E>

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
   80ef8: 6b 41 1d 91  	add	x11, x11, #1872
   80efc: 4c 00 80 52  	mov	w12, #2
   80f00: e8 27 04 a9  	stp	x8, x9, [sp, #64]
   80f04: e8 03 01 91  	add	x8, sp, #64
   80f08: e0 43 00 91  	add	x0, sp, #16
   80f0c: e1 03 02 aa  	mov	x1, x2
   80f10: ff 7f 02 a9  	stp	xzr, xzr, [sp, #32]
   80f14: ea 27 05 a9  	stp	x10, x9, [sp, #80]
   80f18: eb 33 01 a9  	stp	x11, x12, [sp, #16]
   80f1c: e8 33 03 a9  	stp	x8, x12, [sp, #48]
   80f20: 60 00 00 94  	bl	0x810a0 <_ZN4core9panicking9panic_fmt17h136e9995f1aed1cdE>
   80f24: 20 00 20 d4  	brk	#0x1

0000000000080f28 <_ZN4core3fmt3num3imp52_$LT$impl$u20$core..fmt..Display$u20$for$u20$u64$GT$3fmt17h3635720e402b4b05E>:
   80f28: ff 03 01 d1  	sub	sp, sp, #64
   80f2c: fe 1b 00 f9  	str	x30, [sp, #48]
   80f30: 0a 00 40 f9  	ldr	x10, [x0]
   80f34: e8 03 01 aa  	mov	x8, x1
   80f38: 49 fd 44 d3  	lsr	x9, x10, #4
   80f3c: 3f c5 09 f1  	cmp	x9, #625
   80f40: 29 00 00 b0  	adrp	x9, 0x85000 <_ZN4core3fmt3num3imp52_$LT$impl$u20$core..fmt..Display$u20$for$u20$u64$GT$3fmt17h3635720e402b4b05E+0x2c>
   80f44: 29 09 20 91  	add	x9, x9, #2050
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
   81074: 22 00 00 90  	adrp	x2, 0x85000 <_ZN4core3fmt3num3imp52_$LT$impl$u20$core..fmt..Display$u20$for$u20$u64$GT$3fmt17h3635720e402b4b05E+0x15c>
   81078: 24 01 0b 8b  	add	x4, x9, x11
   8107c: 45 01 0b cb  	sub	x5, x10, x11
   81080: 42 c0 1d 91  	add	x2, x2, #1904
   81084: 21 00 80 52  	mov	w1, #1
   81088: e0 03 08 aa  	mov	x0, x8
   8108c: e3 03 1f aa  	mov	x3, xzr
   81090: 13 00 00 94  	bl	0x810dc <_ZN4core3fmt9Formatter12pad_integral17ha6f583ca7a70f44dE>
   81094: fe 1b 40 f9  	ldr	x30, [sp, #48]
   81098: ff 03 01 91  	add	sp, sp, #64
   8109c: c0 03 5f d6  	ret

00000000000810a0 <_ZN4core9panicking9panic_fmt17h136e9995f1aed1cdE>:
   810a0: 28 00 00 90  	adrp	x8, 0x85000 <_ZN4core9panicking9panic_fmt17h136e9995f1aed1cdE+0x10>
   810a4: 29 00 00 90  	adrp	x9, 0x85000 <_ZN4core9panicking9panic_fmt17h136e9995f1aed1cdE+0x14>
   810a8: 08 c1 1d 91  	add	x8, x8, #1904
   810ac: 29 c1 1d 91  	add	x9, x9, #1904
   810b0: e8 27 be a9  	stp	x8, x9, [sp, #-32]!
   810b4: e0 07 01 a9  	stp	x0, x1, [sp, #16]
   810b8: e0 03 00 91  	mov	x0, sp
   810bc: 43 ff ff 97  	bl	0x80dc8 <rust_begin_unwind>
   810c0: 20 00 20 d4  	brk	#0x1

00000000000810c4 <_ZN4core3ptr102drop_in_place$LT$$RF$core..iter..adapters..copied..Copied$LT$core..slice..iter..Iter$LT$u8$GT$$GT$$GT$17h4126b20262e0ab35E>:
   810c4: c0 03 5f d6  	ret

00000000000810c8 <_ZN36_$LT$T$u20$as$u20$core..any..Any$GT$7type_id17hf8fe02da2457d98aE>:
   810c8: a0 1c 91 d2  	mov	x0, #35045
   810cc: c0 03 b0 f2  	movk	x0, #32798, lsl #16
   810d0: a0 b2 d5 f2  	movk	x0, #44437, lsl #32
   810d4: 00 d2 e7 f2  	movk	x0, #16016, lsl #48
   810d8: c0 03 5f d6  	ret

00000000000810dc <_ZN4core3fmt9Formatter12pad_integral17ha6f583ca7a70f44dE>:
   810dc: fd 7b ba a9  	stp	x29, x30, [sp, #-96]!
   810e0: fc 6f 01 a9  	stp	x28, x27, [sp, #16]
   810e4: fa 67 02 a9  	stp	x26, x25, [sp, #32]
   810e8: f8 5f 03 a9  	stp	x24, x23, [sp, #48]
   810ec: f6 57 04 a9  	stp	x22, x21, [sp, #64]
   810f0: f4 4f 05 a9  	stp	x20, x19, [sp, #80]
   810f4: f3 03 05 aa  	mov	x19, x5
   810f8: f4 03 04 aa  	mov	x20, x4
   810fc: f6 03 03 aa  	mov	x22, x3
   81100: f7 03 02 aa  	mov	x23, x2
   81104: f5 03 00 aa  	mov	x21, x0
   81108: 01 02 00 34  	cbz	w1, 0x81148 <_ZN4core3fmt9Formatter12pad_integral17ha6f583ca7a70f44dE+0x6c>
   8110c: a8 32 40 b9  	ldr	w8, [x21, #48]
   81110: 69 05 80 52  	mov	w9, #43
   81114: 2a 02 a0 52  	mov	w10, #1114112
   81118: 0b 01 40 92  	and	x11, x8, #0x1
   8111c: 7f 01 00 71  	cmp	w11, #0
   81120: 58 01 89 1a  	csel	w24, w10, w9, eq
   81124: 69 01 13 8b  	add	x9, x11, x19
   81128: 88 01 10 36  	tbz	w8, #2, 0x81158 <_ZN4core3fmt9Formatter12pad_integral17ha6f583ca7a70f44dE+0x7c>
   8112c: eb 03 16 aa  	mov	x11, x22
   81130: 56 05 00 b4  	cbz	x22, 0x811d8 <_ZN4core3fmt9Formatter12pad_integral17ha6f583ca7a70f44dE+0xfc>
   81134: df 06 00 f1  	cmp	x22, #1
   81138: c1 01 00 54  	b.ne	0x81170 <_ZN4core3fmt9Formatter12pad_integral17ha6f583ca7a70f44dE+0x94>
   8113c: eb 03 1f aa  	mov	x11, xzr
   81140: ea 03 17 aa  	mov	x10, x23
   81144: 1e 00 00 14  	b	0x811bc <_ZN4core3fmt9Formatter12pad_integral17ha6f583ca7a70f44dE+0xe0>
   81148: a8 32 40 b9  	ldr	w8, [x21, #48]
   8114c: 69 06 00 91  	add	x9, x19, #1
   81150: b8 05 80 52  	mov	w24, #45
   81154: c8 fe 17 37  	tbnz	w8, #2, 0x8112c <_ZN4core3fmt9Formatter12pad_integral17ha6f583ca7a70f44dE+0x50>
   81158: f7 03 1f aa  	mov	x23, xzr
   8115c: f6 03 1f aa  	mov	x22, xzr
   81160: aa 02 40 f9  	ldr	x10, [x21]
   81164: 5f 05 00 f1  	cmp	x10, #1
   81168: 00 04 00 54  	b.eq	0x811e8 <_ZN4core3fmt9Formatter12pad_integral17ha6f583ca7a70f44dE+0x10c>
   8116c: 2c 00 00 14  	b	0x8121c <_ZN4core3fmt9Formatter12pad_integral17ha6f583ca7a70f44dE+0x140>
   81170: ca fa 7f 92  	and	x10, x22, #0xfffffffffffffffe
   81174: eb 03 1f aa  	mov	x11, xzr
   81178: ec 03 1f aa  	mov	x12, xzr
   8117c: ed 06 00 91  	add	x13, x23, #1
   81180: ee 03 0a aa  	mov	x14, x10
   81184: af f1 5f 38  	ldurb	w15, [x13, #-1]
   81188: b0 25 40 38  	ldrb	w16, [x13], #2
   8118c: ef 05 1a 12  	and	w15, w15, #0xc0
   81190: 10 06 1a 12  	and	w16, w16, #0xc0
   81194: ff 01 02 71  	cmp	w15, #128
   81198: 6b 05 8b 9a  	cinc	x11, x11, ne
   8119c: 1f 02 02 71  	cmp	w16, #128
   811a0: 8c 05 8c 9a  	cinc	x12, x12, ne
   811a4: ce 09 00 f1  	subs	x14, x14, #2
   811a8: e1 fe ff 54  	b.ne	0x81184 <_ZN4core3fmt9Formatter12pad_integral17ha6f583ca7a70f44dE+0xa8>
   811ac: 5f 01 16 eb  	cmp	x10, x22
   811b0: 8b 01 0b 8b  	add	x11, x12, x11
   811b4: 20 01 00 54  	b.eq	0x811d8 <_ZN4core3fmt9Formatter12pad_integral17ha6f583ca7a70f44dE+0xfc>
   811b8: ea 02 0a 8b  	add	x10, x23, x10
   811bc: ec 02 16 8b  	add	x12, x23, x22
   811c0: 4d 15 40 38  	ldrb	w13, [x10], #1
   811c4: ad 05 1a 12  	and	w13, w13, #0xc0
   811c8: bf 01 02 71  	cmp	w13, #128
   811cc: 6b 05 8b 9a  	cinc	x11, x11, ne
   811d0: 9f 01 0a eb  	cmp	x12, x10
   811d4: 61 ff ff 54  	b.ne	0x811c0 <_ZN4core3fmt9Formatter12pad_integral17ha6f583ca7a70f44dE+0xe4>
   811d8: 69 01 09 8b  	add	x9, x11, x9
   811dc: aa 02 40 f9  	ldr	x10, [x21]
   811e0: 5f 05 00 f1  	cmp	x10, #1
   811e4: c1 01 00 54  	b.ne	0x8121c <_ZN4core3fmt9Formatter12pad_integral17ha6f583ca7a70f44dE+0x140>
   811e8: aa 06 40 f9  	ldr	x10, [x21, #8]
   811ec: 5c 01 09 eb  	subs	x28, x10, x9
   811f0: 69 01 00 54  	b.ls	0x8121c <_ZN4core3fmt9Formatter12pad_integral17ha6f583ca7a70f44dE+0x140>
   811f4: 88 04 18 37  	tbnz	w8, #3, 0x81284 <_ZN4core3fmt9Formatter12pad_integral17ha6f583ca7a70f44dE+0x1a8>
   811f8: a8 e2 40 39  	ldrb	w8, [x21, #56]
   811fc: 1f 0d 00 71  	cmp	w8, #3
   81200: 08 15 9f 1a  	csinc	w8, w8, wzr, ne
   81204: 08 05 00 72  	ands	w8, w8, #0x3
   81208: a0 06 00 54  	b.eq	0x812dc <_ZN4core3fmt9Formatter12pad_integral17ha6f583ca7a70f44dE+0x200>
   8120c: 1f 05 00 71  	cmp	w8, #1
   81210: c1 06 00 54  	b.ne	0x812e8 <_ZN4core3fmt9Formatter12pad_integral17ha6f583ca7a70f44dE+0x20c>
   81214: fd 03 1f aa  	mov	x29, xzr
   81218: 37 00 00 14  	b	0x812f4 <_ZN4core3fmt9Formatter12pad_integral17ha6f583ca7a70f44dE+0x218>
   8121c: e0 03 15 aa  	mov	x0, x21
   81220: e1 03 18 2a  	mov	w1, w24
   81224: e2 03 17 aa  	mov	x2, x23
   81228: e3 03 16 aa  	mov	x3, x22
   8122c: 65 00 00 94  	bl	0x813c0 <_ZN4core3fmt9Formatter12pad_integral12write_prefix17h7a2809ec683865f4E>
   81230: 40 01 00 36  	tbz	w0, #0, 0x81258 <_ZN4core3fmt9Formatter12pad_integral17ha6f583ca7a70f44dE+0x17c>
   81234: 39 00 80 52  	mov	w25, #1
   81238: e0 03 19 2a  	mov	w0, w25
   8123c: f4 4f 45 a9  	ldp	x20, x19, [sp, #80]
   81240: f6 57 44 a9  	ldp	x22, x21, [sp, #64]
   81244: f8 5f 43 a9  	ldp	x24, x23, [sp, #48]
   81248: fa 67 42 a9  	ldp	x26, x25, [sp, #32]
   8124c: fc 6f 41 a9  	ldp	x28, x27, [sp, #16]
   81250: fd 7b c6 a8  	ldp	x29, x30, [sp], #96
   81254: c0 03 5f d6  	ret
   81258: a0 22 42 a9  	ldp	x0, x8, [x21, #32]
   8125c: e1 03 14 aa  	mov	x1, x20
   81260: e2 03 13 aa  	mov	x2, x19
   81264: f4 4f 45 a9  	ldp	x20, x19, [sp, #80]
   81268: 03 0d 40 f9  	ldr	x3, [x8, #24]
   8126c: f6 57 44 a9  	ldp	x22, x21, [sp, #64]
   81270: f8 5f 43 a9  	ldp	x24, x23, [sp, #48]
   81274: fa 67 42 a9  	ldp	x26, x25, [sp, #32]
   81278: fc 6f 41 a9  	ldp	x28, x27, [sp, #16]
   8127c: fd 7b c6 a8  	ldp	x29, x30, [sp], #96
   81280: 60 00 1f d6  	br	x3
   81284: ba 36 40 b9  	ldr	w26, [x21, #52]
   81288: bb e2 40 39  	ldrb	w27, [x21, #56]
   8128c: 08 06 80 52  	mov	w8, #48
   81290: 39 00 80 52  	mov	w25, #1
   81294: e0 03 15 aa  	mov	x0, x21
   81298: e1 03 18 2a  	mov	w1, w24
   8129c: e2 03 17 aa  	mov	x2, x23
   812a0: e3 03 16 aa  	mov	x3, x22
   812a4: a8 36 00 b9  	str	w8, [x21, #52]
   812a8: b9 e2 00 39  	strb	w25, [x21, #56]
   812ac: 45 00 00 94  	bl	0x813c0 <_ZN4core3fmt9Formatter12pad_integral12write_prefix17h7a2809ec683865f4E>
   812b0: 40 fc 07 37  	tbnz	w0, #0, 0x81238 <_ZN4core3fmt9Formatter12pad_integral17ha6f583ca7a70f44dE+0x15c>
   812b4: b6 5e 42 a9  	ldp	x22, x23, [x21, #32]
   812b8: 98 07 00 91  	add	x24, x28, #1
   812bc: 18 07 00 f1  	subs	x24, x24, #1
   812c0: 40 06 00 54  	b.eq	0x81388 <_ZN4core3fmt9Formatter12pad_integral17ha6f583ca7a70f44dE+0x2ac>
   812c4: e8 12 40 f9  	ldr	x8, [x23, #32]
   812c8: 01 06 80 52  	mov	w1, #48
   812cc: e0 03 16 aa  	mov	x0, x22
   812d0: 00 01 3f d6  	blr	x8
   812d4: 40 ff 07 36  	tbz	w0, #0, 0x812bc <_ZN4core3fmt9Formatter12pad_integral17ha6f583ca7a70f44dE+0x1e0>
   812d8: d7 ff ff 17  	b	0x81234 <_ZN4core3fmt9Formatter12pad_integral17ha6f583ca7a70f44dE+0x158>
   812dc: fd 03 1c aa  	mov	x29, x28
   812e0: fc 03 1f aa  	mov	x28, xzr
   812e4: 04 00 00 14  	b	0x812f4 <_ZN4core3fmt9Formatter12pad_integral17ha6f583ca7a70f44dE+0x218>
   812e8: 88 07 00 91  	add	x8, x28, #1
   812ec: 9c ff 41 d3  	lsr	x28, x28, #1
   812f0: 1d fd 41 d3  	lsr	x29, x8, #1
   812f4: b9 6e 42 a9  	ldp	x25, x27, [x21, #32]
   812f8: ba 36 40 b9  	ldr	w26, [x21, #52]
   812fc: 9c 07 00 91  	add	x28, x28, #1
   81300: 9c 07 00 f1  	subs	x28, x28, #1
   81304: e0 00 00 54  	b.eq	0x81320 <_ZN4core3fmt9Formatter12pad_integral17ha6f583ca7a70f44dE+0x244>
   81308: 68 13 40 f9  	ldr	x8, [x27, #32]
   8130c: e0 03 19 aa  	mov	x0, x25
   81310: e1 03 1a 2a  	mov	w1, w26
   81314: 00 01 3f d6  	blr	x8
   81318: 40 ff 07 36  	tbz	w0, #0, 0x81300 <_ZN4core3fmt9Formatter12pad_integral17ha6f583ca7a70f44dE+0x224>
   8131c: c6 ff ff 17  	b	0x81234 <_ZN4core3fmt9Formatter12pad_integral17ha6f583ca7a70f44dE+0x158>
   81320: 5f 43 44 71  	cmp	w26, #272, lsl #12
   81324: fc 03 9d 9a  	csel	x28, xzr, x29, eq
   81328: 60 f8 ff 54  	b.eq	0x81234 <_ZN4core3fmt9Formatter12pad_integral17ha6f583ca7a70f44dE+0x158>
   8132c: e0 03 15 aa  	mov	x0, x21
   81330: e1 03 18 2a  	mov	w1, w24
   81334: e2 03 17 aa  	mov	x2, x23
   81338: e3 03 16 aa  	mov	x3, x22
   8133c: 21 00 00 94  	bl	0x813c0 <_ZN4core3fmt9Formatter12pad_integral12write_prefix17h7a2809ec683865f4E>
   81340: a0 f7 07 37  	tbnz	w0, #0, 0x81234 <_ZN4core3fmt9Formatter12pad_integral17ha6f583ca7a70f44dE+0x158>
   81344: 68 0f 40 f9  	ldr	x8, [x27, #24]
   81348: e0 03 19 aa  	mov	x0, x25
   8134c: e1 03 14 aa  	mov	x1, x20
   81350: e2 03 13 aa  	mov	x2, x19
   81354: 00 01 3f d6  	blr	x8
   81358: e0 f6 07 37  	tbnz	w0, #0, 0x81234 <_ZN4core3fmt9Formatter12pad_integral17ha6f583ca7a70f44dE+0x158>
   8135c: f3 03 1f aa  	mov	x19, xzr
   81360: 9f 03 13 eb  	cmp	x28, x19
   81364: 60 02 00 54  	b.eq	0x813b0 <_ZN4core3fmt9Formatter12pad_integral17ha6f583ca7a70f44dE+0x2d4>
   81368: 68 13 40 f9  	ldr	x8, [x27, #32]
   8136c: e0 03 19 aa  	mov	x0, x25
   81370: e1 03 1a 2a  	mov	w1, w26
   81374: 73 06 00 91  	add	x19, x19, #1
   81378: 00 01 3f d6  	blr	x8
   8137c: 20 ff ff 34  	cbz	w0, 0x81360 <_ZN4core3fmt9Formatter12pad_integral17ha6f583ca7a70f44dE+0x284>
   81380: 68 06 00 d1  	sub	x8, x19, #1
   81384: 0c 00 00 14  	b	0x813b4 <_ZN4core3fmt9Formatter12pad_integral17ha6f583ca7a70f44dE+0x2d8>
   81388: e8 0e 40 f9  	ldr	x8, [x23, #24]
   8138c: e0 03 16 aa  	mov	x0, x22
   81390: e1 03 14 aa  	mov	x1, x20
   81394: e2 03 13 aa  	mov	x2, x19
   81398: 00 01 3f d6  	blr	x8
   8139c: c0 f4 07 37  	tbnz	w0, #0, 0x81234 <_ZN4core3fmt9Formatter12pad_integral17ha6f583ca7a70f44dE+0x158>
   813a0: f9 03 1f 2a  	mov	w25, wzr
   813a4: ba 36 00 b9  	str	w26, [x21, #52]
   813a8: bb e2 00 39  	strb	w27, [x21, #56]
   813ac: a3 ff ff 17  	b	0x81238 <_ZN4core3fmt9Formatter12pad_integral17ha6f583ca7a70f44dE+0x15c>
   813b0: e8 03 1c aa  	mov	x8, x28
   813b4: 1f 01 1c eb  	cmp	x8, x28
   813b8: f9 27 9f 1a  	cset	w25, lo
   813bc: 9f ff ff 17  	b	0x81238 <_ZN4core3fmt9Formatter12pad_integral17ha6f583ca7a70f44dE+0x15c>

00000000000813c0 <_ZN4core3fmt9Formatter12pad_integral12write_prefix17h7a2809ec683865f4E>:
   813c0: fe 57 be a9  	stp	x30, x21, [sp, #-32]!
   813c4: f4 4f 01 a9  	stp	x20, x19, [sp, #16]
   813c8: f3 03 03 aa  	mov	x19, x3
   813cc: f4 03 02 aa  	mov	x20, x2
   813d0: 3f 40 44 71  	cmp	w1, #272, lsl #12
   813d4: f5 03 00 aa  	mov	x21, x0
   813d8: 20 01 00 54  	b.eq	0x813fc <_ZN4core3fmt9Formatter12pad_integral12write_prefix17h7a2809ec683865f4E+0x3c>
   813dc: a0 22 42 a9  	ldp	x0, x8, [x21, #32]
   813e0: 08 11 40 f9  	ldr	x8, [x8, #32]
   813e4: 00 01 3f d6  	blr	x8
   813e8: a0 00 00 36  	tbz	w0, #0, 0x813fc <_ZN4core3fmt9Formatter12pad_integral12write_prefix17h7a2809ec683865f4E+0x3c>
   813ec: 20 00 80 52  	mov	w0, #1
   813f0: f4 4f 41 a9  	ldp	x20, x19, [sp, #16]
   813f4: fe 57 c2 a8  	ldp	x30, x21, [sp], #32
   813f8: c0 03 5f d6  	ret
   813fc: 14 01 00 b4  	cbz	x20, 0x8141c <_ZN4core3fmt9Formatter12pad_integral12write_prefix17h7a2809ec683865f4E+0x5c>
   81400: a0 22 42 a9  	ldp	x0, x8, [x21, #32]
   81404: e1 03 14 aa  	mov	x1, x20
   81408: e2 03 13 aa  	mov	x2, x19
   8140c: f4 4f 41 a9  	ldp	x20, x19, [sp, #16]
   81410: 03 0d 40 f9  	ldr	x3, [x8, #24]
   81414: fe 57 c2 a8  	ldp	x30, x21, [sp], #32
   81418: 60 00 1f d6  	br	x3
   8141c: e0 03 1f 2a  	mov	w0, wzr
   81420: f4 4f 41 a9  	ldp	x20, x19, [sp, #16]
   81424: fe 57 c2 a8  	ldp	x30, x21, [sp], #32
   81428: c0 03 5f d6  	ret

000000000008142c <_ZN4core5slice5index26slice_start_index_len_fail17ha3ad23336e78e7f7E>:
   8142c: e0 07 ba a9  	stp	x0, x1, [sp, #-96]!
   81430: e9 ff ff f0  	adrp	x9, 0x80000 <_ZN4core5slice5index26slice_start_index_len_fail17ha3ad23336e78e7f7E>
   81434: e8 03 00 91  	mov	x8, sp
   81438: 29 a1 3c 91  	add	x9, x9, #3880
   8143c: 2b 00 00 90  	adrp	x11, 0x85000 <_ZN4core5slice5index26slice_start_index_len_fail17ha3ad23336e78e7f7E+0x20>
   81440: ea 23 00 91  	add	x10, sp, #8
   81444: 6b 41 23 91  	add	x11, x11, #2256
   81448: 4c 00 80 52  	mov	w12, #2
   8144c: e8 27 04 a9  	stp	x8, x9, [sp, #64]
   81450: e8 03 01 91  	add	x8, sp, #64
   81454: e0 43 00 91  	add	x0, sp, #16
   81458: e1 03 02 aa  	mov	x1, x2
   8145c: ff 7f 02 a9  	stp	xzr, xzr, [sp, #32]
   81460: ea 27 05 a9  	stp	x10, x9, [sp, #80]
   81464: eb 33 01 a9  	stp	x11, x12, [sp, #16]
   81468: e8 33 03 a9  	stp	x8, x12, [sp, #48]
   8146c: 0d ff ff 97  	bl	0x810a0 <_ZN4core9panicking9panic_fmt17h136e9995f1aed1cdE>
   81470: 20 00 20 d4  	brk	#0x1

0000000000081474 <_ZN4core5slice5index24slice_end_index_len_fail17hfcb16d41a5d796d5E>:
   81474: e0 07 ba a9  	stp	x0, x1, [sp, #-96]!
   81478: e9 ff ff f0  	adrp	x9, 0x80000 <_ZN4core5slice5index24slice_end_index_len_fail17hfcb16d41a5d796d5E>
   8147c: e8 03 00 91  	mov	x8, sp
   81480: 29 a1 3c 91  	add	x9, x9, #3880
   81484: 2b 00 00 90  	adrp	x11, 0x85000 <_ZN4core5slice5index24slice_end_index_len_fail17hfcb16d41a5d796d5E+0x20>
   81488: ea 23 00 91  	add	x10, sp, #8
   8148c: 6b a1 24 91  	add	x11, x11, #2344
   81490: 4c 00 80 52  	mov	w12, #2
   81494: e8 27 04 a9  	stp	x8, x9, [sp, #64]
   81498: e8 03 01 91  	add	x8, sp, #64
   8149c: e0 43 00 91  	add	x0, sp, #16
   814a0: e1 03 02 aa  	mov	x1, x2
   814a4: ff 7f 02 a9  	stp	xzr, xzr, [sp, #32]
   814a8: ea 27 05 a9  	stp	x10, x9, [sp, #80]
   814ac: eb 33 01 a9  	stp	x11, x12, [sp, #16]
   814b0: e8 33 03 a9  	stp	x8, x12, [sp, #48]
   814b4: fb fe ff 97  	bl	0x810a0 <_ZN4core9panicking9panic_fmt17h136e9995f1aed1cdE>
   814b8: 20 00 20 d4  	brk	#0x1

00000000000814bc <_ZN4core9panicking5panic17h0d86cd7d69f331f6E>:
   814bc: ff 03 01 d1  	sub	sp, sp, #64
   814c0: 2a 00 00 90  	adrp	x10, 0x85000 <_ZN4core9panicking5panic17h0d86cd7d69f331f6E+0x14>
   814c4: e0 07 03 a9  	stp	x0, x1, [sp, #48]
   814c8: e8 c3 00 91  	add	x8, sp, #48
   814cc: 29 00 80 52  	mov	w9, #1
   814d0: 4a c1 1d 91  	add	x10, x10, #1904
   814d4: e0 03 00 91  	mov	x0, sp
   814d8: e1 03 02 aa  	mov	x1, x2
   814dc: ff 7f 01 a9  	stp	xzr, xzr, [sp, #16]
   814e0: e8 27 00 a9  	stp	x8, x9, [sp]
   814e4: ea 7f 02 a9  	stp	x10, xzr, [sp, #32]
   814e8: ee fe ff 97  	bl	0x810a0 <_ZN4core9panicking9panic_fmt17h136e9995f1aed1cdE>
   814ec: 20 00 20 d4  	brk	#0x1

00000000000814f0 <_ZN44_$LT$$RF$T$u20$as$u20$core..fmt..Display$GT$3fmt17h36ba8db926b991f8E>:
   814f0: fe 67 bc a9  	stp	x30, x25, [sp, #-64]!
   814f4: f8 5f 01 a9  	stp	x24, x23, [sp, #16]
   814f8: f6 57 02 a9  	stp	x22, x21, [sp, #32]
   814fc: f4 4f 03 a9  	stp	x20, x19, [sp, #48]
   81500: 28 00 40 f9  	ldr	x8, [x1]
   81504: 14 4c 40 a9  	ldp	x20, x19, [x0]
   81508: 29 08 40 f9  	ldr	x9, [x1, #16]
   8150c: 1f 05 00 f1  	cmp	x8, #1
   81510: 81 00 00 54  	b.ne	0x81520 <_ZN44_$LT$$RF$T$u20$as$u20$core..fmt..Display$GT$3fmt17h36ba8db926b991f8E+0x30>
   81514: 3f 05 00 f1  	cmp	x9, #1
   81518: 80 00 00 54  	b.eq	0x81528 <_ZN44_$LT$$RF$T$u20$as$u20$core..fmt..Display$GT$3fmt17h36ba8db926b991f8E+0x38>
   8151c: 5a 00 00 14  	b	0x81684 <_ZN44_$LT$$RF$T$u20$as$u20$core..fmt..Display$GT$3fmt17h36ba8db926b991f8E+0x194>
   81520: 3f 05 00 f1  	cmp	x9, #1
   81524: 81 10 00 54  	b.ne	0x81734 <_ZN44_$LT$$RF$T$u20$as$u20$core..fmt..Display$GT$3fmt17h36ba8db926b991f8E+0x244>
   81528: 2b 0c 40 f9  	ldr	x11, [x1, #24]
   8152c: 8a 02 13 8b  	add	x10, x20, x19
   81530: e9 03 1f aa  	mov	x9, xzr
   81534: 6b 06 00 b4  	cbz	x11, 0x81600 <_ZN44_$LT$$RF$T$u20$as$u20$core..fmt..Display$GT$3fmt17h36ba8db926b991f8E+0x110>
   81538: ed 03 14 aa  	mov	x13, x20
   8153c: 0e 00 00 14  	b	0x81574 <_ZN44_$LT$$RF$T$u20$as$u20$core..fmt..Display$GT$3fmt17h36ba8db926b991f8E+0x84>
   81540: 91 15 40 38  	ldrb	w17, [x12], #1
   81544: 31 16 00 12  	and	w17, w17, #0x3f
   81548: ef 09 0e 53  	ubfiz	w15, w15, #18, #3
   8154c: cf 15 14 33  	bfi	w15, w14, #12, #6
   81550: 0f 16 1a 33  	bfi	w15, w16, #6, #6
   81554: ee 01 11 2a  	orr	w14, w15, w17
   81558: df 41 44 71  	cmp	w14, #272, lsl #12
   8155c: 00 09 00 54  	b.eq	0x8167c <_ZN44_$LT$$RF$T$u20$as$u20$core..fmt..Display$GT$3fmt17h36ba8db926b991f8E+0x18c>
   81560: 29 01 0d cb  	sub	x9, x9, x13
   81564: 6b 05 00 f1  	subs	x11, x11, #1
   81568: 29 01 0c 8b  	add	x9, x9, x12
   8156c: ed 03 0c aa  	mov	x13, x12
   81570: a0 04 00 54  	b.eq	0x81604 <_ZN44_$LT$$RF$T$u20$as$u20$core..fmt..Display$GT$3fmt17h36ba8db926b991f8E+0x114>
   81574: bf 01 0a eb  	cmp	x13, x10
   81578: 20 08 00 54  	b.eq	0x8167c <_ZN44_$LT$$RF$T$u20$as$u20$core..fmt..Display$GT$3fmt17h36ba8db926b991f8E+0x18c>
   8157c: ec 03 0d aa  	mov	x12, x13
   81580: 8f 15 c0 38  	ldrsb	w15, [x12], #1
   81584: ef fe ff 36  	tbz	w15, #31, 0x81560 <_ZN44_$LT$$RF$T$u20$as$u20$core..fmt..Display$GT$3fmt17h36ba8db926b991f8E+0x70>
   81588: 9f 01 0a eb  	cmp	x12, x10
   8158c: 00 01 00 54  	b.eq	0x815ac <_ZN44_$LT$$RF$T$u20$as$u20$core..fmt..Display$GT$3fmt17h36ba8db926b991f8E+0xbc>
   81590: ae 05 40 39  	ldrb	w14, [x13, #1]
   81594: ac 09 00 91  	add	x12, x13, #2
   81598: ce 15 00 12  	and	w14, w14, #0x3f
   8159c: ef 1d 00 12  	and	w15, w15, #0xff
   815a0: ff 81 03 71  	cmp	w15, #224
   815a4: e3 fd ff 54  	b.lo	0x81560 <_ZN44_$LT$$RF$T$u20$as$u20$core..fmt..Display$GT$3fmt17h36ba8db926b991f8E+0x70>
   815a8: 06 00 00 14  	b	0x815c0 <_ZN44_$LT$$RF$T$u20$as$u20$core..fmt..Display$GT$3fmt17h36ba8db926b991f8E+0xd0>
   815ac: ee 03 1f 2a  	mov	w14, wzr
   815b0: ec 03 0a aa  	mov	x12, x10
   815b4: ef 1d 00 12  	and	w15, w15, #0xff
   815b8: ff 81 03 71  	cmp	w15, #224
   815bc: 23 fd ff 54  	b.lo	0x81560 <_ZN44_$LT$$RF$T$u20$as$u20$core..fmt..Display$GT$3fmt17h36ba8db926b991f8E+0x70>
   815c0: 9f 01 0a eb  	cmp	x12, x10
   815c4: c0 00 00 54  	b.eq	0x815dc <_ZN44_$LT$$RF$T$u20$as$u20$core..fmt..Display$GT$3fmt17h36ba8db926b991f8E+0xec>
   815c8: 90 15 40 38  	ldrb	w16, [x12], #1
   815cc: 10 16 00 12  	and	w16, w16, #0x3f
   815d0: ff c1 03 71  	cmp	w15, #240
   815d4: 63 fc ff 54  	b.lo	0x81560 <_ZN44_$LT$$RF$T$u20$as$u20$core..fmt..Display$GT$3fmt17h36ba8db926b991f8E+0x70>
   815d8: 05 00 00 14  	b	0x815ec <_ZN44_$LT$$RF$T$u20$as$u20$core..fmt..Display$GT$3fmt17h36ba8db926b991f8E+0xfc>
   815dc: f0 03 1f 2a  	mov	w16, wzr
   815e0: ec 03 0a aa  	mov	x12, x10
   815e4: ff c1 03 71  	cmp	w15, #240
   815e8: c3 fb ff 54  	b.lo	0x81560 <_ZN44_$LT$$RF$T$u20$as$u20$core..fmt..Display$GT$3fmt17h36ba8db926b991f8E+0x70>
   815ec: 9f 01 0a eb  	cmp	x12, x10
   815f0: 81 fa ff 54  	b.ne	0x81540 <_ZN44_$LT$$RF$T$u20$as$u20$core..fmt..Display$GT$3fmt17h36ba8db926b991f8E+0x50>
   815f4: f1 03 1f 2a  	mov	w17, wzr
   815f8: ec 03 0a aa  	mov	x12, x10
   815fc: d3 ff ff 17  	b	0x81548 <_ZN44_$LT$$RF$T$u20$as$u20$core..fmt..Display$GT$3fmt17h36ba8db926b991f8E+0x58>
   81600: ec 03 14 aa  	mov	x12, x20
   81604: 9f 01 0a eb  	cmp	x12, x10
   81608: a0 03 00 54  	b.eq	0x8167c <_ZN44_$LT$$RF$T$u20$as$u20$core..fmt..Display$GT$3fmt17h36ba8db926b991f8E+0x18c>
   8160c: eb 03 0c aa  	mov	x11, x12
   81610: 6d 15 c0 38  	ldrsb	w13, [x11], #1
   81614: 4d 01 f8 37  	tbnz	w13, #31, 0x8163c <_ZN44_$LT$$RF$T$u20$as$u20$core..fmt..Display$GT$3fmt17h36ba8db926b991f8E+0x14c>
   81618: a9 02 00 b4  	cbz	x9, 0x8166c <_ZN44_$LT$$RF$T$u20$as$u20$core..fmt..Display$GT$3fmt17h36ba8db926b991f8E+0x17c>
   8161c: 3f 01 13 eb  	cmp	x9, x19
   81620: 22 02 00 54  	b.hs	0x81664 <_ZN44_$LT$$RF$T$u20$as$u20$core..fmt..Display$GT$3fmt17h36ba8db926b991f8E+0x174>
   81624: 8a 6a e9 38  	ldrsb	w10, [x20, x9]
   81628: 5f 01 01 31  	cmn	w10, #64
   8162c: 0a 02 00 54  	b.ge	0x8166c <_ZN44_$LT$$RF$T$u20$as$u20$core..fmt..Display$GT$3fmt17h36ba8db926b991f8E+0x17c>
   81630: ea 03 1f aa  	mov	x10, xzr
   81634: e9 03 1f aa  	mov	x9, xzr
   81638: 0e 00 00 14  	b	0x81670 <_ZN44_$LT$$RF$T$u20$as$u20$core..fmt..Display$GT$3fmt17h36ba8db926b991f8E+0x180>
   8163c: 7f 01 0a eb  	cmp	x11, x10
   81640: ab 1d 00 12  	and	w11, w13, #0xff
   81644: 80 12 00 54  	b.eq	0x81894 <_ZN44_$LT$$RF$T$u20$as$u20$core..fmt..Display$GT$3fmt17h36ba8db926b991f8E+0x3a4>
   81648: 8e 05 40 39  	ldrb	w14, [x12, #1]
   8164c: 8d 09 00 91  	add	x13, x12, #2
   81650: cc 15 00 12  	and	w12, w14, #0x3f
   81654: 8c 4d 14 53  	lsl	w12, w12, #12
   81658: 7f 81 03 71  	cmp	w11, #224
   8165c: 42 12 00 54  	b.hs	0x818a4 <_ZN44_$LT$$RF$T$u20$as$u20$core..fmt..Display$GT$3fmt17h36ba8db926b991f8E+0x3b4>
   81660: ee ff ff 17  	b	0x81618 <_ZN44_$LT$$RF$T$u20$as$u20$core..fmt..Display$GT$3fmt17h36ba8db926b991f8E+0x128>
   81664: 3f 01 13 eb  	cmp	x9, x19
   81668: 41 fe ff 54  	b.ne	0x81630 <_ZN44_$LT$$RF$T$u20$as$u20$core..fmt..Display$GT$3fmt17h36ba8db926b991f8E+0x140>
   8166c: ea 03 14 aa  	mov	x10, x20
   81670: 5f 01 00 f1  	cmp	x10, #0
   81674: 94 02 8a 9a  	csel	x20, x20, x10, eq
   81678: 73 02 89 9a  	csel	x19, x19, x9, eq
   8167c: 1f 05 00 f1  	cmp	x8, #1
   81680: a1 05 00 54  	b.ne	0x81734 <_ZN44_$LT$$RF$T$u20$as$u20$core..fmt..Display$GT$3fmt17h36ba8db926b991f8E+0x244>
   81684: d3 00 00 b4  	cbz	x19, 0x8169c <_ZN44_$LT$$RF$T$u20$as$u20$core..fmt..Display$GT$3fmt17h36ba8db926b991f8E+0x1ac>
   81688: 7f 06 00 f1  	cmp	x19, #1
   8168c: 01 01 00 54  	b.ne	0x816ac <_ZN44_$LT$$RF$T$u20$as$u20$core..fmt..Display$GT$3fmt17h36ba8db926b991f8E+0x1bc>
   81690: e9 03 1f aa  	mov	x9, xzr
   81694: e8 03 14 aa  	mov	x8, x20
   81698: 18 00 00 14  	b	0x816f8 <_ZN44_$LT$$RF$T$u20$as$u20$core..fmt..Display$GT$3fmt17h36ba8db926b991f8E+0x208>
   8169c: 28 04 40 f9  	ldr	x8, [x1, #8]
   816a0: a8 04 00 b4  	cbz	x8, 0x81734 <_ZN44_$LT$$RF$T$u20$as$u20$core..fmt..Display$GT$3fmt17h36ba8db926b991f8E+0x244>
   816a4: e9 03 1f aa  	mov	x9, xzr
   816a8: 46 00 00 14  	b	0x817c0 <_ZN44_$LT$$RF$T$u20$as$u20$core..fmt..Display$GT$3fmt17h36ba8db926b991f8E+0x2d0>
   816ac: 68 fa 7f 92  	and	x8, x19, #0xfffffffffffffffe
   816b0: e9 03 1f aa  	mov	x9, xzr
   816b4: ea 03 1f aa  	mov	x10, xzr
   816b8: 8b 06 00 91  	add	x11, x20, #1
   816bc: ec 03 08 aa  	mov	x12, x8
   816c0: 6d f1 5f 38  	ldurb	w13, [x11, #-1]
   816c4: 6e 25 40 38  	ldrb	w14, [x11], #2
   816c8: ad 05 1a 12  	and	w13, w13, #0xc0
   816cc: ce 05 1a 12  	and	w14, w14, #0xc0
   816d0: bf 01 02 71  	cmp	w13, #128
   816d4: 29 05 89 9a  	cinc	x9, x9, ne
   816d8: df 01 02 71  	cmp	w14, #128
   816dc: 4a 05 8a 9a  	cinc	x10, x10, ne
   816e0: 8c 09 00 f1  	subs	x12, x12, #2
   816e4: e1 fe ff 54  	b.ne	0x816c0 <_ZN44_$LT$$RF$T$u20$as$u20$core..fmt..Display$GT$3fmt17h36ba8db926b991f8E+0x1d0>
   816e8: 7f 02 08 eb  	cmp	x19, x8
   816ec: 49 01 09 8b  	add	x9, x10, x9
   816f0: 20 01 00 54  	b.eq	0x81714 <_ZN44_$LT$$RF$T$u20$as$u20$core..fmt..Display$GT$3fmt17h36ba8db926b991f8E+0x224>
   816f4: 88 02 08 8b  	add	x8, x20, x8
   816f8: 8a 02 13 8b  	add	x10, x20, x19
   816fc: 0b 15 40 38  	ldrb	w11, [x8], #1
   81700: 6b 05 1a 12  	and	w11, w11, #0xc0
   81704: 7f 01 02 71  	cmp	w11, #128
   81708: 29 05 89 9a  	cinc	x9, x9, ne
   8170c: 5f 01 08 eb  	cmp	x10, x8
   81710: 61 ff ff 54  	b.ne	0x816fc <_ZN44_$LT$$RF$T$u20$as$u20$core..fmt..Display$GT$3fmt17h36ba8db926b991f8E+0x20c>
   81714: 28 04 40 f9  	ldr	x8, [x1, #8]
   81718: 3f 01 08 eb  	cmp	x9, x8
   8171c: c2 00 00 54  	b.hs	0x81734 <_ZN44_$LT$$RF$T$u20$as$u20$core..fmt..Display$GT$3fmt17h36ba8db926b991f8E+0x244>
   81720: 7f 06 00 f1  	cmp	x19, #1
   81724: a8 01 00 54  	b.hi	0x81758 <_ZN44_$LT$$RF$T$u20$as$u20$core..fmt..Display$GT$3fmt17h36ba8db926b991f8E+0x268>
   81728: e9 03 1f aa  	mov	x9, xzr
   8172c: ea 03 14 aa  	mov	x10, x20
   81730: 1d 00 00 14  	b	0x817a4 <_ZN44_$LT$$RF$T$u20$as$u20$core..fmt..Display$GT$3fmt17h36ba8db926b991f8E+0x2b4>
   81734: 20 20 42 a9  	ldp	x0, x8, [x1, #32]
   81738: e1 03 14 aa  	mov	x1, x20
   8173c: e2 03 13 aa  	mov	x2, x19
   81740: f4 4f 43 a9  	ldp	x20, x19, [sp, #48]
   81744: 03 0d 40 f9  	ldr	x3, [x8, #24]
   81748: f6 57 42 a9  	ldp	x22, x21, [sp, #32]
   8174c: f8 5f 41 a9  	ldp	x24, x23, [sp, #16]
   81750: fe 67 c4 a8  	ldp	x30, x25, [sp], #64
   81754: 60 00 1f d6  	br	x3
   81758: 6a fa 7f 92  	and	x10, x19, #0xfffffffffffffffe
   8175c: e9 03 1f aa  	mov	x9, xzr
   81760: eb 03 1f aa  	mov	x11, xzr
   81764: 8c 06 00 91  	add	x12, x20, #1
   81768: ed 03 0a aa  	mov	x13, x10
   8176c: 8e f1 5f 38  	ldurb	w14, [x12, #-1]
   81770: 8f 25 40 38  	ldrb	w15, [x12], #2
   81774: ce 05 1a 12  	and	w14, w14, #0xc0
   81778: ef 05 1a 12  	and	w15, w15, #0xc0
   8177c: df 01 02 71  	cmp	w14, #128
   81780: 29 05 89 9a  	cinc	x9, x9, ne
   81784: ff 01 02 71  	cmp	w15, #128
   81788: 6b 05 8b 9a  	cinc	x11, x11, ne
   8178c: ad 09 00 f1  	subs	x13, x13, #2
   81790: e1 fe ff 54  	b.ne	0x8176c <_ZN44_$LT$$RF$T$u20$as$u20$core..fmt..Display$GT$3fmt17h36ba8db926b991f8E+0x27c>
   81794: 7f 02 0a eb  	cmp	x19, x10
   81798: 69 01 09 8b  	add	x9, x11, x9
   8179c: 20 01 00 54  	b.eq	0x817c0 <_ZN44_$LT$$RF$T$u20$as$u20$core..fmt..Display$GT$3fmt17h36ba8db926b991f8E+0x2d0>
   817a0: 8a 02 0a 8b  	add	x10, x20, x10
   817a4: 8b 02 13 8b  	add	x11, x20, x19
   817a8: 4c 15 40 38  	ldrb	w12, [x10], #1
   817ac: 8c 05 1a 12  	and	w12, w12, #0xc0
   817b0: 9f 01 02 71  	cmp	w12, #128
   817b4: 29 05 89 9a  	cinc	x9, x9, ne
   817b8: 7f 01 0a eb  	cmp	x11, x10
   817bc: 61 ff ff 54  	b.ne	0x817a8 <_ZN44_$LT$$RF$T$u20$as$u20$core..fmt..Display$GT$3fmt17h36ba8db926b991f8E+0x2b8>
   817c0: 2a e0 40 39  	ldrb	w10, [x1, #56]
   817c4: 08 01 09 cb  	sub	x8, x8, x9
   817c8: 5f 0d 00 71  	cmp	w10, #3
   817cc: ea 03 8a 1a  	csel	w10, wzr, w10, eq
   817d0: 4a 05 00 72  	ands	w10, w10, #0x3
   817d4: a0 00 00 54  	b.eq	0x817e8 <_ZN44_$LT$$RF$T$u20$as$u20$core..fmt..Display$GT$3fmt17h36ba8db926b991f8E+0x2f8>
   817d8: 5f 05 00 71  	cmp	w10, #1
   817dc: c1 00 00 54  	b.ne	0x817f4 <_ZN44_$LT$$RF$T$u20$as$u20$core..fmt..Display$GT$3fmt17h36ba8db926b991f8E+0x304>
   817e0: f8 03 1f aa  	mov	x24, xzr
   817e4: 07 00 00 14  	b	0x81800 <_ZN44_$LT$$RF$T$u20$as$u20$core..fmt..Display$GT$3fmt17h36ba8db926b991f8E+0x310>
   817e8: f8 03 08 aa  	mov	x24, x8
   817ec: e8 03 1f aa  	mov	x8, xzr
   817f0: 04 00 00 14  	b	0x81800 <_ZN44_$LT$$RF$T$u20$as$u20$core..fmt..Display$GT$3fmt17h36ba8db926b991f8E+0x310>
   817f4: 09 05 00 91  	add	x9, x8, #1
   817f8: 08 fd 41 d3  	lsr	x8, x8, #1
   817fc: 38 fd 41 d3  	lsr	x24, x9, #1
   81800: 35 5c 42 a9  	ldp	x21, x23, [x1, #32]
   81804: 36 34 40 b9  	ldr	w22, [x1, #52]
   81808: 19 05 00 91  	add	x25, x8, #1
   8180c: 39 07 00 f1  	subs	x25, x25, #1
   81810: e0 00 00 54  	b.eq	0x8182c <_ZN44_$LT$$RF$T$u20$as$u20$core..fmt..Display$GT$3fmt17h36ba8db926b991f8E+0x33c>
   81814: e8 12 40 f9  	ldr	x8, [x23, #32]
   81818: e0 03 15 aa  	mov	x0, x21
   8181c: e1 03 16 2a  	mov	w1, w22
   81820: 00 01 3f d6  	blr	x8
   81824: 40 ff 07 36  	tbz	w0, #0, 0x8180c <_ZN44_$LT$$RF$T$u20$as$u20$core..fmt..Display$GT$3fmt17h36ba8db926b991f8E+0x31c>
   81828: 0a 00 00 14  	b	0x81850 <_ZN44_$LT$$RF$T$u20$as$u20$core..fmt..Display$GT$3fmt17h36ba8db926b991f8E+0x360>
   8182c: df 42 44 71  	cmp	w22, #272, lsl #12
   81830: f8 03 98 9a  	csel	x24, xzr, x24, eq
   81834: e0 00 00 54  	b.eq	0x81850 <_ZN44_$LT$$RF$T$u20$as$u20$core..fmt..Display$GT$3fmt17h36ba8db926b991f8E+0x360>
   81838: e8 0e 40 f9  	ldr	x8, [x23, #24]
   8183c: e0 03 15 aa  	mov	x0, x21
   81840: e1 03 14 aa  	mov	x1, x20
   81844: e2 03 13 aa  	mov	x2, x19
   81848: 00 01 3f d6  	blr	x8
   8184c: e0 00 00 36  	tbz	w0, #0, 0x81868 <_ZN44_$LT$$RF$T$u20$as$u20$core..fmt..Display$GT$3fmt17h36ba8db926b991f8E+0x378>
   81850: 20 00 80 52  	mov	w0, #1
   81854: f4 4f 43 a9  	ldp	x20, x19, [sp, #48]
   81858: f6 57 42 a9  	ldp	x22, x21, [sp, #32]
   8185c: f8 5f 41 a9  	ldp	x24, x23, [sp, #16]
   81860: fe 67 c4 a8  	ldp	x30, x25, [sp], #64
   81864: c0 03 5f d6  	ret
   81868: f3 03 1f aa  	mov	x19, xzr
   8186c: 1f 03 13 eb  	cmp	x24, x19
   81870: a0 02 00 54  	b.eq	0x818c4 <_ZN44_$LT$$RF$T$u20$as$u20$core..fmt..Display$GT$3fmt17h36ba8db926b991f8E+0x3d4>
   81874: e8 12 40 f9  	ldr	x8, [x23, #32]
   81878: e0 03 15 aa  	mov	x0, x21
   8187c: e1 03 16 2a  	mov	w1, w22
   81880: 73 06 00 91  	add	x19, x19, #1
   81884: 00 01 3f d6  	blr	x8
   81888: 20 ff ff 34  	cbz	w0, 0x8186c <_ZN44_$LT$$RF$T$u20$as$u20$core..fmt..Display$GT$3fmt17h36ba8db926b991f8E+0x37c>
   8188c: 68 06 00 d1  	sub	x8, x19, #1
   81890: 0e 00 00 14  	b	0x818c8 <_ZN44_$LT$$RF$T$u20$as$u20$core..fmt..Display$GT$3fmt17h36ba8db926b991f8E+0x3d8>
   81894: ec 03 1f 2a  	mov	w12, wzr
   81898: ed 03 0a aa  	mov	x13, x10
   8189c: 7f 81 03 71  	cmp	w11, #224
   818a0: c3 eb ff 54  	b.lo	0x81618 <_ZN44_$LT$$RF$T$u20$as$u20$core..fmt..Display$GT$3fmt17h36ba8db926b991f8E+0x128>
   818a4: bf 01 0a eb  	cmp	x13, x10
   818a8: 60 01 00 54  	b.eq	0x818d4 <_ZN44_$LT$$RF$T$u20$as$u20$core..fmt..Display$GT$3fmt17h36ba8db926b991f8E+0x3e4>
   818ac: ae 15 40 38  	ldrb	w14, [x13], #1
   818b0: ce 15 00 12  	and	w14, w14, #0x3f
   818b4: ce 65 1a 53  	lsl	w14, w14, #6
   818b8: 7f c1 03 71  	cmp	w11, #240
   818bc: 42 01 00 54  	b.hs	0x818e4 <_ZN44_$LT$$RF$T$u20$as$u20$core..fmt..Display$GT$3fmt17h36ba8db926b991f8E+0x3f4>
   818c0: 56 ff ff 17  	b	0x81618 <_ZN44_$LT$$RF$T$u20$as$u20$core..fmt..Display$GT$3fmt17h36ba8db926b991f8E+0x128>
   818c4: e8 03 18 aa  	mov	x8, x24
   818c8: 1f 01 18 eb  	cmp	x8, x24
   818cc: e0 27 9f 1a  	cset	w0, lo
   818d0: e1 ff ff 17  	b	0x81854 <_ZN44_$LT$$RF$T$u20$as$u20$core..fmt..Display$GT$3fmt17h36ba8db926b991f8E+0x364>
   818d4: ee 03 1f 2a  	mov	w14, wzr
   818d8: ed 03 0a aa  	mov	x13, x10
   818dc: 7f c1 03 71  	cmp	w11, #240
   818e0: c3 e9 ff 54  	b.lo	0x81618 <_ZN44_$LT$$RF$T$u20$as$u20$core..fmt..Display$GT$3fmt17h36ba8db926b991f8E+0x128>
   818e4: bf 01 0a eb  	cmp	x13, x10
   818e8: 80 00 00 54  	b.eq	0x818f8 <_ZN44_$LT$$RF$T$u20$as$u20$core..fmt..Display$GT$3fmt17h36ba8db926b991f8E+0x408>
   818ec: aa 01 40 39  	ldrb	w10, [x13]
   818f0: 4a 15 00 12  	and	w10, w10, #0x3f
   818f4: 02 00 00 14  	b	0x818fc <_ZN44_$LT$$RF$T$u20$as$u20$core..fmt..Display$GT$3fmt17h36ba8db926b991f8E+0x40c>
   818f8: ea 03 1f 2a  	mov	w10, wzr
   818fc: 6c 09 0e 33  	bfi	w12, w11, #18, #3
   81900: 8b 01 0e 2a  	orr	w11, w12, w14
   81904: 6a 01 0a 2a  	orr	w10, w11, w10
   81908: 5f 41 44 71  	cmp	w10, #272, lsl #12
   8190c: 80 eb ff 54  	b.eq	0x8167c <_ZN44_$LT$$RF$T$u20$as$u20$core..fmt..Display$GT$3fmt17h36ba8db926b991f8E+0x18c>
   81910: 42 ff ff 17  	b	0x81618 <_ZN44_$LT$$RF$T$u20$as$u20$core..fmt..Display$GT$3fmt17h36ba8db926b991f8E+0x128>

0000000000081914 <_ZN42_$LT$$RF$T$u20$as$u20$core..fmt..Debug$GT$3fmt17h06e6f11dfdb75eceE>:
   81914: 00 20 40 a9  	ldp	x0, x8, [x0]
   81918: 02 0d 40 f9  	ldr	x2, [x8, #24]
   8191c: 40 00 1f d6  	br	x2

0000000000081920 <_ZN4core3fmt5write17h63775af3066fbce8E>:
   81920: ff 43 02 d1  	sub	sp, sp, #144
   81924: fe 23 00 f9  	str	x30, [sp, #64]
   81928: fa 67 05 a9  	stp	x26, x25, [sp, #80]
   8192c: f8 5f 06 a9  	stp	x24, x23, [sp, #96]
   81930: f6 57 07 a9  	stp	x22, x21, [sp, #112]
   81934: f4 4f 08 a9  	stp	x20, x19, [sp, #128]
   81938: 28 00 00 90  	adrp	x8, 0x85000 <_ZN4core3fmt5write17h63775af3066fbce8E+0x28>
   8193c: 00 19 40 fd  	ldr	d0, [x8, #48]
   81940: 48 08 40 f9  	ldr	x8, [x2, #16]
   81944: f3 03 02 aa  	mov	x19, x2
   81948: 69 00 80 52  	mov	w9, #3
   8194c: ff 03 00 f9  	str	xzr, [sp]
   81950: ff 0b 00 f9  	str	xzr, [sp, #16]
   81954: e9 e3 00 39  	strb	w9, [sp, #56]
   81958: e0 1b 00 fd  	str	d0, [sp, #48]
   8195c: e0 07 02 a9  	stp	x0, x1, [sp, #32]
   81960: 88 08 00 b4  	cbz	x8, 0x81a70 <_ZN4core3fmt5write17h63775af3066fbce8E+0x150>
   81964: 69 0e 40 f9  	ldr	x9, [x19, #24]
   81968: 74 56 40 a9  	ldp	x20, x21, [x19]
   8196c: 3f 01 15 eb  	cmp	x9, x21
   81970: b6 82 89 9a  	csel	x22, x21, x9, hi
   81974: f6 0a 00 b4  	cbz	x22, 0x81ad0 <_ZN4core3fmt5write17h63775af3066fbce8E+0x1b0>
   81978: f9 ff ff f0  	adrp	x25, 0x80000 <_ZN4core3fmt5write17h63775af3066fbce8E+0x54>
   8197c: 97 22 00 91  	add	x23, x20, #8
   81980: 18 61 00 91  	add	x24, x8, #24
   81984: 39 63 3b 91  	add	x25, x25, #3800
   81988: fa 03 16 aa  	mov	x26, x22
   8198c: e2 02 40 f9  	ldr	x2, [x23]
   81990: c2 00 00 b4  	cbz	x2, 0x819a8 <_ZN4core3fmt5write17h63775af3066fbce8E+0x88>
   81994: e0 23 42 a9  	ldp	x0, x8, [sp, #32]
   81998: e1 82 5f f8  	ldur	x1, [x23, #-8]
   8199c: 08 0d 40 f9  	ldr	x8, [x8, #24]
   819a0: 00 01 3f d6  	blr	x8
   819a4: 60 0a 00 37  	tbnz	w0, #0, 0x81af0 <_ZN4core3fmt5write17h63775af3066fbce8E+0x1d0>
   819a8: 08 63 40 39  	ldrb	w8, [x24, #24]
   819ac: e8 e3 00 39  	strb	w8, [sp, #56]
   819b0: 00 0b 40 fd  	ldr	d0, [x24, #16]
   819b4: 68 12 40 f9  	ldr	x8, [x19, #32]
   819b8: 00 08 a0 0e  	rev64	v0.2s, v0.2s
   819bc: e0 1b 00 fd  	str	d0, [sp, #48]
   819c0: 0a 27 40 a9  	ldp	x10, x9, [x24]
   819c4: ea 01 00 b4  	cbz	x10, 0x81a00 <_ZN4core3fmt5write17h63775af3066fbce8E+0xe0>
   819c8: 5f 05 00 f1  	cmp	x10, #1
   819cc: a1 00 00 54  	b.ne	0x819e0 <_ZN4core3fmt5write17h63775af3066fbce8E+0xc0>
   819d0: 0a 11 09 8b  	add	x10, x8, x9, lsl #4
   819d4: 4a 05 40 f9  	ldr	x10, [x10, #8]
   819d8: 5f 01 19 eb  	cmp	x10, x25
   819dc: c0 00 00 54  	b.eq	0x819f4 <_ZN4core3fmt5write17h63775af3066fbce8E+0xd4>
   819e0: ea 03 1f aa  	mov	x10, xzr
   819e4: ea 27 00 a9  	stp	x10, x9, [sp]
   819e8: 0a 27 7f a9  	ldp	x10, x9, [x24, #-16]
   819ec: 2a 01 00 b5  	cbnz	x10, 0x81a10 <_ZN4core3fmt5write17h63775af3066fbce8E+0xf0>
   819f0: 13 00 00 14  	b	0x81a3c <_ZN4core3fmt5write17h63775af3066fbce8E+0x11c>
   819f4: 29 ed 7c d3  	lsl	x9, x9, #4
   819f8: 09 69 69 f8  	ldr	x9, [x8, x9]
   819fc: 29 01 40 f9  	ldr	x9, [x9]
   81a00: 2a 00 80 52  	mov	w10, #1
   81a04: ea 27 00 a9  	stp	x10, x9, [sp]
   81a08: 0a 27 7f a9  	ldp	x10, x9, [x24, #-16]
   81a0c: 8a 01 00 b4  	cbz	x10, 0x81a3c <_ZN4core3fmt5write17h63775af3066fbce8E+0x11c>
   81a10: 5f 05 00 f1  	cmp	x10, #1
   81a14: a1 00 00 54  	b.ne	0x81a28 <_ZN4core3fmt5write17h63775af3066fbce8E+0x108>
   81a18: 0a 11 09 8b  	add	x10, x8, x9, lsl #4
   81a1c: 4a 05 40 f9  	ldr	x10, [x10, #8]
   81a20: 5f 01 19 eb  	cmp	x10, x25
   81a24: 60 00 00 54  	b.eq	0x81a30 <_ZN4core3fmt5write17h63775af3066fbce8E+0x110>
   81a28: ea 03 1f aa  	mov	x10, xzr
   81a2c: 05 00 00 14  	b	0x81a40 <_ZN4core3fmt5write17h63775af3066fbce8E+0x120>
   81a30: 29 ed 7c d3  	lsl	x9, x9, #4
   81a34: 09 69 69 f8  	ldr	x9, [x8, x9]
   81a38: 29 01 40 f9  	ldr	x9, [x9]
   81a3c: 2a 00 80 52  	mov	w10, #1
   81a40: ea 27 01 a9  	stp	x10, x9, [sp, #16]
   81a44: 09 83 5e f8  	ldur	x9, [x24, #-24]
   81a48: e1 03 00 91  	mov	x1, sp
   81a4c: 08 11 09 8b  	add	x8, x8, x9, lsl #4
   81a50: 00 25 40 a9  	ldp	x0, x9, [x8]
   81a54: 20 01 3f d6  	blr	x9
   81a58: c0 04 00 37  	tbnz	w0, #0, 0x81af0 <_ZN4core3fmt5write17h63775af3066fbce8E+0x1d0>
   81a5c: f7 42 00 91  	add	x23, x23, #16
   81a60: 5a 07 00 f1  	subs	x26, x26, #1
   81a64: 18 e3 00 91  	add	x24, x24, #56
   81a68: 21 f9 ff 54  	b.ne	0x8198c <_ZN4core3fmt5write17h63775af3066fbce8E+0x6c>
   81a6c: 19 00 00 14  	b	0x81ad0 <_ZN4core3fmt5write17h63775af3066fbce8E+0x1b0>
   81a70: 68 16 40 f9  	ldr	x8, [x19, #40]
   81a74: 74 56 40 a9  	ldp	x20, x21, [x19]
   81a78: 1f 01 15 eb  	cmp	x8, x21
   81a7c: b6 82 88 9a  	csel	x22, x21, x8, hi
   81a80: 96 02 00 b4  	cbz	x22, 0x81ad0 <_ZN4core3fmt5write17h63775af3066fbce8E+0x1b0>
   81a84: 73 12 40 f9  	ldr	x19, [x19, #32]
   81a88: f7 03 1f aa  	mov	x23, xzr
   81a8c: f8 03 16 aa  	mov	x24, x22
   81a90: 88 02 17 8b  	add	x8, x20, x23
   81a94: 02 05 40 f9  	ldr	x2, [x8, #8]
   81a98: c2 00 00 b4  	cbz	x2, 0x81ab0 <_ZN4core3fmt5write17h63775af3066fbce8E+0x190>
   81a9c: e0 23 42 a9  	ldp	x0, x8, [sp, #32]
   81aa0: 81 6a 77 f8  	ldr	x1, [x20, x23]
   81aa4: 08 0d 40 f9  	ldr	x8, [x8, #24]
   81aa8: 00 01 3f d6  	blr	x8
   81aac: 20 02 00 37  	tbnz	w0, #0, 0x81af0 <_ZN4core3fmt5write17h63775af3066fbce8E+0x1d0>
   81ab0: 68 02 17 8b  	add	x8, x19, x23
   81ab4: 00 25 40 a9  	ldp	x0, x9, [x8]
   81ab8: e1 03 00 91  	mov	x1, sp
   81abc: 20 01 3f d6  	blr	x9
   81ac0: 80 01 00 37  	tbnz	w0, #0, 0x81af0 <_ZN4core3fmt5write17h63775af3066fbce8E+0x1d0>
   81ac4: 18 07 00 f1  	subs	x24, x24, #1
   81ac8: f7 42 00 91  	add	x23, x23, #16
   81acc: 21 fe ff 54  	b.ne	0x81a90 <_ZN4core3fmt5write17h63775af3066fbce8E+0x170>
   81ad0: df 02 15 eb  	cmp	x22, x21
   81ad4: 22 01 00 54  	b.hs	0x81af8 <_ZN4core3fmt5write17h63775af3066fbce8E+0x1d8>
   81ad8: e0 23 42 a9  	ldp	x0, x8, [sp, #32]
   81adc: 89 12 16 8b  	add	x9, x20, x22, lsl #4
   81ae0: 21 09 40 a9  	ldp	x1, x2, [x9]
   81ae4: 08 0d 40 f9  	ldr	x8, [x8, #24]
   81ae8: 00 01 3f d6  	blr	x8
   81aec: 60 00 00 36  	tbz	w0, #0, 0x81af8 <_ZN4core3fmt5write17h63775af3066fbce8E+0x1d8>
   81af0: 20 00 80 52  	mov	w0, #1
   81af4: 02 00 00 14  	b	0x81afc <_ZN4core3fmt5write17h63775af3066fbce8E+0x1dc>
   81af8: e0 03 1f 2a  	mov	w0, wzr
   81afc: f4 4f 48 a9  	ldp	x20, x19, [sp, #128]
   81b00: f6 57 47 a9  	ldp	x22, x21, [sp, #112]
   81b04: f8 5f 46 a9  	ldp	x24, x23, [sp, #96]
   81b08: fa 67 45 a9  	ldp	x26, x25, [sp, #80]
   81b0c: fe 23 40 f9  	ldr	x30, [sp, #64]
   81b10: ff 43 02 91  	add	sp, sp, #144
   81b14: c0 03 5f d6  	ret

0000000000081b18 <_ZN4core5slice5index22slice_index_order_fail17h806852bf6aeb5b48E>:
   81b18: e0 07 ba a9  	stp	x0, x1, [sp, #-96]!
   81b1c: e9 ff ff f0  	adrp	x9, 0x80000 <_ZN4core5slice5index22slice_index_order_fail17h806852bf6aeb5b48E>
   81b20: e8 03 00 91  	mov	x8, sp
   81b24: 29 a1 3c 91  	add	x9, x9, #3880
   81b28: 2b 00 00 90  	adrp	x11, 0x85000 <_ZN4core5slice5index22slice_index_order_fail17h806852bf6aeb5b48E+0x20>
   81b2c: ea 23 00 91  	add	x10, sp, #8
   81b30: 6b 21 26 91  	add	x11, x11, #2440
   81b34: 4c 00 80 52  	mov	w12, #2
   81b38: e8 27 04 a9  	stp	x8, x9, [sp, #64]
   81b3c: e8 03 01 91  	add	x8, sp, #64
   81b40: e0 43 00 91  	add	x0, sp, #16
   81b44: e1 03 02 aa  	mov	x1, x2
   81b48: ff 7f 02 a9  	stp	xzr, xzr, [sp, #32]
   81b4c: ea 27 05 a9  	stp	x10, x9, [sp, #80]
   81b50: eb 33 01 a9  	stp	x11, x12, [sp, #16]
   81b54: e8 33 03 a9  	stp	x8, x12, [sp, #48]
   81b58: 52 fd ff 97  	bl	0x810a0 <_ZN4core9panicking9panic_fmt17h136e9995f1aed1cdE>
   81b5c: 20 00 20 d4  	brk	#0x1

0000000000081b60 <_ZN4core6result13unwrap_failed17he5d63f92106ab51dE>:
   81b60: ff c3 01 d1  	sub	sp, sp, #112
   81b64: 68 05 80 52  	mov	w8, #43
   81b68: 0a 00 00 90  	adrp	x10, 0x81000 <_ZN4core6result13unwrap_failed17he5d63f92106ab51dE+0x8>
   81b6c: e9 03 00 91  	mov	x9, sp
   81b70: 4a c1 13 91  	add	x10, x10, #1264
   81b74: 0c 00 00 90  	adrp	x12, 0x81000 <_ZN4core6result13unwrap_failed17he5d63f92106ab51dE+0x14>
   81b78: e0 23 00 a9  	stp	x0, x8, [sp]
   81b7c: 28 00 00 90  	adrp	x8, 0x85000 <_ZN4core6result13unwrap_failed17he5d63f92106ab51dE+0x2c>
   81b80: e1 0b 01 a9  	stp	x1, x2, [sp, #16]
   81b84: eb 43 00 91  	add	x11, sp, #16
   81b88: 8c 51 24 91  	add	x12, x12, #2324
   81b8c: 08 c1 27 91  	add	x8, x8, #2544
   81b90: e9 2b 05 a9  	stp	x9, x10, [sp, #80]
   81b94: 49 00 80 52  	mov	w9, #2
   81b98: ea 43 01 91  	add	x10, sp, #80
   81b9c: e0 83 00 91  	add	x0, sp, #32
   81ba0: e1 03 03 aa  	mov	x1, x3
   81ba4: ff 7f 03 a9  	stp	xzr, xzr, [sp, #48]
   81ba8: eb 33 06 a9  	stp	x11, x12, [sp, #96]
   81bac: e8 27 02 a9  	stp	x8, x9, [sp, #32]
   81bb0: ea 27 04 a9  	stp	x10, x9, [sp, #64]
   81bb4: 3b fd ff 97  	bl	0x810a0 <_ZN4core9panicking9panic_fmt17h136e9995f1aed1cdE>
   81bb8: 20 00 20 d4  	brk	#0x1

0000000000081bbc <_ZN68_$LT$core..fmt..builders..PadAdapter$u20$as$u20$core..fmt..Write$GT$9write_str17h3825e647a41714ecE>:
   81bbc: ff 83 01 d1  	sub	sp, sp, #96
   81bc0: fe 67 02 a9  	stp	x30, x25, [sp, #32]
   81bc4: f8 5f 03 a9  	stp	x24, x23, [sp, #48]
   81bc8: f6 57 04 a9  	stp	x22, x21, [sp, #64]
   81bcc: f4 4f 05 a9  	stp	x20, x19, [sp, #80]
   81bd0: 62 12 00 b4  	cbz	x2, 0x81e1c <_ZN68_$LT$core..fmt..builders..PadAdapter$u20$as$u20$core..fmt..Write$GT$9write_str17h3825e647a41714ecE+0x260>
   81bd4: 19 e0 40 a9  	ldp	x25, x24, [x0, #8]
   81bd8: 15 00 40 f9  	ldr	x21, [x0]
   81bdc: e8 db 07 b2  	mov	x8, #-72340172838076674
   81be0: e8 df 9f f2  	movk	x8, #65279
   81be4: 36 00 00 90  	adrp	x22, 0x85000 <_ZN68_$LT$core..fmt..builders..PadAdapter$u20$as$u20$core..fmt..Write$GT$9write_str17h3825e647a41714ecE+0x38>
   81be8: f3 03 02 aa  	mov	x19, x2
   81bec: f4 03 01 aa  	mov	x20, x1
   81bf0: 42 e5 00 4f  	movi	v2.16b, #10
   81bf4: 03 0d 08 4e  	dup	v3.2d, x8
   81bf8: 04 e4 04 4f  	movi	v4.16b, #128
   81bfc: d6 c2 28 91  	add	x22, x22, #2608
   81c00: e3 03 80 3d  	str	q3, [sp]
   81c04: 07 00 00 14  	b	0x81c20 <_ZN68_$LT$core..fmt..builders..PadAdapter$u20$as$u20$core..fmt..Write$GT$9write_str17h3825e647a41714ecE+0x64>
   81c08: e3 03 c0 3d  	ldr	q3, [sp]
   81c0c: 73 02 17 eb  	subs	x19, x19, x23
   81c10: 94 02 17 8b  	add	x20, x20, x23
   81c14: 42 e5 00 4f  	movi	v2.16b, #10
   81c18: 04 e4 04 4f  	movi	v4.16b, #128
   81c1c: 00 10 00 54  	b.eq	0x81e1c <_ZN68_$LT$core..fmt..builders..PadAdapter$u20$as$u20$core..fmt..Write$GT$9write_str17h3825e647a41714ecE+0x260>
   81c20: 08 03 40 39  	ldrb	w8, [x24]
   81c24: 48 01 00 34  	cbz	w8, 0x81c4c <_ZN68_$LT$core..fmt..builders..PadAdapter$u20$as$u20$core..fmt..Write$GT$9write_str17h3825e647a41714ecE+0x90>
   81c28: 28 0f 40 f9  	ldr	x8, [x25, #24]
   81c2c: 82 00 80 52  	mov	w2, #4
   81c30: e0 03 15 aa  	mov	x0, x21
   81c34: e1 03 16 aa  	mov	x1, x22
   81c38: 00 01 3f d6  	blr	x8
   81c3c: e3 03 c0 3d  	ldr	q3, [sp]
   81c40: 04 e4 04 4f  	movi	v4.16b, #128
   81c44: 42 e5 00 4f  	movi	v2.16b, #10
   81c48: e0 0e 00 37  	tbnz	w0, #0, 0x81e24 <_ZN68_$LT$core..fmt..builders..PadAdapter$u20$as$u20$core..fmt..Write$GT$9write_str17h3825e647a41714ecE+0x268>
   81c4c: f7 03 1f aa  	mov	x23, xzr
   81c50: e1 03 13 aa  	mov	x1, x19
   81c54: 05 00 00 14  	b	0x81c68 <_ZN68_$LT$core..fmt..builders..PadAdapter$u20$as$u20$core..fmt..Write$GT$9write_str17h3825e647a41714ecE+0xac>
   81c58: 68 02 17 eb  	subs	x8, x19, x23
   81c5c: e1 33 88 9a  	csel	x1, xzr, x8, lo
   81c60: ff 02 13 eb  	cmp	x23, x19
   81c64: a8 0a 00 54  	b.hi	0x81db8 <_ZN68_$LT$core..fmt..builders..PadAdapter$u20$as$u20$core..fmt..Write$GT$9write_str17h3825e647a41714ecE+0x1fc>
   81c68: 28 40 00 f1  	subs	x8, x1, #16
   81c6c: 62 01 00 54  	b.hs	0x81c98 <_ZN68_$LT$core..fmt..builders..PadAdapter$u20$as$u20$core..fmt..Write$GT$9write_str17h3825e647a41714ecE+0xdc>
   81c70: 41 0a 00 b4  	cbz	x1, 0x81db8 <_ZN68_$LT$core..fmt..builders..PadAdapter$u20$as$u20$core..fmt..Write$GT$9write_str17h3825e647a41714ecE+0x1fc>
   81c74: e9 03 1f aa  	mov	x9, xzr
   81c78: 88 02 17 8b  	add	x8, x20, x23
   81c7c: 0a 69 69 38  	ldrb	w10, [x8, x9]
   81c80: 5f 29 00 71  	cmp	w10, #10
   81c84: 40 07 00 54  	b.eq	0x81d6c <_ZN68_$LT$core..fmt..builders..PadAdapter$u20$as$u20$core..fmt..Write$GT$9write_str17h3825e647a41714ecE+0x1b0>
   81c88: 29 05 00 91  	add	x9, x9, #1
   81c8c: 3f 00 09 eb  	cmp	x1, x9
   81c90: 61 ff ff 54  	b.ne	0x81c7c <_ZN68_$LT$core..fmt..builders..PadAdapter$u20$as$u20$core..fmt..Write$GT$9write_str17h3825e647a41714ecE+0xc0>
   81c94: 49 00 00 14  	b	0x81db8 <_ZN68_$LT$core..fmt..builders..PadAdapter$u20$as$u20$core..fmt..Write$GT$9write_str17h3825e647a41714ecE+0x1fc>
   81c98: 89 02 17 8b  	add	x9, x20, x23
   81c9c: 2a 1d 00 91  	add	x10, x9, #7
   81ca0: 4a f1 7d 92  	and	x10, x10, #0xfffffffffffffff8
   81ca4: 4a 01 09 eb  	subs	x10, x10, x9
   81ca8: c0 01 00 54  	b.eq	0x81ce0 <_ZN68_$LT$core..fmt..builders..PadAdapter$u20$as$u20$core..fmt..Write$GT$9write_str17h3825e647a41714ecE+0x124>
   81cac: 5f 01 01 eb  	cmp	x10, x1
   81cb0: e9 03 1f aa  	mov	x9, xzr
   81cb4: 20 80 8a 9a  	csel	x0, x1, x10, hi
   81cb8: 8a 02 17 8b  	add	x10, x20, x23
   81cbc: 4b 69 69 38  	ldrb	w11, [x10, x9]
   81cc0: 7f 29 00 71  	cmp	w11, #10
   81cc4: 40 05 00 54  	b.eq	0x81d6c <_ZN68_$LT$core..fmt..builders..PadAdapter$u20$as$u20$core..fmt..Write$GT$9write_str17h3825e647a41714ecE+0x1b0>
   81cc8: 29 05 00 91  	add	x9, x9, #1
   81ccc: 1f 00 09 eb  	cmp	x0, x9
   81cd0: 61 ff ff 54  	b.ne	0x81cbc <_ZN68_$LT$core..fmt..builders..PadAdapter$u20$as$u20$core..fmt..Write$GT$9write_str17h3825e647a41714ecE+0x100>
   81cd4: 1f 00 08 eb  	cmp	x0, x8
   81cd8: 69 00 00 54  	b.ls	0x81ce4 <_ZN68_$LT$core..fmt..builders..PadAdapter$u20$as$u20$core..fmt..Write$GT$9write_str17h3825e647a41714ecE+0x128>
   81cdc: 16 00 00 14  	b	0x81d34 <_ZN68_$LT$core..fmt..builders..PadAdapter$u20$as$u20$core..fmt..Write$GT$9write_str17h3825e647a41714ecE+0x178>
   81ce0: e0 03 1f aa  	mov	x0, xzr
   81ce4: 89 02 17 8b  	add	x9, x20, x23
   81ce8: 2a 01 00 8b  	add	x10, x9, x0
   81cec: 4b 05 40 f9  	ldr	x11, [x10, #8]
   81cf0: eb 0f 00 f9  	str	x11, [sp, #24]
   81cf4: 4a 01 40 f9  	ldr	x10, [x10]
   81cf8: ea 0b 00 f9  	str	x10, [sp, #16]
   81cfc: e0 07 c0 3d  	ldr	q0, [sp, #16]
   81d00: 01 1c 22 6e  	eor	v1.16b, v0.16b, v2.16b
   81d04: 21 84 e3 4e  	add	v1.2d, v1.2d, v3.2d
   81d08: 20 1c 60 4e  	bic	v0.16b, v1.16b, v0.16b
   81d0c: 00 1c 24 4e  	and	v0.16b, v0.16b, v4.16b
   81d10: 01 04 18 4e  	dup	v1.2d, v0.d[1]
   81d14: 20 1c a0 4e  	orr	v0.16b, v1.16b, v0.16b
   81d18: 0a 00 66 9e  	fmov	x10, d0
   81d1c: 8a 00 00 b5  	cbnz	x10, 0x81d2c <_ZN68_$LT$core..fmt..builders..PadAdapter$u20$as$u20$core..fmt..Write$GT$9write_str17h3825e647a41714ecE+0x170>
   81d20: 00 40 00 91  	add	x0, x0, #16
   81d24: 1f 00 08 eb  	cmp	x0, x8
   81d28: 09 fe ff 54  	b.ls	0x81ce8 <_ZN68_$LT$core..fmt..builders..PadAdapter$u20$as$u20$core..fmt..Write$GT$9write_str17h3825e647a41714ecE+0x12c>
   81d2c: 1f 00 01 eb  	cmp	x0, x1
   81d30: 88 09 00 54  	b.hi	0x81e60 <_ZN68_$LT$core..fmt..builders..PadAdapter$u20$as$u20$core..fmt..Write$GT$9write_str17h3825e647a41714ecE+0x2a4>
   81d34: 1f 00 01 eb  	cmp	x0, x1
   81d38: 00 04 00 54  	b.eq	0x81db8 <_ZN68_$LT$core..fmt..builders..PadAdapter$u20$as$u20$core..fmt..Write$GT$9write_str17h3825e647a41714ecE+0x1fc>
   81d3c: 09 00 17 8b  	add	x9, x0, x23
   81d40: e8 03 1f aa  	mov	x8, xzr
   81d44: 89 02 09 8b  	add	x9, x20, x9
   81d48: 2a 00 00 cb  	sub	x10, x1, x0
   81d4c: 2b 69 68 38  	ldrb	w11, [x9, x8]
   81d50: 7f 29 00 71  	cmp	w11, #10
   81d54: a0 00 00 54  	b.eq	0x81d68 <_ZN68_$LT$core..fmt..builders..PadAdapter$u20$as$u20$core..fmt..Write$GT$9write_str17h3825e647a41714ecE+0x1ac>
   81d58: 08 05 00 91  	add	x8, x8, #1
   81d5c: 5f 01 08 eb  	cmp	x10, x8
   81d60: 61 ff ff 54  	b.ne	0x81d4c <_ZN68_$LT$core..fmt..builders..PadAdapter$u20$as$u20$core..fmt..Write$GT$9write_str17h3825e647a41714ecE+0x190>
   81d64: 15 00 00 14  	b	0x81db8 <_ZN68_$LT$core..fmt..builders..PadAdapter$u20$as$u20$core..fmt..Write$GT$9write_str17h3825e647a41714ecE+0x1fc>
   81d68: 09 00 08 8b  	add	x9, x0, x8
   81d6c: 28 01 17 8b  	add	x8, x9, x23
   81d70: 1f 01 13 eb  	cmp	x8, x19
   81d74: 17 05 00 91  	add	x23, x8, #1
   81d78: 02 f7 ff 54  	b.hs	0x81c58 <_ZN68_$LT$core..fmt..builders..PadAdapter$u20$as$u20$core..fmt..Write$GT$9write_str17h3825e647a41714ecE+0x9c>
   81d7c: 88 6a 68 38  	ldrb	w8, [x20, x8]
   81d80: 1f 29 00 71  	cmp	w8, #10
   81d84: a1 f6 ff 54  	b.ne	0x81c58 <_ZN68_$LT$core..fmt..builders..PadAdapter$u20$as$u20$core..fmt..Write$GT$9write_str17h3825e647a41714ecE+0x9c>
   81d88: 28 00 80 52  	mov	w8, #1
   81d8c: 7f 02 17 eb  	cmp	x19, x23
   81d90: 08 03 00 39  	strb	w8, [x24]
   81d94: c8 01 00 54  	b.hi	0x81dcc <_ZN68_$LT$core..fmt..builders..PadAdapter$u20$as$u20$core..fmt..Write$GT$9write_str17h3825e647a41714ecE+0x210>
   81d98: 41 05 00 54  	b.ne	0x81e40 <_ZN68_$LT$core..fmt..builders..PadAdapter$u20$as$u20$core..fmt..Write$GT$9write_str17h3825e647a41714ecE+0x284>
   81d9c: 28 0f 40 f9  	ldr	x8, [x25, #24]
   81da0: e0 03 15 aa  	mov	x0, x21
   81da4: e1 03 14 aa  	mov	x1, x20
   81da8: e2 03 13 aa  	mov	x2, x19
   81dac: 00 01 3f d6  	blr	x8
   81db0: c0 f2 07 36  	tbz	w0, #0, 0x81c08 <_ZN68_$LT$core..fmt..builders..PadAdapter$u20$as$u20$core..fmt..Write$GT$9write_str17h3825e647a41714ecE+0x4c>
   81db4: 1c 00 00 14  	b	0x81e24 <_ZN68_$LT$core..fmt..builders..PadAdapter$u20$as$u20$core..fmt..Write$GT$9write_str17h3825e647a41714ecE+0x268>
   81db8: e8 03 1f 2a  	mov	w8, wzr
   81dbc: f7 03 13 aa  	mov	x23, x19
   81dc0: 7f 02 17 eb  	cmp	x19, x23
   81dc4: 08 03 00 39  	strb	w8, [x24]
   81dc8: 89 fe ff 54  	b.ls	0x81d98 <_ZN68_$LT$core..fmt..builders..PadAdapter$u20$as$u20$core..fmt..Write$GT$9write_str17h3825e647a41714ecE+0x1dc>
   81dcc: 88 6a f7 38  	ldrsb	w8, [x20, x23]
   81dd0: 1f 05 01 31  	cmn	w8, #65
   81dd4: 6d 03 00 54  	b.le	0x81e40 <_ZN68_$LT$core..fmt..builders..PadAdapter$u20$as$u20$core..fmt..Write$GT$9write_str17h3825e647a41714ecE+0x284>
   81dd8: 28 0f 40 f9  	ldr	x8, [x25, #24]
   81ddc: e0 03 15 aa  	mov	x0, x21
   81de0: e1 03 14 aa  	mov	x1, x20
   81de4: e2 03 17 aa  	mov	x2, x23
   81de8: 00 01 3f d6  	blr	x8
   81dec: c0 01 00 37  	tbnz	w0, #0, 0x81e24 <_ZN68_$LT$core..fmt..builders..PadAdapter$u20$as$u20$core..fmt..Write$GT$9write_str17h3825e647a41714ecE+0x268>
   81df0: 88 6a f7 38  	ldrsb	w8, [x20, x23]
   81df4: 1f 05 01 31  	cmn	w8, #65
   81df8: 8c f0 ff 54  	b.gt	0x81c08 <_ZN68_$LT$core..fmt..builders..PadAdapter$u20$as$u20$core..fmt..Write$GT$9write_str17h3825e647a41714ecE+0x4c>
   81dfc: 24 00 00 90  	adrp	x4, 0x85000 <_ZN68_$LT$core..fmt..builders..PadAdapter$u20$as$u20$core..fmt..Write$GT$9write_str17h3825e647a41714ecE+0x250>
   81e00: 84 80 29 91  	add	x4, x4, #2656
   81e04: e0 03 14 aa  	mov	x0, x20
   81e08: e1 03 13 aa  	mov	x1, x19
   81e0c: e2 03 17 aa  	mov	x2, x23
   81e10: e3 03 13 aa  	mov	x3, x19
   81e14: 17 00 00 94  	bl	0x81e70 <_ZN4core3str16slice_error_fail17hcc0d3c3105355e6aE>
   81e18: 20 00 20 d4  	brk	#0x1
   81e1c: e0 03 1f 2a  	mov	w0, wzr
   81e20: 02 00 00 14  	b	0x81e28 <_ZN68_$LT$core..fmt..builders..PadAdapter$u20$as$u20$core..fmt..Write$GT$9write_str17h3825e647a41714ecE+0x26c>
   81e24: 20 00 80 52  	mov	w0, #1
   81e28: f4 4f 45 a9  	ldp	x20, x19, [sp, #80]
   81e2c: f6 57 44 a9  	ldp	x22, x21, [sp, #64]
   81e30: f8 5f 43 a9  	ldp	x24, x23, [sp, #48]
   81e34: fe 67 42 a9  	ldp	x30, x25, [sp, #32]
   81e38: ff 83 01 91  	add	sp, sp, #96
   81e3c: c0 03 5f d6  	ret
   81e40: 24 00 00 90  	adrp	x4, 0x85000 <_ZN68_$LT$core..fmt..builders..PadAdapter$u20$as$u20$core..fmt..Write$GT$9write_str17h3825e647a41714ecE+0x294>
   81e44: 84 20 29 91  	add	x4, x4, #2632
   81e48: e0 03 14 aa  	mov	x0, x20
   81e4c: e1 03 13 aa  	mov	x1, x19
   81e50: e2 03 1f aa  	mov	x2, xzr
   81e54: e3 03 17 aa  	mov	x3, x23
   81e58: 06 00 00 94  	bl	0x81e70 <_ZN4core3str16slice_error_fail17hcc0d3c3105355e6aE>
   81e5c: 20 00 20 d4  	brk	#0x1
   81e60: 22 00 00 90  	adrp	x2, 0x85000 <_ZN4core3str16slice_error_fail17hcc0d3c3105355e6aE>
   81e64: 42 60 28 91  	add	x2, x2, #2584
   81e68: 71 fd ff 97  	bl	0x8142c <_ZN4core5slice5index26slice_start_index_len_fail17ha3ad23336e78e7f7E>
   81e6c: 20 00 20 d4  	brk	#0x1

0000000000081e70 <_ZN4core3str16slice_error_fail17hcc0d3c3105355e6aE>:
   81e70: e2 0f b3 a9  	stp	x2, x3, [sp, #-208]!
   81e74: 3f 04 04 f1  	cmp	x1, #257
   81e78: 22 01 00 54  	b.hs	0x81e9c <_ZN4core3str16slice_error_fail17hcc0d3c3105355e6aE+0x2c>
   81e7c: 29 00 00 90  	adrp	x9, 0x85000 <_ZN4core3str16slice_error_fail17hcc0d3c3105355e6aE+0x1c>
   81e80: 29 c1 1d 91  	add	x9, x9, #1904
   81e84: e8 03 1f aa  	mov	x8, xzr
   81e88: e0 07 01 a9  	stp	x0, x1, [sp, #16]
   81e8c: e9 23 02 a9  	stp	x9, x8, [sp, #32]
   81e90: 5f 00 01 eb  	cmp	x2, x1
   81e94: a9 02 00 54  	b.ls	0x81ee8 <_ZN4core3str16slice_error_fail17hcc0d3c3105355e6aE+0x78>
   81e98: 2b 00 00 14  	b	0x81f44 <_ZN4core3str16slice_error_fail17hcc0d3c3105355e6aE+0xd4>
   81e9c: 08 20 80 52  	mov	w8, #256
   81ea0: 06 00 00 14  	b	0x81eb8 <_ZN4core3str16slice_error_fail17hcc0d3c3105355e6aE+0x48>
   81ea4: 09 68 e8 38  	ldrsb	w9, [x0, x8]
   81ea8: 3f 05 01 31  	cmn	w9, #65
   81eac: 0c 01 00 54  	b.gt	0x81ecc <_ZN4core3str16slice_error_fail17hcc0d3c3105355e6aE+0x5c>
   81eb0: 08 05 00 f1  	subs	x8, x8, #1
   81eb4: c0 00 00 54  	b.eq	0x81ecc <_ZN4core3str16slice_error_fail17hcc0d3c3105355e6aE+0x5c>
   81eb8: 1f 01 01 eb  	cmp	x8, x1
   81ebc: 43 ff ff 54  	b.lo	0x81ea4 <_ZN4core3str16slice_error_fail17hcc0d3c3105355e6aE+0x34>
   81ec0: 3f 00 08 eb  	cmp	x1, x8
   81ec4: 61 ff ff 54  	b.ne	0x81eb0 <_ZN4core3str16slice_error_fail17hcc0d3c3105355e6aE+0x40>
   81ec8: e8 03 01 aa  	mov	x8, x1
   81ecc: e0 23 01 a9  	stp	x0, x8, [sp, #16]
   81ed0: 28 00 00 90  	adrp	x8, 0x85000 <_ZN4core3str16slice_error_fail17hcc0d3c3105355e6aE+0x70>
   81ed4: 09 e1 29 91  	add	x9, x8, #2680
   81ed8: a8 00 80 52  	mov	w8, #5
   81edc: 5f 00 01 eb  	cmp	x2, x1
   81ee0: e9 23 02 a9  	stp	x9, x8, [sp, #32]
   81ee4: 08 03 00 54  	b.hi	0x81f44 <_ZN4core3str16slice_error_fail17hcc0d3c3105355e6aE+0xd4>
   81ee8: 7f 00 01 eb  	cmp	x3, x1
   81eec: c8 02 00 54  	b.hi	0x81f44 <_ZN4core3str16slice_error_fail17hcc0d3c3105355e6aE+0xd4>
   81ef0: 5f 00 03 eb  	cmp	x2, x3
   81ef4: 89 05 00 54  	b.ls	0x81fa4 <_ZN4core3str16slice_error_fail17hcc0d3c3105355e6aE+0x134>
   81ef8: e9 ff ff f0  	adrp	x9, 0x80000 <_ZN4core3str16slice_error_fail17hcc0d3c3105355e6aE+0x84>
   81efc: e8 03 00 91  	mov	x8, sp
   81f00: 29 a1 3c 91  	add	x9, x9, #3880
   81f04: 0c 00 00 90  	adrp	x12, 0x81000 <_ZN4core3str16slice_error_fail17hcc0d3c3105355e6aE+0x94>
   81f08: 2e 00 00 90  	adrp	x14, 0x85000 <_ZN4core3str16slice_error_fail17hcc0d3c3105355e6aE+0xa8>
   81f0c: ea 23 00 91  	add	x10, sp, #8
   81f10: eb 43 00 91  	add	x11, sp, #16
   81f14: 8c c1 13 91  	add	x12, x12, #1264
   81f18: ed 83 00 91  	add	x13, sp, #32
   81f1c: ce c1 2a 91  	add	x14, x14, #2736
   81f20: e8 27 08 a9  	stp	x8, x9, [sp, #128]
   81f24: 88 00 80 52  	mov	w8, #4
   81f28: ea 27 09 a9  	stp	x10, x9, [sp, #144]
   81f2c: ff 7f 06 a9  	stp	xzr, xzr, [sp, #96]
   81f30: eb 33 0a a9  	stp	x11, x12, [sp, #160]
   81f34: ed 33 0b a9  	stp	x13, x12, [sp, #176]
   81f38: e9 03 02 91  	add	x9, sp, #128
   81f3c: ee 23 05 a9  	stp	x14, x8, [sp, #80]
   81f40: 14 00 00 14  	b	0x81f90 <_ZN4core3str16slice_error_fail17hcc0d3c3105355e6aE+0x120>
   81f44: e9 ff ff f0  	adrp	x9, 0x80000 <_ZN4core3str16slice_error_fail17hcc0d3c3105355e6aE+0xd0>
   81f48: 5f 00 01 eb  	cmp	x2, x1
   81f4c: e8 03 01 91  	add	x8, sp, #64
   81f50: 29 a1 3c 91  	add	x9, x9, #3880
   81f54: 0b 00 00 90  	adrp	x11, 0x81000 <_ZN4core3str16slice_error_fail17hcc0d3c3105355e6aE+0xe4>
   81f58: 2e 00 00 90  	adrp	x14, 0x85000 <_ZN4core3str16slice_error_fail17hcc0d3c3105355e6aE+0xf8>
   81f5c: ea 43 00 91  	add	x10, sp, #16
   81f60: 6b c1 13 91  	add	x11, x11, #1264
   81f64: ec 83 00 91  	add	x12, sp, #32
   81f68: 4d 80 83 9a  	csel	x13, x2, x3, hi
   81f6c: ce 01 2a 91  	add	x14, x14, #2688
   81f70: e8 27 08 a9  	stp	x8, x9, [sp, #128]
   81f74: 68 00 80 52  	mov	w8, #3
   81f78: e9 03 02 91  	add	x9, sp, #128
   81f7c: ff 7f 06 a9  	stp	xzr, xzr, [sp, #96]
   81f80: ea 2f 09 a9  	stp	x10, x11, [sp, #144]
   81f84: ec 2f 0a a9  	stp	x12, x11, [sp, #160]
   81f88: ee 23 05 a9  	stp	x14, x8, [sp, #80]
   81f8c: ed 23 00 f9  	str	x13, [sp, #64]
   81f90: e9 23 07 a9  	stp	x9, x8, [sp, #112]
   81f94: e0 43 01 91  	add	x0, sp, #80
   81f98: e1 03 04 aa  	mov	x1, x4
   81f9c: 41 fc ff 97  	bl	0x810a0 <_ZN4core9panicking9panic_fmt17h136e9995f1aed1cdE>
   81fa0: 20 00 20 d4  	brk	#0x1
   81fa4: 82 01 00 b5  	cbnz	x2, 0x81fd4 <_ZN4core3str16slice_error_fail17hcc0d3c3105355e6aE+0x164>
   81fa8: e3 1b 00 f9  	str	x3, [sp, #48]
   81fac: 23 04 00 b5  	cbnz	x3, 0x82030 <_ZN4core3str16slice_error_fail17hcc0d3c3105355e6aE+0x1c0>
   81fb0: e3 03 1f aa  	mov	x3, xzr
   81fb4: 7f 00 01 eb  	cmp	x3, x1
   81fb8: a1 01 00 54  	b.ne	0x81fec <_ZN4core3str16slice_error_fail17hcc0d3c3105355e6aE+0x17c>
   81fbc: 20 00 00 90  	adrp	x0, 0x85000 <_ZN4core3str16slice_error_fail17hcc0d3c3105355e6aE+0x15c>
   81fc0: 00 c0 2b 91  	add	x0, x0, #2800
   81fc4: 61 05 80 52  	mov	w1, #43
   81fc8: e2 03 04 aa  	mov	x2, x4
   81fcc: 3c fd ff 97  	bl	0x814bc <_ZN4core9panicking5panic17h0d86cd7d69f331f6E>
   81fd0: 20 00 20 d4  	brk	#0x1
   81fd4: 5f 00 01 eb  	cmp	x2, x1
   81fd8: a2 01 00 54  	b.hs	0x8200c <_ZN4core3str16slice_error_fail17hcc0d3c3105355e6aE+0x19c>
   81fdc: 08 68 e2 38  	ldrsb	w8, [x0, x2]
   81fe0: 1f 05 01 31  	cmn	w8, #65
   81fe4: 2c fe ff 54  	b.gt	0x81fa8 <_ZN4core3str16slice_error_fail17hcc0d3c3105355e6aE+0x138>
   81fe8: 0b 00 00 14  	b	0x82014 <_ZN4core3str16slice_error_fail17hcc0d3c3105355e6aE+0x1a4>
   81fec: 08 00 03 8b  	add	x8, x0, x3
   81ff0: eb 03 08 aa  	mov	x11, x8
   81ff4: 6a 15 c0 38  	ldrsb	w10, [x11], #1
   81ff8: 49 1d 00 12  	and	w9, w10, #0xff
   81ffc: 6a 02 f8 37  	tbnz	w10, #31, 0x82048 <_ZN4core3str16slice_error_fail17hcc0d3c3105355e6aE+0x1d8>
   82000: e9 3f 00 b9  	str	w9, [sp, #60]
   82004: 28 00 80 52  	mov	w8, #1
   82008: 44 00 00 14  	b	0x82118 <_ZN4core3str16slice_error_fail17hcc0d3c3105355e6aE+0x2a8>
   8200c: 3f 00 02 eb  	cmp	x1, x2
   82010: c0 fc ff 54  	b.eq	0x81fa8 <_ZN4core3str16slice_error_fail17hcc0d3c3105355e6aE+0x138>
   82014: e3 03 02 aa  	mov	x3, x2
   82018: e2 1b 00 f9  	str	x2, [sp, #48]
   8201c: 05 00 00 14  	b	0x82030 <_ZN4core3str16slice_error_fail17hcc0d3c3105355e6aE+0x1c0>
   82020: 3f 00 03 eb  	cmp	x1, x3
   82024: c0 fc ff 54  	b.eq	0x81fbc <_ZN4core3str16slice_error_fail17hcc0d3c3105355e6aE+0x14c>
   82028: 63 04 00 f1  	subs	x3, x3, #1
   8202c: 20 fc ff 54  	b.eq	0x81fb0 <_ZN4core3str16slice_error_fail17hcc0d3c3105355e6aE+0x140>
   82030: 7f 00 01 eb  	cmp	x3, x1
   82034: 62 ff ff 54  	b.hs	0x82020 <_ZN4core3str16slice_error_fail17hcc0d3c3105355e6aE+0x1b0>
   82038: 08 68 e3 38  	ldrsb	w8, [x0, x3]
   8203c: 1f 01 01 31  	cmn	w8, #64
   82040: 4b ff ff 54  	b.lt	0x82028 <_ZN4core3str16slice_error_fail17hcc0d3c3105355e6aE+0x1b8>
   82044: dc ff ff 17  	b	0x81fb4 <_ZN4core3str16slice_error_fail17hcc0d3c3105355e6aE+0x144>
   82048: 0a 00 01 8b  	add	x10, x0, x1
   8204c: 7f 01 0a eb  	cmp	x11, x10
   82050: 01 01 00 54  	b.ne	0x82070 <_ZN4core3str16slice_error_fail17hcc0d3c3105355e6aE+0x200>
   82054: e8 03 1f 2a  	mov	w8, wzr
   82058: ec 03 0a aa  	mov	x12, x10
   8205c: 3f 7d 03 71  	cmp	w9, #223
   82060: 2b 11 00 12  	and	w11, w9, #0x1f
   82064: 28 01 00 54  	b.hi	0x82088 <_ZN4core3str16slice_error_fail17hcc0d3c3105355e6aE+0x218>
   82068: 68 11 1a 33  	bfi	w8, w11, #6, #5
   8206c: 1f 00 00 14  	b	0x820e8 <_ZN4core3str16slice_error_fail17hcc0d3c3105355e6aE+0x278>
   82070: 0b 05 40 39  	ldrb	w11, [x8, #1]
   82074: 0c 09 00 91  	add	x12, x8, #2
   82078: 68 15 00 12  	and	w8, w11, #0x3f
   8207c: 3f 7d 03 71  	cmp	w9, #223
   82080: 2b 11 00 12  	and	w11, w9, #0x1f
   82084: 29 ff ff 54  	b.ls	0x82068 <_ZN4core3str16slice_error_fail17hcc0d3c3105355e6aE+0x1f8>
   82088: 9f 01 0a eb  	cmp	x12, x10
   8208c: 81 00 00 54  	b.ne	0x8209c <_ZN4core3str16slice_error_fail17hcc0d3c3105355e6aE+0x22c>
   82090: ed 03 1f 2a  	mov	w13, wzr
   82094: ec 03 0a aa  	mov	x12, x10
   82098: 03 00 00 14  	b	0x820a4 <_ZN4core3str16slice_error_fail17hcc0d3c3105355e6aE+0x234>
   8209c: 8d 15 40 38  	ldrb	w13, [x12], #1
   820a0: ad 15 00 12  	and	w13, w13, #0x3f
   820a4: 3f c1 03 71  	cmp	w9, #240
   820a8: 0d 15 1a 33  	bfi	w13, w8, #6, #6
   820ac: a3 00 00 54  	b.lo	0x820c0 <_ZN4core3str16slice_error_fail17hcc0d3c3105355e6aE+0x250>
   820b0: 9f 01 0a eb  	cmp	x12, x10
   820b4: c1 00 00 54  	b.ne	0x820cc <_ZN4core3str16slice_error_fail17hcc0d3c3105355e6aE+0x25c>
   820b8: e8 03 1f 2a  	mov	w8, wzr
   820bc: 06 00 00 14  	b	0x820d4 <_ZN4core3str16slice_error_fail17hcc0d3c3105355e6aE+0x264>
   820c0: 6d 11 14 33  	bfi	w13, w11, #12, #5
   820c4: e8 03 0d 2a  	mov	w8, w13
   820c8: 08 00 00 14  	b	0x820e8 <_ZN4core3str16slice_error_fail17hcc0d3c3105355e6aE+0x278>
   820cc: 88 01 40 39  	ldrb	w8, [x12]
   820d0: 08 15 00 12  	and	w8, w8, #0x3f
   820d4: 69 09 0e 53  	ubfiz	w9, w11, #18, #3
   820d8: a9 2d 1a 33  	bfi	w9, w13, #6, #12
   820dc: 28 01 08 2a  	orr	w8, w9, w8
   820e0: 1f 41 44 71  	cmp	w8, #272, lsl #12
   820e4: c0 f6 ff 54  	b.eq	0x81fbc <_ZN4core3str16slice_error_fail17hcc0d3c3105355e6aE+0x14c>
   820e8: 1f 01 02 71  	cmp	w8, #128
   820ec: e8 3f 00 b9  	str	w8, [sp, #60]
   820f0: 62 00 00 54  	b.hs	0x820fc <_ZN4core3str16slice_error_fail17hcc0d3c3105355e6aE+0x28c>
   820f4: 28 00 80 52  	mov	w8, #1
   820f8: 08 00 00 14  	b	0x82118 <_ZN4core3str16slice_error_fail17hcc0d3c3105355e6aE+0x2a8>
   820fc: 1f 01 20 71  	cmp	w8, #2048
   82100: 62 00 00 54  	b.hs	0x8210c <_ZN4core3str16slice_error_fail17hcc0d3c3105355e6aE+0x29c>
   82104: 48 00 80 52  	mov	w8, #2
   82108: 04 00 00 14  	b	0x82118 <_ZN4core3str16slice_error_fail17hcc0d3c3105355e6aE+0x2a8>
   8210c: 1f 41 40 71  	cmp	w8, #16, lsl #12
   82110: 68 00 80 52  	mov	w8, #3
   82114: 08 35 88 9a  	cinc	x8, x8, hs
   82118: 08 01 03 8b  	add	x8, x8, x3
   8211c: ea ff ff d0  	adrp	x10, 0x80000 <_ZN4core3str16slice_error_fail17hcc0d3c3105355e6aE+0x2a4>
   82120: e9 c3 00 91  	add	x9, sp, #48
   82124: 4a a1 3c 91  	add	x10, x10, #3880
   82128: 0c 00 00 90  	adrp	x12, 0x82000 <_ZN4core3str16slice_error_fail17hcc0d3c3105355e6aE+0x2b8>
   8212c: e3 23 04 a9  	stp	x3, x8, [sp, #64]
   82130: e8 ff ff f0  	adrp	x8, 0x81000 <_ZN4core3str16slice_error_fail17hcc0d3c3105355e6aE+0x2bc>
   82134: eb f3 00 91  	add	x11, sp, #60
   82138: 8c 51 06 91  	add	x12, x12, #404
   8213c: 0e 00 00 90  	adrp	x14, 0x82000 <_ZN4core3str16slice_error_fail17hcc0d3c3105355e6aE+0x2cc>
   82140: ef 43 00 91  	add	x15, sp, #16
   82144: 08 c1 13 91  	add	x8, x8, #1264
   82148: e9 2b 08 a9  	stp	x9, x10, [sp, #128]
   8214c: e9 83 00 91  	add	x9, sp, #32
   82150: 0a 00 00 f0  	adrp	x10, 0x85000 <_ZN4core3str16slice_error_fail17hcc0d3c3105355e6aE+0x2ec>
   82154: ed 03 01 91  	add	x13, sp, #64
   82158: ce 71 0e 91  	add	x14, x14, #924
   8215c: eb 33 09 a9  	stp	x11, x12, [sp, #144]
   82160: 4a 81 2c 91  	add	x10, x10, #2848
   82164: ab 00 80 52  	mov	w11, #5
   82168: ef 23 0b a9  	stp	x15, x8, [sp, #176]
   8216c: e9 23 0c a9  	stp	x9, x8, [sp, #192]
   82170: e8 03 02 91  	add	x8, sp, #128
   82174: ed 3b 0a a9  	stp	x13, x14, [sp, #160]
   82178: ff 7f 06 a9  	stp	xzr, xzr, [sp, #96]
   8217c: ea 2f 05 a9  	stp	x10, x11, [sp, #80]
   82180: e8 2f 07 a9  	stp	x8, x11, [sp, #112]
   82184: e0 43 01 91  	add	x0, sp, #80
   82188: e1 03 04 aa  	mov	x1, x4
   8218c: c5 fb ff 97  	bl	0x810a0 <_ZN4core9panicking9panic_fmt17h136e9995f1aed1cdE>
   82190: 20 00 20 d4  	brk	#0x1

0000000000082194 <_ZN41_$LT$char$u20$as$u20$core..fmt..Debug$GT$3fmt17hbb417021e48ac295E>:
   82194: ff 83 01 d1  	sub	sp, sp, #96
   82198: fe 6f 01 a9  	stp	x30, x27, [sp, #16]
   8219c: fa 67 02 a9  	stp	x26, x25, [sp, #32]
   821a0: f8 5f 03 a9  	stp	x24, x23, [sp, #48]
   821a4: f6 57 04 a9  	stp	x22, x21, [sp, #64]
   821a8: f4 4f 05 a9  	stp	x20, x19, [sp, #80]
   821ac: 33 20 42 a9  	ldp	x19, x8, [x1, #32]
   821b0: f4 03 00 aa  	mov	x20, x0
   821b4: e1 04 80 52  	mov	w1, #39
   821b8: 02 11 40 f9  	ldr	x2, [x8, #32]
   821bc: e0 03 13 aa  	mov	x0, x19
   821c0: e2 07 00 f9  	str	x2, [sp, #8]
   821c4: 40 00 3f d6  	blr	x2
   821c8: 20 01 00 36  	tbz	w0, #0, 0x821ec <_ZN41_$LT$char$u20$as$u20$core..fmt..Debug$GT$3fmt17hbb417021e48ac295E+0x58>
   821cc: f4 4f 45 a9  	ldp	x20, x19, [sp, #80]
   821d0: f6 57 44 a9  	ldp	x22, x21, [sp, #64]
   821d4: f8 5f 43 a9  	ldp	x24, x23, [sp, #48]
   821d8: fa 67 42 a9  	ldp	x26, x25, [sp, #32]
   821dc: fe 6f 41 a9  	ldp	x30, x27, [sp, #16]
   821e0: 20 00 80 52  	mov	w0, #1
   821e4: ff 83 01 91  	add	sp, sp, #96
   821e8: c0 03 5f d6  	ret
   821ec: 94 02 40 b9  	ldr	w20, [x20]
   821f0: 88 26 00 51  	sub	w8, w20, #9
   821f4: 1f 79 00 71  	cmp	w8, #30
   821f8: 88 01 00 54  	b.hi	0x82228 <_ZN41_$LT$char$u20$as$u20$core..fmt..Debug$GT$3fmt17hbb417021e48ac295E+0x94>
   821fc: 09 00 00 f0  	adrp	x9, 0x85000 <_ZN41_$LT$char$u20$as$u20$core..fmt..Debug$GT$3fmt17hbb417021e48ac295E+0x74>
   82200: 29 01 01 91  	add	x9, x9, #64
   82204: ca 00 00 10  	adr	x10, #24
   82208: 2b 69 68 38  	ldrb	w11, [x9, x8]
   8220c: 4a 09 0b 8b  	add	x10, x10, x11, lsl #2
   82210: 95 0e 80 52  	mov	w21, #116
   82214: 58 00 80 52  	mov	w24, #2
   82218: 40 01 1f d6  	br	x10
   8221c: d5 0d 80 52  	mov	w21, #110
   82220: 58 00 80 52  	mov	w24, #2
   82224: 1a 00 00 14  	b	0x8228c <_ZN41_$LT$char$u20$as$u20$core..fmt..Debug$GT$3fmt17hbb417021e48ac295E+0xf8>
   82228: 9f 72 01 71  	cmp	w20, #92
   8222c: 81 00 00 54  	b.ne	0x8223c <_ZN41_$LT$char$u20$as$u20$core..fmt..Debug$GT$3fmt17hbb417021e48ac295E+0xa8>
   82230: 58 00 80 52  	mov	w24, #2
   82234: f5 03 14 2a  	mov	w21, w20
   82238: 15 00 00 14  	b	0x8228c <_ZN41_$LT$char$u20$as$u20$core..fmt..Debug$GT$3fmt17hbb417021e48ac295E+0xf8>
   8223c: e0 03 14 2a  	mov	w0, w20
   82240: 0c 01 00 94  	bl	0x82670 <_ZN4core7unicode12unicode_data15grapheme_extend6lookup17h6270b00245d19f23E>
   82244: 40 01 00 37  	tbnz	w0, #0, 0x8226c <_ZN41_$LT$char$u20$as$u20$core..fmt..Debug$GT$3fmt17hbb417021e48ac295E+0xd8>
   82248: e0 03 14 2a  	mov	w0, w20
   8224c: 57 01 00 94  	bl	0x827a8 <_ZN4core7unicode9printable12is_printable17ha641fcfcb2036eb6E>
   82250: e0 00 00 36  	tbz	w0, #0, 0x8226c <_ZN41_$LT$char$u20$as$u20$core..fmt..Debug$GT$3fmt17hbb417021e48ac295E+0xd8>
   82254: 38 00 80 52  	mov	w24, #1
   82258: f5 03 14 2a  	mov	w21, w20
   8225c: 0c 00 00 14  	b	0x8228c <_ZN41_$LT$char$u20$as$u20$core..fmt..Debug$GT$3fmt17hbb417021e48ac295E+0xf8>
   82260: 55 0e 80 52  	mov	w21, #114
   82264: 58 00 80 52  	mov	w24, #2
   82268: 09 00 00 14  	b	0x8228c <_ZN41_$LT$char$u20$as$u20$core..fmt..Debug$GT$3fmt17hbb417021e48ac295E+0xf8>
   8226c: 88 02 00 32  	orr	w8, w20, #0x1
   82270: 08 11 c0 5a  	clz	w8, w8
   82274: e9 03 14 2a  	mov	w9, w20
   82278: aa 00 c0 d2  	mov	x10, #21474836480
   8227c: 08 7d 02 53  	lsr	w8, w8, #2
   82280: 37 01 0a aa  	orr	x23, x9, x10
   82284: 16 09 00 52  	eor	w22, w8, #0x7
   82288: 78 00 80 52  	mov	w24, #3
   8228c: 14 00 00 f0  	adrp	x20, 0x85000 <_ZN41_$LT$char$u20$as$u20$core..fmt..Debug$GT$3fmt17hbb417021e48ac295E+0x104>
   82290: 19 00 00 f0  	adrp	x25, 0x85000 <_ZN41_$LT$char$u20$as$u20$core..fmt..Debug$GT$3fmt17hbb417021e48ac295E+0x108>
   82294: 94 7e 01 91  	add	x20, x20, #95
   82298: 39 8f 01 91  	add	x25, x25, #99
   8229c: fa 0a 80 52  	mov	w26, #87
   822a0: 1b 06 80 52  	mov	w27, #48
   822a4: 07 00 00 14  	b	0x822c0 <_ZN41_$LT$char$u20$as$u20$core..fmt..Debug$GT$3fmt17hbb417021e48ac295E+0x12c>
   822a8: f8 03 1f 2a  	mov	w24, wzr
   822ac: e1 03 15 2a  	mov	w1, w21
   822b0: e2 07 40 f9  	ldr	x2, [sp, #8]
   822b4: e0 03 13 aa  	mov	x0, x19
   822b8: 40 00 3f d6  	blr	x2
   822bc: 80 f8 07 37  	tbnz	w0, #0, 0x821cc <_ZN41_$LT$char$u20$as$u20$core..fmt..Debug$GT$3fmt17hbb417021e48ac295E+0x38>
   822c0: e8 03 18 2a  	mov	w8, w24
   822c4: 29 ff ff 10  	adr	x9, #-28
   822c8: 8a 6a 68 38  	ldrb	w10, [x20, x8]
   822cc: 29 09 0a 8b  	add	x9, x9, x10, lsl #2
   822d0: 38 00 80 52  	mov	w24, #1
   822d4: 81 0b 80 52  	mov	w1, #92
   822d8: 20 01 1f d6  	br	x9
   822dc: e8 9e 60 d3  	ubfx	x8, x23, #32, #8
   822e0: 89 00 00 10  	adr	x9, #16
   822e4: 2a 6b 68 38  	ldrb	w10, [x25, x8]
   822e8: 29 09 0a 8b  	add	x9, x9, x10, lsl #2
   822ec: 20 01 1f d6  	br	x9
   822f0: f7 de 58 92  	and	x23, x23, #0xffffff00ffffffff
   822f4: 78 00 80 52  	mov	w24, #3
   822f8: a1 0f 80 52  	mov	w1, #125
   822fc: ed ff ff 17  	b	0x822b0 <_ZN41_$LT$char$u20$as$u20$core..fmt..Debug$GT$3fmt17hbb417021e48ac295E+0x11c>
   82300: c8 0a 1e 53  	ubfiz	w8, w22, #2, #3
   82304: e8 26 c8 1a  	lsr	w8, w23, w8
   82308: 08 0d 00 12  	and	w8, w8, #0xf
   8230c: 1f 29 00 71  	cmp	w8, #10
   82310: 69 33 9a 1a  	csel	w9, w27, w26, lo
   82314: 21 01 08 0b  	add	w1, w9, w8
   82318: 76 02 00 b4  	cbz	x22, 0x82364 <_ZN41_$LT$char$u20$as$u20$core..fmt..Debug$GT$3fmt17hbb417021e48ac295E+0x1d0>
   8231c: d6 06 00 d1  	sub	x22, x22, #1
   82320: 78 00 80 52  	mov	w24, #3
   82324: e3 ff ff 17  	b	0x822b0 <_ZN41_$LT$char$u20$as$u20$core..fmt..Debug$GT$3fmt17hbb417021e48ac295E+0x11c>
   82328: e8 de 58 92  	and	x8, x23, #0xffffff00ffffffff
   8232c: 78 00 80 52  	mov	w24, #3
   82330: 17 01 5f b2  	orr	x23, x8, #0x200000000
   82334: 61 0f 80 52  	mov	w1, #123
   82338: de ff ff 17  	b	0x822b0 <_ZN41_$LT$char$u20$as$u20$core..fmt..Debug$GT$3fmt17hbb417021e48ac295E+0x11c>
   8233c: e8 de 58 92  	and	x8, x23, #0xffffff00ffffffff
   82340: 78 00 80 52  	mov	w24, #3
   82344: 17 05 60 b2  	orr	x23, x8, #0x300000000
   82348: a1 0e 80 52  	mov	w1, #117
   8234c: d9 ff ff 17  	b	0x822b0 <_ZN41_$LT$char$u20$as$u20$core..fmt..Debug$GT$3fmt17hbb417021e48ac295E+0x11c>
   82350: e8 de 58 92  	and	x8, x23, #0xffffff00ffffffff
   82354: 78 00 80 52  	mov	w24, #3
   82358: 17 01 5e b2  	orr	x23, x8, #0x400000000
   8235c: 81 0b 80 52  	mov	w1, #92
   82360: d4 ff ff 17  	b	0x822b0 <_ZN41_$LT$char$u20$as$u20$core..fmt..Debug$GT$3fmt17hbb417021e48ac295E+0x11c>
   82364: e8 de 58 92  	and	x8, x23, #0xffffff00ffffffff
   82368: 17 01 60 b2  	orr	x23, x8, #0x100000000
   8236c: 78 00 80 52  	mov	w24, #3
   82370: d0 ff ff 17  	b	0x822b0 <_ZN41_$LT$char$u20$as$u20$core..fmt..Debug$GT$3fmt17hbb417021e48ac295E+0x11c>
   82374: e0 03 13 aa  	mov	x0, x19
   82378: e2 07 40 f9  	ldr	x2, [sp, #8]
   8237c: f4 4f 45 a9  	ldp	x20, x19, [sp, #80]
   82380: f6 57 44 a9  	ldp	x22, x21, [sp, #64]
   82384: f8 5f 43 a9  	ldp	x24, x23, [sp, #48]
   82388: fa 67 42 a9  	ldp	x26, x25, [sp, #32]
   8238c: fe 6f 41 a9  	ldp	x30, x27, [sp, #16]
   82390: e1 04 80 52  	mov	w1, #39
   82394: ff 83 01 91  	add	sp, sp, #96
   82398: 40 00 1f d6  	br	x2

000000000008239c <_ZN71_$LT$core..ops..range..Range$LT$Idx$GT$$u20$as$u20$core..fmt..Debug$GT$3fmt17hb02ca6d9aeb51757E>:
   8239c: ff 43 01 d1  	sub	sp, sp, #80
   823a0: fe 1b 00 f9  	str	x30, [sp, #48]
   823a4: f4 4f 04 a9  	stp	x20, x19, [sp, #64]
   823a8: f4 03 00 aa  	mov	x20, x0
   823ac: 00 00 40 f9  	ldr	x0, [x0]
   823b0: f3 03 01 aa  	mov	x19, x1
   823b4: 19 00 00 94  	bl	0x82418 <_ZN4core3fmt3num52_$LT$impl$u20$core..fmt..Debug$u20$for$u20$usize$GT$3fmt17h5db37932efbb435aE>
   823b8: a0 01 00 37  	tbnz	w0, #0, 0x823ec <_ZN71_$LT$core..ops..range..Range$LT$Idx$GT$$u20$as$u20$core..fmt..Debug$GT$3fmt17hb02ca6d9aeb51757E+0x50>
   823bc: 60 06 42 a9  	ldp	x0, x1, [x19, #32]
   823c0: 08 00 00 f0  	adrp	x8, 0x85000 <_ZN71_$LT$core..ops..range..Range$LT$Idx$GT$$u20$as$u20$core..fmt..Debug$GT$3fmt17hb02ca6d9aeb51757E+0x30>
   823c4: 08 41 27 91  	add	x8, x8, #2512
   823c8: 29 00 80 52  	mov	w9, #1
   823cc: e8 27 00 a9  	stp	x8, x9, [sp]
   823d0: 08 00 00 f0  	adrp	x8, 0x85000 <_ZN71_$LT$core..ops..range..Range$LT$Idx$GT$$u20$as$u20$core..fmt..Debug$GT$3fmt17hb02ca6d9aeb51757E+0x40>
   823d4: 08 c1 1d 91  	add	x8, x8, #1904
   823d8: e2 03 00 91  	mov	x2, sp
   823dc: ff 7f 01 a9  	stp	xzr, xzr, [sp, #16]
   823e0: e8 7f 02 a9  	stp	x8, xzr, [sp, #32]
   823e4: 4f fd ff 97  	bl	0x81920 <_ZN4core3fmt5write17h63775af3066fbce8E>
   823e8: c0 00 00 34  	cbz	w0, 0x82400 <_ZN71_$LT$core..ops..range..Range$LT$Idx$GT$$u20$as$u20$core..fmt..Debug$GT$3fmt17hb02ca6d9aeb51757E+0x64>
   823ec: f4 4f 44 a9  	ldp	x20, x19, [sp, #64]
   823f0: fe 1b 40 f9  	ldr	x30, [sp, #48]
   823f4: 20 00 80 52  	mov	w0, #1
   823f8: ff 43 01 91  	add	sp, sp, #80
   823fc: c0 03 5f d6  	ret
   82400: 80 06 40 f9  	ldr	x0, [x20, #8]
   82404: e1 03 13 aa  	mov	x1, x19
   82408: f4 4f 44 a9  	ldp	x20, x19, [sp, #64]
   8240c: fe 1b 40 f9  	ldr	x30, [sp, #48]
   82410: ff 43 01 91  	add	sp, sp, #80
   82414: 01 00 00 14  	b	0x82418 <_ZN4core3fmt3num52_$LT$impl$u20$core..fmt..Debug$u20$for$u20$usize$GT$3fmt17h5db37932efbb435aE>

0000000000082418 <_ZN4core3fmt3num52_$LT$impl$u20$core..fmt..Debug$u20$for$u20$usize$GT$3fmt17h5db37932efbb435aE>:
   82418: ff 43 02 d1  	sub	sp, sp, #144
   8241c: fe 43 00 f9  	str	x30, [sp, #128]
   82420: 29 30 40 b9  	ldr	w9, [x1, #48]
   82424: e8 03 01 aa  	mov	x8, x1
   82428: a9 05 20 37  	tbnz	w9, #4, 0x824dc <_ZN4core3fmt3num52_$LT$impl$u20$core..fmt..Debug$u20$for$u20$usize$GT$3fmt17h5db37932efbb435aE+0xc4>
   8242c: 69 07 28 37  	tbnz	w9, #5, 0x82518 <_ZN4core3fmt3num52_$LT$impl$u20$core..fmt..Debug$u20$for$u20$usize$GT$3fmt17h5db37932efbb435aE+0x100>
   82430: 09 fc 44 d3  	lsr	x9, x0, #4
   82434: 3f c5 09 f1  	cmp	x9, #625
   82438: c3 0a 00 54  	b.lo	0x82590 <_ZN4core3fmt3num52_$LT$impl$u20$core..fmt..Debug$u20$for$u20$usize$GT$3fmt17h5db37932efbb435aE+0x178>
   8243c: 6a 29 8b d2  	mov	x10, #22859
   82440: ca 10 a7 f2  	movk	x10, #14470, lsl #16
   82444: ca ba d8 f2  	movk	x10, #50646, lsl #32
   82448: ec a3 90 52  	mov	w12, #34079
   8244c: 0e 00 00 f0  	adrp	x14, 0x85000 <_ZN4core3fmt3num52_$LT$impl$u20$core..fmt..Debug$u20$for$u20$usize$GT$3fmt17h5db37932efbb435aE+0x40>
   82450: f0 1f 9c 52  	mov	w16, #57599
   82454: e9 03 1f aa  	mov	x9, xzr
   82458: aa 8d e6 f2  	movk	x10, #13421, lsl #48
   8245c: eb e1 84 12  	mov	w11, #-10000
   82460: 6c 3d aa 72  	movk	w12, #20971, lsl #16
   82464: 6d 0c 80 12  	mov	w13, #-100
   82468: ce 09 20 91  	add	x14, x14, #2050
   8246c: ef 03 00 91  	mov	x15, sp
   82470: b0 be a0 72  	movk	w16, #1525, lsl #16
   82474: 12 7c ca 9b  	umulh	x18, x0, x10
   82478: f1 03 00 aa  	mov	x17, x0
   8247c: 1f 00 10 eb  	cmp	x0, x16
   82480: 40 fe 4b d3  	lsr	x0, x18, #11
   82484: 11 44 0b 1b  	madd	w17, w0, w11, w17
   82488: 32 3e 00 12  	and	w18, w17, #0xffff
   8248c: 52 7e ac 9b  	umull	x18, w18, w12
   82490: 52 fe 65 d3  	lsr	x18, x18, #37
   82494: 51 46 0d 1b  	madd	w17, w18, w13, w17
   82498: d2 05 12 8b  	add	x18, x14, x18, lsl #1
   8249c: d1 25 31 8b  	add	x17, x14, w17, uxth #1
   824a0: 42 02 40 39  	ldrb	w2, [x18]
   824a4: 52 06 40 39  	ldrb	w18, [x18, #1]
   824a8: 23 06 40 39  	ldrb	w3, [x17, #1]
   824ac: 31 02 40 39  	ldrb	w17, [x17]
   824b0: e1 01 09 8b  	add	x1, x15, x9
   824b4: 29 11 00 d1  	sub	x9, x9, #4
   824b8: 32 90 00 39  	strb	w18, [x1, #36]
   824bc: 22 8c 00 39  	strb	w2, [x1, #35]
   824c0: 23 98 00 39  	strb	w3, [x1, #38]
   824c4: 31 94 00 39  	strb	w17, [x1, #37]
   824c8: 68 fd ff 54  	b.hi	0x82474 <_ZN4core3fmt3num52_$LT$impl$u20$core..fmt..Debug$u20$for$u20$usize$GT$3fmt17h5db37932efbb435aE+0x5c>
   824cc: 29 9d 00 91  	add	x9, x9, #39
   824d0: 1f 8c 01 f1  	cmp	x0, #99
   824d4: 4c 06 00 54  	b.gt	0x8259c <_ZN4core3fmt3num52_$LT$impl$u20$core..fmt..Debug$u20$for$u20$usize$GT$3fmt17h5db37932efbb435aE+0x184>
   824d8: 43 00 00 14  	b	0x825e4 <_ZN4core3fmt3num52_$LT$impl$u20$core..fmt..Debug$u20$for$u20$usize$GT$3fmt17h5db37932efbb435aE+0x1cc>
   824dc: e9 03 1f aa  	mov	x9, xzr
   824e0: ea 03 00 91  	mov	x10, sp
   824e4: 0d 0c 00 12  	and	w13, w0, #0xf
   824e8: 0e 06 80 52  	mov	w14, #48
   824ec: 0c fc 44 d3  	lsr	x12, x0, #4
   824f0: 0e 0c 00 33  	bfxil	w14, w0, #0, #4
   824f4: af 5d 01 11  	add	w15, w13, #87
   824f8: bf 29 00 71  	cmp	w13, #10
   824fc: 4b 01 09 8b  	add	x11, x10, x9
   82500: cd 31 8f 1a  	csel	w13, w14, w15, lo
   82504: 29 05 00 d1  	sub	x9, x9, #1
   82508: e0 03 0c aa  	mov	x0, x12
   8250c: 6d fd 01 39  	strb	w13, [x11, #127]
   82510: ac fe ff b5  	cbnz	x12, 0x824e4 <_ZN4core3fmt3num52_$LT$impl$u20$core..fmt..Debug$u20$for$u20$usize$GT$3fmt17h5db37932efbb435aE+0xcc>
   82514: 0f 00 00 14  	b	0x82550 <_ZN4core3fmt3num52_$LT$impl$u20$core..fmt..Debug$u20$for$u20$usize$GT$3fmt17h5db37932efbb435aE+0x138>
   82518: e9 03 1f aa  	mov	x9, xzr
   8251c: ea 03 00 91  	mov	x10, sp
   82520: 0d 0c 00 12  	and	w13, w0, #0xf
   82524: 0e 06 80 52  	mov	w14, #48
   82528: 0c fc 44 d3  	lsr	x12, x0, #4
   8252c: 0e 0c 00 33  	bfxil	w14, w0, #0, #4
   82530: af dd 00 11  	add	w15, w13, #55
   82534: bf 29 00 71  	cmp	w13, #10
   82538: 4b 01 09 8b  	add	x11, x10, x9
   8253c: cd 31 8f 1a  	csel	w13, w14, w15, lo
   82540: 29 05 00 d1  	sub	x9, x9, #1
   82544: e0 03 0c aa  	mov	x0, x12
   82548: 6d fd 01 39  	strb	w13, [x11, #127]
   8254c: ac fe ff b5  	cbnz	x12, 0x82520 <_ZN4core3fmt3num52_$LT$impl$u20$core..fmt..Debug$u20$for$u20$usize$GT$3fmt17h5db37932efbb435aE+0x108>
   82550: 20 01 02 91  	add	x0, x9, #128
   82554: 1f 04 02 f1  	cmp	x0, #129
   82558: 22 08 00 54  	b.hs	0x8265c <_ZN4core3fmt3num52_$LT$impl$u20$core..fmt..Debug$u20$for$u20$usize$GT$3fmt17h5db37932efbb435aE+0x244>
   8255c: ea 03 00 91  	mov	x10, sp
   82560: e5 03 09 cb  	neg	x5, x9
   82564: 49 01 09 8b  	add	x9, x10, x9
   82568: 02 00 00 f0  	adrp	x2, 0x85000 <_ZN4core3fmt3num52_$LT$impl$u20$core..fmt..Debug$u20$for$u20$usize$GT$3fmt17h5db37932efbb435aE+0x15c>
   8256c: 24 01 02 91  	add	x4, x9, #128
   82570: 42 a0 25 91  	add	x2, x2, #2408
   82574: 21 00 80 52  	mov	w1, #1
   82578: 43 00 80 52  	mov	w3, #2
   8257c: e0 03 08 aa  	mov	x0, x8
   82580: d7 fa ff 97  	bl	0x810dc <_ZN4core3fmt9Formatter12pad_integral17ha6f583ca7a70f44dE>
   82584: fe 43 40 f9  	ldr	x30, [sp, #128]
   82588: ff 43 02 91  	add	sp, sp, #144
   8258c: c0 03 5f d6  	ret
   82590: e9 04 80 52  	mov	w9, #39
   82594: 1f 8c 01 f1  	cmp	x0, #99
   82598: 6d 02 00 54  	b.le	0x825e4 <_ZN4core3fmt3num52_$LT$impl$u20$core..fmt..Debug$u20$for$u20$usize$GT$3fmt17h5db37932efbb435aE+0x1cc>
   8259c: eb a3 90 52  	mov	w11, #34079
   825a0: 0a 3c 00 12  	and	w10, w0, #0xffff
   825a4: 6b 3d aa 72  	movk	w11, #20971, lsl #16
   825a8: 4a 7d ab 9b  	umull	x10, w10, w11
   825ac: 6c 0c 80 12  	mov	w12, #-100
   825b0: 0b 00 00 f0  	adrp	x11, 0x85000 <_ZN4core3fmt3num52_$LT$impl$u20$core..fmt..Debug$u20$for$u20$usize$GT$3fmt17h5db37932efbb435aE+0x1a4>
   825b4: 4a fd 65 d3  	lsr	x10, x10, #37
   825b8: 6b 09 20 91  	add	x11, x11, #2050
   825bc: 4c 01 0c 1b  	madd	w12, w10, w12, w0
   825c0: 6b 25 2c 8b  	add	x11, x11, w12, uxth #1
   825c4: 6c 05 40 39  	ldrb	w12, [x11, #1]
   825c8: 6b 01 40 39  	ldrb	w11, [x11]
   825cc: 29 09 00 d1  	sub	x9, x9, #2
   825d0: ed 03 00 91  	mov	x13, sp
   825d4: ad 01 09 8b  	add	x13, x13, x9
   825d8: e0 03 0a aa  	mov	x0, x10
   825dc: ac 05 00 39  	strb	w12, [x13, #1]
   825e0: ab 01 00 39  	strb	w11, [x13]
   825e4: 1f 28 00 f1  	cmp	x0, #10
   825e8: ca 00 00 54  	b.ge	0x82600 <_ZN4core3fmt3num52_$LT$impl$u20$core..fmt..Debug$u20$for$u20$usize$GT$3fmt17h5db37932efbb435aE+0x1e8>
   825ec: 29 05 00 d1  	sub	x9, x9, #1
   825f0: 0a c0 00 11  	add	w10, w0, #48
   825f4: eb 03 00 91  	mov	x11, sp
   825f8: 6a 69 29 38  	strb	w10, [x11, x9]
   825fc: 0b 00 00 14  	b	0x82628 <_ZN4core3fmt3num52_$LT$impl$u20$core..fmt..Debug$u20$for$u20$usize$GT$3fmt17h5db37932efbb435aE+0x210>
   82600: 0a 00 00 f0  	adrp	x10, 0x85000 <_ZN4core3fmt3num52_$LT$impl$u20$core..fmt..Debug$u20$for$u20$usize$GT$3fmt17h5db37932efbb435aE+0x1f4>
   82604: 4a 09 20 91  	add	x10, x10, #2050
   82608: 4a 05 00 8b  	add	x10, x10, x0, lsl #1
   8260c: 4b 05 40 39  	ldrb	w11, [x10, #1]
   82610: 4a 01 40 39  	ldrb	w10, [x10]
   82614: 29 09 00 d1  	sub	x9, x9, #2
   82618: ec 03 00 91  	mov	x12, sp
   8261c: 8c 01 09 8b  	add	x12, x12, x9
   82620: 8b 05 00 39  	strb	w11, [x12, #1]
   82624: 8a 01 00 39  	strb	w10, [x12]
   82628: ea 03 00 91  	mov	x10, sp
   8262c: eb 04 80 52  	mov	w11, #39
   82630: 02 00 00 f0  	adrp	x2, 0x85000 <_ZN4core3fmt3num52_$LT$impl$u20$core..fmt..Debug$u20$for$u20$usize$GT$3fmt17h5db37932efbb435aE+0x224>
   82634: 44 01 09 8b  	add	x4, x10, x9
   82638: 65 01 09 cb  	sub	x5, x11, x9
   8263c: 42 c0 1d 91  	add	x2, x2, #1904
   82640: 21 00 80 52  	mov	w1, #1
   82644: e0 03 08 aa  	mov	x0, x8
   82648: e3 03 1f aa  	mov	x3, xzr
   8264c: a4 fa ff 97  	bl	0x810dc <_ZN4core3fmt9Formatter12pad_integral17ha6f583ca7a70f44dE>
   82650: fe 43 40 f9  	ldr	x30, [sp, #128]
   82654: ff 43 02 91  	add	sp, sp, #144
   82658: c0 03 5f d6  	ret
   8265c: 02 00 00 f0  	adrp	x2, 0x85000 <_ZN4core3fmt3num52_$LT$impl$u20$core..fmt..Debug$u20$for$u20$usize$GT$3fmt17h5db37932efbb435aE+0x250>
   82660: 42 40 25 91  	add	x2, x2, #2384
   82664: 01 10 80 52  	mov	w1, #128
   82668: 71 fb ff 97  	bl	0x8142c <_ZN4core5slice5index26slice_start_index_len_fail17ha3ad23336e78e7f7E>
   8266c: 20 00 20 d4  	brk	#0x1

0000000000082670 <_ZN4core7unicode12unicode_data15grapheme_extend6lookup17h6270b00245d19f23E>:
   82670: 2a 00 00 90  	adrp	x10, 0x86000 <_ZN4core7unicode12unicode_data15grapheme_extend6lookup17h6270b00245d19f23E+0x10>
   82674: e8 03 1f aa  	mov	x8, xzr
   82678: 09 50 15 53  	lsl	w9, w0, #11
   8267c: ec 03 80 52  	mov	w12, #31
   82680: 4a 31 05 91  	add	x10, x10, #332
   82684: eb 03 80 52  	mov	w11, #31
   82688: 04 00 00 14  	b	0x82698 <_ZN4core7unicode12unicode_data15grapheme_extend6lookup17h6270b00245d19f23E+0x28>
   8268c: 88 05 00 91  	add	x8, x12, #1
   82690: 6c 01 08 eb  	subs	x12, x11, x8
   82694: 29 01 00 54  	b.ls	0x826b8 <_ZN4core7unicode12unicode_data15grapheme_extend6lookup17h6270b00245d19f23E+0x48>
   82698: 0c 05 4c 8b  	add	x12, x8, x12, lsr #1
   8269c: 4d 79 6c b8  	ldr	w13, [x10, x12, lsl #2]
   826a0: ad 51 15 53  	lsl	w13, w13, #11
   826a4: bf 01 09 6b  	cmp	w13, w9
   826a8: 23 ff ff 54  	b.lo	0x8268c <_ZN4core7unicode12unicode_data15grapheme_extend6lookup17h6270b00245d19f23E+0x1c>
   826ac: eb 03 0c aa  	mov	x11, x12
   826b0: 01 ff ff 54  	b.ne	0x82690 <_ZN4core7unicode12unicode_data15grapheme_extend6lookup17h6270b00245d19f23E+0x20>
   826b4: 88 05 00 91  	add	x8, x12, #1
   826b8: 1f 79 00 f1  	cmp	x8, #30
   826bc: e8 05 00 54  	b.hi	0x82778 <_ZN4core7unicode12unicode_data15grapheme_extend6lookup17h6270b00245d19f23E+0x108>
   826c0: 1f 79 00 f1  	cmp	x8, #30
   826c4: 21 01 00 54  	b.ne	0x826e8 <_ZN4core7unicode12unicode_data15grapheme_extend6lookup17h6270b00245d19f23E+0x78>
   826c8: 2b 56 80 52  	mov	w11, #689
   826cc: 09 05 00 f1  	subs	x9, x8, #1
   826d0: 63 01 00 54  	b.lo	0x826fc <_ZN4core7unicode12unicode_data15grapheme_extend6lookup17h6270b00245d19f23E+0x8c>
   826d4: 3f 7d 00 f1  	cmp	x9, #31
   826d8: c2 05 00 54  	b.hs	0x82790 <_ZN4core7unicode12unicode_data15grapheme_extend6lookup17h6270b00245d19f23E+0x120>
   826dc: 49 79 69 b8  	ldr	w9, [x10, x9, lsl #2]
   826e0: 2c 51 00 12  	and	w12, w9, #0x1fffff
   826e4: 07 00 00 14  	b	0x82700 <_ZN4core7unicode12unicode_data15grapheme_extend6lookup17h6270b00245d19f23E+0x90>
   826e8: 49 09 08 8b  	add	x9, x10, x8, lsl #2
   826ec: 29 05 40 b9  	ldr	w9, [x9, #4]
   826f0: 2b fd 55 d3  	lsr	x11, x9, #21
   826f4: 09 05 00 f1  	subs	x9, x8, #1
   826f8: e2 fe ff 54  	b.hs	0x826d4 <_ZN4core7unicode12unicode_data15grapheme_extend6lookup17h6270b00245d19f23E+0x64>
   826fc: ec 03 1f 2a  	mov	w12, wzr
   82700: 48 79 68 b8  	ldr	w8, [x10, x8, lsl #2]
   82704: 08 fd 55 d3  	lsr	x8, x8, #21
   82708: 09 05 00 91  	add	x9, x8, #1
   8270c: 7f 01 09 eb  	cmp	x11, x9
   82710: 60 02 00 54  	b.eq	0x8275c <_ZN4core7unicode12unicode_data15grapheme_extend6lookup17h6270b00245d19f23E+0xec>
   82714: 0a 00 0c 4b  	sub	w10, w0, w12
   82718: 1f c5 0a f1  	cmp	x8, #689
   8271c: 2c 56 80 52  	mov	w12, #689
   82720: 00 81 8c 9a  	csel	x0, x8, x12, hi
   82724: 2c 00 00 90  	adrp	x12, 0x86000 <_ZN4core7unicode12unicode_data15grapheme_extend6lookup17h6270b00245d19f23E+0xc4>
   82728: e9 03 1f 2a  	mov	w9, wzr
   8272c: 6b 05 00 d1  	sub	x11, x11, #1
   82730: 8c e1 07 91  	add	x12, x12, #504
   82734: 1f 00 08 eb  	cmp	x0, x8
   82738: 60 01 00 54  	b.eq	0x82764 <_ZN4core7unicode12unicode_data15grapheme_extend6lookup17h6270b00245d19f23E+0xf4>
   8273c: 8d 69 68 38  	ldrb	w13, [x12, x8]
   82740: 29 01 0d 0b  	add	w9, w9, w13
   82744: 3f 01 0a 6b  	cmp	w9, w10
   82748: a8 00 00 54  	b.hi	0x8275c <_ZN4core7unicode12unicode_data15grapheme_extend6lookup17h6270b00245d19f23E+0xec>
   8274c: 08 05 00 91  	add	x8, x8, #1
   82750: 7f 01 08 eb  	cmp	x11, x8
   82754: 01 ff ff 54  	b.ne	0x82734 <_ZN4core7unicode12unicode_data15grapheme_extend6lookup17h6270b00245d19f23E+0xc4>
   82758: e8 03 0b aa  	mov	x8, x11
   8275c: 00 01 00 12  	and	w0, w8, #0x1
   82760: c0 03 5f d6  	ret
   82764: 22 00 00 90  	adrp	x2, 0x86000 <_ZN4core7unicode12unicode_data15grapheme_extend6lookup17h6270b00245d19f23E+0x104>
   82768: 42 c0 12 91  	add	x2, x2, #1200
   8276c: 21 56 80 52  	mov	w1, #689
   82770: dc f9 ff 97  	bl	0x80ee0 <_ZN4core9panicking18panic_bounds_check17h8ada80d8af39de02E>
   82774: 20 00 20 d4  	brk	#0x1
   82778: 22 00 00 90  	adrp	x2, 0x86000 <_ZN4core7unicode12unicode_data15grapheme_extend6lookup17h6270b00245d19f23E+0x118>
   8277c: 42 20 07 91  	add	x2, x2, #456
   82780: e1 03 80 52  	mov	w1, #31
   82784: e0 03 08 aa  	mov	x0, x8
   82788: d6 f9 ff 97  	bl	0x80ee0 <_ZN4core9panicking18panic_bounds_check17h8ada80d8af39de02E>
   8278c: 20 00 20 d4  	brk	#0x1
   82790: 22 00 00 90  	adrp	x2, 0x86000 <_ZN4core7unicode12unicode_data15grapheme_extend6lookup17h6270b00245d19f23E+0x130>
   82794: 42 80 07 91  	add	x2, x2, #480
   82798: e1 03 80 52  	mov	w1, #31
   8279c: e0 03 09 aa  	mov	x0, x9
   827a0: d0 f9 ff 97  	bl	0x80ee0 <_ZN4core9panicking18panic_bounds_check17h8ada80d8af39de02E>
   827a4: 20 00 20 d4  	brk	#0x1

00000000000827a8 <_ZN4core7unicode9printable12is_printable17ha641fcfcb2036eb6E>:
   827a8: 1f 40 40 71  	cmp	w0, #16, lsl #12
   827ac: a2 04 00 54  	b.hs	0x82840 <_ZN4core7unicode9printable12is_printable17ha641fcfcb2036eb6E+0x98>
   827b0: 0c 00 00 f0  	adrp	x12, 0x85000 <_ZN4core7unicode9printable12is_printable17ha641fcfcb2036eb6E+0x14>
   827b4: 0b 00 00 f0  	adrp	x11, 0x85000 <_ZN4core7unicode9printable12is_printable17ha641fcfcb2036eb6E+0x18>
   827b8: 0d 00 00 f0  	adrp	x13, 0x85000 <_ZN4core7unicode9printable12is_printable17ha641fcfcb2036eb6E+0x1c>
   827bc: e9 03 1f aa  	mov	x9, xzr
   827c0: 8c 9d 2e 91  	add	x12, x12, #2983
   827c4: 0a 7c 08 53  	lsr	w10, w0, #8
   827c8: 6b 61 30 91  	add	x11, x11, #3096
   827cc: ad e5 2f 91  	add	x13, x13, #3065
   827d0: 88 01 40 39  	ldrb	w8, [x12]
   827d4: 8e 05 40 39  	ldrb	w14, [x12, #1]
   827d8: 8c 09 00 91  	add	x12, x12, #2
   827dc: 1f 01 2a 6b  	cmp	w8, w10, uxtb
   827e0: 28 01 0e 8b  	add	x8, x9, x14
   827e4: 81 01 00 54  	b.ne	0x82814 <_ZN4core7unicode9printable12is_printable17ha641fcfcb2036eb6E+0x6c>
   827e8: 1f 01 09 eb  	cmp	x8, x9
   827ec: a3 11 00 54  	b.lo	0x82a20 <_ZN4core7unicode9printable12is_printable17ha641fcfcb2036eb6E+0x278>
   827f0: 1f 89 04 f1  	cmp	x8, #290
   827f4: 28 12 00 54  	b.hi	0x82a38 <_ZN4core7unicode9printable12is_printable17ha641fcfcb2036eb6E+0x290>
   827f8: 69 01 09 8b  	add	x9, x11, x9
   827fc: ee 00 00 b4  	cbz	x14, 0x82818 <_ZN4core7unicode9printable12is_printable17ha641fcfcb2036eb6E+0x70>
   82800: 2f 15 40 38  	ldrb	w15, [x9], #1
   82804: ce 05 00 d1  	sub	x14, x14, #1
   82808: ff 01 20 6b  	cmp	w15, w0, uxtb
   8280c: 81 ff ff 54  	b.ne	0x827fc <_ZN4core7unicode9printable12is_printable17ha641fcfcb2036eb6E+0x54>
   82810: 32 00 00 14  	b	0x828d8 <_ZN4core7unicode9printable12is_printable17ha641fcfcb2036eb6E+0x130>
   82814: 88 00 00 54  	b.hi	0x82824 <_ZN4core7unicode9printable12is_printable17ha641fcfcb2036eb6E+0x7c>
   82818: 9f 01 0d eb  	cmp	x12, x13
   8281c: e9 03 08 aa  	mov	x9, x8
   82820: 81 fd ff 54  	b.ne	0x827d0 <_ZN4core7unicode9printable12is_printable17ha641fcfcb2036eb6E+0x28>
   82824: 0b 00 00 f0  	adrp	x11, 0x85000 <_ZN4core7unicode9printable12is_printable17ha641fcfcb2036eb6E+0x88>
   82828: 0a 00 00 f0  	adrp	x10, 0x85000 <_ZN4core7unicode9printable12is_printable17ha641fcfcb2036eb6E+0x8c>
   8282c: 09 3c 00 12  	and	w9, w0, #0xffff
   82830: 6b e9 34 91  	add	x11, x11, #3386
   82834: 28 00 80 52  	mov	w8, #1
   82838: 4a bd 39 91  	add	x10, x10, #3695
   8283c: 2f 00 00 14  	b	0x828f8 <_ZN4core7unicode9printable12is_printable17ha641fcfcb2036eb6E+0x150>
   82840: 1f 80 40 71  	cmp	w0, #32, lsl #12
   82844: 42 07 00 54  	b.hs	0x8292c <_ZN4core7unicode9printable12is_printable17ha641fcfcb2036eb6E+0x184>
   82848: 0c 00 00 f0  	adrp	x12, 0x85000 <_ZN4core7unicode9printable12is_printable17ha641fcfcb2036eb6E+0xac>
   8284c: 0b 00 00 f0  	adrp	x11, 0x85000 <_ZN4core7unicode9printable12is_printable17ha641fcfcb2036eb6E+0xb0>
   82850: 0d 00 00 f0  	adrp	x13, 0x85000 <_ZN4core7unicode9printable12is_printable17ha641fcfcb2036eb6E+0xb4>
   82854: e9 03 1f aa  	mov	x9, xzr
   82858: 8c 21 3a 91  	add	x12, x12, #3720
   8285c: 0a 7c 08 53  	lsr	w10, w0, #8
   82860: 6b 51 3b 91  	add	x11, x11, #3796
   82864: ad 51 3b 91  	add	x13, x13, #3796
   82868: 88 01 40 39  	ldrb	w8, [x12]
   8286c: 8e 05 40 39  	ldrb	w14, [x12, #1]
   82870: 8c 09 00 91  	add	x12, x12, #2
   82874: 1f 01 2a 6b  	cmp	w8, w10, uxtb
   82878: 28 01 0e 8b  	add	x8, x9, x14
   8287c: 81 01 00 54  	b.ne	0x828ac <_ZN4core7unicode9printable12is_printable17ha641fcfcb2036eb6E+0x104>
   82880: 1f 01 09 eb  	cmp	x8, x9
   82884: e3 0c 00 54  	b.lo	0x82a20 <_ZN4core7unicode9printable12is_printable17ha641fcfcb2036eb6E+0x278>
   82888: 1f bd 02 f1  	cmp	x8, #175
   8288c: e8 0d 00 54  	b.hi	0x82a48 <_ZN4core7unicode9printable12is_printable17ha641fcfcb2036eb6E+0x2a0>
   82890: 69 01 09 8b  	add	x9, x11, x9
   82894: ee 00 00 b4  	cbz	x14, 0x828b0 <_ZN4core7unicode9printable12is_printable17ha641fcfcb2036eb6E+0x108>
   82898: 2f 15 40 38  	ldrb	w15, [x9], #1
   8289c: ce 05 00 d1  	sub	x14, x14, #1
   828a0: ff 01 20 6b  	cmp	w15, w0, uxtb
   828a4: 81 ff ff 54  	b.ne	0x82894 <_ZN4core7unicode9printable12is_printable17ha641fcfcb2036eb6E+0xec>
   828a8: 0c 00 00 14  	b	0x828d8 <_ZN4core7unicode9printable12is_printable17ha641fcfcb2036eb6E+0x130>
   828ac: 88 00 00 54  	b.hi	0x828bc <_ZN4core7unicode9printable12is_printable17ha641fcfcb2036eb6E+0x114>
   828b0: 9f 01 0d eb  	cmp	x12, x13
   828b4: e9 03 08 aa  	mov	x9, x8
   828b8: 81 fd ff 54  	b.ne	0x82868 <_ZN4core7unicode9printable12is_printable17ha641fcfcb2036eb6E+0xc0>
   828bc: 0b 00 00 f0  	adrp	x11, 0x85000 <_ZN4core7unicode9printable12is_printable17ha641fcfcb2036eb6E+0x120>
   828c0: 2a 00 00 90  	adrp	x10, 0x86000 <_ZN4core7unicode9printable12is_printable17ha641fcfcb2036eb6E+0x128>
   828c4: 09 3c 00 12  	and	w9, w0, #0xffff
   828c8: 6b 0d 3e 91  	add	x11, x11, #3971
   828cc: 28 00 80 52  	mov	w8, #1
   828d0: 4a 99 04 91  	add	x10, x10, #294
   828d4: 45 00 00 14  	b	0x829e8 <_ZN4core7unicode9printable12is_printable17ha641fcfcb2036eb6E+0x240>
   828d8: e0 03 00 12  	and	w0, wzr, #0x1
   828dc: c0 03 5f d6  	ret
   828e0: eb 03 0d aa  	mov	x11, x13
   828e4: 29 01 0c 6b  	subs	w9, w9, w12
   828e8: 84 09 00 54  	b.mi	0x82a18 <_ZN4core7unicode9printable12is_printable17ha641fcfcb2036eb6E+0x270>
   828ec: 7f 01 0a eb  	cmp	x11, x10
   828f0: 08 01 00 52  	eor	w8, w8, #0x1
   828f4: 20 09 00 54  	b.eq	0x82a18 <_ZN4core7unicode9printable12is_printable17ha641fcfcb2036eb6E+0x270>
   828f8: ed 03 0b aa  	mov	x13, x11
   828fc: ae 15 c0 38  	ldrsb	w14, [x13], #1
   82900: cc 1d 00 12  	and	w12, w14, #0xff
   82904: ee fe ff 36  	tbz	w14, #31, 0x828e0 <_ZN4core7unicode9printable12is_printable17ha641fcfcb2036eb6E+0x138>
   82908: bf 01 0a eb  	cmp	x13, x10
   8290c: a0 0a 00 54  	b.eq	0x82a60 <_ZN4core7unicode9printable12is_printable17ha641fcfcb2036eb6E+0x2b8>
   82910: 8d 19 00 12  	and	w13, w12, #0x7f
   82914: 6c 05 40 39  	ldrb	w12, [x11, #1]
   82918: 6b 09 00 91  	add	x11, x11, #2
   8291c: ac 19 18 33  	bfi	w12, w13, #8, #7
   82920: 29 01 0c 6b  	subs	w9, w9, w12
   82924: 45 fe ff 54  	b.pl	0x828ec <_ZN4core7unicode9printable12is_printable17ha641fcfcb2036eb6E+0x144>
   82928: 3c 00 00 14  	b	0x82a18 <_ZN4core7unicode9printable12is_printable17ha641fcfcb2036eb6E+0x270>
   8292c: a8 96 9d 52  	mov	w8, #60597
   82930: 88 ff bf 72  	movk	w8, #65532, lsl #16
   82934: a9 b6 9d 52  	mov	w9, #60853
   82938: 08 00 08 0b  	add	w8, w0, w8
   8293c: 49 01 a0 72  	movk	w9, #10, lsl #16
   82940: 1f 01 09 6b  	cmp	w8, w9
   82944: e8 03 1f 2a  	mov	w8, wzr
   82948: 83 06 00 54  	b.lo	0x82a18 <_ZN4core7unicode9printable12is_printable17ha641fcfcb2036eb6E+0x270>
   8294c: 49 bc 80 52  	mov	w9, #1506
   82950: a9 ff bf 72  	movk	w9, #65533, lsl #16
   82954: 09 00 09 0b  	add	w9, w0, w9
   82958: 3f 89 17 71  	cmp	w9, #1506
   8295c: e3 05 00 54  	b.lo	0x82a18 <_ZN4core7unicode9printable12is_printable17ha641fcfcb2036eb6E+0x270>
   82960: 29 f5 38 11  	add	w9, w9, #3645
   82964: 3f 7d 30 71  	cmp	w9, #3103
   82968: 83 05 00 54  	b.lo	0x82a18 <_ZN4core7unicode9printable12is_printable17ha641fcfcb2036eb6E+0x270>
   8296c: c9 2b 86 52  	mov	w9, #12638
   82970: a9 ff bf 72  	movk	w9, #65533, lsl #16
   82974: 09 00 09 0b  	add	w9, w0, w9
   82978: 3f 39 00 71  	cmp	w9, #14
   8297c: e3 04 00 54  	b.lo	0x82a18 <_ZN4core7unicode9printable12is_printable17ha641fcfcb2036eb6E+0x270>
   82980: ca 03 97 52  	mov	w10, #47134
   82984: 09 4c 1f 12  	and	w9, w0, #0x1ffffe
   82988: 4a 00 a0 72  	movk	w10, #2, lsl #16
   8298c: 3f 01 0a 6b  	cmp	w9, w10
   82990: 40 04 00 54  	b.eq	0x82a18 <_ZN4core7unicode9printable12is_printable17ha641fcfcb2036eb6E+0x270>
   82994: 49 24 8b 52  	mov	w9, #22818
   82998: a9 ff bf 72  	movk	w9, #65533, lsl #16
   8299c: 09 00 09 0b  	add	w9, w0, w9
   829a0: 3f 89 00 71  	cmp	w9, #34
   829a4: a3 03 00 54  	b.lo	0x82a18 <_ZN4core7unicode9printable12is_printable17ha641fcfcb2036eb6E+0x270>
   829a8: 69 19 89 52  	mov	w9, #18635
   829ac: a9 ff bf 72  	movk	w9, #65533, lsl #16
   829b0: 09 00 09 0b  	add	w9, w0, w9
   829b4: 3f 2d 00 71  	cmp	w9, #11
   829b8: 03 03 00 54  	b.lo	0x82a18 <_ZN4core7unicode9printable12is_printable17ha641fcfcb2036eb6E+0x270>
   829bc: 08 3e 80 52  	mov	w8, #496
   829c0: c8 01 a0 72  	movk	w8, #14, lsl #16
   829c4: 1f 00 08 6b  	cmp	w0, w8
   829c8: e0 27 9f 1a  	cset	w0, lo
   829cc: c0 03 5f d6  	ret
   829d0: eb 03 0d aa  	mov	x11, x13
   829d4: 29 01 0c 6b  	subs	w9, w9, w12
   829d8: 04 02 00 54  	b.mi	0x82a18 <_ZN4core7unicode9printable12is_printable17ha641fcfcb2036eb6E+0x270>
   829dc: 7f 01 0a eb  	cmp	x11, x10
   829e0: 08 01 00 52  	eor	w8, w8, #0x1
   829e4: a0 01 00 54  	b.eq	0x82a18 <_ZN4core7unicode9printable12is_printable17ha641fcfcb2036eb6E+0x270>
   829e8: ed 03 0b aa  	mov	x13, x11
   829ec: ae 15 c0 38  	ldrsb	w14, [x13], #1
   829f0: cc 1d 00 12  	and	w12, w14, #0xff
   829f4: ee fe ff 36  	tbz	w14, #31, 0x829d0 <_ZN4core7unicode9printable12is_printable17ha641fcfcb2036eb6E+0x228>
   829f8: bf 01 0a eb  	cmp	x13, x10
   829fc: 20 03 00 54  	b.eq	0x82a60 <_ZN4core7unicode9printable12is_printable17ha641fcfcb2036eb6E+0x2b8>
   82a00: 8d 19 00 12  	and	w13, w12, #0x7f
   82a04: 6c 05 40 39  	ldrb	w12, [x11, #1]
   82a08: 6b 09 00 91  	add	x11, x11, #2
   82a0c: ac 19 18 33  	bfi	w12, w13, #8, #7
   82a10: 29 01 0c 6b  	subs	w9, w9, w12
   82a14: 45 fe ff 54  	b.pl	0x829dc <_ZN4core7unicode9printable12is_printable17ha641fcfcb2036eb6E+0x234>
   82a18: 00 01 00 12  	and	w0, w8, #0x1
   82a1c: c0 03 5f d6  	ret
   82a20: 02 00 00 f0  	adrp	x2, 0x85000 <_ZN4core7unicode9printable12is_printable17ha641fcfcb2036eb6E+0x284>
   82a24: 42 00 30 91  	add	x2, x2, #3072
   82a28: e0 03 09 aa  	mov	x0, x9
   82a2c: e1 03 08 aa  	mov	x1, x8
   82a30: 3a fc ff 97  	bl	0x81b18 <_ZN4core5slice5index22slice_index_order_fail17h806852bf6aeb5b48E>
   82a34: 20 00 20 d4  	brk	#0x1
   82a38: 02 00 00 f0  	adrp	x2, 0x85000 <_ZN4core7unicode9printable12is_printable17ha641fcfcb2036eb6E+0x29c>
   82a3c: 42 00 30 91  	add	x2, x2, #3072
   82a40: 41 24 80 52  	mov	w1, #290
   82a44: 04 00 00 14  	b	0x82a54 <_ZN4core7unicode9printable12is_printable17ha641fcfcb2036eb6E+0x2ac>
   82a48: 02 00 00 f0  	adrp	x2, 0x85000 <_ZN4core7unicode9printable12is_printable17ha641fcfcb2036eb6E+0x2ac>
   82a4c: 42 00 30 91  	add	x2, x2, #3072
   82a50: e1 15 80 52  	mov	w1, #175
   82a54: e0 03 08 aa  	mov	x0, x8
   82a58: 87 fa ff 97  	bl	0x81474 <_ZN4core5slice5index24slice_end_index_len_fail17hfcb16d41a5d796d5E>
   82a5c: 20 00 20 d4  	brk	#0x1
   82a60: 00 00 00 f0  	adrp	x0, 0x85000 <_ZN4core7unicode9printable12is_printable17ha641fcfcb2036eb6E+0x2c4>
   82a64: 02 00 00 f0  	adrp	x2, 0x85000 <_ZN4core7unicode9printable12is_printable17ha641fcfcb2036eb6E+0x2c8>
   82a68: 00 c0 2b 91  	add	x0, x0, #2800
   82a6c: 42 c0 39 91  	add	x2, x2, #3696
   82a70: 61 05 80 52  	mov	w1, #43
   82a74: 92 fa ff 97  	bl	0x814bc <_ZN4core9panicking5panic17h0d86cd7d69f331f6E>
   82a78: 20 00 20 d4  	brk	#0x1

0000000000082a7c <_ZN4core3fmt8builders11DebugStruct5field17hd9641a54df8a3bf1E>:
   82a7c: ff 03 03 d1  	sub	sp, sp, #192
   82a80: fe 67 08 a9  	stp	x30, x25, [sp, #128]
   82a84: f8 5f 09 a9  	stp	x24, x23, [sp, #144]
   82a88: f6 57 0a a9  	stp	x22, x21, [sp, #160]
   82a8c: f4 4f 0b a9  	stp	x20, x19, [sp, #176]
   82a90: 08 20 40 39  	ldrb	w8, [x0, #8]
   82a94: f3 03 00 aa  	mov	x19, x0
   82a98: 39 00 80 52  	mov	w25, #1
   82a9c: 20 00 80 52  	mov	w0, #1
   82aa0: 08 0b 00 35  	cbnz	w8, 0x82c00 <_ZN4core3fmt8builders11DebugStruct5field17hd9641a54df8a3bf1E+0x184>
   82aa4: 76 02 40 f9  	ldr	x22, [x19]
   82aa8: 68 26 40 39  	ldrb	w8, [x19, #9]
   82aac: f5 03 04 aa  	mov	x21, x4
   82ab0: f4 03 03 aa  	mov	x20, x3
   82ab4: c9 c2 40 39  	ldrb	w9, [x22, #48]
   82ab8: f7 03 02 aa  	mov	x23, x2
   82abc: f8 03 01 aa  	mov	x24, x1
   82ac0: e9 03 10 37  	tbnz	w9, #2, 0x82b3c <_ZN4core3fmt8builders11DebugStruct5field17hd9641a54df8a3bf1E+0xc0>
   82ac4: c0 26 42 a9  	ldp	x0, x9, [x22, #32]
   82ac8: 1f 01 00 71  	cmp	w8, #0
   82acc: 2a 00 00 90  	adrp	x10, 0x86000 <_ZN4core3fmt8builders11DebugStruct5field17hd9641a54df8a3bf1E+0x60>
   82ad0: 2b 00 00 90  	adrp	x11, 0x86000 <_ZN4core3fmt8builders11DebugStruct5field17hd9641a54df8a3bf1E+0x64>
   82ad4: 28 0d 40 f9  	ldr	x8, [x9, #24]
   82ad8: 4a 5d 14 91  	add	x10, x10, #1303
   82adc: 6b 51 14 91  	add	x11, x11, #1300
   82ae0: 49 00 80 52  	mov	w9, #2
   82ae4: 61 01 8a 9a  	csel	x1, x11, x10, eq
   82ae8: 22 15 89 9a  	cinc	x2, x9, eq
   82aec: 00 01 3f d6  	blr	x8
   82af0: 60 08 00 37  	tbnz	w0, #0, 0x82bfc <_ZN4core3fmt8builders11DebugStruct5field17hd9641a54df8a3bf1E+0x180>
   82af4: c0 22 42 a9  	ldp	x0, x8, [x22, #32]
   82af8: e1 03 18 aa  	mov	x1, x24
   82afc: e2 03 17 aa  	mov	x2, x23
   82b00: 08 0d 40 f9  	ldr	x8, [x8, #24]
   82b04: 00 01 3f d6  	blr	x8
   82b08: a0 07 00 37  	tbnz	w0, #0, 0x82bfc <_ZN4core3fmt8builders11DebugStruct5field17hd9641a54df8a3bf1E+0x180>
   82b0c: c0 22 42 a9  	ldp	x0, x8, [x22, #32]
   82b10: 01 00 00 f0  	adrp	x1, 0x85000 <_ZN4core3fmt8builders11DebugStruct5field17hd9641a54df8a3bf1E+0xa0>
   82b14: 21 40 28 91  	add	x1, x1, #2576
   82b18: 42 00 80 52  	mov	w2, #2
   82b1c: 08 0d 40 f9  	ldr	x8, [x8, #24]
   82b20: 00 01 3f d6  	blr	x8
   82b24: c0 06 00 37  	tbnz	w0, #0, 0x82bfc <_ZN4core3fmt8builders11DebugStruct5field17hd9641a54df8a3bf1E+0x180>
   82b28: a8 0e 40 f9  	ldr	x8, [x21, #24]
   82b2c: e0 03 14 aa  	mov	x0, x20
   82b30: e1 03 16 aa  	mov	x1, x22
   82b34: 00 01 3f d6  	blr	x8
   82b38: 32 00 00 14  	b	0x82c00 <_ZN4core3fmt8builders11DebugStruct5field17hd9641a54df8a3bf1E+0x184>
   82b3c: 08 01 00 35  	cbnz	w8, 0x82b5c <_ZN4core3fmt8builders11DebugStruct5field17hd9641a54df8a3bf1E+0xe0>
   82b40: c0 22 42 a9  	ldp	x0, x8, [x22, #32]
   82b44: 21 00 00 90  	adrp	x1, 0x86000 <_ZN4core3fmt8builders11DebugStruct5field17hd9641a54df8a3bf1E+0xd8>
   82b48: 21 40 15 91  	add	x1, x1, #1360
   82b4c: 62 00 80 52  	mov	w2, #3
   82b50: 08 0d 40 f9  	ldr	x8, [x8, #24]
   82b54: 00 01 3f d6  	blr	x8
   82b58: 20 05 00 37  	tbnz	w0, #0, 0x82bfc <_ZN4core3fmt8builders11DebugStruct5field17hd9641a54df8a3bf1E+0x180>
   82b5c: 28 00 80 52  	mov	w8, #1
   82b60: e8 f3 00 39  	strb	w8, [sp, #60]
   82b64: c8 26 42 a9  	ldp	x8, x9, [x22, #32]
   82b68: ea f3 00 91  	add	x10, sp, #60
   82b6c: e0 83 00 91  	add	x0, sp, #32
   82b70: e1 03 18 aa  	mov	x1, x24
   82b74: e9 ab 02 a9  	stp	x9, x10, [sp, #40]
   82b78: e8 13 00 f9  	str	x8, [sp, #32]
   82b7c: c8 06 40 f9  	ldr	x8, [x22, #8]
   82b80: c0 1a 40 fd  	ldr	d0, [x22, #48]
   82b84: c9 e2 40 39  	ldrb	w9, [x22, #56]
   82b88: ea 83 00 91  	add	x10, sp, #32
   82b8c: e8 07 00 f9  	str	x8, [sp, #8]
   82b90: c8 02 40 f9  	ldr	x8, [x22]
   82b94: e2 03 17 aa  	mov	x2, x23
   82b98: e8 03 00 f9  	str	x8, [sp]
   82b9c: c8 0e 40 f9  	ldr	x8, [x22, #24]
   82ba0: e8 0f 00 f9  	str	x8, [sp, #24]
   82ba4: c8 0a 40 f9  	ldr	x8, [x22, #16]
   82ba8: e0 3b 00 fd  	str	d0, [sp, #112]
   82bac: e9 e3 01 39  	strb	w9, [sp, #120]
   82bb0: e8 0b 00 f9  	str	x8, [sp, #16]
   82bb4: e1 0b 40 ad  	ldp	q1, q2, [sp]
   82bb8: 28 00 00 90  	adrp	x8, 0x86000 <_ZN4core3fmt8builders11DebugStruct5field17hd9641a54df8a3bf1E+0x14c>
   82bbc: 08 81 14 91  	add	x8, x8, #1312
   82bc0: ea 23 06 a9  	stp	x10, x8, [sp, #96]
   82bc4: e1 0b 02 ad  	stp	q1, q2, [sp, #64]
   82bc8: fd fb ff 97  	bl	0x81bbc <_ZN68_$LT$core..fmt..builders..PadAdapter$u20$as$u20$core..fmt..Write$GT$9write_str17h3825e647a41714ecE>
   82bcc: 80 01 00 37  	tbnz	w0, #0, 0x82bfc <_ZN4core3fmt8builders11DebugStruct5field17hd9641a54df8a3bf1E+0x180>
   82bd0: 01 00 00 f0  	adrp	x1, 0x85000 <_ZN4core3fmt8builders11DebugStruct5field17hd9641a54df8a3bf1E+0x160>
   82bd4: 21 40 28 91  	add	x1, x1, #2576
   82bd8: e0 83 00 91  	add	x0, sp, #32
   82bdc: 42 00 80 52  	mov	w2, #2
   82be0: f7 fb ff 97  	bl	0x81bbc <_ZN68_$LT$core..fmt..builders..PadAdapter$u20$as$u20$core..fmt..Write$GT$9write_str17h3825e647a41714ecE>
   82be4: c0 00 00 35  	cbnz	w0, 0x82bfc <_ZN4core3fmt8builders11DebugStruct5field17hd9641a54df8a3bf1E+0x180>
   82be8: a8 0e 40 f9  	ldr	x8, [x21, #24]
   82bec: e1 03 01 91  	add	x1, sp, #64
   82bf0: e0 03 14 aa  	mov	x0, x20
   82bf4: 00 01 3f d6  	blr	x8
   82bf8: 60 01 00 36  	tbz	w0, #0, 0x82c24 <_ZN4core3fmt8builders11DebugStruct5field17hd9641a54df8a3bf1E+0x1a8>
   82bfc: 20 00 80 52  	mov	w0, #1
   82c00: 60 22 00 39  	strb	w0, [x19, #8]
   82c04: 79 26 00 39  	strb	w25, [x19, #9]
   82c08: e0 03 13 aa  	mov	x0, x19
   82c0c: f4 4f 4b a9  	ldp	x20, x19, [sp, #176]
   82c10: f6 57 4a a9  	ldp	x22, x21, [sp, #160]
   82c14: f8 5f 49 a9  	ldp	x24, x23, [sp, #144]
   82c18: fe 67 48 a9  	ldp	x30, x25, [sp, #128]
   82c1c: ff 03 03 91  	add	sp, sp, #192
   82c20: c0 03 5f d6  	ret
   82c24: e0 23 46 a9  	ldp	x0, x8, [sp, #96]
   82c28: 21 00 00 90  	adrp	x1, 0x86000 <_ZN4core3fmt8builders11DebugStruct5field17hd9641a54df8a3bf1E+0x1bc>
   82c2c: 21 4c 15 91  	add	x1, x1, #1363
   82c30: 42 00 80 52  	mov	w2, #2
   82c34: 08 0d 40 f9  	ldr	x8, [x8, #24]
   82c38: 00 01 3f d6  	blr	x8
   82c3c: f1 ff ff 17  	b	0x82c00 <_ZN4core3fmt8builders11DebugStruct5field17hd9641a54df8a3bf1E+0x184>

0000000000082c40 <_ZN4core3fmt5Write10write_char17h2b1e5227eb5c9fe4E>:
   82c40: fe 0f 1f f8  	str	x30, [sp, #-16]!
   82c44: 3f 00 02 71  	cmp	w1, #128
   82c48: ff 0f 00 b9  	str	wzr, [sp, #12]
   82c4c: e2 00 00 54  	b.hs	0x82c68 <_ZN4core3fmt5Write10write_char17h2b1e5227eb5c9fe4E+0x28>
   82c50: e1 33 00 39  	strb	w1, [sp, #12]
   82c54: 22 00 80 52  	mov	w2, #1
   82c58: e1 33 00 91  	add	x1, sp, #12
   82c5c: d8 fb ff 97  	bl	0x81bbc <_ZN68_$LT$core..fmt..builders..PadAdapter$u20$as$u20$core..fmt..Write$GT$9write_str17h3825e647a41714ecE>
   82c60: fe 07 41 f8  	ldr	x30, [sp], #16
   82c64: c0 03 5f d6  	ret
   82c68: 3f 00 20 71  	cmp	w1, #2048
   82c6c: 82 01 00 54  	b.hs	0x82c9c <_ZN4core3fmt5Write10write_char17h2b1e5227eb5c9fe4E+0x5c>
   82c70: 28 7c 06 53  	lsr	w8, w1, #6
   82c74: 09 10 80 52  	mov	w9, #128
   82c78: 08 05 1a 32  	orr	w8, w8, #0xc0
   82c7c: 29 14 00 33  	bfxil	w9, w1, #0, #6
   82c80: e8 33 00 39  	strb	w8, [sp, #12]
   82c84: e9 37 00 39  	strb	w9, [sp, #13]
   82c88: 42 00 80 52  	mov	w2, #2
   82c8c: e1 33 00 91  	add	x1, sp, #12
   82c90: cb fb ff 97  	bl	0x81bbc <_ZN68_$LT$core..fmt..builders..PadAdapter$u20$as$u20$core..fmt..Write$GT$9write_str17h3825e647a41714ecE>
   82c94: fe 07 41 f8  	ldr	x30, [sp], #16
   82c98: c0 03 5f d6  	ret
   82c9c: 3f 40 40 71  	cmp	w1, #16, lsl #12
   82ca0: e2 01 00 54  	b.hs	0x82cdc <_ZN4core3fmt5Write10write_char17h2b1e5227eb5c9fe4E+0x9c>
   82ca4: 28 7c 0c 53  	lsr	w8, w1, #12
   82ca8: 09 10 80 52  	mov	w9, #128
   82cac: 0a 10 80 52  	mov	w10, #128
   82cb0: 08 09 1b 32  	orr	w8, w8, #0xe0
   82cb4: 2a 2c 06 33  	bfxil	w10, w1, #6, #6
   82cb8: 29 14 00 33  	bfxil	w9, w1, #0, #6
   82cbc: e8 33 00 39  	strb	w8, [sp, #12]
   82cc0: ea 37 00 39  	strb	w10, [sp, #13]
   82cc4: e9 3b 00 39  	strb	w9, [sp, #14]
   82cc8: 62 00 80 52  	mov	w2, #3
   82ccc: e1 33 00 91  	add	x1, sp, #12
   82cd0: bb fb ff 97  	bl	0x81bbc <_ZN68_$LT$core..fmt..builders..PadAdapter$u20$as$u20$core..fmt..Write$GT$9write_str17h3825e647a41714ecE>
   82cd4: fe 07 41 f8  	ldr	x30, [sp], #16
   82cd8: c0 03 5f d6  	ret
   82cdc: 28 7c 12 53  	lsr	w8, w1, #18
   82ce0: 09 10 80 52  	mov	w9, #128
   82ce4: 0a 10 80 52  	mov	w10, #128
   82ce8: 0b 10 80 52  	mov	w11, #128
   82cec: 08 0d 1c 32  	orr	w8, w8, #0xf0
   82cf0: 2a 44 0c 33  	bfxil	w10, w1, #12, #6
   82cf4: 2b 2c 06 33  	bfxil	w11, w1, #6, #6
   82cf8: 29 14 00 33  	bfxil	w9, w1, #0, #6
   82cfc: 82 00 80 52  	mov	w2, #4
   82d00: e8 33 00 39  	strb	w8, [sp, #12]
   82d04: ea 37 00 39  	strb	w10, [sp, #13]
   82d08: eb 3b 00 39  	strb	w11, [sp, #14]
   82d0c: e9 3f 00 39  	strb	w9, [sp, #15]
   82d10: e1 33 00 91  	add	x1, sp, #12
   82d14: aa fb ff 97  	bl	0x81bbc <_ZN68_$LT$core..fmt..builders..PadAdapter$u20$as$u20$core..fmt..Write$GT$9write_str17h3825e647a41714ecE>
   82d18: fe 07 41 f8  	ldr	x30, [sp], #16
   82d1c: c0 03 5f d6  	ret

0000000000082d20 <_ZN4core3fmt5Write9write_fmt17h30467bf8f008fbccE>:
   82d20: ff 03 01 d1  	sub	sp, sp, #64
   82d24: fe 03 03 a9  	stp	x30, x0, [sp, #48]
   82d28: e0 03 00 91  	mov	x0, sp
   82d2c: 02 06 80 52  	mov	w2, #48
   82d30: f1 03 00 94  	bl	0x83cf4 <memcpy>
   82d34: 21 00 00 90  	adrp	x1, 0x86000 <_ZN4core3fmt5Write9write_fmt17h30467bf8f008fbccE+0x24>
   82d38: 21 60 15 91  	add	x1, x1, #1368
   82d3c: e0 e3 00 91  	add	x0, sp, #56
   82d40: e2 03 00 91  	mov	x2, sp
   82d44: f7 fa ff 97  	bl	0x81920 <_ZN4core3fmt5write17h63775af3066fbce8E>
   82d48: fe 1b 40 f9  	ldr	x30, [sp, #48]
   82d4c: ff 03 01 91  	add	sp, sp, #64
   82d50: c0 03 5f d6  	ret

0000000000082d54 <_ZN50_$LT$$RF$mut$u20$W$u20$as$u20$core..fmt..Write$GT$9write_str17h4389b3a94789348fE>:
   82d54: 00 00 40 f9  	ldr	x0, [x0]
   82d58: 99 fb ff 17  	b	0x81bbc <_ZN68_$LT$core..fmt..builders..PadAdapter$u20$as$u20$core..fmt..Write$GT$9write_str17h3825e647a41714ecE>

0000000000082d5c <_ZN50_$LT$$RF$mut$u20$W$u20$as$u20$core..fmt..Write$GT$10write_char17h36047407a7ec2c59E>:
   82d5c: fe 0f 1f f8  	str	x30, [sp, #-16]!
   82d60: 00 00 40 f9  	ldr	x0, [x0]
   82d64: 3f 00 02 71  	cmp	w1, #128
   82d68: ff 0f 00 b9  	str	wzr, [sp, #12]
   82d6c: e2 00 00 54  	b.hs	0x82d88 <_ZN50_$LT$$RF$mut$u20$W$u20$as$u20$core..fmt..Write$GT$10write_char17h36047407a7ec2c59E+0x2c>
   82d70: e1 33 00 39  	strb	w1, [sp, #12]
   82d74: 22 00 80 52  	mov	w2, #1
   82d78: e1 33 00 91  	add	x1, sp, #12
   82d7c: 90 fb ff 97  	bl	0x81bbc <_ZN68_$LT$core..fmt..builders..PadAdapter$u20$as$u20$core..fmt..Write$GT$9write_str17h3825e647a41714ecE>
   82d80: fe 07 41 f8  	ldr	x30, [sp], #16
   82d84: c0 03 5f d6  	ret
   82d88: 3f 00 20 71  	cmp	w1, #2048
   82d8c: 82 01 00 54  	b.hs	0x82dbc <_ZN50_$LT$$RF$mut$u20$W$u20$as$u20$core..fmt..Write$GT$10write_char17h36047407a7ec2c59E+0x60>
   82d90: 28 7c 06 53  	lsr	w8, w1, #6
   82d94: 09 10 80 52  	mov	w9, #128
   82d98: 08 05 1a 32  	orr	w8, w8, #0xc0
   82d9c: 29 14 00 33  	bfxil	w9, w1, #0, #6
   82da0: e8 33 00 39  	strb	w8, [sp, #12]
   82da4: e9 37 00 39  	strb	w9, [sp, #13]
   82da8: 42 00 80 52  	mov	w2, #2
   82dac: e1 33 00 91  	add	x1, sp, #12
   82db0: 83 fb ff 97  	bl	0x81bbc <_ZN68_$LT$core..fmt..builders..PadAdapter$u20$as$u20$core..fmt..Write$GT$9write_str17h3825e647a41714ecE>
   82db4: fe 07 41 f8  	ldr	x30, [sp], #16
   82db8: c0 03 5f d6  	ret
   82dbc: 3f 40 40 71  	cmp	w1, #16, lsl #12
   82dc0: e2 01 00 54  	b.hs	0x82dfc <_ZN50_$LT$$RF$mut$u20$W$u20$as$u20$core..fmt..Write$GT$10write_char17h36047407a7ec2c59E+0xa0>
   82dc4: 28 7c 0c 53  	lsr	w8, w1, #12
   82dc8: 09 10 80 52  	mov	w9, #128
   82dcc: 0a 10 80 52  	mov	w10, #128
   82dd0: 08 09 1b 32  	orr	w8, w8, #0xe0
   82dd4: 2a 2c 06 33  	bfxil	w10, w1, #6, #6
   82dd8: 29 14 00 33  	bfxil	w9, w1, #0, #6
   82ddc: e8 33 00 39  	strb	w8, [sp, #12]
   82de0: ea 37 00 39  	strb	w10, [sp, #13]
   82de4: e9 3b 00 39  	strb	w9, [sp, #14]
   82de8: 62 00 80 52  	mov	w2, #3
   82dec: e1 33 00 91  	add	x1, sp, #12
   82df0: 73 fb ff 97  	bl	0x81bbc <_ZN68_$LT$core..fmt..builders..PadAdapter$u20$as$u20$core..fmt..Write$GT$9write_str17h3825e647a41714ecE>
   82df4: fe 07 41 f8  	ldr	x30, [sp], #16
   82df8: c0 03 5f d6  	ret
   82dfc: 28 7c 12 53  	lsr	w8, w1, #18
   82e00: 09 10 80 52  	mov	w9, #128
   82e04: 0a 10 80 52  	mov	w10, #128
   82e08: 0b 10 80 52  	mov	w11, #128
   82e0c: 08 0d 1c 32  	orr	w8, w8, #0xf0
   82e10: 2a 44 0c 33  	bfxil	w10, w1, #12, #6
   82e14: 2b 2c 06 33  	bfxil	w11, w1, #6, #6
   82e18: 29 14 00 33  	bfxil	w9, w1, #0, #6
   82e1c: 82 00 80 52  	mov	w2, #4
   82e20: e8 33 00 39  	strb	w8, [sp, #12]
   82e24: ea 37 00 39  	strb	w10, [sp, #13]
   82e28: eb 3b 00 39  	strb	w11, [sp, #14]
   82e2c: e9 3f 00 39  	strb	w9, [sp, #15]
   82e30: e1 33 00 91  	add	x1, sp, #12
   82e34: 62 fb ff 97  	bl	0x81bbc <_ZN68_$LT$core..fmt..builders..PadAdapter$u20$as$u20$core..fmt..Write$GT$9write_str17h3825e647a41714ecE>
   82e38: fe 07 41 f8  	ldr	x30, [sp], #16
   82e3c: c0 03 5f d6  	ret

0000000000082e40 <_ZN50_$LT$$RF$mut$u20$W$u20$as$u20$core..fmt..Write$GT$9write_fmt17h06bf00dcb2c943e6E>:
   82e40: ff 03 01 d1  	sub	sp, sp, #64
   82e44: 08 00 40 f9  	ldr	x8, [x0]
   82e48: e0 03 00 91  	mov	x0, sp
   82e4c: 02 06 80 52  	mov	w2, #48
   82e50: fe 23 03 a9  	stp	x30, x8, [sp, #48]
   82e54: a8 03 00 94  	bl	0x83cf4 <memcpy>
   82e58: 21 00 00 90  	adrp	x1, 0x86000 <_ZN50_$LT$$RF$mut$u20$W$u20$as$u20$core..fmt..Write$GT$9write_fmt17h06bf00dcb2c943e6E+0x28>
   82e5c: 21 60 15 91  	add	x1, x1, #1368
   82e60: e0 e3 00 91  	add	x0, sp, #56
   82e64: e2 03 00 91  	mov	x2, sp
   82e68: ae fa ff 97  	bl	0x81920 <_ZN4core3fmt5write17h63775af3066fbce8E>
   82e6c: fe 1b 40 f9  	ldr	x30, [sp, #48]
   82e70: ff 03 01 91  	add	sp, sp, #64
   82e74: c0 03 5f d6  	ret

0000000000082e78 <_ZN4core3fmt9Formatter9alternate17h5a07b4bd7e02e2b8E>:
   82e78: 08 c0 40 39  	ldrb	w8, [x0, #48]
   82e7c: 00 09 02 53  	ubfx	w0, w8, #2, #1
   82e80: c0 03 5f d6  	ret

0000000000082e84 <_ZN4core3fmt9Formatter15debug_lower_hex17h0b7f072683990bf5E>:
   82e84: 08 c0 40 39  	ldrb	w8, [x0, #48]
   82e88: 00 11 04 53  	ubfx	w0, w8, #4, #1
   82e8c: c0 03 5f d6  	ret

0000000000082e90 <_ZN4core3fmt9Formatter15debug_upper_hex17hc999bac86c60dde4E>:
   82e90: 08 c0 40 39  	ldrb	w8, [x0, #48]
   82e94: 00 15 05 53  	ubfx	w0, w8, #5, #1
   82e98: c0 03 5f d6  	ret

0000000000082e9c <_ZN42_$LT$$RF$T$u20$as$u20$core..fmt..Debug$GT$3fmt17hfc760a505aab9f54E>:
   82e9c: ff 43 02 d1  	sub	sp, sp, #144
   82ea0: fe 43 00 f9  	str	x30, [sp, #128]
   82ea4: 29 30 40 b9  	ldr	w9, [x1, #48]
   82ea8: 0a 00 40 f9  	ldr	x10, [x0]
   82eac: e8 03 01 aa  	mov	x8, x1
   82eb0: c9 05 20 37  	tbnz	w9, #4, 0x82f68 <_ZN42_$LT$$RF$T$u20$as$u20$core..fmt..Debug$GT$3fmt17hfc760a505aab9f54E+0xcc>
   82eb4: a9 07 28 37  	tbnz	w9, #5, 0x82fa8 <_ZN42_$LT$$RF$T$u20$as$u20$core..fmt..Debug$GT$3fmt17hfc760a505aab9f54E+0x10c>
   82eb8: 49 01 40 b9  	ldr	w9, [x10]
   82ebc: 2a 7d 44 d3  	ubfx	x10, x9, #4, #28
   82ec0: 5f c5 09 71  	cmp	w10, #625
   82ec4: 03 0b 00 54  	b.lo	0x83024 <_ZN42_$LT$$RF$T$u20$as$u20$core..fmt..Debug$GT$3fmt17hfc760a505aab9f54E+0x188>
   82ec8: 6b 29 8b d2  	mov	x11, #22859
   82ecc: cb 10 a7 f2  	movk	x11, #14470, lsl #16
   82ed0: cb ba d8 f2  	movk	x11, #50646, lsl #32
   82ed4: ed a3 90 52  	mov	w13, #34079
   82ed8: 0f 00 00 f0  	adrp	x15, 0x85000 <_ZN42_$LT$$RF$T$u20$as$u20$core..fmt..Debug$GT$3fmt17hfc760a505aab9f54E+0x48>
   82edc: f1 1f 9c 52  	mov	w17, #57599
   82ee0: ea 03 1f aa  	mov	x10, xzr
   82ee4: ab 8d e6 f2  	movk	x11, #13421, lsl #48
   82ee8: ec e1 84 12  	mov	w12, #-10000
   82eec: 6d 3d aa 72  	movk	w13, #20971, lsl #16
   82ef0: 6e 0c 80 12  	mov	w14, #-100
   82ef4: ef 09 20 91  	add	x15, x15, #2050
   82ef8: f0 03 00 91  	mov	x16, sp
   82efc: b1 be a0 72  	movk	w17, #1525, lsl #16
   82f00: f2 03 09 aa  	mov	x18, x9
   82f04: 29 7d cb 9b  	umulh	x9, x9, x11
   82f08: 29 fd 4b d3  	lsr	x9, x9, #11
   82f0c: 5f 02 11 eb  	cmp	x18, x17
   82f10: 32 49 0c 1b  	madd	w18, w9, w12, w18
   82f14: 41 3e 00 12  	and	w1, w18, #0xffff
   82f18: 21 7c ad 9b  	umull	x1, w1, w13
   82f1c: 21 fc 65 d3  	lsr	x1, x1, #37
   82f20: 32 48 0e 1b  	madd	w18, w1, w14, w18
   82f24: e1 05 01 8b  	add	x1, x15, x1, lsl #1
   82f28: f2 25 32 8b  	add	x18, x15, w18, uxth #1
   82f2c: 22 00 40 39  	ldrb	w2, [x1]
   82f30: 21 04 40 39  	ldrb	w1, [x1, #1]
   82f34: 43 06 40 39  	ldrb	w3, [x18, #1]
   82f38: 52 02 40 39  	ldrb	w18, [x18]
   82f3c: 00 02 0a 8b  	add	x0, x16, x10
   82f40: 4a 11 00 d1  	sub	x10, x10, #4
   82f44: 01 90 00 39  	strb	w1, [x0, #36]
   82f48: 02 8c 00 39  	strb	w2, [x0, #35]
   82f4c: 03 98 00 39  	strb	w3, [x0, #38]
   82f50: 12 94 00 39  	strb	w18, [x0, #37]
   82f54: 68 fd ff 54  	b.hi	0x82f00 <_ZN42_$LT$$RF$T$u20$as$u20$core..fmt..Debug$GT$3fmt17hfc760a505aab9f54E+0x64>
   82f58: 4a 9d 00 91  	add	x10, x10, #39
   82f5c: 3f 8d 01 f1  	cmp	x9, #99
   82f60: 88 06 00 54  	b.hi	0x83030 <_ZN42_$LT$$RF$T$u20$as$u20$core..fmt..Debug$GT$3fmt17hfc760a505aab9f54E+0x194>
   82f64: 45 00 00 14  	b	0x83078 <_ZN42_$LT$$RF$T$u20$as$u20$core..fmt..Debug$GT$3fmt17hfc760a505aab9f54E+0x1dc>
   82f68: 4b 01 40 b9  	ldr	w11, [x10]
   82f6c: e9 03 1f aa  	mov	x9, xzr
   82f70: ea 03 00 91  	mov	x10, sp
   82f74: 6e 0d 00 12  	and	w14, w11, #0xf
   82f78: 0f 06 80 52  	mov	w15, #48
   82f7c: 6d 7d 04 53  	lsr	w13, w11, #4
   82f80: 6f 0d 00 33  	bfxil	w15, w11, #0, #4
   82f84: cb 5d 01 11  	add	w11, w14, #87
   82f88: df 29 00 71  	cmp	w14, #10
   82f8c: 4c 01 09 8b  	add	x12, x10, x9
   82f90: eb 31 8b 1a  	csel	w11, w15, w11, lo
   82f94: 8b fd 01 39  	strb	w11, [x12, #127]
   82f98: 29 05 00 d1  	sub	x9, x9, #1
   82f9c: eb 03 0d 2a  	mov	w11, w13
   82fa0: ad fe ff 35  	cbnz	w13, 0x82f74 <_ZN42_$LT$$RF$T$u20$as$u20$core..fmt..Debug$GT$3fmt17hfc760a505aab9f54E+0xd8>
   82fa4: 10 00 00 14  	b	0x82fe4 <_ZN42_$LT$$RF$T$u20$as$u20$core..fmt..Debug$GT$3fmt17hfc760a505aab9f54E+0x148>
   82fa8: 4b 01 40 b9  	ldr	w11, [x10]
   82fac: e9 03 1f aa  	mov	x9, xzr
   82fb0: ea 03 00 91  	mov	x10, sp
   82fb4: 6e 0d 00 12  	and	w14, w11, #0xf
   82fb8: 0f 06 80 52  	mov	w15, #48
   82fbc: 6d 7d 04 53  	lsr	w13, w11, #4
   82fc0: 6f 0d 00 33  	bfxil	w15, w11, #0, #4
   82fc4: cb dd 00 11  	add	w11, w14, #55
   82fc8: df 29 00 71  	cmp	w14, #10
   82fcc: 4c 01 09 8b  	add	x12, x10, x9
   82fd0: eb 31 8b 1a  	csel	w11, w15, w11, lo
   82fd4: 8b fd 01 39  	strb	w11, [x12, #127]
   82fd8: 29 05 00 d1  	sub	x9, x9, #1
   82fdc: eb 03 0d 2a  	mov	w11, w13
   82fe0: ad fe ff 35  	cbnz	w13, 0x82fb4 <_ZN42_$LT$$RF$T$u20$as$u20$core..fmt..Debug$GT$3fmt17hfc760a505aab9f54E+0x118>
   82fe4: 20 01 02 91  	add	x0, x9, #128
   82fe8: 1f 04 02 f1  	cmp	x0, #129
   82fec: 22 08 00 54  	b.hs	0x830f0 <_ZN42_$LT$$RF$T$u20$as$u20$core..fmt..Debug$GT$3fmt17hfc760a505aab9f54E+0x254>
   82ff0: ea 03 00 91  	mov	x10, sp
   82ff4: e5 03 09 cb  	neg	x5, x9
   82ff8: 49 01 09 8b  	add	x9, x10, x9
   82ffc: 02 00 00 f0  	adrp	x2, 0x85000 <_ZN42_$LT$$RF$T$u20$as$u20$core..fmt..Debug$GT$3fmt17hfc760a505aab9f54E+0x16c>
   83000: 24 01 02 91  	add	x4, x9, #128
   83004: 42 a0 25 91  	add	x2, x2, #2408
   83008: 21 00 80 52  	mov	w1, #1
   8300c: 43 00 80 52  	mov	w3, #2
   83010: e0 03 08 aa  	mov	x0, x8
   83014: 32 f8 ff 97  	bl	0x810dc <_ZN4core3fmt9Formatter12pad_integral17ha6f583ca7a70f44dE>
   83018: fe 43 40 f9  	ldr	x30, [sp, #128]
   8301c: ff 43 02 91  	add	sp, sp, #144
   83020: c0 03 5f d6  	ret
   83024: ea 04 80 52  	mov	w10, #39
   83028: 3f 8d 01 f1  	cmp	x9, #99
   8302c: 69 02 00 54  	b.ls	0x83078 <_ZN42_$LT$$RF$T$u20$as$u20$core..fmt..Debug$GT$3fmt17hfc760a505aab9f54E+0x1dc>
   83030: ec a3 90 52  	mov	w12, #34079
   83034: 2b 3d 00 12  	and	w11, w9, #0xffff
   83038: 6c 3d aa 72  	movk	w12, #20971, lsl #16
   8303c: 6b 7d ac 9b  	umull	x11, w11, w12
   83040: 6d 0c 80 12  	mov	w13, #-100
   83044: 0c 00 00 d0  	adrp	x12, 0x85000 <_ZN42_$LT$$RF$T$u20$as$u20$core..fmt..Debug$GT$3fmt17hfc760a505aab9f54E+0x1b0>
   83048: 6b fd 65 d3  	lsr	x11, x11, #37
   8304c: 8c 09 20 91  	add	x12, x12, #2050
   83050: 69 25 0d 1b  	madd	w9, w11, w13, w9
   83054: 89 25 29 8b  	add	x9, x12, w9, uxth #1
   83058: 2c 05 40 39  	ldrb	w12, [x9, #1]
   8305c: 29 01 40 39  	ldrb	w9, [x9]
   83060: 4a 09 00 d1  	sub	x10, x10, #2
   83064: ed 03 00 91  	mov	x13, sp
   83068: ad 01 0a 8b  	add	x13, x13, x10
   8306c: a9 01 00 39  	strb	w9, [x13]
   83070: e9 03 0b aa  	mov	x9, x11
   83074: ac 05 00 39  	strb	w12, [x13, #1]
   83078: 3f 29 00 f1  	cmp	x9, #10
   8307c: ca 00 00 54  	b.ge	0x83094 <_ZN42_$LT$$RF$T$u20$as$u20$core..fmt..Debug$GT$3fmt17hfc760a505aab9f54E+0x1f8>
   83080: 4a 05 00 d1  	sub	x10, x10, #1
   83084: 29 c1 00 11  	add	w9, w9, #48
   83088: eb 03 00 91  	mov	x11, sp
   8308c: 69 69 2a 38  	strb	w9, [x11, x10]
   83090: 0b 00 00 14  	b	0x830bc <_ZN42_$LT$$RF$T$u20$as$u20$core..fmt..Debug$GT$3fmt17hfc760a505aab9f54E+0x220>
   83094: 0b 00 00 d0  	adrp	x11, 0x85000 <_ZN42_$LT$$RF$T$u20$as$u20$core..fmt..Debug$GT$3fmt17hfc760a505aab9f54E+0x200>
   83098: 6b 09 20 91  	add	x11, x11, #2050
   8309c: 69 05 09 8b  	add	x9, x11, x9, lsl #1
   830a0: 2b 05 40 39  	ldrb	w11, [x9, #1]
   830a4: 29 01 40 39  	ldrb	w9, [x9]
   830a8: 4a 09 00 d1  	sub	x10, x10, #2
   830ac: ec 03 00 91  	mov	x12, sp
   830b0: 8c 01 0a 8b  	add	x12, x12, x10
   830b4: 8b 05 00 39  	strb	w11, [x12, #1]
   830b8: 89 01 00 39  	strb	w9, [x12]
   830bc: e9 03 00 91  	mov	x9, sp
   830c0: eb 04 80 52  	mov	w11, #39
   830c4: 02 00 00 d0  	adrp	x2, 0x85000 <_ZN42_$LT$$RF$T$u20$as$u20$core..fmt..Debug$GT$3fmt17hfc760a505aab9f54E+0x230>
   830c8: 24 01 0a 8b  	add	x4, x9, x10
   830cc: 65 01 0a cb  	sub	x5, x11, x10
   830d0: 42 c0 1d 91  	add	x2, x2, #1904
   830d4: 21 00 80 52  	mov	w1, #1
   830d8: e0 03 08 aa  	mov	x0, x8
   830dc: e3 03 1f aa  	mov	x3, xzr
   830e0: ff f7 ff 97  	bl	0x810dc <_ZN4core3fmt9Formatter12pad_integral17ha6f583ca7a70f44dE>
   830e4: fe 43 40 f9  	ldr	x30, [sp, #128]
   830e8: ff 43 02 91  	add	sp, sp, #144
   830ec: c0 03 5f d6  	ret
   830f0: 02 00 00 d0  	adrp	x2, 0x85000 <_ZN42_$LT$$RF$T$u20$as$u20$core..fmt..Debug$GT$3fmt17hfc760a505aab9f54E+0x25c>
   830f4: 42 40 25 91  	add	x2, x2, #2384
   830f8: 01 10 80 52  	mov	w1, #128
   830fc: cc f8 ff 97  	bl	0x8142c <_ZN4core5slice5index26slice_start_index_len_fail17ha3ad23336e78e7f7E>
   83100: 20 00 20 d4  	brk	#0x1

0000000000083104 <_ZN42_$LT$$RF$T$u20$as$u20$core..fmt..Debug$GT$3fmt17h2118265c3795f77dE>:
   83104: ff 83 02 d1  	sub	sp, sp, #160
   83108: fd 7b 04 a9  	stp	x29, x30, [sp, #64]
   8310c: fc 6f 05 a9  	stp	x28, x27, [sp, #80]
   83110: fa 67 06 a9  	stp	x26, x25, [sp, #96]
   83114: f8 5f 07 a9  	stp	x24, x23, [sp, #112]
   83118: f6 57 08 a9  	stp	x22, x21, [sp, #128]
   8311c: f4 4f 09 a9  	stp	x20, x19, [sp, #144]
   83120: 08 00 40 f9  	ldr	x8, [x0]
   83124: 33 24 42 a9  	ldp	x19, x9, [x1, #32]
   83128: 41 04 80 52  	mov	w1, #34
   8312c: 0a 21 40 a9  	ldp	x10, x8, [x8]
   83130: 22 11 40 f9  	ldr	x2, [x9, #32]
   83134: e0 03 13 aa  	mov	x0, x19
   83138: e9 13 00 f9  	str	x9, [sp, #32]
   8313c: e8 ab 02 a9  	stp	x8, x10, [sp, #40]
   83140: e2 1f 00 f9  	str	x2, [sp, #56]
   83144: 40 00 3f d6  	blr	x2
   83148: 40 01 00 36  	tbz	w0, #0, 0x83170 <_ZN42_$LT$$RF$T$u20$as$u20$core..fmt..Debug$GT$3fmt17h2118265c3795f77dE+0x6c>
   8314c: f4 4f 49 a9  	ldp	x20, x19, [sp, #144]
   83150: f6 57 48 a9  	ldp	x22, x21, [sp, #128]
   83154: f8 5f 47 a9  	ldp	x24, x23, [sp, #112]
   83158: fa 67 46 a9  	ldp	x26, x25, [sp, #96]
   8315c: fc 6f 45 a9  	ldp	x28, x27, [sp, #80]
   83160: fd 7b 44 a9  	ldp	x29, x30, [sp, #64]
   83164: 20 00 80 52  	mov	w0, #1
   83168: ff 83 02 91  	add	sp, sp, #160
   8316c: c0 03 5f d6  	ret
   83170: eb 17 40 f9  	ldr	x11, [sp, #40]
   83174: cb 1c 00 b4  	cbz	x11, 0x8350c <_ZN42_$LT$$RF$T$u20$as$u20$core..fmt..Debug$GT$3fmt17h2118265c3795f77dE+0x408>
   83178: e8 1b 40 f9  	ldr	x8, [sp, #48]
   8317c: 1b 00 00 d0  	adrp	x27, 0x85000 <_ZN42_$LT$$RF$T$u20$as$u20$core..fmt..Debug$GT$3fmt17h2118265c3795f77dE+0x80>
   83180: 0e 00 00 d0  	adrp	x14, 0x85000 <_ZN42_$LT$$RF$T$u20$as$u20$core..fmt..Debug$GT$3fmt17h2118265c3795f77dE+0x84>
   83184: f8 03 1f aa  	mov	x24, xzr
   83188: e3 03 1f aa  	mov	x3, xzr
   8318c: 15 01 0b 8b  	add	x21, x8, x11
   83190: 7b 0f 02 91  	add	x27, x27, #131
   83194: ce a5 01 91  	add	x14, x14, #105
   83198: ec 03 08 aa  	mov	x12, x8
   8319c: ea 03 08 aa  	mov	x10, x8
   831a0: fc 03 0a aa  	mov	x28, x10
   831a4: 88 17 c0 38  	ldrsb	w8, [x28], #1
   831a8: 1d 1d 00 12  	and	w29, w8, #0xff
   831ac: 68 00 f8 37  	tbnz	w8, #31, 0x831b8 <_ZN42_$LT$$RF$T$u20$as$u20$core..fmt..Debug$GT$3fmt17h2118265c3795f77dE+0xb4>
   831b0: ed 03 1c aa  	mov	x13, x28
   831b4: 2f 00 00 14  	b	0x83270 <_ZN42_$LT$$RF$T$u20$as$u20$core..fmt..Debug$GT$3fmt17h2118265c3795f77dE+0x16c>
   831b8: 9f 03 15 eb  	cmp	x28, x21
   831bc: 80 02 00 54  	b.eq	0x8320c <_ZN42_$LT$$RF$T$u20$as$u20$core..fmt..Debug$GT$3fmt17h2118265c3795f77dE+0x108>
   831c0: 48 05 40 39  	ldrb	w8, [x10, #1]
   831c4: 4d 09 00 91  	add	x13, x10, #2
   831c8: 0a 15 00 12  	and	w10, w8, #0x3f
   831cc: bf 7f 03 71  	cmp	w29, #223
   831d0: a8 13 00 12  	and	w8, w29, #0x1f
   831d4: 69 02 00 54  	b.ls	0x83220 <_ZN42_$LT$$RF$T$u20$as$u20$core..fmt..Debug$GT$3fmt17h2118265c3795f77dE+0x11c>
   831d8: bf 01 15 eb  	cmp	x13, x21
   831dc: a0 02 00 54  	b.eq	0x83230 <_ZN42_$LT$$RF$T$u20$as$u20$core..fmt..Debug$GT$3fmt17h2118265c3795f77dE+0x12c>
   831e0: a9 15 40 38  	ldrb	w9, [x13], #1
   831e4: 29 15 00 12  	and	w9, w9, #0x3f
   831e8: bf c3 03 71  	cmp	w29, #240
   831ec: 49 15 1a 33  	bfi	w9, w10, #6, #6
   831f0: a3 02 00 54  	b.lo	0x83244 <_ZN42_$LT$$RF$T$u20$as$u20$core..fmt..Debug$GT$3fmt17h2118265c3795f77dE+0x140>
   831f4: bf 01 15 eb  	cmp	x13, x21
   831f8: e0 02 00 54  	b.eq	0x83254 <_ZN42_$LT$$RF$T$u20$as$u20$core..fmt..Debug$GT$3fmt17h2118265c3795f77dE+0x150>
   831fc: aa 15 40 38  	ldrb	w10, [x13], #1
   83200: 4a 15 00 12  	and	w10, w10, #0x3f
   83204: fc 03 0d aa  	mov	x28, x13
   83208: 15 00 00 14  	b	0x8325c <_ZN42_$LT$$RF$T$u20$as$u20$core..fmt..Debug$GT$3fmt17h2118265c3795f77dE+0x158>
   8320c: ea 03 1f 2a  	mov	w10, wzr
   83210: ed 03 15 aa  	mov	x13, x21
   83214: bf 7f 03 71  	cmp	w29, #223
   83218: a8 13 00 12  	and	w8, w29, #0x1f
   8321c: e8 fd ff 54  	b.hi	0x831d8 <_ZN42_$LT$$RF$T$u20$as$u20$core..fmt..Debug$GT$3fmt17h2118265c3795f77dE+0xd4>
   83220: 0a 11 1a 33  	bfi	w10, w8, #6, #5
   83224: fc 03 0d aa  	mov	x28, x13
   83228: fd 03 0a 2a  	mov	w29, w10
   8322c: 11 00 00 14  	b	0x83270 <_ZN42_$LT$$RF$T$u20$as$u20$core..fmt..Debug$GT$3fmt17h2118265c3795f77dE+0x16c>
   83230: e9 03 1f 2a  	mov	w9, wzr
   83234: ed 03 15 aa  	mov	x13, x21
   83238: bf c3 03 71  	cmp	w29, #240
   8323c: 49 15 1a 33  	bfi	w9, w10, #6, #6
   83240: a2 fd ff 54  	b.hs	0x831f4 <_ZN42_$LT$$RF$T$u20$as$u20$core..fmt..Debug$GT$3fmt17h2118265c3795f77dE+0xf0>
   83244: 09 11 14 33  	bfi	w9, w8, #12, #5
   83248: fc 03 0d aa  	mov	x28, x13
   8324c: fd 03 09 2a  	mov	w29, w9
   83250: 08 00 00 14  	b	0x83270 <_ZN42_$LT$$RF$T$u20$as$u20$core..fmt..Debug$GT$3fmt17h2118265c3795f77dE+0x16c>
   83254: ea 03 1f 2a  	mov	w10, wzr
   83258: fc 03 15 aa  	mov	x28, x21
   8325c: 08 09 0e 53  	ubfiz	w8, w8, #18, #3
   83260: 28 2d 1a 33  	bfi	w8, w9, #6, #12
   83264: 1d 01 0a 2a  	orr	w29, w8, w10
   83268: bf 43 44 71  	cmp	w29, #272, lsl #12
   8326c: 00 14 00 54  	b.eq	0x834ec <_ZN42_$LT$$RF$T$u20$as$u20$core..fmt..Debug$GT$3fmt17h2118265c3795f77dE+0x3e8>
   83270: a8 27 00 51  	sub	w8, w29, #9
   83274: 1f 65 00 71  	cmp	w8, #25
   83278: ed 33 01 a9  	stp	x13, x12, [sp, #16]
   8327c: fc 07 00 f9  	str	x28, [sp, #8]
   83280: 48 01 00 54  	b.hi	0x832a8 <_ZN42_$LT$$RF$T$u20$as$u20$core..fmt..Debug$GT$3fmt17h2118265c3795f77dE+0x1a4>
   83284: c9 00 00 10  	adr	x9, #24
   83288: ca 69 68 38  	ldrb	w10, [x14, x8]
   8328c: 29 09 0a 8b  	add	x9, x9, x10, lsl #2
   83290: 97 0e 80 52  	mov	w23, #116
   83294: 59 00 80 52  	mov	w25, #2
   83298: 20 01 1f d6  	br	x9
   8329c: d7 0d 80 52  	mov	w23, #110
   832a0: 59 00 80 52  	mov	w25, #2
   832a4: 1f 00 00 14  	b	0x83320 <_ZN42_$LT$$RF$T$u20$as$u20$core..fmt..Debug$GT$3fmt17h2118265c3795f77dE+0x21c>
   832a8: bf 73 01 71  	cmp	w29, #92
   832ac: 81 00 00 54  	b.ne	0x832bc <_ZN42_$LT$$RF$T$u20$as$u20$core..fmt..Debug$GT$3fmt17h2118265c3795f77dE+0x1b8>
   832b0: 59 00 80 52  	mov	w25, #2
   832b4: f7 03 1d 2a  	mov	w23, w29
   832b8: 1a 00 00 14  	b	0x83320 <_ZN42_$LT$$RF$T$u20$as$u20$core..fmt..Debug$GT$3fmt17h2118265c3795f77dE+0x21c>
   832bc: e0 03 1d 2a  	mov	w0, w29
   832c0: f4 03 03 aa  	mov	x20, x3
   832c4: eb fc ff 97  	bl	0x82670 <_ZN4core7unicode12unicode_data15grapheme_extend6lookup17h6270b00245d19f23E>
   832c8: 80 01 00 37  	tbnz	w0, #0, 0x832f8 <_ZN42_$LT$$RF$T$u20$as$u20$core..fmt..Debug$GT$3fmt17h2118265c3795f77dE+0x1f4>
   832cc: e0 03 1d 2a  	mov	w0, w29
   832d0: 36 fd ff 97  	bl	0x827a8 <_ZN4core7unicode9printable12is_printable17ha641fcfcb2036eb6E>
   832d4: 20 01 00 36  	tbz	w0, #0, 0x832f8 <_ZN42_$LT$$RF$T$u20$as$u20$core..fmt..Debug$GT$3fmt17h2118265c3795f77dE+0x1f4>
   832d8: eb 17 40 f9  	ldr	x11, [sp, #40]
   832dc: ea 27 41 a9  	ldp	x10, x9, [sp, #16]
   832e0: fc 03 15 aa  	mov	x28, x21
   832e4: f5 03 14 aa  	mov	x21, x20
   832e8: 78 00 00 14  	b	0x834c8 <_ZN42_$LT$$RF$T$u20$as$u20$core..fmt..Debug$GT$3fmt17h2118265c3795f77dE+0x3c4>
   832ec: 57 0e 80 52  	mov	w23, #114
   832f0: 59 00 80 52  	mov	w25, #2
   832f4: 0b 00 00 14  	b	0x83320 <_ZN42_$LT$$RF$T$u20$as$u20$core..fmt..Debug$GT$3fmt17h2118265c3795f77dE+0x21c>
   832f8: a8 03 00 32  	orr	w8, w29, #0x1
   832fc: eb 17 40 f9  	ldr	x11, [sp, #40]
   83300: 08 11 c0 5a  	clz	w8, w8
   83304: e9 03 1d 2a  	mov	w9, w29
   83308: aa 00 c0 d2  	mov	x10, #21474836480
   8330c: 08 7d 02 53  	lsr	w8, w8, #2
   83310: 3a 01 0a aa  	orr	x26, x9, x10
   83314: 16 09 00 52  	eor	w22, w8, #0x7
   83318: 79 00 80 52  	mov	w25, #3
   8331c: e3 03 14 aa  	mov	x3, x20
   83320: 7f 00 18 eb  	cmp	x3, x24
   83324: 23 12 00 54  	b.lo	0x83568 <_ZN42_$LT$$RF$T$u20$as$u20$core..fmt..Debug$GT$3fmt17h2118265c3795f77dE+0x464>
   83328: 38 01 00 b4  	cbz	x24, 0x8334c <_ZN42_$LT$$RF$T$u20$as$u20$core..fmt..Debug$GT$3fmt17h2118265c3795f77dE+0x248>
   8332c: 1f 03 0b eb  	cmp	x24, x11
   83330: c2 00 00 54  	b.hs	0x83348 <_ZN42_$LT$$RF$T$u20$as$u20$core..fmt..Debug$GT$3fmt17h2118265c3795f77dE+0x244>
   83334: e8 1b 40 f9  	ldr	x8, [sp, #48]
   83338: 08 69 f8 38  	ldrsb	w8, [x8, x24]
   8333c: 1f 01 01 31  	cmn	w8, #64
   83340: 6a 00 00 54  	b.ge	0x8334c <_ZN42_$LT$$RF$T$u20$as$u20$core..fmt..Debug$GT$3fmt17h2118265c3795f77dE+0x248>
   83344: 89 00 00 14  	b	0x83568 <_ZN42_$LT$$RF$T$u20$as$u20$core..fmt..Debug$GT$3fmt17h2118265c3795f77dE+0x464>
   83348: 01 11 00 54  	b.ne	0x83568 <_ZN42_$LT$$RF$T$u20$as$u20$core..fmt..Debug$GT$3fmt17h2118265c3795f77dE+0x464>
   8334c: 23 01 00 b4  	cbz	x3, 0x83370 <_ZN42_$LT$$RF$T$u20$as$u20$core..fmt..Debug$GT$3fmt17h2118265c3795f77dE+0x26c>
   83350: 7f 00 0b eb  	cmp	x3, x11
   83354: 22 01 00 54  	b.hs	0x83378 <_ZN42_$LT$$RF$T$u20$as$u20$core..fmt..Debug$GT$3fmt17h2118265c3795f77dE+0x274>
   83358: e8 1b 40 f9  	ldr	x8, [sp, #48]
   8335c: f4 03 03 aa  	mov	x20, x3
   83360: 08 69 e3 38  	ldrsb	w8, [x8, x3]
   83364: 1f 05 01 31  	cmn	w8, #65
   83368: cc 00 00 54  	b.gt	0x83380 <_ZN42_$LT$$RF$T$u20$as$u20$core..fmt..Debug$GT$3fmt17h2118265c3795f77dE+0x27c>
   8336c: 7f 00 00 14  	b	0x83568 <_ZN42_$LT$$RF$T$u20$as$u20$core..fmt..Debug$GT$3fmt17h2118265c3795f77dE+0x464>
   83370: f4 03 1f aa  	mov	x20, xzr
   83374: 03 00 00 14  	b	0x83380 <_ZN42_$LT$$RF$T$u20$as$u20$core..fmt..Debug$GT$3fmt17h2118265c3795f77dE+0x27c>
   83378: f4 03 0b aa  	mov	x20, x11
   8337c: 61 0f 00 54  	b.ne	0x83568 <_ZN42_$LT$$RF$T$u20$as$u20$core..fmt..Debug$GT$3fmt17h2118265c3795f77dE+0x464>
   83380: e8 13 40 f9  	ldr	x8, [sp, #32]
   83384: e9 1b 40 f9  	ldr	x9, [sp, #48]
   83388: 82 02 18 cb  	sub	x2, x20, x24
   8338c: e0 03 13 aa  	mov	x0, x19
   83390: 08 0d 40 f9  	ldr	x8, [x8, #24]
   83394: 21 01 18 8b  	add	x1, x9, x24
   83398: fc 03 15 aa  	mov	x28, x21
   8339c: f5 03 03 aa  	mov	x21, x3
   833a0: 00 01 3f d6  	blr	x8
   833a4: 18 00 00 d0  	adrp	x24, 0x85000 <_ZN42_$LT$$RF$T$u20$as$u20$core..fmt..Debug$GT$3fmt17h2118265c3795f77dE+0x2a8>
   833a8: 18 1f 02 91  	add	x24, x24, #135
   833ac: 00 01 00 36  	tbz	w0, #0, 0x833cc <_ZN42_$LT$$RF$T$u20$as$u20$core..fmt..Debug$GT$3fmt17h2118265c3795f77dE+0x2c8>
   833b0: 67 ff ff 17  	b	0x8314c <_ZN42_$LT$$RF$T$u20$as$u20$core..fmt..Debug$GT$3fmt17h2118265c3795f77dE+0x48>
   833b4: f9 03 1f 2a  	mov	w25, wzr
   833b8: e1 03 17 2a  	mov	w1, w23
   833bc: e2 1f 40 f9  	ldr	x2, [sp, #56]
   833c0: e0 03 13 aa  	mov	x0, x19
   833c4: 40 00 3f d6  	blr	x2
   833c8: 20 ec 07 37  	tbnz	w0, #0, 0x8314c <_ZN42_$LT$$RF$T$u20$as$u20$core..fmt..Debug$GT$3fmt17h2118265c3795f77dE+0x48>
   833cc: e8 03 19 2a  	mov	w8, w25
   833d0: 29 ff ff 10  	adr	x9, #-28
   833d4: 6a 6b 68 38  	ldrb	w10, [x27, x8]
   833d8: 29 09 0a 8b  	add	x9, x9, x10, lsl #2
   833dc: 39 00 80 52  	mov	w25, #1
   833e0: 81 0b 80 52  	mov	w1, #92
   833e4: 20 01 1f d6  	br	x9
   833e8: 48 9f 60 d3  	ubfx	x8, x26, #32, #8
   833ec: 89 00 00 10  	adr	x9, #16
   833f0: 0a 6b 68 38  	ldrb	w10, [x24, x8]
   833f4: 29 09 0a 8b  	add	x9, x9, x10, lsl #2
   833f8: 20 01 1f d6  	br	x9
   833fc: 5a df 58 92  	and	x26, x26, #0xffffff00ffffffff
   83400: 79 00 80 52  	mov	w25, #3
   83404: a1 0f 80 52  	mov	w1, #125
   83408: ed ff ff 17  	b	0x833bc <_ZN42_$LT$$RF$T$u20$as$u20$core..fmt..Debug$GT$3fmt17h2118265c3795f77dE+0x2b8>
   8340c: 48 df 58 92  	and	x8, x26, #0xffffff00ffffffff
   83410: 79 00 80 52  	mov	w25, #3
   83414: 1a 05 60 b2  	orr	x26, x8, #0x300000000
   83418: a1 0e 80 52  	mov	w1, #117
   8341c: e8 ff ff 17  	b	0x833bc <_ZN42_$LT$$RF$T$u20$as$u20$core..fmt..Debug$GT$3fmt17h2118265c3795f77dE+0x2b8>
   83420: c8 0a 1e 53  	ubfiz	w8, w22, #2, #3
   83424: 48 27 c8 1a  	lsr	w8, w26, w8
   83428: 08 0d 00 12  	and	w8, w8, #0xf
   8342c: 1f 29 00 71  	cmp	w8, #10
   83430: e9 0a 80 52  	mov	w9, #87
   83434: 0a 06 80 52  	mov	w10, #48
   83438: 49 31 89 1a  	csel	w9, w10, w9, lo
   8343c: 21 01 08 0b  	add	w1, w9, w8
   83440: d6 01 00 b4  	cbz	x22, 0x83478 <_ZN42_$LT$$RF$T$u20$as$u20$core..fmt..Debug$GT$3fmt17h2118265c3795f77dE+0x374>
   83444: d6 06 00 d1  	sub	x22, x22, #1
   83448: 79 00 80 52  	mov	w25, #3
   8344c: dc ff ff 17  	b	0x833bc <_ZN42_$LT$$RF$T$u20$as$u20$core..fmt..Debug$GT$3fmt17h2118265c3795f77dE+0x2b8>
   83450: 48 df 58 92  	and	x8, x26, #0xffffff00ffffffff
   83454: 79 00 80 52  	mov	w25, #3
   83458: 1a 01 5f b2  	orr	x26, x8, #0x200000000
   8345c: 61 0f 80 52  	mov	w1, #123
   83460: d7 ff ff 17  	b	0x833bc <_ZN42_$LT$$RF$T$u20$as$u20$core..fmt..Debug$GT$3fmt17h2118265c3795f77dE+0x2b8>
   83464: 48 df 58 92  	and	x8, x26, #0xffffff00ffffffff
   83468: 79 00 80 52  	mov	w25, #3
   8346c: 1a 01 5e b2  	orr	x26, x8, #0x400000000
   83470: 81 0b 80 52  	mov	w1, #92
   83474: d2 ff ff 17  	b	0x833bc <_ZN42_$LT$$RF$T$u20$as$u20$core..fmt..Debug$GT$3fmt17h2118265c3795f77dE+0x2b8>
   83478: 48 df 58 92  	and	x8, x26, #0xffffff00ffffffff
   8347c: 1a 01 60 b2  	orr	x26, x8, #0x100000000
   83480: 79 00 80 52  	mov	w25, #3
   83484: ce ff ff 17  	b	0x833bc <_ZN42_$LT$$RF$T$u20$as$u20$core..fmt..Debug$GT$3fmt17h2118265c3795f77dE+0x2b8>
   83488: bf 03 02 71  	cmp	w29, #128
   8348c: a2 00 00 54  	b.hs	0x834a0 <_ZN42_$LT$$RF$T$u20$as$u20$core..fmt..Debug$GT$3fmt17h2118265c3795f77dE+0x39c>
   83490: eb 17 40 f9  	ldr	x11, [sp, #40]
   83494: ea 27 41 a9  	ldp	x10, x9, [sp, #16]
   83498: 28 00 80 52  	mov	w8, #1
   8349c: 0a 00 00 14  	b	0x834c4 <_ZN42_$LT$$RF$T$u20$as$u20$core..fmt..Debug$GT$3fmt17h2118265c3795f77dE+0x3c0>
   834a0: eb 17 40 f9  	ldr	x11, [sp, #40]
   834a4: ea 27 41 a9  	ldp	x10, x9, [sp, #16]
   834a8: bf 03 20 71  	cmp	w29, #2048
   834ac: 62 00 00 54  	b.hs	0x834b8 <_ZN42_$LT$$RF$T$u20$as$u20$core..fmt..Debug$GT$3fmt17h2118265c3795f77dE+0x3b4>
   834b0: 48 00 80 52  	mov	w8, #2
   834b4: 04 00 00 14  	b	0x834c4 <_ZN42_$LT$$RF$T$u20$as$u20$core..fmt..Debug$GT$3fmt17h2118265c3795f77dE+0x3c0>
   834b8: bf 43 40 71  	cmp	w29, #16, lsl #12
   834bc: 68 00 80 52  	mov	w8, #3
   834c0: 08 35 88 9a  	cinc	x8, x8, hs
   834c4: 18 01 14 8b  	add	x24, x8, x20
   834c8: a8 02 09 cb  	sub	x8, x21, x9
   834cc: e9 07 40 f9  	ldr	x9, [sp, #8]
   834d0: 0e 00 00 d0  	adrp	x14, 0x85000 <_ZN42_$LT$$RF$T$u20$as$u20$core..fmt..Debug$GT$3fmt17h2118265c3795f77dE+0x3d4>
   834d4: f5 03 1c aa  	mov	x21, x28
   834d8: 5f 01 1c eb  	cmp	x10, x28
   834dc: 03 01 09 8b  	add	x3, x8, x9
   834e0: ec 03 0a aa  	mov	x12, x10
   834e4: ce a5 01 91  	add	x14, x14, #105
   834e8: c1 e5 ff 54  	b.ne	0x831a0 <_ZN42_$LT$$RF$T$u20$as$u20$core..fmt..Debug$GT$3fmt17h2118265c3795f77dE+0x9c>
   834ec: 38 01 00 b4  	cbz	x24, 0x83510 <_ZN42_$LT$$RF$T$u20$as$u20$core..fmt..Debug$GT$3fmt17h2118265c3795f77dE+0x40c>
   834f0: 1f 03 0b eb  	cmp	x24, x11
   834f4: 42 03 00 54  	b.hs	0x8355c <_ZN42_$LT$$RF$T$u20$as$u20$core..fmt..Debug$GT$3fmt17h2118265c3795f77dE+0x458>
   834f8: e8 1b 40 f9  	ldr	x8, [sp, #48]
   834fc: 08 69 f8 38  	ldrsb	w8, [x8, x24]
   83500: 1f 05 01 31  	cmn	w8, #65
   83504: 6c 00 00 54  	b.gt	0x83510 <_ZN42_$LT$$RF$T$u20$as$u20$core..fmt..Debug$GT$3fmt17h2118265c3795f77dE+0x40c>
   83508: 1f 00 00 14  	b	0x83584 <_ZN42_$LT$$RF$T$u20$as$u20$core..fmt..Debug$GT$3fmt17h2118265c3795f77dE+0x480>
   8350c: f8 03 1f aa  	mov	x24, xzr
   83510: e8 13 40 f9  	ldr	x8, [sp, #32]
   83514: e9 1b 40 f9  	ldr	x9, [sp, #48]
   83518: 62 01 18 cb  	sub	x2, x11, x24
   8351c: e0 03 13 aa  	mov	x0, x19
   83520: 08 0d 40 f9  	ldr	x8, [x8, #24]
   83524: 21 01 18 8b  	add	x1, x9, x24
   83528: 00 01 3f d6  	blr	x8
   8352c: 00 e1 07 37  	tbnz	w0, #0, 0x8314c <_ZN42_$LT$$RF$T$u20$as$u20$core..fmt..Debug$GT$3fmt17h2118265c3795f77dE+0x48>
   83530: e0 03 13 aa  	mov	x0, x19
   83534: e2 1f 40 f9  	ldr	x2, [sp, #56]
   83538: f4 4f 49 a9  	ldp	x20, x19, [sp, #144]
   8353c: f6 57 48 a9  	ldp	x22, x21, [sp, #128]
   83540: f8 5f 47 a9  	ldp	x24, x23, [sp, #112]
   83544: fa 67 46 a9  	ldp	x26, x25, [sp, #96]
   83548: fc 6f 45 a9  	ldp	x28, x27, [sp, #80]
   8354c: fd 7b 44 a9  	ldp	x29, x30, [sp, #64]
   83550: 41 04 80 52  	mov	w1, #34
   83554: ff 83 02 91  	add	sp, sp, #160
   83558: 40 00 1f d6  	br	x2
   8355c: 41 01 00 54  	b.ne	0x83584 <_ZN42_$LT$$RF$T$u20$as$u20$core..fmt..Debug$GT$3fmt17h2118265c3795f77dE+0x480>
   83560: f8 03 0b aa  	mov	x24, x11
   83564: eb ff ff 17  	b	0x83510 <_ZN42_$LT$$RF$T$u20$as$u20$core..fmt..Debug$GT$3fmt17h2118265c3795f77dE+0x40c>
   83568: e0 1b 40 f9  	ldr	x0, [sp, #48]
   8356c: 04 00 00 f0  	adrp	x4, 0x86000 <_ZN42_$LT$$RF$T$u20$as$u20$core..fmt..Debug$GT$3fmt17h2118265c3795f77dE+0x474>
   83570: 84 a0 16 91  	add	x4, x4, #1448
   83574: e1 03 0b aa  	mov	x1, x11
   83578: e2 03 18 aa  	mov	x2, x24
   8357c: 3d fa ff 97  	bl	0x81e70 <_ZN4core3str16slice_error_fail17hcc0d3c3105355e6aE>
   83580: 20 00 20 d4  	brk	#0x1
   83584: e0 1b 40 f9  	ldr	x0, [sp, #48]
   83588: 04 00 00 f0  	adrp	x4, 0x86000 <_ZN42_$LT$$RF$T$u20$as$u20$core..fmt..Debug$GT$3fmt17h2118265c3795f77dE+0x490>
   8358c: 84 40 16 91  	add	x4, x4, #1424
   83590: e1 03 0b aa  	mov	x1, x11
   83594: e2 03 18 aa  	mov	x2, x24
   83598: e3 03 0b aa  	mov	x3, x11
   8359c: 35 fa ff 97  	bl	0x81e70 <_ZN4core3str16slice_error_fail17hcc0d3c3105355e6aE>
   835a0: 20 00 20 d4  	brk	#0x1

00000000000835a4 <_ZN71_$LT$core..panic..panic_info..PanicInfo$u20$as$u20$core..fmt..Debug$GT$3fmt17ha3e0b3cc45a627c8E>:
   835a4: ff 03 01 d1  	sub	sp, sp, #64
   835a8: fe 0b 00 f9  	str	x30, [sp, #16]
   835ac: f6 57 02 a9  	stp	x22, x21, [sp, #32]
   835b0: f4 4f 03 a9  	stp	x20, x19, [sp, #48]
   835b4: f4 03 00 aa  	mov	x20, x0
   835b8: 20 20 42 a9  	ldp	x0, x8, [x1, #32]
   835bc: f3 03 01 aa  	mov	x19, x1
   835c0: 01 00 00 f0  	adrp	x1, 0x86000 <_ZN71_$LT$core..panic..panic_info..PanicInfo$u20$as$u20$core..fmt..Debug$GT$3fmt17ha3e0b3cc45a627c8E+0x28>
   835c4: 21 8c 18 91  	add	x1, x1, #1571
   835c8: 08 0d 40 f9  	ldr	x8, [x8, #24]
   835cc: 22 01 80 52  	mov	w2, #9
   835d0: 95 42 00 91  	add	x21, x20, #16
   835d4: 96 62 00 91  	add	x22, x20, #24
   835d8: 00 01 3f d6  	blr	x8
   835dc: 1f 00 00 71  	cmp	w0, #0
   835e0: 01 00 00 f0  	adrp	x1, 0x86000 <_ZN71_$LT$core..panic..panic_info..PanicInfo$u20$as$u20$core..fmt..Debug$GT$3fmt17ha3e0b3cc45a627c8E+0x48>
   835e4: 04 00 00 f0  	adrp	x4, 0x86000 <_ZN71_$LT$core..panic..panic_info..PanicInfo$u20$as$u20$core..fmt..Debug$GT$3fmt17ha3e0b3cc45a627c8E+0x4c>
   835e8: e8 07 9f 9a  	cset	x8, ne
   835ec: 21 b0 18 91  	add	x1, x1, #1580
   835f0: 84 e0 18 91  	add	x4, x4, #1592
   835f4: e0 03 00 91  	mov	x0, sp
   835f8: e3 63 00 91  	add	x3, sp, #24
   835fc: e2 00 80 52  	mov	w2, #7
   83600: f3 23 00 a9  	stp	x19, x8, [sp]
   83604: f4 0f 00 f9  	str	x20, [sp, #24]
   83608: 1d fd ff 97  	bl	0x82a7c <_ZN4core3fmt8builders11DebugStruct5field17hd9641a54df8a3bf1E>
   8360c: 01 00 00 f0  	adrp	x1, 0x86000 <_ZN71_$LT$core..panic..panic_info..PanicInfo$u20$as$u20$core..fmt..Debug$GT$3fmt17ha3e0b3cc45a627c8E+0x74>
   83610: 04 00 00 f0  	adrp	x4, 0x86000 <_ZN71_$LT$core..panic..panic_info..PanicInfo$u20$as$u20$core..fmt..Debug$GT$3fmt17ha3e0b3cc45a627c8E+0x78>
   83614: 21 60 19 91  	add	x1, x1, #1624
   83618: 84 80 19 91  	add	x4, x4, #1632
   8361c: e0 03 00 91  	mov	x0, sp
   83620: e3 63 00 91  	add	x3, sp, #24
   83624: e2 00 80 52  	mov	w2, #7
   83628: f5 0f 00 f9  	str	x21, [sp, #24]
   8362c: 14 fd ff 97  	bl	0x82a7c <_ZN4core3fmt8builders11DebugStruct5field17hd9641a54df8a3bf1E>
   83630: 01 00 00 d0  	adrp	x1, 0x85000 <_ZN71_$LT$core..panic..panic_info..PanicInfo$u20$as$u20$core..fmt..Debug$GT$3fmt17ha3e0b3cc45a627c8E+0x94>
   83634: 04 00 00 f0  	adrp	x4, 0x86000 <_ZN71_$LT$core..panic..panic_info..PanicInfo$u20$as$u20$core..fmt..Debug$GT$3fmt17ha3e0b3cc45a627c8E+0x9c>
   83638: 21 a0 00 91  	add	x1, x1, #40
   8363c: 84 00 1a 91  	add	x4, x4, #1664
   83640: e0 03 00 91  	mov	x0, sp
   83644: e3 63 00 91  	add	x3, sp, #24
   83648: 02 01 80 52  	mov	w2, #8
   8364c: f6 0f 00 f9  	str	x22, [sp, #24]
   83650: 0b fd ff 97  	bl	0x82a7c <_ZN4core3fmt8builders11DebugStruct5field17hd9641a54df8a3bf1E>
   83654: e8 27 40 39  	ldrb	w8, [sp, #9]
   83658: e0 23 40 39  	ldrb	w0, [sp, #8]
   8365c: 48 02 00 34  	cbz	w8, 0x836a4 <_ZN71_$LT$core..panic..panic_info..PanicInfo$u20$as$u20$core..fmt..Debug$GT$3fmt17ha3e0b3cc45a627c8E+0x100>
   83660: 60 00 00 34  	cbz	w0, 0x8366c <_ZN71_$LT$core..panic..panic_info..PanicInfo$u20$as$u20$core..fmt..Debug$GT$3fmt17ha3e0b3cc45a627c8E+0xc8>
   83664: 20 00 80 52  	mov	w0, #1
   83668: 0f 00 00 14  	b	0x836a4 <_ZN71_$LT$core..panic..panic_info..PanicInfo$u20$as$u20$core..fmt..Debug$GT$3fmt17ha3e0b3cc45a627c8E+0x100>
   8366c: e8 03 40 f9  	ldr	x8, [sp]
   83670: 09 c1 40 39  	ldrb	w9, [x8, #48]
   83674: c9 00 10 37  	tbnz	w9, #2, 0x8368c <_ZN71_$LT$core..panic..panic_info..PanicInfo$u20$as$u20$core..fmt..Debug$GT$3fmt17ha3e0b3cc45a627c8E+0xe8>
   83678: 00 25 42 a9  	ldp	x0, x9, [x8, #32]
   8367c: 01 00 00 f0  	adrp	x1, 0x86000 <_ZN71_$LT$core..panic..panic_info..PanicInfo$u20$as$u20$core..fmt..Debug$GT$3fmt17ha3e0b3cc45a627c8E+0xe4>
   83680: 21 24 16 91  	add	x1, x1, #1417
   83684: 42 00 80 52  	mov	w2, #2
   83688: 05 00 00 14  	b	0x8369c <_ZN71_$LT$core..panic..panic_info..PanicInfo$u20$as$u20$core..fmt..Debug$GT$3fmt17ha3e0b3cc45a627c8E+0xf8>
   8368c: 00 25 42 a9  	ldp	x0, x9, [x8, #32]
   83690: 01 00 00 f0  	adrp	x1, 0x86000 <_ZN71_$LT$core..panic..panic_info..PanicInfo$u20$as$u20$core..fmt..Debug$GT$3fmt17ha3e0b3cc45a627c8E+0xf8>
   83694: 21 20 16 91  	add	x1, x1, #1416
   83698: 22 00 80 52  	mov	w2, #1
   8369c: 28 0d 40 f9  	ldr	x8, [x9, #24]
   836a0: 00 01 3f d6  	blr	x8
   836a4: f4 4f 43 a9  	ldp	x20, x19, [sp, #48]
   836a8: f6 57 42 a9  	ldp	x22, x21, [sp, #32]
   836ac: fe 0b 40 f9  	ldr	x30, [sp, #16]
   836b0: 1f 00 00 71  	cmp	w0, #0
   836b4: e0 07 9f 1a  	cset	w0, ne
   836b8: ff 03 01 91  	add	sp, sp, #64
   836bc: c0 03 5f d6  	ret

00000000000836c0 <_ZN42_$LT$$RF$T$u20$as$u20$core..fmt..Debug$GT$3fmt17h0702462b4f7b9fe3E>:
   836c0: ff 03 01 d1  	sub	sp, sp, #64
   836c4: fe 0b 00 f9  	str	x30, [sp, #16]
   836c8: f6 57 02 a9  	stp	x22, x21, [sp, #32]
   836cc: f4 4f 03 a9  	stp	x20, x19, [sp, #48]
   836d0: 08 00 40 f9  	ldr	x8, [x0]
   836d4: 20 24 42 a9  	ldp	x0, x9, [x1, #32]
   836d8: f3 03 01 aa  	mov	x19, x1
   836dc: 01 00 00 d0  	adrp	x1, 0x85000 <_ZN42_$LT$$RF$T$u20$as$u20$core..fmt..Debug$GT$3fmt17h0702462b4f7b9fe3E+0x24>
   836e0: 14 01 40 f9  	ldr	x20, [x8]
   836e4: 28 0d 40 f9  	ldr	x8, [x9, #24]
   836e8: 21 e0 00 91  	add	x1, x1, #56
   836ec: 02 01 80 52  	mov	w2, #8
   836f0: 95 42 00 91  	add	x21, x20, #16
   836f4: 96 52 00 91  	add	x22, x20, #20
   836f8: 00 01 3f d6  	blr	x8
   836fc: 1f 00 00 71  	cmp	w0, #0
   83700: 01 00 00 d0  	adrp	x1, 0x85000 <_ZN42_$LT$$RF$T$u20$as$u20$core..fmt..Debug$GT$3fmt17h0702462b4f7b9fe3E+0x48>
   83704: 04 00 00 f0  	adrp	x4, 0x86000 <_ZN42_$LT$$RF$T$u20$as$u20$core..fmt..Debug$GT$3fmt17h0702462b4f7b9fe3E+0x50>
   83708: e8 07 9f 9a  	cset	x8, ne
   8370c: 21 f0 28 91  	add	x1, x1, #2620
   83710: 84 80 17 91  	add	x4, x4, #1504
   83714: e0 03 00 91  	mov	x0, sp
   83718: e3 63 00 91  	add	x3, sp, #24
   8371c: 82 00 80 52  	mov	w2, #4
   83720: f3 23 00 a9  	stp	x19, x8, [sp]
   83724: f4 0f 00 f9  	str	x20, [sp, #24]
   83728: d5 fc ff 97  	bl	0x82a7c <_ZN4core3fmt8builders11DebugStruct5field17hd9641a54df8a3bf1E>
   8372c: 13 00 00 f0  	adrp	x19, 0x86000 <_ZN42_$LT$$RF$T$u20$as$u20$core..fmt..Debug$GT$3fmt17h0702462b4f7b9fe3E+0x78>
   83730: 01 00 00 d0  	adrp	x1, 0x85000 <_ZN42_$LT$$RF$T$u20$as$u20$core..fmt..Debug$GT$3fmt17h0702462b4f7b9fe3E+0x78>
   83734: 73 02 18 91  	add	x19, x19, #1536
   83738: 21 00 29 91  	add	x1, x1, #2624
   8373c: e0 03 00 91  	mov	x0, sp
   83740: e3 63 00 91  	add	x3, sp, #24
   83744: 82 00 80 52  	mov	w2, #4
   83748: e4 03 13 aa  	mov	x4, x19
   8374c: f5 0f 00 f9  	str	x21, [sp, #24]
   83750: cb fc ff 97  	bl	0x82a7c <_ZN4core3fmt8builders11DebugStruct5field17hd9641a54df8a3bf1E>
   83754: 01 00 00 f0  	adrp	x1, 0x86000 <_ZN42_$LT$$RF$T$u20$as$u20$core..fmt..Debug$GT$3fmt17h0702462b4f7b9fe3E+0xa0>
   83758: 21 80 18 91  	add	x1, x1, #1568
   8375c: e0 03 00 91  	mov	x0, sp
   83760: e3 63 00 91  	add	x3, sp, #24
   83764: 62 00 80 52  	mov	w2, #3
   83768: e4 03 13 aa  	mov	x4, x19
   8376c: f6 0f 00 f9  	str	x22, [sp, #24]
   83770: c3 fc ff 97  	bl	0x82a7c <_ZN4core3fmt8builders11DebugStruct5field17hd9641a54df8a3bf1E>
   83774: e8 27 40 39  	ldrb	w8, [sp, #9]
   83778: e0 23 40 39  	ldrb	w0, [sp, #8]
   8377c: 48 02 00 34  	cbz	w8, 0x837c4 <_ZN42_$LT$$RF$T$u20$as$u20$core..fmt..Debug$GT$3fmt17h0702462b4f7b9fe3E+0x104>
   83780: 60 00 00 34  	cbz	w0, 0x8378c <_ZN42_$LT$$RF$T$u20$as$u20$core..fmt..Debug$GT$3fmt17h0702462b4f7b9fe3E+0xcc>
   83784: 20 00 80 52  	mov	w0, #1
   83788: 0f 00 00 14  	b	0x837c4 <_ZN42_$LT$$RF$T$u20$as$u20$core..fmt..Debug$GT$3fmt17h0702462b4f7b9fe3E+0x104>
   8378c: e8 03 40 f9  	ldr	x8, [sp]
   83790: 09 c1 40 39  	ldrb	w9, [x8, #48]
   83794: c9 00 10 37  	tbnz	w9, #2, 0x837ac <_ZN42_$LT$$RF$T$u20$as$u20$core..fmt..Debug$GT$3fmt17h0702462b4f7b9fe3E+0xec>
   83798: 00 25 42 a9  	ldp	x0, x9, [x8, #32]
   8379c: 01 00 00 f0  	adrp	x1, 0x86000 <_ZN42_$LT$$RF$T$u20$as$u20$core..fmt..Debug$GT$3fmt17h0702462b4f7b9fe3E+0xe8>
   837a0: 21 24 16 91  	add	x1, x1, #1417
   837a4: 42 00 80 52  	mov	w2, #2
   837a8: 05 00 00 14  	b	0x837bc <_ZN42_$LT$$RF$T$u20$as$u20$core..fmt..Debug$GT$3fmt17h0702462b4f7b9fe3E+0xfc>
   837ac: 00 25 42 a9  	ldp	x0, x9, [x8, #32]
   837b0: 01 00 00 f0  	adrp	x1, 0x86000 <_ZN42_$LT$$RF$T$u20$as$u20$core..fmt..Debug$GT$3fmt17h0702462b4f7b9fe3E+0xfc>
   837b4: 21 20 16 91  	add	x1, x1, #1416
   837b8: 22 00 80 52  	mov	w2, #1
   837bc: 28 0d 40 f9  	ldr	x8, [x9, #24]
   837c0: 00 01 3f d6  	blr	x8
   837c4: f4 4f 43 a9  	ldp	x20, x19, [sp, #48]
   837c8: f6 57 42 a9  	ldp	x22, x21, [sp, #32]
   837cc: fe 0b 40 f9  	ldr	x30, [sp, #16]
   837d0: 1f 00 00 71  	cmp	w0, #0
   837d4: e0 07 9f 1a  	cset	w0, ne
   837d8: ff 03 01 91  	add	sp, sp, #64
   837dc: c0 03 5f d6  	ret

00000000000837e0 <_ZN42_$LT$$RF$T$u20$as$u20$core..fmt..Debug$GT$3fmt17hf9e5d8fb08b527bfE>:
   837e0: ff 03 02 d1  	sub	sp, sp, #128
   837e4: fe 5f 05 a9  	stp	x30, x23, [sp, #80]
   837e8: f6 57 06 a9  	stp	x22, x21, [sp, #96]
   837ec: f4 4f 07 a9  	stp	x20, x19, [sp, #112]
   837f0: 17 00 40 f9  	ldr	x23, [x0]
   837f4: f5 03 01 aa  	mov	x21, x1
   837f8: e8 02 40 f9  	ldr	x8, [x23]
   837fc: 08 02 00 b4  	cbz	x8, 0x8383c <_ZN42_$LT$$RF$T$u20$as$u20$core..fmt..Debug$GT$3fmt17hf9e5d8fb08b527bfE+0x5c>
   83800: b3 52 42 a9  	ldp	x19, x20, [x21, #32]
   83804: 01 00 00 d0  	adrp	x1, 0x85000 <_ZN42_$LT$$RF$T$u20$as$u20$core..fmt..Debug$GT$3fmt17hf9e5d8fb08b527bfE+0x2c>
   83808: 21 d0 28 91  	add	x1, x1, #2612
   8380c: 82 00 80 52  	mov	w2, #4
   83810: 96 0e 40 f9  	ldr	x22, [x20, #24]
   83814: e0 03 13 aa  	mov	x0, x19
   83818: c0 02 3f d6  	blr	x22
   8381c: 40 02 00 36  	tbz	w0, #0, 0x83864 <_ZN42_$LT$$RF$T$u20$as$u20$core..fmt..Debug$GT$3fmt17hf9e5d8fb08b527bfE+0x84>
   83820: 35 00 80 52  	mov	w21, #1
   83824: e0 03 15 2a  	mov	w0, w21
   83828: f4 4f 47 a9  	ldp	x20, x19, [sp, #112]
   8382c: f6 57 46 a9  	ldp	x22, x21, [sp, #96]
   83830: fe 5f 45 a9  	ldp	x30, x23, [sp, #80]
   83834: ff 03 02 91  	add	sp, sp, #128
   83838: c0 03 5f d6  	ret
   8383c: a0 22 42 a9  	ldp	x0, x8, [x21, #32]
   83840: f4 4f 47 a9  	ldp	x20, x19, [sp, #112]
   83844: f6 57 46 a9  	ldp	x22, x21, [sp, #96]
   83848: fe 5f 45 a9  	ldp	x30, x23, [sp, #80]
   8384c: 03 0d 40 f9  	ldr	x3, [x8, #24]
   83850: 01 00 00 d0  	adrp	x1, 0x85000 <_ZN42_$LT$$RF$T$u20$as$u20$core..fmt..Debug$GT$3fmt17hf9e5d8fb08b527bfE+0x78>
   83854: 21 10 29 91  	add	x1, x1, #2628
   83858: 82 00 80 52  	mov	w2, #4
   8385c: ff 03 02 91  	add	sp, sp, #128
   83860: 60 00 1f d6  	br	x3
   83864: a8 c2 40 39  	ldrb	w8, [x21, #48]
   83868: 48 02 10 37  	tbnz	w8, #2, 0x838b0 <_ZN42_$LT$$RF$T$u20$as$u20$core..fmt..Debug$GT$3fmt17hf9e5d8fb08b527bfE+0xd0>
   8386c: 01 00 00 f0  	adrp	x1, 0x86000 <_ZN42_$LT$$RF$T$u20$as$u20$core..fmt..Debug$GT$3fmt17hf9e5d8fb08b527bfE+0x98>
   83870: 21 2c 16 91  	add	x1, x1, #1419
   83874: 22 00 80 52  	mov	w2, #1
   83878: e0 03 13 aa  	mov	x0, x19
   8387c: 35 00 80 52  	mov	w21, #1
   83880: c0 02 3f d6  	blr	x22
   83884: 00 fd 07 37  	tbnz	w0, #0, 0x83824 <_ZN42_$LT$$RF$T$u20$as$u20$core..fmt..Debug$GT$3fmt17hf9e5d8fb08b527bfE+0x44>
   83888: e1 02 40 f9  	ldr	x1, [x23]
   8388c: e0 83 00 91  	add	x0, sp, #32
   83890: 02 06 80 52  	mov	w2, #48
   83894: 18 01 00 94  	bl	0x83cf4 <memcpy>
   83898: e2 83 00 91  	add	x2, sp, #32
   8389c: e0 03 13 aa  	mov	x0, x19
   838a0: e1 03 14 aa  	mov	x1, x20
   838a4: 1f f8 ff 97  	bl	0x81920 <_ZN4core3fmt5write17h63775af3066fbce8E>
   838a8: c0 fb 07 37  	tbnz	w0, #0, 0x83820 <_ZN42_$LT$$RF$T$u20$as$u20$core..fmt..Debug$GT$3fmt17hf9e5d8fb08b527bfE+0x40>
   838ac: 1c 00 00 14  	b	0x8391c <_ZN42_$LT$$RF$T$u20$as$u20$core..fmt..Debug$GT$3fmt17hf9e5d8fb08b527bfE+0x13c>
   838b0: 01 00 00 f0  	adrp	x1, 0x86000 <_ZN42_$LT$$RF$T$u20$as$u20$core..fmt..Debug$GT$3fmt17hf9e5d8fb08b527bfE+0xdc>
   838b4: 21 30 16 91  	add	x1, x1, #1420
   838b8: 42 00 80 52  	mov	w2, #2
   838bc: e0 03 13 aa  	mov	x0, x19
   838c0: c0 02 3f d6  	blr	x22
   838c4: 35 00 80 52  	mov	w21, #1
   838c8: e0 fa 07 37  	tbnz	w0, #0, 0x83824 <_ZN42_$LT$$RF$T$u20$as$u20$core..fmt..Debug$GT$3fmt17hf9e5d8fb08b527bfE+0x44>
   838cc: e8 73 00 91  	add	x8, sp, #28
   838d0: f5 73 00 39  	strb	w21, [sp, #28]
   838d4: f3 53 00 a9  	stp	x19, x20, [sp]
   838d8: e8 0b 00 f9  	str	x8, [sp, #16]
   838dc: e1 02 40 f9  	ldr	x1, [x23]
   838e0: e0 83 00 91  	add	x0, sp, #32
   838e4: 02 06 80 52  	mov	w2, #48
   838e8: 03 01 00 94  	bl	0x83cf4 <memcpy>
   838ec: 01 00 00 f0  	adrp	x1, 0x86000 <_ZN42_$LT$$RF$T$u20$as$u20$core..fmt..Debug$GT$3fmt17hf9e5d8fb08b527bfE+0x118>
   838f0: 21 80 14 91  	add	x1, x1, #1312
   838f4: e0 03 00 91  	mov	x0, sp
   838f8: e2 83 00 91  	add	x2, sp, #32
   838fc: 09 f8 ff 97  	bl	0x81920 <_ZN4core3fmt5write17h63775af3066fbce8E>
   83900: 00 f9 07 37  	tbnz	w0, #0, 0x83820 <_ZN42_$LT$$RF$T$u20$as$u20$core..fmt..Debug$GT$3fmt17hf9e5d8fb08b527bfE+0x40>
   83904: 01 00 00 f0  	adrp	x1, 0x86000 <_ZN42_$LT$$RF$T$u20$as$u20$core..fmt..Debug$GT$3fmt17hf9e5d8fb08b527bfE+0x130>
   83908: 21 4c 15 91  	add	x1, x1, #1363
   8390c: e0 03 00 91  	mov	x0, sp
   83910: 42 00 80 52  	mov	w2, #2
   83914: aa f8 ff 97  	bl	0x81bbc <_ZN68_$LT$core..fmt..builders..PadAdapter$u20$as$u20$core..fmt..Write$GT$9write_str17h3825e647a41714ecE>
   83918: 40 f8 07 37  	tbnz	w0, #0, 0x83820 <_ZN42_$LT$$RF$T$u20$as$u20$core..fmt..Debug$GT$3fmt17hf9e5d8fb08b527bfE+0x40>
   8391c: 01 00 00 f0  	adrp	x1, 0x86000 <_ZN42_$LT$$RF$T$u20$as$u20$core..fmt..Debug$GT$3fmt17hf9e5d8fb08b527bfE+0x148>
   83920: 21 38 16 91  	add	x1, x1, #1422
   83924: 22 00 80 52  	mov	w2, #1
   83928: e0 03 13 aa  	mov	x0, x19
   8392c: c0 02 3f d6  	blr	x22
   83930: f5 03 00 2a  	mov	w21, w0
   83934: bc ff ff 17  	b	0x83824 <_ZN42_$LT$$RF$T$u20$as$u20$core..fmt..Debug$GT$3fmt17hf9e5d8fb08b527bfE+0x44>

0000000000083938 <_ZN42_$LT$$RF$T$u20$as$u20$core..fmt..Debug$GT$3fmt17h79baed9a49716602E>:
   83938: ff 83 00 d1  	sub	sp, sp, #32
   8393c: fe 4f 01 a9  	stp	x30, x19, [sp, #16]
   83940: 33 20 42 a9  	ldp	x19, x8, [x1, #32]
   83944: 01 00 00 d0  	adrp	x1, 0x85000 <_ZN42_$LT$$RF$T$u20$as$u20$core..fmt..Debug$GT$3fmt17h79baed9a49716602E+0x14>
   83948: 21 88 27 91  	add	x1, x1, #2530
   8394c: 62 00 80 52  	mov	w2, #3
   83950: 03 0d 40 f9  	ldr	x3, [x8, #24]
   83954: e0 03 13 aa  	mov	x0, x19
   83958: e3 07 00 f9  	str	x3, [sp, #8]
   8395c: 60 00 3f d6  	blr	x3
   83960: a0 00 00 36  	tbz	w0, #0, 0x83974 <_ZN42_$LT$$RF$T$u20$as$u20$core..fmt..Debug$GT$3fmt17h79baed9a49716602E+0x3c>
   83964: fe 4f 41 a9  	ldp	x30, x19, [sp, #16]
   83968: 20 00 80 52  	mov	w0, #1
   8396c: ff 83 00 91  	add	sp, sp, #32
   83970: c0 03 5f d6  	ret
   83974: e0 03 13 aa  	mov	x0, x19
   83978: e3 07 40 f9  	ldr	x3, [sp, #8]
   8397c: fe 4f 41 a9  	ldp	x30, x19, [sp, #16]
   83980: 01 00 00 d0  	adrp	x1, 0x85000 <_ZN42_$LT$$RF$T$u20$as$u20$core..fmt..Debug$GT$3fmt17h79baed9a49716602E+0x50>
   83984: 21 94 27 91  	add	x1, x1, #2533
   83988: e2 00 80 52  	mov	w2, #7
   8398c: ff 83 00 91  	add	sp, sp, #32
   83990: 60 00 1f d6  	br	x3

0000000000083994 <_ZN4core3fmt3num51_$LT$impl$u20$core..fmt..Binary$u20$for$u20$i64$GT$3fmt17he77c3abe7c79070fE>:
   83994: ff 43 02 d1  	sub	sp, sp, #144
   83998: fe 43 00 f9  	str	x30, [sp, #128]
   8399c: 0b 00 40 f9  	ldr	x11, [x0]
   839a0: e8 03 01 aa  	mov	x8, x1
   839a4: e9 03 1f aa  	mov	x9, xzr
   839a8: ea 03 00 91  	mov	x10, sp
   839ac: 6d fd 41 d3  	lsr	x13, x11, #1
   839b0: 0e 06 80 52  	mov	w14, #48
   839b4: 4c 01 09 8b  	add	x12, x10, x9
   839b8: 6e 01 00 33  	bfxil	w14, w11, #0, #1
   839bc: 29 05 00 d1  	sub	x9, x9, #1
   839c0: eb 03 0d aa  	mov	x11, x13
   839c4: 8e fd 01 39  	strb	w14, [x12, #127]
   839c8: 2d ff ff b5  	cbnz	x13, 0x839ac <_ZN4core3fmt3num51_$LT$impl$u20$core..fmt..Binary$u20$for$u20$i64$GT$3fmt17he77c3abe7c79070fE+0x18>
   839cc: 20 01 02 91  	add	x0, x9, #128
   839d0: 1f 04 02 f1  	cmp	x0, #129
   839d4: c2 01 00 54  	b.hs	0x83a0c <_ZN4core3fmt3num51_$LT$impl$u20$core..fmt..Binary$u20$for$u20$i64$GT$3fmt17he77c3abe7c79070fE+0x78>
   839d8: ea 03 00 91  	mov	x10, sp
   839dc: e5 03 09 cb  	neg	x5, x9
   839e0: 49 01 09 8b  	add	x9, x10, x9
   839e4: 02 00 00 f0  	adrp	x2, 0x86000 <_ZN4core3fmt3num51_$LT$impl$u20$core..fmt..Binary$u20$for$u20$i64$GT$3fmt17he77c3abe7c79070fE+0x5c>
   839e8: 24 01 02 91  	add	x4, x9, #128
   839ec: 42 80 1a 91  	add	x2, x2, #1696
   839f0: 21 00 80 52  	mov	w1, #1
   839f4: 43 00 80 52  	mov	w3, #2
   839f8: e0 03 08 aa  	mov	x0, x8
   839fc: b8 f5 ff 97  	bl	0x810dc <_ZN4core3fmt9Formatter12pad_integral17ha6f583ca7a70f44dE>
   83a00: fe 43 40 f9  	ldr	x30, [sp, #128]
   83a04: ff 43 02 91  	add	sp, sp, #144
   83a08: c0 03 5f d6  	ret
   83a0c: 02 00 00 d0  	adrp	x2, 0x85000 <_ZN4core3fmt3num51_$LT$impl$u20$core..fmt..Binary$u20$for$u20$i64$GT$3fmt17he77c3abe7c79070fE+0x80>
   83a10: 42 40 25 91  	add	x2, x2, #2384
   83a14: 01 10 80 52  	mov	w1, #128
   83a18: 85 f6 ff 97  	bl	0x8142c <_ZN4core5slice5index26slice_start_index_len_fail17ha3ad23336e78e7f7E>
   83a1c: 20 00 20 d4  	brk	#0x1

0000000000083a20 <_ZN4core3fmt3num53_$LT$impl$u20$core..fmt..LowerHex$u20$for$u20$i64$GT$3fmt17h89727d655d417749E>:
   83a20: ff 43 02 d1  	sub	sp, sp, #144
   83a24: fe 43 00 f9  	str	x30, [sp, #128]
   83a28: 0b 00 40 f9  	ldr	x11, [x0]
   83a2c: e8 03 01 aa  	mov	x8, x1
   83a30: e9 03 1f aa  	mov	x9, xzr
   83a34: ea 03 00 91  	mov	x10, sp
   83a38: 6e 0d 00 12  	and	w14, w11, #0xf
   83a3c: 0f 06 80 52  	mov	w15, #48
   83a40: 6d fd 44 d3  	lsr	x13, x11, #4
   83a44: 6f 0d 00 33  	bfxil	w15, w11, #0, #4
   83a48: cb 5d 01 11  	add	w11, w14, #87
   83a4c: df 29 00 71  	cmp	w14, #10
   83a50: 4c 01 09 8b  	add	x12, x10, x9
   83a54: eb 31 8b 1a  	csel	w11, w15, w11, lo
   83a58: 8b fd 01 39  	strb	w11, [x12, #127]
   83a5c: 29 05 00 d1  	sub	x9, x9, #1
   83a60: eb 03 0d aa  	mov	x11, x13
   83a64: ad fe ff b5  	cbnz	x13, 0x83a38 <_ZN4core3fmt3num53_$LT$impl$u20$core..fmt..LowerHex$u20$for$u20$i64$GT$3fmt17h89727d655d417749E+0x18>
   83a68: 20 01 02 91  	add	x0, x9, #128
   83a6c: 1f 04 02 f1  	cmp	x0, #129
   83a70: c2 01 00 54  	b.hs	0x83aa8 <_ZN4core3fmt3num53_$LT$impl$u20$core..fmt..LowerHex$u20$for$u20$i64$GT$3fmt17h89727d655d417749E+0x88>
   83a74: ea 03 00 91  	mov	x10, sp
   83a78: e5 03 09 cb  	neg	x5, x9
   83a7c: 49 01 09 8b  	add	x9, x10, x9
   83a80: 02 00 00 d0  	adrp	x2, 0x85000 <_ZN4core3fmt3num53_$LT$impl$u20$core..fmt..LowerHex$u20$for$u20$i64$GT$3fmt17h89727d655d417749E+0x68>
   83a84: 24 01 02 91  	add	x4, x9, #128
   83a88: 42 a0 25 91  	add	x2, x2, #2408
   83a8c: 21 00 80 52  	mov	w1, #1
   83a90: 43 00 80 52  	mov	w3, #2
   83a94: e0 03 08 aa  	mov	x0, x8
   83a98: 91 f5 ff 97  	bl	0x810dc <_ZN4core3fmt9Formatter12pad_integral17ha6f583ca7a70f44dE>
   83a9c: fe 43 40 f9  	ldr	x30, [sp, #128]
   83aa0: ff 43 02 91  	add	sp, sp, #144
   83aa4: c0 03 5f d6  	ret
   83aa8: 02 00 00 d0  	adrp	x2, 0x85000 <_ZN4core3fmt3num53_$LT$impl$u20$core..fmt..LowerHex$u20$for$u20$i64$GT$3fmt17h89727d655d417749E+0x90>
   83aac: 42 40 25 91  	add	x2, x2, #2384
   83ab0: 01 10 80 52  	mov	w1, #128
   83ab4: 5e f6 ff 97  	bl	0x8142c <_ZN4core5slice5index26slice_start_index_len_fail17ha3ad23336e78e7f7E>
   83ab8: 20 00 20 d4  	brk	#0x1

0000000000083abc <_ZN4core3fmt3num53_$LT$impl$u20$core..fmt..UpperHex$u20$for$u20$i64$GT$3fmt17h0da107dab2280b2bE>:
   83abc: ff 43 02 d1  	sub	sp, sp, #144
   83ac0: fe 43 00 f9  	str	x30, [sp, #128]
   83ac4: 0b 00 40 f9  	ldr	x11, [x0]
   83ac8: e8 03 01 aa  	mov	x8, x1
   83acc: e9 03 1f aa  	mov	x9, xzr
   83ad0: ea 03 00 91  	mov	x10, sp
   83ad4: 6e 0d 00 12  	and	w14, w11, #0xf
   83ad8: 0f 06 80 52  	mov	w15, #48
   83adc: 6d fd 44 d3  	lsr	x13, x11, #4
   83ae0: 6f 0d 00 33  	bfxil	w15, w11, #0, #4
   83ae4: cb dd 00 11  	add	w11, w14, #55
   83ae8: df 29 00 71  	cmp	w14, #10
   83aec: 4c 01 09 8b  	add	x12, x10, x9
   83af0: eb 31 8b 1a  	csel	w11, w15, w11, lo
   83af4: 8b fd 01 39  	strb	w11, [x12, #127]
   83af8: 29 05 00 d1  	sub	x9, x9, #1
   83afc: eb 03 0d aa  	mov	x11, x13
   83b00: ad fe ff b5  	cbnz	x13, 0x83ad4 <_ZN4core3fmt3num53_$LT$impl$u20$core..fmt..UpperHex$u20$for$u20$i64$GT$3fmt17h0da107dab2280b2bE+0x18>
   83b04: 20 01 02 91  	add	x0, x9, #128
   83b08: 1f 04 02 f1  	cmp	x0, #129
   83b0c: c2 01 00 54  	b.hs	0x83b44 <_ZN4core3fmt3num53_$LT$impl$u20$core..fmt..UpperHex$u20$for$u20$i64$GT$3fmt17h0da107dab2280b2bE+0x88>
   83b10: ea 03 00 91  	mov	x10, sp
   83b14: e5 03 09 cb  	neg	x5, x9
   83b18: 49 01 09 8b  	add	x9, x10, x9
   83b1c: 02 00 00 d0  	adrp	x2, 0x85000 <_ZN4core3fmt3num53_$LT$impl$u20$core..fmt..UpperHex$u20$for$u20$i64$GT$3fmt17h0da107dab2280b2bE+0x68>
   83b20: 24 01 02 91  	add	x4, x9, #128
   83b24: 42 a0 25 91  	add	x2, x2, #2408
   83b28: 21 00 80 52  	mov	w1, #1
   83b2c: 43 00 80 52  	mov	w3, #2
   83b30: e0 03 08 aa  	mov	x0, x8
   83b34: 6a f5 ff 97  	bl	0x810dc <_ZN4core3fmt9Formatter12pad_integral17ha6f583ca7a70f44dE>
   83b38: fe 43 40 f9  	ldr	x30, [sp, #128]
   83b3c: ff 43 02 91  	add	sp, sp, #144
   83b40: c0 03 5f d6  	ret
   83b44: 02 00 00 d0  	adrp	x2, 0x85000 <_ZN4core3fmt3num53_$LT$impl$u20$core..fmt..UpperHex$u20$for$u20$i64$GT$3fmt17h0da107dab2280b2bE+0x90>
   83b48: 42 40 25 91  	add	x2, x2, #2384
   83b4c: 01 10 80 52  	mov	w1, #128
   83b50: 37 f6 ff 97  	bl	0x8142c <_ZN4core5slice5index26slice_start_index_len_fail17ha3ad23336e78e7f7E>
   83b54: 20 00 20 d4  	brk	#0x1

0000000000083b58 <_ZN4core3fmt3num3imp52_$LT$impl$u20$core..fmt..Display$u20$for$u20$i64$GT$3fmt17hc89e537dc291e8beE>:
   83b58: ff 03 01 d1  	sub	sp, sp, #64
   83b5c: fe 1b 00 f9  	str	x30, [sp, #48]
   83b60: 09 00 40 f9  	ldr	x9, [x0]
   83b64: e8 03 01 aa  	mov	x8, x1
   83b68: 3f 01 00 f1  	cmp	x9, #0
   83b6c: 2b 55 89 da  	cneg	x11, x9, mi
   83b70: 6a fd 44 d3  	lsr	x10, x11, #4
   83b74: 5f c5 09 f1  	cmp	x10, #625
   83b78: 0a 00 00 d0  	adrp	x10, 0x85000 <_ZN4core3fmt3num3imp52_$LT$impl$u20$core..fmt..Display$u20$for$u20$i64$GT$3fmt17hc89e537dc291e8beE+0x28>
   83b7c: 4a 09 20 91  	add	x10, x10, #2050
   83b80: e3 04 00 54  	b.lo	0x83c1c <_ZN4core3fmt3num3imp52_$LT$impl$u20$core..fmt..Display$u20$for$u20$i64$GT$3fmt17hc89e537dc291e8beE+0xc4>
   83b84: 6d 29 8b d2  	mov	x13, #22859
   83b88: cd 10 a7 f2  	movk	x13, #14470, lsl #16
   83b8c: cd ba d8 f2  	movk	x13, #50646, lsl #32
   83b90: ef a3 90 52  	mov	w15, #34079
   83b94: f2 1f 9c 52  	mov	w18, #57599
   83b98: ec 03 1f aa  	mov	x12, xzr
   83b9c: ad 8d e6 f2  	movk	x13, #13421, lsl #48
   83ba0: ee e1 84 12  	mov	w14, #-10000
   83ba4: 6f 3d aa 72  	movk	w15, #20971, lsl #16
   83ba8: 70 0c 80 12  	mov	w16, #-100
   83bac: f1 23 00 91  	add	x17, sp, #8
   83bb0: b2 be a0 72  	movk	w18, #1525, lsl #16
   83bb4: e0 03 0b aa  	mov	x0, x11
   83bb8: 6b 7d cd 9b  	umulh	x11, x11, x13
   83bbc: 6b fd 4b d3  	lsr	x11, x11, #11
   83bc0: 1f 00 12 eb  	cmp	x0, x18
   83bc4: 60 01 0e 1b  	madd	w0, w11, w14, w0
   83bc8: 02 3c 00 12  	and	w2, w0, #0xffff
   83bcc: 42 7c af 9b  	umull	x2, w2, w15
   83bd0: 42 fc 65 d3  	lsr	x2, x2, #37
   83bd4: 40 00 10 1b  	madd	w0, w2, w16, w0
   83bd8: 42 05 02 8b  	add	x2, x10, x2, lsl #1
   83bdc: 40 25 20 8b  	add	x0, x10, w0, uxth #1
   83be0: 43 00 40 39  	ldrb	w3, [x2]
   83be4: 42 04 40 39  	ldrb	w2, [x2, #1]
   83be8: 04 04 40 39  	ldrb	w4, [x0, #1]
   83bec: 00 00 40 39  	ldrb	w0, [x0]
   83bf0: 21 02 0c 8b  	add	x1, x17, x12
   83bf4: 8c 11 00 d1  	sub	x12, x12, #4
   83bf8: 22 90 00 39  	strb	w2, [x1, #36]
   83bfc: 23 8c 00 39  	strb	w3, [x1, #35]
   83c00: 24 98 00 39  	strb	w4, [x1, #38]
   83c04: 20 94 00 39  	strb	w0, [x1, #37]
   83c08: 68 fd ff 54  	b.hi	0x83bb4 <_ZN4core3fmt3num3imp52_$LT$impl$u20$core..fmt..Display$u20$for$u20$i64$GT$3fmt17hc89e537dc291e8beE+0x5c>
   83c0c: 8c 9d 00 91  	add	x12, x12, #39
   83c10: 7f 8d 01 f1  	cmp	x11, #99
   83c14: ac 00 00 54  	b.gt	0x83c28 <_ZN4core3fmt3num3imp52_$LT$impl$u20$core..fmt..Display$u20$for$u20$i64$GT$3fmt17hc89e537dc291e8beE+0xd0>
   83c18: 14 00 00 14  	b	0x83c68 <_ZN4core3fmt3num3imp52_$LT$impl$u20$core..fmt..Display$u20$for$u20$i64$GT$3fmt17hc89e537dc291e8beE+0x110>
   83c1c: ec 04 80 52  	mov	w12, #39
   83c20: 7f 8d 01 f1  	cmp	x11, #99
   83c24: 2d 02 00 54  	b.le	0x83c68 <_ZN4core3fmt3num3imp52_$LT$impl$u20$core..fmt..Display$u20$for$u20$i64$GT$3fmt17hc89e537dc291e8beE+0x110>
   83c28: ee a3 90 52  	mov	w14, #34079
   83c2c: 6d 3d 00 12  	and	w13, w11, #0xffff
   83c30: 6e 3d aa 72  	movk	w14, #20971, lsl #16
   83c34: ad 7d ae 9b  	umull	x13, w13, w14
   83c38: 6f 0c 80 12  	mov	w15, #-100
   83c3c: ad fd 65 d3  	lsr	x13, x13, #37
   83c40: ab 2d 0f 1b  	madd	w11, w13, w15, w11
   83c44: 4b 25 2b 8b  	add	x11, x10, w11, uxth #1
   83c48: 6e 05 40 39  	ldrb	w14, [x11, #1]
   83c4c: 6b 01 40 39  	ldrb	w11, [x11]
   83c50: 8c 09 00 d1  	sub	x12, x12, #2
   83c54: ef 23 00 91  	add	x15, sp, #8
   83c58: ef 01 0c 8b  	add	x15, x15, x12
   83c5c: eb 01 00 39  	strb	w11, [x15]
   83c60: eb 03 0d aa  	mov	x11, x13
   83c64: ee 05 00 39  	strb	w14, [x15, #1]
   83c68: 7f 29 00 f1  	cmp	x11, #10
   83c6c: ca 00 00 54  	b.ge	0x83c84 <_ZN4core3fmt3num3imp52_$LT$impl$u20$core..fmt..Display$u20$for$u20$i64$GT$3fmt17hc89e537dc291e8beE+0x12c>
   83c70: 8c 05 00 d1  	sub	x12, x12, #1
   83c74: 6a c1 00 11  	add	w10, w11, #48
   83c78: eb 23 00 91  	add	x11, sp, #8
   83c7c: 6a 69 2c 38  	strb	w10, [x11, x12]
   83c80: 09 00 00 14  	b	0x83ca4 <_ZN4core3fmt3num3imp52_$LT$impl$u20$core..fmt..Display$u20$for$u20$i64$GT$3fmt17hc89e537dc291e8beE+0x14c>
   83c84: 4a 05 0b 8b  	add	x10, x10, x11, lsl #1
   83c88: 4b 05 40 39  	ldrb	w11, [x10, #1]
   83c8c: 4a 01 40 39  	ldrb	w10, [x10]
   83c90: 8c 09 00 d1  	sub	x12, x12, #2
   83c94: ed 23 00 91  	add	x13, sp, #8
   83c98: ad 01 0c 8b  	add	x13, x13, x12
   83c9c: ab 05 00 39  	strb	w11, [x13, #1]
   83ca0: aa 01 00 39  	strb	w10, [x13]
   83ca4: ea 23 00 91  	add	x10, sp, #8
   83ca8: eb 04 80 52  	mov	w11, #39
   83cac: 29 fd 7f d3  	lsr	x9, x9, #63
   83cb0: 02 00 00 d0  	adrp	x2, 0x85000 <_ZN4core3fmt3num3imp52_$LT$impl$u20$core..fmt..Display$u20$for$u20$i64$GT$3fmt17hc89e537dc291e8beE+0x160>
   83cb4: 44 01 0c 8b  	add	x4, x10, x12
   83cb8: 65 01 0c cb  	sub	x5, x11, x12
   83cbc: 21 01 00 52  	eor	w1, w9, #0x1
   83cc0: 42 c0 1d 91  	add	x2, x2, #1904
   83cc4: e0 03 08 aa  	mov	x0, x8
   83cc8: e3 03 1f aa  	mov	x3, xzr
   83ccc: 04 f5 ff 97  	bl	0x810dc <_ZN4core3fmt9Formatter12pad_integral17ha6f583ca7a70f44dE>
   83cd0: fe 1b 40 f9  	ldr	x30, [sp, #48]
   83cd4: ff 03 01 91  	add	sp, sp, #64
   83cd8: c0 03 5f d6  	ret

0000000000083cdc <_ZN53_$LT$core..fmt..Error$u20$as$u20$core..fmt..Debug$GT$3fmt17h35673c67a40cb87eE>:
   83cdc: 20 20 42 a9  	ldp	x0, x8, [x1, #32]
   83ce0: 01 00 00 f0  	adrp	x1, 0x86000 <_ZN53_$LT$core..fmt..Error$u20$as$u20$core..fmt..Debug$GT$3fmt17h35673c67a40cb87eE+0x10>
   83ce4: 21 88 1a 91  	add	x1, x1, #1698
   83ce8: a2 00 80 52  	mov	w2, #5
   83cec: 03 0d 40 f9  	ldr	x3, [x8, #24]
   83cf0: 60 00 1f d6  	br	x3

0000000000083cf4 <memcpy>:
   83cf4: ff 03 01 d1  	sub	sp, sp, #64
   83cf8: 22 02 00 b4  	cbz	x2, 0x83d3c <memcpy+0x48>
   83cfc: 5f 20 00 f1  	cmp	x2, #8
   83d00: e3 00 00 54  	b.lo	0x83d1c <memcpy+0x28>
   83d04: 28 00 02 8b  	add	x8, x1, x2
   83d08: 1f 01 00 eb  	cmp	x8, x0
   83d0c: c9 01 00 54  	b.ls	0x83d44 <memcpy+0x50>
   83d10: 08 00 02 8b  	add	x8, x0, x2
   83d14: 1f 01 01 eb  	cmp	x8, x1
   83d18: 69 01 00 54  	b.ls	0x83d44 <memcpy+0x50>
   83d1c: e8 03 1f aa  	mov	x8, xzr
   83d20: 49 00 08 cb  	sub	x9, x2, x8
   83d24: 0a 00 08 8b  	add	x10, x0, x8
   83d28: 28 00 08 8b  	add	x8, x1, x8
   83d2c: 0b 15 40 38  	ldrb	w11, [x8], #1
   83d30: 29 05 00 f1  	subs	x9, x9, #1
   83d34: 4b 15 00 38  	strb	w11, [x10], #1
   83d38: a1 ff ff 54  	b.ne	0x83d2c <memcpy+0x38>
   83d3c: ff 03 01 91  	add	sp, sp, #64
   83d40: c0 03 5f d6  	ret
   83d44: 5f 80 00 f1  	cmp	x2, #32
   83d48: 62 00 00 54  	b.hs	0x83d54 <memcpy+0x60>
   83d4c: e8 03 1f aa  	mov	x8, xzr
   83d50: 9a 00 00 14  	b	0x83fb8 <memcpy+0x2c4>
   83d54: 48 e8 7b 92  	and	x8, x2, #0xffffffffffffffe0
   83d58: 29 40 00 91  	add	x9, x1, #16
   83d5c: 0b 40 00 91  	add	x11, x0, #16
   83d60: ea 03 08 aa  	mov	x10, x8
   83d64: ed 03 09 aa  	mov	x13, x9
   83d68: 2c 11 5f 38  	ldurb	w12, [x9, #-15]
   83d6c: ae 0d 5f 38  	ldrb	w14, [x13, #-16]!
   83d70: 4a 81 00 f1  	subs	x10, x10, #32
   83d74: f1 03 0d aa  	mov	x17, x13
   83d78: af 0d 40 39  	ldrb	w15, [x13, #3]
   83d7c: b0 09 40 39  	ldrb	w16, [x13, #2]
   83d80: 32 4e 40 38  	ldrb	w18, [x17, #4]!
   83d84: 23 51 5f 38  	ldurb	w3, [x9, #-11]
   83d88: 8e 1d 78 b3  	bfi	x14, x12, #8, #8
   83d8c: f0 1d 78 b3  	bfi	x16, x15, #8, #8
   83d90: 24 0e 40 39  	ldrb	w4, [x17, #3]
   83d94: 31 0a 40 39  	ldrb	w17, [x17, #2]
   83d98: 72 1c 18 33  	bfi	w18, w3, #8, #8
   83d9c: 0e 3e 70 b3  	bfi	x14, x16, #16, #16
   83da0: ec 03 0d aa  	mov	x12, x13
   83da4: 91 1c 18 33  	bfi	w17, w4, #8, #8
   83da8: 32 3e 10 33  	bfi	w18, w17, #16, #16
   83dac: 4e 7e 60 b3  	bfi	x14, x18, #32, #32
   83db0: ee 0b 00 f9  	str	x14, [sp, #16]
   83db4: ae 25 40 39  	ldrb	w14, [x13, #9]
   83db8: 8f 8d 40 38  	ldrb	w15, [x12, #8]!
   83dbc: 90 0d 40 39  	ldrb	w16, [x12, #3]
   83dc0: 91 09 40 39  	ldrb	w17, [x12, #2]
   83dc4: 92 4d 40 38  	ldrb	w18, [x12, #4]!
   83dc8: ad 35 40 39  	ldrb	w13, [x13, #13]
   83dcc: cf 1d 78 b3  	bfi	x15, x14, #8, #8
   83dd0: 11 1e 78 b3  	bfi	x17, x16, #8, #8
   83dd4: 83 0d 40 39  	ldrb	w3, [x12, #3]
   83dd8: 8c 09 40 39  	ldrb	w12, [x12, #2]
   83ddc: b2 1d 18 33  	bfi	w18, w13, #8, #8
   83de0: 2f 3e 70 b3  	bfi	x15, x17, #16, #16
   83de4: ee 03 09 aa  	mov	x14, x9
   83de8: 6c 1c 18 33  	bfi	w12, w3, #8, #8
   83dec: 92 3d 10 33  	bfi	w18, w12, #16, #16
   83df0: 4f 7e 60 b3  	bfi	x15, x18, #32, #32
   83df4: ef 0f 00 f9  	str	x15, [sp, #24]
   83df8: e0 07 c0 3d  	ldr	q0, [sp, #16]
   83dfc: 2c 0d 40 39  	ldrb	w12, [x9, #3]
   83e00: 2d 09 40 39  	ldrb	w13, [x9, #2]
   83e04: 2f 05 40 39  	ldrb	w15, [x9, #1]
   83e08: 30 01 40 39  	ldrb	w16, [x9]
   83e0c: d1 4d 40 38  	ldrb	w17, [x14, #4]!
   83e10: 32 15 40 39  	ldrb	w18, [x9, #5]
   83e14: 8d 1d 78 b3  	bfi	x13, x12, #8, #8
   83e18: f0 1d 78 b3  	bfi	x16, x15, #8, #8
   83e1c: c3 0d 40 39  	ldrb	w3, [x14, #3]
   83e20: ce 09 40 39  	ldrb	w14, [x14, #2]
   83e24: 51 1e 18 33  	bfi	w17, w18, #8, #8
   83e28: b0 3d 70 b3  	bfi	x16, x13, #16, #16
   83e2c: ec 03 09 aa  	mov	x12, x9
   83e30: 6e 1c 18 33  	bfi	w14, w3, #8, #8
   83e34: d1 3d 10 33  	bfi	w17, w14, #16, #16
   83e38: 30 7e 60 b3  	bfi	x16, x17, #32, #32
   83e3c: f0 03 00 f9  	str	x16, [sp]
   83e40: 2d 25 40 39  	ldrb	w13, [x9, #9]
   83e44: 8e 8d 40 38  	ldrb	w14, [x12, #8]!
   83e48: 8f 0d 40 39  	ldrb	w15, [x12, #3]
   83e4c: 90 09 40 39  	ldrb	w16, [x12, #2]
   83e50: 91 4d 40 38  	ldrb	w17, [x12, #4]!
   83e54: 32 35 40 39  	ldrb	w18, [x9, #13]
   83e58: ae 1d 78 b3  	bfi	x14, x13, #8, #8
   83e5c: f0 1d 78 b3  	bfi	x16, x15, #8, #8
   83e60: 83 0d 40 39  	ldrb	w3, [x12, #3]
   83e64: 8c 09 40 39  	ldrb	w12, [x12, #2]
   83e68: 51 1e 18 33  	bfi	w17, w18, #8, #8
   83e6c: e0 0f 80 3d  	str	q0, [sp, #48]
   83e70: 0e 3e 70 b3  	bfi	x14, x16, #16, #16
   83e74: 6c 1c 18 33  	bfi	w12, w3, #8, #8
   83e78: 91 3d 10 33  	bfi	w17, w12, #16, #16
   83e7c: ec 1b 40 f9  	ldr	x12, [sp, #48]
   83e80: 2e 7e 60 b3  	bfi	x14, x17, #32, #32
   83e84: ee 07 00 f9  	str	x14, [sp, #8]
   83e88: ed 03 0b aa  	mov	x13, x11
   83e8c: e1 03 c0 3d  	ldr	q1, [sp]
   83e90: ac 0d 1f 38  	strb	w12, [x13, #-16]!
   83e94: f0 1f 40 f9  	ldr	x16, [sp, #56]
   83e98: 8f fd 58 d3  	lsr	x15, x12, #24
   83e9c: 8e fd 68 d3  	lsr	x14, x12, #40
   83ea0: af 0d 00 39  	strb	w15, [x13, #3]
   83ea4: 8f fd 48 d3  	lsr	x15, x12, #8
   83ea8: 6e 51 1f 38  	sturb	w14, [x11, #-11]
   83eac: 8e fd 50 d3  	lsr	x14, x12, #16
   83eb0: 6f 11 1f 38  	sturb	w15, [x11, #-15]
   83eb4: 0f fe 68 d3  	lsr	x15, x16, #40
   83eb8: ae 09 00 39  	strb	w14, [x13, #2]
   83ebc: ee 03 0d aa  	mov	x14, x13
   83ec0: af 35 00 39  	strb	w15, [x13, #13]
   83ec4: 0f fe 48 d3  	lsr	x15, x16, #8
   83ec8: d0 8d 00 38  	strb	w16, [x14, #8]!
   83ecc: af 25 00 39  	strb	w15, [x13, #9]
   83ed0: 0f fe 58 d3  	lsr	x15, x16, #24
   83ed4: cf 0d 00 39  	strb	w15, [x14, #3]
   83ed8: 0f fe 50 d3  	lsr	x15, x16, #16
   83edc: cf 09 00 39  	strb	w15, [x14, #2]
   83ee0: 8f fd 60 d3  	lsr	x15, x12, #32
   83ee4: af 4d 00 38  	strb	w15, [x13, #4]!
   83ee8: 0f fe 60 d3  	lsr	x15, x16, #32
   83eec: cf 4d 00 38  	strb	w15, [x14, #4]!
   83ef0: 8f fd 78 d3  	lsr	x15, x12, #56
   83ef4: 8c fd 70 d3  	lsr	x12, x12, #48
   83ef8: af 0d 00 39  	strb	w15, [x13, #3]
   83efc: 0f fe 78 d3  	lsr	x15, x16, #56
   83f00: 10 fe 70 d3  	lsr	x16, x16, #48
   83f04: ac 09 00 39  	strb	w12, [x13, #2]
   83f08: cf 0d 00 39  	strb	w15, [x14, #3]
   83f0c: d0 09 00 39  	strb	w16, [x14, #2]
   83f10: e1 0b 80 3d  	str	q1, [sp, #32]
   83f14: ec 13 40 f9  	ldr	x12, [sp, #32]
   83f18: ed 03 0b aa  	mov	x13, x11
   83f1c: 6e 81 00 91  	add	x14, x11, #32
   83f20: 29 81 00 91  	add	x9, x9, #32
   83f24: 6c 01 00 39  	strb	w12, [x11]
   83f28: 8f fd 68 d3  	lsr	x15, x12, #40
   83f2c: f0 17 40 f9  	ldr	x16, [sp, #40]
   83f30: 6f 15 00 39  	strb	w15, [x11, #5]
   83f34: 8f fd 58 d3  	lsr	x15, x12, #24
   83f38: 6f 0d 00 39  	strb	w15, [x11, #3]
   83f3c: 8f fd 50 d3  	lsr	x15, x12, #16
   83f40: 6f 09 00 39  	strb	w15, [x11, #2]
   83f44: 8f fd 48 d3  	lsr	x15, x12, #8
   83f48: 6f 05 00 39  	strb	w15, [x11, #1]
   83f4c: 0f fe 68 d3  	lsr	x15, x16, #40
   83f50: b0 8d 00 38  	strb	w16, [x13, #8]!
   83f54: 6f 35 00 39  	strb	w15, [x11, #13]
   83f58: 0f fe 58 d3  	lsr	x15, x16, #24
   83f5c: af 0d 00 39  	strb	w15, [x13, #3]
   83f60: 0f fe 50 d3  	lsr	x15, x16, #16
   83f64: af 09 00 39  	strb	w15, [x13, #2]
   83f68: 0f fe 48 d3  	lsr	x15, x16, #8
   83f6c: 6f 25 00 39  	strb	w15, [x11, #9]
   83f70: 0f fe 60 d3  	lsr	x15, x16, #32
   83f74: af 4d 00 38  	strb	w15, [x13, #4]!
   83f78: 8f fd 60 d3  	lsr	x15, x12, #32
   83f7c: 6f 4d 00 38  	strb	w15, [x11, #4]!
   83f80: 0f fe 78 d3  	lsr	x15, x16, #56
   83f84: af 0d 00 39  	strb	w15, [x13, #3]
   83f88: 8f fd 78 d3  	lsr	x15, x12, #56
   83f8c: 8c fd 70 d3  	lsr	x12, x12, #48
   83f90: 10 fe 70 d3  	lsr	x16, x16, #48
   83f94: 6f 0d 00 39  	strb	w15, [x11, #3]
   83f98: 6c 09 00 39  	strb	w12, [x11, #2]
   83f9c: eb 03 0e aa  	mov	x11, x14
   83fa0: b0 09 00 39  	strb	w16, [x13, #2]
   83fa4: 01 ee ff 54  	b.ne	0x83d64 <memcpy+0x70>
   83fa8: 1f 01 02 eb  	cmp	x8, x2
   83fac: 80 ec ff 54  	b.eq	0x83d3c <memcpy+0x48>
   83fb0: 5f 04 7d f2  	tst	x2, #0x18
   83fb4: 60 eb ff 54  	b.eq	0x83d20 <memcpy+0x2c>
   83fb8: ea 03 08 aa  	mov	x10, x8
   83fbc: 48 f0 7d 92  	and	x8, x2, #0xfffffffffffffff8
   83fc0: 29 00 0a 8b  	add	x9, x1, x10
   83fc4: 0b 00 0a 8b  	add	x11, x0, x10
   83fc8: 4a 01 08 cb  	sub	x10, x10, x8
   83fcc: ed 03 09 aa  	mov	x13, x9
   83fd0: 2c 15 40 39  	ldrb	w12, [x9, #5]
   83fd4: ae 4d 40 38  	ldrb	w14, [x13, #4]!
   83fd8: 2f 05 40 39  	ldrb	w15, [x9, #1]
   83fdc: 30 01 40 39  	ldrb	w16, [x9]
   83fe0: 31 0d 40 39  	ldrb	w17, [x9, #3]
   83fe4: a3 0d 40 39  	ldrb	w3, [x13, #3]
   83fe8: ad 09 40 39  	ldrb	w13, [x13, #2]
   83fec: 32 09 40 39  	ldrb	w18, [x9, #2]
   83ff0: 8e 1d 18 33  	bfi	w14, w12, #8, #8
   83ff4: 6f 05 00 39  	strb	w15, [x11, #1]
   83ff8: ef 03 0d 2a  	mov	w15, w13
   83ffc: 6f 1c 18 33  	bfi	w15, w3, #8, #8
   84000: ee 3d 10 33  	bfi	w14, w15, #16, #16
   84004: 6c 15 00 39  	strb	w12, [x11, #5]
   84008: 6c 21 00 91  	add	x12, x11, #8
   8400c: 72 09 00 39  	strb	w18, [x11, #2]
   84010: 71 0d 00 39  	strb	w17, [x11, #3]
   84014: 70 01 00 39  	strb	w16, [x11]
   84018: 6e 4d 00 38  	strb	w14, [x11, #4]!
   8401c: 4a 21 00 b1  	adds	x10, x10, #8
   84020: 6d 09 00 39  	strb	w13, [x11, #2]
   84024: 63 0d 00 39  	strb	w3, [x11, #3]
   84028: 29 21 00 91  	add	x9, x9, #8
   8402c: eb 03 0c aa  	mov	x11, x12
   84030: e1 fc ff 54  	b.ne	0x83fcc <memcpy+0x2d8>
   84034: 1f 01 02 eb  	cmp	x8, x2
   84038: 20 e8 ff 54  	b.eq	0x83d3c <memcpy+0x48>
   8403c: 39 ff ff 17  	b	0x83d20 <memcpy+0x2c>

0000000000084040 <memset>:
   84040: ff 83 00 d1  	sub	sp, sp, #32
   84044: 02 0e 00 b4  	cbz	x2, 0x84204 <memset+0x1c4>
   84048: 5f 10 00 f1  	cmp	x2, #4
   8404c: 62 00 00 54  	b.hs	0x84058 <memset+0x18>
   84050: e8 03 1f aa  	mov	x8, xzr
   84054: 67 00 00 14  	b	0x841f0 <memset+0x1b0>
   84058: 5f 80 00 f1  	cmp	x2, #32
   8405c: 62 00 00 54  	b.hs	0x84068 <memset+0x28>
   84060: e8 03 1f aa  	mov	x8, xzr
   84064: 52 00 00 14  	b	0x841ac <memset+0x16c>
   84068: 48 e8 7b 92  	and	x8, x2, #0xffffffffffffffe0
   8406c: 20 0c 01 4e  	dup	v0.16b, w1
   84070: 09 40 00 91  	add	x9, x0, #16
   84074: ea 03 08 aa  	mov	x10, x8
   84078: e0 07 80 3d  	str	q0, [sp, #16]
   8407c: eb 0b 40 f9  	ldr	x11, [sp, #16]
   84080: ec 03 09 aa  	mov	x12, x9
   84084: 4a 81 00 f1  	subs	x10, x10, #32
   84088: 8b 0d 1f 38  	strb	w11, [x12, #-16]!
   8408c: ef 0f 40 f9  	ldr	x15, [sp, #24]
   84090: 6e fd 58 d3  	lsr	x14, x11, #24
   84094: 6d fd 68 d3  	lsr	x13, x11, #40
   84098: 8e 0d 00 39  	strb	w14, [x12, #3]
   8409c: 6e fd 48 d3  	lsr	x14, x11, #8
   840a0: 2d 51 1f 38  	sturb	w13, [x9, #-11]
   840a4: 6d fd 50 d3  	lsr	x13, x11, #16
   840a8: 2e 11 1f 38  	sturb	w14, [x9, #-15]
   840ac: ee fd 68 d3  	lsr	x14, x15, #40
   840b0: 8d 09 00 39  	strb	w13, [x12, #2]
   840b4: ed 03 0c aa  	mov	x13, x12
   840b8: 8e 35 00 39  	strb	w14, [x12, #13]
   840bc: ee fd 48 d3  	lsr	x14, x15, #8
   840c0: af 8d 00 38  	strb	w15, [x13, #8]!
   840c4: 8e 25 00 39  	strb	w14, [x12, #9]
   840c8: ee fd 58 d3  	lsr	x14, x15, #24
   840cc: ae 0d 00 39  	strb	w14, [x13, #3]
   840d0: ee fd 50 d3  	lsr	x14, x15, #16
   840d4: ae 09 00 39  	strb	w14, [x13, #2]
   840d8: 6e fd 60 d3  	lsr	x14, x11, #32
   840dc: 8e 4d 00 38  	strb	w14, [x12, #4]!
   840e0: ee fd 60 d3  	lsr	x14, x15, #32
   840e4: ae 4d 00 38  	strb	w14, [x13, #4]!
   840e8: 6e fd 78 d3  	lsr	x14, x11, #56
   840ec: 6b fd 70 d3  	lsr	x11, x11, #48
   840f0: 8e 0d 00 39  	strb	w14, [x12, #3]
   840f4: ee fd 78 d3  	lsr	x14, x15, #56
   840f8: ef fd 70 d3  	lsr	x15, x15, #48
   840fc: 8b 09 00 39  	strb	w11, [x12, #2]
   84100: ae 0d 00 39  	strb	w14, [x13, #3]
   84104: af 09 00 39  	strb	w15, [x13, #2]
   84108: e0 03 80 3d  	str	q0, [sp]
   8410c: eb 03 40 f9  	ldr	x11, [sp]
   84110: ec 03 09 aa  	mov	x12, x9
   84114: 2d 81 00 91  	add	x13, x9, #32
   84118: 2b 01 00 39  	strb	w11, [x9]
   8411c: 6e fd 68 d3  	lsr	x14, x11, #40
   84120: ef 07 40 f9  	ldr	x15, [sp, #8]
   84124: 2e 15 00 39  	strb	w14, [x9, #5]
   84128: 6e fd 58 d3  	lsr	x14, x11, #24
   8412c: 2e 0d 00 39  	strb	w14, [x9, #3]
   84130: 6e fd 50 d3  	lsr	x14, x11, #16
   84134: 2e 09 00 39  	strb	w14, [x9, #2]
   84138: 6e fd 48 d3  	lsr	x14, x11, #8
   8413c: 2e 05 00 39  	strb	w14, [x9, #1]
   84140: ee fd 68 d3  	lsr	x14, x15, #40
   84144: 8f 8d 00 38  	strb	w15, [x12, #8]!
   84148: 2e 35 00 39  	strb	w14, [x9, #13]
   8414c: ee fd 58 d3  	lsr	x14, x15, #24
   84150: 8e 0d 00 39  	strb	w14, [x12, #3]
   84154: ee fd 50 d3  	lsr	x14, x15, #16
   84158: 8e 09 00 39  	strb	w14, [x12, #2]
   8415c: ee fd 48 d3  	lsr	x14, x15, #8
   84160: 2e 25 00 39  	strb	w14, [x9, #9]
   84164: ee fd 60 d3  	lsr	x14, x15, #32
   84168: 8e 4d 00 38  	strb	w14, [x12, #4]!
   8416c: 6e fd 60 d3  	lsr	x14, x11, #32
   84170: 2e 4d 00 38  	strb	w14, [x9, #4]!
   84174: ee fd 78 d3  	lsr	x14, x15, #56
   84178: 8e 0d 00 39  	strb	w14, [x12, #3]
   8417c: 6e fd 78 d3  	lsr	x14, x11, #56
   84180: 6b fd 70 d3  	lsr	x11, x11, #48
   84184: ef fd 70 d3  	lsr	x15, x15, #48
   84188: 2e 0d 00 39  	strb	w14, [x9, #3]
   8418c: 2b 09 00 39  	strb	w11, [x9, #2]
   84190: e9 03 0d aa  	mov	x9, x13
   84194: 8f 09 00 39  	strb	w15, [x12, #2]
   84198: 01 f7 ff 54  	b.ne	0x84078 <memset+0x38>
   8419c: 1f 01 02 eb  	cmp	x8, x2
   841a0: 20 03 00 54  	b.eq	0x84204 <memset+0x1c4>
   841a4: 5f 08 7e f2  	tst	x2, #0x1c
   841a8: 40 02 00 54  	b.eq	0x841f0 <memset+0x1b0>
   841ac: ea 03 08 aa  	mov	x10, x8
   841b0: 48 f4 7e 92  	and	x8, x2, #0xfffffffffffffffc
   841b4: 20 0c 02 0e  	dup	v0.4h, w1
   841b8: 09 00 0a 8b  	add	x9, x0, x10
   841bc: 4a 01 08 cb  	sub	x10, x10, x8
   841c0: 0b 3c 0e 0e  	umov	w11, v0.h[3]
   841c4: 0c 3c 0a 0e  	umov	w12, v0.h[2]
   841c8: 0d 3c 06 0e  	umov	w13, v0.h[1]
   841cc: 0e 3c 02 0e  	umov	w14, v0.h[0]
   841d0: 2b 0d 00 39  	strb	w11, [x9, #3]
   841d4: 2c 09 00 39  	strb	w12, [x9, #2]
   841d8: 2d 05 00 39  	strb	w13, [x9, #1]
   841dc: 2e 45 00 38  	strb	w14, [x9], #4
   841e0: 4a 11 00 b1  	adds	x10, x10, #4
   841e4: 61 ff ff 54  	b.ne	0x841d0 <memset+0x190>
   841e8: 1f 01 02 eb  	cmp	x8, x2
   841ec: c0 00 00 54  	b.eq	0x84204 <memset+0x1c4>
   841f0: 49 00 08 cb  	sub	x9, x2, x8
   841f4: 08 00 08 8b  	add	x8, x0, x8
   841f8: 29 05 00 f1  	subs	x9, x9, #1
   841fc: 01 15 00 38  	strb	w1, [x8], #1
   84200: c1 ff ff 54  	b.ne	0x841f8 <memset+0x1b8>
   84204: ff 83 00 91  	add	sp, sp, #32
   84208: c0 03 5f d6  	ret

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
   84820: f0 47 bf a9  	stp	x16, x17, [sp, #-16]!
   84824: f2 4f bf a9  	stp	x18, x19, [sp, #-16]!
   84828: fd 7b bf a9  	stp	x29, x30, [sp, #-16]!
   8482c: 01 ee ff 97  	bl	0x80030 <interrupt_handler>
   84830: fd 7b c1 a8  	ldp	x29, x30, [sp], #16
   84834: f2 4f c1 a8  	ldp	x18, x19, [sp], #16
   84838: f0 47 c1 a8  	ldp	x16, x17, [sp], #16
   8483c: ee 3f c1 a8  	ldp	x14, x15, [sp], #16
   84840: ec 37 c1 a8  	ldp	x12, x13, [sp], #16
   84844: ea 2f c1 a8  	ldp	x10, x11, [sp], #16
   84848: e8 27 c1 a8  	ldp	x8, x9, [sp], #16
   8484c: e6 1f c1 a8  	ldp	x6, x7, [sp], #16
   84850: e4 17 c1 a8  	ldp	x4, x5, [sp], #16
   84854: e2 0f c1 a8  	ldp	x2, x3, [sp], #16
   84858: e0 07 c1 a8  	ldp	x0, x1, [sp], #16
   8485c: e0 03 9f d6  	eret
   84860: 20 00 20 d4  	brk	#0x1
		...

0000000000084880 <int_irq_sp0>:
   84880: e0 07 bf a9  	stp	x0, x1, [sp, #-16]!
   84884: e2 0f bf a9  	stp	x2, x3, [sp, #-16]!
   84888: e4 17 bf a9  	stp	x4, x5, [sp, #-16]!
   8488c: e6 1f bf a9  	stp	x6, x7, [sp, #-16]!
   84890: e8 27 bf a9  	stp	x8, x9, [sp, #-16]!
   84894: ea 2f bf a9  	stp	x10, x11, [sp, #-16]!
   84898: ec 37 bf a9  	stp	x12, x13, [sp, #-16]!
   8489c: ee 3f bf a9  	stp	x14, x15, [sp, #-16]!
   848a0: f0 47 bf a9  	stp	x16, x17, [sp, #-16]!
   848a4: f2 4f bf a9  	stp	x18, x19, [sp, #-16]!
   848a8: fd 7b bf a9  	stp	x29, x30, [sp, #-16]!
   848ac: e1 ed ff 97  	bl	0x80030 <interrupt_handler>
   848b0: fd 7b c1 a8  	ldp	x29, x30, [sp], #16
   848b4: f2 4f c1 a8  	ldp	x18, x19, [sp], #16
   848b8: f0 47 c1 a8  	ldp	x16, x17, [sp], #16
   848bc: ee 3f c1 a8  	ldp	x14, x15, [sp], #16
   848c0: ec 37 c1 a8  	ldp	x12, x13, [sp], #16
   848c4: ea 2f c1 a8  	ldp	x10, x11, [sp], #16
   848c8: e8 27 c1 a8  	ldp	x8, x9, [sp], #16
   848cc: e6 1f c1 a8  	ldp	x6, x7, [sp], #16
   848d0: e4 17 c1 a8  	ldp	x4, x5, [sp], #16
   848d4: e2 0f c1 a8  	ldp	x2, x3, [sp], #16
   848d8: e0 07 c1 a8  	ldp	x0, x1, [sp], #16
   848dc: e0 03 9f d6  	eret
   848e0: 20 00 20 d4  	brk	#0x1
		...

0000000000084900 <int_fiq_sp0>:
   84900: e0 07 bf a9  	stp	x0, x1, [sp, #-16]!
   84904: e2 0f bf a9  	stp	x2, x3, [sp, #-16]!
   84908: e4 17 bf a9  	stp	x4, x5, [sp, #-16]!
   8490c: e6 1f bf a9  	stp	x6, x7, [sp, #-16]!
   84910: e8 27 bf a9  	stp	x8, x9, [sp, #-16]!
   84914: ea 2f bf a9  	stp	x10, x11, [sp, #-16]!
   84918: ec 37 bf a9  	stp	x12, x13, [sp, #-16]!
   8491c: ee 3f bf a9  	stp	x14, x15, [sp, #-16]!
   84920: f0 47 bf a9  	stp	x16, x17, [sp, #-16]!
   84924: f2 4f bf a9  	stp	x18, x19, [sp, #-16]!
   84928: fd 7b bf a9  	stp	x29, x30, [sp, #-16]!
   8492c: c1 ed ff 97  	bl	0x80030 <interrupt_handler>
   84930: fd 7b c1 a8  	ldp	x29, x30, [sp], #16
   84934: f2 4f c1 a8  	ldp	x18, x19, [sp], #16
   84938: f0 47 c1 a8  	ldp	x16, x17, [sp], #16
   8493c: ee 3f c1 a8  	ldp	x14, x15, [sp], #16
   84940: ec 37 c1 a8  	ldp	x12, x13, [sp], #16
   84944: ea 2f c1 a8  	ldp	x10, x11, [sp], #16
   84948: e8 27 c1 a8  	ldp	x8, x9, [sp], #16
   8494c: e6 1f c1 a8  	ldp	x6, x7, [sp], #16
   84950: e4 17 c1 a8  	ldp	x4, x5, [sp], #16
   84954: e2 0f c1 a8  	ldp	x2, x3, [sp], #16
   84958: e0 07 c1 a8  	ldp	x0, x1, [sp], #16
   8495c: e0 03 9f d6  	eret
   84960: 20 00 20 d4  	brk	#0x1
		...

0000000000084980 <int_serr_sp0>:
   84980: e0 07 bf a9  	stp	x0, x1, [sp, #-16]!
   84984: e2 0f bf a9  	stp	x2, x3, [sp, #-16]!
   84988: e4 17 bf a9  	stp	x4, x5, [sp, #-16]!
   8498c: e6 1f bf a9  	stp	x6, x7, [sp, #-16]!
   84990: e8 27 bf a9  	stp	x8, x9, [sp, #-16]!
   84994: ea 2f bf a9  	stp	x10, x11, [sp, #-16]!
   84998: ec 37 bf a9  	stp	x12, x13, [sp, #-16]!
   8499c: ee 3f bf a9  	stp	x14, x15, [sp, #-16]!
   849a0: f0 47 bf a9  	stp	x16, x17, [sp, #-16]!
   849a4: f2 4f bf a9  	stp	x18, x19, [sp, #-16]!
   849a8: fd 7b bf a9  	stp	x29, x30, [sp, #-16]!
   849ac: a1 ed ff 97  	bl	0x80030 <interrupt_handler>
   849b0: fd 7b c1 a8  	ldp	x29, x30, [sp], #16
   849b4: f2 4f c1 a8  	ldp	x18, x19, [sp], #16
   849b8: f0 47 c1 a8  	ldp	x16, x17, [sp], #16
   849bc: ee 3f c1 a8  	ldp	x14, x15, [sp], #16
   849c0: ec 37 c1 a8  	ldp	x12, x13, [sp], #16
   849c4: ea 2f c1 a8  	ldp	x10, x11, [sp], #16
   849c8: e8 27 c1 a8  	ldp	x8, x9, [sp], #16
   849cc: e6 1f c1 a8  	ldp	x6, x7, [sp], #16
   849d0: e4 17 c1 a8  	ldp	x4, x5, [sp], #16
   849d4: e2 0f c1 a8  	ldp	x2, x3, [sp], #16
   849d8: e0 07 c1 a8  	ldp	x0, x1, [sp], #16
   849dc: e0 03 9f d6  	eret
   849e0: 20 00 20 d4  	brk	#0x1
		...

0000000000084a00 <int_sync_spx>:
   84a00: e0 07 bf a9  	stp	x0, x1, [sp, #-16]!
   84a04: e2 0f bf a9  	stp	x2, x3, [sp, #-16]!
   84a08: e4 17 bf a9  	stp	x4, x5, [sp, #-16]!
   84a0c: e6 1f bf a9  	stp	x6, x7, [sp, #-16]!
   84a10: e8 27 bf a9  	stp	x8, x9, [sp, #-16]!
   84a14: ea 2f bf a9  	stp	x10, x11, [sp, #-16]!
   84a18: ec 37 bf a9  	stp	x12, x13, [sp, #-16]!
   84a1c: ee 3f bf a9  	stp	x14, x15, [sp, #-16]!
   84a20: f0 47 bf a9  	stp	x16, x17, [sp, #-16]!
   84a24: f2 4f bf a9  	stp	x18, x19, [sp, #-16]!
   84a28: fd 7b bf a9  	stp	x29, x30, [sp, #-16]!
   84a2c: 81 ed ff 97  	bl	0x80030 <interrupt_handler>
   84a30: fd 7b c1 a8  	ldp	x29, x30, [sp], #16
   84a34: f2 4f c1 a8  	ldp	x18, x19, [sp], #16
   84a38: f0 47 c1 a8  	ldp	x16, x17, [sp], #16
   84a3c: ee 3f c1 a8  	ldp	x14, x15, [sp], #16
   84a40: ec 37 c1 a8  	ldp	x12, x13, [sp], #16
   84a44: ea 2f c1 a8  	ldp	x10, x11, [sp], #16
   84a48: e8 27 c1 a8  	ldp	x8, x9, [sp], #16
   84a4c: e6 1f c1 a8  	ldp	x6, x7, [sp], #16
   84a50: e4 17 c1 a8  	ldp	x4, x5, [sp], #16
   84a54: e2 0f c1 a8  	ldp	x2, x3, [sp], #16
   84a58: e0 07 c1 a8  	ldp	x0, x1, [sp], #16
   84a5c: e0 03 9f d6  	eret
   84a60: 20 00 20 d4  	brk	#0x1
		...

0000000000084a80 <int_irq_spx>:
   84a80: e0 07 bf a9  	stp	x0, x1, [sp, #-16]!
   84a84: e2 0f bf a9  	stp	x2, x3, [sp, #-16]!
   84a88: e4 17 bf a9  	stp	x4, x5, [sp, #-16]!
   84a8c: e6 1f bf a9  	stp	x6, x7, [sp, #-16]!
   84a90: e8 27 bf a9  	stp	x8, x9, [sp, #-16]!
   84a94: ea 2f bf a9  	stp	x10, x11, [sp, #-16]!
   84a98: ec 37 bf a9  	stp	x12, x13, [sp, #-16]!
   84a9c: ee 3f bf a9  	stp	x14, x15, [sp, #-16]!
   84aa0: f0 47 bf a9  	stp	x16, x17, [sp, #-16]!
   84aa4: f2 4f bf a9  	stp	x18, x19, [sp, #-16]!
   84aa8: fd 7b bf a9  	stp	x29, x30, [sp, #-16]!
   84aac: 61 ed ff 97  	bl	0x80030 <interrupt_handler>
   84ab0: fd 7b c1 a8  	ldp	x29, x30, [sp], #16
   84ab4: f2 4f c1 a8  	ldp	x18, x19, [sp], #16
   84ab8: f0 47 c1 a8  	ldp	x16, x17, [sp], #16
   84abc: ee 3f c1 a8  	ldp	x14, x15, [sp], #16
   84ac0: ec 37 c1 a8  	ldp	x12, x13, [sp], #16
   84ac4: ea 2f c1 a8  	ldp	x10, x11, [sp], #16
   84ac8: e8 27 c1 a8  	ldp	x8, x9, [sp], #16
   84acc: e6 1f c1 a8  	ldp	x6, x7, [sp], #16
   84ad0: e4 17 c1 a8  	ldp	x4, x5, [sp], #16
   84ad4: e2 0f c1 a8  	ldp	x2, x3, [sp], #16
   84ad8: e0 07 c1 a8  	ldp	x0, x1, [sp], #16
   84adc: e0 03 9f d6  	eret
   84ae0: 20 00 20 d4  	brk	#0x1
		...

0000000000084b00 <int_fiq_spx>:
   84b00: e0 07 bf a9  	stp	x0, x1, [sp, #-16]!
   84b04: e2 0f bf a9  	stp	x2, x3, [sp, #-16]!
   84b08: e4 17 bf a9  	stp	x4, x5, [sp, #-16]!
   84b0c: e6 1f bf a9  	stp	x6, x7, [sp, #-16]!
   84b10: e8 27 bf a9  	stp	x8, x9, [sp, #-16]!
   84b14: ea 2f bf a9  	stp	x10, x11, [sp, #-16]!
   84b18: ec 37 bf a9  	stp	x12, x13, [sp, #-16]!
   84b1c: ee 3f bf a9  	stp	x14, x15, [sp, #-16]!
   84b20: f0 47 bf a9  	stp	x16, x17, [sp, #-16]!
   84b24: f2 4f bf a9  	stp	x18, x19, [sp, #-16]!
   84b28: fd 7b bf a9  	stp	x29, x30, [sp, #-16]!
   84b2c: 41 ed ff 97  	bl	0x80030 <interrupt_handler>
   84b30: fd 7b c1 a8  	ldp	x29, x30, [sp], #16
   84b34: f2 4f c1 a8  	ldp	x18, x19, [sp], #16
   84b38: f0 47 c1 a8  	ldp	x16, x17, [sp], #16
   84b3c: ee 3f c1 a8  	ldp	x14, x15, [sp], #16
   84b40: ec 37 c1 a8  	ldp	x12, x13, [sp], #16
   84b44: ea 2f c1 a8  	ldp	x10, x11, [sp], #16
   84b48: e8 27 c1 a8  	ldp	x8, x9, [sp], #16
   84b4c: e6 1f c1 a8  	ldp	x6, x7, [sp], #16
   84b50: e4 17 c1 a8  	ldp	x4, x5, [sp], #16
   84b54: e2 0f c1 a8  	ldp	x2, x3, [sp], #16
   84b58: e0 07 c1 a8  	ldp	x0, x1, [sp], #16
   84b5c: e0 03 9f d6  	eret
   84b60: 20 00 20 d4  	brk	#0x1
		...

0000000000084b80 <int_serr_spx>:
   84b80: e0 07 bf a9  	stp	x0, x1, [sp, #-16]!
   84b84: e2 0f bf a9  	stp	x2, x3, [sp, #-16]!
   84b88: e4 17 bf a9  	stp	x4, x5, [sp, #-16]!
   84b8c: e6 1f bf a9  	stp	x6, x7, [sp, #-16]!
   84b90: e8 27 bf a9  	stp	x8, x9, [sp, #-16]!
   84b94: ea 2f bf a9  	stp	x10, x11, [sp, #-16]!
   84b98: ec 37 bf a9  	stp	x12, x13, [sp, #-16]!
   84b9c: ee 3f bf a9  	stp	x14, x15, [sp, #-16]!
   84ba0: f0 47 bf a9  	stp	x16, x17, [sp, #-16]!
   84ba4: f2 4f bf a9  	stp	x18, x19, [sp, #-16]!
   84ba8: fd 7b bf a9  	stp	x29, x30, [sp, #-16]!
   84bac: 21 ed ff 97  	bl	0x80030 <interrupt_handler>
   84bb0: fd 7b c1 a8  	ldp	x29, x30, [sp], #16
   84bb4: f2 4f c1 a8  	ldp	x18, x19, [sp], #16
   84bb8: f0 47 c1 a8  	ldp	x16, x17, [sp], #16
   84bbc: ee 3f c1 a8  	ldp	x14, x15, [sp], #16
   84bc0: ec 37 c1 a8  	ldp	x12, x13, [sp], #16
   84bc4: ea 2f c1 a8  	ldp	x10, x11, [sp], #16
   84bc8: e8 27 c1 a8  	ldp	x8, x9, [sp], #16
   84bcc: e6 1f c1 a8  	ldp	x6, x7, [sp], #16
   84bd0: e4 17 c1 a8  	ldp	x4, x5, [sp], #16
   84bd4: e2 0f c1 a8  	ldp	x2, x3, [sp], #16
   84bd8: e0 07 c1 a8  	ldp	x0, x1, [sp], #16
   84bdc: e0 03 9f d6  	eret
   84be0: 20 00 20 d4  	brk	#0x1
		...

0000000000084c00 <int_sync_lel64>:
   84c00: e0 07 bf a9  	stp	x0, x1, [sp, #-16]!
   84c04: e2 0f bf a9  	stp	x2, x3, [sp, #-16]!
   84c08: e4 17 bf a9  	stp	x4, x5, [sp, #-16]!
   84c0c: e6 1f bf a9  	stp	x6, x7, [sp, #-16]!
   84c10: e8 27 bf a9  	stp	x8, x9, [sp, #-16]!
   84c14: ea 2f bf a9  	stp	x10, x11, [sp, #-16]!
   84c18: ec 37 bf a9  	stp	x12, x13, [sp, #-16]!
   84c1c: ee 3f bf a9  	stp	x14, x15, [sp, #-16]!
   84c20: f0 47 bf a9  	stp	x16, x17, [sp, #-16]!
   84c24: f2 4f bf a9  	stp	x18, x19, [sp, #-16]!
   84c28: fd 7b bf a9  	stp	x29, x30, [sp, #-16]!
   84c2c: 01 ed ff 97  	bl	0x80030 <interrupt_handler>
   84c30: fd 7b c1 a8  	ldp	x29, x30, [sp], #16
   84c34: f2 4f c1 a8  	ldp	x18, x19, [sp], #16
   84c38: f0 47 c1 a8  	ldp	x16, x17, [sp], #16
   84c3c: ee 3f c1 a8  	ldp	x14, x15, [sp], #16
   84c40: ec 37 c1 a8  	ldp	x12, x13, [sp], #16
   84c44: ea 2f c1 a8  	ldp	x10, x11, [sp], #16
   84c48: e8 27 c1 a8  	ldp	x8, x9, [sp], #16
   84c4c: e6 1f c1 a8  	ldp	x6, x7, [sp], #16
   84c50: e4 17 c1 a8  	ldp	x4, x5, [sp], #16
   84c54: e2 0f c1 a8  	ldp	x2, x3, [sp], #16
   84c58: e0 07 c1 a8  	ldp	x0, x1, [sp], #16
   84c5c: e0 03 9f d6  	eret
   84c60: 20 00 20 d4  	brk	#0x1
		...

0000000000084c80 <int_irq_lel64>:
   84c80: e0 07 bf a9  	stp	x0, x1, [sp, #-16]!
   84c84: e2 0f bf a9  	stp	x2, x3, [sp, #-16]!
   84c88: e4 17 bf a9  	stp	x4, x5, [sp, #-16]!
   84c8c: e6 1f bf a9  	stp	x6, x7, [sp, #-16]!
   84c90: e8 27 bf a9  	stp	x8, x9, [sp, #-16]!
   84c94: ea 2f bf a9  	stp	x10, x11, [sp, #-16]!
   84c98: ec 37 bf a9  	stp	x12, x13, [sp, #-16]!
   84c9c: ee 3f bf a9  	stp	x14, x15, [sp, #-16]!
   84ca0: f0 47 bf a9  	stp	x16, x17, [sp, #-16]!
   84ca4: f2 4f bf a9  	stp	x18, x19, [sp, #-16]!
   84ca8: fd 7b bf a9  	stp	x29, x30, [sp, #-16]!
   84cac: e1 ec ff 97  	bl	0x80030 <interrupt_handler>
   84cb0: fd 7b c1 a8  	ldp	x29, x30, [sp], #16
   84cb4: f2 4f c1 a8  	ldp	x18, x19, [sp], #16
   84cb8: f0 47 c1 a8  	ldp	x16, x17, [sp], #16
   84cbc: ee 3f c1 a8  	ldp	x14, x15, [sp], #16
   84cc0: ec 37 c1 a8  	ldp	x12, x13, [sp], #16
   84cc4: ea 2f c1 a8  	ldp	x10, x11, [sp], #16
   84cc8: e8 27 c1 a8  	ldp	x8, x9, [sp], #16
   84ccc: e6 1f c1 a8  	ldp	x6, x7, [sp], #16
   84cd0: e4 17 c1 a8  	ldp	x4, x5, [sp], #16
   84cd4: e2 0f c1 a8  	ldp	x2, x3, [sp], #16
   84cd8: e0 07 c1 a8  	ldp	x0, x1, [sp], #16
   84cdc: e0 03 9f d6  	eret
   84ce0: 20 00 20 d4  	brk	#0x1
		...

0000000000084d00 <int_fiq_lel64>:
   84d00: e0 07 bf a9  	stp	x0, x1, [sp, #-16]!
   84d04: e2 0f bf a9  	stp	x2, x3, [sp, #-16]!
   84d08: e4 17 bf a9  	stp	x4, x5, [sp, #-16]!
   84d0c: e6 1f bf a9  	stp	x6, x7, [sp, #-16]!
   84d10: e8 27 bf a9  	stp	x8, x9, [sp, #-16]!
   84d14: ea 2f bf a9  	stp	x10, x11, [sp, #-16]!
   84d18: ec 37 bf a9  	stp	x12, x13, [sp, #-16]!
   84d1c: ee 3f bf a9  	stp	x14, x15, [sp, #-16]!
   84d20: f0 47 bf a9  	stp	x16, x17, [sp, #-16]!
   84d24: f2 4f bf a9  	stp	x18, x19, [sp, #-16]!
   84d28: fd 7b bf a9  	stp	x29, x30, [sp, #-16]!
   84d2c: c1 ec ff 97  	bl	0x80030 <interrupt_handler>
   84d30: fd 7b c1 a8  	ldp	x29, x30, [sp], #16
   84d34: f2 4f c1 a8  	ldp	x18, x19, [sp], #16
   84d38: f0 47 c1 a8  	ldp	x16, x17, [sp], #16
   84d3c: ee 3f c1 a8  	ldp	x14, x15, [sp], #16
   84d40: ec 37 c1 a8  	ldp	x12, x13, [sp], #16
   84d44: ea 2f c1 a8  	ldp	x10, x11, [sp], #16
   84d48: e8 27 c1 a8  	ldp	x8, x9, [sp], #16
   84d4c: e6 1f c1 a8  	ldp	x6, x7, [sp], #16
   84d50: e4 17 c1 a8  	ldp	x4, x5, [sp], #16
   84d54: e2 0f c1 a8  	ldp	x2, x3, [sp], #16
   84d58: e0 07 c1 a8  	ldp	x0, x1, [sp], #16
   84d5c: e0 03 9f d6  	eret
   84d60: 20 00 20 d4  	brk	#0x1
		...

0000000000084d80 <int_serr_lel64>:
   84d80: e0 07 bf a9  	stp	x0, x1, [sp, #-16]!
   84d84: e2 0f bf a9  	stp	x2, x3, [sp, #-16]!
   84d88: e4 17 bf a9  	stp	x4, x5, [sp, #-16]!
   84d8c: e6 1f bf a9  	stp	x6, x7, [sp, #-16]!
   84d90: e8 27 bf a9  	stp	x8, x9, [sp, #-16]!
   84d94: ea 2f bf a9  	stp	x10, x11, [sp, #-16]!
   84d98: ec 37 bf a9  	stp	x12, x13, [sp, #-16]!
   84d9c: ee 3f bf a9  	stp	x14, x15, [sp, #-16]!
   84da0: f0 47 bf a9  	stp	x16, x17, [sp, #-16]!
   84da4: f2 4f bf a9  	stp	x18, x19, [sp, #-16]!
   84da8: fd 7b bf a9  	stp	x29, x30, [sp, #-16]!
   84dac: a1 ec ff 97  	bl	0x80030 <interrupt_handler>
   84db0: fd 7b c1 a8  	ldp	x29, x30, [sp], #16
   84db4: f2 4f c1 a8  	ldp	x18, x19, [sp], #16
   84db8: f0 47 c1 a8  	ldp	x16, x17, [sp], #16
   84dbc: ee 3f c1 a8  	ldp	x14, x15, [sp], #16
   84dc0: ec 37 c1 a8  	ldp	x12, x13, [sp], #16
   84dc4: ea 2f c1 a8  	ldp	x10, x11, [sp], #16
   84dc8: e8 27 c1 a8  	ldp	x8, x9, [sp], #16
   84dcc: e6 1f c1 a8  	ldp	x6, x7, [sp], #16
   84dd0: e4 17 c1 a8  	ldp	x4, x5, [sp], #16
   84dd4: e2 0f c1 a8  	ldp	x2, x3, [sp], #16
   84dd8: e0 07 c1 a8  	ldp	x0, x1, [sp], #16
   84ddc: e0 03 9f d6  	eret
   84de0: 20 00 20 d4  	brk	#0x1
		...

0000000000084e00 <int_sync_lel32>:
   84e00: e0 07 bf a9  	stp	x0, x1, [sp, #-16]!
   84e04: e2 0f bf a9  	stp	x2, x3, [sp, #-16]!
   84e08: e4 17 bf a9  	stp	x4, x5, [sp, #-16]!
   84e0c: e6 1f bf a9  	stp	x6, x7, [sp, #-16]!
   84e10: e8 27 bf a9  	stp	x8, x9, [sp, #-16]!
   84e14: ea 2f bf a9  	stp	x10, x11, [sp, #-16]!
   84e18: ec 37 bf a9  	stp	x12, x13, [sp, #-16]!
   84e1c: ee 3f bf a9  	stp	x14, x15, [sp, #-16]!
   84e20: f0 47 bf a9  	stp	x16, x17, [sp, #-16]!
   84e24: f2 4f bf a9  	stp	x18, x19, [sp, #-16]!
   84e28: fd 7b bf a9  	stp	x29, x30, [sp, #-16]!
   84e2c: 81 ec ff 97  	bl	0x80030 <interrupt_handler>
   84e30: fd 7b c1 a8  	ldp	x29, x30, [sp], #16
   84e34: f2 4f c1 a8  	ldp	x18, x19, [sp], #16
   84e38: f0 47 c1 a8  	ldp	x16, x17, [sp], #16
   84e3c: ee 3f c1 a8  	ldp	x14, x15, [sp], #16
   84e40: ec 37 c1 a8  	ldp	x12, x13, [sp], #16
   84e44: ea 2f c1 a8  	ldp	x10, x11, [sp], #16
   84e48: e8 27 c1 a8  	ldp	x8, x9, [sp], #16
   84e4c: e6 1f c1 a8  	ldp	x6, x7, [sp], #16
   84e50: e4 17 c1 a8  	ldp	x4, x5, [sp], #16
   84e54: e2 0f c1 a8  	ldp	x2, x3, [sp], #16
   84e58: e0 07 c1 a8  	ldp	x0, x1, [sp], #16
   84e5c: e0 03 9f d6  	eret
   84e60: 20 00 20 d4  	brk	#0x1
		...

0000000000084e80 <int_irq_lel32>:
   84e80: e0 07 bf a9  	stp	x0, x1, [sp, #-16]!
   84e84: e2 0f bf a9  	stp	x2, x3, [sp, #-16]!
   84e88: e4 17 bf a9  	stp	x4, x5, [sp, #-16]!
   84e8c: e6 1f bf a9  	stp	x6, x7, [sp, #-16]!
   84e90: e8 27 bf a9  	stp	x8, x9, [sp, #-16]!
   84e94: ea 2f bf a9  	stp	x10, x11, [sp, #-16]!
   84e98: ec 37 bf a9  	stp	x12, x13, [sp, #-16]!
   84e9c: ee 3f bf a9  	stp	x14, x15, [sp, #-16]!
   84ea0: f0 47 bf a9  	stp	x16, x17, [sp, #-16]!
   84ea4: f2 4f bf a9  	stp	x18, x19, [sp, #-16]!
   84ea8: fd 7b bf a9  	stp	x29, x30, [sp, #-16]!
   84eac: 61 ec ff 97  	bl	0x80030 <interrupt_handler>
   84eb0: fd 7b c1 a8  	ldp	x29, x30, [sp], #16
   84eb4: f2 4f c1 a8  	ldp	x18, x19, [sp], #16
   84eb8: f0 47 c1 a8  	ldp	x16, x17, [sp], #16
   84ebc: ee 3f c1 a8  	ldp	x14, x15, [sp], #16
   84ec0: ec 37 c1 a8  	ldp	x12, x13, [sp], #16
   84ec4: ea 2f c1 a8  	ldp	x10, x11, [sp], #16
   84ec8: e8 27 c1 a8  	ldp	x8, x9, [sp], #16
   84ecc: e6 1f c1 a8  	ldp	x6, x7, [sp], #16
   84ed0: e4 17 c1 a8  	ldp	x4, x5, [sp], #16
   84ed4: e2 0f c1 a8  	ldp	x2, x3, [sp], #16
   84ed8: e0 07 c1 a8  	ldp	x0, x1, [sp], #16
   84edc: e0 03 9f d6  	eret
   84ee0: 20 00 20 d4  	brk	#0x1
		...

0000000000084f00 <int_fiq_lel32>:
   84f00: e0 07 bf a9  	stp	x0, x1, [sp, #-16]!
   84f04: e2 0f bf a9  	stp	x2, x3, [sp, #-16]!
   84f08: e4 17 bf a9  	stp	x4, x5, [sp, #-16]!
   84f0c: e6 1f bf a9  	stp	x6, x7, [sp, #-16]!
   84f10: e8 27 bf a9  	stp	x8, x9, [sp, #-16]!
   84f14: ea 2f bf a9  	stp	x10, x11, [sp, #-16]!
   84f18: ec 37 bf a9  	stp	x12, x13, [sp, #-16]!
   84f1c: ee 3f bf a9  	stp	x14, x15, [sp, #-16]!
   84f20: f0 47 bf a9  	stp	x16, x17, [sp, #-16]!
   84f24: f2 4f bf a9  	stp	x18, x19, [sp, #-16]!
   84f28: fd 7b bf a9  	stp	x29, x30, [sp, #-16]!
   84f2c: 41 ec ff 97  	bl	0x80030 <interrupt_handler>
   84f30: fd 7b c1 a8  	ldp	x29, x30, [sp], #16
   84f34: f2 4f c1 a8  	ldp	x18, x19, [sp], #16
   84f38: f0 47 c1 a8  	ldp	x16, x17, [sp], #16
   84f3c: ee 3f c1 a8  	ldp	x14, x15, [sp], #16
   84f40: ec 37 c1 a8  	ldp	x12, x13, [sp], #16
   84f44: ea 2f c1 a8  	ldp	x10, x11, [sp], #16
   84f48: e8 27 c1 a8  	ldp	x8, x9, [sp], #16
   84f4c: e6 1f c1 a8  	ldp	x6, x7, [sp], #16
   84f50: e4 17 c1 a8  	ldp	x4, x5, [sp], #16
   84f54: e2 0f c1 a8  	ldp	x2, x3, [sp], #16
   84f58: e0 07 c1 a8  	ldp	x0, x1, [sp], #16
   84f5c: e0 03 9f d6  	eret
   84f60: 20 00 20 d4  	brk	#0x1
		...

0000000000084f80 <int_serr_lel32>:
   84f80: e0 07 bf a9  	stp	x0, x1, [sp, #-16]!
   84f84: e2 0f bf a9  	stp	x2, x3, [sp, #-16]!
   84f88: e4 17 bf a9  	stp	x4, x5, [sp, #-16]!
   84f8c: e6 1f bf a9  	stp	x6, x7, [sp, #-16]!
   84f90: e8 27 bf a9  	stp	x8, x9, [sp, #-16]!
   84f94: ea 2f bf a9  	stp	x10, x11, [sp, #-16]!
   84f98: ec 37 bf a9  	stp	x12, x13, [sp, #-16]!
   84f9c: ee 3f bf a9  	stp	x14, x15, [sp, #-16]!
   84fa0: f0 47 bf a9  	stp	x16, x17, [sp, #-16]!
   84fa4: f2 4f bf a9  	stp	x18, x19, [sp, #-16]!
   84fa8: fd 7b bf a9  	stp	x29, x30, [sp, #-16]!
   84fac: 21 ec ff 97  	bl	0x80030 <interrupt_handler>
   84fb0: fd 7b c1 a8  	ldp	x29, x30, [sp], #16
   84fb4: f2 4f c1 a8  	ldp	x18, x19, [sp], #16
   84fb8: f0 47 c1 a8  	ldp	x16, x17, [sp], #16
   84fbc: ee 3f c1 a8  	ldp	x14, x15, [sp], #16
   84fc0: ec 37 c1 a8  	ldp	x12, x13, [sp], #16
   84fc4: ea 2f c1 a8  	ldp	x10, x11, [sp], #16
   84fc8: e8 27 c1 a8  	ldp	x8, x9, [sp], #16
   84fcc: e6 1f c1 a8  	ldp	x6, x7, [sp], #16
   84fd0: e4 17 c1 a8  	ldp	x4, x5, [sp], #16
   84fd4: e2 0f c1 a8  	ldp	x2, x3, [sp], #16
   84fd8: e0 07 c1 a8  	ldp	x0, x1, [sp], #16
   84fdc: e0 03 9f d6  	eret
   84fe0: 20 00 20 d4  	brk	#0x1
