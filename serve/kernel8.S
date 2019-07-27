
.\serve\kernel8:	file format ELF64-aarch64-little

Disassembly of section .text:
0000000000080000 _boot_cores:
   80000:	a1 00 38 d5 	mrs	x1, MPIDR_EL1
   80004:	21 04 40 92 	and	x1, x1, #0x3
   80008:	61 00 00 b4 	cbz	x1, #12 <_boot_cores+0x14>
   8000c:	5f 20 03 d5 	wfe
   80010:	ff ff ff 17 	b	#-4 <_boot_cores+0xc>
   80014:	a1 00 00 58 	ldr	x1, #20
   80018:	3f 00 00 91 	mov	sp, x1
   8001c:	df 00 00 94 	bl	#892 <reset>
   80020:	fb ff ff 17 	b	#-20 <_boot_cores+0xc>
   80024:	1f 20 03 d5 	nop

0000000000080028 $d.2:
   80028:	00 00 08 00 	.word	0x00080000
   8002c:	00 00 00 00 	.word	0x00000000

0000000000080030 baremetal_pi::kernel_entry::hde21611ac9cec3ae:
   80030:	08 01 80 52 	mov	w8, #8
   80034:	09 d4 90 52 	mov	w9, #34464
   80038:	08 e4 a7 72 	movk	w8, #16160, lsl #16
   8003c:	29 00 a0 72 	movk	w9, #1, lsl #16
   80040:	eb 03 05 32 	orr	w11, wzr, #0x8000000
   80044:	ea 03 03 32 	orr	w10, wzr, #0x20000000
   80048:	0b 01 00 b9 	str	w11, [x8]
   8004c:	eb 03 09 2a 	mov	w11, w9
   80050:	0a 21 00 b9 	str	w10, [x8, #32]
   80054:	6b 05 00 71 	subs	w11, w11, #1
   80058:	1f 20 03 d5 	nop
   8005c:	1f 20 03 d5 	nop
   80060:	1f 20 03 d5 	nop
   80064:	1f 20 03 d5 	nop
   80068:	1f 20 03 d5 	nop
   8006c:	1f 20 03 d5 	nop
   80070:	1f 20 03 d5 	nop
   80074:	1f 20 03 d5 	nop
   80078:	1f 20 03 d5 	nop
   8007c:	1f 20 03 d5 	nop
   80080:	1f 20 03 d5 	nop
   80084:	1f 20 03 d5 	nop
   80088:	1f 20 03 d5 	nop
   8008c:	1f 20 03 d5 	nop
   80090:	1f 20 03 d5 	nop
   80094:	1f 20 03 d5 	nop
   80098:	1f 20 03 d5 	nop
   8009c:	1f 20 03 d5 	nop
   800a0:	1f 20 03 d5 	nop
   800a4:	1f 20 03 d5 	nop
   800a8:	1f 20 03 d5 	nop
   800ac:	1f 20 03 d5 	nop
   800b0:	1f 20 03 d5 	nop
   800b4:	1f 20 03 d5 	nop
   800b8:	1f 20 03 d5 	nop
   800bc:	1f 20 03 d5 	nop
   800c0:	1f 20 03 d5 	nop
   800c4:	1f 20 03 d5 	nop
   800c8:	1f 20 03 d5 	nop
   800cc:	1f 20 03 d5 	nop
   800d0:	1f 20 03 d5 	nop
   800d4:	1f 20 03 d5 	nop
   800d8:	1f 20 03 d5 	nop
   800dc:	1f 20 03 d5 	nop
   800e0:	1f 20 03 d5 	nop
   800e4:	1f 20 03 d5 	nop
   800e8:	1f 20 03 d5 	nop
   800ec:	1f 20 03 d5 	nop
   800f0:	1f 20 03 d5 	nop
   800f4:	1f 20 03 d5 	nop
   800f8:	1f 20 03 d5 	nop
   800fc:	1f 20 03 d5 	nop
   80100:	1f 20 03 d5 	nop
   80104:	1f 20 03 d5 	nop
   80108:	1f 20 03 d5 	nop
   8010c:	1f 20 03 d5 	nop
   80110:	1f 20 03 d5 	nop
   80114:	1f 20 03 d5 	nop
   80118:	1f 20 03 d5 	nop
   8011c:	1f 20 03 d5 	nop
   80120:	1f 20 03 d5 	nop
   80124:	1f 20 03 d5 	nop
   80128:	1f 20 03 d5 	nop
   8012c:	1f 20 03 d5 	nop
   80130:	1f 20 03 d5 	nop
   80134:	1f 20 03 d5 	nop
   80138:	1f 20 03 d5 	nop
   8013c:	1f 20 03 d5 	nop
   80140:	1f 20 03 d5 	nop
   80144:	1f 20 03 d5 	nop
   80148:	1f 20 03 d5 	nop
   8014c:	1f 20 03 d5 	nop
   80150:	1f 20 03 d5 	nop
   80154:	1f 20 03 d5 	nop
   80158:	1f 20 03 d5 	nop
   8015c:	1f 20 03 d5 	nop
   80160:	1f 20 03 d5 	nop
   80164:	1f 20 03 d5 	nop
   80168:	1f 20 03 d5 	nop
   8016c:	1f 20 03 d5 	nop
   80170:	1f 20 03 d5 	nop
   80174:	1f 20 03 d5 	nop
   80178:	1f 20 03 d5 	nop
   8017c:	1f 20 03 d5 	nop
   80180:	1f 20 03 d5 	nop
   80184:	1f 20 03 d5 	nop
   80188:	1f 20 03 d5 	nop
   8018c:	1f 20 03 d5 	nop
   80190:	1f 20 03 d5 	nop
   80194:	1f 20 03 d5 	nop
   80198:	1f 20 03 d5 	nop
   8019c:	1f 20 03 d5 	nop
   801a0:	1f 20 03 d5 	nop
   801a4:	1f 20 03 d5 	nop
   801a8:	1f 20 03 d5 	nop
   801ac:	1f 20 03 d5 	nop
   801b0:	1f 20 03 d5 	nop
   801b4:	1f 20 03 d5 	nop
   801b8:	1f 20 03 d5 	nop
   801bc:	1f 20 03 d5 	nop
   801c0:	1f 20 03 d5 	nop
   801c4:	1f 20 03 d5 	nop
   801c8:	1f 20 03 d5 	nop
   801cc:	1f 20 03 d5 	nop
   801d0:	1f 20 03 d5 	nop
   801d4:	1f 20 03 d5 	nop
   801d8:	1f 20 03 d5 	nop
   801dc:	1f 20 03 d5 	nop
   801e0:	1f 20 03 d5 	nop
   801e4:	1f 20 03 d5 	nop
   801e8:	61 f3 ff 54 	b.ne	#-404 <baremetal_pi::kernel_entry::hde21611ac9cec3ae+0x24>
   801ec:	eb 03 09 2a 	mov	w11, w9
   801f0:	0a 15 00 b9 	str	w10, [x8, #20]
   801f4:	6b 05 00 71 	subs	w11, w11, #1
   801f8:	1f 20 03 d5 	nop
   801fc:	1f 20 03 d5 	nop
   80200:	1f 20 03 d5 	nop
   80204:	1f 20 03 d5 	nop
   80208:	1f 20 03 d5 	nop
   8020c:	1f 20 03 d5 	nop
   80210:	1f 20 03 d5 	nop
   80214:	1f 20 03 d5 	nop
   80218:	1f 20 03 d5 	nop
   8021c:	1f 20 03 d5 	nop
   80220:	1f 20 03 d5 	nop
   80224:	1f 20 03 d5 	nop
   80228:	1f 20 03 d5 	nop
   8022c:	1f 20 03 d5 	nop
   80230:	1f 20 03 d5 	nop
   80234:	1f 20 03 d5 	nop
   80238:	1f 20 03 d5 	nop
   8023c:	1f 20 03 d5 	nop
   80240:	1f 20 03 d5 	nop
   80244:	1f 20 03 d5 	nop
   80248:	1f 20 03 d5 	nop
   8024c:	1f 20 03 d5 	nop
   80250:	1f 20 03 d5 	nop
   80254:	1f 20 03 d5 	nop
   80258:	1f 20 03 d5 	nop
   8025c:	1f 20 03 d5 	nop
   80260:	1f 20 03 d5 	nop
   80264:	1f 20 03 d5 	nop
   80268:	1f 20 03 d5 	nop
   8026c:	1f 20 03 d5 	nop
   80270:	1f 20 03 d5 	nop
   80274:	1f 20 03 d5 	nop
   80278:	1f 20 03 d5 	nop
   8027c:	1f 20 03 d5 	nop
   80280:	1f 20 03 d5 	nop
   80284:	1f 20 03 d5 	nop
   80288:	1f 20 03 d5 	nop
   8028c:	1f 20 03 d5 	nop
   80290:	1f 20 03 d5 	nop
   80294:	1f 20 03 d5 	nop
   80298:	1f 20 03 d5 	nop
   8029c:	1f 20 03 d5 	nop
   802a0:	1f 20 03 d5 	nop
   802a4:	1f 20 03 d5 	nop
   802a8:	1f 20 03 d5 	nop
   802ac:	1f 20 03 d5 	nop
   802b0:	1f 20 03 d5 	nop
   802b4:	1f 20 03 d5 	nop
   802b8:	1f 20 03 d5 	nop
   802bc:	1f 20 03 d5 	nop
   802c0:	1f 20 03 d5 	nop
   802c4:	1f 20 03 d5 	nop
   802c8:	1f 20 03 d5 	nop
   802cc:	1f 20 03 d5 	nop
   802d0:	1f 20 03 d5 	nop
   802d4:	1f 20 03 d5 	nop
   802d8:	1f 20 03 d5 	nop
   802dc:	1f 20 03 d5 	nop
   802e0:	1f 20 03 d5 	nop
   802e4:	1f 20 03 d5 	nop
   802e8:	1f 20 03 d5 	nop
   802ec:	1f 20 03 d5 	nop
   802f0:	1f 20 03 d5 	nop
   802f4:	1f 20 03 d5 	nop
   802f8:	1f 20 03 d5 	nop
   802fc:	1f 20 03 d5 	nop
   80300:	1f 20 03 d5 	nop
   80304:	1f 20 03 d5 	nop
   80308:	1f 20 03 d5 	nop
   8030c:	1f 20 03 d5 	nop
   80310:	1f 20 03 d5 	nop
   80314:	1f 20 03 d5 	nop
   80318:	1f 20 03 d5 	nop
   8031c:	1f 20 03 d5 	nop
   80320:	1f 20 03 d5 	nop
   80324:	1f 20 03 d5 	nop
   80328:	1f 20 03 d5 	nop
   8032c:	1f 20 03 d5 	nop
   80330:	1f 20 03 d5 	nop
   80334:	1f 20 03 d5 	nop
   80338:	1f 20 03 d5 	nop
   8033c:	1f 20 03 d5 	nop
   80340:	1f 20 03 d5 	nop
   80344:	1f 20 03 d5 	nop
   80348:	1f 20 03 d5 	nop
   8034c:	1f 20 03 d5 	nop
   80350:	1f 20 03 d5 	nop
   80354:	1f 20 03 d5 	nop
   80358:	1f 20 03 d5 	nop
   8035c:	1f 20 03 d5 	nop
   80360:	1f 20 03 d5 	nop
   80364:	1f 20 03 d5 	nop
   80368:	1f 20 03 d5 	nop
   8036c:	1f 20 03 d5 	nop
   80370:	1f 20 03 d5 	nop
   80374:	1f 20 03 d5 	nop
   80378:	1f 20 03 d5 	nop
   8037c:	1f 20 03 d5 	nop
   80380:	1f 20 03 d5 	nop
   80384:	1f 20 03 d5 	nop
   80388:	61 f3 ff 54 	b.ne	#-404 <baremetal_pi::kernel_entry::hde21611ac9cec3ae+0x1c4>
   8038c:	30 ff ff 17 	b	#-832 <baremetal_pi::kernel_entry::hde21611ac9cec3ae+0x1c>

0000000000080390 main:
   80390:	28 ff ff 97 	bl	#-864 <baremetal_pi::kernel_entry::hde21611ac9cec3ae>
   80394:	20 00 20 d4 	brk	#0x1

0000000000080398 reset:
   80398:	08 00 00 90 	adrp	x8, #0
   8039c:	08 41 0f 91 	add	x8, x8, #976
   803a0:	09 00 00 90 	adrp	x9, #0
   803a4:	29 41 0f 91 	add	x9, x9, #976
   803a8:	3f 01 08 eb 	cmp	x9, x8
   803ac:	c2 00 00 54 	b.hs	#24 <reset+0x2c>
   803b0:	09 00 00 90 	adrp	x9, #0
   803b4:	29 41 0f 91 	add	x9, x9, #976
   803b8:	3f 85 00 f8 	str	xzr, [x9], #8
   803bc:	3f 01 08 eb 	cmp	x9, x8
   803c0:	c3 ff ff 54 	b.lo	#-8 <reset+0x20>
   803c4:	f3 ff ff 97 	bl	#-52 <main>
   803c8:	20 00 20 d4 	brk	#0x1
