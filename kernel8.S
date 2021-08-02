
target/aarch64-unknown-none-softfloat/release/baremetal-pi:	file format elf64-littleaarch64


Disassembly of section .boot:

0000000000080000 <_start>:
   80000: ff 03 6d b2  	orr	sp, xzr, #0x80000
   80004: a8 00 38 d5  	mrs	x8, MPIDR_EL1
   80008: 1f 05 40 f2  	tst	x8, #0x3
   8000c: 60 00 00 54  	b.eq	0x80018 <_start+0x18>
   80010: 5f 20 03 d5  	wfe
   80014: ff ff ff 17  	b	0x80010 <_start+0x10>
   80018: 10 02 00 94  	bl	0x80858 <_ZN12baremetal_pi4grit9stage_one17he24b54ccefa5d11eE>
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
   800d4: 19 00 00 94  	bl	0x80138 <_ZN62_$LT$baremetal_pi..uart..Uart1$u20$as$u20$core..fmt..Write$GT$9write_str17ha964ce6a0ebd28faE>
   800d8: e0 03 1f 2a  	mov	w0, wzr
   800dc: fe 07 41 f8  	ldr	x30, [sp], #16
   800e0: c0 03 5f d6  	ret

00000000000800e4 <_ZN50_$LT$$RF$mut$u20$W$u20$as$u20$core..fmt..Write$GT$9write_fmt17h9c893b50c2b84b21E>:
   800e4: ff 03 01 d1  	sub	sp, sp, #64
   800e8: 08 00 40 f9  	ldr	x8, [x0]
   800ec: e0 03 00 91  	mov	x0, sp
   800f0: 02 06 80 52  	mov	w2, #48
   800f4: fe 23 03 a9  	stp	x30, x8, [sp, #48]
   800f8: 7b 0c 00 94  	bl	0x832e4 <memcpy>
   800fc: 01 00 00 f0  	adrp	x1, 0x83000 <_ZN50_$LT$$RF$mut$u20$W$u20$as$u20$core..fmt..Write$GT$9write_fmt17h9c893b50c2b84b21E+0x24>
   80100: e0 e3 00 91  	add	x0, sp, #56
   80104: 21 80 0e 91  	add	x1, x1, #928
   80108: e2 03 00 91  	mov	x2, sp
   8010c: 69 04 00 94  	bl	0x812b0 <_ZN4core3fmt5write17h4089dd81629a8d2eE>
   80110: fe 1b 40 f9  	ldr	x30, [sp, #48]
   80114: ff 03 01 91  	add	sp, sp, #64
   80118: c0 03 5f d6  	ret

000000000008011c <_ZN50_$LT$$RF$mut$u20$W$u20$as$u20$core..fmt..Write$GT$9write_str17h4320e2cabb78e7d9E>:
   8011c: fe 0f 1f f8  	str	x30, [sp, #-16]!
   80120: e0 03 01 aa  	mov	x0, x1
   80124: e1 03 02 aa  	mov	x1, x2
   80128: 04 00 00 94  	bl	0x80138 <_ZN62_$LT$baremetal_pi..uart..Uart1$u20$as$u20$core..fmt..Write$GT$9write_str17ha964ce6a0ebd28faE>
   8012c: e0 03 1f 2a  	mov	w0, wzr
   80130: fe 07 41 f8  	ldr	x30, [sp], #16
   80134: c0 03 5f d6  	ret

0000000000080138 <_ZN62_$LT$baremetal_pi..uart..Uart1$u20$as$u20$core..fmt..Write$GT$9write_str17ha964ce6a0ebd28faE>:
   80138: e8 03 00 aa  	mov	x8, x0
   8013c: 8a 0c 8a 52  	mov	w10, #20580
   80140: 0d 00 00 f0  	adrp	x13, 0x83000 <_ZN62_$LT$baremetal_pi..uart..Uart1$u20$as$u20$core..fmt..Write$GT$9write_str17ha964ce6a0ebd28faE+0x14>
   80144: e0 03 1f aa  	mov	x0, xzr
   80148: ef 03 1f aa  	mov	x15, xzr
   8014c: e9 03 1f aa  	mov	x9, xzr
   80150: 2a e4 a7 72  	movk	w10, #16161, lsl #16
   80154: 0b 01 01 8b  	add	x11, x8, x1
   80158: 6c 00 80 52  	mov	w12, #3
   8015c: ee 03 08 aa  	mov	x14, x8
   80160: ad 41 0f 91  	add	x13, x13, #976
   80164: 29 01 00 b5  	cbnz	x9, 0x80188 <_ZN62_$LT$baremetal_pi..uart..Uart1$u20$as$u20$core..fmt..Write$GT$9write_str17ha964ce6a0ebd28faE+0x50>
   80168: 11 00 00 14  	b	0x801ac <_ZN62_$LT$baremetal_pi..uart..Uart1$u20$as$u20$core..fmt..Write$GT$9write_str17ha964ce6a0ebd28faE+0x74>
   8016c: 51 00 80 52  	mov	w17, #2
   80170: e9 03 0d aa  	mov	x9, x13
   80174: 0e 00 0e cb  	sub	x14, x0, x14
   80178: c0 01 0f 8b  	add	x0, x14, x15
   8017c: 2f 01 11 8b  	add	x15, x9, x17
   80180: ee 03 10 aa  	mov	x14, x16
   80184: 49 01 00 b4  	cbz	x9, 0x801ac <_ZN62_$LT$baremetal_pi..uart..Uart1$u20$as$u20$core..fmt..Write$GT$9write_str17ha964ce6a0ebd28faE+0x74>
   80188: 3f 01 0f eb  	cmp	x9, x15
   8018c: 00 01 00 54  	b.eq	0x801ac <_ZN62_$LT$baremetal_pi..uart..Uart1$u20$as$u20$core..fmt..Write$GT$9write_str17ha964ce6a0ebd28faE+0x74>
   80190: 30 05 00 91  	add	x16, x9, #1
   80194: 51 01 40 b9  	ldr	w17, [x10]
   80198: f1 ff 0f 36  	tbz	w17, #1, 0x80194 <_ZN62_$LT$baremetal_pi..uart..Uart1$u20$as$u20$core..fmt..Write$GT$9write_str17ha964ce6a0ebd28faE+0x5c>
   8019c: 31 01 40 39  	ldrb	w17, [x9]
   801a0: e9 03 10 aa  	mov	x9, x16
   801a4: 51 c1 1d b8  	stur	w17, [x10, #-36]
   801a8: 09 ff ff b5  	cbnz	x9, 0x80188 <_ZN62_$LT$baremetal_pi..uart..Uart1$u20$as$u20$core..fmt..Write$GT$9write_str17ha964ce6a0ebd28faE+0x50>
   801ac: 4e 09 00 b4  	cbz	x14, 0x802d4 <_ZN62_$LT$baremetal_pi..uart..Uart1$u20$as$u20$core..fmt..Write$GT$9write_str17ha964ce6a0ebd28faE+0x19c>
   801b0: 7f 01 0e eb  	cmp	x11, x14
   801b4: 00 09 00 54  	b.eq	0x802d4 <_ZN62_$LT$baremetal_pi..uart..Uart1$u20$as$u20$core..fmt..Write$GT$9write_str17ha964ce6a0ebd28faE+0x19c>
   801b8: ef 03 0e aa  	mov	x15, x14
   801bc: e9 15 c0 38  	ldrsb	w9, [x15], #1
   801c0: 31 1d 00 12  	and	w17, w9, #0xff
   801c4: 89 00 f8 37  	tbnz	w9, #31, 0x801d4 <_ZN62_$LT$baremetal_pi..uart..Uart1$u20$as$u20$core..fmt..Write$GT$9write_str17ha964ce6a0ebd28faE+0x9c>
   801c8: f0 03 0f aa  	mov	x16, x15
   801cc: e9 03 11 2a  	mov	w9, w17
   801d0: 2f 00 00 14  	b	0x8028c <_ZN62_$LT$baremetal_pi..uart..Uart1$u20$as$u20$core..fmt..Write$GT$9write_str17ha964ce6a0ebd28faE+0x154>
   801d4: ff 01 0b eb  	cmp	x15, x11
   801d8: c0 02 00 54  	b.eq	0x80230 <_ZN62_$LT$baremetal_pi..uart..Uart1$u20$as$u20$core..fmt..Write$GT$9write_str17ha964ce6a0ebd28faE+0xf8>
   801dc: c9 05 40 39  	ldrb	w9, [x14, #1]
   801e0: d0 09 00 91  	add	x16, x14, #2
   801e4: ef 03 10 aa  	mov	x15, x16
   801e8: 29 15 00 12  	and	w9, w9, #0x3f
   801ec: 32 12 00 12  	and	w18, w17, #0x1f
   801f0: 3f 7e 03 71  	cmp	w17, #223
   801f4: a9 02 00 54  	b.ls	0x80248 <_ZN62_$LT$baremetal_pi..uart..Uart1$u20$as$u20$core..fmt..Write$GT$9write_str17ha964ce6a0ebd28faE+0x110>
   801f8: ff 01 0b eb  	cmp	x15, x11
   801fc: a0 02 00 54  	b.eq	0x80250 <_ZN62_$LT$baremetal_pi..uart..Uart1$u20$as$u20$core..fmt..Write$GT$9write_str17ha964ce6a0ebd28faE+0x118>
   80200: e2 15 40 38  	ldrb	w2, [x15], #1
   80204: f0 03 0f aa  	mov	x16, x15
   80208: 42 14 00 12  	and	w2, w2, #0x3f
   8020c: 22 15 1a 33  	bfi	w2, w9, #6, #6
   80210: 3f c2 03 71  	cmp	w17, #240
   80214: 83 02 00 54  	b.lo	0x80264 <_ZN62_$LT$baremetal_pi..uart..Uart1$u20$as$u20$core..fmt..Write$GT$9write_str17ha964ce6a0ebd28faE+0x12c>
   80218: ff 01 0b eb  	cmp	x15, x11
   8021c: a0 02 00 54  	b.eq	0x80270 <_ZN62_$LT$baremetal_pi..uart..Uart1$u20$as$u20$core..fmt..Write$GT$9write_str17ha964ce6a0ebd28faE+0x138>
   80220: e9 15 40 38  	ldrb	w9, [x15], #1
   80224: f0 03 0f aa  	mov	x16, x15
   80228: 29 15 00 12  	and	w9, w9, #0x3f
   8022c: 13 00 00 14  	b	0x80278 <_ZN62_$LT$baremetal_pi..uart..Uart1$u20$as$u20$core..fmt..Write$GT$9write_str17ha964ce6a0ebd28faE+0x140>
   80230: e9 03 1f 2a  	mov	w9, wzr
   80234: f0 03 0f aa  	mov	x16, x15
   80238: ef 03 0b aa  	mov	x15, x11
   8023c: 32 12 00 12  	and	w18, w17, #0x1f
   80240: 3f 7e 03 71  	cmp	w17, #223
   80244: a8 fd ff 54  	b.hi	0x801f8 <_ZN62_$LT$baremetal_pi..uart..Uart1$u20$as$u20$core..fmt..Write$GT$9write_str17ha964ce6a0ebd28faE+0xc0>
   80248: 49 12 1a 33  	bfi	w9, w18, #6, #5
   8024c: 10 00 00 14  	b	0x8028c <_ZN62_$LT$baremetal_pi..uart..Uart1$u20$as$u20$core..fmt..Write$GT$9write_str17ha964ce6a0ebd28faE+0x154>
   80250: e2 03 1f 2a  	mov	w2, wzr
   80254: ef 03 0b aa  	mov	x15, x11
   80258: 22 15 1a 33  	bfi	w2, w9, #6, #6
   8025c: 3f c2 03 71  	cmp	w17, #240
   80260: c2 fd ff 54  	b.hs	0x80218 <_ZN62_$LT$baremetal_pi..uart..Uart1$u20$as$u20$core..fmt..Write$GT$9write_str17ha964ce6a0ebd28faE+0xe0>
   80264: 42 12 14 33  	bfi	w2, w18, #12, #5
   80268: e9 03 02 2a  	mov	w9, w2
   8026c: 08 00 00 14  	b	0x8028c <_ZN62_$LT$baremetal_pi..uart..Uart1$u20$as$u20$core..fmt..Write$GT$9write_str17ha964ce6a0ebd28faE+0x154>
   80270: e9 03 1f 2a  	mov	w9, wzr
   80274: ef 03 0b aa  	mov	x15, x11
   80278: 51 0a 0e 53  	ubfiz	w17, w18, #18, #3
   8027c: 51 2c 1a 33  	bfi	w17, w2, #6, #12
   80280: 29 02 09 2a  	orr	w9, w17, w9
   80284: 3f 41 44 71  	cmp	w9, #272, lsl #12
   80288: 60 02 00 54  	b.eq	0x802d4 <_ZN62_$LT$baremetal_pi..uart..Uart1$u20$as$u20$core..fmt..Write$GT$9write_str17ha964ce6a0ebd28faE+0x19c>
   8028c: 3f 29 00 71  	cmp	w9, #10
   80290: e0 f6 ff 54  	b.eq	0x8016c <_ZN62_$LT$baremetal_pi..uart..Uart1$u20$as$u20$core..fmt..Write$GT$9write_str17ha964ce6a0ebd28faE+0x34>
   80294: 3f 01 02 71  	cmp	w9, #128
   80298: 62 00 00 54  	b.hs	0x802a4 <_ZN62_$LT$baremetal_pi..uart..Uart1$u20$as$u20$core..fmt..Write$GT$9write_str17ha964ce6a0ebd28faE+0x16c>
   8029c: 31 00 80 52  	mov	w17, #1
   802a0: 07 00 00 14  	b	0x802bc <_ZN62_$LT$baremetal_pi..uart..Uart1$u20$as$u20$core..fmt..Write$GT$9write_str17ha964ce6a0ebd28faE+0x184>
   802a4: 3f 01 20 71  	cmp	w9, #2048
   802a8: 62 00 00 54  	b.hs	0x802b4 <_ZN62_$LT$baremetal_pi..uart..Uart1$u20$as$u20$core..fmt..Write$GT$9write_str17ha964ce6a0ebd28faE+0x17c>
   802ac: 51 00 80 52  	mov	w17, #2
   802b0: 03 00 00 14  	b	0x802bc <_ZN62_$LT$baremetal_pi..uart..Uart1$u20$as$u20$core..fmt..Write$GT$9write_str17ha964ce6a0ebd28faE+0x184>
   802b4: 3f 41 40 71  	cmp	w9, #16, lsl #12
   802b8: 91 35 8c 9a  	cinc	x17, x12, hs
   802bc: 29 02 00 ab  	adds	x9, x17, x0
   802c0: a2 01 00 54  	b.hs	0x802f4 <_ZN62_$LT$baremetal_pi..uart..Uart1$u20$as$u20$core..fmt..Write$GT$9write_str17ha964ce6a0ebd28faE+0x1bc>
   802c4: 3f 01 01 eb  	cmp	x9, x1
   802c8: c8 00 00 54  	b.hi	0x802e0 <_ZN62_$LT$baremetal_pi..uart..Uart1$u20$as$u20$core..fmt..Write$GT$9write_str17ha964ce6a0ebd28faE+0x1a8>
   802cc: 09 01 00 8b  	add	x9, x8, x0
   802d0: a9 ff ff 17  	b	0x80174 <_ZN62_$LT$baremetal_pi..uart..Uart1$u20$as$u20$core..fmt..Write$GT$9write_str17ha964ce6a0ebd28faE+0x3c>
   802d4: 48 01 40 b9  	ldr	w8, [x10]
   802d8: e8 ff 1f 36  	tbz	w8, #3, 0x802d4 <_ZN62_$LT$baremetal_pi..uart..Uart1$u20$as$u20$core..fmt..Write$GT$9write_str17ha964ce6a0ebd28faE+0x19c>
   802dc: c0 03 5f d6  	ret
   802e0: 02 00 00 f0  	adrp	x2, 0x83000 <_ZN62_$LT$baremetal_pi..uart..Uart1$u20$as$u20$core..fmt..Write$GT$9write_str17ha964ce6a0ebd28faE+0x1b4>
   802e4: e0 03 09 aa  	mov	x0, x9
   802e8: 42 80 0f 91  	add	x2, x2, #992
   802ec: c6 02 00 94  	bl	0x80e04 <_ZN4core5slice5index24slice_end_index_len_fail17h827cf37c6cc32b14E>
   802f0: 20 00 20 d4  	brk	#0x1
   802f4: 02 00 00 f0  	adrp	x2, 0x83000 <_ZN62_$LT$baremetal_pi..uart..Uart1$u20$as$u20$core..fmt..Write$GT$9write_str17ha964ce6a0ebd28faE+0x1c8>
   802f8: e1 03 09 aa  	mov	x1, x9
   802fc: 42 80 0f 91  	add	x2, x2, #992
   80300: 6b 04 00 94  	bl	0x814ac <_ZN4core5slice5index22slice_index_order_fail17he71d7140076fff6eE>
   80304: 20 00 20 d4  	brk	#0x1

0000000000080308 <_ZN42_$LT$$RF$T$u20$as$u20$core..fmt..Debug$GT$3fmt17habe9122735e55e0cE>:
   80308: 00 00 40 f9  	ldr	x0, [x0]
   8030c: f4 0a 00 14  	b	0x82edc <_ZN71_$LT$core..panic..panic_info..PanicInfo$u20$as$u20$core..fmt..Debug$GT$3fmt17hdab5301ab1e937b8E>

0000000000080310 <rust_begin_unwind>:
   80310: ff 83 01 d1  	sub	sp, sp, #96
   80314: fe 2b 00 f9  	str	x30, [sp, #80]
   80318: 89 00 80 52  	mov	w9, #4
   8031c: e0 07 00 f9  	str	x0, [sp, #8]
   80320: 09 e4 a7 72  	movk	w9, #16160, lsl #16
   80324: 4b 02 80 52  	mov	w11, #18
   80328: 08 0d 8a 52  	mov	w8, #20584
   8032c: 28 e4 a7 72  	movk	w8, #16161, lsl #16
   80330: 2a 01 40 b9  	ldr	w10, [x9]
   80334: 6a 15 14 33  	bfi	w10, w11, #12, #6
   80338: 6b 00 80 52  	mov	w11, #3
   8033c: 2a 01 00 b9  	str	w10, [x9]
   80340: c9 21 80 52  	mov	w9, #270
   80344: 0a 01 40 b9  	ldr	w10, [x8]
   80348: 2a 3d 00 33  	bfxil	w10, w9, #0, #16
   8034c: c9 12 80 52  	mov	w9, #150
   80350: 0a 01 00 b9  	str	w10, [x8]
   80354: 0b 41 1e b8  	stur	w11, [x8, #-28]
   80358: 1f 20 03 d5  	nop
   8035c: 29 05 00 f1  	subs	x9, x9, #1
   80360: c1 ff ff 54  	b.ne	0x80358 <rust_begin_unwind+0x48>
   80364: 69 00 80 52  	mov	w9, #3
   80368: ea 23 00 91  	add	x10, sp, #8
   8036c: 01 00 00 f0  	adrp	x1, 0x83000 <rust_begin_unwind+0x68>
   80370: e0 63 01 91  	add	x0, sp, #88
   80374: 21 80 0e 91  	add	x1, x1, #928
   80378: e2 83 00 91  	add	x2, sp, #32
   8037c: 09 81 1f b8  	stur	w9, [x8, #-8]
   80380: 08 00 00 90  	adrp	x8, 0x80000 <rust_begin_unwind+0x70>
   80384: 08 21 0c 91  	add	x8, x8, #776
   80388: e9 83 00 91  	add	x9, sp, #32
   8038c: ea 23 01 a9  	stp	x10, x8, [sp, #16]
   80390: 08 00 00 f0  	adrp	x8, 0x83000 <rust_begin_unwind+0x8c>
   80394: 08 e1 0f 91  	add	x8, x8, #1016
   80398: e9 2f 00 f9  	str	x9, [sp, #88]
   8039c: 29 00 80 52  	mov	w9, #1
   803a0: 0a 00 00 f0  	adrp	x10, 0x83000 <rust_begin_unwind+0x9c>
   803a4: 4a 21 10 91  	add	x10, x10, #1032
   803a8: e8 27 02 a9  	stp	x8, x9, [sp, #32]
   803ac: e8 43 00 91  	add	x8, sp, #16
   803b0: ea 27 03 a9  	stp	x10, x9, [sp, #48]
   803b4: e8 27 04 a9  	stp	x8, x9, [sp, #64]
   803b8: be 03 00 94  	bl	0x812b0 <_ZN4core3fmt5write17h4089dd81629a8d2eE>
   803bc: 60 00 00 35  	cbnz	w0, 0x803c8 <rust_begin_unwind+0xb8>
   803c0: 5f 20 03 d5  	wfe
   803c4: ff ff ff 17  	b	0x803c0 <rust_begin_unwind+0xb0>
   803c8: 01 00 00 f0  	adrp	x1, 0x83000 <rust_begin_unwind+0xc4>
   803cc: e0 83 00 91  	add	x0, sp, #32
   803d0: 21 00 11 91  	add	x1, x1, #1088
   803d4: 48 04 00 94  	bl	0x814f4 <_ZN4core6result13unwrap_failed17h514395d9b84745f5E>
   803d8: 20 00 20 d4  	brk	#0x1

00000000000803dc <_ZN4core3ptr37drop_in_place$LT$core..fmt..Error$GT$17hc0e0a78b6d7f041bE>:
   803dc: c0 03 5f d6  	ret

00000000000803e0 <_ZN12baremetal_pi4main17h02d93c4b0c6e8c9eE>:
   803e0: ff c3 01 d1  	sub	sp, sp, #112
   803e4: fe 5f 04 a9  	stp	x30, x23, [sp, #64]
   803e8: f6 57 05 a9  	stp	x22, x21, [sp, #80]
   803ec: f4 4f 06 a9  	stp	x20, x19, [sp, #96]
   803f0: 93 03 80 52  	mov	w19, #28
   803f4: 4a 02 80 52  	mov	w10, #18
   803f8: 13 e4 a7 72  	movk	w19, #16160, lsl #16
   803fc: 08 0d 8a 52  	mov	w8, #20584
   80400: 28 e4 a7 72  	movk	w8, #16161, lsl #16
   80404: 6b 00 80 52  	mov	w11, #3
   80408: 69 82 5e b8  	ldur	w9, [x19, #-24]
   8040c: 49 15 14 33  	bfi	w9, w10, #12, #6
   80410: 69 82 1e b8  	stur	w9, [x19, #-24]
   80414: c9 21 80 52  	mov	w9, #270
   80418: 0a 01 40 b9  	ldr	w10, [x8]
   8041c: 2a 3d 00 33  	bfxil	w10, w9, #0, #16
   80420: c9 12 80 52  	mov	w9, #150
   80424: 0a 01 00 b9  	str	w10, [x8]
   80428: 0b 41 1e b8  	stur	w11, [x8, #-28]
   8042c: 1f 20 03 d5  	nop
   80430: 29 05 00 f1  	subs	x9, x9, #1
   80434: c1 ff ff 54  	b.ne	0x8042c <_ZN12baremetal_pi4main17h02d93c4b0c6e8c9eE+0x4c>
   80438: 69 00 80 52  	mov	w9, #3
   8043c: 14 48 88 52  	mov	w20, #16960
   80440: f4 01 a0 72  	movk	w20, #15, lsl #16
   80444: 0a 00 a4 52  	mov	w10, #536870912
   80448: 09 81 1f b8  	stur	w9, [x8, #-8]
   8044c: 68 c2 5e b8  	ldur	w8, [x19, #-20]
   80450: 08 71 02 12  	and	w8, w8, #0xc7ffffff
   80454: 09 01 05 32  	orr	w9, w8, #0x8000000
   80458: e8 03 14 aa  	mov	x8, x20
   8045c: 69 c2 1e b8  	stur	w9, [x19, #-20]
   80460: 6a 02 00 b9  	str	w10, [x19]
   80464: 1f 20 03 d5  	nop
   80468: 08 05 00 f1  	subs	x8, x8, #1
   8046c: c1 ff ff 54  	b.ne	0x80464 <_ZN12baremetal_pi4main17h02d93c4b0c6e8c9eE+0x84>
   80470: 16 00 00 f0  	adrp	x22, 0x83000 <_ZN12baremetal_pi4main17h02d93c4b0c6e8c9eE+0x9c>
   80474: 17 00 00 f0  	adrp	x23, 0x83000 <_ZN12baremetal_pi4main17h02d93c4b0c6e8c9eE+0xa0>
   80478: 01 00 00 f0  	adrp	x1, 0x83000 <_ZN12baremetal_pi4main17h02d93c4b0c6e8c9eE+0xa4>
   8047c: 08 00 a4 52  	mov	w8, #536870912
   80480: e9 43 00 91  	add	x9, sp, #16
   80484: d6 22 13 91  	add	x22, x22, #1224
   80488: 2a 00 80 52  	mov	w10, #1
   8048c: f7 22 15 91  	add	x23, x23, #1352
   80490: 21 80 0e 91  	add	x1, x1, #928
   80494: e0 23 00 91  	add	x0, sp, #8
   80498: e2 43 00 91  	add	x2, sp, #16
   8049c: 68 0e 00 b9  	str	w8, [x19, #12]
   804a0: e9 db 00 a9  	stp	x9, x22, [sp, #8]
   804a4: ea ff 01 a9  	stp	x10, xzr, [sp, #24]
   804a8: ff df 02 a9  	stp	xzr, x23, [sp, #40]
   804ac: ff 1f 00 f9  	str	xzr, [sp, #56]
   804b0: 80 03 00 94  	bl	0x812b0 <_ZN4core3fmt5write17h4089dd81629a8d2eE>
   804b4: 40 1b 00 35  	cbnz	w0, 0x8081c <_ZN12baremetal_pi4main17h02d93c4b0c6e8c9eE+0x43c>
   804b8: 15 20 81 52  	mov	w21, #2304
   804bc: b5 07 a0 72  	movk	w21, #61, lsl #16
   804c0: e8 03 15 aa  	mov	x8, x21
   804c4: 1f 20 03 d5  	nop
   804c8: 08 05 00 f1  	subs	x8, x8, #1
   804cc: c1 ff ff 54  	b.ne	0x804c4 <_ZN12baremetal_pi4main17h02d93c4b0c6e8c9eE+0xe4>
   804d0: 09 00 a4 52  	mov	w9, #536870912
   804d4: e8 03 14 aa  	mov	x8, x20
   804d8: 69 02 00 b9  	str	w9, [x19]
   804dc: 1f 20 03 d5  	nop
   804e0: 08 05 00 f1  	subs	x8, x8, #1
   804e4: c1 ff ff 54  	b.ne	0x804dc <_ZN12baremetal_pi4main17h02d93c4b0c6e8c9eE+0xfc>
   804e8: 01 00 00 f0  	adrp	x1, 0x83000 <_ZN12baremetal_pi4main17h02d93c4b0c6e8c9eE+0x114>
   804ec: 08 00 a4 52  	mov	w8, #536870912
   804f0: e9 43 00 91  	add	x9, sp, #16
   804f4: 2a 00 80 52  	mov	w10, #1
   804f8: 21 80 0e 91  	add	x1, x1, #928
   804fc: e0 23 00 91  	add	x0, sp, #8
   80500: e2 43 00 91  	add	x2, sp, #16
   80504: 68 0e 00 b9  	str	w8, [x19, #12]
   80508: e9 db 00 a9  	stp	x9, x22, [sp, #8]
   8050c: ea ff 01 a9  	stp	x10, xzr, [sp, #24]
   80510: ff df 02 a9  	stp	xzr, x23, [sp, #40]
   80514: ff 1f 00 f9  	str	xzr, [sp, #56]
   80518: 66 03 00 94  	bl	0x812b0 <_ZN4core3fmt5write17h4089dd81629a8d2eE>
   8051c: 00 18 00 37  	tbnz	w0, #0, 0x8081c <_ZN12baremetal_pi4main17h02d93c4b0c6e8c9eE+0x43c>
   80520: e8 03 15 aa  	mov	x8, x21
   80524: 1f 20 03 d5  	nop
   80528: 08 05 00 f1  	subs	x8, x8, #1
   8052c: c1 ff ff 54  	b.ne	0x80524 <_ZN12baremetal_pi4main17h02d93c4b0c6e8c9eE+0x144>
   80530: 09 00 a4 52  	mov	w9, #536870912
   80534: e8 03 14 aa  	mov	x8, x20
   80538: 69 02 00 b9  	str	w9, [x19]
   8053c: 1f 20 03 d5  	nop
   80540: 08 05 00 f1  	subs	x8, x8, #1
   80544: c1 ff ff 54  	b.ne	0x8053c <_ZN12baremetal_pi4main17h02d93c4b0c6e8c9eE+0x15c>
   80548: 01 00 00 f0  	adrp	x1, 0x83000 <_ZN12baremetal_pi4main17h02d93c4b0c6e8c9eE+0x174>
   8054c: 08 00 a4 52  	mov	w8, #536870912
   80550: e9 43 00 91  	add	x9, sp, #16
   80554: 2a 00 80 52  	mov	w10, #1
   80558: 21 80 0e 91  	add	x1, x1, #928
   8055c: e0 23 00 91  	add	x0, sp, #8
   80560: e2 43 00 91  	add	x2, sp, #16
   80564: 68 0e 00 b9  	str	w8, [x19, #12]
   80568: e9 db 00 a9  	stp	x9, x22, [sp, #8]
   8056c: ea ff 01 a9  	stp	x10, xzr, [sp, #24]
   80570: ff df 02 a9  	stp	xzr, x23, [sp, #40]
   80574: ff 1f 00 f9  	str	xzr, [sp, #56]
   80578: 4e 03 00 94  	bl	0x812b0 <_ZN4core3fmt5write17h4089dd81629a8d2eE>
   8057c: 00 15 00 37  	tbnz	w0, #0, 0x8081c <_ZN12baremetal_pi4main17h02d93c4b0c6e8c9eE+0x43c>
   80580: e8 03 15 aa  	mov	x8, x21
   80584: 1f 20 03 d5  	nop
   80588: 08 05 00 f1  	subs	x8, x8, #1
   8058c: c1 ff ff 54  	b.ne	0x80584 <_ZN12baremetal_pi4main17h02d93c4b0c6e8c9eE+0x1a4>
   80590: 09 00 a4 52  	mov	w9, #536870912
   80594: e8 03 14 aa  	mov	x8, x20
   80598: 69 02 00 b9  	str	w9, [x19]
   8059c: 1f 20 03 d5  	nop
   805a0: 08 05 00 f1  	subs	x8, x8, #1
   805a4: c1 ff ff 54  	b.ne	0x8059c <_ZN12baremetal_pi4main17h02d93c4b0c6e8c9eE+0x1bc>
   805a8: 01 00 00 f0  	adrp	x1, 0x83000 <_ZN12baremetal_pi4main17h02d93c4b0c6e8c9eE+0x1d4>
   805ac: 08 00 a4 52  	mov	w8, #536870912
   805b0: e9 43 00 91  	add	x9, sp, #16
   805b4: 2a 00 80 52  	mov	w10, #1
   805b8: 21 80 0e 91  	add	x1, x1, #928
   805bc: e0 23 00 91  	add	x0, sp, #8
   805c0: e2 43 00 91  	add	x2, sp, #16
   805c4: 68 0e 00 b9  	str	w8, [x19, #12]
   805c8: e9 db 00 a9  	stp	x9, x22, [sp, #8]
   805cc: ea ff 01 a9  	stp	x10, xzr, [sp, #24]
   805d0: ff df 02 a9  	stp	xzr, x23, [sp, #40]
   805d4: ff 1f 00 f9  	str	xzr, [sp, #56]
   805d8: 36 03 00 94  	bl	0x812b0 <_ZN4core3fmt5write17h4089dd81629a8d2eE>
   805dc: 00 12 00 37  	tbnz	w0, #0, 0x8081c <_ZN12baremetal_pi4main17h02d93c4b0c6e8c9eE+0x43c>
   805e0: e8 03 15 aa  	mov	x8, x21
   805e4: 1f 20 03 d5  	nop
   805e8: 08 05 00 f1  	subs	x8, x8, #1
   805ec: c1 ff ff 54  	b.ne	0x805e4 <_ZN12baremetal_pi4main17h02d93c4b0c6e8c9eE+0x204>
   805f0: 09 00 a4 52  	mov	w9, #536870912
   805f4: e8 03 14 aa  	mov	x8, x20
   805f8: 69 02 00 b9  	str	w9, [x19]
   805fc: 1f 20 03 d5  	nop
   80600: 08 05 00 f1  	subs	x8, x8, #1
   80604: c1 ff ff 54  	b.ne	0x805fc <_ZN12baremetal_pi4main17h02d93c4b0c6e8c9eE+0x21c>
   80608: 01 00 00 f0  	adrp	x1, 0x83000 <_ZN12baremetal_pi4main17h02d93c4b0c6e8c9eE+0x234>
   8060c: 08 00 a4 52  	mov	w8, #536870912
   80610: e9 43 00 91  	add	x9, sp, #16
   80614: 2a 00 80 52  	mov	w10, #1
   80618: 21 80 0e 91  	add	x1, x1, #928
   8061c: e0 23 00 91  	add	x0, sp, #8
   80620: e2 43 00 91  	add	x2, sp, #16
   80624: 68 0e 00 b9  	str	w8, [x19, #12]
   80628: e9 db 00 a9  	stp	x9, x22, [sp, #8]
   8062c: ea ff 01 a9  	stp	x10, xzr, [sp, #24]
   80630: ff df 02 a9  	stp	xzr, x23, [sp, #40]
   80634: ff 1f 00 f9  	str	xzr, [sp, #56]
   80638: 1e 03 00 94  	bl	0x812b0 <_ZN4core3fmt5write17h4089dd81629a8d2eE>
   8063c: 00 0f 00 37  	tbnz	w0, #0, 0x8081c <_ZN12baremetal_pi4main17h02d93c4b0c6e8c9eE+0x43c>
   80640: e8 03 15 aa  	mov	x8, x21
   80644: 1f 20 03 d5  	nop
   80648: 08 05 00 f1  	subs	x8, x8, #1
   8064c: c1 ff ff 54  	b.ne	0x80644 <_ZN12baremetal_pi4main17h02d93c4b0c6e8c9eE+0x264>
   80650: 09 00 a4 52  	mov	w9, #536870912
   80654: e8 03 14 aa  	mov	x8, x20
   80658: 69 02 00 b9  	str	w9, [x19]
   8065c: 1f 20 03 d5  	nop
   80660: 08 05 00 f1  	subs	x8, x8, #1
   80664: c1 ff ff 54  	b.ne	0x8065c <_ZN12baremetal_pi4main17h02d93c4b0c6e8c9eE+0x27c>
   80668: 01 00 00 f0  	adrp	x1, 0x83000 <_ZN12baremetal_pi4main17h02d93c4b0c6e8c9eE+0x294>
   8066c: 08 00 a4 52  	mov	w8, #536870912
   80670: e9 43 00 91  	add	x9, sp, #16
   80674: 2a 00 80 52  	mov	w10, #1
   80678: 21 80 0e 91  	add	x1, x1, #928
   8067c: e0 23 00 91  	add	x0, sp, #8
   80680: e2 43 00 91  	add	x2, sp, #16
   80684: 68 0e 00 b9  	str	w8, [x19, #12]
   80688: e9 db 00 a9  	stp	x9, x22, [sp, #8]
   8068c: ea ff 01 a9  	stp	x10, xzr, [sp, #24]
   80690: ff df 02 a9  	stp	xzr, x23, [sp, #40]
   80694: ff 1f 00 f9  	str	xzr, [sp, #56]
   80698: 06 03 00 94  	bl	0x812b0 <_ZN4core3fmt5write17h4089dd81629a8d2eE>
   8069c: 00 0c 00 37  	tbnz	w0, #0, 0x8081c <_ZN12baremetal_pi4main17h02d93c4b0c6e8c9eE+0x43c>
   806a0: e8 03 15 aa  	mov	x8, x21
   806a4: 1f 20 03 d5  	nop
   806a8: 08 05 00 f1  	subs	x8, x8, #1
   806ac: c1 ff ff 54  	b.ne	0x806a4 <_ZN12baremetal_pi4main17h02d93c4b0c6e8c9eE+0x2c4>
   806b0: 09 00 a4 52  	mov	w9, #536870912
   806b4: e8 03 14 aa  	mov	x8, x20
   806b8: 69 02 00 b9  	str	w9, [x19]
   806bc: 1f 20 03 d5  	nop
   806c0: 08 05 00 f1  	subs	x8, x8, #1
   806c4: c1 ff ff 54  	b.ne	0x806bc <_ZN12baremetal_pi4main17h02d93c4b0c6e8c9eE+0x2dc>
   806c8: 01 00 00 f0  	adrp	x1, 0x83000 <_ZN12baremetal_pi4main17h02d93c4b0c6e8c9eE+0x2f4>
   806cc: 08 00 a4 52  	mov	w8, #536870912
   806d0: e9 43 00 91  	add	x9, sp, #16
   806d4: 2a 00 80 52  	mov	w10, #1
   806d8: 21 80 0e 91  	add	x1, x1, #928
   806dc: e0 23 00 91  	add	x0, sp, #8
   806e0: e2 43 00 91  	add	x2, sp, #16
   806e4: 68 0e 00 b9  	str	w8, [x19, #12]
   806e8: e9 db 00 a9  	stp	x9, x22, [sp, #8]
   806ec: ea ff 01 a9  	stp	x10, xzr, [sp, #24]
   806f0: ff df 02 a9  	stp	xzr, x23, [sp, #40]
   806f4: ff 1f 00 f9  	str	xzr, [sp, #56]
   806f8: ee 02 00 94  	bl	0x812b0 <_ZN4core3fmt5write17h4089dd81629a8d2eE>
   806fc: 00 09 00 37  	tbnz	w0, #0, 0x8081c <_ZN12baremetal_pi4main17h02d93c4b0c6e8c9eE+0x43c>
   80700: e8 03 15 aa  	mov	x8, x21
   80704: 1f 20 03 d5  	nop
   80708: 08 05 00 f1  	subs	x8, x8, #1
   8070c: c1 ff ff 54  	b.ne	0x80704 <_ZN12baremetal_pi4main17h02d93c4b0c6e8c9eE+0x324>
   80710: 09 00 a4 52  	mov	w9, #536870912
   80714: e8 03 14 aa  	mov	x8, x20
   80718: 69 02 00 b9  	str	w9, [x19]
   8071c: 1f 20 03 d5  	nop
   80720: 08 05 00 f1  	subs	x8, x8, #1
   80724: c1 ff ff 54  	b.ne	0x8071c <_ZN12baremetal_pi4main17h02d93c4b0c6e8c9eE+0x33c>
   80728: 01 00 00 f0  	adrp	x1, 0x83000 <_ZN12baremetal_pi4main17h02d93c4b0c6e8c9eE+0x354>
   8072c: 08 00 a4 52  	mov	w8, #536870912
   80730: e9 43 00 91  	add	x9, sp, #16
   80734: 2a 00 80 52  	mov	w10, #1
   80738: 21 80 0e 91  	add	x1, x1, #928
   8073c: e0 23 00 91  	add	x0, sp, #8
   80740: e2 43 00 91  	add	x2, sp, #16
   80744: 68 0e 00 b9  	str	w8, [x19, #12]
   80748: e9 db 00 a9  	stp	x9, x22, [sp, #8]
   8074c: ea ff 01 a9  	stp	x10, xzr, [sp, #24]
   80750: ff df 02 a9  	stp	xzr, x23, [sp, #40]
   80754: ff 1f 00 f9  	str	xzr, [sp, #56]
   80758: d6 02 00 94  	bl	0x812b0 <_ZN4core3fmt5write17h4089dd81629a8d2eE>
   8075c: 00 06 00 37  	tbnz	w0, #0, 0x8081c <_ZN12baremetal_pi4main17h02d93c4b0c6e8c9eE+0x43c>
   80760: e8 03 15 aa  	mov	x8, x21
   80764: 1f 20 03 d5  	nop
   80768: 08 05 00 f1  	subs	x8, x8, #1
   8076c: c1 ff ff 54  	b.ne	0x80764 <_ZN12baremetal_pi4main17h02d93c4b0c6e8c9eE+0x384>
   80770: 09 00 a4 52  	mov	w9, #536870912
   80774: e8 03 14 aa  	mov	x8, x20
   80778: 69 02 00 b9  	str	w9, [x19]
   8077c: 1f 20 03 d5  	nop
   80780: 08 05 00 f1  	subs	x8, x8, #1
   80784: c1 ff ff 54  	b.ne	0x8077c <_ZN12baremetal_pi4main17h02d93c4b0c6e8c9eE+0x39c>
   80788: 01 00 00 f0  	adrp	x1, 0x83000 <_ZN12baremetal_pi4main17h02d93c4b0c6e8c9eE+0x3b4>
   8078c: 08 00 a4 52  	mov	w8, #536870912
   80790: e9 43 00 91  	add	x9, sp, #16
   80794: 2a 00 80 52  	mov	w10, #1
   80798: 21 80 0e 91  	add	x1, x1, #928
   8079c: e0 23 00 91  	add	x0, sp, #8
   807a0: e2 43 00 91  	add	x2, sp, #16
   807a4: 68 0e 00 b9  	str	w8, [x19, #12]
   807a8: e9 db 00 a9  	stp	x9, x22, [sp, #8]
   807ac: ea ff 01 a9  	stp	x10, xzr, [sp, #24]
   807b0: ff df 02 a9  	stp	xzr, x23, [sp, #40]
   807b4: ff 1f 00 f9  	str	xzr, [sp, #56]
   807b8: be 02 00 94  	bl	0x812b0 <_ZN4core3fmt5write17h4089dd81629a8d2eE>
   807bc: 00 03 00 37  	tbnz	w0, #0, 0x8081c <_ZN12baremetal_pi4main17h02d93c4b0c6e8c9eE+0x43c>
   807c0: e8 03 15 aa  	mov	x8, x21
   807c4: 1f 20 03 d5  	nop
   807c8: 08 05 00 f1  	subs	x8, x8, #1
   807cc: c1 ff ff 54  	b.ne	0x807c4 <_ZN12baremetal_pi4main17h02d93c4b0c6e8c9eE+0x3e4>
   807d0: 08 00 a4 52  	mov	w8, #536870912
   807d4: 68 02 00 b9  	str	w8, [x19]
   807d8: 1f 20 03 d5  	nop
   807dc: 94 06 00 f1  	subs	x20, x20, #1
   807e0: c1 ff ff 54  	b.ne	0x807d8 <_ZN12baremetal_pi4main17h02d93c4b0c6e8c9eE+0x3f8>
   807e4: 01 00 00 f0  	adrp	x1, 0x83000 <_ZN12baremetal_pi4main17h02d93c4b0c6e8c9eE+0x410>
   807e8: 08 00 a4 52  	mov	w8, #536870912
   807ec: e9 43 00 91  	add	x9, sp, #16
   807f0: 2a 00 80 52  	mov	w10, #1
   807f4: 21 80 0e 91  	add	x1, x1, #928
   807f8: e0 23 00 91  	add	x0, sp, #8
   807fc: e2 43 00 91  	add	x2, sp, #16
   80800: 68 0e 00 b9  	str	w8, [x19, #12]
   80804: e9 db 00 a9  	stp	x9, x22, [sp, #8]
   80808: ea ff 01 a9  	stp	x10, xzr, [sp, #24]
   8080c: ff df 02 a9  	stp	xzr, x23, [sp, #40]
   80810: ff 1f 00 f9  	str	xzr, [sp, #56]
   80814: a7 02 00 94  	bl	0x812b0 <_ZN4core3fmt5write17h4089dd81629a8d2eE>
   80818: c0 00 00 36  	tbz	w0, #0, 0x80830 <_ZN12baremetal_pi4main17h02d93c4b0c6e8c9eE+0x450>
   8081c: 01 00 00 f0  	adrp	x1, 0x83000 <_ZN12baremetal_pi4main17h02d93c4b0c6e8c9eE+0x448>
   80820: e0 43 00 91  	add	x0, sp, #16
   80824: 21 60 13 91  	add	x1, x1, #1240
   80828: 33 03 00 94  	bl	0x814f4 <_ZN4core6result13unwrap_failed17h514395d9b84745f5E>
   8082c: 20 00 20 d4  	brk	#0x1
   80830: 1f 20 03 d5  	nop
   80834: b5 06 00 f1  	subs	x21, x21, #1
   80838: c1 ff ff 54  	b.ne	0x80830 <_ZN12baremetal_pi4main17h02d93c4b0c6e8c9eE+0x450>
   8083c: 00 00 00 f0  	adrp	x0, 0x83000 <_ZN12baremetal_pi4main17h02d93c4b0c6e8c9eE+0x468>
   80840: 02 00 00 f0  	adrp	x2, 0x83000 <_ZN12baremetal_pi4main17h02d93c4b0c6e8c9eE+0x46c>
   80844: 00 c0 13 91  	add	x0, x0, #1264
   80848: 42 00 14 91  	add	x2, x2, #1280
   8084c: e1 01 80 52  	mov	w1, #15
   80850: 7f 01 00 94  	bl	0x80e4c <_ZN4core9panicking5panic17ha7217054e020f4cfE>
   80854: 20 00 20 d4  	brk	#0x1

0000000000080858 <_ZN12baremetal_pi4grit9stage_one17he24b54ccefa5d11eE>:
   80858: fe 0f 1f f8  	str	x30, [sp, #-16]!
   8085c: 28 00 00 90  	adrp	x8, 0x84000 <_ZN12baremetal_pi4grit9stage_one17he24b54ccefa5d11eE+0x14>
   80860: 29 00 00 90  	adrp	x9, 0x84000 <_ZN12baremetal_pi4grit9stage_one17he24b54ccefa5d11eE+0x18>
   80864: e1 03 1f 2a  	mov	w1, wzr
   80868: 00 5d 42 f9  	ldr	x0, [x8, #1208]
   8086c: 28 5d 42 f9  	ldr	x8, [x9, #1208]
   80870: 02 00 08 cb  	sub	x2, x0, x8
   80874: a3 0a 00 94  	bl	0x83300 <memset>
   80878: da fe ff 97  	bl	0x803e0 <_ZN12baremetal_pi4main17h02d93c4b0c6e8c9eE>
   8087c: 20 00 20 d4  	brk	#0x1

0000000000080880 <_ZN4core3ops8function6FnOnce9call_once17h1e0b4b2b1b15e514E>:
   80880: 1f 00 40 f9  	ldr	xzr, [x0]
   80884: 00 00 00 14  	b	0x80884 <_ZN4core3ops8function6FnOnce9call_once17h1e0b4b2b1b15e514E+0x4>

0000000000080888 <_ZN4core9panicking18panic_bounds_check17h21e59d1a29014f09E>:
   80888: e0 07 ba a9  	stp	x0, x1, [sp, #-96]!
   8088c: 09 00 00 90  	adrp	x9, 0x80000 <_ZN4core9panicking18panic_bounds_check17h21e59d1a29014f09E+0x4>
   80890: e8 23 00 91  	add	x8, sp, #8
   80894: 29 41 23 91  	add	x9, x9, #2256
   80898: 0b 00 00 f0  	adrp	x11, 0x83000 <_ZN4core9panicking18panic_bounds_check17h21e59d1a29014f09E+0x1c>
   8089c: ea 03 00 91  	mov	x10, sp
   808a0: 6b a1 14 91  	add	x11, x11, #1320
   808a4: 4c 00 80 52  	mov	w12, #2
   808a8: e8 27 04 a9  	stp	x8, x9, [sp, #64]
   808ac: e8 03 01 91  	add	x8, sp, #64
   808b0: e0 43 00 91  	add	x0, sp, #16
   808b4: e1 03 02 aa  	mov	x1, x2
   808b8: ff 7f 02 a9  	stp	xzr, xzr, [sp, #32]
   808bc: ea 27 05 a9  	stp	x10, x9, [sp, #80]
   808c0: eb 33 01 a9  	stp	x11, x12, [sp, #16]
   808c4: e8 33 03 a9  	stp	x8, x12, [sp, #48]
   808c8: 5f 00 00 94  	bl	0x80a44 <_ZN4core9panicking9panic_fmt17h548b34a47a4ac578E>
   808cc: 20 00 20 d4  	brk	#0x1

00000000000808d0 <_ZN4core3fmt3num3imp52_$LT$impl$u20$core..fmt..Display$u20$for$u20$u64$GT$3fmt17hd9011ba631c18f60E>:
   808d0: ff 03 01 d1  	sub	sp, sp, #64
   808d4: fe 1b 00 f9  	str	x30, [sp, #48]
   808d8: 0a 00 40 f9  	ldr	x10, [x0]
   808dc: e8 03 01 aa  	mov	x8, x1
   808e0: 49 fd 44 d3  	lsr	x9, x10, #4
   808e4: 3f c5 09 f1  	cmp	x9, #625
   808e8: 09 00 00 f0  	adrp	x9, 0x83000 <_ZN4core3fmt3num3imp52_$LT$impl$u20$core..fmt..Display$u20$for$u20$u64$GT$3fmt17hd9011ba631c18f60E+0x24>
   808ec: 29 69 17 91  	add	x9, x9, #1498
   808f0: e3 04 00 54  	b.lo	0x8098c <_ZN4core3fmt3num3imp52_$LT$impl$u20$core..fmt..Display$u20$for$u20$u64$GT$3fmt17hd9011ba631c18f60E+0xbc>
   808f4: 6c 29 8b d2  	mov	x12, #22859
   808f8: cc 10 a7 f2  	movk	x12, #14470, lsl #16
   808fc: cc ba d8 f2  	movk	x12, #50646, lsl #32
   80900: ee a3 90 52  	mov	w14, #34079
   80904: f1 1f 9c 52  	mov	w17, #57599
   80908: eb 03 1f aa  	mov	x11, xzr
   8090c: ac 8d e6 f2  	movk	x12, #13421, lsl #48
   80910: ed e1 84 12  	mov	w13, #-10000
   80914: 6e 3d aa 72  	movk	w14, #20971, lsl #16
   80918: 6f 0c 80 12  	mov	w15, #-100
   8091c: f0 23 00 91  	add	x16, sp, #8
   80920: b1 be a0 72  	movk	w17, #1525, lsl #16
   80924: f2 03 0a aa  	mov	x18, x10
   80928: 4a 7d cc 9b  	umulh	x10, x10, x12
   8092c: 4a fd 4b d3  	lsr	x10, x10, #11
   80930: 5f 02 11 eb  	cmp	x18, x17
   80934: 52 49 0d 1b  	madd	w18, w10, w13, w18
   80938: 41 3e 00 12  	and	w1, w18, #0xffff
   8093c: 21 7c ae 9b  	umull	x1, w1, w14
   80940: 21 fc 65 d3  	lsr	x1, x1, #37
   80944: 32 48 0f 1b  	madd	w18, w1, w15, w18
   80948: 21 05 01 8b  	add	x1, x9, x1, lsl #1
   8094c: 32 25 32 8b  	add	x18, x9, w18, uxth #1
   80950: 22 00 40 39  	ldrb	w2, [x1]
   80954: 21 04 40 39  	ldrb	w1, [x1, #1]
   80958: 43 06 40 39  	ldrb	w3, [x18, #1]
   8095c: 52 02 40 39  	ldrb	w18, [x18]
   80960: 00 02 0b 8b  	add	x0, x16, x11
   80964: 6b 11 00 d1  	sub	x11, x11, #4
   80968: 01 90 00 39  	strb	w1, [x0, #36]
   8096c: 02 8c 00 39  	strb	w2, [x0, #35]
   80970: 03 98 00 39  	strb	w3, [x0, #38]
   80974: 12 94 00 39  	strb	w18, [x0, #37]
   80978: 68 fd ff 54  	b.hi	0x80924 <_ZN4core3fmt3num3imp52_$LT$impl$u20$core..fmt..Display$u20$for$u20$u64$GT$3fmt17hd9011ba631c18f60E+0x54>
   8097c: 6b 9d 00 91  	add	x11, x11, #39
   80980: 5f 8d 01 f1  	cmp	x10, #99
   80984: ac 00 00 54  	b.gt	0x80998 <_ZN4core3fmt3num3imp52_$LT$impl$u20$core..fmt..Display$u20$for$u20$u64$GT$3fmt17hd9011ba631c18f60E+0xc8>
   80988: 14 00 00 14  	b	0x809d8 <_ZN4core3fmt3num3imp52_$LT$impl$u20$core..fmt..Display$u20$for$u20$u64$GT$3fmt17hd9011ba631c18f60E+0x108>
   8098c: eb 04 80 52  	mov	w11, #39
   80990: 5f 8d 01 f1  	cmp	x10, #99
   80994: 2d 02 00 54  	b.le	0x809d8 <_ZN4core3fmt3num3imp52_$LT$impl$u20$core..fmt..Display$u20$for$u20$u64$GT$3fmt17hd9011ba631c18f60E+0x108>
   80998: ed a3 90 52  	mov	w13, #34079
   8099c: 4c 3d 00 12  	and	w12, w10, #0xffff
   809a0: 6d 3d aa 72  	movk	w13, #20971, lsl #16
   809a4: 8c 7d ad 9b  	umull	x12, w12, w13
   809a8: 6e 0c 80 12  	mov	w14, #-100
   809ac: 8c fd 65 d3  	lsr	x12, x12, #37
   809b0: 8a 29 0e 1b  	madd	w10, w12, w14, w10
   809b4: 2a 25 2a 8b  	add	x10, x9, w10, uxth #1
   809b8: 4d 05 40 39  	ldrb	w13, [x10, #1]
   809bc: 4a 01 40 39  	ldrb	w10, [x10]
   809c0: 6b 09 00 d1  	sub	x11, x11, #2
   809c4: ee 23 00 91  	add	x14, sp, #8
   809c8: ce 01 0b 8b  	add	x14, x14, x11
   809cc: ca 01 00 39  	strb	w10, [x14]
   809d0: ea 03 0c aa  	mov	x10, x12
   809d4: cd 05 00 39  	strb	w13, [x14, #1]
   809d8: 5f 29 00 f1  	cmp	x10, #10
   809dc: ca 00 00 54  	b.ge	0x809f4 <_ZN4core3fmt3num3imp52_$LT$impl$u20$core..fmt..Display$u20$for$u20$u64$GT$3fmt17hd9011ba631c18f60E+0x124>
   809e0: 6b 05 00 d1  	sub	x11, x11, #1
   809e4: 49 c1 00 11  	add	w9, w10, #48
   809e8: ea 23 00 91  	add	x10, sp, #8
   809ec: 49 69 2b 38  	strb	w9, [x10, x11]
   809f0: 09 00 00 14  	b	0x80a14 <_ZN4core3fmt3num3imp52_$LT$impl$u20$core..fmt..Display$u20$for$u20$u64$GT$3fmt17hd9011ba631c18f60E+0x144>
   809f4: 29 05 0a 8b  	add	x9, x9, x10, lsl #1
   809f8: 2a 05 40 39  	ldrb	w10, [x9, #1]
   809fc: 29 01 40 39  	ldrb	w9, [x9]
   80a00: 6b 09 00 d1  	sub	x11, x11, #2
   80a04: ec 23 00 91  	add	x12, sp, #8
   80a08: 8c 01 0b 8b  	add	x12, x12, x11
   80a0c: 8a 05 00 39  	strb	w10, [x12, #1]
   80a10: 89 01 00 39  	strb	w9, [x12]
   80a14: e9 23 00 91  	add	x9, sp, #8
   80a18: ea 04 80 52  	mov	w10, #39
   80a1c: 01 00 00 f0  	adrp	x1, 0x83000 <_ZN4core3fmt3num3imp52_$LT$impl$u20$core..fmt..Display$u20$for$u20$u64$GT$3fmt17hd9011ba631c18f60E+0x158>
   80a20: 23 01 0b 8b  	add	x3, x9, x11
   80a24: 44 01 0b cb  	sub	x4, x10, x11
   80a28: 21 20 15 91  	add	x1, x1, #1352
   80a2c: e0 03 08 aa  	mov	x0, x8
   80a30: e2 03 1f aa  	mov	x2, xzr
   80a34: 13 00 00 94  	bl	0x80a80 <_ZN4core3fmt9Formatter12pad_integral17h4be5fae25bf478d6E>
   80a38: fe 1b 40 f9  	ldr	x30, [sp, #48]
   80a3c: ff 03 01 91  	add	sp, sp, #64
   80a40: c0 03 5f d6  	ret

0000000000080a44 <_ZN4core9panicking9panic_fmt17h548b34a47a4ac578E>:
   80a44: 08 00 00 f0  	adrp	x8, 0x83000 <_ZN4core9panicking9panic_fmt17h548b34a47a4ac578E+0xc>
   80a48: 09 00 00 f0  	adrp	x9, 0x83000 <_ZN4core9panicking9panic_fmt17h548b34a47a4ac578E+0x10>
   80a4c: 08 21 15 91  	add	x8, x8, #1352
   80a50: 29 21 15 91  	add	x9, x9, #1352
   80a54: e8 27 be a9  	stp	x8, x9, [sp, #-32]!
   80a58: e0 07 01 a9  	stp	x0, x1, [sp, #16]
   80a5c: e0 03 00 91  	mov	x0, sp
   80a60: 2c fe ff 97  	bl	0x80310 <rust_begin_unwind>
   80a64: 20 00 20 d4  	brk	#0x1

0000000000080a68 <_ZN4core3ptr102drop_in_place$LT$$RF$core..iter..adapters..copied..Copied$LT$core..slice..iter..Iter$LT$u8$GT$$GT$$GT$17h2926ff8863b04fafE>:
   80a68: c0 03 5f d6  	ret

0000000000080a6c <_ZN36_$LT$T$u20$as$u20$core..any..Any$GT$7type_id17h311a29bdb201aafdE>:
   80a6c: 20 28 87 d2  	mov	x0, #14657
   80a70: e0 a1 a8 f2  	movk	x0, #17679, lsl #16
   80a74: 40 43 db f2  	movk	x0, #55834, lsl #32
   80a78: 20 96 fa f2  	movk	x0, #54449, lsl #48
   80a7c: c0 03 5f d6  	ret

0000000000080a80 <_ZN4core3fmt9Formatter12pad_integral17h4be5fae25bf478d6E>:
   80a80: fd 7b ba a9  	stp	x29, x30, [sp, #-96]!
   80a84: fc 6f 01 a9  	stp	x28, x27, [sp, #16]
   80a88: fa 67 02 a9  	stp	x26, x25, [sp, #32]
   80a8c: f8 5f 03 a9  	stp	x24, x23, [sp, #48]
   80a90: f6 57 04 a9  	stp	x22, x21, [sp, #64]
   80a94: f4 4f 05 a9  	stp	x20, x19, [sp, #80]
   80a98: 08 30 40 b9  	ldr	w8, [x0, #48]
   80a9c: 69 05 80 52  	mov	w9, #43
   80aa0: 2a 02 a0 52  	mov	w10, #1114112
   80aa4: f3 03 04 aa  	mov	x19, x4
   80aa8: 0b 01 40 92  	and	x11, x8, #0x1
   80aac: 7f 01 00 71  	cmp	w11, #0
   80ab0: f4 03 03 aa  	mov	x20, x3
   80ab4: f5 03 00 aa  	mov	x21, x0
   80ab8: 58 01 89 1a  	csel	w24, w10, w9, eq
   80abc: 69 01 04 8b  	add	x9, x11, x4
   80ac0: e8 00 10 37  	tbnz	w8, #2, 0x80adc <_ZN4core3fmt9Formatter12pad_integral17h4be5fae25bf478d6E+0x5c>
   80ac4: f7 03 1f aa  	mov	x23, xzr
   80ac8: f6 03 1f aa  	mov	x22, xzr
   80acc: aa 02 40 f9  	ldr	x10, [x21]
   80ad0: 5f 05 00 f1  	cmp	x10, #1
   80ad4: 20 05 00 54  	b.eq	0x80b78 <_ZN4core3fmt9Formatter12pad_integral17h4be5fae25bf478d6E+0xf8>
   80ad8: 35 00 00 14  	b	0x80bac <_ZN4core3fmt9Formatter12pad_integral17h4be5fae25bf478d6E+0x12c>
   80adc: f6 03 02 aa  	mov	x22, x2
   80ae0: f7 03 01 aa  	mov	x23, x1
   80ae4: eb 03 02 aa  	mov	x11, x2
   80ae8: 02 04 00 b4  	cbz	x2, 0x80b68 <_ZN4core3fmt9Formatter12pad_integral17h4be5fae25bf478d6E+0xe8>
   80aec: df 06 00 f1  	cmp	x22, #1
   80af0: 81 00 00 54  	b.ne	0x80b00 <_ZN4core3fmt9Formatter12pad_integral17h4be5fae25bf478d6E+0x80>
   80af4: eb 03 1f aa  	mov	x11, xzr
   80af8: ea 03 17 aa  	mov	x10, x23
   80afc: 14 00 00 14  	b	0x80b4c <_ZN4core3fmt9Formatter12pad_integral17h4be5fae25bf478d6E+0xcc>
   80b00: ca fa 7f 92  	and	x10, x22, #0xfffffffffffffffe
   80b04: eb 03 1f aa  	mov	x11, xzr
   80b08: ec 03 1f aa  	mov	x12, xzr
   80b0c: ed 06 00 91  	add	x13, x23, #1
   80b10: ee 03 0a aa  	mov	x14, x10
   80b14: af f1 5f 38  	ldurb	w15, [x13, #-1]
   80b18: b0 25 40 38  	ldrb	w16, [x13], #2
   80b1c: ef 05 1a 12  	and	w15, w15, #0xc0
   80b20: 10 06 1a 12  	and	w16, w16, #0xc0
   80b24: ff 01 02 71  	cmp	w15, #128
   80b28: 6b 05 8b 9a  	cinc	x11, x11, ne
   80b2c: 1f 02 02 71  	cmp	w16, #128
   80b30: 8c 05 8c 9a  	cinc	x12, x12, ne
   80b34: ce 09 00 f1  	subs	x14, x14, #2
   80b38: e1 fe ff 54  	b.ne	0x80b14 <_ZN4core3fmt9Formatter12pad_integral17h4be5fae25bf478d6E+0x94>
   80b3c: 5f 01 16 eb  	cmp	x10, x22
   80b40: 8b 01 0b 8b  	add	x11, x12, x11
   80b44: 20 01 00 54  	b.eq	0x80b68 <_ZN4core3fmt9Formatter12pad_integral17h4be5fae25bf478d6E+0xe8>
   80b48: ea 02 0a 8b  	add	x10, x23, x10
   80b4c: ec 02 16 8b  	add	x12, x23, x22
   80b50: 4d 15 40 38  	ldrb	w13, [x10], #1
   80b54: ad 05 1a 12  	and	w13, w13, #0xc0
   80b58: bf 01 02 71  	cmp	w13, #128
   80b5c: 6b 05 8b 9a  	cinc	x11, x11, ne
   80b60: 9f 01 0a eb  	cmp	x12, x10
   80b64: 61 ff ff 54  	b.ne	0x80b50 <_ZN4core3fmt9Formatter12pad_integral17h4be5fae25bf478d6E+0xd0>
   80b68: 69 01 09 8b  	add	x9, x11, x9
   80b6c: aa 02 40 f9  	ldr	x10, [x21]
   80b70: 5f 05 00 f1  	cmp	x10, #1
   80b74: c1 01 00 54  	b.ne	0x80bac <_ZN4core3fmt9Formatter12pad_integral17h4be5fae25bf478d6E+0x12c>
   80b78: aa 06 40 f9  	ldr	x10, [x21, #8]
   80b7c: 5c 01 09 eb  	subs	x28, x10, x9
   80b80: 69 01 00 54  	b.ls	0x80bac <_ZN4core3fmt9Formatter12pad_integral17h4be5fae25bf478d6E+0x12c>
   80b84: 88 04 18 37  	tbnz	w8, #3, 0x80c14 <_ZN4core3fmt9Formatter12pad_integral17h4be5fae25bf478d6E+0x194>
   80b88: a8 e2 40 39  	ldrb	w8, [x21, #56]
   80b8c: 1f 0d 00 71  	cmp	w8, #3
   80b90: 08 15 9f 1a  	csinc	w8, w8, wzr, ne
   80b94: 08 05 00 72  	ands	w8, w8, #0x3
   80b98: a0 06 00 54  	b.eq	0x80c6c <_ZN4core3fmt9Formatter12pad_integral17h4be5fae25bf478d6E+0x1ec>
   80b9c: 1f 05 00 71  	cmp	w8, #1
   80ba0: c1 06 00 54  	b.ne	0x80c78 <_ZN4core3fmt9Formatter12pad_integral17h4be5fae25bf478d6E+0x1f8>
   80ba4: fd 03 1f aa  	mov	x29, xzr
   80ba8: 37 00 00 14  	b	0x80c84 <_ZN4core3fmt9Formatter12pad_integral17h4be5fae25bf478d6E+0x204>
   80bac: e0 03 15 aa  	mov	x0, x21
   80bb0: e1 03 18 2a  	mov	w1, w24
   80bb4: e2 03 17 aa  	mov	x2, x23
   80bb8: e3 03 16 aa  	mov	x3, x22
   80bbc: 65 00 00 94  	bl	0x80d50 <_ZN4core3fmt9Formatter12pad_integral12write_prefix17h7ec449827422f958E>
   80bc0: 40 01 00 36  	tbz	w0, #0, 0x80be8 <_ZN4core3fmt9Formatter12pad_integral17h4be5fae25bf478d6E+0x168>
   80bc4: 39 00 80 52  	mov	w25, #1
   80bc8: e0 03 19 2a  	mov	w0, w25
   80bcc: f4 4f 45 a9  	ldp	x20, x19, [sp, #80]
   80bd0: f6 57 44 a9  	ldp	x22, x21, [sp, #64]
   80bd4: f8 5f 43 a9  	ldp	x24, x23, [sp, #48]
   80bd8: fa 67 42 a9  	ldp	x26, x25, [sp, #32]
   80bdc: fc 6f 41 a9  	ldp	x28, x27, [sp, #16]
   80be0: fd 7b c6 a8  	ldp	x29, x30, [sp], #96
   80be4: c0 03 5f d6  	ret
   80be8: a0 22 42 a9  	ldp	x0, x8, [x21, #32]
   80bec: e1 03 14 aa  	mov	x1, x20
   80bf0: e2 03 13 aa  	mov	x2, x19
   80bf4: f4 4f 45 a9  	ldp	x20, x19, [sp, #80]
   80bf8: 03 0d 40 f9  	ldr	x3, [x8, #24]
   80bfc: f6 57 44 a9  	ldp	x22, x21, [sp, #64]
   80c00: f8 5f 43 a9  	ldp	x24, x23, [sp, #48]
   80c04: fa 67 42 a9  	ldp	x26, x25, [sp, #32]
   80c08: fc 6f 41 a9  	ldp	x28, x27, [sp, #16]
   80c0c: fd 7b c6 a8  	ldp	x29, x30, [sp], #96
   80c10: 60 00 1f d6  	br	x3
   80c14: ba 36 40 b9  	ldr	w26, [x21, #52]
   80c18: bb e2 40 39  	ldrb	w27, [x21, #56]
   80c1c: 08 06 80 52  	mov	w8, #48
   80c20: 39 00 80 52  	mov	w25, #1
   80c24: e0 03 15 aa  	mov	x0, x21
   80c28: e1 03 18 2a  	mov	w1, w24
   80c2c: e2 03 17 aa  	mov	x2, x23
   80c30: e3 03 16 aa  	mov	x3, x22
   80c34: a8 36 00 b9  	str	w8, [x21, #52]
   80c38: b9 e2 00 39  	strb	w25, [x21, #56]
   80c3c: 45 00 00 94  	bl	0x80d50 <_ZN4core3fmt9Formatter12pad_integral12write_prefix17h7ec449827422f958E>
   80c40: 40 fc 07 37  	tbnz	w0, #0, 0x80bc8 <_ZN4core3fmt9Formatter12pad_integral17h4be5fae25bf478d6E+0x148>
   80c44: b6 5e 42 a9  	ldp	x22, x23, [x21, #32]
   80c48: 98 07 00 91  	add	x24, x28, #1
   80c4c: 18 07 00 f1  	subs	x24, x24, #1
   80c50: 40 06 00 54  	b.eq	0x80d18 <_ZN4core3fmt9Formatter12pad_integral17h4be5fae25bf478d6E+0x298>
   80c54: e8 12 40 f9  	ldr	x8, [x23, #32]
   80c58: 01 06 80 52  	mov	w1, #48
   80c5c: e0 03 16 aa  	mov	x0, x22
   80c60: 00 01 3f d6  	blr	x8
   80c64: 40 ff 07 36  	tbz	w0, #0, 0x80c4c <_ZN4core3fmt9Formatter12pad_integral17h4be5fae25bf478d6E+0x1cc>
   80c68: d7 ff ff 17  	b	0x80bc4 <_ZN4core3fmt9Formatter12pad_integral17h4be5fae25bf478d6E+0x144>
   80c6c: fd 03 1c aa  	mov	x29, x28
   80c70: fc 03 1f aa  	mov	x28, xzr
   80c74: 04 00 00 14  	b	0x80c84 <_ZN4core3fmt9Formatter12pad_integral17h4be5fae25bf478d6E+0x204>
   80c78: 88 07 00 91  	add	x8, x28, #1
   80c7c: 9c ff 41 d3  	lsr	x28, x28, #1
   80c80: 1d fd 41 d3  	lsr	x29, x8, #1
   80c84: b9 6e 42 a9  	ldp	x25, x27, [x21, #32]
   80c88: ba 36 40 b9  	ldr	w26, [x21, #52]
   80c8c: 9c 07 00 91  	add	x28, x28, #1
   80c90: 9c 07 00 f1  	subs	x28, x28, #1
   80c94: e0 00 00 54  	b.eq	0x80cb0 <_ZN4core3fmt9Formatter12pad_integral17h4be5fae25bf478d6E+0x230>
   80c98: 68 13 40 f9  	ldr	x8, [x27, #32]
   80c9c: e0 03 19 aa  	mov	x0, x25
   80ca0: e1 03 1a 2a  	mov	w1, w26
   80ca4: 00 01 3f d6  	blr	x8
   80ca8: 40 ff 07 36  	tbz	w0, #0, 0x80c90 <_ZN4core3fmt9Formatter12pad_integral17h4be5fae25bf478d6E+0x210>
   80cac: c6 ff ff 17  	b	0x80bc4 <_ZN4core3fmt9Formatter12pad_integral17h4be5fae25bf478d6E+0x144>
   80cb0: 5f 43 44 71  	cmp	w26, #272, lsl #12
   80cb4: fc 03 9d 9a  	csel	x28, xzr, x29, eq
   80cb8: 60 f8 ff 54  	b.eq	0x80bc4 <_ZN4core3fmt9Formatter12pad_integral17h4be5fae25bf478d6E+0x144>
   80cbc: e0 03 15 aa  	mov	x0, x21
   80cc0: e1 03 18 2a  	mov	w1, w24
   80cc4: e2 03 17 aa  	mov	x2, x23
   80cc8: e3 03 16 aa  	mov	x3, x22
   80ccc: 21 00 00 94  	bl	0x80d50 <_ZN4core3fmt9Formatter12pad_integral12write_prefix17h7ec449827422f958E>
   80cd0: a0 f7 07 37  	tbnz	w0, #0, 0x80bc4 <_ZN4core3fmt9Formatter12pad_integral17h4be5fae25bf478d6E+0x144>
   80cd4: 68 0f 40 f9  	ldr	x8, [x27, #24]
   80cd8: e0 03 19 aa  	mov	x0, x25
   80cdc: e1 03 14 aa  	mov	x1, x20
   80ce0: e2 03 13 aa  	mov	x2, x19
   80ce4: 00 01 3f d6  	blr	x8
   80ce8: e0 f6 07 37  	tbnz	w0, #0, 0x80bc4 <_ZN4core3fmt9Formatter12pad_integral17h4be5fae25bf478d6E+0x144>
   80cec: f3 03 1f aa  	mov	x19, xzr
   80cf0: 9f 03 13 eb  	cmp	x28, x19
   80cf4: 60 02 00 54  	b.eq	0x80d40 <_ZN4core3fmt9Formatter12pad_integral17h4be5fae25bf478d6E+0x2c0>
   80cf8: 68 13 40 f9  	ldr	x8, [x27, #32]
   80cfc: e0 03 19 aa  	mov	x0, x25
   80d00: e1 03 1a 2a  	mov	w1, w26
   80d04: 73 06 00 91  	add	x19, x19, #1
   80d08: 00 01 3f d6  	blr	x8
   80d0c: 20 ff ff 34  	cbz	w0, 0x80cf0 <_ZN4core3fmt9Formatter12pad_integral17h4be5fae25bf478d6E+0x270>
   80d10: 68 06 00 d1  	sub	x8, x19, #1
   80d14: 0c 00 00 14  	b	0x80d44 <_ZN4core3fmt9Formatter12pad_integral17h4be5fae25bf478d6E+0x2c4>
   80d18: e8 0e 40 f9  	ldr	x8, [x23, #24]
   80d1c: e0 03 16 aa  	mov	x0, x22
   80d20: e1 03 14 aa  	mov	x1, x20
   80d24: e2 03 13 aa  	mov	x2, x19
   80d28: 00 01 3f d6  	blr	x8
   80d2c: c0 f4 07 37  	tbnz	w0, #0, 0x80bc4 <_ZN4core3fmt9Formatter12pad_integral17h4be5fae25bf478d6E+0x144>
   80d30: f9 03 1f 2a  	mov	w25, wzr
   80d34: ba 36 00 b9  	str	w26, [x21, #52]
   80d38: bb e2 00 39  	strb	w27, [x21, #56]
   80d3c: a3 ff ff 17  	b	0x80bc8 <_ZN4core3fmt9Formatter12pad_integral17h4be5fae25bf478d6E+0x148>
   80d40: e8 03 1c aa  	mov	x8, x28
   80d44: 1f 01 1c eb  	cmp	x8, x28
   80d48: f9 27 9f 1a  	cset	w25, lo
   80d4c: 9f ff ff 17  	b	0x80bc8 <_ZN4core3fmt9Formatter12pad_integral17h4be5fae25bf478d6E+0x148>

0000000000080d50 <_ZN4core3fmt9Formatter12pad_integral12write_prefix17h7ec449827422f958E>:
   80d50: fe 57 be a9  	stp	x30, x21, [sp, #-32]!
   80d54: f4 4f 01 a9  	stp	x20, x19, [sp, #16]
   80d58: f3 03 03 aa  	mov	x19, x3
   80d5c: f4 03 02 aa  	mov	x20, x2
   80d60: 3f 40 44 71  	cmp	w1, #272, lsl #12
   80d64: f5 03 00 aa  	mov	x21, x0
   80d68: 20 01 00 54  	b.eq	0x80d8c <_ZN4core3fmt9Formatter12pad_integral12write_prefix17h7ec449827422f958E+0x3c>
   80d6c: a0 22 42 a9  	ldp	x0, x8, [x21, #32]
   80d70: 08 11 40 f9  	ldr	x8, [x8, #32]
   80d74: 00 01 3f d6  	blr	x8
   80d78: a0 00 00 36  	tbz	w0, #0, 0x80d8c <_ZN4core3fmt9Formatter12pad_integral12write_prefix17h7ec449827422f958E+0x3c>
   80d7c: 20 00 80 52  	mov	w0, #1
   80d80: f4 4f 41 a9  	ldp	x20, x19, [sp, #16]
   80d84: fe 57 c2 a8  	ldp	x30, x21, [sp], #32
   80d88: c0 03 5f d6  	ret
   80d8c: 14 01 00 b4  	cbz	x20, 0x80dac <_ZN4core3fmt9Formatter12pad_integral12write_prefix17h7ec449827422f958E+0x5c>
   80d90: a0 22 42 a9  	ldp	x0, x8, [x21, #32]
   80d94: e1 03 14 aa  	mov	x1, x20
   80d98: e2 03 13 aa  	mov	x2, x19
   80d9c: f4 4f 41 a9  	ldp	x20, x19, [sp, #16]
   80da0: 03 0d 40 f9  	ldr	x3, [x8, #24]
   80da4: fe 57 c2 a8  	ldp	x30, x21, [sp], #32
   80da8: 60 00 1f d6  	br	x3
   80dac: e0 03 1f 2a  	mov	w0, wzr
   80db0: f4 4f 41 a9  	ldp	x20, x19, [sp, #16]
   80db4: fe 57 c2 a8  	ldp	x30, x21, [sp], #32
   80db8: c0 03 5f d6  	ret

0000000000080dbc <_ZN4core5slice5index26slice_start_index_len_fail17ha5c8a54d8fb05d93E>:
   80dbc: e0 07 ba a9  	stp	x0, x1, [sp, #-96]!
   80dc0: 09 00 00 90  	adrp	x9, 0x80000 <_ZN4core5slice5index26slice_start_index_len_fail17ha5c8a54d8fb05d93E+0x4>
   80dc4: e8 03 00 91  	mov	x8, sp
   80dc8: 29 41 23 91  	add	x9, x9, #2256
   80dcc: 0b 00 00 f0  	adrp	x11, 0x83000 <_ZN4core5slice5index26slice_start_index_len_fail17ha5c8a54d8fb05d93E+0x1c>
   80dd0: ea 23 00 91  	add	x10, sp, #8
   80dd4: 6b a1 1a 91  	add	x11, x11, #1704
   80dd8: 4c 00 80 52  	mov	w12, #2
   80ddc: e8 27 04 a9  	stp	x8, x9, [sp, #64]
   80de0: e8 03 01 91  	add	x8, sp, #64
   80de4: e0 43 00 91  	add	x0, sp, #16
   80de8: e1 03 02 aa  	mov	x1, x2
   80dec: ff 7f 02 a9  	stp	xzr, xzr, [sp, #32]
   80df0: ea 27 05 a9  	stp	x10, x9, [sp, #80]
   80df4: eb 33 01 a9  	stp	x11, x12, [sp, #16]
   80df8: e8 33 03 a9  	stp	x8, x12, [sp, #48]
   80dfc: 12 ff ff 97  	bl	0x80a44 <_ZN4core9panicking9panic_fmt17h548b34a47a4ac578E>
   80e00: 20 00 20 d4  	brk	#0x1

0000000000080e04 <_ZN4core5slice5index24slice_end_index_len_fail17h827cf37c6cc32b14E>:
   80e04: e0 07 ba a9  	stp	x0, x1, [sp, #-96]!
   80e08: 09 00 00 90  	adrp	x9, 0x80000 <_ZN4core5slice5index24slice_end_index_len_fail17h827cf37c6cc32b14E+0x4>
   80e0c: e8 03 00 91  	mov	x8, sp
   80e10: 29 41 23 91  	add	x9, x9, #2256
   80e14: 0b 00 00 f0  	adrp	x11, 0x83000 <_ZN4core5slice5index24slice_end_index_len_fail17h827cf37c6cc32b14E+0x1c>
   80e18: ea 23 00 91  	add	x10, sp, #8
   80e1c: 6b 01 1c 91  	add	x11, x11, #1792
   80e20: 4c 00 80 52  	mov	w12, #2
   80e24: e8 27 04 a9  	stp	x8, x9, [sp, #64]
   80e28: e8 03 01 91  	add	x8, sp, #64
   80e2c: e0 43 00 91  	add	x0, sp, #16
   80e30: e1 03 02 aa  	mov	x1, x2
   80e34: ff 7f 02 a9  	stp	xzr, xzr, [sp, #32]
   80e38: ea 27 05 a9  	stp	x10, x9, [sp, #80]
   80e3c: eb 33 01 a9  	stp	x11, x12, [sp, #16]
   80e40: e8 33 03 a9  	stp	x8, x12, [sp, #48]
   80e44: 00 ff ff 97  	bl	0x80a44 <_ZN4core9panicking9panic_fmt17h548b34a47a4ac578E>
   80e48: 20 00 20 d4  	brk	#0x1

0000000000080e4c <_ZN4core9panicking5panic17ha7217054e020f4cfE>:
   80e4c: ff 03 01 d1  	sub	sp, sp, #64
   80e50: 0a 00 00 f0  	adrp	x10, 0x83000 <_ZN4core9panicking5panic17ha7217054e020f4cfE+0x10>
   80e54: e0 07 03 a9  	stp	x0, x1, [sp, #48]
   80e58: e8 c3 00 91  	add	x8, sp, #48
   80e5c: 29 00 80 52  	mov	w9, #1
   80e60: 4a 21 15 91  	add	x10, x10, #1352
   80e64: e0 03 00 91  	mov	x0, sp
   80e68: e1 03 02 aa  	mov	x1, x2
   80e6c: ff 7f 01 a9  	stp	xzr, xzr, [sp, #16]
   80e70: e8 27 00 a9  	stp	x8, x9, [sp]
   80e74: ea 7f 02 a9  	stp	x10, xzr, [sp, #32]
   80e78: f3 fe ff 97  	bl	0x80a44 <_ZN4core9panicking9panic_fmt17h548b34a47a4ac578E>
   80e7c: 20 00 20 d4  	brk	#0x1

0000000000080e80 <_ZN44_$LT$$RF$T$u20$as$u20$core..fmt..Display$GT$3fmt17h3f94e73c8b157ba1E>:
   80e80: fe 67 bc a9  	stp	x30, x25, [sp, #-64]!
   80e84: f8 5f 01 a9  	stp	x24, x23, [sp, #16]
   80e88: f6 57 02 a9  	stp	x22, x21, [sp, #32]
   80e8c: f4 4f 03 a9  	stp	x20, x19, [sp, #48]
   80e90: 28 00 40 f9  	ldr	x8, [x1]
   80e94: 14 4c 40 a9  	ldp	x20, x19, [x0]
   80e98: 29 08 40 f9  	ldr	x9, [x1, #16]
   80e9c: 1f 05 00 f1  	cmp	x8, #1
   80ea0: 81 00 00 54  	b.ne	0x80eb0 <_ZN44_$LT$$RF$T$u20$as$u20$core..fmt..Display$GT$3fmt17h3f94e73c8b157ba1E+0x30>
   80ea4: 3f 05 00 f1  	cmp	x9, #1
   80ea8: 80 00 00 54  	b.eq	0x80eb8 <_ZN44_$LT$$RF$T$u20$as$u20$core..fmt..Display$GT$3fmt17h3f94e73c8b157ba1E+0x38>
   80eac: 5a 00 00 14  	b	0x81014 <_ZN44_$LT$$RF$T$u20$as$u20$core..fmt..Display$GT$3fmt17h3f94e73c8b157ba1E+0x194>
   80eb0: 3f 05 00 f1  	cmp	x9, #1
   80eb4: 81 10 00 54  	b.ne	0x810c4 <_ZN44_$LT$$RF$T$u20$as$u20$core..fmt..Display$GT$3fmt17h3f94e73c8b157ba1E+0x244>
   80eb8: 2b 0c 40 f9  	ldr	x11, [x1, #24]
   80ebc: 8a 02 13 8b  	add	x10, x20, x19
   80ec0: e9 03 1f aa  	mov	x9, xzr
   80ec4: 6b 06 00 b4  	cbz	x11, 0x80f90 <_ZN44_$LT$$RF$T$u20$as$u20$core..fmt..Display$GT$3fmt17h3f94e73c8b157ba1E+0x110>
   80ec8: ed 03 14 aa  	mov	x13, x20
   80ecc: 0e 00 00 14  	b	0x80f04 <_ZN44_$LT$$RF$T$u20$as$u20$core..fmt..Display$GT$3fmt17h3f94e73c8b157ba1E+0x84>
   80ed0: 91 15 40 38  	ldrb	w17, [x12], #1
   80ed4: 31 16 00 12  	and	w17, w17, #0x3f
   80ed8: ef 09 0e 53  	ubfiz	w15, w15, #18, #3
   80edc: cf 15 14 33  	bfi	w15, w14, #12, #6
   80ee0: 0f 16 1a 33  	bfi	w15, w16, #6, #6
   80ee4: ee 01 11 2a  	orr	w14, w15, w17
   80ee8: df 41 44 71  	cmp	w14, #272, lsl #12
   80eec: 00 09 00 54  	b.eq	0x8100c <_ZN44_$LT$$RF$T$u20$as$u20$core..fmt..Display$GT$3fmt17h3f94e73c8b157ba1E+0x18c>
   80ef0: 29 01 0d cb  	sub	x9, x9, x13
   80ef4: 6b 05 00 f1  	subs	x11, x11, #1
   80ef8: 29 01 0c 8b  	add	x9, x9, x12
   80efc: ed 03 0c aa  	mov	x13, x12
   80f00: a0 04 00 54  	b.eq	0x80f94 <_ZN44_$LT$$RF$T$u20$as$u20$core..fmt..Display$GT$3fmt17h3f94e73c8b157ba1E+0x114>
   80f04: bf 01 0a eb  	cmp	x13, x10
   80f08: 20 08 00 54  	b.eq	0x8100c <_ZN44_$LT$$RF$T$u20$as$u20$core..fmt..Display$GT$3fmt17h3f94e73c8b157ba1E+0x18c>
   80f0c: ec 03 0d aa  	mov	x12, x13
   80f10: 8f 15 c0 38  	ldrsb	w15, [x12], #1
   80f14: ef fe ff 36  	tbz	w15, #31, 0x80ef0 <_ZN44_$LT$$RF$T$u20$as$u20$core..fmt..Display$GT$3fmt17h3f94e73c8b157ba1E+0x70>
   80f18: 9f 01 0a eb  	cmp	x12, x10
   80f1c: 00 01 00 54  	b.eq	0x80f3c <_ZN44_$LT$$RF$T$u20$as$u20$core..fmt..Display$GT$3fmt17h3f94e73c8b157ba1E+0xbc>
   80f20: ae 05 40 39  	ldrb	w14, [x13, #1]
   80f24: ac 09 00 91  	add	x12, x13, #2
   80f28: ce 15 00 12  	and	w14, w14, #0x3f
   80f2c: ef 1d 00 12  	and	w15, w15, #0xff
   80f30: ff 81 03 71  	cmp	w15, #224
   80f34: e3 fd ff 54  	b.lo	0x80ef0 <_ZN44_$LT$$RF$T$u20$as$u20$core..fmt..Display$GT$3fmt17h3f94e73c8b157ba1E+0x70>
   80f38: 06 00 00 14  	b	0x80f50 <_ZN44_$LT$$RF$T$u20$as$u20$core..fmt..Display$GT$3fmt17h3f94e73c8b157ba1E+0xd0>
   80f3c: ee 03 1f 2a  	mov	w14, wzr
   80f40: ec 03 0a aa  	mov	x12, x10
   80f44: ef 1d 00 12  	and	w15, w15, #0xff
   80f48: ff 81 03 71  	cmp	w15, #224
   80f4c: 23 fd ff 54  	b.lo	0x80ef0 <_ZN44_$LT$$RF$T$u20$as$u20$core..fmt..Display$GT$3fmt17h3f94e73c8b157ba1E+0x70>
   80f50: 9f 01 0a eb  	cmp	x12, x10
   80f54: c0 00 00 54  	b.eq	0x80f6c <_ZN44_$LT$$RF$T$u20$as$u20$core..fmt..Display$GT$3fmt17h3f94e73c8b157ba1E+0xec>
   80f58: 90 15 40 38  	ldrb	w16, [x12], #1
   80f5c: 10 16 00 12  	and	w16, w16, #0x3f
   80f60: ff c1 03 71  	cmp	w15, #240
   80f64: 63 fc ff 54  	b.lo	0x80ef0 <_ZN44_$LT$$RF$T$u20$as$u20$core..fmt..Display$GT$3fmt17h3f94e73c8b157ba1E+0x70>
   80f68: 05 00 00 14  	b	0x80f7c <_ZN44_$LT$$RF$T$u20$as$u20$core..fmt..Display$GT$3fmt17h3f94e73c8b157ba1E+0xfc>
   80f6c: f0 03 1f 2a  	mov	w16, wzr
   80f70: ec 03 0a aa  	mov	x12, x10
   80f74: ff c1 03 71  	cmp	w15, #240
   80f78: c3 fb ff 54  	b.lo	0x80ef0 <_ZN44_$LT$$RF$T$u20$as$u20$core..fmt..Display$GT$3fmt17h3f94e73c8b157ba1E+0x70>
   80f7c: 9f 01 0a eb  	cmp	x12, x10
   80f80: 81 fa ff 54  	b.ne	0x80ed0 <_ZN44_$LT$$RF$T$u20$as$u20$core..fmt..Display$GT$3fmt17h3f94e73c8b157ba1E+0x50>
   80f84: f1 03 1f 2a  	mov	w17, wzr
   80f88: ec 03 0a aa  	mov	x12, x10
   80f8c: d3 ff ff 17  	b	0x80ed8 <_ZN44_$LT$$RF$T$u20$as$u20$core..fmt..Display$GT$3fmt17h3f94e73c8b157ba1E+0x58>
   80f90: ec 03 14 aa  	mov	x12, x20
   80f94: 9f 01 0a eb  	cmp	x12, x10
   80f98: a0 03 00 54  	b.eq	0x8100c <_ZN44_$LT$$RF$T$u20$as$u20$core..fmt..Display$GT$3fmt17h3f94e73c8b157ba1E+0x18c>
   80f9c: eb 03 0c aa  	mov	x11, x12
   80fa0: 6d 15 c0 38  	ldrsb	w13, [x11], #1
   80fa4: 4d 01 f8 37  	tbnz	w13, #31, 0x80fcc <_ZN44_$LT$$RF$T$u20$as$u20$core..fmt..Display$GT$3fmt17h3f94e73c8b157ba1E+0x14c>
   80fa8: a9 02 00 b4  	cbz	x9, 0x80ffc <_ZN44_$LT$$RF$T$u20$as$u20$core..fmt..Display$GT$3fmt17h3f94e73c8b157ba1E+0x17c>
   80fac: 3f 01 13 eb  	cmp	x9, x19
   80fb0: 22 02 00 54  	b.hs	0x80ff4 <_ZN44_$LT$$RF$T$u20$as$u20$core..fmt..Display$GT$3fmt17h3f94e73c8b157ba1E+0x174>
   80fb4: 8a 6a e9 38  	ldrsb	w10, [x20, x9]
   80fb8: 5f 01 01 31  	cmn	w10, #64
   80fbc: 0a 02 00 54  	b.ge	0x80ffc <_ZN44_$LT$$RF$T$u20$as$u20$core..fmt..Display$GT$3fmt17h3f94e73c8b157ba1E+0x17c>
   80fc0: ea 03 1f aa  	mov	x10, xzr
   80fc4: e9 03 1f aa  	mov	x9, xzr
   80fc8: 0e 00 00 14  	b	0x81000 <_ZN44_$LT$$RF$T$u20$as$u20$core..fmt..Display$GT$3fmt17h3f94e73c8b157ba1E+0x180>
   80fcc: 7f 01 0a eb  	cmp	x11, x10
   80fd0: ab 1d 00 12  	and	w11, w13, #0xff
   80fd4: 80 12 00 54  	b.eq	0x81224 <_ZN44_$LT$$RF$T$u20$as$u20$core..fmt..Display$GT$3fmt17h3f94e73c8b157ba1E+0x3a4>
   80fd8: 8e 05 40 39  	ldrb	w14, [x12, #1]
   80fdc: 8d 09 00 91  	add	x13, x12, #2
   80fe0: cc 15 00 12  	and	w12, w14, #0x3f
   80fe4: 8c 4d 14 53  	lsl	w12, w12, #12
   80fe8: 7f 81 03 71  	cmp	w11, #224
   80fec: 42 12 00 54  	b.hs	0x81234 <_ZN44_$LT$$RF$T$u20$as$u20$core..fmt..Display$GT$3fmt17h3f94e73c8b157ba1E+0x3b4>
   80ff0: ee ff ff 17  	b	0x80fa8 <_ZN44_$LT$$RF$T$u20$as$u20$core..fmt..Display$GT$3fmt17h3f94e73c8b157ba1E+0x128>
   80ff4: 3f 01 13 eb  	cmp	x9, x19
   80ff8: 41 fe ff 54  	b.ne	0x80fc0 <_ZN44_$LT$$RF$T$u20$as$u20$core..fmt..Display$GT$3fmt17h3f94e73c8b157ba1E+0x140>
   80ffc: ea 03 14 aa  	mov	x10, x20
   81000: 5f 01 00 f1  	cmp	x10, #0
   81004: 94 02 8a 9a  	csel	x20, x20, x10, eq
   81008: 73 02 89 9a  	csel	x19, x19, x9, eq
   8100c: 1f 05 00 f1  	cmp	x8, #1
   81010: a1 05 00 54  	b.ne	0x810c4 <_ZN44_$LT$$RF$T$u20$as$u20$core..fmt..Display$GT$3fmt17h3f94e73c8b157ba1E+0x244>
   81014: d3 00 00 b4  	cbz	x19, 0x8102c <_ZN44_$LT$$RF$T$u20$as$u20$core..fmt..Display$GT$3fmt17h3f94e73c8b157ba1E+0x1ac>
   81018: 7f 06 00 f1  	cmp	x19, #1
   8101c: 01 01 00 54  	b.ne	0x8103c <_ZN44_$LT$$RF$T$u20$as$u20$core..fmt..Display$GT$3fmt17h3f94e73c8b157ba1E+0x1bc>
   81020: e9 03 1f aa  	mov	x9, xzr
   81024: e8 03 14 aa  	mov	x8, x20
   81028: 18 00 00 14  	b	0x81088 <_ZN44_$LT$$RF$T$u20$as$u20$core..fmt..Display$GT$3fmt17h3f94e73c8b157ba1E+0x208>
   8102c: 28 04 40 f9  	ldr	x8, [x1, #8]
   81030: a8 04 00 b4  	cbz	x8, 0x810c4 <_ZN44_$LT$$RF$T$u20$as$u20$core..fmt..Display$GT$3fmt17h3f94e73c8b157ba1E+0x244>
   81034: e9 03 1f aa  	mov	x9, xzr
   81038: 46 00 00 14  	b	0x81150 <_ZN44_$LT$$RF$T$u20$as$u20$core..fmt..Display$GT$3fmt17h3f94e73c8b157ba1E+0x2d0>
   8103c: 68 fa 7f 92  	and	x8, x19, #0xfffffffffffffffe
   81040: e9 03 1f aa  	mov	x9, xzr
   81044: ea 03 1f aa  	mov	x10, xzr
   81048: 8b 06 00 91  	add	x11, x20, #1
   8104c: ec 03 08 aa  	mov	x12, x8
   81050: 6d f1 5f 38  	ldurb	w13, [x11, #-1]
   81054: 6e 25 40 38  	ldrb	w14, [x11], #2
   81058: ad 05 1a 12  	and	w13, w13, #0xc0
   8105c: ce 05 1a 12  	and	w14, w14, #0xc0
   81060: bf 01 02 71  	cmp	w13, #128
   81064: 29 05 89 9a  	cinc	x9, x9, ne
   81068: df 01 02 71  	cmp	w14, #128
   8106c: 4a 05 8a 9a  	cinc	x10, x10, ne
   81070: 8c 09 00 f1  	subs	x12, x12, #2
   81074: e1 fe ff 54  	b.ne	0x81050 <_ZN44_$LT$$RF$T$u20$as$u20$core..fmt..Display$GT$3fmt17h3f94e73c8b157ba1E+0x1d0>
   81078: 7f 02 08 eb  	cmp	x19, x8
   8107c: 49 01 09 8b  	add	x9, x10, x9
   81080: 20 01 00 54  	b.eq	0x810a4 <_ZN44_$LT$$RF$T$u20$as$u20$core..fmt..Display$GT$3fmt17h3f94e73c8b157ba1E+0x224>
   81084: 88 02 08 8b  	add	x8, x20, x8
   81088: 8a 02 13 8b  	add	x10, x20, x19
   8108c: 0b 15 40 38  	ldrb	w11, [x8], #1
   81090: 6b 05 1a 12  	and	w11, w11, #0xc0
   81094: 7f 01 02 71  	cmp	w11, #128
   81098: 29 05 89 9a  	cinc	x9, x9, ne
   8109c: 5f 01 08 eb  	cmp	x10, x8
   810a0: 61 ff ff 54  	b.ne	0x8108c <_ZN44_$LT$$RF$T$u20$as$u20$core..fmt..Display$GT$3fmt17h3f94e73c8b157ba1E+0x20c>
   810a4: 28 04 40 f9  	ldr	x8, [x1, #8]
   810a8: 3f 01 08 eb  	cmp	x9, x8
   810ac: c2 00 00 54  	b.hs	0x810c4 <_ZN44_$LT$$RF$T$u20$as$u20$core..fmt..Display$GT$3fmt17h3f94e73c8b157ba1E+0x244>
   810b0: 7f 06 00 f1  	cmp	x19, #1
   810b4: a8 01 00 54  	b.hi	0x810e8 <_ZN44_$LT$$RF$T$u20$as$u20$core..fmt..Display$GT$3fmt17h3f94e73c8b157ba1E+0x268>
   810b8: e9 03 1f aa  	mov	x9, xzr
   810bc: ea 03 14 aa  	mov	x10, x20
   810c0: 1d 00 00 14  	b	0x81134 <_ZN44_$LT$$RF$T$u20$as$u20$core..fmt..Display$GT$3fmt17h3f94e73c8b157ba1E+0x2b4>
   810c4: 20 20 42 a9  	ldp	x0, x8, [x1, #32]
   810c8: e1 03 14 aa  	mov	x1, x20
   810cc: e2 03 13 aa  	mov	x2, x19
   810d0: f4 4f 43 a9  	ldp	x20, x19, [sp, #48]
   810d4: 03 0d 40 f9  	ldr	x3, [x8, #24]
   810d8: f6 57 42 a9  	ldp	x22, x21, [sp, #32]
   810dc: f8 5f 41 a9  	ldp	x24, x23, [sp, #16]
   810e0: fe 67 c4 a8  	ldp	x30, x25, [sp], #64
   810e4: 60 00 1f d6  	br	x3
   810e8: 6a fa 7f 92  	and	x10, x19, #0xfffffffffffffffe
   810ec: e9 03 1f aa  	mov	x9, xzr
   810f0: eb 03 1f aa  	mov	x11, xzr
   810f4: 8c 06 00 91  	add	x12, x20, #1
   810f8: ed 03 0a aa  	mov	x13, x10
   810fc: 8e f1 5f 38  	ldurb	w14, [x12, #-1]
   81100: 8f 25 40 38  	ldrb	w15, [x12], #2
   81104: ce 05 1a 12  	and	w14, w14, #0xc0
   81108: ef 05 1a 12  	and	w15, w15, #0xc0
   8110c: df 01 02 71  	cmp	w14, #128
   81110: 29 05 89 9a  	cinc	x9, x9, ne
   81114: ff 01 02 71  	cmp	w15, #128
   81118: 6b 05 8b 9a  	cinc	x11, x11, ne
   8111c: ad 09 00 f1  	subs	x13, x13, #2
   81120: e1 fe ff 54  	b.ne	0x810fc <_ZN44_$LT$$RF$T$u20$as$u20$core..fmt..Display$GT$3fmt17h3f94e73c8b157ba1E+0x27c>
   81124: 7f 02 0a eb  	cmp	x19, x10
   81128: 69 01 09 8b  	add	x9, x11, x9
   8112c: 20 01 00 54  	b.eq	0x81150 <_ZN44_$LT$$RF$T$u20$as$u20$core..fmt..Display$GT$3fmt17h3f94e73c8b157ba1E+0x2d0>
   81130: 8a 02 0a 8b  	add	x10, x20, x10
   81134: 8b 02 13 8b  	add	x11, x20, x19
   81138: 4c 15 40 38  	ldrb	w12, [x10], #1
   8113c: 8c 05 1a 12  	and	w12, w12, #0xc0
   81140: 9f 01 02 71  	cmp	w12, #128
   81144: 29 05 89 9a  	cinc	x9, x9, ne
   81148: 7f 01 0a eb  	cmp	x11, x10
   8114c: 61 ff ff 54  	b.ne	0x81138 <_ZN44_$LT$$RF$T$u20$as$u20$core..fmt..Display$GT$3fmt17h3f94e73c8b157ba1E+0x2b8>
   81150: 2a e0 40 39  	ldrb	w10, [x1, #56]
   81154: 08 01 09 cb  	sub	x8, x8, x9
   81158: 5f 0d 00 71  	cmp	w10, #3
   8115c: ea 03 8a 1a  	csel	w10, wzr, w10, eq
   81160: 4a 05 00 72  	ands	w10, w10, #0x3
   81164: a0 00 00 54  	b.eq	0x81178 <_ZN44_$LT$$RF$T$u20$as$u20$core..fmt..Display$GT$3fmt17h3f94e73c8b157ba1E+0x2f8>
   81168: 5f 05 00 71  	cmp	w10, #1
   8116c: c1 00 00 54  	b.ne	0x81184 <_ZN44_$LT$$RF$T$u20$as$u20$core..fmt..Display$GT$3fmt17h3f94e73c8b157ba1E+0x304>
   81170: f8 03 1f aa  	mov	x24, xzr
   81174: 07 00 00 14  	b	0x81190 <_ZN44_$LT$$RF$T$u20$as$u20$core..fmt..Display$GT$3fmt17h3f94e73c8b157ba1E+0x310>
   81178: f8 03 08 aa  	mov	x24, x8
   8117c: e8 03 1f aa  	mov	x8, xzr
   81180: 04 00 00 14  	b	0x81190 <_ZN44_$LT$$RF$T$u20$as$u20$core..fmt..Display$GT$3fmt17h3f94e73c8b157ba1E+0x310>
   81184: 09 05 00 91  	add	x9, x8, #1
   81188: 08 fd 41 d3  	lsr	x8, x8, #1
   8118c: 38 fd 41 d3  	lsr	x24, x9, #1
   81190: 35 5c 42 a9  	ldp	x21, x23, [x1, #32]
   81194: 36 34 40 b9  	ldr	w22, [x1, #52]
   81198: 19 05 00 91  	add	x25, x8, #1
   8119c: 39 07 00 f1  	subs	x25, x25, #1
   811a0: e0 00 00 54  	b.eq	0x811bc <_ZN44_$LT$$RF$T$u20$as$u20$core..fmt..Display$GT$3fmt17h3f94e73c8b157ba1E+0x33c>
   811a4: e8 12 40 f9  	ldr	x8, [x23, #32]
   811a8: e0 03 15 aa  	mov	x0, x21
   811ac: e1 03 16 2a  	mov	w1, w22
   811b0: 00 01 3f d6  	blr	x8
   811b4: 40 ff 07 36  	tbz	w0, #0, 0x8119c <_ZN44_$LT$$RF$T$u20$as$u20$core..fmt..Display$GT$3fmt17h3f94e73c8b157ba1E+0x31c>
   811b8: 0a 00 00 14  	b	0x811e0 <_ZN44_$LT$$RF$T$u20$as$u20$core..fmt..Display$GT$3fmt17h3f94e73c8b157ba1E+0x360>
   811bc: df 42 44 71  	cmp	w22, #272, lsl #12
   811c0: f8 03 98 9a  	csel	x24, xzr, x24, eq
   811c4: e0 00 00 54  	b.eq	0x811e0 <_ZN44_$LT$$RF$T$u20$as$u20$core..fmt..Display$GT$3fmt17h3f94e73c8b157ba1E+0x360>
   811c8: e8 0e 40 f9  	ldr	x8, [x23, #24]
   811cc: e0 03 15 aa  	mov	x0, x21
   811d0: e1 03 14 aa  	mov	x1, x20
   811d4: e2 03 13 aa  	mov	x2, x19
   811d8: 00 01 3f d6  	blr	x8
   811dc: e0 00 00 36  	tbz	w0, #0, 0x811f8 <_ZN44_$LT$$RF$T$u20$as$u20$core..fmt..Display$GT$3fmt17h3f94e73c8b157ba1E+0x378>
   811e0: 20 00 80 52  	mov	w0, #1
   811e4: f4 4f 43 a9  	ldp	x20, x19, [sp, #48]
   811e8: f6 57 42 a9  	ldp	x22, x21, [sp, #32]
   811ec: f8 5f 41 a9  	ldp	x24, x23, [sp, #16]
   811f0: fe 67 c4 a8  	ldp	x30, x25, [sp], #64
   811f4: c0 03 5f d6  	ret
   811f8: f3 03 1f aa  	mov	x19, xzr
   811fc: 1f 03 13 eb  	cmp	x24, x19
   81200: a0 02 00 54  	b.eq	0x81254 <_ZN44_$LT$$RF$T$u20$as$u20$core..fmt..Display$GT$3fmt17h3f94e73c8b157ba1E+0x3d4>
   81204: e8 12 40 f9  	ldr	x8, [x23, #32]
   81208: e0 03 15 aa  	mov	x0, x21
   8120c: e1 03 16 2a  	mov	w1, w22
   81210: 73 06 00 91  	add	x19, x19, #1
   81214: 00 01 3f d6  	blr	x8
   81218: 20 ff ff 34  	cbz	w0, 0x811fc <_ZN44_$LT$$RF$T$u20$as$u20$core..fmt..Display$GT$3fmt17h3f94e73c8b157ba1E+0x37c>
   8121c: 68 06 00 d1  	sub	x8, x19, #1
   81220: 0e 00 00 14  	b	0x81258 <_ZN44_$LT$$RF$T$u20$as$u20$core..fmt..Display$GT$3fmt17h3f94e73c8b157ba1E+0x3d8>
   81224: ec 03 1f 2a  	mov	w12, wzr
   81228: ed 03 0a aa  	mov	x13, x10
   8122c: 7f 81 03 71  	cmp	w11, #224
   81230: c3 eb ff 54  	b.lo	0x80fa8 <_ZN44_$LT$$RF$T$u20$as$u20$core..fmt..Display$GT$3fmt17h3f94e73c8b157ba1E+0x128>
   81234: bf 01 0a eb  	cmp	x13, x10
   81238: 60 01 00 54  	b.eq	0x81264 <_ZN44_$LT$$RF$T$u20$as$u20$core..fmt..Display$GT$3fmt17h3f94e73c8b157ba1E+0x3e4>
   8123c: ae 15 40 38  	ldrb	w14, [x13], #1
   81240: ce 15 00 12  	and	w14, w14, #0x3f
   81244: ce 65 1a 53  	lsl	w14, w14, #6
   81248: 7f c1 03 71  	cmp	w11, #240
   8124c: 42 01 00 54  	b.hs	0x81274 <_ZN44_$LT$$RF$T$u20$as$u20$core..fmt..Display$GT$3fmt17h3f94e73c8b157ba1E+0x3f4>
   81250: 56 ff ff 17  	b	0x80fa8 <_ZN44_$LT$$RF$T$u20$as$u20$core..fmt..Display$GT$3fmt17h3f94e73c8b157ba1E+0x128>
   81254: e8 03 18 aa  	mov	x8, x24
   81258: 1f 01 18 eb  	cmp	x8, x24
   8125c: e0 27 9f 1a  	cset	w0, lo
   81260: e1 ff ff 17  	b	0x811e4 <_ZN44_$LT$$RF$T$u20$as$u20$core..fmt..Display$GT$3fmt17h3f94e73c8b157ba1E+0x364>
   81264: ee 03 1f 2a  	mov	w14, wzr
   81268: ed 03 0a aa  	mov	x13, x10
   8126c: 7f c1 03 71  	cmp	w11, #240
   81270: c3 e9 ff 54  	b.lo	0x80fa8 <_ZN44_$LT$$RF$T$u20$as$u20$core..fmt..Display$GT$3fmt17h3f94e73c8b157ba1E+0x128>
   81274: bf 01 0a eb  	cmp	x13, x10
   81278: 80 00 00 54  	b.eq	0x81288 <_ZN44_$LT$$RF$T$u20$as$u20$core..fmt..Display$GT$3fmt17h3f94e73c8b157ba1E+0x408>
   8127c: aa 01 40 39  	ldrb	w10, [x13]
   81280: 4a 15 00 12  	and	w10, w10, #0x3f
   81284: 02 00 00 14  	b	0x8128c <_ZN44_$LT$$RF$T$u20$as$u20$core..fmt..Display$GT$3fmt17h3f94e73c8b157ba1E+0x40c>
   81288: ea 03 1f 2a  	mov	w10, wzr
   8128c: 6c 09 0e 33  	bfi	w12, w11, #18, #3
   81290: 8b 01 0e 2a  	orr	w11, w12, w14
   81294: 6a 01 0a 2a  	orr	w10, w11, w10
   81298: 5f 41 44 71  	cmp	w10, #272, lsl #12
   8129c: 80 eb ff 54  	b.eq	0x8100c <_ZN44_$LT$$RF$T$u20$as$u20$core..fmt..Display$GT$3fmt17h3f94e73c8b157ba1E+0x18c>
   812a0: 42 ff ff 17  	b	0x80fa8 <_ZN44_$LT$$RF$T$u20$as$u20$core..fmt..Display$GT$3fmt17h3f94e73c8b157ba1E+0x128>

00000000000812a4 <_ZN42_$LT$$RF$T$u20$as$u20$core..fmt..Debug$GT$3fmt17h4b8fb327fe2e6f34E>:
   812a4: 00 20 40 a9  	ldp	x0, x8, [x0]
   812a8: 02 0d 40 f9  	ldr	x2, [x8, #24]
   812ac: 40 00 1f d6  	br	x2

00000000000812b0 <_ZN4core3fmt5write17h4089dd81629a8d2eE>:
   812b0: ff 43 02 d1  	sub	sp, sp, #144
   812b4: fe 23 00 f9  	str	x30, [sp, #64]
   812b8: fa 67 05 a9  	stp	x26, x25, [sp, #80]
   812bc: f8 5f 06 a9  	stp	x24, x23, [sp, #96]
   812c0: f6 57 07 a9  	stp	x22, x21, [sp, #112]
   812c4: f4 4f 08 a9  	stp	x20, x19, [sp, #128]
   812c8: 48 08 40 f9  	ldr	x8, [x2, #16]
   812cc: f3 03 02 aa  	mov	x19, x2
   812d0: 09 04 c0 d2  	mov	x9, #137438953472
   812d4: 6a 00 80 52  	mov	w10, #3
   812d8: e1 a7 02 a9  	stp	x1, x9, [sp, #40]
   812dc: ea e3 00 39  	strb	w10, [sp, #56]
   812e0: ff 03 00 f9  	str	xzr, [sp]
   812e4: ff 0b 00 f9  	str	xzr, [sp, #16]
   812e8: e0 13 00 f9  	str	x0, [sp, #32]
   812ec: c8 08 00 b4  	cbz	x8, 0x81404 <_ZN4core3fmt5write17h4089dd81629a8d2eE+0x154>
   812f0: 69 0e 40 f9  	ldr	x9, [x19, #24]
   812f4: 74 56 40 a9  	ldp	x20, x21, [x19]
   812f8: 3f 01 15 eb  	cmp	x9, x21
   812fc: b6 82 89 9a  	csel	x22, x21, x9, hi
   81300: 36 0b 00 b4  	cbz	x22, 0x81464 <_ZN4core3fmt5write17h4089dd81629a8d2eE+0x1b4>
   81304: f9 ff ff f0  	adrp	x25, 0x80000 <_ZN4core3fmt5write17h4089dd81629a8d2eE+0x50>
   81308: f7 03 1f aa  	mov	x23, xzr
   8130c: 18 c1 00 91  	add	x24, x8, #48
   81310: 39 03 22 91  	add	x25, x25, #2176
   81314: fa 03 16 aa  	mov	x26, x22
   81318: 88 02 17 8b  	add	x8, x20, x23
   8131c: 02 05 40 f9  	ldr	x2, [x8, #8]
   81320: c2 00 00 b4  	cbz	x2, 0x81338 <_ZN4core3fmt5write17h4089dd81629a8d2eE+0x88>
   81324: e0 23 42 a9  	ldp	x0, x8, [sp, #32]
   81328: 81 6a 77 f8  	ldr	x1, [x20, x23]
   8132c: 08 0d 40 f9  	ldr	x8, [x8, #24]
   81330: 00 01 3f d6  	blr	x8
   81334: 80 0a 00 37  	tbnz	w0, #0, 0x81484 <_ZN4core3fmt5write17h4089dd81629a8d2eE+0x1d4>
   81338: 08 83 5f b8  	ldur	w8, [x24, #-8]
   8133c: e8 37 00 b9  	str	w8, [sp, #52]
   81340: 08 03 40 39  	ldrb	w8, [x24]
   81344: e8 e3 00 39  	strb	w8, [sp, #56]
   81348: 09 c3 5f b8  	ldur	w9, [x24, #-4]
   8134c: 68 12 40 f9  	ldr	x8, [x19, #32]
   81350: e9 33 00 b9  	str	w9, [sp, #48]
   81354: 0a a7 7e a9  	ldp	x10, x9, [x24, #-24]
   81358: ea 01 00 b4  	cbz	x10, 0x81394 <_ZN4core3fmt5write17h4089dd81629a8d2eE+0xe4>
   8135c: 5f 05 00 f1  	cmp	x10, #1
   81360: a1 00 00 54  	b.ne	0x81374 <_ZN4core3fmt5write17h4089dd81629a8d2eE+0xc4>
   81364: 0a 11 09 8b  	add	x10, x8, x9, lsl #4
   81368: 4a 05 40 f9  	ldr	x10, [x10, #8]
   8136c: 5f 01 19 eb  	cmp	x10, x25
   81370: c0 00 00 54  	b.eq	0x81388 <_ZN4core3fmt5write17h4089dd81629a8d2eE+0xd8>
   81374: ea 03 1f aa  	mov	x10, xzr
   81378: ea 27 00 a9  	stp	x10, x9, [sp]
   8137c: 0a a7 7d a9  	ldp	x10, x9, [x24, #-40]
   81380: 2a 01 00 b5  	cbnz	x10, 0x813a4 <_ZN4core3fmt5write17h4089dd81629a8d2eE+0xf4>
   81384: 13 00 00 14  	b	0x813d0 <_ZN4core3fmt5write17h4089dd81629a8d2eE+0x120>
   81388: 29 ed 7c d3  	lsl	x9, x9, #4
   8138c: 09 69 69 f8  	ldr	x9, [x8, x9]
   81390: 29 01 40 f9  	ldr	x9, [x9]
   81394: 2a 00 80 52  	mov	w10, #1
   81398: ea 27 00 a9  	stp	x10, x9, [sp]
   8139c: 0a a7 7d a9  	ldp	x10, x9, [x24, #-40]
   813a0: 8a 01 00 b4  	cbz	x10, 0x813d0 <_ZN4core3fmt5write17h4089dd81629a8d2eE+0x120>
   813a4: 5f 05 00 f1  	cmp	x10, #1
   813a8: a1 00 00 54  	b.ne	0x813bc <_ZN4core3fmt5write17h4089dd81629a8d2eE+0x10c>
   813ac: 0a 11 09 8b  	add	x10, x8, x9, lsl #4
   813b0: 4a 05 40 f9  	ldr	x10, [x10, #8]
   813b4: 5f 01 19 eb  	cmp	x10, x25
   813b8: 60 00 00 54  	b.eq	0x813c4 <_ZN4core3fmt5write17h4089dd81629a8d2eE+0x114>
   813bc: ea 03 1f aa  	mov	x10, xzr
   813c0: 05 00 00 14  	b	0x813d4 <_ZN4core3fmt5write17h4089dd81629a8d2eE+0x124>
   813c4: 29 ed 7c d3  	lsl	x9, x9, #4
   813c8: 09 69 69 f8  	ldr	x9, [x8, x9]
   813cc: 29 01 40 f9  	ldr	x9, [x9]
   813d0: 2a 00 80 52  	mov	w10, #1
   813d4: ea 27 01 a9  	stp	x10, x9, [sp, #16]
   813d8: 09 03 5d f8  	ldur	x9, [x24, #-48]
   813dc: e1 03 00 91  	mov	x1, sp
   813e0: 08 11 09 8b  	add	x8, x8, x9, lsl #4
   813e4: 00 25 40 a9  	ldp	x0, x9, [x8]
   813e8: 20 01 3f d6  	blr	x9
   813ec: c0 04 00 37  	tbnz	w0, #0, 0x81484 <_ZN4core3fmt5write17h4089dd81629a8d2eE+0x1d4>
   813f0: 5a 07 00 f1  	subs	x26, x26, #1
   813f4: 18 e3 00 91  	add	x24, x24, #56
   813f8: f7 42 00 91  	add	x23, x23, #16
   813fc: e1 f8 ff 54  	b.ne	0x81318 <_ZN4core3fmt5write17h4089dd81629a8d2eE+0x68>
   81400: 19 00 00 14  	b	0x81464 <_ZN4core3fmt5write17h4089dd81629a8d2eE+0x1b4>
   81404: 68 16 40 f9  	ldr	x8, [x19, #40]
   81408: 74 56 40 a9  	ldp	x20, x21, [x19]
   8140c: 1f 01 15 eb  	cmp	x8, x21
   81410: b6 82 88 9a  	csel	x22, x21, x8, hi
   81414: 96 02 00 b4  	cbz	x22, 0x81464 <_ZN4core3fmt5write17h4089dd81629a8d2eE+0x1b4>
   81418: 73 12 40 f9  	ldr	x19, [x19, #32]
   8141c: f7 03 1f aa  	mov	x23, xzr
   81420: f8 03 16 aa  	mov	x24, x22
   81424: 88 02 17 8b  	add	x8, x20, x23
   81428: 02 05 40 f9  	ldr	x2, [x8, #8]
   8142c: c2 00 00 b4  	cbz	x2, 0x81444 <_ZN4core3fmt5write17h4089dd81629a8d2eE+0x194>
   81430: e0 23 42 a9  	ldp	x0, x8, [sp, #32]
   81434: 81 6a 77 f8  	ldr	x1, [x20, x23]
   81438: 08 0d 40 f9  	ldr	x8, [x8, #24]
   8143c: 00 01 3f d6  	blr	x8
   81440: 20 02 00 37  	tbnz	w0, #0, 0x81484 <_ZN4core3fmt5write17h4089dd81629a8d2eE+0x1d4>
   81444: 68 02 17 8b  	add	x8, x19, x23
   81448: 00 25 40 a9  	ldp	x0, x9, [x8]
   8144c: e1 03 00 91  	mov	x1, sp
   81450: 20 01 3f d6  	blr	x9
   81454: 80 01 00 37  	tbnz	w0, #0, 0x81484 <_ZN4core3fmt5write17h4089dd81629a8d2eE+0x1d4>
   81458: 18 07 00 f1  	subs	x24, x24, #1
   8145c: f7 42 00 91  	add	x23, x23, #16
   81460: 21 fe ff 54  	b.ne	0x81424 <_ZN4core3fmt5write17h4089dd81629a8d2eE+0x174>
   81464: df 02 15 eb  	cmp	x22, x21
   81468: 22 01 00 54  	b.hs	0x8148c <_ZN4core3fmt5write17h4089dd81629a8d2eE+0x1dc>
   8146c: e0 23 42 a9  	ldp	x0, x8, [sp, #32]
   81470: 89 12 16 8b  	add	x9, x20, x22, lsl #4
   81474: 21 09 40 a9  	ldp	x1, x2, [x9]
   81478: 08 0d 40 f9  	ldr	x8, [x8, #24]
   8147c: 00 01 3f d6  	blr	x8
   81480: 60 00 00 36  	tbz	w0, #0, 0x8148c <_ZN4core3fmt5write17h4089dd81629a8d2eE+0x1dc>
   81484: 20 00 80 52  	mov	w0, #1
   81488: 02 00 00 14  	b	0x81490 <_ZN4core3fmt5write17h4089dd81629a8d2eE+0x1e0>
   8148c: e0 03 1f 2a  	mov	w0, wzr
   81490: f4 4f 48 a9  	ldp	x20, x19, [sp, #128]
   81494: f6 57 47 a9  	ldp	x22, x21, [sp, #112]
   81498: f8 5f 46 a9  	ldp	x24, x23, [sp, #96]
   8149c: fa 67 45 a9  	ldp	x26, x25, [sp, #80]
   814a0: fe 23 40 f9  	ldr	x30, [sp, #64]
   814a4: ff 43 02 91  	add	sp, sp, #144
   814a8: c0 03 5f d6  	ret

00000000000814ac <_ZN4core5slice5index22slice_index_order_fail17he71d7140076fff6eE>:
   814ac: e0 07 ba a9  	stp	x0, x1, [sp, #-96]!
   814b0: e9 ff ff f0  	adrp	x9, 0x80000 <_ZN4core5slice5index22slice_index_order_fail17he71d7140076fff6eE>
   814b4: e8 03 00 91  	mov	x8, sp
   814b8: 29 41 23 91  	add	x9, x9, #2256
   814bc: 0b 00 00 d0  	adrp	x11, 0x83000 <_ZN4core5slice5index22slice_index_order_fail17he71d7140076fff6eE+0x18>
   814c0: ea 23 00 91  	add	x10, sp, #8
   814c4: 6b 01 1e 91  	add	x11, x11, #1920
   814c8: 4c 00 80 52  	mov	w12, #2
   814cc: e8 27 04 a9  	stp	x8, x9, [sp, #64]
   814d0: e8 03 01 91  	add	x8, sp, #64
   814d4: e0 43 00 91  	add	x0, sp, #16
   814d8: e1 03 02 aa  	mov	x1, x2
   814dc: ff 7f 02 a9  	stp	xzr, xzr, [sp, #32]
   814e0: ea 27 05 a9  	stp	x10, x9, [sp, #80]
   814e4: eb 33 01 a9  	stp	x11, x12, [sp, #16]
   814e8: e8 33 03 a9  	stp	x8, x12, [sp, #48]
   814ec: 56 fd ff 97  	bl	0x80a44 <_ZN4core9panicking9panic_fmt17h548b34a47a4ac578E>
   814f0: 20 00 20 d4  	brk	#0x1

00000000000814f4 <_ZN4core6result13unwrap_failed17h514395d9b84745f5E>:
   814f4: 08 00 00 d0  	adrp	x8, 0x83000 <_ZN4core6result13unwrap_failed17h514395d9b84745f5E+0x8>
   814f8: 08 61 11 91  	add	x8, x8, #1112
   814fc: 69 05 80 52  	mov	w9, #43
   81500: 0a 00 00 d0  	adrp	x10, 0x83000 <_ZN4core6result13unwrap_failed17h514395d9b84745f5E+0x14>
   81504: e8 27 b9 a9  	stp	x8, x9, [sp, #-112]!
   81508: 08 00 00 90  	adrp	x8, 0x81000 <_ZN4core6result13unwrap_failed17h514395d9b84745f5E+0x14>
   8150c: 4a 21 12 91  	add	x10, x10, #1160
   81510: ec ff ff f0  	adrp	x12, 0x80000 <_ZN4core6result13unwrap_failed17h514395d9b84745f5E+0x18>
   81514: ed 43 00 91  	add	x13, sp, #16
   81518: 08 91 0a 91  	add	x8, x8, #676
   8151c: 09 00 00 d0  	adrp	x9, 0x83000 <_ZN4core6result13unwrap_failed17h514395d9b84745f5E+0x30>
   81520: eb 03 00 91  	mov	x11, sp
   81524: 8c 01 3a 91  	add	x12, x12, #3712
   81528: e0 2b 01 a9  	stp	x0, x10, [sp, #16]
   8152c: 29 a1 1f 91  	add	x9, x9, #2024
   81530: 4a 00 80 52  	mov	w10, #2
   81534: ed 23 06 a9  	stp	x13, x8, [sp, #96]
   81538: e8 43 01 91  	add	x8, sp, #80
   8153c: e0 83 00 91  	add	x0, sp, #32
   81540: eb 33 05 a9  	stp	x11, x12, [sp, #80]
   81544: ff 7f 03 a9  	stp	xzr, xzr, [sp, #48]
   81548: e9 2b 02 a9  	stp	x9, x10, [sp, #32]
   8154c: e8 2b 04 a9  	stp	x8, x10, [sp, #64]
   81550: 3d fd ff 97  	bl	0x80a44 <_ZN4core9panicking9panic_fmt17h548b34a47a4ac578E>
   81554: 20 00 20 d4  	brk	#0x1

0000000000081558 <_ZN68_$LT$core..fmt..builders..PadAdapter$u20$as$u20$core..fmt..Write$GT$9write_str17h006d11991b68be72E>:
   81558: fe 6f bb a9  	stp	x30, x27, [sp, #-80]!
   8155c: fa 67 01 a9  	stp	x26, x25, [sp, #16]
   81560: f8 5f 02 a9  	stp	x24, x23, [sp, #32]
   81564: f6 57 03 a9  	stp	x22, x21, [sp, #48]
   81568: f4 4f 04 a9  	stp	x20, x19, [sp, #64]
   8156c: 42 11 00 b4  	cbz	x2, 0x81794 <_ZN68_$LT$core..fmt..builders..PadAdapter$u20$as$u20$core..fmt..Write$GT$9write_str17h006d11991b68be72E+0x23c>
   81570: 19 e0 40 a9  	ldp	x25, x24, [x0, #8]
   81574: 15 00 40 f9  	ldr	x21, [x0]
   81578: 5b 41 81 d2  	mov	x27, #2570
   8157c: 5b 41 a1 f2  	movk	x27, #2570, lsl #16
   81580: fa db 07 b2  	mov	x26, #-72340172838076674
   81584: 5b 41 c1 f2  	movk	x27, #2570, lsl #32
   81588: 16 00 00 d0  	adrp	x22, 0x83000 <_ZN68_$LT$core..fmt..builders..PadAdapter$u20$as$u20$core..fmt..Write$GT$9write_str17h006d11991b68be72E+0x38>
   8158c: f3 03 02 aa  	mov	x19, x2
   81590: f4 03 01 aa  	mov	x20, x1
   81594: fa df 9f f2  	movk	x26, #65279
   81598: 5b 41 e1 f2  	movk	x27, #2570, lsl #48
   8159c: d6 2a 20 91  	add	x22, x22, #2058
   815a0: 04 00 00 14  	b	0x815b0 <_ZN68_$LT$core..fmt..builders..PadAdapter$u20$as$u20$core..fmt..Write$GT$9write_str17h006d11991b68be72E+0x58>
   815a4: 73 02 17 eb  	subs	x19, x19, x23
   815a8: 94 02 17 8b  	add	x20, x20, x23
   815ac: 40 0f 00 54  	b.eq	0x81794 <_ZN68_$LT$core..fmt..builders..PadAdapter$u20$as$u20$core..fmt..Write$GT$9write_str17h006d11991b68be72E+0x23c>
   815b0: 08 03 40 39  	ldrb	w8, [x24]
   815b4: e8 00 00 34  	cbz	w8, 0x815d0 <_ZN68_$LT$core..fmt..builders..PadAdapter$u20$as$u20$core..fmt..Write$GT$9write_str17h006d11991b68be72E+0x78>
   815b8: 28 0f 40 f9  	ldr	x8, [x25, #24]
   815bc: 82 00 80 52  	mov	w2, #4
   815c0: e0 03 15 aa  	mov	x0, x21
   815c4: e1 03 16 aa  	mov	x1, x22
   815c8: 00 01 3f d6  	blr	x8
   815cc: 80 0e 00 37  	tbnz	w0, #0, 0x8179c <_ZN68_$LT$core..fmt..builders..PadAdapter$u20$as$u20$core..fmt..Write$GT$9write_str17h006d11991b68be72E+0x244>
   815d0: f7 03 1f aa  	mov	x23, xzr
   815d4: e1 03 13 aa  	mov	x1, x19
   815d8: 05 00 00 14  	b	0x815ec <_ZN68_$LT$core..fmt..builders..PadAdapter$u20$as$u20$core..fmt..Write$GT$9write_str17h006d11991b68be72E+0x94>
   815dc: 68 02 17 eb  	subs	x8, x19, x23
   815e0: e1 33 88 9a  	csel	x1, xzr, x8, lo
   815e4: ff 02 13 eb  	cmp	x23, x19
   815e8: 48 0a 00 54  	b.hi	0x81730 <_ZN68_$LT$core..fmt..builders..PadAdapter$u20$as$u20$core..fmt..Write$GT$9write_str17h006d11991b68be72E+0x1d8>
   815ec: 28 40 00 f1  	subs	x8, x1, #16
   815f0: 62 01 00 54  	b.hs	0x8161c <_ZN68_$LT$core..fmt..builders..PadAdapter$u20$as$u20$core..fmt..Write$GT$9write_str17h006d11991b68be72E+0xc4>
   815f4: e1 09 00 b4  	cbz	x1, 0x81730 <_ZN68_$LT$core..fmt..builders..PadAdapter$u20$as$u20$core..fmt..Write$GT$9write_str17h006d11991b68be72E+0x1d8>
   815f8: e9 03 1f aa  	mov	x9, xzr
   815fc: 88 02 17 8b  	add	x8, x20, x23
   81600: 0a 69 69 38  	ldrb	w10, [x8, x9]
   81604: 5f 29 00 71  	cmp	w10, #10
   81608: e0 06 00 54  	b.eq	0x816e4 <_ZN68_$LT$core..fmt..builders..PadAdapter$u20$as$u20$core..fmt..Write$GT$9write_str17h006d11991b68be72E+0x18c>
   8160c: 29 05 00 91  	add	x9, x9, #1
   81610: 3f 00 09 eb  	cmp	x1, x9
   81614: 61 ff ff 54  	b.ne	0x81600 <_ZN68_$LT$core..fmt..builders..PadAdapter$u20$as$u20$core..fmt..Write$GT$9write_str17h006d11991b68be72E+0xa8>
   81618: 46 00 00 14  	b	0x81730 <_ZN68_$LT$core..fmt..builders..PadAdapter$u20$as$u20$core..fmt..Write$GT$9write_str17h006d11991b68be72E+0x1d8>
   8161c: 89 02 17 8b  	add	x9, x20, x23
   81620: 2a 1d 00 91  	add	x10, x9, #7
   81624: 4a f1 7d 92  	and	x10, x10, #0xfffffffffffffff8
   81628: 4a 01 09 eb  	subs	x10, x10, x9
   8162c: c0 01 00 54  	b.eq	0x81664 <_ZN68_$LT$core..fmt..builders..PadAdapter$u20$as$u20$core..fmt..Write$GT$9write_str17h006d11991b68be72E+0x10c>
   81630: 5f 01 01 eb  	cmp	x10, x1
   81634: e9 03 1f aa  	mov	x9, xzr
   81638: 20 80 8a 9a  	csel	x0, x1, x10, hi
   8163c: 8a 02 17 8b  	add	x10, x20, x23
   81640: 4b 69 69 38  	ldrb	w11, [x10, x9]
   81644: 7f 29 00 71  	cmp	w11, #10
   81648: e0 04 00 54  	b.eq	0x816e4 <_ZN68_$LT$core..fmt..builders..PadAdapter$u20$as$u20$core..fmt..Write$GT$9write_str17h006d11991b68be72E+0x18c>
   8164c: 29 05 00 91  	add	x9, x9, #1
   81650: 1f 00 09 eb  	cmp	x0, x9
   81654: 61 ff ff 54  	b.ne	0x81640 <_ZN68_$LT$core..fmt..builders..PadAdapter$u20$as$u20$core..fmt..Write$GT$9write_str17h006d11991b68be72E+0xe8>
   81658: 1f 00 08 eb  	cmp	x0, x8
   8165c: 69 00 00 54  	b.ls	0x81668 <_ZN68_$LT$core..fmt..builders..PadAdapter$u20$as$u20$core..fmt..Write$GT$9write_str17h006d11991b68be72E+0x110>
   81660: 13 00 00 14  	b	0x816ac <_ZN68_$LT$core..fmt..builders..PadAdapter$u20$as$u20$core..fmt..Write$GT$9write_str17h006d11991b68be72E+0x154>
   81664: e0 03 1f aa  	mov	x0, xzr
   81668: 89 02 17 8b  	add	x9, x20, x23
   8166c: 2a 01 00 8b  	add	x10, x9, x0
   81670: 4b 29 40 a9  	ldp	x11, x10, [x10]
   81674: 6c 01 1b ca  	eor	x12, x11, x27
   81678: 4d 01 1b ca  	eor	x13, x10, x27
   8167c: 8c 01 1a 8b  	add	x12, x12, x26
   81680: ad 01 1a 8b  	add	x13, x13, x26
   81684: 8b 01 2b 8a  	bic	x11, x12, x11
   81688: aa 01 2a 8a  	bic	x10, x13, x10
   8168c: 4a 01 0b aa  	orr	x10, x10, x11
   81690: 5f c1 01 f2  	tst	x10, #0x8080808080808080
   81694: 81 00 00 54  	b.ne	0x816a4 <_ZN68_$LT$core..fmt..builders..PadAdapter$u20$as$u20$core..fmt..Write$GT$9write_str17h006d11991b68be72E+0x14c>
   81698: 00 40 00 91  	add	x0, x0, #16
   8169c: 1f 00 08 eb  	cmp	x0, x8
   816a0: 69 fe ff 54  	b.ls	0x8166c <_ZN68_$LT$core..fmt..builders..PadAdapter$u20$as$u20$core..fmt..Write$GT$9write_str17h006d11991b68be72E+0x114>
   816a4: 1f 00 01 eb  	cmp	x0, x1
   816a8: 88 09 00 54  	b.hi	0x817d8 <_ZN68_$LT$core..fmt..builders..PadAdapter$u20$as$u20$core..fmt..Write$GT$9write_str17h006d11991b68be72E+0x280>
   816ac: 1f 00 01 eb  	cmp	x0, x1
   816b0: 00 04 00 54  	b.eq	0x81730 <_ZN68_$LT$core..fmt..builders..PadAdapter$u20$as$u20$core..fmt..Write$GT$9write_str17h006d11991b68be72E+0x1d8>
   816b4: 09 00 17 8b  	add	x9, x0, x23
   816b8: e8 03 1f aa  	mov	x8, xzr
   816bc: 89 02 09 8b  	add	x9, x20, x9
   816c0: 2a 00 00 cb  	sub	x10, x1, x0
   816c4: 2b 69 68 38  	ldrb	w11, [x9, x8]
   816c8: 7f 29 00 71  	cmp	w11, #10
   816cc: a0 00 00 54  	b.eq	0x816e0 <_ZN68_$LT$core..fmt..builders..PadAdapter$u20$as$u20$core..fmt..Write$GT$9write_str17h006d11991b68be72E+0x188>
   816d0: 08 05 00 91  	add	x8, x8, #1
   816d4: 5f 01 08 eb  	cmp	x10, x8
   816d8: 61 ff ff 54  	b.ne	0x816c4 <_ZN68_$LT$core..fmt..builders..PadAdapter$u20$as$u20$core..fmt..Write$GT$9write_str17h006d11991b68be72E+0x16c>
   816dc: 15 00 00 14  	b	0x81730 <_ZN68_$LT$core..fmt..builders..PadAdapter$u20$as$u20$core..fmt..Write$GT$9write_str17h006d11991b68be72E+0x1d8>
   816e0: 09 00 08 8b  	add	x9, x0, x8
   816e4: 28 01 17 8b  	add	x8, x9, x23
   816e8: 1f 01 13 eb  	cmp	x8, x19
   816ec: 17 05 00 91  	add	x23, x8, #1
   816f0: 62 f7 ff 54  	b.hs	0x815dc <_ZN68_$LT$core..fmt..builders..PadAdapter$u20$as$u20$core..fmt..Write$GT$9write_str17h006d11991b68be72E+0x84>
   816f4: 88 6a 68 38  	ldrb	w8, [x20, x8]
   816f8: 1f 29 00 71  	cmp	w8, #10
   816fc: 01 f7 ff 54  	b.ne	0x815dc <_ZN68_$LT$core..fmt..builders..PadAdapter$u20$as$u20$core..fmt..Write$GT$9write_str17h006d11991b68be72E+0x84>
   81700: 28 00 80 52  	mov	w8, #1
   81704: 7f 02 17 eb  	cmp	x19, x23
   81708: 08 03 00 39  	strb	w8, [x24]
   8170c: c8 01 00 54  	b.hi	0x81744 <_ZN68_$LT$core..fmt..builders..PadAdapter$u20$as$u20$core..fmt..Write$GT$9write_str17h006d11991b68be72E+0x1ec>
   81710: 41 05 00 54  	b.ne	0x817b8 <_ZN68_$LT$core..fmt..builders..PadAdapter$u20$as$u20$core..fmt..Write$GT$9write_str17h006d11991b68be72E+0x260>
   81714: 28 0f 40 f9  	ldr	x8, [x25, #24]
   81718: e0 03 15 aa  	mov	x0, x21
   8171c: e1 03 14 aa  	mov	x1, x20
   81720: e2 03 13 aa  	mov	x2, x19
   81724: 00 01 3f d6  	blr	x8
   81728: e0 f3 07 36  	tbz	w0, #0, 0x815a4 <_ZN68_$LT$core..fmt..builders..PadAdapter$u20$as$u20$core..fmt..Write$GT$9write_str17h006d11991b68be72E+0x4c>
   8172c: 1c 00 00 14  	b	0x8179c <_ZN68_$LT$core..fmt..builders..PadAdapter$u20$as$u20$core..fmt..Write$GT$9write_str17h006d11991b68be72E+0x244>
   81730: e8 03 1f 2a  	mov	w8, wzr
   81734: f7 03 13 aa  	mov	x23, x19
   81738: 7f 02 17 eb  	cmp	x19, x23
   8173c: 08 03 00 39  	strb	w8, [x24]
   81740: 89 fe ff 54  	b.ls	0x81710 <_ZN68_$LT$core..fmt..builders..PadAdapter$u20$as$u20$core..fmt..Write$GT$9write_str17h006d11991b68be72E+0x1b8>
   81744: 88 6a f7 38  	ldrsb	w8, [x20, x23]
   81748: 1f 05 01 31  	cmn	w8, #65
   8174c: 6d 03 00 54  	b.le	0x817b8 <_ZN68_$LT$core..fmt..builders..PadAdapter$u20$as$u20$core..fmt..Write$GT$9write_str17h006d11991b68be72E+0x260>
   81750: 28 0f 40 f9  	ldr	x8, [x25, #24]
   81754: e0 03 15 aa  	mov	x0, x21
   81758: e1 03 14 aa  	mov	x1, x20
   8175c: e2 03 17 aa  	mov	x2, x23
   81760: 00 01 3f d6  	blr	x8
   81764: c0 01 00 37  	tbnz	w0, #0, 0x8179c <_ZN68_$LT$core..fmt..builders..PadAdapter$u20$as$u20$core..fmt..Write$GT$9write_str17h006d11991b68be72E+0x244>
   81768: 88 6a f7 38  	ldrsb	w8, [x20, x23]
   8176c: 1f 05 01 31  	cmn	w8, #65
   81770: ac f1 ff 54  	b.gt	0x815a4 <_ZN68_$LT$core..fmt..builders..PadAdapter$u20$as$u20$core..fmt..Write$GT$9write_str17h006d11991b68be72E+0x4c>
   81774: 04 00 00 d0  	adrp	x4, 0x83000 <_ZN68_$LT$core..fmt..builders..PadAdapter$u20$as$u20$core..fmt..Write$GT$9write_str17h006d11991b68be72E+0x224>
   81778: 84 60 21 91  	add	x4, x4, #2136
   8177c: e0 03 14 aa  	mov	x0, x20
   81780: e1 03 13 aa  	mov	x1, x19
   81784: e2 03 17 aa  	mov	x2, x23
   81788: e3 03 13 aa  	mov	x3, x19
   8178c: 17 00 00 94  	bl	0x817e8 <_ZN4core3str16slice_error_fail17hf7d2a92268a53d29E>
   81790: 20 00 20 d4  	brk	#0x1
   81794: e0 03 1f 2a  	mov	w0, wzr
   81798: 02 00 00 14  	b	0x817a0 <_ZN68_$LT$core..fmt..builders..PadAdapter$u20$as$u20$core..fmt..Write$GT$9write_str17h006d11991b68be72E+0x248>
   8179c: 20 00 80 52  	mov	w0, #1
   817a0: f4 4f 44 a9  	ldp	x20, x19, [sp, #64]
   817a4: f6 57 43 a9  	ldp	x22, x21, [sp, #48]
   817a8: f8 5f 42 a9  	ldp	x24, x23, [sp, #32]
   817ac: fa 67 41 a9  	ldp	x26, x25, [sp, #16]
   817b0: fe 6f c5 a8  	ldp	x30, x27, [sp], #80
   817b4: c0 03 5f d6  	ret
   817b8: 04 00 00 d0  	adrp	x4, 0x83000 <_ZN68_$LT$core..fmt..builders..PadAdapter$u20$as$u20$core..fmt..Write$GT$9write_str17h006d11991b68be72E+0x268>
   817bc: 84 00 21 91  	add	x4, x4, #2112
   817c0: e0 03 14 aa  	mov	x0, x20
   817c4: e1 03 13 aa  	mov	x1, x19
   817c8: e2 03 1f aa  	mov	x2, xzr
   817cc: e3 03 17 aa  	mov	x3, x23
   817d0: 06 00 00 94  	bl	0x817e8 <_ZN4core3str16slice_error_fail17hf7d2a92268a53d29E>
   817d4: 20 00 20 d4  	brk	#0x1
   817d8: 02 00 00 d0  	adrp	x2, 0x83000 <_ZN68_$LT$core..fmt..builders..PadAdapter$u20$as$u20$core..fmt..Write$GT$9write_str17h006d11991b68be72E+0x288>
   817dc: 42 a0 20 91  	add	x2, x2, #2088
   817e0: 77 fd ff 97  	bl	0x80dbc <_ZN4core5slice5index26slice_start_index_len_fail17ha5c8a54d8fb05d93E>
   817e4: 20 00 20 d4  	brk	#0x1

00000000000817e8 <_ZN4core3str16slice_error_fail17hf7d2a92268a53d29E>:
   817e8: e2 0f b3 a9  	stp	x2, x3, [sp, #-208]!
   817ec: 3f 04 04 f1  	cmp	x1, #257
   817f0: 22 01 00 54  	b.hs	0x81814 <_ZN4core3str16slice_error_fail17hf7d2a92268a53d29E+0x2c>
   817f4: 09 00 00 d0  	adrp	x9, 0x83000 <_ZN4core3str16slice_error_fail17hf7d2a92268a53d29E+0x14>
   817f8: 29 21 15 91  	add	x9, x9, #1352
   817fc: e8 03 1f aa  	mov	x8, xzr
   81800: e0 07 01 a9  	stp	x0, x1, [sp, #16]
   81804: e9 23 02 a9  	stp	x9, x8, [sp, #32]
   81808: 5f 00 01 eb  	cmp	x2, x1
   8180c: a9 02 00 54  	b.ls	0x81860 <_ZN4core3str16slice_error_fail17hf7d2a92268a53d29E+0x78>
   81810: 2b 00 00 14  	b	0x818bc <_ZN4core3str16slice_error_fail17hf7d2a92268a53d29E+0xd4>
   81814: 08 20 80 52  	mov	w8, #256
   81818: 06 00 00 14  	b	0x81830 <_ZN4core3str16slice_error_fail17hf7d2a92268a53d29E+0x48>
   8181c: 09 68 e8 38  	ldrsb	w9, [x0, x8]
   81820: 3f 05 01 31  	cmn	w9, #65
   81824: 0c 01 00 54  	b.gt	0x81844 <_ZN4core3str16slice_error_fail17hf7d2a92268a53d29E+0x5c>
   81828: 08 05 00 f1  	subs	x8, x8, #1
   8182c: c0 00 00 54  	b.eq	0x81844 <_ZN4core3str16slice_error_fail17hf7d2a92268a53d29E+0x5c>
   81830: 1f 01 01 eb  	cmp	x8, x1
   81834: 43 ff ff 54  	b.lo	0x8181c <_ZN4core3str16slice_error_fail17hf7d2a92268a53d29E+0x34>
   81838: 3f 00 08 eb  	cmp	x1, x8
   8183c: 61 ff ff 54  	b.ne	0x81828 <_ZN4core3str16slice_error_fail17hf7d2a92268a53d29E+0x40>
   81840: e8 03 01 aa  	mov	x8, x1
   81844: e0 23 01 a9  	stp	x0, x8, [sp, #16]
   81848: 08 00 00 d0  	adrp	x8, 0x83000 <_ZN4core3str16slice_error_fail17hf7d2a92268a53d29E+0x68>
   8184c: 09 c1 21 91  	add	x9, x8, #2160
   81850: a8 00 80 52  	mov	w8, #5
   81854: 5f 00 01 eb  	cmp	x2, x1
   81858: e9 23 02 a9  	stp	x9, x8, [sp, #32]
   8185c: 08 03 00 54  	b.hi	0x818bc <_ZN4core3str16slice_error_fail17hf7d2a92268a53d29E+0xd4>
   81860: 7f 00 01 eb  	cmp	x3, x1
   81864: c8 02 00 54  	b.hi	0x818bc <_ZN4core3str16slice_error_fail17hf7d2a92268a53d29E+0xd4>
   81868: 5f 00 03 eb  	cmp	x2, x3
   8186c: 89 05 00 54  	b.ls	0x8191c <_ZN4core3str16slice_error_fail17hf7d2a92268a53d29E+0x134>
   81870: e9 ff ff f0  	adrp	x9, 0x80000 <_ZN4core3str16slice_error_fail17hf7d2a92268a53d29E+0x84>
   81874: e8 03 00 91  	mov	x8, sp
   81878: 29 41 23 91  	add	x9, x9, #2256
   8187c: ec ff ff f0  	adrp	x12, 0x80000 <_ZN4core3str16slice_error_fail17hf7d2a92268a53d29E+0x90>
   81880: 0e 00 00 d0  	adrp	x14, 0x83000 <_ZN4core3str16slice_error_fail17hf7d2a92268a53d29E+0xa0>
   81884: ea 23 00 91  	add	x10, sp, #8
   81888: eb 43 00 91  	add	x11, sp, #16
   8188c: 8c 01 3a 91  	add	x12, x12, #3712
   81890: ed 83 00 91  	add	x13, sp, #32
   81894: ce a1 22 91  	add	x14, x14, #2216
   81898: e8 27 08 a9  	stp	x8, x9, [sp, #128]
   8189c: 88 00 80 52  	mov	w8, #4
   818a0: ea 27 09 a9  	stp	x10, x9, [sp, #144]
   818a4: ff 7f 06 a9  	stp	xzr, xzr, [sp, #96]
   818a8: eb 33 0a a9  	stp	x11, x12, [sp, #160]
   818ac: ed 33 0b a9  	stp	x13, x12, [sp, #176]
   818b0: e9 03 02 91  	add	x9, sp, #128
   818b4: ee 23 05 a9  	stp	x14, x8, [sp, #80]
   818b8: 14 00 00 14  	b	0x81908 <_ZN4core3str16slice_error_fail17hf7d2a92268a53d29E+0x120>
   818bc: e9 ff ff f0  	adrp	x9, 0x80000 <_ZN4core3str16slice_error_fail17hf7d2a92268a53d29E+0xd0>
   818c0: 5f 00 01 eb  	cmp	x2, x1
   818c4: e8 03 01 91  	add	x8, sp, #64
   818c8: 29 41 23 91  	add	x9, x9, #2256
   818cc: eb ff ff f0  	adrp	x11, 0x80000 <_ZN4core3str16slice_error_fail17hf7d2a92268a53d29E+0xe0>
   818d0: 0e 00 00 d0  	adrp	x14, 0x83000 <_ZN4core3str16slice_error_fail17hf7d2a92268a53d29E+0xf0>
   818d4: ea 43 00 91  	add	x10, sp, #16
   818d8: 6b 01 3a 91  	add	x11, x11, #3712
   818dc: ec 83 00 91  	add	x12, sp, #32
   818e0: 4d 80 83 9a  	csel	x13, x2, x3, hi
   818e4: ce e1 21 91  	add	x14, x14, #2168
   818e8: e8 27 08 a9  	stp	x8, x9, [sp, #128]
   818ec: 68 00 80 52  	mov	w8, #3
   818f0: e9 03 02 91  	add	x9, sp, #128
   818f4: ff 7f 06 a9  	stp	xzr, xzr, [sp, #96]
   818f8: ea 2f 09 a9  	stp	x10, x11, [sp, #144]
   818fc: ec 2f 0a a9  	stp	x12, x11, [sp, #160]
   81900: ee 23 05 a9  	stp	x14, x8, [sp, #80]
   81904: ed 23 00 f9  	str	x13, [sp, #64]
   81908: e9 23 07 a9  	stp	x9, x8, [sp, #112]
   8190c: e0 43 01 91  	add	x0, sp, #80
   81910: e1 03 04 aa  	mov	x1, x4
   81914: 4c fc ff 97  	bl	0x80a44 <_ZN4core9panicking9panic_fmt17h548b34a47a4ac578E>
   81918: 20 00 20 d4  	brk	#0x1
   8191c: 82 01 00 b5  	cbnz	x2, 0x8194c <_ZN4core3str16slice_error_fail17hf7d2a92268a53d29E+0x164>
   81920: e3 1b 00 f9  	str	x3, [sp, #48]
   81924: 23 04 00 b5  	cbnz	x3, 0x819a8 <_ZN4core3str16slice_error_fail17hf7d2a92268a53d29E+0x1c0>
   81928: e3 03 1f aa  	mov	x3, xzr
   8192c: 7f 00 01 eb  	cmp	x3, x1
   81930: a1 01 00 54  	b.ne	0x81964 <_ZN4core3str16slice_error_fail17hf7d2a92268a53d29E+0x17c>
   81934: 00 00 00 d0  	adrp	x0, 0x83000 <_ZN4core3str16slice_error_fail17hf7d2a92268a53d29E+0x154>
   81938: 00 a0 23 91  	add	x0, x0, #2280
   8193c: 61 05 80 52  	mov	w1, #43
   81940: e2 03 04 aa  	mov	x2, x4
   81944: 42 fd ff 97  	bl	0x80e4c <_ZN4core9panicking5panic17ha7217054e020f4cfE>
   81948: 20 00 20 d4  	brk	#0x1
   8194c: 5f 00 01 eb  	cmp	x2, x1
   81950: a2 01 00 54  	b.hs	0x81984 <_ZN4core3str16slice_error_fail17hf7d2a92268a53d29E+0x19c>
   81954: 08 68 e2 38  	ldrsb	w8, [x0, x2]
   81958: 1f 05 01 31  	cmn	w8, #65
   8195c: 2c fe ff 54  	b.gt	0x81920 <_ZN4core3str16slice_error_fail17hf7d2a92268a53d29E+0x138>
   81960: 0b 00 00 14  	b	0x8198c <_ZN4core3str16slice_error_fail17hf7d2a92268a53d29E+0x1a4>
   81964: 08 00 03 8b  	add	x8, x0, x3
   81968: eb 03 08 aa  	mov	x11, x8
   8196c: 6a 15 c0 38  	ldrsb	w10, [x11], #1
   81970: 49 1d 00 12  	and	w9, w10, #0xff
   81974: 6a 02 f8 37  	tbnz	w10, #31, 0x819c0 <_ZN4core3str16slice_error_fail17hf7d2a92268a53d29E+0x1d8>
   81978: e9 3f 00 b9  	str	w9, [sp, #60]
   8197c: 28 00 80 52  	mov	w8, #1
   81980: 44 00 00 14  	b	0x81a90 <_ZN4core3str16slice_error_fail17hf7d2a92268a53d29E+0x2a8>
   81984: 3f 00 02 eb  	cmp	x1, x2
   81988: c0 fc ff 54  	b.eq	0x81920 <_ZN4core3str16slice_error_fail17hf7d2a92268a53d29E+0x138>
   8198c: e3 03 02 aa  	mov	x3, x2
   81990: e2 1b 00 f9  	str	x2, [sp, #48]
   81994: 05 00 00 14  	b	0x819a8 <_ZN4core3str16slice_error_fail17hf7d2a92268a53d29E+0x1c0>
   81998: 3f 00 03 eb  	cmp	x1, x3
   8199c: c0 fc ff 54  	b.eq	0x81934 <_ZN4core3str16slice_error_fail17hf7d2a92268a53d29E+0x14c>
   819a0: 63 04 00 f1  	subs	x3, x3, #1
   819a4: 20 fc ff 54  	b.eq	0x81928 <_ZN4core3str16slice_error_fail17hf7d2a92268a53d29E+0x140>
   819a8: 7f 00 01 eb  	cmp	x3, x1
   819ac: 62 ff ff 54  	b.hs	0x81998 <_ZN4core3str16slice_error_fail17hf7d2a92268a53d29E+0x1b0>
   819b0: 08 68 e3 38  	ldrsb	w8, [x0, x3]
   819b4: 1f 01 01 31  	cmn	w8, #64
   819b8: 4b ff ff 54  	b.lt	0x819a0 <_ZN4core3str16slice_error_fail17hf7d2a92268a53d29E+0x1b8>
   819bc: dc ff ff 17  	b	0x8192c <_ZN4core3str16slice_error_fail17hf7d2a92268a53d29E+0x144>
   819c0: 0a 00 01 8b  	add	x10, x0, x1
   819c4: 7f 01 0a eb  	cmp	x11, x10
   819c8: 01 01 00 54  	b.ne	0x819e8 <_ZN4core3str16slice_error_fail17hf7d2a92268a53d29E+0x200>
   819cc: e8 03 1f 2a  	mov	w8, wzr
   819d0: ec 03 0a aa  	mov	x12, x10
   819d4: 3f 7d 03 71  	cmp	w9, #223
   819d8: 2b 11 00 12  	and	w11, w9, #0x1f
   819dc: 28 01 00 54  	b.hi	0x81a00 <_ZN4core3str16slice_error_fail17hf7d2a92268a53d29E+0x218>
   819e0: 68 11 1a 33  	bfi	w8, w11, #6, #5
   819e4: 1f 00 00 14  	b	0x81a60 <_ZN4core3str16slice_error_fail17hf7d2a92268a53d29E+0x278>
   819e8: 0b 05 40 39  	ldrb	w11, [x8, #1]
   819ec: 0c 09 00 91  	add	x12, x8, #2
   819f0: 68 15 00 12  	and	w8, w11, #0x3f
   819f4: 3f 7d 03 71  	cmp	w9, #223
   819f8: 2b 11 00 12  	and	w11, w9, #0x1f
   819fc: 29 ff ff 54  	b.ls	0x819e0 <_ZN4core3str16slice_error_fail17hf7d2a92268a53d29E+0x1f8>
   81a00: 9f 01 0a eb  	cmp	x12, x10
   81a04: 81 00 00 54  	b.ne	0x81a14 <_ZN4core3str16slice_error_fail17hf7d2a92268a53d29E+0x22c>
   81a08: ed 03 1f 2a  	mov	w13, wzr
   81a0c: ec 03 0a aa  	mov	x12, x10
   81a10: 03 00 00 14  	b	0x81a1c <_ZN4core3str16slice_error_fail17hf7d2a92268a53d29E+0x234>
   81a14: 8d 15 40 38  	ldrb	w13, [x12], #1
   81a18: ad 15 00 12  	and	w13, w13, #0x3f
   81a1c: 3f c1 03 71  	cmp	w9, #240
   81a20: 0d 15 1a 33  	bfi	w13, w8, #6, #6
   81a24: a3 00 00 54  	b.lo	0x81a38 <_ZN4core3str16slice_error_fail17hf7d2a92268a53d29E+0x250>
   81a28: 9f 01 0a eb  	cmp	x12, x10
   81a2c: c1 00 00 54  	b.ne	0x81a44 <_ZN4core3str16slice_error_fail17hf7d2a92268a53d29E+0x25c>
   81a30: e8 03 1f 2a  	mov	w8, wzr
   81a34: 06 00 00 14  	b	0x81a4c <_ZN4core3str16slice_error_fail17hf7d2a92268a53d29E+0x264>
   81a38: 6d 11 14 33  	bfi	w13, w11, #12, #5
   81a3c: e8 03 0d 2a  	mov	w8, w13
   81a40: 08 00 00 14  	b	0x81a60 <_ZN4core3str16slice_error_fail17hf7d2a92268a53d29E+0x278>
   81a44: 88 01 40 39  	ldrb	w8, [x12]
   81a48: 08 15 00 12  	and	w8, w8, #0x3f
   81a4c: 69 09 0e 53  	ubfiz	w9, w11, #18, #3
   81a50: a9 2d 1a 33  	bfi	w9, w13, #6, #12
   81a54: 28 01 08 2a  	orr	w8, w9, w8
   81a58: 1f 41 44 71  	cmp	w8, #272, lsl #12
   81a5c: c0 f6 ff 54  	b.eq	0x81934 <_ZN4core3str16slice_error_fail17hf7d2a92268a53d29E+0x14c>
   81a60: 1f 01 02 71  	cmp	w8, #128
   81a64: e8 3f 00 b9  	str	w8, [sp, #60]
   81a68: 62 00 00 54  	b.hs	0x81a74 <_ZN4core3str16slice_error_fail17hf7d2a92268a53d29E+0x28c>
   81a6c: 28 00 80 52  	mov	w8, #1
   81a70: 08 00 00 14  	b	0x81a90 <_ZN4core3str16slice_error_fail17hf7d2a92268a53d29E+0x2a8>
   81a74: 1f 01 20 71  	cmp	w8, #2048
   81a78: 62 00 00 54  	b.hs	0x81a84 <_ZN4core3str16slice_error_fail17hf7d2a92268a53d29E+0x29c>
   81a7c: 48 00 80 52  	mov	w8, #2
   81a80: 04 00 00 14  	b	0x81a90 <_ZN4core3str16slice_error_fail17hf7d2a92268a53d29E+0x2a8>
   81a84: 1f 41 40 71  	cmp	w8, #16, lsl #12
   81a88: 68 00 80 52  	mov	w8, #3
   81a8c: 08 35 88 9a  	cinc	x8, x8, hs
   81a90: 08 01 03 8b  	add	x8, x8, x3
   81a94: ea ff ff f0  	adrp	x10, 0x80000 <_ZN4core3str16slice_error_fail17hf7d2a92268a53d29E+0x2a8>
   81a98: e9 c3 00 91  	add	x9, sp, #48
   81a9c: 4a 41 23 91  	add	x10, x10, #2256
   81aa0: 0c 00 00 90  	adrp	x12, 0x81000 <_ZN4core3str16slice_error_fail17hf7d2a92268a53d29E+0x2b8>
   81aa4: e3 23 04 a9  	stp	x3, x8, [sp, #64]
   81aa8: e8 ff ff f0  	adrp	x8, 0x80000 <_ZN4core3str16slice_error_fail17hf7d2a92268a53d29E+0x2bc>
   81aac: eb f3 00 91  	add	x11, sp, #60
   81ab0: 8c 31 2c 91  	add	x12, x12, #2828
   81ab4: 0e 00 00 90  	adrp	x14, 0x81000 <_ZN4core3str16slice_error_fail17hf7d2a92268a53d29E+0x2cc>
   81ab8: ef 43 00 91  	add	x15, sp, #16
   81abc: 08 01 3a 91  	add	x8, x8, #3712
   81ac0: e9 2b 08 a9  	stp	x9, x10, [sp, #128]
   81ac4: e9 83 00 91  	add	x9, sp, #32
   81ac8: 0a 00 00 d0  	adrp	x10, 0x83000 <_ZN4core3str16slice_error_fail17hf7d2a92268a53d29E+0x2e8>
   81acc: ed 03 01 91  	add	x13, sp, #64
   81ad0: ce 51 34 91  	add	x14, x14, #3348
   81ad4: eb 33 09 a9  	stp	x11, x12, [sp, #144]
   81ad8: 4a 61 24 91  	add	x10, x10, #2328
   81adc: ab 00 80 52  	mov	w11, #5
   81ae0: ef 23 0b a9  	stp	x15, x8, [sp, #176]
   81ae4: e9 23 0c a9  	stp	x9, x8, [sp, #192]
   81ae8: e8 03 02 91  	add	x8, sp, #128
   81aec: ed 3b 0a a9  	stp	x13, x14, [sp, #160]
   81af0: ff 7f 06 a9  	stp	xzr, xzr, [sp, #96]
   81af4: ea 2f 05 a9  	stp	x10, x11, [sp, #80]
   81af8: e8 2f 07 a9  	stp	x8, x11, [sp, #112]
   81afc: e0 43 01 91  	add	x0, sp, #80
   81b00: e1 03 04 aa  	mov	x1, x4
   81b04: d0 fb ff 97  	bl	0x80a44 <_ZN4core9panicking9panic_fmt17h548b34a47a4ac578E>
   81b08: 20 00 20 d4  	brk	#0x1

0000000000081b0c <_ZN41_$LT$char$u20$as$u20$core..fmt..Debug$GT$3fmt17h1eea34d619488d03E>:
   81b0c: ff 83 01 d1  	sub	sp, sp, #96
   81b10: fe 6f 01 a9  	stp	x30, x27, [sp, #16]
   81b14: fa 67 02 a9  	stp	x26, x25, [sp, #32]
   81b18: f8 5f 03 a9  	stp	x24, x23, [sp, #48]
   81b1c: f6 57 04 a9  	stp	x22, x21, [sp, #64]
   81b20: f4 4f 05 a9  	stp	x20, x19, [sp, #80]
   81b24: 33 20 42 a9  	ldp	x19, x8, [x1, #32]
   81b28: f4 03 00 aa  	mov	x20, x0
   81b2c: e1 04 80 52  	mov	w1, #39
   81b30: 02 11 40 f9  	ldr	x2, [x8, #32]
   81b34: e0 03 13 aa  	mov	x0, x19
   81b38: e2 07 00 f9  	str	x2, [sp, #8]
   81b3c: 40 00 3f d6  	blr	x2
   81b40: 20 01 00 36  	tbz	w0, #0, 0x81b64 <_ZN41_$LT$char$u20$as$u20$core..fmt..Debug$GT$3fmt17h1eea34d619488d03E+0x58>
   81b44: f4 4f 45 a9  	ldp	x20, x19, [sp, #80]
   81b48: f6 57 44 a9  	ldp	x22, x21, [sp, #64]
   81b4c: f8 5f 43 a9  	ldp	x24, x23, [sp, #48]
   81b50: fa 67 42 a9  	ldp	x26, x25, [sp, #32]
   81b54: fe 6f 41 a9  	ldp	x30, x27, [sp, #16]
   81b58: 20 00 80 52  	mov	w0, #1
   81b5c: ff 83 01 91  	add	sp, sp, #96
   81b60: c0 03 5f d6  	ret
   81b64: 94 02 40 b9  	ldr	w20, [x20]
   81b68: 88 26 00 51  	sub	w8, w20, #9
   81b6c: 1f 79 00 71  	cmp	w8, #30
   81b70: 88 01 00 54  	b.hi	0x81ba0 <_ZN41_$LT$char$u20$as$u20$core..fmt..Debug$GT$3fmt17h1eea34d619488d03E+0x94>
   81b74: 09 00 00 d0  	adrp	x9, 0x83000 <_ZN41_$LT$char$u20$as$u20$core..fmt..Debug$GT$3fmt17h1eea34d619488d03E+0x70>
   81b78: 29 41 0d 91  	add	x9, x9, #848
   81b7c: ca 00 00 10  	adr	x10, #24
   81b80: 2b 69 68 38  	ldrb	w11, [x9, x8]
   81b84: 4a 09 0b 8b  	add	x10, x10, x11, lsl #2
   81b88: 95 0e 80 52  	mov	w21, #116
   81b8c: 58 00 80 52  	mov	w24, #2
   81b90: 40 01 1f d6  	br	x10
   81b94: d5 0d 80 52  	mov	w21, #110
   81b98: 58 00 80 52  	mov	w24, #2
   81b9c: 1a 00 00 14  	b	0x81c04 <_ZN41_$LT$char$u20$as$u20$core..fmt..Debug$GT$3fmt17h1eea34d619488d03E+0xf8>
   81ba0: 9f 72 01 71  	cmp	w20, #92
   81ba4: 81 00 00 54  	b.ne	0x81bb4 <_ZN41_$LT$char$u20$as$u20$core..fmt..Debug$GT$3fmt17h1eea34d619488d03E+0xa8>
   81ba8: 58 00 80 52  	mov	w24, #2
   81bac: f5 03 14 2a  	mov	w21, w20
   81bb0: 15 00 00 14  	b	0x81c04 <_ZN41_$LT$char$u20$as$u20$core..fmt..Debug$GT$3fmt17h1eea34d619488d03E+0xf8>
   81bb4: e0 03 14 2a  	mov	w0, w20
   81bb8: 0b 01 00 94  	bl	0x81fe4 <_ZN4core7unicode12unicode_data15grapheme_extend6lookup17h0525d17e88c4ad5eE>
   81bbc: 40 01 00 37  	tbnz	w0, #0, 0x81be4 <_ZN41_$LT$char$u20$as$u20$core..fmt..Debug$GT$3fmt17h1eea34d619488d03E+0xd8>
   81bc0: e0 03 14 2a  	mov	w0, w20
   81bc4: 56 01 00 94  	bl	0x8211c <_ZN4core7unicode9printable12is_printable17h809bc46350007ff2E>
   81bc8: e0 00 00 36  	tbz	w0, #0, 0x81be4 <_ZN41_$LT$char$u20$as$u20$core..fmt..Debug$GT$3fmt17h1eea34d619488d03E+0xd8>
   81bcc: 38 00 80 52  	mov	w24, #1
   81bd0: f5 03 14 2a  	mov	w21, w20
   81bd4: 0c 00 00 14  	b	0x81c04 <_ZN41_$LT$char$u20$as$u20$core..fmt..Debug$GT$3fmt17h1eea34d619488d03E+0xf8>
   81bd8: 55 0e 80 52  	mov	w21, #114
   81bdc: 58 00 80 52  	mov	w24, #2
   81be0: 09 00 00 14  	b	0x81c04 <_ZN41_$LT$char$u20$as$u20$core..fmt..Debug$GT$3fmt17h1eea34d619488d03E+0xf8>
   81be4: 88 02 00 32  	orr	w8, w20, #0x1
   81be8: 08 11 c0 5a  	clz	w8, w8
   81bec: e9 03 14 2a  	mov	w9, w20
   81bf0: aa 00 c0 d2  	mov	x10, #21474836480
   81bf4: 08 7d 02 53  	lsr	w8, w8, #2
   81bf8: 37 01 0a aa  	orr	x23, x9, x10
   81bfc: 16 09 00 52  	eor	w22, w8, #0x7
   81c00: 78 00 80 52  	mov	w24, #3
   81c04: 14 00 00 d0  	adrp	x20, 0x83000 <_ZN41_$LT$char$u20$as$u20$core..fmt..Debug$GT$3fmt17h1eea34d619488d03E+0x100>
   81c08: 19 00 00 d0  	adrp	x25, 0x83000 <_ZN41_$LT$char$u20$as$u20$core..fmt..Debug$GT$3fmt17h1eea34d619488d03E+0x104>
   81c0c: 94 be 0d 91  	add	x20, x20, #879
   81c10: 39 cf 0d 91  	add	x25, x25, #883
   81c14: fa 0a 80 52  	mov	w26, #87
   81c18: 1b 06 80 52  	mov	w27, #48
   81c1c: 07 00 00 14  	b	0x81c38 <_ZN41_$LT$char$u20$as$u20$core..fmt..Debug$GT$3fmt17h1eea34d619488d03E+0x12c>
   81c20: f8 03 1f 2a  	mov	w24, wzr
   81c24: e1 03 15 2a  	mov	w1, w21
   81c28: e2 07 40 f9  	ldr	x2, [sp, #8]
   81c2c: e0 03 13 aa  	mov	x0, x19
   81c30: 40 00 3f d6  	blr	x2
   81c34: 80 f8 07 37  	tbnz	w0, #0, 0x81b44 <_ZN41_$LT$char$u20$as$u20$core..fmt..Debug$GT$3fmt17h1eea34d619488d03E+0x38>
   81c38: e8 03 18 2a  	mov	w8, w24
   81c3c: 29 ff ff 10  	adr	x9, #-28
   81c40: 8a 6a 68 38  	ldrb	w10, [x20, x8]
   81c44: 29 09 0a 8b  	add	x9, x9, x10, lsl #2
   81c48: 38 00 80 52  	mov	w24, #1
   81c4c: 81 0b 80 52  	mov	w1, #92
   81c50: 20 01 1f d6  	br	x9
   81c54: e8 9e 60 d3  	ubfx	x8, x23, #32, #8
   81c58: 89 00 00 10  	adr	x9, #16
   81c5c: 2a 6b 68 38  	ldrb	w10, [x25, x8]
   81c60: 29 09 0a 8b  	add	x9, x9, x10, lsl #2
   81c64: 20 01 1f d6  	br	x9
   81c68: f7 de 58 92  	and	x23, x23, #0xffffff00ffffffff
   81c6c: 78 00 80 52  	mov	w24, #3
   81c70: a1 0f 80 52  	mov	w1, #125
   81c74: ed ff ff 17  	b	0x81c28 <_ZN41_$LT$char$u20$as$u20$core..fmt..Debug$GT$3fmt17h1eea34d619488d03E+0x11c>
   81c78: c8 0a 1e 53  	ubfiz	w8, w22, #2, #3
   81c7c: e8 26 c8 1a  	lsr	w8, w23, w8
   81c80: 08 0d 00 12  	and	w8, w8, #0xf
   81c84: 1f 29 00 71  	cmp	w8, #10
   81c88: 69 33 9a 1a  	csel	w9, w27, w26, lo
   81c8c: 21 01 08 0b  	add	w1, w9, w8
   81c90: 76 02 00 b4  	cbz	x22, 0x81cdc <_ZN41_$LT$char$u20$as$u20$core..fmt..Debug$GT$3fmt17h1eea34d619488d03E+0x1d0>
   81c94: d6 06 00 d1  	sub	x22, x22, #1
   81c98: 78 00 80 52  	mov	w24, #3
   81c9c: e3 ff ff 17  	b	0x81c28 <_ZN41_$LT$char$u20$as$u20$core..fmt..Debug$GT$3fmt17h1eea34d619488d03E+0x11c>
   81ca0: e8 de 58 92  	and	x8, x23, #0xffffff00ffffffff
   81ca4: 78 00 80 52  	mov	w24, #3
   81ca8: 17 01 5f b2  	orr	x23, x8, #0x200000000
   81cac: 61 0f 80 52  	mov	w1, #123
   81cb0: de ff ff 17  	b	0x81c28 <_ZN41_$LT$char$u20$as$u20$core..fmt..Debug$GT$3fmt17h1eea34d619488d03E+0x11c>
   81cb4: e8 de 58 92  	and	x8, x23, #0xffffff00ffffffff
   81cb8: 78 00 80 52  	mov	w24, #3
   81cbc: 17 05 60 b2  	orr	x23, x8, #0x300000000
   81cc0: a1 0e 80 52  	mov	w1, #117
   81cc4: d9 ff ff 17  	b	0x81c28 <_ZN41_$LT$char$u20$as$u20$core..fmt..Debug$GT$3fmt17h1eea34d619488d03E+0x11c>
   81cc8: e8 de 58 92  	and	x8, x23, #0xffffff00ffffffff
   81ccc: 78 00 80 52  	mov	w24, #3
   81cd0: 17 01 5e b2  	orr	x23, x8, #0x400000000
   81cd4: 81 0b 80 52  	mov	w1, #92
   81cd8: d4 ff ff 17  	b	0x81c28 <_ZN41_$LT$char$u20$as$u20$core..fmt..Debug$GT$3fmt17h1eea34d619488d03E+0x11c>
   81cdc: e8 de 58 92  	and	x8, x23, #0xffffff00ffffffff
   81ce0: 17 01 60 b2  	orr	x23, x8, #0x100000000
   81ce4: 78 00 80 52  	mov	w24, #3
   81ce8: d0 ff ff 17  	b	0x81c28 <_ZN41_$LT$char$u20$as$u20$core..fmt..Debug$GT$3fmt17h1eea34d619488d03E+0x11c>
   81cec: e0 03 13 aa  	mov	x0, x19
   81cf0: e2 07 40 f9  	ldr	x2, [sp, #8]
   81cf4: f4 4f 45 a9  	ldp	x20, x19, [sp, #80]
   81cf8: f6 57 44 a9  	ldp	x22, x21, [sp, #64]
   81cfc: f8 5f 43 a9  	ldp	x24, x23, [sp, #48]
   81d00: fa 67 42 a9  	ldp	x26, x25, [sp, #32]
   81d04: fe 6f 41 a9  	ldp	x30, x27, [sp, #16]
   81d08: e1 04 80 52  	mov	w1, #39
   81d0c: ff 83 01 91  	add	sp, sp, #96
   81d10: 40 00 1f d6  	br	x2

0000000000081d14 <_ZN71_$LT$core..ops..range..Range$LT$Idx$GT$$u20$as$u20$core..fmt..Debug$GT$3fmt17h38324d94ece27e25E>:
   81d14: ff 43 01 d1  	sub	sp, sp, #80
   81d18: fe 1b 00 f9  	str	x30, [sp, #48]
   81d1c: f4 4f 04 a9  	stp	x20, x19, [sp, #64]
   81d20: f4 03 00 aa  	mov	x20, x0
   81d24: 00 00 40 f9  	ldr	x0, [x0]
   81d28: f3 03 01 aa  	mov	x19, x1
   81d2c: 19 00 00 94  	bl	0x81d90 <_ZN4core3fmt3num52_$LT$impl$u20$core..fmt..Debug$u20$for$u20$usize$GT$3fmt17h420029119b997121E>
   81d30: a0 01 00 37  	tbnz	w0, #0, 0x81d64 <_ZN71_$LT$core..ops..range..Range$LT$Idx$GT$$u20$as$u20$core..fmt..Debug$GT$3fmt17h38324d94ece27e25E+0x50>
   81d34: 60 06 42 a9  	ldp	x0, x1, [x19, #32]
   81d38: 08 00 00 d0  	adrp	x8, 0x83000 <_ZN71_$LT$core..ops..range..Range$LT$Idx$GT$$u20$as$u20$core..fmt..Debug$GT$3fmt17h38324d94ece27e25E+0x2c>
   81d3c: 08 21 1f 91  	add	x8, x8, #1992
   81d40: 29 00 80 52  	mov	w9, #1
   81d44: e8 27 00 a9  	stp	x8, x9, [sp]
   81d48: 08 00 00 d0  	adrp	x8, 0x83000 <_ZN71_$LT$core..ops..range..Range$LT$Idx$GT$$u20$as$u20$core..fmt..Debug$GT$3fmt17h38324d94ece27e25E+0x3c>
   81d4c: 08 21 15 91  	add	x8, x8, #1352
   81d50: e2 03 00 91  	mov	x2, sp
   81d54: ff 7f 01 a9  	stp	xzr, xzr, [sp, #16]
   81d58: e8 7f 02 a9  	stp	x8, xzr, [sp, #32]
   81d5c: 55 fd ff 97  	bl	0x812b0 <_ZN4core3fmt5write17h4089dd81629a8d2eE>
   81d60: c0 00 00 34  	cbz	w0, 0x81d78 <_ZN71_$LT$core..ops..range..Range$LT$Idx$GT$$u20$as$u20$core..fmt..Debug$GT$3fmt17h38324d94ece27e25E+0x64>
   81d64: f4 4f 44 a9  	ldp	x20, x19, [sp, #64]
   81d68: fe 1b 40 f9  	ldr	x30, [sp, #48]
   81d6c: 20 00 80 52  	mov	w0, #1
   81d70: ff 43 01 91  	add	sp, sp, #80
   81d74: c0 03 5f d6  	ret
   81d78: 80 06 40 f9  	ldr	x0, [x20, #8]
   81d7c: e1 03 13 aa  	mov	x1, x19
   81d80: f4 4f 44 a9  	ldp	x20, x19, [sp, #64]
   81d84: fe 1b 40 f9  	ldr	x30, [sp, #48]
   81d88: ff 43 01 91  	add	sp, sp, #80
   81d8c: 01 00 00 14  	b	0x81d90 <_ZN4core3fmt3num52_$LT$impl$u20$core..fmt..Debug$u20$for$u20$usize$GT$3fmt17h420029119b997121E>

0000000000081d90 <_ZN4core3fmt3num52_$LT$impl$u20$core..fmt..Debug$u20$for$u20$usize$GT$3fmt17h420029119b997121E>:
   81d90: ff 43 02 d1  	sub	sp, sp, #144
   81d94: fe 43 00 f9  	str	x30, [sp, #128]
   81d98: 28 30 40 b9  	ldr	w8, [x1, #48]
   81d9c: a8 05 20 37  	tbnz	w8, #4, 0x81e50 <_ZN4core3fmt3num52_$LT$impl$u20$core..fmt..Debug$u20$for$u20$usize$GT$3fmt17h420029119b997121E+0xc0>
   81da0: 68 07 28 37  	tbnz	w8, #5, 0x81e8c <_ZN4core3fmt3num52_$LT$impl$u20$core..fmt..Debug$u20$for$u20$usize$GT$3fmt17h420029119b997121E+0xfc>
   81da4: 08 fc 44 d3  	lsr	x8, x0, #4
   81da8: 1f c5 09 f1  	cmp	x8, #625
   81dac: c3 0a 00 54  	b.lo	0x81f04 <_ZN4core3fmt3num52_$LT$impl$u20$core..fmt..Debug$u20$for$u20$usize$GT$3fmt17h420029119b997121E+0x174>
   81db0: 69 29 8b d2  	mov	x9, #22859
   81db4: c9 10 a7 f2  	movk	x9, #14470, lsl #16
   81db8: c9 ba d8 f2  	movk	x9, #50646, lsl #32
   81dbc: eb a3 90 52  	mov	w11, #34079
   81dc0: 0d 00 00 d0  	adrp	x13, 0x83000 <_ZN4core3fmt3num52_$LT$impl$u20$core..fmt..Debug$u20$for$u20$usize$GT$3fmt17h420029119b997121E+0x38>
   81dc4: ef 1f 9c 52  	mov	w15, #57599
   81dc8: e8 03 1f aa  	mov	x8, xzr
   81dcc: a9 8d e6 f2  	movk	x9, #13421, lsl #48
   81dd0: ea e1 84 12  	mov	w10, #-10000
   81dd4: 6b 3d aa 72  	movk	w11, #20971, lsl #16
   81dd8: 6c 0c 80 12  	mov	w12, #-100
   81ddc: ad 69 17 91  	add	x13, x13, #1498
   81de0: ee 03 00 91  	mov	x14, sp
   81de4: af be a0 72  	movk	w15, #1525, lsl #16
   81de8: 11 7c c9 9b  	umulh	x17, x0, x9
   81dec: f0 03 00 aa  	mov	x16, x0
   81df0: 1f 00 0f eb  	cmp	x0, x15
   81df4: 20 fe 4b d3  	lsr	x0, x17, #11
   81df8: 10 40 0a 1b  	madd	w16, w0, w10, w16
   81dfc: 11 3e 00 12  	and	w17, w16, #0xffff
   81e00: 31 7e ab 9b  	umull	x17, w17, w11
   81e04: 31 fe 65 d3  	lsr	x17, x17, #37
   81e08: 30 42 0c 1b  	madd	w16, w17, w12, w16
   81e0c: b1 05 11 8b  	add	x17, x13, x17, lsl #1
   81e10: b0 25 30 8b  	add	x16, x13, w16, uxth #1
   81e14: 22 02 40 39  	ldrb	w2, [x17]
   81e18: 31 06 40 39  	ldrb	w17, [x17, #1]
   81e1c: 03 06 40 39  	ldrb	w3, [x16, #1]
   81e20: 10 02 40 39  	ldrb	w16, [x16]
   81e24: d2 01 08 8b  	add	x18, x14, x8
   81e28: 08 11 00 d1  	sub	x8, x8, #4
   81e2c: 51 92 00 39  	strb	w17, [x18, #36]
   81e30: 42 8e 00 39  	strb	w2, [x18, #35]
   81e34: 43 9a 00 39  	strb	w3, [x18, #38]
   81e38: 50 96 00 39  	strb	w16, [x18, #37]
   81e3c: 68 fd ff 54  	b.hi	0x81de8 <_ZN4core3fmt3num52_$LT$impl$u20$core..fmt..Debug$u20$for$u20$usize$GT$3fmt17h420029119b997121E+0x58>
   81e40: 08 9d 00 91  	add	x8, x8, #39
   81e44: 1f 8c 01 f1  	cmp	x0, #99
   81e48: 4c 06 00 54  	b.gt	0x81f10 <_ZN4core3fmt3num52_$LT$impl$u20$core..fmt..Debug$u20$for$u20$usize$GT$3fmt17h420029119b997121E+0x180>
   81e4c: 43 00 00 14  	b	0x81f58 <_ZN4core3fmt3num52_$LT$impl$u20$core..fmt..Debug$u20$for$u20$usize$GT$3fmt17h420029119b997121E+0x1c8>
   81e50: e8 03 1f aa  	mov	x8, xzr
   81e54: e9 03 00 91  	mov	x9, sp
   81e58: 0c 0c 00 12  	and	w12, w0, #0xf
   81e5c: 0d 06 80 52  	mov	w13, #48
   81e60: 0b fc 44 d3  	lsr	x11, x0, #4
   81e64: 0d 0c 00 33  	bfxil	w13, w0, #0, #4
   81e68: 8e 5d 01 11  	add	w14, w12, #87
   81e6c: 9f 29 00 71  	cmp	w12, #10
   81e70: 2a 01 08 8b  	add	x10, x9, x8
   81e74: ac 31 8e 1a  	csel	w12, w13, w14, lo
   81e78: 08 05 00 d1  	sub	x8, x8, #1
   81e7c: e0 03 0b aa  	mov	x0, x11
   81e80: 4c fd 01 39  	strb	w12, [x10, #127]
   81e84: ab fe ff b5  	cbnz	x11, 0x81e58 <_ZN4core3fmt3num52_$LT$impl$u20$core..fmt..Debug$u20$for$u20$usize$GT$3fmt17h420029119b997121E+0xc8>
   81e88: 0f 00 00 14  	b	0x81ec4 <_ZN4core3fmt3num52_$LT$impl$u20$core..fmt..Debug$u20$for$u20$usize$GT$3fmt17h420029119b997121E+0x134>
   81e8c: e8 03 1f aa  	mov	x8, xzr
   81e90: e9 03 00 91  	mov	x9, sp
   81e94: 0c 0c 00 12  	and	w12, w0, #0xf
   81e98: 0d 06 80 52  	mov	w13, #48
   81e9c: 0b fc 44 d3  	lsr	x11, x0, #4
   81ea0: 0d 0c 00 33  	bfxil	w13, w0, #0, #4
   81ea4: 8e dd 00 11  	add	w14, w12, #55
   81ea8: 9f 29 00 71  	cmp	w12, #10
   81eac: 2a 01 08 8b  	add	x10, x9, x8
   81eb0: ac 31 8e 1a  	csel	w12, w13, w14, lo
   81eb4: 08 05 00 d1  	sub	x8, x8, #1
   81eb8: e0 03 0b aa  	mov	x0, x11
   81ebc: 4c fd 01 39  	strb	w12, [x10, #127]
   81ec0: ab fe ff b5  	cbnz	x11, 0x81e94 <_ZN4core3fmt3num52_$LT$impl$u20$core..fmt..Debug$u20$for$u20$usize$GT$3fmt17h420029119b997121E+0x104>
   81ec4: 00 01 02 91  	add	x0, x8, #128
   81ec8: 1f 04 02 f1  	cmp	x0, #129
   81ecc: 22 08 00 54  	b.hs	0x81fd0 <_ZN4core3fmt3num52_$LT$impl$u20$core..fmt..Debug$u20$for$u20$usize$GT$3fmt17h420029119b997121E+0x240>
   81ed0: e9 03 00 91  	mov	x9, sp
   81ed4: e4 03 08 cb  	neg	x4, x8
   81ed8: 28 01 08 8b  	add	x8, x9, x8
   81edc: 03 01 02 91  	add	x3, x8, #128
   81ee0: 08 00 00 d0  	adrp	x8, 0x83000 <_ZN4core3fmt3num52_$LT$impl$u20$core..fmt..Debug$u20$for$u20$usize$GT$3fmt17h420029119b997121E+0x158>
   81ee4: 08 81 1d 91  	add	x8, x8, #1888
   81ee8: 42 00 80 52  	mov	w2, #2
   81eec: e0 03 01 aa  	mov	x0, x1
   81ef0: e1 03 08 aa  	mov	x1, x8
   81ef4: e3 fa ff 97  	bl	0x80a80 <_ZN4core3fmt9Formatter12pad_integral17h4be5fae25bf478d6E>
   81ef8: fe 43 40 f9  	ldr	x30, [sp, #128]
   81efc: ff 43 02 91  	add	sp, sp, #144
   81f00: c0 03 5f d6  	ret
   81f04: e8 04 80 52  	mov	w8, #39
   81f08: 1f 8c 01 f1  	cmp	x0, #99
   81f0c: 6d 02 00 54  	b.le	0x81f58 <_ZN4core3fmt3num52_$LT$impl$u20$core..fmt..Debug$u20$for$u20$usize$GT$3fmt17h420029119b997121E+0x1c8>
   81f10: ea a3 90 52  	mov	w10, #34079
   81f14: 09 3c 00 12  	and	w9, w0, #0xffff
   81f18: 6a 3d aa 72  	movk	w10, #20971, lsl #16
   81f1c: 29 7d aa 9b  	umull	x9, w9, w10
   81f20: 6b 0c 80 12  	mov	w11, #-100
   81f24: 0a 00 00 d0  	adrp	x10, 0x83000 <_ZN4core3fmt3num52_$LT$impl$u20$core..fmt..Debug$u20$for$u20$usize$GT$3fmt17h420029119b997121E+0x19c>
   81f28: 29 fd 65 d3  	lsr	x9, x9, #37
   81f2c: 4a 69 17 91  	add	x10, x10, #1498
   81f30: 2b 01 0b 1b  	madd	w11, w9, w11, w0
   81f34: 4a 25 2b 8b  	add	x10, x10, w11, uxth #1
   81f38: 4b 05 40 39  	ldrb	w11, [x10, #1]
   81f3c: 4a 01 40 39  	ldrb	w10, [x10]
   81f40: 08 09 00 d1  	sub	x8, x8, #2
   81f44: ec 03 00 91  	mov	x12, sp
   81f48: 8c 01 08 8b  	add	x12, x12, x8
   81f4c: e0 03 09 aa  	mov	x0, x9
   81f50: 8b 05 00 39  	strb	w11, [x12, #1]
   81f54: 8a 01 00 39  	strb	w10, [x12]
   81f58: 1f 28 00 f1  	cmp	x0, #10
   81f5c: ca 00 00 54  	b.ge	0x81f74 <_ZN4core3fmt3num52_$LT$impl$u20$core..fmt..Debug$u20$for$u20$usize$GT$3fmt17h420029119b997121E+0x1e4>
   81f60: 08 05 00 d1  	sub	x8, x8, #1
   81f64: 09 c0 00 11  	add	w9, w0, #48
   81f68: ea 03 00 91  	mov	x10, sp
   81f6c: 49 69 28 38  	strb	w9, [x10, x8]
   81f70: 0b 00 00 14  	b	0x81f9c <_ZN4core3fmt3num52_$LT$impl$u20$core..fmt..Debug$u20$for$u20$usize$GT$3fmt17h420029119b997121E+0x20c>
   81f74: 09 00 00 d0  	adrp	x9, 0x83000 <_ZN4core3fmt3num52_$LT$impl$u20$core..fmt..Debug$u20$for$u20$usize$GT$3fmt17h420029119b997121E+0x1ec>
   81f78: 29 69 17 91  	add	x9, x9, #1498
   81f7c: 29 05 00 8b  	add	x9, x9, x0, lsl #1
   81f80: 2a 05 40 39  	ldrb	w10, [x9, #1]
   81f84: 29 01 40 39  	ldrb	w9, [x9]
   81f88: 08 09 00 d1  	sub	x8, x8, #2
   81f8c: eb 03 00 91  	mov	x11, sp
   81f90: 6b 01 08 8b  	add	x11, x11, x8
   81f94: 6a 05 00 39  	strb	w10, [x11, #1]
   81f98: 69 01 00 39  	strb	w9, [x11]
   81f9c: e9 03 00 91  	mov	x9, sp
   81fa0: ea 04 80 52  	mov	w10, #39
   81fa4: 23 01 08 8b  	add	x3, x9, x8
   81fa8: 44 01 08 cb  	sub	x4, x10, x8
   81fac: 08 00 00 d0  	adrp	x8, 0x83000 <_ZN4core3fmt3num52_$LT$impl$u20$core..fmt..Debug$u20$for$u20$usize$GT$3fmt17h420029119b997121E+0x224>
   81fb0: 08 21 15 91  	add	x8, x8, #1352
   81fb4: e0 03 01 aa  	mov	x0, x1
   81fb8: e1 03 08 aa  	mov	x1, x8
   81fbc: e2 03 1f aa  	mov	x2, xzr
   81fc0: b0 fa ff 97  	bl	0x80a80 <_ZN4core3fmt9Formatter12pad_integral17h4be5fae25bf478d6E>
   81fc4: fe 43 40 f9  	ldr	x30, [sp, #128]
   81fc8: ff 43 02 91  	add	sp, sp, #144
   81fcc: c0 03 5f d6  	ret
   81fd0: 02 00 00 d0  	adrp	x2, 0x83000 <_ZN4core3fmt3num52_$LT$impl$u20$core..fmt..Debug$u20$for$u20$usize$GT$3fmt17h420029119b997121E+0x248>
   81fd4: 42 20 1d 91  	add	x2, x2, #1864
   81fd8: 01 10 80 52  	mov	w1, #128
   81fdc: 78 fb ff 97  	bl	0x80dbc <_ZN4core5slice5index26slice_start_index_len_fail17ha5c8a54d8fb05d93E>
   81fe0: 20 00 20 d4  	brk	#0x1

0000000000081fe4 <_ZN4core7unicode12unicode_data15grapheme_extend6lookup17h0525d17e88c4ad5eE>:
   81fe4: 0a 00 00 d0  	adrp	x10, 0x83000 <_ZN4core7unicode12unicode_data15grapheme_extend6lookup17h0525d17e88c4ad5eE+0x8>
   81fe8: e8 03 1f aa  	mov	x8, xzr
   81fec: 09 50 15 53  	lsl	w9, w0, #11
   81ff0: ec 03 80 52  	mov	w12, #31
   81ff4: 4a 71 3d 91  	add	x10, x10, #3932
   81ff8: eb 03 80 52  	mov	w11, #31
   81ffc: 04 00 00 14  	b	0x8200c <_ZN4core7unicode12unicode_data15grapheme_extend6lookup17h0525d17e88c4ad5eE+0x28>
   82000: 88 05 00 91  	add	x8, x12, #1
   82004: 6c 01 08 eb  	subs	x12, x11, x8
   82008: 29 01 00 54  	b.ls	0x8202c <_ZN4core7unicode12unicode_data15grapheme_extend6lookup17h0525d17e88c4ad5eE+0x48>
   8200c: 0c 05 4c 8b  	add	x12, x8, x12, lsr #1
   82010: 4d 79 6c b8  	ldr	w13, [x10, x12, lsl #2]
   82014: ad 51 15 53  	lsl	w13, w13, #11
   82018: bf 01 09 6b  	cmp	w13, w9
   8201c: 23 ff ff 54  	b.lo	0x82000 <_ZN4core7unicode12unicode_data15grapheme_extend6lookup17h0525d17e88c4ad5eE+0x1c>
   82020: eb 03 0c aa  	mov	x11, x12
   82024: 01 ff ff 54  	b.ne	0x82004 <_ZN4core7unicode12unicode_data15grapheme_extend6lookup17h0525d17e88c4ad5eE+0x20>
   82028: 88 05 00 91  	add	x8, x12, #1
   8202c: 1f 79 00 f1  	cmp	x8, #30
   82030: e8 05 00 54  	b.hi	0x820ec <_ZN4core7unicode12unicode_data15grapheme_extend6lookup17h0525d17e88c4ad5eE+0x108>
   82034: 1f 79 00 f1  	cmp	x8, #30
   82038: 21 01 00 54  	b.ne	0x8205c <_ZN4core7unicode12unicode_data15grapheme_extend6lookup17h0525d17e88c4ad5eE+0x78>
   8203c: 2b 56 80 52  	mov	w11, #689
   82040: 09 05 00 f1  	subs	x9, x8, #1
   82044: 63 01 00 54  	b.lo	0x82070 <_ZN4core7unicode12unicode_data15grapheme_extend6lookup17h0525d17e88c4ad5eE+0x8c>
   82048: 3f 7d 00 f1  	cmp	x9, #31
   8204c: c2 05 00 54  	b.hs	0x82104 <_ZN4core7unicode12unicode_data15grapheme_extend6lookup17h0525d17e88c4ad5eE+0x120>
   82050: 49 79 69 b8  	ldr	w9, [x10, x9, lsl #2]
   82054: 2c 51 00 12  	and	w12, w9, #0x1fffff
   82058: 07 00 00 14  	b	0x82074 <_ZN4core7unicode12unicode_data15grapheme_extend6lookup17h0525d17e88c4ad5eE+0x90>
   8205c: 49 09 08 8b  	add	x9, x10, x8, lsl #2
   82060: 29 05 40 b9  	ldr	w9, [x9, #4]
   82064: 2b fd 55 d3  	lsr	x11, x9, #21
   82068: 09 05 00 f1  	subs	x9, x8, #1
   8206c: e2 fe ff 54  	b.hs	0x82048 <_ZN4core7unicode12unicode_data15grapheme_extend6lookup17h0525d17e88c4ad5eE+0x64>
   82070: ec 03 1f 2a  	mov	w12, wzr
   82074: 48 79 68 b8  	ldr	w8, [x10, x8, lsl #2]
   82078: 08 fd 55 d3  	lsr	x8, x8, #21
   8207c: 09 05 00 91  	add	x9, x8, #1
   82080: 7f 01 09 eb  	cmp	x11, x9
   82084: 60 02 00 54  	b.eq	0x820d0 <_ZN4core7unicode12unicode_data15grapheme_extend6lookup17h0525d17e88c4ad5eE+0xec>
   82088: 0a 00 0c 4b  	sub	w10, w0, w12
   8208c: 1f c5 0a f1  	cmp	x8, #689
   82090: 2c 56 80 52  	mov	w12, #689
   82094: 00 81 8c 9a  	csel	x0, x8, x12, hi
   82098: 0c 00 00 d0  	adrp	x12, 0x84000 <_ZN4core7unicode12unicode_data15grapheme_extend6lookup17h0525d17e88c4ad5eE+0xbc>
   8209c: e9 03 1f 2a  	mov	w9, wzr
   820a0: 6b 05 00 d1  	sub	x11, x11, #1
   820a4: 8c 21 00 91  	add	x12, x12, #8
   820a8: 1f 00 08 eb  	cmp	x0, x8
   820ac: 60 01 00 54  	b.eq	0x820d8 <_ZN4core7unicode12unicode_data15grapheme_extend6lookup17h0525d17e88c4ad5eE+0xf4>
   820b0: 8d 69 68 38  	ldrb	w13, [x12, x8]
   820b4: 29 01 0d 0b  	add	w9, w9, w13
   820b8: 3f 01 0a 6b  	cmp	w9, w10
   820bc: a8 00 00 54  	b.hi	0x820d0 <_ZN4core7unicode12unicode_data15grapheme_extend6lookup17h0525d17e88c4ad5eE+0xec>
   820c0: 08 05 00 91  	add	x8, x8, #1
   820c4: 7f 01 08 eb  	cmp	x11, x8
   820c8: 01 ff ff 54  	b.ne	0x820a8 <_ZN4core7unicode12unicode_data15grapheme_extend6lookup17h0525d17e88c4ad5eE+0xc4>
   820cc: e8 03 0b aa  	mov	x8, x11
   820d0: 00 01 00 12  	and	w0, w8, #0x1
   820d4: c0 03 5f d6  	ret
   820d8: 02 00 00 d0  	adrp	x2, 0x84000 <_ZN4core7unicode12unicode_data15grapheme_extend6lookup17h0525d17e88c4ad5eE+0xfc>
   820dc: 42 00 0b 91  	add	x2, x2, #704
   820e0: 21 56 80 52  	mov	w1, #689
   820e4: e9 f9 ff 97  	bl	0x80888 <_ZN4core9panicking18panic_bounds_check17h21e59d1a29014f09E>
   820e8: 20 00 20 d4  	brk	#0x1
   820ec: 02 00 00 b0  	adrp	x2, 0x83000 <_ZN4core7unicode12unicode_data15grapheme_extend6lookup17h0525d17e88c4ad5eE+0x10c>
   820f0: 42 60 3f 91  	add	x2, x2, #4056
   820f4: e1 03 80 52  	mov	w1, #31
   820f8: e0 03 08 aa  	mov	x0, x8
   820fc: e3 f9 ff 97  	bl	0x80888 <_ZN4core9panicking18panic_bounds_check17h21e59d1a29014f09E>
   82100: 20 00 20 d4  	brk	#0x1
   82104: 02 00 00 b0  	adrp	x2, 0x83000 <_ZN4core7unicode12unicode_data15grapheme_extend6lookup17h0525d17e88c4ad5eE+0x124>
   82108: 42 c0 3f 91  	add	x2, x2, #4080
   8210c: e1 03 80 52  	mov	w1, #31
   82110: e0 03 09 aa  	mov	x0, x9
   82114: dd f9 ff 97  	bl	0x80888 <_ZN4core9panicking18panic_bounds_check17h21e59d1a29014f09E>
   82118: 20 00 20 d4  	brk	#0x1

000000000008211c <_ZN4core7unicode9printable12is_printable17h809bc46350007ff2E>:
   8211c: 1f 40 40 71  	cmp	w0, #16, lsl #12
   82120: a2 04 00 54  	b.hs	0x821b4 <_ZN4core7unicode9printable12is_printable17h809bc46350007ff2E+0x98>
   82124: 0c 00 00 b0  	adrp	x12, 0x83000 <_ZN4core7unicode9printable12is_printable17h809bc46350007ff2E+0xc>
   82128: 0b 00 00 b0  	adrp	x11, 0x83000 <_ZN4core7unicode9printable12is_printable17h809bc46350007ff2E+0x10>
   8212c: 0d 00 00 b0  	adrp	x13, 0x83000 <_ZN4core7unicode9printable12is_printable17h809bc46350007ff2E+0x14>
   82130: e9 03 1f aa  	mov	x9, xzr
   82134: 8c dd 26 91  	add	x12, x12, #2487
   82138: 0a 7c 08 53  	lsr	w10, w0, #8
   8213c: 6b a1 28 91  	add	x11, x11, #2600
   82140: ad 25 28 91  	add	x13, x13, #2569
   82144: 88 01 40 39  	ldrb	w8, [x12]
   82148: 8e 05 40 39  	ldrb	w14, [x12, #1]
   8214c: 8c 09 00 91  	add	x12, x12, #2
   82150: 1f 01 2a 6b  	cmp	w8, w10, uxtb
   82154: 28 01 0e 8b  	add	x8, x9, x14
   82158: 81 01 00 54  	b.ne	0x82188 <_ZN4core7unicode9printable12is_printable17h809bc46350007ff2E+0x6c>
   8215c: 1f 01 09 eb  	cmp	x8, x9
   82160: a3 11 00 54  	b.lo	0x82394 <_ZN4core7unicode9printable12is_printable17h809bc46350007ff2E+0x278>
   82164: 1f 89 04 f1  	cmp	x8, #290
   82168: 28 12 00 54  	b.hi	0x823ac <_ZN4core7unicode9printable12is_printable17h809bc46350007ff2E+0x290>
   8216c: 69 01 09 8b  	add	x9, x11, x9
   82170: ee 00 00 b4  	cbz	x14, 0x8218c <_ZN4core7unicode9printable12is_printable17h809bc46350007ff2E+0x70>
   82174: 2f 15 40 38  	ldrb	w15, [x9], #1
   82178: ce 05 00 d1  	sub	x14, x14, #1
   8217c: ff 01 20 6b  	cmp	w15, w0, uxtb
   82180: 81 ff ff 54  	b.ne	0x82170 <_ZN4core7unicode9printable12is_printable17h809bc46350007ff2E+0x54>
   82184: 32 00 00 14  	b	0x8224c <_ZN4core7unicode9printable12is_printable17h809bc46350007ff2E+0x130>
   82188: 88 00 00 54  	b.hi	0x82198 <_ZN4core7unicode9printable12is_printable17h809bc46350007ff2E+0x7c>
   8218c: 9f 01 0d eb  	cmp	x12, x13
   82190: e9 03 08 aa  	mov	x9, x8
   82194: 81 fd ff 54  	b.ne	0x82144 <_ZN4core7unicode9printable12is_printable17h809bc46350007ff2E+0x28>
   82198: 0b 00 00 b0  	adrp	x11, 0x83000 <_ZN4core7unicode9printable12is_printable17h809bc46350007ff2E+0x80>
   8219c: 0a 00 00 b0  	adrp	x10, 0x83000 <_ZN4core7unicode9printable12is_printable17h809bc46350007ff2E+0x84>
   821a0: 09 3c 00 12  	and	w9, w0, #0xffff
   821a4: 6b 29 2d 91  	add	x11, x11, #2890
   821a8: 28 00 80 52  	mov	w8, #1
   821ac: 4a fd 31 91  	add	x10, x10, #3199
   821b0: 2f 00 00 14  	b	0x8226c <_ZN4core7unicode9printable12is_printable17h809bc46350007ff2E+0x150>
   821b4: 1f 80 40 71  	cmp	w0, #32, lsl #12
   821b8: 42 07 00 54  	b.hs	0x822a0 <_ZN4core7unicode9printable12is_printable17h809bc46350007ff2E+0x184>
   821bc: 0c 00 00 b0  	adrp	x12, 0x83000 <_ZN4core7unicode9printable12is_printable17h809bc46350007ff2E+0xa4>
   821c0: 0b 00 00 b0  	adrp	x11, 0x83000 <_ZN4core7unicode9printable12is_printable17h809bc46350007ff2E+0xa8>
   821c4: 0d 00 00 b0  	adrp	x13, 0x83000 <_ZN4core7unicode9printable12is_printable17h809bc46350007ff2E+0xac>
   821c8: e9 03 1f aa  	mov	x9, xzr
   821cc: 8c 61 32 91  	add	x12, x12, #3224
   821d0: 0a 7c 08 53  	lsr	w10, w0, #8
   821d4: 6b 91 33 91  	add	x11, x11, #3300
   821d8: ad 91 33 91  	add	x13, x13, #3300
   821dc: 88 01 40 39  	ldrb	w8, [x12]
   821e0: 8e 05 40 39  	ldrb	w14, [x12, #1]
   821e4: 8c 09 00 91  	add	x12, x12, #2
   821e8: 1f 01 2a 6b  	cmp	w8, w10, uxtb
   821ec: 28 01 0e 8b  	add	x8, x9, x14
   821f0: 81 01 00 54  	b.ne	0x82220 <_ZN4core7unicode9printable12is_printable17h809bc46350007ff2E+0x104>
   821f4: 1f 01 09 eb  	cmp	x8, x9
   821f8: e3 0c 00 54  	b.lo	0x82394 <_ZN4core7unicode9printable12is_printable17h809bc46350007ff2E+0x278>
   821fc: 1f bd 02 f1  	cmp	x8, #175
   82200: e8 0d 00 54  	b.hi	0x823bc <_ZN4core7unicode9printable12is_printable17h809bc46350007ff2E+0x2a0>
   82204: 69 01 09 8b  	add	x9, x11, x9
   82208: ee 00 00 b4  	cbz	x14, 0x82224 <_ZN4core7unicode9printable12is_printable17h809bc46350007ff2E+0x108>
   8220c: 2f 15 40 38  	ldrb	w15, [x9], #1
   82210: ce 05 00 d1  	sub	x14, x14, #1
   82214: ff 01 20 6b  	cmp	w15, w0, uxtb
   82218: 81 ff ff 54  	b.ne	0x82208 <_ZN4core7unicode9printable12is_printable17h809bc46350007ff2E+0xec>
   8221c: 0c 00 00 14  	b	0x8224c <_ZN4core7unicode9printable12is_printable17h809bc46350007ff2E+0x130>
   82220: 88 00 00 54  	b.hi	0x82230 <_ZN4core7unicode9printable12is_printable17h809bc46350007ff2E+0x114>
   82224: 9f 01 0d eb  	cmp	x12, x13
   82228: e9 03 08 aa  	mov	x9, x8
   8222c: 81 fd ff 54  	b.ne	0x821dc <_ZN4core7unicode9printable12is_printable17h809bc46350007ff2E+0xc0>
   82230: 0b 00 00 b0  	adrp	x11, 0x83000 <_ZN4core7unicode9printable12is_printable17h809bc46350007ff2E+0x118>
   82234: 0a 00 00 b0  	adrp	x10, 0x83000 <_ZN4core7unicode9printable12is_printable17h809bc46350007ff2E+0x11c>
   82238: 09 3c 00 12  	and	w9, w0, #0xffff
   8223c: 6b 4d 36 91  	add	x11, x11, #3475
   82240: 28 00 80 52  	mov	w8, #1
   82244: 4a d9 3c 91  	add	x10, x10, #3894
   82248: 45 00 00 14  	b	0x8235c <_ZN4core7unicode9printable12is_printable17h809bc46350007ff2E+0x240>
   8224c: e0 03 00 12  	and	w0, wzr, #0x1
   82250: c0 03 5f d6  	ret
   82254: eb 03 0d aa  	mov	x11, x13
   82258: 29 01 0c 6b  	subs	w9, w9, w12
   8225c: 84 09 00 54  	b.mi	0x8238c <_ZN4core7unicode9printable12is_printable17h809bc46350007ff2E+0x270>
   82260: 7f 01 0a eb  	cmp	x11, x10
   82264: 08 01 00 52  	eor	w8, w8, #0x1
   82268: 20 09 00 54  	b.eq	0x8238c <_ZN4core7unicode9printable12is_printable17h809bc46350007ff2E+0x270>
   8226c: ed 03 0b aa  	mov	x13, x11
   82270: ae 15 c0 38  	ldrsb	w14, [x13], #1
   82274: cc 1d 00 12  	and	w12, w14, #0xff
   82278: ee fe ff 36  	tbz	w14, #31, 0x82254 <_ZN4core7unicode9printable12is_printable17h809bc46350007ff2E+0x138>
   8227c: bf 01 0a eb  	cmp	x13, x10
   82280: a0 0a 00 54  	b.eq	0x823d4 <_ZN4core7unicode9printable12is_printable17h809bc46350007ff2E+0x2b8>
   82284: 8d 19 00 12  	and	w13, w12, #0x7f
   82288: 6c 05 40 39  	ldrb	w12, [x11, #1]
   8228c: 6b 09 00 91  	add	x11, x11, #2
   82290: ac 19 18 33  	bfi	w12, w13, #8, #7
   82294: 29 01 0c 6b  	subs	w9, w9, w12
   82298: 45 fe ff 54  	b.pl	0x82260 <_ZN4core7unicode9printable12is_printable17h809bc46350007ff2E+0x144>
   8229c: 3c 00 00 14  	b	0x8238c <_ZN4core7unicode9printable12is_printable17h809bc46350007ff2E+0x270>
   822a0: a8 96 9d 52  	mov	w8, #60597
   822a4: 88 ff bf 72  	movk	w8, #65532, lsl #16
   822a8: a9 b6 9d 52  	mov	w9, #60853
   822ac: 08 00 08 0b  	add	w8, w0, w8
   822b0: 49 01 a0 72  	movk	w9, #10, lsl #16
   822b4: 1f 01 09 6b  	cmp	w8, w9
   822b8: e8 03 1f 2a  	mov	w8, wzr
   822bc: 83 06 00 54  	b.lo	0x8238c <_ZN4core7unicode9printable12is_printable17h809bc46350007ff2E+0x270>
   822c0: 49 bc 80 52  	mov	w9, #1506
   822c4: a9 ff bf 72  	movk	w9, #65533, lsl #16
   822c8: 09 00 09 0b  	add	w9, w0, w9
   822cc: 3f 89 17 71  	cmp	w9, #1506
   822d0: e3 05 00 54  	b.lo	0x8238c <_ZN4core7unicode9printable12is_printable17h809bc46350007ff2E+0x270>
   822d4: 29 f5 38 11  	add	w9, w9, #3645
   822d8: 3f 7d 30 71  	cmp	w9, #3103
   822dc: 83 05 00 54  	b.lo	0x8238c <_ZN4core7unicode9printable12is_printable17h809bc46350007ff2E+0x270>
   822e0: c9 2b 86 52  	mov	w9, #12638
   822e4: a9 ff bf 72  	movk	w9, #65533, lsl #16
   822e8: 09 00 09 0b  	add	w9, w0, w9
   822ec: 3f 39 00 71  	cmp	w9, #14
   822f0: e3 04 00 54  	b.lo	0x8238c <_ZN4core7unicode9printable12is_printable17h809bc46350007ff2E+0x270>
   822f4: ca 03 97 52  	mov	w10, #47134
   822f8: 09 4c 1f 12  	and	w9, w0, #0x1ffffe
   822fc: 4a 00 a0 72  	movk	w10, #2, lsl #16
   82300: 3f 01 0a 6b  	cmp	w9, w10
   82304: 40 04 00 54  	b.eq	0x8238c <_ZN4core7unicode9printable12is_printable17h809bc46350007ff2E+0x270>
   82308: 49 24 8b 52  	mov	w9, #22818
   8230c: a9 ff bf 72  	movk	w9, #65533, lsl #16
   82310: 09 00 09 0b  	add	w9, w0, w9
   82314: 3f 89 00 71  	cmp	w9, #34
   82318: a3 03 00 54  	b.lo	0x8238c <_ZN4core7unicode9printable12is_printable17h809bc46350007ff2E+0x270>
   8231c: 69 19 89 52  	mov	w9, #18635
   82320: a9 ff bf 72  	movk	w9, #65533, lsl #16
   82324: 09 00 09 0b  	add	w9, w0, w9
   82328: 3f 2d 00 71  	cmp	w9, #11
   8232c: 03 03 00 54  	b.lo	0x8238c <_ZN4core7unicode9printable12is_printable17h809bc46350007ff2E+0x270>
   82330: 08 3e 80 52  	mov	w8, #496
   82334: c8 01 a0 72  	movk	w8, #14, lsl #16
   82338: 1f 00 08 6b  	cmp	w0, w8
   8233c: e0 27 9f 1a  	cset	w0, lo
   82340: c0 03 5f d6  	ret
   82344: eb 03 0d aa  	mov	x11, x13
   82348: 29 01 0c 6b  	subs	w9, w9, w12
   8234c: 04 02 00 54  	b.mi	0x8238c <_ZN4core7unicode9printable12is_printable17h809bc46350007ff2E+0x270>
   82350: 7f 01 0a eb  	cmp	x11, x10
   82354: 08 01 00 52  	eor	w8, w8, #0x1
   82358: a0 01 00 54  	b.eq	0x8238c <_ZN4core7unicode9printable12is_printable17h809bc46350007ff2E+0x270>
   8235c: ed 03 0b aa  	mov	x13, x11
   82360: ae 15 c0 38  	ldrsb	w14, [x13], #1
   82364: cc 1d 00 12  	and	w12, w14, #0xff
   82368: ee fe ff 36  	tbz	w14, #31, 0x82344 <_ZN4core7unicode9printable12is_printable17h809bc46350007ff2E+0x228>
   8236c: bf 01 0a eb  	cmp	x13, x10
   82370: 20 03 00 54  	b.eq	0x823d4 <_ZN4core7unicode9printable12is_printable17h809bc46350007ff2E+0x2b8>
   82374: 8d 19 00 12  	and	w13, w12, #0x7f
   82378: 6c 05 40 39  	ldrb	w12, [x11, #1]
   8237c: 6b 09 00 91  	add	x11, x11, #2
   82380: ac 19 18 33  	bfi	w12, w13, #8, #7
   82384: 29 01 0c 6b  	subs	w9, w9, w12
   82388: 45 fe ff 54  	b.pl	0x82350 <_ZN4core7unicode9printable12is_printable17h809bc46350007ff2E+0x234>
   8238c: 00 01 00 12  	and	w0, w8, #0x1
   82390: c0 03 5f d6  	ret
   82394: 02 00 00 b0  	adrp	x2, 0x83000 <_ZN4core7unicode9printable12is_printable17h809bc46350007ff2E+0x27c>
   82398: 42 40 28 91  	add	x2, x2, #2576
   8239c: e0 03 09 aa  	mov	x0, x9
   823a0: e1 03 08 aa  	mov	x1, x8
   823a4: 42 fc ff 97  	bl	0x814ac <_ZN4core5slice5index22slice_index_order_fail17he71d7140076fff6eE>
   823a8: 20 00 20 d4  	brk	#0x1
   823ac: 02 00 00 b0  	adrp	x2, 0x83000 <_ZN4core7unicode9printable12is_printable17h809bc46350007ff2E+0x294>
   823b0: 42 40 28 91  	add	x2, x2, #2576
   823b4: 41 24 80 52  	mov	w1, #290
   823b8: 04 00 00 14  	b	0x823c8 <_ZN4core7unicode9printable12is_printable17h809bc46350007ff2E+0x2ac>
   823bc: 02 00 00 b0  	adrp	x2, 0x83000 <_ZN4core7unicode9printable12is_printable17h809bc46350007ff2E+0x2a4>
   823c0: 42 40 28 91  	add	x2, x2, #2576
   823c4: e1 15 80 52  	mov	w1, #175
   823c8: e0 03 08 aa  	mov	x0, x8
   823cc: 8e fa ff 97  	bl	0x80e04 <_ZN4core5slice5index24slice_end_index_len_fail17h827cf37c6cc32b14E>
   823d0: 20 00 20 d4  	brk	#0x1
   823d4: 00 00 00 b0  	adrp	x0, 0x83000 <_ZN4core7unicode9printable12is_printable17h809bc46350007ff2E+0x2bc>
   823d8: 02 00 00 b0  	adrp	x2, 0x83000 <_ZN4core7unicode9printable12is_printable17h809bc46350007ff2E+0x2c0>
   823dc: 00 a0 23 91  	add	x0, x0, #2280
   823e0: 42 00 32 91  	add	x2, x2, #3200
   823e4: 61 05 80 52  	mov	w1, #43
   823e8: 99 fa ff 97  	bl	0x80e4c <_ZN4core9panicking5panic17ha7217054e020f4cfE>
   823ec: 20 00 20 d4  	brk	#0x1

00000000000823f0 <_ZN4core3fmt8builders11DebugStruct5field17hdc89cd457900d764E>:
   823f0: ff 83 02 d1  	sub	sp, sp, #160
   823f4: fe 67 06 a9  	stp	x30, x25, [sp, #96]
   823f8: f8 5f 07 a9  	stp	x24, x23, [sp, #112]
   823fc: f6 57 08 a9  	stp	x22, x21, [sp, #128]
   82400: f4 4f 09 a9  	stp	x20, x19, [sp, #144]
   82404: 08 20 40 39  	ldrb	w8, [x0, #8]
   82408: f3 03 00 aa  	mov	x19, x0
   8240c: 39 00 80 52  	mov	w25, #1
   82410: 20 00 80 52  	mov	w0, #1
   82414: 68 0a 00 35  	cbnz	w8, 0x82560 <_ZN4core3fmt8builders11DebugStruct5field17hdc89cd457900d764E+0x170>
   82418: 76 02 40 f9  	ldr	x22, [x19]
   8241c: 69 26 40 39  	ldrb	w9, [x19, #9]
   82420: f5 03 04 aa  	mov	x21, x4
   82424: f4 03 03 aa  	mov	x20, x3
   82428: c8 32 40 b9  	ldr	w8, [x22, #48]
   8242c: f7 03 02 aa  	mov	x23, x2
   82430: f8 03 01 aa  	mov	x24, x1
   82434: e8 03 10 37  	tbnz	w8, #2, 0x824b0 <_ZN4core3fmt8builders11DebugStruct5field17hdc89cd457900d764E+0xc0>
   82438: c0 22 42 a9  	ldp	x0, x8, [x22, #32]
   8243c: 0a 00 00 d0  	adrp	x10, 0x84000 <_ZN4core3fmt8builders11DebugStruct5field17hdc89cd457900d764E+0x54>
   82440: 0b 00 00 d0  	adrp	x11, 0x84000 <_ZN4core3fmt8builders11DebugStruct5field17hdc89cd457900d764E+0x58>
   82444: 4a 9d 0c 91  	add	x10, x10, #807
   82448: 08 0d 40 f9  	ldr	x8, [x8, #24]
   8244c: 6b 91 0c 91  	add	x11, x11, #804
   82450: 3f 01 00 71  	cmp	w9, #0
   82454: 49 00 80 52  	mov	w9, #2
   82458: 61 01 8a 9a  	csel	x1, x11, x10, eq
   8245c: 22 15 89 9a  	cinc	x2, x9, eq
   82460: 00 01 3f d6  	blr	x8
   82464: c0 07 00 37  	tbnz	w0, #0, 0x8255c <_ZN4core3fmt8builders11DebugStruct5field17hdc89cd457900d764E+0x16c>
   82468: c0 22 42 a9  	ldp	x0, x8, [x22, #32]
   8246c: e1 03 18 aa  	mov	x1, x24
   82470: e2 03 17 aa  	mov	x2, x23
   82474: 08 0d 40 f9  	ldr	x8, [x8, #24]
   82478: 00 01 3f d6  	blr	x8
   8247c: 00 07 00 37  	tbnz	w0, #0, 0x8255c <_ZN4core3fmt8builders11DebugStruct5field17hdc89cd457900d764E+0x16c>
   82480: c0 22 42 a9  	ldp	x0, x8, [x22, #32]
   82484: 01 00 00 b0  	adrp	x1, 0x83000 <_ZN4core3fmt8builders11DebugStruct5field17hdc89cd457900d764E+0x98>
   82488: 21 20 20 91  	add	x1, x1, #2056
   8248c: 42 00 80 52  	mov	w2, #2
   82490: 08 0d 40 f9  	ldr	x8, [x8, #24]
   82494: 00 01 3f d6  	blr	x8
   82498: 20 06 00 37  	tbnz	w0, #0, 0x8255c <_ZN4core3fmt8builders11DebugStruct5field17hdc89cd457900d764E+0x16c>
   8249c: a8 0e 40 f9  	ldr	x8, [x21, #24]
   824a0: e0 03 14 aa  	mov	x0, x20
   824a4: e1 03 16 aa  	mov	x1, x22
   824a8: 00 01 3f d6  	blr	x8
   824ac: 2d 00 00 14  	b	0x82560 <_ZN4core3fmt8builders11DebugStruct5field17hdc89cd457900d764E+0x170>
   824b0: 29 01 00 35  	cbnz	w9, 0x824d4 <_ZN4core3fmt8builders11DebugStruct5field17hdc89cd457900d764E+0xe4>
   824b4: c0 22 42 a9  	ldp	x0, x8, [x22, #32]
   824b8: 01 00 00 d0  	adrp	x1, 0x84000 <_ZN4core3fmt8builders11DebugStruct5field17hdc89cd457900d764E+0xd0>
   824bc: 21 a4 0c 91  	add	x1, x1, #809
   824c0: 62 00 80 52  	mov	w2, #3
   824c4: 08 0d 40 f9  	ldr	x8, [x8, #24]
   824c8: 00 01 3f d6  	blr	x8
   824cc: 80 04 00 37  	tbnz	w0, #0, 0x8255c <_ZN4core3fmt8builders11DebugStruct5field17hdc89cd457900d764E+0x16c>
   824d0: c8 32 40 b9  	ldr	w8, [x22, #48]
   824d4: 29 00 80 52  	mov	w9, #1
   824d8: e9 73 00 39  	strb	w9, [sp, #28]
   824dc: c9 2e 42 a9  	ldp	x9, x11, [x22, #32]
   824e0: ea 73 00 91  	add	x10, sp, #28
   824e4: ec 03 00 91  	mov	x12, sp
   824e8: e0 03 00 91  	mov	x0, sp
   824ec: eb ab 00 a9  	stp	x11, x10, [sp, #8]
   824f0: e9 03 00 f9  	str	x9, [sp]
   824f4: c9 36 40 b9  	ldr	w9, [x22, #52]
   824f8: ca e2 40 39  	ldrb	w10, [x22, #56]
   824fc: cb 36 40 a9  	ldp	x11, x13, [x22]
   82500: ce 3e 41 a9  	ldp	x14, x15, [x22, #16]
   82504: e8 27 0a 29  	stp	w8, w9, [sp, #80]
   82508: 08 00 00 d0  	adrp	x8, 0x84000 <_ZN4core3fmt8builders11DebugStruct5field17hdc89cd457900d764E+0x120>
   8250c: 08 c1 0c 91  	add	x8, x8, #816
   82510: e1 03 18 aa  	mov	x1, x24
   82514: e2 03 17 aa  	mov	x2, x23
   82518: ea 63 01 39  	strb	w10, [sp, #88]
   8251c: eb 37 02 a9  	stp	x11, x13, [sp, #32]
   82520: ee 3f 03 a9  	stp	x14, x15, [sp, #48]
   82524: ec 23 04 a9  	stp	x12, x8, [sp, #64]
   82528: 0c fc ff 97  	bl	0x81558 <_ZN68_$LT$core..fmt..builders..PadAdapter$u20$as$u20$core..fmt..Write$GT$9write_str17h006d11991b68be72E>
   8252c: 80 01 00 37  	tbnz	w0, #0, 0x8255c <_ZN4core3fmt8builders11DebugStruct5field17hdc89cd457900d764E+0x16c>
   82530: 01 00 00 b0  	adrp	x1, 0x83000 <_ZN4core3fmt8builders11DebugStruct5field17hdc89cd457900d764E+0x144>
   82534: 21 20 20 91  	add	x1, x1, #2056
   82538: e0 03 00 91  	mov	x0, sp
   8253c: 42 00 80 52  	mov	w2, #2
   82540: 06 fc ff 97  	bl	0x81558 <_ZN68_$LT$core..fmt..builders..PadAdapter$u20$as$u20$core..fmt..Write$GT$9write_str17h006d11991b68be72E>
   82544: c0 00 00 35  	cbnz	w0, 0x8255c <_ZN4core3fmt8builders11DebugStruct5field17hdc89cd457900d764E+0x16c>
   82548: a8 0e 40 f9  	ldr	x8, [x21, #24]
   8254c: e1 83 00 91  	add	x1, sp, #32
   82550: e0 03 14 aa  	mov	x0, x20
   82554: 00 01 3f d6  	blr	x8
   82558: 60 01 00 36  	tbz	w0, #0, 0x82584 <_ZN4core3fmt8builders11DebugStruct5field17hdc89cd457900d764E+0x194>
   8255c: 20 00 80 52  	mov	w0, #1
   82560: 60 22 00 39  	strb	w0, [x19, #8]
   82564: 79 26 00 39  	strb	w25, [x19, #9]
   82568: e0 03 13 aa  	mov	x0, x19
   8256c: f4 4f 49 a9  	ldp	x20, x19, [sp, #144]
   82570: f6 57 48 a9  	ldp	x22, x21, [sp, #128]
   82574: f8 5f 47 a9  	ldp	x24, x23, [sp, #112]
   82578: fe 67 46 a9  	ldp	x30, x25, [sp, #96]
   8257c: ff 83 02 91  	add	sp, sp, #160
   82580: c0 03 5f d6  	ret
   82584: e0 23 44 a9  	ldp	x0, x8, [sp, #64]
   82588: 01 00 00 d0  	adrp	x1, 0x84000 <_ZN4core3fmt8builders11DebugStruct5field17hdc89cd457900d764E+0x1a0>
   8258c: 21 80 0d 91  	add	x1, x1, #864
   82590: 42 00 80 52  	mov	w2, #2
   82594: 08 0d 40 f9  	ldr	x8, [x8, #24]
   82598: 00 01 3f d6  	blr	x8
   8259c: f1 ff ff 17  	b	0x82560 <_ZN4core3fmt8builders11DebugStruct5field17hdc89cd457900d764E+0x170>

00000000000825a0 <_ZN4core3fmt5Write10write_char17h9e2cca690dfc629fE>:
   825a0: fe 0f 1f f8  	str	x30, [sp, #-16]!
   825a4: 3f 00 02 71  	cmp	w1, #128
   825a8: ff 0f 00 b9  	str	wzr, [sp, #12]
   825ac: e2 00 00 54  	b.hs	0x825c8 <_ZN4core3fmt5Write10write_char17h9e2cca690dfc629fE+0x28>
   825b0: e1 33 00 39  	strb	w1, [sp, #12]
   825b4: 22 00 80 52  	mov	w2, #1
   825b8: e1 33 00 91  	add	x1, sp, #12
   825bc: e7 fb ff 97  	bl	0x81558 <_ZN68_$LT$core..fmt..builders..PadAdapter$u20$as$u20$core..fmt..Write$GT$9write_str17h006d11991b68be72E>
   825c0: fe 07 41 f8  	ldr	x30, [sp], #16
   825c4: c0 03 5f d6  	ret
   825c8: 3f 00 20 71  	cmp	w1, #2048
   825cc: 82 01 00 54  	b.hs	0x825fc <_ZN4core3fmt5Write10write_char17h9e2cca690dfc629fE+0x5c>
   825d0: 28 7c 06 53  	lsr	w8, w1, #6
   825d4: 09 10 80 52  	mov	w9, #128
   825d8: 08 05 1a 32  	orr	w8, w8, #0xc0
   825dc: 29 14 00 33  	bfxil	w9, w1, #0, #6
   825e0: e8 33 00 39  	strb	w8, [sp, #12]
   825e4: e9 37 00 39  	strb	w9, [sp, #13]
   825e8: 42 00 80 52  	mov	w2, #2
   825ec: e1 33 00 91  	add	x1, sp, #12
   825f0: da fb ff 97  	bl	0x81558 <_ZN68_$LT$core..fmt..builders..PadAdapter$u20$as$u20$core..fmt..Write$GT$9write_str17h006d11991b68be72E>
   825f4: fe 07 41 f8  	ldr	x30, [sp], #16
   825f8: c0 03 5f d6  	ret
   825fc: 3f 40 40 71  	cmp	w1, #16, lsl #12
   82600: e2 01 00 54  	b.hs	0x8263c <_ZN4core3fmt5Write10write_char17h9e2cca690dfc629fE+0x9c>
   82604: 28 7c 0c 53  	lsr	w8, w1, #12
   82608: 09 10 80 52  	mov	w9, #128
   8260c: 0a 10 80 52  	mov	w10, #128
   82610: 08 09 1b 32  	orr	w8, w8, #0xe0
   82614: 2a 2c 06 33  	bfxil	w10, w1, #6, #6
   82618: 29 14 00 33  	bfxil	w9, w1, #0, #6
   8261c: e8 33 00 39  	strb	w8, [sp, #12]
   82620: ea 37 00 39  	strb	w10, [sp, #13]
   82624: e9 3b 00 39  	strb	w9, [sp, #14]
   82628: 62 00 80 52  	mov	w2, #3
   8262c: e1 33 00 91  	add	x1, sp, #12
   82630: ca fb ff 97  	bl	0x81558 <_ZN68_$LT$core..fmt..builders..PadAdapter$u20$as$u20$core..fmt..Write$GT$9write_str17h006d11991b68be72E>
   82634: fe 07 41 f8  	ldr	x30, [sp], #16
   82638: c0 03 5f d6  	ret
   8263c: 28 7c 12 53  	lsr	w8, w1, #18
   82640: 09 10 80 52  	mov	w9, #128
   82644: 0a 10 80 52  	mov	w10, #128
   82648: 0b 10 80 52  	mov	w11, #128
   8264c: 08 0d 1c 32  	orr	w8, w8, #0xf0
   82650: 2a 44 0c 33  	bfxil	w10, w1, #12, #6
   82654: 2b 2c 06 33  	bfxil	w11, w1, #6, #6
   82658: 29 14 00 33  	bfxil	w9, w1, #0, #6
   8265c: 82 00 80 52  	mov	w2, #4
   82660: e8 33 00 39  	strb	w8, [sp, #12]
   82664: ea 37 00 39  	strb	w10, [sp, #13]
   82668: eb 3b 00 39  	strb	w11, [sp, #14]
   8266c: e9 3f 00 39  	strb	w9, [sp, #15]
   82670: e1 33 00 91  	add	x1, sp, #12
   82674: b9 fb ff 97  	bl	0x81558 <_ZN68_$LT$core..fmt..builders..PadAdapter$u20$as$u20$core..fmt..Write$GT$9write_str17h006d11991b68be72E>
   82678: fe 07 41 f8  	ldr	x30, [sp], #16
   8267c: c0 03 5f d6  	ret

0000000000082680 <_ZN4core3fmt5Write9write_fmt17h031e20469903bdb9E>:
   82680: ff 03 01 d1  	sub	sp, sp, #64
   82684: fe 03 03 a9  	stp	x30, x0, [sp, #48]
   82688: e0 03 00 91  	mov	x0, sp
   8268c: 02 06 80 52  	mov	w2, #48
   82690: 15 03 00 94  	bl	0x832e4 <memcpy>
   82694: 01 00 00 d0  	adrp	x1, 0x84000 <_ZN4core3fmt5Write9write_fmt17h031e20469903bdb9E+0x1c>
   82698: 21 a0 0d 91  	add	x1, x1, #872
   8269c: e0 e3 00 91  	add	x0, sp, #56
   826a0: e2 03 00 91  	mov	x2, sp
   826a4: 03 fb ff 97  	bl	0x812b0 <_ZN4core3fmt5write17h4089dd81629a8d2eE>
   826a8: fe 1b 40 f9  	ldr	x30, [sp, #48]
   826ac: ff 03 01 91  	add	sp, sp, #64
   826b0: c0 03 5f d6  	ret

00000000000826b4 <_ZN50_$LT$$RF$mut$u20$W$u20$as$u20$core..fmt..Write$GT$9write_str17h06cee42cc043f099E>:
   826b4: 00 00 40 f9  	ldr	x0, [x0]
   826b8: a8 fb ff 17  	b	0x81558 <_ZN68_$LT$core..fmt..builders..PadAdapter$u20$as$u20$core..fmt..Write$GT$9write_str17h006d11991b68be72E>

00000000000826bc <_ZN50_$LT$$RF$mut$u20$W$u20$as$u20$core..fmt..Write$GT$10write_char17h84d77c247f809bd9E>:
   826bc: fe 0f 1f f8  	str	x30, [sp, #-16]!
   826c0: 00 00 40 f9  	ldr	x0, [x0]
   826c4: 3f 00 02 71  	cmp	w1, #128
   826c8: ff 0f 00 b9  	str	wzr, [sp, #12]
   826cc: e2 00 00 54  	b.hs	0x826e8 <_ZN50_$LT$$RF$mut$u20$W$u20$as$u20$core..fmt..Write$GT$10write_char17h84d77c247f809bd9E+0x2c>
   826d0: e1 33 00 39  	strb	w1, [sp, #12]
   826d4: 22 00 80 52  	mov	w2, #1
   826d8: e1 33 00 91  	add	x1, sp, #12
   826dc: 9f fb ff 97  	bl	0x81558 <_ZN68_$LT$core..fmt..builders..PadAdapter$u20$as$u20$core..fmt..Write$GT$9write_str17h006d11991b68be72E>
   826e0: fe 07 41 f8  	ldr	x30, [sp], #16
   826e4: c0 03 5f d6  	ret
   826e8: 3f 00 20 71  	cmp	w1, #2048
   826ec: 82 01 00 54  	b.hs	0x8271c <_ZN50_$LT$$RF$mut$u20$W$u20$as$u20$core..fmt..Write$GT$10write_char17h84d77c247f809bd9E+0x60>
   826f0: 28 7c 06 53  	lsr	w8, w1, #6
   826f4: 09 10 80 52  	mov	w9, #128
   826f8: 08 05 1a 32  	orr	w8, w8, #0xc0
   826fc: 29 14 00 33  	bfxil	w9, w1, #0, #6
   82700: e8 33 00 39  	strb	w8, [sp, #12]
   82704: e9 37 00 39  	strb	w9, [sp, #13]
   82708: 42 00 80 52  	mov	w2, #2
   8270c: e1 33 00 91  	add	x1, sp, #12
   82710: 92 fb ff 97  	bl	0x81558 <_ZN68_$LT$core..fmt..builders..PadAdapter$u20$as$u20$core..fmt..Write$GT$9write_str17h006d11991b68be72E>
   82714: fe 07 41 f8  	ldr	x30, [sp], #16
   82718: c0 03 5f d6  	ret
   8271c: 3f 40 40 71  	cmp	w1, #16, lsl #12
   82720: e2 01 00 54  	b.hs	0x8275c <_ZN50_$LT$$RF$mut$u20$W$u20$as$u20$core..fmt..Write$GT$10write_char17h84d77c247f809bd9E+0xa0>
   82724: 28 7c 0c 53  	lsr	w8, w1, #12
   82728: 09 10 80 52  	mov	w9, #128
   8272c: 0a 10 80 52  	mov	w10, #128
   82730: 08 09 1b 32  	orr	w8, w8, #0xe0
   82734: 2a 2c 06 33  	bfxil	w10, w1, #6, #6
   82738: 29 14 00 33  	bfxil	w9, w1, #0, #6
   8273c: e8 33 00 39  	strb	w8, [sp, #12]
   82740: ea 37 00 39  	strb	w10, [sp, #13]
   82744: e9 3b 00 39  	strb	w9, [sp, #14]
   82748: 62 00 80 52  	mov	w2, #3
   8274c: e1 33 00 91  	add	x1, sp, #12
   82750: 82 fb ff 97  	bl	0x81558 <_ZN68_$LT$core..fmt..builders..PadAdapter$u20$as$u20$core..fmt..Write$GT$9write_str17h006d11991b68be72E>
   82754: fe 07 41 f8  	ldr	x30, [sp], #16
   82758: c0 03 5f d6  	ret
   8275c: 28 7c 12 53  	lsr	w8, w1, #18
   82760: 09 10 80 52  	mov	w9, #128
   82764: 0a 10 80 52  	mov	w10, #128
   82768: 0b 10 80 52  	mov	w11, #128
   8276c: 08 0d 1c 32  	orr	w8, w8, #0xf0
   82770: 2a 44 0c 33  	bfxil	w10, w1, #12, #6
   82774: 2b 2c 06 33  	bfxil	w11, w1, #6, #6
   82778: 29 14 00 33  	bfxil	w9, w1, #0, #6
   8277c: 82 00 80 52  	mov	w2, #4
   82780: e8 33 00 39  	strb	w8, [sp, #12]
   82784: ea 37 00 39  	strb	w10, [sp, #13]
   82788: eb 3b 00 39  	strb	w11, [sp, #14]
   8278c: e9 3f 00 39  	strb	w9, [sp, #15]
   82790: e1 33 00 91  	add	x1, sp, #12
   82794: 71 fb ff 97  	bl	0x81558 <_ZN68_$LT$core..fmt..builders..PadAdapter$u20$as$u20$core..fmt..Write$GT$9write_str17h006d11991b68be72E>
   82798: fe 07 41 f8  	ldr	x30, [sp], #16
   8279c: c0 03 5f d6  	ret

00000000000827a0 <_ZN50_$LT$$RF$mut$u20$W$u20$as$u20$core..fmt..Write$GT$9write_fmt17h17dad8312d16cedaE>:
   827a0: ff 03 01 d1  	sub	sp, sp, #64
   827a4: 08 00 40 f9  	ldr	x8, [x0]
   827a8: e0 03 00 91  	mov	x0, sp
   827ac: 02 06 80 52  	mov	w2, #48
   827b0: fe 23 03 a9  	stp	x30, x8, [sp, #48]
   827b4: cc 02 00 94  	bl	0x832e4 <memcpy>
   827b8: 01 00 00 d0  	adrp	x1, 0x84000 <_ZN50_$LT$$RF$mut$u20$W$u20$as$u20$core..fmt..Write$GT$9write_fmt17h17dad8312d16cedaE+0x20>
   827bc: 21 a0 0d 91  	add	x1, x1, #872
   827c0: e0 e3 00 91  	add	x0, sp, #56
   827c4: e2 03 00 91  	mov	x2, sp
   827c8: ba fa ff 97  	bl	0x812b0 <_ZN4core3fmt5write17h4089dd81629a8d2eE>
   827cc: fe 1b 40 f9  	ldr	x30, [sp, #48]
   827d0: ff 03 01 91  	add	sp, sp, #64
   827d4: c0 03 5f d6  	ret

00000000000827d8 <_ZN42_$LT$$RF$T$u20$as$u20$core..fmt..Debug$GT$3fmt17h0ce5f74af94e46edE>:
   827d8: ff 43 02 d1  	sub	sp, sp, #144
   827dc: fe 43 00 f9  	str	x30, [sp, #128]
   827e0: 28 30 40 b9  	ldr	w8, [x1, #48]
   827e4: 09 00 40 f9  	ldr	x9, [x0]
   827e8: c8 05 20 37  	tbnz	w8, #4, 0x828a0 <_ZN42_$LT$$RF$T$u20$as$u20$core..fmt..Debug$GT$3fmt17h0ce5f74af94e46edE+0xc8>
   827ec: a8 07 28 37  	tbnz	w8, #5, 0x828e0 <_ZN42_$LT$$RF$T$u20$as$u20$core..fmt..Debug$GT$3fmt17h0ce5f74af94e46edE+0x108>
   827f0: 28 01 40 b9  	ldr	w8, [x9]
   827f4: 09 7d 44 d3  	ubfx	x9, x8, #4, #28
   827f8: 3f c5 09 71  	cmp	w9, #625
   827fc: 03 0b 00 54  	b.lo	0x8295c <_ZN42_$LT$$RF$T$u20$as$u20$core..fmt..Debug$GT$3fmt17h0ce5f74af94e46edE+0x184>
   82800: 6a 29 8b d2  	mov	x10, #22859
   82804: ca 10 a7 f2  	movk	x10, #14470, lsl #16
   82808: ca ba d8 f2  	movk	x10, #50646, lsl #32
   8280c: ec a3 90 52  	mov	w12, #34079
   82810: 0e 00 00 b0  	adrp	x14, 0x83000 <_ZN42_$LT$$RF$T$u20$as$u20$core..fmt..Debug$GT$3fmt17h0ce5f74af94e46edE+0x3c>
   82814: f0 1f 9c 52  	mov	w16, #57599
   82818: e9 03 1f aa  	mov	x9, xzr
   8281c: aa 8d e6 f2  	movk	x10, #13421, lsl #48
   82820: eb e1 84 12  	mov	w11, #-10000
   82824: 6c 3d aa 72  	movk	w12, #20971, lsl #16
   82828: 6d 0c 80 12  	mov	w13, #-100
   8282c: ce 69 17 91  	add	x14, x14, #1498
   82830: ef 03 00 91  	mov	x15, sp
   82834: b0 be a0 72  	movk	w16, #1525, lsl #16
   82838: f1 03 08 aa  	mov	x17, x8
   8283c: 08 7d ca 9b  	umulh	x8, x8, x10
   82840: 08 fd 4b d3  	lsr	x8, x8, #11
   82844: 3f 02 10 eb  	cmp	x17, x16
   82848: 11 45 0b 1b  	madd	w17, w8, w11, w17
   8284c: 20 3e 00 12  	and	w0, w17, #0xffff
   82850: 00 7c ac 9b  	umull	x0, w0, w12
   82854: 00 fc 65 d3  	lsr	x0, x0, #37
   82858: 11 44 0d 1b  	madd	w17, w0, w13, w17
   8285c: c0 05 00 8b  	add	x0, x14, x0, lsl #1
   82860: d1 25 31 8b  	add	x17, x14, w17, uxth #1
   82864: 02 00 40 39  	ldrb	w2, [x0]
   82868: 00 04 40 39  	ldrb	w0, [x0, #1]
   8286c: 23 06 40 39  	ldrb	w3, [x17, #1]
   82870: 31 02 40 39  	ldrb	w17, [x17]
   82874: f2 01 09 8b  	add	x18, x15, x9
   82878: 29 11 00 d1  	sub	x9, x9, #4
   8287c: 40 92 00 39  	strb	w0, [x18, #36]
   82880: 42 8e 00 39  	strb	w2, [x18, #35]
   82884: 43 9a 00 39  	strb	w3, [x18, #38]
   82888: 51 96 00 39  	strb	w17, [x18, #37]
   8288c: 68 fd ff 54  	b.hi	0x82838 <_ZN42_$LT$$RF$T$u20$as$u20$core..fmt..Debug$GT$3fmt17h0ce5f74af94e46edE+0x60>
   82890: 29 9d 00 91  	add	x9, x9, #39
   82894: 1f 8d 01 f1  	cmp	x8, #99
   82898: 88 06 00 54  	b.hi	0x82968 <_ZN42_$LT$$RF$T$u20$as$u20$core..fmt..Debug$GT$3fmt17h0ce5f74af94e46edE+0x190>
   8289c: 45 00 00 14  	b	0x829b0 <_ZN42_$LT$$RF$T$u20$as$u20$core..fmt..Debug$GT$3fmt17h0ce5f74af94e46edE+0x1d8>
   828a0: 2a 01 40 b9  	ldr	w10, [x9]
   828a4: e8 03 1f aa  	mov	x8, xzr
   828a8: e9 03 00 91  	mov	x9, sp
   828ac: 4d 0d 00 12  	and	w13, w10, #0xf
   828b0: 0e 06 80 52  	mov	w14, #48
   828b4: 4c 7d 04 53  	lsr	w12, w10, #4
   828b8: 4e 0d 00 33  	bfxil	w14, w10, #0, #4
   828bc: aa 5d 01 11  	add	w10, w13, #87
   828c0: bf 29 00 71  	cmp	w13, #10
   828c4: 2b 01 08 8b  	add	x11, x9, x8
   828c8: ca 31 8a 1a  	csel	w10, w14, w10, lo
   828cc: 6a fd 01 39  	strb	w10, [x11, #127]
   828d0: 08 05 00 d1  	sub	x8, x8, #1
   828d4: ea 03 0c 2a  	mov	w10, w12
   828d8: ac fe ff 35  	cbnz	w12, 0x828ac <_ZN42_$LT$$RF$T$u20$as$u20$core..fmt..Debug$GT$3fmt17h0ce5f74af94e46edE+0xd4>
   828dc: 10 00 00 14  	b	0x8291c <_ZN42_$LT$$RF$T$u20$as$u20$core..fmt..Debug$GT$3fmt17h0ce5f74af94e46edE+0x144>
   828e0: 2a 01 40 b9  	ldr	w10, [x9]
   828e4: e8 03 1f aa  	mov	x8, xzr
   828e8: e9 03 00 91  	mov	x9, sp
   828ec: 4d 0d 00 12  	and	w13, w10, #0xf
   828f0: 0e 06 80 52  	mov	w14, #48
   828f4: 4c 7d 04 53  	lsr	w12, w10, #4
   828f8: 4e 0d 00 33  	bfxil	w14, w10, #0, #4
   828fc: aa dd 00 11  	add	w10, w13, #55
   82900: bf 29 00 71  	cmp	w13, #10
   82904: 2b 01 08 8b  	add	x11, x9, x8
   82908: ca 31 8a 1a  	csel	w10, w14, w10, lo
   8290c: 6a fd 01 39  	strb	w10, [x11, #127]
   82910: 08 05 00 d1  	sub	x8, x8, #1
   82914: ea 03 0c 2a  	mov	w10, w12
   82918: ac fe ff 35  	cbnz	w12, 0x828ec <_ZN42_$LT$$RF$T$u20$as$u20$core..fmt..Debug$GT$3fmt17h0ce5f74af94e46edE+0x114>
   8291c: 00 01 02 91  	add	x0, x8, #128
   82920: 1f 04 02 f1  	cmp	x0, #129
   82924: 22 08 00 54  	b.hs	0x82a28 <_ZN42_$LT$$RF$T$u20$as$u20$core..fmt..Debug$GT$3fmt17h0ce5f74af94e46edE+0x250>
   82928: e9 03 00 91  	mov	x9, sp
   8292c: e4 03 08 cb  	neg	x4, x8
   82930: 28 01 08 8b  	add	x8, x9, x8
   82934: 03 01 02 91  	add	x3, x8, #128
   82938: 08 00 00 b0  	adrp	x8, 0x83000 <_ZN42_$LT$$RF$T$u20$as$u20$core..fmt..Debug$GT$3fmt17h0ce5f74af94e46edE+0x164>
   8293c: 08 81 1d 91  	add	x8, x8, #1888
   82940: 42 00 80 52  	mov	w2, #2
   82944: e0 03 01 aa  	mov	x0, x1
   82948: e1 03 08 aa  	mov	x1, x8
   8294c: 4d f8 ff 97  	bl	0x80a80 <_ZN4core3fmt9Formatter12pad_integral17h4be5fae25bf478d6E>
   82950: fe 43 40 f9  	ldr	x30, [sp, #128]
   82954: ff 43 02 91  	add	sp, sp, #144
   82958: c0 03 5f d6  	ret
   8295c: e9 04 80 52  	mov	w9, #39
   82960: 1f 8d 01 f1  	cmp	x8, #99
   82964: 69 02 00 54  	b.ls	0x829b0 <_ZN42_$LT$$RF$T$u20$as$u20$core..fmt..Debug$GT$3fmt17h0ce5f74af94e46edE+0x1d8>
   82968: eb a3 90 52  	mov	w11, #34079
   8296c: 0a 3d 00 12  	and	w10, w8, #0xffff
   82970: 6b 3d aa 72  	movk	w11, #20971, lsl #16
   82974: 4a 7d ab 9b  	umull	x10, w10, w11
   82978: 6c 0c 80 12  	mov	w12, #-100
   8297c: 0b 00 00 b0  	adrp	x11, 0x83000 <_ZN42_$LT$$RF$T$u20$as$u20$core..fmt..Debug$GT$3fmt17h0ce5f74af94e46edE+0x1a8>
   82980: 4a fd 65 d3  	lsr	x10, x10, #37
   82984: 6b 69 17 91  	add	x11, x11, #1498
   82988: 48 21 0c 1b  	madd	w8, w10, w12, w8
   8298c: 68 25 28 8b  	add	x8, x11, w8, uxth #1
   82990: 0b 05 40 39  	ldrb	w11, [x8, #1]
   82994: 08 01 40 39  	ldrb	w8, [x8]
   82998: 29 09 00 d1  	sub	x9, x9, #2
   8299c: ec 03 00 91  	mov	x12, sp
   829a0: 8c 01 09 8b  	add	x12, x12, x9
   829a4: 88 01 00 39  	strb	w8, [x12]
   829a8: e8 03 0a aa  	mov	x8, x10
   829ac: 8b 05 00 39  	strb	w11, [x12, #1]
   829b0: 1f 29 00 f1  	cmp	x8, #10
   829b4: ca 00 00 54  	b.ge	0x829cc <_ZN42_$LT$$RF$T$u20$as$u20$core..fmt..Debug$GT$3fmt17h0ce5f74af94e46edE+0x1f4>
   829b8: 29 05 00 d1  	sub	x9, x9, #1
   829bc: 08 c1 00 11  	add	w8, w8, #48
   829c0: ea 03 00 91  	mov	x10, sp
   829c4: 48 69 29 38  	strb	w8, [x10, x9]
   829c8: 0b 00 00 14  	b	0x829f4 <_ZN42_$LT$$RF$T$u20$as$u20$core..fmt..Debug$GT$3fmt17h0ce5f74af94e46edE+0x21c>
   829cc: 0a 00 00 b0  	adrp	x10, 0x83000 <_ZN42_$LT$$RF$T$u20$as$u20$core..fmt..Debug$GT$3fmt17h0ce5f74af94e46edE+0x1f8>
   829d0: 4a 69 17 91  	add	x10, x10, #1498
   829d4: 48 05 08 8b  	add	x8, x10, x8, lsl #1
   829d8: 0a 05 40 39  	ldrb	w10, [x8, #1]
   829dc: 08 01 40 39  	ldrb	w8, [x8]
   829e0: 29 09 00 d1  	sub	x9, x9, #2
   829e4: eb 03 00 91  	mov	x11, sp
   829e8: 6b 01 09 8b  	add	x11, x11, x9
   829ec: 6a 05 00 39  	strb	w10, [x11, #1]
   829f0: 68 01 00 39  	strb	w8, [x11]
   829f4: e8 03 00 91  	mov	x8, sp
   829f8: 03 01 09 8b  	add	x3, x8, x9
   829fc: 08 00 00 b0  	adrp	x8, 0x83000 <_ZN42_$LT$$RF$T$u20$as$u20$core..fmt..Debug$GT$3fmt17h0ce5f74af94e46edE+0x228>
   82a00: ea 04 80 52  	mov	w10, #39
   82a04: 08 21 15 91  	add	x8, x8, #1352
   82a08: 44 01 09 cb  	sub	x4, x10, x9
   82a0c: e0 03 01 aa  	mov	x0, x1
   82a10: e1 03 08 aa  	mov	x1, x8
   82a14: e2 03 1f aa  	mov	x2, xzr
   82a18: 1a f8 ff 97  	bl	0x80a80 <_ZN4core3fmt9Formatter12pad_integral17h4be5fae25bf478d6E>
   82a1c: fe 43 40 f9  	ldr	x30, [sp, #128]
   82a20: ff 43 02 91  	add	sp, sp, #144
   82a24: c0 03 5f d6  	ret
   82a28: 02 00 00 b0  	adrp	x2, 0x83000 <_ZN42_$LT$$RF$T$u20$as$u20$core..fmt..Debug$GT$3fmt17h0ce5f74af94e46edE+0x254>
   82a2c: 42 20 1d 91  	add	x2, x2, #1864
   82a30: 01 10 80 52  	mov	w1, #128
   82a34: e2 f8 ff 97  	bl	0x80dbc <_ZN4core5slice5index26slice_start_index_len_fail17ha5c8a54d8fb05d93E>
   82a38: 20 00 20 d4  	brk	#0x1

0000000000082a3c <_ZN42_$LT$$RF$T$u20$as$u20$core..fmt..Debug$GT$3fmt17h4bfed742e82838c6E>:
   82a3c: ff 83 02 d1  	sub	sp, sp, #160
   82a40: fd 7b 04 a9  	stp	x29, x30, [sp, #64]
   82a44: fc 6f 05 a9  	stp	x28, x27, [sp, #80]
   82a48: fa 67 06 a9  	stp	x26, x25, [sp, #96]
   82a4c: f8 5f 07 a9  	stp	x24, x23, [sp, #112]
   82a50: f6 57 08 a9  	stp	x22, x21, [sp, #128]
   82a54: f4 4f 09 a9  	stp	x20, x19, [sp, #144]
   82a58: 08 00 40 f9  	ldr	x8, [x0]
   82a5c: 33 24 42 a9  	ldp	x19, x9, [x1, #32]
   82a60: 41 04 80 52  	mov	w1, #34
   82a64: 0a 21 40 a9  	ldp	x10, x8, [x8]
   82a68: 22 11 40 f9  	ldr	x2, [x9, #32]
   82a6c: e0 03 13 aa  	mov	x0, x19
   82a70: e9 13 00 f9  	str	x9, [sp, #32]
   82a74: e8 ab 02 a9  	stp	x8, x10, [sp, #40]
   82a78: e2 1f 00 f9  	str	x2, [sp, #56]
   82a7c: 40 00 3f d6  	blr	x2
   82a80: 40 01 00 36  	tbz	w0, #0, 0x82aa8 <_ZN42_$LT$$RF$T$u20$as$u20$core..fmt..Debug$GT$3fmt17h4bfed742e82838c6E+0x6c>
   82a84: f4 4f 49 a9  	ldp	x20, x19, [sp, #144]
   82a88: f6 57 48 a9  	ldp	x22, x21, [sp, #128]
   82a8c: f8 5f 47 a9  	ldp	x24, x23, [sp, #112]
   82a90: fa 67 46 a9  	ldp	x26, x25, [sp, #96]
   82a94: fc 6f 45 a9  	ldp	x28, x27, [sp, #80]
   82a98: fd 7b 44 a9  	ldp	x29, x30, [sp, #64]
   82a9c: 20 00 80 52  	mov	w0, #1
   82aa0: ff 83 02 91  	add	sp, sp, #160
   82aa4: c0 03 5f d6  	ret
   82aa8: eb 17 40 f9  	ldr	x11, [sp, #40]
   82aac: cb 1c 00 b4  	cbz	x11, 0x82e44 <_ZN42_$LT$$RF$T$u20$as$u20$core..fmt..Debug$GT$3fmt17h4bfed742e82838c6E+0x408>
   82ab0: e8 1b 40 f9  	ldr	x8, [sp, #48]
   82ab4: 1b 00 00 b0  	adrp	x27, 0x83000 <_ZN42_$LT$$RF$T$u20$as$u20$core..fmt..Debug$GT$3fmt17h4bfed742e82838c6E+0x7c>
   82ab8: 0e 00 00 b0  	adrp	x14, 0x83000 <_ZN42_$LT$$RF$T$u20$as$u20$core..fmt..Debug$GT$3fmt17h4bfed742e82838c6E+0x80>
   82abc: f8 03 1f aa  	mov	x24, xzr
   82ac0: e3 03 1f aa  	mov	x3, xzr
   82ac4: 15 01 0b 8b  	add	x21, x8, x11
   82ac8: 7b 4f 0e 91  	add	x27, x27, #915
   82acc: ce e5 0d 91  	add	x14, x14, #889
   82ad0: ec 03 08 aa  	mov	x12, x8
   82ad4: ea 03 08 aa  	mov	x10, x8
   82ad8: fc 03 0a aa  	mov	x28, x10
   82adc: 88 17 c0 38  	ldrsb	w8, [x28], #1
   82ae0: 1d 1d 00 12  	and	w29, w8, #0xff
   82ae4: 68 00 f8 37  	tbnz	w8, #31, 0x82af0 <_ZN42_$LT$$RF$T$u20$as$u20$core..fmt..Debug$GT$3fmt17h4bfed742e82838c6E+0xb4>
   82ae8: ed 03 1c aa  	mov	x13, x28
   82aec: 2f 00 00 14  	b	0x82ba8 <_ZN42_$LT$$RF$T$u20$as$u20$core..fmt..Debug$GT$3fmt17h4bfed742e82838c6E+0x16c>
   82af0: 9f 03 15 eb  	cmp	x28, x21
   82af4: 80 02 00 54  	b.eq	0x82b44 <_ZN42_$LT$$RF$T$u20$as$u20$core..fmt..Debug$GT$3fmt17h4bfed742e82838c6E+0x108>
   82af8: 48 05 40 39  	ldrb	w8, [x10, #1]
   82afc: 4d 09 00 91  	add	x13, x10, #2
   82b00: 0a 15 00 12  	and	w10, w8, #0x3f
   82b04: bf 7f 03 71  	cmp	w29, #223
   82b08: a8 13 00 12  	and	w8, w29, #0x1f
   82b0c: 69 02 00 54  	b.ls	0x82b58 <_ZN42_$LT$$RF$T$u20$as$u20$core..fmt..Debug$GT$3fmt17h4bfed742e82838c6E+0x11c>
   82b10: bf 01 15 eb  	cmp	x13, x21
   82b14: a0 02 00 54  	b.eq	0x82b68 <_ZN42_$LT$$RF$T$u20$as$u20$core..fmt..Debug$GT$3fmt17h4bfed742e82838c6E+0x12c>
   82b18: a9 15 40 38  	ldrb	w9, [x13], #1
   82b1c: 29 15 00 12  	and	w9, w9, #0x3f
   82b20: bf c3 03 71  	cmp	w29, #240
   82b24: 49 15 1a 33  	bfi	w9, w10, #6, #6
   82b28: a3 02 00 54  	b.lo	0x82b7c <_ZN42_$LT$$RF$T$u20$as$u20$core..fmt..Debug$GT$3fmt17h4bfed742e82838c6E+0x140>
   82b2c: bf 01 15 eb  	cmp	x13, x21
   82b30: e0 02 00 54  	b.eq	0x82b8c <_ZN42_$LT$$RF$T$u20$as$u20$core..fmt..Debug$GT$3fmt17h4bfed742e82838c6E+0x150>
   82b34: aa 15 40 38  	ldrb	w10, [x13], #1
   82b38: 4a 15 00 12  	and	w10, w10, #0x3f
   82b3c: fc 03 0d aa  	mov	x28, x13
   82b40: 15 00 00 14  	b	0x82b94 <_ZN42_$LT$$RF$T$u20$as$u20$core..fmt..Debug$GT$3fmt17h4bfed742e82838c6E+0x158>
   82b44: ea 03 1f 2a  	mov	w10, wzr
   82b48: ed 03 15 aa  	mov	x13, x21
   82b4c: bf 7f 03 71  	cmp	w29, #223
   82b50: a8 13 00 12  	and	w8, w29, #0x1f
   82b54: e8 fd ff 54  	b.hi	0x82b10 <_ZN42_$LT$$RF$T$u20$as$u20$core..fmt..Debug$GT$3fmt17h4bfed742e82838c6E+0xd4>
   82b58: 0a 11 1a 33  	bfi	w10, w8, #6, #5
   82b5c: fc 03 0d aa  	mov	x28, x13
   82b60: fd 03 0a 2a  	mov	w29, w10
   82b64: 11 00 00 14  	b	0x82ba8 <_ZN42_$LT$$RF$T$u20$as$u20$core..fmt..Debug$GT$3fmt17h4bfed742e82838c6E+0x16c>
   82b68: e9 03 1f 2a  	mov	w9, wzr
   82b6c: ed 03 15 aa  	mov	x13, x21
   82b70: bf c3 03 71  	cmp	w29, #240
   82b74: 49 15 1a 33  	bfi	w9, w10, #6, #6
   82b78: a2 fd ff 54  	b.hs	0x82b2c <_ZN42_$LT$$RF$T$u20$as$u20$core..fmt..Debug$GT$3fmt17h4bfed742e82838c6E+0xf0>
   82b7c: 09 11 14 33  	bfi	w9, w8, #12, #5
   82b80: fc 03 0d aa  	mov	x28, x13
   82b84: fd 03 09 2a  	mov	w29, w9
   82b88: 08 00 00 14  	b	0x82ba8 <_ZN42_$LT$$RF$T$u20$as$u20$core..fmt..Debug$GT$3fmt17h4bfed742e82838c6E+0x16c>
   82b8c: ea 03 1f 2a  	mov	w10, wzr
   82b90: fc 03 15 aa  	mov	x28, x21
   82b94: 08 09 0e 53  	ubfiz	w8, w8, #18, #3
   82b98: 28 2d 1a 33  	bfi	w8, w9, #6, #12
   82b9c: 1d 01 0a 2a  	orr	w29, w8, w10
   82ba0: bf 43 44 71  	cmp	w29, #272, lsl #12
   82ba4: 00 14 00 54  	b.eq	0x82e24 <_ZN42_$LT$$RF$T$u20$as$u20$core..fmt..Debug$GT$3fmt17h4bfed742e82838c6E+0x3e8>
   82ba8: a8 27 00 51  	sub	w8, w29, #9
   82bac: 1f 65 00 71  	cmp	w8, #25
   82bb0: ed 33 01 a9  	stp	x13, x12, [sp, #16]
   82bb4: fc 07 00 f9  	str	x28, [sp, #8]
   82bb8: 48 01 00 54  	b.hi	0x82be0 <_ZN42_$LT$$RF$T$u20$as$u20$core..fmt..Debug$GT$3fmt17h4bfed742e82838c6E+0x1a4>
   82bbc: c9 00 00 10  	adr	x9, #24
   82bc0: ca 69 68 38  	ldrb	w10, [x14, x8]
   82bc4: 29 09 0a 8b  	add	x9, x9, x10, lsl #2
   82bc8: 97 0e 80 52  	mov	w23, #116
   82bcc: 59 00 80 52  	mov	w25, #2
   82bd0: 20 01 1f d6  	br	x9
   82bd4: d7 0d 80 52  	mov	w23, #110
   82bd8: 59 00 80 52  	mov	w25, #2
   82bdc: 1f 00 00 14  	b	0x82c58 <_ZN42_$LT$$RF$T$u20$as$u20$core..fmt..Debug$GT$3fmt17h4bfed742e82838c6E+0x21c>
   82be0: bf 73 01 71  	cmp	w29, #92
   82be4: 81 00 00 54  	b.ne	0x82bf4 <_ZN42_$LT$$RF$T$u20$as$u20$core..fmt..Debug$GT$3fmt17h4bfed742e82838c6E+0x1b8>
   82be8: 59 00 80 52  	mov	w25, #2
   82bec: f7 03 1d 2a  	mov	w23, w29
   82bf0: 1a 00 00 14  	b	0x82c58 <_ZN42_$LT$$RF$T$u20$as$u20$core..fmt..Debug$GT$3fmt17h4bfed742e82838c6E+0x21c>
   82bf4: e0 03 1d 2a  	mov	w0, w29
   82bf8: f4 03 03 aa  	mov	x20, x3
   82bfc: fa fc ff 97  	bl	0x81fe4 <_ZN4core7unicode12unicode_data15grapheme_extend6lookup17h0525d17e88c4ad5eE>
   82c00: 80 01 00 37  	tbnz	w0, #0, 0x82c30 <_ZN42_$LT$$RF$T$u20$as$u20$core..fmt..Debug$GT$3fmt17h4bfed742e82838c6E+0x1f4>
   82c04: e0 03 1d 2a  	mov	w0, w29
   82c08: 45 fd ff 97  	bl	0x8211c <_ZN4core7unicode9printable12is_printable17h809bc46350007ff2E>
   82c0c: 20 01 00 36  	tbz	w0, #0, 0x82c30 <_ZN42_$LT$$RF$T$u20$as$u20$core..fmt..Debug$GT$3fmt17h4bfed742e82838c6E+0x1f4>
   82c10: eb 17 40 f9  	ldr	x11, [sp, #40]
   82c14: ea 27 41 a9  	ldp	x10, x9, [sp, #16]
   82c18: fc 03 15 aa  	mov	x28, x21
   82c1c: f5 03 14 aa  	mov	x21, x20
   82c20: 78 00 00 14  	b	0x82e00 <_ZN42_$LT$$RF$T$u20$as$u20$core..fmt..Debug$GT$3fmt17h4bfed742e82838c6E+0x3c4>
   82c24: 57 0e 80 52  	mov	w23, #114
   82c28: 59 00 80 52  	mov	w25, #2
   82c2c: 0b 00 00 14  	b	0x82c58 <_ZN42_$LT$$RF$T$u20$as$u20$core..fmt..Debug$GT$3fmt17h4bfed742e82838c6E+0x21c>
   82c30: a8 03 00 32  	orr	w8, w29, #0x1
   82c34: eb 17 40 f9  	ldr	x11, [sp, #40]
   82c38: 08 11 c0 5a  	clz	w8, w8
   82c3c: e9 03 1d 2a  	mov	w9, w29
   82c40: aa 00 c0 d2  	mov	x10, #21474836480
   82c44: 08 7d 02 53  	lsr	w8, w8, #2
   82c48: 3a 01 0a aa  	orr	x26, x9, x10
   82c4c: 16 09 00 52  	eor	w22, w8, #0x7
   82c50: 79 00 80 52  	mov	w25, #3
   82c54: e3 03 14 aa  	mov	x3, x20
   82c58: 7f 00 18 eb  	cmp	x3, x24
   82c5c: 23 12 00 54  	b.lo	0x82ea0 <_ZN42_$LT$$RF$T$u20$as$u20$core..fmt..Debug$GT$3fmt17h4bfed742e82838c6E+0x464>
   82c60: 38 01 00 b4  	cbz	x24, 0x82c84 <_ZN42_$LT$$RF$T$u20$as$u20$core..fmt..Debug$GT$3fmt17h4bfed742e82838c6E+0x248>
   82c64: 1f 03 0b eb  	cmp	x24, x11
   82c68: c2 00 00 54  	b.hs	0x82c80 <_ZN42_$LT$$RF$T$u20$as$u20$core..fmt..Debug$GT$3fmt17h4bfed742e82838c6E+0x244>
   82c6c: e8 1b 40 f9  	ldr	x8, [sp, #48]
   82c70: 08 69 f8 38  	ldrsb	w8, [x8, x24]
   82c74: 1f 01 01 31  	cmn	w8, #64
   82c78: 6a 00 00 54  	b.ge	0x82c84 <_ZN42_$LT$$RF$T$u20$as$u20$core..fmt..Debug$GT$3fmt17h4bfed742e82838c6E+0x248>
   82c7c: 89 00 00 14  	b	0x82ea0 <_ZN42_$LT$$RF$T$u20$as$u20$core..fmt..Debug$GT$3fmt17h4bfed742e82838c6E+0x464>
   82c80: 01 11 00 54  	b.ne	0x82ea0 <_ZN42_$LT$$RF$T$u20$as$u20$core..fmt..Debug$GT$3fmt17h4bfed742e82838c6E+0x464>
   82c84: 23 01 00 b4  	cbz	x3, 0x82ca8 <_ZN42_$LT$$RF$T$u20$as$u20$core..fmt..Debug$GT$3fmt17h4bfed742e82838c6E+0x26c>
   82c88: 7f 00 0b eb  	cmp	x3, x11
   82c8c: 22 01 00 54  	b.hs	0x82cb0 <_ZN42_$LT$$RF$T$u20$as$u20$core..fmt..Debug$GT$3fmt17h4bfed742e82838c6E+0x274>
   82c90: e8 1b 40 f9  	ldr	x8, [sp, #48]
   82c94: f4 03 03 aa  	mov	x20, x3
   82c98: 08 69 e3 38  	ldrsb	w8, [x8, x3]
   82c9c: 1f 05 01 31  	cmn	w8, #65
   82ca0: cc 00 00 54  	b.gt	0x82cb8 <_ZN42_$LT$$RF$T$u20$as$u20$core..fmt..Debug$GT$3fmt17h4bfed742e82838c6E+0x27c>
   82ca4: 7f 00 00 14  	b	0x82ea0 <_ZN42_$LT$$RF$T$u20$as$u20$core..fmt..Debug$GT$3fmt17h4bfed742e82838c6E+0x464>
   82ca8: f4 03 1f aa  	mov	x20, xzr
   82cac: 03 00 00 14  	b	0x82cb8 <_ZN42_$LT$$RF$T$u20$as$u20$core..fmt..Debug$GT$3fmt17h4bfed742e82838c6E+0x27c>
   82cb0: f4 03 0b aa  	mov	x20, x11
   82cb4: 61 0f 00 54  	b.ne	0x82ea0 <_ZN42_$LT$$RF$T$u20$as$u20$core..fmt..Debug$GT$3fmt17h4bfed742e82838c6E+0x464>
   82cb8: e8 13 40 f9  	ldr	x8, [sp, #32]
   82cbc: e9 1b 40 f9  	ldr	x9, [sp, #48]
   82cc0: 82 02 18 cb  	sub	x2, x20, x24
   82cc4: e0 03 13 aa  	mov	x0, x19
   82cc8: 08 0d 40 f9  	ldr	x8, [x8, #24]
   82ccc: 21 01 18 8b  	add	x1, x9, x24
   82cd0: fc 03 15 aa  	mov	x28, x21
   82cd4: f5 03 03 aa  	mov	x21, x3
   82cd8: 00 01 3f d6  	blr	x8
   82cdc: 18 00 00 b0  	adrp	x24, 0x83000 <_ZN42_$LT$$RF$T$u20$as$u20$core..fmt..Debug$GT$3fmt17h4bfed742e82838c6E+0x2a4>
   82ce0: 18 5f 0e 91  	add	x24, x24, #919
   82ce4: 00 01 00 36  	tbz	w0, #0, 0x82d04 <_ZN42_$LT$$RF$T$u20$as$u20$core..fmt..Debug$GT$3fmt17h4bfed742e82838c6E+0x2c8>
   82ce8: 67 ff ff 17  	b	0x82a84 <_ZN42_$LT$$RF$T$u20$as$u20$core..fmt..Debug$GT$3fmt17h4bfed742e82838c6E+0x48>
   82cec: f9 03 1f 2a  	mov	w25, wzr
   82cf0: e1 03 17 2a  	mov	w1, w23
   82cf4: e2 1f 40 f9  	ldr	x2, [sp, #56]
   82cf8: e0 03 13 aa  	mov	x0, x19
   82cfc: 40 00 3f d6  	blr	x2
   82d00: 20 ec 07 37  	tbnz	w0, #0, 0x82a84 <_ZN42_$LT$$RF$T$u20$as$u20$core..fmt..Debug$GT$3fmt17h4bfed742e82838c6E+0x48>
   82d04: e8 03 19 2a  	mov	w8, w25
   82d08: 29 ff ff 10  	adr	x9, #-28
   82d0c: 6a 6b 68 38  	ldrb	w10, [x27, x8]
   82d10: 29 09 0a 8b  	add	x9, x9, x10, lsl #2
   82d14: 39 00 80 52  	mov	w25, #1
   82d18: 81 0b 80 52  	mov	w1, #92
   82d1c: 20 01 1f d6  	br	x9
   82d20: 48 9f 60 d3  	ubfx	x8, x26, #32, #8
   82d24: 89 00 00 10  	adr	x9, #16
   82d28: 0a 6b 68 38  	ldrb	w10, [x24, x8]
   82d2c: 29 09 0a 8b  	add	x9, x9, x10, lsl #2
   82d30: 20 01 1f d6  	br	x9
   82d34: 5a df 58 92  	and	x26, x26, #0xffffff00ffffffff
   82d38: 79 00 80 52  	mov	w25, #3
   82d3c: a1 0f 80 52  	mov	w1, #125
   82d40: ed ff ff 17  	b	0x82cf4 <_ZN42_$LT$$RF$T$u20$as$u20$core..fmt..Debug$GT$3fmt17h4bfed742e82838c6E+0x2b8>
   82d44: 48 df 58 92  	and	x8, x26, #0xffffff00ffffffff
   82d48: 79 00 80 52  	mov	w25, #3
   82d4c: 1a 05 60 b2  	orr	x26, x8, #0x300000000
   82d50: a1 0e 80 52  	mov	w1, #117
   82d54: e8 ff ff 17  	b	0x82cf4 <_ZN42_$LT$$RF$T$u20$as$u20$core..fmt..Debug$GT$3fmt17h4bfed742e82838c6E+0x2b8>
   82d58: c8 0a 1e 53  	ubfiz	w8, w22, #2, #3
   82d5c: 48 27 c8 1a  	lsr	w8, w26, w8
   82d60: 08 0d 00 12  	and	w8, w8, #0xf
   82d64: 1f 29 00 71  	cmp	w8, #10
   82d68: e9 0a 80 52  	mov	w9, #87
   82d6c: 0a 06 80 52  	mov	w10, #48
   82d70: 49 31 89 1a  	csel	w9, w10, w9, lo
   82d74: 21 01 08 0b  	add	w1, w9, w8
   82d78: d6 01 00 b4  	cbz	x22, 0x82db0 <_ZN42_$LT$$RF$T$u20$as$u20$core..fmt..Debug$GT$3fmt17h4bfed742e82838c6E+0x374>
   82d7c: d6 06 00 d1  	sub	x22, x22, #1
   82d80: 79 00 80 52  	mov	w25, #3
   82d84: dc ff ff 17  	b	0x82cf4 <_ZN42_$LT$$RF$T$u20$as$u20$core..fmt..Debug$GT$3fmt17h4bfed742e82838c6E+0x2b8>
   82d88: 48 df 58 92  	and	x8, x26, #0xffffff00ffffffff
   82d8c: 79 00 80 52  	mov	w25, #3
   82d90: 1a 01 5f b2  	orr	x26, x8, #0x200000000
   82d94: 61 0f 80 52  	mov	w1, #123
   82d98: d7 ff ff 17  	b	0x82cf4 <_ZN42_$LT$$RF$T$u20$as$u20$core..fmt..Debug$GT$3fmt17h4bfed742e82838c6E+0x2b8>
   82d9c: 48 df 58 92  	and	x8, x26, #0xffffff00ffffffff
   82da0: 79 00 80 52  	mov	w25, #3
   82da4: 1a 01 5e b2  	orr	x26, x8, #0x400000000
   82da8: 81 0b 80 52  	mov	w1, #92
   82dac: d2 ff ff 17  	b	0x82cf4 <_ZN42_$LT$$RF$T$u20$as$u20$core..fmt..Debug$GT$3fmt17h4bfed742e82838c6E+0x2b8>
   82db0: 48 df 58 92  	and	x8, x26, #0xffffff00ffffffff
   82db4: 1a 01 60 b2  	orr	x26, x8, #0x100000000
   82db8: 79 00 80 52  	mov	w25, #3
   82dbc: ce ff ff 17  	b	0x82cf4 <_ZN42_$LT$$RF$T$u20$as$u20$core..fmt..Debug$GT$3fmt17h4bfed742e82838c6E+0x2b8>
   82dc0: bf 03 02 71  	cmp	w29, #128
   82dc4: a2 00 00 54  	b.hs	0x82dd8 <_ZN42_$LT$$RF$T$u20$as$u20$core..fmt..Debug$GT$3fmt17h4bfed742e82838c6E+0x39c>
   82dc8: eb 17 40 f9  	ldr	x11, [sp, #40]
   82dcc: ea 27 41 a9  	ldp	x10, x9, [sp, #16]
   82dd0: 28 00 80 52  	mov	w8, #1
   82dd4: 0a 00 00 14  	b	0x82dfc <_ZN42_$LT$$RF$T$u20$as$u20$core..fmt..Debug$GT$3fmt17h4bfed742e82838c6E+0x3c0>
   82dd8: eb 17 40 f9  	ldr	x11, [sp, #40]
   82ddc: ea 27 41 a9  	ldp	x10, x9, [sp, #16]
   82de0: bf 03 20 71  	cmp	w29, #2048
   82de4: 62 00 00 54  	b.hs	0x82df0 <_ZN42_$LT$$RF$T$u20$as$u20$core..fmt..Debug$GT$3fmt17h4bfed742e82838c6E+0x3b4>
   82de8: 48 00 80 52  	mov	w8, #2
   82dec: 04 00 00 14  	b	0x82dfc <_ZN42_$LT$$RF$T$u20$as$u20$core..fmt..Debug$GT$3fmt17h4bfed742e82838c6E+0x3c0>
   82df0: bf 43 40 71  	cmp	w29, #16, lsl #12
   82df4: 68 00 80 52  	mov	w8, #3
   82df8: 08 35 88 9a  	cinc	x8, x8, hs
   82dfc: 18 01 14 8b  	add	x24, x8, x20
   82e00: a8 02 09 cb  	sub	x8, x21, x9
   82e04: e9 07 40 f9  	ldr	x9, [sp, #8]
   82e08: 0e 00 00 b0  	adrp	x14, 0x83000 <_ZN42_$LT$$RF$T$u20$as$u20$core..fmt..Debug$GT$3fmt17h4bfed742e82838c6E+0x3d0>
   82e0c: f5 03 1c aa  	mov	x21, x28
   82e10: 5f 01 1c eb  	cmp	x10, x28
   82e14: 03 01 09 8b  	add	x3, x8, x9
   82e18: ec 03 0a aa  	mov	x12, x10
   82e1c: ce e5 0d 91  	add	x14, x14, #889
   82e20: c1 e5 ff 54  	b.ne	0x82ad8 <_ZN42_$LT$$RF$T$u20$as$u20$core..fmt..Debug$GT$3fmt17h4bfed742e82838c6E+0x9c>
   82e24: 38 01 00 b4  	cbz	x24, 0x82e48 <_ZN42_$LT$$RF$T$u20$as$u20$core..fmt..Debug$GT$3fmt17h4bfed742e82838c6E+0x40c>
   82e28: 1f 03 0b eb  	cmp	x24, x11
   82e2c: 42 03 00 54  	b.hs	0x82e94 <_ZN42_$LT$$RF$T$u20$as$u20$core..fmt..Debug$GT$3fmt17h4bfed742e82838c6E+0x458>
   82e30: e8 1b 40 f9  	ldr	x8, [sp, #48]
   82e34: 08 69 f8 38  	ldrsb	w8, [x8, x24]
   82e38: 1f 05 01 31  	cmn	w8, #65
   82e3c: 6c 00 00 54  	b.gt	0x82e48 <_ZN42_$LT$$RF$T$u20$as$u20$core..fmt..Debug$GT$3fmt17h4bfed742e82838c6E+0x40c>
   82e40: 1f 00 00 14  	b	0x82ebc <_ZN42_$LT$$RF$T$u20$as$u20$core..fmt..Debug$GT$3fmt17h4bfed742e82838c6E+0x480>
   82e44: f8 03 1f aa  	mov	x24, xzr
   82e48: e8 13 40 f9  	ldr	x8, [sp, #32]
   82e4c: e9 1b 40 f9  	ldr	x9, [sp, #48]
   82e50: 62 01 18 cb  	sub	x2, x11, x24
   82e54: e0 03 13 aa  	mov	x0, x19
   82e58: 08 0d 40 f9  	ldr	x8, [x8, #24]
   82e5c: 21 01 18 8b  	add	x1, x9, x24
   82e60: 00 01 3f d6  	blr	x8
   82e64: 00 e1 07 37  	tbnz	w0, #0, 0x82a84 <_ZN42_$LT$$RF$T$u20$as$u20$core..fmt..Debug$GT$3fmt17h4bfed742e82838c6E+0x48>
   82e68: e0 03 13 aa  	mov	x0, x19
   82e6c: e2 1f 40 f9  	ldr	x2, [sp, #56]
   82e70: f4 4f 49 a9  	ldp	x20, x19, [sp, #144]
   82e74: f6 57 48 a9  	ldp	x22, x21, [sp, #128]
   82e78: f8 5f 47 a9  	ldp	x24, x23, [sp, #112]
   82e7c: fa 67 46 a9  	ldp	x26, x25, [sp, #96]
   82e80: fc 6f 45 a9  	ldp	x28, x27, [sp, #80]
   82e84: fd 7b 44 a9  	ldp	x29, x30, [sp, #64]
   82e88: 41 04 80 52  	mov	w1, #34
   82e8c: ff 83 02 91  	add	sp, sp, #160
   82e90: 40 00 1f d6  	br	x2
   82e94: 41 01 00 54  	b.ne	0x82ebc <_ZN42_$LT$$RF$T$u20$as$u20$core..fmt..Debug$GT$3fmt17h4bfed742e82838c6E+0x480>
   82e98: f8 03 0b aa  	mov	x24, x11
   82e9c: eb ff ff 17  	b	0x82e48 <_ZN42_$LT$$RF$T$u20$as$u20$core..fmt..Debug$GT$3fmt17h4bfed742e82838c6E+0x40c>
   82ea0: e0 1b 40 f9  	ldr	x0, [sp, #48]
   82ea4: 04 00 00 d0  	adrp	x4, 0x84000 <_ZN42_$LT$$RF$T$u20$as$u20$core..fmt..Debug$GT$3fmt17h4bfed742e82838c6E+0x470>
   82ea8: 84 e0 0e 91  	add	x4, x4, #952
   82eac: e1 03 0b aa  	mov	x1, x11
   82eb0: e2 03 18 aa  	mov	x2, x24
   82eb4: 4d fa ff 97  	bl	0x817e8 <_ZN4core3str16slice_error_fail17hf7d2a92268a53d29E>
   82eb8: 20 00 20 d4  	brk	#0x1
   82ebc: e0 1b 40 f9  	ldr	x0, [sp, #48]
   82ec0: 04 00 00 d0  	adrp	x4, 0x84000 <_ZN42_$LT$$RF$T$u20$as$u20$core..fmt..Debug$GT$3fmt17h4bfed742e82838c6E+0x48c>
   82ec4: 84 80 0e 91  	add	x4, x4, #928
   82ec8: e1 03 0b aa  	mov	x1, x11
   82ecc: e2 03 18 aa  	mov	x2, x24
   82ed0: e3 03 0b aa  	mov	x3, x11
   82ed4: 45 fa ff 97  	bl	0x817e8 <_ZN4core3str16slice_error_fail17hf7d2a92268a53d29E>
   82ed8: 20 00 20 d4  	brk	#0x1

0000000000082edc <_ZN71_$LT$core..panic..panic_info..PanicInfo$u20$as$u20$core..fmt..Debug$GT$3fmt17hdab5301ab1e937b8E>:
   82edc: ff 03 01 d1  	sub	sp, sp, #64
   82ee0: fe 0b 00 f9  	str	x30, [sp, #16]
   82ee4: f6 57 02 a9  	stp	x22, x21, [sp, #32]
   82ee8: f4 4f 03 a9  	stp	x20, x19, [sp, #48]
   82eec: f4 03 00 aa  	mov	x20, x0
   82ef0: 20 20 42 a9  	ldp	x0, x8, [x1, #32]
   82ef4: f3 03 01 aa  	mov	x19, x1
   82ef8: 01 00 00 d0  	adrp	x1, 0x84000 <_ZN71_$LT$core..panic..panic_info..PanicInfo$u20$as$u20$core..fmt..Debug$GT$3fmt17hdab5301ab1e937b8E+0x24>
   82efc: 21 cc 10 91  	add	x1, x1, #1075
   82f00: 08 0d 40 f9  	ldr	x8, [x8, #24]
   82f04: 22 01 80 52  	mov	w2, #9
   82f08: 95 42 00 91  	add	x21, x20, #16
   82f0c: 96 62 00 91  	add	x22, x20, #24
   82f10: 00 01 3f d6  	blr	x8
   82f14: 1f 00 00 71  	cmp	w0, #0
   82f18: 01 00 00 d0  	adrp	x1, 0x84000 <_ZN71_$LT$core..panic..panic_info..PanicInfo$u20$as$u20$core..fmt..Debug$GT$3fmt17hdab5301ab1e937b8E+0x44>
   82f1c: 04 00 00 d0  	adrp	x4, 0x84000 <_ZN71_$LT$core..panic..panic_info..PanicInfo$u20$as$u20$core..fmt..Debug$GT$3fmt17hdab5301ab1e937b8E+0x48>
   82f20: e8 07 9f 9a  	cset	x8, ne
   82f24: 21 f0 10 91  	add	x1, x1, #1084
   82f28: 84 20 11 91  	add	x4, x4, #1096
   82f2c: e0 03 00 91  	mov	x0, sp
   82f30: e3 63 00 91  	add	x3, sp, #24
   82f34: e2 00 80 52  	mov	w2, #7
   82f38: f3 23 00 a9  	stp	x19, x8, [sp]
   82f3c: f4 0f 00 f9  	str	x20, [sp, #24]
   82f40: 2c fd ff 97  	bl	0x823f0 <_ZN4core3fmt8builders11DebugStruct5field17hdc89cd457900d764E>
   82f44: 01 00 00 d0  	adrp	x1, 0x84000 <_ZN71_$LT$core..panic..panic_info..PanicInfo$u20$as$u20$core..fmt..Debug$GT$3fmt17hdab5301ab1e937b8E+0x70>
   82f48: 04 00 00 d0  	adrp	x4, 0x84000 <_ZN71_$LT$core..panic..panic_info..PanicInfo$u20$as$u20$core..fmt..Debug$GT$3fmt17hdab5301ab1e937b8E+0x74>
   82f4c: 21 a0 11 91  	add	x1, x1, #1128
   82f50: 84 c0 11 91  	add	x4, x4, #1136
   82f54: e0 03 00 91  	mov	x0, sp
   82f58: e3 63 00 91  	add	x3, sp, #24
   82f5c: e2 00 80 52  	mov	w2, #7
   82f60: f5 0f 00 f9  	str	x21, [sp, #24]
   82f64: 23 fd ff 97  	bl	0x823f0 <_ZN4core3fmt8builders11DebugStruct5field17hdc89cd457900d764E>
   82f68: 01 00 00 b0  	adrp	x1, 0x83000 <_ZN71_$LT$core..panic..panic_info..PanicInfo$u20$as$u20$core..fmt..Debug$GT$3fmt17hdab5301ab1e937b8E+0x90>
   82f6c: 04 00 00 d0  	adrp	x4, 0x84000 <_ZN71_$LT$core..panic..panic_info..PanicInfo$u20$as$u20$core..fmt..Debug$GT$3fmt17hdab5301ab1e937b8E+0x98>
   82f70: 21 84 26 91  	add	x1, x1, #2465
   82f74: 84 40 12 91  	add	x4, x4, #1168
   82f78: e0 03 00 91  	mov	x0, sp
   82f7c: e3 63 00 91  	add	x3, sp, #24
   82f80: 02 01 80 52  	mov	w2, #8
   82f84: f6 0f 00 f9  	str	x22, [sp, #24]
   82f88: 1a fd ff 97  	bl	0x823f0 <_ZN4core3fmt8builders11DebugStruct5field17hdc89cd457900d764E>
   82f8c: e8 27 40 39  	ldrb	w8, [sp, #9]
   82f90: e0 23 40 39  	ldrb	w0, [sp, #8]
   82f94: 48 02 00 34  	cbz	w8, 0x82fdc <_ZN71_$LT$core..panic..panic_info..PanicInfo$u20$as$u20$core..fmt..Debug$GT$3fmt17hdab5301ab1e937b8E+0x100>
   82f98: 60 00 00 34  	cbz	w0, 0x82fa4 <_ZN71_$LT$core..panic..panic_info..PanicInfo$u20$as$u20$core..fmt..Debug$GT$3fmt17hdab5301ab1e937b8E+0xc8>
   82f9c: 20 00 80 52  	mov	w0, #1
   82fa0: 0f 00 00 14  	b	0x82fdc <_ZN71_$LT$core..panic..panic_info..PanicInfo$u20$as$u20$core..fmt..Debug$GT$3fmt17hdab5301ab1e937b8E+0x100>
   82fa4: e8 03 40 f9  	ldr	x8, [sp]
   82fa8: 09 c1 40 39  	ldrb	w9, [x8, #48]
   82fac: c9 00 10 37  	tbnz	w9, #2, 0x82fc4 <_ZN71_$LT$core..panic..panic_info..PanicInfo$u20$as$u20$core..fmt..Debug$GT$3fmt17hdab5301ab1e937b8E+0xe8>
   82fb0: 00 25 42 a9  	ldp	x0, x9, [x8, #32]
   82fb4: 01 00 00 d0  	adrp	x1, 0x84000 <_ZN71_$LT$core..panic..panic_info..PanicInfo$u20$as$u20$core..fmt..Debug$GT$3fmt17hdab5301ab1e937b8E+0xe0>
   82fb8: 21 64 0e 91  	add	x1, x1, #921
   82fbc: 42 00 80 52  	mov	w2, #2
   82fc0: 05 00 00 14  	b	0x82fd4 <_ZN71_$LT$core..panic..panic_info..PanicInfo$u20$as$u20$core..fmt..Debug$GT$3fmt17hdab5301ab1e937b8E+0xf8>
   82fc4: 00 25 42 a9  	ldp	x0, x9, [x8, #32]
   82fc8: 01 00 00 d0  	adrp	x1, 0x84000 <_ZN71_$LT$core..panic..panic_info..PanicInfo$u20$as$u20$core..fmt..Debug$GT$3fmt17hdab5301ab1e937b8E+0xf4>
   82fcc: 21 60 0e 91  	add	x1, x1, #920
   82fd0: 22 00 80 52  	mov	w2, #1
   82fd4: 28 0d 40 f9  	ldr	x8, [x9, #24]
   82fd8: 00 01 3f d6  	blr	x8
   82fdc: f4 4f 43 a9  	ldp	x20, x19, [sp, #48]
   82fe0: f6 57 42 a9  	ldp	x22, x21, [sp, #32]
   82fe4: fe 0b 40 f9  	ldr	x30, [sp, #16]
   82fe8: 1f 00 00 71  	cmp	w0, #0
   82fec: e0 07 9f 1a  	cset	w0, ne
   82ff0: ff 03 01 91  	add	sp, sp, #64
   82ff4: c0 03 5f d6  	ret

0000000000082ff8 <_ZN42_$LT$$RF$T$u20$as$u20$core..fmt..Debug$GT$3fmt17hdb3565c8b9fbe464E>:
   82ff8: ff 03 01 d1  	sub	sp, sp, #64
   82ffc: fe 0b 00 f9  	str	x30, [sp, #16]
   83000: f6 57 02 a9  	stp	x22, x21, [sp, #32]
   83004: f4 4f 03 a9  	stp	x20, x19, [sp, #48]
   83008: 08 00 40 f9  	ldr	x8, [x0]
   8300c: 20 24 42 a9  	ldp	x0, x9, [x1, #32]
   83010: f3 03 01 aa  	mov	x19, x1
   83014: 01 00 00 90  	adrp	x1, 0x83000 <_ZN42_$LT$$RF$T$u20$as$u20$core..fmt..Debug$GT$3fmt17hdb3565c8b9fbe464E+0x1c>
   83018: 14 01 40 f9  	ldr	x20, [x8]
   8301c: 28 0d 40 f9  	ldr	x8, [x9, #24]
   83020: 21 a4 26 91  	add	x1, x1, #2473
   83024: 02 01 80 52  	mov	w2, #8
   83028: 95 42 00 91  	add	x21, x20, #16
   8302c: 96 52 00 91  	add	x22, x20, #20
   83030: 00 01 3f d6  	blr	x8
   83034: 1f 00 00 71  	cmp	w0, #0
   83038: 01 00 00 90  	adrp	x1, 0x83000 <_ZN42_$LT$$RF$T$u20$as$u20$core..fmt..Debug$GT$3fmt17hdb3565c8b9fbe464E+0x40>
   8303c: 04 00 00 b0  	adrp	x4, 0x84000 <_ZN42_$LT$$RF$T$u20$as$u20$core..fmt..Debug$GT$3fmt17hdb3565c8b9fbe464E+0x48>
   83040: e8 07 9f 9a  	cset	x8, ne
   83044: 21 58 20 91  	add	x1, x1, #2070
   83048: 84 c0 0f 91  	add	x4, x4, #1008
   8304c: e0 03 00 91  	mov	x0, sp
   83050: e3 63 00 91  	add	x3, sp, #24
   83054: 82 00 80 52  	mov	w2, #4
   83058: f3 23 00 a9  	stp	x19, x8, [sp]
   8305c: f4 0f 00 f9  	str	x20, [sp, #24]
   83060: e4 fc ff 97  	bl	0x823f0 <_ZN4core3fmt8builders11DebugStruct5field17hdc89cd457900d764E>
   83064: 13 00 00 b0  	adrp	x19, 0x84000 <_ZN42_$LT$$RF$T$u20$as$u20$core..fmt..Debug$GT$3fmt17hdb3565c8b9fbe464E+0x70>
   83068: 01 00 00 90  	adrp	x1, 0x83000 <_ZN42_$LT$$RF$T$u20$as$u20$core..fmt..Debug$GT$3fmt17hdb3565c8b9fbe464E+0x70>
   8306c: 73 42 10 91  	add	x19, x19, #1040
   83070: 21 68 20 91  	add	x1, x1, #2074
   83074: e0 03 00 91  	mov	x0, sp
   83078: e3 63 00 91  	add	x3, sp, #24
   8307c: 82 00 80 52  	mov	w2, #4
   83080: e4 03 13 aa  	mov	x4, x19
   83084: f5 0f 00 f9  	str	x21, [sp, #24]
   83088: da fc ff 97  	bl	0x823f0 <_ZN4core3fmt8builders11DebugStruct5field17hdc89cd457900d764E>
   8308c: 01 00 00 b0  	adrp	x1, 0x84000 <_ZN42_$LT$$RF$T$u20$as$u20$core..fmt..Debug$GT$3fmt17hdb3565c8b9fbe464E+0x98>
   83090: 21 c0 10 91  	add	x1, x1, #1072
   83094: e0 03 00 91  	mov	x0, sp
   83098: e3 63 00 91  	add	x3, sp, #24
   8309c: 62 00 80 52  	mov	w2, #3
   830a0: e4 03 13 aa  	mov	x4, x19
   830a4: f6 0f 00 f9  	str	x22, [sp, #24]
   830a8: d2 fc ff 97  	bl	0x823f0 <_ZN4core3fmt8builders11DebugStruct5field17hdc89cd457900d764E>
   830ac: e8 27 40 39  	ldrb	w8, [sp, #9]
   830b0: e0 23 40 39  	ldrb	w0, [sp, #8]
   830b4: 48 02 00 34  	cbz	w8, 0x830fc <_ZN42_$LT$$RF$T$u20$as$u20$core..fmt..Debug$GT$3fmt17hdb3565c8b9fbe464E+0x104>
   830b8: 60 00 00 34  	cbz	w0, 0x830c4 <_ZN42_$LT$$RF$T$u20$as$u20$core..fmt..Debug$GT$3fmt17hdb3565c8b9fbe464E+0xcc>
   830bc: 20 00 80 52  	mov	w0, #1
   830c0: 0f 00 00 14  	b	0x830fc <_ZN42_$LT$$RF$T$u20$as$u20$core..fmt..Debug$GT$3fmt17hdb3565c8b9fbe464E+0x104>
   830c4: e8 03 40 f9  	ldr	x8, [sp]
   830c8: 09 c1 40 39  	ldrb	w9, [x8, #48]
   830cc: c9 00 10 37  	tbnz	w9, #2, 0x830e4 <_ZN42_$LT$$RF$T$u20$as$u20$core..fmt..Debug$GT$3fmt17hdb3565c8b9fbe464E+0xec>
   830d0: 00 25 42 a9  	ldp	x0, x9, [x8, #32]
   830d4: 01 00 00 b0  	adrp	x1, 0x84000 <_ZN42_$LT$$RF$T$u20$as$u20$core..fmt..Debug$GT$3fmt17hdb3565c8b9fbe464E+0xe0>
   830d8: 21 64 0e 91  	add	x1, x1, #921
   830dc: 42 00 80 52  	mov	w2, #2
   830e0: 05 00 00 14  	b	0x830f4 <_ZN42_$LT$$RF$T$u20$as$u20$core..fmt..Debug$GT$3fmt17hdb3565c8b9fbe464E+0xfc>
   830e4: 00 25 42 a9  	ldp	x0, x9, [x8, #32]
   830e8: 01 00 00 b0  	adrp	x1, 0x84000 <_ZN42_$LT$$RF$T$u20$as$u20$core..fmt..Debug$GT$3fmt17hdb3565c8b9fbe464E+0xf4>
   830ec: 21 60 0e 91  	add	x1, x1, #920
   830f0: 22 00 80 52  	mov	w2, #1
   830f4: 28 0d 40 f9  	ldr	x8, [x9, #24]
   830f8: 00 01 3f d6  	blr	x8
   830fc: f4 4f 43 a9  	ldp	x20, x19, [sp, #48]
   83100: f6 57 42 a9  	ldp	x22, x21, [sp, #32]
   83104: fe 0b 40 f9  	ldr	x30, [sp, #16]
   83108: 1f 00 00 71  	cmp	w0, #0
   8310c: e0 07 9f 1a  	cset	w0, ne
   83110: ff 03 01 91  	add	sp, sp, #64
   83114: c0 03 5f d6  	ret

0000000000083118 <_ZN42_$LT$$RF$T$u20$as$u20$core..fmt..Debug$GT$3fmt17h91a03beae5aa8267E>:
   83118: ff 03 02 d1  	sub	sp, sp, #128
   8311c: fe 5f 05 a9  	stp	x30, x23, [sp, #80]
   83120: f6 57 06 a9  	stp	x22, x21, [sp, #96]
   83124: f4 4f 07 a9  	stp	x20, x19, [sp, #112]
   83128: 17 00 40 f9  	ldr	x23, [x0]
   8312c: f5 03 01 aa  	mov	x21, x1
   83130: e8 02 40 f9  	ldr	x8, [x23]
   83134: 08 02 00 b4  	cbz	x8, 0x83174 <_ZN42_$LT$$RF$T$u20$as$u20$core..fmt..Debug$GT$3fmt17h91a03beae5aa8267E+0x5c>
   83138: b3 52 42 a9  	ldp	x19, x20, [x21, #32]
   8313c: 01 00 00 90  	adrp	x1, 0x83000 <_ZN42_$LT$$RF$T$u20$as$u20$core..fmt..Debug$GT$3fmt17h91a03beae5aa8267E+0x24>
   83140: 21 38 20 91  	add	x1, x1, #2062
   83144: 82 00 80 52  	mov	w2, #4
   83148: 96 0e 40 f9  	ldr	x22, [x20, #24]
   8314c: e0 03 13 aa  	mov	x0, x19
   83150: c0 02 3f d6  	blr	x22
   83154: 40 02 00 36  	tbz	w0, #0, 0x8319c <_ZN42_$LT$$RF$T$u20$as$u20$core..fmt..Debug$GT$3fmt17h91a03beae5aa8267E+0x84>
   83158: 35 00 80 52  	mov	w21, #1
   8315c: e0 03 15 2a  	mov	w0, w21
   83160: f4 4f 47 a9  	ldp	x20, x19, [sp, #112]
   83164: f6 57 46 a9  	ldp	x22, x21, [sp, #96]
   83168: fe 5f 45 a9  	ldp	x30, x23, [sp, #80]
   8316c: ff 03 02 91  	add	sp, sp, #128
   83170: c0 03 5f d6  	ret
   83174: a0 22 42 a9  	ldp	x0, x8, [x21, #32]
   83178: f4 4f 47 a9  	ldp	x20, x19, [sp, #112]
   8317c: f6 57 46 a9  	ldp	x22, x21, [sp, #96]
   83180: fe 5f 45 a9  	ldp	x30, x23, [sp, #80]
   83184: 03 0d 40 f9  	ldr	x3, [x8, #24]
   83188: 01 00 00 90  	adrp	x1, 0x83000 <_ZN42_$LT$$RF$T$u20$as$u20$core..fmt..Debug$GT$3fmt17h91a03beae5aa8267E+0x70>
   8318c: 21 78 20 91  	add	x1, x1, #2078
   83190: 82 00 80 52  	mov	w2, #4
   83194: ff 03 02 91  	add	sp, sp, #128
   83198: 60 00 1f d6  	br	x3
   8319c: a8 c2 40 39  	ldrb	w8, [x21, #48]
   831a0: 48 02 10 37  	tbnz	w8, #2, 0x831e8 <_ZN42_$LT$$RF$T$u20$as$u20$core..fmt..Debug$GT$3fmt17h91a03beae5aa8267E+0xd0>
   831a4: 01 00 00 b0  	adrp	x1, 0x84000 <_ZN42_$LT$$RF$T$u20$as$u20$core..fmt..Debug$GT$3fmt17h91a03beae5aa8267E+0x90>
   831a8: 21 6c 0e 91  	add	x1, x1, #923
   831ac: 22 00 80 52  	mov	w2, #1
   831b0: e0 03 13 aa  	mov	x0, x19
   831b4: 35 00 80 52  	mov	w21, #1
   831b8: c0 02 3f d6  	blr	x22
   831bc: 00 fd 07 37  	tbnz	w0, #0, 0x8315c <_ZN42_$LT$$RF$T$u20$as$u20$core..fmt..Debug$GT$3fmt17h91a03beae5aa8267E+0x44>
   831c0: e1 02 40 f9  	ldr	x1, [x23]
   831c4: e0 83 00 91  	add	x0, sp, #32
   831c8: 02 06 80 52  	mov	w2, #48
   831cc: 46 00 00 94  	bl	0x832e4 <memcpy>
   831d0: e2 83 00 91  	add	x2, sp, #32
   831d4: e0 03 13 aa  	mov	x0, x19
   831d8: e1 03 14 aa  	mov	x1, x20
   831dc: 35 f8 ff 97  	bl	0x812b0 <_ZN4core3fmt5write17h4089dd81629a8d2eE>
   831e0: c0 fb 07 37  	tbnz	w0, #0, 0x83158 <_ZN42_$LT$$RF$T$u20$as$u20$core..fmt..Debug$GT$3fmt17h91a03beae5aa8267E+0x40>
   831e4: 1c 00 00 14  	b	0x83254 <_ZN42_$LT$$RF$T$u20$as$u20$core..fmt..Debug$GT$3fmt17h91a03beae5aa8267E+0x13c>
   831e8: 01 00 00 b0  	adrp	x1, 0x84000 <_ZN42_$LT$$RF$T$u20$as$u20$core..fmt..Debug$GT$3fmt17h91a03beae5aa8267E+0xd4>
   831ec: 21 70 0e 91  	add	x1, x1, #924
   831f0: 42 00 80 52  	mov	w2, #2
   831f4: e0 03 13 aa  	mov	x0, x19
   831f8: c0 02 3f d6  	blr	x22
   831fc: 35 00 80 52  	mov	w21, #1
   83200: e0 fa 07 37  	tbnz	w0, #0, 0x8315c <_ZN42_$LT$$RF$T$u20$as$u20$core..fmt..Debug$GT$3fmt17h91a03beae5aa8267E+0x44>
   83204: e8 73 00 91  	add	x8, sp, #28
   83208: f5 73 00 39  	strb	w21, [sp, #28]
   8320c: f3 53 00 a9  	stp	x19, x20, [sp]
   83210: e8 0b 00 f9  	str	x8, [sp, #16]
   83214: e1 02 40 f9  	ldr	x1, [x23]
   83218: e0 83 00 91  	add	x0, sp, #32
   8321c: 02 06 80 52  	mov	w2, #48
   83220: 31 00 00 94  	bl	0x832e4 <memcpy>
   83224: 01 00 00 b0  	adrp	x1, 0x84000 <_ZN42_$LT$$RF$T$u20$as$u20$core..fmt..Debug$GT$3fmt17h91a03beae5aa8267E+0x110>
   83228: 21 c0 0c 91  	add	x1, x1, #816
   8322c: e0 03 00 91  	mov	x0, sp
   83230: e2 83 00 91  	add	x2, sp, #32
   83234: 1f f8 ff 97  	bl	0x812b0 <_ZN4core3fmt5write17h4089dd81629a8d2eE>
   83238: 00 f9 07 37  	tbnz	w0, #0, 0x83158 <_ZN42_$LT$$RF$T$u20$as$u20$core..fmt..Debug$GT$3fmt17h91a03beae5aa8267E+0x40>
   8323c: 01 00 00 b0  	adrp	x1, 0x84000 <_ZN42_$LT$$RF$T$u20$as$u20$core..fmt..Debug$GT$3fmt17h91a03beae5aa8267E+0x128>
   83240: 21 80 0d 91  	add	x1, x1, #864
   83244: e0 03 00 91  	mov	x0, sp
   83248: 42 00 80 52  	mov	w2, #2
   8324c: c3 f8 ff 97  	bl	0x81558 <_ZN68_$LT$core..fmt..builders..PadAdapter$u20$as$u20$core..fmt..Write$GT$9write_str17h006d11991b68be72E>
   83250: 40 f8 07 37  	tbnz	w0, #0, 0x83158 <_ZN42_$LT$$RF$T$u20$as$u20$core..fmt..Debug$GT$3fmt17h91a03beae5aa8267E+0x40>
   83254: 01 00 00 b0  	adrp	x1, 0x84000 <_ZN42_$LT$$RF$T$u20$as$u20$core..fmt..Debug$GT$3fmt17h91a03beae5aa8267E+0x140>
   83258: 21 78 0e 91  	add	x1, x1, #926
   8325c: 22 00 80 52  	mov	w2, #1
   83260: e0 03 13 aa  	mov	x0, x19
   83264: c0 02 3f d6  	blr	x22
   83268: f5 03 00 2a  	mov	w21, w0
   8326c: bc ff ff 17  	b	0x8315c <_ZN42_$LT$$RF$T$u20$as$u20$core..fmt..Debug$GT$3fmt17h91a03beae5aa8267E+0x44>

0000000000083270 <_ZN42_$LT$$RF$T$u20$as$u20$core..fmt..Debug$GT$3fmt17hc72048f68cee3930E>:
   83270: ff 83 00 d1  	sub	sp, sp, #32
   83274: fe 4f 01 a9  	stp	x30, x19, [sp, #16]
   83278: 33 20 42 a9  	ldp	x19, x8, [x1, #32]
   8327c: 01 00 00 90  	adrp	x1, 0x83000 <_ZN42_$LT$$RF$T$u20$as$u20$core..fmt..Debug$GT$3fmt17hc72048f68cee3930E+0xc>
   83280: 21 68 1f 91  	add	x1, x1, #2010
   83284: 62 00 80 52  	mov	w2, #3
   83288: 03 0d 40 f9  	ldr	x3, [x8, #24]
   8328c: e0 03 13 aa  	mov	x0, x19
   83290: e3 07 00 f9  	str	x3, [sp, #8]
   83294: 60 00 3f d6  	blr	x3
   83298: a0 00 00 36  	tbz	w0, #0, 0x832ac <_ZN42_$LT$$RF$T$u20$as$u20$core..fmt..Debug$GT$3fmt17hc72048f68cee3930E+0x3c>
   8329c: fe 4f 41 a9  	ldp	x30, x19, [sp, #16]
   832a0: 20 00 80 52  	mov	w0, #1
   832a4: ff 83 00 91  	add	sp, sp, #32
   832a8: c0 03 5f d6  	ret
   832ac: e0 03 13 aa  	mov	x0, x19
   832b0: e3 07 40 f9  	ldr	x3, [sp, #8]
   832b4: fe 4f 41 a9  	ldp	x30, x19, [sp, #16]
   832b8: 01 00 00 90  	adrp	x1, 0x83000 <_ZN42_$LT$$RF$T$u20$as$u20$core..fmt..Debug$GT$3fmt17hc72048f68cee3930E+0x48>
   832bc: 21 74 1f 91  	add	x1, x1, #2013
   832c0: e2 00 80 52  	mov	w2, #7
   832c4: ff 83 00 91  	add	sp, sp, #32
   832c8: 60 00 1f d6  	br	x3

00000000000832cc <_ZN53_$LT$core..fmt..Error$u20$as$u20$core..fmt..Debug$GT$3fmt17h7940a6b0f953e665E>:
   832cc: 20 20 42 a9  	ldp	x0, x8, [x1, #32]
   832d0: 01 00 00 b0  	adrp	x1, 0x84000 <_ZN53_$LT$core..fmt..Error$u20$as$u20$core..fmt..Debug$GT$3fmt17h7940a6b0f953e665E+0x8>
   832d4: 21 c0 12 91  	add	x1, x1, #1200
   832d8: a2 00 80 52  	mov	w2, #5
   832dc: 03 0d 40 f9  	ldr	x3, [x8, #24]
   832e0: 60 00 1f d6  	br	x3

00000000000832e4 <memcpy>:
   832e4: c2 00 00 b4  	cbz	x2, 0x832fc <memcpy+0x18>
   832e8: e8 03 00 aa  	mov	x8, x0
   832ec: 29 14 40 38  	ldrb	w9, [x1], #1
   832f0: 42 04 00 f1  	subs	x2, x2, #1
   832f4: 09 15 00 38  	strb	w9, [x8], #1
   832f8: a1 ff ff 54  	b.ne	0x832ec <memcpy+0x8>
   832fc: c0 03 5f d6  	ret

0000000000083300 <memset>:
   83300: 62 02 00 b4  	cbz	x2, 0x8334c <memset+0x4c>
   83304: 5f 04 00 f1  	cmp	x2, #1
   83308: 61 00 00 54  	b.ne	0x83314 <memset+0x14>
   8330c: e8 03 1f aa  	mov	x8, xzr
   83310: 0a 00 00 14  	b	0x83338 <memset+0x38>
   83314: 48 f8 7f 92  	and	x8, x2, #0xfffffffffffffffe
   83318: 09 04 00 91  	add	x9, x0, #1
   8331c: ea 03 08 aa  	mov	x10, x8
   83320: 21 f1 1f 38  	sturb	w1, [x9, #-1]
   83324: 21 25 00 38  	strb	w1, [x9], #2
   83328: 4a 09 00 f1  	subs	x10, x10, #2
   8332c: a1 ff ff 54  	b.ne	0x83320 <memset+0x20>
   83330: 1f 01 02 eb  	cmp	x8, x2
   83334: c0 00 00 54  	b.eq	0x8334c <memset+0x4c>
   83338: 49 00 08 cb  	sub	x9, x2, x8
   8333c: 08 00 08 8b  	add	x8, x0, x8
   83340: 29 05 00 f1  	subs	x9, x9, #1
   83344: 01 15 00 38  	strb	w1, [x8], #1
   83348: c1 ff ff 54  	b.ne	0x83340 <memset+0x40>
   8334c: c0 03 5f d6  	ret
