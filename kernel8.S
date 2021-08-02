
target/aarch64-unknown-none-softfloat/release/baremetal-pi:	file format elf64-littleaarch64


Disassembly of section .boot:

0000000000080000 <_start>:
   80000: ff 03 6d b2  	orr	sp, xzr, #0x80000
   80004: a8 00 38 d5  	mrs	x8, MPIDR_EL1
   80008: 1f 05 40 f2  	tst	x8, #0x3
   8000c: 60 00 00 54  	b.eq	0x80018 <_start+0x18>
   80010: 5f 20 03 d5  	wfe
   80014: ff ff ff 17  	b	0x80010 <_start+0x10>
   80018: 05 02 00 94  	bl	0x8082c <_ZN12baremetal_pi4grit9stage_one17he24b54ccefa5d11eE>
   8001c: 20 00 20 d4  	brk	#0x1

Disassembly of section .text:

0000000000080020 <_ZN50_$LT$$RF$mut$u20$W$u20$as$u20$core..fmt..Write$GT$10write_char17h156b094a61826ba8E>:
   80020: fe 0f 1f f8  	str	x30, [sp, #-16]!
   80024: 3f 00 02 71  	cmp	w1, #128
   80028: ff 0f 00 b9  	str	wzr, [sp, #12]
   8002c: 82 00 00 54  	b.hs	0x8003c <_ZN50_$LT$$RF$mut$u20$W$u20$as$u20$core..fmt..Write$GT$10write_char17h156b094a61826ba8E+0x1c>
   80030: 28 00 80 52  	mov	w8, #1
   80034: e1 33 00 39  	strb	w1, [sp, #12]
   80038: 25 00 00 14  	b	0x800cc <_ZN50_$LT$$RF$mut$u20$W$u20$as$u20$core..fmt..Write$GT$10write_char17h156b094a61826ba8E+0xac>
   8003c: 3f 00 20 71  	cmp	w1, #2048
   80040: 22 01 00 54  	b.hs	0x80064 <_ZN50_$LT$$RF$mut$u20$W$u20$as$u20$core..fmt..Write$GT$10write_char17h156b094a61826ba8E+0x44>
   80044: 28 7c 06 53  	lsr	w8, w1, #6
   80048: 09 05 1a 32  	orr	w9, w8, #0xc0
   8004c: 0a 10 80 52  	mov	w10, #128
   80050: 48 00 80 52  	mov	w8, #2
   80054: 2a 14 00 33  	bfxil	w10, w1, #0, #6
   80058: e9 33 00 39  	strb	w9, [sp, #12]
   8005c: ea 37 00 39  	strb	w10, [sp, #13]
   80060: 1b 00 00 14  	b	0x800cc <_ZN50_$LT$$RF$mut$u20$W$u20$as$u20$core..fmt..Write$GT$10write_char17h156b094a61826ba8E+0xac>
   80064: 3f 40 40 71  	cmp	w1, #16, lsl #12
   80068: 82 01 00 54  	b.hs	0x80098 <_ZN50_$LT$$RF$mut$u20$W$u20$as$u20$core..fmt..Write$GT$10write_char17h156b094a61826ba8E+0x78>
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
   80094: 0e 00 00 14  	b	0x800cc <_ZN50_$LT$$RF$mut$u20$W$u20$as$u20$core..fmt..Write$GT$10write_char17h156b094a61826ba8E+0xac>
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
   800d4: 32 00 00 94  	bl	0x8019c <_ZN62_$LT$baremetal_pi..uart..Uart1$u20$as$u20$core..fmt..Write$GT$9write_str17ha964ce6a0ebd28faE>
   800d8: e0 03 1f 2a  	mov	w0, wzr
   800dc: fe 07 41 f8  	ldr	x30, [sp], #16
   800e0: c0 03 5f d6  	ret

00000000000800e4 <_ZN50_$LT$$RF$mut$u20$W$u20$as$u20$core..fmt..Write$GT$9write_fmt17h9c893b50c2b84b21E>:
   800e4: ff 03 01 d1  	sub	sp, sp, #64
   800e8: 08 00 40 f9  	ldr	x8, [x0]
   800ec: e0 03 00 91  	mov	x0, sp
   800f0: 02 06 80 52  	mov	w2, #48
   800f4: fe 23 03 a9  	stp	x30, x8, [sp, #48]
   800f8: 70 0c 00 94  	bl	0x832b8 <memcpy>
   800fc: 01 00 00 f0  	adrp	x1, 0x83000 <_ZN50_$LT$$RF$mut$u20$W$u20$as$u20$core..fmt..Write$GT$9write_fmt17h9c893b50c2b84b21E+0x24>
   80100: e0 e3 00 91  	add	x0, sp, #56
   80104: 21 e0 0d 91  	add	x1, x1, #888
   80108: e2 03 00 91  	mov	x2, sp
   8010c: 5e 04 00 94  	bl	0x81284 <_ZN4core3fmt5write17h4089dd81629a8d2eE>
   80110: fe 1b 40 f9  	ldr	x30, [sp, #48]
   80114: ff 03 01 91  	add	sp, sp, #64
   80118: c0 03 5f d6  	ret

000000000008011c <_ZN50_$LT$$RF$mut$u20$W$u20$as$u20$core..fmt..Write$GT$9write_str17h4320e2cabb78e7d9E>:
   8011c: fe 0f 1f f8  	str	x30, [sp, #-16]!
   80120: e0 03 01 aa  	mov	x0, x1
   80124: e1 03 02 aa  	mov	x1, x2
   80128: 1d 00 00 94  	bl	0x8019c <_ZN62_$LT$baremetal_pi..uart..Uart1$u20$as$u20$core..fmt..Write$GT$9write_str17ha964ce6a0ebd28faE>
   8012c: e0 03 1f 2a  	mov	w0, wzr
   80130: fe 07 41 f8  	ldr	x30, [sp], #16
   80134: c0 03 5f d6  	ret

0000000000080138 <_ZN12baremetal_pi4uart5Uart13new17h627ecdef8c223470E>:
   80138: 89 00 80 52  	mov	w9, #4
   8013c: 6b 00 80 52  	mov	w11, #3
   80140: 09 e4 a7 72  	movk	w9, #16160, lsl #16
   80144: 28 01 40 b9  	ldr	w8, [x9]
   80148: 08 71 11 12  	and	w8, w8, #0xffff8fff
   8014c: 08 01 13 32  	orr	w8, w8, #0x2000
   80150: 28 01 00 b9  	str	w8, [x9]
   80154: 28 01 40 b9  	ldr	w8, [x9]
   80158: 08 71 0e 12  	and	w8, w8, #0xfffc7fff
   8015c: 0a 01 10 32  	orr	w10, w8, #0x10000
   80160: 08 0d 8a 52  	mov	w8, #20584
   80164: 28 e4 a7 72  	movk	w8, #16161, lsl #16
   80168: 2a 01 00 b9  	str	w10, [x9]
   8016c: c9 21 80 52  	mov	w9, #270
   80170: 0a 01 40 b9  	ldr	w10, [x8]
   80174: 2a 3d 00 33  	bfxil	w10, w9, #0, #16
   80178: c9 12 80 52  	mov	w9, #150
   8017c: 0a 01 00 b9  	str	w10, [x8]
   80180: 0b 41 1e b8  	stur	w11, [x8, #-28]
   80184: 1f 20 03 d5  	nop
   80188: 29 05 00 f1  	subs	x9, x9, #1
   8018c: c1 ff ff 54  	b.ne	0x80184 <_ZN12baremetal_pi4uart5Uart13new17h627ecdef8c223470E+0x4c>
   80190: 69 00 80 52  	mov	w9, #3
   80194: 09 81 1f b8  	stur	w9, [x8, #-8]
   80198: c0 03 5f d6  	ret

000000000008019c <_ZN62_$LT$baremetal_pi..uart..Uart1$u20$as$u20$core..fmt..Write$GT$9write_str17ha964ce6a0ebd28faE>:
   8019c: e8 03 00 aa  	mov	x8, x0
   801a0: 8a 0c 8a 52  	mov	w10, #20580
   801a4: 0d 00 00 f0  	adrp	x13, 0x83000 <_ZN62_$LT$baremetal_pi..uart..Uart1$u20$as$u20$core..fmt..Write$GT$9write_str17ha964ce6a0ebd28faE+0x14>
   801a8: e0 03 1f aa  	mov	x0, xzr
   801ac: ef 03 1f aa  	mov	x15, xzr
   801b0: e9 03 1f aa  	mov	x9, xzr
   801b4: 2a e4 a7 72  	movk	w10, #16161, lsl #16
   801b8: 0b 01 01 8b  	add	x11, x8, x1
   801bc: 6c 00 80 52  	mov	w12, #3
   801c0: ee 03 08 aa  	mov	x14, x8
   801c4: ad a1 0e 91  	add	x13, x13, #936
   801c8: 29 01 00 b5  	cbnz	x9, 0x801ec <_ZN62_$LT$baremetal_pi..uart..Uart1$u20$as$u20$core..fmt..Write$GT$9write_str17ha964ce6a0ebd28faE+0x50>
   801cc: 11 00 00 14  	b	0x80210 <_ZN62_$LT$baremetal_pi..uart..Uart1$u20$as$u20$core..fmt..Write$GT$9write_str17ha964ce6a0ebd28faE+0x74>
   801d0: 51 00 80 52  	mov	w17, #2
   801d4: e9 03 0d aa  	mov	x9, x13
   801d8: 0e 00 0e cb  	sub	x14, x0, x14
   801dc: c0 01 0f 8b  	add	x0, x14, x15
   801e0: 2f 01 11 8b  	add	x15, x9, x17
   801e4: ee 03 10 aa  	mov	x14, x16
   801e8: 49 01 00 b4  	cbz	x9, 0x80210 <_ZN62_$LT$baremetal_pi..uart..Uart1$u20$as$u20$core..fmt..Write$GT$9write_str17ha964ce6a0ebd28faE+0x74>
   801ec: 3f 01 0f eb  	cmp	x9, x15
   801f0: 00 01 00 54  	b.eq	0x80210 <_ZN62_$LT$baremetal_pi..uart..Uart1$u20$as$u20$core..fmt..Write$GT$9write_str17ha964ce6a0ebd28faE+0x74>
   801f4: 30 05 00 91  	add	x16, x9, #1
   801f8: 51 01 40 b9  	ldr	w17, [x10]
   801fc: f1 ff 0f 36  	tbz	w17, #1, 0x801f8 <_ZN62_$LT$baremetal_pi..uart..Uart1$u20$as$u20$core..fmt..Write$GT$9write_str17ha964ce6a0ebd28faE+0x5c>
   80200: 31 01 40 39  	ldrb	w17, [x9]
   80204: e9 03 10 aa  	mov	x9, x16
   80208: 51 c1 1d b8  	stur	w17, [x10, #-36]
   8020c: 09 ff ff b5  	cbnz	x9, 0x801ec <_ZN62_$LT$baremetal_pi..uart..Uart1$u20$as$u20$core..fmt..Write$GT$9write_str17ha964ce6a0ebd28faE+0x50>
   80210: 4e 09 00 b4  	cbz	x14, 0x80338 <_ZN62_$LT$baremetal_pi..uart..Uart1$u20$as$u20$core..fmt..Write$GT$9write_str17ha964ce6a0ebd28faE+0x19c>
   80214: 7f 01 0e eb  	cmp	x11, x14
   80218: 00 09 00 54  	b.eq	0x80338 <_ZN62_$LT$baremetal_pi..uart..Uart1$u20$as$u20$core..fmt..Write$GT$9write_str17ha964ce6a0ebd28faE+0x19c>
   8021c: ef 03 0e aa  	mov	x15, x14
   80220: e9 15 c0 38  	ldrsb	w9, [x15], #1
   80224: 31 1d 00 12  	and	w17, w9, #0xff
   80228: 89 00 f8 37  	tbnz	w9, #31, 0x80238 <_ZN62_$LT$baremetal_pi..uart..Uart1$u20$as$u20$core..fmt..Write$GT$9write_str17ha964ce6a0ebd28faE+0x9c>
   8022c: f0 03 0f aa  	mov	x16, x15
   80230: e9 03 11 2a  	mov	w9, w17
   80234: 2f 00 00 14  	b	0x802f0 <_ZN62_$LT$baremetal_pi..uart..Uart1$u20$as$u20$core..fmt..Write$GT$9write_str17ha964ce6a0ebd28faE+0x154>
   80238: ff 01 0b eb  	cmp	x15, x11
   8023c: c0 02 00 54  	b.eq	0x80294 <_ZN62_$LT$baremetal_pi..uart..Uart1$u20$as$u20$core..fmt..Write$GT$9write_str17ha964ce6a0ebd28faE+0xf8>
   80240: c9 05 40 39  	ldrb	w9, [x14, #1]
   80244: d0 09 00 91  	add	x16, x14, #2
   80248: ef 03 10 aa  	mov	x15, x16
   8024c: 29 15 00 12  	and	w9, w9, #0x3f
   80250: 32 12 00 12  	and	w18, w17, #0x1f
   80254: 3f 7e 03 71  	cmp	w17, #223
   80258: a9 02 00 54  	b.ls	0x802ac <_ZN62_$LT$baremetal_pi..uart..Uart1$u20$as$u20$core..fmt..Write$GT$9write_str17ha964ce6a0ebd28faE+0x110>
   8025c: ff 01 0b eb  	cmp	x15, x11
   80260: a0 02 00 54  	b.eq	0x802b4 <_ZN62_$LT$baremetal_pi..uart..Uart1$u20$as$u20$core..fmt..Write$GT$9write_str17ha964ce6a0ebd28faE+0x118>
   80264: e2 15 40 38  	ldrb	w2, [x15], #1
   80268: f0 03 0f aa  	mov	x16, x15
   8026c: 42 14 00 12  	and	w2, w2, #0x3f
   80270: 22 15 1a 33  	bfi	w2, w9, #6, #6
   80274: 3f c2 03 71  	cmp	w17, #240
   80278: 83 02 00 54  	b.lo	0x802c8 <_ZN62_$LT$baremetal_pi..uart..Uart1$u20$as$u20$core..fmt..Write$GT$9write_str17ha964ce6a0ebd28faE+0x12c>
   8027c: ff 01 0b eb  	cmp	x15, x11
   80280: a0 02 00 54  	b.eq	0x802d4 <_ZN62_$LT$baremetal_pi..uart..Uart1$u20$as$u20$core..fmt..Write$GT$9write_str17ha964ce6a0ebd28faE+0x138>
   80284: e9 15 40 38  	ldrb	w9, [x15], #1
   80288: f0 03 0f aa  	mov	x16, x15
   8028c: 29 15 00 12  	and	w9, w9, #0x3f
   80290: 13 00 00 14  	b	0x802dc <_ZN62_$LT$baremetal_pi..uart..Uart1$u20$as$u20$core..fmt..Write$GT$9write_str17ha964ce6a0ebd28faE+0x140>
   80294: e9 03 1f 2a  	mov	w9, wzr
   80298: f0 03 0f aa  	mov	x16, x15
   8029c: ef 03 0b aa  	mov	x15, x11
   802a0: 32 12 00 12  	and	w18, w17, #0x1f
   802a4: 3f 7e 03 71  	cmp	w17, #223
   802a8: a8 fd ff 54  	b.hi	0x8025c <_ZN62_$LT$baremetal_pi..uart..Uart1$u20$as$u20$core..fmt..Write$GT$9write_str17ha964ce6a0ebd28faE+0xc0>
   802ac: 49 12 1a 33  	bfi	w9, w18, #6, #5
   802b0: 10 00 00 14  	b	0x802f0 <_ZN62_$LT$baremetal_pi..uart..Uart1$u20$as$u20$core..fmt..Write$GT$9write_str17ha964ce6a0ebd28faE+0x154>
   802b4: e2 03 1f 2a  	mov	w2, wzr
   802b8: ef 03 0b aa  	mov	x15, x11
   802bc: 22 15 1a 33  	bfi	w2, w9, #6, #6
   802c0: 3f c2 03 71  	cmp	w17, #240
   802c4: c2 fd ff 54  	b.hs	0x8027c <_ZN62_$LT$baremetal_pi..uart..Uart1$u20$as$u20$core..fmt..Write$GT$9write_str17ha964ce6a0ebd28faE+0xe0>
   802c8: 42 12 14 33  	bfi	w2, w18, #12, #5
   802cc: e9 03 02 2a  	mov	w9, w2
   802d0: 08 00 00 14  	b	0x802f0 <_ZN62_$LT$baremetal_pi..uart..Uart1$u20$as$u20$core..fmt..Write$GT$9write_str17ha964ce6a0ebd28faE+0x154>
   802d4: e9 03 1f 2a  	mov	w9, wzr
   802d8: ef 03 0b aa  	mov	x15, x11
   802dc: 51 0a 0e 53  	ubfiz	w17, w18, #18, #3
   802e0: 51 2c 1a 33  	bfi	w17, w2, #6, #12
   802e4: 29 02 09 2a  	orr	w9, w17, w9
   802e8: 3f 41 44 71  	cmp	w9, #272, lsl #12
   802ec: 60 02 00 54  	b.eq	0x80338 <_ZN62_$LT$baremetal_pi..uart..Uart1$u20$as$u20$core..fmt..Write$GT$9write_str17ha964ce6a0ebd28faE+0x19c>
   802f0: 3f 29 00 71  	cmp	w9, #10
   802f4: e0 f6 ff 54  	b.eq	0x801d0 <_ZN62_$LT$baremetal_pi..uart..Uart1$u20$as$u20$core..fmt..Write$GT$9write_str17ha964ce6a0ebd28faE+0x34>
   802f8: 3f 01 02 71  	cmp	w9, #128
   802fc: 62 00 00 54  	b.hs	0x80308 <_ZN62_$LT$baremetal_pi..uart..Uart1$u20$as$u20$core..fmt..Write$GT$9write_str17ha964ce6a0ebd28faE+0x16c>
   80300: 31 00 80 52  	mov	w17, #1
   80304: 07 00 00 14  	b	0x80320 <_ZN62_$LT$baremetal_pi..uart..Uart1$u20$as$u20$core..fmt..Write$GT$9write_str17ha964ce6a0ebd28faE+0x184>
   80308: 3f 01 20 71  	cmp	w9, #2048
   8030c: 62 00 00 54  	b.hs	0x80318 <_ZN62_$LT$baremetal_pi..uart..Uart1$u20$as$u20$core..fmt..Write$GT$9write_str17ha964ce6a0ebd28faE+0x17c>
   80310: 51 00 80 52  	mov	w17, #2
   80314: 03 00 00 14  	b	0x80320 <_ZN62_$LT$baremetal_pi..uart..Uart1$u20$as$u20$core..fmt..Write$GT$9write_str17ha964ce6a0ebd28faE+0x184>
   80318: 3f 41 40 71  	cmp	w9, #16, lsl #12
   8031c: 91 35 8c 9a  	cinc	x17, x12, hs
   80320: 29 02 00 ab  	adds	x9, x17, x0
   80324: a2 01 00 54  	b.hs	0x80358 <_ZN62_$LT$baremetal_pi..uart..Uart1$u20$as$u20$core..fmt..Write$GT$9write_str17ha964ce6a0ebd28faE+0x1bc>
   80328: 3f 01 01 eb  	cmp	x9, x1
   8032c: c8 00 00 54  	b.hi	0x80344 <_ZN62_$LT$baremetal_pi..uart..Uart1$u20$as$u20$core..fmt..Write$GT$9write_str17ha964ce6a0ebd28faE+0x1a8>
   80330: 09 01 00 8b  	add	x9, x8, x0
   80334: a9 ff ff 17  	b	0x801d8 <_ZN62_$LT$baremetal_pi..uart..Uart1$u20$as$u20$core..fmt..Write$GT$9write_str17ha964ce6a0ebd28faE+0x3c>
   80338: 48 01 40 b9  	ldr	w8, [x10]
   8033c: e8 ff 1f 36  	tbz	w8, #3, 0x80338 <_ZN62_$LT$baremetal_pi..uart..Uart1$u20$as$u20$core..fmt..Write$GT$9write_str17ha964ce6a0ebd28faE+0x19c>
   80340: c0 03 5f d6  	ret
   80344: 02 00 00 f0  	adrp	x2, 0x83000 <_ZN62_$LT$baremetal_pi..uart..Uart1$u20$as$u20$core..fmt..Write$GT$9write_str17ha964ce6a0ebd28faE+0x1b4>
   80348: e0 03 09 aa  	mov	x0, x9
   8034c: 42 e0 0e 91  	add	x2, x2, #952
   80350: a2 02 00 94  	bl	0x80dd8 <_ZN4core5slice5index24slice_end_index_len_fail17h827cf37c6cc32b14E>
   80354: 20 00 20 d4  	brk	#0x1
   80358: 02 00 00 f0  	adrp	x2, 0x83000 <_ZN62_$LT$baremetal_pi..uart..Uart1$u20$as$u20$core..fmt..Write$GT$9write_str17ha964ce6a0ebd28faE+0x1c8>
   8035c: e1 03 09 aa  	mov	x1, x9
   80360: 42 e0 0e 91  	add	x2, x2, #952
   80364: 47 04 00 94  	bl	0x81480 <_ZN4core5slice5index22slice_index_order_fail17he71d7140076fff6eE>
   80368: 20 00 20 d4  	brk	#0x1

000000000008036c <_ZN42_$LT$$RF$T$u20$as$u20$core..fmt..Debug$GT$3fmt17habe9122735e55e0cE>:
   8036c: 00 00 40 f9  	ldr	x0, [x0]
   80370: d0 0a 00 14  	b	0x82eb0 <_ZN71_$LT$core..panic..panic_info..PanicInfo$u20$as$u20$core..fmt..Debug$GT$3fmt17hdab5301ab1e937b8E>

0000000000080374 <rust_begin_unwind>:
   80374: ff 83 01 d1  	sub	sp, sp, #96
   80378: fe 2b 00 f9  	str	x30, [sp, #80]
   8037c: e0 07 00 f9  	str	x0, [sp, #8]
   80380: 6e ff ff 97  	bl	0x80138 <_ZN12baremetal_pi4uart5Uart13new17h627ecdef8c223470E>
   80384: 09 00 00 90  	adrp	x9, 0x80000 <rust_begin_unwind+0x10>
   80388: e8 23 00 91  	add	x8, sp, #8
   8038c: 29 b1 0d 91  	add	x9, x9, #876
   80390: ea 83 00 91  	add	x10, sp, #32
   80394: 0b 00 00 f0  	adrp	x11, 0x83000 <rust_begin_unwind+0x2c>
   80398: 01 00 00 f0  	adrp	x1, 0x83000 <rust_begin_unwind+0x30>
   8039c: 6b 41 0f 91  	add	x11, x11, #976
   803a0: 21 e0 0d 91  	add	x1, x1, #888
   803a4: e8 27 01 a9  	stp	x8, x9, [sp, #16]
   803a8: 09 00 00 f0  	adrp	x9, 0x83000 <rust_begin_unwind+0x40>
   803ac: ea 2f 00 f9  	str	x10, [sp, #88]
   803b0: 28 00 80 52  	mov	w8, #1
   803b4: 29 81 0f 91  	add	x9, x9, #992
   803b8: ea 43 00 91  	add	x10, sp, #16
   803bc: e0 63 01 91  	add	x0, sp, #88
   803c0: e2 83 00 91  	add	x2, sp, #32
   803c4: eb 23 02 a9  	stp	x11, x8, [sp, #32]
   803c8: e9 23 03 a9  	stp	x9, x8, [sp, #48]
   803cc: ea 23 04 a9  	stp	x10, x8, [sp, #64]
   803d0: ad 03 00 94  	bl	0x81284 <_ZN4core3fmt5write17h4089dd81629a8d2eE>
   803d4: 60 00 00 35  	cbnz	w0, 0x803e0 <rust_begin_unwind+0x6c>
   803d8: 5f 20 03 d5  	wfe
   803dc: ff ff ff 17  	b	0x803d8 <rust_begin_unwind+0x64>
   803e0: 01 00 00 f0  	adrp	x1, 0x83000 <rust_begin_unwind+0x78>
   803e4: e0 83 00 91  	add	x0, sp, #32
   803e8: 21 60 10 91  	add	x1, x1, #1048
   803ec: 37 04 00 94  	bl	0x814c8 <_ZN4core6result13unwrap_failed17h514395d9b84745f5E>
   803f0: 20 00 20 d4  	brk	#0x1

00000000000803f4 <_ZN4core3ptr37drop_in_place$LT$core..fmt..Error$GT$17hc0e0a78b6d7f041bE>:
   803f4: c0 03 5f d6  	ret

00000000000803f8 <_ZN12baremetal_pi4main17h02d93c4b0c6e8c9eE>:
   803f8: ff c3 01 d1  	sub	sp, sp, #112
   803fc: fe 5f 04 a9  	stp	x30, x23, [sp, #64]
   80400: f6 57 05 a9  	stp	x22, x21, [sp, #80]
   80404: f4 4f 06 a9  	stp	x20, x19, [sp, #96]
   80408: 93 03 80 52  	mov	w19, #28
   8040c: 14 48 88 52  	mov	w20, #16960
   80410: 13 e4 a7 72  	movk	w19, #16160, lsl #16
   80414: f4 01 a0 72  	movk	w20, #15, lsl #16
   80418: 48 ff ff 97  	bl	0x80138 <_ZN12baremetal_pi4uart5Uart13new17h627ecdef8c223470E>
   8041c: 68 c2 5e b8  	ldur	w8, [x19, #-20]
   80420: 0a 00 a4 52  	mov	w10, #536870912
   80424: 08 71 02 12  	and	w8, w8, #0xc7ffffff
   80428: 09 01 05 32  	orr	w9, w8, #0x8000000
   8042c: e8 03 14 aa  	mov	x8, x20
   80430: 69 c2 1e b8  	stur	w9, [x19, #-20]
   80434: 6a 02 00 b9  	str	w10, [x19]
   80438: 1f 20 03 d5  	nop
   8043c: 08 05 00 f1  	subs	x8, x8, #1
   80440: c1 ff ff 54  	b.ne	0x80438 <_ZN12baremetal_pi4main17h02d93c4b0c6e8c9eE+0x40>
   80444: 16 00 00 f0  	adrp	x22, 0x83000 <_ZN12baremetal_pi4main17h02d93c4b0c6e8c9eE+0x58>
   80448: 17 00 00 f0  	adrp	x23, 0x83000 <_ZN12baremetal_pi4main17h02d93c4b0c6e8c9eE+0x5c>
   8044c: 01 00 00 f0  	adrp	x1, 0x83000 <_ZN12baremetal_pi4main17h02d93c4b0c6e8c9eE+0x60>
   80450: 08 00 a4 52  	mov	w8, #536870912
   80454: e9 43 00 91  	add	x9, sp, #16
   80458: d6 82 12 91  	add	x22, x22, #1184
   8045c: 2a 00 80 52  	mov	w10, #1
   80460: f7 82 14 91  	add	x23, x23, #1312
   80464: 21 e0 0d 91  	add	x1, x1, #888
   80468: e0 23 00 91  	add	x0, sp, #8
   8046c: e2 43 00 91  	add	x2, sp, #16
   80470: 68 0e 00 b9  	str	w8, [x19, #12]
   80474: e9 db 00 a9  	stp	x9, x22, [sp, #8]
   80478: ea ff 01 a9  	stp	x10, xzr, [sp, #24]
   8047c: ff df 02 a9  	stp	xzr, x23, [sp, #40]
   80480: ff 1f 00 f9  	str	xzr, [sp, #56]
   80484: 80 03 00 94  	bl	0x81284 <_ZN4core3fmt5write17h4089dd81629a8d2eE>
   80488: 40 1b 00 35  	cbnz	w0, 0x807f0 <_ZN12baremetal_pi4main17h02d93c4b0c6e8c9eE+0x3f8>
   8048c: 15 20 81 52  	mov	w21, #2304
   80490: b5 07 a0 72  	movk	w21, #61, lsl #16
   80494: e8 03 15 aa  	mov	x8, x21
   80498: 1f 20 03 d5  	nop
   8049c: 08 05 00 f1  	subs	x8, x8, #1
   804a0: c1 ff ff 54  	b.ne	0x80498 <_ZN12baremetal_pi4main17h02d93c4b0c6e8c9eE+0xa0>
   804a4: 09 00 a4 52  	mov	w9, #536870912
   804a8: e8 03 14 aa  	mov	x8, x20
   804ac: 69 02 00 b9  	str	w9, [x19]
   804b0: 1f 20 03 d5  	nop
   804b4: 08 05 00 f1  	subs	x8, x8, #1
   804b8: c1 ff ff 54  	b.ne	0x804b0 <_ZN12baremetal_pi4main17h02d93c4b0c6e8c9eE+0xb8>
   804bc: 01 00 00 f0  	adrp	x1, 0x83000 <_ZN12baremetal_pi4main17h02d93c4b0c6e8c9eE+0xd0>
   804c0: 08 00 a4 52  	mov	w8, #536870912
   804c4: e9 43 00 91  	add	x9, sp, #16
   804c8: 2a 00 80 52  	mov	w10, #1
   804cc: 21 e0 0d 91  	add	x1, x1, #888
   804d0: e0 23 00 91  	add	x0, sp, #8
   804d4: e2 43 00 91  	add	x2, sp, #16
   804d8: 68 0e 00 b9  	str	w8, [x19, #12]
   804dc: e9 db 00 a9  	stp	x9, x22, [sp, #8]
   804e0: ea ff 01 a9  	stp	x10, xzr, [sp, #24]
   804e4: ff df 02 a9  	stp	xzr, x23, [sp, #40]
   804e8: ff 1f 00 f9  	str	xzr, [sp, #56]
   804ec: 66 03 00 94  	bl	0x81284 <_ZN4core3fmt5write17h4089dd81629a8d2eE>
   804f0: 00 18 00 37  	tbnz	w0, #0, 0x807f0 <_ZN12baremetal_pi4main17h02d93c4b0c6e8c9eE+0x3f8>
   804f4: e8 03 15 aa  	mov	x8, x21
   804f8: 1f 20 03 d5  	nop
   804fc: 08 05 00 f1  	subs	x8, x8, #1
   80500: c1 ff ff 54  	b.ne	0x804f8 <_ZN12baremetal_pi4main17h02d93c4b0c6e8c9eE+0x100>
   80504: 09 00 a4 52  	mov	w9, #536870912
   80508: e8 03 14 aa  	mov	x8, x20
   8050c: 69 02 00 b9  	str	w9, [x19]
   80510: 1f 20 03 d5  	nop
   80514: 08 05 00 f1  	subs	x8, x8, #1
   80518: c1 ff ff 54  	b.ne	0x80510 <_ZN12baremetal_pi4main17h02d93c4b0c6e8c9eE+0x118>
   8051c: 01 00 00 f0  	adrp	x1, 0x83000 <_ZN12baremetal_pi4main17h02d93c4b0c6e8c9eE+0x130>
   80520: 08 00 a4 52  	mov	w8, #536870912
   80524: e9 43 00 91  	add	x9, sp, #16
   80528: 2a 00 80 52  	mov	w10, #1
   8052c: 21 e0 0d 91  	add	x1, x1, #888
   80530: e0 23 00 91  	add	x0, sp, #8
   80534: e2 43 00 91  	add	x2, sp, #16
   80538: 68 0e 00 b9  	str	w8, [x19, #12]
   8053c: e9 db 00 a9  	stp	x9, x22, [sp, #8]
   80540: ea ff 01 a9  	stp	x10, xzr, [sp, #24]
   80544: ff df 02 a9  	stp	xzr, x23, [sp, #40]
   80548: ff 1f 00 f9  	str	xzr, [sp, #56]
   8054c: 4e 03 00 94  	bl	0x81284 <_ZN4core3fmt5write17h4089dd81629a8d2eE>
   80550: 00 15 00 37  	tbnz	w0, #0, 0x807f0 <_ZN12baremetal_pi4main17h02d93c4b0c6e8c9eE+0x3f8>
   80554: e8 03 15 aa  	mov	x8, x21
   80558: 1f 20 03 d5  	nop
   8055c: 08 05 00 f1  	subs	x8, x8, #1
   80560: c1 ff ff 54  	b.ne	0x80558 <_ZN12baremetal_pi4main17h02d93c4b0c6e8c9eE+0x160>
   80564: 09 00 a4 52  	mov	w9, #536870912
   80568: e8 03 14 aa  	mov	x8, x20
   8056c: 69 02 00 b9  	str	w9, [x19]
   80570: 1f 20 03 d5  	nop
   80574: 08 05 00 f1  	subs	x8, x8, #1
   80578: c1 ff ff 54  	b.ne	0x80570 <_ZN12baremetal_pi4main17h02d93c4b0c6e8c9eE+0x178>
   8057c: 01 00 00 f0  	adrp	x1, 0x83000 <_ZN12baremetal_pi4main17h02d93c4b0c6e8c9eE+0x190>
   80580: 08 00 a4 52  	mov	w8, #536870912
   80584: e9 43 00 91  	add	x9, sp, #16
   80588: 2a 00 80 52  	mov	w10, #1
   8058c: 21 e0 0d 91  	add	x1, x1, #888
   80590: e0 23 00 91  	add	x0, sp, #8
   80594: e2 43 00 91  	add	x2, sp, #16
   80598: 68 0e 00 b9  	str	w8, [x19, #12]
   8059c: e9 db 00 a9  	stp	x9, x22, [sp, #8]
   805a0: ea ff 01 a9  	stp	x10, xzr, [sp, #24]
   805a4: ff df 02 a9  	stp	xzr, x23, [sp, #40]
   805a8: ff 1f 00 f9  	str	xzr, [sp, #56]
   805ac: 36 03 00 94  	bl	0x81284 <_ZN4core3fmt5write17h4089dd81629a8d2eE>
   805b0: 00 12 00 37  	tbnz	w0, #0, 0x807f0 <_ZN12baremetal_pi4main17h02d93c4b0c6e8c9eE+0x3f8>
   805b4: e8 03 15 aa  	mov	x8, x21
   805b8: 1f 20 03 d5  	nop
   805bc: 08 05 00 f1  	subs	x8, x8, #1
   805c0: c1 ff ff 54  	b.ne	0x805b8 <_ZN12baremetal_pi4main17h02d93c4b0c6e8c9eE+0x1c0>
   805c4: 09 00 a4 52  	mov	w9, #536870912
   805c8: e8 03 14 aa  	mov	x8, x20
   805cc: 69 02 00 b9  	str	w9, [x19]
   805d0: 1f 20 03 d5  	nop
   805d4: 08 05 00 f1  	subs	x8, x8, #1
   805d8: c1 ff ff 54  	b.ne	0x805d0 <_ZN12baremetal_pi4main17h02d93c4b0c6e8c9eE+0x1d8>
   805dc: 01 00 00 f0  	adrp	x1, 0x83000 <_ZN12baremetal_pi4main17h02d93c4b0c6e8c9eE+0x1f0>
   805e0: 08 00 a4 52  	mov	w8, #536870912
   805e4: e9 43 00 91  	add	x9, sp, #16
   805e8: 2a 00 80 52  	mov	w10, #1
   805ec: 21 e0 0d 91  	add	x1, x1, #888
   805f0: e0 23 00 91  	add	x0, sp, #8
   805f4: e2 43 00 91  	add	x2, sp, #16
   805f8: 68 0e 00 b9  	str	w8, [x19, #12]
   805fc: e9 db 00 a9  	stp	x9, x22, [sp, #8]
   80600: ea ff 01 a9  	stp	x10, xzr, [sp, #24]
   80604: ff df 02 a9  	stp	xzr, x23, [sp, #40]
   80608: ff 1f 00 f9  	str	xzr, [sp, #56]
   8060c: 1e 03 00 94  	bl	0x81284 <_ZN4core3fmt5write17h4089dd81629a8d2eE>
   80610: 00 0f 00 37  	tbnz	w0, #0, 0x807f0 <_ZN12baremetal_pi4main17h02d93c4b0c6e8c9eE+0x3f8>
   80614: e8 03 15 aa  	mov	x8, x21
   80618: 1f 20 03 d5  	nop
   8061c: 08 05 00 f1  	subs	x8, x8, #1
   80620: c1 ff ff 54  	b.ne	0x80618 <_ZN12baremetal_pi4main17h02d93c4b0c6e8c9eE+0x220>
   80624: 09 00 a4 52  	mov	w9, #536870912
   80628: e8 03 14 aa  	mov	x8, x20
   8062c: 69 02 00 b9  	str	w9, [x19]
   80630: 1f 20 03 d5  	nop
   80634: 08 05 00 f1  	subs	x8, x8, #1
   80638: c1 ff ff 54  	b.ne	0x80630 <_ZN12baremetal_pi4main17h02d93c4b0c6e8c9eE+0x238>
   8063c: 01 00 00 f0  	adrp	x1, 0x83000 <_ZN12baremetal_pi4main17h02d93c4b0c6e8c9eE+0x250>
   80640: 08 00 a4 52  	mov	w8, #536870912
   80644: e9 43 00 91  	add	x9, sp, #16
   80648: 2a 00 80 52  	mov	w10, #1
   8064c: 21 e0 0d 91  	add	x1, x1, #888
   80650: e0 23 00 91  	add	x0, sp, #8
   80654: e2 43 00 91  	add	x2, sp, #16
   80658: 68 0e 00 b9  	str	w8, [x19, #12]
   8065c: e9 db 00 a9  	stp	x9, x22, [sp, #8]
   80660: ea ff 01 a9  	stp	x10, xzr, [sp, #24]
   80664: ff df 02 a9  	stp	xzr, x23, [sp, #40]
   80668: ff 1f 00 f9  	str	xzr, [sp, #56]
   8066c: 06 03 00 94  	bl	0x81284 <_ZN4core3fmt5write17h4089dd81629a8d2eE>
   80670: 00 0c 00 37  	tbnz	w0, #0, 0x807f0 <_ZN12baremetal_pi4main17h02d93c4b0c6e8c9eE+0x3f8>
   80674: e8 03 15 aa  	mov	x8, x21
   80678: 1f 20 03 d5  	nop
   8067c: 08 05 00 f1  	subs	x8, x8, #1
   80680: c1 ff ff 54  	b.ne	0x80678 <_ZN12baremetal_pi4main17h02d93c4b0c6e8c9eE+0x280>
   80684: 09 00 a4 52  	mov	w9, #536870912
   80688: e8 03 14 aa  	mov	x8, x20
   8068c: 69 02 00 b9  	str	w9, [x19]
   80690: 1f 20 03 d5  	nop
   80694: 08 05 00 f1  	subs	x8, x8, #1
   80698: c1 ff ff 54  	b.ne	0x80690 <_ZN12baremetal_pi4main17h02d93c4b0c6e8c9eE+0x298>
   8069c: 01 00 00 f0  	adrp	x1, 0x83000 <_ZN12baremetal_pi4main17h02d93c4b0c6e8c9eE+0x2b0>
   806a0: 08 00 a4 52  	mov	w8, #536870912
   806a4: e9 43 00 91  	add	x9, sp, #16
   806a8: 2a 00 80 52  	mov	w10, #1
   806ac: 21 e0 0d 91  	add	x1, x1, #888
   806b0: e0 23 00 91  	add	x0, sp, #8
   806b4: e2 43 00 91  	add	x2, sp, #16
   806b8: 68 0e 00 b9  	str	w8, [x19, #12]
   806bc: e9 db 00 a9  	stp	x9, x22, [sp, #8]
   806c0: ea ff 01 a9  	stp	x10, xzr, [sp, #24]
   806c4: ff df 02 a9  	stp	xzr, x23, [sp, #40]
   806c8: ff 1f 00 f9  	str	xzr, [sp, #56]
   806cc: ee 02 00 94  	bl	0x81284 <_ZN4core3fmt5write17h4089dd81629a8d2eE>
   806d0: 00 09 00 37  	tbnz	w0, #0, 0x807f0 <_ZN12baremetal_pi4main17h02d93c4b0c6e8c9eE+0x3f8>
   806d4: e8 03 15 aa  	mov	x8, x21
   806d8: 1f 20 03 d5  	nop
   806dc: 08 05 00 f1  	subs	x8, x8, #1
   806e0: c1 ff ff 54  	b.ne	0x806d8 <_ZN12baremetal_pi4main17h02d93c4b0c6e8c9eE+0x2e0>
   806e4: 09 00 a4 52  	mov	w9, #536870912
   806e8: e8 03 14 aa  	mov	x8, x20
   806ec: 69 02 00 b9  	str	w9, [x19]
   806f0: 1f 20 03 d5  	nop
   806f4: 08 05 00 f1  	subs	x8, x8, #1
   806f8: c1 ff ff 54  	b.ne	0x806f0 <_ZN12baremetal_pi4main17h02d93c4b0c6e8c9eE+0x2f8>
   806fc: 01 00 00 f0  	adrp	x1, 0x83000 <_ZN12baremetal_pi4main17h02d93c4b0c6e8c9eE+0x310>
   80700: 08 00 a4 52  	mov	w8, #536870912
   80704: e9 43 00 91  	add	x9, sp, #16
   80708: 2a 00 80 52  	mov	w10, #1
   8070c: 21 e0 0d 91  	add	x1, x1, #888
   80710: e0 23 00 91  	add	x0, sp, #8
   80714: e2 43 00 91  	add	x2, sp, #16
   80718: 68 0e 00 b9  	str	w8, [x19, #12]
   8071c: e9 db 00 a9  	stp	x9, x22, [sp, #8]
   80720: ea ff 01 a9  	stp	x10, xzr, [sp, #24]
   80724: ff df 02 a9  	stp	xzr, x23, [sp, #40]
   80728: ff 1f 00 f9  	str	xzr, [sp, #56]
   8072c: d6 02 00 94  	bl	0x81284 <_ZN4core3fmt5write17h4089dd81629a8d2eE>
   80730: 00 06 00 37  	tbnz	w0, #0, 0x807f0 <_ZN12baremetal_pi4main17h02d93c4b0c6e8c9eE+0x3f8>
   80734: e8 03 15 aa  	mov	x8, x21
   80738: 1f 20 03 d5  	nop
   8073c: 08 05 00 f1  	subs	x8, x8, #1
   80740: c1 ff ff 54  	b.ne	0x80738 <_ZN12baremetal_pi4main17h02d93c4b0c6e8c9eE+0x340>
   80744: 09 00 a4 52  	mov	w9, #536870912
   80748: e8 03 14 aa  	mov	x8, x20
   8074c: 69 02 00 b9  	str	w9, [x19]
   80750: 1f 20 03 d5  	nop
   80754: 08 05 00 f1  	subs	x8, x8, #1
   80758: c1 ff ff 54  	b.ne	0x80750 <_ZN12baremetal_pi4main17h02d93c4b0c6e8c9eE+0x358>
   8075c: 01 00 00 f0  	adrp	x1, 0x83000 <_ZN12baremetal_pi4main17h02d93c4b0c6e8c9eE+0x370>
   80760: 08 00 a4 52  	mov	w8, #536870912
   80764: e9 43 00 91  	add	x9, sp, #16
   80768: 2a 00 80 52  	mov	w10, #1
   8076c: 21 e0 0d 91  	add	x1, x1, #888
   80770: e0 23 00 91  	add	x0, sp, #8
   80774: e2 43 00 91  	add	x2, sp, #16
   80778: 68 0e 00 b9  	str	w8, [x19, #12]
   8077c: e9 db 00 a9  	stp	x9, x22, [sp, #8]
   80780: ea ff 01 a9  	stp	x10, xzr, [sp, #24]
   80784: ff df 02 a9  	stp	xzr, x23, [sp, #40]
   80788: ff 1f 00 f9  	str	xzr, [sp, #56]
   8078c: be 02 00 94  	bl	0x81284 <_ZN4core3fmt5write17h4089dd81629a8d2eE>
   80790: 00 03 00 37  	tbnz	w0, #0, 0x807f0 <_ZN12baremetal_pi4main17h02d93c4b0c6e8c9eE+0x3f8>
   80794: e8 03 15 aa  	mov	x8, x21
   80798: 1f 20 03 d5  	nop
   8079c: 08 05 00 f1  	subs	x8, x8, #1
   807a0: c1 ff ff 54  	b.ne	0x80798 <_ZN12baremetal_pi4main17h02d93c4b0c6e8c9eE+0x3a0>
   807a4: 08 00 a4 52  	mov	w8, #536870912
   807a8: 68 02 00 b9  	str	w8, [x19]
   807ac: 1f 20 03 d5  	nop
   807b0: 94 06 00 f1  	subs	x20, x20, #1
   807b4: c1 ff ff 54  	b.ne	0x807ac <_ZN12baremetal_pi4main17h02d93c4b0c6e8c9eE+0x3b4>
   807b8: 01 00 00 f0  	adrp	x1, 0x83000 <_ZN12baremetal_pi4main17h02d93c4b0c6e8c9eE+0x3cc>
   807bc: 08 00 a4 52  	mov	w8, #536870912
   807c0: e9 43 00 91  	add	x9, sp, #16
   807c4: 2a 00 80 52  	mov	w10, #1
   807c8: 21 e0 0d 91  	add	x1, x1, #888
   807cc: e0 23 00 91  	add	x0, sp, #8
   807d0: e2 43 00 91  	add	x2, sp, #16
   807d4: 68 0e 00 b9  	str	w8, [x19, #12]
   807d8: e9 db 00 a9  	stp	x9, x22, [sp, #8]
   807dc: ea ff 01 a9  	stp	x10, xzr, [sp, #24]
   807e0: ff df 02 a9  	stp	xzr, x23, [sp, #40]
   807e4: ff 1f 00 f9  	str	xzr, [sp, #56]
   807e8: a7 02 00 94  	bl	0x81284 <_ZN4core3fmt5write17h4089dd81629a8d2eE>
   807ec: c0 00 00 36  	tbz	w0, #0, 0x80804 <_ZN12baremetal_pi4main17h02d93c4b0c6e8c9eE+0x40c>
   807f0: 01 00 00 f0  	adrp	x1, 0x83000 <_ZN12baremetal_pi4main17h02d93c4b0c6e8c9eE+0x404>
   807f4: e0 43 00 91  	add	x0, sp, #16
   807f8: 21 c0 12 91  	add	x1, x1, #1200
   807fc: 33 03 00 94  	bl	0x814c8 <_ZN4core6result13unwrap_failed17h514395d9b84745f5E>
   80800: 20 00 20 d4  	brk	#0x1
   80804: 1f 20 03 d5  	nop
   80808: b5 06 00 f1  	subs	x21, x21, #1
   8080c: c1 ff ff 54  	b.ne	0x80804 <_ZN12baremetal_pi4main17h02d93c4b0c6e8c9eE+0x40c>
   80810: 00 00 00 f0  	adrp	x0, 0x83000 <_ZN12baremetal_pi4main17h02d93c4b0c6e8c9eE+0x424>
   80814: 02 00 00 f0  	adrp	x2, 0x83000 <_ZN12baremetal_pi4main17h02d93c4b0c6e8c9eE+0x428>
   80818: 00 20 13 91  	add	x0, x0, #1224
   8081c: 42 60 13 91  	add	x2, x2, #1240
   80820: e1 01 80 52  	mov	w1, #15
   80824: 7f 01 00 94  	bl	0x80e20 <_ZN4core9panicking5panic17ha7217054e020f4cfE>
   80828: 20 00 20 d4  	brk	#0x1

000000000008082c <_ZN12baremetal_pi4grit9stage_one17he24b54ccefa5d11eE>:
   8082c: fe 0f 1f f8  	str	x30, [sp, #-16]!
   80830: 28 00 00 90  	adrp	x8, 0x84000 <_ZN12baremetal_pi4grit9stage_one17he24b54ccefa5d11eE+0x14>
   80834: 29 00 00 90  	adrp	x9, 0x84000 <_ZN12baremetal_pi4grit9stage_one17he24b54ccefa5d11eE+0x18>
   80838: e1 03 1f 2a  	mov	w1, wzr
   8083c: 00 49 42 f9  	ldr	x0, [x8, #1168]
   80840: 28 49 42 f9  	ldr	x8, [x9, #1168]
   80844: 02 00 08 cb  	sub	x2, x0, x8
   80848: a3 0a 00 94  	bl	0x832d4 <memset>
   8084c: eb fe ff 97  	bl	0x803f8 <_ZN12baremetal_pi4main17h02d93c4b0c6e8c9eE>
   80850: 20 00 20 d4  	brk	#0x1

0000000000080854 <_ZN4core3ops8function6FnOnce9call_once17h1e0b4b2b1b15e514E>:
   80854: 1f 00 40 f9  	ldr	xzr, [x0]
   80858: 00 00 00 14  	b	0x80858 <_ZN4core3ops8function6FnOnce9call_once17h1e0b4b2b1b15e514E+0x4>

000000000008085c <_ZN4core9panicking18panic_bounds_check17h21e59d1a29014f09E>:
   8085c: e0 07 ba a9  	stp	x0, x1, [sp, #-96]!
   80860: 09 00 00 90  	adrp	x9, 0x80000 <_ZN4core9panicking18panic_bounds_check17h21e59d1a29014f09E+0x4>
   80864: e8 23 00 91  	add	x8, sp, #8
   80868: 29 91 22 91  	add	x9, x9, #2212
   8086c: 0b 00 00 f0  	adrp	x11, 0x83000 <_ZN4core9panicking18panic_bounds_check17h21e59d1a29014f09E+0x1c>
   80870: ea 03 00 91  	mov	x10, sp
   80874: 6b 01 14 91  	add	x11, x11, #1280
   80878: 4c 00 80 52  	mov	w12, #2
   8087c: e8 27 04 a9  	stp	x8, x9, [sp, #64]
   80880: e8 03 01 91  	add	x8, sp, #64
   80884: e0 43 00 91  	add	x0, sp, #16
   80888: e1 03 02 aa  	mov	x1, x2
   8088c: ff 7f 02 a9  	stp	xzr, xzr, [sp, #32]
   80890: ea 27 05 a9  	stp	x10, x9, [sp, #80]
   80894: eb 33 01 a9  	stp	x11, x12, [sp, #16]
   80898: e8 33 03 a9  	stp	x8, x12, [sp, #48]
   8089c: 5f 00 00 94  	bl	0x80a18 <_ZN4core9panicking9panic_fmt17h548b34a47a4ac578E>
   808a0: 20 00 20 d4  	brk	#0x1

00000000000808a4 <_ZN4core3fmt3num3imp52_$LT$impl$u20$core..fmt..Display$u20$for$u20$u64$GT$3fmt17hd9011ba631c18f60E>:
   808a4: ff 03 01 d1  	sub	sp, sp, #64
   808a8: fe 1b 00 f9  	str	x30, [sp, #48]
   808ac: 0a 00 40 f9  	ldr	x10, [x0]
   808b0: e8 03 01 aa  	mov	x8, x1
   808b4: 49 fd 44 d3  	lsr	x9, x10, #4
   808b8: 3f c5 09 f1  	cmp	x9, #625
   808bc: 09 00 00 f0  	adrp	x9, 0x83000 <_ZN4core3fmt3num3imp52_$LT$impl$u20$core..fmt..Display$u20$for$u20$u64$GT$3fmt17hd9011ba631c18f60E+0x24>
   808c0: 29 c9 16 91  	add	x9, x9, #1458
   808c4: e3 04 00 54  	b.lo	0x80960 <_ZN4core3fmt3num3imp52_$LT$impl$u20$core..fmt..Display$u20$for$u20$u64$GT$3fmt17hd9011ba631c18f60E+0xbc>
   808c8: 6c 29 8b d2  	mov	x12, #22859
   808cc: cc 10 a7 f2  	movk	x12, #14470, lsl #16
   808d0: cc ba d8 f2  	movk	x12, #50646, lsl #32
   808d4: ee a3 90 52  	mov	w14, #34079
   808d8: f1 1f 9c 52  	mov	w17, #57599
   808dc: eb 03 1f aa  	mov	x11, xzr
   808e0: ac 8d e6 f2  	movk	x12, #13421, lsl #48
   808e4: ed e1 84 12  	mov	w13, #-10000
   808e8: 6e 3d aa 72  	movk	w14, #20971, lsl #16
   808ec: 6f 0c 80 12  	mov	w15, #-100
   808f0: f0 23 00 91  	add	x16, sp, #8
   808f4: b1 be a0 72  	movk	w17, #1525, lsl #16
   808f8: f2 03 0a aa  	mov	x18, x10
   808fc: 4a 7d cc 9b  	umulh	x10, x10, x12
   80900: 4a fd 4b d3  	lsr	x10, x10, #11
   80904: 5f 02 11 eb  	cmp	x18, x17
   80908: 52 49 0d 1b  	madd	w18, w10, w13, w18
   8090c: 41 3e 00 12  	and	w1, w18, #0xffff
   80910: 21 7c ae 9b  	umull	x1, w1, w14
   80914: 21 fc 65 d3  	lsr	x1, x1, #37
   80918: 32 48 0f 1b  	madd	w18, w1, w15, w18
   8091c: 21 05 01 8b  	add	x1, x9, x1, lsl #1
   80920: 32 25 32 8b  	add	x18, x9, w18, uxth #1
   80924: 22 00 40 39  	ldrb	w2, [x1]
   80928: 21 04 40 39  	ldrb	w1, [x1, #1]
   8092c: 43 06 40 39  	ldrb	w3, [x18, #1]
   80930: 52 02 40 39  	ldrb	w18, [x18]
   80934: 00 02 0b 8b  	add	x0, x16, x11
   80938: 6b 11 00 d1  	sub	x11, x11, #4
   8093c: 01 90 00 39  	strb	w1, [x0, #36]
   80940: 02 8c 00 39  	strb	w2, [x0, #35]
   80944: 03 98 00 39  	strb	w3, [x0, #38]
   80948: 12 94 00 39  	strb	w18, [x0, #37]
   8094c: 68 fd ff 54  	b.hi	0x808f8 <_ZN4core3fmt3num3imp52_$LT$impl$u20$core..fmt..Display$u20$for$u20$u64$GT$3fmt17hd9011ba631c18f60E+0x54>
   80950: 6b 9d 00 91  	add	x11, x11, #39
   80954: 5f 8d 01 f1  	cmp	x10, #99
   80958: ac 00 00 54  	b.gt	0x8096c <_ZN4core3fmt3num3imp52_$LT$impl$u20$core..fmt..Display$u20$for$u20$u64$GT$3fmt17hd9011ba631c18f60E+0xc8>
   8095c: 14 00 00 14  	b	0x809ac <_ZN4core3fmt3num3imp52_$LT$impl$u20$core..fmt..Display$u20$for$u20$u64$GT$3fmt17hd9011ba631c18f60E+0x108>
   80960: eb 04 80 52  	mov	w11, #39
   80964: 5f 8d 01 f1  	cmp	x10, #99
   80968: 2d 02 00 54  	b.le	0x809ac <_ZN4core3fmt3num3imp52_$LT$impl$u20$core..fmt..Display$u20$for$u20$u64$GT$3fmt17hd9011ba631c18f60E+0x108>
   8096c: ed a3 90 52  	mov	w13, #34079
   80970: 4c 3d 00 12  	and	w12, w10, #0xffff
   80974: 6d 3d aa 72  	movk	w13, #20971, lsl #16
   80978: 8c 7d ad 9b  	umull	x12, w12, w13
   8097c: 6e 0c 80 12  	mov	w14, #-100
   80980: 8c fd 65 d3  	lsr	x12, x12, #37
   80984: 8a 29 0e 1b  	madd	w10, w12, w14, w10
   80988: 2a 25 2a 8b  	add	x10, x9, w10, uxth #1
   8098c: 4d 05 40 39  	ldrb	w13, [x10, #1]
   80990: 4a 01 40 39  	ldrb	w10, [x10]
   80994: 6b 09 00 d1  	sub	x11, x11, #2
   80998: ee 23 00 91  	add	x14, sp, #8
   8099c: ce 01 0b 8b  	add	x14, x14, x11
   809a0: ca 01 00 39  	strb	w10, [x14]
   809a4: ea 03 0c aa  	mov	x10, x12
   809a8: cd 05 00 39  	strb	w13, [x14, #1]
   809ac: 5f 29 00 f1  	cmp	x10, #10
   809b0: ca 00 00 54  	b.ge	0x809c8 <_ZN4core3fmt3num3imp52_$LT$impl$u20$core..fmt..Display$u20$for$u20$u64$GT$3fmt17hd9011ba631c18f60E+0x124>
   809b4: 6b 05 00 d1  	sub	x11, x11, #1
   809b8: 49 c1 00 11  	add	w9, w10, #48
   809bc: ea 23 00 91  	add	x10, sp, #8
   809c0: 49 69 2b 38  	strb	w9, [x10, x11]
   809c4: 09 00 00 14  	b	0x809e8 <_ZN4core3fmt3num3imp52_$LT$impl$u20$core..fmt..Display$u20$for$u20$u64$GT$3fmt17hd9011ba631c18f60E+0x144>
   809c8: 29 05 0a 8b  	add	x9, x9, x10, lsl #1
   809cc: 2a 05 40 39  	ldrb	w10, [x9, #1]
   809d0: 29 01 40 39  	ldrb	w9, [x9]
   809d4: 6b 09 00 d1  	sub	x11, x11, #2
   809d8: ec 23 00 91  	add	x12, sp, #8
   809dc: 8c 01 0b 8b  	add	x12, x12, x11
   809e0: 8a 05 00 39  	strb	w10, [x12, #1]
   809e4: 89 01 00 39  	strb	w9, [x12]
   809e8: e9 23 00 91  	add	x9, sp, #8
   809ec: ea 04 80 52  	mov	w10, #39
   809f0: 01 00 00 f0  	adrp	x1, 0x83000 <_ZN4core3fmt3num3imp52_$LT$impl$u20$core..fmt..Display$u20$for$u20$u64$GT$3fmt17hd9011ba631c18f60E+0x158>
   809f4: 23 01 0b 8b  	add	x3, x9, x11
   809f8: 44 01 0b cb  	sub	x4, x10, x11
   809fc: 21 80 14 91  	add	x1, x1, #1312
   80a00: e0 03 08 aa  	mov	x0, x8
   80a04: e2 03 1f aa  	mov	x2, xzr
   80a08: 13 00 00 94  	bl	0x80a54 <_ZN4core3fmt9Formatter12pad_integral17h4be5fae25bf478d6E>
   80a0c: fe 1b 40 f9  	ldr	x30, [sp, #48]
   80a10: ff 03 01 91  	add	sp, sp, #64
   80a14: c0 03 5f d6  	ret

0000000000080a18 <_ZN4core9panicking9panic_fmt17h548b34a47a4ac578E>:
   80a18: 08 00 00 f0  	adrp	x8, 0x83000 <_ZN4core9panicking9panic_fmt17h548b34a47a4ac578E+0xc>
   80a1c: 09 00 00 f0  	adrp	x9, 0x83000 <_ZN4core9panicking9panic_fmt17h548b34a47a4ac578E+0x10>
   80a20: 08 81 14 91  	add	x8, x8, #1312
   80a24: 29 81 14 91  	add	x9, x9, #1312
   80a28: e8 27 be a9  	stp	x8, x9, [sp, #-32]!
   80a2c: e0 07 01 a9  	stp	x0, x1, [sp, #16]
   80a30: e0 03 00 91  	mov	x0, sp
   80a34: 50 fe ff 97  	bl	0x80374 <rust_begin_unwind>
   80a38: 20 00 20 d4  	brk	#0x1

0000000000080a3c <_ZN4core3ptr102drop_in_place$LT$$RF$core..iter..adapters..copied..Copied$LT$core..slice..iter..Iter$LT$u8$GT$$GT$$GT$17h2926ff8863b04fafE>:
   80a3c: c0 03 5f d6  	ret

0000000000080a40 <_ZN36_$LT$T$u20$as$u20$core..any..Any$GT$7type_id17h311a29bdb201aafdE>:
   80a40: 20 28 87 d2  	mov	x0, #14657
   80a44: e0 a1 a8 f2  	movk	x0, #17679, lsl #16
   80a48: 40 43 db f2  	movk	x0, #55834, lsl #32
   80a4c: 20 96 fa f2  	movk	x0, #54449, lsl #48
   80a50: c0 03 5f d6  	ret

0000000000080a54 <_ZN4core3fmt9Formatter12pad_integral17h4be5fae25bf478d6E>:
   80a54: fd 7b ba a9  	stp	x29, x30, [sp, #-96]!
   80a58: fc 6f 01 a9  	stp	x28, x27, [sp, #16]
   80a5c: fa 67 02 a9  	stp	x26, x25, [sp, #32]
   80a60: f8 5f 03 a9  	stp	x24, x23, [sp, #48]
   80a64: f6 57 04 a9  	stp	x22, x21, [sp, #64]
   80a68: f4 4f 05 a9  	stp	x20, x19, [sp, #80]
   80a6c: 08 30 40 b9  	ldr	w8, [x0, #48]
   80a70: 69 05 80 52  	mov	w9, #43
   80a74: 2a 02 a0 52  	mov	w10, #1114112
   80a78: f3 03 04 aa  	mov	x19, x4
   80a7c: 0b 01 40 92  	and	x11, x8, #0x1
   80a80: 7f 01 00 71  	cmp	w11, #0
   80a84: f4 03 03 aa  	mov	x20, x3
   80a88: f5 03 00 aa  	mov	x21, x0
   80a8c: 58 01 89 1a  	csel	w24, w10, w9, eq
   80a90: 69 01 04 8b  	add	x9, x11, x4
   80a94: e8 00 10 37  	tbnz	w8, #2, 0x80ab0 <_ZN4core3fmt9Formatter12pad_integral17h4be5fae25bf478d6E+0x5c>
   80a98: f7 03 1f aa  	mov	x23, xzr
   80a9c: f6 03 1f aa  	mov	x22, xzr
   80aa0: aa 02 40 f9  	ldr	x10, [x21]
   80aa4: 5f 05 00 f1  	cmp	x10, #1
   80aa8: 20 05 00 54  	b.eq	0x80b4c <_ZN4core3fmt9Formatter12pad_integral17h4be5fae25bf478d6E+0xf8>
   80aac: 35 00 00 14  	b	0x80b80 <_ZN4core3fmt9Formatter12pad_integral17h4be5fae25bf478d6E+0x12c>
   80ab0: f6 03 02 aa  	mov	x22, x2
   80ab4: f7 03 01 aa  	mov	x23, x1
   80ab8: eb 03 02 aa  	mov	x11, x2
   80abc: 02 04 00 b4  	cbz	x2, 0x80b3c <_ZN4core3fmt9Formatter12pad_integral17h4be5fae25bf478d6E+0xe8>
   80ac0: df 06 00 f1  	cmp	x22, #1
   80ac4: 81 00 00 54  	b.ne	0x80ad4 <_ZN4core3fmt9Formatter12pad_integral17h4be5fae25bf478d6E+0x80>
   80ac8: eb 03 1f aa  	mov	x11, xzr
   80acc: ea 03 17 aa  	mov	x10, x23
   80ad0: 14 00 00 14  	b	0x80b20 <_ZN4core3fmt9Formatter12pad_integral17h4be5fae25bf478d6E+0xcc>
   80ad4: ca fa 7f 92  	and	x10, x22, #0xfffffffffffffffe
   80ad8: eb 03 1f aa  	mov	x11, xzr
   80adc: ec 03 1f aa  	mov	x12, xzr
   80ae0: ed 06 00 91  	add	x13, x23, #1
   80ae4: ee 03 0a aa  	mov	x14, x10
   80ae8: af f1 5f 38  	ldurb	w15, [x13, #-1]
   80aec: b0 25 40 38  	ldrb	w16, [x13], #2
   80af0: ef 05 1a 12  	and	w15, w15, #0xc0
   80af4: 10 06 1a 12  	and	w16, w16, #0xc0
   80af8: ff 01 02 71  	cmp	w15, #128
   80afc: 6b 05 8b 9a  	cinc	x11, x11, ne
   80b00: 1f 02 02 71  	cmp	w16, #128
   80b04: 8c 05 8c 9a  	cinc	x12, x12, ne
   80b08: ce 09 00 f1  	subs	x14, x14, #2
   80b0c: e1 fe ff 54  	b.ne	0x80ae8 <_ZN4core3fmt9Formatter12pad_integral17h4be5fae25bf478d6E+0x94>
   80b10: 5f 01 16 eb  	cmp	x10, x22
   80b14: 8b 01 0b 8b  	add	x11, x12, x11
   80b18: 20 01 00 54  	b.eq	0x80b3c <_ZN4core3fmt9Formatter12pad_integral17h4be5fae25bf478d6E+0xe8>
   80b1c: ea 02 0a 8b  	add	x10, x23, x10
   80b20: ec 02 16 8b  	add	x12, x23, x22
   80b24: 4d 15 40 38  	ldrb	w13, [x10], #1
   80b28: ad 05 1a 12  	and	w13, w13, #0xc0
   80b2c: bf 01 02 71  	cmp	w13, #128
   80b30: 6b 05 8b 9a  	cinc	x11, x11, ne
   80b34: 9f 01 0a eb  	cmp	x12, x10
   80b38: 61 ff ff 54  	b.ne	0x80b24 <_ZN4core3fmt9Formatter12pad_integral17h4be5fae25bf478d6E+0xd0>
   80b3c: 69 01 09 8b  	add	x9, x11, x9
   80b40: aa 02 40 f9  	ldr	x10, [x21]
   80b44: 5f 05 00 f1  	cmp	x10, #1
   80b48: c1 01 00 54  	b.ne	0x80b80 <_ZN4core3fmt9Formatter12pad_integral17h4be5fae25bf478d6E+0x12c>
   80b4c: aa 06 40 f9  	ldr	x10, [x21, #8]
   80b50: 5c 01 09 eb  	subs	x28, x10, x9
   80b54: 69 01 00 54  	b.ls	0x80b80 <_ZN4core3fmt9Formatter12pad_integral17h4be5fae25bf478d6E+0x12c>
   80b58: 88 04 18 37  	tbnz	w8, #3, 0x80be8 <_ZN4core3fmt9Formatter12pad_integral17h4be5fae25bf478d6E+0x194>
   80b5c: a8 e2 40 39  	ldrb	w8, [x21, #56]
   80b60: 1f 0d 00 71  	cmp	w8, #3
   80b64: 08 15 9f 1a  	csinc	w8, w8, wzr, ne
   80b68: 08 05 00 72  	ands	w8, w8, #0x3
   80b6c: a0 06 00 54  	b.eq	0x80c40 <_ZN4core3fmt9Formatter12pad_integral17h4be5fae25bf478d6E+0x1ec>
   80b70: 1f 05 00 71  	cmp	w8, #1
   80b74: c1 06 00 54  	b.ne	0x80c4c <_ZN4core3fmt9Formatter12pad_integral17h4be5fae25bf478d6E+0x1f8>
   80b78: fd 03 1f aa  	mov	x29, xzr
   80b7c: 37 00 00 14  	b	0x80c58 <_ZN4core3fmt9Formatter12pad_integral17h4be5fae25bf478d6E+0x204>
   80b80: e0 03 15 aa  	mov	x0, x21
   80b84: e1 03 18 2a  	mov	w1, w24
   80b88: e2 03 17 aa  	mov	x2, x23
   80b8c: e3 03 16 aa  	mov	x3, x22
   80b90: 65 00 00 94  	bl	0x80d24 <_ZN4core3fmt9Formatter12pad_integral12write_prefix17h7ec449827422f958E>
   80b94: 40 01 00 36  	tbz	w0, #0, 0x80bbc <_ZN4core3fmt9Formatter12pad_integral17h4be5fae25bf478d6E+0x168>
   80b98: 39 00 80 52  	mov	w25, #1
   80b9c: e0 03 19 2a  	mov	w0, w25
   80ba0: f4 4f 45 a9  	ldp	x20, x19, [sp, #80]
   80ba4: f6 57 44 a9  	ldp	x22, x21, [sp, #64]
   80ba8: f8 5f 43 a9  	ldp	x24, x23, [sp, #48]
   80bac: fa 67 42 a9  	ldp	x26, x25, [sp, #32]
   80bb0: fc 6f 41 a9  	ldp	x28, x27, [sp, #16]
   80bb4: fd 7b c6 a8  	ldp	x29, x30, [sp], #96
   80bb8: c0 03 5f d6  	ret
   80bbc: a0 22 42 a9  	ldp	x0, x8, [x21, #32]
   80bc0: e1 03 14 aa  	mov	x1, x20
   80bc4: e2 03 13 aa  	mov	x2, x19
   80bc8: f4 4f 45 a9  	ldp	x20, x19, [sp, #80]
   80bcc: 03 0d 40 f9  	ldr	x3, [x8, #24]
   80bd0: f6 57 44 a9  	ldp	x22, x21, [sp, #64]
   80bd4: f8 5f 43 a9  	ldp	x24, x23, [sp, #48]
   80bd8: fa 67 42 a9  	ldp	x26, x25, [sp, #32]
   80bdc: fc 6f 41 a9  	ldp	x28, x27, [sp, #16]
   80be0: fd 7b c6 a8  	ldp	x29, x30, [sp], #96
   80be4: 60 00 1f d6  	br	x3
   80be8: ba 36 40 b9  	ldr	w26, [x21, #52]
   80bec: bb e2 40 39  	ldrb	w27, [x21, #56]
   80bf0: 08 06 80 52  	mov	w8, #48
   80bf4: 39 00 80 52  	mov	w25, #1
   80bf8: e0 03 15 aa  	mov	x0, x21
   80bfc: e1 03 18 2a  	mov	w1, w24
   80c00: e2 03 17 aa  	mov	x2, x23
   80c04: e3 03 16 aa  	mov	x3, x22
   80c08: a8 36 00 b9  	str	w8, [x21, #52]
   80c0c: b9 e2 00 39  	strb	w25, [x21, #56]
   80c10: 45 00 00 94  	bl	0x80d24 <_ZN4core3fmt9Formatter12pad_integral12write_prefix17h7ec449827422f958E>
   80c14: 40 fc 07 37  	tbnz	w0, #0, 0x80b9c <_ZN4core3fmt9Formatter12pad_integral17h4be5fae25bf478d6E+0x148>
   80c18: b6 5e 42 a9  	ldp	x22, x23, [x21, #32]
   80c1c: 98 07 00 91  	add	x24, x28, #1
   80c20: 18 07 00 f1  	subs	x24, x24, #1
   80c24: 40 06 00 54  	b.eq	0x80cec <_ZN4core3fmt9Formatter12pad_integral17h4be5fae25bf478d6E+0x298>
   80c28: e8 12 40 f9  	ldr	x8, [x23, #32]
   80c2c: 01 06 80 52  	mov	w1, #48
   80c30: e0 03 16 aa  	mov	x0, x22
   80c34: 00 01 3f d6  	blr	x8
   80c38: 40 ff 07 36  	tbz	w0, #0, 0x80c20 <_ZN4core3fmt9Formatter12pad_integral17h4be5fae25bf478d6E+0x1cc>
   80c3c: d7 ff ff 17  	b	0x80b98 <_ZN4core3fmt9Formatter12pad_integral17h4be5fae25bf478d6E+0x144>
   80c40: fd 03 1c aa  	mov	x29, x28
   80c44: fc 03 1f aa  	mov	x28, xzr
   80c48: 04 00 00 14  	b	0x80c58 <_ZN4core3fmt9Formatter12pad_integral17h4be5fae25bf478d6E+0x204>
   80c4c: 88 07 00 91  	add	x8, x28, #1
   80c50: 9c ff 41 d3  	lsr	x28, x28, #1
   80c54: 1d fd 41 d3  	lsr	x29, x8, #1
   80c58: b9 6e 42 a9  	ldp	x25, x27, [x21, #32]
   80c5c: ba 36 40 b9  	ldr	w26, [x21, #52]
   80c60: 9c 07 00 91  	add	x28, x28, #1
   80c64: 9c 07 00 f1  	subs	x28, x28, #1
   80c68: e0 00 00 54  	b.eq	0x80c84 <_ZN4core3fmt9Formatter12pad_integral17h4be5fae25bf478d6E+0x230>
   80c6c: 68 13 40 f9  	ldr	x8, [x27, #32]
   80c70: e0 03 19 aa  	mov	x0, x25
   80c74: e1 03 1a 2a  	mov	w1, w26
   80c78: 00 01 3f d6  	blr	x8
   80c7c: 40 ff 07 36  	tbz	w0, #0, 0x80c64 <_ZN4core3fmt9Formatter12pad_integral17h4be5fae25bf478d6E+0x210>
   80c80: c6 ff ff 17  	b	0x80b98 <_ZN4core3fmt9Formatter12pad_integral17h4be5fae25bf478d6E+0x144>
   80c84: 5f 43 44 71  	cmp	w26, #272, lsl #12
   80c88: fc 03 9d 9a  	csel	x28, xzr, x29, eq
   80c8c: 60 f8 ff 54  	b.eq	0x80b98 <_ZN4core3fmt9Formatter12pad_integral17h4be5fae25bf478d6E+0x144>
   80c90: e0 03 15 aa  	mov	x0, x21
   80c94: e1 03 18 2a  	mov	w1, w24
   80c98: e2 03 17 aa  	mov	x2, x23
   80c9c: e3 03 16 aa  	mov	x3, x22
   80ca0: 21 00 00 94  	bl	0x80d24 <_ZN4core3fmt9Formatter12pad_integral12write_prefix17h7ec449827422f958E>
   80ca4: a0 f7 07 37  	tbnz	w0, #0, 0x80b98 <_ZN4core3fmt9Formatter12pad_integral17h4be5fae25bf478d6E+0x144>
   80ca8: 68 0f 40 f9  	ldr	x8, [x27, #24]
   80cac: e0 03 19 aa  	mov	x0, x25
   80cb0: e1 03 14 aa  	mov	x1, x20
   80cb4: e2 03 13 aa  	mov	x2, x19
   80cb8: 00 01 3f d6  	blr	x8
   80cbc: e0 f6 07 37  	tbnz	w0, #0, 0x80b98 <_ZN4core3fmt9Formatter12pad_integral17h4be5fae25bf478d6E+0x144>
   80cc0: f3 03 1f aa  	mov	x19, xzr
   80cc4: 9f 03 13 eb  	cmp	x28, x19
   80cc8: 60 02 00 54  	b.eq	0x80d14 <_ZN4core3fmt9Formatter12pad_integral17h4be5fae25bf478d6E+0x2c0>
   80ccc: 68 13 40 f9  	ldr	x8, [x27, #32]
   80cd0: e0 03 19 aa  	mov	x0, x25
   80cd4: e1 03 1a 2a  	mov	w1, w26
   80cd8: 73 06 00 91  	add	x19, x19, #1
   80cdc: 00 01 3f d6  	blr	x8
   80ce0: 20 ff ff 34  	cbz	w0, 0x80cc4 <_ZN4core3fmt9Formatter12pad_integral17h4be5fae25bf478d6E+0x270>
   80ce4: 68 06 00 d1  	sub	x8, x19, #1
   80ce8: 0c 00 00 14  	b	0x80d18 <_ZN4core3fmt9Formatter12pad_integral17h4be5fae25bf478d6E+0x2c4>
   80cec: e8 0e 40 f9  	ldr	x8, [x23, #24]
   80cf0: e0 03 16 aa  	mov	x0, x22
   80cf4: e1 03 14 aa  	mov	x1, x20
   80cf8: e2 03 13 aa  	mov	x2, x19
   80cfc: 00 01 3f d6  	blr	x8
   80d00: c0 f4 07 37  	tbnz	w0, #0, 0x80b98 <_ZN4core3fmt9Formatter12pad_integral17h4be5fae25bf478d6E+0x144>
   80d04: f9 03 1f 2a  	mov	w25, wzr
   80d08: ba 36 00 b9  	str	w26, [x21, #52]
   80d0c: bb e2 00 39  	strb	w27, [x21, #56]
   80d10: a3 ff ff 17  	b	0x80b9c <_ZN4core3fmt9Formatter12pad_integral17h4be5fae25bf478d6E+0x148>
   80d14: e8 03 1c aa  	mov	x8, x28
   80d18: 1f 01 1c eb  	cmp	x8, x28
   80d1c: f9 27 9f 1a  	cset	w25, lo
   80d20: 9f ff ff 17  	b	0x80b9c <_ZN4core3fmt9Formatter12pad_integral17h4be5fae25bf478d6E+0x148>

0000000000080d24 <_ZN4core3fmt9Formatter12pad_integral12write_prefix17h7ec449827422f958E>:
   80d24: fe 57 be a9  	stp	x30, x21, [sp, #-32]!
   80d28: f4 4f 01 a9  	stp	x20, x19, [sp, #16]
   80d2c: f3 03 03 aa  	mov	x19, x3
   80d30: f4 03 02 aa  	mov	x20, x2
   80d34: 3f 40 44 71  	cmp	w1, #272, lsl #12
   80d38: f5 03 00 aa  	mov	x21, x0
   80d3c: 20 01 00 54  	b.eq	0x80d60 <_ZN4core3fmt9Formatter12pad_integral12write_prefix17h7ec449827422f958E+0x3c>
   80d40: a0 22 42 a9  	ldp	x0, x8, [x21, #32]
   80d44: 08 11 40 f9  	ldr	x8, [x8, #32]
   80d48: 00 01 3f d6  	blr	x8
   80d4c: a0 00 00 36  	tbz	w0, #0, 0x80d60 <_ZN4core3fmt9Formatter12pad_integral12write_prefix17h7ec449827422f958E+0x3c>
   80d50: 20 00 80 52  	mov	w0, #1
   80d54: f4 4f 41 a9  	ldp	x20, x19, [sp, #16]
   80d58: fe 57 c2 a8  	ldp	x30, x21, [sp], #32
   80d5c: c0 03 5f d6  	ret
   80d60: 14 01 00 b4  	cbz	x20, 0x80d80 <_ZN4core3fmt9Formatter12pad_integral12write_prefix17h7ec449827422f958E+0x5c>
   80d64: a0 22 42 a9  	ldp	x0, x8, [x21, #32]
   80d68: e1 03 14 aa  	mov	x1, x20
   80d6c: e2 03 13 aa  	mov	x2, x19
   80d70: f4 4f 41 a9  	ldp	x20, x19, [sp, #16]
   80d74: 03 0d 40 f9  	ldr	x3, [x8, #24]
   80d78: fe 57 c2 a8  	ldp	x30, x21, [sp], #32
   80d7c: 60 00 1f d6  	br	x3
   80d80: e0 03 1f 2a  	mov	w0, wzr
   80d84: f4 4f 41 a9  	ldp	x20, x19, [sp, #16]
   80d88: fe 57 c2 a8  	ldp	x30, x21, [sp], #32
   80d8c: c0 03 5f d6  	ret

0000000000080d90 <_ZN4core5slice5index26slice_start_index_len_fail17ha5c8a54d8fb05d93E>:
   80d90: e0 07 ba a9  	stp	x0, x1, [sp, #-96]!
   80d94: 09 00 00 90  	adrp	x9, 0x80000 <_ZN4core5slice5index26slice_start_index_len_fail17ha5c8a54d8fb05d93E+0x4>
   80d98: e8 03 00 91  	mov	x8, sp
   80d9c: 29 91 22 91  	add	x9, x9, #2212
   80da0: 0b 00 00 f0  	adrp	x11, 0x83000 <_ZN4core5slice5index26slice_start_index_len_fail17ha5c8a54d8fb05d93E+0x1c>
   80da4: ea 23 00 91  	add	x10, sp, #8
   80da8: 6b 01 1a 91  	add	x11, x11, #1664
   80dac: 4c 00 80 52  	mov	w12, #2
   80db0: e8 27 04 a9  	stp	x8, x9, [sp, #64]
   80db4: e8 03 01 91  	add	x8, sp, #64
   80db8: e0 43 00 91  	add	x0, sp, #16
   80dbc: e1 03 02 aa  	mov	x1, x2
   80dc0: ff 7f 02 a9  	stp	xzr, xzr, [sp, #32]
   80dc4: ea 27 05 a9  	stp	x10, x9, [sp, #80]
   80dc8: eb 33 01 a9  	stp	x11, x12, [sp, #16]
   80dcc: e8 33 03 a9  	stp	x8, x12, [sp, #48]
   80dd0: 12 ff ff 97  	bl	0x80a18 <_ZN4core9panicking9panic_fmt17h548b34a47a4ac578E>
   80dd4: 20 00 20 d4  	brk	#0x1

0000000000080dd8 <_ZN4core5slice5index24slice_end_index_len_fail17h827cf37c6cc32b14E>:
   80dd8: e0 07 ba a9  	stp	x0, x1, [sp, #-96]!
   80ddc: 09 00 00 90  	adrp	x9, 0x80000 <_ZN4core5slice5index24slice_end_index_len_fail17h827cf37c6cc32b14E+0x4>
   80de0: e8 03 00 91  	mov	x8, sp
   80de4: 29 91 22 91  	add	x9, x9, #2212
   80de8: 0b 00 00 f0  	adrp	x11, 0x83000 <_ZN4core5slice5index24slice_end_index_len_fail17h827cf37c6cc32b14E+0x1c>
   80dec: ea 23 00 91  	add	x10, sp, #8
   80df0: 6b 61 1b 91  	add	x11, x11, #1752
   80df4: 4c 00 80 52  	mov	w12, #2
   80df8: e8 27 04 a9  	stp	x8, x9, [sp, #64]
   80dfc: e8 03 01 91  	add	x8, sp, #64
   80e00: e0 43 00 91  	add	x0, sp, #16
   80e04: e1 03 02 aa  	mov	x1, x2
   80e08: ff 7f 02 a9  	stp	xzr, xzr, [sp, #32]
   80e0c: ea 27 05 a9  	stp	x10, x9, [sp, #80]
   80e10: eb 33 01 a9  	stp	x11, x12, [sp, #16]
   80e14: e8 33 03 a9  	stp	x8, x12, [sp, #48]
   80e18: 00 ff ff 97  	bl	0x80a18 <_ZN4core9panicking9panic_fmt17h548b34a47a4ac578E>
   80e1c: 20 00 20 d4  	brk	#0x1

0000000000080e20 <_ZN4core9panicking5panic17ha7217054e020f4cfE>:
   80e20: ff 03 01 d1  	sub	sp, sp, #64
   80e24: 0a 00 00 f0  	adrp	x10, 0x83000 <_ZN4core9panicking5panic17ha7217054e020f4cfE+0x10>
   80e28: e0 07 03 a9  	stp	x0, x1, [sp, #48]
   80e2c: e8 c3 00 91  	add	x8, sp, #48
   80e30: 29 00 80 52  	mov	w9, #1
   80e34: 4a 81 14 91  	add	x10, x10, #1312
   80e38: e0 03 00 91  	mov	x0, sp
   80e3c: e1 03 02 aa  	mov	x1, x2
   80e40: ff 7f 01 a9  	stp	xzr, xzr, [sp, #16]
   80e44: e8 27 00 a9  	stp	x8, x9, [sp]
   80e48: ea 7f 02 a9  	stp	x10, xzr, [sp, #32]
   80e4c: f3 fe ff 97  	bl	0x80a18 <_ZN4core9panicking9panic_fmt17h548b34a47a4ac578E>
   80e50: 20 00 20 d4  	brk	#0x1

0000000000080e54 <_ZN44_$LT$$RF$T$u20$as$u20$core..fmt..Display$GT$3fmt17h3f94e73c8b157ba1E>:
   80e54: fe 67 bc a9  	stp	x30, x25, [sp, #-64]!
   80e58: f8 5f 01 a9  	stp	x24, x23, [sp, #16]
   80e5c: f6 57 02 a9  	stp	x22, x21, [sp, #32]
   80e60: f4 4f 03 a9  	stp	x20, x19, [sp, #48]
   80e64: 28 00 40 f9  	ldr	x8, [x1]
   80e68: 14 4c 40 a9  	ldp	x20, x19, [x0]
   80e6c: 29 08 40 f9  	ldr	x9, [x1, #16]
   80e70: 1f 05 00 f1  	cmp	x8, #1
   80e74: 81 00 00 54  	b.ne	0x80e84 <_ZN44_$LT$$RF$T$u20$as$u20$core..fmt..Display$GT$3fmt17h3f94e73c8b157ba1E+0x30>
   80e78: 3f 05 00 f1  	cmp	x9, #1
   80e7c: 80 00 00 54  	b.eq	0x80e8c <_ZN44_$LT$$RF$T$u20$as$u20$core..fmt..Display$GT$3fmt17h3f94e73c8b157ba1E+0x38>
   80e80: 5a 00 00 14  	b	0x80fe8 <_ZN44_$LT$$RF$T$u20$as$u20$core..fmt..Display$GT$3fmt17h3f94e73c8b157ba1E+0x194>
   80e84: 3f 05 00 f1  	cmp	x9, #1
   80e88: 81 10 00 54  	b.ne	0x81098 <_ZN44_$LT$$RF$T$u20$as$u20$core..fmt..Display$GT$3fmt17h3f94e73c8b157ba1E+0x244>
   80e8c: 2b 0c 40 f9  	ldr	x11, [x1, #24]
   80e90: 8a 02 13 8b  	add	x10, x20, x19
   80e94: e9 03 1f aa  	mov	x9, xzr
   80e98: 6b 06 00 b4  	cbz	x11, 0x80f64 <_ZN44_$LT$$RF$T$u20$as$u20$core..fmt..Display$GT$3fmt17h3f94e73c8b157ba1E+0x110>
   80e9c: ed 03 14 aa  	mov	x13, x20
   80ea0: 0e 00 00 14  	b	0x80ed8 <_ZN44_$LT$$RF$T$u20$as$u20$core..fmt..Display$GT$3fmt17h3f94e73c8b157ba1E+0x84>
   80ea4: 91 15 40 38  	ldrb	w17, [x12], #1
   80ea8: 31 16 00 12  	and	w17, w17, #0x3f
   80eac: ef 09 0e 53  	ubfiz	w15, w15, #18, #3
   80eb0: cf 15 14 33  	bfi	w15, w14, #12, #6
   80eb4: 0f 16 1a 33  	bfi	w15, w16, #6, #6
   80eb8: ee 01 11 2a  	orr	w14, w15, w17
   80ebc: df 41 44 71  	cmp	w14, #272, lsl #12
   80ec0: 00 09 00 54  	b.eq	0x80fe0 <_ZN44_$LT$$RF$T$u20$as$u20$core..fmt..Display$GT$3fmt17h3f94e73c8b157ba1E+0x18c>
   80ec4: 29 01 0d cb  	sub	x9, x9, x13
   80ec8: 6b 05 00 f1  	subs	x11, x11, #1
   80ecc: 29 01 0c 8b  	add	x9, x9, x12
   80ed0: ed 03 0c aa  	mov	x13, x12
   80ed4: a0 04 00 54  	b.eq	0x80f68 <_ZN44_$LT$$RF$T$u20$as$u20$core..fmt..Display$GT$3fmt17h3f94e73c8b157ba1E+0x114>
   80ed8: bf 01 0a eb  	cmp	x13, x10
   80edc: 20 08 00 54  	b.eq	0x80fe0 <_ZN44_$LT$$RF$T$u20$as$u20$core..fmt..Display$GT$3fmt17h3f94e73c8b157ba1E+0x18c>
   80ee0: ec 03 0d aa  	mov	x12, x13
   80ee4: 8f 15 c0 38  	ldrsb	w15, [x12], #1
   80ee8: ef fe ff 36  	tbz	w15, #31, 0x80ec4 <_ZN44_$LT$$RF$T$u20$as$u20$core..fmt..Display$GT$3fmt17h3f94e73c8b157ba1E+0x70>
   80eec: 9f 01 0a eb  	cmp	x12, x10
   80ef0: 00 01 00 54  	b.eq	0x80f10 <_ZN44_$LT$$RF$T$u20$as$u20$core..fmt..Display$GT$3fmt17h3f94e73c8b157ba1E+0xbc>
   80ef4: ae 05 40 39  	ldrb	w14, [x13, #1]
   80ef8: ac 09 00 91  	add	x12, x13, #2
   80efc: ce 15 00 12  	and	w14, w14, #0x3f
   80f00: ef 1d 00 12  	and	w15, w15, #0xff
   80f04: ff 81 03 71  	cmp	w15, #224
   80f08: e3 fd ff 54  	b.lo	0x80ec4 <_ZN44_$LT$$RF$T$u20$as$u20$core..fmt..Display$GT$3fmt17h3f94e73c8b157ba1E+0x70>
   80f0c: 06 00 00 14  	b	0x80f24 <_ZN44_$LT$$RF$T$u20$as$u20$core..fmt..Display$GT$3fmt17h3f94e73c8b157ba1E+0xd0>
   80f10: ee 03 1f 2a  	mov	w14, wzr
   80f14: ec 03 0a aa  	mov	x12, x10
   80f18: ef 1d 00 12  	and	w15, w15, #0xff
   80f1c: ff 81 03 71  	cmp	w15, #224
   80f20: 23 fd ff 54  	b.lo	0x80ec4 <_ZN44_$LT$$RF$T$u20$as$u20$core..fmt..Display$GT$3fmt17h3f94e73c8b157ba1E+0x70>
   80f24: 9f 01 0a eb  	cmp	x12, x10
   80f28: c0 00 00 54  	b.eq	0x80f40 <_ZN44_$LT$$RF$T$u20$as$u20$core..fmt..Display$GT$3fmt17h3f94e73c8b157ba1E+0xec>
   80f2c: 90 15 40 38  	ldrb	w16, [x12], #1
   80f30: 10 16 00 12  	and	w16, w16, #0x3f
   80f34: ff c1 03 71  	cmp	w15, #240
   80f38: 63 fc ff 54  	b.lo	0x80ec4 <_ZN44_$LT$$RF$T$u20$as$u20$core..fmt..Display$GT$3fmt17h3f94e73c8b157ba1E+0x70>
   80f3c: 05 00 00 14  	b	0x80f50 <_ZN44_$LT$$RF$T$u20$as$u20$core..fmt..Display$GT$3fmt17h3f94e73c8b157ba1E+0xfc>
   80f40: f0 03 1f 2a  	mov	w16, wzr
   80f44: ec 03 0a aa  	mov	x12, x10
   80f48: ff c1 03 71  	cmp	w15, #240
   80f4c: c3 fb ff 54  	b.lo	0x80ec4 <_ZN44_$LT$$RF$T$u20$as$u20$core..fmt..Display$GT$3fmt17h3f94e73c8b157ba1E+0x70>
   80f50: 9f 01 0a eb  	cmp	x12, x10
   80f54: 81 fa ff 54  	b.ne	0x80ea4 <_ZN44_$LT$$RF$T$u20$as$u20$core..fmt..Display$GT$3fmt17h3f94e73c8b157ba1E+0x50>
   80f58: f1 03 1f 2a  	mov	w17, wzr
   80f5c: ec 03 0a aa  	mov	x12, x10
   80f60: d3 ff ff 17  	b	0x80eac <_ZN44_$LT$$RF$T$u20$as$u20$core..fmt..Display$GT$3fmt17h3f94e73c8b157ba1E+0x58>
   80f64: ec 03 14 aa  	mov	x12, x20
   80f68: 9f 01 0a eb  	cmp	x12, x10
   80f6c: a0 03 00 54  	b.eq	0x80fe0 <_ZN44_$LT$$RF$T$u20$as$u20$core..fmt..Display$GT$3fmt17h3f94e73c8b157ba1E+0x18c>
   80f70: eb 03 0c aa  	mov	x11, x12
   80f74: 6d 15 c0 38  	ldrsb	w13, [x11], #1
   80f78: 4d 01 f8 37  	tbnz	w13, #31, 0x80fa0 <_ZN44_$LT$$RF$T$u20$as$u20$core..fmt..Display$GT$3fmt17h3f94e73c8b157ba1E+0x14c>
   80f7c: a9 02 00 b4  	cbz	x9, 0x80fd0 <_ZN44_$LT$$RF$T$u20$as$u20$core..fmt..Display$GT$3fmt17h3f94e73c8b157ba1E+0x17c>
   80f80: 3f 01 13 eb  	cmp	x9, x19
   80f84: 22 02 00 54  	b.hs	0x80fc8 <_ZN44_$LT$$RF$T$u20$as$u20$core..fmt..Display$GT$3fmt17h3f94e73c8b157ba1E+0x174>
   80f88: 8a 6a e9 38  	ldrsb	w10, [x20, x9]
   80f8c: 5f 01 01 31  	cmn	w10, #64
   80f90: 0a 02 00 54  	b.ge	0x80fd0 <_ZN44_$LT$$RF$T$u20$as$u20$core..fmt..Display$GT$3fmt17h3f94e73c8b157ba1E+0x17c>
   80f94: ea 03 1f aa  	mov	x10, xzr
   80f98: e9 03 1f aa  	mov	x9, xzr
   80f9c: 0e 00 00 14  	b	0x80fd4 <_ZN44_$LT$$RF$T$u20$as$u20$core..fmt..Display$GT$3fmt17h3f94e73c8b157ba1E+0x180>
   80fa0: 7f 01 0a eb  	cmp	x11, x10
   80fa4: ab 1d 00 12  	and	w11, w13, #0xff
   80fa8: 80 12 00 54  	b.eq	0x811f8 <_ZN44_$LT$$RF$T$u20$as$u20$core..fmt..Display$GT$3fmt17h3f94e73c8b157ba1E+0x3a4>
   80fac: 8e 05 40 39  	ldrb	w14, [x12, #1]
   80fb0: 8d 09 00 91  	add	x13, x12, #2
   80fb4: cc 15 00 12  	and	w12, w14, #0x3f
   80fb8: 8c 4d 14 53  	lsl	w12, w12, #12
   80fbc: 7f 81 03 71  	cmp	w11, #224
   80fc0: 42 12 00 54  	b.hs	0x81208 <_ZN44_$LT$$RF$T$u20$as$u20$core..fmt..Display$GT$3fmt17h3f94e73c8b157ba1E+0x3b4>
   80fc4: ee ff ff 17  	b	0x80f7c <_ZN44_$LT$$RF$T$u20$as$u20$core..fmt..Display$GT$3fmt17h3f94e73c8b157ba1E+0x128>
   80fc8: 3f 01 13 eb  	cmp	x9, x19
   80fcc: 41 fe ff 54  	b.ne	0x80f94 <_ZN44_$LT$$RF$T$u20$as$u20$core..fmt..Display$GT$3fmt17h3f94e73c8b157ba1E+0x140>
   80fd0: ea 03 14 aa  	mov	x10, x20
   80fd4: 5f 01 00 f1  	cmp	x10, #0
   80fd8: 94 02 8a 9a  	csel	x20, x20, x10, eq
   80fdc: 73 02 89 9a  	csel	x19, x19, x9, eq
   80fe0: 1f 05 00 f1  	cmp	x8, #1
   80fe4: a1 05 00 54  	b.ne	0x81098 <_ZN44_$LT$$RF$T$u20$as$u20$core..fmt..Display$GT$3fmt17h3f94e73c8b157ba1E+0x244>
   80fe8: d3 00 00 b4  	cbz	x19, 0x81000 <_ZN44_$LT$$RF$T$u20$as$u20$core..fmt..Display$GT$3fmt17h3f94e73c8b157ba1E+0x1ac>
   80fec: 7f 06 00 f1  	cmp	x19, #1
   80ff0: 01 01 00 54  	b.ne	0x81010 <_ZN44_$LT$$RF$T$u20$as$u20$core..fmt..Display$GT$3fmt17h3f94e73c8b157ba1E+0x1bc>
   80ff4: e9 03 1f aa  	mov	x9, xzr
   80ff8: e8 03 14 aa  	mov	x8, x20
   80ffc: 18 00 00 14  	b	0x8105c <_ZN44_$LT$$RF$T$u20$as$u20$core..fmt..Display$GT$3fmt17h3f94e73c8b157ba1E+0x208>
   81000: 28 04 40 f9  	ldr	x8, [x1, #8]
   81004: a8 04 00 b4  	cbz	x8, 0x81098 <_ZN44_$LT$$RF$T$u20$as$u20$core..fmt..Display$GT$3fmt17h3f94e73c8b157ba1E+0x244>
   81008: e9 03 1f aa  	mov	x9, xzr
   8100c: 46 00 00 14  	b	0x81124 <_ZN44_$LT$$RF$T$u20$as$u20$core..fmt..Display$GT$3fmt17h3f94e73c8b157ba1E+0x2d0>
   81010: 68 fa 7f 92  	and	x8, x19, #0xfffffffffffffffe
   81014: e9 03 1f aa  	mov	x9, xzr
   81018: ea 03 1f aa  	mov	x10, xzr
   8101c: 8b 06 00 91  	add	x11, x20, #1
   81020: ec 03 08 aa  	mov	x12, x8
   81024: 6d f1 5f 38  	ldurb	w13, [x11, #-1]
   81028: 6e 25 40 38  	ldrb	w14, [x11], #2
   8102c: ad 05 1a 12  	and	w13, w13, #0xc0
   81030: ce 05 1a 12  	and	w14, w14, #0xc0
   81034: bf 01 02 71  	cmp	w13, #128
   81038: 29 05 89 9a  	cinc	x9, x9, ne
   8103c: df 01 02 71  	cmp	w14, #128
   81040: 4a 05 8a 9a  	cinc	x10, x10, ne
   81044: 8c 09 00 f1  	subs	x12, x12, #2
   81048: e1 fe ff 54  	b.ne	0x81024 <_ZN44_$LT$$RF$T$u20$as$u20$core..fmt..Display$GT$3fmt17h3f94e73c8b157ba1E+0x1d0>
   8104c: 7f 02 08 eb  	cmp	x19, x8
   81050: 49 01 09 8b  	add	x9, x10, x9
   81054: 20 01 00 54  	b.eq	0x81078 <_ZN44_$LT$$RF$T$u20$as$u20$core..fmt..Display$GT$3fmt17h3f94e73c8b157ba1E+0x224>
   81058: 88 02 08 8b  	add	x8, x20, x8
   8105c: 8a 02 13 8b  	add	x10, x20, x19
   81060: 0b 15 40 38  	ldrb	w11, [x8], #1
   81064: 6b 05 1a 12  	and	w11, w11, #0xc0
   81068: 7f 01 02 71  	cmp	w11, #128
   8106c: 29 05 89 9a  	cinc	x9, x9, ne
   81070: 5f 01 08 eb  	cmp	x10, x8
   81074: 61 ff ff 54  	b.ne	0x81060 <_ZN44_$LT$$RF$T$u20$as$u20$core..fmt..Display$GT$3fmt17h3f94e73c8b157ba1E+0x20c>
   81078: 28 04 40 f9  	ldr	x8, [x1, #8]
   8107c: 3f 01 08 eb  	cmp	x9, x8
   81080: c2 00 00 54  	b.hs	0x81098 <_ZN44_$LT$$RF$T$u20$as$u20$core..fmt..Display$GT$3fmt17h3f94e73c8b157ba1E+0x244>
   81084: 7f 06 00 f1  	cmp	x19, #1
   81088: a8 01 00 54  	b.hi	0x810bc <_ZN44_$LT$$RF$T$u20$as$u20$core..fmt..Display$GT$3fmt17h3f94e73c8b157ba1E+0x268>
   8108c: e9 03 1f aa  	mov	x9, xzr
   81090: ea 03 14 aa  	mov	x10, x20
   81094: 1d 00 00 14  	b	0x81108 <_ZN44_$LT$$RF$T$u20$as$u20$core..fmt..Display$GT$3fmt17h3f94e73c8b157ba1E+0x2b4>
   81098: 20 20 42 a9  	ldp	x0, x8, [x1, #32]
   8109c: e1 03 14 aa  	mov	x1, x20
   810a0: e2 03 13 aa  	mov	x2, x19
   810a4: f4 4f 43 a9  	ldp	x20, x19, [sp, #48]
   810a8: 03 0d 40 f9  	ldr	x3, [x8, #24]
   810ac: f6 57 42 a9  	ldp	x22, x21, [sp, #32]
   810b0: f8 5f 41 a9  	ldp	x24, x23, [sp, #16]
   810b4: fe 67 c4 a8  	ldp	x30, x25, [sp], #64
   810b8: 60 00 1f d6  	br	x3
   810bc: 6a fa 7f 92  	and	x10, x19, #0xfffffffffffffffe
   810c0: e9 03 1f aa  	mov	x9, xzr
   810c4: eb 03 1f aa  	mov	x11, xzr
   810c8: 8c 06 00 91  	add	x12, x20, #1
   810cc: ed 03 0a aa  	mov	x13, x10
   810d0: 8e f1 5f 38  	ldurb	w14, [x12, #-1]
   810d4: 8f 25 40 38  	ldrb	w15, [x12], #2
   810d8: ce 05 1a 12  	and	w14, w14, #0xc0
   810dc: ef 05 1a 12  	and	w15, w15, #0xc0
   810e0: df 01 02 71  	cmp	w14, #128
   810e4: 29 05 89 9a  	cinc	x9, x9, ne
   810e8: ff 01 02 71  	cmp	w15, #128
   810ec: 6b 05 8b 9a  	cinc	x11, x11, ne
   810f0: ad 09 00 f1  	subs	x13, x13, #2
   810f4: e1 fe ff 54  	b.ne	0x810d0 <_ZN44_$LT$$RF$T$u20$as$u20$core..fmt..Display$GT$3fmt17h3f94e73c8b157ba1E+0x27c>
   810f8: 7f 02 0a eb  	cmp	x19, x10
   810fc: 69 01 09 8b  	add	x9, x11, x9
   81100: 20 01 00 54  	b.eq	0x81124 <_ZN44_$LT$$RF$T$u20$as$u20$core..fmt..Display$GT$3fmt17h3f94e73c8b157ba1E+0x2d0>
   81104: 8a 02 0a 8b  	add	x10, x20, x10
   81108: 8b 02 13 8b  	add	x11, x20, x19
   8110c: 4c 15 40 38  	ldrb	w12, [x10], #1
   81110: 8c 05 1a 12  	and	w12, w12, #0xc0
   81114: 9f 01 02 71  	cmp	w12, #128
   81118: 29 05 89 9a  	cinc	x9, x9, ne
   8111c: 7f 01 0a eb  	cmp	x11, x10
   81120: 61 ff ff 54  	b.ne	0x8110c <_ZN44_$LT$$RF$T$u20$as$u20$core..fmt..Display$GT$3fmt17h3f94e73c8b157ba1E+0x2b8>
   81124: 2a e0 40 39  	ldrb	w10, [x1, #56]
   81128: 08 01 09 cb  	sub	x8, x8, x9
   8112c: 5f 0d 00 71  	cmp	w10, #3
   81130: ea 03 8a 1a  	csel	w10, wzr, w10, eq
   81134: 4a 05 00 72  	ands	w10, w10, #0x3
   81138: a0 00 00 54  	b.eq	0x8114c <_ZN44_$LT$$RF$T$u20$as$u20$core..fmt..Display$GT$3fmt17h3f94e73c8b157ba1E+0x2f8>
   8113c: 5f 05 00 71  	cmp	w10, #1
   81140: c1 00 00 54  	b.ne	0x81158 <_ZN44_$LT$$RF$T$u20$as$u20$core..fmt..Display$GT$3fmt17h3f94e73c8b157ba1E+0x304>
   81144: f8 03 1f aa  	mov	x24, xzr
   81148: 07 00 00 14  	b	0x81164 <_ZN44_$LT$$RF$T$u20$as$u20$core..fmt..Display$GT$3fmt17h3f94e73c8b157ba1E+0x310>
   8114c: f8 03 08 aa  	mov	x24, x8
   81150: e8 03 1f aa  	mov	x8, xzr
   81154: 04 00 00 14  	b	0x81164 <_ZN44_$LT$$RF$T$u20$as$u20$core..fmt..Display$GT$3fmt17h3f94e73c8b157ba1E+0x310>
   81158: 09 05 00 91  	add	x9, x8, #1
   8115c: 08 fd 41 d3  	lsr	x8, x8, #1
   81160: 38 fd 41 d3  	lsr	x24, x9, #1
   81164: 35 5c 42 a9  	ldp	x21, x23, [x1, #32]
   81168: 36 34 40 b9  	ldr	w22, [x1, #52]
   8116c: 19 05 00 91  	add	x25, x8, #1
   81170: 39 07 00 f1  	subs	x25, x25, #1
   81174: e0 00 00 54  	b.eq	0x81190 <_ZN44_$LT$$RF$T$u20$as$u20$core..fmt..Display$GT$3fmt17h3f94e73c8b157ba1E+0x33c>
   81178: e8 12 40 f9  	ldr	x8, [x23, #32]
   8117c: e0 03 15 aa  	mov	x0, x21
   81180: e1 03 16 2a  	mov	w1, w22
   81184: 00 01 3f d6  	blr	x8
   81188: 40 ff 07 36  	tbz	w0, #0, 0x81170 <_ZN44_$LT$$RF$T$u20$as$u20$core..fmt..Display$GT$3fmt17h3f94e73c8b157ba1E+0x31c>
   8118c: 0a 00 00 14  	b	0x811b4 <_ZN44_$LT$$RF$T$u20$as$u20$core..fmt..Display$GT$3fmt17h3f94e73c8b157ba1E+0x360>
   81190: df 42 44 71  	cmp	w22, #272, lsl #12
   81194: f8 03 98 9a  	csel	x24, xzr, x24, eq
   81198: e0 00 00 54  	b.eq	0x811b4 <_ZN44_$LT$$RF$T$u20$as$u20$core..fmt..Display$GT$3fmt17h3f94e73c8b157ba1E+0x360>
   8119c: e8 0e 40 f9  	ldr	x8, [x23, #24]
   811a0: e0 03 15 aa  	mov	x0, x21
   811a4: e1 03 14 aa  	mov	x1, x20
   811a8: e2 03 13 aa  	mov	x2, x19
   811ac: 00 01 3f d6  	blr	x8
   811b0: e0 00 00 36  	tbz	w0, #0, 0x811cc <_ZN44_$LT$$RF$T$u20$as$u20$core..fmt..Display$GT$3fmt17h3f94e73c8b157ba1E+0x378>
   811b4: 20 00 80 52  	mov	w0, #1
   811b8: f4 4f 43 a9  	ldp	x20, x19, [sp, #48]
   811bc: f6 57 42 a9  	ldp	x22, x21, [sp, #32]
   811c0: f8 5f 41 a9  	ldp	x24, x23, [sp, #16]
   811c4: fe 67 c4 a8  	ldp	x30, x25, [sp], #64
   811c8: c0 03 5f d6  	ret
   811cc: f3 03 1f aa  	mov	x19, xzr
   811d0: 1f 03 13 eb  	cmp	x24, x19
   811d4: a0 02 00 54  	b.eq	0x81228 <_ZN44_$LT$$RF$T$u20$as$u20$core..fmt..Display$GT$3fmt17h3f94e73c8b157ba1E+0x3d4>
   811d8: e8 12 40 f9  	ldr	x8, [x23, #32]
   811dc: e0 03 15 aa  	mov	x0, x21
   811e0: e1 03 16 2a  	mov	w1, w22
   811e4: 73 06 00 91  	add	x19, x19, #1
   811e8: 00 01 3f d6  	blr	x8
   811ec: 20 ff ff 34  	cbz	w0, 0x811d0 <_ZN44_$LT$$RF$T$u20$as$u20$core..fmt..Display$GT$3fmt17h3f94e73c8b157ba1E+0x37c>
   811f0: 68 06 00 d1  	sub	x8, x19, #1
   811f4: 0e 00 00 14  	b	0x8122c <_ZN44_$LT$$RF$T$u20$as$u20$core..fmt..Display$GT$3fmt17h3f94e73c8b157ba1E+0x3d8>
   811f8: ec 03 1f 2a  	mov	w12, wzr
   811fc: ed 03 0a aa  	mov	x13, x10
   81200: 7f 81 03 71  	cmp	w11, #224
   81204: c3 eb ff 54  	b.lo	0x80f7c <_ZN44_$LT$$RF$T$u20$as$u20$core..fmt..Display$GT$3fmt17h3f94e73c8b157ba1E+0x128>
   81208: bf 01 0a eb  	cmp	x13, x10
   8120c: 60 01 00 54  	b.eq	0x81238 <_ZN44_$LT$$RF$T$u20$as$u20$core..fmt..Display$GT$3fmt17h3f94e73c8b157ba1E+0x3e4>
   81210: ae 15 40 38  	ldrb	w14, [x13], #1
   81214: ce 15 00 12  	and	w14, w14, #0x3f
   81218: ce 65 1a 53  	lsl	w14, w14, #6
   8121c: 7f c1 03 71  	cmp	w11, #240
   81220: 42 01 00 54  	b.hs	0x81248 <_ZN44_$LT$$RF$T$u20$as$u20$core..fmt..Display$GT$3fmt17h3f94e73c8b157ba1E+0x3f4>
   81224: 56 ff ff 17  	b	0x80f7c <_ZN44_$LT$$RF$T$u20$as$u20$core..fmt..Display$GT$3fmt17h3f94e73c8b157ba1E+0x128>
   81228: e8 03 18 aa  	mov	x8, x24
   8122c: 1f 01 18 eb  	cmp	x8, x24
   81230: e0 27 9f 1a  	cset	w0, lo
   81234: e1 ff ff 17  	b	0x811b8 <_ZN44_$LT$$RF$T$u20$as$u20$core..fmt..Display$GT$3fmt17h3f94e73c8b157ba1E+0x364>
   81238: ee 03 1f 2a  	mov	w14, wzr
   8123c: ed 03 0a aa  	mov	x13, x10
   81240: 7f c1 03 71  	cmp	w11, #240
   81244: c3 e9 ff 54  	b.lo	0x80f7c <_ZN44_$LT$$RF$T$u20$as$u20$core..fmt..Display$GT$3fmt17h3f94e73c8b157ba1E+0x128>
   81248: bf 01 0a eb  	cmp	x13, x10
   8124c: 80 00 00 54  	b.eq	0x8125c <_ZN44_$LT$$RF$T$u20$as$u20$core..fmt..Display$GT$3fmt17h3f94e73c8b157ba1E+0x408>
   81250: aa 01 40 39  	ldrb	w10, [x13]
   81254: 4a 15 00 12  	and	w10, w10, #0x3f
   81258: 02 00 00 14  	b	0x81260 <_ZN44_$LT$$RF$T$u20$as$u20$core..fmt..Display$GT$3fmt17h3f94e73c8b157ba1E+0x40c>
   8125c: ea 03 1f 2a  	mov	w10, wzr
   81260: 6c 09 0e 33  	bfi	w12, w11, #18, #3
   81264: 8b 01 0e 2a  	orr	w11, w12, w14
   81268: 6a 01 0a 2a  	orr	w10, w11, w10
   8126c: 5f 41 44 71  	cmp	w10, #272, lsl #12
   81270: 80 eb ff 54  	b.eq	0x80fe0 <_ZN44_$LT$$RF$T$u20$as$u20$core..fmt..Display$GT$3fmt17h3f94e73c8b157ba1E+0x18c>
   81274: 42 ff ff 17  	b	0x80f7c <_ZN44_$LT$$RF$T$u20$as$u20$core..fmt..Display$GT$3fmt17h3f94e73c8b157ba1E+0x128>

0000000000081278 <_ZN42_$LT$$RF$T$u20$as$u20$core..fmt..Debug$GT$3fmt17h4b8fb327fe2e6f34E>:
   81278: 00 20 40 a9  	ldp	x0, x8, [x0]
   8127c: 02 0d 40 f9  	ldr	x2, [x8, #24]
   81280: 40 00 1f d6  	br	x2

0000000000081284 <_ZN4core3fmt5write17h4089dd81629a8d2eE>:
   81284: ff 43 02 d1  	sub	sp, sp, #144
   81288: fe 23 00 f9  	str	x30, [sp, #64]
   8128c: fa 67 05 a9  	stp	x26, x25, [sp, #80]
   81290: f8 5f 06 a9  	stp	x24, x23, [sp, #96]
   81294: f6 57 07 a9  	stp	x22, x21, [sp, #112]
   81298: f4 4f 08 a9  	stp	x20, x19, [sp, #128]
   8129c: 48 08 40 f9  	ldr	x8, [x2, #16]
   812a0: f3 03 02 aa  	mov	x19, x2
   812a4: 09 04 c0 d2  	mov	x9, #137438953472
   812a8: 6a 00 80 52  	mov	w10, #3
   812ac: e1 a7 02 a9  	stp	x1, x9, [sp, #40]
   812b0: ea e3 00 39  	strb	w10, [sp, #56]
   812b4: ff 03 00 f9  	str	xzr, [sp]
   812b8: ff 0b 00 f9  	str	xzr, [sp, #16]
   812bc: e0 13 00 f9  	str	x0, [sp, #32]
   812c0: c8 08 00 b4  	cbz	x8, 0x813d8 <_ZN4core3fmt5write17h4089dd81629a8d2eE+0x154>
   812c4: 69 0e 40 f9  	ldr	x9, [x19, #24]
   812c8: 74 56 40 a9  	ldp	x20, x21, [x19]
   812cc: 3f 01 15 eb  	cmp	x9, x21
   812d0: b6 82 89 9a  	csel	x22, x21, x9, hi
   812d4: 36 0b 00 b4  	cbz	x22, 0x81438 <_ZN4core3fmt5write17h4089dd81629a8d2eE+0x1b4>
   812d8: f9 ff ff f0  	adrp	x25, 0x80000 <_ZN4core3fmt5write17h4089dd81629a8d2eE+0x50>
   812dc: f7 03 1f aa  	mov	x23, xzr
   812e0: 18 c1 00 91  	add	x24, x8, #48
   812e4: 39 53 21 91  	add	x25, x25, #2132
   812e8: fa 03 16 aa  	mov	x26, x22
   812ec: 88 02 17 8b  	add	x8, x20, x23
   812f0: 02 05 40 f9  	ldr	x2, [x8, #8]
   812f4: c2 00 00 b4  	cbz	x2, 0x8130c <_ZN4core3fmt5write17h4089dd81629a8d2eE+0x88>
   812f8: e0 23 42 a9  	ldp	x0, x8, [sp, #32]
   812fc: 81 6a 77 f8  	ldr	x1, [x20, x23]
   81300: 08 0d 40 f9  	ldr	x8, [x8, #24]
   81304: 00 01 3f d6  	blr	x8
   81308: 80 0a 00 37  	tbnz	w0, #0, 0x81458 <_ZN4core3fmt5write17h4089dd81629a8d2eE+0x1d4>
   8130c: 08 83 5f b8  	ldur	w8, [x24, #-8]
   81310: e8 37 00 b9  	str	w8, [sp, #52]
   81314: 08 03 40 39  	ldrb	w8, [x24]
   81318: e8 e3 00 39  	strb	w8, [sp, #56]
   8131c: 09 c3 5f b8  	ldur	w9, [x24, #-4]
   81320: 68 12 40 f9  	ldr	x8, [x19, #32]
   81324: e9 33 00 b9  	str	w9, [sp, #48]
   81328: 0a a7 7e a9  	ldp	x10, x9, [x24, #-24]
   8132c: ea 01 00 b4  	cbz	x10, 0x81368 <_ZN4core3fmt5write17h4089dd81629a8d2eE+0xe4>
   81330: 5f 05 00 f1  	cmp	x10, #1
   81334: a1 00 00 54  	b.ne	0x81348 <_ZN4core3fmt5write17h4089dd81629a8d2eE+0xc4>
   81338: 0a 11 09 8b  	add	x10, x8, x9, lsl #4
   8133c: 4a 05 40 f9  	ldr	x10, [x10, #8]
   81340: 5f 01 19 eb  	cmp	x10, x25
   81344: c0 00 00 54  	b.eq	0x8135c <_ZN4core3fmt5write17h4089dd81629a8d2eE+0xd8>
   81348: ea 03 1f aa  	mov	x10, xzr
   8134c: ea 27 00 a9  	stp	x10, x9, [sp]
   81350: 0a a7 7d a9  	ldp	x10, x9, [x24, #-40]
   81354: 2a 01 00 b5  	cbnz	x10, 0x81378 <_ZN4core3fmt5write17h4089dd81629a8d2eE+0xf4>
   81358: 13 00 00 14  	b	0x813a4 <_ZN4core3fmt5write17h4089dd81629a8d2eE+0x120>
   8135c: 29 ed 7c d3  	lsl	x9, x9, #4
   81360: 09 69 69 f8  	ldr	x9, [x8, x9]
   81364: 29 01 40 f9  	ldr	x9, [x9]
   81368: 2a 00 80 52  	mov	w10, #1
   8136c: ea 27 00 a9  	stp	x10, x9, [sp]
   81370: 0a a7 7d a9  	ldp	x10, x9, [x24, #-40]
   81374: 8a 01 00 b4  	cbz	x10, 0x813a4 <_ZN4core3fmt5write17h4089dd81629a8d2eE+0x120>
   81378: 5f 05 00 f1  	cmp	x10, #1
   8137c: a1 00 00 54  	b.ne	0x81390 <_ZN4core3fmt5write17h4089dd81629a8d2eE+0x10c>
   81380: 0a 11 09 8b  	add	x10, x8, x9, lsl #4
   81384: 4a 05 40 f9  	ldr	x10, [x10, #8]
   81388: 5f 01 19 eb  	cmp	x10, x25
   8138c: 60 00 00 54  	b.eq	0x81398 <_ZN4core3fmt5write17h4089dd81629a8d2eE+0x114>
   81390: ea 03 1f aa  	mov	x10, xzr
   81394: 05 00 00 14  	b	0x813a8 <_ZN4core3fmt5write17h4089dd81629a8d2eE+0x124>
   81398: 29 ed 7c d3  	lsl	x9, x9, #4
   8139c: 09 69 69 f8  	ldr	x9, [x8, x9]
   813a0: 29 01 40 f9  	ldr	x9, [x9]
   813a4: 2a 00 80 52  	mov	w10, #1
   813a8: ea 27 01 a9  	stp	x10, x9, [sp, #16]
   813ac: 09 03 5d f8  	ldur	x9, [x24, #-48]
   813b0: e1 03 00 91  	mov	x1, sp
   813b4: 08 11 09 8b  	add	x8, x8, x9, lsl #4
   813b8: 00 25 40 a9  	ldp	x0, x9, [x8]
   813bc: 20 01 3f d6  	blr	x9
   813c0: c0 04 00 37  	tbnz	w0, #0, 0x81458 <_ZN4core3fmt5write17h4089dd81629a8d2eE+0x1d4>
   813c4: 5a 07 00 f1  	subs	x26, x26, #1
   813c8: 18 e3 00 91  	add	x24, x24, #56
   813cc: f7 42 00 91  	add	x23, x23, #16
   813d0: e1 f8 ff 54  	b.ne	0x812ec <_ZN4core3fmt5write17h4089dd81629a8d2eE+0x68>
   813d4: 19 00 00 14  	b	0x81438 <_ZN4core3fmt5write17h4089dd81629a8d2eE+0x1b4>
   813d8: 68 16 40 f9  	ldr	x8, [x19, #40]
   813dc: 74 56 40 a9  	ldp	x20, x21, [x19]
   813e0: 1f 01 15 eb  	cmp	x8, x21
   813e4: b6 82 88 9a  	csel	x22, x21, x8, hi
   813e8: 96 02 00 b4  	cbz	x22, 0x81438 <_ZN4core3fmt5write17h4089dd81629a8d2eE+0x1b4>
   813ec: 73 12 40 f9  	ldr	x19, [x19, #32]
   813f0: f7 03 1f aa  	mov	x23, xzr
   813f4: f8 03 16 aa  	mov	x24, x22
   813f8: 88 02 17 8b  	add	x8, x20, x23
   813fc: 02 05 40 f9  	ldr	x2, [x8, #8]
   81400: c2 00 00 b4  	cbz	x2, 0x81418 <_ZN4core3fmt5write17h4089dd81629a8d2eE+0x194>
   81404: e0 23 42 a9  	ldp	x0, x8, [sp, #32]
   81408: 81 6a 77 f8  	ldr	x1, [x20, x23]
   8140c: 08 0d 40 f9  	ldr	x8, [x8, #24]
   81410: 00 01 3f d6  	blr	x8
   81414: 20 02 00 37  	tbnz	w0, #0, 0x81458 <_ZN4core3fmt5write17h4089dd81629a8d2eE+0x1d4>
   81418: 68 02 17 8b  	add	x8, x19, x23
   8141c: 00 25 40 a9  	ldp	x0, x9, [x8]
   81420: e1 03 00 91  	mov	x1, sp
   81424: 20 01 3f d6  	blr	x9
   81428: 80 01 00 37  	tbnz	w0, #0, 0x81458 <_ZN4core3fmt5write17h4089dd81629a8d2eE+0x1d4>
   8142c: 18 07 00 f1  	subs	x24, x24, #1
   81430: f7 42 00 91  	add	x23, x23, #16
   81434: 21 fe ff 54  	b.ne	0x813f8 <_ZN4core3fmt5write17h4089dd81629a8d2eE+0x174>
   81438: df 02 15 eb  	cmp	x22, x21
   8143c: 22 01 00 54  	b.hs	0x81460 <_ZN4core3fmt5write17h4089dd81629a8d2eE+0x1dc>
   81440: e0 23 42 a9  	ldp	x0, x8, [sp, #32]
   81444: 89 12 16 8b  	add	x9, x20, x22, lsl #4
   81448: 21 09 40 a9  	ldp	x1, x2, [x9]
   8144c: 08 0d 40 f9  	ldr	x8, [x8, #24]
   81450: 00 01 3f d6  	blr	x8
   81454: 60 00 00 36  	tbz	w0, #0, 0x81460 <_ZN4core3fmt5write17h4089dd81629a8d2eE+0x1dc>
   81458: 20 00 80 52  	mov	w0, #1
   8145c: 02 00 00 14  	b	0x81464 <_ZN4core3fmt5write17h4089dd81629a8d2eE+0x1e0>
   81460: e0 03 1f 2a  	mov	w0, wzr
   81464: f4 4f 48 a9  	ldp	x20, x19, [sp, #128]
   81468: f6 57 47 a9  	ldp	x22, x21, [sp, #112]
   8146c: f8 5f 46 a9  	ldp	x24, x23, [sp, #96]
   81470: fa 67 45 a9  	ldp	x26, x25, [sp, #80]
   81474: fe 23 40 f9  	ldr	x30, [sp, #64]
   81478: ff 43 02 91  	add	sp, sp, #144
   8147c: c0 03 5f d6  	ret

0000000000081480 <_ZN4core5slice5index22slice_index_order_fail17he71d7140076fff6eE>:
   81480: e0 07 ba a9  	stp	x0, x1, [sp, #-96]!
   81484: e9 ff ff f0  	adrp	x9, 0x80000 <_ZN4core5slice5index22slice_index_order_fail17he71d7140076fff6eE>
   81488: e8 03 00 91  	mov	x8, sp
   8148c: 29 91 22 91  	add	x9, x9, #2212
   81490: 0b 00 00 d0  	adrp	x11, 0x83000 <_ZN4core5slice5index22slice_index_order_fail17he71d7140076fff6eE+0x18>
   81494: ea 23 00 91  	add	x10, sp, #8
   81498: 6b 61 1d 91  	add	x11, x11, #1880
   8149c: 4c 00 80 52  	mov	w12, #2
   814a0: e8 27 04 a9  	stp	x8, x9, [sp, #64]
   814a4: e8 03 01 91  	add	x8, sp, #64
   814a8: e0 43 00 91  	add	x0, sp, #16
   814ac: e1 03 02 aa  	mov	x1, x2
   814b0: ff 7f 02 a9  	stp	xzr, xzr, [sp, #32]
   814b4: ea 27 05 a9  	stp	x10, x9, [sp, #80]
   814b8: eb 33 01 a9  	stp	x11, x12, [sp, #16]
   814bc: e8 33 03 a9  	stp	x8, x12, [sp, #48]
   814c0: 56 fd ff 97  	bl	0x80a18 <_ZN4core9panicking9panic_fmt17h548b34a47a4ac578E>
   814c4: 20 00 20 d4  	brk	#0x1

00000000000814c8 <_ZN4core6result13unwrap_failed17h514395d9b84745f5E>:
   814c8: 08 00 00 d0  	adrp	x8, 0x83000 <_ZN4core6result13unwrap_failed17h514395d9b84745f5E+0x8>
   814cc: 08 c1 10 91  	add	x8, x8, #1072
   814d0: 69 05 80 52  	mov	w9, #43
   814d4: 0a 00 00 d0  	adrp	x10, 0x83000 <_ZN4core6result13unwrap_failed17h514395d9b84745f5E+0x14>
   814d8: e8 27 b9 a9  	stp	x8, x9, [sp, #-112]!
   814dc: 08 00 00 90  	adrp	x8, 0x81000 <_ZN4core6result13unwrap_failed17h514395d9b84745f5E+0x14>
   814e0: 4a 81 11 91  	add	x10, x10, #1120
   814e4: ec ff ff f0  	adrp	x12, 0x80000 <_ZN4core6result13unwrap_failed17h514395d9b84745f5E+0x18>
   814e8: ed 43 00 91  	add	x13, sp, #16
   814ec: 08 e1 09 91  	add	x8, x8, #632
   814f0: 09 00 00 d0  	adrp	x9, 0x83000 <_ZN4core6result13unwrap_failed17h514395d9b84745f5E+0x30>
   814f4: eb 03 00 91  	mov	x11, sp
   814f8: 8c 51 39 91  	add	x12, x12, #3668
   814fc: e0 2b 01 a9  	stp	x0, x10, [sp, #16]
   81500: 29 01 1f 91  	add	x9, x9, #1984
   81504: 4a 00 80 52  	mov	w10, #2
   81508: ed 23 06 a9  	stp	x13, x8, [sp, #96]
   8150c: e8 43 01 91  	add	x8, sp, #80
   81510: e0 83 00 91  	add	x0, sp, #32
   81514: eb 33 05 a9  	stp	x11, x12, [sp, #80]
   81518: ff 7f 03 a9  	stp	xzr, xzr, [sp, #48]
   8151c: e9 2b 02 a9  	stp	x9, x10, [sp, #32]
   81520: e8 2b 04 a9  	stp	x8, x10, [sp, #64]
   81524: 3d fd ff 97  	bl	0x80a18 <_ZN4core9panicking9panic_fmt17h548b34a47a4ac578E>
   81528: 20 00 20 d4  	brk	#0x1

000000000008152c <_ZN68_$LT$core..fmt..builders..PadAdapter$u20$as$u20$core..fmt..Write$GT$9write_str17h006d11991b68be72E>:
   8152c: fe 6f bb a9  	stp	x30, x27, [sp, #-80]!
   81530: fa 67 01 a9  	stp	x26, x25, [sp, #16]
   81534: f8 5f 02 a9  	stp	x24, x23, [sp, #32]
   81538: f6 57 03 a9  	stp	x22, x21, [sp, #48]
   8153c: f4 4f 04 a9  	stp	x20, x19, [sp, #64]
   81540: 42 11 00 b4  	cbz	x2, 0x81768 <_ZN68_$LT$core..fmt..builders..PadAdapter$u20$as$u20$core..fmt..Write$GT$9write_str17h006d11991b68be72E+0x23c>
   81544: 19 e0 40 a9  	ldp	x25, x24, [x0, #8]
   81548: 15 00 40 f9  	ldr	x21, [x0]
   8154c: 5b 41 81 d2  	mov	x27, #2570
   81550: 5b 41 a1 f2  	movk	x27, #2570, lsl #16
   81554: fa db 07 b2  	mov	x26, #-72340172838076674
   81558: 5b 41 c1 f2  	movk	x27, #2570, lsl #32
   8155c: 16 00 00 d0  	adrp	x22, 0x83000 <_ZN68_$LT$core..fmt..builders..PadAdapter$u20$as$u20$core..fmt..Write$GT$9write_str17h006d11991b68be72E+0x38>
   81560: f3 03 02 aa  	mov	x19, x2
   81564: f4 03 01 aa  	mov	x20, x1
   81568: fa df 9f f2  	movk	x26, #65279
   8156c: 5b 41 e1 f2  	movk	x27, #2570, lsl #48
   81570: d6 8a 1f 91  	add	x22, x22, #2018
   81574: 04 00 00 14  	b	0x81584 <_ZN68_$LT$core..fmt..builders..PadAdapter$u20$as$u20$core..fmt..Write$GT$9write_str17h006d11991b68be72E+0x58>
   81578: 73 02 17 eb  	subs	x19, x19, x23
   8157c: 94 02 17 8b  	add	x20, x20, x23
   81580: 40 0f 00 54  	b.eq	0x81768 <_ZN68_$LT$core..fmt..builders..PadAdapter$u20$as$u20$core..fmt..Write$GT$9write_str17h006d11991b68be72E+0x23c>
   81584: 08 03 40 39  	ldrb	w8, [x24]
   81588: e8 00 00 34  	cbz	w8, 0x815a4 <_ZN68_$LT$core..fmt..builders..PadAdapter$u20$as$u20$core..fmt..Write$GT$9write_str17h006d11991b68be72E+0x78>
   8158c: 28 0f 40 f9  	ldr	x8, [x25, #24]
   81590: 82 00 80 52  	mov	w2, #4
   81594: e0 03 15 aa  	mov	x0, x21
   81598: e1 03 16 aa  	mov	x1, x22
   8159c: 00 01 3f d6  	blr	x8
   815a0: 80 0e 00 37  	tbnz	w0, #0, 0x81770 <_ZN68_$LT$core..fmt..builders..PadAdapter$u20$as$u20$core..fmt..Write$GT$9write_str17h006d11991b68be72E+0x244>
   815a4: f7 03 1f aa  	mov	x23, xzr
   815a8: e1 03 13 aa  	mov	x1, x19
   815ac: 05 00 00 14  	b	0x815c0 <_ZN68_$LT$core..fmt..builders..PadAdapter$u20$as$u20$core..fmt..Write$GT$9write_str17h006d11991b68be72E+0x94>
   815b0: 68 02 17 eb  	subs	x8, x19, x23
   815b4: e1 33 88 9a  	csel	x1, xzr, x8, lo
   815b8: ff 02 13 eb  	cmp	x23, x19
   815bc: 48 0a 00 54  	b.hi	0x81704 <_ZN68_$LT$core..fmt..builders..PadAdapter$u20$as$u20$core..fmt..Write$GT$9write_str17h006d11991b68be72E+0x1d8>
   815c0: 28 40 00 f1  	subs	x8, x1, #16
   815c4: 62 01 00 54  	b.hs	0x815f0 <_ZN68_$LT$core..fmt..builders..PadAdapter$u20$as$u20$core..fmt..Write$GT$9write_str17h006d11991b68be72E+0xc4>
   815c8: e1 09 00 b4  	cbz	x1, 0x81704 <_ZN68_$LT$core..fmt..builders..PadAdapter$u20$as$u20$core..fmt..Write$GT$9write_str17h006d11991b68be72E+0x1d8>
   815cc: e9 03 1f aa  	mov	x9, xzr
   815d0: 88 02 17 8b  	add	x8, x20, x23
   815d4: 0a 69 69 38  	ldrb	w10, [x8, x9]
   815d8: 5f 29 00 71  	cmp	w10, #10
   815dc: e0 06 00 54  	b.eq	0x816b8 <_ZN68_$LT$core..fmt..builders..PadAdapter$u20$as$u20$core..fmt..Write$GT$9write_str17h006d11991b68be72E+0x18c>
   815e0: 29 05 00 91  	add	x9, x9, #1
   815e4: 3f 00 09 eb  	cmp	x1, x9
   815e8: 61 ff ff 54  	b.ne	0x815d4 <_ZN68_$LT$core..fmt..builders..PadAdapter$u20$as$u20$core..fmt..Write$GT$9write_str17h006d11991b68be72E+0xa8>
   815ec: 46 00 00 14  	b	0x81704 <_ZN68_$LT$core..fmt..builders..PadAdapter$u20$as$u20$core..fmt..Write$GT$9write_str17h006d11991b68be72E+0x1d8>
   815f0: 89 02 17 8b  	add	x9, x20, x23
   815f4: 2a 1d 00 91  	add	x10, x9, #7
   815f8: 4a f1 7d 92  	and	x10, x10, #0xfffffffffffffff8
   815fc: 4a 01 09 eb  	subs	x10, x10, x9
   81600: c0 01 00 54  	b.eq	0x81638 <_ZN68_$LT$core..fmt..builders..PadAdapter$u20$as$u20$core..fmt..Write$GT$9write_str17h006d11991b68be72E+0x10c>
   81604: 5f 01 01 eb  	cmp	x10, x1
   81608: e9 03 1f aa  	mov	x9, xzr
   8160c: 20 80 8a 9a  	csel	x0, x1, x10, hi
   81610: 8a 02 17 8b  	add	x10, x20, x23
   81614: 4b 69 69 38  	ldrb	w11, [x10, x9]
   81618: 7f 29 00 71  	cmp	w11, #10
   8161c: e0 04 00 54  	b.eq	0x816b8 <_ZN68_$LT$core..fmt..builders..PadAdapter$u20$as$u20$core..fmt..Write$GT$9write_str17h006d11991b68be72E+0x18c>
   81620: 29 05 00 91  	add	x9, x9, #1
   81624: 1f 00 09 eb  	cmp	x0, x9
   81628: 61 ff ff 54  	b.ne	0x81614 <_ZN68_$LT$core..fmt..builders..PadAdapter$u20$as$u20$core..fmt..Write$GT$9write_str17h006d11991b68be72E+0xe8>
   8162c: 1f 00 08 eb  	cmp	x0, x8
   81630: 69 00 00 54  	b.ls	0x8163c <_ZN68_$LT$core..fmt..builders..PadAdapter$u20$as$u20$core..fmt..Write$GT$9write_str17h006d11991b68be72E+0x110>
   81634: 13 00 00 14  	b	0x81680 <_ZN68_$LT$core..fmt..builders..PadAdapter$u20$as$u20$core..fmt..Write$GT$9write_str17h006d11991b68be72E+0x154>
   81638: e0 03 1f aa  	mov	x0, xzr
   8163c: 89 02 17 8b  	add	x9, x20, x23
   81640: 2a 01 00 8b  	add	x10, x9, x0
   81644: 4b 29 40 a9  	ldp	x11, x10, [x10]
   81648: 6c 01 1b ca  	eor	x12, x11, x27
   8164c: 4d 01 1b ca  	eor	x13, x10, x27
   81650: 8c 01 1a 8b  	add	x12, x12, x26
   81654: ad 01 1a 8b  	add	x13, x13, x26
   81658: 8b 01 2b 8a  	bic	x11, x12, x11
   8165c: aa 01 2a 8a  	bic	x10, x13, x10
   81660: 4a 01 0b aa  	orr	x10, x10, x11
   81664: 5f c1 01 f2  	tst	x10, #0x8080808080808080
   81668: 81 00 00 54  	b.ne	0x81678 <_ZN68_$LT$core..fmt..builders..PadAdapter$u20$as$u20$core..fmt..Write$GT$9write_str17h006d11991b68be72E+0x14c>
   8166c: 00 40 00 91  	add	x0, x0, #16
   81670: 1f 00 08 eb  	cmp	x0, x8
   81674: 69 fe ff 54  	b.ls	0x81640 <_ZN68_$LT$core..fmt..builders..PadAdapter$u20$as$u20$core..fmt..Write$GT$9write_str17h006d11991b68be72E+0x114>
   81678: 1f 00 01 eb  	cmp	x0, x1
   8167c: 88 09 00 54  	b.hi	0x817ac <_ZN68_$LT$core..fmt..builders..PadAdapter$u20$as$u20$core..fmt..Write$GT$9write_str17h006d11991b68be72E+0x280>
   81680: 1f 00 01 eb  	cmp	x0, x1
   81684: 00 04 00 54  	b.eq	0x81704 <_ZN68_$LT$core..fmt..builders..PadAdapter$u20$as$u20$core..fmt..Write$GT$9write_str17h006d11991b68be72E+0x1d8>
   81688: 09 00 17 8b  	add	x9, x0, x23
   8168c: e8 03 1f aa  	mov	x8, xzr
   81690: 89 02 09 8b  	add	x9, x20, x9
   81694: 2a 00 00 cb  	sub	x10, x1, x0
   81698: 2b 69 68 38  	ldrb	w11, [x9, x8]
   8169c: 7f 29 00 71  	cmp	w11, #10
   816a0: a0 00 00 54  	b.eq	0x816b4 <_ZN68_$LT$core..fmt..builders..PadAdapter$u20$as$u20$core..fmt..Write$GT$9write_str17h006d11991b68be72E+0x188>
   816a4: 08 05 00 91  	add	x8, x8, #1
   816a8: 5f 01 08 eb  	cmp	x10, x8
   816ac: 61 ff ff 54  	b.ne	0x81698 <_ZN68_$LT$core..fmt..builders..PadAdapter$u20$as$u20$core..fmt..Write$GT$9write_str17h006d11991b68be72E+0x16c>
   816b0: 15 00 00 14  	b	0x81704 <_ZN68_$LT$core..fmt..builders..PadAdapter$u20$as$u20$core..fmt..Write$GT$9write_str17h006d11991b68be72E+0x1d8>
   816b4: 09 00 08 8b  	add	x9, x0, x8
   816b8: 28 01 17 8b  	add	x8, x9, x23
   816bc: 1f 01 13 eb  	cmp	x8, x19
   816c0: 17 05 00 91  	add	x23, x8, #1
   816c4: 62 f7 ff 54  	b.hs	0x815b0 <_ZN68_$LT$core..fmt..builders..PadAdapter$u20$as$u20$core..fmt..Write$GT$9write_str17h006d11991b68be72E+0x84>
   816c8: 88 6a 68 38  	ldrb	w8, [x20, x8]
   816cc: 1f 29 00 71  	cmp	w8, #10
   816d0: 01 f7 ff 54  	b.ne	0x815b0 <_ZN68_$LT$core..fmt..builders..PadAdapter$u20$as$u20$core..fmt..Write$GT$9write_str17h006d11991b68be72E+0x84>
   816d4: 28 00 80 52  	mov	w8, #1
   816d8: 7f 02 17 eb  	cmp	x19, x23
   816dc: 08 03 00 39  	strb	w8, [x24]
   816e0: c8 01 00 54  	b.hi	0x81718 <_ZN68_$LT$core..fmt..builders..PadAdapter$u20$as$u20$core..fmt..Write$GT$9write_str17h006d11991b68be72E+0x1ec>
   816e4: 41 05 00 54  	b.ne	0x8178c <_ZN68_$LT$core..fmt..builders..PadAdapter$u20$as$u20$core..fmt..Write$GT$9write_str17h006d11991b68be72E+0x260>
   816e8: 28 0f 40 f9  	ldr	x8, [x25, #24]
   816ec: e0 03 15 aa  	mov	x0, x21
   816f0: e1 03 14 aa  	mov	x1, x20
   816f4: e2 03 13 aa  	mov	x2, x19
   816f8: 00 01 3f d6  	blr	x8
   816fc: e0 f3 07 36  	tbz	w0, #0, 0x81578 <_ZN68_$LT$core..fmt..builders..PadAdapter$u20$as$u20$core..fmt..Write$GT$9write_str17h006d11991b68be72E+0x4c>
   81700: 1c 00 00 14  	b	0x81770 <_ZN68_$LT$core..fmt..builders..PadAdapter$u20$as$u20$core..fmt..Write$GT$9write_str17h006d11991b68be72E+0x244>
   81704: e8 03 1f 2a  	mov	w8, wzr
   81708: f7 03 13 aa  	mov	x23, x19
   8170c: 7f 02 17 eb  	cmp	x19, x23
   81710: 08 03 00 39  	strb	w8, [x24]
   81714: 89 fe ff 54  	b.ls	0x816e4 <_ZN68_$LT$core..fmt..builders..PadAdapter$u20$as$u20$core..fmt..Write$GT$9write_str17h006d11991b68be72E+0x1b8>
   81718: 88 6a f7 38  	ldrsb	w8, [x20, x23]
   8171c: 1f 05 01 31  	cmn	w8, #65
   81720: 6d 03 00 54  	b.le	0x8178c <_ZN68_$LT$core..fmt..builders..PadAdapter$u20$as$u20$core..fmt..Write$GT$9write_str17h006d11991b68be72E+0x260>
   81724: 28 0f 40 f9  	ldr	x8, [x25, #24]
   81728: e0 03 15 aa  	mov	x0, x21
   8172c: e1 03 14 aa  	mov	x1, x20
   81730: e2 03 17 aa  	mov	x2, x23
   81734: 00 01 3f d6  	blr	x8
   81738: c0 01 00 37  	tbnz	w0, #0, 0x81770 <_ZN68_$LT$core..fmt..builders..PadAdapter$u20$as$u20$core..fmt..Write$GT$9write_str17h006d11991b68be72E+0x244>
   8173c: 88 6a f7 38  	ldrsb	w8, [x20, x23]
   81740: 1f 05 01 31  	cmn	w8, #65
   81744: ac f1 ff 54  	b.gt	0x81578 <_ZN68_$LT$core..fmt..builders..PadAdapter$u20$as$u20$core..fmt..Write$GT$9write_str17h006d11991b68be72E+0x4c>
   81748: 04 00 00 d0  	adrp	x4, 0x83000 <_ZN68_$LT$core..fmt..builders..PadAdapter$u20$as$u20$core..fmt..Write$GT$9write_str17h006d11991b68be72E+0x224>
   8174c: 84 c0 20 91  	add	x4, x4, #2096
   81750: e0 03 14 aa  	mov	x0, x20
   81754: e1 03 13 aa  	mov	x1, x19
   81758: e2 03 17 aa  	mov	x2, x23
   8175c: e3 03 13 aa  	mov	x3, x19
   81760: 17 00 00 94  	bl	0x817bc <_ZN4core3str16slice_error_fail17hf7d2a92268a53d29E>
   81764: 20 00 20 d4  	brk	#0x1
   81768: e0 03 1f 2a  	mov	w0, wzr
   8176c: 02 00 00 14  	b	0x81774 <_ZN68_$LT$core..fmt..builders..PadAdapter$u20$as$u20$core..fmt..Write$GT$9write_str17h006d11991b68be72E+0x248>
   81770: 20 00 80 52  	mov	w0, #1
   81774: f4 4f 44 a9  	ldp	x20, x19, [sp, #64]
   81778: f6 57 43 a9  	ldp	x22, x21, [sp, #48]
   8177c: f8 5f 42 a9  	ldp	x24, x23, [sp, #32]
   81780: fa 67 41 a9  	ldp	x26, x25, [sp, #16]
   81784: fe 6f c5 a8  	ldp	x30, x27, [sp], #80
   81788: c0 03 5f d6  	ret
   8178c: 04 00 00 d0  	adrp	x4, 0x83000 <_ZN68_$LT$core..fmt..builders..PadAdapter$u20$as$u20$core..fmt..Write$GT$9write_str17h006d11991b68be72E+0x268>
   81790: 84 60 20 91  	add	x4, x4, #2072
   81794: e0 03 14 aa  	mov	x0, x20
   81798: e1 03 13 aa  	mov	x1, x19
   8179c: e2 03 1f aa  	mov	x2, xzr
   817a0: e3 03 17 aa  	mov	x3, x23
   817a4: 06 00 00 94  	bl	0x817bc <_ZN4core3str16slice_error_fail17hf7d2a92268a53d29E>
   817a8: 20 00 20 d4  	brk	#0x1
   817ac: 02 00 00 d0  	adrp	x2, 0x83000 <_ZN68_$LT$core..fmt..builders..PadAdapter$u20$as$u20$core..fmt..Write$GT$9write_str17h006d11991b68be72E+0x288>
   817b0: 42 00 20 91  	add	x2, x2, #2048
   817b4: 77 fd ff 97  	bl	0x80d90 <_ZN4core5slice5index26slice_start_index_len_fail17ha5c8a54d8fb05d93E>
   817b8: 20 00 20 d4  	brk	#0x1

00000000000817bc <_ZN4core3str16slice_error_fail17hf7d2a92268a53d29E>:
   817bc: e2 0f b3 a9  	stp	x2, x3, [sp, #-208]!
   817c0: 3f 04 04 f1  	cmp	x1, #257
   817c4: 22 01 00 54  	b.hs	0x817e8 <_ZN4core3str16slice_error_fail17hf7d2a92268a53d29E+0x2c>
   817c8: 09 00 00 d0  	adrp	x9, 0x83000 <_ZN4core3str16slice_error_fail17hf7d2a92268a53d29E+0x14>
   817cc: 29 81 14 91  	add	x9, x9, #1312
   817d0: e8 03 1f aa  	mov	x8, xzr
   817d4: e0 07 01 a9  	stp	x0, x1, [sp, #16]
   817d8: e9 23 02 a9  	stp	x9, x8, [sp, #32]
   817dc: 5f 00 01 eb  	cmp	x2, x1
   817e0: a9 02 00 54  	b.ls	0x81834 <_ZN4core3str16slice_error_fail17hf7d2a92268a53d29E+0x78>
   817e4: 2b 00 00 14  	b	0x81890 <_ZN4core3str16slice_error_fail17hf7d2a92268a53d29E+0xd4>
   817e8: 08 20 80 52  	mov	w8, #256
   817ec: 06 00 00 14  	b	0x81804 <_ZN4core3str16slice_error_fail17hf7d2a92268a53d29E+0x48>
   817f0: 09 68 e8 38  	ldrsb	w9, [x0, x8]
   817f4: 3f 05 01 31  	cmn	w9, #65
   817f8: 0c 01 00 54  	b.gt	0x81818 <_ZN4core3str16slice_error_fail17hf7d2a92268a53d29E+0x5c>
   817fc: 08 05 00 f1  	subs	x8, x8, #1
   81800: c0 00 00 54  	b.eq	0x81818 <_ZN4core3str16slice_error_fail17hf7d2a92268a53d29E+0x5c>
   81804: 1f 01 01 eb  	cmp	x8, x1
   81808: 43 ff ff 54  	b.lo	0x817f0 <_ZN4core3str16slice_error_fail17hf7d2a92268a53d29E+0x34>
   8180c: 3f 00 08 eb  	cmp	x1, x8
   81810: 61 ff ff 54  	b.ne	0x817fc <_ZN4core3str16slice_error_fail17hf7d2a92268a53d29E+0x40>
   81814: e8 03 01 aa  	mov	x8, x1
   81818: e0 23 01 a9  	stp	x0, x8, [sp, #16]
   8181c: 08 00 00 d0  	adrp	x8, 0x83000 <_ZN4core3str16slice_error_fail17hf7d2a92268a53d29E+0x68>
   81820: 09 21 21 91  	add	x9, x8, #2120
   81824: a8 00 80 52  	mov	w8, #5
   81828: 5f 00 01 eb  	cmp	x2, x1
   8182c: e9 23 02 a9  	stp	x9, x8, [sp, #32]
   81830: 08 03 00 54  	b.hi	0x81890 <_ZN4core3str16slice_error_fail17hf7d2a92268a53d29E+0xd4>
   81834: 7f 00 01 eb  	cmp	x3, x1
   81838: c8 02 00 54  	b.hi	0x81890 <_ZN4core3str16slice_error_fail17hf7d2a92268a53d29E+0xd4>
   8183c: 5f 00 03 eb  	cmp	x2, x3
   81840: 89 05 00 54  	b.ls	0x818f0 <_ZN4core3str16slice_error_fail17hf7d2a92268a53d29E+0x134>
   81844: e9 ff ff f0  	adrp	x9, 0x80000 <_ZN4core3str16slice_error_fail17hf7d2a92268a53d29E+0x84>
   81848: e8 03 00 91  	mov	x8, sp
   8184c: 29 91 22 91  	add	x9, x9, #2212
   81850: ec ff ff f0  	adrp	x12, 0x80000 <_ZN4core3str16slice_error_fail17hf7d2a92268a53d29E+0x90>
   81854: 0e 00 00 d0  	adrp	x14, 0x83000 <_ZN4core3str16slice_error_fail17hf7d2a92268a53d29E+0xa0>
   81858: ea 23 00 91  	add	x10, sp, #8
   8185c: eb 43 00 91  	add	x11, sp, #16
   81860: 8c 51 39 91  	add	x12, x12, #3668
   81864: ed 83 00 91  	add	x13, sp, #32
   81868: ce 01 22 91  	add	x14, x14, #2176
   8186c: e8 27 08 a9  	stp	x8, x9, [sp, #128]
   81870: 88 00 80 52  	mov	w8, #4
   81874: ea 27 09 a9  	stp	x10, x9, [sp, #144]
   81878: ff 7f 06 a9  	stp	xzr, xzr, [sp, #96]
   8187c: eb 33 0a a9  	stp	x11, x12, [sp, #160]
   81880: ed 33 0b a9  	stp	x13, x12, [sp, #176]
   81884: e9 03 02 91  	add	x9, sp, #128
   81888: ee 23 05 a9  	stp	x14, x8, [sp, #80]
   8188c: 14 00 00 14  	b	0x818dc <_ZN4core3str16slice_error_fail17hf7d2a92268a53d29E+0x120>
   81890: e9 ff ff f0  	adrp	x9, 0x80000 <_ZN4core3str16slice_error_fail17hf7d2a92268a53d29E+0xd0>
   81894: 5f 00 01 eb  	cmp	x2, x1
   81898: e8 03 01 91  	add	x8, sp, #64
   8189c: 29 91 22 91  	add	x9, x9, #2212
   818a0: eb ff ff f0  	adrp	x11, 0x80000 <_ZN4core3str16slice_error_fail17hf7d2a92268a53d29E+0xe0>
   818a4: 0e 00 00 d0  	adrp	x14, 0x83000 <_ZN4core3str16slice_error_fail17hf7d2a92268a53d29E+0xf0>
   818a8: ea 43 00 91  	add	x10, sp, #16
   818ac: 6b 51 39 91  	add	x11, x11, #3668
   818b0: ec 83 00 91  	add	x12, sp, #32
   818b4: 4d 80 83 9a  	csel	x13, x2, x3, hi
   818b8: ce 41 21 91  	add	x14, x14, #2128
   818bc: e8 27 08 a9  	stp	x8, x9, [sp, #128]
   818c0: 68 00 80 52  	mov	w8, #3
   818c4: e9 03 02 91  	add	x9, sp, #128
   818c8: ff 7f 06 a9  	stp	xzr, xzr, [sp, #96]
   818cc: ea 2f 09 a9  	stp	x10, x11, [sp, #144]
   818d0: ec 2f 0a a9  	stp	x12, x11, [sp, #160]
   818d4: ee 23 05 a9  	stp	x14, x8, [sp, #80]
   818d8: ed 23 00 f9  	str	x13, [sp, #64]
   818dc: e9 23 07 a9  	stp	x9, x8, [sp, #112]
   818e0: e0 43 01 91  	add	x0, sp, #80
   818e4: e1 03 04 aa  	mov	x1, x4
   818e8: 4c fc ff 97  	bl	0x80a18 <_ZN4core9panicking9panic_fmt17h548b34a47a4ac578E>
   818ec: 20 00 20 d4  	brk	#0x1
   818f0: 82 01 00 b5  	cbnz	x2, 0x81920 <_ZN4core3str16slice_error_fail17hf7d2a92268a53d29E+0x164>
   818f4: e3 1b 00 f9  	str	x3, [sp, #48]
   818f8: 23 04 00 b5  	cbnz	x3, 0x8197c <_ZN4core3str16slice_error_fail17hf7d2a92268a53d29E+0x1c0>
   818fc: e3 03 1f aa  	mov	x3, xzr
   81900: 7f 00 01 eb  	cmp	x3, x1
   81904: a1 01 00 54  	b.ne	0x81938 <_ZN4core3str16slice_error_fail17hf7d2a92268a53d29E+0x17c>
   81908: 00 00 00 d0  	adrp	x0, 0x83000 <_ZN4core3str16slice_error_fail17hf7d2a92268a53d29E+0x154>
   8190c: 00 00 23 91  	add	x0, x0, #2240
   81910: 61 05 80 52  	mov	w1, #43
   81914: e2 03 04 aa  	mov	x2, x4
   81918: 42 fd ff 97  	bl	0x80e20 <_ZN4core9panicking5panic17ha7217054e020f4cfE>
   8191c: 20 00 20 d4  	brk	#0x1
   81920: 5f 00 01 eb  	cmp	x2, x1
   81924: a2 01 00 54  	b.hs	0x81958 <_ZN4core3str16slice_error_fail17hf7d2a92268a53d29E+0x19c>
   81928: 08 68 e2 38  	ldrsb	w8, [x0, x2]
   8192c: 1f 05 01 31  	cmn	w8, #65
   81930: 2c fe ff 54  	b.gt	0x818f4 <_ZN4core3str16slice_error_fail17hf7d2a92268a53d29E+0x138>
   81934: 0b 00 00 14  	b	0x81960 <_ZN4core3str16slice_error_fail17hf7d2a92268a53d29E+0x1a4>
   81938: 08 00 03 8b  	add	x8, x0, x3
   8193c: eb 03 08 aa  	mov	x11, x8
   81940: 6a 15 c0 38  	ldrsb	w10, [x11], #1
   81944: 49 1d 00 12  	and	w9, w10, #0xff
   81948: 6a 02 f8 37  	tbnz	w10, #31, 0x81994 <_ZN4core3str16slice_error_fail17hf7d2a92268a53d29E+0x1d8>
   8194c: e9 3f 00 b9  	str	w9, [sp, #60]
   81950: 28 00 80 52  	mov	w8, #1
   81954: 44 00 00 14  	b	0x81a64 <_ZN4core3str16slice_error_fail17hf7d2a92268a53d29E+0x2a8>
   81958: 3f 00 02 eb  	cmp	x1, x2
   8195c: c0 fc ff 54  	b.eq	0x818f4 <_ZN4core3str16slice_error_fail17hf7d2a92268a53d29E+0x138>
   81960: e3 03 02 aa  	mov	x3, x2
   81964: e2 1b 00 f9  	str	x2, [sp, #48]
   81968: 05 00 00 14  	b	0x8197c <_ZN4core3str16slice_error_fail17hf7d2a92268a53d29E+0x1c0>
   8196c: 3f 00 03 eb  	cmp	x1, x3
   81970: c0 fc ff 54  	b.eq	0x81908 <_ZN4core3str16slice_error_fail17hf7d2a92268a53d29E+0x14c>
   81974: 63 04 00 f1  	subs	x3, x3, #1
   81978: 20 fc ff 54  	b.eq	0x818fc <_ZN4core3str16slice_error_fail17hf7d2a92268a53d29E+0x140>
   8197c: 7f 00 01 eb  	cmp	x3, x1
   81980: 62 ff ff 54  	b.hs	0x8196c <_ZN4core3str16slice_error_fail17hf7d2a92268a53d29E+0x1b0>
   81984: 08 68 e3 38  	ldrsb	w8, [x0, x3]
   81988: 1f 01 01 31  	cmn	w8, #64
   8198c: 4b ff ff 54  	b.lt	0x81974 <_ZN4core3str16slice_error_fail17hf7d2a92268a53d29E+0x1b8>
   81990: dc ff ff 17  	b	0x81900 <_ZN4core3str16slice_error_fail17hf7d2a92268a53d29E+0x144>
   81994: 0a 00 01 8b  	add	x10, x0, x1
   81998: 7f 01 0a eb  	cmp	x11, x10
   8199c: 01 01 00 54  	b.ne	0x819bc <_ZN4core3str16slice_error_fail17hf7d2a92268a53d29E+0x200>
   819a0: e8 03 1f 2a  	mov	w8, wzr
   819a4: ec 03 0a aa  	mov	x12, x10
   819a8: 3f 7d 03 71  	cmp	w9, #223
   819ac: 2b 11 00 12  	and	w11, w9, #0x1f
   819b0: 28 01 00 54  	b.hi	0x819d4 <_ZN4core3str16slice_error_fail17hf7d2a92268a53d29E+0x218>
   819b4: 68 11 1a 33  	bfi	w8, w11, #6, #5
   819b8: 1f 00 00 14  	b	0x81a34 <_ZN4core3str16slice_error_fail17hf7d2a92268a53d29E+0x278>
   819bc: 0b 05 40 39  	ldrb	w11, [x8, #1]
   819c0: 0c 09 00 91  	add	x12, x8, #2
   819c4: 68 15 00 12  	and	w8, w11, #0x3f
   819c8: 3f 7d 03 71  	cmp	w9, #223
   819cc: 2b 11 00 12  	and	w11, w9, #0x1f
   819d0: 29 ff ff 54  	b.ls	0x819b4 <_ZN4core3str16slice_error_fail17hf7d2a92268a53d29E+0x1f8>
   819d4: 9f 01 0a eb  	cmp	x12, x10
   819d8: 81 00 00 54  	b.ne	0x819e8 <_ZN4core3str16slice_error_fail17hf7d2a92268a53d29E+0x22c>
   819dc: ed 03 1f 2a  	mov	w13, wzr
   819e0: ec 03 0a aa  	mov	x12, x10
   819e4: 03 00 00 14  	b	0x819f0 <_ZN4core3str16slice_error_fail17hf7d2a92268a53d29E+0x234>
   819e8: 8d 15 40 38  	ldrb	w13, [x12], #1
   819ec: ad 15 00 12  	and	w13, w13, #0x3f
   819f0: 3f c1 03 71  	cmp	w9, #240
   819f4: 0d 15 1a 33  	bfi	w13, w8, #6, #6
   819f8: a3 00 00 54  	b.lo	0x81a0c <_ZN4core3str16slice_error_fail17hf7d2a92268a53d29E+0x250>
   819fc: 9f 01 0a eb  	cmp	x12, x10
   81a00: c1 00 00 54  	b.ne	0x81a18 <_ZN4core3str16slice_error_fail17hf7d2a92268a53d29E+0x25c>
   81a04: e8 03 1f 2a  	mov	w8, wzr
   81a08: 06 00 00 14  	b	0x81a20 <_ZN4core3str16slice_error_fail17hf7d2a92268a53d29E+0x264>
   81a0c: 6d 11 14 33  	bfi	w13, w11, #12, #5
   81a10: e8 03 0d 2a  	mov	w8, w13
   81a14: 08 00 00 14  	b	0x81a34 <_ZN4core3str16slice_error_fail17hf7d2a92268a53d29E+0x278>
   81a18: 88 01 40 39  	ldrb	w8, [x12]
   81a1c: 08 15 00 12  	and	w8, w8, #0x3f
   81a20: 69 09 0e 53  	ubfiz	w9, w11, #18, #3
   81a24: a9 2d 1a 33  	bfi	w9, w13, #6, #12
   81a28: 28 01 08 2a  	orr	w8, w9, w8
   81a2c: 1f 41 44 71  	cmp	w8, #272, lsl #12
   81a30: c0 f6 ff 54  	b.eq	0x81908 <_ZN4core3str16slice_error_fail17hf7d2a92268a53d29E+0x14c>
   81a34: 1f 01 02 71  	cmp	w8, #128
   81a38: e8 3f 00 b9  	str	w8, [sp, #60]
   81a3c: 62 00 00 54  	b.hs	0x81a48 <_ZN4core3str16slice_error_fail17hf7d2a92268a53d29E+0x28c>
   81a40: 28 00 80 52  	mov	w8, #1
   81a44: 08 00 00 14  	b	0x81a64 <_ZN4core3str16slice_error_fail17hf7d2a92268a53d29E+0x2a8>
   81a48: 1f 01 20 71  	cmp	w8, #2048
   81a4c: 62 00 00 54  	b.hs	0x81a58 <_ZN4core3str16slice_error_fail17hf7d2a92268a53d29E+0x29c>
   81a50: 48 00 80 52  	mov	w8, #2
   81a54: 04 00 00 14  	b	0x81a64 <_ZN4core3str16slice_error_fail17hf7d2a92268a53d29E+0x2a8>
   81a58: 1f 41 40 71  	cmp	w8, #16, lsl #12
   81a5c: 68 00 80 52  	mov	w8, #3
   81a60: 08 35 88 9a  	cinc	x8, x8, hs
   81a64: 08 01 03 8b  	add	x8, x8, x3
   81a68: ea ff ff f0  	adrp	x10, 0x80000 <_ZN4core3str16slice_error_fail17hf7d2a92268a53d29E+0x2a8>
   81a6c: e9 c3 00 91  	add	x9, sp, #48
   81a70: 4a 91 22 91  	add	x10, x10, #2212
   81a74: 0c 00 00 90  	adrp	x12, 0x81000 <_ZN4core3str16slice_error_fail17hf7d2a92268a53d29E+0x2b8>
   81a78: e3 23 04 a9  	stp	x3, x8, [sp, #64]
   81a7c: e8 ff ff f0  	adrp	x8, 0x80000 <_ZN4core3str16slice_error_fail17hf7d2a92268a53d29E+0x2bc>
   81a80: eb f3 00 91  	add	x11, sp, #60
   81a84: 8c 81 2b 91  	add	x12, x12, #2784
   81a88: 0e 00 00 90  	adrp	x14, 0x81000 <_ZN4core3str16slice_error_fail17hf7d2a92268a53d29E+0x2cc>
   81a8c: ef 43 00 91  	add	x15, sp, #16
   81a90: 08 51 39 91  	add	x8, x8, #3668
   81a94: e9 2b 08 a9  	stp	x9, x10, [sp, #128]
   81a98: e9 83 00 91  	add	x9, sp, #32
   81a9c: 0a 00 00 d0  	adrp	x10, 0x83000 <_ZN4core3str16slice_error_fail17hf7d2a92268a53d29E+0x2e8>
   81aa0: ed 03 01 91  	add	x13, sp, #64
   81aa4: ce a1 33 91  	add	x14, x14, #3304
   81aa8: eb 33 09 a9  	stp	x11, x12, [sp, #144]
   81aac: 4a c1 23 91  	add	x10, x10, #2288
   81ab0: ab 00 80 52  	mov	w11, #5
   81ab4: ef 23 0b a9  	stp	x15, x8, [sp, #176]
   81ab8: e9 23 0c a9  	stp	x9, x8, [sp, #192]
   81abc: e8 03 02 91  	add	x8, sp, #128
   81ac0: ed 3b 0a a9  	stp	x13, x14, [sp, #160]
   81ac4: ff 7f 06 a9  	stp	xzr, xzr, [sp, #96]
   81ac8: ea 2f 05 a9  	stp	x10, x11, [sp, #80]
   81acc: e8 2f 07 a9  	stp	x8, x11, [sp, #112]
   81ad0: e0 43 01 91  	add	x0, sp, #80
   81ad4: e1 03 04 aa  	mov	x1, x4
   81ad8: d0 fb ff 97  	bl	0x80a18 <_ZN4core9panicking9panic_fmt17h548b34a47a4ac578E>
   81adc: 20 00 20 d4  	brk	#0x1

0000000000081ae0 <_ZN41_$LT$char$u20$as$u20$core..fmt..Debug$GT$3fmt17h1eea34d619488d03E>:
   81ae0: ff 83 01 d1  	sub	sp, sp, #96
   81ae4: fe 6f 01 a9  	stp	x30, x27, [sp, #16]
   81ae8: fa 67 02 a9  	stp	x26, x25, [sp, #32]
   81aec: f8 5f 03 a9  	stp	x24, x23, [sp, #48]
   81af0: f6 57 04 a9  	stp	x22, x21, [sp, #64]
   81af4: f4 4f 05 a9  	stp	x20, x19, [sp, #80]
   81af8: 33 20 42 a9  	ldp	x19, x8, [x1, #32]
   81afc: f4 03 00 aa  	mov	x20, x0
   81b00: e1 04 80 52  	mov	w1, #39
   81b04: 02 11 40 f9  	ldr	x2, [x8, #32]
   81b08: e0 03 13 aa  	mov	x0, x19
   81b0c: e2 07 00 f9  	str	x2, [sp, #8]
   81b10: 40 00 3f d6  	blr	x2
   81b14: 20 01 00 36  	tbz	w0, #0, 0x81b38 <_ZN41_$LT$char$u20$as$u20$core..fmt..Debug$GT$3fmt17h1eea34d619488d03E+0x58>
   81b18: f4 4f 45 a9  	ldp	x20, x19, [sp, #80]
   81b1c: f6 57 44 a9  	ldp	x22, x21, [sp, #64]
   81b20: f8 5f 43 a9  	ldp	x24, x23, [sp, #48]
   81b24: fa 67 42 a9  	ldp	x26, x25, [sp, #32]
   81b28: fe 6f 41 a9  	ldp	x30, x27, [sp, #16]
   81b2c: 20 00 80 52  	mov	w0, #1
   81b30: ff 83 01 91  	add	sp, sp, #96
   81b34: c0 03 5f d6  	ret
   81b38: 94 02 40 b9  	ldr	w20, [x20]
   81b3c: 88 26 00 51  	sub	w8, w20, #9
   81b40: 1f 79 00 71  	cmp	w8, #30
   81b44: 88 01 00 54  	b.hi	0x81b74 <_ZN41_$LT$char$u20$as$u20$core..fmt..Debug$GT$3fmt17h1eea34d619488d03E+0x94>
   81b48: 09 00 00 d0  	adrp	x9, 0x83000 <_ZN41_$LT$char$u20$as$u20$core..fmt..Debug$GT$3fmt17h1eea34d619488d03E+0x70>
   81b4c: 29 a1 0c 91  	add	x9, x9, #808
   81b50: ca 00 00 10  	adr	x10, #24
   81b54: 2b 69 68 38  	ldrb	w11, [x9, x8]
   81b58: 4a 09 0b 8b  	add	x10, x10, x11, lsl #2
   81b5c: 95 0e 80 52  	mov	w21, #116
   81b60: 58 00 80 52  	mov	w24, #2
   81b64: 40 01 1f d6  	br	x10
   81b68: d5 0d 80 52  	mov	w21, #110
   81b6c: 58 00 80 52  	mov	w24, #2
   81b70: 1a 00 00 14  	b	0x81bd8 <_ZN41_$LT$char$u20$as$u20$core..fmt..Debug$GT$3fmt17h1eea34d619488d03E+0xf8>
   81b74: 9f 72 01 71  	cmp	w20, #92
   81b78: 81 00 00 54  	b.ne	0x81b88 <_ZN41_$LT$char$u20$as$u20$core..fmt..Debug$GT$3fmt17h1eea34d619488d03E+0xa8>
   81b7c: 58 00 80 52  	mov	w24, #2
   81b80: f5 03 14 2a  	mov	w21, w20
   81b84: 15 00 00 14  	b	0x81bd8 <_ZN41_$LT$char$u20$as$u20$core..fmt..Debug$GT$3fmt17h1eea34d619488d03E+0xf8>
   81b88: e0 03 14 2a  	mov	w0, w20
   81b8c: 0b 01 00 94  	bl	0x81fb8 <_ZN4core7unicode12unicode_data15grapheme_extend6lookup17h0525d17e88c4ad5eE>
   81b90: 40 01 00 37  	tbnz	w0, #0, 0x81bb8 <_ZN41_$LT$char$u20$as$u20$core..fmt..Debug$GT$3fmt17h1eea34d619488d03E+0xd8>
   81b94: e0 03 14 2a  	mov	w0, w20
   81b98: 56 01 00 94  	bl	0x820f0 <_ZN4core7unicode9printable12is_printable17h809bc46350007ff2E>
   81b9c: e0 00 00 36  	tbz	w0, #0, 0x81bb8 <_ZN41_$LT$char$u20$as$u20$core..fmt..Debug$GT$3fmt17h1eea34d619488d03E+0xd8>
   81ba0: 38 00 80 52  	mov	w24, #1
   81ba4: f5 03 14 2a  	mov	w21, w20
   81ba8: 0c 00 00 14  	b	0x81bd8 <_ZN41_$LT$char$u20$as$u20$core..fmt..Debug$GT$3fmt17h1eea34d619488d03E+0xf8>
   81bac: 55 0e 80 52  	mov	w21, #114
   81bb0: 58 00 80 52  	mov	w24, #2
   81bb4: 09 00 00 14  	b	0x81bd8 <_ZN41_$LT$char$u20$as$u20$core..fmt..Debug$GT$3fmt17h1eea34d619488d03E+0xf8>
   81bb8: 88 02 00 32  	orr	w8, w20, #0x1
   81bbc: 08 11 c0 5a  	clz	w8, w8
   81bc0: e9 03 14 2a  	mov	w9, w20
   81bc4: aa 00 c0 d2  	mov	x10, #21474836480
   81bc8: 08 7d 02 53  	lsr	w8, w8, #2
   81bcc: 37 01 0a aa  	orr	x23, x9, x10
   81bd0: 16 09 00 52  	eor	w22, w8, #0x7
   81bd4: 78 00 80 52  	mov	w24, #3
   81bd8: 14 00 00 d0  	adrp	x20, 0x83000 <_ZN41_$LT$char$u20$as$u20$core..fmt..Debug$GT$3fmt17h1eea34d619488d03E+0x100>
   81bdc: 19 00 00 d0  	adrp	x25, 0x83000 <_ZN41_$LT$char$u20$as$u20$core..fmt..Debug$GT$3fmt17h1eea34d619488d03E+0x104>
   81be0: 94 1e 0d 91  	add	x20, x20, #839
   81be4: 39 2f 0d 91  	add	x25, x25, #843
   81be8: fa 0a 80 52  	mov	w26, #87
   81bec: 1b 06 80 52  	mov	w27, #48
   81bf0: 07 00 00 14  	b	0x81c0c <_ZN41_$LT$char$u20$as$u20$core..fmt..Debug$GT$3fmt17h1eea34d619488d03E+0x12c>
   81bf4: f8 03 1f 2a  	mov	w24, wzr
   81bf8: e1 03 15 2a  	mov	w1, w21
   81bfc: e2 07 40 f9  	ldr	x2, [sp, #8]
   81c00: e0 03 13 aa  	mov	x0, x19
   81c04: 40 00 3f d6  	blr	x2
   81c08: 80 f8 07 37  	tbnz	w0, #0, 0x81b18 <_ZN41_$LT$char$u20$as$u20$core..fmt..Debug$GT$3fmt17h1eea34d619488d03E+0x38>
   81c0c: e8 03 18 2a  	mov	w8, w24
   81c10: 29 ff ff 10  	adr	x9, #-28
   81c14: 8a 6a 68 38  	ldrb	w10, [x20, x8]
   81c18: 29 09 0a 8b  	add	x9, x9, x10, lsl #2
   81c1c: 38 00 80 52  	mov	w24, #1
   81c20: 81 0b 80 52  	mov	w1, #92
   81c24: 20 01 1f d6  	br	x9
   81c28: e8 9e 60 d3  	ubfx	x8, x23, #32, #8
   81c2c: 89 00 00 10  	adr	x9, #16
   81c30: 2a 6b 68 38  	ldrb	w10, [x25, x8]
   81c34: 29 09 0a 8b  	add	x9, x9, x10, lsl #2
   81c38: 20 01 1f d6  	br	x9
   81c3c: f7 de 58 92  	and	x23, x23, #0xffffff00ffffffff
   81c40: 78 00 80 52  	mov	w24, #3
   81c44: a1 0f 80 52  	mov	w1, #125
   81c48: ed ff ff 17  	b	0x81bfc <_ZN41_$LT$char$u20$as$u20$core..fmt..Debug$GT$3fmt17h1eea34d619488d03E+0x11c>
   81c4c: c8 0a 1e 53  	ubfiz	w8, w22, #2, #3
   81c50: e8 26 c8 1a  	lsr	w8, w23, w8
   81c54: 08 0d 00 12  	and	w8, w8, #0xf
   81c58: 1f 29 00 71  	cmp	w8, #10
   81c5c: 69 33 9a 1a  	csel	w9, w27, w26, lo
   81c60: 21 01 08 0b  	add	w1, w9, w8
   81c64: 76 02 00 b4  	cbz	x22, 0x81cb0 <_ZN41_$LT$char$u20$as$u20$core..fmt..Debug$GT$3fmt17h1eea34d619488d03E+0x1d0>
   81c68: d6 06 00 d1  	sub	x22, x22, #1
   81c6c: 78 00 80 52  	mov	w24, #3
   81c70: e3 ff ff 17  	b	0x81bfc <_ZN41_$LT$char$u20$as$u20$core..fmt..Debug$GT$3fmt17h1eea34d619488d03E+0x11c>
   81c74: e8 de 58 92  	and	x8, x23, #0xffffff00ffffffff
   81c78: 78 00 80 52  	mov	w24, #3
   81c7c: 17 01 5f b2  	orr	x23, x8, #0x200000000
   81c80: 61 0f 80 52  	mov	w1, #123
   81c84: de ff ff 17  	b	0x81bfc <_ZN41_$LT$char$u20$as$u20$core..fmt..Debug$GT$3fmt17h1eea34d619488d03E+0x11c>
   81c88: e8 de 58 92  	and	x8, x23, #0xffffff00ffffffff
   81c8c: 78 00 80 52  	mov	w24, #3
   81c90: 17 05 60 b2  	orr	x23, x8, #0x300000000
   81c94: a1 0e 80 52  	mov	w1, #117
   81c98: d9 ff ff 17  	b	0x81bfc <_ZN41_$LT$char$u20$as$u20$core..fmt..Debug$GT$3fmt17h1eea34d619488d03E+0x11c>
   81c9c: e8 de 58 92  	and	x8, x23, #0xffffff00ffffffff
   81ca0: 78 00 80 52  	mov	w24, #3
   81ca4: 17 01 5e b2  	orr	x23, x8, #0x400000000
   81ca8: 81 0b 80 52  	mov	w1, #92
   81cac: d4 ff ff 17  	b	0x81bfc <_ZN41_$LT$char$u20$as$u20$core..fmt..Debug$GT$3fmt17h1eea34d619488d03E+0x11c>
   81cb0: e8 de 58 92  	and	x8, x23, #0xffffff00ffffffff
   81cb4: 17 01 60 b2  	orr	x23, x8, #0x100000000
   81cb8: 78 00 80 52  	mov	w24, #3
   81cbc: d0 ff ff 17  	b	0x81bfc <_ZN41_$LT$char$u20$as$u20$core..fmt..Debug$GT$3fmt17h1eea34d619488d03E+0x11c>
   81cc0: e0 03 13 aa  	mov	x0, x19
   81cc4: e2 07 40 f9  	ldr	x2, [sp, #8]
   81cc8: f4 4f 45 a9  	ldp	x20, x19, [sp, #80]
   81ccc: f6 57 44 a9  	ldp	x22, x21, [sp, #64]
   81cd0: f8 5f 43 a9  	ldp	x24, x23, [sp, #48]
   81cd4: fa 67 42 a9  	ldp	x26, x25, [sp, #32]
   81cd8: fe 6f 41 a9  	ldp	x30, x27, [sp, #16]
   81cdc: e1 04 80 52  	mov	w1, #39
   81ce0: ff 83 01 91  	add	sp, sp, #96
   81ce4: 40 00 1f d6  	br	x2

0000000000081ce8 <_ZN71_$LT$core..ops..range..Range$LT$Idx$GT$$u20$as$u20$core..fmt..Debug$GT$3fmt17h38324d94ece27e25E>:
   81ce8: ff 43 01 d1  	sub	sp, sp, #80
   81cec: fe 1b 00 f9  	str	x30, [sp, #48]
   81cf0: f4 4f 04 a9  	stp	x20, x19, [sp, #64]
   81cf4: f4 03 00 aa  	mov	x20, x0
   81cf8: 00 00 40 f9  	ldr	x0, [x0]
   81cfc: f3 03 01 aa  	mov	x19, x1
   81d00: 19 00 00 94  	bl	0x81d64 <_ZN4core3fmt3num52_$LT$impl$u20$core..fmt..Debug$u20$for$u20$usize$GT$3fmt17h420029119b997121E>
   81d04: a0 01 00 37  	tbnz	w0, #0, 0x81d38 <_ZN71_$LT$core..ops..range..Range$LT$Idx$GT$$u20$as$u20$core..fmt..Debug$GT$3fmt17h38324d94ece27e25E+0x50>
   81d08: 60 06 42 a9  	ldp	x0, x1, [x19, #32]
   81d0c: 08 00 00 d0  	adrp	x8, 0x83000 <_ZN71_$LT$core..ops..range..Range$LT$Idx$GT$$u20$as$u20$core..fmt..Debug$GT$3fmt17h38324d94ece27e25E+0x2c>
   81d10: 08 81 1e 91  	add	x8, x8, #1952
   81d14: 29 00 80 52  	mov	w9, #1
   81d18: e8 27 00 a9  	stp	x8, x9, [sp]
   81d1c: 08 00 00 d0  	adrp	x8, 0x83000 <_ZN71_$LT$core..ops..range..Range$LT$Idx$GT$$u20$as$u20$core..fmt..Debug$GT$3fmt17h38324d94ece27e25E+0x3c>
   81d20: 08 81 14 91  	add	x8, x8, #1312
   81d24: e2 03 00 91  	mov	x2, sp
   81d28: ff 7f 01 a9  	stp	xzr, xzr, [sp, #16]
   81d2c: e8 7f 02 a9  	stp	x8, xzr, [sp, #32]
   81d30: 55 fd ff 97  	bl	0x81284 <_ZN4core3fmt5write17h4089dd81629a8d2eE>
   81d34: c0 00 00 34  	cbz	w0, 0x81d4c <_ZN71_$LT$core..ops..range..Range$LT$Idx$GT$$u20$as$u20$core..fmt..Debug$GT$3fmt17h38324d94ece27e25E+0x64>
   81d38: f4 4f 44 a9  	ldp	x20, x19, [sp, #64]
   81d3c: fe 1b 40 f9  	ldr	x30, [sp, #48]
   81d40: 20 00 80 52  	mov	w0, #1
   81d44: ff 43 01 91  	add	sp, sp, #80
   81d48: c0 03 5f d6  	ret
   81d4c: 80 06 40 f9  	ldr	x0, [x20, #8]
   81d50: e1 03 13 aa  	mov	x1, x19
   81d54: f4 4f 44 a9  	ldp	x20, x19, [sp, #64]
   81d58: fe 1b 40 f9  	ldr	x30, [sp, #48]
   81d5c: ff 43 01 91  	add	sp, sp, #80
   81d60: 01 00 00 14  	b	0x81d64 <_ZN4core3fmt3num52_$LT$impl$u20$core..fmt..Debug$u20$for$u20$usize$GT$3fmt17h420029119b997121E>

0000000000081d64 <_ZN4core3fmt3num52_$LT$impl$u20$core..fmt..Debug$u20$for$u20$usize$GT$3fmt17h420029119b997121E>:
   81d64: ff 43 02 d1  	sub	sp, sp, #144
   81d68: fe 43 00 f9  	str	x30, [sp, #128]
   81d6c: 28 30 40 b9  	ldr	w8, [x1, #48]
   81d70: a8 05 20 37  	tbnz	w8, #4, 0x81e24 <_ZN4core3fmt3num52_$LT$impl$u20$core..fmt..Debug$u20$for$u20$usize$GT$3fmt17h420029119b997121E+0xc0>
   81d74: 68 07 28 37  	tbnz	w8, #5, 0x81e60 <_ZN4core3fmt3num52_$LT$impl$u20$core..fmt..Debug$u20$for$u20$usize$GT$3fmt17h420029119b997121E+0xfc>
   81d78: 08 fc 44 d3  	lsr	x8, x0, #4
   81d7c: 1f c5 09 f1  	cmp	x8, #625
   81d80: c3 0a 00 54  	b.lo	0x81ed8 <_ZN4core3fmt3num52_$LT$impl$u20$core..fmt..Debug$u20$for$u20$usize$GT$3fmt17h420029119b997121E+0x174>
   81d84: 69 29 8b d2  	mov	x9, #22859
   81d88: c9 10 a7 f2  	movk	x9, #14470, lsl #16
   81d8c: c9 ba d8 f2  	movk	x9, #50646, lsl #32
   81d90: eb a3 90 52  	mov	w11, #34079
   81d94: 0d 00 00 d0  	adrp	x13, 0x83000 <_ZN4core3fmt3num52_$LT$impl$u20$core..fmt..Debug$u20$for$u20$usize$GT$3fmt17h420029119b997121E+0x38>
   81d98: ef 1f 9c 52  	mov	w15, #57599
   81d9c: e8 03 1f aa  	mov	x8, xzr
   81da0: a9 8d e6 f2  	movk	x9, #13421, lsl #48
   81da4: ea e1 84 12  	mov	w10, #-10000
   81da8: 6b 3d aa 72  	movk	w11, #20971, lsl #16
   81dac: 6c 0c 80 12  	mov	w12, #-100
   81db0: ad c9 16 91  	add	x13, x13, #1458
   81db4: ee 03 00 91  	mov	x14, sp
   81db8: af be a0 72  	movk	w15, #1525, lsl #16
   81dbc: 11 7c c9 9b  	umulh	x17, x0, x9
   81dc0: f0 03 00 aa  	mov	x16, x0
   81dc4: 1f 00 0f eb  	cmp	x0, x15
   81dc8: 20 fe 4b d3  	lsr	x0, x17, #11
   81dcc: 10 40 0a 1b  	madd	w16, w0, w10, w16
   81dd0: 11 3e 00 12  	and	w17, w16, #0xffff
   81dd4: 31 7e ab 9b  	umull	x17, w17, w11
   81dd8: 31 fe 65 d3  	lsr	x17, x17, #37
   81ddc: 30 42 0c 1b  	madd	w16, w17, w12, w16
   81de0: b1 05 11 8b  	add	x17, x13, x17, lsl #1
   81de4: b0 25 30 8b  	add	x16, x13, w16, uxth #1
   81de8: 22 02 40 39  	ldrb	w2, [x17]
   81dec: 31 06 40 39  	ldrb	w17, [x17, #1]
   81df0: 03 06 40 39  	ldrb	w3, [x16, #1]
   81df4: 10 02 40 39  	ldrb	w16, [x16]
   81df8: d2 01 08 8b  	add	x18, x14, x8
   81dfc: 08 11 00 d1  	sub	x8, x8, #4
   81e00: 51 92 00 39  	strb	w17, [x18, #36]
   81e04: 42 8e 00 39  	strb	w2, [x18, #35]
   81e08: 43 9a 00 39  	strb	w3, [x18, #38]
   81e0c: 50 96 00 39  	strb	w16, [x18, #37]
   81e10: 68 fd ff 54  	b.hi	0x81dbc <_ZN4core3fmt3num52_$LT$impl$u20$core..fmt..Debug$u20$for$u20$usize$GT$3fmt17h420029119b997121E+0x58>
   81e14: 08 9d 00 91  	add	x8, x8, #39
   81e18: 1f 8c 01 f1  	cmp	x0, #99
   81e1c: 4c 06 00 54  	b.gt	0x81ee4 <_ZN4core3fmt3num52_$LT$impl$u20$core..fmt..Debug$u20$for$u20$usize$GT$3fmt17h420029119b997121E+0x180>
   81e20: 43 00 00 14  	b	0x81f2c <_ZN4core3fmt3num52_$LT$impl$u20$core..fmt..Debug$u20$for$u20$usize$GT$3fmt17h420029119b997121E+0x1c8>
   81e24: e8 03 1f aa  	mov	x8, xzr
   81e28: e9 03 00 91  	mov	x9, sp
   81e2c: 0c 0c 00 12  	and	w12, w0, #0xf
   81e30: 0d 06 80 52  	mov	w13, #48
   81e34: 0b fc 44 d3  	lsr	x11, x0, #4
   81e38: 0d 0c 00 33  	bfxil	w13, w0, #0, #4
   81e3c: 8e 5d 01 11  	add	w14, w12, #87
   81e40: 9f 29 00 71  	cmp	w12, #10
   81e44: 2a 01 08 8b  	add	x10, x9, x8
   81e48: ac 31 8e 1a  	csel	w12, w13, w14, lo
   81e4c: 08 05 00 d1  	sub	x8, x8, #1
   81e50: e0 03 0b aa  	mov	x0, x11
   81e54: 4c fd 01 39  	strb	w12, [x10, #127]
   81e58: ab fe ff b5  	cbnz	x11, 0x81e2c <_ZN4core3fmt3num52_$LT$impl$u20$core..fmt..Debug$u20$for$u20$usize$GT$3fmt17h420029119b997121E+0xc8>
   81e5c: 0f 00 00 14  	b	0x81e98 <_ZN4core3fmt3num52_$LT$impl$u20$core..fmt..Debug$u20$for$u20$usize$GT$3fmt17h420029119b997121E+0x134>
   81e60: e8 03 1f aa  	mov	x8, xzr
   81e64: e9 03 00 91  	mov	x9, sp
   81e68: 0c 0c 00 12  	and	w12, w0, #0xf
   81e6c: 0d 06 80 52  	mov	w13, #48
   81e70: 0b fc 44 d3  	lsr	x11, x0, #4
   81e74: 0d 0c 00 33  	bfxil	w13, w0, #0, #4
   81e78: 8e dd 00 11  	add	w14, w12, #55
   81e7c: 9f 29 00 71  	cmp	w12, #10
   81e80: 2a 01 08 8b  	add	x10, x9, x8
   81e84: ac 31 8e 1a  	csel	w12, w13, w14, lo
   81e88: 08 05 00 d1  	sub	x8, x8, #1
   81e8c: e0 03 0b aa  	mov	x0, x11
   81e90: 4c fd 01 39  	strb	w12, [x10, #127]
   81e94: ab fe ff b5  	cbnz	x11, 0x81e68 <_ZN4core3fmt3num52_$LT$impl$u20$core..fmt..Debug$u20$for$u20$usize$GT$3fmt17h420029119b997121E+0x104>
   81e98: 00 01 02 91  	add	x0, x8, #128
   81e9c: 1f 04 02 f1  	cmp	x0, #129
   81ea0: 22 08 00 54  	b.hs	0x81fa4 <_ZN4core3fmt3num52_$LT$impl$u20$core..fmt..Debug$u20$for$u20$usize$GT$3fmt17h420029119b997121E+0x240>
   81ea4: e9 03 00 91  	mov	x9, sp
   81ea8: e4 03 08 cb  	neg	x4, x8
   81eac: 28 01 08 8b  	add	x8, x9, x8
   81eb0: 03 01 02 91  	add	x3, x8, #128
   81eb4: 08 00 00 d0  	adrp	x8, 0x83000 <_ZN4core3fmt3num52_$LT$impl$u20$core..fmt..Debug$u20$for$u20$usize$GT$3fmt17h420029119b997121E+0x158>
   81eb8: 08 e1 1c 91  	add	x8, x8, #1848
   81ebc: 42 00 80 52  	mov	w2, #2
   81ec0: e0 03 01 aa  	mov	x0, x1
   81ec4: e1 03 08 aa  	mov	x1, x8
   81ec8: e3 fa ff 97  	bl	0x80a54 <_ZN4core3fmt9Formatter12pad_integral17h4be5fae25bf478d6E>
   81ecc: fe 43 40 f9  	ldr	x30, [sp, #128]
   81ed0: ff 43 02 91  	add	sp, sp, #144
   81ed4: c0 03 5f d6  	ret
   81ed8: e8 04 80 52  	mov	w8, #39
   81edc: 1f 8c 01 f1  	cmp	x0, #99
   81ee0: 6d 02 00 54  	b.le	0x81f2c <_ZN4core3fmt3num52_$LT$impl$u20$core..fmt..Debug$u20$for$u20$usize$GT$3fmt17h420029119b997121E+0x1c8>
   81ee4: ea a3 90 52  	mov	w10, #34079
   81ee8: 09 3c 00 12  	and	w9, w0, #0xffff
   81eec: 6a 3d aa 72  	movk	w10, #20971, lsl #16
   81ef0: 29 7d aa 9b  	umull	x9, w9, w10
   81ef4: 6b 0c 80 12  	mov	w11, #-100
   81ef8: 0a 00 00 d0  	adrp	x10, 0x83000 <_ZN4core3fmt3num52_$LT$impl$u20$core..fmt..Debug$u20$for$u20$usize$GT$3fmt17h420029119b997121E+0x19c>
   81efc: 29 fd 65 d3  	lsr	x9, x9, #37
   81f00: 4a c9 16 91  	add	x10, x10, #1458
   81f04: 2b 01 0b 1b  	madd	w11, w9, w11, w0
   81f08: 4a 25 2b 8b  	add	x10, x10, w11, uxth #1
   81f0c: 4b 05 40 39  	ldrb	w11, [x10, #1]
   81f10: 4a 01 40 39  	ldrb	w10, [x10]
   81f14: 08 09 00 d1  	sub	x8, x8, #2
   81f18: ec 03 00 91  	mov	x12, sp
   81f1c: 8c 01 08 8b  	add	x12, x12, x8
   81f20: e0 03 09 aa  	mov	x0, x9
   81f24: 8b 05 00 39  	strb	w11, [x12, #1]
   81f28: 8a 01 00 39  	strb	w10, [x12]
   81f2c: 1f 28 00 f1  	cmp	x0, #10
   81f30: ca 00 00 54  	b.ge	0x81f48 <_ZN4core3fmt3num52_$LT$impl$u20$core..fmt..Debug$u20$for$u20$usize$GT$3fmt17h420029119b997121E+0x1e4>
   81f34: 08 05 00 d1  	sub	x8, x8, #1
   81f38: 09 c0 00 11  	add	w9, w0, #48
   81f3c: ea 03 00 91  	mov	x10, sp
   81f40: 49 69 28 38  	strb	w9, [x10, x8]
   81f44: 0b 00 00 14  	b	0x81f70 <_ZN4core3fmt3num52_$LT$impl$u20$core..fmt..Debug$u20$for$u20$usize$GT$3fmt17h420029119b997121E+0x20c>
   81f48: 09 00 00 d0  	adrp	x9, 0x83000 <_ZN4core3fmt3num52_$LT$impl$u20$core..fmt..Debug$u20$for$u20$usize$GT$3fmt17h420029119b997121E+0x1ec>
   81f4c: 29 c9 16 91  	add	x9, x9, #1458
   81f50: 29 05 00 8b  	add	x9, x9, x0, lsl #1
   81f54: 2a 05 40 39  	ldrb	w10, [x9, #1]
   81f58: 29 01 40 39  	ldrb	w9, [x9]
   81f5c: 08 09 00 d1  	sub	x8, x8, #2
   81f60: eb 03 00 91  	mov	x11, sp
   81f64: 6b 01 08 8b  	add	x11, x11, x8
   81f68: 6a 05 00 39  	strb	w10, [x11, #1]
   81f6c: 69 01 00 39  	strb	w9, [x11]
   81f70: e9 03 00 91  	mov	x9, sp
   81f74: ea 04 80 52  	mov	w10, #39
   81f78: 23 01 08 8b  	add	x3, x9, x8
   81f7c: 44 01 08 cb  	sub	x4, x10, x8
   81f80: 08 00 00 d0  	adrp	x8, 0x83000 <_ZN4core3fmt3num52_$LT$impl$u20$core..fmt..Debug$u20$for$u20$usize$GT$3fmt17h420029119b997121E+0x224>
   81f84: 08 81 14 91  	add	x8, x8, #1312
   81f88: e0 03 01 aa  	mov	x0, x1
   81f8c: e1 03 08 aa  	mov	x1, x8
   81f90: e2 03 1f aa  	mov	x2, xzr
   81f94: b0 fa ff 97  	bl	0x80a54 <_ZN4core3fmt9Formatter12pad_integral17h4be5fae25bf478d6E>
   81f98: fe 43 40 f9  	ldr	x30, [sp, #128]
   81f9c: ff 43 02 91  	add	sp, sp, #144
   81fa0: c0 03 5f d6  	ret
   81fa4: 02 00 00 d0  	adrp	x2, 0x83000 <_ZN4core3fmt3num52_$LT$impl$u20$core..fmt..Debug$u20$for$u20$usize$GT$3fmt17h420029119b997121E+0x248>
   81fa8: 42 80 1c 91  	add	x2, x2, #1824
   81fac: 01 10 80 52  	mov	w1, #128
   81fb0: 78 fb ff 97  	bl	0x80d90 <_ZN4core5slice5index26slice_start_index_len_fail17ha5c8a54d8fb05d93E>
   81fb4: 20 00 20 d4  	brk	#0x1

0000000000081fb8 <_ZN4core7unicode12unicode_data15grapheme_extend6lookup17h0525d17e88c4ad5eE>:
   81fb8: 0a 00 00 d0  	adrp	x10, 0x83000 <_ZN4core7unicode12unicode_data15grapheme_extend6lookup17h0525d17e88c4ad5eE+0x8>
   81fbc: e8 03 1f aa  	mov	x8, xzr
   81fc0: 09 50 15 53  	lsl	w9, w0, #11
   81fc4: ec 03 80 52  	mov	w12, #31
   81fc8: 4a d1 3c 91  	add	x10, x10, #3892
   81fcc: eb 03 80 52  	mov	w11, #31
   81fd0: 04 00 00 14  	b	0x81fe0 <_ZN4core7unicode12unicode_data15grapheme_extend6lookup17h0525d17e88c4ad5eE+0x28>
   81fd4: 88 05 00 91  	add	x8, x12, #1
   81fd8: 6c 01 08 eb  	subs	x12, x11, x8
   81fdc: 29 01 00 54  	b.ls	0x82000 <_ZN4core7unicode12unicode_data15grapheme_extend6lookup17h0525d17e88c4ad5eE+0x48>
   81fe0: 0c 05 4c 8b  	add	x12, x8, x12, lsr #1
   81fe4: 4d 79 6c b8  	ldr	w13, [x10, x12, lsl #2]
   81fe8: ad 51 15 53  	lsl	w13, w13, #11
   81fec: bf 01 09 6b  	cmp	w13, w9
   81ff0: 23 ff ff 54  	b.lo	0x81fd4 <_ZN4core7unicode12unicode_data15grapheme_extend6lookup17h0525d17e88c4ad5eE+0x1c>
   81ff4: eb 03 0c aa  	mov	x11, x12
   81ff8: 01 ff ff 54  	b.ne	0x81fd8 <_ZN4core7unicode12unicode_data15grapheme_extend6lookup17h0525d17e88c4ad5eE+0x20>
   81ffc: 88 05 00 91  	add	x8, x12, #1
   82000: 1f 79 00 f1  	cmp	x8, #30
   82004: e8 05 00 54  	b.hi	0x820c0 <_ZN4core7unicode12unicode_data15grapheme_extend6lookup17h0525d17e88c4ad5eE+0x108>
   82008: 1f 79 00 f1  	cmp	x8, #30
   8200c: 21 01 00 54  	b.ne	0x82030 <_ZN4core7unicode12unicode_data15grapheme_extend6lookup17h0525d17e88c4ad5eE+0x78>
   82010: 2b 56 80 52  	mov	w11, #689
   82014: 09 05 00 f1  	subs	x9, x8, #1
   82018: 63 01 00 54  	b.lo	0x82044 <_ZN4core7unicode12unicode_data15grapheme_extend6lookup17h0525d17e88c4ad5eE+0x8c>
   8201c: 3f 7d 00 f1  	cmp	x9, #31
   82020: c2 05 00 54  	b.hs	0x820d8 <_ZN4core7unicode12unicode_data15grapheme_extend6lookup17h0525d17e88c4ad5eE+0x120>
   82024: 49 79 69 b8  	ldr	w9, [x10, x9, lsl #2]
   82028: 2c 51 00 12  	and	w12, w9, #0x1fffff
   8202c: 07 00 00 14  	b	0x82048 <_ZN4core7unicode12unicode_data15grapheme_extend6lookup17h0525d17e88c4ad5eE+0x90>
   82030: 49 09 08 8b  	add	x9, x10, x8, lsl #2
   82034: 29 05 40 b9  	ldr	w9, [x9, #4]
   82038: 2b fd 55 d3  	lsr	x11, x9, #21
   8203c: 09 05 00 f1  	subs	x9, x8, #1
   82040: e2 fe ff 54  	b.hs	0x8201c <_ZN4core7unicode12unicode_data15grapheme_extend6lookup17h0525d17e88c4ad5eE+0x64>
   82044: ec 03 1f 2a  	mov	w12, wzr
   82048: 48 79 68 b8  	ldr	w8, [x10, x8, lsl #2]
   8204c: 08 fd 55 d3  	lsr	x8, x8, #21
   82050: 09 05 00 91  	add	x9, x8, #1
   82054: 7f 01 09 eb  	cmp	x11, x9
   82058: 60 02 00 54  	b.eq	0x820a4 <_ZN4core7unicode12unicode_data15grapheme_extend6lookup17h0525d17e88c4ad5eE+0xec>
   8205c: 0a 00 0c 4b  	sub	w10, w0, w12
   82060: 1f c5 0a f1  	cmp	x8, #689
   82064: 2c 56 80 52  	mov	w12, #689
   82068: 00 81 8c 9a  	csel	x0, x8, x12, hi
   8206c: 0c 00 00 b0  	adrp	x12, 0x83000 <_ZN4core7unicode12unicode_data15grapheme_extend6lookup17h0525d17e88c4ad5eE+0xb8>
   82070: e9 03 1f 2a  	mov	w9, wzr
   82074: 6b 05 00 d1  	sub	x11, x11, #1
   82078: 8c 81 3f 91  	add	x12, x12, #4064
   8207c: 1f 00 08 eb  	cmp	x0, x8
   82080: 60 01 00 54  	b.eq	0x820ac <_ZN4core7unicode12unicode_data15grapheme_extend6lookup17h0525d17e88c4ad5eE+0xf4>
   82084: 8d 69 68 38  	ldrb	w13, [x12, x8]
   82088: 29 01 0d 0b  	add	w9, w9, w13
   8208c: 3f 01 0a 6b  	cmp	w9, w10
   82090: a8 00 00 54  	b.hi	0x820a4 <_ZN4core7unicode12unicode_data15grapheme_extend6lookup17h0525d17e88c4ad5eE+0xec>
   82094: 08 05 00 91  	add	x8, x8, #1
   82098: 7f 01 08 eb  	cmp	x11, x8
   8209c: 01 ff ff 54  	b.ne	0x8207c <_ZN4core7unicode12unicode_data15grapheme_extend6lookup17h0525d17e88c4ad5eE+0xc4>
   820a0: e8 03 0b aa  	mov	x8, x11
   820a4: 00 01 00 12  	and	w0, w8, #0x1
   820a8: c0 03 5f d6  	ret
   820ac: 02 00 00 d0  	adrp	x2, 0x84000 <_ZN4core7unicode12unicode_data15grapheme_extend6lookup17h0525d17e88c4ad5eE+0xfc>
   820b0: 42 60 0a 91  	add	x2, x2, #664
   820b4: 21 56 80 52  	mov	w1, #689
   820b8: e9 f9 ff 97  	bl	0x8085c <_ZN4core9panicking18panic_bounds_check17h21e59d1a29014f09E>
   820bc: 20 00 20 d4  	brk	#0x1
   820c0: 02 00 00 b0  	adrp	x2, 0x83000 <_ZN4core7unicode12unicode_data15grapheme_extend6lookup17h0525d17e88c4ad5eE+0x10c>
   820c4: 42 c0 3e 91  	add	x2, x2, #4016
   820c8: e1 03 80 52  	mov	w1, #31
   820cc: e0 03 08 aa  	mov	x0, x8
   820d0: e3 f9 ff 97  	bl	0x8085c <_ZN4core9panicking18panic_bounds_check17h21e59d1a29014f09E>
   820d4: 20 00 20 d4  	brk	#0x1
   820d8: 02 00 00 b0  	adrp	x2, 0x83000 <_ZN4core7unicode12unicode_data15grapheme_extend6lookup17h0525d17e88c4ad5eE+0x124>
   820dc: 42 20 3f 91  	add	x2, x2, #4040
   820e0: e1 03 80 52  	mov	w1, #31
   820e4: e0 03 09 aa  	mov	x0, x9
   820e8: dd f9 ff 97  	bl	0x8085c <_ZN4core9panicking18panic_bounds_check17h21e59d1a29014f09E>
   820ec: 20 00 20 d4  	brk	#0x1

00000000000820f0 <_ZN4core7unicode9printable12is_printable17h809bc46350007ff2E>:
   820f0: 1f 40 40 71  	cmp	w0, #16, lsl #12
   820f4: a2 04 00 54  	b.hs	0x82188 <_ZN4core7unicode9printable12is_printable17h809bc46350007ff2E+0x98>
   820f8: 0c 00 00 b0  	adrp	x12, 0x83000 <_ZN4core7unicode9printable12is_printable17h809bc46350007ff2E+0xc>
   820fc: 0b 00 00 b0  	adrp	x11, 0x83000 <_ZN4core7unicode9printable12is_printable17h809bc46350007ff2E+0x10>
   82100: 0d 00 00 b0  	adrp	x13, 0x83000 <_ZN4core7unicode9printable12is_printable17h809bc46350007ff2E+0x14>
   82104: e9 03 1f aa  	mov	x9, xzr
   82108: 8c 3d 26 91  	add	x12, x12, #2447
   8210c: 0a 7c 08 53  	lsr	w10, w0, #8
   82110: 6b 01 28 91  	add	x11, x11, #2560
   82114: ad 85 27 91  	add	x13, x13, #2529
   82118: 88 01 40 39  	ldrb	w8, [x12]
   8211c: 8e 05 40 39  	ldrb	w14, [x12, #1]
   82120: 8c 09 00 91  	add	x12, x12, #2
   82124: 1f 01 2a 6b  	cmp	w8, w10, uxtb
   82128: 28 01 0e 8b  	add	x8, x9, x14
   8212c: 81 01 00 54  	b.ne	0x8215c <_ZN4core7unicode9printable12is_printable17h809bc46350007ff2E+0x6c>
   82130: 1f 01 09 eb  	cmp	x8, x9
   82134: a3 11 00 54  	b.lo	0x82368 <_ZN4core7unicode9printable12is_printable17h809bc46350007ff2E+0x278>
   82138: 1f 89 04 f1  	cmp	x8, #290
   8213c: 28 12 00 54  	b.hi	0x82380 <_ZN4core7unicode9printable12is_printable17h809bc46350007ff2E+0x290>
   82140: 69 01 09 8b  	add	x9, x11, x9
   82144: ee 00 00 b4  	cbz	x14, 0x82160 <_ZN4core7unicode9printable12is_printable17h809bc46350007ff2E+0x70>
   82148: 2f 15 40 38  	ldrb	w15, [x9], #1
   8214c: ce 05 00 d1  	sub	x14, x14, #1
   82150: ff 01 20 6b  	cmp	w15, w0, uxtb
   82154: 81 ff ff 54  	b.ne	0x82144 <_ZN4core7unicode9printable12is_printable17h809bc46350007ff2E+0x54>
   82158: 32 00 00 14  	b	0x82220 <_ZN4core7unicode9printable12is_printable17h809bc46350007ff2E+0x130>
   8215c: 88 00 00 54  	b.hi	0x8216c <_ZN4core7unicode9printable12is_printable17h809bc46350007ff2E+0x7c>
   82160: 9f 01 0d eb  	cmp	x12, x13
   82164: e9 03 08 aa  	mov	x9, x8
   82168: 81 fd ff 54  	b.ne	0x82118 <_ZN4core7unicode9printable12is_printable17h809bc46350007ff2E+0x28>
   8216c: 0b 00 00 b0  	adrp	x11, 0x83000 <_ZN4core7unicode9printable12is_printable17h809bc46350007ff2E+0x80>
   82170: 0a 00 00 b0  	adrp	x10, 0x83000 <_ZN4core7unicode9printable12is_printable17h809bc46350007ff2E+0x84>
   82174: 09 3c 00 12  	and	w9, w0, #0xffff
   82178: 6b 89 2c 91  	add	x11, x11, #2850
   8217c: 28 00 80 52  	mov	w8, #1
   82180: 4a 5d 31 91  	add	x10, x10, #3159
   82184: 2f 00 00 14  	b	0x82240 <_ZN4core7unicode9printable12is_printable17h809bc46350007ff2E+0x150>
   82188: 1f 80 40 71  	cmp	w0, #32, lsl #12
   8218c: 42 07 00 54  	b.hs	0x82274 <_ZN4core7unicode9printable12is_printable17h809bc46350007ff2E+0x184>
   82190: 0c 00 00 b0  	adrp	x12, 0x83000 <_ZN4core7unicode9printable12is_printable17h809bc46350007ff2E+0xa4>
   82194: 0b 00 00 b0  	adrp	x11, 0x83000 <_ZN4core7unicode9printable12is_printable17h809bc46350007ff2E+0xa8>
   82198: 0d 00 00 b0  	adrp	x13, 0x83000 <_ZN4core7unicode9printable12is_printable17h809bc46350007ff2E+0xac>
   8219c: e9 03 1f aa  	mov	x9, xzr
   821a0: 8c c1 31 91  	add	x12, x12, #3184
   821a4: 0a 7c 08 53  	lsr	w10, w0, #8
   821a8: 6b f1 32 91  	add	x11, x11, #3260
   821ac: ad f1 32 91  	add	x13, x13, #3260
   821b0: 88 01 40 39  	ldrb	w8, [x12]
   821b4: 8e 05 40 39  	ldrb	w14, [x12, #1]
   821b8: 8c 09 00 91  	add	x12, x12, #2
   821bc: 1f 01 2a 6b  	cmp	w8, w10, uxtb
   821c0: 28 01 0e 8b  	add	x8, x9, x14
   821c4: 81 01 00 54  	b.ne	0x821f4 <_ZN4core7unicode9printable12is_printable17h809bc46350007ff2E+0x104>
   821c8: 1f 01 09 eb  	cmp	x8, x9
   821cc: e3 0c 00 54  	b.lo	0x82368 <_ZN4core7unicode9printable12is_printable17h809bc46350007ff2E+0x278>
   821d0: 1f bd 02 f1  	cmp	x8, #175
   821d4: e8 0d 00 54  	b.hi	0x82390 <_ZN4core7unicode9printable12is_printable17h809bc46350007ff2E+0x2a0>
   821d8: 69 01 09 8b  	add	x9, x11, x9
   821dc: ee 00 00 b4  	cbz	x14, 0x821f8 <_ZN4core7unicode9printable12is_printable17h809bc46350007ff2E+0x108>
   821e0: 2f 15 40 38  	ldrb	w15, [x9], #1
   821e4: ce 05 00 d1  	sub	x14, x14, #1
   821e8: ff 01 20 6b  	cmp	w15, w0, uxtb
   821ec: 81 ff ff 54  	b.ne	0x821dc <_ZN4core7unicode9printable12is_printable17h809bc46350007ff2E+0xec>
   821f0: 0c 00 00 14  	b	0x82220 <_ZN4core7unicode9printable12is_printable17h809bc46350007ff2E+0x130>
   821f4: 88 00 00 54  	b.hi	0x82204 <_ZN4core7unicode9printable12is_printable17h809bc46350007ff2E+0x114>
   821f8: 9f 01 0d eb  	cmp	x12, x13
   821fc: e9 03 08 aa  	mov	x9, x8
   82200: 81 fd ff 54  	b.ne	0x821b0 <_ZN4core7unicode9printable12is_printable17h809bc46350007ff2E+0xc0>
   82204: 0b 00 00 b0  	adrp	x11, 0x83000 <_ZN4core7unicode9printable12is_printable17h809bc46350007ff2E+0x118>
   82208: 0a 00 00 b0  	adrp	x10, 0x83000 <_ZN4core7unicode9printable12is_printable17h809bc46350007ff2E+0x11c>
   8220c: 09 3c 00 12  	and	w9, w0, #0xffff
   82210: 6b ad 35 91  	add	x11, x11, #3435
   82214: 28 00 80 52  	mov	w8, #1
   82218: 4a 39 3c 91  	add	x10, x10, #3854
   8221c: 45 00 00 14  	b	0x82330 <_ZN4core7unicode9printable12is_printable17h809bc46350007ff2E+0x240>
   82220: e0 03 00 12  	and	w0, wzr, #0x1
   82224: c0 03 5f d6  	ret
   82228: eb 03 0d aa  	mov	x11, x13
   8222c: 29 01 0c 6b  	subs	w9, w9, w12
   82230: 84 09 00 54  	b.mi	0x82360 <_ZN4core7unicode9printable12is_printable17h809bc46350007ff2E+0x270>
   82234: 7f 01 0a eb  	cmp	x11, x10
   82238: 08 01 00 52  	eor	w8, w8, #0x1
   8223c: 20 09 00 54  	b.eq	0x82360 <_ZN4core7unicode9printable12is_printable17h809bc46350007ff2E+0x270>
   82240: ed 03 0b aa  	mov	x13, x11
   82244: ae 15 c0 38  	ldrsb	w14, [x13], #1
   82248: cc 1d 00 12  	and	w12, w14, #0xff
   8224c: ee fe ff 36  	tbz	w14, #31, 0x82228 <_ZN4core7unicode9printable12is_printable17h809bc46350007ff2E+0x138>
   82250: bf 01 0a eb  	cmp	x13, x10
   82254: a0 0a 00 54  	b.eq	0x823a8 <_ZN4core7unicode9printable12is_printable17h809bc46350007ff2E+0x2b8>
   82258: 8d 19 00 12  	and	w13, w12, #0x7f
   8225c: 6c 05 40 39  	ldrb	w12, [x11, #1]
   82260: 6b 09 00 91  	add	x11, x11, #2
   82264: ac 19 18 33  	bfi	w12, w13, #8, #7
   82268: 29 01 0c 6b  	subs	w9, w9, w12
   8226c: 45 fe ff 54  	b.pl	0x82234 <_ZN4core7unicode9printable12is_printable17h809bc46350007ff2E+0x144>
   82270: 3c 00 00 14  	b	0x82360 <_ZN4core7unicode9printable12is_printable17h809bc46350007ff2E+0x270>
   82274: a8 96 9d 52  	mov	w8, #60597
   82278: 88 ff bf 72  	movk	w8, #65532, lsl #16
   8227c: a9 b6 9d 52  	mov	w9, #60853
   82280: 08 00 08 0b  	add	w8, w0, w8
   82284: 49 01 a0 72  	movk	w9, #10, lsl #16
   82288: 1f 01 09 6b  	cmp	w8, w9
   8228c: e8 03 1f 2a  	mov	w8, wzr
   82290: 83 06 00 54  	b.lo	0x82360 <_ZN4core7unicode9printable12is_printable17h809bc46350007ff2E+0x270>
   82294: 49 bc 80 52  	mov	w9, #1506
   82298: a9 ff bf 72  	movk	w9, #65533, lsl #16
   8229c: 09 00 09 0b  	add	w9, w0, w9
   822a0: 3f 89 17 71  	cmp	w9, #1506
   822a4: e3 05 00 54  	b.lo	0x82360 <_ZN4core7unicode9printable12is_printable17h809bc46350007ff2E+0x270>
   822a8: 29 f5 38 11  	add	w9, w9, #3645
   822ac: 3f 7d 30 71  	cmp	w9, #3103
   822b0: 83 05 00 54  	b.lo	0x82360 <_ZN4core7unicode9printable12is_printable17h809bc46350007ff2E+0x270>
   822b4: c9 2b 86 52  	mov	w9, #12638
   822b8: a9 ff bf 72  	movk	w9, #65533, lsl #16
   822bc: 09 00 09 0b  	add	w9, w0, w9
   822c0: 3f 39 00 71  	cmp	w9, #14
   822c4: e3 04 00 54  	b.lo	0x82360 <_ZN4core7unicode9printable12is_printable17h809bc46350007ff2E+0x270>
   822c8: ca 03 97 52  	mov	w10, #47134
   822cc: 09 4c 1f 12  	and	w9, w0, #0x1ffffe
   822d0: 4a 00 a0 72  	movk	w10, #2, lsl #16
   822d4: 3f 01 0a 6b  	cmp	w9, w10
   822d8: 40 04 00 54  	b.eq	0x82360 <_ZN4core7unicode9printable12is_printable17h809bc46350007ff2E+0x270>
   822dc: 49 24 8b 52  	mov	w9, #22818
   822e0: a9 ff bf 72  	movk	w9, #65533, lsl #16
   822e4: 09 00 09 0b  	add	w9, w0, w9
   822e8: 3f 89 00 71  	cmp	w9, #34
   822ec: a3 03 00 54  	b.lo	0x82360 <_ZN4core7unicode9printable12is_printable17h809bc46350007ff2E+0x270>
   822f0: 69 19 89 52  	mov	w9, #18635
   822f4: a9 ff bf 72  	movk	w9, #65533, lsl #16
   822f8: 09 00 09 0b  	add	w9, w0, w9
   822fc: 3f 2d 00 71  	cmp	w9, #11
   82300: 03 03 00 54  	b.lo	0x82360 <_ZN4core7unicode9printable12is_printable17h809bc46350007ff2E+0x270>
   82304: 08 3e 80 52  	mov	w8, #496
   82308: c8 01 a0 72  	movk	w8, #14, lsl #16
   8230c: 1f 00 08 6b  	cmp	w0, w8
   82310: e0 27 9f 1a  	cset	w0, lo
   82314: c0 03 5f d6  	ret
   82318: eb 03 0d aa  	mov	x11, x13
   8231c: 29 01 0c 6b  	subs	w9, w9, w12
   82320: 04 02 00 54  	b.mi	0x82360 <_ZN4core7unicode9printable12is_printable17h809bc46350007ff2E+0x270>
   82324: 7f 01 0a eb  	cmp	x11, x10
   82328: 08 01 00 52  	eor	w8, w8, #0x1
   8232c: a0 01 00 54  	b.eq	0x82360 <_ZN4core7unicode9printable12is_printable17h809bc46350007ff2E+0x270>
   82330: ed 03 0b aa  	mov	x13, x11
   82334: ae 15 c0 38  	ldrsb	w14, [x13], #1
   82338: cc 1d 00 12  	and	w12, w14, #0xff
   8233c: ee fe ff 36  	tbz	w14, #31, 0x82318 <_ZN4core7unicode9printable12is_printable17h809bc46350007ff2E+0x228>
   82340: bf 01 0a eb  	cmp	x13, x10
   82344: 20 03 00 54  	b.eq	0x823a8 <_ZN4core7unicode9printable12is_printable17h809bc46350007ff2E+0x2b8>
   82348: 8d 19 00 12  	and	w13, w12, #0x7f
   8234c: 6c 05 40 39  	ldrb	w12, [x11, #1]
   82350: 6b 09 00 91  	add	x11, x11, #2
   82354: ac 19 18 33  	bfi	w12, w13, #8, #7
   82358: 29 01 0c 6b  	subs	w9, w9, w12
   8235c: 45 fe ff 54  	b.pl	0x82324 <_ZN4core7unicode9printable12is_printable17h809bc46350007ff2E+0x234>
   82360: 00 01 00 12  	and	w0, w8, #0x1
   82364: c0 03 5f d6  	ret
   82368: 02 00 00 b0  	adrp	x2, 0x83000 <_ZN4core7unicode9printable12is_printable17h809bc46350007ff2E+0x27c>
   8236c: 42 a0 27 91  	add	x2, x2, #2536
   82370: e0 03 09 aa  	mov	x0, x9
   82374: e1 03 08 aa  	mov	x1, x8
   82378: 42 fc ff 97  	bl	0x81480 <_ZN4core5slice5index22slice_index_order_fail17he71d7140076fff6eE>
   8237c: 20 00 20 d4  	brk	#0x1
   82380: 02 00 00 b0  	adrp	x2, 0x83000 <_ZN4core7unicode9printable12is_printable17h809bc46350007ff2E+0x294>
   82384: 42 a0 27 91  	add	x2, x2, #2536
   82388: 41 24 80 52  	mov	w1, #290
   8238c: 04 00 00 14  	b	0x8239c <_ZN4core7unicode9printable12is_printable17h809bc46350007ff2E+0x2ac>
   82390: 02 00 00 b0  	adrp	x2, 0x83000 <_ZN4core7unicode9printable12is_printable17h809bc46350007ff2E+0x2a4>
   82394: 42 a0 27 91  	add	x2, x2, #2536
   82398: e1 15 80 52  	mov	w1, #175
   8239c: e0 03 08 aa  	mov	x0, x8
   823a0: 8e fa ff 97  	bl	0x80dd8 <_ZN4core5slice5index24slice_end_index_len_fail17h827cf37c6cc32b14E>
   823a4: 20 00 20 d4  	brk	#0x1
   823a8: 00 00 00 b0  	adrp	x0, 0x83000 <_ZN4core7unicode9printable12is_printable17h809bc46350007ff2E+0x2bc>
   823ac: 02 00 00 b0  	adrp	x2, 0x83000 <_ZN4core7unicode9printable12is_printable17h809bc46350007ff2E+0x2c0>
   823b0: 00 00 23 91  	add	x0, x0, #2240
   823b4: 42 60 31 91  	add	x2, x2, #3160
   823b8: 61 05 80 52  	mov	w1, #43
   823bc: 99 fa ff 97  	bl	0x80e20 <_ZN4core9panicking5panic17ha7217054e020f4cfE>
   823c0: 20 00 20 d4  	brk	#0x1

00000000000823c4 <_ZN4core3fmt8builders11DebugStruct5field17hdc89cd457900d764E>:
   823c4: ff 83 02 d1  	sub	sp, sp, #160
   823c8: fe 67 06 a9  	stp	x30, x25, [sp, #96]
   823cc: f8 5f 07 a9  	stp	x24, x23, [sp, #112]
   823d0: f6 57 08 a9  	stp	x22, x21, [sp, #128]
   823d4: f4 4f 09 a9  	stp	x20, x19, [sp, #144]
   823d8: 08 20 40 39  	ldrb	w8, [x0, #8]
   823dc: f3 03 00 aa  	mov	x19, x0
   823e0: 39 00 80 52  	mov	w25, #1
   823e4: 20 00 80 52  	mov	w0, #1
   823e8: 68 0a 00 35  	cbnz	w8, 0x82534 <_ZN4core3fmt8builders11DebugStruct5field17hdc89cd457900d764E+0x170>
   823ec: 76 02 40 f9  	ldr	x22, [x19]
   823f0: 69 26 40 39  	ldrb	w9, [x19, #9]
   823f4: f5 03 04 aa  	mov	x21, x4
   823f8: f4 03 03 aa  	mov	x20, x3
   823fc: c8 32 40 b9  	ldr	w8, [x22, #48]
   82400: f7 03 02 aa  	mov	x23, x2
   82404: f8 03 01 aa  	mov	x24, x1
   82408: e8 03 10 37  	tbnz	w8, #2, 0x82484 <_ZN4core3fmt8builders11DebugStruct5field17hdc89cd457900d764E+0xc0>
   8240c: c0 22 42 a9  	ldp	x0, x8, [x22, #32]
   82410: 0a 00 00 d0  	adrp	x10, 0x84000 <_ZN4core3fmt8builders11DebugStruct5field17hdc89cd457900d764E+0x54>
   82414: 0b 00 00 d0  	adrp	x11, 0x84000 <_ZN4core3fmt8builders11DebugStruct5field17hdc89cd457900d764E+0x58>
   82418: 4a fd 0b 91  	add	x10, x10, #767
   8241c: 08 0d 40 f9  	ldr	x8, [x8, #24]
   82420: 6b f1 0b 91  	add	x11, x11, #764
   82424: 3f 01 00 71  	cmp	w9, #0
   82428: 49 00 80 52  	mov	w9, #2
   8242c: 61 01 8a 9a  	csel	x1, x11, x10, eq
   82430: 22 15 89 9a  	cinc	x2, x9, eq
   82434: 00 01 3f d6  	blr	x8
   82438: c0 07 00 37  	tbnz	w0, #0, 0x82530 <_ZN4core3fmt8builders11DebugStruct5field17hdc89cd457900d764E+0x16c>
   8243c: c0 22 42 a9  	ldp	x0, x8, [x22, #32]
   82440: e1 03 18 aa  	mov	x1, x24
   82444: e2 03 17 aa  	mov	x2, x23
   82448: 08 0d 40 f9  	ldr	x8, [x8, #24]
   8244c: 00 01 3f d6  	blr	x8
   82450: 00 07 00 37  	tbnz	w0, #0, 0x82530 <_ZN4core3fmt8builders11DebugStruct5field17hdc89cd457900d764E+0x16c>
   82454: c0 22 42 a9  	ldp	x0, x8, [x22, #32]
   82458: 01 00 00 b0  	adrp	x1, 0x83000 <_ZN4core3fmt8builders11DebugStruct5field17hdc89cd457900d764E+0x98>
   8245c: 21 80 1f 91  	add	x1, x1, #2016
   82460: 42 00 80 52  	mov	w2, #2
   82464: 08 0d 40 f9  	ldr	x8, [x8, #24]
   82468: 00 01 3f d6  	blr	x8
   8246c: 20 06 00 37  	tbnz	w0, #0, 0x82530 <_ZN4core3fmt8builders11DebugStruct5field17hdc89cd457900d764E+0x16c>
   82470: a8 0e 40 f9  	ldr	x8, [x21, #24]
   82474: e0 03 14 aa  	mov	x0, x20
   82478: e1 03 16 aa  	mov	x1, x22
   8247c: 00 01 3f d6  	blr	x8
   82480: 2d 00 00 14  	b	0x82534 <_ZN4core3fmt8builders11DebugStruct5field17hdc89cd457900d764E+0x170>
   82484: 29 01 00 35  	cbnz	w9, 0x824a8 <_ZN4core3fmt8builders11DebugStruct5field17hdc89cd457900d764E+0xe4>
   82488: c0 22 42 a9  	ldp	x0, x8, [x22, #32]
   8248c: 01 00 00 d0  	adrp	x1, 0x84000 <_ZN4core3fmt8builders11DebugStruct5field17hdc89cd457900d764E+0xd0>
   82490: 21 04 0c 91  	add	x1, x1, #769
   82494: 62 00 80 52  	mov	w2, #3
   82498: 08 0d 40 f9  	ldr	x8, [x8, #24]
   8249c: 00 01 3f d6  	blr	x8
   824a0: 80 04 00 37  	tbnz	w0, #0, 0x82530 <_ZN4core3fmt8builders11DebugStruct5field17hdc89cd457900d764E+0x16c>
   824a4: c8 32 40 b9  	ldr	w8, [x22, #48]
   824a8: 29 00 80 52  	mov	w9, #1
   824ac: e9 73 00 39  	strb	w9, [sp, #28]
   824b0: c9 2e 42 a9  	ldp	x9, x11, [x22, #32]
   824b4: ea 73 00 91  	add	x10, sp, #28
   824b8: ec 03 00 91  	mov	x12, sp
   824bc: e0 03 00 91  	mov	x0, sp
   824c0: eb ab 00 a9  	stp	x11, x10, [sp, #8]
   824c4: e9 03 00 f9  	str	x9, [sp]
   824c8: c9 36 40 b9  	ldr	w9, [x22, #52]
   824cc: ca e2 40 39  	ldrb	w10, [x22, #56]
   824d0: cb 36 40 a9  	ldp	x11, x13, [x22]
   824d4: ce 3e 41 a9  	ldp	x14, x15, [x22, #16]
   824d8: e8 27 0a 29  	stp	w8, w9, [sp, #80]
   824dc: 08 00 00 d0  	adrp	x8, 0x84000 <_ZN4core3fmt8builders11DebugStruct5field17hdc89cd457900d764E+0x120>
   824e0: 08 21 0c 91  	add	x8, x8, #776
   824e4: e1 03 18 aa  	mov	x1, x24
   824e8: e2 03 17 aa  	mov	x2, x23
   824ec: ea 63 01 39  	strb	w10, [sp, #88]
   824f0: eb 37 02 a9  	stp	x11, x13, [sp, #32]
   824f4: ee 3f 03 a9  	stp	x14, x15, [sp, #48]
   824f8: ec 23 04 a9  	stp	x12, x8, [sp, #64]
   824fc: 0c fc ff 97  	bl	0x8152c <_ZN68_$LT$core..fmt..builders..PadAdapter$u20$as$u20$core..fmt..Write$GT$9write_str17h006d11991b68be72E>
   82500: 80 01 00 37  	tbnz	w0, #0, 0x82530 <_ZN4core3fmt8builders11DebugStruct5field17hdc89cd457900d764E+0x16c>
   82504: 01 00 00 b0  	adrp	x1, 0x83000 <_ZN4core3fmt8builders11DebugStruct5field17hdc89cd457900d764E+0x144>
   82508: 21 80 1f 91  	add	x1, x1, #2016
   8250c: e0 03 00 91  	mov	x0, sp
   82510: 42 00 80 52  	mov	w2, #2
   82514: 06 fc ff 97  	bl	0x8152c <_ZN68_$LT$core..fmt..builders..PadAdapter$u20$as$u20$core..fmt..Write$GT$9write_str17h006d11991b68be72E>
   82518: c0 00 00 35  	cbnz	w0, 0x82530 <_ZN4core3fmt8builders11DebugStruct5field17hdc89cd457900d764E+0x16c>
   8251c: a8 0e 40 f9  	ldr	x8, [x21, #24]
   82520: e1 83 00 91  	add	x1, sp, #32
   82524: e0 03 14 aa  	mov	x0, x20
   82528: 00 01 3f d6  	blr	x8
   8252c: 60 01 00 36  	tbz	w0, #0, 0x82558 <_ZN4core3fmt8builders11DebugStruct5field17hdc89cd457900d764E+0x194>
   82530: 20 00 80 52  	mov	w0, #1
   82534: 60 22 00 39  	strb	w0, [x19, #8]
   82538: 79 26 00 39  	strb	w25, [x19, #9]
   8253c: e0 03 13 aa  	mov	x0, x19
   82540: f4 4f 49 a9  	ldp	x20, x19, [sp, #144]
   82544: f6 57 48 a9  	ldp	x22, x21, [sp, #128]
   82548: f8 5f 47 a9  	ldp	x24, x23, [sp, #112]
   8254c: fe 67 46 a9  	ldp	x30, x25, [sp, #96]
   82550: ff 83 02 91  	add	sp, sp, #160
   82554: c0 03 5f d6  	ret
   82558: e0 23 44 a9  	ldp	x0, x8, [sp, #64]
   8255c: 01 00 00 d0  	adrp	x1, 0x84000 <_ZN4core3fmt8builders11DebugStruct5field17hdc89cd457900d764E+0x1a0>
   82560: 21 e0 0c 91  	add	x1, x1, #824
   82564: 42 00 80 52  	mov	w2, #2
   82568: 08 0d 40 f9  	ldr	x8, [x8, #24]
   8256c: 00 01 3f d6  	blr	x8
   82570: f1 ff ff 17  	b	0x82534 <_ZN4core3fmt8builders11DebugStruct5field17hdc89cd457900d764E+0x170>

0000000000082574 <_ZN4core3fmt5Write10write_char17h9e2cca690dfc629fE>:
   82574: fe 0f 1f f8  	str	x30, [sp, #-16]!
   82578: 3f 00 02 71  	cmp	w1, #128
   8257c: ff 0f 00 b9  	str	wzr, [sp, #12]
   82580: e2 00 00 54  	b.hs	0x8259c <_ZN4core3fmt5Write10write_char17h9e2cca690dfc629fE+0x28>
   82584: e1 33 00 39  	strb	w1, [sp, #12]
   82588: 22 00 80 52  	mov	w2, #1
   8258c: e1 33 00 91  	add	x1, sp, #12
   82590: e7 fb ff 97  	bl	0x8152c <_ZN68_$LT$core..fmt..builders..PadAdapter$u20$as$u20$core..fmt..Write$GT$9write_str17h006d11991b68be72E>
   82594: fe 07 41 f8  	ldr	x30, [sp], #16
   82598: c0 03 5f d6  	ret
   8259c: 3f 00 20 71  	cmp	w1, #2048
   825a0: 82 01 00 54  	b.hs	0x825d0 <_ZN4core3fmt5Write10write_char17h9e2cca690dfc629fE+0x5c>
   825a4: 28 7c 06 53  	lsr	w8, w1, #6
   825a8: 09 10 80 52  	mov	w9, #128
   825ac: 08 05 1a 32  	orr	w8, w8, #0xc0
   825b0: 29 14 00 33  	bfxil	w9, w1, #0, #6
   825b4: e8 33 00 39  	strb	w8, [sp, #12]
   825b8: e9 37 00 39  	strb	w9, [sp, #13]
   825bc: 42 00 80 52  	mov	w2, #2
   825c0: e1 33 00 91  	add	x1, sp, #12
   825c4: da fb ff 97  	bl	0x8152c <_ZN68_$LT$core..fmt..builders..PadAdapter$u20$as$u20$core..fmt..Write$GT$9write_str17h006d11991b68be72E>
   825c8: fe 07 41 f8  	ldr	x30, [sp], #16
   825cc: c0 03 5f d6  	ret
   825d0: 3f 40 40 71  	cmp	w1, #16, lsl #12
   825d4: e2 01 00 54  	b.hs	0x82610 <_ZN4core3fmt5Write10write_char17h9e2cca690dfc629fE+0x9c>
   825d8: 28 7c 0c 53  	lsr	w8, w1, #12
   825dc: 09 10 80 52  	mov	w9, #128
   825e0: 0a 10 80 52  	mov	w10, #128
   825e4: 08 09 1b 32  	orr	w8, w8, #0xe0
   825e8: 2a 2c 06 33  	bfxil	w10, w1, #6, #6
   825ec: 29 14 00 33  	bfxil	w9, w1, #0, #6
   825f0: e8 33 00 39  	strb	w8, [sp, #12]
   825f4: ea 37 00 39  	strb	w10, [sp, #13]
   825f8: e9 3b 00 39  	strb	w9, [sp, #14]
   825fc: 62 00 80 52  	mov	w2, #3
   82600: e1 33 00 91  	add	x1, sp, #12
   82604: ca fb ff 97  	bl	0x8152c <_ZN68_$LT$core..fmt..builders..PadAdapter$u20$as$u20$core..fmt..Write$GT$9write_str17h006d11991b68be72E>
   82608: fe 07 41 f8  	ldr	x30, [sp], #16
   8260c: c0 03 5f d6  	ret
   82610: 28 7c 12 53  	lsr	w8, w1, #18
   82614: 09 10 80 52  	mov	w9, #128
   82618: 0a 10 80 52  	mov	w10, #128
   8261c: 0b 10 80 52  	mov	w11, #128
   82620: 08 0d 1c 32  	orr	w8, w8, #0xf0
   82624: 2a 44 0c 33  	bfxil	w10, w1, #12, #6
   82628: 2b 2c 06 33  	bfxil	w11, w1, #6, #6
   8262c: 29 14 00 33  	bfxil	w9, w1, #0, #6
   82630: 82 00 80 52  	mov	w2, #4
   82634: e8 33 00 39  	strb	w8, [sp, #12]
   82638: ea 37 00 39  	strb	w10, [sp, #13]
   8263c: eb 3b 00 39  	strb	w11, [sp, #14]
   82640: e9 3f 00 39  	strb	w9, [sp, #15]
   82644: e1 33 00 91  	add	x1, sp, #12
   82648: b9 fb ff 97  	bl	0x8152c <_ZN68_$LT$core..fmt..builders..PadAdapter$u20$as$u20$core..fmt..Write$GT$9write_str17h006d11991b68be72E>
   8264c: fe 07 41 f8  	ldr	x30, [sp], #16
   82650: c0 03 5f d6  	ret

0000000000082654 <_ZN4core3fmt5Write9write_fmt17h031e20469903bdb9E>:
   82654: ff 03 01 d1  	sub	sp, sp, #64
   82658: fe 03 03 a9  	stp	x30, x0, [sp, #48]
   8265c: e0 03 00 91  	mov	x0, sp
   82660: 02 06 80 52  	mov	w2, #48
   82664: 15 03 00 94  	bl	0x832b8 <memcpy>
   82668: 01 00 00 d0  	adrp	x1, 0x84000 <_ZN4core3fmt5Write9write_fmt17h031e20469903bdb9E+0x1c>
   8266c: 21 00 0d 91  	add	x1, x1, #832
   82670: e0 e3 00 91  	add	x0, sp, #56
   82674: e2 03 00 91  	mov	x2, sp
   82678: 03 fb ff 97  	bl	0x81284 <_ZN4core3fmt5write17h4089dd81629a8d2eE>
   8267c: fe 1b 40 f9  	ldr	x30, [sp, #48]
   82680: ff 03 01 91  	add	sp, sp, #64
   82684: c0 03 5f d6  	ret

0000000000082688 <_ZN50_$LT$$RF$mut$u20$W$u20$as$u20$core..fmt..Write$GT$9write_str17h06cee42cc043f099E>:
   82688: 00 00 40 f9  	ldr	x0, [x0]
   8268c: a8 fb ff 17  	b	0x8152c <_ZN68_$LT$core..fmt..builders..PadAdapter$u20$as$u20$core..fmt..Write$GT$9write_str17h006d11991b68be72E>

0000000000082690 <_ZN50_$LT$$RF$mut$u20$W$u20$as$u20$core..fmt..Write$GT$10write_char17h84d77c247f809bd9E>:
   82690: fe 0f 1f f8  	str	x30, [sp, #-16]!
   82694: 00 00 40 f9  	ldr	x0, [x0]
   82698: 3f 00 02 71  	cmp	w1, #128
   8269c: ff 0f 00 b9  	str	wzr, [sp, #12]
   826a0: e2 00 00 54  	b.hs	0x826bc <_ZN50_$LT$$RF$mut$u20$W$u20$as$u20$core..fmt..Write$GT$10write_char17h84d77c247f809bd9E+0x2c>
   826a4: e1 33 00 39  	strb	w1, [sp, #12]
   826a8: 22 00 80 52  	mov	w2, #1
   826ac: e1 33 00 91  	add	x1, sp, #12
   826b0: 9f fb ff 97  	bl	0x8152c <_ZN68_$LT$core..fmt..builders..PadAdapter$u20$as$u20$core..fmt..Write$GT$9write_str17h006d11991b68be72E>
   826b4: fe 07 41 f8  	ldr	x30, [sp], #16
   826b8: c0 03 5f d6  	ret
   826bc: 3f 00 20 71  	cmp	w1, #2048
   826c0: 82 01 00 54  	b.hs	0x826f0 <_ZN50_$LT$$RF$mut$u20$W$u20$as$u20$core..fmt..Write$GT$10write_char17h84d77c247f809bd9E+0x60>
   826c4: 28 7c 06 53  	lsr	w8, w1, #6
   826c8: 09 10 80 52  	mov	w9, #128
   826cc: 08 05 1a 32  	orr	w8, w8, #0xc0
   826d0: 29 14 00 33  	bfxil	w9, w1, #0, #6
   826d4: e8 33 00 39  	strb	w8, [sp, #12]
   826d8: e9 37 00 39  	strb	w9, [sp, #13]
   826dc: 42 00 80 52  	mov	w2, #2
   826e0: e1 33 00 91  	add	x1, sp, #12
   826e4: 92 fb ff 97  	bl	0x8152c <_ZN68_$LT$core..fmt..builders..PadAdapter$u20$as$u20$core..fmt..Write$GT$9write_str17h006d11991b68be72E>
   826e8: fe 07 41 f8  	ldr	x30, [sp], #16
   826ec: c0 03 5f d6  	ret
   826f0: 3f 40 40 71  	cmp	w1, #16, lsl #12
   826f4: e2 01 00 54  	b.hs	0x82730 <_ZN50_$LT$$RF$mut$u20$W$u20$as$u20$core..fmt..Write$GT$10write_char17h84d77c247f809bd9E+0xa0>
   826f8: 28 7c 0c 53  	lsr	w8, w1, #12
   826fc: 09 10 80 52  	mov	w9, #128
   82700: 0a 10 80 52  	mov	w10, #128
   82704: 08 09 1b 32  	orr	w8, w8, #0xe0
   82708: 2a 2c 06 33  	bfxil	w10, w1, #6, #6
   8270c: 29 14 00 33  	bfxil	w9, w1, #0, #6
   82710: e8 33 00 39  	strb	w8, [sp, #12]
   82714: ea 37 00 39  	strb	w10, [sp, #13]
   82718: e9 3b 00 39  	strb	w9, [sp, #14]
   8271c: 62 00 80 52  	mov	w2, #3
   82720: e1 33 00 91  	add	x1, sp, #12
   82724: 82 fb ff 97  	bl	0x8152c <_ZN68_$LT$core..fmt..builders..PadAdapter$u20$as$u20$core..fmt..Write$GT$9write_str17h006d11991b68be72E>
   82728: fe 07 41 f8  	ldr	x30, [sp], #16
   8272c: c0 03 5f d6  	ret
   82730: 28 7c 12 53  	lsr	w8, w1, #18
   82734: 09 10 80 52  	mov	w9, #128
   82738: 0a 10 80 52  	mov	w10, #128
   8273c: 0b 10 80 52  	mov	w11, #128
   82740: 08 0d 1c 32  	orr	w8, w8, #0xf0
   82744: 2a 44 0c 33  	bfxil	w10, w1, #12, #6
   82748: 2b 2c 06 33  	bfxil	w11, w1, #6, #6
   8274c: 29 14 00 33  	bfxil	w9, w1, #0, #6
   82750: 82 00 80 52  	mov	w2, #4
   82754: e8 33 00 39  	strb	w8, [sp, #12]
   82758: ea 37 00 39  	strb	w10, [sp, #13]
   8275c: eb 3b 00 39  	strb	w11, [sp, #14]
   82760: e9 3f 00 39  	strb	w9, [sp, #15]
   82764: e1 33 00 91  	add	x1, sp, #12
   82768: 71 fb ff 97  	bl	0x8152c <_ZN68_$LT$core..fmt..builders..PadAdapter$u20$as$u20$core..fmt..Write$GT$9write_str17h006d11991b68be72E>
   8276c: fe 07 41 f8  	ldr	x30, [sp], #16
   82770: c0 03 5f d6  	ret

0000000000082774 <_ZN50_$LT$$RF$mut$u20$W$u20$as$u20$core..fmt..Write$GT$9write_fmt17h17dad8312d16cedaE>:
   82774: ff 03 01 d1  	sub	sp, sp, #64
   82778: 08 00 40 f9  	ldr	x8, [x0]
   8277c: e0 03 00 91  	mov	x0, sp
   82780: 02 06 80 52  	mov	w2, #48
   82784: fe 23 03 a9  	stp	x30, x8, [sp, #48]
   82788: cc 02 00 94  	bl	0x832b8 <memcpy>
   8278c: 01 00 00 d0  	adrp	x1, 0x84000 <_ZN50_$LT$$RF$mut$u20$W$u20$as$u20$core..fmt..Write$GT$9write_fmt17h17dad8312d16cedaE+0x20>
   82790: 21 00 0d 91  	add	x1, x1, #832
   82794: e0 e3 00 91  	add	x0, sp, #56
   82798: e2 03 00 91  	mov	x2, sp
   8279c: ba fa ff 97  	bl	0x81284 <_ZN4core3fmt5write17h4089dd81629a8d2eE>
   827a0: fe 1b 40 f9  	ldr	x30, [sp, #48]
   827a4: ff 03 01 91  	add	sp, sp, #64
   827a8: c0 03 5f d6  	ret

00000000000827ac <_ZN42_$LT$$RF$T$u20$as$u20$core..fmt..Debug$GT$3fmt17h0ce5f74af94e46edE>:
   827ac: ff 43 02 d1  	sub	sp, sp, #144
   827b0: fe 43 00 f9  	str	x30, [sp, #128]
   827b4: 28 30 40 b9  	ldr	w8, [x1, #48]
   827b8: 09 00 40 f9  	ldr	x9, [x0]
   827bc: c8 05 20 37  	tbnz	w8, #4, 0x82874 <_ZN42_$LT$$RF$T$u20$as$u20$core..fmt..Debug$GT$3fmt17h0ce5f74af94e46edE+0xc8>
   827c0: a8 07 28 37  	tbnz	w8, #5, 0x828b4 <_ZN42_$LT$$RF$T$u20$as$u20$core..fmt..Debug$GT$3fmt17h0ce5f74af94e46edE+0x108>
   827c4: 28 01 40 b9  	ldr	w8, [x9]
   827c8: 09 7d 44 d3  	ubfx	x9, x8, #4, #28
   827cc: 3f c5 09 71  	cmp	w9, #625
   827d0: 03 0b 00 54  	b.lo	0x82930 <_ZN42_$LT$$RF$T$u20$as$u20$core..fmt..Debug$GT$3fmt17h0ce5f74af94e46edE+0x184>
   827d4: 6a 29 8b d2  	mov	x10, #22859
   827d8: ca 10 a7 f2  	movk	x10, #14470, lsl #16
   827dc: ca ba d8 f2  	movk	x10, #50646, lsl #32
   827e0: ec a3 90 52  	mov	w12, #34079
   827e4: 0e 00 00 b0  	adrp	x14, 0x83000 <_ZN42_$LT$$RF$T$u20$as$u20$core..fmt..Debug$GT$3fmt17h0ce5f74af94e46edE+0x3c>
   827e8: f0 1f 9c 52  	mov	w16, #57599
   827ec: e9 03 1f aa  	mov	x9, xzr
   827f0: aa 8d e6 f2  	movk	x10, #13421, lsl #48
   827f4: eb e1 84 12  	mov	w11, #-10000
   827f8: 6c 3d aa 72  	movk	w12, #20971, lsl #16
   827fc: 6d 0c 80 12  	mov	w13, #-100
   82800: ce c9 16 91  	add	x14, x14, #1458
   82804: ef 03 00 91  	mov	x15, sp
   82808: b0 be a0 72  	movk	w16, #1525, lsl #16
   8280c: f1 03 08 aa  	mov	x17, x8
   82810: 08 7d ca 9b  	umulh	x8, x8, x10
   82814: 08 fd 4b d3  	lsr	x8, x8, #11
   82818: 3f 02 10 eb  	cmp	x17, x16
   8281c: 11 45 0b 1b  	madd	w17, w8, w11, w17
   82820: 20 3e 00 12  	and	w0, w17, #0xffff
   82824: 00 7c ac 9b  	umull	x0, w0, w12
   82828: 00 fc 65 d3  	lsr	x0, x0, #37
   8282c: 11 44 0d 1b  	madd	w17, w0, w13, w17
   82830: c0 05 00 8b  	add	x0, x14, x0, lsl #1
   82834: d1 25 31 8b  	add	x17, x14, w17, uxth #1
   82838: 02 00 40 39  	ldrb	w2, [x0]
   8283c: 00 04 40 39  	ldrb	w0, [x0, #1]
   82840: 23 06 40 39  	ldrb	w3, [x17, #1]
   82844: 31 02 40 39  	ldrb	w17, [x17]
   82848: f2 01 09 8b  	add	x18, x15, x9
   8284c: 29 11 00 d1  	sub	x9, x9, #4
   82850: 40 92 00 39  	strb	w0, [x18, #36]
   82854: 42 8e 00 39  	strb	w2, [x18, #35]
   82858: 43 9a 00 39  	strb	w3, [x18, #38]
   8285c: 51 96 00 39  	strb	w17, [x18, #37]
   82860: 68 fd ff 54  	b.hi	0x8280c <_ZN42_$LT$$RF$T$u20$as$u20$core..fmt..Debug$GT$3fmt17h0ce5f74af94e46edE+0x60>
   82864: 29 9d 00 91  	add	x9, x9, #39
   82868: 1f 8d 01 f1  	cmp	x8, #99
   8286c: 88 06 00 54  	b.hi	0x8293c <_ZN42_$LT$$RF$T$u20$as$u20$core..fmt..Debug$GT$3fmt17h0ce5f74af94e46edE+0x190>
   82870: 45 00 00 14  	b	0x82984 <_ZN42_$LT$$RF$T$u20$as$u20$core..fmt..Debug$GT$3fmt17h0ce5f74af94e46edE+0x1d8>
   82874: 2a 01 40 b9  	ldr	w10, [x9]
   82878: e8 03 1f aa  	mov	x8, xzr
   8287c: e9 03 00 91  	mov	x9, sp
   82880: 4d 0d 00 12  	and	w13, w10, #0xf
   82884: 0e 06 80 52  	mov	w14, #48
   82888: 4c 7d 04 53  	lsr	w12, w10, #4
   8288c: 4e 0d 00 33  	bfxil	w14, w10, #0, #4
   82890: aa 5d 01 11  	add	w10, w13, #87
   82894: bf 29 00 71  	cmp	w13, #10
   82898: 2b 01 08 8b  	add	x11, x9, x8
   8289c: ca 31 8a 1a  	csel	w10, w14, w10, lo
   828a0: 6a fd 01 39  	strb	w10, [x11, #127]
   828a4: 08 05 00 d1  	sub	x8, x8, #1
   828a8: ea 03 0c 2a  	mov	w10, w12
   828ac: ac fe ff 35  	cbnz	w12, 0x82880 <_ZN42_$LT$$RF$T$u20$as$u20$core..fmt..Debug$GT$3fmt17h0ce5f74af94e46edE+0xd4>
   828b0: 10 00 00 14  	b	0x828f0 <_ZN42_$LT$$RF$T$u20$as$u20$core..fmt..Debug$GT$3fmt17h0ce5f74af94e46edE+0x144>
   828b4: 2a 01 40 b9  	ldr	w10, [x9]
   828b8: e8 03 1f aa  	mov	x8, xzr
   828bc: e9 03 00 91  	mov	x9, sp
   828c0: 4d 0d 00 12  	and	w13, w10, #0xf
   828c4: 0e 06 80 52  	mov	w14, #48
   828c8: 4c 7d 04 53  	lsr	w12, w10, #4
   828cc: 4e 0d 00 33  	bfxil	w14, w10, #0, #4
   828d0: aa dd 00 11  	add	w10, w13, #55
   828d4: bf 29 00 71  	cmp	w13, #10
   828d8: 2b 01 08 8b  	add	x11, x9, x8
   828dc: ca 31 8a 1a  	csel	w10, w14, w10, lo
   828e0: 6a fd 01 39  	strb	w10, [x11, #127]
   828e4: 08 05 00 d1  	sub	x8, x8, #1
   828e8: ea 03 0c 2a  	mov	w10, w12
   828ec: ac fe ff 35  	cbnz	w12, 0x828c0 <_ZN42_$LT$$RF$T$u20$as$u20$core..fmt..Debug$GT$3fmt17h0ce5f74af94e46edE+0x114>
   828f0: 00 01 02 91  	add	x0, x8, #128
   828f4: 1f 04 02 f1  	cmp	x0, #129
   828f8: 22 08 00 54  	b.hs	0x829fc <_ZN42_$LT$$RF$T$u20$as$u20$core..fmt..Debug$GT$3fmt17h0ce5f74af94e46edE+0x250>
   828fc: e9 03 00 91  	mov	x9, sp
   82900: e4 03 08 cb  	neg	x4, x8
   82904: 28 01 08 8b  	add	x8, x9, x8
   82908: 03 01 02 91  	add	x3, x8, #128
   8290c: 08 00 00 b0  	adrp	x8, 0x83000 <_ZN42_$LT$$RF$T$u20$as$u20$core..fmt..Debug$GT$3fmt17h0ce5f74af94e46edE+0x164>
   82910: 08 e1 1c 91  	add	x8, x8, #1848
   82914: 42 00 80 52  	mov	w2, #2
   82918: e0 03 01 aa  	mov	x0, x1
   8291c: e1 03 08 aa  	mov	x1, x8
   82920: 4d f8 ff 97  	bl	0x80a54 <_ZN4core3fmt9Formatter12pad_integral17h4be5fae25bf478d6E>
   82924: fe 43 40 f9  	ldr	x30, [sp, #128]
   82928: ff 43 02 91  	add	sp, sp, #144
   8292c: c0 03 5f d6  	ret
   82930: e9 04 80 52  	mov	w9, #39
   82934: 1f 8d 01 f1  	cmp	x8, #99
   82938: 69 02 00 54  	b.ls	0x82984 <_ZN42_$LT$$RF$T$u20$as$u20$core..fmt..Debug$GT$3fmt17h0ce5f74af94e46edE+0x1d8>
   8293c: eb a3 90 52  	mov	w11, #34079
   82940: 0a 3d 00 12  	and	w10, w8, #0xffff
   82944: 6b 3d aa 72  	movk	w11, #20971, lsl #16
   82948: 4a 7d ab 9b  	umull	x10, w10, w11
   8294c: 6c 0c 80 12  	mov	w12, #-100
   82950: 0b 00 00 b0  	adrp	x11, 0x83000 <_ZN42_$LT$$RF$T$u20$as$u20$core..fmt..Debug$GT$3fmt17h0ce5f74af94e46edE+0x1a8>
   82954: 4a fd 65 d3  	lsr	x10, x10, #37
   82958: 6b c9 16 91  	add	x11, x11, #1458
   8295c: 48 21 0c 1b  	madd	w8, w10, w12, w8
   82960: 68 25 28 8b  	add	x8, x11, w8, uxth #1
   82964: 0b 05 40 39  	ldrb	w11, [x8, #1]
   82968: 08 01 40 39  	ldrb	w8, [x8]
   8296c: 29 09 00 d1  	sub	x9, x9, #2
   82970: ec 03 00 91  	mov	x12, sp
   82974: 8c 01 09 8b  	add	x12, x12, x9
   82978: 88 01 00 39  	strb	w8, [x12]
   8297c: e8 03 0a aa  	mov	x8, x10
   82980: 8b 05 00 39  	strb	w11, [x12, #1]
   82984: 1f 29 00 f1  	cmp	x8, #10
   82988: ca 00 00 54  	b.ge	0x829a0 <_ZN42_$LT$$RF$T$u20$as$u20$core..fmt..Debug$GT$3fmt17h0ce5f74af94e46edE+0x1f4>
   8298c: 29 05 00 d1  	sub	x9, x9, #1
   82990: 08 c1 00 11  	add	w8, w8, #48
   82994: ea 03 00 91  	mov	x10, sp
   82998: 48 69 29 38  	strb	w8, [x10, x9]
   8299c: 0b 00 00 14  	b	0x829c8 <_ZN42_$LT$$RF$T$u20$as$u20$core..fmt..Debug$GT$3fmt17h0ce5f74af94e46edE+0x21c>
   829a0: 0a 00 00 b0  	adrp	x10, 0x83000 <_ZN42_$LT$$RF$T$u20$as$u20$core..fmt..Debug$GT$3fmt17h0ce5f74af94e46edE+0x1f8>
   829a4: 4a c9 16 91  	add	x10, x10, #1458
   829a8: 48 05 08 8b  	add	x8, x10, x8, lsl #1
   829ac: 0a 05 40 39  	ldrb	w10, [x8, #1]
   829b0: 08 01 40 39  	ldrb	w8, [x8]
   829b4: 29 09 00 d1  	sub	x9, x9, #2
   829b8: eb 03 00 91  	mov	x11, sp
   829bc: 6b 01 09 8b  	add	x11, x11, x9
   829c0: 6a 05 00 39  	strb	w10, [x11, #1]
   829c4: 68 01 00 39  	strb	w8, [x11]
   829c8: e8 03 00 91  	mov	x8, sp
   829cc: 03 01 09 8b  	add	x3, x8, x9
   829d0: 08 00 00 b0  	adrp	x8, 0x83000 <_ZN42_$LT$$RF$T$u20$as$u20$core..fmt..Debug$GT$3fmt17h0ce5f74af94e46edE+0x228>
   829d4: ea 04 80 52  	mov	w10, #39
   829d8: 08 81 14 91  	add	x8, x8, #1312
   829dc: 44 01 09 cb  	sub	x4, x10, x9
   829e0: e0 03 01 aa  	mov	x0, x1
   829e4: e1 03 08 aa  	mov	x1, x8
   829e8: e2 03 1f aa  	mov	x2, xzr
   829ec: 1a f8 ff 97  	bl	0x80a54 <_ZN4core3fmt9Formatter12pad_integral17h4be5fae25bf478d6E>
   829f0: fe 43 40 f9  	ldr	x30, [sp, #128]
   829f4: ff 43 02 91  	add	sp, sp, #144
   829f8: c0 03 5f d6  	ret
   829fc: 02 00 00 b0  	adrp	x2, 0x83000 <_ZN42_$LT$$RF$T$u20$as$u20$core..fmt..Debug$GT$3fmt17h0ce5f74af94e46edE+0x254>
   82a00: 42 80 1c 91  	add	x2, x2, #1824
   82a04: 01 10 80 52  	mov	w1, #128
   82a08: e2 f8 ff 97  	bl	0x80d90 <_ZN4core5slice5index26slice_start_index_len_fail17ha5c8a54d8fb05d93E>
   82a0c: 20 00 20 d4  	brk	#0x1

0000000000082a10 <_ZN42_$LT$$RF$T$u20$as$u20$core..fmt..Debug$GT$3fmt17h4bfed742e82838c6E>:
   82a10: ff 83 02 d1  	sub	sp, sp, #160
   82a14: fd 7b 04 a9  	stp	x29, x30, [sp, #64]
   82a18: fc 6f 05 a9  	stp	x28, x27, [sp, #80]
   82a1c: fa 67 06 a9  	stp	x26, x25, [sp, #96]
   82a20: f8 5f 07 a9  	stp	x24, x23, [sp, #112]
   82a24: f6 57 08 a9  	stp	x22, x21, [sp, #128]
   82a28: f4 4f 09 a9  	stp	x20, x19, [sp, #144]
   82a2c: 08 00 40 f9  	ldr	x8, [x0]
   82a30: 33 24 42 a9  	ldp	x19, x9, [x1, #32]
   82a34: 41 04 80 52  	mov	w1, #34
   82a38: 0a 21 40 a9  	ldp	x10, x8, [x8]
   82a3c: 22 11 40 f9  	ldr	x2, [x9, #32]
   82a40: e0 03 13 aa  	mov	x0, x19
   82a44: e9 13 00 f9  	str	x9, [sp, #32]
   82a48: e8 ab 02 a9  	stp	x8, x10, [sp, #40]
   82a4c: e2 1f 00 f9  	str	x2, [sp, #56]
   82a50: 40 00 3f d6  	blr	x2
   82a54: 40 01 00 36  	tbz	w0, #0, 0x82a7c <_ZN42_$LT$$RF$T$u20$as$u20$core..fmt..Debug$GT$3fmt17h4bfed742e82838c6E+0x6c>
   82a58: f4 4f 49 a9  	ldp	x20, x19, [sp, #144]
   82a5c: f6 57 48 a9  	ldp	x22, x21, [sp, #128]
   82a60: f8 5f 47 a9  	ldp	x24, x23, [sp, #112]
   82a64: fa 67 46 a9  	ldp	x26, x25, [sp, #96]
   82a68: fc 6f 45 a9  	ldp	x28, x27, [sp, #80]
   82a6c: fd 7b 44 a9  	ldp	x29, x30, [sp, #64]
   82a70: 20 00 80 52  	mov	w0, #1
   82a74: ff 83 02 91  	add	sp, sp, #160
   82a78: c0 03 5f d6  	ret
   82a7c: eb 17 40 f9  	ldr	x11, [sp, #40]
   82a80: cb 1c 00 b4  	cbz	x11, 0x82e18 <_ZN42_$LT$$RF$T$u20$as$u20$core..fmt..Debug$GT$3fmt17h4bfed742e82838c6E+0x408>
   82a84: e8 1b 40 f9  	ldr	x8, [sp, #48]
   82a88: 1b 00 00 b0  	adrp	x27, 0x83000 <_ZN42_$LT$$RF$T$u20$as$u20$core..fmt..Debug$GT$3fmt17h4bfed742e82838c6E+0x7c>
   82a8c: 0e 00 00 b0  	adrp	x14, 0x83000 <_ZN42_$LT$$RF$T$u20$as$u20$core..fmt..Debug$GT$3fmt17h4bfed742e82838c6E+0x80>
   82a90: f8 03 1f aa  	mov	x24, xzr
   82a94: e3 03 1f aa  	mov	x3, xzr
   82a98: 15 01 0b 8b  	add	x21, x8, x11
   82a9c: 7b af 0d 91  	add	x27, x27, #875
   82aa0: ce 45 0d 91  	add	x14, x14, #849
   82aa4: ec 03 08 aa  	mov	x12, x8
   82aa8: ea 03 08 aa  	mov	x10, x8
   82aac: fc 03 0a aa  	mov	x28, x10
   82ab0: 88 17 c0 38  	ldrsb	w8, [x28], #1
   82ab4: 1d 1d 00 12  	and	w29, w8, #0xff
   82ab8: 68 00 f8 37  	tbnz	w8, #31, 0x82ac4 <_ZN42_$LT$$RF$T$u20$as$u20$core..fmt..Debug$GT$3fmt17h4bfed742e82838c6E+0xb4>
   82abc: ed 03 1c aa  	mov	x13, x28
   82ac0: 2f 00 00 14  	b	0x82b7c <_ZN42_$LT$$RF$T$u20$as$u20$core..fmt..Debug$GT$3fmt17h4bfed742e82838c6E+0x16c>
   82ac4: 9f 03 15 eb  	cmp	x28, x21
   82ac8: 80 02 00 54  	b.eq	0x82b18 <_ZN42_$LT$$RF$T$u20$as$u20$core..fmt..Debug$GT$3fmt17h4bfed742e82838c6E+0x108>
   82acc: 48 05 40 39  	ldrb	w8, [x10, #1]
   82ad0: 4d 09 00 91  	add	x13, x10, #2
   82ad4: 0a 15 00 12  	and	w10, w8, #0x3f
   82ad8: bf 7f 03 71  	cmp	w29, #223
   82adc: a8 13 00 12  	and	w8, w29, #0x1f
   82ae0: 69 02 00 54  	b.ls	0x82b2c <_ZN42_$LT$$RF$T$u20$as$u20$core..fmt..Debug$GT$3fmt17h4bfed742e82838c6E+0x11c>
   82ae4: bf 01 15 eb  	cmp	x13, x21
   82ae8: a0 02 00 54  	b.eq	0x82b3c <_ZN42_$LT$$RF$T$u20$as$u20$core..fmt..Debug$GT$3fmt17h4bfed742e82838c6E+0x12c>
   82aec: a9 15 40 38  	ldrb	w9, [x13], #1
   82af0: 29 15 00 12  	and	w9, w9, #0x3f
   82af4: bf c3 03 71  	cmp	w29, #240
   82af8: 49 15 1a 33  	bfi	w9, w10, #6, #6
   82afc: a3 02 00 54  	b.lo	0x82b50 <_ZN42_$LT$$RF$T$u20$as$u20$core..fmt..Debug$GT$3fmt17h4bfed742e82838c6E+0x140>
   82b00: bf 01 15 eb  	cmp	x13, x21
   82b04: e0 02 00 54  	b.eq	0x82b60 <_ZN42_$LT$$RF$T$u20$as$u20$core..fmt..Debug$GT$3fmt17h4bfed742e82838c6E+0x150>
   82b08: aa 15 40 38  	ldrb	w10, [x13], #1
   82b0c: 4a 15 00 12  	and	w10, w10, #0x3f
   82b10: fc 03 0d aa  	mov	x28, x13
   82b14: 15 00 00 14  	b	0x82b68 <_ZN42_$LT$$RF$T$u20$as$u20$core..fmt..Debug$GT$3fmt17h4bfed742e82838c6E+0x158>
   82b18: ea 03 1f 2a  	mov	w10, wzr
   82b1c: ed 03 15 aa  	mov	x13, x21
   82b20: bf 7f 03 71  	cmp	w29, #223
   82b24: a8 13 00 12  	and	w8, w29, #0x1f
   82b28: e8 fd ff 54  	b.hi	0x82ae4 <_ZN42_$LT$$RF$T$u20$as$u20$core..fmt..Debug$GT$3fmt17h4bfed742e82838c6E+0xd4>
   82b2c: 0a 11 1a 33  	bfi	w10, w8, #6, #5
   82b30: fc 03 0d aa  	mov	x28, x13
   82b34: fd 03 0a 2a  	mov	w29, w10
   82b38: 11 00 00 14  	b	0x82b7c <_ZN42_$LT$$RF$T$u20$as$u20$core..fmt..Debug$GT$3fmt17h4bfed742e82838c6E+0x16c>
   82b3c: e9 03 1f 2a  	mov	w9, wzr
   82b40: ed 03 15 aa  	mov	x13, x21
   82b44: bf c3 03 71  	cmp	w29, #240
   82b48: 49 15 1a 33  	bfi	w9, w10, #6, #6
   82b4c: a2 fd ff 54  	b.hs	0x82b00 <_ZN42_$LT$$RF$T$u20$as$u20$core..fmt..Debug$GT$3fmt17h4bfed742e82838c6E+0xf0>
   82b50: 09 11 14 33  	bfi	w9, w8, #12, #5
   82b54: fc 03 0d aa  	mov	x28, x13
   82b58: fd 03 09 2a  	mov	w29, w9
   82b5c: 08 00 00 14  	b	0x82b7c <_ZN42_$LT$$RF$T$u20$as$u20$core..fmt..Debug$GT$3fmt17h4bfed742e82838c6E+0x16c>
   82b60: ea 03 1f 2a  	mov	w10, wzr
   82b64: fc 03 15 aa  	mov	x28, x21
   82b68: 08 09 0e 53  	ubfiz	w8, w8, #18, #3
   82b6c: 28 2d 1a 33  	bfi	w8, w9, #6, #12
   82b70: 1d 01 0a 2a  	orr	w29, w8, w10
   82b74: bf 43 44 71  	cmp	w29, #272, lsl #12
   82b78: 00 14 00 54  	b.eq	0x82df8 <_ZN42_$LT$$RF$T$u20$as$u20$core..fmt..Debug$GT$3fmt17h4bfed742e82838c6E+0x3e8>
   82b7c: a8 27 00 51  	sub	w8, w29, #9
   82b80: 1f 65 00 71  	cmp	w8, #25
   82b84: ed 33 01 a9  	stp	x13, x12, [sp, #16]
   82b88: fc 07 00 f9  	str	x28, [sp, #8]
   82b8c: 48 01 00 54  	b.hi	0x82bb4 <_ZN42_$LT$$RF$T$u20$as$u20$core..fmt..Debug$GT$3fmt17h4bfed742e82838c6E+0x1a4>
   82b90: c9 00 00 10  	adr	x9, #24
   82b94: ca 69 68 38  	ldrb	w10, [x14, x8]
   82b98: 29 09 0a 8b  	add	x9, x9, x10, lsl #2
   82b9c: 97 0e 80 52  	mov	w23, #116
   82ba0: 59 00 80 52  	mov	w25, #2
   82ba4: 20 01 1f d6  	br	x9
   82ba8: d7 0d 80 52  	mov	w23, #110
   82bac: 59 00 80 52  	mov	w25, #2
   82bb0: 1f 00 00 14  	b	0x82c2c <_ZN42_$LT$$RF$T$u20$as$u20$core..fmt..Debug$GT$3fmt17h4bfed742e82838c6E+0x21c>
   82bb4: bf 73 01 71  	cmp	w29, #92
   82bb8: 81 00 00 54  	b.ne	0x82bc8 <_ZN42_$LT$$RF$T$u20$as$u20$core..fmt..Debug$GT$3fmt17h4bfed742e82838c6E+0x1b8>
   82bbc: 59 00 80 52  	mov	w25, #2
   82bc0: f7 03 1d 2a  	mov	w23, w29
   82bc4: 1a 00 00 14  	b	0x82c2c <_ZN42_$LT$$RF$T$u20$as$u20$core..fmt..Debug$GT$3fmt17h4bfed742e82838c6E+0x21c>
   82bc8: e0 03 1d 2a  	mov	w0, w29
   82bcc: f4 03 03 aa  	mov	x20, x3
   82bd0: fa fc ff 97  	bl	0x81fb8 <_ZN4core7unicode12unicode_data15grapheme_extend6lookup17h0525d17e88c4ad5eE>
   82bd4: 80 01 00 37  	tbnz	w0, #0, 0x82c04 <_ZN42_$LT$$RF$T$u20$as$u20$core..fmt..Debug$GT$3fmt17h4bfed742e82838c6E+0x1f4>
   82bd8: e0 03 1d 2a  	mov	w0, w29
   82bdc: 45 fd ff 97  	bl	0x820f0 <_ZN4core7unicode9printable12is_printable17h809bc46350007ff2E>
   82be0: 20 01 00 36  	tbz	w0, #0, 0x82c04 <_ZN42_$LT$$RF$T$u20$as$u20$core..fmt..Debug$GT$3fmt17h4bfed742e82838c6E+0x1f4>
   82be4: eb 17 40 f9  	ldr	x11, [sp, #40]
   82be8: ea 27 41 a9  	ldp	x10, x9, [sp, #16]
   82bec: fc 03 15 aa  	mov	x28, x21
   82bf0: f5 03 14 aa  	mov	x21, x20
   82bf4: 78 00 00 14  	b	0x82dd4 <_ZN42_$LT$$RF$T$u20$as$u20$core..fmt..Debug$GT$3fmt17h4bfed742e82838c6E+0x3c4>
   82bf8: 57 0e 80 52  	mov	w23, #114
   82bfc: 59 00 80 52  	mov	w25, #2
   82c00: 0b 00 00 14  	b	0x82c2c <_ZN42_$LT$$RF$T$u20$as$u20$core..fmt..Debug$GT$3fmt17h4bfed742e82838c6E+0x21c>
   82c04: a8 03 00 32  	orr	w8, w29, #0x1
   82c08: eb 17 40 f9  	ldr	x11, [sp, #40]
   82c0c: 08 11 c0 5a  	clz	w8, w8
   82c10: e9 03 1d 2a  	mov	w9, w29
   82c14: aa 00 c0 d2  	mov	x10, #21474836480
   82c18: 08 7d 02 53  	lsr	w8, w8, #2
   82c1c: 3a 01 0a aa  	orr	x26, x9, x10
   82c20: 16 09 00 52  	eor	w22, w8, #0x7
   82c24: 79 00 80 52  	mov	w25, #3
   82c28: e3 03 14 aa  	mov	x3, x20
   82c2c: 7f 00 18 eb  	cmp	x3, x24
   82c30: 23 12 00 54  	b.lo	0x82e74 <_ZN42_$LT$$RF$T$u20$as$u20$core..fmt..Debug$GT$3fmt17h4bfed742e82838c6E+0x464>
   82c34: 38 01 00 b4  	cbz	x24, 0x82c58 <_ZN42_$LT$$RF$T$u20$as$u20$core..fmt..Debug$GT$3fmt17h4bfed742e82838c6E+0x248>
   82c38: 1f 03 0b eb  	cmp	x24, x11
   82c3c: c2 00 00 54  	b.hs	0x82c54 <_ZN42_$LT$$RF$T$u20$as$u20$core..fmt..Debug$GT$3fmt17h4bfed742e82838c6E+0x244>
   82c40: e8 1b 40 f9  	ldr	x8, [sp, #48]
   82c44: 08 69 f8 38  	ldrsb	w8, [x8, x24]
   82c48: 1f 01 01 31  	cmn	w8, #64
   82c4c: 6a 00 00 54  	b.ge	0x82c58 <_ZN42_$LT$$RF$T$u20$as$u20$core..fmt..Debug$GT$3fmt17h4bfed742e82838c6E+0x248>
   82c50: 89 00 00 14  	b	0x82e74 <_ZN42_$LT$$RF$T$u20$as$u20$core..fmt..Debug$GT$3fmt17h4bfed742e82838c6E+0x464>
   82c54: 01 11 00 54  	b.ne	0x82e74 <_ZN42_$LT$$RF$T$u20$as$u20$core..fmt..Debug$GT$3fmt17h4bfed742e82838c6E+0x464>
   82c58: 23 01 00 b4  	cbz	x3, 0x82c7c <_ZN42_$LT$$RF$T$u20$as$u20$core..fmt..Debug$GT$3fmt17h4bfed742e82838c6E+0x26c>
   82c5c: 7f 00 0b eb  	cmp	x3, x11
   82c60: 22 01 00 54  	b.hs	0x82c84 <_ZN42_$LT$$RF$T$u20$as$u20$core..fmt..Debug$GT$3fmt17h4bfed742e82838c6E+0x274>
   82c64: e8 1b 40 f9  	ldr	x8, [sp, #48]
   82c68: f4 03 03 aa  	mov	x20, x3
   82c6c: 08 69 e3 38  	ldrsb	w8, [x8, x3]
   82c70: 1f 05 01 31  	cmn	w8, #65
   82c74: cc 00 00 54  	b.gt	0x82c8c <_ZN42_$LT$$RF$T$u20$as$u20$core..fmt..Debug$GT$3fmt17h4bfed742e82838c6E+0x27c>
   82c78: 7f 00 00 14  	b	0x82e74 <_ZN42_$LT$$RF$T$u20$as$u20$core..fmt..Debug$GT$3fmt17h4bfed742e82838c6E+0x464>
   82c7c: f4 03 1f aa  	mov	x20, xzr
   82c80: 03 00 00 14  	b	0x82c8c <_ZN42_$LT$$RF$T$u20$as$u20$core..fmt..Debug$GT$3fmt17h4bfed742e82838c6E+0x27c>
   82c84: f4 03 0b aa  	mov	x20, x11
   82c88: 61 0f 00 54  	b.ne	0x82e74 <_ZN42_$LT$$RF$T$u20$as$u20$core..fmt..Debug$GT$3fmt17h4bfed742e82838c6E+0x464>
   82c8c: e8 13 40 f9  	ldr	x8, [sp, #32]
   82c90: e9 1b 40 f9  	ldr	x9, [sp, #48]
   82c94: 82 02 18 cb  	sub	x2, x20, x24
   82c98: e0 03 13 aa  	mov	x0, x19
   82c9c: 08 0d 40 f9  	ldr	x8, [x8, #24]
   82ca0: 21 01 18 8b  	add	x1, x9, x24
   82ca4: fc 03 15 aa  	mov	x28, x21
   82ca8: f5 03 03 aa  	mov	x21, x3
   82cac: 00 01 3f d6  	blr	x8
   82cb0: 18 00 00 b0  	adrp	x24, 0x83000 <_ZN42_$LT$$RF$T$u20$as$u20$core..fmt..Debug$GT$3fmt17h4bfed742e82838c6E+0x2a4>
   82cb4: 18 bf 0d 91  	add	x24, x24, #879
   82cb8: 00 01 00 36  	tbz	w0, #0, 0x82cd8 <_ZN42_$LT$$RF$T$u20$as$u20$core..fmt..Debug$GT$3fmt17h4bfed742e82838c6E+0x2c8>
   82cbc: 67 ff ff 17  	b	0x82a58 <_ZN42_$LT$$RF$T$u20$as$u20$core..fmt..Debug$GT$3fmt17h4bfed742e82838c6E+0x48>
   82cc0: f9 03 1f 2a  	mov	w25, wzr
   82cc4: e1 03 17 2a  	mov	w1, w23
   82cc8: e2 1f 40 f9  	ldr	x2, [sp, #56]
   82ccc: e0 03 13 aa  	mov	x0, x19
   82cd0: 40 00 3f d6  	blr	x2
   82cd4: 20 ec 07 37  	tbnz	w0, #0, 0x82a58 <_ZN42_$LT$$RF$T$u20$as$u20$core..fmt..Debug$GT$3fmt17h4bfed742e82838c6E+0x48>
   82cd8: e8 03 19 2a  	mov	w8, w25
   82cdc: 29 ff ff 10  	adr	x9, #-28
   82ce0: 6a 6b 68 38  	ldrb	w10, [x27, x8]
   82ce4: 29 09 0a 8b  	add	x9, x9, x10, lsl #2
   82ce8: 39 00 80 52  	mov	w25, #1
   82cec: 81 0b 80 52  	mov	w1, #92
   82cf0: 20 01 1f d6  	br	x9
   82cf4: 48 9f 60 d3  	ubfx	x8, x26, #32, #8
   82cf8: 89 00 00 10  	adr	x9, #16
   82cfc: 0a 6b 68 38  	ldrb	w10, [x24, x8]
   82d00: 29 09 0a 8b  	add	x9, x9, x10, lsl #2
   82d04: 20 01 1f d6  	br	x9
   82d08: 5a df 58 92  	and	x26, x26, #0xffffff00ffffffff
   82d0c: 79 00 80 52  	mov	w25, #3
   82d10: a1 0f 80 52  	mov	w1, #125
   82d14: ed ff ff 17  	b	0x82cc8 <_ZN42_$LT$$RF$T$u20$as$u20$core..fmt..Debug$GT$3fmt17h4bfed742e82838c6E+0x2b8>
   82d18: 48 df 58 92  	and	x8, x26, #0xffffff00ffffffff
   82d1c: 79 00 80 52  	mov	w25, #3
   82d20: 1a 05 60 b2  	orr	x26, x8, #0x300000000
   82d24: a1 0e 80 52  	mov	w1, #117
   82d28: e8 ff ff 17  	b	0x82cc8 <_ZN42_$LT$$RF$T$u20$as$u20$core..fmt..Debug$GT$3fmt17h4bfed742e82838c6E+0x2b8>
   82d2c: c8 0a 1e 53  	ubfiz	w8, w22, #2, #3
   82d30: 48 27 c8 1a  	lsr	w8, w26, w8
   82d34: 08 0d 00 12  	and	w8, w8, #0xf
   82d38: 1f 29 00 71  	cmp	w8, #10
   82d3c: e9 0a 80 52  	mov	w9, #87
   82d40: 0a 06 80 52  	mov	w10, #48
   82d44: 49 31 89 1a  	csel	w9, w10, w9, lo
   82d48: 21 01 08 0b  	add	w1, w9, w8
   82d4c: d6 01 00 b4  	cbz	x22, 0x82d84 <_ZN42_$LT$$RF$T$u20$as$u20$core..fmt..Debug$GT$3fmt17h4bfed742e82838c6E+0x374>
   82d50: d6 06 00 d1  	sub	x22, x22, #1
   82d54: 79 00 80 52  	mov	w25, #3
   82d58: dc ff ff 17  	b	0x82cc8 <_ZN42_$LT$$RF$T$u20$as$u20$core..fmt..Debug$GT$3fmt17h4bfed742e82838c6E+0x2b8>
   82d5c: 48 df 58 92  	and	x8, x26, #0xffffff00ffffffff
   82d60: 79 00 80 52  	mov	w25, #3
   82d64: 1a 01 5f b2  	orr	x26, x8, #0x200000000
   82d68: 61 0f 80 52  	mov	w1, #123
   82d6c: d7 ff ff 17  	b	0x82cc8 <_ZN42_$LT$$RF$T$u20$as$u20$core..fmt..Debug$GT$3fmt17h4bfed742e82838c6E+0x2b8>
   82d70: 48 df 58 92  	and	x8, x26, #0xffffff00ffffffff
   82d74: 79 00 80 52  	mov	w25, #3
   82d78: 1a 01 5e b2  	orr	x26, x8, #0x400000000
   82d7c: 81 0b 80 52  	mov	w1, #92
   82d80: d2 ff ff 17  	b	0x82cc8 <_ZN42_$LT$$RF$T$u20$as$u20$core..fmt..Debug$GT$3fmt17h4bfed742e82838c6E+0x2b8>
   82d84: 48 df 58 92  	and	x8, x26, #0xffffff00ffffffff
   82d88: 1a 01 60 b2  	orr	x26, x8, #0x100000000
   82d8c: 79 00 80 52  	mov	w25, #3
   82d90: ce ff ff 17  	b	0x82cc8 <_ZN42_$LT$$RF$T$u20$as$u20$core..fmt..Debug$GT$3fmt17h4bfed742e82838c6E+0x2b8>
   82d94: bf 03 02 71  	cmp	w29, #128
   82d98: a2 00 00 54  	b.hs	0x82dac <_ZN42_$LT$$RF$T$u20$as$u20$core..fmt..Debug$GT$3fmt17h4bfed742e82838c6E+0x39c>
   82d9c: eb 17 40 f9  	ldr	x11, [sp, #40]
   82da0: ea 27 41 a9  	ldp	x10, x9, [sp, #16]
   82da4: 28 00 80 52  	mov	w8, #1
   82da8: 0a 00 00 14  	b	0x82dd0 <_ZN42_$LT$$RF$T$u20$as$u20$core..fmt..Debug$GT$3fmt17h4bfed742e82838c6E+0x3c0>
   82dac: eb 17 40 f9  	ldr	x11, [sp, #40]
   82db0: ea 27 41 a9  	ldp	x10, x9, [sp, #16]
   82db4: bf 03 20 71  	cmp	w29, #2048
   82db8: 62 00 00 54  	b.hs	0x82dc4 <_ZN42_$LT$$RF$T$u20$as$u20$core..fmt..Debug$GT$3fmt17h4bfed742e82838c6E+0x3b4>
   82dbc: 48 00 80 52  	mov	w8, #2
   82dc0: 04 00 00 14  	b	0x82dd0 <_ZN42_$LT$$RF$T$u20$as$u20$core..fmt..Debug$GT$3fmt17h4bfed742e82838c6E+0x3c0>
   82dc4: bf 43 40 71  	cmp	w29, #16, lsl #12
   82dc8: 68 00 80 52  	mov	w8, #3
   82dcc: 08 35 88 9a  	cinc	x8, x8, hs
   82dd0: 18 01 14 8b  	add	x24, x8, x20
   82dd4: a8 02 09 cb  	sub	x8, x21, x9
   82dd8: e9 07 40 f9  	ldr	x9, [sp, #8]
   82ddc: 0e 00 00 b0  	adrp	x14, 0x83000 <_ZN42_$LT$$RF$T$u20$as$u20$core..fmt..Debug$GT$3fmt17h4bfed742e82838c6E+0x3d0>
   82de0: f5 03 1c aa  	mov	x21, x28
   82de4: 5f 01 1c eb  	cmp	x10, x28
   82de8: 03 01 09 8b  	add	x3, x8, x9
   82dec: ec 03 0a aa  	mov	x12, x10
   82df0: ce 45 0d 91  	add	x14, x14, #849
   82df4: c1 e5 ff 54  	b.ne	0x82aac <_ZN42_$LT$$RF$T$u20$as$u20$core..fmt..Debug$GT$3fmt17h4bfed742e82838c6E+0x9c>
   82df8: 38 01 00 b4  	cbz	x24, 0x82e1c <_ZN42_$LT$$RF$T$u20$as$u20$core..fmt..Debug$GT$3fmt17h4bfed742e82838c6E+0x40c>
   82dfc: 1f 03 0b eb  	cmp	x24, x11
   82e00: 42 03 00 54  	b.hs	0x82e68 <_ZN42_$LT$$RF$T$u20$as$u20$core..fmt..Debug$GT$3fmt17h4bfed742e82838c6E+0x458>
   82e04: e8 1b 40 f9  	ldr	x8, [sp, #48]
   82e08: 08 69 f8 38  	ldrsb	w8, [x8, x24]
   82e0c: 1f 05 01 31  	cmn	w8, #65
   82e10: 6c 00 00 54  	b.gt	0x82e1c <_ZN42_$LT$$RF$T$u20$as$u20$core..fmt..Debug$GT$3fmt17h4bfed742e82838c6E+0x40c>
   82e14: 1f 00 00 14  	b	0x82e90 <_ZN42_$LT$$RF$T$u20$as$u20$core..fmt..Debug$GT$3fmt17h4bfed742e82838c6E+0x480>
   82e18: f8 03 1f aa  	mov	x24, xzr
   82e1c: e8 13 40 f9  	ldr	x8, [sp, #32]
   82e20: e9 1b 40 f9  	ldr	x9, [sp, #48]
   82e24: 62 01 18 cb  	sub	x2, x11, x24
   82e28: e0 03 13 aa  	mov	x0, x19
   82e2c: 08 0d 40 f9  	ldr	x8, [x8, #24]
   82e30: 21 01 18 8b  	add	x1, x9, x24
   82e34: 00 01 3f d6  	blr	x8
   82e38: 00 e1 07 37  	tbnz	w0, #0, 0x82a58 <_ZN42_$LT$$RF$T$u20$as$u20$core..fmt..Debug$GT$3fmt17h4bfed742e82838c6E+0x48>
   82e3c: e0 03 13 aa  	mov	x0, x19
   82e40: e2 1f 40 f9  	ldr	x2, [sp, #56]
   82e44: f4 4f 49 a9  	ldp	x20, x19, [sp, #144]
   82e48: f6 57 48 a9  	ldp	x22, x21, [sp, #128]
   82e4c: f8 5f 47 a9  	ldp	x24, x23, [sp, #112]
   82e50: fa 67 46 a9  	ldp	x26, x25, [sp, #96]
   82e54: fc 6f 45 a9  	ldp	x28, x27, [sp, #80]
   82e58: fd 7b 44 a9  	ldp	x29, x30, [sp, #64]
   82e5c: 41 04 80 52  	mov	w1, #34
   82e60: ff 83 02 91  	add	sp, sp, #160
   82e64: 40 00 1f d6  	br	x2
   82e68: 41 01 00 54  	b.ne	0x82e90 <_ZN42_$LT$$RF$T$u20$as$u20$core..fmt..Debug$GT$3fmt17h4bfed742e82838c6E+0x480>
   82e6c: f8 03 0b aa  	mov	x24, x11
   82e70: eb ff ff 17  	b	0x82e1c <_ZN42_$LT$$RF$T$u20$as$u20$core..fmt..Debug$GT$3fmt17h4bfed742e82838c6E+0x40c>
   82e74: e0 1b 40 f9  	ldr	x0, [sp, #48]
   82e78: 04 00 00 d0  	adrp	x4, 0x84000 <_ZN42_$LT$$RF$T$u20$as$u20$core..fmt..Debug$GT$3fmt17h4bfed742e82838c6E+0x470>
   82e7c: 84 40 0e 91  	add	x4, x4, #912
   82e80: e1 03 0b aa  	mov	x1, x11
   82e84: e2 03 18 aa  	mov	x2, x24
   82e88: 4d fa ff 97  	bl	0x817bc <_ZN4core3str16slice_error_fail17hf7d2a92268a53d29E>
   82e8c: 20 00 20 d4  	brk	#0x1
   82e90: e0 1b 40 f9  	ldr	x0, [sp, #48]
   82e94: 04 00 00 d0  	adrp	x4, 0x84000 <_ZN42_$LT$$RF$T$u20$as$u20$core..fmt..Debug$GT$3fmt17h4bfed742e82838c6E+0x48c>
   82e98: 84 e0 0d 91  	add	x4, x4, #888
   82e9c: e1 03 0b aa  	mov	x1, x11
   82ea0: e2 03 18 aa  	mov	x2, x24
   82ea4: e3 03 0b aa  	mov	x3, x11
   82ea8: 45 fa ff 97  	bl	0x817bc <_ZN4core3str16slice_error_fail17hf7d2a92268a53d29E>
   82eac: 20 00 20 d4  	brk	#0x1

0000000000082eb0 <_ZN71_$LT$core..panic..panic_info..PanicInfo$u20$as$u20$core..fmt..Debug$GT$3fmt17hdab5301ab1e937b8E>:
   82eb0: ff 03 01 d1  	sub	sp, sp, #64
   82eb4: fe 0b 00 f9  	str	x30, [sp, #16]
   82eb8: f6 57 02 a9  	stp	x22, x21, [sp, #32]
   82ebc: f4 4f 03 a9  	stp	x20, x19, [sp, #48]
   82ec0: f4 03 00 aa  	mov	x20, x0
   82ec4: 20 20 42 a9  	ldp	x0, x8, [x1, #32]
   82ec8: f3 03 01 aa  	mov	x19, x1
   82ecc: 01 00 00 d0  	adrp	x1, 0x84000 <_ZN71_$LT$core..panic..panic_info..PanicInfo$u20$as$u20$core..fmt..Debug$GT$3fmt17hdab5301ab1e937b8E+0x24>
   82ed0: 21 2c 10 91  	add	x1, x1, #1035
   82ed4: 08 0d 40 f9  	ldr	x8, [x8, #24]
   82ed8: 22 01 80 52  	mov	w2, #9
   82edc: 95 42 00 91  	add	x21, x20, #16
   82ee0: 96 62 00 91  	add	x22, x20, #24
   82ee4: 00 01 3f d6  	blr	x8
   82ee8: 1f 00 00 71  	cmp	w0, #0
   82eec: 01 00 00 d0  	adrp	x1, 0x84000 <_ZN71_$LT$core..panic..panic_info..PanicInfo$u20$as$u20$core..fmt..Debug$GT$3fmt17hdab5301ab1e937b8E+0x44>
   82ef0: 04 00 00 d0  	adrp	x4, 0x84000 <_ZN71_$LT$core..panic..panic_info..PanicInfo$u20$as$u20$core..fmt..Debug$GT$3fmt17hdab5301ab1e937b8E+0x48>
   82ef4: e8 07 9f 9a  	cset	x8, ne
   82ef8: 21 50 10 91  	add	x1, x1, #1044
   82efc: 84 80 10 91  	add	x4, x4, #1056
   82f00: e0 03 00 91  	mov	x0, sp
   82f04: e3 63 00 91  	add	x3, sp, #24
   82f08: e2 00 80 52  	mov	w2, #7
   82f0c: f3 23 00 a9  	stp	x19, x8, [sp]
   82f10: f4 0f 00 f9  	str	x20, [sp, #24]
   82f14: 2c fd ff 97  	bl	0x823c4 <_ZN4core3fmt8builders11DebugStruct5field17hdc89cd457900d764E>
   82f18: 01 00 00 d0  	adrp	x1, 0x84000 <_ZN71_$LT$core..panic..panic_info..PanicInfo$u20$as$u20$core..fmt..Debug$GT$3fmt17hdab5301ab1e937b8E+0x70>
   82f1c: 04 00 00 d0  	adrp	x4, 0x84000 <_ZN71_$LT$core..panic..panic_info..PanicInfo$u20$as$u20$core..fmt..Debug$GT$3fmt17hdab5301ab1e937b8E+0x74>
   82f20: 21 00 11 91  	add	x1, x1, #1088
   82f24: 84 20 11 91  	add	x4, x4, #1096
   82f28: e0 03 00 91  	mov	x0, sp
   82f2c: e3 63 00 91  	add	x3, sp, #24
   82f30: e2 00 80 52  	mov	w2, #7
   82f34: f5 0f 00 f9  	str	x21, [sp, #24]
   82f38: 23 fd ff 97  	bl	0x823c4 <_ZN4core3fmt8builders11DebugStruct5field17hdc89cd457900d764E>
   82f3c: 01 00 00 b0  	adrp	x1, 0x83000 <_ZN71_$LT$core..panic..panic_info..PanicInfo$u20$as$u20$core..fmt..Debug$GT$3fmt17hdab5301ab1e937b8E+0x90>
   82f40: 04 00 00 d0  	adrp	x4, 0x84000 <_ZN71_$LT$core..panic..panic_info..PanicInfo$u20$as$u20$core..fmt..Debug$GT$3fmt17hdab5301ab1e937b8E+0x98>
   82f44: 21 e4 25 91  	add	x1, x1, #2425
   82f48: 84 a0 11 91  	add	x4, x4, #1128
   82f4c: e0 03 00 91  	mov	x0, sp
   82f50: e3 63 00 91  	add	x3, sp, #24
   82f54: 02 01 80 52  	mov	w2, #8
   82f58: f6 0f 00 f9  	str	x22, [sp, #24]
   82f5c: 1a fd ff 97  	bl	0x823c4 <_ZN4core3fmt8builders11DebugStruct5field17hdc89cd457900d764E>
   82f60: e8 27 40 39  	ldrb	w8, [sp, #9]
   82f64: e0 23 40 39  	ldrb	w0, [sp, #8]
   82f68: 48 02 00 34  	cbz	w8, 0x82fb0 <_ZN71_$LT$core..panic..panic_info..PanicInfo$u20$as$u20$core..fmt..Debug$GT$3fmt17hdab5301ab1e937b8E+0x100>
   82f6c: 60 00 00 34  	cbz	w0, 0x82f78 <_ZN71_$LT$core..panic..panic_info..PanicInfo$u20$as$u20$core..fmt..Debug$GT$3fmt17hdab5301ab1e937b8E+0xc8>
   82f70: 20 00 80 52  	mov	w0, #1
   82f74: 0f 00 00 14  	b	0x82fb0 <_ZN71_$LT$core..panic..panic_info..PanicInfo$u20$as$u20$core..fmt..Debug$GT$3fmt17hdab5301ab1e937b8E+0x100>
   82f78: e8 03 40 f9  	ldr	x8, [sp]
   82f7c: 09 c1 40 39  	ldrb	w9, [x8, #48]
   82f80: c9 00 10 37  	tbnz	w9, #2, 0x82f98 <_ZN71_$LT$core..panic..panic_info..PanicInfo$u20$as$u20$core..fmt..Debug$GT$3fmt17hdab5301ab1e937b8E+0xe8>
   82f84: 00 25 42 a9  	ldp	x0, x9, [x8, #32]
   82f88: 01 00 00 d0  	adrp	x1, 0x84000 <_ZN71_$LT$core..panic..panic_info..PanicInfo$u20$as$u20$core..fmt..Debug$GT$3fmt17hdab5301ab1e937b8E+0xe0>
   82f8c: 21 c4 0d 91  	add	x1, x1, #881
   82f90: 42 00 80 52  	mov	w2, #2
   82f94: 05 00 00 14  	b	0x82fa8 <_ZN71_$LT$core..panic..panic_info..PanicInfo$u20$as$u20$core..fmt..Debug$GT$3fmt17hdab5301ab1e937b8E+0xf8>
   82f98: 00 25 42 a9  	ldp	x0, x9, [x8, #32]
   82f9c: 01 00 00 d0  	adrp	x1, 0x84000 <_ZN71_$LT$core..panic..panic_info..PanicInfo$u20$as$u20$core..fmt..Debug$GT$3fmt17hdab5301ab1e937b8E+0xf4>
   82fa0: 21 c0 0d 91  	add	x1, x1, #880
   82fa4: 22 00 80 52  	mov	w2, #1
   82fa8: 28 0d 40 f9  	ldr	x8, [x9, #24]
   82fac: 00 01 3f d6  	blr	x8
   82fb0: f4 4f 43 a9  	ldp	x20, x19, [sp, #48]
   82fb4: f6 57 42 a9  	ldp	x22, x21, [sp, #32]
   82fb8: fe 0b 40 f9  	ldr	x30, [sp, #16]
   82fbc: 1f 00 00 71  	cmp	w0, #0
   82fc0: e0 07 9f 1a  	cset	w0, ne
   82fc4: ff 03 01 91  	add	sp, sp, #64
   82fc8: c0 03 5f d6  	ret

0000000000082fcc <_ZN42_$LT$$RF$T$u20$as$u20$core..fmt..Debug$GT$3fmt17hdb3565c8b9fbe464E>:
   82fcc: ff 03 01 d1  	sub	sp, sp, #64
   82fd0: fe 0b 00 f9  	str	x30, [sp, #16]
   82fd4: f6 57 02 a9  	stp	x22, x21, [sp, #32]
   82fd8: f4 4f 03 a9  	stp	x20, x19, [sp, #48]
   82fdc: 08 00 40 f9  	ldr	x8, [x0]
   82fe0: 20 24 42 a9  	ldp	x0, x9, [x1, #32]
   82fe4: f3 03 01 aa  	mov	x19, x1
   82fe8: 01 00 00 b0  	adrp	x1, 0x83000 <_ZN42_$LT$$RF$T$u20$as$u20$core..fmt..Debug$GT$3fmt17hdb3565c8b9fbe464E+0x20>
   82fec: 14 01 40 f9  	ldr	x20, [x8]
   82ff0: 28 0d 40 f9  	ldr	x8, [x9, #24]
   82ff4: 21 04 26 91  	add	x1, x1, #2433
   82ff8: 02 01 80 52  	mov	w2, #8
   82ffc: 95 42 00 91  	add	x21, x20, #16
   83000: 96 52 00 91  	add	x22, x20, #20
   83004: 00 01 3f d6  	blr	x8
   83008: 1f 00 00 71  	cmp	w0, #0
   8300c: 01 00 00 90  	adrp	x1, 0x83000 <_ZN42_$LT$$RF$T$u20$as$u20$core..fmt..Debug$GT$3fmt17hdb3565c8b9fbe464E+0x40>
   83010: 04 00 00 b0  	adrp	x4, 0x84000 <_ZN42_$LT$$RF$T$u20$as$u20$core..fmt..Debug$GT$3fmt17hdb3565c8b9fbe464E+0x48>
   83014: e8 07 9f 9a  	cset	x8, ne
   83018: 21 b8 1f 91  	add	x1, x1, #2030
   8301c: 84 20 0f 91  	add	x4, x4, #968
   83020: e0 03 00 91  	mov	x0, sp
   83024: e3 63 00 91  	add	x3, sp, #24
   83028: 82 00 80 52  	mov	w2, #4
   8302c: f3 23 00 a9  	stp	x19, x8, [sp]
   83030: f4 0f 00 f9  	str	x20, [sp, #24]
   83034: e4 fc ff 97  	bl	0x823c4 <_ZN4core3fmt8builders11DebugStruct5field17hdc89cd457900d764E>
   83038: 13 00 00 b0  	adrp	x19, 0x84000 <_ZN42_$LT$$RF$T$u20$as$u20$core..fmt..Debug$GT$3fmt17hdb3565c8b9fbe464E+0x70>
   8303c: 01 00 00 90  	adrp	x1, 0x83000 <_ZN42_$LT$$RF$T$u20$as$u20$core..fmt..Debug$GT$3fmt17hdb3565c8b9fbe464E+0x70>
   83040: 73 a2 0f 91  	add	x19, x19, #1000
   83044: 21 c8 1f 91  	add	x1, x1, #2034
   83048: e0 03 00 91  	mov	x0, sp
   8304c: e3 63 00 91  	add	x3, sp, #24
   83050: 82 00 80 52  	mov	w2, #4
   83054: e4 03 13 aa  	mov	x4, x19
   83058: f5 0f 00 f9  	str	x21, [sp, #24]
   8305c: da fc ff 97  	bl	0x823c4 <_ZN4core3fmt8builders11DebugStruct5field17hdc89cd457900d764E>
   83060: 01 00 00 b0  	adrp	x1, 0x84000 <_ZN42_$LT$$RF$T$u20$as$u20$core..fmt..Debug$GT$3fmt17hdb3565c8b9fbe464E+0x98>
   83064: 21 20 10 91  	add	x1, x1, #1032
   83068: e0 03 00 91  	mov	x0, sp
   8306c: e3 63 00 91  	add	x3, sp, #24
   83070: 62 00 80 52  	mov	w2, #3
   83074: e4 03 13 aa  	mov	x4, x19
   83078: f6 0f 00 f9  	str	x22, [sp, #24]
   8307c: d2 fc ff 97  	bl	0x823c4 <_ZN4core3fmt8builders11DebugStruct5field17hdc89cd457900d764E>
   83080: e8 27 40 39  	ldrb	w8, [sp, #9]
   83084: e0 23 40 39  	ldrb	w0, [sp, #8]
   83088: 48 02 00 34  	cbz	w8, 0x830d0 <_ZN42_$LT$$RF$T$u20$as$u20$core..fmt..Debug$GT$3fmt17hdb3565c8b9fbe464E+0x104>
   8308c: 60 00 00 34  	cbz	w0, 0x83098 <_ZN42_$LT$$RF$T$u20$as$u20$core..fmt..Debug$GT$3fmt17hdb3565c8b9fbe464E+0xcc>
   83090: 20 00 80 52  	mov	w0, #1
   83094: 0f 00 00 14  	b	0x830d0 <_ZN42_$LT$$RF$T$u20$as$u20$core..fmt..Debug$GT$3fmt17hdb3565c8b9fbe464E+0x104>
   83098: e8 03 40 f9  	ldr	x8, [sp]
   8309c: 09 c1 40 39  	ldrb	w9, [x8, #48]
   830a0: c9 00 10 37  	tbnz	w9, #2, 0x830b8 <_ZN42_$LT$$RF$T$u20$as$u20$core..fmt..Debug$GT$3fmt17hdb3565c8b9fbe464E+0xec>
   830a4: 00 25 42 a9  	ldp	x0, x9, [x8, #32]
   830a8: 01 00 00 b0  	adrp	x1, 0x84000 <_ZN42_$LT$$RF$T$u20$as$u20$core..fmt..Debug$GT$3fmt17hdb3565c8b9fbe464E+0xe0>
   830ac: 21 c4 0d 91  	add	x1, x1, #881
   830b0: 42 00 80 52  	mov	w2, #2
   830b4: 05 00 00 14  	b	0x830c8 <_ZN42_$LT$$RF$T$u20$as$u20$core..fmt..Debug$GT$3fmt17hdb3565c8b9fbe464E+0xfc>
   830b8: 00 25 42 a9  	ldp	x0, x9, [x8, #32]
   830bc: 01 00 00 b0  	adrp	x1, 0x84000 <_ZN42_$LT$$RF$T$u20$as$u20$core..fmt..Debug$GT$3fmt17hdb3565c8b9fbe464E+0xf4>
   830c0: 21 c0 0d 91  	add	x1, x1, #880
   830c4: 22 00 80 52  	mov	w2, #1
   830c8: 28 0d 40 f9  	ldr	x8, [x9, #24]
   830cc: 00 01 3f d6  	blr	x8
   830d0: f4 4f 43 a9  	ldp	x20, x19, [sp, #48]
   830d4: f6 57 42 a9  	ldp	x22, x21, [sp, #32]
   830d8: fe 0b 40 f9  	ldr	x30, [sp, #16]
   830dc: 1f 00 00 71  	cmp	w0, #0
   830e0: e0 07 9f 1a  	cset	w0, ne
   830e4: ff 03 01 91  	add	sp, sp, #64
   830e8: c0 03 5f d6  	ret

00000000000830ec <_ZN42_$LT$$RF$T$u20$as$u20$core..fmt..Debug$GT$3fmt17h91a03beae5aa8267E>:
   830ec: ff 03 02 d1  	sub	sp, sp, #128
   830f0: fe 5f 05 a9  	stp	x30, x23, [sp, #80]
   830f4: f6 57 06 a9  	stp	x22, x21, [sp, #96]
   830f8: f4 4f 07 a9  	stp	x20, x19, [sp, #112]
   830fc: 17 00 40 f9  	ldr	x23, [x0]
   83100: f5 03 01 aa  	mov	x21, x1
   83104: e8 02 40 f9  	ldr	x8, [x23]
   83108: 08 02 00 b4  	cbz	x8, 0x83148 <_ZN42_$LT$$RF$T$u20$as$u20$core..fmt..Debug$GT$3fmt17h91a03beae5aa8267E+0x5c>
   8310c: b3 52 42 a9  	ldp	x19, x20, [x21, #32]
   83110: 01 00 00 90  	adrp	x1, 0x83000 <_ZN42_$LT$$RF$T$u20$as$u20$core..fmt..Debug$GT$3fmt17h91a03beae5aa8267E+0x24>
   83114: 21 98 1f 91  	add	x1, x1, #2022
   83118: 82 00 80 52  	mov	w2, #4
   8311c: 96 0e 40 f9  	ldr	x22, [x20, #24]
   83120: e0 03 13 aa  	mov	x0, x19
   83124: c0 02 3f d6  	blr	x22
   83128: 40 02 00 36  	tbz	w0, #0, 0x83170 <_ZN42_$LT$$RF$T$u20$as$u20$core..fmt..Debug$GT$3fmt17h91a03beae5aa8267E+0x84>
   8312c: 35 00 80 52  	mov	w21, #1
   83130: e0 03 15 2a  	mov	w0, w21
   83134: f4 4f 47 a9  	ldp	x20, x19, [sp, #112]
   83138: f6 57 46 a9  	ldp	x22, x21, [sp, #96]
   8313c: fe 5f 45 a9  	ldp	x30, x23, [sp, #80]
   83140: ff 03 02 91  	add	sp, sp, #128
   83144: c0 03 5f d6  	ret
   83148: a0 22 42 a9  	ldp	x0, x8, [x21, #32]
   8314c: f4 4f 47 a9  	ldp	x20, x19, [sp, #112]
   83150: f6 57 46 a9  	ldp	x22, x21, [sp, #96]
   83154: fe 5f 45 a9  	ldp	x30, x23, [sp, #80]
   83158: 03 0d 40 f9  	ldr	x3, [x8, #24]
   8315c: 01 00 00 90  	adrp	x1, 0x83000 <_ZN42_$LT$$RF$T$u20$as$u20$core..fmt..Debug$GT$3fmt17h91a03beae5aa8267E+0x70>
   83160: 21 d8 1f 91  	add	x1, x1, #2038
   83164: 82 00 80 52  	mov	w2, #4
   83168: ff 03 02 91  	add	sp, sp, #128
   8316c: 60 00 1f d6  	br	x3
   83170: a8 c2 40 39  	ldrb	w8, [x21, #48]
   83174: 48 02 10 37  	tbnz	w8, #2, 0x831bc <_ZN42_$LT$$RF$T$u20$as$u20$core..fmt..Debug$GT$3fmt17h91a03beae5aa8267E+0xd0>
   83178: 01 00 00 b0  	adrp	x1, 0x84000 <_ZN42_$LT$$RF$T$u20$as$u20$core..fmt..Debug$GT$3fmt17h91a03beae5aa8267E+0x90>
   8317c: 21 cc 0d 91  	add	x1, x1, #883
   83180: 22 00 80 52  	mov	w2, #1
   83184: e0 03 13 aa  	mov	x0, x19
   83188: 35 00 80 52  	mov	w21, #1
   8318c: c0 02 3f d6  	blr	x22
   83190: 00 fd 07 37  	tbnz	w0, #0, 0x83130 <_ZN42_$LT$$RF$T$u20$as$u20$core..fmt..Debug$GT$3fmt17h91a03beae5aa8267E+0x44>
   83194: e1 02 40 f9  	ldr	x1, [x23]
   83198: e0 83 00 91  	add	x0, sp, #32
   8319c: 02 06 80 52  	mov	w2, #48
   831a0: 46 00 00 94  	bl	0x832b8 <memcpy>
   831a4: e2 83 00 91  	add	x2, sp, #32
   831a8: e0 03 13 aa  	mov	x0, x19
   831ac: e1 03 14 aa  	mov	x1, x20
   831b0: 35 f8 ff 97  	bl	0x81284 <_ZN4core3fmt5write17h4089dd81629a8d2eE>
   831b4: c0 fb 07 37  	tbnz	w0, #0, 0x8312c <_ZN42_$LT$$RF$T$u20$as$u20$core..fmt..Debug$GT$3fmt17h91a03beae5aa8267E+0x40>
   831b8: 1c 00 00 14  	b	0x83228 <_ZN42_$LT$$RF$T$u20$as$u20$core..fmt..Debug$GT$3fmt17h91a03beae5aa8267E+0x13c>
   831bc: 01 00 00 b0  	adrp	x1, 0x84000 <_ZN42_$LT$$RF$T$u20$as$u20$core..fmt..Debug$GT$3fmt17h91a03beae5aa8267E+0xd4>
   831c0: 21 d0 0d 91  	add	x1, x1, #884
   831c4: 42 00 80 52  	mov	w2, #2
   831c8: e0 03 13 aa  	mov	x0, x19
   831cc: c0 02 3f d6  	blr	x22
   831d0: 35 00 80 52  	mov	w21, #1
   831d4: e0 fa 07 37  	tbnz	w0, #0, 0x83130 <_ZN42_$LT$$RF$T$u20$as$u20$core..fmt..Debug$GT$3fmt17h91a03beae5aa8267E+0x44>
   831d8: e8 73 00 91  	add	x8, sp, #28
   831dc: f5 73 00 39  	strb	w21, [sp, #28]
   831e0: f3 53 00 a9  	stp	x19, x20, [sp]
   831e4: e8 0b 00 f9  	str	x8, [sp, #16]
   831e8: e1 02 40 f9  	ldr	x1, [x23]
   831ec: e0 83 00 91  	add	x0, sp, #32
   831f0: 02 06 80 52  	mov	w2, #48
   831f4: 31 00 00 94  	bl	0x832b8 <memcpy>
   831f8: 01 00 00 b0  	adrp	x1, 0x84000 <_ZN42_$LT$$RF$T$u20$as$u20$core..fmt..Debug$GT$3fmt17h91a03beae5aa8267E+0x110>
   831fc: 21 20 0c 91  	add	x1, x1, #776
   83200: e0 03 00 91  	mov	x0, sp
   83204: e2 83 00 91  	add	x2, sp, #32
   83208: 1f f8 ff 97  	bl	0x81284 <_ZN4core3fmt5write17h4089dd81629a8d2eE>
   8320c: 00 f9 07 37  	tbnz	w0, #0, 0x8312c <_ZN42_$LT$$RF$T$u20$as$u20$core..fmt..Debug$GT$3fmt17h91a03beae5aa8267E+0x40>
   83210: 01 00 00 b0  	adrp	x1, 0x84000 <_ZN42_$LT$$RF$T$u20$as$u20$core..fmt..Debug$GT$3fmt17h91a03beae5aa8267E+0x128>
   83214: 21 e0 0c 91  	add	x1, x1, #824
   83218: e0 03 00 91  	mov	x0, sp
   8321c: 42 00 80 52  	mov	w2, #2
   83220: c3 f8 ff 97  	bl	0x8152c <_ZN68_$LT$core..fmt..builders..PadAdapter$u20$as$u20$core..fmt..Write$GT$9write_str17h006d11991b68be72E>
   83224: 40 f8 07 37  	tbnz	w0, #0, 0x8312c <_ZN42_$LT$$RF$T$u20$as$u20$core..fmt..Debug$GT$3fmt17h91a03beae5aa8267E+0x40>
   83228: 01 00 00 b0  	adrp	x1, 0x84000 <_ZN42_$LT$$RF$T$u20$as$u20$core..fmt..Debug$GT$3fmt17h91a03beae5aa8267E+0x140>
   8322c: 21 d8 0d 91  	add	x1, x1, #886
   83230: 22 00 80 52  	mov	w2, #1
   83234: e0 03 13 aa  	mov	x0, x19
   83238: c0 02 3f d6  	blr	x22
   8323c: f5 03 00 2a  	mov	w21, w0
   83240: bc ff ff 17  	b	0x83130 <_ZN42_$LT$$RF$T$u20$as$u20$core..fmt..Debug$GT$3fmt17h91a03beae5aa8267E+0x44>

0000000000083244 <_ZN42_$LT$$RF$T$u20$as$u20$core..fmt..Debug$GT$3fmt17hc72048f68cee3930E>:
   83244: ff 83 00 d1  	sub	sp, sp, #32
   83248: fe 4f 01 a9  	stp	x30, x19, [sp, #16]
   8324c: 33 20 42 a9  	ldp	x19, x8, [x1, #32]
   83250: 01 00 00 90  	adrp	x1, 0x83000 <_ZN42_$LT$$RF$T$u20$as$u20$core..fmt..Debug$GT$3fmt17hc72048f68cee3930E+0xc>
   83254: 21 c8 1e 91  	add	x1, x1, #1970
   83258: 62 00 80 52  	mov	w2, #3
   8325c: 03 0d 40 f9  	ldr	x3, [x8, #24]
   83260: e0 03 13 aa  	mov	x0, x19
   83264: e3 07 00 f9  	str	x3, [sp, #8]
   83268: 60 00 3f d6  	blr	x3
   8326c: a0 00 00 36  	tbz	w0, #0, 0x83280 <_ZN42_$LT$$RF$T$u20$as$u20$core..fmt..Debug$GT$3fmt17hc72048f68cee3930E+0x3c>
   83270: fe 4f 41 a9  	ldp	x30, x19, [sp, #16]
   83274: 20 00 80 52  	mov	w0, #1
   83278: ff 83 00 91  	add	sp, sp, #32
   8327c: c0 03 5f d6  	ret
   83280: e0 03 13 aa  	mov	x0, x19
   83284: e3 07 40 f9  	ldr	x3, [sp, #8]
   83288: fe 4f 41 a9  	ldp	x30, x19, [sp, #16]
   8328c: 01 00 00 90  	adrp	x1, 0x83000 <_ZN42_$LT$$RF$T$u20$as$u20$core..fmt..Debug$GT$3fmt17hc72048f68cee3930E+0x48>
   83290: 21 d4 1e 91  	add	x1, x1, #1973
   83294: e2 00 80 52  	mov	w2, #7
   83298: ff 83 00 91  	add	sp, sp, #32
   8329c: 60 00 1f d6  	br	x3

00000000000832a0 <_ZN53_$LT$core..fmt..Error$u20$as$u20$core..fmt..Debug$GT$3fmt17h7940a6b0f953e665E>:
   832a0: 20 20 42 a9  	ldp	x0, x8, [x1, #32]
   832a4: 01 00 00 b0  	adrp	x1, 0x84000 <_ZN53_$LT$core..fmt..Error$u20$as$u20$core..fmt..Debug$GT$3fmt17h7940a6b0f953e665E+0x8>
   832a8: 21 20 12 91  	add	x1, x1, #1160
   832ac: a2 00 80 52  	mov	w2, #5
   832b0: 03 0d 40 f9  	ldr	x3, [x8, #24]
   832b4: 60 00 1f d6  	br	x3

00000000000832b8 <memcpy>:
   832b8: c2 00 00 b4  	cbz	x2, 0x832d0 <memcpy+0x18>
   832bc: e8 03 00 aa  	mov	x8, x0
   832c0: 29 14 40 38  	ldrb	w9, [x1], #1
   832c4: 42 04 00 f1  	subs	x2, x2, #1
   832c8: 09 15 00 38  	strb	w9, [x8], #1
   832cc: a1 ff ff 54  	b.ne	0x832c0 <memcpy+0x8>
   832d0: c0 03 5f d6  	ret

00000000000832d4 <memset>:
   832d4: 62 02 00 b4  	cbz	x2, 0x83320 <memset+0x4c>
   832d8: 5f 04 00 f1  	cmp	x2, #1
   832dc: 61 00 00 54  	b.ne	0x832e8 <memset+0x14>
   832e0: e8 03 1f aa  	mov	x8, xzr
   832e4: 0a 00 00 14  	b	0x8330c <memset+0x38>
   832e8: 48 f8 7f 92  	and	x8, x2, #0xfffffffffffffffe
   832ec: 09 04 00 91  	add	x9, x0, #1
   832f0: ea 03 08 aa  	mov	x10, x8
   832f4: 21 f1 1f 38  	sturb	w1, [x9, #-1]
   832f8: 21 25 00 38  	strb	w1, [x9], #2
   832fc: 4a 09 00 f1  	subs	x10, x10, #2
   83300: a1 ff ff 54  	b.ne	0x832f4 <memset+0x20>
   83304: 1f 01 02 eb  	cmp	x8, x2
   83308: c0 00 00 54  	b.eq	0x83320 <memset+0x4c>
   8330c: 49 00 08 cb  	sub	x9, x2, x8
   83310: 08 00 08 8b  	add	x8, x0, x8
   83314: 29 05 00 f1  	subs	x9, x9, #1
   83318: 01 15 00 38  	strb	w1, [x8], #1
   8331c: c1 ff ff 54  	b.ne	0x83314 <memset+0x40>
   83320: c0 03 5f d6  	ret
