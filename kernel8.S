
target/aarch64-unknown-none-softfloat/release/baremetal-pi:	file format elf64-littleaarch64


Disassembly of section .boot:

0000000000080000 <_start>:
   80000: a8 00 38 d5  	mrs	x8, MPIDR_EL1
   80004: 1f 05 40 f2  	tst	x8, #0x3
   80008: 60 00 00 54  	b.eq	0x80014 <_start+0x14>
   8000c: 5f 20 03 d5  	wfe
   80010: ff ff ff 17  	b	0x8000c <_start+0xc>
   80014: ff 03 6d b2  	orr	sp, xzr, #0x80000
   80018: d2 01 00 14  	b	0x80760 <rust_entry>
   8001c: 20 00 20 d4  	brk	#0x1

Disassembly of section .text:

0000000000080020 <_ZN50_$LT$$RF$mut$u20$W$u20$as$u20$core..fmt..Write$GT$10write_char17h40437d1197a8283dE>:
   80020: fe 0f 1f f8  	str	x30, [sp, #-16]!
   80024: 3f 00 02 71  	cmp	w1, #128
   80028: ff 0f 00 b9  	str	wzr, [sp, #12]
   8002c: 82 00 00 54  	b.hs	0x8003c <_ZN50_$LT$$RF$mut$u20$W$u20$as$u20$core..fmt..Write$GT$10write_char17h40437d1197a8283dE+0x1c>
   80030: 28 00 80 52  	mov	w8, #1
   80034: e1 33 00 39  	strb	w1, [sp, #12]
   80038: 25 00 00 14  	b	0x800cc <_ZN50_$LT$$RF$mut$u20$W$u20$as$u20$core..fmt..Write$GT$10write_char17h40437d1197a8283dE+0xac>
   8003c: 3f 00 20 71  	cmp	w1, #2048
   80040: 22 01 00 54  	b.hs	0x80064 <_ZN50_$LT$$RF$mut$u20$W$u20$as$u20$core..fmt..Write$GT$10write_char17h40437d1197a8283dE+0x44>
   80044: 28 7c 06 53  	lsr	w8, w1, #6
   80048: 09 05 1a 32  	orr	w9, w8, #0xc0
   8004c: 0a 10 80 52  	mov	w10, #128
   80050: 48 00 80 52  	mov	w8, #2
   80054: 2a 14 00 33  	bfxil	w10, w1, #0, #6
   80058: e9 33 00 39  	strb	w9, [sp, #12]
   8005c: ea 37 00 39  	strb	w10, [sp, #13]
   80060: 1b 00 00 14  	b	0x800cc <_ZN50_$LT$$RF$mut$u20$W$u20$as$u20$core..fmt..Write$GT$10write_char17h40437d1197a8283dE+0xac>
   80064: 3f 40 40 71  	cmp	w1, #16, lsl #12
   80068: 82 01 00 54  	b.hs	0x80098 <_ZN50_$LT$$RF$mut$u20$W$u20$as$u20$core..fmt..Write$GT$10write_char17h40437d1197a8283dE+0x78>
   8006c: 28 7c 0c 53  	lsr	w8, w1, #12
   80070: 09 09 1b 32  	orr	w9, w8, #0xe0
   80074: 0a 10 80 52  	mov	w10, #128
   80078: 0b 10 80 52  	mov	w11, #128
   8007c: 2b 2c 06 33  	bfxil	w11, w1, #6, #6
   80080: 2a 14 00 33  	bfxil	w10, w1, #0, #6
   80084: 68 00 80 52  	mov	w8, #3
   80088: e9 33 00 39  	strb	w9, [sp, #12]
   8008c: eb 37 00 39  	strb	w11, [sp, #13]
   80090: ea 3b 00 39  	strb	w10, [sp, #14]
   80094: 0e 00 00 14  	b	0x800cc <_ZN50_$LT$$RF$mut$u20$W$u20$as$u20$core..fmt..Write$GT$10write_char17h40437d1197a8283dE+0xac>
   80098: 28 7c 12 53  	lsr	w8, w1, #18
   8009c: 09 10 80 52  	mov	w9, #128
   800a0: 08 0d 1c 32  	orr	w8, w8, #0xf0
   800a4: 0a 10 80 52  	mov	w10, #128
   800a8: 0b 10 80 52  	mov	w11, #128
   800ac: 29 44 0c 33  	bfxil	w9, w1, #12, #6
   800b0: 2b 2c 06 33  	bfxil	w11, w1, #6, #6
   800b4: 2a 14 00 33  	bfxil	w10, w1, #0, #6
   800b8: e8 33 00 39  	strb	w8, [sp, #12]
   800bc: 88 00 80 52  	mov	w8, #4
   800c0: e9 37 00 39  	strb	w9, [sp, #13]
   800c4: eb 3b 00 39  	strb	w11, [sp, #14]
   800c8: ea 3f 00 39  	strb	w10, [sp, #15]
   800cc: e0 33 00 91  	add	x0, sp, #12
   800d0: e1 03 08 aa  	mov	x1, x8
   800d4: 4a 00 00 94  	bl	0x801fc <_ZN62_$LT$baremetal_pi..uart..Uart1$u20$as$u20$core..fmt..Write$GT$9write_str17h69bd90f9652944e6E>
   800d8: e0 03 1f 2a  	mov	w0, wzr
   800dc: fe 07 41 f8  	ldr	x30, [sp], #16
   800e0: c0 03 5f d6  	ret

00000000000800e4 <_ZN50_$LT$$RF$mut$u20$W$u20$as$u20$core..fmt..Write$GT$9write_fmt17h2a1b75d94afdf17fE>:
   800e4: ff 03 01 d1  	sub	sp, sp, #64
   800e8: 08 00 40 f9  	ldr	x8, [x0]
   800ec: e0 03 00 91  	mov	x0, sp
   800f0: 02 06 80 52  	mov	w2, #48
   800f4: fe 23 03 a9  	stp	x30, x8, [sp, #48]
   800f8: 3c 0c 00 94  	bl	0x831e8 <memcpy>
   800fc: 01 00 00 f0  	adrp	x1, 0x83000 <_ZN50_$LT$$RF$mut$u20$W$u20$as$u20$core..fmt..Write$GT$9write_fmt17h2a1b75d94afdf17fE+0x24>
   80100: e0 e3 00 91  	add	x0, sp, #56
   80104: 21 a0 0a 91  	add	x1, x1, #680
   80108: e2 03 00 91  	mov	x2, sp
   8010c: 2e 04 00 94  	bl	0x811c4 <_ZN4core3fmt5write17h4089dd81629a8d2eE>
   80110: fe 1b 40 f9  	ldr	x30, [sp, #48]
   80114: ff 03 01 91  	add	sp, sp, #64
   80118: c0 03 5f d6  	ret

000000000008011c <_ZN50_$LT$$RF$mut$u20$W$u20$as$u20$core..fmt..Write$GT$9write_str17h7a6d63377d3f330bE>:
   8011c: fe 0f 1f f8  	str	x30, [sp, #-16]!
   80120: e0 03 01 aa  	mov	x0, x1
   80124: e1 03 02 aa  	mov	x1, x2
   80128: 35 00 00 94  	bl	0x801fc <_ZN62_$LT$baremetal_pi..uart..Uart1$u20$as$u20$core..fmt..Write$GT$9write_str17h69bd90f9652944e6E>
   8012c: e0 03 1f 2a  	mov	w0, wzr
   80130: fe 07 41 f8  	ldr	x30, [sp], #16
   80134: c0 03 5f d6  	ret

0000000000080138 <_ZN12baremetal_pi4gpio4Gpio9configure17hcdf94eea7281c927E>:
   80138: a8 99 99 52  	mov	w8, #52429
   8013c: 09 1c 00 12  	and	w9, w0, #0xff
   80140: 88 99 b9 72  	movk	w8, #52428, lsl #16
   80144: 2a 00 80 52  	mov	w10, #1
   80148: 4b 00 80 52  	mov	w11, #2
   8014c: 28 7d a8 9b  	umull	x8, w9, w8
   80150: 29 01 80 12  	mov	w9, #-10
   80154: 08 fd 63 d3  	lsr	x8, x8, #35
   80158: 09 01 09 1b  	madd	w9, w8, w9, w0
   8015c: 29 05 09 0b  	add	w9, w9, w9, lsl #1
   80160: 29 1d 00 12  	and	w9, w9, #0xff
   80164: 2d 0d 00 11  	add	w13, w9, #3
   80168: ec 03 09 2a  	mov	w12, w9
   8016c: bf 01 00 72  	tst	w13, #0x1
   80170: af 7d 01 53  	lsr	w15, w13, #1
   80174: 6e 15 9f 1a  	csinc	w14, w11, wzr, ne
   80178: 6b 7d 0b 1b  	mul	w11, w11, w11
   8017c: bf 0d 00 71  	cmp	w13, #3
   80180: ed 03 0f 2a  	mov	w13, w15
   80184: ca 7d 0a 1b  	mul	w10, w14, w10
   80188: 28 ff ff 54  	b.hi	0x8016c <_ZN12baremetal_pi4gpio4Gpio9configure17hcdf94eea7281c927E+0x34>
   8018c: 4d 00 80 52  	mov	w13, #2
   80190: 2e 00 80 52  	mov	w14, #1
   80194: ec 01 00 34  	cbz	w12, 0x801d0 <_ZN12baremetal_pi4gpio4Gpio9configure17hcdf94eea7281c927E+0x98>
   80198: 4f 00 80 52  	mov	w15, #2
   8019c: 9f 05 00 71  	cmp	w12, #1
   801a0: 60 01 00 54  	b.eq	0x801cc <_ZN12baremetal_pi4gpio4Gpio9configure17hcdf94eea7281c927E+0x94>
   801a4: 2e 00 80 52  	mov	w14, #1
   801a8: 4f 00 80 52  	mov	w15, #2
   801ac: 9f 01 00 72  	tst	w12, #0x1
   801b0: 91 7d 01 53  	lsr	w17, w12, #1
   801b4: f0 15 9f 1a  	csinc	w16, w15, wzr, ne
   801b8: ef 7d 0f 1b  	mul	w15, w15, w15
   801bc: 9f 0d 00 71  	cmp	w12, #3
   801c0: ec 03 11 2a  	mov	w12, w17
   801c4: 0e 7e 0e 1b  	mul	w14, w16, w14
   801c8: 28 ff ff 54  	b.hi	0x801ac <_ZN12baremetal_pi4gpio4Gpio9configure17hcdf94eea7281c927E+0x74>
   801cc: ee 7d 0e 1b  	mul	w14, w15, w14
   801d0: 0c e4 a7 52  	mov	w12, #1059061760
   801d4: a9 21 c9 1a  	lsl	w9, w13, w9
   801d8: 0c 11 7e b3  	bfi	x12, x8, #2, #5
   801dc: 68 7d 0a 1b  	mul	w8, w11, w10
   801e0: 8a 01 40 b9  	ldr	w10, [x12]
   801e4: e8 03 28 2a  	mvn	w8, w8
   801e8: c8 01 08 0b  	add	w8, w14, w8
   801ec: 48 01 08 0a  	and	w8, w10, w8
   801f0: 08 01 09 2a  	orr	w8, w8, w9
   801f4: 88 01 00 b9  	str	w8, [x12]
   801f8: c0 03 5f d6  	ret

00000000000801fc <_ZN62_$LT$baremetal_pi..uart..Uart1$u20$as$u20$core..fmt..Write$GT$9write_str17h69bd90f9652944e6E>:
   801fc: e8 03 00 aa  	mov	x8, x0
   80200: 8a 0c 8a 52  	mov	w10, #20580
   80204: 0d 00 00 f0  	adrp	x13, 0x83000 <_ZN62_$LT$baremetal_pi..uart..Uart1$u20$as$u20$core..fmt..Write$GT$9write_str17h69bd90f9652944e6E+0x14>
   80208: e0 03 1f aa  	mov	x0, xzr
   8020c: ef 03 1f aa  	mov	x15, xzr
   80210: e9 03 1f aa  	mov	x9, xzr
   80214: 2a e4 a7 72  	movk	w10, #16161, lsl #16
   80218: 0b 01 01 8b  	add	x11, x8, x1
   8021c: 6c 00 80 52  	mov	w12, #3
   80220: ee 03 08 aa  	mov	x14, x8
   80224: ad 61 0b 91  	add	x13, x13, #728
   80228: 29 01 00 b5  	cbnz	x9, 0x8024c <_ZN62_$LT$baremetal_pi..uart..Uart1$u20$as$u20$core..fmt..Write$GT$9write_str17h69bd90f9652944e6E+0x50>
   8022c: 13 00 00 14  	b	0x80278 <_ZN62_$LT$baremetal_pi..uart..Uart1$u20$as$u20$core..fmt..Write$GT$9write_str17h69bd90f9652944e6E+0x7c>
   80230: 51 00 80 52  	mov	w17, #2
   80234: e9 03 0d aa  	mov	x9, x13
   80238: 0e 00 0e cb  	sub	x14, x0, x14
   8023c: c0 01 0f 8b  	add	x0, x14, x15
   80240: 2f 01 11 8b  	add	x15, x9, x17
   80244: ee 03 10 aa  	mov	x14, x16
   80248: 89 01 00 b4  	cbz	x9, 0x80278 <_ZN62_$LT$baremetal_pi..uart..Uart1$u20$as$u20$core..fmt..Write$GT$9write_str17h69bd90f9652944e6E+0x7c>
   8024c: 3f 01 0f eb  	cmp	x9, x15
   80250: 61 00 00 54  	b.ne	0x8025c <_ZN62_$LT$baremetal_pi..uart..Uart1$u20$as$u20$core..fmt..Write$GT$9write_str17h69bd90f9652944e6E+0x60>
   80254: 09 00 00 14  	b	0x80278 <_ZN62_$LT$baremetal_pi..uart..Uart1$u20$as$u20$core..fmt..Write$GT$9write_str17h69bd90f9652944e6E+0x7c>
   80258: df 3f 03 d5  	isb
   8025c: 50 01 40 b9  	ldr	w16, [x10]
   80260: d0 ff 0f 36  	tbz	w16, #1, 0x80258 <_ZN62_$LT$baremetal_pi..uart..Uart1$u20$as$u20$core..fmt..Write$GT$9write_str17h69bd90f9652944e6E+0x5c>
   80264: 31 01 40 39  	ldrb	w17, [x9]
   80268: 30 05 00 91  	add	x16, x9, #1
   8026c: e9 03 10 aa  	mov	x9, x16
   80270: 51 c1 1d b8  	stur	w17, [x10, #-36]
   80274: c9 fe ff b5  	cbnz	x9, 0x8024c <_ZN62_$LT$baremetal_pi..uart..Uart1$u20$as$u20$core..fmt..Write$GT$9write_str17h69bd90f9652944e6E+0x50>
   80278: 6e 09 00 b4  	cbz	x14, 0x803a4 <_ZN62_$LT$baremetal_pi..uart..Uart1$u20$as$u20$core..fmt..Write$GT$9write_str17h69bd90f9652944e6E+0x1a8>
   8027c: 7f 01 0e eb  	cmp	x11, x14
   80280: 20 09 00 54  	b.eq	0x803a4 <_ZN62_$LT$baremetal_pi..uart..Uart1$u20$as$u20$core..fmt..Write$GT$9write_str17h69bd90f9652944e6E+0x1a8>
   80284: ef 03 0e aa  	mov	x15, x14
   80288: e9 15 c0 38  	ldrsb	w9, [x15], #1
   8028c: 31 1d 00 12  	and	w17, w9, #0xff
   80290: 89 00 f8 37  	tbnz	w9, #31, 0x802a0 <_ZN62_$LT$baremetal_pi..uart..Uart1$u20$as$u20$core..fmt..Write$GT$9write_str17h69bd90f9652944e6E+0xa4>
   80294: f0 03 0f aa  	mov	x16, x15
   80298: e9 03 11 2a  	mov	w9, w17
   8029c: 2f 00 00 14  	b	0x80358 <_ZN62_$LT$baremetal_pi..uart..Uart1$u20$as$u20$core..fmt..Write$GT$9write_str17h69bd90f9652944e6E+0x15c>
   802a0: ff 01 0b eb  	cmp	x15, x11
   802a4: c0 02 00 54  	b.eq	0x802fc <_ZN62_$LT$baremetal_pi..uart..Uart1$u20$as$u20$core..fmt..Write$GT$9write_str17h69bd90f9652944e6E+0x100>
   802a8: c9 05 40 39  	ldrb	w9, [x14, #1]
   802ac: d0 09 00 91  	add	x16, x14, #2
   802b0: ef 03 10 aa  	mov	x15, x16
   802b4: 29 15 00 12  	and	w9, w9, #0x3f
   802b8: 32 12 00 12  	and	w18, w17, #0x1f
   802bc: 3f 7e 03 71  	cmp	w17, #223
   802c0: a9 02 00 54  	b.ls	0x80314 <_ZN62_$LT$baremetal_pi..uart..Uart1$u20$as$u20$core..fmt..Write$GT$9write_str17h69bd90f9652944e6E+0x118>
   802c4: ff 01 0b eb  	cmp	x15, x11
   802c8: a0 02 00 54  	b.eq	0x8031c <_ZN62_$LT$baremetal_pi..uart..Uart1$u20$as$u20$core..fmt..Write$GT$9write_str17h69bd90f9652944e6E+0x120>
   802cc: e2 15 40 38  	ldrb	w2, [x15], #1
   802d0: f0 03 0f aa  	mov	x16, x15
   802d4: 42 14 00 12  	and	w2, w2, #0x3f
   802d8: 22 15 1a 33  	bfi	w2, w9, #6, #6
   802dc: 3f c2 03 71  	cmp	w17, #240
   802e0: 83 02 00 54  	b.lo	0x80330 <_ZN62_$LT$baremetal_pi..uart..Uart1$u20$as$u20$core..fmt..Write$GT$9write_str17h69bd90f9652944e6E+0x134>
   802e4: ff 01 0b eb  	cmp	x15, x11
   802e8: a0 02 00 54  	b.eq	0x8033c <_ZN62_$LT$baremetal_pi..uart..Uart1$u20$as$u20$core..fmt..Write$GT$9write_str17h69bd90f9652944e6E+0x140>
   802ec: e9 15 40 38  	ldrb	w9, [x15], #1
   802f0: f0 03 0f aa  	mov	x16, x15
   802f4: 29 15 00 12  	and	w9, w9, #0x3f
   802f8: 13 00 00 14  	b	0x80344 <_ZN62_$LT$baremetal_pi..uart..Uart1$u20$as$u20$core..fmt..Write$GT$9write_str17h69bd90f9652944e6E+0x148>
   802fc: e9 03 1f 2a  	mov	w9, wzr
   80300: f0 03 0f aa  	mov	x16, x15
   80304: ef 03 0b aa  	mov	x15, x11
   80308: 32 12 00 12  	and	w18, w17, #0x1f
   8030c: 3f 7e 03 71  	cmp	w17, #223
   80310: a8 fd ff 54  	b.hi	0x802c4 <_ZN62_$LT$baremetal_pi..uart..Uart1$u20$as$u20$core..fmt..Write$GT$9write_str17h69bd90f9652944e6E+0xc8>
   80314: 49 12 1a 33  	bfi	w9, w18, #6, #5
   80318: 10 00 00 14  	b	0x80358 <_ZN62_$LT$baremetal_pi..uart..Uart1$u20$as$u20$core..fmt..Write$GT$9write_str17h69bd90f9652944e6E+0x15c>
   8031c: e2 03 1f 2a  	mov	w2, wzr
   80320: ef 03 0b aa  	mov	x15, x11
   80324: 22 15 1a 33  	bfi	w2, w9, #6, #6
   80328: 3f c2 03 71  	cmp	w17, #240
   8032c: c2 fd ff 54  	b.hs	0x802e4 <_ZN62_$LT$baremetal_pi..uart..Uart1$u20$as$u20$core..fmt..Write$GT$9write_str17h69bd90f9652944e6E+0xe8>
   80330: 42 12 14 33  	bfi	w2, w18, #12, #5
   80334: e9 03 02 2a  	mov	w9, w2
   80338: 08 00 00 14  	b	0x80358 <_ZN62_$LT$baremetal_pi..uart..Uart1$u20$as$u20$core..fmt..Write$GT$9write_str17h69bd90f9652944e6E+0x15c>
   8033c: e9 03 1f 2a  	mov	w9, wzr
   80340: ef 03 0b aa  	mov	x15, x11
   80344: 51 0a 0e 53  	ubfiz	w17, w18, #18, #3
   80348: 51 2c 1a 33  	bfi	w17, w2, #6, #12
   8034c: 29 02 09 2a  	orr	w9, w17, w9
   80350: 3f 41 44 71  	cmp	w9, #272, lsl #12
   80354: 80 02 00 54  	b.eq	0x803a4 <_ZN62_$LT$baremetal_pi..uart..Uart1$u20$as$u20$core..fmt..Write$GT$9write_str17h69bd90f9652944e6E+0x1a8>
   80358: 3f 29 00 71  	cmp	w9, #10
   8035c: a0 f6 ff 54  	b.eq	0x80230 <_ZN62_$LT$baremetal_pi..uart..Uart1$u20$as$u20$core..fmt..Write$GT$9write_str17h69bd90f9652944e6E+0x34>
   80360: 3f 01 02 71  	cmp	w9, #128
   80364: 62 00 00 54  	b.hs	0x80370 <_ZN62_$LT$baremetal_pi..uart..Uart1$u20$as$u20$core..fmt..Write$GT$9write_str17h69bd90f9652944e6E+0x174>
   80368: 31 00 80 52  	mov	w17, #1
   8036c: 07 00 00 14  	b	0x80388 <_ZN62_$LT$baremetal_pi..uart..Uart1$u20$as$u20$core..fmt..Write$GT$9write_str17h69bd90f9652944e6E+0x18c>
   80370: 3f 01 20 71  	cmp	w9, #2048
   80374: 62 00 00 54  	b.hs	0x80380 <_ZN62_$LT$baremetal_pi..uart..Uart1$u20$as$u20$core..fmt..Write$GT$9write_str17h69bd90f9652944e6E+0x184>
   80378: 51 00 80 52  	mov	w17, #2
   8037c: 03 00 00 14  	b	0x80388 <_ZN62_$LT$baremetal_pi..uart..Uart1$u20$as$u20$core..fmt..Write$GT$9write_str17h69bd90f9652944e6E+0x18c>
   80380: 3f 41 40 71  	cmp	w9, #16, lsl #12
   80384: 91 35 8c 9a  	cinc	x17, x12, hs
   80388: 29 02 00 ab  	adds	x9, x17, x0
   8038c: c2 01 00 54  	b.hs	0x803c4 <_ZN62_$LT$baremetal_pi..uart..Uart1$u20$as$u20$core..fmt..Write$GT$9write_str17h69bd90f9652944e6E+0x1c8>
   80390: 3f 01 01 eb  	cmp	x9, x1
   80394: e8 00 00 54  	b.hi	0x803b0 <_ZN62_$LT$baremetal_pi..uart..Uart1$u20$as$u20$core..fmt..Write$GT$9write_str17h69bd90f9652944e6E+0x1b4>
   80398: 09 01 00 8b  	add	x9, x8, x0
   8039c: a7 ff ff 17  	b	0x80238 <_ZN62_$LT$baremetal_pi..uart..Uart1$u20$as$u20$core..fmt..Write$GT$9write_str17h69bd90f9652944e6E+0x3c>
   803a0: df 3f 03 d5  	isb
   803a4: 48 01 40 b9  	ldr	w8, [x10]
   803a8: c8 ff 1f 36  	tbz	w8, #3, 0x803a0 <_ZN62_$LT$baremetal_pi..uart..Uart1$u20$as$u20$core..fmt..Write$GT$9write_str17h69bd90f9652944e6E+0x1a4>
   803ac: c0 03 5f d6  	ret
   803b0: 02 00 00 f0  	adrp	x2, 0x83000 <_ZN62_$LT$baremetal_pi..uart..Uart1$u20$as$u20$core..fmt..Write$GT$9write_str17h69bd90f9652944e6E+0x1c0>
   803b4: e0 03 09 aa  	mov	x0, x9
   803b8: 42 a0 0b 91  	add	x2, x2, #744
   803bc: 57 02 00 94  	bl	0x80d18 <_ZN4core5slice5index24slice_end_index_len_fail17h827cf37c6cc32b14E>
   803c0: 20 00 20 d4  	brk	#0x1
   803c4: 02 00 00 f0  	adrp	x2, 0x83000 <_ZN62_$LT$baremetal_pi..uart..Uart1$u20$as$u20$core..fmt..Write$GT$9write_str17h69bd90f9652944e6E+0x1d4>
   803c8: e1 03 09 aa  	mov	x1, x9
   803cc: 42 a0 0b 91  	add	x2, x2, #744
   803d0: fb 03 00 94  	bl	0x813bc <_ZN4core5slice5index22slice_index_order_fail17he71d7140076fff6eE>
   803d4: 20 00 20 d4  	brk	#0x1

00000000000803d8 <_ZN12baremetal_pi4main17h9878c3843b2016d2E>:
   803d8: ff c3 01 d1  	sub	sp, sp, #112
   803dc: fe 1b 00 f9  	str	x30, [sp, #48]
   803e0: f8 5f 04 a9  	stp	x24, x23, [sp, #64]
   803e4: f6 57 05 a9  	stp	x22, x21, [sp, #80]
   803e8: f4 4f 06 a9  	stp	x20, x19, [sp, #96]
   803ec: c0 01 80 52  	mov	w0, #14
   803f0: 14 0d 8a 52  	mov	w20, #20584
   803f4: 34 e4 a7 72  	movk	w20, #16161, lsl #16
   803f8: 50 ff ff 97  	bl	0x80138 <_ZN12baremetal_pi4gpio4Gpio9configure17hcdf94eea7281c927E>
   803fc: e0 01 80 52  	mov	w0, #15
   80400: 4e ff ff 97  	bl	0x80138 <_ZN12baremetal_pi4gpio4Gpio9configure17hcdf94eea7281c927E>
   80404: 89 02 40 b9  	ldr	w9, [x20]
   80408: c8 21 80 52  	mov	w8, #270
   8040c: 6a 00 80 52  	mov	w10, #3
   80410: 09 3d 00 33  	bfxil	w9, w8, #0, #16
   80414: c8 12 80 52  	mov	w8, #150
   80418: 89 02 00 b9  	str	w9, [x20]
   8041c: 8a 42 1e b8  	stur	w10, [x20, #-28]
   80420: 1f 20 03 d5  	nop
   80424: 08 05 00 f1  	subs	x8, x8, #1
   80428: c1 ff ff 54  	b.ne	0x80420 <_ZN12baremetal_pi4main17h9878c3843b2016d2E+0x48>
   8042c: 68 00 80 52  	mov	w8, #3
   80430: 93 03 80 52  	mov	w19, #28
   80434: 13 e4 a7 72  	movk	w19, #16160, lsl #16
   80438: 16 00 00 f0  	adrp	x22, 0x83000 <_ZN12baremetal_pi4main17h9878c3843b2016d2E+0x6c>
   8043c: 17 00 00 f0  	adrp	x23, 0x83000 <_ZN12baremetal_pi4main17h9878c3843b2016d2E+0x70>
   80440: 01 00 00 f0  	adrp	x1, 0x83000 <_ZN12baremetal_pi4main17h9878c3843b2016d2E+0x74>
   80444: 88 82 1f b8  	stur	w8, [x20, #-8]
   80448: d6 a2 0c 91  	add	x22, x22, #808
   8044c: 68 c2 5e b8  	ldur	w8, [x19, #-20]
   80450: 29 00 80 52  	mov	w9, #1
   80454: f5 03 00 91  	mov	x21, sp
   80458: f7 e2 11 91  	add	x23, x23, #1144
   8045c: 21 a0 0a 91  	add	x1, x1, #680
   80460: e0 e3 00 91  	add	x0, sp, #56
   80464: e2 03 00 91  	mov	x2, sp
   80468: 08 71 02 12  	and	w8, w8, #0xc7ffffff
   8046c: 08 01 05 32  	orr	w8, w8, #0x8000000
   80470: 68 c2 1e b8  	stur	w8, [x19, #-20]
   80474: f6 27 00 a9  	stp	x22, x9, [sp]
   80478: f5 1f 00 f9  	str	x21, [sp, #56]
   8047c: ff 7f 01 a9  	stp	xzr, xzr, [sp, #16]
   80480: f7 7f 02 a9  	stp	x23, xzr, [sp, #32]
   80484: 50 03 00 94  	bl	0x811c4 <_ZN4core3fmt5write17h4089dd81629a8d2eE>
   80488: c0 0c 00 37  	tbnz	w0, #0, 0x80620 <_ZN12baremetal_pi4main17h9878c3843b2016d2E+0x248>
   8048c: 14 48 88 52  	mov	w20, #16960
   80490: 09 00 a4 52  	mov	w9, #536870912
   80494: f4 01 a0 72  	movk	w20, #15, lsl #16
   80498: b8 42 00 91  	add	x24, x21, #16
   8049c: e8 03 14 aa  	mov	x8, x20
   804a0: 69 02 00 b9  	str	w9, [x19]
   804a4: 1f 20 03 d5  	nop
   804a8: 08 05 00 f1  	subs	x8, x8, #1
   804ac: c1 ff ff 54  	b.ne	0x804a4 <_ZN12baremetal_pi4main17h9878c3843b2016d2E+0xcc>
   804b0: 15 20 81 52  	mov	w21, #2304
   804b4: 09 00 a4 52  	mov	w9, #536870912
   804b8: b5 07 a0 72  	movk	w21, #61, lsl #16
   804bc: e8 03 15 aa  	mov	x8, x21
   804c0: 69 0e 00 b9  	str	w9, [x19, #12]
   804c4: 1f 20 03 d5  	nop
   804c8: 08 05 00 f1  	subs	x8, x8, #1
   804cc: c1 ff ff 54  	b.ne	0x804c4 <_ZN12baremetal_pi4main17h9878c3843b2016d2E+0xec>
   804d0: 01 00 00 f0  	adrp	x1, 0x83000 <_ZN12baremetal_pi4main17h9878c3843b2016d2E+0x104>
   804d4: e8 03 00 91  	mov	x8, sp
   804d8: 29 00 80 52  	mov	w9, #1
   804dc: 21 a0 0a 91  	add	x1, x1, #680
   804e0: e0 e3 00 91  	add	x0, sp, #56
   804e4: e2 03 00 91  	mov	x2, sp
   804e8: e8 1f 00 f9  	str	x8, [sp, #56]
   804ec: f6 27 00 a9  	stp	x22, x9, [sp]
   804f0: 1f 7f 00 a9  	stp	xzr, xzr, [x24]
   804f4: f7 7f 02 a9  	stp	x23, xzr, [sp, #32]
   804f8: 33 03 00 94  	bl	0x811c4 <_ZN4core3fmt5write17h4089dd81629a8d2eE>
   804fc: 20 09 00 35  	cbnz	w0, 0x80620 <_ZN12baremetal_pi4main17h9878c3843b2016d2E+0x248>
   80500: 09 00 a4 52  	mov	w9, #536870912
   80504: e8 03 14 aa  	mov	x8, x20
   80508: 69 02 00 b9  	str	w9, [x19]
   8050c: 1f 20 03 d5  	nop
   80510: 08 05 00 f1  	subs	x8, x8, #1
   80514: c1 ff ff 54  	b.ne	0x8050c <_ZN12baremetal_pi4main17h9878c3843b2016d2E+0x134>
   80518: 09 00 a4 52  	mov	w9, #536870912
   8051c: e8 03 15 aa  	mov	x8, x21
   80520: 69 0e 00 b9  	str	w9, [x19, #12]
   80524: 1f 20 03 d5  	nop
   80528: 08 05 00 f1  	subs	x8, x8, #1
   8052c: c1 ff ff 54  	b.ne	0x80524 <_ZN12baremetal_pi4main17h9878c3843b2016d2E+0x14c>
   80530: 01 00 00 f0  	adrp	x1, 0x83000 <_ZN12baremetal_pi4main17h9878c3843b2016d2E+0x164>
   80534: e8 03 00 91  	mov	x8, sp
   80538: 29 00 80 52  	mov	w9, #1
   8053c: 21 a0 0a 91  	add	x1, x1, #680
   80540: e0 e3 00 91  	add	x0, sp, #56
   80544: e2 03 00 91  	mov	x2, sp
   80548: e8 1f 00 f9  	str	x8, [sp, #56]
   8054c: f6 27 00 a9  	stp	x22, x9, [sp]
   80550: 1f 7f 00 a9  	stp	xzr, xzr, [x24]
   80554: f7 7f 02 a9  	stp	x23, xzr, [sp, #32]
   80558: 1b 03 00 94  	bl	0x811c4 <_ZN4core3fmt5write17h4089dd81629a8d2eE>
   8055c: 20 06 00 37  	tbnz	w0, #0, 0x80620 <_ZN12baremetal_pi4main17h9878c3843b2016d2E+0x248>
   80560: 09 00 a4 52  	mov	w9, #536870912
   80564: e8 03 14 aa  	mov	x8, x20
   80568: 69 02 00 b9  	str	w9, [x19]
   8056c: 1f 20 03 d5  	nop
   80570: 08 05 00 f1  	subs	x8, x8, #1
   80574: c1 ff ff 54  	b.ne	0x8056c <_ZN12baremetal_pi4main17h9878c3843b2016d2E+0x194>
   80578: 09 00 a4 52  	mov	w9, #536870912
   8057c: e8 03 15 aa  	mov	x8, x21
   80580: 69 0e 00 b9  	str	w9, [x19, #12]
   80584: 1f 20 03 d5  	nop
   80588: 08 05 00 f1  	subs	x8, x8, #1
   8058c: c1 ff ff 54  	b.ne	0x80584 <_ZN12baremetal_pi4main17h9878c3843b2016d2E+0x1ac>
   80590: 01 00 00 f0  	adrp	x1, 0x83000 <_ZN12baremetal_pi4main17h9878c3843b2016d2E+0x1c4>
   80594: e8 03 00 91  	mov	x8, sp
   80598: 29 00 80 52  	mov	w9, #1
   8059c: 21 a0 0a 91  	add	x1, x1, #680
   805a0: e0 e3 00 91  	add	x0, sp, #56
   805a4: e2 03 00 91  	mov	x2, sp
   805a8: e8 1f 00 f9  	str	x8, [sp, #56]
   805ac: f6 27 00 a9  	stp	x22, x9, [sp]
   805b0: 1f 7f 00 a9  	stp	xzr, xzr, [x24]
   805b4: f7 7f 02 a9  	stp	x23, xzr, [sp, #32]
   805b8: 03 03 00 94  	bl	0x811c4 <_ZN4core3fmt5write17h4089dd81629a8d2eE>
   805bc: 20 03 00 37  	tbnz	w0, #0, 0x80620 <_ZN12baremetal_pi4main17h9878c3843b2016d2E+0x248>
   805c0: 09 00 a4 52  	mov	w9, #536870912
   805c4: e8 03 14 aa  	mov	x8, x20
   805c8: 69 02 00 b9  	str	w9, [x19]
   805cc: 1f 20 03 d5  	nop
   805d0: 08 05 00 f1  	subs	x8, x8, #1
   805d4: c1 ff ff 54  	b.ne	0x805cc <_ZN12baremetal_pi4main17h9878c3843b2016d2E+0x1f4>
   805d8: 09 00 a4 52  	mov	w9, #536870912
   805dc: e8 03 15 aa  	mov	x8, x21
   805e0: 69 0e 00 b9  	str	w9, [x19, #12]
   805e4: 1f 20 03 d5  	nop
   805e8: 08 05 00 f1  	subs	x8, x8, #1
   805ec: c1 ff ff 54  	b.ne	0x805e4 <_ZN12baremetal_pi4main17h9878c3843b2016d2E+0x20c>
   805f0: 01 00 00 f0  	adrp	x1, 0x83000 <_ZN12baremetal_pi4main17h9878c3843b2016d2E+0x224>
   805f4: e8 03 00 91  	mov	x8, sp
   805f8: 29 00 80 52  	mov	w9, #1
   805fc: 21 a0 0a 91  	add	x1, x1, #680
   80600: e0 e3 00 91  	add	x0, sp, #56
   80604: e2 03 00 91  	mov	x2, sp
   80608: e8 1f 00 f9  	str	x8, [sp, #56]
   8060c: f6 27 00 a9  	stp	x22, x9, [sp]
   80610: 1f 7f 00 a9  	stp	xzr, xzr, [x24]
   80614: f7 7f 02 a9  	stp	x23, xzr, [sp, #32]
   80618: eb 02 00 94  	bl	0x811c4 <_ZN4core3fmt5write17h4089dd81629a8d2eE>
   8061c: 40 01 00 36  	tbz	w0, #0, 0x80644 <_ZN12baremetal_pi4main17h9878c3843b2016d2E+0x26c>
   80620: 00 00 00 f0  	adrp	x0, 0x83000 <_ZN12baremetal_pi4main17h9878c3843b2016d2E+0x254>
   80624: 02 00 00 f0  	adrp	x2, 0x83000 <_ZN12baremetal_pi4main17h9878c3843b2016d2E+0x258>
   80628: 03 00 00 f0  	adrp	x3, 0x83000 <_ZN12baremetal_pi4main17h9878c3843b2016d2E+0x25c>
   8062c: 00 40 0f 91  	add	x0, x0, #976
   80630: 42 e0 0c 91  	add	x2, x2, #824
   80634: 63 60 0d 91  	add	x3, x3, #856
   80638: e1 03 00 91  	mov	x1, sp
   8063c: 72 03 00 94  	bl	0x81404 <_ZN4core6result13unwrap_failed17h514395d9b84745f5E>
   80640: 20 00 20 d4  	brk	#0x1
   80644: 08 00 a4 52  	mov	w8, #536870912
   80648: 68 02 00 b9  	str	w8, [x19]
   8064c: 1f 20 03 d5  	nop
   80650: 94 06 00 f1  	subs	x20, x20, #1
   80654: c1 ff ff 54  	b.ne	0x8064c <_ZN12baremetal_pi4main17h9878c3843b2016d2E+0x274>
   80658: 08 00 a4 52  	mov	w8, #536870912
   8065c: 68 0e 00 b9  	str	w8, [x19, #12]
   80660: 1f 20 03 d5  	nop
   80664: b5 06 00 f1  	subs	x21, x21, #1
   80668: c1 ff ff 54  	b.ne	0x80660 <_ZN12baremetal_pi4main17h9878c3843b2016d2E+0x288>
   8066c: 00 00 00 f0  	adrp	x0, 0x83000 <_ZN12baremetal_pi4main17h9878c3843b2016d2E+0x2a0>
   80670: 02 00 00 f0  	adrp	x2, 0x83000 <_ZN12baremetal_pi4main17h9878c3843b2016d2E+0x2a4>
   80674: 00 00 0c 91  	add	x0, x0, #768
   80678: 42 40 0c 91  	add	x2, x2, #784
   8067c: e1 01 80 52  	mov	w1, #15
   80680: b8 01 00 94  	bl	0x80d60 <_ZN4core9panicking5panic17ha7217054e020f4cfE>
   80684: 20 00 20 d4  	brk	#0x1

0000000000080688 <_ZN4core3ptr37drop_in_place$LT$core..fmt..Error$GT$17h2db5be86b4b387dbE>:
   80688: c0 03 5f d6  	ret

000000000008068c <rust_begin_unwind>:
   8068c: ff 83 01 d1  	sub	sp, sp, #96
   80690: fe 4f 05 a9  	stp	x30, x19, [sp, #80]
   80694: e0 03 00 f9  	str	x0, [sp]
   80698: c0 01 80 52  	mov	w0, #14
   8069c: 13 0d 8a 52  	mov	w19, #20584
   806a0: 33 e4 a7 72  	movk	w19, #16161, lsl #16
   806a4: a5 fe ff 97  	bl	0x80138 <_ZN12baremetal_pi4gpio4Gpio9configure17hcdf94eea7281c927E>
   806a8: e0 01 80 52  	mov	w0, #15
   806ac: a3 fe ff 97  	bl	0x80138 <_ZN12baremetal_pi4gpio4Gpio9configure17hcdf94eea7281c927E>
   806b0: 69 02 40 b9  	ldr	w9, [x19]
   806b4: c8 21 80 52  	mov	w8, #270
   806b8: 6a 00 80 52  	mov	w10, #3
   806bc: 09 3d 00 33  	bfxil	w9, w8, #0, #16
   806c0: c8 12 80 52  	mov	w8, #150
   806c4: 69 02 00 b9  	str	w9, [x19]
   806c8: 6a 42 1e b8  	stur	w10, [x19, #-28]
   806cc: 1f 20 03 d5  	nop
   806d0: 08 05 00 f1  	subs	x8, x8, #1
   806d4: c1 ff ff 54  	b.ne	0x806cc <rust_begin_unwind+0x40>
   806d8: 68 00 80 52  	mov	w8, #3
   806dc: e9 03 00 91  	mov	x9, sp
   806e0: ea 83 00 91  	add	x10, sp, #32
   806e4: 01 00 00 f0  	adrp	x1, 0x83000 <rust_begin_unwind+0x64>
   806e8: 21 a0 0a 91  	add	x1, x1, #680
   806ec: e0 63 00 91  	add	x0, sp, #24
   806f0: 68 82 1f b8  	stur	w8, [x19, #-8]
   806f4: 08 00 00 90  	adrp	x8, 0x80000 <rust_begin_unwind+0x68>
   806f8: 08 31 1e 91  	add	x8, x8, #1932
   806fc: e2 83 00 91  	add	x2, sp, #32
   80700: e9 a3 00 a9  	stp	x9, x8, [sp, #8]
   80704: 08 00 00 f0  	adrp	x8, 0x83000 <rust_begin_unwind+0x84>
   80708: 08 21 0e 91  	add	x8, x8, #904
   8070c: 29 00 80 52  	mov	w9, #1
   80710: ea a3 01 a9  	stp	x10, x8, [sp, #24]
   80714: 0a 00 00 f0  	adrp	x10, 0x83000 <rust_begin_unwind+0x94>
   80718: 4a 61 0e 91  	add	x10, x10, #920
   8071c: e8 23 00 91  	add	x8, sp, #8
   80720: e9 27 00 f9  	str	x9, [sp, #72]
   80724: e9 ab 02 a9  	stp	x9, x10, [sp, #40]
   80728: e9 a3 03 a9  	stp	x9, x8, [sp, #56]
   8072c: a6 02 00 94  	bl	0x811c4 <_ZN4core3fmt5write17h4089dd81629a8d2eE>
   80730: 60 00 00 35  	cbnz	w0, 0x8073c <rust_begin_unwind+0xb0>
   80734: 5f 20 03 d5  	wfe
   80738: ff ff ff 17  	b	0x80734 <rust_begin_unwind+0xa8>
   8073c: 00 00 00 f0  	adrp	x0, 0x83000 <rust_begin_unwind+0xbc>
   80740: 02 00 00 f0  	adrp	x2, 0x83000 <rust_begin_unwind+0xc0>
   80744: 03 00 00 f0  	adrp	x3, 0x83000 <rust_begin_unwind+0xc4>
   80748: 00 40 0f 91  	add	x0, x0, #976
   8074c: 42 00 10 91  	add	x2, x2, #1024
   80750: 63 80 10 91  	add	x3, x3, #1056
   80754: e1 83 00 91  	add	x1, sp, #32
   80758: 2b 03 00 94  	bl	0x81404 <_ZN4core6result13unwrap_failed17h514395d9b84745f5E>
   8075c: 20 00 20 d4  	brk	#0x1

0000000000080760 <rust_entry>:
   80760: fe 0f 1f f8  	str	x30, [sp, #-16]!
   80764: 28 00 00 90  	adrp	x8, 0x84000 <rust_entry+0x14>
   80768: 29 00 00 90  	adrp	x9, 0x84000 <rust_entry+0x18>
   8076c: 00 f5 41 f9  	ldr	x0, [x8, #1000]
   80770: 28 f5 41 f9  	ldr	x8, [x9, #1000]
   80774: 02 00 08 eb  	subs	x2, x0, x8
   80778: 60 00 00 54  	b.eq	0x80784 <rust_entry+0x24>
   8077c: e1 03 1f 2a  	mov	w1, wzr
   80780: a1 0a 00 94  	bl	0x83204 <memset>
   80784: 15 ff ff 97  	bl	0x803d8 <_ZN12baremetal_pi4main17h9878c3843b2016d2E>
   80788: 20 00 20 d4  	brk	#0x1

000000000008078c <_ZN42_$LT$$RF$T$u20$as$u20$core..fmt..Debug$GT$3fmt17h364a9108134b5e75E>:
   8078c: 00 00 40 f9  	ldr	x0, [x0]
   80790: 94 09 00 14  	b	0x82de0 <_ZN71_$LT$core..panic..panic_info..PanicInfo$u20$as$u20$core..fmt..Debug$GT$3fmt17hdab5301ab1e937b8E>

0000000000080794 <_ZN4core3ops8function6FnOnce9call_once17h1e0b4b2b1b15e514E>:
   80794: 1f 00 40 f9  	ldr	xzr, [x0]
   80798: 00 00 00 14  	b	0x80798 <_ZN4core3ops8function6FnOnce9call_once17h1e0b4b2b1b15e514E+0x4>

000000000008079c <_ZN4core9panicking18panic_bounds_check17h21e59d1a29014f09E>:
   8079c: e0 07 ba a9  	stp	x0, x1, [sp, #-96]!
   807a0: 09 00 00 90  	adrp	x9, 0x80000 <_ZN4core9panicking18panic_bounds_check17h21e59d1a29014f09E+0x4>
   807a4: e8 23 00 91  	add	x8, sp, #8
   807a8: 29 91 1f 91  	add	x9, x9, #2020
   807ac: 0b 00 00 f0  	adrp	x11, 0x83000 <_ZN4core9panicking18panic_bounds_check17h21e59d1a29014f09E+0x1c>
   807b0: ea 03 00 91  	mov	x10, sp
   807b4: 6b 61 11 91  	add	x11, x11, #1112
   807b8: 4c 00 80 52  	mov	w12, #2
   807bc: e8 27 04 a9  	stp	x8, x9, [sp, #64]
   807c0: e8 03 01 91  	add	x8, sp, #64
   807c4: e0 43 00 91  	add	x0, sp, #16
   807c8: e1 03 02 aa  	mov	x1, x2
   807cc: ff 7f 02 a9  	stp	xzr, xzr, [sp, #32]
   807d0: ea 27 05 a9  	stp	x10, x9, [sp, #80]
   807d4: eb 33 01 a9  	stp	x11, x12, [sp, #16]
   807d8: e8 33 03 a9  	stp	x8, x12, [sp, #48]
   807dc: 5f 00 00 94  	bl	0x80958 <_ZN4core9panicking9panic_fmt17h548b34a47a4ac578E>
   807e0: 20 00 20 d4  	brk	#0x1

00000000000807e4 <_ZN4core3fmt3num3imp52_$LT$impl$u20$core..fmt..Display$u20$for$u20$u64$GT$3fmt17hd9011ba631c18f60E>:
   807e4: ff 03 01 d1  	sub	sp, sp, #64
   807e8: fe 1b 00 f9  	str	x30, [sp, #48]
   807ec: 0a 00 40 f9  	ldr	x10, [x0]
   807f0: e8 03 01 aa  	mov	x8, x1
   807f4: 49 fd 44 d3  	lsr	x9, x10, #4
   807f8: 3f c5 09 f1  	cmp	x9, #625
   807fc: 09 00 00 f0  	adrp	x9, 0x83000 <_ZN4core3fmt3num3imp52_$LT$impl$u20$core..fmt..Display$u20$for$u20$u64$GT$3fmt17hd9011ba631c18f60E+0x24>
   80800: 29 29 14 91  	add	x9, x9, #1290
   80804: e3 04 00 54  	b.lo	0x808a0 <_ZN4core3fmt3num3imp52_$LT$impl$u20$core..fmt..Display$u20$for$u20$u64$GT$3fmt17hd9011ba631c18f60E+0xbc>
   80808: 6c 29 8b d2  	mov	x12, #22859
   8080c: cc 10 a7 f2  	movk	x12, #14470, lsl #16
   80810: cc ba d8 f2  	movk	x12, #50646, lsl #32
   80814: ee a3 90 52  	mov	w14, #34079
   80818: f1 1f 9c 52  	mov	w17, #57599
   8081c: eb 03 1f aa  	mov	x11, xzr
   80820: ac 8d e6 f2  	movk	x12, #13421, lsl #48
   80824: ed e1 84 12  	mov	w13, #-10000
   80828: 6e 3d aa 72  	movk	w14, #20971, lsl #16
   8082c: 6f 0c 80 12  	mov	w15, #-100
   80830: f0 23 00 91  	add	x16, sp, #8
   80834: b1 be a0 72  	movk	w17, #1525, lsl #16
   80838: f2 03 0a aa  	mov	x18, x10
   8083c: 4a 7d cc 9b  	umulh	x10, x10, x12
   80840: 4a fd 4b d3  	lsr	x10, x10, #11
   80844: 5f 02 11 eb  	cmp	x18, x17
   80848: 52 49 0d 1b  	madd	w18, w10, w13, w18
   8084c: 41 3e 00 12  	and	w1, w18, #0xffff
   80850: 21 7c ae 9b  	umull	x1, w1, w14
   80854: 21 fc 65 d3  	lsr	x1, x1, #37
   80858: 32 48 0f 1b  	madd	w18, w1, w15, w18
   8085c: 21 05 01 8b  	add	x1, x9, x1, lsl #1
   80860: 32 25 32 8b  	add	x18, x9, w18, uxth #1
   80864: 22 00 40 39  	ldrb	w2, [x1]
   80868: 21 04 40 39  	ldrb	w1, [x1, #1]
   8086c: 43 06 40 39  	ldrb	w3, [x18, #1]
   80870: 52 02 40 39  	ldrb	w18, [x18]
   80874: 00 02 0b 8b  	add	x0, x16, x11
   80878: 6b 11 00 d1  	sub	x11, x11, #4
   8087c: 01 90 00 39  	strb	w1, [x0, #36]
   80880: 02 8c 00 39  	strb	w2, [x0, #35]
   80884: 03 98 00 39  	strb	w3, [x0, #38]
   80888: 12 94 00 39  	strb	w18, [x0, #37]
   8088c: 68 fd ff 54  	b.hi	0x80838 <_ZN4core3fmt3num3imp52_$LT$impl$u20$core..fmt..Display$u20$for$u20$u64$GT$3fmt17hd9011ba631c18f60E+0x54>
   80890: 6b 9d 00 91  	add	x11, x11, #39
   80894: 5f 8d 01 f1  	cmp	x10, #99
   80898: ac 00 00 54  	b.gt	0x808ac <_ZN4core3fmt3num3imp52_$LT$impl$u20$core..fmt..Display$u20$for$u20$u64$GT$3fmt17hd9011ba631c18f60E+0xc8>
   8089c: 14 00 00 14  	b	0x808ec <_ZN4core3fmt3num3imp52_$LT$impl$u20$core..fmt..Display$u20$for$u20$u64$GT$3fmt17hd9011ba631c18f60E+0x108>
   808a0: eb 04 80 52  	mov	w11, #39
   808a4: 5f 8d 01 f1  	cmp	x10, #99
   808a8: 2d 02 00 54  	b.le	0x808ec <_ZN4core3fmt3num3imp52_$LT$impl$u20$core..fmt..Display$u20$for$u20$u64$GT$3fmt17hd9011ba631c18f60E+0x108>
   808ac: ed a3 90 52  	mov	w13, #34079
   808b0: 4c 3d 00 12  	and	w12, w10, #0xffff
   808b4: 6d 3d aa 72  	movk	w13, #20971, lsl #16
   808b8: 8c 7d ad 9b  	umull	x12, w12, w13
   808bc: 6e 0c 80 12  	mov	w14, #-100
   808c0: 8c fd 65 d3  	lsr	x12, x12, #37
   808c4: 8a 29 0e 1b  	madd	w10, w12, w14, w10
   808c8: 2a 25 2a 8b  	add	x10, x9, w10, uxth #1
   808cc: 4d 05 40 39  	ldrb	w13, [x10, #1]
   808d0: 4a 01 40 39  	ldrb	w10, [x10]
   808d4: 6b 09 00 d1  	sub	x11, x11, #2
   808d8: ee 23 00 91  	add	x14, sp, #8
   808dc: ce 01 0b 8b  	add	x14, x14, x11
   808e0: ca 01 00 39  	strb	w10, [x14]
   808e4: ea 03 0c aa  	mov	x10, x12
   808e8: cd 05 00 39  	strb	w13, [x14, #1]
   808ec: 5f 29 00 f1  	cmp	x10, #10
   808f0: ca 00 00 54  	b.ge	0x80908 <_ZN4core3fmt3num3imp52_$LT$impl$u20$core..fmt..Display$u20$for$u20$u64$GT$3fmt17hd9011ba631c18f60E+0x124>
   808f4: 6b 05 00 d1  	sub	x11, x11, #1
   808f8: 49 c1 00 11  	add	w9, w10, #48
   808fc: ea 23 00 91  	add	x10, sp, #8
   80900: 49 69 2b 38  	strb	w9, [x10, x11]
   80904: 09 00 00 14  	b	0x80928 <_ZN4core3fmt3num3imp52_$LT$impl$u20$core..fmt..Display$u20$for$u20$u64$GT$3fmt17hd9011ba631c18f60E+0x144>
   80908: 29 05 0a 8b  	add	x9, x9, x10, lsl #1
   8090c: 2a 05 40 39  	ldrb	w10, [x9, #1]
   80910: 29 01 40 39  	ldrb	w9, [x9]
   80914: 6b 09 00 d1  	sub	x11, x11, #2
   80918: ec 23 00 91  	add	x12, sp, #8
   8091c: 8c 01 0b 8b  	add	x12, x12, x11
   80920: 8a 05 00 39  	strb	w10, [x12, #1]
   80924: 89 01 00 39  	strb	w9, [x12]
   80928: e9 23 00 91  	add	x9, sp, #8
   8092c: ea 04 80 52  	mov	w10, #39
   80930: 01 00 00 f0  	adrp	x1, 0x83000 <_ZN4core3fmt3num3imp52_$LT$impl$u20$core..fmt..Display$u20$for$u20$u64$GT$3fmt17hd9011ba631c18f60E+0x158>
   80934: 23 01 0b 8b  	add	x3, x9, x11
   80938: 44 01 0b cb  	sub	x4, x10, x11
   8093c: 21 e0 11 91  	add	x1, x1, #1144
   80940: e0 03 08 aa  	mov	x0, x8
   80944: e2 03 1f aa  	mov	x2, xzr
   80948: 13 00 00 94  	bl	0x80994 <_ZN4core3fmt9Formatter12pad_integral17h4be5fae25bf478d6E>
   8094c: fe 1b 40 f9  	ldr	x30, [sp, #48]
   80950: ff 03 01 91  	add	sp, sp, #64
   80954: c0 03 5f d6  	ret

0000000000080958 <_ZN4core9panicking9panic_fmt17h548b34a47a4ac578E>:
   80958: 08 00 00 f0  	adrp	x8, 0x83000 <_ZN4core9panicking9panic_fmt17h548b34a47a4ac578E+0xc>
   8095c: 09 00 00 f0  	adrp	x9, 0x83000 <_ZN4core9panicking9panic_fmt17h548b34a47a4ac578E+0x10>
   80960: 08 e1 11 91  	add	x8, x8, #1144
   80964: 29 e1 11 91  	add	x9, x9, #1144
   80968: e8 27 be a9  	stp	x8, x9, [sp, #-32]!
   8096c: e0 07 01 a9  	stp	x0, x1, [sp, #16]
   80970: e0 03 00 91  	mov	x0, sp
   80974: 46 ff ff 97  	bl	0x8068c <rust_begin_unwind>
   80978: 20 00 20 d4  	brk	#0x1

000000000008097c <_ZN4core3ptr102drop_in_place$LT$$RF$core..iter..adapters..copied..Copied$LT$core..slice..iter..Iter$LT$u8$GT$$GT$$GT$17h2926ff8863b04fafE>:
   8097c: c0 03 5f d6  	ret

0000000000080980 <_ZN36_$LT$T$u20$as$u20$core..any..Any$GT$7type_id17h311a29bdb201aafdE>:
   80980: 20 28 87 d2  	mov	x0, #14657
   80984: e0 a1 a8 f2  	movk	x0, #17679, lsl #16
   80988: 40 43 db f2  	movk	x0, #55834, lsl #32
   8098c: 20 96 fa f2  	movk	x0, #54449, lsl #48
   80990: c0 03 5f d6  	ret

0000000000080994 <_ZN4core3fmt9Formatter12pad_integral17h4be5fae25bf478d6E>:
   80994: fd 7b ba a9  	stp	x29, x30, [sp, #-96]!
   80998: fc 6f 01 a9  	stp	x28, x27, [sp, #16]
   8099c: fa 67 02 a9  	stp	x26, x25, [sp, #32]
   809a0: f8 5f 03 a9  	stp	x24, x23, [sp, #48]
   809a4: f6 57 04 a9  	stp	x22, x21, [sp, #64]
   809a8: f4 4f 05 a9  	stp	x20, x19, [sp, #80]
   809ac: 08 30 40 b9  	ldr	w8, [x0, #48]
   809b0: 69 05 80 52  	mov	w9, #43
   809b4: 2a 02 a0 52  	mov	w10, #1114112
   809b8: f3 03 04 aa  	mov	x19, x4
   809bc: 0b 01 40 92  	and	x11, x8, #0x1
   809c0: 7f 01 00 71  	cmp	w11, #0
   809c4: f4 03 03 aa  	mov	x20, x3
   809c8: f5 03 00 aa  	mov	x21, x0
   809cc: 58 01 89 1a  	csel	w24, w10, w9, eq
   809d0: 69 01 04 8b  	add	x9, x11, x4
   809d4: e8 00 10 37  	tbnz	w8, #2, 0x809f0 <_ZN4core3fmt9Formatter12pad_integral17h4be5fae25bf478d6E+0x5c>
   809d8: f7 03 1f aa  	mov	x23, xzr
   809dc: f6 03 1f aa  	mov	x22, xzr
   809e0: aa 02 40 f9  	ldr	x10, [x21]
   809e4: 5f 05 00 f1  	cmp	x10, #1
   809e8: 20 05 00 54  	b.eq	0x80a8c <_ZN4core3fmt9Formatter12pad_integral17h4be5fae25bf478d6E+0xf8>
   809ec: 35 00 00 14  	b	0x80ac0 <_ZN4core3fmt9Formatter12pad_integral17h4be5fae25bf478d6E+0x12c>
   809f0: f6 03 02 aa  	mov	x22, x2
   809f4: f7 03 01 aa  	mov	x23, x1
   809f8: eb 03 02 aa  	mov	x11, x2
   809fc: 02 04 00 b4  	cbz	x2, 0x80a7c <_ZN4core3fmt9Formatter12pad_integral17h4be5fae25bf478d6E+0xe8>
   80a00: df 06 00 f1  	cmp	x22, #1
   80a04: 81 00 00 54  	b.ne	0x80a14 <_ZN4core3fmt9Formatter12pad_integral17h4be5fae25bf478d6E+0x80>
   80a08: eb 03 1f aa  	mov	x11, xzr
   80a0c: ea 03 17 aa  	mov	x10, x23
   80a10: 14 00 00 14  	b	0x80a60 <_ZN4core3fmt9Formatter12pad_integral17h4be5fae25bf478d6E+0xcc>
   80a14: ca fa 7f 92  	and	x10, x22, #0xfffffffffffffffe
   80a18: eb 03 1f aa  	mov	x11, xzr
   80a1c: ec 03 1f aa  	mov	x12, xzr
   80a20: ed 06 00 91  	add	x13, x23, #1
   80a24: ee 03 0a aa  	mov	x14, x10
   80a28: af f1 5f 38  	ldurb	w15, [x13, #-1]
   80a2c: b0 25 40 38  	ldrb	w16, [x13], #2
   80a30: ef 05 1a 12  	and	w15, w15, #0xc0
   80a34: 10 06 1a 12  	and	w16, w16, #0xc0
   80a38: ff 01 02 71  	cmp	w15, #128
   80a3c: 6b 05 8b 9a  	cinc	x11, x11, ne
   80a40: 1f 02 02 71  	cmp	w16, #128
   80a44: 8c 05 8c 9a  	cinc	x12, x12, ne
   80a48: ce 09 00 f1  	subs	x14, x14, #2
   80a4c: e1 fe ff 54  	b.ne	0x80a28 <_ZN4core3fmt9Formatter12pad_integral17h4be5fae25bf478d6E+0x94>
   80a50: 5f 01 16 eb  	cmp	x10, x22
   80a54: 8b 01 0b 8b  	add	x11, x12, x11
   80a58: 20 01 00 54  	b.eq	0x80a7c <_ZN4core3fmt9Formatter12pad_integral17h4be5fae25bf478d6E+0xe8>
   80a5c: ea 02 0a 8b  	add	x10, x23, x10
   80a60: ec 02 16 8b  	add	x12, x23, x22
   80a64: 4d 15 40 38  	ldrb	w13, [x10], #1
   80a68: ad 05 1a 12  	and	w13, w13, #0xc0
   80a6c: bf 01 02 71  	cmp	w13, #128
   80a70: 6b 05 8b 9a  	cinc	x11, x11, ne
   80a74: 9f 01 0a eb  	cmp	x12, x10
   80a78: 61 ff ff 54  	b.ne	0x80a64 <_ZN4core3fmt9Formatter12pad_integral17h4be5fae25bf478d6E+0xd0>
   80a7c: 69 01 09 8b  	add	x9, x11, x9
   80a80: aa 02 40 f9  	ldr	x10, [x21]
   80a84: 5f 05 00 f1  	cmp	x10, #1
   80a88: c1 01 00 54  	b.ne	0x80ac0 <_ZN4core3fmt9Formatter12pad_integral17h4be5fae25bf478d6E+0x12c>
   80a8c: aa 06 40 f9  	ldr	x10, [x21, #8]
   80a90: 5c 01 09 eb  	subs	x28, x10, x9
   80a94: 69 01 00 54  	b.ls	0x80ac0 <_ZN4core3fmt9Formatter12pad_integral17h4be5fae25bf478d6E+0x12c>
   80a98: 88 04 18 37  	tbnz	w8, #3, 0x80b28 <_ZN4core3fmt9Formatter12pad_integral17h4be5fae25bf478d6E+0x194>
   80a9c: a8 e2 40 39  	ldrb	w8, [x21, #56]
   80aa0: 1f 0d 00 71  	cmp	w8, #3
   80aa4: 08 15 9f 1a  	csinc	w8, w8, wzr, ne
   80aa8: 08 05 00 72  	ands	w8, w8, #0x3
   80aac: a0 06 00 54  	b.eq	0x80b80 <_ZN4core3fmt9Formatter12pad_integral17h4be5fae25bf478d6E+0x1ec>
   80ab0: 1f 05 00 71  	cmp	w8, #1
   80ab4: c1 06 00 54  	b.ne	0x80b8c <_ZN4core3fmt9Formatter12pad_integral17h4be5fae25bf478d6E+0x1f8>
   80ab8: fd 03 1f aa  	mov	x29, xzr
   80abc: 37 00 00 14  	b	0x80b98 <_ZN4core3fmt9Formatter12pad_integral17h4be5fae25bf478d6E+0x204>
   80ac0: e0 03 15 aa  	mov	x0, x21
   80ac4: e1 03 18 2a  	mov	w1, w24
   80ac8: e2 03 17 aa  	mov	x2, x23
   80acc: e3 03 16 aa  	mov	x3, x22
   80ad0: 65 00 00 94  	bl	0x80c64 <_ZN4core3fmt9Formatter12pad_integral12write_prefix17h7ec449827422f958E>
   80ad4: 40 01 00 36  	tbz	w0, #0, 0x80afc <_ZN4core3fmt9Formatter12pad_integral17h4be5fae25bf478d6E+0x168>
   80ad8: 39 00 80 52  	mov	w25, #1
   80adc: e0 03 19 2a  	mov	w0, w25
   80ae0: f4 4f 45 a9  	ldp	x20, x19, [sp, #80]
   80ae4: f6 57 44 a9  	ldp	x22, x21, [sp, #64]
   80ae8: f8 5f 43 a9  	ldp	x24, x23, [sp, #48]
   80aec: fa 67 42 a9  	ldp	x26, x25, [sp, #32]
   80af0: fc 6f 41 a9  	ldp	x28, x27, [sp, #16]
   80af4: fd 7b c6 a8  	ldp	x29, x30, [sp], #96
   80af8: c0 03 5f d6  	ret
   80afc: a0 22 42 a9  	ldp	x0, x8, [x21, #32]
   80b00: e1 03 14 aa  	mov	x1, x20
   80b04: e2 03 13 aa  	mov	x2, x19
   80b08: f4 4f 45 a9  	ldp	x20, x19, [sp, #80]
   80b0c: 03 0d 40 f9  	ldr	x3, [x8, #24]
   80b10: f6 57 44 a9  	ldp	x22, x21, [sp, #64]
   80b14: f8 5f 43 a9  	ldp	x24, x23, [sp, #48]
   80b18: fa 67 42 a9  	ldp	x26, x25, [sp, #32]
   80b1c: fc 6f 41 a9  	ldp	x28, x27, [sp, #16]
   80b20: fd 7b c6 a8  	ldp	x29, x30, [sp], #96
   80b24: 60 00 1f d6  	br	x3
   80b28: ba 36 40 b9  	ldr	w26, [x21, #52]
   80b2c: bb e2 40 39  	ldrb	w27, [x21, #56]
   80b30: 08 06 80 52  	mov	w8, #48
   80b34: 39 00 80 52  	mov	w25, #1
   80b38: e0 03 15 aa  	mov	x0, x21
   80b3c: e1 03 18 2a  	mov	w1, w24
   80b40: e2 03 17 aa  	mov	x2, x23
   80b44: e3 03 16 aa  	mov	x3, x22
   80b48: a8 36 00 b9  	str	w8, [x21, #52]
   80b4c: b9 e2 00 39  	strb	w25, [x21, #56]
   80b50: 45 00 00 94  	bl	0x80c64 <_ZN4core3fmt9Formatter12pad_integral12write_prefix17h7ec449827422f958E>
   80b54: 40 fc 07 37  	tbnz	w0, #0, 0x80adc <_ZN4core3fmt9Formatter12pad_integral17h4be5fae25bf478d6E+0x148>
   80b58: b6 5e 42 a9  	ldp	x22, x23, [x21, #32]
   80b5c: 98 07 00 91  	add	x24, x28, #1
   80b60: 18 07 00 f1  	subs	x24, x24, #1
   80b64: 40 06 00 54  	b.eq	0x80c2c <_ZN4core3fmt9Formatter12pad_integral17h4be5fae25bf478d6E+0x298>
   80b68: e8 12 40 f9  	ldr	x8, [x23, #32]
   80b6c: 01 06 80 52  	mov	w1, #48
   80b70: e0 03 16 aa  	mov	x0, x22
   80b74: 00 01 3f d6  	blr	x8
   80b78: 40 ff 07 36  	tbz	w0, #0, 0x80b60 <_ZN4core3fmt9Formatter12pad_integral17h4be5fae25bf478d6E+0x1cc>
   80b7c: d7 ff ff 17  	b	0x80ad8 <_ZN4core3fmt9Formatter12pad_integral17h4be5fae25bf478d6E+0x144>
   80b80: fd 03 1c aa  	mov	x29, x28
   80b84: fc 03 1f aa  	mov	x28, xzr
   80b88: 04 00 00 14  	b	0x80b98 <_ZN4core3fmt9Formatter12pad_integral17h4be5fae25bf478d6E+0x204>
   80b8c: 88 07 00 91  	add	x8, x28, #1
   80b90: 9c ff 41 d3  	lsr	x28, x28, #1
   80b94: 1d fd 41 d3  	lsr	x29, x8, #1
   80b98: b9 6e 42 a9  	ldp	x25, x27, [x21, #32]
   80b9c: ba 36 40 b9  	ldr	w26, [x21, #52]
   80ba0: 9c 07 00 91  	add	x28, x28, #1
   80ba4: 9c 07 00 f1  	subs	x28, x28, #1
   80ba8: e0 00 00 54  	b.eq	0x80bc4 <_ZN4core3fmt9Formatter12pad_integral17h4be5fae25bf478d6E+0x230>
   80bac: 68 13 40 f9  	ldr	x8, [x27, #32]
   80bb0: e0 03 19 aa  	mov	x0, x25
   80bb4: e1 03 1a 2a  	mov	w1, w26
   80bb8: 00 01 3f d6  	blr	x8
   80bbc: 40 ff 07 36  	tbz	w0, #0, 0x80ba4 <_ZN4core3fmt9Formatter12pad_integral17h4be5fae25bf478d6E+0x210>
   80bc0: c6 ff ff 17  	b	0x80ad8 <_ZN4core3fmt9Formatter12pad_integral17h4be5fae25bf478d6E+0x144>
   80bc4: 5f 43 44 71  	cmp	w26, #272, lsl #12
   80bc8: fc 03 9d 9a  	csel	x28, xzr, x29, eq
   80bcc: 60 f8 ff 54  	b.eq	0x80ad8 <_ZN4core3fmt9Formatter12pad_integral17h4be5fae25bf478d6E+0x144>
   80bd0: e0 03 15 aa  	mov	x0, x21
   80bd4: e1 03 18 2a  	mov	w1, w24
   80bd8: e2 03 17 aa  	mov	x2, x23
   80bdc: e3 03 16 aa  	mov	x3, x22
   80be0: 21 00 00 94  	bl	0x80c64 <_ZN4core3fmt9Formatter12pad_integral12write_prefix17h7ec449827422f958E>
   80be4: a0 f7 07 37  	tbnz	w0, #0, 0x80ad8 <_ZN4core3fmt9Formatter12pad_integral17h4be5fae25bf478d6E+0x144>
   80be8: 68 0f 40 f9  	ldr	x8, [x27, #24]
   80bec: e0 03 19 aa  	mov	x0, x25
   80bf0: e1 03 14 aa  	mov	x1, x20
   80bf4: e2 03 13 aa  	mov	x2, x19
   80bf8: 00 01 3f d6  	blr	x8
   80bfc: e0 f6 07 37  	tbnz	w0, #0, 0x80ad8 <_ZN4core3fmt9Formatter12pad_integral17h4be5fae25bf478d6E+0x144>
   80c00: f3 03 1f aa  	mov	x19, xzr
   80c04: 9f 03 13 eb  	cmp	x28, x19
   80c08: 60 02 00 54  	b.eq	0x80c54 <_ZN4core3fmt9Formatter12pad_integral17h4be5fae25bf478d6E+0x2c0>
   80c0c: 68 13 40 f9  	ldr	x8, [x27, #32]
   80c10: e0 03 19 aa  	mov	x0, x25
   80c14: e1 03 1a 2a  	mov	w1, w26
   80c18: 73 06 00 91  	add	x19, x19, #1
   80c1c: 00 01 3f d6  	blr	x8
   80c20: 20 ff ff 34  	cbz	w0, 0x80c04 <_ZN4core3fmt9Formatter12pad_integral17h4be5fae25bf478d6E+0x270>
   80c24: 68 06 00 d1  	sub	x8, x19, #1
   80c28: 0c 00 00 14  	b	0x80c58 <_ZN4core3fmt9Formatter12pad_integral17h4be5fae25bf478d6E+0x2c4>
   80c2c: e8 0e 40 f9  	ldr	x8, [x23, #24]
   80c30: e0 03 16 aa  	mov	x0, x22
   80c34: e1 03 14 aa  	mov	x1, x20
   80c38: e2 03 13 aa  	mov	x2, x19
   80c3c: 00 01 3f d6  	blr	x8
   80c40: c0 f4 07 37  	tbnz	w0, #0, 0x80ad8 <_ZN4core3fmt9Formatter12pad_integral17h4be5fae25bf478d6E+0x144>
   80c44: f9 03 1f 2a  	mov	w25, wzr
   80c48: ba 36 00 b9  	str	w26, [x21, #52]
   80c4c: bb e2 00 39  	strb	w27, [x21, #56]
   80c50: a3 ff ff 17  	b	0x80adc <_ZN4core3fmt9Formatter12pad_integral17h4be5fae25bf478d6E+0x148>
   80c54: e8 03 1c aa  	mov	x8, x28
   80c58: 1f 01 1c eb  	cmp	x8, x28
   80c5c: f9 27 9f 1a  	cset	w25, lo
   80c60: 9f ff ff 17  	b	0x80adc <_ZN4core3fmt9Formatter12pad_integral17h4be5fae25bf478d6E+0x148>

0000000000080c64 <_ZN4core3fmt9Formatter12pad_integral12write_prefix17h7ec449827422f958E>:
   80c64: fe 57 be a9  	stp	x30, x21, [sp, #-32]!
   80c68: f4 4f 01 a9  	stp	x20, x19, [sp, #16]
   80c6c: f3 03 03 aa  	mov	x19, x3
   80c70: f4 03 02 aa  	mov	x20, x2
   80c74: 3f 40 44 71  	cmp	w1, #272, lsl #12
   80c78: f5 03 00 aa  	mov	x21, x0
   80c7c: 20 01 00 54  	b.eq	0x80ca0 <_ZN4core3fmt9Formatter12pad_integral12write_prefix17h7ec449827422f958E+0x3c>
   80c80: a0 22 42 a9  	ldp	x0, x8, [x21, #32]
   80c84: 08 11 40 f9  	ldr	x8, [x8, #32]
   80c88: 00 01 3f d6  	blr	x8
   80c8c: a0 00 00 36  	tbz	w0, #0, 0x80ca0 <_ZN4core3fmt9Formatter12pad_integral12write_prefix17h7ec449827422f958E+0x3c>
   80c90: 20 00 80 52  	mov	w0, #1
   80c94: f4 4f 41 a9  	ldp	x20, x19, [sp, #16]
   80c98: fe 57 c2 a8  	ldp	x30, x21, [sp], #32
   80c9c: c0 03 5f d6  	ret
   80ca0: 14 01 00 b4  	cbz	x20, 0x80cc0 <_ZN4core3fmt9Formatter12pad_integral12write_prefix17h7ec449827422f958E+0x5c>
   80ca4: a0 22 42 a9  	ldp	x0, x8, [x21, #32]
   80ca8: e1 03 14 aa  	mov	x1, x20
   80cac: e2 03 13 aa  	mov	x2, x19
   80cb0: f4 4f 41 a9  	ldp	x20, x19, [sp, #16]
   80cb4: 03 0d 40 f9  	ldr	x3, [x8, #24]
   80cb8: fe 57 c2 a8  	ldp	x30, x21, [sp], #32
   80cbc: 60 00 1f d6  	br	x3
   80cc0: e0 03 1f 2a  	mov	w0, wzr
   80cc4: f4 4f 41 a9  	ldp	x20, x19, [sp, #16]
   80cc8: fe 57 c2 a8  	ldp	x30, x21, [sp], #32
   80ccc: c0 03 5f d6  	ret

0000000000080cd0 <_ZN4core5slice5index26slice_start_index_len_fail17ha5c8a54d8fb05d93E>:
   80cd0: e0 07 ba a9  	stp	x0, x1, [sp, #-96]!
   80cd4: 09 00 00 90  	adrp	x9, 0x80000 <_ZN4core5slice5index26slice_start_index_len_fail17ha5c8a54d8fb05d93E+0x4>
   80cd8: e8 03 00 91  	mov	x8, sp
   80cdc: 29 91 1f 91  	add	x9, x9, #2020
   80ce0: 0b 00 00 f0  	adrp	x11, 0x83000 <_ZN4core5slice5index26slice_start_index_len_fail17ha5c8a54d8fb05d93E+0x1c>
   80ce4: ea 23 00 91  	add	x10, sp, #8
   80ce8: 6b 61 17 91  	add	x11, x11, #1496
   80cec: 4c 00 80 52  	mov	w12, #2
   80cf0: e8 27 04 a9  	stp	x8, x9, [sp, #64]
   80cf4: e8 03 01 91  	add	x8, sp, #64
   80cf8: e0 43 00 91  	add	x0, sp, #16
   80cfc: e1 03 02 aa  	mov	x1, x2
   80d00: ff 7f 02 a9  	stp	xzr, xzr, [sp, #32]
   80d04: ea 27 05 a9  	stp	x10, x9, [sp, #80]
   80d08: eb 33 01 a9  	stp	x11, x12, [sp, #16]
   80d0c: e8 33 03 a9  	stp	x8, x12, [sp, #48]
   80d10: 12 ff ff 97  	bl	0x80958 <_ZN4core9panicking9panic_fmt17h548b34a47a4ac578E>
   80d14: 20 00 20 d4  	brk	#0x1

0000000000080d18 <_ZN4core5slice5index24slice_end_index_len_fail17h827cf37c6cc32b14E>:
   80d18: e0 07 ba a9  	stp	x0, x1, [sp, #-96]!
   80d1c: 09 00 00 90  	adrp	x9, 0x80000 <_ZN4core5slice5index24slice_end_index_len_fail17h827cf37c6cc32b14E+0x4>
   80d20: e8 03 00 91  	mov	x8, sp
   80d24: 29 91 1f 91  	add	x9, x9, #2020
   80d28: 0b 00 00 f0  	adrp	x11, 0x83000 <_ZN4core5slice5index24slice_end_index_len_fail17h827cf37c6cc32b14E+0x1c>
   80d2c: ea 23 00 91  	add	x10, sp, #8
   80d30: 6b c1 18 91  	add	x11, x11, #1584
   80d34: 4c 00 80 52  	mov	w12, #2
   80d38: e8 27 04 a9  	stp	x8, x9, [sp, #64]
   80d3c: e8 03 01 91  	add	x8, sp, #64
   80d40: e0 43 00 91  	add	x0, sp, #16
   80d44: e1 03 02 aa  	mov	x1, x2
   80d48: ff 7f 02 a9  	stp	xzr, xzr, [sp, #32]
   80d4c: ea 27 05 a9  	stp	x10, x9, [sp, #80]
   80d50: eb 33 01 a9  	stp	x11, x12, [sp, #16]
   80d54: e8 33 03 a9  	stp	x8, x12, [sp, #48]
   80d58: 00 ff ff 97  	bl	0x80958 <_ZN4core9panicking9panic_fmt17h548b34a47a4ac578E>
   80d5c: 20 00 20 d4  	brk	#0x1

0000000000080d60 <_ZN4core9panicking5panic17ha7217054e020f4cfE>:
   80d60: ff 03 01 d1  	sub	sp, sp, #64
   80d64: 0a 00 00 f0  	adrp	x10, 0x83000 <_ZN4core9panicking5panic17ha7217054e020f4cfE+0x10>
   80d68: e0 07 03 a9  	stp	x0, x1, [sp, #48]
   80d6c: e8 c3 00 91  	add	x8, sp, #48
   80d70: 29 00 80 52  	mov	w9, #1
   80d74: 4a e1 11 91  	add	x10, x10, #1144
   80d78: e0 03 00 91  	mov	x0, sp
   80d7c: e1 03 02 aa  	mov	x1, x2
   80d80: ff 7f 01 a9  	stp	xzr, xzr, [sp, #16]
   80d84: e8 27 00 a9  	stp	x8, x9, [sp]
   80d88: ea 7f 02 a9  	stp	x10, xzr, [sp, #32]
   80d8c: f3 fe ff 97  	bl	0x80958 <_ZN4core9panicking9panic_fmt17h548b34a47a4ac578E>
   80d90: 20 00 20 d4  	brk	#0x1

0000000000080d94 <_ZN44_$LT$$RF$T$u20$as$u20$core..fmt..Display$GT$3fmt17h3f94e73c8b157ba1E>:
   80d94: fe 67 bc a9  	stp	x30, x25, [sp, #-64]!
   80d98: f8 5f 01 a9  	stp	x24, x23, [sp, #16]
   80d9c: f6 57 02 a9  	stp	x22, x21, [sp, #32]
   80da0: f4 4f 03 a9  	stp	x20, x19, [sp, #48]
   80da4: 28 00 40 f9  	ldr	x8, [x1]
   80da8: 14 4c 40 a9  	ldp	x20, x19, [x0]
   80dac: 29 08 40 f9  	ldr	x9, [x1, #16]
   80db0: 1f 05 00 f1  	cmp	x8, #1
   80db4: 81 00 00 54  	b.ne	0x80dc4 <_ZN44_$LT$$RF$T$u20$as$u20$core..fmt..Display$GT$3fmt17h3f94e73c8b157ba1E+0x30>
   80db8: 3f 05 00 f1  	cmp	x9, #1
   80dbc: 80 00 00 54  	b.eq	0x80dcc <_ZN44_$LT$$RF$T$u20$as$u20$core..fmt..Display$GT$3fmt17h3f94e73c8b157ba1E+0x38>
   80dc0: 5a 00 00 14  	b	0x80f28 <_ZN44_$LT$$RF$T$u20$as$u20$core..fmt..Display$GT$3fmt17h3f94e73c8b157ba1E+0x194>
   80dc4: 3f 05 00 f1  	cmp	x9, #1
   80dc8: 81 10 00 54  	b.ne	0x80fd8 <_ZN44_$LT$$RF$T$u20$as$u20$core..fmt..Display$GT$3fmt17h3f94e73c8b157ba1E+0x244>
   80dcc: 2b 0c 40 f9  	ldr	x11, [x1, #24]
   80dd0: 8a 02 13 8b  	add	x10, x20, x19
   80dd4: e9 03 1f aa  	mov	x9, xzr
   80dd8: 6b 06 00 b4  	cbz	x11, 0x80ea4 <_ZN44_$LT$$RF$T$u20$as$u20$core..fmt..Display$GT$3fmt17h3f94e73c8b157ba1E+0x110>
   80ddc: ed 03 14 aa  	mov	x13, x20
   80de0: 0e 00 00 14  	b	0x80e18 <_ZN44_$LT$$RF$T$u20$as$u20$core..fmt..Display$GT$3fmt17h3f94e73c8b157ba1E+0x84>
   80de4: 91 15 40 38  	ldrb	w17, [x12], #1
   80de8: 31 16 00 12  	and	w17, w17, #0x3f
   80dec: ef 09 0e 53  	ubfiz	w15, w15, #18, #3
   80df0: cf 15 14 33  	bfi	w15, w14, #12, #6
   80df4: 0f 16 1a 33  	bfi	w15, w16, #6, #6
   80df8: ee 01 11 2a  	orr	w14, w15, w17
   80dfc: df 41 44 71  	cmp	w14, #272, lsl #12
   80e00: 00 09 00 54  	b.eq	0x80f20 <_ZN44_$LT$$RF$T$u20$as$u20$core..fmt..Display$GT$3fmt17h3f94e73c8b157ba1E+0x18c>
   80e04: 29 01 0d cb  	sub	x9, x9, x13
   80e08: 6b 05 00 f1  	subs	x11, x11, #1
   80e0c: 29 01 0c 8b  	add	x9, x9, x12
   80e10: ed 03 0c aa  	mov	x13, x12
   80e14: a0 04 00 54  	b.eq	0x80ea8 <_ZN44_$LT$$RF$T$u20$as$u20$core..fmt..Display$GT$3fmt17h3f94e73c8b157ba1E+0x114>
   80e18: bf 01 0a eb  	cmp	x13, x10
   80e1c: 20 08 00 54  	b.eq	0x80f20 <_ZN44_$LT$$RF$T$u20$as$u20$core..fmt..Display$GT$3fmt17h3f94e73c8b157ba1E+0x18c>
   80e20: ec 03 0d aa  	mov	x12, x13
   80e24: 8f 15 c0 38  	ldrsb	w15, [x12], #1
   80e28: ef fe ff 36  	tbz	w15, #31, 0x80e04 <_ZN44_$LT$$RF$T$u20$as$u20$core..fmt..Display$GT$3fmt17h3f94e73c8b157ba1E+0x70>
   80e2c: 9f 01 0a eb  	cmp	x12, x10
   80e30: 00 01 00 54  	b.eq	0x80e50 <_ZN44_$LT$$RF$T$u20$as$u20$core..fmt..Display$GT$3fmt17h3f94e73c8b157ba1E+0xbc>
   80e34: ae 05 40 39  	ldrb	w14, [x13, #1]
   80e38: ac 09 00 91  	add	x12, x13, #2
   80e3c: ce 15 00 12  	and	w14, w14, #0x3f
   80e40: ef 1d 00 12  	and	w15, w15, #0xff
   80e44: ff 81 03 71  	cmp	w15, #224
   80e48: e3 fd ff 54  	b.lo	0x80e04 <_ZN44_$LT$$RF$T$u20$as$u20$core..fmt..Display$GT$3fmt17h3f94e73c8b157ba1E+0x70>
   80e4c: 06 00 00 14  	b	0x80e64 <_ZN44_$LT$$RF$T$u20$as$u20$core..fmt..Display$GT$3fmt17h3f94e73c8b157ba1E+0xd0>
   80e50: ee 03 1f 2a  	mov	w14, wzr
   80e54: ec 03 0a aa  	mov	x12, x10
   80e58: ef 1d 00 12  	and	w15, w15, #0xff
   80e5c: ff 81 03 71  	cmp	w15, #224
   80e60: 23 fd ff 54  	b.lo	0x80e04 <_ZN44_$LT$$RF$T$u20$as$u20$core..fmt..Display$GT$3fmt17h3f94e73c8b157ba1E+0x70>
   80e64: 9f 01 0a eb  	cmp	x12, x10
   80e68: c0 00 00 54  	b.eq	0x80e80 <_ZN44_$LT$$RF$T$u20$as$u20$core..fmt..Display$GT$3fmt17h3f94e73c8b157ba1E+0xec>
   80e6c: 90 15 40 38  	ldrb	w16, [x12], #1
   80e70: 10 16 00 12  	and	w16, w16, #0x3f
   80e74: ff c1 03 71  	cmp	w15, #240
   80e78: 63 fc ff 54  	b.lo	0x80e04 <_ZN44_$LT$$RF$T$u20$as$u20$core..fmt..Display$GT$3fmt17h3f94e73c8b157ba1E+0x70>
   80e7c: 05 00 00 14  	b	0x80e90 <_ZN44_$LT$$RF$T$u20$as$u20$core..fmt..Display$GT$3fmt17h3f94e73c8b157ba1E+0xfc>
   80e80: f0 03 1f 2a  	mov	w16, wzr
   80e84: ec 03 0a aa  	mov	x12, x10
   80e88: ff c1 03 71  	cmp	w15, #240
   80e8c: c3 fb ff 54  	b.lo	0x80e04 <_ZN44_$LT$$RF$T$u20$as$u20$core..fmt..Display$GT$3fmt17h3f94e73c8b157ba1E+0x70>
   80e90: 9f 01 0a eb  	cmp	x12, x10
   80e94: 81 fa ff 54  	b.ne	0x80de4 <_ZN44_$LT$$RF$T$u20$as$u20$core..fmt..Display$GT$3fmt17h3f94e73c8b157ba1E+0x50>
   80e98: f1 03 1f 2a  	mov	w17, wzr
   80e9c: ec 03 0a aa  	mov	x12, x10
   80ea0: d3 ff ff 17  	b	0x80dec <_ZN44_$LT$$RF$T$u20$as$u20$core..fmt..Display$GT$3fmt17h3f94e73c8b157ba1E+0x58>
   80ea4: ec 03 14 aa  	mov	x12, x20
   80ea8: 9f 01 0a eb  	cmp	x12, x10
   80eac: a0 03 00 54  	b.eq	0x80f20 <_ZN44_$LT$$RF$T$u20$as$u20$core..fmt..Display$GT$3fmt17h3f94e73c8b157ba1E+0x18c>
   80eb0: eb 03 0c aa  	mov	x11, x12
   80eb4: 6d 15 c0 38  	ldrsb	w13, [x11], #1
   80eb8: 4d 01 f8 37  	tbnz	w13, #31, 0x80ee0 <_ZN44_$LT$$RF$T$u20$as$u20$core..fmt..Display$GT$3fmt17h3f94e73c8b157ba1E+0x14c>
   80ebc: a9 02 00 b4  	cbz	x9, 0x80f10 <_ZN44_$LT$$RF$T$u20$as$u20$core..fmt..Display$GT$3fmt17h3f94e73c8b157ba1E+0x17c>
   80ec0: 3f 01 13 eb  	cmp	x9, x19
   80ec4: 22 02 00 54  	b.hs	0x80f08 <_ZN44_$LT$$RF$T$u20$as$u20$core..fmt..Display$GT$3fmt17h3f94e73c8b157ba1E+0x174>
   80ec8: 8a 6a e9 38  	ldrsb	w10, [x20, x9]
   80ecc: 5f 01 01 31  	cmn	w10, #64
   80ed0: 0a 02 00 54  	b.ge	0x80f10 <_ZN44_$LT$$RF$T$u20$as$u20$core..fmt..Display$GT$3fmt17h3f94e73c8b157ba1E+0x17c>
   80ed4: ea 03 1f aa  	mov	x10, xzr
   80ed8: e9 03 1f aa  	mov	x9, xzr
   80edc: 0e 00 00 14  	b	0x80f14 <_ZN44_$LT$$RF$T$u20$as$u20$core..fmt..Display$GT$3fmt17h3f94e73c8b157ba1E+0x180>
   80ee0: 7f 01 0a eb  	cmp	x11, x10
   80ee4: ab 1d 00 12  	and	w11, w13, #0xff
   80ee8: 80 12 00 54  	b.eq	0x81138 <_ZN44_$LT$$RF$T$u20$as$u20$core..fmt..Display$GT$3fmt17h3f94e73c8b157ba1E+0x3a4>
   80eec: 8e 05 40 39  	ldrb	w14, [x12, #1]
   80ef0: 8d 09 00 91  	add	x13, x12, #2
   80ef4: cc 15 00 12  	and	w12, w14, #0x3f
   80ef8: 8c 4d 14 53  	lsl	w12, w12, #12
   80efc: 7f 81 03 71  	cmp	w11, #224
   80f00: 42 12 00 54  	b.hs	0x81148 <_ZN44_$LT$$RF$T$u20$as$u20$core..fmt..Display$GT$3fmt17h3f94e73c8b157ba1E+0x3b4>
   80f04: ee ff ff 17  	b	0x80ebc <_ZN44_$LT$$RF$T$u20$as$u20$core..fmt..Display$GT$3fmt17h3f94e73c8b157ba1E+0x128>
   80f08: 3f 01 13 eb  	cmp	x9, x19
   80f0c: 41 fe ff 54  	b.ne	0x80ed4 <_ZN44_$LT$$RF$T$u20$as$u20$core..fmt..Display$GT$3fmt17h3f94e73c8b157ba1E+0x140>
   80f10: ea 03 14 aa  	mov	x10, x20
   80f14: 5f 01 00 f1  	cmp	x10, #0
   80f18: 94 02 8a 9a  	csel	x20, x20, x10, eq
   80f1c: 73 02 89 9a  	csel	x19, x19, x9, eq
   80f20: 1f 05 00 f1  	cmp	x8, #1
   80f24: a1 05 00 54  	b.ne	0x80fd8 <_ZN44_$LT$$RF$T$u20$as$u20$core..fmt..Display$GT$3fmt17h3f94e73c8b157ba1E+0x244>
   80f28: d3 00 00 b4  	cbz	x19, 0x80f40 <_ZN44_$LT$$RF$T$u20$as$u20$core..fmt..Display$GT$3fmt17h3f94e73c8b157ba1E+0x1ac>
   80f2c: 7f 06 00 f1  	cmp	x19, #1
   80f30: 01 01 00 54  	b.ne	0x80f50 <_ZN44_$LT$$RF$T$u20$as$u20$core..fmt..Display$GT$3fmt17h3f94e73c8b157ba1E+0x1bc>
   80f34: e9 03 1f aa  	mov	x9, xzr
   80f38: e8 03 14 aa  	mov	x8, x20
   80f3c: 18 00 00 14  	b	0x80f9c <_ZN44_$LT$$RF$T$u20$as$u20$core..fmt..Display$GT$3fmt17h3f94e73c8b157ba1E+0x208>
   80f40: 28 04 40 f9  	ldr	x8, [x1, #8]
   80f44: a8 04 00 b4  	cbz	x8, 0x80fd8 <_ZN44_$LT$$RF$T$u20$as$u20$core..fmt..Display$GT$3fmt17h3f94e73c8b157ba1E+0x244>
   80f48: e9 03 1f aa  	mov	x9, xzr
   80f4c: 46 00 00 14  	b	0x81064 <_ZN44_$LT$$RF$T$u20$as$u20$core..fmt..Display$GT$3fmt17h3f94e73c8b157ba1E+0x2d0>
   80f50: 68 fa 7f 92  	and	x8, x19, #0xfffffffffffffffe
   80f54: e9 03 1f aa  	mov	x9, xzr
   80f58: ea 03 1f aa  	mov	x10, xzr
   80f5c: 8b 06 00 91  	add	x11, x20, #1
   80f60: ec 03 08 aa  	mov	x12, x8
   80f64: 6d f1 5f 38  	ldurb	w13, [x11, #-1]
   80f68: 6e 25 40 38  	ldrb	w14, [x11], #2
   80f6c: ad 05 1a 12  	and	w13, w13, #0xc0
   80f70: ce 05 1a 12  	and	w14, w14, #0xc0
   80f74: bf 01 02 71  	cmp	w13, #128
   80f78: 29 05 89 9a  	cinc	x9, x9, ne
   80f7c: df 01 02 71  	cmp	w14, #128
   80f80: 4a 05 8a 9a  	cinc	x10, x10, ne
   80f84: 8c 09 00 f1  	subs	x12, x12, #2
   80f88: e1 fe ff 54  	b.ne	0x80f64 <_ZN44_$LT$$RF$T$u20$as$u20$core..fmt..Display$GT$3fmt17h3f94e73c8b157ba1E+0x1d0>
   80f8c: 7f 02 08 eb  	cmp	x19, x8
   80f90: 49 01 09 8b  	add	x9, x10, x9
   80f94: 20 01 00 54  	b.eq	0x80fb8 <_ZN44_$LT$$RF$T$u20$as$u20$core..fmt..Display$GT$3fmt17h3f94e73c8b157ba1E+0x224>
   80f98: 88 02 08 8b  	add	x8, x20, x8
   80f9c: 8a 02 13 8b  	add	x10, x20, x19
   80fa0: 0b 15 40 38  	ldrb	w11, [x8], #1
   80fa4: 6b 05 1a 12  	and	w11, w11, #0xc0
   80fa8: 7f 01 02 71  	cmp	w11, #128
   80fac: 29 05 89 9a  	cinc	x9, x9, ne
   80fb0: 5f 01 08 eb  	cmp	x10, x8
   80fb4: 61 ff ff 54  	b.ne	0x80fa0 <_ZN44_$LT$$RF$T$u20$as$u20$core..fmt..Display$GT$3fmt17h3f94e73c8b157ba1E+0x20c>
   80fb8: 28 04 40 f9  	ldr	x8, [x1, #8]
   80fbc: 3f 01 08 eb  	cmp	x9, x8
   80fc0: c2 00 00 54  	b.hs	0x80fd8 <_ZN44_$LT$$RF$T$u20$as$u20$core..fmt..Display$GT$3fmt17h3f94e73c8b157ba1E+0x244>
   80fc4: 7f 06 00 f1  	cmp	x19, #1
   80fc8: a8 01 00 54  	b.hi	0x80ffc <_ZN44_$LT$$RF$T$u20$as$u20$core..fmt..Display$GT$3fmt17h3f94e73c8b157ba1E+0x268>
   80fcc: e9 03 1f aa  	mov	x9, xzr
   80fd0: ea 03 14 aa  	mov	x10, x20
   80fd4: 1d 00 00 14  	b	0x81048 <_ZN44_$LT$$RF$T$u20$as$u20$core..fmt..Display$GT$3fmt17h3f94e73c8b157ba1E+0x2b4>
   80fd8: 20 20 42 a9  	ldp	x0, x8, [x1, #32]
   80fdc: e1 03 14 aa  	mov	x1, x20
   80fe0: e2 03 13 aa  	mov	x2, x19
   80fe4: f4 4f 43 a9  	ldp	x20, x19, [sp, #48]
   80fe8: 03 0d 40 f9  	ldr	x3, [x8, #24]
   80fec: f6 57 42 a9  	ldp	x22, x21, [sp, #32]
   80ff0: f8 5f 41 a9  	ldp	x24, x23, [sp, #16]
   80ff4: fe 67 c4 a8  	ldp	x30, x25, [sp], #64
   80ff8: 60 00 1f d6  	br	x3
   80ffc: 6a fa 7f 92  	and	x10, x19, #0xfffffffffffffffe
   81000: e9 03 1f aa  	mov	x9, xzr
   81004: eb 03 1f aa  	mov	x11, xzr
   81008: 8c 06 00 91  	add	x12, x20, #1
   8100c: ed 03 0a aa  	mov	x13, x10
   81010: 8e f1 5f 38  	ldurb	w14, [x12, #-1]
   81014: 8f 25 40 38  	ldrb	w15, [x12], #2
   81018: ce 05 1a 12  	and	w14, w14, #0xc0
   8101c: ef 05 1a 12  	and	w15, w15, #0xc0
   81020: df 01 02 71  	cmp	w14, #128
   81024: 29 05 89 9a  	cinc	x9, x9, ne
   81028: ff 01 02 71  	cmp	w15, #128
   8102c: 6b 05 8b 9a  	cinc	x11, x11, ne
   81030: ad 09 00 f1  	subs	x13, x13, #2
   81034: e1 fe ff 54  	b.ne	0x81010 <_ZN44_$LT$$RF$T$u20$as$u20$core..fmt..Display$GT$3fmt17h3f94e73c8b157ba1E+0x27c>
   81038: 7f 02 0a eb  	cmp	x19, x10
   8103c: 69 01 09 8b  	add	x9, x11, x9
   81040: 20 01 00 54  	b.eq	0x81064 <_ZN44_$LT$$RF$T$u20$as$u20$core..fmt..Display$GT$3fmt17h3f94e73c8b157ba1E+0x2d0>
   81044: 8a 02 0a 8b  	add	x10, x20, x10
   81048: 8b 02 13 8b  	add	x11, x20, x19
   8104c: 4c 15 40 38  	ldrb	w12, [x10], #1
   81050: 8c 05 1a 12  	and	w12, w12, #0xc0
   81054: 9f 01 02 71  	cmp	w12, #128
   81058: 29 05 89 9a  	cinc	x9, x9, ne
   8105c: 7f 01 0a eb  	cmp	x11, x10
   81060: 61 ff ff 54  	b.ne	0x8104c <_ZN44_$LT$$RF$T$u20$as$u20$core..fmt..Display$GT$3fmt17h3f94e73c8b157ba1E+0x2b8>
   81064: 2a e0 40 39  	ldrb	w10, [x1, #56]
   81068: 08 01 09 cb  	sub	x8, x8, x9
   8106c: 5f 0d 00 71  	cmp	w10, #3
   81070: ea 03 8a 1a  	csel	w10, wzr, w10, eq
   81074: 4a 05 00 72  	ands	w10, w10, #0x3
   81078: a0 00 00 54  	b.eq	0x8108c <_ZN44_$LT$$RF$T$u20$as$u20$core..fmt..Display$GT$3fmt17h3f94e73c8b157ba1E+0x2f8>
   8107c: 5f 05 00 71  	cmp	w10, #1
   81080: c1 00 00 54  	b.ne	0x81098 <_ZN44_$LT$$RF$T$u20$as$u20$core..fmt..Display$GT$3fmt17h3f94e73c8b157ba1E+0x304>
   81084: f8 03 1f aa  	mov	x24, xzr
   81088: 07 00 00 14  	b	0x810a4 <_ZN44_$LT$$RF$T$u20$as$u20$core..fmt..Display$GT$3fmt17h3f94e73c8b157ba1E+0x310>
   8108c: f8 03 08 aa  	mov	x24, x8
   81090: e8 03 1f aa  	mov	x8, xzr
   81094: 04 00 00 14  	b	0x810a4 <_ZN44_$LT$$RF$T$u20$as$u20$core..fmt..Display$GT$3fmt17h3f94e73c8b157ba1E+0x310>
   81098: 09 05 00 91  	add	x9, x8, #1
   8109c: 08 fd 41 d3  	lsr	x8, x8, #1
   810a0: 38 fd 41 d3  	lsr	x24, x9, #1
   810a4: 35 5c 42 a9  	ldp	x21, x23, [x1, #32]
   810a8: 36 34 40 b9  	ldr	w22, [x1, #52]
   810ac: 19 05 00 91  	add	x25, x8, #1
   810b0: 39 07 00 f1  	subs	x25, x25, #1
   810b4: e0 00 00 54  	b.eq	0x810d0 <_ZN44_$LT$$RF$T$u20$as$u20$core..fmt..Display$GT$3fmt17h3f94e73c8b157ba1E+0x33c>
   810b8: e8 12 40 f9  	ldr	x8, [x23, #32]
   810bc: e0 03 15 aa  	mov	x0, x21
   810c0: e1 03 16 2a  	mov	w1, w22
   810c4: 00 01 3f d6  	blr	x8
   810c8: 40 ff 07 36  	tbz	w0, #0, 0x810b0 <_ZN44_$LT$$RF$T$u20$as$u20$core..fmt..Display$GT$3fmt17h3f94e73c8b157ba1E+0x31c>
   810cc: 0a 00 00 14  	b	0x810f4 <_ZN44_$LT$$RF$T$u20$as$u20$core..fmt..Display$GT$3fmt17h3f94e73c8b157ba1E+0x360>
   810d0: df 42 44 71  	cmp	w22, #272, lsl #12
   810d4: f8 03 98 9a  	csel	x24, xzr, x24, eq
   810d8: e0 00 00 54  	b.eq	0x810f4 <_ZN44_$LT$$RF$T$u20$as$u20$core..fmt..Display$GT$3fmt17h3f94e73c8b157ba1E+0x360>
   810dc: e8 0e 40 f9  	ldr	x8, [x23, #24]
   810e0: e0 03 15 aa  	mov	x0, x21
   810e4: e1 03 14 aa  	mov	x1, x20
   810e8: e2 03 13 aa  	mov	x2, x19
   810ec: 00 01 3f d6  	blr	x8
   810f0: e0 00 00 36  	tbz	w0, #0, 0x8110c <_ZN44_$LT$$RF$T$u20$as$u20$core..fmt..Display$GT$3fmt17h3f94e73c8b157ba1E+0x378>
   810f4: 20 00 80 52  	mov	w0, #1
   810f8: f4 4f 43 a9  	ldp	x20, x19, [sp, #48]
   810fc: f6 57 42 a9  	ldp	x22, x21, [sp, #32]
   81100: f8 5f 41 a9  	ldp	x24, x23, [sp, #16]
   81104: fe 67 c4 a8  	ldp	x30, x25, [sp], #64
   81108: c0 03 5f d6  	ret
   8110c: f3 03 1f aa  	mov	x19, xzr
   81110: 1f 03 13 eb  	cmp	x24, x19
   81114: a0 02 00 54  	b.eq	0x81168 <_ZN44_$LT$$RF$T$u20$as$u20$core..fmt..Display$GT$3fmt17h3f94e73c8b157ba1E+0x3d4>
   81118: e8 12 40 f9  	ldr	x8, [x23, #32]
   8111c: e0 03 15 aa  	mov	x0, x21
   81120: e1 03 16 2a  	mov	w1, w22
   81124: 73 06 00 91  	add	x19, x19, #1
   81128: 00 01 3f d6  	blr	x8
   8112c: 20 ff ff 34  	cbz	w0, 0x81110 <_ZN44_$LT$$RF$T$u20$as$u20$core..fmt..Display$GT$3fmt17h3f94e73c8b157ba1E+0x37c>
   81130: 68 06 00 d1  	sub	x8, x19, #1
   81134: 0e 00 00 14  	b	0x8116c <_ZN44_$LT$$RF$T$u20$as$u20$core..fmt..Display$GT$3fmt17h3f94e73c8b157ba1E+0x3d8>
   81138: ec 03 1f 2a  	mov	w12, wzr
   8113c: ed 03 0a aa  	mov	x13, x10
   81140: 7f 81 03 71  	cmp	w11, #224
   81144: c3 eb ff 54  	b.lo	0x80ebc <_ZN44_$LT$$RF$T$u20$as$u20$core..fmt..Display$GT$3fmt17h3f94e73c8b157ba1E+0x128>
   81148: bf 01 0a eb  	cmp	x13, x10
   8114c: 60 01 00 54  	b.eq	0x81178 <_ZN44_$LT$$RF$T$u20$as$u20$core..fmt..Display$GT$3fmt17h3f94e73c8b157ba1E+0x3e4>
   81150: ae 15 40 38  	ldrb	w14, [x13], #1
   81154: ce 15 00 12  	and	w14, w14, #0x3f
   81158: ce 65 1a 53  	lsl	w14, w14, #6
   8115c: 7f c1 03 71  	cmp	w11, #240
   81160: 42 01 00 54  	b.hs	0x81188 <_ZN44_$LT$$RF$T$u20$as$u20$core..fmt..Display$GT$3fmt17h3f94e73c8b157ba1E+0x3f4>
   81164: 56 ff ff 17  	b	0x80ebc <_ZN44_$LT$$RF$T$u20$as$u20$core..fmt..Display$GT$3fmt17h3f94e73c8b157ba1E+0x128>
   81168: e8 03 18 aa  	mov	x8, x24
   8116c: 1f 01 18 eb  	cmp	x8, x24
   81170: e0 27 9f 1a  	cset	w0, lo
   81174: e1 ff ff 17  	b	0x810f8 <_ZN44_$LT$$RF$T$u20$as$u20$core..fmt..Display$GT$3fmt17h3f94e73c8b157ba1E+0x364>
   81178: ee 03 1f 2a  	mov	w14, wzr
   8117c: ed 03 0a aa  	mov	x13, x10
   81180: 7f c1 03 71  	cmp	w11, #240
   81184: c3 e9 ff 54  	b.lo	0x80ebc <_ZN44_$LT$$RF$T$u20$as$u20$core..fmt..Display$GT$3fmt17h3f94e73c8b157ba1E+0x128>
   81188: bf 01 0a eb  	cmp	x13, x10
   8118c: 80 00 00 54  	b.eq	0x8119c <_ZN44_$LT$$RF$T$u20$as$u20$core..fmt..Display$GT$3fmt17h3f94e73c8b157ba1E+0x408>
   81190: aa 01 40 39  	ldrb	w10, [x13]
   81194: 4a 15 00 12  	and	w10, w10, #0x3f
   81198: 02 00 00 14  	b	0x811a0 <_ZN44_$LT$$RF$T$u20$as$u20$core..fmt..Display$GT$3fmt17h3f94e73c8b157ba1E+0x40c>
   8119c: ea 03 1f 2a  	mov	w10, wzr
   811a0: 6c 09 0e 33  	bfi	w12, w11, #18, #3
   811a4: 8b 01 0e 2a  	orr	w11, w12, w14
   811a8: 6a 01 0a 2a  	orr	w10, w11, w10
   811ac: 5f 41 44 71  	cmp	w10, #272, lsl #12
   811b0: 80 eb ff 54  	b.eq	0x80f20 <_ZN44_$LT$$RF$T$u20$as$u20$core..fmt..Display$GT$3fmt17h3f94e73c8b157ba1E+0x18c>
   811b4: 42 ff ff 17  	b	0x80ebc <_ZN44_$LT$$RF$T$u20$as$u20$core..fmt..Display$GT$3fmt17h3f94e73c8b157ba1E+0x128>

00000000000811b8 <_ZN42_$LT$$RF$T$u20$as$u20$core..fmt..Debug$GT$3fmt17h4b8fb327fe2e6f34E>:
   811b8: 00 20 40 a9  	ldp	x0, x8, [x0]
   811bc: 02 0d 40 f9  	ldr	x2, [x8, #24]
   811c0: 40 00 1f d6  	br	x2

00000000000811c4 <_ZN4core3fmt5write17h4089dd81629a8d2eE>:
   811c4: ff 43 02 d1  	sub	sp, sp, #144
   811c8: fe 23 00 f9  	str	x30, [sp, #64]
   811cc: fa 67 05 a9  	stp	x26, x25, [sp, #80]
   811d0: f8 5f 06 a9  	stp	x24, x23, [sp, #96]
   811d4: f6 57 07 a9  	stp	x22, x21, [sp, #112]
   811d8: f4 4f 08 a9  	stp	x20, x19, [sp, #128]
   811dc: 48 08 40 f9  	ldr	x8, [x2, #16]
   811e0: f3 03 02 aa  	mov	x19, x2
   811e4: 09 04 c0 d2  	mov	x9, #137438953472
   811e8: 6a 00 80 52  	mov	w10, #3
   811ec: e1 a7 02 a9  	stp	x1, x9, [sp, #40]
   811f0: ea e3 00 39  	strb	w10, [sp, #56]
   811f4: ff 03 00 f9  	str	xzr, [sp]
   811f8: ff 0b 00 f9  	str	xzr, [sp, #16]
   811fc: e0 13 00 f9  	str	x0, [sp, #32]
   81200: a8 08 00 b4  	cbz	x8, 0x81314 <_ZN4core3fmt5write17h4089dd81629a8d2eE+0x150>
   81204: 69 0e 40 f9  	ldr	x9, [x19, #24]
   81208: 74 56 40 a9  	ldp	x20, x21, [x19]
   8120c: 3f 01 15 eb  	cmp	x9, x21
   81210: b6 82 89 9a  	csel	x22, x21, x9, hi
   81214: 16 0b 00 b4  	cbz	x22, 0x81374 <_ZN4core3fmt5write17h4089dd81629a8d2eE+0x1b0>
   81218: f9 ff ff f0  	adrp	x25, 0x80000 <_ZN4core3fmt5write17h4089dd81629a8d2eE+0x50>
   8121c: 97 22 00 91  	add	x23, x20, #8
   81220: 18 c1 00 91  	add	x24, x8, #48
   81224: 39 53 1e 91  	add	x25, x25, #1940
   81228: fa 03 16 aa  	mov	x26, x22
   8122c: e2 02 40 f9  	ldr	x2, [x23]
   81230: c2 00 00 b4  	cbz	x2, 0x81248 <_ZN4core3fmt5write17h4089dd81629a8d2eE+0x84>
   81234: e0 23 42 a9  	ldp	x0, x8, [sp, #32]
   81238: e1 82 5f f8  	ldur	x1, [x23, #-8]
   8123c: 08 0d 40 f9  	ldr	x8, [x8, #24]
   81240: 00 01 3f d6  	blr	x8
   81244: 80 0a 00 37  	tbnz	w0, #0, 0x81394 <_ZN4core3fmt5write17h4089dd81629a8d2eE+0x1d0>
   81248: 08 83 5f b8  	ldur	w8, [x24, #-8]
   8124c: e8 37 00 b9  	str	w8, [sp, #52]
   81250: 08 03 40 39  	ldrb	w8, [x24]
   81254: e8 e3 00 39  	strb	w8, [sp, #56]
   81258: 09 c3 5f b8  	ldur	w9, [x24, #-4]
   8125c: 68 12 40 f9  	ldr	x8, [x19, #32]
   81260: e9 33 00 b9  	str	w9, [sp, #48]
   81264: 0a a7 7e a9  	ldp	x10, x9, [x24, #-24]
   81268: ea 01 00 b4  	cbz	x10, 0x812a4 <_ZN4core3fmt5write17h4089dd81629a8d2eE+0xe0>
   8126c: 5f 05 00 f1  	cmp	x10, #1
   81270: a1 00 00 54  	b.ne	0x81284 <_ZN4core3fmt5write17h4089dd81629a8d2eE+0xc0>
   81274: 0a 11 09 8b  	add	x10, x8, x9, lsl #4
   81278: 4a 05 40 f9  	ldr	x10, [x10, #8]
   8127c: 5f 01 19 eb  	cmp	x10, x25
   81280: c0 00 00 54  	b.eq	0x81298 <_ZN4core3fmt5write17h4089dd81629a8d2eE+0xd4>
   81284: ea 03 1f aa  	mov	x10, xzr
   81288: ea 27 00 a9  	stp	x10, x9, [sp]
   8128c: 0a a7 7d a9  	ldp	x10, x9, [x24, #-40]
   81290: 2a 01 00 b5  	cbnz	x10, 0x812b4 <_ZN4core3fmt5write17h4089dd81629a8d2eE+0xf0>
   81294: 13 00 00 14  	b	0x812e0 <_ZN4core3fmt5write17h4089dd81629a8d2eE+0x11c>
   81298: 29 ed 7c d3  	lsl	x9, x9, #4
   8129c: 09 69 69 f8  	ldr	x9, [x8, x9]
   812a0: 29 01 40 f9  	ldr	x9, [x9]
   812a4: 2a 00 80 52  	mov	w10, #1
   812a8: ea 27 00 a9  	stp	x10, x9, [sp]
   812ac: 0a a7 7d a9  	ldp	x10, x9, [x24, #-40]
   812b0: 8a 01 00 b4  	cbz	x10, 0x812e0 <_ZN4core3fmt5write17h4089dd81629a8d2eE+0x11c>
   812b4: 5f 05 00 f1  	cmp	x10, #1
   812b8: a1 00 00 54  	b.ne	0x812cc <_ZN4core3fmt5write17h4089dd81629a8d2eE+0x108>
   812bc: 0a 11 09 8b  	add	x10, x8, x9, lsl #4
   812c0: 4a 05 40 f9  	ldr	x10, [x10, #8]
   812c4: 5f 01 19 eb  	cmp	x10, x25
   812c8: 60 00 00 54  	b.eq	0x812d4 <_ZN4core3fmt5write17h4089dd81629a8d2eE+0x110>
   812cc: ea 03 1f aa  	mov	x10, xzr
   812d0: 05 00 00 14  	b	0x812e4 <_ZN4core3fmt5write17h4089dd81629a8d2eE+0x120>
   812d4: 29 ed 7c d3  	lsl	x9, x9, #4
   812d8: 09 69 69 f8  	ldr	x9, [x8, x9]
   812dc: 29 01 40 f9  	ldr	x9, [x9]
   812e0: 2a 00 80 52  	mov	w10, #1
   812e4: ea 27 01 a9  	stp	x10, x9, [sp, #16]
   812e8: 09 03 5d f8  	ldur	x9, [x24, #-48]
   812ec: e1 03 00 91  	mov	x1, sp
   812f0: 08 11 09 8b  	add	x8, x8, x9, lsl #4
   812f4: 00 25 40 a9  	ldp	x0, x9, [x8]
   812f8: 20 01 3f d6  	blr	x9
   812fc: c0 04 00 37  	tbnz	w0, #0, 0x81394 <_ZN4core3fmt5write17h4089dd81629a8d2eE+0x1d0>
   81300: f7 42 00 91  	add	x23, x23, #16
   81304: 5a 07 00 f1  	subs	x26, x26, #1
   81308: 18 e3 00 91  	add	x24, x24, #56
   8130c: 01 f9 ff 54  	b.ne	0x8122c <_ZN4core3fmt5write17h4089dd81629a8d2eE+0x68>
   81310: 19 00 00 14  	b	0x81374 <_ZN4core3fmt5write17h4089dd81629a8d2eE+0x1b0>
   81314: 68 16 40 f9  	ldr	x8, [x19, #40]
   81318: 74 56 40 a9  	ldp	x20, x21, [x19]
   8131c: 1f 01 15 eb  	cmp	x8, x21
   81320: b6 82 88 9a  	csel	x22, x21, x8, hi
   81324: 96 02 00 b4  	cbz	x22, 0x81374 <_ZN4core3fmt5write17h4089dd81629a8d2eE+0x1b0>
   81328: 73 12 40 f9  	ldr	x19, [x19, #32]
   8132c: f7 03 1f aa  	mov	x23, xzr
   81330: f8 03 16 aa  	mov	x24, x22
   81334: 88 02 17 8b  	add	x8, x20, x23
   81338: 02 05 40 f9  	ldr	x2, [x8, #8]
   8133c: c2 00 00 b4  	cbz	x2, 0x81354 <_ZN4core3fmt5write17h4089dd81629a8d2eE+0x190>
   81340: e0 23 42 a9  	ldp	x0, x8, [sp, #32]
   81344: 81 6a 77 f8  	ldr	x1, [x20, x23]
   81348: 08 0d 40 f9  	ldr	x8, [x8, #24]
   8134c: 00 01 3f d6  	blr	x8
   81350: 20 02 00 37  	tbnz	w0, #0, 0x81394 <_ZN4core3fmt5write17h4089dd81629a8d2eE+0x1d0>
   81354: 68 02 17 8b  	add	x8, x19, x23
   81358: 00 25 40 a9  	ldp	x0, x9, [x8]
   8135c: e1 03 00 91  	mov	x1, sp
   81360: 20 01 3f d6  	blr	x9
   81364: 80 01 00 37  	tbnz	w0, #0, 0x81394 <_ZN4core3fmt5write17h4089dd81629a8d2eE+0x1d0>
   81368: 18 07 00 f1  	subs	x24, x24, #1
   8136c: f7 42 00 91  	add	x23, x23, #16
   81370: 21 fe ff 54  	b.ne	0x81334 <_ZN4core3fmt5write17h4089dd81629a8d2eE+0x170>
   81374: df 02 15 eb  	cmp	x22, x21
   81378: 22 01 00 54  	b.hs	0x8139c <_ZN4core3fmt5write17h4089dd81629a8d2eE+0x1d8>
   8137c: e0 23 42 a9  	ldp	x0, x8, [sp, #32]
   81380: 89 12 16 8b  	add	x9, x20, x22, lsl #4
   81384: 21 09 40 a9  	ldp	x1, x2, [x9]
   81388: 08 0d 40 f9  	ldr	x8, [x8, #24]
   8138c: 00 01 3f d6  	blr	x8
   81390: 60 00 00 36  	tbz	w0, #0, 0x8139c <_ZN4core3fmt5write17h4089dd81629a8d2eE+0x1d8>
   81394: 20 00 80 52  	mov	w0, #1
   81398: 02 00 00 14  	b	0x813a0 <_ZN4core3fmt5write17h4089dd81629a8d2eE+0x1dc>
   8139c: e0 03 1f 2a  	mov	w0, wzr
   813a0: f4 4f 48 a9  	ldp	x20, x19, [sp, #128]
   813a4: f6 57 47 a9  	ldp	x22, x21, [sp, #112]
   813a8: f8 5f 46 a9  	ldp	x24, x23, [sp, #96]
   813ac: fa 67 45 a9  	ldp	x26, x25, [sp, #80]
   813b0: fe 23 40 f9  	ldr	x30, [sp, #64]
   813b4: ff 43 02 91  	add	sp, sp, #144
   813b8: c0 03 5f d6  	ret

00000000000813bc <_ZN4core5slice5index22slice_index_order_fail17he71d7140076fff6eE>:
   813bc: e0 07 ba a9  	stp	x0, x1, [sp, #-96]!
   813c0: e9 ff ff f0  	adrp	x9, 0x80000 <_ZN4core5slice5index22slice_index_order_fail17he71d7140076fff6eE>
   813c4: e8 03 00 91  	mov	x8, sp
   813c8: 29 91 1f 91  	add	x9, x9, #2020
   813cc: 0b 00 00 d0  	adrp	x11, 0x83000 <_ZN4core5slice5index22slice_index_order_fail17he71d7140076fff6eE+0x18>
   813d0: ea 23 00 91  	add	x10, sp, #8
   813d4: 6b c1 1a 91  	add	x11, x11, #1712
   813d8: 4c 00 80 52  	mov	w12, #2
   813dc: e8 27 04 a9  	stp	x8, x9, [sp, #64]
   813e0: e8 03 01 91  	add	x8, sp, #64
   813e4: e0 43 00 91  	add	x0, sp, #16
   813e8: e1 03 02 aa  	mov	x1, x2
   813ec: ff 7f 02 a9  	stp	xzr, xzr, [sp, #32]
   813f0: ea 27 05 a9  	stp	x10, x9, [sp, #80]
   813f4: eb 33 01 a9  	stp	x11, x12, [sp, #16]
   813f8: e8 33 03 a9  	stp	x8, x12, [sp, #48]
   813fc: 57 fd ff 97  	bl	0x80958 <_ZN4core9panicking9panic_fmt17h548b34a47a4ac578E>
   81400: 20 00 20 d4  	brk	#0x1

0000000000081404 <_ZN4core6result13unwrap_failed17h514395d9b84745f5E>:
   81404: ff c3 01 d1  	sub	sp, sp, #112
   81408: 68 05 80 52  	mov	w8, #43
   8140c: ea ff ff f0  	adrp	x10, 0x80000 <_ZN4core6result13unwrap_failed17h514395d9b84745f5E+0x4>
   81410: e9 03 00 91  	mov	x9, sp
   81414: 4a 51 36 91  	add	x10, x10, #3476
   81418: 0c 00 00 90  	adrp	x12, 0x81000 <_ZN4core6result13unwrap_failed17h514395d9b84745f5E+0x14>
   8141c: e0 23 00 a9  	stp	x0, x8, [sp]
   81420: 08 00 00 d0  	adrp	x8, 0x83000 <_ZN4core6result13unwrap_failed17h514395d9b84745f5E+0x24>
   81424: e1 0b 01 a9  	stp	x1, x2, [sp, #16]
   81428: eb 43 00 91  	add	x11, sp, #16
   8142c: 8c e1 06 91  	add	x12, x12, #440
   81430: 08 61 1c 91  	add	x8, x8, #1816
   81434: e9 2b 05 a9  	stp	x9, x10, [sp, #80]
   81438: 49 00 80 52  	mov	w9, #2
   8143c: ea 43 01 91  	add	x10, sp, #80
   81440: e0 83 00 91  	add	x0, sp, #32
   81444: e1 03 03 aa  	mov	x1, x3
   81448: ff 7f 03 a9  	stp	xzr, xzr, [sp, #48]
   8144c: eb 33 06 a9  	stp	x11, x12, [sp, #96]
   81450: e8 27 02 a9  	stp	x8, x9, [sp, #32]
   81454: ea 27 04 a9  	stp	x10, x9, [sp, #64]
   81458: 40 fd ff 97  	bl	0x80958 <_ZN4core9panicking9panic_fmt17h548b34a47a4ac578E>
   8145c: 20 00 20 d4  	brk	#0x1

0000000000081460 <_ZN68_$LT$core..fmt..builders..PadAdapter$u20$as$u20$core..fmt..Write$GT$9write_str17h006d11991b68be72E>:
   81460: fe 6f bb a9  	stp	x30, x27, [sp, #-80]!
   81464: fa 67 01 a9  	stp	x26, x25, [sp, #16]
   81468: f8 5f 02 a9  	stp	x24, x23, [sp, #32]
   8146c: f6 57 03 a9  	stp	x22, x21, [sp, #48]
   81470: f4 4f 04 a9  	stp	x20, x19, [sp, #64]
   81474: 42 11 00 b4  	cbz	x2, 0x8169c <_ZN68_$LT$core..fmt..builders..PadAdapter$u20$as$u20$core..fmt..Write$GT$9write_str17h006d11991b68be72E+0x23c>
   81478: 19 e0 40 a9  	ldp	x25, x24, [x0, #8]
   8147c: 15 00 40 f9  	ldr	x21, [x0]
   81480: 5b 41 81 d2  	mov	x27, #2570
   81484: 5b 41 a1 f2  	movk	x27, #2570, lsl #16
   81488: fa db 07 b2  	mov	x26, #-72340172838076674
   8148c: 5b 41 c1 f2  	movk	x27, #2570, lsl #32
   81490: 16 00 00 d0  	adrp	x22, 0x83000 <_ZN68_$LT$core..fmt..builders..PadAdapter$u20$as$u20$core..fmt..Write$GT$9write_str17h006d11991b68be72E+0x38>
   81494: f3 03 02 aa  	mov	x19, x2
   81498: f4 03 01 aa  	mov	x20, x1
   8149c: fa df 9f f2  	movk	x26, #65279
   814a0: 5b 41 e1 f2  	movk	x27, #2570, lsl #48
   814a4: d6 62 1d 91  	add	x22, x22, #1880
   814a8: 04 00 00 14  	b	0x814b8 <_ZN68_$LT$core..fmt..builders..PadAdapter$u20$as$u20$core..fmt..Write$GT$9write_str17h006d11991b68be72E+0x58>
   814ac: 73 02 17 eb  	subs	x19, x19, x23
   814b0: 94 02 17 8b  	add	x20, x20, x23
   814b4: 40 0f 00 54  	b.eq	0x8169c <_ZN68_$LT$core..fmt..builders..PadAdapter$u20$as$u20$core..fmt..Write$GT$9write_str17h006d11991b68be72E+0x23c>
   814b8: 08 03 40 39  	ldrb	w8, [x24]
   814bc: e8 00 00 34  	cbz	w8, 0x814d8 <_ZN68_$LT$core..fmt..builders..PadAdapter$u20$as$u20$core..fmt..Write$GT$9write_str17h006d11991b68be72E+0x78>
   814c0: 28 0f 40 f9  	ldr	x8, [x25, #24]
   814c4: 82 00 80 52  	mov	w2, #4
   814c8: e0 03 15 aa  	mov	x0, x21
   814cc: e1 03 16 aa  	mov	x1, x22
   814d0: 00 01 3f d6  	blr	x8
   814d4: 80 0e 00 37  	tbnz	w0, #0, 0x816a4 <_ZN68_$LT$core..fmt..builders..PadAdapter$u20$as$u20$core..fmt..Write$GT$9write_str17h006d11991b68be72E+0x244>
   814d8: f7 03 1f aa  	mov	x23, xzr
   814dc: e1 03 13 aa  	mov	x1, x19
   814e0: 05 00 00 14  	b	0x814f4 <_ZN68_$LT$core..fmt..builders..PadAdapter$u20$as$u20$core..fmt..Write$GT$9write_str17h006d11991b68be72E+0x94>
   814e4: 68 02 17 eb  	subs	x8, x19, x23
   814e8: e1 33 88 9a  	csel	x1, xzr, x8, lo
   814ec: ff 02 13 eb  	cmp	x23, x19
   814f0: 48 0a 00 54  	b.hi	0x81638 <_ZN68_$LT$core..fmt..builders..PadAdapter$u20$as$u20$core..fmt..Write$GT$9write_str17h006d11991b68be72E+0x1d8>
   814f4: 28 40 00 f1  	subs	x8, x1, #16
   814f8: 62 01 00 54  	b.hs	0x81524 <_ZN68_$LT$core..fmt..builders..PadAdapter$u20$as$u20$core..fmt..Write$GT$9write_str17h006d11991b68be72E+0xc4>
   814fc: e1 09 00 b4  	cbz	x1, 0x81638 <_ZN68_$LT$core..fmt..builders..PadAdapter$u20$as$u20$core..fmt..Write$GT$9write_str17h006d11991b68be72E+0x1d8>
   81500: e9 03 1f aa  	mov	x9, xzr
   81504: 88 02 17 8b  	add	x8, x20, x23
   81508: 0a 69 69 38  	ldrb	w10, [x8, x9]
   8150c: 5f 29 00 71  	cmp	w10, #10
   81510: e0 06 00 54  	b.eq	0x815ec <_ZN68_$LT$core..fmt..builders..PadAdapter$u20$as$u20$core..fmt..Write$GT$9write_str17h006d11991b68be72E+0x18c>
   81514: 29 05 00 91  	add	x9, x9, #1
   81518: 3f 00 09 eb  	cmp	x1, x9
   8151c: 61 ff ff 54  	b.ne	0x81508 <_ZN68_$LT$core..fmt..builders..PadAdapter$u20$as$u20$core..fmt..Write$GT$9write_str17h006d11991b68be72E+0xa8>
   81520: 46 00 00 14  	b	0x81638 <_ZN68_$LT$core..fmt..builders..PadAdapter$u20$as$u20$core..fmt..Write$GT$9write_str17h006d11991b68be72E+0x1d8>
   81524: 89 02 17 8b  	add	x9, x20, x23
   81528: 2a 1d 00 91  	add	x10, x9, #7
   8152c: 4a f1 7d 92  	and	x10, x10, #0xfffffffffffffff8
   81530: 4a 01 09 eb  	subs	x10, x10, x9
   81534: c0 01 00 54  	b.eq	0x8156c <_ZN68_$LT$core..fmt..builders..PadAdapter$u20$as$u20$core..fmt..Write$GT$9write_str17h006d11991b68be72E+0x10c>
   81538: 5f 01 01 eb  	cmp	x10, x1
   8153c: e9 03 1f aa  	mov	x9, xzr
   81540: 20 80 8a 9a  	csel	x0, x1, x10, hi
   81544: 8a 02 17 8b  	add	x10, x20, x23
   81548: 4b 69 69 38  	ldrb	w11, [x10, x9]
   8154c: 7f 29 00 71  	cmp	w11, #10
   81550: e0 04 00 54  	b.eq	0x815ec <_ZN68_$LT$core..fmt..builders..PadAdapter$u20$as$u20$core..fmt..Write$GT$9write_str17h006d11991b68be72E+0x18c>
   81554: 29 05 00 91  	add	x9, x9, #1
   81558: 1f 00 09 eb  	cmp	x0, x9
   8155c: 61 ff ff 54  	b.ne	0x81548 <_ZN68_$LT$core..fmt..builders..PadAdapter$u20$as$u20$core..fmt..Write$GT$9write_str17h006d11991b68be72E+0xe8>
   81560: 1f 00 08 eb  	cmp	x0, x8
   81564: 69 00 00 54  	b.ls	0x81570 <_ZN68_$LT$core..fmt..builders..PadAdapter$u20$as$u20$core..fmt..Write$GT$9write_str17h006d11991b68be72E+0x110>
   81568: 13 00 00 14  	b	0x815b4 <_ZN68_$LT$core..fmt..builders..PadAdapter$u20$as$u20$core..fmt..Write$GT$9write_str17h006d11991b68be72E+0x154>
   8156c: e0 03 1f aa  	mov	x0, xzr
   81570: 89 02 17 8b  	add	x9, x20, x23
   81574: 2a 01 00 8b  	add	x10, x9, x0
   81578: 4b 29 40 a9  	ldp	x11, x10, [x10]
   8157c: 6c 01 1b ca  	eor	x12, x11, x27
   81580: 4d 01 1b ca  	eor	x13, x10, x27
   81584: 8c 01 1a 8b  	add	x12, x12, x26
   81588: ad 01 1a 8b  	add	x13, x13, x26
   8158c: 8b 01 2b 8a  	bic	x11, x12, x11
   81590: aa 01 2a 8a  	bic	x10, x13, x10
   81594: 4a 01 0b aa  	orr	x10, x10, x11
   81598: 5f c1 01 f2  	tst	x10, #0x8080808080808080
   8159c: 81 00 00 54  	b.ne	0x815ac <_ZN68_$LT$core..fmt..builders..PadAdapter$u20$as$u20$core..fmt..Write$GT$9write_str17h006d11991b68be72E+0x14c>
   815a0: 00 40 00 91  	add	x0, x0, #16
   815a4: 1f 00 08 eb  	cmp	x0, x8
   815a8: 69 fe ff 54  	b.ls	0x81574 <_ZN68_$LT$core..fmt..builders..PadAdapter$u20$as$u20$core..fmt..Write$GT$9write_str17h006d11991b68be72E+0x114>
   815ac: 1f 00 01 eb  	cmp	x0, x1
   815b0: 88 09 00 54  	b.hi	0x816e0 <_ZN68_$LT$core..fmt..builders..PadAdapter$u20$as$u20$core..fmt..Write$GT$9write_str17h006d11991b68be72E+0x280>
   815b4: 1f 00 01 eb  	cmp	x0, x1
   815b8: 00 04 00 54  	b.eq	0x81638 <_ZN68_$LT$core..fmt..builders..PadAdapter$u20$as$u20$core..fmt..Write$GT$9write_str17h006d11991b68be72E+0x1d8>
   815bc: 09 00 17 8b  	add	x9, x0, x23
   815c0: e8 03 1f aa  	mov	x8, xzr
   815c4: 89 02 09 8b  	add	x9, x20, x9
   815c8: 2a 00 00 cb  	sub	x10, x1, x0
   815cc: 2b 69 68 38  	ldrb	w11, [x9, x8]
   815d0: 7f 29 00 71  	cmp	w11, #10
   815d4: a0 00 00 54  	b.eq	0x815e8 <_ZN68_$LT$core..fmt..builders..PadAdapter$u20$as$u20$core..fmt..Write$GT$9write_str17h006d11991b68be72E+0x188>
   815d8: 08 05 00 91  	add	x8, x8, #1
   815dc: 5f 01 08 eb  	cmp	x10, x8
   815e0: 61 ff ff 54  	b.ne	0x815cc <_ZN68_$LT$core..fmt..builders..PadAdapter$u20$as$u20$core..fmt..Write$GT$9write_str17h006d11991b68be72E+0x16c>
   815e4: 15 00 00 14  	b	0x81638 <_ZN68_$LT$core..fmt..builders..PadAdapter$u20$as$u20$core..fmt..Write$GT$9write_str17h006d11991b68be72E+0x1d8>
   815e8: 09 00 08 8b  	add	x9, x0, x8
   815ec: 28 01 17 8b  	add	x8, x9, x23
   815f0: 1f 01 13 eb  	cmp	x8, x19
   815f4: 17 05 00 91  	add	x23, x8, #1
   815f8: 62 f7 ff 54  	b.hs	0x814e4 <_ZN68_$LT$core..fmt..builders..PadAdapter$u20$as$u20$core..fmt..Write$GT$9write_str17h006d11991b68be72E+0x84>
   815fc: 88 6a 68 38  	ldrb	w8, [x20, x8]
   81600: 1f 29 00 71  	cmp	w8, #10
   81604: 01 f7 ff 54  	b.ne	0x814e4 <_ZN68_$LT$core..fmt..builders..PadAdapter$u20$as$u20$core..fmt..Write$GT$9write_str17h006d11991b68be72E+0x84>
   81608: 28 00 80 52  	mov	w8, #1
   8160c: 7f 02 17 eb  	cmp	x19, x23
   81610: 08 03 00 39  	strb	w8, [x24]
   81614: c8 01 00 54  	b.hi	0x8164c <_ZN68_$LT$core..fmt..builders..PadAdapter$u20$as$u20$core..fmt..Write$GT$9write_str17h006d11991b68be72E+0x1ec>
   81618: 41 05 00 54  	b.ne	0x816c0 <_ZN68_$LT$core..fmt..builders..PadAdapter$u20$as$u20$core..fmt..Write$GT$9write_str17h006d11991b68be72E+0x260>
   8161c: 28 0f 40 f9  	ldr	x8, [x25, #24]
   81620: e0 03 15 aa  	mov	x0, x21
   81624: e1 03 14 aa  	mov	x1, x20
   81628: e2 03 13 aa  	mov	x2, x19
   8162c: 00 01 3f d6  	blr	x8
   81630: e0 f3 07 36  	tbz	w0, #0, 0x814ac <_ZN68_$LT$core..fmt..builders..PadAdapter$u20$as$u20$core..fmt..Write$GT$9write_str17h006d11991b68be72E+0x4c>
   81634: 1c 00 00 14  	b	0x816a4 <_ZN68_$LT$core..fmt..builders..PadAdapter$u20$as$u20$core..fmt..Write$GT$9write_str17h006d11991b68be72E+0x244>
   81638: e8 03 1f 2a  	mov	w8, wzr
   8163c: f7 03 13 aa  	mov	x23, x19
   81640: 7f 02 17 eb  	cmp	x19, x23
   81644: 08 03 00 39  	strb	w8, [x24]
   81648: 89 fe ff 54  	b.ls	0x81618 <_ZN68_$LT$core..fmt..builders..PadAdapter$u20$as$u20$core..fmt..Write$GT$9write_str17h006d11991b68be72E+0x1b8>
   8164c: 88 6a f7 38  	ldrsb	w8, [x20, x23]
   81650: 1f 05 01 31  	cmn	w8, #65
   81654: 6d 03 00 54  	b.le	0x816c0 <_ZN68_$LT$core..fmt..builders..PadAdapter$u20$as$u20$core..fmt..Write$GT$9write_str17h006d11991b68be72E+0x260>
   81658: 28 0f 40 f9  	ldr	x8, [x25, #24]
   8165c: e0 03 15 aa  	mov	x0, x21
   81660: e1 03 14 aa  	mov	x1, x20
   81664: e2 03 17 aa  	mov	x2, x23
   81668: 00 01 3f d6  	blr	x8
   8166c: c0 01 00 37  	tbnz	w0, #0, 0x816a4 <_ZN68_$LT$core..fmt..builders..PadAdapter$u20$as$u20$core..fmt..Write$GT$9write_str17h006d11991b68be72E+0x244>
   81670: 88 6a f7 38  	ldrsb	w8, [x20, x23]
   81674: 1f 05 01 31  	cmn	w8, #65
   81678: ac f1 ff 54  	b.gt	0x814ac <_ZN68_$LT$core..fmt..builders..PadAdapter$u20$as$u20$core..fmt..Write$GT$9write_str17h006d11991b68be72E+0x4c>
   8167c: 04 00 00 d0  	adrp	x4, 0x83000 <_ZN68_$LT$core..fmt..builders..PadAdapter$u20$as$u20$core..fmt..Write$GT$9write_str17h006d11991b68be72E+0x224>
   81680: 84 20 1e 91  	add	x4, x4, #1928
   81684: e0 03 14 aa  	mov	x0, x20
   81688: e1 03 13 aa  	mov	x1, x19
   8168c: e2 03 17 aa  	mov	x2, x23
   81690: e3 03 13 aa  	mov	x3, x19
   81694: 17 00 00 94  	bl	0x816f0 <_ZN4core3str16slice_error_fail17hf7d2a92268a53d29E>
   81698: 20 00 20 d4  	brk	#0x1
   8169c: e0 03 1f 2a  	mov	w0, wzr
   816a0: 02 00 00 14  	b	0x816a8 <_ZN68_$LT$core..fmt..builders..PadAdapter$u20$as$u20$core..fmt..Write$GT$9write_str17h006d11991b68be72E+0x248>
   816a4: 20 00 80 52  	mov	w0, #1
   816a8: f4 4f 44 a9  	ldp	x20, x19, [sp, #64]
   816ac: f6 57 43 a9  	ldp	x22, x21, [sp, #48]
   816b0: f8 5f 42 a9  	ldp	x24, x23, [sp, #32]
   816b4: fa 67 41 a9  	ldp	x26, x25, [sp, #16]
   816b8: fe 6f c5 a8  	ldp	x30, x27, [sp], #80
   816bc: c0 03 5f d6  	ret
   816c0: 04 00 00 d0  	adrp	x4, 0x83000 <_ZN68_$LT$core..fmt..builders..PadAdapter$u20$as$u20$core..fmt..Write$GT$9write_str17h006d11991b68be72E+0x268>
   816c4: 84 c0 1d 91  	add	x4, x4, #1904
   816c8: e0 03 14 aa  	mov	x0, x20
   816cc: e1 03 13 aa  	mov	x1, x19
   816d0: e2 03 1f aa  	mov	x2, xzr
   816d4: e3 03 17 aa  	mov	x3, x23
   816d8: 06 00 00 94  	bl	0x816f0 <_ZN4core3str16slice_error_fail17hf7d2a92268a53d29E>
   816dc: 20 00 20 d4  	brk	#0x1
   816e0: 02 00 00 d0  	adrp	x2, 0x83000 <_ZN68_$LT$core..fmt..builders..PadAdapter$u20$as$u20$core..fmt..Write$GT$9write_str17h006d11991b68be72E+0x288>
   816e4: 42 00 1d 91  	add	x2, x2, #1856
   816e8: 7a fd ff 97  	bl	0x80cd0 <_ZN4core5slice5index26slice_start_index_len_fail17ha5c8a54d8fb05d93E>
   816ec: 20 00 20 d4  	brk	#0x1

00000000000816f0 <_ZN4core3str16slice_error_fail17hf7d2a92268a53d29E>:
   816f0: e2 0f b3 a9  	stp	x2, x3, [sp, #-208]!
   816f4: 3f 04 04 f1  	cmp	x1, #257
   816f8: 22 01 00 54  	b.hs	0x8171c <_ZN4core3str16slice_error_fail17hf7d2a92268a53d29E+0x2c>
   816fc: 09 00 00 d0  	adrp	x9, 0x83000 <_ZN4core3str16slice_error_fail17hf7d2a92268a53d29E+0x14>
   81700: 29 e1 11 91  	add	x9, x9, #1144
   81704: e8 03 1f aa  	mov	x8, xzr
   81708: e0 07 01 a9  	stp	x0, x1, [sp, #16]
   8170c: e9 23 02 a9  	stp	x9, x8, [sp, #32]
   81710: 5f 00 01 eb  	cmp	x2, x1
   81714: a9 02 00 54  	b.ls	0x81768 <_ZN4core3str16slice_error_fail17hf7d2a92268a53d29E+0x78>
   81718: 2b 00 00 14  	b	0x817c4 <_ZN4core3str16slice_error_fail17hf7d2a92268a53d29E+0xd4>
   8171c: 08 20 80 52  	mov	w8, #256
   81720: 06 00 00 14  	b	0x81738 <_ZN4core3str16slice_error_fail17hf7d2a92268a53d29E+0x48>
   81724: 09 68 e8 38  	ldrsb	w9, [x0, x8]
   81728: 3f 05 01 31  	cmn	w9, #65
   8172c: 0c 01 00 54  	b.gt	0x8174c <_ZN4core3str16slice_error_fail17hf7d2a92268a53d29E+0x5c>
   81730: 08 05 00 f1  	subs	x8, x8, #1
   81734: c0 00 00 54  	b.eq	0x8174c <_ZN4core3str16slice_error_fail17hf7d2a92268a53d29E+0x5c>
   81738: 1f 01 01 eb  	cmp	x8, x1
   8173c: 43 ff ff 54  	b.lo	0x81724 <_ZN4core3str16slice_error_fail17hf7d2a92268a53d29E+0x34>
   81740: 3f 00 08 eb  	cmp	x1, x8
   81744: 61 ff ff 54  	b.ne	0x81730 <_ZN4core3str16slice_error_fail17hf7d2a92268a53d29E+0x40>
   81748: e8 03 01 aa  	mov	x8, x1
   8174c: e0 23 01 a9  	stp	x0, x8, [sp, #16]
   81750: 08 00 00 d0  	adrp	x8, 0x83000 <_ZN4core3str16slice_error_fail17hf7d2a92268a53d29E+0x68>
   81754: 09 81 1e 91  	add	x9, x8, #1952
   81758: a8 00 80 52  	mov	w8, #5
   8175c: 5f 00 01 eb  	cmp	x2, x1
   81760: e9 23 02 a9  	stp	x9, x8, [sp, #32]
   81764: 08 03 00 54  	b.hi	0x817c4 <_ZN4core3str16slice_error_fail17hf7d2a92268a53d29E+0xd4>
   81768: 7f 00 01 eb  	cmp	x3, x1
   8176c: c8 02 00 54  	b.hi	0x817c4 <_ZN4core3str16slice_error_fail17hf7d2a92268a53d29E+0xd4>
   81770: 5f 00 03 eb  	cmp	x2, x3
   81774: 89 05 00 54  	b.ls	0x81824 <_ZN4core3str16slice_error_fail17hf7d2a92268a53d29E+0x134>
   81778: e9 ff ff f0  	adrp	x9, 0x80000 <_ZN4core3str16slice_error_fail17hf7d2a92268a53d29E+0x84>
   8177c: e8 03 00 91  	mov	x8, sp
   81780: 29 91 1f 91  	add	x9, x9, #2020
   81784: ec ff ff f0  	adrp	x12, 0x80000 <_ZN4core3str16slice_error_fail17hf7d2a92268a53d29E+0x90>
   81788: 0e 00 00 d0  	adrp	x14, 0x83000 <_ZN4core3str16slice_error_fail17hf7d2a92268a53d29E+0xa0>
   8178c: ea 23 00 91  	add	x10, sp, #8
   81790: eb 43 00 91  	add	x11, sp, #16
   81794: 8c 51 36 91  	add	x12, x12, #3476
   81798: ed 83 00 91  	add	x13, sp, #32
   8179c: ce 61 1f 91  	add	x14, x14, #2008
   817a0: e8 27 08 a9  	stp	x8, x9, [sp, #128]
   817a4: 88 00 80 52  	mov	w8, #4
   817a8: ea 27 09 a9  	stp	x10, x9, [sp, #144]
   817ac: ff 7f 06 a9  	stp	xzr, xzr, [sp, #96]
   817b0: eb 33 0a a9  	stp	x11, x12, [sp, #160]
   817b4: ed 33 0b a9  	stp	x13, x12, [sp, #176]
   817b8: e9 03 02 91  	add	x9, sp, #128
   817bc: ee 23 05 a9  	stp	x14, x8, [sp, #80]
   817c0: 14 00 00 14  	b	0x81810 <_ZN4core3str16slice_error_fail17hf7d2a92268a53d29E+0x120>
   817c4: e9 ff ff f0  	adrp	x9, 0x80000 <_ZN4core3str16slice_error_fail17hf7d2a92268a53d29E+0xd0>
   817c8: 5f 00 01 eb  	cmp	x2, x1
   817cc: e8 03 01 91  	add	x8, sp, #64
   817d0: 29 91 1f 91  	add	x9, x9, #2020
   817d4: eb ff ff f0  	adrp	x11, 0x80000 <_ZN4core3str16slice_error_fail17hf7d2a92268a53d29E+0xe0>
   817d8: 0e 00 00 d0  	adrp	x14, 0x83000 <_ZN4core3str16slice_error_fail17hf7d2a92268a53d29E+0xf0>
   817dc: ea 43 00 91  	add	x10, sp, #16
   817e0: 6b 51 36 91  	add	x11, x11, #3476
   817e4: ec 83 00 91  	add	x12, sp, #32
   817e8: 4d 80 83 9a  	csel	x13, x2, x3, hi
   817ec: ce a1 1e 91  	add	x14, x14, #1960
   817f0: e8 27 08 a9  	stp	x8, x9, [sp, #128]
   817f4: 68 00 80 52  	mov	w8, #3
   817f8: e9 03 02 91  	add	x9, sp, #128
   817fc: ff 7f 06 a9  	stp	xzr, xzr, [sp, #96]
   81800: ea 2f 09 a9  	stp	x10, x11, [sp, #144]
   81804: ec 2f 0a a9  	stp	x12, x11, [sp, #160]
   81808: ee 23 05 a9  	stp	x14, x8, [sp, #80]
   8180c: ed 23 00 f9  	str	x13, [sp, #64]
   81810: e9 23 07 a9  	stp	x9, x8, [sp, #112]
   81814: e0 43 01 91  	add	x0, sp, #80
   81818: e1 03 04 aa  	mov	x1, x4
   8181c: 4f fc ff 97  	bl	0x80958 <_ZN4core9panicking9panic_fmt17h548b34a47a4ac578E>
   81820: 20 00 20 d4  	brk	#0x1
   81824: 82 01 00 b5  	cbnz	x2, 0x81854 <_ZN4core3str16slice_error_fail17hf7d2a92268a53d29E+0x164>
   81828: e3 1b 00 f9  	str	x3, [sp, #48]
   8182c: 23 04 00 b5  	cbnz	x3, 0x818b0 <_ZN4core3str16slice_error_fail17hf7d2a92268a53d29E+0x1c0>
   81830: e3 03 1f aa  	mov	x3, xzr
   81834: 7f 00 01 eb  	cmp	x3, x1
   81838: a1 01 00 54  	b.ne	0x8186c <_ZN4core3str16slice_error_fail17hf7d2a92268a53d29E+0x17c>
   8183c: 00 00 00 d0  	adrp	x0, 0x83000 <_ZN4core3str16slice_error_fail17hf7d2a92268a53d29E+0x154>
   81840: 00 60 20 91  	add	x0, x0, #2072
   81844: 61 05 80 52  	mov	w1, #43
   81848: e2 03 04 aa  	mov	x2, x4
   8184c: 45 fd ff 97  	bl	0x80d60 <_ZN4core9panicking5panic17ha7217054e020f4cfE>
   81850: 20 00 20 d4  	brk	#0x1
   81854: 5f 00 01 eb  	cmp	x2, x1
   81858: a2 01 00 54  	b.hs	0x8188c <_ZN4core3str16slice_error_fail17hf7d2a92268a53d29E+0x19c>
   8185c: 08 68 e2 38  	ldrsb	w8, [x0, x2]
   81860: 1f 05 01 31  	cmn	w8, #65
   81864: 2c fe ff 54  	b.gt	0x81828 <_ZN4core3str16slice_error_fail17hf7d2a92268a53d29E+0x138>
   81868: 0b 00 00 14  	b	0x81894 <_ZN4core3str16slice_error_fail17hf7d2a92268a53d29E+0x1a4>
   8186c: 08 00 03 8b  	add	x8, x0, x3
   81870: eb 03 08 aa  	mov	x11, x8
   81874: 6a 15 c0 38  	ldrsb	w10, [x11], #1
   81878: 49 1d 00 12  	and	w9, w10, #0xff
   8187c: 6a 02 f8 37  	tbnz	w10, #31, 0x818c8 <_ZN4core3str16slice_error_fail17hf7d2a92268a53d29E+0x1d8>
   81880: e9 3f 00 b9  	str	w9, [sp, #60]
   81884: 28 00 80 52  	mov	w8, #1
   81888: 44 00 00 14  	b	0x81998 <_ZN4core3str16slice_error_fail17hf7d2a92268a53d29E+0x2a8>
   8188c: 3f 00 02 eb  	cmp	x1, x2
   81890: c0 fc ff 54  	b.eq	0x81828 <_ZN4core3str16slice_error_fail17hf7d2a92268a53d29E+0x138>
   81894: e3 03 02 aa  	mov	x3, x2
   81898: e2 1b 00 f9  	str	x2, [sp, #48]
   8189c: 05 00 00 14  	b	0x818b0 <_ZN4core3str16slice_error_fail17hf7d2a92268a53d29E+0x1c0>
   818a0: 3f 00 03 eb  	cmp	x1, x3
   818a4: c0 fc ff 54  	b.eq	0x8183c <_ZN4core3str16slice_error_fail17hf7d2a92268a53d29E+0x14c>
   818a8: 63 04 00 f1  	subs	x3, x3, #1
   818ac: 20 fc ff 54  	b.eq	0x81830 <_ZN4core3str16slice_error_fail17hf7d2a92268a53d29E+0x140>
   818b0: 7f 00 01 eb  	cmp	x3, x1
   818b4: 62 ff ff 54  	b.hs	0x818a0 <_ZN4core3str16slice_error_fail17hf7d2a92268a53d29E+0x1b0>
   818b8: 08 68 e3 38  	ldrsb	w8, [x0, x3]
   818bc: 1f 01 01 31  	cmn	w8, #64
   818c0: 4b ff ff 54  	b.lt	0x818a8 <_ZN4core3str16slice_error_fail17hf7d2a92268a53d29E+0x1b8>
   818c4: dc ff ff 17  	b	0x81834 <_ZN4core3str16slice_error_fail17hf7d2a92268a53d29E+0x144>
   818c8: 0a 00 01 8b  	add	x10, x0, x1
   818cc: 7f 01 0a eb  	cmp	x11, x10
   818d0: 01 01 00 54  	b.ne	0x818f0 <_ZN4core3str16slice_error_fail17hf7d2a92268a53d29E+0x200>
   818d4: e8 03 1f 2a  	mov	w8, wzr
   818d8: ec 03 0a aa  	mov	x12, x10
   818dc: 3f 7d 03 71  	cmp	w9, #223
   818e0: 2b 11 00 12  	and	w11, w9, #0x1f
   818e4: 28 01 00 54  	b.hi	0x81908 <_ZN4core3str16slice_error_fail17hf7d2a92268a53d29E+0x218>
   818e8: 68 11 1a 33  	bfi	w8, w11, #6, #5
   818ec: 1f 00 00 14  	b	0x81968 <_ZN4core3str16slice_error_fail17hf7d2a92268a53d29E+0x278>
   818f0: 0b 05 40 39  	ldrb	w11, [x8, #1]
   818f4: 0c 09 00 91  	add	x12, x8, #2
   818f8: 68 15 00 12  	and	w8, w11, #0x3f
   818fc: 3f 7d 03 71  	cmp	w9, #223
   81900: 2b 11 00 12  	and	w11, w9, #0x1f
   81904: 29 ff ff 54  	b.ls	0x818e8 <_ZN4core3str16slice_error_fail17hf7d2a92268a53d29E+0x1f8>
   81908: 9f 01 0a eb  	cmp	x12, x10
   8190c: 81 00 00 54  	b.ne	0x8191c <_ZN4core3str16slice_error_fail17hf7d2a92268a53d29E+0x22c>
   81910: ed 03 1f 2a  	mov	w13, wzr
   81914: ec 03 0a aa  	mov	x12, x10
   81918: 03 00 00 14  	b	0x81924 <_ZN4core3str16slice_error_fail17hf7d2a92268a53d29E+0x234>
   8191c: 8d 15 40 38  	ldrb	w13, [x12], #1
   81920: ad 15 00 12  	and	w13, w13, #0x3f
   81924: 3f c1 03 71  	cmp	w9, #240
   81928: 0d 15 1a 33  	bfi	w13, w8, #6, #6
   8192c: a3 00 00 54  	b.lo	0x81940 <_ZN4core3str16slice_error_fail17hf7d2a92268a53d29E+0x250>
   81930: 9f 01 0a eb  	cmp	x12, x10
   81934: c1 00 00 54  	b.ne	0x8194c <_ZN4core3str16slice_error_fail17hf7d2a92268a53d29E+0x25c>
   81938: e8 03 1f 2a  	mov	w8, wzr
   8193c: 06 00 00 14  	b	0x81954 <_ZN4core3str16slice_error_fail17hf7d2a92268a53d29E+0x264>
   81940: 6d 11 14 33  	bfi	w13, w11, #12, #5
   81944: e8 03 0d 2a  	mov	w8, w13
   81948: 08 00 00 14  	b	0x81968 <_ZN4core3str16slice_error_fail17hf7d2a92268a53d29E+0x278>
   8194c: 88 01 40 39  	ldrb	w8, [x12]
   81950: 08 15 00 12  	and	w8, w8, #0x3f
   81954: 69 09 0e 53  	ubfiz	w9, w11, #18, #3
   81958: a9 2d 1a 33  	bfi	w9, w13, #6, #12
   8195c: 28 01 08 2a  	orr	w8, w9, w8
   81960: 1f 41 44 71  	cmp	w8, #272, lsl #12
   81964: c0 f6 ff 54  	b.eq	0x8183c <_ZN4core3str16slice_error_fail17hf7d2a92268a53d29E+0x14c>
   81968: 1f 01 02 71  	cmp	w8, #128
   8196c: e8 3f 00 b9  	str	w8, [sp, #60]
   81970: 62 00 00 54  	b.hs	0x8197c <_ZN4core3str16slice_error_fail17hf7d2a92268a53d29E+0x28c>
   81974: 28 00 80 52  	mov	w8, #1
   81978: 08 00 00 14  	b	0x81998 <_ZN4core3str16slice_error_fail17hf7d2a92268a53d29E+0x2a8>
   8197c: 1f 01 20 71  	cmp	w8, #2048
   81980: 62 00 00 54  	b.hs	0x8198c <_ZN4core3str16slice_error_fail17hf7d2a92268a53d29E+0x29c>
   81984: 48 00 80 52  	mov	w8, #2
   81988: 04 00 00 14  	b	0x81998 <_ZN4core3str16slice_error_fail17hf7d2a92268a53d29E+0x2a8>
   8198c: 1f 41 40 71  	cmp	w8, #16, lsl #12
   81990: 68 00 80 52  	mov	w8, #3
   81994: 08 35 88 9a  	cinc	x8, x8, hs
   81998: 08 01 03 8b  	add	x8, x8, x3
   8199c: ea ff ff f0  	adrp	x10, 0x80000 <_ZN4core3str16slice_error_fail17hf7d2a92268a53d29E+0x2a8>
   819a0: e9 c3 00 91  	add	x9, sp, #48
   819a4: 4a 91 1f 91  	add	x10, x10, #2020
   819a8: 0c 00 00 90  	adrp	x12, 0x81000 <_ZN4core3str16slice_error_fail17hf7d2a92268a53d29E+0x2b8>
   819ac: e3 23 04 a9  	stp	x3, x8, [sp, #64]
   819b0: e8 ff ff f0  	adrp	x8, 0x80000 <_ZN4core3str16slice_error_fail17hf7d2a92268a53d29E+0x2bc>
   819b4: eb f3 00 91  	add	x11, sp, #60
   819b8: 8c 51 28 91  	add	x12, x12, #2580
   819bc: 0e 00 00 90  	adrp	x14, 0x81000 <_ZN4core3str16slice_error_fail17hf7d2a92268a53d29E+0x2cc>
   819c0: ef 43 00 91  	add	x15, sp, #16
   819c4: 08 51 36 91  	add	x8, x8, #3476
   819c8: e9 2b 08 a9  	stp	x9, x10, [sp, #128]
   819cc: e9 83 00 91  	add	x9, sp, #32
   819d0: 0a 00 00 d0  	adrp	x10, 0x83000 <_ZN4core3str16slice_error_fail17hf7d2a92268a53d29E+0x2e8>
   819d4: ed 03 01 91  	add	x13, sp, #64
   819d8: ce 71 30 91  	add	x14, x14, #3100
   819dc: eb 33 09 a9  	stp	x11, x12, [sp, #144]
   819e0: 4a 21 21 91  	add	x10, x10, #2120
   819e4: ab 00 80 52  	mov	w11, #5
   819e8: ef 23 0b a9  	stp	x15, x8, [sp, #176]
   819ec: e9 23 0c a9  	stp	x9, x8, [sp, #192]
   819f0: e8 03 02 91  	add	x8, sp, #128
   819f4: ed 3b 0a a9  	stp	x13, x14, [sp, #160]
   819f8: ff 7f 06 a9  	stp	xzr, xzr, [sp, #96]
   819fc: ea 2f 05 a9  	stp	x10, x11, [sp, #80]
   81a00: e8 2f 07 a9  	stp	x8, x11, [sp, #112]
   81a04: e0 43 01 91  	add	x0, sp, #80
   81a08: e1 03 04 aa  	mov	x1, x4
   81a0c: d3 fb ff 97  	bl	0x80958 <_ZN4core9panicking9panic_fmt17h548b34a47a4ac578E>
   81a10: 20 00 20 d4  	brk	#0x1

0000000000081a14 <_ZN41_$LT$char$u20$as$u20$core..fmt..Debug$GT$3fmt17h1eea34d619488d03E>:
   81a14: ff 83 01 d1  	sub	sp, sp, #96
   81a18: fe 6f 01 a9  	stp	x30, x27, [sp, #16]
   81a1c: fa 67 02 a9  	stp	x26, x25, [sp, #32]
   81a20: f8 5f 03 a9  	stp	x24, x23, [sp, #48]
   81a24: f6 57 04 a9  	stp	x22, x21, [sp, #64]
   81a28: f4 4f 05 a9  	stp	x20, x19, [sp, #80]
   81a2c: 33 20 42 a9  	ldp	x19, x8, [x1, #32]
   81a30: f4 03 00 aa  	mov	x20, x0
   81a34: e1 04 80 52  	mov	w1, #39
   81a38: 02 11 40 f9  	ldr	x2, [x8, #32]
   81a3c: e0 03 13 aa  	mov	x0, x19
   81a40: e2 07 00 f9  	str	x2, [sp, #8]
   81a44: 40 00 3f d6  	blr	x2
   81a48: 20 01 00 36  	tbz	w0, #0, 0x81a6c <_ZN41_$LT$char$u20$as$u20$core..fmt..Debug$GT$3fmt17h1eea34d619488d03E+0x58>
   81a4c: f4 4f 45 a9  	ldp	x20, x19, [sp, #80]
   81a50: f6 57 44 a9  	ldp	x22, x21, [sp, #64]
   81a54: f8 5f 43 a9  	ldp	x24, x23, [sp, #48]
   81a58: fa 67 42 a9  	ldp	x26, x25, [sp, #32]
   81a5c: fe 6f 41 a9  	ldp	x30, x27, [sp, #16]
   81a60: 20 00 80 52  	mov	w0, #1
   81a64: ff 83 01 91  	add	sp, sp, #96
   81a68: c0 03 5f d6  	ret
   81a6c: 94 02 40 b9  	ldr	w20, [x20]
   81a70: 88 26 00 51  	sub	w8, w20, #9
   81a74: 1f 79 00 71  	cmp	w8, #30
   81a78: 88 01 00 54  	b.hi	0x81aa8 <_ZN41_$LT$char$u20$as$u20$core..fmt..Debug$GT$3fmt17h1eea34d619488d03E+0x94>
   81a7c: 09 00 00 d0  	adrp	x9, 0x83000 <_ZN41_$LT$char$u20$as$u20$core..fmt..Debug$GT$3fmt17h1eea34d619488d03E+0x70>
   81a80: 29 61 09 91  	add	x9, x9, #600
   81a84: ca 00 00 10  	adr	x10, #24
   81a88: 2b 69 68 38  	ldrb	w11, [x9, x8]
   81a8c: 4a 09 0b 8b  	add	x10, x10, x11, lsl #2
   81a90: 95 0e 80 52  	mov	w21, #116
   81a94: 58 00 80 52  	mov	w24, #2
   81a98: 40 01 1f d6  	br	x10
   81a9c: d5 0d 80 52  	mov	w21, #110
   81aa0: 58 00 80 52  	mov	w24, #2
   81aa4: 1a 00 00 14  	b	0x81b0c <_ZN41_$LT$char$u20$as$u20$core..fmt..Debug$GT$3fmt17h1eea34d619488d03E+0xf8>
   81aa8: 9f 72 01 71  	cmp	w20, #92
   81aac: 81 00 00 54  	b.ne	0x81abc <_ZN41_$LT$char$u20$as$u20$core..fmt..Debug$GT$3fmt17h1eea34d619488d03E+0xa8>
   81ab0: 58 00 80 52  	mov	w24, #2
   81ab4: f5 03 14 2a  	mov	w21, w20
   81ab8: 15 00 00 14  	b	0x81b0c <_ZN41_$LT$char$u20$as$u20$core..fmt..Debug$GT$3fmt17h1eea34d619488d03E+0xf8>
   81abc: e0 03 14 2a  	mov	w0, w20
   81ac0: 0b 01 00 94  	bl	0x81eec <_ZN4core7unicode12unicode_data15grapheme_extend6lookup17h0525d17e88c4ad5eE>
   81ac4: 40 01 00 37  	tbnz	w0, #0, 0x81aec <_ZN41_$LT$char$u20$as$u20$core..fmt..Debug$GT$3fmt17h1eea34d619488d03E+0xd8>
   81ac8: e0 03 14 2a  	mov	w0, w20
   81acc: 56 01 00 94  	bl	0x82024 <_ZN4core7unicode9printable12is_printable17h809bc46350007ff2E>
   81ad0: e0 00 00 36  	tbz	w0, #0, 0x81aec <_ZN41_$LT$char$u20$as$u20$core..fmt..Debug$GT$3fmt17h1eea34d619488d03E+0xd8>
   81ad4: 38 00 80 52  	mov	w24, #1
   81ad8: f5 03 14 2a  	mov	w21, w20
   81adc: 0c 00 00 14  	b	0x81b0c <_ZN41_$LT$char$u20$as$u20$core..fmt..Debug$GT$3fmt17h1eea34d619488d03E+0xf8>
   81ae0: 55 0e 80 52  	mov	w21, #114
   81ae4: 58 00 80 52  	mov	w24, #2
   81ae8: 09 00 00 14  	b	0x81b0c <_ZN41_$LT$char$u20$as$u20$core..fmt..Debug$GT$3fmt17h1eea34d619488d03E+0xf8>
   81aec: 88 02 00 32  	orr	w8, w20, #0x1
   81af0: 08 11 c0 5a  	clz	w8, w8
   81af4: e9 03 14 2a  	mov	w9, w20
   81af8: aa 00 c0 d2  	mov	x10, #21474836480
   81afc: 08 7d 02 53  	lsr	w8, w8, #2
   81b00: 37 01 0a aa  	orr	x23, x9, x10
   81b04: 16 09 00 52  	eor	w22, w8, #0x7
   81b08: 78 00 80 52  	mov	w24, #3
   81b0c: 14 00 00 d0  	adrp	x20, 0x83000 <_ZN41_$LT$char$u20$as$u20$core..fmt..Debug$GT$3fmt17h1eea34d619488d03E+0x100>
   81b10: 19 00 00 d0  	adrp	x25, 0x83000 <_ZN41_$LT$char$u20$as$u20$core..fmt..Debug$GT$3fmt17h1eea34d619488d03E+0x104>
   81b14: 94 de 09 91  	add	x20, x20, #631
   81b18: 39 ef 09 91  	add	x25, x25, #635
   81b1c: fa 0a 80 52  	mov	w26, #87
   81b20: 1b 06 80 52  	mov	w27, #48
   81b24: 07 00 00 14  	b	0x81b40 <_ZN41_$LT$char$u20$as$u20$core..fmt..Debug$GT$3fmt17h1eea34d619488d03E+0x12c>
   81b28: f8 03 1f 2a  	mov	w24, wzr
   81b2c: e1 03 15 2a  	mov	w1, w21
   81b30: e2 07 40 f9  	ldr	x2, [sp, #8]
   81b34: e0 03 13 aa  	mov	x0, x19
   81b38: 40 00 3f d6  	blr	x2
   81b3c: 80 f8 07 37  	tbnz	w0, #0, 0x81a4c <_ZN41_$LT$char$u20$as$u20$core..fmt..Debug$GT$3fmt17h1eea34d619488d03E+0x38>
   81b40: e8 03 18 2a  	mov	w8, w24
   81b44: 29 ff ff 10  	adr	x9, #-28
   81b48: 8a 6a 68 38  	ldrb	w10, [x20, x8]
   81b4c: 29 09 0a 8b  	add	x9, x9, x10, lsl #2
   81b50: 38 00 80 52  	mov	w24, #1
   81b54: 81 0b 80 52  	mov	w1, #92
   81b58: 20 01 1f d6  	br	x9
   81b5c: e8 9e 60 d3  	ubfx	x8, x23, #32, #8
   81b60: 89 00 00 10  	adr	x9, #16
   81b64: 2a 6b 68 38  	ldrb	w10, [x25, x8]
   81b68: 29 09 0a 8b  	add	x9, x9, x10, lsl #2
   81b6c: 20 01 1f d6  	br	x9
   81b70: f7 de 58 92  	and	x23, x23, #0xffffff00ffffffff
   81b74: 78 00 80 52  	mov	w24, #3
   81b78: a1 0f 80 52  	mov	w1, #125
   81b7c: ed ff ff 17  	b	0x81b30 <_ZN41_$LT$char$u20$as$u20$core..fmt..Debug$GT$3fmt17h1eea34d619488d03E+0x11c>
   81b80: c8 0a 1e 53  	ubfiz	w8, w22, #2, #3
   81b84: e8 26 c8 1a  	lsr	w8, w23, w8
   81b88: 08 0d 00 12  	and	w8, w8, #0xf
   81b8c: 1f 29 00 71  	cmp	w8, #10
   81b90: 69 33 9a 1a  	csel	w9, w27, w26, lo
   81b94: 21 01 08 0b  	add	w1, w9, w8
   81b98: 76 02 00 b4  	cbz	x22, 0x81be4 <_ZN41_$LT$char$u20$as$u20$core..fmt..Debug$GT$3fmt17h1eea34d619488d03E+0x1d0>
   81b9c: d6 06 00 d1  	sub	x22, x22, #1
   81ba0: 78 00 80 52  	mov	w24, #3
   81ba4: e3 ff ff 17  	b	0x81b30 <_ZN41_$LT$char$u20$as$u20$core..fmt..Debug$GT$3fmt17h1eea34d619488d03E+0x11c>
   81ba8: e8 de 58 92  	and	x8, x23, #0xffffff00ffffffff
   81bac: 78 00 80 52  	mov	w24, #3
   81bb0: 17 01 5f b2  	orr	x23, x8, #0x200000000
   81bb4: 61 0f 80 52  	mov	w1, #123
   81bb8: de ff ff 17  	b	0x81b30 <_ZN41_$LT$char$u20$as$u20$core..fmt..Debug$GT$3fmt17h1eea34d619488d03E+0x11c>
   81bbc: e8 de 58 92  	and	x8, x23, #0xffffff00ffffffff
   81bc0: 78 00 80 52  	mov	w24, #3
   81bc4: 17 05 60 b2  	orr	x23, x8, #0x300000000
   81bc8: a1 0e 80 52  	mov	w1, #117
   81bcc: d9 ff ff 17  	b	0x81b30 <_ZN41_$LT$char$u20$as$u20$core..fmt..Debug$GT$3fmt17h1eea34d619488d03E+0x11c>
   81bd0: e8 de 58 92  	and	x8, x23, #0xffffff00ffffffff
   81bd4: 78 00 80 52  	mov	w24, #3
   81bd8: 17 01 5e b2  	orr	x23, x8, #0x400000000
   81bdc: 81 0b 80 52  	mov	w1, #92
   81be0: d4 ff ff 17  	b	0x81b30 <_ZN41_$LT$char$u20$as$u20$core..fmt..Debug$GT$3fmt17h1eea34d619488d03E+0x11c>
   81be4: e8 de 58 92  	and	x8, x23, #0xffffff00ffffffff
   81be8: 17 01 60 b2  	orr	x23, x8, #0x100000000
   81bec: 78 00 80 52  	mov	w24, #3
   81bf0: d0 ff ff 17  	b	0x81b30 <_ZN41_$LT$char$u20$as$u20$core..fmt..Debug$GT$3fmt17h1eea34d619488d03E+0x11c>
   81bf4: e0 03 13 aa  	mov	x0, x19
   81bf8: e2 07 40 f9  	ldr	x2, [sp, #8]
   81bfc: f4 4f 45 a9  	ldp	x20, x19, [sp, #80]
   81c00: f6 57 44 a9  	ldp	x22, x21, [sp, #64]
   81c04: f8 5f 43 a9  	ldp	x24, x23, [sp, #48]
   81c08: fa 67 42 a9  	ldp	x26, x25, [sp, #32]
   81c0c: fe 6f 41 a9  	ldp	x30, x27, [sp, #16]
   81c10: e1 04 80 52  	mov	w1, #39
   81c14: ff 83 01 91  	add	sp, sp, #96
   81c18: 40 00 1f d6  	br	x2

0000000000081c1c <_ZN71_$LT$core..ops..range..Range$LT$Idx$GT$$u20$as$u20$core..fmt..Debug$GT$3fmt17h38324d94ece27e25E>:
   81c1c: ff 43 01 d1  	sub	sp, sp, #80
   81c20: fe 1b 00 f9  	str	x30, [sp, #48]
   81c24: f4 4f 04 a9  	stp	x20, x19, [sp, #64]
   81c28: f4 03 00 aa  	mov	x20, x0
   81c2c: 00 00 40 f9  	ldr	x0, [x0]
   81c30: f3 03 01 aa  	mov	x19, x1
   81c34: 19 00 00 94  	bl	0x81c98 <_ZN4core3fmt3num52_$LT$impl$u20$core..fmt..Debug$u20$for$u20$usize$GT$3fmt17h420029119b997121E>
   81c38: a0 01 00 37  	tbnz	w0, #0, 0x81c6c <_ZN71_$LT$core..ops..range..Range$LT$Idx$GT$$u20$as$u20$core..fmt..Debug$GT$3fmt17h38324d94ece27e25E+0x50>
   81c3c: 60 06 42 a9  	ldp	x0, x1, [x19, #32]
   81c40: 08 00 00 d0  	adrp	x8, 0x83000 <_ZN71_$LT$core..ops..range..Range$LT$Idx$GT$$u20$as$u20$core..fmt..Debug$GT$3fmt17h38324d94ece27e25E+0x2c>
   81c44: 08 e1 1b 91  	add	x8, x8, #1784
   81c48: 29 00 80 52  	mov	w9, #1
   81c4c: e8 27 00 a9  	stp	x8, x9, [sp]
   81c50: 08 00 00 d0  	adrp	x8, 0x83000 <_ZN71_$LT$core..ops..range..Range$LT$Idx$GT$$u20$as$u20$core..fmt..Debug$GT$3fmt17h38324d94ece27e25E+0x3c>
   81c54: 08 e1 11 91  	add	x8, x8, #1144
   81c58: e2 03 00 91  	mov	x2, sp
   81c5c: ff 7f 01 a9  	stp	xzr, xzr, [sp, #16]
   81c60: e8 7f 02 a9  	stp	x8, xzr, [sp, #32]
   81c64: 58 fd ff 97  	bl	0x811c4 <_ZN4core3fmt5write17h4089dd81629a8d2eE>
   81c68: c0 00 00 34  	cbz	w0, 0x81c80 <_ZN71_$LT$core..ops..range..Range$LT$Idx$GT$$u20$as$u20$core..fmt..Debug$GT$3fmt17h38324d94ece27e25E+0x64>
   81c6c: f4 4f 44 a9  	ldp	x20, x19, [sp, #64]
   81c70: fe 1b 40 f9  	ldr	x30, [sp, #48]
   81c74: 20 00 80 52  	mov	w0, #1
   81c78: ff 43 01 91  	add	sp, sp, #80
   81c7c: c0 03 5f d6  	ret
   81c80: 80 06 40 f9  	ldr	x0, [x20, #8]
   81c84: e1 03 13 aa  	mov	x1, x19
   81c88: f4 4f 44 a9  	ldp	x20, x19, [sp, #64]
   81c8c: fe 1b 40 f9  	ldr	x30, [sp, #48]
   81c90: ff 43 01 91  	add	sp, sp, #80
   81c94: 01 00 00 14  	b	0x81c98 <_ZN4core3fmt3num52_$LT$impl$u20$core..fmt..Debug$u20$for$u20$usize$GT$3fmt17h420029119b997121E>

0000000000081c98 <_ZN4core3fmt3num52_$LT$impl$u20$core..fmt..Debug$u20$for$u20$usize$GT$3fmt17h420029119b997121E>:
   81c98: ff 43 02 d1  	sub	sp, sp, #144
   81c9c: fe 43 00 f9  	str	x30, [sp, #128]
   81ca0: 28 30 40 b9  	ldr	w8, [x1, #48]
   81ca4: a8 05 20 37  	tbnz	w8, #4, 0x81d58 <_ZN4core3fmt3num52_$LT$impl$u20$core..fmt..Debug$u20$for$u20$usize$GT$3fmt17h420029119b997121E+0xc0>
   81ca8: 68 07 28 37  	tbnz	w8, #5, 0x81d94 <_ZN4core3fmt3num52_$LT$impl$u20$core..fmt..Debug$u20$for$u20$usize$GT$3fmt17h420029119b997121E+0xfc>
   81cac: 08 fc 44 d3  	lsr	x8, x0, #4
   81cb0: 1f c5 09 f1  	cmp	x8, #625
   81cb4: c3 0a 00 54  	b.lo	0x81e0c <_ZN4core3fmt3num52_$LT$impl$u20$core..fmt..Debug$u20$for$u20$usize$GT$3fmt17h420029119b997121E+0x174>
   81cb8: 69 29 8b d2  	mov	x9, #22859
   81cbc: c9 10 a7 f2  	movk	x9, #14470, lsl #16
   81cc0: c9 ba d8 f2  	movk	x9, #50646, lsl #32
   81cc4: eb a3 90 52  	mov	w11, #34079
   81cc8: 0d 00 00 d0  	adrp	x13, 0x83000 <_ZN4core3fmt3num52_$LT$impl$u20$core..fmt..Debug$u20$for$u20$usize$GT$3fmt17h420029119b997121E+0x38>
   81ccc: ef 1f 9c 52  	mov	w15, #57599
   81cd0: e8 03 1f aa  	mov	x8, xzr
   81cd4: a9 8d e6 f2  	movk	x9, #13421, lsl #48
   81cd8: ea e1 84 12  	mov	w10, #-10000
   81cdc: 6b 3d aa 72  	movk	w11, #20971, lsl #16
   81ce0: 6c 0c 80 12  	mov	w12, #-100
   81ce4: ad 29 14 91  	add	x13, x13, #1290
   81ce8: ee 03 00 91  	mov	x14, sp
   81cec: af be a0 72  	movk	w15, #1525, lsl #16
   81cf0: 11 7c c9 9b  	umulh	x17, x0, x9
   81cf4: f0 03 00 aa  	mov	x16, x0
   81cf8: 1f 00 0f eb  	cmp	x0, x15
   81cfc: 20 fe 4b d3  	lsr	x0, x17, #11
   81d00: 10 40 0a 1b  	madd	w16, w0, w10, w16
   81d04: 11 3e 00 12  	and	w17, w16, #0xffff
   81d08: 31 7e ab 9b  	umull	x17, w17, w11
   81d0c: 31 fe 65 d3  	lsr	x17, x17, #37
   81d10: 30 42 0c 1b  	madd	w16, w17, w12, w16
   81d14: b1 05 11 8b  	add	x17, x13, x17, lsl #1
   81d18: b0 25 30 8b  	add	x16, x13, w16, uxth #1
   81d1c: 22 02 40 39  	ldrb	w2, [x17]
   81d20: 31 06 40 39  	ldrb	w17, [x17, #1]
   81d24: 03 06 40 39  	ldrb	w3, [x16, #1]
   81d28: 10 02 40 39  	ldrb	w16, [x16]
   81d2c: d2 01 08 8b  	add	x18, x14, x8
   81d30: 08 11 00 d1  	sub	x8, x8, #4
   81d34: 51 92 00 39  	strb	w17, [x18, #36]
   81d38: 42 8e 00 39  	strb	w2, [x18, #35]
   81d3c: 43 9a 00 39  	strb	w3, [x18, #38]
   81d40: 50 96 00 39  	strb	w16, [x18, #37]
   81d44: 68 fd ff 54  	b.hi	0x81cf0 <_ZN4core3fmt3num52_$LT$impl$u20$core..fmt..Debug$u20$for$u20$usize$GT$3fmt17h420029119b997121E+0x58>
   81d48: 08 9d 00 91  	add	x8, x8, #39
   81d4c: 1f 8c 01 f1  	cmp	x0, #99
   81d50: 4c 06 00 54  	b.gt	0x81e18 <_ZN4core3fmt3num52_$LT$impl$u20$core..fmt..Debug$u20$for$u20$usize$GT$3fmt17h420029119b997121E+0x180>
   81d54: 43 00 00 14  	b	0x81e60 <_ZN4core3fmt3num52_$LT$impl$u20$core..fmt..Debug$u20$for$u20$usize$GT$3fmt17h420029119b997121E+0x1c8>
   81d58: e8 03 1f aa  	mov	x8, xzr
   81d5c: e9 03 00 91  	mov	x9, sp
   81d60: 0c 0c 00 12  	and	w12, w0, #0xf
   81d64: 0d 06 80 52  	mov	w13, #48
   81d68: 0b fc 44 d3  	lsr	x11, x0, #4
   81d6c: 0d 0c 00 33  	bfxil	w13, w0, #0, #4
   81d70: 8e 5d 01 11  	add	w14, w12, #87
   81d74: 9f 29 00 71  	cmp	w12, #10
   81d78: 2a 01 08 8b  	add	x10, x9, x8
   81d7c: ac 31 8e 1a  	csel	w12, w13, w14, lo
   81d80: 08 05 00 d1  	sub	x8, x8, #1
   81d84: e0 03 0b aa  	mov	x0, x11
   81d88: 4c fd 01 39  	strb	w12, [x10, #127]
   81d8c: ab fe ff b5  	cbnz	x11, 0x81d60 <_ZN4core3fmt3num52_$LT$impl$u20$core..fmt..Debug$u20$for$u20$usize$GT$3fmt17h420029119b997121E+0xc8>
   81d90: 0f 00 00 14  	b	0x81dcc <_ZN4core3fmt3num52_$LT$impl$u20$core..fmt..Debug$u20$for$u20$usize$GT$3fmt17h420029119b997121E+0x134>
   81d94: e8 03 1f aa  	mov	x8, xzr
   81d98: e9 03 00 91  	mov	x9, sp
   81d9c: 0c 0c 00 12  	and	w12, w0, #0xf
   81da0: 0d 06 80 52  	mov	w13, #48
   81da4: 0b fc 44 d3  	lsr	x11, x0, #4
   81da8: 0d 0c 00 33  	bfxil	w13, w0, #0, #4
   81dac: 8e dd 00 11  	add	w14, w12, #55
   81db0: 9f 29 00 71  	cmp	w12, #10
   81db4: 2a 01 08 8b  	add	x10, x9, x8
   81db8: ac 31 8e 1a  	csel	w12, w13, w14, lo
   81dbc: 08 05 00 d1  	sub	x8, x8, #1
   81dc0: e0 03 0b aa  	mov	x0, x11
   81dc4: 4c fd 01 39  	strb	w12, [x10, #127]
   81dc8: ab fe ff b5  	cbnz	x11, 0x81d9c <_ZN4core3fmt3num52_$LT$impl$u20$core..fmt..Debug$u20$for$u20$usize$GT$3fmt17h420029119b997121E+0x104>
   81dcc: 00 01 02 91  	add	x0, x8, #128
   81dd0: 1f 04 02 f1  	cmp	x0, #129
   81dd4: 22 08 00 54  	b.hs	0x81ed8 <_ZN4core3fmt3num52_$LT$impl$u20$core..fmt..Debug$u20$for$u20$usize$GT$3fmt17h420029119b997121E+0x240>
   81dd8: e9 03 00 91  	mov	x9, sp
   81ddc: e4 03 08 cb  	neg	x4, x8
   81de0: 28 01 08 8b  	add	x8, x9, x8
   81de4: 03 01 02 91  	add	x3, x8, #128
   81de8: 08 00 00 d0  	adrp	x8, 0x83000 <_ZN4core3fmt3num52_$LT$impl$u20$core..fmt..Debug$u20$for$u20$usize$GT$3fmt17h420029119b997121E+0x158>
   81dec: 08 41 1a 91  	add	x8, x8, #1680
   81df0: 42 00 80 52  	mov	w2, #2
   81df4: e0 03 01 aa  	mov	x0, x1
   81df8: e1 03 08 aa  	mov	x1, x8
   81dfc: e6 fa ff 97  	bl	0x80994 <_ZN4core3fmt9Formatter12pad_integral17h4be5fae25bf478d6E>
   81e00: fe 43 40 f9  	ldr	x30, [sp, #128]
   81e04: ff 43 02 91  	add	sp, sp, #144
   81e08: c0 03 5f d6  	ret
   81e0c: e8 04 80 52  	mov	w8, #39
   81e10: 1f 8c 01 f1  	cmp	x0, #99
   81e14: 6d 02 00 54  	b.le	0x81e60 <_ZN4core3fmt3num52_$LT$impl$u20$core..fmt..Debug$u20$for$u20$usize$GT$3fmt17h420029119b997121E+0x1c8>
   81e18: ea a3 90 52  	mov	w10, #34079
   81e1c: 09 3c 00 12  	and	w9, w0, #0xffff
   81e20: 6a 3d aa 72  	movk	w10, #20971, lsl #16
   81e24: 29 7d aa 9b  	umull	x9, w9, w10
   81e28: 6b 0c 80 12  	mov	w11, #-100
   81e2c: 0a 00 00 d0  	adrp	x10, 0x83000 <_ZN4core3fmt3num52_$LT$impl$u20$core..fmt..Debug$u20$for$u20$usize$GT$3fmt17h420029119b997121E+0x19c>
   81e30: 29 fd 65 d3  	lsr	x9, x9, #37
   81e34: 4a 29 14 91  	add	x10, x10, #1290
   81e38: 2b 01 0b 1b  	madd	w11, w9, w11, w0
   81e3c: 4a 25 2b 8b  	add	x10, x10, w11, uxth #1
   81e40: 4b 05 40 39  	ldrb	w11, [x10, #1]
   81e44: 4a 01 40 39  	ldrb	w10, [x10]
   81e48: 08 09 00 d1  	sub	x8, x8, #2
   81e4c: ec 03 00 91  	mov	x12, sp
   81e50: 8c 01 08 8b  	add	x12, x12, x8
   81e54: e0 03 09 aa  	mov	x0, x9
   81e58: 8b 05 00 39  	strb	w11, [x12, #1]
   81e5c: 8a 01 00 39  	strb	w10, [x12]
   81e60: 1f 28 00 f1  	cmp	x0, #10
   81e64: ca 00 00 54  	b.ge	0x81e7c <_ZN4core3fmt3num52_$LT$impl$u20$core..fmt..Debug$u20$for$u20$usize$GT$3fmt17h420029119b997121E+0x1e4>
   81e68: 08 05 00 d1  	sub	x8, x8, #1
   81e6c: 09 c0 00 11  	add	w9, w0, #48
   81e70: ea 03 00 91  	mov	x10, sp
   81e74: 49 69 28 38  	strb	w9, [x10, x8]
   81e78: 0b 00 00 14  	b	0x81ea4 <_ZN4core3fmt3num52_$LT$impl$u20$core..fmt..Debug$u20$for$u20$usize$GT$3fmt17h420029119b997121E+0x20c>
   81e7c: 09 00 00 d0  	adrp	x9, 0x83000 <_ZN4core3fmt3num52_$LT$impl$u20$core..fmt..Debug$u20$for$u20$usize$GT$3fmt17h420029119b997121E+0x1ec>
   81e80: 29 29 14 91  	add	x9, x9, #1290
   81e84: 29 05 00 8b  	add	x9, x9, x0, lsl #1
   81e88: 2a 05 40 39  	ldrb	w10, [x9, #1]
   81e8c: 29 01 40 39  	ldrb	w9, [x9]
   81e90: 08 09 00 d1  	sub	x8, x8, #2
   81e94: eb 03 00 91  	mov	x11, sp
   81e98: 6b 01 08 8b  	add	x11, x11, x8
   81e9c: 6a 05 00 39  	strb	w10, [x11, #1]
   81ea0: 69 01 00 39  	strb	w9, [x11]
   81ea4: e9 03 00 91  	mov	x9, sp
   81ea8: ea 04 80 52  	mov	w10, #39
   81eac: 23 01 08 8b  	add	x3, x9, x8
   81eb0: 44 01 08 cb  	sub	x4, x10, x8
   81eb4: 08 00 00 d0  	adrp	x8, 0x83000 <_ZN4core3fmt3num52_$LT$impl$u20$core..fmt..Debug$u20$for$u20$usize$GT$3fmt17h420029119b997121E+0x224>
   81eb8: 08 e1 11 91  	add	x8, x8, #1144
   81ebc: e0 03 01 aa  	mov	x0, x1
   81ec0: e1 03 08 aa  	mov	x1, x8
   81ec4: e2 03 1f aa  	mov	x2, xzr
   81ec8: b3 fa ff 97  	bl	0x80994 <_ZN4core3fmt9Formatter12pad_integral17h4be5fae25bf478d6E>
   81ecc: fe 43 40 f9  	ldr	x30, [sp, #128]
   81ed0: ff 43 02 91  	add	sp, sp, #144
   81ed4: c0 03 5f d6  	ret
   81ed8: 02 00 00 d0  	adrp	x2, 0x83000 <_ZN4core3fmt3num52_$LT$impl$u20$core..fmt..Debug$u20$for$u20$usize$GT$3fmt17h420029119b997121E+0x248>
   81edc: 42 e0 19 91  	add	x2, x2, #1656
   81ee0: 01 10 80 52  	mov	w1, #128
   81ee4: 7b fb ff 97  	bl	0x80cd0 <_ZN4core5slice5index26slice_start_index_len_fail17ha5c8a54d8fb05d93E>
   81ee8: 20 00 20 d4  	brk	#0x1

0000000000081eec <_ZN4core7unicode12unicode_data15grapheme_extend6lookup17h0525d17e88c4ad5eE>:
   81eec: 0a 00 00 d0  	adrp	x10, 0x83000 <_ZN4core7unicode12unicode_data15grapheme_extend6lookup17h0525d17e88c4ad5eE+0x8>
   81ef0: e8 03 1f aa  	mov	x8, xzr
   81ef4: 09 50 15 53  	lsl	w9, w0, #11
   81ef8: ec 03 80 52  	mov	w12, #31
   81efc: 4a 31 3a 91  	add	x10, x10, #3724
   81f00: eb 03 80 52  	mov	w11, #31
   81f04: 04 00 00 14  	b	0x81f14 <_ZN4core7unicode12unicode_data15grapheme_extend6lookup17h0525d17e88c4ad5eE+0x28>
   81f08: 88 05 00 91  	add	x8, x12, #1
   81f0c: 6c 01 08 eb  	subs	x12, x11, x8
   81f10: 29 01 00 54  	b.ls	0x81f34 <_ZN4core7unicode12unicode_data15grapheme_extend6lookup17h0525d17e88c4ad5eE+0x48>
   81f14: 0c 05 4c 8b  	add	x12, x8, x12, lsr #1
   81f18: 4d 79 6c b8  	ldr	w13, [x10, x12, lsl #2]
   81f1c: ad 51 15 53  	lsl	w13, w13, #11
   81f20: bf 01 09 6b  	cmp	w13, w9
   81f24: 23 ff ff 54  	b.lo	0x81f08 <_ZN4core7unicode12unicode_data15grapheme_extend6lookup17h0525d17e88c4ad5eE+0x1c>
   81f28: eb 03 0c aa  	mov	x11, x12
   81f2c: 01 ff ff 54  	b.ne	0x81f0c <_ZN4core7unicode12unicode_data15grapheme_extend6lookup17h0525d17e88c4ad5eE+0x20>
   81f30: 88 05 00 91  	add	x8, x12, #1
   81f34: 1f 79 00 f1  	cmp	x8, #30
   81f38: e8 05 00 54  	b.hi	0x81ff4 <_ZN4core7unicode12unicode_data15grapheme_extend6lookup17h0525d17e88c4ad5eE+0x108>
   81f3c: 1f 79 00 f1  	cmp	x8, #30
   81f40: 21 01 00 54  	b.ne	0x81f64 <_ZN4core7unicode12unicode_data15grapheme_extend6lookup17h0525d17e88c4ad5eE+0x78>
   81f44: 2b 56 80 52  	mov	w11, #689
   81f48: 09 05 00 f1  	subs	x9, x8, #1
   81f4c: 63 01 00 54  	b.lo	0x81f78 <_ZN4core7unicode12unicode_data15grapheme_extend6lookup17h0525d17e88c4ad5eE+0x8c>
   81f50: 3f 7d 00 f1  	cmp	x9, #31
   81f54: c2 05 00 54  	b.hs	0x8200c <_ZN4core7unicode12unicode_data15grapheme_extend6lookup17h0525d17e88c4ad5eE+0x120>
   81f58: 49 79 69 b8  	ldr	w9, [x10, x9, lsl #2]
   81f5c: 2c 51 00 12  	and	w12, w9, #0x1fffff
   81f60: 07 00 00 14  	b	0x81f7c <_ZN4core7unicode12unicode_data15grapheme_extend6lookup17h0525d17e88c4ad5eE+0x90>
   81f64: 49 09 08 8b  	add	x9, x10, x8, lsl #2
   81f68: 29 05 40 b9  	ldr	w9, [x9, #4]
   81f6c: 2b fd 55 d3  	lsr	x11, x9, #21
   81f70: 09 05 00 f1  	subs	x9, x8, #1
   81f74: e2 fe ff 54  	b.hs	0x81f50 <_ZN4core7unicode12unicode_data15grapheme_extend6lookup17h0525d17e88c4ad5eE+0x64>
   81f78: ec 03 1f 2a  	mov	w12, wzr
   81f7c: 48 79 68 b8  	ldr	w8, [x10, x8, lsl #2]
   81f80: 08 fd 55 d3  	lsr	x8, x8, #21
   81f84: 09 05 00 91  	add	x9, x8, #1
   81f88: 7f 01 09 eb  	cmp	x11, x9
   81f8c: 60 02 00 54  	b.eq	0x81fd8 <_ZN4core7unicode12unicode_data15grapheme_extend6lookup17h0525d17e88c4ad5eE+0xec>
   81f90: 0a 00 0c 4b  	sub	w10, w0, w12
   81f94: 1f c5 0a f1  	cmp	x8, #689
   81f98: 2c 56 80 52  	mov	w12, #689
   81f9c: 00 81 8c 9a  	csel	x0, x8, x12, hi
   81fa0: 0c 00 00 d0  	adrp	x12, 0x83000 <_ZN4core7unicode12unicode_data15grapheme_extend6lookup17h0525d17e88c4ad5eE+0xbc>
   81fa4: e9 03 1f 2a  	mov	w9, wzr
   81fa8: 6b 05 00 d1  	sub	x11, x11, #1
   81fac: 8c e1 3c 91  	add	x12, x12, #3896
   81fb0: 1f 00 08 eb  	cmp	x0, x8
   81fb4: 60 01 00 54  	b.eq	0x81fe0 <_ZN4core7unicode12unicode_data15grapheme_extend6lookup17h0525d17e88c4ad5eE+0xf4>
   81fb8: 8d 69 68 38  	ldrb	w13, [x12, x8]
   81fbc: 29 01 0d 0b  	add	w9, w9, w13
   81fc0: 3f 01 0a 6b  	cmp	w9, w10
   81fc4: a8 00 00 54  	b.hi	0x81fd8 <_ZN4core7unicode12unicode_data15grapheme_extend6lookup17h0525d17e88c4ad5eE+0xec>
   81fc8: 08 05 00 91  	add	x8, x8, #1
   81fcc: 7f 01 08 eb  	cmp	x11, x8
   81fd0: 01 ff ff 54  	b.ne	0x81fb0 <_ZN4core7unicode12unicode_data15grapheme_extend6lookup17h0525d17e88c4ad5eE+0xc4>
   81fd4: e8 03 0b aa  	mov	x8, x11
   81fd8: 00 01 00 12  	and	w0, w8, #0x1
   81fdc: c0 03 5f d6  	ret
   81fe0: 02 00 00 f0  	adrp	x2, 0x84000 <_ZN4core7unicode12unicode_data15grapheme_extend6lookup17h0525d17e88c4ad5eE+0x100>
   81fe4: 42 c0 07 91  	add	x2, x2, #496
   81fe8: 21 56 80 52  	mov	w1, #689
   81fec: ec f9 ff 97  	bl	0x8079c <_ZN4core9panicking18panic_bounds_check17h21e59d1a29014f09E>
   81ff0: 20 00 20 d4  	brk	#0x1
   81ff4: 02 00 00 d0  	adrp	x2, 0x83000 <_ZN4core7unicode12unicode_data15grapheme_extend6lookup17h0525d17e88c4ad5eE+0x110>
   81ff8: 42 20 3c 91  	add	x2, x2, #3848
   81ffc: e1 03 80 52  	mov	w1, #31
   82000: e0 03 08 aa  	mov	x0, x8
   82004: e6 f9 ff 97  	bl	0x8079c <_ZN4core9panicking18panic_bounds_check17h21e59d1a29014f09E>
   82008: 20 00 20 d4  	brk	#0x1
   8200c: 02 00 00 b0  	adrp	x2, 0x83000 <_ZN4core7unicode12unicode_data15grapheme_extend6lookup17h0525d17e88c4ad5eE+0x124>
   82010: 42 80 3c 91  	add	x2, x2, #3872
   82014: e1 03 80 52  	mov	w1, #31
   82018: e0 03 09 aa  	mov	x0, x9
   8201c: e0 f9 ff 97  	bl	0x8079c <_ZN4core9panicking18panic_bounds_check17h21e59d1a29014f09E>
   82020: 20 00 20 d4  	brk	#0x1

0000000000082024 <_ZN4core7unicode9printable12is_printable17h809bc46350007ff2E>:
   82024: 1f 40 40 71  	cmp	w0, #16, lsl #12
   82028: a2 04 00 54  	b.hs	0x820bc <_ZN4core7unicode9printable12is_printable17h809bc46350007ff2E+0x98>
   8202c: 0c 00 00 b0  	adrp	x12, 0x83000 <_ZN4core7unicode9printable12is_printable17h809bc46350007ff2E+0xc>
   82030: 0b 00 00 b0  	adrp	x11, 0x83000 <_ZN4core7unicode9printable12is_printable17h809bc46350007ff2E+0x10>
   82034: 0d 00 00 b0  	adrp	x13, 0x83000 <_ZN4core7unicode9printable12is_printable17h809bc46350007ff2E+0x14>
   82038: e9 03 1f aa  	mov	x9, xzr
   8203c: 8c 9d 23 91  	add	x12, x12, #2279
   82040: 0a 7c 08 53  	lsr	w10, w0, #8
   82044: 6b 61 25 91  	add	x11, x11, #2392
   82048: ad e5 24 91  	add	x13, x13, #2361
   8204c: 88 01 40 39  	ldrb	w8, [x12]
   82050: 8e 05 40 39  	ldrb	w14, [x12, #1]
   82054: 8c 09 00 91  	add	x12, x12, #2
   82058: 1f 01 2a 6b  	cmp	w8, w10, uxtb
   8205c: 28 01 0e 8b  	add	x8, x9, x14
   82060: 81 01 00 54  	b.ne	0x82090 <_ZN4core7unicode9printable12is_printable17h809bc46350007ff2E+0x6c>
   82064: 1f 01 09 eb  	cmp	x8, x9
   82068: a3 11 00 54  	b.lo	0x8229c <_ZN4core7unicode9printable12is_printable17h809bc46350007ff2E+0x278>
   8206c: 1f 89 04 f1  	cmp	x8, #290
   82070: 28 12 00 54  	b.hi	0x822b4 <_ZN4core7unicode9printable12is_printable17h809bc46350007ff2E+0x290>
   82074: 69 01 09 8b  	add	x9, x11, x9
   82078: ee 00 00 b4  	cbz	x14, 0x82094 <_ZN4core7unicode9printable12is_printable17h809bc46350007ff2E+0x70>
   8207c: 2f 15 40 38  	ldrb	w15, [x9], #1
   82080: ce 05 00 d1  	sub	x14, x14, #1
   82084: ff 01 20 6b  	cmp	w15, w0, uxtb
   82088: 81 ff ff 54  	b.ne	0x82078 <_ZN4core7unicode9printable12is_printable17h809bc46350007ff2E+0x54>
   8208c: 32 00 00 14  	b	0x82154 <_ZN4core7unicode9printable12is_printable17h809bc46350007ff2E+0x130>
   82090: 88 00 00 54  	b.hi	0x820a0 <_ZN4core7unicode9printable12is_printable17h809bc46350007ff2E+0x7c>
   82094: 9f 01 0d eb  	cmp	x12, x13
   82098: e9 03 08 aa  	mov	x9, x8
   8209c: 81 fd ff 54  	b.ne	0x8204c <_ZN4core7unicode9printable12is_printable17h809bc46350007ff2E+0x28>
   820a0: 0b 00 00 b0  	adrp	x11, 0x83000 <_ZN4core7unicode9printable12is_printable17h809bc46350007ff2E+0x80>
   820a4: 0a 00 00 b0  	adrp	x10, 0x83000 <_ZN4core7unicode9printable12is_printable17h809bc46350007ff2E+0x84>
   820a8: 09 3c 00 12  	and	w9, w0, #0xffff
   820ac: 6b e9 29 91  	add	x11, x11, #2682
   820b0: 28 00 80 52  	mov	w8, #1
   820b4: 4a bd 2e 91  	add	x10, x10, #2991
   820b8: 2f 00 00 14  	b	0x82174 <_ZN4core7unicode9printable12is_printable17h809bc46350007ff2E+0x150>
   820bc: 1f 80 40 71  	cmp	w0, #32, lsl #12
   820c0: 42 07 00 54  	b.hs	0x821a8 <_ZN4core7unicode9printable12is_printable17h809bc46350007ff2E+0x184>
   820c4: 0c 00 00 b0  	adrp	x12, 0x83000 <_ZN4core7unicode9printable12is_printable17h809bc46350007ff2E+0xa4>
   820c8: 0b 00 00 b0  	adrp	x11, 0x83000 <_ZN4core7unicode9printable12is_printable17h809bc46350007ff2E+0xa8>
   820cc: 0d 00 00 b0  	adrp	x13, 0x83000 <_ZN4core7unicode9printable12is_printable17h809bc46350007ff2E+0xac>
   820d0: e9 03 1f aa  	mov	x9, xzr
   820d4: 8c 21 2f 91  	add	x12, x12, #3016
   820d8: 0a 7c 08 53  	lsr	w10, w0, #8
   820dc: 6b 51 30 91  	add	x11, x11, #3092
   820e0: ad 51 30 91  	add	x13, x13, #3092
   820e4: 88 01 40 39  	ldrb	w8, [x12]
   820e8: 8e 05 40 39  	ldrb	w14, [x12, #1]
   820ec: 8c 09 00 91  	add	x12, x12, #2
   820f0: 1f 01 2a 6b  	cmp	w8, w10, uxtb
   820f4: 28 01 0e 8b  	add	x8, x9, x14
   820f8: 81 01 00 54  	b.ne	0x82128 <_ZN4core7unicode9printable12is_printable17h809bc46350007ff2E+0x104>
   820fc: 1f 01 09 eb  	cmp	x8, x9
   82100: e3 0c 00 54  	b.lo	0x8229c <_ZN4core7unicode9printable12is_printable17h809bc46350007ff2E+0x278>
   82104: 1f bd 02 f1  	cmp	x8, #175
   82108: e8 0d 00 54  	b.hi	0x822c4 <_ZN4core7unicode9printable12is_printable17h809bc46350007ff2E+0x2a0>
   8210c: 69 01 09 8b  	add	x9, x11, x9
   82110: ee 00 00 b4  	cbz	x14, 0x8212c <_ZN4core7unicode9printable12is_printable17h809bc46350007ff2E+0x108>
   82114: 2f 15 40 38  	ldrb	w15, [x9], #1
   82118: ce 05 00 d1  	sub	x14, x14, #1
   8211c: ff 01 20 6b  	cmp	w15, w0, uxtb
   82120: 81 ff ff 54  	b.ne	0x82110 <_ZN4core7unicode9printable12is_printable17h809bc46350007ff2E+0xec>
   82124: 0c 00 00 14  	b	0x82154 <_ZN4core7unicode9printable12is_printable17h809bc46350007ff2E+0x130>
   82128: 88 00 00 54  	b.hi	0x82138 <_ZN4core7unicode9printable12is_printable17h809bc46350007ff2E+0x114>
   8212c: 9f 01 0d eb  	cmp	x12, x13
   82130: e9 03 08 aa  	mov	x9, x8
   82134: 81 fd ff 54  	b.ne	0x820e4 <_ZN4core7unicode9printable12is_printable17h809bc46350007ff2E+0xc0>
   82138: 0b 00 00 b0  	adrp	x11, 0x83000 <_ZN4core7unicode9printable12is_printable17h809bc46350007ff2E+0x118>
   8213c: 0a 00 00 b0  	adrp	x10, 0x83000 <_ZN4core7unicode9printable12is_printable17h809bc46350007ff2E+0x11c>
   82140: 09 3c 00 12  	and	w9, w0, #0xffff
   82144: 6b 0d 33 91  	add	x11, x11, #3267
   82148: 28 00 80 52  	mov	w8, #1
   8214c: 4a 99 39 91  	add	x10, x10, #3686
   82150: 45 00 00 14  	b	0x82264 <_ZN4core7unicode9printable12is_printable17h809bc46350007ff2E+0x240>
   82154: e0 03 00 12  	and	w0, wzr, #0x1
   82158: c0 03 5f d6  	ret
   8215c: eb 03 0d aa  	mov	x11, x13
   82160: 29 01 0c 6b  	subs	w9, w9, w12
   82164: 84 09 00 54  	b.mi	0x82294 <_ZN4core7unicode9printable12is_printable17h809bc46350007ff2E+0x270>
   82168: 7f 01 0a eb  	cmp	x11, x10
   8216c: 08 01 00 52  	eor	w8, w8, #0x1
   82170: 20 09 00 54  	b.eq	0x82294 <_ZN4core7unicode9printable12is_printable17h809bc46350007ff2E+0x270>
   82174: ed 03 0b aa  	mov	x13, x11
   82178: ae 15 c0 38  	ldrsb	w14, [x13], #1
   8217c: cc 1d 00 12  	and	w12, w14, #0xff
   82180: ee fe ff 36  	tbz	w14, #31, 0x8215c <_ZN4core7unicode9printable12is_printable17h809bc46350007ff2E+0x138>
   82184: bf 01 0a eb  	cmp	x13, x10
   82188: a0 0a 00 54  	b.eq	0x822dc <_ZN4core7unicode9printable12is_printable17h809bc46350007ff2E+0x2b8>
   8218c: 8d 19 00 12  	and	w13, w12, #0x7f
   82190: 6c 05 40 39  	ldrb	w12, [x11, #1]
   82194: 6b 09 00 91  	add	x11, x11, #2
   82198: ac 19 18 33  	bfi	w12, w13, #8, #7
   8219c: 29 01 0c 6b  	subs	w9, w9, w12
   821a0: 45 fe ff 54  	b.pl	0x82168 <_ZN4core7unicode9printable12is_printable17h809bc46350007ff2E+0x144>
   821a4: 3c 00 00 14  	b	0x82294 <_ZN4core7unicode9printable12is_printable17h809bc46350007ff2E+0x270>
   821a8: a8 96 9d 52  	mov	w8, #60597
   821ac: 88 ff bf 72  	movk	w8, #65532, lsl #16
   821b0: a9 b6 9d 52  	mov	w9, #60853
   821b4: 08 00 08 0b  	add	w8, w0, w8
   821b8: 49 01 a0 72  	movk	w9, #10, lsl #16
   821bc: 1f 01 09 6b  	cmp	w8, w9
   821c0: e8 03 1f 2a  	mov	w8, wzr
   821c4: 83 06 00 54  	b.lo	0x82294 <_ZN4core7unicode9printable12is_printable17h809bc46350007ff2E+0x270>
   821c8: 49 bc 80 52  	mov	w9, #1506
   821cc: a9 ff bf 72  	movk	w9, #65533, lsl #16
   821d0: 09 00 09 0b  	add	w9, w0, w9
   821d4: 3f 89 17 71  	cmp	w9, #1506
   821d8: e3 05 00 54  	b.lo	0x82294 <_ZN4core7unicode9printable12is_printable17h809bc46350007ff2E+0x270>
   821dc: 29 f5 38 11  	add	w9, w9, #3645
   821e0: 3f 7d 30 71  	cmp	w9, #3103
   821e4: 83 05 00 54  	b.lo	0x82294 <_ZN4core7unicode9printable12is_printable17h809bc46350007ff2E+0x270>
   821e8: c9 2b 86 52  	mov	w9, #12638
   821ec: a9 ff bf 72  	movk	w9, #65533, lsl #16
   821f0: 09 00 09 0b  	add	w9, w0, w9
   821f4: 3f 39 00 71  	cmp	w9, #14
   821f8: e3 04 00 54  	b.lo	0x82294 <_ZN4core7unicode9printable12is_printable17h809bc46350007ff2E+0x270>
   821fc: ca 03 97 52  	mov	w10, #47134
   82200: 09 4c 1f 12  	and	w9, w0, #0x1ffffe
   82204: 4a 00 a0 72  	movk	w10, #2, lsl #16
   82208: 3f 01 0a 6b  	cmp	w9, w10
   8220c: 40 04 00 54  	b.eq	0x82294 <_ZN4core7unicode9printable12is_printable17h809bc46350007ff2E+0x270>
   82210: 49 24 8b 52  	mov	w9, #22818
   82214: a9 ff bf 72  	movk	w9, #65533, lsl #16
   82218: 09 00 09 0b  	add	w9, w0, w9
   8221c: 3f 89 00 71  	cmp	w9, #34
   82220: a3 03 00 54  	b.lo	0x82294 <_ZN4core7unicode9printable12is_printable17h809bc46350007ff2E+0x270>
   82224: 69 19 89 52  	mov	w9, #18635
   82228: a9 ff bf 72  	movk	w9, #65533, lsl #16
   8222c: 09 00 09 0b  	add	w9, w0, w9
   82230: 3f 2d 00 71  	cmp	w9, #11
   82234: 03 03 00 54  	b.lo	0x82294 <_ZN4core7unicode9printable12is_printable17h809bc46350007ff2E+0x270>
   82238: 08 3e 80 52  	mov	w8, #496
   8223c: c8 01 a0 72  	movk	w8, #14, lsl #16
   82240: 1f 00 08 6b  	cmp	w0, w8
   82244: e0 27 9f 1a  	cset	w0, lo
   82248: c0 03 5f d6  	ret
   8224c: eb 03 0d aa  	mov	x11, x13
   82250: 29 01 0c 6b  	subs	w9, w9, w12
   82254: 04 02 00 54  	b.mi	0x82294 <_ZN4core7unicode9printable12is_printable17h809bc46350007ff2E+0x270>
   82258: 7f 01 0a eb  	cmp	x11, x10
   8225c: 08 01 00 52  	eor	w8, w8, #0x1
   82260: a0 01 00 54  	b.eq	0x82294 <_ZN4core7unicode9printable12is_printable17h809bc46350007ff2E+0x270>
   82264: ed 03 0b aa  	mov	x13, x11
   82268: ae 15 c0 38  	ldrsb	w14, [x13], #1
   8226c: cc 1d 00 12  	and	w12, w14, #0xff
   82270: ee fe ff 36  	tbz	w14, #31, 0x8224c <_ZN4core7unicode9printable12is_printable17h809bc46350007ff2E+0x228>
   82274: bf 01 0a eb  	cmp	x13, x10
   82278: 20 03 00 54  	b.eq	0x822dc <_ZN4core7unicode9printable12is_printable17h809bc46350007ff2E+0x2b8>
   8227c: 8d 19 00 12  	and	w13, w12, #0x7f
   82280: 6c 05 40 39  	ldrb	w12, [x11, #1]
   82284: 6b 09 00 91  	add	x11, x11, #2
   82288: ac 19 18 33  	bfi	w12, w13, #8, #7
   8228c: 29 01 0c 6b  	subs	w9, w9, w12
   82290: 45 fe ff 54  	b.pl	0x82258 <_ZN4core7unicode9printable12is_printable17h809bc46350007ff2E+0x234>
   82294: 00 01 00 12  	and	w0, w8, #0x1
   82298: c0 03 5f d6  	ret
   8229c: 02 00 00 b0  	adrp	x2, 0x83000 <_ZN4core7unicode9printable12is_printable17h809bc46350007ff2E+0x27c>
   822a0: 42 00 25 91  	add	x2, x2, #2368
   822a4: e0 03 09 aa  	mov	x0, x9
   822a8: e1 03 08 aa  	mov	x1, x8
   822ac: 44 fc ff 97  	bl	0x813bc <_ZN4core5slice5index22slice_index_order_fail17he71d7140076fff6eE>
   822b0: 20 00 20 d4  	brk	#0x1
   822b4: 02 00 00 b0  	adrp	x2, 0x83000 <_ZN4core7unicode9printable12is_printable17h809bc46350007ff2E+0x294>
   822b8: 42 00 25 91  	add	x2, x2, #2368
   822bc: 41 24 80 52  	mov	w1, #290
   822c0: 04 00 00 14  	b	0x822d0 <_ZN4core7unicode9printable12is_printable17h809bc46350007ff2E+0x2ac>
   822c4: 02 00 00 b0  	adrp	x2, 0x83000 <_ZN4core7unicode9printable12is_printable17h809bc46350007ff2E+0x2a4>
   822c8: 42 00 25 91  	add	x2, x2, #2368
   822cc: e1 15 80 52  	mov	w1, #175
   822d0: e0 03 08 aa  	mov	x0, x8
   822d4: 91 fa ff 97  	bl	0x80d18 <_ZN4core5slice5index24slice_end_index_len_fail17h827cf37c6cc32b14E>
   822d8: 20 00 20 d4  	brk	#0x1
   822dc: 00 00 00 b0  	adrp	x0, 0x83000 <_ZN4core7unicode9printable12is_printable17h809bc46350007ff2E+0x2bc>
   822e0: 02 00 00 b0  	adrp	x2, 0x83000 <_ZN4core7unicode9printable12is_printable17h809bc46350007ff2E+0x2c0>
   822e4: 00 60 20 91  	add	x0, x0, #2072
   822e8: 42 c0 2e 91  	add	x2, x2, #2992
   822ec: 61 05 80 52  	mov	w1, #43
   822f0: 9c fa ff 97  	bl	0x80d60 <_ZN4core9panicking5panic17ha7217054e020f4cfE>
   822f4: 20 00 20 d4  	brk	#0x1

00000000000822f8 <_ZN4core3fmt8builders11DebugStruct5field17hdc89cd457900d764E>:
   822f8: ff 83 02 d1  	sub	sp, sp, #160
   822fc: fe 67 06 a9  	stp	x30, x25, [sp, #96]
   82300: f8 5f 07 a9  	stp	x24, x23, [sp, #112]
   82304: f6 57 08 a9  	stp	x22, x21, [sp, #128]
   82308: f4 4f 09 a9  	stp	x20, x19, [sp, #144]
   8230c: 08 20 40 39  	ldrb	w8, [x0, #8]
   82310: f3 03 00 aa  	mov	x19, x0
   82314: 39 00 80 52  	mov	w25, #1
   82318: 20 00 80 52  	mov	w0, #1
   8231c: 48 0a 00 35  	cbnz	w8, 0x82464 <_ZN4core3fmt8builders11DebugStruct5field17hdc89cd457900d764E+0x16c>
   82320: 76 02 40 f9  	ldr	x22, [x19]
   82324: 68 26 40 39  	ldrb	w8, [x19, #9]
   82328: f5 03 04 aa  	mov	x21, x4
   8232c: f4 03 03 aa  	mov	x20, x3
   82330: c9 c2 40 39  	ldrb	w9, [x22, #48]
   82334: f7 03 02 aa  	mov	x23, x2
   82338: f8 03 01 aa  	mov	x24, x1
   8233c: e9 03 10 37  	tbnz	w9, #2, 0x823b8 <_ZN4core3fmt8builders11DebugStruct5field17hdc89cd457900d764E+0xc0>
   82340: c0 26 42 a9  	ldp	x0, x9, [x22, #32]
   82344: 1f 01 00 71  	cmp	w8, #0
   82348: 0a 00 00 d0  	adrp	x10, 0x84000 <_ZN4core3fmt8builders11DebugStruct5field17hdc89cd457900d764E+0x58>
   8234c: 0b 00 00 d0  	adrp	x11, 0x84000 <_ZN4core3fmt8builders11DebugStruct5field17hdc89cd457900d764E+0x5c>
   82350: 28 0d 40 f9  	ldr	x8, [x9, #24]
   82354: 4a 5d 09 91  	add	x10, x10, #599
   82358: 6b 51 09 91  	add	x11, x11, #596
   8235c: 49 00 80 52  	mov	w9, #2
   82360: 61 01 8a 9a  	csel	x1, x11, x10, eq
   82364: 22 15 89 9a  	cinc	x2, x9, eq
   82368: 00 01 3f d6  	blr	x8
   8236c: a0 07 00 37  	tbnz	w0, #0, 0x82460 <_ZN4core3fmt8builders11DebugStruct5field17hdc89cd457900d764E+0x168>
   82370: c0 22 42 a9  	ldp	x0, x8, [x22, #32]
   82374: e1 03 18 aa  	mov	x1, x24
   82378: e2 03 17 aa  	mov	x2, x23
   8237c: 08 0d 40 f9  	ldr	x8, [x8, #24]
   82380: 00 01 3f d6  	blr	x8
   82384: e0 06 00 37  	tbnz	w0, #0, 0x82460 <_ZN4core3fmt8builders11DebugStruct5field17hdc89cd457900d764E+0x168>
   82388: c0 22 42 a9  	ldp	x0, x8, [x22, #32]
   8238c: 01 00 00 b0  	adrp	x1, 0x83000 <_ZN4core3fmt8builders11DebugStruct5field17hdc89cd457900d764E+0x98>
   82390: 21 e0 1c 91  	add	x1, x1, #1848
   82394: 42 00 80 52  	mov	w2, #2
   82398: 08 0d 40 f9  	ldr	x8, [x8, #24]
   8239c: 00 01 3f d6  	blr	x8
   823a0: 00 06 00 37  	tbnz	w0, #0, 0x82460 <_ZN4core3fmt8builders11DebugStruct5field17hdc89cd457900d764E+0x168>
   823a4: a8 0e 40 f9  	ldr	x8, [x21, #24]
   823a8: e0 03 14 aa  	mov	x0, x20
   823ac: e1 03 16 aa  	mov	x1, x22
   823b0: 00 01 3f d6  	blr	x8
   823b4: 2c 00 00 14  	b	0x82464 <_ZN4core3fmt8builders11DebugStruct5field17hdc89cd457900d764E+0x16c>
   823b8: 08 01 00 35  	cbnz	w8, 0x823d8 <_ZN4core3fmt8builders11DebugStruct5field17hdc89cd457900d764E+0xe0>
   823bc: c0 22 42 a9  	ldp	x0, x8, [x22, #32]
   823c0: 01 00 00 d0  	adrp	x1, 0x84000 <_ZN4core3fmt8builders11DebugStruct5field17hdc89cd457900d764E+0xd0>
   823c4: 21 40 0a 91  	add	x1, x1, #656
   823c8: 62 00 80 52  	mov	w2, #3
   823cc: 08 0d 40 f9  	ldr	x8, [x8, #24]
   823d0: 00 01 3f d6  	blr	x8
   823d4: 60 04 00 37  	tbnz	w0, #0, 0x82460 <_ZN4core3fmt8builders11DebugStruct5field17hdc89cd457900d764E+0x168>
   823d8: 28 00 80 52  	mov	w8, #1
   823dc: e8 73 00 39  	strb	w8, [sp, #28]
   823e0: c8 2a 42 a9  	ldp	x8, x10, [x22, #32]
   823e4: e9 73 00 91  	add	x9, sp, #28
   823e8: eb 03 00 91  	mov	x11, sp
   823ec: e0 03 00 91  	mov	x0, sp
   823f0: ea a7 00 a9  	stp	x10, x9, [sp, #8]
   823f4: e8 03 00 f9  	str	x8, [sp]
   823f8: c8 26 46 29  	ldp	w8, w9, [x22, #48]
   823fc: ca e2 40 39  	ldrb	w10, [x22, #56]
   82400: cc 36 40 a9  	ldp	x12, x13, [x22]
   82404: ce 3e 41 a9  	ldp	x14, x15, [x22, #16]
   82408: e8 27 0a 29  	stp	w8, w9, [sp, #80]
   8240c: 08 00 00 d0  	adrp	x8, 0x84000 <_ZN4core3fmt8builders11DebugStruct5field17hdc89cd457900d764E+0x11c>
   82410: 08 81 09 91  	add	x8, x8, #608
   82414: e1 03 18 aa  	mov	x1, x24
   82418: e2 03 17 aa  	mov	x2, x23
   8241c: ea 63 01 39  	strb	w10, [sp, #88]
   82420: ec 37 02 a9  	stp	x12, x13, [sp, #32]
   82424: ee 3f 03 a9  	stp	x14, x15, [sp, #48]
   82428: eb 23 04 a9  	stp	x11, x8, [sp, #64]
   8242c: 0d fc ff 97  	bl	0x81460 <_ZN68_$LT$core..fmt..builders..PadAdapter$u20$as$u20$core..fmt..Write$GT$9write_str17h006d11991b68be72E>
   82430: 80 01 00 37  	tbnz	w0, #0, 0x82460 <_ZN4core3fmt8builders11DebugStruct5field17hdc89cd457900d764E+0x168>
   82434: 01 00 00 b0  	adrp	x1, 0x83000 <_ZN4core3fmt8builders11DebugStruct5field17hdc89cd457900d764E+0x140>
   82438: 21 e0 1c 91  	add	x1, x1, #1848
   8243c: e0 03 00 91  	mov	x0, sp
   82440: 42 00 80 52  	mov	w2, #2
   82444: 07 fc ff 97  	bl	0x81460 <_ZN68_$LT$core..fmt..builders..PadAdapter$u20$as$u20$core..fmt..Write$GT$9write_str17h006d11991b68be72E>
   82448: c0 00 00 35  	cbnz	w0, 0x82460 <_ZN4core3fmt8builders11DebugStruct5field17hdc89cd457900d764E+0x168>
   8244c: a8 0e 40 f9  	ldr	x8, [x21, #24]
   82450: e1 83 00 91  	add	x1, sp, #32
   82454: e0 03 14 aa  	mov	x0, x20
   82458: 00 01 3f d6  	blr	x8
   8245c: 60 01 00 36  	tbz	w0, #0, 0x82488 <_ZN4core3fmt8builders11DebugStruct5field17hdc89cd457900d764E+0x190>
   82460: 20 00 80 52  	mov	w0, #1
   82464: 60 22 00 39  	strb	w0, [x19, #8]
   82468: 79 26 00 39  	strb	w25, [x19, #9]
   8246c: e0 03 13 aa  	mov	x0, x19
   82470: f4 4f 49 a9  	ldp	x20, x19, [sp, #144]
   82474: f6 57 48 a9  	ldp	x22, x21, [sp, #128]
   82478: f8 5f 47 a9  	ldp	x24, x23, [sp, #112]
   8247c: fe 67 46 a9  	ldp	x30, x25, [sp, #96]
   82480: ff 83 02 91  	add	sp, sp, #160
   82484: c0 03 5f d6  	ret
   82488: e0 23 44 a9  	ldp	x0, x8, [sp, #64]
   8248c: 01 00 00 d0  	adrp	x1, 0x84000 <_ZN4core3fmt8builders11DebugStruct5field17hdc89cd457900d764E+0x19c>
   82490: 21 4c 0a 91  	add	x1, x1, #659
   82494: 42 00 80 52  	mov	w2, #2
   82498: 08 0d 40 f9  	ldr	x8, [x8, #24]
   8249c: 00 01 3f d6  	blr	x8
   824a0: f1 ff ff 17  	b	0x82464 <_ZN4core3fmt8builders11DebugStruct5field17hdc89cd457900d764E+0x16c>

00000000000824a4 <_ZN4core3fmt5Write10write_char17h9e2cca690dfc629fE>:
   824a4: fe 0f 1f f8  	str	x30, [sp, #-16]!
   824a8: 3f 00 02 71  	cmp	w1, #128
   824ac: ff 0f 00 b9  	str	wzr, [sp, #12]
   824b0: e2 00 00 54  	b.hs	0x824cc <_ZN4core3fmt5Write10write_char17h9e2cca690dfc629fE+0x28>
   824b4: e1 33 00 39  	strb	w1, [sp, #12]
   824b8: 22 00 80 52  	mov	w2, #1
   824bc: e1 33 00 91  	add	x1, sp, #12
   824c0: e8 fb ff 97  	bl	0x81460 <_ZN68_$LT$core..fmt..builders..PadAdapter$u20$as$u20$core..fmt..Write$GT$9write_str17h006d11991b68be72E>
   824c4: fe 07 41 f8  	ldr	x30, [sp], #16
   824c8: c0 03 5f d6  	ret
   824cc: 3f 00 20 71  	cmp	w1, #2048
   824d0: 82 01 00 54  	b.hs	0x82500 <_ZN4core3fmt5Write10write_char17h9e2cca690dfc629fE+0x5c>
   824d4: 28 7c 06 53  	lsr	w8, w1, #6
   824d8: 09 10 80 52  	mov	w9, #128
   824dc: 08 05 1a 32  	orr	w8, w8, #0xc0
   824e0: 29 14 00 33  	bfxil	w9, w1, #0, #6
   824e4: e8 33 00 39  	strb	w8, [sp, #12]
   824e8: e9 37 00 39  	strb	w9, [sp, #13]
   824ec: 42 00 80 52  	mov	w2, #2
   824f0: e1 33 00 91  	add	x1, sp, #12
   824f4: db fb ff 97  	bl	0x81460 <_ZN68_$LT$core..fmt..builders..PadAdapter$u20$as$u20$core..fmt..Write$GT$9write_str17h006d11991b68be72E>
   824f8: fe 07 41 f8  	ldr	x30, [sp], #16
   824fc: c0 03 5f d6  	ret
   82500: 3f 40 40 71  	cmp	w1, #16, lsl #12
   82504: e2 01 00 54  	b.hs	0x82540 <_ZN4core3fmt5Write10write_char17h9e2cca690dfc629fE+0x9c>
   82508: 28 7c 0c 53  	lsr	w8, w1, #12
   8250c: 09 10 80 52  	mov	w9, #128
   82510: 0a 10 80 52  	mov	w10, #128
   82514: 08 09 1b 32  	orr	w8, w8, #0xe0
   82518: 2a 2c 06 33  	bfxil	w10, w1, #6, #6
   8251c: 29 14 00 33  	bfxil	w9, w1, #0, #6
   82520: e8 33 00 39  	strb	w8, [sp, #12]
   82524: ea 37 00 39  	strb	w10, [sp, #13]
   82528: e9 3b 00 39  	strb	w9, [sp, #14]
   8252c: 62 00 80 52  	mov	w2, #3
   82530: e1 33 00 91  	add	x1, sp, #12
   82534: cb fb ff 97  	bl	0x81460 <_ZN68_$LT$core..fmt..builders..PadAdapter$u20$as$u20$core..fmt..Write$GT$9write_str17h006d11991b68be72E>
   82538: fe 07 41 f8  	ldr	x30, [sp], #16
   8253c: c0 03 5f d6  	ret
   82540: 28 7c 12 53  	lsr	w8, w1, #18
   82544: 09 10 80 52  	mov	w9, #128
   82548: 0a 10 80 52  	mov	w10, #128
   8254c: 0b 10 80 52  	mov	w11, #128
   82550: 08 0d 1c 32  	orr	w8, w8, #0xf0
   82554: 2a 44 0c 33  	bfxil	w10, w1, #12, #6
   82558: 2b 2c 06 33  	bfxil	w11, w1, #6, #6
   8255c: 29 14 00 33  	bfxil	w9, w1, #0, #6
   82560: 82 00 80 52  	mov	w2, #4
   82564: e8 33 00 39  	strb	w8, [sp, #12]
   82568: ea 37 00 39  	strb	w10, [sp, #13]
   8256c: eb 3b 00 39  	strb	w11, [sp, #14]
   82570: e9 3f 00 39  	strb	w9, [sp, #15]
   82574: e1 33 00 91  	add	x1, sp, #12
   82578: ba fb ff 97  	bl	0x81460 <_ZN68_$LT$core..fmt..builders..PadAdapter$u20$as$u20$core..fmt..Write$GT$9write_str17h006d11991b68be72E>
   8257c: fe 07 41 f8  	ldr	x30, [sp], #16
   82580: c0 03 5f d6  	ret

0000000000082584 <_ZN4core3fmt5Write9write_fmt17h031e20469903bdb9E>:
   82584: ff 03 01 d1  	sub	sp, sp, #64
   82588: fe 03 03 a9  	stp	x30, x0, [sp, #48]
   8258c: e0 03 00 91  	mov	x0, sp
   82590: 02 06 80 52  	mov	w2, #48
   82594: 15 03 00 94  	bl	0x831e8 <memcpy>
   82598: 01 00 00 d0  	adrp	x1, 0x84000 <_ZN4core3fmt5Write9write_fmt17h031e20469903bdb9E+0x1c>
   8259c: 21 60 0a 91  	add	x1, x1, #664
   825a0: e0 e3 00 91  	add	x0, sp, #56
   825a4: e2 03 00 91  	mov	x2, sp
   825a8: 07 fb ff 97  	bl	0x811c4 <_ZN4core3fmt5write17h4089dd81629a8d2eE>
   825ac: fe 1b 40 f9  	ldr	x30, [sp, #48]
   825b0: ff 03 01 91  	add	sp, sp, #64
   825b4: c0 03 5f d6  	ret

00000000000825b8 <_ZN50_$LT$$RF$mut$u20$W$u20$as$u20$core..fmt..Write$GT$9write_str17h06cee42cc043f099E>:
   825b8: 00 00 40 f9  	ldr	x0, [x0]
   825bc: a9 fb ff 17  	b	0x81460 <_ZN68_$LT$core..fmt..builders..PadAdapter$u20$as$u20$core..fmt..Write$GT$9write_str17h006d11991b68be72E>

00000000000825c0 <_ZN50_$LT$$RF$mut$u20$W$u20$as$u20$core..fmt..Write$GT$10write_char17h84d77c247f809bd9E>:
   825c0: fe 0f 1f f8  	str	x30, [sp, #-16]!
   825c4: 00 00 40 f9  	ldr	x0, [x0]
   825c8: 3f 00 02 71  	cmp	w1, #128
   825cc: ff 0f 00 b9  	str	wzr, [sp, #12]
   825d0: e2 00 00 54  	b.hs	0x825ec <_ZN50_$LT$$RF$mut$u20$W$u20$as$u20$core..fmt..Write$GT$10write_char17h84d77c247f809bd9E+0x2c>
   825d4: e1 33 00 39  	strb	w1, [sp, #12]
   825d8: 22 00 80 52  	mov	w2, #1
   825dc: e1 33 00 91  	add	x1, sp, #12
   825e0: a0 fb ff 97  	bl	0x81460 <_ZN68_$LT$core..fmt..builders..PadAdapter$u20$as$u20$core..fmt..Write$GT$9write_str17h006d11991b68be72E>
   825e4: fe 07 41 f8  	ldr	x30, [sp], #16
   825e8: c0 03 5f d6  	ret
   825ec: 3f 00 20 71  	cmp	w1, #2048
   825f0: 82 01 00 54  	b.hs	0x82620 <_ZN50_$LT$$RF$mut$u20$W$u20$as$u20$core..fmt..Write$GT$10write_char17h84d77c247f809bd9E+0x60>
   825f4: 28 7c 06 53  	lsr	w8, w1, #6
   825f8: 09 10 80 52  	mov	w9, #128
   825fc: 08 05 1a 32  	orr	w8, w8, #0xc0
   82600: 29 14 00 33  	bfxil	w9, w1, #0, #6
   82604: e8 33 00 39  	strb	w8, [sp, #12]
   82608: e9 37 00 39  	strb	w9, [sp, #13]
   8260c: 42 00 80 52  	mov	w2, #2
   82610: e1 33 00 91  	add	x1, sp, #12
   82614: 93 fb ff 97  	bl	0x81460 <_ZN68_$LT$core..fmt..builders..PadAdapter$u20$as$u20$core..fmt..Write$GT$9write_str17h006d11991b68be72E>
   82618: fe 07 41 f8  	ldr	x30, [sp], #16
   8261c: c0 03 5f d6  	ret
   82620: 3f 40 40 71  	cmp	w1, #16, lsl #12
   82624: e2 01 00 54  	b.hs	0x82660 <_ZN50_$LT$$RF$mut$u20$W$u20$as$u20$core..fmt..Write$GT$10write_char17h84d77c247f809bd9E+0xa0>
   82628: 28 7c 0c 53  	lsr	w8, w1, #12
   8262c: 09 10 80 52  	mov	w9, #128
   82630: 0a 10 80 52  	mov	w10, #128
   82634: 08 09 1b 32  	orr	w8, w8, #0xe0
   82638: 2a 2c 06 33  	bfxil	w10, w1, #6, #6
   8263c: 29 14 00 33  	bfxil	w9, w1, #0, #6
   82640: e8 33 00 39  	strb	w8, [sp, #12]
   82644: ea 37 00 39  	strb	w10, [sp, #13]
   82648: e9 3b 00 39  	strb	w9, [sp, #14]
   8264c: 62 00 80 52  	mov	w2, #3
   82650: e1 33 00 91  	add	x1, sp, #12
   82654: 83 fb ff 97  	bl	0x81460 <_ZN68_$LT$core..fmt..builders..PadAdapter$u20$as$u20$core..fmt..Write$GT$9write_str17h006d11991b68be72E>
   82658: fe 07 41 f8  	ldr	x30, [sp], #16
   8265c: c0 03 5f d6  	ret
   82660: 28 7c 12 53  	lsr	w8, w1, #18
   82664: 09 10 80 52  	mov	w9, #128
   82668: 0a 10 80 52  	mov	w10, #128
   8266c: 0b 10 80 52  	mov	w11, #128
   82670: 08 0d 1c 32  	orr	w8, w8, #0xf0
   82674: 2a 44 0c 33  	bfxil	w10, w1, #12, #6
   82678: 2b 2c 06 33  	bfxil	w11, w1, #6, #6
   8267c: 29 14 00 33  	bfxil	w9, w1, #0, #6
   82680: 82 00 80 52  	mov	w2, #4
   82684: e8 33 00 39  	strb	w8, [sp, #12]
   82688: ea 37 00 39  	strb	w10, [sp, #13]
   8268c: eb 3b 00 39  	strb	w11, [sp, #14]
   82690: e9 3f 00 39  	strb	w9, [sp, #15]
   82694: e1 33 00 91  	add	x1, sp, #12
   82698: 72 fb ff 97  	bl	0x81460 <_ZN68_$LT$core..fmt..builders..PadAdapter$u20$as$u20$core..fmt..Write$GT$9write_str17h006d11991b68be72E>
   8269c: fe 07 41 f8  	ldr	x30, [sp], #16
   826a0: c0 03 5f d6  	ret

00000000000826a4 <_ZN50_$LT$$RF$mut$u20$W$u20$as$u20$core..fmt..Write$GT$9write_fmt17h17dad8312d16cedaE>:
   826a4: ff 03 01 d1  	sub	sp, sp, #64
   826a8: 08 00 40 f9  	ldr	x8, [x0]
   826ac: e0 03 00 91  	mov	x0, sp
   826b0: 02 06 80 52  	mov	w2, #48
   826b4: fe 23 03 a9  	stp	x30, x8, [sp, #48]
   826b8: cc 02 00 94  	bl	0x831e8 <memcpy>
   826bc: 01 00 00 d0  	adrp	x1, 0x84000 <_ZN50_$LT$$RF$mut$u20$W$u20$as$u20$core..fmt..Write$GT$9write_fmt17h17dad8312d16cedaE+0x20>
   826c0: 21 60 0a 91  	add	x1, x1, #664
   826c4: e0 e3 00 91  	add	x0, sp, #56
   826c8: e2 03 00 91  	mov	x2, sp
   826cc: be fa ff 97  	bl	0x811c4 <_ZN4core3fmt5write17h4089dd81629a8d2eE>
   826d0: fe 1b 40 f9  	ldr	x30, [sp, #48]
   826d4: ff 03 01 91  	add	sp, sp, #64
   826d8: c0 03 5f d6  	ret

00000000000826dc <_ZN42_$LT$$RF$T$u20$as$u20$core..fmt..Debug$GT$3fmt17h0ce5f74af94e46edE>:
   826dc: ff 43 02 d1  	sub	sp, sp, #144
   826e0: fe 43 00 f9  	str	x30, [sp, #128]
   826e4: 28 30 40 b9  	ldr	w8, [x1, #48]
   826e8: 09 00 40 f9  	ldr	x9, [x0]
   826ec: c8 05 20 37  	tbnz	w8, #4, 0x827a4 <_ZN42_$LT$$RF$T$u20$as$u20$core..fmt..Debug$GT$3fmt17h0ce5f74af94e46edE+0xc8>
   826f0: a8 07 28 37  	tbnz	w8, #5, 0x827e4 <_ZN42_$LT$$RF$T$u20$as$u20$core..fmt..Debug$GT$3fmt17h0ce5f74af94e46edE+0x108>
   826f4: 28 01 40 b9  	ldr	w8, [x9]
   826f8: 09 7d 44 d3  	ubfx	x9, x8, #4, #28
   826fc: 3f c5 09 71  	cmp	w9, #625
   82700: 03 0b 00 54  	b.lo	0x82860 <_ZN42_$LT$$RF$T$u20$as$u20$core..fmt..Debug$GT$3fmt17h0ce5f74af94e46edE+0x184>
   82704: 6a 29 8b d2  	mov	x10, #22859
   82708: ca 10 a7 f2  	movk	x10, #14470, lsl #16
   8270c: ca ba d8 f2  	movk	x10, #50646, lsl #32
   82710: ec a3 90 52  	mov	w12, #34079
   82714: 0e 00 00 b0  	adrp	x14, 0x83000 <_ZN42_$LT$$RF$T$u20$as$u20$core..fmt..Debug$GT$3fmt17h0ce5f74af94e46edE+0x3c>
   82718: f0 1f 9c 52  	mov	w16, #57599
   8271c: e9 03 1f aa  	mov	x9, xzr
   82720: aa 8d e6 f2  	movk	x10, #13421, lsl #48
   82724: eb e1 84 12  	mov	w11, #-10000
   82728: 6c 3d aa 72  	movk	w12, #20971, lsl #16
   8272c: 6d 0c 80 12  	mov	w13, #-100
   82730: ce 29 14 91  	add	x14, x14, #1290
   82734: ef 03 00 91  	mov	x15, sp
   82738: b0 be a0 72  	movk	w16, #1525, lsl #16
   8273c: f1 03 08 aa  	mov	x17, x8
   82740: 08 7d ca 9b  	umulh	x8, x8, x10
   82744: 08 fd 4b d3  	lsr	x8, x8, #11
   82748: 3f 02 10 eb  	cmp	x17, x16
   8274c: 11 45 0b 1b  	madd	w17, w8, w11, w17
   82750: 20 3e 00 12  	and	w0, w17, #0xffff
   82754: 00 7c ac 9b  	umull	x0, w0, w12
   82758: 00 fc 65 d3  	lsr	x0, x0, #37
   8275c: 11 44 0d 1b  	madd	w17, w0, w13, w17
   82760: c0 05 00 8b  	add	x0, x14, x0, lsl #1
   82764: d1 25 31 8b  	add	x17, x14, w17, uxth #1
   82768: 02 00 40 39  	ldrb	w2, [x0]
   8276c: 00 04 40 39  	ldrb	w0, [x0, #1]
   82770: 23 06 40 39  	ldrb	w3, [x17, #1]
   82774: 31 02 40 39  	ldrb	w17, [x17]
   82778: f2 01 09 8b  	add	x18, x15, x9
   8277c: 29 11 00 d1  	sub	x9, x9, #4
   82780: 40 92 00 39  	strb	w0, [x18, #36]
   82784: 42 8e 00 39  	strb	w2, [x18, #35]
   82788: 43 9a 00 39  	strb	w3, [x18, #38]
   8278c: 51 96 00 39  	strb	w17, [x18, #37]
   82790: 68 fd ff 54  	b.hi	0x8273c <_ZN42_$LT$$RF$T$u20$as$u20$core..fmt..Debug$GT$3fmt17h0ce5f74af94e46edE+0x60>
   82794: 29 9d 00 91  	add	x9, x9, #39
   82798: 1f 8d 01 f1  	cmp	x8, #99
   8279c: 88 06 00 54  	b.hi	0x8286c <_ZN42_$LT$$RF$T$u20$as$u20$core..fmt..Debug$GT$3fmt17h0ce5f74af94e46edE+0x190>
   827a0: 45 00 00 14  	b	0x828b4 <_ZN42_$LT$$RF$T$u20$as$u20$core..fmt..Debug$GT$3fmt17h0ce5f74af94e46edE+0x1d8>
   827a4: 2a 01 40 b9  	ldr	w10, [x9]
   827a8: e8 03 1f aa  	mov	x8, xzr
   827ac: e9 03 00 91  	mov	x9, sp
   827b0: 4d 0d 00 12  	and	w13, w10, #0xf
   827b4: 0e 06 80 52  	mov	w14, #48
   827b8: 4c 7d 04 53  	lsr	w12, w10, #4
   827bc: 4e 0d 00 33  	bfxil	w14, w10, #0, #4
   827c0: aa 5d 01 11  	add	w10, w13, #87
   827c4: bf 29 00 71  	cmp	w13, #10
   827c8: 2b 01 08 8b  	add	x11, x9, x8
   827cc: ca 31 8a 1a  	csel	w10, w14, w10, lo
   827d0: 6a fd 01 39  	strb	w10, [x11, #127]
   827d4: 08 05 00 d1  	sub	x8, x8, #1
   827d8: ea 03 0c 2a  	mov	w10, w12
   827dc: ac fe ff 35  	cbnz	w12, 0x827b0 <_ZN42_$LT$$RF$T$u20$as$u20$core..fmt..Debug$GT$3fmt17h0ce5f74af94e46edE+0xd4>
   827e0: 10 00 00 14  	b	0x82820 <_ZN42_$LT$$RF$T$u20$as$u20$core..fmt..Debug$GT$3fmt17h0ce5f74af94e46edE+0x144>
   827e4: 2a 01 40 b9  	ldr	w10, [x9]
   827e8: e8 03 1f aa  	mov	x8, xzr
   827ec: e9 03 00 91  	mov	x9, sp
   827f0: 4d 0d 00 12  	and	w13, w10, #0xf
   827f4: 0e 06 80 52  	mov	w14, #48
   827f8: 4c 7d 04 53  	lsr	w12, w10, #4
   827fc: 4e 0d 00 33  	bfxil	w14, w10, #0, #4
   82800: aa dd 00 11  	add	w10, w13, #55
   82804: bf 29 00 71  	cmp	w13, #10
   82808: 2b 01 08 8b  	add	x11, x9, x8
   8280c: ca 31 8a 1a  	csel	w10, w14, w10, lo
   82810: 6a fd 01 39  	strb	w10, [x11, #127]
   82814: 08 05 00 d1  	sub	x8, x8, #1
   82818: ea 03 0c 2a  	mov	w10, w12
   8281c: ac fe ff 35  	cbnz	w12, 0x827f0 <_ZN42_$LT$$RF$T$u20$as$u20$core..fmt..Debug$GT$3fmt17h0ce5f74af94e46edE+0x114>
   82820: 00 01 02 91  	add	x0, x8, #128
   82824: 1f 04 02 f1  	cmp	x0, #129
   82828: 22 08 00 54  	b.hs	0x8292c <_ZN42_$LT$$RF$T$u20$as$u20$core..fmt..Debug$GT$3fmt17h0ce5f74af94e46edE+0x250>
   8282c: e9 03 00 91  	mov	x9, sp
   82830: e4 03 08 cb  	neg	x4, x8
   82834: 28 01 08 8b  	add	x8, x9, x8
   82838: 03 01 02 91  	add	x3, x8, #128
   8283c: 08 00 00 b0  	adrp	x8, 0x83000 <_ZN42_$LT$$RF$T$u20$as$u20$core..fmt..Debug$GT$3fmt17h0ce5f74af94e46edE+0x164>
   82840: 08 41 1a 91  	add	x8, x8, #1680
   82844: 42 00 80 52  	mov	w2, #2
   82848: e0 03 01 aa  	mov	x0, x1
   8284c: e1 03 08 aa  	mov	x1, x8
   82850: 51 f8 ff 97  	bl	0x80994 <_ZN4core3fmt9Formatter12pad_integral17h4be5fae25bf478d6E>
   82854: fe 43 40 f9  	ldr	x30, [sp, #128]
   82858: ff 43 02 91  	add	sp, sp, #144
   8285c: c0 03 5f d6  	ret
   82860: e9 04 80 52  	mov	w9, #39
   82864: 1f 8d 01 f1  	cmp	x8, #99
   82868: 69 02 00 54  	b.ls	0x828b4 <_ZN42_$LT$$RF$T$u20$as$u20$core..fmt..Debug$GT$3fmt17h0ce5f74af94e46edE+0x1d8>
   8286c: eb a3 90 52  	mov	w11, #34079
   82870: 0a 3d 00 12  	and	w10, w8, #0xffff
   82874: 6b 3d aa 72  	movk	w11, #20971, lsl #16
   82878: 4a 7d ab 9b  	umull	x10, w10, w11
   8287c: 6c 0c 80 12  	mov	w12, #-100
   82880: 0b 00 00 b0  	adrp	x11, 0x83000 <_ZN42_$LT$$RF$T$u20$as$u20$core..fmt..Debug$GT$3fmt17h0ce5f74af94e46edE+0x1a8>
   82884: 4a fd 65 d3  	lsr	x10, x10, #37
   82888: 6b 29 14 91  	add	x11, x11, #1290
   8288c: 48 21 0c 1b  	madd	w8, w10, w12, w8
   82890: 68 25 28 8b  	add	x8, x11, w8, uxth #1
   82894: 0b 05 40 39  	ldrb	w11, [x8, #1]
   82898: 08 01 40 39  	ldrb	w8, [x8]
   8289c: 29 09 00 d1  	sub	x9, x9, #2
   828a0: ec 03 00 91  	mov	x12, sp
   828a4: 8c 01 09 8b  	add	x12, x12, x9
   828a8: 88 01 00 39  	strb	w8, [x12]
   828ac: e8 03 0a aa  	mov	x8, x10
   828b0: 8b 05 00 39  	strb	w11, [x12, #1]
   828b4: 1f 29 00 f1  	cmp	x8, #10
   828b8: ca 00 00 54  	b.ge	0x828d0 <_ZN42_$LT$$RF$T$u20$as$u20$core..fmt..Debug$GT$3fmt17h0ce5f74af94e46edE+0x1f4>
   828bc: 29 05 00 d1  	sub	x9, x9, #1
   828c0: 08 c1 00 11  	add	w8, w8, #48
   828c4: ea 03 00 91  	mov	x10, sp
   828c8: 48 69 29 38  	strb	w8, [x10, x9]
   828cc: 0b 00 00 14  	b	0x828f8 <_ZN42_$LT$$RF$T$u20$as$u20$core..fmt..Debug$GT$3fmt17h0ce5f74af94e46edE+0x21c>
   828d0: 0a 00 00 b0  	adrp	x10, 0x83000 <_ZN42_$LT$$RF$T$u20$as$u20$core..fmt..Debug$GT$3fmt17h0ce5f74af94e46edE+0x1f8>
   828d4: 4a 29 14 91  	add	x10, x10, #1290
   828d8: 48 05 08 8b  	add	x8, x10, x8, lsl #1
   828dc: 0a 05 40 39  	ldrb	w10, [x8, #1]
   828e0: 08 01 40 39  	ldrb	w8, [x8]
   828e4: 29 09 00 d1  	sub	x9, x9, #2
   828e8: eb 03 00 91  	mov	x11, sp
   828ec: 6b 01 09 8b  	add	x11, x11, x9
   828f0: 6a 05 00 39  	strb	w10, [x11, #1]
   828f4: 68 01 00 39  	strb	w8, [x11]
   828f8: e8 03 00 91  	mov	x8, sp
   828fc: 03 01 09 8b  	add	x3, x8, x9
   82900: 08 00 00 b0  	adrp	x8, 0x83000 <_ZN42_$LT$$RF$T$u20$as$u20$core..fmt..Debug$GT$3fmt17h0ce5f74af94e46edE+0x228>
   82904: ea 04 80 52  	mov	w10, #39
   82908: 08 e1 11 91  	add	x8, x8, #1144
   8290c: 44 01 09 cb  	sub	x4, x10, x9
   82910: e0 03 01 aa  	mov	x0, x1
   82914: e1 03 08 aa  	mov	x1, x8
   82918: e2 03 1f aa  	mov	x2, xzr
   8291c: 1e f8 ff 97  	bl	0x80994 <_ZN4core3fmt9Formatter12pad_integral17h4be5fae25bf478d6E>
   82920: fe 43 40 f9  	ldr	x30, [sp, #128]
   82924: ff 43 02 91  	add	sp, sp, #144
   82928: c0 03 5f d6  	ret
   8292c: 02 00 00 b0  	adrp	x2, 0x83000 <_ZN42_$LT$$RF$T$u20$as$u20$core..fmt..Debug$GT$3fmt17h0ce5f74af94e46edE+0x254>
   82930: 42 e0 19 91  	add	x2, x2, #1656
   82934: 01 10 80 52  	mov	w1, #128
   82938: e6 f8 ff 97  	bl	0x80cd0 <_ZN4core5slice5index26slice_start_index_len_fail17ha5c8a54d8fb05d93E>
   8293c: 20 00 20 d4  	brk	#0x1

0000000000082940 <_ZN42_$LT$$RF$T$u20$as$u20$core..fmt..Debug$GT$3fmt17h4bfed742e82838c6E>:
   82940: ff 83 02 d1  	sub	sp, sp, #160
   82944: fd 7b 04 a9  	stp	x29, x30, [sp, #64]
   82948: fc 6f 05 a9  	stp	x28, x27, [sp, #80]
   8294c: fa 67 06 a9  	stp	x26, x25, [sp, #96]
   82950: f8 5f 07 a9  	stp	x24, x23, [sp, #112]
   82954: f6 57 08 a9  	stp	x22, x21, [sp, #128]
   82958: f4 4f 09 a9  	stp	x20, x19, [sp, #144]
   8295c: 08 00 40 f9  	ldr	x8, [x0]
   82960: 33 24 42 a9  	ldp	x19, x9, [x1, #32]
   82964: 41 04 80 52  	mov	w1, #34
   82968: 0a 21 40 a9  	ldp	x10, x8, [x8]
   8296c: 22 11 40 f9  	ldr	x2, [x9, #32]
   82970: e0 03 13 aa  	mov	x0, x19
   82974: e9 13 00 f9  	str	x9, [sp, #32]
   82978: e8 ab 02 a9  	stp	x8, x10, [sp, #40]
   8297c: e2 1f 00 f9  	str	x2, [sp, #56]
   82980: 40 00 3f d6  	blr	x2
   82984: 40 01 00 36  	tbz	w0, #0, 0x829ac <_ZN42_$LT$$RF$T$u20$as$u20$core..fmt..Debug$GT$3fmt17h4bfed742e82838c6E+0x6c>
   82988: f4 4f 49 a9  	ldp	x20, x19, [sp, #144]
   8298c: f6 57 48 a9  	ldp	x22, x21, [sp, #128]
   82990: f8 5f 47 a9  	ldp	x24, x23, [sp, #112]
   82994: fa 67 46 a9  	ldp	x26, x25, [sp, #96]
   82998: fc 6f 45 a9  	ldp	x28, x27, [sp, #80]
   8299c: fd 7b 44 a9  	ldp	x29, x30, [sp, #64]
   829a0: 20 00 80 52  	mov	w0, #1
   829a4: ff 83 02 91  	add	sp, sp, #160
   829a8: c0 03 5f d6  	ret
   829ac: eb 17 40 f9  	ldr	x11, [sp, #40]
   829b0: cb 1c 00 b4  	cbz	x11, 0x82d48 <_ZN42_$LT$$RF$T$u20$as$u20$core..fmt..Debug$GT$3fmt17h4bfed742e82838c6E+0x408>
   829b4: e8 1b 40 f9  	ldr	x8, [sp, #48]
   829b8: 1b 00 00 b0  	adrp	x27, 0x83000 <_ZN42_$LT$$RF$T$u20$as$u20$core..fmt..Debug$GT$3fmt17h4bfed742e82838c6E+0x7c>
   829bc: 0e 00 00 b0  	adrp	x14, 0x83000 <_ZN42_$LT$$RF$T$u20$as$u20$core..fmt..Debug$GT$3fmt17h4bfed742e82838c6E+0x80>
   829c0: f8 03 1f aa  	mov	x24, xzr
   829c4: e3 03 1f aa  	mov	x3, xzr
   829c8: 15 01 0b 8b  	add	x21, x8, x11
   829cc: 7b 6f 0a 91  	add	x27, x27, #667
   829d0: ce 05 0a 91  	add	x14, x14, #641
   829d4: ec 03 08 aa  	mov	x12, x8
   829d8: ea 03 08 aa  	mov	x10, x8
   829dc: fc 03 0a aa  	mov	x28, x10
   829e0: 88 17 c0 38  	ldrsb	w8, [x28], #1
   829e4: 1d 1d 00 12  	and	w29, w8, #0xff
   829e8: 68 00 f8 37  	tbnz	w8, #31, 0x829f4 <_ZN42_$LT$$RF$T$u20$as$u20$core..fmt..Debug$GT$3fmt17h4bfed742e82838c6E+0xb4>
   829ec: ed 03 1c aa  	mov	x13, x28
   829f0: 2f 00 00 14  	b	0x82aac <_ZN42_$LT$$RF$T$u20$as$u20$core..fmt..Debug$GT$3fmt17h4bfed742e82838c6E+0x16c>
   829f4: 9f 03 15 eb  	cmp	x28, x21
   829f8: 80 02 00 54  	b.eq	0x82a48 <_ZN42_$LT$$RF$T$u20$as$u20$core..fmt..Debug$GT$3fmt17h4bfed742e82838c6E+0x108>
   829fc: 48 05 40 39  	ldrb	w8, [x10, #1]
   82a00: 4d 09 00 91  	add	x13, x10, #2
   82a04: 0a 15 00 12  	and	w10, w8, #0x3f
   82a08: bf 7f 03 71  	cmp	w29, #223
   82a0c: a8 13 00 12  	and	w8, w29, #0x1f
   82a10: 69 02 00 54  	b.ls	0x82a5c <_ZN42_$LT$$RF$T$u20$as$u20$core..fmt..Debug$GT$3fmt17h4bfed742e82838c6E+0x11c>
   82a14: bf 01 15 eb  	cmp	x13, x21
   82a18: a0 02 00 54  	b.eq	0x82a6c <_ZN42_$LT$$RF$T$u20$as$u20$core..fmt..Debug$GT$3fmt17h4bfed742e82838c6E+0x12c>
   82a1c: a9 15 40 38  	ldrb	w9, [x13], #1
   82a20: 29 15 00 12  	and	w9, w9, #0x3f
   82a24: bf c3 03 71  	cmp	w29, #240
   82a28: 49 15 1a 33  	bfi	w9, w10, #6, #6
   82a2c: a3 02 00 54  	b.lo	0x82a80 <_ZN42_$LT$$RF$T$u20$as$u20$core..fmt..Debug$GT$3fmt17h4bfed742e82838c6E+0x140>
   82a30: bf 01 15 eb  	cmp	x13, x21
   82a34: e0 02 00 54  	b.eq	0x82a90 <_ZN42_$LT$$RF$T$u20$as$u20$core..fmt..Debug$GT$3fmt17h4bfed742e82838c6E+0x150>
   82a38: aa 15 40 38  	ldrb	w10, [x13], #1
   82a3c: 4a 15 00 12  	and	w10, w10, #0x3f
   82a40: fc 03 0d aa  	mov	x28, x13
   82a44: 15 00 00 14  	b	0x82a98 <_ZN42_$LT$$RF$T$u20$as$u20$core..fmt..Debug$GT$3fmt17h4bfed742e82838c6E+0x158>
   82a48: ea 03 1f 2a  	mov	w10, wzr
   82a4c: ed 03 15 aa  	mov	x13, x21
   82a50: bf 7f 03 71  	cmp	w29, #223
   82a54: a8 13 00 12  	and	w8, w29, #0x1f
   82a58: e8 fd ff 54  	b.hi	0x82a14 <_ZN42_$LT$$RF$T$u20$as$u20$core..fmt..Debug$GT$3fmt17h4bfed742e82838c6E+0xd4>
   82a5c: 0a 11 1a 33  	bfi	w10, w8, #6, #5
   82a60: fc 03 0d aa  	mov	x28, x13
   82a64: fd 03 0a 2a  	mov	w29, w10
   82a68: 11 00 00 14  	b	0x82aac <_ZN42_$LT$$RF$T$u20$as$u20$core..fmt..Debug$GT$3fmt17h4bfed742e82838c6E+0x16c>
   82a6c: e9 03 1f 2a  	mov	w9, wzr
   82a70: ed 03 15 aa  	mov	x13, x21
   82a74: bf c3 03 71  	cmp	w29, #240
   82a78: 49 15 1a 33  	bfi	w9, w10, #6, #6
   82a7c: a2 fd ff 54  	b.hs	0x82a30 <_ZN42_$LT$$RF$T$u20$as$u20$core..fmt..Debug$GT$3fmt17h4bfed742e82838c6E+0xf0>
   82a80: 09 11 14 33  	bfi	w9, w8, #12, #5
   82a84: fc 03 0d aa  	mov	x28, x13
   82a88: fd 03 09 2a  	mov	w29, w9
   82a8c: 08 00 00 14  	b	0x82aac <_ZN42_$LT$$RF$T$u20$as$u20$core..fmt..Debug$GT$3fmt17h4bfed742e82838c6E+0x16c>
   82a90: ea 03 1f 2a  	mov	w10, wzr
   82a94: fc 03 15 aa  	mov	x28, x21
   82a98: 08 09 0e 53  	ubfiz	w8, w8, #18, #3
   82a9c: 28 2d 1a 33  	bfi	w8, w9, #6, #12
   82aa0: 1d 01 0a 2a  	orr	w29, w8, w10
   82aa4: bf 43 44 71  	cmp	w29, #272, lsl #12
   82aa8: 00 14 00 54  	b.eq	0x82d28 <_ZN42_$LT$$RF$T$u20$as$u20$core..fmt..Debug$GT$3fmt17h4bfed742e82838c6E+0x3e8>
   82aac: a8 27 00 51  	sub	w8, w29, #9
   82ab0: 1f 65 00 71  	cmp	w8, #25
   82ab4: ed 33 01 a9  	stp	x13, x12, [sp, #16]
   82ab8: fc 07 00 f9  	str	x28, [sp, #8]
   82abc: 48 01 00 54  	b.hi	0x82ae4 <_ZN42_$LT$$RF$T$u20$as$u20$core..fmt..Debug$GT$3fmt17h4bfed742e82838c6E+0x1a4>
   82ac0: c9 00 00 10  	adr	x9, #24
   82ac4: ca 69 68 38  	ldrb	w10, [x14, x8]
   82ac8: 29 09 0a 8b  	add	x9, x9, x10, lsl #2
   82acc: 97 0e 80 52  	mov	w23, #116
   82ad0: 59 00 80 52  	mov	w25, #2
   82ad4: 20 01 1f d6  	br	x9
   82ad8: d7 0d 80 52  	mov	w23, #110
   82adc: 59 00 80 52  	mov	w25, #2
   82ae0: 1f 00 00 14  	b	0x82b5c <_ZN42_$LT$$RF$T$u20$as$u20$core..fmt..Debug$GT$3fmt17h4bfed742e82838c6E+0x21c>
   82ae4: bf 73 01 71  	cmp	w29, #92
   82ae8: 81 00 00 54  	b.ne	0x82af8 <_ZN42_$LT$$RF$T$u20$as$u20$core..fmt..Debug$GT$3fmt17h4bfed742e82838c6E+0x1b8>
   82aec: 59 00 80 52  	mov	w25, #2
   82af0: f7 03 1d 2a  	mov	w23, w29
   82af4: 1a 00 00 14  	b	0x82b5c <_ZN42_$LT$$RF$T$u20$as$u20$core..fmt..Debug$GT$3fmt17h4bfed742e82838c6E+0x21c>
   82af8: e0 03 1d 2a  	mov	w0, w29
   82afc: f4 03 03 aa  	mov	x20, x3
   82b00: fb fc ff 97  	bl	0x81eec <_ZN4core7unicode12unicode_data15grapheme_extend6lookup17h0525d17e88c4ad5eE>
   82b04: 80 01 00 37  	tbnz	w0, #0, 0x82b34 <_ZN42_$LT$$RF$T$u20$as$u20$core..fmt..Debug$GT$3fmt17h4bfed742e82838c6E+0x1f4>
   82b08: e0 03 1d 2a  	mov	w0, w29
   82b0c: 46 fd ff 97  	bl	0x82024 <_ZN4core7unicode9printable12is_printable17h809bc46350007ff2E>
   82b10: 20 01 00 36  	tbz	w0, #0, 0x82b34 <_ZN42_$LT$$RF$T$u20$as$u20$core..fmt..Debug$GT$3fmt17h4bfed742e82838c6E+0x1f4>
   82b14: eb 17 40 f9  	ldr	x11, [sp, #40]
   82b18: ea 27 41 a9  	ldp	x10, x9, [sp, #16]
   82b1c: fc 03 15 aa  	mov	x28, x21
   82b20: f5 03 14 aa  	mov	x21, x20
   82b24: 78 00 00 14  	b	0x82d04 <_ZN42_$LT$$RF$T$u20$as$u20$core..fmt..Debug$GT$3fmt17h4bfed742e82838c6E+0x3c4>
   82b28: 57 0e 80 52  	mov	w23, #114
   82b2c: 59 00 80 52  	mov	w25, #2
   82b30: 0b 00 00 14  	b	0x82b5c <_ZN42_$LT$$RF$T$u20$as$u20$core..fmt..Debug$GT$3fmt17h4bfed742e82838c6E+0x21c>
   82b34: a8 03 00 32  	orr	w8, w29, #0x1
   82b38: eb 17 40 f9  	ldr	x11, [sp, #40]
   82b3c: 08 11 c0 5a  	clz	w8, w8
   82b40: e9 03 1d 2a  	mov	w9, w29
   82b44: aa 00 c0 d2  	mov	x10, #21474836480
   82b48: 08 7d 02 53  	lsr	w8, w8, #2
   82b4c: 3a 01 0a aa  	orr	x26, x9, x10
   82b50: 16 09 00 52  	eor	w22, w8, #0x7
   82b54: 79 00 80 52  	mov	w25, #3
   82b58: e3 03 14 aa  	mov	x3, x20
   82b5c: 7f 00 18 eb  	cmp	x3, x24
   82b60: 23 12 00 54  	b.lo	0x82da4 <_ZN42_$LT$$RF$T$u20$as$u20$core..fmt..Debug$GT$3fmt17h4bfed742e82838c6E+0x464>
   82b64: 38 01 00 b4  	cbz	x24, 0x82b88 <_ZN42_$LT$$RF$T$u20$as$u20$core..fmt..Debug$GT$3fmt17h4bfed742e82838c6E+0x248>
   82b68: 1f 03 0b eb  	cmp	x24, x11
   82b6c: c2 00 00 54  	b.hs	0x82b84 <_ZN42_$LT$$RF$T$u20$as$u20$core..fmt..Debug$GT$3fmt17h4bfed742e82838c6E+0x244>
   82b70: e8 1b 40 f9  	ldr	x8, [sp, #48]
   82b74: 08 69 f8 38  	ldrsb	w8, [x8, x24]
   82b78: 1f 01 01 31  	cmn	w8, #64
   82b7c: 6a 00 00 54  	b.ge	0x82b88 <_ZN42_$LT$$RF$T$u20$as$u20$core..fmt..Debug$GT$3fmt17h4bfed742e82838c6E+0x248>
   82b80: 89 00 00 14  	b	0x82da4 <_ZN42_$LT$$RF$T$u20$as$u20$core..fmt..Debug$GT$3fmt17h4bfed742e82838c6E+0x464>
   82b84: 01 11 00 54  	b.ne	0x82da4 <_ZN42_$LT$$RF$T$u20$as$u20$core..fmt..Debug$GT$3fmt17h4bfed742e82838c6E+0x464>
   82b88: 23 01 00 b4  	cbz	x3, 0x82bac <_ZN42_$LT$$RF$T$u20$as$u20$core..fmt..Debug$GT$3fmt17h4bfed742e82838c6E+0x26c>
   82b8c: 7f 00 0b eb  	cmp	x3, x11
   82b90: 22 01 00 54  	b.hs	0x82bb4 <_ZN42_$LT$$RF$T$u20$as$u20$core..fmt..Debug$GT$3fmt17h4bfed742e82838c6E+0x274>
   82b94: e8 1b 40 f9  	ldr	x8, [sp, #48]
   82b98: f4 03 03 aa  	mov	x20, x3
   82b9c: 08 69 e3 38  	ldrsb	w8, [x8, x3]
   82ba0: 1f 05 01 31  	cmn	w8, #65
   82ba4: cc 00 00 54  	b.gt	0x82bbc <_ZN42_$LT$$RF$T$u20$as$u20$core..fmt..Debug$GT$3fmt17h4bfed742e82838c6E+0x27c>
   82ba8: 7f 00 00 14  	b	0x82da4 <_ZN42_$LT$$RF$T$u20$as$u20$core..fmt..Debug$GT$3fmt17h4bfed742e82838c6E+0x464>
   82bac: f4 03 1f aa  	mov	x20, xzr
   82bb0: 03 00 00 14  	b	0x82bbc <_ZN42_$LT$$RF$T$u20$as$u20$core..fmt..Debug$GT$3fmt17h4bfed742e82838c6E+0x27c>
   82bb4: f4 03 0b aa  	mov	x20, x11
   82bb8: 61 0f 00 54  	b.ne	0x82da4 <_ZN42_$LT$$RF$T$u20$as$u20$core..fmt..Debug$GT$3fmt17h4bfed742e82838c6E+0x464>
   82bbc: e8 13 40 f9  	ldr	x8, [sp, #32]
   82bc0: e9 1b 40 f9  	ldr	x9, [sp, #48]
   82bc4: 82 02 18 cb  	sub	x2, x20, x24
   82bc8: e0 03 13 aa  	mov	x0, x19
   82bcc: 08 0d 40 f9  	ldr	x8, [x8, #24]
   82bd0: 21 01 18 8b  	add	x1, x9, x24
   82bd4: fc 03 15 aa  	mov	x28, x21
   82bd8: f5 03 03 aa  	mov	x21, x3
   82bdc: 00 01 3f d6  	blr	x8
   82be0: 18 00 00 b0  	adrp	x24, 0x83000 <_ZN42_$LT$$RF$T$u20$as$u20$core..fmt..Debug$GT$3fmt17h4bfed742e82838c6E+0x2a4>
   82be4: 18 7f 0a 91  	add	x24, x24, #671
   82be8: 00 01 00 36  	tbz	w0, #0, 0x82c08 <_ZN42_$LT$$RF$T$u20$as$u20$core..fmt..Debug$GT$3fmt17h4bfed742e82838c6E+0x2c8>
   82bec: 67 ff ff 17  	b	0x82988 <_ZN42_$LT$$RF$T$u20$as$u20$core..fmt..Debug$GT$3fmt17h4bfed742e82838c6E+0x48>
   82bf0: f9 03 1f 2a  	mov	w25, wzr
   82bf4: e1 03 17 2a  	mov	w1, w23
   82bf8: e2 1f 40 f9  	ldr	x2, [sp, #56]
   82bfc: e0 03 13 aa  	mov	x0, x19
   82c00: 40 00 3f d6  	blr	x2
   82c04: 20 ec 07 37  	tbnz	w0, #0, 0x82988 <_ZN42_$LT$$RF$T$u20$as$u20$core..fmt..Debug$GT$3fmt17h4bfed742e82838c6E+0x48>
   82c08: e8 03 19 2a  	mov	w8, w25
   82c0c: 29 ff ff 10  	adr	x9, #-28
   82c10: 6a 6b 68 38  	ldrb	w10, [x27, x8]
   82c14: 29 09 0a 8b  	add	x9, x9, x10, lsl #2
   82c18: 39 00 80 52  	mov	w25, #1
   82c1c: 81 0b 80 52  	mov	w1, #92
   82c20: 20 01 1f d6  	br	x9
   82c24: 48 9f 60 d3  	ubfx	x8, x26, #32, #8
   82c28: 89 00 00 10  	adr	x9, #16
   82c2c: 0a 6b 68 38  	ldrb	w10, [x24, x8]
   82c30: 29 09 0a 8b  	add	x9, x9, x10, lsl #2
   82c34: 20 01 1f d6  	br	x9
   82c38: 5a df 58 92  	and	x26, x26, #0xffffff00ffffffff
   82c3c: 79 00 80 52  	mov	w25, #3
   82c40: a1 0f 80 52  	mov	w1, #125
   82c44: ed ff ff 17  	b	0x82bf8 <_ZN42_$LT$$RF$T$u20$as$u20$core..fmt..Debug$GT$3fmt17h4bfed742e82838c6E+0x2b8>
   82c48: 48 df 58 92  	and	x8, x26, #0xffffff00ffffffff
   82c4c: 79 00 80 52  	mov	w25, #3
   82c50: 1a 05 60 b2  	orr	x26, x8, #0x300000000
   82c54: a1 0e 80 52  	mov	w1, #117
   82c58: e8 ff ff 17  	b	0x82bf8 <_ZN42_$LT$$RF$T$u20$as$u20$core..fmt..Debug$GT$3fmt17h4bfed742e82838c6E+0x2b8>
   82c5c: c8 0a 1e 53  	ubfiz	w8, w22, #2, #3
   82c60: 48 27 c8 1a  	lsr	w8, w26, w8
   82c64: 08 0d 00 12  	and	w8, w8, #0xf
   82c68: 1f 29 00 71  	cmp	w8, #10
   82c6c: e9 0a 80 52  	mov	w9, #87
   82c70: 0a 06 80 52  	mov	w10, #48
   82c74: 49 31 89 1a  	csel	w9, w10, w9, lo
   82c78: 21 01 08 0b  	add	w1, w9, w8
   82c7c: d6 01 00 b4  	cbz	x22, 0x82cb4 <_ZN42_$LT$$RF$T$u20$as$u20$core..fmt..Debug$GT$3fmt17h4bfed742e82838c6E+0x374>
   82c80: d6 06 00 d1  	sub	x22, x22, #1
   82c84: 79 00 80 52  	mov	w25, #3
   82c88: dc ff ff 17  	b	0x82bf8 <_ZN42_$LT$$RF$T$u20$as$u20$core..fmt..Debug$GT$3fmt17h4bfed742e82838c6E+0x2b8>
   82c8c: 48 df 58 92  	and	x8, x26, #0xffffff00ffffffff
   82c90: 79 00 80 52  	mov	w25, #3
   82c94: 1a 01 5f b2  	orr	x26, x8, #0x200000000
   82c98: 61 0f 80 52  	mov	w1, #123
   82c9c: d7 ff ff 17  	b	0x82bf8 <_ZN42_$LT$$RF$T$u20$as$u20$core..fmt..Debug$GT$3fmt17h4bfed742e82838c6E+0x2b8>
   82ca0: 48 df 58 92  	and	x8, x26, #0xffffff00ffffffff
   82ca4: 79 00 80 52  	mov	w25, #3
   82ca8: 1a 01 5e b2  	orr	x26, x8, #0x400000000
   82cac: 81 0b 80 52  	mov	w1, #92
   82cb0: d2 ff ff 17  	b	0x82bf8 <_ZN42_$LT$$RF$T$u20$as$u20$core..fmt..Debug$GT$3fmt17h4bfed742e82838c6E+0x2b8>
   82cb4: 48 df 58 92  	and	x8, x26, #0xffffff00ffffffff
   82cb8: 1a 01 60 b2  	orr	x26, x8, #0x100000000
   82cbc: 79 00 80 52  	mov	w25, #3
   82cc0: ce ff ff 17  	b	0x82bf8 <_ZN42_$LT$$RF$T$u20$as$u20$core..fmt..Debug$GT$3fmt17h4bfed742e82838c6E+0x2b8>
   82cc4: bf 03 02 71  	cmp	w29, #128
   82cc8: a2 00 00 54  	b.hs	0x82cdc <_ZN42_$LT$$RF$T$u20$as$u20$core..fmt..Debug$GT$3fmt17h4bfed742e82838c6E+0x39c>
   82ccc: eb 17 40 f9  	ldr	x11, [sp, #40]
   82cd0: ea 27 41 a9  	ldp	x10, x9, [sp, #16]
   82cd4: 28 00 80 52  	mov	w8, #1
   82cd8: 0a 00 00 14  	b	0x82d00 <_ZN42_$LT$$RF$T$u20$as$u20$core..fmt..Debug$GT$3fmt17h4bfed742e82838c6E+0x3c0>
   82cdc: eb 17 40 f9  	ldr	x11, [sp, #40]
   82ce0: ea 27 41 a9  	ldp	x10, x9, [sp, #16]
   82ce4: bf 03 20 71  	cmp	w29, #2048
   82ce8: 62 00 00 54  	b.hs	0x82cf4 <_ZN42_$LT$$RF$T$u20$as$u20$core..fmt..Debug$GT$3fmt17h4bfed742e82838c6E+0x3b4>
   82cec: 48 00 80 52  	mov	w8, #2
   82cf0: 04 00 00 14  	b	0x82d00 <_ZN42_$LT$$RF$T$u20$as$u20$core..fmt..Debug$GT$3fmt17h4bfed742e82838c6E+0x3c0>
   82cf4: bf 43 40 71  	cmp	w29, #16, lsl #12
   82cf8: 68 00 80 52  	mov	w8, #3
   82cfc: 08 35 88 9a  	cinc	x8, x8, hs
   82d00: 18 01 14 8b  	add	x24, x8, x20
   82d04: a8 02 09 cb  	sub	x8, x21, x9
   82d08: e9 07 40 f9  	ldr	x9, [sp, #8]
   82d0c: 0e 00 00 b0  	adrp	x14, 0x83000 <_ZN42_$LT$$RF$T$u20$as$u20$core..fmt..Debug$GT$3fmt17h4bfed742e82838c6E+0x3d0>
   82d10: f5 03 1c aa  	mov	x21, x28
   82d14: 5f 01 1c eb  	cmp	x10, x28
   82d18: 03 01 09 8b  	add	x3, x8, x9
   82d1c: ec 03 0a aa  	mov	x12, x10
   82d20: ce 05 0a 91  	add	x14, x14, #641
   82d24: c1 e5 ff 54  	b.ne	0x829dc <_ZN42_$LT$$RF$T$u20$as$u20$core..fmt..Debug$GT$3fmt17h4bfed742e82838c6E+0x9c>
   82d28: 38 01 00 b4  	cbz	x24, 0x82d4c <_ZN42_$LT$$RF$T$u20$as$u20$core..fmt..Debug$GT$3fmt17h4bfed742e82838c6E+0x40c>
   82d2c: 1f 03 0b eb  	cmp	x24, x11
   82d30: 42 03 00 54  	b.hs	0x82d98 <_ZN42_$LT$$RF$T$u20$as$u20$core..fmt..Debug$GT$3fmt17h4bfed742e82838c6E+0x458>
   82d34: e8 1b 40 f9  	ldr	x8, [sp, #48]
   82d38: 08 69 f8 38  	ldrsb	w8, [x8, x24]
   82d3c: 1f 05 01 31  	cmn	w8, #65
   82d40: 6c 00 00 54  	b.gt	0x82d4c <_ZN42_$LT$$RF$T$u20$as$u20$core..fmt..Debug$GT$3fmt17h4bfed742e82838c6E+0x40c>
   82d44: 1f 00 00 14  	b	0x82dc0 <_ZN42_$LT$$RF$T$u20$as$u20$core..fmt..Debug$GT$3fmt17h4bfed742e82838c6E+0x480>
   82d48: f8 03 1f aa  	mov	x24, xzr
   82d4c: e8 13 40 f9  	ldr	x8, [sp, #32]
   82d50: e9 1b 40 f9  	ldr	x9, [sp, #48]
   82d54: 62 01 18 cb  	sub	x2, x11, x24
   82d58: e0 03 13 aa  	mov	x0, x19
   82d5c: 08 0d 40 f9  	ldr	x8, [x8, #24]
   82d60: 21 01 18 8b  	add	x1, x9, x24
   82d64: 00 01 3f d6  	blr	x8
   82d68: 00 e1 07 37  	tbnz	w0, #0, 0x82988 <_ZN42_$LT$$RF$T$u20$as$u20$core..fmt..Debug$GT$3fmt17h4bfed742e82838c6E+0x48>
   82d6c: e0 03 13 aa  	mov	x0, x19
   82d70: e2 1f 40 f9  	ldr	x2, [sp, #56]
   82d74: f4 4f 49 a9  	ldp	x20, x19, [sp, #144]
   82d78: f6 57 48 a9  	ldp	x22, x21, [sp, #128]
   82d7c: f8 5f 47 a9  	ldp	x24, x23, [sp, #112]
   82d80: fa 67 46 a9  	ldp	x26, x25, [sp, #96]
   82d84: fc 6f 45 a9  	ldp	x28, x27, [sp, #80]
   82d88: fd 7b 44 a9  	ldp	x29, x30, [sp, #64]
   82d8c: 41 04 80 52  	mov	w1, #34
   82d90: ff 83 02 91  	add	sp, sp, #160
   82d94: 40 00 1f d6  	br	x2
   82d98: 41 01 00 54  	b.ne	0x82dc0 <_ZN42_$LT$$RF$T$u20$as$u20$core..fmt..Debug$GT$3fmt17h4bfed742e82838c6E+0x480>
   82d9c: f8 03 0b aa  	mov	x24, x11
   82da0: eb ff ff 17  	b	0x82d4c <_ZN42_$LT$$RF$T$u20$as$u20$core..fmt..Debug$GT$3fmt17h4bfed742e82838c6E+0x40c>
   82da4: e0 1b 40 f9  	ldr	x0, [sp, #48]
   82da8: 04 00 00 d0  	adrp	x4, 0x84000 <_ZN42_$LT$$RF$T$u20$as$u20$core..fmt..Debug$GT$3fmt17h4bfed742e82838c6E+0x470>
   82dac: 84 a0 0b 91  	add	x4, x4, #744
   82db0: e1 03 0b aa  	mov	x1, x11
   82db4: e2 03 18 aa  	mov	x2, x24
   82db8: 4e fa ff 97  	bl	0x816f0 <_ZN4core3str16slice_error_fail17hf7d2a92268a53d29E>
   82dbc: 20 00 20 d4  	brk	#0x1
   82dc0: e0 1b 40 f9  	ldr	x0, [sp, #48]
   82dc4: 04 00 00 d0  	adrp	x4, 0x84000 <_ZN42_$LT$$RF$T$u20$as$u20$core..fmt..Debug$GT$3fmt17h4bfed742e82838c6E+0x48c>
   82dc8: 84 40 0b 91  	add	x4, x4, #720
   82dcc: e1 03 0b aa  	mov	x1, x11
   82dd0: e2 03 18 aa  	mov	x2, x24
   82dd4: e3 03 0b aa  	mov	x3, x11
   82dd8: 46 fa ff 97  	bl	0x816f0 <_ZN4core3str16slice_error_fail17hf7d2a92268a53d29E>
   82ddc: 20 00 20 d4  	brk	#0x1

0000000000082de0 <_ZN71_$LT$core..panic..panic_info..PanicInfo$u20$as$u20$core..fmt..Debug$GT$3fmt17hdab5301ab1e937b8E>:
   82de0: ff 03 01 d1  	sub	sp, sp, #64
   82de4: fe 0b 00 f9  	str	x30, [sp, #16]
   82de8: f6 57 02 a9  	stp	x22, x21, [sp, #32]
   82dec: f4 4f 03 a9  	stp	x20, x19, [sp, #48]
   82df0: f4 03 00 aa  	mov	x20, x0
   82df4: 20 20 42 a9  	ldp	x0, x8, [x1, #32]
   82df8: f3 03 01 aa  	mov	x19, x1
   82dfc: 01 00 00 d0  	adrp	x1, 0x84000 <_ZN71_$LT$core..panic..panic_info..PanicInfo$u20$as$u20$core..fmt..Debug$GT$3fmt17hdab5301ab1e937b8E+0x24>
   82e00: 21 8c 0d 91  	add	x1, x1, #867
   82e04: 08 0d 40 f9  	ldr	x8, [x8, #24]
   82e08: 22 01 80 52  	mov	w2, #9
   82e0c: 95 42 00 91  	add	x21, x20, #16
   82e10: 96 62 00 91  	add	x22, x20, #24
   82e14: 00 01 3f d6  	blr	x8
   82e18: 1f 00 00 71  	cmp	w0, #0
   82e1c: 01 00 00 d0  	adrp	x1, 0x84000 <_ZN71_$LT$core..panic..panic_info..PanicInfo$u20$as$u20$core..fmt..Debug$GT$3fmt17hdab5301ab1e937b8E+0x44>
   82e20: 04 00 00 d0  	adrp	x4, 0x84000 <_ZN71_$LT$core..panic..panic_info..PanicInfo$u20$as$u20$core..fmt..Debug$GT$3fmt17hdab5301ab1e937b8E+0x48>
   82e24: e8 07 9f 9a  	cset	x8, ne
   82e28: 21 b0 0d 91  	add	x1, x1, #876
   82e2c: 84 e0 0d 91  	add	x4, x4, #888
   82e30: e0 03 00 91  	mov	x0, sp
   82e34: e3 63 00 91  	add	x3, sp, #24
   82e38: e2 00 80 52  	mov	w2, #7
   82e3c: f3 23 00 a9  	stp	x19, x8, [sp]
   82e40: f4 0f 00 f9  	str	x20, [sp, #24]
   82e44: 2d fd ff 97  	bl	0x822f8 <_ZN4core3fmt8builders11DebugStruct5field17hdc89cd457900d764E>
   82e48: 01 00 00 d0  	adrp	x1, 0x84000 <_ZN71_$LT$core..panic..panic_info..PanicInfo$u20$as$u20$core..fmt..Debug$GT$3fmt17hdab5301ab1e937b8E+0x70>
   82e4c: 04 00 00 d0  	adrp	x4, 0x84000 <_ZN71_$LT$core..panic..panic_info..PanicInfo$u20$as$u20$core..fmt..Debug$GT$3fmt17hdab5301ab1e937b8E+0x74>
   82e50: 21 60 0e 91  	add	x1, x1, #920
   82e54: 84 80 0e 91  	add	x4, x4, #928
   82e58: e0 03 00 91  	mov	x0, sp
   82e5c: e3 63 00 91  	add	x3, sp, #24
   82e60: e2 00 80 52  	mov	w2, #7
   82e64: f5 0f 00 f9  	str	x21, [sp, #24]
   82e68: 24 fd ff 97  	bl	0x822f8 <_ZN4core3fmt8builders11DebugStruct5field17hdc89cd457900d764E>
   82e6c: 01 00 00 b0  	adrp	x1, 0x83000 <_ZN71_$LT$core..panic..panic_info..PanicInfo$u20$as$u20$core..fmt..Debug$GT$3fmt17hdab5301ab1e937b8E+0x90>
   82e70: 04 00 00 d0  	adrp	x4, 0x84000 <_ZN71_$LT$core..panic..panic_info..PanicInfo$u20$as$u20$core..fmt..Debug$GT$3fmt17hdab5301ab1e937b8E+0x98>
   82e74: 21 44 23 91  	add	x1, x1, #2257
   82e78: 84 00 0f 91  	add	x4, x4, #960
   82e7c: e0 03 00 91  	mov	x0, sp
   82e80: e3 63 00 91  	add	x3, sp, #24
   82e84: 02 01 80 52  	mov	w2, #8
   82e88: f6 0f 00 f9  	str	x22, [sp, #24]
   82e8c: 1b fd ff 97  	bl	0x822f8 <_ZN4core3fmt8builders11DebugStruct5field17hdc89cd457900d764E>
   82e90: e8 27 40 39  	ldrb	w8, [sp, #9]
   82e94: e0 23 40 39  	ldrb	w0, [sp, #8]
   82e98: 48 02 00 34  	cbz	w8, 0x82ee0 <_ZN71_$LT$core..panic..panic_info..PanicInfo$u20$as$u20$core..fmt..Debug$GT$3fmt17hdab5301ab1e937b8E+0x100>
   82e9c: 60 00 00 34  	cbz	w0, 0x82ea8 <_ZN71_$LT$core..panic..panic_info..PanicInfo$u20$as$u20$core..fmt..Debug$GT$3fmt17hdab5301ab1e937b8E+0xc8>
   82ea0: 20 00 80 52  	mov	w0, #1
   82ea4: 0f 00 00 14  	b	0x82ee0 <_ZN71_$LT$core..panic..panic_info..PanicInfo$u20$as$u20$core..fmt..Debug$GT$3fmt17hdab5301ab1e937b8E+0x100>
   82ea8: e8 03 40 f9  	ldr	x8, [sp]
   82eac: 09 c1 40 39  	ldrb	w9, [x8, #48]
   82eb0: c9 00 10 37  	tbnz	w9, #2, 0x82ec8 <_ZN71_$LT$core..panic..panic_info..PanicInfo$u20$as$u20$core..fmt..Debug$GT$3fmt17hdab5301ab1e937b8E+0xe8>
   82eb4: 00 25 42 a9  	ldp	x0, x9, [x8, #32]
   82eb8: 01 00 00 d0  	adrp	x1, 0x84000 <_ZN71_$LT$core..panic..panic_info..PanicInfo$u20$as$u20$core..fmt..Debug$GT$3fmt17hdab5301ab1e937b8E+0xe0>
   82ebc: 21 24 0b 91  	add	x1, x1, #713
   82ec0: 42 00 80 52  	mov	w2, #2
   82ec4: 05 00 00 14  	b	0x82ed8 <_ZN71_$LT$core..panic..panic_info..PanicInfo$u20$as$u20$core..fmt..Debug$GT$3fmt17hdab5301ab1e937b8E+0xf8>
   82ec8: 00 25 42 a9  	ldp	x0, x9, [x8, #32]
   82ecc: 01 00 00 d0  	adrp	x1, 0x84000 <_ZN71_$LT$core..panic..panic_info..PanicInfo$u20$as$u20$core..fmt..Debug$GT$3fmt17hdab5301ab1e937b8E+0xf4>
   82ed0: 21 20 0b 91  	add	x1, x1, #712
   82ed4: 22 00 80 52  	mov	w2, #1
   82ed8: 28 0d 40 f9  	ldr	x8, [x9, #24]
   82edc: 00 01 3f d6  	blr	x8
   82ee0: f4 4f 43 a9  	ldp	x20, x19, [sp, #48]
   82ee4: f6 57 42 a9  	ldp	x22, x21, [sp, #32]
   82ee8: fe 0b 40 f9  	ldr	x30, [sp, #16]
   82eec: 1f 00 00 71  	cmp	w0, #0
   82ef0: e0 07 9f 1a  	cset	w0, ne
   82ef4: ff 03 01 91  	add	sp, sp, #64
   82ef8: c0 03 5f d6  	ret

0000000000082efc <_ZN42_$LT$$RF$T$u20$as$u20$core..fmt..Debug$GT$3fmt17hdb3565c8b9fbe464E>:
   82efc: ff 03 01 d1  	sub	sp, sp, #64
   82f00: fe 0b 00 f9  	str	x30, [sp, #16]
   82f04: f6 57 02 a9  	stp	x22, x21, [sp, #32]
   82f08: f4 4f 03 a9  	stp	x20, x19, [sp, #48]
   82f0c: 08 00 40 f9  	ldr	x8, [x0]
   82f10: 20 24 42 a9  	ldp	x0, x9, [x1, #32]
   82f14: f3 03 01 aa  	mov	x19, x1
   82f18: 01 00 00 b0  	adrp	x1, 0x83000 <_ZN42_$LT$$RF$T$u20$as$u20$core..fmt..Debug$GT$3fmt17hdb3565c8b9fbe464E+0x20>
   82f1c: 14 01 40 f9  	ldr	x20, [x8]
   82f20: 28 0d 40 f9  	ldr	x8, [x9, #24]
   82f24: 21 64 23 91  	add	x1, x1, #2265
   82f28: 02 01 80 52  	mov	w2, #8
   82f2c: 95 42 00 91  	add	x21, x20, #16
   82f30: 96 52 00 91  	add	x22, x20, #20
   82f34: 00 01 3f d6  	blr	x8
   82f38: 1f 00 00 71  	cmp	w0, #0
   82f3c: 01 00 00 b0  	adrp	x1, 0x83000 <_ZN42_$LT$$RF$T$u20$as$u20$core..fmt..Debug$GT$3fmt17hdb3565c8b9fbe464E+0x44>
   82f40: 04 00 00 d0  	adrp	x4, 0x84000 <_ZN42_$LT$$RF$T$u20$as$u20$core..fmt..Debug$GT$3fmt17hdb3565c8b9fbe464E+0x4c>
   82f44: e8 07 9f 9a  	cset	x8, ne
   82f48: 21 90 1d 91  	add	x1, x1, #1892
   82f4c: 84 80 0c 91  	add	x4, x4, #800
   82f50: e0 03 00 91  	mov	x0, sp
   82f54: e3 63 00 91  	add	x3, sp, #24
   82f58: 82 00 80 52  	mov	w2, #4
   82f5c: f3 23 00 a9  	stp	x19, x8, [sp]
   82f60: f4 0f 00 f9  	str	x20, [sp, #24]
   82f64: e5 fc ff 97  	bl	0x822f8 <_ZN4core3fmt8builders11DebugStruct5field17hdc89cd457900d764E>
   82f68: 13 00 00 d0  	adrp	x19, 0x84000 <_ZN42_$LT$$RF$T$u20$as$u20$core..fmt..Debug$GT$3fmt17hdb3565c8b9fbe464E+0x74>
   82f6c: 01 00 00 b0  	adrp	x1, 0x83000 <_ZN42_$LT$$RF$T$u20$as$u20$core..fmt..Debug$GT$3fmt17hdb3565c8b9fbe464E+0x74>
   82f70: 73 02 0d 91  	add	x19, x19, #832
   82f74: 21 a0 1d 91  	add	x1, x1, #1896
   82f78: e0 03 00 91  	mov	x0, sp
   82f7c: e3 63 00 91  	add	x3, sp, #24
   82f80: 82 00 80 52  	mov	w2, #4
   82f84: e4 03 13 aa  	mov	x4, x19
   82f88: f5 0f 00 f9  	str	x21, [sp, #24]
   82f8c: db fc ff 97  	bl	0x822f8 <_ZN4core3fmt8builders11DebugStruct5field17hdc89cd457900d764E>
   82f90: 01 00 00 d0  	adrp	x1, 0x84000 <_ZN42_$LT$$RF$T$u20$as$u20$core..fmt..Debug$GT$3fmt17hdb3565c8b9fbe464E+0x9c>
   82f94: 21 80 0d 91  	add	x1, x1, #864
   82f98: e0 03 00 91  	mov	x0, sp
   82f9c: e3 63 00 91  	add	x3, sp, #24
   82fa0: 62 00 80 52  	mov	w2, #3
   82fa4: e4 03 13 aa  	mov	x4, x19
   82fa8: f6 0f 00 f9  	str	x22, [sp, #24]
   82fac: d3 fc ff 97  	bl	0x822f8 <_ZN4core3fmt8builders11DebugStruct5field17hdc89cd457900d764E>
   82fb0: e8 27 40 39  	ldrb	w8, [sp, #9]
   82fb4: e0 23 40 39  	ldrb	w0, [sp, #8]
   82fb8: 48 02 00 34  	cbz	w8, 0x83000 <_ZN42_$LT$$RF$T$u20$as$u20$core..fmt..Debug$GT$3fmt17hdb3565c8b9fbe464E+0x104>
   82fbc: 60 00 00 34  	cbz	w0, 0x82fc8 <_ZN42_$LT$$RF$T$u20$as$u20$core..fmt..Debug$GT$3fmt17hdb3565c8b9fbe464E+0xcc>
   82fc0: 20 00 80 52  	mov	w0, #1
   82fc4: 0f 00 00 14  	b	0x83000 <_ZN42_$LT$$RF$T$u20$as$u20$core..fmt..Debug$GT$3fmt17hdb3565c8b9fbe464E+0x104>
   82fc8: e8 03 40 f9  	ldr	x8, [sp]
   82fcc: 09 c1 40 39  	ldrb	w9, [x8, #48]
   82fd0: c9 00 10 37  	tbnz	w9, #2, 0x82fe8 <_ZN42_$LT$$RF$T$u20$as$u20$core..fmt..Debug$GT$3fmt17hdb3565c8b9fbe464E+0xec>
   82fd4: 00 25 42 a9  	ldp	x0, x9, [x8, #32]
   82fd8: 01 00 00 d0  	adrp	x1, 0x84000 <_ZN42_$LT$$RF$T$u20$as$u20$core..fmt..Debug$GT$3fmt17hdb3565c8b9fbe464E+0xe4>
   82fdc: 21 24 0b 91  	add	x1, x1, #713
   82fe0: 42 00 80 52  	mov	w2, #2
   82fe4: 05 00 00 14  	b	0x82ff8 <_ZN42_$LT$$RF$T$u20$as$u20$core..fmt..Debug$GT$3fmt17hdb3565c8b9fbe464E+0xfc>
   82fe8: 00 25 42 a9  	ldp	x0, x9, [x8, #32]
   82fec: 01 00 00 d0  	adrp	x1, 0x84000 <_ZN42_$LT$$RF$T$u20$as$u20$core..fmt..Debug$GT$3fmt17hdb3565c8b9fbe464E+0xf8>
   82ff0: 21 20 0b 91  	add	x1, x1, #712
   82ff4: 22 00 80 52  	mov	w2, #1
   82ff8: 28 0d 40 f9  	ldr	x8, [x9, #24]
   82ffc: 00 01 3f d6  	blr	x8
   83000: f4 4f 43 a9  	ldp	x20, x19, [sp, #48]
   83004: f6 57 42 a9  	ldp	x22, x21, [sp, #32]
   83008: fe 0b 40 f9  	ldr	x30, [sp, #16]
   8300c: 1f 00 00 71  	cmp	w0, #0
   83010: e0 07 9f 1a  	cset	w0, ne
   83014: ff 03 01 91  	add	sp, sp, #64
   83018: c0 03 5f d6  	ret

000000000008301c <_ZN42_$LT$$RF$T$u20$as$u20$core..fmt..Debug$GT$3fmt17h91a03beae5aa8267E>:
   8301c: ff 03 02 d1  	sub	sp, sp, #128
   83020: fe 5f 05 a9  	stp	x30, x23, [sp, #80]
   83024: f6 57 06 a9  	stp	x22, x21, [sp, #96]
   83028: f4 4f 07 a9  	stp	x20, x19, [sp, #112]
   8302c: 17 00 40 f9  	ldr	x23, [x0]
   83030: f5 03 01 aa  	mov	x21, x1
   83034: e8 02 40 f9  	ldr	x8, [x23]
   83038: 08 02 00 b4  	cbz	x8, 0x83078 <_ZN42_$LT$$RF$T$u20$as$u20$core..fmt..Debug$GT$3fmt17h91a03beae5aa8267E+0x5c>
   8303c: b3 52 42 a9  	ldp	x19, x20, [x21, #32]
   83040: 01 00 00 90  	adrp	x1, 0x83000 <_ZN42_$LT$$RF$T$u20$as$u20$core..fmt..Debug$GT$3fmt17h91a03beae5aa8267E+0x24>
   83044: 21 70 1d 91  	add	x1, x1, #1884
   83048: 82 00 80 52  	mov	w2, #4
   8304c: 96 0e 40 f9  	ldr	x22, [x20, #24]
   83050: e0 03 13 aa  	mov	x0, x19
   83054: c0 02 3f d6  	blr	x22
   83058: 40 02 00 36  	tbz	w0, #0, 0x830a0 <_ZN42_$LT$$RF$T$u20$as$u20$core..fmt..Debug$GT$3fmt17h91a03beae5aa8267E+0x84>
   8305c: 35 00 80 52  	mov	w21, #1
   83060: e0 03 15 2a  	mov	w0, w21
   83064: f4 4f 47 a9  	ldp	x20, x19, [sp, #112]
   83068: f6 57 46 a9  	ldp	x22, x21, [sp, #96]
   8306c: fe 5f 45 a9  	ldp	x30, x23, [sp, #80]
   83070: ff 03 02 91  	add	sp, sp, #128
   83074: c0 03 5f d6  	ret
   83078: a0 22 42 a9  	ldp	x0, x8, [x21, #32]
   8307c: f4 4f 47 a9  	ldp	x20, x19, [sp, #112]
   83080: f6 57 46 a9  	ldp	x22, x21, [sp, #96]
   83084: fe 5f 45 a9  	ldp	x30, x23, [sp, #80]
   83088: 03 0d 40 f9  	ldr	x3, [x8, #24]
   8308c: 01 00 00 90  	adrp	x1, 0x83000 <_ZN42_$LT$$RF$T$u20$as$u20$core..fmt..Debug$GT$3fmt17h91a03beae5aa8267E+0x70>
   83090: 21 b0 1d 91  	add	x1, x1, #1900
   83094: 82 00 80 52  	mov	w2, #4
   83098: ff 03 02 91  	add	sp, sp, #128
   8309c: 60 00 1f d6  	br	x3
   830a0: a8 c2 40 39  	ldrb	w8, [x21, #48]
   830a4: 48 02 10 37  	tbnz	w8, #2, 0x830ec <_ZN42_$LT$$RF$T$u20$as$u20$core..fmt..Debug$GT$3fmt17h91a03beae5aa8267E+0xd0>
   830a8: 01 00 00 b0  	adrp	x1, 0x84000 <_ZN42_$LT$$RF$T$u20$as$u20$core..fmt..Debug$GT$3fmt17h91a03beae5aa8267E+0x90>
   830ac: 21 2c 0b 91  	add	x1, x1, #715
   830b0: 22 00 80 52  	mov	w2, #1
   830b4: e0 03 13 aa  	mov	x0, x19
   830b8: 35 00 80 52  	mov	w21, #1
   830bc: c0 02 3f d6  	blr	x22
   830c0: 00 fd 07 37  	tbnz	w0, #0, 0x83060 <_ZN42_$LT$$RF$T$u20$as$u20$core..fmt..Debug$GT$3fmt17h91a03beae5aa8267E+0x44>
   830c4: e1 02 40 f9  	ldr	x1, [x23]
   830c8: e0 83 00 91  	add	x0, sp, #32
   830cc: 02 06 80 52  	mov	w2, #48
   830d0: 46 00 00 94  	bl	0x831e8 <memcpy>
   830d4: e2 83 00 91  	add	x2, sp, #32
   830d8: e0 03 13 aa  	mov	x0, x19
   830dc: e1 03 14 aa  	mov	x1, x20
   830e0: 39 f8 ff 97  	bl	0x811c4 <_ZN4core3fmt5write17h4089dd81629a8d2eE>
   830e4: c0 fb 07 37  	tbnz	w0, #0, 0x8305c <_ZN42_$LT$$RF$T$u20$as$u20$core..fmt..Debug$GT$3fmt17h91a03beae5aa8267E+0x40>
   830e8: 1c 00 00 14  	b	0x83158 <_ZN42_$LT$$RF$T$u20$as$u20$core..fmt..Debug$GT$3fmt17h91a03beae5aa8267E+0x13c>
   830ec: 01 00 00 b0  	adrp	x1, 0x84000 <_ZN42_$LT$$RF$T$u20$as$u20$core..fmt..Debug$GT$3fmt17h91a03beae5aa8267E+0xd4>
   830f0: 21 30 0b 91  	add	x1, x1, #716
   830f4: 42 00 80 52  	mov	w2, #2
   830f8: e0 03 13 aa  	mov	x0, x19
   830fc: c0 02 3f d6  	blr	x22
   83100: 35 00 80 52  	mov	w21, #1
   83104: e0 fa 07 37  	tbnz	w0, #0, 0x83060 <_ZN42_$LT$$RF$T$u20$as$u20$core..fmt..Debug$GT$3fmt17h91a03beae5aa8267E+0x44>
   83108: e8 73 00 91  	add	x8, sp, #28
   8310c: f5 73 00 39  	strb	w21, [sp, #28]
   83110: f3 53 00 a9  	stp	x19, x20, [sp]
   83114: e8 0b 00 f9  	str	x8, [sp, #16]
   83118: e1 02 40 f9  	ldr	x1, [x23]
   8311c: e0 83 00 91  	add	x0, sp, #32
   83120: 02 06 80 52  	mov	w2, #48
   83124: 31 00 00 94  	bl	0x831e8 <memcpy>
   83128: 01 00 00 b0  	adrp	x1, 0x84000 <_ZN42_$LT$$RF$T$u20$as$u20$core..fmt..Debug$GT$3fmt17h91a03beae5aa8267E+0x110>
   8312c: 21 80 09 91  	add	x1, x1, #608
   83130: e0 03 00 91  	mov	x0, sp
   83134: e2 83 00 91  	add	x2, sp, #32
   83138: 23 f8 ff 97  	bl	0x811c4 <_ZN4core3fmt5write17h4089dd81629a8d2eE>
   8313c: 00 f9 07 37  	tbnz	w0, #0, 0x8305c <_ZN42_$LT$$RF$T$u20$as$u20$core..fmt..Debug$GT$3fmt17h91a03beae5aa8267E+0x40>
   83140: 01 00 00 b0  	adrp	x1, 0x84000 <_ZN42_$LT$$RF$T$u20$as$u20$core..fmt..Debug$GT$3fmt17h91a03beae5aa8267E+0x128>
   83144: 21 4c 0a 91  	add	x1, x1, #659
   83148: e0 03 00 91  	mov	x0, sp
   8314c: 42 00 80 52  	mov	w2, #2
   83150: c4 f8 ff 97  	bl	0x81460 <_ZN68_$LT$core..fmt..builders..PadAdapter$u20$as$u20$core..fmt..Write$GT$9write_str17h006d11991b68be72E>
   83154: 40 f8 07 37  	tbnz	w0, #0, 0x8305c <_ZN42_$LT$$RF$T$u20$as$u20$core..fmt..Debug$GT$3fmt17h91a03beae5aa8267E+0x40>
   83158: 01 00 00 b0  	adrp	x1, 0x84000 <_ZN42_$LT$$RF$T$u20$as$u20$core..fmt..Debug$GT$3fmt17h91a03beae5aa8267E+0x140>
   8315c: 21 38 0b 91  	add	x1, x1, #718
   83160: 22 00 80 52  	mov	w2, #1
   83164: e0 03 13 aa  	mov	x0, x19
   83168: c0 02 3f d6  	blr	x22
   8316c: f5 03 00 2a  	mov	w21, w0
   83170: bc ff ff 17  	b	0x83060 <_ZN42_$LT$$RF$T$u20$as$u20$core..fmt..Debug$GT$3fmt17h91a03beae5aa8267E+0x44>

0000000000083174 <_ZN42_$LT$$RF$T$u20$as$u20$core..fmt..Debug$GT$3fmt17hc72048f68cee3930E>:
   83174: ff 83 00 d1  	sub	sp, sp, #32
   83178: fe 4f 01 a9  	stp	x30, x19, [sp, #16]
   8317c: 33 20 42 a9  	ldp	x19, x8, [x1, #32]
   83180: 01 00 00 90  	adrp	x1, 0x83000 <_ZN42_$LT$$RF$T$u20$as$u20$core..fmt..Debug$GT$3fmt17hc72048f68cee3930E+0xc>
   83184: 21 28 1c 91  	add	x1, x1, #1802
   83188: 62 00 80 52  	mov	w2, #3
   8318c: 03 0d 40 f9  	ldr	x3, [x8, #24]
   83190: e0 03 13 aa  	mov	x0, x19
   83194: e3 07 00 f9  	str	x3, [sp, #8]
   83198: 60 00 3f d6  	blr	x3
   8319c: a0 00 00 36  	tbz	w0, #0, 0x831b0 <_ZN42_$LT$$RF$T$u20$as$u20$core..fmt..Debug$GT$3fmt17hc72048f68cee3930E+0x3c>
   831a0: fe 4f 41 a9  	ldp	x30, x19, [sp, #16]
   831a4: 20 00 80 52  	mov	w0, #1
   831a8: ff 83 00 91  	add	sp, sp, #32
   831ac: c0 03 5f d6  	ret
   831b0: e0 03 13 aa  	mov	x0, x19
   831b4: e3 07 40 f9  	ldr	x3, [sp, #8]
   831b8: fe 4f 41 a9  	ldp	x30, x19, [sp, #16]
   831bc: 01 00 00 90  	adrp	x1, 0x83000 <_ZN42_$LT$$RF$T$u20$as$u20$core..fmt..Debug$GT$3fmt17hc72048f68cee3930E+0x48>
   831c0: 21 34 1c 91  	add	x1, x1, #1805
   831c4: e2 00 80 52  	mov	w2, #7
   831c8: ff 83 00 91  	add	sp, sp, #32
   831cc: 60 00 1f d6  	br	x3

00000000000831d0 <_ZN53_$LT$core..fmt..Error$u20$as$u20$core..fmt..Debug$GT$3fmt17h7940a6b0f953e665E>:
   831d0: 20 20 42 a9  	ldp	x0, x8, [x1, #32]
   831d4: 01 00 00 b0  	adrp	x1, 0x84000 <_ZN53_$LT$core..fmt..Error$u20$as$u20$core..fmt..Debug$GT$3fmt17h7940a6b0f953e665E+0x8>
   831d8: 21 80 0f 91  	add	x1, x1, #992
   831dc: a2 00 80 52  	mov	w2, #5
   831e0: 03 0d 40 f9  	ldr	x3, [x8, #24]
   831e4: 60 00 1f d6  	br	x3

00000000000831e8 <memcpy>:
   831e8: c2 00 00 b4  	cbz	x2, 0x83200 <memcpy+0x18>
   831ec: e8 03 00 aa  	mov	x8, x0
   831f0: 29 14 40 38  	ldrb	w9, [x1], #1
   831f4: 42 04 00 f1  	subs	x2, x2, #1
   831f8: 09 15 00 38  	strb	w9, [x8], #1
   831fc: a1 ff ff 54  	b.ne	0x831f0 <memcpy+0x8>
   83200: c0 03 5f d6  	ret

0000000000083204 <memset>:
   83204: 62 02 00 b4  	cbz	x2, 0x83250 <memset+0x4c>
   83208: 5f 04 00 f1  	cmp	x2, #1
   8320c: 61 00 00 54  	b.ne	0x83218 <memset+0x14>
   83210: e8 03 1f aa  	mov	x8, xzr
   83214: 0a 00 00 14  	b	0x8323c <memset+0x38>
   83218: 48 f8 7f 92  	and	x8, x2, #0xfffffffffffffffe
   8321c: 09 04 00 91  	add	x9, x0, #1
   83220: ea 03 08 aa  	mov	x10, x8
   83224: 21 f1 1f 38  	sturb	w1, [x9, #-1]
   83228: 21 25 00 38  	strb	w1, [x9], #2
   8322c: 4a 09 00 f1  	subs	x10, x10, #2
   83230: a1 ff ff 54  	b.ne	0x83224 <memset+0x20>
   83234: 1f 01 02 eb  	cmp	x8, x2
   83238: c0 00 00 54  	b.eq	0x83250 <memset+0x4c>
   8323c: 49 00 08 cb  	sub	x9, x2, x8
   83240: 08 00 08 8b  	add	x8, x0, x8
   83244: 29 05 00 f1  	subs	x9, x9, #1
   83248: 01 15 00 38  	strb	w1, [x8], #1
   8324c: c1 ff ff 54  	b.ne	0x83244 <memset+0x40>
   83250: c0 03 5f d6  	ret

Disassembly of section .rodata:

0000000000083258 <$d.30>:
   83258: 1c 00 08 08  	stxrb	w8, w28, [x0]
   8325c: 11 08 08 08  	stxrb	w8, w17, [x0]
   83260: 08 08 08 08  	stxrb	w8, w8, [x0]
   83264: 08 08 08 08  	stxrb	w8, w8, [x0]
   83268: 08 08 08 08  	stxrb	w8, w8, [x0]
   8326c: 08 08 08 08  	stxrb	w8, w8, [x0]
   83270: 08 08 08 08  	stxrb	w8, w8, [x0]
   83274: 08 08 05 33  	bfi	w8, w0, #27, #3
   83278: 00 02 0d 21  	<unknown>
   8327c: 00 04 0e 13  	sbfiz	w0, w0, #18, #2
   83280: 18 21 00 08  	stxrb	w0, w24, [x8]

0000000000083281 <$d.43>:
   83281: 21 00 08 08  	stxrb	w8, w1, [x1]
   83285: 14 08 08 08  	stxrb	w8, w20, [x0]
   83289: 08 08 08 08  	stxrb	w8, w8, [x0]
   8328d: 08 08 08 08  	stxrb	w8, w8, [x0]
   83291: 08 08 08 08  	stxrb	w8, w8, [x0]
   83295: 08 08 08 08  	stxrb	w8, w8, [x0]
   83299: 08 05 35 00  	<unknown>
   8329d: 02 0d 23 00  	<unknown>
   832a1: 09 15 04 1a  	<unknown>
   832a5: 00 00 00 88  	stxr	w0, w0, [x0]

00000000000832a8 <$d.49>:
   832a8: 88 06 08 00  	<unknown>
   832ac: 00 00 00 00  	udf	#0
   832b0: 08 00 00 00  	udf	#8
   832b4: 00 00 00 00  	udf	#0
   832b8: 08 00 00 00  	udf	#8
   832bc: 00 00 00 00  	udf	#0
   832c0: 1c 01 08 00  	<unknown>
   832c4: 00 00 00 00  	udf	#0
   832c8: 20 00 08 00  	<unknown>
   832cc: 00 00 00 00  	udf	#0
   832d0: e4 00 08 00  	<unknown>
   832d4: 00 00 00 00  	udf	#0

00000000000832d8 <$d.50>:
   832d8: 0d 0a 73 72  	<unknown>

00000000000832da <$d.51>:
   832da: 73 72 63 2f  	<unknown>
   832de: 75 61 72 74  	<unknown>
   832e2: 2e 72 73 00  	<unknown>
   832e6: 00 00 da 32  	<unknown>

00000000000832e8 <$d.52>:
   832e8: da 32 08 00  	<unknown>
   832ec: 00 00 00 00  	udf	#0
   832f0: 0b 00 00 00  	udf	#11
   832f4: 00 00 00 00  	udf	#0
   832f8: 40 00 00 00  	udf	#64
   832fc: 17 00 00 00  	udf	#23

0000000000083300 <$d.53>:
   83300: 45 6e 64 20  	<unknown>
   83304: 6f 66 20 70  	adr	x15, #265423
   83308: 72 6f 67 72  	<unknown>
   8330c: 61 6d 2e 00  	<unknown>

0000000000083310 <$d.54>:
   83310: 70 33 08 00  	<unknown>
   83314: 00 00 00 00  	udf	#0
   83318: 0b 00 00 00  	udf	#11
   8331c: 00 00 00 00  	udf	#0
   83320: 38 00 00 00  	udf	#56
   83324: 05 00 00 00  	udf	#5

0000000000083328 <$d.55>:
   83328: 7b 33 08 00  	<unknown>
   8332c: 00 00 00 00  	udf	#0
   83330: 0d 00 00 00  	udf	#13
   83334: 00 00 00 00  	udf	#0

0000000000083338 <$d.56>:
   83338: 88 06 08 00  	<unknown>
		...
   83348: 01 00 00 00  	udf	#1
   8334c: 00 00 00 00  	udf	#0
   83350: d0 31 08 00  	<unknown>
   83354: 00 00 00 00  	udf	#0

0000000000083358 <$d.57>:
   83358: 70 33 08 00  	<unknown>
   8335c: 00 00 00 00  	udf	#0
   83360: 0b 00 00 00  	udf	#11
   83364: 00 00 00 00  	udf	#0
   83368: 31 00 00 00  	udf	#49
   8336c: 2e 00 00 00  	udf	#46

0000000000083370 <$d.58>:
   83370: 73 72 63 2f  	<unknown>
   83374: 6d 61 69 6e  	rsubhn2	v13.8h, v11.4s, v9.4s
   83378: 2e 72 73 48  	<unknown>

000000000008337b <$d.59>:
   8337b: 48 65 6c 6c  	ldnp	d8, d25, [x10, #-320]
   8337f: 6f 20 57 6f  	umlal2	v15.4s, v3.8h, v7.h[1]
   83383: 72 6c 64 21  	<unknown>
   83387: 0a 43 34 08  	<unknown>

0000000000083388 <$d.60>:
   83388: 43 34 08 00  	<unknown>
   8338c: 00 00 00 00  	udf	#0
   83390: 12 00 00 00  	udf	#18
   83394: 00 00 00 00  	udf	#0

0000000000083398 <$d.61>:
		...
   833a0: 02 00 00 00  	udf	#2
		...
   833b0: 02 00 00 00  	udf	#2
		...
   833c0: 20 00 00 00  	udf	#32
   833c4: 04 00 00 00  	udf	#4
   833c8: 03 00 00 00  	udf	#3
   833cc: 00 00 00 00  	udf	#0

00000000000833d0 <$d.62>:
   833d0: 63 61 6c 6c  	ldnp	d3, d24, [x11, #-320]
   833d4: 65 64 20 60  	<unknown>
   833d8: 52 65 73 75  	<unknown>
   833dc: 6c 74 3a 3a  	<unknown>
   833e0: 75 6e 77 72  	<unknown>
   833e4: 61 70 28 29  	stp	w1, w28, [x3, #-192]
   833e8: 60 20 6f 6e  	usubl2	v0.4s, v3.8h, v15.8h
   833ec: 20 61 6e 20  	<unknown>
   833f0: 60 45 72 72  	<unknown>
   833f4: 60 20 76 61  	<unknown>
   833f8: 6c 75 65 00  	<unknown>
   833fc: 00 00 00 00  	udf	#0

0000000000083400 <$d.63>:
   83400: 88 06 08 00  	<unknown>
		...
   83410: 01 00 00 00  	udf	#1
   83414: 00 00 00 00  	udf	#0
   83418: d0 31 08 00  	<unknown>
   8341c: 00 00 00 00  	udf	#0

0000000000083420 <$d.64>:
   83420: 38 34 08 00  	<unknown>
   83424: 00 00 00 00  	udf	#0
   83428: 0b 00 00 00  	udf	#11
   8342c: 00 00 00 00  	udf	#0
   83430: 0d 00 00 00  	udf	#13
   83434: 41 00 00 00  	udf	#65

0000000000083438 <$d.65>:
   83438: 73 72 63 2f  	<unknown>
   8343c: 67 72 69 74  	<unknown>
   83440: 2e 72 73 0d  	<unknown>

0000000000083443 <$d.66>:
   83443: 0d 0a 70 61  	<unknown>
   83447: 6e 69 63 20  	<unknown>
   8344b: 6f 63 63 75  	<unknown>
   8344f: 72 72 65 64  	<unknown>
   83453: 3a 20 00 00  	udf	#8250
   83457: 00 b8 34 08  	<unknown>

0000000000083458 <$d.67>:
   83458: b8 34 08 00  	<unknown>
   8345c: 00 00 00 00  	udf	#0
   83460: 20 00 00 00  	udf	#32
   83464: 00 00 00 00  	udf	#0
   83468: f8 34 08 00  	<unknown>
   8346c: 00 00 00 00  	udf	#0
   83470: 12 00 00 00  	udf	#18
   83474: 00 00 00 00  	udf	#0

0000000000083478 <$d.68>:
   83478: 7c 09 08 00  	<unknown>
		...
   83488: 01 00 00 00  	udf	#1
   8348c: 00 00 00 00  	udf	#0
   83490: 80 09 08 00  	<unknown>
   83494: 00 00 00 00  	udf	#0
   83498: 6c 69 62 72  	<unknown>
   8349c: 61 72 79 2f  	<unknown>
   834a0: 63 6f 72 65  	<unknown>
   834a4: 2f 73 72 63  	<unknown>
   834a8: 2f 73 6c 69  	ldpsw	x15, x28, [x25, #-160]
   834ac: 63 65 2f 6d  	stp	d3, d25, [x11, #-272]
   834b0: 65 6d 63 68  	<unknown>
   834b4: 72 2e 72 73  	<unknown>

00000000000834b8 <$d.69>:
   834b8: 69 6e 64 65  	<unknown>
   834bc: 78 20 6f 75  	<unknown>
   834c0: 74 20 6f 66  	<unknown>
   834c4: 20 62 6f 75  	<unknown>
   834c8: 6e 64 73 3a  	<unknown>
   834cc: 20 74 68 65  	<unknown>
   834d0: 20 6c 65 6e  	umin	v0.8h, v1.8h, v5.8h
   834d4: 20 69 73 20  	<unknown>
   834d8: 6c 69 62 72  	<unknown>
   834dc: 61 72 79 2f  	<unknown>
   834e0: 63 6f 72 65  	<unknown>
   834e4: 2f 73 72 63  	<unknown>
   834e8: 2f 66 6d 74  	<unknown>
   834ec: 2f 62 75 69  	ldpsw	x15, x24, [x17, #-88]
   834f0: 6c 64 65 72  	<unknown>
   834f4: 73 2e 72 73  	<unknown>

00000000000834f8 <$d.70>:
   834f8: 20 62 75 74  	<unknown>
   834fc: 20 74 68 65  	<unknown>
   83500: 20 69 6e 64  	<unknown>
   83504: 65 78 20 69  	<unknown>
   83508: 73 20 30 30  	adr	x19, #394253

000000000008350a <$d.71>:
   8350a: 30 30 30 31  	adds	w16, w1, #3084
   8350e: 30 32 30 33  	<unknown>
   83512: 30 34 30 35  	cbnz	w16, 0xe3b96 <$d.143+0x5f7b6>
   83516: 30 36 30 37  	tbnz	w16, #6, 0x83bda <$d.108+0x12>
   8351a: 30 38 30 39  	strb	w16, [x1, #3086]
   8351e: 31 30 31 31  	adds	w17, w1, #3148
   83522: 31 32 31 33  	<unknown>
   83526: 31 34 31 35  	cbnz	w17, 0xe5baa <$d.143+0x617ca>
   8352a: 31 36 31 37  	tbnz	w17, #6, 0x85bee <$d.143+0x180e>
   8352e: 31 38 31 39  	strb	w17, [x1, #3150]
   83532: 32 30 32 31  	adds	w18, w1, #3212
   83536: 32 32 32 33  	<unknown>
   8353a: 32 34 32 35  	cbnz	w18, 0xe7bbe <$d.143+0x637de>
   8353e: 32 36 32 37  	tbnz	w18, #6, 0x87c02 <$d.143+0x3822>
   83542: 32 38 32 39  	strb	w18, [x1, #3214]
   83546: 33 30 33 31  	adds	w19, w1, #3276
   8354a: 33 32 33 33  	<unknown>
   8354e: 33 34 33 35  	cbnz	w19, 0xe9bd2 <$d.143+0x657f2>
   83552: 33 36 33 37  	tbnz	w19, #6, 0x89c16 <$d.143+0x5836>
   83556: 33 38 33 39  	strb	w19, [x1, #3278]
   8355a: 34 30 34 31  	adds	w20, w1, #3340
   8355e: 34 32 34 33  	<unknown>
   83562: 34 34 34 35  	cbnz	w20, 0xebbe6 <$d.143+0x67806>
   83566: 34 36 34 37  	tbnz	w20, #6, 0x7bc2a <compiler_builtins.6e7f17f3-cgu.61+0x7bc2a>
   8356a: 34 38 34 39  	strb	w20, [x1, #3342]
   8356e: 35 30 35 31  	adds	w21, w1, #3404
   83572: 35 32 35 33  	<unknown>
   83576: 35 34 35 35  	cbnz	w21, 0xedbfa <$d.143+0x6981a>
   8357a: 35 36 35 37  	tbnz	w21, #6, 0x7dc3e <compiler_builtins.6e7f17f3-cgu.61+0x7dc3e>
   8357e: 35 38 35 39  	strb	w21, [x1, #3406]
   83582: 36 30 36 31  	adds	w22, w1, #3468
   83586: 36 32 36 33  	<unknown>
   8358a: 36 34 36 35  	cbnz	w22, 0xefc0e <$d.143+0x6b82e>
   8358e: 36 36 36 37  	tbnz	w22, #6, 0x7fc52 <compiler_builtins.6e7f17f3-cgu.61+0x7fc52>
   83592: 36 38 36 39  	strb	w22, [x1, #3470]
   83596: 37 30 37 31  	adds	w23, w1, #3532
   8359a: 37 32 37 33  	<unknown>
   8359e: 37 34 37 35  	cbnz	w23, 0xf1c22 <$d.143+0x6d842>
   835a2: 37 36 37 37  	tbnz	w23, #6, 0x81c66 <_ZN71_$LT$core..ops..range..Range$LT$Idx$GT$$u20$as$u20$core..fmt..Debug$GT$3fmt17h38324d94ece27e25E+0x4a>
   835a6: 37 38 37 39  	strb	w23, [x1, #3534]
   835aa: 38 30 38 31  	adds	w24, w1, #3596
   835ae: 38 32 38 33  	<unknown>
   835b2: 38 34 38 35  	cbnz	w24, 0xf3c36 <$d.143+0x6f856>
   835b6: 38 36 38 37  	tbnz	w24, #7, 0x83c7a <$d.109+0x66>
   835ba: 38 38 38 39  	strb	w24, [x1, #3598]
   835be: 39 30 39 31  	adds	w25, w1, #3660
   835c2: 39 32 39 33  	<unknown>
   835c6: 39 34 39 35  	cbnz	w25, 0xf5c4a <$d.143+0x7186a>
   835ca: 39 36 39 37  	tbnz	w25, #7, 0x85c8e <$d.143+0x18ae>
   835ce: 39 38 39 39  	strb	w25, [x1, #3662]
   835d2: 00 00 00 00  	udf	#0
   835d6: 00 00 f8 35  	cbnz	w0, 0x735d6 <compiler_builtins.6e7f17f3-cgu.61+0x735d6>

00000000000835d8 <$d.72>:
   835d8: f8 35 08 00  	<unknown>
   835dc: 00 00 00 00  	udf	#0
   835e0: 12 00 00 00  	udf	#18
   835e4: 00 00 00 00  	udf	#0
   835e8: 0a 36 08 00  	<unknown>
   835ec: 00 00 00 00  	udf	#0
   835f0: 22 00 00 00  	udf	#34
   835f4: 00 00 00 00  	udf	#0

00000000000835f8 <$d.73>:
   835f8: 72 61 6e 67  	<unknown>
   835fc: 65 20 73 74  	<unknown>
   83600: 61 72 74 20  	<unknown>
   83604: 69 6e 64 65  	<unknown>
   83608: 78 20 20 6f  	<unknown>

000000000008360a <$d.74>:
   8360a: 20 6f 75 74  	<unknown>
   8360e: 20 6f 66 20  	<unknown>
   83612: 72 61 6e 67  	<unknown>
   83616: 65 20 66 6f  	umlal2	v5.4s, v3.8h, v6.h[2]
   8361a: 72 20 73 6c  	ldnp	d18, d8, [x3, #-208]
   8361e: 69 63 65 20  	<unknown>
   83622: 6f 66 20 6c  	stnp	d15, d25, [x19, #-512]
   83626: 65 6e 67 74  	<unknown>
   8362a: 68 20 00 00  	udf	#8296
   8362e: 00 00 60 36  	tbz	w0, #12, 0x8362e <$d.74+0x24>

0000000000083630 <$d.75>:
   83630: 60 36 08 00  	<unknown>
   83634: 00 00 00 00  	udf	#0
   83638: 10 00 00 00  	udf	#16
   8363c: 00 00 00 00  	udf	#0
   83640: 0a 36 08 00  	<unknown>
   83644: 00 00 00 00  	udf	#0
   83648: 22 00 00 00  	udf	#34
   8364c: 00 00 00 00  	udf	#0
   83650: 29 20 77 68  	<unknown>
   83654: 65 6e 20 73  	<unknown>
   83658: 6c 69 63 69  	ldpsw	x12, x26, [x11, #-232]
   8365c: 6e 67 20 60  	<unknown>

0000000000083660 <$d.76>:
   83660: 72 61 6e 67  	<unknown>
   83664: 65 20 65 6e  	usubl2	v5.4s, v3.8h, v5.8h
   83668: 64 20 69 6e  	usubl2	v4.4s, v3.8h, v9.8h
   8366c: 64 65 78 20  	<unknown>

0000000000083670 <$d.77>:
   83670: 60 00 00 00  	udf	#96
   83674: 00 00 00 00  	udf	#0

0000000000083678 <$d.78>:
   83678: 92 36 08 00  	<unknown>
   8367c: 00 00 00 00  	udf	#0
   83680: 1b 00 00 00  	udf	#27
   83684: 00 00 00 00  	udf	#0
   83688: 65 00 00 00  	udf	#101
   8368c: 14 00 00 00  	udf	#20

0000000000083690 <$d.79>:
   83690: 30 78 6c 69  	ldpsw	x16, x30, [x1, #-160]

0000000000083692 <$d.80>:
   83692: 6c 69 62 72  	<unknown>
   83696: 61 72 79 2f  	<unknown>
   8369a: 63 6f 72 65  	<unknown>
   8369e: 2f 73 72 63  	<unknown>
   836a2: 2f 66 6d 74  	<unknown>
   836a6: 2f 6e 75 6d  	ldp	d15, d27, [x17, #-176]
   836aa: 2e 72 73 00  	<unknown>
   836ae: 00 00 d0 36  	tbz	w0, #26, 0x836ae <$d.80+0x1c>

00000000000836b0 <$d.81>:
   836b0: d0 36 08 00  	<unknown>
   836b4: 00 00 00 00  	udf	#0
   836b8: 16 00 00 00  	udf	#22
   836bc: 00 00 00 00  	udf	#0
   836c0: e6 36 08 00  	<unknown>
   836c4: 00 00 00 00  	udf	#0
   836c8: 0d 00 00 00  	udf	#13
   836cc: 00 00 00 00  	udf	#0

00000000000836d0 <$d.82>:
   836d0: 73 6c 69 63  	<unknown>
   836d4: 65 20 69 6e  	usubl2	v5.4s, v3.8h, v9.8h
   836d8: 64 65 78 20  	<unknown>
   836dc: 73 74 61 72  	<unknown>
   836e0: 74 73 20 61  	<unknown>
   836e4: 74 20 20 62  	<unknown>

00000000000836e6 <$d.83>:
   836e6: 20 62 75 74  	<unknown>
   836ea: 20 65 6e 64  	<unknown>
   836ee: 73 20 61 74  	<unknown>
   836f2: 20 00 00 00  	udf	#32
   836f6: 00 00 08 37  	tbnz	w0, #1, 0x836f6 <$d.83+0x10>

00000000000836f8 <$d.84>:
   836f8: 08 37 08 00  	<unknown>
   836fc: 00 00 00 00  	udf	#0
   83700: 02 00 00 00  	udf	#2
   83704: 00 00 00 00  	udf	#0

0000000000083708 <$d.85>:
   83708: 2e 2e 41 6e  	<unknown>

000000000008370a <$d.86>:
   8370a: 41 6e 79 20  	<unknown>

000000000008370d <$d.87>:
   8370d: 20 7b 20 2e  	sqneg	v0.8b, v25.8b
   83711: 2e 20 7d 00  	<unknown>
   83715: 00 00 00 78  	sturh	w0, [x0]

0000000000083718 <$d.88>:
   83718: 78 34 08 00  	<unknown>
		...
   83728: 38 37 08 00  	<unknown>
   8372c: 00 00 00 00  	udf	#0
   83730: 02 00 00 00  	udf	#2
   83734: 00 00 00 00  	udf	#0

0000000000083738 <$d.89>:
   83738: 3a 20 00 00  	udf	#8250
   8373c: 00 00 00 00  	udf	#0

0000000000083740 <$d.90>:
   83740: 98 34 08 00  	<unknown>
   83744: 00 00 00 00  	udf	#0
   83748: 20 00 00 00  	udf	#32
   8374c: 00 00 00 00  	udf	#0
   83750: 5a 00 00 00  	udf	#90
   83754: 05 00 00 00  	udf	#5

0000000000083758 <$d.91>:
   83758: 20 20 20 20  	<unknown>
   8375c: 53 6f 6d 65  	<unknown>
   83760: 20 3c 3d 20  	<unknown>
   83764: 66 69 6c 65  	<unknown>
   83768: 6c 69 6e 65  	<unknown>
   8376c: 4e 6f 6e 65  	<unknown>

0000000000083770 <$d.92>:
   83770: d8 34 08 00  	<unknown>
   83774: 00 00 00 00  	udf	#0
   83778: 20 00 00 00  	udf	#32
   8377c: 00 00 00 00  	udf	#0
   83780: 2f 00 00 00  	udf	#47
   83784: 21 00 00 00  	udf	#33

0000000000083788 <$d.93>:
   83788: d8 34 08 00  	<unknown>
   8378c: 00 00 00 00  	udf	#0
   83790: 20 00 00 00  	udf	#32
   83794: 00 00 00 00  	udf	#0
   83798: 30 00 00 00  	udf	#48
   8379c: 12 00 00 00  	udf	#18

00000000000837a0 <$d.94>:
   837a0: 5b 2e 2e 2e  	uqsub	v27.8b, v18.8b, v14.8b
   837a4: 5d 00 00 00  	udf	#93

00000000000837a8 <$d.95>:
   837a8: 98 38 08 00  	<unknown>
   837ac: 00 00 00 00  	udf	#0
   837b0: 0b 00 00 00  	udf	#11
   837b4: 00 00 00 00  	udf	#0
   837b8: 3e 42 08 00  	<unknown>
   837bc: 00 00 00 00  	udf	#0
   837c0: 16 00 00 00  	udf	#22
   837c4: 00 00 00 00  	udf	#0
   837c8: 70 36 08 00  	<unknown>
   837cc: 00 00 00 00  	udf	#0
   837d0: 01 00 00 00  	udf	#1
   837d4: 00 00 00 00  	udf	#0

00000000000837d8 <$d.96>:
   837d8: 30 42 08 00  	<unknown>
   837dc: 00 00 00 00  	udf	#0
   837e0: 0e 00 00 00  	udf	#14
   837e4: 00 00 00 00  	udf	#0
   837e8: 60 37 08 00  	<unknown>
   837ec: 00 00 00 00  	udf	#0
   837f0: 04 00 00 00  	udf	#4
   837f4: 00 00 00 00  	udf	#0
   837f8: 50 36 08 00  	<unknown>
   837fc: 00 00 00 00  	udf	#0
   83800: 10 00 00 00  	udf	#16
   83804: 00 00 00 00  	udf	#0
   83808: 70 36 08 00  	<unknown>
   8380c: 00 00 00 00  	udf	#0
   83810: 01 00 00 00  	udf	#1
   83814: 00 00 00 00  	udf	#0

0000000000083818 <$d.97>:
   83818: 63 61 6c 6c  	ldnp	d3, d24, [x11, #-320]
   8381c: 65 64 20 60  	<unknown>
   83820: 4f 70 74 69  	ldpsw	x15, x28, [x2, #-96]
   83824: 6f 6e 3a 3a  	<unknown>
   83828: 75 6e 77 72  	<unknown>
   8382c: 61 70 28 29  	stp	w1, w28, [x3, #-192]
   83830: 60 20 6f 6e  	usubl2	v0.4s, v3.8h, v15.8h
   83834: 20 61 20 60  	<unknown>
   83838: 4e 6f 6e 65  	<unknown>
   8383c: 60 20 76 61  	<unknown>
   83840: 6c 75 65 00  	<unknown>
   83844: 00 00 00 00  	udf	#0

0000000000083848 <$d.98>:
   83848: 98 38 08 00  	<unknown>
   8384c: 00 00 00 00  	udf	#0
   83850: 0b 00 00 00  	udf	#11
   83854: 00 00 00 00  	udf	#0
   83858: a3 38 08 00  	<unknown>
   8385c: 00 00 00 00  	udf	#0
   83860: 26 00 00 00  	udf	#38
   83864: 00 00 00 00  	udf	#0
   83868: c9 38 08 00  	<unknown>
   8386c: 00 00 00 00  	udf	#0
   83870: 08 00 00 00  	udf	#8
   83874: 00 00 00 00  	udf	#0
   83878: e1 38 08 00  	<unknown>
   8387c: 00 00 00 00  	udf	#0
   83880: 06 00 00 00  	udf	#6
   83884: 00 00 00 00  	udf	#0
   83888: 70 36 08 00  	<unknown>
   8388c: 00 00 00 00  	udf	#0
   83890: 01 00 00 00  	udf	#1
   83894: 00 00 00 00  	udf	#0

0000000000083898 <$d.99>:
   83898: 62 79 74 65  	<unknown>
   8389c: 20 69 6e 64  	<unknown>
   838a0: 65 78 20 20  	<unknown>

00000000000838a3 <$d.100>:
   838a3: 20 69 73 20  	<unknown>
   838a7: 6e 6f 74 20  	<unknown>
   838ab: 61 20 63 68  	<unknown>
   838af: 61 72 20 62  	<unknown>
   838b3: 6f 75 6e 64  	<unknown>
   838b7: 61 72 79 3b  	<unknown>
   838bb: 20 69 74 20  	<unknown>
   838bf: 69 73 20 69  	<unknown>
   838c3: 6e 73 69 64  	<unknown>
   838c7: 65 20 20 28  	stnp	w5, w8, [x3, #-256]

00000000000838c9 <$d.101>:
   838c9: 20 28 62 79  	ldrh	w0, [x1, #4372]
   838cd: 74 65 73 20  	<unknown>
   838d1: 6c 6f 63 61  	<unknown>
   838d5: 74 69 6f 6e  	<unknown>
   838d9: 4c 6f 63 61  	<unknown>
   838dd: 74 69 6f 6e  	<unknown>

00000000000838e1 <$d.102>:
   838e1: 29 20 6f 66  	<unknown>
   838e5: 20 60 00 01  	<unknown>

00000000000838e7 <$d.103>:
   838e7: 00 01 03 05  	<unknown>
   838eb: 05 06 06 03  	<unknown>
   838ef: 07 06 08 08  	stxrb	w8, w7, [x16]
   838f3: 09 11 0a 1c  	ldr	s9, 0x97b13 <$d.143+0x13733>
   838f7: 0b 19 0c 14  	b	0x389d23 <$d.143+0x305943>
   838fb: 0d 10 0e 0d  	<unknown>
   838ff: 0f 04 10 03  	<unknown>
   83903: 12 12 13 09  	<unknown>
   83907: 16 01 17 05  	<unknown>
   8390b: 18 02 19 03  	<unknown>
   8390f: 1a 07 1c 02  	<unknown>
   83913: 1d 01 1f 16  	b	0xfffffffff8843d87 <$d.143+0xfffffffff87bf9a7>
   83917: 20 03 2b 03  	<unknown>
   8391b: 2c 02 2d 0b  	add	w12, w17, w13, uxtb
   8391f: 2e 01 30 03  	<unknown>
   83923: 31 02 32 01  	<unknown>
   83927: a7 02 a9 02  	<unknown>
   8392b: aa 04 ab 08  	<unknown>
   8392f: fa 02 fb 05  	<unknown>
   83933: fd 04 fe 03  	<unknown>
   83937: ff 09 00 00  	udf	#2559
   8393b: 00 00 00 00  	udf	#0
   8393f: 00 66 3e 08  	<unknown>

0000000000083940 <$d.104>:
   83940: 66 3e 08 00  	<unknown>
   83944: 00 00 00 00  	udf	#0
   83948: 25 00 00 00  	udf	#37
   8394c: 00 00 00 00  	udf	#0
   83950: 0a 00 00 00  	udf	#10
   83954: 1c 00 00 00  	udf	#28

0000000000083958 <$d.105>:
   83958: ad 78 79 8b  	<unknown>
   8395c: 8d a2 30 57  	<unknown>
   83960: 58 8b 8c 90  	adrp	x24, 0xffffffff191eb000 <$d.143+0xffffffffffc63b20>
   83964: 1c 1d dd 0e  	<unknown>
   83968: 0f 4b 4c fb  	<unknown>
   8396c: fc 2e 2f 3f  	<unknown>
   83970: 5c 5d 5f b5  	cbnz	x28, 0x142518 <$d.143+0xbe138>
   83974: e2 84 8d 8e  	<unknown>
   83978: 91 92 a9 b1  	<unknown>
   8397c: ba bb c5 c6  	<unknown>
   83980: c9 ca de e4  	<unknown>
   83984: e5 ff 00 04  	<unknown>
   83988: 11 12 29 31  	adds	w17, w16, #2628
   8398c: 34 37 3a 3b  	<unknown>
   83990: 3d 49 4a 5d  	<unknown>
   83994: 84 8e 92 a9  	stp	x4, x3, [x20, #296]!
   83998: b1 b4 ba bb  	<unknown>
   8399c: c6 ca ce cf  	<unknown>
   839a0: e4 e5 00 04  	<unknown>
   839a4: 0d 0e 11 12  	and	w13, w16, #0x78000
   839a8: 29 31 34 3a  	<unknown>
   839ac: 3b 45 46 49  	<unknown>
   839b0: 4a 5e 64 65  	<unknown>
   839b4: 84 91 9b 9d  	<unknown>
   839b8: c9 ce cf 0d  	ld1r	{ v9.1d }, [x22], x15
   839bc: 11 29 45 49  	<unknown>
   839c0: 57 64 65 8d  	<unknown>
   839c4: 91 a9 b4 ba  	<unknown>
   839c8: bb c5 c9 df  	<unknown>
   839cc: e4 e5 f0 0d  	ld4r	{ v4.4h, v5.4h, v6.4h, v7.4h }, [x15], x16
   839d0: 11 45 49 64  	<unknown>
   839d4: 65 80 84 b2  	<unknown>
   839d8: bc be bf d5  	<unknown>
   839dc: d7 f0 f1 83  	<unknown>
   839e0: 85 8b a4 a6  	<unknown>
   839e4: be bf c5 c7  	<unknown>
   839e8: ce cf da db  	<unknown>
   839ec: 48 98 bd cd  	<unknown>
   839f0: c6 ce cf 49  	<unknown>
   839f4: 4e 4f 57 59  	<unknown>
   839f8: 5e 5f 89 8e  	<unknown>
   839fc: 8f b1 b6 b7  	tbnz	x15, #54, 0x8102c <_ZN44_$LT$$RF$T$u20$as$u20$core..fmt..Display$GT$3fmt17h3f94e73c8b157ba1E+0x298>
   83a00: bf c1 c6 c7  	<unknown>
   83a04: d7 11 16 17  	b	0xfffffffffc608160 <$d.143+0xfffffffffc583d80>
   83a08: 5b 5c f6 f7  	<unknown>
   83a0c: fe ff 80 0d  	<unknown>
   83a10: 6d 71 de df  	<unknown>
   83a14: 0e 0f 1f 6e  	mov	v14.b[15], v24.b[1]
   83a18: 6f 1c 1d 5f  	<unknown>
   83a1c: 7d 7e ae af  	<unknown>
   83a20: bb bc fa 16  	b	0xfffffffffbf32d0c <$d.143+0xfffffffffbeae92c>
   83a24: 17 1e 1f 46  	<unknown>
   83a28: 47 4e 4f 58  	ldr	x7, 0x1223f0 <$d.143+0x9e010>
   83a2c: 5a 5c 5e 7e  	<unknown>
   83a30: 7f b5 c5 d4  	<unknown>
   83a34: d5 dc f0 f1  	<unknown>
   83a38: f5 72 73 8f  	<unknown>
   83a3c: 74 75 96 2f  	<unknown>
   83a40: 5f 26 2e 2f  	urshr	v31.2s, v18.2s, #18
   83a44: a7 af b7 bf  	<unknown>
   83a48: c7 cf d7 df  	<unknown>
   83a4c: 9a 40 97 98  	ldrsw	x26, 0xfffffffffffb225c <$d.143+0xfffffffffff2de7c>
   83a50: 30 8f 1f c0  	<unknown>
   83a54: c1 ce ff 4e  	fmls	v1.2d, v22.2d, v31.2d
   83a58: 4f 5a 5b 07  	<unknown>
   83a5c: 08 0f 10 27  	<unknown>
   83a60: 2f ee ef 6e  	facgt	v15.2d, v17.2d, v15.2d
   83a64: 6f 37 3d 3f  	<unknown>
   83a68: 42 45 90 91  	<unknown>
   83a6c: fe ff 53 67  	<unknown>
   83a70: 75 c8 c9 d0  	adrp	x21, 0xffffffff93991000 <$d.143+0xffffffffffe4dac8>
   83a74: d1 d8 d9 e7  	<unknown>
   83a78: fe ff 00 20  	<unknown>

0000000000083a7a <$d.106>:
   83a7a: 00 20 5f 22  	<unknown>
   83a7e: 82 df 04 82  	<unknown>
   83a82: 44 08 1b 04  	<unknown>
   83a86: 06 11 81 ac  	stp	q6, q4, [x8], #32
   83a8a: 0e 80 ab 35  	cbnz	w14, 0xfffffffffffdaa8a <$d.143+0xfffffffffff566aa>
   83a8e: 28 0b 80 e0  	<unknown>
   83a92: 03 19 08 01  	<unknown>
   83a96: 04 2f 04 34  	cbz	w4, 0x8c076 <$d.143+0x7c96>
   83a9a: 04 07 03 01  	<unknown>
   83a9e: 07 06 07 11  	add	w7, w16, #449
   83aa2: 0a 50 0f 12  	and	w10, w0, #0xfffe003f
   83aa6: 07 55 07 03  	<unknown>
   83aaa: 04 1c 0a 09  	<unknown>
   83aae: 03 08 03 07  	<unknown>
   83ab2: 03 02 03 03  	<unknown>
   83ab6: 03 0c 04 05  	<unknown>
   83aba: 03 0b 06 01  	<unknown>
   83abe: 0e 15 05 3a  	<unknown>
   83ac2: 03 11 07 06  	<unknown>
   83ac6: 05 10 07 57  	<unknown>
   83aca: 07 02 07 15  	b	0x42442e6 <$d.143+0x41bff06>
   83ace: 0d 50 04 43  	<unknown>
   83ad2: 03 2d 03 01  	<unknown>
   83ad6: 04 11 06 0f  	<unknown>
   83ada: 0c 3a 04 1d  	<unknown>
   83ade: 25 5f 20 6d  	stp	d5, d23, [x25, #-512]
   83ae2: 04 6a 25 80  	<unknown>
   83ae6: c8 05 82 b0  	adrp	x8, 0xffffffff0413c000 <$d.143+0xffffffffffc0f9ea>
   83aea: 03 1a 06 82  	<unknown>
   83aee: fd 03 59 07  	<unknown>
   83af2: 15 0b 17 09  	<unknown>
   83af6: 14 0c 14 0c  	<unknown>
   83afa: 6a 06 0a 06  	<unknown>
   83afe: 1a 06 59 07  	<unknown>
   83b02: 2b 05 46 0a  	and	w11, w9, w6, lsr #1
   83b06: 2c 04 0c 04  	<unknown>
   83b0a: 01 03 31 0b  	add	w1, w24, w17, uxtb
   83b0e: 2c 04 1a 06  	<unknown>
   83b12: 0b 03 80 ac  	stp	q11, q0, [x24], #0
   83b16: 06 0a 06 21  	<unknown>
   83b1a: 3f 4c 04 2d  	stp	s31, s19, [x1, #32]
   83b1e: 03 74 08 3c  	str	b3, [x0], #135
   83b22: 03 0f 03 3c  	str	b3, [x24, #48]!
   83b26: 07 38 08 2b  	adds	w7, w0, w8, lsl #14
   83b2a: 05 82 ff 11  	<unknown>
   83b2e: 18 08 2f 11  	add	w24, w0, #3010
   83b32: 2d 03 20 10  	adr	x13, #262244
   83b36: 21 0f 80 8c  	<unknown>
   83b3a: 04 82 97 19  	<unknown>
   83b3e: 0b 15 88 94  	bl	0x2288f6a <$d.143+0x2204b8a>
   83b42: 05 2f 05 3b  	<unknown>
   83b46: 07 02 0e 18  	ldr	w7, 0x9fb86 <$d.143+0x1b7a6>
   83b4a: 09 80 b3 2d  	stp	s9, s0, [x0, #-100]!
   83b4e: 74 0c 80 d6  	<unknown>
   83b52: 1a 0c 05 80  	<unknown>
   83b56: ff 05 80 df  	<unknown>
   83b5a: 0c ee 0d 03  	<unknown>
   83b5e: 84 8d 03 37  	tbnz	w4, #0, 0x8ad0e <$d.143+0x692e>
   83b62: 09 81 5c 14  	b	0x17a3f86 <$d.143+0x171fba6>
   83b66: 80 b8 08 80  	<unknown>
   83b6a: cb 2a 38 03  	<unknown>
   83b6e: 0a 06 38 08  	<unknown>
   83b72: 46 08 0c 06  	<unknown>
   83b76: 74 0b 1e 03  	<unknown>
   83b7a: 5a 04 59 09  	<unknown>
   83b7e: 80 83 18 1c  	ldr	s0, 0xb4bee <$d.143+0x3080e>
   83b82: 0a 16 09 4c  	<unknown>
   83b86: 04 80 8a 06  	<unknown>
   83b8a: ab a4 0c 17  	b	0xfffffffffc3ace36 <$d.143+0xfffffffffc328a56>
   83b8e: 04 31 a1 04  	<unknown>
   83b92: 81 da 26 07  	<unknown>
   83b96: 0c 05 05 80  	<unknown>
   83b9a: a5 11 81 6d  	stp	d5, d4, [x13, #16]!
   83b9e: 10 78 28 2a  	orn	w16, w0, w8, lsl #30
   83ba2: 06 4c 04 80  	<unknown>
   83ba6: 8d 04 80 be  	<unknown>
   83baa: 03 1b 03 0f  	<unknown>
   83bae: 0d 00 66 3e  	<unknown>

0000000000083bb0 <$d.107>:
   83bb0: 66 3e 08 00  	<unknown>
   83bb4: 00 00 00 00  	udf	#0
   83bb8: 25 00 00 00  	udf	#37
   83bbc: 00 00 00 00  	udf	#0
   83bc0: 1a 00 00 00  	udf	#26
   83bc4: 36 00 00 00  	udf	#54

0000000000083bc8 <$d.108>:
   83bc8: 00 06 01 01  	<unknown>
   83bcc: 03 01 04 02  	<unknown>
   83bd0: 08 08 09 02  	<unknown>
   83bd4: 0a 05 0b 02  	<unknown>
   83bd8: 0e 04 10 01  	<unknown>
   83bdc: 11 02 12 05  	<unknown>
   83be0: 13 11 14 01  	<unknown>
   83be4: 15 02 17 02  	<unknown>
   83be8: 19 0d 1c 05  	<unknown>
   83bec: 1d 08 24 01  	<unknown>
   83bf0: 6a 03 6b 02  	<unknown>
   83bf4: bc 02 d1 02  	<unknown>
   83bf8: d4 0c d5 09  	<unknown>
   83bfc: d6 02 d7 02  	<unknown>
   83c00: da 01 e0 05  	<unknown>
   83c04: e1 02 e8 02  	<unknown>
   83c08: ee 20 f0 04  	<unknown>
   83c0c: f8 02 f9 02  	<unknown>
   83c10: fa 02 fb 01  	<unknown>

0000000000083c14 <$d.109>:
   83c14: 0c 27 3b 3e  	<unknown>
   83c18: 4e 4f 8f 9e  	<unknown>
   83c1c: 9e 9f 06 07  	<unknown>
   83c20: 09 36 3d 3e  	<unknown>
   83c24: 56 f3 d0 d1  	<unknown>
   83c28: 04 14 18 36  	tbz	w4, #3, 0x83ea8 <_ZN4core7unicode12unicode_data15grapheme_extend17SHORT_OFFSET_RUNS17h64a2cc9fbd764d72E+0x1c>
   83c2c: 37 56 57 7f  	sli	d23, d17, #23
   83c30: aa ae af bd  	<unknown>
   83c34: 35 e0 12 87  	<unknown>
   83c38: 89 8e 9e 04  	<unknown>
   83c3c: 0d 0e 11 12  	and	w13, w16, #0x78000
   83c40: 29 31 34 3a  	<unknown>
   83c44: 45 46 49 4a  	eor	w5, w18, w9, lsr #17
   83c48: 4e 4f 64 65  	<unknown>
   83c4c: 5c b6 b7 1b  	<unknown>
   83c50: 1c 07 08 0a  	and	w28, w24, w8, lsl #1
   83c54: 0b 14 17 36  	tbz	w11, #2, 0x81ed4 <_ZN4core3fmt3num52_$LT$impl$u20$core..fmt..Debug$u20$for$u20$usize$GT$3fmt17h420029119b997121E+0x23c>
   83c58: 39 3a a8 a9  	stp	x25, x14, [x17, #-384]!
   83c5c: d8 d9 09 37  	tbnz	w24, #1, 0x87794 <$d.143+0x33b4>
   83c60: 90 91 a8 07  	<unknown>
   83c64: 0a 3b 3e 66  	<unknown>
   83c68: 69 8f 92 6f  	<unknown>
   83c6c: 5f ee ef 5a  	<unknown>
   83c70: 62 9a 9b 27  	<unknown>
   83c74: 28 55 9d a0  	<unknown>
   83c78: a1 a3 a4 a7  	<unknown>
   83c7c: a8 ad ba bc  	<unknown>
   83c80: c4 06 0b 0c  	<unknown>
   83c84: 15 1d 3a 3f  	<unknown>
   83c88: 45 51 a6 a7  	<unknown>
   83c8c: cc cd a0 07  	<unknown>
   83c90: 19 1a 22 25  	<unknown>
   83c94: 3e 3f c5 c6  	<unknown>
   83c98: 04 20 23 25  	<unknown>
   83c9c: 26 28 33 38  	<unknown>
   83ca0: 3a 48 4a 4c  	<unknown>
   83ca4: 50 53 55 56  	<unknown>
   83ca8: 58 5a 5c 5e  	<unknown>
   83cac: 60 63 65 66  	<unknown>
   83cb0: 6b 73 78 7d  	ldr	h11, [x27, #7224]
   83cb4: 7f 8a a4 aa  	orn	xzr, x19, x4, asr #34
   83cb8: af b0 c0 d0  	adrp	x15, 0xffffffff81699000 <$d.143+0xffffffffffe05130>
   83cbc: ae af 79 cc  	<unknown>
   83cc0: 6e 6f 93 5e  	<unknown>

0000000000083cc3 <$d.110>:
   83cc3: 5e 22 7b 05  	<unknown>
   83cc7: 03 04 2d 03  	<unknown>
   83ccb: 66 03 01 2f  	<unknown>
   83ccf: 2e 80 82 1d  	<unknown>
   83cd3: 03 31 0f 1c  	ldr	s3, 0xa22f3 <$d.143+0x1df13>
   83cd7: 04 24 09 1e  	<unknown>
   83cdb: 05 2b 05 44  	<unknown>
   83cdf: 04 0e 2a 80  	<unknown>
   83ce3: aa 06 24 04  	<unknown>
   83ce7: 24 04 28 08  	<unknown>
   83ceb: 34 0b 01 80  	<unknown>
   83cef: 90 81 37 09  	<unknown>
   83cf3: 16 0a 08 80  	<unknown>
   83cf7: 98 39 03 63  	<unknown>
   83cfb: 08 09 30 16  	b	0xfffffffff8c8611b <$d.143+0xfffffffff8c01d3b>
   83cff: 05 21 03 1b  	madd	w5, w8, w3, w8
   83d03: 05 01 40 38  	ldurb	w5, [x8]
   83d07: 04 4b 05 2f  	<unknown>
   83d0b: 04 0a 07 09  	<unknown>
   83d0f: 07 40 20 27  	<unknown>
   83d13: 04 0c 09 36  	tbz	w4, #1, 0x85e93 <$d.143+0x1ab3>
   83d17: 03 3a 05 1a  	<unknown>
   83d1b: 07 04 0c 07  	<unknown>
   83d1f: 50 49 37 33  	<unknown>
   83d23: 0d 33 07 2e  	ext	v13.8b, v24.8b, v7.8b, #6
   83d27: 08 0a 81 26  	<unknown>
   83d2b: 52 4e 28 08  	<unknown>
   83d2f: 2a 56 1c 14  	b	0x7995d7 <$d.143+0x7151f7>
   83d33: 17 09 4e 04  	<unknown>
   83d37: 1e 0f 43 0e  	<unknown>
   83d3b: 19 07 0a 06  	<unknown>
   83d3f: 48 08 27 09  	<unknown>
   83d43: 75 0b 3f 41  	<unknown>
   83d47: 2a 06 3b 05  	<unknown>
   83d4b: 0a 06 51 06  	<unknown>
   83d4f: 01 05 10 03  	<unknown>
   83d53: 05 80 8b 62  	<unknown>
   83d57: 1e 48 08 0a  	and	w30, w0, w8, lsl #18
   83d5b: 80 a6 5e 22  	<unknown>
   83d5f: 45 0b 0a 06  	<unknown>
   83d63: 0d 13 39 07  	<unknown>
   83d67: 0a 36 2c 04  	<unknown>
   83d6b: 10 80 c0 3c  	ldur	q16, [x0, #8]
   83d6f: 64 53 0c 48  	stxrh	w12, w4, [x27]
   83d73: 09 0a 46 45  	<unknown>
   83d77: 1b 48 08 53  	ubfx	w27, w0, #8, #11
   83d7b: 1d 39 81 07  	<unknown>
   83d7f: 46 0a 1d 03  	<unknown>
   83d83: 47 49 37 03  	<unknown>
   83d87: 0e 08 0a 06  	<unknown>
   83d8b: 39 07 0a 81  	<unknown>
   83d8f: 36 19 80 b7  	tbnz	x22, #48, 0x840b3 <_ZN4core7unicode12unicode_data15grapheme_extend7OFFSETS17h23f93b9a3466b714E+0x17b>
   83d93: 01 0f 32 0d  	<unknown>
   83d97: 83 9b 66 75  	<unknown>
   83d9b: 0b 80 c4 8a  	and	x11, x0, x4, ror #32
   83d9f: bc 84 2f 8f  	<unknown>
   83da3: d1 82 47 a1  	<unknown>
   83da7: b9 82 39 07  	<unknown>
   83dab: 2a 04 02 60  	<unknown>
   83daf: 26 0a 46 0a  	and	w6, w17, w6, lsr #2
   83db3: 28 05 13 82  	<unknown>
   83db7: b0 5b 65 4b  	<unknown>
   83dbb: 04 39 07 11  	add	w4, w8, #462
   83dbf: 40 05 0b 02  	<unknown>
   83dc3: 0e 97 f8 08  	<unknown>
   83dc7: 84 d6 2a 09  	<unknown>
   83dcb: a2 f7 81 1f  	<unknown>
   83dcf: 31 03 11 04  	<unknown>
   83dd3: 08 81 8c 89  	<unknown>
   83dd7: 04 6b 05 0d  	<unknown>
   83ddb: 03 09 07 10  	adr	x3, #57632
   83ddf: 93 60 80 f6  	<unknown>
   83de3: 0a 73 08 6e  	ext	v10.16b, v24.16b, v8.16b, #14
   83de7: 17 46 80 9a  	csinc	x23, x16, x0, mi
   83deb: 14 0c 57 09  	<unknown>
   83def: 19 80 87 81  	<unknown>
   83df3: 47 03 85 42  	<unknown>
   83df7: 0f 15 85 50  	adr	x15, #-1006942
   83dfb: 2b 80 d5 2d  	ldp	s11, s0, [x1, #172]!
   83dff: 03 1a 04 02  	<unknown>
   83e03: 81 70 3a 05  	<unknown>
   83e07: 01 85 00 80  	<unknown>
   83e0b: d7 29 4c 04  	<unknown>
   83e0f: 0a 04 02 83  	<unknown>
   83e13: 11 44 4c 3d  	ldr	b17, [x0, #785]
   83e17: 80 c2 3c 06  	<unknown>
   83e1b: 01 04 55 05  	<unknown>
   83e1f: 1b 34 02 81  	<unknown>
   83e23: 0e 2c 04 64  	<unknown>
   83e27: 0c 56 0a 80  	<unknown>
   83e2b: ae 38 1d 0d  	<unknown>
   83e2f: 2c 04 09 07  	<unknown>
   83e33: 02 0e 06 80  	<unknown>
   83e37: 9a 83 d8 08  	ldarb	w26, [x28]
   83e3b: 0d 03 0d 03  	<unknown>
   83e3f: 74 0c 59 07  	<unknown>
   83e43: 0c 14 0c 04  	<unknown>
   83e47: 38 08 0a 06  	<unknown>
   83e4b: 28 08 22 4e  	<unknown>
   83e4f: 81 54 0c 15  	b	0x4399053 <$d.143+0x4314c73>
   83e53: 03 03 05 07  	<unknown>
   83e57: 09 19 07 07  	<unknown>
   83e5b: 09 03 0d 07  	<unknown>
   83e5f: 29 80 cb 25  	<unknown>
   83e63: 0a 84 06 6c  	stnp	d10, d1, [x0, #104]

0000000000083e66 <$d.111>:
   83e66: 6c 69 62 72  	<unknown>
   83e6a: 61 72 79 2f  	<unknown>
   83e6e: 63 6f 72 65  	<unknown>
   83e72: 2f 73 72 63  	<unknown>
   83e76: 2f 75 6e 69  	ldpsw	x15, x29, [x9, #-144]
   83e7a: 63 6f 64 65  	<unknown>
   83e7e: 2f 70 72 69  	ldpsw	x15, x28, [x1, #-112]
   83e82: 6e 74 61 62  	<unknown>
   83e86: 6c 65 2e 72  	ands	w12, w11, #0xfffc0fff
   83e8a: 73 00 00 03  	<unknown>

0000000000083e8c <_ZN4core7unicode12unicode_data15grapheme_extend17SHORT_OFFSET_RUNS17h64a2cc9fbd764d72E>:
   83e8c: 00 03 00 00  	udf	#768
   83e90: 83 04 20 00  	<unknown>
   83e94: 91 05 60 00  	<unknown>
   83e98: 5d 13 a0 00  	<unknown>
   83e9c: 12 17 a0 1e  	<unknown>
   83ea0: 0c 20 e0 1e  	<unknown>
   83ea4: ef 2c 20 2b  	adds	w15, w7, w0, uxth #3
   83ea8: 2a 30 a0 2b  	<unknown>
   83eac: 6f a6 60 2c  	ldnp	s15, s9, [x19, #-252]
   83eb0: 02 a8 e0 2c  	ldp	s2, s10, [x0], #-252
   83eb4: 1e fb e0 2d  	ldp	s30, s30, [x24, #-252]!
   83eb8: 00 fe a0 35  	cbnz	w0, 0xfffffffffffc5e78 <$d.143+0xfffffffffff41a98>
   83ebc: 9e ff e0 35  	cbnz	w30, 0x45eac <compiler_builtins.6e7f17f3-cgu.61+0x45eac>
   83ec0: fd 01 61 36  	tbz	w29, #12, 0x85efc <$d.143+0x1b1c>
   83ec4: 01 0a a1 36  	tbz	w1, #20, 0x86004 <$d.143+0x1c24>
   83ec8: 24 0d 61 37  	tbnz	w4, #12, 0x8606c <$d.143+0x1c8c>
   83ecc: ab 0e e1 38  	<unknown>
   83ed0: 2f 18 21 39  	strb	w15, [x1, #2118]
   83ed4: 30 1c 61 46  	<unknown>
   83ed8: f3 1e a1 4a  	eon	w19, w23, w1, asr #7
   83edc: f0 6a 61 4e  	fcvtn2	v16.4s, v23.2d
   83ee0: 4f 6f a1 4e  	smin	v15.4s, v26.4s, v1.4s
   83ee4: 9d bc 21 4f  	<unknown>
   83ee8: 65 d1 e1 4f  	<unknown>
   83eec: 00 da 21 50  	adr	x0, #277314
   83ef0: 00 e0 e1 51  	<unknown>
   83ef4: 30 e1 61 53  	<unknown>
   83ef8: ec e2 a1 54  	b.gt	0xfffffffffffc7b54 <$d.143+0xfffffffffff43774>
   83efc: d0 e8 e1 54  	<unknown>
   83f00: 20 00 2e 55  	<unknown>
   83f04: f0 01 bf 55  	<unknown>

0000000000083f08 <$d.113>:
   83f08: 08 42 08 00  	<unknown>
   83f0c: 00 00 00 00  	udf	#0
   83f10: 28 00 00 00  	udf	#40
   83f14: 00 00 00 00  	udf	#0
   83f18: 4b 00 00 00  	udf	#75
   83f1c: 28 00 00 00  	udf	#40

0000000000083f20 <$d.114>:
   83f20: 08 42 08 00  	<unknown>
   83f24: 00 00 00 00  	udf	#0
   83f28: 28 00 00 00  	udf	#40
   83f2c: 00 00 00 00  	udf	#0
   83f30: 52 00 00 00  	udf	#82
   83f34: 3e 00 00 00  	udf	#62

0000000000083f38 <_ZN4core7unicode12unicode_data15grapheme_extend7OFFSETS17h23f93b9a3466b714E>:
   83f38: 00 70 00 07  	<unknown>
   83f3c: 00 2d 01 01  	<unknown>
   83f40: 01 02 01 02  	<unknown>
   83f44: 01 01 48 0b  	add	w1, w8, w8, lsr #0
   83f48: 30 15 10 01  	<unknown>
   83f4c: 65 07 02 06  	<unknown>
   83f50: 02 02 01 04  	<unknown>
   83f54: 23 01 1e 1b  	madd	w3, w9, w30, w0
   83f58: 5b 0b 3a 09  	<unknown>
   83f5c: 09 01 18 04  	<unknown>
   83f60: 01 09 01 03  	<unknown>
   83f64: 01 05 2b 03  	<unknown>
   83f68: 77 0f 01 20  	<unknown>
   83f6c: 37 01 01 01  	<unknown>
   83f70: 04 08 04 01  	<unknown>
   83f74: 03 07 0a 02  	<unknown>
   83f78: 1d 01 3a 01  	<unknown>
   83f7c: 01 01 02 04  	<unknown>
   83f80: 08 01 09 01  	<unknown>
   83f84: 0a 02 1a 01  	<unknown>
   83f88: 02 02 39 01  	<unknown>
   83f8c: 04 02 04 02  	<unknown>
   83f90: 02 03 03 01  	<unknown>
   83f94: 1e 02 03 01  	<unknown>
   83f98: 0b 02 39 01  	<unknown>
   83f9c: 04 05 01 02  	<unknown>
   83fa0: 04 01 14 02  	<unknown>
   83fa4: 16 06 01 01  	<unknown>
   83fa8: 3a 01 01 02  	<unknown>
   83fac: 01 04 08 01  	<unknown>
   83fb0: 07 03 0a 02  	<unknown>
   83fb4: 1e 01 3b 01  	<unknown>
   83fb8: 01 01 0c 01  	<unknown>
   83fbc: 09 01 28 01  	<unknown>
   83fc0: 03 01 39 03  	<unknown>
   83fc4: 05 03 01 04  	<unknown>
   83fc8: 07 02 0b 02  	<unknown>
   83fcc: 1d 01 3a 01  	<unknown>
   83fd0: 02 01 02 01  	<unknown>
   83fd4: 03 01 05 02  	<unknown>
   83fd8: 07 02 0b 02  	<unknown>
   83fdc: 1c 02 39 02  	<unknown>
   83fe0: 01 01 02 04  	<unknown>
   83fe4: 08 01 09 01  	<unknown>
   83fe8: 0a 02 1d 01  	<unknown>
   83fec: 48 01 04 01  	<unknown>
   83ff0: 02 03 01 01  	<unknown>
   83ff4: 08 01 51 01  	<unknown>
   83ff8: 02 07 0c 08  	stxrb	w12, w2, [x24]
   83ffc: 62 01 02 09  	<unknown>
   84000: 0b 06 4a 02  	<unknown>
   84004: 1b 01 01 01  	<unknown>
   84008: 01 01 37 0e  	saddl	v1.8h, v8.8b, v23.8b
   8400c: 01 05 01 02  	<unknown>
   84010: 05 0b 01 24  	<unknown>
   84014: 09 01 66 04  	<unknown>
   84018: 01 06 01 02  	<unknown>
   8401c: 02 02 19 02  	<unknown>
   84020: 04 03 10 04  	<unknown>
   84024: 0d 01 02 02  	<unknown>
   84028: 06 01 0f 01  	<unknown>
   8402c: 00 03 00 03  	<unknown>
   84030: 1d 03 1d 02  	<unknown>
   84034: 1e 02 40 02  	<unknown>
   84038: 01 07 08 01  	<unknown>
   8403c: 02 0b 09 01  	<unknown>
   84040: 2d 03 77 02  	<unknown>
   84044: 22 01 76 03  	<unknown>
   84048: 04 02 09 01  	<unknown>
   8404c: 06 03 db 02  	<unknown>
   84050: 02 01 3a 01  	<unknown>
   84054: 01 07 01 01  	<unknown>
   84058: 01 01 02 08  	stxrb	w2, w1, [x8]
   8405c: 06 0a 02 01  	<unknown>
   84060: 30 11 3f 04  	<unknown>
   84064: 30 07 01 01  	<unknown>
   84068: 05 01 28 09  	<unknown>
   8406c: 0c 02 20 04  	<unknown>
   84070: 02 02 01 03  	<unknown>
   84074: 38 01 01 02  	<unknown>
   84078: 03 01 01 03  	<unknown>
   8407c: 3a 08 02 02  	<unknown>
   84080: 98 03 01 0d  	<unknown>
   84084: 01 07 04 01  	<unknown>
   84088: 06 01 03 02  	<unknown>
   8408c: c6 3a 01 05  	<unknown>
   84090: 00 01 c3 21  	<unknown>
   84094: 00 03 8d 01  	<unknown>
   84098: 60 20 00 06  	<unknown>
   8409c: 69 02 00 04  	<unknown>
   840a0: 01 0a 20 02  	<unknown>
   840a4: 50 02 00 01  	<unknown>
   840a8: 03 01 04 01  	<unknown>
   840ac: 19 02 05 01  	<unknown>
   840b0: 97 02 1a 12  	and	w23, w20, #0x40
   840b4: 0d 01 26 08  	<unknown>
   840b8: 19 0b 2e 03  	<unknown>
   840bc: 30 01 02 04  	<unknown>
   840c0: 02 02 27 01  	<unknown>
   840c4: 43 06 02 02  	<unknown>
   840c8: 02 02 0c 01  	<unknown>
   840cc: 08 01 2f 01  	<unknown>
   840d0: 33 01 01 03  	<unknown>
   840d4: 02 02 05 02  	<unknown>
   840d8: 01 01 2a 02  	<unknown>
   840dc: 08 01 ee 01  	<unknown>
   840e0: 02 01 04 01  	<unknown>
   840e4: 00 01 00 10  	adr	x0, #32
   840e8: 10 10 00 02  	<unknown>
   840ec: 00 01 e2 01  	<unknown>
   840f0: 95 05 00 03  	<unknown>
   840f4: 01 02 05 04  	<unknown>
   840f8: 28 03 04 01  	<unknown>
   840fc: a5 02 00 04  	<unknown>
   84100: 00 02 99 0b  	add	w0, w16, w25, asr #0
   84104: b0 01 36 0f  	<unknown>
   84108: 38 03 31 04  	<unknown>
   8410c: 02 02 45 03  	<unknown>
   84110: 24 05 01 08  	stxrb	w1, w4, [x9]
   84114: 3e 01 0c 02  	<unknown>
   84118: 34 09 0a 04  	<unknown>
   8411c: 02 01 5f 03  	<unknown>
   84120: 02 01 01 02  	<unknown>
   84124: 06 01 a0 01  	<unknown>
   84128: 03 08 15 02  	<unknown>
   8412c: 39 02 01 01  	<unknown>
   84130: 01 01 16 01  	<unknown>
   84134: 0e 07 03 05  	<unknown>
   84138: c3 08 02 03  	<unknown>
   8413c: 01 01 17 01  	<unknown>
   84140: 51 01 02 06  	<unknown>
   84144: 01 01 02 01  	<unknown>
   84148: 01 02 01 02  	<unknown>
   8414c: eb 01 02 04  	<unknown>
   84150: 06 02 01 02  	<unknown>
   84154: 1b 02 55 08  	ldxrb	w27, [x16]
   84158: 02 01 01 02  	<unknown>
   8415c: 6a 01 01 01  	<unknown>
   84160: 02 06 01 01  	<unknown>
   84164: 65 03 02 04  	<unknown>
   84168: 01 05 00 09  	<unknown>
   8416c: 01 02 f5 01  	<unknown>
   84170: 0a 02 01 01  	<unknown>
   84174: 04 01 90 04  	<unknown>
   84178: 02 02 04 01  	<unknown>
   8417c: 20 0a 28 06  	<unknown>
   84180: 02 04 08 01  	<unknown>
   84184: 09 06 02 03  	<unknown>
   84188: 2e 0d 01 02  	<unknown>
   8418c: 00 07 01 06  	<unknown>
   84190: 01 01 52 16  	b	0xfffffffff9504594 <$d.143+0xfffffffff94801b4>
   84194: 02 07 01 02  	<unknown>
   84198: 01 02 7a 06  	<unknown>
   8419c: 03 01 01 02  	<unknown>
   841a0: 01 07 01 01  	<unknown>
   841a4: 48 02 03 01  	<unknown>
   841a8: 01 01 00 02  	<unknown>
   841ac: 00 05 3b 07  	<unknown>
   841b0: 00 01 3f 04  	<unknown>
   841b4: 51 01 00 02  	<unknown>
   841b8: 00 01 01 03  	<unknown>
   841bc: 04 05 08 08  	stxrb	w8, w4, [x8]
   841c0: 02 07 1e 04  	<unknown>
   841c4: 94 03 00 37  	tbnz	w20, #0, 0x84234 <$d.118+0x4>
   841c8: 04 32 08 01  	<unknown>
   841cc: 0e 01 16 05  	<unknown>
   841d0: 01 0f 00 07  	<unknown>
   841d4: 01 11 02 07  	<unknown>
   841d8: 01 02 01 05  	<unknown>
   841dc: 00 07 00 04  	<unknown>
   841e0: 00 07 6d 07  	<unknown>
   841e4: 00 60 80 f0  	adrp	x0, 0xffffffff00c87000 <$d.143+0xffffffffffc02e10>
		...

00000000000841f0 <$d.116>:
   841f0: 08 42 08 00  	<unknown>
   841f4: 00 00 00 00  	udf	#0
   841f8: 28 00 00 00  	udf	#40
   841fc: 00 00 00 00  	udf	#0
   84200: 57 00 00 00  	udf	#87
   84204: 16 00 00 00  	udf	#22

0000000000084208 <$d.117>:
   84208: 6c 69 62 72  	<unknown>
   8420c: 61 72 79 2f  	<unknown>
   84210: 63 6f 72 65  	<unknown>
   84214: 2f 73 72 63  	<unknown>
   84218: 2f 75 6e 69  	ldpsw	x15, x29, [x9, #-144]
   8421c: 63 6f 64 65  	<unknown>
   84220: 2f 75 6e 69  	ldpsw	x15, x29, [x9, #-144]
   84224: 63 6f 64 65  	<unknown>
   84228: 5f 64 61 74  	<unknown>
   8422c: 61 2e 72 73  	<unknown>

0000000000084230 <$d.118>:
   84230: 62 65 67 69  	ldpsw	x2, x25, [x11, #-200]
   84234: 6e 20 3c 3d  	str	b14, [x3, #3848]
   84238: 20 65 6e 64  	<unknown>
   8423c: 20 28 20 69  	<unknown>

000000000008423e <$d.119>:
   8423e: 20 69 73 20  	<unknown>
   84242: 6f 75 74 20  	<unknown>
   84246: 6f 66 20 62  	<unknown>
   8424a: 6f 75 6e 64  	<unknown>
   8424e: 73 20 6f 66  	<unknown>
   84252: 20 60 20 7b  	<unknown>

0000000000084254 <$d.120>:
   84254: 20 7b 20 2c  	stnp	s0, s30, [x25, #-256]

0000000000084257 <$d.121>:
   84257: 2c 20 00 00  	udf	#8236
   8425b: 00 00 00 00  	udf	#0
   8425f: 00 7c 09 08  	stxrb	w9, w0, [x0]

0000000000084260 <$d.122>:
   84260: 7c 09 08 00  	<unknown>
   84264: 00 00 00 00  	udf	#0
   84268: 18 00 00 00  	udf	#24
   8426c: 00 00 00 00  	udf	#0
   84270: 08 00 00 00  	udf	#8
   84274: 00 00 00 00  	udf	#0
   84278: 60 14 08 00  	<unknown>
   8427c: 00 00 00 00  	udf	#0
   84280: a4 24 08 00  	<unknown>
   84284: 00 00 00 00  	udf	#0
   84288: 84 25 08 00  	<unknown>
   8428c: 00 00 00 00  	udf	#0

0000000000084290 <$d.123>:
   84290: 20 7b 0a 2c  	stnp	s0, s30, [x25, #80]

0000000000084293 <$d.124>:
   84293: 2c 0a 00 00  	udf	#2604
   84297: 00 7c 09 08  	stxrb	w9, w0, [x0]

0000000000084298 <$d.125>:
   84298: 7c 09 08 00  	<unknown>
   8429c: 00 00 00 00  	udf	#0
   842a0: 08 00 00 00  	udf	#8
   842a4: 00 00 00 00  	udf	#0
   842a8: 08 00 00 00  	udf	#8
   842ac: 00 00 00 00  	udf	#0
   842b0: b8 25 08 00  	<unknown>
   842b4: 00 00 00 00  	udf	#0
   842b8: c0 25 08 00  	<unknown>
   842bc: 00 00 00 00  	udf	#0
   842c0: a4 26 08 00  	<unknown>
   842c4: 00 00 00 00  	udf	#0

00000000000842c8 <$d.126>:
   842c8: 7d 20 7d 28  	ldnp	w29, w8, [x3, #-24]

00000000000842c9 <$d.127>:
   842c9: 20 7d 28 28  	stnp	w0, wzr, [x9, #-192]

00000000000842cb <$d.128>:
   842cb: 28 28 0a 29  	stp	w8, w10, [x1, #80]

00000000000842cc <$d.129>:
   842cc: 28 0a 29 00  	<unknown>

00000000000842ce <$d.130>:
   842ce: 29 00 00 43  	<unknown>

00000000000842d0 <$d.131>:
   842d0: 00 43 08 00  	<unknown>
   842d4: 00 00 00 00  	udf	#0
   842d8: 1b 00 00 00  	udf	#27
   842dc: 00 00 00 00  	udf	#0
   842e0: 33 08 00 00  	udf	#2099
   842e4: 16 00 00 00  	udf	#22

00000000000842e8 <$d.132>:
   842e8: 00 43 08 00  	<unknown>
   842ec: 00 00 00 00  	udf	#0
   842f0: 1b 00 00 00  	udf	#27
   842f4: 00 00 00 00  	udf	#0
   842f8: 2c 08 00 00  	udf	#2092
   842fc: 1e 00 00 00  	udf	#30

0000000000084300 <$d.133>:
   84300: 6c 69 62 72  	<unknown>
   84304: 61 72 79 2f  	<unknown>
   84308: 63 6f 72 65  	<unknown>
   8430c: 2f 73 72 63  	<unknown>
   84310: 2f 66 6d 74  	<unknown>
   84314: 2f 6d 6f 64  	<unknown>
   84318: 2e 72 73 00  	<unknown>
   8431c: 00 00 00 00  	udf	#0

0000000000084320 <$d.134>:
   84320: 7c 09 08 00  	<unknown>
   84324: 00 00 00 00  	udf	#0
   84328: 08 00 00 00  	udf	#8
   8432c: 00 00 00 00  	udf	#0
   84330: 08 00 00 00  	udf	#8
   84334: 00 00 00 00  	udf	#0
   84338: 40 29 08 00  	<unknown>
   8433c: 00 00 00 00  	udf	#0

0000000000084340 <$d.135>:
   84340: 7c 09 08 00  	<unknown>
   84344: 00 00 00 00  	udf	#0
   84348: 08 00 00 00  	udf	#8
   8434c: 00 00 00 00  	udf	#0
   84350: 08 00 00 00  	udf	#8
   84354: 00 00 00 00  	udf	#0
   84358: dc 26 08 00  	<unknown>
   8435c: 00 00 00 00  	udf	#0

0000000000084360 <$d.136>:
   84360: 63 6f 6c 50  	adr	x3, #888302

0000000000084363 <$d.137>:
   84363: 50 61 6e 69  	ldpsw	x16, x24, [x10, #-144]
   84367: 63 49 6e 66  	<unknown>
   8436b: 6f 70 61 79  	ldrh	w15, [x3, #4280]

000000000008436c <$d.138>:
   8436c: 70 61 79 6c  	ldnp	d16, d24, [x11, #-112]
   84370: 6f 61 64 00  	<unknown>
   84374: 00 00 00 00  	udf	#0

0000000000084378 <$d.139>:
   84378: 7c 09 08 00  	<unknown>
   8437c: 00 00 00 00  	udf	#0
   84380: 08 00 00 00  	udf	#8
   84384: 00 00 00 00  	udf	#0
   84388: 08 00 00 00  	udf	#8
   8438c: 00 00 00 00  	udf	#0
   84390: 74 31 08 00  	<unknown>
   84394: 00 00 00 00  	udf	#0

0000000000084398 <$d.140>:
   84398: 6d 65 73 73  	<unknown>
   8439c: 61 67 65 00  	<unknown>

00000000000843a0 <$d.141>:
   843a0: 7c 09 08 00  	<unknown>
   843a4: 00 00 00 00  	udf	#0
   843a8: 08 00 00 00  	udf	#8
   843ac: 00 00 00 00  	udf	#0
   843b0: 08 00 00 00  	udf	#8
   843b4: 00 00 00 00  	udf	#0
   843b8: 1c 30 08 00  	<unknown>
   843bc: 00 00 00 00  	udf	#0

00000000000843c0 <$d.142>:
   843c0: 7c 09 08 00  	<unknown>
   843c4: 00 00 00 00  	udf	#0
   843c8: 08 00 00 00  	udf	#8
   843cc: 00 00 00 00  	udf	#0
   843d0: 08 00 00 00  	udf	#8
   843d4: 00 00 00 00  	udf	#0
   843d8: fc 2e 08 00  	<unknown>
   843dc: 00 00 00 00  	udf	#0

00000000000843e0 <$d.143>:
   843e0: 45 72 72 6f  	<unknown>
   843e4: 72           	<unknown>

Disassembly of section .symtab:

0000000000000000 <.symtab>:
		...
      18: 01 00 00 00  	udf	#1
      1c: 04 00 f1 ff  	<unknown>
		...
      30: 1e 00 00 00  	udf	#30
      34: 00 00 03 00  	<unknown>
      38: a3 38 08 00  	<unknown>
		...
      48: 25 00 00 00  	udf	#37
      4c: 00 00 03 00  	<unknown>
      50: c9 38 08 00  	<unknown>
		...
      60: 2c 00 00 00  	udf	#44
      64: 00 00 03 00  	<unknown>
      68: e1 38 08 00  	<unknown>
		...
      78: 33 00 00 00  	udf	#51
      7c: 00 00 03 00  	<unknown>
      80: e7 38 08 00  	<unknown>
		...
      90: 3a 00 00 00  	udf	#58
      94: 00 00 03 00  	<unknown>
      98: 40 39 08 00  	<unknown>
		...
      a8: 41 00 00 00  	udf	#65
      ac: 00 00 03 00  	<unknown>
      b0: 58 39 08 00  	<unknown>
		...
      c0: 48 00 00 00  	udf	#72
      c4: 00 00 03 00  	<unknown>
      c8: 7a 3a 08 00  	<unknown>
		...
      d8: 4f 00 00 00  	udf	#79
      dc: 00 00 03 00  	<unknown>
      e0: b0 3b 08 00  	<unknown>
		...
      f0: 56 00 00 00  	udf	#86
      f4: 00 00 03 00  	<unknown>
      f8: c8 3b 08 00  	<unknown>
		...
     108: 5d 00 00 00  	udf	#93
     10c: 00 00 03 00  	<unknown>
     110: 14 3c 08 00  	<unknown>
		...
     120: 64 00 00 00  	udf	#100
     124: 00 00 03 00  	<unknown>
     128: c3 3c 08 00  	<unknown>
		...
     138: 6b 00 00 00  	udf	#107
     13c: 00 00 03 00  	<unknown>
     140: 66 3e 08 00  	<unknown>
		...
     150: 72 00 00 00  	udf	#114
     154: 00 00 03 00  	<unknown>
     158: 8c 3e 08 00  	<unknown>
		...
     168: 79 00 00 00  	udf	#121
     16c: 00 00 03 00  	<unknown>
     170: 08 3f 08 00  	<unknown>
		...
     180: 80 00 00 00  	udf	#128
     184: 00 00 03 00  	<unknown>
     188: 20 3f 08 00  	<unknown>
		...
     198: 87 00 00 00  	udf	#135
     19c: 00 00 03 00  	<unknown>
     1a0: 38 3f 08 00  	<unknown>
		...
     1b0: 8e 00 00 00  	udf	#142
     1b4: 00 00 03 00  	<unknown>
     1b8: f0 41 08 00  	<unknown>
		...
     1c8: 95 00 00 00  	udf	#149
     1cc: 00 00 03 00  	<unknown>
     1d0: 08 42 08 00  	<unknown>
		...
     1e0: 9c 00 00 00  	udf	#156
     1e4: 00 00 03 00  	<unknown>
     1e8: 30 42 08 00  	<unknown>
		...
     1f8: a3 00 00 00  	udf	#163
     1fc: 00 00 03 00  	<unknown>
     200: 3e 42 08 00  	<unknown>
		...
     210: aa 00 00 00  	udf	#170
     214: 00 00 03 00  	<unknown>
     218: 54 42 08 00  	<unknown>
		...
     228: b1 00 00 00  	udf	#177
     22c: 00 00 03 00  	<unknown>
     230: 57 42 08 00  	<unknown>
		...
     240: b8 00 00 00  	udf	#184
     244: 00 00 03 00  	<unknown>
     248: 60 42 08 00  	<unknown>
		...
     258: bf 00 00 00  	udf	#191
     25c: 00 00 03 00  	<unknown>
     260: 90 42 08 00  	<unknown>
		...
     270: c6 00 00 00  	udf	#198
     274: 00 00 03 00  	<unknown>
     278: 93 42 08 00  	<unknown>
		...
     288: cd 00 00 00  	udf	#205
     28c: 00 00 03 00  	<unknown>
     290: 98 42 08 00  	<unknown>
		...
     2a0: d4 00 00 00  	udf	#212
     2a4: 00 00 03 00  	<unknown>
     2a8: c8 42 08 00  	<unknown>
		...
     2b8: db 00 00 00  	udf	#219
     2bc: 00 00 03 00  	<unknown>
     2c0: c9 42 08 00  	<unknown>
		...
     2d0: e2 00 00 00  	udf	#226
     2d4: 00 00 03 00  	<unknown>
     2d8: cb 42 08 00  	<unknown>
		...
     2e8: e9 00 00 00  	udf	#233
     2ec: 00 00 03 00  	<unknown>
     2f0: cc 42 08 00  	<unknown>
		...
     300: f0 00 00 00  	udf	#240
     304: 00 00 03 00  	<unknown>
     308: ce 42 08 00  	<unknown>
		...
     318: f7 00 00 00  	udf	#247
     31c: 00 00 03 00  	<unknown>
     320: d0 42 08 00  	<unknown>
		...
     330: fe 00 00 00  	udf	#254
     334: 00 00 03 00  	<unknown>
     338: e8 42 08 00  	<unknown>
		...
     348: 05 01 00 00  	udf	#261
     34c: 00 00 03 00  	<unknown>
     350: 00 43 08 00  	<unknown>
		...
     360: 0c 01 00 00  	udf	#268
     364: 00 00 03 00  	<unknown>
     368: 20 43 08 00  	<unknown>
		...
     378: 13 01 00 00  	udf	#275
     37c: 00 00 03 00  	<unknown>
     380: 40 43 08 00  	<unknown>
		...
     390: 1a 01 00 00  	udf	#282
     394: 00 00 03 00  	<unknown>
     398: 60 43 08 00  	<unknown>
		...
     3a8: 21 01 00 00  	udf	#289
     3ac: 00 00 03 00  	<unknown>
     3b0: 63 43 08 00  	<unknown>
		...
     3c0: 28 01 00 00  	udf	#296
     3c4: 00 00 03 00  	<unknown>
     3c8: 6c 43 08 00  	<unknown>
		...
     3d8: 2f 01 00 00  	udf	#303
     3dc: 00 00 03 00  	<unknown>
     3e0: 78 43 08 00  	<unknown>
		...
     3f0: 36 01 00 00  	udf	#310
     3f4: 00 00 03 00  	<unknown>
     3f8: 98 43 08 00  	<unknown>
		...
     408: 3d 01 00 00  	udf	#317
     40c: 00 00 03 00  	<unknown>
     410: a0 43 08 00  	<unknown>
		...
     420: 44 01 00 00  	udf	#324
     424: 00 00 03 00  	<unknown>
     428: c0 43 08 00  	<unknown>
		...
     438: 4b 01 00 00  	udf	#331
     43c: 00 00 03 00  	<unknown>
     440: e0 43 08 00  	<unknown>
		...
     450: 52 01 00 00  	udf	#338
     454: 00 00 03 00  	<unknown>
     458: 58 32 08 00  	<unknown>
		...
     468: 58 01 00 00  	udf	#344
     46c: 00 00 03 00  	<unknown>
     470: 81 32 08 00  	<unknown>
		...
     480: 5e 01 00 00  	udf	#350
     484: 00 00 03 00  	<unknown>
     488: a8 32 08 00  	<unknown>
		...
     498: 64 01 00 00  	udf	#356
     49c: 00 00 03 00  	<unknown>
     4a0: d8 32 08 00  	<unknown>
		...
     4b0: 6a 01 00 00  	udf	#362
     4b4: 00 00 03 00  	<unknown>
     4b8: da 32 08 00  	<unknown>
		...
     4c8: 70 01 00 00  	udf	#368
     4cc: 00 00 03 00  	<unknown>
     4d0: e8 32 08 00  	<unknown>
		...
     4e0: 76 01 00 00  	udf	#374
     4e4: 00 00 03 00  	<unknown>
     4e8: 00 33 08 00  	<unknown>
		...
     4f8: 7c 01 00 00  	udf	#380
     4fc: 00 00 03 00  	<unknown>
     500: 10 33 08 00  	<unknown>
		...
     510: 82 01 00 00  	udf	#386
     514: 00 00 03 00  	<unknown>
     518: 28 33 08 00  	<unknown>
		...
     528: 88 01 00 00  	udf	#392
     52c: 00 00 03 00  	<unknown>
     530: 38 33 08 00  	<unknown>
		...
     540: 8e 01 00 00  	udf	#398
     544: 00 00 03 00  	<unknown>
     548: 58 33 08 00  	<unknown>
		...
     558: 94 01 00 00  	udf	#404
     55c: 00 00 03 00  	<unknown>
     560: 70 33 08 00  	<unknown>
		...
     570: 9a 01 00 00  	udf	#410
     574: 00 00 03 00  	<unknown>
     578: 7b 33 08 00  	<unknown>
		...
     588: a0 01 00 00  	udf	#416
     58c: 00 00 03 00  	<unknown>
     590: 88 33 08 00  	<unknown>
		...
     5a0: a6 01 00 00  	udf	#422
     5a4: 00 00 03 00  	<unknown>
     5a8: 98 33 08 00  	<unknown>
		...
     5b8: ac 01 00 00  	udf	#428
     5bc: 00 00 03 00  	<unknown>
     5c0: d0 33 08 00  	<unknown>
		...
     5d0: b2 01 00 00  	udf	#434
     5d4: 00 00 03 00  	<unknown>
     5d8: 00 34 08 00  	<unknown>
		...
     5e8: b8 01 00 00  	udf	#440
     5ec: 00 00 03 00  	<unknown>
     5f0: 20 34 08 00  	<unknown>
		...
     600: be 01 00 00  	udf	#446
     604: 00 00 03 00  	<unknown>
     608: 38 34 08 00  	<unknown>
		...
     618: c4 01 00 00  	udf	#452
     61c: 00 00 03 00  	<unknown>
     620: 43 34 08 00  	<unknown>
		...
     630: ca 01 00 00  	udf	#458
     634: 00 00 03 00  	<unknown>
     638: 58 34 08 00  	<unknown>
		...
     648: d0 01 00 00  	udf	#464
     64c: 00 00 03 00  	<unknown>
     650: 78 34 08 00  	<unknown>
		...
     660: d6 01 00 00  	udf	#470
     664: 00 00 03 00  	<unknown>
     668: b8 34 08 00  	<unknown>
		...
     678: dc 01 00 00  	udf	#476
     67c: 00 00 03 00  	<unknown>
     680: f8 34 08 00  	<unknown>
		...
     690: e2 01 00 00  	udf	#482
     694: 00 00 03 00  	<unknown>
     698: 0a 35 08 00  	<unknown>
		...
     6a8: e8 01 00 00  	udf	#488
     6ac: 00 00 03 00  	<unknown>
     6b0: d8 35 08 00  	<unknown>
		...
     6c0: ee 01 00 00  	udf	#494
     6c4: 00 00 03 00  	<unknown>
     6c8: f8 35 08 00  	<unknown>
		...
     6d8: f4 01 00 00  	udf	#500
     6dc: 00 00 03 00  	<unknown>
     6e0: 0a 36 08 00  	<unknown>
		...
     6f0: fa 01 00 00  	udf	#506
     6f4: 00 00 03 00  	<unknown>
     6f8: 30 36 08 00  	<unknown>
		...
     708: 00 02 00 00  	udf	#512
     70c: 00 00 03 00  	<unknown>
     710: 60 36 08 00  	<unknown>
		...
     720: 06 02 00 00  	udf	#518
     724: 00 00 03 00  	<unknown>
     728: 70 36 08 00  	<unknown>
		...
     738: 0c 02 00 00  	udf	#524
     73c: 00 00 03 00  	<unknown>
     740: 78 36 08 00  	<unknown>
		...
     750: 12 02 00 00  	udf	#530
     754: 00 00 03 00  	<unknown>
     758: 90 36 08 00  	<unknown>
		...
     768: 18 02 00 00  	udf	#536
     76c: 00 00 03 00  	<unknown>
     770: 92 36 08 00  	<unknown>
		...
     780: 1e 02 00 00  	udf	#542
     784: 00 00 03 00  	<unknown>
     788: b0 36 08 00  	<unknown>
		...
     798: 24 02 00 00  	udf	#548
     79c: 00 00 03 00  	<unknown>
     7a0: d0 36 08 00  	<unknown>
		...
     7b0: 2a 02 00 00  	udf	#554
     7b4: 00 00 03 00  	<unknown>
     7b8: e6 36 08 00  	<unknown>
		...
     7c8: 30 02 00 00  	udf	#560
     7cc: 00 00 03 00  	<unknown>
     7d0: f8 36 08 00  	<unknown>
		...
     7e0: 36 02 00 00  	udf	#566
     7e4: 00 00 03 00  	<unknown>
     7e8: 08 37 08 00  	<unknown>
		...
     7f8: 3c 02 00 00  	udf	#572
     7fc: 00 00 03 00  	<unknown>
     800: 0a 37 08 00  	<unknown>
		...
     810: 42 02 00 00  	udf	#578
     814: 00 00 03 00  	<unknown>
     818: 0d 37 08 00  	<unknown>
		...
     828: 48 02 00 00  	udf	#584
     82c: 00 00 03 00  	<unknown>
     830: 18 37 08 00  	<unknown>
		...
     840: 4e 02 00 00  	udf	#590
     844: 00 00 03 00  	<unknown>
     848: 38 37 08 00  	<unknown>
		...
     858: 54 02 00 00  	udf	#596
     85c: 00 00 03 00  	<unknown>
     860: 40 37 08 00  	<unknown>
		...
     870: 5a 02 00 00  	udf	#602
     874: 00 00 03 00  	<unknown>
     878: 58 37 08 00  	<unknown>
		...
     888: 60 02 00 00  	udf	#608
     88c: 00 00 03 00  	<unknown>
     890: 70 37 08 00  	<unknown>
		...
     8a0: 66 02 00 00  	udf	#614
     8a4: 00 00 03 00  	<unknown>
     8a8: 88 37 08 00  	<unknown>
		...
     8b8: 6c 02 00 00  	udf	#620
     8bc: 00 00 03 00  	<unknown>
     8c0: a0 37 08 00  	<unknown>
		...
     8d0: 72 02 00 00  	udf	#626
     8d4: 00 00 03 00  	<unknown>
     8d8: a8 37 08 00  	<unknown>
		...
     8e8: 78 02 00 00  	udf	#632
     8ec: 00 00 03 00  	<unknown>
     8f0: d8 37 08 00  	<unknown>
		...
     900: 7e 02 00 00  	udf	#638
     904: 00 00 03 00  	<unknown>
     908: 18 38 08 00  	<unknown>
		...
     918: 84 02 00 00  	udf	#644
     91c: 00 00 03 00  	<unknown>
     920: 48 38 08 00  	<unknown>
		...
     930: 8a 02 00 00  	udf	#650
     934: 00 00 03 00  	<unknown>
     938: 98 38 08 00  	<unknown>
		...
     948: 90 02 00 00  	udf	#656
     94c: 00 00 02 00  	<unknown>
     950: 20 00 08 00  	<unknown>
		...
     960: 95 02 00 00  	udf	#661
     964: 00 00 02 00  	<unknown>
     968: e4 00 08 00  	<unknown>
		...
     978: 9a 02 00 00  	udf	#666
     97c: 00 00 02 00  	<unknown>
     980: 8c 07 08 00  	<unknown>
		...
     990: a0 02 00 00  	udf	#672
     994: 00 00 02 00  	<unknown>
     998: 94 07 08 00  	<unknown>
		...
     9a8: a6 02 00 00  	udf	#678
     9ac: 00 00 02 00  	<unknown>
     9b0: 9c 07 08 00  	<unknown>
		...
     9c0: ac 02 00 00  	udf	#684
     9c4: 00 00 02 00  	<unknown>
     9c8: e4 07 08 00  	<unknown>
		...
     9d8: b2 02 00 00  	udf	#690
     9dc: 00 00 02 00  	<unknown>
     9e0: 58 09 08 00  	<unknown>
		...
     9f0: b8 02 00 00  	udf	#696
     9f4: 00 00 02 00  	<unknown>
     9f8: 7c 09 08 00  	<unknown>
		...
     a08: be 02 00 00  	udf	#702
     a0c: 00 00 02 00  	<unknown>
     a10: 80 09 08 00  	<unknown>
		...
     a20: c4 02 00 00  	udf	#708
     a24: 00 00 02 00  	<unknown>
     a28: 94 09 08 00  	<unknown>
		...
     a38: ca 02 00 00  	udf	#714
     a3c: 00 00 02 00  	<unknown>
     a40: 64 0c 08 00  	<unknown>
		...
     a50: d0 02 00 00  	udf	#720
     a54: 00 00 02 00  	<unknown>
     a58: d0 0c 08 00  	<unknown>
		...
     a68: d6 02 00 00  	udf	#726
     a6c: 00 00 02 00  	<unknown>
     a70: 1c 01 08 00  	<unknown>
		...
     a80: db 02 00 00  	udf	#731
     a84: 00 00 02 00  	<unknown>
     a88: 18 0d 08 00  	<unknown>
		...
     a98: e1 02 00 00  	udf	#737
     a9c: 00 00 02 00  	<unknown>
     aa0: 60 0d 08 00  	<unknown>
		...
     ab0: e7 02 00 00  	udf	#743
     ab4: 00 00 02 00  	<unknown>
     ab8: 94 0d 08 00  	<unknown>
		...
     ac8: ed 02 00 00  	udf	#749
     acc: 00 00 02 00  	<unknown>
     ad0: b8 11 08 00  	<unknown>
		...
     ae0: f3 02 00 00  	udf	#755
     ae4: 00 00 02 00  	<unknown>
     ae8: c4 11 08 00  	<unknown>
		...
     af8: f9 02 00 00  	udf	#761
     afc: 00 00 02 00  	<unknown>
     b00: bc 13 08 00  	<unknown>
		...
     b10: ff 02 00 00  	udf	#767
     b14: 00 00 02 00  	<unknown>
     b18: 04 14 08 00  	<unknown>
		...
     b28: 05 03 00 00  	udf	#773
     b2c: 00 00 02 00  	<unknown>
     b30: 60 14 08 00  	<unknown>
		...
     b40: 0b 03 00 00  	udf	#779
     b44: 00 00 02 00  	<unknown>
     b48: f0 16 08 00  	<unknown>
		...
     b58: 11 03 00 00  	udf	#785
     b5c: 00 00 02 00  	<unknown>
     b60: 14 1a 08 00  	<unknown>
		...
     b70: 17 03 00 00  	udf	#791
     b74: 00 00 02 00  	<unknown>
     b78: 38 01 08 00  	<unknown>
		...
     b88: 1c 03 00 00  	udf	#796
     b8c: 00 00 02 00  	<unknown>
     b90: 1c 1c 08 00  	<unknown>
		...
     ba0: 22 03 00 00  	udf	#802
     ba4: 00 00 02 00  	<unknown>
     ba8: 98 1c 08 00  	<unknown>
		...
     bb8: 28 03 00 00  	udf	#808
     bbc: 00 00 02 00  	<unknown>
     bc0: ec 1e 08 00  	<unknown>
		...
     bd0: 2e 03 00 00  	udf	#814
     bd4: 00 00 02 00  	<unknown>
     bd8: 24 20 08 00  	<unknown>
		...
     be8: 34 03 00 00  	udf	#820
     bec: 00 00 02 00  	<unknown>
     bf0: f8 22 08 00  	<unknown>
		...
     c00: 3a 03 00 00  	udf	#826
     c04: 00 00 02 00  	<unknown>
     c08: a4 24 08 00  	<unknown>
		...
     c18: 40 03 00 00  	udf	#832
     c1c: 00 00 02 00  	<unknown>
     c20: 84 25 08 00  	<unknown>
		...
     c30: 46 03 00 00  	udf	#838
     c34: 00 00 02 00  	<unknown>
     c38: b8 25 08 00  	<unknown>
		...
     c48: 4c 03 00 00  	udf	#844
     c4c: 00 00 02 00  	<unknown>
     c50: c0 25 08 00  	<unknown>
		...
     c60: 52 03 00 00  	udf	#850
     c64: 00 00 02 00  	<unknown>
     c68: fc 01 08 00  	<unknown>
		...
     c78: 57 03 00 00  	udf	#855
     c7c: 00 00 02 00  	<unknown>
     c80: a4 26 08 00  	<unknown>
		...
     c90: 5d 03 00 00  	udf	#861
     c94: 00 00 02 00  	<unknown>
     c98: dc 26 08 00  	<unknown>
		...
     ca8: 63 03 00 00  	udf	#867
     cac: 00 00 02 00  	<unknown>
     cb0: 40 29 08 00  	<unknown>
		...
     cc0: 69 03 00 00  	udf	#873
     cc4: 00 00 02 00  	<unknown>
     cc8: e0 2d 08 00  	<unknown>
		...
     cd8: 6f 03 00 00  	udf	#879
     cdc: 00 00 02 00  	<unknown>
     ce0: fc 2e 08 00  	<unknown>
		...
     cf0: 75 03 00 00  	udf	#885
     cf4: 00 00 02 00  	<unknown>
     cf8: 1c 30 08 00  	<unknown>
		...
     d08: 7b 03 00 00  	udf	#891
     d0c: 00 00 02 00  	<unknown>
     d10: 74 31 08 00  	<unknown>
		...
     d20: 81 03 00 00  	udf	#897
     d24: 00 00 02 00  	<unknown>
     d28: d0 31 08 00  	<unknown>
		...
     d38: 87 03 00 00  	udf	#903
     d3c: 00 00 02 00  	<unknown>
     d40: d8 03 08 00  	<unknown>
		...
     d50: 8c 03 00 00  	udf	#908
     d54: 00 00 02 00  	<unknown>
     d58: 88 06 08 00  	<unknown>
		...
     d68: 91 03 00 00  	udf	#913
     d6c: 00 00 02 00  	<unknown>
     d70: 8c 06 08 00  	<unknown>
		...
     d80: 96 03 00 00  	udf	#918
     d84: 00 00 01 00  	<unknown>
     d88: 00 00 08 00  	<unknown>
		...
     d98: 9b 03 00 00  	udf	#923
     d9c: 00 00 02 00  	<unknown>
     da0: 60 07 08 00  	<unknown>
		...
     db0: a0 03 00 00  	udf	#928
     db4: 02 00 02 00  	<unknown>
     db8: 38 01 08 00  	<unknown>
     dbc: 00 00 00 00  	udf	#0
     dc0: c4 00 00 00  	udf	#196
     dc4: 00 00 00 00  	udf	#0
     dc8: da 03 00 00  	udf	#986
     dcc: 02 00 02 00  	<unknown>
     dd0: d8 03 08 00  	<unknown>
     dd4: 00 00 00 00  	udf	#0
     dd8: b0 02 00 00  	udf	#688
     ddc: 00 00 00 00  	udf	#0
     de0: 05 04 00 00  	udf	#1029
     de4: 02 00 02 00  	<unknown>
     de8: 80 09 08 00  	<unknown>
     dec: 00 00 00 00  	udf	#0
     df0: 14 00 00 00  	udf	#20
     df4: 00 00 00 00  	udf	#0
     df8: 4b 04 00 00  	udf	#1099
     dfc: 02 00 02 00  	<unknown>
     e00: 14 1a 08 00  	<unknown>
     e04: 00 00 00 00  	udf	#0
     e08: 08 02 00 00  	udf	#520
     e0c: 00 00 00 00  	udf	#0
     e10: 92 04 00 00  	udf	#1170
     e14: 02 00 02 00  	<unknown>
     e18: dc 26 08 00  	<unknown>
     e1c: 00 00 00 00  	udf	#0
     e20: 64 02 00 00  	udf	#612
     e24: 00 00 00 00  	udf	#0
     e28: da 04 00 00  	udf	#1242
     e2c: 02 00 02 00  	<unknown>
     e30: 8c 07 08 00  	<unknown>
     e34: 00 00 00 00  	udf	#0
     e38: 08 00 00 00  	udf	#8
     e3c: 00 00 00 00  	udf	#0
     e40: 22 05 00 00  	udf	#1314
     e44: 02 00 02 00  	<unknown>
     e48: b8 11 08 00  	<unknown>
     e4c: 00 00 00 00  	udf	#0
     e50: 0c 00 00 00  	udf	#12
     e54: 00 00 00 00  	udf	#0
     e58: 6a 05 00 00  	udf	#1386
     e5c: 02 00 02 00  	<unknown>
     e60: 40 29 08 00  	<unknown>
     e64: 00 00 00 00  	udf	#0
     e68: a0 04 00 00  	udf	#1184
     e6c: 00 00 00 00  	udf	#0
     e70: b2 05 00 00  	udf	#1458
     e74: 02 00 02 00  	<unknown>
     e78: 1c 30 08 00  	<unknown>
     e7c: 00 00 00 00  	udf	#0
     e80: 58 01 00 00  	udf	#344
     e84: 00 00 00 00  	udf	#0
     e88: fa 05 00 00  	udf	#1530
     e8c: 02 00 02 00  	<unknown>
     e90: 74 31 08 00  	<unknown>
     e94: 00 00 00 00  	udf	#0
     e98: 5c 00 00 00  	udf	#92
     e9c: 00 00 00 00  	udf	#0
     ea0: 42 06 00 00  	udf	#1602
     ea4: 02 00 02 00  	<unknown>
     ea8: fc 2e 08 00  	<unknown>
     eac: 00 00 00 00  	udf	#0
     eb0: 20 01 00 00  	udf	#288
     eb4: 00 00 00 00  	udf	#0
     eb8: 8a 06 00 00  	udf	#1674
     ebc: 02 00 02 00  	<unknown>
     ec0: 94 0d 08 00  	<unknown>
     ec4: 00 00 00 00  	udf	#0
     ec8: 24 04 00 00  	udf	#1060
     ecc: 00 00 00 00  	udf	#0
     ed0: d4 06 00 00  	udf	#1748
     ed4: 02 00 02 00  	<unknown>
     ed8: e4 07 08 00  	<unknown>
     edc: 00 00 00 00  	udf	#0
     ee0: 74 01 00 00  	udf	#372
     ee4: 00 00 00 00  	udf	#0
     ee8: 37 07 00 00  	udf	#1847
     eec: 02 00 02 00  	<unknown>
     ef0: 98 1c 08 00  	<unknown>
     ef4: 00 00 00 00  	udf	#0
     ef8: 54 02 00 00  	udf	#596
     efc: 00 00 00 00  	udf	#0
     f00: 96 07 00 00  	udf	#1942
     f04: 02 00 02 00  	<unknown>
     f08: a4 24 08 00  	<unknown>
     f0c: 00 00 00 00  	udf	#0
     f10: e0 00 00 00  	udf	#224
     f14: 00 00 00 00  	udf	#0
     f18: c9 07 00 00  	udf	#1993
     f1c: 02 00 02 00  	<unknown>
     f20: 84 25 08 00  	<unknown>
     f24: 00 00 00 00  	udf	#0
     f28: 34 00 00 00  	udf	#52
     f2c: 00 00 00 00  	udf	#0
     f30: fa 07 00 00  	udf	#2042
     f34: 02 00 02 00  	<unknown>
     f38: c4 11 08 00  	<unknown>
     f3c: 00 00 00 00  	udf	#0
     f40: f8 01 00 00  	udf	#504
     f44: 00 00 00 00  	udf	#0
     f48: 21 08 00 00  	udf	#2081
     f4c: 02 00 02 00  	<unknown>
     f50: f8 22 08 00  	<unknown>
     f54: 00 00 00 00  	udf	#0
     f58: ac 01 00 00  	udf	#428
     f5c: 00 00 00 00  	udf	#0
     f60: 5e 08 00 00  	udf	#2142
     f64: 02 00 02 00  	<unknown>
     f68: 64 0c 08 00  	<unknown>
     f6c: 00 00 00 00  	udf	#0
     f70: 6c 00 00 00  	udf	#108
     f74: 00 00 00 00  	udf	#0
     f78: a5 08 00 00  	udf	#2213
     f7c: 02 00 02 00  	<unknown>
     f80: 94 09 08 00  	<unknown>
     f84: 00 00 00 00  	udf	#0
     f88: d0 02 00 00  	udf	#720
     f8c: 00 00 00 00  	udf	#0
     f90: de 08 00 00  	udf	#2270
     f94: 02 00 02 00  	<unknown>
     f98: 94 07 08 00  	<unknown>
     f9c: 00 00 00 00  	udf	#0
     fa0: 08 00 00 00  	udf	#8
     fa4: 00 00 00 00  	udf	#0
     fa8: 19 09 00 00  	udf	#2329
     fac: 02 00 02 00  	<unknown>
     fb0: 7c 09 08 00  	<unknown>
     fb4: 00 00 00 00  	udf	#0
     fb8: 04 00 00 00  	udf	#4
     fbc: 00 00 00 00  	udf	#0
     fc0: a3 09 00 00  	udf	#2467
     fc4: 02 00 02 00  	<unknown>
     fc8: 88 06 08 00  	<unknown>
     fcc: 00 00 00 00  	udf	#0
     fd0: 04 00 00 00  	udf	#4
     fd4: 00 00 00 00  	udf	#0
     fd8: eb 09 00 00  	udf	#2539
     fdc: 02 00 02 00  	<unknown>
     fe0: f0 16 08 00  	<unknown>
     fe4: 00 00 00 00  	udf	#0
     fe8: 24 03 00 00  	udf	#804
     fec: 00 00 00 00  	udf	#0
     ff0: 1e 0a 00 00  	udf	#2590
     ff4: 02 00 02 00  	<unknown>
     ff8: bc 13 08 00  	<unknown>
     ffc: 00 00 00 00  	udf	#0
    1000: 48 00 00 00  	udf	#72
    1004: 00 00 00 00  	udf	#0
    1008: 5f 0a 00 00  	udf	#2655
    100c: 02 00 02 00  	<unknown>
    1010: 18 0d 08 00  	<unknown>
    1014: 00 00 00 00  	udf	#0
    1018: 48 00 00 00  	udf	#72
    101c: 00 00 00 00  	udf	#0
    1020: a2 0a 00 00  	udf	#2722
    1024: 02 00 02 00  	<unknown>
    1028: d0 0c 08 00  	<unknown>
    102c: 00 00 00 00  	udf	#0
    1030: 48 00 00 00  	udf	#72
    1034: 00 00 00 00  	udf	#0
    1038: e7 0a 00 00  	udf	#2791
    103c: 02 00 02 00  	<unknown>
    1040: 04 14 08 00  	<unknown>
    1044: 00 00 00 00  	udf	#0
    1048: 5c 00 00 00  	udf	#92
    104c: 00 00 00 00  	udf	#0
    1050: 1a 0b 00 00  	udf	#2842
    1054: 01 00 03 00  	<unknown>
    1058: 8c 3e 08 00  	<unknown>
    105c: 00 00 00 00  	udf	#0
    1060: 7c 00 00 00  	udf	#124
    1064: 00 00 00 00  	udf	#0
    1068: 71 0b 00 00  	udf	#2929
    106c: 02 00 02 00  	<unknown>
    1070: ec 1e 08 00  	<unknown>
    1074: 00 00 00 00  	udf	#0
    1078: 38 01 00 00  	udf	#312
    107c: 00 00 00 00  	udf	#0
    1080: bc 0b 00 00  	udf	#3004
    1084: 01 00 03 00  	<unknown>
    1088: 38 3f 08 00  	<unknown>
    108c: 00 00 00 00  	udf	#0
    1090: b1 02 00 00  	udf	#689
    1094: 00 00 00 00  	udf	#0
    1098: 08 0c 00 00  	udf	#3080
    109c: 02 00 02 00  	<unknown>
    10a0: 24 20 08 00  	<unknown>
    10a4: 00 00 00 00  	udf	#0
    10a8: d4 02 00 00  	udf	#724
    10ac: 00 00 00 00  	udf	#0
    10b0: 45 0c 00 00  	udf	#3141
    10b4: 02 00 02 00  	<unknown>
    10b8: 9c 07 08 00  	<unknown>
    10bc: 00 00 00 00  	udf	#0
    10c0: 48 00 00 00  	udf	#72
    10c4: 00 00 00 00  	udf	#0
    10c8: 80 0c 00 00  	udf	#3200
    10cc: 02 00 02 00  	<unknown>
    10d0: 60 0d 08 00  	<unknown>
    10d4: 00 00 00 00  	udf	#0
    10d8: 34 00 00 00  	udf	#52
    10dc: 00 00 00 00  	udf	#0
    10e0: ad 0c 00 00  	udf	#3245
    10e4: 02 00 02 00  	<unknown>
    10e8: 58 09 08 00  	<unknown>
    10ec: 00 00 00 00  	udf	#0
    10f0: 24 00 00 00  	udf	#36
    10f4: 00 00 00 00  	udf	#0
    10f8: de 0c 00 00  	udf	#3294
    10fc: 02 00 02 00  	<unknown>
    1100: 20 00 08 00  	<unknown>
    1104: 00 00 00 00  	udf	#0
    1108: c4 00 00 00  	udf	#196
    110c: 00 00 00 00  	udf	#0
    1110: 36 0d 00 00  	udf	#3382
    1114: 02 00 02 00  	<unknown>
    1118: c0 25 08 00  	<unknown>
    111c: 00 00 00 00  	udf	#0
    1120: e4 00 00 00  	udf	#228
    1124: 00 00 00 00  	udf	#0
    1128: 8e 0d 00 00  	udf	#3470
    112c: 02 00 02 00  	<unknown>
    1130: a4 26 08 00  	<unknown>
    1134: 00 00 00 00  	udf	#0
    1138: 38 00 00 00  	udf	#56
    113c: 00 00 00 00  	udf	#0
    1140: e4 0d 00 00  	udf	#3556
    1144: 02 00 02 00  	<unknown>
    1148: e4 00 08 00  	<unknown>
    114c: 00 00 00 00  	udf	#0
    1150: 38 00 00 00  	udf	#56
    1154: 00 00 00 00  	udf	#0
    1158: 3a 0e 00 00  	udf	#3642
    115c: 02 00 02 00  	<unknown>
    1160: b8 25 08 00  	<unknown>
    1164: 00 00 00 00  	udf	#0
    1168: 08 00 00 00  	udf	#8
    116c: 00 00 00 00  	udf	#0
    1170: 90 0e 00 00  	udf	#3728
    1174: 02 00 02 00  	<unknown>
    1178: 1c 01 08 00  	<unknown>
    117c: 00 00 00 00  	udf	#0
    1180: 1c 00 00 00  	udf	#28
    1184: 00 00 00 00  	udf	#0
    1188: e6 0e 00 00  	udf	#3814
    118c: 02 00 02 00  	<unknown>
    1190: d0 31 08 00  	<unknown>
    1194: 00 00 00 00  	udf	#0
    1198: 18 00 00 00  	udf	#24
    119c: 00 00 00 00  	udf	#0
    11a0: 39 0f 00 00  	udf	#3897
    11a4: 02 00 02 00  	<unknown>
    11a8: fc 01 08 00  	<unknown>
    11ac: 00 00 00 00  	udf	#0
    11b0: dc 01 00 00  	udf	#476
    11b4: 00 00 00 00  	udf	#0
    11b8: 9b 0f 00 00  	udf	#3995
    11bc: 02 00 02 00  	<unknown>
    11c0: 60 14 08 00  	<unknown>
    11c4: 00 00 00 00  	udf	#0
    11c8: 90 02 00 00  	udf	#656
    11cc: 00 00 00 00  	udf	#0
    11d0: 03 10 00 00  	udf	#4099
    11d4: 02 00 02 00  	<unknown>
    11d8: 1c 1c 08 00  	<unknown>
    11dc: 00 00 00 00  	udf	#0
    11e0: 7c 00 00 00  	udf	#124
    11e4: 00 00 00 00  	udf	#0
    11e8: 68 10 00 00  	udf	#4200
    11ec: 02 00 02 00  	<unknown>
    11f0: e0 2d 08 00  	<unknown>
    11f4: 00 00 00 00  	udf	#0
    11f8: 1c 01 00 00  	udf	#284
    11fc: 00 00 00 00  	udf	#0
    1200: cd 10 00 00  	udf	#4301
    1204: 02 00 02 00  	<unknown>
    1208: 8c 06 08 00  	<unknown>
    120c: 00 00 00 00  	udf	#0
    1210: d4 00 00 00  	udf	#212
    1214: 00 00 00 00  	udf	#0
    1218: df 10 00 00  	udf	#4319
    121c: 04 00 f1 ff  	<unknown>
		...
    1230: 90 02 00 00  	udf	#656
    1234: 00 00 02 00  	<unknown>
    1238: e8 31 08 00  	<unknown>
		...
    1248: d6 02 00 00  	udf	#726
    124c: 00 00 02 00  	<unknown>
    1250: 04 32 08 00  	<unknown>
		...
    1260: 1e 11 00 00  	udf	#4382
    1264: 02 02 02 00  	<unknown>
    1268: e8 31 08 00  	<unknown>
    126c: 00 00 00 00  	udf	#0
    1270: 1c 00 00 00  	udf	#28
    1274: 00 00 00 00  	udf	#0
    1278: 25 11 00 00  	udf	#4389
    127c: 02 02 02 00  	<unknown>
    1280: 04 32 08 00  	<unknown>
    1284: 00 00 00 00  	udf	#0
    1288: 50 00 00 00  	udf	#80
    128c: 00 00 00 00  	udf	#0
    1290: 01 11 00 00  	udf	#4353
    1294: 10 00 f1 ff  	<unknown>
    1298: e8 43 08 00  	<unknown>
		...
    12a8: 0b 11 00 00  	udf	#4363
    12ac: 10 00 f1 ff  	<unknown>
    12b0: e8 43 08 00  	<unknown>
		...
    12c0: 17 11 00 00  	udf	#4375
    12c4: 12 00 01 00  	<unknown>
    12c8: 00 00 08 00  	<unknown>
    12cc: 00 00 00 00  	udf	#0
    12d0: 20 00 00 00  	udf	#32
    12d4: 00 00 00 00  	udf	#0
    12d8: 2c 11 00 00  	udf	#4396
    12dc: 12 00 02 00  	<unknown>
    12e0: 60 07 08 00  	<unknown>
    12e4: 00 00 00 00  	udf	#0
    12e8: 2c 00 00 00  	udf	#44
    12ec: 00 00 00 00  	udf	#0
    12f0: 37 11 00 00  	udf	#4407
    12f4: 10 00 f1 ff  	<unknown>
    12f8: 00 50 08 00  	<unknown>
		...

Disassembly of section .shstrtab:

0000000000000000 <.shstrtab>:
       0: 00 2e 62 6f  	<unknown>
       4: 6f 74 00 2e  	<unknown>
       8: 74 65 78 74  	<unknown>
       c: 00 2e 72 6f  	<unknown>
      10: 64 61 74 61  	<unknown>
      14: 00 2e 73 79  	ldrh	w0, [x16, #6550]
      18: 6d 74 61 62  	<unknown>
      1c: 00 2e 73 68  	<unknown>
      20: 73 74 72 74  	<unknown>
      24: 61 62 00 2e  	<unknown>
      28: 73 74 72 74  	<unknown>
      2c: 61           	<unknown>
      2d: 62           	<unknown>
      2e: 00           	<unknown>

Disassembly of section .strtab:

0000000000000000 <.strtab>:
       0: 00 62 61 72  	<unknown>
       4: 65 6d 65 74  	<unknown>
       8: 61 6c 5f 70  	adr	x1, #781711
       c: 69 2e 34 62  	<unknown>
      10: 39 38 38 66  	<unknown>
      14: 66 34 2d 63  	<unknown>
      18: 67 75 2e 31  	adds	w7, w11, #2973
      1c: 30 00 24 64  	<unknown>
      20: 2e 31 30 30  	adr	x14, #394789
      24: 00 24 64 2e  	uhsub	v0.4h, v0.4h, v4.4h
      28: 31 30 31 00  	<unknown>
      2c: 24 64 2e 31  	adds	w4, w1, #2969
      30: 30 32 00 24  	<unknown>
      34: 64 2e 31 30  	adr	x4, #402893
      38: 33 00 24 64  	<unknown>
      3c: 2e 31 30 34  	cbz	w14, 0x60660 <.symtab+0x60660>
      40: 00 24 64 2e  	uhsub	v0.4h, v0.4h, v4.4h
      44: 31 30 35 00  	<unknown>
      48: 24 64 2e 31  	adds	w4, w1, #2969
      4c: 30 36 00 24  	<unknown>
      50: 64 2e 31 30  	adr	x4, #402893
      54: 37 00 24 64  	<unknown>
      58: 2e 31 30 38  	<unknown>
      5c: 00 24 64 2e  	uhsub	v0.4h, v0.4h, v4.4h
      60: 31 30 39 00  	<unknown>
      64: 24 64 2e 31  	adds	w4, w1, #2969
      68: 31 30 00 24  	<unknown>
      6c: 64 2e 31 31  	adds	w4, w19, #3147
      70: 31 00 24 64  	<unknown>
      74: 2e 31 31 32  	orr	w14, w9, #0xfff8000
      78: 00 24 64 2e  	uhsub	v0.4h, v0.4h, v4.4h
      7c: 31 31 33 00  	<unknown>
      80: 24 64 2e 31  	adds	w4, w1, #2969
      84: 31 34 00 24  	<unknown>
      88: 64 2e 31 31  	adds	w4, w19, #3147
      8c: 35 00 24 64  	<unknown>
      90: 2e 31 31 36  	tbz	w14, #6, 0x26b4 <.symtab+0x26b4>
      94: 00 24 64 2e  	uhsub	v0.4h, v0.4h, v4.4h
      98: 31 31 37 00  	<unknown>
      9c: 24 64 2e 31  	adds	w4, w1, #2969
      a0: 31 38 00 24  	<unknown>
      a4: 64 2e 31 31  	adds	w4, w19, #3147
      a8: 39 00 24 64  	<unknown>
      ac: 2e 31 32 30  	adr	x14, #411173
      b0: 00 24 64 2e  	uhsub	v0.4h, v0.4h, v4.4h
      b4: 31 32 31 00  	<unknown>
      b8: 24 64 2e 31  	adds	w4, w1, #2969
      bc: 32 32 00 24  	<unknown>
      c0: 64 2e 31 32  	orr	w4, w19, #0x7ff8000
      c4: 33 00 24 64  	<unknown>
      c8: 2e 31 32 34  	cbz	w14, 0x646ec <.symtab+0x646ec>
      cc: 00 24 64 2e  	uhsub	v0.4h, v0.4h, v4.4h
      d0: 31 32 35 00  	<unknown>
      d4: 24 64 2e 31  	adds	w4, w1, #2969
      d8: 32 36 00 24  	<unknown>
      dc: 64 2e 31 32  	orr	w4, w19, #0x7ff8000
      e0: 37 00 24 64  	<unknown>
      e4: 2e 31 32 38  	<unknown>
      e8: 00 24 64 2e  	uhsub	v0.4h, v0.4h, v4.4h
      ec: 31 32 39 00  	<unknown>
      f0: 24 64 2e 31  	adds	w4, w1, #2969
      f4: 33 30 00 24  	<unknown>
      f8: 64 2e 31 33  	<unknown>
      fc: 31 00 24 64  	<unknown>
     100: 2e 31 33 32  	orr	w14, w9, #0x3ffe000
     104: 00 24 64 2e  	uhsub	v0.4h, v0.4h, v4.4h
     108: 31 33 33 00  	<unknown>
     10c: 24 64 2e 31  	adds	w4, w1, #2969
     110: 33 34 00 24  	<unknown>
     114: 64 2e 31 33  	<unknown>
     118: 35 00 24 64  	<unknown>
     11c: 2e 31 33 36  	tbz	w14, #6, 0x6740 <.symtab+0x6740>
     120: 00 24 64 2e  	uhsub	v0.4h, v0.4h, v4.4h
     124: 31 33 37 00  	<unknown>
     128: 24 64 2e 31  	adds	w4, w1, #2969
     12c: 33 38 00 24  	<unknown>
     130: 64 2e 31 33  	<unknown>
     134: 39 00 24 64  	<unknown>
     138: 2e 31 34 30  	adr	x14, #427557
     13c: 00 24 64 2e  	uhsub	v0.4h, v0.4h, v4.4h
     140: 31 34 31 00  	<unknown>
     144: 24 64 2e 31  	adds	w4, w1, #2969
     148: 34 32 00 24  	<unknown>
     14c: 64 2e 31 34  	cbz	w4, 0x62718 <.symtab+0x62718>
     150: 33 00 24 64  	<unknown>
     154: 2e 33 30 00  	<unknown>
     158: 24 64 2e 34  	cbz	w4, 0x5cddc <.symtab+0x5cddc>
     15c: 33 00 24 64  	<unknown>
     160: 2e 34 39 00  	<unknown>
     164: 24 64 2e 35  	cbnz	w4, 0x5cde8 <.symtab+0x5cde8>
     168: 30 00 24 64  	<unknown>
     16c: 2e 35 31 00  	<unknown>
     170: 24 64 2e 35  	cbnz	w4, 0x5cdf4 <.symtab+0x5cdf4>
     174: 32 00 24 64  	<unknown>
     178: 2e 35 33 00  	<unknown>
     17c: 24 64 2e 35  	cbnz	w4, 0x5ce00 <.symtab+0x5ce00>
     180: 34 00 24 64  	<unknown>
     184: 2e 35 35 00  	<unknown>
     188: 24 64 2e 35  	cbnz	w4, 0x5ce0c <.symtab+0x5ce0c>
     18c: 36 00 24 64  	<unknown>
     190: 2e 35 37 00  	<unknown>
     194: 24 64 2e 35  	cbnz	w4, 0x5ce18 <.symtab+0x5ce18>
     198: 38 00 24 64  	<unknown>
     19c: 2e 35 39 00  	<unknown>
     1a0: 24 64 2e 36  	tbz	w4, #5, 0xffffffffffffce24 <$d.143+0xfffffffffff78a44>
     1a4: 30 00 24 64  	<unknown>
     1a8: 2e 36 31 00  	<unknown>
     1ac: 24 64 2e 36  	tbz	w4, #5, 0xffffffffffffce30 <$d.143+0xfffffffffff78a50>
     1b0: 32 00 24 64  	<unknown>
     1b4: 2e 36 33 00  	<unknown>
     1b8: 24 64 2e 36  	tbz	w4, #5, 0xffffffffffffce3c <$d.143+0xfffffffffff78a5c>
     1bc: 34 00 24 64  	<unknown>
     1c0: 2e 36 35 00  	<unknown>
     1c4: 24 64 2e 36  	tbz	w4, #5, 0xffffffffffffce48 <$d.143+0xfffffffffff78a68>
     1c8: 36 00 24 64  	<unknown>
     1cc: 2e 36 37 00  	<unknown>
     1d0: 24 64 2e 36  	tbz	w4, #5, 0xffffffffffffce54 <$d.143+0xfffffffffff78a74>
     1d4: 38 00 24 64  	<unknown>
     1d8: 2e 36 39 00  	<unknown>
     1dc: 24 64 2e 37  	tbnz	w4, #5, 0xffffffffffffce60 <$d.143+0xfffffffffff78a80>
     1e0: 30 00 24 64  	<unknown>
     1e4: 2e 37 31 00  	<unknown>
     1e8: 24 64 2e 37  	tbnz	w4, #5, 0xffffffffffffce6c <$d.143+0xfffffffffff78a8c>
     1ec: 32 00 24 64  	<unknown>
     1f0: 2e 37 33 00  	<unknown>
     1f4: 24 64 2e 37  	tbnz	w4, #5, 0xffffffffffffce78 <$d.143+0xfffffffffff78a98>
     1f8: 34 00 24 64  	<unknown>
     1fc: 2e 37 35 00  	<unknown>
     200: 24 64 2e 37  	tbnz	w4, #5, 0xffffffffffffce84 <$d.143+0xfffffffffff78aa4>
     204: 36 00 24 64  	<unknown>
     208: 2e 37 37 00  	<unknown>
     20c: 24 64 2e 37  	tbnz	w4, #5, 0xffffffffffffce90 <$d.143+0xfffffffffff78ab0>
     210: 38 00 24 64  	<unknown>
     214: 2e 37 39 00  	<unknown>
     218: 24 64 2e 38  	<unknown>
     21c: 30 00 24 64  	<unknown>
     220: 2e 38 31 00  	<unknown>
     224: 24 64 2e 38  	<unknown>
     228: 32 00 24 64  	<unknown>
     22c: 2e 38 33 00  	<unknown>
     230: 24 64 2e 38  	<unknown>
     234: 34 00 24 64  	<unknown>
     238: 2e 38 35 00  	<unknown>
     23c: 24 64 2e 38  	<unknown>
     240: 36 00 24 64  	<unknown>
     244: 2e 38 37 00  	<unknown>
     248: 24 64 2e 38  	<unknown>
     24c: 38 00 24 64  	<unknown>
     250: 2e 38 39 00  	<unknown>
     254: 24 64 2e 39  	strb	w4, [x1, #2969]
     258: 30 00 24 64  	<unknown>
     25c: 2e 39 31 00  	<unknown>
     260: 24 64 2e 39  	strb	w4, [x1, #2969]
     264: 32 00 24 64  	<unknown>
     268: 2e 39 33 00  	<unknown>
     26c: 24 64 2e 39  	strb	w4, [x1, #2969]
     270: 34 00 24 64  	<unknown>
     274: 2e 39 35 00  	<unknown>
     278: 24 64 2e 39  	strb	w4, [x1, #2969]
     27c: 36 00 24 64  	<unknown>
     280: 2e 39 37 00  	<unknown>
     284: 24 64 2e 39  	strb	w4, [x1, #2969]
     288: 38 00 24 64  	<unknown>
     28c: 2e 39 39 00  	<unknown>
     290: 24 78 2e 30  	adr	x4, #380677
     294: 00 24 78 2e  	uhsub	v0.4h, v0.4h, v24.4h
     298: 31 00 24 78  	<unknown>
     29c: 2e 31 30 00  	<unknown>
     2a0: 24 78 2e 31  	adds	w4, w1, #2974
     2a4: 31 00 24 78  	<unknown>
     2a8: 2e 31 32 00  	<unknown>
     2ac: 24 78 2e 31  	adds	w4, w1, #2974
     2b0: 33 00 24 78  	<unknown>
     2b4: 2e 31 34 00  	<unknown>
     2b8: 24 78 2e 31  	adds	w4, w1, #2974
     2bc: 35 00 24 78  	<unknown>
     2c0: 2e 31 36 00  	<unknown>
     2c4: 24 78 2e 31  	adds	w4, w1, #2974
     2c8: 37 00 24 78  	<unknown>
     2cc: 2e 31 38 00  	<unknown>
     2d0: 24 78 2e 31  	adds	w4, w1, #2974
     2d4: 39 00 24 78  	<unknown>
     2d8: 2e 32 00 24  	<unknown>
     2dc: 78 2e 32 30  	adr	x24, #411085
     2e0: 00 24 78 2e  	uhsub	v0.4h, v0.4h, v24.4h
     2e4: 32 31 00 24  	<unknown>
     2e8: 78 2e 32 32  	orr	w24, w19, #0x3ffc000
     2ec: 00 24 78 2e  	uhsub	v0.4h, v0.4h, v24.4h
     2f0: 32 33 00 24  	<unknown>
     2f4: 78 2e 32 34  	cbz	w24, 0x648c0 <.symtab+0x648c0>
     2f8: 00 24 78 2e  	uhsub	v0.4h, v0.4h, v24.4h
     2fc: 32 35 00 24  	<unknown>
     300: 78 2e 32 36  	tbz	w24, #6, 0x48cc <.symtab+0x48cc>
     304: 00 24 78 2e  	uhsub	v0.4h, v0.4h, v24.4h
     308: 32 37 00 24  	<unknown>
     30c: 78 2e 32 38  	<unknown>
     310: 00 24 78 2e  	uhsub	v0.4h, v0.4h, v24.4h
     314: 32 39 00 24  	<unknown>
     318: 78 2e 33 00  	<unknown>
     31c: 24 78 2e 33  	<unknown>
     320: 31 00 24 78  	<unknown>
     324: 2e 33 32 00  	<unknown>
     328: 24 78 2e 33  	<unknown>
     32c: 33 00 24 78  	<unknown>
     330: 2e 33 34 00  	<unknown>
     334: 24 78 2e 33  	<unknown>
     338: 35 00 24 78  	<unknown>
     33c: 2e 33 36 00  	<unknown>
     340: 24 78 2e 33  	<unknown>
     344: 37 00 24 78  	<unknown>
     348: 2e 33 38 00  	<unknown>
     34c: 24 78 2e 33  	<unknown>
     350: 39 00 24 78  	<unknown>
     354: 2e 34 00 24  	<unknown>
     358: 78 2e 34 30  	adr	x24, #427469
     35c: 00 24 78 2e  	uhsub	v0.4h, v0.4h, v24.4h
     360: 34 31 00 24  	<unknown>
     364: 78 2e 34 32  	orr	w24, w19, #0xfff000
     368: 00 24 78 2e  	uhsub	v0.4h, v0.4h, v24.4h
     36c: 34 34 00 24  	<unknown>
     370: 78 2e 34 35  	cbnz	w24, 0x6893c <.symtab+0x6893c>
     374: 00 24 78 2e  	uhsub	v0.4h, v0.4h, v24.4h
     378: 34 36 00 24  	<unknown>
     37c: 78 2e 34 37  	tbnz	w24, #6, 0xffffffffffff8948 <$d.143+0xfffffffffff74568>
     380: 00 24 78 2e  	uhsub	v0.4h, v0.4h, v24.4h
     384: 34 38 00 24  	<unknown>
     388: 78 2e 35 00  	<unknown>
     38c: 24 78 2e 36  	tbz	w4, #5, 0xffffffffffffd290 <$d.143+0xfffffffffff78eb0>
     390: 00 24 78 2e  	uhsub	v0.4h, v0.4h, v24.4h
     394: 37 00 24 78  	<unknown>
     398: 2e 38 00 24  	<unknown>
     39c: 78 2e 39 00  	<unknown>
     3a0: 5f 5a 4e 31  	cmn	w18, #918, lsl #12
     3a4: 32 62 61 72  	<unknown>
     3a8: 65 6d 65 74  	<unknown>
     3ac: 61 6c 5f 70  	adr	x1, #781711
     3b0: 69 34 67 70  	adr	x9, #845455
     3b4: 69 6f 34 47  	<unknown>
     3b8: 70 69 6f 39  	ldrb	w16, [x11, #3034]
     3bc: 63 6f 6e 66  	<unknown>
     3c0: 69 67 75 72  	<unknown>
     3c4: 65 31 37 68  	<unknown>
     3c8: 63 64 66 39  	ldrb	w3, [x3, #2457]
     3cc: 34 65 65 61  	<unknown>
     3d0: 37 32 38 31  	adds	w23, w17, #3596
     3d4: 63 39 32 37  	tbnz	w3, #6, 0x4b00 <.symtab+0x4b00>
     3d8: 45 00 5f 5a  	<unknown>
     3dc: 4e 31 32 62  	<unknown>
     3e0: 61 72 65 6d  	ldp	d1, d28, [x19, #-432]
     3e4: 65 74 61 6c  	ldnp	d5, d29, [x3, #-496]
     3e8: 5f 70 69 34  	cbz	wzr, 0xd31f0 <$d.143+0x4ee10>
     3ec: 6d 61 69 6e  	rsubhn2	v13.8h, v11.4s, v9.4s
     3f0: 31 37 68 39  	ldrb	w17, [x25, #2573]
     3f4: 38 37 38 63  	<unknown>
     3f8: 33 38 34 33  	<unknown>
     3fc: 62 32 30 31  	adds	w2, w19, #3084
     400: 36 64 32 45  	<unknown>
     404: 00 5f 5a 4e  	<unknown>
     408: 33 36 5f 24  	<unknown>
     40c: 4c 54 24 54  	b.gt	0x48e94 <.symtab+0x48e94>
     410: 24 75 32 30  	adr	x4, #413349
     414: 24 61 73 24  	<unknown>
     418: 75 32 30 24  	<unknown>
     41c: 63 6f 72 65  	<unknown>
     420: 2e 2e 61 6e  	uqsub	v14.8h, v17.8h, v1.8h
     424: 79 2e 2e 41  	<unknown>
     428: 6e 79 24 47  	<unknown>
     42c: 54 24 37 74  	<unknown>
     430: 79 70 65 5f  	sqdmlsl	s25, h3, v5.h[2]
     434: 69 64 31 37  	tbnz	w9, #6, 0x30c0 <.symtab+0x30c0>
     438: 68 33 31 31  	adds	w8, w27, #3148
     43c: 61 32 39 62  	<unknown>
     440: 64 62 32 30  	adr	x4, #412749
     444: 31 61 61 66  	<unknown>
     448: 64 45 00 5f  	<unknown>
     44c: 5a 4e 34 31  	adds	w26, w18, #3347
     450: 5f 24 4c 54  	<unknown>
     454: 24 63 68 61  	<unknown>
     458: 72 24 75 32  	<unknown>
     45c: 30 24 61 73  	<unknown>
     460: 24 75 32 30  	adr	x4, #413349
     464: 24 63 6f 72  	<unknown>
     468: 65 2e 2e 66  	<unknown>
     46c: 6d 74 2e 2e  	uabd	v13.8b, v3.8b, v14.8b
     470: 44 65 62 75  	<unknown>
     474: 67 24 47 54  	b.vc	0x8e900 <$d.143+0xa520>
     478: 24 33 66 6d  	ldp	d4, d12, [x25, #-416]
     47c: 74 31 37 68  	<unknown>
     480: 31 65 65 61  	<unknown>
     484: 33 34 64 36  	tbz	w19, #12, 0xffffffffffff8b08 <$d.143+0xfffffffffff74728>
     488: 31 39 34 38  	<unknown>
     48c: 38 64 30 33  	<unknown>
     490: 45 00 5f 5a  	<unknown>
     494: 4e 34 32 5f  	<unknown>
     498: 24 4c 54 24  	<unknown>
     49c: 24 52 46 24  	<unknown>
     4a0: 54 24 75 32  	<unknown>
     4a4: 30 24 61 73  	<unknown>
     4a8: 24 75 32 30  	adr	x4, #413349
     4ac: 24 63 6f 72  	<unknown>
     4b0: 65 2e 2e 66  	<unknown>
     4b4: 6d 74 2e 2e  	uabd	v13.8b, v3.8b, v14.8b
     4b8: 44 65 62 75  	<unknown>
     4bc: 67 24 47 54  	b.vc	0x8e948 <$d.143+0xa568>
     4c0: 24 33 66 6d  	ldp	d4, d12, [x25, #-416]
     4c4: 74 31 37 68  	<unknown>
     4c8: 30 63 65 35  	cbnz	w16, 0xcb12c <$d.143+0x46d4c>
     4cc: 66 37 34 61  	<unknown>
     4d0: 66 39 34 65  	<unknown>
     4d4: 34 36 65 64  	<unknown>
     4d8: 45 00 5f 5a  	<unknown>
     4dc: 4e 34 32 5f  	<unknown>
     4e0: 24 4c 54 24  	<unknown>
     4e4: 24 52 46 24  	<unknown>
     4e8: 54 24 75 32  	<unknown>
     4ec: 30 24 61 73  	<unknown>
     4f0: 24 75 32 30  	adr	x4, #413349
     4f4: 24 63 6f 72  	<unknown>
     4f8: 65 2e 2e 66  	<unknown>
     4fc: 6d 74 2e 2e  	uabd	v13.8b, v3.8b, v14.8b
     500: 44 65 62 75  	<unknown>
     504: 67 24 47 54  	b.vc	0x8e990 <$d.143+0xa5b0>
     508: 24 33 66 6d  	ldp	d4, d12, [x25, #-416]
     50c: 74 31 37 68  	<unknown>
     510: 33 36 34 61  	<unknown>
     514: 39 31 30 38  	<unknown>
     518: 31 33 34 62  	<unknown>
     51c: 35 65 37 35  	cbnz	w21, 0x6f1c0 <.symtab+0x6f1c0>
     520: 45 00 5f 5a  	<unknown>
     524: 4e 34 32 5f  	<unknown>
     528: 24 4c 54 24  	<unknown>
     52c: 24 52 46 24  	<unknown>
     530: 54 24 75 32  	<unknown>
     534: 30 24 61 73  	<unknown>
     538: 24 75 32 30  	adr	x4, #413349
     53c: 24 63 6f 72  	<unknown>
     540: 65 2e 2e 66  	<unknown>
     544: 6d 74 2e 2e  	uabd	v13.8b, v3.8b, v14.8b
     548: 44 65 62 75  	<unknown>
     54c: 67 24 47 54  	b.vc	0x8e9d8 <$d.143+0xa5f8>
     550: 24 33 66 6d  	ldp	d4, d12, [x25, #-416]
     554: 74 31 37 68  	<unknown>
     558: 34 62 38 66  	<unknown>
     55c: 62 33 32 37  	tbnz	w2, #6, 0x4bc8 <.symtab+0x4bc8>
     560: 66 65 32 65  	<unknown>
     564: 36 66 33 34  	cbz	w22, 0x67228 <.symtab+0x67228>
     568: 45 00 5f 5a  	<unknown>
     56c: 4e 34 32 5f  	<unknown>
     570: 24 4c 54 24  	<unknown>
     574: 24 52 46 24  	<unknown>
     578: 54 24 75 32  	<unknown>
     57c: 30 24 61 73  	<unknown>
     580: 24 75 32 30  	adr	x4, #413349
     584: 24 63 6f 72  	<unknown>
     588: 65 2e 2e 66  	<unknown>
     58c: 6d 74 2e 2e  	uabd	v13.8b, v3.8b, v14.8b
     590: 44 65 62 75  	<unknown>
     594: 67 24 47 54  	b.vc	0x8ea20 <$d.143+0xa640>
     598: 24 33 66 6d  	ldp	d4, d12, [x25, #-416]
     59c: 74 31 37 68  	<unknown>
     5a0: 34 62 66 65  	<unknown>
     5a4: 64 37 34 32  	orr	w4, w27, #0x3fff000
     5a8: 65 38 32 38  	<unknown>
     5ac: 33 38 63 36  	tbz	w19, #12, 0x6cb0 <.symtab+0x6cb0>
     5b0: 45 00 5f 5a  	<unknown>
     5b4: 4e 34 32 5f  	<unknown>
     5b8: 24 4c 54 24  	<unknown>
     5bc: 24 52 46 24  	<unknown>
     5c0: 54 24 75 32  	<unknown>
     5c4: 30 24 61 73  	<unknown>
     5c8: 24 75 32 30  	adr	x4, #413349
     5cc: 24 63 6f 72  	<unknown>
     5d0: 65 2e 2e 66  	<unknown>
     5d4: 6d 74 2e 2e  	uabd	v13.8b, v3.8b, v14.8b
     5d8: 44 65 62 75  	<unknown>
     5dc: 67 24 47 54  	b.vc	0x8ea68 <$d.143+0xa688>
     5e0: 24 33 66 6d  	ldp	d4, d12, [x25, #-416]
     5e4: 74 31 37 68  	<unknown>
     5e8: 39 31 61 30  	adr	x25, #796197
     5ec: 33 62 65 61  	<unknown>
     5f0: 65 35 61 61  	<unknown>
     5f4: 38 32 36 37  	tbnz	w24, #6, 0xffffffffffffcc38 <$d.143+0xfffffffffff78858>
     5f8: 45 00 5f 5a  	<unknown>
     5fc: 4e 34 32 5f  	<unknown>
     600: 24 4c 54 24  	<unknown>
     604: 24 52 46 24  	<unknown>
     608: 54 24 75 32  	<unknown>
     60c: 30 24 61 73  	<unknown>
     610: 24 75 32 30  	adr	x4, #413349
     614: 24 63 6f 72  	<unknown>
     618: 65 2e 2e 66  	<unknown>
     61c: 6d 74 2e 2e  	uabd	v13.8b, v3.8b, v14.8b
     620: 44 65 62 75  	<unknown>
     624: 67 24 47 54  	b.vc	0x8eab0 <$d.143+0xa6d0>
     628: 24 33 66 6d  	ldp	d4, d12, [x25, #-416]
     62c: 74 31 37 68  	<unknown>
     630: 63 37 32 30  	adr	x3, #411373
     634: 34 38 66 36  	tbz	w20, #12, 0xffffffffffffcd38 <$d.143+0xfffffffffff78958>
     638: 38 63 65 65  	<unknown>
     63c: 33 39 33 30  	adr	x19, #419621
     640: 45 00 5f 5a  	<unknown>
     644: 4e 34 32 5f  	<unknown>
     648: 24 4c 54 24  	<unknown>
     64c: 24 52 46 24  	<unknown>
     650: 54 24 75 32  	<unknown>
     654: 30 24 61 73  	<unknown>
     658: 24 75 32 30  	adr	x4, #413349
     65c: 24 63 6f 72  	<unknown>
     660: 65 2e 2e 66  	<unknown>
     664: 6d 74 2e 2e  	uabd	v13.8b, v3.8b, v14.8b
     668: 44 65 62 75  	<unknown>
     66c: 67 24 47 54  	b.vc	0x8eaf8 <$d.143+0xa718>
     670: 24 33 66 6d  	ldp	d4, d12, [x25, #-416]
     674: 74 31 37 68  	<unknown>
     678: 64 62 33 35  	cbnz	w4, 0x672c4 <.symtab+0x672c4>
     67c: 36 35 63 38  	<unknown>
     680: 62 39 66 62  	<unknown>
     684: 65 34 36 34  	cbz	w5, 0x6cd10 <.symtab+0x6cd10>
     688: 45 00 5f 5a  	<unknown>
     68c: 4e 34 34 5f  	<unknown>
     690: 24 4c 54 24  	<unknown>
     694: 24 52 46 24  	<unknown>
     698: 54 24 75 32  	<unknown>
     69c: 30 24 61 73  	<unknown>
     6a0: 24 75 32 30  	adr	x4, #413349
     6a4: 24 63 6f 72  	<unknown>
     6a8: 65 2e 2e 66  	<unknown>
     6ac: 6d 74 2e 2e  	uabd	v13.8b, v3.8b, v14.8b
     6b0: 44 69 73 70  	adr	x4, #945451
     6b4: 6c 61 79 24  	<unknown>
     6b8: 47 54 24 33  	<unknown>
     6bc: 66 6d 74 31  	adds	w6, w11, #3355, lsl #12
     6c0: 37 68 33 66  	<unknown>
     6c4: 39 34 65 37  	tbnz	w25, #12, 0xffffffffffffad48 <$d.143+0xfffffffffff76968>
     6c8: 33 63 38 62  	<unknown>
     6cc: 31 35 37 62  	<unknown>
     6d0: 61 31 45 00  	<unknown>
     6d4: 5f 5a 4e 34  	cbz	wzr, 0x9d21c <$d.143+0x18e3c>
     6d8: 63 6f 72 65  	<unknown>
     6dc: 33 66 6d 74  	<unknown>
     6e0: 33 6e 75 6d  	ldp	d19, d27, [x17, #-176]
     6e4: 33 69 6d 70  	adr	x19, #896295
     6e8: 35 32 5f 24  	<unknown>
     6ec: 4c 54 24 69  	<unknown>
     6f0: 6d 70 6c 24  	<unknown>
     6f4: 75 32 30 24  	<unknown>
     6f8: 63 6f 72 65  	<unknown>
     6fc: 2e 2e 66 6d  	ldp	d14, d11, [x17, #-416]
     700: 74 2e 2e 44  	<unknown>
     704: 69 73 70 6c  	ldnp	d9, d28, [x27, #-256]
     708: 61 79 24 75  	<unknown>
     70c: 32 30 24 66  	<unknown>
     710: 6f 72 24 75  	<unknown>
     714: 32 30 24 75  	<unknown>
     718: 36 34 24 47  	<unknown>
     71c: 54 24 33 66  	<unknown>
     720: 6d 74 31 37  	tbnz	w13, #6, 0x35ac <.symtab+0x35ac>
     724: 68 64 39 30  	adr	x8, #470157
     728: 31 31 62 61  	<unknown>
     72c: 36 33 31 63  	<unknown>
     730: 31 38 66 36  	tbz	w17, #12, 0xffffffffffffce34 <$d.143+0xfffffffffff78a54>
     734: 30 45 00 5f  	<unknown>
     738: 5a 4e 34 63  	<unknown>
     73c: 6f 72 65 33  	<unknown>
     740: 66 6d 74 33  	<unknown>
     744: 6e 75 6d 35  	cbnz	w14, 0xdb5f0 <$d.143+0x57210>
     748: 32 5f 24 4c  	<unknown>
     74c: 54 24 69 6d  	ldp	d20, d9, [x2, #-368]
     750: 70 6c 24 75  	<unknown>
     754: 32 30 24 63  	<unknown>
     758: 6f 72 65 2e  	uabdl	v15.4s, v19.4h, v5.4h
     75c: 2e 66 6d 74  	<unknown>
     760: 2e 2e 44 65  	<unknown>
     764: 62 75 67 24  	<unknown>
     768: 75 32 30 24  	<unknown>
     76c: 66 6f 72 24  	<unknown>
     770: 75 32 30 24  	<unknown>
     774: 75 73 69 7a  	<unknown>
     778: 65 24 47 54  	b.pl	0x8ec04 <$d.143+0xa824>
     77c: 24 33 66 6d  	ldp	d4, d12, [x25, #-416]
     780: 74 31 37 68  	<unknown>
     784: 34 32 30 30  	adr	x20, #394821
     788: 32 39 31 31  	adds	w18, w9, #3150
     78c: 39 62 39 39  	strb	w25, [x17, #3672]
     790: 37 31 32 31  	adds	w23, w9, #3212
     794: 45 00 5f 5a  	<unknown>
     798: 4e 34 63 6f  	ursra	v14.2d, v2.2d, #29
     79c: 72 65 33 66  	<unknown>
     7a0: 6d 74 35 57  	<unknown>
     7a4: 72 69 74 65  	<unknown>
     7a8: 31 30 77 72  	<unknown>
     7ac: 69 74 65 5f  	sqshl	d9, d3, #37
     7b0: 63 68 61 72  	<unknown>
     7b4: 31 37 68 39  	ldrb	w17, [x25, #2573]
     7b8: 65 32 63 63  	<unknown>
     7bc: 61 36 39 30  	adr	x1, #468685
     7c0: 64 66 63 36  	tbz	w4, #12, 0x748c <.symtab+0x748c>
     7c4: 32 39 66 45  	<unknown>
     7c8: 00 5f 5a 4e  	<unknown>
     7cc: 34 63 6f 72  	<unknown>
     7d0: 65 33 66 6d  	ldp	d5, d12, [x27, #-416]
     7d4: 74 35 57 72  	<unknown>
     7d8: 69 74 65 39  	ldrb	w9, [x3, #2397]
     7dc: 77 72 69 74  	<unknown>
     7e0: 65 5f 66 6d  	ldp	d5, d23, [x27, #-416]
     7e4: 74 31 37 68  	<unknown>
     7e8: 30 33 31 65  	<unknown>
     7ec: 32 30 34 36  	tbz	w18, #6, 0xffffffffffff8df0 <$d.143+0xfffffffffff74a10>
     7f0: 39 39 30 33  	<unknown>
     7f4: 62 64 62 39  	ldrb	w2, [x3, #2201]
     7f8: 45 00 5f 5a  	<unknown>
     7fc: 4e 34 63 6f  	ursra	v14.2d, v2.2d, #29
     800: 72 65 33 66  	<unknown>
     804: 6d 74 35 77  	<unknown>
     808: 72 69 74 65  	<unknown>
     80c: 31 37 68 34  	cbz	w17, 0xd0ef0 <$d.143+0x4cb10>
     810: 30 38 39 64  	<unknown>
     814: 64 38 31 36  	tbz	w4, #6, 0x2f20 <.symtab+0x2f20>
     818: 32 39 61 38  	<unknown>
     81c: 64 32 65 45  	<unknown>
     820: 00 5f 5a 4e  	<unknown>
     824: 34 63 6f 72  	<unknown>
     828: 65 33 66 6d  	ldp	d5, d12, [x27, #-416]
     82c: 74 38 62 75  	<unknown>
     830: 69 6c 64 65  	<unknown>
     834: 72 73 31 31  	adds	w18, w27, #3164
     838: 44 65 62 75  	<unknown>
     83c: 67 53 74 72  	<unknown>
     840: 75 63 74 35  	cbnz	w21, 0xe94ac <$d.143+0x650cc>
     844: 66 69 65 6c  	ldnp	d6, d26, [x11, #-432]
     848: 64 31 37 68  	<unknown>
     84c: 64 63 38 39  	strb	w4, [x27, #3608]
     850: 63 64 34 35  	cbnz	w3, 0x694dc <.symtab+0x694dc>
     854: 37 39 30 30  	adr	x23, #395045
     858: 64 37 36 34  	cbz	w4, 0x6cf44 <.symtab+0x6cf44>
     85c: 45 00 5f 5a  	<unknown>
     860: 4e 34 63 6f  	ursra	v14.2d, v2.2d, #29
     864: 72 65 33 66  	<unknown>
     868: 6d 74 39 46  	<unknown>
     86c: 6f 72 6d 61  	<unknown>
     870: 74 74 65 72  	<unknown>
     874: 31 32 70 61  	<unknown>
     878: 64 5f 69 6e  	uqrshl	v4.8h, v27.8h, v9.8h
     87c: 74 65 67 72  	<unknown>
     880: 61 6c 31 32  	orr	w1, w3, #0xffff87ff
     884: 77 72 69 74  	<unknown>
     888: 65 5f 70 72  	<unknown>
     88c: 65 66 69 78  	<unknown>
     890: 31 37 68 37  	tbnz	w17, #13, 0xf74 <.symtab+0xf74>
     894: 65 63 34 34  	cbz	w5, 0x69500 <.symtab+0x69500>
     898: 39 38 32 37  	tbnz	w25, #6, 0x4f9c <.symtab+0x4f9c>
     89c: 34 32 32 66  	<unknown>
     8a0: 39 35 38 45  	<unknown>
     8a4: 00 5f 5a 4e  	<unknown>
     8a8: 34 63 6f 72  	<unknown>
     8ac: 65 33 66 6d  	ldp	d5, d12, [x27, #-416]
     8b0: 74 39 46 6f  	<unknown>
     8b4: 72 6d 61 74  	<unknown>
     8b8: 74 65 72 31  	adds	w20, w11, #3225, lsl #12
     8bc: 32 70 61 64  	<unknown>
     8c0: 5f 69 6e 74  	<unknown>
     8c4: 65 67 72 61  	<unknown>
     8c8: 6c 31 37 68  	<unknown>
     8cc: 34 62 65 35  	cbnz	w20, 0xcb510 <$d.143+0x47130>
     8d0: 66 61 65 32  	<unknown>
     8d4: 35 62 66 34  	cbz	w21, 0xcd518 <$d.143+0x49138>
     8d8: 37 38 64 36  	tbz	w23, #12, 0xffffffffffff8fdc <$d.143+0xfffffffffff74bfc>
     8dc: 45 00 5f 5a  	<unknown>
     8e0: 4e 34 63 6f  	ursra	v14.2d, v2.2d, #29
     8e4: 72 65 33 6f  	sqshlu	v18.4s, v11.4s, #19
     8e8: 70 73 38 66  	<unknown>
     8ec: 75 6e 63 74  	<unknown>
     8f0: 69 6f 6e 36  	tbz	w9, #13, 0xffffffffffffd6dc <$d.143+0xfffffffffff792fc>
     8f4: 46 6e 4f 6e  	<unknown>
     8f8: 63 65 39 63  	<unknown>
     8fc: 61 6c 6c 5f  	<unknown>
     900: 6f 6e 63 65  	<unknown>
     904: 31 37 68 31  	adds	w17, w25, #2573, lsl #12
     908: 65 30 62 34  	cbz	w5, 0xc4f14 <$d.143+0x40b34>
     90c: 62 32 62 31  	adds	w2, w19, #2188, lsl #12
     910: 62 31 35 65  	<unknown>
     914: 35 31 34 45  	<unknown>
     918: 00 5f 5a 4e  	<unknown>
     91c: 34 63 6f 72  	<unknown>
     920: 65 33 70 74  	<unknown>
     924: 72 31 30 32  	orr	w18, w11, #0x1fff0000
     928: 64 72 6f 70  	adr	x4, #912975
     92c: 5f 69 6e 5f  	<unknown>
     930: 70 6c 61 63  	<unknown>
     934: 65 24 4c 54  	b.pl	0x98dc0 <$d.143+0x149e0>
     938: 24 24 52 46  	<unknown>
     93c: 24 63 6f 72  	<unknown>
     940: 65 2e 2e 69  	<unknown>
     944: 74 65 72 2e  	umax	v20.4h, v11.4h, v18.4h
     948: 2e 61 64 61  	<unknown>
     94c: 70 74 65 72  	<unknown>
     950: 73 2e 2e 63  	<unknown>
     954: 6f 70 69 65  	<unknown>
     958: 64 2e 2e 43  	<unknown>
     95c: 6f 70 69 65  	<unknown>
     960: 64 24 4c 54  	b.mi	0x98dec <$d.143+0x14a0c>
     964: 24 63 6f 72  	<unknown>
     968: 65 2e 2e 73  	<unknown>
     96c: 6c 69 63 65  	<unknown>
     970: 2e 2e 69 74  	<unknown>
     974: 65 72 2e 2e  	uabdl	v5.8h, v19.8b, v14.8b
     978: 49 74 65 72  	<unknown>
     97c: 24 4c 54 24  	<unknown>
     980: 75 38 24 47  	<unknown>
     984: 54 24 24 47  	<unknown>
     988: 54 24 24 47  	<unknown>
     98c: 54 24 31 37  	tbnz	w20, #6, 0x2e14 <.symtab+0x2e14>
     990: 68 32 39 32  	orr	w8, w19, #0xfff80
     994: 36 66 66 38  	<unknown>
     998: 38 36 33 62  	<unknown>
     99c: 30 34 66 61  	<unknown>
     9a0: 66 45 00 5f  	<unknown>
     9a4: 5a 4e 34 63  	<unknown>
     9a8: 6f 72 65 33  	<unknown>
     9ac: 70 74 72 33  	<unknown>
     9b0: 37 64 72 6f  	sqshlu	v23.2d, v1.2d, #50
     9b4: 70 5f 69 6e  	uqrshl	v16.8h, v27.8h, v9.8h
     9b8: 5f 70 6c 61  	<unknown>
     9bc: 63 65 24 4c  	<unknown>
     9c0: 54 24 63 6f  	urshr	v20.2d, v2.2d, #29
     9c4: 72 65 2e 2e  	umax	v18.8b, v11.8b, v14.8b
     9c8: 66 6d 74 2e  	umin	v6.4h, v11.4h, v20.4h
     9cc: 2e 45 72 72  	<unknown>
     9d0: 6f 72 24 47  	<unknown>
     9d4: 54 24 31 37  	tbnz	w20, #6, 0x2e5c <.symtab+0x2e5c>
     9d8: 68 32 64 62  	<unknown>
     9dc: 35 62 65 38  	<unknown>
     9e0: 36 62 34 62  	<unknown>
     9e4: 33 38 37 64  	<unknown>
     9e8: 62 45 00 5f  	<unknown>
     9ec: 5a 4e 34 63  	<unknown>
     9f0: 6f 72 65 33  	<unknown>
     9f4: 73 74 72 31  	adds	w19, w3, #3229, lsl #12
     9f8: 36 73 6c 69  	ldpsw	x22, x28, [x25, #-160]
     9fc: 63 65 5f 65  	<unknown>
     a00: 72 72 6f 72  	<unknown>
     a04: 5f 66 61 69  	ldpsw	xzr, x25, [x18, #-248]
     a08: 6c 31 37 68  	<unknown>
     a0c: 66 37 64 32  	<unknown>
     a10: 61 39 32 32  	orr	w1, w11, #0x1fffc000
     a14: 36 38 61 35  	cbnz	w22, 0xc3118 <$d.143+0x3ed38>
     a18: 33 64 32 39  	strb	w19, [x1, #3225]
     a1c: 45 00 5f 5a  	<unknown>
     a20: 4e 34 63 6f  	ursra	v14.2d, v2.2d, #29
     a24: 72 65 35 73  	<unknown>
     a28: 6c 69 63 65  	<unknown>
     a2c: 35 69 6e 64  	<unknown>
     a30: 65 78 32 32  	orr	w5, w3, #0xffffdfff
     a34: 73 6c 69 63  	<unknown>
     a38: 65 5f 69 6e  	uqrshl	v5.8h, v27.8h, v9.8h
     a3c: 64 65 78 5f  	<unknown>
     a40: 6f 72 64 65  	<unknown>
     a44: 72 5f 66 61  	<unknown>
     a48: 69 6c 31 37  	tbnz	w9, #6, 0x37d4 <.symtab+0x37d4>
     a4c: 68 65 37 31  	adds	w8, w11, #3545
     a50: 64 37 31 34  	cbz	w4, 0x6313c <.symtab+0x6313c>
     a54: 30 30 37 36  	tbz	w16, #6, 0xfffffffffffff058 <$d.143+0xfffffffffff7ac78>
     a58: 66 66 66 36  	tbz	w6, #12, 0xffffffffffffd724 <$d.143+0xfffffffffff79344>
     a5c: 65 45 00 5f  	<unknown>
     a60: 5a 4e 34 63  	<unknown>
     a64: 6f 72 65 35  	cbnz	w15, 0xcb8b0 <$d.143+0x474d0>
     a68: 73 6c 69 63  	<unknown>
     a6c: 65 35 69 6e  	cmhi	v5.8h, v11.8h, v9.8h
     a70: 64 65 78 32  	<unknown>
     a74: 34 73 6c 69  	ldpsw	x20, x28, [x25, #-160]
     a78: 63 65 5f 65  	<unknown>
     a7c: 6e 64 5f 69  	ldpsw	x14, x25, [x3, #248]
     a80: 6e 64 65 78  	<unknown>
     a84: 5f 6c 65 6e  	umin	v31.8h, v2.8h, v5.8h
     a88: 5f 66 61 69  	ldpsw	xzr, x25, [x18, #-248]
     a8c: 6c 31 37 68  	<unknown>
     a90: 38 32 37 63  	<unknown>
     a94: 66 33 37 63  	<unknown>
     a98: 36 63 63 33  	<unknown>
     a9c: 32 62 31 34  	cbz	w18, 0x636e0 <.symtab+0x636e0>
     aa0: 45 00 5f 5a  	<unknown>
     aa4: 4e 34 63 6f  	ursra	v14.2d, v2.2d, #29
     aa8: 72 65 35 73  	<unknown>
     aac: 6c 69 63 65  	<unknown>
     ab0: 35 69 6e 64  	<unknown>
     ab4: 65 78 32 36  	tbz	w5, #6, 0x59c0 <.symtab+0x59c0>
     ab8: 73 6c 69 63  	<unknown>
     abc: 65 5f 73 74  	<unknown>
     ac0: 61 72 74 5f  	sqdmlsl	s1, h19, v4.h[3]
     ac4: 69 6e 64 65  	<unknown>
     ac8: 78 5f 6c 65  	<unknown>
     acc: 6e 5f 66 61  	<unknown>
     ad0: 69 6c 31 37  	tbnz	w9, #6, 0x385c <.symtab+0x385c>
     ad4: 68 61 35 63  	<unknown>
     ad8: 38 61 35 34  	cbz	w24, 0x6b6fc <.symtab+0x6b6fc>
     adc: 64 38 66 62  	<unknown>
     ae0: 30 35 64 39  	ldrb	w16, [x9, #2317]
     ae4: 33 45 00 5f  	<unknown>
     ae8: 5a 4e 34 63  	<unknown>
     aec: 6f 72 65 36  	tbz	w15, #12, 0xffffffffffffb938 <$d.143+0xfffffffffff77558>
     af0: 72 65 73 75  	<unknown>
     af4: 6c 74 31 33  	<unknown>
     af8: 75 6e 77 72  	<unknown>
     afc: 61 70 5f 66  	<unknown>
     b00: 61 69 6c 65  	<unknown>
     b04: 64 31 37 68  	<unknown>
     b08: 35 31 34 33  	<unknown>
     b0c: 39 35 64 39  	ldrb	w25, [x9, #2317]
     b10: 62 38 34 37  	tbnz	w2, #6, 0xffffffffffff921c <$d.143+0xfffffffffff74e3c>
     b14: 34 35 66 35  	cbnz	w20, 0xcd1b8 <$d.143+0x48dd8>
     b18: 45 00 5f 5a  	<unknown>
     b1c: 4e 34 63 6f  	ursra	v14.2d, v2.2d, #29
     b20: 72 65 37 75  	<unknown>
     b24: 6e 69 63 6f  	umlsl2	v14.4s, v11.8h, v3.h[6]
     b28: 64 65 31 32  	orr	w4, w11, #0xffff81ff
     b2c: 75 6e 69 63  	<unknown>
     b30: 6f 64 65 5f  	<unknown>
     b34: 64 61 74 61  	<unknown>
     b38: 31 35 67 72  	<unknown>
     b3c: 61 70 68 65  	<unknown>
     b40: 6d 65 5f 65  	<unknown>
     b44: 78 74 65 6e  	uabd	v24.8h, v3.8h, v5.8h
     b48: 64 31 37 53  	<unknown>
     b4c: 48 4f 52 54  	b.hi	0xa5534 <$d.143+0x21154>
     b50: 5f 4f 46 46  	<unknown>
     b54: 53 45 54 5f  	<unknown>
     b58: 52 55 4e 53  	<unknown>
     b5c: 31 37 68 36  	tbz	w17, #13, 0x1240 <.symtab+0x1240>
     b60: 34 61 32 63  	<unknown>
     b64: 63 39 66 62  	<unknown>
     b68: 64 37 36 34  	cbz	w4, 0x6d254 <.symtab+0x6d254>
     b6c: 64 37 32 45  	<unknown>
     b70: 00 5f 5a 4e  	<unknown>
     b74: 34 63 6f 72  	<unknown>
     b78: 65 37 75 6e  	cmhi	v5.8h, v27.8h, v21.8h
     b7c: 69 63 6f 64  	<unknown>
     b80: 65 31 32 75  	<unknown>
     b84: 6e 69 63 6f  	umlsl2	v14.4s, v11.8h, v3.h[6]
     b88: 64 65 5f 64  	<unknown>
     b8c: 61 74 61 31  	adds	w1, w3, #2141, lsl #12
     b90: 35 67 72 61  	<unknown>
     b94: 70 68 65 6d  	ldp	d16, d26, [x3, #-432]
     b98: 65 5f 65 78  	<unknown>
     b9c: 74 65 6e 64  	<unknown>
     ba0: 36 6c 6f 6f  	<unknown>
     ba4: 6b 75 70 31  	adds	w11, w11, #3101, lsl #12
     ba8: 37 68 30 35  	cbnz	w23, 0x618ac <.symtab+0x618ac>
     bac: 32 35 64 31  	adds	w18, w9, #2317, lsl #12
     bb0: 37 65 38 38  	<unknown>
     bb4: 63 34 61 64  	<unknown>
     bb8: 35 65 45 00  	<unknown>
     bbc: 5f 5a 4e 34  	cbz	wzr, 0x9d704 <$d.143+0x19324>
     bc0: 63 6f 72 65  	<unknown>
     bc4: 37 75 6e 69  	ldpsw	x23, x29, [x9, #-144]
     bc8: 63 6f 64 65  	<unknown>
     bcc: 31 32 75 6e  	usubw2	v17.4s, v17.4s, v21.8h
     bd0: 69 63 6f 64  	<unknown>
     bd4: 65 5f 64 61  	<unknown>
     bd8: 74 61 31 35  	cbnz	w20, 0x63804 <.symtab+0x63804>
     bdc: 67 72 61 70  	adr	x7, #798287
     be0: 68 65 6d 65  	<unknown>
     be4: 5f 65 78 74  	<unknown>
     be8: 65 6e 64 37  	tbnz	w5, #12, 0xffffffffffff99b4 <$d.143+0xfffffffffff755d4>
     bec: 4f 46 46 53  	<unknown>
     bf0: 45 54 53 31  	adds	w5, w2, #1237, lsl #12
     bf4: 37 68 32 33  	<unknown>
     bf8: 66 39 33 62  	<unknown>
     bfc: 39 61 33 34  	cbz	w25, 0x67820 <.symtab+0x67820>
     c00: 36 36 62 37  	tbnz	w22, #12, 0x52c4 <.symtab+0x52c4>
     c04: 31 34 45 00  	<unknown>
     c08: 5f 5a 4e 34  	cbz	wzr, 0x9d750 <$d.143+0x19370>
     c0c: 63 6f 72 65  	<unknown>
     c10: 37 75 6e 69  	ldpsw	x23, x29, [x9, #-144]
     c14: 63 6f 64 65  	<unknown>
     c18: 39 70 72 69  	ldpsw	x25, x28, [x1, #-112]
     c1c: 6e 74 61 62  	<unknown>
     c20: 6c 65 31 32  	orr	w12, w11, #0xffff81ff
     c24: 69 73 5f 70  	adr	x9, #781935
     c28: 72 69 6e 74  	<unknown>
     c2c: 61 62 6c 65  	<unknown>
     c30: 31 37 68 38  	<unknown>
     c34: 30 39 62 63  	<unknown>
     c38: 34 36 33 35  	cbnz	w20, 0x672fc <.symtab+0x672fc>
     c3c: 30 30 30 37  	tbnz	w16, #6, 0x1240 <.symtab+0x1240>
     c40: 66 66 32 45  	<unknown>
     c44: 00 5f 5a 4e  	<unknown>
     c48: 34 63 6f 72  	<unknown>
     c4c: 65 39 70 61  	<unknown>
     c50: 6e 69 63 6b  	<unknown>
     c54: 69 6e 67 31  	adds	w9, w19, #2523, lsl #12
     c58: 38 70 61 6e  	uabdl2	v24.4s, v1.8h, v1.8h
     c5c: 69 63 5f 62  	<unknown>
     c60: 6f 75 6e 64  	<unknown>
     c64: 73 5f 63 68  	<unknown>
     c68: 65 63 6b 31  	adds	w5, w27, #2776, lsl #12
     c6c: 37 68 32 31  	adds	w23, w1, #3226
     c70: 65 35 39 64  	<unknown>
     c74: 31 61 32 39  	strb	w17, [x9, #3224]
     c78: 30 31 34 66  	<unknown>
     c7c: 30 39 45 00  	<unknown>
     c80: 5f 5a 4e 34  	cbz	wzr, 0x9d7c8 <$d.143+0x193e8>
     c84: 63 6f 72 65  	<unknown>
     c88: 39 70 61 6e  	uabdl2	v25.4s, v1.8h, v1.8h
     c8c: 69 63 6b 69  	ldpsw	x9, x24, [x27, #-168]
     c90: 6e 67 35 70  	adr	x14, #437487
     c94: 61 6e 69 63  	<unknown>
     c98: 31 37 68 61  	<unknown>
     c9c: 37 32 31 37  	tbnz	w23, #6, 0x32e0 <.symtab+0x32e0>
     ca0: 30 35 34 65  	<unknown>
     ca4: 30 32 30 66  	<unknown>
     ca8: 34 63 66 45  	<unknown>
     cac: 00 5f 5a 4e  	<unknown>
     cb0: 34 63 6f 72  	<unknown>
     cb4: 65 39 70 61  	<unknown>
     cb8: 6e 69 63 6b  	<unknown>
     cbc: 69 6e 67 39  	ldrb	w9, [x19, #2523]
     cc0: 70 61 6e 69  	ldpsw	x16, x24, [x11, #-144]
     cc4: 63 5f 66 6d  	ldp	d3, d23, [x27, #-416]
     cc8: 74 31 37 68  	<unknown>
     ccc: 35 34 38 62  	<unknown>
     cd0: 33 34 61 34  	cbz	w19, 0xc3354 <$d.143+0x3ef74>
     cd4: 37 61 34 61  	<unknown>
     cd8: 63 35 37 38  	<unknown>
     cdc: 45 00 5f 5a  	<unknown>
     ce0: 4e 35 30 5f  	<unknown>
     ce4: 24 4c 54 24  	<unknown>
     ce8: 24 52 46 24  	<unknown>
     cec: 6d 75 74 24  	<unknown>
     cf0: 75 32 30 24  	<unknown>
     cf4: 57 24 75 32  	<unknown>
     cf8: 30 24 61 73  	<unknown>
     cfc: 24 75 32 30  	adr	x4, #413349
     d00: 24 63 6f 72  	<unknown>
     d04: 65 2e 2e 66  	<unknown>
     d08: 6d 74 2e 2e  	uabd	v13.8b, v3.8b, v14.8b
     d0c: 57 72 69 74  	<unknown>
     d10: 65 24 47 54  	b.pl	0x8f19c <$d.143+0xadbc>
     d14: 24 31 30 77  	<unknown>
     d18: 72 69 74 65  	<unknown>
     d1c: 5f 63 68 61  	<unknown>
     d20: 72 31 37 68  	<unknown>
     d24: 34 30 34 33  	<unknown>
     d28: 37 64 31 31  	adds	w23, w1, #3161
     d2c: 39 37 61 38  	<unknown>
     d30: 32 38 33 64  	<unknown>
     d34: 45 00 5f 5a  	<unknown>
     d38: 4e 35 30 5f  	<unknown>
     d3c: 24 4c 54 24  	<unknown>
     d40: 24 52 46 24  	<unknown>
     d44: 6d 75 74 24  	<unknown>
     d48: 75 32 30 24  	<unknown>
     d4c: 57 24 75 32  	<unknown>
     d50: 30 24 61 73  	<unknown>
     d54: 24 75 32 30  	adr	x4, #413349
     d58: 24 63 6f 72  	<unknown>
     d5c: 65 2e 2e 66  	<unknown>
     d60: 6d 74 2e 2e  	uabd	v13.8b, v3.8b, v14.8b
     d64: 57 72 69 74  	<unknown>
     d68: 65 24 47 54  	b.pl	0x8f1f4 <$d.143+0xae14>
     d6c: 24 31 30 77  	<unknown>
     d70: 72 69 74 65  	<unknown>
     d74: 5f 63 68 61  	<unknown>
     d78: 72 31 37 68  	<unknown>
     d7c: 38 34 64 37  	tbnz	w24, #12, 0xffffffffffff9400 <$d.143+0xfffffffffff75020>
     d80: 37 63 32 34  	cbz	w23, 0x659e4 <.symtab+0x659e4>
     d84: 37 66 38 30  	adr	x23, #462021
     d88: 39 62 64 39  	ldrb	w25, [x17, #2328]
     d8c: 45 00 5f 5a  	<unknown>
     d90: 4e 35 30 5f  	<unknown>
     d94: 24 4c 54 24  	<unknown>
     d98: 24 52 46 24  	<unknown>
     d9c: 6d 75 74 24  	<unknown>
     da0: 75 32 30 24  	<unknown>
     da4: 57 24 75 32  	<unknown>
     da8: 30 24 61 73  	<unknown>
     dac: 24 75 32 30  	adr	x4, #413349
     db0: 24 63 6f 72  	<unknown>
     db4: 65 2e 2e 66  	<unknown>
     db8: 6d 74 2e 2e  	uabd	v13.8b, v3.8b, v14.8b
     dbc: 57 72 69 74  	<unknown>
     dc0: 65 24 47 54  	b.pl	0x8f24c <$d.143+0xae6c>
     dc4: 24 39 77 72  	<unknown>
     dc8: 69 74 65 5f  	sqshl	d9, d3, #37
     dcc: 66 6d 74 31  	adds	w6, w11, #3355, lsl #12
     dd0: 37 68 31 37  	tbnz	w23, #6, 0x3ad4 <.symtab+0x3ad4>
     dd4: 64 61 64 38  	<unknown>
     dd8: 33 31 32 64  	<unknown>
     ddc: 31 36 63 65  	<unknown>
     de0: 64 61 45 00  	<unknown>
     de4: 5f 5a 4e 35  	cbnz	wzr, 0x9d92c <$d.143+0x1954c>
     de8: 30 5f 24 4c  	<unknown>
     dec: 54 24 24 52  	eor	w20, w2, #0xf000003f
     df0: 46 24 6d 75  	<unknown>
     df4: 74 24 75 32  	<unknown>
     df8: 30 24 57 24  	<unknown>
     dfc: 75 32 30 24  	<unknown>
     e00: 61 73 24 75  	<unknown>
     e04: 32 30 24 63  	<unknown>
     e08: 6f 72 65 2e  	uabdl	v15.4s, v19.4h, v5.4h
     e0c: 2e 66 6d 74  	<unknown>
     e10: 2e 2e 57 72  	<unknown>
     e14: 69 74 65 24  	<unknown>
     e18: 47 54 24 39  	strb	w7, [x2, #2325]
     e1c: 77 72 69 74  	<unknown>
     e20: 65 5f 66 6d  	ldp	d5, d23, [x27, #-416]
     e24: 74 31 37 68  	<unknown>
     e28: 32 61 31 62  	<unknown>
     e2c: 37 35 64 39  	ldrb	w23, [x9, #2317]
     e30: 34 61 66 64  	<unknown>
     e34: 66 31 37 66  	<unknown>
     e38: 45 00 5f 5a  	<unknown>
     e3c: 4e 35 30 5f  	<unknown>
     e40: 24 4c 54 24  	<unknown>
     e44: 24 52 46 24  	<unknown>
     e48: 6d 75 74 24  	<unknown>
     e4c: 75 32 30 24  	<unknown>
     e50: 57 24 75 32  	<unknown>
     e54: 30 24 61 73  	<unknown>
     e58: 24 75 32 30  	adr	x4, #413349
     e5c: 24 63 6f 72  	<unknown>
     e60: 65 2e 2e 66  	<unknown>
     e64: 6d 74 2e 2e  	uabd	v13.8b, v3.8b, v14.8b
     e68: 57 72 69 74  	<unknown>
     e6c: 65 24 47 54  	b.pl	0x8f2f8 <$d.143+0xaf18>
     e70: 24 39 77 72  	<unknown>
     e74: 69 74 65 5f  	sqshl	d9, d3, #37
     e78: 73 74 72 31  	adds	w19, w3, #3229, lsl #12
     e7c: 37 68 30 36  	tbz	w23, #6, 0x1b80 <.symtab+0x1b80>
     e80: 63 65 65 34  	cbz	w3, 0xcbb2c <$d.143+0x4774c>
     e84: 32 63 63 30  	adr	x18, #814181
     e88: 34 33 66 30  	adr	x20, #837221
     e8c: 39 39 45 00  	<unknown>
     e90: 5f 5a 4e 35  	cbnz	wzr, 0x9d9d8 <$d.143+0x195f8>
     e94: 30 5f 24 4c  	<unknown>
     e98: 54 24 24 52  	eor	w20, w2, #0xf000003f
     e9c: 46 24 6d 75  	<unknown>
     ea0: 74 24 75 32  	<unknown>
     ea4: 30 24 57 24  	<unknown>
     ea8: 75 32 30 24  	<unknown>
     eac: 61 73 24 75  	<unknown>
     eb0: 32 30 24 63  	<unknown>
     eb4: 6f 72 65 2e  	uabdl	v15.4s, v19.4h, v5.4h
     eb8: 2e 66 6d 74  	<unknown>
     ebc: 2e 2e 57 72  	<unknown>
     ec0: 69 74 65 24  	<unknown>
     ec4: 47 54 24 39  	strb	w7, [x2, #2325]
     ec8: 77 72 69 74  	<unknown>
     ecc: 65 5f 73 74  	<unknown>
     ed0: 72 31 37 68  	<unknown>
     ed4: 37 61 36 64  	<unknown>
     ed8: 36 33 33 37  	tbnz	w22, #6, 0x753c <.symtab+0x753c>
     edc: 37 64 33 66  	<unknown>
     ee0: 33 33 30 62  	<unknown>
     ee4: 45 00 5f 5a  	<unknown>
     ee8: 4e 35 33 5f  	<unknown>
     eec: 24 4c 54 24  	<unknown>
     ef0: 63 6f 72 65  	<unknown>
     ef4: 2e 2e 66 6d  	ldp	d14, d11, [x17, #-416]
     ef8: 74 2e 2e 45  	<unknown>
     efc: 72 72 6f 72  	<unknown>
     f00: 24 75 32 30  	adr	x4, #413349
     f04: 24 61 73 24  	<unknown>
     f08: 75 32 30 24  	<unknown>
     f0c: 63 6f 72 65  	<unknown>
     f10: 2e 2e 66 6d  	ldp	d14, d11, [x17, #-416]
     f14: 74 2e 2e 44  	<unknown>
     f18: 65 62 75 67  	<unknown>
     f1c: 24 47 54 24  	<unknown>
     f20: 33 66 6d 74  	<unknown>
     f24: 31 37 68 37  	tbnz	w17, #13, 0x1608 <.symtab+0x1608>
     f28: 39 34 30 61  	<unknown>
     f2c: 36 62 30 66  	<unknown>
     f30: 39 35 33 65  	<unknown>
     f34: 36 36 35 45  	<unknown>
     f38: 00 5f 5a 4e  	<unknown>
     f3c: 36 32 5f 24  	<unknown>
     f40: 4c 54 24 62  	<unknown>
     f44: 61 72 65 6d  	ldp	d1, d28, [x19, #-432]
     f48: 65 74 61 6c  	ldnp	d5, d29, [x3, #-496]
     f4c: 5f 70 69 2e  	uabdl	v31.4s, v2.4h, v9.4h
     f50: 2e 75 61 72  	<unknown>
     f54: 74 2e 2e 55  	<unknown>
     f58: 61 72 74 31  	adds	w1, w19, #3356, lsl #12
     f5c: 24 75 32 30  	adr	x4, #413349
     f60: 24 61 73 24  	<unknown>
     f64: 75 32 30 24  	<unknown>
     f68: 63 6f 72 65  	<unknown>
     f6c: 2e 2e 66 6d  	ldp	d14, d11, [x17, #-416]
     f70: 74 2e 2e 57  	<unknown>
     f74: 72 69 74 65  	<unknown>
     f78: 24 47 54 24  	<unknown>
     f7c: 39 77 72 69  	ldpsw	x25, x29, [x25, #-112]
     f80: 74 65 5f 73  	<unknown>
     f84: 74 72 31 37  	tbnz	w20, #6, 0x3dd0 <.symtab+0x3dd0>
     f88: 68 36 39 62  	<unknown>
     f8c: 64 39 30 66  	<unknown>
     f90: 39 36 35 32  	orr	w25, w17, #0x1fff800
     f94: 39 34 34 65  	<unknown>
     f98: 36 45 00 5f  	<unknown>
     f9c: 5a 4e 36 38  	<unknown>
     fa0: 5f 24 4c 54  	<unknown>
     fa4: 24 63 6f 72  	<unknown>
     fa8: 65 2e 2e 66  	<unknown>
     fac: 6d 74 2e 2e  	uabd	v13.8b, v3.8b, v14.8b
     fb0: 62 75 69 6c  	ldnp	d2, d29, [x11, #-368]
     fb4: 64 65 72 73  	<unknown>
     fb8: 2e 2e 50 61  	<unknown>
     fbc: 64 41 64 61  	<unknown>
     fc0: 70 74 65 72  	<unknown>
     fc4: 24 75 32 30  	adr	x4, #413349
     fc8: 24 61 73 24  	<unknown>
     fcc: 75 32 30 24  	<unknown>
     fd0: 63 6f 72 65  	<unknown>
     fd4: 2e 2e 66 6d  	ldp	d14, d11, [x17, #-416]
     fd8: 74 2e 2e 57  	<unknown>
     fdc: 72 69 74 65  	<unknown>
     fe0: 24 47 54 24  	<unknown>
     fe4: 39 77 72 69  	ldpsw	x25, x29, [x25, #-112]
     fe8: 74 65 5f 73  	<unknown>
     fec: 74 72 31 37  	tbnz	w20, #6, 0x3e38 <.symtab+0x3e38>
     ff0: 68 30 30 36  	tbz	w8, #6, 0x15fc <.symtab+0x15fc>
     ff4: 64 31 31 39  	strb	w4, [x11, #3148]
     ff8: 39 31 62 36  	tbz	w25, #12, 0x561c <.symtab+0x561c>
     ffc: 38 62 65 37  	tbnz	w24, #12, 0xffffffffffffbc40 <$d.143+0xfffffffffff77860>
    1000: 32 45 00 5f  	<unknown>
    1004: 5a 4e 37 31  	adds	w26, w18, #3539
    1008: 5f 24 4c 54  	<unknown>
    100c: 24 63 6f 72  	<unknown>
    1010: 65 2e 2e 6f  	<unknown>
    1014: 70 73 2e 2e  	uabdl	v16.8h, v27.8b, v14.8b
    1018: 72 61 6e 67  	<unknown>
    101c: 65 2e 2e 52  	eor	w5, w19, #0x3ffc0000
    1020: 61 6e 67 65  	<unknown>
    1024: 24 4c 54 24  	<unknown>
    1028: 49 64 78 24  	<unknown>
    102c: 47 54 24 24  	<unknown>
    1030: 75 32 30 24  	<unknown>
    1034: 61 73 24 75  	<unknown>
    1038: 32 30 24 63  	<unknown>
    103c: 6f 72 65 2e  	uabdl	v15.4s, v19.4h, v5.4h
    1040: 2e 66 6d 74  	<unknown>
    1044: 2e 2e 44 65  	<unknown>
    1048: 62 75 67 24  	<unknown>
    104c: 47 54 24 33  	<unknown>
    1050: 66 6d 74 31  	adds	w6, w11, #3355, lsl #12
    1054: 37 68 33 38  	strb	w23, [x1, x19]
    1058: 33 32 34 64  	<unknown>
    105c: 39 34 65 63  	<unknown>
    1060: 65 32 37 65  	<unknown>
    1064: 32 35 45 00  	<unknown>
    1068: 5f 5a 4e 37  	tbnz	wzr, #9, 0xffffffffffffdbb0 <$d.143+0xfffffffffff797d0>
    106c: 31 5f 24 4c  	<unknown>
    1070: 54 24 63 6f  	urshr	v20.2d, v2.2d, #29
    1074: 72 65 2e 2e  	umax	v18.8b, v11.8b, v14.8b
    1078: 70 61 6e 69  	ldpsw	x16, x24, [x11, #-144]
    107c: 63 2e 2e 70  	adr	x3, #378319
    1080: 61 6e 69 63  	<unknown>
    1084: 5f 69 6e 66  	<unknown>
    1088: 6f 2e 2e 50  	adr	x15, #378318
    108c: 61 6e 69 63  	<unknown>
    1090: 49 6e 66 6f  	<unknown>
    1094: 24 75 32 30  	adr	x4, #413349
    1098: 24 61 73 24  	<unknown>
    109c: 75 32 30 24  	<unknown>
    10a0: 63 6f 72 65  	<unknown>
    10a4: 2e 2e 66 6d  	ldp	d14, d11, [x17, #-416]
    10a8: 74 2e 2e 44  	<unknown>
    10ac: 65 62 75 67  	<unknown>
    10b0: 24 47 54 24  	<unknown>
    10b4: 33 66 6d 74  	<unknown>
    10b8: 31 37 68 64  	<unknown>
    10bc: 61 62 35 33  	<unknown>
    10c0: 30 31 61 62  	<unknown>
    10c4: 31 65 39 33  	<unknown>
    10c8: 37 62 38 45  	<unknown>
    10cc: 00 72 75 73  	<unknown>
    10d0: 74 5f 62 65  	<unknown>
    10d4: 67 69 6e 5f  	<unknown>
    10d8: 75 6e 77 69  	ldpsw	x21, x27, [x19, #-72]
    10dc: 6e 64 00 63  	<unknown>
    10e0: 6f 6d 70 69  	ldpsw	x15, x27, [x11, #-128]
    10e4: 6c 65 72 5f  	<unknown>
    10e8: 62 75 69 6c  	ldnp	d2, d29, [x11, #-368]
    10ec: 74 69 6e 73  	<unknown>
    10f0: 2e 36 65 37  	tbnz	w14, #12, 0xffffffffffffb7b4 <$d.143+0xfffffffffff773d4>
    10f4: 66 31 37 66  	<unknown>
    10f8: 33 2d 63 67  	<unknown>
    10fc: 75 2e 36 31  	adds	w21, w19, #3467
    1100: 00 5f 5f 62  	<unknown>
    1104: 73 73 5f 65  	<unknown>
    1108: 6e 64 00 5f  	<unknown>
    110c: 5f 62 73 73  	<unknown>
    1110: 5f 73 74 61  	<unknown>
    1114: 72 74 00 5f  	<unknown>
    1118: 73 74 61 72  	<unknown>
    111c: 74 00 6d 65  	<unknown>
    1120: 6d 63 70 79  	ldrh	w13, [x27, #6192]
    1124: 00 6d 65 6d  	ldp	d0, d27, [x8, #-432]
    1128: 73 65 74 00  	<unknown>
    112c: 72 75 73 74  	<unknown>
    1130: 5f 65 6e 74  	<unknown>
    1134: 72 79 00 5f  	<unknown>
    1138: 5f 69 6e 74  	<unknown>
    113c: 65 72 72 75  	<unknown>
    1140: 70 74 5f 76  	<unknown>
    1144: 65 63 74 6f  	umlsl2	v5.4s, v27.8h, v4.h[3]
    1148: 72           	<unknown>
    1149: 00           	<unknown>
