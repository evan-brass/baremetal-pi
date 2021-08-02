
target/aarch64-unknown-none-softfloat/release/deps/baremetal_pi-1fab2038a55ae365.baremetal_pi.d92ef53e-cgu.2.rcgu.o:	file format elf64-littleaarch64


Disassembly of section .text._ZN4core3ptr37drop_in_place$LT$core..fmt..Error$GT$17hc0e0a78b6d7f041bE:

0000000000000000 <_ZN4core3ptr37drop_in_place$LT$core..fmt..Error$GT$17hc0e0a78b6d7f041bE>:
       0: c0 03 5f d6  	ret

Disassembly of section .text.rust_begin_unwind:

0000000000000000 <rust_begin_unwind>:
       0: fe 0f 1e f8  	str	x30, [sp, #-32]!
       4: f4 4f 01 a9  	stp	x20, x19, [sp, #16]
       8: 88 00 80 52  	mov	w8, #4
       c: 4a 02 80 52  	mov	w10, #18
      10: 08 e4 a7 72  	movk	w8, #16160, lsl #16
      14: 14 08 8a 52  	mov	w20, #20544
      18: 34 e4 a7 72  	movk	w20, #16161, lsl #16
      1c: 09 01 40 b9  	ldr	w9, [x8]
      20: 49 15 14 33  	bfi	w9, w10, #12, #6
      24: 6a 00 80 52  	mov	w10, #3
      28: 09 01 00 b9  	str	w9, [x8]
      2c: c8 21 80 52  	mov	w8, #270
      30: 89 2a 40 b9  	ldr	w9, [x20, #40]
      34: 09 3d 00 33  	bfxil	w9, w8, #0, #16
      38: c8 12 80 52  	mov	w8, #150
      3c: 89 2a 00 b9  	str	w9, [x20, #40]
      40: 8a 0e 00 b9  	str	w10, [x20, #12]
      44: 1f 20 03 d5  	nop
      48: 08 05 00 f1  	subs	x8, x8, #1
      4c: c1 ff ff 54  	b.ne	0x44 <rust_begin_unwind+0x44>
      50: 68 00 80 52  	mov	w8, #3
      54: 88 22 00 b9  	str	w8, [x20, #32]
      58: 88 26 40 b9  	ldr	w8, [x20, #36]
      5c: e8 ff 0f 36  	tbz	w8, #1, 0x58 <rust_begin_unwind+0x58>
      60: 08 0e 80 52  	mov	w8, #112
      64: 88 02 00 b9  	str	w8, [x20]
      68: 88 26 40 b9  	ldr	w8, [x20, #36]
      6c: e8 ff 0f 36  	tbz	w8, #1, 0x68 <rust_begin_unwind+0x68>
      70: 28 0c 80 52  	mov	w8, #97
      74: 88 02 00 b9  	str	w8, [x20]
      78: 88 26 40 b9  	ldr	w8, [x20, #36]
      7c: e8 ff 0f 36  	tbz	w8, #1, 0x78 <rust_begin_unwind+0x78>
      80: c8 0d 80 52  	mov	w8, #110
      84: 88 02 00 b9  	str	w8, [x20]
      88: 88 26 40 b9  	ldr	w8, [x20, #36]
      8c: e8 ff 0f 36  	tbz	w8, #1, 0x88 <rust_begin_unwind+0x88>
      90: 28 0d 80 52  	mov	w8, #105
      94: 88 02 00 b9  	str	w8, [x20]
      98: 88 26 40 b9  	ldr	w8, [x20, #36]
      9c: e8 ff 0f 36  	tbz	w8, #1, 0x98 <rust_begin_unwind+0x98>
      a0: 68 0c 80 52  	mov	w8, #99
      a4: 88 02 00 b9  	str	w8, [x20]
      a8: 89 26 40 b9  	ldr	w9, [x20, #36]
      ac: e9 ff 0f 36  	tbz	w9, #1, 0xa8 <rust_begin_unwind+0xa8>
      b0: 09 04 80 52  	mov	w9, #32
      b4: 89 02 00 b9  	str	w9, [x20]
      b8: 89 26 40 b9  	ldr	w9, [x20, #36]
      bc: e9 ff 0f 36  	tbz	w9, #1, 0xb8 <rust_begin_unwind+0xb8>
      c0: e9 0d 80 52  	mov	w9, #111
      c4: 89 02 00 b9  	str	w9, [x20]
      c8: 89 26 40 b9  	ldr	w9, [x20, #36]
      cc: e9 ff 0f 36  	tbz	w9, #1, 0xc8 <rust_begin_unwind+0xc8>
      d0: 88 02 00 b9  	str	w8, [x20]
      d4: 89 26 40 b9  	ldr	w9, [x20, #36]
      d8: e9 ff 0f 36  	tbz	w9, #1, 0xd4 <rust_begin_unwind+0xd4>
      dc: 88 02 00 b9  	str	w8, [x20]
      e0: 88 26 40 b9  	ldr	w8, [x20, #36]
      e4: e8 ff 0f 36  	tbz	w8, #1, 0xe0 <rust_begin_unwind+0xe0>
      e8: a8 0e 80 52  	mov	w8, #117
      ec: 88 02 00 b9  	str	w8, [x20]
      f0: 88 26 40 b9  	ldr	w8, [x20, #36]
      f4: e8 ff 0f 36  	tbz	w8, #1, 0xf0 <rust_begin_unwind+0xf0>
      f8: 48 0e 80 52  	mov	w8, #114
      fc: 88 02 00 b9  	str	w8, [x20]
     100: 89 26 40 b9  	ldr	w9, [x20, #36]
     104: e9 ff 0f 36  	tbz	w9, #1, 0x100 <rust_begin_unwind+0x100>
     108: 88 02 00 b9  	str	w8, [x20]
     10c: 88 26 40 b9  	ldr	w8, [x20, #36]
     110: e8 ff 0f 36  	tbz	w8, #1, 0x10c <rust_begin_unwind+0x10c>
     114: a8 0c 80 52  	mov	w8, #101
     118: 88 02 00 b9  	str	w8, [x20]
     11c: 88 26 40 b9  	ldr	w8, [x20, #36]
     120: e8 ff 0f 36  	tbz	w8, #1, 0x11c <rust_begin_unwind+0x11c>
     124: 88 0c 80 52  	mov	w8, #100
     128: 88 02 00 b9  	str	w8, [x20]
     12c: 00 00 00 94  	bl	0x12c <rust_begin_unwind+0x12c>
     130: 28 0c 40 f9  	ldr	x8, [x1, #24]
     134: f3 03 00 aa  	mov	x19, x0
     138: 00 01 3f d6  	blr	x8
     13c: 88 9e 97 d2  	mov	x8, #48372
     140: e8 98 bd f2  	movk	x8, #60615, lsl #16
     144: c8 23 d5 f2  	movk	x8, #43294, lsl #32
     148: 48 de ef f2  	movk	x8, #32498, lsl #48
     14c: 1f 00 08 eb  	cmp	x0, x8
     150: 61 02 00 54  	b.ne	0x19c <rust_begin_unwind+0x19c>
     154: 88 26 40 b9  	ldr	w8, [x20, #36]
     158: e8 ff 0f 36  	tbz	w8, #1, 0x154 <rust_begin_unwind+0x154>
     15c: 48 07 80 52  	mov	w8, #58
     160: 88 02 00 b9  	str	w8, [x20]
     164: 88 26 40 b9  	ldr	w8, [x20, #36]
     168: e8 ff 0f 36  	tbz	w8, #1, 0x164 <rust_begin_unwind+0x164>
     16c: 08 04 80 52  	mov	w8, #32
     170: 88 02 00 b9  	str	w8, [x20]
     174: 69 06 40 f9  	ldr	x9, [x19, #8]
     178: 29 01 00 b4  	cbz	x9, 0x19c <rust_begin_unwind+0x19c>
     17c: 68 02 40 f9  	ldr	x8, [x19]
     180: 09 01 09 8b  	add	x9, x8, x9
     184: 8a 26 40 b9  	ldr	w10, [x20, #36]
     188: ea ff 0f 36  	tbz	w10, #1, 0x184 <rust_begin_unwind+0x184>
     18c: 0a 15 40 38  	ldrb	w10, [x8], #1
     190: 1f 01 09 eb  	cmp	x8, x9
     194: 8a 02 00 b9  	str	w10, [x20]
     198: 61 ff ff 54  	b.ne	0x184 <rust_begin_unwind+0x184>
     19c: 5f 20 03 d5  	wfe
     1a0: ff ff ff 17  	b	0x19c <rust_begin_unwind+0x19c>

Disassembly of section .text._ZN12baremetal_pi4main17h02d93c4b0c6e8c9eE:

0000000000000000 <_ZN12baremetal_pi4main17h02d93c4b0c6e8c9eE>:
       0: ff c3 01 d1  	sub	sp, sp, #112
       4: fe 5f 04 a9  	stp	x30, x23, [sp, #64]
       8: f6 57 05 a9  	stp	x22, x21, [sp, #80]
       c: f4 4f 06 a9  	stp	x20, x19, [sp, #96]
      10: 93 03 80 52  	mov	w19, #28
      14: 4a 02 80 52  	mov	w10, #18
      18: 13 e4 a7 72  	movk	w19, #16160, lsl #16
      1c: 08 0d 8a 52  	mov	w8, #20584
      20: 28 e4 a7 72  	movk	w8, #16161, lsl #16
      24: 6b 00 80 52  	mov	w11, #3
      28: 69 82 5e b8  	ldur	w9, [x19, #-24]
      2c: 49 15 14 33  	bfi	w9, w10, #12, #6
      30: 69 82 1e b8  	stur	w9, [x19, #-24]
      34: c9 21 80 52  	mov	w9, #270
      38: 0a 01 40 b9  	ldr	w10, [x8]
      3c: 2a 3d 00 33  	bfxil	w10, w9, #0, #16
      40: c9 12 80 52  	mov	w9, #150
      44: 0a 01 00 b9  	str	w10, [x8]
      48: 0b 41 1e b8  	stur	w11, [x8, #-28]
      4c: 1f 20 03 d5  	nop
      50: 29 05 00 f1  	subs	x9, x9, #1
      54: c1 ff ff 54  	b.ne	0x4c <_ZN12baremetal_pi4main17h02d93c4b0c6e8c9eE+0x4c>
      58: 69 00 80 52  	mov	w9, #3
      5c: 14 48 88 52  	mov	w20, #16960
      60: f4 01 a0 72  	movk	w20, #15, lsl #16
      64: 0a 00 a4 52  	mov	w10, #536870912
      68: 09 81 1f b8  	stur	w9, [x8, #-8]
      6c: 68 c2 5e b8  	ldur	w8, [x19, #-20]
      70: 08 71 02 12  	and	w8, w8, #0xc7ffffff
      74: 09 01 05 32  	orr	w9, w8, #0x8000000
      78: e8 03 14 aa  	mov	x8, x20
      7c: 69 c2 1e b8  	stur	w9, [x19, #-20]
      80: 6a 02 00 b9  	str	w10, [x19]
      84: 1f 20 03 d5  	nop
      88: 08 05 00 f1  	subs	x8, x8, #1
      8c: c1 ff ff 54  	b.ne	0x84 <_ZN12baremetal_pi4main17h02d93c4b0c6e8c9eE+0x84>
      90: 16 00 00 90  	adrp	x22, 0x0 <_ZN12baremetal_pi4main17h02d93c4b0c6e8c9eE+0x90>
      94: 17 00 00 90  	adrp	x23, 0x0 <_ZN12baremetal_pi4main17h02d93c4b0c6e8c9eE+0x94>
      98: 08 00 a4 52  	mov	w8, #536870912
      9c: e9 43 00 91  	add	x9, sp, #16
      a0: d6 02 00 91  	add	x22, x22, #0
      a4: 2a 00 80 52  	mov	w10, #1
      a8: f7 02 00 91  	add	x23, x23, #0
      ac: e0 23 00 91  	add	x0, sp, #8
      b0: e1 43 00 91  	add	x1, sp, #16
      b4: 68 0e 00 b9  	str	w8, [x19, #12]
      b8: e9 db 00 a9  	stp	x9, x22, [sp, #8]
      bc: ea ff 01 a9  	stp	x10, xzr, [sp, #24]
      c0: ff df 02 a9  	stp	xzr, x23, [sp, #40]
      c4: ff 1f 00 f9  	str	xzr, [sp, #56]
      c8: 00 00 00 94  	bl	0xc8 <_ZN12baremetal_pi4main17h02d93c4b0c6e8c9eE+0xc8>
      cc: 00 19 00 35  	cbnz	w0, 0x3ec <_ZN12baremetal_pi4main17h02d93c4b0c6e8c9eE+0x3ec>
      d0: 15 20 81 52  	mov	w21, #2304
      d4: b5 07 a0 72  	movk	w21, #61, lsl #16
      d8: e8 03 15 aa  	mov	x8, x21
      dc: 1f 20 03 d5  	nop
      e0: 08 05 00 f1  	subs	x8, x8, #1
      e4: c1 ff ff 54  	b.ne	0xdc <_ZN12baremetal_pi4main17h02d93c4b0c6e8c9eE+0xdc>
      e8: 09 00 a4 52  	mov	w9, #536870912
      ec: e8 03 14 aa  	mov	x8, x20
      f0: 69 02 00 b9  	str	w9, [x19]
      f4: 1f 20 03 d5  	nop
      f8: 08 05 00 f1  	subs	x8, x8, #1
      fc: c1 ff ff 54  	b.ne	0xf4 <_ZN12baremetal_pi4main17h02d93c4b0c6e8c9eE+0xf4>
     100: 08 00 a4 52  	mov	w8, #536870912
     104: e9 43 00 91  	add	x9, sp, #16
     108: 2a 00 80 52  	mov	w10, #1
     10c: e0 23 00 91  	add	x0, sp, #8
     110: e1 43 00 91  	add	x1, sp, #16
     114: 68 0e 00 b9  	str	w8, [x19, #12]
     118: e9 db 00 a9  	stp	x9, x22, [sp, #8]
     11c: ea ff 01 a9  	stp	x10, xzr, [sp, #24]
     120: ff df 02 a9  	stp	xzr, x23, [sp, #40]
     124: ff 1f 00 f9  	str	xzr, [sp, #56]
     128: 00 00 00 94  	bl	0x128 <_ZN12baremetal_pi4main17h02d93c4b0c6e8c9eE+0x128>
     12c: 00 16 00 37  	tbnz	w0, #0, 0x3ec <_ZN12baremetal_pi4main17h02d93c4b0c6e8c9eE+0x3ec>
     130: e8 03 15 aa  	mov	x8, x21
     134: 1f 20 03 d5  	nop
     138: 08 05 00 f1  	subs	x8, x8, #1
     13c: c1 ff ff 54  	b.ne	0x134 <_ZN12baremetal_pi4main17h02d93c4b0c6e8c9eE+0x134>
     140: 09 00 a4 52  	mov	w9, #536870912
     144: e8 03 14 aa  	mov	x8, x20
     148: 69 02 00 b9  	str	w9, [x19]
     14c: 1f 20 03 d5  	nop
     150: 08 05 00 f1  	subs	x8, x8, #1
     154: c1 ff ff 54  	b.ne	0x14c <_ZN12baremetal_pi4main17h02d93c4b0c6e8c9eE+0x14c>
     158: 08 00 a4 52  	mov	w8, #536870912
     15c: e9 43 00 91  	add	x9, sp, #16
     160: 2a 00 80 52  	mov	w10, #1
     164: e0 23 00 91  	add	x0, sp, #8
     168: e1 43 00 91  	add	x1, sp, #16
     16c: 68 0e 00 b9  	str	w8, [x19, #12]
     170: e9 db 00 a9  	stp	x9, x22, [sp, #8]
     174: ea ff 01 a9  	stp	x10, xzr, [sp, #24]
     178: ff df 02 a9  	stp	xzr, x23, [sp, #40]
     17c: ff 1f 00 f9  	str	xzr, [sp, #56]
     180: 00 00 00 94  	bl	0x180 <_ZN12baremetal_pi4main17h02d93c4b0c6e8c9eE+0x180>
     184: 40 13 00 37  	tbnz	w0, #0, 0x3ec <_ZN12baremetal_pi4main17h02d93c4b0c6e8c9eE+0x3ec>
     188: e8 03 15 aa  	mov	x8, x21
     18c: 1f 20 03 d5  	nop
     190: 08 05 00 f1  	subs	x8, x8, #1
     194: c1 ff ff 54  	b.ne	0x18c <_ZN12baremetal_pi4main17h02d93c4b0c6e8c9eE+0x18c>
     198: 09 00 a4 52  	mov	w9, #536870912
     19c: e8 03 14 aa  	mov	x8, x20
     1a0: 69 02 00 b9  	str	w9, [x19]
     1a4: 1f 20 03 d5  	nop
     1a8: 08 05 00 f1  	subs	x8, x8, #1
     1ac: c1 ff ff 54  	b.ne	0x1a4 <_ZN12baremetal_pi4main17h02d93c4b0c6e8c9eE+0x1a4>
     1b0: 08 00 a4 52  	mov	w8, #536870912
     1b4: e9 43 00 91  	add	x9, sp, #16
     1b8: 2a 00 80 52  	mov	w10, #1
     1bc: e0 23 00 91  	add	x0, sp, #8
     1c0: e1 43 00 91  	add	x1, sp, #16
     1c4: 68 0e 00 b9  	str	w8, [x19, #12]
     1c8: e9 db 00 a9  	stp	x9, x22, [sp, #8]
     1cc: ea ff 01 a9  	stp	x10, xzr, [sp, #24]
     1d0: ff df 02 a9  	stp	xzr, x23, [sp, #40]
     1d4: ff 1f 00 f9  	str	xzr, [sp, #56]
     1d8: 00 00 00 94  	bl	0x1d8 <_ZN12baremetal_pi4main17h02d93c4b0c6e8c9eE+0x1d8>
     1dc: 80 10 00 37  	tbnz	w0, #0, 0x3ec <_ZN12baremetal_pi4main17h02d93c4b0c6e8c9eE+0x3ec>
     1e0: e8 03 15 aa  	mov	x8, x21
     1e4: 1f 20 03 d5  	nop
     1e8: 08 05 00 f1  	subs	x8, x8, #1
     1ec: c1 ff ff 54  	b.ne	0x1e4 <_ZN12baremetal_pi4main17h02d93c4b0c6e8c9eE+0x1e4>
     1f0: 09 00 a4 52  	mov	w9, #536870912
     1f4: e8 03 14 aa  	mov	x8, x20
     1f8: 69 02 00 b9  	str	w9, [x19]
     1fc: 1f 20 03 d5  	nop
     200: 08 05 00 f1  	subs	x8, x8, #1
     204: c1 ff ff 54  	b.ne	0x1fc <_ZN12baremetal_pi4main17h02d93c4b0c6e8c9eE+0x1fc>
     208: 08 00 a4 52  	mov	w8, #536870912
     20c: e9 43 00 91  	add	x9, sp, #16
     210: 2a 00 80 52  	mov	w10, #1
     214: e0 23 00 91  	add	x0, sp, #8
     218: e1 43 00 91  	add	x1, sp, #16
     21c: 68 0e 00 b9  	str	w8, [x19, #12]
     220: e9 db 00 a9  	stp	x9, x22, [sp, #8]
     224: ea ff 01 a9  	stp	x10, xzr, [sp, #24]
     228: ff df 02 a9  	stp	xzr, x23, [sp, #40]
     22c: ff 1f 00 f9  	str	xzr, [sp, #56]
     230: 00 00 00 94  	bl	0x230 <_ZN12baremetal_pi4main17h02d93c4b0c6e8c9eE+0x230>
     234: c0 0d 00 37  	tbnz	w0, #0, 0x3ec <_ZN12baremetal_pi4main17h02d93c4b0c6e8c9eE+0x3ec>
     238: e8 03 15 aa  	mov	x8, x21
     23c: 1f 20 03 d5  	nop
     240: 08 05 00 f1  	subs	x8, x8, #1
     244: c1 ff ff 54  	b.ne	0x23c <_ZN12baremetal_pi4main17h02d93c4b0c6e8c9eE+0x23c>
     248: 09 00 a4 52  	mov	w9, #536870912
     24c: e8 03 14 aa  	mov	x8, x20
     250: 69 02 00 b9  	str	w9, [x19]
     254: 1f 20 03 d5  	nop
     258: 08 05 00 f1  	subs	x8, x8, #1
     25c: c1 ff ff 54  	b.ne	0x254 <_ZN12baremetal_pi4main17h02d93c4b0c6e8c9eE+0x254>
     260: 08 00 a4 52  	mov	w8, #536870912
     264: e9 43 00 91  	add	x9, sp, #16
     268: 2a 00 80 52  	mov	w10, #1
     26c: e0 23 00 91  	add	x0, sp, #8
     270: e1 43 00 91  	add	x1, sp, #16
     274: 68 0e 00 b9  	str	w8, [x19, #12]
     278: e9 db 00 a9  	stp	x9, x22, [sp, #8]
     27c: ea ff 01 a9  	stp	x10, xzr, [sp, #24]
     280: ff df 02 a9  	stp	xzr, x23, [sp, #40]
     284: ff 1f 00 f9  	str	xzr, [sp, #56]
     288: 00 00 00 94  	bl	0x288 <_ZN12baremetal_pi4main17h02d93c4b0c6e8c9eE+0x288>
     28c: 00 0b 00 37  	tbnz	w0, #0, 0x3ec <_ZN12baremetal_pi4main17h02d93c4b0c6e8c9eE+0x3ec>
     290: e8 03 15 aa  	mov	x8, x21
     294: 1f 20 03 d5  	nop
     298: 08 05 00 f1  	subs	x8, x8, #1
     29c: c1 ff ff 54  	b.ne	0x294 <_ZN12baremetal_pi4main17h02d93c4b0c6e8c9eE+0x294>
     2a0: 09 00 a4 52  	mov	w9, #536870912
     2a4: e8 03 14 aa  	mov	x8, x20
     2a8: 69 02 00 b9  	str	w9, [x19]
     2ac: 1f 20 03 d5  	nop
     2b0: 08 05 00 f1  	subs	x8, x8, #1
     2b4: c1 ff ff 54  	b.ne	0x2ac <_ZN12baremetal_pi4main17h02d93c4b0c6e8c9eE+0x2ac>
     2b8: 08 00 a4 52  	mov	w8, #536870912
     2bc: e9 43 00 91  	add	x9, sp, #16
     2c0: 2a 00 80 52  	mov	w10, #1
     2c4: e0 23 00 91  	add	x0, sp, #8
     2c8: e1 43 00 91  	add	x1, sp, #16
     2cc: 68 0e 00 b9  	str	w8, [x19, #12]
     2d0: e9 db 00 a9  	stp	x9, x22, [sp, #8]
     2d4: ea ff 01 a9  	stp	x10, xzr, [sp, #24]
     2d8: ff df 02 a9  	stp	xzr, x23, [sp, #40]
     2dc: ff 1f 00 f9  	str	xzr, [sp, #56]
     2e0: 00 00 00 94  	bl	0x2e0 <_ZN12baremetal_pi4main17h02d93c4b0c6e8c9eE+0x2e0>
     2e4: 40 08 00 37  	tbnz	w0, #0, 0x3ec <_ZN12baremetal_pi4main17h02d93c4b0c6e8c9eE+0x3ec>
     2e8: e8 03 15 aa  	mov	x8, x21
     2ec: 1f 20 03 d5  	nop
     2f0: 08 05 00 f1  	subs	x8, x8, #1
     2f4: c1 ff ff 54  	b.ne	0x2ec <_ZN12baremetal_pi4main17h02d93c4b0c6e8c9eE+0x2ec>
     2f8: 09 00 a4 52  	mov	w9, #536870912
     2fc: e8 03 14 aa  	mov	x8, x20
     300: 69 02 00 b9  	str	w9, [x19]
     304: 1f 20 03 d5  	nop
     308: 08 05 00 f1  	subs	x8, x8, #1
     30c: c1 ff ff 54  	b.ne	0x304 <_ZN12baremetal_pi4main17h02d93c4b0c6e8c9eE+0x304>
     310: 08 00 a4 52  	mov	w8, #536870912
     314: e9 43 00 91  	add	x9, sp, #16
     318: 2a 00 80 52  	mov	w10, #1
     31c: e0 23 00 91  	add	x0, sp, #8
     320: e1 43 00 91  	add	x1, sp, #16
     324: 68 0e 00 b9  	str	w8, [x19, #12]
     328: e9 db 00 a9  	stp	x9, x22, [sp, #8]
     32c: ea ff 01 a9  	stp	x10, xzr, [sp, #24]
     330: ff df 02 a9  	stp	xzr, x23, [sp, #40]
     334: ff 1f 00 f9  	str	xzr, [sp, #56]
     338: 00 00 00 94  	bl	0x338 <_ZN12baremetal_pi4main17h02d93c4b0c6e8c9eE+0x338>
     33c: 80 05 00 37  	tbnz	w0, #0, 0x3ec <_ZN12baremetal_pi4main17h02d93c4b0c6e8c9eE+0x3ec>
     340: e8 03 15 aa  	mov	x8, x21
     344: 1f 20 03 d5  	nop
     348: 08 05 00 f1  	subs	x8, x8, #1
     34c: c1 ff ff 54  	b.ne	0x344 <_ZN12baremetal_pi4main17h02d93c4b0c6e8c9eE+0x344>
     350: 09 00 a4 52  	mov	w9, #536870912
     354: e8 03 14 aa  	mov	x8, x20
     358: 69 02 00 b9  	str	w9, [x19]
     35c: 1f 20 03 d5  	nop
     360: 08 05 00 f1  	subs	x8, x8, #1
     364: c1 ff ff 54  	b.ne	0x35c <_ZN12baremetal_pi4main17h02d93c4b0c6e8c9eE+0x35c>
     368: 08 00 a4 52  	mov	w8, #536870912
     36c: e9 43 00 91  	add	x9, sp, #16
     370: 2a 00 80 52  	mov	w10, #1
     374: e0 23 00 91  	add	x0, sp, #8
     378: e1 43 00 91  	add	x1, sp, #16
     37c: 68 0e 00 b9  	str	w8, [x19, #12]
     380: e9 db 00 a9  	stp	x9, x22, [sp, #8]
     384: ea ff 01 a9  	stp	x10, xzr, [sp, #24]
     388: ff df 02 a9  	stp	xzr, x23, [sp, #40]
     38c: ff 1f 00 f9  	str	xzr, [sp, #56]
     390: 00 00 00 94  	bl	0x390 <_ZN12baremetal_pi4main17h02d93c4b0c6e8c9eE+0x390>
     394: c0 02 00 37  	tbnz	w0, #0, 0x3ec <_ZN12baremetal_pi4main17h02d93c4b0c6e8c9eE+0x3ec>
     398: e8 03 15 aa  	mov	x8, x21
     39c: 1f 20 03 d5  	nop
     3a0: 08 05 00 f1  	subs	x8, x8, #1
     3a4: c1 ff ff 54  	b.ne	0x39c <_ZN12baremetal_pi4main17h02d93c4b0c6e8c9eE+0x39c>
     3a8: 08 00 a4 52  	mov	w8, #536870912
     3ac: 68 02 00 b9  	str	w8, [x19]
     3b0: 1f 20 03 d5  	nop
     3b4: 94 06 00 f1  	subs	x20, x20, #1
     3b8: c1 ff ff 54  	b.ne	0x3b0 <_ZN12baremetal_pi4main17h02d93c4b0c6e8c9eE+0x3b0>
     3bc: 08 00 a4 52  	mov	w8, #536870912
     3c0: e9 43 00 91  	add	x9, sp, #16
     3c4: 2a 00 80 52  	mov	w10, #1
     3c8: e0 23 00 91  	add	x0, sp, #8
     3cc: e1 43 00 91  	add	x1, sp, #16
     3d0: 68 0e 00 b9  	str	w8, [x19, #12]
     3d4: e9 db 00 a9  	stp	x9, x22, [sp, #8]
     3d8: ea ff 01 a9  	stp	x10, xzr, [sp, #24]
     3dc: ff df 02 a9  	stp	xzr, x23, [sp, #40]
     3e0: ff 1f 00 f9  	str	xzr, [sp, #56]
     3e4: 00 00 00 94  	bl	0x3e4 <_ZN12baremetal_pi4main17h02d93c4b0c6e8c9eE+0x3e4>
     3e8: 80 00 00 36  	tbz	w0, #0, 0x3f8 <_ZN12baremetal_pi4main17h02d93c4b0c6e8c9eE+0x3f8>
     3ec: e0 43 00 91  	add	x0, sp, #16
     3f0: 00 00 00 94  	bl	0x3f0 <_ZN12baremetal_pi4main17h02d93c4b0c6e8c9eE+0x3f0>
     3f4: 20 00 20 d4  	brk	#0x1
     3f8: 1f 20 03 d5  	nop
     3fc: b5 06 00 f1  	subs	x21, x21, #1
     400: c1 ff ff 54  	b.ne	0x3f8 <_ZN12baremetal_pi4main17h02d93c4b0c6e8c9eE+0x3f8>
     404: 00 00 00 90  	adrp	x0, 0x0 <_ZN12baremetal_pi4main17h02d93c4b0c6e8c9eE+0x404>
     408: 02 00 00 90  	adrp	x2, 0x0 <_ZN12baremetal_pi4main17h02d93c4b0c6e8c9eE+0x408>
     40c: 00 00 00 91  	add	x0, x0, #0
     410: 42 00 00 91  	add	x2, x2, #0
     414: e1 01 80 52  	mov	w1, #15
     418: 00 00 00 94  	bl	0x418 <_ZN12baremetal_pi4main17h02d93c4b0c6e8c9eE+0x418>
     41c: 20 00 20 d4  	brk	#0x1

Disassembly of section .boot:

0000000000000000 <_start>:
       0: ff 03 6d b2  	orr	sp, xzr, #0x80000
       4: a8 00 38 d5  	mrs	x8, MPIDR_EL1
       8: 1f 05 40 f2  	tst	x8, #0x3
       c: 60 00 00 54  	b.eq	0x18 <_start+0x18>
      10: 5f 20 03 d5  	wfe
      14: ff ff ff 17  	b	0x10 <_start+0x10>
      18: 00 00 00 94  	bl	0x18 <_start+0x18>
      1c: 20 00 20 d4  	brk	#0x1

Disassembly of section .text._ZN12baremetal_pi4grit9stage_one17he24b54ccefa5d11eE:

0000000000000000 <_ZN12baremetal_pi4grit9stage_one17he24b54ccefa5d11eE>:
       0: fe 0f 1f f8  	str	x30, [sp, #-16]!
       4: 08 00 00 90  	adrp	x8, 0x0 <_ZN12baremetal_pi4grit9stage_one17he24b54ccefa5d11eE+0x4>
       8: 09 00 00 90  	adrp	x9, 0x0 <_ZN12baremetal_pi4grit9stage_one17he24b54ccefa5d11eE+0x8>
       c: e1 03 1f 2a  	mov	w1, wzr
      10: 00 01 40 f9  	ldr	x0, [x8]
      14: 28 01 40 f9  	ldr	x8, [x9]
      18: 02 00 08 cb  	sub	x2, x0, x8
      1c: 00 00 00 94  	bl	0x1c <_ZN12baremetal_pi4grit9stage_one17he24b54ccefa5d11eE+0x1c>
      20: 00 00 00 94  	bl	0x20 <_ZN12baremetal_pi4grit9stage_one17he24b54ccefa5d11eE+0x20>
      24: 20 00 20 d4  	brk	#0x1

Disassembly of section .text._ZN50_$LT$$RF$mut$u20$W$u20$as$u20$core..fmt..Write$GT$9write_str17h4320e2cabb78e7d9E:

0000000000000000 <_ZN50_$LT$$RF$mut$u20$W$u20$as$u20$core..fmt..Write$GT$9write_str17h4320e2cabb78e7d9E>:
       0: 88 0c 8a 52  	mov	w8, #20580
       4: 28 e4 a7 72  	movk	w8, #16161, lsl #16
       8: 02 01 00 b4  	cbz	x2, 0x28 <_ZN50_$LT$$RF$mut$u20$W$u20$as$u20$core..fmt..Write$GT$9write_str17h4320e2cabb78e7d9E+0x28>
       c: 29 00 02 8b  	add	x9, x1, x2
      10: 0a 01 40 b9  	ldr	w10, [x8]
      14: ea ff 0f 36  	tbz	w10, #1, 0x10 <_ZN50_$LT$$RF$mut$u20$W$u20$as$u20$core..fmt..Write$GT$9write_str17h4320e2cabb78e7d9E+0x10>
      18: 2a 14 40 38  	ldrb	w10, [x1], #1
      1c: 3f 00 09 eb  	cmp	x1, x9
      20: 0a c1 1d b8  	stur	w10, [x8, #-36]
      24: 61 ff ff 54  	b.ne	0x10 <_ZN50_$LT$$RF$mut$u20$W$u20$as$u20$core..fmt..Write$GT$9write_str17h4320e2cabb78e7d9E+0x10>
      28: 09 01 40 b9  	ldr	w9, [x8]
      2c: e9 ff 1f 36  	tbz	w9, #3, 0x28 <_ZN50_$LT$$RF$mut$u20$W$u20$as$u20$core..fmt..Write$GT$9write_str17h4320e2cabb78e7d9E+0x28>
      30: e0 03 1f 2a  	mov	w0, wzr
      34: c0 03 5f d6  	ret

Disassembly of section .text._ZN50_$LT$$RF$mut$u20$W$u20$as$u20$core..fmt..Write$GT$10write_char17h156b094a61826ba8E:

0000000000000000 <_ZN50_$LT$$RF$mut$u20$W$u20$as$u20$core..fmt..Write$GT$10write_char17h156b094a61826ba8E>:
       0: ff 43 00 d1  	sub	sp, sp, #16
       4: 3f 00 02 71  	cmp	w1, #128
       8: ff 0f 00 b9  	str	wzr, [sp, #12]
       c: e2 00 00 54  	b.hs	0x28 <_ZN50_$LT$$RF$mut$u20$W$u20$as$u20$core..fmt..Write$GT$10write_char17h156b094a61826ba8E+0x28>
      10: 29 00 80 52  	mov	w9, #1
      14: e1 33 00 39  	strb	w1, [sp, #12]
      18: 88 0c 8a 52  	mov	w8, #20580
      1c: 28 e4 a7 72  	movk	w8, #16161, lsl #16
      20: e9 05 00 b5  	cbnz	x9, 0xdc <_ZN50_$LT$$RF$mut$u20$W$u20$as$u20$core..fmt..Write$GT$10write_char17h156b094a61826ba8E+0xdc>
      24: 37 00 00 14  	b	0x100 <_ZN50_$LT$$RF$mut$u20$W$u20$as$u20$core..fmt..Write$GT$10write_char17h156b094a61826ba8E+0x100>
      28: 3f 00 20 71  	cmp	w1, #2048
      2c: 82 01 00 54  	b.hs	0x5c <_ZN50_$LT$$RF$mut$u20$W$u20$as$u20$core..fmt..Write$GT$10write_char17h156b094a61826ba8E+0x5c>
      30: 28 7c 06 53  	lsr	w8, w1, #6
      34: 0a 10 80 52  	mov	w10, #128
      38: 08 05 1a 32  	orr	w8, w8, #0xc0
      3c: 2a 14 00 33  	bfxil	w10, w1, #0, #6
      40: 49 00 80 52  	mov	w9, #2
      44: ea 37 00 39  	strb	w10, [sp, #13]
      48: e8 33 00 39  	strb	w8, [sp, #12]
      4c: 88 0c 8a 52  	mov	w8, #20580
      50: 28 e4 a7 72  	movk	w8, #16161, lsl #16
      54: 49 04 00 b5  	cbnz	x9, 0xdc <_ZN50_$LT$$RF$mut$u20$W$u20$as$u20$core..fmt..Write$GT$10write_char17h156b094a61826ba8E+0xdc>
      58: 2a 00 00 14  	b	0x100 <_ZN50_$LT$$RF$mut$u20$W$u20$as$u20$core..fmt..Write$GT$10write_char17h156b094a61826ba8E+0x100>
      5c: 3f 40 40 71  	cmp	w1, #16, lsl #12
      60: e2 01 00 54  	b.hs	0x9c <_ZN50_$LT$$RF$mut$u20$W$u20$as$u20$core..fmt..Write$GT$10write_char17h156b094a61826ba8E+0x9c>
      64: 28 7c 0c 53  	lsr	w8, w1, #12
      68: 0a 10 80 52  	mov	w10, #128
      6c: 08 09 1b 32  	orr	w8, w8, #0xe0
      70: 0b 10 80 52  	mov	w11, #128
      74: 2b 2c 06 33  	bfxil	w11, w1, #6, #6
      78: 2a 14 00 33  	bfxil	w10, w1, #0, #6
      7c: 69 00 80 52  	mov	w9, #3
      80: e8 33 00 39  	strb	w8, [sp, #12]
      84: eb 37 00 39  	strb	w11, [sp, #13]
      88: ea 3b 00 39  	strb	w10, [sp, #14]
      8c: 88 0c 8a 52  	mov	w8, #20580
      90: 28 e4 a7 72  	movk	w8, #16161, lsl #16
      94: 49 02 00 b5  	cbnz	x9, 0xdc <_ZN50_$LT$$RF$mut$u20$W$u20$as$u20$core..fmt..Write$GT$10write_char17h156b094a61826ba8E+0xdc>
      98: 1a 00 00 14  	b	0x100 <_ZN50_$LT$$RF$mut$u20$W$u20$as$u20$core..fmt..Write$GT$10write_char17h156b094a61826ba8E+0x100>
      9c: 09 10 80 52  	mov	w9, #128
      a0: 28 7c 12 53  	lsr	w8, w1, #18
      a4: 29 44 0c 33  	bfxil	w9, w1, #12, #6
      a8: 08 0d 1c 32  	orr	w8, w8, #0xf0
      ac: 0a 10 80 52  	mov	w10, #128
      b0: 0b 10 80 52  	mov	w11, #128
      b4: e9 37 00 39  	strb	w9, [sp, #13]
      b8: 89 00 80 52  	mov	w9, #4
      bc: 2b 2c 06 33  	bfxil	w11, w1, #6, #6
      c0: 2a 14 00 33  	bfxil	w10, w1, #0, #6
      c4: e8 33 00 39  	strb	w8, [sp, #12]
      c8: eb 3b 00 39  	strb	w11, [sp, #14]
      cc: ea 3f 00 39  	strb	w10, [sp, #15]
      d0: 88 0c 8a 52  	mov	w8, #20580
      d4: 28 e4 a7 72  	movk	w8, #16161, lsl #16
      d8: 49 01 00 b4  	cbz	x9, 0x100 <_ZN50_$LT$$RF$mut$u20$W$u20$as$u20$core..fmt..Write$GT$10write_char17h156b094a61826ba8E+0x100>
      dc: ea 33 00 91  	add	x10, sp, #12
      e0: 49 01 09 8b  	add	x9, x10, x9
      e4: ea 33 00 91  	add	x10, sp, #12
      e8: 0b 01 40 b9  	ldr	w11, [x8]
      ec: eb ff 0f 36  	tbz	w11, #1, 0xe8 <_ZN50_$LT$$RF$mut$u20$W$u20$as$u20$core..fmt..Write$GT$10write_char17h156b094a61826ba8E+0xe8>
      f0: 4b 15 40 38  	ldrb	w11, [x10], #1
      f4: 5f 01 09 eb  	cmp	x10, x9
      f8: 0b c1 1d b8  	stur	w11, [x8, #-36]
      fc: 61 ff ff 54  	b.ne	0xe8 <_ZN50_$LT$$RF$mut$u20$W$u20$as$u20$core..fmt..Write$GT$10write_char17h156b094a61826ba8E+0xe8>
     100: 09 01 40 b9  	ldr	w9, [x8]
     104: e9 ff 1f 36  	tbz	w9, #3, 0x100 <_ZN50_$LT$$RF$mut$u20$W$u20$as$u20$core..fmt..Write$GT$10write_char17h156b094a61826ba8E+0x100>
     108: e0 03 1f 2a  	mov	w0, wzr
     10c: ff 43 00 91  	add	sp, sp, #16
     110: c0 03 5f d6  	ret

Disassembly of section .text._ZN50_$LT$$RF$mut$u20$W$u20$as$u20$core..fmt..Write$GT$9write_fmt17h9c893b50c2b84b21E:

0000000000000000 <_ZN50_$LT$$RF$mut$u20$W$u20$as$u20$core..fmt..Write$GT$9write_fmt17h9c893b50c2b84b21E>:
       0: ff 03 01 d1  	sub	sp, sp, #64
       4: 08 00 40 f9  	ldr	x8, [x0]
       8: e0 03 00 91  	mov	x0, sp
       c: 02 06 80 52  	mov	w2, #48
      10: fe 23 03 a9  	stp	x30, x8, [sp, #48]
      14: 00 00 00 94  	bl	0x14 <_ZN50_$LT$$RF$mut$u20$W$u20$as$u20$core..fmt..Write$GT$9write_fmt17h9c893b50c2b84b21E+0x14>
      18: e0 e3 00 91  	add	x0, sp, #56
      1c: e1 03 00 91  	mov	x1, sp
      20: 00 00 00 94  	bl	0x20 <_ZN50_$LT$$RF$mut$u20$W$u20$as$u20$core..fmt..Write$GT$9write_fmt17h9c893b50c2b84b21E+0x20>
      24: fe 1b 40 f9  	ldr	x30, [sp, #48]
      28: ff 03 01 91  	add	sp, sp, #64
      2c: c0 03 5f d6  	ret

Disassembly of section .text._ZN4core3ops8function6FnOnce9call_once17h1e0b4b2b1b15e514E:

0000000000000000 <_ZN4core3ops8function6FnOnce9call_once17h1e0b4b2b1b15e514E>:
       0: 1f 00 40 f9  	ldr	xzr, [x0]
       4: 00 00 00 14  	b	0x4 <_ZN4core3ops8function6FnOnce9call_once17h1e0b4b2b1b15e514E+0x4>

Disassembly of section .text.unlikely._ZN4core9panicking9panic_fmt17h548b34a47a4ac578E:

0000000000000000 <_ZN4core9panicking9panic_fmt17h548b34a47a4ac578E>:
       0: 08 00 00 90  	adrp	x8, 0x0 <_ZN4core9panicking9panic_fmt17h548b34a47a4ac578E>
       4: 09 00 00 90  	adrp	x9, 0x0 <_ZN4core9panicking9panic_fmt17h548b34a47a4ac578E+0x4>
       8: 08 01 00 91  	add	x8, x8, #0
       c: 29 01 00 91  	add	x9, x9, #0
      10: e8 27 be a9  	stp	x8, x9, [sp, #-32]!
      14: e0 07 01 a9  	stp	x0, x1, [sp, #16]
      18: e0 03 00 91  	mov	x0, sp
      1c: 00 00 00 94  	bl	0x1c <_ZN4core9panicking9panic_fmt17h548b34a47a4ac578E+0x1c>
      20: 20 00 20 d4  	brk	#0x1

Disassembly of section .text._ZN4core3ptr102drop_in_place$LT$$RF$core..iter..adapters..copied..Copied$LT$core..slice..iter..Iter$LT$u8$GT$$GT$$GT$17h2926ff8863b04fafE:

0000000000000000 <_ZN4core3ptr102drop_in_place$LT$$RF$core..iter..adapters..copied..Copied$LT$core..slice..iter..Iter$LT$u8$GT$$GT$$GT$17h2926ff8863b04fafE>:
       0: c0 03 5f d6  	ret

Disassembly of section .text._ZN36_$LT$T$u20$as$u20$core..any..Any$GT$7type_id17h311a29bdb201aafdE:

0000000000000000 <_ZN36_$LT$T$u20$as$u20$core..any..Any$GT$7type_id17h311a29bdb201aafdE>:
       0: 20 28 87 d2  	mov	x0, #14657
       4: e0 a1 a8 f2  	movk	x0, #17679, lsl #16
       8: 40 43 db f2  	movk	x0, #55834, lsl #32
       c: 20 96 fa f2  	movk	x0, #54449, lsl #48
      10: c0 03 5f d6  	ret

Disassembly of section .text.unlikely._ZN4core9panicking5panic17ha7217054e020f4cfE:

0000000000000000 <_ZN4core9panicking5panic17ha7217054e020f4cfE>:
       0: ff 03 01 d1  	sub	sp, sp, #64
       4: 0a 00 00 90  	adrp	x10, 0x0 <_ZN4core9panicking5panic17ha7217054e020f4cfE+0x4>
       8: e0 07 03 a9  	stp	x0, x1, [sp, #48]
       c: e8 c3 00 91  	add	x8, sp, #48
      10: 29 00 80 52  	mov	w9, #1
      14: 4a 01 00 91  	add	x10, x10, #0
      18: e0 03 00 91  	mov	x0, sp
      1c: e1 03 02 aa  	mov	x1, x2
      20: ff 7f 01 a9  	stp	xzr, xzr, [sp, #16]
      24: e8 27 00 a9  	stp	x8, x9, [sp]
      28: ea 7f 02 a9  	stp	x10, xzr, [sp, #32]
      2c: 00 00 00 94  	bl	0x2c <_ZN4core9panicking5panic17ha7217054e020f4cfE+0x2c>
      30: 20 00 20 d4  	brk	#0x1

Disassembly of section .text._ZN44_$LT$$RF$T$u20$as$u20$core..fmt..Display$GT$3fmt17h3f94e73c8b157ba1E:

0000000000000000 <_ZN44_$LT$$RF$T$u20$as$u20$core..fmt..Display$GT$3fmt17h3f94e73c8b157ba1E>:
       0: fe 67 bc a9  	stp	x30, x25, [sp, #-64]!
       4: f8 5f 01 a9  	stp	x24, x23, [sp, #16]
       8: f6 57 02 a9  	stp	x22, x21, [sp, #32]
       c: f4 4f 03 a9  	stp	x20, x19, [sp, #48]
      10: 28 00 40 f9  	ldr	x8, [x1]
      14: 14 4c 40 a9  	ldp	x20, x19, [x0]
      18: 29 08 40 f9  	ldr	x9, [x1, #16]
      1c: 1f 05 00 f1  	cmp	x8, #1
      20: 81 00 00 54  	b.ne	0x30 <_ZN44_$LT$$RF$T$u20$as$u20$core..fmt..Display$GT$3fmt17h3f94e73c8b157ba1E+0x30>
      24: 3f 05 00 f1  	cmp	x9, #1
      28: 80 00 00 54  	b.eq	0x38 <_ZN44_$LT$$RF$T$u20$as$u20$core..fmt..Display$GT$3fmt17h3f94e73c8b157ba1E+0x38>
      2c: 5a 00 00 14  	b	0x194 <_ZN44_$LT$$RF$T$u20$as$u20$core..fmt..Display$GT$3fmt17h3f94e73c8b157ba1E+0x194>
      30: 3f 05 00 f1  	cmp	x9, #1
      34: 81 10 00 54  	b.ne	0x244 <_ZN44_$LT$$RF$T$u20$as$u20$core..fmt..Display$GT$3fmt17h3f94e73c8b157ba1E+0x244>
      38: 2b 0c 40 f9  	ldr	x11, [x1, #24]
      3c: 8a 02 13 8b  	add	x10, x20, x19
      40: e9 03 1f aa  	mov	x9, xzr
      44: 6b 06 00 b4  	cbz	x11, 0x110 <_ZN44_$LT$$RF$T$u20$as$u20$core..fmt..Display$GT$3fmt17h3f94e73c8b157ba1E+0x110>
      48: ed 03 14 aa  	mov	x13, x20
      4c: 0e 00 00 14  	b	0x84 <_ZN44_$LT$$RF$T$u20$as$u20$core..fmt..Display$GT$3fmt17h3f94e73c8b157ba1E+0x84>
      50: 91 15 40 38  	ldrb	w17, [x12], #1
      54: 31 16 00 12  	and	w17, w17, #0x3f
      58: ef 09 0e 53  	ubfiz	w15, w15, #18, #3
      5c: cf 15 14 33  	bfi	w15, w14, #12, #6
      60: 0f 16 1a 33  	bfi	w15, w16, #6, #6
      64: ee 01 11 2a  	orr	w14, w15, w17
      68: df 41 44 71  	cmp	w14, #272, lsl #12
      6c: 00 09 00 54  	b.eq	0x18c <_ZN44_$LT$$RF$T$u20$as$u20$core..fmt..Display$GT$3fmt17h3f94e73c8b157ba1E+0x18c>
      70: 29 01 0d cb  	sub	x9, x9, x13
      74: 6b 05 00 f1  	subs	x11, x11, #1
      78: 29 01 0c 8b  	add	x9, x9, x12
      7c: ed 03 0c aa  	mov	x13, x12
      80: a0 04 00 54  	b.eq	0x114 <_ZN44_$LT$$RF$T$u20$as$u20$core..fmt..Display$GT$3fmt17h3f94e73c8b157ba1E+0x114>
      84: bf 01 0a eb  	cmp	x13, x10
      88: 20 08 00 54  	b.eq	0x18c <_ZN44_$LT$$RF$T$u20$as$u20$core..fmt..Display$GT$3fmt17h3f94e73c8b157ba1E+0x18c>
      8c: ec 03 0d aa  	mov	x12, x13
      90: 8f 15 c0 38  	ldrsb	w15, [x12], #1
      94: ef fe ff 36  	tbz	w15, #31, 0x70 <_ZN44_$LT$$RF$T$u20$as$u20$core..fmt..Display$GT$3fmt17h3f94e73c8b157ba1E+0x70>
      98: 9f 01 0a eb  	cmp	x12, x10
      9c: 00 01 00 54  	b.eq	0xbc <_ZN44_$LT$$RF$T$u20$as$u20$core..fmt..Display$GT$3fmt17h3f94e73c8b157ba1E+0xbc>
      a0: ae 05 40 39  	ldrb	w14, [x13, #1]
      a4: ac 09 00 91  	add	x12, x13, #2
      a8: ce 15 00 12  	and	w14, w14, #0x3f
      ac: ef 1d 00 12  	and	w15, w15, #0xff
      b0: ff 81 03 71  	cmp	w15, #224
      b4: e3 fd ff 54  	b.lo	0x70 <_ZN44_$LT$$RF$T$u20$as$u20$core..fmt..Display$GT$3fmt17h3f94e73c8b157ba1E+0x70>
      b8: 06 00 00 14  	b	0xd0 <_ZN44_$LT$$RF$T$u20$as$u20$core..fmt..Display$GT$3fmt17h3f94e73c8b157ba1E+0xd0>
      bc: ee 03 1f 2a  	mov	w14, wzr
      c0: ec 03 0a aa  	mov	x12, x10
      c4: ef 1d 00 12  	and	w15, w15, #0xff
      c8: ff 81 03 71  	cmp	w15, #224
      cc: 23 fd ff 54  	b.lo	0x70 <_ZN44_$LT$$RF$T$u20$as$u20$core..fmt..Display$GT$3fmt17h3f94e73c8b157ba1E+0x70>
      d0: 9f 01 0a eb  	cmp	x12, x10
      d4: c0 00 00 54  	b.eq	0xec <_ZN44_$LT$$RF$T$u20$as$u20$core..fmt..Display$GT$3fmt17h3f94e73c8b157ba1E+0xec>
      d8: 90 15 40 38  	ldrb	w16, [x12], #1
      dc: 10 16 00 12  	and	w16, w16, #0x3f
      e0: ff c1 03 71  	cmp	w15, #240
      e4: 63 fc ff 54  	b.lo	0x70 <_ZN44_$LT$$RF$T$u20$as$u20$core..fmt..Display$GT$3fmt17h3f94e73c8b157ba1E+0x70>
      e8: 05 00 00 14  	b	0xfc <_ZN44_$LT$$RF$T$u20$as$u20$core..fmt..Display$GT$3fmt17h3f94e73c8b157ba1E+0xfc>
      ec: f0 03 1f 2a  	mov	w16, wzr
      f0: ec 03 0a aa  	mov	x12, x10
      f4: ff c1 03 71  	cmp	w15, #240
      f8: c3 fb ff 54  	b.lo	0x70 <_ZN44_$LT$$RF$T$u20$as$u20$core..fmt..Display$GT$3fmt17h3f94e73c8b157ba1E+0x70>
      fc: 9f 01 0a eb  	cmp	x12, x10
     100: 81 fa ff 54  	b.ne	0x50 <_ZN44_$LT$$RF$T$u20$as$u20$core..fmt..Display$GT$3fmt17h3f94e73c8b157ba1E+0x50>
     104: f1 03 1f 2a  	mov	w17, wzr
     108: ec 03 0a aa  	mov	x12, x10
     10c: d3 ff ff 17  	b	0x58 <_ZN44_$LT$$RF$T$u20$as$u20$core..fmt..Display$GT$3fmt17h3f94e73c8b157ba1E+0x58>
     110: ec 03 14 aa  	mov	x12, x20
     114: 9f 01 0a eb  	cmp	x12, x10
     118: a0 03 00 54  	b.eq	0x18c <_ZN44_$LT$$RF$T$u20$as$u20$core..fmt..Display$GT$3fmt17h3f94e73c8b157ba1E+0x18c>
     11c: eb 03 0c aa  	mov	x11, x12
     120: 6d 15 c0 38  	ldrsb	w13, [x11], #1
     124: 4d 01 f8 37  	tbnz	w13, #31, 0x14c <_ZN44_$LT$$RF$T$u20$as$u20$core..fmt..Display$GT$3fmt17h3f94e73c8b157ba1E+0x14c>
     128: a9 02 00 b4  	cbz	x9, 0x17c <_ZN44_$LT$$RF$T$u20$as$u20$core..fmt..Display$GT$3fmt17h3f94e73c8b157ba1E+0x17c>
     12c: 3f 01 13 eb  	cmp	x9, x19
     130: 22 02 00 54  	b.hs	0x174 <_ZN44_$LT$$RF$T$u20$as$u20$core..fmt..Display$GT$3fmt17h3f94e73c8b157ba1E+0x174>
     134: 8a 6a e9 38  	ldrsb	w10, [x20, x9]
     138: 5f 01 01 31  	cmn	w10, #64
     13c: 0a 02 00 54  	b.ge	0x17c <_ZN44_$LT$$RF$T$u20$as$u20$core..fmt..Display$GT$3fmt17h3f94e73c8b157ba1E+0x17c>
     140: ea 03 1f aa  	mov	x10, xzr
     144: e9 03 1f aa  	mov	x9, xzr
     148: 0e 00 00 14  	b	0x180 <_ZN44_$LT$$RF$T$u20$as$u20$core..fmt..Display$GT$3fmt17h3f94e73c8b157ba1E+0x180>
     14c: 7f 01 0a eb  	cmp	x11, x10
     150: ab 1d 00 12  	and	w11, w13, #0xff
     154: 80 12 00 54  	b.eq	0x3a4 <_ZN44_$LT$$RF$T$u20$as$u20$core..fmt..Display$GT$3fmt17h3f94e73c8b157ba1E+0x3a4>
     158: 8e 05 40 39  	ldrb	w14, [x12, #1]
     15c: 8d 09 00 91  	add	x13, x12, #2
     160: cc 15 00 12  	and	w12, w14, #0x3f
     164: 8c 4d 14 53  	lsl	w12, w12, #12
     168: 7f 81 03 71  	cmp	w11, #224
     16c: 42 12 00 54  	b.hs	0x3b4 <_ZN44_$LT$$RF$T$u20$as$u20$core..fmt..Display$GT$3fmt17h3f94e73c8b157ba1E+0x3b4>
     170: ee ff ff 17  	b	0x128 <_ZN44_$LT$$RF$T$u20$as$u20$core..fmt..Display$GT$3fmt17h3f94e73c8b157ba1E+0x128>
     174: 3f 01 13 eb  	cmp	x9, x19
     178: 41 fe ff 54  	b.ne	0x140 <_ZN44_$LT$$RF$T$u20$as$u20$core..fmt..Display$GT$3fmt17h3f94e73c8b157ba1E+0x140>
     17c: ea 03 14 aa  	mov	x10, x20
     180: 5f 01 00 f1  	cmp	x10, #0
     184: 94 02 8a 9a  	csel	x20, x20, x10, eq
     188: 73 02 89 9a  	csel	x19, x19, x9, eq
     18c: 1f 05 00 f1  	cmp	x8, #1
     190: a1 05 00 54  	b.ne	0x244 <_ZN44_$LT$$RF$T$u20$as$u20$core..fmt..Display$GT$3fmt17h3f94e73c8b157ba1E+0x244>
     194: d3 00 00 b4  	cbz	x19, 0x1ac <_ZN44_$LT$$RF$T$u20$as$u20$core..fmt..Display$GT$3fmt17h3f94e73c8b157ba1E+0x1ac>
     198: 7f 06 00 f1  	cmp	x19, #1
     19c: 01 01 00 54  	b.ne	0x1bc <_ZN44_$LT$$RF$T$u20$as$u20$core..fmt..Display$GT$3fmt17h3f94e73c8b157ba1E+0x1bc>
     1a0: e9 03 1f aa  	mov	x9, xzr
     1a4: e8 03 14 aa  	mov	x8, x20
     1a8: 18 00 00 14  	b	0x208 <_ZN44_$LT$$RF$T$u20$as$u20$core..fmt..Display$GT$3fmt17h3f94e73c8b157ba1E+0x208>
     1ac: 28 04 40 f9  	ldr	x8, [x1, #8]
     1b0: a8 04 00 b4  	cbz	x8, 0x244 <_ZN44_$LT$$RF$T$u20$as$u20$core..fmt..Display$GT$3fmt17h3f94e73c8b157ba1E+0x244>
     1b4: e9 03 1f aa  	mov	x9, xzr
     1b8: 46 00 00 14  	b	0x2d0 <_ZN44_$LT$$RF$T$u20$as$u20$core..fmt..Display$GT$3fmt17h3f94e73c8b157ba1E+0x2d0>
     1bc: 68 fa 7f 92  	and	x8, x19, #0xfffffffffffffffe
     1c0: e9 03 1f aa  	mov	x9, xzr
     1c4: ea 03 1f aa  	mov	x10, xzr
     1c8: 8b 06 00 91  	add	x11, x20, #1
     1cc: ec 03 08 aa  	mov	x12, x8
     1d0: 6d f1 5f 38  	ldurb	w13, [x11, #-1]
     1d4: 6e 25 40 38  	ldrb	w14, [x11], #2
     1d8: ad 05 1a 12  	and	w13, w13, #0xc0
     1dc: ce 05 1a 12  	and	w14, w14, #0xc0
     1e0: bf 01 02 71  	cmp	w13, #128
     1e4: 29 05 89 9a  	cinc	x9, x9, ne
     1e8: df 01 02 71  	cmp	w14, #128
     1ec: 4a 05 8a 9a  	cinc	x10, x10, ne
     1f0: 8c 09 00 f1  	subs	x12, x12, #2
     1f4: e1 fe ff 54  	b.ne	0x1d0 <_ZN44_$LT$$RF$T$u20$as$u20$core..fmt..Display$GT$3fmt17h3f94e73c8b157ba1E+0x1d0>
     1f8: 7f 02 08 eb  	cmp	x19, x8
     1fc: 49 01 09 8b  	add	x9, x10, x9
     200: 20 01 00 54  	b.eq	0x224 <_ZN44_$LT$$RF$T$u20$as$u20$core..fmt..Display$GT$3fmt17h3f94e73c8b157ba1E+0x224>
     204: 88 02 08 8b  	add	x8, x20, x8
     208: 8a 02 13 8b  	add	x10, x20, x19
     20c: 0b 15 40 38  	ldrb	w11, [x8], #1
     210: 6b 05 1a 12  	and	w11, w11, #0xc0
     214: 7f 01 02 71  	cmp	w11, #128
     218: 29 05 89 9a  	cinc	x9, x9, ne
     21c: 5f 01 08 eb  	cmp	x10, x8
     220: 61 ff ff 54  	b.ne	0x20c <_ZN44_$LT$$RF$T$u20$as$u20$core..fmt..Display$GT$3fmt17h3f94e73c8b157ba1E+0x20c>
     224: 28 04 40 f9  	ldr	x8, [x1, #8]
     228: 3f 01 08 eb  	cmp	x9, x8
     22c: c2 00 00 54  	b.hs	0x244 <_ZN44_$LT$$RF$T$u20$as$u20$core..fmt..Display$GT$3fmt17h3f94e73c8b157ba1E+0x244>
     230: 7f 06 00 f1  	cmp	x19, #1
     234: a8 01 00 54  	b.hi	0x268 <_ZN44_$LT$$RF$T$u20$as$u20$core..fmt..Display$GT$3fmt17h3f94e73c8b157ba1E+0x268>
     238: e9 03 1f aa  	mov	x9, xzr
     23c: ea 03 14 aa  	mov	x10, x20
     240: 1d 00 00 14  	b	0x2b4 <_ZN44_$LT$$RF$T$u20$as$u20$core..fmt..Display$GT$3fmt17h3f94e73c8b157ba1E+0x2b4>
     244: 20 20 42 a9  	ldp	x0, x8, [x1, #32]
     248: e1 03 14 aa  	mov	x1, x20
     24c: e2 03 13 aa  	mov	x2, x19
     250: f4 4f 43 a9  	ldp	x20, x19, [sp, #48]
     254: 03 0d 40 f9  	ldr	x3, [x8, #24]
     258: f6 57 42 a9  	ldp	x22, x21, [sp, #32]
     25c: f8 5f 41 a9  	ldp	x24, x23, [sp, #16]
     260: fe 67 c4 a8  	ldp	x30, x25, [sp], #64
     264: 60 00 1f d6  	br	x3
     268: 6a fa 7f 92  	and	x10, x19, #0xfffffffffffffffe
     26c: e9 03 1f aa  	mov	x9, xzr
     270: eb 03 1f aa  	mov	x11, xzr
     274: 8c 06 00 91  	add	x12, x20, #1
     278: ed 03 0a aa  	mov	x13, x10
     27c: 8e f1 5f 38  	ldurb	w14, [x12, #-1]
     280: 8f 25 40 38  	ldrb	w15, [x12], #2
     284: ce 05 1a 12  	and	w14, w14, #0xc0
     288: ef 05 1a 12  	and	w15, w15, #0xc0
     28c: df 01 02 71  	cmp	w14, #128
     290: 29 05 89 9a  	cinc	x9, x9, ne
     294: ff 01 02 71  	cmp	w15, #128
     298: 6b 05 8b 9a  	cinc	x11, x11, ne
     29c: ad 09 00 f1  	subs	x13, x13, #2
     2a0: e1 fe ff 54  	b.ne	0x27c <_ZN44_$LT$$RF$T$u20$as$u20$core..fmt..Display$GT$3fmt17h3f94e73c8b157ba1E+0x27c>
     2a4: 7f 02 0a eb  	cmp	x19, x10
     2a8: 69 01 09 8b  	add	x9, x11, x9
     2ac: 20 01 00 54  	b.eq	0x2d0 <_ZN44_$LT$$RF$T$u20$as$u20$core..fmt..Display$GT$3fmt17h3f94e73c8b157ba1E+0x2d0>
     2b0: 8a 02 0a 8b  	add	x10, x20, x10
     2b4: 8b 02 13 8b  	add	x11, x20, x19
     2b8: 4c 15 40 38  	ldrb	w12, [x10], #1
     2bc: 8c 05 1a 12  	and	w12, w12, #0xc0
     2c0: 9f 01 02 71  	cmp	w12, #128
     2c4: 29 05 89 9a  	cinc	x9, x9, ne
     2c8: 7f 01 0a eb  	cmp	x11, x10
     2cc: 61 ff ff 54  	b.ne	0x2b8 <_ZN44_$LT$$RF$T$u20$as$u20$core..fmt..Display$GT$3fmt17h3f94e73c8b157ba1E+0x2b8>
     2d0: 2a e0 40 39  	ldrb	w10, [x1, #56]
     2d4: 08 01 09 cb  	sub	x8, x8, x9
     2d8: 5f 0d 00 71  	cmp	w10, #3
     2dc: ea 03 8a 1a  	csel	w10, wzr, w10, eq
     2e0: 4a 05 00 72  	ands	w10, w10, #0x3
     2e4: a0 00 00 54  	b.eq	0x2f8 <_ZN44_$LT$$RF$T$u20$as$u20$core..fmt..Display$GT$3fmt17h3f94e73c8b157ba1E+0x2f8>
     2e8: 5f 05 00 71  	cmp	w10, #1
     2ec: c1 00 00 54  	b.ne	0x304 <_ZN44_$LT$$RF$T$u20$as$u20$core..fmt..Display$GT$3fmt17h3f94e73c8b157ba1E+0x304>
     2f0: f8 03 1f aa  	mov	x24, xzr
     2f4: 07 00 00 14  	b	0x310 <_ZN44_$LT$$RF$T$u20$as$u20$core..fmt..Display$GT$3fmt17h3f94e73c8b157ba1E+0x310>
     2f8: f8 03 08 aa  	mov	x24, x8
     2fc: e8 03 1f aa  	mov	x8, xzr
     300: 04 00 00 14  	b	0x310 <_ZN44_$LT$$RF$T$u20$as$u20$core..fmt..Display$GT$3fmt17h3f94e73c8b157ba1E+0x310>
     304: 09 05 00 91  	add	x9, x8, #1
     308: 08 fd 41 d3  	lsr	x8, x8, #1
     30c: 38 fd 41 d3  	lsr	x24, x9, #1
     310: 35 5c 42 a9  	ldp	x21, x23, [x1, #32]
     314: 36 34 40 b9  	ldr	w22, [x1, #52]
     318: 19 05 00 91  	add	x25, x8, #1
     31c: 39 07 00 f1  	subs	x25, x25, #1
     320: e0 00 00 54  	b.eq	0x33c <_ZN44_$LT$$RF$T$u20$as$u20$core..fmt..Display$GT$3fmt17h3f94e73c8b157ba1E+0x33c>
     324: e8 12 40 f9  	ldr	x8, [x23, #32]
     328: e0 03 15 aa  	mov	x0, x21
     32c: e1 03 16 2a  	mov	w1, w22
     330: 00 01 3f d6  	blr	x8
     334: 40 ff 07 36  	tbz	w0, #0, 0x31c <_ZN44_$LT$$RF$T$u20$as$u20$core..fmt..Display$GT$3fmt17h3f94e73c8b157ba1E+0x31c>
     338: 0a 00 00 14  	b	0x360 <_ZN44_$LT$$RF$T$u20$as$u20$core..fmt..Display$GT$3fmt17h3f94e73c8b157ba1E+0x360>
     33c: df 42 44 71  	cmp	w22, #272, lsl #12
     340: f8 03 98 9a  	csel	x24, xzr, x24, eq
     344: e0 00 00 54  	b.eq	0x360 <_ZN44_$LT$$RF$T$u20$as$u20$core..fmt..Display$GT$3fmt17h3f94e73c8b157ba1E+0x360>
     348: e8 0e 40 f9  	ldr	x8, [x23, #24]
     34c: e0 03 15 aa  	mov	x0, x21
     350: e1 03 14 aa  	mov	x1, x20
     354: e2 03 13 aa  	mov	x2, x19
     358: 00 01 3f d6  	blr	x8
     35c: e0 00 00 36  	tbz	w0, #0, 0x378 <_ZN44_$LT$$RF$T$u20$as$u20$core..fmt..Display$GT$3fmt17h3f94e73c8b157ba1E+0x378>
     360: 20 00 80 52  	mov	w0, #1
     364: f4 4f 43 a9  	ldp	x20, x19, [sp, #48]
     368: f6 57 42 a9  	ldp	x22, x21, [sp, #32]
     36c: f8 5f 41 a9  	ldp	x24, x23, [sp, #16]
     370: fe 67 c4 a8  	ldp	x30, x25, [sp], #64
     374: c0 03 5f d6  	ret
     378: f3 03 1f aa  	mov	x19, xzr
     37c: 1f 03 13 eb  	cmp	x24, x19
     380: a0 02 00 54  	b.eq	0x3d4 <_ZN44_$LT$$RF$T$u20$as$u20$core..fmt..Display$GT$3fmt17h3f94e73c8b157ba1E+0x3d4>
     384: e8 12 40 f9  	ldr	x8, [x23, #32]
     388: e0 03 15 aa  	mov	x0, x21
     38c: e1 03 16 2a  	mov	w1, w22
     390: 73 06 00 91  	add	x19, x19, #1
     394: 00 01 3f d6  	blr	x8
     398: 20 ff ff 34  	cbz	w0, 0x37c <_ZN44_$LT$$RF$T$u20$as$u20$core..fmt..Display$GT$3fmt17h3f94e73c8b157ba1E+0x37c>
     39c: 68 06 00 d1  	sub	x8, x19, #1
     3a0: 0e 00 00 14  	b	0x3d8 <_ZN44_$LT$$RF$T$u20$as$u20$core..fmt..Display$GT$3fmt17h3f94e73c8b157ba1E+0x3d8>
     3a4: ec 03 1f 2a  	mov	w12, wzr
     3a8: ed 03 0a aa  	mov	x13, x10
     3ac: 7f 81 03 71  	cmp	w11, #224
     3b0: c3 eb ff 54  	b.lo	0x128 <_ZN44_$LT$$RF$T$u20$as$u20$core..fmt..Display$GT$3fmt17h3f94e73c8b157ba1E+0x128>
     3b4: bf 01 0a eb  	cmp	x13, x10
     3b8: 60 01 00 54  	b.eq	0x3e4 <_ZN44_$LT$$RF$T$u20$as$u20$core..fmt..Display$GT$3fmt17h3f94e73c8b157ba1E+0x3e4>
     3bc: ae 15 40 38  	ldrb	w14, [x13], #1
     3c0: ce 15 00 12  	and	w14, w14, #0x3f
     3c4: ce 65 1a 53  	lsl	w14, w14, #6
     3c8: 7f c1 03 71  	cmp	w11, #240
     3cc: 42 01 00 54  	b.hs	0x3f4 <_ZN44_$LT$$RF$T$u20$as$u20$core..fmt..Display$GT$3fmt17h3f94e73c8b157ba1E+0x3f4>
     3d0: 56 ff ff 17  	b	0x128 <_ZN44_$LT$$RF$T$u20$as$u20$core..fmt..Display$GT$3fmt17h3f94e73c8b157ba1E+0x128>
     3d4: e8 03 18 aa  	mov	x8, x24
     3d8: 1f 01 18 eb  	cmp	x8, x24
     3dc: e0 27 9f 1a  	cset	w0, lo
     3e0: e1 ff ff 17  	b	0x364 <_ZN44_$LT$$RF$T$u20$as$u20$core..fmt..Display$GT$3fmt17h3f94e73c8b157ba1E+0x364>
     3e4: ee 03 1f 2a  	mov	w14, wzr
     3e8: ed 03 0a aa  	mov	x13, x10
     3ec: 7f c1 03 71  	cmp	w11, #240
     3f0: c3 e9 ff 54  	b.lo	0x128 <_ZN44_$LT$$RF$T$u20$as$u20$core..fmt..Display$GT$3fmt17h3f94e73c8b157ba1E+0x128>
     3f4: bf 01 0a eb  	cmp	x13, x10
     3f8: 80 00 00 54  	b.eq	0x408 <_ZN44_$LT$$RF$T$u20$as$u20$core..fmt..Display$GT$3fmt17h3f94e73c8b157ba1E+0x408>
     3fc: aa 01 40 39  	ldrb	w10, [x13]
     400: 4a 15 00 12  	and	w10, w10, #0x3f
     404: 02 00 00 14  	b	0x40c <_ZN44_$LT$$RF$T$u20$as$u20$core..fmt..Display$GT$3fmt17h3f94e73c8b157ba1E+0x40c>
     408: ea 03 1f 2a  	mov	w10, wzr
     40c: 6c 09 0e 33  	bfi	w12, w11, #18, #3
     410: 8b 01 0e 2a  	orr	w11, w12, w14
     414: 6a 01 0a 2a  	orr	w10, w11, w10
     418: 5f 41 44 71  	cmp	w10, #272, lsl #12
     41c: 80 eb ff 54  	b.eq	0x18c <_ZN44_$LT$$RF$T$u20$as$u20$core..fmt..Display$GT$3fmt17h3f94e73c8b157ba1E+0x18c>
     420: 42 ff ff 17  	b	0x128 <_ZN44_$LT$$RF$T$u20$as$u20$core..fmt..Display$GT$3fmt17h3f94e73c8b157ba1E+0x128>

Disassembly of section .text._ZN42_$LT$$RF$T$u20$as$u20$core..fmt..Debug$GT$3fmt17h4b8fb327fe2e6f34E:

0000000000000000 <_ZN42_$LT$$RF$T$u20$as$u20$core..fmt..Debug$GT$3fmt17h4b8fb327fe2e6f34E>:
       0: 00 20 40 a9  	ldp	x0, x8, [x0]
       4: 02 0d 40 f9  	ldr	x2, [x8, #24]
       8: 40 00 1f d6  	br	x2

Disassembly of section .text._ZN4core3fmt5write17h4089dd81629a8d2eE:

0000000000000000 <_ZN4core3fmt5write17h4089dd81629a8d2eE>:
       0: ff 43 02 d1  	sub	sp, sp, #144
       4: fe 23 00 f9  	str	x30, [sp, #64]
       8: fa 67 05 a9  	stp	x26, x25, [sp, #80]
       c: f8 5f 06 a9  	stp	x24, x23, [sp, #96]
      10: f6 57 07 a9  	stp	x22, x21, [sp, #112]
      14: f4 4f 08 a9  	stp	x20, x19, [sp, #128]
      18: 28 08 40 f9  	ldr	x8, [x1, #16]
      1c: 09 00 00 90  	adrp	x9, 0x0 <_ZN4core3fmt5write17h4089dd81629a8d2eE+0x1c>
      20: f3 03 01 aa  	mov	x19, x1
      24: 0b 04 c0 d2  	mov	x11, #137438953472
      28: 6a 00 80 52  	mov	w10, #3
      2c: 29 01 00 91  	add	x9, x9, #0
      30: ea e3 00 39  	strb	w10, [sp, #56]
      34: ff 03 00 f9  	str	xzr, [sp]
      38: ff 0b 00 f9  	str	xzr, [sp, #16]
      3c: e0 13 00 f9  	str	x0, [sp, #32]
      40: e9 af 02 a9  	stp	x9, x11, [sp, #40]
      44: c8 08 00 b4  	cbz	x8, 0x15c <_ZN4core3fmt5write17h4089dd81629a8d2eE+0x15c>
      48: 69 0e 40 f9  	ldr	x9, [x19, #24]
      4c: 74 56 40 a9  	ldp	x20, x21, [x19]
      50: 3f 01 15 eb  	cmp	x9, x21
      54: b6 82 89 9a  	csel	x22, x21, x9, hi
      58: 36 0b 00 b4  	cbz	x22, 0x1bc <_ZN4core3fmt5write17h4089dd81629a8d2eE+0x1bc>
      5c: 19 00 00 90  	adrp	x25, 0x0 <_ZN4core3fmt5write17h4089dd81629a8d2eE+0x5c>
      60: f7 03 1f aa  	mov	x23, xzr
      64: 18 c1 00 91  	add	x24, x8, #48
      68: 39 03 00 91  	add	x25, x25, #0
      6c: fa 03 16 aa  	mov	x26, x22
      70: 88 02 17 8b  	add	x8, x20, x23
      74: 02 05 40 f9  	ldr	x2, [x8, #8]
      78: c2 00 00 b4  	cbz	x2, 0x90 <_ZN4core3fmt5write17h4089dd81629a8d2eE+0x90>
      7c: e0 23 42 a9  	ldp	x0, x8, [sp, #32]
      80: 81 6a 77 f8  	ldr	x1, [x20, x23]
      84: 08 0d 40 f9  	ldr	x8, [x8, #24]
      88: 00 01 3f d6  	blr	x8
      8c: 80 0a 00 37  	tbnz	w0, #0, 0x1dc <_ZN4core3fmt5write17h4089dd81629a8d2eE+0x1dc>
      90: 08 83 5f b8  	ldur	w8, [x24, #-8]
      94: e8 37 00 b9  	str	w8, [sp, #52]
      98: 08 03 40 39  	ldrb	w8, [x24]
      9c: e8 e3 00 39  	strb	w8, [sp, #56]
      a0: 09 c3 5f b8  	ldur	w9, [x24, #-4]
      a4: 68 12 40 f9  	ldr	x8, [x19, #32]
      a8: e9 33 00 b9  	str	w9, [sp, #48]
      ac: 0a a7 7e a9  	ldp	x10, x9, [x24, #-24]
      b0: ea 01 00 b4  	cbz	x10, 0xec <_ZN4core3fmt5write17h4089dd81629a8d2eE+0xec>
      b4: 5f 05 00 f1  	cmp	x10, #1
      b8: a1 00 00 54  	b.ne	0xcc <_ZN4core3fmt5write17h4089dd81629a8d2eE+0xcc>
      bc: 0a 11 09 8b  	add	x10, x8, x9, lsl #4
      c0: 4a 05 40 f9  	ldr	x10, [x10, #8]
      c4: 5f 01 19 eb  	cmp	x10, x25
      c8: c0 00 00 54  	b.eq	0xe0 <_ZN4core3fmt5write17h4089dd81629a8d2eE+0xe0>
      cc: ea 03 1f aa  	mov	x10, xzr
      d0: ea 27 00 a9  	stp	x10, x9, [sp]
      d4: 0a a7 7d a9  	ldp	x10, x9, [x24, #-40]
      d8: 2a 01 00 b5  	cbnz	x10, 0xfc <_ZN4core3fmt5write17h4089dd81629a8d2eE+0xfc>
      dc: 13 00 00 14  	b	0x128 <_ZN4core3fmt5write17h4089dd81629a8d2eE+0x128>
      e0: 29 ed 7c d3  	lsl	x9, x9, #4
      e4: 09 69 69 f8  	ldr	x9, [x8, x9]
      e8: 29 01 40 f9  	ldr	x9, [x9]
      ec: 2a 00 80 52  	mov	w10, #1
      f0: ea 27 00 a9  	stp	x10, x9, [sp]
      f4: 0a a7 7d a9  	ldp	x10, x9, [x24, #-40]
      f8: 8a 01 00 b4  	cbz	x10, 0x128 <_ZN4core3fmt5write17h4089dd81629a8d2eE+0x128>
      fc: 5f 05 00 f1  	cmp	x10, #1
     100: a1 00 00 54  	b.ne	0x114 <_ZN4core3fmt5write17h4089dd81629a8d2eE+0x114>
     104: 0a 11 09 8b  	add	x10, x8, x9, lsl #4
     108: 4a 05 40 f9  	ldr	x10, [x10, #8]
     10c: 5f 01 19 eb  	cmp	x10, x25
     110: 60 00 00 54  	b.eq	0x11c <_ZN4core3fmt5write17h4089dd81629a8d2eE+0x11c>
     114: ea 03 1f aa  	mov	x10, xzr
     118: 05 00 00 14  	b	0x12c <_ZN4core3fmt5write17h4089dd81629a8d2eE+0x12c>
     11c: 29 ed 7c d3  	lsl	x9, x9, #4
     120: 09 69 69 f8  	ldr	x9, [x8, x9]
     124: 29 01 40 f9  	ldr	x9, [x9]
     128: 2a 00 80 52  	mov	w10, #1
     12c: ea 27 01 a9  	stp	x10, x9, [sp, #16]
     130: 09 03 5d f8  	ldur	x9, [x24, #-48]
     134: e1 03 00 91  	mov	x1, sp
     138: 08 11 09 8b  	add	x8, x8, x9, lsl #4
     13c: 00 25 40 a9  	ldp	x0, x9, [x8]
     140: 20 01 3f d6  	blr	x9
     144: c0 04 00 37  	tbnz	w0, #0, 0x1dc <_ZN4core3fmt5write17h4089dd81629a8d2eE+0x1dc>
     148: 5a 07 00 f1  	subs	x26, x26, #1
     14c: 18 e3 00 91  	add	x24, x24, #56
     150: f7 42 00 91  	add	x23, x23, #16
     154: e1 f8 ff 54  	b.ne	0x70 <_ZN4core3fmt5write17h4089dd81629a8d2eE+0x70>
     158: 19 00 00 14  	b	0x1bc <_ZN4core3fmt5write17h4089dd81629a8d2eE+0x1bc>
     15c: 68 16 40 f9  	ldr	x8, [x19, #40]
     160: 74 56 40 a9  	ldp	x20, x21, [x19]
     164: 1f 01 15 eb  	cmp	x8, x21
     168: b6 82 88 9a  	csel	x22, x21, x8, hi
     16c: 96 02 00 b4  	cbz	x22, 0x1bc <_ZN4core3fmt5write17h4089dd81629a8d2eE+0x1bc>
     170: 73 12 40 f9  	ldr	x19, [x19, #32]
     174: f7 03 1f aa  	mov	x23, xzr
     178: f8 03 16 aa  	mov	x24, x22
     17c: 88 02 17 8b  	add	x8, x20, x23
     180: 02 05 40 f9  	ldr	x2, [x8, #8]
     184: c2 00 00 b4  	cbz	x2, 0x19c <_ZN4core3fmt5write17h4089dd81629a8d2eE+0x19c>
     188: e0 23 42 a9  	ldp	x0, x8, [sp, #32]
     18c: 81 6a 77 f8  	ldr	x1, [x20, x23]
     190: 08 0d 40 f9  	ldr	x8, [x8, #24]
     194: 00 01 3f d6  	blr	x8
     198: 20 02 00 37  	tbnz	w0, #0, 0x1dc <_ZN4core3fmt5write17h4089dd81629a8d2eE+0x1dc>
     19c: 68 02 17 8b  	add	x8, x19, x23
     1a0: 00 25 40 a9  	ldp	x0, x9, [x8]
     1a4: e1 03 00 91  	mov	x1, sp
     1a8: 20 01 3f d6  	blr	x9
     1ac: 80 01 00 37  	tbnz	w0, #0, 0x1dc <_ZN4core3fmt5write17h4089dd81629a8d2eE+0x1dc>
     1b0: 18 07 00 f1  	subs	x24, x24, #1
     1b4: f7 42 00 91  	add	x23, x23, #16
     1b8: 21 fe ff 54  	b.ne	0x17c <_ZN4core3fmt5write17h4089dd81629a8d2eE+0x17c>
     1bc: df 02 15 eb  	cmp	x22, x21
     1c0: 22 01 00 54  	b.hs	0x1e4 <_ZN4core3fmt5write17h4089dd81629a8d2eE+0x1e4>
     1c4: e0 23 42 a9  	ldp	x0, x8, [sp, #32]
     1c8: 89 12 16 8b  	add	x9, x20, x22, lsl #4
     1cc: 21 09 40 a9  	ldp	x1, x2, [x9]
     1d0: 08 0d 40 f9  	ldr	x8, [x8, #24]
     1d4: 00 01 3f d6  	blr	x8
     1d8: 60 00 00 36  	tbz	w0, #0, 0x1e4 <_ZN4core3fmt5write17h4089dd81629a8d2eE+0x1e4>
     1dc: 20 00 80 52  	mov	w0, #1
     1e0: 02 00 00 14  	b	0x1e8 <_ZN4core3fmt5write17h4089dd81629a8d2eE+0x1e8>
     1e4: e0 03 1f 2a  	mov	w0, wzr
     1e8: f4 4f 48 a9  	ldp	x20, x19, [sp, #128]
     1ec: f6 57 47 a9  	ldp	x22, x21, [sp, #112]
     1f0: f8 5f 46 a9  	ldp	x24, x23, [sp, #96]
     1f4: fa 67 45 a9  	ldp	x26, x25, [sp, #80]
     1f8: fe 23 40 f9  	ldr	x30, [sp, #64]
     1fc: ff 43 02 91  	add	sp, sp, #144
     200: c0 03 5f d6  	ret

Disassembly of section .text._ZN4core5panic10panic_info9PanicInfo7payload17ha64251a2534dc727E:

0000000000000000 <_ZN4core5panic10panic_info9PanicInfo7payload17ha64251a2534dc727E>:
       0: 08 04 40 a9  	ldp	x8, x1, [x0]
       4: e0 03 08 aa  	mov	x0, x8
       8: c0 03 5f d6  	ret

Disassembly of section .text.unlikely._ZN4core6result13unwrap_failed17h514395d9b84745f5E:

0000000000000000 <_ZN4core6result13unwrap_failed17h514395d9b84745f5E>:
       0: 08 00 00 90  	adrp	x8, 0x0 <_ZN4core6result13unwrap_failed17h514395d9b84745f5E>
       4: 08 01 00 91  	add	x8, x8, #0
       8: 69 05 80 52  	mov	w9, #43
       c: 0a 00 00 90  	adrp	x10, 0x0 <_ZN4core6result13unwrap_failed17h514395d9b84745f5E+0xc>
      10: e8 27 b9 a9  	stp	x8, x9, [sp, #-112]!
      14: 08 00 00 90  	adrp	x8, 0x0 <_ZN4core6result13unwrap_failed17h514395d9b84745f5E+0x14>
      18: 4a 01 00 91  	add	x10, x10, #0
      1c: 0c 00 00 90  	adrp	x12, 0x0 <_ZN4core6result13unwrap_failed17h514395d9b84745f5E+0x1c>
      20: ed 43 00 91  	add	x13, sp, #16
      24: 08 01 00 91  	add	x8, x8, #0
      28: 09 00 00 90  	adrp	x9, 0x0 <_ZN4core6result13unwrap_failed17h514395d9b84745f5E+0x28>
      2c: 01 00 00 90  	adrp	x1, 0x0 <_ZN4core6result13unwrap_failed17h514395d9b84745f5E+0x2c>
      30: eb 03 00 91  	mov	x11, sp
      34: 8c 01 00 91  	add	x12, x12, #0
      38: e0 2b 01 a9  	stp	x0, x10, [sp, #16]
      3c: 29 01 00 91  	add	x9, x9, #0
      40: 4a 00 80 52  	mov	w10, #2
      44: ed 23 06 a9  	stp	x13, x8, [sp, #96]
      48: e8 43 01 91  	add	x8, sp, #80
      4c: 21 00 00 91  	add	x1, x1, #0
      50: e0 83 00 91  	add	x0, sp, #32
      54: eb 33 05 a9  	stp	x11, x12, [sp, #80]
      58: ff 7f 03 a9  	stp	xzr, xzr, [sp, #48]
      5c: e9 2b 02 a9  	stp	x9, x10, [sp, #32]
      60: e8 2b 04 a9  	stp	x8, x10, [sp, #64]
      64: 00 00 00 94  	bl	0x64 <_ZN4core6result13unwrap_failed17h514395d9b84745f5E+0x64>
      68: 20 00 20 d4  	brk	#0x1

Disassembly of section .text._ZN53_$LT$core..fmt..Error$u20$as$u20$core..fmt..Debug$GT$3fmt17h7940a6b0f953e665E:

0000000000000000 <_ZN53_$LT$core..fmt..Error$u20$as$u20$core..fmt..Debug$GT$3fmt17h7940a6b0f953e665E>:
       0: 20 20 42 a9  	ldp	x0, x8, [x1, #32]
       4: 01 00 00 90  	adrp	x1, 0x0 <_ZN53_$LT$core..fmt..Error$u20$as$u20$core..fmt..Debug$GT$3fmt17h7940a6b0f953e665E+0x4>
       8: 21 00 00 91  	add	x1, x1, #0
       c: a2 00 80 52  	mov	w2, #5
      10: 03 0d 40 f9  	ldr	x3, [x8, #24]
      14: 60 00 1f d6  	br	x3
