
clocks-and-timers:	file format elf32-littlearm


Disassembly of section .text:

08000188 <Reset>:
 8000188:      	push	{r7, lr}
 800018a:      	mov	r7, sp
 800018c:      	bl	#4038
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
 80001e2:      	movw	r1, #5448
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
 800022c:      	bl	#3866
 8000230:      	trap

08000232 <clocks_and_timers::delay::hb0e558e7909bea03>:
 8000232:      	sub	sp, #4
 8000234:      	movw	r0, #53392
 8000238:      	movt	r0, #3
 800023c:      	str	r0, [sp]
 800023e:      	subs	r0, #100
 8000240:      	ldr	r1, [sp]
 8000242:      	ldr	r1, [sp]
 8000244:      	ldr	r1, [sp]
 8000246:      	ldr	r1, [sp]
 8000248:      	ldr	r1, [sp]
 800024a:      	ldr	r1, [sp]
 800024c:      	ldr	r1, [sp]
 800024e:      	ldr	r1, [sp]
 8000250:      	ldr	r1, [sp]
 8000252:      	ldr	r1, [sp]
 8000254:      	ldr	r1, [sp]
 8000256:      	ldr	r1, [sp]
 8000258:      	ldr	r1, [sp]
 800025a:      	ldr	r1, [sp]
 800025c:      	ldr	r1, [sp]
 800025e:      	ldr	r1, [sp]
 8000260:      	ldr	r1, [sp]
 8000262:      	ldr	r1, [sp]
 8000264:      	ldr	r1, [sp]
 8000266:      	ldr	r1, [sp]
 8000268:      	ldr	r1, [sp]
 800026a:      	ldr	r1, [sp]
 800026c:      	ldr	r1, [sp]
 800026e:      	ldr	r1, [sp]
 8000270:      	ldr	r1, [sp]
 8000272:      	ldr	r1, [sp]
 8000274:      	ldr	r1, [sp]
 8000276:      	ldr	r1, [sp]
 8000278:      	ldr	r1, [sp]
 800027a:      	ldr	r1, [sp]
 800027c:      	ldr	r1, [sp]
 800027e:      	ldr	r1, [sp]
 8000280:      	ldr	r1, [sp]
 8000282:      	ldr	r1, [sp]
 8000284:      	ldr	r1, [sp]
 8000286:      	ldr	r1, [sp]
 8000288:      	ldr	r1, [sp]
 800028a:      	ldr	r1, [sp]
 800028c:      	ldr	r1, [sp]
 800028e:      	ldr	r1, [sp]
 8000290:      	ldr	r1, [sp]
 8000292:      	ldr	r1, [sp]
 8000294:      	ldr	r1, [sp]
 8000296:      	ldr	r1, [sp]
 8000298:      	ldr	r1, [sp]
 800029a:      	ldr	r1, [sp]
 800029c:      	ldr	r1, [sp]
 800029e:      	ldr	r1, [sp]
 80002a0:      	ldr	r1, [sp]
 80002a2:      	ldr	r1, [sp]
 80002a4:      	ldr	r1, [sp]
 80002a6:      	ldr	r1, [sp]
 80002a8:      	ldr	r1, [sp]
 80002aa:      	ldr	r1, [sp]
 80002ac:      	ldr	r1, [sp]
 80002ae:      	ldr	r1, [sp]
 80002b0:      	ldr	r1, [sp]
 80002b2:      	ldr	r1, [sp]
 80002b4:      	ldr	r1, [sp]
 80002b6:      	ldr	r1, [sp]
 80002b8:      	ldr	r1, [sp]
 80002ba:      	ldr	r1, [sp]
 80002bc:      	ldr	r1, [sp]
 80002be:      	ldr	r1, [sp]
 80002c0:      	ldr	r1, [sp]
 80002c2:      	ldr	r1, [sp]
 80002c4:      	ldr	r1, [sp]
 80002c6:      	ldr	r1, [sp]
 80002c8:      	ldr	r1, [sp]
 80002ca:      	ldr	r1, [sp]
 80002cc:      	ldr	r1, [sp]
 80002ce:      	ldr	r1, [sp]
 80002d0:      	ldr	r1, [sp]
 80002d2:      	ldr	r1, [sp]
 80002d4:      	ldr	r1, [sp]
 80002d6:      	ldr	r1, [sp]
 80002d8:      	ldr	r1, [sp]
 80002da:      	ldr	r1, [sp]
 80002dc:      	ldr	r1, [sp]
 80002de:      	ldr	r1, [sp]
 80002e0:      	ldr	r1, [sp]
 80002e2:      	ldr	r1, [sp]
 80002e4:      	ldr	r1, [sp]
 80002e6:      	ldr	r1, [sp]
 80002e8:      	ldr	r1, [sp]
 80002ea:      	ldr	r1, [sp]
 80002ec:      	ldr	r1, [sp]
 80002ee:      	ldr	r1, [sp]
 80002f0:      	ldr	r1, [sp]
 80002f2:      	ldr	r1, [sp]
 80002f4:      	ldr	r1, [sp]
 80002f6:      	ldr	r1, [sp]
 80002f8:      	ldr	r1, [sp]
 80002fa:      	ldr	r1, [sp]
 80002fc:      	ldr	r1, [sp]
 80002fe:      	ldr	r1, [sp]
 8000300:      	ldr	r1, [sp]
 8000302:      	ldr	r1, [sp]
 8000304:      	ldr	r1, [sp]
 8000306:      	ldr	r1, [sp]
 8000308:      	bne	#-206 <clocks_and_timers::delay::hb0e558e7909bea03+0xc>
 800030a:      	add	sp, #4
 800030c:      	bx	lr

0800030e <main>:
 800030e:      	push	{r7, lr}
 8000310:      	mov	r7, sp
 8000312:      	bl	#2
 8000316:      	trap

