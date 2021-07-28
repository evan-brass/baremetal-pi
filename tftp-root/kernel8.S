
baremetal-pi:	file format elf64-littleaarch64


Disassembly of section .boot:

0000000000080000 <_start>:
   80000: ff 03 6d b2  	orr	sp, xzr, #0x80000
   80004: a8 00 38 d5  	mrs	x8, MPIDR_EL1
   80008: 1f 05 40 f2  	tst	x8, #0x3
   8000c: 60 00 00 54  	b.eq	0x80018 <_start+0x18>
   80010: 5f 20 03 d5  	wfe
   80014: ff ff ff 17  	b	0x80010 <_start+0x10>
   80018: 88 00 80 52  	mov	w8, #4
   8001c: 4b 02 80 52  	mov	w11, #18
   80020: 08 e4 a7 72  	movk	w8, #16160, lsl #16
   80024: 89 0c 8a 52  	mov	w9, #20580
   80028: 29 e4 a7 72  	movk	w9, #16161, lsl #16
   8002c: 6c 00 80 52  	mov	w12, #3
   80030: 0a 01 40 b9  	ldr	w10, [x8]
   80034: 6a 15 14 33  	bfi	w10, w11, #12, #6
   80038: 0a 01 00 b9  	str	w10, [x8]
   8003c: ca 21 80 52  	mov	w10, #270
   80040: 2b 05 40 b9  	ldr	w11, [x9, #4]
   80044: 4b 3d 00 33  	bfxil	w11, w10, #0, #16
   80048: ca 12 80 52  	mov	w10, #150
   8004c: 2b 05 00 b9  	str	w11, [x9, #4]
   80050: 2c 81 1e b8  	stur	w12, [x9, #-24]
   80054: 1f 20 03 d5  	nop
   80058: 4a 05 00 f1  	subs	x10, x10, #1
   8005c: c1 ff ff 54  	b.ne	0x80054 <_start+0x54>
   80060: 6b 00 80 52  	mov	w11, #3
   80064: 04 20 81 52  	mov	w4, #2304
   80068: 0a 00 a4 52  	mov	w10, #536870912
   8006c: 0c 09 80 52  	mov	w12, #72
   80070: ad 0c 80 52  	mov	w13, #101
   80074: 8e 0d 80 52  	mov	w14, #108
   80078: 2b c1 1f b8  	stur	w11, [x9, #-4]
   8007c: 0b 48 88 52  	mov	w11, #16960
   80080: 00 05 40 b9  	ldr	w0, [x8, #4]
   80084: eb 01 a0 72  	movk	w11, #15, lsl #16
   80088: ef 0d 80 52  	mov	w15, #111
   8008c: 10 04 80 52  	mov	w16, #32
   80090: f1 0a 80 52  	mov	w17, #87
   80094: 52 0e 80 52  	mov	w18, #114
   80098: a2 01 80 52  	mov	w2, #13
   8009c: 43 01 80 52  	mov	w3, #10
   800a0: 01 70 02 12  	and	w1, w0, #0xc7ffffff
   800a4: 80 0c 80 52  	mov	w0, #100
   800a8: 25 00 05 32  	orr	w5, w1, #0x8000000
   800ac: 21 04 80 52  	mov	w1, #33
   800b0: a4 07 a0 72  	movk	w4, #61, lsl #16
   800b4: 05 05 00 b9  	str	w5, [x8, #4]
   800b8: e5 03 0b aa  	mov	x5, x11
   800bc: 0a 19 00 b9  	str	w10, [x8, #24]
   800c0: 1f 20 03 d5  	nop
   800c4: a5 04 00 f1  	subs	x5, x5, #1
   800c8: c1 ff ff 54  	b.ne	0x800c0 <_start+0xc0>
   800cc: 0a 25 00 b9  	str	w10, [x8, #36]
   800d0: 25 01 40 b9  	ldr	w5, [x9]
   800d4: e5 ff 0f 36  	tbz	w5, #1, 0x800d0 <_start+0xd0>
   800d8: 2c c1 1d b8  	stur	w12, [x9, #-36]
   800dc: 25 01 40 b9  	ldr	w5, [x9]
   800e0: e5 ff 0f 36  	tbz	w5, #1, 0x800dc <_start+0xdc>
   800e4: 2d c1 1d b8  	stur	w13, [x9, #-36]
   800e8: 25 01 40 b9  	ldr	w5, [x9]
   800ec: e5 ff 0f 36  	tbz	w5, #1, 0x800e8 <_start+0xe8>
   800f0: 2e c1 1d b8  	stur	w14, [x9, #-36]
   800f4: 25 01 40 b9  	ldr	w5, [x9]
   800f8: e5 ff 0f 36  	tbz	w5, #1, 0x800f4 <_start+0xf4>
   800fc: 2e c1 1d b8  	stur	w14, [x9, #-36]
   80100: 25 01 40 b9  	ldr	w5, [x9]
   80104: e5 ff 0f 36  	tbz	w5, #1, 0x80100 <_start+0x100>
   80108: 2f c1 1d b8  	stur	w15, [x9, #-36]
   8010c: 25 01 40 b9  	ldr	w5, [x9]
   80110: e5 ff 0f 36  	tbz	w5, #1, 0x8010c <_start+0x10c>
   80114: 30 c1 1d b8  	stur	w16, [x9, #-36]
   80118: 25 01 40 b9  	ldr	w5, [x9]
   8011c: e5 ff 0f 36  	tbz	w5, #1, 0x80118 <_start+0x118>
   80120: 31 c1 1d b8  	stur	w17, [x9, #-36]
   80124: 25 01 40 b9  	ldr	w5, [x9]
   80128: e5 ff 0f 36  	tbz	w5, #1, 0x80124 <_start+0x124>
   8012c: 2f c1 1d b8  	stur	w15, [x9, #-36]
   80130: 25 01 40 b9  	ldr	w5, [x9]
   80134: e5 ff 0f 36  	tbz	w5, #1, 0x80130 <_start+0x130>
   80138: 32 c1 1d b8  	stur	w18, [x9, #-36]
   8013c: 25 01 40 b9  	ldr	w5, [x9]
   80140: e5 ff 0f 36  	tbz	w5, #1, 0x8013c <_start+0x13c>
   80144: 2e c1 1d b8  	stur	w14, [x9, #-36]
   80148: 25 01 40 b9  	ldr	w5, [x9]
   8014c: e5 ff 0f 36  	tbz	w5, #1, 0x80148 <_start+0x148>
   80150: 20 c1 1d b8  	stur	w0, [x9, #-36]
   80154: 25 01 40 b9  	ldr	w5, [x9]
   80158: e5 ff 0f 36  	tbz	w5, #1, 0x80154 <_start+0x154>
   8015c: 21 c1 1d b8  	stur	w1, [x9, #-36]
   80160: 25 01 40 b9  	ldr	w5, [x9]
   80164: e5 ff 0f 36  	tbz	w5, #1, 0x80160 <_start+0x160>
   80168: 22 c1 1d b8  	stur	w2, [x9, #-36]
   8016c: 25 01 40 b9  	ldr	w5, [x9]
   80170: e5 ff 0f 36  	tbz	w5, #1, 0x8016c <_start+0x16c>
   80174: 23 c1 1d b8  	stur	w3, [x9, #-36]
   80178: 25 01 40 b9  	ldr	w5, [x9]
   8017c: e5 ff 1f 36  	tbz	w5, #3, 0x80178 <_start+0x178>
   80180: e5 03 04 aa  	mov	x5, x4
   80184: 1f 20 03 d5  	nop
   80188: a5 04 00 f1  	subs	x5, x5, #1
   8018c: c1 ff ff 54  	b.ne	0x80184 <_start+0x184>
   80190: ca ff ff 17  	b	0x800b8 <_start+0xb8>
