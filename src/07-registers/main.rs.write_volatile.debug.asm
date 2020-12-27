
registers:	file format elf32-littlearm


Disassembly of section .text:

08000188 <Reset>:
; pub unsafe extern "C" fn Reset() -> ! {
 8000188:      	push	{r7, lr}
 800018a:      	mov	r7, sp
;     __pre_init();
 800018c:      	bl	#0x187c
 8000190:      	b	#-0x2 <Reset+0xa>
;     r0::zero_bss(&mut __sbss, &mut __ebss);
 8000192:      	movw	r0, #0x0
 8000196:      	movt	r0, #0x2000
 800019a:      	movw	r1, #0x4
 800019e:      	movt	r1, #0x2000
 80001a2:      	bl	#0x1868
 80001a6:      	b	#-0x2 <Reset+0x20>
;     r0::init_data(&mut __sdata, &mut __edata, &__sidata);
 80001a8:      	movw	r0, #0x0
 80001ac:      	movt	r0, #0x2000
 80001b0:      	movw	r1, #0x0
 80001b4:      	movt	r1, #0x2000
 80001b8:      	movw	r2, #0x41a4
 80001bc:      	movt	r2, #0x800
 80001c0:      	bl	#0x1894
 80001c4:      	b	#-0x2 <Reset+0x3e>
 80001c6:      	movw	r0, #0xed88
 80001ca:      	movt	r0, #0xe000
;                 *SCB_CPACR | SCB_CPACR_FPU_ENABLE | SCB_CPACR_FPU_USER,
 80001ce:      	ldr	r1, [r0]
 80001d0:      	orr	r1, r1, #0xf00000
;             core::ptr::write_volatile(
 80001d4:      	bl	#0x1932
 80001d8:      	b	#-0x2 <Reset+0x52>
;             trampoline()
 80001da:      	bl	#0x180a
 80001de:      	trap

080001e0 <main>:
; #[entry]
 80001e0:      	push	{r7, lr}
 80001e2:      	mov	r7, sp
 80001e4:      	bl	#0x2
 80001e8:      	trap

080001ea <registers::__cortex_m_rt_main::h8ffa40ad9b0dbd6a>:
; fn main() -> ! {
 80001ea:      	push	{r7, lr}
 80001ec:      	mov	r7, sp
;     aux7::init();
 80001ee:      	bl	#0x4e
 80001f2:      	b	#-0x2 <registers::__cortex_m_rt_main::h8ffa40ad9b0dbd6a+0xa>
 80001f4:      	movw	r0, #0x1018
 80001f8:      	movt	r0, #0x4800
 80001fc:      	mov.w	r1, #0x200
;         ptr::write_volatile(GPIOE_BSRR as *mut u32, 1 << 9);
 8000200:      	bl	#0x1a1a
 8000204:      	b	#-0x2 <registers::__cortex_m_rt_main::h8ffa40ad9b0dbd6a+0x1c>
 8000206:      	movw	r0, #0x1018
 800020a:      	movt	r0, #0x4800
 800020e:      	mov.w	r1, #0x800
;         ptr::write_volatile(GPIOE_BSRR as *mut u32, 1 << 11);
 8000212:      	bl	#0x1a08
 8000216:      	b	#-0x2 <registers::__cortex_m_rt_main::h8ffa40ad9b0dbd6a+0x2e>
 8000218:      	movw	r0, #0x1018
 800021c:      	movt	r0, #0x4800
 8000220:      	mov.w	r1, #0x2000000
;         ptr::write_volatile(GPIOE_BSRR as *mut u32, 1 << (9 + 16));
 8000224:      	bl	#0x19f6
 8000228:      	b	#-0x2 <registers::__cortex_m_rt_main::h8ffa40ad9b0dbd6a+0x40>
 800022a:      	movw	r0, #0x1018
 800022e:      	movt	r0, #0x4800
 8000232:      	mov.w	r1, #0x8000000
;         ptr::write_volatile(GPIOE_BSRR as *mut u32, 1 << (11 + 16));
 8000236:      	bl	#0x19e4
 800023a:      	b	#-0x2 <registers::__cortex_m_rt_main::h8ffa40ad9b0dbd6a+0x52>
;     loop {}
 800023c:      	b	#-0x2 <registers::__cortex_m_rt_main::h8ffa40ad9b0dbd6a+0x54>
 800023e:      	b	#-0x4 <registers::__cortex_m_rt_main::h8ffa40ad9b0dbd6a+0x54>

08000240 <aux7::init::hb592c84bb8440829>:
; pub fn init() -> (ITM, &'static gpioc::RegisterBlock) {
 8000240:      	push	{r7, lr}
 8000242:      	mov	r7, sp
 8000244:      	sub	sp, #0x48
;     let cp = cortex_m::Peripherals::take().unwrap();
 8000246:      	bl	#0x1dc
 800024a:      	str	r0, [sp, #0x8]
 800024c:      	b	#-0x2 <aux7::init::hb592c84bb8440829+0xe>
 800024e:      	ldr	r0, [sp, #0x8]
 8000250:      	and	r0, r0, #0x1
 8000254:      	movw	r1, #0x3ad8
 8000258:      	movt	r1, #0x800
 800025c:      	bl	#0x52
 8000260:      	b	#-0x2 <aux7::init::hb592c84bb8440829+0x22>
;     let dp = stm32f30x::Peripherals::take().unwrap();
 8000262:      	bl	#0xb4
 8000266:      	str	r0, [sp, #0x4]
 8000268:      	b	#-0x2 <aux7::init::hb592c84bb8440829+0x2a>
 800026a:      	ldr	r0, [sp, #0x4]
 800026c:      	and	r0, r0, #0x1
 8000270:      	movw	r1, #0x3ae8
 8000274:      	movt	r1, #0x800
 8000278:      	bl	#0x6a
 800027c:      	b	#-0x2 <aux7::init::hb592c84bb8440829+0x3e>
 800027e:      	add	r0, sp, #0x10
;     let mut rcc = dp.RCC.constrain();
 8000280:      	bl	#0x1566
 8000284:      	b	#-0x2 <aux7::init::hb592c84bb8440829+0x46>
 8000286:      	add	r0, sp, #0x10
;     Leds::new(dp.GPIOE.split(&mut rcc.ahb));
 8000288:      	bl	#0x15a4
 800028c:      	b	#-0x2 <aux7::init::hb592c84bb8440829+0x4e>
 800028e:      	bl	#0x2bc
 8000292:      	str	r1, [sp, #0x44]
 8000294:      	str	r0, [sp, #0x40]
 8000296:      	ldr	r0, [sp, #0x40]
 8000298:      	ldr	r1, [sp, #0x44]
 800029a:      	str	r1, [sp, #0x34]
 800029c:      	str	r0, [sp, #0x30]
 800029e:      	b	#-0x2 <aux7::init::hb592c84bb8440829+0x60>
;     (cp.ITM, unsafe { &*GPIOE::ptr() })
 80002a0:      	bl	#0x168a
 80002a4:      	str	r0, [sp]
 80002a6:      	b	#-0x2 <aux7::init::hb592c84bb8440829+0x68>
 80002a8:      	ldr	r0, [sp]
 80002aa:      	str	r0, [sp, #0xc]
; }
 80002ac:      	ldr	r0, [sp, #0xc]
 80002ae:      	add	sp, #0x48
 80002b0:      	pop	{r7, pc}

080002b2 <core::option::Option<T>::unwrap::h947b0b4a2d5ef977>:
;     pub const fn unwrap(self) -> T {
 80002b2:      	push	{r7, lr}
 80002b4:      	mov	r7, sp
 80002b6:      	sub	sp, #0x10
 80002b8:      	mov	r2, r0
 80002ba:      	strb	r0, [r7, #-5]
;             Some(val) => val,
 80002be:      	ldrb	r0, [r7, #-5]
 80002c2:      	lsls	r3, r0, #0x1f
 80002c4:      	cmp	r3, #0x0
 80002c6:      	str	r1, [sp, #0x4]
 80002c8:      	beq	#0x2 <core::option::Option<T>::unwrap::h947b0b4a2d5ef977+0x1c>
 80002ca:      	b	#-0x2 <core::option::Option<T>::unwrap::h947b0b4a2d5ef977+0x1a>
 80002cc:      	b	#0x12 <core::option::Option<T>::unwrap::h947b0b4a2d5ef977+0x30>
;             None => panic!("called `Option::unwrap()` on a `None` value"),
 80002ce:      	movw	r0, #0x3af8
 80002d2:      	movt	r0, #0x800
 80002d6:      	movs	r1, #0x2b
 80002d8:      	ldr	r2, [sp, #0x4]
 80002da:      	bl	#0x1e28
 80002de:      	trap
;         match self {
 80002e0:      	trap
;     }
 80002e2:      	add	sp, #0x10
 80002e4:      	pop	{r7, pc}

080002e6 <core::option::Option<T>::unwrap::he4b668db7c2a4a07>:
;     pub const fn unwrap(self) -> T {
 80002e6:      	push	{r7, lr}
 80002e8:      	mov	r7, sp
 80002ea:      	sub	sp, #0x10
 80002ec:      	mov	r2, r0
 80002ee:      	strb	r0, [r7, #-5]
;             Some(val) => val,
 80002f2:      	ldrb	r0, [r7, #-5]
 80002f6:      	lsls	r3, r0, #0x1f
 80002f8:      	cmp	r3, #0x0
 80002fa:      	str	r1, [sp, #0x4]
 80002fc:      	beq	#0x2 <core::option::Option<T>::unwrap::he4b668db7c2a4a07+0x1c>
 80002fe:      	b	#-0x2 <core::option::Option<T>::unwrap::he4b668db7c2a4a07+0x1a>
 8000300:      	b	#0x12 <core::option::Option<T>::unwrap::he4b668db7c2a4a07+0x30>
;             None => panic!("called `Option::unwrap()` on a `None` value"),
 8000302:      	movw	r0, #0x3af8
 8000306:      	movt	r0, #0x800
 800030a:      	movs	r1, #0x2b
 800030c:      	ldr	r2, [sp, #0x4]
 800030e:      	bl	#0x1df4
 8000312:      	trap
;         match self {
 8000314:      	trap
;     }
 8000316:      	add	sp, #0x10
 8000318:      	pop	{r7, pc}

0800031a <stm32f30x::Peripherals::take::h18e2b5b8599b5120>:
;     pub fn take() -> Option<Self> {
 800031a:      	push	{r7, lr}
 800031c:      	mov	r7, sp
 800031e:      	sub	sp, #0x8
;         cortex_m::interrupt::free(|_| {
 8000320:      	bl	#0xe
 8000324:      	str	r0, [sp]
 8000326:      	b	#-0x2 <stm32f30x::Peripherals::take::h18e2b5b8599b5120+0xe>
;     }
 8000328:      	ldr	r0, [sp]
 800032a:      	and	r0, r0, #0x1
 800032e:      	add	sp, #0x8
 8000330:      	pop	{r7, pc}

08000332 <cortex_m::interrupt::free::h55307b84cfc2f6bb>:
; pub fn free<F, R>(f: F) -> R
 8000332:      	push	{r7, lr}
 8000334:      	mov	r7, sp
 8000336:      	sub	sp, #0x20
;     let primask = crate::register::primask::read();
 8000338:      	bl	#0x15c
 800033c:      	mov	r1, r0
 800033e:      	strb	r0, [r7, #-2]
 8000342:      	str	r1, [sp, #0xc]
 8000344:      	b	#-0x2 <cortex_m::interrupt::free::h55307b84cfc2f6bb+0x14>
;     disable();
 8000346:      	bl	#0x1f8
 800034a:      	b	#-0x2 <cortex_m::interrupt::free::h55307b84cfc2f6bb+0x1a>
;     let r = f(unsafe { &CriticalSection::new() });
 800034c:      	bl	#0x1ca4
 8000350:      	b	#-0x2 <cortex_m::interrupt::free::h55307b84cfc2f6bb+0x20>
 8000352:      	add	r0, sp, #0x14
;     let r = f(unsafe { &CriticalSection::new() });
 8000354:      	str	r0, [sp, #0x10]
 8000356:      	ldr	r0, [sp, #0x10]
 8000358:      	bl	#0x92
 800035c:      	mov	r1, r0
 800035e:      	strb	r0, [r7, #-1]
 8000362:      	str	r1, [sp, #0x8]
 8000364:      	b	#-0x2 <cortex_m::interrupt::free::h55307b84cfc2f6bb+0x34>
;     if primask.is_active() {
 8000366:      	ldr	r0, [sp, #0xc]
 8000368:      	and	r0, r0, #0x1
 800036c:      	bl	#0x15c
 8000370:      	str	r0, [sp, #0x4]
 8000372:      	b	#-0x2 <cortex_m::interrupt::free::h55307b84cfc2f6bb+0x42>
 8000374:      	ldr	r0, [sp, #0x4]
 8000376:      	lsls	r1, r0, #0x1f
 8000378:      	cmp	r1, #0x0
 800037a:      	bne	#0x2 <cortex_m::interrupt::free::h55307b84cfc2f6bb+0x4e>
 800037c:      	b	#-0x2 <cortex_m::interrupt::free::h55307b84cfc2f6bb+0x4c>
 800037e:      	b	#0x4 <cortex_m::interrupt::free::h55307b84cfc2f6bb+0x54>
;         unsafe { enable() }
 8000380:      	bl	#0x1b2
 8000384:      	b	#-0x2 <cortex_m::interrupt::free::h55307b84cfc2f6bb+0x54>
; }
 8000386:      	ldr	r0, [sp, #0x8]
 8000388:      	and	r0, r0, #0x1
 800038c:      	add	sp, #0x20
 800038e:      	pop	{r7, pc}

08000390 <cortex_m::interrupt::free::h5bb11f3b8784bac3>:
; pub fn free<F, R>(f: F) -> R
 8000390:      	push	{r7, lr}
 8000392:      	mov	r7, sp
 8000394:      	sub	sp, #0x20
;     let primask = crate::register::primask::read();
 8000396:      	bl	#0xfe
 800039a:      	mov	r1, r0
 800039c:      	strb	r0, [r7, #-2]
 80003a0:      	str	r1, [sp, #0xc]
 80003a2:      	b	#-0x2 <cortex_m::interrupt::free::h5bb11f3b8784bac3+0x14>
;     disable();
 80003a4:      	bl	#0x19a
 80003a8:      	b	#-0x2 <cortex_m::interrupt::free::h5bb11f3b8784bac3+0x1a>
;     let r = f(unsafe { &CriticalSection::new() });
 80003aa:      	bl	#0x1c46
 80003ae:      	b	#-0x2 <cortex_m::interrupt::free::h5bb11f3b8784bac3+0x20>
 80003b0:      	add	r0, sp, #0x14
;     let r = f(unsafe { &CriticalSection::new() });
 80003b2:      	str	r0, [sp, #0x10]
 80003b4:      	ldr	r0, [sp, #0x10]
 80003b6:      	bl	#0x144
 80003ba:      	mov	r1, r0
 80003bc:      	strb	r0, [r7, #-1]
 80003c0:      	str	r1, [sp, #0x8]
 80003c2:      	b	#-0x2 <cortex_m::interrupt::free::h5bb11f3b8784bac3+0x34>
;     if primask.is_active() {
 80003c4:      	ldr	r0, [sp, #0xc]
 80003c6:      	and	r0, r0, #0x1
 80003ca:      	bl	#0xfe
 80003ce:      	str	r0, [sp, #0x4]
 80003d0:      	b	#-0x2 <cortex_m::interrupt::free::h5bb11f3b8784bac3+0x42>
 80003d2:      	ldr	r0, [sp, #0x4]
 80003d4:      	lsls	r1, r0, #0x1f
 80003d6:      	cmp	r1, #0x0
 80003d8:      	bne	#0x2 <cortex_m::interrupt::free::h5bb11f3b8784bac3+0x4e>
 80003da:      	b	#-0x2 <cortex_m::interrupt::free::h5bb11f3b8784bac3+0x4c>
 80003dc:      	b	#0x4 <cortex_m::interrupt::free::h5bb11f3b8784bac3+0x54>
;         unsafe { enable() }
 80003de:      	bl	#0x154
 80003e2:      	b	#-0x2 <cortex_m::interrupt::free::h5bb11f3b8784bac3+0x54>
; }
 80003e4:      	ldr	r0, [sp, #0x8]
 80003e6:      	and	r0, r0, #0x1
 80003ea:      	add	sp, #0x20
 80003ec:      	pop	{r7, pc}

080003ee <stm32f30x::Peripherals::take::{{closure}}::h7016fb5be10b1d53>:
;         cortex_m::interrupt::free(|_| {
 80003ee:      	push	{r7, lr}
 80003f0:      	mov	r7, sp
 80003f2:      	sub	sp, #0x10
 80003f4:      	str	r0, [sp, #0xc]
;             if unsafe { DEVICE_PERIPHERALS } {
 80003f6:      	movw	r0, #0x0
 80003fa:      	movt	r0, #0x2000
 80003fe:      	ldrb	r0, [r0]
 8000400:      	lsls	r0, r0, #0x1f
 8000402:      	cmp	r0, #0x0
 8000404:      	bne	#0x6 <stm32f30x::Peripherals::take::{{closure}}::h7016fb5be10b1d53+0x20>
 8000406:      	b	#-0x2 <stm32f30x::Peripherals::take::{{closure}}::h7016fb5be10b1d53+0x1a>
;                 Some(unsafe { Peripherals::steal() })
 8000408:      	bl	#0x1536
 800040c:      	b	#0x6 <stm32f30x::Peripherals::take::{{closure}}::h7016fb5be10b1d53+0x28>
 800040e:      	movs	r0, #0x0
;                 None
 8000410:      	strb	r0, [r7, #-9]
;             if unsafe { DEVICE_PERIPHERALS } {
 8000414:      	b	#0x6 <stm32f30x::Peripherals::take::{{closure}}::h7016fb5be10b1d53+0x30>
 8000416:      	movs	r0, #0x1
;                 Some(unsafe { Peripherals::steal() })
 8000418:      	strb	r0, [r7, #-9]
;             if unsafe { DEVICE_PERIPHERALS } {
 800041c:      	b	#-0x2 <stm32f30x::Peripherals::take::{{closure}}::h7016fb5be10b1d53+0x30>
;         })
 800041e:      	ldrb	r0, [r7, #-9]
 8000422:      	add	sp, #0x10
 8000424:      	pop	{r7, pc}

08000426 <cortex_m::peripheral::Peripherals::take::h33f93533934c9d35>:
;     pub fn take() -> Option<Self> {
 8000426:      	push	{r7, lr}
 8000428:      	mov	r7, sp
 800042a:      	sub	sp, #0x8
;         interrupt::free(|_| {
 800042c:      	bl	#-0xa0
 8000430:      	str	r0, [sp]
 8000432:      	b	#-0x2 <cortex_m::peripheral::Peripherals::take::h33f93533934c9d35+0xe>
;     }
 8000434:      	ldr	r0, [sp]
 8000436:      	and	r0, r0, #0x1
 800043a:      	add	sp, #0x8
 800043c:      	pop	{r7, pc}

0800043e <cortex_m::peripheral::Peripherals::steal::h91b8f25fa5f79ec9>:
;     pub unsafe fn steal() -> Self {
 800043e:      	sub	sp, #0x4
;         TAKEN = true;
 8000440:      	movw	r0, #0x1
 8000444:      	movt	r0, #0x2000
 8000448:      	movs	r1, #0x1
 800044a:      	strb	r1, [r0]
;     }
 800044c:      	add	sp, #0x4
 800044e:      	bx	lr

08000450 <<cortex_m::register::primask::Primask as core::cmp::PartialEq>::eq::h11c08d9d6f1f679c>:
; #[derive(Clone, Copy, Debug, Eq, PartialEq)]
 8000450:      	sub	sp, #0x14
 8000452:      	str	r0, [sp, #0x4]
 8000454:      	str	r1, [sp, #0x8]
 8000456:      	ldrb	r0, [r0]
 8000458:      	str	r0, [sp, #0xc]
 800045a:      	ldrb	r1, [r1]
 800045c:      	str	r1, [sp, #0x10]
 800045e:      	cmp	r0, r1
 8000460:      	bne	#0x8 <<cortex_m::register::primask::Primask as core::cmp::PartialEq>::eq::h11c08d9d6f1f679c+0x1c>
 8000462:      	b	#-0x2 <<cortex_m::register::primask::Primask as core::cmp::PartialEq>::eq::h11c08d9d6f1f679c+0x14>
 8000464:      	movs	r0, #0x1
; #[derive(Clone, Copy, Debug, Eq, PartialEq)]
 8000466:      	strb.w	r0, [sp, #0x3]
 800046a:      	b	#0x6 <<cortex_m::register::primask::Primask as core::cmp::PartialEq>::eq::h11c08d9d6f1f679c+0x24>
 800046c:      	movs	r0, #0x0
; #[derive(Clone, Copy, Debug, Eq, PartialEq)]
 800046e:      	strb.w	r0, [sp, #0x3]
 8000472:      	b	#-0x2 <<cortex_m::register::primask::Primask as core::cmp::PartialEq>::eq::h11c08d9d6f1f679c+0x24>
 8000474:      	ldrb.w	r0, [sp, #0x3]
 8000478:      	lsls	r0, r0, #0x1f
 800047a:      	cmp	r0, #0x0
 800047c:      	bne	#0x8 <<cortex_m::register::primask::Primask as core::cmp::PartialEq>::eq::h11c08d9d6f1f679c+0x38>
 800047e:      	b	#-0x2 <<cortex_m::register::primask::Primask as core::cmp::PartialEq>::eq::h11c08d9d6f1f679c+0x30>
 8000480:      	movs	r0, #0x0
; #[derive(Clone, Copy, Debug, Eq, PartialEq)]
 8000482:      	strb.w	r0, [sp, #0x2]
 8000486:      	b	#0x6 <<cortex_m::register::primask::Primask as core::cmp::PartialEq>::eq::h11c08d9d6f1f679c+0x40>
 8000488:      	movs	r0, #0x1
; #[derive(Clone, Copy, Debug, Eq, PartialEq)]
 800048a:      	strb.w	r0, [sp, #0x2]
 800048e:      	b	#-0x2 <<cortex_m::register::primask::Primask as core::cmp::PartialEq>::eq::h11c08d9d6f1f679c+0x40>
 8000490:      	ldrb.w	r0, [sp, #0x2]
 8000494:      	add	sp, #0x14
 8000496:      	bx	lr

08000498 <cortex_m::register::primask::read::hb4b6e4e7dfbd7642>:
; pub fn read() -> Primask {
 8000498:      	push	{r7, lr}
 800049a:      	mov	r7, sp
 800049c:      	sub	sp, #0x10
;                     unsafe { __primask() }
 800049e:      	bl	#0x1540
 80004a2:      	mov	r1, r0
 80004a4:      	str	r0, [sp, #0xc]
 80004a6:      	str	r1, [sp, #0x4]
 80004a8:      	b	#-0x2 <cortex_m::register::primask::read::hb4b6e4e7dfbd7642+0x12>
;             if r & (1 << 0) == (1 << 0) {
 80004aa:      	ldr	r0, [sp, #0x4]
 80004ac:      	lsls	r1, r0, #0x1f
 80004ae:      	cmp	r1, #0x0
 80004b0:      	bne	#0x8 <cortex_m::register::primask::read::hb4b6e4e7dfbd7642+0x24>
 80004b2:      	b	#-0x2 <cortex_m::register::primask::read::hb4b6e4e7dfbd7642+0x1c>
 80004b4:      	movs	r0, #0x0
;                 Primask::Active
 80004b6:      	strb	r0, [r7, #-5]
;             if r & (1 << 0) == (1 << 0) {
 80004ba:      	b	#0x6 <cortex_m::register::primask::read::hb4b6e4e7dfbd7642+0x2c>
 80004bc:      	movs	r0, #0x1
;                 Primask::Inactive
 80004be:      	strb	r0, [r7, #-5]
;             if r & (1 << 0) == (1 << 0) {
 80004c2:      	b	#-0x2 <cortex_m::register::primask::read::hb4b6e4e7dfbd7642+0x2c>
; }
 80004c4:      	ldrb	r0, [r7, #-5]
 80004c8:      	add	sp, #0x10
 80004ca:      	pop	{r7, pc}

080004cc <cortex_m::register::primask::Primask::is_active::hd643b30d11bb3661>:
;     pub fn is_active(self) -> bool {
 80004cc:      	push	{r7, lr}
 80004ce:      	mov	r7, sp
 80004d0:      	sub	sp, #0x10
 80004d2:      	mov	r1, r0
 80004d4:      	strb	r0, [r7, #-1]
;         self == Primask::Active
 80004d8:      	movw	r0, #0x3b23
 80004dc:      	movt	r0, #0x800
 80004e0:      	subs	r2, r7, #0x1
 80004e2:      	str	r0, [sp, #0x8]
 80004e4:      	mov	r0, r2
 80004e6:      	ldr	r2, [sp, #0x8]
 80004e8:      	str	r1, [sp, #0x4]
 80004ea:      	mov	r1, r2
 80004ec:      	bl	#-0xa0
 80004f0:      	str	r0, [sp]
 80004f2:      	b	#-0x2 <cortex_m::register::primask::Primask::is_active::hd643b30d11bb3661+0x28>
;     }
 80004f4:      	ldr	r0, [sp]
 80004f6:      	and	r0, r0, #0x1
 80004fa:      	add	sp, #0x10
 80004fc:      	pop	{r7, pc}

080004fe <cortex_m::peripheral::Peripherals::take::{{closure}}::hed3cf13f2bcc7d8a>:
;         interrupt::free(|_| {
 80004fe:      	push	{r7, lr}
 8000500:      	mov	r7, sp
 8000502:      	sub	sp, #0x10
 8000504:      	str	r0, [sp, #0xc]
;             if unsafe { TAKEN } {
 8000506:      	movw	r0, #0x1
 800050a:      	movt	r0, #0x2000
 800050e:      	ldrb	r0, [r0]
 8000510:      	lsls	r0, r0, #0x1f
 8000512:      	cmp	r0, #0x0
 8000514:      	bne	#0x6 <cortex_m::peripheral::Peripherals::take::{{closure}}::hed3cf13f2bcc7d8a+0x20>
 8000516:      	b	#-0x2 <cortex_m::peripheral::Peripherals::take::{{closure}}::hed3cf13f2bcc7d8a+0x1a>
;                 Some(unsafe { Peripherals::steal() })
 8000518:      	bl	#-0xde
 800051c:      	b	#0x6 <cortex_m::peripheral::Peripherals::take::{{closure}}::hed3cf13f2bcc7d8a+0x28>
 800051e:      	movs	r0, #0x0
;                 None
 8000520:      	strb	r0, [r7, #-9]
;             if unsafe { TAKEN } {
 8000524:      	b	#0x6 <cortex_m::peripheral::Peripherals::take::{{closure}}::hed3cf13f2bcc7d8a+0x30>
 8000526:      	movs	r0, #0x1
;                 Some(unsafe { Peripherals::steal() })
 8000528:      	strb	r0, [r7, #-9]
;             if unsafe { TAKEN } {
 800052c:      	b	#-0x2 <cortex_m::peripheral::Peripherals::take::{{closure}}::hed3cf13f2bcc7d8a+0x30>
;         })
 800052e:      	ldrb	r0, [r7, #-9]
 8000532:      	add	sp, #0x10
 8000534:      	pop	{r7, pc}

08000536 <cortex_m::interrupt::enable::h8d81d73e56408f0b>:
; pub unsafe fn enable() {
 8000536:      	push	{r7, lr}
 8000538:      	mov	r7, sp
;             __cpsie();
 800053a:      	bl	#0x14a0
 800053e:      	b	#-0x2 <cortex_m::interrupt::enable::h8d81d73e56408f0b+0xa>
; }
 8000540:      	pop	{r7, pc}

08000542 <cortex_m::interrupt::disable::hab803f49552c3139>:
; pub fn disable() {
 8000542:      	push	{r7, lr}
 8000544:      	mov	r7, sp
;             __cpsid();
 8000546:      	bl	#0x1490
 800054a:      	b	#-0x2 <cortex_m::interrupt::disable::hab803f49552c3139+0xa>
; }
 800054c:      	pop	{r7, pc}

0800054e <f3::led::Leds::new::h1ea59263a3e3827c>:
;     pub fn new(mut gpioe: gpioe::Parts) -> Self {
 800054e:      	push	{r4, r5, r6, r7, lr}
 8000550:      	add	r7, sp, #0xc
 8000552:      	str	r8, [sp, #-4]!
 8000556:      	sub	sp, #0x78
 8000558:      	add	r0, sp, #0x44
;         let n = gpioe
 800055a:      	str	r0, [sp, #0x40]
 800055c:      	ldr	r1, [sp, #0x40]
 800055e:      	bl	#0x202
 8000562:      	b	#-0x2 <f3::led::Leds::new::h1ea59263a3e3827c+0x16>
 8000564:      	add	r0, sp, #0x44
;         let ne = gpioe
 8000566:      	str	r0, [sp, #0x3c]
 8000568:      	ldr	r1, [sp, #0x3c]
 800056a:      	bl	#0x316
 800056e:      	b	#-0x2 <f3::led::Leds::new::h1ea59263a3e3827c+0x22>
 8000570:      	add	r0, sp, #0x44
;         let e = gpioe
 8000572:      	str	r0, [sp, #0x38]
 8000574:      	ldr	r1, [sp, #0x38]
 8000576:      	bl	#0x42a
 800057a:      	b	#-0x2 <f3::led::Leds::new::h1ea59263a3e3827c+0x2e>
 800057c:      	add	r0, sp, #0x44
;         let se = gpioe
 800057e:      	str	r0, [sp, #0x34]
 8000580:      	ldr	r1, [sp, #0x34]
 8000582:      	bl	#0x53e
 8000586:      	b	#-0x2 <f3::led::Leds::new::h1ea59263a3e3827c+0x3a>
 8000588:      	add	r0, sp, #0x44
;         let s = gpioe
 800058a:      	str	r0, [sp, #0x30]
 800058c:      	ldr	r1, [sp, #0x30]
 800058e:      	bl	#0x652
 8000592:      	b	#-0x2 <f3::led::Leds::new::h1ea59263a3e3827c+0x46>
 8000594:      	add	r0, sp, #0x44
;         let sw = gpioe
 8000596:      	str	r0, [sp, #0x2c]
 8000598:      	ldr	r1, [sp, #0x2c]
 800059a:      	bl	#0x766
 800059e:      	b	#-0x2 <f3::led::Leds::new::h1ea59263a3e3827c+0x52>
 80005a0:      	add	r0, sp, #0x44
;         let w = gpioe
 80005a2:      	str	r0, [sp, #0x28]
 80005a4:      	ldr	r1, [sp, #0x28]
 80005a6:      	bl	#0x87a
 80005aa:      	b	#-0x2 <f3::led::Leds::new::h1ea59263a3e3827c+0x5e>
 80005ac:      	add	r0, sp, #0x44
;         let nw = gpioe
 80005ae:      	str	r0, [sp, #0x24]
 80005b0:      	ldr	r1, [sp, #0x24]
 80005b2:      	bl	#0x8e
 80005b6:      	b	#-0x2 <f3::led::Leds::new::h1ea59263a3e3827c+0x6a>
;                 n.into(),
 80005b8:      	bl	#0xa08
 80005bc:      	str	r0, [sp, #0x20]
 80005be:      	b	#-0x2 <f3::led::Leds::new::h1ea59263a3e3827c+0x72>
;                 ne.into(),
 80005c0:      	bl	#0xa38
 80005c4:      	str	r0, [sp, #0x1c]
 80005c6:      	b	#-0x2 <f3::led::Leds::new::h1ea59263a3e3827c+0x7a>
;                 e.into(),
 80005c8:      	bl	#0xa68
 80005cc:      	str	r0, [sp, #0x18]
 80005ce:      	b	#-0x2 <f3::led::Leds::new::h1ea59263a3e3827c+0x82>
;                 se.into(),
 80005d0:      	bl	#0xa98
 80005d4:      	str	r0, [sp, #0x14]
 80005d6:      	b	#-0x2 <f3::led::Leds::new::h1ea59263a3e3827c+0x8a>
;                 s.into(),
 80005d8:      	bl	#0xaac
 80005dc:      	str	r0, [sp, #0x10]
 80005de:      	b	#-0x2 <f3::led::Leds::new::h1ea59263a3e3827c+0x92>
;                 sw.into(),
 80005e0:      	bl	#0xa6c
 80005e4:      	str	r0, [sp, #0xc]
 80005e6:      	b	#-0x2 <f3::led::Leds::new::h1ea59263a3e3827c+0x9a>
;                 w.into(),
 80005e8:      	bl	#0xa2c
 80005ec:      	str	r0, [sp, #0x8]
 80005ee:      	b	#-0x2 <f3::led::Leds::new::h1ea59263a3e3827c+0xa2>
;                 nw.into(),
 80005f0:      	bl	#0x9ec
 80005f4:      	str	r0, [sp, #0x4]
 80005f6:      	b	#-0x2 <f3::led::Leds::new::h1ea59263a3e3827c+0xaa>
;             leds: [
 80005f8:      	ldr	r0, [sp, #0x20]
 80005fa:      	strb.w	r0, [sp, #0x50]
 80005fe:      	ldr	r1, [sp, #0x1c]
 8000600:      	strb.w	r1, [sp, #0x51]
 8000604:      	ldr	r2, [sp, #0x18]
 8000606:      	strb.w	r2, [sp, #0x52]
 800060a:      	ldr	r3, [sp, #0x14]
 800060c:      	strb.w	r3, [sp, #0x53]
 8000610:      	ldr.w	r12, [sp, #0x10]
 8000614:      	strb.w	r12, [sp, #0x54]
 8000618:      	ldr.w	lr, [sp, #0xc]
 800061c:      	strb.w	lr, [sp, #0x55]
 8000620:      	ldr	r4, [sp, #0x8]
 8000622:      	strb.w	r4, [sp, #0x56]
 8000626:      	ldr	r5, [sp, #0x4]
 8000628:      	strb.w	r5, [sp, #0x57]
;         Leds {
 800062c:      	ldr	r6, [sp, #0x50]
 800062e:      	ldr.w	r8, [sp, #0x54]
 8000632:      	str.w	r8, [sp, #0x4c]
 8000636:      	str	r6, [sp, #0x48]
;     }
 8000638:      	ldr	r0, [sp, #0x48]
 800063a:      	ldr	r1, [sp, #0x4c]
 800063c:      	add	sp, #0x78
 800063e:      	ldr	r8, [sp], #4
 8000642:      	pop	{r4, r5, r6, r7, pc}

08000644 <_ZN13stm32f30x_hal4gpio5gpioe15PE8$LT$MODE$GT$21into_push_pull_output17hea3915472d3baccfE>:
;                     pub fn into_push_pull_output(
 8000644:      	push	{r7, lr}
 8000646:      	mov	r7, sp
 8000648:      	sub	sp, #0x30
 800064a:      	str	r0, [sp, #0x28]
 800064c:      	str	r1, [sp, #0x2c]
;                         let offset = 2 * $i;
 800064e:      	movw	r2, #0x3be4
 8000652:      	movt	r2, #0x800
 8000656:      	ldr	r2, [r2]
 8000658:      	str	r2, [sp, #0x10]
 800065a:      	movs	r2, #0x1
;                         let mode = 0b01;
 800065c:      	str	r2, [sp, #0x14]
;                         moder.moder().modify(|r, w| unsafe {
 800065e:      	str	r1, [sp, #0x8]
 8000660:      	bl	#0x1038
 8000664:      	str	r0, [sp, #0x4]
 8000666:      	b	#-0x2 <_ZN13stm32f30x_hal4gpio5gpioe15PE8$LT$MODE$GT$21into_push_pull_output17hea3915472d3baccfE+0x24>
 8000668:      	add	r0, sp, #0x10
;                         moder.moder().modify(|r, w| unsafe {
 800066a:      	str	r0, [sp, #0x18]
 800066c:      	add	r0, sp, #0x14
 800066e:      	str	r0, [sp, #0x1c]
 8000670:      	ldr	r1, [sp, #0x18]
 8000672:      	ldr	r2, [sp, #0x1c]
 8000674:      	ldr	r0, [sp, #0x4]
 8000676:      	bl	#0xb0e
 800067a:      	b	#-0x2 <_ZN13stm32f30x_hal4gpio5gpioe15PE8$LT$MODE$GT$21into_push_pull_output17hea3915472d3baccfE+0x38>
;                         otyper
 800067c:      	ldr	r0, [sp, #0x8]
 800067e:      	bl	#0x1030
 8000682:      	str	r0, [sp]
 8000684:      	b	#-0x2 <_ZN13stm32f30x_hal4gpio5gpioe15PE8$LT$MODE$GT$21into_push_pull_output17hea3915472d3baccfE+0x42>
 8000686:      	ldr	r0, [sp]
 8000688:      	bl	#0xeb4
 800068c:      	b	#-0x2 <_ZN13stm32f30x_hal4gpio5gpioe15PE8$LT$MODE$GT$21into_push_pull_output17hea3915472d3baccfE+0x4a>
;                     }
 800068e:      	add	sp, #0x30
 8000690:      	pop	{r7, pc}

08000692 <_ZN13stm32f30x_hal4gpio5gpioe15PE8$LT$MODE$GT$21into_push_pull_output28_$u7b$$u7b$closure$u7d$$u7d$17h105cf3545f1f56b9E>:
;                         moder.moder().modify(|r, w| unsafe {
 8000692:      	push	{r4, r5, r7, lr}
 8000694:      	add	r7, sp, #0x8
 8000696:      	sub	sp, #0x30
 8000698:      	str	r0, [sp, #0x20]
 800069a:      	str	r1, [sp, #0x24]
 800069c:      	str	r2, [sp, #0x28]
 800069e:      	str	r3, [sp, #0x2c]
;                             w.bits((r.bits() & !(0b11 << offset)) | (mode << offset))
 80006a0:      	str	r0, [sp, #0x1c]
 80006a2:      	mov	r0, r2
 80006a4:      	str	r3, [sp, #0x18]
 80006a6:      	str	r1, [sp, #0x14]
 80006a8:      	bl	#0x9f8
 80006ac:      	str	r0, [sp, #0x10]
 80006ae:      	b	#-0x2 <_ZN13stm32f30x_hal4gpio5gpioe15PE8$LT$MODE$GT$21into_push_pull_output28_$u7b$$u7b$closure$u7d$$u7d$17h105cf3545f1f56b9E+0x1e>
 80006b0:      	ldr	r0, [sp, #0x1c]
 80006b2:      	ldr	r1, [r0]
 80006b4:      	and	r2, r1, #0x1f
 80006b8:      	movs	r3, #0x3
 80006ba:      	lsl.w	r2, r3, r2
 80006be:      	lsrs	r1, r1, #0x5
 80006c0:      	cmp	r1, #0x0
 80006c2:      	str	r2, [sp, #0xc]
 80006c4:      	bne	#0x42 <_ZN13stm32f30x_hal4gpio5gpioe15PE8$LT$MODE$GT$21into_push_pull_output28_$u7b$$u7b$closure$u7d$$u7d$17h105cf3545f1f56b9E+0x78>
 80006c6:      	b	#-0x2 <_ZN13stm32f30x_hal4gpio5gpioe15PE8$LT$MODE$GT$21into_push_pull_output28_$u7b$$u7b$closure$u7d$$u7d$17h105cf3545f1f56b9E+0x36>
 80006c8:      	ldr	r0, [sp, #0x10]
 80006ca:      	ldr	r1, [sp, #0xc]
 80006cc:      	bic.w	r2, r0, r1
 80006d0:      	ldr	r3, [sp, #0x14]
 80006d2:      	ldr.w	r12, [r3]
 80006d6:      	ldr.w	lr, [sp, #0x1c]
 80006da:      	ldr.w	r4, [lr]
 80006de:      	and	r5, r4, #0x1f
 80006e2:      	lsl.w	r12, r12, r5
 80006e6:      	lsrs	r4, r4, #0x5
 80006e8:      	cmp	r4, #0x0
 80006ea:      	str	r2, [sp, #0x8]
 80006ec:      	str.w	r12, [sp, #0x4]
 80006f0:      	bne	#0x2e <_ZN13stm32f30x_hal4gpio5gpioe15PE8$LT$MODE$GT$21into_push_pull_output28_$u7b$$u7b$closure$u7d$$u7d$17h105cf3545f1f56b9E+0x90>
 80006f2:      	b	#-0x2 <_ZN13stm32f30x_hal4gpio5gpioe15PE8$LT$MODE$GT$21into_push_pull_output28_$u7b$$u7b$closure$u7d$$u7d$17h105cf3545f1f56b9E+0x62>
 80006f4:      	ldr	r0, [sp, #0x8]
 80006f6:      	ldr	r1, [sp, #0x4]
 80006f8:      	orrs	r1, r0
 80006fa:      	ldr	r0, [sp, #0x18]
 80006fc:      	bl	#0x9ae
 8000700:      	str	r0, [sp]
 8000702:      	b	#-0x2 <_ZN13stm32f30x_hal4gpio5gpioe15PE8$LT$MODE$GT$21into_push_pull_output28_$u7b$$u7b$closure$u7d$$u7d$17h105cf3545f1f56b9E+0x72>
;                         });
 8000704:      	ldr	r0, [sp]
 8000706:      	add	sp, #0x30
 8000708:      	pop	{r4, r5, r7, pc}
;                             w.bits((r.bits() & !(0b11 << offset)) | (mode << offset))
 800070a:      	movw	r0, #0x3b90
 800070e:      	movt	r0, #0x800
 8000712:      	movw	r2, #0x3b80
 8000716:      	movt	r2, #0x800
 800071a:      	movs	r1, #0x23
 800071c:      	bl	#0x19e6
 8000720:      	trap
 8000722:      	movw	r0, #0x3b90
 8000726:      	movt	r0, #0x800
 800072a:      	movw	r2, #0x3b80
 800072e:      	movt	r2, #0x800
 8000732:      	movs	r1, #0x23
 8000734:      	bl	#0x19ce
 8000738:      	trap

0800073a <_ZN13stm32f30x_hal4gpio5gpioe15PE8$LT$MODE$GT$21into_push_pull_output28_$u7b$$u7b$closure$u7d$$u7d$17h5d56a574a90d164bE>:
;                             .modify(|r, w| unsafe { w.bits(r.bits() & !(0b1 << $i)) });
 800073a:      	push	{r7, lr}
 800073c:      	mov	r7, sp
 800073e:      	sub	sp, #0x18
 8000740:      	str	r0, [sp, #0x10]
 8000742:      	str	r1, [sp, #0x14]
 8000744:      	str	r1, [sp, #0x8]
 8000746:      	bl	#0x970
 800074a:      	str	r0, [sp, #0x4]
 800074c:      	b	#-0x2 <_ZN13stm32f30x_hal4gpio5gpioe15PE8$LT$MODE$GT$21into_push_pull_output28_$u7b$$u7b$closure$u7d$$u7d$17h5d56a574a90d164bE+0x14>
 800074e:      	ldr	r0, [sp, #0x4]
 8000750:      	bic	r1, r0, #0x100
 8000754:      	ldr	r0, [sp, #0x8]
 8000756:      	bl	#0x96a
 800075a:      	str	r0, [sp]
 800075c:      	b	#-0x2 <_ZN13stm32f30x_hal4gpio5gpioe15PE8$LT$MODE$GT$21into_push_pull_output28_$u7b$$u7b$closure$u7d$$u7d$17h5d56a574a90d164bE+0x24>
 800075e:      	ldr	r0, [sp]
 8000760:      	add	sp, #0x18
 8000762:      	pop	{r7, pc}

08000764 <_ZN13stm32f30x_hal4gpio5gpioe15PE9$LT$MODE$GT$21into_push_pull_output17h95e1283e7c57575fE>:
;                     pub fn into_push_pull_output(
 8000764:      	push	{r7, lr}
 8000766:      	mov	r7, sp
 8000768:      	sub	sp, #0x30
 800076a:      	str	r0, [sp, #0x28]
 800076c:      	str	r1, [sp, #0x2c]
;                         let offset = 2 * $i;
 800076e:      	movw	r2, #0x3bd4
 8000772:      	movt	r2, #0x800
 8000776:      	ldr	r2, [r2]
 8000778:      	str	r2, [sp, #0x10]
 800077a:      	movs	r2, #0x1
;                         let mode = 0b01;
 800077c:      	str	r2, [sp, #0x14]
;                         moder.moder().modify(|r, w| unsafe {
 800077e:      	str	r1, [sp, #0x8]
 8000780:      	bl	#0xf18
 8000784:      	str	r0, [sp, #0x4]
 8000786:      	b	#-0x2 <_ZN13stm32f30x_hal4gpio5gpioe15PE9$LT$MODE$GT$21into_push_pull_output17h95e1283e7c57575fE+0x24>
 8000788:      	add	r0, sp, #0x10
;                         moder.moder().modify(|r, w| unsafe {
 800078a:      	str	r0, [sp, #0x18]
 800078c:      	add	r0, sp, #0x14
 800078e:      	str	r0, [sp, #0x1c]
 8000790:      	ldr	r1, [sp, #0x18]
 8000792:      	ldr	r2, [sp, #0x1c]
 8000794:      	ldr	r0, [sp, #0x4]
 8000796:      	bl	#0x936
 800079a:      	b	#-0x2 <_ZN13stm32f30x_hal4gpio5gpioe15PE9$LT$MODE$GT$21into_push_pull_output17h95e1283e7c57575fE+0x38>
;                         otyper
 800079c:      	ldr	r0, [sp, #0x8]
 800079e:      	bl	#0xf10
 80007a2:      	str	r0, [sp]
 80007a4:      	b	#-0x2 <_ZN13stm32f30x_hal4gpio5gpioe15PE9$LT$MODE$GT$21into_push_pull_output17h95e1283e7c57575fE+0x42>
 80007a6:      	ldr	r0, [sp]
 80007a8:      	bl	#0xcf4
 80007ac:      	b	#-0x2 <_ZN13stm32f30x_hal4gpio5gpioe15PE9$LT$MODE$GT$21into_push_pull_output17h95e1283e7c57575fE+0x4a>
;                     }
 80007ae:      	add	sp, #0x30
 80007b0:      	pop	{r7, pc}

080007b2 <_ZN13stm32f30x_hal4gpio5gpioe15PE9$LT$MODE$GT$21into_push_pull_output28_$u7b$$u7b$closure$u7d$$u7d$17h8df89d17c66f2ba7E>:
;                         moder.moder().modify(|r, w| unsafe {
 80007b2:      	push	{r4, r5, r7, lr}
 80007b4:      	add	r7, sp, #0x8
 80007b6:      	sub	sp, #0x30
 80007b8:      	str	r0, [sp, #0x20]
 80007ba:      	str	r1, [sp, #0x24]
 80007bc:      	str	r2, [sp, #0x28]
 80007be:      	str	r3, [sp, #0x2c]
;                             w.bits((r.bits() & !(0b11 << offset)) | (mode << offset))
 80007c0:      	str	r0, [sp, #0x1c]
 80007c2:      	mov	r0, r2
 80007c4:      	str	r3, [sp, #0x18]
 80007c6:      	str	r1, [sp, #0x14]
 80007c8:      	bl	#0x8d8
 80007cc:      	str	r0, [sp, #0x10]
 80007ce:      	b	#-0x2 <_ZN13stm32f30x_hal4gpio5gpioe15PE9$LT$MODE$GT$21into_push_pull_output28_$u7b$$u7b$closure$u7d$$u7d$17h8df89d17c66f2ba7E+0x1e>
 80007d0:      	ldr	r0, [sp, #0x1c]
 80007d2:      	ldr	r1, [r0]
 80007d4:      	and	r2, r1, #0x1f
 80007d8:      	movs	r3, #0x3
 80007da:      	lsl.w	r2, r3, r2
 80007de:      	lsrs	r1, r1, #0x5
 80007e0:      	cmp	r1, #0x0
 80007e2:      	str	r2, [sp, #0xc]
 80007e4:      	bne	#0x42 <_ZN13stm32f30x_hal4gpio5gpioe15PE9$LT$MODE$GT$21into_push_pull_output28_$u7b$$u7b$closure$u7d$$u7d$17h8df89d17c66f2ba7E+0x78>
 80007e6:      	b	#-0x2 <_ZN13stm32f30x_hal4gpio5gpioe15PE9$LT$MODE$GT$21into_push_pull_output28_$u7b$$u7b$closure$u7d$$u7d$17h8df89d17c66f2ba7E+0x36>
 80007e8:      	ldr	r0, [sp, #0x10]
 80007ea:      	ldr	r1, [sp, #0xc]
 80007ec:      	bic.w	r2, r0, r1
 80007f0:      	ldr	r3, [sp, #0x14]
 80007f2:      	ldr.w	r12, [r3]
 80007f6:      	ldr.w	lr, [sp, #0x1c]
 80007fa:      	ldr.w	r4, [lr]
 80007fe:      	and	r5, r4, #0x1f
 8000802:      	lsl.w	r12, r12, r5
 8000806:      	lsrs	r4, r4, #0x5
 8000808:      	cmp	r4, #0x0
 800080a:      	str	r2, [sp, #0x8]
 800080c:      	str.w	r12, [sp, #0x4]
 8000810:      	bne	#0x2e <_ZN13stm32f30x_hal4gpio5gpioe15PE9$LT$MODE$GT$21into_push_pull_output28_$u7b$$u7b$closure$u7d$$u7d$17h8df89d17c66f2ba7E+0x90>
 8000812:      	b	#-0x2 <_ZN13stm32f30x_hal4gpio5gpioe15PE9$LT$MODE$GT$21into_push_pull_output28_$u7b$$u7b$closure$u7d$$u7d$17h8df89d17c66f2ba7E+0x62>
 8000814:      	ldr	r0, [sp, #0x8]
 8000816:      	ldr	r1, [sp, #0x4]
 8000818:      	orrs	r1, r0
 800081a:      	ldr	r0, [sp, #0x18]
 800081c:      	bl	#0x88e
 8000820:      	str	r0, [sp]
 8000822:      	b	#-0x2 <_ZN13stm32f30x_hal4gpio5gpioe15PE9$LT$MODE$GT$21into_push_pull_output28_$u7b$$u7b$closure$u7d$$u7d$17h8df89d17c66f2ba7E+0x72>
;                         });
 8000824:      	ldr	r0, [sp]
 8000826:      	add	sp, #0x30
 8000828:      	pop	{r4, r5, r7, pc}
;                             w.bits((r.bits() & !(0b11 << offset)) | (mode << offset))
 800082a:      	movw	r0, #0x3b90
 800082e:      	movt	r0, #0x800
 8000832:      	movw	r2, #0x3b80
 8000836:      	movt	r2, #0x800
 800083a:      	movs	r1, #0x23
 800083c:      	bl	#0x18c6
 8000840:      	trap
 8000842:      	movw	r0, #0x3b90
 8000846:      	movt	r0, #0x800
 800084a:      	movw	r2, #0x3b80
 800084e:      	movt	r2, #0x800
 8000852:      	movs	r1, #0x23
 8000854:      	bl	#0x18ae
 8000858:      	trap

0800085a <_ZN13stm32f30x_hal4gpio5gpioe15PE9$LT$MODE$GT$21into_push_pull_output28_$u7b$$u7b$closure$u7d$$u7d$17hede7ff8cb744fbdcE>:
;                             .modify(|r, w| unsafe { w.bits(r.bits() & !(0b1 << $i)) });
 800085a:      	push	{r7, lr}
 800085c:      	mov	r7, sp
 800085e:      	sub	sp, #0x18
 8000860:      	str	r0, [sp, #0x10]
 8000862:      	str	r1, [sp, #0x14]
 8000864:      	str	r1, [sp, #0x8]
 8000866:      	bl	#0x850
 800086a:      	str	r0, [sp, #0x4]
 800086c:      	b	#-0x2 <_ZN13stm32f30x_hal4gpio5gpioe15PE9$LT$MODE$GT$21into_push_pull_output28_$u7b$$u7b$closure$u7d$$u7d$17hede7ff8cb744fbdcE+0x14>
 800086e:      	ldr	r0, [sp, #0x4]
 8000870:      	bic	r1, r0, #0x200
 8000874:      	ldr	r0, [sp, #0x8]
 8000876:      	bl	#0x84a
 800087a:      	str	r0, [sp]
 800087c:      	b	#-0x2 <_ZN13stm32f30x_hal4gpio5gpioe15PE9$LT$MODE$GT$21into_push_pull_output28_$u7b$$u7b$closure$u7d$$u7d$17hede7ff8cb744fbdcE+0x24>
 800087e:      	ldr	r0, [sp]
 8000880:      	add	sp, #0x18
 8000882:      	pop	{r7, pc}

08000884 <_ZN13stm32f30x_hal4gpio5gpioe16PE10$LT$MODE$GT$21into_push_pull_output17h4e8f090902aa93cfE>:
;                     pub fn into_push_pull_output(
 8000884:      	push	{r7, lr}
 8000886:      	mov	r7, sp
 8000888:      	sub	sp, #0x30
 800088a:      	str	r0, [sp, #0x28]
 800088c:      	str	r1, [sp, #0x2c]
;                         let offset = 2 * $i;
 800088e:      	movw	r2, #0x3bdc
 8000892:      	movt	r2, #0x800
 8000896:      	ldr	r2, [r2]
 8000898:      	str	r2, [sp, #0x10]
 800089a:      	movs	r2, #0x1
;                         let mode = 0b01;
 800089c:      	str	r2, [sp, #0x14]
;                         moder.moder().modify(|r, w| unsafe {
 800089e:      	str	r1, [sp, #0x8]
 80008a0:      	bl	#0xdf8
 80008a4:      	str	r0, [sp, #0x4]
 80008a6:      	b	#-0x2 <_ZN13stm32f30x_hal4gpio5gpioe16PE10$LT$MODE$GT$21into_push_pull_output17h4e8f090902aa93cfE+0x24>
 80008a8:      	add	r0, sp, #0x10
;                         moder.moder().modify(|r, w| unsafe {
 80008aa:      	str	r0, [sp, #0x18]
 80008ac:      	add	r0, sp, #0x14
 80008ae:      	str	r0, [sp, #0x1c]
 80008b0:      	ldr	r1, [sp, #0x18]
 80008b2:      	ldr	r2, [sp, #0x1c]
 80008b4:      	ldr	r0, [sp, #0x4]
 80008b6:      	bl	#0x9e2
 80008ba:      	b	#-0x2 <_ZN13stm32f30x_hal4gpio5gpioe16PE10$LT$MODE$GT$21into_push_pull_output17h4e8f090902aa93cfE+0x38>
;                         otyper
 80008bc:      	ldr	r0, [sp, #0x8]
 80008be:      	bl	#0xdf0
 80008c2:      	str	r0, [sp]
 80008c4:      	b	#-0x2 <_ZN13stm32f30x_hal4gpio5gpioe16PE10$LT$MODE$GT$21into_push_pull_output17h4e8f090902aa93cfE+0x42>
 80008c6:      	ldr	r0, [sp]
 80008c8:      	bl	#0xae4
 80008cc:      	b	#-0x2 <_ZN13stm32f30x_hal4gpio5gpioe16PE10$LT$MODE$GT$21into_push_pull_output17h4e8f090902aa93cfE+0x4a>
;                     }
 80008ce:      	add	sp, #0x30
 80008d0:      	pop	{r7, pc}

080008d2 <_ZN13stm32f30x_hal4gpio5gpioe16PE10$LT$MODE$GT$21into_push_pull_output28_$u7b$$u7b$closure$u7d$$u7d$17h00f58431839b7371E>:
;                             .modify(|r, w| unsafe { w.bits(r.bits() & !(0b1 << $i)) });
 80008d2:      	push	{r7, lr}
 80008d4:      	mov	r7, sp
 80008d6:      	sub	sp, #0x18
 80008d8:      	str	r0, [sp, #0x10]
 80008da:      	str	r1, [sp, #0x14]
 80008dc:      	str	r1, [sp, #0x8]
 80008de:      	bl	#0x7d8
 80008e2:      	str	r0, [sp, #0x4]
 80008e4:      	b	#-0x2 <_ZN13stm32f30x_hal4gpio5gpioe16PE10$LT$MODE$GT$21into_push_pull_output28_$u7b$$u7b$closure$u7d$$u7d$17h00f58431839b7371E+0x14>
 80008e6:      	ldr	r0, [sp, #0x4]
 80008e8:      	bic	r1, r0, #0x400
 80008ec:      	ldr	r0, [sp, #0x8]
 80008ee:      	bl	#0x7d2
 80008f2:      	str	r0, [sp]
 80008f4:      	b	#-0x2 <_ZN13stm32f30x_hal4gpio5gpioe16PE10$LT$MODE$GT$21into_push_pull_output28_$u7b$$u7b$closure$u7d$$u7d$17h00f58431839b7371E+0x24>
 80008f6:      	ldr	r0, [sp]
 80008f8:      	add	sp, #0x18
 80008fa:      	pop	{r7, pc}

080008fc <_ZN13stm32f30x_hal4gpio5gpioe16PE10$LT$MODE$GT$21into_push_pull_output28_$u7b$$u7b$closure$u7d$$u7d$17h799296fd75331ff7E>:
;                         moder.moder().modify(|r, w| unsafe {
 80008fc:      	push	{r4, r5, r7, lr}
 80008fe:      	add	r7, sp, #0x8
 8000900:      	sub	sp, #0x30
 8000902:      	str	r0, [sp, #0x20]
 8000904:      	str	r1, [sp, #0x24]
 8000906:      	str	r2, [sp, #0x28]
 8000908:      	str	r3, [sp, #0x2c]
;                             w.bits((r.bits() & !(0b11 << offset)) | (mode << offset))
 800090a:      	str	r0, [sp, #0x1c]
 800090c:      	mov	r0, r2
 800090e:      	str	r3, [sp, #0x18]
 8000910:      	str	r1, [sp, #0x14]
 8000912:      	bl	#0x78e
 8000916:      	str	r0, [sp, #0x10]
 8000918:      	b	#-0x2 <_ZN13stm32f30x_hal4gpio5gpioe16PE10$LT$MODE$GT$21into_push_pull_output28_$u7b$$u7b$closure$u7d$$u7d$17h799296fd75331ff7E+0x1e>
 800091a:      	ldr	r0, [sp, #0x1c]
 800091c:      	ldr	r1, [r0]
 800091e:      	and	r2, r1, #0x1f
 8000922:      	movs	r3, #0x3
 8000924:      	lsl.w	r2, r3, r2
 8000928:      	lsrs	r1, r1, #0x5
 800092a:      	cmp	r1, #0x0
 800092c:      	str	r2, [sp, #0xc]
 800092e:      	bne	#0x42 <_ZN13stm32f30x_hal4gpio5gpioe16PE10$LT$MODE$GT$21into_push_pull_output28_$u7b$$u7b$closure$u7d$$u7d$17h799296fd75331ff7E+0x78>
 8000930:      	b	#-0x2 <_ZN13stm32f30x_hal4gpio5gpioe16PE10$LT$MODE$GT$21into_push_pull_output28_$u7b$$u7b$closure$u7d$$u7d$17h799296fd75331ff7E+0x36>
 8000932:      	ldr	r0, [sp, #0x10]
 8000934:      	ldr	r1, [sp, #0xc]
 8000936:      	bic.w	r2, r0, r1
 800093a:      	ldr	r3, [sp, #0x14]
 800093c:      	ldr.w	r12, [r3]
 8000940:      	ldr.w	lr, [sp, #0x1c]
 8000944:      	ldr.w	r4, [lr]
 8000948:      	and	r5, r4, #0x1f
 800094c:      	lsl.w	r12, r12, r5
 8000950:      	lsrs	r4, r4, #0x5
 8000952:      	cmp	r4, #0x0
 8000954:      	str	r2, [sp, #0x8]
 8000956:      	str.w	r12, [sp, #0x4]
 800095a:      	bne	#0x2e <_ZN13stm32f30x_hal4gpio5gpioe16PE10$LT$MODE$GT$21into_push_pull_output28_$u7b$$u7b$closure$u7d$$u7d$17h799296fd75331ff7E+0x90>
 800095c:      	b	#-0x2 <_ZN13stm32f30x_hal4gpio5gpioe16PE10$LT$MODE$GT$21into_push_pull_output28_$u7b$$u7b$closure$u7d$$u7d$17h799296fd75331ff7E+0x62>
 800095e:      	ldr	r0, [sp, #0x8]
 8000960:      	ldr	r1, [sp, #0x4]
 8000962:      	orrs	r1, r0
 8000964:      	ldr	r0, [sp, #0x18]
 8000966:      	bl	#0x744
 800096a:      	str	r0, [sp]
 800096c:      	b	#-0x2 <_ZN13stm32f30x_hal4gpio5gpioe16PE10$LT$MODE$GT$21into_push_pull_output28_$u7b$$u7b$closure$u7d$$u7d$17h799296fd75331ff7E+0x72>
;                         });
 800096e:      	ldr	r0, [sp]
 8000970:      	add	sp, #0x30
 8000972:      	pop	{r4, r5, r7, pc}
;                             w.bits((r.bits() & !(0b11 << offset)) | (mode << offset))
 8000974:      	movw	r0, #0x3b90
 8000978:      	movt	r0, #0x800
 800097c:      	movw	r2, #0x3b80
 8000980:      	movt	r2, #0x800
 8000984:      	movs	r1, #0x23
 8000986:      	bl	#0x177c
 800098a:      	trap
 800098c:      	movw	r0, #0x3b90
 8000990:      	movt	r0, #0x800
 8000994:      	movw	r2, #0x3b80
 8000998:      	movt	r2, #0x800
 800099c:      	movs	r1, #0x23
 800099e:      	bl	#0x1764
 80009a2:      	trap

080009a4 <_ZN13stm32f30x_hal4gpio5gpioe16PE11$LT$MODE$GT$21into_push_pull_output17hd5475833cc582004E>:
;                     pub fn into_push_pull_output(
 80009a4:      	push	{r7, lr}
 80009a6:      	mov	r7, sp
 80009a8:      	sub	sp, #0x30
 80009aa:      	str	r0, [sp, #0x28]
 80009ac:      	str	r1, [sp, #0x2c]
;                         let offset = 2 * $i;
 80009ae:      	movw	r2, #0x3bec
 80009b2:      	movt	r2, #0x800
 80009b6:      	ldr	r2, [r2]
 80009b8:      	str	r2, [sp, #0x10]
 80009ba:      	movs	r2, #0x1
;                         let mode = 0b01;
 80009bc:      	str	r2, [sp, #0x14]
;                         moder.moder().modify(|r, w| unsafe {
 80009be:      	str	r1, [sp, #0x8]
 80009c0:      	bl	#0xcd8
 80009c4:      	str	r0, [sp, #0x4]
 80009c6:      	b	#-0x2 <_ZN13stm32f30x_hal4gpio5gpioe16PE11$LT$MODE$GT$21into_push_pull_output17hd5475833cc582004E+0x24>
 80009c8:      	add	r0, sp, #0x10
;                         moder.moder().modify(|r, w| unsafe {
 80009ca:      	str	r0, [sp, #0x18]
 80009cc:      	add	r0, sp, #0x14
 80009ce:      	str	r0, [sp, #0x1c]
 80009d0:      	ldr	r1, [sp, #0x18]
 80009d2:      	ldr	r2, [sp, #0x1c]
 80009d4:      	ldr	r0, [sp, #0x4]
 80009d6:      	bl	#0x91e
 80009da:      	b	#-0x2 <_ZN13stm32f30x_hal4gpio5gpioe16PE11$LT$MODE$GT$21into_push_pull_output17hd5475833cc582004E+0x38>
;                         otyper
 80009dc:      	ldr	r0, [sp, #0x8]
 80009de:      	bl	#0xcd0
 80009e2:      	str	r0, [sp]
 80009e4:      	b	#-0x2 <_ZN13stm32f30x_hal4gpio5gpioe16PE11$LT$MODE$GT$21into_push_pull_output17hd5475833cc582004E+0x42>
 80009e6:      	ldr	r0, [sp]
 80009e8:      	bl	#0xa14
 80009ec:      	b	#-0x2 <_ZN13stm32f30x_hal4gpio5gpioe16PE11$LT$MODE$GT$21into_push_pull_output17hd5475833cc582004E+0x4a>
;                     }
 80009ee:      	add	sp, #0x30
 80009f0:      	pop	{r7, pc}

080009f2 <_ZN13stm32f30x_hal4gpio5gpioe16PE11$LT$MODE$GT$21into_push_pull_output28_$u7b$$u7b$closure$u7d$$u7d$17h89fd2efa04d5b34aE>:
;                         moder.moder().modify(|r, w| unsafe {
 80009f2:      	push	{r4, r5, r7, lr}
 80009f4:      	add	r7, sp, #0x8
 80009f6:      	sub	sp, #0x30
 80009f8:      	str	r0, [sp, #0x20]
 80009fa:      	str	r1, [sp, #0x24]
 80009fc:      	str	r2, [sp, #0x28]
 80009fe:      	str	r3, [sp, #0x2c]
;                             w.bits((r.bits() & !(0b11 << offset)) | (mode << offset))
 8000a00:      	str	r0, [sp, #0x1c]
 8000a02:      	mov	r0, r2
 8000a04:      	str	r3, [sp, #0x18]
 8000a06:      	str	r1, [sp, #0x14]
 8000a08:      	bl	#0x698
 8000a0c:      	str	r0, [sp, #0x10]
 8000a0e:      	b	#-0x2 <_ZN13stm32f30x_hal4gpio5gpioe16PE11$LT$MODE$GT$21into_push_pull_output28_$u7b$$u7b$closure$u7d$$u7d$17h89fd2efa04d5b34aE+0x1e>
 8000a10:      	ldr	r0, [sp, #0x1c]
 8000a12:      	ldr	r1, [r0]
 8000a14:      	and	r2, r1, #0x1f
 8000a18:      	movs	r3, #0x3
 8000a1a:      	lsl.w	r2, r3, r2
 8000a1e:      	lsrs	r1, r1, #0x5
 8000a20:      	cmp	r1, #0x0
 8000a22:      	str	r2, [sp, #0xc]
 8000a24:      	bne	#0x42 <_ZN13stm32f30x_hal4gpio5gpioe16PE11$LT$MODE$GT$21into_push_pull_output28_$u7b$$u7b$closure$u7d$$u7d$17h89fd2efa04d5b34aE+0x78>
 8000a26:      	b	#-0x2 <_ZN13stm32f30x_hal4gpio5gpioe16PE11$LT$MODE$GT$21into_push_pull_output28_$u7b$$u7b$closure$u7d$$u7d$17h89fd2efa04d5b34aE+0x36>
 8000a28:      	ldr	r0, [sp, #0x10]
 8000a2a:      	ldr	r1, [sp, #0xc]
 8000a2c:      	bic.w	r2, r0, r1
 8000a30:      	ldr	r3, [sp, #0x14]
 8000a32:      	ldr.w	r12, [r3]
 8000a36:      	ldr.w	lr, [sp, #0x1c]
 8000a3a:      	ldr.w	r4, [lr]
 8000a3e:      	and	r5, r4, #0x1f
 8000a42:      	lsl.w	r12, r12, r5
 8000a46:      	lsrs	r4, r4, #0x5
 8000a48:      	cmp	r4, #0x0
 8000a4a:      	str	r2, [sp, #0x8]
 8000a4c:      	str.w	r12, [sp, #0x4]
 8000a50:      	bne	#0x2e <_ZN13stm32f30x_hal4gpio5gpioe16PE11$LT$MODE$GT$21into_push_pull_output28_$u7b$$u7b$closure$u7d$$u7d$17h89fd2efa04d5b34aE+0x90>
 8000a52:      	b	#-0x2 <_ZN13stm32f30x_hal4gpio5gpioe16PE11$LT$MODE$GT$21into_push_pull_output28_$u7b$$u7b$closure$u7d$$u7d$17h89fd2efa04d5b34aE+0x62>
 8000a54:      	ldr	r0, [sp, #0x8]
 8000a56:      	ldr	r1, [sp, #0x4]
 8000a58:      	orrs	r1, r0
 8000a5a:      	ldr	r0, [sp, #0x18]
 8000a5c:      	bl	#0x64e
 8000a60:      	str	r0, [sp]
 8000a62:      	b	#-0x2 <_ZN13stm32f30x_hal4gpio5gpioe16PE11$LT$MODE$GT$21into_push_pull_output28_$u7b$$u7b$closure$u7d$$u7d$17h89fd2efa04d5b34aE+0x72>
;                         });
 8000a64:      	ldr	r0, [sp]
 8000a66:      	add	sp, #0x30
 8000a68:      	pop	{r4, r5, r7, pc}
;                             w.bits((r.bits() & !(0b11 << offset)) | (mode << offset))
 8000a6a:      	movw	r0, #0x3b90
 8000a6e:      	movt	r0, #0x800
 8000a72:      	movw	r2, #0x3b80
 8000a76:      	movt	r2, #0x800
 8000a7a:      	movs	r1, #0x23
 8000a7c:      	bl	#0x1686
 8000a80:      	trap
 8000a82:      	movw	r0, #0x3b90
 8000a86:      	movt	r0, #0x800
 8000a8a:      	movw	r2, #0x3b80
 8000a8e:      	movt	r2, #0x800
 8000a92:      	movs	r1, #0x23
 8000a94:      	bl	#0x166e
 8000a98:      	trap

08000a9a <_ZN13stm32f30x_hal4gpio5gpioe16PE11$LT$MODE$GT$21into_push_pull_output28_$u7b$$u7b$closure$u7d$$u7d$17h9311c8db0cab2bafE>:
;                             .modify(|r, w| unsafe { w.bits(r.bits() & !(0b1 << $i)) });
 8000a9a:      	push	{r7, lr}
 8000a9c:      	mov	r7, sp
 8000a9e:      	sub	sp, #0x18
 8000aa0:      	str	r0, [sp, #0x10]
 8000aa2:      	str	r1, [sp, #0x14]
 8000aa4:      	str	r1, [sp, #0x8]
 8000aa6:      	bl	#0x610
 8000aaa:      	str	r0, [sp, #0x4]
 8000aac:      	b	#-0x2 <_ZN13stm32f30x_hal4gpio5gpioe16PE11$LT$MODE$GT$21into_push_pull_output28_$u7b$$u7b$closure$u7d$$u7d$17h9311c8db0cab2bafE+0x14>
 8000aae:      	ldr	r0, [sp, #0x4]
 8000ab0:      	bic	r1, r0, #0x800
 8000ab4:      	ldr	r0, [sp, #0x8]
 8000ab6:      	bl	#0x60a
 8000aba:      	str	r0, [sp]
 8000abc:      	b	#-0x2 <_ZN13stm32f30x_hal4gpio5gpioe16PE11$LT$MODE$GT$21into_push_pull_output28_$u7b$$u7b$closure$u7d$$u7d$17h9311c8db0cab2bafE+0x24>
 8000abe:      	ldr	r0, [sp]
 8000ac0:      	add	sp, #0x18
 8000ac2:      	pop	{r7, pc}

08000ac4 <_ZN13stm32f30x_hal4gpio5gpioe16PE12$LT$MODE$GT$21into_push_pull_output17h24c1bbad882a8e0dE>:
;                     pub fn into_push_pull_output(
 8000ac4:      	push	{r7, lr}
 8000ac6:      	mov	r7, sp
 8000ac8:      	sub	sp, #0x30
 8000aca:      	str	r0, [sp, #0x28]
 8000acc:      	str	r1, [sp, #0x2c]
;                         let offset = 2 * $i;
 8000ace:      	movw	r2, #0x3bb4
 8000ad2:      	movt	r2, #0x800
 8000ad6:      	ldr	r2, [r2]
 8000ad8:      	str	r2, [sp, #0x10]
 8000ada:      	movs	r2, #0x1
;                         let mode = 0b01;
 8000adc:      	str	r2, [sp, #0x14]
;                         moder.moder().modify(|r, w| unsafe {
 8000ade:      	str	r1, [sp, #0x8]
 8000ae0:      	bl	#0xbb8
 8000ae4:      	str	r0, [sp, #0x4]
 8000ae6:      	b	#-0x2 <_ZN13stm32f30x_hal4gpio5gpioe16PE12$LT$MODE$GT$21into_push_pull_output17h24c1bbad882a8e0dE+0x24>
 8000ae8:      	add	r0, sp, #0x10
;                         moder.moder().modify(|r, w| unsafe {
 8000aea:      	str	r0, [sp, #0x18]
 8000aec:      	add	r0, sp, #0x14
 8000aee:      	str	r0, [sp, #0x1c]
 8000af0:      	ldr	r1, [sp, #0x18]
 8000af2:      	ldr	r2, [sp, #0x1c]
 8000af4:      	ldr	r0, [sp, #0x4]
 8000af6:      	bl	#0x85a
 8000afa:      	b	#-0x2 <_ZN13stm32f30x_hal4gpio5gpioe16PE12$LT$MODE$GT$21into_push_pull_output17h24c1bbad882a8e0dE+0x38>
;                         otyper
 8000afc:      	ldr	r0, [sp, #0x8]
 8000afe:      	bl	#0xbb0
 8000b02:      	str	r0, [sp]
 8000b04:      	b	#-0x2 <_ZN13stm32f30x_hal4gpio5gpioe16PE12$LT$MODE$GT$21into_push_pull_output17h24c1bbad882a8e0dE+0x42>
 8000b06:      	ldr	r0, [sp]
 8000b08:      	bl	#0xad4
 8000b0c:      	b	#-0x2 <_ZN13stm32f30x_hal4gpio5gpioe16PE12$LT$MODE$GT$21into_push_pull_output17h24c1bbad882a8e0dE+0x4a>
;                     }
 8000b0e:      	add	sp, #0x30
 8000b10:      	pop	{r7, pc}

08000b12 <_ZN13stm32f30x_hal4gpio5gpioe16PE12$LT$MODE$GT$21into_push_pull_output28_$u7b$$u7b$closure$u7d$$u7d$17ha4fdaca761e4023cE>:
;                             .modify(|r, w| unsafe { w.bits(r.bits() & !(0b1 << $i)) });
 8000b12:      	push	{r7, lr}
 8000b14:      	mov	r7, sp
 8000b16:      	sub	sp, #0x18
 8000b18:      	str	r0, [sp, #0x10]
 8000b1a:      	str	r1, [sp, #0x14]
 8000b1c:      	str	r1, [sp, #0x8]
 8000b1e:      	bl	#0x598
 8000b22:      	str	r0, [sp, #0x4]
 8000b24:      	b	#-0x2 <_ZN13stm32f30x_hal4gpio5gpioe16PE12$LT$MODE$GT$21into_push_pull_output28_$u7b$$u7b$closure$u7d$$u7d$17ha4fdaca761e4023cE+0x14>
 8000b26:      	ldr	r0, [sp, #0x4]
 8000b28:      	bic	r1, r0, #0x1000
 8000b2c:      	ldr	r0, [sp, #0x8]
 8000b2e:      	bl	#0x592
 8000b32:      	str	r0, [sp]
 8000b34:      	b	#-0x2 <_ZN13stm32f30x_hal4gpio5gpioe16PE12$LT$MODE$GT$21into_push_pull_output28_$u7b$$u7b$closure$u7d$$u7d$17ha4fdaca761e4023cE+0x24>
 8000b36:      	ldr	r0, [sp]
 8000b38:      	add	sp, #0x18
 8000b3a:      	pop	{r7, pc}

08000b3c <_ZN13stm32f30x_hal4gpio5gpioe16PE12$LT$MODE$GT$21into_push_pull_output28_$u7b$$u7b$closure$u7d$$u7d$17hff2c957e94cde120E>:
;                         moder.moder().modify(|r, w| unsafe {
 8000b3c:      	push	{r4, r5, r7, lr}
 8000b3e:      	add	r7, sp, #0x8
 8000b40:      	sub	sp, #0x30
 8000b42:      	str	r0, [sp, #0x20]
 8000b44:      	str	r1, [sp, #0x24]
 8000b46:      	str	r2, [sp, #0x28]
 8000b48:      	str	r3, [sp, #0x2c]
;                             w.bits((r.bits() & !(0b11 << offset)) | (mode << offset))
 8000b4a:      	str	r0, [sp, #0x1c]
 8000b4c:      	mov	r0, r2
 8000b4e:      	str	r3, [sp, #0x18]
 8000b50:      	str	r1, [sp, #0x14]
 8000b52:      	bl	#0x54e
 8000b56:      	str	r0, [sp, #0x10]
 8000b58:      	b	#-0x2 <_ZN13stm32f30x_hal4gpio5gpioe16PE12$LT$MODE$GT$21into_push_pull_output28_$u7b$$u7b$closure$u7d$$u7d$17hff2c957e94cde120E+0x1e>
 8000b5a:      	ldr	r0, [sp, #0x1c]
 8000b5c:      	ldr	r1, [r0]
 8000b5e:      	and	r2, r1, #0x1f
 8000b62:      	movs	r3, #0x3
 8000b64:      	lsl.w	r2, r3, r2
 8000b68:      	lsrs	r1, r1, #0x5
 8000b6a:      	cmp	r1, #0x0
 8000b6c:      	str	r2, [sp, #0xc]
 8000b6e:      	bne	#0x42 <_ZN13stm32f30x_hal4gpio5gpioe16PE12$LT$MODE$GT$21into_push_pull_output28_$u7b$$u7b$closure$u7d$$u7d$17hff2c957e94cde120E+0x78>
 8000b70:      	b	#-0x2 <_ZN13stm32f30x_hal4gpio5gpioe16PE12$LT$MODE$GT$21into_push_pull_output28_$u7b$$u7b$closure$u7d$$u7d$17hff2c957e94cde120E+0x36>
 8000b72:      	ldr	r0, [sp, #0x10]
 8000b74:      	ldr	r1, [sp, #0xc]
 8000b76:      	bic.w	r2, r0, r1
 8000b7a:      	ldr	r3, [sp, #0x14]
 8000b7c:      	ldr.w	r12, [r3]
 8000b80:      	ldr.w	lr, [sp, #0x1c]
 8000b84:      	ldr.w	r4, [lr]
 8000b88:      	and	r5, r4, #0x1f
 8000b8c:      	lsl.w	r12, r12, r5
 8000b90:      	lsrs	r4, r4, #0x5
 8000b92:      	cmp	r4, #0x0
 8000b94:      	str	r2, [sp, #0x8]
 8000b96:      	str.w	r12, [sp, #0x4]
 8000b9a:      	bne	#0x2e <_ZN13stm32f30x_hal4gpio5gpioe16PE12$LT$MODE$GT$21into_push_pull_output28_$u7b$$u7b$closure$u7d$$u7d$17hff2c957e94cde120E+0x90>
 8000b9c:      	b	#-0x2 <_ZN13stm32f30x_hal4gpio5gpioe16PE12$LT$MODE$GT$21into_push_pull_output28_$u7b$$u7b$closure$u7d$$u7d$17hff2c957e94cde120E+0x62>
 8000b9e:      	ldr	r0, [sp, #0x8]
 8000ba0:      	ldr	r1, [sp, #0x4]
 8000ba2:      	orrs	r1, r0
 8000ba4:      	ldr	r0, [sp, #0x18]
 8000ba6:      	bl	#0x504
 8000baa:      	str	r0, [sp]
 8000bac:      	b	#-0x2 <_ZN13stm32f30x_hal4gpio5gpioe16PE12$LT$MODE$GT$21into_push_pull_output28_$u7b$$u7b$closure$u7d$$u7d$17hff2c957e94cde120E+0x72>
;                         });
 8000bae:      	ldr	r0, [sp]
 8000bb0:      	add	sp, #0x30
 8000bb2:      	pop	{r4, r5, r7, pc}
;                             w.bits((r.bits() & !(0b11 << offset)) | (mode << offset))
 8000bb4:      	movw	r0, #0x3b90
 8000bb8:      	movt	r0, #0x800
 8000bbc:      	movw	r2, #0x3b80
 8000bc0:      	movt	r2, #0x800
 8000bc4:      	movs	r1, #0x23
 8000bc6:      	bl	#0x153c
 8000bca:      	trap
 8000bcc:      	movw	r0, #0x3b90
 8000bd0:      	movt	r0, #0x800
 8000bd4:      	movw	r2, #0x3b80
 8000bd8:      	movt	r2, #0x800
 8000bdc:      	movs	r1, #0x23
 8000bde:      	bl	#0x1524
 8000be2:      	trap

08000be4 <_ZN13stm32f30x_hal4gpio5gpioe16PE13$LT$MODE$GT$21into_push_pull_output17h670063a949893e51E>:
;                     pub fn into_push_pull_output(
 8000be4:      	push	{r7, lr}
 8000be6:      	mov	r7, sp
 8000be8:      	sub	sp, #0x30
 8000bea:      	str	r0, [sp, #0x28]
 8000bec:      	str	r1, [sp, #0x2c]
;                         let offset = 2 * $i;
 8000bee:      	movw	r2, #0x3bbc
 8000bf2:      	movt	r2, #0x800
 8000bf6:      	ldr	r2, [r2]
 8000bf8:      	str	r2, [sp, #0x10]
 8000bfa:      	movs	r2, #0x1
;                         let mode = 0b01;
 8000bfc:      	str	r2, [sp, #0x14]
;                         moder.moder().modify(|r, w| unsafe {
 8000bfe:      	str	r1, [sp, #0x8]
 8000c00:      	bl	#0xa98
 8000c04:      	str	r0, [sp, #0x4]
 8000c06:      	b	#-0x2 <_ZN13stm32f30x_hal4gpio5gpioe16PE13$LT$MODE$GT$21into_push_pull_output17h670063a949893e51E+0x24>
 8000c08:      	add	r0, sp, #0x10
;                         moder.moder().modify(|r, w| unsafe {
 8000c0a:      	str	r0, [sp, #0x18]
 8000c0c:      	add	r0, sp, #0x14
 8000c0e:      	str	r0, [sp, #0x1c]
 8000c10:      	ldr	r1, [sp, #0x18]
 8000c12:      	ldr	r2, [sp, #0x1c]
 8000c14:      	ldr	r0, [sp, #0x4]
 8000c16:      	bl	#0x626
 8000c1a:      	b	#-0x2 <_ZN13stm32f30x_hal4gpio5gpioe16PE13$LT$MODE$GT$21into_push_pull_output17h670063a949893e51E+0x38>
;                         otyper
 8000c1c:      	ldr	r0, [sp, #0x8]
 8000c1e:      	bl	#0xa90
 8000c22:      	str	r0, [sp]
 8000c24:      	b	#-0x2 <_ZN13stm32f30x_hal4gpio5gpioe16PE13$LT$MODE$GT$21into_push_pull_output17h670063a949893e51E+0x42>
 8000c26:      	ldr	r0, [sp]
 8000c28:      	bl	#0x964
 8000c2c:      	b	#-0x2 <_ZN13stm32f30x_hal4gpio5gpioe16PE13$LT$MODE$GT$21into_push_pull_output17h670063a949893e51E+0x4a>
;                     }
 8000c2e:      	add	sp, #0x30
 8000c30:      	pop	{r7, pc}

08000c32 <_ZN13stm32f30x_hal4gpio5gpioe16PE13$LT$MODE$GT$21into_push_pull_output28_$u7b$$u7b$closure$u7d$$u7d$17h7170e5a75d7b74ceE>:
;                             .modify(|r, w| unsafe { w.bits(r.bits() & !(0b1 << $i)) });
 8000c32:      	push	{r7, lr}
 8000c34:      	mov	r7, sp
 8000c36:      	sub	sp, #0x18
 8000c38:      	str	r0, [sp, #0x10]
 8000c3a:      	str	r1, [sp, #0x14]
 8000c3c:      	str	r1, [sp, #0x8]
 8000c3e:      	bl	#0x478
 8000c42:      	str	r0, [sp, #0x4]
 8000c44:      	b	#-0x2 <_ZN13stm32f30x_hal4gpio5gpioe16PE13$LT$MODE$GT$21into_push_pull_output28_$u7b$$u7b$closure$u7d$$u7d$17h7170e5a75d7b74ceE+0x14>
 8000c46:      	ldr	r0, [sp, #0x4]
 8000c48:      	bic	r1, r0, #0x2000
 8000c4c:      	ldr	r0, [sp, #0x8]
 8000c4e:      	bl	#0x472
 8000c52:      	str	r0, [sp]
 8000c54:      	b	#-0x2 <_ZN13stm32f30x_hal4gpio5gpioe16PE13$LT$MODE$GT$21into_push_pull_output28_$u7b$$u7b$closure$u7d$$u7d$17h7170e5a75d7b74ceE+0x24>
 8000c56:      	ldr	r0, [sp]
 8000c58:      	add	sp, #0x18
 8000c5a:      	pop	{r7, pc}

08000c5c <_ZN13stm32f30x_hal4gpio5gpioe16PE13$LT$MODE$GT$21into_push_pull_output28_$u7b$$u7b$closure$u7d$$u7d$17h760a0307bbbf8792E>:
;                         moder.moder().modify(|r, w| unsafe {
 8000c5c:      	push	{r4, r5, r7, lr}
 8000c5e:      	add	r7, sp, #0x8
 8000c60:      	sub	sp, #0x30
 8000c62:      	str	r0, [sp, #0x20]
 8000c64:      	str	r1, [sp, #0x24]
 8000c66:      	str	r2, [sp, #0x28]
 8000c68:      	str	r3, [sp, #0x2c]
;                             w.bits((r.bits() & !(0b11 << offset)) | (mode << offset))
 8000c6a:      	str	r0, [sp, #0x1c]
 8000c6c:      	mov	r0, r2
 8000c6e:      	str	r3, [sp, #0x18]
 8000c70:      	str	r1, [sp, #0x14]
 8000c72:      	bl	#0x42e
 8000c76:      	str	r0, [sp, #0x10]
 8000c78:      	b	#-0x2 <_ZN13stm32f30x_hal4gpio5gpioe16PE13$LT$MODE$GT$21into_push_pull_output28_$u7b$$u7b$closure$u7d$$u7d$17h760a0307bbbf8792E+0x1e>
 8000c7a:      	ldr	r0, [sp, #0x1c]
 8000c7c:      	ldr	r1, [r0]
 8000c7e:      	and	r2, r1, #0x1f
 8000c82:      	movs	r3, #0x3
 8000c84:      	lsl.w	r2, r3, r2
 8000c88:      	lsrs	r1, r1, #0x5
 8000c8a:      	cmp	r1, #0x0
 8000c8c:      	str	r2, [sp, #0xc]
 8000c8e:      	bne	#0x42 <_ZN13stm32f30x_hal4gpio5gpioe16PE13$LT$MODE$GT$21into_push_pull_output28_$u7b$$u7b$closure$u7d$$u7d$17h760a0307bbbf8792E+0x78>
 8000c90:      	b	#-0x2 <_ZN13stm32f30x_hal4gpio5gpioe16PE13$LT$MODE$GT$21into_push_pull_output28_$u7b$$u7b$closure$u7d$$u7d$17h760a0307bbbf8792E+0x36>
 8000c92:      	ldr	r0, [sp, #0x10]
 8000c94:      	ldr	r1, [sp, #0xc]
 8000c96:      	bic.w	r2, r0, r1
 8000c9a:      	ldr	r3, [sp, #0x14]
 8000c9c:      	ldr.w	r12, [r3]
 8000ca0:      	ldr.w	lr, [sp, #0x1c]
 8000ca4:      	ldr.w	r4, [lr]
 8000ca8:      	and	r5, r4, #0x1f
 8000cac:      	lsl.w	r12, r12, r5
 8000cb0:      	lsrs	r4, r4, #0x5
 8000cb2:      	cmp	r4, #0x0
 8000cb4:      	str	r2, [sp, #0x8]
 8000cb6:      	str.w	r12, [sp, #0x4]
 8000cba:      	bne	#0x2e <_ZN13stm32f30x_hal4gpio5gpioe16PE13$LT$MODE$GT$21into_push_pull_output28_$u7b$$u7b$closure$u7d$$u7d$17h760a0307bbbf8792E+0x90>
 8000cbc:      	b	#-0x2 <_ZN13stm32f30x_hal4gpio5gpioe16PE13$LT$MODE$GT$21into_push_pull_output28_$u7b$$u7b$closure$u7d$$u7d$17h760a0307bbbf8792E+0x62>
 8000cbe:      	ldr	r0, [sp, #0x8]
 8000cc0:      	ldr	r1, [sp, #0x4]
 8000cc2:      	orrs	r1, r0
 8000cc4:      	ldr	r0, [sp, #0x18]
 8000cc6:      	bl	#0x3e4
 8000cca:      	str	r0, [sp]
 8000ccc:      	b	#-0x2 <_ZN13stm32f30x_hal4gpio5gpioe16PE13$LT$MODE$GT$21into_push_pull_output28_$u7b$$u7b$closure$u7d$$u7d$17h760a0307bbbf8792E+0x72>
;                         });
 8000cce:      	ldr	r0, [sp]
 8000cd0:      	add	sp, #0x30
 8000cd2:      	pop	{r4, r5, r7, pc}
;                             w.bits((r.bits() & !(0b11 << offset)) | (mode << offset))
 8000cd4:      	movw	r0, #0x3b90
 8000cd8:      	movt	r0, #0x800
 8000cdc:      	movw	r2, #0x3b80
 8000ce0:      	movt	r2, #0x800
 8000ce4:      	movs	r1, #0x23
 8000ce6:      	bl	#0x141c
 8000cea:      	trap
 8000cec:      	movw	r0, #0x3b90
 8000cf0:      	movt	r0, #0x800
 8000cf4:      	movw	r2, #0x3b80
 8000cf8:      	movt	r2, #0x800
 8000cfc:      	movs	r1, #0x23
 8000cfe:      	bl	#0x1404
 8000d02:      	trap

08000d04 <_ZN13stm32f30x_hal4gpio5gpioe16PE14$LT$MODE$GT$21into_push_pull_output17hf1e68f6b1b9d7fcfE>:
;                     pub fn into_push_pull_output(
 8000d04:      	push	{r7, lr}
 8000d06:      	mov	r7, sp
 8000d08:      	sub	sp, #0x30
 8000d0a:      	str	r0, [sp, #0x28]
 8000d0c:      	str	r1, [sp, #0x2c]
;                         let offset = 2 * $i;
 8000d0e:      	movw	r2, #0x3bcc
 8000d12:      	movt	r2, #0x800
 8000d16:      	ldr	r2, [r2]
 8000d18:      	str	r2, [sp, #0x10]
 8000d1a:      	movs	r2, #0x1
;                         let mode = 0b01;
 8000d1c:      	str	r2, [sp, #0x14]
;                         moder.moder().modify(|r, w| unsafe {
 8000d1e:      	str	r1, [sp, #0x8]
 8000d20:      	bl	#0x978
 8000d24:      	str	r0, [sp, #0x4]
 8000d26:      	b	#-0x2 <_ZN13stm32f30x_hal4gpio5gpioe16PE14$LT$MODE$GT$21into_push_pull_output17hf1e68f6b1b9d7fcfE+0x24>
 8000d28:      	add	r0, sp, #0x10
;                         moder.moder().modify(|r, w| unsafe {
 8000d2a:      	str	r0, [sp, #0x18]
 8000d2c:      	add	r0, sp, #0x14
 8000d2e:      	str	r0, [sp, #0x1c]
 8000d30:      	ldr	r1, [sp, #0x18]
 8000d32:      	ldr	r2, [sp, #0x1c]
 8000d34:      	ldr	r0, [sp, #0x4]
 8000d36:      	bl	#0x3f2
 8000d3a:      	b	#-0x2 <_ZN13stm32f30x_hal4gpio5gpioe16PE14$LT$MODE$GT$21into_push_pull_output17hf1e68f6b1b9d7fcfE+0x38>
;                         otyper
 8000d3c:      	ldr	r0, [sp, #0x8]
 8000d3e:      	bl	#0x970
 8000d42:      	str	r0, [sp]
 8000d44:      	b	#-0x2 <_ZN13stm32f30x_hal4gpio5gpioe16PE14$LT$MODE$GT$21into_push_pull_output17hf1e68f6b1b9d7fcfE+0x42>
 8000d46:      	ldr	r0, [sp]
 8000d48:      	bl	#0x704
 8000d4c:      	b	#-0x2 <_ZN13stm32f30x_hal4gpio5gpioe16PE14$LT$MODE$GT$21into_push_pull_output17hf1e68f6b1b9d7fcfE+0x4a>
;                     }
 8000d4e:      	add	sp, #0x30
 8000d50:      	pop	{r7, pc}

08000d52 <_ZN13stm32f30x_hal4gpio5gpioe16PE14$LT$MODE$GT$21into_push_pull_output28_$u7b$$u7b$closure$u7d$$u7d$17h1c8a975d319da793E>:
;                         moder.moder().modify(|r, w| unsafe {
 8000d52:      	push	{r4, r5, r7, lr}
 8000d54:      	add	r7, sp, #0x8
 8000d56:      	sub	sp, #0x30
 8000d58:      	str	r0, [sp, #0x20]
 8000d5a:      	str	r1, [sp, #0x24]
 8000d5c:      	str	r2, [sp, #0x28]
 8000d5e:      	str	r3, [sp, #0x2c]
;                             w.bits((r.bits() & !(0b11 << offset)) | (mode << offset))
 8000d60:      	str	r0, [sp, #0x1c]
 8000d62:      	mov	r0, r2
 8000d64:      	str	r3, [sp, #0x18]
 8000d66:      	str	r1, [sp, #0x14]
 8000d68:      	bl	#0x338
 8000d6c:      	str	r0, [sp, #0x10]
 8000d6e:      	b	#-0x2 <_ZN13stm32f30x_hal4gpio5gpioe16PE14$LT$MODE$GT$21into_push_pull_output28_$u7b$$u7b$closure$u7d$$u7d$17h1c8a975d319da793E+0x1e>
 8000d70:      	ldr	r0, [sp, #0x1c]
 8000d72:      	ldr	r1, [r0]
 8000d74:      	and	r2, r1, #0x1f
 8000d78:      	movs	r3, #0x3
 8000d7a:      	lsl.w	r2, r3, r2
 8000d7e:      	lsrs	r1, r1, #0x5
 8000d80:      	cmp	r1, #0x0
 8000d82:      	str	r2, [sp, #0xc]
 8000d84:      	bne	#0x42 <_ZN13stm32f30x_hal4gpio5gpioe16PE14$LT$MODE$GT$21into_push_pull_output28_$u7b$$u7b$closure$u7d$$u7d$17h1c8a975d319da793E+0x78>
 8000d86:      	b	#-0x2 <_ZN13stm32f30x_hal4gpio5gpioe16PE14$LT$MODE$GT$21into_push_pull_output28_$u7b$$u7b$closure$u7d$$u7d$17h1c8a975d319da793E+0x36>
 8000d88:      	ldr	r0, [sp, #0x10]
 8000d8a:      	ldr	r1, [sp, #0xc]
 8000d8c:      	bic.w	r2, r0, r1
 8000d90:      	ldr	r3, [sp, #0x14]
 8000d92:      	ldr.w	r12, [r3]
 8000d96:      	ldr.w	lr, [sp, #0x1c]
 8000d9a:      	ldr.w	r4, [lr]
 8000d9e:      	and	r5, r4, #0x1f
 8000da2:      	lsl.w	r12, r12, r5
 8000da6:      	lsrs	r4, r4, #0x5
 8000da8:      	cmp	r4, #0x0
 8000daa:      	str	r2, [sp, #0x8]
 8000dac:      	str.w	r12, [sp, #0x4]
 8000db0:      	bne	#0x2e <_ZN13stm32f30x_hal4gpio5gpioe16PE14$LT$MODE$GT$21into_push_pull_output28_$u7b$$u7b$closure$u7d$$u7d$17h1c8a975d319da793E+0x90>
 8000db2:      	b	#-0x2 <_ZN13stm32f30x_hal4gpio5gpioe16PE14$LT$MODE$GT$21into_push_pull_output28_$u7b$$u7b$closure$u7d$$u7d$17h1c8a975d319da793E+0x62>
 8000db4:      	ldr	r0, [sp, #0x8]
 8000db6:      	ldr	r1, [sp, #0x4]
 8000db8:      	orrs	r1, r0
 8000dba:      	ldr	r0, [sp, #0x18]
 8000dbc:      	bl	#0x2ee
 8000dc0:      	str	r0, [sp]
 8000dc2:      	b	#-0x2 <_ZN13stm32f30x_hal4gpio5gpioe16PE14$LT$MODE$GT$21into_push_pull_output28_$u7b$$u7b$closure$u7d$$u7d$17h1c8a975d319da793E+0x72>
;                         });
 8000dc4:      	ldr	r0, [sp]
 8000dc6:      	add	sp, #0x30
 8000dc8:      	pop	{r4, r5, r7, pc}
;                             w.bits((r.bits() & !(0b11 << offset)) | (mode << offset))
 8000dca:      	movw	r0, #0x3b90
 8000dce:      	movt	r0, #0x800
 8000dd2:      	movw	r2, #0x3b80
 8000dd6:      	movt	r2, #0x800
 8000dda:      	movs	r1, #0x23
 8000ddc:      	bl	#0x1326
 8000de0:      	trap
 8000de2:      	movw	r0, #0x3b90
 8000de6:      	movt	r0, #0x800
 8000dea:      	movw	r2, #0x3b80
 8000dee:      	movt	r2, #0x800
 8000df2:      	movs	r1, #0x23
 8000df4:      	bl	#0x130e
 8000df8:      	trap

08000dfa <_ZN13stm32f30x_hal4gpio5gpioe16PE14$LT$MODE$GT$21into_push_pull_output28_$u7b$$u7b$closure$u7d$$u7d$17ha1f37c52957d4c6eE>:
;                             .modify(|r, w| unsafe { w.bits(r.bits() & !(0b1 << $i)) });
 8000dfa:      	push	{r7, lr}
 8000dfc:      	mov	r7, sp
 8000dfe:      	sub	sp, #0x18
 8000e00:      	str	r0, [sp, #0x10]
 8000e02:      	str	r1, [sp, #0x14]
 8000e04:      	str	r1, [sp, #0x8]
 8000e06:      	bl	#0x2b0
 8000e0a:      	str	r0, [sp, #0x4]
 8000e0c:      	b	#-0x2 <_ZN13stm32f30x_hal4gpio5gpioe16PE14$LT$MODE$GT$21into_push_pull_output28_$u7b$$u7b$closure$u7d$$u7d$17ha1f37c52957d4c6eE+0x14>
 8000e0e:      	ldr	r0, [sp, #0x4]
 8000e10:      	bic	r1, r0, #0x4000
 8000e14:      	ldr	r0, [sp, #0x8]
 8000e16:      	bl	#0x2aa
 8000e1a:      	str	r0, [sp]
 8000e1c:      	b	#-0x2 <_ZN13stm32f30x_hal4gpio5gpioe16PE14$LT$MODE$GT$21into_push_pull_output28_$u7b$$u7b$closure$u7d$$u7d$17ha1f37c52957d4c6eE+0x24>
 8000e1e:      	ldr	r0, [sp]
 8000e20:      	add	sp, #0x18
 8000e22:      	pop	{r7, pc}

08000e24 <_ZN13stm32f30x_hal4gpio5gpioe16PE15$LT$MODE$GT$21into_push_pull_output17h9e052a2a8c974dfbE>:
;                     pub fn into_push_pull_output(
 8000e24:      	push	{r7, lr}
 8000e26:      	mov	r7, sp
 8000e28:      	sub	sp, #0x30
 8000e2a:      	str	r0, [sp, #0x28]
 8000e2c:      	str	r1, [sp, #0x2c]
;                         let offset = 2 * $i;
 8000e2e:      	movw	r2, #0x3bc4
 8000e32:      	movt	r2, #0x800
 8000e36:      	ldr	r2, [r2]
 8000e38:      	str	r2, [sp, #0x10]
 8000e3a:      	movs	r2, #0x1
;                         let mode = 0b01;
 8000e3c:      	str	r2, [sp, #0x14]
;                         moder.moder().modify(|r, w| unsafe {
 8000e3e:      	str	r1, [sp, #0x8]
 8000e40:      	bl	#0x858
 8000e44:      	str	r0, [sp, #0x4]
 8000e46:      	b	#-0x2 <_ZN13stm32f30x_hal4gpio5gpioe16PE15$LT$MODE$GT$21into_push_pull_output17h9e052a2a8c974dfbE+0x24>
 8000e48:      	add	r0, sp, #0x10
;                         moder.moder().modify(|r, w| unsafe {
 8000e4a:      	str	r0, [sp, #0x18]
 8000e4c:      	add	r0, sp, #0x14
 8000e4e:      	str	r0, [sp, #0x1c]
 8000e50:      	ldr	r1, [sp, #0x18]
 8000e52:      	ldr	r2, [sp, #0x1c]
 8000e54:      	ldr	r0, [sp, #0x4]
 8000e56:      	bl	#0x38a
 8000e5a:      	b	#-0x2 <_ZN13stm32f30x_hal4gpio5gpioe16PE15$LT$MODE$GT$21into_push_pull_output17h9e052a2a8c974dfbE+0x38>
;                         otyper
 8000e5c:      	ldr	r0, [sp, #0x8]
 8000e5e:      	bl	#0x850
 8000e62:      	str	r0, [sp]
 8000e64:      	b	#-0x2 <_ZN13stm32f30x_hal4gpio5gpioe16PE15$LT$MODE$GT$21into_push_pull_output17h9e052a2a8c974dfbE+0x42>
 8000e66:      	ldr	r0, [sp]
 8000e68:      	bl	#0x684
 8000e6c:      	b	#-0x2 <_ZN13stm32f30x_hal4gpio5gpioe16PE15$LT$MODE$GT$21into_push_pull_output17h9e052a2a8c974dfbE+0x4a>
;                     }
 8000e6e:      	add	sp, #0x30
 8000e70:      	pop	{r7, pc}

08000e72 <_ZN13stm32f30x_hal4gpio5gpioe16PE15$LT$MODE$GT$21into_push_pull_output28_$u7b$$u7b$closure$u7d$$u7d$17h599eb8091f430fa5E>:
;                             .modify(|r, w| unsafe { w.bits(r.bits() & !(0b1 << $i)) });
 8000e72:      	push	{r7, lr}
 8000e74:      	mov	r7, sp
 8000e76:      	sub	sp, #0x18
 8000e78:      	str	r0, [sp, #0x10]
 8000e7a:      	str	r1, [sp, #0x14]
 8000e7c:      	str	r1, [sp, #0x8]
 8000e7e:      	bl	#0x238
 8000e82:      	str	r0, [sp, #0x4]
 8000e84:      	b	#-0x2 <_ZN13stm32f30x_hal4gpio5gpioe16PE15$LT$MODE$GT$21into_push_pull_output28_$u7b$$u7b$closure$u7d$$u7d$17h599eb8091f430fa5E+0x14>
 8000e86:      	ldr	r0, [sp, #0x4]
 8000e88:      	bic	r1, r0, #0x8000
 8000e8c:      	ldr	r0, [sp, #0x8]
 8000e8e:      	bl	#0x232
 8000e92:      	str	r0, [sp]
 8000e94:      	b	#-0x2 <_ZN13stm32f30x_hal4gpio5gpioe16PE15$LT$MODE$GT$21into_push_pull_output28_$u7b$$u7b$closure$u7d$$u7d$17h599eb8091f430fa5E+0x24>
 8000e96:      	ldr	r0, [sp]
 8000e98:      	add	sp, #0x18
 8000e9a:      	pop	{r7, pc}

08000e9c <_ZN13stm32f30x_hal4gpio5gpioe16PE15$LT$MODE$GT$21into_push_pull_output28_$u7b$$u7b$closure$u7d$$u7d$17ha61873e5939e6934E>:
;                         moder.moder().modify(|r, w| unsafe {
 8000e9c:      	push	{r4, r5, r7, lr}
 8000e9e:      	add	r7, sp, #0x8
 8000ea0:      	sub	sp, #0x30
 8000ea2:      	str	r0, [sp, #0x20]
 8000ea4:      	str	r1, [sp, #0x24]
 8000ea6:      	str	r2, [sp, #0x28]
 8000ea8:      	str	r3, [sp, #0x2c]
;                             w.bits((r.bits() & !(0b11 << offset)) | (mode << offset))
 8000eaa:      	str	r0, [sp, #0x1c]
 8000eac:      	mov	r0, r2
 8000eae:      	str	r3, [sp, #0x18]
 8000eb0:      	str	r1, [sp, #0x14]
 8000eb2:      	bl	#0x1ee
 8000eb6:      	str	r0, [sp, #0x10]
 8000eb8:      	b	#-0x2 <_ZN13stm32f30x_hal4gpio5gpioe16PE15$LT$MODE$GT$21into_push_pull_output28_$u7b$$u7b$closure$u7d$$u7d$17ha61873e5939e6934E+0x1e>
 8000eba:      	ldr	r0, [sp, #0x1c]
 8000ebc:      	ldr	r1, [r0]
 8000ebe:      	and	r2, r1, #0x1f
 8000ec2:      	movs	r3, #0x3
 8000ec4:      	lsl.w	r2, r3, r2
 8000ec8:      	lsrs	r1, r1, #0x5
 8000eca:      	cmp	r1, #0x0
 8000ecc:      	str	r2, [sp, #0xc]
 8000ece:      	bne	#0x42 <_ZN13stm32f30x_hal4gpio5gpioe16PE15$LT$MODE$GT$21into_push_pull_output28_$u7b$$u7b$closure$u7d$$u7d$17ha61873e5939e6934E+0x78>
 8000ed0:      	b	#-0x2 <_ZN13stm32f30x_hal4gpio5gpioe16PE15$LT$MODE$GT$21into_push_pull_output28_$u7b$$u7b$closure$u7d$$u7d$17ha61873e5939e6934E+0x36>
 8000ed2:      	ldr	r0, [sp, #0x10]
 8000ed4:      	ldr	r1, [sp, #0xc]
 8000ed6:      	bic.w	r2, r0, r1
 8000eda:      	ldr	r3, [sp, #0x14]
 8000edc:      	ldr.w	r12, [r3]
 8000ee0:      	ldr.w	lr, [sp, #0x1c]
 8000ee4:      	ldr.w	r4, [lr]
 8000ee8:      	and	r5, r4, #0x1f
 8000eec:      	lsl.w	r12, r12, r5
 8000ef0:      	lsrs	r4, r4, #0x5
 8000ef2:      	cmp	r4, #0x0
 8000ef4:      	str	r2, [sp, #0x8]
 8000ef6:      	str.w	r12, [sp, #0x4]
 8000efa:      	bne	#0x2e <_ZN13stm32f30x_hal4gpio5gpioe16PE15$LT$MODE$GT$21into_push_pull_output28_$u7b$$u7b$closure$u7d$$u7d$17ha61873e5939e6934E+0x90>
 8000efc:      	b	#-0x2 <_ZN13stm32f30x_hal4gpio5gpioe16PE15$LT$MODE$GT$21into_push_pull_output28_$u7b$$u7b$closure$u7d$$u7d$17ha61873e5939e6934E+0x62>
 8000efe:      	ldr	r0, [sp, #0x8]
 8000f00:      	ldr	r1, [sp, #0x4]
 8000f02:      	orrs	r1, r0
 8000f04:      	ldr	r0, [sp, #0x18]
 8000f06:      	bl	#0x1a4
 8000f0a:      	str	r0, [sp]
 8000f0c:      	b	#-0x2 <_ZN13stm32f30x_hal4gpio5gpioe16PE15$LT$MODE$GT$21into_push_pull_output28_$u7b$$u7b$closure$u7d$$u7d$17ha61873e5939e6934E+0x72>
;                         });
 8000f0e:      	ldr	r0, [sp]
 8000f10:      	add	sp, #0x30
 8000f12:      	pop	{r4, r5, r7, pc}
;                             w.bits((r.bits() & !(0b11 << offset)) | (mode << offset))
 8000f14:      	movw	r0, #0x3b90
 8000f18:      	movt	r0, #0x800
 8000f1c:      	movw	r2, #0x3b80
 8000f20:      	movt	r2, #0x800
 8000f24:      	movs	r1, #0x23
 8000f26:      	bl	#0x11dc
 8000f2a:      	trap
 8000f2c:      	movw	r0, #0x3b90
 8000f30:      	movt	r0, #0x800
 8000f34:      	movw	r2, #0x3b80
 8000f38:      	movt	r2, #0x800
 8000f3c:      	movs	r1, #0x23
 8000f3e:      	bl	#0x11c4
 8000f42:      	trap

08000f44 <_ZN13stm32f30x_hal4gpio5gpioe50PE8$LT$stm32f30x_hal..gpio..Output$LT$MODE$GT$$GT$9downgrade17hb13bd6f940aec298E>:
;                     pub fn downgrade(self) -> $PXx<Output<MODE>> {
 8000f44:      	sub	sp, #0x8
 8000f46:      	movs	r0, #0x8
;                         $PXx {
 8000f48:      	strb.w	r0, [sp, #0x3]
;                     }
 8000f4c:      	ldrb.w	r0, [sp, #0x3]
 8000f50:      	add	sp, #0x8
 8000f52:      	bx	lr

08000f54 <_ZN13stm32f30x_hal4gpio5gpioe50PE9$LT$stm32f30x_hal..gpio..Output$LT$MODE$GT$$GT$9downgrade17h59cb88a0bdcdbe26E>:
;                     pub fn downgrade(self) -> $PXx<Output<MODE>> {
 8000f54:      	sub	sp, #0x8
 8000f56:      	movs	r0, #0x9
;                         $PXx {
 8000f58:      	strb.w	r0, [sp, #0x3]
;                     }
 8000f5c:      	ldrb.w	r0, [sp, #0x3]
 8000f60:      	add	sp, #0x8
 8000f62:      	bx	lr

08000f64 <_ZN13stm32f30x_hal4gpio5gpioe51PE10$LT$stm32f30x_hal..gpio..Output$LT$MODE$GT$$GT$9downgrade17h55023b628f6e6260E>:
;                     pub fn downgrade(self) -> $PXx<Output<MODE>> {
 8000f64:      	sub	sp, #0x8
 8000f66:      	movs	r0, #0xa
;                         $PXx {
 8000f68:      	strb.w	r0, [sp, #0x3]
;                     }
 8000f6c:      	ldrb.w	r0, [sp, #0x3]
 8000f70:      	add	sp, #0x8
 8000f72:      	bx	lr

08000f74 <_ZN13stm32f30x_hal4gpio5gpioe51PE11$LT$stm32f30x_hal..gpio..Output$LT$MODE$GT$$GT$9downgrade17hfce4c86aa191dc95E>:
;                     pub fn downgrade(self) -> $PXx<Output<MODE>> {
 8000f74:      	sub	sp, #0x8
 8000f76:      	movs	r0, #0xb
;                         $PXx {
 8000f78:      	strb.w	r0, [sp, #0x3]
;                     }
 8000f7c:      	ldrb.w	r0, [sp, #0x3]
 8000f80:      	add	sp, #0x8
 8000f82:      	bx	lr

08000f84 <_ZN13stm32f30x_hal4gpio5gpioe51PE12$LT$stm32f30x_hal..gpio..Output$LT$MODE$GT$$GT$9downgrade17hba32acd4f59a74c5E>:
;                     pub fn downgrade(self) -> $PXx<Output<MODE>> {
 8000f84:      	sub	sp, #0x8
 8000f86:      	movs	r0, #0xc
;                         $PXx {
 8000f88:      	strb.w	r0, [sp, #0x3]
;                     }
 8000f8c:      	ldrb.w	r0, [sp, #0x3]
 8000f90:      	add	sp, #0x8
 8000f92:      	bx	lr

08000f94 <_ZN13stm32f30x_hal4gpio5gpioe51PE13$LT$stm32f30x_hal..gpio..Output$LT$MODE$GT$$GT$9downgrade17h1a6c73c6b6e73898E>:
;                     pub fn downgrade(self) -> $PXx<Output<MODE>> {
 8000f94:      	sub	sp, #0x8
 8000f96:      	movs	r0, #0xd
;                         $PXx {
 8000f98:      	strb.w	r0, [sp, #0x3]
;                     }
 8000f9c:      	ldrb.w	r0, [sp, #0x3]
 8000fa0:      	add	sp, #0x8
 8000fa2:      	bx	lr

08000fa4 <_ZN13stm32f30x_hal4gpio5gpioe51PE14$LT$stm32f30x_hal..gpio..Output$LT$MODE$GT$$GT$9downgrade17h40c42198949a773eE>:
;                     pub fn downgrade(self) -> $PXx<Output<MODE>> {
 8000fa4:      	sub	sp, #0x8
 8000fa6:      	movs	r0, #0xe
;                         $PXx {
 8000fa8:      	strb.w	r0, [sp, #0x3]
;                     }
 8000fac:      	ldrb.w	r0, [sp, #0x3]
 8000fb0:      	add	sp, #0x8
 8000fb2:      	bx	lr

08000fb4 <_ZN13stm32f30x_hal4gpio5gpioe51PE15$LT$stm32f30x_hal..gpio..Output$LT$MODE$GT$$GT$9downgrade17h35af133288f0d2c4E>:
;                     pub fn downgrade(self) -> $PXx<Output<MODE>> {
 8000fb4:      	sub	sp, #0x8
 8000fb6:      	movs	r0, #0xf
;                         $PXx {
 8000fb8:      	strb.w	r0, [sp, #0x3]
;                     }
 8000fbc:      	ldrb.w	r0, [sp, #0x3]
 8000fc0:      	add	sp, #0x8
 8000fc2:      	bx	lr

08000fc4 <f3::led::<impl core::convert::Into<f3::led::Led> for stm32f30x_hal::gpio::gpioe::PE9<stm32f30x_hal::gpio::Output<stm32f30x_hal::gpio::PushPull>>>::into::h8b888f60bada5304>:
;                 fn into(self) -> Led {
 8000fc4:      	push	{r7, lr}
 8000fc6:      	mov	r7, sp
 8000fc8:      	sub	sp, #0x10
;                         pex: self.downgrade(),
 8000fca:      	bl	#-0x7a
 8000fce:      	str	r0, [sp, #0x4]
 8000fd0:      	b	#-0x2 <f3::led::<impl core::convert::Into<f3::led::Led> for stm32f30x_hal::gpio::gpioe::PE9<stm32f30x_hal::gpio::Output<stm32f30x_hal::gpio::PushPull>>>::into::h8b888f60bada5304+0xe>
;                     Led {
 8000fd2:      	ldr	r0, [sp, #0x4]
 8000fd4:      	strb	r0, [r7, #-5]
;                 }
 8000fd8:      	ldrb	r0, [r7, #-5]
 8000fdc:      	add	sp, #0x10
 8000fde:      	pop	{r7, pc}

08000fe0 <f3::led::<impl core::convert::Into<f3::led::Led> for stm32f30x_hal::gpio::gpioe::PE8<stm32f30x_hal::gpio::Output<stm32f30x_hal::gpio::PushPull>>>::into::h082401fb2a4bec53>:
;                 fn into(self) -> Led {
 8000fe0:      	push	{r7, lr}
 8000fe2:      	mov	r7, sp
 8000fe4:      	sub	sp, #0x10
;                         pex: self.downgrade(),
 8000fe6:      	bl	#-0xa6
 8000fea:      	str	r0, [sp, #0x4]
 8000fec:      	b	#-0x2 <f3::led::<impl core::convert::Into<f3::led::Led> for stm32f30x_hal::gpio::gpioe::PE8<stm32f30x_hal::gpio::Output<stm32f30x_hal::gpio::PushPull>>>::into::h082401fb2a4bec53+0xe>
;                     Led {
 8000fee:      	ldr	r0, [sp, #0x4]
 8000ff0:      	strb	r0, [r7, #-5]
;                 }
 8000ff4:      	ldrb	r0, [r7, #-5]
 8000ff8:      	add	sp, #0x10
 8000ffa:      	pop	{r7, pc}

08000ffc <f3::led::<impl core::convert::Into<f3::led::Led> for stm32f30x_hal::gpio::gpioe::PE10<stm32f30x_hal::gpio::Output<stm32f30x_hal::gpio::PushPull>>>::into::h526f6746222bcbec>:
;                 fn into(self) -> Led {
 8000ffc:      	push	{r7, lr}
 8000ffe:      	mov	r7, sp
 8001000:      	sub	sp, #0x10
;                         pex: self.downgrade(),
 8001002:      	bl	#-0xa2
 8001006:      	str	r0, [sp, #0x4]
 8001008:      	b	#-0x2 <f3::led::<impl core::convert::Into<f3::led::Led> for stm32f30x_hal::gpio::gpioe::PE10<stm32f30x_hal::gpio::Output<stm32f30x_hal::gpio::PushPull>>>::into::h526f6746222bcbec+0xe>
;                     Led {
 800100a:      	ldr	r0, [sp, #0x4]
 800100c:      	strb	r0, [r7, #-5]
;                 }
 8001010:      	ldrb	r0, [r7, #-5]
 8001014:      	add	sp, #0x10
 8001016:      	pop	{r7, pc}

08001018 <f3::led::<impl core::convert::Into<f3::led::Led> for stm32f30x_hal::gpio::gpioe::PE15<stm32f30x_hal::gpio::Output<stm32f30x_hal::gpio::PushPull>>>::into::h455b6ddd47e2d25c>:
;                 fn into(self) -> Led {
 8001018:      	push	{r7, lr}
 800101a:      	mov	r7, sp
 800101c:      	sub	sp, #0x10
;                         pex: self.downgrade(),
 800101e:      	bl	#-0x6e
 8001022:      	str	r0, [sp, #0x4]
 8001024:      	b	#-0x2 <f3::led::<impl core::convert::Into<f3::led::Led> for stm32f30x_hal::gpio::gpioe::PE15<stm32f30x_hal::gpio::Output<stm32f30x_hal::gpio::PushPull>>>::into::h455b6ddd47e2d25c+0xe>
;                     Led {
 8001026:      	ldr	r0, [sp, #0x4]
 8001028:      	strb	r0, [r7, #-5]
;                 }
 800102c:      	ldrb	r0, [r7, #-5]
 8001030:      	add	sp, #0x10
 8001032:      	pop	{r7, pc}

08001034 <f3::led::<impl core::convert::Into<f3::led::Led> for stm32f30x_hal::gpio::gpioe::PE11<stm32f30x_hal::gpio::Output<stm32f30x_hal::gpio::PushPull>>>::into::h386ad041b8e7633e>:
;                 fn into(self) -> Led {
 8001034:      	push	{r7, lr}
 8001036:      	mov	r7, sp
 8001038:      	sub	sp, #0x10
;                         pex: self.downgrade(),
 800103a:      	bl	#-0xca
 800103e:      	str	r0, [sp, #0x4]
 8001040:      	b	#-0x2 <f3::led::<impl core::convert::Into<f3::led::Led> for stm32f30x_hal::gpio::gpioe::PE11<stm32f30x_hal::gpio::Output<stm32f30x_hal::gpio::PushPull>>>::into::h386ad041b8e7633e+0xe>
;                     Led {
 8001042:      	ldr	r0, [sp, #0x4]
 8001044:      	strb	r0, [r7, #-5]
;                 }
 8001048:      	ldrb	r0, [r7, #-5]
 800104c:      	add	sp, #0x10
 800104e:      	pop	{r7, pc}

08001050 <f3::led::<impl core::convert::Into<f3::led::Led> for stm32f30x_hal::gpio::gpioe::PE14<stm32f30x_hal::gpio::Output<stm32f30x_hal::gpio::PushPull>>>::into::h9eab4e7726b9ef84>:
;                 fn into(self) -> Led {
 8001050:      	push	{r7, lr}
 8001052:      	mov	r7, sp
 8001054:      	sub	sp, #0x10
;                         pex: self.downgrade(),
 8001056:      	bl	#-0xb6
 800105a:      	str	r0, [sp, #0x4]
 800105c:      	b	#-0x2 <f3::led::<impl core::convert::Into<f3::led::Led> for stm32f30x_hal::gpio::gpioe::PE14<stm32f30x_hal::gpio::Output<stm32f30x_hal::gpio::PushPull>>>::into::h9eab4e7726b9ef84+0xe>
;                     Led {
 800105e:      	ldr	r0, [sp, #0x4]
 8001060:      	strb	r0, [r7, #-5]
;                 }
 8001064:      	ldrb	r0, [r7, #-5]
 8001068:      	add	sp, #0x10
 800106a:      	pop	{r7, pc}

0800106c <f3::led::<impl core::convert::Into<f3::led::Led> for stm32f30x_hal::gpio::gpioe::PE12<stm32f30x_hal::gpio::Output<stm32f30x_hal::gpio::PushPull>>>::into::h7d3b167831193292>:
;                 fn into(self) -> Led {
 800106c:      	push	{r7, lr}
 800106e:      	mov	r7, sp
 8001070:      	sub	sp, #0x10
;                         pex: self.downgrade(),
 8001072:      	bl	#-0xf2
 8001076:      	str	r0, [sp, #0x4]
 8001078:      	b	#-0x2 <f3::led::<impl core::convert::Into<f3::led::Led> for stm32f30x_hal::gpio::gpioe::PE12<stm32f30x_hal::gpio::Output<stm32f30x_hal::gpio::PushPull>>>::into::h7d3b167831193292+0xe>
;                     Led {
 800107a:      	ldr	r0, [sp, #0x4]
 800107c:      	strb	r0, [r7, #-5]
;                 }
 8001080:      	ldrb	r0, [r7, #-5]
 8001084:      	add	sp, #0x10
 8001086:      	pop	{r7, pc}

08001088 <f3::led::<impl core::convert::Into<f3::led::Led> for stm32f30x_hal::gpio::gpioe::PE13<stm32f30x_hal::gpio::Output<stm32f30x_hal::gpio::PushPull>>>::into::hec0866648fe5378b>:
;                 fn into(self) -> Led {
 8001088:      	push	{r7, lr}
 800108a:      	mov	r7, sp
 800108c:      	sub	sp, #0x10
;                         pex: self.downgrade(),
 800108e:      	bl	#-0xfe
 8001092:      	str	r0, [sp, #0x4]
 8001094:      	b	#-0x2 <f3::led::<impl core::convert::Into<f3::led::Led> for stm32f30x_hal::gpio::gpioe::PE13<stm32f30x_hal::gpio::Output<stm32f30x_hal::gpio::PushPull>>>::into::hec0866648fe5378b+0xe>
;                     Led {
 8001096:      	ldr	r0, [sp, #0x4]
 8001098:      	strb	r0, [r7, #-5]
;                 }
 800109c:      	ldrb	r0, [r7, #-5]
 80010a0:      	add	sp, #0x10
 80010a2:      	pop	{r7, pc}

080010a4 <stm32f30x::gpioc::moder::R::bits::h7514a7279dcb3796>:
;     pub fn bits(&self) -> u32 {
 80010a4:      	sub	sp, #0x4
 80010a6:      	str	r0, [sp]
;         self.bits
 80010a8:      	ldr	r0, [r0]
;     }
 80010aa:      	add	sp, #0x4
 80010ac:      	bx	lr

080010ae <stm32f30x::gpioc::moder::W::bits::he428803ea9ba09bb>:
;     pub unsafe fn bits(&mut self, bits: u32) -> &mut Self {
 80010ae:      	sub	sp, #0x8
 80010b0:      	str	r0, [sp]
 80010b2:      	str	r1, [sp, #0x4]
;         self.bits = bits;
 80010b4:      	str	r1, [r0]
;     }
 80010b6:      	add	sp, #0x8
 80010b8:      	bx	lr

080010ba <stm32f30x::gpioc::otyper::R::bits::ha30ae08ddc8f3faa>:
;     pub fn bits(&self) -> u32 {
 80010ba:      	sub	sp, #0x4
 80010bc:      	str	r0, [sp]
;         self.bits
 80010be:      	ldr	r0, [r0]
;     }
 80010c0:      	add	sp, #0x4
 80010c2:      	bx	lr

080010c4 <stm32f30x::gpioc::otyper::W::bits::h8a4c510fa1a221a2>:
;     pub unsafe fn bits(&mut self, bits: u32) -> &mut Self {
 80010c4:      	sub	sp, #0x8
 80010c6:      	str	r0, [sp]
 80010c8:      	str	r1, [sp, #0x4]
;         self.bits = bits;
 80010ca:      	str	r1, [r0]
;     }
 80010cc:      	add	sp, #0x8
 80010ce:      	bx	lr

080010d0 <stm32f30x::gpioc::moder::<impl stm32f30x::gpioc::MODER>::modify::h4e8c8bf6973f5a26>:
;     pub fn modify<F>(&self, f: F)
 80010d0:      	push	{r7, lr}
 80010d2:      	mov	r7, sp
 80010d4:      	sub	sp, #0x40
 80010d6:      	str	r0, [sp, #0x24]
 80010d8:      	str	r1, [sp, #0x28]
 80010da:      	str	r2, [sp, #0x2c]
 80010dc:      	str	r0, [sp, #0x34]
;         unsafe { ptr::read_volatile(self.value.get()) }
 80010de:      	str	r0, [sp, #0x10]
 80010e0:      	str	r2, [sp, #0xc]
 80010e2:      	str	r1, [sp, #0x8]
 80010e4:      	bl	#0xe18
 80010e8:      	bl	#0xb0c
 80010ec:      	mov	r1, r0
;         let bits = self.register.get();
 80010ee:      	str	r0, [sp, #0x30]
 80010f0:      	str	r1, [sp, #0x4]
 80010f2:      	b	#-0x2 <stm32f30x::gpioc::moder::<impl stm32f30x::gpioc::MODER>::modify::h4e8c8bf6973f5a26+0x24>
;         let r = R { bits: bits };
 80010f4:      	ldr	r0, [sp, #0x4]
 80010f6:      	str	r0, [sp, #0x14]
;         let mut w = W { bits: bits };
 80010f8:      	str	r0, [sp, #0x18]
 80010fa:      	add	r1, sp, #0x14
;         f(&r, &mut w);
 80010fc:      	str	r1, [sp, #0x1c]
 80010fe:      	add	r1, sp, #0x18
 8001100:      	str	r1, [sp, #0x20]
 8001102:      	ldr	r2, [sp, #0x1c]
 8001104:      	ldr	r3, [sp, #0x20]
 8001106:      	ldr	r0, [sp, #0x8]
 8001108:      	ldr	r1, [sp, #0xc]
 800110a:      	bl	#-0x95c
 800110e:      	b	#-0x2 <stm32f30x::gpioc::moder::<impl stm32f30x::gpioc::MODER>::modify::h4e8c8bf6973f5a26+0x40>
;         self.register.set(w.bits);
 8001110:      	ldr	r0, [sp, #0x18]
 8001112:      	ldr	r1, [sp, #0x10]
 8001114:      	str	r1, [sp, #0x38]
 8001116:      	str	r0, [sp, #0x3c]
;         unsafe { ptr::write_volatile(self.value.get(), value) }
 8001118:      	str	r0, [sp]
 800111a:      	mov	r0, r1
 800111c:      	bl	#0xde0
 8001120:      	ldr	r1, [sp]
 8001122:      	bl	#0xaf8
;         self.register.set(w.bits);
 8001126:      	b	#-0x2 <stm32f30x::gpioc::moder::<impl stm32f30x::gpioc::MODER>::modify::h4e8c8bf6973f5a26+0x58>
;     }
 8001128:      	add	sp, #0x40
 800112a:      	pop	{r7, pc}

0800112c <stm32f30x::gpioc::moder::<impl stm32f30x::gpioc::MODER>::modify::h864647b7c2438aa1>:
;     pub fn modify<F>(&self, f: F)
 800112c:      	push	{r7, lr}
 800112e:      	mov	r7, sp
 8001130:      	sub	sp, #0x40
 8001132:      	str	r0, [sp, #0x24]
 8001134:      	str	r1, [sp, #0x28]
 8001136:      	str	r2, [sp, #0x2c]
 8001138:      	str	r0, [sp, #0x34]
;         unsafe { ptr::read_volatile(self.value.get()) }
 800113a:      	str	r0, [sp, #0x10]
 800113c:      	str	r2, [sp, #0xc]
 800113e:      	str	r1, [sp, #0x8]
 8001140:      	bl	#0xdbc
 8001144:      	bl	#0xab0
 8001148:      	mov	r1, r0
;         let bits = self.register.get();
 800114a:      	str	r0, [sp, #0x30]
 800114c:      	str	r1, [sp, #0x4]
 800114e:      	b	#-0x2 <stm32f30x::gpioc::moder::<impl stm32f30x::gpioc::MODER>::modify::h864647b7c2438aa1+0x24>
;         let r = R { bits: bits };
 8001150:      	ldr	r0, [sp, #0x4]
 8001152:      	str	r0, [sp, #0x14]
;         let mut w = W { bits: bits };
 8001154:      	str	r0, [sp, #0x18]
 8001156:      	add	r1, sp, #0x14
;         f(&r, &mut w);
 8001158:      	str	r1, [sp, #0x1c]
 800115a:      	add	r1, sp, #0x18
 800115c:      	str	r1, [sp, #0x20]
 800115e:      	ldr	r2, [sp, #0x1c]
 8001160:      	ldr	r3, [sp, #0x20]
 8001162:      	ldr	r0, [sp, #0x8]
 8001164:      	ldr	r1, [sp, #0xc]
 8001166:      	bl	#-0x418
 800116a:      	b	#-0x2 <stm32f30x::gpioc::moder::<impl stm32f30x::gpioc::MODER>::modify::h864647b7c2438aa1+0x40>
;         self.register.set(w.bits);
 800116c:      	ldr	r0, [sp, #0x18]
 800116e:      	ldr	r1, [sp, #0x10]
 8001170:      	str	r1, [sp, #0x38]
 8001172:      	str	r0, [sp, #0x3c]
;         unsafe { ptr::write_volatile(self.value.get(), value) }
 8001174:      	str	r0, [sp]
 8001176:      	mov	r0, r1
 8001178:      	bl	#0xd84
 800117c:      	ldr	r1, [sp]
 800117e:      	bl	#0xa9c
;         self.register.set(w.bits);
 8001182:      	b	#-0x2 <stm32f30x::gpioc::moder::<impl stm32f30x::gpioc::MODER>::modify::h864647b7c2438aa1+0x58>
;     }
 8001184:      	add	sp, #0x40
 8001186:      	pop	{r7, pc}

08001188 <stm32f30x::gpioc::moder::<impl stm32f30x::gpioc::MODER>::modify::h99e98f34f41bb8ce>:
;     pub fn modify<F>(&self, f: F)
 8001188:      	push	{r7, lr}
 800118a:      	mov	r7, sp
 800118c:      	sub	sp, #0x40
 800118e:      	str	r0, [sp, #0x24]
 8001190:      	str	r1, [sp, #0x28]
 8001192:      	str	r2, [sp, #0x2c]
 8001194:      	str	r0, [sp, #0x34]
;         unsafe { ptr::read_volatile(self.value.get()) }
 8001196:      	str	r0, [sp, #0x10]
 8001198:      	str	r2, [sp, #0xc]
 800119a:      	str	r1, [sp, #0x8]
 800119c:      	bl	#0xd60
 80011a0:      	bl	#0xa54
 80011a4:      	mov	r1, r0
;         let bits = self.register.get();
 80011a6:      	str	r0, [sp, #0x30]
 80011a8:      	str	r1, [sp, #0x4]
 80011aa:      	b	#-0x2 <stm32f30x::gpioc::moder::<impl stm32f30x::gpioc::MODER>::modify::h99e98f34f41bb8ce+0x24>
;         let r = R { bits: bits };
 80011ac:      	ldr	r0, [sp, #0x4]
 80011ae:      	str	r0, [sp, #0x14]
;         let mut w = W { bits: bits };
 80011b0:      	str	r0, [sp, #0x18]
 80011b2:      	add	r1, sp, #0x14
;         f(&r, &mut w);
 80011b4:      	str	r1, [sp, #0x1c]
 80011b6:      	add	r1, sp, #0x18
 80011b8:      	str	r1, [sp, #0x20]
 80011ba:      	ldr	r2, [sp, #0x1c]
 80011bc:      	ldr	r3, [sp, #0x20]
 80011be:      	ldr	r0, [sp, #0x8]
 80011c0:      	ldr	r1, [sp, #0xc]
 80011c2:      	bl	#-0xb34
 80011c6:      	b	#-0x2 <stm32f30x::gpioc::moder::<impl stm32f30x::gpioc::MODER>::modify::h99e98f34f41bb8ce+0x40>
;         self.register.set(w.bits);
 80011c8:      	ldr	r0, [sp, #0x18]
 80011ca:      	ldr	r1, [sp, #0x10]
 80011cc:      	str	r1, [sp, #0x38]
 80011ce:      	str	r0, [sp, #0x3c]
;         unsafe { ptr::write_volatile(self.value.get(), value) }
 80011d0:      	str	r0, [sp]
 80011d2:      	mov	r0, r1
 80011d4:      	bl	#0xd28
 80011d8:      	ldr	r1, [sp]
 80011da:      	bl	#0xa40
;         self.register.set(w.bits);
 80011de:      	b	#-0x2 <stm32f30x::gpioc::moder::<impl stm32f30x::gpioc::MODER>::modify::h99e98f34f41bb8ce+0x58>
;     }
 80011e0:      	add	sp, #0x40
 80011e2:      	pop	{r7, pc}

080011e4 <stm32f30x::gpioc::moder::<impl stm32f30x::gpioc::MODER>::modify::h9c4b88566159540d>:
;     pub fn modify<F>(&self, f: F)
 80011e4:      	push	{r7, lr}
 80011e6:      	mov	r7, sp
 80011e8:      	sub	sp, #0x40
 80011ea:      	str	r0, [sp, #0x24]
 80011ec:      	str	r1, [sp, #0x28]
 80011ee:      	str	r2, [sp, #0x2c]
 80011f0:      	str	r0, [sp, #0x34]
;         unsafe { ptr::read_volatile(self.value.get()) }
 80011f2:      	str	r0, [sp, #0x10]
 80011f4:      	str	r2, [sp, #0xc]
 80011f6:      	str	r1, [sp, #0x8]
 80011f8:      	bl	#0xd04
 80011fc:      	bl	#0x9f8
 8001200:      	mov	r1, r0
;         let bits = self.register.get();
 8001202:      	str	r0, [sp, #0x30]
 8001204:      	str	r1, [sp, #0x4]
 8001206:      	b	#-0x2 <stm32f30x::gpioc::moder::<impl stm32f30x::gpioc::MODER>::modify::h9c4b88566159540d+0x24>
;         let r = R { bits: bits };
 8001208:      	ldr	r0, [sp, #0x4]
 800120a:      	str	r0, [sp, #0x14]
;         let mut w = W { bits: bits };
 800120c:      	str	r0, [sp, #0x18]
 800120e:      	add	r1, sp, #0x14
;         f(&r, &mut w);
 8001210:      	str	r1, [sp, #0x1c]
 8001212:      	add	r1, sp, #0x18
 8001214:      	str	r1, [sp, #0x20]
 8001216:      	ldr	r2, [sp, #0x1c]
 8001218:      	ldr	r3, [sp, #0x20]
 800121a:      	ldr	r0, [sp, #0x8]
 800121c:      	ldr	r1, [sp, #0xc]
 800121e:      	bl	#-0x386
 8001222:      	b	#-0x2 <stm32f30x::gpioc::moder::<impl stm32f30x::gpioc::MODER>::modify::h9c4b88566159540d+0x40>
;         self.register.set(w.bits);
 8001224:      	ldr	r0, [sp, #0x18]
 8001226:      	ldr	r1, [sp, #0x10]
 8001228:      	str	r1, [sp, #0x38]
 800122a:      	str	r0, [sp, #0x3c]
;         unsafe { ptr::write_volatile(self.value.get(), value) }
 800122c:      	str	r0, [sp]
 800122e:      	mov	r0, r1
 8001230:      	bl	#0xccc
 8001234:      	ldr	r1, [sp]
 8001236:      	bl	#0x9e4
;         self.register.set(w.bits);
 800123a:      	b	#-0x2 <stm32f30x::gpioc::moder::<impl stm32f30x::gpioc::MODER>::modify::h9c4b88566159540d+0x58>
;     }
 800123c:      	add	sp, #0x40
 800123e:      	pop	{r7, pc}

08001240 <stm32f30x::gpioc::moder::<impl stm32f30x::gpioc::MODER>::modify::he21e77f1baec05ad>:
;     pub fn modify<F>(&self, f: F)
 8001240:      	push	{r7, lr}
 8001242:      	mov	r7, sp
 8001244:      	sub	sp, #0x40
 8001246:      	str	r0, [sp, #0x24]
 8001248:      	str	r1, [sp, #0x28]
 800124a:      	str	r2, [sp, #0x2c]
 800124c:      	str	r0, [sp, #0x34]
;         unsafe { ptr::read_volatile(self.value.get()) }
 800124e:      	str	r0, [sp, #0x10]
 8001250:      	str	r2, [sp, #0xc]
 8001252:      	str	r1, [sp, #0x8]
 8001254:      	bl	#0xca8
 8001258:      	bl	#0x99c
 800125c:      	mov	r1, r0
;         let bits = self.register.get();
 800125e:      	str	r0, [sp, #0x30]
 8001260:      	str	r1, [sp, #0x4]
 8001262:      	b	#-0x2 <stm32f30x::gpioc::moder::<impl stm32f30x::gpioc::MODER>::modify::he21e77f1baec05ad+0x24>
;         let r = R { bits: bits };
 8001264:      	ldr	r0, [sp, #0x4]
 8001266:      	str	r0, [sp, #0x14]
;         let mut w = W { bits: bits };
 8001268:      	str	r0, [sp, #0x18]
 800126a:      	add	r1, sp, #0x14
;         f(&r, &mut w);
 800126c:      	str	r1, [sp, #0x1c]
 800126e:      	add	r1, sp, #0x18
 8001270:      	str	r1, [sp, #0x20]
 8001272:      	ldr	r2, [sp, #0x1c]
 8001274:      	ldr	r3, [sp, #0x20]
 8001276:      	ldr	r0, [sp, #0x8]
 8001278:      	ldr	r1, [sp, #0xc]
 800127a:      	bl	#-0x622
 800127e:      	b	#-0x2 <stm32f30x::gpioc::moder::<impl stm32f30x::gpioc::MODER>::modify::he21e77f1baec05ad+0x40>
;         self.register.set(w.bits);
 8001280:      	ldr	r0, [sp, #0x18]
 8001282:      	ldr	r1, [sp, #0x10]
 8001284:      	str	r1, [sp, #0x38]
 8001286:      	str	r0, [sp, #0x3c]
;         unsafe { ptr::write_volatile(self.value.get(), value) }
 8001288:      	str	r0, [sp]
 800128a:      	mov	r0, r1
 800128c:      	bl	#0xc70
 8001290:      	ldr	r1, [sp]
 8001292:      	bl	#0x988
;         self.register.set(w.bits);
 8001296:      	b	#-0x2 <stm32f30x::gpioc::moder::<impl stm32f30x::gpioc::MODER>::modify::he21e77f1baec05ad+0x58>
;     }
 8001298:      	add	sp, #0x40
 800129a:      	pop	{r7, pc}

0800129c <stm32f30x::gpioc::moder::<impl stm32f30x::gpioc::MODER>::modify::he80762782dd63082>:
;     pub fn modify<F>(&self, f: F)
 800129c:      	push	{r7, lr}
 800129e:      	mov	r7, sp
 80012a0:      	sub	sp, #0x40
 80012a2:      	str	r0, [sp, #0x24]
 80012a4:      	str	r1, [sp, #0x28]
 80012a6:      	str	r2, [sp, #0x2c]
 80012a8:      	str	r0, [sp, #0x34]
;         unsafe { ptr::read_volatile(self.value.get()) }
 80012aa:      	str	r0, [sp, #0x10]
 80012ac:      	str	r2, [sp, #0xc]
 80012ae:      	str	r1, [sp, #0x8]
 80012b0:      	bl	#0xc4c
 80012b4:      	bl	#0x940
 80012b8:      	mov	r1, r0
;         let bits = self.register.get();
 80012ba:      	str	r0, [sp, #0x30]
 80012bc:      	str	r1, [sp, #0x4]
 80012be:      	b	#-0x2 <stm32f30x::gpioc::moder::<impl stm32f30x::gpioc::MODER>::modify::he80762782dd63082+0x24>
;         let r = R { bits: bits };
 80012c0:      	ldr	r0, [sp, #0x4]
 80012c2:      	str	r0, [sp, #0x14]
;         let mut w = W { bits: bits };
 80012c4:      	str	r0, [sp, #0x18]
 80012c6:      	add	r1, sp, #0x14
;         f(&r, &mut w);
 80012c8:      	str	r1, [sp, #0x1c]
 80012ca:      	add	r1, sp, #0x18
 80012cc:      	str	r1, [sp, #0x20]
 80012ce:      	ldr	r2, [sp, #0x1c]
 80012d0:      	ldr	r3, [sp, #0x20]
 80012d2:      	ldr	r0, [sp, #0x8]
 80012d4:      	ldr	r1, [sp, #0xc]
 80012d6:      	bl	#-0x9de
 80012da:      	b	#-0x2 <stm32f30x::gpioc::moder::<impl stm32f30x::gpioc::MODER>::modify::he80762782dd63082+0x40>
;         self.register.set(w.bits);
 80012dc:      	ldr	r0, [sp, #0x18]
 80012de:      	ldr	r1, [sp, #0x10]
 80012e0:      	str	r1, [sp, #0x38]
 80012e2:      	str	r0, [sp, #0x3c]
;         unsafe { ptr::write_volatile(self.value.get(), value) }
 80012e4:      	str	r0, [sp]
 80012e6:      	mov	r0, r1
 80012e8:      	bl	#0xc14
 80012ec:      	ldr	r1, [sp]
 80012ee:      	bl	#0x92c
;         self.register.set(w.bits);
 80012f2:      	b	#-0x2 <stm32f30x::gpioc::moder::<impl stm32f30x::gpioc::MODER>::modify::he80762782dd63082+0x58>
;     }
 80012f4:      	add	sp, #0x40
 80012f6:      	pop	{r7, pc}

080012f8 <stm32f30x::gpioc::moder::<impl stm32f30x::gpioc::MODER>::modify::hf32aec263a5b0328>:
;     pub fn modify<F>(&self, f: F)
 80012f8:      	push	{r7, lr}
 80012fa:      	mov	r7, sp
 80012fc:      	sub	sp, #0x40
 80012fe:      	str	r0, [sp, #0x24]
 8001300:      	str	r1, [sp, #0x28]
 8001302:      	str	r2, [sp, #0x2c]
 8001304:      	str	r0, [sp, #0x34]
;         unsafe { ptr::read_volatile(self.value.get()) }
 8001306:      	str	r0, [sp, #0x10]
 8001308:      	str	r2, [sp, #0xc]
 800130a:      	str	r1, [sp, #0x8]
 800130c:      	bl	#0xbf0
 8001310:      	bl	#0x8e4
 8001314:      	mov	r1, r0
;         let bits = self.register.get();
 8001316:      	str	r0, [sp, #0x30]
 8001318:      	str	r1, [sp, #0x4]
 800131a:      	b	#-0x2 <stm32f30x::gpioc::moder::<impl stm32f30x::gpioc::MODER>::modify::hf32aec263a5b0328+0x24>
;         let r = R { bits: bits };
 800131c:      	ldr	r0, [sp, #0x4]
 800131e:      	str	r0, [sp, #0x14]
;         let mut w = W { bits: bits };
 8001320:      	str	r0, [sp, #0x18]
 8001322:      	add	r1, sp, #0x14
;         f(&r, &mut w);
 8001324:      	str	r1, [sp, #0x1c]
 8001326:      	add	r1, sp, #0x18
 8001328:      	str	r1, [sp, #0x20]
 800132a:      	ldr	r2, [sp, #0x1c]
 800132c:      	ldr	r3, [sp, #0x20]
 800132e:      	ldr	r0, [sp, #0x8]
 8001330:      	ldr	r1, [sp, #0xc]
 8001332:      	bl	#-0x944
 8001336:      	b	#-0x2 <stm32f30x::gpioc::moder::<impl stm32f30x::gpioc::MODER>::modify::hf32aec263a5b0328+0x40>
;         self.register.set(w.bits);
 8001338:      	ldr	r0, [sp, #0x18]
 800133a:      	ldr	r1, [sp, #0x10]
 800133c:      	str	r1, [sp, #0x38]
 800133e:      	str	r0, [sp, #0x3c]
;         unsafe { ptr::write_volatile(self.value.get(), value) }
 8001340:      	str	r0, [sp]
 8001342:      	mov	r0, r1
 8001344:      	bl	#0xbb8
 8001348:      	ldr	r1, [sp]
 800134a:      	bl	#0x8d0
;         self.register.set(w.bits);
 800134e:      	b	#-0x2 <stm32f30x::gpioc::moder::<impl stm32f30x::gpioc::MODER>::modify::hf32aec263a5b0328+0x58>
;     }
 8001350:      	add	sp, #0x40
 8001352:      	pop	{r7, pc}

08001354 <stm32f30x::gpioc::moder::<impl stm32f30x::gpioc::MODER>::modify::hf7318eae8d5292d6>:
;     pub fn modify<F>(&self, f: F)
 8001354:      	push	{r7, lr}
 8001356:      	mov	r7, sp
 8001358:      	sub	sp, #0x40
 800135a:      	str	r0, [sp, #0x24]
 800135c:      	str	r1, [sp, #0x28]
 800135e:      	str	r2, [sp, #0x2c]
 8001360:      	str	r0, [sp, #0x34]
;         unsafe { ptr::read_volatile(self.value.get()) }
 8001362:      	str	r0, [sp, #0x10]
 8001364:      	str	r2, [sp, #0xc]
 8001366:      	str	r1, [sp, #0x8]
 8001368:      	bl	#0xb94
 800136c:      	bl	#0x888
 8001370:      	mov	r1, r0
;         let bits = self.register.get();
 8001372:      	str	r0, [sp, #0x30]
 8001374:      	str	r1, [sp, #0x4]
 8001376:      	b	#-0x2 <stm32f30x::gpioc::moder::<impl stm32f30x::gpioc::MODER>::modify::hf7318eae8d5292d6+0x24>
;         let r = R { bits: bits };
 8001378:      	ldr	r0, [sp, #0x4]
 800137a:      	str	r0, [sp, #0x14]
;         let mut w = W { bits: bits };
 800137c:      	str	r0, [sp, #0x18]
 800137e:      	add	r1, sp, #0x14
;         f(&r, &mut w);
 8001380:      	str	r1, [sp, #0x1c]
 8001382:      	add	r1, sp, #0x18
 8001384:      	str	r1, [sp, #0x20]
 8001386:      	ldr	r2, [sp, #0x1c]
 8001388:      	ldr	r3, [sp, #0x20]
 800138a:      	ldr	r0, [sp, #0x8]
 800138c:      	ldr	r1, [sp, #0xc]
 800138e:      	bl	#-0x856
 8001392:      	b	#-0x2 <stm32f30x::gpioc::moder::<impl stm32f30x::gpioc::MODER>::modify::hf7318eae8d5292d6+0x40>
;         self.register.set(w.bits);
 8001394:      	ldr	r0, [sp, #0x18]
 8001396:      	ldr	r1, [sp, #0x10]
 8001398:      	str	r1, [sp, #0x38]
 800139a:      	str	r0, [sp, #0x3c]
;         unsafe { ptr::write_volatile(self.value.get(), value) }
 800139c:      	str	r0, [sp]
 800139e:      	mov	r0, r1
 80013a0:      	bl	#0xb5c
 80013a4:      	ldr	r1, [sp]
 80013a6:      	bl	#0x874
;         self.register.set(w.bits);
 80013aa:      	b	#-0x2 <stm32f30x::gpioc::moder::<impl stm32f30x::gpioc::MODER>::modify::hf7318eae8d5292d6+0x58>
;     }
 80013ac:      	add	sp, #0x40
 80013ae:      	pop	{r7, pc}

080013b0 <stm32f30x::gpioc::otyper::<impl stm32f30x::gpioc::OTYPER>::modify::h36f15c37164976a9>:
;     pub fn modify<F>(&self, f: F)
 80013b0:      	push	{r7, lr}
 80013b2:      	mov	r7, sp
 80013b4:      	sub	sp, #0x38
 80013b6:      	str	r0, [sp, #0x20]
 80013b8:      	str	r0, [sp, #0x2c]
;         unsafe { ptr::read_volatile(self.value.get()) }
 80013ba:      	str	r0, [sp, #0xc]
 80013bc:      	bl	#0xb40
 80013c0:      	bl	#0x834
 80013c4:      	mov	r1, r0
;         let bits = self.register.get();
 80013c6:      	str	r0, [sp, #0x28]
 80013c8:      	str	r1, [sp, #0x8]
 80013ca:      	b	#-0x2 <stm32f30x::gpioc::otyper::<impl stm32f30x::gpioc::OTYPER>::modify::h36f15c37164976a9+0x1c>
;         let r = R { bits: bits };
 80013cc:      	ldr	r0, [sp, #0x8]
 80013ce:      	str	r0, [sp, #0x10]
;         let mut w = W { bits: bits };
 80013d0:      	str	r0, [sp, #0x14]
 80013d2:      	add	r1, sp, #0x10
;         f(&r, &mut w);
 80013d4:      	str	r1, [sp, #0x18]
 80013d6:      	add	r1, sp, #0x14
 80013d8:      	str	r1, [sp, #0x1c]
 80013da:      	ldr	r0, [sp, #0x18]
 80013dc:      	ldr	r1, [sp, #0x1c]
 80013de:      	bl	#-0xb10
 80013e2:      	b	#-0x2 <stm32f30x::gpioc::otyper::<impl stm32f30x::gpioc::OTYPER>::modify::h36f15c37164976a9+0x34>
;         self.register.set(w.bits);
 80013e4:      	ldr	r0, [sp, #0x14]
 80013e6:      	ldr	r1, [sp, #0xc]
 80013e8:      	str	r1, [sp, #0x30]
 80013ea:      	str	r0, [sp, #0x34]
;         unsafe { ptr::write_volatile(self.value.get(), value) }
 80013ec:      	str	r0, [sp, #0x4]
 80013ee:      	mov	r0, r1
 80013f0:      	bl	#0xb0c
 80013f4:      	ldr	r1, [sp, #0x4]
 80013f6:      	bl	#0x824
;         self.register.set(w.bits);
 80013fa:      	b	#-0x2 <stm32f30x::gpioc::otyper::<impl stm32f30x::gpioc::OTYPER>::modify::h36f15c37164976a9+0x4c>
;     }
 80013fc:      	add	sp, #0x38
 80013fe:      	pop	{r7, pc}

08001400 <stm32f30x::gpioc::otyper::<impl stm32f30x::gpioc::OTYPER>::modify::h4d164db70f356318>:
;     pub fn modify<F>(&self, f: F)
 8001400:      	push	{r7, lr}
 8001402:      	mov	r7, sp
 8001404:      	sub	sp, #0x38
 8001406:      	str	r0, [sp, #0x20]
 8001408:      	str	r0, [sp, #0x2c]
;         unsafe { ptr::read_volatile(self.value.get()) }
 800140a:      	str	r0, [sp, #0xc]
 800140c:      	bl	#0xaf0
 8001410:      	bl	#0x7e4
 8001414:      	mov	r1, r0
;         let bits = self.register.get();
 8001416:      	str	r0, [sp, #0x28]
 8001418:      	str	r1, [sp, #0x8]
 800141a:      	b	#-0x2 <stm32f30x::gpioc::otyper::<impl stm32f30x::gpioc::OTYPER>::modify::h4d164db70f356318+0x1c>
;         let r = R { bits: bits };
 800141c:      	ldr	r0, [sp, #0x8]
 800141e:      	str	r0, [sp, #0x10]
;         let mut w = W { bits: bits };
 8001420:      	str	r0, [sp, #0x14]
 8001422:      	add	r1, sp, #0x10
;         f(&r, &mut w);
 8001424:      	str	r1, [sp, #0x18]
 8001426:      	add	r1, sp, #0x14
 8001428:      	str	r1, [sp, #0x1c]
 800142a:      	ldr	r0, [sp, #0x18]
 800142c:      	ldr	r1, [sp, #0x1c]
 800142e:      	bl	#-0x998
 8001432:      	b	#-0x2 <stm32f30x::gpioc::otyper::<impl stm32f30x::gpioc::OTYPER>::modify::h4d164db70f356318+0x34>
;         self.register.set(w.bits);
 8001434:      	ldr	r0, [sp, #0x14]
 8001436:      	ldr	r1, [sp, #0xc]
 8001438:      	str	r1, [sp, #0x30]
 800143a:      	str	r0, [sp, #0x34]
;         unsafe { ptr::write_volatile(self.value.get(), value) }
 800143c:      	str	r0, [sp, #0x4]
 800143e:      	mov	r0, r1
 8001440:      	bl	#0xabc
 8001444:      	ldr	r1, [sp, #0x4]
 8001446:      	bl	#0x7d4
;         self.register.set(w.bits);
 800144a:      	b	#-0x2 <stm32f30x::gpioc::otyper::<impl stm32f30x::gpioc::OTYPER>::modify::h4d164db70f356318+0x4c>
;     }
 800144c:      	add	sp, #0x38
 800144e:      	pop	{r7, pc}

08001450 <stm32f30x::gpioc::otyper::<impl stm32f30x::gpioc::OTYPER>::modify::h68e93668908750e7>:
;     pub fn modify<F>(&self, f: F)
 8001450:      	push	{r7, lr}
 8001452:      	mov	r7, sp
 8001454:      	sub	sp, #0x38
 8001456:      	str	r0, [sp, #0x20]
 8001458:      	str	r0, [sp, #0x2c]
;         unsafe { ptr::read_volatile(self.value.get()) }
 800145a:      	str	r0, [sp, #0xc]
 800145c:      	bl	#0xaa0
 8001460:      	bl	#0x794
 8001464:      	mov	r1, r0
;         let bits = self.register.get();
 8001466:      	str	r0, [sp, #0x28]
 8001468:      	str	r1, [sp, #0x8]
 800146a:      	b	#-0x2 <stm32f30x::gpioc::otyper::<impl stm32f30x::gpioc::OTYPER>::modify::h68e93668908750e7+0x1c>
;         let r = R { bits: bits };
 800146c:      	ldr	r0, [sp, #0x8]
 800146e:      	str	r0, [sp, #0x10]
;         let mut w = W { bits: bits };
 8001470:      	str	r0, [sp, #0x14]
 8001472:      	add	r1, sp, #0x10
;         f(&r, &mut w);
 8001474:      	str	r1, [sp, #0x18]
 8001476:      	add	r1, sp, #0x14
 8001478:      	str	r1, [sp, #0x1c]
 800147a:      	ldr	r0, [sp, #0x18]
 800147c:      	ldr	r1, [sp, #0x1c]
 800147e:      	bl	#-0x688
 8001482:      	b	#-0x2 <stm32f30x::gpioc::otyper::<impl stm32f30x::gpioc::OTYPER>::modify::h68e93668908750e7+0x34>
;         self.register.set(w.bits);
 8001484:      	ldr	r0, [sp, #0x14]
 8001486:      	ldr	r1, [sp, #0xc]
 8001488:      	str	r1, [sp, #0x30]
 800148a:      	str	r0, [sp, #0x34]
;         unsafe { ptr::write_volatile(self.value.get(), value) }
 800148c:      	str	r0, [sp, #0x4]
 800148e:      	mov	r0, r1
 8001490:      	bl	#0xa6c
 8001494:      	ldr	r1, [sp, #0x4]
 8001496:      	bl	#0x784
;         self.register.set(w.bits);
 800149a:      	b	#-0x2 <stm32f30x::gpioc::otyper::<impl stm32f30x::gpioc::OTYPER>::modify::h68e93668908750e7+0x4c>
;     }
 800149c:      	add	sp, #0x38
 800149e:      	pop	{r7, pc}

080014a0 <stm32f30x::gpioc::otyper::<impl stm32f30x::gpioc::OTYPER>::modify::h6aba6facc4a1b4ca>:
;     pub fn modify<F>(&self, f: F)
 80014a0:      	push	{r7, lr}
 80014a2:      	mov	r7, sp
 80014a4:      	sub	sp, #0x38
 80014a6:      	str	r0, [sp, #0x20]
 80014a8:      	str	r0, [sp, #0x2c]
;         unsafe { ptr::read_volatile(self.value.get()) }
 80014aa:      	str	r0, [sp, #0xc]
 80014ac:      	bl	#0xa50
 80014b0:      	bl	#0x744
 80014b4:      	mov	r1, r0
;         let bits = self.register.get();
 80014b6:      	str	r0, [sp, #0x28]
 80014b8:      	str	r1, [sp, #0x8]
 80014ba:      	b	#-0x2 <stm32f30x::gpioc::otyper::<impl stm32f30x::gpioc::OTYPER>::modify::h6aba6facc4a1b4ca+0x1c>
;         let r = R { bits: bits };
 80014bc:      	ldr	r0, [sp, #0x8]
 80014be:      	str	r0, [sp, #0x10]
;         let mut w = W { bits: bits };
 80014c0:      	str	r0, [sp, #0x14]
 80014c2:      	add	r1, sp, #0x10
;         f(&r, &mut w);
 80014c4:      	str	r1, [sp, #0x18]
 80014c6:      	add	r1, sp, #0x14
 80014c8:      	str	r1, [sp, #0x1c]
 80014ca:      	ldr	r0, [sp, #0x18]
 80014cc:      	ldr	r1, [sp, #0x1c]
 80014ce:      	bl	#-0xc78
 80014d2:      	b	#-0x2 <stm32f30x::gpioc::otyper::<impl stm32f30x::gpioc::OTYPER>::modify::h6aba6facc4a1b4ca+0x34>
;         self.register.set(w.bits);
 80014d4:      	ldr	r0, [sp, #0x14]
 80014d6:      	ldr	r1, [sp, #0xc]
 80014d8:      	str	r1, [sp, #0x30]
 80014da:      	str	r0, [sp, #0x34]
;         unsafe { ptr::write_volatile(self.value.get(), value) }
 80014dc:      	str	r0, [sp, #0x4]
 80014de:      	mov	r0, r1
 80014e0:      	bl	#0xa1c
 80014e4:      	ldr	r1, [sp, #0x4]
 80014e6:      	bl	#0x734
;         self.register.set(w.bits);
 80014ea:      	b	#-0x2 <stm32f30x::gpioc::otyper::<impl stm32f30x::gpioc::OTYPER>::modify::h6aba6facc4a1b4ca+0x4c>
;     }
 80014ec:      	add	sp, #0x38
 80014ee:      	pop	{r7, pc}

080014f0 <stm32f30x::gpioc::otyper::<impl stm32f30x::gpioc::OTYPER>::modify::h780c41ae7eed5763>:
;     pub fn modify<F>(&self, f: F)
 80014f0:      	push	{r7, lr}
 80014f2:      	mov	r7, sp
 80014f4:      	sub	sp, #0x38
 80014f6:      	str	r0, [sp, #0x20]
 80014f8:      	str	r0, [sp, #0x2c]
;         unsafe { ptr::read_volatile(self.value.get()) }
 80014fa:      	str	r0, [sp, #0xc]
 80014fc:      	bl	#0xa00
 8001500:      	bl	#0x6f4
 8001504:      	mov	r1, r0
;         let bits = self.register.get();
 8001506:      	str	r0, [sp, #0x28]
 8001508:      	str	r1, [sp, #0x8]
 800150a:      	b	#-0x2 <stm32f30x::gpioc::otyper::<impl stm32f30x::gpioc::OTYPER>::modify::h780c41ae7eed5763+0x1c>
;         let r = R { bits: bits };
 800150c:      	ldr	r0, [sp, #0x8]
 800150e:      	str	r0, [sp, #0x10]
;         let mut w = W { bits: bits };
 8001510:      	str	r0, [sp, #0x14]
 8001512:      	add	r1, sp, #0x10
;         f(&r, &mut w);
 8001514:      	str	r1, [sp, #0x18]
 8001516:      	add	r1, sp, #0x14
 8001518:      	str	r1, [sp, #0x1c]
 800151a:      	ldr	r0, [sp, #0x18]
 800151c:      	ldr	r1, [sp, #0x1c]
 800151e:      	bl	#-0x6b0
 8001522:      	b	#-0x2 <stm32f30x::gpioc::otyper::<impl stm32f30x::gpioc::OTYPER>::modify::h780c41ae7eed5763+0x34>
;         self.register.set(w.bits);
 8001524:      	ldr	r0, [sp, #0x14]
 8001526:      	ldr	r1, [sp, #0xc]
 8001528:      	str	r1, [sp, #0x30]
 800152a:      	str	r0, [sp, #0x34]
;         unsafe { ptr::write_volatile(self.value.get(), value) }
 800152c:      	str	r0, [sp, #0x4]
 800152e:      	mov	r0, r1
 8001530:      	bl	#0x9cc
 8001534:      	ldr	r1, [sp, #0x4]
 8001536:      	bl	#0x6e4
;         self.register.set(w.bits);
 800153a:      	b	#-0x2 <stm32f30x::gpioc::otyper::<impl stm32f30x::gpioc::OTYPER>::modify::h780c41ae7eed5763+0x4c>
;     }
 800153c:      	add	sp, #0x38
 800153e:      	pop	{r7, pc}

08001540 <stm32f30x::gpioc::otyper::<impl stm32f30x::gpioc::OTYPER>::modify::h7ded4bbba8fdc3c3>:
;     pub fn modify<F>(&self, f: F)
 8001540:      	push	{r7, lr}
 8001542:      	mov	r7, sp
 8001544:      	sub	sp, #0x38
 8001546:      	str	r0, [sp, #0x20]
 8001548:      	str	r0, [sp, #0x2c]
;         unsafe { ptr::read_volatile(self.value.get()) }
 800154a:      	str	r0, [sp, #0xc]
 800154c:      	bl	#0x9b0
 8001550:      	bl	#0x6a4
 8001554:      	mov	r1, r0
;         let bits = self.register.get();
 8001556:      	str	r0, [sp, #0x28]
 8001558:      	str	r1, [sp, #0x8]
 800155a:      	b	#-0x2 <stm32f30x::gpioc::otyper::<impl stm32f30x::gpioc::OTYPER>::modify::h7ded4bbba8fdc3c3+0x1c>
;         let r = R { bits: bits };
 800155c:      	ldr	r0, [sp, #0x8]
 800155e:      	str	r0, [sp, #0x10]
;         let mut w = W { bits: bits };
 8001560:      	str	r0, [sp, #0x14]
 8001562:      	add	r1, sp, #0x10
;         f(&r, &mut w);
 8001564:      	str	r1, [sp, #0x18]
 8001566:      	add	r1, sp, #0x14
 8001568:      	str	r1, [sp, #0x1c]
 800156a:      	ldr	r0, [sp, #0x18]
 800156c:      	ldr	r1, [sp, #0x1c]
 800156e:      	bl	#-0xe38
 8001572:      	b	#-0x2 <stm32f30x::gpioc::otyper::<impl stm32f30x::gpioc::OTYPER>::modify::h7ded4bbba8fdc3c3+0x34>
;         self.register.set(w.bits);
 8001574:      	ldr	r0, [sp, #0x14]
 8001576:      	ldr	r1, [sp, #0xc]
 8001578:      	str	r1, [sp, #0x30]
 800157a:      	str	r0, [sp, #0x34]
;         unsafe { ptr::write_volatile(self.value.get(), value) }
 800157c:      	str	r0, [sp, #0x4]
 800157e:      	mov	r0, r1
 8001580:      	bl	#0x97c
 8001584:      	ldr	r1, [sp, #0x4]
 8001586:      	bl	#0x694
;         self.register.set(w.bits);
 800158a:      	b	#-0x2 <stm32f30x::gpioc::otyper::<impl stm32f30x::gpioc::OTYPER>::modify::h7ded4bbba8fdc3c3+0x4c>
;     }
 800158c:      	add	sp, #0x38
 800158e:      	pop	{r7, pc}

08001590 <stm32f30x::gpioc::otyper::<impl stm32f30x::gpioc::OTYPER>::modify::hca0c15fac3decf70>:
;     pub fn modify<F>(&self, f: F)
 8001590:      	push	{r7, lr}
 8001592:      	mov	r7, sp
 8001594:      	sub	sp, #0x38
 8001596:      	str	r0, [sp, #0x20]
 8001598:      	str	r0, [sp, #0x2c]
;         unsafe { ptr::read_volatile(self.value.get()) }
 800159a:      	str	r0, [sp, #0xc]
 800159c:      	bl	#0x960
 80015a0:      	bl	#0x654
 80015a4:      	mov	r1, r0
;         let bits = self.register.get();
 80015a6:      	str	r0, [sp, #0x28]
 80015a8:      	str	r1, [sp, #0x8]
 80015aa:      	b	#-0x2 <stm32f30x::gpioc::otyper::<impl stm32f30x::gpioc::OTYPER>::modify::hca0c15fac3decf70+0x1c>
;         let r = R { bits: bits };
 80015ac:      	ldr	r0, [sp, #0x8]
 80015ae:      	str	r0, [sp, #0x10]
;         let mut w = W { bits: bits };
 80015b0:      	str	r0, [sp, #0x14]
 80015b2:      	add	r1, sp, #0x10
;         f(&r, &mut w);
 80015b4:      	str	r1, [sp, #0x18]
 80015b6:      	add	r1, sp, #0x14
 80015b8:      	str	r1, [sp, #0x1c]
 80015ba:      	ldr	r0, [sp, #0x18]
 80015bc:      	ldr	r1, [sp, #0x1c]
 80015be:      	bl	#-0x990
 80015c2:      	b	#-0x2 <stm32f30x::gpioc::otyper::<impl stm32f30x::gpioc::OTYPER>::modify::hca0c15fac3decf70+0x34>
;         self.register.set(w.bits);
 80015c4:      	ldr	r0, [sp, #0x14]
 80015c6:      	ldr	r1, [sp, #0xc]
 80015c8:      	str	r1, [sp, #0x30]
 80015ca:      	str	r0, [sp, #0x34]
;         unsafe { ptr::write_volatile(self.value.get(), value) }
 80015cc:      	str	r0, [sp, #0x4]
 80015ce:      	mov	r0, r1
 80015d0:      	bl	#0x92c
 80015d4:      	ldr	r1, [sp, #0x4]
 80015d6:      	bl	#0x644
;         self.register.set(w.bits);
 80015da:      	b	#-0x2 <stm32f30x::gpioc::otyper::<impl stm32f30x::gpioc::OTYPER>::modify::hca0c15fac3decf70+0x4c>
;     }
 80015dc:      	add	sp, #0x38
 80015de:      	pop	{r7, pc}

080015e0 <stm32f30x::gpioc::otyper::<impl stm32f30x::gpioc::OTYPER>::modify::hd616f52f183e0cd8>:
;     pub fn modify<F>(&self, f: F)
 80015e0:      	push	{r7, lr}
 80015e2:      	mov	r7, sp
 80015e4:      	sub	sp, #0x38
 80015e6:      	str	r0, [sp, #0x20]
 80015e8:      	str	r0, [sp, #0x2c]
;         unsafe { ptr::read_volatile(self.value.get()) }
 80015ea:      	str	r0, [sp, #0xc]
 80015ec:      	bl	#0x910
 80015f0:      	bl	#0x604
 80015f4:      	mov	r1, r0
;         let bits = self.register.get();
 80015f6:      	str	r0, [sp, #0x28]
 80015f8:      	str	r1, [sp, #0x8]
 80015fa:      	b	#-0x2 <stm32f30x::gpioc::otyper::<impl stm32f30x::gpioc::OTYPER>::modify::hd616f52f183e0cd8+0x1c>
;         let r = R { bits: bits };
 80015fc:      	ldr	r0, [sp, #0x8]
 80015fe:      	str	r0, [sp, #0x10]
;         let mut w = W { bits: bits };
 8001600:      	str	r0, [sp, #0x14]
 8001602:      	add	r1, sp, #0x10
;         f(&r, &mut w);
 8001604:      	str	r1, [sp, #0x18]
 8001606:      	add	r1, sp, #0x14
 8001608:      	str	r1, [sp, #0x1c]
 800160a:      	ldr	r0, [sp, #0x18]
 800160c:      	ldr	r1, [sp, #0x1c]
 800160e:      	bl	#-0xb00
 8001612:      	b	#-0x2 <stm32f30x::gpioc::otyper::<impl stm32f30x::gpioc::OTYPER>::modify::hd616f52f183e0cd8+0x34>
;         self.register.set(w.bits);
 8001614:      	ldr	r0, [sp, #0x14]
 8001616:      	ldr	r1, [sp, #0xc]
 8001618:      	str	r1, [sp, #0x30]
 800161a:      	str	r0, [sp, #0x34]
;         unsafe { ptr::write_volatile(self.value.get(), value) }
 800161c:      	str	r0, [sp, #0x4]
 800161e:      	mov	r0, r1
 8001620:      	bl	#0x8dc
 8001624:      	ldr	r1, [sp, #0x4]
 8001626:      	bl	#0x5f4
;         self.register.set(w.bits);
 800162a:      	b	#-0x2 <stm32f30x::gpioc::otyper::<impl stm32f30x::gpioc::OTYPER>::modify::hd616f52f183e0cd8+0x4c>
;     }
 800162c:      	add	sp, #0x38
 800162e:      	pop	{r7, pc}

08001630 <_ZN13stm32f30x_hal4gpio5gpioe75_$LT$impl$u20$stm32f30x_hal..gpio..GpioExt$u20$for$u20$stm32f30x..GPIOE$GT$5split28_$u7b$$u7b$closure$u7d$$u7d$17h5fce422f6dfc420cE>:
;                     ahb.enr().modify(|_, w| w.$iopxenr().enabled());
 8001630:      	push	{r7, lr}
 8001632:      	mov	r7, sp
 8001634:      	sub	sp, #0x18
 8001636:      	str	r0, [sp, #0x10]
 8001638:      	str	r1, [sp, #0x14]
 800163a:      	mov	r0, r1
 800163c:      	bl	#0x232
 8001640:      	str	r0, [sp, #0x8]
 8001642:      	b	#-0x2 <_ZN13stm32f30x_hal4gpio5gpioe75_$LT$impl$u20$stm32f30x_hal..gpio..GpioExt$u20$for$u20$stm32f30x..GPIOE$GT$5split28_$u7b$$u7b$closure$u7d$$u7d$17h5fce422f6dfc420cE+0x14>
 8001644:      	ldr	r0, [sp, #0x8]
 8001646:      	bl	#0x284
 800164a:      	str	r0, [sp, #0x4]
 800164c:      	b	#-0x2 <_ZN13stm32f30x_hal4gpio5gpioe75_$LT$impl$u20$stm32f30x_hal..gpio..GpioExt$u20$for$u20$stm32f30x..GPIOE$GT$5split28_$u7b$$u7b$closure$u7d$$u7d$17h5fce422f6dfc420cE+0x1e>
 800164e:      	ldr	r0, [sp, #0x4]
 8001650:      	add	sp, #0x18
 8001652:      	pop	{r7, pc}

08001654 <_ZN13stm32f30x_hal4gpio5gpioe75_$LT$impl$u20$stm32f30x_hal..gpio..GpioExt$u20$for$u20$stm32f30x..GPIOE$GT$5split28_$u7b$$u7b$closure$u7d$$u7d$17h4b843f15964c2e8bE>:
;                     ahb.rstr().modify(|_, w| w.$iopxrst().set_bit());
 8001654:      	push	{r7, lr}
 8001656:      	mov	r7, sp
 8001658:      	sub	sp, #0x18
 800165a:      	str	r0, [sp, #0x10]
 800165c:      	str	r1, [sp, #0x14]
 800165e:      	mov	r0, r1
 8001660:      	bl	#0x2be
 8001664:      	str	r0, [sp, #0x8]
 8001666:      	b	#-0x2 <_ZN13stm32f30x_hal4gpio5gpioe75_$LT$impl$u20$stm32f30x_hal..gpio..GpioExt$u20$for$u20$stm32f30x..GPIOE$GT$5split28_$u7b$$u7b$closure$u7d$$u7d$17h4b843f15964c2e8bE+0x14>
 8001668:      	ldr	r0, [sp, #0x8]
 800166a:      	bl	#0x314
 800166e:      	str	r0, [sp, #0x4]
 8001670:      	b	#-0x2 <_ZN13stm32f30x_hal4gpio5gpioe75_$LT$impl$u20$stm32f30x_hal..gpio..GpioExt$u20$for$u20$stm32f30x..GPIOE$GT$5split28_$u7b$$u7b$closure$u7d$$u7d$17h4b843f15964c2e8bE+0x1e>
 8001672:      	ldr	r0, [sp, #0x4]
 8001674:      	add	sp, #0x18
 8001676:      	pop	{r7, pc}

08001678 <_ZN13stm32f30x_hal4gpio5gpioe75_$LT$impl$u20$stm32f30x_hal..gpio..GpioExt$u20$for$u20$stm32f30x..GPIOE$GT$5split28_$u7b$$u7b$closure$u7d$$u7d$17hdaa40368e3bc0cedE>:
;                     ahb.rstr().modify(|_, w| w.$iopxrst().clear_bit());
 8001678:      	push	{r7, lr}
 800167a:      	mov	r7, sp
 800167c:      	sub	sp, #0x18
 800167e:      	str	r0, [sp, #0x10]
 8001680:      	str	r1, [sp, #0x14]
 8001682:      	mov	r0, r1
 8001684:      	bl	#0x29a
 8001688:      	str	r0, [sp, #0x8]
 800168a:      	b	#-0x2 <_ZN13stm32f30x_hal4gpio5gpioe75_$LT$impl$u20$stm32f30x_hal..gpio..GpioExt$u20$for$u20$stm32f30x..GPIOE$GT$5split28_$u7b$$u7b$closure$u7d$$u7d$17hdaa40368e3bc0cedE+0x14>
 800168c:      	ldr	r0, [sp, #0x8]
 800168e:      	bl	#0x308
 8001692:      	str	r0, [sp, #0x4]
 8001694:      	b	#-0x2 <_ZN13stm32f30x_hal4gpio5gpioe75_$LT$impl$u20$stm32f30x_hal..gpio..GpioExt$u20$for$u20$stm32f30x..GPIOE$GT$5split28_$u7b$$u7b$closure$u7d$$u7d$17hdaa40368e3bc0cedE+0x1e>
 8001696:      	ldr	r0, [sp, #0x4]
 8001698:      	add	sp, #0x18
 800169a:      	pop	{r7, pc}

0800169c <stm32f30x_hal::gpio::gpioe::MODER::moder::hc95dfd312af21e24>:
;                 pub(crate) fn moder(&mut self) -> &$gpioy::MODER {
 800169c:      	push	{r7, lr}
 800169e:      	mov	r7, sp
 80016a0:      	sub	sp, #0x8
 80016a2:      	str	r0, [sp, #0x4]
;                     unsafe { &(*$GPIOX::ptr()).moder }
 80016a4:      	bl	#0x286
 80016a8:      	str	r0, [sp]
 80016aa:      	b	#-0x2 <stm32f30x_hal::gpio::gpioe::MODER::moder::hc95dfd312af21e24+0x10>
;                 }
 80016ac:      	ldr	r0, [sp]
 80016ae:      	add	sp, #0x8
 80016b0:      	pop	{r7, pc}

080016b2 <stm32f30x_hal::gpio::gpioe::OTYPER::otyper::ha1a95f4491b3227f>:
;                 pub(crate) fn otyper(&mut self) -> &$gpioy::OTYPER {
 80016b2:      	push	{r7, lr}
 80016b4:      	mov	r7, sp
 80016b6:      	sub	sp, #0x8
 80016b8:      	str	r0, [sp, #0x4]
;                     unsafe { &(*$GPIOX::ptr()).otyper }
 80016ba:      	bl	#0x270
 80016be:      	str	r0, [sp]
 80016c0:      	b	#-0x2 <stm32f30x_hal::gpio::gpioe::OTYPER::otyper::ha1a95f4491b3227f+0x10>
 80016c2:      	ldr	r0, [sp]
 80016c4:      	adds	r0, #0x4
;                 }
 80016c6:      	add	sp, #0x8
 80016c8:      	pop	{r7, pc}

080016ca <stm32f30x_hal::rcc::AHB::enr::hfa84bf88a72aee00>:
;     pub(crate) fn enr(&mut self) -> &rcc::AHBENR {
 80016ca:      	push	{r7, lr}
 80016cc:      	mov	r7, sp
 80016ce:      	sub	sp, #0x8
 80016d0:      	str	r0, [sp, #0x4]
;         unsafe { &(*RCC::ptr()).ahbenr }
 80016d2:      	bl	#0x262
 80016d6:      	str	r0, [sp]
 80016d8:      	b	#-0x2 <stm32f30x_hal::rcc::AHB::enr::hfa84bf88a72aee00+0x10>
 80016da:      	ldr	r0, [sp]
 80016dc:      	adds	r0, #0x14
;     }
 80016de:      	add	sp, #0x8
 80016e0:      	pop	{r7, pc}

080016e2 <stm32f30x_hal::rcc::AHB::rstr::h41ab95c263b30cda>:
;     pub(crate) fn rstr(&mut self) -> &rcc::AHBRSTR {
 80016e2:      	push	{r7, lr}
 80016e4:      	mov	r7, sp
 80016e6:      	sub	sp, #0x8
 80016e8:      	str	r0, [sp, #0x4]
;         unsafe { &(*RCC::ptr()).ahbrstr }
 80016ea:      	bl	#0x24a
 80016ee:      	str	r0, [sp]
 80016f0:      	b	#-0x2 <stm32f30x_hal::rcc::AHB::rstr::h41ab95c263b30cda+0x10>
 80016f2:      	ldr	r0, [sp]
 80016f4:      	adds	r0, #0x28
;     }
 80016f6:      	add	sp, #0x8
 80016f8:      	pop	{r7, pc}

080016fa <stm32f30x::rcc::ahbenr::<impl stm32f30x::rcc::AHBENR>::modify::h3be2d8df664959fc>:
;     pub fn modify<F>(&self, f: F)
 80016fa:      	push	{r7, lr}
 80016fc:      	mov	r7, sp
 80016fe:      	sub	sp, #0x38
 8001700:      	str	r0, [sp, #0x20]
 8001702:      	str	r0, [sp, #0x2c]
;         unsafe { ptr::read_volatile(self.value.get()) }
 8001704:      	str	r0, [sp, #0xc]
 8001706:      	bl	#0x7f6
 800170a:      	bl	#0x4ea
 800170e:      	mov	r1, r0
;         let bits = self.register.get();
 8001710:      	str	r0, [sp, #0x28]
 8001712:      	str	r1, [sp, #0x8]
 8001714:      	b	#-0x2 <stm32f30x::rcc::ahbenr::<impl stm32f30x::rcc::AHBENR>::modify::h3be2d8df664959fc+0x1c>
;         let r = R { bits: bits };
 8001716:      	ldr	r0, [sp, #0x8]
 8001718:      	str	r0, [sp, #0x10]
;         let mut w = W { bits: bits };
 800171a:      	str	r0, [sp, #0x14]
 800171c:      	add	r1, sp, #0x10
;         f(&r, &mut w);
 800171e:      	str	r1, [sp, #0x18]
 8001720:      	add	r1, sp, #0x14
 8001722:      	str	r1, [sp, #0x1c]
 8001724:      	ldr	r0, [sp, #0x18]
 8001726:      	ldr	r1, [sp, #0x1c]
 8001728:      	bl	#-0xfc
 800172c:      	b	#-0x2 <stm32f30x::rcc::ahbenr::<impl stm32f30x::rcc::AHBENR>::modify::h3be2d8df664959fc+0x34>
;         self.register.set(w.bits);
 800172e:      	ldr	r0, [sp, #0x14]
 8001730:      	ldr	r1, [sp, #0xc]
 8001732:      	str	r1, [sp, #0x30]
 8001734:      	str	r0, [sp, #0x34]
;         unsafe { ptr::write_volatile(self.value.get(), value) }
 8001736:      	str	r0, [sp, #0x4]
 8001738:      	mov	r0, r1
 800173a:      	bl	#0x7c2
 800173e:      	ldr	r1, [sp, #0x4]
 8001740:      	bl	#0x4da
;         self.register.set(w.bits);
 8001744:      	b	#-0x2 <stm32f30x::rcc::ahbenr::<impl stm32f30x::rcc::AHBENR>::modify::h3be2d8df664959fc+0x4c>
;     }
 8001746:      	add	sp, #0x38
 8001748:      	pop	{r7, pc}

0800174a <stm32f30x::rcc::ahbrstr::<impl stm32f30x::rcc::AHBRSTR>::modify::h7f90e7662ae1b897>:
;     pub fn modify<F>(&self, f: F)
 800174a:      	push	{r7, lr}
 800174c:      	mov	r7, sp
 800174e:      	sub	sp, #0x38
 8001750:      	str	r0, [sp, #0x20]
 8001752:      	str	r0, [sp, #0x2c]
;         unsafe { ptr::read_volatile(self.value.get()) }
 8001754:      	str	r0, [sp, #0xc]
 8001756:      	bl	#0x7a6
 800175a:      	bl	#0x49a
 800175e:      	mov	r1, r0
;         let bits = self.register.get();
 8001760:      	str	r0, [sp, #0x28]
 8001762:      	str	r1, [sp, #0x8]
 8001764:      	b	#-0x2 <stm32f30x::rcc::ahbrstr::<impl stm32f30x::rcc::AHBRSTR>::modify::h7f90e7662ae1b897+0x1c>
;         let r = R { bits: bits };
 8001766:      	ldr	r0, [sp, #0x8]
 8001768:      	str	r0, [sp, #0x10]
;         let mut w = W { bits: bits };
 800176a:      	str	r0, [sp, #0x14]
 800176c:      	add	r1, sp, #0x10
;         f(&r, &mut w);
 800176e:      	str	r1, [sp, #0x18]
 8001770:      	add	r1, sp, #0x14
 8001772:      	str	r1, [sp, #0x1c]
 8001774:      	ldr	r0, [sp, #0x18]
 8001776:      	ldr	r1, [sp, #0x1c]
 8001778:      	bl	#-0x104
 800177c:      	b	#-0x2 <stm32f30x::rcc::ahbrstr::<impl stm32f30x::rcc::AHBRSTR>::modify::h7f90e7662ae1b897+0x34>
;         self.register.set(w.bits);
 800177e:      	ldr	r0, [sp, #0x14]
 8001780:      	ldr	r1, [sp, #0xc]
 8001782:      	str	r1, [sp, #0x30]
 8001784:      	str	r0, [sp, #0x34]
;         unsafe { ptr::write_volatile(self.value.get(), value) }
 8001786:      	str	r0, [sp, #0x4]
 8001788:      	mov	r0, r1
 800178a:      	bl	#0x772
 800178e:      	ldr	r1, [sp, #0x4]
 8001790:      	bl	#0x48a
;         self.register.set(w.bits);
 8001794:      	b	#-0x2 <stm32f30x::rcc::ahbrstr::<impl stm32f30x::rcc::AHBRSTR>::modify::h7f90e7662ae1b897+0x4c>
;     }
 8001796:      	add	sp, #0x38
 8001798:      	pop	{r7, pc}

0800179a <stm32f30x::rcc::ahbrstr::<impl stm32f30x::rcc::AHBRSTR>::modify::hecf308319c281529>:
;     pub fn modify<F>(&self, f: F)
 800179a:      	push	{r7, lr}
 800179c:      	mov	r7, sp
 800179e:      	sub	sp, #0x38
 80017a0:      	str	r0, [sp, #0x20]
 80017a2:      	str	r0, [sp, #0x2c]
;         unsafe { ptr::read_volatile(self.value.get()) }
 80017a4:      	str	r0, [sp, #0xc]
 80017a6:      	bl	#0x756
 80017aa:      	bl	#0x44a
 80017ae:      	mov	r1, r0
;         let bits = self.register.get();
 80017b0:      	str	r0, [sp, #0x28]
 80017b2:      	str	r1, [sp, #0x8]
 80017b4:      	b	#-0x2 <stm32f30x::rcc::ahbrstr::<impl stm32f30x::rcc::AHBRSTR>::modify::hecf308319c281529+0x1c>
;         let r = R { bits: bits };
 80017b6:      	ldr	r0, [sp, #0x8]
 80017b8:      	str	r0, [sp, #0x10]
;         let mut w = W { bits: bits };
 80017ba:      	str	r0, [sp, #0x14]
 80017bc:      	add	r1, sp, #0x10
;         f(&r, &mut w);
 80017be:      	str	r1, [sp, #0x18]
 80017c0:      	add	r1, sp, #0x14
 80017c2:      	str	r1, [sp, #0x1c]
 80017c4:      	ldr	r0, [sp, #0x18]
 80017c6:      	ldr	r1, [sp, #0x1c]
 80017c8:      	bl	#-0x178
 80017cc:      	b	#-0x2 <stm32f30x::rcc::ahbrstr::<impl stm32f30x::rcc::AHBRSTR>::modify::hecf308319c281529+0x34>
;         self.register.set(w.bits);
 80017ce:      	ldr	r0, [sp, #0x14]
 80017d0:      	ldr	r1, [sp, #0xc]
 80017d2:      	str	r1, [sp, #0x30]
 80017d4:      	str	r0, [sp, #0x34]
;         unsafe { ptr::write_volatile(self.value.get(), value) }
 80017d6:      	str	r0, [sp, #0x4]
 80017d8:      	mov	r0, r1
 80017da:      	bl	#0x722
 80017de:      	ldr	r1, [sp, #0x4]
 80017e0:      	bl	#0x43a
;         self.register.set(w.bits);
 80017e4:      	b	#-0x2 <stm32f30x::rcc::ahbrstr::<impl stm32f30x::rcc::AHBRSTR>::modify::hecf308319c281529+0x4c>
;     }
 80017e6:      	add	sp, #0x38
 80017e8:      	pop	{r7, pc}

080017ea <<stm32f30x::RCC as stm32f30x_hal::rcc::RccExt>::constrain::hf1208146ed05d9c9>:
;     fn constrain(self) -> Rcc {
 80017ea:      	push	{r7, lr}
 80017ec:      	mov	r7, sp
 80017ee:      	sub	sp, #0x44
 80017f0:      	movs	r1, #0x0
;                 hclk: None,
 80017f2:      	str	r1, [sp, #0x20]
;                 pclk1: None,
 80017f4:      	str	r1, [sp, #0x28]
;                 pclk2: None,
 80017f6:      	str	r1, [sp, #0x30]
;                 sysclk: None,
 80017f8:      	str	r1, [sp, #0x38]
;             cfgr: CFGR {
 80017fa:      	ldr	r1, [sp, #0x20]
 80017fc:      	ldr	r2, [sp, #0x24]
 80017fe:      	str	r1, [sp]
 8001800:      	str	r2, [sp, #0x4]
 8001802:      	ldr	r1, [sp, #0x28]
 8001804:      	ldr	r2, [sp, #0x2c]
 8001806:      	str	r1, [sp, #0x8]
 8001808:      	str	r2, [sp, #0xc]
 800180a:      	ldr	r1, [sp, #0x30]
 800180c:      	ldr	r2, [sp, #0x34]
 800180e:      	str	r1, [sp, #0x10]
 8001810:      	str	r2, [sp, #0x14]
 8001812:      	ldr	r1, [sp, #0x38]
 8001814:      	ldr	r2, [sp, #0x3c]
 8001816:      	str	r1, [sp, #0x18]
 8001818:      	str	r2, [sp, #0x1c]
 800181a:      	mov	r1, sp
;         Rcc {
 800181c:      	ldm.w	r1!, {r2, r3, r12, lr}
 8001820:      	stm.w	r0!, {r2, r3, r12, lr}
 8001824:      	ldm.w	r1, {r2, r3, r12, lr}
 8001828:      	stm.w	r0, {r2, r3, r12, lr}
;     }
 800182c:      	add	sp, #0x44
 800182e:      	pop	{r7, pc}

08001830 <_ZN13stm32f30x_hal4gpio5gpioe75_$LT$impl$u20$stm32f30x_hal..gpio..GpioExt$u20$for$u20$stm32f30x..GPIOE$GT$5split17h58681f2215ffdb02E>:
;                 fn split(self, ahb: &mut AHB) -> Parts {
 8001830:      	push	{r7, lr}
 8001832:      	mov	r7, sp
 8001834:      	sub	sp, #0x28
 8001836:      	str	r0, [sp, #0x24]
;                     ahb.enr().modify(|_, w| w.$iopxenr().enabled());
 8001838:      	str	r0, [sp, #0xc]
 800183a:      	bl	#-0x174
 800183e:      	str	r0, [sp, #0x8]
 8001840:      	b	#-0x2 <_ZN13stm32f30x_hal4gpio5gpioe75_$LT$impl$u20$stm32f30x_hal..gpio..GpioExt$u20$for$u20$stm32f30x..GPIOE$GT$5split17h58681f2215ffdb02E+0x12>
 8001842:      	ldr	r0, [sp, #0x8]
 8001844:      	bl	#-0x14e
 8001848:      	b	#-0x2 <_ZN13stm32f30x_hal4gpio5gpioe75_$LT$impl$u20$stm32f30x_hal..gpio..GpioExt$u20$for$u20$stm32f30x..GPIOE$GT$5split17h58681f2215ffdb02E+0x1a>
;                     ahb.rstr().modify(|_, w| w.$iopxrst().set_bit());
 800184a:      	ldr	r0, [sp, #0xc]
 800184c:      	bl	#-0x16e
 8001850:      	str	r0, [sp, #0x4]
 8001852:      	b	#-0x2 <_ZN13stm32f30x_hal4gpio5gpioe75_$LT$impl$u20$stm32f30x_hal..gpio..GpioExt$u20$for$u20$stm32f30x..GPIOE$GT$5split17h58681f2215ffdb02E+0x24>
 8001854:      	ldr	r0, [sp, #0x4]
 8001856:      	bl	#-0xc0
 800185a:      	b	#-0x2 <_ZN13stm32f30x_hal4gpio5gpioe75_$LT$impl$u20$stm32f30x_hal..gpio..GpioExt$u20$for$u20$stm32f30x..GPIOE$GT$5split17h58681f2215ffdb02E+0x2c>
;                     ahb.rstr().modify(|_, w| w.$iopxrst().clear_bit());
 800185c:      	ldr	r0, [sp, #0xc]
 800185e:      	bl	#-0x180
 8001862:      	str	r0, [sp]
 8001864:      	b	#-0x2 <_ZN13stm32f30x_hal4gpio5gpioe75_$LT$impl$u20$stm32f30x_hal..gpio..GpioExt$u20$for$u20$stm32f30x..GPIOE$GT$5split17h58681f2215ffdb02E+0x36>
 8001866:      	ldr	r0, [sp]
 8001868:      	bl	#-0x122
 800186c:      	b	#-0x2 <_ZN13stm32f30x_hal4gpio5gpioe75_$LT$impl$u20$stm32f30x_hal..gpio..GpioExt$u20$for$u20$stm32f30x..GPIOE$GT$5split17h58681f2215ffdb02E+0x3e>
;                 }
 800186e:      	add	sp, #0x28
 8001870:      	pop	{r7, pc}

08001872 <stm32f30x::rcc::ahbenr::W::iopeen::h9e375d0e3d7048b0>:
;     pub fn iopeen(&mut self) -> _IOPEENW {
 8001872:      	sub	sp, #0x8
 8001874:      	str	r0, [sp, #0x4]
;         _IOPEENW { w: self }
 8001876:      	str	r0, [sp]
;     }
 8001878:      	ldr	r0, [sp]
 800187a:      	add	sp, #0x8
 800187c:      	bx	lr

0800187e <stm32f30x::rcc::ahbenr::DMAENW::_bits::hd2229b80f01d0a2d>:
;     pub fn _bits(&self) -> bool {
 800187e:      	sub	sp, #0x8
 8001880:      	str	r0, [sp, #0x4]
;             DMAENW::DISABLED => false,
 8001882:      	ldrb	r0, [r0]
 8001884:      	lsls	r1, r0, #0x1f
 8001886:      	cmp	r1, #0x0
 8001888:      	beq	#0xa <stm32f30x::rcc::ahbenr::DMAENW::_bits::hd2229b80f01d0a2d+0x18>
 800188a:      	b	#-0x2 <stm32f30x::rcc::ahbenr::DMAENW::_bits::hd2229b80f01d0a2d+0xe>
 800188c:      	movs	r0, #0x1
;             DMAENW::ENABLED => true,
 800188e:      	strb.w	r0, [sp, #0x3]
;         match *self {
 8001892:      	b	#0x8 <stm32f30x::rcc::ahbenr::DMAENW::_bits::hd2229b80f01d0a2d+0x20>
 8001894:      	trap
 8001896:      	movs	r0, #0x0
;             DMAENW::DISABLED => false,
 8001898:      	strb.w	r0, [sp, #0x3]
;         match *self {
 800189c:      	b	#-0x2 <stm32f30x::rcc::ahbenr::DMAENW::_bits::hd2229b80f01d0a2d+0x20>
;     }
 800189e:      	ldrb.w	r0, [sp, #0x3]
 80018a2:      	add	sp, #0x8
 80018a4:      	bx	lr

080018a6 <stm32f30x::rcc::ahbenr::_IOPEENW::bit::hf372aade43c719dc>:
;     pub fn bit(self, value: bool) -> &'a mut W {
 80018a6:      	sub	sp, #0x10
 80018a8:      	mov	r2, r1
 80018aa:      	str	r0, [sp, #0x8]
 80018ac:      	strb.w	r1, [sp, #0xf]
;         self.w.bits &= !((MASK as u32) << OFFSET);
 80018b0:      	ldr	r3, [r0]
 80018b2:      	bic	r3, r3, #0x200000
 80018b6:      	str	r3, [r0]
;         self.w.bits |= ((value & MASK) as u32) << OFFSET;
 80018b8:      	lsls	r1, r1, #0x15
 80018ba:      	str	r0, [sp, #0x4]
 80018bc:      	str	r1, [sp]
 80018be:      	b	#-0x2 <stm32f30x::rcc::ahbenr::_IOPEENW::bit::hf372aade43c719dc+0x1a>
 80018c0:      	ldr	r0, [sp, #0x4]
 80018c2:      	ldr	r1, [r0]
 80018c4:      	ldr	r2, [sp]
 80018c6:      	orrs	r1, r2
 80018c8:      	str	r1, [r0]
;     }
 80018ca:      	add	sp, #0x10
 80018cc:      	bx	lr

080018ce <stm32f30x::rcc::ahbenr::_IOPEENW::enabled::h1f55045a47dbcdc0>:
;     pub fn enabled(self) -> &'a mut W {
 80018ce:      	push	{r7, lr}
 80018d0:      	mov	r7, sp
 80018d2:      	sub	sp, #0x10
 80018d4:      	str	r0, [sp, #0xc]
 80018d6:      	movs	r1, #0x1
;         self.variant(DMAENW::ENABLED)
 80018d8:      	strb	r1, [r7, #-5]
 80018dc:      	ldrb	r1, [r7, #-5]
 80018e0:      	bl	#0xa
 80018e4:      	str	r0, [sp, #0x4]
 80018e6:      	b	#-0x2 <stm32f30x::rcc::ahbenr::_IOPEENW::enabled::h1f55045a47dbcdc0+0x1a>
;     }
 80018e8:      	ldr	r0, [sp, #0x4]
 80018ea:      	add	sp, #0x10
 80018ec:      	pop	{r7, pc}

080018ee <stm32f30x::rcc::ahbenr::_IOPEENW::variant::hfaad3acae2089268>:
;     pub fn variant(self, variant: IOPEENW) -> &'a mut W {
 80018ee:      	push	{r7, lr}
 80018f0:      	mov	r7, sp
 80018f2:      	sub	sp, #0x18
 80018f4:      	mov	r2, r1
 80018f6:      	strb	r1, [r7, #-5]
 80018fa:      	str	r0, [sp, #0x14]
 80018fc:      	subs	r1, r7, #0x5
;             self.bit(variant._bits())
 80018fe:      	str	r0, [sp, #0xc]
 8001900:      	mov	r0, r1
 8001902:      	str	r2, [sp, #0x8]
 8001904:      	bl	#-0x8a
 8001908:      	str	r0, [sp, #0x4]
 800190a:      	b	#-0x2 <stm32f30x::rcc::ahbenr::_IOPEENW::variant::hfaad3acae2089268+0x1e>
 800190c:      	ldr	r0, [sp, #0x4]
 800190e:      	and	r1, r0, #0x1
 8001912:      	ldr	r0, [sp, #0xc]
 8001914:      	bl	#-0x72
 8001918:      	str	r0, [sp]
 800191a:      	b	#-0x2 <stm32f30x::rcc::ahbenr::_IOPEENW::variant::hfaad3acae2089268+0x2e>
;     }
 800191c:      	ldr	r0, [sp]
 800191e:      	add	sp, #0x18
 8001920:      	pop	{r7, pc}

08001922 <stm32f30x::rcc::ahbrstr::W::ioperst::hac406b89e8987102>:
;     pub fn ioperst(&mut self) -> _IOPERSTW {
 8001922:      	sub	sp, #0x8
 8001924:      	str	r0, [sp, #0x4]
;         _IOPERSTW { w: self }
 8001926:      	str	r0, [sp]
;     }
 8001928:      	ldr	r0, [sp]
 800192a:      	add	sp, #0x8
 800192c:      	bx	lr

0800192e <stm32f30x::GPIOE::ptr::h070e696d658d1923>:
;     pub fn ptr() -> *const gpioc::RegisterBlock {
 800192e:      	movw	r0, #0x1000
 8001932:      	movt	r0, #0x4800
;     }
 8001936:      	bx	lr

08001938 <stm32f30x::RCC::ptr::h9b5060db1bb05901>:
;     pub fn ptr() -> *const rcc::RegisterBlock {
 8001938:      	movw	r0, #0x1000
 800193c:      	movt	r0, #0x4002
;     }
 8001940:      	bx	lr

08001942 <stm32f30x::Peripherals::steal::h7021775f1fbcb343>:
;     pub unsafe fn steal() -> Self {
 8001942:      	push	{r7, lr}
 8001944:      	mov	r7, sp
 8001946:      	sub	sp, #0x8
;         debug_assert!(!DEVICE_PERIPHERALS);
 8001948:      	movw	r0, #0x0
 800194c:      	movt	r0, #0x2000
 8001950:      	ldrb	r0, [r0]
 8001952:      	lsls	r0, r0, #0x1f
 8001954:      	cmp	r0, #0x0
 8001956:      	bne	#0x10 <stm32f30x::Peripherals::steal::h7021775f1fbcb343+0x28>
 8001958:      	b	#-0x2 <stm32f30x::Peripherals::steal::h7021775f1fbcb343+0x18>
;         DEVICE_PERIPHERALS = true;
 800195a:      	movw	r0, #0x0
 800195e:      	movt	r0, #0x2000
 8001962:      	movs	r1, #0x1
 8001964:      	strb	r1, [r0]
;     }
 8001966:      	add	sp, #0x8
 8001968:      	pop	{r7, pc}
;         debug_assert!(!DEVICE_PERIPHERALS);
 800196a:      	movw	r0, #0x3bf4
 800196e:      	movt	r0, #0x800
 8001972:      	movw	r2, #0x3c70
 8001976:      	movt	r2, #0x800
 800197a:      	movs	r1, #0x25
 800197c:      	bl	#0x786
 8001980:      	trap

08001982 <stm32f30x::rcc::ahbrstr::_IOPERSTW::set_bit::h7baded0ba72d07c5>:
;     pub fn set_bit(self) -> &'a mut W {
 8001982:      	push	{r7, lr}
 8001984:      	mov	r7, sp
 8001986:      	sub	sp, #0x8
 8001988:      	str	r0, [sp, #0x4]
 800198a:      	movs	r1, #0x1
;         self.bit(true)
 800198c:      	bl	#0x22
 8001990:      	str	r0, [sp]
 8001992:      	b	#-0x2 <stm32f30x::rcc::ahbrstr::_IOPERSTW::set_bit::h7baded0ba72d07c5+0x12>
;     }
 8001994:      	ldr	r0, [sp]
 8001996:      	add	sp, #0x8
 8001998:      	pop	{r7, pc}

0800199a <stm32f30x::rcc::ahbrstr::_IOPERSTW::clear_bit::h00a5fd1239cead3b>:
;     pub fn clear_bit(self) -> &'a mut W {
 800199a:      	push	{r7, lr}
 800199c:      	mov	r7, sp
 800199e:      	sub	sp, #0x8
 80019a0:      	str	r0, [sp, #0x4]
 80019a2:      	movs	r1, #0x0
;         self.bit(false)
 80019a4:      	bl	#0xa
 80019a8:      	str	r0, [sp]
 80019aa:      	b	#-0x2 <stm32f30x::rcc::ahbrstr::_IOPERSTW::clear_bit::h00a5fd1239cead3b+0x12>
;     }
 80019ac:      	ldr	r0, [sp]
 80019ae:      	add	sp, #0x8
 80019b0:      	pop	{r7, pc}

080019b2 <stm32f30x::rcc::ahbrstr::_IOPERSTW::bit::h71b0eba8bf4b5beb>:
;     pub fn bit(self, value: bool) -> &'a mut W {
 80019b2:      	sub	sp, #0x10
 80019b4:      	mov	r2, r1
 80019b6:      	str	r0, [sp, #0x8]
 80019b8:      	strb.w	r1, [sp, #0xf]
;         self.w.bits &= !((MASK as u32) << OFFSET);
 80019bc:      	ldr	r3, [r0]
 80019be:      	bic	r3, r3, #0x200000
 80019c2:      	str	r3, [r0]
;         self.w.bits |= ((value & MASK) as u32) << OFFSET;
 80019c4:      	lsls	r1, r1, #0x15
 80019c6:      	str	r0, [sp, #0x4]
 80019c8:      	str	r1, [sp]
 80019ca:      	b	#-0x2 <stm32f30x::rcc::ahbrstr::_IOPERSTW::bit::h71b0eba8bf4b5beb+0x1a>
 80019cc:      	ldr	r0, [sp, #0x4]
 80019ce:      	ldr	r1, [r0]
 80019d0:      	ldr	r2, [sp]
 80019d2:      	orrs	r1, r2
 80019d4:      	str	r1, [r0]
;     }
 80019d6:      	add	sp, #0x10
 80019d8:      	bx	lr

080019da <__cpsid>:
 80019da:      	cpsid i
 80019dc:      	bx	lr

080019de <__cpsie>:
 80019de:      	cpsie i
 80019e0:      	bx	lr

080019e2 <__primask>:
 80019e2:      	mrs	r0, primask
 80019e6:      	bx	lr

080019e8 <ResetTrampoline>:
;             fn trampoline() -> ! {
 80019e8:      	push	{r7, lr}
 80019ea:      	mov	r7, sp
;                 unsafe { main() }
 80019ec:      	bl	#-0x1810
 80019f0:      	trap

080019f2 <WWDG>:
; pub unsafe extern "C" fn DefaultHandler_() -> ! {
 80019f2:      	push	{r7, lr}
 80019f4:      	mov	r7, sp
 80019f6:      	sub	sp, #0x8
;     loop {
 80019f8:      	b	#-0x2 <WWDG+0x8>
 80019fa:      	movs	r0, #0x4
;         atomic::compiler_fence(Ordering::SeqCst);
 80019fc:      	strb	r0, [r7, #-1]
 8001a00:      	ldrb	r0, [r7, #-1]
 8001a04:      	bl	#0x168
 8001a08:      	b	#-0x2 <WWDG+0x18>
;     loop {
 8001a0a:      	b	#-0x14 <WWDG+0x8>

08001a0c <__pre_init>:
; pub unsafe extern "C" fn DefaultPreInit() {}
 8001a0c:      	bx	lr

08001a0e <r0::zero_bss::h3ef1212c156a879a>:
; pub unsafe fn zero_bss<T>(mut sbss: *mut T, ebss: *mut T)
 8001a0e:      	push	{r7, lr}
 8001a10:      	mov	r7, sp
 8001a12:      	sub	sp, #0x20
 8001a14:      	str	r0, [sp, #0x10]
 8001a16:      	str	r1, [sp, #0x14]
 8001a18:      	str	r1, [sp, #0xc]
 8001a1a:      	b	#-0x2 <r0::zero_bss::h3ef1212c156a879a+0xe>
;     while sbss < ebss {
 8001a1c:      	ldr	r0, [sp, #0x10]
 8001a1e:      	ldr	r1, [sp, #0xc]
 8001a20:      	cmp	r0, r1
 8001a22:      	blo	#0x4 <r0::zero_bss::h3ef1212c156a879a+0x1c>
 8001a24:      	b	#-0x2 <r0::zero_bss::h3ef1212c156a879a+0x18>
; }
 8001a26:      	add	sp, #0x20
 8001a28:      	pop	{r7, pc}
;         ptr::write_volatile(sbss, mem::zeroed());
 8001a2a:      	ldr	r0, [sp, #0x10]
;         MaybeUninit::zeroed().assume_init()
 8001a2c:      	str	r0, [sp, #0x8]
 8001a2e:      	bl	#0x80
 8001a32:      	mov	r1, r0
 8001a34:      	str	r0, [sp, #0x18]
 8001a36:      	str	r0, [sp, #0x1c]
;         ptr::write_volatile(sbss, mem::zeroed());
 8001a38:      	str	r1, [sp, #0x4]
 8001a3a:      	b	#-0x2 <r0::zero_bss::h3ef1212c156a879a+0x2e>
 8001a3c:      	ldr	r0, [sp, #0x8]
 8001a3e:      	ldr	r1, [sp, #0x4]
 8001a40:      	bl	#0xc6
 8001a44:      	b	#-0x2 <r0::zero_bss::h3ef1212c156a879a+0x38>
;         sbss = sbss.offset(1);
 8001a46:      	ldr	r0, [sp, #0x10]
 8001a48:      	movs	r1, #0x1
 8001a4a:      	bl	#0xa4
 8001a4e:      	str	r0, [sp]
 8001a50:      	b	#-0x2 <r0::zero_bss::h3ef1212c156a879a+0x44>
 8001a52:      	ldr	r0, [sp]
 8001a54:      	str	r0, [sp, #0x10]
;     while sbss < ebss {
 8001a56:      	b	#-0x3e <r0::zero_bss::h3ef1212c156a879a+0xe>

08001a58 <r0::init_data::h1ca1f2ae47e356bb>:
; pub unsafe fn init_data<T>(
 8001a58:      	push	{r7, lr}
 8001a5a:      	mov	r7, sp
 8001a5c:      	sub	sp, #0x20
 8001a5e:      	str	r0, [sp, #0x14]
 8001a60:      	str	r2, [sp, #0x18]
 8001a62:      	str	r1, [sp, #0x1c]
 8001a64:      	str	r1, [sp, #0x10]
 8001a66:      	b	#-0x2 <r0::init_data::h1ca1f2ae47e356bb+0x10>
;     while sdata < edata {
 8001a68:      	ldr	r0, [sp, #0x14]
 8001a6a:      	ldr	r1, [sp, #0x10]
 8001a6c:      	cmp	r0, r1
 8001a6e:      	blo	#0x4 <r0::init_data::h1ca1f2ae47e356bb+0x1e>
 8001a70:      	b	#-0x2 <r0::init_data::h1ca1f2ae47e356bb+0x1a>
; }
 8001a72:      	add	sp, #0x20
 8001a74:      	pop	{r7, pc}
;         ptr::write(sdata, ptr::read(sidata));
 8001a76:      	ldr	r0, [sp, #0x14]
 8001a78:      	ldr	r1, [sp, #0x18]
 8001a7a:      	str	r0, [sp, #0xc]
 8001a7c:      	mov	r0, r1
 8001a7e:      	bl	#0x96
 8001a82:      	str	r0, [sp, #0x8]
 8001a84:      	b	#-0x2 <r0::init_data::h1ca1f2ae47e356bb+0x2e>
 8001a86:      	ldr	r0, [sp, #0xc]
 8001a88:      	ldr	r1, [sp, #0x8]
 8001a8a:      	bl	#0xbc
 8001a8e:      	b	#-0x2 <r0::init_data::h1ca1f2ae47e356bb+0x38>
;         sdata = sdata.offset(1);
 8001a90:      	ldr	r0, [sp, #0x14]
 8001a92:      	movs	r1, #0x1
 8001a94:      	bl	#0x5a
 8001a98:      	str	r0, [sp, #0x4]
 8001a9a:      	b	#-0x2 <r0::init_data::h1ca1f2ae47e356bb+0x44>
 8001a9c:      	ldr	r0, [sp, #0x4]
 8001a9e:      	str	r0, [sp, #0x14]
;         sidata = sidata.offset(1);
 8001aa0:      	ldr	r0, [sp, #0x18]
 8001aa2:      	movs	r1, #0x1
 8001aa4:      	bl	#0xae
 8001aa8:      	str	r0, [sp]
 8001aaa:      	b	#-0x2 <r0::init_data::h1ca1f2ae47e356bb+0x54>
 8001aac:      	ldr	r0, [sp]
 8001aae:      	str	r0, [sp, #0x18]
;     while sdata < edata {
 8001ab0:      	b	#-0x4c <r0::init_data::h1ca1f2ae47e356bb+0x10>

08001ab2 <core::mem::maybe_uninit::MaybeUninit<T>::zeroed::hbea05eb4a1e26879>:
;     pub fn zeroed() -> MaybeUninit<T> {
 8001ab2:      	push	{r7, lr}
 8001ab4:      	mov	r7, sp
 8001ab6:      	sub	sp, #0x10
;     }
 8001ab8:      	ldr	r0, [sp, #0x8]
;         let mut u = MaybeUninit::<T>::uninit();
 8001aba:      	str	r0, [sp, #0x4]
 8001abc:      	b	#-0x2 <core::mem::maybe_uninit::MaybeUninit<T>::zeroed::hbea05eb4a1e26879+0xc>
 8001abe:      	add	r0, sp, #0x4
 8001ac0:      	str	r0, [sp, #0xc]
;             u.as_mut_ptr().write_bytes(0u8, 1);
 8001ac2:      	b	#-0x2 <core::mem::maybe_uninit::MaybeUninit<T>::zeroed::hbea05eb4a1e26879+0x12>
 8001ac4:      	add	r0, sp, #0x4
 8001ac6:      	movs	r1, #0x0
 8001ac8:      	movs	r2, #0x1
;             u.as_mut_ptr().write_bytes(0u8, 1);
 8001aca:      	bl	#0x8
 8001ace:      	b	#-0x2 <core::mem::maybe_uninit::MaybeUninit<T>::zeroed::hbea05eb4a1e26879+0x1e>
;     }
 8001ad0:      	ldr	r0, [sp, #0x4]
 8001ad2:      	add	sp, #0x10
 8001ad4:      	pop	{r7, pc}

08001ad6 <core::ptr::mut_ptr::<impl *mut T>::write_bytes::h25b7bfeea280707d>:
;     pub unsafe fn write_bytes(self, val: u8, count: usize)
 8001ad6:      	push	{r7, lr}
 8001ad8:      	mov	r7, sp
 8001ada:      	sub	sp, #0x10
 8001adc:      	mov	r3, r1
 8001ade:      	str	r0, [sp, #0x4]
 8001ae0:      	strb	r1, [r7, #-5]
 8001ae4:      	str	r2, [sp, #0xc]
;         unsafe { write_bytes(self, val, count) }
 8001ae6:      	str	r3, [sp]
 8001ae8:      	bl	#0xc8
 8001aec:      	b	#-0x2 <core::ptr::mut_ptr::<impl *mut T>::write_bytes::h25b7bfeea280707d+0x18>
;     }
 8001aee:      	add	sp, #0x10
 8001af0:      	pop	{r7, pc}

08001af2 <core::ptr::mut_ptr::<impl *mut T>::offset::hb941cd744786bba4>:
;     pub const unsafe fn offset(self, count: isize) -> *mut T
 8001af2:      	sub	sp, #0x10
 8001af4:      	str	r0, [sp, #0x4]
 8001af6:      	str	r1, [sp, #0x8]
;         unsafe { intrinsics::offset(self, count) as *mut T }
 8001af8:      	add.w	r0, r0, r1, lsl #2
 8001afc:      	str	r0, [sp, #0xc]
 8001afe:      	ldr	r0, [sp, #0xc]
 8001b00:      	str	r0, [sp]
 8001b02:      	b	#-0x2 <core::ptr::mut_ptr::<impl *mut T>::offset::hb941cd744786bba4+0x12>
;     }
 8001b04:      	ldr	r0, [sp]
 8001b06:      	add	sp, #0x10
 8001b08:      	bx	lr

08001b0a <core::ptr::write_volatile::h6d5076a96c5af0ef>:
; pub unsafe fn write_volatile<T>(dst: *mut T, src: T) {
 8001b0a:      	sub	sp, #0x8
 8001b0c:      	str	r0, [sp]
 8001b0e:      	str	r1, [sp, #0x4]
;         intrinsics::volatile_store(dst, src);
 8001b10:      	str	r1, [r0]
 8001b12:      	b	#-0x2 <core::ptr::write_volatile::h6d5076a96c5af0ef+0xa>
; }
 8001b14:      	add	sp, #0x8
 8001b16:      	bx	lr

08001b18 <core::ptr::read::h16082a37d391c21b>:
; pub unsafe fn read<T>(src: *const T) -> T {
 8001b18:      	push	{r7, lr}
 8001b1a:      	mov	r7, sp
 8001b1c:      	sub	sp, #0x20
 8001b1e:      	str	r0, [sp, #0xc]
;     }
 8001b20:      	ldr	r1, [sp, #0x10]
;     let mut tmp = MaybeUninit::<T>::uninit();
 8001b22:      	str	r1, [sp, #0x8]
 8001b24:      	str	r0, [sp, #0x4]
 8001b26:      	b	#-0x2 <core::ptr::read::h16082a37d391c21b+0x10>
 8001b28:      	add	r0, sp, #0x8
 8001b2a:      	str	r0, [sp, #0x1c]
;         copy_nonoverlapping(src, tmp.as_mut_ptr(), 1);
 8001b2c:      	b	#-0x2 <core::ptr::read::h16082a37d391c21b+0x16>
 8001b2e:      	add	r1, sp, #0x8
 8001b30:      	movs	r2, #0x1
;         copy_nonoverlapping(src, tmp.as_mut_ptr(), 1);
 8001b32:      	ldr	r0, [sp, #0x4]
 8001b34:      	bl	#0xa2
 8001b38:      	b	#-0x2 <core::ptr::read::h16082a37d391c21b+0x22>
;         tmp.assume_init()
 8001b3a:      	ldr	r0, [sp, #0x8]
 8001b3c:      	str	r0, [sp, #0x14]
 8001b3e:      	str	r0, [sp, #0x18]
 8001b40:      	str	r0, [sp]
 8001b42:      	b	#-0x2 <core::ptr::read::h16082a37d391c21b+0x2c>
; }
 8001b44:      	ldr	r0, [sp]
 8001b46:      	add	sp, #0x20
 8001b48:      	pop	{r7, pc}

08001b4a <core::ptr::write::h38e6ad43e0b38c80>:
; pub unsafe fn write<T>(dst: *mut T, src: T) {
 8001b4a:      	sub	sp, #0xc
 8001b4c:      	str	r0, [sp, #0x4]
 8001b4e:      	str	r1, [sp, #0x8]
;     unsafe { intrinsics::move_val_init(&mut *dst, src) }
 8001b50:      	str	r1, [r0]
; }
 8001b52:      	add	sp, #0xc
 8001b54:      	bx	lr

08001b56 <core::ptr::const_ptr::<impl *const T>::offset::h798ca2c7f163f5e5>:
;     pub const unsafe fn offset(self, count: isize) -> *const T
 8001b56:      	sub	sp, #0x10
 8001b58:      	str	r0, [sp, #0x4]
 8001b5a:      	str	r1, [sp, #0x8]
;         unsafe { intrinsics::offset(self, count) }
 8001b5c:      	add.w	r0, r0, r1, lsl #2
 8001b60:      	str	r0, [sp, #0xc]
 8001b62:      	ldr	r0, [sp, #0xc]
 8001b64:      	str	r0, [sp]
 8001b66:      	b	#-0x2 <core::ptr::const_ptr::<impl *const T>::offset::h798ca2c7f163f5e5+0x12>
;     }
 8001b68:      	ldr	r0, [sp]
 8001b6a:      	add	sp, #0x10
 8001b6c:      	bx	lr
 8001b6e:      	bmi	#-0x58 <core::ptr::read::h16082a37d391c21b+0x2>

08001b70 <core::sync::atomic::compiler_fence::hde43f24fbc248075>:
; pub fn compiler_fence(order: Ordering) {
 8001b70:      	push	{r7, lr}
 8001b72:      	mov	r7, sp
 8001b74:      	sub	sp, #0x10
 8001b76:      	mov	r1, r0
 8001b78:      	strb	r0, [r7, #-5]
;             Acquire => intrinsics::atomic_singlethreadfence_acq(),
 8001b7c:      	ldrb	r0, [r7, #-5]
 8001b80:      	str	r0, [sp, #0x4]
 8001b82:      	ldr	r1, [sp, #0x4]
 8001b84:      	tbb	[pc, r1]

08001b88 <$d.1>:
 8001b88:	03 11 10 12	.word	0x12101103
 8001b8c:	13 00		.short	0x0013

08001b8e <$t.2>:
;             Relaxed => panic!("there is no such thing as a relaxed compiler fence"),
 8001b8e:      	movw	r0, #0x3c80
 8001b92:      	movt	r0, #0x800
 8001b96:      	movw	r2, #0x3d28
 8001b9a:      	movt	r2, #0x800
 8001b9e:      	movs	r1, #0x32
 8001ba0:      	bl	#0x562
 8001ba4:      	trap
;         match order {
 8001ba6:      	trap
;             Acquire => intrinsics::atomic_singlethreadfence_acq(),
 8001ba8:      	b	#0x4 <$t.2+0x22>
;             Release => intrinsics::atomic_singlethreadfence_rel(),
 8001baa:      	b	#0x2 <$t.2+0x22>
;             AcqRel => intrinsics::atomic_singlethreadfence_acqrel(),
 8001bac:      	b	#0x0 <$t.2+0x22>
;             SeqCst => intrinsics::atomic_singlethreadfence(),
 8001bae:      	b	#-0x2 <$t.2+0x22>
; }
 8001bb0:      	add	sp, #0x10
 8001bb2:      	pop	{r7, pc}

08001bb4 <core::intrinsics::write_bytes::h42d09575651dff70>:
; pub unsafe fn write_bytes<T>(dst: *mut T, val: u8, count: usize) {
 8001bb4:      	push	{r7, lr}
 8001bb6:      	mov	r7, sp
 8001bb8:      	sub	sp, #0x18
 8001bba:      	mov	r3, r1
 8001bbc:      	str	r0, [sp, #0xc]
 8001bbe:      	strb	r1, [r7, #-5]
 8001bc2:      	str	r2, [sp, #0x14]
;     unsafe { write_bytes(dst, val, count) }
 8001bc4:      	lsls	r2, r2, #0x2
 8001bc6:      	uxtb	r1, r1
 8001bc8:      	str	r1, [sp, #0x8]
 8001bca:      	mov	r1, r2
 8001bcc:      	ldr	r2, [sp, #0x8]
 8001bce:      	str	r3, [sp, #0x4]
 8001bd0:      	bl	#0x1e1e
 8001bd4:      	b	#-0x2 <core::intrinsics::write_bytes::h42d09575651dff70+0x22>
; }
 8001bd6:      	add	sp, #0x18
 8001bd8:      	pop	{r7, pc}

08001bda <core::intrinsics::copy_nonoverlapping::h08229a40922d3327>:
; pub unsafe fn copy_nonoverlapping<T>(src: *const T, dst: *mut T, count: usize) {
 8001bda:      	push	{r7, lr}
 8001bdc:      	mov	r7, sp
 8001bde:      	sub	sp, #0x10
 8001be0:      	str	r0, [sp, #0x4]
 8001be2:      	str	r1, [sp, #0x8]
 8001be4:      	str	r2, [sp, #0xc]
;     unsafe { copy_nonoverlapping(src, dst, count) }
 8001be6:      	lsls	r2, r2, #0x2
 8001be8:      	str	r0, [sp]
 8001bea:      	mov	r0, r1
 8001bec:      	ldr	r1, [sp]
 8001bee:      	bl	#0x1d24
 8001bf2:      	b	#-0x2 <core::intrinsics::copy_nonoverlapping::h08229a40922d3327+0x1a>
; }
 8001bf4:      	add	sp, #0x10
 8001bf6:      	pop	{r7, pc}

08001bf8 <core::ptr::read_volatile::h78bc5bb053416b53>:
; pub unsafe fn read_volatile<T>(src: *const T) -> T {
 8001bf8:      	sub	sp, #0xc
 8001bfa:      	str	r0, [sp, #0x4]
;     unsafe { intrinsics::volatile_load(src) }
 8001bfc:      	ldr	r0, [r0]
 8001bfe:      	str	r0, [sp, #0x8]
 8001c00:      	ldr	r0, [sp, #0x8]
 8001c02:      	str	r0, [sp]
 8001c04:      	b	#-0x2 <core::ptr::read_volatile::h78bc5bb053416b53+0xe>
; }
 8001c06:      	ldr	r0, [sp]
 8001c08:      	add	sp, #0xc
 8001c0a:      	bx	lr

08001c0c <core::ptr::write_volatile::h35824f7492d05a3d>:
; pub unsafe fn write_volatile<T>(dst: *mut T, src: T) {
 8001c0c:      	sub	sp, #0x8
 8001c0e:      	mov	r2, r1
 8001c10:      	str	r0, [sp]
 8001c12:      	strh.w	r1, [sp, #0x6]
;         intrinsics::volatile_store(dst, src);
 8001c16:      	strh	r1, [r0]
 8001c18:      	b	#-0x2 <core::ptr::write_volatile::h35824f7492d05a3d+0xe>
; }
 8001c1a:      	add	sp, #0x8
 8001c1c:      	bx	lr

08001c1e <core::ptr::write_volatile::h77160209354b68c5>:
; pub unsafe fn write_volatile<T>(dst: *mut T, src: T) {
 8001c1e:      	sub	sp, #0x8
 8001c20:      	str	r0, [sp]
 8001c22:      	str	r1, [sp, #0x4]
;         intrinsics::volatile_store(dst, src);
 8001c24:      	str	r1, [r0]
 8001c26:      	b	#-0x2 <core::ptr::write_volatile::h77160209354b68c5+0xa>
; }
 8001c28:      	add	sp, #0x8
 8001c2a:      	bx	lr

08001c2c <core::ptr::write_volatile::h99cbbe367629b37d>:
; pub unsafe fn write_volatile<T>(dst: *mut T, src: T) {
 8001c2c:      	sub	sp, #0x8
 8001c2e:      	mov	r2, r1
 8001c30:      	str	r0, [sp]
 8001c32:      	strb.w	r1, [sp, #0x7]
;         intrinsics::volatile_store(dst, src);
 8001c36:      	strb	r1, [r0]
 8001c38:      	b	#-0x2 <core::ptr::write_volatile::h99cbbe367629b37d+0xe>
; }
 8001c3a:      	add	sp, #0x8
 8001c3c:      	bx	lr

08001c3e <core::ptr::swap_nonoverlapping::h8f753b5b581eb60b>:
; pub unsafe fn swap_nonoverlapping<T>(x: *mut T, y: *mut T, count: usize) {
 8001c3e:      	push	{r7, lr}
 8001c40:      	mov	r7, sp
 8001c42:      	sub	sp, #0x28
 8001c44:      	str	r0, [sp, #0x10]
 8001c46:      	str	r1, [sp, #0x14]
 8001c48:      	str	r2, [sp, #0x18]
;     let x = x as *mut u8;
 8001c4a:      	mov	r3, r0
 8001c4c:      	str	r0, [sp, #0x1c]
;     let y = y as *mut u8;
 8001c4e:      	mov	r0, r1
 8001c50:      	str	r1, [sp, #0x20]
;     let len = mem::size_of::<T>() * count;
 8001c52:      	str	r2, [sp, #0xc]
 8001c54:      	str	r3, [sp, #0x8]
 8001c56:      	str	r0, [sp, #0x4]
 8001c58:      	b	#-0x2 <core::ptr::swap_nonoverlapping::h8f753b5b581eb60b+0x1c>
 8001c5a:      	ldr	r0, [sp, #0xc]
 8001c5c:      	lsls	r1, r0, #0x2
 8001c5e:      	str	r1, [sp, #0x24]
;     unsafe { swap_nonoverlapping_bytes(x, y, len) }
 8001c60:      	ldr	r0, [sp, #0x8]
 8001c62:      	ldr	r2, [sp, #0x4]
 8001c64:      	str	r1, [sp]
 8001c66:      	mov	r1, r2
 8001c68:      	ldr	r2, [sp]
 8001c6a:      	bl	#0x8a
 8001c6e:      	b	#-0x2 <core::ptr::swap_nonoverlapping::h8f753b5b581eb60b+0x32>
; }
 8001c70:      	add	sp, #0x28
 8001c72:      	pop	{r7, pc}

08001c74 <core::ptr::slice_from_raw_parts::h56273ebfe3255a08>:
; pub const fn slice_from_raw_parts<T>(data: *const T, len: usize) -> *const [T] {
 8001c74:      	sub	sp, #0x18
 8001c76:      	str	r0, [sp, #0x10]
 8001c78:      	str	r1, [sp, #0x14]
;     unsafe { Repr { raw: FatPtr { data, len } }.rust }
 8001c7a:      	str	r0, [sp, #0x8]
 8001c7c:      	str	r1, [sp, #0xc]
 8001c7e:      	ldr	r0, [sp, #0x8]
 8001c80:      	ldr	r1, [sp, #0xc]
 8001c82:      	str	r0, [sp]
 8001c84:      	str	r1, [sp, #0x4]
 8001c86:      	ldr	r0, [sp]
 8001c88:      	ldr	r1, [sp, #0x4]
; }
 8001c8a:      	add	sp, #0x18
 8001c8c:      	bx	lr

08001c8e <core::ptr::slice_from_raw_parts::hd7a58ff1e951a114>:
; pub const fn slice_from_raw_parts<T>(data: *const T, len: usize) -> *const [T] {
 8001c8e:      	sub	sp, #0x18
 8001c90:      	str	r0, [sp, #0x10]
 8001c92:      	str	r1, [sp, #0x14]
;     unsafe { Repr { raw: FatPtr { data, len } }.rust }
 8001c94:      	str	r0, [sp, #0x8]
 8001c96:      	str	r1, [sp, #0xc]
 8001c98:      	ldr	r0, [sp, #0x8]
 8001c9a:      	ldr	r1, [sp, #0xc]
 8001c9c:      	str	r0, [sp]
 8001c9e:      	str	r1, [sp, #0x4]
 8001ca0:      	ldr	r0, [sp]
 8001ca2:      	ldr	r1, [sp, #0x4]
; }
 8001ca4:      	add	sp, #0x18
 8001ca6:      	bx	lr

08001ca8 <core::ptr::swap_nonoverlapping_one::hda76457260815c7a>:
; pub(crate) unsafe fn swap_nonoverlapping_one<T>(x: *mut T, y: *mut T) {
 8001ca8:      	push	{r7, lr}
 8001caa:      	mov	r7, sp
 8001cac:      	sub	sp, #0x20
 8001cae:      	str	r0, [sp, #0x14]
 8001cb0:      	str	r1, [sp, #0x18]
;     if mem::size_of::<T>() < 32 {
 8001cb2:      	str	r1, [sp, #0xc]
 8001cb4:      	str	r0, [sp, #0x8]
 8001cb6:      	b	#-0x2 <core::ptr::swap_nonoverlapping_one::hda76457260815c7a+0x10>
 8001cb8:      	movs	r0, #0x1
;     if mem::size_of::<T>() < 32 {
 8001cba:      	cmp	r0, #0x0
 8001cbc:      	bne	#0xc <core::ptr::swap_nonoverlapping_one::hda76457260815c7a+0x24>
 8001cbe:      	b	#-0x2 <core::ptr::swap_nonoverlapping_one::hda76457260815c7a+0x18>
 8001cc0:      	movs	r2, #0x1
;         unsafe { swap_nonoverlapping(x, y, 1) };
 8001cc2:      	ldr	r0, [sp, #0x8]
 8001cc4:      	ldr	r1, [sp, #0xc]
 8001cc6:      	bl	#-0x8c
 8001cca:      	b	#0x24 <core::ptr::swap_nonoverlapping_one::hda76457260815c7a+0x4a>
;             let z = read(x);
 8001ccc:      	ldr	r0, [sp, #0x8]
 8001cce:      	bl	#0x168
 8001cd2:      	mov	r1, r0
 8001cd4:      	str	r0, [sp, #0x1c]
 8001cd6:      	str	r1, [sp, #0x4]
 8001cd8:      	b	#-0x2 <core::ptr::swap_nonoverlapping_one::hda76457260815c7a+0x32>
 8001cda:      	movs	r2, #0x1
;             copy_nonoverlapping(y, x, 1);
 8001cdc:      	ldr	r0, [sp, #0xc]
 8001cde:      	ldr	r1, [sp, #0x8]
 8001ce0:      	bl	#0x2b8
 8001ce4:      	b	#-0x2 <core::ptr::swap_nonoverlapping_one::hda76457260815c7a+0x3e>
;             write(y, z);
 8001ce6:      	ldr	r0, [sp, #0xc]
 8001ce8:      	ldr	r1, [sp, #0x4]
 8001cea:      	bl	#0x1c0
 8001cee:      	b	#-0x2 <core::ptr::swap_nonoverlapping_one::hda76457260815c7a+0x48>
;     if mem::size_of::<T>() < 32 {
 8001cf0:      	b	#0x0 <core::ptr::swap_nonoverlapping_one::hda76457260815c7a+0x4c>
 8001cf2:      	b	#-0x2 <core::ptr::swap_nonoverlapping_one::hda76457260815c7a+0x4c>
; }
 8001cf4:      	add	sp, #0x20
 8001cf6:      	pop	{r7, pc}

08001cf8 <core::ptr::swap_nonoverlapping_bytes::ha65f62fde32e2c87>:
; unsafe fn swap_nonoverlapping_bytes(x: *mut u8, y: *mut u8, len: usize) {
 8001cf8:      	push	{r4, r6, r7, lr}
 8001cfa:      	add	r7, sp, #0x8
 8001cfc:      	sub	sp, #0xd0
 8001cfe:      	mov	r4, sp
 8001d00:      	bfc	r4, #0, #5
 8001d04:      	mov	sp, r4
 8001d06:      	str	r0, [sp, #0x9c]
 8001d08:      	str	r1, [sp, #0xa0]
 8001d0a:      	str	r2, [sp, #0xa4]
 8001d0c:      	movs	r3, #0x20
;     let block_size = mem::size_of::<Block>();
 8001d0e:      	str	r3, [sp, #0xa8]
 8001d10:      	str	r2, [sp, #0x34]
 8001d12:      	str	r1, [sp, #0x30]
 8001d14:      	str	r0, [sp, #0x2c]
 8001d16:      	b	#-0x2 <core::ptr::swap_nonoverlapping_bytes::ha65f62fde32e2c87+0x20>
 8001d18:      	movs	r0, #0x0
;     let mut i = 0;
 8001d1a:      	str	r0, [sp, #0x3c]
;     while i + block_size <= len {
 8001d1c:      	b	#-0x2 <core::ptr::swap_nonoverlapping_bytes::ha65f62fde32e2c87+0x26>
 8001d1e:      	ldr	r0, [sp, #0x3c]
 8001d20:      	adds	r0, #0x20
 8001d22:      	ldr	r1, [sp, #0x34]
 8001d24:      	cmp	r0, r1
 8001d26:      	bls	#0xa <core::ptr::swap_nonoverlapping_bytes::ha65f62fde32e2c87+0x3c>
 8001d28:      	b	#-0x2 <core::ptr::swap_nonoverlapping_bytes::ha65f62fde32e2c87+0x32>
;     if i < len {
 8001d2a:      	ldr	r0, [sp, #0x3c]
 8001d2c:      	ldr	r1, [sp, #0x34]
 8001d2e:      	cmp	r0, r1
 8001d30:      	blo	#0x66 <core::ptr::swap_nonoverlapping_bytes::ha65f62fde32e2c87+0xa2>
 8001d32:      	b	#0x62 <core::ptr::swap_nonoverlapping_bytes::ha65f62fde32e2c87+0xa0>
;         let mut t = mem::MaybeUninit::<Block>::uninit();
 8001d34:      	b	#-0x2 <core::ptr::swap_nonoverlapping_bytes::ha65f62fde32e2c87+0x3e>
 8001d36:      	add	r0, sp, #0x40
 8001d38:      	str	r0, [sp, #0xcc]
;         let t = t.as_mut_ptr() as *mut u8;
 8001d3a:      	b	#-0x2 <core::ptr::swap_nonoverlapping_bytes::ha65f62fde32e2c87+0x44>
 8001d3c:      	add	r0, sp, #0x40
;         let t = t.as_mut_ptr() as *mut u8;
 8001d3e:      	mov	r1, r0
 8001d40:      	str	r0, [sp, #0xac]
;             let x = x.add(i);
 8001d42:      	ldr	r0, [sp, #0x3c]
 8001d44:      	ldr	r2, [sp, #0x2c]
 8001d46:      	str	r0, [sp, #0x28]
 8001d48:      	mov	r0, r2
 8001d4a:      	ldr	r3, [sp, #0x28]
 8001d4c:      	str	r1, [sp, #0x24]
 8001d4e:      	mov	r1, r3
 8001d50:      	bl	#0x1c8
 8001d54:      	mov	r1, r0
 8001d56:      	str	r0, [sp, #0xb0]
 8001d58:      	str	r1, [sp, #0x20]
 8001d5a:      	b	#-0x2 <core::ptr::swap_nonoverlapping_bytes::ha65f62fde32e2c87+0x64>
;             let y = y.add(i);
 8001d5c:      	ldr	r1, [sp, #0x3c]
 8001d5e:      	ldr	r0, [sp, #0x30]
 8001d60:      	bl	#0x1b8
 8001d64:      	mov	r1, r0
 8001d66:      	str	r0, [sp, #0xb4]
 8001d68:      	str	r1, [sp, #0x1c]
 8001d6a:      	b	#-0x2 <core::ptr::swap_nonoverlapping_bytes::ha65f62fde32e2c87+0x74>
 8001d6c:      	movs	r2, #0x20
;             copy_nonoverlapping(x, t, block_size);
 8001d6e:      	ldr	r0, [sp, #0x20]
 8001d70:      	ldr	r1, [sp, #0x24]
 8001d72:      	bl	#0x244
 8001d76:      	b	#-0x2 <core::ptr::swap_nonoverlapping_bytes::ha65f62fde32e2c87+0x80>
 8001d78:      	movs	r2, #0x20
;             copy_nonoverlapping(y, x, block_size);
 8001d7a:      	ldr	r0, [sp, #0x1c]
 8001d7c:      	ldr	r1, [sp, #0x20]
 8001d7e:      	bl	#0x238
 8001d82:      	b	#-0x2 <core::ptr::swap_nonoverlapping_bytes::ha65f62fde32e2c87+0x8c>
 8001d84:      	movs	r2, #0x20
;             copy_nonoverlapping(t, y, block_size);
 8001d86:      	ldr	r0, [sp, #0x24]
 8001d88:      	ldr	r1, [sp, #0x1c]
 8001d8a:      	bl	#0x22c
 8001d8e:      	b	#-0x2 <core::ptr::swap_nonoverlapping_bytes::ha65f62fde32e2c87+0x98>
;         i += block_size;
 8001d90:      	ldr	r0, [sp, #0x3c]
 8001d92:      	adds	r0, #0x20
 8001d94:      	str	r0, [sp, #0x3c]
;     while i + block_size <= len {
 8001d96:      	b	#-0x7c <core::ptr::swap_nonoverlapping_bytes::ha65f62fde32e2c87+0x26>
;     if i < len {
 8001d98:      	b	#0x64 <core::ptr::swap_nonoverlapping_bytes::ha65f62fde32e2c87+0x108>
;         let mut t = mem::MaybeUninit::<UnalignedBlock>::uninit();
 8001d9a:      	b	#-0x2 <core::ptr::swap_nonoverlapping_bytes::ha65f62fde32e2c87+0xa4>
;         let rem = len - i;
 8001d9c:      	ldr	r0, [sp, #0x3c]
 8001d9e:      	ldr	r1, [sp, #0x34]
 8001da0:      	subs	r0, r1, r0
 8001da2:      	mov	r2, r0
 8001da4:      	str	r0, [sp, #0xb8]
 8001da6:      	add	r0, sp, #0x78
 8001da8:      	str	r0, [sp, #0xc8]
;         let t = t.as_mut_ptr() as *mut u8;
 8001daa:      	str	r2, [sp, #0x18]
 8001dac:      	str	r0, [sp, #0x14]
 8001dae:      	b	#-0x2 <core::ptr::swap_nonoverlapping_bytes::ha65f62fde32e2c87+0xb8>
 8001db0:      	ldr	r0, [sp, #0x14]
 8001db2:      	ldr	r1, [sp, #0x14]
 8001db4:      	str	r1, [sp, #0xbc]
;             let x = x.add(i);
 8001db6:      	ldr	r1, [sp, #0x3c]
 8001db8:      	ldr	r2, [sp, #0x2c]
 8001dba:      	str	r0, [sp, #0x10]
 8001dbc:      	mov	r0, r2
 8001dbe:      	bl	#0x15a
 8001dc2:      	mov	r1, r0
 8001dc4:      	str	r0, [sp, #0xc0]
 8001dc6:      	str	r1, [sp, #0xc]
 8001dc8:      	b	#-0x2 <core::ptr::swap_nonoverlapping_bytes::ha65f62fde32e2c87+0xd2>
;             let y = y.add(i);
 8001dca:      	ldr	r1, [sp, #0x3c]
 8001dcc:      	ldr	r0, [sp, #0x30]
 8001dce:      	bl	#0x14a
 8001dd2:      	mov	r1, r0
 8001dd4:      	str	r0, [sp, #0xc4]
 8001dd6:      	str	r1, [sp, #0x8]
 8001dd8:      	b	#-0x2 <core::ptr::swap_nonoverlapping_bytes::ha65f62fde32e2c87+0xe2>
;             copy_nonoverlapping(x, t, rem);
 8001dda:      	ldr	r0, [sp, #0xc]
 8001ddc:      	ldr	r1, [sp, #0x10]
 8001dde:      	ldr	r2, [sp, #0x18]
 8001de0:      	bl	#0x1d6
 8001de4:      	b	#-0x2 <core::ptr::swap_nonoverlapping_bytes::ha65f62fde32e2c87+0xee>
;             copy_nonoverlapping(y, x, rem);
 8001de6:      	ldr	r0, [sp, #0x8]
 8001de8:      	ldr	r1, [sp, #0xc]
 8001dea:      	ldr	r2, [sp, #0x18]
 8001dec:      	bl	#0x1ca
 8001df0:      	b	#-0x2 <core::ptr::swap_nonoverlapping_bytes::ha65f62fde32e2c87+0xfa>
;             copy_nonoverlapping(t, y, rem);
 8001df2:      	ldr	r0, [sp, #0x10]
 8001df4:      	ldr	r1, [sp, #0x8]
 8001df6:      	ldr	r2, [sp, #0x18]
 8001df8:      	bl	#0x1be
 8001dfc:      	b	#-0x2 <core::ptr::swap_nonoverlapping_bytes::ha65f62fde32e2c87+0x106>
;     if i < len {
 8001dfe:      	b	#-0x2 <core::ptr::swap_nonoverlapping_bytes::ha65f62fde32e2c87+0x108>
; }
 8001e00:      	sub.w	r4, r7, #0x8
 8001e04:      	mov	sp, r4
 8001e06:      	pop	{r4, r6, r7, pc}

08001e08 <core::ptr::read::h078fa3ef1093ff57>:
; pub unsafe fn read<T>(src: *const T) -> T {
 8001e08:      	push	{r7, lr}
 8001e0a:      	mov	r7, sp
 8001e0c:      	sub	sp, #0x20
 8001e0e:      	str	r0, [sp, #0xc]
;     }
 8001e10:      	ldr	r1, [sp, #0x10]
;     let mut tmp = MaybeUninit::<T>::uninit();
 8001e12:      	str	r1, [sp, #0x8]
 8001e14:      	str	r0, [sp, #0x4]
 8001e16:      	b	#-0x2 <core::ptr::read::h078fa3ef1093ff57+0x10>
 8001e18:      	add	r0, sp, #0x8
 8001e1a:      	str	r0, [sp, #0x1c]
;         copy_nonoverlapping(src, tmp.as_mut_ptr(), 1);
 8001e1c:      	b	#-0x2 <core::ptr::read::h078fa3ef1093ff57+0x16>
 8001e1e:      	add	r1, sp, #0x8
 8001e20:      	movs	r2, #0x1
;         copy_nonoverlapping(src, tmp.as_mut_ptr(), 1);
 8001e22:      	ldr	r0, [sp, #0x4]
 8001e24:      	bl	#0x156
 8001e28:      	b	#-0x2 <core::ptr::read::h078fa3ef1093ff57+0x22>
;         tmp.assume_init()
 8001e2a:      	ldr	r0, [sp, #0x8]
 8001e2c:      	str	r0, [sp, #0x14]
 8001e2e:      	str	r0, [sp, #0x18]
 8001e30:      	str	r0, [sp]
 8001e32:      	b	#-0x2 <core::ptr::read::h078fa3ef1093ff57+0x2c>
; }
 8001e34:      	ldr	r0, [sp]
 8001e36:      	add	sp, #0x20
 8001e38:      	pop	{r7, pc}

08001e3a <core::ptr::read::h1bd95e30bf7d9802>:
; pub unsafe fn read<T>(src: *const T) -> T {
 8001e3a:      	push	{r7, lr}
 8001e3c:      	mov	r7, sp
 8001e3e:      	sub	sp, #0x20
 8001e40:      	str	r0, [sp, #0xc]
;     }
 8001e42:      	ldr	r1, [sp, #0x10]
;     let mut tmp = MaybeUninit::<T>::uninit();
 8001e44:      	str	r1, [sp, #0x8]
 8001e46:      	str	r0, [sp, #0x4]
 8001e48:      	b	#-0x2 <core::ptr::read::h1bd95e30bf7d9802+0x10>
 8001e4a:      	add	r0, sp, #0x8
 8001e4c:      	str	r0, [sp, #0x1c]
;         copy_nonoverlapping(src, tmp.as_mut_ptr(), 1);
 8001e4e:      	b	#-0x2 <core::ptr::read::h1bd95e30bf7d9802+0x16>
 8001e50:      	add	r1, sp, #0x8
 8001e52:      	movs	r2, #0x1
;         copy_nonoverlapping(src, tmp.as_mut_ptr(), 1);
 8001e54:      	ldr	r0, [sp, #0x4]
 8001e56:      	bl	#0x142
 8001e5a:      	b	#-0x2 <core::ptr::read::h1bd95e30bf7d9802+0x22>
;         tmp.assume_init()
 8001e5c:      	ldr	r0, [sp, #0x8]
 8001e5e:      	str	r0, [sp, #0x14]
 8001e60:      	str	r0, [sp, #0x18]
 8001e62:      	str	r0, [sp]
 8001e64:      	b	#-0x2 <core::ptr::read::h1bd95e30bf7d9802+0x2c>
; }
 8001e66:      	ldr	r0, [sp]
 8001e68:      	add	sp, #0x20
 8001e6a:      	pop	{r7, pc}

08001e6c <core::ptr::read::hbb8ebc0a9492a8cd>:
; pub unsafe fn read<T>(src: *const T) -> T {
 8001e6c:      	push	{r7, lr}
 8001e6e:      	mov	r7, sp
 8001e70:      	sub	sp, #0x20
 8001e72:      	str	r0, [sp, #0x10]
;     }
 8001e74:      	ldrh	r1, [r7, #-10]
;     let mut tmp = MaybeUninit::<T>::uninit();
 8001e78:      	strh	r1, [r7, #-18]
 8001e7c:      	str	r0, [sp, #0x8]
 8001e7e:      	b	#-0x2 <core::ptr::read::hbb8ebc0a9492a8cd+0x14>
 8001e80:      	sub.w	r0, r7, #0x12
 8001e84:      	str	r0, [sp, #0x1c]
;         copy_nonoverlapping(src, tmp.as_mut_ptr(), 1);
 8001e86:      	b	#-0x2 <core::ptr::read::hbb8ebc0a9492a8cd+0x1c>
 8001e88:      	sub.w	r1, r7, #0x12
 8001e8c:      	movs	r2, #0x1
;         copy_nonoverlapping(src, tmp.as_mut_ptr(), 1);
 8001e8e:      	ldr	r0, [sp, #0x8]
 8001e90:      	bl	#0x142
 8001e94:      	b	#-0x2 <core::ptr::read::hbb8ebc0a9492a8cd+0x2a>
;         tmp.assume_init()
 8001e96:      	ldrh	r0, [r7, #-18]
 8001e9a:      	mov	r1, r0
 8001e9c:      	strh.w	r0, [sp, #0x18]
 8001ea0:      	strh	r0, [r7, #-6]
 8001ea4:      	str	r1, [sp, #0x4]
 8001ea6:      	b	#-0x2 <core::ptr::read::hbb8ebc0a9492a8cd+0x3c>
; }
 8001ea8:      	ldr	r0, [sp, #0x4]
 8001eaa:      	add	sp, #0x20
 8001eac:      	pop	{r7, pc}

08001eae <core::ptr::write::h9252896b01c22b93>:
; pub unsafe fn write<T>(dst: *mut T, src: T) {
 8001eae:      	sub	sp, #0xc
 8001eb0:      	str	r0, [sp, #0x4]
 8001eb2:      	str	r1, [sp, #0x8]
;     unsafe { intrinsics::move_val_init(&mut *dst, src) }
 8001eb4:      	str	r1, [r0]
; }
 8001eb6:      	add	sp, #0xc
 8001eb8:      	bx	lr

08001eba <<usize as core::iter::range::Step>::forward_unchecked::hb38f6996702c6a45>:
;         unsafe fn forward_unchecked(start: Self, n: usize) -> Self {
 8001eba:      	push	{r7, lr}
 8001ebc:      	mov	r7, sp
 8001ebe:      	sub	sp, #0x10
 8001ec0:      	str	r0, [sp, #0x8]
 8001ec2:      	str	r1, [sp, #0xc]
;             unsafe { start.unchecked_add(n as Self) }
 8001ec4:      	bl	#0x22
 8001ec8:      	str	r0, [sp, #0x4]
 8001eca:      	b	#-0x2 <<usize as core::iter::range::Step>::forward_unchecked::hb38f6996702c6a45+0x12>
;         }
 8001ecc:      	ldr	r0, [sp, #0x4]
 8001ece:      	add	sp, #0x10
 8001ed0:      	pop	{r7, pc}

08001ed2 <core::cmp::impls::<impl core::cmp::PartialOrd for usize>::lt::he042199fba7f815f>:
;                 fn lt(&self, other: &$t) -> bool { (*self) < (*other) }
 8001ed2:      	sub	sp, #0x8
 8001ed4:      	str	r0, [sp]
 8001ed6:      	str	r1, [sp, #0x4]
 8001ed8:      	ldr	r0, [r0]
 8001eda:      	ldr	r1, [r1]
 8001edc:      	movs	r2, #0x0
 8001ede:      	cmp	r0, r1
 8001ee0:      	it	lo
 8001ee2:      	movlo	r2, #0x1
 8001ee4:      	mov	r0, r2
 8001ee6:      	add	sp, #0x8
 8001ee8:      	bx	lr

08001eea <core::num::<impl usize>::unchecked_add::h96ad73cd28a3f4d4>:
;             pub unsafe fn unchecked_add(self, rhs: Self) -> Self {
 8001eea:      	sub	sp, #0x10
 8001eec:      	str	r0, [sp, #0x4]
 8001eee:      	str	r1, [sp, #0x8]
;                 unsafe { intrinsics::unchecked_add(self, rhs) }
 8001ef0:      	add	r0, r1
 8001ef2:      	str	r0, [sp, #0xc]
 8001ef4:      	ldr	r0, [sp, #0xc]
 8001ef6:      	str	r0, [sp]
 8001ef8:      	b	#-0x2 <core::num::<impl usize>::unchecked_add::h96ad73cd28a3f4d4+0x10>
;             }
 8001efa:      	ldr	r0, [sp]
 8001efc:      	add	sp, #0x10
 8001efe:      	bx	lr

08001f00 <core::cell::UnsafeCell<T>::get::h6e06250070b8f71a>:
;     pub const fn get(&self) -> *mut T {
 8001f00:      	sub	sp, #0x4
 8001f02:      	str	r0, [sp]
;     }
 8001f04:      	add	sp, #0x4
 8001f06:      	bx	lr

08001f08 <core::clone::impls::<impl core::clone::Clone for usize>::clone::h6d6a24e8fb0fbfd4>:
;                     fn clone(&self) -> Self {
 8001f08:      	sub	sp, #0x4
 8001f0a:      	str	r0, [sp]
;                         *self
 8001f0c:      	ldr	r0, [r0]
;                     }
 8001f0e:      	add	sp, #0x4
 8001f10:      	bx	lr

08001f12 <<aligned::Aligned<A,T> as core::ops::deref::Deref>::deref::h93fb66d970004255>:
;     fn deref(&self) -> &T {
 8001f12:      	sub	sp, #0x8
 8001f14:      	str	r0, [sp]
 8001f16:      	str	r1, [sp, #0x4]
;     }
 8001f18:      	add	sp, #0x8
 8001f1a:      	bx	lr

08001f1c <core::ptr::mut_ptr::<impl *mut T>::add::h68e6f3401e9fca30>:
;     pub const unsafe fn add(self, count: usize) -> Self
 8001f1c:      	push	{r7, lr}
 8001f1e:      	mov	r7, sp
 8001f20:      	sub	sp, #0x10
 8001f22:      	str	r0, [sp, #0x8]
 8001f24:      	str	r1, [sp, #0xc]
;         unsafe { self.offset(count as isize) }
 8001f26:      	bl	#0xa
 8001f2a:      	str	r0, [sp, #0x4]
 8001f2c:      	b	#-0x2 <core::ptr::mut_ptr::<impl *mut T>::add::h68e6f3401e9fca30+0x12>
;     }
 8001f2e:      	ldr	r0, [sp, #0x4]
 8001f30:      	add	sp, #0x10
 8001f32:      	pop	{r7, pc}

08001f34 <core::ptr::mut_ptr::<impl *mut T>::offset::h73070010da1158cf>:
;     pub const unsafe fn offset(self, count: isize) -> *mut T
 8001f34:      	sub	sp, #0x10
 8001f36:      	str	r0, [sp, #0x4]
 8001f38:      	str	r1, [sp, #0x8]
;         unsafe { intrinsics::offset(self, count) as *mut T }
 8001f3a:      	add	r0, r1
 8001f3c:      	str	r0, [sp, #0xc]
 8001f3e:      	ldr	r0, [sp, #0xc]
 8001f40:      	str	r0, [sp]
 8001f42:      	b	#-0x2 <core::ptr::mut_ptr::<impl *mut T>::offset::h73070010da1158cf+0x10>
;     }
 8001f44:      	ldr	r0, [sp]
 8001f46:      	add	sp, #0x10
 8001f48:      	bx	lr

08001f4a <core::slice::<impl [T]>::len::h2d58266dd4b52f63>:
;     pub const fn len(&self) -> usize {
 8001f4a:      	sub	sp, #0x10
 8001f4c:      	str	r0, [sp, #0x8]
 8001f4e:      	str	r1, [sp, #0xc]
;         unsafe { crate::ptr::Repr { rust: self }.raw.len }
 8001f50:      	str	r0, [sp]
 8001f52:      	str	r1, [sp, #0x4]
 8001f54:      	ldr	r0, [sp, #0x4]
;     }
 8001f56:      	add	sp, #0x10
 8001f58:      	bx	lr

08001f5a <core::slice::<impl [T]>::len::h44c6c0ee8a47bf5f>:
;     pub const fn len(&self) -> usize {
 8001f5a:      	sub	sp, #0x10
 8001f5c:      	str	r0, [sp, #0x8]
 8001f5e:      	str	r1, [sp, #0xc]
;         unsafe { crate::ptr::Repr { rust: self }.raw.len }
 8001f60:      	str	r0, [sp]
 8001f62:      	str	r1, [sp, #0x4]
 8001f64:      	ldr	r0, [sp, #0x4]
;     }
 8001f66:      	add	sp, #0x10
 8001f68:      	bx	lr

08001f6a <core::slice::<impl [T]>::as_ptr::h0e0991c726938785>:
;     pub const fn as_ptr(&self) -> *const T {
 8001f6a:      	sub	sp, #0x8
 8001f6c:      	str	r0, [sp]
 8001f6e:      	str	r1, [sp, #0x4]
;     }
 8001f70:      	add	sp, #0x8
 8001f72:      	bx	lr

08001f74 <core::slice::<impl [T]>::as_ptr::hd4ae3624062998b8>:
;     pub const fn as_ptr(&self) -> *const T {
 8001f74:      	sub	sp, #0x8
 8001f76:      	str	r0, [sp]
 8001f78:      	str	r1, [sp, #0x4]
;     }
 8001f7a:      	add	sp, #0x8
 8001f7c:      	bx	lr

08001f7e <core::intrinsics::copy_nonoverlapping::h19eaabaf67107a8e>:
; pub unsafe fn copy_nonoverlapping<T>(src: *const T, dst: *mut T, count: usize) {
 8001f7e:      	push	{r7, lr}
 8001f80:      	mov	r7, sp
 8001f82:      	sub	sp, #0x10
 8001f84:      	str	r0, [sp, #0x4]
 8001f86:      	str	r1, [sp, #0x8]
 8001f88:      	str	r2, [sp, #0xc]
;     unsafe { copy_nonoverlapping(src, dst, count) }
 8001f8a:      	lsls	r2, r2, #0x2
 8001f8c:      	str	r0, [sp]
 8001f8e:      	mov	r0, r1
 8001f90:      	ldr	r1, [sp]
 8001f92:      	bl	#0x1980
 8001f96:      	b	#-0x2 <core::intrinsics::copy_nonoverlapping::h19eaabaf67107a8e+0x1a>
; }
 8001f98:      	add	sp, #0x10
 8001f9a:      	pop	{r7, pc}

08001f9c <core::intrinsics::copy_nonoverlapping::h4f371d664cc2314a>:
; pub unsafe fn copy_nonoverlapping<T>(src: *const T, dst: *mut T, count: usize) {
 8001f9c:      	push	{r7, lr}
 8001f9e:      	mov	r7, sp
 8001fa0:      	sub	sp, #0x10
 8001fa2:      	str	r0, [sp, #0x4]
 8001fa4:      	str	r1, [sp, #0x8]
 8001fa6:      	str	r2, [sp, #0xc]
;     unsafe { copy_nonoverlapping(src, dst, count) }
 8001fa8:      	lsls	r2, r2, #0x2
 8001faa:      	str	r0, [sp]
 8001fac:      	mov	r0, r1
 8001fae:      	ldr	r1, [sp]
 8001fb0:      	bl	#0x1962
 8001fb4:      	b	#-0x2 <core::intrinsics::copy_nonoverlapping::h4f371d664cc2314a+0x1a>
; }
 8001fb6:      	add	sp, #0x10
 8001fb8:      	pop	{r7, pc}

08001fba <core::intrinsics::copy_nonoverlapping::h6e9a30b07a92478c>:
; pub unsafe fn copy_nonoverlapping<T>(src: *const T, dst: *mut T, count: usize) {
 8001fba:      	push	{r7, lr}
 8001fbc:      	mov	r7, sp
 8001fbe:      	sub	sp, #0x10
 8001fc0:      	str	r0, [sp, #0x4]
 8001fc2:      	str	r1, [sp, #0x8]
 8001fc4:      	str	r2, [sp, #0xc]
;     unsafe { copy_nonoverlapping(src, dst, count) }
 8001fc6:      	str	r0, [sp]
 8001fc8:      	mov	r0, r1
 8001fca:      	ldr	r1, [sp]
 8001fcc:      	bl	#0x18c8
 8001fd0:      	b	#-0x2 <core::intrinsics::copy_nonoverlapping::h6e9a30b07a92478c+0x18>
; }
 8001fd2:      	add	sp, #0x10
 8001fd4:      	pop	{r7, pc}

08001fd6 <core::intrinsics::copy_nonoverlapping::hc903b81e1766e1e0>:
; pub unsafe fn copy_nonoverlapping<T>(src: *const T, dst: *mut T, count: usize) {
 8001fd6:      	push	{r7, lr}
 8001fd8:      	mov	r7, sp
 8001fda:      	sub	sp, #0x10
 8001fdc:      	str	r0, [sp, #0x4]
 8001fde:      	str	r1, [sp, #0x8]
 8001fe0:      	str	r2, [sp, #0xc]
;     unsafe { copy_nonoverlapping(src, dst, count) }
 8001fe2:      	lsls	r2, r2, #0x1
 8001fe4:      	str	r0, [sp]
 8001fe6:      	mov	r0, r1
 8001fe8:      	ldr	r1, [sp]
 8001fea:      	bl	#0x18aa
 8001fee:      	b	#-0x2 <core::intrinsics::copy_nonoverlapping::hc903b81e1766e1e0+0x1a>
; }
 8001ff0:      	add	sp, #0x10
 8001ff2:      	pop	{r7, pc}

08001ff4 <bare_metal::CriticalSection::new::hb503b2588b041d67>:
;     pub unsafe fn new() -> Self {
 8001ff4:      	sub	sp, #0x4
;     }
 8001ff6:      	add	sp, #0x4
 8001ff8:      	bx	lr

08001ffa <core::ops::function::FnOnce::call_once::h5db7766b92da0352>:
 8001ffa:      	ldr	r0, [r0]
 8001ffc:      	b	#-0x4 <core::ops::function::FnOnce::call_once::h5db7766b92da0352+0x2>

08001ffe <core::ptr::drop_in_place::h04a129b24451d075>:
 8001ffe:      	bx	lr

08002000 <<T as core::any::Any>::type_id::hffc3b5436e52a86a>:
 8002000:      	movw	r0, #0xc5a9
 8002004:      	movw	r1, #0x6b5c
 8002008:      	movt	r0, #0x6065
 800200c:      	movt	r1, #0x3bd4
 8002010:      	bx	lr

08002012 <<core::panic::PanicInfo as core::fmt::Display>::fmt::hf12df5d03bc31ae1>:
 8002012:      	push	{r4, r5, r6, r7, lr}
 8002014:      	add	r7, sp, #0xc
 8002016:      	str	r11, [sp, #-4]!
 800201a:      	sub	sp, #0x38
 800201c:      	mov	r4, r1
 800201e:      	mov	r5, r0
 8002020:      	ldrd	r0, r1, [r1, #24]
 8002024:      	movs	r2, #0xc
 8002026:      	ldr	r3, [r1, #0xc]
 8002028:      	movw	r1, #0x3d58
 800202c:      	movt	r1, #0x800
 8002030:      	blx	r3
 8002032:      	cbz	r0, #0xa
 8002034:      	movs	r6, #0x1
 8002036:      	mov	r0, r6
 8002038:      	add	sp, #0x38
 800203a:      	ldr	r11, [sp], #4
 800203e:      	pop	{r4, r5, r6, r7, pc}
 8002040:      	ldr	r0, [r5, #0x8]
 8002042:      	cbz	r0, #0xe
 8002044:      	str	r0, [sp, #0x4]
 8002046:      	movw	r2, #0x2c09
 800204a:      	ldrd	r0, r1, [r4, #24]
 800204e:      	movt	r2, #0x800
 8002052:      	b	#0x2e <<core::panic::PanicInfo as core::fmt::Display>::fmt::hf12df5d03bc31ae1+0x72>
 8002054:      	ldrd	r6, r0, [r5]
 8002058:      	ldr	r1, [r0, #0xc]
 800205a:      	mov	r0, r6
 800205c:      	blx	r1
 800205e:      	movw	r2, #0xa91e
 8002062:      	movt	r2, #0x7ef2
 8002066:      	eors	r1, r2
 8002068:      	movw	r2, #0xbcf4
 800206c:      	movt	r2, #0xecc7
 8002070:      	eors	r0, r2
 8002072:      	orrs	r0, r1
 8002074:      	bne	#0x38 <<core::panic::PanicInfo as core::fmt::Display>::fmt::hf12df5d03bc31ae1+0x9e>
 8002076:      	str	r6, [sp, #0x4]
 8002078:      	movw	r2, #0x2bfb
 800207c:      	ldrd	r0, r1, [r4, #24]
 8002080:      	movt	r2, #0x800
 8002084:      	str	r2, [sp, #0xc]
 8002086:      	add	r2, sp, #0x4
 8002088:      	str	r2, [sp, #0x8]
 800208a:      	movs	r6, #0x1
 800208c:      	add	r2, sp, #0x8
 800208e:      	str	r6, [sp, #0x34]
 8002090:      	str	r2, [sp, #0x30]
 8002092:      	movs	r2, #0x0
 8002094:      	str	r2, [sp, #0x2c]
 8002096:      	str	r2, [sp, #0x28]
 8002098:      	movs	r2, #0x2
 800209a:      	str	r2, [sp, #0x24]
 800209c:      	movw	r2, #0x3d68
 80020a0:      	movt	r2, #0x800
 80020a4:      	str	r2, [sp, #0x20]
 80020a6:      	add	r2, sp, #0x20
 80020a8:      	bl	#0xb0
 80020ac:      	cmp	r0, #0x0
 80020ae:      	bne	#-0x7c <<core::panic::PanicInfo as core::fmt::Display>::fmt::hf12df5d03bc31ae1+0x24>
 80020b0:      	ldr	r2, [r5, #0xc]
 80020b2:      	movw	r3, #0x2b09
 80020b6:      	movt	r3, #0x800
 80020ba:      	ldrd	r0, r1, [r4, #24]
 80020be:      	add.w	r6, r2, #0xc
 80020c2:      	str	r3, [sp, #0x1c]
 80020c4:      	strd	r3, r6, [sp, #20]
 80020c8:      	add.w	r3, r2, #0x8
 80020cc:      	str	r3, [sp, #0x10]
 80020ce:      	movw	r3, #0x2c35
 80020d2:      	movt	r3, #0x800
 80020d6:      	strd	r2, r3, [sp, #8]
 80020da:      	add	r3, sp, #0x8
 80020dc:      	movs	r2, #0x3
 80020de:      	str	r3, [sp, #0x30]
 80020e0:      	movs	r3, #0x0
 80020e2:      	str	r2, [sp, #0x34]
 80020e4:      	str	r3, [sp, #0x2c]
 80020e6:      	strd	r2, r3, [sp, #36]
 80020ea:      	movw	r2, #0x3d7c
 80020ee:      	movt	r2, #0x800
 80020f2:      	str	r2, [sp, #0x20]
 80020f4:      	add	r2, sp, #0x20
 80020f6:      	bl	#0x62
 80020fa:      	mov	r6, r0
 80020fc:      	mov	r0, r6
 80020fe:      	add	sp, #0x38
 8002100:      	ldr	r11, [sp], #4
 8002104:      	pop	{r4, r5, r6, r7, pc}

08002106 <core::panicking::panic::he8552e8d3d2cbe3a>:
 8002106:      	push	{r7, lr}
 8002108:      	mov	r7, sp
 800210a:      	sub	sp, #0x20
 800210c:      	mov	r12, r2
 800210e:      	movw	r2, #0x3d38
 8002112:      	movt	r2, #0x800
 8002116:      	strd	r0, r1, [sp, #24]
 800211a:      	movs	r3, #0x0
 800211c:      	str	r2, [sp, #0x10]
 800211e:      	movs	r2, #0x1
 8002120:      	mov	r0, sp
 8002122:      	mov	r1, r12
 8002124:      	str	r3, [sp, #0x14]
 8002126:      	strd	r3, r3, [sp, #8]
 800212a:      	str	r2, [sp, #0x4]
 800212c:      	add	r2, sp, #0x18
 800212e:      	str	r2, [sp]
 8002130:      	bl	#0x2
 8002134:      	trap

08002136 <core::panicking::panic_fmt::h3d4fe709119df940>:
 8002136:      	push	{r7, lr}
 8002138:      	mov	r7, sp
 800213a:      	sub	sp, #0x10
 800213c:      	strd	r0, r1, [sp, #8]
 8002140:      	movw	r0, #0x3d48
 8002144:      	movt	r0, #0x800
 8002148:      	str	r0, [sp, #0x4]
 800214a:      	movw	r0, #0x3d38
 800214e:      	movt	r0, #0x800
 8002152:      	str	r0, [sp]
 8002154:      	mov	r0, sp
 8002156:      	bl	#0xae6
 800215a:      	trap

0800215c <core::fmt::write::h80f221a6e172bdff>:
 800215c:      	push	{r4, r5, r6, r7, lr}
 800215e:      	add	r7, sp, #0xc
 8002160:      	push.w	{r8, r9, r10, r11}
 8002164:      	sub	sp, #0x34
 8002166:      	mov	r4, r2
 8002168:      	movs	r2, #0x3
 800216a:      	ldr.w	r11, [r4, #0x8]
 800216e:      	strb.w	r2, [sp, #0x30]
 8002172:      	movs	r2, #0x20
 8002174:      	str	r2, [sp, #0x14]
 8002176:      	movs	r2, #0x0
 8002178:      	cmp.w	r11, #0x0
 800217c:      	str	r2, [sp, #0x10]
 800217e:      	str	r1, [sp, #0x2c]
 8002180:      	str	r0, [sp, #0x28]
 8002182:      	str	r2, [sp, #0x20]
 8002184:      	str	r2, [sp, #0x18]
 8002186:      	beq	#0xe2 <core::fmt::write::h80f221a6e172bdff+0x110>
 8002188:      	ldr	r2, [r4, #0xc]
 800218a:      	ldrd	r6, r10, [r4]
 800218e:      	cmp	r2, r10
 8002190:      	it	hi
 8002192:      	movhi	r2, r10
 8002194:      	cmp	r2, #0x0
 8002196:      	str	r6, [sp, #0xc]
 8002198:      	beq.w	#0x12a <core::fmt::write::h80f221a6e172bdff+0x16a>
 800219c:      	strd	r10, r2, [sp, #4]
 80021a0:      	ldrd	r3, r2, [r6]
 80021a4:      	ldr	r6, [r1, #0xc]
 80021a6:      	mov	r1, r3
 80021a8:      	blx	r6
 80021aa:      	cmp	r0, #0x0
 80021ac:      	bne.w	#0x142 <core::fmt::write::h80f221a6e172bdff+0x196>
 80021b0:      	ldr	r0, [sp, #0x8]
 80021b2:      	movs	r5, #0x0
 80021b4:      	ldr.w	r9, [r4, #0x10]
 80021b8:      	mov.w	r8, #0x10
 80021bc:      	sub.w	r10, r0, #0x1
 80021c0:      	add.w	r1, r11, r5, lsl #2
 80021c4:      	ldrd	r3, r2, [r1, #20]
 80021c8:      	ldrd	r0, r4, [r1, #4]
 80021cc:      	ldrb	r6, [r1, #0x1c]
 80021ce:      	str	r0, [sp, #0x14]
 80021d0:      	add.w	r0, r11, r8
 80021d4:      	strb.w	r6, [sp, #0x30]
 80021d8:      	str	r4, [sp, #0x10]
 80021da:      	cbz	r3, #0x1a
 80021dc:      	cmp	r3, #0x2
 80021de:      	beq	#0x1a <core::fmt::write::h80f221a6e172bdff+0xa0>
 80021e0:      	add.w	r3, r9, r2, lsl #3
 80021e4:      	movw	r6, #0x1ffb
 80021e8:      	movt	r6, #0x800
 80021ec:      	ldr	r3, [r3, #0x4]
 80021ee:      	cmp	r3, r6
 80021f0:      	bne	#0x8 <core::fmt::write::h80f221a6e172bdff+0xa0>
 80021f2:      	ldr.w	r2, [r9, r2, lsl #3]
 80021f6:      	ldr	r2, [r2]
 80021f8:      	movs	r4, #0x1
 80021fa:      	b	#0x0 <core::fmt::write::h80f221a6e172bdff+0xa2>
 80021fc:      	movs	r4, #0x0
 80021fe:      	ldr.w	r3, [r11, r8]
 8002202:      	strd	r4, r2, [sp, #24]
 8002206:      	ldr	r1, [r1, #0xc]
 8002208:      	cbz	r1, #0x1a
 800220a:      	cmp	r1, #0x2
 800220c:      	beq	#0x1a <core::fmt::write::h80f221a6e172bdff+0xce>
 800220e:      	add.w	r1, r9, r3, lsl #3
 8002212:      	movw	r2, #0x1ffb
 8002216:      	movt	r2, #0x800
 800221a:      	ldr	r1, [r1, #0x4]
 800221c:      	cmp	r1, r2
 800221e:      	bne	#0x8 <core::fmt::write::h80f221a6e172bdff+0xce>
 8002220:      	ldr.w	r1, [r9, r3, lsl #3]
 8002224:      	ldr	r3, [r1]
 8002226:      	movs	r1, #0x1
 8002228:      	b	#0x0 <core::fmt::write::h80f221a6e172bdff+0xd0>
 800222a:      	movs	r1, #0x0
 800222c:      	ldr	r2, [r0, #-16]
 8002230:      	str	r3, [sp, #0x24]
 8002232:      	ldr.w	r0, [r9, r2, lsl #3]
 8002236:      	add.w	r2, r9, r2, lsl #3
 800223a:      	ldr	r2, [r2, #0x4]
 800223c:      	str	r1, [sp, #0x20]
 800223e:      	add	r1, sp, #0x10
 8002240:      	blx	r2
 8002242:      	cmp	r0, #0x0
 8002244:      	bne	#0xaa <core::fmt::write::h80f221a6e172bdff+0x196>
 8002246:      	cmp.w	r10, #0x0
 800224a:      	beq	#0xae <core::fmt::write::h80f221a6e172bdff+0x1a0>
 800224c:      	ldr	r1, [sp, #0xc]
 800224e:      	ldrd	r0, r3, [sp, #40]
 8002252:      	adds	r2, r1, r5
 8002254:      	ldr	r3, [r3, #0xc]
 8002256:      	ldrd	r1, r2, [r2, #8]
 800225a:      	blx	r3
 800225c:      	sub.w	r10, r10, #0x1
 8002260:      	add.w	r8, r8, #0x20
 8002264:      	adds	r5, #0x8
 8002266:      	cmp	r0, #0x0
 8002268:      	beq	#-0xac <core::fmt::write::h80f221a6e172bdff+0x64>
 800226a:      	b	#0x84 <core::fmt::write::h80f221a6e172bdff+0x196>
 800226c:      	ldr.w	r9, [r4, #0x14]
 8002270:      	ldrd	r6, r10, [r4]
 8002274:      	cmp	r9, r10
 8002276:      	it	hi
 8002278:      	movhi	r9, r10
 800227a:      	cmp.w	r9, #0x0
 800227e:      	str	r6, [sp, #0xc]
 8002280:      	beq	#0x4c <core::fmt::write::h80f221a6e172bdff+0x174>
 8002282:      	ldrd	r3, r2, [r6]
 8002286:      	ldr	r6, [r1, #0xc]
 8002288:      	ldr	r4, [r4, #0x10]
 800228a:      	mov	r1, r3
 800228c:      	blx	r6
 800228e:      	cbnz	r0, #0x60
 8002290:      	ldr	r0, [sp, #0xc]
 8002292:      	sub.w	r5, r9, #0x1
 8002296:      	adds	r4, #0x4
 8002298:      	add.w	r8, sp, #0x10
 800229c:      	add.w	r6, r0, #0x8
 80022a0:      	ldr	r0, [r4, #-4]
 80022a4:      	mov	r1, r8
 80022a6:      	ldr	r2, [r4]
 80022a8:      	blx	r2
 80022aa:      	cbnz	r0, #0x44
 80022ac:      	cbz	r5, #0x24
 80022ae:      	ldrd	r0, r3, [sp, #40]
 80022b2:      	ldrd	r1, r2, [r6]
 80022b6:      	ldr	r3, [r3, #0xc]
 80022b8:      	blx	r3
 80022ba:      	subs	r5, #0x1
 80022bc:      	adds	r6, #0x8
 80022be:      	adds	r4, #0x8
 80022c0:      	cmp	r0, #0x0
 80022c2:      	beq	#-0x26 <core::fmt::write::h80f221a6e172bdff+0x144>
 80022c4:      	b	#0x2a <core::fmt::write::h80f221a6e172bdff+0x196>
 80022c6:      	mov.w	r9, #0x0
 80022ca:      	cmp	r10, r9
 80022cc:      	bhi	#0x8 <core::fmt::write::h80f221a6e172bdff+0x17c>
 80022ce:      	b	#0x32 <core::fmt::write::h80f221a6e172bdff+0x1a8>
 80022d0:      	mov.w	r9, #0x0
 80022d4:      	cmp	r10, r9
 80022d6:      	bls	#0x2a <core::fmt::write::h80f221a6e172bdff+0x1a8>
 80022d8:      	ldr	r2, [sp, #0xc]
 80022da:      	mov	r1, r9
 80022dc:      	ldrd	r0, r3, [sp, #40]
 80022e0:      	mov	r6, r9
 80022e2:      	ldr	r3, [r3, #0xc]
 80022e4:      	ldr.w	r1, [r2, r1, lsl #3]
 80022e8:      	add.w	r2, r2, r9, lsl #3
 80022ec:      	ldr	r2, [r2, #0x4]
 80022ee:      	blx	r3
 80022f0:      	cbz	r0, #0x10
 80022f2:      	movs	r0, #0x1
 80022f4:      	add	sp, #0x34
 80022f6:      	pop.w	{r8, r9, r10, r11}
 80022fa:      	pop	{r4, r5, r6, r7, pc}
 80022fc:      	ldrd	r10, r9, [sp, #4]
 8002300:      	cmp	r10, r9
 8002302:      	bhi	#-0x2e <core::fmt::write::h80f221a6e172bdff+0x17c>
 8002304:      	movs	r0, #0x0
 8002306:      	add	sp, #0x34
 8002308:      	pop.w	{r8, r9, r10, r11}
 800230c:      	pop	{r4, r5, r6, r7, pc}
 800230e:      	bmi	#-0x58 <core::fmt::write::h80f221a6e172bdff+0x15e>

08002310 <core::fmt::Formatter::pad_integral::h4c330cd32a698918>:
 8002310:      	push	{r4, r5, r6, r7, lr}
 8002312:      	add	r7, sp, #0xc
 8002314:      	push.w	{r8, r9, r10, r11}
 8002318:      	sub	sp, #0xc
 800231a:      	ldrd	r6, r4, [r7, #8]
 800231e:      	mov	r10, r3
 8002320:      	mov	r11, r0
 8002322:      	cbz	r1, #0x38
 8002324:      	ldr.w	lr, [r11]
 8002328:      	movs	r1, #0x2b
 800232a:      	ands	r0, lr, #0x1
 800232e:      	it	eq
 8002330:      	moveq.w	r1, #0x110000
 8002334:      	add.w	r8, r0, r4
 8002338:      	lsls.w	r0, lr, #0x1d
 800233c:      	bpl	#0x2e <core::fmt::Formatter::pad_integral::h4c330cd32a698918+0x5e>
 800233e:      	cmp.w	r10, #0x0
 8002342:      	beq	#0x48 <core::fmt::Formatter::pad_integral::h4c330cd32a698918+0x7e>
 8002344:      	sub.w	r0, r10, #0x1
 8002348:      	and	r12, r10, #0x3
 800234c:      	cmp	r0, #0x3
 800234e:      	bhs	#0x42 <core::fmt::Formatter::pad_integral::h4c330cd32a698918+0x84>
 8002350:      	mov.w	r9, #0x0
 8002354:      	mov	r3, r2
 8002356:      	cmp.w	r12, #0x0
 800235a:      	bne	#0x96 <core::fmt::Formatter::pad_integral::h4c330cd32a698918+0xe4>
 800235c:      	b	#0xca <core::fmt::Formatter::pad_integral::h4c330cd32a698918+0x11a>
 800235e:      	ldr.w	lr, [r11]
 8002362:      	add.w	r8, r4, #0x1
 8002366:      	movs	r1, #0x2d
 8002368:      	lsls.w	r0, lr, #0x1d
 800236c:      	bmi	#-0x32 <core::fmt::Formatter::pad_integral::h4c330cd32a698918+0x2e>
 800236e:      	movs	r2, #0x0
 8002370:      	mov.w	r10, #0x0
 8002374:      	ldr.w	r0, [r11, #0x8]
 8002378:      	cmp	r0, #0x1
 800237a:      	beq	#0xbc <core::fmt::Formatter::pad_integral::h4c330cd32a698918+0x12a>
 800237c:      	mov	r0, r11
 800237e:      	mov	r3, r10
 8002380:      	bl	#0x238
 8002384:      	cmp	r0, #0x0
 8002386:      	beq.w	#0xf2 <$t.225+0x16>
 800238a:      	movs	r5, #0x1
 800238c:      	b	#0x128 <$t.225+0x52>
 800238e:      	mov.w	r9, #0x0
 8002392:      	b	#0x94 <core::fmt::Formatter::pad_integral::h4c330cd32a698918+0x11a>
 8002394:      	str	r1, [sp, #0x8]
 8002396:      	bic	r1, r10, #0x3
 800239a:      	rsbs	r5, r1, #0
 800239c:      	mov.w	r9, #0x0
 80023a0:      	mov	r1, r2
 80023a2:      	mov	r3, r2
 80023a4:      	strd	r4, r6, [sp]
 80023a8:      	ldrb	r2, [r3]
 80023aa:      	ldrb	r0, [r3, #0x1]
 80023ac:      	and	r2, r2, #0xc0
 80023b0:      	ldrb	r6, [r3, #0x2]
 80023b2:      	ldrb	r4, [r3, #0x3]
 80023b4:      	cmp	r2, #0x80
 80023b6:      	and	r0, r0, #0xc0
 80023ba:      	it	eq
 80023bc:      	addeq.w	r9, r9, #0x1
 80023c0:      	cmp	r0, #0x80
 80023c2:      	and	r0, r6, #0xc0
 80023c6:      	it	eq
 80023c8:      	addeq.w	r9, r9, #0x1
 80023cc:      	cmp	r0, #0x80
 80023ce:      	and	r0, r4, #0xc0
 80023d2:      	it	eq
 80023d4:      	addeq.w	r9, r9, #0x1
 80023d8:      	cmp	r0, #0x80
 80023da:      	it	eq
 80023dc:      	addeq.w	r9, r9, #0x1
 80023e0:      	adds	r3, #0x4
 80023e2:      	adds	r5, #0x4
 80023e4:      	bne	#-0x40 <core::fmt::Formatter::pad_integral::h4c330cd32a698918+0x98>
 80023e6:      	mov	r2, r1
 80023e8:      	ldrd	r4, r6, [sp]
 80023ec:      	ldr	r1, [sp, #0x8]
 80023ee:      	cmp.w	r12, #0x0
 80023f2:      	beq	#0x34 <core::fmt::Formatter::pad_integral::h4c330cd32a698918+0x11a>
 80023f4:      	ldrb	r0, [r3]
 80023f6:      	and	r0, r0, #0xc0
 80023fa:      	cmp	r0, #0x80
 80023fc:      	it	eq
 80023fe:      	addeq.w	r9, r9, #0x1
 8002402:      	cmp.w	r12, #0x1
 8002406:      	beq	#0x20 <core::fmt::Formatter::pad_integral::h4c330cd32a698918+0x11a>
 8002408:      	ldrb	r0, [r3, #0x1]
 800240a:      	and	r0, r0, #0xc0
 800240e:      	cmp	r0, #0x80
 8002410:      	it	eq
 8002412:      	addeq.w	r9, r9, #0x1
 8002416:      	cmp.w	r12, #0x2
 800241a:      	beq	#0xc <core::fmt::Formatter::pad_integral::h4c330cd32a698918+0x11a>
 800241c:      	ldrb	r0, [r3, #0x2]
 800241e:      	and	r0, r0, #0xc0
 8002422:      	cmp	r0, #0x80
 8002424:      	it	eq
 8002426:      	addeq.w	r9, r9, #0x1
 800242a:      	add.w	r0, r8, r10
 800242e:      	sub.w	r8, r0, r9
 8002432:      	ldr.w	r0, [r11, #0x8]
 8002436:      	cmp	r0, #0x1
 8002438:      	bne	#-0xc0 <core::fmt::Formatter::pad_integral::h4c330cd32a698918+0x6c>
 800243a:      	ldr.w	r9, [r11, #0xc]
 800243e:      	cmp	r9, r8
 8002440:      	bls	#0x2a <$t.225+0x8>
 8002442:      	lsls.w	r0, lr, #0x1c
 8002446:      	bmi	#0x4c <$t.225+0x30>
 8002448:      	str	r2, [sp, #0x4]
 800244a:      	sub.w	r0, r9, r8
 800244e:      	ldrb.w	r2, [r11, #0x20]
 8002452:      	movs	r5, #0x0
 8002454:      	mov	r9, r0
 8002456:      	cmp	r2, #0x3
 8002458:      	it	eq
 800245a:      	moveq	r2, #0x1
 800245c:      	str	r1, [sp, #0x8]
 800245e:      	tbb	[pc, r2]

08002462 <$d.224>:
 8002462:	45 02 41 02	.word	0x02410245

08002466 <$t.225>:
 8002466:      	mov.w	r9, #0x0
 800246a:      	mov	r5, r0
 800246c:      	b	#0x7c <$t.227+0xe>
 800246e:      	mov	r0, r11
 8002470:      	mov	r3, r10
 8002472:      	bl	#0x146
 8002476:      	cmp	r0, #0x0
 8002478:      	bne.w	#0xf4 <$t.227+0x92>
 800247c:      	ldr.w	r1, [r11, #0x1c]
 8002480:      	mov	r2, r4
 8002482:      	ldr.w	r0, [r11, #0x18]
 8002486:      	ldr	r3, [r1, #0xc]
 8002488:      	mov	r1, r6
 800248a:      	add	sp, #0xc
 800248c:      	pop.w	{r8, r9, r10, r11}
 8002490:      	pop.w	{r4, r5, r6, r7, lr}
 8002494:      	bx	r3
 8002496:      	ldr.w	r0, [r11, #0x4]
 800249a:      	movs	r5, #0x1
 800249c:      	str	r0, [sp, #0x8]
 800249e:      	movs	r0, #0x30
 80024a0:      	ldrb.w	r3, [r11, #0x20]
 80024a4:      	str	r3, [sp, #0x4]
 80024a6:      	mov	r3, r10
 80024a8:      	str.w	r0, [r11, #0x4]
 80024ac:      	mov	r0, r11
 80024ae:      	strb.w	r5, [r11, #0x20]
 80024b2:      	bl	#0x106
 80024b6:      	cbz	r0, #0x8
 80024b8:      	mov	r0, r5
 80024ba:      	add	sp, #0xc
 80024bc:      	pop.w	{r8, r9, r10, r11}
 80024c0:      	pop	{r4, r5, r6, r7, pc}
 80024c2:      	ldrb.w	r2, [r11, #0x20]
 80024c6:      	sub.w	r1, r9, r8
 80024ca:      	movs	r0, #0x0
 80024cc:      	mov	r9, r6
 80024ce:      	cmp	r2, #0x3
 80024d0:      	it	eq
 80024d2:      	moveq	r2, #0x1
 80024d4:      	mov	r5, r1
 80024d6:      	tbb	[pc, r2]

080024da <$d.226>:
 80024da:	36 02 33 02	.word	0x02330236

080024de <$t.227>:
 80024de:      	movs	r5, #0x0
 80024e0:      	mov	r0, r1
 80024e2:      	b	#0x60 <$t.227+0x68>
 80024e4:      	adds	r1, r0, #0x1
 80024e6:      	lsrs	r5, r0, #0x1
 80024e8:      	lsr.w	r9, r1, #0x1
 80024ec:      	adds	r5, #0x1
 80024ee:      	subs	r5, #0x1
 80024f0:      	beq	#0x10 <$t.227+0x26>
 80024f2:      	ldrd	r0, r2, [r11, #24]
 80024f6:      	ldr.w	r1, [r11, #0x4]
 80024fa:      	ldr	r2, [r2, #0x10]
 80024fc:      	blx	r2
 80024fe:      	cmp	r0, #0x0
 8002500:      	beq	#-0x16 <$t.227+0x10>
 8002502:      	b	#0x6a <$t.227+0x92>
 8002504:      	ldrd	r2, r1, [sp, #4]
 8002508:      	mov	r0, r11
 800250a:      	mov	r3, r10
 800250c:      	ldr.w	r8, [r11, #0x4]
 8002510:      	bl	#0xa8
 8002514:      	cbnz	r0, #0x58
 8002516:      	ldrd	r0, r1, [r11, #24]
 800251a:      	mov	r2, r4
 800251c:      	ldr	r3, [r1, #0xc]
 800251e:      	mov	r1, r6
 8002520:      	blx	r3
 8002522:      	cbnz	r0, #0x4a
 8002524:      	ldrd	r10, r4, [r11, #24]
 8002528:      	add.w	r6, r9, #0x1
 800252c:      	movs	r5, #0x1
 800252e:      	subs	r6, #0x1
 8002530:      	beq	#0x64 <$t.227+0xba>
 8002532:      	ldr	r2, [r4, #0x10]
 8002534:      	mov	r0, r10
 8002536:      	mov	r1, r8
 8002538:      	blx	r2
 800253a:      	cmp	r0, #0x0
 800253c:      	beq	#-0x12 <$t.227+0x50>
 800253e:      	b	#-0x8a <$t.225+0x52>
 8002540:      	lsrs	r0, r1, #0x1
 8002542:      	adds	r1, #0x1
 8002544:      	lsrs	r5, r1, #0x1
 8002546:      	adds	r6, r0, #0x1
 8002548:      	subs	r6, #0x1
 800254a:      	beq	#0x10 <$t.227+0x80>
 800254c:      	ldrd	r0, r2, [r11, #24]
 8002550:      	ldr.w	r1, [r11, #0x4]
 8002554:      	ldr	r2, [r2, #0x10]
 8002556:      	blx	r2
 8002558:      	cmp	r0, #0x0
 800255a:      	beq	#-0x16 <$t.227+0x6a>
 800255c:      	b	#0x10 <$t.227+0x92>
 800255e:      	ldrd	r0, r1, [r11, #24]
 8002562:      	mov	r2, r4
 8002564:      	ldr	r3, [r1, #0xc]
 8002566:      	mov	r1, r9
 8002568:      	ldr.w	r8, [r11, #0x4]
 800256c:      	blx	r3
 800256e:      	cbz	r0, #0xa
 8002570:      	movs	r5, #0x1
 8002572:      	mov	r0, r5
 8002574:      	add	sp, #0xc
 8002576:      	pop.w	{r8, r9, r10, r11}
 800257a:      	pop	{r4, r5, r6, r7, pc}
 800257c:      	ldrd	r9, r10, [r11, #24]
 8002580:      	adds	r6, r5, #0x1
 8002582:      	movs	r5, #0x1
 8002584:      	subs	r6, #0x1
 8002586:      	beq	#0x1a <$t.227+0xc6>
 8002588:      	ldr.w	r2, [r10, #0x10]
 800258c:      	mov	r0, r9
 800258e:      	mov	r1, r8
 8002590:      	blx	r2
 8002592:      	cmp	r0, #0x0
 8002594:      	beq	#-0x14 <$t.227+0xa6>
 8002596:      	b	#-0xe2 <$t.225+0x52>
 8002598:      	movs	r5, #0x0
 800259a:      	mov	r0, r5
 800259c:      	add	sp, #0xc
 800259e:      	pop.w	{r8, r9, r10, r11}
 80025a2:      	pop	{r4, r5, r6, r7, pc}
 80025a4:      	ldr	r0, [sp, #0x4]
 80025a6:      	movs	r5, #0x0
 80025a8:      	strb.w	r0, [r11, #0x20]
 80025ac:      	ldr	r0, [sp, #0x8]
 80025ae:      	str.w	r0, [r11, #0x4]
 80025b2:      	mov	r0, r5
 80025b4:      	add	sp, #0xc
 80025b6:      	pop.w	{r8, r9, r10, r11}
 80025ba:      	pop	{r4, r5, r6, r7, pc}

080025bc <core::fmt::Formatter::pad_integral::write_prefix::h43274d4e4dd7a787>:
 80025bc:      	push	{r4, r5, r6, r7, lr}
 80025be:      	add	r7, sp, #0xc
 80025c0:      	str	r11, [sp, #-4]!
 80025c4:      	mov	r4, r3
 80025c6:      	mov	r5, r2
 80025c8:      	mov	r6, r0
 80025ca:      	cmp.w	r1, #0x110000
 80025ce:      	beq	#0x10 <core::fmt::Formatter::pad_integral::write_prefix::h43274d4e4dd7a787+0x26>
 80025d0:      	ldrd	r0, r2, [r6, #24]
 80025d4:      	ldr	r2, [r2, #0x10]
 80025d6:      	blx	r2
 80025d8:      	cbz	r0, #0x6
 80025da:      	movs	r0, #0x1
 80025dc:      	ldr	r11, [sp], #4
 80025e0:      	pop	{r4, r5, r6, r7, pc}
 80025e2:      	cbz	r5, #0x12
 80025e4:      	ldrd	r0, r1, [r6, #24]
 80025e8:      	mov	r2, r4
 80025ea:      	ldr	r3, [r1, #0xc]
 80025ec:      	mov	r1, r5
 80025ee:      	ldr	r11, [sp], #4
 80025f2:      	pop.w	{r4, r5, r6, r7, lr}
 80025f6:      	bx	r3
 80025f8:      	movs	r0, #0x0
 80025fa:      	ldr	r11, [sp], #4
 80025fe:      	pop	{r4, r5, r6, r7, pc}

08002600 <core::fmt::Formatter::pad::hdd2f8bc43cf2bd72>:
 8002600:      	push	{r4, r5, r6, r7, lr}
 8002602:      	add	r7, sp, #0xc
 8002604:      	push.w	{r8, r9, r10, r11}
 8002608:      	sub	sp, #0x4
 800260a:      	ldr.w	lr, [r0, #0x8]
 800260e:      	mov	r11, r0
 8002610:      	ldr	r0, [r0, #0x10]
 8002612:      	mov	r9, r2
 8002614:      	mov	r4, r1
 8002616:      	cmp.w	lr, #0x1
 800261a:      	bne	#0x26 <core::fmt::Formatter::pad::hdd2f8bc43cf2bd72+0x44>
 800261c:      	cmp	r0, #0x1
 800261e:      	beq	#0x28 <core::fmt::Formatter::pad::hdd2f8bc43cf2bd72+0x4a>
 8002620:      	cmp.w	r9, #0x0
 8002624:      	beq.w	#0x240 <core::fmt::Formatter::pad::hdd2f8bc43cf2bd72+0x268>
 8002628:      	sub.w	lr, r9, #0x1
 800262c:      	and	r12, r9, #0x3
 8002630:      	cmp.w	lr, #0x3
 8002634:      	bhs	#0xd4 <core::fmt::Formatter::pad::hdd2f8bc43cf2bd72+0x10c>
 8002636:      	movs	r3, #0x0
 8002638:      	mov	r1, r4
 800263a:      	cmp.w	r12, #0x0
 800263e:      	bne.w	#0x114 <core::fmt::Formatter::pad::hdd2f8bc43cf2bd72+0x156>
 8002642:      	b	#0x140 <core::fmt::Formatter::pad::hdd2f8bc43cf2bd72+0x186>
 8002644:      	cmp	r0, #0x1
 8002646:      	bne.w	#0x252 <$t.231+0x8>
 800264a:      	ldr.w	r3, [r11, #0x14]
 800264e:      	add.w	r5, r4, r9
 8002652:      	movs	r2, #0x0
 8002654:      	mov	r0, r4
 8002656:      	str	r4, [sp]
 8002658:      	cbnz	r3, #0x4a
 800265a:      	cmp	r5, r0
 800265c:      	beq	#0x9e <core::fmt::Formatter::pad::hdd2f8bc43cf2bd72+0xfe>
 800265e:      	mov	r1, r0
 8002660:      	ldr	r4, [sp]
 8002662:      	ldrsb	r3, [r1], #1
 8002666:      	cmp.w	r3, #0xffffffff
 800266a:      	ble.w	#0x138 <core::fmt::Formatter::pad::hdd2f8bc43cf2bd72+0x1a6>
 800266e:      	cmp	r2, #0x0
 8002670:      	it	ne
 8002672:      	cmpne	r2, r9
 8002674:      	bne.w	#0x1c4 <core::fmt::Formatter::pad::hdd2f8bc43cf2bd72+0x23c>
 8002678:      	mov	r0, r4
 800267a:      	b	#0x1d0 <core::fmt::Formatter::pad::hdd2f8bc43cf2bd72+0x24e>
 800267c:      	ldrb	r0, [r1], #1
 8002680:      	and	r8, r0, #0x3f
 8002684:      	mov	r0, r1
 8002686:      	mov.w	r1, #0x1c0000
 800268a:      	and.w	r1, r1, r6, lsl #18
 800268e:      	orr.w	r1, r1, r10, lsl #12
 8002692:      	orr.w	r1, r1, r12, lsl #6
 8002696:      	add	r1, r8
 8002698:      	cmp.w	r1, #0x110000
 800269c:      	beq	#0x5e <core::fmt::Formatter::pad::hdd2f8bc43cf2bd72+0xfe>
 800269e:      	subs	r1, r0, r4
 80026a0:      	subs	r3, #0x1
 80026a2:      	add	r2, r1
 80026a4:      	beq	#-0x4e <core::fmt::Formatter::pad::hdd2f8bc43cf2bd72+0x5a>
 80026a6:      	cmp	r5, r0
 80026a8:      	beq	#0x52 <core::fmt::Formatter::pad::hdd2f8bc43cf2bd72+0xfe>
 80026aa:      	mov	r4, r0
 80026ac:      	ldrsb	r1, [r0], #1
 80026b0:      	cmp.w	r1, #0xffffffff
 80026b4:      	bgt	#-0x1a <core::fmt::Formatter::pad::hdd2f8bc43cf2bd72+0x9e>
 80026b6:      	uxtb	r6, r1
 80026b8:      	cmp	r0, r5
 80026ba:      	beq	#0xe <core::fmt::Formatter::pad::hdd2f8bc43cf2bd72+0xcc>
 80026bc:      	ldrb	r1, [r4, #0x1]
 80026be:      	adds	r0, r4, #0x2
 80026c0:      	and	r10, r1, #0x3f
 80026c4:      	mov	r1, r0
 80026c6:      	cmp	r6, #0xe0
 80026c8:      	blo	#-0x2e <core::fmt::Formatter::pad::hdd2f8bc43cf2bd72+0x9e>
 80026ca:      	b	#0x8 <core::fmt::Formatter::pad::hdd2f8bc43cf2bd72+0xd6>
 80026cc:      	mov.w	r10, #0x0
 80026d0:      	mov	r1, r5
 80026d2:      	cmp	r6, #0xe0
 80026d4:      	blo	#-0x3a <core::fmt::Formatter::pad::hdd2f8bc43cf2bd72+0x9e>
 80026d6:      	cmp	r1, r5
 80026d8:      	beq	#0xe <core::fmt::Formatter::pad::hdd2f8bc43cf2bd72+0xea>
 80026da:      	ldrb	r0, [r1], #1
 80026de:      	and	r12, r0, #0x3f
 80026e2:      	mov	r0, r1
 80026e4:      	cmp	r6, #0xf0
 80026e6:      	blo	#-0x4c <core::fmt::Formatter::pad::hdd2f8bc43cf2bd72+0x9e>
 80026e8:      	b	#0x8 <core::fmt::Formatter::pad::hdd2f8bc43cf2bd72+0xf4>
 80026ea:      	mov.w	r12, #0x0
 80026ee:      	mov	r1, r5
 80026f0:      	cmp	r6, #0xf0
 80026f2:      	blo	#-0x58 <core::fmt::Formatter::pad::hdd2f8bc43cf2bd72+0x9e>
 80026f4:      	cmp	r1, r5
 80026f6:      	bne	#-0x7e <core::fmt::Formatter::pad::hdd2f8bc43cf2bd72+0x7c>
 80026f8:      	mov.w	r8, #0x0
 80026fc:      	b	#-0x7a <core::fmt::Formatter::pad::hdd2f8bc43cf2bd72+0x86>
 80026fe:      	mov	r2, r9
 8002700:      	ldr	r4, [sp]
 8002702:      	cmp.w	lr, #0x1
 8002706:      	bne.w	#0x252 <$t.231+0xc8>
 800270a:      	b	#0x150 <core::fmt::Formatter::pad::hdd2f8bc43cf2bd72+0x25e>
 800270c:      	bic	r1, r9, #0x3
 8002710:      	movs	r3, #0x0
 8002712:      	rsbs	r6, r1, #0
 8002714:      	mov	r8, r4
 8002716:      	mov	r1, r4
 8002718:      	ldrb	r5, [r1]
 800271a:      	ldrb	r4, [r1, #0x1]
 800271c:      	ldrb	r0, [r1, #0x2]
 800271e:      	and	r5, r5, #0xc0
 8002722:      	ldrb	r2, [r1, #0x3]
 8002724:      	cmp	r5, #0x80
 8002726:      	and	r4, r4, #0xc0
 800272a:      	it	eq
 800272c:      	addeq	r3, #0x1
 800272e:      	cmp	r4, #0x80
 8002730:      	and	r0, r0, #0xc0
 8002734:      	it	eq
 8002736:      	addeq	r3, #0x1
 8002738:      	cmp	r0, #0x80
 800273a:      	and	r0, r2, #0xc0
 800273e:      	it	eq
 8002740:      	addeq	r3, #0x1
 8002742:      	cmp	r0, #0x80
 8002744:      	it	eq
 8002746:      	addeq	r3, #0x1
 8002748:      	adds	r1, #0x4
 800274a:      	adds	r6, #0x4
 800274c:      	bne	#-0x38 <core::fmt::Formatter::pad::hdd2f8bc43cf2bd72+0x118>
 800274e:      	mov	r4, r8
 8002750:      	cmp.w	r12, #0x0
 8002754:      	beq	#0x2e <core::fmt::Formatter::pad::hdd2f8bc43cf2bd72+0x186>
 8002756:      	ldrb	r0, [r1]
 8002758:      	and	r0, r0, #0xc0
 800275c:      	cmp	r0, #0x80
 800275e:      	it	eq
 8002760:      	addeq	r3, #0x1
 8002762:      	cmp.w	r12, #0x1
 8002766:      	beq	#0x1c <core::fmt::Formatter::pad::hdd2f8bc43cf2bd72+0x186>
 8002768:      	ldrb	r0, [r1, #0x1]
 800276a:      	and	r0, r0, #0xc0
 800276e:      	cmp	r0, #0x80
 8002770:      	it	eq
 8002772:      	addeq	r3, #0x1
 8002774:      	cmp.w	r12, #0x2
 8002778:      	beq	#0xa <core::fmt::Formatter::pad::hdd2f8bc43cf2bd72+0x186>
 800277a:      	ldrb	r0, [r1, #0x2]
 800277c:      	and	r0, r0, #0xc0
 8002780:      	cmp	r0, #0x80
 8002782:      	it	eq
 8002784:      	addeq	r3, #0x1
 8002786:      	ldr.w	r8, [r11, #0xc]
 800278a:      	sub.w	r0, r9, r3
 800278e:      	cmp	r0, r8
 8002790:      	bhs.w	#0x108 <$t.231+0x8>
 8002794:      	cmp.w	lr, #0x3
 8002798:      	bhs	#0x24 <core::fmt::Formatter::pad::hdd2f8bc43cf2bd72+0x1c0>
 800279a:      	movs	r2, #0x0
 800279c:      	mov	r3, r4
 800279e:      	cmp.w	r12, #0x0
 80027a2:      	bne	#0x64 <core::fmt::Formatter::pad::hdd2f8bc43cf2bd72+0x20a>
 80027a4:      	b	#0xcc <core::fmt::Formatter::pad::hdd2f8bc43cf2bd72+0x274>
 80027a6:      	uxtb	r3, r3
 80027a8:      	cmp	r1, r5
 80027aa:      	beq.w	#0x158 <$t.231+0x72>
 80027ae:      	ldrb	r1, [r0, #0x1]
 80027b0:      	adds	r0, #0x2
 80027b2:      	and	r1, r1, #0x3f
 80027b6:      	lsls	r1, r1, #0x6
 80027b8:      	cmp	r3, #0xe0
 80027ba:      	bhs.w	#0x152 <$t.231+0x7c>
 80027be:      	b	#-0x154 <core::fmt::Formatter::pad::hdd2f8bc43cf2bd72+0x6e>
 80027c0:      	bic	r0, r9, #0x3
 80027c4:      	movs	r2, #0x0
 80027c6:      	rsbs	r6, r0, #0
 80027c8:      	mov	lr, r4
 80027ca:      	mov	r3, r4
 80027cc:      	ldrb	r0, [r3]
 80027ce:      	ldrb	r5, [r3, #0x1]
 80027d0:      	and	r0, r0, #0xc0
 80027d4:      	ldrb	r4, [r3, #0x2]
 80027d6:      	ldrb	r1, [r3, #0x3]
 80027d8:      	cmp	r0, #0x80
 80027da:      	and	r0, r5, #0xc0
 80027de:      	it	eq
 80027e0:      	addeq	r2, #0x1
 80027e2:      	cmp	r0, #0x80
 80027e4:      	and	r0, r4, #0xc0
 80027e8:      	it	eq
 80027ea:      	addeq	r2, #0x1
 80027ec:      	cmp	r0, #0x80
 80027ee:      	and	r0, r1, #0xc0
 80027f2:      	it	eq
 80027f4:      	addeq	r2, #0x1
 80027f6:      	cmp	r0, #0x80
 80027f8:      	it	eq
 80027fa:      	addeq	r2, #0x1
 80027fc:      	adds	r3, #0x4
 80027fe:      	adds	r6, #0x4
 8002800:      	bne	#-0x38 <core::fmt::Formatter::pad::hdd2f8bc43cf2bd72+0x1cc>
 8002802:      	mov	r4, lr
 8002804:      	cmp.w	r12, #0x0
 8002808:      	beq	#0x68 <core::fmt::Formatter::pad::hdd2f8bc43cf2bd72+0x274>
 800280a:      	ldrb	r0, [r3]
 800280c:      	and	r0, r0, #0xc0
 8002810:      	cmp	r0, #0x80
 8002812:      	it	eq
 8002814:      	addeq	r2, #0x1
 8002816:      	cmp.w	r12, #0x1
 800281a:      	beq	#0x56 <core::fmt::Formatter::pad::hdd2f8bc43cf2bd72+0x274>
 800281c:      	ldrb	r0, [r3, #0x1]
 800281e:      	and	r0, r0, #0xc0
 8002822:      	cmp	r0, #0x80
 8002824:      	it	eq
 8002826:      	addeq	r2, #0x1
 8002828:      	cmp.w	r12, #0x2
 800282c:      	beq	#0x44 <core::fmt::Formatter::pad::hdd2f8bc43cf2bd72+0x274>
 800282e:      	ldrb	r0, [r3, #0x2]
 8002830:      	and	r0, r0, #0xc0
 8002834:      	cmp	r0, #0x80
 8002836:      	it	eq
 8002838:      	addeq	r2, #0x1
 800283a:      	b	#0x36 <core::fmt::Formatter::pad::hdd2f8bc43cf2bd72+0x274>
 800283c:      	cmp	r2, r9
 800283e:      	bhs	#0x8 <core::fmt::Formatter::pad::hdd2f8bc43cf2bd72+0x24a>
 8002840:      	ldrsb	r0, [r4, r2]
 8002842:      	cmn.w	r0, #0x40
 8002846:      	bge.w	#-0x1d2 <core::fmt::Formatter::pad::hdd2f8bc43cf2bd72+0x78>
 800284a:      	movs	r0, #0x0
 800284c:      	movs	r2, #0x0
 800284e:      	cmp	r0, #0x0
 8002850:      	ite	eq
 8002852:      	moveq	r2, r9
 8002854:      	movne	r4, r0
 8002856:      	cmp.w	lr, #0x1
 800285a:      	bne.w	#0xfe <$t.231+0xc8>
 800285e:      	mov	r9, r2
 8002860:      	cmp.w	r9, #0x0
 8002864:      	bne.w	#-0x240 <core::fmt::Formatter::pad::hdd2f8bc43cf2bd72+0x28>
 8002868:      	ldr.w	r8, [r11, #0xc]
 800286c:      	cmp.w	r8, #0x0
 8002870:      	beq	#0x28 <$t.231+0x8>
 8002872:      	movs	r2, #0x0
 8002874:      	ldrb.w	r0, [r11, #0x20]
 8002878:      	mov	r5, r4
 800287a:      	subs	r3, r0, #0x3
 800287c:      	it	ne
 800287e:      	movne	r3, r0
 8002880:      	sub.w	r0, r2, r9
 8002884:      	add.w	r1, r0, r8
 8002888:      	movs	r0, #0x0
 800288a:      	mov	r10, r1
 800288c:      	tbb	[pc, r3]

08002890 <$d.230>:
 8002890:	10 02 0c 02	.word	0x020c0210

08002894 <$t.231>:
 8002894:      	mov.w	r10, #0x0
 8002898:      	mov	r0, r1
 800289a:      	b	#0x12 <$t.231+0x1c>
 800289c:      	ldr.w	r1, [r11, #0x1c]
 80028a0:      	mov	r2, r9
 80028a2:      	ldr.w	r0, [r11, #0x18]
 80028a6:      	b	#0xb6 <$t.231+0xcc>
 80028a8:      	lsrs	r0, r1, #0x1
 80028aa:      	adds	r1, #0x1
 80028ac:      	lsr.w	r10, r1, #0x1
 80028b0:      	adds	r4, r0, #0x1
 80028b2:      	subs	r4, #0x1
 80028b4:      	beq	#0x10 <$t.231+0x34>
 80028b6:      	ldrd	r0, r2, [r11, #24]
 80028ba:      	ldr.w	r1, [r11, #0x4]
 80028be:      	ldr	r2, [r2, #0x10]
 80028c0:      	blx	r2
 80028c2:      	cmp	r0, #0x0
 80028c4:      	beq	#-0x16 <$t.231+0x1e>
 80028c6:      	b	#0x28 <$t.231+0x5e>
 80028c8:      	ldrd	r0, r1, [r11, #24]
 80028cc:      	mov	r2, r9
 80028ce:      	ldr	r3, [r1, #0xc]
 80028d0:      	mov	r1, r5
 80028d2:      	ldr.w	r8, [r11, #0x4]
 80028d6:      	blx	r3
 80028d8:      	cbnz	r0, #0x16
 80028da:      	ldrd	r6, r5, [r11, #24]
 80028de:      	add.w	r4, r10, #0x1
 80028e2:      	subs	r4, #0x1
 80028e4:      	beq	#0x14 <$t.231+0x68>
 80028e6:      	ldr	r2, [r5, #0x10]
 80028e8:      	mov	r0, r6
 80028ea:      	mov	r1, r8
 80028ec:      	blx	r2
 80028ee:      	cmp	r0, #0x0
 80028f0:      	beq	#-0x12 <$t.231+0x4e>
 80028f2:      	movs	r0, #0x1
 80028f4:      	add	sp, #0x4
 80028f6:      	pop.w	{r8, r9, r10, r11}
 80028fa:      	pop	{r4, r5, r6, r7, pc}
 80028fc:      	movs	r0, #0x0
 80028fe:      	add	sp, #0x4
 8002900:      	pop.w	{r8, r9, r10, r11}
 8002904:      	pop	{r4, r5, r6, r7, pc}
 8002906:      	movs	r1, #0x0
 8002908:      	mov	r0, r5
 800290a:      	cmp	r3, #0xe0
 800290c:      	blo.w	#-0x2a2 <core::fmt::Formatter::pad::hdd2f8bc43cf2bd72+0x6e>
 8002910:      	cmp	r0, r5
 8002912:      	beq	#0xe <$t.231+0x90>
 8002914:      	ldrb	r6, [r0], #1
 8002918:      	and	r6, r6, #0x3f
 800291c:      	cmp	r3, #0xf0
 800291e:      	blo.w	#-0x2b4 <core::fmt::Formatter::pad::hdd2f8bc43cf2bd72+0x6e>
 8002922:      	b	#0x8 <$t.231+0x9a>
 8002924:      	movs	r6, #0x0
 8002926:      	mov	r0, r5
 8002928:      	cmp	r3, #0xf0
 800292a:      	blo.w	#-0x2c0 <core::fmt::Formatter::pad::hdd2f8bc43cf2bd72+0x6e>
 800292e:      	orrs	r1, r6
 8002930:      	mov.w	r6, #0x1c0000
 8002934:      	and.w	r3, r6, r3, lsl #18
 8002938:      	cmp	r0, r5
 800293a:      	itte	ne
 800293c:      	ldrbne	r0, [r0]
 800293e:      	andne	r0, r0, #0x3f
 8002942:      	moveq	r0, #0x0
 8002944:      	orr.w	r1, r3, r1, lsl #6
 8002948:      	add	r0, r1
 800294a:      	cmp.w	r0, #0x110000
 800294e:      	bne.w	#-0x2e4 <core::fmt::Formatter::pad::hdd2f8bc43cf2bd72+0x6e>
 8002952:      	mov	r2, r9
 8002954:      	cmp.w	lr, #0x1
 8002958:      	beq.w	#-0xfe <core::fmt::Formatter::pad::hdd2f8bc43cf2bd72+0x25e>
 800295c:      	ldrd	r0, r1, [r11, #24]
 8002960:      	ldr	r3, [r1, #0xc]
 8002962:      	mov	r1, r4
 8002964:      	add	sp, #0x4
 8002966:      	pop.w	{r8, r9, r10, r11}
 800296a:      	pop.w	{r4, r5, r6, r7, lr}
 800296e:      	bx	r3

08002970 <core::slice::index::slice_start_index_len_fail::h353454303241f046>:
 8002970:      	push	{r7, lr}
 8002972:      	mov	r7, sp
 8002974:      	sub	sp, #0x30
 8002976:      	strd	r0, r1, [sp]
 800297a:      	add	r1, sp, #0x20
 800297c:      	movs	r0, #0x2
 800297e:      	str	r1, [sp, #0x18]
 8002980:      	movs	r1, #0x0
 8002982:      	str	r0, [sp, #0x1c]
 8002984:      	str	r1, [sp, #0x14]
 8002986:      	strd	r0, r1, [sp, #12]
 800298a:      	movw	r0, #0x3ec0
 800298e:      	movt	r0, #0x800
 8002992:      	add	r1, sp, #0x4
 8002994:      	str	r0, [sp, #0x8]
 8002996:      	movw	r0, #0x2b09
 800299a:      	movt	r0, #0x800
 800299e:      	str	r0, [sp, #0x2c]
 80029a0:      	strd	r0, r1, [sp, #36]
 80029a4:      	mov	r0, sp
 80029a6:      	str	r0, [sp, #0x20]
 80029a8:      	add	r0, sp, #0x8
 80029aa:      	mov	r1, r2
 80029ac:      	bl	#-0x87a
 80029b0:      	trap

080029b2 <core::slice::index::slice_end_index_len_fail::ha5ee0bc768bf016f>:
 80029b2:      	push	{r7, lr}
 80029b4:      	mov	r7, sp
 80029b6:      	sub	sp, #0x30
 80029b8:      	strd	r0, r1, [sp]
 80029bc:      	add	r1, sp, #0x20
 80029be:      	movs	r0, #0x2
 80029c0:      	str	r1, [sp, #0x18]
 80029c2:      	movs	r1, #0x0
 80029c4:      	str	r0, [sp, #0x1c]
 80029c6:      	str	r1, [sp, #0x14]
 80029c8:      	strd	r0, r1, [sp, #12]
 80029cc:      	movw	r0, #0x3ed0
 80029d0:      	movt	r0, #0x800
 80029d4:      	add	r1, sp, #0x4
 80029d6:      	str	r0, [sp, #0x8]
 80029d8:      	movw	r0, #0x2b09
 80029dc:      	movt	r0, #0x800
 80029e0:      	str	r0, [sp, #0x2c]
 80029e2:      	strd	r0, r1, [sp, #36]
 80029e6:      	mov	r0, sp
 80029e8:      	str	r0, [sp, #0x20]
 80029ea:      	add	r0, sp, #0x8
 80029ec:      	mov	r1, r2
 80029ee:      	bl	#-0x8bc
 80029f2:      	trap

080029f4 <core::slice::index::slice_index_order_fail::h4fa9bc0fa097e730>:
 80029f4:      	push	{r7, lr}
 80029f6:      	mov	r7, sp
 80029f8:      	sub	sp, #0x30
 80029fa:      	strd	r0, r1, [sp]
 80029fe:      	add	r1, sp, #0x20
 8002a00:      	movs	r0, #0x2
 8002a02:      	str	r1, [sp, #0x18]
 8002a04:      	movs	r1, #0x0
 8002a06:      	str	r0, [sp, #0x1c]
 8002a08:      	str	r1, [sp, #0x14]
 8002a0a:      	strd	r0, r1, [sp, #12]
 8002a0e:      	movw	r0, #0x3f04
 8002a12:      	movt	r0, #0x800
 8002a16:      	add	r1, sp, #0x4
 8002a18:      	str	r0, [sp, #0x8]
 8002a1a:      	movw	r0, #0x2b09
 8002a1e:      	movt	r0, #0x800
 8002a22:      	str	r0, [sp, #0x2c]
 8002a24:      	strd	r0, r1, [sp, #36]
 8002a28:      	mov	r0, sp
 8002a2a:      	str	r0, [sp, #0x20]
 8002a2c:      	add	r0, sp, #0x8
 8002a2e:      	mov	r1, r2
 8002a30:      	bl	#-0x8fe
 8002a34:      	trap

08002a36 <core::fmt::num::<impl core::fmt::UpperHex for usize>::fmt::h2baf5da618e98d0a>:
 8002a36:      	push	{r4, r5, r7, lr}
 8002a38:      	add	r7, sp, #0x8
 8002a3a:      	sub	sp, #0x88
 8002a3c:      	ldr	r0, [r0]
 8002a3e:      	add.w	lr, sp, #0x8
 8002a42:      	mov	r12, r1
 8002a44:      	movs	r2, #0x81
 8002a46:      	movs	r1, #0x0
 8002a48:      	and	r3, r0, #0xf
 8002a4c:      	add.w	r4, r3, #0x37
 8002a50:      	cmp	r3, #0xa
 8002a52:      	it	lo
 8002a54:      	addlo.w	r4, r3, #0x30
 8002a58:      	add.w	r3, lr, r2
 8002a5c:      	cmp.w	r1, r0, lsr #4
 8002a60:      	strb	r4, [r3, #-2]
 8002a64:      	beq	#0x5c <core::fmt::num::<impl core::fmt::UpperHex for usize>::fmt::h2baf5da618e98d0a+0x8e>
 8002a66:      	lsrs	r4, r0, #0x4
 8002a68:      	and	r4, r4, #0xf
 8002a6c:      	add.w	r5, r4, #0x37
 8002a70:      	cmp	r4, #0xa
 8002a72:      	it	lo
 8002a74:      	addlo.w	r5, r4, #0x30
 8002a78:      	cmp.w	r1, r0, lsr #8
 8002a7c:      	strb	r5, [r3, #-3]
 8002a80:      	beq	#0x46 <core::fmt::num::<impl core::fmt::UpperHex for usize>::fmt::h2baf5da618e98d0a+0x94>
 8002a82:      	lsrs	r4, r0, #0x8
 8002a84:      	and	r4, r4, #0xf
 8002a88:      	add.w	r5, r4, #0x37
 8002a8c:      	cmp	r4, #0xa
 8002a8e:      	it	lo
 8002a90:      	addlo.w	r5, r4, #0x30
 8002a94:      	cmp.w	r1, r0, lsr #12
 8002a98:      	strb	r5, [r3, #-4]
 8002a9c:      	beq	#0x30 <core::fmt::num::<impl core::fmt::UpperHex for usize>::fmt::h2baf5da618e98d0a+0x9a>
 8002a9e:      	lsrs	r4, r0, #0xc
 8002aa0:      	subs	r2, #0x4
 8002aa2:      	and	r4, r4, #0xf
 8002aa6:      	add.w	r5, r4, #0x37
 8002aaa:      	cmp	r4, #0xa
 8002aac:      	it	lo
 8002aae:      	addlo.w	r5, r4, #0x30
 8002ab2:      	strb	r5, [r3, #-5]
 8002ab6:      	lsrs	r3, r0, #0x10
 8002ab8:      	cmp.w	r1, r0, lsr #16
 8002abc:      	mov	r0, r3
 8002abe:      	bne	#-0x7a <core::fmt::num::<impl core::fmt::UpperHex for usize>::fmt::h2baf5da618e98d0a+0x12>
 8002ac0:      	subs	r0, r2, #0x1
 8002ac2:      	b	#0xe <core::fmt::num::<impl core::fmt::UpperHex for usize>::fmt::h2baf5da618e98d0a+0x9e>
 8002ac4:      	subs	r0, r2, #0x2
 8002ac6:      	subs	r2, #0x1
 8002ac8:      	b	#0x8 <core::fmt::num::<impl core::fmt::UpperHex for usize>::fmt::h2baf5da618e98d0a+0x9e>
 8002aca:      	subs	r0, r2, #0x3
 8002acc:      	subs	r2, #0x2
 8002ace:      	b	#0x2 <core::fmt::num::<impl core::fmt::UpperHex for usize>::fmt::h2baf5da618e98d0a+0x9e>
 8002ad0:      	subs	r0, r2, #0x4
 8002ad2:      	subs	r2, #0x3
 8002ad4:      	cmp	r0, #0x81
 8002ad6:      	bhs	#0x1e <core::fmt::num::<impl core::fmt::UpperHex for usize>::fmt::h2baf5da618e98d0a+0xc2>
 8002ad8:      	rsb.w	r1, r2, #0x81
 8002adc:      	movw	r2, #0x3dc0
 8002ae0:      	add	r0, lr
 8002ae2:      	movt	r2, #0x800
 8002ae6:      	strd	r0, r1, [sp]
 8002aea:      	mov	r0, r12
 8002aec:      	movs	r1, #0x1
 8002aee:      	movs	r3, #0x2
 8002af0:      	bl	#-0x7e4
 8002af4:      	add	sp, #0x88
 8002af6:      	pop	{r4, r5, r7, pc}
 8002af8:      	movw	r2, #0x3db0
 8002afc:      	movs	r1, #0x80
 8002afe:      	movt	r2, #0x800
 8002b02:      	bl	#-0x196
 8002b06:      	trap

08002b08 <core::fmt::num::imp::<impl core::fmt::Display for usize>::fmt::he182be987a3eaddb>:
 8002b08:      	push	{r4, r5, r6, r7, lr}
 8002b0a:      	add	r7, sp, #0xc
 8002b0c:      	push.w	{r8, r9, r10, r11}
 8002b10:      	sub	sp, #0x34
 8002b12:      	ldr	r4, [r0]
 8002b14:      	movw	r0, #0x851f
 8002b18:      	movw	r8, #0x3dc2
 8002b1c:      	mov	r5, r1
 8002b1e:      	movw	r1, #0x2710
 8002b22:      	cmp	r4, r1
 8002b24:      	movt	r0, #0x51eb
 8002b28:      	movt	r8, #0x800
 8002b2c:      	blo	#0x76 <core::fmt::num::imp::<impl core::fmt::Display for usize>::fmt::he182be987a3eaddb+0x9e>
 8002b2e:      	movw	r9, #0x1759
 8002b32:      	movw	lr, #0xe0ff
 8002b36:      	add.w	r11, sp, #0xc
 8002b3a:      	movs	r3, #0x0
 8002b3c:      	movt	r9, #0xd1b7
 8002b40:      	mov.w	r10, #0x64
 8002b44:      	movt	lr, #0x5f5
 8002b48:      	str	r5, [sp, #0x8]
 8002b4a:      	umull	r2, r5, r4, r9
 8002b4e:      	cmp	r4, lr
 8002b50:      	lsr.w	r2, r5, #0xd
 8002b54:      	mls	r5, r2, r1, r4
 8002b58:      	add.w	r1, r11, r3
 8002b5c:      	sub.w	r3, r3, #0x4
 8002b60:      	mov	r4, r2
 8002b62:      	uxth	r6, r5
 8002b64:      	umull	r6, r12, r6, r0
 8002b68:      	lsr.w	r6, r12, #0x5
 8002b6c:      	mls	r5, r6, r10, r5
 8002b70:      	ldrh.w	r6, [r8, r6, lsl #1]
 8002b74:      	strh.w	r6, [r1, #0x23]
 8002b78:      	uxth	r5, r5
 8002b7a:      	ldrh.w	r5, [r8, r5, lsl #1]
 8002b7e:      	strh.w	r5, [r1, #0x25]
 8002b82:      	movw	r1, #0x2710
 8002b86:      	bhi	#-0x40 <core::fmt::num::imp::<impl core::fmt::Display for usize>::fmt::he182be987a3eaddb+0x42>
 8002b88:      	ldr	r5, [sp, #0x8]
 8002b8a:      	add.w	r1, r3, #0x27
 8002b8e:      	mov	r4, r2
 8002b90:      	cmp	r4, #0x63
 8002b92:      	bgt	#0x16 <core::fmt::num::imp::<impl core::fmt::Display for usize>::fmt::he182be987a3eaddb+0xa4>
 8002b94:      	mov	r3, r4
 8002b96:      	cmp	r3, #0xa
 8002b98:      	blt	#0x2e <core::fmt::num::imp::<impl core::fmt::Display for usize>::fmt::he182be987a3eaddb+0xc2>
 8002b9a:      	subs	r1, #0x2
 8002b9c:      	ldrh.w	r0, [r8, r3, lsl #1]
 8002ba0:      	add	r2, sp, #0xc
 8002ba2:      	strh	r0, [r2, r1]
 8002ba4:      	b	#0x2c <core::fmt::num::imp::<impl core::fmt::Display for usize>::fmt::he182be987a3eaddb+0xcc>
 8002ba6:      	movs	r1, #0x27
 8002ba8:      	cmp	r4, #0x63
 8002baa:      	ble	#-0x1a <core::fmt::num::imp::<impl core::fmt::Display for usize>::fmt::he182be987a3eaddb+0x8c>
 8002bac:      	uxth	r2, r4
 8002bae:      	subs	r1, #0x2
 8002bb0:      	umull	r2, r3, r2, r0
 8002bb4:      	add	r6, sp, #0xc
 8002bb6:      	movs	r2, #0x64
 8002bb8:      	lsrs	r3, r3, #0x5
 8002bba:      	mls	r2, r3, r2, r4
 8002bbe:      	uxth	r2, r2
 8002bc0:      	ldrh.w	r2, [r8, r2, lsl #1]
 8002bc4:      	strh	r2, [r6, r1]
 8002bc6:      	cmp	r3, #0xa
 8002bc8:      	bge	#-0x32 <core::fmt::num::imp::<impl core::fmt::Display for usize>::fmt::he182be987a3eaddb+0x92>
 8002bca:      	subs	r1, #0x1
 8002bcc:      	add	r2, sp, #0xc
 8002bce:      	add.w	r0, r3, #0x30
 8002bd2:      	strb	r0, [r2, r1]
 8002bd4:      	rsb.w	r0, r1, #0x27
 8002bd8:      	add	r2, sp, #0xc
 8002bda:      	add	r1, r2
 8002bdc:      	movw	r2, #0x3d38
 8002be0:      	strd	r1, r0, [sp]
 8002be4:      	movt	r2, #0x800
 8002be8:      	mov	r0, r5
 8002bea:      	movs	r1, #0x1
 8002bec:      	movs	r3, #0x0
 8002bee:      	bl	#-0x8e2
 8002bf2:      	add	sp, #0x34
 8002bf4:      	pop.w	{r8, r9, r10, r11}
 8002bf8:      	pop	{r4, r5, r6, r7, pc}

08002bfa <<&T as core::fmt::Display>::fmt::h28023d1754819fb6>:
 8002bfa:      	ldr	r0, [r0]
 8002bfc:      	mov	r3, r1
 8002bfe:      	ldrd	r1, r2, [r0]
 8002c02:      	mov	r0, r3
 8002c04:      	b.w	#-0x608 <core::fmt::Formatter::pad::hdd2f8bc43cf2bd72>

08002c08 <<&T as core::fmt::Display>::fmt::hb1351d570a30a9c9>:
 8002c08:      	push	{r4, r5, r6, r7, lr}
 8002c0a:      	add	r7, sp, #0xc
 8002c0c:      	push.w	{r8, r9, r11}
 8002c10:      	sub	sp, #0x18
 8002c12:      	ldr.w	lr, [r0]
 8002c16:      	mov	r2, sp
 8002c18:      	ldrd	r12, r1, [r1, #24]
 8002c1c:      	mov	r3, r2
 8002c1e:      	ldm.w	lr, {r0, r4, r5, r6, r8, r9}
 8002c22:      	stm.w	r3, {r0, r4, r5, r6, r8, r9}
 8002c26:      	mov	r0, r12
 8002c28:      	bl	#-0xad0
 8002c2c:      	add	sp, #0x18
 8002c2e:      	pop.w	{r8, r9, r11}
 8002c32:      	pop	{r4, r5, r6, r7, pc}

08002c34 <<&T as core::fmt::Display>::fmt::hed4fc898b8a3241f>:
 8002c34:      	mov	r3, r1
 8002c36:      	ldrd	r1, r2, [r0]
 8002c3a:      	mov	r0, r3
 8002c3c:      	b.w	#-0x640 <core::fmt::Formatter::pad::hdd2f8bc43cf2bd72>

08002c40 <rust_begin_unwind>:
; fn panic(info: &PanicInfo) -> ! {
 8002c40:      	push	{r7, lr}
 8002c42:      	mov	r7, sp
 8002c44:      	sub	sp, #0x48
 8002c46:      	str	r0, [sp, #0x10]
;     interrupt::disable();
 8002c48:      	bl	#0xc40
 8002c4c:      	b	#-0x2 <rust_begin_unwind+0xe>
;     let itm = unsafe { &mut *ITM::ptr() };
 8002c4e:      	b	#-0x2 <rust_begin_unwind+0x10>
 8002c50:      	mov.w	r0, #0xe0000000
;     let itm = unsafe { &mut *ITM::ptr() };
 8002c54:      	str	r0, [sp, #0x3c]
;     let stim = &mut itm.stim[0];
 8002c56:      	mov	r1, r0
 8002c58:      	str	r0, [sp, #0x40]
 8002c5a:      	add	r0, sp, #0x10
;     iprintln!(stim, "{}", info);
 8002c5c:      	str	r0, [sp, #0x34]
 8002c5e:      	ldr	r0, [sp, #0x34]
 8002c60:      	str	r0, [sp, #0x44]
 8002c62:      	movw	r2, #0x2cb9
 8002c66:      	movt	r2, #0x800
 8002c6a:      	str	r1, [sp, #0xc]
 8002c6c:      	mov	r1, r2
 8002c6e:      	bl	#0x64
 8002c72:      	str	r0, [sp, #0x8]
 8002c74:      	str	r1, [sp, #0x4]
 8002c76:      	b	#-0x2 <rust_begin_unwind+0x38>
 8002c78:      	ldr	r0, [sp, #0x8]
 8002c7a:      	str	r0, [sp, #0x2c]
 8002c7c:      	ldr	r1, [sp, #0x4]
 8002c7e:      	str	r1, [sp, #0x30]
 8002c80:      	mov	r2, sp
 8002c82:      	movs	r3, #0x1
 8002c84:      	str	r3, [r2]
 8002c86:      	movw	r1, #0x3f18
 8002c8a:      	movt	r1, #0x800
 8002c8e:      	add	r0, sp, #0x14
 8002c90:      	movs	r2, #0x2
 8002c92:      	add	r3, sp, #0x2c
 8002c94:      	bl	#0x92
 8002c98:      	b	#-0x2 <rust_begin_unwind+0x5a>
 8002c9a:      	add	r1, sp, #0x14
;     iprintln!(stim, "{}", info);
 8002c9c:      	ldr	r0, [sp, #0xc]
 8002c9e:      	bl	#0x22c
 8002ca2:      	b	#-0x2 <rust_begin_unwind+0x64>
;     loop {
 8002ca4:      	b	#-0x2 <rust_begin_unwind+0x66>
 8002ca6:      	movs	r0, #0x4
;         atomic::compiler_fence(Ordering::SeqCst);
 8002ca8:      	strb	r0, [r7, #-13]
 8002cac:      	ldrb	r0, [r7, #-13]
 8002cb0:      	bl	#0xb0
 8002cb4:      	b	#-0x2 <rust_begin_unwind+0x76>
;     loop {
 8002cb6:      	b	#-0x14 <rust_begin_unwind+0x66>

08002cb8 <<&T as core::fmt::Display>::fmt::h5f1a04902c846116>:
;             fn fmt(&self, f: &mut Formatter<'_>) -> Result { $tr::fmt(&**self, f) }
 8002cb8:      	push	{r7, lr}
 8002cba:      	mov	r7, sp
 8002cbc:      	sub	sp, #0x10
 8002cbe:      	str	r0, [sp, #0x8]
 8002cc0:      	str	r1, [sp, #0xc]
 8002cc2:      	ldr	r0, [r0]
 8002cc4:      	bl	#-0xcb6
 8002cc8:      	str	r0, [sp, #0x4]
 8002cca:      	b	#-0x2 <<&T as core::fmt::Display>::fmt::h5f1a04902c846116+0x14>
 8002ccc:      	ldr	r0, [sp, #0x4]
 8002cce:      	and	r0, r0, #0x1
 8002cd2:      	add	sp, #0x10
 8002cd4:      	pop	{r7, pc}

08002cd6 <core::fmt::ArgumentV1::new::h030037d525dc6fd2>:
;     pub fn new<'b, T>(x: &'b T, f: fn(&T, &mut Formatter<'_>) -> Result) -> ArgumentV1<'b> {
 8002cd6:      	sub	sp, #0x24
 8002cd8:      	str	r0, [sp, #0x14]
 8002cda:      	str	r1, [sp, #0x18]
;         unsafe { ArgumentV1 { formatter: mem::transmute(f), value: mem::transmute(x) } }
 8002cdc:      	str	r1, [sp, #0x1c]
 8002cde:      	ldr	r1, [sp, #0x1c]
 8002ce0:      	str	r0, [sp, #0x8]
 8002ce2:      	str	r1, [sp, #0x4]
 8002ce4:      	b	#-0x2 <core::fmt::ArgumentV1::new::h030037d525dc6fd2+0x10>
 8002ce6:      	ldr	r0, [sp, #0x8]
 8002ce8:      	str	r0, [sp, #0x20]
 8002cea:      	ldr	r1, [sp, #0x20]
 8002cec:      	str	r1, [sp]
 8002cee:      	b	#-0x2 <core::fmt::ArgumentV1::new::h030037d525dc6fd2+0x1a>
 8002cf0:      	ldr	r0, [sp]
 8002cf2:      	str	r0, [sp, #0xc]
 8002cf4:      	ldr	r1, [sp, #0x4]
 8002cf6:      	str	r1, [sp, #0x10]
;     }
 8002cf8:      	ldr	r0, [sp, #0xc]
 8002cfa:      	ldr	r1, [sp, #0x10]
 8002cfc:      	add	sp, #0x24
 8002cfe:      	bx	lr

08002d00 <core::fmt::ArgumentV1::new::h78acb193f763263d>:
;     pub fn new<'b, T>(x: &'b T, f: fn(&T, &mut Formatter<'_>) -> Result) -> ArgumentV1<'b> {
 8002d00:      	sub	sp, #0x24
 8002d02:      	str	r0, [sp, #0x14]
 8002d04:      	str	r1, [sp, #0x18]
;         unsafe { ArgumentV1 { formatter: mem::transmute(f), value: mem::transmute(x) } }
 8002d06:      	str	r1, [sp, #0x1c]
 8002d08:      	ldr	r1, [sp, #0x1c]
 8002d0a:      	str	r0, [sp, #0x8]
 8002d0c:      	str	r1, [sp, #0x4]
 8002d0e:      	b	#-0x2 <core::fmt::ArgumentV1::new::h78acb193f763263d+0x10>
 8002d10:      	ldr	r0, [sp, #0x8]
 8002d12:      	str	r0, [sp, #0x20]
 8002d14:      	ldr	r1, [sp, #0x20]
 8002d16:      	str	r1, [sp]
 8002d18:      	b	#-0x2 <core::fmt::ArgumentV1::new::h78acb193f763263d+0x1a>
 8002d1a:      	ldr	r0, [sp]
 8002d1c:      	str	r0, [sp, #0xc]
 8002d1e:      	ldr	r1, [sp, #0x4]
 8002d20:      	str	r1, [sp, #0x10]
;     }
 8002d22:      	ldr	r0, [sp, #0xc]
 8002d24:      	ldr	r1, [sp, #0x10]
 8002d26:      	add	sp, #0x24
 8002d28:      	bx	lr

08002d2a <core::fmt::Arguments::new_v1::h1b9dc998b366c8ba>:
;     pub fn new_v1(pieces: &'a [&'static str], args: &'a [ArgumentV1<'a>]) -> Arguments<'a> {
 8002d2a:      	push	{r7, lr}
 8002d2c:      	mov	r7, sp
 8002d2e:      	sub	sp, #0x18
 8002d30:      	ldr.w	r12, [r7, #0x8]
 8002d34:      	str	r1, [sp, #0x8]
 8002d36:      	str	r2, [sp, #0xc]
 8002d38:      	str	r3, [sp, #0x10]
 8002d3a:      	str.w	r12, [sp, #0x14]
 8002d3e:      	mov.w	lr, #0x0
;         Arguments { pieces, fmt: None, args }
 8002d42:      	str.w	lr, [sp, #0x4]
 8002d46:      	str.w	lr, [sp]
 8002d4a:      	str.w	lr, [sp]
 8002d4e:      	str	r1, [r0]
 8002d50:      	str	r2, [r0, #0x4]
 8002d52:      	ldr	r1, [sp]
 8002d54:      	ldr	r2, [sp, #0x4]
 8002d56:      	str	r1, [r0, #0x8]
 8002d58:      	str	r2, [r0, #0xc]
 8002d5a:      	str	r3, [r0, #0x10]
 8002d5c:      	str.w	r12, [r0, #0x14]
;     }
 8002d60:      	add	sp, #0x18
 8002d62:      	pop	{r7, pc}

08002d64 <core::sync::atomic::compiler_fence::h60dfa0d6a150abc5>:
; pub fn compiler_fence(order: Ordering) {
 8002d64:      	push	{r7, lr}
 8002d66:      	mov	r7, sp
 8002d68:      	sub	sp, #0x10
 8002d6a:      	mov	r1, r0
 8002d6c:      	strb	r0, [r7, #-5]
;             Acquire => intrinsics::atomic_singlethreadfence_acq(),
 8002d70:      	ldrb	r0, [r7, #-5]
 8002d74:      	str	r0, [sp, #0x4]
 8002d76:      	ldr	r1, [sp, #0x4]
 8002d78:      	tbb	[pc, r1]

08002d7c <$d.1>:
 8002d7c:	03 11 10 12	.word	0x12101103
 8002d80:	13 00		.short	0x0013

08002d82 <$t.2>:
;             Relaxed => panic!("there is no such thing as a relaxed compiler fence"),
 8002d82:      	movw	r0, #0x3f28
 8002d86:      	movt	r0, #0x800
 8002d8a:      	movw	r2, #0x3fd0
 8002d8e:      	movt	r2, #0x800
 8002d92:      	movs	r1, #0x32
 8002d94:      	bl	#-0xc92
 8002d98:      	trap
;         match order {
 8002d9a:      	trap
;             Acquire => intrinsics::atomic_singlethreadfence_acq(),
 8002d9c:      	b	#0x4 <$t.2+0x22>
;             Release => intrinsics::atomic_singlethreadfence_rel(),
 8002d9e:      	b	#0x2 <$t.2+0x22>
;             AcqRel => intrinsics::atomic_singlethreadfence_acqrel(),
 8002da0:      	b	#0x0 <$t.2+0x22>
;             SeqCst => intrinsics::atomic_singlethreadfence(),
 8002da2:      	b	#-0x2 <$t.2+0x22>
; }
 8002da4:      	add	sp, #0x10
 8002da6:      	pop	{r7, pc}

08002da8 <core::fmt::Write::write_char::hba0234c9e840e8d7>:
;     fn write_char(&mut self, c: char) -> Result {
 8002da8:      	push	{r7, lr}
 8002daa:      	mov	r7, sp
 8002dac:      	sub	sp, #0x20
 8002dae:      	str	r0, [sp, #0x18]
 8002db0:      	str	r1, [sp, #0x1c]
 8002db2:      	movs	r2, #0x0
;         self.write_str(c.encode_utf8(&mut [0; 4]))
 8002db4:      	str	r2, [sp, #0x14]
 8002db6:      	add	r2, sp, #0x14
 8002db8:      	movs	r3, #0x4
 8002dba:      	str	r0, [sp, #0x10]
 8002dbc:      	mov	r0, r1
 8002dbe:      	mov	r1, r2
 8002dc0:      	mov	r2, r3
 8002dc2:      	bl	#0x350
 8002dc6:      	str	r0, [sp, #0xc]
 8002dc8:      	str	r1, [sp, #0x8]
 8002dca:      	b	#-0x2 <core::fmt::Write::write_char::hba0234c9e840e8d7+0x24>
 8002dcc:      	ldr	r0, [sp, #0x10]
 8002dce:      	ldr	r1, [sp, #0xc]
 8002dd0:      	ldr	r2, [sp, #0x8]
 8002dd2:      	bl	#0xbc
 8002dd6:      	str	r0, [sp, #0x4]
 8002dd8:      	b	#-0x2 <core::fmt::Write::write_char::hba0234c9e840e8d7+0x32>
;     }
 8002dda:      	ldr	r0, [sp, #0x4]
 8002ddc:      	and	r0, r0, #0x1
 8002de0:      	add	sp, #0x20
 8002de2:      	pop	{r7, pc}

08002de4 <core::fmt::Write::write_fmt::h6b6d381367036646>:
;     fn write_fmt(mut self: &mut Self, args: Arguments<'_>) -> Result {
 8002de4:      	push	{r4, r5, r6, r7, lr}
 8002de6:      	add	r7, sp, #0xc
 8002de8:      	str	r11, [sp, #-4]!
 8002dec:      	sub	sp, #0x28
 8002dee:      	str	r0, [sp, #0xc]
 8002df0:      	add	r0, sp, #0x10
;         write(&mut self, args)
 8002df2:      	mov	r2, r0
 8002df4:      	ldm.w	r1, {r3, r4, r5, r6, r12, lr}
 8002df8:      	stm.w	r2, {r3, r4, r5, r6, r12, lr}
 8002dfc:      	movw	r1, #0x3fe0
 8002e00:      	movt	r1, #0x800
 8002e04:      	add	r2, sp, #0xc
 8002e06:      	str	r0, [sp, #0x8]
 8002e08:      	mov	r0, r2
 8002e0a:      	ldr	r2, [sp, #0x8]
 8002e0c:      	bl	#-0xcb4
 8002e10:      	str	r0, [sp, #0x4]
 8002e12:      	b	#-0x2 <core::fmt::Write::write_fmt::h6b6d381367036646+0x30>
;     }
 8002e14:      	ldr	r0, [sp, #0x4]
 8002e16:      	and	r0, r0, #0x1
 8002e1a:      	add	sp, #0x28
 8002e1c:      	ldr	r11, [sp], #4
 8002e20:      	pop	{r4, r5, r6, r7, pc}

08002e22 <<&mut W as core::fmt::Write>::write_char::hbecb42a0f1867a2e>:
;     fn write_char(&mut self, c: char) -> Result {
 8002e22:      	push	{r7, lr}
 8002e24:      	mov	r7, sp
 8002e26:      	sub	sp, #0x10
 8002e28:      	str	r0, [sp, #0x8]
 8002e2a:      	str	r1, [sp, #0xc]
;         (**self).write_char(c)
 8002e2c:      	ldr	r0, [r0]
 8002e2e:      	bl	#-0x8a
 8002e32:      	str	r0, [sp, #0x4]
 8002e34:      	b	#-0x2 <<&mut W as core::fmt::Write>::write_char::hbecb42a0f1867a2e+0x14>
;     }
 8002e36:      	ldr	r0, [sp, #0x4]
 8002e38:      	and	r0, r0, #0x1
 8002e3c:      	add	sp, #0x10
 8002e3e:      	pop	{r7, pc}

08002e40 <<&mut W as core::fmt::Write>::write_fmt::hf6d2fff4406d1a03>:
;     fn write_fmt(&mut self, args: Arguments<'_>) -> Result {
 8002e40:      	push	{r4, r5, r6, r7, lr}
 8002e42:      	add	r7, sp, #0xc
 8002e44:      	str	r8, [sp, #-4]!
 8002e48:      	sub	sp, #0x20
 8002e4a:      	str	r0, [sp, #0x1c]
;         (**self).write_fmt(args)
 8002e4c:      	ldr	r0, [r0]
 8002e4e:      	add	r2, sp, #0x4
 8002e50:      	mov	r3, r2
 8002e52:      	ldm.w	r1, {r4, r5, r6, r8, r12, lr}
 8002e56:      	stm.w	r3, {r4, r5, r6, r8, r12, lr}
 8002e5a:      	mov	r1, r2
 8002e5c:      	bl	#-0x7c
 8002e60:      	str	r0, [sp]
 8002e62:      	b	#-0x2 <<&mut W as core::fmt::Write>::write_fmt::hf6d2fff4406d1a03+0x24>
;     }
 8002e64:      	ldr	r0, [sp]
 8002e66:      	and	r0, r0, #0x1
 8002e6a:      	add	sp, #0x20
 8002e6c:      	ldr	r8, [sp], #4
 8002e70:      	pop	{r4, r5, r6, r7, pc}

08002e72 <<&mut W as core::fmt::Write>::write_str::h4151afcd314c1c71>:
;     fn write_str(&mut self, s: &str) -> Result {
 8002e72:      	push	{r7, lr}
 8002e74:      	mov	r7, sp
 8002e76:      	sub	sp, #0x10
 8002e78:      	str	r0, [sp, #0x4]
 8002e7a:      	str	r1, [sp, #0x8]
 8002e7c:      	str	r2, [sp, #0xc]
;         (**self).write_str(s)
 8002e7e:      	ldr	r0, [r0]
 8002e80:      	bl	#0xe
 8002e84:      	str	r0, [sp]
 8002e86:      	b	#-0x2 <<&mut W as core::fmt::Write>::write_str::h4151afcd314c1c71+0x16>
;     }
 8002e88:      	ldr	r0, [sp]
 8002e8a:      	and	r0, r0, #0x1
 8002e8e:      	add	sp, #0x10
 8002e90:      	pop	{r7, pc}

08002e92 <<cortex_m::itm::Port as core::fmt::Write>::write_str::hf280f57206176ae9>:
;     fn write_str(&mut self, s: &str) -> fmt::Result {
 8002e92:      	push	{r7, lr}
 8002e94:      	mov	r7, sp
 8002e96:      	sub	sp, #0x30
 8002e98:      	str	r0, [sp, #0x14]
 8002e9a:      	str	r1, [sp, #0x18]
 8002e9c:      	str	r2, [sp, #0x1c]
;         write_all(self.0, s.as_bytes());
 8002e9e:      	ldr	r0, [r0]
 8002ea0:      	str	r1, [sp, #0x20]
 8002ea2:      	str	r2, [sp, #0x24]
;         unsafe { mem::transmute(self) }
 8002ea4:      	str	r1, [sp, #0x28]
 8002ea6:      	str	r2, [sp, #0x2c]
 8002ea8:      	ldr	r1, [sp, #0x28]
 8002eaa:      	ldr	r2, [sp, #0x2c]
;         write_all(self.0, s.as_bytes());
 8002eac:      	str	r0, [sp, #0xc]
 8002eae:      	str	r1, [sp, #0x8]
 8002eb0:      	str	r2, [sp, #0x4]
 8002eb2:      	b	#-0x2 <<cortex_m::itm::Port as core::fmt::Write>::write_str::hf280f57206176ae9+0x22>
 8002eb4:      	ldr	r0, [sp, #0xc]
 8002eb6:      	ldr	r1, [sp, #0x8]
 8002eb8:      	ldr	r2, [sp, #0x4]
 8002eba:      	bl	#0x550
 8002ebe:      	b	#-0x2 <<cortex_m::itm::Port as core::fmt::Write>::write_str::hf280f57206176ae9+0x2e>
 8002ec0:      	movs	r0, #0x0
;         Ok(())
 8002ec2:      	strb	r0, [r7, #-29]
;     }
 8002ec6:      	ldrb	r0, [r7, #-29]
 8002eca:      	add	sp, #0x30
 8002ecc:      	pop	{r7, pc}

08002ece <cortex_m::itm::write_fmt::hd80f26f2d6ae53e8>:
; pub fn write_fmt(port: &mut Stim, args: fmt::Arguments) {
 8002ece:      	push	{r4, r5, r6, r7, lr}
 8002ed0:      	add	r7, sp, #0xc
 8002ed2:      	str	r11, [sp, #-4]!
 8002ed6:      	sub	sp, #0x28
 8002ed8:      	str	r0, [sp, #0x24]
;     Port(port).write_fmt(args).ok();
 8002eda:      	str	r0, [sp, #0x8]
 8002edc:      	add	r0, sp, #0xc
 8002ede:      	mov	r2, r0
 8002ee0:      	ldm.w	r1, {r3, r4, r5, r6, r12, lr}
 8002ee4:      	stm.w	r2, {r3, r4, r5, r6, r12, lr}
 8002ee8:      	add	r1, sp, #0x8
 8002eea:      	str	r0, [sp, #0x4]
 8002eec:      	mov	r0, r1
 8002eee:      	ldr	r1, [sp, #0x4]
 8002ef0:      	bl	#-0x110
 8002ef4:      	str	r0, [sp]
 8002ef6:      	b	#-0x2 <cortex_m::itm::write_fmt::hd80f26f2d6ae53e8+0x2a>
 8002ef8:      	ldr	r0, [sp]
 8002efa:      	and	r0, r0, #0x1
 8002efe:      	bl	#0x426
 8002f02:      	b	#-0x2 <cortex_m::itm::write_fmt::hd80f26f2d6ae53e8+0x36>
; }
 8002f04:      	add	sp, #0x28
 8002f06:      	ldr	r11, [sp], #4
 8002f0a:      	pop	{r4, r5, r6, r7, pc}

08002f0c <core::ptr::drop_in_place::haed792f1769a8d05>:
; pub unsafe fn drop_in_place<T: ?Sized>(to_drop: *mut T) {
 8002f0c:      	sub	sp, #0x8
 8002f0e:      	str	r0, [sp, #0x4]
 8002f10:      	add	sp, #0x8
 8002f12:      	bx	lr

08002f14 <core::char::methods::encode_utf8_raw::h2a731acd3c53bb9a>:
; pub fn encode_utf8_raw(code: u32, dst: &mut [u8]) -> &mut [u8] {
 8002f14:      	push	{r4, r5, r7, lr}
 8002f16:      	add	r7, sp, #0x8
 8002f18:      	sub	sp, #0xe0
 8002f1a:      	str	r0, [sp, #0x48]
 8002f1c:      	str	r1, [sp, #0xa4]
 8002f1e:      	str	r2, [sp, #0xa8]
;     let len = len_utf8(code);
 8002f20:      	ldr	r0, [sp, #0x48]
 8002f22:      	str	r2, [sp, #0x44]
 8002f24:      	str	r1, [sp, #0x40]
 8002f26:      	bl	#0x218
 8002f2a:      	str	r0, [sp, #0x4c]
 8002f2c:      	b	#-0x2 <core::char::methods::encode_utf8_raw::h2a731acd3c53bb9a+0x1a>
;     match (len, &mut dst[..]) {
 8002f2e:      	ldr	r0, [sp, #0x4c]
 8002f30:      	movw	r2, #0x406c
 8002f34:      	movt	r2, #0x800
 8002f38:      	ldr	r1, [sp, #0x40]
 8002f3a:      	str	r0, [sp, #0x3c]
 8002f3c:      	mov	r0, r1
 8002f3e:      	ldr	r1, [sp, #0x44]
 8002f40:      	bl	#0x274
 8002f44:      	str	r0, [sp, #0x38]
 8002f46:      	str	r1, [sp, #0x34]
 8002f48:      	b	#-0x2 <core::char::methods::encode_utf8_raw::h2a731acd3c53bb9a+0x36>
 8002f4a:      	ldr	r0, [sp, #0x3c]
 8002f4c:      	str	r0, [sp, #0x50]
 8002f4e:      	ldr	r1, [sp, #0x38]
 8002f50:      	str	r1, [sp, #0x54]
 8002f52:      	ldr	r2, [sp, #0x34]
 8002f54:      	str	r2, [sp, #0x58]
;         (1, [a, ..]) => {
 8002f56:      	ldr	r3, [sp, #0x50]
 8002f58:      	subs	r3, #0x1
 8002f5a:      	mov	r12, r3
 8002f5c:      	cmp	r3, #0x3
 8002f5e:      	str.w	r12, [sp, #0x30]
 8002f62:      	bhi	#0x10 <$t.2+0x8>
 8002f64:      	ldr	r1, [sp, #0x30]
 8002f66:      	tbb	[pc, r1]

08002f6a <$d.1>:
 8002f6a:	02 0c 10 14	.word	0x14100c02

08002f6e <$t.2>:
;         (1, [a, ..]) => {
 8002f6e:      	ldr	r0, [sp, #0x58]
 8002f70:      	cmp	r0, #0x0
 8002f72:      	bne	#0x24 <$t.2+0x2c>
 8002f74:      	b	#-0x2 <$t.2+0x8>
;             dst.len(),
 8002f76:      	ldr	r0, [sp, #0x40]
 8002f78:      	ldr	r1, [sp, #0x44]
 8002f7a:      	bl	#-0x1034
 8002f7e:      	str	r0, [sp, #0x9c]
 8002f80:      	b	#0xcc <$t.2+0xe2>
;         (2, [a, b, ..]) => {
 8002f82:      	ldr	r0, [sp, #0x58]
 8002f84:      	cmp	r0, #0x1
 8002f86:      	bhi	#0x1a <$t.2+0x36>
 8002f88:      	b	#-0x16 <$t.2+0x8>
;         (3, [a, b, c, ..]) => {
 8002f8a:      	ldr	r0, [sp, #0x58]
 8002f8c:      	cmp	r0, #0x2
 8002f8e:      	bhi	#0x36 <$t.2+0x5a>
 8002f90:      	b	#-0x1e <$t.2+0x8>
;         (4, [a, b, c, d, ..]) => {
 8002f92:      	ldr	r0, [sp, #0x58]
 8002f94:      	cmp	r0, #0x3
 8002f96:      	bhi	#0x64 <$t.2+0x90>
 8002f98:      	b	#-0x26 <$t.2+0x8>
;         (1, [a, ..]) => {
 8002f9a:      	ldr	r0, [sp, #0x54]
 8002f9c:      	str	r0, [sp, #0xd0]
;             *a = code as u8;
 8002f9e:      	ldr	r1, [sp, #0x48]
 8002fa0:      	strb	r1, [r0]
;     match (len, &mut dst[..]) {
 8002fa2:      	b	#0x14c <$t.2+0x184>
;         (2, [a, b, ..]) => {
 8002fa4:      	ldr	r0, [sp, #0x54]
 8002fa6:      	str	r0, [sp, #0xc8]
 8002fa8:      	ldr	r1, [sp, #0x54]
 8002faa:      	adds	r2, r1, #0x1
 8002fac:      	str	r2, [sp, #0xcc]
;             *a = (code >> 6 & 0x1F) as u8 | TAG_TWO_B;
 8002fae:      	ldr	r2, [sp, #0x48]
 8002fb0:      	lsrs	r2, r2, #0x6
 8002fb2:      	movs	r3, #0x6
 8002fb4:      	bfi	r2, r3, #5, #27
 8002fb8:      	strb	r2, [r0]
;             *b = (code & 0x3F) as u8 | TAG_CONT;
 8002fba:      	ldrb.w	r0, [sp, #0x48]
 8002fbe:      	movs	r2, #0x2
 8002fc0:      	bfi	r0, r2, #6, #26
 8002fc4:      	strb	r0, [r1, #0x1]
;     match (len, &mut dst[..]) {
 8002fc6:      	b	#0x128 <$t.2+0x184>
;         (3, [a, b, c, ..]) => {
 8002fc8:      	ldr	r0, [sp, #0x54]
 8002fca:      	str	r0, [sp, #0xbc]
 8002fcc:      	ldr	r1, [sp, #0x54]
 8002fce:      	adds	r2, r1, #0x1
 8002fd0:      	str	r2, [sp, #0xc0]
 8002fd2:      	ldr	r2, [sp, #0x54]
 8002fd4:      	adds	r3, r2, #0x2
 8002fd6:      	str	r3, [sp, #0xc4]
;             *a = (code >> 12 & 0x0F) as u8 | TAG_THREE_B;
 8002fd8:      	ldr	r3, [sp, #0x48]
 8002fda:      	lsrs	r3, r3, #0xc
 8002fdc:      	mov.w	r12, #0xe
 8002fe0:      	bfi	r3, r12, #4, #28
 8002fe4:      	strb	r3, [r0]
;             *b = (code >> 6 & 0x3F) as u8 | TAG_CONT;
 8002fe6:      	ldr	r0, [sp, #0x48]
 8002fe8:      	lsrs	r0, r0, #0x6
 8002fea:      	movs	r3, #0x2
 8002fec:      	bfi	r0, r3, #6, #26
 8002ff0:      	strb	r0, [r1, #0x1]
;             *c = (code & 0x3F) as u8 | TAG_CONT;
 8002ff2:      	ldrb.w	r0, [sp, #0x48]
 8002ff6:      	bfi	r0, r3, #6, #26
 8002ffa:      	strb	r0, [r2, #0x2]
;     match (len, &mut dst[..]) {
 8002ffc:      	b	#0xf2 <$t.2+0x184>
;         (4, [a, b, c, d, ..]) => {
 8002ffe:      	ldr	r0, [sp, #0x54]
 8003000:      	str	r0, [sp, #0xac]
 8003002:      	ldr	r1, [sp, #0x54]
 8003004:      	adds	r2, r1, #0x1
 8003006:      	str	r2, [sp, #0xb0]
 8003008:      	ldr	r2, [sp, #0x54]
 800300a:      	adds	r3, r2, #0x2
 800300c:      	str	r3, [sp, #0xb4]
 800300e:      	ldr	r3, [sp, #0x54]
 8003010:      	add.w	r12, r3, #0x3
 8003014:      	str.w	r12, [sp, #0xb8]
;             *a = (code >> 18 & 0x07) as u8 | TAG_FOUR_B;
 8003018:      	ldr.w	r12, [sp, #0x48]
 800301c:      	lsr.w	r12, r12, #0x12
 8003020:      	mov.w	lr, #0x1e
 8003024:      	bfi	r12, lr, #3, #29
 8003028:      	strb.w	r12, [r0]
;             *b = (code >> 12 & 0x3F) as u8 | TAG_CONT;
 800302c:      	ldr	r0, [sp, #0x48]
 800302e:      	lsrs	r0, r0, #0xc
 8003030:      	mov.w	r12, #0x2
 8003034:      	bfi	r0, r12, #6, #26
 8003038:      	strb	r0, [r1, #0x1]
;             *c = (code >> 6 & 0x3F) as u8 | TAG_CONT;
 800303a:      	ldr	r0, [sp, #0x48]
 800303c:      	lsrs	r0, r0, #0x6
 800303e:      	bfi	r0, r12, #6, #26
 8003042:      	strb	r0, [r2, #0x2]
;             *d = (code & 0x3F) as u8 | TAG_CONT;
 8003044:      	ldrb.w	r0, [sp, #0x48]
 8003048:      	bfi	r0, r12, #6, #26
 800304c:      	strb	r0, [r3, #0x3]
;     match (len, &mut dst[..]) {
 800304e:      	b	#0xa0 <$t.2+0x184>
 8003050:      	add	r0, sp, #0x4c
;         _ => panic!(
 8003052:      	str	r0, [sp, #0x90]
 8003054:      	add	r0, sp, #0x48
 8003056:      	str	r0, [sp, #0x94]
 8003058:      	add	r0, sp, #0x9c
 800305a:      	str	r0, [sp, #0x98]
 800305c:      	ldr	r0, [sp, #0x90]
 800305e:      	str	r0, [sp, #0xd4]
 8003060:      	ldr	r1, [sp, #0x94]
 8003062:      	str	r1, [sp, #0xd8]
 8003064:      	ldr	r2, [sp, #0x98]
 8003066:      	str	r2, [sp, #0xdc]
 8003068:      	movw	r3, #0x2b09
 800306c:      	movt	r3, #0x800
 8003070:      	str	r1, [sp, #0x2c]
 8003072:      	mov	r1, r3
 8003074:      	str	r2, [sp, #0x28]
 8003076:      	bl	#0x10a
 800307a:      	str	r0, [sp, #0x24]
 800307c:      	str	r1, [sp, #0x20]
 800307e:      	b	#-0x2 <$t.2+0x112>
 8003080:      	movw	r1, #0x2a37
 8003084:      	movt	r1, #0x800
 8003088:      	ldr	r0, [sp, #0x2c]
 800308a:      	bl	#-0x38e
 800308e:      	str	r0, [sp, #0x1c]
 8003090:      	str	r1, [sp, #0x18]
 8003092:      	b	#-0x2 <$t.2+0x126>
 8003094:      	movw	r1, #0x2b09
 8003098:      	movt	r1, #0x800
 800309c:      	ldr	r0, [sp, #0x28]
 800309e:      	bl	#0xe2
 80030a2:      	str	r0, [sp, #0x14]
 80030a4:      	str	r1, [sp, #0x10]
 80030a6:      	b	#-0x2 <$t.2+0x13a>
 80030a8:      	ldr	r0, [sp, #0x24]
 80030aa:      	str	r0, [sp, #0x78]
 80030ac:      	ldr	r1, [sp, #0x20]
 80030ae:      	str	r1, [sp, #0x7c]
 80030b0:      	ldr	r2, [sp, #0x1c]
 80030b2:      	str	r2, [sp, #0x80]
 80030b4:      	ldr	r3, [sp, #0x18]
 80030b6:      	str	r3, [sp, #0x84]
 80030b8:      	ldr.w	r12, [sp, #0x14]
 80030bc:      	str.w	r12, [sp, #0x88]
 80030c0:      	ldr.w	lr, [sp, #0x10]
 80030c4:      	str.w	lr, [sp, #0x8c]
 80030c8:      	mov	r4, sp
 80030ca:      	movs	r5, #0x3
 80030cc:      	str	r5, [r4]
 80030ce:      	movw	r1, #0x40c8
 80030d2:      	movt	r1, #0x800
 80030d6:      	add	r0, sp, #0x60
 80030d8:      	add	r3, sp, #0x78
 80030da:      	mov	r2, r5
 80030dc:      	bl	#-0x3b6
 80030e0:      	b	#-0x2 <$t.2+0x174>
 80030e2:      	movw	r1, #0x40e0
 80030e6:      	movt	r1, #0x800
 80030ea:      	add	r0, sp, #0x60
 80030ec:      	bl	#-0xfba
 80030f0:      	trap
;     &mut dst[..len]
 80030f2:      	ldr	r0, [sp, #0x4c]
 80030f4:      	str	r0, [sp, #0xa0]
 80030f6:      	ldr	r2, [sp, #0xa0]
 80030f8:      	movw	r3, #0x407c
 80030fc:      	movt	r3, #0x800
 8003100:      	ldr	r0, [sp, #0x40]
 8003102:      	ldr	r1, [sp, #0x44]
 8003104:      	bl	#0xcc
 8003108:      	str	r0, [sp, #0xc]
 800310a:      	str	r1, [sp, #0x8]
 800310c:      	b	#-0x2 <$t.2+0x1a0>
; }
 800310e:      	ldr	r0, [sp, #0xc]
 8003110:      	ldr	r1, [sp, #0x8]
 8003112:      	add	sp, #0xe0
 8003114:      	pop	{r4, r5, r7, pc}

08003116 <core::char::methods::<impl char>::encode_utf8::h0122fcf555e38ff3>:
;     pub fn encode_utf8(self, dst: &mut [u8]) -> &mut str {
 8003116:      	push	{r7, lr}
 8003118:      	mov	r7, sp
 800311a:      	sub	sp, #0x20
 800311c:      	str	r0, [sp, #0x14]
 800311e:      	str	r1, [sp, #0x18]
 8003120:      	str	r2, [sp, #0x1c]
;         unsafe { from_utf8_unchecked_mut(encode_utf8_raw(self as u32, dst)) }
 8003122:      	bl	#-0x212
 8003126:      	str	r0, [sp, #0x10]
 8003128:      	str	r1, [sp, #0xc]
 800312a:      	b	#-0x2 <core::char::methods::<impl char>::encode_utf8::h0122fcf555e38ff3+0x16>
 800312c:      	ldr	r0, [sp, #0x10]
 800312e:      	ldr	r1, [sp, #0xc]
 8003130:      	bl	#0x7a
 8003134:      	str	r0, [sp, #0x8]
 8003136:      	str	r1, [sp, #0x4]
 8003138:      	b	#-0x2 <core::char::methods::<impl char>::encode_utf8::h0122fcf555e38ff3+0x24>
;     }
 800313a:      	ldr	r0, [sp, #0x8]
 800313c:      	ldr	r1, [sp, #0x4]
 800313e:      	add	sp, #0x20
 8003140:      	pop	{r7, pc}

08003142 <core::char::methods::len_utf8::hf176799754654f7b>:
; fn len_utf8(code: u32) -> usize {
 8003142:      	sub	sp, #0xc
 8003144:      	str	r0, [sp, #0x8]
;     if code < MAX_ONE_B {
 8003146:      	cmp	r0, #0x80
 8003148:      	str	r0, [sp]
 800314a:      	blo	#0xa <core::char::methods::len_utf8::hf176799754654f7b+0x16>
 800314c:      	b	#-0x2 <core::char::methods::len_utf8::hf176799754654f7b+0xc>
;     } else if code < MAX_TWO_B {
 800314e:      	ldr	r0, [sp]
 8003150:      	cmp.w	r0, #0x800
 8003154:      	blo	#0x10 <core::char::methods::len_utf8::hf176799754654f7b+0x26>
 8003156:      	b	#0x4 <core::char::methods::len_utf8::hf176799754654f7b+0x1c>
 8003158:      	movs	r0, #0x1
;         1
 800315a:      	str	r0, [sp, #0x4]
;     if code < MAX_ONE_B {
 800315c:      	b	#0x1e <core::char::methods::len_utf8::hf176799754654f7b+0x3c>
;     } else if code < MAX_THREE_B {
 800315e:      	ldr	r0, [sp]
 8003160:      	cmp.w	r0, #0x10000
 8003164:      	blo	#0xc <core::char::methods::len_utf8::hf176799754654f7b+0x32>
 8003166:      	b	#0x4 <core::char::methods::len_utf8::hf176799754654f7b+0x2c>
 8003168:      	movs	r0, #0x2
;         2
 800316a:      	str	r0, [sp, #0x4]
;     } else if code < MAX_TWO_B {
 800316c:      	b	#0xc <core::char::methods::len_utf8::hf176799754654f7b+0x3a>
 800316e:      	movs	r0, #0x4
;         4
 8003170:      	str	r0, [sp, #0x4]
;     } else if code < MAX_THREE_B {
 8003172:      	b	#0x4 <core::char::methods::len_utf8::hf176799754654f7b+0x38>
 8003174:      	movs	r0, #0x3
;         3
 8003176:      	str	r0, [sp, #0x4]
;     } else if code < MAX_THREE_B {
 8003178:      	b	#-0x2 <core::char::methods::len_utf8::hf176799754654f7b+0x38>
;     } else if code < MAX_TWO_B {
 800317a:      	b	#-0x2 <core::char::methods::len_utf8::hf176799754654f7b+0x3a>
;     if code < MAX_ONE_B {
 800317c:      	b	#-0x2 <core::char::methods::len_utf8::hf176799754654f7b+0x3c>
; }
 800317e:      	ldr	r0, [sp, #0x4]
 8003180:      	add	sp, #0xc
 8003182:      	bx	lr

08003184 <core::fmt::ArgumentV1::new::hd113442ebe8fc269>:
;     pub fn new<'b, T>(x: &'b T, f: fn(&T, &mut Formatter<'_>) -> Result) -> ArgumentV1<'b> {
 8003184:      	sub	sp, #0x24
 8003186:      	str	r0, [sp, #0x14]
 8003188:      	str	r1, [sp, #0x18]
;         unsafe { ArgumentV1 { formatter: mem::transmute(f), value: mem::transmute(x) } }
 800318a:      	str	r1, [sp, #0x1c]
 800318c:      	ldr	r1, [sp, #0x1c]
 800318e:      	str	r0, [sp, #0x8]
 8003190:      	str	r1, [sp, #0x4]
 8003192:      	b	#-0x2 <core::fmt::ArgumentV1::new::hd113442ebe8fc269+0x10>
 8003194:      	ldr	r0, [sp, #0x8]
 8003196:      	str	r0, [sp, #0x20]
 8003198:      	ldr	r1, [sp, #0x20]
 800319a:      	str	r1, [sp]
 800319c:      	b	#-0x2 <core::fmt::ArgumentV1::new::hd113442ebe8fc269+0x1a>
 800319e:      	ldr	r0, [sp]
 80031a0:      	str	r0, [sp, #0xc]
 80031a2:      	ldr	r1, [sp, #0x4]
 80031a4:      	str	r1, [sp, #0x10]
;     }
 80031a6:      	ldr	r0, [sp, #0xc]
 80031a8:      	ldr	r1, [sp, #0x10]
 80031aa:      	add	sp, #0x24
 80031ac:      	bx	lr

080031ae <core::str::converts::from_utf8_unchecked_mut::he4114f628566a11a>:
; pub unsafe fn from_utf8_unchecked_mut(v: &mut [u8]) -> &mut str {
 80031ae:      	sub	sp, #0x8
 80031b0:      	str	r0, [sp]
 80031b2:      	str	r1, [sp, #0x4]
; }
 80031b4:      	add	sp, #0x8
 80031b6:      	bx	lr

080031b8 <core::slice::index::<impl core::ops::index::IndexMut<I> for [T]>::index_mut::h8c808cd260b039a2>:
;     fn index_mut(&mut self, index: I) -> &mut I::Output {
 80031b8:      	push	{r7, lr}
 80031ba:      	mov	r7, sp
 80031bc:      	sub	sp, #0x18
 80031be:      	str	r0, [sp, #0xc]
 80031c0:      	str	r1, [sp, #0x10]
;         index.index_mut(self)
 80031c2:      	bl	#0x134
 80031c6:      	str	r0, [sp, #0x8]
 80031c8:      	str	r1, [sp, #0x4]
 80031ca:      	b	#-0x2 <core::slice::index::<impl core::ops::index::IndexMut<I> for [T]>::index_mut::h8c808cd260b039a2+0x14>
;     }
 80031cc:      	ldr	r0, [sp, #0x8]
 80031ce:      	ldr	r1, [sp, #0x4]
 80031d0:      	add	sp, #0x18
 80031d2:      	pop	{r7, pc}

080031d4 <core::slice::index::<impl core::ops::index::IndexMut<I> for [T]>::index_mut::hdb370f011351e38e>:
;     fn index_mut(&mut self, index: I) -> &mut I::Output {
 80031d4:      	push	{r7, lr}
 80031d6:      	mov	r7, sp
 80031d8:      	sub	sp, #0x20
 80031da:      	str	r0, [sp, #0x14]
 80031dc:      	str	r1, [sp, #0x18]
 80031de:      	str	r2, [sp, #0x1c]
;         index.index_mut(self)
 80031e0:      	str	r0, [sp, #0x10]
 80031e2:      	mov	r0, r2
 80031e4:      	ldr	r2, [sp, #0x10]
 80031e6:      	str	r1, [sp, #0xc]
 80031e8:      	mov	r1, r2
 80031ea:      	ldr	r2, [sp, #0xc]
 80031ec:      	bl	#0xca
 80031f0:      	str	r0, [sp, #0x8]
 80031f2:      	str	r1, [sp, #0x4]
 80031f4:      	b	#-0x2 <core::slice::index::<impl core::ops::index::IndexMut<I> for [T]>::index_mut::hdb370f011351e38e+0x22>
;     }
 80031f6:      	ldr	r0, [sp, #0x8]
 80031f8:      	ldr	r1, [sp, #0x4]
 80031fa:      	add	sp, #0x20
 80031fc:      	pop	{r7, pc}

080031fe <<core::ops::range::Range<usize> as core::slice::index::SliceIndex<[T]>>::get_unchecked_mut::h2036545e447baf48>:
;     unsafe fn get_unchecked_mut(self, slice: *mut [T]) -> *mut [T] {
 80031fe:      	push	{r7, lr}
 8003200:      	mov	r7, sp
 8003202:      	sub	sp, #0x28
 8003204:      	str	r0, [sp, #0x18]
 8003206:      	str	r1, [sp, #0x1c]
 8003208:      	str	r2, [sp, #0x20]
 800320a:      	str	r3, [sp, #0x24]
;             ptr::slice_from_raw_parts_mut(slice.as_mut_ptr().add(self.start), self.end - self.start)
 800320c:      	str	r0, [sp, #0x14]
 800320e:      	mov	r0, r2
 8003210:      	str	r1, [sp, #0x10]
 8003212:      	mov	r1, r3
 8003214:      	bl	#0x106
 8003218:      	str	r0, [sp, #0xc]
 800321a:      	b	#-0x2 <<core::ops::range::Range<usize> as core::slice::index::SliceIndex<[T]>>::get_unchecked_mut::h2036545e447baf48+0x1e>
 800321c:      	ldr	r0, [sp, #0xc]
 800321e:      	ldr	r1, [sp, #0x14]
 8003220:      	bl	#-0x1308
 8003224:      	str	r0, [sp, #0x8]
 8003226:      	b	#-0x2 <<core::ops::range::Range<usize> as core::slice::index::SliceIndex<[T]>>::get_unchecked_mut::h2036545e447baf48+0x2a>
 8003228:      	ldr	r0, [sp, #0x10]
 800322a:      	ldr	r1, [sp, #0x14]
 800322c:      	subs	r1, r0, r1
 800322e:      	ldr	r0, [sp, #0x8]
 8003230:      	bl	#0xd0
 8003234:      	str	r0, [sp, #0x4]
 8003236:      	str	r1, [sp]
 8003238:      	b	#-0x2 <<core::ops::range::Range<usize> as core::slice::index::SliceIndex<[T]>>::get_unchecked_mut::h2036545e447baf48+0x3c>
;     }
 800323a:      	ldr	r0, [sp, #0x4]
 800323c:      	ldr	r1, [sp]
 800323e:      	add	sp, #0x28
 8003240:      	pop	{r7, pc}

08003242 <<core::ops::range::Range<usize> as core::slice::index::SliceIndex<[T]>>::index_mut::h25376e6793a07d26>:
;     fn index_mut(self, slice: &mut [T]) -> &mut [T] {
 8003242:      	push	{r7, lr}
 8003244:      	mov	r7, sp
 8003246:      	sub	sp, #0x38
 8003248:      	ldr.w	r12, [r7, #0x8]
 800324c:      	str	r0, [sp, #0x28]
 800324e:      	str	r1, [sp, #0x2c]
 8003250:      	str	r2, [sp, #0x30]
 8003252:      	str	r3, [sp, #0x34]
;         if self.start > self.end {
 8003254:      	cmp	r0, r1
 8003256:      	str	r3, [sp, #0x24]
 8003258:      	str	r2, [sp, #0x20]
 800325a:      	str	r1, [sp, #0x1c]
 800325c:      	str	r0, [sp, #0x18]
 800325e:      	str.w	r12, [sp, #0x14]
 8003262:      	bhi	#0xc <<core::ops::range::Range<usize> as core::slice::index::SliceIndex<[T]>>::index_mut::h25376e6793a07d26+0x30>
 8003264:      	b	#-0x2 <<core::ops::range::Range<usize> as core::slice::index::SliceIndex<[T]>>::index_mut::h25376e6793a07d26+0x24>
;         } else if self.end > slice.len() {
 8003266:      	ldr	r0, [sp, #0x20]
 8003268:      	ldr	r1, [sp, #0x24]
 800326a:      	bl	#-0x1324
 800326e:      	str	r0, [sp, #0x10]
 8003270:      	b	#0xa <<core::ops::range::Range<usize> as core::slice::index::SliceIndex<[T]>>::index_mut::h25376e6793a07d26+0x3c>
;             slice_index_order_fail(self.start, self.end);
 8003272:      	ldr	r0, [sp, #0x18]
 8003274:      	ldr	r1, [sp, #0x1c]
 8003276:      	ldr	r2, [sp, #0x14]
 8003278:      	bl	#-0x888
 800327c:      	trap
;         } else if self.end > slice.len() {
 800327e:      	ldr	r0, [sp, #0x1c]
 8003280:      	ldr	r1, [sp, #0x10]
 8003282:      	cmp	r0, r1
 8003284:      	bhi	#0x12 <<core::ops::range::Range<usize> as core::slice::index::SliceIndex<[T]>>::index_mut::h25376e6793a07d26+0x58>
 8003286:      	b	#-0x2 <<core::ops::range::Range<usize> as core::slice::index::SliceIndex<[T]>>::index_mut::h25376e6793a07d26+0x46>
;         unsafe { &mut *self.get_unchecked_mut(slice) }
 8003288:      	ldr	r0, [sp, #0x18]
 800328a:      	ldr	r1, [sp, #0x1c]
 800328c:      	ldr	r2, [sp, #0x20]
 800328e:      	ldr	r3, [sp, #0x24]
 8003290:      	bl	#-0x96
 8003294:      	str	r0, [sp, #0xc]
 8003296:      	str	r1, [sp, #0x8]
 8003298:      	b	#0x16 <<core::ops::range::Range<usize> as core::slice::index::SliceIndex<[T]>>::index_mut::h25376e6793a07d26+0x70>
;             slice_end_index_len_fail(self.end, slice.len());
 800329a:      	ldr	r0, [sp, #0x20]
 800329c:      	ldr	r1, [sp, #0x24]
 800329e:      	bl	#-0x1358
 80032a2:      	str	r0, [sp, #0x4]
 80032a4:      	b	#-0x2 <<core::ops::range::Range<usize> as core::slice::index::SliceIndex<[T]>>::index_mut::h25376e6793a07d26+0x64>
 80032a6:      	ldr	r0, [sp, #0x1c]
 80032a8:      	ldr	r1, [sp, #0x4]
 80032aa:      	ldr	r2, [sp, #0x14]
 80032ac:      	bl	#-0x8fe
 80032b0:      	trap
;     }
 80032b2:      	ldr	r0, [sp, #0xc]
 80032b4:      	ldr	r1, [sp, #0x8]
 80032b6:      	add	sp, #0x38
 80032b8:      	pop	{r7, pc}

080032ba <<core::ops::range::RangeTo<usize> as core::slice::index::SliceIndex<[T]>>::index_mut::h97ba7b20eb95408a>:
;     fn index_mut(self, slice: &mut [T]) -> &mut [T] {
 80032ba:      	push	{r7, lr}
 80032bc:      	mov	r7, sp
 80032be:      	sub	sp, #0x28
 80032c0:      	str	r0, [sp, #0x1c]
 80032c2:      	str	r1, [sp, #0x20]
 80032c4:      	str	r2, [sp, #0x24]
 80032c6:      	mov.w	r12, #0x0
;         (0..self.end).index_mut(slice)
 80032ca:      	str.w	r12, [sp, #0x14]
 80032ce:      	str	r0, [sp, #0x18]
 80032d0:      	ldr	r0, [sp, #0x14]
 80032d2:      	ldr.w	r12, [sp, #0x18]
 80032d6:      	mov	lr, sp
 80032d8:      	str.w	r3, [lr]
 80032dc:      	str	r1, [sp, #0x10]
 80032de:      	mov	r1, r12
 80032e0:      	ldr	r3, [sp, #0x10]
 80032e2:      	str	r2, [sp, #0xc]
 80032e4:      	mov	r2, r3
 80032e6:      	ldr	r3, [sp, #0xc]
 80032e8:      	bl	#-0xaa
 80032ec:      	str	r0, [sp, #0x8]
 80032ee:      	str	r1, [sp, #0x4]
 80032f0:      	b	#-0x2 <<core::ops::range::RangeTo<usize> as core::slice::index::SliceIndex<[T]>>::index_mut::h97ba7b20eb95408a+0x38>
;     }
 80032f2:      	ldr	r0, [sp, #0x8]
 80032f4:      	ldr	r1, [sp, #0x4]
 80032f6:      	add	sp, #0x28
 80032f8:      	pop	{r7, pc}

080032fa <<core::ops::range::RangeFull as core::slice::index::SliceIndex<[T]>>::index_mut::h11cdc8f47850f5a5>:
;     fn index_mut(self, slice: &mut [T]) -> &mut [T] {
 80032fa:      	sub	sp, #0xc
 80032fc:      	str	r0, [sp, #0x4]
 80032fe:      	str	r1, [sp, #0x8]
;     }
 8003300:      	add	sp, #0xc
 8003302:      	bx	lr

08003304 <core::ptr::slice_from_raw_parts_mut::h8b7b8eb9d51711d7>:
; pub const fn slice_from_raw_parts_mut<T>(data: *mut T, len: usize) -> *mut [T] {
 8003304:      	sub	sp, #0x18
 8003306:      	str	r0, [sp, #0x10]
 8003308:      	str	r1, [sp, #0x14]
;     unsafe { Repr { raw: FatPtr { data, len } }.rust_mut }
 800330a:      	str	r0, [sp, #0x8]
 800330c:      	str	r1, [sp, #0xc]
 800330e:      	ldr	r0, [sp, #0x8]
 8003310:      	ldr	r1, [sp, #0xc]
 8003312:      	str	r0, [sp]
 8003314:      	str	r1, [sp, #0x4]
 8003316:      	ldr	r0, [sp]
 8003318:      	ldr	r1, [sp, #0x4]
; }
 800331a:      	add	sp, #0x18
 800331c:      	bx	lr

0800331e <core::ptr::mut_ptr::<impl *mut [T]>::as_mut_ptr::h874acc65f2a8fdbf>:
;     pub const fn as_mut_ptr(self) -> *mut T {
 800331e:      	sub	sp, #0x8
 8003320:      	str	r0, [sp]
 8003322:      	str	r1, [sp, #0x4]
;     }
 8003324:      	add	sp, #0x8
 8003326:      	bx	lr

08003328 <_ZN4core6result19Result$LT$T$C$E$GT$2ok17h37867028c560dcf5E>:
;     pub fn ok(self) -> Option<T> {
 8003328:      	sub	sp, #0x8
 800332a:      	mov	r1, r0
 800332c:      	strb.w	r0, [sp, #0x2]
;             Ok(x) => Some(x),
 8003330:      	ldrb.w	r0, [sp, #0x2]
 8003334:      	lsls	r2, r0, #0x1f
 8003336:      	cmp	r2, #0x0
 8003338:      	beq	#0xa <_ZN4core6result19Result$LT$T$C$E$GT$2ok17h37867028c560dcf5E+0x1e>
 800333a:      	b	#-0x2 <_ZN4core6result19Result$LT$T$C$E$GT$2ok17h37867028c560dcf5E+0x14>
 800333c:      	movs	r0, #0x0
;             Err(_) => None,
 800333e:      	strb.w	r0, [sp, #0x3]
;         match self {
 8003342:      	b	#0x12 <_ZN4core6result19Result$LT$T$C$E$GT$2ok17h37867028c560dcf5E+0x30>
 8003344:      	trap
 8003346:      	movs	r0, #0x1
;             Ok(x) => Some(x),
 8003348:      	strb.w	r0, [sp, #0x3]
;     }
 800334c:      	b	#0x8 <_ZN4core6result19Result$LT$T$C$E$GT$2ok17h37867028c560dcf5E+0x30>
 800334e:      	ldrb.w	r0, [sp, #0x3]
 8003352:      	add	sp, #0x8
 8003354:      	bx	lr
 8003356:      	b	#-0xc <_ZN4core6result19Result$LT$T$C$E$GT$2ok17h37867028c560dcf5E+0x26>
 8003358:      	ldrb.w	r0, [sp, #0x2]
 800335c:      	lsls	r0, r0, #0x1f
 800335e:      	cmp	r0, #0x0
 8003360:      	beq	#-0x16 <_ZN4core6result19Result$LT$T$C$E$GT$2ok17h37867028c560dcf5E+0x26>
 8003362:      	b	#-0x10 <_ZN4core6result19Result$LT$T$C$E$GT$2ok17h37867028c560dcf5E+0x2e>

08003364 <cortex_m::itm::write_words::h68a029408924bdf1>:
; unsafe fn write_words(stim: &mut Stim, bytes: &[u32]) {
 8003364:      	push	{r7, lr}
 8003366:      	mov	r7, sp
 8003368:      	sub	sp, #0x58
 800336a:      	str	r0, [sp, #0x44]
 800336c:      	str	r1, [sp, #0x48]
 800336e:      	str	r2, [sp, #0x4c]
;     let mut p = bytes.as_ptr();
 8003370:      	str	r0, [sp, #0x24]
 8003372:      	mov	r0, r1
 8003374:      	str	r1, [sp, #0x20]
 8003376:      	mov	r1, r2
 8003378:      	str	r2, [sp, #0x1c]
 800337a:      	bl	#-0x1414
 800337e:      	str	r0, [sp, #0x28]
 8003380:      	b	#-0x2 <cortex_m::itm::write_words::h68a029408924bdf1+0x1e>
;     for _ in 0..bytes.len() {
 8003382:      	ldr	r0, [sp, #0x20]
 8003384:      	ldr	r1, [sp, #0x1c]
 8003386:      	bl	#-0x1430
 800338a:      	str	r0, [sp, #0x18]
 800338c:      	b	#-0x2 <cortex_m::itm::write_words::h68a029408924bdf1+0x2a>
 800338e:      	movs	r0, #0x0
;     for _ in 0..bytes.len() {
 8003390:      	str	r0, [sp, #0x2c]
 8003392:      	ldr	r0, [sp, #0x18]
 8003394:      	str	r0, [sp, #0x30]
 8003396:      	ldr	r0, [sp, #0x2c]
 8003398:      	ldr	r1, [sp, #0x30]
 800339a:      	bl	#0x41a
 800339e:      	str	r0, [sp, #0x14]
 80033a0:      	str	r1, [sp, #0x10]
 80033a2:      	b	#-0x2 <cortex_m::itm::write_words::h68a029408924bdf1+0x40>
 80033a4:      	ldr	r0, [sp, #0x14]
 80033a6:      	str	r0, [sp, #0x34]
 80033a8:      	ldr	r1, [sp, #0x10]
 80033aa:      	str	r1, [sp, #0x38]
 80033ac:      	b	#-0x2 <cortex_m::itm::write_words::h68a029408924bdf1+0x4a>
 80033ae:      	add	r0, sp, #0x34
;     for _ in 0..bytes.len() {
 80033b0:      	bl	#0x3a8
 80033b4:      	str	r1, [sp, #0x40]
 80033b6:      	str	r0, [sp, #0x3c]
 80033b8:      	b	#-0x2 <cortex_m::itm::write_words::h68a029408924bdf1+0x56>
 80033ba:      	ldr	r0, [sp, #0x3c]
 80033bc:      	cmp	r0, #0x0
 80033be:      	beq	#0x2 <cortex_m::itm::write_words::h68a029408924bdf1+0x60>
 80033c0:      	b	#-0x2 <cortex_m::itm::write_words::h68a029408924bdf1+0x5e>
 80033c2:      	b	#0x4 <cortex_m::itm::write_words::h68a029408924bdf1+0x66>
; }
 80033c4:      	add	sp, #0x58
 80033c6:      	pop	{r7, pc}
;     for _ in 0..bytes.len() {
 80033c8:      	trap
 80033ca:      	ldr	r0, [sp, #0x40]
 80033cc:      	str	r0, [sp, #0x50]
 80033ce:      	str	r0, [sp, #0x54]
;         while !stim.is_fifo_ready() {}
 80033d0:      	b	#-0x2 <cortex_m::itm::write_words::h68a029408924bdf1+0x6e>
 80033d2:      	ldr	r0, [sp, #0x24]
 80033d4:      	bl	#0x490
 80033d8:      	str	r0, [sp, #0xc]
 80033da:      	b	#-0x2 <cortex_m::itm::write_words::h68a029408924bdf1+0x78>
 80033dc:      	ldr	r0, [sp, #0xc]
 80033de:      	lsls	r1, r0, #0x1f
 80033e0:      	cmp	r1, #0x0
 80033e2:      	beq	#0xa <cortex_m::itm::write_words::h68a029408924bdf1+0x8c>
 80033e4:      	b	#-0x2 <cortex_m::itm::write_words::h68a029408924bdf1+0x82>
;         stim.write_u32(ptr::read(p));
 80033e6:      	ldr	r0, [sp, #0x28]
 80033e8:      	bl	#-0x15e4
 80033ec:      	str	r0, [sp, #0x8]
 80033ee:      	b	#0x0 <cortex_m::itm::write_words::h68a029408924bdf1+0x8e>
;         while !stim.is_fifo_ready() {}
 80033f0:      	b	#-0x22 <cortex_m::itm::write_words::h68a029408924bdf1+0x6e>
;         stim.write_u32(ptr::read(p));
 80033f2:      	ldr	r0, [sp, #0x24]
 80033f4:      	ldr	r1, [sp, #0x8]
 80033f6:      	bl	#0x44c
 80033fa:      	b	#-0x2 <cortex_m::itm::write_words::h68a029408924bdf1+0x98>
;         p = p.offset(1);
 80033fc:      	ldr	r0, [sp, #0x28]
 80033fe:      	movs	r1, #0x1
 8003400:      	bl	#0x340
 8003404:      	str	r0, [sp, #0x4]
 8003406:      	b	#-0x2 <cortex_m::itm::write_words::h68a029408924bdf1+0xa4>
 8003408:      	ldr	r0, [sp, #0x4]
 800340a:      	str	r0, [sp, #0x28]
;     for _ in 0..bytes.len() {
 800340c:      	b	#-0x62 <cortex_m::itm::write_words::h68a029408924bdf1+0x4a>

0800340e <cortex_m::itm::write_all::he15fa3f3f1d9858e>:
; pub fn write_all(port: &mut Stim, buffer: &[u8]) {
 800340e:      	push	{r7, lr}
 8003410:      	mov	r7, sp
 8003412:      	sub	sp, #0x60
 8003414:      	str	r0, [sp, #0x4c]
 8003416:      	str	r1, [sp, #0x50]
 8003418:      	str	r2, [sp, #0x54]
;         let mut len = buffer.len();
 800341a:      	str	r0, [sp, #0x3c]
 800341c:      	mov	r0, r1
 800341e:      	str	r1, [sp, #0x38]
 8003420:      	mov	r1, r2
 8003422:      	str	r2, [sp, #0x34]
 8003424:      	bl	#-0x14de
 8003428:      	str	r0, [sp, #0x44]
 800342a:      	b	#-0x2 <cortex_m::itm::write_all::he15fa3f3f1d9858e+0x1e>
;         let mut ptr = buffer.as_ptr();
 800342c:      	ldr	r0, [sp, #0x38]
 800342e:      	ldr	r1, [sp, #0x34]
 8003430:      	bl	#-0x14c0
 8003434:      	str	r0, [sp, #0x48]
 8003436:      	b	#-0x2 <cortex_m::itm::write_all::he15fa3f3f1d9858e+0x2a>
;         if len == 0 {
 8003438:      	ldr	r0, [sp, #0x44]
 800343a:      	cmp	r0, #0x0
 800343c:      	beq	#0xc <cortex_m::itm::write_all::he15fa3f3f1d9858e+0x3e>
 800343e:      	b	#-0x2 <cortex_m::itm::write_all::he15fa3f3f1d9858e+0x32>
;         if ptr as usize % 2 == 1 {
 8003440:      	ldrb.w	r0, [sp, #0x48]
 8003444:      	lsls	r0, r0, #0x1f
 8003446:      	cmp	r0, #0x0
 8003448:      	bne	#0x4 <cortex_m::itm::write_all::he15fa3f3f1d9858e+0x42>
 800344a:      	b	#0x0 <cortex_m::itm::write_all::he15fa3f3f1d9858e+0x40>
; //! Low level access to Cortex-M processors
 800344c:      	b	#0x10a <cortex_m::itm::write_all::he15fa3f3f1d9858e+0x14c>
;         if ptr as usize % 2 == 1 {
 800344e:      	b	#0x44 <cortex_m::itm::write_all::he15fa3f3f1d9858e+0x88>
;             while !port.is_fifo_ready() {}
 8003450:      	b	#-0x2 <cortex_m::itm::write_all::he15fa3f3f1d9858e+0x44>
 8003452:      	ldr	r0, [sp, #0x3c]
 8003454:      	bl	#0x410
 8003458:      	str	r0, [sp, #0x30]
 800345a:      	b	#-0x2 <cortex_m::itm::write_all::he15fa3f3f1d9858e+0x4e>
 800345c:      	ldr	r0, [sp, #0x30]
 800345e:      	lsls	r1, r0, #0x1f
 8003460:      	cmp	r1, #0x0
 8003462:      	beq	#0xc <cortex_m::itm::write_all::he15fa3f3f1d9858e+0x64>
 8003464:      	b	#-0x2 <cortex_m::itm::write_all::he15fa3f3f1d9858e+0x58>
;             port.write_u8(*ptr);
 8003466:      	ldr	r0, [sp, #0x48]
 8003468:      	ldrb	r1, [r0]
 800346a:      	ldr	r0, [sp, #0x3c]
 800346c:      	bl	#0x38a
 8003470:      	b	#0x0 <cortex_m::itm::write_all::he15fa3f3f1d9858e+0x66>
;             while !port.is_fifo_ready() {}
 8003472:      	b	#-0x24 <cortex_m::itm::write_all::he15fa3f3f1d9858e+0x44>
;             ptr = ptr.offset(1);
 8003474:      	ldr	r0, [sp, #0x48]
 8003476:      	movs	r1, #0x1
 8003478:      	bl	#0x2b2
 800347c:      	str	r0, [sp, #0x2c]
 800347e:      	b	#-0x2 <cortex_m::itm::write_all::he15fa3f3f1d9858e+0x72>
 8003480:      	ldr	r0, [sp, #0x2c]
 8003482:      	str	r0, [sp, #0x48]
;             len -= 1;
 8003484:      	ldr	r1, [sp, #0x44]
 8003486:      	subs	r2, r1, #0x1
 8003488:      	cmp	r1, #0x1
 800348a:      	str	r2, [sp, #0x28]
 800348c:      	blo	#0xd0 <cortex_m::itm::write_all::he15fa3f3f1d9858e+0x152>
 800348e:      	b	#-0x2 <cortex_m::itm::write_all::he15fa3f3f1d9858e+0x82>
 8003490:      	ldr	r0, [sp, #0x28]
 8003492:      	str	r0, [sp, #0x44]
;         if ptr as usize % 2 == 1 {
 8003494:      	b	#-0x2 <cortex_m::itm::write_all::he15fa3f3f1d9858e+0x88>
;         if ptr as usize % 4 == 2 {
 8003496:      	ldr	r0, [sp, #0x48]
 8003498:      	and	r0, r0, #0x3
 800349c:      	cmp	r0, #0x2
 800349e:      	beq	#0x2 <cortex_m::itm::write_all::he15fa3f3f1d9858e+0x96>
 80034a0:      	b	#-0x2 <cortex_m::itm::write_all::he15fa3f3f1d9858e+0x94>
 80034a2:      	b	#0x86 <cortex_m::itm::write_all::he15fa3f3f1d9858e+0x11e>
;             if len > 1 {
 80034a4:      	ldr	r0, [sp, #0x44]
 80034a6:      	cmp	r0, #0x1
 80034a8:      	bhi	#0x8 <cortex_m::itm::write_all::he15fa3f3f1d9858e+0xa6>
 80034aa:      	b	#-0x2 <cortex_m::itm::write_all::he15fa3f3f1d9858e+0x9e>
;                 if len == 1 {
 80034ac:      	ldr	r0, [sp, #0x44]
 80034ae:      	cmp	r0, #0x1
 80034b0:      	beq	#0x50 <cortex_m::itm::write_all::he15fa3f3f1d9858e+0xf6>
 80034b2:      	b	#0x4c <cortex_m::itm::write_all::he15fa3f3f1d9858e+0xf4>
;                 while !port.is_fifo_ready() {}
 80034b4:      	b	#-0x2 <cortex_m::itm::write_all::he15fa3f3f1d9858e+0xa8>
 80034b6:      	ldr	r0, [sp, #0x3c]
 80034b8:      	bl	#0x3ac
 80034bc:      	str	r0, [sp, #0x24]
 80034be:      	b	#-0x2 <cortex_m::itm::write_all::he15fa3f3f1d9858e+0xb2>
 80034c0:      	ldr	r0, [sp, #0x24]
 80034c2:      	lsls	r1, r0, #0x1f
 80034c4:      	cmp	r1, #0x0
 80034c6:      	beq	#0xa <cortex_m::itm::write_all::he15fa3f3f1d9858e+0xc6>
 80034c8:      	b	#-0x2 <cortex_m::itm::write_all::he15fa3f3f1d9858e+0xbc>
;                 port.write_u16(ptr::read(ptr as *const u16));
 80034ca:      	ldr	r0, [sp, #0x48]
 80034cc:      	bl	#-0x1664
 80034d0:      	str	r0, [sp, #0x20]
 80034d2:      	b	#0x0 <cortex_m::itm::write_all::he15fa3f3f1d9858e+0xc8>
;                 while !port.is_fifo_ready() {}
 80034d4:      	b	#-0x22 <cortex_m::itm::write_all::he15fa3f3f1d9858e+0xa8>
;                 port.write_u16(ptr::read(ptr as *const u16));
 80034d6:      	ldr	r0, [sp, #0x3c]
 80034d8:      	ldr	r1, [sp, #0x20]
 80034da:      	bl	#0x342
 80034de:      	b	#-0x2 <cortex_m::itm::write_all::he15fa3f3f1d9858e+0xd2>
;                 ptr = ptr.offset(2);
 80034e0:      	ldr	r0, [sp, #0x48]
 80034e2:      	movs	r1, #0x2
 80034e4:      	bl	#0x246
 80034e8:      	str	r0, [sp, #0x1c]
 80034ea:      	b	#-0x2 <cortex_m::itm::write_all::he15fa3f3f1d9858e+0xde>
 80034ec:      	ldr	r0, [sp, #0x1c]
 80034ee:      	str	r0, [sp, #0x48]
;                 len -= 2;
 80034f0:      	ldr	r1, [sp, #0x44]
 80034f2:      	subs	r2, r1, #0x2
 80034f4:      	cmp	r1, #0x2
 80034f6:      	str	r2, [sp, #0x18]
 80034f8:      	blo	#0x7c <cortex_m::itm::write_all::he15fa3f3f1d9858e+0x16a>
 80034fa:      	b	#-0x2 <cortex_m::itm::write_all::he15fa3f3f1d9858e+0xee>
 80034fc:      	ldr	r0, [sp, #0x18]
 80034fe:      	str	r0, [sp, #0x44]
;         if ptr as usize % 4 == 2 {
 8003500:      	b	#0x28 <cortex_m::itm::write_all::he15fa3f3f1d9858e+0x11e>
;                 if len == 1 {
 8003502:      	b	#0x24 <cortex_m::itm::write_all::he15fa3f3f1d9858e+0x11c>
;                     while !port.is_fifo_ready() {}
 8003504:      	b	#-0x2 <cortex_m::itm::write_all::he15fa3f3f1d9858e+0xf8>
 8003506:      	ldr	r0, [sp, #0x3c]
 8003508:      	bl	#0x35c
 800350c:      	str	r0, [sp, #0x14]
 800350e:      	b	#-0x2 <cortex_m::itm::write_all::he15fa3f3f1d9858e+0x102>
 8003510:      	ldr	r0, [sp, #0x14]
 8003512:      	lsls	r1, r0, #0x1f
 8003514:      	cmp	r1, #0x0
 8003516:      	beq	#0xc <cortex_m::itm::write_all::he15fa3f3f1d9858e+0x118>
 8003518:      	b	#-0x2 <cortex_m::itm::write_all::he15fa3f3f1d9858e+0x10c>
;                     port.write_u8(*ptr);
 800351a:      	ldr	r0, [sp, #0x48]
 800351c:      	ldrb	r1, [r0]
 800351e:      	ldr	r0, [sp, #0x3c]
 8003520:      	bl	#0x2d6
 8003524:      	b	#0x0 <cortex_m::itm::write_all::he15fa3f3f1d9858e+0x11a>
;                     while !port.is_fifo_ready() {}
 8003526:      	b	#-0x24 <cortex_m::itm::write_all::he15fa3f3f1d9858e+0xf8>
;                 if len == 1 {
 8003528:      	b	#-0x2 <cortex_m::itm::write_all::he15fa3f3f1d9858e+0x11c>
; //! Low level access to Cortex-M processors
 800352a:      	b	#0x2c <cortex_m::itm::write_all::he15fa3f3f1d9858e+0x14c>
;         write_aligned(port, mem::transmute(slice::from_raw_parts(ptr, len)));
 800352c:      	ldr	r0, [sp, #0x48]
 800352e:      	ldr	r1, [sp, #0x44]
 8003530:      	bl	#0x2aa
 8003534:      	str	r0, [sp, #0x10]
 8003536:      	str	r1, [sp, #0xc]
 8003538:      	b	#-0x2 <cortex_m::itm::write_all::he15fa3f3f1d9858e+0x12c>
 800353a:      	ldr	r0, [sp, #0x10]
 800353c:      	str	r0, [sp, #0x58]
 800353e:      	ldr	r1, [sp, #0xc]
 8003540:      	str	r1, [sp, #0x5c]
 8003542:      	ldr	r1, [sp, #0x58]
 8003544:      	ldr	r2, [sp, #0x5c]
 8003546:      	str	r1, [sp, #0x8]
 8003548:      	str	r2, [sp, #0x4]
 800354a:      	b	#-0x2 <cortex_m::itm::write_all::he15fa3f3f1d9858e+0x13e>
 800354c:      	ldr	r0, [sp, #0x3c]
 800354e:      	ldr	r1, [sp, #0x8]
 8003550:      	ldr	r2, [sp, #0x4]
 8003552:      	bl	#0x3a
 8003556:      	b	#-0x2 <cortex_m::itm::write_all::he15fa3f3f1d9858e+0x14a>
; }
 8003558:      	b	#0x0 <cortex_m::itm::write_all::he15fa3f3f1d9858e+0x14e>
 800355a:      	b	#-0x2 <cortex_m::itm::write_all::he15fa3f3f1d9858e+0x14e>
 800355c:      	add	sp, #0x60
 800355e:      	pop	{r7, pc}
;             len -= 1;
 8003560:      	movw	r0, #0x4160
 8003564:      	movt	r0, #0x800
 8003568:      	movw	r2, #0x4144
 800356c:      	movt	r2, #0x800
 8003570:      	movs	r1, #0x21
 8003572:      	bl	#-0x1470
 8003576:      	trap
;                 len -= 2;
 8003578:      	movw	r0, #0x4160
 800357c:      	movt	r0, #0x800
 8003580:      	movw	r2, #0x4184
 8003584:      	movt	r2, #0x800
 8003588:      	movs	r1, #0x21
 800358a:      	bl	#-0x1488
 800358e:      	trap

08003590 <cortex_m::itm::write_aligned::h51a91deec28a6743>:
; pub fn write_aligned(port: &mut Stim, buffer: &Aligned<A4, [u8]>) {
 8003590:      	push	{r7, lr}
 8003592:      	mov	r7, sp
 8003594:      	sub	sp, #0x78
 8003596:      	str	r0, [sp, #0x64]
 8003598:      	str	r1, [sp, #0x68]
 800359a:      	str	r2, [sp, #0x6c]
;         let len = buffer.len();
 800359c:      	str	r0, [sp, #0x54]
 800359e:      	mov	r0, r1
 80035a0:      	str	r1, [sp, #0x50]
 80035a2:      	mov	r1, r2
 80035a4:      	str	r2, [sp, #0x4c]
 80035a6:      	bl	#-0x1698
 80035aa:      	str	r0, [sp, #0x48]
 80035ac:      	str	r1, [sp, #0x44]
 80035ae:      	b	#-0x2 <cortex_m::itm::write_aligned::h51a91deec28a6743+0x20>
 80035b0:      	ldr	r0, [sp, #0x48]
 80035b2:      	ldr	r1, [sp, #0x44]
 80035b4:      	bl	#-0x166e
 80035b8:      	mov	r1, r0
 80035ba:      	str	r0, [sp, #0x70]
 80035bc:      	str	r1, [sp, #0x40]
 80035be:      	b	#-0x2 <cortex_m::itm::write_aligned::h51a91deec28a6743+0x30>
;         if len == 0 {
 80035c0:      	ldr	r0, [sp, #0x40]
 80035c2:      	cmp	r0, #0x0
 80035c4:      	beq	#0x1a <cortex_m::itm::write_aligned::h51a91deec28a6743+0x52>
 80035c6:      	b	#-0x2 <cortex_m::itm::write_aligned::h51a91deec28a6743+0x38>
;         let split = len & !0b11;
 80035c8:      	ldr	r0, [sp, #0x40]
 80035ca:      	bic	r1, r0, #0x3
 80035ce:      	mov	r2, r1
 80035d0:      	str	r1, [sp, #0x74]
;             slice::from_raw_parts(buffer.as_ptr() as *const u32, split >> 2),
 80035d2:      	ldr	r0, [sp, #0x50]
 80035d4:      	ldr	r1, [sp, #0x4c]
 80035d6:      	str	r2, [sp, #0x3c]
 80035d8:      	bl	#-0x16ca
 80035dc:      	str	r0, [sp, #0x38]
 80035de:      	str	r1, [sp, #0x34]
 80035e0:      	b	#0x0 <cortex_m::itm::write_aligned::h51a91deec28a6743+0x54>
; }
 80035e2:      	b	#0xe8 <cortex_m::itm::write_aligned::h51a91deec28a6743+0x13e>
;             slice::from_raw_parts(buffer.as_ptr() as *const u32, split >> 2),
 80035e4:      	ldr	r0, [sp, #0x38]
 80035e6:      	ldr	r1, [sp, #0x34]
 80035e8:      	bl	#-0x1678
 80035ec:      	str	r0, [sp, #0x30]
 80035ee:      	b	#-0x2 <cortex_m::itm::write_aligned::h51a91deec28a6743+0x60>
 80035f0:      	ldr	r0, [sp, #0x30]
 80035f2:      	ldr	r1, [sp, #0x3c]
 80035f4:      	lsrs	r2, r1, #0x2
 80035f6:      	str	r0, [sp, #0x2c]
 80035f8:      	str	r2, [sp, #0x28]
 80035fa:      	b	#-0x2 <cortex_m::itm::write_aligned::h51a91deec28a6743+0x6c>
 80035fc:      	ldr	r0, [sp, #0x2c]
 80035fe:      	ldr	r1, [sp, #0x28]
 8003600:      	bl	#0x1be
 8003604:      	str	r0, [sp, #0x24]
 8003606:      	str	r1, [sp, #0x20]
 8003608:      	b	#-0x2 <cortex_m::itm::write_aligned::h51a91deec28a6743+0x7a>
;         write_words(
 800360a:      	ldr	r0, [sp, #0x54]
 800360c:      	ldr	r1, [sp, #0x24]
 800360e:      	ldr	r2, [sp, #0x20]
 8003610:      	bl	#-0x2b0
 8003614:      	b	#-0x2 <cortex_m::itm::write_aligned::h51a91deec28a6743+0x86>
;         let mut left = len & 0b11;
 8003616:      	ldr	r0, [sp, #0x40]
 8003618:      	and	r1, r0, #0x3
 800361c:      	str	r1, [sp, #0x5c]
;         let mut ptr = buffer.as_ptr().add(split);
 800361e:      	ldr	r0, [sp, #0x50]
 8003620:      	ldr	r1, [sp, #0x4c]
 8003622:      	bl	#-0x1714
 8003626:      	str	r0, [sp, #0x1c]
 8003628:      	str	r1, [sp, #0x18]
 800362a:      	b	#-0x2 <cortex_m::itm::write_aligned::h51a91deec28a6743+0x9c>
 800362c:      	ldr	r0, [sp, #0x1c]
 800362e:      	ldr	r1, [sp, #0x18]
 8003630:      	bl	#-0x16c0
 8003634:      	str	r0, [sp, #0x14]
 8003636:      	b	#-0x2 <cortex_m::itm::write_aligned::h51a91deec28a6743+0xa8>
 8003638:      	ldr	r0, [sp, #0x14]
 800363a:      	ldr	r1, [sp, #0x3c]
 800363c:      	bl	#0xd6
 8003640:      	str	r0, [sp, #0x60]
 8003642:      	b	#-0x2 <cortex_m::itm::write_aligned::h51a91deec28a6743+0xb4>
;         if left > 1 {
 8003644:      	ldr	r0, [sp, #0x5c]
 8003646:      	cmp	r0, #0x1
 8003648:      	bhi	#0x2 <cortex_m::itm::write_aligned::h51a91deec28a6743+0xbe>
 800364a:      	b	#-0x2 <cortex_m::itm::write_aligned::h51a91deec28a6743+0xbc>
 800364c:      	b	#0x4c <cortex_m::itm::write_aligned::h51a91deec28a6743+0x10c>
;             while !port.is_fifo_ready() {}
 800364e:      	b	#-0x2 <cortex_m::itm::write_aligned::h51a91deec28a6743+0xc0>
 8003650:      	ldr	r0, [sp, #0x54]
 8003652:      	bl	#0x212
 8003656:      	str	r0, [sp, #0x10]
 8003658:      	b	#-0x2 <cortex_m::itm::write_aligned::h51a91deec28a6743+0xca>
 800365a:      	ldr	r0, [sp, #0x10]
 800365c:      	lsls	r1, r0, #0x1f
 800365e:      	cmp	r1, #0x0
 8003660:      	beq	#0xa <cortex_m::itm::write_aligned::h51a91deec28a6743+0xde>
 8003662:      	b	#-0x2 <cortex_m::itm::write_aligned::h51a91deec28a6743+0xd4>
;             port.write_u16(ptr::read(ptr as *const u16));
 8003664:      	ldr	r0, [sp, #0x60]
 8003666:      	bl	#-0x17fe
 800366a:      	str	r0, [sp, #0xc]
 800366c:      	b	#0x0 <cortex_m::itm::write_aligned::h51a91deec28a6743+0xe0>
;             while !port.is_fifo_ready() {}
 800366e:      	b	#-0x22 <cortex_m::itm::write_aligned::h51a91deec28a6743+0xc0>
;             port.write_u16(ptr::read(ptr as *const u16));
 8003670:      	ldr	r0, [sp, #0x54]
 8003672:      	ldr	r1, [sp, #0xc]
 8003674:      	bl	#0x1a8
 8003678:      	b	#-0x2 <cortex_m::itm::write_aligned::h51a91deec28a6743+0xea>
;             ptr = ptr.offset(2);
 800367a:      	ldr	r0, [sp, #0x60]
 800367c:      	movs	r1, #0x2
 800367e:      	bl	#0xac
 8003682:      	str	r0, [sp, #0x8]
 8003684:      	b	#-0x2 <cortex_m::itm::write_aligned::h51a91deec28a6743+0xf6>
 8003686:      	ldr	r0, [sp, #0x8]
 8003688:      	str	r0, [sp, #0x60]
;             left -= 2;
 800368a:      	ldr	r1, [sp, #0x5c]
 800368c:      	subs	r2, r1, #0x2
 800368e:      	cmp	r1, #0x2
 8003690:      	str	r2, [sp, #0x4]
 8003692:      	blo	#0x3c <cortex_m::itm::write_aligned::h51a91deec28a6743+0x142>
 8003694:      	b	#-0x2 <cortex_m::itm::write_aligned::h51a91deec28a6743+0x106>
 8003696:      	ldr	r0, [sp, #0x4]
 8003698:      	str	r0, [sp, #0x5c]
;         if left > 1 {
 800369a:      	b	#-0x2 <cortex_m::itm::write_aligned::h51a91deec28a6743+0x10c>
;         if left == 1 {
 800369c:      	ldr	r0, [sp, #0x5c]
 800369e:      	cmp	r0, #0x1
 80036a0:      	beq	#0x2 <cortex_m::itm::write_aligned::h51a91deec28a6743+0x116>
 80036a2:      	b	#-0x2 <cortex_m::itm::write_aligned::h51a91deec28a6743+0x114>
 80036a4:      	b	#0x24 <cortex_m::itm::write_aligned::h51a91deec28a6743+0x13c>
;             while !port.is_fifo_ready() {}
 80036a6:      	b	#-0x2 <cortex_m::itm::write_aligned::h51a91deec28a6743+0x118>
 80036a8:      	ldr	r0, [sp, #0x54]
 80036aa:      	bl	#0x1ba
 80036ae:      	str	r0, [sp]
 80036b0:      	b	#-0x2 <cortex_m::itm::write_aligned::h51a91deec28a6743+0x122>
 80036b2:      	ldr	r0, [sp]
 80036b4:      	lsls	r1, r0, #0x1f
 80036b6:      	cmp	r1, #0x0
 80036b8:      	beq	#0xc <cortex_m::itm::write_aligned::h51a91deec28a6743+0x138>
 80036ba:      	b	#-0x2 <cortex_m::itm::write_aligned::h51a91deec28a6743+0x12c>
;             port.write_u8(*ptr);
 80036bc:      	ldr	r0, [sp, #0x60]
 80036be:      	ldrb	r1, [r0]
 80036c0:      	ldr	r0, [sp, #0x54]
 80036c2:      	bl	#0x134
 80036c6:      	b	#0x0 <cortex_m::itm::write_aligned::h51a91deec28a6743+0x13a>
;             while !port.is_fifo_ready() {}
 80036c8:      	b	#-0x24 <cortex_m::itm::write_aligned::h51a91deec28a6743+0x118>
;         if left == 1 {
 80036ca:      	b	#-0x2 <cortex_m::itm::write_aligned::h51a91deec28a6743+0x13c>
; }
 80036cc:      	b	#-0x2 <cortex_m::itm::write_aligned::h51a91deec28a6743+0x13e>
 80036ce:      	add	sp, #0x78
 80036d0:      	pop	{r7, pc}
;             left -= 2;
 80036d2:      	movw	r0, #0x4160
 80036d6:      	movt	r0, #0x800
 80036da:      	movw	r2, #0x4194
 80036de:      	movt	r2, #0x800
 80036e2:      	movs	r1, #0x21
 80036e4:      	bl	#-0x15e2
 80036e8:      	trap

080036ea <core::mem::swap::hcb505821c13e4327>:
; pub fn swap<T>(x: &mut T, y: &mut T) {
 80036ea:      	push	{r7, lr}
 80036ec:      	mov	r7, sp
 80036ee:      	sub	sp, #0x8
 80036f0:      	str	r0, [sp]
 80036f2:      	str	r1, [sp, #0x4]
;         ptr::swap_nonoverlapping_one(x, y);
 80036f4:      	bl	#-0x1a50
 80036f8:      	b	#-0x2 <core::mem::swap::hcb505821c13e4327+0x10>
; }
 80036fa:      	add	sp, #0x8
 80036fc:      	pop	{r7, pc}

080036fe <core::mem::replace::hc5a8629378d7873a>:
; pub fn replace<T>(dest: &mut T, mut src: T) -> T {
 80036fe:      	push	{r7, lr}
 8003700:      	mov	r7, sp
 8003702:      	sub	sp, #0x8
 8003704:      	str	r1, [sp]
 8003706:      	str	r0, [sp, #0x4]
 8003708:      	mov	r1, sp
;     swap(dest, &mut src);
 800370a:      	bl	#-0x24
 800370e:      	b	#-0x2 <core::mem::replace::hc5a8629378d7873a+0x12>
;     src
 8003710:      	ldr	r0, [sp]
; }
 8003712:      	add	sp, #0x8
 8003714:      	pop	{r7, pc}

08003716 <core::ptr::const_ptr::<impl *const T>::add::hcc46511a06be727f>:
;     pub const unsafe fn add(self, count: usize) -> Self
 8003716:      	push	{r7, lr}
 8003718:      	mov	r7, sp
 800371a:      	sub	sp, #0x10
 800371c:      	str	r0, [sp, #0x8]
 800371e:      	str	r1, [sp, #0xc]
;         unsafe { self.offset(count as isize) }
 8003720:      	bl	#0xa
 8003724:      	str	r0, [sp, #0x4]
 8003726:      	b	#-0x2 <core::ptr::const_ptr::<impl *const T>::add::hcc46511a06be727f+0x12>
;     }
 8003728:      	ldr	r0, [sp, #0x4]
 800372a:      	add	sp, #0x10
 800372c:      	pop	{r7, pc}

0800372e <core::ptr::const_ptr::<impl *const T>::offset::h7bb9957180935f30>:
;     pub const unsafe fn offset(self, count: isize) -> *const T
 800372e:      	sub	sp, #0x10
 8003730:      	str	r0, [sp, #0x4]
 8003732:      	str	r1, [sp, #0x8]
;         unsafe { intrinsics::offset(self, count) }
 8003734:      	add	r0, r1
 8003736:      	str	r0, [sp, #0xc]
 8003738:      	ldr	r0, [sp, #0xc]
 800373a:      	str	r0, [sp]
 800373c:      	b	#-0x2 <core::ptr::const_ptr::<impl *const T>::offset::h7bb9957180935f30+0x10>
;     }
 800373e:      	ldr	r0, [sp]
 8003740:      	add	sp, #0x10
 8003742:      	bx	lr

08003744 <core::ptr::const_ptr::<impl *const T>::offset::he5e9a74ba0cfc46d>:
;     pub const unsafe fn offset(self, count: isize) -> *const T
 8003744:      	sub	sp, #0x10
 8003746:      	str	r0, [sp, #0x4]
 8003748:      	str	r1, [sp, #0x8]
;         unsafe { intrinsics::offset(self, count) }
 800374a:      	add.w	r0, r0, r1, lsl #2
 800374e:      	str	r0, [sp, #0xc]
 8003750:      	ldr	r0, [sp, #0xc]
 8003752:      	str	r0, [sp]
 8003754:      	b	#-0x2 <core::ptr::const_ptr::<impl *const T>::offset::he5e9a74ba0cfc46d+0x12>
;     }
 8003756:      	ldr	r0, [sp]
 8003758:      	add	sp, #0x10
 800375a:      	bx	lr

0800375c <core::iter::range::<impl core::iter::traits::iterator::Iterator for core::ops::range::Range<A>>::next::h308ebc32e22673f9>:
;     fn next(&mut self) -> Option<A> {
 800375c:      	push	{r7, lr}
 800375e:      	mov	r7, sp
 8003760:      	sub	sp, #0x28
 8003762:      	str	r0, [sp, #0x20]
;         if self.start < self.end {
 8003764:      	adds	r1, r0, #0x4
 8003766:      	str	r0, [sp, #0x14]
 8003768:      	bl	#-0x189a
 800376c:      	str	r0, [sp, #0x10]
 800376e:      	b	#-0x2 <core::iter::range::<impl core::iter::traits::iterator::Iterator for core::ops::range::Range<A>>::next::h308ebc32e22673f9+0x14>
 8003770:      	ldr	r0, [sp, #0x10]
 8003772:      	lsls	r1, r0, #0x1f
 8003774:      	cmp	r1, #0x0
 8003776:      	bne	#0x6 <core::iter::range::<impl core::iter::traits::iterator::Iterator for core::ops::range::Range<A>>::next::h308ebc32e22673f9+0x24>
 8003778:      	b	#-0x2 <core::iter::range::<impl core::iter::traits::iterator::Iterator for core::ops::range::Range<A>>::next::h308ebc32e22673f9+0x1e>
 800377a:      	movs	r0, #0x0
;             None
 800377c:      	str	r0, [sp, #0x18]
;         if self.start < self.end {
 800377e:      	b	#0x2e <core::iter::range::<impl core::iter::traits::iterator::Iterator for core::ops::range::Range<A>>::next::h308ebc32e22673f9+0x54>
;             let n = unsafe { Step::forward_unchecked(self.start.clone(), 1) };
 8003780:      	ldr	r0, [sp, #0x14]
 8003782:      	bl	#-0x187e
 8003786:      	str	r0, [sp, #0xc]
 8003788:      	b	#-0x2 <core::iter::range::<impl core::iter::traits::iterator::Iterator for core::ops::range::Range<A>>::next::h308ebc32e22673f9+0x2e>
 800378a:      	movs	r1, #0x1
;             let n = unsafe { Step::forward_unchecked(self.start.clone(), 1) };
 800378c:      	ldr	r0, [sp, #0xc]
 800378e:      	bl	#-0x18d8
 8003792:      	mov	r1, r0
 8003794:      	str	r0, [sp, #0x24]
 8003796:      	str	r1, [sp, #0x8]
 8003798:      	b	#-0x2 <core::iter::range::<impl core::iter::traits::iterator::Iterator for core::ops::range::Range<A>>::next::h308ebc32e22673f9+0x3e>
;             Some(mem::replace(&mut self.start, n))
 800379a:      	ldr	r0, [sp, #0x14]
 800379c:      	ldr	r1, [sp, #0x8]
 800379e:      	bl	#-0xa4
 80037a2:      	str	r0, [sp, #0x4]
 80037a4:      	b	#-0x2 <core::iter::range::<impl core::iter::traits::iterator::Iterator for core::ops::range::Range<A>>::next::h308ebc32e22673f9+0x4a>
 80037a6:      	ldr	r0, [sp, #0x4]
 80037a8:      	str	r0, [sp, #0x1c]
 80037aa:      	movs	r1, #0x1
 80037ac:      	str	r1, [sp, #0x18]
;         if self.start < self.end {
 80037ae:      	b	#-0x2 <core::iter::range::<impl core::iter::traits::iterator::Iterator for core::ops::range::Range<A>>::next::h308ebc32e22673f9+0x54>
;     }
 80037b0:      	ldr	r0, [sp, #0x18]
 80037b2:      	ldr	r1, [sp, #0x1c]
 80037b4:      	add	sp, #0x28
 80037b6:      	pop	{r7, pc}

080037b8 <<I as core::iter::traits::collect::IntoIterator>::into_iter::hbf96f872dc6a140c>:
;     fn into_iter(self) -> I {
 80037b8:      	sub	sp, #0x8
 80037ba:      	str	r0, [sp]
 80037bc:      	str	r1, [sp, #0x4]
;     }
 80037be:      	add	sp, #0x8
 80037c0:      	bx	lr

080037c2 <core::slice::raw::from_raw_parts::h410d15212122f496>:
; pub unsafe fn from_raw_parts<'a, T>(data: *const T, len: usize) -> &'a [T] {
 80037c2:      	push	{r7, lr}
 80037c4:      	mov	r7, sp
 80037c6:      	sub	sp, #0x10
 80037c8:      	str	r0, [sp, #0x8]
 80037ca:      	str	r1, [sp, #0xc]
;     unsafe { &*ptr::slice_from_raw_parts(data, len) }
 80037cc:      	bl	#-0x1b42
 80037d0:      	str	r0, [sp, #0x4]
 80037d2:      	str	r1, [sp]
 80037d4:      	b	#-0x2 <core::slice::raw::from_raw_parts::h410d15212122f496+0x14>
; }
 80037d6:      	ldr	r0, [sp, #0x4]
 80037d8:      	ldr	r1, [sp]
 80037da:      	add	sp, #0x10
 80037dc:      	pop	{r7, pc}

080037de <core::slice::raw::from_raw_parts::h41748c2281e00b8b>:
; pub unsafe fn from_raw_parts<'a, T>(data: *const T, len: usize) -> &'a [T] {
 80037de:      	push	{r7, lr}
 80037e0:      	mov	r7, sp
 80037e2:      	sub	sp, #0x10
 80037e4:      	str	r0, [sp, #0x8]
 80037e6:      	str	r1, [sp, #0xc]
;     unsafe { &*ptr::slice_from_raw_parts(data, len) }
 80037e8:      	bl	#-0x1b78
 80037ec:      	str	r0, [sp, #0x4]
 80037ee:      	str	r1, [sp]
 80037f0:      	b	#-0x2 <core::slice::raw::from_raw_parts::h41748c2281e00b8b+0x14>
; }
 80037f2:      	ldr	r0, [sp, #0x4]
 80037f4:      	ldr	r1, [sp]
 80037f6:      	add	sp, #0x10
 80037f8:      	pop	{r7, pc}

080037fa <cortex_m::peripheral::itm::Stim::write_u8::h8f1296804be1c29b>:
;     pub fn write_u8(&mut self, value: u8) {
 80037fa:      	push	{r7, lr}
 80037fc:      	mov	r7, sp
 80037fe:      	sub	sp, #0x10
 8003800:      	mov	r2, r1
 8003802:      	str	r0, [sp, #0x8]
 8003804:      	strb	r1, [r7, #-1]
;         unsafe { ptr::write_volatile(self.register.get() as *mut u8, value) }
 8003808:      	str	r2, [sp, #0x4]
 800380a:      	bl	#-0x190e
 800380e:      	str	r0, [sp]
 8003810:      	b	#-0x2 <cortex_m::peripheral::itm::Stim::write_u8::h8f1296804be1c29b+0x18>
 8003812:      	ldr	r0, [sp]
 8003814:      	ldr	r1, [sp, #0x4]
 8003816:      	bl	#-0x1bee
 800381a:      	b	#-0x2 <cortex_m::peripheral::itm::Stim::write_u8::h8f1296804be1c29b+0x22>
;     }
 800381c:      	add	sp, #0x10
 800381e:      	pop	{r7, pc}

08003820 <cortex_m::peripheral::itm::Stim::write_u16::hc7f9eb7e4d27f9e3>:
;     pub fn write_u16(&mut self, value: u16) {
 8003820:      	push	{r7, lr}
 8003822:      	mov	r7, sp
 8003824:      	sub	sp, #0x10
 8003826:      	mov	r2, r1
 8003828:      	str	r0, [sp, #0x8]
 800382a:      	strh	r1, [r7, #-2]
;         unsafe { ptr::write_volatile(self.register.get() as *mut u16, value) }
 800382e:      	str	r2, [sp, #0x4]
 8003830:      	bl	#-0x1934
 8003834:      	str	r0, [sp]
 8003836:      	b	#-0x2 <cortex_m::peripheral::itm::Stim::write_u16::hc7f9eb7e4d27f9e3+0x18>
 8003838:      	ldr	r0, [sp]
 800383a:      	ldr	r1, [sp, #0x4]
 800383c:      	bl	#-0x1c34
 8003840:      	b	#-0x2 <cortex_m::peripheral::itm::Stim::write_u16::hc7f9eb7e4d27f9e3+0x22>
;     }
 8003842:      	add	sp, #0x10
 8003844:      	pop	{r7, pc}

08003846 <cortex_m::peripheral::itm::Stim::write_u32::h75c877bd5f25b4f7>:
;     pub fn write_u32(&mut self, value: u32) {
 8003846:      	push	{r7, lr}
 8003848:      	mov	r7, sp
 800384a:      	sub	sp, #0x10
 800384c:      	str	r0, [sp, #0x8]
 800384e:      	str	r1, [sp, #0xc]
;         unsafe { ptr::write_volatile(self.register.get(), value) }
 8003850:      	str	r1, [sp, #0x4]
 8003852:      	bl	#-0x1956
 8003856:      	str	r0, [sp]
 8003858:      	b	#-0x2 <cortex_m::peripheral::itm::Stim::write_u32::h75c877bd5f25b4f7+0x14>
 800385a:      	ldr	r0, [sp]
 800385c:      	ldr	r1, [sp, #0x4]
 800385e:      	bl	#-0x1c44
 8003862:      	b	#-0x2 <cortex_m::peripheral::itm::Stim::write_u32::h75c877bd5f25b4f7+0x1e>
;     }
 8003864:      	add	sp, #0x10
 8003866:      	pop	{r7, pc}

08003868 <cortex_m::peripheral::itm::Stim::is_fifo_ready::hc0edab71d9857f3d>:
;     pub fn is_fifo_ready(&self) -> bool {
 8003868:      	push	{r7, lr}
 800386a:      	mov	r7, sp
 800386c:      	sub	sp, #0x10
 800386e:      	str	r0, [sp, #0xc]
;         unsafe { ptr::read_volatile(self.register.get()) & 0b1 == 1 }
 8003870:      	bl	#-0x1974
 8003874:      	str	r0, [sp, #0x8]
 8003876:      	b	#-0x2 <cortex_m::peripheral::itm::Stim::is_fifo_ready::hc0edab71d9857f3d+0x10>
 8003878:      	ldr	r0, [sp, #0x8]
 800387a:      	bl	#-0x1c86
 800387e:      	str	r0, [sp, #0x4]
 8003880:      	b	#-0x2 <cortex_m::peripheral::itm::Stim::is_fifo_ready::hc0edab71d9857f3d+0x1a>
;     }
 8003882:      	ldr	r0, [sp, #0x4]
 8003884:      	and	r0, r0, #0x1
 8003888:      	add	sp, #0x10
 800388a:      	pop	{r7, pc}

0800388c <cortex_m::interrupt::disable::hf138034a7c17e25d>:
; pub fn disable() {
 800388c:      	push	{r7, lr}
 800388e:      	mov	r7, sp
;             __cpsid();
 8003890:      	bl	#-0x1eba
 8003894:      	b	#-0x2 <cortex_m::interrupt::disable::hf138034a7c17e25d+0xa>
; }
 8003896:      	pop	{r7, pc}

08003898 <__aeabi_memcpy>:
 8003898:      	push	{r4, r5, r6, r7, lr}
 800389a:      	add	r7, sp, #0xc
 800389c:      	str	r8, [sp, #-4]!
 80038a0:      	cbz	r2, #0x10
 80038a2:      	subs	r3, r2, #0x1
 80038a4:      	and	r12, r2, #0x3
 80038a8:      	cmp	r3, #0x3
 80038aa:      	bhs	#0xc <__aeabi_memcpy+0x22>
 80038ac:      	movs	r2, #0x0
 80038ae:      	cmp.w	r12, #0x0
 80038b2:      	bne	#0x3e <__aeabi_memcpy+0x5c>
 80038b4:      	ldr	r8, [sp], #4
 80038b8:      	pop	{r4, r5, r6, r7, pc}
 80038ba:      	bic	r2, r2, #0x3
 80038be:      	add.w	lr, r0, #0x1
 80038c2:      	rsbs	r4, r2, #0
 80038c4:      	add.w	r8, r1, #0x1
 80038c8:      	mvn	r2, #0x3
 80038cc:      	add.w	r5, r8, r2
 80038d0:      	add.w	r3, lr, r2
 80038d4:      	adds	r2, #0x4
 80038d6:      	ldrb	r6, [r5, #0x3]
 80038d8:      	strb	r6, [r3, #0x3]
 80038da:      	ldrb	r6, [r5, #0x4]
 80038dc:      	strb	r6, [r3, #0x4]
 80038de:      	ldrb	r6, [r5, #0x5]
 80038e0:      	strb	r6, [r3, #0x5]
 80038e2:      	ldrb	r5, [r5, #0x6]
 80038e4:      	strb	r5, [r3, #0x6]
 80038e6:      	adds	r3, r4, r2
 80038e8:      	adds	r3, #0x4
 80038ea:      	bne	#-0x22 <__aeabi_memcpy+0x34>
 80038ec:      	adds	r2, #0x4
 80038ee:      	cmp.w	r12, #0x0
 80038f2:      	beq	#-0x42 <__aeabi_memcpy+0x1c>
 80038f4:      	ldrb	r3, [r1, r2]
 80038f6:      	cmp.w	r12, #0x1
 80038fa:      	strb	r3, [r0, r2]
 80038fc:      	beq	#-0x4c <__aeabi_memcpy+0x1c>
 80038fe:      	adds	r3, r2, #0x1
 8003900:      	cmp.w	r12, #0x2
 8003904:      	ldrb	r6, [r1, r3]
 8003906:      	strb	r6, [r0, r3]
 8003908:      	beq	#-0x58 <__aeabi_memcpy+0x1c>
 800390a:      	adds	r2, #0x2
 800390c:      	ldrb	r1, [r1, r2]
 800390e:      	strb	r1, [r0, r2]
 8003910:      	ldr	r8, [sp], #4
 8003914:      	pop	{r4, r5, r6, r7, pc}

08003916 <__aeabi_memcpy4>:
 8003916:      	push	{r4, r5, r7, lr}
 8003918:      	add	r7, sp, #0x8
 800391a:      	cmp	r2, #0x4
 800391c:      	blo	#0x62 <__aeabi_memcpy4+0x6c>
 800391e:      	sub.w	r12, r2, #0x4
 8003922:      	movs	r3, #0x1
 8003924:      	add.w	r3, r3, r12, lsr #2
 8003928:      	ands	lr, r3, #0x3
 800392c:      	beq	#0x2e <__aeabi_memcpy4+0x48>
 800392e:      	mov	r3, r1
 8003930:      	mov	r4, r0
 8003932:      	ldr	r5, [r3], #4
 8003936:      	cmp.w	lr, #0x1
 800393a:      	str	r5, [r4], #4
 800393e:      	bne	#0xc <__aeabi_memcpy4+0x38>
 8003940:      	mov	r2, r12
 8003942:      	mov	r0, r4
 8003944:      	mov	r1, r3
 8003946:      	cmp.w	r12, #0xc
 800394a:      	bhs	#0x16 <__aeabi_memcpy4+0x4e>
 800394c:      	b	#0x32 <__aeabi_memcpy4+0x6c>
 800394e:      	ldr	r3, [r1, #0x4]
 8003950:      	cmp.w	lr, #0x2
 8003954:      	str	r3, [r0, #0x4]
 8003956:      	bne	#0x30 <__aeabi_memcpy4+0x74>
 8003958:      	subs	r2, #0x8
 800395a:      	adds	r1, #0x8
 800395c:      	adds	r0, #0x8
 800395e:      	cmp.w	r12, #0xc
 8003962:      	blo	#0x1c <__aeabi_memcpy4+0x6c>
 8003964:      	ldr	r3, [r1]
 8003966:      	subs	r2, #0x10
 8003968:      	str	r3, [r0]
 800396a:      	cmp	r2, #0x3
 800396c:      	ldr	r3, [r1, #0x4]
 800396e:      	str	r3, [r0, #0x4]
 8003970:      	ldr	r3, [r1, #0x8]
 8003972:      	str	r3, [r0, #0x8]
 8003974:      	ldr	r3, [r1, #0xc]
 8003976:      	add.w	r1, r1, #0x10
 800397a:      	str	r3, [r0, #0xc]
 800397c:      	add.w	r0, r0, #0x10
 8003980:      	bhi	#-0x20 <__aeabi_memcpy4+0x4e>
 8003982:      	pop.w	{r4, r5, r7, lr}
 8003986:      	b.w	#-0xf2 <__aeabi_memcpy>
 800398a:      	ldr	r3, [r1, #0x8]
 800398c:      	subs	r2, #0xc
 800398e:      	str	r3, [r0, #0x8]
 8003990:      	adds	r1, #0xc
 8003992:      	adds	r0, #0xc
 8003994:      	cmp.w	r12, #0xc
 8003998:      	bhs	#-0x38 <__aeabi_memcpy4+0x4e>
 800399a:      	b	#-0x1c <__aeabi_memcpy4+0x6c>

0800399c <__aeabi_memset>:
 800399c:      	push	{r4, r6, r7, lr}
 800399e:      	add	r7, sp, #0x8
 80039a0:      	cbz	r1, #0x3e
 80039a2:      	subs	r3, r1, #0x1
 80039a4:      	and	r12, r1, #0x3
 80039a8:      	cmp	r3, #0x3
 80039aa:      	bhs	#0x2 <__aeabi_memset+0x14>
 80039ac:      	movs	r1, #0x0
 80039ae:      	b	#0x22 <__aeabi_memset+0x38>
 80039b0:      	bic	r1, r1, #0x3
 80039b4:      	add.w	lr, r0, #0x1
 80039b8:      	rsbs	r3, r1, #0
 80039ba:      	mvn	r1, #0x3
 80039be:      	add.w	r4, lr, r1
 80039c2:      	adds	r1, #0x4
 80039c4:      	strb	r2, [r4, #0x6]
 80039c6:      	strb	r2, [r4, #0x5]
 80039c8:      	strb	r2, [r4, #0x4]
 80039ca:      	strb	r2, [r4, #0x3]
 80039cc:      	adds	r4, r3, r1
 80039ce:      	adds	r4, #0x4
 80039d0:      	bne	#-0x16 <__aeabi_memset+0x22>
 80039d2:      	adds	r1, #0x4
 80039d4:      	cmp.w	r12, #0x0
 80039d8:      	itt	ne
 80039da:      	strbne	r2, [r0, r1]
 80039dc:      	cmpne.w	r12, #0x1
 80039e0:      	bne	#0x0 <__aeabi_memset+0x48>
 80039e2:      	pop	{r4, r6, r7, pc}
 80039e4:      	add	r0, r1
 80039e6:      	cmp.w	r12, #0x2
 80039ea:      	strb	r2, [r0, #0x1]
 80039ec:      	it	ne
 80039ee:      	strbne	r2, [r0, #0x2]
 80039f0:      	pop	{r4, r6, r7, pc}

080039f2 <__aeabi_memset4>:
 80039f2:      	push	{r4, r6, r7, lr}
 80039f4:      	add	r7, sp, #0x8
 80039f6:      	mov	r3, r2
 80039f8:      	uxtb	r2, r2
 80039fa:      	cmp	r1, #0x4
 80039fc:      	blo	#0x72 <__aeabi_memset4+0x80>
 80039fe:      	sub.w	lr, r1, #0x4
 8003a02:      	orr.w	r3, r2, r3, lsl #24
 8003a06:      	movs	r4, #0x1
 8003a08:      	orr.w	r3, r3, r2, lsl #16
 8003a0c:      	add.w	r4, r4, lr, lsr #2
 8003a10:      	orr.w	r3, r3, r2, lsl #8
 8003a14:      	ands	r4, r4, #0x3
 8003a18:      	beq	#0x14 <__aeabi_memset4+0x3e>
 8003a1a:      	mov	r12, r0
 8003a1c:      	cmp	r4, #0x1
 8003a1e:      	str	r3, [r12], #4
 8003a22:      	bne	#0x12 <__aeabi_memset4+0x46>
 8003a24:      	mov	r1, lr
 8003a26:      	mov	r0, r12
 8003a28:      	cmp.w	lr, #0xc
 8003a2c:      	bhs	#0x32 <__aeabi_memset4+0x70>
 8003a2e:      	b	#0x18 <__aeabi_memset4+0x58>
 8003a30:      	cmp.w	lr, #0xc
 8003a34:      	bhs	#0x2a <__aeabi_memset4+0x70>
 8003a36:      	b	#0x10 <__aeabi_memset4+0x58>
 8003a38:      	cmp	r4, #0x2
 8003a3a:      	str	r3, [r0, #0x4]
 8003a3c:      	bne	#0x14 <__aeabi_memset4+0x62>
 8003a3e:      	adds	r0, #0x8
 8003a40:      	subs	r1, #0x8
 8003a42:      	mov	r12, r0
 8003a44:      	cmp.w	lr, #0xc
 8003a48:      	bhs	#0x16 <__aeabi_memset4+0x70>
 8003a4a:      	mov	r0, r12
 8003a4c:      	pop.w	{r4, r6, r7, lr}
 8003a50:      	b.w	#-0xb8 <__aeabi_memset>
 8003a54:      	str	r3, [r0, #0x8]
 8003a56:      	adds	r0, #0xc
 8003a58:      	subs	r1, #0xc
 8003a5a:      	mov	r12, r0
 8003a5c:      	cmp.w	lr, #0xc
 8003a60:      	blo	#-0x1a <__aeabi_memset4+0x58>
 8003a62:      	strd	r3, r3, [r0]
 8003a66:      	subs	r1, #0x10
 8003a68:      	strd	r3, r3, [r0, #8]
 8003a6c:      	adds	r0, #0x10
 8003a6e:      	cmp	r1, #0x3
 8003a70:      	bhi	#-0x12 <__aeabi_memset4+0x70>
 8003a72:      	mov	r12, r0
 8003a74:      	mov	r0, r12
 8003a76:      	pop.w	{r4, r6, r7, lr}
 8003a7a:      	b.w	#-0xe2 <__aeabi_memset>

08003a7e <HardFaultTrampoline>:
 8003a7e:      	mov	r0, lr
 8003a80:      	movs	r1, #0x4
 8003a82:      	tst	r0, r1
 8003a84:      	bne	#0x4 <HardFaultTrampoline+0xe>
 8003a86:      	mrs	r0, msp
 8003a8a:      	b	#0x4 <HardFault_>
 8003a8c:      	mrs	r0, psp
 8003a90:      	b	#-0x2 <HardFault_>

08003a92 <HardFault_>:
; pub unsafe extern "C" fn HardFault_(ef: &ExceptionFrame) -> ! {
 8003a92:      	push	{r7, lr}
 8003a94:      	mov	r7, sp
 8003a96:      	sub	sp, #0x8
 8003a98:      	str	r0, [sp, #0x4]
;     loop {
 8003a9a:      	b	#-0x2 <HardFault_+0xa>
 8003a9c:      	movs	r0, #0x4
;         atomic::compiler_fence(Ordering::SeqCst);
 8003a9e:      	strb	r0, [r7, #-5]
 8003aa2:      	ldrb	r0, [r7, #-5]
 8003aa6:      	bl	#-0x1f3a
 8003aaa:      	b	#-0x2 <HardFault_+0x1a>
;     loop {
 8003aac:      	b	#-0x14 <HardFault_+0xa>
 8003aae:      	bmi	#-0x58 <__aeabi_memset4+0x68>
