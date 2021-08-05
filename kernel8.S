
target/aarch64-unknown-none-softfloat/release/baremetal-pi:	file format elf64-littleaarch64


Disassembly of section .boot:

<_start>:
               	orr	sp, xzr, #0x80000
               	mrs	x8, MPIDR_EL1
               	tst	x8, #0x3
               	b.eq	0x80018 <_start+0x18>
               	wfe
               	b	0x80010 <_start+0x10>
               	bl	0x8094c <_ZN12baremetal_pi4grit9stage_one17he24b54ccefa5d11eE>
               	brk	#0x1

Disassembly of section .text:

<_ZN50_$LT$$RF$mut$u20$W$u20$as$u20$core..fmt..Write$GT$10write_char17h156b094a61826ba8E>:
               	str	x30, [sp, #-16]!
               	cmp	w1, #128
               	str	wzr, [sp, #12]
               	b.hs	0x8003c <_ZN50_$LT$$RF$mut$u20$W$u20$as$u20$core..fmt..Write$GT$10write_char17h156b094a61826ba8E+0x1c>
               	mov	w8, #1
               	strb	w1, [sp, #12]
               	b	0x800cc <_ZN50_$LT$$RF$mut$u20$W$u20$as$u20$core..fmt..Write$GT$10write_char17h156b094a61826ba8E+0xac>
               	cmp	w1, #2048
               	b.hs	0x80064 <_ZN50_$LT$$RF$mut$u20$W$u20$as$u20$core..fmt..Write$GT$10write_char17h156b094a61826ba8E+0x44>
               	lsr	w8, w1, #6
               	orr	w9, w8, #0xc0
               	mov	w10, #128
               	mov	w8, #2
               	bfxil	w10, w1, #0, #6
               	strb	w9, [sp, #12]
               	strb	w10, [sp, #13]
               	b	0x800cc <_ZN50_$LT$$RF$mut$u20$W$u20$as$u20$core..fmt..Write$GT$10write_char17h156b094a61826ba8E+0xac>
               	cmp	w1, #16, lsl #12
               	b.hs	0x80098 <_ZN50_$LT$$RF$mut$u20$W$u20$as$u20$core..fmt..Write$GT$10write_char17h156b094a61826ba8E+0x78>
               	lsr	w8, w1, #12
               	orr	w9, w8, #0xe0
               	mov	w10, #128
               	mov	w11, #128
               	bfxil	w11, w1, #6, #6
               	bfxil	w10, w1, #0, #6
               	mov	w8, #3
               	strb	w9, [sp, #12]
               	strb	w11, [sp, #13]
               	strb	w10, [sp, #14]
               	b	0x800cc <_ZN50_$LT$$RF$mut$u20$W$u20$as$u20$core..fmt..Write$GT$10write_char17h156b094a61826ba8E+0xac>
               	lsr	w8, w1, #18
               	mov	w9, #128
               	orr	w8, w8, #0xf0
               	mov	w10, #128
               	mov	w11, #128
               	bfxil	w9, w1, #12, #6
               	bfxil	w11, w1, #6, #6
               	bfxil	w10, w1, #0, #6
               	strb	w8, [sp, #12]
               	mov	w8, #4
               	strb	w9, [sp, #13]
               	strb	w11, [sp, #14]
               	strb	w10, [sp, #15]
               	add	x0, sp, #12
               	mov	x1, x8
               	bl	0x801fc <_ZN62_$LT$baremetal_pi..uart..Uart1$u20$as$u20$core..fmt..Write$GT$9write_str17ha964ce6a0ebd28faE>
               	mov	w0, wzr
               	ldr	x30, [sp], #16
               	ret

<_ZN50_$LT$$RF$mut$u20$W$u20$as$u20$core..fmt..Write$GT$9write_fmt17h9c893b50c2b84b21E>:
               	sub	sp, sp, #64
               	ldr	x8, [x0]
               	mov	x0, sp
               	mov	w2, #48
               	stp	x30, x8, [sp, #48]
               	bl	0x833d0 <memcpy>
               	adrp	x1, 0x83000 <_ZN50_$LT$$RF$mut$u20$W$u20$as$u20$core..fmt..Write$GT$9write_fmt17h9c893b50c2b84b21E+0x24>
               	add	x0, sp, #56
               	add	x1, x1, #1168
               	mov	x2, sp
               	bl	0x813a4 <_ZN4core3fmt5write17h4089dd81629a8d2eE>
               	ldr	x30, [sp, #48]
               	add	sp, sp, #64
               	ret

<_ZN50_$LT$$RF$mut$u20$W$u20$as$u20$core..fmt..Write$GT$9write_str17h4320e2cabb78e7d9E>:
               	str	x30, [sp, #-16]!
               	mov	x0, x1
               	mov	x1, x2
               	bl	0x801fc <_ZN62_$LT$baremetal_pi..uart..Uart1$u20$as$u20$core..fmt..Write$GT$9write_str17ha964ce6a0ebd28faE>
               	mov	w0, wzr
               	ldr	x30, [sp], #16
               	ret

<_ZN12baremetal_pi4gpio4Gpio9configure17ha6cdbf5b7e529e2bE>:
               	mov	w8, #52429
               	and	w9, w0, #0xff
               	movk	w8, #52428, lsl #16
               	mov	w10, #1
               	mov	w11, #2
               	umull	x8, w9, w8
               	mov	w9, #-10
               	lsr	x8, x8, #35
               	madd	w9, w8, w9, w0
               	add	w9, w9, w9, lsl #1
               	and	w9, w9, #0xff
               	add	w13, w9, #3
               	mov	w12, w9
               	tst	w13, #0x1
               	lsr	w15, w13, #1
               	csinc	w14, w11, wzr, ne
               	mul	w11, w11, w11
               	cmp	w13, #3
               	mov	w13, w15
               	mul	w10, w14, w10
               	b.hi	0x8016c <_ZN12baremetal_pi4gpio4Gpio9configure17ha6cdbf5b7e529e2bE+0x34>
               	mov	w13, #2
               	mov	w14, #1
               	cbz	w12, 0x801d0 <_ZN12baremetal_pi4gpio4Gpio9configure17ha6cdbf5b7e529e2bE+0x98>
               	mov	w15, #2
               	cmp	w12, #1
               	b.eq	0x801cc <_ZN12baremetal_pi4gpio4Gpio9configure17ha6cdbf5b7e529e2bE+0x94>
               	mov	w14, #1
               	mov	w15, #2
               	tst	w12, #0x1
               	lsr	w17, w12, #1
               	csinc	w16, w15, wzr, ne
               	mul	w15, w15, w15
               	cmp	w12, #3
               	mov	w12, w17
               	mul	w14, w16, w14
               	b.hi	0x801ac <_ZN12baremetal_pi4gpio4Gpio9configure17ha6cdbf5b7e529e2bE+0x74>
               	mul	w14, w15, w14
               	mov	w12, #1059061760
               	lsl	w9, w13, w9
               	bfi	x12, x8, #2, #5
               	mul	w8, w11, w10
               	ldr	w10, [x12]
               	mvn	w8, w8
               	add	w8, w14, w8
               	and	w8, w10, w8
               	orr	w8, w8, w9
               	str	w8, [x12]
               	ret

<_ZN62_$LT$baremetal_pi..uart..Uart1$u20$as$u20$core..fmt..Write$GT$9write_str17ha964ce6a0ebd28faE>:
               	mov	x8, x0
               	mov	w10, #20580
               	adrp	x13, 0x83000 <_ZN62_$LT$baremetal_pi..uart..Uart1$u20$as$u20$core..fmt..Write$GT$9write_str17ha964ce6a0ebd28faE+0x14>
               	mov	x0, xzr
               	mov	x15, xzr
               	mov	x9, xzr
               	movk	w10, #16161, lsl #16
               	add	x11, x8, x1
               	mov	w12, #3
               	mov	x14, x8
               	add	x13, x13, #1216
               	cbnz	x9, 0x8024c <_ZN62_$LT$baremetal_pi..uart..Uart1$u20$as$u20$core..fmt..Write$GT$9write_str17ha964ce6a0ebd28faE+0x50>
               	b	0x80278 <_ZN62_$LT$baremetal_pi..uart..Uart1$u20$as$u20$core..fmt..Write$GT$9write_str17ha964ce6a0ebd28faE+0x7c>
               	mov	w17, #2
               	mov	x9, x13
               	sub	x14, x0, x14
               	add	x0, x14, x15
               	add	x15, x9, x17
               	mov	x14, x16
               	cbz	x9, 0x80278 <_ZN62_$LT$baremetal_pi..uart..Uart1$u20$as$u20$core..fmt..Write$GT$9write_str17ha964ce6a0ebd28faE+0x7c>
               	cmp	x9, x15
               	b.ne	0x8025c <_ZN62_$LT$baremetal_pi..uart..Uart1$u20$as$u20$core..fmt..Write$GT$9write_str17ha964ce6a0ebd28faE+0x60>
               	b	0x80278 <_ZN62_$LT$baremetal_pi..uart..Uart1$u20$as$u20$core..fmt..Write$GT$9write_str17ha964ce6a0ebd28faE+0x7c>
               	isb
               	ldr	w16, [x10]
               	tbz	w16, #1, 0x80258 <_ZN62_$LT$baremetal_pi..uart..Uart1$u20$as$u20$core..fmt..Write$GT$9write_str17ha964ce6a0ebd28faE+0x5c>
               	ldrb	w17, [x9]
               	add	x16, x9, #1
               	mov	x9, x16
               	stur	w17, [x10, #-36]
               	cbnz	x9, 0x8024c <_ZN62_$LT$baremetal_pi..uart..Uart1$u20$as$u20$core..fmt..Write$GT$9write_str17ha964ce6a0ebd28faE+0x50>
               	cbz	x14, 0x803a4 <_ZN62_$LT$baremetal_pi..uart..Uart1$u20$as$u20$core..fmt..Write$GT$9write_str17ha964ce6a0ebd28faE+0x1a8>
               	cmp	x11, x14
               	b.eq	0x803a4 <_ZN62_$LT$baremetal_pi..uart..Uart1$u20$as$u20$core..fmt..Write$GT$9write_str17ha964ce6a0ebd28faE+0x1a8>
               	mov	x15, x14
               	ldrsb	w9, [x15], #1
               	and	w17, w9, #0xff
               	tbnz	w9, #31, 0x802a0 <_ZN62_$LT$baremetal_pi..uart..Uart1$u20$as$u20$core..fmt..Write$GT$9write_str17ha964ce6a0ebd28faE+0xa4>
               	mov	x16, x15
               	mov	w9, w17
               	b	0x80358 <_ZN62_$LT$baremetal_pi..uart..Uart1$u20$as$u20$core..fmt..Write$GT$9write_str17ha964ce6a0ebd28faE+0x15c>
               	cmp	x15, x11
               	b.eq	0x802fc <_ZN62_$LT$baremetal_pi..uart..Uart1$u20$as$u20$core..fmt..Write$GT$9write_str17ha964ce6a0ebd28faE+0x100>
               	ldrb	w9, [x14, #1]
               	add	x16, x14, #2
               	mov	x15, x16
               	and	w9, w9, #0x3f
               	and	w18, w17, #0x1f
               	cmp	w17, #223
               	b.ls	0x80314 <_ZN62_$LT$baremetal_pi..uart..Uart1$u20$as$u20$core..fmt..Write$GT$9write_str17ha964ce6a0ebd28faE+0x118>
               	cmp	x15, x11
               	b.eq	0x8031c <_ZN62_$LT$baremetal_pi..uart..Uart1$u20$as$u20$core..fmt..Write$GT$9write_str17ha964ce6a0ebd28faE+0x120>
               	ldrb	w2, [x15], #1
               	mov	x16, x15
               	and	w2, w2, #0x3f
               	bfi	w2, w9, #6, #6
               	cmp	w17, #240
               	b.lo	0x80330 <_ZN62_$LT$baremetal_pi..uart..Uart1$u20$as$u20$core..fmt..Write$GT$9write_str17ha964ce6a0ebd28faE+0x134>
               	cmp	x15, x11
               	b.eq	0x8033c <_ZN62_$LT$baremetal_pi..uart..Uart1$u20$as$u20$core..fmt..Write$GT$9write_str17ha964ce6a0ebd28faE+0x140>
               	ldrb	w9, [x15], #1
               	mov	x16, x15
               	and	w9, w9, #0x3f
               	b	0x80344 <_ZN62_$LT$baremetal_pi..uart..Uart1$u20$as$u20$core..fmt..Write$GT$9write_str17ha964ce6a0ebd28faE+0x148>
               	mov	w9, wzr
               	mov	x16, x15
               	mov	x15, x11
               	and	w18, w17, #0x1f
               	cmp	w17, #223
               	b.hi	0x802c4 <_ZN62_$LT$baremetal_pi..uart..Uart1$u20$as$u20$core..fmt..Write$GT$9write_str17ha964ce6a0ebd28faE+0xc8>
               	bfi	w9, w18, #6, #5
               	b	0x80358 <_ZN62_$LT$baremetal_pi..uart..Uart1$u20$as$u20$core..fmt..Write$GT$9write_str17ha964ce6a0ebd28faE+0x15c>
               	mov	w2, wzr
               	mov	x15, x11
               	bfi	w2, w9, #6, #6
               	cmp	w17, #240
               	b.hs	0x802e4 <_ZN62_$LT$baremetal_pi..uart..Uart1$u20$as$u20$core..fmt..Write$GT$9write_str17ha964ce6a0ebd28faE+0xe8>
               	bfi	w2, w18, #12, #5
               	mov	w9, w2
               	b	0x80358 <_ZN62_$LT$baremetal_pi..uart..Uart1$u20$as$u20$core..fmt..Write$GT$9write_str17ha964ce6a0ebd28faE+0x15c>
               	mov	w9, wzr
               	mov	x15, x11
               	ubfiz	w17, w18, #18, #3
               	bfi	w17, w2, #6, #12
               	orr	w9, w17, w9
               	cmp	w9, #272, lsl #12
               	b.eq	0x803a4 <_ZN62_$LT$baremetal_pi..uart..Uart1$u20$as$u20$core..fmt..Write$GT$9write_str17ha964ce6a0ebd28faE+0x1a8>
               	cmp	w9, #10
               	b.eq	0x80230 <_ZN62_$LT$baremetal_pi..uart..Uart1$u20$as$u20$core..fmt..Write$GT$9write_str17ha964ce6a0ebd28faE+0x34>
               	cmp	w9, #128
               	b.hs	0x80370 <_ZN62_$LT$baremetal_pi..uart..Uart1$u20$as$u20$core..fmt..Write$GT$9write_str17ha964ce6a0ebd28faE+0x174>
               	mov	w17, #1
               	b	0x80388 <_ZN62_$LT$baremetal_pi..uart..Uart1$u20$as$u20$core..fmt..Write$GT$9write_str17ha964ce6a0ebd28faE+0x18c>
               	cmp	w9, #2048
               	b.hs	0x80380 <_ZN62_$LT$baremetal_pi..uart..Uart1$u20$as$u20$core..fmt..Write$GT$9write_str17ha964ce6a0ebd28faE+0x184>
               	mov	w17, #2
               	b	0x80388 <_ZN62_$LT$baremetal_pi..uart..Uart1$u20$as$u20$core..fmt..Write$GT$9write_str17ha964ce6a0ebd28faE+0x18c>
               	cmp	w9, #16, lsl #12
               	cinc	x17, x12, hs
               	adds	x9, x17, x0
               	b.hs	0x803c4 <_ZN62_$LT$baremetal_pi..uart..Uart1$u20$as$u20$core..fmt..Write$GT$9write_str17ha964ce6a0ebd28faE+0x1c8>
               	cmp	x9, x1
               	b.hi	0x803b0 <_ZN62_$LT$baremetal_pi..uart..Uart1$u20$as$u20$core..fmt..Write$GT$9write_str17ha964ce6a0ebd28faE+0x1b4>
               	add	x9, x8, x0
               	b	0x80238 <_ZN62_$LT$baremetal_pi..uart..Uart1$u20$as$u20$core..fmt..Write$GT$9write_str17ha964ce6a0ebd28faE+0x3c>
               	isb
               	ldr	w8, [x10]
               	tbz	w8, #3, 0x803a0 <_ZN62_$LT$baremetal_pi..uart..Uart1$u20$as$u20$core..fmt..Write$GT$9write_str17ha964ce6a0ebd28faE+0x1a4>
               	ret
               	adrp	x2, 0x83000 <_ZN62_$LT$baremetal_pi..uart..Uart1$u20$as$u20$core..fmt..Write$GT$9write_str17ha964ce6a0ebd28faE+0x1c0>
               	mov	x0, x9
               	add	x2, x2, #1232
               	bl	0x80ef8 <_ZN4core5slice5index24slice_end_index_len_fail17h827cf37c6cc32b14E>
               	brk	#0x1
               	adrp	x2, 0x83000 <_ZN62_$LT$baremetal_pi..uart..Uart1$u20$as$u20$core..fmt..Write$GT$9write_str17ha964ce6a0ebd28faE+0x1d4>
               	mov	x1, x9
               	add	x2, x2, #1232
               	bl	0x815a0 <_ZN4core5slice5index22slice_index_order_fail17he71d7140076fff6eE>
               	brk	#0x1

<_ZN42_$LT$$RF$T$u20$as$u20$core..fmt..Debug$GT$3fmt17habe9122735e55e0cE>:
               	ldr	x0, [x0]
               	b	0x82fc8 <_ZN71_$LT$core..panic..panic_info..PanicInfo$u20$as$u20$core..fmt..Debug$GT$3fmt17hdab5301ab1e937b8E>

<_ZN12baremetal_pi4main17h02d93c4b0c6e8c9eE>:
               	sub	sp, sp, #112
               	str	x30, [sp, #48]
               	stp	x24, x23, [sp, #64]
               	stp	x22, x21, [sp, #80]
               	stp	x20, x19, [sp, #96]
               	mov	w0, #14
               	mov	w20, #20584
               	movk	w20, #16161, lsl #16
               	bl	0x80138 <_ZN12baremetal_pi4gpio4Gpio9configure17ha6cdbf5b7e529e2bE>
               	mov	w0, #15
               	bl	0x80138 <_ZN12baremetal_pi4gpio4Gpio9configure17ha6cdbf5b7e529e2bE>
               	ldr	w9, [x20]
               	mov	w8, #270
               	mov	w10, #3
               	bfxil	w9, w8, #0, #16
               	mov	w8, #150
               	str	w9, [x20]
               	stur	w10, [x20, #-28]
               	nop
               	subs	x8, x8, #1
               	b.ne	0x80428 <_ZN12baremetal_pi4main17h02d93c4b0c6e8c9eE+0x48>
               	mov	w8, #3
               	mov	w19, #28
               	movk	w19, #16160, lsl #16
               	mov	w21, #16960
               	movk	w21, #15, lsl #16
               	mov	w10, #536870912
               	stur	w8, [x20, #-8]
               	ldur	w8, [x19, #-20]
               	and	w8, w8, #0xc7ffffff
               	orr	w9, w8, #0x8000000
               	mov	x8, sp
               	add	x20, x8, #16
               	mov	x8, x21
               	stur	w9, [x19, #-20]
               	str	w10, [x19]
               	nop
               	subs	x8, x8, #1
               	b.ne	0x80470 <_ZN12baremetal_pi4main17h02d93c4b0c6e8c9eE+0x90>
               	adrp	x23, 0x83000 <_ZN12baremetal_pi4main17h02d93c4b0c6e8c9eE+0xa8>
               	adrp	x24, 0x83000 <_ZN12baremetal_pi4main17h02d93c4b0c6e8c9eE+0xac>
               	adrp	x1, 0x83000 <_ZN12baremetal_pi4main17h02d93c4b0c6e8c9eE+0xb0>
               	mov	w8, #536870912
               	mov	x9, sp
               	add	x23, x23, #1296
               	mov	w10, #1
               	add	x24, x24, #1632
               	add	x1, x1, #1168
               	add	x0, sp, #56
               	mov	x2, sp
               	str	w8, [x19, #12]
               	str	x9, [sp, #56]
               	stp	x23, x10, [sp]
               	stp	xzr, xzr, [x20]
               	stp	x24, xzr, [sp, #32]
               	bl	0x813a4 <_ZN4core3fmt5write17h4089dd81629a8d2eE>
               	cbnz	w0, 0x80828 <_ZN12baremetal_pi4main17h02d93c4b0c6e8c9eE+0x448>
               	mov	w22, #2304
               	movk	w22, #61, lsl #16
               	mov	x8, x22
               	nop
               	subs	x8, x8, #1
               	b.ne	0x804d0 <_ZN12baremetal_pi4main17h02d93c4b0c6e8c9eE+0xf0>
               	mov	w9, #536870912
               	mov	x8, x21
               	str	w9, [x19]
               	nop
               	subs	x8, x8, #1
               	b.ne	0x804e8 <_ZN12baremetal_pi4main17h02d93c4b0c6e8c9eE+0x108>
               	adrp	x1, 0x83000 <_ZN12baremetal_pi4main17h02d93c4b0c6e8c9eE+0x120>
               	mov	w8, #536870912
               	mov	x9, sp
               	mov	w10, #1
               	add	x1, x1, #1168
               	add	x0, sp, #56
               	mov	x2, sp
               	str	w8, [x19, #12]
               	str	x9, [sp, #56]
               	stp	x23, x10, [sp]
               	stp	xzr, xzr, [x20]
               	stp	x24, xzr, [sp, #32]
               	bl	0x813a4 <_ZN4core3fmt5write17h4089dd81629a8d2eE>
               	tbnz	w0, #0, 0x80828 <_ZN12baremetal_pi4main17h02d93c4b0c6e8c9eE+0x448>
               	mov	x8, x22
               	nop
               	subs	x8, x8, #1
               	b.ne	0x80530 <_ZN12baremetal_pi4main17h02d93c4b0c6e8c9eE+0x150>
               	mov	w9, #536870912
               	mov	x8, x21
               	str	w9, [x19]
               	nop
               	subs	x8, x8, #1
               	b.ne	0x80548 <_ZN12baremetal_pi4main17h02d93c4b0c6e8c9eE+0x168>
               	adrp	x1, 0x83000 <_ZN12baremetal_pi4main17h02d93c4b0c6e8c9eE+0x180>
               	mov	w8, #536870912
               	mov	x9, sp
               	mov	w10, #1
               	add	x1, x1, #1168
               	add	x0, sp, #56
               	mov	x2, sp
               	str	w8, [x19, #12]
               	str	x9, [sp, #56]
               	stp	x23, x10, [sp]
               	stp	xzr, xzr, [x20]
               	stp	x24, xzr, [sp, #32]
               	bl	0x813a4 <_ZN4core3fmt5write17h4089dd81629a8d2eE>
               	tbnz	w0, #0, 0x80828 <_ZN12baremetal_pi4main17h02d93c4b0c6e8c9eE+0x448>
               	mov	x8, x22
               	nop
               	subs	x8, x8, #1
               	b.ne	0x80590 <_ZN12baremetal_pi4main17h02d93c4b0c6e8c9eE+0x1b0>
               	mov	w9, #536870912
               	mov	x8, x21
               	str	w9, [x19]
               	nop
               	subs	x8, x8, #1
               	b.ne	0x805a8 <_ZN12baremetal_pi4main17h02d93c4b0c6e8c9eE+0x1c8>
               	adrp	x1, 0x83000 <_ZN12baremetal_pi4main17h02d93c4b0c6e8c9eE+0x1e0>
               	mov	w8, #536870912
               	mov	x9, sp
               	mov	w10, #1
               	add	x1, x1, #1168
               	add	x0, sp, #56
               	mov	x2, sp
               	str	w8, [x19, #12]
               	str	x9, [sp, #56]
               	stp	x23, x10, [sp]
               	stp	xzr, xzr, [x20]
               	stp	x24, xzr, [sp, #32]
               	bl	0x813a4 <_ZN4core3fmt5write17h4089dd81629a8d2eE>
               	tbnz	w0, #0, 0x80828 <_ZN12baremetal_pi4main17h02d93c4b0c6e8c9eE+0x448>
               	mov	x8, x22
               	nop
               	subs	x8, x8, #1
               	b.ne	0x805f0 <_ZN12baremetal_pi4main17h02d93c4b0c6e8c9eE+0x210>
               	mov	w9, #536870912
               	mov	x8, x21
               	str	w9, [x19]
               	nop
               	subs	x8, x8, #1
               	b.ne	0x80608 <_ZN12baremetal_pi4main17h02d93c4b0c6e8c9eE+0x228>
               	adrp	x1, 0x83000 <_ZN12baremetal_pi4main17h02d93c4b0c6e8c9eE+0x240>
               	mov	w8, #536870912
               	mov	x9, sp
               	mov	w10, #1
               	add	x1, x1, #1168
               	add	x0, sp, #56
               	mov	x2, sp
               	str	w8, [x19, #12]
               	str	x9, [sp, #56]
               	stp	x23, x10, [sp]
               	stp	xzr, xzr, [x20]
               	stp	x24, xzr, [sp, #32]
               	bl	0x813a4 <_ZN4core3fmt5write17h4089dd81629a8d2eE>
               	tbnz	w0, #0, 0x80828 <_ZN12baremetal_pi4main17h02d93c4b0c6e8c9eE+0x448>
               	mov	x8, x22
               	nop
               	subs	x8, x8, #1
               	b.ne	0x80650 <_ZN12baremetal_pi4main17h02d93c4b0c6e8c9eE+0x270>
               	mov	w9, #536870912
               	mov	x8, x21
               	str	w9, [x19]
               	nop
               	subs	x8, x8, #1
               	b.ne	0x80668 <_ZN12baremetal_pi4main17h02d93c4b0c6e8c9eE+0x288>
               	adrp	x1, 0x83000 <_ZN12baremetal_pi4main17h02d93c4b0c6e8c9eE+0x2a0>
               	mov	w8, #536870912
               	mov	x9, sp
               	mov	w10, #1
               	add	x1, x1, #1168
               	add	x0, sp, #56
               	mov	x2, sp
               	str	w8, [x19, #12]
               	str	x9, [sp, #56]
               	stp	x23, x10, [sp]
               	stp	xzr, xzr, [x20]
               	stp	x24, xzr, [sp, #32]
               	bl	0x813a4 <_ZN4core3fmt5write17h4089dd81629a8d2eE>
               	tbnz	w0, #0, 0x80828 <_ZN12baremetal_pi4main17h02d93c4b0c6e8c9eE+0x448>
               	mov	x8, x22
               	nop
               	subs	x8, x8, #1
               	b.ne	0x806b0 <_ZN12baremetal_pi4main17h02d93c4b0c6e8c9eE+0x2d0>
               	mov	w9, #536870912
               	mov	x8, x21
               	str	w9, [x19]
               	nop
               	subs	x8, x8, #1
               	b.ne	0x806c8 <_ZN12baremetal_pi4main17h02d93c4b0c6e8c9eE+0x2e8>
               	adrp	x1, 0x83000 <_ZN12baremetal_pi4main17h02d93c4b0c6e8c9eE+0x300>
               	mov	w8, #536870912
               	mov	x9, sp
               	mov	w10, #1
               	add	x1, x1, #1168
               	add	x0, sp, #56
               	mov	x2, sp
               	str	w8, [x19, #12]
               	str	x9, [sp, #56]
               	stp	x23, x10, [sp]
               	stp	xzr, xzr, [x20]
               	stp	x24, xzr, [sp, #32]
               	bl	0x813a4 <_ZN4core3fmt5write17h4089dd81629a8d2eE>
               	tbnz	w0, #0, 0x80828 <_ZN12baremetal_pi4main17h02d93c4b0c6e8c9eE+0x448>
               	mov	x8, x22
               	nop
               	subs	x8, x8, #1
               	b.ne	0x80710 <_ZN12baremetal_pi4main17h02d93c4b0c6e8c9eE+0x330>
               	mov	w9, #536870912
               	mov	x8, x21
               	str	w9, [x19]
               	nop
               	subs	x8, x8, #1
               	b.ne	0x80728 <_ZN12baremetal_pi4main17h02d93c4b0c6e8c9eE+0x348>
               	adrp	x1, 0x83000 <_ZN12baremetal_pi4main17h02d93c4b0c6e8c9eE+0x360>
               	mov	w8, #536870912
               	mov	x9, sp
               	mov	w10, #1
               	add	x1, x1, #1168
               	add	x0, sp, #56
               	mov	x2, sp
               	str	w8, [x19, #12]
               	str	x9, [sp, #56]
               	stp	x23, x10, [sp]
               	stp	xzr, xzr, [x20]
               	stp	x24, xzr, [sp, #32]
               	bl	0x813a4 <_ZN4core3fmt5write17h4089dd81629a8d2eE>
               	tbnz	w0, #0, 0x80828 <_ZN12baremetal_pi4main17h02d93c4b0c6e8c9eE+0x448>
               	mov	x8, x22
               	nop
               	subs	x8, x8, #1
               	b.ne	0x80770 <_ZN12baremetal_pi4main17h02d93c4b0c6e8c9eE+0x390>
               	mov	w9, #536870912
               	mov	x8, x21
               	str	w9, [x19]
               	nop
               	subs	x8, x8, #1
               	b.ne	0x80788 <_ZN12baremetal_pi4main17h02d93c4b0c6e8c9eE+0x3a8>
               	adrp	x1, 0x83000 <_ZN12baremetal_pi4main17h02d93c4b0c6e8c9eE+0x3c0>
               	mov	w8, #536870912
               	mov	x9, sp
               	mov	w10, #1
               	add	x1, x1, #1168
               	add	x0, sp, #56
               	mov	x2, sp
               	str	w8, [x19, #12]
               	str	x9, [sp, #56]
               	stp	x23, x10, [sp]
               	stp	xzr, xzr, [x20]
               	stp	x24, xzr, [sp, #32]
               	bl	0x813a4 <_ZN4core3fmt5write17h4089dd81629a8d2eE>
               	tbnz	w0, #0, 0x80828 <_ZN12baremetal_pi4main17h02d93c4b0c6e8c9eE+0x448>
               	mov	x8, x22
               	nop
               	subs	x8, x8, #1
               	b.ne	0x807d0 <_ZN12baremetal_pi4main17h02d93c4b0c6e8c9eE+0x3f0>
               	mov	w8, #536870912
               	str	w8, [x19]
               	nop
               	subs	x21, x21, #1
               	b.ne	0x807e4 <_ZN12baremetal_pi4main17h02d93c4b0c6e8c9eE+0x404>
               	adrp	x1, 0x83000 <_ZN12baremetal_pi4main17h02d93c4b0c6e8c9eE+0x41c>
               	mov	w8, #536870912
               	mov	x9, sp
               	mov	w10, #1
               	add	x1, x1, #1168
               	add	x0, sp, #56
               	mov	x2, sp
               	str	w8, [x19, #12]
               	str	x9, [sp, #56]
               	stp	x23, x10, [sp]
               	stp	xzr, xzr, [x20]
               	stp	x24, xzr, [sp, #32]
               	bl	0x813a4 <_ZN4core3fmt5write17h4089dd81629a8d2eE>
               	tbz	w0, #0, 0x8084c <_ZN12baremetal_pi4main17h02d93c4b0c6e8c9eE+0x46c>
               	adrp	x0, 0x83000 <_ZN12baremetal_pi4main17h02d93c4b0c6e8c9eE+0x454>
               	adrp	x2, 0x83000 <_ZN12baremetal_pi4main17h02d93c4b0c6e8c9eE+0x458>
               	adrp	x3, 0x83000 <_ZN12baremetal_pi4main17h02d93c4b0c6e8c9eE+0x45c>
               	add	x0, x0, #1464
               	add	x2, x2, #1312
               	add	x3, x3, #1344
               	mov	x1, sp
               	bl	0x815e8 <_ZN4core6result13unwrap_failed17h514395d9b84745f5E>
               	brk	#0x1
               	nop
               	subs	x22, x22, #1
               	b.ne	0x8084c <_ZN12baremetal_pi4main17h02d93c4b0c6e8c9eE+0x46c>
               	adrp	x0, 0x83000 <_ZN12baremetal_pi4main17h02d93c4b0c6e8c9eE+0x484>
               	adrp	x2, 0x83000 <_ZN12baremetal_pi4main17h02d93c4b0c6e8c9eE+0x488>
               	add	x0, x0, #1256
               	add	x2, x2, #1272
               	mov	w1, #15
               	bl	0x80f40 <_ZN4core9panicking5panic17ha7217054e020f4cfE>
               	brk	#0x1

<_ZN4core3ptr37drop_in_place$LT$core..fmt..Error$GT$17hc0e0a78b6d7f041bE>:
               	ret

<rust_begin_unwind>:
               	sub	sp, sp, #96
               	stp	x30, x19, [sp, #80]
               	str	x0, [sp]
               	mov	w0, #14
               	mov	w19, #20584
               	movk	w19, #16161, lsl #16
               	bl	0x80138 <_ZN12baremetal_pi4gpio4Gpio9configure17ha6cdbf5b7e529e2bE>
               	mov	w0, #15
               	bl	0x80138 <_ZN12baremetal_pi4gpio4Gpio9configure17ha6cdbf5b7e529e2bE>
               	ldr	w9, [x19]
               	mov	w8, #270
               	mov	w10, #3
               	bfxil	w9, w8, #0, #16
               	mov	w8, #150
               	str	w9, [x19]
               	stur	w10, [x19, #-28]
               	nop
               	subs	x8, x8, #1
               	b.ne	0x808b8 <rust_begin_unwind+0x40>
               	mov	w8, #3
               	mov	x9, sp
               	add	x10, sp, #32
               	adrp	x1, 0x83000 <rust_begin_unwind+0x64>
               	add	x1, x1, #1168
               	add	x0, sp, #24
               	stur	w8, [x19, #-8]
               	adrp	x8, 0x80000 <rust_begin_unwind+0x68>
               	add	x8, x8, #984
               	add	x2, sp, #32
               	stp	x9, x8, [sp, #8]
               	adrp	x8, 0x83000 <rust_begin_unwind+0x84>
               	add	x8, x8, #1392
               	mov	w9, #1
               	stp	x10, x8, [sp, #24]
               	adrp	x10, 0x83000 <rust_begin_unwind+0x94>
               	add	x10, x10, #1408
               	add	x8, sp, #8
               	str	x9, [sp, #72]
               	stp	x9, x10, [sp, #40]
               	stp	x9, x8, [sp, #56]
               	bl	0x813a4 <_ZN4core3fmt5write17h4089dd81629a8d2eE>
               	cbnz	w0, 0x80928 <rust_begin_unwind+0xb0>
               	wfe
               	b	0x80920 <rust_begin_unwind+0xa8>
               	adrp	x0, 0x83000 <rust_begin_unwind+0xbc>
               	adrp	x2, 0x83000 <rust_begin_unwind+0xc0>
               	adrp	x3, 0x83000 <rust_begin_unwind+0xc4>
               	add	x0, x0, #1464
               	add	x2, x2, #1512
               	add	x3, x3, #1544
               	add	x1, sp, #32
               	bl	0x815e8 <_ZN4core6result13unwrap_failed17h514395d9b84745f5E>
               	brk	#0x1

<_ZN12baremetal_pi4grit9stage_one17he24b54ccefa5d11eE>:
               	str	x30, [sp, #-16]!
               	adrp	x8, 0x84000 <_ZN12baremetal_pi4grit9stage_one17he24b54ccefa5d11eE+0x14>
               	adrp	x9, 0x84000 <_ZN12baremetal_pi4grit9stage_one17he24b54ccefa5d11eE+0x18>
               	mov	w1, wzr
               	ldr	x0, [x8, #1488]
               	ldr	x8, [x9, #1488]
               	sub	x2, x0, x8
               	bl	0x833ec <memset>
               	bl	0x803e0 <_ZN12baremetal_pi4main17h02d93c4b0c6e8c9eE>
               	brk	#0x1

<_ZN4core3ops8function6FnOnce9call_once17h1e0b4b2b1b15e514E>:
               	ldr	xzr, [x0]
               	b	0x80978 <_ZN4core3ops8function6FnOnce9call_once17h1e0b4b2b1b15e514E+0x4>

<_ZN4core9panicking18panic_bounds_check17h21e59d1a29014f09E>:
               	stp	x0, x1, [sp, #-96]!
               	adrp	x9, 0x80000 <_ZN4core9panicking18panic_bounds_check17h21e59d1a29014f09E+0x4>
               	add	x8, sp, #8
               	add	x9, x9, #2500
               	adrp	x11, 0x83000 <_ZN4core9panicking18panic_bounds_check17h21e59d1a29014f09E+0x1c>
               	mov	x10, sp
               	add	x11, x11, #1600
               	mov	w12, #2
               	stp	x8, x9, [sp, #64]
               	add	x8, sp, #64
               	add	x0, sp, #16
               	mov	x1, x2
               	stp	xzr, xzr, [sp, #32]
               	stp	x10, x9, [sp, #80]
               	stp	x11, x12, [sp, #16]
               	stp	x8, x12, [sp, #48]
               	bl	0x80b38 <_ZN4core9panicking9panic_fmt17h548b34a47a4ac578E>
               	brk	#0x1

<_ZN4core3fmt3num3imp52_$LT$impl$u20$core..fmt..Display$u20$for$u20$u64$GT$3fmt17hd9011ba631c18f60E>:
               	sub	sp, sp, #64
               	str	x30, [sp, #48]
               	ldr	x10, [x0]
               	mov	x8, x1
               	lsr	x9, x10, #4
               	cmp	x9, #625
               	adrp	x9, 0x83000 <_ZN4core3fmt3num3imp52_$LT$impl$u20$core..fmt..Display$u20$for$u20$u64$GT$3fmt17hd9011ba631c18f60E+0x24>
               	add	x9, x9, #1778
               	b.lo	0x80a80 <_ZN4core3fmt3num3imp52_$LT$impl$u20$core..fmt..Display$u20$for$u20$u64$GT$3fmt17hd9011ba631c18f60E+0xbc>
               	mov	x12, #22859
               	movk	x12, #14470, lsl #16
               	movk	x12, #50646, lsl #32
               	mov	w14, #34079
               	mov	w17, #57599
               	mov	x11, xzr
               	movk	x12, #13421, lsl #48
               	mov	w13, #-10000
               	movk	w14, #20971, lsl #16
               	mov	w15, #-100
               	add	x16, sp, #8
               	movk	w17, #1525, lsl #16
               	mov	x18, x10
               	umulh	x10, x10, x12
               	lsr	x10, x10, #11
               	cmp	x18, x17
               	madd	w18, w10, w13, w18
               	and	w1, w18, #0xffff
               	umull	x1, w1, w14
               	lsr	x1, x1, #37
               	madd	w18, w1, w15, w18
               	add	x1, x9, x1, lsl #1
               	add	x18, x9, w18, uxth #1
               	ldrb	w2, [x1]
               	ldrb	w1, [x1, #1]
               	ldrb	w3, [x18, #1]
               	ldrb	w18, [x18]
               	add	x0, x16, x11
               	sub	x11, x11, #4
               	strb	w1, [x0, #36]
               	strb	w2, [x0, #35]
               	strb	w3, [x0, #38]
               	strb	w18, [x0, #37]
               	b.hi	0x80a18 <_ZN4core3fmt3num3imp52_$LT$impl$u20$core..fmt..Display$u20$for$u20$u64$GT$3fmt17hd9011ba631c18f60E+0x54>
               	add	x11, x11, #39
               	cmp	x10, #99
               	b.gt	0x80a8c <_ZN4core3fmt3num3imp52_$LT$impl$u20$core..fmt..Display$u20$for$u20$u64$GT$3fmt17hd9011ba631c18f60E+0xc8>
               	b	0x80acc <_ZN4core3fmt3num3imp52_$LT$impl$u20$core..fmt..Display$u20$for$u20$u64$GT$3fmt17hd9011ba631c18f60E+0x108>
               	mov	w11, #39
               	cmp	x10, #99
               	b.le	0x80acc <_ZN4core3fmt3num3imp52_$LT$impl$u20$core..fmt..Display$u20$for$u20$u64$GT$3fmt17hd9011ba631c18f60E+0x108>
               	mov	w13, #34079
               	and	w12, w10, #0xffff
               	movk	w13, #20971, lsl #16
               	umull	x12, w12, w13
               	mov	w14, #-100
               	lsr	x12, x12, #37
               	madd	w10, w12, w14, w10
               	add	x10, x9, w10, uxth #1
               	ldrb	w13, [x10, #1]
               	ldrb	w10, [x10]
               	sub	x11, x11, #2
               	add	x14, sp, #8
               	add	x14, x14, x11
               	strb	w10, [x14]
               	mov	x10, x12
               	strb	w13, [x14, #1]
               	cmp	x10, #10
               	b.ge	0x80ae8 <_ZN4core3fmt3num3imp52_$LT$impl$u20$core..fmt..Display$u20$for$u20$u64$GT$3fmt17hd9011ba631c18f60E+0x124>
               	sub	x11, x11, #1
               	add	w9, w10, #48
               	add	x10, sp, #8
               	strb	w9, [x10, x11]
               	b	0x80b08 <_ZN4core3fmt3num3imp52_$LT$impl$u20$core..fmt..Display$u20$for$u20$u64$GT$3fmt17hd9011ba631c18f60E+0x144>
               	add	x9, x9, x10, lsl #1
               	ldrb	w10, [x9, #1]
               	ldrb	w9, [x9]
               	sub	x11, x11, #2
               	add	x12, sp, #8
               	add	x12, x12, x11
               	strb	w10, [x12, #1]
               	strb	w9, [x12]
               	add	x9, sp, #8
               	mov	w10, #39
               	adrp	x1, 0x83000 <_ZN4core3fmt3num3imp52_$LT$impl$u20$core..fmt..Display$u20$for$u20$u64$GT$3fmt17hd9011ba631c18f60E+0x158>
               	add	x3, x9, x11
               	sub	x4, x10, x11
               	add	x1, x1, #1632
               	mov	x0, x8
               	mov	x2, xzr
               	bl	0x80b74 <_ZN4core3fmt9Formatter12pad_integral17h4be5fae25bf478d6E>
               	ldr	x30, [sp, #48]
               	add	sp, sp, #64
               	ret

<_ZN4core9panicking9panic_fmt17h548b34a47a4ac578E>:
               	adrp	x8, 0x83000 <_ZN4core9panicking9panic_fmt17h548b34a47a4ac578E+0xc>
               	adrp	x9, 0x83000 <_ZN4core9panicking9panic_fmt17h548b34a47a4ac578E+0x10>
               	add	x8, x8, #1632
               	add	x9, x9, #1632
               	stp	x8, x9, [sp, #-32]!
               	stp	x0, x1, [sp, #16]
               	mov	x0, sp
               	bl	0x80878 <rust_begin_unwind>
               	brk	#0x1

<_ZN4core3ptr102drop_in_place$LT$$RF$core..iter..adapters..copied..Copied$LT$core..slice..iter..Iter$LT$u8$GT$$GT$$GT$17h2926ff8863b04fafE>:
               	ret

<_ZN36_$LT$T$u20$as$u20$core..any..Any$GT$7type_id17h311a29bdb201aafdE>:
               	mov	x0, #14657
               	movk	x0, #17679, lsl #16
               	movk	x0, #55834, lsl #32
               	movk	x0, #54449, lsl #48
               	ret

<_ZN4core3fmt9Formatter12pad_integral17h4be5fae25bf478d6E>:
               	stp	x29, x30, [sp, #-96]!
               	stp	x28, x27, [sp, #16]
               	stp	x26, x25, [sp, #32]
               	stp	x24, x23, [sp, #48]
               	stp	x22, x21, [sp, #64]
               	stp	x20, x19, [sp, #80]
               	ldr	w8, [x0, #48]
               	mov	w9, #43
               	mov	w10, #1114112
               	mov	x19, x4
               	and	x11, x8, #0x1
               	cmp	w11, #0
               	mov	x20, x3
               	mov	x21, x0
               	csel	w24, w10, w9, eq
               	add	x9, x11, x4
               	tbnz	w8, #2, 0x80bd0 <_ZN4core3fmt9Formatter12pad_integral17h4be5fae25bf478d6E+0x5c>
               	mov	x23, xzr
               	mov	x22, xzr
               	ldr	x10, [x21]
               	cmp	x10, #1
               	b.eq	0x80c6c <_ZN4core3fmt9Formatter12pad_integral17h4be5fae25bf478d6E+0xf8>
               	b	0x80ca0 <_ZN4core3fmt9Formatter12pad_integral17h4be5fae25bf478d6E+0x12c>
               	mov	x22, x2
               	mov	x23, x1
               	mov	x11, x2
               	cbz	x2, 0x80c5c <_ZN4core3fmt9Formatter12pad_integral17h4be5fae25bf478d6E+0xe8>
               	cmp	x22, #1
               	b.ne	0x80bf4 <_ZN4core3fmt9Formatter12pad_integral17h4be5fae25bf478d6E+0x80>
               	mov	x11, xzr
               	mov	x10, x23
               	b	0x80c40 <_ZN4core3fmt9Formatter12pad_integral17h4be5fae25bf478d6E+0xcc>
               	and	x10, x22, #0xfffffffffffffffe
               	mov	x11, xzr
               	mov	x12, xzr
               	add	x13, x23, #1
               	mov	x14, x10
               	ldurb	w15, [x13, #-1]
               	ldrb	w16, [x13], #2
               	and	w15, w15, #0xc0
               	and	w16, w16, #0xc0
               	cmp	w15, #128
               	cinc	x11, x11, ne
               	cmp	w16, #128
               	cinc	x12, x12, ne
               	subs	x14, x14, #2
               	b.ne	0x80c08 <_ZN4core3fmt9Formatter12pad_integral17h4be5fae25bf478d6E+0x94>
               	cmp	x10, x22
               	add	x11, x12, x11
               	b.eq	0x80c5c <_ZN4core3fmt9Formatter12pad_integral17h4be5fae25bf478d6E+0xe8>
               	add	x10, x23, x10
               	add	x12, x23, x22
               	ldrb	w13, [x10], #1
               	and	w13, w13, #0xc0
               	cmp	w13, #128
               	cinc	x11, x11, ne
               	cmp	x12, x10
               	b.ne	0x80c44 <_ZN4core3fmt9Formatter12pad_integral17h4be5fae25bf478d6E+0xd0>
               	add	x9, x11, x9
               	ldr	x10, [x21]
               	cmp	x10, #1
               	b.ne	0x80ca0 <_ZN4core3fmt9Formatter12pad_integral17h4be5fae25bf478d6E+0x12c>
               	ldr	x10, [x21, #8]
               	subs	x28, x10, x9
               	b.ls	0x80ca0 <_ZN4core3fmt9Formatter12pad_integral17h4be5fae25bf478d6E+0x12c>
               	tbnz	w8, #3, 0x80d08 <_ZN4core3fmt9Formatter12pad_integral17h4be5fae25bf478d6E+0x194>
               	ldrb	w8, [x21, #56]
               	cmp	w8, #3
               	csinc	w8, w8, wzr, ne
               	ands	w8, w8, #0x3
               	b.eq	0x80d60 <_ZN4core3fmt9Formatter12pad_integral17h4be5fae25bf478d6E+0x1ec>
               	cmp	w8, #1
               	b.ne	0x80d6c <_ZN4core3fmt9Formatter12pad_integral17h4be5fae25bf478d6E+0x1f8>
               	mov	x29, xzr
               	b	0x80d78 <_ZN4core3fmt9Formatter12pad_integral17h4be5fae25bf478d6E+0x204>
               	mov	x0, x21
               	mov	w1, w24
               	mov	x2, x23
               	mov	x3, x22
               	bl	0x80e44 <_ZN4core3fmt9Formatter12pad_integral12write_prefix17h7ec449827422f958E>
               	tbz	w0, #0, 0x80cdc <_ZN4core3fmt9Formatter12pad_integral17h4be5fae25bf478d6E+0x168>
               	mov	w25, #1
               	mov	w0, w25
               	ldp	x20, x19, [sp, #80]
               	ldp	x22, x21, [sp, #64]
               	ldp	x24, x23, [sp, #48]
               	ldp	x26, x25, [sp, #32]
               	ldp	x28, x27, [sp, #16]
               	ldp	x29, x30, [sp], #96
               	ret
               	ldp	x0, x8, [x21, #32]
               	mov	x1, x20
               	mov	x2, x19
               	ldp	x20, x19, [sp, #80]
               	ldr	x3, [x8, #24]
               	ldp	x22, x21, [sp, #64]
               	ldp	x24, x23, [sp, #48]
               	ldp	x26, x25, [sp, #32]
               	ldp	x28, x27, [sp, #16]
               	ldp	x29, x30, [sp], #96
               	br	x3
               	ldr	w26, [x21, #52]
               	ldrb	w27, [x21, #56]
               	mov	w8, #48
               	mov	w25, #1
               	mov	x0, x21
               	mov	w1, w24
               	mov	x2, x23
               	mov	x3, x22
               	str	w8, [x21, #52]
               	strb	w25, [x21, #56]
               	bl	0x80e44 <_ZN4core3fmt9Formatter12pad_integral12write_prefix17h7ec449827422f958E>
               	tbnz	w0, #0, 0x80cbc <_ZN4core3fmt9Formatter12pad_integral17h4be5fae25bf478d6E+0x148>
               	ldp	x22, x23, [x21, #32]
               	add	x24, x28, #1
               	subs	x24, x24, #1
               	b.eq	0x80e0c <_ZN4core3fmt9Formatter12pad_integral17h4be5fae25bf478d6E+0x298>
               	ldr	x8, [x23, #32]
               	mov	w1, #48
               	mov	x0, x22
               	blr	x8
               	tbz	w0, #0, 0x80d40 <_ZN4core3fmt9Formatter12pad_integral17h4be5fae25bf478d6E+0x1cc>
               	b	0x80cb8 <_ZN4core3fmt9Formatter12pad_integral17h4be5fae25bf478d6E+0x144>
               	mov	x29, x28
               	mov	x28, xzr
               	b	0x80d78 <_ZN4core3fmt9Formatter12pad_integral17h4be5fae25bf478d6E+0x204>
               	add	x8, x28, #1
               	lsr	x28, x28, #1
               	lsr	x29, x8, #1
               	ldp	x25, x27, [x21, #32]
               	ldr	w26, [x21, #52]
               	add	x28, x28, #1
               	subs	x28, x28, #1
               	b.eq	0x80da4 <_ZN4core3fmt9Formatter12pad_integral17h4be5fae25bf478d6E+0x230>
               	ldr	x8, [x27, #32]
               	mov	x0, x25
               	mov	w1, w26
               	blr	x8
               	tbz	w0, #0, 0x80d84 <_ZN4core3fmt9Formatter12pad_integral17h4be5fae25bf478d6E+0x210>
               	b	0x80cb8 <_ZN4core3fmt9Formatter12pad_integral17h4be5fae25bf478d6E+0x144>
               	cmp	w26, #272, lsl #12
               	csel	x28, xzr, x29, eq
               	b.eq	0x80cb8 <_ZN4core3fmt9Formatter12pad_integral17h4be5fae25bf478d6E+0x144>
               	mov	x0, x21
               	mov	w1, w24
               	mov	x2, x23
               	mov	x3, x22
               	bl	0x80e44 <_ZN4core3fmt9Formatter12pad_integral12write_prefix17h7ec449827422f958E>
               	tbnz	w0, #0, 0x80cb8 <_ZN4core3fmt9Formatter12pad_integral17h4be5fae25bf478d6E+0x144>
               	ldr	x8, [x27, #24]
               	mov	x0, x25
               	mov	x1, x20
               	mov	x2, x19
               	blr	x8
               	tbnz	w0, #0, 0x80cb8 <_ZN4core3fmt9Formatter12pad_integral17h4be5fae25bf478d6E+0x144>
               	mov	x19, xzr
               	cmp	x28, x19
               	b.eq	0x80e34 <_ZN4core3fmt9Formatter12pad_integral17h4be5fae25bf478d6E+0x2c0>
               	ldr	x8, [x27, #32]
               	mov	x0, x25
               	mov	w1, w26
               	add	x19, x19, #1
               	blr	x8
               	cbz	w0, 0x80de4 <_ZN4core3fmt9Formatter12pad_integral17h4be5fae25bf478d6E+0x270>
               	sub	x8, x19, #1
               	b	0x80e38 <_ZN4core3fmt9Formatter12pad_integral17h4be5fae25bf478d6E+0x2c4>
               	ldr	x8, [x23, #24]
               	mov	x0, x22
               	mov	x1, x20
               	mov	x2, x19
               	blr	x8
               	tbnz	w0, #0, 0x80cb8 <_ZN4core3fmt9Formatter12pad_integral17h4be5fae25bf478d6E+0x144>
               	mov	w25, wzr
               	str	w26, [x21, #52]
               	strb	w27, [x21, #56]
               	b	0x80cbc <_ZN4core3fmt9Formatter12pad_integral17h4be5fae25bf478d6E+0x148>
               	mov	x8, x28
               	cmp	x8, x28
               	cset	w25, lo
               	b	0x80cbc <_ZN4core3fmt9Formatter12pad_integral17h4be5fae25bf478d6E+0x148>

<_ZN4core3fmt9Formatter12pad_integral12write_prefix17h7ec449827422f958E>:
               	stp	x30, x21, [sp, #-32]!
               	stp	x20, x19, [sp, #16]
               	mov	x19, x3
               	mov	x20, x2
               	cmp	w1, #272, lsl #12
               	mov	x21, x0
               	b.eq	0x80e80 <_ZN4core3fmt9Formatter12pad_integral12write_prefix17h7ec449827422f958E+0x3c>
               	ldp	x0, x8, [x21, #32]
               	ldr	x8, [x8, #32]
               	blr	x8
               	tbz	w0, #0, 0x80e80 <_ZN4core3fmt9Formatter12pad_integral12write_prefix17h7ec449827422f958E+0x3c>
               	mov	w0, #1
               	ldp	x20, x19, [sp, #16]
               	ldp	x30, x21, [sp], #32
               	ret
               	cbz	x20, 0x80ea0 <_ZN4core3fmt9Formatter12pad_integral12write_prefix17h7ec449827422f958E+0x5c>
               	ldp	x0, x8, [x21, #32]
               	mov	x1, x20
               	mov	x2, x19
               	ldp	x20, x19, [sp, #16]
               	ldr	x3, [x8, #24]
               	ldp	x30, x21, [sp], #32
               	br	x3
               	mov	w0, wzr
               	ldp	x20, x19, [sp, #16]
               	ldp	x30, x21, [sp], #32
               	ret

<_ZN4core5slice5index26slice_start_index_len_fail17ha5c8a54d8fb05d93E>:
               	stp	x0, x1, [sp, #-96]!
               	adrp	x9, 0x80000 <_ZN4core5slice5index26slice_start_index_len_fail17ha5c8a54d8fb05d93E+0x4>
               	mov	x8, sp
               	add	x9, x9, #2500
               	adrp	x11, 0x83000 <_ZN4core5slice5index26slice_start_index_len_fail17ha5c8a54d8fb05d93E+0x1c>
               	add	x10, sp, #8
               	add	x11, x11, #1984
               	mov	w12, #2
               	stp	x8, x9, [sp, #64]
               	add	x8, sp, #64
               	add	x0, sp, #16
               	mov	x1, x2
               	stp	xzr, xzr, [sp, #32]
               	stp	x10, x9, [sp, #80]
               	stp	x11, x12, [sp, #16]
               	stp	x8, x12, [sp, #48]
               	bl	0x80b38 <_ZN4core9panicking9panic_fmt17h548b34a47a4ac578E>
               	brk	#0x1

<_ZN4core5slice5index24slice_end_index_len_fail17h827cf37c6cc32b14E>:
               	stp	x0, x1, [sp, #-96]!
               	adrp	x9, 0x80000 <_ZN4core5slice5index24slice_end_index_len_fail17h827cf37c6cc32b14E+0x4>
               	mov	x8, sp
               	add	x9, x9, #2500
               	adrp	x11, 0x83000 <_ZN4core5slice5index24slice_end_index_len_fail17h827cf37c6cc32b14E+0x1c>
               	add	x10, sp, #8
               	add	x11, x11, #2072
               	mov	w12, #2
               	stp	x8, x9, [sp, #64]
               	add	x8, sp, #64
               	add	x0, sp, #16
               	mov	x1, x2
               	stp	xzr, xzr, [sp, #32]
               	stp	x10, x9, [sp, #80]
               	stp	x11, x12, [sp, #16]
               	stp	x8, x12, [sp, #48]
               	bl	0x80b38 <_ZN4core9panicking9panic_fmt17h548b34a47a4ac578E>
               	brk	#0x1

<_ZN4core9panicking5panic17ha7217054e020f4cfE>:
               	sub	sp, sp, #64
               	adrp	x10, 0x83000 <_ZN4core9panicking5panic17ha7217054e020f4cfE+0x10>
               	stp	x0, x1, [sp, #48]
               	add	x8, sp, #48
               	mov	w9, #1
               	add	x10, x10, #1632
               	mov	x0, sp
               	mov	x1, x2
               	stp	xzr, xzr, [sp, #16]
               	stp	x8, x9, [sp]
               	stp	x10, xzr, [sp, #32]
               	bl	0x80b38 <_ZN4core9panicking9panic_fmt17h548b34a47a4ac578E>
               	brk	#0x1

<_ZN44_$LT$$RF$T$u20$as$u20$core..fmt..Display$GT$3fmt17h3f94e73c8b157ba1E>:
               	stp	x30, x25, [sp, #-64]!
               	stp	x24, x23, [sp, #16]
               	stp	x22, x21, [sp, #32]
               	stp	x20, x19, [sp, #48]
               	ldr	x8, [x1]
               	ldp	x20, x19, [x0]
               	ldr	x9, [x1, #16]
               	cmp	x8, #1
               	b.ne	0x80fa4 <_ZN44_$LT$$RF$T$u20$as$u20$core..fmt..Display$GT$3fmt17h3f94e73c8b157ba1E+0x30>
               	cmp	x9, #1
               	b.eq	0x80fac <_ZN44_$LT$$RF$T$u20$as$u20$core..fmt..Display$GT$3fmt17h3f94e73c8b157ba1E+0x38>
               	b	0x81108 <_ZN44_$LT$$RF$T$u20$as$u20$core..fmt..Display$GT$3fmt17h3f94e73c8b157ba1E+0x194>
               	cmp	x9, #1
               	b.ne	0x811b8 <_ZN44_$LT$$RF$T$u20$as$u20$core..fmt..Display$GT$3fmt17h3f94e73c8b157ba1E+0x244>
               	ldr	x11, [x1, #24]
               	add	x10, x20, x19
               	mov	x9, xzr
               	cbz	x11, 0x81084 <_ZN44_$LT$$RF$T$u20$as$u20$core..fmt..Display$GT$3fmt17h3f94e73c8b157ba1E+0x110>
               	mov	x13, x20
               	b	0x80ff8 <_ZN44_$LT$$RF$T$u20$as$u20$core..fmt..Display$GT$3fmt17h3f94e73c8b157ba1E+0x84>
               	ldrb	w17, [x12], #1
               	and	w17, w17, #0x3f
               	ubfiz	w15, w15, #18, #3
               	bfi	w15, w14, #12, #6
               	bfi	w15, w16, #6, #6
               	orr	w14, w15, w17
               	cmp	w14, #272, lsl #12
               	b.eq	0x81100 <_ZN44_$LT$$RF$T$u20$as$u20$core..fmt..Display$GT$3fmt17h3f94e73c8b157ba1E+0x18c>
               	sub	x9, x9, x13
               	subs	x11, x11, #1
               	add	x9, x9, x12
               	mov	x13, x12
               	b.eq	0x81088 <_ZN44_$LT$$RF$T$u20$as$u20$core..fmt..Display$GT$3fmt17h3f94e73c8b157ba1E+0x114>
               	cmp	x13, x10
               	b.eq	0x81100 <_ZN44_$LT$$RF$T$u20$as$u20$core..fmt..Display$GT$3fmt17h3f94e73c8b157ba1E+0x18c>
               	mov	x12, x13
               	ldrsb	w15, [x12], #1
               	tbz	w15, #31, 0x80fe4 <_ZN44_$LT$$RF$T$u20$as$u20$core..fmt..Display$GT$3fmt17h3f94e73c8b157ba1E+0x70>
               	cmp	x12, x10
               	b.eq	0x81030 <_ZN44_$LT$$RF$T$u20$as$u20$core..fmt..Display$GT$3fmt17h3f94e73c8b157ba1E+0xbc>
               	ldrb	w14, [x13, #1]
               	add	x12, x13, #2
               	and	w14, w14, #0x3f
               	and	w15, w15, #0xff
               	cmp	w15, #224
               	b.lo	0x80fe4 <_ZN44_$LT$$RF$T$u20$as$u20$core..fmt..Display$GT$3fmt17h3f94e73c8b157ba1E+0x70>
               	b	0x81044 <_ZN44_$LT$$RF$T$u20$as$u20$core..fmt..Display$GT$3fmt17h3f94e73c8b157ba1E+0xd0>
               	mov	w14, wzr
               	mov	x12, x10
               	and	w15, w15, #0xff
               	cmp	w15, #224
               	b.lo	0x80fe4 <_ZN44_$LT$$RF$T$u20$as$u20$core..fmt..Display$GT$3fmt17h3f94e73c8b157ba1E+0x70>
               	cmp	x12, x10
               	b.eq	0x81060 <_ZN44_$LT$$RF$T$u20$as$u20$core..fmt..Display$GT$3fmt17h3f94e73c8b157ba1E+0xec>
               	ldrb	w16, [x12], #1
               	and	w16, w16, #0x3f
               	cmp	w15, #240
               	b.lo	0x80fe4 <_ZN44_$LT$$RF$T$u20$as$u20$core..fmt..Display$GT$3fmt17h3f94e73c8b157ba1E+0x70>
               	b	0x81070 <_ZN44_$LT$$RF$T$u20$as$u20$core..fmt..Display$GT$3fmt17h3f94e73c8b157ba1E+0xfc>
               	mov	w16, wzr
               	mov	x12, x10
               	cmp	w15, #240
               	b.lo	0x80fe4 <_ZN44_$LT$$RF$T$u20$as$u20$core..fmt..Display$GT$3fmt17h3f94e73c8b157ba1E+0x70>
               	cmp	x12, x10
               	b.ne	0x80fc4 <_ZN44_$LT$$RF$T$u20$as$u20$core..fmt..Display$GT$3fmt17h3f94e73c8b157ba1E+0x50>
               	mov	w17, wzr
               	mov	x12, x10
               	b	0x80fcc <_ZN44_$LT$$RF$T$u20$as$u20$core..fmt..Display$GT$3fmt17h3f94e73c8b157ba1E+0x58>
               	mov	x12, x20
               	cmp	x12, x10
               	b.eq	0x81100 <_ZN44_$LT$$RF$T$u20$as$u20$core..fmt..Display$GT$3fmt17h3f94e73c8b157ba1E+0x18c>
               	mov	x11, x12
               	ldrsb	w13, [x11], #1
               	tbnz	w13, #31, 0x810c0 <_ZN44_$LT$$RF$T$u20$as$u20$core..fmt..Display$GT$3fmt17h3f94e73c8b157ba1E+0x14c>
               	cbz	x9, 0x810f0 <_ZN44_$LT$$RF$T$u20$as$u20$core..fmt..Display$GT$3fmt17h3f94e73c8b157ba1E+0x17c>
               	cmp	x9, x19
               	b.hs	0x810e8 <_ZN44_$LT$$RF$T$u20$as$u20$core..fmt..Display$GT$3fmt17h3f94e73c8b157ba1E+0x174>
               	ldrsb	w10, [x20, x9]
               	cmn	w10, #64
               	b.ge	0x810f0 <_ZN44_$LT$$RF$T$u20$as$u20$core..fmt..Display$GT$3fmt17h3f94e73c8b157ba1E+0x17c>
               	mov	x10, xzr
               	mov	x9, xzr
               	b	0x810f4 <_ZN44_$LT$$RF$T$u20$as$u20$core..fmt..Display$GT$3fmt17h3f94e73c8b157ba1E+0x180>
               	cmp	x11, x10
               	and	w11, w13, #0xff
               	b.eq	0x81318 <_ZN44_$LT$$RF$T$u20$as$u20$core..fmt..Display$GT$3fmt17h3f94e73c8b157ba1E+0x3a4>
               	ldrb	w14, [x12, #1]
               	add	x13, x12, #2
               	and	w12, w14, #0x3f
               	lsl	w12, w12, #12
               	cmp	w11, #224
               	b.hs	0x81328 <_ZN44_$LT$$RF$T$u20$as$u20$core..fmt..Display$GT$3fmt17h3f94e73c8b157ba1E+0x3b4>
               	b	0x8109c <_ZN44_$LT$$RF$T$u20$as$u20$core..fmt..Display$GT$3fmt17h3f94e73c8b157ba1E+0x128>
               	cmp	x9, x19
               	b.ne	0x810b4 <_ZN44_$LT$$RF$T$u20$as$u20$core..fmt..Display$GT$3fmt17h3f94e73c8b157ba1E+0x140>
               	mov	x10, x20
               	cmp	x10, #0
               	csel	x20, x20, x10, eq
               	csel	x19, x19, x9, eq
               	cmp	x8, #1
               	b.ne	0x811b8 <_ZN44_$LT$$RF$T$u20$as$u20$core..fmt..Display$GT$3fmt17h3f94e73c8b157ba1E+0x244>
               	cbz	x19, 0x81120 <_ZN44_$LT$$RF$T$u20$as$u20$core..fmt..Display$GT$3fmt17h3f94e73c8b157ba1E+0x1ac>
               	cmp	x19, #1
               	b.ne	0x81130 <_ZN44_$LT$$RF$T$u20$as$u20$core..fmt..Display$GT$3fmt17h3f94e73c8b157ba1E+0x1bc>
               	mov	x9, xzr
               	mov	x8, x20
               	b	0x8117c <_ZN44_$LT$$RF$T$u20$as$u20$core..fmt..Display$GT$3fmt17h3f94e73c8b157ba1E+0x208>
               	ldr	x8, [x1, #8]
               	cbz	x8, 0x811b8 <_ZN44_$LT$$RF$T$u20$as$u20$core..fmt..Display$GT$3fmt17h3f94e73c8b157ba1E+0x244>
               	mov	x9, xzr
               	b	0x81244 <_ZN44_$LT$$RF$T$u20$as$u20$core..fmt..Display$GT$3fmt17h3f94e73c8b157ba1E+0x2d0>
               	and	x8, x19, #0xfffffffffffffffe
               	mov	x9, xzr
               	mov	x10, xzr
               	add	x11, x20, #1
               	mov	x12, x8
               	ldurb	w13, [x11, #-1]
               	ldrb	w14, [x11], #2
               	and	w13, w13, #0xc0
               	and	w14, w14, #0xc0
               	cmp	w13, #128
               	cinc	x9, x9, ne
               	cmp	w14, #128
               	cinc	x10, x10, ne
               	subs	x12, x12, #2
               	b.ne	0x81144 <_ZN44_$LT$$RF$T$u20$as$u20$core..fmt..Display$GT$3fmt17h3f94e73c8b157ba1E+0x1d0>
               	cmp	x19, x8
               	add	x9, x10, x9
               	b.eq	0x81198 <_ZN44_$LT$$RF$T$u20$as$u20$core..fmt..Display$GT$3fmt17h3f94e73c8b157ba1E+0x224>
               	add	x8, x20, x8
               	add	x10, x20, x19
               	ldrb	w11, [x8], #1
               	and	w11, w11, #0xc0
               	cmp	w11, #128
               	cinc	x9, x9, ne
               	cmp	x10, x8
               	b.ne	0x81180 <_ZN44_$LT$$RF$T$u20$as$u20$core..fmt..Display$GT$3fmt17h3f94e73c8b157ba1E+0x20c>
               	ldr	x8, [x1, #8]
               	cmp	x9, x8
               	b.hs	0x811b8 <_ZN44_$LT$$RF$T$u20$as$u20$core..fmt..Display$GT$3fmt17h3f94e73c8b157ba1E+0x244>
               	cmp	x19, #1
               	b.hi	0x811dc <_ZN44_$LT$$RF$T$u20$as$u20$core..fmt..Display$GT$3fmt17h3f94e73c8b157ba1E+0x268>
               	mov	x9, xzr
               	mov	x10, x20
               	b	0x81228 <_ZN44_$LT$$RF$T$u20$as$u20$core..fmt..Display$GT$3fmt17h3f94e73c8b157ba1E+0x2b4>
               	ldp	x0, x8, [x1, #32]
               	mov	x1, x20
               	mov	x2, x19
               	ldp	x20, x19, [sp, #48]
               	ldr	x3, [x8, #24]
               	ldp	x22, x21, [sp, #32]
               	ldp	x24, x23, [sp, #16]
               	ldp	x30, x25, [sp], #64
               	br	x3
               	and	x10, x19, #0xfffffffffffffffe
               	mov	x9, xzr
               	mov	x11, xzr
               	add	x12, x20, #1
               	mov	x13, x10
               	ldurb	w14, [x12, #-1]
               	ldrb	w15, [x12], #2
               	and	w14, w14, #0xc0
               	and	w15, w15, #0xc0
               	cmp	w14, #128
               	cinc	x9, x9, ne
               	cmp	w15, #128
               	cinc	x11, x11, ne
               	subs	x13, x13, #2
               	b.ne	0x811f0 <_ZN44_$LT$$RF$T$u20$as$u20$core..fmt..Display$GT$3fmt17h3f94e73c8b157ba1E+0x27c>
               	cmp	x19, x10
               	add	x9, x11, x9
               	b.eq	0x81244 <_ZN44_$LT$$RF$T$u20$as$u20$core..fmt..Display$GT$3fmt17h3f94e73c8b157ba1E+0x2d0>
               	add	x10, x20, x10
               	add	x11, x20, x19
               	ldrb	w12, [x10], #1
               	and	w12, w12, #0xc0
               	cmp	w12, #128
               	cinc	x9, x9, ne
               	cmp	x11, x10
               	b.ne	0x8122c <_ZN44_$LT$$RF$T$u20$as$u20$core..fmt..Display$GT$3fmt17h3f94e73c8b157ba1E+0x2b8>
               	ldrb	w10, [x1, #56]
               	sub	x8, x8, x9
               	cmp	w10, #3
               	csel	w10, wzr, w10, eq
               	ands	w10, w10, #0x3
               	b.eq	0x8126c <_ZN44_$LT$$RF$T$u20$as$u20$core..fmt..Display$GT$3fmt17h3f94e73c8b157ba1E+0x2f8>
               	cmp	w10, #1
               	b.ne	0x81278 <_ZN44_$LT$$RF$T$u20$as$u20$core..fmt..Display$GT$3fmt17h3f94e73c8b157ba1E+0x304>
               	mov	x24, xzr
               	b	0x81284 <_ZN44_$LT$$RF$T$u20$as$u20$core..fmt..Display$GT$3fmt17h3f94e73c8b157ba1E+0x310>
               	mov	x24, x8
               	mov	x8, xzr
               	b	0x81284 <_ZN44_$LT$$RF$T$u20$as$u20$core..fmt..Display$GT$3fmt17h3f94e73c8b157ba1E+0x310>
               	add	x9, x8, #1
               	lsr	x8, x8, #1
               	lsr	x24, x9, #1
               	ldp	x21, x23, [x1, #32]
               	ldr	w22, [x1, #52]
               	add	x25, x8, #1
               	subs	x25, x25, #1
               	b.eq	0x812b0 <_ZN44_$LT$$RF$T$u20$as$u20$core..fmt..Display$GT$3fmt17h3f94e73c8b157ba1E+0x33c>
               	ldr	x8, [x23, #32]
               	mov	x0, x21
               	mov	w1, w22
               	blr	x8
               	tbz	w0, #0, 0x81290 <_ZN44_$LT$$RF$T$u20$as$u20$core..fmt..Display$GT$3fmt17h3f94e73c8b157ba1E+0x31c>
               	b	0x812d4 <_ZN44_$LT$$RF$T$u20$as$u20$core..fmt..Display$GT$3fmt17h3f94e73c8b157ba1E+0x360>
               	cmp	w22, #272, lsl #12
               	csel	x24, xzr, x24, eq
               	b.eq	0x812d4 <_ZN44_$LT$$RF$T$u20$as$u20$core..fmt..Display$GT$3fmt17h3f94e73c8b157ba1E+0x360>
               	ldr	x8, [x23, #24]
               	mov	x0, x21
               	mov	x1, x20
               	mov	x2, x19
               	blr	x8
               	tbz	w0, #0, 0x812ec <_ZN44_$LT$$RF$T$u20$as$u20$core..fmt..Display$GT$3fmt17h3f94e73c8b157ba1E+0x378>
               	mov	w0, #1
               	ldp	x20, x19, [sp, #48]
               	ldp	x22, x21, [sp, #32]
               	ldp	x24, x23, [sp, #16]
               	ldp	x30, x25, [sp], #64
               	ret
               	mov	x19, xzr
               	cmp	x24, x19
               	b.eq	0x81348 <_ZN44_$LT$$RF$T$u20$as$u20$core..fmt..Display$GT$3fmt17h3f94e73c8b157ba1E+0x3d4>
               	ldr	x8, [x23, #32]
               	mov	x0, x21
               	mov	w1, w22
               	add	x19, x19, #1
               	blr	x8
               	cbz	w0, 0x812f0 <_ZN44_$LT$$RF$T$u20$as$u20$core..fmt..Display$GT$3fmt17h3f94e73c8b157ba1E+0x37c>
               	sub	x8, x19, #1
               	b	0x8134c <_ZN44_$LT$$RF$T$u20$as$u20$core..fmt..Display$GT$3fmt17h3f94e73c8b157ba1E+0x3d8>
               	mov	w12, wzr
               	mov	x13, x10
               	cmp	w11, #224
               	b.lo	0x8109c <_ZN44_$LT$$RF$T$u20$as$u20$core..fmt..Display$GT$3fmt17h3f94e73c8b157ba1E+0x128>
               	cmp	x13, x10
               	b.eq	0x81358 <_ZN44_$LT$$RF$T$u20$as$u20$core..fmt..Display$GT$3fmt17h3f94e73c8b157ba1E+0x3e4>
               	ldrb	w14, [x13], #1
               	and	w14, w14, #0x3f
               	lsl	w14, w14, #6
               	cmp	w11, #240
               	b.hs	0x81368 <_ZN44_$LT$$RF$T$u20$as$u20$core..fmt..Display$GT$3fmt17h3f94e73c8b157ba1E+0x3f4>
               	b	0x8109c <_ZN44_$LT$$RF$T$u20$as$u20$core..fmt..Display$GT$3fmt17h3f94e73c8b157ba1E+0x128>
               	mov	x8, x24
               	cmp	x8, x24
               	cset	w0, lo
               	b	0x812d8 <_ZN44_$LT$$RF$T$u20$as$u20$core..fmt..Display$GT$3fmt17h3f94e73c8b157ba1E+0x364>
               	mov	w14, wzr
               	mov	x13, x10
               	cmp	w11, #240
               	b.lo	0x8109c <_ZN44_$LT$$RF$T$u20$as$u20$core..fmt..Display$GT$3fmt17h3f94e73c8b157ba1E+0x128>
               	cmp	x13, x10
               	b.eq	0x8137c <_ZN44_$LT$$RF$T$u20$as$u20$core..fmt..Display$GT$3fmt17h3f94e73c8b157ba1E+0x408>
               	ldrb	w10, [x13]
               	and	w10, w10, #0x3f
               	b	0x81380 <_ZN44_$LT$$RF$T$u20$as$u20$core..fmt..Display$GT$3fmt17h3f94e73c8b157ba1E+0x40c>
               	mov	w10, wzr
               	bfi	w12, w11, #18, #3
               	orr	w11, w12, w14
               	orr	w10, w11, w10
               	cmp	w10, #272, lsl #12
               	b.eq	0x81100 <_ZN44_$LT$$RF$T$u20$as$u20$core..fmt..Display$GT$3fmt17h3f94e73c8b157ba1E+0x18c>
               	b	0x8109c <_ZN44_$LT$$RF$T$u20$as$u20$core..fmt..Display$GT$3fmt17h3f94e73c8b157ba1E+0x128>

<_ZN42_$LT$$RF$T$u20$as$u20$core..fmt..Debug$GT$3fmt17h4b8fb327fe2e6f34E>:
               	ldp	x0, x8, [x0]
               	ldr	x2, [x8, #24]
               	br	x2

<_ZN4core3fmt5write17h4089dd81629a8d2eE>:
               	sub	sp, sp, #144
               	str	x30, [sp, #64]
               	stp	x26, x25, [sp, #80]
               	stp	x24, x23, [sp, #96]
               	stp	x22, x21, [sp, #112]
               	stp	x20, x19, [sp, #128]
               	ldr	x8, [x2, #16]
               	mov	x19, x2
               	mov	x9, #137438953472
               	mov	w10, #3
               	stp	x1, x9, [sp, #40]
               	strb	w10, [sp, #56]
               	str	xzr, [sp]
               	str	xzr, [sp, #16]
               	str	x0, [sp, #32]
               	cbz	x8, 0x814f8 <_ZN4core3fmt5write17h4089dd81629a8d2eE+0x154>
               	ldr	x9, [x19, #24]
               	ldp	x20, x21, [x19]
               	cmp	x9, x21
               	csel	x22, x21, x9, hi
               	cbz	x22, 0x81558 <_ZN4core3fmt5write17h4089dd81629a8d2eE+0x1b4>
               	adrp	x25, 0x80000 <_ZN4core3fmt5write17h4089dd81629a8d2eE+0x50>
               	mov	x23, xzr
               	add	x24, x8, #48
               	add	x25, x25, #2420
               	mov	x26, x22
               	add	x8, x20, x23
               	ldr	x2, [x8, #8]
               	cbz	x2, 0x8142c <_ZN4core3fmt5write17h4089dd81629a8d2eE+0x88>
               	ldp	x0, x8, [sp, #32]
               	ldr	x1, [x20, x23]
               	ldr	x8, [x8, #24]
               	blr	x8
               	tbnz	w0, #0, 0x81578 <_ZN4core3fmt5write17h4089dd81629a8d2eE+0x1d4>
               	ldur	w8, [x24, #-8]
               	str	w8, [sp, #52]
               	ldrb	w8, [x24]
               	strb	w8, [sp, #56]
               	ldur	w9, [x24, #-4]
               	ldr	x8, [x19, #32]
               	str	w9, [sp, #48]
               	ldp	x10, x9, [x24, #-24]
               	cbz	x10, 0x81488 <_ZN4core3fmt5write17h4089dd81629a8d2eE+0xe4>
               	cmp	x10, #1
               	b.ne	0x81468 <_ZN4core3fmt5write17h4089dd81629a8d2eE+0xc4>
               	add	x10, x8, x9, lsl #4
               	ldr	x10, [x10, #8]
               	cmp	x10, x25
               	b.eq	0x8147c <_ZN4core3fmt5write17h4089dd81629a8d2eE+0xd8>
               	mov	x10, xzr
               	stp	x10, x9, [sp]
               	ldp	x10, x9, [x24, #-40]
               	cbnz	x10, 0x81498 <_ZN4core3fmt5write17h4089dd81629a8d2eE+0xf4>
               	b	0x814c4 <_ZN4core3fmt5write17h4089dd81629a8d2eE+0x120>
               	lsl	x9, x9, #4
               	ldr	x9, [x8, x9]
               	ldr	x9, [x9]
               	mov	w10, #1
               	stp	x10, x9, [sp]
               	ldp	x10, x9, [x24, #-40]
               	cbz	x10, 0x814c4 <_ZN4core3fmt5write17h4089dd81629a8d2eE+0x120>
               	cmp	x10, #1
               	b.ne	0x814b0 <_ZN4core3fmt5write17h4089dd81629a8d2eE+0x10c>
               	add	x10, x8, x9, lsl #4
               	ldr	x10, [x10, #8]
               	cmp	x10, x25
               	b.eq	0x814b8 <_ZN4core3fmt5write17h4089dd81629a8d2eE+0x114>
               	mov	x10, xzr
               	b	0x814c8 <_ZN4core3fmt5write17h4089dd81629a8d2eE+0x124>
               	lsl	x9, x9, #4
               	ldr	x9, [x8, x9]
               	ldr	x9, [x9]
               	mov	w10, #1
               	stp	x10, x9, [sp, #16]
               	ldur	x9, [x24, #-48]
               	mov	x1, sp
               	add	x8, x8, x9, lsl #4
               	ldp	x0, x9, [x8]
               	blr	x9
               	tbnz	w0, #0, 0x81578 <_ZN4core3fmt5write17h4089dd81629a8d2eE+0x1d4>
               	subs	x26, x26, #1
               	add	x24, x24, #56
               	add	x23, x23, #16
               	b.ne	0x8140c <_ZN4core3fmt5write17h4089dd81629a8d2eE+0x68>
               	b	0x81558 <_ZN4core3fmt5write17h4089dd81629a8d2eE+0x1b4>
               	ldr	x8, [x19, #40]
               	ldp	x20, x21, [x19]
               	cmp	x8, x21
               	csel	x22, x21, x8, hi
               	cbz	x22, 0x81558 <_ZN4core3fmt5write17h4089dd81629a8d2eE+0x1b4>
               	ldr	x19, [x19, #32]
               	mov	x23, xzr
               	mov	x24, x22
               	add	x8, x20, x23
               	ldr	x2, [x8, #8]
               	cbz	x2, 0x81538 <_ZN4core3fmt5write17h4089dd81629a8d2eE+0x194>
               	ldp	x0, x8, [sp, #32]
               	ldr	x1, [x20, x23]
               	ldr	x8, [x8, #24]
               	blr	x8
               	tbnz	w0, #0, 0x81578 <_ZN4core3fmt5write17h4089dd81629a8d2eE+0x1d4>
               	add	x8, x19, x23
               	ldp	x0, x9, [x8]
               	mov	x1, sp
               	blr	x9
               	tbnz	w0, #0, 0x81578 <_ZN4core3fmt5write17h4089dd81629a8d2eE+0x1d4>
               	subs	x24, x24, #1
               	add	x23, x23, #16
               	b.ne	0x81518 <_ZN4core3fmt5write17h4089dd81629a8d2eE+0x174>
               	cmp	x22, x21
               	b.hs	0x81580 <_ZN4core3fmt5write17h4089dd81629a8d2eE+0x1dc>
               	ldp	x0, x8, [sp, #32]
               	add	x9, x20, x22, lsl #4
               	ldp	x1, x2, [x9]
               	ldr	x8, [x8, #24]
               	blr	x8
               	tbz	w0, #0, 0x81580 <_ZN4core3fmt5write17h4089dd81629a8d2eE+0x1dc>
               	mov	w0, #1
               	b	0x81584 <_ZN4core3fmt5write17h4089dd81629a8d2eE+0x1e0>
               	mov	w0, wzr
               	ldp	x20, x19, [sp, #128]
               	ldp	x22, x21, [sp, #112]
               	ldp	x24, x23, [sp, #96]
               	ldp	x26, x25, [sp, #80]
               	ldr	x30, [sp, #64]
               	add	sp, sp, #144
               	ret

<_ZN4core5slice5index22slice_index_order_fail17he71d7140076fff6eE>:
               	stp	x0, x1, [sp, #-96]!
               	adrp	x9, 0x80000 <_ZN4core5slice5index22slice_index_order_fail17he71d7140076fff6eE>
               	mov	x8, sp
               	add	x9, x9, #2500
               	adrp	x11, 0x83000 <_ZN4core5slice5index22slice_index_order_fail17he71d7140076fff6eE+0x18>
               	add	x10, sp, #8
               	add	x11, x11, #2200
               	mov	w12, #2
               	stp	x8, x9, [sp, #64]
               	add	x8, sp, #64
               	add	x0, sp, #16
               	mov	x1, x2
               	stp	xzr, xzr, [sp, #32]
               	stp	x10, x9, [sp, #80]
               	stp	x11, x12, [sp, #16]
               	stp	x8, x12, [sp, #48]
               	bl	0x80b38 <_ZN4core9panicking9panic_fmt17h548b34a47a4ac578E>
               	brk	#0x1

<_ZN4core6result13unwrap_failed17h514395d9b84745f5E>:
               	sub	sp, sp, #112
               	mov	w8, #43
               	adrp	x10, 0x80000 <_ZN4core6result13unwrap_failed17h514395d9b84745f5E+0x4>
               	mov	x9, sp
               	add	x10, x10, #3956
               	adrp	x12, 0x81000 <_ZN4core6result13unwrap_failed17h514395d9b84745f5E+0x14>
               	stp	x0, x8, [sp]
               	adrp	x8, 0x83000 <_ZN4core6result13unwrap_failed17h514395d9b84745f5E+0x24>
               	stp	x1, x2, [sp, #16]
               	add	x11, sp, #16
               	add	x12, x12, #920
               	add	x8, x8, #2304
               	stp	x9, x10, [sp, #80]
               	mov	w9, #2
               	add	x10, sp, #80
               	add	x0, sp, #32
               	mov	x1, x3
               	stp	xzr, xzr, [sp, #48]
               	stp	x11, x12, [sp, #96]
               	stp	x8, x9, [sp, #32]
               	stp	x10, x9, [sp, #64]
               	bl	0x80b38 <_ZN4core9panicking9panic_fmt17h548b34a47a4ac578E>
               	brk	#0x1

<_ZN68_$LT$core..fmt..builders..PadAdapter$u20$as$u20$core..fmt..Write$GT$9write_str17h006d11991b68be72E>:
               	stp	x30, x27, [sp, #-80]!
               	stp	x26, x25, [sp, #16]
               	stp	x24, x23, [sp, #32]
               	stp	x22, x21, [sp, #48]
               	stp	x20, x19, [sp, #64]
               	cbz	x2, 0x81880 <_ZN68_$LT$core..fmt..builders..PadAdapter$u20$as$u20$core..fmt..Write$GT$9write_str17h006d11991b68be72E+0x23c>
               	ldp	x25, x24, [x0, #8]
               	ldr	x21, [x0]
               	mov	x27, #2570
               	movk	x27, #2570, lsl #16
               	mov	x26, #-72340172838076674
               	movk	x27, #2570, lsl #32
               	adrp	x22, 0x83000 <_ZN68_$LT$core..fmt..builders..PadAdapter$u20$as$u20$core..fmt..Write$GT$9write_str17h006d11991b68be72E+0x38>
               	mov	x19, x2
               	mov	x20, x1
               	movk	x26, #65279
               	movk	x27, #2570, lsl #48
               	add	x22, x22, #2338
               	b	0x8169c <_ZN68_$LT$core..fmt..builders..PadAdapter$u20$as$u20$core..fmt..Write$GT$9write_str17h006d11991b68be72E+0x58>
               	subs	x19, x19, x23
               	add	x20, x20, x23
               	b.eq	0x81880 <_ZN68_$LT$core..fmt..builders..PadAdapter$u20$as$u20$core..fmt..Write$GT$9write_str17h006d11991b68be72E+0x23c>
               	ldrb	w8, [x24]
               	cbz	w8, 0x816bc <_ZN68_$LT$core..fmt..builders..PadAdapter$u20$as$u20$core..fmt..Write$GT$9write_str17h006d11991b68be72E+0x78>
               	ldr	x8, [x25, #24]
               	mov	w2, #4
               	mov	x0, x21
               	mov	x1, x22
               	blr	x8
               	tbnz	w0, #0, 0x81888 <_ZN68_$LT$core..fmt..builders..PadAdapter$u20$as$u20$core..fmt..Write$GT$9write_str17h006d11991b68be72E+0x244>
               	mov	x23, xzr
               	mov	x1, x19
               	b	0x816d8 <_ZN68_$LT$core..fmt..builders..PadAdapter$u20$as$u20$core..fmt..Write$GT$9write_str17h006d11991b68be72E+0x94>
               	subs	x8, x19, x23
               	csel	x1, xzr, x8, lo
               	cmp	x23, x19
               	b.hi	0x8181c <_ZN68_$LT$core..fmt..builders..PadAdapter$u20$as$u20$core..fmt..Write$GT$9write_str17h006d11991b68be72E+0x1d8>
               	subs	x8, x1, #16
               	b.hs	0x81708 <_ZN68_$LT$core..fmt..builders..PadAdapter$u20$as$u20$core..fmt..Write$GT$9write_str17h006d11991b68be72E+0xc4>
               	cbz	x1, 0x8181c <_ZN68_$LT$core..fmt..builders..PadAdapter$u20$as$u20$core..fmt..Write$GT$9write_str17h006d11991b68be72E+0x1d8>
               	mov	x9, xzr
               	add	x8, x20, x23
               	ldrb	w10, [x8, x9]
               	cmp	w10, #10
               	b.eq	0x817d0 <_ZN68_$LT$core..fmt..builders..PadAdapter$u20$as$u20$core..fmt..Write$GT$9write_str17h006d11991b68be72E+0x18c>
               	add	x9, x9, #1
               	cmp	x1, x9
               	b.ne	0x816ec <_ZN68_$LT$core..fmt..builders..PadAdapter$u20$as$u20$core..fmt..Write$GT$9write_str17h006d11991b68be72E+0xa8>
               	b	0x8181c <_ZN68_$LT$core..fmt..builders..PadAdapter$u20$as$u20$core..fmt..Write$GT$9write_str17h006d11991b68be72E+0x1d8>
               	add	x9, x20, x23
               	add	x10, x9, #7
               	and	x10, x10, #0xfffffffffffffff8
               	subs	x10, x10, x9
               	b.eq	0x81750 <_ZN68_$LT$core..fmt..builders..PadAdapter$u20$as$u20$core..fmt..Write$GT$9write_str17h006d11991b68be72E+0x10c>
               	cmp	x10, x1
               	mov	x9, xzr
               	csel	x0, x1, x10, hi
               	add	x10, x20, x23
               	ldrb	w11, [x10, x9]
               	cmp	w11, #10
               	b.eq	0x817d0 <_ZN68_$LT$core..fmt..builders..PadAdapter$u20$as$u20$core..fmt..Write$GT$9write_str17h006d11991b68be72E+0x18c>
               	add	x9, x9, #1
               	cmp	x0, x9
               	b.ne	0x8172c <_ZN68_$LT$core..fmt..builders..PadAdapter$u20$as$u20$core..fmt..Write$GT$9write_str17h006d11991b68be72E+0xe8>
               	cmp	x0, x8
               	b.ls	0x81754 <_ZN68_$LT$core..fmt..builders..PadAdapter$u20$as$u20$core..fmt..Write$GT$9write_str17h006d11991b68be72E+0x110>
               	b	0x81798 <_ZN68_$LT$core..fmt..builders..PadAdapter$u20$as$u20$core..fmt..Write$GT$9write_str17h006d11991b68be72E+0x154>
               	mov	x0, xzr
               	add	x9, x20, x23
               	add	x10, x9, x0
               	ldp	x11, x10, [x10]
               	eor	x12, x11, x27
               	eor	x13, x10, x27
               	add	x12, x12, x26
               	add	x13, x13, x26
               	bic	x11, x12, x11
               	bic	x10, x13, x10
               	orr	x10, x10, x11
               	tst	x10, #0x8080808080808080
               	b.ne	0x81790 <_ZN68_$LT$core..fmt..builders..PadAdapter$u20$as$u20$core..fmt..Write$GT$9write_str17h006d11991b68be72E+0x14c>
               	add	x0, x0, #16
               	cmp	x0, x8
               	b.ls	0x81758 <_ZN68_$LT$core..fmt..builders..PadAdapter$u20$as$u20$core..fmt..Write$GT$9write_str17h006d11991b68be72E+0x114>
               	cmp	x0, x1
               	b.hi	0x818c4 <_ZN68_$LT$core..fmt..builders..PadAdapter$u20$as$u20$core..fmt..Write$GT$9write_str17h006d11991b68be72E+0x280>
               	cmp	x0, x1
               	b.eq	0x8181c <_ZN68_$LT$core..fmt..builders..PadAdapter$u20$as$u20$core..fmt..Write$GT$9write_str17h006d11991b68be72E+0x1d8>
               	add	x9, x0, x23
               	mov	x8, xzr
               	add	x9, x20, x9
               	sub	x10, x1, x0
               	ldrb	w11, [x9, x8]
               	cmp	w11, #10
               	b.eq	0x817cc <_ZN68_$LT$core..fmt..builders..PadAdapter$u20$as$u20$core..fmt..Write$GT$9write_str17h006d11991b68be72E+0x188>
               	add	x8, x8, #1
               	cmp	x10, x8
               	b.ne	0x817b0 <_ZN68_$LT$core..fmt..builders..PadAdapter$u20$as$u20$core..fmt..Write$GT$9write_str17h006d11991b68be72E+0x16c>
               	b	0x8181c <_ZN68_$LT$core..fmt..builders..PadAdapter$u20$as$u20$core..fmt..Write$GT$9write_str17h006d11991b68be72E+0x1d8>
               	add	x9, x0, x8
               	add	x8, x9, x23
               	cmp	x8, x19
               	add	x23, x8, #1
               	b.hs	0x816c8 <_ZN68_$LT$core..fmt..builders..PadAdapter$u20$as$u20$core..fmt..Write$GT$9write_str17h006d11991b68be72E+0x84>
               	ldrb	w8, [x20, x8]
               	cmp	w8, #10
               	b.ne	0x816c8 <_ZN68_$LT$core..fmt..builders..PadAdapter$u20$as$u20$core..fmt..Write$GT$9write_str17h006d11991b68be72E+0x84>
               	mov	w8, #1
               	cmp	x19, x23
               	strb	w8, [x24]
               	b.hi	0x81830 <_ZN68_$LT$core..fmt..builders..PadAdapter$u20$as$u20$core..fmt..Write$GT$9write_str17h006d11991b68be72E+0x1ec>
               	b.ne	0x818a4 <_ZN68_$LT$core..fmt..builders..PadAdapter$u20$as$u20$core..fmt..Write$GT$9write_str17h006d11991b68be72E+0x260>
               	ldr	x8, [x25, #24]
               	mov	x0, x21
               	mov	x1, x20
               	mov	x2, x19
               	blr	x8
               	tbz	w0, #0, 0x81690 <_ZN68_$LT$core..fmt..builders..PadAdapter$u20$as$u20$core..fmt..Write$GT$9write_str17h006d11991b68be72E+0x4c>
               	b	0x81888 <_ZN68_$LT$core..fmt..builders..PadAdapter$u20$as$u20$core..fmt..Write$GT$9write_str17h006d11991b68be72E+0x244>
               	mov	w8, wzr
               	mov	x23, x19
               	cmp	x19, x23
               	strb	w8, [x24]
               	b.ls	0x817fc <_ZN68_$LT$core..fmt..builders..PadAdapter$u20$as$u20$core..fmt..Write$GT$9write_str17h006d11991b68be72E+0x1b8>
               	ldrsb	w8, [x20, x23]
               	cmn	w8, #65
               	b.le	0x818a4 <_ZN68_$LT$core..fmt..builders..PadAdapter$u20$as$u20$core..fmt..Write$GT$9write_str17h006d11991b68be72E+0x260>
               	ldr	x8, [x25, #24]
               	mov	x0, x21
               	mov	x1, x20
               	mov	x2, x23
               	blr	x8
               	tbnz	w0, #0, 0x81888 <_ZN68_$LT$core..fmt..builders..PadAdapter$u20$as$u20$core..fmt..Write$GT$9write_str17h006d11991b68be72E+0x244>
               	ldrsb	w8, [x20, x23]
               	cmn	w8, #65
               	b.gt	0x81690 <_ZN68_$LT$core..fmt..builders..PadAdapter$u20$as$u20$core..fmt..Write$GT$9write_str17h006d11991b68be72E+0x4c>
               	adrp	x4, 0x83000 <_ZN68_$LT$core..fmt..builders..PadAdapter$u20$as$u20$core..fmt..Write$GT$9write_str17h006d11991b68be72E+0x224>
               	add	x4, x4, #2416
               	mov	x0, x20
               	mov	x1, x19
               	mov	x2, x23
               	mov	x3, x19
               	bl	0x818d4 <_ZN4core3str16slice_error_fail17hf7d2a92268a53d29E>
               	brk	#0x1
               	mov	w0, wzr
               	b	0x8188c <_ZN68_$LT$core..fmt..builders..PadAdapter$u20$as$u20$core..fmt..Write$GT$9write_str17h006d11991b68be72E+0x248>
               	mov	w0, #1
               	ldp	x20, x19, [sp, #64]
               	ldp	x22, x21, [sp, #48]
               	ldp	x24, x23, [sp, #32]
               	ldp	x26, x25, [sp, #16]
               	ldp	x30, x27, [sp], #80
               	ret
               	adrp	x4, 0x83000 <_ZN68_$LT$core..fmt..builders..PadAdapter$u20$as$u20$core..fmt..Write$GT$9write_str17h006d11991b68be72E+0x268>
               	add	x4, x4, #2392
               	mov	x0, x20
               	mov	x1, x19
               	mov	x2, xzr
               	mov	x3, x23
               	bl	0x818d4 <_ZN4core3str16slice_error_fail17hf7d2a92268a53d29E>
               	brk	#0x1
               	adrp	x2, 0x83000 <_ZN68_$LT$core..fmt..builders..PadAdapter$u20$as$u20$core..fmt..Write$GT$9write_str17h006d11991b68be72E+0x288>
               	add	x2, x2, #2368
               	bl	0x80eb0 <_ZN4core5slice5index26slice_start_index_len_fail17ha5c8a54d8fb05d93E>
               	brk	#0x1

<_ZN4core3str16slice_error_fail17hf7d2a92268a53d29E>:
               	stp	x2, x3, [sp, #-208]!
               	cmp	x1, #257
               	b.hs	0x81900 <_ZN4core3str16slice_error_fail17hf7d2a92268a53d29E+0x2c>
               	adrp	x9, 0x83000 <_ZN4core3str16slice_error_fail17hf7d2a92268a53d29E+0x14>
               	add	x9, x9, #1632
               	mov	x8, xzr
               	stp	x0, x1, [sp, #16]
               	stp	x9, x8, [sp, #32]
               	cmp	x2, x1
               	b.ls	0x8194c <_ZN4core3str16slice_error_fail17hf7d2a92268a53d29E+0x78>
               	b	0x819a8 <_ZN4core3str16slice_error_fail17hf7d2a92268a53d29E+0xd4>
               	mov	w8, #256
               	b	0x8191c <_ZN4core3str16slice_error_fail17hf7d2a92268a53d29E+0x48>
               	ldrsb	w9, [x0, x8]
               	cmn	w9, #65
               	b.gt	0x81930 <_ZN4core3str16slice_error_fail17hf7d2a92268a53d29E+0x5c>
               	subs	x8, x8, #1
               	b.eq	0x81930 <_ZN4core3str16slice_error_fail17hf7d2a92268a53d29E+0x5c>
               	cmp	x8, x1
               	b.lo	0x81908 <_ZN4core3str16slice_error_fail17hf7d2a92268a53d29E+0x34>
               	cmp	x1, x8
               	b.ne	0x81914 <_ZN4core3str16slice_error_fail17hf7d2a92268a53d29E+0x40>
               	mov	x8, x1
               	stp	x0, x8, [sp, #16]
               	adrp	x8, 0x83000 <_ZN4core3str16slice_error_fail17hf7d2a92268a53d29E+0x68>
               	add	x9, x8, #2440
               	mov	w8, #5
               	cmp	x2, x1
               	stp	x9, x8, [sp, #32]
               	b.hi	0x819a8 <_ZN4core3str16slice_error_fail17hf7d2a92268a53d29E+0xd4>
               	cmp	x3, x1
               	b.hi	0x819a8 <_ZN4core3str16slice_error_fail17hf7d2a92268a53d29E+0xd4>
               	cmp	x2, x3
               	b.ls	0x81a08 <_ZN4core3str16slice_error_fail17hf7d2a92268a53d29E+0x134>
               	adrp	x9, 0x80000 <_ZN4core3str16slice_error_fail17hf7d2a92268a53d29E+0x84>
               	mov	x8, sp
               	add	x9, x9, #2500
               	adrp	x12, 0x80000 <_ZN4core3str16slice_error_fail17hf7d2a92268a53d29E+0x90>
               	adrp	x14, 0x83000 <_ZN4core3str16slice_error_fail17hf7d2a92268a53d29E+0xa0>
               	add	x10, sp, #8
               	add	x11, sp, #16
               	add	x12, x12, #3956
               	add	x13, sp, #32
               	add	x14, x14, #2496
               	stp	x8, x9, [sp, #128]
               	mov	w8, #4
               	stp	x10, x9, [sp, #144]
               	stp	xzr, xzr, [sp, #96]
               	stp	x11, x12, [sp, #160]
               	stp	x13, x12, [sp, #176]
               	add	x9, sp, #128
               	stp	x14, x8, [sp, #80]
               	b	0x819f4 <_ZN4core3str16slice_error_fail17hf7d2a92268a53d29E+0x120>
               	adrp	x9, 0x80000 <_ZN4core3str16slice_error_fail17hf7d2a92268a53d29E+0xd0>
               	cmp	x2, x1
               	add	x8, sp, #64
               	add	x9, x9, #2500
               	adrp	x11, 0x80000 <_ZN4core3str16slice_error_fail17hf7d2a92268a53d29E+0xe0>
               	adrp	x14, 0x83000 <_ZN4core3str16slice_error_fail17hf7d2a92268a53d29E+0xf0>
               	add	x10, sp, #16
               	add	x11, x11, #3956
               	add	x12, sp, #32
               	csel	x13, x2, x3, hi
               	add	x14, x14, #2448
               	stp	x8, x9, [sp, #128]
               	mov	w8, #3
               	add	x9, sp, #128
               	stp	xzr, xzr, [sp, #96]
               	stp	x10, x11, [sp, #144]
               	stp	x12, x11, [sp, #160]
               	stp	x14, x8, [sp, #80]
               	str	x13, [sp, #64]
               	stp	x9, x8, [sp, #112]
               	add	x0, sp, #80
               	mov	x1, x4
               	bl	0x80b38 <_ZN4core9panicking9panic_fmt17h548b34a47a4ac578E>
               	brk	#0x1
               	cbnz	x2, 0x81a38 <_ZN4core3str16slice_error_fail17hf7d2a92268a53d29E+0x164>
               	str	x3, [sp, #48]
               	cbnz	x3, 0x81a94 <_ZN4core3str16slice_error_fail17hf7d2a92268a53d29E+0x1c0>
               	mov	x3, xzr
               	cmp	x3, x1
               	b.ne	0x81a50 <_ZN4core3str16slice_error_fail17hf7d2a92268a53d29E+0x17c>
               	adrp	x0, 0x83000 <_ZN4core3str16slice_error_fail17hf7d2a92268a53d29E+0x154>
               	add	x0, x0, #2560
               	mov	w1, #43
               	mov	x2, x4
               	bl	0x80f40 <_ZN4core9panicking5panic17ha7217054e020f4cfE>
               	brk	#0x1
               	cmp	x2, x1
               	b.hs	0x81a70 <_ZN4core3str16slice_error_fail17hf7d2a92268a53d29E+0x19c>
               	ldrsb	w8, [x0, x2]
               	cmn	w8, #65
               	b.gt	0x81a0c <_ZN4core3str16slice_error_fail17hf7d2a92268a53d29E+0x138>
               	b	0x81a78 <_ZN4core3str16slice_error_fail17hf7d2a92268a53d29E+0x1a4>
               	add	x8, x0, x3
               	mov	x11, x8
               	ldrsb	w10, [x11], #1
               	and	w9, w10, #0xff
               	tbnz	w10, #31, 0x81aac <_ZN4core3str16slice_error_fail17hf7d2a92268a53d29E+0x1d8>
               	str	w9, [sp, #60]
               	mov	w8, #1
               	b	0x81b7c <_ZN4core3str16slice_error_fail17hf7d2a92268a53d29E+0x2a8>
               	cmp	x1, x2
               	b.eq	0x81a0c <_ZN4core3str16slice_error_fail17hf7d2a92268a53d29E+0x138>
               	mov	x3, x2
               	str	x2, [sp, #48]
               	b	0x81a94 <_ZN4core3str16slice_error_fail17hf7d2a92268a53d29E+0x1c0>
               	cmp	x1, x3
               	b.eq	0x81a20 <_ZN4core3str16slice_error_fail17hf7d2a92268a53d29E+0x14c>
               	subs	x3, x3, #1
               	b.eq	0x81a14 <_ZN4core3str16slice_error_fail17hf7d2a92268a53d29E+0x140>
               	cmp	x3, x1
               	b.hs	0x81a84 <_ZN4core3str16slice_error_fail17hf7d2a92268a53d29E+0x1b0>
               	ldrsb	w8, [x0, x3]
               	cmn	w8, #64
               	b.lt	0x81a8c <_ZN4core3str16slice_error_fail17hf7d2a92268a53d29E+0x1b8>
               	b	0x81a18 <_ZN4core3str16slice_error_fail17hf7d2a92268a53d29E+0x144>
               	add	x10, x0, x1
               	cmp	x11, x10
               	b.ne	0x81ad4 <_ZN4core3str16slice_error_fail17hf7d2a92268a53d29E+0x200>
               	mov	w8, wzr
               	mov	x12, x10
               	cmp	w9, #223
               	and	w11, w9, #0x1f
               	b.hi	0x81aec <_ZN4core3str16slice_error_fail17hf7d2a92268a53d29E+0x218>
               	bfi	w8, w11, #6, #5
               	b	0x81b4c <_ZN4core3str16slice_error_fail17hf7d2a92268a53d29E+0x278>
               	ldrb	w11, [x8, #1]
               	add	x12, x8, #2
               	and	w8, w11, #0x3f
               	cmp	w9, #223
               	and	w11, w9, #0x1f
               	b.ls	0x81acc <_ZN4core3str16slice_error_fail17hf7d2a92268a53d29E+0x1f8>
               	cmp	x12, x10
               	b.ne	0x81b00 <_ZN4core3str16slice_error_fail17hf7d2a92268a53d29E+0x22c>
               	mov	w13, wzr
               	mov	x12, x10
               	b	0x81b08 <_ZN4core3str16slice_error_fail17hf7d2a92268a53d29E+0x234>
               	ldrb	w13, [x12], #1
               	and	w13, w13, #0x3f
               	cmp	w9, #240
               	bfi	w13, w8, #6, #6
               	b.lo	0x81b24 <_ZN4core3str16slice_error_fail17hf7d2a92268a53d29E+0x250>
               	cmp	x12, x10
               	b.ne	0x81b30 <_ZN4core3str16slice_error_fail17hf7d2a92268a53d29E+0x25c>
               	mov	w8, wzr
               	b	0x81b38 <_ZN4core3str16slice_error_fail17hf7d2a92268a53d29E+0x264>
               	bfi	w13, w11, #12, #5
               	mov	w8, w13
               	b	0x81b4c <_ZN4core3str16slice_error_fail17hf7d2a92268a53d29E+0x278>
               	ldrb	w8, [x12]
               	and	w8, w8, #0x3f
               	ubfiz	w9, w11, #18, #3
               	bfi	w9, w13, #6, #12
               	orr	w8, w9, w8
               	cmp	w8, #272, lsl #12
               	b.eq	0x81a20 <_ZN4core3str16slice_error_fail17hf7d2a92268a53d29E+0x14c>
               	cmp	w8, #128
               	str	w8, [sp, #60]
               	b.hs	0x81b60 <_ZN4core3str16slice_error_fail17hf7d2a92268a53d29E+0x28c>
               	mov	w8, #1
               	b	0x81b7c <_ZN4core3str16slice_error_fail17hf7d2a92268a53d29E+0x2a8>
               	cmp	w8, #2048
               	b.hs	0x81b70 <_ZN4core3str16slice_error_fail17hf7d2a92268a53d29E+0x29c>
               	mov	w8, #2
               	b	0x81b7c <_ZN4core3str16slice_error_fail17hf7d2a92268a53d29E+0x2a8>
               	cmp	w8, #16, lsl #12
               	mov	w8, #3
               	cinc	x8, x8, hs
               	add	x8, x8, x3
               	adrp	x10, 0x80000 <_ZN4core3str16slice_error_fail17hf7d2a92268a53d29E+0x2a8>
               	add	x9, sp, #48
               	add	x10, x10, #2500
               	adrp	x12, 0x81000 <_ZN4core3str16slice_error_fail17hf7d2a92268a53d29E+0x2b8>
               	stp	x3, x8, [sp, #64]
               	adrp	x8, 0x80000 <_ZN4core3str16slice_error_fail17hf7d2a92268a53d29E+0x2bc>
               	add	x11, sp, #60
               	add	x12, x12, #3064
               	adrp	x14, 0x81000 <_ZN4core3str16slice_error_fail17hf7d2a92268a53d29E+0x2cc>
               	add	x15, sp, #16
               	add	x8, x8, #3956
               	stp	x9, x10, [sp, #128]
               	add	x9, sp, #32
               	adrp	x10, 0x83000 <_ZN4core3str16slice_error_fail17hf7d2a92268a53d29E+0x2e8>
               	add	x13, sp, #64
               	add	x14, x14, #3584
               	stp	x11, x12, [sp, #144]
               	add	x10, x10, #2608
               	mov	w11, #5
               	stp	x15, x8, [sp, #176]
               	stp	x9, x8, [sp, #192]
               	add	x8, sp, #128
               	stp	x13, x14, [sp, #160]
               	stp	xzr, xzr, [sp, #96]
               	stp	x10, x11, [sp, #80]
               	stp	x8, x11, [sp, #112]
               	add	x0, sp, #80
               	mov	x1, x4
               	bl	0x80b38 <_ZN4core9panicking9panic_fmt17h548b34a47a4ac578E>
               	brk	#0x1

<_ZN41_$LT$char$u20$as$u20$core..fmt..Debug$GT$3fmt17h1eea34d619488d03E>:
               	sub	sp, sp, #96
               	stp	x30, x27, [sp, #16]
               	stp	x26, x25, [sp, #32]
               	stp	x24, x23, [sp, #48]
               	stp	x22, x21, [sp, #64]
               	stp	x20, x19, [sp, #80]
               	ldp	x19, x8, [x1, #32]
               	mov	x20, x0
               	mov	w1, #39
               	ldr	x2, [x8, #32]
               	mov	x0, x19
               	str	x2, [sp, #8]
               	blr	x2
               	tbz	w0, #0, 0x81c50 <_ZN41_$LT$char$u20$as$u20$core..fmt..Debug$GT$3fmt17h1eea34d619488d03E+0x58>
               	ldp	x20, x19, [sp, #80]
               	ldp	x22, x21, [sp, #64]
               	ldp	x24, x23, [sp, #48]
               	ldp	x26, x25, [sp, #32]
               	ldp	x30, x27, [sp, #16]
               	mov	w0, #1
               	add	sp, sp, #96
               	ret
               	ldr	w20, [x20]
               	sub	w8, w20, #9
               	cmp	w8, #30
               	b.hi	0x81c8c <_ZN41_$LT$char$u20$as$u20$core..fmt..Debug$GT$3fmt17h1eea34d619488d03E+0x94>
               	adrp	x9, 0x83000 <_ZN41_$LT$char$u20$as$u20$core..fmt..Debug$GT$3fmt17h1eea34d619488d03E+0x70>
               	add	x9, x9, #1088
               	adr	x10, #24
               	ldrb	w11, [x9, x8]
               	add	x10, x10, x11, lsl #2
               	mov	w21, #116
               	mov	w24, #2
               	br	x10
               	mov	w21, #110
               	mov	w24, #2
               	b	0x81cf0 <_ZN41_$LT$char$u20$as$u20$core..fmt..Debug$GT$3fmt17h1eea34d619488d03E+0xf8>
               	cmp	w20, #92
               	b.ne	0x81ca0 <_ZN41_$LT$char$u20$as$u20$core..fmt..Debug$GT$3fmt17h1eea34d619488d03E+0xa8>
               	mov	w24, #2
               	mov	w21, w20
               	b	0x81cf0 <_ZN41_$LT$char$u20$as$u20$core..fmt..Debug$GT$3fmt17h1eea34d619488d03E+0xf8>
               	mov	w0, w20
               	bl	0x820d0 <_ZN4core7unicode12unicode_data15grapheme_extend6lookup17h0525d17e88c4ad5eE>
               	tbnz	w0, #0, 0x81cd0 <_ZN41_$LT$char$u20$as$u20$core..fmt..Debug$GT$3fmt17h1eea34d619488d03E+0xd8>
               	mov	w0, w20
               	bl	0x82208 <_ZN4core7unicode9printable12is_printable17h809bc46350007ff2E>
               	tbz	w0, #0, 0x81cd0 <_ZN41_$LT$char$u20$as$u20$core..fmt..Debug$GT$3fmt17h1eea34d619488d03E+0xd8>
               	mov	w24, #1
               	mov	w21, w20
               	b	0x81cf0 <_ZN41_$LT$char$u20$as$u20$core..fmt..Debug$GT$3fmt17h1eea34d619488d03E+0xf8>
               	mov	w21, #114
               	mov	w24, #2
               	b	0x81cf0 <_ZN41_$LT$char$u20$as$u20$core..fmt..Debug$GT$3fmt17h1eea34d619488d03E+0xf8>
               	orr	w8, w20, #0x1
               	clz	w8, w8
               	mov	w9, w20
               	mov	x10, #21474836480
               	lsr	w8, w8, #2
               	orr	x23, x9, x10
               	eor	w22, w8, #0x7
               	mov	w24, #3
               	adrp	x20, 0x83000 <_ZN41_$LT$char$u20$as$u20$core..fmt..Debug$GT$3fmt17h1eea34d619488d03E+0x100>
               	adrp	x25, 0x83000 <_ZN41_$LT$char$u20$as$u20$core..fmt..Debug$GT$3fmt17h1eea34d619488d03E+0x104>
               	add	x20, x20, #1119
               	add	x25, x25, #1123
               	mov	w26, #87
               	mov	w27, #48
               	b	0x81d24 <_ZN41_$LT$char$u20$as$u20$core..fmt..Debug$GT$3fmt17h1eea34d619488d03E+0x12c>
               	mov	w24, wzr
               	mov	w1, w21
               	ldr	x2, [sp, #8]
               	mov	x0, x19
               	blr	x2
               	tbnz	w0, #0, 0x81c30 <_ZN41_$LT$char$u20$as$u20$core..fmt..Debug$GT$3fmt17h1eea34d619488d03E+0x38>
               	mov	w8, w24
               	adr	x9, #-28
               	ldrb	w10, [x20, x8]
               	add	x9, x9, x10, lsl #2
               	mov	w24, #1
               	mov	w1, #92
               	br	x9
               	ubfx	x8, x23, #32, #8
               	adr	x9, #16
               	ldrb	w10, [x25, x8]
               	add	x9, x9, x10, lsl #2
               	br	x9
               	and	x23, x23, #0xffffff00ffffffff
               	mov	w24, #3
               	mov	w1, #125
               	b	0x81d14 <_ZN41_$LT$char$u20$as$u20$core..fmt..Debug$GT$3fmt17h1eea34d619488d03E+0x11c>
               	ubfiz	w8, w22, #2, #3
               	lsr	w8, w23, w8
               	and	w8, w8, #0xf
               	cmp	w8, #10
               	csel	w9, w27, w26, lo
               	add	w1, w9, w8
               	cbz	x22, 0x81dc8 <_ZN41_$LT$char$u20$as$u20$core..fmt..Debug$GT$3fmt17h1eea34d619488d03E+0x1d0>
               	sub	x22, x22, #1
               	mov	w24, #3
               	b	0x81d14 <_ZN41_$LT$char$u20$as$u20$core..fmt..Debug$GT$3fmt17h1eea34d619488d03E+0x11c>
               	and	x8, x23, #0xffffff00ffffffff
               	mov	w24, #3
               	orr	x23, x8, #0x200000000
               	mov	w1, #123
               	b	0x81d14 <_ZN41_$LT$char$u20$as$u20$core..fmt..Debug$GT$3fmt17h1eea34d619488d03E+0x11c>
               	and	x8, x23, #0xffffff00ffffffff
               	mov	w24, #3
               	orr	x23, x8, #0x300000000
               	mov	w1, #117
               	b	0x81d14 <_ZN41_$LT$char$u20$as$u20$core..fmt..Debug$GT$3fmt17h1eea34d619488d03E+0x11c>
               	and	x8, x23, #0xffffff00ffffffff
               	mov	w24, #3
               	orr	x23, x8, #0x400000000
               	mov	w1, #92
               	b	0x81d14 <_ZN41_$LT$char$u20$as$u20$core..fmt..Debug$GT$3fmt17h1eea34d619488d03E+0x11c>
               	and	x8, x23, #0xffffff00ffffffff
               	orr	x23, x8, #0x100000000
               	mov	w24, #3
               	b	0x81d14 <_ZN41_$LT$char$u20$as$u20$core..fmt..Debug$GT$3fmt17h1eea34d619488d03E+0x11c>
               	mov	x0, x19
               	ldr	x2, [sp, #8]
               	ldp	x20, x19, [sp, #80]
               	ldp	x22, x21, [sp, #64]
               	ldp	x24, x23, [sp, #48]
               	ldp	x26, x25, [sp, #32]
               	ldp	x30, x27, [sp, #16]
               	mov	w1, #39
               	add	sp, sp, #96
               	br	x2

<_ZN71_$LT$core..ops..range..Range$LT$Idx$GT$$u20$as$u20$core..fmt..Debug$GT$3fmt17h38324d94ece27e25E>:
               	sub	sp, sp, #80
               	str	x30, [sp, #48]
               	stp	x20, x19, [sp, #64]
               	mov	x20, x0
               	ldr	x0, [x0]
               	mov	x19, x1
               	bl	0x81e7c <_ZN4core3fmt3num52_$LT$impl$u20$core..fmt..Debug$u20$for$u20$usize$GT$3fmt17h420029119b997121E>
               	tbnz	w0, #0, 0x81e50 <_ZN71_$LT$core..ops..range..Range$LT$Idx$GT$$u20$as$u20$core..fmt..Debug$GT$3fmt17h38324d94ece27e25E+0x50>
               	ldp	x0, x1, [x19, #32]
               	adrp	x8, 0x83000 <_ZN71_$LT$core..ops..range..Range$LT$Idx$GT$$u20$as$u20$core..fmt..Debug$GT$3fmt17h38324d94ece27e25E+0x2c>
               	add	x8, x8, #2272
               	mov	w9, #1
               	stp	x8, x9, [sp]
               	adrp	x8, 0x83000 <_ZN71_$LT$core..ops..range..Range$LT$Idx$GT$$u20$as$u20$core..fmt..Debug$GT$3fmt17h38324d94ece27e25E+0x3c>
               	add	x8, x8, #1632
               	mov	x2, sp
               	stp	xzr, xzr, [sp, #16]
               	stp	x8, xzr, [sp, #32]
               	bl	0x813a4 <_ZN4core3fmt5write17h4089dd81629a8d2eE>
               	cbz	w0, 0x81e64 <_ZN71_$LT$core..ops..range..Range$LT$Idx$GT$$u20$as$u20$core..fmt..Debug$GT$3fmt17h38324d94ece27e25E+0x64>
               	ldp	x20, x19, [sp, #64]
               	ldr	x30, [sp, #48]
               	mov	w0, #1
               	add	sp, sp, #80
               	ret
               	ldr	x0, [x20, #8]
               	mov	x1, x19
               	ldp	x20, x19, [sp, #64]
               	ldr	x30, [sp, #48]
               	add	sp, sp, #80
               	b	0x81e7c <_ZN4core3fmt3num52_$LT$impl$u20$core..fmt..Debug$u20$for$u20$usize$GT$3fmt17h420029119b997121E>

<_ZN4core3fmt3num52_$LT$impl$u20$core..fmt..Debug$u20$for$u20$usize$GT$3fmt17h420029119b997121E>:
               	sub	sp, sp, #144
               	str	x30, [sp, #128]
               	ldr	w8, [x1, #48]
               	tbnz	w8, #4, 0x81f3c <_ZN4core3fmt3num52_$LT$impl$u20$core..fmt..Debug$u20$for$u20$usize$GT$3fmt17h420029119b997121E+0xc0>
               	tbnz	w8, #5, 0x81f78 <_ZN4core3fmt3num52_$LT$impl$u20$core..fmt..Debug$u20$for$u20$usize$GT$3fmt17h420029119b997121E+0xfc>
               	lsr	x8, x0, #4
               	cmp	x8, #625
               	b.lo	0x81ff0 <_ZN4core3fmt3num52_$LT$impl$u20$core..fmt..Debug$u20$for$u20$usize$GT$3fmt17h420029119b997121E+0x174>
               	mov	x9, #22859
               	movk	x9, #14470, lsl #16
               	movk	x9, #50646, lsl #32
               	mov	w11, #34079
               	adrp	x13, 0x83000 <_ZN4core3fmt3num52_$LT$impl$u20$core..fmt..Debug$u20$for$u20$usize$GT$3fmt17h420029119b997121E+0x38>
               	mov	w15, #57599
               	mov	x8, xzr
               	movk	x9, #13421, lsl #48
               	mov	w10, #-10000
               	movk	w11, #20971, lsl #16
               	mov	w12, #-100
               	add	x13, x13, #1778
               	mov	x14, sp
               	movk	w15, #1525, lsl #16
               	umulh	x17, x0, x9
               	mov	x16, x0
               	cmp	x0, x15
               	lsr	x0, x17, #11
               	madd	w16, w0, w10, w16
               	and	w17, w16, #0xffff
               	umull	x17, w17, w11
               	lsr	x17, x17, #37
               	madd	w16, w17, w12, w16
               	add	x17, x13, x17, lsl #1
               	add	x16, x13, w16, uxth #1
               	ldrb	w2, [x17]
               	ldrb	w17, [x17, #1]
               	ldrb	w3, [x16, #1]
               	ldrb	w16, [x16]
               	add	x18, x14, x8
               	sub	x8, x8, #4
               	strb	w17, [x18, #36]
               	strb	w2, [x18, #35]
               	strb	w3, [x18, #38]
               	strb	w16, [x18, #37]
               	b.hi	0x81ed4 <_ZN4core3fmt3num52_$LT$impl$u20$core..fmt..Debug$u20$for$u20$usize$GT$3fmt17h420029119b997121E+0x58>
               	add	x8, x8, #39
               	cmp	x0, #99
               	b.gt	0x81ffc <_ZN4core3fmt3num52_$LT$impl$u20$core..fmt..Debug$u20$for$u20$usize$GT$3fmt17h420029119b997121E+0x180>
               	b	0x82044 <_ZN4core3fmt3num52_$LT$impl$u20$core..fmt..Debug$u20$for$u20$usize$GT$3fmt17h420029119b997121E+0x1c8>
               	mov	x8, xzr
               	mov	x9, sp
               	and	w12, w0, #0xf
               	mov	w13, #48
               	lsr	x11, x0, #4
               	bfxil	w13, w0, #0, #4
               	add	w14, w12, #87
               	cmp	w12, #10
               	add	x10, x9, x8
               	csel	w12, w13, w14, lo
               	sub	x8, x8, #1
               	mov	x0, x11
               	strb	w12, [x10, #127]
               	cbnz	x11, 0x81f44 <_ZN4core3fmt3num52_$LT$impl$u20$core..fmt..Debug$u20$for$u20$usize$GT$3fmt17h420029119b997121E+0xc8>
               	b	0x81fb0 <_ZN4core3fmt3num52_$LT$impl$u20$core..fmt..Debug$u20$for$u20$usize$GT$3fmt17h420029119b997121E+0x134>
               	mov	x8, xzr
               	mov	x9, sp
               	and	w12, w0, #0xf
               	mov	w13, #48
               	lsr	x11, x0, #4
               	bfxil	w13, w0, #0, #4
               	add	w14, w12, #55
               	cmp	w12, #10
               	add	x10, x9, x8
               	csel	w12, w13, w14, lo
               	sub	x8, x8, #1
               	mov	x0, x11
               	strb	w12, [x10, #127]
               	cbnz	x11, 0x81f80 <_ZN4core3fmt3num52_$LT$impl$u20$core..fmt..Debug$u20$for$u20$usize$GT$3fmt17h420029119b997121E+0x104>
               	add	x0, x8, #128
               	cmp	x0, #129
               	b.hs	0x820bc <_ZN4core3fmt3num52_$LT$impl$u20$core..fmt..Debug$u20$for$u20$usize$GT$3fmt17h420029119b997121E+0x240>
               	mov	x9, sp
               	neg	x4, x8
               	add	x8, x9, x8
               	add	x3, x8, #128
               	adrp	x8, 0x83000 <_ZN4core3fmt3num52_$LT$impl$u20$core..fmt..Debug$u20$for$u20$usize$GT$3fmt17h420029119b997121E+0x158>
               	add	x8, x8, #2168
               	mov	w2, #2
               	mov	x0, x1
               	mov	x1, x8
               	bl	0x80b74 <_ZN4core3fmt9Formatter12pad_integral17h4be5fae25bf478d6E>
               	ldr	x30, [sp, #128]
               	add	sp, sp, #144
               	ret
               	mov	w8, #39
               	cmp	x0, #99
               	b.le	0x82044 <_ZN4core3fmt3num52_$LT$impl$u20$core..fmt..Debug$u20$for$u20$usize$GT$3fmt17h420029119b997121E+0x1c8>
               	mov	w10, #34079
               	and	w9, w0, #0xffff
               	movk	w10, #20971, lsl #16
               	umull	x9, w9, w10
               	mov	w11, #-100
               	adrp	x10, 0x83000 <_ZN4core3fmt3num52_$LT$impl$u20$core..fmt..Debug$u20$for$u20$usize$GT$3fmt17h420029119b997121E+0x198>
               	lsr	x9, x9, #37
               	add	x10, x10, #1778
               	madd	w11, w9, w11, w0
               	add	x10, x10, w11, uxth #1
               	ldrb	w11, [x10, #1]
               	ldrb	w10, [x10]
               	sub	x8, x8, #2
               	mov	x12, sp
               	add	x12, x12, x8
               	mov	x0, x9
               	strb	w11, [x12, #1]
               	strb	w10, [x12]
               	cmp	x0, #10
               	b.ge	0x82060 <_ZN4core3fmt3num52_$LT$impl$u20$core..fmt..Debug$u20$for$u20$usize$GT$3fmt17h420029119b997121E+0x1e4>
               	sub	x8, x8, #1
               	add	w9, w0, #48
               	mov	x10, sp
               	strb	w9, [x10, x8]
               	b	0x82088 <_ZN4core3fmt3num52_$LT$impl$u20$core..fmt..Debug$u20$for$u20$usize$GT$3fmt17h420029119b997121E+0x20c>
               	adrp	x9, 0x83000 <_ZN4core3fmt3num52_$LT$impl$u20$core..fmt..Debug$u20$for$u20$usize$GT$3fmt17h420029119b997121E+0x1e8>
               	add	x9, x9, #1778
               	add	x9, x9, x0, lsl #1
               	ldrb	w10, [x9, #1]
               	ldrb	w9, [x9]
               	sub	x8, x8, #2
               	mov	x11, sp
               	add	x11, x11, x8
               	strb	w10, [x11, #1]
               	strb	w9, [x11]
               	mov	x9, sp
               	mov	w10, #39
               	add	x3, x9, x8
               	sub	x4, x10, x8
               	adrp	x8, 0x83000 <_ZN4core3fmt3num52_$LT$impl$u20$core..fmt..Debug$u20$for$u20$usize$GT$3fmt17h420029119b997121E+0x220>
               	add	x8, x8, #1632
               	mov	x0, x1
               	mov	x1, x8
               	mov	x2, xzr
               	bl	0x80b74 <_ZN4core3fmt9Formatter12pad_integral17h4be5fae25bf478d6E>
               	ldr	x30, [sp, #128]
               	add	sp, sp, #144
               	ret
               	adrp	x2, 0x83000 <_ZN4core3fmt3num52_$LT$impl$u20$core..fmt..Debug$u20$for$u20$usize$GT$3fmt17h420029119b997121E+0x244>
               	add	x2, x2, #2144
               	mov	w1, #128
               	bl	0x80eb0 <_ZN4core5slice5index26slice_start_index_len_fail17ha5c8a54d8fb05d93E>
               	brk	#0x1

<_ZN4core7unicode12unicode_data15grapheme_extend6lookup17h0525d17e88c4ad5eE>:
               	adrp	x10, 0x84000 <_ZN4core7unicode12unicode_data15grapheme_extend6lookup17h0525d17e88c4ad5eE+0x8>
               	mov	x8, xzr
               	lsl	w9, w0, #11
               	mov	w12, #31
               	add	x10, x10, #116
               	mov	w11, #31
               	b	0x820f8 <_ZN4core7unicode12unicode_data15grapheme_extend6lookup17h0525d17e88c4ad5eE+0x28>
               	add	x8, x12, #1
               	subs	x12, x11, x8
               	b.ls	0x82118 <_ZN4core7unicode12unicode_data15grapheme_extend6lookup17h0525d17e88c4ad5eE+0x48>
               	add	x12, x8, x12, lsr #1
               	ldr	w13, [x10, x12, lsl #2]
               	lsl	w13, w13, #11
               	cmp	w13, w9
               	b.lo	0x820ec <_ZN4core7unicode12unicode_data15grapheme_extend6lookup17h0525d17e88c4ad5eE+0x1c>
               	mov	x11, x12
               	b.ne	0x820f0 <_ZN4core7unicode12unicode_data15grapheme_extend6lookup17h0525d17e88c4ad5eE+0x20>
               	add	x8, x12, #1
               	cmp	x8, #30
               	b.hi	0x821d8 <_ZN4core7unicode12unicode_data15grapheme_extend6lookup17h0525d17e88c4ad5eE+0x108>
               	cmp	x8, #30
               	b.ne	0x82148 <_ZN4core7unicode12unicode_data15grapheme_extend6lookup17h0525d17e88c4ad5eE+0x78>
               	mov	w11, #689
               	subs	x9, x8, #1
               	b.lo	0x8215c <_ZN4core7unicode12unicode_data15grapheme_extend6lookup17h0525d17e88c4ad5eE+0x8c>
               	cmp	x9, #31
               	b.hs	0x821f0 <_ZN4core7unicode12unicode_data15grapheme_extend6lookup17h0525d17e88c4ad5eE+0x120>
               	ldr	w9, [x10, x9, lsl #2]
               	and	w12, w9, #0x1fffff
               	b	0x82160 <_ZN4core7unicode12unicode_data15grapheme_extend6lookup17h0525d17e88c4ad5eE+0x90>
               	add	x9, x10, x8, lsl #2
               	ldr	w9, [x9, #4]
               	lsr	x11, x9, #21
               	subs	x9, x8, #1
               	b.hs	0x82134 <_ZN4core7unicode12unicode_data15grapheme_extend6lookup17h0525d17e88c4ad5eE+0x64>
               	mov	w12, wzr
               	ldr	w8, [x10, x8, lsl #2]
               	lsr	x8, x8, #21
               	add	x9, x8, #1
               	cmp	x11, x9
               	b.eq	0x821bc <_ZN4core7unicode12unicode_data15grapheme_extend6lookup17h0525d17e88c4ad5eE+0xec>
               	sub	w10, w0, w12
               	cmp	x8, #689
               	mov	w12, #689
               	csel	x0, x8, x12, hi
               	adrp	x12, 0x84000 <_ZN4core7unicode12unicode_data15grapheme_extend6lookup17h0525d17e88c4ad5eE+0xbc>
               	mov	w9, wzr
               	sub	x11, x11, #1
               	add	x12, x12, #288
               	cmp	x0, x8
               	b.eq	0x821c4 <_ZN4core7unicode12unicode_data15grapheme_extend6lookup17h0525d17e88c4ad5eE+0xf4>
               	ldrb	w13, [x12, x8]
               	add	w9, w9, w13
               	cmp	w9, w10
               	b.hi	0x821bc <_ZN4core7unicode12unicode_data15grapheme_extend6lookup17h0525d17e88c4ad5eE+0xec>
               	add	x8, x8, #1
               	cmp	x11, x8
               	b.ne	0x82194 <_ZN4core7unicode12unicode_data15grapheme_extend6lookup17h0525d17e88c4ad5eE+0xc4>
               	mov	x8, x11
               	and	w0, w8, #0x1
               	ret
               	adrp	x2, 0x84000 <_ZN4core7unicode12unicode_data15grapheme_extend6lookup17h0525d17e88c4ad5eE+0xfc>
               	add	x2, x2, #984
               	mov	w1, #689
               	bl	0x8097c <_ZN4core9panicking18panic_bounds_check17h21e59d1a29014f09E>
               	brk	#0x1
               	adrp	x2, 0x84000 <_ZN4core7unicode12unicode_data15grapheme_extend6lookup17h0525d17e88c4ad5eE+0x110>
               	add	x2, x2, #240
               	mov	w1, #31
               	mov	x0, x8
               	bl	0x8097c <_ZN4core9panicking18panic_bounds_check17h21e59d1a29014f09E>
               	brk	#0x1
               	adrp	x2, 0x84000 <_ZN4core7unicode12unicode_data15grapheme_extend6lookup17h0525d17e88c4ad5eE+0x128>
               	add	x2, x2, #264
               	mov	w1, #31
               	mov	x0, x9
               	bl	0x8097c <_ZN4core9panicking18panic_bounds_check17h21e59d1a29014f09E>
               	brk	#0x1

<_ZN4core7unicode9printable12is_printable17h809bc46350007ff2E>:
               	cmp	w0, #16, lsl #12
               	b.hs	0x822a0 <_ZN4core7unicode9printable12is_printable17h809bc46350007ff2E+0x98>
               	adrp	x12, 0x83000 <_ZN4core7unicode9printable12is_printable17h809bc46350007ff2E+0xc>
               	adrp	x11, 0x83000 <_ZN4core7unicode9printable12is_printable17h809bc46350007ff2E+0x10>
               	adrp	x13, 0x83000 <_ZN4core7unicode9printable12is_printable17h809bc46350007ff2E+0x14>
               	mov	x9, xzr
               	add	x12, x12, #2767
               	lsr	w10, w0, #8
               	add	x11, x11, #2880
               	add	x13, x13, #2849
               	ldrb	w8, [x12]
               	ldrb	w14, [x12, #1]
               	add	x12, x12, #2
               	cmp	w8, w10, uxtb
               	add	x8, x9, x14
               	b.ne	0x82274 <_ZN4core7unicode9printable12is_printable17h809bc46350007ff2E+0x6c>
               	cmp	x8, x9
               	b.lo	0x82480 <_ZN4core7unicode9printable12is_printable17h809bc46350007ff2E+0x278>
               	cmp	x8, #290
               	b.hi	0x82498 <_ZN4core7unicode9printable12is_printable17h809bc46350007ff2E+0x290>
               	add	x9, x11, x9
               	cbz	x14, 0x82278 <_ZN4core7unicode9printable12is_printable17h809bc46350007ff2E+0x70>
               	ldrb	w15, [x9], #1
               	sub	x14, x14, #1
               	cmp	w15, w0, uxtb
               	b.ne	0x8225c <_ZN4core7unicode9printable12is_printable17h809bc46350007ff2E+0x54>
               	b	0x82338 <_ZN4core7unicode9printable12is_printable17h809bc46350007ff2E+0x130>
               	b.hi	0x82284 <_ZN4core7unicode9printable12is_printable17h809bc46350007ff2E+0x7c>
               	cmp	x12, x13
               	mov	x9, x8
               	b.ne	0x82230 <_ZN4core7unicode9printable12is_printable17h809bc46350007ff2E+0x28>
               	adrp	x11, 0x83000 <_ZN4core7unicode9printable12is_printable17h809bc46350007ff2E+0x80>
               	adrp	x10, 0x83000 <_ZN4core7unicode9printable12is_printable17h809bc46350007ff2E+0x84>
               	and	w9, w0, #0xffff
               	add	x11, x11, #3170
               	mov	w8, #1
               	add	x10, x10, #3479
               	b	0x82358 <_ZN4core7unicode9printable12is_printable17h809bc46350007ff2E+0x150>
               	cmp	w0, #32, lsl #12
               	b.hs	0x8238c <_ZN4core7unicode9printable12is_printable17h809bc46350007ff2E+0x184>
               	adrp	x12, 0x83000 <_ZN4core7unicode9printable12is_printable17h809bc46350007ff2E+0xa4>
               	adrp	x11, 0x83000 <_ZN4core7unicode9printable12is_printable17h809bc46350007ff2E+0xa8>
               	adrp	x13, 0x83000 <_ZN4core7unicode9printable12is_printable17h809bc46350007ff2E+0xac>
               	mov	x9, xzr
               	add	x12, x12, #3504
               	lsr	w10, w0, #8
               	add	x11, x11, #3580
               	add	x13, x13, #3580
               	ldrb	w8, [x12]
               	ldrb	w14, [x12, #1]
               	add	x12, x12, #2
               	cmp	w8, w10, uxtb
               	add	x8, x9, x14
               	b.ne	0x8230c <_ZN4core7unicode9printable12is_printable17h809bc46350007ff2E+0x104>
               	cmp	x8, x9
               	b.lo	0x82480 <_ZN4core7unicode9printable12is_printable17h809bc46350007ff2E+0x278>
               	cmp	x8, #175
               	b.hi	0x824a8 <_ZN4core7unicode9printable12is_printable17h809bc46350007ff2E+0x2a0>
               	add	x9, x11, x9
               	cbz	x14, 0x82310 <_ZN4core7unicode9printable12is_printable17h809bc46350007ff2E+0x108>
               	ldrb	w15, [x9], #1
               	sub	x14, x14, #1
               	cmp	w15, w0, uxtb
               	b.ne	0x822f4 <_ZN4core7unicode9printable12is_printable17h809bc46350007ff2E+0xec>
               	b	0x82338 <_ZN4core7unicode9printable12is_printable17h809bc46350007ff2E+0x130>
               	b.hi	0x8231c <_ZN4core7unicode9printable12is_printable17h809bc46350007ff2E+0x114>
               	cmp	x12, x13
               	mov	x9, x8
               	b.ne	0x822c8 <_ZN4core7unicode9printable12is_printable17h809bc46350007ff2E+0xc0>
               	adrp	x11, 0x83000 <_ZN4core7unicode9printable12is_printable17h809bc46350007ff2E+0x118>
               	adrp	x10, 0x84000 <_ZN4core7unicode9printable12is_printable17h809bc46350007ff2E+0x120>
               	and	w9, w0, #0xffff
               	add	x11, x11, #3755
               	mov	w8, #1
               	add	x10, x10, #78
               	b	0x82448 <_ZN4core7unicode9printable12is_printable17h809bc46350007ff2E+0x240>
               	and	w0, wzr, #0x1
               	ret
               	mov	x11, x13
               	subs	w9, w9, w12
               	b.mi	0x82478 <_ZN4core7unicode9printable12is_printable17h809bc46350007ff2E+0x270>
               	cmp	x11, x10
               	eor	w8, w8, #0x1
               	b.eq	0x82478 <_ZN4core7unicode9printable12is_printable17h809bc46350007ff2E+0x270>
               	mov	x13, x11
               	ldrsb	w14, [x13], #1
               	and	w12, w14, #0xff
               	tbz	w14, #31, 0x82340 <_ZN4core7unicode9printable12is_printable17h809bc46350007ff2E+0x138>
               	cmp	x13, x10
               	b.eq	0x824c0 <_ZN4core7unicode9printable12is_printable17h809bc46350007ff2E+0x2b8>
               	and	w13, w12, #0x7f
               	ldrb	w12, [x11, #1]
               	add	x11, x11, #2
               	bfi	w12, w13, #8, #7
               	subs	w9, w9, w12
               	b.pl	0x8234c <_ZN4core7unicode9printable12is_printable17h809bc46350007ff2E+0x144>
               	b	0x82478 <_ZN4core7unicode9printable12is_printable17h809bc46350007ff2E+0x270>
               	mov	w8, #60597
               	movk	w8, #65532, lsl #16
               	mov	w9, #60853
               	add	w8, w0, w8
               	movk	w9, #10, lsl #16
               	cmp	w8, w9
               	mov	w8, wzr
               	b.lo	0x82478 <_ZN4core7unicode9printable12is_printable17h809bc46350007ff2E+0x270>
               	mov	w9, #1506
               	movk	w9, #65533, lsl #16
               	add	w9, w0, w9
               	cmp	w9, #1506
               	b.lo	0x82478 <_ZN4core7unicode9printable12is_printable17h809bc46350007ff2E+0x270>
               	add	w9, w9, #3645
               	cmp	w9, #3103
               	b.lo	0x82478 <_ZN4core7unicode9printable12is_printable17h809bc46350007ff2E+0x270>
               	mov	w9, #12638
               	movk	w9, #65533, lsl #16
               	add	w9, w0, w9
               	cmp	w9, #14
               	b.lo	0x82478 <_ZN4core7unicode9printable12is_printable17h809bc46350007ff2E+0x270>
               	mov	w10, #47134
               	and	w9, w0, #0x1ffffe
               	movk	w10, #2, lsl #16
               	cmp	w9, w10
               	b.eq	0x82478 <_ZN4core7unicode9printable12is_printable17h809bc46350007ff2E+0x270>
               	mov	w9, #22818
               	movk	w9, #65533, lsl #16
               	add	w9, w0, w9
               	cmp	w9, #34
               	b.lo	0x82478 <_ZN4core7unicode9printable12is_printable17h809bc46350007ff2E+0x270>
               	mov	w9, #18635
               	movk	w9, #65533, lsl #16
               	add	w9, w0, w9
               	cmp	w9, #11
               	b.lo	0x82478 <_ZN4core7unicode9printable12is_printable17h809bc46350007ff2E+0x270>
               	mov	w8, #496
               	movk	w8, #14, lsl #16
               	cmp	w0, w8
               	cset	w0, lo
               	ret
               	mov	x11, x13
               	subs	w9, w9, w12
               	b.mi	0x82478 <_ZN4core7unicode9printable12is_printable17h809bc46350007ff2E+0x270>
               	cmp	x11, x10
               	eor	w8, w8, #0x1
               	b.eq	0x82478 <_ZN4core7unicode9printable12is_printable17h809bc46350007ff2E+0x270>
               	mov	x13, x11
               	ldrsb	w14, [x13], #1
               	and	w12, w14, #0xff
               	tbz	w14, #31, 0x82430 <_ZN4core7unicode9printable12is_printable17h809bc46350007ff2E+0x228>
               	cmp	x13, x10
               	b.eq	0x824c0 <_ZN4core7unicode9printable12is_printable17h809bc46350007ff2E+0x2b8>
               	and	w13, w12, #0x7f
               	ldrb	w12, [x11, #1]
               	add	x11, x11, #2
               	bfi	w12, w13, #8, #7
               	subs	w9, w9, w12
               	b.pl	0x8243c <_ZN4core7unicode9printable12is_printable17h809bc46350007ff2E+0x234>
               	and	w0, w8, #0x1
               	ret
               	adrp	x2, 0x83000 <_ZN4core7unicode9printable12is_printable17h809bc46350007ff2E+0x27c>
               	add	x2, x2, #2856
               	mov	x0, x9
               	mov	x1, x8
               	bl	0x815a0 <_ZN4core5slice5index22slice_index_order_fail17he71d7140076fff6eE>
               	brk	#0x1
               	adrp	x2, 0x83000 <_ZN4core7unicode9printable12is_printable17h809bc46350007ff2E+0x294>
               	add	x2, x2, #2856
               	mov	w1, #290
               	b	0x824b4 <_ZN4core7unicode9printable12is_printable17h809bc46350007ff2E+0x2ac>
               	adrp	x2, 0x83000 <_ZN4core7unicode9printable12is_printable17h809bc46350007ff2E+0x2a4>
               	add	x2, x2, #2856
               	mov	w1, #175
               	mov	x0, x8
               	bl	0x80ef8 <_ZN4core5slice5index24slice_end_index_len_fail17h827cf37c6cc32b14E>
               	brk	#0x1
               	adrp	x0, 0x83000 <_ZN4core7unicode9printable12is_printable17h809bc46350007ff2E+0x2bc>
               	adrp	x2, 0x83000 <_ZN4core7unicode9printable12is_printable17h809bc46350007ff2E+0x2c0>
               	add	x0, x0, #2560
               	add	x2, x2, #3480
               	mov	w1, #43
               	bl	0x80f40 <_ZN4core9panicking5panic17ha7217054e020f4cfE>
               	brk	#0x1

<_ZN4core3fmt8builders11DebugStruct5field17hdc89cd457900d764E>:
               	sub	sp, sp, #160
               	stp	x30, x25, [sp, #96]
               	stp	x24, x23, [sp, #112]
               	stp	x22, x21, [sp, #128]
               	stp	x20, x19, [sp, #144]
               	ldrb	w8, [x0, #8]
               	mov	x19, x0
               	mov	w25, #1
               	mov	w0, #1
               	cbnz	w8, 0x8264c <_ZN4core3fmt8builders11DebugStruct5field17hdc89cd457900d764E+0x170>
               	ldr	x22, [x19]
               	ldrb	w9, [x19, #9]
               	mov	x21, x4
               	mov	x20, x3
               	ldr	w8, [x22, #48]
               	mov	x23, x2
               	mov	x24, x1
               	tbnz	w8, #2, 0x8259c <_ZN4core3fmt8builders11DebugStruct5field17hdc89cd457900d764E+0xc0>
               	ldp	x0, x8, [x22, #32]
               	adrp	x10, 0x84000 <_ZN4core3fmt8builders11DebugStruct5field17hdc89cd457900d764E+0x54>
               	adrp	x11, 0x84000 <_ZN4core3fmt8builders11DebugStruct5field17hdc89cd457900d764E+0x58>
               	add	x10, x10, #1087
               	ldr	x8, [x8, #24]
               	add	x11, x11, #1084
               	cmp	w9, #0
               	mov	w9, #2
               	csel	x1, x11, x10, eq
               	cinc	x2, x9, eq
               	blr	x8
               	tbnz	w0, #0, 0x82648 <_ZN4core3fmt8builders11DebugStruct5field17hdc89cd457900d764E+0x16c>
               	ldp	x0, x8, [x22, #32]
               	mov	x1, x24
               	mov	x2, x23
               	ldr	x8, [x8, #24]
               	blr	x8
               	tbnz	w0, #0, 0x82648 <_ZN4core3fmt8builders11DebugStruct5field17hdc89cd457900d764E+0x16c>
               	ldp	x0, x8, [x22, #32]
               	adrp	x1, 0x83000 <_ZN4core3fmt8builders11DebugStruct5field17hdc89cd457900d764E+0x98>
               	add	x1, x1, #2336
               	mov	w2, #2
               	ldr	x8, [x8, #24]
               	blr	x8
               	tbnz	w0, #0, 0x82648 <_ZN4core3fmt8builders11DebugStruct5field17hdc89cd457900d764E+0x16c>
               	ldr	x8, [x21, #24]
               	mov	x0, x20
               	mov	x1, x22
               	blr	x8
               	b	0x8264c <_ZN4core3fmt8builders11DebugStruct5field17hdc89cd457900d764E+0x170>
               	cbnz	w9, 0x825c0 <_ZN4core3fmt8builders11DebugStruct5field17hdc89cd457900d764E+0xe4>
               	ldp	x0, x8, [x22, #32]
               	adrp	x1, 0x84000 <_ZN4core3fmt8builders11DebugStruct5field17hdc89cd457900d764E+0xd0>
               	add	x1, x1, #1089
               	mov	w2, #3
               	ldr	x8, [x8, #24]
               	blr	x8
               	tbnz	w0, #0, 0x82648 <_ZN4core3fmt8builders11DebugStruct5field17hdc89cd457900d764E+0x16c>
               	ldr	w8, [x22, #48]
               	mov	w9, #1
               	strb	w9, [sp, #28]
               	ldp	x9, x11, [x22, #32]
               	add	x10, sp, #28
               	mov	x12, sp
               	mov	x0, sp
               	stp	x11, x10, [sp, #8]
               	str	x9, [sp]
               	ldr	w9, [x22, #52]
               	ldrb	w10, [x22, #56]
               	ldp	x11, x13, [x22]
               	ldp	x14, x15, [x22, #16]
               	stp	w8, w9, [sp, #80]
               	adrp	x8, 0x84000 <_ZN4core3fmt8builders11DebugStruct5field17hdc89cd457900d764E+0x120>
               	add	x8, x8, #1096
               	mov	x1, x24
               	mov	x2, x23
               	strb	w10, [sp, #88]
               	stp	x11, x13, [sp, #32]
               	stp	x14, x15, [sp, #48]
               	stp	x12, x8, [sp, #64]
               	bl	0x81644 <_ZN68_$LT$core..fmt..builders..PadAdapter$u20$as$u20$core..fmt..Write$GT$9write_str17h006d11991b68be72E>
               	tbnz	w0, #0, 0x82648 <_ZN4core3fmt8builders11DebugStruct5field17hdc89cd457900d764E+0x16c>
               	adrp	x1, 0x83000 <_ZN4core3fmt8builders11DebugStruct5field17hdc89cd457900d764E+0x144>
               	add	x1, x1, #2336
               	mov	x0, sp
               	mov	w2, #2
               	bl	0x81644 <_ZN68_$LT$core..fmt..builders..PadAdapter$u20$as$u20$core..fmt..Write$GT$9write_str17h006d11991b68be72E>
               	cbnz	w0, 0x82648 <_ZN4core3fmt8builders11DebugStruct5field17hdc89cd457900d764E+0x16c>
               	ldr	x8, [x21, #24]
               	add	x1, sp, #32
               	mov	x0, x20
               	blr	x8
               	tbz	w0, #0, 0x82670 <_ZN4core3fmt8builders11DebugStruct5field17hdc89cd457900d764E+0x194>
               	mov	w0, #1
               	strb	w0, [x19, #8]
               	strb	w25, [x19, #9]
               	mov	x0, x19
               	ldp	x20, x19, [sp, #144]
               	ldp	x22, x21, [sp, #128]
               	ldp	x24, x23, [sp, #112]
               	ldp	x30, x25, [sp, #96]
               	add	sp, sp, #160
               	ret
               	ldp	x0, x8, [sp, #64]
               	adrp	x1, 0x84000 <_ZN4core3fmt8builders11DebugStruct5field17hdc89cd457900d764E+0x1a0>
               	add	x1, x1, #1144
               	mov	w2, #2
               	ldr	x8, [x8, #24]
               	blr	x8
               	b	0x8264c <_ZN4core3fmt8builders11DebugStruct5field17hdc89cd457900d764E+0x170>

<_ZN4core3fmt5Write10write_char17h9e2cca690dfc629fE>:
               	str	x30, [sp, #-16]!
               	cmp	w1, #128
               	str	wzr, [sp, #12]
               	b.hs	0x826b4 <_ZN4core3fmt5Write10write_char17h9e2cca690dfc629fE+0x28>
               	strb	w1, [sp, #12]
               	mov	w2, #1
               	add	x1, sp, #12
               	bl	0x81644 <_ZN68_$LT$core..fmt..builders..PadAdapter$u20$as$u20$core..fmt..Write$GT$9write_str17h006d11991b68be72E>
               	ldr	x30, [sp], #16
               	ret
               	cmp	w1, #2048
               	b.hs	0x826e8 <_ZN4core3fmt5Write10write_char17h9e2cca690dfc629fE+0x5c>
               	lsr	w8, w1, #6
               	mov	w9, #128
               	orr	w8, w8, #0xc0
               	bfxil	w9, w1, #0, #6
               	strb	w8, [sp, #12]
               	strb	w9, [sp, #13]
               	mov	w2, #2
               	add	x1, sp, #12
               	bl	0x81644 <_ZN68_$LT$core..fmt..builders..PadAdapter$u20$as$u20$core..fmt..Write$GT$9write_str17h006d11991b68be72E>
               	ldr	x30, [sp], #16
               	ret
               	cmp	w1, #16, lsl #12
               	b.hs	0x82728 <_ZN4core3fmt5Write10write_char17h9e2cca690dfc629fE+0x9c>
               	lsr	w8, w1, #12
               	mov	w9, #128
               	mov	w10, #128
               	orr	w8, w8, #0xe0
               	bfxil	w10, w1, #6, #6
               	bfxil	w9, w1, #0, #6
               	strb	w8, [sp, #12]
               	strb	w10, [sp, #13]
               	strb	w9, [sp, #14]
               	mov	w2, #3
               	add	x1, sp, #12
               	bl	0x81644 <_ZN68_$LT$core..fmt..builders..PadAdapter$u20$as$u20$core..fmt..Write$GT$9write_str17h006d11991b68be72E>
               	ldr	x30, [sp], #16
               	ret
               	lsr	w8, w1, #18
               	mov	w9, #128
               	mov	w10, #128
               	mov	w11, #128
               	orr	w8, w8, #0xf0
               	bfxil	w10, w1, #12, #6
               	bfxil	w11, w1, #6, #6
               	bfxil	w9, w1, #0, #6
               	mov	w2, #4
               	strb	w8, [sp, #12]
               	strb	w10, [sp, #13]
               	strb	w11, [sp, #14]
               	strb	w9, [sp, #15]
               	add	x1, sp, #12
               	bl	0x81644 <_ZN68_$LT$core..fmt..builders..PadAdapter$u20$as$u20$core..fmt..Write$GT$9write_str17h006d11991b68be72E>
               	ldr	x30, [sp], #16
               	ret

<_ZN4core3fmt5Write9write_fmt17h031e20469903bdb9E>:
               	sub	sp, sp, #64
               	stp	x30, x0, [sp, #48]
               	mov	x0, sp
               	mov	w2, #48
               	bl	0x833d0 <memcpy>
               	adrp	x1, 0x84000 <_ZN4core3fmt5Write9write_fmt17h031e20469903bdb9E+0x1c>
               	add	x1, x1, #1152
               	add	x0, sp, #56
               	mov	x2, sp
               	bl	0x813a4 <_ZN4core3fmt5write17h4089dd81629a8d2eE>
               	ldr	x30, [sp, #48]
               	add	sp, sp, #64
               	ret

<_ZN50_$LT$$RF$mut$u20$W$u20$as$u20$core..fmt..Write$GT$9write_str17h06cee42cc043f099E>:
               	ldr	x0, [x0]
               	b	0x81644 <_ZN68_$LT$core..fmt..builders..PadAdapter$u20$as$u20$core..fmt..Write$GT$9write_str17h006d11991b68be72E>

<_ZN50_$LT$$RF$mut$u20$W$u20$as$u20$core..fmt..Write$GT$10write_char17h84d77c247f809bd9E>:
               	str	x30, [sp, #-16]!
               	ldr	x0, [x0]
               	cmp	w1, #128
               	str	wzr, [sp, #12]
               	b.hs	0x827d4 <_ZN50_$LT$$RF$mut$u20$W$u20$as$u20$core..fmt..Write$GT$10write_char17h84d77c247f809bd9E+0x2c>
               	strb	w1, [sp, #12]
               	mov	w2, #1
               	add	x1, sp, #12
               	bl	0x81644 <_ZN68_$LT$core..fmt..builders..PadAdapter$u20$as$u20$core..fmt..Write$GT$9write_str17h006d11991b68be72E>
               	ldr	x30, [sp], #16
               	ret
               	cmp	w1, #2048
               	b.hs	0x82808 <_ZN50_$LT$$RF$mut$u20$W$u20$as$u20$core..fmt..Write$GT$10write_char17h84d77c247f809bd9E+0x60>
               	lsr	w8, w1, #6
               	mov	w9, #128
               	orr	w8, w8, #0xc0
               	bfxil	w9, w1, #0, #6
               	strb	w8, [sp, #12]
               	strb	w9, [sp, #13]
               	mov	w2, #2
               	add	x1, sp, #12
               	bl	0x81644 <_ZN68_$LT$core..fmt..builders..PadAdapter$u20$as$u20$core..fmt..Write$GT$9write_str17h006d11991b68be72E>
               	ldr	x30, [sp], #16
               	ret
               	cmp	w1, #16, lsl #12
               	b.hs	0x82848 <_ZN50_$LT$$RF$mut$u20$W$u20$as$u20$core..fmt..Write$GT$10write_char17h84d77c247f809bd9E+0xa0>
               	lsr	w8, w1, #12
               	mov	w9, #128
               	mov	w10, #128
               	orr	w8, w8, #0xe0
               	bfxil	w10, w1, #6, #6
               	bfxil	w9, w1, #0, #6
               	strb	w8, [sp, #12]
               	strb	w10, [sp, #13]
               	strb	w9, [sp, #14]
               	mov	w2, #3
               	add	x1, sp, #12
               	bl	0x81644 <_ZN68_$LT$core..fmt..builders..PadAdapter$u20$as$u20$core..fmt..Write$GT$9write_str17h006d11991b68be72E>
               	ldr	x30, [sp], #16
               	ret
               	lsr	w8, w1, #18
               	mov	w9, #128
               	mov	w10, #128
               	mov	w11, #128
               	orr	w8, w8, #0xf0
               	bfxil	w10, w1, #12, #6
               	bfxil	w11, w1, #6, #6
               	bfxil	w9, w1, #0, #6
               	mov	w2, #4
               	strb	w8, [sp, #12]
               	strb	w10, [sp, #13]
               	strb	w11, [sp, #14]
               	strb	w9, [sp, #15]
               	add	x1, sp, #12
               	bl	0x81644 <_ZN68_$LT$core..fmt..builders..PadAdapter$u20$as$u20$core..fmt..Write$GT$9write_str17h006d11991b68be72E>
               	ldr	x30, [sp], #16
               	ret

<_ZN50_$LT$$RF$mut$u20$W$u20$as$u20$core..fmt..Write$GT$9write_fmt17h17dad8312d16cedaE>:
               	sub	sp, sp, #64
               	ldr	x8, [x0]
               	mov	x0, sp
               	mov	w2, #48
               	stp	x30, x8, [sp, #48]
               	bl	0x833d0 <memcpy>
               	adrp	x1, 0x84000 <_ZN50_$LT$$RF$mut$u20$W$u20$as$u20$core..fmt..Write$GT$9write_fmt17h17dad8312d16cedaE+0x20>
               	add	x1, x1, #1152
               	add	x0, sp, #56
               	mov	x2, sp
               	bl	0x813a4 <_ZN4core3fmt5write17h4089dd81629a8d2eE>
               	ldr	x30, [sp, #48]
               	add	sp, sp, #64
               	ret

<_ZN42_$LT$$RF$T$u20$as$u20$core..fmt..Debug$GT$3fmt17h0ce5f74af94e46edE>:
               	sub	sp, sp, #144
               	str	x30, [sp, #128]
               	ldr	w8, [x1, #48]
               	ldr	x9, [x0]
               	tbnz	w8, #4, 0x8298c <_ZN42_$LT$$RF$T$u20$as$u20$core..fmt..Debug$GT$3fmt17h0ce5f74af94e46edE+0xc8>
               	tbnz	w8, #5, 0x829cc <_ZN42_$LT$$RF$T$u20$as$u20$core..fmt..Debug$GT$3fmt17h0ce5f74af94e46edE+0x108>
               	ldr	w8, [x9]
               	ubfx	x9, x8, #4, #28
               	cmp	w9, #625
               	b.lo	0x82a48 <_ZN42_$LT$$RF$T$u20$as$u20$core..fmt..Debug$GT$3fmt17h0ce5f74af94e46edE+0x184>
               	mov	x10, #22859
               	movk	x10, #14470, lsl #16
               	movk	x10, #50646, lsl #32
               	mov	w12, #34079
               	adrp	x14, 0x83000 <_ZN42_$LT$$RF$T$u20$as$u20$core..fmt..Debug$GT$3fmt17h0ce5f74af94e46edE+0x3c>
               	mov	w16, #57599
               	mov	x9, xzr
               	movk	x10, #13421, lsl #48
               	mov	w11, #-10000
               	movk	w12, #20971, lsl #16
               	mov	w13, #-100
               	add	x14, x14, #1778
               	mov	x15, sp
               	movk	w16, #1525, lsl #16
               	mov	x17, x8
               	umulh	x8, x8, x10
               	lsr	x8, x8, #11
               	cmp	x17, x16
               	madd	w17, w8, w11, w17
               	and	w0, w17, #0xffff
               	umull	x0, w0, w12
               	lsr	x0, x0, #37
               	madd	w17, w0, w13, w17
               	add	x0, x14, x0, lsl #1
               	add	x17, x14, w17, uxth #1
               	ldrb	w2, [x0]
               	ldrb	w0, [x0, #1]
               	ldrb	w3, [x17, #1]
               	ldrb	w17, [x17]
               	add	x18, x15, x9
               	sub	x9, x9, #4
               	strb	w0, [x18, #36]
               	strb	w2, [x18, #35]
               	strb	w3, [x18, #38]
               	strb	w17, [x18, #37]
               	b.hi	0x82924 <_ZN42_$LT$$RF$T$u20$as$u20$core..fmt..Debug$GT$3fmt17h0ce5f74af94e46edE+0x60>
               	add	x9, x9, #39
               	cmp	x8, #99
               	b.hi	0x82a54 <_ZN42_$LT$$RF$T$u20$as$u20$core..fmt..Debug$GT$3fmt17h0ce5f74af94e46edE+0x190>
               	b	0x82a9c <_ZN42_$LT$$RF$T$u20$as$u20$core..fmt..Debug$GT$3fmt17h0ce5f74af94e46edE+0x1d8>
               	ldr	w10, [x9]
               	mov	x8, xzr
               	mov	x9, sp
               	and	w13, w10, #0xf
               	mov	w14, #48
               	lsr	w12, w10, #4
               	bfxil	w14, w10, #0, #4
               	add	w10, w13, #87
               	cmp	w13, #10
               	add	x11, x9, x8
               	csel	w10, w14, w10, lo
               	strb	w10, [x11, #127]
               	sub	x8, x8, #1
               	mov	w10, w12
               	cbnz	w12, 0x82998 <_ZN42_$LT$$RF$T$u20$as$u20$core..fmt..Debug$GT$3fmt17h0ce5f74af94e46edE+0xd4>
               	b	0x82a08 <_ZN42_$LT$$RF$T$u20$as$u20$core..fmt..Debug$GT$3fmt17h0ce5f74af94e46edE+0x144>
               	ldr	w10, [x9]
               	mov	x8, xzr
               	mov	x9, sp
               	and	w13, w10, #0xf
               	mov	w14, #48
               	lsr	w12, w10, #4
               	bfxil	w14, w10, #0, #4
               	add	w10, w13, #55
               	cmp	w13, #10
               	add	x11, x9, x8
               	csel	w10, w14, w10, lo
               	strb	w10, [x11, #127]
               	sub	x8, x8, #1
               	mov	w10, w12
               	cbnz	w12, 0x829d8 <_ZN42_$LT$$RF$T$u20$as$u20$core..fmt..Debug$GT$3fmt17h0ce5f74af94e46edE+0x114>
               	add	x0, x8, #128
               	cmp	x0, #129
               	b.hs	0x82b14 <_ZN42_$LT$$RF$T$u20$as$u20$core..fmt..Debug$GT$3fmt17h0ce5f74af94e46edE+0x250>
               	mov	x9, sp
               	neg	x4, x8
               	add	x8, x9, x8
               	add	x3, x8, #128
               	adrp	x8, 0x83000 <_ZN42_$LT$$RF$T$u20$as$u20$core..fmt..Debug$GT$3fmt17h0ce5f74af94e46edE+0x164>
               	add	x8, x8, #2168
               	mov	w2, #2
               	mov	x0, x1
               	mov	x1, x8
               	bl	0x80b74 <_ZN4core3fmt9Formatter12pad_integral17h4be5fae25bf478d6E>
               	ldr	x30, [sp, #128]
               	add	sp, sp, #144
               	ret
               	mov	w9, #39
               	cmp	x8, #99
               	b.ls	0x82a9c <_ZN42_$LT$$RF$T$u20$as$u20$core..fmt..Debug$GT$3fmt17h0ce5f74af94e46edE+0x1d8>
               	mov	w11, #34079
               	and	w10, w8, #0xffff
               	movk	w11, #20971, lsl #16
               	umull	x10, w10, w11
               	mov	w12, #-100
               	adrp	x11, 0x83000 <_ZN42_$LT$$RF$T$u20$as$u20$core..fmt..Debug$GT$3fmt17h0ce5f74af94e46edE+0x1a8>
               	lsr	x10, x10, #37
               	add	x11, x11, #1778
               	madd	w8, w10, w12, w8
               	add	x8, x11, w8, uxth #1
               	ldrb	w11, [x8, #1]
               	ldrb	w8, [x8]
               	sub	x9, x9, #2
               	mov	x12, sp
               	add	x12, x12, x9
               	strb	w8, [x12]
               	mov	x8, x10
               	strb	w11, [x12, #1]
               	cmp	x8, #10
               	b.ge	0x82ab8 <_ZN42_$LT$$RF$T$u20$as$u20$core..fmt..Debug$GT$3fmt17h0ce5f74af94e46edE+0x1f4>
               	sub	x9, x9, #1
               	add	w8, w8, #48
               	mov	x10, sp
               	strb	w8, [x10, x9]
               	b	0x82ae0 <_ZN42_$LT$$RF$T$u20$as$u20$core..fmt..Debug$GT$3fmt17h0ce5f74af94e46edE+0x21c>
               	adrp	x10, 0x83000 <_ZN42_$LT$$RF$T$u20$as$u20$core..fmt..Debug$GT$3fmt17h0ce5f74af94e46edE+0x1f8>
               	add	x10, x10, #1778
               	add	x8, x10, x8, lsl #1
               	ldrb	w10, [x8, #1]
               	ldrb	w8, [x8]
               	sub	x9, x9, #2
               	mov	x11, sp
               	add	x11, x11, x9
               	strb	w10, [x11, #1]
               	strb	w8, [x11]
               	mov	x8, sp
               	add	x3, x8, x9
               	adrp	x8, 0x83000 <_ZN42_$LT$$RF$T$u20$as$u20$core..fmt..Debug$GT$3fmt17h0ce5f74af94e46edE+0x228>
               	mov	w10, #39
               	add	x8, x8, #1632
               	sub	x4, x10, x9
               	mov	x0, x1
               	mov	x1, x8
               	mov	x2, xzr
               	bl	0x80b74 <_ZN4core3fmt9Formatter12pad_integral17h4be5fae25bf478d6E>
               	ldr	x30, [sp, #128]
               	add	sp, sp, #144
               	ret
               	adrp	x2, 0x83000 <_ZN42_$LT$$RF$T$u20$as$u20$core..fmt..Debug$GT$3fmt17h0ce5f74af94e46edE+0x254>
               	add	x2, x2, #2144
               	mov	w1, #128
               	bl	0x80eb0 <_ZN4core5slice5index26slice_start_index_len_fail17ha5c8a54d8fb05d93E>
               	brk	#0x1

<_ZN42_$LT$$RF$T$u20$as$u20$core..fmt..Debug$GT$3fmt17h4bfed742e82838c6E>:
               	sub	sp, sp, #160
               	stp	x29, x30, [sp, #64]
               	stp	x28, x27, [sp, #80]
               	stp	x26, x25, [sp, #96]
               	stp	x24, x23, [sp, #112]
               	stp	x22, x21, [sp, #128]
               	stp	x20, x19, [sp, #144]
               	ldr	x8, [x0]
               	ldp	x19, x9, [x1, #32]
               	mov	w1, #34
               	ldp	x10, x8, [x8]
               	ldr	x2, [x9, #32]
               	mov	x0, x19
               	str	x9, [sp, #32]
               	stp	x8, x10, [sp, #40]
               	str	x2, [sp, #56]
               	blr	x2
               	tbz	w0, #0, 0x82b94 <_ZN42_$LT$$RF$T$u20$as$u20$core..fmt..Debug$GT$3fmt17h4bfed742e82838c6E+0x6c>
               	ldp	x20, x19, [sp, #144]
               	ldp	x22, x21, [sp, #128]
               	ldp	x24, x23, [sp, #112]
               	ldp	x26, x25, [sp, #96]
               	ldp	x28, x27, [sp, #80]
               	ldp	x29, x30, [sp, #64]
               	mov	w0, #1
               	add	sp, sp, #160
               	ret
               	ldr	x11, [sp, #40]
               	cbz	x11, 0x82f30 <_ZN42_$LT$$RF$T$u20$as$u20$core..fmt..Debug$GT$3fmt17h4bfed742e82838c6E+0x408>
               	ldr	x8, [sp, #48]
               	adrp	x27, 0x83000 <_ZN42_$LT$$RF$T$u20$as$u20$core..fmt..Debug$GT$3fmt17h4bfed742e82838c6E+0x7c>
               	adrp	x14, 0x83000 <_ZN42_$LT$$RF$T$u20$as$u20$core..fmt..Debug$GT$3fmt17h4bfed742e82838c6E+0x80>
               	mov	x24, xzr
               	mov	x3, xzr
               	add	x21, x8, x11
               	add	x27, x27, #1155
               	add	x14, x14, #1129
               	mov	x12, x8
               	mov	x10, x8
               	mov	x28, x10
               	ldrsb	w8, [x28], #1
               	and	w29, w8, #0xff
               	tbnz	w8, #31, 0x82bdc <_ZN42_$LT$$RF$T$u20$as$u20$core..fmt..Debug$GT$3fmt17h4bfed742e82838c6E+0xb4>
               	mov	x13, x28
               	b	0x82c94 <_ZN42_$LT$$RF$T$u20$as$u20$core..fmt..Debug$GT$3fmt17h4bfed742e82838c6E+0x16c>
               	cmp	x28, x21
               	b.eq	0x82c30 <_ZN42_$LT$$RF$T$u20$as$u20$core..fmt..Debug$GT$3fmt17h4bfed742e82838c6E+0x108>
               	ldrb	w8, [x10, #1]
               	add	x13, x10, #2
               	and	w10, w8, #0x3f
               	cmp	w29, #223
               	and	w8, w29, #0x1f
               	b.ls	0x82c44 <_ZN42_$LT$$RF$T$u20$as$u20$core..fmt..Debug$GT$3fmt17h4bfed742e82838c6E+0x11c>
               	cmp	x13, x21
               	b.eq	0x82c54 <_ZN42_$LT$$RF$T$u20$as$u20$core..fmt..Debug$GT$3fmt17h4bfed742e82838c6E+0x12c>
               	ldrb	w9, [x13], #1
               	and	w9, w9, #0x3f
               	cmp	w29, #240
               	bfi	w9, w10, #6, #6
               	b.lo	0x82c68 <_ZN42_$LT$$RF$T$u20$as$u20$core..fmt..Debug$GT$3fmt17h4bfed742e82838c6E+0x140>
               	cmp	x13, x21
               	b.eq	0x82c78 <_ZN42_$LT$$RF$T$u20$as$u20$core..fmt..Debug$GT$3fmt17h4bfed742e82838c6E+0x150>
               	ldrb	w10, [x13], #1
               	and	w10, w10, #0x3f
               	mov	x28, x13
               	b	0x82c80 <_ZN42_$LT$$RF$T$u20$as$u20$core..fmt..Debug$GT$3fmt17h4bfed742e82838c6E+0x158>
               	mov	w10, wzr
               	mov	x13, x21
               	cmp	w29, #223
               	and	w8, w29, #0x1f
               	b.hi	0x82bfc <_ZN42_$LT$$RF$T$u20$as$u20$core..fmt..Debug$GT$3fmt17h4bfed742e82838c6E+0xd4>
               	bfi	w10, w8, #6, #5
               	mov	x28, x13
               	mov	w29, w10
               	b	0x82c94 <_ZN42_$LT$$RF$T$u20$as$u20$core..fmt..Debug$GT$3fmt17h4bfed742e82838c6E+0x16c>
               	mov	w9, wzr
               	mov	x13, x21
               	cmp	w29, #240
               	bfi	w9, w10, #6, #6
               	b.hs	0x82c18 <_ZN42_$LT$$RF$T$u20$as$u20$core..fmt..Debug$GT$3fmt17h4bfed742e82838c6E+0xf0>
               	bfi	w9, w8, #12, #5
               	mov	x28, x13
               	mov	w29, w9
               	b	0x82c94 <_ZN42_$LT$$RF$T$u20$as$u20$core..fmt..Debug$GT$3fmt17h4bfed742e82838c6E+0x16c>
               	mov	w10, wzr
               	mov	x28, x21
               	ubfiz	w8, w8, #18, #3
               	bfi	w8, w9, #6, #12
               	orr	w29, w8, w10
               	cmp	w29, #272, lsl #12
               	b.eq	0x82f10 <_ZN42_$LT$$RF$T$u20$as$u20$core..fmt..Debug$GT$3fmt17h4bfed742e82838c6E+0x3e8>
               	sub	w8, w29, #9
               	cmp	w8, #25
               	stp	x13, x12, [sp, #16]
               	str	x28, [sp, #8]
               	b.hi	0x82ccc <_ZN42_$LT$$RF$T$u20$as$u20$core..fmt..Debug$GT$3fmt17h4bfed742e82838c6E+0x1a4>
               	adr	x9, #24
               	ldrb	w10, [x14, x8]
               	add	x9, x9, x10, lsl #2
               	mov	w23, #116
               	mov	w25, #2
               	br	x9
               	mov	w23, #110
               	mov	w25, #2
               	b	0x82d44 <_ZN42_$LT$$RF$T$u20$as$u20$core..fmt..Debug$GT$3fmt17h4bfed742e82838c6E+0x21c>
               	cmp	w29, #92
               	b.ne	0x82ce0 <_ZN42_$LT$$RF$T$u20$as$u20$core..fmt..Debug$GT$3fmt17h4bfed742e82838c6E+0x1b8>
               	mov	w25, #2
               	mov	w23, w29
               	b	0x82d44 <_ZN42_$LT$$RF$T$u20$as$u20$core..fmt..Debug$GT$3fmt17h4bfed742e82838c6E+0x21c>
               	mov	w0, w29
               	mov	x20, x3
               	bl	0x820d0 <_ZN4core7unicode12unicode_data15grapheme_extend6lookup17h0525d17e88c4ad5eE>
               	tbnz	w0, #0, 0x82d1c <_ZN42_$LT$$RF$T$u20$as$u20$core..fmt..Debug$GT$3fmt17h4bfed742e82838c6E+0x1f4>
               	mov	w0, w29
               	bl	0x82208 <_ZN4core7unicode9printable12is_printable17h809bc46350007ff2E>
               	tbz	w0, #0, 0x82d1c <_ZN42_$LT$$RF$T$u20$as$u20$core..fmt..Debug$GT$3fmt17h4bfed742e82838c6E+0x1f4>
               	ldr	x11, [sp, #40]
               	ldp	x10, x9, [sp, #16]
               	mov	x28, x21
               	mov	x21, x20
               	b	0x82eec <_ZN42_$LT$$RF$T$u20$as$u20$core..fmt..Debug$GT$3fmt17h4bfed742e82838c6E+0x3c4>
               	mov	w23, #114
               	mov	w25, #2
               	b	0x82d44 <_ZN42_$LT$$RF$T$u20$as$u20$core..fmt..Debug$GT$3fmt17h4bfed742e82838c6E+0x21c>
               	orr	w8, w29, #0x1
               	ldr	x11, [sp, #40]
               	clz	w8, w8
               	mov	w9, w29
               	mov	x10, #21474836480
               	lsr	w8, w8, #2
               	orr	x26, x9, x10
               	eor	w22, w8, #0x7
               	mov	w25, #3
               	mov	x3, x20
               	cmp	x3, x24
               	b.lo	0x82f8c <_ZN42_$LT$$RF$T$u20$as$u20$core..fmt..Debug$GT$3fmt17h4bfed742e82838c6E+0x464>
               	cbz	x24, 0x82d70 <_ZN42_$LT$$RF$T$u20$as$u20$core..fmt..Debug$GT$3fmt17h4bfed742e82838c6E+0x248>
               	cmp	x24, x11
               	b.hs	0x82d6c <_ZN42_$LT$$RF$T$u20$as$u20$core..fmt..Debug$GT$3fmt17h4bfed742e82838c6E+0x244>
               	ldr	x8, [sp, #48]
               	ldrsb	w8, [x8, x24]
               	cmn	w8, #64
               	b.ge	0x82d70 <_ZN42_$LT$$RF$T$u20$as$u20$core..fmt..Debug$GT$3fmt17h4bfed742e82838c6E+0x248>
               	b	0x82f8c <_ZN42_$LT$$RF$T$u20$as$u20$core..fmt..Debug$GT$3fmt17h4bfed742e82838c6E+0x464>
               	b.ne	0x82f8c <_ZN42_$LT$$RF$T$u20$as$u20$core..fmt..Debug$GT$3fmt17h4bfed742e82838c6E+0x464>
               	cbz	x3, 0x82d94 <_ZN42_$LT$$RF$T$u20$as$u20$core..fmt..Debug$GT$3fmt17h4bfed742e82838c6E+0x26c>
               	cmp	x3, x11
               	b.hs	0x82d9c <_ZN42_$LT$$RF$T$u20$as$u20$core..fmt..Debug$GT$3fmt17h4bfed742e82838c6E+0x274>
               	ldr	x8, [sp, #48]
               	mov	x20, x3
               	ldrsb	w8, [x8, x3]
               	cmn	w8, #65
               	b.gt	0x82da4 <_ZN42_$LT$$RF$T$u20$as$u20$core..fmt..Debug$GT$3fmt17h4bfed742e82838c6E+0x27c>
               	b	0x82f8c <_ZN42_$LT$$RF$T$u20$as$u20$core..fmt..Debug$GT$3fmt17h4bfed742e82838c6E+0x464>
               	mov	x20, xzr
               	b	0x82da4 <_ZN42_$LT$$RF$T$u20$as$u20$core..fmt..Debug$GT$3fmt17h4bfed742e82838c6E+0x27c>
               	mov	x20, x11
               	b.ne	0x82f8c <_ZN42_$LT$$RF$T$u20$as$u20$core..fmt..Debug$GT$3fmt17h4bfed742e82838c6E+0x464>
               	ldr	x8, [sp, #32]
               	ldr	x9, [sp, #48]
               	sub	x2, x20, x24
               	mov	x0, x19
               	ldr	x8, [x8, #24]
               	add	x1, x9, x24
               	mov	x28, x21
               	mov	x21, x3
               	blr	x8
               	adrp	x24, 0x83000 <_ZN42_$LT$$RF$T$u20$as$u20$core..fmt..Debug$GT$3fmt17h4bfed742e82838c6E+0x2a4>
               	add	x24, x24, #1159
               	tbz	w0, #0, 0x82df0 <_ZN42_$LT$$RF$T$u20$as$u20$core..fmt..Debug$GT$3fmt17h4bfed742e82838c6E+0x2c8>
               	b	0x82b70 <_ZN42_$LT$$RF$T$u20$as$u20$core..fmt..Debug$GT$3fmt17h4bfed742e82838c6E+0x48>
               	mov	w25, wzr
               	mov	w1, w23
               	ldr	x2, [sp, #56]
               	mov	x0, x19
               	blr	x2
               	tbnz	w0, #0, 0x82b70 <_ZN42_$LT$$RF$T$u20$as$u20$core..fmt..Debug$GT$3fmt17h4bfed742e82838c6E+0x48>
               	mov	w8, w25
               	adr	x9, #-28
               	ldrb	w10, [x27, x8]
               	add	x9, x9, x10, lsl #2
               	mov	w25, #1
               	mov	w1, #92
               	br	x9
               	ubfx	x8, x26, #32, #8
               	adr	x9, #16
               	ldrb	w10, [x24, x8]
               	add	x9, x9, x10, lsl #2
               	br	x9
               	and	x26, x26, #0xffffff00ffffffff
               	mov	w25, #3
               	mov	w1, #125
               	b	0x82de0 <_ZN42_$LT$$RF$T$u20$as$u20$core..fmt..Debug$GT$3fmt17h4bfed742e82838c6E+0x2b8>
               	and	x8, x26, #0xffffff00ffffffff
               	mov	w25, #3
               	orr	x26, x8, #0x300000000
               	mov	w1, #117
               	b	0x82de0 <_ZN42_$LT$$RF$T$u20$as$u20$core..fmt..Debug$GT$3fmt17h4bfed742e82838c6E+0x2b8>
               	ubfiz	w8, w22, #2, #3
               	lsr	w8, w26, w8
               	and	w8, w8, #0xf
               	cmp	w8, #10
               	mov	w9, #87
               	mov	w10, #48
               	csel	w9, w10, w9, lo
               	add	w1, w9, w8
               	cbz	x22, 0x82e9c <_ZN42_$LT$$RF$T$u20$as$u20$core..fmt..Debug$GT$3fmt17h4bfed742e82838c6E+0x374>
               	sub	x22, x22, #1
               	mov	w25, #3
               	b	0x82de0 <_ZN42_$LT$$RF$T$u20$as$u20$core..fmt..Debug$GT$3fmt17h4bfed742e82838c6E+0x2b8>
               	and	x8, x26, #0xffffff00ffffffff
               	mov	w25, #3
               	orr	x26, x8, #0x200000000
               	mov	w1, #123
               	b	0x82de0 <_ZN42_$LT$$RF$T$u20$as$u20$core..fmt..Debug$GT$3fmt17h4bfed742e82838c6E+0x2b8>
               	and	x8, x26, #0xffffff00ffffffff
               	mov	w25, #3
               	orr	x26, x8, #0x400000000
               	mov	w1, #92
               	b	0x82de0 <_ZN42_$LT$$RF$T$u20$as$u20$core..fmt..Debug$GT$3fmt17h4bfed742e82838c6E+0x2b8>
               	and	x8, x26, #0xffffff00ffffffff
               	orr	x26, x8, #0x100000000
               	mov	w25, #3
               	b	0x82de0 <_ZN42_$LT$$RF$T$u20$as$u20$core..fmt..Debug$GT$3fmt17h4bfed742e82838c6E+0x2b8>
               	cmp	w29, #128
               	b.hs	0x82ec4 <_ZN42_$LT$$RF$T$u20$as$u20$core..fmt..Debug$GT$3fmt17h4bfed742e82838c6E+0x39c>
               	ldr	x11, [sp, #40]
               	ldp	x10, x9, [sp, #16]
               	mov	w8, #1
               	b	0x82ee8 <_ZN42_$LT$$RF$T$u20$as$u20$core..fmt..Debug$GT$3fmt17h4bfed742e82838c6E+0x3c0>
               	ldr	x11, [sp, #40]
               	ldp	x10, x9, [sp, #16]
               	cmp	w29, #2048
               	b.hs	0x82edc <_ZN42_$LT$$RF$T$u20$as$u20$core..fmt..Debug$GT$3fmt17h4bfed742e82838c6E+0x3b4>
               	mov	w8, #2
               	b	0x82ee8 <_ZN42_$LT$$RF$T$u20$as$u20$core..fmt..Debug$GT$3fmt17h4bfed742e82838c6E+0x3c0>
               	cmp	w29, #16, lsl #12
               	mov	w8, #3
               	cinc	x8, x8, hs
               	add	x24, x8, x20
               	sub	x8, x21, x9
               	ldr	x9, [sp, #8]
               	adrp	x14, 0x83000 <_ZN42_$LT$$RF$T$u20$as$u20$core..fmt..Debug$GT$3fmt17h4bfed742e82838c6E+0x3d0>
               	mov	x21, x28
               	cmp	x10, x28
               	add	x3, x8, x9
               	mov	x12, x10
               	add	x14, x14, #1129
               	b.ne	0x82bc4 <_ZN42_$LT$$RF$T$u20$as$u20$core..fmt..Debug$GT$3fmt17h4bfed742e82838c6E+0x9c>
               	cbz	x24, 0x82f34 <_ZN42_$LT$$RF$T$u20$as$u20$core..fmt..Debug$GT$3fmt17h4bfed742e82838c6E+0x40c>
               	cmp	x24, x11
               	b.hs	0x82f80 <_ZN42_$LT$$RF$T$u20$as$u20$core..fmt..Debug$GT$3fmt17h4bfed742e82838c6E+0x458>
               	ldr	x8, [sp, #48]
               	ldrsb	w8, [x8, x24]
               	cmn	w8, #65
               	b.gt	0x82f34 <_ZN42_$LT$$RF$T$u20$as$u20$core..fmt..Debug$GT$3fmt17h4bfed742e82838c6E+0x40c>
               	b	0x82fa8 <_ZN42_$LT$$RF$T$u20$as$u20$core..fmt..Debug$GT$3fmt17h4bfed742e82838c6E+0x480>
               	mov	x24, xzr
               	ldr	x8, [sp, #32]
               	ldr	x9, [sp, #48]
               	sub	x2, x11, x24
               	mov	x0, x19
               	ldr	x8, [x8, #24]
               	add	x1, x9, x24
               	blr	x8
               	tbnz	w0, #0, 0x82b70 <_ZN42_$LT$$RF$T$u20$as$u20$core..fmt..Debug$GT$3fmt17h4bfed742e82838c6E+0x48>
               	mov	x0, x19
               	ldr	x2, [sp, #56]
               	ldp	x20, x19, [sp, #144]
               	ldp	x22, x21, [sp, #128]
               	ldp	x24, x23, [sp, #112]
               	ldp	x26, x25, [sp, #96]
               	ldp	x28, x27, [sp, #80]
               	ldp	x29, x30, [sp, #64]
               	mov	w1, #34
               	add	sp, sp, #160
               	br	x2
               	b.ne	0x82fa8 <_ZN42_$LT$$RF$T$u20$as$u20$core..fmt..Debug$GT$3fmt17h4bfed742e82838c6E+0x480>
               	mov	x24, x11
               	b	0x82f34 <_ZN42_$LT$$RF$T$u20$as$u20$core..fmt..Debug$GT$3fmt17h4bfed742e82838c6E+0x40c>
               	ldr	x0, [sp, #48]
               	adrp	x4, 0x84000 <_ZN42_$LT$$RF$T$u20$as$u20$core..fmt..Debug$GT$3fmt17h4bfed742e82838c6E+0x470>
               	add	x4, x4, #1232
               	mov	x1, x11
               	mov	x2, x24
               	bl	0x818d4 <_ZN4core3str16slice_error_fail17hf7d2a92268a53d29E>
               	brk	#0x1
               	ldr	x0, [sp, #48]
               	adrp	x4, 0x84000 <_ZN42_$LT$$RF$T$u20$as$u20$core..fmt..Debug$GT$3fmt17h4bfed742e82838c6E+0x48c>
               	add	x4, x4, #1208
               	mov	x1, x11
               	mov	x2, x24
               	mov	x3, x11
               	bl	0x818d4 <_ZN4core3str16slice_error_fail17hf7d2a92268a53d29E>
               	brk	#0x1

<_ZN71_$LT$core..panic..panic_info..PanicInfo$u20$as$u20$core..fmt..Debug$GT$3fmt17hdab5301ab1e937b8E>:
               	sub	sp, sp, #64
               	str	x30, [sp, #16]
               	stp	x22, x21, [sp, #32]
               	stp	x20, x19, [sp, #48]
               	mov	x20, x0
               	ldp	x0, x8, [x1, #32]
               	mov	x19, x1
               	adrp	x1, 0x84000 <_ZN71_$LT$core..panic..panic_info..PanicInfo$u20$as$u20$core..fmt..Debug$GT$3fmt17hdab5301ab1e937b8E+0x24>
               	add	x1, x1, #1355
               	ldr	x8, [x8, #24]
               	mov	w2, #9
               	add	x21, x20, #16
               	add	x22, x20, #24
               	blr	x8
               	cmp	w0, #0
               	adrp	x1, 0x84000 <_ZN71_$LT$core..panic..panic_info..PanicInfo$u20$as$u20$core..fmt..Debug$GT$3fmt17hdab5301ab1e937b8E+0x40>
               	adrp	x4, 0x84000 <_ZN71_$LT$core..panic..panic_info..PanicInfo$u20$as$u20$core..fmt..Debug$GT$3fmt17hdab5301ab1e937b8E+0x44>
               	cset	x8, ne
               	add	x1, x1, #1364
               	add	x4, x4, #1376
               	mov	x0, sp
               	add	x3, sp, #24
               	mov	w2, #7
               	stp	x19, x8, [sp]
               	str	x20, [sp, #24]
               	bl	0x824dc <_ZN4core3fmt8builders11DebugStruct5field17hdc89cd457900d764E>
               	adrp	x1, 0x84000 <_ZN71_$LT$core..panic..panic_info..PanicInfo$u20$as$u20$core..fmt..Debug$GT$3fmt17hdab5301ab1e937b8E+0x6c>
               	adrp	x4, 0x84000 <_ZN71_$LT$core..panic..panic_info..PanicInfo$u20$as$u20$core..fmt..Debug$GT$3fmt17hdab5301ab1e937b8E+0x70>
               	add	x1, x1, #1408
               	add	x4, x4, #1416
               	mov	x0, sp
               	add	x3, sp, #24
               	mov	w2, #7
               	str	x21, [sp, #24]
               	bl	0x824dc <_ZN4core3fmt8builders11DebugStruct5field17hdc89cd457900d764E>
               	adrp	x1, 0x83000 <_ZN71_$LT$core..panic..panic_info..PanicInfo$u20$as$u20$core..fmt..Debug$GT$3fmt17hdab5301ab1e937b8E+0x8c>
               	adrp	x4, 0x84000 <_ZN71_$LT$core..panic..panic_info..PanicInfo$u20$as$u20$core..fmt..Debug$GT$3fmt17hdab5301ab1e937b8E+0x94>
               	add	x1, x1, #2745
               	add	x4, x4, #1448
               	mov	x0, sp
               	add	x3, sp, #24
               	mov	w2, #8
               	str	x22, [sp, #24]
               	bl	0x824dc <_ZN4core3fmt8builders11DebugStruct5field17hdc89cd457900d764E>
               	ldrb	w8, [sp, #9]
               	ldrb	w0, [sp, #8]
               	cbz	w8, 0x830c8 <_ZN71_$LT$core..panic..panic_info..PanicInfo$u20$as$u20$core..fmt..Debug$GT$3fmt17hdab5301ab1e937b8E+0x100>
               	cbz	w0, 0x83090 <_ZN71_$LT$core..panic..panic_info..PanicInfo$u20$as$u20$core..fmt..Debug$GT$3fmt17hdab5301ab1e937b8E+0xc8>
               	mov	w0, #1
               	b	0x830c8 <_ZN71_$LT$core..panic..panic_info..PanicInfo$u20$as$u20$core..fmt..Debug$GT$3fmt17hdab5301ab1e937b8E+0x100>
               	ldr	x8, [sp]
               	ldrb	w9, [x8, #48]
               	tbnz	w9, #2, 0x830b0 <_ZN71_$LT$core..panic..panic_info..PanicInfo$u20$as$u20$core..fmt..Debug$GT$3fmt17hdab5301ab1e937b8E+0xe8>
               	ldp	x0, x9, [x8, #32]
               	adrp	x1, 0x84000 <_ZN71_$LT$core..panic..panic_info..PanicInfo$u20$as$u20$core..fmt..Debug$GT$3fmt17hdab5301ab1e937b8E+0xdc>
               	add	x1, x1, #1201
               	mov	w2, #2
               	b	0x830c0 <_ZN71_$LT$core..panic..panic_info..PanicInfo$u20$as$u20$core..fmt..Debug$GT$3fmt17hdab5301ab1e937b8E+0xf8>
               	ldp	x0, x9, [x8, #32]
               	adrp	x1, 0x84000 <_ZN71_$LT$core..panic..panic_info..PanicInfo$u20$as$u20$core..fmt..Debug$GT$3fmt17hdab5301ab1e937b8E+0xf0>
               	add	x1, x1, #1200
               	mov	w2, #1
               	ldr	x8, [x9, #24]
               	blr	x8
               	ldp	x20, x19, [sp, #48]
               	ldp	x22, x21, [sp, #32]
               	ldr	x30, [sp, #16]
               	cmp	w0, #0
               	cset	w0, ne
               	add	sp, sp, #64
               	ret

<_ZN42_$LT$$RF$T$u20$as$u20$core..fmt..Debug$GT$3fmt17hdb3565c8b9fbe464E>:
               	sub	sp, sp, #64
               	str	x30, [sp, #16]
               	stp	x22, x21, [sp, #32]
               	stp	x20, x19, [sp, #48]
               	ldr	x8, [x0]
               	ldp	x0, x9, [x1, #32]
               	mov	x19, x1
               	adrp	x1, 0x83000 <_ZN42_$LT$$RF$T$u20$as$u20$core..fmt..Debug$GT$3fmt17hdb3565c8b9fbe464E+0x1c>
               	ldr	x20, [x8]
               	ldr	x8, [x9, #24]
               	add	x1, x1, #2753
               	mov	w2, #8
               	add	x21, x20, #16
               	add	x22, x20, #20
               	blr	x8
               	cmp	w0, #0
               	adrp	x1, 0x83000 <_ZN42_$LT$$RF$T$u20$as$u20$core..fmt..Debug$GT$3fmt17hdb3565c8b9fbe464E+0x40>
               	adrp	x4, 0x84000 <_ZN42_$LT$$RF$T$u20$as$u20$core..fmt..Debug$GT$3fmt17hdb3565c8b9fbe464E+0x48>
               	cset	x8, ne
               	add	x1, x1, #2350
               	add	x4, x4, #1288
               	mov	x0, sp
               	add	x3, sp, #24
               	mov	w2, #4
               	stp	x19, x8, [sp]
               	str	x20, [sp, #24]
               	bl	0x824dc <_ZN4core3fmt8builders11DebugStruct5field17hdc89cd457900d764E>
               	adrp	x19, 0x84000 <_ZN42_$LT$$RF$T$u20$as$u20$core..fmt..Debug$GT$3fmt17hdb3565c8b9fbe464E+0x70>
               	adrp	x1, 0x83000 <_ZN42_$LT$$RF$T$u20$as$u20$core..fmt..Debug$GT$3fmt17hdb3565c8b9fbe464E+0x70>
               	add	x19, x19, #1320
               	add	x1, x1, #2354
               	mov	x0, sp
               	add	x3, sp, #24
               	mov	w2, #4
               	mov	x4, x19
               	str	x21, [sp, #24]
               	bl	0x824dc <_ZN4core3fmt8builders11DebugStruct5field17hdc89cd457900d764E>
               	adrp	x1, 0x84000 <_ZN42_$LT$$RF$T$u20$as$u20$core..fmt..Debug$GT$3fmt17hdb3565c8b9fbe464E+0x98>
               	add	x1, x1, #1352
               	mov	x0, sp
               	add	x3, sp, #24
               	mov	w2, #3
               	mov	x4, x19
               	str	x22, [sp, #24]
               	bl	0x824dc <_ZN4core3fmt8builders11DebugStruct5field17hdc89cd457900d764E>
               	ldrb	w8, [sp, #9]
               	ldrb	w0, [sp, #8]
               	cbz	w8, 0x831e8 <_ZN42_$LT$$RF$T$u20$as$u20$core..fmt..Debug$GT$3fmt17hdb3565c8b9fbe464E+0x104>
               	cbz	w0, 0x831b0 <_ZN42_$LT$$RF$T$u20$as$u20$core..fmt..Debug$GT$3fmt17hdb3565c8b9fbe464E+0xcc>
               	mov	w0, #1
               	b	0x831e8 <_ZN42_$LT$$RF$T$u20$as$u20$core..fmt..Debug$GT$3fmt17hdb3565c8b9fbe464E+0x104>
               	ldr	x8, [sp]
               	ldrb	w9, [x8, #48]
               	tbnz	w9, #2, 0x831d0 <_ZN42_$LT$$RF$T$u20$as$u20$core..fmt..Debug$GT$3fmt17hdb3565c8b9fbe464E+0xec>
               	ldp	x0, x9, [x8, #32]
               	adrp	x1, 0x84000 <_ZN42_$LT$$RF$T$u20$as$u20$core..fmt..Debug$GT$3fmt17hdb3565c8b9fbe464E+0xe0>
               	add	x1, x1, #1201
               	mov	w2, #2
               	b	0x831e0 <_ZN42_$LT$$RF$T$u20$as$u20$core..fmt..Debug$GT$3fmt17hdb3565c8b9fbe464E+0xfc>
               	ldp	x0, x9, [x8, #32]
               	adrp	x1, 0x84000 <_ZN42_$LT$$RF$T$u20$as$u20$core..fmt..Debug$GT$3fmt17hdb3565c8b9fbe464E+0xf4>
               	add	x1, x1, #1200
               	mov	w2, #1
               	ldr	x8, [x9, #24]
               	blr	x8
               	ldp	x20, x19, [sp, #48]
               	ldp	x22, x21, [sp, #32]
               	ldr	x30, [sp, #16]
               	cmp	w0, #0
               	cset	w0, ne
               	add	sp, sp, #64
               	ret

<_ZN42_$LT$$RF$T$u20$as$u20$core..fmt..Debug$GT$3fmt17h91a03beae5aa8267E>:
               	sub	sp, sp, #128
               	stp	x30, x23, [sp, #80]
               	stp	x22, x21, [sp, #96]
               	stp	x20, x19, [sp, #112]
               	ldr	x23, [x0]
               	mov	x21, x1
               	ldr	x8, [x23]
               	cbz	x8, 0x83260 <_ZN42_$LT$$RF$T$u20$as$u20$core..fmt..Debug$GT$3fmt17h91a03beae5aa8267E+0x5c>
               	ldp	x19, x20, [x21, #32]
               	adrp	x1, 0x83000 <_ZN42_$LT$$RF$T$u20$as$u20$core..fmt..Debug$GT$3fmt17h91a03beae5aa8267E+0x24>
               	add	x1, x1, #2342
               	mov	w2, #4
               	ldr	x22, [x20, #24]
               	mov	x0, x19
               	blr	x22
               	tbz	w0, #0, 0x83288 <_ZN42_$LT$$RF$T$u20$as$u20$core..fmt..Debug$GT$3fmt17h91a03beae5aa8267E+0x84>
               	mov	w21, #1
               	mov	w0, w21
               	ldp	x20, x19, [sp, #112]
               	ldp	x22, x21, [sp, #96]
               	ldp	x30, x23, [sp, #80]
               	add	sp, sp, #128
               	ret
               	ldp	x0, x8, [x21, #32]
               	ldp	x20, x19, [sp, #112]
               	ldp	x22, x21, [sp, #96]
               	ldp	x30, x23, [sp, #80]
               	ldr	x3, [x8, #24]
               	adrp	x1, 0x83000 <_ZN42_$LT$$RF$T$u20$as$u20$core..fmt..Debug$GT$3fmt17h91a03beae5aa8267E+0x70>
               	add	x1, x1, #2358
               	mov	w2, #4
               	add	sp, sp, #128
               	br	x3
               	ldrb	w8, [x21, #48]
               	tbnz	w8, #2, 0x832d4 <_ZN42_$LT$$RF$T$u20$as$u20$core..fmt..Debug$GT$3fmt17h91a03beae5aa8267E+0xd0>
               	adrp	x1, 0x84000 <_ZN42_$LT$$RF$T$u20$as$u20$core..fmt..Debug$GT$3fmt17h91a03beae5aa8267E+0x90>
               	add	x1, x1, #1203
               	mov	w2, #1
               	mov	x0, x19
               	mov	w21, #1
               	blr	x22
               	tbnz	w0, #0, 0x83248 <_ZN42_$LT$$RF$T$u20$as$u20$core..fmt..Debug$GT$3fmt17h91a03beae5aa8267E+0x44>
               	ldr	x1, [x23]
               	add	x0, sp, #32
               	mov	w2, #48
               	bl	0x833d0 <memcpy>
               	add	x2, sp, #32
               	mov	x0, x19
               	mov	x1, x20
               	bl	0x813a4 <_ZN4core3fmt5write17h4089dd81629a8d2eE>
               	tbnz	w0, #0, 0x83244 <_ZN42_$LT$$RF$T$u20$as$u20$core..fmt..Debug$GT$3fmt17h91a03beae5aa8267E+0x40>
               	b	0x83340 <_ZN42_$LT$$RF$T$u20$as$u20$core..fmt..Debug$GT$3fmt17h91a03beae5aa8267E+0x13c>
               	adrp	x1, 0x84000 <_ZN42_$LT$$RF$T$u20$as$u20$core..fmt..Debug$GT$3fmt17h91a03beae5aa8267E+0xd4>
               	add	x1, x1, #1204
               	mov	w2, #2
               	mov	x0, x19
               	blr	x22
               	mov	w21, #1
               	tbnz	w0, #0, 0x83248 <_ZN42_$LT$$RF$T$u20$as$u20$core..fmt..Debug$GT$3fmt17h91a03beae5aa8267E+0x44>
               	add	x8, sp, #28
               	strb	w21, [sp, #28]
               	stp	x19, x20, [sp]
               	str	x8, [sp, #16]
               	ldr	x1, [x23]
               	add	x0, sp, #32
               	mov	w2, #48
               	bl	0x833d0 <memcpy>
               	adrp	x1, 0x84000 <_ZN42_$LT$$RF$T$u20$as$u20$core..fmt..Debug$GT$3fmt17h91a03beae5aa8267E+0x110>
               	add	x1, x1, #1096
               	mov	x0, sp
               	add	x2, sp, #32
               	bl	0x813a4 <_ZN4core3fmt5write17h4089dd81629a8d2eE>
               	tbnz	w0, #0, 0x83244 <_ZN42_$LT$$RF$T$u20$as$u20$core..fmt..Debug$GT$3fmt17h91a03beae5aa8267E+0x40>
               	adrp	x1, 0x84000 <_ZN42_$LT$$RF$T$u20$as$u20$core..fmt..Debug$GT$3fmt17h91a03beae5aa8267E+0x128>
               	add	x1, x1, #1144
               	mov	x0, sp
               	mov	w2, #2
               	bl	0x81644 <_ZN68_$LT$core..fmt..builders..PadAdapter$u20$as$u20$core..fmt..Write$GT$9write_str17h006d11991b68be72E>
               	tbnz	w0, #0, 0x83244 <_ZN42_$LT$$RF$T$u20$as$u20$core..fmt..Debug$GT$3fmt17h91a03beae5aa8267E+0x40>
               	adrp	x1, 0x84000 <_ZN42_$LT$$RF$T$u20$as$u20$core..fmt..Debug$GT$3fmt17h91a03beae5aa8267E+0x140>
               	add	x1, x1, #1206
               	mov	w2, #1
               	mov	x0, x19
               	blr	x22
               	mov	w21, w0
               	b	0x83248 <_ZN42_$LT$$RF$T$u20$as$u20$core..fmt..Debug$GT$3fmt17h91a03beae5aa8267E+0x44>

<_ZN42_$LT$$RF$T$u20$as$u20$core..fmt..Debug$GT$3fmt17hc72048f68cee3930E>:
               	sub	sp, sp, #32
               	stp	x30, x19, [sp, #16]
               	ldp	x19, x8, [x1, #32]
               	adrp	x1, 0x83000 <_ZN42_$LT$$RF$T$u20$as$u20$core..fmt..Debug$GT$3fmt17hc72048f68cee3930E+0xc>
               	add	x1, x1, #2290
               	mov	w2, #3
               	ldr	x3, [x8, #24]
               	mov	x0, x19
               	str	x3, [sp, #8]
               	blr	x3
               	tbz	w0, #0, 0x83398 <_ZN42_$LT$$RF$T$u20$as$u20$core..fmt..Debug$GT$3fmt17hc72048f68cee3930E+0x3c>
               	ldp	x30, x19, [sp, #16]
               	mov	w0, #1
               	add	sp, sp, #32
               	ret
               	mov	x0, x19
               	ldr	x3, [sp, #8]
               	ldp	x30, x19, [sp, #16]
               	adrp	x1, 0x83000 <_ZN42_$LT$$RF$T$u20$as$u20$core..fmt..Debug$GT$3fmt17hc72048f68cee3930E+0x48>
               	add	x1, x1, #2293
               	mov	w2, #7
               	add	sp, sp, #32
               	br	x3

<_ZN53_$LT$core..fmt..Error$u20$as$u20$core..fmt..Debug$GT$3fmt17h7940a6b0f953e665E>:
               	ldp	x0, x8, [x1, #32]
               	adrp	x1, 0x84000 <_ZN53_$LT$core..fmt..Error$u20$as$u20$core..fmt..Debug$GT$3fmt17h7940a6b0f953e665E+0x8>
               	add	x1, x1, #1480
               	mov	w2, #5
               	ldr	x3, [x8, #24]
               	br	x3

<memcpy>:
               	cbz	x2, 0x833e8 <memcpy+0x18>
               	mov	x8, x0
               	ldrb	w9, [x1], #1
               	subs	x2, x2, #1
               	strb	w9, [x8], #1
               	b.ne	0x833d8 <memcpy+0x8>
               	ret

<memset>:
               	cbz	x2, 0x83438 <memset+0x4c>
               	cmp	x2, #1
               	b.ne	0x83400 <memset+0x14>
               	mov	x8, xzr
               	b	0x83424 <memset+0x38>
               	and	x8, x2, #0xfffffffffffffffe
               	add	x9, x0, #1
               	mov	x10, x8
               	sturb	w1, [x9, #-1]
               	strb	w1, [x9], #2
               	subs	x10, x10, #2
               	b.ne	0x8340c <memset+0x20>
               	cmp	x8, x2
               	b.eq	0x83438 <memset+0x4c>
               	sub	x9, x2, x8
               	add	x8, x0, x8
               	subs	x9, x9, #1
               	strb	w1, [x8], #1
               	b.ne	0x8342c <memset+0x40>
               	ret