08000318 <clocks_and_timers::__cortex_m_rt_main::h7d0fc28cd713a80d>:
 8000318:      	push	{r7, lr}
 800031a:      	mov	r7, sp
 800031c:      	bl	#4176
 8000320:      	and	r5, r0, #1
 8000324:      	bl	#4160
 8000328:      	movw	r4, #0
 800032c:      	movt	r4, #8192
 8000330:      	ldrb	r0, [r4]
 8000332:      	cmp	r0, #0
 8000334:      	itte	eq
 8000336:      	moveq	r6, #1
 8000338:      	strbeq	r6, [r4]
 800033a:      	movne	r6, #0
 800033c:      	cmp	r5, #0
 800033e:      	it	eq
 8000340:      	bleq	#4136
 8000344:      	cmp	r6, #0
 8000346:      	beq.w	#382 <clocks_and_timers::__cortex_m_rt_main::h7d0fc28cd713a80d+0x1b0>
 800034a:      	bl	#4130
 800034e:      	and	r5, r0, #1
 8000352:      	bl	#4114
 8000356:      	ldrb	r0, [r4, #1]
 8000358:      	cmp	r0, #0
 800035a:      	itte	eq
 800035c:      	moveq	r6, #1
 800035e:      	strbeq	r6, [r4, #1]
 8000360:      	movne	r6, #0
 8000362:      	cmp	r5, #0
 8000364:      	it	eq
 8000366:      	bleq	#4098
 800036a:      	cmp	r6, #0
 800036c:      	beq.w	#358 <clocks_and_timers::__cortex_m_rt_main::h7d0fc28cd713a80d+0x1be>
 8000370:      	movw	r0, #4136
 8000374:      	movw	r4, #4096
 8000378:      	movt	r0, #16386
 800037c:      	movt	r4, #18432
 8000380:      	ldr	r1, [r0, #-20]
 8000384:      	mov.w	r5, #32768
 8000388:      	mov.w	r6, #1073741824
 800038c:      	mov.w	r8, #256
 8000390:      	orr	r1, r1, #2097152
 8000394:      	str	r1, [r0, #-20]
 8000398:      	ldr	r1, [r0]
 800039a:      	mov.w	r9, #2147483648
 800039e:      	mov.w	r10, #512
 80003a2:      	mov.w	r11, #16777216
 80003a6:      	orr	r1, r1, #2097152
 80003aa:      	str	r1, [r0]
 80003ac:      	ldr	r1, [r0]
 80003ae:      	bic	r1, r1, #2097152
 80003b2:      	str	r1, [r0]
 80003b4:      	ldr	r1, [r4]
 80003b6:      	movs	r0, #1
 80003b8:      	bfi	r1, r0, #18, #2
 80003bc:      	str	r1, [r4]
 80003be:      	ldr	r1, [r4, #4]
 80003c0:      	bic	r1, r1, #512
 80003c4:      	str	r1, [r4, #4]
 80003c6:      	ldr	r1, [r4]
 80003c8:      	bfi	r1, r0, #20, #2
 80003cc:      	str	r1, [r4]
 80003ce:      	ldr	r1, [r4, #4]
 80003d0:      	bic	r1, r1, #1024
 80003d4:      	str	r1, [r4, #4]
 80003d6:      	ldr	r1, [r4]
 80003d8:      	bfi	r1, r0, #22, #2
 80003dc:      	str	r1, [r4]
 80003de:      	ldr	r1, [r4, #4]
 80003e0:      	bic	r1, r1, #2048
 80003e4:      	str	r1, [r4, #4]
 80003e6:      	ldr	r1, [r4]
 80003e8:      	bfi	r1, r0, #24, #2
 80003ec:      	str	r1, [r4]
 80003ee:      	ldr	r1, [r4, #4]
 80003f0:      	bic	r1, r1, #4096
 80003f4:      	str	r1, [r4, #4]
 80003f6:      	ldr	r1, [r4]
 80003f8:      	bfi	r1, r0, #26, #2
 80003fc:      	str	r1, [r4]
 80003fe:      	ldr	r1, [r4, #4]
 8000400:      	bic	r1, r1, #8192
 8000404:      	str	r1, [r4, #4]
 8000406:      	ldr	r1, [r4]
 8000408:      	bfi	r1, r0, #28, #2
 800040c:      	str	r1, [r4]
 800040e:      	ldr	r1, [r4, #4]
 8000410:      	bic	r1, r1, #16384
 8000414:      	str	r1, [r4, #4]
 8000416:      	ldr	r1, [r4]
 8000418:      	bfi	r1, r0, #30, #2
 800041c:      	str	r1, [r4]
 800041e:      	ldr	r1, [r4, #4]
 8000420:      	bic	r1, r1, #32768
 8000424:      	str	r1, [r4, #4]
 8000426:      	ldr	r1, [r4]
 8000428:      	bfi	r1, r0, #16, #2
 800042c:      	str	r1, [r4]
 800042e:      	ldr	r0, [r4, #4]
 8000430:      	bic	r0, r0, #256
 8000434:      	str	r0, [r4, #4]
 8000436:      	mov.w	r0, #1024
 800043a:      	str	r0, [r4, #24]
 800043c:      	bl	#-526
 8000440:      	mov.w	r0, #33554432
 8000444:      	str	r0, [r4, #24]
 8000446:      	bl	#-536
 800044a:      	mov.w	r0, #2048
 800044e:      	str	r0, [r4, #24]
 8000450:      	bl	#-546
 8000454:      	mov.w	r0, #67108864
 8000458:      	str	r0, [r4, #24]
 800045a:      	bl	#-556
 800045e:      	mov.w	r0, #4096
 8000462:      	str	r0, [r4, #24]
 8000464:      	bl	#-566
 8000468:      	mov.w	r0, #134217728
 800046c:      	str	r0, [r4, #24]
 800046e:      	bl	#-576
 8000472:      	mov.w	r0, #8192
 8000476:      	str	r0, [r4, #24]
 8000478:      	bl	#-586
 800047c:      	mov.w	r0, #268435456
 8000480:      	str	r0, [r4, #24]
 8000482:      	bl	#-596
 8000486:      	mov.w	r0, #16384
 800048a:      	str	r0, [r4, #24]
 800048c:      	bl	#-606
 8000490:      	mov.w	r0, #536870912
 8000494:      	str	r0, [r4, #24]
 8000496:      	bl	#-616
 800049a:      	str	r5, [r4, #24]
 800049c:      	bl	#-622
 80004a0:      	str	r6, [r4, #24]
 80004a2:      	bl	#-628
 80004a6:      	str.w	r8, [r4, #24]
 80004aa:      	bl	#-636
 80004ae:      	str.w	r9, [r4, #24]
 80004b2:      	bl	#-644
 80004b6:      	str.w	r10, [r4, #24]
 80004ba:      	bl	#-652
 80004be:      	str.w	r11, [r4, #24]
 80004c2:      	bl	#-660
 80004c6:      	b	#-148 <clocks_and_timers::__cortex_m_rt_main::h7d0fc28cd713a80d+0x11e>
 80004c8:      	movw	r0, #5048
 80004cc:      	movt	r0, #2048
 80004d0:      	bl	#20
 80004d4:      	trap
 80004d6:      	movw	r0, #5064
 80004da:      	movt	r0, #2048
 80004de:      	bl	#6
 80004e2:      	trap

080004e4 <core::ops::function::FnOnce::call_once::h5db7766b92da0352>:
 80004e4:      	ldr	r0, [r0]
 80004e6:      	b	#-4 <core::ops::function::FnOnce::call_once::h5db7766b92da0352+0x2>

080004e8 <core::panicking::panic::he8552e8d3d2cbe3a>:
 80004e8:      	push	{r7, lr}
 80004ea:      	mov	r7, sp
 80004ec:      	sub	sp, #32
 80004ee:      	movw	r2, #5404
 80004f2:      	mov	r1, r0
 80004f4:      	movs	r0, #0
 80004f6:      	movt	r2, #2048
 80004fa:      	str	r0, [sp, #20]
 80004fc:      	str	r2, [sp, #16]
 80004fe:      	strd	r0, r0, [sp, #8]
 8000502:      	movs	r0, #1
 8000504:      	str	r0, [sp, #4]
 8000506:      	add	r0, sp, #24
 8000508:      	str	r0, [sp]
 800050a:      	movs	r0, #43
 800050c:      	str	r0, [sp, #28]
 800050e:      	movw	r0, #5004
 8000512:      	movt	r0, #2048
 8000516:      	str	r0, [sp, #24]
 8000518:      	mov	r0, sp
 800051a:      	bl	#662
 800051e:      	trap

08000520 <core::fmt::num::imp::<impl core::fmt::Display for u32>::fmt::h720dbf9c56765265>:
 8000520:      	push	{r4, r5, r6, r7, lr}
 8000522:      	add	r7, sp, #12
 8000524:      	push.w	{r8, r9, r10, r11}
 8000528:      	sub	sp, #52
 800052a:      	ldr	r5, [r0]
 800052c:      	movw	r0, #10000
 8000530:      	movw	lr, #34079
 8000534:      	mov	r4, r1
 8000536:      	cmp	r5, r0
 8000538:      	movw	r0, #5144
 800053c:      	movw	r3, #65436
 8000540:      	movt	lr, #20971
 8000544:      	movt	r0, #2048
 8000548:      	blo	#120 <core::fmt::num::imp::<impl core::fmt::Display for u32>::fmt::h720dbf9c56765265+0xa4>
 800054a:      	movw	r8, #5977
 800054e:      	movw	r10, #55536
 8000552:      	movw	r12, #57599
 8000556:      	add.w	r11, sp, #12
 800055a:      	movs	r6, #0
 800055c:      	movt	r8, #53687
 8000560:      	movt	r10, #65535
 8000564:      	movt	r12, #1525
 8000568:      	str	r4, [sp, #8]
 800056a:      	umull	r2, r4, r5, r8
 800056e:      	cmp	r5, r12
 8000570:      	lsr.w	r2, r4, #13
 8000574:      	mla	r4, r2, r10, r5
 8000578:      	mov	r5, r2
 800057a:      	uxth	r1, r4
 800057c:      	umull	r1, r9, r1, lr
 8000580:      	lsr.w	r1, r9, #5
 8000584:      	mla	r4, r1, r3, r4
 8000588:      	add.w	r3, r11, r6
 800058c:      	ldrh.w	r1, [r0, r1, lsl #1]
 8000590:      	sub.w	r6, r6, #4
 8000594:      	strh.w	r1, [r3, #35]
 8000598:      	uxth	r4, r4
 800059a:      	ldrh.w	r4, [r0, r4, lsl #1]
 800059e:      	strh.w	r4, [r3, #37]
 80005a2:      	movw	r3, #65436
 80005a6:      	bhi	#-64 <core::fmt::num::imp::<impl core::fmt::Display for u32>::fmt::h720dbf9c56765265+0x4a>
 80005a8:      	ldr	r4, [sp, #8]
 80005aa:      	adds	r6, #39
 80005ac:      	mov	r5, r2
 80005ae:      	cmp	r5, #99
 80005b0:      	bgt	#22 <core::fmt::num::imp::<impl core::fmt::Display for u32>::fmt::h720dbf9c56765265+0xaa>
 80005b2:      	mov	r1, r5
 80005b4:      	cmp	r1, #10
 80005b6:      	blt	#44 <core::fmt::num::imp::<impl core::fmt::Display for u32>::fmt::h720dbf9c56765265+0xc6>
 80005b8:      	ldrh.w	r0, [r0, r1, lsl #1]
 80005bc:      	subs	r2, r6, #2
 80005be:      	add	r1, sp, #12
 80005c0:      	strh	r0, [r1, r2]
 80005c2:      	b	#42 <core::fmt::num::imp::<impl core::fmt::Display for u32>::fmt::h720dbf9c56765265+0xd0>
 80005c4:      	movs	r6, #39
 80005c6:      	cmp	r5, #99
 80005c8:      	ble	#-26 <core::fmt::num::imp::<impl core::fmt::Display for u32>::fmt::h720dbf9c56765265+0x92>
 80005ca:      	uxth	r1, r5
 80005cc:      	subs	r6, #2
 80005ce:      	umull	r1, r2, r1, lr
 80005d2:      	lsrs	r1, r2, #5
 80005d4:      	mla	r2, r1, r3, r5
 80005d8:      	add	r3, sp, #12
 80005da:      	uxth	r2, r2
 80005dc:      	ldrh.w	r2, [r0, r2, lsl #1]
 80005e0:      	strh	r2, [r3, r6]
 80005e2:      	cmp	r1, #10
 80005e4:      	bge	#-48 <core::fmt::num::imp::<impl core::fmt::Display for u32>::fmt::h720dbf9c56765265+0x98>
 80005e6:      	subs	r2, r6, #1
 80005e8:      	add.w	r0, r1, #48
 80005ec:      	add	r1, sp, #12
 80005ee:      	strb	r0, [r1, r2]
 80005f0:      	ldr	r0, [r4]
 80005f2:      	add	r1, sp, #12
 80005f4:      	movw	r6, #5404
 80005f8:      	add.w	r8, r1, r2
 80005fc:      	rsb.w	r9, r2, #39
 8000600:      	ldr	r3, [r4, #8]
 8000602:      	lsls	r2, r0, #29
 8000604:      	movt	r6, #2048
 8000608:      	ands	r1, r0, #1
 800060c:      	mov.w	r5, #43
 8000610:      	and.w	r10, r6, r2, asr #31
 8000614:      	it	eq
 8000616:      	moveq.w	r5, #1114112
 800061a:      	cmp	r3, #1
 800061c:      	bne	#52 <$t.7+0x8>
 800061e:      	str.w	r8, [sp, #8]
 8000622:      	add.w	r11, r9, r1
 8000626:      	ldr.w	r8, [r4, #12]
 800062a:      	cmp	r8, r11
 800062c:      	bls	#52 <$t.7+0x18>
 800062e:      	lsls	r0, r0, #28
 8000630:      	bmi	#98 <$t.7+0x4a>
 8000632:      	ldrb.w	r2, [r4, #32]
 8000636:      	sub.w	r1, r8, r11
 800063a:      	movs	r0, #0
 800063c:      	cmp	r2, #3
 800063e:      	it	eq
 8000640:      	moveq	r2, #1
 8000642:      	mov	r8, r1
 8000644:      	tbb	[pc, r2]

08000648 <$d.6>:
 8000648:	52 02 4e 02	.word	0x024e0252

0800064c <$t.7>:
 800064c:      	mov.w	r8, #0
 8000650:      	mov	r0, r1
 8000652:      	b	#150 <$t.9+0xe>
 8000654:      	mov	r0, r4
 8000656:      	mov	r1, r5
 8000658:      	mov	r2, r10
 800065a:      	bl	#400
 800065e:      	cbz	r0, #28
 8000660:      	movs	r6, #1
 8000662:      	b	#80 <$t.7+0x6a>
 8000664:      	mov	r0, r4
 8000666:      	mov	r1, r5
 8000668:      	mov	r2, r10
 800066a:      	bl	#384
 800066e:      	cmp	r0, #0
 8000670:      	bne.w	#246 <$t.9+0x8c>
 8000674:      	ldrd	r0, r1, [r4, #24]
 8000678:      	ldr	r3, [r1, #12]
 800067a:      	ldr	r1, [sp, #8]
 800067c:      	b	#6 <$t.7+0x3a>
 800067e:      	ldrd	r0, r1, [r4, #24]
 8000682:      	ldr	r3, [r1, #12]
 8000684:      	mov	r1, r8
 8000686:      	mov	r2, r9
 8000688:      	blx	r3
 800068a:      	mov	r6, r0
 800068c:      	mov	r0, r6
 800068e:      	add	sp, #52
 8000690:      	pop.w	{r8, r9, r10, r11}
 8000694:      	pop	{r4, r5, r6, r7, pc}
 8000696:      	ldr	r0, [r4, #4]
 8000698:      	movs	r6, #1
 800069a:      	ldrb.w	r1, [r4, #32]
 800069e:      	mov	r2, r10
 80006a0:      	str	r0, [sp, #4]
 80006a2:      	movs	r0, #48
 80006a4:      	str	r1, [sp]
 80006a6:      	mov	r1, r5
 80006a8:      	str	r0, [r4, #4]
 80006aa:      	mov	r0, r4
 80006ac:      	strb.w	r6, [r4, #32]
 80006b0:      	bl	#314
 80006b4:      	cbz	r0, #8
 80006b6:      	mov	r0, r6
 80006b8:      	add	sp, #52
 80006ba:      	pop.w	{r8, r9, r10, r11}
 80006be:      	pop	{r4, r5, r6, r7, pc}
 80006c0:      	ldrb.w	r2, [r4, #32]
 80006c4:      	sub.w	r1, r8, r11
 80006c8:      	movs	r0, #0
 80006ca:      	cmp	r2, #3
 80006cc:      	it	eq
 80006ce:      	moveq	r2, #1
 80006d0:      	mov	r6, r1
 80006d2:      	ldr.w	r8, [sp, #8]
 80006d6:      	tbb	[pc, r2]

080006da <$d.8>:
 80006da:	34 02 31 02	.word	0x02310234

080006de <$t.9>:
 80006de:      	movs	r6, #0
 80006e0:      	mov	r0, r1
 80006e2:      	b	#92 <$t.9+0x64>
 80006e4:      	lsrs	r0, r1, #1
 80006e6:      	adds	r1, #1
 80006e8:      	lsr.w	r8, r1, #1
 80006ec:      	adds	r6, r0, #1
 80006ee:      	subs	r6, #1
 80006f0:      	beq	#14 <$t.9+0x24>
 80006f2:      	ldrd	r0, r2, [r4, #24]
 80006f6:      	ldr	r1, [r4, #4]
 80006f8:      	ldr	r2, [r2, #16]
 80006fa:      	blx	r2
 80006fc:      	cmp	r0, #0
 80006fe:      	beq	#-20 <$t.9+0x10>
 8000700:      	b	#102 <$t.9+0x8c>
 8000702:      	mov	r0, r4
 8000704:      	mov	r1, r5
 8000706:      	mov	r2, r10
 8000708:      	ldr.w	r11, [r4, #4]
 800070c:      	bl	#222
 8000710:      	cbnz	r0, #86
 8000712:      	ldrd	r0, r1, [r4, #24]
 8000716:      	mov	r2, r9
 8000718:      	ldr	r3, [r1, #12]
 800071a:      	ldr	r1, [sp, #8]
 800071c:      	blx	r3
 800071e:      	cbnz	r0, #72
 8000720:      	ldrd	r10, r4, [r4, #24]
 8000724:      	add.w	r5, r8, #1
 8000728:      	movs	r6, #1
 800072a:      	subs	r5, #1
 800072c:      	beq	#98 <$t.9+0xb4>
 800072e:      	ldr	r2, [r4, #16]
 8000730:      	mov	r0, r10
 8000732:      	mov	r1, r11
 8000734:      	blx	r2
 8000736:      	cmp	r0, #0
 8000738:      	beq	#-18 <$t.9+0x4c>
 800073a:      	b	#-136 <$t.7+0x6a>
 800073c:      	lsrs	r0, r1, #1
 800073e:      	adds	r1, #1
 8000740:      	lsrs	r6, r1, #1
 8000742:      	adds	r5, r0, #1
 8000744:      	subs	r5, #1
 8000746:      	beq	#14 <$t.9+0x7a>
 8000748:      	ldrd	r0, r2, [r4, #24]
 800074c:      	ldr	r1, [r4, #4]
 800074e:      	ldr	r2, [r2, #16]
 8000750:      	blx	r2
 8000752:      	cmp	r0, #0
 8000754:      	beq	#-20 <$t.9+0x66>
 8000756:      	b	#16 <$t.9+0x8c>
 8000758:      	ldrd	r0, r1, [r4, #24]
 800075c:      	mov	r2, r9
 800075e:      	ldr	r3, [r1, #12]
 8000760:      	mov	r1, r8
 8000762:      	ldr.w	r10, [r4, #4]
 8000766:      	blx	r3
 8000768:      	cbz	r0, #10
 800076a:      	movs	r6, #1
 800076c:      	mov	r0, r6
 800076e:      	add	sp, #52
 8000770:      	pop.w	{r8, r9, r10, r11}
 8000774:      	pop	{r4, r5, r6, r7, pc}
 8000776:      	ldrd	r8, r9, [r4, #24]
 800077a:      	adds	r5, r6, #1
 800077c:      	movs	r6, #1
 800077e:      	subs	r5, #1
 8000780:      	beq	#26 <$t.9+0xc0>
 8000782:      	ldr.w	r2, [r9, #16]
 8000786:      	mov	r0, r8
 8000788:      	mov	r1, r10
 800078a:      	blx	r2
 800078c:      	cmp	r0, #0
 800078e:      	beq	#-20 <$t.9+0xa0>
 8000790:      	b	#-222 <$t.7+0x6a>
 8000792:      	movs	r6, #0
 8000794:      	mov	r0, r6
 8000796:      	add	sp, #52
 8000798:      	pop.w	{r8, r9, r10, r11}
 800079c:      	pop	{r4, r5, r6, r7, pc}
 800079e:      	ldr	r0, [sp]
 80007a0:      	movs	r6, #0
 80007a2:      	strb.w	r0, [r4, #32]
 80007a6:      	ldr	r0, [sp, #4]
 80007a8:      	str	r0, [r4, #4]
 80007aa:      	mov	r0, r6
 80007ac:      	add	sp, #52
 80007ae:      	pop.w	{r8, r9, r10, r11}
 80007b2:      	pop	{r4, r5, r6, r7, pc}

080007b4 <core::panicking::panic_fmt::h3d4fe709119df940>:
 80007b4:      	push	{r7, lr}
 80007b6:      	mov	r7, sp
 80007b8:      	sub	sp, #16
 80007ba:      	strd	r0, r1, [sp, #8]
 80007be:      	movw	r0, #5128
 80007c2:      	movt	r0, #2048
 80007c6:      	str	r0, [sp, #4]
 80007c8:      	movw	r0, #5404
 80007cc:      	movt	r0, #2048
 80007d0:      	str	r0, [sp]
 80007d2:      	mov	r0, sp
 80007d4:      	bl	#2432
 80007d8:      	trap

080007da <core::ptr::drop_in_place::h04a129b24451d075>:
 80007da:      	bx	lr

080007dc <<T as core::any::Any>::type_id::hffc3b5436e52a86a>:
 80007dc:      	movw	r0, #50601
 80007e0:      	movw	r1, #27484
 80007e4:      	movt	r0, #24677
 80007e8:      	movt	r1, #15316
 80007ec:      	bx	lr

080007ee <core::fmt::Formatter::pad_integral::write_prefix::h43274d4e4dd7a787>:
 80007ee:      	push	{r4, r5, r7, lr}
 80007f0:      	add	r7, sp, #8
 80007f2:      	mov	r4, r2
 80007f4:      	mov	r5, r0
 80007f6:      	cmp.w	r1, #1114112
 80007fa:      	beq	#12 <core::fmt::Formatter::pad_integral::write_prefix::h43274d4e4dd7a787+0x1c>
 80007fc:      	ldrd	r0, r2, [r5, #24]
 8000800:      	ldr	r2, [r2, #16]
 8000802:      	blx	r2
 8000804:      	cbz	r0, #2
 8000806:      	movs	r0, #1
 8000808:      	pop	{r4, r5, r7, pc}
 800080a:      	cbz	r4, #14
 800080c:      	ldrd	r0, r1, [r5, #24]
 8000810:      	movs	r2, #0
 8000812:      	ldr	r3, [r1, #12]
 8000814:      	mov	r1, r4
 8000816:      	pop.w	{r4, r5, r7, lr}
 800081a:      	bx	r3
 800081c:      	movs	r0, #0
 800081e:      	pop	{r4, r5, r7, pc}

08000820 <core::fmt::Formatter::pad::hdd2f8bc43cf2bd72>:
 8000820:      	push	{r4, r5, r6, r7, lr}
 8000822:      	add	r7, sp, #12
 8000824:      	push.w	{r8, r9, r10, r11}
 8000828:      	sub	sp, #12
 800082a:      	ldr.w	lr, [r0, #8]
 800082e:      	mov	r10, r0
 8000830:      	ldr	r0, [r0, #16]
 8000832:      	mov	r9, r2
 8000834:      	mov	r6, r1
 8000836:      	cmp.w	lr, #1
 800083a:      	bne	#30 <core::fmt::Formatter::pad::hdd2f8bc43cf2bd72+0x3c>
 800083c:      	cmp	r0, #1
 800083e:      	beq	#32 <core::fmt::Formatter::pad::hdd2f8bc43cf2bd72+0x42>
 8000840:      	cmp.w	r9, #0
 8000844:      	beq.w	#1256 <core::fmt::Formatter::pad::hdd2f8bc43cf2bd72+0x510>
 8000848:      	sub.w	r8, r9, #1
 800084c:      	and	r4, r9, #3
 8000850:      	cmp.w	r8, #3
 8000854:      	bhs	#192 <core::fmt::Formatter::pad::hdd2f8bc43cf2bd72+0xf8>
 8000856:      	movs	r3, #0
 8000858:      	mov	r1, r6
 800085a:      	b	#718 <core::fmt::Formatter::pad::hdd2f8bc43cf2bd72+0x30c>
 800085c:      	cmp	r0, #1
 800085e:      	bne.w	#1244 <core::fmt::Formatter::pad::hdd2f8bc43cf2bd72+0x51e>
 8000862:      	ldr.w	r3, [r10, #20]
 8000866:      	add.w	r5, r6, r9
 800086a:      	movs	r2, #0
 800086c:      	str	r6, [sp, #8]
 800086e:      	cbnz	r3, #76
 8000870:      	cmp	r5, r6
 8000872:      	beq.w	#1188 <core::fmt::Formatter::pad::hdd2f8bc43cf2bd72+0x4fa>
 8000876:      	mov	r1, r6
 8000878:      	ldrsb	r0, [r1], #1
 800087c:      	cmp.w	r0, #4294967295
 8000880:      	ble	#184 <core::fmt::Formatter::pad::hdd2f8bc43cf2bd72+0x11c>
 8000882:      	ldr	r6, [sp, #8]
 8000884:      	cmp	r2, #0
 8000886:      	it	ne
 8000888:      	cmpne	r2, r9
 800088a:      	bne.w	#488 <core::fmt::Formatter::pad::hdd2f8bc43cf2bd72+0x256>
 800088e:      	mov	r0, r6
 8000890:      	b	#500 <core::fmt::Formatter::pad::hdd2f8bc43cf2bd72+0x268>
 8000892:      	ldrb	r6, [r1], #1
 8000896:      	and	r8, r6, #63
 800089a:      	mov	r6, r1
 800089c:      	mov.w	r1, #1835008
 80008a0:      	and.w	r0, r1, r0, lsl #18
 80008a4:      	orr.w	r0, r0, r11, lsl #12
 80008a8:      	orr.w	r0, r0, r12, lsl #6
 80008ac:      	add	r0, r8
 80008ae:      	cmp.w	r0, #1114112
 80008b2:      	beq.w	#1124 <core::fmt::Formatter::pad::hdd2f8bc43cf2bd72+0x4fa>
 80008b6:      	subs	r0, r6, r4
 80008b8:      	subs	r3, #1
 80008ba:      	add	r2, r0
 80008bc:      	beq	#-80 <core::fmt::Formatter::pad::hdd2f8bc43cf2bd72+0x50>
 80008be:      	cmp	r5, r6
 80008c0:      	beq.w	#1110 <core::fmt::Formatter::pad::hdd2f8bc43cf2bd72+0x4fa>
 80008c4:      	mov	r4, r6
 80008c6:      	ldrsb	r0, [r6], #1
 80008ca:      	cmp.w	r0, #4294967295
 80008ce:      	bgt	#-28 <core::fmt::Formatter::pad::hdd2f8bc43cf2bd72+0x96>
 80008d0:      	uxtb	r0, r0
 80008d2:      	cmp	r6, r5
 80008d4:      	beq	#14 <core::fmt::Formatter::pad::hdd2f8bc43cf2bd72+0xc6>
 80008d6:      	ldrb	r1, [r4, #1]
 80008d8:      	adds	r6, r4, #2
 80008da:      	and	r11, r1, #63
 80008de:      	mov	r1, r6
 80008e0:      	cmp	r0, #224
 80008e2:      	blo	#-48 <core::fmt::Formatter::pad::hdd2f8bc43cf2bd72+0x96>
 80008e4:      	b	#8 <core::fmt::Formatter::pad::hdd2f8bc43cf2bd72+0xd0>
 80008e6:      	mov.w	r11, #0
 80008ea:      	mov	r1, r5
 80008ec:      	cmp	r0, #224
 80008ee:      	blo	#-60 <core::fmt::Formatter::pad::hdd2f8bc43cf2bd72+0x96>
 80008f0:      	cmp	r1, r5
 80008f2:      	beq	#14 <core::fmt::Formatter::pad::hdd2f8bc43cf2bd72+0xe4>
 80008f4:      	ldrb	r6, [r1], #1
 80008f8:      	and	r12, r6, #63
 80008fc:      	mov	r6, r1
 80008fe:      	cmp	r0, #240
 8000900:      	blo	#-78 <core::fmt::Formatter::pad::hdd2f8bc43cf2bd72+0x96>
 8000902:      	b	#8 <core::fmt::Formatter::pad::hdd2f8bc43cf2bd72+0xee>
 8000904:      	mov.w	r12, #0
 8000908:      	mov	r1, r5
 800090a:      	cmp	r0, #240
 800090c:      	blo	#-90 <core::fmt::Formatter::pad::hdd2f8bc43cf2bd72+0x96>
 800090e:      	cmp	r1, r5
 8000910:      	bne	#-130 <core::fmt::Formatter::pad::hdd2f8bc43cf2bd72+0x72>
 8000912:      	mov.w	r8, #0
 8000916:      	b	#-126 <core::fmt::Formatter::pad::hdd2f8bc43cf2bd72+0x7c>
 8000918:      	sub.w	r0, r9, #4
 800091c:      	bic	r1, r0, #3
 8000920:      	movs	r0, #1
 8000922:      	cmp	r1, #12
 8000924:      	add.w	r0, r0, r1, lsr #2
 8000928:      	and	r12, r0, #3
 800092c:      	bhs	#38 <core::fmt::Formatter::pad::hdd2f8bc43cf2bd72+0x136>
 800092e:      	movs	r3, #0
 8000930:      	mov	r1, r6
 8000932:      	cmp.w	r12, #0
 8000936:      	bne.w	#256 <core::fmt::Formatter::pad::hdd2f8bc43cf2bd72+0x21a>
 800093a:      	b	#494 <core::fmt::Formatter::pad::hdd2f8bc43cf2bd72+0x30c>
 800093c:      	uxtb	r0, r0
 800093e:      	cmp	r1, r5
 8000940:      	beq.w	#404 <core::fmt::Formatter::pad::hdd2f8bc43cf2bd72+0x2b8>
 8000944:      	ldrb	r3, [r6, #1]
 8000946:      	adds	r1, r6, #2
 8000948:      	and	r3, r3, #63
 800094c:      	lsls	r3, r3, #6
 800094e:      	cmp	r0, #224
 8000950:      	bhs.w	#398 <core::fmt::Formatter::pad::hdd2f8bc43cf2bd72+0x2c2>
 8000954:      	b	#-214 <core::fmt::Formatter::pad::hdd2f8bc43cf2bd72+0x62>
 8000956:      	bic	r0, r0, #3
 800095a:      	movs	r3, #0
 800095c:      	rsbs	r0, r0, #0
 800095e:      	mov	r1, r6
 8000960:      	str	r4, [sp, #4]
 8000962:      	str	r6, [sp, #8]
 8000964:      	ldrb	r4, [r1]
 8000966:      	ldrb	r5, [r1, #1]
 8000968:      	ldrb	r2, [r1, #2]
 800096a:      	and	lr, r4, #192
 800096e:      	ldrb	r6, [r1, #3]
 8000970:      	cmp.w	lr, #128
 8000974:      	ldrb.w	r11, [r1, #15]
 8000978:      	and	r5, r5, #192
 800097c:      	ldrb	r4, [r1, #14]
 800097e:      	it	eq
 8000980:      	addeq	r3, #1
 8000982:      	ldrb.w	lr, [r1, #13]
 8000986:      	cmp	r5, #128
 8000988:      	it	eq
 800098a:      	addeq	r3, #1
 800098c:      	and	r2, r2, #192
 8000990:      	ldrb	r5, [r1, #4]
 8000992:      	cmp	r2, #128
 8000994:      	it	eq
 8000996:      	addeq	r3, #1
 8000998:      	and	r2, r6, #192
 800099c:      	ldrb	r6, [r1, #5]
 800099e:      	cmp	r2, #128
 80009a0:      	it	eq
 80009a2:      	addeq	r3, #1
 80009a4:      	and	r2, r5, #192
 80009a8:      	ldrb	r5, [r1, #6]
 80009aa:      	cmp	r2, #128
 80009ac:      	it	eq
 80009ae:      	addeq	r3, #1
 80009b0:      	and	r2, r6, #192
 80009b4:      	ldrb	r6, [r1, #7]
 80009b6:      	cmp	r2, #128
 80009b8:      	it	eq
 80009ba:      	addeq	r3, #1
 80009bc:      	and	r2, r5, #192
 80009c0:      	ldrb	r5, [r1, #8]
 80009c2:      	cmp	r2, #128
 80009c4:      	it	eq
 80009c6:      	addeq	r3, #1
 80009c8:      	and	r2, r6, #192
 80009cc:      	ldrb	r6, [r1, #9]
 80009ce:      	cmp	r2, #128
 80009d0:      	it	eq
 80009d2:      	addeq	r3, #1
 80009d4:      	and	r2, r5, #192
 80009d8:      	ldrb	r5, [r1, #10]
 80009da:      	cmp	r2, #128
 80009dc:      	it	eq
 80009de:      	addeq	r3, #1
 80009e0:      	and	r2, r6, #192
 80009e4:      	cmp	r2, #128
 80009e6:      	ldrb	r6, [r1, #12]
 80009e8:      	it	eq
 80009ea:      	addeq	r3, #1
 80009ec:      	and	r2, r5, #192
 80009f0:      	ldrb	r5, [r1, #11]
 80009f2:      	cmp	r2, #128
 80009f4:      	it	eq
 80009f6:      	addeq	r3, #1
 80009f8:      	adds	r1, #16
 80009fa:      	and	r2, r5, #192
 80009fe:      	cmp	r2, #128
 8000a00:      	and	r2, r6, #192
 8000a04:      	it	eq
 8000a06:      	addeq	r3, #1
 8000a08:      	cmp	r2, #128
 8000a0a:      	and	r2, lr, #192
 8000a0e:      	it	eq
 8000a10:      	addeq	r3, #1
 8000a12:      	cmp	r2, #128
 8000a14:      	and	r2, r4, #192
 8000a18:      	it	eq
 8000a1a:      	addeq	r3, #1
 8000a1c:      	cmp	r2, #128
 8000a1e:      	and	r2, r11, #192
 8000a22:      	it	eq
 8000a24:      	addeq	r3, #1
 8000a26:      	cmp	r2, #128
 8000a28:      	it	eq
 8000a2a:      	addeq	r3, #1
 8000a2c:      	adds	r0, #4
 8000a2e:      	bne	#-206 <core::fmt::Formatter::pad::hdd2f8bc43cf2bd72+0x144>
 8000a30:      	ldrd	r4, r6, [sp, #4]
 8000a34:      	cmp.w	r12, #0
 8000a38:      	beq	#240 <core::fmt::Formatter::pad::hdd2f8bc43cf2bd72+0x30c>
 8000a3a:      	ldrb	r0, [r1]
 8000a3c:      	mov	lr, r6
 8000a3e:      	ldrb	r2, [r1, #1]
 8000a40:      	and	r0, r0, #192
 8000a44:      	ldrb	r6, [r1, #2]
 8000a46:      	cmp	r0, #128
 8000a48:      	ldrb	r5, [r1, #3]
 8000a4a:      	and	r0, r2, #192
 8000a4e:      	it	eq
 8000a50:      	addeq	r3, #1
 8000a52:      	cmp	r0, #128
 8000a54:      	and	r0, r6, #192
 8000a58:      	it	eq
 8000a5a:      	addeq	r3, #1
 8000a5c:      	cmp	r0, #128
 8000a5e:      	and	r0, r5, #192
 8000a62:      	it	eq
 8000a64:      	addeq	r3, #1
 8000a66:      	cmp	r0, #128
 8000a68:      	it	eq
 8000a6a:      	addeq	r3, #1
 8000a6c:      	cmp.w	r12, #1
 8000a70:      	bne	#42 <core::fmt::Formatter::pad::hdd2f8bc43cf2bd72+0x27e>
 8000a72:      	adds	r1, #4
 8000a74:      	b	#178 <core::fmt::Formatter::pad::hdd2f8bc43cf2bd72+0x30a>
 8000a76:      	cmp	r2, r9
 8000a78:      	bhs	#8 <core::fmt::Formatter::pad::hdd2f8bc43cf2bd72+0x264>
 8000a7a:      	ldrsb	r0, [r6, r2]
 8000a7c:      	cmn.w	r0, #64
 8000a80:      	bge.w	#-502 <core::fmt::Formatter::pad::hdd2f8bc43cf2bd72+0x6e>
 8000a84:      	movs	r0, #0
 8000a86:      	movs	r2, #0
 8000a88:      	cmp	r0, #0
 8000a8a:      	ite	eq
 8000a8c:      	moveq	r2, r9
 8000a8e:      	movne	r6, r0
 8000a90:      	cmp.w	lr, #1
 8000a94:      	beq.w	#654 <core::fmt::Formatter::pad::hdd2f8bc43cf2bd72+0x506>
 8000a98:      	ldrd	r0, r1, [r10, #24]
 8000a9c:      	b	#680 <core::fmt::Formatter::pad::hdd2f8bc43cf2bd72+0x528>
 8000a9e:      	ldrb	r0, [r1, #4]
 8000aa0:      	ldrb	r2, [r1, #5]
 8000aa2:      	and	r0, r0, #192
 8000aa6:      	ldrb	r6, [r1, #6]
 8000aa8:      	cmp	r0, #128
 8000aaa:      	ldrb	r5, [r1, #7]
 8000aac:      	and	r0, r2, #192
 8000ab0:      	it	eq
 8000ab2:      	addeq	r3, #1
 8000ab4:      	cmp	r0, #128
 8000ab6:      	and	r0, r6, #192
 8000aba:      	it	eq
 8000abc:      	addeq	r3, #1
 8000abe:      	cmp	r0, #128
 8000ac0:      	and	r0, r5, #192
 8000ac4:      	it	eq
 8000ac6:      	addeq	r3, #1
 8000ac8:      	cmp	r0, #128
 8000aca:      	it	eq
 8000acc:      	addeq	r3, #1
 8000ace:      	cmp.w	r12, #2
 8000ad2:      	bne	#34 <core::fmt::Formatter::pad::hdd2f8bc43cf2bd72+0x2d8>
 8000ad4:      	adds	r1, #8
 8000ad6:      	b	#80 <core::fmt::Formatter::pad::hdd2f8bc43cf2bd72+0x30a>
 8000ad8:      	movs	r3, #0
 8000ada:      	mov	r1, r5
 8000adc:      	cmp	r0, #224
 8000ade:      	blo.w	#-608 <core::fmt::Formatter::pad::hdd2f8bc43cf2bd72+0x62>
 8000ae2:      	cmp	r1, r5
 8000ae4:      	beq.w	#516 <core::fmt::Formatter::pad::hdd2f8bc43cf2bd72+0x4cc>
 8000ae8:      	ldrb	r6, [r1], #1
 8000aec:      	and	r6, r6, #63
 8000af0:      	cmp	r0, #240
 8000af2:      	blo.w	#-628 <core::fmt::Formatter::pad::hdd2f8bc43cf2bd72+0x62>
 8000af6:      	b	#508 <core::fmt::Formatter::pad::hdd2f8bc43cf2bd72+0x4d6>
 8000af8:      	ldrb	r0, [r1, #8]
 8000afa:      	ldrb	r2, [r1, #9]
 8000afc:      	and	r0, r0, #192
 8000b00:      	ldrb	r6, [r1, #10]
 8000b02:      	ldrb	r5, [r1, #11]
 8000b04:      	cmp	r0, #128
 8000b06:      	it	eq
 8000b08:      	addeq	r3, #1
 8000b0a:      	and	r0, r2, #192
 8000b0e:      	cmp	r0, #128
 8000b10:      	it	eq
 8000b12:      	addeq	r3, #1
 8000b14:      	and	r0, r6, #192
 8000b18:      	adds	r1, #12
 8000b1a:      	cmp	r0, #128
 8000b1c:      	it	eq
 8000b1e:      	addeq	r3, #1
 8000b20:      	and	r0, r5, #192
 8000b24:      	cmp	r0, #128
 8000b26:      	it	eq
 8000b28:      	addeq	r3, #1
 8000b2a:      	mov	r6, lr
 8000b2c:      	cbz	r4, #42
 8000b2e:      	ldrb	r0, [r1]
 8000b30:      	and	r0, r0, #192
 8000b34:      	cmp	r0, #128
 8000b36:      	it	eq
 8000b38:      	addeq	r3, #1
 8000b3a:      	cmp	r4, #1
 8000b3c:      	beq	#26 <core::fmt::Formatter::pad::hdd2f8bc43cf2bd72+0x33a>
 8000b3e:      	ldrb	r0, [r1, #1]
 8000b40:      	and	r0, r0, #192
 8000b44:      	cmp	r0, #128
 8000b46:      	it	eq
 8000b48:      	addeq	r3, #1
 8000b4a:      	cmp	r4, #2
 8000b4c:      	beq	#10 <core::fmt::Formatter::pad::hdd2f8bc43cf2bd72+0x33a>
 8000b4e:      	ldrb	r0, [r1, #2]
 8000b50:      	and	r0, r0, #192
 8000b54:      	cmp	r0, #128
 8000b56:      	it	eq
 8000b58:      	addeq	r3, #1
 8000b5a:      	ldr.w	lr, [r10, #12]
 8000b5e:      	sub.w	r0, r9, r3
 8000b62:      	cmp	r0, lr
 8000b64:      	bhs.w	#470 <core::fmt::Formatter::pad::hdd2f8bc43cf2bd72+0x51e>
 8000b68:      	cmp.w	r8, #3
 8000b6c:      	bhs	#4 <core::fmt::Formatter::pad::hdd2f8bc43cf2bd72+0x354>
 8000b6e:      	movs	r2, #0
 8000b70:      	mov	r3, r6
 8000b72:      	b	#538 <core::fmt::Formatter::pad::hdd2f8bc43cf2bd72+0x570>
 8000b74:      	sub.w	r0, r9, #4
 8000b78:      	bic	r2, r0, #3
 8000b7c:      	movs	r0, #1
 8000b7e:      	cmp	r2, #12
 8000b80:      	add.w	r0, r0, r2, lsr #2
 8000b84:      	and	r12, r0, #3
 8000b88:      	bhs	#4 <core::fmt::Formatter::pad::hdd2f8bc43cf2bd72+0x370>
 8000b8a:      	movs	r2, #0
 8000b8c:      	mov	r3, r6
 8000b8e:      	b	#218 <core::fmt::Formatter::pad::hdd2f8bc43cf2bd72+0x44c>
 8000b90:      	bic	r0, r0, #3
 8000b94:      	str	r4, [sp, #4]
 8000b96:      	rsbs	r4, r0, #0
 8000b98:      	movs	r2, #0
 8000b9a:      	mov	r3, r6
 8000b9c:      	str	r6, [sp, #8]
 8000b9e:      	ldrb	r6, [r3]
 8000ba0:      	ldrb	r5, [r3, #1]
 8000ba2:      	ldrb	r1, [r3, #2]
 8000ba4:      	and	r6, r6, #192
 8000ba8:      	ldrb	r0, [r3, #3]
 8000baa:      	cmp	r6, #128
 8000bac:      	ldrb.w	r8, [r3, #15]
 8000bb0:      	and	r6, r5, #192
 8000bb4:      	ldrb.w	r11, [r3, #14]
 8000bb8:      	it	eq
 8000bba:      	addeq	r2, #1
 8000bbc:      	ldrb	r5, [r3, #13]
 8000bbe:      	cmp	r6, #128
 8000bc0:      	it	eq
 8000bc2:      	addeq	r2, #1
 8000bc4:      	and	r1, r1, #192
 8000bc8:      	ldrb	r6, [r3, #4]
 8000bca:      	cmp	r1, #128
 8000bcc:      	it	eq
 8000bce:      	addeq	r2, #1
 8000bd0:      	and	r0, r0, #192
 8000bd4:      	ldrb	r1, [r3, #5]
 8000bd6:      	cmp	r0, #128
 8000bd8:      	it	eq
 8000bda:      	addeq	r2, #1
 8000bdc:      	and	r0, r6, #192
 8000be0:      	ldrb	r6, [r3, #6]
 8000be2:      	cmp	r0, #128
 8000be4:      	it	eq
 8000be6:      	addeq	r2, #1
 8000be8:      	and	r0, r1, #192
 8000bec:      	ldrb	r1, [r3, #7]
 8000bee:      	cmp	r0, #128
 8000bf0:      	it	eq
 8000bf2:      	addeq	r2, #1
 8000bf4:      	and	r0, r6, #192
 8000bf8:      	ldrb	r6, [r3, #8]
 8000bfa:      	cmp	r0, #128
 8000bfc:      	it	eq
 8000bfe:      	addeq	r2, #1
 8000c00:      	and	r0, r1, #192
 8000c04:      	ldrb	r1, [r3, #9]
 8000c06:      	cmp	r0, #128
 8000c08:      	it	eq
 8000c0a:      	addeq	r2, #1
 8000c0c:      	and	r0, r6, #192
 8000c10:      	ldrb	r6, [r3, #10]
 8000c12:      	cmp	r0, #128
 8000c14:      	it	eq
 8000c16:      	addeq	r2, #1
 8000c18:      	and	r0, r1, #192
 8000c1c:      	cmp	r0, #128
 8000c1e:      	ldrb	r1, [r3, #12]
 8000c20:      	it	eq
 8000c22:      	addeq	r2, #1
 8000c24:      	and	r0, r6, #192
 8000c28:      	ldrb	r6, [r3, #11]
 8000c2a:      	cmp	r0, #128
 8000c2c:      	it	eq
 8000c2e:      	addeq	r2, #1
 8000c30:      	adds	r3, #16
 8000c32:      	and	r0, r6, #192
 8000c36:      	cmp	r0, #128
 8000c38:      	and	r0, r1, #192
 8000c3c:      	it	eq
 8000c3e:      	addeq	r2, #1
 8000c40:      	cmp	r0, #128
 8000c42:      	and	r0, r5, #192
 8000c46:      	it	eq
 8000c48:      	addeq	r2, #1
 8000c4a:      	cmp	r0, #128
 8000c4c:      	and	r0, r11, #192
 8000c50:      	it	eq
 8000c52:      	addeq	r2, #1
 8000c54:      	cmp	r0, #128
 8000c56:      	and	r0, r8, #192
 8000c5a:      	it	eq
 8000c5c:      	addeq	r2, #1
 8000c5e:      	cmp	r0, #128
 8000c60:      	it	eq
 8000c62:      	addeq	r2, #1
 8000c64:      	adds	r4, #4
 8000c66:      	bne	#-204 <core::fmt::Formatter::pad::hdd2f8bc43cf2bd72+0x37e>
 8000c68:      	ldrd	r4, r6, [sp, #4]
 8000c6c:      	cmp.w	r12, #0
 8000c70:      	beq.w	#284 <core::fmt::Formatter::pad::hdd2f8bc43cf2bd72+0x570>
 8000c74:      	ldrb	r0, [r3]
 8000c76:      	ldrb	r1, [r3, #1]
 8000c78:      	and	r0, r0, #192
 8000c7c:      	ldrb	r5, [r3, #2]
 8000c7e:      	cmp	r0, #128
 8000c80:      	ldrb.w	r8, [r3, #3]
 8000c84:      	and	r0, r1, #192
 8000c88:      	it	eq
 8000c8a:      	addeq	r2, #1
 8000c8c:      	cmp	r0, #128
 8000c8e:      	and	r0, r5, #192
 8000c92:      	it	eq
 8000c94:      	addeq	r2, #1
 8000c96:      	cmp	r0, #128
 8000c98:      	and	r0, r8, #192
 8000c9c:      	it	eq
 8000c9e:      	addeq	r2, #1
 8000ca0:      	cmp	r0, #128
 8000ca2:      	it	eq
 8000ca4:      	addeq	r2, #1
 8000ca6:      	cmp.w	r12, #1
 8000caa:      	bne	#2 <core::fmt::Formatter::pad::hdd2f8bc43cf2bd72+0x490>
 8000cac:      	adds	r3, #4
 8000cae:      	b	#222 <core::fmt::Formatter::pad::hdd2f8bc43cf2bd72+0x570>
 8000cb0:      	ldrb	r0, [r3, #4]
 8000cb2:      	ldrb	r1, [r3, #5]
 8000cb4:      	and	r0, r0, #192
 8000cb8:      	ldrb	r5, [r3, #6]
 8000cba:      	cmp	r0, #128
 8000cbc:      	ldrb.w	r8, [r3, #7]
 8000cc0:      	and	r0, r1, #192
 8000cc4:      	it	eq
 8000cc6:      	addeq	r2, #1
 8000cc8:      	cmp	r0, #128
 8000cca:      	and	r0, r5, #192
 8000cce:      	it	eq
 8000cd0:      	addeq	r2, #1
 8000cd2:      	cmp	r0, #128
 8000cd4:      	and	r0, r8, #192
 8000cd8:      	it	eq
 8000cda:      	addeq	r2, #1
 8000cdc:      	cmp	r0, #128
 8000cde:      	it	eq
 8000ce0:      	addeq	r2, #1
 8000ce2:      	cmp.w	r12, #2
 8000ce6:      	bne	#110 <core::fmt::Formatter::pad::hdd2f8bc43cf2bd72+0x538>
 8000ce8:      	adds	r3, #8
 8000cea:      	b	#162 <core::fmt::Formatter::pad::hdd2f8bc43cf2bd72+0x570>
 8000cec:      	movs	r6, #0
 8000cee:      	mov	r1, r5
 8000cf0:      	cmp	r0, #240
 8000cf2:      	blo.w	#-1140 <core::fmt::Formatter::pad::hdd2f8bc43cf2bd72+0x62>
 8000cf6:      	orrs	r3, r6
 8000cf8:      	mov.w	r6, #1835008
 8000cfc:      	and.w	r0, r6, r0, lsl #18
 8000d00:      	cmp	r1, r5
 8000d02:      	orr.w	r0, r0, r3, lsl #6
 8000d06:      	itte	ne
 8000d08:      	ldrbne	r1, [r1]
 8000d0a:      	andne	r1, r1, #63
 8000d0e:      	moveq	r1, #0
 8000d10:      	add	r0, r1
 8000d12:      	cmp.w	r0, #1114112
 8000d16:      	bne.w	#-1176 <core::fmt::Formatter::pad::hdd2f8bc43cf2bd72+0x62>
 8000d1a:      	mov	r2, r9
 8000d1c:      	ldr	r6, [sp, #8]
 8000d1e:      	cmp.w	lr, #1
 8000d22:      	bne.w	#-654 <core::fmt::Formatter::pad::hdd2f8bc43cf2bd72+0x278>
 8000d26:      	mov	r9, r2
 8000d28:      	cmp.w	r9, #0
 8000d2c:      	bne.w	#-1256 <core::fmt::Formatter::pad::hdd2f8bc43cf2bd72+0x28>
 8000d30:      	ldr.w	lr, [r10, #12]
 8000d34:      	cmp.w	lr, #0
 8000d38:      	beq	#2 <core::fmt::Formatter::pad::hdd2f8bc43cf2bd72+0x51e>
 8000d3a:      	movs	r2, #0
 8000d3c:      	b	#126 <core::fmt::Formatter::pad::hdd2f8bc43cf2bd72+0x59e>
 8000d3e:      	ldr.w	r1, [r10, #28]
 8000d42:      	mov	r2, r9
 8000d44:      	ldr.w	r0, [r10, #24]
 8000d48:      	ldr	r3, [r1, #12]
 8000d4a:      	mov	r1, r6
 8000d4c:      	add	sp, #12
 8000d4e:      	pop.w	{r8, r9, r10, r11}
 8000d52:      	pop.w	{r4, r5, r6, r7, lr}
 8000d56:      	bx	r3
 8000d58:      	ldrb	r0, [r3, #8]
 8000d5a:      	mov	r5, r6
 8000d5c:      	ldrb	r1, [r3, #9]
 8000d5e:      	and	r0, r0, #192
 8000d62:      	ldrb	r6, [r3, #10]
 8000d64:      	ldrb.w	r12, [r3, #11]
 8000d68:      	cmp	r0, #128
 8000d6a:      	it	eq
 8000d6c:      	addeq	r2, #1
 8000d6e:      	and	r0, r1, #192
 8000d72:      	cmp	r0, #128
 8000d74:      	and	r0, r6, #192
 8000d78:      	it	eq
 8000d7a:      	addeq	r2, #1
 8000d7c:      	cmp	r0, #128
 8000d7e:      	it	eq
 8000d80:      	addeq	r2, #1
 8000d82:      	and	r0, r12, #192
 8000d86:      	cmp	r0, #128
 8000d88:      	mov	r6, r5
 8000d8a:      	it	eq
 8000d8c:      	addeq	r2, #1
 8000d8e:      	adds	r3, #12
 8000d90:      	cbz	r4, #42
 8000d92:      	ldrb	r0, [r3]
 8000d94:      	and	r0, r0, #192
 8000d98:      	cmp	r0, #128
 8000d9a:      	it	eq
 8000d9c:      	addeq	r2, #1
 8000d9e:      	cmp	r4, #1
 8000da0:      	beq	#26 <core::fmt::Formatter::pad::hdd2f8bc43cf2bd72+0x59e>
 8000da2:      	ldrb	r0, [r3, #1]
 8000da4:      	and	r0, r0, #192
 8000da8:      	cmp	r0, #128
 8000daa:      	it	eq
 8000dac:      	addeq	r2, #1
 8000dae:      	cmp	r4, #2
 8000db0:      	beq	#10 <core::fmt::Formatter::pad::hdd2f8bc43cf2bd72+0x59e>
 8000db2:      	ldrb	r0, [r3, #2]
 8000db4:      	and	r0, r0, #192
 8000db8:      	cmp	r0, #128
 8000dba:      	it	eq
 8000dbc:      	addeq	r2, #1
 8000dbe:      	ldrb.w	r0, [r10, #32]
 8000dc2:      	subs	r3, r0, #3
 8000dc4:      	it	ne
 8000dc6:      	movne	r3, r0
 8000dc8:      	sub.w	r0, r2, r9
 8000dcc:      	add.w	r1, r0, lr
 8000dd0:      	movs	r0, #0
 8000dd2:      	mov	r11, r1
 8000dd4:      	tbb	[pc, r3]

08000dd8 <$d.15>:
 8000dd8:	0a 02 06 02	.word	0x0206020a

08000ddc <$t.16>:
 8000ddc:      	mov.w	r11, #0
 8000de0:      	mov	r0, r1
 8000de2:      	b	#6 <$t.16+0x10>
 8000de4:      	lsrs	r0, r1, #1
 8000de6:      	adds	r1, #1
 8000de8:      	lsr.w	r11, r1, #1
 8000dec:      	adds	r4, r0, #1
 8000dee:      	subs	r4, #1
 8000df0:      	beq	#16 <$t.16+0x28>
 8000df2:      	ldrd	r0, r2, [r10, #24]
 8000df6:      	ldr.w	r1, [r10, #4]
 8000dfa:      	ldr	r2, [r2, #16]
 8000dfc:      	blx	r2
 8000dfe:      	cmp	r0, #0
 8000e00:      	beq	#-22 <$t.16+0x12>
 8000e02:      	b	#40 <$t.16+0x52>
 8000e04:      	ldrd	r0, r1, [r10, #24]
 8000e08:      	mov	r2, r9
 8000e0a:      	ldr	r3, [r1, #12]
 8000e0c:      	mov	r1, r6
 8000e0e:      	ldr.w	r8, [r10, #4]
 8000e12:      	blx	r3
 8000e14:      	cbnz	r0, #22
 8000e16:      	ldrd	r6, r5, [r10, #24]
 8000e1a:      	add.w	r4, r11, #1
 8000e1e:      	subs	r4, #1
 8000e20:      	beq	#20 <$t.16+0x5c>
 8000e22:      	ldr	r2, [r5, #16]
 8000e24:      	mov	r0, r6
 8000e26:      	mov	r1, r8
 8000e28:      	blx	r2
 8000e2a:      	cmp	r0, #0
 8000e2c:      	beq	#-18 <$t.16+0x42>
 8000e2e:      	movs	r0, #1
 8000e30:      	add	sp, #12
 8000e32:      	pop.w	{r8, r9, r10, r11}
 8000e36:      	pop	{r4, r5, r6, r7, pc}
 8000e38:      	movs	r0, #0
 8000e3a:      	add	sp, #12
 8000e3c:      	pop.w	{r8, r9, r10, r11}
 8000e40:      	pop	{r4, r5, r6, r7, pc}

08000e42 <<&T as core::fmt::Display>::fmt::hed4fc898b8a3241f>:
 8000e42:      	mov	r3, r1
 8000e44:      	ldrd	r1, r2, [r0]
 8000e48:      	mov	r0, r3
 8000e4a:      	b.w	#-1582 <core::fmt::Formatter::pad::hdd2f8bc43cf2bd72>

08000e4e <core::fmt::write::h80f221a6e172bdff>:
 8000e4e:      	push	{r4, r5, r6, r7, lr}
 8000e50:      	add	r7, sp, #12
 8000e52:      	push.w	{r8, r9, r10, r11}
 8000e56:      	sub	sp, #52
 8000e58:      	mov	r4, r2
 8000e5a:      	movs	r2, #3
 8000e5c:      	ldr	r3, [r4, #8]
 8000e5e:      	strb.w	r2, [sp, #48]
 8000e62:      	movs	r2, #32
 8000e64:      	str	r2, [sp, #20]
 8000e66:      	movs	r2, #0
 8000e68:      	cmp	r3, #0
 8000e6a:      	str	r2, [sp, #16]
 8000e6c:      	str	r1, [sp, #44]
 8000e6e:      	str	r0, [sp, #40]
 8000e70:      	str	r2, [sp, #32]
 8000e72:      	str	r2, [sp, #24]
 8000e74:      	str	r3, [sp, #8]
 8000e76:      	beq	#230 <core::fmt::write::h80f221a6e172bdff+0x112>
 8000e78:      	ldr.w	r11, [r4, #12]
 8000e7c:      	ldrd	r6, r9, [r4]
 8000e80:      	cmp	r11, r9
 8000e82:      	it	hi
 8000e84:      	movhi	r11, r9
 8000e86:      	cmp.w	r11, #0
 8000e8a:      	str	r6, [sp, #12]
 8000e8c:      	beq.w	#298 <core::fmt::write::h80f221a6e172bdff+0x16c>
 8000e90:      	str.w	r9, [sp, #4]
 8000e94:      	ldrd	r3, r2, [r6]
 8000e98:      	ldr	r6, [r1, #12]
 8000e9a:      	mov	r1, r3
 8000e9c:      	blx	r6
 8000e9e:      	cmp	r0, #0
 8000ea0:      	bne.w	#318 <core::fmt::write::h80f221a6e172bdff+0x194>
 8000ea4:      	ldr	r0, [sp, #8]
 8000ea6:      	sub.w	r10, r11, #1
 8000eaa:      	ldr.w	r9, [r4, #16]
 8000eae:      	mov.w	r8, #0
 8000eb2:      	add.w	r6, r0, #16
 8000eb6:      	ldr	r0, [sp, #8]
 8000eb8:      	add.w	r0, r0, r8, lsl #2
 8000ebc:      	ldrd	r2, r1, [r0, #20]
 8000ec0:      	ldrd	r3, r4, [r0, #4]
 8000ec4:      	ldrb	r5, [r0, #28]
 8000ec6:      	str	r3, [sp, #20]
 8000ec8:      	strb.w	r5, [sp, #48]
 8000ecc:      	str	r4, [sp, #16]
 8000ece:      	cbz	r2, #26
 8000ed0:      	cmp	r2, #2
 8000ed2:      	beq	#26 <core::fmt::write::h80f221a6e172bdff+0xa2>
 8000ed4:      	add.w	r2, r9, r1, lsl #3
 8000ed8:      	movw	r3, #1253
 8000edc:      	movt	r3, #2048
 8000ee0:      	ldr	r2, [r2, #4]
 8000ee2:      	cmp	r2, r3
 8000ee4:      	bne	#8 <core::fmt::write::h80f221a6e172bdff+0xa2>
 8000ee6:      	ldr.w	r1, [r9, r1, lsl #3]
 8000eea:      	ldr	r1, [r1]
 8000eec:      	movs	r2, #1
 8000eee:      	b	#0 <core::fmt::write::h80f221a6e172bdff+0xa4>
 8000ef0:      	movs	r2, #0
 8000ef2:      	strd	r2, r1, [sp, #24]
 8000ef6:      	ldr	r0, [r0, #12]
 8000ef8:      	ldr	r1, [r6]
 8000efa:      	cbz	r0, #26
 8000efc:      	cmp	r0, #2
 8000efe:      	beq	#26 <core::fmt::write::h80f221a6e172bdff+0xce>
 8000f00:      	add.w	r0, r9, r1, lsl #3
 8000f04:      	movw	r2, #1253
 8000f08:      	movt	r2, #2048
 8000f0c:      	ldr	r0, [r0, #4]
 8000f0e:      	cmp	r0, r2
 8000f10:      	bne	#8 <core::fmt::write::h80f221a6e172bdff+0xce>
 8000f12:      	ldr.w	r0, [r9, r1, lsl #3]
 8000f16:      	ldr	r1, [r0]
 8000f18:      	movs	r2, #1
 8000f1a:      	b	#0 <core::fmt::write::h80f221a6e172bdff+0xd0>
 8000f1c:      	movs	r2, #0
 8000f1e:      	ldr	r3, [r6, #-16]
 8000f22:      	str	r1, [sp, #36]
 8000f24:      	add.w	r1, r9, r3, lsl #3
 8000f28:      	ldr.w	r0, [r9, r3, lsl #3]
 8000f2c:      	ldr	r3, [r1, #4]
 8000f2e:      	add	r1, sp, #16
 8000f30:      	str	r2, [sp, #32]
 8000f32:      	blx	r3
 8000f34:      	cmp	r0, #0
 8000f36:      	bne	#168 <core::fmt::write::h80f221a6e172bdff+0x194>
 8000f38:      	cmp.w	r10, #0
 8000f3c:      	beq	#172 <core::fmt::write::h80f221a6e172bdff+0x19e>
 8000f3e:      	ldr	r1, [sp, #12]
 8000f40:      	ldrd	r0, r3, [sp, #40]
 8000f44:      	add.w	r2, r1, r8
 8000f48:      	ldr	r3, [r3, #12]
 8000f4a:      	ldrd	r1, r2, [r2, #8]
 8000f4e:      	blx	r3
 8000f50:      	sub.w	r10, r10, #1
 8000f54:      	adds	r6, #32
 8000f56:      	add.w	r8, r8, #8
 8000f5a:      	cmp	r0, #0
 8000f5c:      	beq	#-170 <core::fmt::write::h80f221a6e172bdff+0x68>
 8000f5e:      	b	#128 <core::fmt::write::h80f221a6e172bdff+0x194>
 8000f60:      	ldr.w	r11, [r4, #20]
 8000f64:      	ldrd	r6, r9, [r4]
 8000f68:      	cmp	r11, r9
 8000f6a:      	it	hi
 8000f6c:      	movhi	r11, r9
 8000f6e:      	cmp.w	r11, #0
 8000f72:      	str	r6, [sp, #12]
 8000f74:      	beq	#76 <core::fmt::write::h80f221a6e172bdff+0x176>
 8000f76:      	ldrd	r3, r2, [r6]
 8000f7a:      	ldr	r6, [r1, #12]
 8000f7c:      	ldr	r4, [r4, #16]
 8000f7e:      	mov	r1, r3
 8000f80:      	blx	r6
 8000f82:      	cbnz	r0, #92
 8000f84:      	ldr	r0, [sp, #12]
 8000f86:      	adds	r6, r4, #4
 8000f88:      	sub.w	r5, r11, #1
 8000f8c:      	add.w	r8, sp, #16
 8000f90:      	add.w	r4, r0, #8
 8000f94:      	ldr	r0, [r6, #-4]
 8000f98:      	mov	r1, r8
 8000f9a:      	ldr	r2, [r6]
 8000f9c:      	blx	r2
 8000f9e:      	cbnz	r0, #64
 8000fa0:      	cbz	r5, #36
 8000fa2:      	ldrd	r0, r3, [sp, #40]
 8000fa6:      	ldrd	r1, r2, [r4]
 8000faa:      	ldr	r3, [r3, #12]
 8000fac:      	blx	r3
 8000fae:      	subs	r5, #1
 8000fb0:      	adds	r6, #8
 8000fb2:      	adds	r4, #8
 8000fb4:      	cmp	r0, #0
 8000fb6:      	beq	#-38 <core::fmt::write::h80f221a6e172bdff+0x146>
 8000fb8:      	b	#38 <core::fmt::write::h80f221a6e172bdff+0x194>
 8000fba:      	mov.w	r11, #0
 8000fbe:      	cmp	r9, r11
 8000fc0:      	bhi	#8 <core::fmt::write::h80f221a6e172bdff+0x17e>
 8000fc2:      	b	#46 <core::fmt::write::h80f221a6e172bdff+0x1a6>
 8000fc4:      	mov.w	r11, #0
 8000fc8:      	cmp	r9, r11
 8000fca:      	bls	#38 <core::fmt::write::h80f221a6e172bdff+0x1a6>
 8000fcc:      	ldr	r2, [sp, #12]
 8000fce:      	ldrd	r0, r3, [sp, #40]
 8000fd2:      	ldr	r3, [r3, #12]
 8000fd4:      	ldr.w	r1, [r2, r11, lsl #3]
 8000fd8:      	add.w	r2, r2, r11, lsl #3
 8000fdc:      	ldr	r2, [r2, #4]
 8000fde:      	blx	r3
 8000fe0:      	cbz	r0, #16
 8000fe2:      	movs	r0, #1
 8000fe4:      	add	sp, #52
 8000fe6:      	pop.w	{r8, r9, r10, r11}
 8000fea:      	pop	{r4, r5, r6, r7, pc}
 8000fec:      	ldr.w	r9, [sp, #4]
 8000ff0:      	cmp	r9, r11
 8000ff2:      	bhi	#-42 <core::fmt::write::h80f221a6e172bdff+0x17e>
 8000ff4:      	movs	r0, #0
 8000ff6:      	add	sp, #52
 8000ff8:      	pop.w	{r8, r9, r10, r11}
 8000ffc:      	pop	{r4, r5, r6, r7, pc}

08000ffe <<&T as core::fmt::Display>::fmt::hb1351d570a30a9c9>:
 8000ffe:      	push	{r4, r5, r6, r7, lr}
 8001000:      	add	r7, sp, #12
 8001002:      	push.w	{r8, r9, r11}
 8001006:      	sub	sp, #24
 8001008:      	ldr.w	lr, [r0]
 800100c:      	mov	r2, sp
 800100e:      	ldrd	r12, r1, [r1, #24]
 8001012:      	mov	r3, r2
 8001014:      	ldm.w	lr, {r0, r4, r5, r6, r8, r9}
 8001018:      	stm.w	r3, {r0, r4, r5, r6, r8, r9}
 800101c:      	mov	r0, r12
 800101e:      	bl	#-468
 8001022:      	add	sp, #24
 8001024:      	pop.w	{r8, r9, r11}
 8001028:      	pop	{r4, r5, r6, r7, pc}

0800102a <<&T as core::fmt::Display>::fmt::h28023d1754819fb6>:
 800102a:      	ldr	r0, [r0]
 800102c:      	mov	r3, r1
 800102e:      	ldrd	r1, r2, [r0]
 8001032:      	mov	r0, r3
 8001034:      	b.w	#-2072 <core::fmt::Formatter::pad::hdd2f8bc43cf2bd72>

08001038 <cortex_m::itm::write_all::h1098dbb8e67ada69>:
 8001038:      	push	{r4, r5, r7, lr}
 800103a:      	add	r7, sp, #8
 800103c:      	cmp	r2, #0
 800103e:      	beq.w	#262 <cortex_m::itm::write_all::h1098dbb8e67ada69+0x110>
 8001042:      	lsls	r3, r1, #31
 8001044:      	beq	#32 <cortex_m::itm::write_all::h1098dbb8e67ada69+0x30>
 8001046:      	ldr	r3, [r0]
 8001048:      	lsls	r3, r3, #31
 800104a:      	itttt	eq
 800104c:      	ldreq	r3, [r0]
 800104e:      	lslseq.w	r3, r3, #31
 8001052:      	ldreq	r3, [r0]
 8001054:      	lslseq.w	r3, r3, #31
 8001058:      	bne	#4 <cortex_m::itm::write_all::h1098dbb8e67ada69+0x28>
 800105a:      	ldr	r3, [r0]
 800105c:      	lsls	r3, r3, #31
 800105e:      	beq	#-28 <cortex_m::itm::write_all::h1098dbb8e67ada69+0xe>
 8001060:      	ldrb	r3, [r1], #1
 8001064:      	subs	r2, #1
 8001066:      	strb	r3, [r0]
 8001068:      	and	r3, r1, #3
 800106c:      	cmp	r3, #2
 800106e:      	bne	#36 <cortex_m::itm::write_all::h1098dbb8e67ada69+0x5e>
 8001070:      	cmp	r2, #2
 8001072:      	blo	#174 <cortex_m::itm::write_all::h1098dbb8e67ada69+0xec>
 8001074:      	ldr	r3, [r0]
 8001076:      	lsls	r3, r3, #31
 8001078:      	itttt	eq
 800107a:      	ldreq	r3, [r0]
 800107c:      	lslseq.w	r3, r3, #31
 8001080:      	ldreq	r3, [r0]
 8001082:      	lslseq.w	r3, r3, #31
 8001086:      	bne	#4 <cortex_m::itm::write_all::h1098dbb8e67ada69+0x56>
 8001088:      	ldr	r3, [r0]
 800108a:      	lsls	r3, r3, #31
 800108c:      	beq	#-28 <cortex_m::itm::write_all::h1098dbb8e67ada69+0x3c>
 800108e:      	ldrh	r3, [r1], #2
 8001092:      	subs	r2, #2
 8001094:      	strh	r3, [r0]
 8001096:      	cmp	r2, #0
 8001098:      	beq	#172 <cortex_m::itm::write_all::h1098dbb8e67ada69+0x110>
 800109a:      	bic	r12, r2, #3
 800109e:      	movs	r3, #0
 80010a0:      	cmp.w	r3, r2, lsr #2
 80010a4:      	beq	#48 <cortex_m::itm::write_all::h1098dbb8e67ada69+0xa0>
 80010a6:      	lsr.w	lr, r2, #2
 80010aa:      	movs	r3, #0
 80010ac:      	mov	r4, r1
 80010ae:      	b	#10 <cortex_m::itm::write_all::h1098dbb8e67ada69+0x84>
 80010b0:      	ldr	r5, [r4], #4
 80010b4:      	adds	r3, #1
 80010b6:      	cmp	r3, lr
 80010b8:      	str	r5, [r0]
 80010ba:      	beq	#26 <cortex_m::itm::write_all::h1098dbb8e67ada69+0xa0>
 80010bc:      	ldr	r5, [r0]
 80010be:      	lsls	r5, r5, #31
 80010c0:      	itttt	eq
 80010c2:      	ldreq	r5, [r0]
 80010c4:      	lslseq.w	r5, r5, #31
 80010c8:      	ldreq	r5, [r0]
 80010ca:      	lslseq.w	r5, r5, #31
 80010ce:      	bne	#-34 <cortex_m::itm::write_all::h1098dbb8e67ada69+0x78>
 80010d0:      	ldr	r5, [r0]
 80010d2:      	lsls	r5, r5, #31
 80010d4:      	beq	#-28 <cortex_m::itm::write_all::h1098dbb8e67ada69+0x84>
 80010d6:      	b	#-42 <cortex_m::itm::write_all::h1098dbb8e67ada69+0x78>
 80010d8:      	and	r2, r2, #3
 80010dc:      	add	r1, r12
 80010de:      	cmp	r2, #2
 80010e0:      	blo	#32 <cortex_m::itm::write_all::h1098dbb8e67ada69+0xcc>
 80010e2:      	ldr	r3, [r0]
 80010e4:      	lsls	r3, r3, #31
 80010e6:      	itttt	eq
 80010e8:      	ldreq	r3, [r0]
 80010ea:      	lslseq.w	r3, r3, #31
 80010ee:      	ldreq	r3, [r0]
 80010f0:      	lslseq.w	r3, r3, #31
 80010f4:      	bne	#4 <cortex_m::itm::write_all::h1098dbb8e67ada69+0xc4>
 80010f6:      	ldr	r3, [r0]
 80010f8:      	lsls	r3, r3, #31
 80010fa:      	beq	#-28 <cortex_m::itm::write_all::h1098dbb8e67ada69+0xaa>
 80010fc:      	ldrh	r3, [r1], #2
 8001100:      	subs	r2, #2
 8001102:      	strh	r3, [r0]
 8001104:      	cmp	r2, #1
 8001106:      	bne	#62 <cortex_m::itm::write_all::h1098dbb8e67ada69+0x110>
 8001108:      	ldr	r2, [r0]
 800110a:      	lsls	r2, r2, #31
 800110c:      	itttt	eq
 800110e:      	ldreq	r2, [r0]
 8001110:      	lslseq.w	r2, r2, #31
 8001114:      	ldreq	r2, [r0]
 8001116:      	lslseq.w	r2, r2, #31
 800111a:      	bne	#38 <cortex_m::itm::write_all::h1098dbb8e67ada69+0x10c>
 800111c:      	ldr	r2, [r0]
 800111e:      	lsls	r2, r2, #31
 8001120:      	beq	#-28 <cortex_m::itm::write_all::h1098dbb8e67ada69+0xd0>
 8001122:      	b	#30 <cortex_m::itm::write_all::h1098dbb8e67ada69+0x10c>
 8001124:      	cmp	r2, #1
 8001126:      	it	ne
 8001128:      	popne	{r4, r5, r7, pc}
 800112a:      	ldr	r2, [r0]
 800112c:      	lsls	r2, r2, #31
 800112e:      	bne	#18 <cortex_m::itm::write_all::h1098dbb8e67ada69+0x10c>
 8001130:      	ldr	r2, [r0]
 8001132:      	lsls	r2, r2, #31
 8001134:      	itt	eq
 8001136:      	ldreq	r2, [r0]
 8001138:      	lslseq.w	r2, r2, #31
 800113c:      	bne	#4 <cortex_m::itm::write_all::h1098dbb8e67ada69+0x10c>
 800113e:      	ldr	r2, [r0]
 8001140:      	lsls	r2, r2, #31
 8001142:      	beq	#-28 <cortex_m::itm::write_all::h1098dbb8e67ada69+0xf2>
 8001144:      	ldrb	r1, [r1]
 8001146:      	strb	r1, [r0]
 8001148:      	pop	{r4, r5, r7, pc}

0800114a <ResetTrampoline>:
 800114a:      	push	{r7, lr}
 800114c:      	mov	r7, sp
 800114e:      	bl	#-3652
 8001152:      	trap

08001154 <WWDG>:
 8001154:      	b	#-4 <WWDG>

08001156 <__pre_init>:
 8001156:      	bx	lr

08001158 <rust_begin_unwind>:
 8001158:      	push	{r7, lr}
 800115a:      	mov	r7, sp
 800115c:      	sub	sp, #48
 800115e:      	str	r0, [sp, #4]
 8001160:      	bl	#516
 8001164:      	movw	r0, #4523
 8001168:      	movw	r1, #5420
 800116c:      	movt	r0, #2048
 8001170:      	add	r2, sp, #24
 8001172:      	str	r0, [sp, #12]
 8001174:      	add	r0, sp, #4
 8001176:      	str	r0, [sp, #8]
 8001178:      	mov.w	r0, #3758096384
 800117c:      	str	r0, [sp, #16]
 800117e:      	add	r0, sp, #16
 8001180:      	str	r0, [sp, #20]
 8001182:      	movs	r0, #1
 8001184:      	str	r0, [sp, #44]
 8001186:      	add	r0, sp, #8
 8001188:      	str	r0, [sp, #40]
 800118a:      	movs	r0, #0
 800118c:      	strd	r0, r0, [sp, #32]
 8001190:      	movs	r0, #2
 8001192:      	str	r0, [sp, #28]
 8001194:      	movw	r0, #5404
 8001198:      	movt	r0, #2048
 800119c:      	movt	r1, #2048
 80011a0:      	str	r0, [sp, #24]
 80011a2:      	add	r0, sp, #20
 80011a4:      	bl	#-858
 80011a8:      	b	#-4 <rust_begin_unwind+0x50>

080011aa <<&T as core::fmt::Display>::fmt::h5a9e9b1ee2b40989>:
 80011aa:      	push	{r4, r5, r6, r7, lr}
 80011ac:      	add	r7, sp, #12
 80011ae:      	str	r11, [sp, #-4]!
 80011b2:      	sub	sp, #56
 80011b4:      	mov	r4, r1
 80011b6:      	ldrd	r2, r1, [r1, #24]
 80011ba:      	ldr	r3, [r1, #12]
 80011bc:      	movw	r1, #5344
 80011c0:      	ldr	r6, [r0]
 80011c2:      	movt	r1, #2048
 80011c6:      	mov	r0, r2
 80011c8:      	movs	r2, #12
 80011ca:      	blx	r3
 80011cc:      	cbz	r0, #10
 80011ce:      	movs	r5, #1
 80011d0:      	mov	r0, r5
 80011d2:      	add	sp, #56
 80011d4:      	ldr	r11, [sp], #4
 80011d8:      	pop	{r4, r5, r6, r7, pc}
 80011da:      	ldr	r0, [r6, #8]
 80011dc:      	cbz	r0, #14
 80011de:      	str	r0, [sp, #4]
 80011e0:      	movw	r2, #4095
 80011e4:      	ldrd	r0, r1, [r4, #24]
 80011e8:      	movt	r2, #2048
 80011ec:      	b	#46 <<&T as core::fmt::Display>::fmt::h5a9e9b1ee2b40989+0x74>
 80011ee:      	ldrd	r5, r0, [r6]
 80011f2:      	ldr	r1, [r0, #12]
 80011f4:      	mov	r0, r5
 80011f6:      	blx	r1
 80011f8:      	movw	r2, #43294
 80011fc:      	movt	r2, #32498
 8001200:      	eors	r1, r2
 8001202:      	movw	r2, #48372
 8001206:      	movt	r2, #60615
 800120a:      	eors	r0, r2
 800120c:      	orrs	r0, r1
 800120e:      	bne	#56 <<&T as core::fmt::Display>::fmt::h5a9e9b1ee2b40989+0xa0>
 8001210:      	str	r5, [sp, #4]
 8001212:      	movw	r2, #4139
 8001216:      	ldrd	r0, r1, [r4, #24]
 800121a:      	movt	r2, #2048
 800121e:      	str	r2, [sp, #12]
 8001220:      	add	r2, sp, #4
 8001222:      	str	r2, [sp, #8]
 8001224:      	movs	r5, #1
 8001226:      	add	r2, sp, #8
 8001228:      	str	r5, [sp, #52]
 800122a:      	str	r2, [sp, #48]
 800122c:      	movs	r2, #0
 800122e:      	str	r2, [sp, #44]
 8001230:      	str	r2, [sp, #40]
 8001232:      	movs	r2, #2
 8001234:      	str	r2, [sp, #36]
 8001236:      	movw	r2, #5356
 800123a:      	movt	r2, #2048
 800123e:      	str	r2, [sp, #32]
 8001240:      	add	r2, sp, #32
 8001242:      	bl	#-1016
 8001246:      	cmp	r0, #0
 8001248:      	bne	#-124 <<&T as core::fmt::Display>::fmt::h5a9e9b1ee2b40989+0x26>
 800124a:      	ldr	r2, [r6, #12]
 800124c:      	movw	r3, #1313
 8001250:      	movt	r3, #2048
 8001254:      	ldrd	r0, r1, [r4, #24]
 8001258:      	add.w	r6, r2, #12
 800125c:      	str	r3, [sp, #28]
 800125e:      	strd	r3, r6, [sp, #20]
 8001262:      	add.w	r3, r2, #8
 8001266:      	str	r3, [sp, #16]
 8001268:      	movw	r3, #3651
 800126c:      	movt	r3, #2048
 8001270:      	strd	r2, r3, [sp, #8]
 8001274:      	add	r3, sp, #8
 8001276:      	movs	r2, #3
 8001278:      	str	r3, [sp, #48]
 800127a:      	movs	r3, #0
 800127c:      	str	r2, [sp, #52]
 800127e:      	str	r3, [sp, #44]
 8001280:      	strd	r2, r3, [sp, #36]
 8001284:      	movw	r2, #5372
 8001288:      	movt	r2, #2048
 800128c:      	str	r2, [sp, #32]
 800128e:      	add	r2, sp, #32
 8001290:      	bl	#-1094
 8001294:      	mov	r5, r0
 8001296:      	mov	r0, r5
 8001298:      	add	sp, #56
 800129a:      	ldr	r11, [sp], #4
 800129e:      	pop	{r4, r5, r6, r7, pc}

080012a0 <core::ptr::drop_in_place::h4057e8d006af43fe>:
 80012a0:      	bx	lr

080012a2 <<&mut W as core::fmt::Write>::write_str::hbd59a210919e6753>:
 80012a2:      	push	{r7, lr}
 80012a4:      	mov	r7, sp
 80012a6:      	ldr	r0, [r0]
 80012a8:      	ldr	r0, [r0]
 80012aa:      	bl	#-630
 80012ae:      	movs	r0, #0
 80012b0:      	pop	{r7, pc}

080012b2 <<&mut W as core::fmt::Write>::write_char::h1cb2b91da1b2b000>:
 80012b2:      	push	{r7, lr}
 80012b4:      	mov	r7, sp
 80012b6:      	sub	sp, #8
 80012b8:      	ldr	r0, [r0]
 80012ba:      	movs	r2, #0
 80012bc:      	cmp	r1, #128
 80012be:      	str	r2, [sp, #4]
 80012c0:      	bhs	#6 <<&mut W as core::fmt::Write>::write_char::h1cb2b91da1b2b000+0x18>
 80012c2:      	strb.w	r1, [sp, #4]
 80012c6:      	movs	r2, #1
 80012c8:      	b	#94 <<&mut W as core::fmt::Write>::write_char::h1cb2b91da1b2b000+0x78>
 80012ca:      	movs	r2, #2
 80012cc:      	mov	r3, r1
 80012ce:      	bfi	r3, r2, #6, #26
 80012d2:      	cmp.w	r1, #2048
 80012d6:      	bhs	#10 <<&mut W as core::fmt::Write>::write_char::h1cb2b91da1b2b000+0x32>
 80012d8:      	strb.w	r3, [sp, #5]
 80012dc:      	movs	r3, #192
 80012de:      	orr.w	r1, r3, r1, lsr #6
 80012e2:      	b	#64 <<&mut W as core::fmt::Write>::write_char::h1cb2b91da1b2b000+0x74>
 80012e4:      	cmp.w	r1, #65536
 80012e8:      	bhs	#26 <<&mut W as core::fmt::Write>::write_char::h1cb2b91da1b2b000+0x54>
 80012ea:      	strb.w	r3, [sp, #6]
 80012ee:      	lsrs	r3, r1, #6
 80012f0:      	bfi	r3, r2, #6, #26
 80012f4:      	movs	r2, #224
 80012f6:      	orr.w	r1, r2, r1, lsr #12
 80012fa:      	strb.w	r3, [sp, #5]
 80012fe:      	strb.w	r1, [sp, #4]
 8001302:      	movs	r2, #3
 8001304:      	b	#34 <<&mut W as core::fmt::Write>::write_char::h1cb2b91da1b2b000+0x78>
 8001306:      	strb.w	r3, [sp, #7]
 800130a:      	lsrs	r3, r1, #6
 800130c:      	bfi	r3, r2, #6, #26
 8001310:      	strb.w	r3, [sp, #6]
 8001314:      	lsrs	r3, r1, #12
 8001316:      	bfi	r3, r2, #6, #26
 800131a:      	movs	r2, #240
 800131c:      	orr.w	r1, r2, r1, lsr #18
 8001320:      	movs	r2, #4
 8001322:      	strb.w	r3, [sp, #5]
 8001326:      	strb.w	r1, [sp, #4]
 800132a:      	ldr	r0, [r0]
 800132c:      	add	r1, sp, #4
 800132e:      	bl	#-762
 8001332:      	movs	r0, #0
 8001334:      	add	sp, #8
 8001336:      	pop	{r7, pc}

08001338 <<&mut W as core::fmt::Write>::write_fmt::h33ca6863f47eb077>:
 8001338:      	push	{r4, r5, r6, r7, lr}
 800133a:      	add	r7, sp, #12
 800133c:      	str	r11, [sp, #-4]!
 8001340:      	sub	sp, #32
 8001342:      	ldr	r0, [r0]
 8001344:      	add	r2, sp, #8
 8001346:      	str	r0, [sp, #4]
 8001348:      	ldm.w	r1, {r3, r4, r5, r6, r12, lr}
 800134c:      	mov	r0, r2
 800134e:      	movw	r1, #5420
 8001352:      	movt	r1, #2048
 8001356:      	stm.w	r0, {r3, r4, r5, r6, r12, lr}
 800135a:      	add	r0, sp, #4
 800135c:      	bl	#-1298
 8001360:      	add	sp, #32
 8001362:      	ldr	r11, [sp], #4
 8001366:      	pop	{r4, r5, r6, r7, pc}

08001368 <__cpsid>:
 8001368:      	cpsid i
 800136a:      	bx	lr

0800136c <__cpsie>:
 800136c:      	cpsie i
 800136e:      	bx	lr

08001370 <__primask>:
 8001370:      	mrs	r0, primask
 8001374:      	bx	lr

08001376 <HardFaultTrampoline>:
 8001376:      	mov	r0, lr
 8001378:      	movs	r1, #4
 800137a:      	tst	r0, r1
 800137c:      	bne	#4 <HardFaultTrampoline+0xe>
 800137e:      	mrs	r0, msp
 8001382:      	b	#4 <HardFault_>
 8001384:      	mrs	r0, psp
 8001388:      	b	#-2 <HardFault_>

0800138a <HardFault_>:
 800138a:      	b	#-4 <HardFault_>
