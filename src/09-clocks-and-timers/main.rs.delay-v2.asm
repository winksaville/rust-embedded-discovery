
clocks-and-timers:	file format elf32-littlearm


Disassembly of section .text:

08000188 <Reset>:
 8000188:      	push	{r7, lr}
 800018a:      	mov	r7, sp
 800018c:      	bl	#3838
 8000190:      	movw	r0, #4
 8000194:      	movw	r1, #0
 8000198:      	movt	r0, #8192
 800019c:      	movt	r1, #8192
 80001a0:      	cmp	r1, r0
 80001a2:      	bhs	#40 <Reset+0x46>
 80001a4:      	movw	r1, #0
 80001a8:      	movs	r2, #0
 80001aa:      	movt	r1, #8192
 80001ae:      	str	r2, [r1], #4
 80001b2:      	cmp	r1, r0
 80001b4:      	itt	lo
 80001b6:      	strlo	r2, [r1], #4
 80001ba:      	cmplo	r1, r0
 80001bc:      	bhs	#14 <Reset+0x46>
 80001be:      	str	r2, [r1], #4
 80001c2:      	cmp	r1, r0
 80001c4:      	bhs	#6 <Reset+0x46>
 80001c6:      	str	r2, [r1], #4
 80001ca:      	cmp	r1, r0
 80001cc:      	blo	#-34 <Reset+0x26>
 80001ce:      	movw	r0, #0
 80001d2:      	movw	r1, #0
 80001d6:      	movt	r0, #8192
 80001da:      	movt	r1, #8192
 80001de:      	cmp	r1, r0
 80001e0:      	bhs	#56 <Reset+0x94>
 80001e2:      	movw	r1, #5252
 80001e6:      	movw	r2, #0
 80001ea:      	movt	r1, #2048
 80001ee:      	movt	r2, #8192
 80001f2:      	ldr	r3, [r1]
 80001f4:      	str	r3, [r2], #4
 80001f8:      	cmp	r2, r0
 80001fa:      	bhs	#30 <Reset+0x94>
 80001fc:      	ldr	r3, [r1, #4]
 80001fe:      	str	r3, [r2], #4
 8000202:      	cmp	r2, r0
 8000204:      	bhs	#20 <Reset+0x94>
 8000206:      	ldr	r3, [r1, #8]
 8000208:      	str	r3, [r2], #4
 800020c:      	cmp	r2, r0
 800020e:      	bhs	#10 <Reset+0x94>
 8000210:      	ldr	r3, [r1, #12]
 8000212:      	adds	r1, #16
 8000214:      	str	r3, [r2], #4
 8000218:      	cmp	r2, r0
 800021a:      	blo	#-44 <Reset+0x6a>
 800021c:      	movw	r0, #60808
 8000220:      	movt	r0, #57344
 8000224:      	ldr	r1, [r0]
 8000226:      	orr	r1, r1, #15728640
 800022a:      	str	r1, [r0]
 800022c:      	bl	#3666
 8000230:      	trap

08000232 <clocks_and_timers::delay::hb0e558e7909bea03>:
 8000232:      	push	{r4, r6, r7, lr}
 8000234:      	add	r7, sp, #8
 8000236:      	movw	r4, #50000
 800023a:      	bl	#4202
 800023e:      	subs	r4, #1
 8000240:      	bne	#-10 <clocks_and_timers::delay::hb0e558e7909bea03+0x8>
 8000242:      	pop	{r4, r6, r7, pc}

08000244 <main>:
 8000244:      	push	{r7, lr}
 8000246:      	mov	r7, sp
 8000248:      	bl	#2
 800024c:      	trap

0800024e <clocks_and_timers::__cortex_m_rt_main::h7d0fc28cd713a80d>:
 800024e:      	push	{r7, lr}
 8000250:      	mov	r7, sp
 8000252:      	bl	#4180
 8000256:      	and	r5, r0, #1
 800025a:      	bl	#4162
 800025e:      	movw	r4, #0
 8000262:      	movt	r4, #8192
 8000266:      	ldrb	r0, [r4]
 8000268:      	cmp	r0, #0
 800026a:      	itte	eq
 800026c:      	moveq	r6, #1
 800026e:      	strbeq	r6, [r4]
 8000270:      	movne	r6, #0
 8000272:      	cmp	r5, #0
 8000274:      	it	eq
 8000276:      	bleq	#4138
 800027a:      	cmp	r6, #0
 800027c:      	beq.w	#382 <clocks_and_timers::__cortex_m_rt_main::h7d0fc28cd713a80d+0x1b0>
 8000280:      	bl	#4134
 8000284:      	and	r5, r0, #1
 8000288:      	bl	#4116
 800028c:      	ldrb	r0, [r4, #1]
 800028e:      	cmp	r0, #0
 8000290:      	itte	eq
 8000292:      	moveq	r6, #1
 8000294:      	strbeq	r6, [r4, #1]
 8000296:      	movne	r6, #0
 8000298:      	cmp	r5, #0
 800029a:      	it	eq
 800029c:      	bleq	#4100
 80002a0:      	cmp	r6, #0
 80002a2:      	beq.w	#358 <clocks_and_timers::__cortex_m_rt_main::h7d0fc28cd713a80d+0x1be>
 80002a6:      	movw	r0, #4136
 80002aa:      	movw	r4, #4096
 80002ae:      	movt	r0, #16386
 80002b2:      	movt	r4, #18432
 80002b6:      	ldr	r1, [r0, #-20]
 80002ba:      	mov.w	r5, #32768
 80002be:      	mov.w	r6, #1073741824
 80002c2:      	mov.w	r8, #256
 80002c6:      	orr	r1, r1, #2097152
 80002ca:      	str	r1, [r0, #-20]
 80002ce:      	ldr	r1, [r0]
 80002d0:      	mov.w	r9, #2147483648
 80002d4:      	mov.w	r10, #512
 80002d8:      	mov.w	r11, #16777216
 80002dc:      	orr	r1, r1, #2097152
 80002e0:      	str	r1, [r0]
 80002e2:      	ldr	r1, [r0]
 80002e4:      	bic	r1, r1, #2097152
 80002e8:      	str	r1, [r0]
 80002ea:      	ldr	r1, [r4]
 80002ec:      	movs	r0, #1
 80002ee:      	bfi	r1, r0, #18, #2
 80002f2:      	str	r1, [r4]
 80002f4:      	ldr	r1, [r4, #4]
 80002f6:      	bic	r1, r1, #512
 80002fa:      	str	r1, [r4, #4]
 80002fc:      	ldr	r1, [r4]
 80002fe:      	bfi	r1, r0, #20, #2
 8000302:      	str	r1, [r4]
 8000304:      	ldr	r1, [r4, #4]
 8000306:      	bic	r1, r1, #1024
 800030a:      	str	r1, [r4, #4]
 800030c:      	ldr	r1, [r4]
 800030e:      	bfi	r1, r0, #22, #2
 8000312:      	str	r1, [r4]
 8000314:      	ldr	r1, [r4, #4]
 8000316:      	bic	r1, r1, #2048
 800031a:      	str	r1, [r4, #4]
 800031c:      	ldr	r1, [r4]
 800031e:      	bfi	r1, r0, #24, #2
 8000322:      	str	r1, [r4]
 8000324:      	ldr	r1, [r4, #4]
 8000326:      	bic	r1, r1, #4096
 800032a:      	str	r1, [r4, #4]
 800032c:      	ldr	r1, [r4]
 800032e:      	bfi	r1, r0, #26, #2
 8000332:      	str	r1, [r4]
 8000334:      	ldr	r1, [r4, #4]
 8000336:      	bic	r1, r1, #8192
 800033a:      	str	r1, [r4, #4]
 800033c:      	ldr	r1, [r4]
 800033e:      	bfi	r1, r0, #28, #2
 8000342:      	str	r1, [r4]
 8000344:      	ldr	r1, [r4, #4]
 8000346:      	bic	r1, r1, #16384
 800034a:      	str	r1, [r4, #4]
 800034c:      	ldr	r1, [r4]
 800034e:      	bfi	r1, r0, #30, #2
 8000352:      	str	r1, [r4]
 8000354:      	ldr	r1, [r4, #4]
 8000356:      	bic	r1, r1, #32768
 800035a:      	str	r1, [r4, #4]
 800035c:      	ldr	r1, [r4]
 800035e:      	bfi	r1, r0, #16, #2
 8000362:      	str	r1, [r4]
 8000364:      	ldr	r0, [r4, #4]
 8000366:      	bic	r0, r0, #256
 800036a:      	str	r0, [r4, #4]
 800036c:      	mov.w	r0, #1024
 8000370:      	str	r0, [r4, #24]
 8000372:      	bl	#-324
 8000376:      	mov.w	r0, #33554432
 800037a:      	str	r0, [r4, #24]
 800037c:      	bl	#-334
 8000380:      	mov.w	r0, #2048
 8000384:      	str	r0, [r4, #24]
 8000386:      	bl	#-344
 800038a:      	mov.w	r0, #67108864
 800038e:      	str	r0, [r4, #24]
 8000390:      	bl	#-354
 8000394:      	mov.w	r0, #4096
 8000398:      	str	r0, [r4, #24]
 800039a:      	bl	#-364
 800039e:      	mov.w	r0, #134217728
 80003a2:      	str	r0, [r4, #24]
 80003a4:      	bl	#-374
 80003a8:      	mov.w	r0, #8192
 80003ac:      	str	r0, [r4, #24]
 80003ae:      	bl	#-384
 80003b2:      	mov.w	r0, #268435456
 80003b6:      	str	r0, [r4, #24]
 80003b8:      	bl	#-394
 80003bc:      	mov.w	r0, #16384
 80003c0:      	str	r0, [r4, #24]
 80003c2:      	bl	#-404
 80003c6:      	mov.w	r0, #536870912
 80003ca:      	str	r0, [r4, #24]
 80003cc:      	bl	#-414
 80003d0:      	str	r5, [r4, #24]
 80003d2:      	bl	#-420
 80003d6:      	str	r6, [r4, #24]
 80003d8:      	bl	#-426
 80003dc:      	str.w	r8, [r4, #24]
 80003e0:      	bl	#-434
 80003e4:      	str.w	r9, [r4, #24]
 80003e8:      	bl	#-442
 80003ec:      	str.w	r10, [r4, #24]
 80003f0:      	bl	#-450
 80003f4:      	str.w	r11, [r4, #24]
 80003f8:      	bl	#-458
 80003fc:      	b	#-148 <clocks_and_timers::__cortex_m_rt_main::h7d0fc28cd713a80d+0x11e>
 80003fe:      	movw	r0, #4852
 8000402:      	movt	r0, #2048
 8000406:      	bl	#20
 800040a:      	trap
 800040c:      	movw	r0, #4868
 8000410:      	movt	r0, #2048
 8000414:      	bl	#6
 8000418:      	trap

0800041a <core::ops::function::FnOnce::call_once::h5db7766b92da0352>:
 800041a:      	ldr	r0, [r0]
 800041c:      	b	#-4 <core::ops::function::FnOnce::call_once::h5db7766b92da0352+0x2>

0800041e <core::panicking::panic::he8552e8d3d2cbe3a>:
 800041e:      	push	{r7, lr}
 8000420:      	mov	r7, sp
 8000422:      	sub	sp, #32
 8000424:      	movw	r2, #5208
 8000428:      	mov	r1, r0
 800042a:      	movs	r0, #0
 800042c:      	movt	r2, #2048
 8000430:      	str	r0, [sp, #20]
 8000432:      	str	r2, [sp, #16]
 8000434:      	strd	r0, r0, [sp, #8]
 8000438:      	movs	r0, #1
 800043a:      	str	r0, [sp, #4]
 800043c:      	add	r0, sp, #24
 800043e:      	str	r0, [sp]
 8000440:      	movs	r0, #43
 8000442:      	str	r0, [sp, #28]
 8000444:      	movw	r0, #4808
 8000448:      	movt	r0, #2048
 800044c:      	str	r0, [sp, #24]
 800044e:      	mov	r0, sp
 8000450:      	bl	#664
 8000454:      	trap
 8000456:      	bmi	#-88 <clocks_and_timers::__cortex_m_rt_main::h7d0fc28cd713a80d+0x1b4>

08000458 <core::fmt::num::imp::<impl core::fmt::Display for u32>::fmt::h720dbf9c56765265>:
 8000458:      	push	{r4, r5, r6, r7, lr}
 800045a:      	add	r7, sp, #12
 800045c:      	push.w	{r8, r9, r10, r11}
 8000460:      	sub	sp, #52
 8000462:      	ldr	r5, [r0]
 8000464:      	movw	r0, #10000
 8000468:      	movw	lr, #34079
 800046c:      	mov	r4, r1
 800046e:      	cmp	r5, r0
 8000470:      	movw	r0, #4948
 8000474:      	movw	r3, #65436
 8000478:      	movt	lr, #20971
 800047c:      	movt	r0, #2048
 8000480:      	blo	#120 <core::fmt::num::imp::<impl core::fmt::Display for u32>::fmt::h720dbf9c56765265+0xa4>
 8000482:      	movw	r8, #5977
 8000486:      	movw	r10, #55536
 800048a:      	movw	r12, #57599
 800048e:      	add.w	r11, sp, #12
 8000492:      	movs	r6, #0
 8000494:      	movt	r8, #53687
 8000498:      	movt	r10, #65535
 800049c:      	movt	r12, #1525
 80004a0:      	str	r4, [sp, #8]
 80004a2:      	umull	r2, r4, r5, r8
 80004a6:      	cmp	r5, r12
 80004a8:      	lsr.w	r2, r4, #13
 80004ac:      	mla	r4, r2, r10, r5
 80004b0:      	mov	r5, r2
 80004b2:      	uxth	r1, r4
 80004b4:      	umull	r1, r9, r1, lr
 80004b8:      	lsr.w	r1, r9, #5
 80004bc:      	mla	r4, r1, r3, r4
 80004c0:      	add.w	r3, r11, r6
 80004c4:      	ldrh.w	r1, [r0, r1, lsl #1]
 80004c8:      	sub.w	r6, r6, #4
 80004cc:      	strh.w	r1, [r3, #35]
 80004d0:      	uxth	r4, r4
 80004d2:      	ldrh.w	r4, [r0, r4, lsl #1]
 80004d6:      	strh.w	r4, [r3, #37]
 80004da:      	movw	r3, #65436
 80004de:      	bhi	#-64 <core::fmt::num::imp::<impl core::fmt::Display for u32>::fmt::h720dbf9c56765265+0x4a>
 80004e0:      	ldr	r4, [sp, #8]
 80004e2:      	adds	r6, #39
 80004e4:      	mov	r5, r2
 80004e6:      	cmp	r5, #99
 80004e8:      	bgt	#22 <core::fmt::num::imp::<impl core::fmt::Display for u32>::fmt::h720dbf9c56765265+0xaa>
 80004ea:      	mov	r1, r5
 80004ec:      	cmp	r1, #10
 80004ee:      	blt	#44 <core::fmt::num::imp::<impl core::fmt::Display for u32>::fmt::h720dbf9c56765265+0xc6>
 80004f0:      	ldrh.w	r0, [r0, r1, lsl #1]
 80004f4:      	subs	r2, r6, #2
 80004f6:      	add	r1, sp, #12
 80004f8:      	strh	r0, [r1, r2]
 80004fa:      	b	#42 <core::fmt::num::imp::<impl core::fmt::Display for u32>::fmt::h720dbf9c56765265+0xd0>
 80004fc:      	movs	r6, #39
 80004fe:      	cmp	r5, #99
 8000500:      	ble	#-26 <core::fmt::num::imp::<impl core::fmt::Display for u32>::fmt::h720dbf9c56765265+0x92>
 8000502:      	uxth	r1, r5
 8000504:      	subs	r6, #2
 8000506:      	umull	r1, r2, r1, lr
 800050a:      	lsrs	r1, r2, #5
 800050c:      	mla	r2, r1, r3, r5
 8000510:      	add	r3, sp, #12
 8000512:      	uxth	r2, r2
 8000514:      	ldrh.w	r2, [r0, r2, lsl #1]
 8000518:      	strh	r2, [r3, r6]
 800051a:      	cmp	r1, #10
 800051c:      	bge	#-48 <core::fmt::num::imp::<impl core::fmt::Display for u32>::fmt::h720dbf9c56765265+0x98>
 800051e:      	subs	r2, r6, #1
 8000520:      	add.w	r0, r1, #48
 8000524:      	add	r1, sp, #12
 8000526:      	strb	r0, [r1, r2]
 8000528:      	ldr	r0, [r4]
 800052a:      	add	r1, sp, #12
 800052c:      	movw	r6, #5208
 8000530:      	add.w	r8, r1, r2
 8000534:      	rsb.w	r9, r2, #39
 8000538:      	ldr	r3, [r4, #8]
 800053a:      	lsls	r2, r0, #29
 800053c:      	movt	r6, #2048
 8000540:      	ands	r1, r0, #1
 8000544:      	mov.w	r5, #43
 8000548:      	and.w	r10, r6, r2, asr #31
 800054c:      	it	eq
 800054e:      	moveq.w	r5, #1114112
 8000552:      	cmp	r3, #1
 8000554:      	bne	#52 <$t.7+0x8>
 8000556:      	str.w	r8, [sp, #8]
 800055a:      	add.w	r11, r9, r1
 800055e:      	ldr.w	r8, [r4, #12]
 8000562:      	cmp	r8, r11
 8000564:      	bls	#52 <$t.7+0x18>
 8000566:      	lsls	r0, r0, #28
 8000568:      	bmi	#98 <$t.7+0x4a>
 800056a:      	ldrb.w	r2, [r4, #32]
 800056e:      	sub.w	r1, r8, r11
 8000572:      	movs	r0, #0
 8000574:      	cmp	r2, #3
 8000576:      	it	eq
 8000578:      	moveq	r2, #1
 800057a:      	mov	r8, r1
 800057c:      	tbb	[pc, r2]

08000580 <$d.6>:
 8000580:	52 02 4e 02	.word	0x024e0252

08000584 <$t.7>:
 8000584:      	mov.w	r8, #0
 8000588:      	mov	r0, r1
 800058a:      	b	#150 <$t.9+0xe>
 800058c:      	mov	r0, r4
 800058e:      	mov	r1, r5
 8000590:      	mov	r2, r10
 8000592:      	bl	#400
 8000596:      	cbz	r0, #28
 8000598:      	movs	r6, #1
 800059a:      	b	#80 <$t.7+0x6a>
 800059c:      	mov	r0, r4
 800059e:      	mov	r1, r5
 80005a0:      	mov	r2, r10
 80005a2:      	bl	#384
 80005a6:      	cmp	r0, #0
 80005a8:      	bne.w	#246 <$t.9+0x8c>
 80005ac:      	ldrd	r0, r1, [r4, #24]
 80005b0:      	ldr	r3, [r1, #12]
 80005b2:      	ldr	r1, [sp, #8]
 80005b4:      	b	#6 <$t.7+0x3a>
 80005b6:      	ldrd	r0, r1, [r4, #24]
 80005ba:      	ldr	r3, [r1, #12]
 80005bc:      	mov	r1, r8
 80005be:      	mov	r2, r9
 80005c0:      	blx	r3
 80005c2:      	mov	r6, r0
 80005c4:      	mov	r0, r6
 80005c6:      	add	sp, #52
 80005c8:      	pop.w	{r8, r9, r10, r11}
 80005cc:      	pop	{r4, r5, r6, r7, pc}
 80005ce:      	ldr	r0, [r4, #4]
 80005d0:      	movs	r6, #1
 80005d2:      	ldrb.w	r1, [r4, #32]
 80005d6:      	mov	r2, r10
 80005d8:      	str	r0, [sp, #4]
 80005da:      	movs	r0, #48
 80005dc:      	str	r1, [sp]
 80005de:      	mov	r1, r5
 80005e0:      	str	r0, [r4, #4]
 80005e2:      	mov	r0, r4
 80005e4:      	strb.w	r6, [r4, #32]
 80005e8:      	bl	#314
 80005ec:      	cbz	r0, #8
 80005ee:      	mov	r0, r6
 80005f0:      	add	sp, #52
 80005f2:      	pop.w	{r8, r9, r10, r11}
 80005f6:      	pop	{r4, r5, r6, r7, pc}
 80005f8:      	ldrb.w	r2, [r4, #32]
 80005fc:      	sub.w	r1, r8, r11
 8000600:      	movs	r0, #0
 8000602:      	cmp	r2, #3
 8000604:      	it	eq
 8000606:      	moveq	r2, #1
 8000608:      	mov	r6, r1
 800060a:      	ldr.w	r8, [sp, #8]
 800060e:      	tbb	[pc, r2]

08000612 <$d.8>:
 8000612:	34 02 31 02	.word	0x02310234

08000616 <$t.9>:
 8000616:      	movs	r6, #0
 8000618:      	mov	r0, r1
 800061a:      	b	#92 <$t.9+0x64>
 800061c:      	lsrs	r0, r1, #1
 800061e:      	adds	r1, #1
 8000620:      	lsr.w	r8, r1, #1
 8000624:      	adds	r6, r0, #1
 8000626:      	subs	r6, #1
 8000628:      	beq	#14 <$t.9+0x24>
 800062a:      	ldrd	r0, r2, [r4, #24]
 800062e:      	ldr	r1, [r4, #4]
 8000630:      	ldr	r2, [r2, #16]
 8000632:      	blx	r2
 8000634:      	cmp	r0, #0
 8000636:      	beq	#-20 <$t.9+0x10>
 8000638:      	b	#102 <$t.9+0x8c>
 800063a:      	mov	r0, r4
 800063c:      	mov	r1, r5
 800063e:      	mov	r2, r10
 8000640:      	ldr.w	r11, [r4, #4]
 8000644:      	bl	#222
 8000648:      	cbnz	r0, #86
 800064a:      	ldrd	r0, r1, [r4, #24]
 800064e:      	mov	r2, r9
 8000650:      	ldr	r3, [r1, #12]
 8000652:      	ldr	r1, [sp, #8]
 8000654:      	blx	r3
 8000656:      	cbnz	r0, #72
 8000658:      	ldrd	r10, r4, [r4, #24]
 800065c:      	add.w	r5, r8, #1
 8000660:      	movs	r6, #1
 8000662:      	subs	r5, #1
 8000664:      	beq	#98 <$t.9+0xb4>
 8000666:      	ldr	r2, [r4, #16]
 8000668:      	mov	r0, r10
 800066a:      	mov	r1, r11
 800066c:      	blx	r2
 800066e:      	cmp	r0, #0
 8000670:      	beq	#-18 <$t.9+0x4c>
 8000672:      	b	#-136 <$t.7+0x6a>
 8000674:      	lsrs	r0, r1, #1
 8000676:      	adds	r1, #1
 8000678:      	lsrs	r6, r1, #1
 800067a:      	adds	r5, r0, #1
 800067c:      	subs	r5, #1
 800067e:      	beq	#14 <$t.9+0x7a>
 8000680:      	ldrd	r0, r2, [r4, #24]
 8000684:      	ldr	r1, [r4, #4]
 8000686:      	ldr	r2, [r2, #16]
 8000688:      	blx	r2
 800068a:      	cmp	r0, #0
 800068c:      	beq	#-20 <$t.9+0x66>
 800068e:      	b	#16 <$t.9+0x8c>
 8000690:      	ldrd	r0, r1, [r4, #24]
 8000694:      	mov	r2, r9
 8000696:      	ldr	r3, [r1, #12]
 8000698:      	mov	r1, r8
 800069a:      	ldr.w	r10, [r4, #4]
 800069e:      	blx	r3
 80006a0:      	cbz	r0, #10
 80006a2:      	movs	r6, #1
 80006a4:      	mov	r0, r6
 80006a6:      	add	sp, #52
 80006a8:      	pop.w	{r8, r9, r10, r11}
 80006ac:      	pop	{r4, r5, r6, r7, pc}
 80006ae:      	ldrd	r8, r9, [r4, #24]
 80006b2:      	adds	r5, r6, #1
 80006b4:      	movs	r6, #1
 80006b6:      	subs	r5, #1
 80006b8:      	beq	#26 <$t.9+0xc0>
 80006ba:      	ldr.w	r2, [r9, #16]
 80006be:      	mov	r0, r8
 80006c0:      	mov	r1, r10
 80006c2:      	blx	r2
 80006c4:      	cmp	r0, #0
 80006c6:      	beq	#-20 <$t.9+0xa0>
 80006c8:      	b	#-222 <$t.7+0x6a>
 80006ca:      	movs	r6, #0
 80006cc:      	mov	r0, r6
 80006ce:      	add	sp, #52
 80006d0:      	pop.w	{r8, r9, r10, r11}
 80006d4:      	pop	{r4, r5, r6, r7, pc}
 80006d6:      	ldr	r0, [sp]
 80006d8:      	movs	r6, #0
 80006da:      	strb.w	r0, [r4, #32]
 80006de:      	ldr	r0, [sp, #4]
 80006e0:      	str	r0, [r4, #4]
 80006e2:      	mov	r0, r6
 80006e4:      	add	sp, #52
 80006e6:      	pop.w	{r8, r9, r10, r11}
 80006ea:      	pop	{r4, r5, r6, r7, pc}

080006ec <core::panicking::panic_fmt::h3d4fe709119df940>:
 80006ec:      	push	{r7, lr}
 80006ee:      	mov	r7, sp
 80006f0:      	sub	sp, #16
 80006f2:      	strd	r0, r1, [sp, #8]
 80006f6:      	movw	r0, #4932
 80006fa:      	movt	r0, #2048
 80006fe:      	str	r0, [sp, #4]
 8000700:      	movw	r0, #5208
 8000704:      	movt	r0, #2048
 8000708:      	str	r0, [sp]
 800070a:      	mov	r0, sp
 800070c:      	bl	#2432
 8000710:      	trap

08000712 <core::ptr::drop_in_place::h04a129b24451d075>:
 8000712:      	bx	lr

08000714 <<T as core::any::Any>::type_id::hffc3b5436e52a86a>:
 8000714:      	movw	r0, #50601
 8000718:      	movw	r1, #27484
 800071c:      	movt	r0, #24677
 8000720:      	movt	r1, #15316
 8000724:      	bx	lr

08000726 <core::fmt::Formatter::pad_integral::write_prefix::h43274d4e4dd7a787>:
 8000726:      	push	{r4, r5, r7, lr}
 8000728:      	add	r7, sp, #8
 800072a:      	mov	r4, r2
 800072c:      	mov	r5, r0
 800072e:      	cmp.w	r1, #1114112
 8000732:      	beq	#12 <core::fmt::Formatter::pad_integral::write_prefix::h43274d4e4dd7a787+0x1c>
 8000734:      	ldrd	r0, r2, [r5, #24]
 8000738:      	ldr	r2, [r2, #16]
 800073a:      	blx	r2
 800073c:      	cbz	r0, #2
 800073e:      	movs	r0, #1
 8000740:      	pop	{r4, r5, r7, pc}
 8000742:      	cbz	r4, #14
 8000744:      	ldrd	r0, r1, [r5, #24]
 8000748:      	movs	r2, #0
 800074a:      	ldr	r3, [r1, #12]
 800074c:      	mov	r1, r4
 800074e:      	pop.w	{r4, r5, r7, lr}
 8000752:      	bx	r3
 8000754:      	movs	r0, #0
 8000756:      	pop	{r4, r5, r7, pc}

08000758 <core::fmt::Formatter::pad::hdd2f8bc43cf2bd72>:
 8000758:      	push	{r4, r5, r6, r7, lr}
 800075a:      	add	r7, sp, #12
 800075c:      	push.w	{r8, r9, r10, r11}
 8000760:      	sub	sp, #12
 8000762:      	ldr.w	lr, [r0, #8]
 8000766:      	mov	r10, r0
 8000768:      	ldr	r0, [r0, #16]
 800076a:      	mov	r9, r2
 800076c:      	mov	r6, r1
 800076e:      	cmp.w	lr, #1
 8000772:      	bne	#30 <core::fmt::Formatter::pad::hdd2f8bc43cf2bd72+0x3c>
 8000774:      	cmp	r0, #1
 8000776:      	beq	#32 <core::fmt::Formatter::pad::hdd2f8bc43cf2bd72+0x42>
 8000778:      	cmp.w	r9, #0
 800077c:      	beq.w	#1256 <core::fmt::Formatter::pad::hdd2f8bc43cf2bd72+0x510>
 8000780:      	sub.w	r8, r9, #1
 8000784:      	and	r4, r9, #3
 8000788:      	cmp.w	r8, #3
 800078c:      	bhs	#192 <core::fmt::Formatter::pad::hdd2f8bc43cf2bd72+0xf8>
 800078e:      	movs	r3, #0
 8000790:      	mov	r1, r6
 8000792:      	b	#718 <core::fmt::Formatter::pad::hdd2f8bc43cf2bd72+0x30c>
 8000794:      	cmp	r0, #1
 8000796:      	bne.w	#1244 <core::fmt::Formatter::pad::hdd2f8bc43cf2bd72+0x51e>
 800079a:      	ldr.w	r3, [r10, #20]
 800079e:      	add.w	r5, r6, r9
 80007a2:      	movs	r2, #0
 80007a4:      	str	r6, [sp, #8]
 80007a6:      	cbnz	r3, #76
 80007a8:      	cmp	r5, r6
 80007aa:      	beq.w	#1188 <core::fmt::Formatter::pad::hdd2f8bc43cf2bd72+0x4fa>
 80007ae:      	mov	r1, r6
 80007b0:      	ldrsb	r0, [r1], #1
 80007b4:      	cmp.w	r0, #4294967295
 80007b8:      	ble	#184 <core::fmt::Formatter::pad::hdd2f8bc43cf2bd72+0x11c>
 80007ba:      	ldr	r6, [sp, #8]
 80007bc:      	cmp	r2, #0
 80007be:      	it	ne
 80007c0:      	cmpne	r2, r9
 80007c2:      	bne.w	#488 <core::fmt::Formatter::pad::hdd2f8bc43cf2bd72+0x256>
 80007c6:      	mov	r0, r6
 80007c8:      	b	#500 <core::fmt::Formatter::pad::hdd2f8bc43cf2bd72+0x268>
 80007ca:      	ldrb	r6, [r1], #1
 80007ce:      	and	r8, r6, #63
 80007d2:      	mov	r6, r1
 80007d4:      	mov.w	r1, #1835008
 80007d8:      	and.w	r0, r1, r0, lsl #18
 80007dc:      	orr.w	r0, r0, r11, lsl #12
 80007e0:      	orr.w	r0, r0, r12, lsl #6
 80007e4:      	add	r0, r8
 80007e6:      	cmp.w	r0, #1114112
 80007ea:      	beq.w	#1124 <core::fmt::Formatter::pad::hdd2f8bc43cf2bd72+0x4fa>
 80007ee:      	subs	r0, r6, r4
 80007f0:      	subs	r3, #1
 80007f2:      	add	r2, r0
 80007f4:      	beq	#-80 <core::fmt::Formatter::pad::hdd2f8bc43cf2bd72+0x50>
 80007f6:      	cmp	r5, r6
 80007f8:      	beq.w	#1110 <core::fmt::Formatter::pad::hdd2f8bc43cf2bd72+0x4fa>
 80007fc:      	mov	r4, r6
 80007fe:      	ldrsb	r0, [r6], #1
 8000802:      	cmp.w	r0, #4294967295
 8000806:      	bgt	#-28 <core::fmt::Formatter::pad::hdd2f8bc43cf2bd72+0x96>
 8000808:      	uxtb	r0, r0
 800080a:      	cmp	r6, r5
 800080c:      	beq	#14 <core::fmt::Formatter::pad::hdd2f8bc43cf2bd72+0xc6>
 800080e:      	ldrb	r1, [r4, #1]
 8000810:      	adds	r6, r4, #2
 8000812:      	and	r11, r1, #63
 8000816:      	mov	r1, r6
 8000818:      	cmp	r0, #224
 800081a:      	blo	#-48 <core::fmt::Formatter::pad::hdd2f8bc43cf2bd72+0x96>
 800081c:      	b	#8 <core::fmt::Formatter::pad::hdd2f8bc43cf2bd72+0xd0>
 800081e:      	mov.w	r11, #0
 8000822:      	mov	r1, r5
 8000824:      	cmp	r0, #224
 8000826:      	blo	#-60 <core::fmt::Formatter::pad::hdd2f8bc43cf2bd72+0x96>
 8000828:      	cmp	r1, r5
 800082a:      	beq	#14 <core::fmt::Formatter::pad::hdd2f8bc43cf2bd72+0xe4>
 800082c:      	ldrb	r6, [r1], #1
 8000830:      	and	r12, r6, #63
 8000834:      	mov	r6, r1
 8000836:      	cmp	r0, #240
 8000838:      	blo	#-78 <core::fmt::Formatter::pad::hdd2f8bc43cf2bd72+0x96>
 800083a:      	b	#8 <core::fmt::Formatter::pad::hdd2f8bc43cf2bd72+0xee>
 800083c:      	mov.w	r12, #0
 8000840:      	mov	r1, r5
 8000842:      	cmp	r0, #240
 8000844:      	blo	#-90 <core::fmt::Formatter::pad::hdd2f8bc43cf2bd72+0x96>
 8000846:      	cmp	r1, r5
 8000848:      	bne	#-130 <core::fmt::Formatter::pad::hdd2f8bc43cf2bd72+0x72>
 800084a:      	mov.w	r8, #0
 800084e:      	b	#-126 <core::fmt::Formatter::pad::hdd2f8bc43cf2bd72+0x7c>
 8000850:      	sub.w	r0, r9, #4
 8000854:      	bic	r1, r0, #3
 8000858:      	movs	r0, #1
 800085a:      	cmp	r1, #12
 800085c:      	add.w	r0, r0, r1, lsr #2
 8000860:      	and	r12, r0, #3
 8000864:      	bhs	#38 <core::fmt::Formatter::pad::hdd2f8bc43cf2bd72+0x136>
 8000866:      	movs	r3, #0
 8000868:      	mov	r1, r6
 800086a:      	cmp.w	r12, #0
 800086e:      	bne.w	#256 <core::fmt::Formatter::pad::hdd2f8bc43cf2bd72+0x21a>
 8000872:      	b	#494 <core::fmt::Formatter::pad::hdd2f8bc43cf2bd72+0x30c>
 8000874:      	uxtb	r0, r0
 8000876:      	cmp	r1, r5
 8000878:      	beq.w	#404 <core::fmt::Formatter::pad::hdd2f8bc43cf2bd72+0x2b8>
 800087c:      	ldrb	r3, [r6, #1]
 800087e:      	adds	r1, r6, #2
 8000880:      	and	r3, r3, #63
 8000884:      	lsls	r3, r3, #6
 8000886:      	cmp	r0, #224
 8000888:      	bhs.w	#398 <core::fmt::Formatter::pad::hdd2f8bc43cf2bd72+0x2c2>
 800088c:      	b	#-214 <core::fmt::Formatter::pad::hdd2f8bc43cf2bd72+0x62>
 800088e:      	bic	r0, r0, #3
 8000892:      	movs	r3, #0
 8000894:      	rsbs	r0, r0, #0
 8000896:      	mov	r1, r6
 8000898:      	str	r4, [sp, #4]
 800089a:      	str	r6, [sp, #8]
 800089c:      	ldrb	r4, [r1]
 800089e:      	ldrb	r5, [r1, #1]
 80008a0:      	ldrb	r2, [r1, #2]
 80008a2:      	and	lr, r4, #192
 80008a6:      	ldrb	r6, [r1, #3]
 80008a8:      	cmp.w	lr, #128
 80008ac:      	ldrb.w	r11, [r1, #15]
 80008b0:      	and	r5, r5, #192
 80008b4:      	ldrb	r4, [r1, #14]
 80008b6:      	it	eq
 80008b8:      	addeq	r3, #1
 80008ba:      	ldrb.w	lr, [r1, #13]
 80008be:      	cmp	r5, #128
 80008c0:      	it	eq
 80008c2:      	addeq	r3, #1
 80008c4:      	and	r2, r2, #192
 80008c8:      	ldrb	r5, [r1, #4]
 80008ca:      	cmp	r2, #128
 80008cc:      	it	eq
 80008ce:      	addeq	r3, #1
 80008d0:      	and	r2, r6, #192
 80008d4:      	ldrb	r6, [r1, #5]
 80008d6:      	cmp	r2, #128
 80008d8:      	it	eq
 80008da:      	addeq	r3, #1
 80008dc:      	and	r2, r5, #192
 80008e0:      	ldrb	r5, [r1, #6]
 80008e2:      	cmp	r2, #128
 80008e4:      	it	eq
 80008e6:      	addeq	r3, #1
 80008e8:      	and	r2, r6, #192
 80008ec:      	ldrb	r6, [r1, #7]
 80008ee:      	cmp	r2, #128
 80008f0:      	it	eq
 80008f2:      	addeq	r3, #1
 80008f4:      	and	r2, r5, #192
 80008f8:      	ldrb	r5, [r1, #8]
 80008fa:      	cmp	r2, #128
 80008fc:      	it	eq
 80008fe:      	addeq	r3, #1
 8000900:      	and	r2, r6, #192
 8000904:      	ldrb	r6, [r1, #9]
 8000906:      	cmp	r2, #128
 8000908:      	it	eq
 800090a:      	addeq	r3, #1
 800090c:      	and	r2, r5, #192
 8000910:      	ldrb	r5, [r1, #10]
 8000912:      	cmp	r2, #128
 8000914:      	it	eq
 8000916:      	addeq	r3, #1
 8000918:      	and	r2, r6, #192
 800091c:      	cmp	r2, #128
 800091e:      	ldrb	r6, [r1, #12]
 8000920:      	it	eq
 8000922:      	addeq	r3, #1
 8000924:      	and	r2, r5, #192
 8000928:      	ldrb	r5, [r1, #11]
 800092a:      	cmp	r2, #128
 800092c:      	it	eq
 800092e:      	addeq	r3, #1
 8000930:      	adds	r1, #16
 8000932:      	and	r2, r5, #192
 8000936:      	cmp	r2, #128
 8000938:      	and	r2, r6, #192
 800093c:      	it	eq
 800093e:      	addeq	r3, #1
 8000940:      	cmp	r2, #128
 8000942:      	and	r2, lr, #192
 8000946:      	it	eq
 8000948:      	addeq	r3, #1
 800094a:      	cmp	r2, #128
 800094c:      	and	r2, r4, #192
 8000950:      	it	eq
 8000952:      	addeq	r3, #1
 8000954:      	cmp	r2, #128
 8000956:      	and	r2, r11, #192
 800095a:      	it	eq
 800095c:      	addeq	r3, #1
 800095e:      	cmp	r2, #128
 8000960:      	it	eq
 8000962:      	addeq	r3, #1
 8000964:      	adds	r0, #4
 8000966:      	bne	#-206 <core::fmt::Formatter::pad::hdd2f8bc43cf2bd72+0x144>
 8000968:      	ldrd	r4, r6, [sp, #4]
 800096c:      	cmp.w	r12, #0
 8000970:      	beq	#240 <core::fmt::Formatter::pad::hdd2f8bc43cf2bd72+0x30c>
 8000972:      	ldrb	r0, [r1]
 8000974:      	mov	lr, r6
 8000976:      	ldrb	r2, [r1, #1]
 8000978:      	and	r0, r0, #192
 800097c:      	ldrb	r6, [r1, #2]
 800097e:      	cmp	r0, #128
 8000980:      	ldrb	r5, [r1, #3]
 8000982:      	and	r0, r2, #192
 8000986:      	it	eq
 8000988:      	addeq	r3, #1
 800098a:      	cmp	r0, #128
 800098c:      	and	r0, r6, #192
 8000990:      	it	eq
 8000992:      	addeq	r3, #1
 8000994:      	cmp	r0, #128
 8000996:      	and	r0, r5, #192
 800099a:      	it	eq
 800099c:      	addeq	r3, #1
 800099e:      	cmp	r0, #128
 80009a0:      	it	eq
 80009a2:      	addeq	r3, #1
 80009a4:      	cmp.w	r12, #1
 80009a8:      	bne	#42 <core::fmt::Formatter::pad::hdd2f8bc43cf2bd72+0x27e>
 80009aa:      	adds	r1, #4
 80009ac:      	b	#178 <core::fmt::Formatter::pad::hdd2f8bc43cf2bd72+0x30a>
 80009ae:      	cmp	r2, r9
 80009b0:      	bhs	#8 <core::fmt::Formatter::pad::hdd2f8bc43cf2bd72+0x264>
 80009b2:      	ldrsb	r0, [r6, r2]
 80009b4:      	cmn.w	r0, #64
 80009b8:      	bge.w	#-502 <core::fmt::Formatter::pad::hdd2f8bc43cf2bd72+0x6e>
 80009bc:      	movs	r0, #0
 80009be:      	movs	r2, #0
 80009c0:      	cmp	r0, #0
 80009c2:      	ite	eq
 80009c4:      	moveq	r2, r9
 80009c6:      	movne	r6, r0
 80009c8:      	cmp.w	lr, #1
 80009cc:      	beq.w	#654 <core::fmt::Formatter::pad::hdd2f8bc43cf2bd72+0x506>
 80009d0:      	ldrd	r0, r1, [r10, #24]
 80009d4:      	b	#680 <core::fmt::Formatter::pad::hdd2f8bc43cf2bd72+0x528>
 80009d6:      	ldrb	r0, [r1, #4]
 80009d8:      	ldrb	r2, [r1, #5]
 80009da:      	and	r0, r0, #192
 80009de:      	ldrb	r6, [r1, #6]
 80009e0:      	cmp	r0, #128
 80009e2:      	ldrb	r5, [r1, #7]
 80009e4:      	and	r0, r2, #192
 80009e8:      	it	eq
 80009ea:      	addeq	r3, #1
 80009ec:      	cmp	r0, #128
 80009ee:      	and	r0, r6, #192
 80009f2:      	it	eq
 80009f4:      	addeq	r3, #1
 80009f6:      	cmp	r0, #128
 80009f8:      	and	r0, r5, #192
 80009fc:      	it	eq
 80009fe:      	addeq	r3, #1
 8000a00:      	cmp	r0, #128
 8000a02:      	it	eq
 8000a04:      	addeq	r3, #1
 8000a06:      	cmp.w	r12, #2
 8000a0a:      	bne	#34 <core::fmt::Formatter::pad::hdd2f8bc43cf2bd72+0x2d8>
 8000a0c:      	adds	r1, #8
 8000a0e:      	b	#80 <core::fmt::Formatter::pad::hdd2f8bc43cf2bd72+0x30a>
 8000a10:      	movs	r3, #0
 8000a12:      	mov	r1, r5
 8000a14:      	cmp	r0, #224
 8000a16:      	blo.w	#-608 <core::fmt::Formatter::pad::hdd2f8bc43cf2bd72+0x62>
 8000a1a:      	cmp	r1, r5
 8000a1c:      	beq.w	#516 <core::fmt::Formatter::pad::hdd2f8bc43cf2bd72+0x4cc>
 8000a20:      	ldrb	r6, [r1], #1
 8000a24:      	and	r6, r6, #63
 8000a28:      	cmp	r0, #240
 8000a2a:      	blo.w	#-628 <core::fmt::Formatter::pad::hdd2f8bc43cf2bd72+0x62>
 8000a2e:      	b	#508 <core::fmt::Formatter::pad::hdd2f8bc43cf2bd72+0x4d6>
 8000a30:      	ldrb	r0, [r1, #8]
 8000a32:      	ldrb	r2, [r1, #9]
 8000a34:      	and	r0, r0, #192
 8000a38:      	ldrb	r6, [r1, #10]
 8000a3a:      	ldrb	r5, [r1, #11]
 8000a3c:      	cmp	r0, #128
 8000a3e:      	it	eq
 8000a40:      	addeq	r3, #1
 8000a42:      	and	r0, r2, #192
 8000a46:      	cmp	r0, #128
 8000a48:      	it	eq
 8000a4a:      	addeq	r3, #1
 8000a4c:      	and	r0, r6, #192
 8000a50:      	adds	r1, #12
 8000a52:      	cmp	r0, #128
 8000a54:      	it	eq
 8000a56:      	addeq	r3, #1
 8000a58:      	and	r0, r5, #192
 8000a5c:      	cmp	r0, #128
 8000a5e:      	it	eq
 8000a60:      	addeq	r3, #1
 8000a62:      	mov	r6, lr
 8000a64:      	cbz	r4, #42
 8000a66:      	ldrb	r0, [r1]
 8000a68:      	and	r0, r0, #192
 8000a6c:      	cmp	r0, #128
 8000a6e:      	it	eq
 8000a70:      	addeq	r3, #1
 8000a72:      	cmp	r4, #1
 8000a74:      	beq	#26 <core::fmt::Formatter::pad::hdd2f8bc43cf2bd72+0x33a>
 8000a76:      	ldrb	r0, [r1, #1]
 8000a78:      	and	r0, r0, #192
 8000a7c:      	cmp	r0, #128
 8000a7e:      	it	eq
 8000a80:      	addeq	r3, #1
 8000a82:      	cmp	r4, #2
 8000a84:      	beq	#10 <core::fmt::Formatter::pad::hdd2f8bc43cf2bd72+0x33a>
 8000a86:      	ldrb	r0, [r1, #2]
 8000a88:      	and	r0, r0, #192
 8000a8c:      	cmp	r0, #128
 8000a8e:      	it	eq
 8000a90:      	addeq	r3, #1
 8000a92:      	ldr.w	lr, [r10, #12]
 8000a96:      	sub.w	r0, r9, r3
 8000a9a:      	cmp	r0, lr
 8000a9c:      	bhs.w	#470 <core::fmt::Formatter::pad::hdd2f8bc43cf2bd72+0x51e>
 8000aa0:      	cmp.w	r8, #3
 8000aa4:      	bhs	#4 <core::fmt::Formatter::pad::hdd2f8bc43cf2bd72+0x354>
 8000aa6:      	movs	r2, #0
 8000aa8:      	mov	r3, r6
 8000aaa:      	b	#538 <core::fmt::Formatter::pad::hdd2f8bc43cf2bd72+0x570>
 8000aac:      	sub.w	r0, r9, #4
 8000ab0:      	bic	r2, r0, #3
 8000ab4:      	movs	r0, #1
 8000ab6:      	cmp	r2, #12
 8000ab8:      	add.w	r0, r0, r2, lsr #2
 8000abc:      	and	r12, r0, #3
 8000ac0:      	bhs	#4 <core::fmt::Formatter::pad::hdd2f8bc43cf2bd72+0x370>
 8000ac2:      	movs	r2, #0
 8000ac4:      	mov	r3, r6
 8000ac6:      	b	#218 <core::fmt::Formatter::pad::hdd2f8bc43cf2bd72+0x44c>
 8000ac8:      	bic	r0, r0, #3
 8000acc:      	str	r4, [sp, #4]
 8000ace:      	rsbs	r4, r0, #0
 8000ad0:      	movs	r2, #0
 8000ad2:      	mov	r3, r6
 8000ad4:      	str	r6, [sp, #8]
 8000ad6:      	ldrb	r6, [r3]
 8000ad8:      	ldrb	r5, [r3, #1]
 8000ada:      	ldrb	r1, [r3, #2]
 8000adc:      	and	r6, r6, #192
 8000ae0:      	ldrb	r0, [r3, #3]
 8000ae2:      	cmp	r6, #128
 8000ae4:      	ldrb.w	r8, [r3, #15]
 8000ae8:      	and	r6, r5, #192
 8000aec:      	ldrb.w	r11, [r3, #14]
 8000af0:      	it	eq
 8000af2:      	addeq	r2, #1
 8000af4:      	ldrb	r5, [r3, #13]
 8000af6:      	cmp	r6, #128
 8000af8:      	it	eq
 8000afa:      	addeq	r2, #1
 8000afc:      	and	r1, r1, #192
 8000b00:      	ldrb	r6, [r3, #4]
 8000b02:      	cmp	r1, #128
 8000b04:      	it	eq
 8000b06:      	addeq	r2, #1
 8000b08:      	and	r0, r0, #192
 8000b0c:      	ldrb	r1, [r3, #5]
 8000b0e:      	cmp	r0, #128
 8000b10:      	it	eq
 8000b12:      	addeq	r2, #1
 8000b14:      	and	r0, r6, #192
 8000b18:      	ldrb	r6, [r3, #6]
 8000b1a:      	cmp	r0, #128
 8000b1c:      	it	eq
 8000b1e:      	addeq	r2, #1
 8000b20:      	and	r0, r1, #192
 8000b24:      	ldrb	r1, [r3, #7]
 8000b26:      	cmp	r0, #128
 8000b28:      	it	eq
 8000b2a:      	addeq	r2, #1
 8000b2c:      	and	r0, r6, #192
 8000b30:      	ldrb	r6, [r3, #8]
 8000b32:      	cmp	r0, #128
 8000b34:      	it	eq
 8000b36:      	addeq	r2, #1
 8000b38:      	and	r0, r1, #192
 8000b3c:      	ldrb	r1, [r3, #9]
 8000b3e:      	cmp	r0, #128
 8000b40:      	it	eq
 8000b42:      	addeq	r2, #1
 8000b44:      	and	r0, r6, #192
 8000b48:      	ldrb	r6, [r3, #10]
 8000b4a:      	cmp	r0, #128
 8000b4c:      	it	eq
 8000b4e:      	addeq	r2, #1
 8000b50:      	and	r0, r1, #192
 8000b54:      	cmp	r0, #128
 8000b56:      	ldrb	r1, [r3, #12]
 8000b58:      	it	eq
 8000b5a:      	addeq	r2, #1
 8000b5c:      	and	r0, r6, #192
 8000b60:      	ldrb	r6, [r3, #11]
 8000b62:      	cmp	r0, #128
 8000b64:      	it	eq
 8000b66:      	addeq	r2, #1
 8000b68:      	adds	r3, #16
 8000b6a:      	and	r0, r6, #192
 8000b6e:      	cmp	r0, #128
 8000b70:      	and	r0, r1, #192
 8000b74:      	it	eq
 8000b76:      	addeq	r2, #1
 8000b78:      	cmp	r0, #128
 8000b7a:      	and	r0, r5, #192
 8000b7e:      	it	eq
 8000b80:      	addeq	r2, #1
 8000b82:      	cmp	r0, #128
 8000b84:      	and	r0, r11, #192
 8000b88:      	it	eq
 8000b8a:      	addeq	r2, #1
 8000b8c:      	cmp	r0, #128
 8000b8e:      	and	r0, r8, #192
 8000b92:      	it	eq
 8000b94:      	addeq	r2, #1
 8000b96:      	cmp	r0, #128
 8000b98:      	it	eq
 8000b9a:      	addeq	r2, #1
 8000b9c:      	adds	r4, #4
 8000b9e:      	bne	#-204 <core::fmt::Formatter::pad::hdd2f8bc43cf2bd72+0x37e>
 8000ba0:      	ldrd	r4, r6, [sp, #4]
 8000ba4:      	cmp.w	r12, #0
 8000ba8:      	beq.w	#284 <core::fmt::Formatter::pad::hdd2f8bc43cf2bd72+0x570>
 8000bac:      	ldrb	r0, [r3]
 8000bae:      	ldrb	r1, [r3, #1]
 8000bb0:      	and	r0, r0, #192
 8000bb4:      	ldrb	r5, [r3, #2]
 8000bb6:      	cmp	r0, #128
 8000bb8:      	ldrb.w	r8, [r3, #3]
 8000bbc:      	and	r0, r1, #192
 8000bc0:      	it	eq
 8000bc2:      	addeq	r2, #1
 8000bc4:      	cmp	r0, #128
 8000bc6:      	and	r0, r5, #192
 8000bca:      	it	eq
 8000bcc:      	addeq	r2, #1
 8000bce:      	cmp	r0, #128
 8000bd0:      	and	r0, r8, #192
 8000bd4:      	it	eq
 8000bd6:      	addeq	r2, #1
 8000bd8:      	cmp	r0, #128
 8000bda:      	it	eq
 8000bdc:      	addeq	r2, #1
 8000bde:      	cmp.w	r12, #1
 8000be2:      	bne	#2 <core::fmt::Formatter::pad::hdd2f8bc43cf2bd72+0x490>
 8000be4:      	adds	r3, #4
 8000be6:      	b	#222 <core::fmt::Formatter::pad::hdd2f8bc43cf2bd72+0x570>
 8000be8:      	ldrb	r0, [r3, #4]
 8000bea:      	ldrb	r1, [r3, #5]
 8000bec:      	and	r0, r0, #192
 8000bf0:      	ldrb	r5, [r3, #6]
 8000bf2:      	cmp	r0, #128
 8000bf4:      	ldrb.w	r8, [r3, #7]
 8000bf8:      	and	r0, r1, #192
 8000bfc:      	it	eq
 8000bfe:      	addeq	r2, #1
 8000c00:      	cmp	r0, #128
 8000c02:      	and	r0, r5, #192
 8000c06:      	it	eq
 8000c08:      	addeq	r2, #1
 8000c0a:      	cmp	r0, #128
 8000c0c:      	and	r0, r8, #192
 8000c10:      	it	eq
 8000c12:      	addeq	r2, #1
 8000c14:      	cmp	r0, #128
 8000c16:      	it	eq
 8000c18:      	addeq	r2, #1
 8000c1a:      	cmp.w	r12, #2
 8000c1e:      	bne	#110 <core::fmt::Formatter::pad::hdd2f8bc43cf2bd72+0x538>
 8000c20:      	adds	r3, #8
 8000c22:      	b	#162 <core::fmt::Formatter::pad::hdd2f8bc43cf2bd72+0x570>
 8000c24:      	movs	r6, #0
 8000c26:      	mov	r1, r5
 8000c28:      	cmp	r0, #240
 8000c2a:      	blo.w	#-1140 <core::fmt::Formatter::pad::hdd2f8bc43cf2bd72+0x62>
 8000c2e:      	orrs	r3, r6
 8000c30:      	mov.w	r6, #1835008
 8000c34:      	and.w	r0, r6, r0, lsl #18
 8000c38:      	cmp	r1, r5
 8000c3a:      	orr.w	r0, r0, r3, lsl #6
 8000c3e:      	itte	ne
 8000c40:      	ldrbne	r1, [r1]
 8000c42:      	andne	r1, r1, #63
 8000c46:      	moveq	r1, #0
 8000c48:      	add	r0, r1
 8000c4a:      	cmp.w	r0, #1114112
 8000c4e:      	bne.w	#-1176 <core::fmt::Formatter::pad::hdd2f8bc43cf2bd72+0x62>
 8000c52:      	mov	r2, r9
 8000c54:      	ldr	r6, [sp, #8]
 8000c56:      	cmp.w	lr, #1
 8000c5a:      	bne.w	#-654 <core::fmt::Formatter::pad::hdd2f8bc43cf2bd72+0x278>
 8000c5e:      	mov	r9, r2
 8000c60:      	cmp.w	r9, #0
 8000c64:      	bne.w	#-1256 <core::fmt::Formatter::pad::hdd2f8bc43cf2bd72+0x28>
 8000c68:      	ldr.w	lr, [r10, #12]
 8000c6c:      	cmp.w	lr, #0
 8000c70:      	beq	#2 <core::fmt::Formatter::pad::hdd2f8bc43cf2bd72+0x51e>
 8000c72:      	movs	r2, #0
 8000c74:      	b	#126 <core::fmt::Formatter::pad::hdd2f8bc43cf2bd72+0x59e>
 8000c76:      	ldr.w	r1, [r10, #28]
 8000c7a:      	mov	r2, r9
 8000c7c:      	ldr.w	r0, [r10, #24]
 8000c80:      	ldr	r3, [r1, #12]
 8000c82:      	mov	r1, r6
 8000c84:      	add	sp, #12
 8000c86:      	pop.w	{r8, r9, r10, r11}
 8000c8a:      	pop.w	{r4, r5, r6, r7, lr}
 8000c8e:      	bx	r3
 8000c90:      	ldrb	r0, [r3, #8]
 8000c92:      	mov	r5, r6
 8000c94:      	ldrb	r1, [r3, #9]
 8000c96:      	and	r0, r0, #192
 8000c9a:      	ldrb	r6, [r3, #10]
 8000c9c:      	ldrb.w	r12, [r3, #11]
 8000ca0:      	cmp	r0, #128
 8000ca2:      	it	eq
 8000ca4:      	addeq	r2, #1
 8000ca6:      	and	r0, r1, #192
 8000caa:      	cmp	r0, #128
 8000cac:      	and	r0, r6, #192
 8000cb0:      	it	eq
 8000cb2:      	addeq	r2, #1
 8000cb4:      	cmp	r0, #128
 8000cb6:      	it	eq
 8000cb8:      	addeq	r2, #1
 8000cba:      	and	r0, r12, #192
 8000cbe:      	cmp	r0, #128
 8000cc0:      	mov	r6, r5
 8000cc2:      	it	eq
 8000cc4:      	addeq	r2, #1
 8000cc6:      	adds	r3, #12
 8000cc8:      	cbz	r4, #42
 8000cca:      	ldrb	r0, [r3]
 8000ccc:      	and	r0, r0, #192
 8000cd0:      	cmp	r0, #128
 8000cd2:      	it	eq
 8000cd4:      	addeq	r2, #1
 8000cd6:      	cmp	r4, #1
 8000cd8:      	beq	#26 <core::fmt::Formatter::pad::hdd2f8bc43cf2bd72+0x59e>
 8000cda:      	ldrb	r0, [r3, #1]
 8000cdc:      	and	r0, r0, #192
 8000ce0:      	cmp	r0, #128
 8000ce2:      	it	eq
 8000ce4:      	addeq	r2, #1
 8000ce6:      	cmp	r4, #2
 8000ce8:      	beq	#10 <core::fmt::Formatter::pad::hdd2f8bc43cf2bd72+0x59e>
 8000cea:      	ldrb	r0, [r3, #2]
 8000cec:      	and	r0, r0, #192
 8000cf0:      	cmp	r0, #128
 8000cf2:      	it	eq
 8000cf4:      	addeq	r2, #1
 8000cf6:      	ldrb.w	r0, [r10, #32]
 8000cfa:      	subs	r3, r0, #3
 8000cfc:      	it	ne
 8000cfe:      	movne	r3, r0
 8000d00:      	sub.w	r0, r2, r9
 8000d04:      	add.w	r1, r0, lr
 8000d08:      	movs	r0, #0
 8000d0a:      	mov	r11, r1
 8000d0c:      	tbb	[pc, r3]

08000d10 <$d.15>:
 8000d10:	0a 02 06 02	.word	0x0206020a

08000d14 <$t.16>:
 8000d14:      	mov.w	r11, #0
 8000d18:      	mov	r0, r1
 8000d1a:      	b	#6 <$t.16+0x10>
 8000d1c:      	lsrs	r0, r1, #1
 8000d1e:      	adds	r1, #1
 8000d20:      	lsr.w	r11, r1, #1
 8000d24:      	adds	r4, r0, #1
 8000d26:      	subs	r4, #1
 8000d28:      	beq	#16 <$t.16+0x28>
 8000d2a:      	ldrd	r0, r2, [r10, #24]
 8000d2e:      	ldr.w	r1, [r10, #4]
 8000d32:      	ldr	r2, [r2, #16]
 8000d34:      	blx	r2
 8000d36:      	cmp	r0, #0
 8000d38:      	beq	#-22 <$t.16+0x12>
 8000d3a:      	b	#40 <$t.16+0x52>
 8000d3c:      	ldrd	r0, r1, [r10, #24]
 8000d40:      	mov	r2, r9
 8000d42:      	ldr	r3, [r1, #12]
 8000d44:      	mov	r1, r6
 8000d46:      	ldr.w	r8, [r10, #4]
 8000d4a:      	blx	r3
 8000d4c:      	cbnz	r0, #22
 8000d4e:      	ldrd	r6, r5, [r10, #24]
 8000d52:      	add.w	r4, r11, #1
 8000d56:      	subs	r4, #1
 8000d58:      	beq	#20 <$t.16+0x5c>
 8000d5a:      	ldr	r2, [r5, #16]
 8000d5c:      	mov	r0, r6
 8000d5e:      	mov	r1, r8
 8000d60:      	blx	r2
 8000d62:      	cmp	r0, #0
 8000d64:      	beq	#-18 <$t.16+0x42>
 8000d66:      	movs	r0, #1
 8000d68:      	add	sp, #12
 8000d6a:      	pop.w	{r8, r9, r10, r11}
 8000d6e:      	pop	{r4, r5, r6, r7, pc}
 8000d70:      	movs	r0, #0
 8000d72:      	add	sp, #12
 8000d74:      	pop.w	{r8, r9, r10, r11}
 8000d78:      	pop	{r4, r5, r6, r7, pc}

08000d7a <<&T as core::fmt::Display>::fmt::hed4fc898b8a3241f>:
 8000d7a:      	mov	r3, r1
 8000d7c:      	ldrd	r1, r2, [r0]
 8000d80:      	mov	r0, r3
 8000d82:      	b.w	#-1582 <core::fmt::Formatter::pad::hdd2f8bc43cf2bd72>

08000d86 <core::fmt::write::h80f221a6e172bdff>:
 8000d86:      	push	{r4, r5, r6, r7, lr}
 8000d88:      	add	r7, sp, #12
 8000d8a:      	push.w	{r8, r9, r10, r11}
 8000d8e:      	sub	sp, #52
 8000d90:      	mov	r4, r2
 8000d92:      	movs	r2, #3
 8000d94:      	ldr	r3, [r4, #8]
 8000d96:      	strb.w	r2, [sp, #48]
 8000d9a:      	movs	r2, #32
 8000d9c:      	str	r2, [sp, #20]
 8000d9e:      	movs	r2, #0
 8000da0:      	cmp	r3, #0
 8000da2:      	str	r2, [sp, #16]
 8000da4:      	str	r1, [sp, #44]
 8000da6:      	str	r0, [sp, #40]
 8000da8:      	str	r2, [sp, #32]
 8000daa:      	str	r2, [sp, #24]
 8000dac:      	str	r3, [sp, #8]
 8000dae:      	beq	#230 <core::fmt::write::h80f221a6e172bdff+0x112>
 8000db0:      	ldr.w	r11, [r4, #12]
 8000db4:      	ldrd	r6, r9, [r4]
 8000db8:      	cmp	r11, r9
 8000dba:      	it	hi
 8000dbc:      	movhi	r11, r9
 8000dbe:      	cmp.w	r11, #0
 8000dc2:      	str	r6, [sp, #12]
 8000dc4:      	beq.w	#298 <core::fmt::write::h80f221a6e172bdff+0x16c>
 8000dc8:      	str.w	r9, [sp, #4]
 8000dcc:      	ldrd	r3, r2, [r6]
 8000dd0:      	ldr	r6, [r1, #12]
 8000dd2:      	mov	r1, r3
 8000dd4:      	blx	r6
 8000dd6:      	cmp	r0, #0
 8000dd8:      	bne.w	#318 <core::fmt::write::h80f221a6e172bdff+0x194>
 8000ddc:      	ldr	r0, [sp, #8]
 8000dde:      	sub.w	r10, r11, #1
 8000de2:      	ldr.w	r9, [r4, #16]
 8000de6:      	mov.w	r8, #0
 8000dea:      	add.w	r6, r0, #16
 8000dee:      	ldr	r0, [sp, #8]
 8000df0:      	add.w	r0, r0, r8, lsl #2
 8000df4:      	ldrd	r2, r1, [r0, #20]
 8000df8:      	ldrd	r3, r4, [r0, #4]
 8000dfc:      	ldrb	r5, [r0, #28]
 8000dfe:      	str	r3, [sp, #20]
 8000e00:      	strb.w	r5, [sp, #48]
 8000e04:      	str	r4, [sp, #16]
 8000e06:      	cbz	r2, #26
 8000e08:      	cmp	r2, #2
 8000e0a:      	beq	#26 <core::fmt::write::h80f221a6e172bdff+0xa2>
 8000e0c:      	add.w	r2, r9, r1, lsl #3
 8000e10:      	movw	r3, #1051
 8000e14:      	movt	r3, #2048
 8000e18:      	ldr	r2, [r2, #4]
 8000e1a:      	cmp	r2, r3
 8000e1c:      	bne	#8 <core::fmt::write::h80f221a6e172bdff+0xa2>
 8000e1e:      	ldr.w	r1, [r9, r1, lsl #3]
 8000e22:      	ldr	r1, [r1]
 8000e24:      	movs	r2, #1
 8000e26:      	b	#0 <core::fmt::write::h80f221a6e172bdff+0xa4>
 8000e28:      	movs	r2, #0
 8000e2a:      	strd	r2, r1, [sp, #24]
 8000e2e:      	ldr	r0, [r0, #12]
 8000e30:      	ldr	r1, [r6]
 8000e32:      	cbz	r0, #26
 8000e34:      	cmp	r0, #2
 8000e36:      	beq	#26 <core::fmt::write::h80f221a6e172bdff+0xce>
 8000e38:      	add.w	r0, r9, r1, lsl #3
 8000e3c:      	movw	r2, #1051
 8000e40:      	movt	r2, #2048
 8000e44:      	ldr	r0, [r0, #4]
 8000e46:      	cmp	r0, r2
 8000e48:      	bne	#8 <core::fmt::write::h80f221a6e172bdff+0xce>
 8000e4a:      	ldr.w	r0, [r9, r1, lsl #3]
 8000e4e:      	ldr	r1, [r0]
 8000e50:      	movs	r2, #1
 8000e52:      	b	#0 <core::fmt::write::h80f221a6e172bdff+0xd0>
 8000e54:      	movs	r2, #0
 8000e56:      	ldr	r3, [r6, #-16]
 8000e5a:      	str	r1, [sp, #36]
 8000e5c:      	add.w	r1, r9, r3, lsl #3
 8000e60:      	ldr.w	r0, [r9, r3, lsl #3]
 8000e64:      	ldr	r3, [r1, #4]
 8000e66:      	add	r1, sp, #16
 8000e68:      	str	r2, [sp, #32]
 8000e6a:      	blx	r3
 8000e6c:      	cmp	r0, #0
 8000e6e:      	bne	#168 <core::fmt::write::h80f221a6e172bdff+0x194>
 8000e70:      	cmp.w	r10, #0
 8000e74:      	beq	#172 <core::fmt::write::h80f221a6e172bdff+0x19e>
 8000e76:      	ldr	r1, [sp, #12]
 8000e78:      	ldrd	r0, r3, [sp, #40]
 8000e7c:      	add.w	r2, r1, r8
 8000e80:      	ldr	r3, [r3, #12]
 8000e82:      	ldrd	r1, r2, [r2, #8]
 8000e86:      	blx	r3
 8000e88:      	sub.w	r10, r10, #1
 8000e8c:      	adds	r6, #32
 8000e8e:      	add.w	r8, r8, #8
 8000e92:      	cmp	r0, #0
 8000e94:      	beq	#-170 <core::fmt::write::h80f221a6e172bdff+0x68>
 8000e96:      	b	#128 <core::fmt::write::h80f221a6e172bdff+0x194>
 8000e98:      	ldr.w	r11, [r4, #20]
 8000e9c:      	ldrd	r6, r9, [r4]
 8000ea0:      	cmp	r11, r9
 8000ea2:      	it	hi
 8000ea4:      	movhi	r11, r9
 8000ea6:      	cmp.w	r11, #0
 8000eaa:      	str	r6, [sp, #12]
 8000eac:      	beq	#76 <core::fmt::write::h80f221a6e172bdff+0x176>
 8000eae:      	ldrd	r3, r2, [r6]
 8000eb2:      	ldr	r6, [r1, #12]
 8000eb4:      	ldr	r4, [r4, #16]
 8000eb6:      	mov	r1, r3
 8000eb8:      	blx	r6
 8000eba:      	cbnz	r0, #92
 8000ebc:      	ldr	r0, [sp, #12]
 8000ebe:      	adds	r6, r4, #4
 8000ec0:      	sub.w	r5, r11, #1
 8000ec4:      	add.w	r8, sp, #16
 8000ec8:      	add.w	r4, r0, #8
 8000ecc:      	ldr	r0, [r6, #-4]
 8000ed0:      	mov	r1, r8
 8000ed2:      	ldr	r2, [r6]
 8000ed4:      	blx	r2
 8000ed6:      	cbnz	r0, #64
 8000ed8:      	cbz	r5, #36
 8000eda:      	ldrd	r0, r3, [sp, #40]
 8000ede:      	ldrd	r1, r2, [r4]
 8000ee2:      	ldr	r3, [r3, #12]
 8000ee4:      	blx	r3
 8000ee6:      	subs	r5, #1
 8000ee8:      	adds	r6, #8
 8000eea:      	adds	r4, #8
 8000eec:      	cmp	r0, #0
 8000eee:      	beq	#-38 <core::fmt::write::h80f221a6e172bdff+0x146>
 8000ef0:      	b	#38 <core::fmt::write::h80f221a6e172bdff+0x194>
 8000ef2:      	mov.w	r11, #0
 8000ef6:      	cmp	r9, r11
 8000ef8:      	bhi	#8 <core::fmt::write::h80f221a6e172bdff+0x17e>
 8000efa:      	b	#46 <core::fmt::write::h80f221a6e172bdff+0x1a6>
 8000efc:      	mov.w	r11, #0
 8000f00:      	cmp	r9, r11
 8000f02:      	bls	#38 <core::fmt::write::h80f221a6e172bdff+0x1a6>
 8000f04:      	ldr	r2, [sp, #12]
 8000f06:      	ldrd	r0, r3, [sp, #40]
 8000f0a:      	ldr	r3, [r3, #12]
 8000f0c:      	ldr.w	r1, [r2, r11, lsl #3]
 8000f10:      	add.w	r2, r2, r11, lsl #3
 8000f14:      	ldr	r2, [r2, #4]
 8000f16:      	blx	r3
 8000f18:      	cbz	r0, #16
 8000f1a:      	movs	r0, #1
 8000f1c:      	add	sp, #52
 8000f1e:      	pop.w	{r8, r9, r10, r11}
 8000f22:      	pop	{r4, r5, r6, r7, pc}
 8000f24:      	ldr.w	r9, [sp, #4]
 8000f28:      	cmp	r9, r11
 8000f2a:      	bhi	#-42 <core::fmt::write::h80f221a6e172bdff+0x17e>
 8000f2c:      	movs	r0, #0
 8000f2e:      	add	sp, #52
 8000f30:      	pop.w	{r8, r9, r10, r11}
 8000f34:      	pop	{r4, r5, r6, r7, pc}

08000f36 <<&T as core::fmt::Display>::fmt::hb1351d570a30a9c9>:
 8000f36:      	push	{r4, r5, r6, r7, lr}
 8000f38:      	add	r7, sp, #12
 8000f3a:      	push.w	{r8, r9, r11}
 8000f3e:      	sub	sp, #24
 8000f40:      	ldr.w	lr, [r0]
 8000f44:      	mov	r2, sp
 8000f46:      	ldrd	r12, r1, [r1, #24]
 8000f4a:      	mov	r3, r2
 8000f4c:      	ldm.w	lr, {r0, r4, r5, r6, r8, r9}
 8000f50:      	stm.w	r3, {r0, r4, r5, r6, r8, r9}
 8000f54:      	mov	r0, r12
 8000f56:      	bl	#-468
 8000f5a:      	add	sp, #24
 8000f5c:      	pop.w	{r8, r9, r11}
 8000f60:      	pop	{r4, r5, r6, r7, pc}

08000f62 <<&T as core::fmt::Display>::fmt::h28023d1754819fb6>:
 8000f62:      	ldr	r0, [r0]
 8000f64:      	mov	r3, r1
 8000f66:      	ldrd	r1, r2, [r0]
 8000f6a:      	mov	r0, r3
 8000f6c:      	b.w	#-2072 <core::fmt::Formatter::pad::hdd2f8bc43cf2bd72>

08000f70 <cortex_m::itm::write_all::h1098dbb8e67ada69>:
 8000f70:      	push	{r4, r5, r7, lr}
 8000f72:      	add	r7, sp, #8
 8000f74:      	cmp	r2, #0
 8000f76:      	beq.w	#262 <cortex_m::itm::write_all::h1098dbb8e67ada69+0x110>
 8000f7a:      	lsls	r3, r1, #31
 8000f7c:      	beq	#32 <cortex_m::itm::write_all::h1098dbb8e67ada69+0x30>
 8000f7e:      	ldr	r3, [r0]
 8000f80:      	lsls	r3, r3, #31
 8000f82:      	itttt	eq
 8000f84:      	ldreq	r3, [r0]
 8000f86:      	lslseq.w	r3, r3, #31
 8000f8a:      	ldreq	r3, [r0]
 8000f8c:      	lslseq.w	r3, r3, #31
 8000f90:      	bne	#4 <cortex_m::itm::write_all::h1098dbb8e67ada69+0x28>
 8000f92:      	ldr	r3, [r0]
 8000f94:      	lsls	r3, r3, #31
 8000f96:      	beq	#-28 <cortex_m::itm::write_all::h1098dbb8e67ada69+0xe>
 8000f98:      	ldrb	r3, [r1], #1
 8000f9c:      	subs	r2, #1
 8000f9e:      	strb	r3, [r0]
 8000fa0:      	and	r3, r1, #3
 8000fa4:      	cmp	r3, #2
 8000fa6:      	bne	#36 <cortex_m::itm::write_all::h1098dbb8e67ada69+0x5e>
 8000fa8:      	cmp	r2, #2
 8000faa:      	blo	#174 <cortex_m::itm::write_all::h1098dbb8e67ada69+0xec>
 8000fac:      	ldr	r3, [r0]
 8000fae:      	lsls	r3, r3, #31
 8000fb0:      	itttt	eq
 8000fb2:      	ldreq	r3, [r0]
 8000fb4:      	lslseq.w	r3, r3, #31
 8000fb8:      	ldreq	r3, [r0]
 8000fba:      	lslseq.w	r3, r3, #31
 8000fbe:      	bne	#4 <cortex_m::itm::write_all::h1098dbb8e67ada69+0x56>
 8000fc0:      	ldr	r3, [r0]
 8000fc2:      	lsls	r3, r3, #31
 8000fc4:      	beq	#-28 <cortex_m::itm::write_all::h1098dbb8e67ada69+0x3c>
 8000fc6:      	ldrh	r3, [r1], #2
 8000fca:      	subs	r2, #2
 8000fcc:      	strh	r3, [r0]
 8000fce:      	cmp	r2, #0
 8000fd0:      	beq	#172 <cortex_m::itm::write_all::h1098dbb8e67ada69+0x110>
 8000fd2:      	bic	r12, r2, #3
 8000fd6:      	movs	r3, #0
 8000fd8:      	cmp.w	r3, r2, lsr #2
 8000fdc:      	beq	#48 <cortex_m::itm::write_all::h1098dbb8e67ada69+0xa0>
 8000fde:      	lsr.w	lr, r2, #2
 8000fe2:      	movs	r3, #0
 8000fe4:      	mov	r4, r1
 8000fe6:      	b	#10 <cortex_m::itm::write_all::h1098dbb8e67ada69+0x84>
 8000fe8:      	ldr	r5, [r4], #4
 8000fec:      	adds	r3, #1
 8000fee:      	cmp	r3, lr
 8000ff0:      	str	r5, [r0]
 8000ff2:      	beq	#26 <cortex_m::itm::write_all::h1098dbb8e67ada69+0xa0>
 8000ff4:      	ldr	r5, [r0]
 8000ff6:      	lsls	r5, r5, #31
 8000ff8:      	itttt	eq
 8000ffa:      	ldreq	r5, [r0]
 8000ffc:      	lslseq.w	r5, r5, #31
 8001000:      	ldreq	r5, [r0]
 8001002:      	lslseq.w	r5, r5, #31
 8001006:      	bne	#-34 <cortex_m::itm::write_all::h1098dbb8e67ada69+0x78>
 8001008:      	ldr	r5, [r0]
 800100a:      	lsls	r5, r5, #31
 800100c:      	beq	#-28 <cortex_m::itm::write_all::h1098dbb8e67ada69+0x84>
 800100e:      	b	#-42 <cortex_m::itm::write_all::h1098dbb8e67ada69+0x78>
 8001010:      	and	r2, r2, #3
 8001014:      	add	r1, r12
 8001016:      	cmp	r2, #2
 8001018:      	blo	#32 <cortex_m::itm::write_all::h1098dbb8e67ada69+0xcc>
 800101a:      	ldr	r3, [r0]
 800101c:      	lsls	r3, r3, #31
 800101e:      	itttt	eq
 8001020:      	ldreq	r3, [r0]
 8001022:      	lslseq.w	r3, r3, #31
 8001026:      	ldreq	r3, [r0]
 8001028:      	lslseq.w	r3, r3, #31
 800102c:      	bne	#4 <cortex_m::itm::write_all::h1098dbb8e67ada69+0xc4>
 800102e:      	ldr	r3, [r0]
 8001030:      	lsls	r3, r3, #31
 8001032:      	beq	#-28 <cortex_m::itm::write_all::h1098dbb8e67ada69+0xaa>
 8001034:      	ldrh	r3, [r1], #2
 8001038:      	subs	r2, #2
 800103a:      	strh	r3, [r0]
 800103c:      	cmp	r2, #1
 800103e:      	bne	#62 <cortex_m::itm::write_all::h1098dbb8e67ada69+0x110>
 8001040:      	ldr	r2, [r0]
 8001042:      	lsls	r2, r2, #31
 8001044:      	itttt	eq
 8001046:      	ldreq	r2, [r0]
 8001048:      	lslseq.w	r2, r2, #31
 800104c:      	ldreq	r2, [r0]
 800104e:      	lslseq.w	r2, r2, #31
 8001052:      	bne	#38 <cortex_m::itm::write_all::h1098dbb8e67ada69+0x10c>
 8001054:      	ldr	r2, [r0]
 8001056:      	lsls	r2, r2, #31
 8001058:      	beq	#-28 <cortex_m::itm::write_all::h1098dbb8e67ada69+0xd0>
 800105a:      	b	#30 <cortex_m::itm::write_all::h1098dbb8e67ada69+0x10c>
 800105c:      	cmp	r2, #1
 800105e:      	it	ne
 8001060:      	popne	{r4, r5, r7, pc}
 8001062:      	ldr	r2, [r0]
 8001064:      	lsls	r2, r2, #31
 8001066:      	bne	#18 <cortex_m::itm::write_all::h1098dbb8e67ada69+0x10c>
 8001068:      	ldr	r2, [r0]
 800106a:      	lsls	r2, r2, #31
 800106c:      	itt	eq
 800106e:      	ldreq	r2, [r0]
 8001070:      	lslseq.w	r2, r2, #31
 8001074:      	bne	#4 <cortex_m::itm::write_all::h1098dbb8e67ada69+0x10c>
 8001076:      	ldr	r2, [r0]
 8001078:      	lsls	r2, r2, #31
 800107a:      	beq	#-28 <cortex_m::itm::write_all::h1098dbb8e67ada69+0xf2>
 800107c:      	ldrb	r1, [r1]
 800107e:      	strb	r1, [r0]
 8001080:      	pop	{r4, r5, r7, pc}

08001082 <ResetTrampoline>:
 8001082:      	push	{r7, lr}
 8001084:      	mov	r7, sp
 8001086:      	bl	#-3654
 800108a:      	trap

0800108c <WWDG>:
 800108c:      	b	#-4 <WWDG>

0800108e <__pre_init>:
 800108e:      	bx	lr

08001090 <rust_begin_unwind>:
 8001090:      	push	{r7, lr}
 8001092:      	mov	r7, sp
 8001094:      	sub	sp, #48
 8001096:      	str	r0, [sp, #4]
 8001098:      	bl	#516
 800109c:      	movw	r0, #4323
 80010a0:      	movw	r1, #5224
 80010a4:      	movt	r0, #2048
 80010a8:      	add	r2, sp, #24
 80010aa:      	str	r0, [sp, #12]
 80010ac:      	add	r0, sp, #4
 80010ae:      	str	r0, [sp, #8]
 80010b0:      	mov.w	r0, #3758096384
 80010b4:      	str	r0, [sp, #16]
 80010b6:      	add	r0, sp, #16
 80010b8:      	str	r0, [sp, #20]
 80010ba:      	movs	r0, #1
 80010bc:      	str	r0, [sp, #44]
 80010be:      	add	r0, sp, #8
 80010c0:      	str	r0, [sp, #40]
 80010c2:      	movs	r0, #0
 80010c4:      	strd	r0, r0, [sp, #32]
 80010c8:      	movs	r0, #2
 80010ca:      	str	r0, [sp, #28]
 80010cc:      	movw	r0, #5208
 80010d0:      	movt	r0, #2048
 80010d4:      	movt	r1, #2048
 80010d8:      	str	r0, [sp, #24]
 80010da:      	add	r0, sp, #20
 80010dc:      	bl	#-858
 80010e0:      	b	#-4 <rust_begin_unwind+0x50>

080010e2 <<&T as core::fmt::Display>::fmt::h5a9e9b1ee2b40989>:
 80010e2:      	push	{r4, r5, r6, r7, lr}
 80010e4:      	add	r7, sp, #12
 80010e6:      	str	r11, [sp, #-4]!
 80010ea:      	sub	sp, #56
 80010ec:      	mov	r4, r1
 80010ee:      	ldrd	r2, r1, [r1, #24]
 80010f2:      	ldr	r3, [r1, #12]
 80010f4:      	movw	r1, #5148
 80010f8:      	ldr	r6, [r0]
 80010fa:      	movt	r1, #2048
 80010fe:      	mov	r0, r2
 8001100:      	movs	r2, #12
 8001102:      	blx	r3
 8001104:      	cbz	r0, #10
 8001106:      	movs	r5, #1
 8001108:      	mov	r0, r5
 800110a:      	add	sp, #56
 800110c:      	ldr	r11, [sp], #4
 8001110:      	pop	{r4, r5, r6, r7, pc}
 8001112:      	ldr	r0, [r6, #8]
 8001114:      	cbz	r0, #14
 8001116:      	str	r0, [sp, #4]
 8001118:      	movw	r2, #3895
 800111c:      	ldrd	r0, r1, [r4, #24]
 8001120:      	movt	r2, #2048
 8001124:      	b	#46 <<&T as core::fmt::Display>::fmt::h5a9e9b1ee2b40989+0x74>
 8001126:      	ldrd	r5, r0, [r6]
 800112a:      	ldr	r1, [r0, #12]
 800112c:      	mov	r0, r5
 800112e:      	blx	r1
 8001130:      	movw	r2, #43294
 8001134:      	movt	r2, #32498
 8001138:      	eors	r1, r2
 800113a:      	movw	r2, #48372
 800113e:      	movt	r2, #60615
 8001142:      	eors	r0, r2
 8001144:      	orrs	r0, r1
 8001146:      	bne	#56 <<&T as core::fmt::Display>::fmt::h5a9e9b1ee2b40989+0xa0>
 8001148:      	str	r5, [sp, #4]
 800114a:      	movw	r2, #3939
 800114e:      	ldrd	r0, r1, [r4, #24]
 8001152:      	movt	r2, #2048
 8001156:      	str	r2, [sp, #12]
 8001158:      	add	r2, sp, #4
 800115a:      	str	r2, [sp, #8]
 800115c:      	movs	r5, #1
 800115e:      	add	r2, sp, #8
 8001160:      	str	r5, [sp, #52]
 8001162:      	str	r2, [sp, #48]
 8001164:      	movs	r2, #0
 8001166:      	str	r2, [sp, #44]
 8001168:      	str	r2, [sp, #40]
 800116a:      	movs	r2, #2
 800116c:      	str	r2, [sp, #36]
 800116e:      	movw	r2, #5160
 8001172:      	movt	r2, #2048
 8001176:      	str	r2, [sp, #32]
 8001178:      	add	r2, sp, #32
 800117a:      	bl	#-1016
 800117e:      	cmp	r0, #0
 8001180:      	bne	#-124 <<&T as core::fmt::Display>::fmt::h5a9e9b1ee2b40989+0x26>
 8001182:      	ldr	r2, [r6, #12]
 8001184:      	movw	r3, #1113
 8001188:      	movt	r3, #2048
 800118c:      	ldrd	r0, r1, [r4, #24]
 8001190:      	add.w	r6, r2, #12
 8001194:      	str	r3, [sp, #28]
 8001196:      	strd	r3, r6, [sp, #20]
 800119a:      	add.w	r3, r2, #8
 800119e:      	str	r3, [sp, #16]
 80011a0:      	movw	r3, #3451
 80011a4:      	movt	r3, #2048
 80011a8:      	strd	r2, r3, [sp, #8]
 80011ac:      	add	r3, sp, #8
 80011ae:      	movs	r2, #3
 80011b0:      	str	r3, [sp, #48]
 80011b2:      	movs	r3, #0
 80011b4:      	str	r2, [sp, #52]
 80011b6:      	str	r3, [sp, #44]
 80011b8:      	strd	r2, r3, [sp, #36]
 80011bc:      	movw	r2, #5176
 80011c0:      	movt	r2, #2048
 80011c4:      	str	r2, [sp, #32]
 80011c6:      	add	r2, sp, #32
 80011c8:      	bl	#-1094
 80011cc:      	mov	r5, r0
 80011ce:      	mov	r0, r5
 80011d0:      	add	sp, #56
 80011d2:      	ldr	r11, [sp], #4
 80011d6:      	pop	{r4, r5, r6, r7, pc}

080011d8 <core::ptr::drop_in_place::h4057e8d006af43fe>:
 80011d8:      	bx	lr

080011da <<&mut W as core::fmt::Write>::write_str::hbd59a210919e6753>:
 80011da:      	push	{r7, lr}
 80011dc:      	mov	r7, sp
 80011de:      	ldr	r0, [r0]
 80011e0:      	ldr	r0, [r0]
 80011e2:      	bl	#-630
 80011e6:      	movs	r0, #0
 80011e8:      	pop	{r7, pc}

080011ea <<&mut W as core::fmt::Write>::write_char::h1cb2b91da1b2b000>:
 80011ea:      	push	{r7, lr}
 80011ec:      	mov	r7, sp
 80011ee:      	sub	sp, #8
 80011f0:      	ldr	r0, [r0]
 80011f2:      	movs	r2, #0
 80011f4:      	cmp	r1, #128
 80011f6:      	str	r2, [sp, #4]
 80011f8:      	bhs	#6 <<&mut W as core::fmt::Write>::write_char::h1cb2b91da1b2b000+0x18>
 80011fa:      	strb.w	r1, [sp, #4]
 80011fe:      	movs	r2, #1
 8001200:      	b	#94 <<&mut W as core::fmt::Write>::write_char::h1cb2b91da1b2b000+0x78>
 8001202:      	movs	r2, #2
 8001204:      	mov	r3, r1
 8001206:      	bfi	r3, r2, #6, #26
 800120a:      	cmp.w	r1, #2048
 800120e:      	bhs	#10 <<&mut W as core::fmt::Write>::write_char::h1cb2b91da1b2b000+0x32>
 8001210:      	strb.w	r3, [sp, #5]
 8001214:      	movs	r3, #192
 8001216:      	orr.w	r1, r3, r1, lsr #6
 800121a:      	b	#64 <<&mut W as core::fmt::Write>::write_char::h1cb2b91da1b2b000+0x74>
 800121c:      	cmp.w	r1, #65536
 8001220:      	bhs	#26 <<&mut W as core::fmt::Write>::write_char::h1cb2b91da1b2b000+0x54>
 8001222:      	strb.w	r3, [sp, #6]
 8001226:      	lsrs	r3, r1, #6
 8001228:      	bfi	r3, r2, #6, #26
 800122c:      	movs	r2, #224
 800122e:      	orr.w	r1, r2, r1, lsr #12
 8001232:      	strb.w	r3, [sp, #5]
 8001236:      	strb.w	r1, [sp, #4]
 800123a:      	movs	r2, #3
 800123c:      	b	#34 <<&mut W as core::fmt::Write>::write_char::h1cb2b91da1b2b000+0x78>
 800123e:      	strb.w	r3, [sp, #7]
 8001242:      	lsrs	r3, r1, #6
 8001244:      	bfi	r3, r2, #6, #26
 8001248:      	strb.w	r3, [sp, #6]
 800124c:      	lsrs	r3, r1, #12
 800124e:      	bfi	r3, r2, #6, #26
 8001252:      	movs	r2, #240
 8001254:      	orr.w	r1, r2, r1, lsr #18
 8001258:      	movs	r2, #4
 800125a:      	strb.w	r3, [sp, #5]
 800125e:      	strb.w	r1, [sp, #4]
 8001262:      	ldr	r0, [r0]
 8001264:      	add	r1, sp, #4
 8001266:      	bl	#-762
 800126a:      	movs	r0, #0
 800126c:      	add	sp, #8
 800126e:      	pop	{r7, pc}

08001270 <<&mut W as core::fmt::Write>::write_fmt::h33ca6863f47eb077>:
 8001270:      	push	{r4, r5, r6, r7, lr}
 8001272:      	add	r7, sp, #12
 8001274:      	str	r11, [sp, #-4]!
 8001278:      	sub	sp, #32
 800127a:      	ldr	r0, [r0]
 800127c:      	add	r2, sp, #8
 800127e:      	str	r0, [sp, #4]
 8001280:      	ldm.w	r1, {r3, r4, r5, r6, r12, lr}
 8001284:      	mov	r0, r2
 8001286:      	movw	r1, #5224
 800128a:      	movt	r1, #2048
 800128e:      	stm.w	r0, {r3, r4, r5, r6, r12, lr}
 8001292:      	add	r0, sp, #4
 8001294:      	bl	#-1298
 8001298:      	add	sp, #32
 800129a:      	ldr	r11, [sp], #4
 800129e:      	pop	{r4, r5, r6, r7, pc}

080012a0 <__cpsid>:
 80012a0:      	cpsid i
 80012a2:      	bx	lr

080012a4 <__cpsie>:
 80012a4:      	cpsie i
 80012a6:      	bx	lr

080012a8 <__nop>:
 80012a8:      	bx	lr

080012aa <__primask>:
 80012aa:      	mrs	r0, primask
 80012ae:      	bx	lr

080012b0 <HardFaultTrampoline>:
 80012b0:      	mov	r0, lr
 80012b2:      	movs	r1, #4
 80012b4:      	tst	r0, r1
 80012b6:      	bne	#4 <HardFaultTrampoline+0xe>
 80012b8:      	mrs	r0, msp
 80012bc:      	b	#4 <HardFault_>
 80012be:      	mrs	r0, psp
 80012c2:      	b	#-2 <HardFault_>

080012c4 <HardFault_>:
 80012c4:      	b	#-4 <HardFault_>
 80012c6:      	bmi	#-88 <<&mut W as core::fmt::Write>::write_fmt::h33ca6863f47eb077+0x2>
