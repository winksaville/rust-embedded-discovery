
registers:	file format elf32-littlearm


Disassembly of section .text:

08000188 <Reset>:
; pub unsafe extern "C" fn Reset() -> ! {
 8000188:      	push	{r7, lr}
 800018a:      	mov	r7, sp
;     __pre_init();
 800018c:      	bl	#0xe7e
;     while sbss < ebss {
 8000190:      	movw	r0, #0x4
 8000194:      	movw	r1, #0x0
 8000198:      	movt	r0, #0x2000
 800019c:      	movt	r1, #0x2000
 80001a0:      	cmp	r1, r0
 80001a2:      	bhs	#0x28 <Reset+0x46>
 80001a4:      	movw	r1, #0x0
 80001a8:      	movs	r2, #0x0
 80001aa:      	movt	r1, #0x2000
;         intrinsics::volatile_store(dst, src);
 80001ae:      	str	r2, [r1], #4
;     while sbss < ebss {
 80001b2:      	cmp	r1, r0
;         intrinsics::volatile_store(dst, src);
 80001b4:      	itt	lo
 80001b6:      	strlo	r2, [r1], #4
;     while sbss < ebss {
 80001ba:      	cmplo	r1, r0
 80001bc:      	bhs	#0xe <Reset+0x46>
;         intrinsics::volatile_store(dst, src);
 80001be:      	str	r2, [r1], #4
;     while sbss < ebss {
 80001c2:      	cmp	r1, r0
 80001c4:      	bhs	#0x6 <Reset+0x46>
;         intrinsics::volatile_store(dst, src);
 80001c6:      	str	r2, [r1], #4
;     while sbss < ebss {
 80001ca:      	cmp	r1, r0
 80001cc:      	blo	#-0x22 <Reset+0x26>
;     while sdata < edata {
 80001ce:      	movw	r0, #0x0
 80001d2:      	movw	r1, #0x0
 80001d6:      	movt	r0, #0x2000
 80001da:      	movt	r1, #0x2000
 80001de:      	cmp	r1, r0
 80001e0:      	bhs	#0x38 <Reset+0x94>
 80001e2:      	movw	r1, #0x13f8
 80001e6:      	movw	r2, #0x0
 80001ea:      	movt	r1, #0x800
 80001ee:      	movt	r2, #0x2000
;         ptr::write(sdata, ptr::read(sidata));
 80001f2:      	ldr	r3, [r1]
;     unsafe { intrinsics::move_val_init(&mut *dst, src) }
 80001f4:      	str	r3, [r2], #4
;     while sdata < edata {
 80001f8:      	cmp	r2, r0
 80001fa:      	bhs	#0x1e <Reset+0x94>
;         ptr::write(sdata, ptr::read(sidata));
 80001fc:      	ldr	r3, [r1, #0x4]
;     unsafe { intrinsics::move_val_init(&mut *dst, src) }
 80001fe:      	str	r3, [r2], #4
;     while sdata < edata {
 8000202:      	cmp	r2, r0
 8000204:      	bhs	#0x14 <Reset+0x94>
;         ptr::write(sdata, ptr::read(sidata));
 8000206:      	ldr	r3, [r1, #0x8]
;     unsafe { intrinsics::move_val_init(&mut *dst, src) }
 8000208:      	str	r3, [r2], #4
;     while sdata < edata {
 800020c:      	cmp	r2, r0
 800020e:      	bhs	#0xa <Reset+0x94>
;         ptr::write(sdata, ptr::read(sidata));
 8000210:      	ldr	r3, [r1, #0xc]
;     while sdata < edata {
 8000212:      	adds	r1, #0x10
;     unsafe { intrinsics::move_val_init(&mut *dst, src) }
 8000214:      	str	r3, [r2], #4
;     while sdata < edata {
 8000218:      	cmp	r2, r0
 800021a:      	blo	#-0x2c <Reset+0x6a>
 800021c:      	movw	r0, #0xed88
 8000220:      	movt	r0, #0xe000
;                 *SCB_CPACR | SCB_CPACR_FPU_ENABLE | SCB_CPACR_FPU_USER,
 8000224:      	ldr	r1, [r0]
 8000226:      	orr	r1, r1, #0xf00000
;         intrinsics::volatile_store(dst, src);
 800022a:      	str	r1, [r0]
;             trampoline()
 800022c:      	bl	#0xdd2
 8000230:      	trap

08000232 <main>:
; #[entry]
 8000232:      	push	{r7, lr}
 8000234:      	mov	r7, sp
 8000236:      	bl	#0x2
 800023a:      	trap

0800023c <registers::__cortex_m_rt_main::h3be7bc15945145fb>:
; fn main() -> ! {
 800023c:      	push	{r7, lr}
 800023e:      	mov	r7, sp
;     aux7::init();
 8000240:      	bl	#0x10
 8000244:      	movw	r0, #0x1018
 8000248:      	mov.w	r1, #0x8000000
 800024c:      	movt	r0, #0x4800
;         *(GPIOE_BSRR as *mut u32) = 1 << (11 + 16);
 8000250:      	str	r1, [r0]
 8000252:      	b	#-0x4 <registers::__cortex_m_rt_main::h3be7bc15945145fb+0x16>

08000254 <aux7::init::h31c400847965e476>:
; pub fn init() -> (ITM, &'static gpioc::RegisterBlock) {
 8000254:      	push	{r4, r5, r6, r7, lr}
 8000256:      	add	r7, sp, #0xc
 8000258:      	str	r11, [sp, #-4]!
;                     unsafe { __primask() }
 800025c:      	bl	#0xfc8
;             if r & (1 << 0) == (1 << 0) {
 8000260:      	and	r5, r0, #0x1
;             __cpsid();
 8000264:      	bl	#0xfb8
;             if unsafe { TAKEN } {
 8000268:      	movw	r4, #0x0
 800026c:      	movt	r4, #0x2000
 8000270:      	ldrb	r0, [r4, #0x1]
 8000272:      	cmp	r0, #0x0
 8000274:      	itte	eq
 8000276:      	moveq	r6, #0x1
;         TAKEN = true;
 8000278:      	strbeq	r6, [r4, #0x1]
 800027a:      	movne	r6, #0x0
;     if primask.is_active() {
 800027c:      	cmp	r5, #0x0
;             __cpsie();
 800027e:      	it	eq
 8000280:      	bleq	#0xfa0
;             Some(val) => val,
 8000284:      	cmp	r6, #0x0
 8000286:      	beq.w	#0x104 <aux7::init::h31c400847965e476+0x13a>
;                     unsafe { __primask() }
 800028a:      	bl	#0xf9a
;             if r & (1 << 0) == (1 << 0) {
 800028e:      	and	r5, r0, #0x1
;             __cpsid();
 8000292:      	bl	#0xf8a
;             if unsafe { DEVICE_PERIPHERALS } {
 8000296:      	ldrb	r0, [r4]
 8000298:      	cmp	r0, #0x0
 800029a:      	itte	eq
 800029c:      	moveq	r6, #0x1
;         DEVICE_PERIPHERALS = true;
 800029e:      	strbeq	r6, [r4]
 80002a0:      	movne	r6, #0x0
;     if primask.is_active() {
 80002a2:      	cmp	r5, #0x0
;             __cpsie();
 80002a4:      	it	eq
 80002a6:      	bleq	#0xf7a
;             Some(val) => val,
 80002aa:      	cmp	r6, #0x0
 80002ac:      	itttt	ne
 80002ae:      	movwne	r0, #0x1028
 80002b2:      	movtne	r0, #0x4002
;     unsafe { intrinsics::volatile_load(src) }
 80002b6:      	ldrne	r1, [r0, #-20]
;         self.w.bits |= ((value & MASK) as u32) << OFFSET;
 80002ba:      	orrne	r1, r1, #0x200000
;         intrinsics::volatile_store(dst, src);
 80002be:      	itttt	ne
 80002c0:      	strne	r1, [r0, #-20]
;     unsafe { intrinsics::volatile_load(src) }
 80002c4:      	ldrne	r1, [r0]
;         self.w.bits |= ((value & MASK) as u32) << OFFSET;
 80002c6:      	orrne	r1, r1, #0x200000
;         intrinsics::volatile_store(dst, src);
 80002ca:      	strne	r1, [r0]
;     unsafe { intrinsics::volatile_load(src) }
 80002cc:      	itttt	ne
 80002ce:      	ldrne	r1, [r0]
;         self.w.bits &= !((MASK as u32) << OFFSET);
 80002d0:      	bicne	r1, r1, #0x200000
;         intrinsics::volatile_store(dst, src);
 80002d4:      	strne	r1, [r0]
 80002d6:      	movwne	r0, #0x1000
 80002da:      	itttt	ne
 80002dc:      	movtne	r0, #0x4800
;     unsafe { intrinsics::volatile_load(src) }
 80002e0:      	ldrne	r2, [r0]
 80002e2:      	movne	r1, #0x1
;                             w.bits((r.bits() & !(0b11 << offset)) | (mode << offset))
 80002e4:      	bfine	r2, r1, #18, #2
;         intrinsics::volatile_store(dst, src);
 80002e8:      	itttt	ne
 80002ea:      	strne	r2, [r0]
;     unsafe { intrinsics::volatile_load(src) }
 80002ec:      	ldrne	r2, [r0, #0x4]
;                             .modify(|r, w| unsafe { w.bits(r.bits() & !(0b1 << $i)) });
 80002ee:      	bicne	r2, r2, #0x200
;         intrinsics::volatile_store(dst, src);
 80002f2:      	strne	r2, [r0, #0x4]
;     unsafe { intrinsics::volatile_load(src) }
 80002f4:      	itttt	ne
 80002f6:      	ldrne	r2, [r0]
;                             w.bits((r.bits() & !(0b11 << offset)) | (mode << offset))
 80002f8:      	bfine	r2, r1, #20, #2
;         intrinsics::volatile_store(dst, src);
 80002fc:      	strne	r2, [r0]
;     unsafe { intrinsics::volatile_load(src) }
 80002fe:      	ldrne	r2, [r0, #0x4]
;                             .modify(|r, w| unsafe { w.bits(r.bits() & !(0b1 << $i)) });
 8000300:      	itttt	ne
 8000302:      	bicne	r2, r2, #0x400
;         intrinsics::volatile_store(dst, src);
 8000306:      	strne	r2, [r0, #0x4]
;     unsafe { intrinsics::volatile_load(src) }
 8000308:      	ldrne	r2, [r0]
;                             w.bits((r.bits() & !(0b11 << offset)) | (mode << offset))
 800030a:      	bfine	r2, r1, #22, #2
;         intrinsics::volatile_store(dst, src);
 800030e:      	itttt	ne
 8000310:      	strne	r2, [r0]
;     unsafe { intrinsics::volatile_load(src) }
 8000312:      	ldrne	r2, [r0, #0x4]
;                             .modify(|r, w| unsafe { w.bits(r.bits() & !(0b1 << $i)) });
 8000314:      	bicne	r2, r2, #0x800
;         intrinsics::volatile_store(dst, src);
 8000318:      	strne	r2, [r0, #0x4]
;     unsafe { intrinsics::volatile_load(src) }
 800031a:      	itttt	ne
 800031c:      	ldrne	r2, [r0]
;                             w.bits((r.bits() & !(0b11 << offset)) | (mode << offset))
 800031e:      	bfine	r2, r1, #24, #2
;         intrinsics::volatile_store(dst, src);
 8000322:      	strne	r2, [r0]
;     unsafe { intrinsics::volatile_load(src) }
 8000324:      	ldrne	r2, [r0, #0x4]
;                             .modify(|r, w| unsafe { w.bits(r.bits() & !(0b1 << $i)) });
 8000326:      	itttt	ne
 8000328:      	bicne	r2, r2, #0x1000
;         intrinsics::volatile_store(dst, src);
 800032c:      	strne	r2, [r0, #0x4]
;     unsafe { intrinsics::volatile_load(src) }
 800032e:      	ldrne	r2, [r0]
;                             w.bits((r.bits() & !(0b11 << offset)) | (mode << offset))
 8000330:      	bfine	r2, r1, #26, #2
;         intrinsics::volatile_store(dst, src);
 8000334:      	itttt	ne
 8000336:      	strne	r2, [r0]
;     unsafe { intrinsics::volatile_load(src) }
 8000338:      	ldrne	r2, [r0, #0x4]
;                             .modify(|r, w| unsafe { w.bits(r.bits() & !(0b1 << $i)) });
 800033a:      	bicne	r2, r2, #0x2000
;         intrinsics::volatile_store(dst, src);
 800033e:      	strne	r2, [r0, #0x4]
;     unsafe { intrinsics::volatile_load(src) }
 8000340:      	itttt	ne
 8000342:      	ldrne	r2, [r0]
;                             w.bits((r.bits() & !(0b11 << offset)) | (mode << offset))
 8000344:      	bfine	r2, r1, #28, #2
;         intrinsics::volatile_store(dst, src);
 8000348:      	strne	r2, [r0]
;     unsafe { intrinsics::volatile_load(src) }
 800034a:      	ldrne	r2, [r0, #0x4]
;                             .modify(|r, w| unsafe { w.bits(r.bits() & !(0b1 << $i)) });
 800034c:      	itttt	ne
 800034e:      	bicne	r2, r2, #0x4000
;         intrinsics::volatile_store(dst, src);
 8000352:      	strne	r2, [r0, #0x4]
;     unsafe { intrinsics::volatile_load(src) }
 8000354:      	ldrne	r2, [r0]
;                             w.bits((r.bits() & !(0b11 << offset)) | (mode << offset))
 8000356:      	bfine	r2, r1, #30, #2
;         intrinsics::volatile_store(dst, src);
 800035a:      	itttt	ne
 800035c:      	strne	r2, [r0]
;     unsafe { intrinsics::volatile_load(src) }
 800035e:      	ldrne	r2, [r0, #0x4]
;                             .modify(|r, w| unsafe { w.bits(r.bits() & !(0b1 << $i)) });
 8000360:      	bicne	r2, r2, #0x8000
;         intrinsics::volatile_store(dst, src);
 8000364:      	strne	r2, [r0, #0x4]
;     unsafe { intrinsics::volatile_load(src) }
 8000366:      	itttt	ne
 8000368:      	ldrne	r2, [r0]
;                             w.bits((r.bits() & !(0b11 << offset)) | (mode << offset))
 800036a:      	bfine	r2, r1, #16, #2
;         intrinsics::volatile_store(dst, src);
 800036e:      	strne	r2, [r0]
;     unsafe { intrinsics::volatile_load(src) }
 8000370:      	ldrne	r1, [r0, #0x4]
;                             .modify(|r, w| unsafe { w.bits(r.bits() & !(0b1 << $i)) });
 8000372:      	itttt	ne
 8000374:      	bicne	r1, r1, #0x100
;         intrinsics::volatile_store(dst, src);
 8000378:      	strne	r1, [r0, #0x4]
; }
 800037a:      	ldrne	r11, [sp], #4
 800037e:      	popne	{r4, r5, r6, r7, pc}
;             None => panic!("called `Option::unwrap()` on a `None` value"),
 8000380:      	movw	r0, #0x1280
 8000384:      	movt	r0, #0x800
 8000388:      	bl	#0x14
 800038c:      	trap
 800038e:      	movw	r0, #0x1270
 8000392:      	movt	r0, #0x800
 8000396:      	bl	#0x6
 800039a:      	trap

0800039c <core::ops::function::FnOnce::call_once::h5db7766b92da0352>:
 800039c:      	ldr	r0, [r0]
 800039e:      	b	#-0x4 <core::ops::function::FnOnce::call_once::h5db7766b92da0352+0x2>

080003a0 <core::panicking::panic::he8552e8d3d2cbe3a>:
 80003a0:      	push	{r7, lr}
 80003a2:      	mov	r7, sp
 80003a4:      	sub	sp, #0x20
 80003a6:      	movw	r2, #0x13cc
 80003aa:      	mov	r1, r0
 80003ac:      	movs	r0, #0x0
 80003ae:      	movt	r2, #0x800
 80003b2:      	str	r0, [sp, #0x14]
 80003b4:      	str	r2, [sp, #0x10]
 80003b6:      	strd	r0, r0, [sp, #8]
 80003ba:      	movs	r0, #0x1
 80003bc:      	str	r0, [sp, #0x4]
 80003be:      	add	r0, sp, #0x18
 80003c0:      	str	r0, [sp]
 80003c2:      	movs	r0, #0x2b
 80003c4:      	str	r0, [sp, #0x1c]
 80003c6:      	movw	r0, #0x1244
 80003ca:      	movt	r0, #0x800
 80003ce:      	str	r0, [sp, #0x18]
 80003d0:      	mov	r0, sp
 80003d2:      	bl	#0x296
 80003d6:      	trap

080003d8 <core::fmt::num::imp::<impl core::fmt::Display for u32>::fmt::h720dbf9c56765265>:
 80003d8:      	push	{r4, r5, r6, r7, lr}
 80003da:      	add	r7, sp, #0xc
 80003dc:      	push.w	{r8, r9, r10, r11}
 80003e0:      	sub	sp, #0x34
 80003e2:      	ldr	r5, [r0]
 80003e4:      	movw	r0, #0x2710
 80003e8:      	movw	lr, #0x851f
 80003ec:      	mov	r4, r1
 80003ee:      	cmp	r5, r0
 80003f0:      	movw	r0, #0x12c8
 80003f4:      	movw	r3, #0xff9c
 80003f8:      	movt	lr, #0x51eb
 80003fc:      	movt	r0, #0x800
 8000400:      	blo	#0x78 <core::fmt::num::imp::<impl core::fmt::Display for u32>::fmt::h720dbf9c56765265+0xa4>
 8000402:      	movw	r8, #0x1759
 8000406:      	movw	r10, #0xd8f0
 800040a:      	movw	r12, #0xe0ff
 800040e:      	add.w	r11, sp, #0xc
 8000412:      	movs	r6, #0x0
 8000414:      	movt	r8, #0xd1b7
 8000418:      	movt	r10, #0xffff
 800041c:      	movt	r12, #0x5f5
 8000420:      	str	r4, [sp, #0x8]
 8000422:      	umull	r2, r4, r5, r8
 8000426:      	cmp	r5, r12
 8000428:      	lsr.w	r2, r4, #0xd
 800042c:      	mla	r4, r2, r10, r5
 8000430:      	mov	r5, r2
 8000432:      	uxth	r1, r4
 8000434:      	umull	r1, r9, r1, lr
 8000438:      	lsr.w	r1, r9, #0x5
 800043c:      	mla	r4, r1, r3, r4
 8000440:      	add.w	r3, r11, r6
 8000444:      	ldrh.w	r1, [r0, r1, lsl #1]
 8000448:      	sub.w	r6, r6, #0x4
 800044c:      	strh.w	r1, [r3, #0x23]
 8000450:      	uxth	r4, r4
 8000452:      	ldrh.w	r4, [r0, r4, lsl #1]
 8000456:      	strh.w	r4, [r3, #0x25]
 800045a:      	movw	r3, #0xff9c
 800045e:      	bhi	#-0x40 <core::fmt::num::imp::<impl core::fmt::Display for u32>::fmt::h720dbf9c56765265+0x4a>
 8000460:      	ldr	r4, [sp, #0x8]
 8000462:      	adds	r6, #0x27
 8000464:      	mov	r5, r2
 8000466:      	cmp	r5, #0x63
 8000468:      	bgt	#0x16 <core::fmt::num::imp::<impl core::fmt::Display for u32>::fmt::h720dbf9c56765265+0xaa>
 800046a:      	mov	r1, r5
 800046c:      	cmp	r1, #0xa
 800046e:      	blt	#0x2c <core::fmt::num::imp::<impl core::fmt::Display for u32>::fmt::h720dbf9c56765265+0xc6>
 8000470:      	ldrh.w	r0, [r0, r1, lsl #1]
 8000474:      	subs	r2, r6, #0x2
 8000476:      	add	r1, sp, #0xc
 8000478:      	strh	r0, [r1, r2]
 800047a:      	b	#0x2a <core::fmt::num::imp::<impl core::fmt::Display for u32>::fmt::h720dbf9c56765265+0xd0>
 800047c:      	movs	r6, #0x27
 800047e:      	cmp	r5, #0x63
 8000480:      	ble	#-0x1a <core::fmt::num::imp::<impl core::fmt::Display for u32>::fmt::h720dbf9c56765265+0x92>
 8000482:      	uxth	r1, r5
 8000484:      	subs	r6, #0x2
 8000486:      	umull	r1, r2, r1, lr
 800048a:      	lsrs	r1, r2, #0x5
 800048c:      	mla	r2, r1, r3, r5
 8000490:      	add	r3, sp, #0xc
 8000492:      	uxth	r2, r2
 8000494:      	ldrh.w	r2, [r0, r2, lsl #1]
 8000498:      	strh	r2, [r3, r6]
 800049a:      	cmp	r1, #0xa
 800049c:      	bge	#-0x30 <core::fmt::num::imp::<impl core::fmt::Display for u32>::fmt::h720dbf9c56765265+0x98>
 800049e:      	subs	r2, r6, #0x1
 80004a0:      	add.w	r0, r1, #0x30
 80004a4:      	add	r1, sp, #0xc
 80004a6:      	strb	r0, [r1, r2]
 80004a8:      	ldr	r0, [r4]
 80004aa:      	add	r1, sp, #0xc
 80004ac:      	movw	r6, #0x13cc
 80004b0:      	add.w	r8, r1, r2
 80004b4:      	rsb.w	r9, r2, #0x27
 80004b8:      	ldr	r3, [r4, #0x8]
 80004ba:      	lsls	r2, r0, #0x1d
 80004bc:      	movt	r6, #0x800
 80004c0:      	ands	r1, r0, #0x1
 80004c4:      	mov.w	r5, #0x2b
 80004c8:      	and.w	r10, r6, r2, asr #31
 80004cc:      	it	eq
 80004ce:      	moveq.w	r5, #0x110000
 80004d2:      	cmp	r3, #0x1
 80004d4:      	bne	#0x34 <$t.7+0x8>
 80004d6:      	str.w	r8, [sp, #0x8]
 80004da:      	add.w	r11, r9, r1
 80004de:      	ldr.w	r8, [r4, #0xc]
 80004e2:      	cmp	r8, r11
 80004e4:      	bls	#0x34 <$t.7+0x18>
 80004e6:      	lsls	r0, r0, #0x1c
 80004e8:      	bmi	#0x62 <$t.7+0x4a>
 80004ea:      	ldrb.w	r2, [r4, #0x20]
 80004ee:      	sub.w	r1, r8, r11
 80004f2:      	movs	r0, #0x0
 80004f4:      	cmp	r2, #0x3
 80004f6:      	it	eq
 80004f8:      	moveq	r2, #0x1
 80004fa:      	mov	r8, r1
 80004fc:      	tbb	[pc, r2]

08000500 <$d.6>:
 8000500:	52 02 4e 02	.word	0x024e0252

08000504 <$t.7>:
 8000504:      	mov.w	r8, #0x0
 8000508:      	mov	r0, r1
 800050a:      	b	#0x96 <$t.9+0xe>
 800050c:      	mov	r0, r4
 800050e:      	mov	r1, r5
 8000510:      	mov	r2, r10
 8000512:      	bl	#0x190
 8000516:      	cbz	r0, #0x1c
 8000518:      	movs	r6, #0x1
 800051a:      	b	#0x50 <$t.7+0x6a>
 800051c:      	mov	r0, r4
 800051e:      	mov	r1, r5
 8000520:      	mov	r2, r10
 8000522:      	bl	#0x180
 8000526:      	cmp	r0, #0x0
 8000528:      	bne.w	#0xf6 <$t.9+0x8c>
 800052c:      	ldrd	r0, r1, [r4, #24]
 8000530:      	ldr	r3, [r1, #0xc]
 8000532:      	ldr	r1, [sp, #0x8]
 8000534:      	b	#0x6 <$t.7+0x3a>
 8000536:      	ldrd	r0, r1, [r4, #24]
 800053a:      	ldr	r3, [r1, #0xc]
 800053c:      	mov	r1, r8
 800053e:      	mov	r2, r9
 8000540:      	blx	r3
 8000542:      	mov	r6, r0
 8000544:      	mov	r0, r6
 8000546:      	add	sp, #0x34
 8000548:      	pop.w	{r8, r9, r10, r11}
 800054c:      	pop	{r4, r5, r6, r7, pc}
 800054e:      	ldr	r0, [r4, #0x4]
 8000550:      	movs	r6, #0x1
 8000552:      	ldrb.w	r1, [r4, #0x20]
 8000556:      	mov	r2, r10
 8000558:      	str	r0, [sp, #0x4]
 800055a:      	movs	r0, #0x30
 800055c:      	str	r1, [sp]
 800055e:      	mov	r1, r5
 8000560:      	str	r0, [r4, #0x4]
 8000562:      	mov	r0, r4
 8000564:      	strb.w	r6, [r4, #0x20]
 8000568:      	bl	#0x13a
 800056c:      	cbz	r0, #0x8
 800056e:      	mov	r0, r6
 8000570:      	add	sp, #0x34
 8000572:      	pop.w	{r8, r9, r10, r11}
 8000576:      	pop	{r4, r5, r6, r7, pc}
 8000578:      	ldrb.w	r2, [r4, #0x20]
 800057c:      	sub.w	r1, r8, r11
 8000580:      	movs	r0, #0x0
 8000582:      	cmp	r2, #0x3
 8000584:      	it	eq
 8000586:      	moveq	r2, #0x1
 8000588:      	mov	r6, r1
 800058a:      	ldr.w	r8, [sp, #0x8]
 800058e:      	tbb	[pc, r2]

08000592 <$d.8>:
 8000592:	34 02 31 02	.word	0x02310234

08000596 <$t.9>:
 8000596:      	movs	r6, #0x0
 8000598:      	mov	r0, r1
 800059a:      	b	#0x5c <$t.9+0x64>
 800059c:      	lsrs	r0, r1, #0x1
 800059e:      	adds	r1, #0x1
 80005a0:      	lsr.w	r8, r1, #0x1
 80005a4:      	adds	r6, r0, #0x1
 80005a6:      	subs	r6, #0x1
 80005a8:      	beq	#0xe <$t.9+0x24>
 80005aa:      	ldrd	r0, r2, [r4, #24]
 80005ae:      	ldr	r1, [r4, #0x4]
 80005b0:      	ldr	r2, [r2, #0x10]
 80005b2:      	blx	r2
 80005b4:      	cmp	r0, #0x0
 80005b6:      	beq	#-0x14 <$t.9+0x10>
 80005b8:      	b	#0x66 <$t.9+0x8c>
 80005ba:      	mov	r0, r4
 80005bc:      	mov	r1, r5
 80005be:      	mov	r2, r10
 80005c0:      	ldr.w	r11, [r4, #0x4]
 80005c4:      	bl	#0xde
 80005c8:      	cbnz	r0, #0x56
 80005ca:      	ldrd	r0, r1, [r4, #24]
 80005ce:      	mov	r2, r9
 80005d0:      	ldr	r3, [r1, #0xc]
 80005d2:      	ldr	r1, [sp, #0x8]
 80005d4:      	blx	r3
 80005d6:      	cbnz	r0, #0x48
 80005d8:      	ldrd	r10, r4, [r4, #24]
 80005dc:      	add.w	r5, r8, #0x1
 80005e0:      	movs	r6, #0x1
 80005e2:      	subs	r5, #0x1
 80005e4:      	beq	#0x62 <$t.9+0xb4>
 80005e6:      	ldr	r2, [r4, #0x10]
 80005e8:      	mov	r0, r10
 80005ea:      	mov	r1, r11
 80005ec:      	blx	r2
 80005ee:      	cmp	r0, #0x0
 80005f0:      	beq	#-0x12 <$t.9+0x4c>
 80005f2:      	b	#-0x88 <$t.7+0x6a>
 80005f4:      	lsrs	r0, r1, #0x1
 80005f6:      	adds	r1, #0x1
 80005f8:      	lsrs	r6, r1, #0x1
 80005fa:      	adds	r5, r0, #0x1
 80005fc:      	subs	r5, #0x1
 80005fe:      	beq	#0xe <$t.9+0x7a>
 8000600:      	ldrd	r0, r2, [r4, #24]
 8000604:      	ldr	r1, [r4, #0x4]
 8000606:      	ldr	r2, [r2, #0x10]
 8000608:      	blx	r2
 800060a:      	cmp	r0, #0x0
 800060c:      	beq	#-0x14 <$t.9+0x66>
 800060e:      	b	#0x10 <$t.9+0x8c>
 8000610:      	ldrd	r0, r1, [r4, #24]
 8000614:      	mov	r2, r9
 8000616:      	ldr	r3, [r1, #0xc]
 8000618:      	mov	r1, r8
 800061a:      	ldr.w	r10, [r4, #0x4]
 800061e:      	blx	r3
 8000620:      	cbz	r0, #0xa
 8000622:      	movs	r6, #0x1
 8000624:      	mov	r0, r6
 8000626:      	add	sp, #0x34
 8000628:      	pop.w	{r8, r9, r10, r11}
 800062c:      	pop	{r4, r5, r6, r7, pc}
 800062e:      	ldrd	r8, r9, [r4, #24]
 8000632:      	adds	r5, r6, #0x1
 8000634:      	movs	r6, #0x1
 8000636:      	subs	r5, #0x1
 8000638:      	beq	#0x1a <$t.9+0xc0>
 800063a:      	ldr.w	r2, [r9, #0x10]
 800063e:      	mov	r0, r8
 8000640:      	mov	r1, r10
 8000642:      	blx	r2
 8000644:      	cmp	r0, #0x0
 8000646:      	beq	#-0x14 <$t.9+0xa0>
 8000648:      	b	#-0xde <$t.7+0x6a>
 800064a:      	movs	r6, #0x0
 800064c:      	mov	r0, r6
 800064e:      	add	sp, #0x34
 8000650:      	pop.w	{r8, r9, r10, r11}
 8000654:      	pop	{r4, r5, r6, r7, pc}
 8000656:      	ldr	r0, [sp]
 8000658:      	movs	r6, #0x0
 800065a:      	strb.w	r0, [r4, #0x20]
 800065e:      	ldr	r0, [sp, #0x4]
 8000660:      	str	r0, [r4, #0x4]
 8000662:      	mov	r0, r6
 8000664:      	add	sp, #0x34
 8000666:      	pop.w	{r8, r9, r10, r11}
 800066a:      	pop	{r4, r5, r6, r7, pc}

0800066c <core::panicking::panic_fmt::h3d4fe709119df940>:
 800066c:      	push	{r7, lr}
 800066e:      	mov	r7, sp
 8000670:      	sub	sp, #0x10
 8000672:      	strd	r0, r1, [sp, #8]
 8000676:      	movw	r0, #0x12b8
 800067a:      	movt	r0, #0x800
 800067e:      	str	r0, [sp, #0x4]
 8000680:      	movw	r0, #0x13cc
 8000684:      	movt	r0, #0x800
 8000688:      	str	r0, [sp]
 800068a:      	mov	r0, sp
 800068c:      	bl	#0x980
 8000690:      	trap

08000692 <core::ptr::drop_in_place::h04a129b24451d075>:
 8000692:      	bx	lr

08000694 <<T as core::any::Any>::type_id::hffc3b5436e52a86a>:
 8000694:      	movw	r0, #0xc5a9
 8000698:      	movw	r1, #0x6b5c
 800069c:      	movt	r0, #0x6065
 80006a0:      	movt	r1, #0x3bd4
 80006a4:      	bx	lr

080006a6 <core::fmt::Formatter::pad_integral::write_prefix::h43274d4e4dd7a787>:
 80006a6:      	push	{r4, r5, r7, lr}
 80006a8:      	add	r7, sp, #0x8
 80006aa:      	mov	r4, r2
 80006ac:      	mov	r5, r0
 80006ae:      	cmp.w	r1, #0x110000
 80006b2:      	beq	#0xc <core::fmt::Formatter::pad_integral::write_prefix::h43274d4e4dd7a787+0x1c>
 80006b4:      	ldrd	r0, r2, [r5, #24]
 80006b8:      	ldr	r2, [r2, #0x10]
 80006ba:      	blx	r2
 80006bc:      	cbz	r0, #0x2
 80006be:      	movs	r0, #0x1
 80006c0:      	pop	{r4, r5, r7, pc}
 80006c2:      	cbz	r4, #0xe
 80006c4:      	ldrd	r0, r1, [r5, #24]
 80006c8:      	movs	r2, #0x0
 80006ca:      	ldr	r3, [r1, #0xc]
 80006cc:      	mov	r1, r4
 80006ce:      	pop.w	{r4, r5, r7, lr}
 80006d2:      	bx	r3
 80006d4:      	movs	r0, #0x0
 80006d6:      	pop	{r4, r5, r7, pc}

080006d8 <core::fmt::Formatter::pad::hdd2f8bc43cf2bd72>:
 80006d8:      	push	{r4, r5, r6, r7, lr}
 80006da:      	add	r7, sp, #0xc
 80006dc:      	push.w	{r8, r9, r10, r11}
 80006e0:      	sub	sp, #0xc
 80006e2:      	ldr.w	lr, [r0, #0x8]
 80006e6:      	mov	r10, r0
 80006e8:      	ldr	r0, [r0, #0x10]
 80006ea:      	mov	r9, r2
 80006ec:      	mov	r6, r1
 80006ee:      	cmp.w	lr, #0x1
 80006f2:      	bne	#0x1e <core::fmt::Formatter::pad::hdd2f8bc43cf2bd72+0x3c>
 80006f4:      	cmp	r0, #0x1
 80006f6:      	beq	#0x20 <core::fmt::Formatter::pad::hdd2f8bc43cf2bd72+0x42>
 80006f8:      	cmp.w	r9, #0x0
 80006fc:      	beq.w	#0x4e8 <core::fmt::Formatter::pad::hdd2f8bc43cf2bd72+0x510>
 8000700:      	sub.w	r8, r9, #0x1
 8000704:      	and	r4, r9, #0x3
 8000708:      	cmp.w	r8, #0x3
 800070c:      	bhs	#0xc0 <core::fmt::Formatter::pad::hdd2f8bc43cf2bd72+0xf8>
 800070e:      	movs	r3, #0x0
 8000710:      	mov	r1, r6
 8000712:      	b	#0x2ce <core::fmt::Formatter::pad::hdd2f8bc43cf2bd72+0x30c>
 8000714:      	cmp	r0, #0x1
 8000716:      	bne.w	#0x4dc <core::fmt::Formatter::pad::hdd2f8bc43cf2bd72+0x51e>
 800071a:      	ldr.w	r3, [r10, #0x14]
 800071e:      	add.w	r5, r6, r9
 8000722:      	movs	r2, #0x0
 8000724:      	str	r6, [sp, #0x8]
 8000726:      	cbnz	r3, #0x4c
 8000728:      	cmp	r5, r6
 800072a:      	beq.w	#0x4a4 <core::fmt::Formatter::pad::hdd2f8bc43cf2bd72+0x4fa>
 800072e:      	mov	r1, r6
 8000730:      	ldrsb	r0, [r1], #1
 8000734:      	cmp.w	r0, #0xffffffff
 8000738:      	ble	#0xb8 <core::fmt::Formatter::pad::hdd2f8bc43cf2bd72+0x11c>
 800073a:      	ldr	r6, [sp, #0x8]
 800073c:      	cmp	r2, #0x0
 800073e:      	it	ne
 8000740:      	cmpne	r2, r9
 8000742:      	bne.w	#0x1e8 <core::fmt::Formatter::pad::hdd2f8bc43cf2bd72+0x256>
 8000746:      	mov	r0, r6
 8000748:      	b	#0x1f4 <core::fmt::Formatter::pad::hdd2f8bc43cf2bd72+0x268>
 800074a:      	ldrb	r6, [r1], #1
 800074e:      	and	r8, r6, #0x3f
 8000752:      	mov	r6, r1
 8000754:      	mov.w	r1, #0x1c0000
 8000758:      	and.w	r0, r1, r0, lsl #18
 800075c:      	orr.w	r0, r0, r11, lsl #12
 8000760:      	orr.w	r0, r0, r12, lsl #6
 8000764:      	add	r0, r8
 8000766:      	cmp.w	r0, #0x110000
 800076a:      	beq.w	#0x464 <core::fmt::Formatter::pad::hdd2f8bc43cf2bd72+0x4fa>
 800076e:      	subs	r0, r6, r4
 8000770:      	subs	r3, #0x1
 8000772:      	add	r2, r0
 8000774:      	beq	#-0x50 <core::fmt::Formatter::pad::hdd2f8bc43cf2bd72+0x50>
 8000776:      	cmp	r5, r6
 8000778:      	beq.w	#0x456 <core::fmt::Formatter::pad::hdd2f8bc43cf2bd72+0x4fa>
 800077c:      	mov	r4, r6
 800077e:      	ldrsb	r0, [r6], #1
 8000782:      	cmp.w	r0, #0xffffffff
 8000786:      	bgt	#-0x1c <core::fmt::Formatter::pad::hdd2f8bc43cf2bd72+0x96>
 8000788:      	uxtb	r0, r0
 800078a:      	cmp	r6, r5
 800078c:      	beq	#0xe <core::fmt::Formatter::pad::hdd2f8bc43cf2bd72+0xc6>
 800078e:      	ldrb	r1, [r4, #0x1]
 8000790:      	adds	r6, r4, #0x2
 8000792:      	and	r11, r1, #0x3f
 8000796:      	mov	r1, r6
 8000798:      	cmp	r0, #0xe0
 800079a:      	blo	#-0x30 <core::fmt::Formatter::pad::hdd2f8bc43cf2bd72+0x96>
 800079c:      	b	#0x8 <core::fmt::Formatter::pad::hdd2f8bc43cf2bd72+0xd0>
 800079e:      	mov.w	r11, #0x0
 80007a2:      	mov	r1, r5
 80007a4:      	cmp	r0, #0xe0
 80007a6:      	blo	#-0x3c <core::fmt::Formatter::pad::hdd2f8bc43cf2bd72+0x96>
 80007a8:      	cmp	r1, r5
 80007aa:      	beq	#0xe <core::fmt::Formatter::pad::hdd2f8bc43cf2bd72+0xe4>
 80007ac:      	ldrb	r6, [r1], #1
 80007b0:      	and	r12, r6, #0x3f
 80007b4:      	mov	r6, r1
 80007b6:      	cmp	r0, #0xf0
 80007b8:      	blo	#-0x4e <core::fmt::Formatter::pad::hdd2f8bc43cf2bd72+0x96>
 80007ba:      	b	#0x8 <core::fmt::Formatter::pad::hdd2f8bc43cf2bd72+0xee>
 80007bc:      	mov.w	r12, #0x0
 80007c0:      	mov	r1, r5
 80007c2:      	cmp	r0, #0xf0
 80007c4:      	blo	#-0x5a <core::fmt::Formatter::pad::hdd2f8bc43cf2bd72+0x96>
 80007c6:      	cmp	r1, r5
 80007c8:      	bne	#-0x82 <core::fmt::Formatter::pad::hdd2f8bc43cf2bd72+0x72>
 80007ca:      	mov.w	r8, #0x0
 80007ce:      	b	#-0x7e <core::fmt::Formatter::pad::hdd2f8bc43cf2bd72+0x7c>
 80007d0:      	sub.w	r0, r9, #0x4
 80007d4:      	bic	r1, r0, #0x3
 80007d8:      	movs	r0, #0x1
 80007da:      	cmp	r1, #0xc
 80007dc:      	add.w	r0, r0, r1, lsr #2
 80007e0:      	and	r12, r0, #0x3
 80007e4:      	bhs	#0x26 <core::fmt::Formatter::pad::hdd2f8bc43cf2bd72+0x136>
 80007e6:      	movs	r3, #0x0
 80007e8:      	mov	r1, r6
 80007ea:      	cmp.w	r12, #0x0
 80007ee:      	bne.w	#0x100 <core::fmt::Formatter::pad::hdd2f8bc43cf2bd72+0x21a>
 80007f2:      	b	#0x1ee <core::fmt::Formatter::pad::hdd2f8bc43cf2bd72+0x30c>
 80007f4:      	uxtb	r0, r0
 80007f6:      	cmp	r1, r5
 80007f8:      	beq.w	#0x194 <core::fmt::Formatter::pad::hdd2f8bc43cf2bd72+0x2b8>
 80007fc:      	ldrb	r3, [r6, #0x1]
 80007fe:      	adds	r1, r6, #0x2
 8000800:      	and	r3, r3, #0x3f
 8000804:      	lsls	r3, r3, #0x6
 8000806:      	cmp	r0, #0xe0
 8000808:      	bhs.w	#0x18e <core::fmt::Formatter::pad::hdd2f8bc43cf2bd72+0x2c2>
 800080c:      	b	#-0xd6 <core::fmt::Formatter::pad::hdd2f8bc43cf2bd72+0x62>
 800080e:      	bic	r0, r0, #0x3
 8000812:      	movs	r3, #0x0
 8000814:      	rsbs	r0, r0, #0
 8000816:      	mov	r1, r6
 8000818:      	str	r4, [sp, #0x4]
 800081a:      	str	r6, [sp, #0x8]
 800081c:      	ldrb	r4, [r1]
 800081e:      	ldrb	r5, [r1, #0x1]
 8000820:      	ldrb	r2, [r1, #0x2]
 8000822:      	and	lr, r4, #0xc0
 8000826:      	ldrb	r6, [r1, #0x3]
 8000828:      	cmp.w	lr, #0x80
 800082c:      	ldrb.w	r11, [r1, #0xf]
 8000830:      	and	r5, r5, #0xc0
 8000834:      	ldrb	r4, [r1, #0xe]
 8000836:      	it	eq
 8000838:      	addeq	r3, #0x1
 800083a:      	ldrb.w	lr, [r1, #0xd]
 800083e:      	cmp	r5, #0x80
 8000840:      	it	eq
 8000842:      	addeq	r3, #0x1
 8000844:      	and	r2, r2, #0xc0
 8000848:      	ldrb	r5, [r1, #0x4]
 800084a:      	cmp	r2, #0x80
 800084c:      	it	eq
 800084e:      	addeq	r3, #0x1
 8000850:      	and	r2, r6, #0xc0
 8000854:      	ldrb	r6, [r1, #0x5]
 8000856:      	cmp	r2, #0x80
 8000858:      	it	eq
 800085a:      	addeq	r3, #0x1
 800085c:      	and	r2, r5, #0xc0
 8000860:      	ldrb	r5, [r1, #0x6]
 8000862:      	cmp	r2, #0x80
 8000864:      	it	eq
 8000866:      	addeq	r3, #0x1
 8000868:      	and	r2, r6, #0xc0
 800086c:      	ldrb	r6, [r1, #0x7]
 800086e:      	cmp	r2, #0x80
 8000870:      	it	eq
 8000872:      	addeq	r3, #0x1
 8000874:      	and	r2, r5, #0xc0
 8000878:      	ldrb	r5, [r1, #0x8]
 800087a:      	cmp	r2, #0x80
 800087c:      	it	eq
 800087e:      	addeq	r3, #0x1
 8000880:      	and	r2, r6, #0xc0
 8000884:      	ldrb	r6, [r1, #0x9]
 8000886:      	cmp	r2, #0x80
 8000888:      	it	eq
 800088a:      	addeq	r3, #0x1
 800088c:      	and	r2, r5, #0xc0
 8000890:      	ldrb	r5, [r1, #0xa]
 8000892:      	cmp	r2, #0x80
 8000894:      	it	eq
 8000896:      	addeq	r3, #0x1
 8000898:      	and	r2, r6, #0xc0
 800089c:      	cmp	r2, #0x80
 800089e:      	ldrb	r6, [r1, #0xc]
 80008a0:      	it	eq
 80008a2:      	addeq	r3, #0x1
 80008a4:      	and	r2, r5, #0xc0
 80008a8:      	ldrb	r5, [r1, #0xb]
 80008aa:      	cmp	r2, #0x80
 80008ac:      	it	eq
 80008ae:      	addeq	r3, #0x1
 80008b0:      	adds	r1, #0x10
 80008b2:      	and	r2, r5, #0xc0
 80008b6:      	cmp	r2, #0x80
 80008b8:      	and	r2, r6, #0xc0
 80008bc:      	it	eq
 80008be:      	addeq	r3, #0x1
 80008c0:      	cmp	r2, #0x80
 80008c2:      	and	r2, lr, #0xc0
 80008c6:      	it	eq
 80008c8:      	addeq	r3, #0x1
 80008ca:      	cmp	r2, #0x80
 80008cc:      	and	r2, r4, #0xc0
 80008d0:      	it	eq
 80008d2:      	addeq	r3, #0x1
 80008d4:      	cmp	r2, #0x80
 80008d6:      	and	r2, r11, #0xc0
 80008da:      	it	eq
 80008dc:      	addeq	r3, #0x1
 80008de:      	cmp	r2, #0x80
 80008e0:      	it	eq
 80008e2:      	addeq	r3, #0x1
 80008e4:      	adds	r0, #0x4
 80008e6:      	bne	#-0xce <core::fmt::Formatter::pad::hdd2f8bc43cf2bd72+0x144>
 80008e8:      	ldrd	r4, r6, [sp, #4]
 80008ec:      	cmp.w	r12, #0x0
 80008f0:      	beq	#0xf0 <core::fmt::Formatter::pad::hdd2f8bc43cf2bd72+0x30c>
 80008f2:      	ldrb	r0, [r1]
 80008f4:      	mov	lr, r6
 80008f6:      	ldrb	r2, [r1, #0x1]
 80008f8:      	and	r0, r0, #0xc0
 80008fc:      	ldrb	r6, [r1, #0x2]
 80008fe:      	cmp	r0, #0x80
 8000900:      	ldrb	r5, [r1, #0x3]
 8000902:      	and	r0, r2, #0xc0
 8000906:      	it	eq
 8000908:      	addeq	r3, #0x1
 800090a:      	cmp	r0, #0x80
 800090c:      	and	r0, r6, #0xc0
 8000910:      	it	eq
 8000912:      	addeq	r3, #0x1
 8000914:      	cmp	r0, #0x80
 8000916:      	and	r0, r5, #0xc0
 800091a:      	it	eq
 800091c:      	addeq	r3, #0x1
 800091e:      	cmp	r0, #0x80
 8000920:      	it	eq
 8000922:      	addeq	r3, #0x1
 8000924:      	cmp.w	r12, #0x1
 8000928:      	bne	#0x2a <core::fmt::Formatter::pad::hdd2f8bc43cf2bd72+0x27e>
 800092a:      	adds	r1, #0x4
 800092c:      	b	#0xb2 <core::fmt::Formatter::pad::hdd2f8bc43cf2bd72+0x30a>
 800092e:      	cmp	r2, r9
 8000930:      	bhs	#0x8 <core::fmt::Formatter::pad::hdd2f8bc43cf2bd72+0x264>
 8000932:      	ldrsb	r0, [r6, r2]
 8000934:      	cmn.w	r0, #0x40
 8000938:      	bge.w	#-0x1f6 <core::fmt::Formatter::pad::hdd2f8bc43cf2bd72+0x6e>
 800093c:      	movs	r0, #0x0
 800093e:      	movs	r2, #0x0
 8000940:      	cmp	r0, #0x0
 8000942:      	ite	eq
 8000944:      	moveq	r2, r9
 8000946:      	movne	r6, r0
 8000948:      	cmp.w	lr, #0x1
 800094c:      	beq.w	#0x28e <core::fmt::Formatter::pad::hdd2f8bc43cf2bd72+0x506>
 8000950:      	ldrd	r0, r1, [r10, #24]
 8000954:      	b	#0x2a8 <core::fmt::Formatter::pad::hdd2f8bc43cf2bd72+0x528>
 8000956:      	ldrb	r0, [r1, #0x4]
 8000958:      	ldrb	r2, [r1, #0x5]
 800095a:      	and	r0, r0, #0xc0
 800095e:      	ldrb	r6, [r1, #0x6]
 8000960:      	cmp	r0, #0x80
 8000962:      	ldrb	r5, [r1, #0x7]
 8000964:      	and	r0, r2, #0xc0
 8000968:      	it	eq
 800096a:      	addeq	r3, #0x1
 800096c:      	cmp	r0, #0x80
 800096e:      	and	r0, r6, #0xc0
 8000972:      	it	eq
 8000974:      	addeq	r3, #0x1
 8000976:      	cmp	r0, #0x80
 8000978:      	and	r0, r5, #0xc0
 800097c:      	it	eq
 800097e:      	addeq	r3, #0x1
 8000980:      	cmp	r0, #0x80
 8000982:      	it	eq
 8000984:      	addeq	r3, #0x1
 8000986:      	cmp.w	r12, #0x2
 800098a:      	bne	#0x22 <core::fmt::Formatter::pad::hdd2f8bc43cf2bd72+0x2d8>
 800098c:      	adds	r1, #0x8
 800098e:      	b	#0x50 <core::fmt::Formatter::pad::hdd2f8bc43cf2bd72+0x30a>
 8000990:      	movs	r3, #0x0
 8000992:      	mov	r1, r5
 8000994:      	cmp	r0, #0xe0
 8000996:      	blo.w	#-0x260 <core::fmt::Formatter::pad::hdd2f8bc43cf2bd72+0x62>
 800099a:      	cmp	r1, r5
 800099c:      	beq.w	#0x204 <core::fmt::Formatter::pad::hdd2f8bc43cf2bd72+0x4cc>
 80009a0:      	ldrb	r6, [r1], #1
 80009a4:      	and	r6, r6, #0x3f
 80009a8:      	cmp	r0, #0xf0
 80009aa:      	blo.w	#-0x274 <core::fmt::Formatter::pad::hdd2f8bc43cf2bd72+0x62>
 80009ae:      	b	#0x1fc <core::fmt::Formatter::pad::hdd2f8bc43cf2bd72+0x4d6>
 80009b0:      	ldrb	r0, [r1, #0x8]
 80009b2:      	ldrb	r2, [r1, #0x9]
 80009b4:      	and	r0, r0, #0xc0
 80009b8:      	ldrb	r6, [r1, #0xa]
 80009ba:      	ldrb	r5, [r1, #0xb]
 80009bc:      	cmp	r0, #0x80
 80009be:      	it	eq
 80009c0:      	addeq	r3, #0x1
 80009c2:      	and	r0, r2, #0xc0
 80009c6:      	cmp	r0, #0x80
 80009c8:      	it	eq
 80009ca:      	addeq	r3, #0x1
 80009cc:      	and	r0, r6, #0xc0
 80009d0:      	adds	r1, #0xc
 80009d2:      	cmp	r0, #0x80
 80009d4:      	it	eq
 80009d6:      	addeq	r3, #0x1
 80009d8:      	and	r0, r5, #0xc0
 80009dc:      	cmp	r0, #0x80
 80009de:      	it	eq
 80009e0:      	addeq	r3, #0x1
 80009e2:      	mov	r6, lr
 80009e4:      	cbz	r4, #0x2a
 80009e6:      	ldrb	r0, [r1]
 80009e8:      	and	r0, r0, #0xc0
 80009ec:      	cmp	r0, #0x80
 80009ee:      	it	eq
 80009f0:      	addeq	r3, #0x1
 80009f2:      	cmp	r4, #0x1
 80009f4:      	beq	#0x1a <core::fmt::Formatter::pad::hdd2f8bc43cf2bd72+0x33a>
 80009f6:      	ldrb	r0, [r1, #0x1]
 80009f8:      	and	r0, r0, #0xc0
 80009fc:      	cmp	r0, #0x80
 80009fe:      	it	eq
 8000a00:      	addeq	r3, #0x1
 8000a02:      	cmp	r4, #0x2
 8000a04:      	beq	#0xa <core::fmt::Formatter::pad::hdd2f8bc43cf2bd72+0x33a>
 8000a06:      	ldrb	r0, [r1, #0x2]
 8000a08:      	and	r0, r0, #0xc0
 8000a0c:      	cmp	r0, #0x80
 8000a0e:      	it	eq
 8000a10:      	addeq	r3, #0x1
 8000a12:      	ldr.w	lr, [r10, #0xc]
 8000a16:      	sub.w	r0, r9, r3
 8000a1a:      	cmp	r0, lr
 8000a1c:      	bhs.w	#0x1d6 <core::fmt::Formatter::pad::hdd2f8bc43cf2bd72+0x51e>
 8000a20:      	cmp.w	r8, #0x3
 8000a24:      	bhs	#0x4 <core::fmt::Formatter::pad::hdd2f8bc43cf2bd72+0x354>
 8000a26:      	movs	r2, #0x0
 8000a28:      	mov	r3, r6
 8000a2a:      	b	#0x21a <core::fmt::Formatter::pad::hdd2f8bc43cf2bd72+0x570>
 8000a2c:      	sub.w	r0, r9, #0x4
 8000a30:      	bic	r2, r0, #0x3
 8000a34:      	movs	r0, #0x1
 8000a36:      	cmp	r2, #0xc
 8000a38:      	add.w	r0, r0, r2, lsr #2
 8000a3c:      	and	r12, r0, #0x3
 8000a40:      	bhs	#0x4 <core::fmt::Formatter::pad::hdd2f8bc43cf2bd72+0x370>
 8000a42:      	movs	r2, #0x0
 8000a44:      	mov	r3, r6
 8000a46:      	b	#0xda <core::fmt::Formatter::pad::hdd2f8bc43cf2bd72+0x44c>
 8000a48:      	bic	r0, r0, #0x3
 8000a4c:      	str	r4, [sp, #0x4]
 8000a4e:      	rsbs	r4, r0, #0
 8000a50:      	movs	r2, #0x0
 8000a52:      	mov	r3, r6
 8000a54:      	str	r6, [sp, #0x8]
 8000a56:      	ldrb	r6, [r3]
 8000a58:      	ldrb	r5, [r3, #0x1]
 8000a5a:      	ldrb	r1, [r3, #0x2]
 8000a5c:      	and	r6, r6, #0xc0
 8000a60:      	ldrb	r0, [r3, #0x3]
 8000a62:      	cmp	r6, #0x80
 8000a64:      	ldrb.w	r8, [r3, #0xf]
 8000a68:      	and	r6, r5, #0xc0
 8000a6c:      	ldrb.w	r11, [r3, #0xe]
 8000a70:      	it	eq
 8000a72:      	addeq	r2, #0x1
 8000a74:      	ldrb	r5, [r3, #0xd]
 8000a76:      	cmp	r6, #0x80
 8000a78:      	it	eq
 8000a7a:      	addeq	r2, #0x1
 8000a7c:      	and	r1, r1, #0xc0
 8000a80:      	ldrb	r6, [r3, #0x4]
 8000a82:      	cmp	r1, #0x80
 8000a84:      	it	eq
 8000a86:      	addeq	r2, #0x1
 8000a88:      	and	r0, r0, #0xc0
 8000a8c:      	ldrb	r1, [r3, #0x5]
 8000a8e:      	cmp	r0, #0x80
 8000a90:      	it	eq
 8000a92:      	addeq	r2, #0x1
 8000a94:      	and	r0, r6, #0xc0
 8000a98:      	ldrb	r6, [r3, #0x6]
 8000a9a:      	cmp	r0, #0x80
 8000a9c:      	it	eq
 8000a9e:      	addeq	r2, #0x1
 8000aa0:      	and	r0, r1, #0xc0
 8000aa4:      	ldrb	r1, [r3, #0x7]
 8000aa6:      	cmp	r0, #0x80
 8000aa8:      	it	eq
 8000aaa:      	addeq	r2, #0x1
 8000aac:      	and	r0, r6, #0xc0
 8000ab0:      	ldrb	r6, [r3, #0x8]
 8000ab2:      	cmp	r0, #0x80
 8000ab4:      	it	eq
 8000ab6:      	addeq	r2, #0x1
 8000ab8:      	and	r0, r1, #0xc0
 8000abc:      	ldrb	r1, [r3, #0x9]
 8000abe:      	cmp	r0, #0x80
 8000ac0:      	it	eq
 8000ac2:      	addeq	r2, #0x1
 8000ac4:      	and	r0, r6, #0xc0
 8000ac8:      	ldrb	r6, [r3, #0xa]
 8000aca:      	cmp	r0, #0x80
 8000acc:      	it	eq
 8000ace:      	addeq	r2, #0x1
 8000ad0:      	and	r0, r1, #0xc0
 8000ad4:      	cmp	r0, #0x80
 8000ad6:      	ldrb	r1, [r3, #0xc]
 8000ad8:      	it	eq
 8000ada:      	addeq	r2, #0x1
 8000adc:      	and	r0, r6, #0xc0
 8000ae0:      	ldrb	r6, [r3, #0xb]
 8000ae2:      	cmp	r0, #0x80
 8000ae4:      	it	eq
 8000ae6:      	addeq	r2, #0x1
 8000ae8:      	adds	r3, #0x10
 8000aea:      	and	r0, r6, #0xc0
 8000aee:      	cmp	r0, #0x80
 8000af0:      	and	r0, r1, #0xc0
 8000af4:      	it	eq
 8000af6:      	addeq	r2, #0x1
 8000af8:      	cmp	r0, #0x80
 8000afa:      	and	r0, r5, #0xc0
 8000afe:      	it	eq
 8000b00:      	addeq	r2, #0x1
 8000b02:      	cmp	r0, #0x80
 8000b04:      	and	r0, r11, #0xc0
 8000b08:      	it	eq
 8000b0a:      	addeq	r2, #0x1
 8000b0c:      	cmp	r0, #0x80
 8000b0e:      	and	r0, r8, #0xc0
 8000b12:      	it	eq
 8000b14:      	addeq	r2, #0x1
 8000b16:      	cmp	r0, #0x80
 8000b18:      	it	eq
 8000b1a:      	addeq	r2, #0x1
 8000b1c:      	adds	r4, #0x4
 8000b1e:      	bne	#-0xcc <core::fmt::Formatter::pad::hdd2f8bc43cf2bd72+0x37e>
 8000b20:      	ldrd	r4, r6, [sp, #4]
 8000b24:      	cmp.w	r12, #0x0
 8000b28:      	beq.w	#0x11c <core::fmt::Formatter::pad::hdd2f8bc43cf2bd72+0x570>
 8000b2c:      	ldrb	r0, [r3]
 8000b2e:      	ldrb	r1, [r3, #0x1]
 8000b30:      	and	r0, r0, #0xc0
 8000b34:      	ldrb	r5, [r3, #0x2]
 8000b36:      	cmp	r0, #0x80
 8000b38:      	ldrb.w	r8, [r3, #0x3]
 8000b3c:      	and	r0, r1, #0xc0
 8000b40:      	it	eq
 8000b42:      	addeq	r2, #0x1
 8000b44:      	cmp	r0, #0x80
 8000b46:      	and	r0, r5, #0xc0
 8000b4a:      	it	eq
 8000b4c:      	addeq	r2, #0x1
 8000b4e:      	cmp	r0, #0x80
 8000b50:      	and	r0, r8, #0xc0
 8000b54:      	it	eq
 8000b56:      	addeq	r2, #0x1
 8000b58:      	cmp	r0, #0x80
 8000b5a:      	it	eq
 8000b5c:      	addeq	r2, #0x1
 8000b5e:      	cmp.w	r12, #0x1
 8000b62:      	bne	#0x2 <core::fmt::Formatter::pad::hdd2f8bc43cf2bd72+0x490>
 8000b64:      	adds	r3, #0x4
 8000b66:      	b	#0xde <core::fmt::Formatter::pad::hdd2f8bc43cf2bd72+0x570>
 8000b68:      	ldrb	r0, [r3, #0x4]
 8000b6a:      	ldrb	r1, [r3, #0x5]
 8000b6c:      	and	r0, r0, #0xc0
 8000b70:      	ldrb	r5, [r3, #0x6]
 8000b72:      	cmp	r0, #0x80
 8000b74:      	ldrb.w	r8, [r3, #0x7]
 8000b78:      	and	r0, r1, #0xc0
 8000b7c:      	it	eq
 8000b7e:      	addeq	r2, #0x1
 8000b80:      	cmp	r0, #0x80
 8000b82:      	and	r0, r5, #0xc0
 8000b86:      	it	eq
 8000b88:      	addeq	r2, #0x1
 8000b8a:      	cmp	r0, #0x80
 8000b8c:      	and	r0, r8, #0xc0
 8000b90:      	it	eq
 8000b92:      	addeq	r2, #0x1
 8000b94:      	cmp	r0, #0x80
 8000b96:      	it	eq
 8000b98:      	addeq	r2, #0x1
 8000b9a:      	cmp.w	r12, #0x2
 8000b9e:      	bne	#0x6e <core::fmt::Formatter::pad::hdd2f8bc43cf2bd72+0x538>
 8000ba0:      	adds	r3, #0x8
 8000ba2:      	b	#0xa2 <core::fmt::Formatter::pad::hdd2f8bc43cf2bd72+0x570>
 8000ba4:      	movs	r6, #0x0
 8000ba6:      	mov	r1, r5
 8000ba8:      	cmp	r0, #0xf0
 8000baa:      	blo.w	#-0x474 <core::fmt::Formatter::pad::hdd2f8bc43cf2bd72+0x62>
 8000bae:      	orrs	r3, r6
 8000bb0:      	mov.w	r6, #0x1c0000
 8000bb4:      	and.w	r0, r6, r0, lsl #18
 8000bb8:      	cmp	r1, r5
 8000bba:      	orr.w	r0, r0, r3, lsl #6
 8000bbe:      	itte	ne
 8000bc0:      	ldrbne	r1, [r1]
 8000bc2:      	andne	r1, r1, #0x3f
 8000bc6:      	moveq	r1, #0x0
 8000bc8:      	add	r0, r1
 8000bca:      	cmp.w	r0, #0x110000
 8000bce:      	bne.w	#-0x498 <core::fmt::Formatter::pad::hdd2f8bc43cf2bd72+0x62>
 8000bd2:      	mov	r2, r9
 8000bd4:      	ldr	r6, [sp, #0x8]
 8000bd6:      	cmp.w	lr, #0x1
 8000bda:      	bne.w	#-0x28e <core::fmt::Formatter::pad::hdd2f8bc43cf2bd72+0x278>
 8000bde:      	mov	r9, r2
 8000be0:      	cmp.w	r9, #0x0
 8000be4:      	bne.w	#-0x4e8 <core::fmt::Formatter::pad::hdd2f8bc43cf2bd72+0x28>
 8000be8:      	ldr.w	lr, [r10, #0xc]
 8000bec:      	cmp.w	lr, #0x0
 8000bf0:      	beq	#0x2 <core::fmt::Formatter::pad::hdd2f8bc43cf2bd72+0x51e>
 8000bf2:      	movs	r2, #0x0
 8000bf4:      	b	#0x7e <core::fmt::Formatter::pad::hdd2f8bc43cf2bd72+0x59e>
 8000bf6:      	ldr.w	r1, [r10, #0x1c]
 8000bfa:      	mov	r2, r9
 8000bfc:      	ldr.w	r0, [r10, #0x18]
 8000c00:      	ldr	r3, [r1, #0xc]
 8000c02:      	mov	r1, r6
 8000c04:      	add	sp, #0xc
 8000c06:      	pop.w	{r8, r9, r10, r11}
 8000c0a:      	pop.w	{r4, r5, r6, r7, lr}
 8000c0e:      	bx	r3
 8000c10:      	ldrb	r0, [r3, #0x8]
 8000c12:      	mov	r5, r6
 8000c14:      	ldrb	r1, [r3, #0x9]
 8000c16:      	and	r0, r0, #0xc0
 8000c1a:      	ldrb	r6, [r3, #0xa]
 8000c1c:      	ldrb.w	r12, [r3, #0xb]
 8000c20:      	cmp	r0, #0x80
 8000c22:      	it	eq
 8000c24:      	addeq	r2, #0x1
 8000c26:      	and	r0, r1, #0xc0
 8000c2a:      	cmp	r0, #0x80
 8000c2c:      	and	r0, r6, #0xc0
 8000c30:      	it	eq
 8000c32:      	addeq	r2, #0x1
 8000c34:      	cmp	r0, #0x80
 8000c36:      	it	eq
 8000c38:      	addeq	r2, #0x1
 8000c3a:      	and	r0, r12, #0xc0
 8000c3e:      	cmp	r0, #0x80
 8000c40:      	mov	r6, r5
 8000c42:      	it	eq
 8000c44:      	addeq	r2, #0x1
 8000c46:      	adds	r3, #0xc
 8000c48:      	cbz	r4, #0x2a
 8000c4a:      	ldrb	r0, [r3]
 8000c4c:      	and	r0, r0, #0xc0
 8000c50:      	cmp	r0, #0x80
 8000c52:      	it	eq
 8000c54:      	addeq	r2, #0x1
 8000c56:      	cmp	r4, #0x1
 8000c58:      	beq	#0x1a <core::fmt::Formatter::pad::hdd2f8bc43cf2bd72+0x59e>
 8000c5a:      	ldrb	r0, [r3, #0x1]
 8000c5c:      	and	r0, r0, #0xc0
 8000c60:      	cmp	r0, #0x80
 8000c62:      	it	eq
 8000c64:      	addeq	r2, #0x1
 8000c66:      	cmp	r4, #0x2
 8000c68:      	beq	#0xa <core::fmt::Formatter::pad::hdd2f8bc43cf2bd72+0x59e>
 8000c6a:      	ldrb	r0, [r3, #0x2]
 8000c6c:      	and	r0, r0, #0xc0
 8000c70:      	cmp	r0, #0x80
 8000c72:      	it	eq
 8000c74:      	addeq	r2, #0x1
 8000c76:      	ldrb.w	r0, [r10, #0x20]
 8000c7a:      	subs	r3, r0, #0x3
 8000c7c:      	it	ne
 8000c7e:      	movne	r3, r0
 8000c80:      	sub.w	r0, r2, r9
 8000c84:      	add.w	r1, r0, lr
 8000c88:      	movs	r0, #0x0
 8000c8a:      	mov	r11, r1
 8000c8c:      	tbb	[pc, r3]

08000c90 <$d.15>:
 8000c90:	0a 02 06 02	.word	0x0206020a

08000c94 <$t.16>:
 8000c94:      	mov.w	r11, #0x0
 8000c98:      	mov	r0, r1
 8000c9a:      	b	#0x6 <$t.16+0x10>
 8000c9c:      	lsrs	r0, r1, #0x1
 8000c9e:      	adds	r1, #0x1
 8000ca0:      	lsr.w	r11, r1, #0x1
 8000ca4:      	adds	r4, r0, #0x1
 8000ca6:      	subs	r4, #0x1
 8000ca8:      	beq	#0x10 <$t.16+0x28>
 8000caa:      	ldrd	r0, r2, [r10, #24]
 8000cae:      	ldr.w	r1, [r10, #0x4]
 8000cb2:      	ldr	r2, [r2, #0x10]
 8000cb4:      	blx	r2
 8000cb6:      	cmp	r0, #0x0
 8000cb8:      	beq	#-0x16 <$t.16+0x12>
 8000cba:      	b	#0x28 <$t.16+0x52>
 8000cbc:      	ldrd	r0, r1, [r10, #24]
 8000cc0:      	mov	r2, r9
 8000cc2:      	ldr	r3, [r1, #0xc]
 8000cc4:      	mov	r1, r6
 8000cc6:      	ldr.w	r8, [r10, #0x4]
 8000cca:      	blx	r3
 8000ccc:      	cbnz	r0, #0x16
 8000cce:      	ldrd	r6, r5, [r10, #24]
 8000cd2:      	add.w	r4, r11, #0x1
 8000cd6:      	subs	r4, #0x1
 8000cd8:      	beq	#0x14 <$t.16+0x5c>
 8000cda:      	ldr	r2, [r5, #0x10]
 8000cdc:      	mov	r0, r6
 8000cde:      	mov	r1, r8
 8000ce0:      	blx	r2
 8000ce2:      	cmp	r0, #0x0
 8000ce4:      	beq	#-0x12 <$t.16+0x42>
 8000ce6:      	movs	r0, #0x1
 8000ce8:      	add	sp, #0xc
 8000cea:      	pop.w	{r8, r9, r10, r11}
 8000cee:      	pop	{r4, r5, r6, r7, pc}
 8000cf0:      	movs	r0, #0x0
 8000cf2:      	add	sp, #0xc
 8000cf4:      	pop.w	{r8, r9, r10, r11}
 8000cf8:      	pop	{r4, r5, r6, r7, pc}

08000cfa <<&T as core::fmt::Display>::fmt::hed4fc898b8a3241f>:
 8000cfa:      	mov	r3, r1
 8000cfc:      	ldrd	r1, r2, [r0]
 8000d00:      	mov	r0, r3
 8000d02:      	b.w	#-0x62e <core::fmt::Formatter::pad::hdd2f8bc43cf2bd72>

08000d06 <core::fmt::write::h80f221a6e172bdff>:
 8000d06:      	push	{r4, r5, r6, r7, lr}
 8000d08:      	add	r7, sp, #0xc
 8000d0a:      	push.w	{r8, r9, r10, r11}
 8000d0e:      	sub	sp, #0x34
 8000d10:      	mov	r4, r2
 8000d12:      	movs	r2, #0x3
 8000d14:      	ldr	r3, [r4, #0x8]
 8000d16:      	strb.w	r2, [sp, #0x30]
 8000d1a:      	movs	r2, #0x20
 8000d1c:      	str	r2, [sp, #0x14]
 8000d1e:      	movs	r2, #0x0
 8000d20:      	cmp	r3, #0x0
 8000d22:      	str	r2, [sp, #0x10]
 8000d24:      	str	r1, [sp, #0x2c]
 8000d26:      	str	r0, [sp, #0x28]
 8000d28:      	str	r2, [sp, #0x20]
 8000d2a:      	str	r2, [sp, #0x18]
 8000d2c:      	str	r3, [sp, #0x8]
 8000d2e:      	beq	#0xe6 <core::fmt::write::h80f221a6e172bdff+0x112>
 8000d30:      	ldr.w	r11, [r4, #0xc]
 8000d34:      	ldrd	r6, r9, [r4]
 8000d38:      	cmp	r11, r9
 8000d3a:      	it	hi
 8000d3c:      	movhi	r11, r9
 8000d3e:      	cmp.w	r11, #0x0
 8000d42:      	str	r6, [sp, #0xc]
 8000d44:      	beq.w	#0x12a <core::fmt::write::h80f221a6e172bdff+0x16c>
 8000d48:      	str.w	r9, [sp, #0x4]
 8000d4c:      	ldrd	r3, r2, [r6]
 8000d50:      	ldr	r6, [r1, #0xc]
 8000d52:      	mov	r1, r3
 8000d54:      	blx	r6
 8000d56:      	cmp	r0, #0x0
 8000d58:      	bne.w	#0x13e <core::fmt::write::h80f221a6e172bdff+0x194>
 8000d5c:      	ldr	r0, [sp, #0x8]
 8000d5e:      	sub.w	r10, r11, #0x1
 8000d62:      	ldr.w	r9, [r4, #0x10]
 8000d66:      	mov.w	r8, #0x0
 8000d6a:      	add.w	r6, r0, #0x10
 8000d6e:      	ldr	r0, [sp, #0x8]
 8000d70:      	add.w	r0, r0, r8, lsl #2
 8000d74:      	ldrd	r2, r1, [r0, #20]
 8000d78:      	ldrd	r3, r4, [r0, #4]
 8000d7c:      	ldrb	r5, [r0, #0x1c]
 8000d7e:      	str	r3, [sp, #0x14]
 8000d80:      	strb.w	r5, [sp, #0x30]
 8000d84:      	str	r4, [sp, #0x10]
 8000d86:      	cbz	r2, #0x1a
 8000d88:      	cmp	r2, #0x2
 8000d8a:      	beq	#0x1a <core::fmt::write::h80f221a6e172bdff+0xa2>
 8000d8c:      	add.w	r2, r9, r1, lsl #3
 8000d90:      	movw	r3, #0x39d
 8000d94:      	movt	r3, #0x800
 8000d98:      	ldr	r2, [r2, #0x4]
 8000d9a:      	cmp	r2, r3
 8000d9c:      	bne	#0x8 <core::fmt::write::h80f221a6e172bdff+0xa2>
 8000d9e:      	ldr.w	r1, [r9, r1, lsl #3]
 8000da2:      	ldr	r1, [r1]
 8000da4:      	movs	r2, #0x1
 8000da6:      	b	#0x0 <core::fmt::write::h80f221a6e172bdff+0xa4>
 8000da8:      	movs	r2, #0x0
 8000daa:      	strd	r2, r1, [sp, #24]
 8000dae:      	ldr	r0, [r0, #0xc]
 8000db0:      	ldr	r1, [r6]
 8000db2:      	cbz	r0, #0x1a
 8000db4:      	cmp	r0, #0x2
 8000db6:      	beq	#0x1a <core::fmt::write::h80f221a6e172bdff+0xce>
 8000db8:      	add.w	r0, r9, r1, lsl #3
 8000dbc:      	movw	r2, #0x39d
 8000dc0:      	movt	r2, #0x800
 8000dc4:      	ldr	r0, [r0, #0x4]
 8000dc6:      	cmp	r0, r2
 8000dc8:      	bne	#0x8 <core::fmt::write::h80f221a6e172bdff+0xce>
 8000dca:      	ldr.w	r0, [r9, r1, lsl #3]
 8000dce:      	ldr	r1, [r0]
 8000dd0:      	movs	r2, #0x1
 8000dd2:      	b	#0x0 <core::fmt::write::h80f221a6e172bdff+0xd0>
 8000dd4:      	movs	r2, #0x0
 8000dd6:      	ldr	r3, [r6, #-16]
 8000dda:      	str	r1, [sp, #0x24]
 8000ddc:      	add.w	r1, r9, r3, lsl #3
 8000de0:      	ldr.w	r0, [r9, r3, lsl #3]
 8000de4:      	ldr	r3, [r1, #0x4]
 8000de6:      	add	r1, sp, #0x10
 8000de8:      	str	r2, [sp, #0x20]
 8000dea:      	blx	r3
 8000dec:      	cmp	r0, #0x0
 8000dee:      	bne	#0xa8 <core::fmt::write::h80f221a6e172bdff+0x194>
 8000df0:      	cmp.w	r10, #0x0
 8000df4:      	beq	#0xac <core::fmt::write::h80f221a6e172bdff+0x19e>
 8000df6:      	ldr	r1, [sp, #0xc]
 8000df8:      	ldrd	r0, r3, [sp, #40]
 8000dfc:      	add.w	r2, r1, r8
 8000e00:      	ldr	r3, [r3, #0xc]
 8000e02:      	ldrd	r1, r2, [r2, #8]
 8000e06:      	blx	r3
 8000e08:      	sub.w	r10, r10, #0x1
 8000e0c:      	adds	r6, #0x20
 8000e0e:      	add.w	r8, r8, #0x8
 8000e12:      	cmp	r0, #0x0
 8000e14:      	beq	#-0xaa <core::fmt::write::h80f221a6e172bdff+0x68>
 8000e16:      	b	#0x80 <core::fmt::write::h80f221a6e172bdff+0x194>
 8000e18:      	ldr.w	r11, [r4, #0x14]
 8000e1c:      	ldrd	r6, r9, [r4]
 8000e20:      	cmp	r11, r9
 8000e22:      	it	hi
 8000e24:      	movhi	r11, r9
 8000e26:      	cmp.w	r11, #0x0
 8000e2a:      	str	r6, [sp, #0xc]
 8000e2c:      	beq	#0x4c <core::fmt::write::h80f221a6e172bdff+0x176>
 8000e2e:      	ldrd	r3, r2, [r6]
 8000e32:      	ldr	r6, [r1, #0xc]
 8000e34:      	ldr	r4, [r4, #0x10]
 8000e36:      	mov	r1, r3
 8000e38:      	blx	r6
 8000e3a:      	cbnz	r0, #0x5c
 8000e3c:      	ldr	r0, [sp, #0xc]
 8000e3e:      	adds	r6, r4, #0x4
 8000e40:      	sub.w	r5, r11, #0x1
 8000e44:      	add.w	r8, sp, #0x10
 8000e48:      	add.w	r4, r0, #0x8
 8000e4c:      	ldr	r0, [r6, #-4]
 8000e50:      	mov	r1, r8
 8000e52:      	ldr	r2, [r6]
 8000e54:      	blx	r2
 8000e56:      	cbnz	r0, #0x40
 8000e58:      	cbz	r5, #0x24
 8000e5a:      	ldrd	r0, r3, [sp, #40]
 8000e5e:      	ldrd	r1, r2, [r4]
 8000e62:      	ldr	r3, [r3, #0xc]
 8000e64:      	blx	r3
 8000e66:      	subs	r5, #0x1
 8000e68:      	adds	r6, #0x8
 8000e6a:      	adds	r4, #0x8
 8000e6c:      	cmp	r0, #0x0
 8000e6e:      	beq	#-0x26 <core::fmt::write::h80f221a6e172bdff+0x146>
 8000e70:      	b	#0x26 <core::fmt::write::h80f221a6e172bdff+0x194>
 8000e72:      	mov.w	r11, #0x0
 8000e76:      	cmp	r9, r11
 8000e78:      	bhi	#0x8 <core::fmt::write::h80f221a6e172bdff+0x17e>
 8000e7a:      	b	#0x2e <core::fmt::write::h80f221a6e172bdff+0x1a6>
 8000e7c:      	mov.w	r11, #0x0
 8000e80:      	cmp	r9, r11
 8000e82:      	bls	#0x26 <core::fmt::write::h80f221a6e172bdff+0x1a6>
 8000e84:      	ldr	r2, [sp, #0xc]
 8000e86:      	ldrd	r0, r3, [sp, #40]
 8000e8a:      	ldr	r3, [r3, #0xc]
 8000e8c:      	ldr.w	r1, [r2, r11, lsl #3]
 8000e90:      	add.w	r2, r2, r11, lsl #3
 8000e94:      	ldr	r2, [r2, #0x4]
 8000e96:      	blx	r3
 8000e98:      	cbz	r0, #0x10
 8000e9a:      	movs	r0, #0x1
 8000e9c:      	add	sp, #0x34
 8000e9e:      	pop.w	{r8, r9, r10, r11}
 8000ea2:      	pop	{r4, r5, r6, r7, pc}
 8000ea4:      	ldr.w	r9, [sp, #0x4]
 8000ea8:      	cmp	r9, r11
 8000eaa:      	bhi	#-0x2a <core::fmt::write::h80f221a6e172bdff+0x17e>
 8000eac:      	movs	r0, #0x0
 8000eae:      	add	sp, #0x34
 8000eb0:      	pop.w	{r8, r9, r10, r11}
 8000eb4:      	pop	{r4, r5, r6, r7, pc}

08000eb6 <<&T as core::fmt::Display>::fmt::hb1351d570a30a9c9>:
 8000eb6:      	push	{r4, r5, r6, r7, lr}
 8000eb8:      	add	r7, sp, #0xc
 8000eba:      	push.w	{r8, r9, r11}
 8000ebe:      	sub	sp, #0x18
 8000ec0:      	ldr.w	lr, [r0]
 8000ec4:      	mov	r2, sp
 8000ec6:      	ldrd	r12, r1, [r1, #24]
 8000eca:      	mov	r3, r2
 8000ecc:      	ldm.w	lr, {r0, r4, r5, r6, r8, r9}
 8000ed0:      	stm.w	r3, {r0, r4, r5, r6, r8, r9}
 8000ed4:      	mov	r0, r12
 8000ed6:      	bl	#-0x1d4
 8000eda:      	add	sp, #0x18
 8000edc:      	pop.w	{r8, r9, r11}
 8000ee0:      	pop	{r4, r5, r6, r7, pc}

08000ee2 <<&T as core::fmt::Display>::fmt::h28023d1754819fb6>:
 8000ee2:      	ldr	r0, [r0]
 8000ee4:      	mov	r3, r1
 8000ee6:      	ldrd	r1, r2, [r0]
 8000eea:      	mov	r0, r3
 8000eec:      	b.w	#-0x818 <core::fmt::Formatter::pad::hdd2f8bc43cf2bd72>

08000ef0 <cortex_m::itm::write_all::h1098dbb8e67ada69>:
; pub fn write_all(port: &mut Stim, buffer: &[u8]) {
 8000ef0:      	push	{r4, r5, r7, lr}
 8000ef2:      	add	r7, sp, #0x8
;         if len == 0 {
 8000ef4:      	cmp	r2, #0x0
 8000ef6:      	beq.w	#0x106 <cortex_m::itm::write_all::h1098dbb8e67ada69+0x110>
;         if ptr as usize % 2 == 1 {
 8000efa:      	lsls	r3, r1, #0x1f
 8000efc:      	beq	#0x20 <cortex_m::itm::write_all::h1098dbb8e67ada69+0x30>
;     unsafe { intrinsics::volatile_load(src) }
 8000efe:      	ldr	r3, [r0]
;             while !port.is_fifo_ready() {}
 8000f00:      	lsls	r3, r3, #0x1f
;     unsafe { intrinsics::volatile_load(src) }
 8000f02:      	itttt	eq
 8000f04:      	ldreq	r3, [r0]
;             while !port.is_fifo_ready() {}
 8000f06:      	lslseq.w	r3, r3, #0x1f
;     unsafe { intrinsics::volatile_load(src) }
 8000f0a:      	ldreq	r3, [r0]
;             while !port.is_fifo_ready() {}
 8000f0c:      	lslseq.w	r3, r3, #0x1f
 8000f10:      	bne	#0x4 <cortex_m::itm::write_all::h1098dbb8e67ada69+0x28>
;     unsafe { intrinsics::volatile_load(src) }
 8000f12:      	ldr	r3, [r0]
;             while !port.is_fifo_ready() {}
 8000f14:      	lsls	r3, r3, #0x1f
 8000f16:      	beq	#-0x1c <cortex_m::itm::write_all::h1098dbb8e67ada69+0xe>
;             port.write_u8(*ptr);
 8000f18:      	ldrb	r3, [r1], #1
;             len -= 1;
 8000f1c:      	subs	r2, #0x1
;         intrinsics::volatile_store(dst, src);
 8000f1e:      	strb	r3, [r0]
;         if ptr as usize % 4 == 2 {
 8000f20:      	and	r3, r1, #0x3
 8000f24:      	cmp	r3, #0x2
 8000f26:      	bne	#0x24 <cortex_m::itm::write_all::h1098dbb8e67ada69+0x5e>
;             if len > 1 {
 8000f28:      	cmp	r2, #0x2
 8000f2a:      	blo	#0xae <cortex_m::itm::write_all::h1098dbb8e67ada69+0xec>
;     unsafe { intrinsics::volatile_load(src) }
 8000f2c:      	ldr	r3, [r0]
;                 while !port.is_fifo_ready() {}
 8000f2e:      	lsls	r3, r3, #0x1f
;     unsafe { intrinsics::volatile_load(src) }
 8000f30:      	itttt	eq
 8000f32:      	ldreq	r3, [r0]
;                 while !port.is_fifo_ready() {}
 8000f34:      	lslseq.w	r3, r3, #0x1f
;     unsafe { intrinsics::volatile_load(src) }
 8000f38:      	ldreq	r3, [r0]
;                 while !port.is_fifo_ready() {}
 8000f3a:      	lslseq.w	r3, r3, #0x1f
 8000f3e:      	bne	#0x4 <cortex_m::itm::write_all::h1098dbb8e67ada69+0x56>
;     unsafe { intrinsics::volatile_load(src) }
 8000f40:      	ldr	r3, [r0]
;                 while !port.is_fifo_ready() {}
 8000f42:      	lsls	r3, r3, #0x1f
 8000f44:      	beq	#-0x1c <cortex_m::itm::write_all::h1098dbb8e67ada69+0x3c>
;                 port.write_u16(ptr::read(ptr as *const u16));
 8000f46:      	ldrh	r3, [r1], #2
;                 len -= 2;
 8000f4a:      	subs	r2, #0x2
;         intrinsics::volatile_store(dst, src);
 8000f4c:      	strh	r3, [r0]
;         if len == 0 {
 8000f4e:      	cmp	r2, #0x0
 8000f50:      	beq	#0xac <cortex_m::itm::write_all::h1098dbb8e67ada69+0x110>
;         let split = len & !0b11;
 8000f52:      	bic	r12, r2, #0x3
 8000f56:      	movs	r3, #0x0
;         if self.start < self.end {
 8000f58:      	cmp.w	r3, r2, lsr #2
 8000f5c:      	beq	#0x30 <cortex_m::itm::write_all::h1098dbb8e67ada69+0xa0>
 8000f5e:      	lsr.w	lr, r2, #0x2
 8000f62:      	movs	r3, #0x0
 8000f64:      	mov	r4, r1
 8000f66:      	b	#0xa <cortex_m::itm::write_all::h1098dbb8e67ada69+0x84>
;         stim.write_u32(ptr::read(p));
 8000f68:      	ldr	r5, [r4], #4
;                 unsafe { intrinsics::unchecked_add(self, rhs) }
 8000f6c:      	adds	r3, #0x1
;         if self.start < self.end {
 8000f6e:      	cmp	r3, lr
;         intrinsics::volatile_store(dst, src);
 8000f70:      	str	r5, [r0]
;         if self.start < self.end {
 8000f72:      	beq	#0x1a <cortex_m::itm::write_all::h1098dbb8e67ada69+0xa0>
;     unsafe { intrinsics::volatile_load(src) }
 8000f74:      	ldr	r5, [r0]
;         while !stim.is_fifo_ready() {}
 8000f76:      	lsls	r5, r5, #0x1f
;     unsafe { intrinsics::volatile_load(src) }
 8000f78:      	itttt	eq
 8000f7a:      	ldreq	r5, [r0]
;         while !stim.is_fifo_ready() {}
 8000f7c:      	lslseq.w	r5, r5, #0x1f
;     unsafe { intrinsics::volatile_load(src) }
 8000f80:      	ldreq	r5, [r0]
;         while !stim.is_fifo_ready() {}
 8000f82:      	lslseq.w	r5, r5, #0x1f
 8000f86:      	bne	#-0x22 <cortex_m::itm::write_all::h1098dbb8e67ada69+0x78>
;     unsafe { intrinsics::volatile_load(src) }
 8000f88:      	ldr	r5, [r0]
;         while !stim.is_fifo_ready() {}
 8000f8a:      	lsls	r5, r5, #0x1f
 8000f8c:      	beq	#-0x1c <cortex_m::itm::write_all::h1098dbb8e67ada69+0x84>
 8000f8e:      	b	#-0x2a <cortex_m::itm::write_all::h1098dbb8e67ada69+0x78>
;         let mut left = len & 0b11;
 8000f90:      	and	r2, r2, #0x3
;         unsafe { intrinsics::offset(self, count) }
 8000f94:      	add	r1, r12
;         if left > 1 {
 8000f96:      	cmp	r2, #0x2
 8000f98:      	blo	#0x20 <cortex_m::itm::write_all::h1098dbb8e67ada69+0xcc>
;     unsafe { intrinsics::volatile_load(src) }
 8000f9a:      	ldr	r3, [r0]
;             while !port.is_fifo_ready() {}
 8000f9c:      	lsls	r3, r3, #0x1f
;     unsafe { intrinsics::volatile_load(src) }
 8000f9e:      	itttt	eq
 8000fa0:      	ldreq	r3, [r0]
;             while !port.is_fifo_ready() {}
 8000fa2:      	lslseq.w	r3, r3, #0x1f
;     unsafe { intrinsics::volatile_load(src) }
 8000fa6:      	ldreq	r3, [r0]
;             while !port.is_fifo_ready() {}
 8000fa8:      	lslseq.w	r3, r3, #0x1f
 8000fac:      	bne	#0x4 <cortex_m::itm::write_all::h1098dbb8e67ada69+0xc4>
;     unsafe { intrinsics::volatile_load(src) }
 8000fae:      	ldr	r3, [r0]
;             while !port.is_fifo_ready() {}
 8000fb0:      	lsls	r3, r3, #0x1f
 8000fb2:      	beq	#-0x1c <cortex_m::itm::write_all::h1098dbb8e67ada69+0xaa>
;             port.write_u16(ptr::read(ptr as *const u16));
 8000fb4:      	ldrh	r3, [r1], #2
;             left -= 2;
 8000fb8:      	subs	r2, #0x2
;         intrinsics::volatile_store(dst, src);
 8000fba:      	strh	r3, [r0]
;         if left == 1 {
 8000fbc:      	cmp	r2, #0x1
 8000fbe:      	bne	#0x3e <cortex_m::itm::write_all::h1098dbb8e67ada69+0x110>
;     unsafe { intrinsics::volatile_load(src) }
 8000fc0:      	ldr	r2, [r0]
;             while !port.is_fifo_ready() {}
 8000fc2:      	lsls	r2, r2, #0x1f
;     unsafe { intrinsics::volatile_load(src) }
 8000fc4:      	itttt	eq
 8000fc6:      	ldreq	r2, [r0]
;             while !port.is_fifo_ready() {}
 8000fc8:      	lslseq.w	r2, r2, #0x1f
;     unsafe { intrinsics::volatile_load(src) }
 8000fcc:      	ldreq	r2, [r0]
;             while !port.is_fifo_ready() {}
 8000fce:      	lslseq.w	r2, r2, #0x1f
 8000fd2:      	bne	#0x26 <cortex_m::itm::write_all::h1098dbb8e67ada69+0x10c>
;     unsafe { intrinsics::volatile_load(src) }
 8000fd4:      	ldr	r2, [r0]
;             while !port.is_fifo_ready() {}
 8000fd6:      	lsls	r2, r2, #0x1f
 8000fd8:      	beq	#-0x1c <cortex_m::itm::write_all::h1098dbb8e67ada69+0xd0>
 8000fda:      	b	#0x1e <cortex_m::itm::write_all::h1098dbb8e67ada69+0x10c>
;                 if len == 1 {
 8000fdc:      	cmp	r2, #0x1
; }
 8000fde:      	it	ne
 8000fe0:      	popne	{r4, r5, r7, pc}
;     unsafe { intrinsics::volatile_load(src) }
 8000fe2:      	ldr	r2, [r0]
;                     while !port.is_fifo_ready() {}
 8000fe4:      	lsls	r2, r2, #0x1f
 8000fe6:      	bne	#0x12 <cortex_m::itm::write_all::h1098dbb8e67ada69+0x10c>
;     unsafe { intrinsics::volatile_load(src) }
 8000fe8:      	ldr	r2, [r0]
;                     while !port.is_fifo_ready() {}
 8000fea:      	lsls	r2, r2, #0x1f
;     unsafe { intrinsics::volatile_load(src) }
 8000fec:      	itt	eq
 8000fee:      	ldreq	r2, [r0]
;                     while !port.is_fifo_ready() {}
 8000ff0:      	lslseq.w	r2, r2, #0x1f
 8000ff4:      	bne	#0x4 <cortex_m::itm::write_all::h1098dbb8e67ada69+0x10c>
;     unsafe { intrinsics::volatile_load(src) }
 8000ff6:      	ldr	r2, [r0]
;                     while !port.is_fifo_ready() {}
 8000ff8:      	lsls	r2, r2, #0x1f
 8000ffa:      	beq	#-0x1c <cortex_m::itm::write_all::h1098dbb8e67ada69+0xf2>
 8000ffc:      	ldrb	r1, [r1]
 8000ffe:      	strb	r1, [r0]
; }
 8001000:      	pop	{r4, r5, r7, pc}

08001002 <ResetTrampoline>:
;             fn trampoline() -> ! {
 8001002:      	push	{r7, lr}
 8001004:      	mov	r7, sp
;                 unsafe { main() }
 8001006:      	bl	#-0xdd8
 800100a:      	trap

0800100c <WWDG>:
 800100c:      	b	#-0x4 <WWDG>

0800100e <__pre_init>:
; pub unsafe extern "C" fn DefaultPreInit() {}
 800100e:      	bx	lr

08001010 <rust_begin_unwind>:
; fn panic(info: &PanicInfo) -> ! {
 8001010:      	push	{r7, lr}
 8001012:      	mov	r7, sp
 8001014:      	sub	sp, #0x30
 8001016:      	str	r0, [sp, #0x4]
;             __cpsid();
 8001018:      	bl	#0x204
;     iprintln!(stim, "{}", info);
 800101c:      	movw	r0, #0x1063
;         write(&mut self, args)
 8001020:      	movw	r1, #0x13dc
;     iprintln!(stim, "{}", info);
 8001024:      	movt	r0, #0x800
 8001028:      	add	r2, sp, #0x18
 800102a:      	str	r0, [sp, #0xc]
 800102c:      	add	r0, sp, #0x4
 800102e:      	str	r0, [sp, #0x8]
 8001030:      	mov.w	r0, #0xe0000000
;     Port(port).write_fmt(args).ok();
 8001034:      	str	r0, [sp, #0x10]
 8001036:      	add	r0, sp, #0x10
 8001038:      	str	r0, [sp, #0x14]
 800103a:      	movs	r0, #0x1
;         write(&mut self, args)
 800103c:      	str	r0, [sp, #0x2c]
 800103e:      	add	r0, sp, #0x8
 8001040:      	str	r0, [sp, #0x28]
 8001042:      	movs	r0, #0x0
 8001044:      	strd	r0, r0, [sp, #32]
 8001048:      	movs	r0, #0x2
 800104a:      	str	r0, [sp, #0x1c]
 800104c:      	movw	r0, #0x13cc
 8001050:      	movt	r0, #0x800
 8001054:      	movt	r1, #0x800
 8001058:      	str	r0, [sp, #0x18]
 800105a:      	add	r0, sp, #0x14
;         write(&mut self, args)
 800105c:      	bl	#-0x35a
 8001060:      	b	#-0x4 <rust_begin_unwind+0x50>

08001062 <<&T as core::fmt::Display>::fmt::h5a9e9b1ee2b40989>:
;             fn fmt(&self, f: &mut Formatter<'_>) -> Result { $tr::fmt(&**self, f) }
 8001062:      	push	{r4, r5, r6, r7, lr}
 8001064:      	add	r7, sp, #0xc
 8001066:      	str	r11, [sp, #-4]!
 800106a:      	sub	sp, #0x38
 800106c:      	mov	r4, r1
 800106e:      	ldrd	r2, r1, [r1, #24]
 8001072:      	ldr	r3, [r1, #0xc]
 8001074:      	movw	r1, #0x1390
;             fn fmt(&self, f: &mut Formatter<'_>) -> Result { $tr::fmt(&**self, f) }
 8001078:      	ldr	r6, [r0]
 800107a:      	movt	r1, #0x800
 800107e:      	mov	r0, r2
 8001080:      	movs	r2, #0xc
 8001082:      	blx	r3
 8001084:      	cbz	r0, #0xa
 8001086:      	movs	r5, #0x1
;             fn fmt(&self, f: &mut Formatter<'_>) -> Result { $tr::fmt(&**self, f) }
 8001088:      	mov	r0, r5
 800108a:      	add	sp, #0x38
 800108c:      	ldr	r11, [sp], #4
 8001090:      	pop	{r4, r5, r6, r7, pc}
 8001092:      	ldr	r0, [r6, #0x8]
 8001094:      	cbz	r0, #0xe
 8001096:      	str	r0, [sp, #0x4]
 8001098:      	movw	r2, #0xeb7
 800109c:      	ldrd	r0, r1, [r4, #24]
 80010a0:      	movt	r2, #0x800
 80010a4:      	b	#0x2e <<&T as core::fmt::Display>::fmt::h5a9e9b1ee2b40989+0x74>
 80010a6:      	ldrd	r5, r0, [r6]
 80010aa:      	ldr	r1, [r0, #0xc]
 80010ac:      	mov	r0, r5
 80010ae:      	blx	r1
 80010b0:      	movw	r2, #0xa91e
 80010b4:      	movt	r2, #0x7ef2
 80010b8:      	eors	r1, r2
 80010ba:      	movw	r2, #0xbcf4
 80010be:      	movt	r2, #0xecc7
 80010c2:      	eors	r0, r2
 80010c4:      	orrs	r0, r1
 80010c6:      	bne	#0x38 <<&T as core::fmt::Display>::fmt::h5a9e9b1ee2b40989+0xa0>
 80010c8:      	str	r5, [sp, #0x4]
 80010ca:      	movw	r2, #0xee3
 80010ce:      	ldrd	r0, r1, [r4, #24]
 80010d2:      	movt	r2, #0x800
 80010d6:      	str	r2, [sp, #0xc]
 80010d8:      	add	r2, sp, #0x4
 80010da:      	str	r2, [sp, #0x8]
 80010dc:      	movs	r5, #0x1
 80010de:      	add	r2, sp, #0x8
 80010e0:      	str	r5, [sp, #0x34]
 80010e2:      	str	r2, [sp, #0x30]
 80010e4:      	movs	r2, #0x0
 80010e6:      	str	r2, [sp, #0x2c]
 80010e8:      	str	r2, [sp, #0x28]
 80010ea:      	movs	r2, #0x2
 80010ec:      	str	r2, [sp, #0x24]
 80010ee:      	movw	r2, #0x139c
 80010f2:      	movt	r2, #0x800
 80010f6:      	str	r2, [sp, #0x20]
 80010f8:      	add	r2, sp, #0x20
 80010fa:      	bl	#-0x3f8
 80010fe:      	cmp	r0, #0x0
 8001100:      	bne	#-0x7c <<&T as core::fmt::Display>::fmt::h5a9e9b1ee2b40989+0x26>
 8001102:      	ldr	r2, [r6, #0xc]
 8001104:      	movw	r3, #0x3d9
 8001108:      	movt	r3, #0x800
 800110c:      	ldrd	r0, r1, [r4, #24]
 8001110:      	add.w	r6, r2, #0xc
 8001114:      	str	r3, [sp, #0x1c]
 8001116:      	strd	r3, r6, [sp, #20]
 800111a:      	add.w	r3, r2, #0x8
 800111e:      	str	r3, [sp, #0x10]
 8001120:      	movw	r3, #0xcfb
 8001124:      	movt	r3, #0x800
 8001128:      	strd	r2, r3, [sp, #8]
 800112c:      	add	r3, sp, #0x8
 800112e:      	movs	r2, #0x3
 8001130:      	str	r3, [sp, #0x30]
 8001132:      	movs	r3, #0x0
 8001134:      	str	r2, [sp, #0x34]
 8001136:      	str	r3, [sp, #0x2c]
 8001138:      	strd	r2, r3, [sp, #36]
 800113c:      	movw	r2, #0x13ac
 8001140:      	movt	r2, #0x800
 8001144:      	str	r2, [sp, #0x20]
 8001146:      	add	r2, sp, #0x20
 8001148:      	bl	#-0x446
 800114c:      	mov	r5, r0
;             fn fmt(&self, f: &mut Formatter<'_>) -> Result { $tr::fmt(&**self, f) }
 800114e:      	mov	r0, r5
 8001150:      	add	sp, #0x38
 8001152:      	ldr	r11, [sp], #4
 8001156:      	pop	{r4, r5, r6, r7, pc}

08001158 <core::ptr::drop_in_place::h4057e8d006af43fe>:
; pub unsafe fn drop_in_place<T: ?Sized>(to_drop: *mut T) {
 8001158:      	bx	lr

0800115a <<&mut W as core::fmt::Write>::write_str::hbd59a210919e6753>:
;     fn write_str(&mut self, s: &str) -> Result {
 800115a:      	push	{r7, lr}
 800115c:      	mov	r7, sp
;         (**self).write_str(s)
 800115e:      	ldr	r0, [r0]
 8001160:      	ldr	r0, [r0]
;         write_all(self.0, s.as_bytes());
 8001162:      	bl	#-0x276
;     }
 8001166:      	movs	r0, #0x0
 8001168:      	pop	{r7, pc}

0800116a <<&mut W as core::fmt::Write>::write_char::h1cb2b91da1b2b000>:
;     fn write_char(&mut self, c: char) -> Result {
 800116a:      	push	{r7, lr}
 800116c:      	mov	r7, sp
 800116e:      	sub	sp, #0x8
;         (**self).write_char(c)
 8001170:      	ldr	r0, [r0]
 8001172:      	movs	r2, #0x0
;     if code < MAX_ONE_B {
 8001174:      	cmp	r1, #0x80
;         self.write_str(c.encode_utf8(&mut [0; 4]))
 8001176:      	str	r2, [sp, #0x4]
;     if code < MAX_ONE_B {
 8001178:      	bhs	#0x6 <<&mut W as core::fmt::Write>::write_char::h1cb2b91da1b2b000+0x18>
;             *a = code as u8;
 800117a:      	strb.w	r1, [sp, #0x4]
 800117e:      	movs	r2, #0x1
 8001180:      	b	#0x5e <<&mut W as core::fmt::Write>::write_char::h1cb2b91da1b2b000+0x78>
 8001182:      	movs	r2, #0x2
;             *b = (code & 0x3F) as u8 | TAG_CONT;
 8001184:      	mov	r3, r1
 8001186:      	bfi	r3, r2, #6, #26
;     } else if code < MAX_TWO_B {
 800118a:      	cmp.w	r1, #0x800
 800118e:      	bhs	#0xa <<&mut W as core::fmt::Write>::write_char::h1cb2b91da1b2b000+0x32>
;             *b = (code & 0x3F) as u8 | TAG_CONT;
 8001190:      	strb.w	r3, [sp, #0x5]
 8001194:      	movs	r3, #0xc0
;             *a = (code >> 6 & 0x1F) as u8 | TAG_TWO_B;
 8001196:      	orr.w	r1, r3, r1, lsr #6
 800119a:      	b	#0x40 <<&mut W as core::fmt::Write>::write_char::h1cb2b91da1b2b000+0x74>
 800119c:      	cmp.w	r1, #0x10000
 80011a0:      	bhs	#0x1a <<&mut W as core::fmt::Write>::write_char::h1cb2b91da1b2b000+0x54>
;             *c = (code & 0x3F) as u8 | TAG_CONT;
 80011a2:      	strb.w	r3, [sp, #0x6]
;             *b = (code >> 6 & 0x3F) as u8 | TAG_CONT;
 80011a6:      	lsrs	r3, r1, #0x6
 80011a8:      	bfi	r3, r2, #6, #26
 80011ac:      	movs	r2, #0xe0
;             *a = (code >> 12 & 0x0F) as u8 | TAG_THREE_B;
 80011ae:      	orr.w	r1, r2, r1, lsr #12
;             *b = (code >> 6 & 0x3F) as u8 | TAG_CONT;
 80011b2:      	strb.w	r3, [sp, #0x5]
;             *a = (code >> 12 & 0x0F) as u8 | TAG_THREE_B;
 80011b6:      	strb.w	r1, [sp, #0x4]
 80011ba:      	movs	r2, #0x3
 80011bc:      	b	#0x22 <<&mut W as core::fmt::Write>::write_char::h1cb2b91da1b2b000+0x78>
;             *d = (code & 0x3F) as u8 | TAG_CONT;
 80011be:      	strb.w	r3, [sp, #0x7]
;             *c = (code >> 6 & 0x3F) as u8 | TAG_CONT;
 80011c2:      	lsrs	r3, r1, #0x6
 80011c4:      	bfi	r3, r2, #6, #26
 80011c8:      	strb.w	r3, [sp, #0x6]
;             *b = (code >> 12 & 0x3F) as u8 | TAG_CONT;
 80011cc:      	lsrs	r3, r1, #0xc
 80011ce:      	bfi	r3, r2, #6, #26
 80011d2:      	movs	r2, #0xf0
;             *a = (code >> 18 & 0x07) as u8 | TAG_FOUR_B;
 80011d4:      	orr.w	r1, r2, r1, lsr #18
 80011d8:      	movs	r2, #0x4
;             *b = (code >> 12 & 0x3F) as u8 | TAG_CONT;
 80011da:      	strb.w	r3, [sp, #0x5]
 80011de:      	strb.w	r1, [sp, #0x4]
;         self.write_str(c.encode_utf8(&mut [0; 4]))
 80011e2:      	ldr	r0, [r0]
 80011e4:      	add	r1, sp, #0x4
;         write_all(self.0, s.as_bytes());
 80011e6:      	bl	#-0x2fa
;     }
 80011ea:      	movs	r0, #0x0
 80011ec:      	add	sp, #0x8
 80011ee:      	pop	{r7, pc}

080011f0 <<&mut W as core::fmt::Write>::write_fmt::h33ca6863f47eb077>:
;     fn write_fmt(&mut self, args: Arguments<'_>) -> Result {
 80011f0:      	push	{r4, r5, r6, r7, lr}
 80011f2:      	add	r7, sp, #0xc
 80011f4:      	str	r11, [sp, #-4]!
 80011f8:      	sub	sp, #0x20
;         (**self).write_fmt(args)
 80011fa:      	ldr	r0, [r0]
 80011fc:      	add	r2, sp, #0x8
 80011fe:      	str	r0, [sp, #0x4]
;         write(&mut self, args)
 8001200:      	ldm.w	r1, {r3, r4, r5, r6, r12, lr}
 8001204:      	mov	r0, r2
 8001206:      	movw	r1, #0x13dc
 800120a:      	movt	r1, #0x800
 800120e:      	stm.w	r0, {r3, r4, r5, r6, r12, lr}
 8001212:      	add	r0, sp, #0x4
;         write(&mut self, args)
 8001214:      	bl	#-0x512
;     }
 8001218:      	add	sp, #0x20
 800121a:      	ldr	r11, [sp], #4
 800121e:      	pop	{r4, r5, r6, r7, pc}

08001220 <__cpsid>:
 8001220:      	cpsid i
 8001222:      	bx	lr

08001224 <__cpsie>:
 8001224:      	cpsie i
 8001226:      	bx	lr

08001228 <__primask>:
 8001228:      	mrs	r0, primask
 800122c:      	bx	lr

0800122e <HardFaultTrampoline>:
 800122e:      	mov	r0, lr
 8001230:      	movs	r1, #0x4
 8001232:      	tst	r0, r1
 8001234:      	bne	#0x4 <HardFaultTrampoline+0xe>
 8001236:      	mrs	r0, msp
 800123a:      	b	#0x4 <HardFault_>
 800123c:      	mrs	r0, psp
 8001240:      	b	#-0x2 <HardFault_>

08001242 <HardFault_>:
 8001242:      	b	#-0x4 <HardFault_>
