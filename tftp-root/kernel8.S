
baremetal-pi:	file format elf64-littleaarch64


Disassembly of section .text.core::ptr::drop_in_place<&mut baremetal_pi::uart::Uart1>::h73c5014824799dde.llvm.9382689312734249080:

0000000000080058 <core::ptr::drop_in_place<&mut baremetal_pi::uart::Uart1>::h73c5014824799dde.llvm.9382689312734249080>:
   80058: c0 03 5f d6  	ret

Disassembly of section .text.<&mut W as core::fmt::Write>::write_char::h9f49bcdb8b432cd3.llvm.9382689312734249080:

000000000008005c <<&mut W as core::fmt::Write>::write_char::h9f49bcdb8b432cd3.llvm.9382689312734249080>:
   8005c: ff 43 00 d1  	sub	sp, sp, #16
   80060: 3f 00 02 71  	cmp	w1, #128
   80064: ff 0f 00 b9  	str	wzr, [sp, #12]
   80068: e2 00 00 54  	b.hs	0x80084 <<&mut W as core::fmt::Write>::write_char::h9f49bcdb8b432cd3.llvm.9382689312734249080+0x28>
   8006c: 29 00 80 52  	mov	w9, #1
   80070: e1 33 00 39  	strb	w1, [sp, #12]
   80074: 88 0c 8a 52  	mov	w8, #20580
   80078: 28 e4 a7 72  	movk	w8, #16161, lsl #16
   8007c: e9 05 00 b5  	cbnz	x9, 0x80138 <<&mut W as core::fmt::Write>::write_char::h9f49bcdb8b432cd3.llvm.9382689312734249080+0xdc>
   80080: 37 00 00 14  	b	0x8015c <<&mut W as core::fmt::Write>::write_char::h9f49bcdb8b432cd3.llvm.9382689312734249080+0x100>
   80084: 3f 00 20 71  	cmp	w1, #2048
   80088: 82 01 00 54  	b.hs	0x800b8 <<&mut W as core::fmt::Write>::write_char::h9f49bcdb8b432cd3.llvm.9382689312734249080+0x5c>
   8008c: 28 7c 06 53  	lsr	w8, w1, #6
   80090: 0a 10 80 52  	mov	w10, #128
   80094: 08 05 1a 32  	orr	w8, w8, #0xc0
   80098: 2a 14 00 33  	bfxil	w10, w1, #0, #6
   8009c: 49 00 80 52  	mov	w9, #2
   800a0: ea 37 00 39  	strb	w10, [sp, #13]
   800a4: e8 33 00 39  	strb	w8, [sp, #12]
   800a8: 88 0c 8a 52  	mov	w8, #20580
   800ac: 28 e4 a7 72  	movk	w8, #16161, lsl #16
   800b0: 49 04 00 b5  	cbnz	x9, 0x80138 <<&mut W as core::fmt::Write>::write_char::h9f49bcdb8b432cd3.llvm.9382689312734249080+0xdc>
   800b4: 2a 00 00 14  	b	0x8015c <<&mut W as core::fmt::Write>::write_char::h9f49bcdb8b432cd3.llvm.9382689312734249080+0x100>
   800b8: 3f 40 40 71  	cmp	w1, #16, lsl #12
   800bc: e2 01 00 54  	b.hs	0x800f8 <<&mut W as core::fmt::Write>::write_char::h9f49bcdb8b432cd3.llvm.9382689312734249080+0x9c>
   800c0: 28 7c 0c 53  	lsr	w8, w1, #12
   800c4: 0a 10 80 52  	mov	w10, #128
   800c8: 08 09 1b 32  	orr	w8, w8, #0xe0
   800cc: 0b 10 80 52  	mov	w11, #128
   800d0: 2b 2c 06 33  	bfxil	w11, w1, #6, #6
   800d4: 2a 14 00 33  	bfxil	w10, w1, #0, #6
   800d8: 69 00 80 52  	mov	w9, #3
   800dc: e8 33 00 39  	strb	w8, [sp, #12]
   800e0: eb 37 00 39  	strb	w11, [sp, #13]
   800e4: ea 3b 00 39  	strb	w10, [sp, #14]
   800e8: 88 0c 8a 52  	mov	w8, #20580
   800ec: 28 e4 a7 72  	movk	w8, #16161, lsl #16
   800f0: 49 02 00 b5  	cbnz	x9, 0x80138 <<&mut W as core::fmt::Write>::write_char::h9f49bcdb8b432cd3.llvm.9382689312734249080+0xdc>
   800f4: 1a 00 00 14  	b	0x8015c <<&mut W as core::fmt::Write>::write_char::h9f49bcdb8b432cd3.llvm.9382689312734249080+0x100>
   800f8: 09 10 80 52  	mov	w9, #128
   800fc: 28 7c 12 53  	lsr	w8, w1, #18
   80100: 29 44 0c 33  	bfxil	w9, w1, #12, #6
   80104: 08 0d 1c 32  	orr	w8, w8, #0xf0
   80108: 0a 10 80 52  	mov	w10, #128
   8010c: 0b 10 80 52  	mov	w11, #128
   80110: e9 37 00 39  	strb	w9, [sp, #13]
   80114: 89 00 80 52  	mov	w9, #4
   80118: 2b 2c 06 33  	bfxil	w11, w1, #6, #6
   8011c: 2a 14 00 33  	bfxil	w10, w1, #0, #6
   80120: e8 33 00 39  	strb	w8, [sp, #12]
   80124: eb 3b 00 39  	strb	w11, [sp, #14]
   80128: ea 3f 00 39  	strb	w10, [sp, #15]
   8012c: 88 0c 8a 52  	mov	w8, #20580
   80130: 28 e4 a7 72  	movk	w8, #16161, lsl #16
   80134: 49 01 00 b4  	cbz	x9, 0x8015c <<&mut W as core::fmt::Write>::write_char::h9f49bcdb8b432cd3.llvm.9382689312734249080+0x100>
   80138: ea 33 00 91  	add	x10, sp, #12
   8013c: 49 01 09 8b  	add	x9, x10, x9
   80140: ea 33 00 91  	add	x10, sp, #12
   80144: 0b 01 40 b9  	ldr	w11, [x8]
   80148: eb ff 0f 36  	tbz	w11, #1, 0x80144 <<&mut W as core::fmt::Write>::write_char::h9f49bcdb8b432cd3.llvm.9382689312734249080+0xe8>
   8014c: 4b 15 40 38  	ldrb	w11, [x10], #1
   80150: 5f 01 09 eb  	cmp	x10, x9
   80154: 0b c1 1d b8  	stur	w11, [x8, #-36]
   80158: 61 ff ff 54  	b.ne	0x80144 <<&mut W as core::fmt::Write>::write_char::h9f49bcdb8b432cd3.llvm.9382689312734249080+0xe8>
   8015c: 09 01 40 b9  	ldr	w9, [x8]
   80160: e9 ff 1f 36  	tbz	w9, #3, 0x8015c <<&mut W as core::fmt::Write>::write_char::h9f49bcdb8b432cd3.llvm.9382689312734249080+0x100>
   80164: e0 03 1f 2a  	mov	w0, wzr
   80168: ff 43 00 91  	add	sp, sp, #16
   8016c: c0 03 5f d6  	ret

Disassembly of section .text.<&mut W as core::fmt::Write>::write_fmt::hc1e0946ae12f0e06.llvm.9382689312734249080:

0000000000080170 <<&mut W as core::fmt::Write>::write_fmt::hc1e0946ae12f0e06.llvm.9382689312734249080>:
   80170: ff 03 01 d1  	sub	sp, sp, #64
   80174: 08 00 40 f9  	ldr	x8, [x0]
   80178: e0 03 00 91  	mov	x0, sp
   8017c: 02 06 80 52  	mov	w2, #48
   80180: fe 23 03 a9  	stp	x30, x8, [sp, #48]
   80184: cf 00 00 94  	bl	0x804c0 <memcpy>
   80188: 01 00 00 90  	adrp	x1, 0x80000 <<&mut W as core::fmt::Write>::write_fmt::hc1e0946ae12f0e06.llvm.9382689312734249080+0x18>
   8018c: e0 e3 00 91  	add	x0, sp, #56
   80190: 21 00 00 91  	add	x1, x1, #0
   80194: e2 03 00 91  	mov	x2, sp
   80198: 4c 00 00 94  	bl	0x802c8 <core::fmt::write::h63775af3066fbce8>
   8019c: fe 1b 40 f9  	ldr	x30, [sp, #48]
   801a0: ff 03 01 91  	add	sp, sp, #64
   801a4: c0 03 5f d6  	ret

Disassembly of section .text.<&mut W as core::fmt::Write>::write_str::h965e77dee5766f98.llvm.9382689312734249080:

00000000000801a8 <<&mut W as core::fmt::Write>::write_str::h965e77dee5766f98.llvm.9382689312734249080>:
   801a8: 88 0c 8a 52  	mov	w8, #20580
   801ac: 28 e4 a7 72  	movk	w8, #16161, lsl #16
   801b0: 02 01 00 b4  	cbz	x2, 0x801d0 <<&mut W as core::fmt::Write>::write_str::h965e77dee5766f98.llvm.9382689312734249080+0x28>
   801b4: 29 00 02 8b  	add	x9, x1, x2
   801b8: 0a 01 40 b9  	ldr	w10, [x8]
   801bc: ea ff 0f 36  	tbz	w10, #1, 0x801b8 <<&mut W as core::fmt::Write>::write_str::h965e77dee5766f98.llvm.9382689312734249080+0x10>
   801c0: 2a 14 40 38  	ldrb	w10, [x1], #1
   801c4: 3f 00 09 eb  	cmp	x1, x9
   801c8: 0a c1 1d b8  	stur	w10, [x8, #-36]
   801cc: 61 ff ff 54  	b.ne	0x801b8 <<&mut W as core::fmt::Write>::write_str::h965e77dee5766f98.llvm.9382689312734249080+0x10>
   801d0: 09 01 40 b9  	ldr	w9, [x8]
   801d4: e9 ff 1f 36  	tbz	w9, #3, 0x801d0 <<&mut W as core::fmt::Write>::write_str::h965e77dee5766f98.llvm.9382689312734249080+0x28>
   801d8: e0 03 1f 2a  	mov	w0, wzr
   801dc: c0 03 5f d6  	ret

Disassembly of section .text._start:

00000000000801e0 <_start>:
   801e0: ff 03 02 d1  	sub	sp, sp, #128
   801e4: fe 67 04 a9  	stp	x30, x25, [sp, #64]
   801e8: f8 5f 05 a9  	stp	x24, x23, [sp, #80]
   801ec: f6 57 06 a9  	stp	x22, x21, [sp, #96]
   801f0: f4 4f 07 a9  	stp	x20, x19, [sp, #112]
   801f4: ff 03 71 b2  	orr	sp, xzr, #0x8000
   801f8: a8 00 38 d5  	mrs	x8, MPIDR_EL1
   801fc: 1f 05 40 f2  	tst	x8, #0x3
   80200: 60 00 00 54  	b.eq	0x8020c <_start+0x2c>
   80204: 5f 20 03 d5  	wfe
   80208: ff ff ff 17  	b	0x80204 <_start+0x24>
   8020c: 89 00 80 52  	mov	w9, #4
   80210: 4b 02 80 52  	mov	w11, #18
   80214: 09 e4 a7 72  	movk	w9, #16160, lsl #16
   80218: 08 0d 8a 52  	mov	w8, #20584
   8021c: 28 e4 a7 72  	movk	w8, #16161, lsl #16
   80220: 2a 01 40 b9  	ldr	w10, [x9]
   80224: 6a 15 14 33  	bfi	w10, w11, #12, #6
   80228: 6b 00 80 52  	mov	w11, #3
   8022c: 2a 01 00 b9  	str	w10, [x9]
   80230: c9 21 80 52  	mov	w9, #270
   80234: 0a 01 40 b9  	ldr	w10, [x8]
   80238: 2a 3d 00 33  	bfxil	w10, w9, #0, #16
   8023c: c9 12 80 52  	mov	w9, #150
   80240: 0a 01 00 b9  	str	w10, [x8]
   80244: 0b 41 1e b8  	stur	w11, [x8, #-28]
   80248: 1f 20 03 d5  	nop
   8024c: 29 05 00 f1  	subs	x9, x9, #1
   80250: c1 ff ff 54  	b.ne	0x80248 <_start+0x68>
   80254: ea 23 00 91  	add	x10, sp, #8
   80258: 15 00 00 90  	adrp	x21, 0x80000 <_start+0x78>
   8025c: 18 20 81 52  	mov	w24, #2304
   80260: 19 00 00 90  	adrp	x25, 0x80000 <_start+0x80>
   80264: 13 00 00 90  	adrp	x19, 0x80000 <_start+0x84>
   80268: 69 00 80 52  	mov	w9, #3
   8026c: f4 e3 00 91  	add	x20, sp, #56
   80270: b5 02 01 91  	add	x21, x21, #64
   80274: 56 41 00 91  	add	x22, x10, #16
   80278: 37 00 80 52  	mov	w23, #1
   8027c: b8 07 a0 72  	movk	w24, #61, lsl #16
   80280: 39 43 01 91  	add	x25, x25, #80
   80284: 73 02 00 91  	add	x19, x19, #0
   80288: 09 81 1f b8  	stur	w9, [x8, #-8]
   8028c: e0 03 00 91  	mov	x0, sp
   80290: e2 23 00 91  	add	x2, sp, #8
   80294: e1 03 13 aa  	mov	x1, x19
   80298: f4 57 00 a9  	stp	x20, x21, [sp]
   8029c: f7 0b 00 f9  	str	x23, [sp, #16]
   802a0: df 7e 00 a9  	stp	xzr, xzr, [x22]
   802a4: f9 ff 02 a9  	stp	x25, xzr, [sp, #40]
   802a8: 08 00 00 94  	bl	0x802c8 <core::fmt::write::h63775af3066fbce8>
   802ac: e8 03 18 aa  	mov	x8, x24
   802b0: 1f 20 03 d5  	nop
   802b4: 08 05 00 f1  	subs	x8, x8, #1
   802b8: c1 ff ff 54  	b.ne	0x802b0 <_start+0xd0>
   802bc: f4 ff ff 17  	b	0x8028c <_start+0xac>

Disassembly of section .text.core::ops::function::FnOnce::call_once::hf084a51a9b44c1f3:

00000000000802c0 <core::ops::function::FnOnce::call_once::hf084a51a9b44c1f3>:
   802c0: 1f 00 40 f9  	ldr	xzr, [x0]
   802c4: 00 00 00 14  	b	0x802c4 <core::ops::function::FnOnce::call_once::hf084a51a9b44c1f3+0x4>

Disassembly of section .text.core::fmt::write::h63775af3066fbce8:

00000000000802c8 <core::fmt::write::h63775af3066fbce8>:
   802c8: ff 43 02 d1  	sub	sp, sp, #144
   802cc: fe 23 00 f9  	str	x30, [sp, #64]
   802d0: fa 67 05 a9  	stp	x26, x25, [sp, #80]
   802d4: f8 5f 06 a9  	stp	x24, x23, [sp, #96]
   802d8: f6 57 07 a9  	stp	x22, x21, [sp, #112]
   802dc: f4 4f 08 a9  	stp	x20, x19, [sp, #128]
   802e0: 08 00 00 90  	adrp	x8, 0x80000 <core::fmt::write::h63775af3066fbce8+0x18>
   802e4: 00 29 40 fd  	ldr	d0, [x8, #80]
   802e8: 48 08 40 f9  	ldr	x8, [x2, #16]
   802ec: f3 03 02 aa  	mov	x19, x2
   802f0: 69 00 80 52  	mov	w9, #3
   802f4: ff 03 00 f9  	str	xzr, [sp]
   802f8: ff 0b 00 f9  	str	xzr, [sp, #16]
   802fc: e9 e3 00 39  	strb	w9, [sp, #56]
   80300: e0 1b 00 fd  	str	d0, [sp, #48]
   80304: e0 07 02 a9  	stp	x0, x1, [sp, #32]
   80308: 88 08 00 b4  	cbz	x8, 0x80418 <core::fmt::write::h63775af3066fbce8+0x150>
   8030c: 69 0e 40 f9  	ldr	x9, [x19, #24]
   80310: 74 56 40 a9  	ldp	x20, x21, [x19]
   80314: 3f 01 15 eb  	cmp	x9, x21
   80318: b6 82 89 9a  	csel	x22, x21, x9, hi
   8031c: f6 0a 00 b4  	cbz	x22, 0x80478 <core::fmt::write::h63775af3066fbce8+0x1b0>
   80320: 19 00 00 90  	adrp	x25, 0x80000 <core::fmt::write::h63775af3066fbce8+0x58>
   80324: 97 22 00 91  	add	x23, x20, #8
   80328: 18 61 00 91  	add	x24, x8, #24
   8032c: 39 03 0b 91  	add	x25, x25, #704
   80330: fa 03 16 aa  	mov	x26, x22
   80334: e2 02 40 f9  	ldr	x2, [x23]
   80338: c2 00 00 b4  	cbz	x2, 0x80350 <core::fmt::write::h63775af3066fbce8+0x88>
   8033c: e0 23 42 a9  	ldp	x0, x8, [sp, #32]
   80340: e1 82 5f f8  	ldur	x1, [x23, #-8]
   80344: 08 0d 40 f9  	ldr	x8, [x8, #24]
   80348: 00 01 3f d6  	blr	x8
   8034c: 60 0a 00 37  	tbnz	w0, #0, 0x80498 <core::fmt::write::h63775af3066fbce8+0x1d0>
   80350: 08 63 40 39  	ldrb	w8, [x24, #24]
   80354: e8 e3 00 39  	strb	w8, [sp, #56]
   80358: 00 0b 40 fd  	ldr	d0, [x24, #16]
   8035c: 68 12 40 f9  	ldr	x8, [x19, #32]
   80360: 00 08 a0 0e  	rev64	v0.2s, v0.2s
   80364: e0 1b 00 fd  	str	d0, [sp, #48]
   80368: 0a 27 40 a9  	ldp	x10, x9, [x24]
   8036c: ea 01 00 b4  	cbz	x10, 0x803a8 <core::fmt::write::h63775af3066fbce8+0xe0>
   80370: 5f 05 00 f1  	cmp	x10, #1
   80374: a1 00 00 54  	b.ne	0x80388 <core::fmt::write::h63775af3066fbce8+0xc0>
   80378: 0a 11 09 8b  	add	x10, x8, x9, lsl #4
   8037c: 4a 05 40 f9  	ldr	x10, [x10, #8]
   80380: 5f 01 19 eb  	cmp	x10, x25
   80384: c0 00 00 54  	b.eq	0x8039c <core::fmt::write::h63775af3066fbce8+0xd4>
   80388: ea 03 1f aa  	mov	x10, xzr
   8038c: ea 27 00 a9  	stp	x10, x9, [sp]
   80390: 0a 27 7f a9  	ldp	x10, x9, [x24, #-16]
   80394: 2a 01 00 b5  	cbnz	x10, 0x803b8 <core::fmt::write::h63775af3066fbce8+0xf0>
   80398: 13 00 00 14  	b	0x803e4 <core::fmt::write::h63775af3066fbce8+0x11c>
   8039c: 29 ed 7c d3  	lsl	x9, x9, #4
   803a0: 09 69 69 f8  	ldr	x9, [x8, x9]
   803a4: 29 01 40 f9  	ldr	x9, [x9]
   803a8: 2a 00 80 52  	mov	w10, #1
   803ac: ea 27 00 a9  	stp	x10, x9, [sp]
   803b0: 0a 27 7f a9  	ldp	x10, x9, [x24, #-16]
   803b4: 8a 01 00 b4  	cbz	x10, 0x803e4 <core::fmt::write::h63775af3066fbce8+0x11c>
   803b8: 5f 05 00 f1  	cmp	x10, #1
   803bc: a1 00 00 54  	b.ne	0x803d0 <core::fmt::write::h63775af3066fbce8+0x108>
   803c0: 0a 11 09 8b  	add	x10, x8, x9, lsl #4
   803c4: 4a 05 40 f9  	ldr	x10, [x10, #8]
   803c8: 5f 01 19 eb  	cmp	x10, x25
   803cc: 60 00 00 54  	b.eq	0x803d8 <core::fmt::write::h63775af3066fbce8+0x110>
   803d0: ea 03 1f aa  	mov	x10, xzr
   803d4: 05 00 00 14  	b	0x803e8 <core::fmt::write::h63775af3066fbce8+0x120>
   803d8: 29 ed 7c d3  	lsl	x9, x9, #4
   803dc: 09 69 69 f8  	ldr	x9, [x8, x9]
   803e0: 29 01 40 f9  	ldr	x9, [x9]
   803e4: 2a 00 80 52  	mov	w10, #1
   803e8: ea 27 01 a9  	stp	x10, x9, [sp, #16]
   803ec: 09 83 5e f8  	ldur	x9, [x24, #-24]
   803f0: e1 03 00 91  	mov	x1, sp
   803f4: 08 11 09 8b  	add	x8, x8, x9, lsl #4
   803f8: 00 25 40 a9  	ldp	x0, x9, [x8]
   803fc: 20 01 3f d6  	blr	x9
   80400: c0 04 00 37  	tbnz	w0, #0, 0x80498 <core::fmt::write::h63775af3066fbce8+0x1d0>
   80404: f7 42 00 91  	add	x23, x23, #16
   80408: 5a 07 00 f1  	subs	x26, x26, #1
   8040c: 18 e3 00 91  	add	x24, x24, #56
   80410: 21 f9 ff 54  	b.ne	0x80334 <core::fmt::write::h63775af3066fbce8+0x6c>
   80414: 19 00 00 14  	b	0x80478 <core::fmt::write::h63775af3066fbce8+0x1b0>
   80418: 68 16 40 f9  	ldr	x8, [x19, #40]
   8041c: 74 56 40 a9  	ldp	x20, x21, [x19]
   80420: 1f 01 15 eb  	cmp	x8, x21
   80424: b6 82 88 9a  	csel	x22, x21, x8, hi
   80428: 96 02 00 b4  	cbz	x22, 0x80478 <core::fmt::write::h63775af3066fbce8+0x1b0>
   8042c: 73 12 40 f9  	ldr	x19, [x19, #32]
   80430: f7 03 1f aa  	mov	x23, xzr
   80434: f8 03 16 aa  	mov	x24, x22
   80438: 88 02 17 8b  	add	x8, x20, x23
   8043c: 02 05 40 f9  	ldr	x2, [x8, #8]
   80440: c2 00 00 b4  	cbz	x2, 0x80458 <core::fmt::write::h63775af3066fbce8+0x190>
   80444: e0 23 42 a9  	ldp	x0, x8, [sp, #32]
   80448: 81 6a 77 f8  	ldr	x1, [x20, x23]
   8044c: 08 0d 40 f9  	ldr	x8, [x8, #24]
   80450: 00 01 3f d6  	blr	x8
   80454: 20 02 00 37  	tbnz	w0, #0, 0x80498 <core::fmt::write::h63775af3066fbce8+0x1d0>
   80458: 68 02 17 8b  	add	x8, x19, x23
   8045c: 00 25 40 a9  	ldp	x0, x9, [x8]
   80460: e1 03 00 91  	mov	x1, sp
   80464: 20 01 3f d6  	blr	x9
   80468: 80 01 00 37  	tbnz	w0, #0, 0x80498 <core::fmt::write::h63775af3066fbce8+0x1d0>
   8046c: 18 07 00 f1  	subs	x24, x24, #1
   80470: f7 42 00 91  	add	x23, x23, #16
   80474: 21 fe ff 54  	b.ne	0x80438 <core::fmt::write::h63775af3066fbce8+0x170>
   80478: df 02 15 eb  	cmp	x22, x21
   8047c: 22 01 00 54  	b.hs	0x804a0 <core::fmt::write::h63775af3066fbce8+0x1d8>
   80480: e0 23 42 a9  	ldp	x0, x8, [sp, #32]
   80484: 89 12 16 8b  	add	x9, x20, x22, lsl #4
   80488: 21 09 40 a9  	ldp	x1, x2, [x9]
   8048c: 08 0d 40 f9  	ldr	x8, [x8, #24]
   80490: 00 01 3f d6  	blr	x8
   80494: 60 00 00 36  	tbz	w0, #0, 0x804a0 <core::fmt::write::h63775af3066fbce8+0x1d8>
   80498: 20 00 80 52  	mov	w0, #1
   8049c: 02 00 00 14  	b	0x804a4 <core::fmt::write::h63775af3066fbce8+0x1dc>
   804a0: e0 03 1f 2a  	mov	w0, wzr
   804a4: f4 4f 48 a9  	ldp	x20, x19, [sp, #128]
   804a8: f6 57 47 a9  	ldp	x22, x21, [sp, #112]
   804ac: f8 5f 46 a9  	ldp	x24, x23, [sp, #96]
   804b0: fa 67 45 a9  	ldp	x26, x25, [sp, #80]
   804b4: fe 23 40 f9  	ldr	x30, [sp, #64]
   804b8: ff 43 02 91  	add	sp, sp, #144
   804bc: c0 03 5f d6  	ret

Disassembly of section .text.memcpy:

00000000000804c0 <memcpy>:
   804c0: ff 03 01 d1  	sub	sp, sp, #64
   804c4: 22 02 00 b4  	cbz	x2, 0x80508 <memcpy+0x48>
   804c8: 5f 20 00 f1  	cmp	x2, #8
   804cc: e3 00 00 54  	b.lo	0x804e8 <memcpy+0x28>
   804d0: 28 00 02 8b  	add	x8, x1, x2
   804d4: 1f 01 00 eb  	cmp	x8, x0
   804d8: c9 01 00 54  	b.ls	0x80510 <memcpy+0x50>
   804dc: 08 00 02 8b  	add	x8, x0, x2
   804e0: 1f 01 01 eb  	cmp	x8, x1
   804e4: 69 01 00 54  	b.ls	0x80510 <memcpy+0x50>
   804e8: e8 03 1f aa  	mov	x8, xzr
   804ec: 49 00 08 cb  	sub	x9, x2, x8
   804f0: 0a 00 08 8b  	add	x10, x0, x8
   804f4: 28 00 08 8b  	add	x8, x1, x8
   804f8: 0b 15 40 38  	ldrb	w11, [x8], #1
   804fc: 29 05 00 f1  	subs	x9, x9, #1
   80500: 4b 15 00 38  	strb	w11, [x10], #1
   80504: a1 ff ff 54  	b.ne	0x804f8 <memcpy+0x38>
   80508: ff 03 01 91  	add	sp, sp, #64
   8050c: c0 03 5f d6  	ret
   80510: 5f 80 00 f1  	cmp	x2, #32
   80514: 62 00 00 54  	b.hs	0x80520 <memcpy+0x60>
   80518: e8 03 1f aa  	mov	x8, xzr
   8051c: 9a 00 00 14  	b	0x80784 <memcpy+0x2c4>
   80520: 48 e8 7b 92  	and	x8, x2, #0xffffffffffffffe0
   80524: 29 40 00 91  	add	x9, x1, #16
   80528: 0b 40 00 91  	add	x11, x0, #16
   8052c: ea 03 08 aa  	mov	x10, x8
   80530: ed 03 09 aa  	mov	x13, x9
   80534: 2c 11 5f 38  	ldurb	w12, [x9, #-15]
   80538: ae 0d 5f 38  	ldrb	w14, [x13, #-16]!
   8053c: 4a 81 00 f1  	subs	x10, x10, #32
   80540: f1 03 0d aa  	mov	x17, x13
   80544: af 0d 40 39  	ldrb	w15, [x13, #3]
   80548: b0 09 40 39  	ldrb	w16, [x13, #2]
   8054c: 32 4e 40 38  	ldrb	w18, [x17, #4]!
   80550: 23 51 5f 38  	ldurb	w3, [x9, #-11]
   80554: 8e 1d 78 b3  	bfi	x14, x12, #8, #8
   80558: f0 1d 78 b3  	bfi	x16, x15, #8, #8
   8055c: 24 0e 40 39  	ldrb	w4, [x17, #3]
   80560: 31 0a 40 39  	ldrb	w17, [x17, #2]
   80564: 72 1c 18 33  	bfi	w18, w3, #8, #8
   80568: 0e 3e 70 b3  	bfi	x14, x16, #16, #16
   8056c: ec 03 0d aa  	mov	x12, x13
   80570: 91 1c 18 33  	bfi	w17, w4, #8, #8
   80574: 32 3e 10 33  	bfi	w18, w17, #16, #16
   80578: 4e 7e 60 b3  	bfi	x14, x18, #32, #32
   8057c: ee 0b 00 f9  	str	x14, [sp, #16]
   80580: ae 25 40 39  	ldrb	w14, [x13, #9]
   80584: 8f 8d 40 38  	ldrb	w15, [x12, #8]!
   80588: 90 0d 40 39  	ldrb	w16, [x12, #3]
   8058c: 91 09 40 39  	ldrb	w17, [x12, #2]
   80590: 92 4d 40 38  	ldrb	w18, [x12, #4]!
   80594: ad 35 40 39  	ldrb	w13, [x13, #13]
   80598: cf 1d 78 b3  	bfi	x15, x14, #8, #8
   8059c: 11 1e 78 b3  	bfi	x17, x16, #8, #8
   805a0: 83 0d 40 39  	ldrb	w3, [x12, #3]
   805a4: 8c 09 40 39  	ldrb	w12, [x12, #2]
   805a8: b2 1d 18 33  	bfi	w18, w13, #8, #8
   805ac: 2f 3e 70 b3  	bfi	x15, x17, #16, #16
   805b0: ee 03 09 aa  	mov	x14, x9
   805b4: 6c 1c 18 33  	bfi	w12, w3, #8, #8
   805b8: 92 3d 10 33  	bfi	w18, w12, #16, #16
   805bc: 4f 7e 60 b3  	bfi	x15, x18, #32, #32
   805c0: ef 0f 00 f9  	str	x15, [sp, #24]
   805c4: e0 07 c0 3d  	ldr	q0, [sp, #16]
   805c8: 2c 0d 40 39  	ldrb	w12, [x9, #3]
   805cc: 2d 09 40 39  	ldrb	w13, [x9, #2]
   805d0: 2f 05 40 39  	ldrb	w15, [x9, #1]
   805d4: 30 01 40 39  	ldrb	w16, [x9]
   805d8: d1 4d 40 38  	ldrb	w17, [x14, #4]!
   805dc: 32 15 40 39  	ldrb	w18, [x9, #5]
   805e0: 8d 1d 78 b3  	bfi	x13, x12, #8, #8
   805e4: f0 1d 78 b3  	bfi	x16, x15, #8, #8
   805e8: c3 0d 40 39  	ldrb	w3, [x14, #3]
   805ec: ce 09 40 39  	ldrb	w14, [x14, #2]
   805f0: 51 1e 18 33  	bfi	w17, w18, #8, #8
   805f4: b0 3d 70 b3  	bfi	x16, x13, #16, #16
   805f8: ec 03 09 aa  	mov	x12, x9
   805fc: 6e 1c 18 33  	bfi	w14, w3, #8, #8
   80600: d1 3d 10 33  	bfi	w17, w14, #16, #16
   80604: 30 7e 60 b3  	bfi	x16, x17, #32, #32
   80608: f0 03 00 f9  	str	x16, [sp]
   8060c: 2d 25 40 39  	ldrb	w13, [x9, #9]
   80610: 8e 8d 40 38  	ldrb	w14, [x12, #8]!
   80614: 8f 0d 40 39  	ldrb	w15, [x12, #3]
   80618: 90 09 40 39  	ldrb	w16, [x12, #2]
   8061c: 91 4d 40 38  	ldrb	w17, [x12, #4]!
   80620: 32 35 40 39  	ldrb	w18, [x9, #13]
   80624: ae 1d 78 b3  	bfi	x14, x13, #8, #8
   80628: f0 1d 78 b3  	bfi	x16, x15, #8, #8
   8062c: 83 0d 40 39  	ldrb	w3, [x12, #3]
   80630: 8c 09 40 39  	ldrb	w12, [x12, #2]
   80634: 51 1e 18 33  	bfi	w17, w18, #8, #8
   80638: e0 0f 80 3d  	str	q0, [sp, #48]
   8063c: 0e 3e 70 b3  	bfi	x14, x16, #16, #16
   80640: 6c 1c 18 33  	bfi	w12, w3, #8, #8
   80644: 91 3d 10 33  	bfi	w17, w12, #16, #16
   80648: ec 1b 40 f9  	ldr	x12, [sp, #48]
   8064c: 2e 7e 60 b3  	bfi	x14, x17, #32, #32
   80650: ee 07 00 f9  	str	x14, [sp, #8]
   80654: ed 03 0b aa  	mov	x13, x11
   80658: e1 03 c0 3d  	ldr	q1, [sp]
   8065c: ac 0d 1f 38  	strb	w12, [x13, #-16]!
   80660: f0 1f 40 f9  	ldr	x16, [sp, #56]
   80664: 8f fd 58 d3  	lsr	x15, x12, #24
   80668: 8e fd 68 d3  	lsr	x14, x12, #40
   8066c: af 0d 00 39  	strb	w15, [x13, #3]
   80670: 8f fd 48 d3  	lsr	x15, x12, #8
   80674: 6e 51 1f 38  	sturb	w14, [x11, #-11]
   80678: 8e fd 50 d3  	lsr	x14, x12, #16
   8067c: 6f 11 1f 38  	sturb	w15, [x11, #-15]
   80680: 0f fe 68 d3  	lsr	x15, x16, #40
   80684: ae 09 00 39  	strb	w14, [x13, #2]
   80688: ee 03 0d aa  	mov	x14, x13
   8068c: af 35 00 39  	strb	w15, [x13, #13]
   80690: 0f fe 48 d3  	lsr	x15, x16, #8
   80694: d0 8d 00 38  	strb	w16, [x14, #8]!
   80698: af 25 00 39  	strb	w15, [x13, #9]
   8069c: 0f fe 58 d3  	lsr	x15, x16, #24
   806a0: cf 0d 00 39  	strb	w15, [x14, #3]
   806a4: 0f fe 50 d3  	lsr	x15, x16, #16
   806a8: cf 09 00 39  	strb	w15, [x14, #2]
   806ac: 8f fd 60 d3  	lsr	x15, x12, #32
   806b0: af 4d 00 38  	strb	w15, [x13, #4]!
   806b4: 0f fe 60 d3  	lsr	x15, x16, #32
   806b8: cf 4d 00 38  	strb	w15, [x14, #4]!
   806bc: 8f fd 78 d3  	lsr	x15, x12, #56
   806c0: 8c fd 70 d3  	lsr	x12, x12, #48
   806c4: af 0d 00 39  	strb	w15, [x13, #3]
   806c8: 0f fe 78 d3  	lsr	x15, x16, #56
   806cc: 10 fe 70 d3  	lsr	x16, x16, #48
   806d0: ac 09 00 39  	strb	w12, [x13, #2]
   806d4: cf 0d 00 39  	strb	w15, [x14, #3]
   806d8: d0 09 00 39  	strb	w16, [x14, #2]
   806dc: e1 0b 80 3d  	str	q1, [sp, #32]
   806e0: ec 13 40 f9  	ldr	x12, [sp, #32]
   806e4: ed 03 0b aa  	mov	x13, x11
   806e8: 6e 81 00 91  	add	x14, x11, #32
   806ec: 29 81 00 91  	add	x9, x9, #32
   806f0: 6c 01 00 39  	strb	w12, [x11]
   806f4: 8f fd 68 d3  	lsr	x15, x12, #40
   806f8: f0 17 40 f9  	ldr	x16, [sp, #40]
   806fc: 6f 15 00 39  	strb	w15, [x11, #5]
   80700: 8f fd 58 d3  	lsr	x15, x12, #24
   80704: 6f 0d 00 39  	strb	w15, [x11, #3]
   80708: 8f fd 50 d3  	lsr	x15, x12, #16
   8070c: 6f 09 00 39  	strb	w15, [x11, #2]
   80710: 8f fd 48 d3  	lsr	x15, x12, #8
   80714: 6f 05 00 39  	strb	w15, [x11, #1]
   80718: 0f fe 68 d3  	lsr	x15, x16, #40
   8071c: b0 8d 00 38  	strb	w16, [x13, #8]!
   80720: 6f 35 00 39  	strb	w15, [x11, #13]
   80724: 0f fe 58 d3  	lsr	x15, x16, #24
   80728: af 0d 00 39  	strb	w15, [x13, #3]
   8072c: 0f fe 50 d3  	lsr	x15, x16, #16
   80730: af 09 00 39  	strb	w15, [x13, #2]
   80734: 0f fe 48 d3  	lsr	x15, x16, #8
   80738: 6f 25 00 39  	strb	w15, [x11, #9]
   8073c: 0f fe 60 d3  	lsr	x15, x16, #32
   80740: af 4d 00 38  	strb	w15, [x13, #4]!
   80744: 8f fd 60 d3  	lsr	x15, x12, #32
   80748: 6f 4d 00 38  	strb	w15, [x11, #4]!
   8074c: 0f fe 78 d3  	lsr	x15, x16, #56
   80750: af 0d 00 39  	strb	w15, [x13, #3]
   80754: 8f fd 78 d3  	lsr	x15, x12, #56
   80758: 8c fd 70 d3  	lsr	x12, x12, #48
   8075c: 10 fe 70 d3  	lsr	x16, x16, #48
   80760: 6f 0d 00 39  	strb	w15, [x11, #3]
   80764: 6c 09 00 39  	strb	w12, [x11, #2]
   80768: eb 03 0e aa  	mov	x11, x14
   8076c: b0 09 00 39  	strb	w16, [x13, #2]
   80770: 01 ee ff 54  	b.ne	0x80530 <memcpy+0x70>
   80774: 1f 01 02 eb  	cmp	x8, x2
   80778: 80 ec ff 54  	b.eq	0x80508 <memcpy+0x48>
   8077c: 5f 04 7d f2  	tst	x2, #0x18
   80780: 60 eb ff 54  	b.eq	0x804ec <memcpy+0x2c>
   80784: ea 03 08 aa  	mov	x10, x8
   80788: 48 f0 7d 92  	and	x8, x2, #0xfffffffffffffff8
   8078c: 29 00 0a 8b  	add	x9, x1, x10
   80790: 0b 00 0a 8b  	add	x11, x0, x10
   80794: 4a 01 08 cb  	sub	x10, x10, x8
   80798: ed 03 09 aa  	mov	x13, x9
   8079c: 2c 15 40 39  	ldrb	w12, [x9, #5]
   807a0: ae 4d 40 38  	ldrb	w14, [x13, #4]!
   807a4: 2f 05 40 39  	ldrb	w15, [x9, #1]
   807a8: 30 01 40 39  	ldrb	w16, [x9]
   807ac: 31 0d 40 39  	ldrb	w17, [x9, #3]
   807b0: a3 0d 40 39  	ldrb	w3, [x13, #3]
   807b4: ad 09 40 39  	ldrb	w13, [x13, #2]
   807b8: 32 09 40 39  	ldrb	w18, [x9, #2]
   807bc: 8e 1d 18 33  	bfi	w14, w12, #8, #8
   807c0: 6f 05 00 39  	strb	w15, [x11, #1]
   807c4: ef 03 0d 2a  	mov	w15, w13
   807c8: 6f 1c 18 33  	bfi	w15, w3, #8, #8
   807cc: ee 3d 10 33  	bfi	w14, w15, #16, #16
   807d0: 6c 15 00 39  	strb	w12, [x11, #5]
   807d4: 6c 21 00 91  	add	x12, x11, #8
   807d8: 72 09 00 39  	strb	w18, [x11, #2]
   807dc: 71 0d 00 39  	strb	w17, [x11, #3]
   807e0: 70 01 00 39  	strb	w16, [x11]
   807e4: 6e 4d 00 38  	strb	w14, [x11, #4]!
   807e8: 4a 21 00 b1  	adds	x10, x10, #8
   807ec: 6d 09 00 39  	strb	w13, [x11, #2]
   807f0: 63 0d 00 39  	strb	w3, [x11, #3]
   807f4: 29 21 00 91  	add	x9, x9, #8
   807f8: eb 03 0c aa  	mov	x11, x12
   807fc: e1 fc ff 54  	b.ne	0x80798 <memcpy+0x2d8>
   80800: 1f 01 02 eb  	cmp	x8, x2
   80804: 20 e8 ff 54  	b.eq	0x80508 <memcpy+0x48>
   80808: 39 ff ff 17  	b	0x804ec <memcpy+0x2c>
