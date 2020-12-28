
registers:	file format elf32-littlearm


Disassembly of section .text:

08000188 <Reset>:
 8000188:      	push	{r7, lr}
 800018a:      	mov	r7, sp
 800018c:      	bl	#0xe92
 8000190:      	movw	r0, #0x4
 8000194:      	movw	r1, #0x0
 8000198:      	movt	r0, #0x2000
 800019c:      	movt	r1, #0x2000
 80001a0:      	cmp	r1, r0
 80001a2:      	bhs	#0x28 <Reset+0x46>
 80001a4:      	movw	r1, #0x0
 80001a8:      	movs	r2, #0x0
 80001aa:      	movt	r1, #0x2000
 80001ae:      	str	r2, [r1], #4
 80001b2:      	cmp	r1, r0
 80001b4:      	itt	lo
 80001b6:      	strlo	r2, [r1], #4
 80001ba:      	cmplo	r1, r0
 80001bc:      	bhs	#0xe <Reset+0x46>
 80001be:      	str	r2, [r1], #4
 80001c2:      	cmp	r1, r0
 80001c4:      	bhs	#0x6 <Reset+0x46>
 80001c6:      	str	r2, [r1], #4
 80001ca:      	cmp	r1, r0
 80001cc:      	blo	#-0x22 <Reset+0x26>
 80001ce:      	movw	r0, #0x0
 80001d2:      	movw	r1, #0x0
 80001d6:      	movt	r0, #0x2000
 80001da:      	movt	r1, #0x2000
 80001de:      	cmp	r1, r0
 80001e0:      	bhs	#0x38 <Reset+0x94>
 80001e2:      	movw	r1, #0x140c
 80001e6:      	movw	r2, #0x0
 80001ea:      	movt	r1, #0x800
 80001ee:      	movt	r2, #0x2000
 80001f2:      	ldr	r3, [r1]
 80001f4:      	str	r3, [r2], #4
 80001f8:      	cmp	r2, r0
 80001fa:      	bhs	#0x1e <Reset+0x94>
 80001fc:      	ldr	r3, [r1, #0x4]
 80001fe:      	str	r3, [r2], #4
 8000202:      	cmp	r2, r0
 8000204:      	bhs	#0x14 <Reset+0x94>
 8000206:      	ldr	r3, [r1, #0x8]
 8000208:      	str	r3, [r2], #4
 800020c:      	cmp	r2, r0
 800020e:      	bhs	#0xa <Reset+0x94>
 8000210:      	ldr	r3, [r1, #0xc]
 8000212:      	adds	r1, #0x10
 8000214:      	str	r3, [r2], #4
 8000218:      	cmp	r2, r0
 800021a:      	blo	#-0x2c <Reset+0x6a>
 800021c:      	movw	r0, #0xed88
 8000220:      	movt	r0, #0xe000
 8000224:      	ldr	r1, [r0]
 8000226:      	orr	r1, r1, #0xf00000
 800022a:      	str	r1, [r0]
 800022c:      	bl	#0xde6
 8000230:      	trap

08000232 <main>:
 8000232:      	push	{r7, lr}
 8000234:      	mov	r7, sp
 8000236:      	bl	#0x2
 800023a:      	trap

0800023c <registers::__cortex_m_rt_main::h3be7bc15945145fb>:
 800023c:      	push	{r7, lr}
 800023e:      	mov	r7, sp
 8000240:      	bl	#0x22
 8000244:      	movw	r0, #0x1018
 8000248:      	mov.w	r1, #0x200
 800024c:      	movt	r0, #0x4800
 8000250:      	str	r1, [r0]
 8000252:      	mov.w	r1, #0x800
 8000256:      	str	r1, [r0]
 8000258:      	mov.w	r1, #0x2000000
 800025c:      	str	r1, [r0]
 800025e:      	mov.w	r1, #0x8000000
 8000262:      	str	r1, [r0]
 8000264:      	b	#-0x4 <registers::__cortex_m_rt_main::h3be7bc15945145fb+0x28>

08000266 <aux7::init::h31c400847965e476>:
 8000266:      	push	{r4, r5, r6, r7, lr}
 8000268:      	add	r7, sp, #0xc
 800026a:      	str	r11, [sp, #-4]!
 800026e:      	bl	#0xfca
 8000272:      	and	r5, r0, #0x1
 8000276:      	bl	#0xfba
 800027a:      	movw	r4, #0x0
 800027e:      	movt	r4, #0x2000
 8000282:      	ldrb	r0, [r4, #0x1]
 8000284:      	cmp	r0, #0x0
 8000286:      	itte	eq
 8000288:      	moveq	r6, #0x1
 800028a:      	strbeq	r6, [r4, #0x1]
 800028c:      	movne	r6, #0x0
 800028e:      	cmp	r5, #0x0
 8000290:      	it	eq
 8000292:      	bleq	#0xfa2
 8000296:      	cmp	r6, #0x0
 8000298:      	beq.w	#0x104 <aux7::init::h31c400847965e476+0x13a>
 800029c:      	bl	#0xf9c
 80002a0:      	and	r5, r0, #0x1
 80002a4:      	bl	#0xf8c
 80002a8:      	ldrb	r0, [r4]
 80002aa:      	cmp	r0, #0x0
 80002ac:      	itte	eq
 80002ae:      	moveq	r6, #0x1
 80002b0:      	strbeq	r6, [r4]
 80002b2:      	movne	r6, #0x0
 80002b4:      	cmp	r5, #0x0
 80002b6:      	it	eq
 80002b8:      	bleq	#0xf7c
 80002bc:      	cmp	r6, #0x0
 80002be:      	itttt	ne
 80002c0:      	movwne	r0, #0x1028
 80002c4:      	movtne	r0, #0x4002
 80002c8:      	ldrne	r1, [r0, #-20]
 80002cc:      	orrne	r1, r1, #0x200000
 80002d0:      	itttt	ne
 80002d2:      	strne	r1, [r0, #-20]
 80002d6:      	ldrne	r1, [r0]
 80002d8:      	orrne	r1, r1, #0x200000
 80002dc:      	strne	r1, [r0]
 80002de:      	itttt	ne
 80002e0:      	ldrne	r1, [r0]
 80002e2:      	bicne	r1, r1, #0x200000
 80002e6:      	strne	r1, [r0]
 80002e8:      	movwne	r0, #0x1000
 80002ec:      	itttt	ne
 80002ee:      	movtne	r0, #0x4800
 80002f2:      	ldrne	r2, [r0]
 80002f4:      	movne	r1, #0x1
 80002f6:      	bfine	r2, r1, #18, #2
 80002fa:      	itttt	ne
 80002fc:      	strne	r2, [r0]
 80002fe:      	ldrne	r2, [r0, #0x4]
 8000300:      	bicne	r2, r2, #0x200
 8000304:      	strne	r2, [r0, #0x4]
 8000306:      	itttt	ne
 8000308:      	ldrne	r2, [r0]
 800030a:      	bfine	r2, r1, #20, #2
 800030e:      	strne	r2, [r0]
 8000310:      	ldrne	r2, [r0, #0x4]
 8000312:      	itttt	ne
 8000314:      	bicne	r2, r2, #0x400
 8000318:      	strne	r2, [r0, #0x4]
 800031a:      	ldrne	r2, [r0]
 800031c:      	bfine	r2, r1, #22, #2
 8000320:      	itttt	ne
 8000322:      	strne	r2, [r0]
 8000324:      	ldrne	r2, [r0, #0x4]
 8000326:      	bicne	r2, r2, #0x800
 800032a:      	strne	r2, [r0, #0x4]
 800032c:      	itttt	ne
 800032e:      	ldrne	r2, [r0]
 8000330:      	bfine	r2, r1, #24, #2
 8000334:      	strne	r2, [r0]
 8000336:      	ldrne	r2, [r0, #0x4]
 8000338:      	itttt	ne
 800033a:      	bicne	r2, r2, #0x1000
 800033e:      	strne	r2, [r0, #0x4]
 8000340:      	ldrne	r2, [r0]
 8000342:      	bfine	r2, r1, #26, #2
 8000346:      	itttt	ne
 8000348:      	strne	r2, [r0]
 800034a:      	ldrne	r2, [r0, #0x4]
 800034c:      	bicne	r2, r2, #0x2000
 8000350:      	strne	r2, [r0, #0x4]
 8000352:      	itttt	ne
 8000354:      	ldrne	r2, [r0]
 8000356:      	bfine	r2, r1, #28, #2
 800035a:      	strne	r2, [r0]
 800035c:      	ldrne	r2, [r0, #0x4]
 800035e:      	itttt	ne
 8000360:      	bicne	r2, r2, #0x4000
 8000364:      	strne	r2, [r0, #0x4]
 8000366:      	ldrne	r2, [r0]
 8000368:      	bfine	r2, r1, #30, #2
 800036c:      	itttt	ne
 800036e:      	strne	r2, [r0]
 8000370:      	ldrne	r2, [r0, #0x4]
 8000372:      	bicne	r2, r2, #0x8000
 8000376:      	strne	r2, [r0, #0x4]
 8000378:      	itttt	ne
 800037a:      	ldrne	r2, [r0]
 800037c:      	bfine	r2, r1, #16, #2
 8000380:      	strne	r2, [r0]
 8000382:      	ldrne	r1, [r0, #0x4]
 8000384:      	itttt	ne
 8000386:      	bicne	r1, r1, #0x100
 800038a:      	strne	r1, [r0, #0x4]
 800038c:      	ldrne	r11, [sp], #4
 8000390:      	popne	{r4, r5, r6, r7, pc}
 8000392:      	movw	r0, #0x1294
 8000396:      	movt	r0, #0x800
 800039a:      	bl	#0x14
 800039e:      	trap
 80003a0:      	movw	r0, #0x1284
 80003a4:      	movt	r0, #0x800
 80003a8:      	bl	#0x6
 80003ac:      	trap

080003ae <core::ops::function::FnOnce::call_once::h5db7766b92da0352>:
 80003ae:      	ldr	r0, [r0]
 80003b0:      	b	#-0x4 <core::ops::function::FnOnce::call_once::h5db7766b92da0352+0x2>

080003b2 <core::panicking::panic::he8552e8d3d2cbe3a>:
 80003b2:      	push	{r7, lr}
 80003b4:      	mov	r7, sp
 80003b6:      	sub	sp, #0x20
 80003b8:      	movw	r2, #0x13e0
 80003bc:      	mov	r1, r0
 80003be:      	movs	r0, #0x0
 80003c0:      	movt	r2, #0x800
 80003c4:      	str	r0, [sp, #0x14]
 80003c6:      	str	r2, [sp, #0x10]
 80003c8:      	strd	r0, r0, [sp, #8]
 80003cc:      	movs	r0, #0x1
 80003ce:      	str	r0, [sp, #0x4]
 80003d0:      	add	r0, sp, #0x18
 80003d2:      	str	r0, [sp]
 80003d4:      	movs	r0, #0x2b
 80003d6:      	str	r0, [sp, #0x1c]
 80003d8:      	movw	r0, #0x1258
 80003dc:      	movt	r0, #0x800
 80003e0:      	str	r0, [sp, #0x18]
 80003e2:      	mov	r0, sp
 80003e4:      	bl	#0x298
 80003e8:      	trap
 80003ea:      	bmi	#-0x58 <aux7::init::h31c400847965e476+0x130>

080003ec <core::fmt::num::imp::<impl core::fmt::Display for u32>::fmt::h720dbf9c56765265>:
 80003ec:      	push	{r4, r5, r6, r7, lr}
 80003ee:      	add	r7, sp, #0xc
 80003f0:      	push.w	{r8, r9, r10, r11}
 80003f4:      	sub	sp, #0x34
 80003f6:      	ldr	r5, [r0]
 80003f8:      	movw	r0, #0x2710
 80003fc:      	movw	lr, #0x851f
 8000400:      	mov	r4, r1
 8000402:      	cmp	r5, r0
 8000404:      	movw	r0, #0x12dc
 8000408:      	movw	r3, #0xff9c
 800040c:      	movt	lr, #0x51eb
 8000410:      	movt	r0, #0x800
 8000414:      	blo	#0x78 <core::fmt::num::imp::<impl core::fmt::Display for u32>::fmt::h720dbf9c56765265+0xa4>
 8000416:      	movw	r8, #0x1759
 800041a:      	movw	r10, #0xd8f0
 800041e:      	movw	r12, #0xe0ff
 8000422:      	add.w	r11, sp, #0xc
 8000426:      	movs	r6, #0x0
 8000428:      	movt	r8, #0xd1b7
 800042c:      	movt	r10, #0xffff
 8000430:      	movt	r12, #0x5f5
 8000434:      	str	r4, [sp, #0x8]
 8000436:      	umull	r2, r4, r5, r8
 800043a:      	cmp	r5, r12
 800043c:      	lsr.w	r2, r4, #0xd
 8000440:      	mla	r4, r2, r10, r5
 8000444:      	mov	r5, r2
 8000446:      	uxth	r1, r4
 8000448:      	umull	r1, r9, r1, lr
 800044c:      	lsr.w	r1, r9, #0x5
 8000450:      	mla	r4, r1, r3, r4
 8000454:      	add.w	r3, r11, r6
 8000458:      	ldrh.w	r1, [r0, r1, lsl #1]
 800045c:      	sub.w	r6, r6, #0x4
 8000460:      	strh.w	r1, [r3, #0x23]
 8000464:      	uxth	r4, r4
 8000466:      	ldrh.w	r4, [r0, r4, lsl #1]
 800046a:      	strh.w	r4, [r3, #0x25]
 800046e:      	movw	r3, #0xff9c
 8000472:      	bhi	#-0x40 <core::fmt::num::imp::<impl core::fmt::Display for u32>::fmt::h720dbf9c56765265+0x4a>
 8000474:      	ldr	r4, [sp, #0x8]
 8000476:      	adds	r6, #0x27
 8000478:      	mov	r5, r2
 800047a:      	cmp	r5, #0x63
 800047c:      	bgt	#0x16 <core::fmt::num::imp::<impl core::fmt::Display for u32>::fmt::h720dbf9c56765265+0xaa>
 800047e:      	mov	r1, r5
 8000480:      	cmp	r1, #0xa
 8000482:      	blt	#0x2c <core::fmt::num::imp::<impl core::fmt::Display for u32>::fmt::h720dbf9c56765265+0xc6>
 8000484:      	ldrh.w	r0, [r0, r1, lsl #1]
 8000488:      	subs	r2, r6, #0x2
 800048a:      	add	r1, sp, #0xc
 800048c:      	strh	r0, [r1, r2]
 800048e:      	b	#0x2a <core::fmt::num::imp::<impl core::fmt::Display for u32>::fmt::h720dbf9c56765265+0xd0>
 8000490:      	movs	r6, #0x27
 8000492:      	cmp	r5, #0x63
 8000494:      	ble	#-0x1a <core::fmt::num::imp::<impl core::fmt::Display for u32>::fmt::h720dbf9c56765265+0x92>
 8000496:      	uxth	r1, r5
 8000498:      	subs	r6, #0x2
 800049a:      	umull	r1, r2, r1, lr
 800049e:      	lsrs	r1, r2, #0x5
 80004a0:      	mla	r2, r1, r3, r5
 80004a4:      	add	r3, sp, #0xc
 80004a6:      	uxth	r2, r2
 80004a8:      	ldrh.w	r2, [r0, r2, lsl #1]
 80004ac:      	strh	r2, [r3, r6]
 80004ae:      	cmp	r1, #0xa
 80004b0:      	bge	#-0x30 <core::fmt::num::imp::<impl core::fmt::Display for u32>::fmt::h720dbf9c56765265+0x98>
 80004b2:      	subs	r2, r6, #0x1
 80004b4:      	add.w	r0, r1, #0x30
 80004b8:      	add	r1, sp, #0xc
 80004ba:      	strb	r0, [r1, r2]
 80004bc:      	ldr	r0, [r4]
 80004be:      	add	r1, sp, #0xc
 80004c0:      	movw	r6, #0x13e0
 80004c4:      	add.w	r8, r1, r2
 80004c8:      	rsb.w	r9, r2, #0x27
 80004cc:      	ldr	r3, [r4, #0x8]
 80004ce:      	lsls	r2, r0, #0x1d
 80004d0:      	movt	r6, #0x800
 80004d4:      	ands	r1, r0, #0x1
 80004d8:      	mov.w	r5, #0x2b
 80004dc:      	and.w	r10, r6, r2, asr #31
 80004e0:      	it	eq
 80004e2:      	moveq.w	r5, #0x110000
 80004e6:      	cmp	r3, #0x1
 80004e8:      	bne	#0x34 <$t.7+0x8>
 80004ea:      	str.w	r8, [sp, #0x8]
 80004ee:      	add.w	r11, r9, r1
 80004f2:      	ldr.w	r8, [r4, #0xc]
 80004f6:      	cmp	r8, r11
 80004f8:      	bls	#0x34 <$t.7+0x18>
 80004fa:      	lsls	r0, r0, #0x1c
 80004fc:      	bmi	#0x62 <$t.7+0x4a>
 80004fe:      	ldrb.w	r2, [r4, #0x20]
 8000502:      	sub.w	r1, r8, r11
 8000506:      	movs	r0, #0x0
 8000508:      	cmp	r2, #0x3
 800050a:      	it	eq
 800050c:      	moveq	r2, #0x1
 800050e:      	mov	r8, r1
 8000510:      	tbb	[pc, r2]

08000514 <$d.6>:
 8000514:	52 02 4e 02	.word	0x024e0252

08000518 <$t.7>:
 8000518:      	mov.w	r8, #0x0
 800051c:      	mov	r0, r1
 800051e:      	b	#0x96 <$t.9+0xe>
 8000520:      	mov	r0, r4
 8000522:      	mov	r1, r5
 8000524:      	mov	r2, r10
 8000526:      	bl	#0x190
 800052a:      	cbz	r0, #0x1c
 800052c:      	movs	r6, #0x1
 800052e:      	b	#0x50 <$t.7+0x6a>
 8000530:      	mov	r0, r4
 8000532:      	mov	r1, r5
 8000534:      	mov	r2, r10
 8000536:      	bl	#0x180
 800053a:      	cmp	r0, #0x0
 800053c:      	bne.w	#0xf6 <$t.9+0x8c>
 8000540:      	ldrd	r0, r1, [r4, #24]
 8000544:      	ldr	r3, [r1, #0xc]
 8000546:      	ldr	r1, [sp, #0x8]
 8000548:      	b	#0x6 <$t.7+0x3a>
 800054a:      	ldrd	r0, r1, [r4, #24]
 800054e:      	ldr	r3, [r1, #0xc]
 8000550:      	mov	r1, r8
 8000552:      	mov	r2, r9
 8000554:      	blx	r3
 8000556:      	mov	r6, r0
 8000558:      	mov	r0, r6
 800055a:      	add	sp, #0x34
 800055c:      	pop.w	{r8, r9, r10, r11}
 8000560:      	pop	{r4, r5, r6, r7, pc}
 8000562:      	ldr	r0, [r4, #0x4]
 8000564:      	movs	r6, #0x1
 8000566:      	ldrb.w	r1, [r4, #0x20]
 800056a:      	mov	r2, r10
 800056c:      	str	r0, [sp, #0x4]
 800056e:      	movs	r0, #0x30
 8000570:      	str	r1, [sp]
 8000572:      	mov	r1, r5
 8000574:      	str	r0, [r4, #0x4]
 8000576:      	mov	r0, r4
 8000578:      	strb.w	r6, [r4, #0x20]
 800057c:      	bl	#0x13a
 8000580:      	cbz	r0, #0x8
 8000582:      	mov	r0, r6
 8000584:      	add	sp, #0x34
 8000586:      	pop.w	{r8, r9, r10, r11}
 800058a:      	pop	{r4, r5, r6, r7, pc}
 800058c:      	ldrb.w	r2, [r4, #0x20]
 8000590:      	sub.w	r1, r8, r11
 8000594:      	movs	r0, #0x0
 8000596:      	cmp	r2, #0x3
 8000598:      	it	eq
 800059a:      	moveq	r2, #0x1
 800059c:      	mov	r6, r1
 800059e:      	ldr.w	r8, [sp, #0x8]
 80005a2:      	tbb	[pc, r2]

080005a6 <$d.8>:
 80005a6:	34 02 31 02	.word	0x02310234

080005aa <$t.9>:
 80005aa:      	movs	r6, #0x0
 80005ac:      	mov	r0, r1
 80005ae:      	b	#0x5c <$t.9+0x64>
 80005b0:      	lsrs	r0, r1, #0x1
 80005b2:      	adds	r1, #0x1
 80005b4:      	lsr.w	r8, r1, #0x1
 80005b8:      	adds	r6, r0, #0x1
 80005ba:      	subs	r6, #0x1
 80005bc:      	beq	#0xe <$t.9+0x24>
 80005be:      	ldrd	r0, r2, [r4, #24]
 80005c2:      	ldr	r1, [r4, #0x4]
 80005c4:      	ldr	r2, [r2, #0x10]
 80005c6:      	blx	r2
 80005c8:      	cmp	r0, #0x0
 80005ca:      	beq	#-0x14 <$t.9+0x10>
 80005cc:      	b	#0x66 <$t.9+0x8c>
 80005ce:      	mov	r0, r4
 80005d0:      	mov	r1, r5
 80005d2:      	mov	r2, r10
 80005d4:      	ldr.w	r11, [r4, #0x4]
 80005d8:      	bl	#0xde
 80005dc:      	cbnz	r0, #0x56
 80005de:      	ldrd	r0, r1, [r4, #24]
 80005e2:      	mov	r2, r9
 80005e4:      	ldr	r3, [r1, #0xc]
 80005e6:      	ldr	r1, [sp, #0x8]
 80005e8:      	blx	r3
 80005ea:      	cbnz	r0, #0x48
 80005ec:      	ldrd	r10, r4, [r4, #24]
 80005f0:      	add.w	r5, r8, #0x1
 80005f4:      	movs	r6, #0x1
 80005f6:      	subs	r5, #0x1
 80005f8:      	beq	#0x62 <$t.9+0xb4>
 80005fa:      	ldr	r2, [r4, #0x10]
 80005fc:      	mov	r0, r10
 80005fe:      	mov	r1, r11
 8000600:      	blx	r2
 8000602:      	cmp	r0, #0x0
 8000604:      	beq	#-0x12 <$t.9+0x4c>
 8000606:      	b	#-0x88 <$t.7+0x6a>
 8000608:      	lsrs	r0, r1, #0x1
 800060a:      	adds	r1, #0x1
 800060c:      	lsrs	r6, r1, #0x1
 800060e:      	adds	r5, r0, #0x1
 8000610:      	subs	r5, #0x1
 8000612:      	beq	#0xe <$t.9+0x7a>
 8000614:      	ldrd	r0, r2, [r4, #24]
 8000618:      	ldr	r1, [r4, #0x4]
 800061a:      	ldr	r2, [r2, #0x10]
 800061c:      	blx	r2
 800061e:      	cmp	r0, #0x0
 8000620:      	beq	#-0x14 <$t.9+0x66>
 8000622:      	b	#0x10 <$t.9+0x8c>
 8000624:      	ldrd	r0, r1, [r4, #24]
 8000628:      	mov	r2, r9
 800062a:      	ldr	r3, [r1, #0xc]
 800062c:      	mov	r1, r8
 800062e:      	ldr.w	r10, [r4, #0x4]
 8000632:      	blx	r3
 8000634:      	cbz	r0, #0xa
 8000636:      	movs	r6, #0x1
 8000638:      	mov	r0, r6
 800063a:      	add	sp, #0x34
 800063c:      	pop.w	{r8, r9, r10, r11}
 8000640:      	pop	{r4, r5, r6, r7, pc}
 8000642:      	ldrd	r8, r9, [r4, #24]
 8000646:      	adds	r5, r6, #0x1
 8000648:      	movs	r6, #0x1
 800064a:      	subs	r5, #0x1
 800064c:      	beq	#0x1a <$t.9+0xc0>
 800064e:      	ldr.w	r2, [r9, #0x10]
 8000652:      	mov	r0, r8
 8000654:      	mov	r1, r10
 8000656:      	blx	r2
 8000658:      	cmp	r0, #0x0
 800065a:      	beq	#-0x14 <$t.9+0xa0>
 800065c:      	b	#-0xde <$t.7+0x6a>
 800065e:      	movs	r6, #0x0
 8000660:      	mov	r0, r6
 8000662:      	add	sp, #0x34
 8000664:      	pop.w	{r8, r9, r10, r11}
 8000668:      	pop	{r4, r5, r6, r7, pc}
 800066a:      	ldr	r0, [sp]
 800066c:      	movs	r6, #0x0
 800066e:      	strb.w	r0, [r4, #0x20]
 8000672:      	ldr	r0, [sp, #0x4]
 8000674:      	str	r0, [r4, #0x4]
 8000676:      	mov	r0, r6
 8000678:      	add	sp, #0x34
 800067a:      	pop.w	{r8, r9, r10, r11}
 800067e:      	pop	{r4, r5, r6, r7, pc}

08000680 <core::panicking::panic_fmt::h3d4fe709119df940>:
 8000680:      	push	{r7, lr}
 8000682:      	mov	r7, sp
 8000684:      	sub	sp, #0x10
 8000686:      	strd	r0, r1, [sp, #8]
 800068a:      	movw	r0, #0x12cc
 800068e:      	movt	r0, #0x800
 8000692:      	str	r0, [sp, #0x4]
 8000694:      	movw	r0, #0x13e0
 8000698:      	movt	r0, #0x800
 800069c:      	str	r0, [sp]
 800069e:      	mov	r0, sp
 80006a0:      	bl	#0x980
 80006a4:      	trap

080006a6 <core::ptr::drop_in_place::h04a129b24451d075>:
 80006a6:      	bx	lr

080006a8 <<T as core::any::Any>::type_id::hffc3b5436e52a86a>:
 80006a8:      	movw	r0, #0xc5a9
 80006ac:      	movw	r1, #0x6b5c
 80006b0:      	movt	r0, #0x6065
 80006b4:      	movt	r1, #0x3bd4
 80006b8:      	bx	lr

080006ba <core::fmt::Formatter::pad_integral::write_prefix::h43274d4e4dd7a787>:
 80006ba:      	push	{r4, r5, r7, lr}
 80006bc:      	add	r7, sp, #0x8
 80006be:      	mov	r4, r2
 80006c0:      	mov	r5, r0
 80006c2:      	cmp.w	r1, #0x110000
 80006c6:      	beq	#0xc <core::fmt::Formatter::pad_integral::write_prefix::h43274d4e4dd7a787+0x1c>
 80006c8:      	ldrd	r0, r2, [r5, #24]
 80006cc:      	ldr	r2, [r2, #0x10]
 80006ce:      	blx	r2
 80006d0:      	cbz	r0, #0x2
 80006d2:      	movs	r0, #0x1
 80006d4:      	pop	{r4, r5, r7, pc}
 80006d6:      	cbz	r4, #0xe
 80006d8:      	ldrd	r0, r1, [r5, #24]
 80006dc:      	movs	r2, #0x0
 80006de:      	ldr	r3, [r1, #0xc]
 80006e0:      	mov	r1, r4
 80006e2:      	pop.w	{r4, r5, r7, lr}
 80006e6:      	bx	r3
 80006e8:      	movs	r0, #0x0
 80006ea:      	pop	{r4, r5, r7, pc}

080006ec <core::fmt::Formatter::pad::hdd2f8bc43cf2bd72>:
 80006ec:      	push	{r4, r5, r6, r7, lr}
 80006ee:      	add	r7, sp, #0xc
 80006f0:      	push.w	{r8, r9, r10, r11}
 80006f4:      	sub	sp, #0xc
 80006f6:      	ldr.w	lr, [r0, #0x8]
 80006fa:      	mov	r10, r0
 80006fc:      	ldr	r0, [r0, #0x10]
 80006fe:      	mov	r9, r2
 8000700:      	mov	r6, r1
 8000702:      	cmp.w	lr, #0x1
 8000706:      	bne	#0x1e <core::fmt::Formatter::pad::hdd2f8bc43cf2bd72+0x3c>
 8000708:      	cmp	r0, #0x1
 800070a:      	beq	#0x20 <core::fmt::Formatter::pad::hdd2f8bc43cf2bd72+0x42>
 800070c:      	cmp.w	r9, #0x0
 8000710:      	beq.w	#0x4e8 <core::fmt::Formatter::pad::hdd2f8bc43cf2bd72+0x510>
 8000714:      	sub.w	r8, r9, #0x1
 8000718:      	and	r4, r9, #0x3
 800071c:      	cmp.w	r8, #0x3
 8000720:      	bhs	#0xc0 <core::fmt::Formatter::pad::hdd2f8bc43cf2bd72+0xf8>
 8000722:      	movs	r3, #0x0
 8000724:      	mov	r1, r6
 8000726:      	b	#0x2ce <core::fmt::Formatter::pad::hdd2f8bc43cf2bd72+0x30c>
 8000728:      	cmp	r0, #0x1
 800072a:      	bne.w	#0x4dc <core::fmt::Formatter::pad::hdd2f8bc43cf2bd72+0x51e>
 800072e:      	ldr.w	r3, [r10, #0x14]
 8000732:      	add.w	r5, r6, r9
 8000736:      	movs	r2, #0x0
 8000738:      	str	r6, [sp, #0x8]
 800073a:      	cbnz	r3, #0x4c
 800073c:      	cmp	r5, r6
 800073e:      	beq.w	#0x4a4 <core::fmt::Formatter::pad::hdd2f8bc43cf2bd72+0x4fa>
 8000742:      	mov	r1, r6
 8000744:      	ldrsb	r0, [r1], #1
 8000748:      	cmp.w	r0, #0xffffffff
 800074c:      	ble	#0xb8 <core::fmt::Formatter::pad::hdd2f8bc43cf2bd72+0x11c>
 800074e:      	ldr	r6, [sp, #0x8]
 8000750:      	cmp	r2, #0x0
 8000752:      	it	ne
 8000754:      	cmpne	r2, r9
 8000756:      	bne.w	#0x1e8 <core::fmt::Formatter::pad::hdd2f8bc43cf2bd72+0x256>
 800075a:      	mov	r0, r6
 800075c:      	b	#0x1f4 <core::fmt::Formatter::pad::hdd2f8bc43cf2bd72+0x268>
 800075e:      	ldrb	r6, [r1], #1
 8000762:      	and	r8, r6, #0x3f
 8000766:      	mov	r6, r1
 8000768:      	mov.w	r1, #0x1c0000
 800076c:      	and.w	r0, r1, r0, lsl #18
 8000770:      	orr.w	r0, r0, r11, lsl #12
 8000774:      	orr.w	r0, r0, r12, lsl #6
 8000778:      	add	r0, r8
 800077a:      	cmp.w	r0, #0x110000
 800077e:      	beq.w	#0x464 <core::fmt::Formatter::pad::hdd2f8bc43cf2bd72+0x4fa>
 8000782:      	subs	r0, r6, r4
 8000784:      	subs	r3, #0x1
 8000786:      	add	r2, r0
 8000788:      	beq	#-0x50 <core::fmt::Formatter::pad::hdd2f8bc43cf2bd72+0x50>
 800078a:      	cmp	r5, r6
 800078c:      	beq.w	#0x456 <core::fmt::Formatter::pad::hdd2f8bc43cf2bd72+0x4fa>
 8000790:      	mov	r4, r6
 8000792:      	ldrsb	r0, [r6], #1
 8000796:      	cmp.w	r0, #0xffffffff
 800079a:      	bgt	#-0x1c <core::fmt::Formatter::pad::hdd2f8bc43cf2bd72+0x96>
 800079c:      	uxtb	r0, r0
 800079e:      	cmp	r6, r5
 80007a0:      	beq	#0xe <core::fmt::Formatter::pad::hdd2f8bc43cf2bd72+0xc6>
 80007a2:      	ldrb	r1, [r4, #0x1]
 80007a4:      	adds	r6, r4, #0x2
 80007a6:      	and	r11, r1, #0x3f
 80007aa:      	mov	r1, r6
 80007ac:      	cmp	r0, #0xe0
 80007ae:      	blo	#-0x30 <core::fmt::Formatter::pad::hdd2f8bc43cf2bd72+0x96>
 80007b0:      	b	#0x8 <core::fmt::Formatter::pad::hdd2f8bc43cf2bd72+0xd0>
 80007b2:      	mov.w	r11, #0x0
 80007b6:      	mov	r1, r5
 80007b8:      	cmp	r0, #0xe0
 80007ba:      	blo	#-0x3c <core::fmt::Formatter::pad::hdd2f8bc43cf2bd72+0x96>
 80007bc:      	cmp	r1, r5
 80007be:      	beq	#0xe <core::fmt::Formatter::pad::hdd2f8bc43cf2bd72+0xe4>
 80007c0:      	ldrb	r6, [r1], #1
 80007c4:      	and	r12, r6, #0x3f
 80007c8:      	mov	r6, r1
 80007ca:      	cmp	r0, #0xf0
 80007cc:      	blo	#-0x4e <core::fmt::Formatter::pad::hdd2f8bc43cf2bd72+0x96>
 80007ce:      	b	#0x8 <core::fmt::Formatter::pad::hdd2f8bc43cf2bd72+0xee>
 80007d0:      	mov.w	r12, #0x0
 80007d4:      	mov	r1, r5
 80007d6:      	cmp	r0, #0xf0
 80007d8:      	blo	#-0x5a <core::fmt::Formatter::pad::hdd2f8bc43cf2bd72+0x96>
 80007da:      	cmp	r1, r5
 80007dc:      	bne	#-0x82 <core::fmt::Formatter::pad::hdd2f8bc43cf2bd72+0x72>
 80007de:      	mov.w	r8, #0x0
 80007e2:      	b	#-0x7e <core::fmt::Formatter::pad::hdd2f8bc43cf2bd72+0x7c>
 80007e4:      	sub.w	r0, r9, #0x4
 80007e8:      	bic	r1, r0, #0x3
 80007ec:      	movs	r0, #0x1
 80007ee:      	cmp	r1, #0xc
 80007f0:      	add.w	r0, r0, r1, lsr #2
 80007f4:      	and	r12, r0, #0x3
 80007f8:      	bhs	#0x26 <core::fmt::Formatter::pad::hdd2f8bc43cf2bd72+0x136>
 80007fa:      	movs	r3, #0x0
 80007fc:      	mov	r1, r6
 80007fe:      	cmp.w	r12, #0x0
 8000802:      	bne.w	#0x100 <core::fmt::Formatter::pad::hdd2f8bc43cf2bd72+0x21a>
 8000806:      	b	#0x1ee <core::fmt::Formatter::pad::hdd2f8bc43cf2bd72+0x30c>
 8000808:      	uxtb	r0, r0
 800080a:      	cmp	r1, r5
 800080c:      	beq.w	#0x194 <core::fmt::Formatter::pad::hdd2f8bc43cf2bd72+0x2b8>
 8000810:      	ldrb	r3, [r6, #0x1]
 8000812:      	adds	r1, r6, #0x2
 8000814:      	and	r3, r3, #0x3f
 8000818:      	lsls	r3, r3, #0x6
 800081a:      	cmp	r0, #0xe0
 800081c:      	bhs.w	#0x18e <core::fmt::Formatter::pad::hdd2f8bc43cf2bd72+0x2c2>
 8000820:      	b	#-0xd6 <core::fmt::Formatter::pad::hdd2f8bc43cf2bd72+0x62>
 8000822:      	bic	r0, r0, #0x3
 8000826:      	movs	r3, #0x0
 8000828:      	rsbs	r0, r0, #0
 800082a:      	mov	r1, r6
 800082c:      	str	r4, [sp, #0x4]
 800082e:      	str	r6, [sp, #0x8]
 8000830:      	ldrb	r4, [r1]
 8000832:      	ldrb	r5, [r1, #0x1]
 8000834:      	ldrb	r2, [r1, #0x2]
 8000836:      	and	lr, r4, #0xc0
 800083a:      	ldrb	r6, [r1, #0x3]
 800083c:      	cmp.w	lr, #0x80
 8000840:      	ldrb.w	r11, [r1, #0xf]
 8000844:      	and	r5, r5, #0xc0
 8000848:      	ldrb	r4, [r1, #0xe]
 800084a:      	it	eq
 800084c:      	addeq	r3, #0x1
 800084e:      	ldrb.w	lr, [r1, #0xd]
 8000852:      	cmp	r5, #0x80
 8000854:      	it	eq
 8000856:      	addeq	r3, #0x1
 8000858:      	and	r2, r2, #0xc0
 800085c:      	ldrb	r5, [r1, #0x4]
 800085e:      	cmp	r2, #0x80
 8000860:      	it	eq
 8000862:      	addeq	r3, #0x1
 8000864:      	and	r2, r6, #0xc0
 8000868:      	ldrb	r6, [r1, #0x5]
 800086a:      	cmp	r2, #0x80
 800086c:      	it	eq
 800086e:      	addeq	r3, #0x1
 8000870:      	and	r2, r5, #0xc0
 8000874:      	ldrb	r5, [r1, #0x6]
 8000876:      	cmp	r2, #0x80
 8000878:      	it	eq
 800087a:      	addeq	r3, #0x1
 800087c:      	and	r2, r6, #0xc0
 8000880:      	ldrb	r6, [r1, #0x7]
 8000882:      	cmp	r2, #0x80
 8000884:      	it	eq
 8000886:      	addeq	r3, #0x1
 8000888:      	and	r2, r5, #0xc0
 800088c:      	ldrb	r5, [r1, #0x8]
 800088e:      	cmp	r2, #0x80
 8000890:      	it	eq
 8000892:      	addeq	r3, #0x1
 8000894:      	and	r2, r6, #0xc0
 8000898:      	ldrb	r6, [r1, #0x9]
 800089a:      	cmp	r2, #0x80
 800089c:      	it	eq
 800089e:      	addeq	r3, #0x1
 80008a0:      	and	r2, r5, #0xc0
 80008a4:      	ldrb	r5, [r1, #0xa]
 80008a6:      	cmp	r2, #0x80
 80008a8:      	it	eq
 80008aa:      	addeq	r3, #0x1
 80008ac:      	and	r2, r6, #0xc0
 80008b0:      	cmp	r2, #0x80
 80008b2:      	ldrb	r6, [r1, #0xc]
 80008b4:      	it	eq
 80008b6:      	addeq	r3, #0x1
 80008b8:      	and	r2, r5, #0xc0
 80008bc:      	ldrb	r5, [r1, #0xb]
 80008be:      	cmp	r2, #0x80
 80008c0:      	it	eq
 80008c2:      	addeq	r3, #0x1
 80008c4:      	adds	r1, #0x10
 80008c6:      	and	r2, r5, #0xc0
 80008ca:      	cmp	r2, #0x80
 80008cc:      	and	r2, r6, #0xc0
 80008d0:      	it	eq
 80008d2:      	addeq	r3, #0x1
 80008d4:      	cmp	r2, #0x80
 80008d6:      	and	r2, lr, #0xc0
 80008da:      	it	eq
 80008dc:      	addeq	r3, #0x1
 80008de:      	cmp	r2, #0x80
 80008e0:      	and	r2, r4, #0xc0
 80008e4:      	it	eq
 80008e6:      	addeq	r3, #0x1
 80008e8:      	cmp	r2, #0x80
 80008ea:      	and	r2, r11, #0xc0
 80008ee:      	it	eq
 80008f0:      	addeq	r3, #0x1
 80008f2:      	cmp	r2, #0x80
 80008f4:      	it	eq
 80008f6:      	addeq	r3, #0x1
 80008f8:      	adds	r0, #0x4
 80008fa:      	bne	#-0xce <core::fmt::Formatter::pad::hdd2f8bc43cf2bd72+0x144>
 80008fc:      	ldrd	r4, r6, [sp, #4]
 8000900:      	cmp.w	r12, #0x0
 8000904:      	beq	#0xf0 <core::fmt::Formatter::pad::hdd2f8bc43cf2bd72+0x30c>
 8000906:      	ldrb	r0, [r1]
 8000908:      	mov	lr, r6
 800090a:      	ldrb	r2, [r1, #0x1]
 800090c:      	and	r0, r0, #0xc0
 8000910:      	ldrb	r6, [r1, #0x2]
 8000912:      	cmp	r0, #0x80
 8000914:      	ldrb	r5, [r1, #0x3]
 8000916:      	and	r0, r2, #0xc0
 800091a:      	it	eq
 800091c:      	addeq	r3, #0x1
 800091e:      	cmp	r0, #0x80
 8000920:      	and	r0, r6, #0xc0
 8000924:      	it	eq
 8000926:      	addeq	r3, #0x1
 8000928:      	cmp	r0, #0x80
 800092a:      	and	r0, r5, #0xc0
 800092e:      	it	eq
 8000930:      	addeq	r3, #0x1
 8000932:      	cmp	r0, #0x80
 8000934:      	it	eq
 8000936:      	addeq	r3, #0x1
 8000938:      	cmp.w	r12, #0x1
 800093c:      	bne	#0x2a <core::fmt::Formatter::pad::hdd2f8bc43cf2bd72+0x27e>
 800093e:      	adds	r1, #0x4
 8000940:      	b	#0xb2 <core::fmt::Formatter::pad::hdd2f8bc43cf2bd72+0x30a>
 8000942:      	cmp	r2, r9
 8000944:      	bhs	#0x8 <core::fmt::Formatter::pad::hdd2f8bc43cf2bd72+0x264>
 8000946:      	ldrsb	r0, [r6, r2]
 8000948:      	cmn.w	r0, #0x40
 800094c:      	bge.w	#-0x1f6 <core::fmt::Formatter::pad::hdd2f8bc43cf2bd72+0x6e>
 8000950:      	movs	r0, #0x0
 8000952:      	movs	r2, #0x0
 8000954:      	cmp	r0, #0x0
 8000956:      	ite	eq
 8000958:      	moveq	r2, r9
 800095a:      	movne	r6, r0
 800095c:      	cmp.w	lr, #0x1
 8000960:      	beq.w	#0x28e <core::fmt::Formatter::pad::hdd2f8bc43cf2bd72+0x506>
 8000964:      	ldrd	r0, r1, [r10, #24]
 8000968:      	b	#0x2a8 <core::fmt::Formatter::pad::hdd2f8bc43cf2bd72+0x528>
 800096a:      	ldrb	r0, [r1, #0x4]
 800096c:      	ldrb	r2, [r1, #0x5]
 800096e:      	and	r0, r0, #0xc0
 8000972:      	ldrb	r6, [r1, #0x6]
 8000974:      	cmp	r0, #0x80
 8000976:      	ldrb	r5, [r1, #0x7]
 8000978:      	and	r0, r2, #0xc0
 800097c:      	it	eq
 800097e:      	addeq	r3, #0x1
 8000980:      	cmp	r0, #0x80
 8000982:      	and	r0, r6, #0xc0
 8000986:      	it	eq
 8000988:      	addeq	r3, #0x1
 800098a:      	cmp	r0, #0x80
 800098c:      	and	r0, r5, #0xc0
 8000990:      	it	eq
 8000992:      	addeq	r3, #0x1
 8000994:      	cmp	r0, #0x80
 8000996:      	it	eq
 8000998:      	addeq	r3, #0x1
 800099a:      	cmp.w	r12, #0x2
 800099e:      	bne	#0x22 <core::fmt::Formatter::pad::hdd2f8bc43cf2bd72+0x2d8>
 80009a0:      	adds	r1, #0x8
 80009a2:      	b	#0x50 <core::fmt::Formatter::pad::hdd2f8bc43cf2bd72+0x30a>
 80009a4:      	movs	r3, #0x0
 80009a6:      	mov	r1, r5
 80009a8:      	cmp	r0, #0xe0
 80009aa:      	blo.w	#-0x260 <core::fmt::Formatter::pad::hdd2f8bc43cf2bd72+0x62>
 80009ae:      	cmp	r1, r5
 80009b0:      	beq.w	#0x204 <core::fmt::Formatter::pad::hdd2f8bc43cf2bd72+0x4cc>
 80009b4:      	ldrb	r6, [r1], #1
 80009b8:      	and	r6, r6, #0x3f
 80009bc:      	cmp	r0, #0xf0
 80009be:      	blo.w	#-0x274 <core::fmt::Formatter::pad::hdd2f8bc43cf2bd72+0x62>
 80009c2:      	b	#0x1fc <core::fmt::Formatter::pad::hdd2f8bc43cf2bd72+0x4d6>
 80009c4:      	ldrb	r0, [r1, #0x8]
 80009c6:      	ldrb	r2, [r1, #0x9]
 80009c8:      	and	r0, r0, #0xc0
 80009cc:      	ldrb	r6, [r1, #0xa]
 80009ce:      	ldrb	r5, [r1, #0xb]
 80009d0:      	cmp	r0, #0x80
 80009d2:      	it	eq
 80009d4:      	addeq	r3, #0x1
 80009d6:      	and	r0, r2, #0xc0
 80009da:      	cmp	r0, #0x80
 80009dc:      	it	eq
 80009de:      	addeq	r3, #0x1
 80009e0:      	and	r0, r6, #0xc0
 80009e4:      	adds	r1, #0xc
 80009e6:      	cmp	r0, #0x80
 80009e8:      	it	eq
 80009ea:      	addeq	r3, #0x1
 80009ec:      	and	r0, r5, #0xc0
 80009f0:      	cmp	r0, #0x80
 80009f2:      	it	eq
 80009f4:      	addeq	r3, #0x1
 80009f6:      	mov	r6, lr
 80009f8:      	cbz	r4, #0x2a
 80009fa:      	ldrb	r0, [r1]
 80009fc:      	and	r0, r0, #0xc0
 8000a00:      	cmp	r0, #0x80
 8000a02:      	it	eq
 8000a04:      	addeq	r3, #0x1
 8000a06:      	cmp	r4, #0x1
 8000a08:      	beq	#0x1a <core::fmt::Formatter::pad::hdd2f8bc43cf2bd72+0x33a>
 8000a0a:      	ldrb	r0, [r1, #0x1]
 8000a0c:      	and	r0, r0, #0xc0
 8000a10:      	cmp	r0, #0x80
 8000a12:      	it	eq
 8000a14:      	addeq	r3, #0x1
 8000a16:      	cmp	r4, #0x2
 8000a18:      	beq	#0xa <core::fmt::Formatter::pad::hdd2f8bc43cf2bd72+0x33a>
 8000a1a:      	ldrb	r0, [r1, #0x2]
 8000a1c:      	and	r0, r0, #0xc0
 8000a20:      	cmp	r0, #0x80
 8000a22:      	it	eq
 8000a24:      	addeq	r3, #0x1
 8000a26:      	ldr.w	lr, [r10, #0xc]
 8000a2a:      	sub.w	r0, r9, r3
 8000a2e:      	cmp	r0, lr
 8000a30:      	bhs.w	#0x1d6 <core::fmt::Formatter::pad::hdd2f8bc43cf2bd72+0x51e>
 8000a34:      	cmp.w	r8, #0x3
 8000a38:      	bhs	#0x4 <core::fmt::Formatter::pad::hdd2f8bc43cf2bd72+0x354>
 8000a3a:      	movs	r2, #0x0
 8000a3c:      	mov	r3, r6
 8000a3e:      	b	#0x21a <core::fmt::Formatter::pad::hdd2f8bc43cf2bd72+0x570>
 8000a40:      	sub.w	r0, r9, #0x4
 8000a44:      	bic	r2, r0, #0x3
 8000a48:      	movs	r0, #0x1
 8000a4a:      	cmp	r2, #0xc
 8000a4c:      	add.w	r0, r0, r2, lsr #2
 8000a50:      	and	r12, r0, #0x3
 8000a54:      	bhs	#0x4 <core::fmt::Formatter::pad::hdd2f8bc43cf2bd72+0x370>
 8000a56:      	movs	r2, #0x0
 8000a58:      	mov	r3, r6
 8000a5a:      	b	#0xda <core::fmt::Formatter::pad::hdd2f8bc43cf2bd72+0x44c>
 8000a5c:      	bic	r0, r0, #0x3
 8000a60:      	str	r4, [sp, #0x4]
 8000a62:      	rsbs	r4, r0, #0
 8000a64:      	movs	r2, #0x0
 8000a66:      	mov	r3, r6
 8000a68:      	str	r6, [sp, #0x8]
 8000a6a:      	ldrb	r6, [r3]
 8000a6c:      	ldrb	r5, [r3, #0x1]
 8000a6e:      	ldrb	r1, [r3, #0x2]
 8000a70:      	and	r6, r6, #0xc0
 8000a74:      	ldrb	r0, [r3, #0x3]
 8000a76:      	cmp	r6, #0x80
 8000a78:      	ldrb.w	r8, [r3, #0xf]
 8000a7c:      	and	r6, r5, #0xc0
 8000a80:      	ldrb.w	r11, [r3, #0xe]
 8000a84:      	it	eq
 8000a86:      	addeq	r2, #0x1
 8000a88:      	ldrb	r5, [r3, #0xd]
 8000a8a:      	cmp	r6, #0x80
 8000a8c:      	it	eq
 8000a8e:      	addeq	r2, #0x1
 8000a90:      	and	r1, r1, #0xc0
 8000a94:      	ldrb	r6, [r3, #0x4]
 8000a96:      	cmp	r1, #0x80
 8000a98:      	it	eq
 8000a9a:      	addeq	r2, #0x1
 8000a9c:      	and	r0, r0, #0xc0
 8000aa0:      	ldrb	r1, [r3, #0x5]
 8000aa2:      	cmp	r0, #0x80
 8000aa4:      	it	eq
 8000aa6:      	addeq	r2, #0x1
 8000aa8:      	and	r0, r6, #0xc0
 8000aac:      	ldrb	r6, [r3, #0x6]
 8000aae:      	cmp	r0, #0x80
 8000ab0:      	it	eq
 8000ab2:      	addeq	r2, #0x1
 8000ab4:      	and	r0, r1, #0xc0
 8000ab8:      	ldrb	r1, [r3, #0x7]
 8000aba:      	cmp	r0, #0x80
 8000abc:      	it	eq
 8000abe:      	addeq	r2, #0x1
 8000ac0:      	and	r0, r6, #0xc0
 8000ac4:      	ldrb	r6, [r3, #0x8]
 8000ac6:      	cmp	r0, #0x80
 8000ac8:      	it	eq
 8000aca:      	addeq	r2, #0x1
 8000acc:      	and	r0, r1, #0xc0
 8000ad0:      	ldrb	r1, [r3, #0x9]
 8000ad2:      	cmp	r0, #0x80
 8000ad4:      	it	eq
 8000ad6:      	addeq	r2, #0x1
 8000ad8:      	and	r0, r6, #0xc0
 8000adc:      	ldrb	r6, [r3, #0xa]
 8000ade:      	cmp	r0, #0x80
 8000ae0:      	it	eq
 8000ae2:      	addeq	r2, #0x1
 8000ae4:      	and	r0, r1, #0xc0
 8000ae8:      	cmp	r0, #0x80
 8000aea:      	ldrb	r1, [r3, #0xc]
 8000aec:      	it	eq
 8000aee:      	addeq	r2, #0x1
 8000af0:      	and	r0, r6, #0xc0
 8000af4:      	ldrb	r6, [r3, #0xb]
 8000af6:      	cmp	r0, #0x80
 8000af8:      	it	eq
 8000afa:      	addeq	r2, #0x1
 8000afc:      	adds	r3, #0x10
 8000afe:      	and	r0, r6, #0xc0
 8000b02:      	cmp	r0, #0x80
 8000b04:      	and	r0, r1, #0xc0
 8000b08:      	it	eq
 8000b0a:      	addeq	r2, #0x1
 8000b0c:      	cmp	r0, #0x80
 8000b0e:      	and	r0, r5, #0xc0
 8000b12:      	it	eq
 8000b14:      	addeq	r2, #0x1
 8000b16:      	cmp	r0, #0x80
 8000b18:      	and	r0, r11, #0xc0
 8000b1c:      	it	eq
 8000b1e:      	addeq	r2, #0x1
 8000b20:      	cmp	r0, #0x80
 8000b22:      	and	r0, r8, #0xc0
 8000b26:      	it	eq
 8000b28:      	addeq	r2, #0x1
 8000b2a:      	cmp	r0, #0x80
 8000b2c:      	it	eq
 8000b2e:      	addeq	r2, #0x1
 8000b30:      	adds	r4, #0x4
 8000b32:      	bne	#-0xcc <core::fmt::Formatter::pad::hdd2f8bc43cf2bd72+0x37e>
 8000b34:      	ldrd	r4, r6, [sp, #4]
 8000b38:      	cmp.w	r12, #0x0
 8000b3c:      	beq.w	#0x11c <core::fmt::Formatter::pad::hdd2f8bc43cf2bd72+0x570>
 8000b40:      	ldrb	r0, [r3]
 8000b42:      	ldrb	r1, [r3, #0x1]
 8000b44:      	and	r0, r0, #0xc0
 8000b48:      	ldrb	r5, [r3, #0x2]
 8000b4a:      	cmp	r0, #0x80
 8000b4c:      	ldrb.w	r8, [r3, #0x3]
 8000b50:      	and	r0, r1, #0xc0
 8000b54:      	it	eq
 8000b56:      	addeq	r2, #0x1
 8000b58:      	cmp	r0, #0x80
 8000b5a:      	and	r0, r5, #0xc0
 8000b5e:      	it	eq
 8000b60:      	addeq	r2, #0x1
 8000b62:      	cmp	r0, #0x80
 8000b64:      	and	r0, r8, #0xc0
 8000b68:      	it	eq
 8000b6a:      	addeq	r2, #0x1
 8000b6c:      	cmp	r0, #0x80
 8000b6e:      	it	eq
 8000b70:      	addeq	r2, #0x1
 8000b72:      	cmp.w	r12, #0x1
 8000b76:      	bne	#0x2 <core::fmt::Formatter::pad::hdd2f8bc43cf2bd72+0x490>
 8000b78:      	adds	r3, #0x4
 8000b7a:      	b	#0xde <core::fmt::Formatter::pad::hdd2f8bc43cf2bd72+0x570>
 8000b7c:      	ldrb	r0, [r3, #0x4]
 8000b7e:      	ldrb	r1, [r3, #0x5]
 8000b80:      	and	r0, r0, #0xc0
 8000b84:      	ldrb	r5, [r3, #0x6]
 8000b86:      	cmp	r0, #0x80
 8000b88:      	ldrb.w	r8, [r3, #0x7]
 8000b8c:      	and	r0, r1, #0xc0
 8000b90:      	it	eq
 8000b92:      	addeq	r2, #0x1
 8000b94:      	cmp	r0, #0x80
 8000b96:      	and	r0, r5, #0xc0
 8000b9a:      	it	eq
 8000b9c:      	addeq	r2, #0x1
 8000b9e:      	cmp	r0, #0x80
 8000ba0:      	and	r0, r8, #0xc0
 8000ba4:      	it	eq
 8000ba6:      	addeq	r2, #0x1
 8000ba8:      	cmp	r0, #0x80
 8000baa:      	it	eq
 8000bac:      	addeq	r2, #0x1
 8000bae:      	cmp.w	r12, #0x2
 8000bb2:      	bne	#0x6e <core::fmt::Formatter::pad::hdd2f8bc43cf2bd72+0x538>
 8000bb4:      	adds	r3, #0x8
 8000bb6:      	b	#0xa2 <core::fmt::Formatter::pad::hdd2f8bc43cf2bd72+0x570>
 8000bb8:      	movs	r6, #0x0
 8000bba:      	mov	r1, r5
 8000bbc:      	cmp	r0, #0xf0
 8000bbe:      	blo.w	#-0x474 <core::fmt::Formatter::pad::hdd2f8bc43cf2bd72+0x62>
 8000bc2:      	orrs	r3, r6
 8000bc4:      	mov.w	r6, #0x1c0000
 8000bc8:      	and.w	r0, r6, r0, lsl #18
 8000bcc:      	cmp	r1, r5
 8000bce:      	orr.w	r0, r0, r3, lsl #6
 8000bd2:      	itte	ne
 8000bd4:      	ldrbne	r1, [r1]
 8000bd6:      	andne	r1, r1, #0x3f
 8000bda:      	moveq	r1, #0x0
 8000bdc:      	add	r0, r1
 8000bde:      	cmp.w	r0, #0x110000
 8000be2:      	bne.w	#-0x498 <core::fmt::Formatter::pad::hdd2f8bc43cf2bd72+0x62>
 8000be6:      	mov	r2, r9
 8000be8:      	ldr	r6, [sp, #0x8]
 8000bea:      	cmp.w	lr, #0x1
 8000bee:      	bne.w	#-0x28e <core::fmt::Formatter::pad::hdd2f8bc43cf2bd72+0x278>
 8000bf2:      	mov	r9, r2
 8000bf4:      	cmp.w	r9, #0x0
 8000bf8:      	bne.w	#-0x4e8 <core::fmt::Formatter::pad::hdd2f8bc43cf2bd72+0x28>
 8000bfc:      	ldr.w	lr, [r10, #0xc]
 8000c00:      	cmp.w	lr, #0x0
 8000c04:      	beq	#0x2 <core::fmt::Formatter::pad::hdd2f8bc43cf2bd72+0x51e>
 8000c06:      	movs	r2, #0x0
 8000c08:      	b	#0x7e <core::fmt::Formatter::pad::hdd2f8bc43cf2bd72+0x59e>
 8000c0a:      	ldr.w	r1, [r10, #0x1c]
 8000c0e:      	mov	r2, r9
 8000c10:      	ldr.w	r0, [r10, #0x18]
 8000c14:      	ldr	r3, [r1, #0xc]
 8000c16:      	mov	r1, r6
 8000c18:      	add	sp, #0xc
 8000c1a:      	pop.w	{r8, r9, r10, r11}
 8000c1e:      	pop.w	{r4, r5, r6, r7, lr}
 8000c22:      	bx	r3
 8000c24:      	ldrb	r0, [r3, #0x8]
 8000c26:      	mov	r5, r6
 8000c28:      	ldrb	r1, [r3, #0x9]
 8000c2a:      	and	r0, r0, #0xc0
 8000c2e:      	ldrb	r6, [r3, #0xa]
 8000c30:      	ldrb.w	r12, [r3, #0xb]
 8000c34:      	cmp	r0, #0x80
 8000c36:      	it	eq
 8000c38:      	addeq	r2, #0x1
 8000c3a:      	and	r0, r1, #0xc0
 8000c3e:      	cmp	r0, #0x80
 8000c40:      	and	r0, r6, #0xc0
 8000c44:      	it	eq
 8000c46:      	addeq	r2, #0x1
 8000c48:      	cmp	r0, #0x80
 8000c4a:      	it	eq
 8000c4c:      	addeq	r2, #0x1
 8000c4e:      	and	r0, r12, #0xc0
 8000c52:      	cmp	r0, #0x80
 8000c54:      	mov	r6, r5
 8000c56:      	it	eq
 8000c58:      	addeq	r2, #0x1
 8000c5a:      	adds	r3, #0xc
 8000c5c:      	cbz	r4, #0x2a
 8000c5e:      	ldrb	r0, [r3]
 8000c60:      	and	r0, r0, #0xc0
 8000c64:      	cmp	r0, #0x80
 8000c66:      	it	eq
 8000c68:      	addeq	r2, #0x1
 8000c6a:      	cmp	r4, #0x1
 8000c6c:      	beq	#0x1a <core::fmt::Formatter::pad::hdd2f8bc43cf2bd72+0x59e>
 8000c6e:      	ldrb	r0, [r3, #0x1]
 8000c70:      	and	r0, r0, #0xc0
 8000c74:      	cmp	r0, #0x80
 8000c76:      	it	eq
 8000c78:      	addeq	r2, #0x1
 8000c7a:      	cmp	r4, #0x2
 8000c7c:      	beq	#0xa <core::fmt::Formatter::pad::hdd2f8bc43cf2bd72+0x59e>
 8000c7e:      	ldrb	r0, [r3, #0x2]
 8000c80:      	and	r0, r0, #0xc0
 8000c84:      	cmp	r0, #0x80
 8000c86:      	it	eq
 8000c88:      	addeq	r2, #0x1
 8000c8a:      	ldrb.w	r0, [r10, #0x20]
 8000c8e:      	subs	r3, r0, #0x3
 8000c90:      	it	ne
 8000c92:      	movne	r3, r0
 8000c94:      	sub.w	r0, r2, r9
 8000c98:      	add.w	r1, r0, lr
 8000c9c:      	movs	r0, #0x0
 8000c9e:      	mov	r11, r1
 8000ca0:      	tbb	[pc, r3]

08000ca4 <$d.15>:
 8000ca4:	0a 02 06 02	.word	0x0206020a

08000ca8 <$t.16>:
 8000ca8:      	mov.w	r11, #0x0
 8000cac:      	mov	r0, r1
 8000cae:      	b	#0x6 <$t.16+0x10>
 8000cb0:      	lsrs	r0, r1, #0x1
 8000cb2:      	adds	r1, #0x1
 8000cb4:      	lsr.w	r11, r1, #0x1
 8000cb8:      	adds	r4, r0, #0x1
 8000cba:      	subs	r4, #0x1
 8000cbc:      	beq	#0x10 <$t.16+0x28>
 8000cbe:      	ldrd	r0, r2, [r10, #24]
 8000cc2:      	ldr.w	r1, [r10, #0x4]
 8000cc6:      	ldr	r2, [r2, #0x10]
 8000cc8:      	blx	r2
 8000cca:      	cmp	r0, #0x0
 8000ccc:      	beq	#-0x16 <$t.16+0x12>
 8000cce:      	b	#0x28 <$t.16+0x52>
 8000cd0:      	ldrd	r0, r1, [r10, #24]
 8000cd4:      	mov	r2, r9
 8000cd6:      	ldr	r3, [r1, #0xc]
 8000cd8:      	mov	r1, r6
 8000cda:      	ldr.w	r8, [r10, #0x4]
 8000cde:      	blx	r3
 8000ce0:      	cbnz	r0, #0x16
 8000ce2:      	ldrd	r6, r5, [r10, #24]
 8000ce6:      	add.w	r4, r11, #0x1
 8000cea:      	subs	r4, #0x1
 8000cec:      	beq	#0x14 <$t.16+0x5c>
 8000cee:      	ldr	r2, [r5, #0x10]
 8000cf0:      	mov	r0, r6
 8000cf2:      	mov	r1, r8
 8000cf4:      	blx	r2
 8000cf6:      	cmp	r0, #0x0
 8000cf8:      	beq	#-0x12 <$t.16+0x42>
 8000cfa:      	movs	r0, #0x1
 8000cfc:      	add	sp, #0xc
 8000cfe:      	pop.w	{r8, r9, r10, r11}
 8000d02:      	pop	{r4, r5, r6, r7, pc}
 8000d04:      	movs	r0, #0x0
 8000d06:      	add	sp, #0xc
 8000d08:      	pop.w	{r8, r9, r10, r11}
 8000d0c:      	pop	{r4, r5, r6, r7, pc}

08000d0e <<&T as core::fmt::Display>::fmt::hed4fc898b8a3241f>:
 8000d0e:      	mov	r3, r1
 8000d10:      	ldrd	r1, r2, [r0]
 8000d14:      	mov	r0, r3
 8000d16:      	b.w	#-0x62e <core::fmt::Formatter::pad::hdd2f8bc43cf2bd72>

08000d1a <core::fmt::write::h80f221a6e172bdff>:
 8000d1a:      	push	{r4, r5, r6, r7, lr}
 8000d1c:      	add	r7, sp, #0xc
 8000d1e:      	push.w	{r8, r9, r10, r11}
 8000d22:      	sub	sp, #0x34
 8000d24:      	mov	r4, r2
 8000d26:      	movs	r2, #0x3
 8000d28:      	ldr	r3, [r4, #0x8]
 8000d2a:      	strb.w	r2, [sp, #0x30]
 8000d2e:      	movs	r2, #0x20
 8000d30:      	str	r2, [sp, #0x14]
 8000d32:      	movs	r2, #0x0
 8000d34:      	cmp	r3, #0x0
 8000d36:      	str	r2, [sp, #0x10]
 8000d38:      	str	r1, [sp, #0x2c]
 8000d3a:      	str	r0, [sp, #0x28]
 8000d3c:      	str	r2, [sp, #0x20]
 8000d3e:      	str	r2, [sp, #0x18]
 8000d40:      	str	r3, [sp, #0x8]
 8000d42:      	beq	#0xe6 <core::fmt::write::h80f221a6e172bdff+0x112>
 8000d44:      	ldr.w	r11, [r4, #0xc]
 8000d48:      	ldrd	r6, r9, [r4]
 8000d4c:      	cmp	r11, r9
 8000d4e:      	it	hi
 8000d50:      	movhi	r11, r9
 8000d52:      	cmp.w	r11, #0x0
 8000d56:      	str	r6, [sp, #0xc]
 8000d58:      	beq.w	#0x12a <core::fmt::write::h80f221a6e172bdff+0x16c>
 8000d5c:      	str.w	r9, [sp, #0x4]
 8000d60:      	ldrd	r3, r2, [r6]
 8000d64:      	ldr	r6, [r1, #0xc]
 8000d66:      	mov	r1, r3
 8000d68:      	blx	r6
 8000d6a:      	cmp	r0, #0x0
 8000d6c:      	bne.w	#0x13e <core::fmt::write::h80f221a6e172bdff+0x194>
 8000d70:      	ldr	r0, [sp, #0x8]
 8000d72:      	sub.w	r10, r11, #0x1
 8000d76:      	ldr.w	r9, [r4, #0x10]
 8000d7a:      	mov.w	r8, #0x0
 8000d7e:      	add.w	r6, r0, #0x10
 8000d82:      	ldr	r0, [sp, #0x8]
 8000d84:      	add.w	r0, r0, r8, lsl #2
 8000d88:      	ldrd	r2, r1, [r0, #20]
 8000d8c:      	ldrd	r3, r4, [r0, #4]
 8000d90:      	ldrb	r5, [r0, #0x1c]
 8000d92:      	str	r3, [sp, #0x14]
 8000d94:      	strb.w	r5, [sp, #0x30]
 8000d98:      	str	r4, [sp, #0x10]
 8000d9a:      	cbz	r2, #0x1a
 8000d9c:      	cmp	r2, #0x2
 8000d9e:      	beq	#0x1a <core::fmt::write::h80f221a6e172bdff+0xa2>
 8000da0:      	add.w	r2, r9, r1, lsl #3
 8000da4:      	movw	r3, #0x3af
 8000da8:      	movt	r3, #0x800
 8000dac:      	ldr	r2, [r2, #0x4]
 8000dae:      	cmp	r2, r3
 8000db0:      	bne	#0x8 <core::fmt::write::h80f221a6e172bdff+0xa2>
 8000db2:      	ldr.w	r1, [r9, r1, lsl #3]
 8000db6:      	ldr	r1, [r1]
 8000db8:      	movs	r2, #0x1
 8000dba:      	b	#0x0 <core::fmt::write::h80f221a6e172bdff+0xa4>
 8000dbc:      	movs	r2, #0x0
 8000dbe:      	strd	r2, r1, [sp, #24]
 8000dc2:      	ldr	r0, [r0, #0xc]
 8000dc4:      	ldr	r1, [r6]
 8000dc6:      	cbz	r0, #0x1a
 8000dc8:      	cmp	r0, #0x2
 8000dca:      	beq	#0x1a <core::fmt::write::h80f221a6e172bdff+0xce>
 8000dcc:      	add.w	r0, r9, r1, lsl #3
 8000dd0:      	movw	r2, #0x3af
 8000dd4:      	movt	r2, #0x800
 8000dd8:      	ldr	r0, [r0, #0x4]
 8000dda:      	cmp	r0, r2
 8000ddc:      	bne	#0x8 <core::fmt::write::h80f221a6e172bdff+0xce>
 8000dde:      	ldr.w	r0, [r9, r1, lsl #3]
 8000de2:      	ldr	r1, [r0]
 8000de4:      	movs	r2, #0x1
 8000de6:      	b	#0x0 <core::fmt::write::h80f221a6e172bdff+0xd0>
 8000de8:      	movs	r2, #0x0
 8000dea:      	ldr	r3, [r6, #-16]
 8000dee:      	str	r1, [sp, #0x24]
 8000df0:      	add.w	r1, r9, r3, lsl #3
 8000df4:      	ldr.w	r0, [r9, r3, lsl #3]
 8000df8:      	ldr	r3, [r1, #0x4]
 8000dfa:      	add	r1, sp, #0x10
 8000dfc:      	str	r2, [sp, #0x20]
 8000dfe:      	blx	r3
 8000e00:      	cmp	r0, #0x0
 8000e02:      	bne	#0xa8 <core::fmt::write::h80f221a6e172bdff+0x194>
 8000e04:      	cmp.w	r10, #0x0
 8000e08:      	beq	#0xac <core::fmt::write::h80f221a6e172bdff+0x19e>
 8000e0a:      	ldr	r1, [sp, #0xc]
 8000e0c:      	ldrd	r0, r3, [sp, #40]
 8000e10:      	add.w	r2, r1, r8
 8000e14:      	ldr	r3, [r3, #0xc]
 8000e16:      	ldrd	r1, r2, [r2, #8]
 8000e1a:      	blx	r3
 8000e1c:      	sub.w	r10, r10, #0x1
 8000e20:      	adds	r6, #0x20
 8000e22:      	add.w	r8, r8, #0x8
 8000e26:      	cmp	r0, #0x0
 8000e28:      	beq	#-0xaa <core::fmt::write::h80f221a6e172bdff+0x68>
 8000e2a:      	b	#0x80 <core::fmt::write::h80f221a6e172bdff+0x194>
 8000e2c:      	ldr.w	r11, [r4, #0x14]
 8000e30:      	ldrd	r6, r9, [r4]
 8000e34:      	cmp	r11, r9
 8000e36:      	it	hi
 8000e38:      	movhi	r11, r9
 8000e3a:      	cmp.w	r11, #0x0
 8000e3e:      	str	r6, [sp, #0xc]
 8000e40:      	beq	#0x4c <core::fmt::write::h80f221a6e172bdff+0x176>
 8000e42:      	ldrd	r3, r2, [r6]
 8000e46:      	ldr	r6, [r1, #0xc]
 8000e48:      	ldr	r4, [r4, #0x10]
 8000e4a:      	mov	r1, r3
 8000e4c:      	blx	r6
 8000e4e:      	cbnz	r0, #0x5c
 8000e50:      	ldr	r0, [sp, #0xc]
 8000e52:      	adds	r6, r4, #0x4
 8000e54:      	sub.w	r5, r11, #0x1
 8000e58:      	add.w	r8, sp, #0x10
 8000e5c:      	add.w	r4, r0, #0x8
 8000e60:      	ldr	r0, [r6, #-4]
 8000e64:      	mov	r1, r8
 8000e66:      	ldr	r2, [r6]
 8000e68:      	blx	r2
 8000e6a:      	cbnz	r0, #0x40
 8000e6c:      	cbz	r5, #0x24
 8000e6e:      	ldrd	r0, r3, [sp, #40]
 8000e72:      	ldrd	r1, r2, [r4]
 8000e76:      	ldr	r3, [r3, #0xc]
 8000e78:      	blx	r3
 8000e7a:      	subs	r5, #0x1
 8000e7c:      	adds	r6, #0x8
 8000e7e:      	adds	r4, #0x8
 8000e80:      	cmp	r0, #0x0
 8000e82:      	beq	#-0x26 <core::fmt::write::h80f221a6e172bdff+0x146>
 8000e84:      	b	#0x26 <core::fmt::write::h80f221a6e172bdff+0x194>
 8000e86:      	mov.w	r11, #0x0
 8000e8a:      	cmp	r9, r11
 8000e8c:      	bhi	#0x8 <core::fmt::write::h80f221a6e172bdff+0x17e>
 8000e8e:      	b	#0x2e <core::fmt::write::h80f221a6e172bdff+0x1a6>
 8000e90:      	mov.w	r11, #0x0
 8000e94:      	cmp	r9, r11
 8000e96:      	bls	#0x26 <core::fmt::write::h80f221a6e172bdff+0x1a6>
 8000e98:      	ldr	r2, [sp, #0xc]
 8000e9a:      	ldrd	r0, r3, [sp, #40]
 8000e9e:      	ldr	r3, [r3, #0xc]
 8000ea0:      	ldr.w	r1, [r2, r11, lsl #3]
 8000ea4:      	add.w	r2, r2, r11, lsl #3
 8000ea8:      	ldr	r2, [r2, #0x4]
 8000eaa:      	blx	r3
 8000eac:      	cbz	r0, #0x10
 8000eae:      	movs	r0, #0x1
 8000eb0:      	add	sp, #0x34
 8000eb2:      	pop.w	{r8, r9, r10, r11}
 8000eb6:      	pop	{r4, r5, r6, r7, pc}
 8000eb8:      	ldr.w	r9, [sp, #0x4]
 8000ebc:      	cmp	r9, r11
 8000ebe:      	bhi	#-0x2a <core::fmt::write::h80f221a6e172bdff+0x17e>
 8000ec0:      	movs	r0, #0x0
 8000ec2:      	add	sp, #0x34
 8000ec4:      	pop.w	{r8, r9, r10, r11}
 8000ec8:      	pop	{r4, r5, r6, r7, pc}

08000eca <<&T as core::fmt::Display>::fmt::hb1351d570a30a9c9>:
 8000eca:      	push	{r4, r5, r6, r7, lr}
 8000ecc:      	add	r7, sp, #0xc
 8000ece:      	push.w	{r8, r9, r11}
 8000ed2:      	sub	sp, #0x18
 8000ed4:      	ldr.w	lr, [r0]
 8000ed8:      	mov	r2, sp
 8000eda:      	ldrd	r12, r1, [r1, #24]
 8000ede:      	mov	r3, r2
 8000ee0:      	ldm.w	lr, {r0, r4, r5, r6, r8, r9}
 8000ee4:      	stm.w	r3, {r0, r4, r5, r6, r8, r9}
 8000ee8:      	mov	r0, r12
 8000eea:      	bl	#-0x1d4
 8000eee:      	add	sp, #0x18
 8000ef0:      	pop.w	{r8, r9, r11}
 8000ef4:      	pop	{r4, r5, r6, r7, pc}

08000ef6 <<&T as core::fmt::Display>::fmt::h28023d1754819fb6>:
 8000ef6:      	ldr	r0, [r0]
 8000ef8:      	mov	r3, r1
 8000efa:      	ldrd	r1, r2, [r0]
 8000efe:      	mov	r0, r3
 8000f00:      	b.w	#-0x818 <core::fmt::Formatter::pad::hdd2f8bc43cf2bd72>

08000f04 <cortex_m::itm::write_all::h1098dbb8e67ada69>:
 8000f04:      	push	{r4, r5, r7, lr}
 8000f06:      	add	r7, sp, #0x8
 8000f08:      	cmp	r2, #0x0
 8000f0a:      	beq.w	#0x106 <cortex_m::itm::write_all::h1098dbb8e67ada69+0x110>
 8000f0e:      	lsls	r3, r1, #0x1f
 8000f10:      	beq	#0x20 <cortex_m::itm::write_all::h1098dbb8e67ada69+0x30>
 8000f12:      	ldr	r3, [r0]
 8000f14:      	lsls	r3, r3, #0x1f
 8000f16:      	itttt	eq
 8000f18:      	ldreq	r3, [r0]
 8000f1a:      	lslseq.w	r3, r3, #0x1f
 8000f1e:      	ldreq	r3, [r0]
 8000f20:      	lslseq.w	r3, r3, #0x1f
 8000f24:      	bne	#0x4 <cortex_m::itm::write_all::h1098dbb8e67ada69+0x28>
 8000f26:      	ldr	r3, [r0]
 8000f28:      	lsls	r3, r3, #0x1f
 8000f2a:      	beq	#-0x1c <cortex_m::itm::write_all::h1098dbb8e67ada69+0xe>
 8000f2c:      	ldrb	r3, [r1], #1
 8000f30:      	subs	r2, #0x1
 8000f32:      	strb	r3, [r0]
 8000f34:      	and	r3, r1, #0x3
 8000f38:      	cmp	r3, #0x2
 8000f3a:      	bne	#0x24 <cortex_m::itm::write_all::h1098dbb8e67ada69+0x5e>
 8000f3c:      	cmp	r2, #0x2
 8000f3e:      	blo	#0xae <cortex_m::itm::write_all::h1098dbb8e67ada69+0xec>
 8000f40:      	ldr	r3, [r0]
 8000f42:      	lsls	r3, r3, #0x1f
 8000f44:      	itttt	eq
 8000f46:      	ldreq	r3, [r0]
 8000f48:      	lslseq.w	r3, r3, #0x1f
 8000f4c:      	ldreq	r3, [r0]
 8000f4e:      	lslseq.w	r3, r3, #0x1f
 8000f52:      	bne	#0x4 <cortex_m::itm::write_all::h1098dbb8e67ada69+0x56>
 8000f54:      	ldr	r3, [r0]
 8000f56:      	lsls	r3, r3, #0x1f
 8000f58:      	beq	#-0x1c <cortex_m::itm::write_all::h1098dbb8e67ada69+0x3c>
 8000f5a:      	ldrh	r3, [r1], #2
 8000f5e:      	subs	r2, #0x2
 8000f60:      	strh	r3, [r0]
 8000f62:      	cmp	r2, #0x0
 8000f64:      	beq	#0xac <cortex_m::itm::write_all::h1098dbb8e67ada69+0x110>
 8000f66:      	bic	r12, r2, #0x3
 8000f6a:      	movs	r3, #0x0
 8000f6c:      	cmp.w	r3, r2, lsr #2
 8000f70:      	beq	#0x30 <cortex_m::itm::write_all::h1098dbb8e67ada69+0xa0>
 8000f72:      	lsr.w	lr, r2, #0x2
 8000f76:      	movs	r3, #0x0
 8000f78:      	mov	r4, r1
 8000f7a:      	b	#0xa <cortex_m::itm::write_all::h1098dbb8e67ada69+0x84>
 8000f7c:      	ldr	r5, [r4], #4
 8000f80:      	adds	r3, #0x1
 8000f82:      	cmp	r3, lr
 8000f84:      	str	r5, [r0]
 8000f86:      	beq	#0x1a <cortex_m::itm::write_all::h1098dbb8e67ada69+0xa0>
 8000f88:      	ldr	r5, [r0]
 8000f8a:      	lsls	r5, r5, #0x1f
 8000f8c:      	itttt	eq
 8000f8e:      	ldreq	r5, [r0]
 8000f90:      	lslseq.w	r5, r5, #0x1f
 8000f94:      	ldreq	r5, [r0]
 8000f96:      	lslseq.w	r5, r5, #0x1f
 8000f9a:      	bne	#-0x22 <cortex_m::itm::write_all::h1098dbb8e67ada69+0x78>
 8000f9c:      	ldr	r5, [r0]
 8000f9e:      	lsls	r5, r5, #0x1f
 8000fa0:      	beq	#-0x1c <cortex_m::itm::write_all::h1098dbb8e67ada69+0x84>
 8000fa2:      	b	#-0x2a <cortex_m::itm::write_all::h1098dbb8e67ada69+0x78>
 8000fa4:      	and	r2, r2, #0x3
 8000fa8:      	add	r1, r12
 8000faa:      	cmp	r2, #0x2
 8000fac:      	blo	#0x20 <cortex_m::itm::write_all::h1098dbb8e67ada69+0xcc>
 8000fae:      	ldr	r3, [r0]
 8000fb0:      	lsls	r3, r3, #0x1f
 8000fb2:      	itttt	eq
 8000fb4:      	ldreq	r3, [r0]
 8000fb6:      	lslseq.w	r3, r3, #0x1f
 8000fba:      	ldreq	r3, [r0]
 8000fbc:      	lslseq.w	r3, r3, #0x1f
 8000fc0:      	bne	#0x4 <cortex_m::itm::write_all::h1098dbb8e67ada69+0xc4>
 8000fc2:      	ldr	r3, [r0]
 8000fc4:      	lsls	r3, r3, #0x1f
 8000fc6:      	beq	#-0x1c <cortex_m::itm::write_all::h1098dbb8e67ada69+0xaa>
 8000fc8:      	ldrh	r3, [r1], #2
 8000fcc:      	subs	r2, #0x2
 8000fce:      	strh	r3, [r0]
 8000fd0:      	cmp	r2, #0x1
 8000fd2:      	bne	#0x3e <cortex_m::itm::write_all::h1098dbb8e67ada69+0x110>
 8000fd4:      	ldr	r2, [r0]
 8000fd6:      	lsls	r2, r2, #0x1f
 8000fd8:      	itttt	eq
 8000fda:      	ldreq	r2, [r0]
 8000fdc:      	lslseq.w	r2, r2, #0x1f
 8000fe0:      	ldreq	r2, [r0]
 8000fe2:      	lslseq.w	r2, r2, #0x1f
 8000fe6:      	bne	#0x26 <cortex_m::itm::write_all::h1098dbb8e67ada69+0x10c>
 8000fe8:      	ldr	r2, [r0]
 8000fea:      	lsls	r2, r2, #0x1f
 8000fec:      	beq	#-0x1c <cortex_m::itm::write_all::h1098dbb8e67ada69+0xd0>
 8000fee:      	b	#0x1e <cortex_m::itm::write_all::h1098dbb8e67ada69+0x10c>
 8000ff0:      	cmp	r2, #0x1
 8000ff2:      	it	ne
 8000ff4:      	popne	{r4, r5, r7, pc}
 8000ff6:      	ldr	r2, [r0]
 8000ff8:      	lsls	r2, r2, #0x1f
 8000ffa:      	bne	#0x12 <cortex_m::itm::write_all::h1098dbb8e67ada69+0x10c>
 8000ffc:      	ldr	r2, [r0]
 8000ffe:      	lsls	r2, r2, #0x1f
 8001000:      	itt	eq
 8001002:      	ldreq	r2, [r0]
 8001004:      	lslseq.w	r2, r2, #0x1f
 8001008:      	bne	#0x4 <cortex_m::itm::write_all::h1098dbb8e67ada69+0x10c>
 800100a:      	ldr	r2, [r0]
 800100c:      	lsls	r2, r2, #0x1f
 800100e:      	beq	#-0x1c <cortex_m::itm::write_all::h1098dbb8e67ada69+0xf2>
 8001010:      	ldrb	r1, [r1]
 8001012:      	strb	r1, [r0]
 8001014:      	pop	{r4, r5, r7, pc}

08001016 <ResetTrampoline>:
 8001016:      	push	{r7, lr}
 8001018:      	mov	r7, sp
 800101a:      	bl	#-0xdec
 800101e:      	trap

08001020 <WWDG>:
 8001020:      	b	#-0x4 <WWDG>

08001022 <__pre_init>:
 8001022:      	bx	lr

08001024 <rust_begin_unwind>:
 8001024:      	push	{r7, lr}
 8001026:      	mov	r7, sp
 8001028:      	sub	sp, #0x30
 800102a:      	str	r0, [sp, #0x4]
 800102c:      	bl	#0x204
 8001030:      	movw	r0, #0x1077
 8001034:      	movw	r1, #0x13f0
 8001038:      	movt	r0, #0x800
 800103c:      	add	r2, sp, #0x18
 800103e:      	str	r0, [sp, #0xc]
 8001040:      	add	r0, sp, #0x4
 8001042:      	str	r0, [sp, #0x8]
 8001044:      	mov.w	r0, #0xe0000000
 8001048:      	str	r0, [sp, #0x10]
 800104a:      	add	r0, sp, #0x10
 800104c:      	str	r0, [sp, #0x14]
 800104e:      	movs	r0, #0x1
 8001050:      	str	r0, [sp, #0x2c]
 8001052:      	add	r0, sp, #0x8
 8001054:      	str	r0, [sp, #0x28]
 8001056:      	movs	r0, #0x0
 8001058:      	strd	r0, r0, [sp, #32]
 800105c:      	movs	r0, #0x2
 800105e:      	str	r0, [sp, #0x1c]
 8001060:      	movw	r0, #0x13e0
 8001064:      	movt	r0, #0x800
 8001068:      	movt	r1, #0x800
 800106c:      	str	r0, [sp, #0x18]
 800106e:      	add	r0, sp, #0x14
 8001070:      	bl	#-0x35a
 8001074:      	b	#-0x4 <rust_begin_unwind+0x50>

08001076 <<&T as core::fmt::Display>::fmt::h5a9e9b1ee2b40989>:
 8001076:      	push	{r4, r5, r6, r7, lr}
 8001078:      	add	r7, sp, #0xc
 800107a:      	str	r11, [sp, #-4]!
 800107e:      	sub	sp, #0x38
 8001080:      	mov	r4, r1
 8001082:      	ldrd	r2, r1, [r1, #24]
 8001086:      	ldr	r3, [r1, #0xc]
 8001088:      	movw	r1, #0x13a4
 800108c:      	ldr	r6, [r0]
 800108e:      	movt	r1, #0x800
 8001092:      	mov	r0, r2
 8001094:      	movs	r2, #0xc
 8001096:      	blx	r3
 8001098:      	cbz	r0, #0xa
 800109a:      	movs	r5, #0x1
 800109c:      	mov	r0, r5
 800109e:      	add	sp, #0x38
 80010a0:      	ldr	r11, [sp], #4
 80010a4:      	pop	{r4, r5, r6, r7, pc}
 80010a6:      	ldr	r0, [r6, #0x8]
 80010a8:      	cbz	r0, #0xe
 80010aa:      	str	r0, [sp, #0x4]
 80010ac:      	movw	r2, #0xecb
 80010b0:      	ldrd	r0, r1, [r4, #24]
 80010b4:      	movt	r2, #0x800
 80010b8:      	b	#0x2e <<&T as core::fmt::Display>::fmt::h5a9e9b1ee2b40989+0x74>
 80010ba:      	ldrd	r5, r0, [r6]
 80010be:      	ldr	r1, [r0, #0xc]
 80010c0:      	mov	r0, r5
 80010c2:      	blx	r1
 80010c4:      	movw	r2, #0xa91e
 80010c8:      	movt	r2, #0x7ef2
 80010cc:      	eors	r1, r2
 80010ce:      	movw	r2, #0xbcf4
 80010d2:      	movt	r2, #0xecc7
 80010d6:      	eors	r0, r2
 80010d8:      	orrs	r0, r1
 80010da:      	bne	#0x38 <<&T as core::fmt::Display>::fmt::h5a9e9b1ee2b40989+0xa0>
 80010dc:      	str	r5, [sp, #0x4]
 80010de:      	movw	r2, #0xef7
 80010e2:      	ldrd	r0, r1, [r4, #24]
 80010e6:      	movt	r2, #0x800
 80010ea:      	str	r2, [sp, #0xc]
 80010ec:      	add	r2, sp, #0x4
 80010ee:      	str	r2, [sp, #0x8]
 80010f0:      	movs	r5, #0x1
 80010f2:      	add	r2, sp, #0x8
 80010f4:      	str	r5, [sp, #0x34]
 80010f6:      	str	r2, [sp, #0x30]
 80010f8:      	movs	r2, #0x0
 80010fa:      	str	r2, [sp, #0x2c]
 80010fc:      	str	r2, [sp, #0x28]
 80010fe:      	movs	r2, #0x2
 8001100:      	str	r2, [sp, #0x24]
 8001102:      	movw	r2, #0x13b0
 8001106:      	movt	r2, #0x800
 800110a:      	str	r2, [sp, #0x20]
 800110c:      	add	r2, sp, #0x20
 800110e:      	bl	#-0x3f8
 8001112:      	cmp	r0, #0x0
 8001114:      	bne	#-0x7c <<&T as core::fmt::Display>::fmt::h5a9e9b1ee2b40989+0x26>
 8001116:      	ldr	r2, [r6, #0xc]
 8001118:      	movw	r3, #0x3ed
 800111c:      	movt	r3, #0x800
 8001120:      	ldrd	r0, r1, [r4, #24]
 8001124:      	add.w	r6, r2, #0xc
 8001128:      	str	r3, [sp, #0x1c]
 800112a:      	strd	r3, r6, [sp, #20]
 800112e:      	add.w	r3, r2, #0x8
 8001132:      	str	r3, [sp, #0x10]
 8001134:      	movw	r3, #0xd0f
 8001138:      	movt	r3, #0x800
 800113c:      	strd	r2, r3, [sp, #8]
 8001140:      	add	r3, sp, #0x8
 8001142:      	movs	r2, #0x3
 8001144:      	str	r3, [sp, #0x30]
 8001146:      	movs	r3, #0x0
 8001148:      	str	r2, [sp, #0x34]
 800114a:      	str	r3, [sp, #0x2c]
 800114c:      	strd	r2, r3, [sp, #36]
 8001150:      	movw	r2, #0x13c0
 8001154:      	movt	r2, #0x800
 8001158:      	str	r2, [sp, #0x20]
 800115a:      	add	r2, sp, #0x20
 800115c:      	bl	#-0x446
 8001160:      	mov	r5, r0
 8001162:      	mov	r0, r5
 8001164:      	add	sp, #0x38
 8001166:      	ldr	r11, [sp], #4
 800116a:      	pop	{r4, r5, r6, r7, pc}

0800116c <core::ptr::drop_in_place::h4057e8d006af43fe>:
 800116c:      	bx	lr

0800116e <<&mut W as core::fmt::Write>::write_str::hbd59a210919e6753>:
 800116e:      	push	{r7, lr}
 8001170:      	mov	r7, sp
 8001172:      	ldr	r0, [r0]
 8001174:      	ldr	r0, [r0]
 8001176:      	bl	#-0x276
 800117a:      	movs	r0, #0x0
 800117c:      	pop	{r7, pc}

0800117e <<&mut W as core::fmt::Write>::write_char::h1cb2b91da1b2b000>:
 800117e:      	push	{r7, lr}
 8001180:      	mov	r7, sp
 8001182:      	sub	sp, #0x8
 8001184:      	ldr	r0, [r0]
 8001186:      	movs	r2, #0x0
 8001188:      	cmp	r1, #0x80
 800118a:      	str	r2, [sp, #0x4]
 800118c:      	bhs	#0x6 <<&mut W as core::fmt::Write>::write_char::h1cb2b91da1b2b000+0x18>
 800118e:      	strb.w	r1, [sp, #0x4]
 8001192:      	movs	r2, #0x1
 8001194:      	b	#0x5e <<&mut W as core::fmt::Write>::write_char::h1cb2b91da1b2b000+0x78>
 8001196:      	movs	r2, #0x2
 8001198:      	mov	r3, r1
 800119a:      	bfi	r3, r2, #6, #26
 800119e:      	cmp.w	r1, #0x800
 80011a2:      	bhs	#0xa <<&mut W as core::fmt::Write>::write_char::h1cb2b91da1b2b000+0x32>
 80011a4:      	strb.w	r3, [sp, #0x5]
 80011a8:      	movs	r3, #0xc0
 80011aa:      	orr.w	r1, r3, r1, lsr #6
 80011ae:      	b	#0x40 <<&mut W as core::fmt::Write>::write_char::h1cb2b91da1b2b000+0x74>
 80011b0:      	cmp.w	r1, #0x10000
 80011b4:      	bhs	#0x1a <<&mut W as core::fmt::Write>::write_char::h1cb2b91da1b2b000+0x54>
 80011b6:      	strb.w	r3, [sp, #0x6]
 80011ba:      	lsrs	r3, r1, #0x6
 80011bc:      	bfi	r3, r2, #6, #26
 80011c0:      	movs	r2, #0xe0
 80011c2:      	orr.w	r1, r2, r1, lsr #12
 80011c6:      	strb.w	r3, [sp, #0x5]
 80011ca:      	strb.w	r1, [sp, #0x4]
 80011ce:      	movs	r2, #0x3
 80011d0:      	b	#0x22 <<&mut W as core::fmt::Write>::write_char::h1cb2b91da1b2b000+0x78>
 80011d2:      	strb.w	r3, [sp, #0x7]
 80011d6:      	lsrs	r3, r1, #0x6
 80011d8:      	bfi	r3, r2, #6, #26
 80011dc:      	strb.w	r3, [sp, #0x6]
 80011e0:      	lsrs	r3, r1, #0xc
 80011e2:      	bfi	r3, r2, #6, #26
 80011e6:      	movs	r2, #0xf0
 80011e8:      	orr.w	r1, r2, r1, lsr #18
 80011ec:      	movs	r2, #0x4
 80011ee:      	strb.w	r3, [sp, #0x5]
 80011f2:      	strb.w	r1, [sp, #0x4]
 80011f6:      	ldr	r0, [r0]
 80011f8:      	add	r1, sp, #0x4
 80011fa:      	bl	#-0x2fa
 80011fe:      	movs	r0, #0x0
 8001200:      	add	sp, #0x8
 8001202:      	pop	{r7, pc}

08001204 <<&mut W as core::fmt::Write>::write_fmt::h33ca6863f47eb077>:
 8001204:      	push	{r4, r5, r6, r7, lr}
 8001206:      	add	r7, sp, #0xc
 8001208:      	str	r11, [sp, #-4]!
 800120c:      	sub	sp, #0x20
 800120e:      	ldr	r0, [r0]
 8001210:      	add	r2, sp, #0x8
 8001212:      	str	r0, [sp, #0x4]
 8001214:      	ldm.w	r1, {r3, r4, r5, r6, r12, lr}
 8001218:      	mov	r0, r2
 800121a:      	movw	r1, #0x13f0
 800121e:      	movt	r1, #0x800
 8001222:      	stm.w	r0, {r3, r4, r5, r6, r12, lr}
 8001226:      	add	r0, sp, #0x4
 8001228:      	bl	#-0x512
 800122c:      	add	sp, #0x20
 800122e:      	ldr	r11, [sp], #4
 8001232:      	pop	{r4, r5, r6, r7, pc}

08001234 <__cpsid>:
 8001234:      	cpsid i
 8001236:      	bx	lr

08001238 <__cpsie>:
 8001238:      	cpsie i
 800123a:      	bx	lr

0800123c <__primask>:
 800123c:      	mrs	r0, primask
 8001240:      	bx	lr

08001242 <HardFaultTrampoline>:
 8001242:      	mov	r0, lr
 8001244:      	movs	r1, #0x4
 8001246:      	tst	r0, r1
 8001248:      	bne	#0x4 <HardFaultTrampoline+0xe>
 800124a:      	mrs	r0, msp
 800124e:      	b	#0x4 <HardFault_>
 8001250:      	mrs	r0, psp
 8001254:      	b	#-0x2 <HardFault_>

08001256 <HardFault_>:
 8001256:      	b	#-0x4 <HardFault_>
