
clocks-and-timers:	file format elf32-littlearm


Disassembly of section .text:

08000188 <Reset>:
 8000188:      	push	{r7, lr}
 800018a:      	mov	r7, sp
 800018c:      	bl	#3834
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
 80001e2:      	movw	r1, #5244
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
 800022c:      	bl	#3662
 8000230:      	trap

08000232 <clocks_and_timers::delay::hb0e558e7909bea03>:
 8000232:      	push	{r7, lr}
 8000234:      	mov	r7, sp
 8000236:      	movw	r0, #50000
 800023a:      	nop
 800023c:      	subs	r0, #1
 800023e:      	bne	#-8 <clocks_and_timers::delay::hb0e558e7909bea03+0x8>
 8000240:      	pop	{r7, pc}

08000242 <main>:
 8000242:      	push	{r7, lr}
 8000244:      	mov	r7, sp
 8000246:      	bl	#2
 800024a:      	trap

0800024c <clocks_and_timers::__cortex_m_rt_main::h7d0fc28cd713a80d>:
 800024c:      	push	{r7, lr}
 800024e:      	mov	r7, sp
 8000250:      	bl	#4176
 8000254:      	and	r5, r0, #1
 8000258:      	bl	#4160
 800025c:      	movw	r4, #0
 8000260:      	movt	r4, #8192
 8000264:      	ldrb	r0, [r4]
 8000266:      	cmp	r0, #0
 8000268:      	itte	eq
 800026a:      	moveq	r6, #1
 800026c:      	strbeq	r6, [r4]
 800026e:      	movne	r6, #0
 8000270:      	cmp	r5, #0
 8000272:      	it	eq
 8000274:      	bleq	#4136
 8000278:      	cmp	r6, #0
 800027a:      	beq.w	#382 <clocks_and_timers::__cortex_m_rt_main::h7d0fc28cd713a80d+0x1b0>
 800027e:      	bl	#4130
 8000282:      	and	r5, r0, #1
 8000286:      	bl	#4114
 800028a:      	ldrb	r0, [r4, #1]
 800028c:      	cmp	r0, #0
 800028e:      	itte	eq
 8000290:      	moveq	r6, #1
 8000292:      	strbeq	r6, [r4, #1]
 8000294:      	movne	r6, #0
 8000296:      	cmp	r5, #0
 8000298:      	it	eq
 800029a:      	bleq	#4098
 800029e:      	cmp	r6, #0
 80002a0:      	beq.w	#358 <clocks_and_timers::__cortex_m_rt_main::h7d0fc28cd713a80d+0x1be>
 80002a4:      	movw	r0, #4136
 80002a8:      	movw	r4, #4096
 80002ac:      	movt	r0, #16386
 80002b0:      	movt	r4, #18432
 80002b4:      	ldr	r1, [r0, #-20]
 80002b8:      	mov.w	r5, #32768
 80002bc:      	mov.w	r6, #1073741824
 80002c0:      	mov.w	r8, #256
 80002c4:      	orr	r1, r1, #2097152
 80002c8:      	str	r1, [r0, #-20]
 80002cc:      	ldr	r1, [r0]
 80002ce:      	mov.w	r9, #2147483648
 80002d2:      	mov.w	r10, #512
 80002d6:      	mov.w	r11, #16777216
 80002da:      	orr	r1, r1, #2097152
 80002de:      	str	r1, [r0]
 80002e0:      	ldr	r1, [r0]
 80002e2:      	bic	r1, r1, #2097152
 80002e6:      	str	r1, [r0]
 80002e8:      	ldr	r1, [r4]
 80002ea:      	movs	r0, #1
 80002ec:      	bfi	r1, r0, #18, #2
 80002f0:      	str	r1, [r4]
 80002f2:      	ldr	r1, [r4, #4]
 80002f4:      	bic	r1, r1, #512
 80002f8:      	str	r1, [r4, #4]
 80002fa:      	ldr	r1, [r4]
 80002fc:      	bfi	r1, r0, #20, #2
 8000300:      	str	r1, [r4]
 8000302:      	ldr	r1, [r4, #4]
 8000304:      	bic	r1, r1, #1024
 8000308:      	str	r1, [r4, #4]
 800030a:      	ldr	r1, [r4]
 800030c:      	bfi	r1, r0, #22, #2
 8000310:      	str	r1, [r4]
 8000312:      	ldr	r1, [r4, #4]
 8000314:      	bic	r1, r1, #2048
 8000318:      	str	r1, [r4, #4]
 800031a:      	ldr	r1, [r4]
 800031c:      	bfi	r1, r0, #24, #2
 8000320:      	str	r1, [r4]
 8000322:      	ldr	r1, [r4, #4]
 8000324:      	bic	r1, r1, #4096
 8000328:      	str	r1, [r4, #4]
 800032a:      	ldr	r1, [r4]
 800032c:      	bfi	r1, r0, #26, #2
 8000330:      	str	r1, [r4]
 8000332:      	ldr	r1, [r4, #4]
 8000334:      	bic	r1, r1, #8192
 8000338:      	str	r1, [r4, #4]
 800033a:      	ldr	r1, [r4]
 800033c:      	bfi	r1, r0, #28, #2
 8000340:      	str	r1, [r4]
 8000342:      	ldr	r1, [r4, #4]
 8000344:      	bic	r1, r1, #16384
 8000348:      	str	r1, [r4, #4]
 800034a:      	ldr	r1, [r4]
 800034c:      	bfi	r1, r0, #30, #2
 8000350:      	str	r1, [r4]
 8000352:      	ldr	r1, [r4, #4]
 8000354:      	bic	r1, r1, #32768
 8000358:      	str	r1, [r4, #4]
 800035a:      	ldr	r1, [r4]
 800035c:      	bfi	r1, r0, #16, #2
 8000360:      	str	r1, [r4]
 8000362:      	ldr	r0, [r4, #4]
 8000364:      	bic	r0, r0, #256
 8000368:      	str	r0, [r4, #4]
 800036a:      	mov.w	r0, #1024
 800036e:      	str	r0, [r4, #24]
 8000370:      	bl	#-322
 8000374:      	mov.w	r0, #33554432
 8000378:      	str	r0, [r4, #24]
 800037a:      	bl	#-332
 800037e:      	mov.w	r0, #2048
 8000382:      	str	r0, [r4, #24]
 8000384:      	bl	#-342
 8000388:      	mov.w	r0, #67108864
 800038c:      	str	r0, [r4, #24]
 800038e:      	bl	#-352
 8000392:      	mov.w	r0, #4096
 8000396:      	str	r0, [r4, #24]
 8000398:      	bl	#-362
 800039c:      	mov.w	r0, #134217728
 80003a0:      	str	r0, [r4, #24]
 80003a2:      	bl	#-372
 80003a6:      	mov.w	r0, #8192
 80003aa:      	str	r0, [r4, #24]
 80003ac:      	bl	#-382
 80003b0:      	mov.w	r0, #268435456
 80003b4:      	str	r0, [r4, #24]
 80003b6:      	bl	#-392
 80003ba:      	mov.w	r0, #16384
 80003be:      	str	r0, [r4, #24]
 80003c0:      	bl	#-402
 80003c4:      	mov.w	r0, #536870912
 80003c8:      	str	r0, [r4, #24]
 80003ca:      	bl	#-412
 80003ce:      	str	r5, [r4, #24]
 80003d0:      	bl	#-418
 80003d4:      	str	r6, [r4, #24]
 80003d6:      	bl	#-424
 80003da:      	str.w	r8, [r4, #24]
 80003de:      	bl	#-432
 80003e2:      	str.w	r9, [r4, #24]
 80003e6:      	bl	#-440
 80003ea:      	str.w	r10, [r4, #24]
 80003ee:      	bl	#-448
 80003f2:      	str.w	r11, [r4, #24]
 80003f6:      	bl	#-456
 80003fa:      	b	#-148 <clocks_and_timers::__cortex_m_rt_main::h7d0fc28cd713a80d+0x11e>
 80003fc:      	movw	r0, #4844
 8000400:      	movt	r0, #2048
 8000404:      	bl	#20
 8000408:      	trap
 800040a:      	movw	r0, #4860
 800040e:      	movt	r0, #2048
 8000412:      	bl	#6
 8000416:      	trap

08000418 <core::ops::function::FnOnce::call_once::h5db7766b92da0352>:
 8000418:      	ldr	r0, [r0]
 800041a:      	b	#-4 <core::ops::function::FnOnce::call_once::h5db7766b92da0352+0x2>

0800041c <core::panicking::panic::he8552e8d3d2cbe3a>:
 800041c:      	push	{r7, lr}
 800041e:      	mov	r7, sp
 8000420:      	sub	sp, #32
 8000422:      	movw	r2, #5200
 8000426:      	mov	r1, r0
 8000428:      	movs	r0, #0
 800042a:      	movt	r2, #2048
 800042e:      	str	r0, [sp, #20]
 8000430:      	str	r2, [sp, #16]
 8000432:      	strd	r0, r0, [sp, #8]
 8000436:      	movs	r0, #1
 8000438:      	str	r0, [sp, #4]
 800043a:      	add	r0, sp, #24
 800043c:      	str	r0, [sp]
 800043e:      	movs	r0, #43
 8000440:      	str	r0, [sp, #28]
 8000442:      	movw	r0, #4800
 8000446:      	movt	r0, #2048
 800044a:      	str	r0, [sp, #24]
 800044c:      	mov	r0, sp
 800044e:      	bl	#662
 8000452:      	trap

08000454 <core::fmt::num::imp::<impl core::fmt::Display for u32>::fmt::h720dbf9c56765265>:
 8000454:      	push	{r4, r5, r6, r7, lr}
 8000456:      	add	r7, sp, #12
 8000458:      	push.w	{r8, r9, r10, r11}
 800045c:      	sub	sp, #52
 800045e:      	ldr	r5, [r0]
 8000460:      	movw	r0, #10000
 8000464:      	movw	lr, #34079
 8000468:      	mov	r4, r1
 800046a:      	cmp	r5, r0
 800046c:      	movw	r0, #4940
 8000470:      	movw	r3, #65436
 8000474:      	movt	lr, #20971
 8000478:      	movt	r0, #2048
 800047c:      	blo	#120 <core::fmt::num::imp::<impl core::fmt::Display for u32>::fmt::h720dbf9c56765265+0xa4>
 800047e:      	movw	r8, #5977
 8000482:      	movw	r10, #55536
 8000486:      	movw	r12, #57599
 800048a:      	add.w	r11, sp, #12
 800048e:      	movs	r6, #0
 8000490:      	movt	r8, #53687
 8000494:      	movt	r10, #65535
 8000498:      	movt	r12, #1525
 800049c:      	str	r4, [sp, #8]
 800049e:      	umull	r2, r4, r5, r8
 80004a2:      	cmp	r5, r12
 80004a4:      	lsr.w	r2, r4, #13
 80004a8:      	mla	r4, r2, r10, r5
 80004ac:      	mov	r5, r2
 80004ae:      	uxth	r1, r4
 80004b0:      	umull	r1, r9, r1, lr
 80004b4:      	lsr.w	r1, r9, #5
 80004b8:      	mla	r4, r1, r3, r4
 80004bc:      	add.w	r3, r11, r6
 80004c0:      	ldrh.w	r1, [r0, r1, lsl #1]
 80004c4:      	sub.w	r6, r6, #4
 80004c8:      	strh.w	r1, [r3, #35]
 80004cc:      	uxth	r4, r4
 80004ce:      	ldrh.w	r4, [r0, r4, lsl #1]
 80004d2:      	strh.w	r4, [r3, #37]
 80004d6:      	movw	r3, #65436
 80004da:      	bhi	#-64 <core::fmt::num::imp::<impl core::fmt::Display for u32>::fmt::h720dbf9c56765265+0x4a>
 80004dc:      	ldr	r4, [sp, #8]
 80004de:      	adds	r6, #39
 80004e0:      	mov	r5, r2
 80004e2:      	cmp	r5, #99
 80004e4:      	bgt	#22 <core::fmt::num::imp::<impl core::fmt::Display for u32>::fmt::h720dbf9c56765265+0xaa>
 80004e6:      	mov	r1, r5
 80004e8:      	cmp	r1, #10
 80004ea:      	blt	#44 <core::fmt::num::imp::<impl core::fmt::Display for u32>::fmt::h720dbf9c56765265+0xc6>
 80004ec:      	ldrh.w	r0, [r0, r1, lsl #1]
 80004f0:      	subs	r2, r6, #2
 80004f2:      	add	r1, sp, #12
 80004f4:      	strh	r0, [r1, r2]
 80004f6:      	b	#42 <core::fmt::num::imp::<impl core::fmt::Display for u32>::fmt::h720dbf9c56765265+0xd0>
 80004f8:      	movs	r6, #39
 80004fa:      	cmp	r5, #99
 80004fc:      	ble	#-26 <core::fmt::num::imp::<impl core::fmt::Display for u32>::fmt::h720dbf9c56765265+0x92>
 80004fe:      	uxth	r1, r5
 8000500:      	subs	r6, #2
 8000502:      	umull	r1, r2, r1, lr
 8000506:      	lsrs	r1, r2, #5
 8000508:      	mla	r2, r1, r3, r5
 800050c:      	add	r3, sp, #12
 800050e:      	uxth	r2, r2
 8000510:      	ldrh.w	r2, [r0, r2, lsl #1]
 8000514:      	strh	r2, [r3, r6]
 8000516:      	cmp	r1, #10
 8000518:      	bge	#-48 <core::fmt::num::imp::<impl core::fmt::Display for u32>::fmt::h720dbf9c56765265+0x98>
 800051a:      	subs	r2, r6, #1
 800051c:      	add.w	r0, r1, #48
 8000520:      	add	r1, sp, #12
 8000522:      	strb	r0, [r1, r2]
 8000524:      	ldr	r0, [r4]
 8000526:      	add	r1, sp, #12
 8000528:      	movw	r6, #5200
 800052c:      	add.w	r8, r1, r2
 8000530:      	rsb.w	r9, r2, #39
 8000534:      	ldr	r3, [r4, #8]
 8000536:      	lsls	r2, r0, #29
 8000538:      	movt	r6, #2048
 800053c:      	ands	r1, r0, #1
 8000540:      	mov.w	r5, #43
 8000544:      	and.w	r10, r6, r2, asr #31
 8000548:      	it	eq
 800054a:      	moveq.w	r5, #1114112
 800054e:      	cmp	r3, #1
 8000550:      	bne	#52 <$t.7+0x8>
 8000552:      	str.w	r8, [sp, #8]
 8000556:      	add.w	r11, r9, r1
 800055a:      	ldr.w	r8, [r4, #12]
 800055e:      	cmp	r8, r11
 8000560:      	bls	#52 <$t.7+0x18>
 8000562:      	lsls	r0, r0, #28
 8000564:      	bmi	#98 <$t.7+0x4a>
 8000566:      	ldrb.w	r2, [r4, #32]
 800056a:      	sub.w	r1, r8, r11
 800056e:      	movs	r0, #0
 8000570:      	cmp	r2, #3
 8000572:      	it	eq
 8000574:      	moveq	r2, #1
 8000576:      	mov	r8, r1
 8000578:      	tbb	[pc, r2]

0800057c <$d.6>:
 800057c:	52 02 4e 02	.word	0x024e0252

08000580 <$t.7>:
 8000580:      	mov.w	r8, #0
 8000584:      	mov	r0, r1
 8000586:      	b	#150 <$t.9+0xe>
 8000588:      	mov	r0, r4
 800058a:      	mov	r1, r5
 800058c:      	mov	r2, r10
 800058e:      	bl	#400
 8000592:      	cbz	r0, #28
 8000594:      	movs	r6, #1
 8000596:      	b	#80 <$t.7+0x6a>
 8000598:      	mov	r0, r4
 800059a:      	mov	r1, r5
 800059c:      	mov	r2, r10
 800059e:      	bl	#384
 80005a2:      	cmp	r0, #0
 80005a4:      	bne.w	#246 <$t.9+0x8c>
 80005a8:      	ldrd	r0, r1, [r4, #24]
 80005ac:      	ldr	r3, [r1, #12]
 80005ae:      	ldr	r1, [sp, #8]
 80005b0:      	b	#6 <$t.7+0x3a>
 80005b2:      	ldrd	r0, r1, [r4, #24]
 80005b6:      	ldr	r3, [r1, #12]
 80005b8:      	mov	r1, r8
 80005ba:      	mov	r2, r9
 80005bc:      	blx	r3
 80005be:      	mov	r6, r0
 80005c0:      	mov	r0, r6
 80005c2:      	add	sp, #52
 80005c4:      	pop.w	{r8, r9, r10, r11}
 80005c8:      	pop	{r4, r5, r6, r7, pc}
 80005ca:      	ldr	r0, [r4, #4]
 80005cc:      	movs	r6, #1
 80005ce:      	ldrb.w	r1, [r4, #32]
 80005d2:      	mov	r2, r10
 80005d4:      	str	r0, [sp, #4]
 80005d6:      	movs	r0, #48
 80005d8:      	str	r1, [sp]
 80005da:      	mov	r1, r5
 80005dc:      	str	r0, [r4, #4]
 80005de:      	mov	r0, r4
 80005e0:      	strb.w	r6, [r4, #32]
 80005e4:      	bl	#314
 80005e8:      	cbz	r0, #8
 80005ea:      	mov	r0, r6
 80005ec:      	add	sp, #52
 80005ee:      	pop.w	{r8, r9, r10, r11}
 80005f2:      	pop	{r4, r5, r6, r7, pc}
 80005f4:      	ldrb.w	r2, [r4, #32]
 80005f8:      	sub.w	r1, r8, r11
 80005fc:      	movs	r0, #0
 80005fe:      	cmp	r2, #3
 8000600:      	it	eq
 8000602:      	moveq	r2, #1
 8000604:      	mov	r6, r1
 8000606:      	ldr.w	r8, [sp, #8]
 800060a:      	tbb	[pc, r2]

0800060e <$d.8>:
 800060e:	34 02 31 02	.word	0x02310234

08000612 <$t.9>:
 8000612:      	movs	r6, #0
 8000614:      	mov	r0, r1
 8000616:      	b	#92 <$t.9+0x64>
 8000618:      	lsrs	r0, r1, #1
 800061a:      	adds	r1, #1
 800061c:      	lsr.w	r8, r1, #1
 8000620:      	adds	r6, r0, #1
 8000622:      	subs	r6, #1
 8000624:      	beq	#14 <$t.9+0x24>
 8000626:      	ldrd	r0, r2, [r4, #24]
 800062a:      	ldr	r1, [r4, #4]
 800062c:      	ldr	r2, [r2, #16]
 800062e:      	blx	r2
 8000630:      	cmp	r0, #0
 8000632:      	beq	#-20 <$t.9+0x10>
 8000634:      	b	#102 <$t.9+0x8c>
 8000636:      	mov	r0, r4
 8000638:      	mov	r1, r5
 800063a:      	mov	r2, r10
 800063c:      	ldr.w	r11, [r4, #4]
 8000640:      	bl	#222
 8000644:      	cbnz	r0, #86
 8000646:      	ldrd	r0, r1, [r4, #24]
 800064a:      	mov	r2, r9
 800064c:      	ldr	r3, [r1, #12]
 800064e:      	ldr	r1, [sp, #8]
 8000650:      	blx	r3
 8000652:      	cbnz	r0, #72
 8000654:      	ldrd	r10, r4, [r4, #24]
 8000658:      	add.w	r5, r8, #1
 800065c:      	movs	r6, #1
 800065e:      	subs	r5, #1
 8000660:      	beq	#98 <$t.9+0xb4>
 8000662:      	ldr	r2, [r4, #16]
 8000664:      	mov	r0, r10
 8000666:      	mov	r1, r11
 8000668:      	blx	r2
 800066a:      	cmp	r0, #0
 800066c:      	beq	#-18 <$t.9+0x4c>
 800066e:      	b	#-136 <$t.7+0x6a>
 8000670:      	lsrs	r0, r1, #1
 8000672:      	adds	r1, #1
 8000674:      	lsrs	r6, r1, #1
 8000676:      	adds	r5, r0, #1
 8000678:      	subs	r5, #1
 800067a:      	beq	#14 <$t.9+0x7a>
 800067c:      	ldrd	r0, r2, [r4, #24]
 8000680:      	ldr	r1, [r4, #4]
 8000682:      	ldr	r2, [r2, #16]
 8000684:      	blx	r2
 8000686:      	cmp	r0, #0
 8000688:      	beq	#-20 <$t.9+0x66>
 800068a:      	b	#16 <$t.9+0x8c>
 800068c:      	ldrd	r0, r1, [r4, #24]
 8000690:      	mov	r2, r9
 8000692:      	ldr	r3, [r1, #12]
 8000694:      	mov	r1, r8
 8000696:      	ldr.w	r10, [r4, #4]
 800069a:      	blx	r3
 800069c:      	cbz	r0, #10
 800069e:      	movs	r6, #1
 80006a0:      	mov	r0, r6
 80006a2:      	add	sp, #52
 80006a4:      	pop.w	{r8, r9, r10, r11}
 80006a8:      	pop	{r4, r5, r6, r7, pc}
 80006aa:      	ldrd	r8, r9, [r4, #24]
 80006ae:      	adds	r5, r6, #1
 80006b0:      	movs	r6, #1
 80006b2:      	subs	r5, #1
 80006b4:      	beq	#26 <$t.9+0xc0>
 80006b6:      	ldr.w	r2, [r9, #16]
 80006ba:      	mov	r0, r8
 80006bc:      	mov	r1, r10
 80006be:      	blx	r2
 80006c0:      	cmp	r0, #0
 80006c2:      	beq	#-20 <$t.9+0xa0>
 80006c4:      	b	#-222 <$t.7+0x6a>
 80006c6:      	movs	r6, #0
 80006c8:      	mov	r0, r6
 80006ca:      	add	sp, #52
 80006cc:      	pop.w	{r8, r9, r10, r11}
 80006d0:      	pop	{r4, r5, r6, r7, pc}
 80006d2:      	ldr	r0, [sp]
 80006d4:      	movs	r6, #0
 80006d6:      	strb.w	r0, [r4, #32]
 80006da:      	ldr	r0, [sp, #4]
 80006dc:      	str	r0, [r4, #4]
 80006de:      	mov	r0, r6
 80006e0:      	add	sp, #52
 80006e2:      	pop.w	{r8, r9, r10, r11}
 80006e6:      	pop	{r4, r5, r6, r7, pc}

080006e8 <core::panicking::panic_fmt::h3d4fe709119df940>:
 80006e8:      	push	{r7, lr}
 80006ea:      	mov	r7, sp
 80006ec:      	sub	sp, #16
 80006ee:      	strd	r0, r1, [sp, #8]
 80006f2:      	movw	r0, #4924
 80006f6:      	movt	r0, #2048
 80006fa:      	str	r0, [sp, #4]
 80006fc:      	movw	r0, #5200
 8000700:      	movt	r0, #2048
 8000704:      	str	r0, [sp]
 8000706:      	mov	r0, sp
 8000708:      	bl	#2432
 800070c:      	trap

0800070e <core::ptr::drop_in_place::h04a129b24451d075>:
 800070e:      	bx	lr

08000710 <<T as core::any::Any>::type_id::hffc3b5436e52a86a>:
 8000710:      	movw	r0, #50601
 8000714:      	movw	r1, #27484
 8000718:      	movt	r0, #24677
 800071c:      	movt	r1, #15316
 8000720:      	bx	lr

08000722 <core::fmt::Formatter::pad_integral::write_prefix::h43274d4e4dd7a787>:
 8000722:      	push	{r4, r5, r7, lr}
 8000724:      	add	r7, sp, #8
 8000726:      	mov	r4, r2
 8000728:      	mov	r5, r0
 800072a:      	cmp.w	r1, #1114112
 800072e:      	beq	#12 <core::fmt::Formatter::pad_integral::write_prefix::h43274d4e4dd7a787+0x1c>
 8000730:      	ldrd	r0, r2, [r5, #24]
 8000734:      	ldr	r2, [r2, #16]
 8000736:      	blx	r2
 8000738:      	cbz	r0, #2
 800073a:      	movs	r0, #1
 800073c:      	pop	{r4, r5, r7, pc}
 800073e:      	cbz	r4, #14
 8000740:      	ldrd	r0, r1, [r5, #24]
 8000744:      	movs	r2, #0
 8000746:      	ldr	r3, [r1, #12]
 8000748:      	mov	r1, r4
 800074a:      	pop.w	{r4, r5, r7, lr}
 800074e:      	bx	r3
 8000750:      	movs	r0, #0
 8000752:      	pop	{r4, r5, r7, pc}

08000754 <core::fmt::Formatter::pad::hdd2f8bc43cf2bd72>:
 8000754:      	push	{r4, r5, r6, r7, lr}
 8000756:      	add	r7, sp, #12
 8000758:      	push.w	{r8, r9, r10, r11}
 800075c:      	sub	sp, #12
 800075e:      	ldr.w	lr, [r0, #8]
 8000762:      	mov	r10, r0
 8000764:      	ldr	r0, [r0, #16]
 8000766:      	mov	r9, r2
 8000768:      	mov	r6, r1
 800076a:      	cmp.w	lr, #1
 800076e:      	bne	#30 <core::fmt::Formatter::pad::hdd2f8bc43cf2bd72+0x3c>
 8000770:      	cmp	r0, #1
 8000772:      	beq	#32 <core::fmt::Formatter::pad::hdd2f8bc43cf2bd72+0x42>
 8000774:      	cmp.w	r9, #0
 8000778:      	beq.w	#1256 <core::fmt::Formatter::pad::hdd2f8bc43cf2bd72+0x510>
 800077c:      	sub.w	r8, r9, #1
 8000780:      	and	r4, r9, #3
 8000784:      	cmp.w	r8, #3
 8000788:      	bhs	#192 <core::fmt::Formatter::pad::hdd2f8bc43cf2bd72+0xf8>
 800078a:      	movs	r3, #0
 800078c:      	mov	r1, r6
 800078e:      	b	#718 <core::fmt::Formatter::pad::hdd2f8bc43cf2bd72+0x30c>
 8000790:      	cmp	r0, #1
 8000792:      	bne.w	#1244 <core::fmt::Formatter::pad::hdd2f8bc43cf2bd72+0x51e>
 8000796:      	ldr.w	r3, [r10, #20]
 800079a:      	add.w	r5, r6, r9
 800079e:      	movs	r2, #0
 80007a0:      	str	r6, [sp, #8]
 80007a2:      	cbnz	r3, #76
 80007a4:      	cmp	r5, r6
 80007a6:      	beq.w	#1188 <core::fmt::Formatter::pad::hdd2f8bc43cf2bd72+0x4fa>
 80007aa:      	mov	r1, r6
 80007ac:      	ldrsb	r0, [r1], #1
 80007b0:      	cmp.w	r0, #4294967295
 80007b4:      	ble	#184 <core::fmt::Formatter::pad::hdd2f8bc43cf2bd72+0x11c>
 80007b6:      	ldr	r6, [sp, #8]
 80007b8:      	cmp	r2, #0
 80007ba:      	it	ne
 80007bc:      	cmpne	r2, r9
 80007be:      	bne.w	#488 <core::fmt::Formatter::pad::hdd2f8bc43cf2bd72+0x256>
 80007c2:      	mov	r0, r6
 80007c4:      	b	#500 <core::fmt::Formatter::pad::hdd2f8bc43cf2bd72+0x268>
 80007c6:      	ldrb	r6, [r1], #1
 80007ca:      	and	r8, r6, #63
 80007ce:      	mov	r6, r1
 80007d0:      	mov.w	r1, #1835008
 80007d4:      	and.w	r0, r1, r0, lsl #18
 80007d8:      	orr.w	r0, r0, r11, lsl #12
 80007dc:      	orr.w	r0, r0, r12, lsl #6
 80007e0:      	add	r0, r8
 80007e2:      	cmp.w	r0, #1114112
 80007e6:      	beq.w	#1124 <core::fmt::Formatter::pad::hdd2f8bc43cf2bd72+0x4fa>
 80007ea:      	subs	r0, r6, r4
 80007ec:      	subs	r3, #1
 80007ee:      	add	r2, r0
 80007f0:      	beq	#-80 <core::fmt::Formatter::pad::hdd2f8bc43cf2bd72+0x50>
 80007f2:      	cmp	r5, r6
 80007f4:      	beq.w	#1110 <core::fmt::Formatter::pad::hdd2f8bc43cf2bd72+0x4fa>
 80007f8:      	mov	r4, r6
 80007fa:      	ldrsb	r0, [r6], #1
 80007fe:      	cmp.w	r0, #4294967295
 8000802:      	bgt	#-28 <core::fmt::Formatter::pad::hdd2f8bc43cf2bd72+0x96>
 8000804:      	uxtb	r0, r0
 8000806:      	cmp	r6, r5
 8000808:      	beq	#14 <core::fmt::Formatter::pad::hdd2f8bc43cf2bd72+0xc6>
 800080a:      	ldrb	r1, [r4, #1]
 800080c:      	adds	r6, r4, #2
 800080e:      	and	r11, r1, #63
 8000812:      	mov	r1, r6
 8000814:      	cmp	r0, #224
 8000816:      	blo	#-48 <core::fmt::Formatter::pad::hdd2f8bc43cf2bd72+0x96>
 8000818:      	b	#8 <core::fmt::Formatter::pad::hdd2f8bc43cf2bd72+0xd0>
 800081a:      	mov.w	r11, #0
 800081e:      	mov	r1, r5
 8000820:      	cmp	r0, #224
 8000822:      	blo	#-60 <core::fmt::Formatter::pad::hdd2f8bc43cf2bd72+0x96>
 8000824:      	cmp	r1, r5
 8000826:      	beq	#14 <core::fmt::Formatter::pad::hdd2f8bc43cf2bd72+0xe4>
 8000828:      	ldrb	r6, [r1], #1
 800082c:      	and	r12, r6, #63
 8000830:      	mov	r6, r1
 8000832:      	cmp	r0, #240
 8000834:      	blo	#-78 <core::fmt::Formatter::pad::hdd2f8bc43cf2bd72+0x96>
 8000836:      	b	#8 <core::fmt::Formatter::pad::hdd2f8bc43cf2bd72+0xee>
 8000838:      	mov.w	r12, #0
 800083c:      	mov	r1, r5
 800083e:      	cmp	r0, #240
 8000840:      	blo	#-90 <core::fmt::Formatter::pad::hdd2f8bc43cf2bd72+0x96>
 8000842:      	cmp	r1, r5
 8000844:      	bne	#-130 <core::fmt::Formatter::pad::hdd2f8bc43cf2bd72+0x72>
 8000846:      	mov.w	r8, #0
 800084a:      	b	#-126 <core::fmt::Formatter::pad::hdd2f8bc43cf2bd72+0x7c>
 800084c:      	sub.w	r0, r9, #4
 8000850:      	bic	r1, r0, #3
 8000854:      	movs	r0, #1
 8000856:      	cmp	r1, #12
 8000858:      	add.w	r0, r0, r1, lsr #2
 800085c:      	and	r12, r0, #3
 8000860:      	bhs	#38 <core::fmt::Formatter::pad::hdd2f8bc43cf2bd72+0x136>
 8000862:      	movs	r3, #0
 8000864:      	mov	r1, r6
 8000866:      	cmp.w	r12, #0
 800086a:      	bne.w	#256 <core::fmt::Formatter::pad::hdd2f8bc43cf2bd72+0x21a>
 800086e:      	b	#494 <core::fmt::Formatter::pad::hdd2f8bc43cf2bd72+0x30c>
 8000870:      	uxtb	r0, r0
 8000872:      	cmp	r1, r5
 8000874:      	beq.w	#404 <core::fmt::Formatter::pad::hdd2f8bc43cf2bd72+0x2b8>
 8000878:      	ldrb	r3, [r6, #1]
 800087a:      	adds	r1, r6, #2
 800087c:      	and	r3, r3, #63
 8000880:      	lsls	r3, r3, #6
 8000882:      	cmp	r0, #224
 8000884:      	bhs.w	#398 <core::fmt::Formatter::pad::hdd2f8bc43cf2bd72+0x2c2>
 8000888:      	b	#-214 <core::fmt::Formatter::pad::hdd2f8bc43cf2bd72+0x62>
 800088a:      	bic	r0, r0, #3
 800088e:      	movs	r3, #0
 8000890:      	rsbs	r0, r0, #0
 8000892:      	mov	r1, r6
 8000894:      	str	r4, [sp, #4]
 8000896:      	str	r6, [sp, #8]
 8000898:      	ldrb	r4, [r1]
 800089a:      	ldrb	r5, [r1, #1]
 800089c:      	ldrb	r2, [r1, #2]
 800089e:      	and	lr, r4, #192
 80008a2:      	ldrb	r6, [r1, #3]
 80008a4:      	cmp.w	lr, #128
 80008a8:      	ldrb.w	r11, [r1, #15]
 80008ac:      	and	r5, r5, #192
 80008b0:      	ldrb	r4, [r1, #14]
 80008b2:      	it	eq
 80008b4:      	addeq	r3, #1
 80008b6:      	ldrb.w	lr, [r1, #13]
 80008ba:      	cmp	r5, #128
 80008bc:      	it	eq
 80008be:      	addeq	r3, #1
 80008c0:      	and	r2, r2, #192
 80008c4:      	ldrb	r5, [r1, #4]
 80008c6:      	cmp	r2, #128
 80008c8:      	it	eq
 80008ca:      	addeq	r3, #1
 80008cc:      	and	r2, r6, #192
 80008d0:      	ldrb	r6, [r1, #5]
 80008d2:      	cmp	r2, #128
 80008d4:      	it	eq
 80008d6:      	addeq	r3, #1
 80008d8:      	and	r2, r5, #192
 80008dc:      	ldrb	r5, [r1, #6]
 80008de:      	cmp	r2, #128
 80008e0:      	it	eq
 80008e2:      	addeq	r3, #1
 80008e4:      	and	r2, r6, #192
 80008e8:      	ldrb	r6, [r1, #7]
 80008ea:      	cmp	r2, #128
 80008ec:      	it	eq
 80008ee:      	addeq	r3, #1
 80008f0:      	and	r2, r5, #192
 80008f4:      	ldrb	r5, [r1, #8]
 80008f6:      	cmp	r2, #128
 80008f8:      	it	eq
 80008fa:      	addeq	r3, #1
 80008fc:      	and	r2, r6, #192
 8000900:      	ldrb	r6, [r1, #9]
 8000902:      	cmp	r2, #128
 8000904:      	it	eq
 8000906:      	addeq	r3, #1
 8000908:      	and	r2, r5, #192
 800090c:      	ldrb	r5, [r1, #10]
 800090e:      	cmp	r2, #128
 8000910:      	it	eq
 8000912:      	addeq	r3, #1
 8000914:      	and	r2, r6, #192
 8000918:      	cmp	r2, #128
 800091a:      	ldrb	r6, [r1, #12]
 800091c:      	it	eq
 800091e:      	addeq	r3, #1
 8000920:      	and	r2, r5, #192
 8000924:      	ldrb	r5, [r1, #11]
 8000926:      	cmp	r2, #128
 8000928:      	it	eq
 800092a:      	addeq	r3, #1
 800092c:      	adds	r1, #16
 800092e:      	and	r2, r5, #192
 8000932:      	cmp	r2, #128
 8000934:      	and	r2, r6, #192
 8000938:      	it	eq
 800093a:      	addeq	r3, #1
 800093c:      	cmp	r2, #128
 800093e:      	and	r2, lr, #192
 8000942:      	it	eq
 8000944:      	addeq	r3, #1
 8000946:      	cmp	r2, #128
 8000948:      	and	r2, r4, #192
 800094c:      	it	eq
 800094e:      	addeq	r3, #1
 8000950:      	cmp	r2, #128
 8000952:      	and	r2, r11, #192
 8000956:      	it	eq
 8000958:      	addeq	r3, #1
 800095a:      	cmp	r2, #128
 800095c:      	it	eq
 800095e:      	addeq	r3, #1
 8000960:      	adds	r0, #4
 8000962:      	bne	#-206 <core::fmt::Formatter::pad::hdd2f8bc43cf2bd72+0x144>
 8000964:      	ldrd	r4, r6, [sp, #4]
 8000968:      	cmp.w	r12, #0
 800096c:      	beq	#240 <core::fmt::Formatter::pad::hdd2f8bc43cf2bd72+0x30c>
 800096e:      	ldrb	r0, [r1]
 8000970:      	mov	lr, r6
 8000972:      	ldrb	r2, [r1, #1]
 8000974:      	and	r0, r0, #192
 8000978:      	ldrb	r6, [r1, #2]
 800097a:      	cmp	r0, #128
 800097c:      	ldrb	r5, [r1, #3]
 800097e:      	and	r0, r2, #192
 8000982:      	it	eq
 8000984:      	addeq	r3, #1
 8000986:      	cmp	r0, #128
 8000988:      	and	r0, r6, #192
 800098c:      	it	eq
 800098e:      	addeq	r3, #1
 8000990:      	cmp	r0, #128
 8000992:      	and	r0, r5, #192
 8000996:      	it	eq
 8000998:      	addeq	r3, #1
 800099a:      	cmp	r0, #128
 800099c:      	it	eq
 800099e:      	addeq	r3, #1
 80009a0:      	cmp.w	r12, #1
 80009a4:      	bne	#42 <core::fmt::Formatter::pad::hdd2f8bc43cf2bd72+0x27e>
 80009a6:      	adds	r1, #4
 80009a8:      	b	#178 <core::fmt::Formatter::pad::hdd2f8bc43cf2bd72+0x30a>
 80009aa:      	cmp	r2, r9
 80009ac:      	bhs	#8 <core::fmt::Formatter::pad::hdd2f8bc43cf2bd72+0x264>
 80009ae:      	ldrsb	r0, [r6, r2]
 80009b0:      	cmn.w	r0, #64
 80009b4:      	bge.w	#-502 <core::fmt::Formatter::pad::hdd2f8bc43cf2bd72+0x6e>
 80009b8:      	movs	r0, #0
 80009ba:      	movs	r2, #0
 80009bc:      	cmp	r0, #0
 80009be:      	ite	eq
 80009c0:      	moveq	r2, r9
 80009c2:      	movne	r6, r0
 80009c4:      	cmp.w	lr, #1
 80009c8:      	beq.w	#654 <core::fmt::Formatter::pad::hdd2f8bc43cf2bd72+0x506>
 80009cc:      	ldrd	r0, r1, [r10, #24]
 80009d0:      	b	#680 <core::fmt::Formatter::pad::hdd2f8bc43cf2bd72+0x528>
 80009d2:      	ldrb	r0, [r1, #4]
 80009d4:      	ldrb	r2, [r1, #5]
 80009d6:      	and	r0, r0, #192
 80009da:      	ldrb	r6, [r1, #6]
 80009dc:      	cmp	r0, #128
 80009de:      	ldrb	r5, [r1, #7]
 80009e0:      	and	r0, r2, #192
 80009e4:      	it	eq
 80009e6:      	addeq	r3, #1
 80009e8:      	cmp	r0, #128
 80009ea:      	and	r0, r6, #192
 80009ee:      	it	eq
 80009f0:      	addeq	r3, #1
 80009f2:      	cmp	r0, #128
 80009f4:      	and	r0, r5, #192
 80009f8:      	it	eq
 80009fa:      	addeq	r3, #1
 80009fc:      	cmp	r0, #128
 80009fe:      	it	eq
 8000a00:      	addeq	r3, #1
 8000a02:      	cmp.w	r12, #2
 8000a06:      	bne	#34 <core::fmt::Formatter::pad::hdd2f8bc43cf2bd72+0x2d8>
 8000a08:      	adds	r1, #8
 8000a0a:      	b	#80 <core::fmt::Formatter::pad::hdd2f8bc43cf2bd72+0x30a>
 8000a0c:      	movs	r3, #0
 8000a0e:      	mov	r1, r5
 8000a10:      	cmp	r0, #224
 8000a12:      	blo.w	#-608 <core::fmt::Formatter::pad::hdd2f8bc43cf2bd72+0x62>
 8000a16:      	cmp	r1, r5
 8000a18:      	beq.w	#516 <core::fmt::Formatter::pad::hdd2f8bc43cf2bd72+0x4cc>
 8000a1c:      	ldrb	r6, [r1], #1
 8000a20:      	and	r6, r6, #63
 8000a24:      	cmp	r0, #240
 8000a26:      	blo.w	#-628 <core::fmt::Formatter::pad::hdd2f8bc43cf2bd72+0x62>
 8000a2a:      	b	#508 <core::fmt::Formatter::pad::hdd2f8bc43cf2bd72+0x4d6>
 8000a2c:      	ldrb	r0, [r1, #8]
 8000a2e:      	ldrb	r2, [r1, #9]
 8000a30:      	and	r0, r0, #192
 8000a34:      	ldrb	r6, [r1, #10]
 8000a36:      	ldrb	r5, [r1, #11]
 8000a38:      	cmp	r0, #128
 8000a3a:      	it	eq
 8000a3c:      	addeq	r3, #1
 8000a3e:      	and	r0, r2, #192
 8000a42:      	cmp	r0, #128
 8000a44:      	it	eq
 8000a46:      	addeq	r3, #1
 8000a48:      	and	r0, r6, #192
 8000a4c:      	adds	r1, #12
 8000a4e:      	cmp	r0, #128
 8000a50:      	it	eq
 8000a52:      	addeq	r3, #1
 8000a54:      	and	r0, r5, #192
 8000a58:      	cmp	r0, #128
 8000a5a:      	it	eq
 8000a5c:      	addeq	r3, #1
 8000a5e:      	mov	r6, lr
 8000a60:      	cbz	r4, #42
 8000a62:      	ldrb	r0, [r1]
 8000a64:      	and	r0, r0, #192
 8000a68:      	cmp	r0, #128
 8000a6a:      	it	eq
 8000a6c:      	addeq	r3, #1
 8000a6e:      	cmp	r4, #1
 8000a70:      	beq	#26 <core::fmt::Formatter::pad::hdd2f8bc43cf2bd72+0x33a>
 8000a72:      	ldrb	r0, [r1, #1]
 8000a74:      	and	r0, r0, #192
 8000a78:      	cmp	r0, #128
 8000a7a:      	it	eq
 8000a7c:      	addeq	r3, #1
 8000a7e:      	cmp	r4, #2
 8000a80:      	beq	#10 <core::fmt::Formatter::pad::hdd2f8bc43cf2bd72+0x33a>
 8000a82:      	ldrb	r0, [r1, #2]
 8000a84:      	and	r0, r0, #192
 8000a88:      	cmp	r0, #128
 8000a8a:      	it	eq
 8000a8c:      	addeq	r3, #1
 8000a8e:      	ldr.w	lr, [r10, #12]
 8000a92:      	sub.w	r0, r9, r3
 8000a96:      	cmp	r0, lr
 8000a98:      	bhs.w	#470 <core::fmt::Formatter::pad::hdd2f8bc43cf2bd72+0x51e>
 8000a9c:      	cmp.w	r8, #3
 8000aa0:      	bhs	#4 <core::fmt::Formatter::pad::hdd2f8bc43cf2bd72+0x354>
 8000aa2:      	movs	r2, #0
 8000aa4:      	mov	r3, r6
 8000aa6:      	b	#538 <core::fmt::Formatter::pad::hdd2f8bc43cf2bd72+0x570>
 8000aa8:      	sub.w	r0, r9, #4
 8000aac:      	bic	r2, r0, #3
 8000ab0:      	movs	r0, #1
 8000ab2:      	cmp	r2, #12
 8000ab4:      	add.w	r0, r0, r2, lsr #2
 8000ab8:      	and	r12, r0, #3
 8000abc:      	bhs	#4 <core::fmt::Formatter::pad::hdd2f8bc43cf2bd72+0x370>
 8000abe:      	movs	r2, #0
 8000ac0:      	mov	r3, r6
 8000ac2:      	b	#218 <core::fmt::Formatter::pad::hdd2f8bc43cf2bd72+0x44c>
 8000ac4:      	bic	r0, r0, #3
 8000ac8:      	str	r4, [sp, #4]
 8000aca:      	rsbs	r4, r0, #0
 8000acc:      	movs	r2, #0
 8000ace:      	mov	r3, r6
 8000ad0:      	str	r6, [sp, #8]
 8000ad2:      	ldrb	r6, [r3]
 8000ad4:      	ldrb	r5, [r3, #1]
 8000ad6:      	ldrb	r1, [r3, #2]
 8000ad8:      	and	r6, r6, #192
 8000adc:      	ldrb	r0, [r3, #3]
 8000ade:      	cmp	r6, #128
 8000ae0:      	ldrb.w	r8, [r3, #15]
 8000ae4:      	and	r6, r5, #192
 8000ae8:      	ldrb.w	r11, [r3, #14]
 8000aec:      	it	eq
 8000aee:      	addeq	r2, #1
 8000af0:      	ldrb	r5, [r3, #13]
 8000af2:      	cmp	r6, #128
 8000af4:      	it	eq
 8000af6:      	addeq	r2, #1
 8000af8:      	and	r1, r1, #192
 8000afc:      	ldrb	r6, [r3, #4]
 8000afe:      	cmp	r1, #128
 8000b00:      	it	eq
 8000b02:      	addeq	r2, #1
 8000b04:      	and	r0, r0, #192
 8000b08:      	ldrb	r1, [r3, #5]
 8000b0a:      	cmp	r0, #128
 8000b0c:      	it	eq
 8000b0e:      	addeq	r2, #1
 8000b10:      	and	r0, r6, #192
 8000b14:      	ldrb	r6, [r3, #6]
 8000b16:      	cmp	r0, #128
 8000b18:      	it	eq
 8000b1a:      	addeq	r2, #1
 8000b1c:      	and	r0, r1, #192
 8000b20:      	ldrb	r1, [r3, #7]
 8000b22:      	cmp	r0, #128
 8000b24:      	it	eq
 8000b26:      	addeq	r2, #1
 8000b28:      	and	r0, r6, #192
 8000b2c:      	ldrb	r6, [r3, #8]
 8000b2e:      	cmp	r0, #128
 8000b30:      	it	eq
 8000b32:      	addeq	r2, #1
 8000b34:      	and	r0, r1, #192
 8000b38:      	ldrb	r1, [r3, #9]
 8000b3a:      	cmp	r0, #128
 8000b3c:      	it	eq
 8000b3e:      	addeq	r2, #1
 8000b40:      	and	r0, r6, #192
 8000b44:      	ldrb	r6, [r3, #10]
 8000b46:      	cmp	r0, #128
 8000b48:      	it	eq
 8000b4a:      	addeq	r2, #1
 8000b4c:      	and	r0, r1, #192
 8000b50:      	cmp	r0, #128
 8000b52:      	ldrb	r1, [r3, #12]
 8000b54:      	it	eq
 8000b56:      	addeq	r2, #1
 8000b58:      	and	r0, r6, #192
 8000b5c:      	ldrb	r6, [r3, #11]
 8000b5e:      	cmp	r0, #128
 8000b60:      	it	eq
 8000b62:      	addeq	r2, #1
 8000b64:      	adds	r3, #16
 8000b66:      	and	r0, r6, #192
 8000b6a:      	cmp	r0, #128
 8000b6c:      	and	r0, r1, #192
 8000b70:      	it	eq
 8000b72:      	addeq	r2, #1
 8000b74:      	cmp	r0, #128
 8000b76:      	and	r0, r5, #192
 8000b7a:      	it	eq
 8000b7c:      	addeq	r2, #1
 8000b7e:      	cmp	r0, #128
 8000b80:      	and	r0, r11, #192
 8000b84:      	it	eq
 8000b86:      	addeq	r2, #1
 8000b88:      	cmp	r0, #128
 8000b8a:      	and	r0, r8, #192
 8000b8e:      	it	eq
 8000b90:      	addeq	r2, #1
 8000b92:      	cmp	r0, #128
 8000b94:      	it	eq
 8000b96:      	addeq	r2, #1
 8000b98:      	adds	r4, #4
 8000b9a:      	bne	#-204 <core::fmt::Formatter::pad::hdd2f8bc43cf2bd72+0x37e>
 8000b9c:      	ldrd	r4, r6, [sp, #4]
 8000ba0:      	cmp.w	r12, #0
 8000ba4:      	beq.w	#284 <core::fmt::Formatter::pad::hdd2f8bc43cf2bd72+0x570>
 8000ba8:      	ldrb	r0, [r3]
 8000baa:      	ldrb	r1, [r3, #1]
 8000bac:      	and	r0, r0, #192
 8000bb0:      	ldrb	r5, [r3, #2]
 8000bb2:      	cmp	r0, #128
 8000bb4:      	ldrb.w	r8, [r3, #3]
 8000bb8:      	and	r0, r1, #192
 8000bbc:      	it	eq
 8000bbe:      	addeq	r2, #1
 8000bc0:      	cmp	r0, #128
 8000bc2:      	and	r0, r5, #192
 8000bc6:      	it	eq
 8000bc8:      	addeq	r2, #1
 8000bca:      	cmp	r0, #128
 8000bcc:      	and	r0, r8, #192
 8000bd0:      	it	eq
 8000bd2:      	addeq	r2, #1
 8000bd4:      	cmp	r0, #128
 8000bd6:      	it	eq
 8000bd8:      	addeq	r2, #1
 8000bda:      	cmp.w	r12, #1
 8000bde:      	bne	#2 <core::fmt::Formatter::pad::hdd2f8bc43cf2bd72+0x490>
 8000be0:      	adds	r3, #4
 8000be2:      	b	#222 <core::fmt::Formatter::pad::hdd2f8bc43cf2bd72+0x570>
 8000be4:      	ldrb	r0, [r3, #4]
 8000be6:      	ldrb	r1, [r3, #5]
 8000be8:      	and	r0, r0, #192
 8000bec:      	ldrb	r5, [r3, #6]
 8000bee:      	cmp	r0, #128
 8000bf0:      	ldrb.w	r8, [r3, #7]
 8000bf4:      	and	r0, r1, #192
 8000bf8:      	it	eq
 8000bfa:      	addeq	r2, #1
 8000bfc:      	cmp	r0, #128
 8000bfe:      	and	r0, r5, #192
 8000c02:      	it	eq
 8000c04:      	addeq	r2, #1
 8000c06:      	cmp	r0, #128
 8000c08:      	and	r0, r8, #192
 8000c0c:      	it	eq
 8000c0e:      	addeq	r2, #1
 8000c10:      	cmp	r0, #128
 8000c12:      	it	eq
 8000c14:      	addeq	r2, #1
 8000c16:      	cmp.w	r12, #2
 8000c1a:      	bne	#110 <core::fmt::Formatter::pad::hdd2f8bc43cf2bd72+0x538>
 8000c1c:      	adds	r3, #8
 8000c1e:      	b	#162 <core::fmt::Formatter::pad::hdd2f8bc43cf2bd72+0x570>
 8000c20:      	movs	r6, #0
 8000c22:      	mov	r1, r5
 8000c24:      	cmp	r0, #240
 8000c26:      	blo.w	#-1140 <core::fmt::Formatter::pad::hdd2f8bc43cf2bd72+0x62>
 8000c2a:      	orrs	r3, r6
 8000c2c:      	mov.w	r6, #1835008
 8000c30:      	and.w	r0, r6, r0, lsl #18
 8000c34:      	cmp	r1, r5
 8000c36:      	orr.w	r0, r0, r3, lsl #6
 8000c3a:      	itte	ne
 8000c3c:      	ldrbne	r1, [r1]
 8000c3e:      	andne	r1, r1, #63
 8000c42:      	moveq	r1, #0
 8000c44:      	add	r0, r1
 8000c46:      	cmp.w	r0, #1114112
 8000c4a:      	bne.w	#-1176 <core::fmt::Formatter::pad::hdd2f8bc43cf2bd72+0x62>
 8000c4e:      	mov	r2, r9
 8000c50:      	ldr	r6, [sp, #8]
 8000c52:      	cmp.w	lr, #1
 8000c56:      	bne.w	#-654 <core::fmt::Formatter::pad::hdd2f8bc43cf2bd72+0x278>
 8000c5a:      	mov	r9, r2
 8000c5c:      	cmp.w	r9, #0
 8000c60:      	bne.w	#-1256 <core::fmt::Formatter::pad::hdd2f8bc43cf2bd72+0x28>
 8000c64:      	ldr.w	lr, [r10, #12]
 8000c68:      	cmp.w	lr, #0
 8000c6c:      	beq	#2 <core::fmt::Formatter::pad::hdd2f8bc43cf2bd72+0x51e>
 8000c6e:      	movs	r2, #0
 8000c70:      	b	#126 <core::fmt::Formatter::pad::hdd2f8bc43cf2bd72+0x59e>
 8000c72:      	ldr.w	r1, [r10, #28]
 8000c76:      	mov	r2, r9
 8000c78:      	ldr.w	r0, [r10, #24]
 8000c7c:      	ldr	r3, [r1, #12]
 8000c7e:      	mov	r1, r6
 8000c80:      	add	sp, #12
 8000c82:      	pop.w	{r8, r9, r10, r11}
 8000c86:      	pop.w	{r4, r5, r6, r7, lr}
 8000c8a:      	bx	r3
 8000c8c:      	ldrb	r0, [r3, #8]
 8000c8e:      	mov	r5, r6
 8000c90:      	ldrb	r1, [r3, #9]
 8000c92:      	and	r0, r0, #192
 8000c96:      	ldrb	r6, [r3, #10]
 8000c98:      	ldrb.w	r12, [r3, #11]
 8000c9c:      	cmp	r0, #128
 8000c9e:      	it	eq
 8000ca0:      	addeq	r2, #1
 8000ca2:      	and	r0, r1, #192
 8000ca6:      	cmp	r0, #128
 8000ca8:      	and	r0, r6, #192
 8000cac:      	it	eq
 8000cae:      	addeq	r2, #1
 8000cb0:      	cmp	r0, #128
 8000cb2:      	it	eq
 8000cb4:      	addeq	r2, #1
 8000cb6:      	and	r0, r12, #192
 8000cba:      	cmp	r0, #128
 8000cbc:      	mov	r6, r5
 8000cbe:      	it	eq
 8000cc0:      	addeq	r2, #1
 8000cc2:      	adds	r3, #12
 8000cc4:      	cbz	r4, #42
 8000cc6:      	ldrb	r0, [r3]
 8000cc8:      	and	r0, r0, #192
 8000ccc:      	cmp	r0, #128
 8000cce:      	it	eq
 8000cd0:      	addeq	r2, #1
 8000cd2:      	cmp	r4, #1
 8000cd4:      	beq	#26 <core::fmt::Formatter::pad::hdd2f8bc43cf2bd72+0x59e>
 8000cd6:      	ldrb	r0, [r3, #1]
 8000cd8:      	and	r0, r0, #192
 8000cdc:      	cmp	r0, #128
 8000cde:      	it	eq
 8000ce0:      	addeq	r2, #1
 8000ce2:      	cmp	r4, #2
 8000ce4:      	beq	#10 <core::fmt::Formatter::pad::hdd2f8bc43cf2bd72+0x59e>
 8000ce6:      	ldrb	r0, [r3, #2]
 8000ce8:      	and	r0, r0, #192
 8000cec:      	cmp	r0, #128
 8000cee:      	it	eq
 8000cf0:      	addeq	r2, #1
 8000cf2:      	ldrb.w	r0, [r10, #32]
 8000cf6:      	subs	r3, r0, #3
 8000cf8:      	it	ne
 8000cfa:      	movne	r3, r0
 8000cfc:      	sub.w	r0, r2, r9
 8000d00:      	add.w	r1, r0, lr
 8000d04:      	movs	r0, #0
 8000d06:      	mov	r11, r1
 8000d08:      	tbb	[pc, r3]

08000d0c <$d.15>:
 8000d0c:	0a 02 06 02	.word	0x0206020a

08000d10 <$t.16>:
 8000d10:      	mov.w	r11, #0
 8000d14:      	mov	r0, r1
 8000d16:      	b	#6 <$t.16+0x10>
 8000d18:      	lsrs	r0, r1, #1
 8000d1a:      	adds	r1, #1
 8000d1c:      	lsr.w	r11, r1, #1
 8000d20:      	adds	r4, r0, #1
 8000d22:      	subs	r4, #1
 8000d24:      	beq	#16 <$t.16+0x28>
 8000d26:      	ldrd	r0, r2, [r10, #24]
 8000d2a:      	ldr.w	r1, [r10, #4]
 8000d2e:      	ldr	r2, [r2, #16]
 8000d30:      	blx	r2
 8000d32:      	cmp	r0, #0
 8000d34:      	beq	#-22 <$t.16+0x12>
 8000d36:      	b	#40 <$t.16+0x52>
 8000d38:      	ldrd	r0, r1, [r10, #24]
 8000d3c:      	mov	r2, r9
 8000d3e:      	ldr	r3, [r1, #12]
 8000d40:      	mov	r1, r6
 8000d42:      	ldr.w	r8, [r10, #4]
 8000d46:      	blx	r3
 8000d48:      	cbnz	r0, #22
 8000d4a:      	ldrd	r6, r5, [r10, #24]
 8000d4e:      	add.w	r4, r11, #1
 8000d52:      	subs	r4, #1
 8000d54:      	beq	#20 <$t.16+0x5c>
 8000d56:      	ldr	r2, [r5, #16]
 8000d58:      	mov	r0, r6
 8000d5a:      	mov	r1, r8
 8000d5c:      	blx	r2
 8000d5e:      	cmp	r0, #0
 8000d60:      	beq	#-18 <$t.16+0x42>
 8000d62:      	movs	r0, #1
 8000d64:      	add	sp, #12
 8000d66:      	pop.w	{r8, r9, r10, r11}
 8000d6a:      	pop	{r4, r5, r6, r7, pc}
 8000d6c:      	movs	r0, #0
 8000d6e:      	add	sp, #12
 8000d70:      	pop.w	{r8, r9, r10, r11}
 8000d74:      	pop	{r4, r5, r6, r7, pc}

08000d76 <<&T as core::fmt::Display>::fmt::hed4fc898b8a3241f>:
 8000d76:      	mov	r3, r1
 8000d78:      	ldrd	r1, r2, [r0]
 8000d7c:      	mov	r0, r3
 8000d7e:      	b.w	#-1582 <core::fmt::Formatter::pad::hdd2f8bc43cf2bd72>

08000d82 <core::fmt::write::h80f221a6e172bdff>:
 8000d82:      	push	{r4, r5, r6, r7, lr}
 8000d84:      	add	r7, sp, #12
 8000d86:      	push.w	{r8, r9, r10, r11}
 8000d8a:      	sub	sp, #52
 8000d8c:      	mov	r4, r2
 8000d8e:      	movs	r2, #3
 8000d90:      	ldr	r3, [r4, #8]
 8000d92:      	strb.w	r2, [sp, #48]
 8000d96:      	movs	r2, #32
 8000d98:      	str	r2, [sp, #20]
 8000d9a:      	movs	r2, #0
 8000d9c:      	cmp	r3, #0
 8000d9e:      	str	r2, [sp, #16]
 8000da0:      	str	r1, [sp, #44]
 8000da2:      	str	r0, [sp, #40]
 8000da4:      	str	r2, [sp, #32]
 8000da6:      	str	r2, [sp, #24]
 8000da8:      	str	r3, [sp, #8]
 8000daa:      	beq	#230 <core::fmt::write::h80f221a6e172bdff+0x112>
 8000dac:      	ldr.w	r11, [r4, #12]
 8000db0:      	ldrd	r6, r9, [r4]
 8000db4:      	cmp	r11, r9
 8000db6:      	it	hi
 8000db8:      	movhi	r11, r9
 8000dba:      	cmp.w	r11, #0
 8000dbe:      	str	r6, [sp, #12]
 8000dc0:      	beq.w	#298 <core::fmt::write::h80f221a6e172bdff+0x16c>
 8000dc4:      	str.w	r9, [sp, #4]
 8000dc8:      	ldrd	r3, r2, [r6]
 8000dcc:      	ldr	r6, [r1, #12]
 8000dce:      	mov	r1, r3
 8000dd0:      	blx	r6
 8000dd2:      	cmp	r0, #0
 8000dd4:      	bne.w	#318 <core::fmt::write::h80f221a6e172bdff+0x194>
 8000dd8:      	ldr	r0, [sp, #8]
 8000dda:      	sub.w	r10, r11, #1
 8000dde:      	ldr.w	r9, [r4, #16]
 8000de2:      	mov.w	r8, #0
 8000de6:      	add.w	r6, r0, #16
 8000dea:      	ldr	r0, [sp, #8]
 8000dec:      	add.w	r0, r0, r8, lsl #2
 8000df0:      	ldrd	r2, r1, [r0, #20]
 8000df4:      	ldrd	r3, r4, [r0, #4]
 8000df8:      	ldrb	r5, [r0, #28]
 8000dfa:      	str	r3, [sp, #20]
 8000dfc:      	strb.w	r5, [sp, #48]
 8000e00:      	str	r4, [sp, #16]
 8000e02:      	cbz	r2, #26
 8000e04:      	cmp	r2, #2
 8000e06:      	beq	#26 <core::fmt::write::h80f221a6e172bdff+0xa2>
 8000e08:      	add.w	r2, r9, r1, lsl #3
 8000e0c:      	movw	r3, #1049
 8000e10:      	movt	r3, #2048
 8000e14:      	ldr	r2, [r2, #4]
 8000e16:      	cmp	r2, r3
 8000e18:      	bne	#8 <core::fmt::write::h80f221a6e172bdff+0xa2>
 8000e1a:      	ldr.w	r1, [r9, r1, lsl #3]
 8000e1e:      	ldr	r1, [r1]
 8000e20:      	movs	r2, #1
 8000e22:      	b	#0 <core::fmt::write::h80f221a6e172bdff+0xa4>
 8000e24:      	movs	r2, #0
 8000e26:      	strd	r2, r1, [sp, #24]
 8000e2a:      	ldr	r0, [r0, #12]
 8000e2c:      	ldr	r1, [r6]
 8000e2e:      	cbz	r0, #26
 8000e30:      	cmp	r0, #2
 8000e32:      	beq	#26 <core::fmt::write::h80f221a6e172bdff+0xce>
 8000e34:      	add.w	r0, r9, r1, lsl #3
 8000e38:      	movw	r2, #1049
 8000e3c:      	movt	r2, #2048
 8000e40:      	ldr	r0, [r0, #4]
 8000e42:      	cmp	r0, r2
 8000e44:      	bne	#8 <core::fmt::write::h80f221a6e172bdff+0xce>
 8000e46:      	ldr.w	r0, [r9, r1, lsl #3]
 8000e4a:      	ldr	r1, [r0]
 8000e4c:      	movs	r2, #1
 8000e4e:      	b	#0 <core::fmt::write::h80f221a6e172bdff+0xd0>
 8000e50:      	movs	r2, #0
 8000e52:      	ldr	r3, [r6, #-16]
 8000e56:      	str	r1, [sp, #36]
 8000e58:      	add.w	r1, r9, r3, lsl #3
 8000e5c:      	ldr.w	r0, [r9, r3, lsl #3]
 8000e60:      	ldr	r3, [r1, #4]
 8000e62:      	add	r1, sp, #16
 8000e64:      	str	r2, [sp, #32]
 8000e66:      	blx	r3
 8000e68:      	cmp	r0, #0
 8000e6a:      	bne	#168 <core::fmt::write::h80f221a6e172bdff+0x194>
 8000e6c:      	cmp.w	r10, #0
 8000e70:      	beq	#172 <core::fmt::write::h80f221a6e172bdff+0x19e>
 8000e72:      	ldr	r1, [sp, #12]
 8000e74:      	ldrd	r0, r3, [sp, #40]
 8000e78:      	add.w	r2, r1, r8
 8000e7c:      	ldr	r3, [r3, #12]
 8000e7e:      	ldrd	r1, r2, [r2, #8]
 8000e82:      	blx	r3
 8000e84:      	sub.w	r10, r10, #1
 8000e88:      	adds	r6, #32
 8000e8a:      	add.w	r8, r8, #8
 8000e8e:      	cmp	r0, #0
 8000e90:      	beq	#-170 <core::fmt::write::h80f221a6e172bdff+0x68>
 8000e92:      	b	#128 <core::fmt::write::h80f221a6e172bdff+0x194>
 8000e94:      	ldr.w	r11, [r4, #20]
 8000e98:      	ldrd	r6, r9, [r4]
 8000e9c:      	cmp	r11, r9
 8000e9e:      	it	hi
 8000ea0:      	movhi	r11, r9
 8000ea2:      	cmp.w	r11, #0
 8000ea6:      	str	r6, [sp, #12]
 8000ea8:      	beq	#76 <core::fmt::write::h80f221a6e172bdff+0x176>
 8000eaa:      	ldrd	r3, r2, [r6]
 8000eae:      	ldr	r6, [r1, #12]
 8000eb0:      	ldr	r4, [r4, #16]
 8000eb2:      	mov	r1, r3
 8000eb4:      	blx	r6
 8000eb6:      	cbnz	r0, #92
 8000eb8:      	ldr	r0, [sp, #12]
 8000eba:      	adds	r6, r4, #4
 8000ebc:      	sub.w	r5, r11, #1
 8000ec0:      	add.w	r8, sp, #16
 8000ec4:      	add.w	r4, r0, #8
 8000ec8:      	ldr	r0, [r6, #-4]
 8000ecc:      	mov	r1, r8
 8000ece:      	ldr	r2, [r6]
 8000ed0:      	blx	r2
 8000ed2:      	cbnz	r0, #64
 8000ed4:      	cbz	r5, #36
 8000ed6:      	ldrd	r0, r3, [sp, #40]
 8000eda:      	ldrd	r1, r2, [r4]
 8000ede:      	ldr	r3, [r3, #12]
 8000ee0:      	blx	r3
 8000ee2:      	subs	r5, #1
 8000ee4:      	adds	r6, #8
 8000ee6:      	adds	r4, #8
 8000ee8:      	cmp	r0, #0
 8000eea:      	beq	#-38 <core::fmt::write::h80f221a6e172bdff+0x146>
 8000eec:      	b	#38 <core::fmt::write::h80f221a6e172bdff+0x194>
 8000eee:      	mov.w	r11, #0
 8000ef2:      	cmp	r9, r11
 8000ef4:      	bhi	#8 <core::fmt::write::h80f221a6e172bdff+0x17e>
 8000ef6:      	b	#46 <core::fmt::write::h80f221a6e172bdff+0x1a6>
 8000ef8:      	mov.w	r11, #0
 8000efc:      	cmp	r9, r11
 8000efe:      	bls	#38 <core::fmt::write::h80f221a6e172bdff+0x1a6>
 8000f00:      	ldr	r2, [sp, #12]
 8000f02:      	ldrd	r0, r3, [sp, #40]
 8000f06:      	ldr	r3, [r3, #12]
 8000f08:      	ldr.w	r1, [r2, r11, lsl #3]
 8000f0c:      	add.w	r2, r2, r11, lsl #3
 8000f10:      	ldr	r2, [r2, #4]
 8000f12:      	blx	r3
 8000f14:      	cbz	r0, #16
 8000f16:      	movs	r0, #1
 8000f18:      	add	sp, #52
 8000f1a:      	pop.w	{r8, r9, r10, r11}
 8000f1e:      	pop	{r4, r5, r6, r7, pc}
 8000f20:      	ldr.w	r9, [sp, #4]
 8000f24:      	cmp	r9, r11
 8000f26:      	bhi	#-42 <core::fmt::write::h80f221a6e172bdff+0x17e>
 8000f28:      	movs	r0, #0
 8000f2a:      	add	sp, #52
 8000f2c:      	pop.w	{r8, r9, r10, r11}
 8000f30:      	pop	{r4, r5, r6, r7, pc}

08000f32 <<&T as core::fmt::Display>::fmt::hb1351d570a30a9c9>:
 8000f32:      	push	{r4, r5, r6, r7, lr}
 8000f34:      	add	r7, sp, #12
 8000f36:      	push.w	{r8, r9, r11}
 8000f3a:      	sub	sp, #24
 8000f3c:      	ldr.w	lr, [r0]
 8000f40:      	mov	r2, sp
 8000f42:      	ldrd	r12, r1, [r1, #24]
 8000f46:      	mov	r3, r2
 8000f48:      	ldm.w	lr, {r0, r4, r5, r6, r8, r9}
 8000f4c:      	stm.w	r3, {r0, r4, r5, r6, r8, r9}
 8000f50:      	mov	r0, r12
 8000f52:      	bl	#-468
 8000f56:      	add	sp, #24
 8000f58:      	pop.w	{r8, r9, r11}
 8000f5c:      	pop	{r4, r5, r6, r7, pc}

08000f5e <<&T as core::fmt::Display>::fmt::h28023d1754819fb6>:
 8000f5e:      	ldr	r0, [r0]
 8000f60:      	mov	r3, r1
 8000f62:      	ldrd	r1, r2, [r0]
 8000f66:      	mov	r0, r3
 8000f68:      	b.w	#-2072 <core::fmt::Formatter::pad::hdd2f8bc43cf2bd72>

08000f6c <cortex_m::itm::write_all::h1098dbb8e67ada69>:
 8000f6c:      	push	{r4, r5, r7, lr}
 8000f6e:      	add	r7, sp, #8
 8000f70:      	cmp	r2, #0
 8000f72:      	beq.w	#262 <cortex_m::itm::write_all::h1098dbb8e67ada69+0x110>
 8000f76:      	lsls	r3, r1, #31
 8000f78:      	beq	#32 <cortex_m::itm::write_all::h1098dbb8e67ada69+0x30>
 8000f7a:      	ldr	r3, [r0]
 8000f7c:      	lsls	r3, r3, #31
 8000f7e:      	itttt	eq
 8000f80:      	ldreq	r3, [r0]
 8000f82:      	lslseq.w	r3, r3, #31
 8000f86:      	ldreq	r3, [r0]
 8000f88:      	lslseq.w	r3, r3, #31
 8000f8c:      	bne	#4 <cortex_m::itm::write_all::h1098dbb8e67ada69+0x28>
 8000f8e:      	ldr	r3, [r0]
 8000f90:      	lsls	r3, r3, #31
 8000f92:      	beq	#-28 <cortex_m::itm::write_all::h1098dbb8e67ada69+0xe>
 8000f94:      	ldrb	r3, [r1], #1
 8000f98:      	subs	r2, #1
 8000f9a:      	strb	r3, [r0]
 8000f9c:      	and	r3, r1, #3
 8000fa0:      	cmp	r3, #2
 8000fa2:      	bne	#36 <cortex_m::itm::write_all::h1098dbb8e67ada69+0x5e>
 8000fa4:      	cmp	r2, #2
 8000fa6:      	blo	#174 <cortex_m::itm::write_all::h1098dbb8e67ada69+0xec>
 8000fa8:      	ldr	r3, [r0]
 8000faa:      	lsls	r3, r3, #31
 8000fac:      	itttt	eq
 8000fae:      	ldreq	r3, [r0]
 8000fb0:      	lslseq.w	r3, r3, #31
 8000fb4:      	ldreq	r3, [r0]
 8000fb6:      	lslseq.w	r3, r3, #31
 8000fba:      	bne	#4 <cortex_m::itm::write_all::h1098dbb8e67ada69+0x56>
 8000fbc:      	ldr	r3, [r0]
 8000fbe:      	lsls	r3, r3, #31
 8000fc0:      	beq	#-28 <cortex_m::itm::write_all::h1098dbb8e67ada69+0x3c>
 8000fc2:      	ldrh	r3, [r1], #2
 8000fc6:      	subs	r2, #2
 8000fc8:      	strh	r3, [r0]
 8000fca:      	cmp	r2, #0
 8000fcc:      	beq	#172 <cortex_m::itm::write_all::h1098dbb8e67ada69+0x110>
 8000fce:      	bic	r12, r2, #3
 8000fd2:      	movs	r3, #0
 8000fd4:      	cmp.w	r3, r2, lsr #2
 8000fd8:      	beq	#48 <cortex_m::itm::write_all::h1098dbb8e67ada69+0xa0>
 8000fda:      	lsr.w	lr, r2, #2
 8000fde:      	movs	r3, #0
 8000fe0:      	mov	r4, r1
 8000fe2:      	b	#10 <cortex_m::itm::write_all::h1098dbb8e67ada69+0x84>
 8000fe4:      	ldr	r5, [r4], #4
 8000fe8:      	adds	r3, #1
 8000fea:      	cmp	r3, lr
 8000fec:      	str	r5, [r0]
 8000fee:      	beq	#26 <cortex_m::itm::write_all::h1098dbb8e67ada69+0xa0>
 8000ff0:      	ldr	r5, [r0]
 8000ff2:      	lsls	r5, r5, #31
 8000ff4:      	itttt	eq
 8000ff6:      	ldreq	r5, [r0]
 8000ff8:      	lslseq.w	r5, r5, #31
 8000ffc:      	ldreq	r5, [r0]
 8000ffe:      	lslseq.w	r5, r5, #31
 8001002:      	bne	#-34 <cortex_m::itm::write_all::h1098dbb8e67ada69+0x78>
 8001004:      	ldr	r5, [r0]
 8001006:      	lsls	r5, r5, #31
 8001008:      	beq	#-28 <cortex_m::itm::write_all::h1098dbb8e67ada69+0x84>
 800100a:      	b	#-42 <cortex_m::itm::write_all::h1098dbb8e67ada69+0x78>
 800100c:      	and	r2, r2, #3
 8001010:      	add	r1, r12
 8001012:      	cmp	r2, #2
 8001014:      	blo	#32 <cortex_m::itm::write_all::h1098dbb8e67ada69+0xcc>
 8001016:      	ldr	r3, [r0]
 8001018:      	lsls	r3, r3, #31
 800101a:      	itttt	eq
 800101c:      	ldreq	r3, [r0]
 800101e:      	lslseq.w	r3, r3, #31
 8001022:      	ldreq	r3, [r0]
 8001024:      	lslseq.w	r3, r3, #31
 8001028:      	bne	#4 <cortex_m::itm::write_all::h1098dbb8e67ada69+0xc4>
 800102a:      	ldr	r3, [r0]
 800102c:      	lsls	r3, r3, #31
 800102e:      	beq	#-28 <cortex_m::itm::write_all::h1098dbb8e67ada69+0xaa>
 8001030:      	ldrh	r3, [r1], #2
 8001034:      	subs	r2, #2
 8001036:      	strh	r3, [r0]
 8001038:      	cmp	r2, #1
 800103a:      	bne	#62 <cortex_m::itm::write_all::h1098dbb8e67ada69+0x110>
 800103c:      	ldr	r2, [r0]
 800103e:      	lsls	r2, r2, #31
 8001040:      	itttt	eq
 8001042:      	ldreq	r2, [r0]
 8001044:      	lslseq.w	r2, r2, #31
 8001048:      	ldreq	r2, [r0]
 800104a:      	lslseq.w	r2, r2, #31
 800104e:      	bne	#38 <cortex_m::itm::write_all::h1098dbb8e67ada69+0x10c>
 8001050:      	ldr	r2, [r0]
 8001052:      	lsls	r2, r2, #31
 8001054:      	beq	#-28 <cortex_m::itm::write_all::h1098dbb8e67ada69+0xd0>
 8001056:      	b	#30 <cortex_m::itm::write_all::h1098dbb8e67ada69+0x10c>
 8001058:      	cmp	r2, #1
 800105a:      	it	ne
 800105c:      	popne	{r4, r5, r7, pc}
 800105e:      	ldr	r2, [r0]
 8001060:      	lsls	r2, r2, #31
 8001062:      	bne	#18 <cortex_m::itm::write_all::h1098dbb8e67ada69+0x10c>
 8001064:      	ldr	r2, [r0]
 8001066:      	lsls	r2, r2, #31
 8001068:      	itt	eq
 800106a:      	ldreq	r2, [r0]
 800106c:      	lslseq.w	r2, r2, #31
 8001070:      	bne	#4 <cortex_m::itm::write_all::h1098dbb8e67ada69+0x10c>
 8001072:      	ldr	r2, [r0]
 8001074:      	lsls	r2, r2, #31
 8001076:      	beq	#-28 <cortex_m::itm::write_all::h1098dbb8e67ada69+0xf2>
 8001078:      	ldrb	r1, [r1]
 800107a:      	strb	r1, [r0]
 800107c:      	pop	{r4, r5, r7, pc}

0800107e <ResetTrampoline>:
 800107e:      	push	{r7, lr}
 8001080:      	mov	r7, sp
 8001082:      	bl	#-3652
 8001086:      	trap

08001088 <WWDG>:
 8001088:      	b	#-4 <WWDG>

0800108a <__pre_init>:
 800108a:      	bx	lr

0800108c <rust_begin_unwind>:
 800108c:      	push	{r7, lr}
 800108e:      	mov	r7, sp
 8001090:      	sub	sp, #48
 8001092:      	str	r0, [sp, #4]
 8001094:      	bl	#516
 8001098:      	movw	r0, #4319
 800109c:      	movw	r1, #5216
 80010a0:      	movt	r0, #2048
 80010a4:      	add	r2, sp, #24
 80010a6:      	str	r0, [sp, #12]
 80010a8:      	add	r0, sp, #4
 80010aa:      	str	r0, [sp, #8]
 80010ac:      	mov.w	r0, #3758096384
 80010b0:      	str	r0, [sp, #16]
 80010b2:      	add	r0, sp, #16
 80010b4:      	str	r0, [sp, #20]
 80010b6:      	movs	r0, #1
 80010b8:      	str	r0, [sp, #44]
 80010ba:      	add	r0, sp, #8
 80010bc:      	str	r0, [sp, #40]
 80010be:      	movs	r0, #0
 80010c0:      	strd	r0, r0, [sp, #32]
 80010c4:      	movs	r0, #2
 80010c6:      	str	r0, [sp, #28]
 80010c8:      	movw	r0, #5200
 80010cc:      	movt	r0, #2048
 80010d0:      	movt	r1, #2048
 80010d4:      	str	r0, [sp, #24]
 80010d6:      	add	r0, sp, #20
 80010d8:      	bl	#-858
 80010dc:      	b	#-4 <rust_begin_unwind+0x50>

080010de <<&T as core::fmt::Display>::fmt::h5a9e9b1ee2b40989>:
 80010de:      	push	{r4, r5, r6, r7, lr}
 80010e0:      	add	r7, sp, #12
 80010e2:      	str	r11, [sp, #-4]!
 80010e6:      	sub	sp, #56
 80010e8:      	mov	r4, r1
 80010ea:      	ldrd	r2, r1, [r1, #24]
 80010ee:      	ldr	r3, [r1, #12]
 80010f0:      	movw	r1, #5140
 80010f4:      	ldr	r6, [r0]
 80010f6:      	movt	r1, #2048
 80010fa:      	mov	r0, r2
 80010fc:      	movs	r2, #12
 80010fe:      	blx	r3
 8001100:      	cbz	r0, #10
 8001102:      	movs	r5, #1
 8001104:      	mov	r0, r5
 8001106:      	add	sp, #56
 8001108:      	ldr	r11, [sp], #4
 800110c:      	pop	{r4, r5, r6, r7, pc}
 800110e:      	ldr	r0, [r6, #8]
 8001110:      	cbz	r0, #14
 8001112:      	str	r0, [sp, #4]
 8001114:      	movw	r2, #3891
 8001118:      	ldrd	r0, r1, [r4, #24]
 800111c:      	movt	r2, #2048
 8001120:      	b	#46 <<&T as core::fmt::Display>::fmt::h5a9e9b1ee2b40989+0x74>
 8001122:      	ldrd	r5, r0, [r6]
 8001126:      	ldr	r1, [r0, #12]
 8001128:      	mov	r0, r5
 800112a:      	blx	r1
 800112c:      	movw	r2, #43294
 8001130:      	movt	r2, #32498
 8001134:      	eors	r1, r2
 8001136:      	movw	r2, #48372
 800113a:      	movt	r2, #60615
 800113e:      	eors	r0, r2
 8001140:      	orrs	r0, r1
 8001142:      	bne	#56 <<&T as core::fmt::Display>::fmt::h5a9e9b1ee2b40989+0xa0>
 8001144:      	str	r5, [sp, #4]
 8001146:      	movw	r2, #3935
 800114a:      	ldrd	r0, r1, [r4, #24]
 800114e:      	movt	r2, #2048
 8001152:      	str	r2, [sp, #12]
 8001154:      	add	r2, sp, #4
 8001156:      	str	r2, [sp, #8]
 8001158:      	movs	r5, #1
 800115a:      	add	r2, sp, #8
 800115c:      	str	r5, [sp, #52]
 800115e:      	str	r2, [sp, #48]
 8001160:      	movs	r2, #0
 8001162:      	str	r2, [sp, #44]
 8001164:      	str	r2, [sp, #40]
 8001166:      	movs	r2, #2
 8001168:      	str	r2, [sp, #36]
 800116a:      	movw	r2, #5152
 800116e:      	movt	r2, #2048
 8001172:      	str	r2, [sp, #32]
 8001174:      	add	r2, sp, #32
 8001176:      	bl	#-1016
 800117a:      	cmp	r0, #0
 800117c:      	bne	#-124 <<&T as core::fmt::Display>::fmt::h5a9e9b1ee2b40989+0x26>
 800117e:      	ldr	r2, [r6, #12]
 8001180:      	movw	r3, #1109
 8001184:      	movt	r3, #2048
 8001188:      	ldrd	r0, r1, [r4, #24]
 800118c:      	add.w	r6, r2, #12
 8001190:      	str	r3, [sp, #28]
 8001192:      	strd	r3, r6, [sp, #20]
 8001196:      	add.w	r3, r2, #8
 800119a:      	str	r3, [sp, #16]
 800119c:      	movw	r3, #3447
 80011a0:      	movt	r3, #2048
 80011a4:      	strd	r2, r3, [sp, #8]
 80011a8:      	add	r3, sp, #8
 80011aa:      	movs	r2, #3
 80011ac:      	str	r3, [sp, #48]
 80011ae:      	movs	r3, #0
 80011b0:      	str	r2, [sp, #52]
 80011b2:      	str	r3, [sp, #44]
 80011b4:      	strd	r2, r3, [sp, #36]
 80011b8:      	movw	r2, #5168
 80011bc:      	movt	r2, #2048
 80011c0:      	str	r2, [sp, #32]
 80011c2:      	add	r2, sp, #32
 80011c4:      	bl	#-1094
 80011c8:      	mov	r5, r0
 80011ca:      	mov	r0, r5
 80011cc:      	add	sp, #56
 80011ce:      	ldr	r11, [sp], #4
 80011d2:      	pop	{r4, r5, r6, r7, pc}

080011d4 <core::ptr::drop_in_place::h4057e8d006af43fe>:
 80011d4:      	bx	lr

080011d6 <<&mut W as core::fmt::Write>::write_str::hbd59a210919e6753>:
 80011d6:      	push	{r7, lr}
 80011d8:      	mov	r7, sp
 80011da:      	ldr	r0, [r0]
 80011dc:      	ldr	r0, [r0]
 80011de:      	bl	#-630
 80011e2:      	movs	r0, #0
 80011e4:      	pop	{r7, pc}

080011e6 <<&mut W as core::fmt::Write>::write_char::h1cb2b91da1b2b000>:
 80011e6:      	push	{r7, lr}
 80011e8:      	mov	r7, sp
 80011ea:      	sub	sp, #8
 80011ec:      	ldr	r0, [r0]
 80011ee:      	movs	r2, #0
 80011f0:      	cmp	r1, #128
 80011f2:      	str	r2, [sp, #4]
 80011f4:      	bhs	#6 <<&mut W as core::fmt::Write>::write_char::h1cb2b91da1b2b000+0x18>
 80011f6:      	strb.w	r1, [sp, #4]
 80011fa:      	movs	r2, #1
 80011fc:      	b	#94 <<&mut W as core::fmt::Write>::write_char::h1cb2b91da1b2b000+0x78>
 80011fe:      	movs	r2, #2
 8001200:      	mov	r3, r1
 8001202:      	bfi	r3, r2, #6, #26
 8001206:      	cmp.w	r1, #2048
 800120a:      	bhs	#10 <<&mut W as core::fmt::Write>::write_char::h1cb2b91da1b2b000+0x32>
 800120c:      	strb.w	r3, [sp, #5]
 8001210:      	movs	r3, #192
 8001212:      	orr.w	r1, r3, r1, lsr #6
 8001216:      	b	#64 <<&mut W as core::fmt::Write>::write_char::h1cb2b91da1b2b000+0x74>
 8001218:      	cmp.w	r1, #65536
 800121c:      	bhs	#26 <<&mut W as core::fmt::Write>::write_char::h1cb2b91da1b2b000+0x54>
 800121e:      	strb.w	r3, [sp, #6]
 8001222:      	lsrs	r3, r1, #6
 8001224:      	bfi	r3, r2, #6, #26
 8001228:      	movs	r2, #224
 800122a:      	orr.w	r1, r2, r1, lsr #12
 800122e:      	strb.w	r3, [sp, #5]
 8001232:      	strb.w	r1, [sp, #4]
 8001236:      	movs	r2, #3
 8001238:      	b	#34 <<&mut W as core::fmt::Write>::write_char::h1cb2b91da1b2b000+0x78>
 800123a:      	strb.w	r3, [sp, #7]
 800123e:      	lsrs	r3, r1, #6
 8001240:      	bfi	r3, r2, #6, #26
 8001244:      	strb.w	r3, [sp, #6]
 8001248:      	lsrs	r3, r1, #12
 800124a:      	bfi	r3, r2, #6, #26
 800124e:      	movs	r2, #240
 8001250:      	orr.w	r1, r2, r1, lsr #18
 8001254:      	movs	r2, #4
 8001256:      	strb.w	r3, [sp, #5]
 800125a:      	strb.w	r1, [sp, #4]
 800125e:      	ldr	r0, [r0]
 8001260:      	add	r1, sp, #4
 8001262:      	bl	#-762
 8001266:      	movs	r0, #0
 8001268:      	add	sp, #8
 800126a:      	pop	{r7, pc}

0800126c <<&mut W as core::fmt::Write>::write_fmt::h33ca6863f47eb077>:
 800126c:      	push	{r4, r5, r6, r7, lr}
 800126e:      	add	r7, sp, #12
 8001270:      	str	r11, [sp, #-4]!
 8001274:      	sub	sp, #32
 8001276:      	ldr	r0, [r0]
 8001278:      	add	r2, sp, #8
 800127a:      	str	r0, [sp, #4]
 800127c:      	ldm.w	r1, {r3, r4, r5, r6, r12, lr}
 8001280:      	mov	r0, r2
 8001282:      	movw	r1, #5216
 8001286:      	movt	r1, #2048
 800128a:      	stm.w	r0, {r3, r4, r5, r6, r12, lr}
 800128e:      	add	r0, sp, #4
 8001290:      	bl	#-1298
 8001294:      	add	sp, #32
 8001296:      	ldr	r11, [sp], #4
 800129a:      	pop	{r4, r5, r6, r7, pc}

0800129c <__cpsid>:
 800129c:      	cpsid i
 800129e:      	bx	lr

080012a0 <__cpsie>:
 80012a0:      	cpsie i
 80012a2:      	bx	lr

080012a4 <__primask>:
 80012a4:      	mrs	r0, primask
 80012a8:      	bx	lr

080012aa <HardFaultTrampoline>:
 80012aa:      	mov	r0, lr
 80012ac:      	movs	r1, #4
 80012ae:      	tst	r0, r1
 80012b0:      	bne	#4 <HardFaultTrampoline+0xe>
 80012b2:      	mrs	r0, msp
 80012b6:      	b	#4 <HardFault_>
 80012b8:      	mrs	r0, psp
 80012bc:      	b	#-2 <HardFault_>

080012be <HardFault_>:
 80012be:      	b	#-4 <HardFault_>
