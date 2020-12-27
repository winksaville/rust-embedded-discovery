
registers:	file format elf32-littlearm


Disassembly of section .text:

08000188 <Reset>:
; pub unsafe extern "C" fn Reset() -> ! {
 8000188:      	push	{r7, lr}
 800018a:      	mov	r7, sp
;     __pre_init();
 800018c:      	bl	#0x186c
 8000190:      	b	#-0x2 <Reset+0xa>
;     r0::zero_bss(&mut __sbss, &mut __ebss);
 8000192:      	movw	r0, #0x0
 8000196:      	movt	r0, #0x2000
 800019a:      	movw	r1, #0x4
 800019e:      	movt	r1, #0x2000
 80001a2:      	bl	#0x1858
 80001a6:      	b	#-0x2 <Reset+0x20>
;     r0::init_data(&mut __sdata, &mut __edata, &__sidata);
 80001a8:      	movw	r0, #0x0
 80001ac:      	movt	r0, #0x2000
 80001b0:      	movw	r1, #0x0
 80001b4:      	movt	r1, #0x2000
 80001b8:      	movw	r2, #0x41b4
 80001bc:      	movt	r2, #0x800
 80001c0:      	bl	#0x1884
 80001c4:      	b	#-0x2 <Reset+0x3e>
 80001c6:      	movw	r0, #0xed88
 80001ca:      	movt	r0, #0xe000
;                 *SCB_CPACR | SCB_CPACR_FPU_ENABLE | SCB_CPACR_FPU_USER,
 80001ce:      	ldr	r1, [r0]
 80001d0:      	orr	r1, r1, #0xf00000
;             core::ptr::write_volatile(
 80001d4:      	bl	#0x1922
 80001d8:      	b	#-0x2 <Reset+0x52>
;             trampoline()
 80001da:      	bl	#0x17fa
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
 80001ee:      	bl	#0x3e
 80001f2:      	b	#-0x2 <registers::__cortex_m_rt_main::h8ffa40ad9b0dbd6a+0xa>
;         *(GPIOE_BSRR as *mut u32) = 1 << 9;
 80001f4:      	movw	r0, #0x3ac8
 80001f8:      	movt	r0, #0x800
 80001fc:      	ldr	r0, [r0]
 80001fe:      	movw	r1, #0x1018
 8000202:      	movt	r1, #0x4800
 8000206:      	str	r0, [r1]
;         *(GPIOE_BSRR as *mut u32) = 1 << 11;
 8000208:      	movw	r0, #0x3ae8
 800020c:      	movt	r0, #0x800
 8000210:      	ldr	r0, [r0]
 8000212:      	str	r0, [r1]
;         *(GPIOE_BSRR as *mut u32) = 1 << (9 + 16);
 8000214:      	movw	r0, #0x3af0
 8000218:      	movt	r0, #0x800
 800021c:      	ldr	r0, [r0]
 800021e:      	str	r0, [r1]
;         *(GPIOE_BSRR as *mut u32) = 1 << (11 + 16);
 8000220:      	movw	r0, #0x3ab8
 8000224:      	movt	r0, #0x800
 8000228:      	ldr	r0, [r0]
 800022a:      	str	r0, [r1]
;     loop {}
 800022c:      	b	#-0x2 <registers::__cortex_m_rt_main::h8ffa40ad9b0dbd6a+0x44>
 800022e:      	b	#-0x4 <registers::__cortex_m_rt_main::h8ffa40ad9b0dbd6a+0x44>

08000230 <aux7::init::hb592c84bb8440829>:
; pub fn init() -> (ITM, &'static gpioc::RegisterBlock) {
 8000230:      	push	{r7, lr}
 8000232:      	mov	r7, sp
 8000234:      	sub	sp, #0x48
;     let cp = cortex_m::Peripherals::take().unwrap();
 8000236:      	bl	#0x1dc
 800023a:      	str	r0, [sp, #0x8]
 800023c:      	b	#-0x2 <aux7::init::hb592c84bb8440829+0xe>
 800023e:      	ldr	r0, [sp, #0x8]
 8000240:      	and	r0, r0, #0x1
 8000244:      	movw	r1, #0x3b28
 8000248:      	movt	r1, #0x800
 800024c:      	bl	#0x52
 8000250:      	b	#-0x2 <aux7::init::hb592c84bb8440829+0x22>
;     let dp = stm32f30x::Peripherals::take().unwrap();
 8000252:      	bl	#0xb4
 8000256:      	str	r0, [sp, #0x4]
 8000258:      	b	#-0x2 <aux7::init::hb592c84bb8440829+0x2a>
 800025a:      	ldr	r0, [sp, #0x4]
 800025c:      	and	r0, r0, #0x1
 8000260:      	movw	r1, #0x3b38
 8000264:      	movt	r1, #0x800
 8000268:      	bl	#0x6a
 800026c:      	b	#-0x2 <aux7::init::hb592c84bb8440829+0x3e>
 800026e:      	add	r0, sp, #0x10
;     let mut rcc = dp.RCC.constrain();
 8000270:      	bl	#0x1566
 8000274:      	b	#-0x2 <aux7::init::hb592c84bb8440829+0x46>
 8000276:      	add	r0, sp, #0x10
;     Leds::new(dp.GPIOE.split(&mut rcc.ahb));
 8000278:      	bl	#0x15a4
 800027c:      	b	#-0x2 <aux7::init::hb592c84bb8440829+0x4e>
 800027e:      	bl	#0x2bc
 8000282:      	str	r1, [sp, #0x44]
 8000284:      	str	r0, [sp, #0x40]
 8000286:      	ldr	r0, [sp, #0x40]
 8000288:      	ldr	r1, [sp, #0x44]
 800028a:      	str	r1, [sp, #0x34]
 800028c:      	str	r0, [sp, #0x30]
 800028e:      	b	#-0x2 <aux7::init::hb592c84bb8440829+0x60>
;     (cp.ITM, unsafe { &*GPIOE::ptr() })
 8000290:      	bl	#0x168a
 8000294:      	str	r0, [sp]
 8000296:      	b	#-0x2 <aux7::init::hb592c84bb8440829+0x68>
 8000298:      	ldr	r0, [sp]
 800029a:      	str	r0, [sp, #0xc]
; }
 800029c:      	ldr	r0, [sp, #0xc]
 800029e:      	add	sp, #0x48
 80002a0:      	pop	{r7, pc}

080002a2 <core::option::Option<T>::unwrap::h947b0b4a2d5ef977>:
;     pub const fn unwrap(self) -> T {
 80002a2:      	push	{r7, lr}
 80002a4:      	mov	r7, sp
 80002a6:      	sub	sp, #0x10
 80002a8:      	mov	r2, r0
 80002aa:      	strb	r0, [r7, #-5]
;             Some(val) => val,
 80002ae:      	ldrb	r0, [r7, #-5]
 80002b2:      	lsls	r3, r0, #0x1f
 80002b4:      	cmp	r3, #0x0
 80002b6:      	str	r1, [sp, #0x4]
 80002b8:      	beq	#0x2 <core::option::Option<T>::unwrap::h947b0b4a2d5ef977+0x1c>
 80002ba:      	b	#-0x2 <core::option::Option<T>::unwrap::h947b0b4a2d5ef977+0x1a>
 80002bc:      	b	#0x12 <core::option::Option<T>::unwrap::h947b0b4a2d5ef977+0x30>
;             None => panic!("called `Option::unwrap()` on a `None` value"),
 80002be:      	movw	r0, #0x3b48
 80002c2:      	movt	r0, #0x800
 80002c6:      	movs	r1, #0x2b
 80002c8:      	ldr	r2, [sp, #0x4]
 80002ca:      	bl	#0x1e28
 80002ce:      	trap
;         match self {
 80002d0:      	trap
;     }
 80002d2:      	add	sp, #0x10
 80002d4:      	pop	{r7, pc}

080002d6 <core::option::Option<T>::unwrap::he4b668db7c2a4a07>:
;     pub const fn unwrap(self) -> T {
 80002d6:      	push	{r7, lr}
 80002d8:      	mov	r7, sp
 80002da:      	sub	sp, #0x10
 80002dc:      	mov	r2, r0
 80002de:      	strb	r0, [r7, #-5]
;             Some(val) => val,
 80002e2:      	ldrb	r0, [r7, #-5]
 80002e6:      	lsls	r3, r0, #0x1f
 80002e8:      	cmp	r3, #0x0
 80002ea:      	str	r1, [sp, #0x4]
 80002ec:      	beq	#0x2 <core::option::Option<T>::unwrap::he4b668db7c2a4a07+0x1c>
 80002ee:      	b	#-0x2 <core::option::Option<T>::unwrap::he4b668db7c2a4a07+0x1a>
 80002f0:      	b	#0x12 <core::option::Option<T>::unwrap::he4b668db7c2a4a07+0x30>
;             None => panic!("called `Option::unwrap()` on a `None` value"),
 80002f2:      	movw	r0, #0x3b48
 80002f6:      	movt	r0, #0x800
 80002fa:      	movs	r1, #0x2b
 80002fc:      	ldr	r2, [sp, #0x4]
 80002fe:      	bl	#0x1df4
 8000302:      	trap
;         match self {
 8000304:      	trap
;     }
 8000306:      	add	sp, #0x10
 8000308:      	pop	{r7, pc}

0800030a <stm32f30x::Peripherals::take::h18e2b5b8599b5120>:
;     pub fn take() -> Option<Self> {
 800030a:      	push	{r7, lr}
 800030c:      	mov	r7, sp
 800030e:      	sub	sp, #0x8
;         cortex_m::interrupt::free(|_| {
 8000310:      	bl	#0xe
 8000314:      	str	r0, [sp]
 8000316:      	b	#-0x2 <stm32f30x::Peripherals::take::h18e2b5b8599b5120+0xe>
;     }
 8000318:      	ldr	r0, [sp]
 800031a:      	and	r0, r0, #0x1
 800031e:      	add	sp, #0x8
 8000320:      	pop	{r7, pc}

08000322 <cortex_m::interrupt::free::h55307b84cfc2f6bb>:
; pub fn free<F, R>(f: F) -> R
 8000322:      	push	{r7, lr}
 8000324:      	mov	r7, sp
 8000326:      	sub	sp, #0x20
;     let primask = crate::register::primask::read();
 8000328:      	bl	#0x15c
 800032c:      	mov	r1, r0
 800032e:      	strb	r0, [r7, #-2]
 8000332:      	str	r1, [sp, #0xc]
 8000334:      	b	#-0x2 <cortex_m::interrupt::free::h55307b84cfc2f6bb+0x14>
;     disable();
 8000336:      	bl	#0x1f8
 800033a:      	b	#-0x2 <cortex_m::interrupt::free::h55307b84cfc2f6bb+0x1a>
;     let r = f(unsafe { &CriticalSection::new() });
 800033c:      	bl	#0x1ca4
 8000340:      	b	#-0x2 <cortex_m::interrupt::free::h55307b84cfc2f6bb+0x20>
 8000342:      	add	r0, sp, #0x14
;     let r = f(unsafe { &CriticalSection::new() });
 8000344:      	str	r0, [sp, #0x10]
 8000346:      	ldr	r0, [sp, #0x10]
 8000348:      	bl	#0x92
 800034c:      	mov	r1, r0
 800034e:      	strb	r0, [r7, #-1]
 8000352:      	str	r1, [sp, #0x8]
 8000354:      	b	#-0x2 <cortex_m::interrupt::free::h55307b84cfc2f6bb+0x34>
;     if primask.is_active() {
 8000356:      	ldr	r0, [sp, #0xc]
 8000358:      	and	r0, r0, #0x1
 800035c:      	bl	#0x15c
 8000360:      	str	r0, [sp, #0x4]
 8000362:      	b	#-0x2 <cortex_m::interrupt::free::h55307b84cfc2f6bb+0x42>
 8000364:      	ldr	r0, [sp, #0x4]
 8000366:      	lsls	r1, r0, #0x1f
 8000368:      	cmp	r1, #0x0
 800036a:      	bne	#0x2 <cortex_m::interrupt::free::h55307b84cfc2f6bb+0x4e>
 800036c:      	b	#-0x2 <cortex_m::interrupt::free::h55307b84cfc2f6bb+0x4c>
 800036e:      	b	#0x4 <cortex_m::interrupt::free::h55307b84cfc2f6bb+0x54>
;         unsafe { enable() }
 8000370:      	bl	#0x1b2
 8000374:      	b	#-0x2 <cortex_m::interrupt::free::h55307b84cfc2f6bb+0x54>
; }
 8000376:      	ldr	r0, [sp, #0x8]
 8000378:      	and	r0, r0, #0x1
 800037c:      	add	sp, #0x20
 800037e:      	pop	{r7, pc}

08000380 <cortex_m::interrupt::free::h5bb11f3b8784bac3>:
; pub fn free<F, R>(f: F) -> R
 8000380:      	push	{r7, lr}
 8000382:      	mov	r7, sp
 8000384:      	sub	sp, #0x20
;     let primask = crate::register::primask::read();
 8000386:      	bl	#0xfe
 800038a:      	mov	r1, r0
 800038c:      	strb	r0, [r7, #-2]
 8000390:      	str	r1, [sp, #0xc]
 8000392:      	b	#-0x2 <cortex_m::interrupt::free::h5bb11f3b8784bac3+0x14>
;     disable();
 8000394:      	bl	#0x19a
 8000398:      	b	#-0x2 <cortex_m::interrupt::free::h5bb11f3b8784bac3+0x1a>
;     let r = f(unsafe { &CriticalSection::new() });
 800039a:      	bl	#0x1c46
 800039e:      	b	#-0x2 <cortex_m::interrupt::free::h5bb11f3b8784bac3+0x20>
 80003a0:      	add	r0, sp, #0x14
;     let r = f(unsafe { &CriticalSection::new() });
 80003a2:      	str	r0, [sp, #0x10]
 80003a4:      	ldr	r0, [sp, #0x10]
 80003a6:      	bl	#0x144
 80003aa:      	mov	r1, r0
 80003ac:      	strb	r0, [r7, #-1]
 80003b0:      	str	r1, [sp, #0x8]
 80003b2:      	b	#-0x2 <cortex_m::interrupt::free::h5bb11f3b8784bac3+0x34>
;     if primask.is_active() {
 80003b4:      	ldr	r0, [sp, #0xc]
 80003b6:      	and	r0, r0, #0x1
 80003ba:      	bl	#0xfe
 80003be:      	str	r0, [sp, #0x4]
 80003c0:      	b	#-0x2 <cortex_m::interrupt::free::h5bb11f3b8784bac3+0x42>
 80003c2:      	ldr	r0, [sp, #0x4]
 80003c4:      	lsls	r1, r0, #0x1f
 80003c6:      	cmp	r1, #0x0
 80003c8:      	bne	#0x2 <cortex_m::interrupt::free::h5bb11f3b8784bac3+0x4e>
 80003ca:      	b	#-0x2 <cortex_m::interrupt::free::h5bb11f3b8784bac3+0x4c>
 80003cc:      	b	#0x4 <cortex_m::interrupt::free::h5bb11f3b8784bac3+0x54>
;         unsafe { enable() }
 80003ce:      	bl	#0x154
 80003d2:      	b	#-0x2 <cortex_m::interrupt::free::h5bb11f3b8784bac3+0x54>
; }
 80003d4:      	ldr	r0, [sp, #0x8]
 80003d6:      	and	r0, r0, #0x1
 80003da:      	add	sp, #0x20
 80003dc:      	pop	{r7, pc}

080003de <stm32f30x::Peripherals::take::{{closure}}::h7016fb5be10b1d53>:
;         cortex_m::interrupt::free(|_| {
 80003de:      	push	{r7, lr}
 80003e0:      	mov	r7, sp
 80003e2:      	sub	sp, #0x10
 80003e4:      	str	r0, [sp, #0xc]
;             if unsafe { DEVICE_PERIPHERALS } {
 80003e6:      	movw	r0, #0x0
 80003ea:      	movt	r0, #0x2000
 80003ee:      	ldrb	r0, [r0]
 80003f0:      	lsls	r0, r0, #0x1f
 80003f2:      	cmp	r0, #0x0
 80003f4:      	bne	#0x6 <stm32f30x::Peripherals::take::{{closure}}::h7016fb5be10b1d53+0x20>
 80003f6:      	b	#-0x2 <stm32f30x::Peripherals::take::{{closure}}::h7016fb5be10b1d53+0x1a>
;                 Some(unsafe { Peripherals::steal() })
 80003f8:      	bl	#0x1536
 80003fc:      	b	#0x6 <stm32f30x::Peripherals::take::{{closure}}::h7016fb5be10b1d53+0x28>
 80003fe:      	movs	r0, #0x0
;                 None
 8000400:      	strb	r0, [r7, #-9]
;             if unsafe { DEVICE_PERIPHERALS } {
 8000404:      	b	#0x6 <stm32f30x::Peripherals::take::{{closure}}::h7016fb5be10b1d53+0x30>
 8000406:      	movs	r0, #0x1
;                 Some(unsafe { Peripherals::steal() })
 8000408:      	strb	r0, [r7, #-9]
;             if unsafe { DEVICE_PERIPHERALS } {
 800040c:      	b	#-0x2 <stm32f30x::Peripherals::take::{{closure}}::h7016fb5be10b1d53+0x30>
;         })
 800040e:      	ldrb	r0, [r7, #-9]
 8000412:      	add	sp, #0x10
 8000414:      	pop	{r7, pc}

08000416 <cortex_m::peripheral::Peripherals::take::h33f93533934c9d35>:
;     pub fn take() -> Option<Self> {
 8000416:      	push	{r7, lr}
 8000418:      	mov	r7, sp
 800041a:      	sub	sp, #0x8
;         interrupt::free(|_| {
 800041c:      	bl	#-0xa0
 8000420:      	str	r0, [sp]
 8000422:      	b	#-0x2 <cortex_m::peripheral::Peripherals::take::h33f93533934c9d35+0xe>
;     }
 8000424:      	ldr	r0, [sp]
 8000426:      	and	r0, r0, #0x1
 800042a:      	add	sp, #0x8
 800042c:      	pop	{r7, pc}

0800042e <cortex_m::peripheral::Peripherals::steal::h91b8f25fa5f79ec9>:
;     pub unsafe fn steal() -> Self {
 800042e:      	sub	sp, #0x4
;         TAKEN = true;
 8000430:      	movw	r0, #0x1
 8000434:      	movt	r0, #0x2000
 8000438:      	movs	r1, #0x1
 800043a:      	strb	r1, [r0]
;     }
 800043c:      	add	sp, #0x4
 800043e:      	bx	lr

08000440 <<cortex_m::register::primask::Primask as core::cmp::PartialEq>::eq::h11c08d9d6f1f679c>:
; #[derive(Clone, Copy, Debug, Eq, PartialEq)]
 8000440:      	sub	sp, #0x14
 8000442:      	str	r0, [sp, #0x4]
 8000444:      	str	r1, [sp, #0x8]
 8000446:      	ldrb	r0, [r0]
 8000448:      	str	r0, [sp, #0xc]
 800044a:      	ldrb	r1, [r1]
 800044c:      	str	r1, [sp, #0x10]
 800044e:      	cmp	r0, r1
 8000450:      	bne	#0x8 <<cortex_m::register::primask::Primask as core::cmp::PartialEq>::eq::h11c08d9d6f1f679c+0x1c>
 8000452:      	b	#-0x2 <<cortex_m::register::primask::Primask as core::cmp::PartialEq>::eq::h11c08d9d6f1f679c+0x14>
 8000454:      	movs	r0, #0x1
; #[derive(Clone, Copy, Debug, Eq, PartialEq)]
 8000456:      	strb.w	r0, [sp, #0x3]
 800045a:      	b	#0x6 <<cortex_m::register::primask::Primask as core::cmp::PartialEq>::eq::h11c08d9d6f1f679c+0x24>
 800045c:      	movs	r0, #0x0
; #[derive(Clone, Copy, Debug, Eq, PartialEq)]
 800045e:      	strb.w	r0, [sp, #0x3]
 8000462:      	b	#-0x2 <<cortex_m::register::primask::Primask as core::cmp::PartialEq>::eq::h11c08d9d6f1f679c+0x24>
 8000464:      	ldrb.w	r0, [sp, #0x3]
 8000468:      	lsls	r0, r0, #0x1f
 800046a:      	cmp	r0, #0x0
 800046c:      	bne	#0x8 <<cortex_m::register::primask::Primask as core::cmp::PartialEq>::eq::h11c08d9d6f1f679c+0x38>
 800046e:      	b	#-0x2 <<cortex_m::register::primask::Primask as core::cmp::PartialEq>::eq::h11c08d9d6f1f679c+0x30>
 8000470:      	movs	r0, #0x0
; #[derive(Clone, Copy, Debug, Eq, PartialEq)]
 8000472:      	strb.w	r0, [sp, #0x2]
 8000476:      	b	#0x6 <<cortex_m::register::primask::Primask as core::cmp::PartialEq>::eq::h11c08d9d6f1f679c+0x40>
 8000478:      	movs	r0, #0x1
; #[derive(Clone, Copy, Debug, Eq, PartialEq)]
 800047a:      	strb.w	r0, [sp, #0x2]
 800047e:      	b	#-0x2 <<cortex_m::register::primask::Primask as core::cmp::PartialEq>::eq::h11c08d9d6f1f679c+0x40>
 8000480:      	ldrb.w	r0, [sp, #0x2]
 8000484:      	add	sp, #0x14
 8000486:      	bx	lr

08000488 <cortex_m::register::primask::read::hb4b6e4e7dfbd7642>:
; pub fn read() -> Primask {
 8000488:      	push	{r7, lr}
 800048a:      	mov	r7, sp
 800048c:      	sub	sp, #0x10
;                     unsafe { __primask() }
 800048e:      	bl	#0x1540
 8000492:      	mov	r1, r0
 8000494:      	str	r0, [sp, #0xc]
 8000496:      	str	r1, [sp, #0x4]
 8000498:      	b	#-0x2 <cortex_m::register::primask::read::hb4b6e4e7dfbd7642+0x12>
;             if r & (1 << 0) == (1 << 0) {
 800049a:      	ldr	r0, [sp, #0x4]
 800049c:      	lsls	r1, r0, #0x1f
 800049e:      	cmp	r1, #0x0
 80004a0:      	bne	#0x8 <cortex_m::register::primask::read::hb4b6e4e7dfbd7642+0x24>
 80004a2:      	b	#-0x2 <cortex_m::register::primask::read::hb4b6e4e7dfbd7642+0x1c>
 80004a4:      	movs	r0, #0x0
;                 Primask::Active
 80004a6:      	strb	r0, [r7, #-5]
;             if r & (1 << 0) == (1 << 0) {
 80004aa:      	b	#0x6 <cortex_m::register::primask::read::hb4b6e4e7dfbd7642+0x2c>
 80004ac:      	movs	r0, #0x1
;                 Primask::Inactive
 80004ae:      	strb	r0, [r7, #-5]
;             if r & (1 << 0) == (1 << 0) {
 80004b2:      	b	#-0x2 <cortex_m::register::primask::read::hb4b6e4e7dfbd7642+0x2c>
; }
 80004b4:      	ldrb	r0, [r7, #-5]
 80004b8:      	add	sp, #0x10
 80004ba:      	pop	{r7, pc}

080004bc <cortex_m::register::primask::Primask::is_active::hd643b30d11bb3661>:
;     pub fn is_active(self) -> bool {
 80004bc:      	push	{r7, lr}
 80004be:      	mov	r7, sp
 80004c0:      	sub	sp, #0x10
 80004c2:      	mov	r1, r0
 80004c4:      	strb	r0, [r7, #-1]
;         self == Primask::Active
 80004c8:      	movw	r0, #0x3b73
 80004cc:      	movt	r0, #0x800
 80004d0:      	subs	r2, r7, #0x1
 80004d2:      	str	r0, [sp, #0x8]
 80004d4:      	mov	r0, r2
 80004d6:      	ldr	r2, [sp, #0x8]
 80004d8:      	str	r1, [sp, #0x4]
 80004da:      	mov	r1, r2
 80004dc:      	bl	#-0xa0
 80004e0:      	str	r0, [sp]
 80004e2:      	b	#-0x2 <cortex_m::register::primask::Primask::is_active::hd643b30d11bb3661+0x28>
;     }
 80004e4:      	ldr	r0, [sp]
 80004e6:      	and	r0, r0, #0x1
 80004ea:      	add	sp, #0x10
 80004ec:      	pop	{r7, pc}

080004ee <cortex_m::peripheral::Peripherals::take::{{closure}}::hed3cf13f2bcc7d8a>:
;         interrupt::free(|_| {
 80004ee:      	push	{r7, lr}
 80004f0:      	mov	r7, sp
 80004f2:      	sub	sp, #0x10
 80004f4:      	str	r0, [sp, #0xc]
;             if unsafe { TAKEN } {
 80004f6:      	movw	r0, #0x1
 80004fa:      	movt	r0, #0x2000
 80004fe:      	ldrb	r0, [r0]
 8000500:      	lsls	r0, r0, #0x1f
 8000502:      	cmp	r0, #0x0
 8000504:      	bne	#0x6 <cortex_m::peripheral::Peripherals::take::{{closure}}::hed3cf13f2bcc7d8a+0x20>
 8000506:      	b	#-0x2 <cortex_m::peripheral::Peripherals::take::{{closure}}::hed3cf13f2bcc7d8a+0x1a>
;                 Some(unsafe { Peripherals::steal() })
 8000508:      	bl	#-0xde
 800050c:      	b	#0x6 <cortex_m::peripheral::Peripherals::take::{{closure}}::hed3cf13f2bcc7d8a+0x28>
 800050e:      	movs	r0, #0x0
;                 None
 8000510:      	strb	r0, [r7, #-9]
;             if unsafe { TAKEN } {
 8000514:      	b	#0x6 <cortex_m::peripheral::Peripherals::take::{{closure}}::hed3cf13f2bcc7d8a+0x30>
 8000516:      	movs	r0, #0x1
;                 Some(unsafe { Peripherals::steal() })
 8000518:      	strb	r0, [r7, #-9]
;             if unsafe { TAKEN } {
 800051c:      	b	#-0x2 <cortex_m::peripheral::Peripherals::take::{{closure}}::hed3cf13f2bcc7d8a+0x30>
;         })
 800051e:      	ldrb	r0, [r7, #-9]
 8000522:      	add	sp, #0x10
 8000524:      	pop	{r7, pc}

08000526 <cortex_m::interrupt::enable::h8d81d73e56408f0b>:
; pub unsafe fn enable() {
 8000526:      	push	{r7, lr}
 8000528:      	mov	r7, sp
;             __cpsie();
 800052a:      	bl	#0x14a0
 800052e:      	b	#-0x2 <cortex_m::interrupt::enable::h8d81d73e56408f0b+0xa>
; }
 8000530:      	pop	{r7, pc}

08000532 <cortex_m::interrupt::disable::hab803f49552c3139>:
; pub fn disable() {
 8000532:      	push	{r7, lr}
 8000534:      	mov	r7, sp
;             __cpsid();
 8000536:      	bl	#0x1490
 800053a:      	b	#-0x2 <cortex_m::interrupt::disable::hab803f49552c3139+0xa>
; }
 800053c:      	pop	{r7, pc}

0800053e <f3::led::Leds::new::h1ea59263a3e3827c>:
;     pub fn new(mut gpioe: gpioe::Parts) -> Self {
 800053e:      	push	{r4, r5, r6, r7, lr}
 8000540:      	add	r7, sp, #0xc
 8000542:      	str	r8, [sp, #-4]!
 8000546:      	sub	sp, #0x78
 8000548:      	add	r0, sp, #0x44
;         let n = gpioe
 800054a:      	str	r0, [sp, #0x40]
 800054c:      	ldr	r1, [sp, #0x40]
 800054e:      	bl	#0x202
 8000552:      	b	#-0x2 <f3::led::Leds::new::h1ea59263a3e3827c+0x16>
 8000554:      	add	r0, sp, #0x44
;         let ne = gpioe
 8000556:      	str	r0, [sp, #0x3c]
 8000558:      	ldr	r1, [sp, #0x3c]
 800055a:      	bl	#0x316
 800055e:      	b	#-0x2 <f3::led::Leds::new::h1ea59263a3e3827c+0x22>
 8000560:      	add	r0, sp, #0x44
;         let e = gpioe
 8000562:      	str	r0, [sp, #0x38]
 8000564:      	ldr	r1, [sp, #0x38]
 8000566:      	bl	#0x42a
 800056a:      	b	#-0x2 <f3::led::Leds::new::h1ea59263a3e3827c+0x2e>
 800056c:      	add	r0, sp, #0x44
;         let se = gpioe
 800056e:      	str	r0, [sp, #0x34]
 8000570:      	ldr	r1, [sp, #0x34]
 8000572:      	bl	#0x53e
 8000576:      	b	#-0x2 <f3::led::Leds::new::h1ea59263a3e3827c+0x3a>
 8000578:      	add	r0, sp, #0x44
;         let s = gpioe
 800057a:      	str	r0, [sp, #0x30]
 800057c:      	ldr	r1, [sp, #0x30]
 800057e:      	bl	#0x652
 8000582:      	b	#-0x2 <f3::led::Leds::new::h1ea59263a3e3827c+0x46>
 8000584:      	add	r0, sp, #0x44
;         let sw = gpioe
 8000586:      	str	r0, [sp, #0x2c]
 8000588:      	ldr	r1, [sp, #0x2c]
 800058a:      	bl	#0x766
 800058e:      	b	#-0x2 <f3::led::Leds::new::h1ea59263a3e3827c+0x52>
 8000590:      	add	r0, sp, #0x44
;         let w = gpioe
 8000592:      	str	r0, [sp, #0x28]
 8000594:      	ldr	r1, [sp, #0x28]
 8000596:      	bl	#0x87a
 800059a:      	b	#-0x2 <f3::led::Leds::new::h1ea59263a3e3827c+0x5e>
 800059c:      	add	r0, sp, #0x44
;         let nw = gpioe
 800059e:      	str	r0, [sp, #0x24]
 80005a0:      	ldr	r1, [sp, #0x24]
 80005a2:      	bl	#0x8e
 80005a6:      	b	#-0x2 <f3::led::Leds::new::h1ea59263a3e3827c+0x6a>
;                 n.into(),
 80005a8:      	bl	#0xa08
 80005ac:      	str	r0, [sp, #0x20]
 80005ae:      	b	#-0x2 <f3::led::Leds::new::h1ea59263a3e3827c+0x72>
;                 ne.into(),
 80005b0:      	bl	#0xa38
 80005b4:      	str	r0, [sp, #0x1c]
 80005b6:      	b	#-0x2 <f3::led::Leds::new::h1ea59263a3e3827c+0x7a>
;                 e.into(),
 80005b8:      	bl	#0xa68
 80005bc:      	str	r0, [sp, #0x18]
 80005be:      	b	#-0x2 <f3::led::Leds::new::h1ea59263a3e3827c+0x82>
;                 se.into(),
 80005c0:      	bl	#0xa98
 80005c4:      	str	r0, [sp, #0x14]
 80005c6:      	b	#-0x2 <f3::led::Leds::new::h1ea59263a3e3827c+0x8a>
;                 s.into(),
 80005c8:      	bl	#0xaac
 80005cc:      	str	r0, [sp, #0x10]
 80005ce:      	b	#-0x2 <f3::led::Leds::new::h1ea59263a3e3827c+0x92>
;                 sw.into(),
 80005d0:      	bl	#0xa6c
 80005d4:      	str	r0, [sp, #0xc]
 80005d6:      	b	#-0x2 <f3::led::Leds::new::h1ea59263a3e3827c+0x9a>
;                 w.into(),
 80005d8:      	bl	#0xa2c
 80005dc:      	str	r0, [sp, #0x8]
 80005de:      	b	#-0x2 <f3::led::Leds::new::h1ea59263a3e3827c+0xa2>
;                 nw.into(),
 80005e0:      	bl	#0x9ec
 80005e4:      	str	r0, [sp, #0x4]
 80005e6:      	b	#-0x2 <f3::led::Leds::new::h1ea59263a3e3827c+0xaa>
;             leds: [
 80005e8:      	ldr	r0, [sp, #0x20]
 80005ea:      	strb.w	r0, [sp, #0x50]
 80005ee:      	ldr	r1, [sp, #0x1c]
 80005f0:      	strb.w	r1, [sp, #0x51]
 80005f4:      	ldr	r2, [sp, #0x18]
 80005f6:      	strb.w	r2, [sp, #0x52]
 80005fa:      	ldr	r3, [sp, #0x14]
 80005fc:      	strb.w	r3, [sp, #0x53]
 8000600:      	ldr.w	r12, [sp, #0x10]
 8000604:      	strb.w	r12, [sp, #0x54]
 8000608:      	ldr.w	lr, [sp, #0xc]
 800060c:      	strb.w	lr, [sp, #0x55]
 8000610:      	ldr	r4, [sp, #0x8]
 8000612:      	strb.w	r4, [sp, #0x56]
 8000616:      	ldr	r5, [sp, #0x4]
 8000618:      	strb.w	r5, [sp, #0x57]
;         Leds {
 800061c:      	ldr	r6, [sp, #0x50]
 800061e:      	ldr.w	r8, [sp, #0x54]
 8000622:      	str.w	r8, [sp, #0x4c]
 8000626:      	str	r6, [sp, #0x48]
;     }
 8000628:      	ldr	r0, [sp, #0x48]
 800062a:      	ldr	r1, [sp, #0x4c]
 800062c:      	add	sp, #0x78
 800062e:      	ldr	r8, [sp], #4
 8000632:      	pop	{r4, r5, r6, r7, pc}

08000634 <_ZN13stm32f30x_hal4gpio5gpioe15PE8$LT$MODE$GT$21into_push_pull_output17hea3915472d3baccfE>:
;                     pub fn into_push_pull_output(
 8000634:      	push	{r7, lr}
 8000636:      	mov	r7, sp
 8000638:      	sub	sp, #0x30
 800063a:      	str	r0, [sp, #0x28]
 800063c:      	str	r1, [sp, #0x2c]
;                         let offset = 2 * $i;
 800063e:      	movw	r2, #0x3ae0
 8000642:      	movt	r2, #0x800
 8000646:      	ldr	r2, [r2]
 8000648:      	str	r2, [sp, #0x10]
 800064a:      	movs	r2, #0x1
;                         let mode = 0b01;
 800064c:      	str	r2, [sp, #0x14]
;                         moder.moder().modify(|r, w| unsafe {
 800064e:      	str	r1, [sp, #0x8]
 8000650:      	bl	#0x1038
 8000654:      	str	r0, [sp, #0x4]
 8000656:      	b	#-0x2 <_ZN13stm32f30x_hal4gpio5gpioe15PE8$LT$MODE$GT$21into_push_pull_output17hea3915472d3baccfE+0x24>
 8000658:      	add	r0, sp, #0x10
;                         moder.moder().modify(|r, w| unsafe {
 800065a:      	str	r0, [sp, #0x18]
 800065c:      	add	r0, sp, #0x14
 800065e:      	str	r0, [sp, #0x1c]
 8000660:      	ldr	r1, [sp, #0x18]
 8000662:      	ldr	r2, [sp, #0x1c]
 8000664:      	ldr	r0, [sp, #0x4]
 8000666:      	bl	#0xb0e
 800066a:      	b	#-0x2 <_ZN13stm32f30x_hal4gpio5gpioe15PE8$LT$MODE$GT$21into_push_pull_output17hea3915472d3baccfE+0x38>
;                         otyper
 800066c:      	ldr	r0, [sp, #0x8]
 800066e:      	bl	#0x1030
 8000672:      	str	r0, [sp]
 8000674:      	b	#-0x2 <_ZN13stm32f30x_hal4gpio5gpioe15PE8$LT$MODE$GT$21into_push_pull_output17hea3915472d3baccfE+0x42>
 8000676:      	ldr	r0, [sp]
 8000678:      	bl	#0xeb4
 800067c:      	b	#-0x2 <_ZN13stm32f30x_hal4gpio5gpioe15PE8$LT$MODE$GT$21into_push_pull_output17hea3915472d3baccfE+0x4a>
;                     }
 800067e:      	add	sp, #0x30
 8000680:      	pop	{r7, pc}

08000682 <_ZN13stm32f30x_hal4gpio5gpioe15PE8$LT$MODE$GT$21into_push_pull_output28_$u7b$$u7b$closure$u7d$$u7d$17h105cf3545f1f56b9E>:
;                         moder.moder().modify(|r, w| unsafe {
 8000682:      	push	{r4, r5, r7, lr}
 8000684:      	add	r7, sp, #0x8
 8000686:      	sub	sp, #0x30
 8000688:      	str	r0, [sp, #0x20]
 800068a:      	str	r1, [sp, #0x24]
 800068c:      	str	r2, [sp, #0x28]
 800068e:      	str	r3, [sp, #0x2c]
;                             w.bits((r.bits() & !(0b11 << offset)) | (mode << offset))
 8000690:      	str	r0, [sp, #0x1c]
 8000692:      	mov	r0, r2
 8000694:      	str	r3, [sp, #0x18]
 8000696:      	str	r1, [sp, #0x14]
 8000698:      	bl	#0x9f8
 800069c:      	str	r0, [sp, #0x10]
 800069e:      	b	#-0x2 <_ZN13stm32f30x_hal4gpio5gpioe15PE8$LT$MODE$GT$21into_push_pull_output28_$u7b$$u7b$closure$u7d$$u7d$17h105cf3545f1f56b9E+0x1e>
 80006a0:      	ldr	r0, [sp, #0x1c]
 80006a2:      	ldr	r1, [r0]
 80006a4:      	and	r2, r1, #0x1f
 80006a8:      	movs	r3, #0x3
 80006aa:      	lsl.w	r2, r3, r2
 80006ae:      	lsrs	r1, r1, #0x5
 80006b0:      	cmp	r1, #0x0
 80006b2:      	str	r2, [sp, #0xc]
 80006b4:      	bne	#0x42 <_ZN13stm32f30x_hal4gpio5gpioe15PE8$LT$MODE$GT$21into_push_pull_output28_$u7b$$u7b$closure$u7d$$u7d$17h105cf3545f1f56b9E+0x78>
 80006b6:      	b	#-0x2 <_ZN13stm32f30x_hal4gpio5gpioe15PE8$LT$MODE$GT$21into_push_pull_output28_$u7b$$u7b$closure$u7d$$u7d$17h105cf3545f1f56b9E+0x36>
 80006b8:      	ldr	r0, [sp, #0x10]
 80006ba:      	ldr	r1, [sp, #0xc]
 80006bc:      	bic.w	r2, r0, r1
 80006c0:      	ldr	r3, [sp, #0x14]
 80006c2:      	ldr.w	r12, [r3]
 80006c6:      	ldr.w	lr, [sp, #0x1c]
 80006ca:      	ldr.w	r4, [lr]
 80006ce:      	and	r5, r4, #0x1f
 80006d2:      	lsl.w	r12, r12, r5
 80006d6:      	lsrs	r4, r4, #0x5
 80006d8:      	cmp	r4, #0x0
 80006da:      	str	r2, [sp, #0x8]
 80006dc:      	str.w	r12, [sp, #0x4]
 80006e0:      	bne	#0x2e <_ZN13stm32f30x_hal4gpio5gpioe15PE8$LT$MODE$GT$21into_push_pull_output28_$u7b$$u7b$closure$u7d$$u7d$17h105cf3545f1f56b9E+0x90>
 80006e2:      	b	#-0x2 <_ZN13stm32f30x_hal4gpio5gpioe15PE8$LT$MODE$GT$21into_push_pull_output28_$u7b$$u7b$closure$u7d$$u7d$17h105cf3545f1f56b9E+0x62>
 80006e4:      	ldr	r0, [sp, #0x8]
 80006e6:      	ldr	r1, [sp, #0x4]
 80006e8:      	orrs	r1, r0
 80006ea:      	ldr	r0, [sp, #0x18]
 80006ec:      	bl	#0x9ae
 80006f0:      	str	r0, [sp]
 80006f2:      	b	#-0x2 <_ZN13stm32f30x_hal4gpio5gpioe15PE8$LT$MODE$GT$21into_push_pull_output28_$u7b$$u7b$closure$u7d$$u7d$17h105cf3545f1f56b9E+0x72>
;                         });
 80006f4:      	ldr	r0, [sp]
 80006f6:      	add	sp, #0x30
 80006f8:      	pop	{r4, r5, r7, pc}
;                             w.bits((r.bits() & !(0b11 << offset)) | (mode << offset))
 80006fa:      	movw	r0, #0x3be0
 80006fe:      	movt	r0, #0x800
 8000702:      	movw	r2, #0x3bd0
 8000706:      	movt	r2, #0x800
 800070a:      	movs	r1, #0x23
 800070c:      	bl	#0x19e6
 8000710:      	trap
 8000712:      	movw	r0, #0x3be0
 8000716:      	movt	r0, #0x800
 800071a:      	movw	r2, #0x3bd0
 800071e:      	movt	r2, #0x800
 8000722:      	movs	r1, #0x23
 8000724:      	bl	#0x19ce
 8000728:      	trap

0800072a <_ZN13stm32f30x_hal4gpio5gpioe15PE8$LT$MODE$GT$21into_push_pull_output28_$u7b$$u7b$closure$u7d$$u7d$17h5d56a574a90d164bE>:
;                             .modify(|r, w| unsafe { w.bits(r.bits() & !(0b1 << $i)) });
 800072a:      	push	{r7, lr}
 800072c:      	mov	r7, sp
 800072e:      	sub	sp, #0x18
 8000730:      	str	r0, [sp, #0x10]
 8000732:      	str	r1, [sp, #0x14]
 8000734:      	str	r1, [sp, #0x8]
 8000736:      	bl	#0x970
 800073a:      	str	r0, [sp, #0x4]
 800073c:      	b	#-0x2 <_ZN13stm32f30x_hal4gpio5gpioe15PE8$LT$MODE$GT$21into_push_pull_output28_$u7b$$u7b$closure$u7d$$u7d$17h5d56a574a90d164bE+0x14>
 800073e:      	ldr	r0, [sp, #0x4]
 8000740:      	bic	r1, r0, #0x100
 8000744:      	ldr	r0, [sp, #0x8]
 8000746:      	bl	#0x96a
 800074a:      	str	r0, [sp]
 800074c:      	b	#-0x2 <_ZN13stm32f30x_hal4gpio5gpioe15PE8$LT$MODE$GT$21into_push_pull_output28_$u7b$$u7b$closure$u7d$$u7d$17h5d56a574a90d164bE+0x24>
 800074e:      	ldr	r0, [sp]
 8000750:      	add	sp, #0x18
 8000752:      	pop	{r7, pc}

08000754 <_ZN13stm32f30x_hal4gpio5gpioe15PE9$LT$MODE$GT$21into_push_pull_output17h95e1283e7c57575fE>:
;                     pub fn into_push_pull_output(
 8000754:      	push	{r7, lr}
 8000756:      	mov	r7, sp
 8000758:      	sub	sp, #0x30
 800075a:      	str	r0, [sp, #0x28]
 800075c:      	str	r1, [sp, #0x2c]
;                         let offset = 2 * $i;
 800075e:      	movw	r2, #0x3ad0
 8000762:      	movt	r2, #0x800
 8000766:      	ldr	r2, [r2]
 8000768:      	str	r2, [sp, #0x10]
 800076a:      	movs	r2, #0x1
;                         let mode = 0b01;
 800076c:      	str	r2, [sp, #0x14]
;                         moder.moder().modify(|r, w| unsafe {
 800076e:      	str	r1, [sp, #0x8]
 8000770:      	bl	#0xf18
 8000774:      	str	r0, [sp, #0x4]
 8000776:      	b	#-0x2 <_ZN13stm32f30x_hal4gpio5gpioe15PE9$LT$MODE$GT$21into_push_pull_output17h95e1283e7c57575fE+0x24>
 8000778:      	add	r0, sp, #0x10
;                         moder.moder().modify(|r, w| unsafe {
 800077a:      	str	r0, [sp, #0x18]
 800077c:      	add	r0, sp, #0x14
 800077e:      	str	r0, [sp, #0x1c]
 8000780:      	ldr	r1, [sp, #0x18]
 8000782:      	ldr	r2, [sp, #0x1c]
 8000784:      	ldr	r0, [sp, #0x4]
 8000786:      	bl	#0x936
 800078a:      	b	#-0x2 <_ZN13stm32f30x_hal4gpio5gpioe15PE9$LT$MODE$GT$21into_push_pull_output17h95e1283e7c57575fE+0x38>
;                         otyper
 800078c:      	ldr	r0, [sp, #0x8]
 800078e:      	bl	#0xf10
 8000792:      	str	r0, [sp]
 8000794:      	b	#-0x2 <_ZN13stm32f30x_hal4gpio5gpioe15PE9$LT$MODE$GT$21into_push_pull_output17h95e1283e7c57575fE+0x42>
 8000796:      	ldr	r0, [sp]
 8000798:      	bl	#0xcf4
 800079c:      	b	#-0x2 <_ZN13stm32f30x_hal4gpio5gpioe15PE9$LT$MODE$GT$21into_push_pull_output17h95e1283e7c57575fE+0x4a>
;                     }
 800079e:      	add	sp, #0x30
 80007a0:      	pop	{r7, pc}

080007a2 <_ZN13stm32f30x_hal4gpio5gpioe15PE9$LT$MODE$GT$21into_push_pull_output28_$u7b$$u7b$closure$u7d$$u7d$17h8df89d17c66f2ba7E>:
;                         moder.moder().modify(|r, w| unsafe {
 80007a2:      	push	{r4, r5, r7, lr}
 80007a4:      	add	r7, sp, #0x8
 80007a6:      	sub	sp, #0x30
 80007a8:      	str	r0, [sp, #0x20]
 80007aa:      	str	r1, [sp, #0x24]
 80007ac:      	str	r2, [sp, #0x28]
 80007ae:      	str	r3, [sp, #0x2c]
;                             w.bits((r.bits() & !(0b11 << offset)) | (mode << offset))
 80007b0:      	str	r0, [sp, #0x1c]
 80007b2:      	mov	r0, r2
 80007b4:      	str	r3, [sp, #0x18]
 80007b6:      	str	r1, [sp, #0x14]
 80007b8:      	bl	#0x8d8
 80007bc:      	str	r0, [sp, #0x10]
 80007be:      	b	#-0x2 <_ZN13stm32f30x_hal4gpio5gpioe15PE9$LT$MODE$GT$21into_push_pull_output28_$u7b$$u7b$closure$u7d$$u7d$17h8df89d17c66f2ba7E+0x1e>
 80007c0:      	ldr	r0, [sp, #0x1c]
 80007c2:      	ldr	r1, [r0]
 80007c4:      	and	r2, r1, #0x1f
 80007c8:      	movs	r3, #0x3
 80007ca:      	lsl.w	r2, r3, r2
 80007ce:      	lsrs	r1, r1, #0x5
 80007d0:      	cmp	r1, #0x0
 80007d2:      	str	r2, [sp, #0xc]
 80007d4:      	bne	#0x42 <_ZN13stm32f30x_hal4gpio5gpioe15PE9$LT$MODE$GT$21into_push_pull_output28_$u7b$$u7b$closure$u7d$$u7d$17h8df89d17c66f2ba7E+0x78>
 80007d6:      	b	#-0x2 <_ZN13stm32f30x_hal4gpio5gpioe15PE9$LT$MODE$GT$21into_push_pull_output28_$u7b$$u7b$closure$u7d$$u7d$17h8df89d17c66f2ba7E+0x36>
 80007d8:      	ldr	r0, [sp, #0x10]
 80007da:      	ldr	r1, [sp, #0xc]
 80007dc:      	bic.w	r2, r0, r1
 80007e0:      	ldr	r3, [sp, #0x14]
 80007e2:      	ldr.w	r12, [r3]
 80007e6:      	ldr.w	lr, [sp, #0x1c]
 80007ea:      	ldr.w	r4, [lr]
 80007ee:      	and	r5, r4, #0x1f
 80007f2:      	lsl.w	r12, r12, r5
 80007f6:      	lsrs	r4, r4, #0x5
 80007f8:      	cmp	r4, #0x0
 80007fa:      	str	r2, [sp, #0x8]
 80007fc:      	str.w	r12, [sp, #0x4]
 8000800:      	bne	#0x2e <_ZN13stm32f30x_hal4gpio5gpioe15PE9$LT$MODE$GT$21into_push_pull_output28_$u7b$$u7b$closure$u7d$$u7d$17h8df89d17c66f2ba7E+0x90>
 8000802:      	b	#-0x2 <_ZN13stm32f30x_hal4gpio5gpioe15PE9$LT$MODE$GT$21into_push_pull_output28_$u7b$$u7b$closure$u7d$$u7d$17h8df89d17c66f2ba7E+0x62>
 8000804:      	ldr	r0, [sp, #0x8]
 8000806:      	ldr	r1, [sp, #0x4]
 8000808:      	orrs	r1, r0
 800080a:      	ldr	r0, [sp, #0x18]
 800080c:      	bl	#0x88e
 8000810:      	str	r0, [sp]
 8000812:      	b	#-0x2 <_ZN13stm32f30x_hal4gpio5gpioe15PE9$LT$MODE$GT$21into_push_pull_output28_$u7b$$u7b$closure$u7d$$u7d$17h8df89d17c66f2ba7E+0x72>
;                         });
 8000814:      	ldr	r0, [sp]
 8000816:      	add	sp, #0x30
 8000818:      	pop	{r4, r5, r7, pc}
;                             w.bits((r.bits() & !(0b11 << offset)) | (mode << offset))
 800081a:      	movw	r0, #0x3be0
 800081e:      	movt	r0, #0x800
 8000822:      	movw	r2, #0x3bd0
 8000826:      	movt	r2, #0x800
 800082a:      	movs	r1, #0x23
 800082c:      	bl	#0x18c6
 8000830:      	trap
 8000832:      	movw	r0, #0x3be0
 8000836:      	movt	r0, #0x800
 800083a:      	movw	r2, #0x3bd0
 800083e:      	movt	r2, #0x800
 8000842:      	movs	r1, #0x23
 8000844:      	bl	#0x18ae
 8000848:      	trap

0800084a <_ZN13stm32f30x_hal4gpio5gpioe15PE9$LT$MODE$GT$21into_push_pull_output28_$u7b$$u7b$closure$u7d$$u7d$17hede7ff8cb744fbdcE>:
;                             .modify(|r, w| unsafe { w.bits(r.bits() & !(0b1 << $i)) });
 800084a:      	push	{r7, lr}
 800084c:      	mov	r7, sp
 800084e:      	sub	sp, #0x18
 8000850:      	str	r0, [sp, #0x10]
 8000852:      	str	r1, [sp, #0x14]
 8000854:      	str	r1, [sp, #0x8]
 8000856:      	bl	#0x850
 800085a:      	str	r0, [sp, #0x4]
 800085c:      	b	#-0x2 <_ZN13stm32f30x_hal4gpio5gpioe15PE9$LT$MODE$GT$21into_push_pull_output28_$u7b$$u7b$closure$u7d$$u7d$17hede7ff8cb744fbdcE+0x14>
 800085e:      	ldr	r0, [sp, #0x4]
 8000860:      	bic	r1, r0, #0x200
 8000864:      	ldr	r0, [sp, #0x8]
 8000866:      	bl	#0x84a
 800086a:      	str	r0, [sp]
 800086c:      	b	#-0x2 <_ZN13stm32f30x_hal4gpio5gpioe15PE9$LT$MODE$GT$21into_push_pull_output28_$u7b$$u7b$closure$u7d$$u7d$17hede7ff8cb744fbdcE+0x24>
 800086e:      	ldr	r0, [sp]
 8000870:      	add	sp, #0x18
 8000872:      	pop	{r7, pc}

08000874 <_ZN13stm32f30x_hal4gpio5gpioe16PE10$LT$MODE$GT$21into_push_pull_output17h4e8f090902aa93cfE>:
;                     pub fn into_push_pull_output(
 8000874:      	push	{r7, lr}
 8000876:      	mov	r7, sp
 8000878:      	sub	sp, #0x30
 800087a:      	str	r0, [sp, #0x28]
 800087c:      	str	r1, [sp, #0x2c]
;                         let offset = 2 * $i;
 800087e:      	movw	r2, #0x3ad8
 8000882:      	movt	r2, #0x800
 8000886:      	ldr	r2, [r2]
 8000888:      	str	r2, [sp, #0x10]
 800088a:      	movs	r2, #0x1
;                         let mode = 0b01;
 800088c:      	str	r2, [sp, #0x14]
;                         moder.moder().modify(|r, w| unsafe {
 800088e:      	str	r1, [sp, #0x8]
 8000890:      	bl	#0xdf8
 8000894:      	str	r0, [sp, #0x4]
 8000896:      	b	#-0x2 <_ZN13stm32f30x_hal4gpio5gpioe16PE10$LT$MODE$GT$21into_push_pull_output17h4e8f090902aa93cfE+0x24>
 8000898:      	add	r0, sp, #0x10
;                         moder.moder().modify(|r, w| unsafe {
 800089a:      	str	r0, [sp, #0x18]
 800089c:      	add	r0, sp, #0x14
 800089e:      	str	r0, [sp, #0x1c]
 80008a0:      	ldr	r1, [sp, #0x18]
 80008a2:      	ldr	r2, [sp, #0x1c]
 80008a4:      	ldr	r0, [sp, #0x4]
 80008a6:      	bl	#0x9e2
 80008aa:      	b	#-0x2 <_ZN13stm32f30x_hal4gpio5gpioe16PE10$LT$MODE$GT$21into_push_pull_output17h4e8f090902aa93cfE+0x38>
;                         otyper
 80008ac:      	ldr	r0, [sp, #0x8]
 80008ae:      	bl	#0xdf0
 80008b2:      	str	r0, [sp]
 80008b4:      	b	#-0x2 <_ZN13stm32f30x_hal4gpio5gpioe16PE10$LT$MODE$GT$21into_push_pull_output17h4e8f090902aa93cfE+0x42>
 80008b6:      	ldr	r0, [sp]
 80008b8:      	bl	#0xae4
 80008bc:      	b	#-0x2 <_ZN13stm32f30x_hal4gpio5gpioe16PE10$LT$MODE$GT$21into_push_pull_output17h4e8f090902aa93cfE+0x4a>
;                     }
 80008be:      	add	sp, #0x30
 80008c0:      	pop	{r7, pc}

080008c2 <_ZN13stm32f30x_hal4gpio5gpioe16PE10$LT$MODE$GT$21into_push_pull_output28_$u7b$$u7b$closure$u7d$$u7d$17h00f58431839b7371E>:
;                             .modify(|r, w| unsafe { w.bits(r.bits() & !(0b1 << $i)) });
 80008c2:      	push	{r7, lr}
 80008c4:      	mov	r7, sp
 80008c6:      	sub	sp, #0x18
 80008c8:      	str	r0, [sp, #0x10]
 80008ca:      	str	r1, [sp, #0x14]
 80008cc:      	str	r1, [sp, #0x8]
 80008ce:      	bl	#0x7d8
 80008d2:      	str	r0, [sp, #0x4]
 80008d4:      	b	#-0x2 <_ZN13stm32f30x_hal4gpio5gpioe16PE10$LT$MODE$GT$21into_push_pull_output28_$u7b$$u7b$closure$u7d$$u7d$17h00f58431839b7371E+0x14>
 80008d6:      	ldr	r0, [sp, #0x4]
 80008d8:      	bic	r1, r0, #0x400
 80008dc:      	ldr	r0, [sp, #0x8]
 80008de:      	bl	#0x7d2
 80008e2:      	str	r0, [sp]
 80008e4:      	b	#-0x2 <_ZN13stm32f30x_hal4gpio5gpioe16PE10$LT$MODE$GT$21into_push_pull_output28_$u7b$$u7b$closure$u7d$$u7d$17h00f58431839b7371E+0x24>
 80008e6:      	ldr	r0, [sp]
 80008e8:      	add	sp, #0x18
 80008ea:      	pop	{r7, pc}

080008ec <_ZN13stm32f30x_hal4gpio5gpioe16PE10$LT$MODE$GT$21into_push_pull_output28_$u7b$$u7b$closure$u7d$$u7d$17h799296fd75331ff7E>:
;                         moder.moder().modify(|r, w| unsafe {
 80008ec:      	push	{r4, r5, r7, lr}
 80008ee:      	add	r7, sp, #0x8
 80008f0:      	sub	sp, #0x30
 80008f2:      	str	r0, [sp, #0x20]
 80008f4:      	str	r1, [sp, #0x24]
 80008f6:      	str	r2, [sp, #0x28]
 80008f8:      	str	r3, [sp, #0x2c]
;                             w.bits((r.bits() & !(0b11 << offset)) | (mode << offset))
 80008fa:      	str	r0, [sp, #0x1c]
 80008fc:      	mov	r0, r2
 80008fe:      	str	r3, [sp, #0x18]
 8000900:      	str	r1, [sp, #0x14]
 8000902:      	bl	#0x78e
 8000906:      	str	r0, [sp, #0x10]
 8000908:      	b	#-0x2 <_ZN13stm32f30x_hal4gpio5gpioe16PE10$LT$MODE$GT$21into_push_pull_output28_$u7b$$u7b$closure$u7d$$u7d$17h799296fd75331ff7E+0x1e>
 800090a:      	ldr	r0, [sp, #0x1c]
 800090c:      	ldr	r1, [r0]
 800090e:      	and	r2, r1, #0x1f
 8000912:      	movs	r3, #0x3
 8000914:      	lsl.w	r2, r3, r2
 8000918:      	lsrs	r1, r1, #0x5
 800091a:      	cmp	r1, #0x0
 800091c:      	str	r2, [sp, #0xc]
 800091e:      	bne	#0x42 <_ZN13stm32f30x_hal4gpio5gpioe16PE10$LT$MODE$GT$21into_push_pull_output28_$u7b$$u7b$closure$u7d$$u7d$17h799296fd75331ff7E+0x78>
 8000920:      	b	#-0x2 <_ZN13stm32f30x_hal4gpio5gpioe16PE10$LT$MODE$GT$21into_push_pull_output28_$u7b$$u7b$closure$u7d$$u7d$17h799296fd75331ff7E+0x36>
 8000922:      	ldr	r0, [sp, #0x10]
 8000924:      	ldr	r1, [sp, #0xc]
 8000926:      	bic.w	r2, r0, r1
 800092a:      	ldr	r3, [sp, #0x14]
 800092c:      	ldr.w	r12, [r3]
 8000930:      	ldr.w	lr, [sp, #0x1c]
 8000934:      	ldr.w	r4, [lr]
 8000938:      	and	r5, r4, #0x1f
 800093c:      	lsl.w	r12, r12, r5
 8000940:      	lsrs	r4, r4, #0x5
 8000942:      	cmp	r4, #0x0
 8000944:      	str	r2, [sp, #0x8]
 8000946:      	str.w	r12, [sp, #0x4]
 800094a:      	bne	#0x2e <_ZN13stm32f30x_hal4gpio5gpioe16PE10$LT$MODE$GT$21into_push_pull_output28_$u7b$$u7b$closure$u7d$$u7d$17h799296fd75331ff7E+0x90>
 800094c:      	b	#-0x2 <_ZN13stm32f30x_hal4gpio5gpioe16PE10$LT$MODE$GT$21into_push_pull_output28_$u7b$$u7b$closure$u7d$$u7d$17h799296fd75331ff7E+0x62>
 800094e:      	ldr	r0, [sp, #0x8]
 8000950:      	ldr	r1, [sp, #0x4]
 8000952:      	orrs	r1, r0
 8000954:      	ldr	r0, [sp, #0x18]
 8000956:      	bl	#0x744
 800095a:      	str	r0, [sp]
 800095c:      	b	#-0x2 <_ZN13stm32f30x_hal4gpio5gpioe16PE10$LT$MODE$GT$21into_push_pull_output28_$u7b$$u7b$closure$u7d$$u7d$17h799296fd75331ff7E+0x72>
;                         });
 800095e:      	ldr	r0, [sp]
 8000960:      	add	sp, #0x30
 8000962:      	pop	{r4, r5, r7, pc}
;                             w.bits((r.bits() & !(0b11 << offset)) | (mode << offset))
 8000964:      	movw	r0, #0x3be0
 8000968:      	movt	r0, #0x800
 800096c:      	movw	r2, #0x3bd0
 8000970:      	movt	r2, #0x800
 8000974:      	movs	r1, #0x23
 8000976:      	bl	#0x177c
 800097a:      	trap
 800097c:      	movw	r0, #0x3be0
 8000980:      	movt	r0, #0x800
 8000984:      	movw	r2, #0x3bd0
 8000988:      	movt	r2, #0x800
 800098c:      	movs	r1, #0x23
 800098e:      	bl	#0x1764
 8000992:      	trap

08000994 <_ZN13stm32f30x_hal4gpio5gpioe16PE11$LT$MODE$GT$21into_push_pull_output17hd5475833cc582004E>:
;                     pub fn into_push_pull_output(
 8000994:      	push	{r7, lr}
 8000996:      	mov	r7, sp
 8000998:      	sub	sp, #0x30
 800099a:      	str	r0, [sp, #0x28]
 800099c:      	str	r1, [sp, #0x2c]
;                         let offset = 2 * $i;
 800099e:      	movw	r2, #0x3af8
 80009a2:      	movt	r2, #0x800
 80009a6:      	ldr	r2, [r2]
 80009a8:      	str	r2, [sp, #0x10]
 80009aa:      	movs	r2, #0x1
;                         let mode = 0b01;
 80009ac:      	str	r2, [sp, #0x14]
;                         moder.moder().modify(|r, w| unsafe {
 80009ae:      	str	r1, [sp, #0x8]
 80009b0:      	bl	#0xcd8
 80009b4:      	str	r0, [sp, #0x4]
 80009b6:      	b	#-0x2 <_ZN13stm32f30x_hal4gpio5gpioe16PE11$LT$MODE$GT$21into_push_pull_output17hd5475833cc582004E+0x24>
 80009b8:      	add	r0, sp, #0x10
;                         moder.moder().modify(|r, w| unsafe {
 80009ba:      	str	r0, [sp, #0x18]
 80009bc:      	add	r0, sp, #0x14
 80009be:      	str	r0, [sp, #0x1c]
 80009c0:      	ldr	r1, [sp, #0x18]
 80009c2:      	ldr	r2, [sp, #0x1c]
 80009c4:      	ldr	r0, [sp, #0x4]
 80009c6:      	bl	#0x91e
 80009ca:      	b	#-0x2 <_ZN13stm32f30x_hal4gpio5gpioe16PE11$LT$MODE$GT$21into_push_pull_output17hd5475833cc582004E+0x38>
;                         otyper
 80009cc:      	ldr	r0, [sp, #0x8]
 80009ce:      	bl	#0xcd0
 80009d2:      	str	r0, [sp]
 80009d4:      	b	#-0x2 <_ZN13stm32f30x_hal4gpio5gpioe16PE11$LT$MODE$GT$21into_push_pull_output17hd5475833cc582004E+0x42>
 80009d6:      	ldr	r0, [sp]
 80009d8:      	bl	#0xa14
 80009dc:      	b	#-0x2 <_ZN13stm32f30x_hal4gpio5gpioe16PE11$LT$MODE$GT$21into_push_pull_output17hd5475833cc582004E+0x4a>
;                     }
 80009de:      	add	sp, #0x30
 80009e0:      	pop	{r7, pc}

080009e2 <_ZN13stm32f30x_hal4gpio5gpioe16PE11$LT$MODE$GT$21into_push_pull_output28_$u7b$$u7b$closure$u7d$$u7d$17h89fd2efa04d5b34aE>:
;                         moder.moder().modify(|r, w| unsafe {
 80009e2:      	push	{r4, r5, r7, lr}
 80009e4:      	add	r7, sp, #0x8
 80009e6:      	sub	sp, #0x30
 80009e8:      	str	r0, [sp, #0x20]
 80009ea:      	str	r1, [sp, #0x24]
 80009ec:      	str	r2, [sp, #0x28]
 80009ee:      	str	r3, [sp, #0x2c]
;                             w.bits((r.bits() & !(0b11 << offset)) | (mode << offset))
 80009f0:      	str	r0, [sp, #0x1c]
 80009f2:      	mov	r0, r2
 80009f4:      	str	r3, [sp, #0x18]
 80009f6:      	str	r1, [sp, #0x14]
 80009f8:      	bl	#0x698
 80009fc:      	str	r0, [sp, #0x10]
 80009fe:      	b	#-0x2 <_ZN13stm32f30x_hal4gpio5gpioe16PE11$LT$MODE$GT$21into_push_pull_output28_$u7b$$u7b$closure$u7d$$u7d$17h89fd2efa04d5b34aE+0x1e>
 8000a00:      	ldr	r0, [sp, #0x1c]
 8000a02:      	ldr	r1, [r0]
 8000a04:      	and	r2, r1, #0x1f
 8000a08:      	movs	r3, #0x3
 8000a0a:      	lsl.w	r2, r3, r2
 8000a0e:      	lsrs	r1, r1, #0x5
 8000a10:      	cmp	r1, #0x0
 8000a12:      	str	r2, [sp, #0xc]
 8000a14:      	bne	#0x42 <_ZN13stm32f30x_hal4gpio5gpioe16PE11$LT$MODE$GT$21into_push_pull_output28_$u7b$$u7b$closure$u7d$$u7d$17h89fd2efa04d5b34aE+0x78>
 8000a16:      	b	#-0x2 <_ZN13stm32f30x_hal4gpio5gpioe16PE11$LT$MODE$GT$21into_push_pull_output28_$u7b$$u7b$closure$u7d$$u7d$17h89fd2efa04d5b34aE+0x36>
 8000a18:      	ldr	r0, [sp, #0x10]
 8000a1a:      	ldr	r1, [sp, #0xc]
 8000a1c:      	bic.w	r2, r0, r1
 8000a20:      	ldr	r3, [sp, #0x14]
 8000a22:      	ldr.w	r12, [r3]
 8000a26:      	ldr.w	lr, [sp, #0x1c]
 8000a2a:      	ldr.w	r4, [lr]
 8000a2e:      	and	r5, r4, #0x1f
 8000a32:      	lsl.w	r12, r12, r5
 8000a36:      	lsrs	r4, r4, #0x5
 8000a38:      	cmp	r4, #0x0
 8000a3a:      	str	r2, [sp, #0x8]
 8000a3c:      	str.w	r12, [sp, #0x4]
 8000a40:      	bne	#0x2e <_ZN13stm32f30x_hal4gpio5gpioe16PE11$LT$MODE$GT$21into_push_pull_output28_$u7b$$u7b$closure$u7d$$u7d$17h89fd2efa04d5b34aE+0x90>
 8000a42:      	b	#-0x2 <_ZN13stm32f30x_hal4gpio5gpioe16PE11$LT$MODE$GT$21into_push_pull_output28_$u7b$$u7b$closure$u7d$$u7d$17h89fd2efa04d5b34aE+0x62>
 8000a44:      	ldr	r0, [sp, #0x8]
 8000a46:      	ldr	r1, [sp, #0x4]
 8000a48:      	orrs	r1, r0
 8000a4a:      	ldr	r0, [sp, #0x18]
 8000a4c:      	bl	#0x64e
 8000a50:      	str	r0, [sp]
 8000a52:      	b	#-0x2 <_ZN13stm32f30x_hal4gpio5gpioe16PE11$LT$MODE$GT$21into_push_pull_output28_$u7b$$u7b$closure$u7d$$u7d$17h89fd2efa04d5b34aE+0x72>
;                         });
 8000a54:      	ldr	r0, [sp]
 8000a56:      	add	sp, #0x30
 8000a58:      	pop	{r4, r5, r7, pc}
;                             w.bits((r.bits() & !(0b11 << offset)) | (mode << offset))
 8000a5a:      	movw	r0, #0x3be0
 8000a5e:      	movt	r0, #0x800
 8000a62:      	movw	r2, #0x3bd0
 8000a66:      	movt	r2, #0x800
 8000a6a:      	movs	r1, #0x23
 8000a6c:      	bl	#0x1686
 8000a70:      	trap
 8000a72:      	movw	r0, #0x3be0
 8000a76:      	movt	r0, #0x800
 8000a7a:      	movw	r2, #0x3bd0
 8000a7e:      	movt	r2, #0x800
 8000a82:      	movs	r1, #0x23
 8000a84:      	bl	#0x166e
 8000a88:      	trap

08000a8a <_ZN13stm32f30x_hal4gpio5gpioe16PE11$LT$MODE$GT$21into_push_pull_output28_$u7b$$u7b$closure$u7d$$u7d$17h9311c8db0cab2bafE>:
;                             .modify(|r, w| unsafe { w.bits(r.bits() & !(0b1 << $i)) });
 8000a8a:      	push	{r7, lr}
 8000a8c:      	mov	r7, sp
 8000a8e:      	sub	sp, #0x18
 8000a90:      	str	r0, [sp, #0x10]
 8000a92:      	str	r1, [sp, #0x14]
 8000a94:      	str	r1, [sp, #0x8]
 8000a96:      	bl	#0x610
 8000a9a:      	str	r0, [sp, #0x4]
 8000a9c:      	b	#-0x2 <_ZN13stm32f30x_hal4gpio5gpioe16PE11$LT$MODE$GT$21into_push_pull_output28_$u7b$$u7b$closure$u7d$$u7d$17h9311c8db0cab2bafE+0x14>
 8000a9e:      	ldr	r0, [sp, #0x4]
 8000aa0:      	bic	r1, r0, #0x800
 8000aa4:      	ldr	r0, [sp, #0x8]
 8000aa6:      	bl	#0x60a
 8000aaa:      	str	r0, [sp]
 8000aac:      	b	#-0x2 <_ZN13stm32f30x_hal4gpio5gpioe16PE11$LT$MODE$GT$21into_push_pull_output28_$u7b$$u7b$closure$u7d$$u7d$17h9311c8db0cab2bafE+0x24>
 8000aae:      	ldr	r0, [sp]
 8000ab0:      	add	sp, #0x18
 8000ab2:      	pop	{r7, pc}

08000ab4 <_ZN13stm32f30x_hal4gpio5gpioe16PE12$LT$MODE$GT$21into_push_pull_output17h24c1bbad882a8e0dE>:
;                     pub fn into_push_pull_output(
 8000ab4:      	push	{r7, lr}
 8000ab6:      	mov	r7, sp
 8000ab8:      	sub	sp, #0x30
 8000aba:      	str	r0, [sp, #0x28]
 8000abc:      	str	r1, [sp, #0x2c]
;                         let offset = 2 * $i;
 8000abe:      	movw	r2, #0x3aa0
 8000ac2:      	movt	r2, #0x800
 8000ac6:      	ldr	r2, [r2]
 8000ac8:      	str	r2, [sp, #0x10]
 8000aca:      	movs	r2, #0x1
;                         let mode = 0b01;
 8000acc:      	str	r2, [sp, #0x14]
;                         moder.moder().modify(|r, w| unsafe {
 8000ace:      	str	r1, [sp, #0x8]
 8000ad0:      	bl	#0xbb8
 8000ad4:      	str	r0, [sp, #0x4]
 8000ad6:      	b	#-0x2 <_ZN13stm32f30x_hal4gpio5gpioe16PE12$LT$MODE$GT$21into_push_pull_output17h24c1bbad882a8e0dE+0x24>
 8000ad8:      	add	r0, sp, #0x10
;                         moder.moder().modify(|r, w| unsafe {
 8000ada:      	str	r0, [sp, #0x18]
 8000adc:      	add	r0, sp, #0x14
 8000ade:      	str	r0, [sp, #0x1c]
 8000ae0:      	ldr	r1, [sp, #0x18]
 8000ae2:      	ldr	r2, [sp, #0x1c]
 8000ae4:      	ldr	r0, [sp, #0x4]
 8000ae6:      	bl	#0x85a
 8000aea:      	b	#-0x2 <_ZN13stm32f30x_hal4gpio5gpioe16PE12$LT$MODE$GT$21into_push_pull_output17h24c1bbad882a8e0dE+0x38>
;                         otyper
 8000aec:      	ldr	r0, [sp, #0x8]
 8000aee:      	bl	#0xbb0
 8000af2:      	str	r0, [sp]
 8000af4:      	b	#-0x2 <_ZN13stm32f30x_hal4gpio5gpioe16PE12$LT$MODE$GT$21into_push_pull_output17h24c1bbad882a8e0dE+0x42>
 8000af6:      	ldr	r0, [sp]
 8000af8:      	bl	#0xad4
 8000afc:      	b	#-0x2 <_ZN13stm32f30x_hal4gpio5gpioe16PE12$LT$MODE$GT$21into_push_pull_output17h24c1bbad882a8e0dE+0x4a>
;                     }
 8000afe:      	add	sp, #0x30
 8000b00:      	pop	{r7, pc}

08000b02 <_ZN13stm32f30x_hal4gpio5gpioe16PE12$LT$MODE$GT$21into_push_pull_output28_$u7b$$u7b$closure$u7d$$u7d$17ha4fdaca761e4023cE>:
;                             .modify(|r, w| unsafe { w.bits(r.bits() & !(0b1 << $i)) });
 8000b02:      	push	{r7, lr}
 8000b04:      	mov	r7, sp
 8000b06:      	sub	sp, #0x18
 8000b08:      	str	r0, [sp, #0x10]
 8000b0a:      	str	r1, [sp, #0x14]
 8000b0c:      	str	r1, [sp, #0x8]
 8000b0e:      	bl	#0x598
 8000b12:      	str	r0, [sp, #0x4]
 8000b14:      	b	#-0x2 <_ZN13stm32f30x_hal4gpio5gpioe16PE12$LT$MODE$GT$21into_push_pull_output28_$u7b$$u7b$closure$u7d$$u7d$17ha4fdaca761e4023cE+0x14>
 8000b16:      	ldr	r0, [sp, #0x4]
 8000b18:      	bic	r1, r0, #0x1000
 8000b1c:      	ldr	r0, [sp, #0x8]
 8000b1e:      	bl	#0x592
 8000b22:      	str	r0, [sp]
 8000b24:      	b	#-0x2 <_ZN13stm32f30x_hal4gpio5gpioe16PE12$LT$MODE$GT$21into_push_pull_output28_$u7b$$u7b$closure$u7d$$u7d$17ha4fdaca761e4023cE+0x24>
 8000b26:      	ldr	r0, [sp]
 8000b28:      	add	sp, #0x18
 8000b2a:      	pop	{r7, pc}

08000b2c <_ZN13stm32f30x_hal4gpio5gpioe16PE12$LT$MODE$GT$21into_push_pull_output28_$u7b$$u7b$closure$u7d$$u7d$17hff2c957e94cde120E>:
;                         moder.moder().modify(|r, w| unsafe {
 8000b2c:      	push	{r4, r5, r7, lr}
 8000b2e:      	add	r7, sp, #0x8
 8000b30:      	sub	sp, #0x30
 8000b32:      	str	r0, [sp, #0x20]
 8000b34:      	str	r1, [sp, #0x24]
 8000b36:      	str	r2, [sp, #0x28]
 8000b38:      	str	r3, [sp, #0x2c]
;                             w.bits((r.bits() & !(0b11 << offset)) | (mode << offset))
 8000b3a:      	str	r0, [sp, #0x1c]
 8000b3c:      	mov	r0, r2
 8000b3e:      	str	r3, [sp, #0x18]
 8000b40:      	str	r1, [sp, #0x14]
 8000b42:      	bl	#0x54e
 8000b46:      	str	r0, [sp, #0x10]
 8000b48:      	b	#-0x2 <_ZN13stm32f30x_hal4gpio5gpioe16PE12$LT$MODE$GT$21into_push_pull_output28_$u7b$$u7b$closure$u7d$$u7d$17hff2c957e94cde120E+0x1e>
 8000b4a:      	ldr	r0, [sp, #0x1c]
 8000b4c:      	ldr	r1, [r0]
 8000b4e:      	and	r2, r1, #0x1f
 8000b52:      	movs	r3, #0x3
 8000b54:      	lsl.w	r2, r3, r2
 8000b58:      	lsrs	r1, r1, #0x5
 8000b5a:      	cmp	r1, #0x0
 8000b5c:      	str	r2, [sp, #0xc]
 8000b5e:      	bne	#0x42 <_ZN13stm32f30x_hal4gpio5gpioe16PE12$LT$MODE$GT$21into_push_pull_output28_$u7b$$u7b$closure$u7d$$u7d$17hff2c957e94cde120E+0x78>
 8000b60:      	b	#-0x2 <_ZN13stm32f30x_hal4gpio5gpioe16PE12$LT$MODE$GT$21into_push_pull_output28_$u7b$$u7b$closure$u7d$$u7d$17hff2c957e94cde120E+0x36>
 8000b62:      	ldr	r0, [sp, #0x10]
 8000b64:      	ldr	r1, [sp, #0xc]
 8000b66:      	bic.w	r2, r0, r1
 8000b6a:      	ldr	r3, [sp, #0x14]
 8000b6c:      	ldr.w	r12, [r3]
 8000b70:      	ldr.w	lr, [sp, #0x1c]
 8000b74:      	ldr.w	r4, [lr]
 8000b78:      	and	r5, r4, #0x1f
 8000b7c:      	lsl.w	r12, r12, r5
 8000b80:      	lsrs	r4, r4, #0x5
 8000b82:      	cmp	r4, #0x0
 8000b84:      	str	r2, [sp, #0x8]
 8000b86:      	str.w	r12, [sp, #0x4]
 8000b8a:      	bne	#0x2e <_ZN13stm32f30x_hal4gpio5gpioe16PE12$LT$MODE$GT$21into_push_pull_output28_$u7b$$u7b$closure$u7d$$u7d$17hff2c957e94cde120E+0x90>
 8000b8c:      	b	#-0x2 <_ZN13stm32f30x_hal4gpio5gpioe16PE12$LT$MODE$GT$21into_push_pull_output28_$u7b$$u7b$closure$u7d$$u7d$17hff2c957e94cde120E+0x62>
 8000b8e:      	ldr	r0, [sp, #0x8]
 8000b90:      	ldr	r1, [sp, #0x4]
 8000b92:      	orrs	r1, r0
 8000b94:      	ldr	r0, [sp, #0x18]
 8000b96:      	bl	#0x504
 8000b9a:      	str	r0, [sp]
 8000b9c:      	b	#-0x2 <_ZN13stm32f30x_hal4gpio5gpioe16PE12$LT$MODE$GT$21into_push_pull_output28_$u7b$$u7b$closure$u7d$$u7d$17hff2c957e94cde120E+0x72>
;                         });
 8000b9e:      	ldr	r0, [sp]
 8000ba0:      	add	sp, #0x30
 8000ba2:      	pop	{r4, r5, r7, pc}
;                             w.bits((r.bits() & !(0b11 << offset)) | (mode << offset))
 8000ba4:      	movw	r0, #0x3be0
 8000ba8:      	movt	r0, #0x800
 8000bac:      	movw	r2, #0x3bd0
 8000bb0:      	movt	r2, #0x800
 8000bb4:      	movs	r1, #0x23
 8000bb6:      	bl	#0x153c
 8000bba:      	trap
 8000bbc:      	movw	r0, #0x3be0
 8000bc0:      	movt	r0, #0x800
 8000bc4:      	movw	r2, #0x3bd0
 8000bc8:      	movt	r2, #0x800
 8000bcc:      	movs	r1, #0x23
 8000bce:      	bl	#0x1524
 8000bd2:      	trap

08000bd4 <_ZN13stm32f30x_hal4gpio5gpioe16PE13$LT$MODE$GT$21into_push_pull_output17h670063a949893e51E>:
;                     pub fn into_push_pull_output(
 8000bd4:      	push	{r7, lr}
 8000bd6:      	mov	r7, sp
 8000bd8:      	sub	sp, #0x30
 8000bda:      	str	r0, [sp, #0x28]
 8000bdc:      	str	r1, [sp, #0x2c]
;                         let offset = 2 * $i;
 8000bde:      	movw	r2, #0x3aa8
 8000be2:      	movt	r2, #0x800
 8000be6:      	ldr	r2, [r2]
 8000be8:      	str	r2, [sp, #0x10]
 8000bea:      	movs	r2, #0x1
;                         let mode = 0b01;
 8000bec:      	str	r2, [sp, #0x14]
;                         moder.moder().modify(|r, w| unsafe {
 8000bee:      	str	r1, [sp, #0x8]
 8000bf0:      	bl	#0xa98
 8000bf4:      	str	r0, [sp, #0x4]
 8000bf6:      	b	#-0x2 <_ZN13stm32f30x_hal4gpio5gpioe16PE13$LT$MODE$GT$21into_push_pull_output17h670063a949893e51E+0x24>
 8000bf8:      	add	r0, sp, #0x10
;                         moder.moder().modify(|r, w| unsafe {
 8000bfa:      	str	r0, [sp, #0x18]
 8000bfc:      	add	r0, sp, #0x14
 8000bfe:      	str	r0, [sp, #0x1c]
 8000c00:      	ldr	r1, [sp, #0x18]
 8000c02:      	ldr	r2, [sp, #0x1c]
 8000c04:      	ldr	r0, [sp, #0x4]
 8000c06:      	bl	#0x626
 8000c0a:      	b	#-0x2 <_ZN13stm32f30x_hal4gpio5gpioe16PE13$LT$MODE$GT$21into_push_pull_output17h670063a949893e51E+0x38>
;                         otyper
 8000c0c:      	ldr	r0, [sp, #0x8]
 8000c0e:      	bl	#0xa90
 8000c12:      	str	r0, [sp]
 8000c14:      	b	#-0x2 <_ZN13stm32f30x_hal4gpio5gpioe16PE13$LT$MODE$GT$21into_push_pull_output17h670063a949893e51E+0x42>
 8000c16:      	ldr	r0, [sp]
 8000c18:      	bl	#0x964
 8000c1c:      	b	#-0x2 <_ZN13stm32f30x_hal4gpio5gpioe16PE13$LT$MODE$GT$21into_push_pull_output17h670063a949893e51E+0x4a>
;                     }
 8000c1e:      	add	sp, #0x30
 8000c20:      	pop	{r7, pc}

08000c22 <_ZN13stm32f30x_hal4gpio5gpioe16PE13$LT$MODE$GT$21into_push_pull_output28_$u7b$$u7b$closure$u7d$$u7d$17h7170e5a75d7b74ceE>:
;                             .modify(|r, w| unsafe { w.bits(r.bits() & !(0b1 << $i)) });
 8000c22:      	push	{r7, lr}
 8000c24:      	mov	r7, sp
 8000c26:      	sub	sp, #0x18
 8000c28:      	str	r0, [sp, #0x10]
 8000c2a:      	str	r1, [sp, #0x14]
 8000c2c:      	str	r1, [sp, #0x8]
 8000c2e:      	bl	#0x478
 8000c32:      	str	r0, [sp, #0x4]
 8000c34:      	b	#-0x2 <_ZN13stm32f30x_hal4gpio5gpioe16PE13$LT$MODE$GT$21into_push_pull_output28_$u7b$$u7b$closure$u7d$$u7d$17h7170e5a75d7b74ceE+0x14>
 8000c36:      	ldr	r0, [sp, #0x4]
 8000c38:      	bic	r1, r0, #0x2000
 8000c3c:      	ldr	r0, [sp, #0x8]
 8000c3e:      	bl	#0x472
 8000c42:      	str	r0, [sp]
 8000c44:      	b	#-0x2 <_ZN13stm32f30x_hal4gpio5gpioe16PE13$LT$MODE$GT$21into_push_pull_output28_$u7b$$u7b$closure$u7d$$u7d$17h7170e5a75d7b74ceE+0x24>
 8000c46:      	ldr	r0, [sp]
 8000c48:      	add	sp, #0x18
 8000c4a:      	pop	{r7, pc}

08000c4c <_ZN13stm32f30x_hal4gpio5gpioe16PE13$LT$MODE$GT$21into_push_pull_output28_$u7b$$u7b$closure$u7d$$u7d$17h760a0307bbbf8792E>:
;                         moder.moder().modify(|r, w| unsafe {
 8000c4c:      	push	{r4, r5, r7, lr}
 8000c4e:      	add	r7, sp, #0x8
 8000c50:      	sub	sp, #0x30
 8000c52:      	str	r0, [sp, #0x20]
 8000c54:      	str	r1, [sp, #0x24]
 8000c56:      	str	r2, [sp, #0x28]
 8000c58:      	str	r3, [sp, #0x2c]
;                             w.bits((r.bits() & !(0b11 << offset)) | (mode << offset))
 8000c5a:      	str	r0, [sp, #0x1c]
 8000c5c:      	mov	r0, r2
 8000c5e:      	str	r3, [sp, #0x18]
 8000c60:      	str	r1, [sp, #0x14]
 8000c62:      	bl	#0x42e
 8000c66:      	str	r0, [sp, #0x10]
 8000c68:      	b	#-0x2 <_ZN13stm32f30x_hal4gpio5gpioe16PE13$LT$MODE$GT$21into_push_pull_output28_$u7b$$u7b$closure$u7d$$u7d$17h760a0307bbbf8792E+0x1e>
 8000c6a:      	ldr	r0, [sp, #0x1c]
 8000c6c:      	ldr	r1, [r0]
 8000c6e:      	and	r2, r1, #0x1f
 8000c72:      	movs	r3, #0x3
 8000c74:      	lsl.w	r2, r3, r2
 8000c78:      	lsrs	r1, r1, #0x5
 8000c7a:      	cmp	r1, #0x0
 8000c7c:      	str	r2, [sp, #0xc]
 8000c7e:      	bne	#0x42 <_ZN13stm32f30x_hal4gpio5gpioe16PE13$LT$MODE$GT$21into_push_pull_output28_$u7b$$u7b$closure$u7d$$u7d$17h760a0307bbbf8792E+0x78>
 8000c80:      	b	#-0x2 <_ZN13stm32f30x_hal4gpio5gpioe16PE13$LT$MODE$GT$21into_push_pull_output28_$u7b$$u7b$closure$u7d$$u7d$17h760a0307bbbf8792E+0x36>
 8000c82:      	ldr	r0, [sp, #0x10]
 8000c84:      	ldr	r1, [sp, #0xc]
 8000c86:      	bic.w	r2, r0, r1
 8000c8a:      	ldr	r3, [sp, #0x14]
 8000c8c:      	ldr.w	r12, [r3]
 8000c90:      	ldr.w	lr, [sp, #0x1c]
 8000c94:      	ldr.w	r4, [lr]
 8000c98:      	and	r5, r4, #0x1f
 8000c9c:      	lsl.w	r12, r12, r5
 8000ca0:      	lsrs	r4, r4, #0x5
 8000ca2:      	cmp	r4, #0x0
 8000ca4:      	str	r2, [sp, #0x8]
 8000ca6:      	str.w	r12, [sp, #0x4]
 8000caa:      	bne	#0x2e <_ZN13stm32f30x_hal4gpio5gpioe16PE13$LT$MODE$GT$21into_push_pull_output28_$u7b$$u7b$closure$u7d$$u7d$17h760a0307bbbf8792E+0x90>
 8000cac:      	b	#-0x2 <_ZN13stm32f30x_hal4gpio5gpioe16PE13$LT$MODE$GT$21into_push_pull_output28_$u7b$$u7b$closure$u7d$$u7d$17h760a0307bbbf8792E+0x62>
 8000cae:      	ldr	r0, [sp, #0x8]
 8000cb0:      	ldr	r1, [sp, #0x4]
 8000cb2:      	orrs	r1, r0
 8000cb4:      	ldr	r0, [sp, #0x18]
 8000cb6:      	bl	#0x3e4
 8000cba:      	str	r0, [sp]
 8000cbc:      	b	#-0x2 <_ZN13stm32f30x_hal4gpio5gpioe16PE13$LT$MODE$GT$21into_push_pull_output28_$u7b$$u7b$closure$u7d$$u7d$17h760a0307bbbf8792E+0x72>
;                         });
 8000cbe:      	ldr	r0, [sp]
 8000cc0:      	add	sp, #0x30
 8000cc2:      	pop	{r4, r5, r7, pc}
;                             w.bits((r.bits() & !(0b11 << offset)) | (mode << offset))
 8000cc4:      	movw	r0, #0x3be0
 8000cc8:      	movt	r0, #0x800
 8000ccc:      	movw	r2, #0x3bd0
 8000cd0:      	movt	r2, #0x800
 8000cd4:      	movs	r1, #0x23
 8000cd6:      	bl	#0x141c
 8000cda:      	trap
 8000cdc:      	movw	r0, #0x3be0
 8000ce0:      	movt	r0, #0x800
 8000ce4:      	movw	r2, #0x3bd0
 8000ce8:      	movt	r2, #0x800
 8000cec:      	movs	r1, #0x23
 8000cee:      	bl	#0x1404
 8000cf2:      	trap

08000cf4 <_ZN13stm32f30x_hal4gpio5gpioe16PE14$LT$MODE$GT$21into_push_pull_output17hf1e68f6b1b9d7fcfE>:
;                     pub fn into_push_pull_output(
 8000cf4:      	push	{r7, lr}
 8000cf6:      	mov	r7, sp
 8000cf8:      	sub	sp, #0x30
 8000cfa:      	str	r0, [sp, #0x28]
 8000cfc:      	str	r1, [sp, #0x2c]
;                         let offset = 2 * $i;
 8000cfe:      	movw	r2, #0x3ac0
 8000d02:      	movt	r2, #0x800
 8000d06:      	ldr	r2, [r2]
 8000d08:      	str	r2, [sp, #0x10]
 8000d0a:      	movs	r2, #0x1
;                         let mode = 0b01;
 8000d0c:      	str	r2, [sp, #0x14]
;                         moder.moder().modify(|r, w| unsafe {
 8000d0e:      	str	r1, [sp, #0x8]
 8000d10:      	bl	#0x978
 8000d14:      	str	r0, [sp, #0x4]
 8000d16:      	b	#-0x2 <_ZN13stm32f30x_hal4gpio5gpioe16PE14$LT$MODE$GT$21into_push_pull_output17hf1e68f6b1b9d7fcfE+0x24>
 8000d18:      	add	r0, sp, #0x10
;                         moder.moder().modify(|r, w| unsafe {
 8000d1a:      	str	r0, [sp, #0x18]
 8000d1c:      	add	r0, sp, #0x14
 8000d1e:      	str	r0, [sp, #0x1c]
 8000d20:      	ldr	r1, [sp, #0x18]
 8000d22:      	ldr	r2, [sp, #0x1c]
 8000d24:      	ldr	r0, [sp, #0x4]
 8000d26:      	bl	#0x3f2
 8000d2a:      	b	#-0x2 <_ZN13stm32f30x_hal4gpio5gpioe16PE14$LT$MODE$GT$21into_push_pull_output17hf1e68f6b1b9d7fcfE+0x38>
;                         otyper
 8000d2c:      	ldr	r0, [sp, #0x8]
 8000d2e:      	bl	#0x970
 8000d32:      	str	r0, [sp]
 8000d34:      	b	#-0x2 <_ZN13stm32f30x_hal4gpio5gpioe16PE14$LT$MODE$GT$21into_push_pull_output17hf1e68f6b1b9d7fcfE+0x42>
 8000d36:      	ldr	r0, [sp]
 8000d38:      	bl	#0x704
 8000d3c:      	b	#-0x2 <_ZN13stm32f30x_hal4gpio5gpioe16PE14$LT$MODE$GT$21into_push_pull_output17hf1e68f6b1b9d7fcfE+0x4a>
;                     }
 8000d3e:      	add	sp, #0x30
 8000d40:      	pop	{r7, pc}

08000d42 <_ZN13stm32f30x_hal4gpio5gpioe16PE14$LT$MODE$GT$21into_push_pull_output28_$u7b$$u7b$closure$u7d$$u7d$17h1c8a975d319da793E>:
;                         moder.moder().modify(|r, w| unsafe {
 8000d42:      	push	{r4, r5, r7, lr}
 8000d44:      	add	r7, sp, #0x8
 8000d46:      	sub	sp, #0x30
 8000d48:      	str	r0, [sp, #0x20]
 8000d4a:      	str	r1, [sp, #0x24]
 8000d4c:      	str	r2, [sp, #0x28]
 8000d4e:      	str	r3, [sp, #0x2c]
;                             w.bits((r.bits() & !(0b11 << offset)) | (mode << offset))
 8000d50:      	str	r0, [sp, #0x1c]
 8000d52:      	mov	r0, r2
 8000d54:      	str	r3, [sp, #0x18]
 8000d56:      	str	r1, [sp, #0x14]
 8000d58:      	bl	#0x338
 8000d5c:      	str	r0, [sp, #0x10]
 8000d5e:      	b	#-0x2 <_ZN13stm32f30x_hal4gpio5gpioe16PE14$LT$MODE$GT$21into_push_pull_output28_$u7b$$u7b$closure$u7d$$u7d$17h1c8a975d319da793E+0x1e>
 8000d60:      	ldr	r0, [sp, #0x1c]
 8000d62:      	ldr	r1, [r0]
 8000d64:      	and	r2, r1, #0x1f
 8000d68:      	movs	r3, #0x3
 8000d6a:      	lsl.w	r2, r3, r2
 8000d6e:      	lsrs	r1, r1, #0x5
 8000d70:      	cmp	r1, #0x0
 8000d72:      	str	r2, [sp, #0xc]
 8000d74:      	bne	#0x42 <_ZN13stm32f30x_hal4gpio5gpioe16PE14$LT$MODE$GT$21into_push_pull_output28_$u7b$$u7b$closure$u7d$$u7d$17h1c8a975d319da793E+0x78>
 8000d76:      	b	#-0x2 <_ZN13stm32f30x_hal4gpio5gpioe16PE14$LT$MODE$GT$21into_push_pull_output28_$u7b$$u7b$closure$u7d$$u7d$17h1c8a975d319da793E+0x36>
 8000d78:      	ldr	r0, [sp, #0x10]
 8000d7a:      	ldr	r1, [sp, #0xc]
 8000d7c:      	bic.w	r2, r0, r1
 8000d80:      	ldr	r3, [sp, #0x14]
 8000d82:      	ldr.w	r12, [r3]
 8000d86:      	ldr.w	lr, [sp, #0x1c]
 8000d8a:      	ldr.w	r4, [lr]
 8000d8e:      	and	r5, r4, #0x1f
 8000d92:      	lsl.w	r12, r12, r5
 8000d96:      	lsrs	r4, r4, #0x5
 8000d98:      	cmp	r4, #0x0
 8000d9a:      	str	r2, [sp, #0x8]
 8000d9c:      	str.w	r12, [sp, #0x4]
 8000da0:      	bne	#0x2e <_ZN13stm32f30x_hal4gpio5gpioe16PE14$LT$MODE$GT$21into_push_pull_output28_$u7b$$u7b$closure$u7d$$u7d$17h1c8a975d319da793E+0x90>
 8000da2:      	b	#-0x2 <_ZN13stm32f30x_hal4gpio5gpioe16PE14$LT$MODE$GT$21into_push_pull_output28_$u7b$$u7b$closure$u7d$$u7d$17h1c8a975d319da793E+0x62>
 8000da4:      	ldr	r0, [sp, #0x8]
 8000da6:      	ldr	r1, [sp, #0x4]
 8000da8:      	orrs	r1, r0
 8000daa:      	ldr	r0, [sp, #0x18]
 8000dac:      	bl	#0x2ee
 8000db0:      	str	r0, [sp]
 8000db2:      	b	#-0x2 <_ZN13stm32f30x_hal4gpio5gpioe16PE14$LT$MODE$GT$21into_push_pull_output28_$u7b$$u7b$closure$u7d$$u7d$17h1c8a975d319da793E+0x72>
;                         });
 8000db4:      	ldr	r0, [sp]
 8000db6:      	add	sp, #0x30
 8000db8:      	pop	{r4, r5, r7, pc}
;                             w.bits((r.bits() & !(0b11 << offset)) | (mode << offset))
 8000dba:      	movw	r0, #0x3be0
 8000dbe:      	movt	r0, #0x800
 8000dc2:      	movw	r2, #0x3bd0
 8000dc6:      	movt	r2, #0x800
 8000dca:      	movs	r1, #0x23
 8000dcc:      	bl	#0x1326
 8000dd0:      	trap
 8000dd2:      	movw	r0, #0x3be0
 8000dd6:      	movt	r0, #0x800
 8000dda:      	movw	r2, #0x3bd0
 8000dde:      	movt	r2, #0x800
 8000de2:      	movs	r1, #0x23
 8000de4:      	bl	#0x130e
 8000de8:      	trap

08000dea <_ZN13stm32f30x_hal4gpio5gpioe16PE14$LT$MODE$GT$21into_push_pull_output28_$u7b$$u7b$closure$u7d$$u7d$17ha1f37c52957d4c6eE>:
;                             .modify(|r, w| unsafe { w.bits(r.bits() & !(0b1 << $i)) });
 8000dea:      	push	{r7, lr}
 8000dec:      	mov	r7, sp
 8000dee:      	sub	sp, #0x18
 8000df0:      	str	r0, [sp, #0x10]
 8000df2:      	str	r1, [sp, #0x14]
 8000df4:      	str	r1, [sp, #0x8]
 8000df6:      	bl	#0x2b0
 8000dfa:      	str	r0, [sp, #0x4]
 8000dfc:      	b	#-0x2 <_ZN13stm32f30x_hal4gpio5gpioe16PE14$LT$MODE$GT$21into_push_pull_output28_$u7b$$u7b$closure$u7d$$u7d$17ha1f37c52957d4c6eE+0x14>
 8000dfe:      	ldr	r0, [sp, #0x4]
 8000e00:      	bic	r1, r0, #0x4000
 8000e04:      	ldr	r0, [sp, #0x8]
 8000e06:      	bl	#0x2aa
 8000e0a:      	str	r0, [sp]
 8000e0c:      	b	#-0x2 <_ZN13stm32f30x_hal4gpio5gpioe16PE14$LT$MODE$GT$21into_push_pull_output28_$u7b$$u7b$closure$u7d$$u7d$17ha1f37c52957d4c6eE+0x24>
 8000e0e:      	ldr	r0, [sp]
 8000e10:      	add	sp, #0x18
 8000e12:      	pop	{r7, pc}

08000e14 <_ZN13stm32f30x_hal4gpio5gpioe16PE15$LT$MODE$GT$21into_push_pull_output17h9e052a2a8c974dfbE>:
;                     pub fn into_push_pull_output(
 8000e14:      	push	{r7, lr}
 8000e16:      	mov	r7, sp
 8000e18:      	sub	sp, #0x30
 8000e1a:      	str	r0, [sp, #0x28]
 8000e1c:      	str	r1, [sp, #0x2c]
;                         let offset = 2 * $i;
 8000e1e:      	movw	r2, #0x3ab0
 8000e22:      	movt	r2, #0x800
 8000e26:      	ldr	r2, [r2]
 8000e28:      	str	r2, [sp, #0x10]
 8000e2a:      	movs	r2, #0x1
;                         let mode = 0b01;
 8000e2c:      	str	r2, [sp, #0x14]
;                         moder.moder().modify(|r, w| unsafe {
 8000e2e:      	str	r1, [sp, #0x8]
 8000e30:      	bl	#0x858
 8000e34:      	str	r0, [sp, #0x4]
 8000e36:      	b	#-0x2 <_ZN13stm32f30x_hal4gpio5gpioe16PE15$LT$MODE$GT$21into_push_pull_output17h9e052a2a8c974dfbE+0x24>
 8000e38:      	add	r0, sp, #0x10
;                         moder.moder().modify(|r, w| unsafe {
 8000e3a:      	str	r0, [sp, #0x18]
 8000e3c:      	add	r0, sp, #0x14
 8000e3e:      	str	r0, [sp, #0x1c]
 8000e40:      	ldr	r1, [sp, #0x18]
 8000e42:      	ldr	r2, [sp, #0x1c]
 8000e44:      	ldr	r0, [sp, #0x4]
 8000e46:      	bl	#0x38a
 8000e4a:      	b	#-0x2 <_ZN13stm32f30x_hal4gpio5gpioe16PE15$LT$MODE$GT$21into_push_pull_output17h9e052a2a8c974dfbE+0x38>
;                         otyper
 8000e4c:      	ldr	r0, [sp, #0x8]
 8000e4e:      	bl	#0x850
 8000e52:      	str	r0, [sp]
 8000e54:      	b	#-0x2 <_ZN13stm32f30x_hal4gpio5gpioe16PE15$LT$MODE$GT$21into_push_pull_output17h9e052a2a8c974dfbE+0x42>
 8000e56:      	ldr	r0, [sp]
 8000e58:      	bl	#0x684
 8000e5c:      	b	#-0x2 <_ZN13stm32f30x_hal4gpio5gpioe16PE15$LT$MODE$GT$21into_push_pull_output17h9e052a2a8c974dfbE+0x4a>
;                     }
 8000e5e:      	add	sp, #0x30
 8000e60:      	pop	{r7, pc}

08000e62 <_ZN13stm32f30x_hal4gpio5gpioe16PE15$LT$MODE$GT$21into_push_pull_output28_$u7b$$u7b$closure$u7d$$u7d$17h599eb8091f430fa5E>:
;                             .modify(|r, w| unsafe { w.bits(r.bits() & !(0b1 << $i)) });
 8000e62:      	push	{r7, lr}
 8000e64:      	mov	r7, sp
 8000e66:      	sub	sp, #0x18
 8000e68:      	str	r0, [sp, #0x10]
 8000e6a:      	str	r1, [sp, #0x14]
 8000e6c:      	str	r1, [sp, #0x8]
 8000e6e:      	bl	#0x238
 8000e72:      	str	r0, [sp, #0x4]
 8000e74:      	b	#-0x2 <_ZN13stm32f30x_hal4gpio5gpioe16PE15$LT$MODE$GT$21into_push_pull_output28_$u7b$$u7b$closure$u7d$$u7d$17h599eb8091f430fa5E+0x14>
 8000e76:      	ldr	r0, [sp, #0x4]
 8000e78:      	bic	r1, r0, #0x8000
 8000e7c:      	ldr	r0, [sp, #0x8]
 8000e7e:      	bl	#0x232
 8000e82:      	str	r0, [sp]
 8000e84:      	b	#-0x2 <_ZN13stm32f30x_hal4gpio5gpioe16PE15$LT$MODE$GT$21into_push_pull_output28_$u7b$$u7b$closure$u7d$$u7d$17h599eb8091f430fa5E+0x24>
 8000e86:      	ldr	r0, [sp]
 8000e88:      	add	sp, #0x18
 8000e8a:      	pop	{r7, pc}

08000e8c <_ZN13stm32f30x_hal4gpio5gpioe16PE15$LT$MODE$GT$21into_push_pull_output28_$u7b$$u7b$closure$u7d$$u7d$17ha61873e5939e6934E>:
;                         moder.moder().modify(|r, w| unsafe {
 8000e8c:      	push	{r4, r5, r7, lr}
 8000e8e:      	add	r7, sp, #0x8
 8000e90:      	sub	sp, #0x30
 8000e92:      	str	r0, [sp, #0x20]
 8000e94:      	str	r1, [sp, #0x24]
 8000e96:      	str	r2, [sp, #0x28]
 8000e98:      	str	r3, [sp, #0x2c]
;                             w.bits((r.bits() & !(0b11 << offset)) | (mode << offset))
 8000e9a:      	str	r0, [sp, #0x1c]
 8000e9c:      	mov	r0, r2
 8000e9e:      	str	r3, [sp, #0x18]
 8000ea0:      	str	r1, [sp, #0x14]
 8000ea2:      	bl	#0x1ee
 8000ea6:      	str	r0, [sp, #0x10]
 8000ea8:      	b	#-0x2 <_ZN13stm32f30x_hal4gpio5gpioe16PE15$LT$MODE$GT$21into_push_pull_output28_$u7b$$u7b$closure$u7d$$u7d$17ha61873e5939e6934E+0x1e>
 8000eaa:      	ldr	r0, [sp, #0x1c]
 8000eac:      	ldr	r1, [r0]
 8000eae:      	and	r2, r1, #0x1f
 8000eb2:      	movs	r3, #0x3
 8000eb4:      	lsl.w	r2, r3, r2
 8000eb8:      	lsrs	r1, r1, #0x5
 8000eba:      	cmp	r1, #0x0
 8000ebc:      	str	r2, [sp, #0xc]
 8000ebe:      	bne	#0x42 <_ZN13stm32f30x_hal4gpio5gpioe16PE15$LT$MODE$GT$21into_push_pull_output28_$u7b$$u7b$closure$u7d$$u7d$17ha61873e5939e6934E+0x78>
 8000ec0:      	b	#-0x2 <_ZN13stm32f30x_hal4gpio5gpioe16PE15$LT$MODE$GT$21into_push_pull_output28_$u7b$$u7b$closure$u7d$$u7d$17ha61873e5939e6934E+0x36>
 8000ec2:      	ldr	r0, [sp, #0x10]
 8000ec4:      	ldr	r1, [sp, #0xc]
 8000ec6:      	bic.w	r2, r0, r1
 8000eca:      	ldr	r3, [sp, #0x14]
 8000ecc:      	ldr.w	r12, [r3]
 8000ed0:      	ldr.w	lr, [sp, #0x1c]
 8000ed4:      	ldr.w	r4, [lr]
 8000ed8:      	and	r5, r4, #0x1f
 8000edc:      	lsl.w	r12, r12, r5
 8000ee0:      	lsrs	r4, r4, #0x5
 8000ee2:      	cmp	r4, #0x0
 8000ee4:      	str	r2, [sp, #0x8]
 8000ee6:      	str.w	r12, [sp, #0x4]
 8000eea:      	bne	#0x2e <_ZN13stm32f30x_hal4gpio5gpioe16PE15$LT$MODE$GT$21into_push_pull_output28_$u7b$$u7b$closure$u7d$$u7d$17ha61873e5939e6934E+0x90>
 8000eec:      	b	#-0x2 <_ZN13stm32f30x_hal4gpio5gpioe16PE15$LT$MODE$GT$21into_push_pull_output28_$u7b$$u7b$closure$u7d$$u7d$17ha61873e5939e6934E+0x62>
 8000eee:      	ldr	r0, [sp, #0x8]
 8000ef0:      	ldr	r1, [sp, #0x4]
 8000ef2:      	orrs	r1, r0
 8000ef4:      	ldr	r0, [sp, #0x18]
 8000ef6:      	bl	#0x1a4
 8000efa:      	str	r0, [sp]
 8000efc:      	b	#-0x2 <_ZN13stm32f30x_hal4gpio5gpioe16PE15$LT$MODE$GT$21into_push_pull_output28_$u7b$$u7b$closure$u7d$$u7d$17ha61873e5939e6934E+0x72>
;                         });
 8000efe:      	ldr	r0, [sp]
 8000f00:      	add	sp, #0x30
 8000f02:      	pop	{r4, r5, r7, pc}
;                             w.bits((r.bits() & !(0b11 << offset)) | (mode << offset))
 8000f04:      	movw	r0, #0x3be0
 8000f08:      	movt	r0, #0x800
 8000f0c:      	movw	r2, #0x3bd0
 8000f10:      	movt	r2, #0x800
 8000f14:      	movs	r1, #0x23
 8000f16:      	bl	#0x11dc
 8000f1a:      	trap
 8000f1c:      	movw	r0, #0x3be0
 8000f20:      	movt	r0, #0x800
 8000f24:      	movw	r2, #0x3bd0
 8000f28:      	movt	r2, #0x800
 8000f2c:      	movs	r1, #0x23
 8000f2e:      	bl	#0x11c4
 8000f32:      	trap

08000f34 <_ZN13stm32f30x_hal4gpio5gpioe50PE8$LT$stm32f30x_hal..gpio..Output$LT$MODE$GT$$GT$9downgrade17hb13bd6f940aec298E>:
;                     pub fn downgrade(self) -> $PXx<Output<MODE>> {
 8000f34:      	sub	sp, #0x8
 8000f36:      	movs	r0, #0x8
;                         $PXx {
 8000f38:      	strb.w	r0, [sp, #0x3]
;                     }
 8000f3c:      	ldrb.w	r0, [sp, #0x3]
 8000f40:      	add	sp, #0x8
 8000f42:      	bx	lr

08000f44 <_ZN13stm32f30x_hal4gpio5gpioe50PE9$LT$stm32f30x_hal..gpio..Output$LT$MODE$GT$$GT$9downgrade17h59cb88a0bdcdbe26E>:
;                     pub fn downgrade(self) -> $PXx<Output<MODE>> {
 8000f44:      	sub	sp, #0x8
 8000f46:      	movs	r0, #0x9
;                         $PXx {
 8000f48:      	strb.w	r0, [sp, #0x3]
;                     }
 8000f4c:      	ldrb.w	r0, [sp, #0x3]
 8000f50:      	add	sp, #0x8
 8000f52:      	bx	lr

08000f54 <_ZN13stm32f30x_hal4gpio5gpioe51PE10$LT$stm32f30x_hal..gpio..Output$LT$MODE$GT$$GT$9downgrade17h55023b628f6e6260E>:
;                     pub fn downgrade(self) -> $PXx<Output<MODE>> {
 8000f54:      	sub	sp, #0x8
 8000f56:      	movs	r0, #0xa
;                         $PXx {
 8000f58:      	strb.w	r0, [sp, #0x3]
;                     }
 8000f5c:      	ldrb.w	r0, [sp, #0x3]
 8000f60:      	add	sp, #0x8
 8000f62:      	bx	lr

08000f64 <_ZN13stm32f30x_hal4gpio5gpioe51PE11$LT$stm32f30x_hal..gpio..Output$LT$MODE$GT$$GT$9downgrade17hfce4c86aa191dc95E>:
;                     pub fn downgrade(self) -> $PXx<Output<MODE>> {
 8000f64:      	sub	sp, #0x8
 8000f66:      	movs	r0, #0xb
;                         $PXx {
 8000f68:      	strb.w	r0, [sp, #0x3]
;                     }
 8000f6c:      	ldrb.w	r0, [sp, #0x3]
 8000f70:      	add	sp, #0x8
 8000f72:      	bx	lr

08000f74 <_ZN13stm32f30x_hal4gpio5gpioe51PE12$LT$stm32f30x_hal..gpio..Output$LT$MODE$GT$$GT$9downgrade17hba32acd4f59a74c5E>:
;                     pub fn downgrade(self) -> $PXx<Output<MODE>> {
 8000f74:      	sub	sp, #0x8
 8000f76:      	movs	r0, #0xc
;                         $PXx {
 8000f78:      	strb.w	r0, [sp, #0x3]
;                     }
 8000f7c:      	ldrb.w	r0, [sp, #0x3]
 8000f80:      	add	sp, #0x8
 8000f82:      	bx	lr

08000f84 <_ZN13stm32f30x_hal4gpio5gpioe51PE13$LT$stm32f30x_hal..gpio..Output$LT$MODE$GT$$GT$9downgrade17h1a6c73c6b6e73898E>:
;                     pub fn downgrade(self) -> $PXx<Output<MODE>> {
 8000f84:      	sub	sp, #0x8
 8000f86:      	movs	r0, #0xd
;                         $PXx {
 8000f88:      	strb.w	r0, [sp, #0x3]
;                     }
 8000f8c:      	ldrb.w	r0, [sp, #0x3]
 8000f90:      	add	sp, #0x8
 8000f92:      	bx	lr

08000f94 <_ZN13stm32f30x_hal4gpio5gpioe51PE14$LT$stm32f30x_hal..gpio..Output$LT$MODE$GT$$GT$9downgrade17h40c42198949a773eE>:
;                     pub fn downgrade(self) -> $PXx<Output<MODE>> {
 8000f94:      	sub	sp, #0x8
 8000f96:      	movs	r0, #0xe
;                         $PXx {
 8000f98:      	strb.w	r0, [sp, #0x3]
;                     }
 8000f9c:      	ldrb.w	r0, [sp, #0x3]
 8000fa0:      	add	sp, #0x8
 8000fa2:      	bx	lr

08000fa4 <_ZN13stm32f30x_hal4gpio5gpioe51PE15$LT$stm32f30x_hal..gpio..Output$LT$MODE$GT$$GT$9downgrade17h35af133288f0d2c4E>:
;                     pub fn downgrade(self) -> $PXx<Output<MODE>> {
 8000fa4:      	sub	sp, #0x8
 8000fa6:      	movs	r0, #0xf
;                         $PXx {
 8000fa8:      	strb.w	r0, [sp, #0x3]
;                     }
 8000fac:      	ldrb.w	r0, [sp, #0x3]
 8000fb0:      	add	sp, #0x8
 8000fb2:      	bx	lr

08000fb4 <f3::led::<impl core::convert::Into<f3::led::Led> for stm32f30x_hal::gpio::gpioe::PE9<stm32f30x_hal::gpio::Output<stm32f30x_hal::gpio::PushPull>>>::into::h8b888f60bada5304>:
;                 fn into(self) -> Led {
 8000fb4:      	push	{r7, lr}
 8000fb6:      	mov	r7, sp
 8000fb8:      	sub	sp, #0x10
;                         pex: self.downgrade(),
 8000fba:      	bl	#-0x7a
 8000fbe:      	str	r0, [sp, #0x4]
 8000fc0:      	b	#-0x2 <f3::led::<impl core::convert::Into<f3::led::Led> for stm32f30x_hal::gpio::gpioe::PE9<stm32f30x_hal::gpio::Output<stm32f30x_hal::gpio::PushPull>>>::into::h8b888f60bada5304+0xe>
;                     Led {
 8000fc2:      	ldr	r0, [sp, #0x4]
 8000fc4:      	strb	r0, [r7, #-5]
;                 }
 8000fc8:      	ldrb	r0, [r7, #-5]
 8000fcc:      	add	sp, #0x10
 8000fce:      	pop	{r7, pc}

08000fd0 <f3::led::<impl core::convert::Into<f3::led::Led> for stm32f30x_hal::gpio::gpioe::PE8<stm32f30x_hal::gpio::Output<stm32f30x_hal::gpio::PushPull>>>::into::h082401fb2a4bec53>:
;                 fn into(self) -> Led {
 8000fd0:      	push	{r7, lr}
 8000fd2:      	mov	r7, sp
 8000fd4:      	sub	sp, #0x10
;                         pex: self.downgrade(),
 8000fd6:      	bl	#-0xa6
 8000fda:      	str	r0, [sp, #0x4]
 8000fdc:      	b	#-0x2 <f3::led::<impl core::convert::Into<f3::led::Led> for stm32f30x_hal::gpio::gpioe::PE8<stm32f30x_hal::gpio::Output<stm32f30x_hal::gpio::PushPull>>>::into::h082401fb2a4bec53+0xe>
;                     Led {
 8000fde:      	ldr	r0, [sp, #0x4]
 8000fe0:      	strb	r0, [r7, #-5]
;                 }
 8000fe4:      	ldrb	r0, [r7, #-5]
 8000fe8:      	add	sp, #0x10
 8000fea:      	pop	{r7, pc}

08000fec <f3::led::<impl core::convert::Into<f3::led::Led> for stm32f30x_hal::gpio::gpioe::PE10<stm32f30x_hal::gpio::Output<stm32f30x_hal::gpio::PushPull>>>::into::h526f6746222bcbec>:
;                 fn into(self) -> Led {
 8000fec:      	push	{r7, lr}
 8000fee:      	mov	r7, sp
 8000ff0:      	sub	sp, #0x10
;                         pex: self.downgrade(),
 8000ff2:      	bl	#-0xa2
 8000ff6:      	str	r0, [sp, #0x4]
 8000ff8:      	b	#-0x2 <f3::led::<impl core::convert::Into<f3::led::Led> for stm32f30x_hal::gpio::gpioe::PE10<stm32f30x_hal::gpio::Output<stm32f30x_hal::gpio::PushPull>>>::into::h526f6746222bcbec+0xe>
;                     Led {
 8000ffa:      	ldr	r0, [sp, #0x4]
 8000ffc:      	strb	r0, [r7, #-5]
;                 }
 8001000:      	ldrb	r0, [r7, #-5]
 8001004:      	add	sp, #0x10
 8001006:      	pop	{r7, pc}

08001008 <f3::led::<impl core::convert::Into<f3::led::Led> for stm32f30x_hal::gpio::gpioe::PE15<stm32f30x_hal::gpio::Output<stm32f30x_hal::gpio::PushPull>>>::into::h455b6ddd47e2d25c>:
;                 fn into(self) -> Led {
 8001008:      	push	{r7, lr}
 800100a:      	mov	r7, sp
 800100c:      	sub	sp, #0x10
;                         pex: self.downgrade(),
 800100e:      	bl	#-0x6e
 8001012:      	str	r0, [sp, #0x4]
 8001014:      	b	#-0x2 <f3::led::<impl core::convert::Into<f3::led::Led> for stm32f30x_hal::gpio::gpioe::PE15<stm32f30x_hal::gpio::Output<stm32f30x_hal::gpio::PushPull>>>::into::h455b6ddd47e2d25c+0xe>
;                     Led {
 8001016:      	ldr	r0, [sp, #0x4]
 8001018:      	strb	r0, [r7, #-5]
;                 }
 800101c:      	ldrb	r0, [r7, #-5]
 8001020:      	add	sp, #0x10
 8001022:      	pop	{r7, pc}

08001024 <f3::led::<impl core::convert::Into<f3::led::Led> for stm32f30x_hal::gpio::gpioe::PE11<stm32f30x_hal::gpio::Output<stm32f30x_hal::gpio::PushPull>>>::into::h386ad041b8e7633e>:
;                 fn into(self) -> Led {
 8001024:      	push	{r7, lr}
 8001026:      	mov	r7, sp
 8001028:      	sub	sp, #0x10
;                         pex: self.downgrade(),
 800102a:      	bl	#-0xca
 800102e:      	str	r0, [sp, #0x4]
 8001030:      	b	#-0x2 <f3::led::<impl core::convert::Into<f3::led::Led> for stm32f30x_hal::gpio::gpioe::PE11<stm32f30x_hal::gpio::Output<stm32f30x_hal::gpio::PushPull>>>::into::h386ad041b8e7633e+0xe>
;                     Led {
 8001032:      	ldr	r0, [sp, #0x4]
 8001034:      	strb	r0, [r7, #-5]
;                 }
 8001038:      	ldrb	r0, [r7, #-5]
 800103c:      	add	sp, #0x10
 800103e:      	pop	{r7, pc}

08001040 <f3::led::<impl core::convert::Into<f3::led::Led> for stm32f30x_hal::gpio::gpioe::PE14<stm32f30x_hal::gpio::Output<stm32f30x_hal::gpio::PushPull>>>::into::h9eab4e7726b9ef84>:
;                 fn into(self) -> Led {
 8001040:      	push	{r7, lr}
 8001042:      	mov	r7, sp
 8001044:      	sub	sp, #0x10
;                         pex: self.downgrade(),
 8001046:      	bl	#-0xb6
 800104a:      	str	r0, [sp, #0x4]
 800104c:      	b	#-0x2 <f3::led::<impl core::convert::Into<f3::led::Led> for stm32f30x_hal::gpio::gpioe::PE14<stm32f30x_hal::gpio::Output<stm32f30x_hal::gpio::PushPull>>>::into::h9eab4e7726b9ef84+0xe>
;                     Led {
 800104e:      	ldr	r0, [sp, #0x4]
 8001050:      	strb	r0, [r7, #-5]
;                 }
 8001054:      	ldrb	r0, [r7, #-5]
 8001058:      	add	sp, #0x10
 800105a:      	pop	{r7, pc}

0800105c <f3::led::<impl core::convert::Into<f3::led::Led> for stm32f30x_hal::gpio::gpioe::PE12<stm32f30x_hal::gpio::Output<stm32f30x_hal::gpio::PushPull>>>::into::h7d3b167831193292>:
;                 fn into(self) -> Led {
 800105c:      	push	{r7, lr}
 800105e:      	mov	r7, sp
 8001060:      	sub	sp, #0x10
;                         pex: self.downgrade(),
 8001062:      	bl	#-0xf2
 8001066:      	str	r0, [sp, #0x4]
 8001068:      	b	#-0x2 <f3::led::<impl core::convert::Into<f3::led::Led> for stm32f30x_hal::gpio::gpioe::PE12<stm32f30x_hal::gpio::Output<stm32f30x_hal::gpio::PushPull>>>::into::h7d3b167831193292+0xe>
;                     Led {
 800106a:      	ldr	r0, [sp, #0x4]
 800106c:      	strb	r0, [r7, #-5]
;                 }
 8001070:      	ldrb	r0, [r7, #-5]
 8001074:      	add	sp, #0x10
 8001076:      	pop	{r7, pc}

08001078 <f3::led::<impl core::convert::Into<f3::led::Led> for stm32f30x_hal::gpio::gpioe::PE13<stm32f30x_hal::gpio::Output<stm32f30x_hal::gpio::PushPull>>>::into::hec0866648fe5378b>:
;                 fn into(self) -> Led {
 8001078:      	push	{r7, lr}
 800107a:      	mov	r7, sp
 800107c:      	sub	sp, #0x10
;                         pex: self.downgrade(),
 800107e:      	bl	#-0xfe
 8001082:      	str	r0, [sp, #0x4]
 8001084:      	b	#-0x2 <f3::led::<impl core::convert::Into<f3::led::Led> for stm32f30x_hal::gpio::gpioe::PE13<stm32f30x_hal::gpio::Output<stm32f30x_hal::gpio::PushPull>>>::into::hec0866648fe5378b+0xe>
;                     Led {
 8001086:      	ldr	r0, [sp, #0x4]
 8001088:      	strb	r0, [r7, #-5]
;                 }
 800108c:      	ldrb	r0, [r7, #-5]
 8001090:      	add	sp, #0x10
 8001092:      	pop	{r7, pc}

08001094 <stm32f30x::gpioc::moder::R::bits::h7514a7279dcb3796>:
;     pub fn bits(&self) -> u32 {
 8001094:      	sub	sp, #0x4
 8001096:      	str	r0, [sp]
;         self.bits
 8001098:      	ldr	r0, [r0]
;     }
 800109a:      	add	sp, #0x4
 800109c:      	bx	lr

0800109e <stm32f30x::gpioc::moder::W::bits::he428803ea9ba09bb>:
;     pub unsafe fn bits(&mut self, bits: u32) -> &mut Self {
 800109e:      	sub	sp, #0x8
 80010a0:      	str	r0, [sp]
 80010a2:      	str	r1, [sp, #0x4]
;         self.bits = bits;
 80010a4:      	str	r1, [r0]
;     }
 80010a6:      	add	sp, #0x8
 80010a8:      	bx	lr

080010aa <stm32f30x::gpioc::otyper::R::bits::ha30ae08ddc8f3faa>:
;     pub fn bits(&self) -> u32 {
 80010aa:      	sub	sp, #0x4
 80010ac:      	str	r0, [sp]
;         self.bits
 80010ae:      	ldr	r0, [r0]
;     }
 80010b0:      	add	sp, #0x4
 80010b2:      	bx	lr

080010b4 <stm32f30x::gpioc::otyper::W::bits::h8a4c510fa1a221a2>:
;     pub unsafe fn bits(&mut self, bits: u32) -> &mut Self {
 80010b4:      	sub	sp, #0x8
 80010b6:      	str	r0, [sp]
 80010b8:      	str	r1, [sp, #0x4]
;         self.bits = bits;
 80010ba:      	str	r1, [r0]
;     }
 80010bc:      	add	sp, #0x8
 80010be:      	bx	lr

080010c0 <stm32f30x::gpioc::moder::<impl stm32f30x::gpioc::MODER>::modify::h4e8c8bf6973f5a26>:
;     pub fn modify<F>(&self, f: F)
 80010c0:      	push	{r7, lr}
 80010c2:      	mov	r7, sp
 80010c4:      	sub	sp, #0x40
 80010c6:      	str	r0, [sp, #0x24]
 80010c8:      	str	r1, [sp, #0x28]
 80010ca:      	str	r2, [sp, #0x2c]
 80010cc:      	str	r0, [sp, #0x34]
;         unsafe { ptr::read_volatile(self.value.get()) }
 80010ce:      	str	r0, [sp, #0x10]
 80010d0:      	str	r2, [sp, #0xc]
 80010d2:      	str	r1, [sp, #0x8]
 80010d4:      	bl	#0xe18
 80010d8:      	bl	#0xb0c
 80010dc:      	mov	r1, r0
;         let bits = self.register.get();
 80010de:      	str	r0, [sp, #0x30]
 80010e0:      	str	r1, [sp, #0x4]
 80010e2:      	b	#-0x2 <stm32f30x::gpioc::moder::<impl stm32f30x::gpioc::MODER>::modify::h4e8c8bf6973f5a26+0x24>
;         let r = R { bits: bits };
 80010e4:      	ldr	r0, [sp, #0x4]
 80010e6:      	str	r0, [sp, #0x14]
;         let mut w = W { bits: bits };
 80010e8:      	str	r0, [sp, #0x18]
 80010ea:      	add	r1, sp, #0x14
;         f(&r, &mut w);
 80010ec:      	str	r1, [sp, #0x1c]
 80010ee:      	add	r1, sp, #0x18
 80010f0:      	str	r1, [sp, #0x20]
 80010f2:      	ldr	r2, [sp, #0x1c]
 80010f4:      	ldr	r3, [sp, #0x20]
 80010f6:      	ldr	r0, [sp, #0x8]
 80010f8:      	ldr	r1, [sp, #0xc]
 80010fa:      	bl	#-0x95c
 80010fe:      	b	#-0x2 <stm32f30x::gpioc::moder::<impl stm32f30x::gpioc::MODER>::modify::h4e8c8bf6973f5a26+0x40>
;         self.register.set(w.bits);
 8001100:      	ldr	r0, [sp, #0x18]
 8001102:      	ldr	r1, [sp, #0x10]
 8001104:      	str	r1, [sp, #0x38]
 8001106:      	str	r0, [sp, #0x3c]
;         unsafe { ptr::write_volatile(self.value.get(), value) }
 8001108:      	str	r0, [sp]
 800110a:      	mov	r0, r1
 800110c:      	bl	#0xde0
 8001110:      	ldr	r1, [sp]
 8001112:      	bl	#0xaf8
;         self.register.set(w.bits);
 8001116:      	b	#-0x2 <stm32f30x::gpioc::moder::<impl stm32f30x::gpioc::MODER>::modify::h4e8c8bf6973f5a26+0x58>
;     }
 8001118:      	add	sp, #0x40
 800111a:      	pop	{r7, pc}

0800111c <stm32f30x::gpioc::moder::<impl stm32f30x::gpioc::MODER>::modify::h864647b7c2438aa1>:
;     pub fn modify<F>(&self, f: F)
 800111c:      	push	{r7, lr}
 800111e:      	mov	r7, sp
 8001120:      	sub	sp, #0x40
 8001122:      	str	r0, [sp, #0x24]
 8001124:      	str	r1, [sp, #0x28]
 8001126:      	str	r2, [sp, #0x2c]
 8001128:      	str	r0, [sp, #0x34]
;         unsafe { ptr::read_volatile(self.value.get()) }
 800112a:      	str	r0, [sp, #0x10]
 800112c:      	str	r2, [sp, #0xc]
 800112e:      	str	r1, [sp, #0x8]
 8001130:      	bl	#0xdbc
 8001134:      	bl	#0xab0
 8001138:      	mov	r1, r0
;         let bits = self.register.get();
 800113a:      	str	r0, [sp, #0x30]
 800113c:      	str	r1, [sp, #0x4]
 800113e:      	b	#-0x2 <stm32f30x::gpioc::moder::<impl stm32f30x::gpioc::MODER>::modify::h864647b7c2438aa1+0x24>
;         let r = R { bits: bits };
 8001140:      	ldr	r0, [sp, #0x4]
 8001142:      	str	r0, [sp, #0x14]
;         let mut w = W { bits: bits };
 8001144:      	str	r0, [sp, #0x18]
 8001146:      	add	r1, sp, #0x14
;         f(&r, &mut w);
 8001148:      	str	r1, [sp, #0x1c]
 800114a:      	add	r1, sp, #0x18
 800114c:      	str	r1, [sp, #0x20]
 800114e:      	ldr	r2, [sp, #0x1c]
 8001150:      	ldr	r3, [sp, #0x20]
 8001152:      	ldr	r0, [sp, #0x8]
 8001154:      	ldr	r1, [sp, #0xc]
 8001156:      	bl	#-0x418
 800115a:      	b	#-0x2 <stm32f30x::gpioc::moder::<impl stm32f30x::gpioc::MODER>::modify::h864647b7c2438aa1+0x40>
;         self.register.set(w.bits);
 800115c:      	ldr	r0, [sp, #0x18]
 800115e:      	ldr	r1, [sp, #0x10]
 8001160:      	str	r1, [sp, #0x38]
 8001162:      	str	r0, [sp, #0x3c]
;         unsafe { ptr::write_volatile(self.value.get(), value) }
 8001164:      	str	r0, [sp]
 8001166:      	mov	r0, r1
 8001168:      	bl	#0xd84
 800116c:      	ldr	r1, [sp]
 800116e:      	bl	#0xa9c
;         self.register.set(w.bits);
 8001172:      	b	#-0x2 <stm32f30x::gpioc::moder::<impl stm32f30x::gpioc::MODER>::modify::h864647b7c2438aa1+0x58>
;     }
 8001174:      	add	sp, #0x40
 8001176:      	pop	{r7, pc}

08001178 <stm32f30x::gpioc::moder::<impl stm32f30x::gpioc::MODER>::modify::h99e98f34f41bb8ce>:
;     pub fn modify<F>(&self, f: F)
 8001178:      	push	{r7, lr}
 800117a:      	mov	r7, sp
 800117c:      	sub	sp, #0x40
 800117e:      	str	r0, [sp, #0x24]
 8001180:      	str	r1, [sp, #0x28]
 8001182:      	str	r2, [sp, #0x2c]
 8001184:      	str	r0, [sp, #0x34]
;         unsafe { ptr::read_volatile(self.value.get()) }
 8001186:      	str	r0, [sp, #0x10]
 8001188:      	str	r2, [sp, #0xc]
 800118a:      	str	r1, [sp, #0x8]
 800118c:      	bl	#0xd60
 8001190:      	bl	#0xa54
 8001194:      	mov	r1, r0
;         let bits = self.register.get();
 8001196:      	str	r0, [sp, #0x30]
 8001198:      	str	r1, [sp, #0x4]
 800119a:      	b	#-0x2 <stm32f30x::gpioc::moder::<impl stm32f30x::gpioc::MODER>::modify::h99e98f34f41bb8ce+0x24>
;         let r = R { bits: bits };
 800119c:      	ldr	r0, [sp, #0x4]
 800119e:      	str	r0, [sp, #0x14]
;         let mut w = W { bits: bits };
 80011a0:      	str	r0, [sp, #0x18]
 80011a2:      	add	r1, sp, #0x14
;         f(&r, &mut w);
 80011a4:      	str	r1, [sp, #0x1c]
 80011a6:      	add	r1, sp, #0x18
 80011a8:      	str	r1, [sp, #0x20]
 80011aa:      	ldr	r2, [sp, #0x1c]
 80011ac:      	ldr	r3, [sp, #0x20]
 80011ae:      	ldr	r0, [sp, #0x8]
 80011b0:      	ldr	r1, [sp, #0xc]
 80011b2:      	bl	#-0xb34
 80011b6:      	b	#-0x2 <stm32f30x::gpioc::moder::<impl stm32f30x::gpioc::MODER>::modify::h99e98f34f41bb8ce+0x40>
;         self.register.set(w.bits);
 80011b8:      	ldr	r0, [sp, #0x18]
 80011ba:      	ldr	r1, [sp, #0x10]
 80011bc:      	str	r1, [sp, #0x38]
 80011be:      	str	r0, [sp, #0x3c]
;         unsafe { ptr::write_volatile(self.value.get(), value) }
 80011c0:      	str	r0, [sp]
 80011c2:      	mov	r0, r1
 80011c4:      	bl	#0xd28
 80011c8:      	ldr	r1, [sp]
 80011ca:      	bl	#0xa40
;         self.register.set(w.bits);
 80011ce:      	b	#-0x2 <stm32f30x::gpioc::moder::<impl stm32f30x::gpioc::MODER>::modify::h99e98f34f41bb8ce+0x58>
;     }
 80011d0:      	add	sp, #0x40
 80011d2:      	pop	{r7, pc}

080011d4 <stm32f30x::gpioc::moder::<impl stm32f30x::gpioc::MODER>::modify::h9c4b88566159540d>:
;     pub fn modify<F>(&self, f: F)
 80011d4:      	push	{r7, lr}
 80011d6:      	mov	r7, sp
 80011d8:      	sub	sp, #0x40
 80011da:      	str	r0, [sp, #0x24]
 80011dc:      	str	r1, [sp, #0x28]
 80011de:      	str	r2, [sp, #0x2c]
 80011e0:      	str	r0, [sp, #0x34]
;         unsafe { ptr::read_volatile(self.value.get()) }
 80011e2:      	str	r0, [sp, #0x10]
 80011e4:      	str	r2, [sp, #0xc]
 80011e6:      	str	r1, [sp, #0x8]
 80011e8:      	bl	#0xd04
 80011ec:      	bl	#0x9f8
 80011f0:      	mov	r1, r0
;         let bits = self.register.get();
 80011f2:      	str	r0, [sp, #0x30]
 80011f4:      	str	r1, [sp, #0x4]
 80011f6:      	b	#-0x2 <stm32f30x::gpioc::moder::<impl stm32f30x::gpioc::MODER>::modify::h9c4b88566159540d+0x24>
;         let r = R { bits: bits };
 80011f8:      	ldr	r0, [sp, #0x4]
 80011fa:      	str	r0, [sp, #0x14]
;         let mut w = W { bits: bits };
 80011fc:      	str	r0, [sp, #0x18]
 80011fe:      	add	r1, sp, #0x14
;         f(&r, &mut w);
 8001200:      	str	r1, [sp, #0x1c]
 8001202:      	add	r1, sp, #0x18
 8001204:      	str	r1, [sp, #0x20]
 8001206:      	ldr	r2, [sp, #0x1c]
 8001208:      	ldr	r3, [sp, #0x20]
 800120a:      	ldr	r0, [sp, #0x8]
 800120c:      	ldr	r1, [sp, #0xc]
 800120e:      	bl	#-0x386
 8001212:      	b	#-0x2 <stm32f30x::gpioc::moder::<impl stm32f30x::gpioc::MODER>::modify::h9c4b88566159540d+0x40>
;         self.register.set(w.bits);
 8001214:      	ldr	r0, [sp, #0x18]
 8001216:      	ldr	r1, [sp, #0x10]
 8001218:      	str	r1, [sp, #0x38]
 800121a:      	str	r0, [sp, #0x3c]
;         unsafe { ptr::write_volatile(self.value.get(), value) }
 800121c:      	str	r0, [sp]
 800121e:      	mov	r0, r1
 8001220:      	bl	#0xccc
 8001224:      	ldr	r1, [sp]
 8001226:      	bl	#0x9e4
;         self.register.set(w.bits);
 800122a:      	b	#-0x2 <stm32f30x::gpioc::moder::<impl stm32f30x::gpioc::MODER>::modify::h9c4b88566159540d+0x58>
;     }
 800122c:      	add	sp, #0x40
 800122e:      	pop	{r7, pc}

08001230 <stm32f30x::gpioc::moder::<impl stm32f30x::gpioc::MODER>::modify::he21e77f1baec05ad>:
;     pub fn modify<F>(&self, f: F)
 8001230:      	push	{r7, lr}
 8001232:      	mov	r7, sp
 8001234:      	sub	sp, #0x40
 8001236:      	str	r0, [sp, #0x24]
 8001238:      	str	r1, [sp, #0x28]
 800123a:      	str	r2, [sp, #0x2c]
 800123c:      	str	r0, [sp, #0x34]
;         unsafe { ptr::read_volatile(self.value.get()) }
 800123e:      	str	r0, [sp, #0x10]
 8001240:      	str	r2, [sp, #0xc]
 8001242:      	str	r1, [sp, #0x8]
 8001244:      	bl	#0xca8
 8001248:      	bl	#0x99c
 800124c:      	mov	r1, r0
;         let bits = self.register.get();
 800124e:      	str	r0, [sp, #0x30]
 8001250:      	str	r1, [sp, #0x4]
 8001252:      	b	#-0x2 <stm32f30x::gpioc::moder::<impl stm32f30x::gpioc::MODER>::modify::he21e77f1baec05ad+0x24>
;         let r = R { bits: bits };
 8001254:      	ldr	r0, [sp, #0x4]
 8001256:      	str	r0, [sp, #0x14]
;         let mut w = W { bits: bits };
 8001258:      	str	r0, [sp, #0x18]
 800125a:      	add	r1, sp, #0x14
;         f(&r, &mut w);
 800125c:      	str	r1, [sp, #0x1c]
 800125e:      	add	r1, sp, #0x18
 8001260:      	str	r1, [sp, #0x20]
 8001262:      	ldr	r2, [sp, #0x1c]
 8001264:      	ldr	r3, [sp, #0x20]
 8001266:      	ldr	r0, [sp, #0x8]
 8001268:      	ldr	r1, [sp, #0xc]
 800126a:      	bl	#-0x622
 800126e:      	b	#-0x2 <stm32f30x::gpioc::moder::<impl stm32f30x::gpioc::MODER>::modify::he21e77f1baec05ad+0x40>
;         self.register.set(w.bits);
 8001270:      	ldr	r0, [sp, #0x18]
 8001272:      	ldr	r1, [sp, #0x10]
 8001274:      	str	r1, [sp, #0x38]
 8001276:      	str	r0, [sp, #0x3c]
;         unsafe { ptr::write_volatile(self.value.get(), value) }
 8001278:      	str	r0, [sp]
 800127a:      	mov	r0, r1
 800127c:      	bl	#0xc70
 8001280:      	ldr	r1, [sp]
 8001282:      	bl	#0x988
;         self.register.set(w.bits);
 8001286:      	b	#-0x2 <stm32f30x::gpioc::moder::<impl stm32f30x::gpioc::MODER>::modify::he21e77f1baec05ad+0x58>
;     }
 8001288:      	add	sp, #0x40
 800128a:      	pop	{r7, pc}

0800128c <stm32f30x::gpioc::moder::<impl stm32f30x::gpioc::MODER>::modify::he80762782dd63082>:
;     pub fn modify<F>(&self, f: F)
 800128c:      	push	{r7, lr}
 800128e:      	mov	r7, sp
 8001290:      	sub	sp, #0x40
 8001292:      	str	r0, [sp, #0x24]
 8001294:      	str	r1, [sp, #0x28]
 8001296:      	str	r2, [sp, #0x2c]
 8001298:      	str	r0, [sp, #0x34]
;         unsafe { ptr::read_volatile(self.value.get()) }
 800129a:      	str	r0, [sp, #0x10]
 800129c:      	str	r2, [sp, #0xc]
 800129e:      	str	r1, [sp, #0x8]
 80012a0:      	bl	#0xc4c
 80012a4:      	bl	#0x940
 80012a8:      	mov	r1, r0
;         let bits = self.register.get();
 80012aa:      	str	r0, [sp, #0x30]
 80012ac:      	str	r1, [sp, #0x4]
 80012ae:      	b	#-0x2 <stm32f30x::gpioc::moder::<impl stm32f30x::gpioc::MODER>::modify::he80762782dd63082+0x24>
;         let r = R { bits: bits };
 80012b0:      	ldr	r0, [sp, #0x4]
 80012b2:      	str	r0, [sp, #0x14]
;         let mut w = W { bits: bits };
 80012b4:      	str	r0, [sp, #0x18]
 80012b6:      	add	r1, sp, #0x14
;         f(&r, &mut w);
 80012b8:      	str	r1, [sp, #0x1c]
 80012ba:      	add	r1, sp, #0x18
 80012bc:      	str	r1, [sp, #0x20]
 80012be:      	ldr	r2, [sp, #0x1c]
 80012c0:      	ldr	r3, [sp, #0x20]
 80012c2:      	ldr	r0, [sp, #0x8]
 80012c4:      	ldr	r1, [sp, #0xc]
 80012c6:      	bl	#-0x9de
 80012ca:      	b	#-0x2 <stm32f30x::gpioc::moder::<impl stm32f30x::gpioc::MODER>::modify::he80762782dd63082+0x40>
;         self.register.set(w.bits);
 80012cc:      	ldr	r0, [sp, #0x18]
 80012ce:      	ldr	r1, [sp, #0x10]
 80012d0:      	str	r1, [sp, #0x38]
 80012d2:      	str	r0, [sp, #0x3c]
;         unsafe { ptr::write_volatile(self.value.get(), value) }
 80012d4:      	str	r0, [sp]
 80012d6:      	mov	r0, r1
 80012d8:      	bl	#0xc14
 80012dc:      	ldr	r1, [sp]
 80012de:      	bl	#0x92c
;         self.register.set(w.bits);
 80012e2:      	b	#-0x2 <stm32f30x::gpioc::moder::<impl stm32f30x::gpioc::MODER>::modify::he80762782dd63082+0x58>
;     }
 80012e4:      	add	sp, #0x40
 80012e6:      	pop	{r7, pc}

080012e8 <stm32f30x::gpioc::moder::<impl stm32f30x::gpioc::MODER>::modify::hf32aec263a5b0328>:
;     pub fn modify<F>(&self, f: F)
 80012e8:      	push	{r7, lr}
 80012ea:      	mov	r7, sp
 80012ec:      	sub	sp, #0x40
 80012ee:      	str	r0, [sp, #0x24]
 80012f0:      	str	r1, [sp, #0x28]
 80012f2:      	str	r2, [sp, #0x2c]
 80012f4:      	str	r0, [sp, #0x34]
;         unsafe { ptr::read_volatile(self.value.get()) }
 80012f6:      	str	r0, [sp, #0x10]
 80012f8:      	str	r2, [sp, #0xc]
 80012fa:      	str	r1, [sp, #0x8]
 80012fc:      	bl	#0xbf0
 8001300:      	bl	#0x8e4
 8001304:      	mov	r1, r0
;         let bits = self.register.get();
 8001306:      	str	r0, [sp, #0x30]
 8001308:      	str	r1, [sp, #0x4]
 800130a:      	b	#-0x2 <stm32f30x::gpioc::moder::<impl stm32f30x::gpioc::MODER>::modify::hf32aec263a5b0328+0x24>
;         let r = R { bits: bits };
 800130c:      	ldr	r0, [sp, #0x4]
 800130e:      	str	r0, [sp, #0x14]
;         let mut w = W { bits: bits };
 8001310:      	str	r0, [sp, #0x18]
 8001312:      	add	r1, sp, #0x14
;         f(&r, &mut w);
 8001314:      	str	r1, [sp, #0x1c]
 8001316:      	add	r1, sp, #0x18
 8001318:      	str	r1, [sp, #0x20]
 800131a:      	ldr	r2, [sp, #0x1c]
 800131c:      	ldr	r3, [sp, #0x20]
 800131e:      	ldr	r0, [sp, #0x8]
 8001320:      	ldr	r1, [sp, #0xc]
 8001322:      	bl	#-0x944
 8001326:      	b	#-0x2 <stm32f30x::gpioc::moder::<impl stm32f30x::gpioc::MODER>::modify::hf32aec263a5b0328+0x40>
;         self.register.set(w.bits);
 8001328:      	ldr	r0, [sp, #0x18]
 800132a:      	ldr	r1, [sp, #0x10]
 800132c:      	str	r1, [sp, #0x38]
 800132e:      	str	r0, [sp, #0x3c]
;         unsafe { ptr::write_volatile(self.value.get(), value) }
 8001330:      	str	r0, [sp]
 8001332:      	mov	r0, r1
 8001334:      	bl	#0xbb8
 8001338:      	ldr	r1, [sp]
 800133a:      	bl	#0x8d0
;         self.register.set(w.bits);
 800133e:      	b	#-0x2 <stm32f30x::gpioc::moder::<impl stm32f30x::gpioc::MODER>::modify::hf32aec263a5b0328+0x58>
;     }
 8001340:      	add	sp, #0x40
 8001342:      	pop	{r7, pc}

08001344 <stm32f30x::gpioc::moder::<impl stm32f30x::gpioc::MODER>::modify::hf7318eae8d5292d6>:
;     pub fn modify<F>(&self, f: F)
 8001344:      	push	{r7, lr}
 8001346:      	mov	r7, sp
 8001348:      	sub	sp, #0x40
 800134a:      	str	r0, [sp, #0x24]
 800134c:      	str	r1, [sp, #0x28]
 800134e:      	str	r2, [sp, #0x2c]
 8001350:      	str	r0, [sp, #0x34]
;         unsafe { ptr::read_volatile(self.value.get()) }
 8001352:      	str	r0, [sp, #0x10]
 8001354:      	str	r2, [sp, #0xc]
 8001356:      	str	r1, [sp, #0x8]
 8001358:      	bl	#0xb94
 800135c:      	bl	#0x888
 8001360:      	mov	r1, r0
;         let bits = self.register.get();
 8001362:      	str	r0, [sp, #0x30]
 8001364:      	str	r1, [sp, #0x4]
 8001366:      	b	#-0x2 <stm32f30x::gpioc::moder::<impl stm32f30x::gpioc::MODER>::modify::hf7318eae8d5292d6+0x24>
;         let r = R { bits: bits };
 8001368:      	ldr	r0, [sp, #0x4]
 800136a:      	str	r0, [sp, #0x14]
;         let mut w = W { bits: bits };
 800136c:      	str	r0, [sp, #0x18]
 800136e:      	add	r1, sp, #0x14
;         f(&r, &mut w);
 8001370:      	str	r1, [sp, #0x1c]
 8001372:      	add	r1, sp, #0x18
 8001374:      	str	r1, [sp, #0x20]
 8001376:      	ldr	r2, [sp, #0x1c]
 8001378:      	ldr	r3, [sp, #0x20]
 800137a:      	ldr	r0, [sp, #0x8]
 800137c:      	ldr	r1, [sp, #0xc]
 800137e:      	bl	#-0x856
 8001382:      	b	#-0x2 <stm32f30x::gpioc::moder::<impl stm32f30x::gpioc::MODER>::modify::hf7318eae8d5292d6+0x40>
;         self.register.set(w.bits);
 8001384:      	ldr	r0, [sp, #0x18]
 8001386:      	ldr	r1, [sp, #0x10]
 8001388:      	str	r1, [sp, #0x38]
 800138a:      	str	r0, [sp, #0x3c]
;         unsafe { ptr::write_volatile(self.value.get(), value) }
 800138c:      	str	r0, [sp]
 800138e:      	mov	r0, r1
 8001390:      	bl	#0xb5c
 8001394:      	ldr	r1, [sp]
 8001396:      	bl	#0x874
;         self.register.set(w.bits);
 800139a:      	b	#-0x2 <stm32f30x::gpioc::moder::<impl stm32f30x::gpioc::MODER>::modify::hf7318eae8d5292d6+0x58>
;     }
 800139c:      	add	sp, #0x40
 800139e:      	pop	{r7, pc}

080013a0 <stm32f30x::gpioc::otyper::<impl stm32f30x::gpioc::OTYPER>::modify::h36f15c37164976a9>:
;     pub fn modify<F>(&self, f: F)
 80013a0:      	push	{r7, lr}
 80013a2:      	mov	r7, sp
 80013a4:      	sub	sp, #0x38
 80013a6:      	str	r0, [sp, #0x20]
 80013a8:      	str	r0, [sp, #0x2c]
;         unsafe { ptr::read_volatile(self.value.get()) }
 80013aa:      	str	r0, [sp, #0xc]
 80013ac:      	bl	#0xb40
 80013b0:      	bl	#0x834
 80013b4:      	mov	r1, r0
;         let bits = self.register.get();
 80013b6:      	str	r0, [sp, #0x28]
 80013b8:      	str	r1, [sp, #0x8]
 80013ba:      	b	#-0x2 <stm32f30x::gpioc::otyper::<impl stm32f30x::gpioc::OTYPER>::modify::h36f15c37164976a9+0x1c>
;         let r = R { bits: bits };
 80013bc:      	ldr	r0, [sp, #0x8]
 80013be:      	str	r0, [sp, #0x10]
;         let mut w = W { bits: bits };
 80013c0:      	str	r0, [sp, #0x14]
 80013c2:      	add	r1, sp, #0x10
;         f(&r, &mut w);
 80013c4:      	str	r1, [sp, #0x18]
 80013c6:      	add	r1, sp, #0x14
 80013c8:      	str	r1, [sp, #0x1c]
 80013ca:      	ldr	r0, [sp, #0x18]
 80013cc:      	ldr	r1, [sp, #0x1c]
 80013ce:      	bl	#-0xb10
 80013d2:      	b	#-0x2 <stm32f30x::gpioc::otyper::<impl stm32f30x::gpioc::OTYPER>::modify::h36f15c37164976a9+0x34>
;         self.register.set(w.bits);
 80013d4:      	ldr	r0, [sp, #0x14]
 80013d6:      	ldr	r1, [sp, #0xc]
 80013d8:      	str	r1, [sp, #0x30]
 80013da:      	str	r0, [sp, #0x34]
;         unsafe { ptr::write_volatile(self.value.get(), value) }
 80013dc:      	str	r0, [sp, #0x4]
 80013de:      	mov	r0, r1
 80013e0:      	bl	#0xb0c
 80013e4:      	ldr	r1, [sp, #0x4]
 80013e6:      	bl	#0x824
;         self.register.set(w.bits);
 80013ea:      	b	#-0x2 <stm32f30x::gpioc::otyper::<impl stm32f30x::gpioc::OTYPER>::modify::h36f15c37164976a9+0x4c>
;     }
 80013ec:      	add	sp, #0x38
 80013ee:      	pop	{r7, pc}

080013f0 <stm32f30x::gpioc::otyper::<impl stm32f30x::gpioc::OTYPER>::modify::h4d164db70f356318>:
;     pub fn modify<F>(&self, f: F)
 80013f0:      	push	{r7, lr}
 80013f2:      	mov	r7, sp
 80013f4:      	sub	sp, #0x38
 80013f6:      	str	r0, [sp, #0x20]
 80013f8:      	str	r0, [sp, #0x2c]
;         unsafe { ptr::read_volatile(self.value.get()) }
 80013fa:      	str	r0, [sp, #0xc]
 80013fc:      	bl	#0xaf0
 8001400:      	bl	#0x7e4
 8001404:      	mov	r1, r0
;         let bits = self.register.get();
 8001406:      	str	r0, [sp, #0x28]
 8001408:      	str	r1, [sp, #0x8]
 800140a:      	b	#-0x2 <stm32f30x::gpioc::otyper::<impl stm32f30x::gpioc::OTYPER>::modify::h4d164db70f356318+0x1c>
;         let r = R { bits: bits };
 800140c:      	ldr	r0, [sp, #0x8]
 800140e:      	str	r0, [sp, #0x10]
;         let mut w = W { bits: bits };
 8001410:      	str	r0, [sp, #0x14]
 8001412:      	add	r1, sp, #0x10
;         f(&r, &mut w);
 8001414:      	str	r1, [sp, #0x18]
 8001416:      	add	r1, sp, #0x14
 8001418:      	str	r1, [sp, #0x1c]
 800141a:      	ldr	r0, [sp, #0x18]
 800141c:      	ldr	r1, [sp, #0x1c]
 800141e:      	bl	#-0x998
 8001422:      	b	#-0x2 <stm32f30x::gpioc::otyper::<impl stm32f30x::gpioc::OTYPER>::modify::h4d164db70f356318+0x34>
;         self.register.set(w.bits);
 8001424:      	ldr	r0, [sp, #0x14]
 8001426:      	ldr	r1, [sp, #0xc]
 8001428:      	str	r1, [sp, #0x30]
 800142a:      	str	r0, [sp, #0x34]
;         unsafe { ptr::write_volatile(self.value.get(), value) }
 800142c:      	str	r0, [sp, #0x4]
 800142e:      	mov	r0, r1
 8001430:      	bl	#0xabc
 8001434:      	ldr	r1, [sp, #0x4]
 8001436:      	bl	#0x7d4
;         self.register.set(w.bits);
 800143a:      	b	#-0x2 <stm32f30x::gpioc::otyper::<impl stm32f30x::gpioc::OTYPER>::modify::h4d164db70f356318+0x4c>
;     }
 800143c:      	add	sp, #0x38
 800143e:      	pop	{r7, pc}

08001440 <stm32f30x::gpioc::otyper::<impl stm32f30x::gpioc::OTYPER>::modify::h68e93668908750e7>:
;     pub fn modify<F>(&self, f: F)
 8001440:      	push	{r7, lr}
 8001442:      	mov	r7, sp
 8001444:      	sub	sp, #0x38
 8001446:      	str	r0, [sp, #0x20]
 8001448:      	str	r0, [sp, #0x2c]
;         unsafe { ptr::read_volatile(self.value.get()) }
 800144a:      	str	r0, [sp, #0xc]
 800144c:      	bl	#0xaa0
 8001450:      	bl	#0x794
 8001454:      	mov	r1, r0
;         let bits = self.register.get();
 8001456:      	str	r0, [sp, #0x28]
 8001458:      	str	r1, [sp, #0x8]
 800145a:      	b	#-0x2 <stm32f30x::gpioc::otyper::<impl stm32f30x::gpioc::OTYPER>::modify::h68e93668908750e7+0x1c>
;         let r = R { bits: bits };
 800145c:      	ldr	r0, [sp, #0x8]
 800145e:      	str	r0, [sp, #0x10]
;         let mut w = W { bits: bits };
 8001460:      	str	r0, [sp, #0x14]
 8001462:      	add	r1, sp, #0x10
;         f(&r, &mut w);
 8001464:      	str	r1, [sp, #0x18]
 8001466:      	add	r1, sp, #0x14
 8001468:      	str	r1, [sp, #0x1c]
 800146a:      	ldr	r0, [sp, #0x18]
 800146c:      	ldr	r1, [sp, #0x1c]
 800146e:      	bl	#-0x688
 8001472:      	b	#-0x2 <stm32f30x::gpioc::otyper::<impl stm32f30x::gpioc::OTYPER>::modify::h68e93668908750e7+0x34>
;         self.register.set(w.bits);
 8001474:      	ldr	r0, [sp, #0x14]
 8001476:      	ldr	r1, [sp, #0xc]
 8001478:      	str	r1, [sp, #0x30]
 800147a:      	str	r0, [sp, #0x34]
;         unsafe { ptr::write_volatile(self.value.get(), value) }
 800147c:      	str	r0, [sp, #0x4]
 800147e:      	mov	r0, r1
 8001480:      	bl	#0xa6c
 8001484:      	ldr	r1, [sp, #0x4]
 8001486:      	bl	#0x784
;         self.register.set(w.bits);
 800148a:      	b	#-0x2 <stm32f30x::gpioc::otyper::<impl stm32f30x::gpioc::OTYPER>::modify::h68e93668908750e7+0x4c>
;     }
 800148c:      	add	sp, #0x38
 800148e:      	pop	{r7, pc}

08001490 <stm32f30x::gpioc::otyper::<impl stm32f30x::gpioc::OTYPER>::modify::h6aba6facc4a1b4ca>:
;     pub fn modify<F>(&self, f: F)
 8001490:      	push	{r7, lr}
 8001492:      	mov	r7, sp
 8001494:      	sub	sp, #0x38
 8001496:      	str	r0, [sp, #0x20]
 8001498:      	str	r0, [sp, #0x2c]
;         unsafe { ptr::read_volatile(self.value.get()) }
 800149a:      	str	r0, [sp, #0xc]
 800149c:      	bl	#0xa50
 80014a0:      	bl	#0x744
 80014a4:      	mov	r1, r0
;         let bits = self.register.get();
 80014a6:      	str	r0, [sp, #0x28]
 80014a8:      	str	r1, [sp, #0x8]
 80014aa:      	b	#-0x2 <stm32f30x::gpioc::otyper::<impl stm32f30x::gpioc::OTYPER>::modify::h6aba6facc4a1b4ca+0x1c>
;         let r = R { bits: bits };
 80014ac:      	ldr	r0, [sp, #0x8]
 80014ae:      	str	r0, [sp, #0x10]
;         let mut w = W { bits: bits };
 80014b0:      	str	r0, [sp, #0x14]
 80014b2:      	add	r1, sp, #0x10
;         f(&r, &mut w);
 80014b4:      	str	r1, [sp, #0x18]
 80014b6:      	add	r1, sp, #0x14
 80014b8:      	str	r1, [sp, #0x1c]
 80014ba:      	ldr	r0, [sp, #0x18]
 80014bc:      	ldr	r1, [sp, #0x1c]
 80014be:      	bl	#-0xc78
 80014c2:      	b	#-0x2 <stm32f30x::gpioc::otyper::<impl stm32f30x::gpioc::OTYPER>::modify::h6aba6facc4a1b4ca+0x34>
;         self.register.set(w.bits);
 80014c4:      	ldr	r0, [sp, #0x14]
 80014c6:      	ldr	r1, [sp, #0xc]
 80014c8:      	str	r1, [sp, #0x30]
 80014ca:      	str	r0, [sp, #0x34]
;         unsafe { ptr::write_volatile(self.value.get(), value) }
 80014cc:      	str	r0, [sp, #0x4]
 80014ce:      	mov	r0, r1
 80014d0:      	bl	#0xa1c
 80014d4:      	ldr	r1, [sp, #0x4]
 80014d6:      	bl	#0x734
;         self.register.set(w.bits);
 80014da:      	b	#-0x2 <stm32f30x::gpioc::otyper::<impl stm32f30x::gpioc::OTYPER>::modify::h6aba6facc4a1b4ca+0x4c>
;     }
 80014dc:      	add	sp, #0x38
 80014de:      	pop	{r7, pc}

080014e0 <stm32f30x::gpioc::otyper::<impl stm32f30x::gpioc::OTYPER>::modify::h780c41ae7eed5763>:
;     pub fn modify<F>(&self, f: F)
 80014e0:      	push	{r7, lr}
 80014e2:      	mov	r7, sp
 80014e4:      	sub	sp, #0x38
 80014e6:      	str	r0, [sp, #0x20]
 80014e8:      	str	r0, [sp, #0x2c]
;         unsafe { ptr::read_volatile(self.value.get()) }
 80014ea:      	str	r0, [sp, #0xc]
 80014ec:      	bl	#0xa00
 80014f0:      	bl	#0x6f4
 80014f4:      	mov	r1, r0
;         let bits = self.register.get();
 80014f6:      	str	r0, [sp, #0x28]
 80014f8:      	str	r1, [sp, #0x8]
 80014fa:      	b	#-0x2 <stm32f30x::gpioc::otyper::<impl stm32f30x::gpioc::OTYPER>::modify::h780c41ae7eed5763+0x1c>
;         let r = R { bits: bits };
 80014fc:      	ldr	r0, [sp, #0x8]
 80014fe:      	str	r0, [sp, #0x10]
;         let mut w = W { bits: bits };
 8001500:      	str	r0, [sp, #0x14]
 8001502:      	add	r1, sp, #0x10
;         f(&r, &mut w);
 8001504:      	str	r1, [sp, #0x18]
 8001506:      	add	r1, sp, #0x14
 8001508:      	str	r1, [sp, #0x1c]
 800150a:      	ldr	r0, [sp, #0x18]
 800150c:      	ldr	r1, [sp, #0x1c]
 800150e:      	bl	#-0x6b0
 8001512:      	b	#-0x2 <stm32f30x::gpioc::otyper::<impl stm32f30x::gpioc::OTYPER>::modify::h780c41ae7eed5763+0x34>
;         self.register.set(w.bits);
 8001514:      	ldr	r0, [sp, #0x14]
 8001516:      	ldr	r1, [sp, #0xc]
 8001518:      	str	r1, [sp, #0x30]
 800151a:      	str	r0, [sp, #0x34]
;         unsafe { ptr::write_volatile(self.value.get(), value) }
 800151c:      	str	r0, [sp, #0x4]
 800151e:      	mov	r0, r1
 8001520:      	bl	#0x9cc
 8001524:      	ldr	r1, [sp, #0x4]
 8001526:      	bl	#0x6e4
;         self.register.set(w.bits);
 800152a:      	b	#-0x2 <stm32f30x::gpioc::otyper::<impl stm32f30x::gpioc::OTYPER>::modify::h780c41ae7eed5763+0x4c>
;     }
 800152c:      	add	sp, #0x38
 800152e:      	pop	{r7, pc}

08001530 <stm32f30x::gpioc::otyper::<impl stm32f30x::gpioc::OTYPER>::modify::h7ded4bbba8fdc3c3>:
;     pub fn modify<F>(&self, f: F)
 8001530:      	push	{r7, lr}
 8001532:      	mov	r7, sp
 8001534:      	sub	sp, #0x38
 8001536:      	str	r0, [sp, #0x20]
 8001538:      	str	r0, [sp, #0x2c]
;         unsafe { ptr::read_volatile(self.value.get()) }
 800153a:      	str	r0, [sp, #0xc]
 800153c:      	bl	#0x9b0
 8001540:      	bl	#0x6a4
 8001544:      	mov	r1, r0
;         let bits = self.register.get();
 8001546:      	str	r0, [sp, #0x28]
 8001548:      	str	r1, [sp, #0x8]
 800154a:      	b	#-0x2 <stm32f30x::gpioc::otyper::<impl stm32f30x::gpioc::OTYPER>::modify::h7ded4bbba8fdc3c3+0x1c>
;         let r = R { bits: bits };
 800154c:      	ldr	r0, [sp, #0x8]
 800154e:      	str	r0, [sp, #0x10]
;         let mut w = W { bits: bits };
 8001550:      	str	r0, [sp, #0x14]
 8001552:      	add	r1, sp, #0x10
;         f(&r, &mut w);
 8001554:      	str	r1, [sp, #0x18]
 8001556:      	add	r1, sp, #0x14
 8001558:      	str	r1, [sp, #0x1c]
 800155a:      	ldr	r0, [sp, #0x18]
 800155c:      	ldr	r1, [sp, #0x1c]
 800155e:      	bl	#-0xe38
 8001562:      	b	#-0x2 <stm32f30x::gpioc::otyper::<impl stm32f30x::gpioc::OTYPER>::modify::h7ded4bbba8fdc3c3+0x34>
;         self.register.set(w.bits);
 8001564:      	ldr	r0, [sp, #0x14]
 8001566:      	ldr	r1, [sp, #0xc]
 8001568:      	str	r1, [sp, #0x30]
 800156a:      	str	r0, [sp, #0x34]
;         unsafe { ptr::write_volatile(self.value.get(), value) }
 800156c:      	str	r0, [sp, #0x4]
 800156e:      	mov	r0, r1
 8001570:      	bl	#0x97c
 8001574:      	ldr	r1, [sp, #0x4]
 8001576:      	bl	#0x694
;         self.register.set(w.bits);
 800157a:      	b	#-0x2 <stm32f30x::gpioc::otyper::<impl stm32f30x::gpioc::OTYPER>::modify::h7ded4bbba8fdc3c3+0x4c>
;     }
 800157c:      	add	sp, #0x38
 800157e:      	pop	{r7, pc}

08001580 <stm32f30x::gpioc::otyper::<impl stm32f30x::gpioc::OTYPER>::modify::hca0c15fac3decf70>:
;     pub fn modify<F>(&self, f: F)
 8001580:      	push	{r7, lr}
 8001582:      	mov	r7, sp
 8001584:      	sub	sp, #0x38
 8001586:      	str	r0, [sp, #0x20]
 8001588:      	str	r0, [sp, #0x2c]
;         unsafe { ptr::read_volatile(self.value.get()) }
 800158a:      	str	r0, [sp, #0xc]
 800158c:      	bl	#0x960
 8001590:      	bl	#0x654
 8001594:      	mov	r1, r0
;         let bits = self.register.get();
 8001596:      	str	r0, [sp, #0x28]
 8001598:      	str	r1, [sp, #0x8]
 800159a:      	b	#-0x2 <stm32f30x::gpioc::otyper::<impl stm32f30x::gpioc::OTYPER>::modify::hca0c15fac3decf70+0x1c>
;         let r = R { bits: bits };
 800159c:      	ldr	r0, [sp, #0x8]
 800159e:      	str	r0, [sp, #0x10]
;         let mut w = W { bits: bits };
 80015a0:      	str	r0, [sp, #0x14]
 80015a2:      	add	r1, sp, #0x10
;         f(&r, &mut w);
 80015a4:      	str	r1, [sp, #0x18]
 80015a6:      	add	r1, sp, #0x14
 80015a8:      	str	r1, [sp, #0x1c]
 80015aa:      	ldr	r0, [sp, #0x18]
 80015ac:      	ldr	r1, [sp, #0x1c]
 80015ae:      	bl	#-0x990
 80015b2:      	b	#-0x2 <stm32f30x::gpioc::otyper::<impl stm32f30x::gpioc::OTYPER>::modify::hca0c15fac3decf70+0x34>
;         self.register.set(w.bits);
 80015b4:      	ldr	r0, [sp, #0x14]
 80015b6:      	ldr	r1, [sp, #0xc]
 80015b8:      	str	r1, [sp, #0x30]
 80015ba:      	str	r0, [sp, #0x34]
;         unsafe { ptr::write_volatile(self.value.get(), value) }
 80015bc:      	str	r0, [sp, #0x4]
 80015be:      	mov	r0, r1
 80015c0:      	bl	#0x92c
 80015c4:      	ldr	r1, [sp, #0x4]
 80015c6:      	bl	#0x644
;         self.register.set(w.bits);
 80015ca:      	b	#-0x2 <stm32f30x::gpioc::otyper::<impl stm32f30x::gpioc::OTYPER>::modify::hca0c15fac3decf70+0x4c>
;     }
 80015cc:      	add	sp, #0x38
 80015ce:      	pop	{r7, pc}

080015d0 <stm32f30x::gpioc::otyper::<impl stm32f30x::gpioc::OTYPER>::modify::hd616f52f183e0cd8>:
;     pub fn modify<F>(&self, f: F)
 80015d0:      	push	{r7, lr}
 80015d2:      	mov	r7, sp
 80015d4:      	sub	sp, #0x38
 80015d6:      	str	r0, [sp, #0x20]
 80015d8:      	str	r0, [sp, #0x2c]
;         unsafe { ptr::read_volatile(self.value.get()) }
 80015da:      	str	r0, [sp, #0xc]
 80015dc:      	bl	#0x910
 80015e0:      	bl	#0x604
 80015e4:      	mov	r1, r0
;         let bits = self.register.get();
 80015e6:      	str	r0, [sp, #0x28]
 80015e8:      	str	r1, [sp, #0x8]
 80015ea:      	b	#-0x2 <stm32f30x::gpioc::otyper::<impl stm32f30x::gpioc::OTYPER>::modify::hd616f52f183e0cd8+0x1c>
;         let r = R { bits: bits };
 80015ec:      	ldr	r0, [sp, #0x8]
 80015ee:      	str	r0, [sp, #0x10]
;         let mut w = W { bits: bits };
 80015f0:      	str	r0, [sp, #0x14]
 80015f2:      	add	r1, sp, #0x10
;         f(&r, &mut w);
 80015f4:      	str	r1, [sp, #0x18]
 80015f6:      	add	r1, sp, #0x14
 80015f8:      	str	r1, [sp, #0x1c]
 80015fa:      	ldr	r0, [sp, #0x18]
 80015fc:      	ldr	r1, [sp, #0x1c]
 80015fe:      	bl	#-0xb00
 8001602:      	b	#-0x2 <stm32f30x::gpioc::otyper::<impl stm32f30x::gpioc::OTYPER>::modify::hd616f52f183e0cd8+0x34>
;         self.register.set(w.bits);
 8001604:      	ldr	r0, [sp, #0x14]
 8001606:      	ldr	r1, [sp, #0xc]
 8001608:      	str	r1, [sp, #0x30]
 800160a:      	str	r0, [sp, #0x34]
;         unsafe { ptr::write_volatile(self.value.get(), value) }
 800160c:      	str	r0, [sp, #0x4]
 800160e:      	mov	r0, r1
 8001610:      	bl	#0x8dc
 8001614:      	ldr	r1, [sp, #0x4]
 8001616:      	bl	#0x5f4
;         self.register.set(w.bits);
 800161a:      	b	#-0x2 <stm32f30x::gpioc::otyper::<impl stm32f30x::gpioc::OTYPER>::modify::hd616f52f183e0cd8+0x4c>
;     }
 800161c:      	add	sp, #0x38
 800161e:      	pop	{r7, pc}

08001620 <_ZN13stm32f30x_hal4gpio5gpioe75_$LT$impl$u20$stm32f30x_hal..gpio..GpioExt$u20$for$u20$stm32f30x..GPIOE$GT$5split28_$u7b$$u7b$closure$u7d$$u7d$17h5fce422f6dfc420cE>:
;                     ahb.enr().modify(|_, w| w.$iopxenr().enabled());
 8001620:      	push	{r7, lr}
 8001622:      	mov	r7, sp
 8001624:      	sub	sp, #0x18
 8001626:      	str	r0, [sp, #0x10]
 8001628:      	str	r1, [sp, #0x14]
 800162a:      	mov	r0, r1
 800162c:      	bl	#0x232
 8001630:      	str	r0, [sp, #0x8]
 8001632:      	b	#-0x2 <_ZN13stm32f30x_hal4gpio5gpioe75_$LT$impl$u20$stm32f30x_hal..gpio..GpioExt$u20$for$u20$stm32f30x..GPIOE$GT$5split28_$u7b$$u7b$closure$u7d$$u7d$17h5fce422f6dfc420cE+0x14>
 8001634:      	ldr	r0, [sp, #0x8]
 8001636:      	bl	#0x284
 800163a:      	str	r0, [sp, #0x4]
 800163c:      	b	#-0x2 <_ZN13stm32f30x_hal4gpio5gpioe75_$LT$impl$u20$stm32f30x_hal..gpio..GpioExt$u20$for$u20$stm32f30x..GPIOE$GT$5split28_$u7b$$u7b$closure$u7d$$u7d$17h5fce422f6dfc420cE+0x1e>
 800163e:      	ldr	r0, [sp, #0x4]
 8001640:      	add	sp, #0x18
 8001642:      	pop	{r7, pc}

08001644 <_ZN13stm32f30x_hal4gpio5gpioe75_$LT$impl$u20$stm32f30x_hal..gpio..GpioExt$u20$for$u20$stm32f30x..GPIOE$GT$5split28_$u7b$$u7b$closure$u7d$$u7d$17h4b843f15964c2e8bE>:
;                     ahb.rstr().modify(|_, w| w.$iopxrst().set_bit());
 8001644:      	push	{r7, lr}
 8001646:      	mov	r7, sp
 8001648:      	sub	sp, #0x18
 800164a:      	str	r0, [sp, #0x10]
 800164c:      	str	r1, [sp, #0x14]
 800164e:      	mov	r0, r1
 8001650:      	bl	#0x2be
 8001654:      	str	r0, [sp, #0x8]
 8001656:      	b	#-0x2 <_ZN13stm32f30x_hal4gpio5gpioe75_$LT$impl$u20$stm32f30x_hal..gpio..GpioExt$u20$for$u20$stm32f30x..GPIOE$GT$5split28_$u7b$$u7b$closure$u7d$$u7d$17h4b843f15964c2e8bE+0x14>
 8001658:      	ldr	r0, [sp, #0x8]
 800165a:      	bl	#0x314
 800165e:      	str	r0, [sp, #0x4]
 8001660:      	b	#-0x2 <_ZN13stm32f30x_hal4gpio5gpioe75_$LT$impl$u20$stm32f30x_hal..gpio..GpioExt$u20$for$u20$stm32f30x..GPIOE$GT$5split28_$u7b$$u7b$closure$u7d$$u7d$17h4b843f15964c2e8bE+0x1e>
 8001662:      	ldr	r0, [sp, #0x4]
 8001664:      	add	sp, #0x18
 8001666:      	pop	{r7, pc}

08001668 <_ZN13stm32f30x_hal4gpio5gpioe75_$LT$impl$u20$stm32f30x_hal..gpio..GpioExt$u20$for$u20$stm32f30x..GPIOE$GT$5split28_$u7b$$u7b$closure$u7d$$u7d$17hdaa40368e3bc0cedE>:
;                     ahb.rstr().modify(|_, w| w.$iopxrst().clear_bit());
 8001668:      	push	{r7, lr}
 800166a:      	mov	r7, sp
 800166c:      	sub	sp, #0x18
 800166e:      	str	r0, [sp, #0x10]
 8001670:      	str	r1, [sp, #0x14]
 8001672:      	mov	r0, r1
 8001674:      	bl	#0x29a
 8001678:      	str	r0, [sp, #0x8]
 800167a:      	b	#-0x2 <_ZN13stm32f30x_hal4gpio5gpioe75_$LT$impl$u20$stm32f30x_hal..gpio..GpioExt$u20$for$u20$stm32f30x..GPIOE$GT$5split28_$u7b$$u7b$closure$u7d$$u7d$17hdaa40368e3bc0cedE+0x14>
 800167c:      	ldr	r0, [sp, #0x8]
 800167e:      	bl	#0x308
 8001682:      	str	r0, [sp, #0x4]
 8001684:      	b	#-0x2 <_ZN13stm32f30x_hal4gpio5gpioe75_$LT$impl$u20$stm32f30x_hal..gpio..GpioExt$u20$for$u20$stm32f30x..GPIOE$GT$5split28_$u7b$$u7b$closure$u7d$$u7d$17hdaa40368e3bc0cedE+0x1e>
 8001686:      	ldr	r0, [sp, #0x4]
 8001688:      	add	sp, #0x18
 800168a:      	pop	{r7, pc}

0800168c <stm32f30x_hal::gpio::gpioe::MODER::moder::hc95dfd312af21e24>:
;                 pub(crate) fn moder(&mut self) -> &$gpioy::MODER {
 800168c:      	push	{r7, lr}
 800168e:      	mov	r7, sp
 8001690:      	sub	sp, #0x8
 8001692:      	str	r0, [sp, #0x4]
;                     unsafe { &(*$GPIOX::ptr()).moder }
 8001694:      	bl	#0x286
 8001698:      	str	r0, [sp]
 800169a:      	b	#-0x2 <stm32f30x_hal::gpio::gpioe::MODER::moder::hc95dfd312af21e24+0x10>
;                 }
 800169c:      	ldr	r0, [sp]
 800169e:      	add	sp, #0x8
 80016a0:      	pop	{r7, pc}

080016a2 <stm32f30x_hal::gpio::gpioe::OTYPER::otyper::ha1a95f4491b3227f>:
;                 pub(crate) fn otyper(&mut self) -> &$gpioy::OTYPER {
 80016a2:      	push	{r7, lr}
 80016a4:      	mov	r7, sp
 80016a6:      	sub	sp, #0x8
 80016a8:      	str	r0, [sp, #0x4]
;                     unsafe { &(*$GPIOX::ptr()).otyper }
 80016aa:      	bl	#0x270
 80016ae:      	str	r0, [sp]
 80016b0:      	b	#-0x2 <stm32f30x_hal::gpio::gpioe::OTYPER::otyper::ha1a95f4491b3227f+0x10>
 80016b2:      	ldr	r0, [sp]
 80016b4:      	adds	r0, #0x4
;                 }
 80016b6:      	add	sp, #0x8
 80016b8:      	pop	{r7, pc}

080016ba <stm32f30x_hal::rcc::AHB::enr::hfa84bf88a72aee00>:
;     pub(crate) fn enr(&mut self) -> &rcc::AHBENR {
 80016ba:      	push	{r7, lr}
 80016bc:      	mov	r7, sp
 80016be:      	sub	sp, #0x8
 80016c0:      	str	r0, [sp, #0x4]
;         unsafe { &(*RCC::ptr()).ahbenr }
 80016c2:      	bl	#0x262
 80016c6:      	str	r0, [sp]
 80016c8:      	b	#-0x2 <stm32f30x_hal::rcc::AHB::enr::hfa84bf88a72aee00+0x10>
 80016ca:      	ldr	r0, [sp]
 80016cc:      	adds	r0, #0x14
;     }
 80016ce:      	add	sp, #0x8
 80016d0:      	pop	{r7, pc}

080016d2 <stm32f30x_hal::rcc::AHB::rstr::h41ab95c263b30cda>:
;     pub(crate) fn rstr(&mut self) -> &rcc::AHBRSTR {
 80016d2:      	push	{r7, lr}
 80016d4:      	mov	r7, sp
 80016d6:      	sub	sp, #0x8
 80016d8:      	str	r0, [sp, #0x4]
;         unsafe { &(*RCC::ptr()).ahbrstr }
 80016da:      	bl	#0x24a
 80016de:      	str	r0, [sp]
 80016e0:      	b	#-0x2 <stm32f30x_hal::rcc::AHB::rstr::h41ab95c263b30cda+0x10>
 80016e2:      	ldr	r0, [sp]
 80016e4:      	adds	r0, #0x28
;     }
 80016e6:      	add	sp, #0x8
 80016e8:      	pop	{r7, pc}

080016ea <stm32f30x::rcc::ahbenr::<impl stm32f30x::rcc::AHBENR>::modify::h3be2d8df664959fc>:
;     pub fn modify<F>(&self, f: F)
 80016ea:      	push	{r7, lr}
 80016ec:      	mov	r7, sp
 80016ee:      	sub	sp, #0x38
 80016f0:      	str	r0, [sp, #0x20]
 80016f2:      	str	r0, [sp, #0x2c]
;         unsafe { ptr::read_volatile(self.value.get()) }
 80016f4:      	str	r0, [sp, #0xc]
 80016f6:      	bl	#0x7f6
 80016fa:      	bl	#0x4ea
 80016fe:      	mov	r1, r0
;         let bits = self.register.get();
 8001700:      	str	r0, [sp, #0x28]
 8001702:      	str	r1, [sp, #0x8]
 8001704:      	b	#-0x2 <stm32f30x::rcc::ahbenr::<impl stm32f30x::rcc::AHBENR>::modify::h3be2d8df664959fc+0x1c>
;         let r = R { bits: bits };
 8001706:      	ldr	r0, [sp, #0x8]
 8001708:      	str	r0, [sp, #0x10]
;         let mut w = W { bits: bits };
 800170a:      	str	r0, [sp, #0x14]
 800170c:      	add	r1, sp, #0x10
;         f(&r, &mut w);
 800170e:      	str	r1, [sp, #0x18]
 8001710:      	add	r1, sp, #0x14
 8001712:      	str	r1, [sp, #0x1c]
 8001714:      	ldr	r0, [sp, #0x18]
 8001716:      	ldr	r1, [sp, #0x1c]
 8001718:      	bl	#-0xfc
 800171c:      	b	#-0x2 <stm32f30x::rcc::ahbenr::<impl stm32f30x::rcc::AHBENR>::modify::h3be2d8df664959fc+0x34>
;         self.register.set(w.bits);
 800171e:      	ldr	r0, [sp, #0x14]
 8001720:      	ldr	r1, [sp, #0xc]
 8001722:      	str	r1, [sp, #0x30]
 8001724:      	str	r0, [sp, #0x34]
;         unsafe { ptr::write_volatile(self.value.get(), value) }
 8001726:      	str	r0, [sp, #0x4]
 8001728:      	mov	r0, r1
 800172a:      	bl	#0x7c2
 800172e:      	ldr	r1, [sp, #0x4]
 8001730:      	bl	#0x4da
;         self.register.set(w.bits);
 8001734:      	b	#-0x2 <stm32f30x::rcc::ahbenr::<impl stm32f30x::rcc::AHBENR>::modify::h3be2d8df664959fc+0x4c>
;     }
 8001736:      	add	sp, #0x38
 8001738:      	pop	{r7, pc}

0800173a <stm32f30x::rcc::ahbrstr::<impl stm32f30x::rcc::AHBRSTR>::modify::h7f90e7662ae1b897>:
;     pub fn modify<F>(&self, f: F)
 800173a:      	push	{r7, lr}
 800173c:      	mov	r7, sp
 800173e:      	sub	sp, #0x38
 8001740:      	str	r0, [sp, #0x20]
 8001742:      	str	r0, [sp, #0x2c]
;         unsafe { ptr::read_volatile(self.value.get()) }
 8001744:      	str	r0, [sp, #0xc]
 8001746:      	bl	#0x7a6
 800174a:      	bl	#0x49a
 800174e:      	mov	r1, r0
;         let bits = self.register.get();
 8001750:      	str	r0, [sp, #0x28]
 8001752:      	str	r1, [sp, #0x8]
 8001754:      	b	#-0x2 <stm32f30x::rcc::ahbrstr::<impl stm32f30x::rcc::AHBRSTR>::modify::h7f90e7662ae1b897+0x1c>
;         let r = R { bits: bits };
 8001756:      	ldr	r0, [sp, #0x8]
 8001758:      	str	r0, [sp, #0x10]
;         let mut w = W { bits: bits };
 800175a:      	str	r0, [sp, #0x14]
 800175c:      	add	r1, sp, #0x10
;         f(&r, &mut w);
 800175e:      	str	r1, [sp, #0x18]
 8001760:      	add	r1, sp, #0x14
 8001762:      	str	r1, [sp, #0x1c]
 8001764:      	ldr	r0, [sp, #0x18]
 8001766:      	ldr	r1, [sp, #0x1c]
 8001768:      	bl	#-0x104
 800176c:      	b	#-0x2 <stm32f30x::rcc::ahbrstr::<impl stm32f30x::rcc::AHBRSTR>::modify::h7f90e7662ae1b897+0x34>
;         self.register.set(w.bits);
 800176e:      	ldr	r0, [sp, #0x14]
 8001770:      	ldr	r1, [sp, #0xc]
 8001772:      	str	r1, [sp, #0x30]
 8001774:      	str	r0, [sp, #0x34]
;         unsafe { ptr::write_volatile(self.value.get(), value) }
 8001776:      	str	r0, [sp, #0x4]
 8001778:      	mov	r0, r1
 800177a:      	bl	#0x772
 800177e:      	ldr	r1, [sp, #0x4]
 8001780:      	bl	#0x48a
;         self.register.set(w.bits);
 8001784:      	b	#-0x2 <stm32f30x::rcc::ahbrstr::<impl stm32f30x::rcc::AHBRSTR>::modify::h7f90e7662ae1b897+0x4c>
;     }
 8001786:      	add	sp, #0x38
 8001788:      	pop	{r7, pc}

0800178a <stm32f30x::rcc::ahbrstr::<impl stm32f30x::rcc::AHBRSTR>::modify::hecf308319c281529>:
;     pub fn modify<F>(&self, f: F)
 800178a:      	push	{r7, lr}
 800178c:      	mov	r7, sp
 800178e:      	sub	sp, #0x38
 8001790:      	str	r0, [sp, #0x20]
 8001792:      	str	r0, [sp, #0x2c]
;         unsafe { ptr::read_volatile(self.value.get()) }
 8001794:      	str	r0, [sp, #0xc]
 8001796:      	bl	#0x756
 800179a:      	bl	#0x44a
 800179e:      	mov	r1, r0
;         let bits = self.register.get();
 80017a0:      	str	r0, [sp, #0x28]
 80017a2:      	str	r1, [sp, #0x8]
 80017a4:      	b	#-0x2 <stm32f30x::rcc::ahbrstr::<impl stm32f30x::rcc::AHBRSTR>::modify::hecf308319c281529+0x1c>
;         let r = R { bits: bits };
 80017a6:      	ldr	r0, [sp, #0x8]
 80017a8:      	str	r0, [sp, #0x10]
;         let mut w = W { bits: bits };
 80017aa:      	str	r0, [sp, #0x14]
 80017ac:      	add	r1, sp, #0x10
;         f(&r, &mut w);
 80017ae:      	str	r1, [sp, #0x18]
 80017b0:      	add	r1, sp, #0x14
 80017b2:      	str	r1, [sp, #0x1c]
 80017b4:      	ldr	r0, [sp, #0x18]
 80017b6:      	ldr	r1, [sp, #0x1c]
 80017b8:      	bl	#-0x178
 80017bc:      	b	#-0x2 <stm32f30x::rcc::ahbrstr::<impl stm32f30x::rcc::AHBRSTR>::modify::hecf308319c281529+0x34>
;         self.register.set(w.bits);
 80017be:      	ldr	r0, [sp, #0x14]
 80017c0:      	ldr	r1, [sp, #0xc]
 80017c2:      	str	r1, [sp, #0x30]
 80017c4:      	str	r0, [sp, #0x34]
;         unsafe { ptr::write_volatile(self.value.get(), value) }
 80017c6:      	str	r0, [sp, #0x4]
 80017c8:      	mov	r0, r1
 80017ca:      	bl	#0x722
 80017ce:      	ldr	r1, [sp, #0x4]
 80017d0:      	bl	#0x43a
;         self.register.set(w.bits);
 80017d4:      	b	#-0x2 <stm32f30x::rcc::ahbrstr::<impl stm32f30x::rcc::AHBRSTR>::modify::hecf308319c281529+0x4c>
;     }
 80017d6:      	add	sp, #0x38
 80017d8:      	pop	{r7, pc}

080017da <<stm32f30x::RCC as stm32f30x_hal::rcc::RccExt>::constrain::hf1208146ed05d9c9>:
;     fn constrain(self) -> Rcc {
 80017da:      	push	{r7, lr}
 80017dc:      	mov	r7, sp
 80017de:      	sub	sp, #0x44
 80017e0:      	movs	r1, #0x0
;                 hclk: None,
 80017e2:      	str	r1, [sp, #0x20]
;                 pclk1: None,
 80017e4:      	str	r1, [sp, #0x28]
;                 pclk2: None,
 80017e6:      	str	r1, [sp, #0x30]
;                 sysclk: None,
 80017e8:      	str	r1, [sp, #0x38]
;             cfgr: CFGR {
 80017ea:      	ldr	r1, [sp, #0x20]
 80017ec:      	ldr	r2, [sp, #0x24]
 80017ee:      	str	r1, [sp]
 80017f0:      	str	r2, [sp, #0x4]
 80017f2:      	ldr	r1, [sp, #0x28]
 80017f4:      	ldr	r2, [sp, #0x2c]
 80017f6:      	str	r1, [sp, #0x8]
 80017f8:      	str	r2, [sp, #0xc]
 80017fa:      	ldr	r1, [sp, #0x30]
 80017fc:      	ldr	r2, [sp, #0x34]
 80017fe:      	str	r1, [sp, #0x10]
 8001800:      	str	r2, [sp, #0x14]
 8001802:      	ldr	r1, [sp, #0x38]
 8001804:      	ldr	r2, [sp, #0x3c]
 8001806:      	str	r1, [sp, #0x18]
 8001808:      	str	r2, [sp, #0x1c]
 800180a:      	mov	r1, sp
;         Rcc {
 800180c:      	ldm.w	r1!, {r2, r3, r12, lr}
 8001810:      	stm.w	r0!, {r2, r3, r12, lr}
 8001814:      	ldm.w	r1, {r2, r3, r12, lr}
 8001818:      	stm.w	r0, {r2, r3, r12, lr}
;     }
 800181c:      	add	sp, #0x44
 800181e:      	pop	{r7, pc}

08001820 <_ZN13stm32f30x_hal4gpio5gpioe75_$LT$impl$u20$stm32f30x_hal..gpio..GpioExt$u20$for$u20$stm32f30x..GPIOE$GT$5split17h58681f2215ffdb02E>:
;                 fn split(self, ahb: &mut AHB) -> Parts {
 8001820:      	push	{r7, lr}
 8001822:      	mov	r7, sp
 8001824:      	sub	sp, #0x28
 8001826:      	str	r0, [sp, #0x24]
;                     ahb.enr().modify(|_, w| w.$iopxenr().enabled());
 8001828:      	str	r0, [sp, #0xc]
 800182a:      	bl	#-0x174
 800182e:      	str	r0, [sp, #0x8]
 8001830:      	b	#-0x2 <_ZN13stm32f30x_hal4gpio5gpioe75_$LT$impl$u20$stm32f30x_hal..gpio..GpioExt$u20$for$u20$stm32f30x..GPIOE$GT$5split17h58681f2215ffdb02E+0x12>
 8001832:      	ldr	r0, [sp, #0x8]
 8001834:      	bl	#-0x14e
 8001838:      	b	#-0x2 <_ZN13stm32f30x_hal4gpio5gpioe75_$LT$impl$u20$stm32f30x_hal..gpio..GpioExt$u20$for$u20$stm32f30x..GPIOE$GT$5split17h58681f2215ffdb02E+0x1a>
;                     ahb.rstr().modify(|_, w| w.$iopxrst().set_bit());
 800183a:      	ldr	r0, [sp, #0xc]
 800183c:      	bl	#-0x16e
 8001840:      	str	r0, [sp, #0x4]
 8001842:      	b	#-0x2 <_ZN13stm32f30x_hal4gpio5gpioe75_$LT$impl$u20$stm32f30x_hal..gpio..GpioExt$u20$for$u20$stm32f30x..GPIOE$GT$5split17h58681f2215ffdb02E+0x24>
 8001844:      	ldr	r0, [sp, #0x4]
 8001846:      	bl	#-0xc0
 800184a:      	b	#-0x2 <_ZN13stm32f30x_hal4gpio5gpioe75_$LT$impl$u20$stm32f30x_hal..gpio..GpioExt$u20$for$u20$stm32f30x..GPIOE$GT$5split17h58681f2215ffdb02E+0x2c>
;                     ahb.rstr().modify(|_, w| w.$iopxrst().clear_bit());
 800184c:      	ldr	r0, [sp, #0xc]
 800184e:      	bl	#-0x180
 8001852:      	str	r0, [sp]
 8001854:      	b	#-0x2 <_ZN13stm32f30x_hal4gpio5gpioe75_$LT$impl$u20$stm32f30x_hal..gpio..GpioExt$u20$for$u20$stm32f30x..GPIOE$GT$5split17h58681f2215ffdb02E+0x36>
 8001856:      	ldr	r0, [sp]
 8001858:      	bl	#-0x122
 800185c:      	b	#-0x2 <_ZN13stm32f30x_hal4gpio5gpioe75_$LT$impl$u20$stm32f30x_hal..gpio..GpioExt$u20$for$u20$stm32f30x..GPIOE$GT$5split17h58681f2215ffdb02E+0x3e>
;                 }
 800185e:      	add	sp, #0x28
 8001860:      	pop	{r7, pc}

08001862 <stm32f30x::rcc::ahbenr::W::iopeen::h9e375d0e3d7048b0>:
;     pub fn iopeen(&mut self) -> _IOPEENW {
 8001862:      	sub	sp, #0x8
 8001864:      	str	r0, [sp, #0x4]
;         _IOPEENW { w: self }
 8001866:      	str	r0, [sp]
;     }
 8001868:      	ldr	r0, [sp]
 800186a:      	add	sp, #0x8
 800186c:      	bx	lr

0800186e <stm32f30x::rcc::ahbenr::DMAENW::_bits::hd2229b80f01d0a2d>:
;     pub fn _bits(&self) -> bool {
 800186e:      	sub	sp, #0x8
 8001870:      	str	r0, [sp, #0x4]
;             DMAENW::DISABLED => false,
 8001872:      	ldrb	r0, [r0]
 8001874:      	lsls	r1, r0, #0x1f
 8001876:      	cmp	r1, #0x0
 8001878:      	beq	#0xa <stm32f30x::rcc::ahbenr::DMAENW::_bits::hd2229b80f01d0a2d+0x18>
 800187a:      	b	#-0x2 <stm32f30x::rcc::ahbenr::DMAENW::_bits::hd2229b80f01d0a2d+0xe>
 800187c:      	movs	r0, #0x1
;             DMAENW::ENABLED => true,
 800187e:      	strb.w	r0, [sp, #0x3]
;         match *self {
 8001882:      	b	#0x8 <stm32f30x::rcc::ahbenr::DMAENW::_bits::hd2229b80f01d0a2d+0x20>
 8001884:      	trap
 8001886:      	movs	r0, #0x0
;             DMAENW::DISABLED => false,
 8001888:      	strb.w	r0, [sp, #0x3]
;         match *self {
 800188c:      	b	#-0x2 <stm32f30x::rcc::ahbenr::DMAENW::_bits::hd2229b80f01d0a2d+0x20>
;     }
 800188e:      	ldrb.w	r0, [sp, #0x3]
 8001892:      	add	sp, #0x8
 8001894:      	bx	lr

08001896 <stm32f30x::rcc::ahbenr::_IOPEENW::bit::hf372aade43c719dc>:
;     pub fn bit(self, value: bool) -> &'a mut W {
 8001896:      	sub	sp, #0x10
 8001898:      	mov	r2, r1
 800189a:      	str	r0, [sp, #0x8]
 800189c:      	strb.w	r1, [sp, #0xf]
;         self.w.bits &= !((MASK as u32) << OFFSET);
 80018a0:      	ldr	r3, [r0]
 80018a2:      	bic	r3, r3, #0x200000
 80018a6:      	str	r3, [r0]
;         self.w.bits |= ((value & MASK) as u32) << OFFSET;
 80018a8:      	lsls	r1, r1, #0x15
 80018aa:      	str	r0, [sp, #0x4]
 80018ac:      	str	r1, [sp]
 80018ae:      	b	#-0x2 <stm32f30x::rcc::ahbenr::_IOPEENW::bit::hf372aade43c719dc+0x1a>
 80018b0:      	ldr	r0, [sp, #0x4]
 80018b2:      	ldr	r1, [r0]
 80018b4:      	ldr	r2, [sp]
 80018b6:      	orrs	r1, r2
 80018b8:      	str	r1, [r0]
;     }
 80018ba:      	add	sp, #0x10
 80018bc:      	bx	lr

080018be <stm32f30x::rcc::ahbenr::_IOPEENW::enabled::h1f55045a47dbcdc0>:
;     pub fn enabled(self) -> &'a mut W {
 80018be:      	push	{r7, lr}
 80018c0:      	mov	r7, sp
 80018c2:      	sub	sp, #0x10
 80018c4:      	str	r0, [sp, #0xc]
 80018c6:      	movs	r1, #0x1
;         self.variant(DMAENW::ENABLED)
 80018c8:      	strb	r1, [r7, #-5]
 80018cc:      	ldrb	r1, [r7, #-5]
 80018d0:      	bl	#0xa
 80018d4:      	str	r0, [sp, #0x4]
 80018d6:      	b	#-0x2 <stm32f30x::rcc::ahbenr::_IOPEENW::enabled::h1f55045a47dbcdc0+0x1a>
;     }
 80018d8:      	ldr	r0, [sp, #0x4]
 80018da:      	add	sp, #0x10
 80018dc:      	pop	{r7, pc}

080018de <stm32f30x::rcc::ahbenr::_IOPEENW::variant::hfaad3acae2089268>:
;     pub fn variant(self, variant: IOPEENW) -> &'a mut W {
 80018de:      	push	{r7, lr}
 80018e0:      	mov	r7, sp
 80018e2:      	sub	sp, #0x18
 80018e4:      	mov	r2, r1
 80018e6:      	strb	r1, [r7, #-5]
 80018ea:      	str	r0, [sp, #0x14]
 80018ec:      	subs	r1, r7, #0x5
;             self.bit(variant._bits())
 80018ee:      	str	r0, [sp, #0xc]
 80018f0:      	mov	r0, r1
 80018f2:      	str	r2, [sp, #0x8]
 80018f4:      	bl	#-0x8a
 80018f8:      	str	r0, [sp, #0x4]
 80018fa:      	b	#-0x2 <stm32f30x::rcc::ahbenr::_IOPEENW::variant::hfaad3acae2089268+0x1e>
 80018fc:      	ldr	r0, [sp, #0x4]
 80018fe:      	and	r1, r0, #0x1
 8001902:      	ldr	r0, [sp, #0xc]
 8001904:      	bl	#-0x72
 8001908:      	str	r0, [sp]
 800190a:      	b	#-0x2 <stm32f30x::rcc::ahbenr::_IOPEENW::variant::hfaad3acae2089268+0x2e>
;     }
 800190c:      	ldr	r0, [sp]
 800190e:      	add	sp, #0x18
 8001910:      	pop	{r7, pc}

08001912 <stm32f30x::rcc::ahbrstr::W::ioperst::hac406b89e8987102>:
;     pub fn ioperst(&mut self) -> _IOPERSTW {
 8001912:      	sub	sp, #0x8
 8001914:      	str	r0, [sp, #0x4]
;         _IOPERSTW { w: self }
 8001916:      	str	r0, [sp]
;     }
 8001918:      	ldr	r0, [sp]
 800191a:      	add	sp, #0x8
 800191c:      	bx	lr

0800191e <stm32f30x::GPIOE::ptr::h070e696d658d1923>:
;     pub fn ptr() -> *const gpioc::RegisterBlock {
 800191e:      	movw	r0, #0x1000
 8001922:      	movt	r0, #0x4800
;     }
 8001926:      	bx	lr

08001928 <stm32f30x::RCC::ptr::h9b5060db1bb05901>:
;     pub fn ptr() -> *const rcc::RegisterBlock {
 8001928:      	movw	r0, #0x1000
 800192c:      	movt	r0, #0x4002
;     }
 8001930:      	bx	lr

08001932 <stm32f30x::Peripherals::steal::h7021775f1fbcb343>:
;     pub unsafe fn steal() -> Self {
 8001932:      	push	{r7, lr}
 8001934:      	mov	r7, sp
 8001936:      	sub	sp, #0x8
;         debug_assert!(!DEVICE_PERIPHERALS);
 8001938:      	movw	r0, #0x0
 800193c:      	movt	r0, #0x2000
 8001940:      	ldrb	r0, [r0]
 8001942:      	lsls	r0, r0, #0x1f
 8001944:      	cmp	r0, #0x0
 8001946:      	bne	#0x10 <stm32f30x::Peripherals::steal::h7021775f1fbcb343+0x28>
 8001948:      	b	#-0x2 <stm32f30x::Peripherals::steal::h7021775f1fbcb343+0x18>
;         DEVICE_PERIPHERALS = true;
 800194a:      	movw	r0, #0x0
 800194e:      	movt	r0, #0x2000
 8001952:      	movs	r1, #0x1
 8001954:      	strb	r1, [r0]
;     }
 8001956:      	add	sp, #0x8
 8001958:      	pop	{r7, pc}
;         debug_assert!(!DEVICE_PERIPHERALS);
 800195a:      	movw	r0, #0x3c03
 800195e:      	movt	r0, #0x800
 8001962:      	movw	r2, #0x3c80
 8001966:      	movt	r2, #0x800
 800196a:      	movs	r1, #0x25
 800196c:      	bl	#0x786
 8001970:      	trap

08001972 <stm32f30x::rcc::ahbrstr::_IOPERSTW::set_bit::h7baded0ba72d07c5>:
;     pub fn set_bit(self) -> &'a mut W {
 8001972:      	push	{r7, lr}
 8001974:      	mov	r7, sp
 8001976:      	sub	sp, #0x8
 8001978:      	str	r0, [sp, #0x4]
 800197a:      	movs	r1, #0x1
;         self.bit(true)
 800197c:      	bl	#0x22
 8001980:      	str	r0, [sp]
 8001982:      	b	#-0x2 <stm32f30x::rcc::ahbrstr::_IOPERSTW::set_bit::h7baded0ba72d07c5+0x12>
;     }
 8001984:      	ldr	r0, [sp]
 8001986:      	add	sp, #0x8
 8001988:      	pop	{r7, pc}

0800198a <stm32f30x::rcc::ahbrstr::_IOPERSTW::clear_bit::h00a5fd1239cead3b>:
;     pub fn clear_bit(self) -> &'a mut W {
 800198a:      	push	{r7, lr}
 800198c:      	mov	r7, sp
 800198e:      	sub	sp, #0x8
 8001990:      	str	r0, [sp, #0x4]
 8001992:      	movs	r1, #0x0
;         self.bit(false)
 8001994:      	bl	#0xa
 8001998:      	str	r0, [sp]
 800199a:      	b	#-0x2 <stm32f30x::rcc::ahbrstr::_IOPERSTW::clear_bit::h00a5fd1239cead3b+0x12>
;     }
 800199c:      	ldr	r0, [sp]
 800199e:      	add	sp, #0x8
 80019a0:      	pop	{r7, pc}

080019a2 <stm32f30x::rcc::ahbrstr::_IOPERSTW::bit::h71b0eba8bf4b5beb>:
;     pub fn bit(self, value: bool) -> &'a mut W {
 80019a2:      	sub	sp, #0x10
 80019a4:      	mov	r2, r1
 80019a6:      	str	r0, [sp, #0x8]
 80019a8:      	strb.w	r1, [sp, #0xf]
;         self.w.bits &= !((MASK as u32) << OFFSET);
 80019ac:      	ldr	r3, [r0]
 80019ae:      	bic	r3, r3, #0x200000
 80019b2:      	str	r3, [r0]
;         self.w.bits |= ((value & MASK) as u32) << OFFSET;
 80019b4:      	lsls	r1, r1, #0x15
 80019b6:      	str	r0, [sp, #0x4]
 80019b8:      	str	r1, [sp]
 80019ba:      	b	#-0x2 <stm32f30x::rcc::ahbrstr::_IOPERSTW::bit::h71b0eba8bf4b5beb+0x1a>
 80019bc:      	ldr	r0, [sp, #0x4]
 80019be:      	ldr	r1, [r0]
 80019c0:      	ldr	r2, [sp]
 80019c2:      	orrs	r1, r2
 80019c4:      	str	r1, [r0]
;     }
 80019c6:      	add	sp, #0x10
 80019c8:      	bx	lr

080019ca <__cpsid>:
 80019ca:      	cpsid i
 80019cc:      	bx	lr

080019ce <__cpsie>:
 80019ce:      	cpsie i
 80019d0:      	bx	lr

080019d2 <__primask>:
 80019d2:      	mrs	r0, primask
 80019d6:      	bx	lr

080019d8 <ResetTrampoline>:
;             fn trampoline() -> ! {
 80019d8:      	push	{r7, lr}
 80019da:      	mov	r7, sp
;                 unsafe { main() }
 80019dc:      	bl	#-0x1800
 80019e0:      	trap

080019e2 <WWDG>:
; pub unsafe extern "C" fn DefaultHandler_() -> ! {
 80019e2:      	push	{r7, lr}
 80019e4:      	mov	r7, sp
 80019e6:      	sub	sp, #0x8
;     loop {
 80019e8:      	b	#-0x2 <WWDG+0x8>
 80019ea:      	movs	r0, #0x4
;         atomic::compiler_fence(Ordering::SeqCst);
 80019ec:      	strb	r0, [r7, #-1]
 80019f0:      	ldrb	r0, [r7, #-1]
 80019f4:      	bl	#0x168
 80019f8:      	b	#-0x2 <WWDG+0x18>
;     loop {
 80019fa:      	b	#-0x14 <WWDG+0x8>

080019fc <__pre_init>:
; pub unsafe extern "C" fn DefaultPreInit() {}
 80019fc:      	bx	lr

080019fe <r0::zero_bss::h3ef1212c156a879a>:
; pub unsafe fn zero_bss<T>(mut sbss: *mut T, ebss: *mut T)
 80019fe:      	push	{r7, lr}
 8001a00:      	mov	r7, sp
 8001a02:      	sub	sp, #0x20
 8001a04:      	str	r0, [sp, #0x10]
 8001a06:      	str	r1, [sp, #0x14]
 8001a08:      	str	r1, [sp, #0xc]
 8001a0a:      	b	#-0x2 <r0::zero_bss::h3ef1212c156a879a+0xe>
;     while sbss < ebss {
 8001a0c:      	ldr	r0, [sp, #0x10]
 8001a0e:      	ldr	r1, [sp, #0xc]
 8001a10:      	cmp	r0, r1
 8001a12:      	blo	#0x4 <r0::zero_bss::h3ef1212c156a879a+0x1c>
 8001a14:      	b	#-0x2 <r0::zero_bss::h3ef1212c156a879a+0x18>
; }
 8001a16:      	add	sp, #0x20
 8001a18:      	pop	{r7, pc}
;         ptr::write_volatile(sbss, mem::zeroed());
 8001a1a:      	ldr	r0, [sp, #0x10]
;         MaybeUninit::zeroed().assume_init()
 8001a1c:      	str	r0, [sp, #0x8]
 8001a1e:      	bl	#0x80
 8001a22:      	mov	r1, r0
 8001a24:      	str	r0, [sp, #0x18]
 8001a26:      	str	r0, [sp, #0x1c]
;         ptr::write_volatile(sbss, mem::zeroed());
 8001a28:      	str	r1, [sp, #0x4]
 8001a2a:      	b	#-0x2 <r0::zero_bss::h3ef1212c156a879a+0x2e>
 8001a2c:      	ldr	r0, [sp, #0x8]
 8001a2e:      	ldr	r1, [sp, #0x4]
 8001a30:      	bl	#0xc6
 8001a34:      	b	#-0x2 <r0::zero_bss::h3ef1212c156a879a+0x38>
;         sbss = sbss.offset(1);
 8001a36:      	ldr	r0, [sp, #0x10]
 8001a38:      	movs	r1, #0x1
 8001a3a:      	bl	#0xa4
 8001a3e:      	str	r0, [sp]
 8001a40:      	b	#-0x2 <r0::zero_bss::h3ef1212c156a879a+0x44>
 8001a42:      	ldr	r0, [sp]
 8001a44:      	str	r0, [sp, #0x10]
;     while sbss < ebss {
 8001a46:      	b	#-0x3e <r0::zero_bss::h3ef1212c156a879a+0xe>

08001a48 <r0::init_data::h1ca1f2ae47e356bb>:
; pub unsafe fn init_data<T>(
 8001a48:      	push	{r7, lr}
 8001a4a:      	mov	r7, sp
 8001a4c:      	sub	sp, #0x20
 8001a4e:      	str	r0, [sp, #0x14]
 8001a50:      	str	r2, [sp, #0x18]
 8001a52:      	str	r1, [sp, #0x1c]
 8001a54:      	str	r1, [sp, #0x10]
 8001a56:      	b	#-0x2 <r0::init_data::h1ca1f2ae47e356bb+0x10>
;     while sdata < edata {
 8001a58:      	ldr	r0, [sp, #0x14]
 8001a5a:      	ldr	r1, [sp, #0x10]
 8001a5c:      	cmp	r0, r1
 8001a5e:      	blo	#0x4 <r0::init_data::h1ca1f2ae47e356bb+0x1e>
 8001a60:      	b	#-0x2 <r0::init_data::h1ca1f2ae47e356bb+0x1a>
; }
 8001a62:      	add	sp, #0x20
 8001a64:      	pop	{r7, pc}
;         ptr::write(sdata, ptr::read(sidata));
 8001a66:      	ldr	r0, [sp, #0x14]
 8001a68:      	ldr	r1, [sp, #0x18]
 8001a6a:      	str	r0, [sp, #0xc]
 8001a6c:      	mov	r0, r1
 8001a6e:      	bl	#0x96
 8001a72:      	str	r0, [sp, #0x8]
 8001a74:      	b	#-0x2 <r0::init_data::h1ca1f2ae47e356bb+0x2e>
 8001a76:      	ldr	r0, [sp, #0xc]
 8001a78:      	ldr	r1, [sp, #0x8]
 8001a7a:      	bl	#0xbc
 8001a7e:      	b	#-0x2 <r0::init_data::h1ca1f2ae47e356bb+0x38>
;         sdata = sdata.offset(1);
 8001a80:      	ldr	r0, [sp, #0x14]
 8001a82:      	movs	r1, #0x1
 8001a84:      	bl	#0x5a
 8001a88:      	str	r0, [sp, #0x4]
 8001a8a:      	b	#-0x2 <r0::init_data::h1ca1f2ae47e356bb+0x44>
 8001a8c:      	ldr	r0, [sp, #0x4]
 8001a8e:      	str	r0, [sp, #0x14]
;         sidata = sidata.offset(1);
 8001a90:      	ldr	r0, [sp, #0x18]
 8001a92:      	movs	r1, #0x1
 8001a94:      	bl	#0xae
 8001a98:      	str	r0, [sp]
 8001a9a:      	b	#-0x2 <r0::init_data::h1ca1f2ae47e356bb+0x54>
 8001a9c:      	ldr	r0, [sp]
 8001a9e:      	str	r0, [sp, #0x18]
;     while sdata < edata {
 8001aa0:      	b	#-0x4c <r0::init_data::h1ca1f2ae47e356bb+0x10>

08001aa2 <core::mem::maybe_uninit::MaybeUninit<T>::zeroed::hbea05eb4a1e26879>:
;     pub fn zeroed() -> MaybeUninit<T> {
 8001aa2:      	push	{r7, lr}
 8001aa4:      	mov	r7, sp
 8001aa6:      	sub	sp, #0x10
;     }
 8001aa8:      	ldr	r0, [sp, #0x8]
;         let mut u = MaybeUninit::<T>::uninit();
 8001aaa:      	str	r0, [sp, #0x4]
 8001aac:      	b	#-0x2 <core::mem::maybe_uninit::MaybeUninit<T>::zeroed::hbea05eb4a1e26879+0xc>
 8001aae:      	add	r0, sp, #0x4
 8001ab0:      	str	r0, [sp, #0xc]
;             u.as_mut_ptr().write_bytes(0u8, 1);
 8001ab2:      	b	#-0x2 <core::mem::maybe_uninit::MaybeUninit<T>::zeroed::hbea05eb4a1e26879+0x12>
 8001ab4:      	add	r0, sp, #0x4
 8001ab6:      	movs	r1, #0x0
 8001ab8:      	movs	r2, #0x1
;             u.as_mut_ptr().write_bytes(0u8, 1);
 8001aba:      	bl	#0x8
 8001abe:      	b	#-0x2 <core::mem::maybe_uninit::MaybeUninit<T>::zeroed::hbea05eb4a1e26879+0x1e>
;     }
 8001ac0:      	ldr	r0, [sp, #0x4]
 8001ac2:      	add	sp, #0x10
 8001ac4:      	pop	{r7, pc}

08001ac6 <core::ptr::mut_ptr::<impl *mut T>::write_bytes::h25b7bfeea280707d>:
;     pub unsafe fn write_bytes(self, val: u8, count: usize)
 8001ac6:      	push	{r7, lr}
 8001ac8:      	mov	r7, sp
 8001aca:      	sub	sp, #0x10
 8001acc:      	mov	r3, r1
 8001ace:      	str	r0, [sp, #0x4]
 8001ad0:      	strb	r1, [r7, #-5]
 8001ad4:      	str	r2, [sp, #0xc]
;         unsafe { write_bytes(self, val, count) }
 8001ad6:      	str	r3, [sp]
 8001ad8:      	bl	#0xc8
 8001adc:      	b	#-0x2 <core::ptr::mut_ptr::<impl *mut T>::write_bytes::h25b7bfeea280707d+0x18>
;     }
 8001ade:      	add	sp, #0x10
 8001ae0:      	pop	{r7, pc}

08001ae2 <core::ptr::mut_ptr::<impl *mut T>::offset::hb941cd744786bba4>:
;     pub const unsafe fn offset(self, count: isize) -> *mut T
 8001ae2:      	sub	sp, #0x10
 8001ae4:      	str	r0, [sp, #0x4]
 8001ae6:      	str	r1, [sp, #0x8]
;         unsafe { intrinsics::offset(self, count) as *mut T }
 8001ae8:      	add.w	r0, r0, r1, lsl #2
 8001aec:      	str	r0, [sp, #0xc]
 8001aee:      	ldr	r0, [sp, #0xc]
 8001af0:      	str	r0, [sp]
 8001af2:      	b	#-0x2 <core::ptr::mut_ptr::<impl *mut T>::offset::hb941cd744786bba4+0x12>
;     }
 8001af4:      	ldr	r0, [sp]
 8001af6:      	add	sp, #0x10
 8001af8:      	bx	lr

08001afa <core::ptr::write_volatile::h6d5076a96c5af0ef>:
; pub unsafe fn write_volatile<T>(dst: *mut T, src: T) {
 8001afa:      	sub	sp, #0x8
 8001afc:      	str	r0, [sp]
 8001afe:      	str	r1, [sp, #0x4]
;         intrinsics::volatile_store(dst, src);
 8001b00:      	str	r1, [r0]
 8001b02:      	b	#-0x2 <core::ptr::write_volatile::h6d5076a96c5af0ef+0xa>
; }
 8001b04:      	add	sp, #0x8
 8001b06:      	bx	lr

08001b08 <core::ptr::read::h16082a37d391c21b>:
; pub unsafe fn read<T>(src: *const T) -> T {
 8001b08:      	push	{r7, lr}
 8001b0a:      	mov	r7, sp
 8001b0c:      	sub	sp, #0x20
 8001b0e:      	str	r0, [sp, #0xc]
;     }
 8001b10:      	ldr	r1, [sp, #0x10]
;     let mut tmp = MaybeUninit::<T>::uninit();
 8001b12:      	str	r1, [sp, #0x8]
 8001b14:      	str	r0, [sp, #0x4]
 8001b16:      	b	#-0x2 <core::ptr::read::h16082a37d391c21b+0x10>
 8001b18:      	add	r0, sp, #0x8
 8001b1a:      	str	r0, [sp, #0x1c]
;         copy_nonoverlapping(src, tmp.as_mut_ptr(), 1);
 8001b1c:      	b	#-0x2 <core::ptr::read::h16082a37d391c21b+0x16>
 8001b1e:      	add	r1, sp, #0x8
 8001b20:      	movs	r2, #0x1
;         copy_nonoverlapping(src, tmp.as_mut_ptr(), 1);
 8001b22:      	ldr	r0, [sp, #0x4]
 8001b24:      	bl	#0xa2
 8001b28:      	b	#-0x2 <core::ptr::read::h16082a37d391c21b+0x22>
;         tmp.assume_init()
 8001b2a:      	ldr	r0, [sp, #0x8]
 8001b2c:      	str	r0, [sp, #0x14]
 8001b2e:      	str	r0, [sp, #0x18]
 8001b30:      	str	r0, [sp]
 8001b32:      	b	#-0x2 <core::ptr::read::h16082a37d391c21b+0x2c>
; }
 8001b34:      	ldr	r0, [sp]
 8001b36:      	add	sp, #0x20
 8001b38:      	pop	{r7, pc}

08001b3a <core::ptr::write::h38e6ad43e0b38c80>:
; pub unsafe fn write<T>(dst: *mut T, src: T) {
 8001b3a:      	sub	sp, #0xc
 8001b3c:      	str	r0, [sp, #0x4]
 8001b3e:      	str	r1, [sp, #0x8]
;     unsafe { intrinsics::move_val_init(&mut *dst, src) }
 8001b40:      	str	r1, [r0]
; }
 8001b42:      	add	sp, #0xc
 8001b44:      	bx	lr

08001b46 <core::ptr::const_ptr::<impl *const T>::offset::h798ca2c7f163f5e5>:
;     pub const unsafe fn offset(self, count: isize) -> *const T
 8001b46:      	sub	sp, #0x10
 8001b48:      	str	r0, [sp, #0x4]
 8001b4a:      	str	r1, [sp, #0x8]
;         unsafe { intrinsics::offset(self, count) }
 8001b4c:      	add.w	r0, r0, r1, lsl #2
 8001b50:      	str	r0, [sp, #0xc]
 8001b52:      	ldr	r0, [sp, #0xc]
 8001b54:      	str	r0, [sp]
 8001b56:      	b	#-0x2 <core::ptr::const_ptr::<impl *const T>::offset::h798ca2c7f163f5e5+0x12>
;     }
 8001b58:      	ldr	r0, [sp]
 8001b5a:      	add	sp, #0x10
 8001b5c:      	bx	lr
 8001b5e:      	bmi	#-0x58 <core::ptr::read::h16082a37d391c21b+0x2>

08001b60 <core::sync::atomic::compiler_fence::hde43f24fbc248075>:
; pub fn compiler_fence(order: Ordering) {
 8001b60:      	push	{r7, lr}
 8001b62:      	mov	r7, sp
 8001b64:      	sub	sp, #0x10
 8001b66:      	mov	r1, r0
 8001b68:      	strb	r0, [r7, #-5]
;             Acquire => intrinsics::atomic_singlethreadfence_acq(),
 8001b6c:      	ldrb	r0, [r7, #-5]
 8001b70:      	str	r0, [sp, #0x4]
 8001b72:      	ldr	r1, [sp, #0x4]
 8001b74:      	tbb	[pc, r1]

08001b78 <$d.1>:
 8001b78:	03 11 10 12	.word	0x12101103
 8001b7c:	13 00		.short	0x0013

08001b7e <$t.2>:
;             Relaxed => panic!("there is no such thing as a relaxed compiler fence"),
 8001b7e:      	movw	r0, #0x3c90
 8001b82:      	movt	r0, #0x800
 8001b86:      	movw	r2, #0x3d38
 8001b8a:      	movt	r2, #0x800
 8001b8e:      	movs	r1, #0x32
 8001b90:      	bl	#0x562
 8001b94:      	trap
;         match order {
 8001b96:      	trap
;             Acquire => intrinsics::atomic_singlethreadfence_acq(),
 8001b98:      	b	#0x4 <$t.2+0x22>
;             Release => intrinsics::atomic_singlethreadfence_rel(),
 8001b9a:      	b	#0x2 <$t.2+0x22>
;             AcqRel => intrinsics::atomic_singlethreadfence_acqrel(),
 8001b9c:      	b	#0x0 <$t.2+0x22>
;             SeqCst => intrinsics::atomic_singlethreadfence(),
 8001b9e:      	b	#-0x2 <$t.2+0x22>
; }
 8001ba0:      	add	sp, #0x10
 8001ba2:      	pop	{r7, pc}

08001ba4 <core::intrinsics::write_bytes::h42d09575651dff70>:
; pub unsafe fn write_bytes<T>(dst: *mut T, val: u8, count: usize) {
 8001ba4:      	push	{r7, lr}
 8001ba6:      	mov	r7, sp
 8001ba8:      	sub	sp, #0x18
 8001baa:      	mov	r3, r1
 8001bac:      	str	r0, [sp, #0xc]
 8001bae:      	strb	r1, [r7, #-5]
 8001bb2:      	str	r2, [sp, #0x14]
;     unsafe { write_bytes(dst, val, count) }
 8001bb4:      	lsls	r2, r2, #0x2
 8001bb6:      	uxtb	r1, r1
 8001bb8:      	str	r1, [sp, #0x8]
 8001bba:      	mov	r1, r2
 8001bbc:      	ldr	r2, [sp, #0x8]
 8001bbe:      	str	r3, [sp, #0x4]
 8001bc0:      	bl	#0x1e1e
 8001bc4:      	b	#-0x2 <core::intrinsics::write_bytes::h42d09575651dff70+0x22>
; }
 8001bc6:      	add	sp, #0x18
 8001bc8:      	pop	{r7, pc}

08001bca <core::intrinsics::copy_nonoverlapping::h08229a40922d3327>:
; pub unsafe fn copy_nonoverlapping<T>(src: *const T, dst: *mut T, count: usize) {
 8001bca:      	push	{r7, lr}
 8001bcc:      	mov	r7, sp
 8001bce:      	sub	sp, #0x10
 8001bd0:      	str	r0, [sp, #0x4]
 8001bd2:      	str	r1, [sp, #0x8]
 8001bd4:      	str	r2, [sp, #0xc]
;     unsafe { copy_nonoverlapping(src, dst, count) }
 8001bd6:      	lsls	r2, r2, #0x2
 8001bd8:      	str	r0, [sp]
 8001bda:      	mov	r0, r1
 8001bdc:      	ldr	r1, [sp]
 8001bde:      	bl	#0x1d24
 8001be2:      	b	#-0x2 <core::intrinsics::copy_nonoverlapping::h08229a40922d3327+0x1a>
; }
 8001be4:      	add	sp, #0x10
 8001be6:      	pop	{r7, pc}

08001be8 <core::ptr::read_volatile::h78bc5bb053416b53>:
; pub unsafe fn read_volatile<T>(src: *const T) -> T {
 8001be8:      	sub	sp, #0xc
 8001bea:      	str	r0, [sp, #0x4]
;     unsafe { intrinsics::volatile_load(src) }
 8001bec:      	ldr	r0, [r0]
 8001bee:      	str	r0, [sp, #0x8]
 8001bf0:      	ldr	r0, [sp, #0x8]
 8001bf2:      	str	r0, [sp]
 8001bf4:      	b	#-0x2 <core::ptr::read_volatile::h78bc5bb053416b53+0xe>
; }
 8001bf6:      	ldr	r0, [sp]
 8001bf8:      	add	sp, #0xc
 8001bfa:      	bx	lr

08001bfc <core::ptr::write_volatile::h35824f7492d05a3d>:
; pub unsafe fn write_volatile<T>(dst: *mut T, src: T) {
 8001bfc:      	sub	sp, #0x8
 8001bfe:      	mov	r2, r1
 8001c00:      	str	r0, [sp]
 8001c02:      	strh.w	r1, [sp, #0x6]
;         intrinsics::volatile_store(dst, src);
 8001c06:      	strh	r1, [r0]
 8001c08:      	b	#-0x2 <core::ptr::write_volatile::h35824f7492d05a3d+0xe>
; }
 8001c0a:      	add	sp, #0x8
 8001c0c:      	bx	lr

08001c0e <core::ptr::write_volatile::h77160209354b68c5>:
; pub unsafe fn write_volatile<T>(dst: *mut T, src: T) {
 8001c0e:      	sub	sp, #0x8
 8001c10:      	str	r0, [sp]
 8001c12:      	str	r1, [sp, #0x4]
;         intrinsics::volatile_store(dst, src);
 8001c14:      	str	r1, [r0]
 8001c16:      	b	#-0x2 <core::ptr::write_volatile::h77160209354b68c5+0xa>
; }
 8001c18:      	add	sp, #0x8
 8001c1a:      	bx	lr

08001c1c <core::ptr::write_volatile::h99cbbe367629b37d>:
; pub unsafe fn write_volatile<T>(dst: *mut T, src: T) {
 8001c1c:      	sub	sp, #0x8
 8001c1e:      	mov	r2, r1
 8001c20:      	str	r0, [sp]
 8001c22:      	strb.w	r1, [sp, #0x7]
;         intrinsics::volatile_store(dst, src);
 8001c26:      	strb	r1, [r0]
 8001c28:      	b	#-0x2 <core::ptr::write_volatile::h99cbbe367629b37d+0xe>
; }
 8001c2a:      	add	sp, #0x8
 8001c2c:      	bx	lr

08001c2e <core::ptr::swap_nonoverlapping::h8f753b5b581eb60b>:
; pub unsafe fn swap_nonoverlapping<T>(x: *mut T, y: *mut T, count: usize) {
 8001c2e:      	push	{r7, lr}
 8001c30:      	mov	r7, sp
 8001c32:      	sub	sp, #0x28
 8001c34:      	str	r0, [sp, #0x10]
 8001c36:      	str	r1, [sp, #0x14]
 8001c38:      	str	r2, [sp, #0x18]
;     let x = x as *mut u8;
 8001c3a:      	mov	r3, r0
 8001c3c:      	str	r0, [sp, #0x1c]
;     let y = y as *mut u8;
 8001c3e:      	mov	r0, r1
 8001c40:      	str	r1, [sp, #0x20]
;     let len = mem::size_of::<T>() * count;
 8001c42:      	str	r2, [sp, #0xc]
 8001c44:      	str	r3, [sp, #0x8]
 8001c46:      	str	r0, [sp, #0x4]
 8001c48:      	b	#-0x2 <core::ptr::swap_nonoverlapping::h8f753b5b581eb60b+0x1c>
 8001c4a:      	ldr	r0, [sp, #0xc]
 8001c4c:      	lsls	r1, r0, #0x2
 8001c4e:      	str	r1, [sp, #0x24]
;     unsafe { swap_nonoverlapping_bytes(x, y, len) }
 8001c50:      	ldr	r0, [sp, #0x8]
 8001c52:      	ldr	r2, [sp, #0x4]
 8001c54:      	str	r1, [sp]
 8001c56:      	mov	r1, r2
 8001c58:      	ldr	r2, [sp]
 8001c5a:      	bl	#0x8a
 8001c5e:      	b	#-0x2 <core::ptr::swap_nonoverlapping::h8f753b5b581eb60b+0x32>
; }
 8001c60:      	add	sp, #0x28
 8001c62:      	pop	{r7, pc}

08001c64 <core::ptr::slice_from_raw_parts::h56273ebfe3255a08>:
; pub const fn slice_from_raw_parts<T>(data: *const T, len: usize) -> *const [T] {
 8001c64:      	sub	sp, #0x18
 8001c66:      	str	r0, [sp, #0x10]
 8001c68:      	str	r1, [sp, #0x14]
;     unsafe { Repr { raw: FatPtr { data, len } }.rust }
 8001c6a:      	str	r0, [sp, #0x8]
 8001c6c:      	str	r1, [sp, #0xc]
 8001c6e:      	ldr	r0, [sp, #0x8]
 8001c70:      	ldr	r1, [sp, #0xc]
 8001c72:      	str	r0, [sp]
 8001c74:      	str	r1, [sp, #0x4]
 8001c76:      	ldr	r0, [sp]
 8001c78:      	ldr	r1, [sp, #0x4]
; }
 8001c7a:      	add	sp, #0x18
 8001c7c:      	bx	lr

08001c7e <core::ptr::slice_from_raw_parts::hd7a58ff1e951a114>:
; pub const fn slice_from_raw_parts<T>(data: *const T, len: usize) -> *const [T] {
 8001c7e:      	sub	sp, #0x18
 8001c80:      	str	r0, [sp, #0x10]
 8001c82:      	str	r1, [sp, #0x14]
;     unsafe { Repr { raw: FatPtr { data, len } }.rust }
 8001c84:      	str	r0, [sp, #0x8]
 8001c86:      	str	r1, [sp, #0xc]
 8001c88:      	ldr	r0, [sp, #0x8]
 8001c8a:      	ldr	r1, [sp, #0xc]
 8001c8c:      	str	r0, [sp]
 8001c8e:      	str	r1, [sp, #0x4]
 8001c90:      	ldr	r0, [sp]
 8001c92:      	ldr	r1, [sp, #0x4]
; }
 8001c94:      	add	sp, #0x18
 8001c96:      	bx	lr

08001c98 <core::ptr::swap_nonoverlapping_one::hda76457260815c7a>:
; pub(crate) unsafe fn swap_nonoverlapping_one<T>(x: *mut T, y: *mut T) {
 8001c98:      	push	{r7, lr}
 8001c9a:      	mov	r7, sp
 8001c9c:      	sub	sp, #0x20
 8001c9e:      	str	r0, [sp, #0x14]
 8001ca0:      	str	r1, [sp, #0x18]
;     if mem::size_of::<T>() < 32 {
 8001ca2:      	str	r1, [sp, #0xc]
 8001ca4:      	str	r0, [sp, #0x8]
 8001ca6:      	b	#-0x2 <core::ptr::swap_nonoverlapping_one::hda76457260815c7a+0x10>
 8001ca8:      	movs	r0, #0x1
;     if mem::size_of::<T>() < 32 {
 8001caa:      	cmp	r0, #0x0
 8001cac:      	bne	#0xc <core::ptr::swap_nonoverlapping_one::hda76457260815c7a+0x24>
 8001cae:      	b	#-0x2 <core::ptr::swap_nonoverlapping_one::hda76457260815c7a+0x18>
 8001cb0:      	movs	r2, #0x1
;         unsafe { swap_nonoverlapping(x, y, 1) };
 8001cb2:      	ldr	r0, [sp, #0x8]
 8001cb4:      	ldr	r1, [sp, #0xc]
 8001cb6:      	bl	#-0x8c
 8001cba:      	b	#0x24 <core::ptr::swap_nonoverlapping_one::hda76457260815c7a+0x4a>
;             let z = read(x);
 8001cbc:      	ldr	r0, [sp, #0x8]
 8001cbe:      	bl	#0x168
 8001cc2:      	mov	r1, r0
 8001cc4:      	str	r0, [sp, #0x1c]
 8001cc6:      	str	r1, [sp, #0x4]
 8001cc8:      	b	#-0x2 <core::ptr::swap_nonoverlapping_one::hda76457260815c7a+0x32>
 8001cca:      	movs	r2, #0x1
;             copy_nonoverlapping(y, x, 1);
 8001ccc:      	ldr	r0, [sp, #0xc]
 8001cce:      	ldr	r1, [sp, #0x8]
 8001cd0:      	bl	#0x2b8
 8001cd4:      	b	#-0x2 <core::ptr::swap_nonoverlapping_one::hda76457260815c7a+0x3e>
;             write(y, z);
 8001cd6:      	ldr	r0, [sp, #0xc]
 8001cd8:      	ldr	r1, [sp, #0x4]
 8001cda:      	bl	#0x1c0
 8001cde:      	b	#-0x2 <core::ptr::swap_nonoverlapping_one::hda76457260815c7a+0x48>
;     if mem::size_of::<T>() < 32 {
 8001ce0:      	b	#0x0 <core::ptr::swap_nonoverlapping_one::hda76457260815c7a+0x4c>
 8001ce2:      	b	#-0x2 <core::ptr::swap_nonoverlapping_one::hda76457260815c7a+0x4c>
; }
 8001ce4:      	add	sp, #0x20
 8001ce6:      	pop	{r7, pc}

08001ce8 <core::ptr::swap_nonoverlapping_bytes::ha65f62fde32e2c87>:
; unsafe fn swap_nonoverlapping_bytes(x: *mut u8, y: *mut u8, len: usize) {
 8001ce8:      	push	{r4, r6, r7, lr}
 8001cea:      	add	r7, sp, #0x8
 8001cec:      	sub	sp, #0xd0
 8001cee:      	mov	r4, sp
 8001cf0:      	bfc	r4, #0, #5
 8001cf4:      	mov	sp, r4
 8001cf6:      	str	r0, [sp, #0x9c]
 8001cf8:      	str	r1, [sp, #0xa0]
 8001cfa:      	str	r2, [sp, #0xa4]
 8001cfc:      	movs	r3, #0x20
;     let block_size = mem::size_of::<Block>();
 8001cfe:      	str	r3, [sp, #0xa8]
 8001d00:      	str	r2, [sp, #0x34]
 8001d02:      	str	r1, [sp, #0x30]
 8001d04:      	str	r0, [sp, #0x2c]
 8001d06:      	b	#-0x2 <core::ptr::swap_nonoverlapping_bytes::ha65f62fde32e2c87+0x20>
 8001d08:      	movs	r0, #0x0
;     let mut i = 0;
 8001d0a:      	str	r0, [sp, #0x3c]
;     while i + block_size <= len {
 8001d0c:      	b	#-0x2 <core::ptr::swap_nonoverlapping_bytes::ha65f62fde32e2c87+0x26>
 8001d0e:      	ldr	r0, [sp, #0x3c]
 8001d10:      	adds	r0, #0x20
 8001d12:      	ldr	r1, [sp, #0x34]
 8001d14:      	cmp	r0, r1
 8001d16:      	bls	#0xa <core::ptr::swap_nonoverlapping_bytes::ha65f62fde32e2c87+0x3c>
 8001d18:      	b	#-0x2 <core::ptr::swap_nonoverlapping_bytes::ha65f62fde32e2c87+0x32>
;     if i < len {
 8001d1a:      	ldr	r0, [sp, #0x3c]
 8001d1c:      	ldr	r1, [sp, #0x34]
 8001d1e:      	cmp	r0, r1
 8001d20:      	blo	#0x66 <core::ptr::swap_nonoverlapping_bytes::ha65f62fde32e2c87+0xa2>
 8001d22:      	b	#0x62 <core::ptr::swap_nonoverlapping_bytes::ha65f62fde32e2c87+0xa0>
;         let mut t = mem::MaybeUninit::<Block>::uninit();
 8001d24:      	b	#-0x2 <core::ptr::swap_nonoverlapping_bytes::ha65f62fde32e2c87+0x3e>
 8001d26:      	add	r0, sp, #0x40
 8001d28:      	str	r0, [sp, #0xcc]
;         let t = t.as_mut_ptr() as *mut u8;
 8001d2a:      	b	#-0x2 <core::ptr::swap_nonoverlapping_bytes::ha65f62fde32e2c87+0x44>
 8001d2c:      	add	r0, sp, #0x40
;         let t = t.as_mut_ptr() as *mut u8;
 8001d2e:      	mov	r1, r0
 8001d30:      	str	r0, [sp, #0xac]
;             let x = x.add(i);
 8001d32:      	ldr	r0, [sp, #0x3c]
 8001d34:      	ldr	r2, [sp, #0x2c]
 8001d36:      	str	r0, [sp, #0x28]
 8001d38:      	mov	r0, r2
 8001d3a:      	ldr	r3, [sp, #0x28]
 8001d3c:      	str	r1, [sp, #0x24]
 8001d3e:      	mov	r1, r3
 8001d40:      	bl	#0x1c8
 8001d44:      	mov	r1, r0
 8001d46:      	str	r0, [sp, #0xb0]
 8001d48:      	str	r1, [sp, #0x20]
 8001d4a:      	b	#-0x2 <core::ptr::swap_nonoverlapping_bytes::ha65f62fde32e2c87+0x64>
;             let y = y.add(i);
 8001d4c:      	ldr	r1, [sp, #0x3c]
 8001d4e:      	ldr	r0, [sp, #0x30]
 8001d50:      	bl	#0x1b8
 8001d54:      	mov	r1, r0
 8001d56:      	str	r0, [sp, #0xb4]
 8001d58:      	str	r1, [sp, #0x1c]
 8001d5a:      	b	#-0x2 <core::ptr::swap_nonoverlapping_bytes::ha65f62fde32e2c87+0x74>
 8001d5c:      	movs	r2, #0x20
;             copy_nonoverlapping(x, t, block_size);
 8001d5e:      	ldr	r0, [sp, #0x20]
 8001d60:      	ldr	r1, [sp, #0x24]
 8001d62:      	bl	#0x244
 8001d66:      	b	#-0x2 <core::ptr::swap_nonoverlapping_bytes::ha65f62fde32e2c87+0x80>
 8001d68:      	movs	r2, #0x20
;             copy_nonoverlapping(y, x, block_size);
 8001d6a:      	ldr	r0, [sp, #0x1c]
 8001d6c:      	ldr	r1, [sp, #0x20]
 8001d6e:      	bl	#0x238
 8001d72:      	b	#-0x2 <core::ptr::swap_nonoverlapping_bytes::ha65f62fde32e2c87+0x8c>
 8001d74:      	movs	r2, #0x20
;             copy_nonoverlapping(t, y, block_size);
 8001d76:      	ldr	r0, [sp, #0x24]
 8001d78:      	ldr	r1, [sp, #0x1c]
 8001d7a:      	bl	#0x22c
 8001d7e:      	b	#-0x2 <core::ptr::swap_nonoverlapping_bytes::ha65f62fde32e2c87+0x98>
;         i += block_size;
 8001d80:      	ldr	r0, [sp, #0x3c]
 8001d82:      	adds	r0, #0x20
 8001d84:      	str	r0, [sp, #0x3c]
;     while i + block_size <= len {
 8001d86:      	b	#-0x7c <core::ptr::swap_nonoverlapping_bytes::ha65f62fde32e2c87+0x26>
;     if i < len {
 8001d88:      	b	#0x64 <core::ptr::swap_nonoverlapping_bytes::ha65f62fde32e2c87+0x108>
;         let mut t = mem::MaybeUninit::<UnalignedBlock>::uninit();
 8001d8a:      	b	#-0x2 <core::ptr::swap_nonoverlapping_bytes::ha65f62fde32e2c87+0xa4>
;         let rem = len - i;
 8001d8c:      	ldr	r0, [sp, #0x3c]
 8001d8e:      	ldr	r1, [sp, #0x34]
 8001d90:      	subs	r0, r1, r0
 8001d92:      	mov	r2, r0
 8001d94:      	str	r0, [sp, #0xb8]
 8001d96:      	add	r0, sp, #0x78
 8001d98:      	str	r0, [sp, #0xc8]
;         let t = t.as_mut_ptr() as *mut u8;
 8001d9a:      	str	r2, [sp, #0x18]
 8001d9c:      	str	r0, [sp, #0x14]
 8001d9e:      	b	#-0x2 <core::ptr::swap_nonoverlapping_bytes::ha65f62fde32e2c87+0xb8>
 8001da0:      	ldr	r0, [sp, #0x14]
 8001da2:      	ldr	r1, [sp, #0x14]
 8001da4:      	str	r1, [sp, #0xbc]
;             let x = x.add(i);
 8001da6:      	ldr	r1, [sp, #0x3c]
 8001da8:      	ldr	r2, [sp, #0x2c]
 8001daa:      	str	r0, [sp, #0x10]
 8001dac:      	mov	r0, r2
 8001dae:      	bl	#0x15a
 8001db2:      	mov	r1, r0
 8001db4:      	str	r0, [sp, #0xc0]
 8001db6:      	str	r1, [sp, #0xc]
 8001db8:      	b	#-0x2 <core::ptr::swap_nonoverlapping_bytes::ha65f62fde32e2c87+0xd2>
;             let y = y.add(i);
 8001dba:      	ldr	r1, [sp, #0x3c]
 8001dbc:      	ldr	r0, [sp, #0x30]
 8001dbe:      	bl	#0x14a
 8001dc2:      	mov	r1, r0
 8001dc4:      	str	r0, [sp, #0xc4]
 8001dc6:      	str	r1, [sp, #0x8]
 8001dc8:      	b	#-0x2 <core::ptr::swap_nonoverlapping_bytes::ha65f62fde32e2c87+0xe2>
;             copy_nonoverlapping(x, t, rem);
 8001dca:      	ldr	r0, [sp, #0xc]
 8001dcc:      	ldr	r1, [sp, #0x10]
 8001dce:      	ldr	r2, [sp, #0x18]
 8001dd0:      	bl	#0x1d6
 8001dd4:      	b	#-0x2 <core::ptr::swap_nonoverlapping_bytes::ha65f62fde32e2c87+0xee>
;             copy_nonoverlapping(y, x, rem);
 8001dd6:      	ldr	r0, [sp, #0x8]
 8001dd8:      	ldr	r1, [sp, #0xc]
 8001dda:      	ldr	r2, [sp, #0x18]
 8001ddc:      	bl	#0x1ca
 8001de0:      	b	#-0x2 <core::ptr::swap_nonoverlapping_bytes::ha65f62fde32e2c87+0xfa>
;             copy_nonoverlapping(t, y, rem);
 8001de2:      	ldr	r0, [sp, #0x10]
 8001de4:      	ldr	r1, [sp, #0x8]
 8001de6:      	ldr	r2, [sp, #0x18]
 8001de8:      	bl	#0x1be
 8001dec:      	b	#-0x2 <core::ptr::swap_nonoverlapping_bytes::ha65f62fde32e2c87+0x106>
;     if i < len {
 8001dee:      	b	#-0x2 <core::ptr::swap_nonoverlapping_bytes::ha65f62fde32e2c87+0x108>
; }
 8001df0:      	sub.w	r4, r7, #0x8
 8001df4:      	mov	sp, r4
 8001df6:      	pop	{r4, r6, r7, pc}

08001df8 <core::ptr::read::h078fa3ef1093ff57>:
; pub unsafe fn read<T>(src: *const T) -> T {
 8001df8:      	push	{r7, lr}
 8001dfa:      	mov	r7, sp
 8001dfc:      	sub	sp, #0x20
 8001dfe:      	str	r0, [sp, #0xc]
;     }
 8001e00:      	ldr	r1, [sp, #0x10]
;     let mut tmp = MaybeUninit::<T>::uninit();
 8001e02:      	str	r1, [sp, #0x8]
 8001e04:      	str	r0, [sp, #0x4]
 8001e06:      	b	#-0x2 <core::ptr::read::h078fa3ef1093ff57+0x10>
 8001e08:      	add	r0, sp, #0x8
 8001e0a:      	str	r0, [sp, #0x1c]
;         copy_nonoverlapping(src, tmp.as_mut_ptr(), 1);
 8001e0c:      	b	#-0x2 <core::ptr::read::h078fa3ef1093ff57+0x16>
 8001e0e:      	add	r1, sp, #0x8
 8001e10:      	movs	r2, #0x1
;         copy_nonoverlapping(src, tmp.as_mut_ptr(), 1);
 8001e12:      	ldr	r0, [sp, #0x4]
 8001e14:      	bl	#0x156
 8001e18:      	b	#-0x2 <core::ptr::read::h078fa3ef1093ff57+0x22>
;         tmp.assume_init()
 8001e1a:      	ldr	r0, [sp, #0x8]
 8001e1c:      	str	r0, [sp, #0x14]
 8001e1e:      	str	r0, [sp, #0x18]
 8001e20:      	str	r0, [sp]
 8001e22:      	b	#-0x2 <core::ptr::read::h078fa3ef1093ff57+0x2c>
; }
 8001e24:      	ldr	r0, [sp]
 8001e26:      	add	sp, #0x20
 8001e28:      	pop	{r7, pc}

08001e2a <core::ptr::read::h1bd95e30bf7d9802>:
; pub unsafe fn read<T>(src: *const T) -> T {
 8001e2a:      	push	{r7, lr}
 8001e2c:      	mov	r7, sp
 8001e2e:      	sub	sp, #0x20
 8001e30:      	str	r0, [sp, #0xc]
;     }
 8001e32:      	ldr	r1, [sp, #0x10]
;     let mut tmp = MaybeUninit::<T>::uninit();
 8001e34:      	str	r1, [sp, #0x8]
 8001e36:      	str	r0, [sp, #0x4]
 8001e38:      	b	#-0x2 <core::ptr::read::h1bd95e30bf7d9802+0x10>
 8001e3a:      	add	r0, sp, #0x8
 8001e3c:      	str	r0, [sp, #0x1c]
;         copy_nonoverlapping(src, tmp.as_mut_ptr(), 1);
 8001e3e:      	b	#-0x2 <core::ptr::read::h1bd95e30bf7d9802+0x16>
 8001e40:      	add	r1, sp, #0x8
 8001e42:      	movs	r2, #0x1
;         copy_nonoverlapping(src, tmp.as_mut_ptr(), 1);
 8001e44:      	ldr	r0, [sp, #0x4]
 8001e46:      	bl	#0x142
 8001e4a:      	b	#-0x2 <core::ptr::read::h1bd95e30bf7d9802+0x22>
;         tmp.assume_init()
 8001e4c:      	ldr	r0, [sp, #0x8]
 8001e4e:      	str	r0, [sp, #0x14]
 8001e50:      	str	r0, [sp, #0x18]
 8001e52:      	str	r0, [sp]
 8001e54:      	b	#-0x2 <core::ptr::read::h1bd95e30bf7d9802+0x2c>
; }
 8001e56:      	ldr	r0, [sp]
 8001e58:      	add	sp, #0x20
 8001e5a:      	pop	{r7, pc}

08001e5c <core::ptr::read::hbb8ebc0a9492a8cd>:
; pub unsafe fn read<T>(src: *const T) -> T {
 8001e5c:      	push	{r7, lr}
 8001e5e:      	mov	r7, sp
 8001e60:      	sub	sp, #0x20
 8001e62:      	str	r0, [sp, #0x10]
;     }
 8001e64:      	ldrh	r1, [r7, #-10]
;     let mut tmp = MaybeUninit::<T>::uninit();
 8001e68:      	strh	r1, [r7, #-18]
 8001e6c:      	str	r0, [sp, #0x8]
 8001e6e:      	b	#-0x2 <core::ptr::read::hbb8ebc0a9492a8cd+0x14>
 8001e70:      	sub.w	r0, r7, #0x12
 8001e74:      	str	r0, [sp, #0x1c]
;         copy_nonoverlapping(src, tmp.as_mut_ptr(), 1);
 8001e76:      	b	#-0x2 <core::ptr::read::hbb8ebc0a9492a8cd+0x1c>
 8001e78:      	sub.w	r1, r7, #0x12
 8001e7c:      	movs	r2, #0x1
;         copy_nonoverlapping(src, tmp.as_mut_ptr(), 1);
 8001e7e:      	ldr	r0, [sp, #0x8]
 8001e80:      	bl	#0x142
 8001e84:      	b	#-0x2 <core::ptr::read::hbb8ebc0a9492a8cd+0x2a>
;         tmp.assume_init()
 8001e86:      	ldrh	r0, [r7, #-18]
 8001e8a:      	mov	r1, r0
 8001e8c:      	strh.w	r0, [sp, #0x18]
 8001e90:      	strh	r0, [r7, #-6]
 8001e94:      	str	r1, [sp, #0x4]
 8001e96:      	b	#-0x2 <core::ptr::read::hbb8ebc0a9492a8cd+0x3c>
; }
 8001e98:      	ldr	r0, [sp, #0x4]
 8001e9a:      	add	sp, #0x20
 8001e9c:      	pop	{r7, pc}

08001e9e <core::ptr::write::h9252896b01c22b93>:
; pub unsafe fn write<T>(dst: *mut T, src: T) {
 8001e9e:      	sub	sp, #0xc
 8001ea0:      	str	r0, [sp, #0x4]
 8001ea2:      	str	r1, [sp, #0x8]
;     unsafe { intrinsics::move_val_init(&mut *dst, src) }
 8001ea4:      	str	r1, [r0]
; }
 8001ea6:      	add	sp, #0xc
 8001ea8:      	bx	lr

08001eaa <<usize as core::iter::range::Step>::forward_unchecked::hb38f6996702c6a45>:
;         unsafe fn forward_unchecked(start: Self, n: usize) -> Self {
 8001eaa:      	push	{r7, lr}
 8001eac:      	mov	r7, sp
 8001eae:      	sub	sp, #0x10
 8001eb0:      	str	r0, [sp, #0x8]
 8001eb2:      	str	r1, [sp, #0xc]
;             unsafe { start.unchecked_add(n as Self) }
 8001eb4:      	bl	#0x22
 8001eb8:      	str	r0, [sp, #0x4]
 8001eba:      	b	#-0x2 <<usize as core::iter::range::Step>::forward_unchecked::hb38f6996702c6a45+0x12>
;         }
 8001ebc:      	ldr	r0, [sp, #0x4]
 8001ebe:      	add	sp, #0x10
 8001ec0:      	pop	{r7, pc}

08001ec2 <core::cmp::impls::<impl core::cmp::PartialOrd for usize>::lt::he042199fba7f815f>:
;                 fn lt(&self, other: &$t) -> bool { (*self) < (*other) }
 8001ec2:      	sub	sp, #0x8
 8001ec4:      	str	r0, [sp]
 8001ec6:      	str	r1, [sp, #0x4]
 8001ec8:      	ldr	r0, [r0]
 8001eca:      	ldr	r1, [r1]
 8001ecc:      	movs	r2, #0x0
 8001ece:      	cmp	r0, r1
 8001ed0:      	it	lo
 8001ed2:      	movlo	r2, #0x1
 8001ed4:      	mov	r0, r2
 8001ed6:      	add	sp, #0x8
 8001ed8:      	bx	lr

08001eda <core::num::<impl usize>::unchecked_add::h96ad73cd28a3f4d4>:
;             pub unsafe fn unchecked_add(self, rhs: Self) -> Self {
 8001eda:      	sub	sp, #0x10
 8001edc:      	str	r0, [sp, #0x4]
 8001ede:      	str	r1, [sp, #0x8]
;                 unsafe { intrinsics::unchecked_add(self, rhs) }
 8001ee0:      	add	r0, r1
 8001ee2:      	str	r0, [sp, #0xc]
 8001ee4:      	ldr	r0, [sp, #0xc]
 8001ee6:      	str	r0, [sp]
 8001ee8:      	b	#-0x2 <core::num::<impl usize>::unchecked_add::h96ad73cd28a3f4d4+0x10>
;             }
 8001eea:      	ldr	r0, [sp]
 8001eec:      	add	sp, #0x10
 8001eee:      	bx	lr

08001ef0 <core::cell::UnsafeCell<T>::get::h6e06250070b8f71a>:
;     pub const fn get(&self) -> *mut T {
 8001ef0:      	sub	sp, #0x4
 8001ef2:      	str	r0, [sp]
;     }
 8001ef4:      	add	sp, #0x4
 8001ef6:      	bx	lr

08001ef8 <core::clone::impls::<impl core::clone::Clone for usize>::clone::h6d6a24e8fb0fbfd4>:
;                     fn clone(&self) -> Self {
 8001ef8:      	sub	sp, #0x4
 8001efa:      	str	r0, [sp]
;                         *self
 8001efc:      	ldr	r0, [r0]
;                     }
 8001efe:      	add	sp, #0x4
 8001f00:      	bx	lr

08001f02 <<aligned::Aligned<A,T> as core::ops::deref::Deref>::deref::h93fb66d970004255>:
;     fn deref(&self) -> &T {
 8001f02:      	sub	sp, #0x8
 8001f04:      	str	r0, [sp]
 8001f06:      	str	r1, [sp, #0x4]
;     }
 8001f08:      	add	sp, #0x8
 8001f0a:      	bx	lr

08001f0c <core::ptr::mut_ptr::<impl *mut T>::add::h68e6f3401e9fca30>:
;     pub const unsafe fn add(self, count: usize) -> Self
 8001f0c:      	push	{r7, lr}
 8001f0e:      	mov	r7, sp
 8001f10:      	sub	sp, #0x10
 8001f12:      	str	r0, [sp, #0x8]
 8001f14:      	str	r1, [sp, #0xc]
;         unsafe { self.offset(count as isize) }
 8001f16:      	bl	#0xa
 8001f1a:      	str	r0, [sp, #0x4]
 8001f1c:      	b	#-0x2 <core::ptr::mut_ptr::<impl *mut T>::add::h68e6f3401e9fca30+0x12>
;     }
 8001f1e:      	ldr	r0, [sp, #0x4]
 8001f20:      	add	sp, #0x10
 8001f22:      	pop	{r7, pc}

08001f24 <core::ptr::mut_ptr::<impl *mut T>::offset::h73070010da1158cf>:
;     pub const unsafe fn offset(self, count: isize) -> *mut T
 8001f24:      	sub	sp, #0x10
 8001f26:      	str	r0, [sp, #0x4]
 8001f28:      	str	r1, [sp, #0x8]
;         unsafe { intrinsics::offset(self, count) as *mut T }
 8001f2a:      	add	r0, r1
 8001f2c:      	str	r0, [sp, #0xc]
 8001f2e:      	ldr	r0, [sp, #0xc]
 8001f30:      	str	r0, [sp]
 8001f32:      	b	#-0x2 <core::ptr::mut_ptr::<impl *mut T>::offset::h73070010da1158cf+0x10>
;     }
 8001f34:      	ldr	r0, [sp]
 8001f36:      	add	sp, #0x10
 8001f38:      	bx	lr

08001f3a <core::slice::<impl [T]>::len::h2d58266dd4b52f63>:
;     pub const fn len(&self) -> usize {
 8001f3a:      	sub	sp, #0x10
 8001f3c:      	str	r0, [sp, #0x8]
 8001f3e:      	str	r1, [sp, #0xc]
;         unsafe { crate::ptr::Repr { rust: self }.raw.len }
 8001f40:      	str	r0, [sp]
 8001f42:      	str	r1, [sp, #0x4]
 8001f44:      	ldr	r0, [sp, #0x4]
;     }
 8001f46:      	add	sp, #0x10
 8001f48:      	bx	lr

08001f4a <core::slice::<impl [T]>::len::h44c6c0ee8a47bf5f>:
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

08001f5a <core::slice::<impl [T]>::as_ptr::h0e0991c726938785>:
;     pub const fn as_ptr(&self) -> *const T {
 8001f5a:      	sub	sp, #0x8
 8001f5c:      	str	r0, [sp]
 8001f5e:      	str	r1, [sp, #0x4]
;     }
 8001f60:      	add	sp, #0x8
 8001f62:      	bx	lr

08001f64 <core::slice::<impl [T]>::as_ptr::hd4ae3624062998b8>:
;     pub const fn as_ptr(&self) -> *const T {
 8001f64:      	sub	sp, #0x8
 8001f66:      	str	r0, [sp]
 8001f68:      	str	r1, [sp, #0x4]
;     }
 8001f6a:      	add	sp, #0x8
 8001f6c:      	bx	lr

08001f6e <core::intrinsics::copy_nonoverlapping::h19eaabaf67107a8e>:
; pub unsafe fn copy_nonoverlapping<T>(src: *const T, dst: *mut T, count: usize) {
 8001f6e:      	push	{r7, lr}
 8001f70:      	mov	r7, sp
 8001f72:      	sub	sp, #0x10
 8001f74:      	str	r0, [sp, #0x4]
 8001f76:      	str	r1, [sp, #0x8]
 8001f78:      	str	r2, [sp, #0xc]
;     unsafe { copy_nonoverlapping(src, dst, count) }
 8001f7a:      	lsls	r2, r2, #0x2
 8001f7c:      	str	r0, [sp]
 8001f7e:      	mov	r0, r1
 8001f80:      	ldr	r1, [sp]
 8001f82:      	bl	#0x1980
 8001f86:      	b	#-0x2 <core::intrinsics::copy_nonoverlapping::h19eaabaf67107a8e+0x1a>
; }
 8001f88:      	add	sp, #0x10
 8001f8a:      	pop	{r7, pc}

08001f8c <core::intrinsics::copy_nonoverlapping::h4f371d664cc2314a>:
; pub unsafe fn copy_nonoverlapping<T>(src: *const T, dst: *mut T, count: usize) {
 8001f8c:      	push	{r7, lr}
 8001f8e:      	mov	r7, sp
 8001f90:      	sub	sp, #0x10
 8001f92:      	str	r0, [sp, #0x4]
 8001f94:      	str	r1, [sp, #0x8]
 8001f96:      	str	r2, [sp, #0xc]
;     unsafe { copy_nonoverlapping(src, dst, count) }
 8001f98:      	lsls	r2, r2, #0x2
 8001f9a:      	str	r0, [sp]
 8001f9c:      	mov	r0, r1
 8001f9e:      	ldr	r1, [sp]
 8001fa0:      	bl	#0x1962
 8001fa4:      	b	#-0x2 <core::intrinsics::copy_nonoverlapping::h4f371d664cc2314a+0x1a>
; }
 8001fa6:      	add	sp, #0x10
 8001fa8:      	pop	{r7, pc}

08001faa <core::intrinsics::copy_nonoverlapping::h6e9a30b07a92478c>:
; pub unsafe fn copy_nonoverlapping<T>(src: *const T, dst: *mut T, count: usize) {
 8001faa:      	push	{r7, lr}
 8001fac:      	mov	r7, sp
 8001fae:      	sub	sp, #0x10
 8001fb0:      	str	r0, [sp, #0x4]
 8001fb2:      	str	r1, [sp, #0x8]
 8001fb4:      	str	r2, [sp, #0xc]
;     unsafe { copy_nonoverlapping(src, dst, count) }
 8001fb6:      	str	r0, [sp]
 8001fb8:      	mov	r0, r1
 8001fba:      	ldr	r1, [sp]
 8001fbc:      	bl	#0x18c8
 8001fc0:      	b	#-0x2 <core::intrinsics::copy_nonoverlapping::h6e9a30b07a92478c+0x18>
; }
 8001fc2:      	add	sp, #0x10
 8001fc4:      	pop	{r7, pc}

08001fc6 <core::intrinsics::copy_nonoverlapping::hc903b81e1766e1e0>:
; pub unsafe fn copy_nonoverlapping<T>(src: *const T, dst: *mut T, count: usize) {
 8001fc6:      	push	{r7, lr}
 8001fc8:      	mov	r7, sp
 8001fca:      	sub	sp, #0x10
 8001fcc:      	str	r0, [sp, #0x4]
 8001fce:      	str	r1, [sp, #0x8]
 8001fd0:      	str	r2, [sp, #0xc]
;     unsafe { copy_nonoverlapping(src, dst, count) }
 8001fd2:      	lsls	r2, r2, #0x1
 8001fd4:      	str	r0, [sp]
 8001fd6:      	mov	r0, r1
 8001fd8:      	ldr	r1, [sp]
 8001fda:      	bl	#0x18aa
 8001fde:      	b	#-0x2 <core::intrinsics::copy_nonoverlapping::hc903b81e1766e1e0+0x1a>
; }
 8001fe0:      	add	sp, #0x10
 8001fe2:      	pop	{r7, pc}

08001fe4 <bare_metal::CriticalSection::new::hb503b2588b041d67>:
;     pub unsafe fn new() -> Self {
 8001fe4:      	sub	sp, #0x4
;     }
 8001fe6:      	add	sp, #0x4
 8001fe8:      	bx	lr

08001fea <core::ops::function::FnOnce::call_once::h5db7766b92da0352>:
 8001fea:      	ldr	r0, [r0]
 8001fec:      	b	#-0x4 <core::ops::function::FnOnce::call_once::h5db7766b92da0352+0x2>

08001fee <core::ptr::drop_in_place::h04a129b24451d075>:
 8001fee:      	bx	lr

08001ff0 <<T as core::any::Any>::type_id::hffc3b5436e52a86a>:
 8001ff0:      	movw	r0, #0xc5a9
 8001ff4:      	movw	r1, #0x6b5c
 8001ff8:      	movt	r0, #0x6065
 8001ffc:      	movt	r1, #0x3bd4
 8002000:      	bx	lr

08002002 <<core::panic::PanicInfo as core::fmt::Display>::fmt::hf12df5d03bc31ae1>:
 8002002:      	push	{r4, r5, r6, r7, lr}
 8002004:      	add	r7, sp, #0xc
 8002006:      	str	r11, [sp, #-4]!
 800200a:      	sub	sp, #0x38
 800200c:      	mov	r4, r1
 800200e:      	mov	r5, r0
 8002010:      	ldrd	r0, r1, [r1, #24]
 8002014:      	movs	r2, #0xc
 8002016:      	ldr	r3, [r1, #0xc]
 8002018:      	movw	r1, #0x3d68
 800201c:      	movt	r1, #0x800
 8002020:      	blx	r3
 8002022:      	cbz	r0, #0xa
 8002024:      	movs	r6, #0x1
 8002026:      	mov	r0, r6
 8002028:      	add	sp, #0x38
 800202a:      	ldr	r11, [sp], #4
 800202e:      	pop	{r4, r5, r6, r7, pc}
 8002030:      	ldr	r0, [r5, #0x8]
 8002032:      	cbz	r0, #0xe
 8002034:      	str	r0, [sp, #0x4]
 8002036:      	movw	r2, #0x2bf9
 800203a:      	ldrd	r0, r1, [r4, #24]
 800203e:      	movt	r2, #0x800
 8002042:      	b	#0x2e <<core::panic::PanicInfo as core::fmt::Display>::fmt::hf12df5d03bc31ae1+0x72>
 8002044:      	ldrd	r6, r0, [r5]
 8002048:      	ldr	r1, [r0, #0xc]
 800204a:      	mov	r0, r6
 800204c:      	blx	r1
 800204e:      	movw	r2, #0xa91e
 8002052:      	movt	r2, #0x7ef2
 8002056:      	eors	r1, r2
 8002058:      	movw	r2, #0xbcf4
 800205c:      	movt	r2, #0xecc7
 8002060:      	eors	r0, r2
 8002062:      	orrs	r0, r1
 8002064:      	bne	#0x38 <<core::panic::PanicInfo as core::fmt::Display>::fmt::hf12df5d03bc31ae1+0x9e>
 8002066:      	str	r6, [sp, #0x4]
 8002068:      	movw	r2, #0x2beb
 800206c:      	ldrd	r0, r1, [r4, #24]
 8002070:      	movt	r2, #0x800
 8002074:      	str	r2, [sp, #0xc]
 8002076:      	add	r2, sp, #0x4
 8002078:      	str	r2, [sp, #0x8]
 800207a:      	movs	r6, #0x1
 800207c:      	add	r2, sp, #0x8
 800207e:      	str	r6, [sp, #0x34]
 8002080:      	str	r2, [sp, #0x30]
 8002082:      	movs	r2, #0x0
 8002084:      	str	r2, [sp, #0x2c]
 8002086:      	str	r2, [sp, #0x28]
 8002088:      	movs	r2, #0x2
 800208a:      	str	r2, [sp, #0x24]
 800208c:      	movw	r2, #0x3d78
 8002090:      	movt	r2, #0x800
 8002094:      	str	r2, [sp, #0x20]
 8002096:      	add	r2, sp, #0x20
 8002098:      	bl	#0xb0
 800209c:      	cmp	r0, #0x0
 800209e:      	bne	#-0x7c <<core::panic::PanicInfo as core::fmt::Display>::fmt::hf12df5d03bc31ae1+0x24>
 80020a0:      	ldr	r2, [r5, #0xc]
 80020a2:      	movw	r3, #0x2af9
 80020a6:      	movt	r3, #0x800
 80020aa:      	ldrd	r0, r1, [r4, #24]
 80020ae:      	add.w	r6, r2, #0xc
 80020b2:      	str	r3, [sp, #0x1c]
 80020b4:      	strd	r3, r6, [sp, #20]
 80020b8:      	add.w	r3, r2, #0x8
 80020bc:      	str	r3, [sp, #0x10]
 80020be:      	movw	r3, #0x2c25
 80020c2:      	movt	r3, #0x800
 80020c6:      	strd	r2, r3, [sp, #8]
 80020ca:      	add	r3, sp, #0x8
 80020cc:      	movs	r2, #0x3
 80020ce:      	str	r3, [sp, #0x30]
 80020d0:      	movs	r3, #0x0
 80020d2:      	str	r2, [sp, #0x34]
 80020d4:      	str	r3, [sp, #0x2c]
 80020d6:      	strd	r2, r3, [sp, #36]
 80020da:      	movw	r2, #0x3d8c
 80020de:      	movt	r2, #0x800
 80020e2:      	str	r2, [sp, #0x20]
 80020e4:      	add	r2, sp, #0x20
 80020e6:      	bl	#0x62
 80020ea:      	mov	r6, r0
 80020ec:      	mov	r0, r6
 80020ee:      	add	sp, #0x38
 80020f0:      	ldr	r11, [sp], #4
 80020f4:      	pop	{r4, r5, r6, r7, pc}

080020f6 <core::panicking::panic::he8552e8d3d2cbe3a>:
 80020f6:      	push	{r7, lr}
 80020f8:      	mov	r7, sp
 80020fa:      	sub	sp, #0x20
 80020fc:      	mov	r12, r2
 80020fe:      	movw	r2, #0x3d48
 8002102:      	movt	r2, #0x800
 8002106:      	strd	r0, r1, [sp, #24]
 800210a:      	movs	r3, #0x0
 800210c:      	str	r2, [sp, #0x10]
 800210e:      	movs	r2, #0x1
 8002110:      	mov	r0, sp
 8002112:      	mov	r1, r12
 8002114:      	str	r3, [sp, #0x14]
 8002116:      	strd	r3, r3, [sp, #8]
 800211a:      	str	r2, [sp, #0x4]
 800211c:      	add	r2, sp, #0x18
 800211e:      	str	r2, [sp]
 8002120:      	bl	#0x2
 8002124:      	trap

08002126 <core::panicking::panic_fmt::h3d4fe709119df940>:
 8002126:      	push	{r7, lr}
 8002128:      	mov	r7, sp
 800212a:      	sub	sp, #0x10
 800212c:      	strd	r0, r1, [sp, #8]
 8002130:      	movw	r0, #0x3d58
 8002134:      	movt	r0, #0x800
 8002138:      	str	r0, [sp, #0x4]
 800213a:      	movw	r0, #0x3d48
 800213e:      	movt	r0, #0x800
 8002142:      	str	r0, [sp]
 8002144:      	mov	r0, sp
 8002146:      	bl	#0xae6
 800214a:      	trap

0800214c <core::fmt::write::h80f221a6e172bdff>:
 800214c:      	push	{r4, r5, r6, r7, lr}
 800214e:      	add	r7, sp, #0xc
 8002150:      	push.w	{r8, r9, r10, r11}
 8002154:      	sub	sp, #0x34
 8002156:      	mov	r4, r2
 8002158:      	movs	r2, #0x3
 800215a:      	ldr.w	r11, [r4, #0x8]
 800215e:      	strb.w	r2, [sp, #0x30]
 8002162:      	movs	r2, #0x20
 8002164:      	str	r2, [sp, #0x14]
 8002166:      	movs	r2, #0x0
 8002168:      	cmp.w	r11, #0x0
 800216c:      	str	r2, [sp, #0x10]
 800216e:      	str	r1, [sp, #0x2c]
 8002170:      	str	r0, [sp, #0x28]
 8002172:      	str	r2, [sp, #0x20]
 8002174:      	str	r2, [sp, #0x18]
 8002176:      	beq	#0xe2 <core::fmt::write::h80f221a6e172bdff+0x110>
 8002178:      	ldr	r2, [r4, #0xc]
 800217a:      	ldrd	r6, r10, [r4]
 800217e:      	cmp	r2, r10
 8002180:      	it	hi
 8002182:      	movhi	r2, r10
 8002184:      	cmp	r2, #0x0
 8002186:      	str	r6, [sp, #0xc]
 8002188:      	beq.w	#0x12a <core::fmt::write::h80f221a6e172bdff+0x16a>
 800218c:      	strd	r10, r2, [sp, #4]
 8002190:      	ldrd	r3, r2, [r6]
 8002194:      	ldr	r6, [r1, #0xc]
 8002196:      	mov	r1, r3
 8002198:      	blx	r6
 800219a:      	cmp	r0, #0x0
 800219c:      	bne.w	#0x142 <core::fmt::write::h80f221a6e172bdff+0x196>
 80021a0:      	ldr	r0, [sp, #0x8]
 80021a2:      	movs	r5, #0x0
 80021a4:      	ldr.w	r9, [r4, #0x10]
 80021a8:      	mov.w	r8, #0x10
 80021ac:      	sub.w	r10, r0, #0x1
 80021b0:      	add.w	r1, r11, r5, lsl #2
 80021b4:      	ldrd	r3, r2, [r1, #20]
 80021b8:      	ldrd	r0, r4, [r1, #4]
 80021bc:      	ldrb	r6, [r1, #0x1c]
 80021be:      	str	r0, [sp, #0x14]
 80021c0:      	add.w	r0, r11, r8
 80021c4:      	strb.w	r6, [sp, #0x30]
 80021c8:      	str	r4, [sp, #0x10]
 80021ca:      	cbz	r3, #0x1a
 80021cc:      	cmp	r3, #0x2
 80021ce:      	beq	#0x1a <core::fmt::write::h80f221a6e172bdff+0xa0>
 80021d0:      	add.w	r3, r9, r2, lsl #3
 80021d4:      	movw	r6, #0x1feb
 80021d8:      	movt	r6, #0x800
 80021dc:      	ldr	r3, [r3, #0x4]
 80021de:      	cmp	r3, r6
 80021e0:      	bne	#0x8 <core::fmt::write::h80f221a6e172bdff+0xa0>
 80021e2:      	ldr.w	r2, [r9, r2, lsl #3]
 80021e6:      	ldr	r2, [r2]
 80021e8:      	movs	r4, #0x1
 80021ea:      	b	#0x0 <core::fmt::write::h80f221a6e172bdff+0xa2>
 80021ec:      	movs	r4, #0x0
 80021ee:      	ldr.w	r3, [r11, r8]
 80021f2:      	strd	r4, r2, [sp, #24]
 80021f6:      	ldr	r1, [r1, #0xc]
 80021f8:      	cbz	r1, #0x1a
 80021fa:      	cmp	r1, #0x2
 80021fc:      	beq	#0x1a <core::fmt::write::h80f221a6e172bdff+0xce>
 80021fe:      	add.w	r1, r9, r3, lsl #3
 8002202:      	movw	r2, #0x1feb
 8002206:      	movt	r2, #0x800
 800220a:      	ldr	r1, [r1, #0x4]
 800220c:      	cmp	r1, r2
 800220e:      	bne	#0x8 <core::fmt::write::h80f221a6e172bdff+0xce>
 8002210:      	ldr.w	r1, [r9, r3, lsl #3]
 8002214:      	ldr	r3, [r1]
 8002216:      	movs	r1, #0x1
 8002218:      	b	#0x0 <core::fmt::write::h80f221a6e172bdff+0xd0>
 800221a:      	movs	r1, #0x0
 800221c:      	ldr	r2, [r0, #-16]
 8002220:      	str	r3, [sp, #0x24]
 8002222:      	ldr.w	r0, [r9, r2, lsl #3]
 8002226:      	add.w	r2, r9, r2, lsl #3
 800222a:      	ldr	r2, [r2, #0x4]
 800222c:      	str	r1, [sp, #0x20]
 800222e:      	add	r1, sp, #0x10
 8002230:      	blx	r2
 8002232:      	cmp	r0, #0x0
 8002234:      	bne	#0xaa <core::fmt::write::h80f221a6e172bdff+0x196>
 8002236:      	cmp.w	r10, #0x0
 800223a:      	beq	#0xae <core::fmt::write::h80f221a6e172bdff+0x1a0>
 800223c:      	ldr	r1, [sp, #0xc]
 800223e:      	ldrd	r0, r3, [sp, #40]
 8002242:      	adds	r2, r1, r5
 8002244:      	ldr	r3, [r3, #0xc]
 8002246:      	ldrd	r1, r2, [r2, #8]
 800224a:      	blx	r3
 800224c:      	sub.w	r10, r10, #0x1
 8002250:      	add.w	r8, r8, #0x20
 8002254:      	adds	r5, #0x8
 8002256:      	cmp	r0, #0x0
 8002258:      	beq	#-0xac <core::fmt::write::h80f221a6e172bdff+0x64>
 800225a:      	b	#0x84 <core::fmt::write::h80f221a6e172bdff+0x196>
 800225c:      	ldr.w	r9, [r4, #0x14]
 8002260:      	ldrd	r6, r10, [r4]
 8002264:      	cmp	r9, r10
 8002266:      	it	hi
 8002268:      	movhi	r9, r10
 800226a:      	cmp.w	r9, #0x0
 800226e:      	str	r6, [sp, #0xc]
 8002270:      	beq	#0x4c <core::fmt::write::h80f221a6e172bdff+0x174>
 8002272:      	ldrd	r3, r2, [r6]
 8002276:      	ldr	r6, [r1, #0xc]
 8002278:      	ldr	r4, [r4, #0x10]
 800227a:      	mov	r1, r3
 800227c:      	blx	r6
 800227e:      	cbnz	r0, #0x60
 8002280:      	ldr	r0, [sp, #0xc]
 8002282:      	sub.w	r5, r9, #0x1
 8002286:      	adds	r4, #0x4
 8002288:      	add.w	r8, sp, #0x10
 800228c:      	add.w	r6, r0, #0x8
 8002290:      	ldr	r0, [r4, #-4]
 8002294:      	mov	r1, r8
 8002296:      	ldr	r2, [r4]
 8002298:      	blx	r2
 800229a:      	cbnz	r0, #0x44
 800229c:      	cbz	r5, #0x24
 800229e:      	ldrd	r0, r3, [sp, #40]
 80022a2:      	ldrd	r1, r2, [r6]
 80022a6:      	ldr	r3, [r3, #0xc]
 80022a8:      	blx	r3
 80022aa:      	subs	r5, #0x1
 80022ac:      	adds	r6, #0x8
 80022ae:      	adds	r4, #0x8
 80022b0:      	cmp	r0, #0x0
 80022b2:      	beq	#-0x26 <core::fmt::write::h80f221a6e172bdff+0x144>
 80022b4:      	b	#0x2a <core::fmt::write::h80f221a6e172bdff+0x196>
 80022b6:      	mov.w	r9, #0x0
 80022ba:      	cmp	r10, r9
 80022bc:      	bhi	#0x8 <core::fmt::write::h80f221a6e172bdff+0x17c>
 80022be:      	b	#0x32 <core::fmt::write::h80f221a6e172bdff+0x1a8>
 80022c0:      	mov.w	r9, #0x0
 80022c4:      	cmp	r10, r9
 80022c6:      	bls	#0x2a <core::fmt::write::h80f221a6e172bdff+0x1a8>
 80022c8:      	ldr	r2, [sp, #0xc]
 80022ca:      	mov	r1, r9
 80022cc:      	ldrd	r0, r3, [sp, #40]
 80022d0:      	mov	r6, r9
 80022d2:      	ldr	r3, [r3, #0xc]
 80022d4:      	ldr.w	r1, [r2, r1, lsl #3]
 80022d8:      	add.w	r2, r2, r9, lsl #3
 80022dc:      	ldr	r2, [r2, #0x4]
 80022de:      	blx	r3
 80022e0:      	cbz	r0, #0x10
 80022e2:      	movs	r0, #0x1
 80022e4:      	add	sp, #0x34
 80022e6:      	pop.w	{r8, r9, r10, r11}
 80022ea:      	pop	{r4, r5, r6, r7, pc}
 80022ec:      	ldrd	r10, r9, [sp, #4]
 80022f0:      	cmp	r10, r9
 80022f2:      	bhi	#-0x2e <core::fmt::write::h80f221a6e172bdff+0x17c>
 80022f4:      	movs	r0, #0x0
 80022f6:      	add	sp, #0x34
 80022f8:      	pop.w	{r8, r9, r10, r11}
 80022fc:      	pop	{r4, r5, r6, r7, pc}
 80022fe:      	bmi	#-0x58 <core::fmt::write::h80f221a6e172bdff+0x15e>

08002300 <core::fmt::Formatter::pad_integral::h4c330cd32a698918>:
 8002300:      	push	{r4, r5, r6, r7, lr}
 8002302:      	add	r7, sp, #0xc
 8002304:      	push.w	{r8, r9, r10, r11}
 8002308:      	sub	sp, #0xc
 800230a:      	ldrd	r6, r4, [r7, #8]
 800230e:      	mov	r10, r3
 8002310:      	mov	r11, r0
 8002312:      	cbz	r1, #0x38
 8002314:      	ldr.w	lr, [r11]
 8002318:      	movs	r1, #0x2b
 800231a:      	ands	r0, lr, #0x1
 800231e:      	it	eq
 8002320:      	moveq.w	r1, #0x110000
 8002324:      	add.w	r8, r0, r4
 8002328:      	lsls.w	r0, lr, #0x1d
 800232c:      	bpl	#0x2e <core::fmt::Formatter::pad_integral::h4c330cd32a698918+0x5e>
 800232e:      	cmp.w	r10, #0x0
 8002332:      	beq	#0x48 <core::fmt::Formatter::pad_integral::h4c330cd32a698918+0x7e>
 8002334:      	sub.w	r0, r10, #0x1
 8002338:      	and	r12, r10, #0x3
 800233c:      	cmp	r0, #0x3
 800233e:      	bhs	#0x42 <core::fmt::Formatter::pad_integral::h4c330cd32a698918+0x84>
 8002340:      	mov.w	r9, #0x0
 8002344:      	mov	r3, r2
 8002346:      	cmp.w	r12, #0x0
 800234a:      	bne	#0x96 <core::fmt::Formatter::pad_integral::h4c330cd32a698918+0xe4>
 800234c:      	b	#0xca <core::fmt::Formatter::pad_integral::h4c330cd32a698918+0x11a>
 800234e:      	ldr.w	lr, [r11]
 8002352:      	add.w	r8, r4, #0x1
 8002356:      	movs	r1, #0x2d
 8002358:      	lsls.w	r0, lr, #0x1d
 800235c:      	bmi	#-0x32 <core::fmt::Formatter::pad_integral::h4c330cd32a698918+0x2e>
 800235e:      	movs	r2, #0x0
 8002360:      	mov.w	r10, #0x0
 8002364:      	ldr.w	r0, [r11, #0x8]
 8002368:      	cmp	r0, #0x1
 800236a:      	beq	#0xbc <core::fmt::Formatter::pad_integral::h4c330cd32a698918+0x12a>
 800236c:      	mov	r0, r11
 800236e:      	mov	r3, r10
 8002370:      	bl	#0x238
 8002374:      	cmp	r0, #0x0
 8002376:      	beq.w	#0xf2 <$t.225+0x16>
 800237a:      	movs	r5, #0x1
 800237c:      	b	#0x128 <$t.225+0x52>
 800237e:      	mov.w	r9, #0x0
 8002382:      	b	#0x94 <core::fmt::Formatter::pad_integral::h4c330cd32a698918+0x11a>
 8002384:      	str	r1, [sp, #0x8]
 8002386:      	bic	r1, r10, #0x3
 800238a:      	rsbs	r5, r1, #0
 800238c:      	mov.w	r9, #0x0
 8002390:      	mov	r1, r2
 8002392:      	mov	r3, r2
 8002394:      	strd	r4, r6, [sp]
 8002398:      	ldrb	r2, [r3]
 800239a:      	ldrb	r0, [r3, #0x1]
 800239c:      	and	r2, r2, #0xc0
 80023a0:      	ldrb	r6, [r3, #0x2]
 80023a2:      	ldrb	r4, [r3, #0x3]
 80023a4:      	cmp	r2, #0x80
 80023a6:      	and	r0, r0, #0xc0
 80023aa:      	it	eq
 80023ac:      	addeq.w	r9, r9, #0x1
 80023b0:      	cmp	r0, #0x80
 80023b2:      	and	r0, r6, #0xc0
 80023b6:      	it	eq
 80023b8:      	addeq.w	r9, r9, #0x1
 80023bc:      	cmp	r0, #0x80
 80023be:      	and	r0, r4, #0xc0
 80023c2:      	it	eq
 80023c4:      	addeq.w	r9, r9, #0x1
 80023c8:      	cmp	r0, #0x80
 80023ca:      	it	eq
 80023cc:      	addeq.w	r9, r9, #0x1
 80023d0:      	adds	r3, #0x4
 80023d2:      	adds	r5, #0x4
 80023d4:      	bne	#-0x40 <core::fmt::Formatter::pad_integral::h4c330cd32a698918+0x98>
 80023d6:      	mov	r2, r1
 80023d8:      	ldrd	r4, r6, [sp]
 80023dc:      	ldr	r1, [sp, #0x8]
 80023de:      	cmp.w	r12, #0x0
 80023e2:      	beq	#0x34 <core::fmt::Formatter::pad_integral::h4c330cd32a698918+0x11a>
 80023e4:      	ldrb	r0, [r3]
 80023e6:      	and	r0, r0, #0xc0
 80023ea:      	cmp	r0, #0x80
 80023ec:      	it	eq
 80023ee:      	addeq.w	r9, r9, #0x1
 80023f2:      	cmp.w	r12, #0x1
 80023f6:      	beq	#0x20 <core::fmt::Formatter::pad_integral::h4c330cd32a698918+0x11a>
 80023f8:      	ldrb	r0, [r3, #0x1]
 80023fa:      	and	r0, r0, #0xc0
 80023fe:      	cmp	r0, #0x80
 8002400:      	it	eq
 8002402:      	addeq.w	r9, r9, #0x1
 8002406:      	cmp.w	r12, #0x2
 800240a:      	beq	#0xc <core::fmt::Formatter::pad_integral::h4c330cd32a698918+0x11a>
 800240c:      	ldrb	r0, [r3, #0x2]
 800240e:      	and	r0, r0, #0xc0
 8002412:      	cmp	r0, #0x80
 8002414:      	it	eq
 8002416:      	addeq.w	r9, r9, #0x1
 800241a:      	add.w	r0, r8, r10
 800241e:      	sub.w	r8, r0, r9
 8002422:      	ldr.w	r0, [r11, #0x8]
 8002426:      	cmp	r0, #0x1
 8002428:      	bne	#-0xc0 <core::fmt::Formatter::pad_integral::h4c330cd32a698918+0x6c>
 800242a:      	ldr.w	r9, [r11, #0xc]
 800242e:      	cmp	r9, r8
 8002430:      	bls	#0x2a <$t.225+0x8>
 8002432:      	lsls.w	r0, lr, #0x1c
 8002436:      	bmi	#0x4c <$t.225+0x30>
 8002438:      	str	r2, [sp, #0x4]
 800243a:      	sub.w	r0, r9, r8
 800243e:      	ldrb.w	r2, [r11, #0x20]
 8002442:      	movs	r5, #0x0
 8002444:      	mov	r9, r0
 8002446:      	cmp	r2, #0x3
 8002448:      	it	eq
 800244a:      	moveq	r2, #0x1
 800244c:      	str	r1, [sp, #0x8]
 800244e:      	tbb	[pc, r2]

08002452 <$d.224>:
 8002452:	45 02 41 02	.word	0x02410245

08002456 <$t.225>:
 8002456:      	mov.w	r9, #0x0
 800245a:      	mov	r5, r0
 800245c:      	b	#0x7c <$t.227+0xe>
 800245e:      	mov	r0, r11
 8002460:      	mov	r3, r10
 8002462:      	bl	#0x146
 8002466:      	cmp	r0, #0x0
 8002468:      	bne.w	#0xf4 <$t.227+0x92>
 800246c:      	ldr.w	r1, [r11, #0x1c]
 8002470:      	mov	r2, r4
 8002472:      	ldr.w	r0, [r11, #0x18]
 8002476:      	ldr	r3, [r1, #0xc]
 8002478:      	mov	r1, r6
 800247a:      	add	sp, #0xc
 800247c:      	pop.w	{r8, r9, r10, r11}
 8002480:      	pop.w	{r4, r5, r6, r7, lr}
 8002484:      	bx	r3
 8002486:      	ldr.w	r0, [r11, #0x4]
 800248a:      	movs	r5, #0x1
 800248c:      	str	r0, [sp, #0x8]
 800248e:      	movs	r0, #0x30
 8002490:      	ldrb.w	r3, [r11, #0x20]
 8002494:      	str	r3, [sp, #0x4]
 8002496:      	mov	r3, r10
 8002498:      	str.w	r0, [r11, #0x4]
 800249c:      	mov	r0, r11
 800249e:      	strb.w	r5, [r11, #0x20]
 80024a2:      	bl	#0x106
 80024a6:      	cbz	r0, #0x8
 80024a8:      	mov	r0, r5
 80024aa:      	add	sp, #0xc
 80024ac:      	pop.w	{r8, r9, r10, r11}
 80024b0:      	pop	{r4, r5, r6, r7, pc}
 80024b2:      	ldrb.w	r2, [r11, #0x20]
 80024b6:      	sub.w	r1, r9, r8
 80024ba:      	movs	r0, #0x0
 80024bc:      	mov	r9, r6
 80024be:      	cmp	r2, #0x3
 80024c0:      	it	eq
 80024c2:      	moveq	r2, #0x1
 80024c4:      	mov	r5, r1
 80024c6:      	tbb	[pc, r2]

080024ca <$d.226>:
 80024ca:	36 02 33 02	.word	0x02330236

080024ce <$t.227>:
 80024ce:      	movs	r5, #0x0
 80024d0:      	mov	r0, r1
 80024d2:      	b	#0x60 <$t.227+0x68>
 80024d4:      	adds	r1, r0, #0x1
 80024d6:      	lsrs	r5, r0, #0x1
 80024d8:      	lsr.w	r9, r1, #0x1
 80024dc:      	adds	r5, #0x1
 80024de:      	subs	r5, #0x1
 80024e0:      	beq	#0x10 <$t.227+0x26>
 80024e2:      	ldrd	r0, r2, [r11, #24]
 80024e6:      	ldr.w	r1, [r11, #0x4]
 80024ea:      	ldr	r2, [r2, #0x10]
 80024ec:      	blx	r2
 80024ee:      	cmp	r0, #0x0
 80024f0:      	beq	#-0x16 <$t.227+0x10>
 80024f2:      	b	#0x6a <$t.227+0x92>
 80024f4:      	ldrd	r2, r1, [sp, #4]
 80024f8:      	mov	r0, r11
 80024fa:      	mov	r3, r10
 80024fc:      	ldr.w	r8, [r11, #0x4]
 8002500:      	bl	#0xa8
 8002504:      	cbnz	r0, #0x58
 8002506:      	ldrd	r0, r1, [r11, #24]
 800250a:      	mov	r2, r4
 800250c:      	ldr	r3, [r1, #0xc]
 800250e:      	mov	r1, r6
 8002510:      	blx	r3
 8002512:      	cbnz	r0, #0x4a
 8002514:      	ldrd	r10, r4, [r11, #24]
 8002518:      	add.w	r6, r9, #0x1
 800251c:      	movs	r5, #0x1
 800251e:      	subs	r6, #0x1
 8002520:      	beq	#0x64 <$t.227+0xba>
 8002522:      	ldr	r2, [r4, #0x10]
 8002524:      	mov	r0, r10
 8002526:      	mov	r1, r8
 8002528:      	blx	r2
 800252a:      	cmp	r0, #0x0
 800252c:      	beq	#-0x12 <$t.227+0x50>
 800252e:      	b	#-0x8a <$t.225+0x52>
 8002530:      	lsrs	r0, r1, #0x1
 8002532:      	adds	r1, #0x1
 8002534:      	lsrs	r5, r1, #0x1
 8002536:      	adds	r6, r0, #0x1
 8002538:      	subs	r6, #0x1
 800253a:      	beq	#0x10 <$t.227+0x80>
 800253c:      	ldrd	r0, r2, [r11, #24]
 8002540:      	ldr.w	r1, [r11, #0x4]
 8002544:      	ldr	r2, [r2, #0x10]
 8002546:      	blx	r2
 8002548:      	cmp	r0, #0x0
 800254a:      	beq	#-0x16 <$t.227+0x6a>
 800254c:      	b	#0x10 <$t.227+0x92>
 800254e:      	ldrd	r0, r1, [r11, #24]
 8002552:      	mov	r2, r4
 8002554:      	ldr	r3, [r1, #0xc]
 8002556:      	mov	r1, r9
 8002558:      	ldr.w	r8, [r11, #0x4]
 800255c:      	blx	r3
 800255e:      	cbz	r0, #0xa
 8002560:      	movs	r5, #0x1
 8002562:      	mov	r0, r5
 8002564:      	add	sp, #0xc
 8002566:      	pop.w	{r8, r9, r10, r11}
 800256a:      	pop	{r4, r5, r6, r7, pc}
 800256c:      	ldrd	r9, r10, [r11, #24]
 8002570:      	adds	r6, r5, #0x1
 8002572:      	movs	r5, #0x1
 8002574:      	subs	r6, #0x1
 8002576:      	beq	#0x1a <$t.227+0xc6>
 8002578:      	ldr.w	r2, [r10, #0x10]
 800257c:      	mov	r0, r9
 800257e:      	mov	r1, r8
 8002580:      	blx	r2
 8002582:      	cmp	r0, #0x0
 8002584:      	beq	#-0x14 <$t.227+0xa6>
 8002586:      	b	#-0xe2 <$t.225+0x52>
 8002588:      	movs	r5, #0x0
 800258a:      	mov	r0, r5
 800258c:      	add	sp, #0xc
 800258e:      	pop.w	{r8, r9, r10, r11}
 8002592:      	pop	{r4, r5, r6, r7, pc}
 8002594:      	ldr	r0, [sp, #0x4]
 8002596:      	movs	r5, #0x0
 8002598:      	strb.w	r0, [r11, #0x20]
 800259c:      	ldr	r0, [sp, #0x8]
 800259e:      	str.w	r0, [r11, #0x4]
 80025a2:      	mov	r0, r5
 80025a4:      	add	sp, #0xc
 80025a6:      	pop.w	{r8, r9, r10, r11}
 80025aa:      	pop	{r4, r5, r6, r7, pc}

080025ac <core::fmt::Formatter::pad_integral::write_prefix::h43274d4e4dd7a787>:
 80025ac:      	push	{r4, r5, r6, r7, lr}
 80025ae:      	add	r7, sp, #0xc
 80025b0:      	str	r11, [sp, #-4]!
 80025b4:      	mov	r4, r3
 80025b6:      	mov	r5, r2
 80025b8:      	mov	r6, r0
 80025ba:      	cmp.w	r1, #0x110000
 80025be:      	beq	#0x10 <core::fmt::Formatter::pad_integral::write_prefix::h43274d4e4dd7a787+0x26>
 80025c0:      	ldrd	r0, r2, [r6, #24]
 80025c4:      	ldr	r2, [r2, #0x10]
 80025c6:      	blx	r2
 80025c8:      	cbz	r0, #0x6
 80025ca:      	movs	r0, #0x1
 80025cc:      	ldr	r11, [sp], #4
 80025d0:      	pop	{r4, r5, r6, r7, pc}
 80025d2:      	cbz	r5, #0x12
 80025d4:      	ldrd	r0, r1, [r6, #24]
 80025d8:      	mov	r2, r4
 80025da:      	ldr	r3, [r1, #0xc]
 80025dc:      	mov	r1, r5
 80025de:      	ldr	r11, [sp], #4
 80025e2:      	pop.w	{r4, r5, r6, r7, lr}
 80025e6:      	bx	r3
 80025e8:      	movs	r0, #0x0
 80025ea:      	ldr	r11, [sp], #4
 80025ee:      	pop	{r4, r5, r6, r7, pc}

080025f0 <core::fmt::Formatter::pad::hdd2f8bc43cf2bd72>:
 80025f0:      	push	{r4, r5, r6, r7, lr}
 80025f2:      	add	r7, sp, #0xc
 80025f4:      	push.w	{r8, r9, r10, r11}
 80025f8:      	sub	sp, #0x4
 80025fa:      	ldr.w	lr, [r0, #0x8]
 80025fe:      	mov	r11, r0
 8002600:      	ldr	r0, [r0, #0x10]
 8002602:      	mov	r9, r2
 8002604:      	mov	r4, r1
 8002606:      	cmp.w	lr, #0x1
 800260a:      	bne	#0x26 <core::fmt::Formatter::pad::hdd2f8bc43cf2bd72+0x44>
 800260c:      	cmp	r0, #0x1
 800260e:      	beq	#0x28 <core::fmt::Formatter::pad::hdd2f8bc43cf2bd72+0x4a>
 8002610:      	cmp.w	r9, #0x0
 8002614:      	beq.w	#0x240 <core::fmt::Formatter::pad::hdd2f8bc43cf2bd72+0x268>
 8002618:      	sub.w	lr, r9, #0x1
 800261c:      	and	r12, r9, #0x3
 8002620:      	cmp.w	lr, #0x3
 8002624:      	bhs	#0xd4 <core::fmt::Formatter::pad::hdd2f8bc43cf2bd72+0x10c>
 8002626:      	movs	r3, #0x0
 8002628:      	mov	r1, r4
 800262a:      	cmp.w	r12, #0x0
 800262e:      	bne.w	#0x114 <core::fmt::Formatter::pad::hdd2f8bc43cf2bd72+0x156>
 8002632:      	b	#0x140 <core::fmt::Formatter::pad::hdd2f8bc43cf2bd72+0x186>
 8002634:      	cmp	r0, #0x1
 8002636:      	bne.w	#0x252 <$t.231+0x8>
 800263a:      	ldr.w	r3, [r11, #0x14]
 800263e:      	add.w	r5, r4, r9
 8002642:      	movs	r2, #0x0
 8002644:      	mov	r0, r4
 8002646:      	str	r4, [sp]
 8002648:      	cbnz	r3, #0x4a
 800264a:      	cmp	r5, r0
 800264c:      	beq	#0x9e <core::fmt::Formatter::pad::hdd2f8bc43cf2bd72+0xfe>
 800264e:      	mov	r1, r0
 8002650:      	ldr	r4, [sp]
 8002652:      	ldrsb	r3, [r1], #1
 8002656:      	cmp.w	r3, #0xffffffff
 800265a:      	ble.w	#0x138 <core::fmt::Formatter::pad::hdd2f8bc43cf2bd72+0x1a6>
 800265e:      	cmp	r2, #0x0
 8002660:      	it	ne
 8002662:      	cmpne	r2, r9
 8002664:      	bne.w	#0x1c4 <core::fmt::Formatter::pad::hdd2f8bc43cf2bd72+0x23c>
 8002668:      	mov	r0, r4
 800266a:      	b	#0x1d0 <core::fmt::Formatter::pad::hdd2f8bc43cf2bd72+0x24e>
 800266c:      	ldrb	r0, [r1], #1
 8002670:      	and	r8, r0, #0x3f
 8002674:      	mov	r0, r1
 8002676:      	mov.w	r1, #0x1c0000
 800267a:      	and.w	r1, r1, r6, lsl #18
 800267e:      	orr.w	r1, r1, r10, lsl #12
 8002682:      	orr.w	r1, r1, r12, lsl #6
 8002686:      	add	r1, r8
 8002688:      	cmp.w	r1, #0x110000
 800268c:      	beq	#0x5e <core::fmt::Formatter::pad::hdd2f8bc43cf2bd72+0xfe>
 800268e:      	subs	r1, r0, r4
 8002690:      	subs	r3, #0x1
 8002692:      	add	r2, r1
 8002694:      	beq	#-0x4e <core::fmt::Formatter::pad::hdd2f8bc43cf2bd72+0x5a>
 8002696:      	cmp	r5, r0
 8002698:      	beq	#0x52 <core::fmt::Formatter::pad::hdd2f8bc43cf2bd72+0xfe>
 800269a:      	mov	r4, r0
 800269c:      	ldrsb	r1, [r0], #1
 80026a0:      	cmp.w	r1, #0xffffffff
 80026a4:      	bgt	#-0x1a <core::fmt::Formatter::pad::hdd2f8bc43cf2bd72+0x9e>
 80026a6:      	uxtb	r6, r1
 80026a8:      	cmp	r0, r5
 80026aa:      	beq	#0xe <core::fmt::Formatter::pad::hdd2f8bc43cf2bd72+0xcc>
 80026ac:      	ldrb	r1, [r4, #0x1]
 80026ae:      	adds	r0, r4, #0x2
 80026b0:      	and	r10, r1, #0x3f
 80026b4:      	mov	r1, r0
 80026b6:      	cmp	r6, #0xe0
 80026b8:      	blo	#-0x2e <core::fmt::Formatter::pad::hdd2f8bc43cf2bd72+0x9e>
 80026ba:      	b	#0x8 <core::fmt::Formatter::pad::hdd2f8bc43cf2bd72+0xd6>
 80026bc:      	mov.w	r10, #0x0
 80026c0:      	mov	r1, r5
 80026c2:      	cmp	r6, #0xe0
 80026c4:      	blo	#-0x3a <core::fmt::Formatter::pad::hdd2f8bc43cf2bd72+0x9e>
 80026c6:      	cmp	r1, r5
 80026c8:      	beq	#0xe <core::fmt::Formatter::pad::hdd2f8bc43cf2bd72+0xea>
 80026ca:      	ldrb	r0, [r1], #1
 80026ce:      	and	r12, r0, #0x3f
 80026d2:      	mov	r0, r1
 80026d4:      	cmp	r6, #0xf0
 80026d6:      	blo	#-0x4c <core::fmt::Formatter::pad::hdd2f8bc43cf2bd72+0x9e>
 80026d8:      	b	#0x8 <core::fmt::Formatter::pad::hdd2f8bc43cf2bd72+0xf4>
 80026da:      	mov.w	r12, #0x0
 80026de:      	mov	r1, r5
 80026e0:      	cmp	r6, #0xf0
 80026e2:      	blo	#-0x58 <core::fmt::Formatter::pad::hdd2f8bc43cf2bd72+0x9e>
 80026e4:      	cmp	r1, r5
 80026e6:      	bne	#-0x7e <core::fmt::Formatter::pad::hdd2f8bc43cf2bd72+0x7c>
 80026e8:      	mov.w	r8, #0x0
 80026ec:      	b	#-0x7a <core::fmt::Formatter::pad::hdd2f8bc43cf2bd72+0x86>
 80026ee:      	mov	r2, r9
 80026f0:      	ldr	r4, [sp]
 80026f2:      	cmp.w	lr, #0x1
 80026f6:      	bne.w	#0x252 <$t.231+0xc8>
 80026fa:      	b	#0x150 <core::fmt::Formatter::pad::hdd2f8bc43cf2bd72+0x25e>
 80026fc:      	bic	r1, r9, #0x3
 8002700:      	movs	r3, #0x0
 8002702:      	rsbs	r6, r1, #0
 8002704:      	mov	r8, r4
 8002706:      	mov	r1, r4
 8002708:      	ldrb	r5, [r1]
 800270a:      	ldrb	r4, [r1, #0x1]
 800270c:      	ldrb	r0, [r1, #0x2]
 800270e:      	and	r5, r5, #0xc0
 8002712:      	ldrb	r2, [r1, #0x3]
 8002714:      	cmp	r5, #0x80
 8002716:      	and	r4, r4, #0xc0
 800271a:      	it	eq
 800271c:      	addeq	r3, #0x1
 800271e:      	cmp	r4, #0x80
 8002720:      	and	r0, r0, #0xc0
 8002724:      	it	eq
 8002726:      	addeq	r3, #0x1
 8002728:      	cmp	r0, #0x80
 800272a:      	and	r0, r2, #0xc0
 800272e:      	it	eq
 8002730:      	addeq	r3, #0x1
 8002732:      	cmp	r0, #0x80
 8002734:      	it	eq
 8002736:      	addeq	r3, #0x1
 8002738:      	adds	r1, #0x4
 800273a:      	adds	r6, #0x4
 800273c:      	bne	#-0x38 <core::fmt::Formatter::pad::hdd2f8bc43cf2bd72+0x118>
 800273e:      	mov	r4, r8
 8002740:      	cmp.w	r12, #0x0
 8002744:      	beq	#0x2e <core::fmt::Formatter::pad::hdd2f8bc43cf2bd72+0x186>
 8002746:      	ldrb	r0, [r1]
 8002748:      	and	r0, r0, #0xc0
 800274c:      	cmp	r0, #0x80
 800274e:      	it	eq
 8002750:      	addeq	r3, #0x1
 8002752:      	cmp.w	r12, #0x1
 8002756:      	beq	#0x1c <core::fmt::Formatter::pad::hdd2f8bc43cf2bd72+0x186>
 8002758:      	ldrb	r0, [r1, #0x1]
 800275a:      	and	r0, r0, #0xc0
 800275e:      	cmp	r0, #0x80
 8002760:      	it	eq
 8002762:      	addeq	r3, #0x1
 8002764:      	cmp.w	r12, #0x2
 8002768:      	beq	#0xa <core::fmt::Formatter::pad::hdd2f8bc43cf2bd72+0x186>
 800276a:      	ldrb	r0, [r1, #0x2]
 800276c:      	and	r0, r0, #0xc0
 8002770:      	cmp	r0, #0x80
 8002772:      	it	eq
 8002774:      	addeq	r3, #0x1
 8002776:      	ldr.w	r8, [r11, #0xc]
 800277a:      	sub.w	r0, r9, r3
 800277e:      	cmp	r0, r8
 8002780:      	bhs.w	#0x108 <$t.231+0x8>
 8002784:      	cmp.w	lr, #0x3
 8002788:      	bhs	#0x24 <core::fmt::Formatter::pad::hdd2f8bc43cf2bd72+0x1c0>
 800278a:      	movs	r2, #0x0
 800278c:      	mov	r3, r4
 800278e:      	cmp.w	r12, #0x0
 8002792:      	bne	#0x64 <core::fmt::Formatter::pad::hdd2f8bc43cf2bd72+0x20a>
 8002794:      	b	#0xcc <core::fmt::Formatter::pad::hdd2f8bc43cf2bd72+0x274>
 8002796:      	uxtb	r3, r3
 8002798:      	cmp	r1, r5
 800279a:      	beq.w	#0x158 <$t.231+0x72>
 800279e:      	ldrb	r1, [r0, #0x1]
 80027a0:      	adds	r0, #0x2
 80027a2:      	and	r1, r1, #0x3f
 80027a6:      	lsls	r1, r1, #0x6
 80027a8:      	cmp	r3, #0xe0
 80027aa:      	bhs.w	#0x152 <$t.231+0x7c>
 80027ae:      	b	#-0x154 <core::fmt::Formatter::pad::hdd2f8bc43cf2bd72+0x6e>
 80027b0:      	bic	r0, r9, #0x3
 80027b4:      	movs	r2, #0x0
 80027b6:      	rsbs	r6, r0, #0
 80027b8:      	mov	lr, r4
 80027ba:      	mov	r3, r4
 80027bc:      	ldrb	r0, [r3]
 80027be:      	ldrb	r5, [r3, #0x1]
 80027c0:      	and	r0, r0, #0xc0
 80027c4:      	ldrb	r4, [r3, #0x2]
 80027c6:      	ldrb	r1, [r3, #0x3]
 80027c8:      	cmp	r0, #0x80
 80027ca:      	and	r0, r5, #0xc0
 80027ce:      	it	eq
 80027d0:      	addeq	r2, #0x1
 80027d2:      	cmp	r0, #0x80
 80027d4:      	and	r0, r4, #0xc0
 80027d8:      	it	eq
 80027da:      	addeq	r2, #0x1
 80027dc:      	cmp	r0, #0x80
 80027de:      	and	r0, r1, #0xc0
 80027e2:      	it	eq
 80027e4:      	addeq	r2, #0x1
 80027e6:      	cmp	r0, #0x80
 80027e8:      	it	eq
 80027ea:      	addeq	r2, #0x1
 80027ec:      	adds	r3, #0x4
 80027ee:      	adds	r6, #0x4
 80027f0:      	bne	#-0x38 <core::fmt::Formatter::pad::hdd2f8bc43cf2bd72+0x1cc>
 80027f2:      	mov	r4, lr
 80027f4:      	cmp.w	r12, #0x0
 80027f8:      	beq	#0x68 <core::fmt::Formatter::pad::hdd2f8bc43cf2bd72+0x274>
 80027fa:      	ldrb	r0, [r3]
 80027fc:      	and	r0, r0, #0xc0
 8002800:      	cmp	r0, #0x80
 8002802:      	it	eq
 8002804:      	addeq	r2, #0x1
 8002806:      	cmp.w	r12, #0x1
 800280a:      	beq	#0x56 <core::fmt::Formatter::pad::hdd2f8bc43cf2bd72+0x274>
 800280c:      	ldrb	r0, [r3, #0x1]
 800280e:      	and	r0, r0, #0xc0
 8002812:      	cmp	r0, #0x80
 8002814:      	it	eq
 8002816:      	addeq	r2, #0x1
 8002818:      	cmp.w	r12, #0x2
 800281c:      	beq	#0x44 <core::fmt::Formatter::pad::hdd2f8bc43cf2bd72+0x274>
 800281e:      	ldrb	r0, [r3, #0x2]
 8002820:      	and	r0, r0, #0xc0
 8002824:      	cmp	r0, #0x80
 8002826:      	it	eq
 8002828:      	addeq	r2, #0x1
 800282a:      	b	#0x36 <core::fmt::Formatter::pad::hdd2f8bc43cf2bd72+0x274>
 800282c:      	cmp	r2, r9
 800282e:      	bhs	#0x8 <core::fmt::Formatter::pad::hdd2f8bc43cf2bd72+0x24a>
 8002830:      	ldrsb	r0, [r4, r2]
 8002832:      	cmn.w	r0, #0x40
 8002836:      	bge.w	#-0x1d2 <core::fmt::Formatter::pad::hdd2f8bc43cf2bd72+0x78>
 800283a:      	movs	r0, #0x0
 800283c:      	movs	r2, #0x0
 800283e:      	cmp	r0, #0x0
 8002840:      	ite	eq
 8002842:      	moveq	r2, r9
 8002844:      	movne	r4, r0
 8002846:      	cmp.w	lr, #0x1
 800284a:      	bne.w	#0xfe <$t.231+0xc8>
 800284e:      	mov	r9, r2
 8002850:      	cmp.w	r9, #0x0
 8002854:      	bne.w	#-0x240 <core::fmt::Formatter::pad::hdd2f8bc43cf2bd72+0x28>
 8002858:      	ldr.w	r8, [r11, #0xc]
 800285c:      	cmp.w	r8, #0x0
 8002860:      	beq	#0x28 <$t.231+0x8>
 8002862:      	movs	r2, #0x0
 8002864:      	ldrb.w	r0, [r11, #0x20]
 8002868:      	mov	r5, r4
 800286a:      	subs	r3, r0, #0x3
 800286c:      	it	ne
 800286e:      	movne	r3, r0
 8002870:      	sub.w	r0, r2, r9
 8002874:      	add.w	r1, r0, r8
 8002878:      	movs	r0, #0x0
 800287a:      	mov	r10, r1
 800287c:      	tbb	[pc, r3]

08002880 <$d.230>:
 8002880:	10 02 0c 02	.word	0x020c0210

08002884 <$t.231>:
 8002884:      	mov.w	r10, #0x0
 8002888:      	mov	r0, r1
 800288a:      	b	#0x12 <$t.231+0x1c>
 800288c:      	ldr.w	r1, [r11, #0x1c]
 8002890:      	mov	r2, r9
 8002892:      	ldr.w	r0, [r11, #0x18]
 8002896:      	b	#0xb6 <$t.231+0xcc>
 8002898:      	lsrs	r0, r1, #0x1
 800289a:      	adds	r1, #0x1
 800289c:      	lsr.w	r10, r1, #0x1
 80028a0:      	adds	r4, r0, #0x1
 80028a2:      	subs	r4, #0x1
 80028a4:      	beq	#0x10 <$t.231+0x34>
 80028a6:      	ldrd	r0, r2, [r11, #24]
 80028aa:      	ldr.w	r1, [r11, #0x4]
 80028ae:      	ldr	r2, [r2, #0x10]
 80028b0:      	blx	r2
 80028b2:      	cmp	r0, #0x0
 80028b4:      	beq	#-0x16 <$t.231+0x1e>
 80028b6:      	b	#0x28 <$t.231+0x5e>
 80028b8:      	ldrd	r0, r1, [r11, #24]
 80028bc:      	mov	r2, r9
 80028be:      	ldr	r3, [r1, #0xc]
 80028c0:      	mov	r1, r5
 80028c2:      	ldr.w	r8, [r11, #0x4]
 80028c6:      	blx	r3
 80028c8:      	cbnz	r0, #0x16
 80028ca:      	ldrd	r6, r5, [r11, #24]
 80028ce:      	add.w	r4, r10, #0x1
 80028d2:      	subs	r4, #0x1
 80028d4:      	beq	#0x14 <$t.231+0x68>
 80028d6:      	ldr	r2, [r5, #0x10]
 80028d8:      	mov	r0, r6
 80028da:      	mov	r1, r8
 80028dc:      	blx	r2
 80028de:      	cmp	r0, #0x0
 80028e0:      	beq	#-0x12 <$t.231+0x4e>
 80028e2:      	movs	r0, #0x1
 80028e4:      	add	sp, #0x4
 80028e6:      	pop.w	{r8, r9, r10, r11}
 80028ea:      	pop	{r4, r5, r6, r7, pc}
 80028ec:      	movs	r0, #0x0
 80028ee:      	add	sp, #0x4
 80028f0:      	pop.w	{r8, r9, r10, r11}
 80028f4:      	pop	{r4, r5, r6, r7, pc}
 80028f6:      	movs	r1, #0x0
 80028f8:      	mov	r0, r5
 80028fa:      	cmp	r3, #0xe0
 80028fc:      	blo.w	#-0x2a2 <core::fmt::Formatter::pad::hdd2f8bc43cf2bd72+0x6e>
 8002900:      	cmp	r0, r5
 8002902:      	beq	#0xe <$t.231+0x90>
 8002904:      	ldrb	r6, [r0], #1
 8002908:      	and	r6, r6, #0x3f
 800290c:      	cmp	r3, #0xf0
 800290e:      	blo.w	#-0x2b4 <core::fmt::Formatter::pad::hdd2f8bc43cf2bd72+0x6e>
 8002912:      	b	#0x8 <$t.231+0x9a>
 8002914:      	movs	r6, #0x0
 8002916:      	mov	r0, r5
 8002918:      	cmp	r3, #0xf0
 800291a:      	blo.w	#-0x2c0 <core::fmt::Formatter::pad::hdd2f8bc43cf2bd72+0x6e>
 800291e:      	orrs	r1, r6
 8002920:      	mov.w	r6, #0x1c0000
 8002924:      	and.w	r3, r6, r3, lsl #18
 8002928:      	cmp	r0, r5
 800292a:      	itte	ne
 800292c:      	ldrbne	r0, [r0]
 800292e:      	andne	r0, r0, #0x3f
 8002932:      	moveq	r0, #0x0
 8002934:      	orr.w	r1, r3, r1, lsl #6
 8002938:      	add	r0, r1
 800293a:      	cmp.w	r0, #0x110000
 800293e:      	bne.w	#-0x2e4 <core::fmt::Formatter::pad::hdd2f8bc43cf2bd72+0x6e>
 8002942:      	mov	r2, r9
 8002944:      	cmp.w	lr, #0x1
 8002948:      	beq.w	#-0xfe <core::fmt::Formatter::pad::hdd2f8bc43cf2bd72+0x25e>
 800294c:      	ldrd	r0, r1, [r11, #24]
 8002950:      	ldr	r3, [r1, #0xc]
 8002952:      	mov	r1, r4
 8002954:      	add	sp, #0x4
 8002956:      	pop.w	{r8, r9, r10, r11}
 800295a:      	pop.w	{r4, r5, r6, r7, lr}
 800295e:      	bx	r3

08002960 <core::slice::index::slice_start_index_len_fail::h353454303241f046>:
 8002960:      	push	{r7, lr}
 8002962:      	mov	r7, sp
 8002964:      	sub	sp, #0x30
 8002966:      	strd	r0, r1, [sp]
 800296a:      	add	r1, sp, #0x20
 800296c:      	movs	r0, #0x2
 800296e:      	str	r1, [sp, #0x18]
 8002970:      	movs	r1, #0x0
 8002972:      	str	r0, [sp, #0x1c]
 8002974:      	str	r1, [sp, #0x14]
 8002976:      	strd	r0, r1, [sp, #12]
 800297a:      	movw	r0, #0x3ed0
 800297e:      	movt	r0, #0x800
 8002982:      	add	r1, sp, #0x4
 8002984:      	str	r0, [sp, #0x8]
 8002986:      	movw	r0, #0x2af9
 800298a:      	movt	r0, #0x800
 800298e:      	str	r0, [sp, #0x2c]
 8002990:      	strd	r0, r1, [sp, #36]
 8002994:      	mov	r0, sp
 8002996:      	str	r0, [sp, #0x20]
 8002998:      	add	r0, sp, #0x8
 800299a:      	mov	r1, r2
 800299c:      	bl	#-0x87a
 80029a0:      	trap

080029a2 <core::slice::index::slice_end_index_len_fail::ha5ee0bc768bf016f>:
 80029a2:      	push	{r7, lr}
 80029a4:      	mov	r7, sp
 80029a6:      	sub	sp, #0x30
 80029a8:      	strd	r0, r1, [sp]
 80029ac:      	add	r1, sp, #0x20
 80029ae:      	movs	r0, #0x2
 80029b0:      	str	r1, [sp, #0x18]
 80029b2:      	movs	r1, #0x0
 80029b4:      	str	r0, [sp, #0x1c]
 80029b6:      	str	r1, [sp, #0x14]
 80029b8:      	strd	r0, r1, [sp, #12]
 80029bc:      	movw	r0, #0x3ee0
 80029c0:      	movt	r0, #0x800
 80029c4:      	add	r1, sp, #0x4
 80029c6:      	str	r0, [sp, #0x8]
 80029c8:      	movw	r0, #0x2af9
 80029cc:      	movt	r0, #0x800
 80029d0:      	str	r0, [sp, #0x2c]
 80029d2:      	strd	r0, r1, [sp, #36]
 80029d6:      	mov	r0, sp
 80029d8:      	str	r0, [sp, #0x20]
 80029da:      	add	r0, sp, #0x8
 80029dc:      	mov	r1, r2
 80029de:      	bl	#-0x8bc
 80029e2:      	trap

080029e4 <core::slice::index::slice_index_order_fail::h4fa9bc0fa097e730>:
 80029e4:      	push	{r7, lr}
 80029e6:      	mov	r7, sp
 80029e8:      	sub	sp, #0x30
 80029ea:      	strd	r0, r1, [sp]
 80029ee:      	add	r1, sp, #0x20
 80029f0:      	movs	r0, #0x2
 80029f2:      	str	r1, [sp, #0x18]
 80029f4:      	movs	r1, #0x0
 80029f6:      	str	r0, [sp, #0x1c]
 80029f8:      	str	r1, [sp, #0x14]
 80029fa:      	strd	r0, r1, [sp, #12]
 80029fe:      	movw	r0, #0x3f14
 8002a02:      	movt	r0, #0x800
 8002a06:      	add	r1, sp, #0x4
 8002a08:      	str	r0, [sp, #0x8]
 8002a0a:      	movw	r0, #0x2af9
 8002a0e:      	movt	r0, #0x800
 8002a12:      	str	r0, [sp, #0x2c]
 8002a14:      	strd	r0, r1, [sp, #36]
 8002a18:      	mov	r0, sp
 8002a1a:      	str	r0, [sp, #0x20]
 8002a1c:      	add	r0, sp, #0x8
 8002a1e:      	mov	r1, r2
 8002a20:      	bl	#-0x8fe
 8002a24:      	trap

08002a26 <core::fmt::num::<impl core::fmt::UpperHex for usize>::fmt::h2baf5da618e98d0a>:
 8002a26:      	push	{r4, r5, r7, lr}
 8002a28:      	add	r7, sp, #0x8
 8002a2a:      	sub	sp, #0x88
 8002a2c:      	ldr	r0, [r0]
 8002a2e:      	add.w	lr, sp, #0x8
 8002a32:      	mov	r12, r1
 8002a34:      	movs	r2, #0x81
 8002a36:      	movs	r1, #0x0
 8002a38:      	and	r3, r0, #0xf
 8002a3c:      	add.w	r4, r3, #0x37
 8002a40:      	cmp	r3, #0xa
 8002a42:      	it	lo
 8002a44:      	addlo.w	r4, r3, #0x30
 8002a48:      	add.w	r3, lr, r2
 8002a4c:      	cmp.w	r1, r0, lsr #4
 8002a50:      	strb	r4, [r3, #-2]
 8002a54:      	beq	#0x5c <core::fmt::num::<impl core::fmt::UpperHex for usize>::fmt::h2baf5da618e98d0a+0x8e>
 8002a56:      	lsrs	r4, r0, #0x4
 8002a58:      	and	r4, r4, #0xf
 8002a5c:      	add.w	r5, r4, #0x37
 8002a60:      	cmp	r4, #0xa
 8002a62:      	it	lo
 8002a64:      	addlo.w	r5, r4, #0x30
 8002a68:      	cmp.w	r1, r0, lsr #8
 8002a6c:      	strb	r5, [r3, #-3]
 8002a70:      	beq	#0x46 <core::fmt::num::<impl core::fmt::UpperHex for usize>::fmt::h2baf5da618e98d0a+0x94>
 8002a72:      	lsrs	r4, r0, #0x8
 8002a74:      	and	r4, r4, #0xf
 8002a78:      	add.w	r5, r4, #0x37
 8002a7c:      	cmp	r4, #0xa
 8002a7e:      	it	lo
 8002a80:      	addlo.w	r5, r4, #0x30
 8002a84:      	cmp.w	r1, r0, lsr #12
 8002a88:      	strb	r5, [r3, #-4]
 8002a8c:      	beq	#0x30 <core::fmt::num::<impl core::fmt::UpperHex for usize>::fmt::h2baf5da618e98d0a+0x9a>
 8002a8e:      	lsrs	r4, r0, #0xc
 8002a90:      	subs	r2, #0x4
 8002a92:      	and	r4, r4, #0xf
 8002a96:      	add.w	r5, r4, #0x37
 8002a9a:      	cmp	r4, #0xa
 8002a9c:      	it	lo
 8002a9e:      	addlo.w	r5, r4, #0x30
 8002aa2:      	strb	r5, [r3, #-5]
 8002aa6:      	lsrs	r3, r0, #0x10
 8002aa8:      	cmp.w	r1, r0, lsr #16
 8002aac:      	mov	r0, r3
 8002aae:      	bne	#-0x7a <core::fmt::num::<impl core::fmt::UpperHex for usize>::fmt::h2baf5da618e98d0a+0x12>
 8002ab0:      	subs	r0, r2, #0x1
 8002ab2:      	b	#0xe <core::fmt::num::<impl core::fmt::UpperHex for usize>::fmt::h2baf5da618e98d0a+0x9e>
 8002ab4:      	subs	r0, r2, #0x2
 8002ab6:      	subs	r2, #0x1
 8002ab8:      	b	#0x8 <core::fmt::num::<impl core::fmt::UpperHex for usize>::fmt::h2baf5da618e98d0a+0x9e>
 8002aba:      	subs	r0, r2, #0x3
 8002abc:      	subs	r2, #0x2
 8002abe:      	b	#0x2 <core::fmt::num::<impl core::fmt::UpperHex for usize>::fmt::h2baf5da618e98d0a+0x9e>
 8002ac0:      	subs	r0, r2, #0x4
 8002ac2:      	subs	r2, #0x3
 8002ac4:      	cmp	r0, #0x81
 8002ac6:      	bhs	#0x1e <core::fmt::num::<impl core::fmt::UpperHex for usize>::fmt::h2baf5da618e98d0a+0xc2>
 8002ac8:      	rsb.w	r1, r2, #0x81
 8002acc:      	movw	r2, #0x3dd0
 8002ad0:      	add	r0, lr
 8002ad2:      	movt	r2, #0x800
 8002ad6:      	strd	r0, r1, [sp]
 8002ada:      	mov	r0, r12
 8002adc:      	movs	r1, #0x1
 8002ade:      	movs	r3, #0x2
 8002ae0:      	bl	#-0x7e4
 8002ae4:      	add	sp, #0x88
 8002ae6:      	pop	{r4, r5, r7, pc}
 8002ae8:      	movw	r2, #0x3dc0
 8002aec:      	movs	r1, #0x80
 8002aee:      	movt	r2, #0x800
 8002af2:      	bl	#-0x196
 8002af6:      	trap

08002af8 <core::fmt::num::imp::<impl core::fmt::Display for usize>::fmt::he182be987a3eaddb>:
 8002af8:      	push	{r4, r5, r6, r7, lr}
 8002afa:      	add	r7, sp, #0xc
 8002afc:      	push.w	{r8, r9, r10, r11}
 8002b00:      	sub	sp, #0x34
 8002b02:      	ldr	r4, [r0]
 8002b04:      	movw	r0, #0x851f
 8002b08:      	movw	r8, #0x3dd2
 8002b0c:      	mov	r5, r1
 8002b0e:      	movw	r1, #0x2710
 8002b12:      	cmp	r4, r1
 8002b14:      	movt	r0, #0x51eb
 8002b18:      	movt	r8, #0x800
 8002b1c:      	blo	#0x76 <core::fmt::num::imp::<impl core::fmt::Display for usize>::fmt::he182be987a3eaddb+0x9e>
 8002b1e:      	movw	r9, #0x1759
 8002b22:      	movw	lr, #0xe0ff
 8002b26:      	add.w	r11, sp, #0xc
 8002b2a:      	movs	r3, #0x0
 8002b2c:      	movt	r9, #0xd1b7
 8002b30:      	mov.w	r10, #0x64
 8002b34:      	movt	lr, #0x5f5
 8002b38:      	str	r5, [sp, #0x8]
 8002b3a:      	umull	r2, r5, r4, r9
 8002b3e:      	cmp	r4, lr
 8002b40:      	lsr.w	r2, r5, #0xd
 8002b44:      	mls	r5, r2, r1, r4
 8002b48:      	add.w	r1, r11, r3
 8002b4c:      	sub.w	r3, r3, #0x4
 8002b50:      	mov	r4, r2
 8002b52:      	uxth	r6, r5
 8002b54:      	umull	r6, r12, r6, r0
 8002b58:      	lsr.w	r6, r12, #0x5
 8002b5c:      	mls	r5, r6, r10, r5
 8002b60:      	ldrh.w	r6, [r8, r6, lsl #1]
 8002b64:      	strh.w	r6, [r1, #0x23]
 8002b68:      	uxth	r5, r5
 8002b6a:      	ldrh.w	r5, [r8, r5, lsl #1]
 8002b6e:      	strh.w	r5, [r1, #0x25]
 8002b72:      	movw	r1, #0x2710
 8002b76:      	bhi	#-0x40 <core::fmt::num::imp::<impl core::fmt::Display for usize>::fmt::he182be987a3eaddb+0x42>
 8002b78:      	ldr	r5, [sp, #0x8]
 8002b7a:      	add.w	r1, r3, #0x27
 8002b7e:      	mov	r4, r2
 8002b80:      	cmp	r4, #0x63
 8002b82:      	bgt	#0x16 <core::fmt::num::imp::<impl core::fmt::Display for usize>::fmt::he182be987a3eaddb+0xa4>
 8002b84:      	mov	r3, r4
 8002b86:      	cmp	r3, #0xa
 8002b88:      	blt	#0x2e <core::fmt::num::imp::<impl core::fmt::Display for usize>::fmt::he182be987a3eaddb+0xc2>
 8002b8a:      	subs	r1, #0x2
 8002b8c:      	ldrh.w	r0, [r8, r3, lsl #1]
 8002b90:      	add	r2, sp, #0xc
 8002b92:      	strh	r0, [r2, r1]
 8002b94:      	b	#0x2c <core::fmt::num::imp::<impl core::fmt::Display for usize>::fmt::he182be987a3eaddb+0xcc>
 8002b96:      	movs	r1, #0x27
 8002b98:      	cmp	r4, #0x63
 8002b9a:      	ble	#-0x1a <core::fmt::num::imp::<impl core::fmt::Display for usize>::fmt::he182be987a3eaddb+0x8c>
 8002b9c:      	uxth	r2, r4
 8002b9e:      	subs	r1, #0x2
 8002ba0:      	umull	r2, r3, r2, r0
 8002ba4:      	add	r6, sp, #0xc
 8002ba6:      	movs	r2, #0x64
 8002ba8:      	lsrs	r3, r3, #0x5
 8002baa:      	mls	r2, r3, r2, r4
 8002bae:      	uxth	r2, r2
 8002bb0:      	ldrh.w	r2, [r8, r2, lsl #1]
 8002bb4:      	strh	r2, [r6, r1]
 8002bb6:      	cmp	r3, #0xa
 8002bb8:      	bge	#-0x32 <core::fmt::num::imp::<impl core::fmt::Display for usize>::fmt::he182be987a3eaddb+0x92>
 8002bba:      	subs	r1, #0x1
 8002bbc:      	add	r2, sp, #0xc
 8002bbe:      	add.w	r0, r3, #0x30
 8002bc2:      	strb	r0, [r2, r1]
 8002bc4:      	rsb.w	r0, r1, #0x27
 8002bc8:      	add	r2, sp, #0xc
 8002bca:      	add	r1, r2
 8002bcc:      	movw	r2, #0x3d48
 8002bd0:      	strd	r1, r0, [sp]
 8002bd4:      	movt	r2, #0x800
 8002bd8:      	mov	r0, r5
 8002bda:      	movs	r1, #0x1
 8002bdc:      	movs	r3, #0x0
 8002bde:      	bl	#-0x8e2
 8002be2:      	add	sp, #0x34
 8002be4:      	pop.w	{r8, r9, r10, r11}
 8002be8:      	pop	{r4, r5, r6, r7, pc}

08002bea <<&T as core::fmt::Display>::fmt::h28023d1754819fb6>:
 8002bea:      	ldr	r0, [r0]
 8002bec:      	mov	r3, r1
 8002bee:      	ldrd	r1, r2, [r0]
 8002bf2:      	mov	r0, r3
 8002bf4:      	b.w	#-0x608 <core::fmt::Formatter::pad::hdd2f8bc43cf2bd72>

08002bf8 <<&T as core::fmt::Display>::fmt::hb1351d570a30a9c9>:
 8002bf8:      	push	{r4, r5, r6, r7, lr}
 8002bfa:      	add	r7, sp, #0xc
 8002bfc:      	push.w	{r8, r9, r11}
 8002c00:      	sub	sp, #0x18
 8002c02:      	ldr.w	lr, [r0]
 8002c06:      	mov	r2, sp
 8002c08:      	ldrd	r12, r1, [r1, #24]
 8002c0c:      	mov	r3, r2
 8002c0e:      	ldm.w	lr, {r0, r4, r5, r6, r8, r9}
 8002c12:      	stm.w	r3, {r0, r4, r5, r6, r8, r9}
 8002c16:      	mov	r0, r12
 8002c18:      	bl	#-0xad0
 8002c1c:      	add	sp, #0x18
 8002c1e:      	pop.w	{r8, r9, r11}
 8002c22:      	pop	{r4, r5, r6, r7, pc}

08002c24 <<&T as core::fmt::Display>::fmt::hed4fc898b8a3241f>:
 8002c24:      	mov	r3, r1
 8002c26:      	ldrd	r1, r2, [r0]
 8002c2a:      	mov	r0, r3
 8002c2c:      	b.w	#-0x640 <core::fmt::Formatter::pad::hdd2f8bc43cf2bd72>

08002c30 <rust_begin_unwind>:
; fn panic(info: &PanicInfo) -> ! {
 8002c30:      	push	{r7, lr}
 8002c32:      	mov	r7, sp
 8002c34:      	sub	sp, #0x48
 8002c36:      	str	r0, [sp, #0x10]
;     interrupt::disable();
 8002c38:      	bl	#0xc40
 8002c3c:      	b	#-0x2 <rust_begin_unwind+0xe>
;     let itm = unsafe { &mut *ITM::ptr() };
 8002c3e:      	b	#-0x2 <rust_begin_unwind+0x10>
 8002c40:      	mov.w	r0, #0xe0000000
;     let itm = unsafe { &mut *ITM::ptr() };
 8002c44:      	str	r0, [sp, #0x3c]
;     let stim = &mut itm.stim[0];
 8002c46:      	mov	r1, r0
 8002c48:      	str	r0, [sp, #0x40]
 8002c4a:      	add	r0, sp, #0x10
;     iprintln!(stim, "{}", info);
 8002c4c:      	str	r0, [sp, #0x34]
 8002c4e:      	ldr	r0, [sp, #0x34]
 8002c50:      	str	r0, [sp, #0x44]
 8002c52:      	movw	r2, #0x2ca9
 8002c56:      	movt	r2, #0x800
 8002c5a:      	str	r1, [sp, #0xc]
 8002c5c:      	mov	r1, r2
 8002c5e:      	bl	#0x64
 8002c62:      	str	r0, [sp, #0x8]
 8002c64:      	str	r1, [sp, #0x4]
 8002c66:      	b	#-0x2 <rust_begin_unwind+0x38>
 8002c68:      	ldr	r0, [sp, #0x8]
 8002c6a:      	str	r0, [sp, #0x2c]
 8002c6c:      	ldr	r1, [sp, #0x4]
 8002c6e:      	str	r1, [sp, #0x30]
 8002c70:      	mov	r2, sp
 8002c72:      	movs	r3, #0x1
 8002c74:      	str	r3, [r2]
 8002c76:      	movw	r1, #0x3f28
 8002c7a:      	movt	r1, #0x800
 8002c7e:      	add	r0, sp, #0x14
 8002c80:      	movs	r2, #0x2
 8002c82:      	add	r3, sp, #0x2c
 8002c84:      	bl	#0x92
 8002c88:      	b	#-0x2 <rust_begin_unwind+0x5a>
 8002c8a:      	add	r1, sp, #0x14
;     iprintln!(stim, "{}", info);
 8002c8c:      	ldr	r0, [sp, #0xc]
 8002c8e:      	bl	#0x22c
 8002c92:      	b	#-0x2 <rust_begin_unwind+0x64>
;     loop {
 8002c94:      	b	#-0x2 <rust_begin_unwind+0x66>
 8002c96:      	movs	r0, #0x4
;         atomic::compiler_fence(Ordering::SeqCst);
 8002c98:      	strb	r0, [r7, #-13]
 8002c9c:      	ldrb	r0, [r7, #-13]
 8002ca0:      	bl	#0xb0
 8002ca4:      	b	#-0x2 <rust_begin_unwind+0x76>
;     loop {
 8002ca6:      	b	#-0x14 <rust_begin_unwind+0x66>

08002ca8 <<&T as core::fmt::Display>::fmt::h5f1a04902c846116>:
;             fn fmt(&self, f: &mut Formatter<'_>) -> Result { $tr::fmt(&**self, f) }
 8002ca8:      	push	{r7, lr}
 8002caa:      	mov	r7, sp
 8002cac:      	sub	sp, #0x10
 8002cae:      	str	r0, [sp, #0x8]
 8002cb0:      	str	r1, [sp, #0xc]
 8002cb2:      	ldr	r0, [r0]
 8002cb4:      	bl	#-0xcb6
 8002cb8:      	str	r0, [sp, #0x4]
 8002cba:      	b	#-0x2 <<&T as core::fmt::Display>::fmt::h5f1a04902c846116+0x14>
 8002cbc:      	ldr	r0, [sp, #0x4]
 8002cbe:      	and	r0, r0, #0x1
 8002cc2:      	add	sp, #0x10
 8002cc4:      	pop	{r7, pc}

08002cc6 <core::fmt::ArgumentV1::new::h030037d525dc6fd2>:
;     pub fn new<'b, T>(x: &'b T, f: fn(&T, &mut Formatter<'_>) -> Result) -> ArgumentV1<'b> {
 8002cc6:      	sub	sp, #0x24
 8002cc8:      	str	r0, [sp, #0x14]
 8002cca:      	str	r1, [sp, #0x18]
;         unsafe { ArgumentV1 { formatter: mem::transmute(f), value: mem::transmute(x) } }
 8002ccc:      	str	r1, [sp, #0x1c]
 8002cce:      	ldr	r1, [sp, #0x1c]
 8002cd0:      	str	r0, [sp, #0x8]
 8002cd2:      	str	r1, [sp, #0x4]
 8002cd4:      	b	#-0x2 <core::fmt::ArgumentV1::new::h030037d525dc6fd2+0x10>
 8002cd6:      	ldr	r0, [sp, #0x8]
 8002cd8:      	str	r0, [sp, #0x20]
 8002cda:      	ldr	r1, [sp, #0x20]
 8002cdc:      	str	r1, [sp]
 8002cde:      	b	#-0x2 <core::fmt::ArgumentV1::new::h030037d525dc6fd2+0x1a>
 8002ce0:      	ldr	r0, [sp]
 8002ce2:      	str	r0, [sp, #0xc]
 8002ce4:      	ldr	r1, [sp, #0x4]
 8002ce6:      	str	r1, [sp, #0x10]
;     }
 8002ce8:      	ldr	r0, [sp, #0xc]
 8002cea:      	ldr	r1, [sp, #0x10]
 8002cec:      	add	sp, #0x24
 8002cee:      	bx	lr

08002cf0 <core::fmt::ArgumentV1::new::h78acb193f763263d>:
;     pub fn new<'b, T>(x: &'b T, f: fn(&T, &mut Formatter<'_>) -> Result) -> ArgumentV1<'b> {
 8002cf0:      	sub	sp, #0x24
 8002cf2:      	str	r0, [sp, #0x14]
 8002cf4:      	str	r1, [sp, #0x18]
;         unsafe { ArgumentV1 { formatter: mem::transmute(f), value: mem::transmute(x) } }
 8002cf6:      	str	r1, [sp, #0x1c]
 8002cf8:      	ldr	r1, [sp, #0x1c]
 8002cfa:      	str	r0, [sp, #0x8]
 8002cfc:      	str	r1, [sp, #0x4]
 8002cfe:      	b	#-0x2 <core::fmt::ArgumentV1::new::h78acb193f763263d+0x10>
 8002d00:      	ldr	r0, [sp, #0x8]
 8002d02:      	str	r0, [sp, #0x20]
 8002d04:      	ldr	r1, [sp, #0x20]
 8002d06:      	str	r1, [sp]
 8002d08:      	b	#-0x2 <core::fmt::ArgumentV1::new::h78acb193f763263d+0x1a>
 8002d0a:      	ldr	r0, [sp]
 8002d0c:      	str	r0, [sp, #0xc]
 8002d0e:      	ldr	r1, [sp, #0x4]
 8002d10:      	str	r1, [sp, #0x10]
;     }
 8002d12:      	ldr	r0, [sp, #0xc]
 8002d14:      	ldr	r1, [sp, #0x10]
 8002d16:      	add	sp, #0x24
 8002d18:      	bx	lr

08002d1a <core::fmt::Arguments::new_v1::h1b9dc998b366c8ba>:
;     pub fn new_v1(pieces: &'a [&'static str], args: &'a [ArgumentV1<'a>]) -> Arguments<'a> {
 8002d1a:      	push	{r7, lr}
 8002d1c:      	mov	r7, sp
 8002d1e:      	sub	sp, #0x18
 8002d20:      	ldr.w	r12, [r7, #0x8]
 8002d24:      	str	r1, [sp, #0x8]
 8002d26:      	str	r2, [sp, #0xc]
 8002d28:      	str	r3, [sp, #0x10]
 8002d2a:      	str.w	r12, [sp, #0x14]
 8002d2e:      	mov.w	lr, #0x0
;         Arguments { pieces, fmt: None, args }
 8002d32:      	str.w	lr, [sp, #0x4]
 8002d36:      	str.w	lr, [sp]
 8002d3a:      	str.w	lr, [sp]
 8002d3e:      	str	r1, [r0]
 8002d40:      	str	r2, [r0, #0x4]
 8002d42:      	ldr	r1, [sp]
 8002d44:      	ldr	r2, [sp, #0x4]
 8002d46:      	str	r1, [r0, #0x8]
 8002d48:      	str	r2, [r0, #0xc]
 8002d4a:      	str	r3, [r0, #0x10]
 8002d4c:      	str.w	r12, [r0, #0x14]
;     }
 8002d50:      	add	sp, #0x18
 8002d52:      	pop	{r7, pc}

08002d54 <core::sync::atomic::compiler_fence::h60dfa0d6a150abc5>:
; pub fn compiler_fence(order: Ordering) {
 8002d54:      	push	{r7, lr}
 8002d56:      	mov	r7, sp
 8002d58:      	sub	sp, #0x10
 8002d5a:      	mov	r1, r0
 8002d5c:      	strb	r0, [r7, #-5]
;             Acquire => intrinsics::atomic_singlethreadfence_acq(),
 8002d60:      	ldrb	r0, [r7, #-5]
 8002d64:      	str	r0, [sp, #0x4]
 8002d66:      	ldr	r1, [sp, #0x4]
 8002d68:      	tbb	[pc, r1]

08002d6c <$d.1>:
 8002d6c:	03 11 10 12	.word	0x12101103
 8002d70:	13 00		.short	0x0013

08002d72 <$t.2>:
;             Relaxed => panic!("there is no such thing as a relaxed compiler fence"),
 8002d72:      	movw	r0, #0x3f38
 8002d76:      	movt	r0, #0x800
 8002d7a:      	movw	r2, #0x3fe0
 8002d7e:      	movt	r2, #0x800
 8002d82:      	movs	r1, #0x32
 8002d84:      	bl	#-0xc92
 8002d88:      	trap
;         match order {
 8002d8a:      	trap
;             Acquire => intrinsics::atomic_singlethreadfence_acq(),
 8002d8c:      	b	#0x4 <$t.2+0x22>
;             Release => intrinsics::atomic_singlethreadfence_rel(),
 8002d8e:      	b	#0x2 <$t.2+0x22>
;             AcqRel => intrinsics::atomic_singlethreadfence_acqrel(),
 8002d90:      	b	#0x0 <$t.2+0x22>
;             SeqCst => intrinsics::atomic_singlethreadfence(),
 8002d92:      	b	#-0x2 <$t.2+0x22>
; }
 8002d94:      	add	sp, #0x10
 8002d96:      	pop	{r7, pc}

08002d98 <core::fmt::Write::write_char::hba0234c9e840e8d7>:
;     fn write_char(&mut self, c: char) -> Result {
 8002d98:      	push	{r7, lr}
 8002d9a:      	mov	r7, sp
 8002d9c:      	sub	sp, #0x20
 8002d9e:      	str	r0, [sp, #0x18]
 8002da0:      	str	r1, [sp, #0x1c]
 8002da2:      	movs	r2, #0x0
;         self.write_str(c.encode_utf8(&mut [0; 4]))
 8002da4:      	str	r2, [sp, #0x14]
 8002da6:      	add	r2, sp, #0x14
 8002da8:      	movs	r3, #0x4
 8002daa:      	str	r0, [sp, #0x10]
 8002dac:      	mov	r0, r1
 8002dae:      	mov	r1, r2
 8002db0:      	mov	r2, r3
 8002db2:      	bl	#0x350
 8002db6:      	str	r0, [sp, #0xc]
 8002db8:      	str	r1, [sp, #0x8]
 8002dba:      	b	#-0x2 <core::fmt::Write::write_char::hba0234c9e840e8d7+0x24>
 8002dbc:      	ldr	r0, [sp, #0x10]
 8002dbe:      	ldr	r1, [sp, #0xc]
 8002dc0:      	ldr	r2, [sp, #0x8]
 8002dc2:      	bl	#0xbc
 8002dc6:      	str	r0, [sp, #0x4]
 8002dc8:      	b	#-0x2 <core::fmt::Write::write_char::hba0234c9e840e8d7+0x32>
;     }
 8002dca:      	ldr	r0, [sp, #0x4]
 8002dcc:      	and	r0, r0, #0x1
 8002dd0:      	add	sp, #0x20
 8002dd2:      	pop	{r7, pc}

08002dd4 <core::fmt::Write::write_fmt::h6b6d381367036646>:
;     fn write_fmt(mut self: &mut Self, args: Arguments<'_>) -> Result {
 8002dd4:      	push	{r4, r5, r6, r7, lr}
 8002dd6:      	add	r7, sp, #0xc
 8002dd8:      	str	r11, [sp, #-4]!
 8002ddc:      	sub	sp, #0x28
 8002dde:      	str	r0, [sp, #0xc]
 8002de0:      	add	r0, sp, #0x10
;         write(&mut self, args)
 8002de2:      	mov	r2, r0
 8002de4:      	ldm.w	r1, {r3, r4, r5, r6, r12, lr}
 8002de8:      	stm.w	r2, {r3, r4, r5, r6, r12, lr}
 8002dec:      	movw	r1, #0x3ff0
 8002df0:      	movt	r1, #0x800
 8002df4:      	add	r2, sp, #0xc
 8002df6:      	str	r0, [sp, #0x8]
 8002df8:      	mov	r0, r2
 8002dfa:      	ldr	r2, [sp, #0x8]
 8002dfc:      	bl	#-0xcb4
 8002e00:      	str	r0, [sp, #0x4]
 8002e02:      	b	#-0x2 <core::fmt::Write::write_fmt::h6b6d381367036646+0x30>
;     }
 8002e04:      	ldr	r0, [sp, #0x4]
 8002e06:      	and	r0, r0, #0x1
 8002e0a:      	add	sp, #0x28
 8002e0c:      	ldr	r11, [sp], #4
 8002e10:      	pop	{r4, r5, r6, r7, pc}

08002e12 <<&mut W as core::fmt::Write>::write_char::hbecb42a0f1867a2e>:
;     fn write_char(&mut self, c: char) -> Result {
 8002e12:      	push	{r7, lr}
 8002e14:      	mov	r7, sp
 8002e16:      	sub	sp, #0x10
 8002e18:      	str	r0, [sp, #0x8]
 8002e1a:      	str	r1, [sp, #0xc]
;         (**self).write_char(c)
 8002e1c:      	ldr	r0, [r0]
 8002e1e:      	bl	#-0x8a
 8002e22:      	str	r0, [sp, #0x4]
 8002e24:      	b	#-0x2 <<&mut W as core::fmt::Write>::write_char::hbecb42a0f1867a2e+0x14>
;     }
 8002e26:      	ldr	r0, [sp, #0x4]
 8002e28:      	and	r0, r0, #0x1
 8002e2c:      	add	sp, #0x10
 8002e2e:      	pop	{r7, pc}

08002e30 <<&mut W as core::fmt::Write>::write_fmt::hf6d2fff4406d1a03>:
;     fn write_fmt(&mut self, args: Arguments<'_>) -> Result {
 8002e30:      	push	{r4, r5, r6, r7, lr}
 8002e32:      	add	r7, sp, #0xc
 8002e34:      	str	r8, [sp, #-4]!
 8002e38:      	sub	sp, #0x20
 8002e3a:      	str	r0, [sp, #0x1c]
;         (**self).write_fmt(args)
 8002e3c:      	ldr	r0, [r0]
 8002e3e:      	add	r2, sp, #0x4
 8002e40:      	mov	r3, r2
 8002e42:      	ldm.w	r1, {r4, r5, r6, r8, r12, lr}
 8002e46:      	stm.w	r3, {r4, r5, r6, r8, r12, lr}
 8002e4a:      	mov	r1, r2
 8002e4c:      	bl	#-0x7c
 8002e50:      	str	r0, [sp]
 8002e52:      	b	#-0x2 <<&mut W as core::fmt::Write>::write_fmt::hf6d2fff4406d1a03+0x24>
;     }
 8002e54:      	ldr	r0, [sp]
 8002e56:      	and	r0, r0, #0x1
 8002e5a:      	add	sp, #0x20
 8002e5c:      	ldr	r8, [sp], #4
 8002e60:      	pop	{r4, r5, r6, r7, pc}

08002e62 <<&mut W as core::fmt::Write>::write_str::h4151afcd314c1c71>:
;     fn write_str(&mut self, s: &str) -> Result {
 8002e62:      	push	{r7, lr}
 8002e64:      	mov	r7, sp
 8002e66:      	sub	sp, #0x10
 8002e68:      	str	r0, [sp, #0x4]
 8002e6a:      	str	r1, [sp, #0x8]
 8002e6c:      	str	r2, [sp, #0xc]
;         (**self).write_str(s)
 8002e6e:      	ldr	r0, [r0]
 8002e70:      	bl	#0xe
 8002e74:      	str	r0, [sp]
 8002e76:      	b	#-0x2 <<&mut W as core::fmt::Write>::write_str::h4151afcd314c1c71+0x16>
;     }
 8002e78:      	ldr	r0, [sp]
 8002e7a:      	and	r0, r0, #0x1
 8002e7e:      	add	sp, #0x10
 8002e80:      	pop	{r7, pc}

08002e82 <<cortex_m::itm::Port as core::fmt::Write>::write_str::hf280f57206176ae9>:
;     fn write_str(&mut self, s: &str) -> fmt::Result {
 8002e82:      	push	{r7, lr}
 8002e84:      	mov	r7, sp
 8002e86:      	sub	sp, #0x30
 8002e88:      	str	r0, [sp, #0x14]
 8002e8a:      	str	r1, [sp, #0x18]
 8002e8c:      	str	r2, [sp, #0x1c]
;         write_all(self.0, s.as_bytes());
 8002e8e:      	ldr	r0, [r0]
 8002e90:      	str	r1, [sp, #0x20]
 8002e92:      	str	r2, [sp, #0x24]
;         unsafe { mem::transmute(self) }
 8002e94:      	str	r1, [sp, #0x28]
 8002e96:      	str	r2, [sp, #0x2c]
 8002e98:      	ldr	r1, [sp, #0x28]
 8002e9a:      	ldr	r2, [sp, #0x2c]
;         write_all(self.0, s.as_bytes());
 8002e9c:      	str	r0, [sp, #0xc]
 8002e9e:      	str	r1, [sp, #0x8]
 8002ea0:      	str	r2, [sp, #0x4]
 8002ea2:      	b	#-0x2 <<cortex_m::itm::Port as core::fmt::Write>::write_str::hf280f57206176ae9+0x22>
 8002ea4:      	ldr	r0, [sp, #0xc]
 8002ea6:      	ldr	r1, [sp, #0x8]
 8002ea8:      	ldr	r2, [sp, #0x4]
 8002eaa:      	bl	#0x550
 8002eae:      	b	#-0x2 <<cortex_m::itm::Port as core::fmt::Write>::write_str::hf280f57206176ae9+0x2e>
 8002eb0:      	movs	r0, #0x0
;         Ok(())
 8002eb2:      	strb	r0, [r7, #-29]
;     }
 8002eb6:      	ldrb	r0, [r7, #-29]
 8002eba:      	add	sp, #0x30
 8002ebc:      	pop	{r7, pc}

08002ebe <cortex_m::itm::write_fmt::hd80f26f2d6ae53e8>:
; pub fn write_fmt(port: &mut Stim, args: fmt::Arguments) {
 8002ebe:      	push	{r4, r5, r6, r7, lr}
 8002ec0:      	add	r7, sp, #0xc
 8002ec2:      	str	r11, [sp, #-4]!
 8002ec6:      	sub	sp, #0x28
 8002ec8:      	str	r0, [sp, #0x24]
;     Port(port).write_fmt(args).ok();
 8002eca:      	str	r0, [sp, #0x8]
 8002ecc:      	add	r0, sp, #0xc
 8002ece:      	mov	r2, r0
 8002ed0:      	ldm.w	r1, {r3, r4, r5, r6, r12, lr}
 8002ed4:      	stm.w	r2, {r3, r4, r5, r6, r12, lr}
 8002ed8:      	add	r1, sp, #0x8
 8002eda:      	str	r0, [sp, #0x4]
 8002edc:      	mov	r0, r1
 8002ede:      	ldr	r1, [sp, #0x4]
 8002ee0:      	bl	#-0x110
 8002ee4:      	str	r0, [sp]
 8002ee6:      	b	#-0x2 <cortex_m::itm::write_fmt::hd80f26f2d6ae53e8+0x2a>
 8002ee8:      	ldr	r0, [sp]
 8002eea:      	and	r0, r0, #0x1
 8002eee:      	bl	#0x426
 8002ef2:      	b	#-0x2 <cortex_m::itm::write_fmt::hd80f26f2d6ae53e8+0x36>
; }
 8002ef4:      	add	sp, #0x28
 8002ef6:      	ldr	r11, [sp], #4
 8002efa:      	pop	{r4, r5, r6, r7, pc}

08002efc <core::ptr::drop_in_place::haed792f1769a8d05>:
; pub unsafe fn drop_in_place<T: ?Sized>(to_drop: *mut T) {
 8002efc:      	sub	sp, #0x8
 8002efe:      	str	r0, [sp, #0x4]
 8002f00:      	add	sp, #0x8
 8002f02:      	bx	lr

08002f04 <core::char::methods::encode_utf8_raw::h2a731acd3c53bb9a>:
; pub fn encode_utf8_raw(code: u32, dst: &mut [u8]) -> &mut [u8] {
 8002f04:      	push	{r4, r5, r7, lr}
 8002f06:      	add	r7, sp, #0x8
 8002f08:      	sub	sp, #0xe0
 8002f0a:      	str	r0, [sp, #0x48]
 8002f0c:      	str	r1, [sp, #0xa4]
 8002f0e:      	str	r2, [sp, #0xa8]
;     let len = len_utf8(code);
 8002f10:      	ldr	r0, [sp, #0x48]
 8002f12:      	str	r2, [sp, #0x44]
 8002f14:      	str	r1, [sp, #0x40]
 8002f16:      	bl	#0x218
 8002f1a:      	str	r0, [sp, #0x4c]
 8002f1c:      	b	#-0x2 <core::char::methods::encode_utf8_raw::h2a731acd3c53bb9a+0x1a>
;     match (len, &mut dst[..]) {
 8002f1e:      	ldr	r0, [sp, #0x4c]
 8002f20:      	movw	r2, #0x407c
 8002f24:      	movt	r2, #0x800
 8002f28:      	ldr	r1, [sp, #0x40]
 8002f2a:      	str	r0, [sp, #0x3c]
 8002f2c:      	mov	r0, r1
 8002f2e:      	ldr	r1, [sp, #0x44]
 8002f30:      	bl	#0x274
 8002f34:      	str	r0, [sp, #0x38]
 8002f36:      	str	r1, [sp, #0x34]
 8002f38:      	b	#-0x2 <core::char::methods::encode_utf8_raw::h2a731acd3c53bb9a+0x36>
 8002f3a:      	ldr	r0, [sp, #0x3c]
 8002f3c:      	str	r0, [sp, #0x50]
 8002f3e:      	ldr	r1, [sp, #0x38]
 8002f40:      	str	r1, [sp, #0x54]
 8002f42:      	ldr	r2, [sp, #0x34]
 8002f44:      	str	r2, [sp, #0x58]
;         (1, [a, ..]) => {
 8002f46:      	ldr	r3, [sp, #0x50]
 8002f48:      	subs	r3, #0x1
 8002f4a:      	mov	r12, r3
 8002f4c:      	cmp	r3, #0x3
 8002f4e:      	str.w	r12, [sp, #0x30]
 8002f52:      	bhi	#0x10 <$t.2+0x8>
 8002f54:      	ldr	r1, [sp, #0x30]
 8002f56:      	tbb	[pc, r1]

08002f5a <$d.1>:
 8002f5a:	02 0c 10 14	.word	0x14100c02

08002f5e <$t.2>:
;         (1, [a, ..]) => {
 8002f5e:      	ldr	r0, [sp, #0x58]
 8002f60:      	cmp	r0, #0x0
 8002f62:      	bne	#0x24 <$t.2+0x2c>
 8002f64:      	b	#-0x2 <$t.2+0x8>
;             dst.len(),
 8002f66:      	ldr	r0, [sp, #0x40]
 8002f68:      	ldr	r1, [sp, #0x44]
 8002f6a:      	bl	#-0x1034
 8002f6e:      	str	r0, [sp, #0x9c]
 8002f70:      	b	#0xcc <$t.2+0xe2>
;         (2, [a, b, ..]) => {
 8002f72:      	ldr	r0, [sp, #0x58]
 8002f74:      	cmp	r0, #0x1
 8002f76:      	bhi	#0x1a <$t.2+0x36>
 8002f78:      	b	#-0x16 <$t.2+0x8>
;         (3, [a, b, c, ..]) => {
 8002f7a:      	ldr	r0, [sp, #0x58]
 8002f7c:      	cmp	r0, #0x2
 8002f7e:      	bhi	#0x36 <$t.2+0x5a>
 8002f80:      	b	#-0x1e <$t.2+0x8>
;         (4, [a, b, c, d, ..]) => {
 8002f82:      	ldr	r0, [sp, #0x58]
 8002f84:      	cmp	r0, #0x3
 8002f86:      	bhi	#0x64 <$t.2+0x90>
 8002f88:      	b	#-0x26 <$t.2+0x8>
;         (1, [a, ..]) => {
 8002f8a:      	ldr	r0, [sp, #0x54]
 8002f8c:      	str	r0, [sp, #0xd0]
;             *a = code as u8;
 8002f8e:      	ldr	r1, [sp, #0x48]
 8002f90:      	strb	r1, [r0]
;     match (len, &mut dst[..]) {
 8002f92:      	b	#0x14c <$t.2+0x184>
;         (2, [a, b, ..]) => {
 8002f94:      	ldr	r0, [sp, #0x54]
 8002f96:      	str	r0, [sp, #0xc8]
 8002f98:      	ldr	r1, [sp, #0x54]
 8002f9a:      	adds	r2, r1, #0x1
 8002f9c:      	str	r2, [sp, #0xcc]
;             *a = (code >> 6 & 0x1F) as u8 | TAG_TWO_B;
 8002f9e:      	ldr	r2, [sp, #0x48]
 8002fa0:      	lsrs	r2, r2, #0x6
 8002fa2:      	movs	r3, #0x6
 8002fa4:      	bfi	r2, r3, #5, #27
 8002fa8:      	strb	r2, [r0]
;             *b = (code & 0x3F) as u8 | TAG_CONT;
 8002faa:      	ldrb.w	r0, [sp, #0x48]
 8002fae:      	movs	r2, #0x2
 8002fb0:      	bfi	r0, r2, #6, #26
 8002fb4:      	strb	r0, [r1, #0x1]
;     match (len, &mut dst[..]) {
 8002fb6:      	b	#0x128 <$t.2+0x184>
;         (3, [a, b, c, ..]) => {
 8002fb8:      	ldr	r0, [sp, #0x54]
 8002fba:      	str	r0, [sp, #0xbc]
 8002fbc:      	ldr	r1, [sp, #0x54]
 8002fbe:      	adds	r2, r1, #0x1
 8002fc0:      	str	r2, [sp, #0xc0]
 8002fc2:      	ldr	r2, [sp, #0x54]
 8002fc4:      	adds	r3, r2, #0x2
 8002fc6:      	str	r3, [sp, #0xc4]
;             *a = (code >> 12 & 0x0F) as u8 | TAG_THREE_B;
 8002fc8:      	ldr	r3, [sp, #0x48]
 8002fca:      	lsrs	r3, r3, #0xc
 8002fcc:      	mov.w	r12, #0xe
 8002fd0:      	bfi	r3, r12, #4, #28
 8002fd4:      	strb	r3, [r0]
;             *b = (code >> 6 & 0x3F) as u8 | TAG_CONT;
 8002fd6:      	ldr	r0, [sp, #0x48]
 8002fd8:      	lsrs	r0, r0, #0x6
 8002fda:      	movs	r3, #0x2
 8002fdc:      	bfi	r0, r3, #6, #26
 8002fe0:      	strb	r0, [r1, #0x1]
;             *c = (code & 0x3F) as u8 | TAG_CONT;
 8002fe2:      	ldrb.w	r0, [sp, #0x48]
 8002fe6:      	bfi	r0, r3, #6, #26
 8002fea:      	strb	r0, [r2, #0x2]
;     match (len, &mut dst[..]) {
 8002fec:      	b	#0xf2 <$t.2+0x184>
;         (4, [a, b, c, d, ..]) => {
 8002fee:      	ldr	r0, [sp, #0x54]
 8002ff0:      	str	r0, [sp, #0xac]
 8002ff2:      	ldr	r1, [sp, #0x54]
 8002ff4:      	adds	r2, r1, #0x1
 8002ff6:      	str	r2, [sp, #0xb0]
 8002ff8:      	ldr	r2, [sp, #0x54]
 8002ffa:      	adds	r3, r2, #0x2
 8002ffc:      	str	r3, [sp, #0xb4]
 8002ffe:      	ldr	r3, [sp, #0x54]
 8003000:      	add.w	r12, r3, #0x3
 8003004:      	str.w	r12, [sp, #0xb8]
;             *a = (code >> 18 & 0x07) as u8 | TAG_FOUR_B;
 8003008:      	ldr.w	r12, [sp, #0x48]
 800300c:      	lsr.w	r12, r12, #0x12
 8003010:      	mov.w	lr, #0x1e
 8003014:      	bfi	r12, lr, #3, #29
 8003018:      	strb.w	r12, [r0]
;             *b = (code >> 12 & 0x3F) as u8 | TAG_CONT;
 800301c:      	ldr	r0, [sp, #0x48]
 800301e:      	lsrs	r0, r0, #0xc
 8003020:      	mov.w	r12, #0x2
 8003024:      	bfi	r0, r12, #6, #26
 8003028:      	strb	r0, [r1, #0x1]
;             *c = (code >> 6 & 0x3F) as u8 | TAG_CONT;
 800302a:      	ldr	r0, [sp, #0x48]
 800302c:      	lsrs	r0, r0, #0x6
 800302e:      	bfi	r0, r12, #6, #26
 8003032:      	strb	r0, [r2, #0x2]
;             *d = (code & 0x3F) as u8 | TAG_CONT;
 8003034:      	ldrb.w	r0, [sp, #0x48]
 8003038:      	bfi	r0, r12, #6, #26
 800303c:      	strb	r0, [r3, #0x3]
;     match (len, &mut dst[..]) {
 800303e:      	b	#0xa0 <$t.2+0x184>
 8003040:      	add	r0, sp, #0x4c
;         _ => panic!(
 8003042:      	str	r0, [sp, #0x90]
 8003044:      	add	r0, sp, #0x48
 8003046:      	str	r0, [sp, #0x94]
 8003048:      	add	r0, sp, #0x9c
 800304a:      	str	r0, [sp, #0x98]
 800304c:      	ldr	r0, [sp, #0x90]
 800304e:      	str	r0, [sp, #0xd4]
 8003050:      	ldr	r1, [sp, #0x94]
 8003052:      	str	r1, [sp, #0xd8]
 8003054:      	ldr	r2, [sp, #0x98]
 8003056:      	str	r2, [sp, #0xdc]
 8003058:      	movw	r3, #0x2af9
 800305c:      	movt	r3, #0x800
 8003060:      	str	r1, [sp, #0x2c]
 8003062:      	mov	r1, r3
 8003064:      	str	r2, [sp, #0x28]
 8003066:      	bl	#0x10a
 800306a:      	str	r0, [sp, #0x24]
 800306c:      	str	r1, [sp, #0x20]
 800306e:      	b	#-0x2 <$t.2+0x112>
 8003070:      	movw	r1, #0x2a27
 8003074:      	movt	r1, #0x800
 8003078:      	ldr	r0, [sp, #0x2c]
 800307a:      	bl	#-0x38e
 800307e:      	str	r0, [sp, #0x1c]
 8003080:      	str	r1, [sp, #0x18]
 8003082:      	b	#-0x2 <$t.2+0x126>
 8003084:      	movw	r1, #0x2af9
 8003088:      	movt	r1, #0x800
 800308c:      	ldr	r0, [sp, #0x28]
 800308e:      	bl	#0xe2
 8003092:      	str	r0, [sp, #0x14]
 8003094:      	str	r1, [sp, #0x10]
 8003096:      	b	#-0x2 <$t.2+0x13a>
 8003098:      	ldr	r0, [sp, #0x24]
 800309a:      	str	r0, [sp, #0x78]
 800309c:      	ldr	r1, [sp, #0x20]
 800309e:      	str	r1, [sp, #0x7c]
 80030a0:      	ldr	r2, [sp, #0x1c]
 80030a2:      	str	r2, [sp, #0x80]
 80030a4:      	ldr	r3, [sp, #0x18]
 80030a6:      	str	r3, [sp, #0x84]
 80030a8:      	ldr.w	r12, [sp, #0x14]
 80030ac:      	str.w	r12, [sp, #0x88]
 80030b0:      	ldr.w	lr, [sp, #0x10]
 80030b4:      	str.w	lr, [sp, #0x8c]
 80030b8:      	mov	r4, sp
 80030ba:      	movs	r5, #0x3
 80030bc:      	str	r5, [r4]
 80030be:      	movw	r1, #0x40d8
 80030c2:      	movt	r1, #0x800
 80030c6:      	add	r0, sp, #0x60
 80030c8:      	add	r3, sp, #0x78
 80030ca:      	mov	r2, r5
 80030cc:      	bl	#-0x3b6
 80030d0:      	b	#-0x2 <$t.2+0x174>
 80030d2:      	movw	r1, #0x40f0
 80030d6:      	movt	r1, #0x800
 80030da:      	add	r0, sp, #0x60
 80030dc:      	bl	#-0xfba
 80030e0:      	trap
;     &mut dst[..len]
 80030e2:      	ldr	r0, [sp, #0x4c]
 80030e4:      	str	r0, [sp, #0xa0]
 80030e6:      	ldr	r2, [sp, #0xa0]
 80030e8:      	movw	r3, #0x408c
 80030ec:      	movt	r3, #0x800
 80030f0:      	ldr	r0, [sp, #0x40]
 80030f2:      	ldr	r1, [sp, #0x44]
 80030f4:      	bl	#0xcc
 80030f8:      	str	r0, [sp, #0xc]
 80030fa:      	str	r1, [sp, #0x8]
 80030fc:      	b	#-0x2 <$t.2+0x1a0>
; }
 80030fe:      	ldr	r0, [sp, #0xc]
 8003100:      	ldr	r1, [sp, #0x8]
 8003102:      	add	sp, #0xe0
 8003104:      	pop	{r4, r5, r7, pc}

08003106 <core::char::methods::<impl char>::encode_utf8::h0122fcf555e38ff3>:
;     pub fn encode_utf8(self, dst: &mut [u8]) -> &mut str {
 8003106:      	push	{r7, lr}
 8003108:      	mov	r7, sp
 800310a:      	sub	sp, #0x20
 800310c:      	str	r0, [sp, #0x14]
 800310e:      	str	r1, [sp, #0x18]
 8003110:      	str	r2, [sp, #0x1c]
;         unsafe { from_utf8_unchecked_mut(encode_utf8_raw(self as u32, dst)) }
 8003112:      	bl	#-0x212
 8003116:      	str	r0, [sp, #0x10]
 8003118:      	str	r1, [sp, #0xc]
 800311a:      	b	#-0x2 <core::char::methods::<impl char>::encode_utf8::h0122fcf555e38ff3+0x16>
 800311c:      	ldr	r0, [sp, #0x10]
 800311e:      	ldr	r1, [sp, #0xc]
 8003120:      	bl	#0x7a
 8003124:      	str	r0, [sp, #0x8]
 8003126:      	str	r1, [sp, #0x4]
 8003128:      	b	#-0x2 <core::char::methods::<impl char>::encode_utf8::h0122fcf555e38ff3+0x24>
;     }
 800312a:      	ldr	r0, [sp, #0x8]
 800312c:      	ldr	r1, [sp, #0x4]
 800312e:      	add	sp, #0x20
 8003130:      	pop	{r7, pc}

08003132 <core::char::methods::len_utf8::hf176799754654f7b>:
; fn len_utf8(code: u32) -> usize {
 8003132:      	sub	sp, #0xc
 8003134:      	str	r0, [sp, #0x8]
;     if code < MAX_ONE_B {
 8003136:      	cmp	r0, #0x80
 8003138:      	str	r0, [sp]
 800313a:      	blo	#0xa <core::char::methods::len_utf8::hf176799754654f7b+0x16>
 800313c:      	b	#-0x2 <core::char::methods::len_utf8::hf176799754654f7b+0xc>
;     } else if code < MAX_TWO_B {
 800313e:      	ldr	r0, [sp]
 8003140:      	cmp.w	r0, #0x800
 8003144:      	blo	#0x10 <core::char::methods::len_utf8::hf176799754654f7b+0x26>
 8003146:      	b	#0x4 <core::char::methods::len_utf8::hf176799754654f7b+0x1c>
 8003148:      	movs	r0, #0x1
;         1
 800314a:      	str	r0, [sp, #0x4]
;     if code < MAX_ONE_B {
 800314c:      	b	#0x1e <core::char::methods::len_utf8::hf176799754654f7b+0x3c>
;     } else if code < MAX_THREE_B {
 800314e:      	ldr	r0, [sp]
 8003150:      	cmp.w	r0, #0x10000
 8003154:      	blo	#0xc <core::char::methods::len_utf8::hf176799754654f7b+0x32>
 8003156:      	b	#0x4 <core::char::methods::len_utf8::hf176799754654f7b+0x2c>
 8003158:      	movs	r0, #0x2
;         2
 800315a:      	str	r0, [sp, #0x4]
;     } else if code < MAX_TWO_B {
 800315c:      	b	#0xc <core::char::methods::len_utf8::hf176799754654f7b+0x3a>
 800315e:      	movs	r0, #0x4
;         4
 8003160:      	str	r0, [sp, #0x4]
;     } else if code < MAX_THREE_B {
 8003162:      	b	#0x4 <core::char::methods::len_utf8::hf176799754654f7b+0x38>
 8003164:      	movs	r0, #0x3
;         3
 8003166:      	str	r0, [sp, #0x4]
;     } else if code < MAX_THREE_B {
 8003168:      	b	#-0x2 <core::char::methods::len_utf8::hf176799754654f7b+0x38>
;     } else if code < MAX_TWO_B {
 800316a:      	b	#-0x2 <core::char::methods::len_utf8::hf176799754654f7b+0x3a>
;     if code < MAX_ONE_B {
 800316c:      	b	#-0x2 <core::char::methods::len_utf8::hf176799754654f7b+0x3c>
; }
 800316e:      	ldr	r0, [sp, #0x4]
 8003170:      	add	sp, #0xc
 8003172:      	bx	lr

08003174 <core::fmt::ArgumentV1::new::hd113442ebe8fc269>:
;     pub fn new<'b, T>(x: &'b T, f: fn(&T, &mut Formatter<'_>) -> Result) -> ArgumentV1<'b> {
 8003174:      	sub	sp, #0x24
 8003176:      	str	r0, [sp, #0x14]
 8003178:      	str	r1, [sp, #0x18]
;         unsafe { ArgumentV1 { formatter: mem::transmute(f), value: mem::transmute(x) } }
 800317a:      	str	r1, [sp, #0x1c]
 800317c:      	ldr	r1, [sp, #0x1c]
 800317e:      	str	r0, [sp, #0x8]
 8003180:      	str	r1, [sp, #0x4]
 8003182:      	b	#-0x2 <core::fmt::ArgumentV1::new::hd113442ebe8fc269+0x10>
 8003184:      	ldr	r0, [sp, #0x8]
 8003186:      	str	r0, [sp, #0x20]
 8003188:      	ldr	r1, [sp, #0x20]
 800318a:      	str	r1, [sp]
 800318c:      	b	#-0x2 <core::fmt::ArgumentV1::new::hd113442ebe8fc269+0x1a>
 800318e:      	ldr	r0, [sp]
 8003190:      	str	r0, [sp, #0xc]
 8003192:      	ldr	r1, [sp, #0x4]
 8003194:      	str	r1, [sp, #0x10]
;     }
 8003196:      	ldr	r0, [sp, #0xc]
 8003198:      	ldr	r1, [sp, #0x10]
 800319a:      	add	sp, #0x24
 800319c:      	bx	lr

0800319e <core::str::converts::from_utf8_unchecked_mut::he4114f628566a11a>:
; pub unsafe fn from_utf8_unchecked_mut(v: &mut [u8]) -> &mut str {
 800319e:      	sub	sp, #0x8
 80031a0:      	str	r0, [sp]
 80031a2:      	str	r1, [sp, #0x4]
; }
 80031a4:      	add	sp, #0x8
 80031a6:      	bx	lr

080031a8 <core::slice::index::<impl core::ops::index::IndexMut<I> for [T]>::index_mut::h8c808cd260b039a2>:
;     fn index_mut(&mut self, index: I) -> &mut I::Output {
 80031a8:      	push	{r7, lr}
 80031aa:      	mov	r7, sp
 80031ac:      	sub	sp, #0x18
 80031ae:      	str	r0, [sp, #0xc]
 80031b0:      	str	r1, [sp, #0x10]
;         index.index_mut(self)
 80031b2:      	bl	#0x134
 80031b6:      	str	r0, [sp, #0x8]
 80031b8:      	str	r1, [sp, #0x4]
 80031ba:      	b	#-0x2 <core::slice::index::<impl core::ops::index::IndexMut<I> for [T]>::index_mut::h8c808cd260b039a2+0x14>
;     }
 80031bc:      	ldr	r0, [sp, #0x8]
 80031be:      	ldr	r1, [sp, #0x4]
 80031c0:      	add	sp, #0x18
 80031c2:      	pop	{r7, pc}

080031c4 <core::slice::index::<impl core::ops::index::IndexMut<I> for [T]>::index_mut::hdb370f011351e38e>:
;     fn index_mut(&mut self, index: I) -> &mut I::Output {
 80031c4:      	push	{r7, lr}
 80031c6:      	mov	r7, sp
 80031c8:      	sub	sp, #0x20
 80031ca:      	str	r0, [sp, #0x14]
 80031cc:      	str	r1, [sp, #0x18]
 80031ce:      	str	r2, [sp, #0x1c]
;         index.index_mut(self)
 80031d0:      	str	r0, [sp, #0x10]
 80031d2:      	mov	r0, r2
 80031d4:      	ldr	r2, [sp, #0x10]
 80031d6:      	str	r1, [sp, #0xc]
 80031d8:      	mov	r1, r2
 80031da:      	ldr	r2, [sp, #0xc]
 80031dc:      	bl	#0xca
 80031e0:      	str	r0, [sp, #0x8]
 80031e2:      	str	r1, [sp, #0x4]
 80031e4:      	b	#-0x2 <core::slice::index::<impl core::ops::index::IndexMut<I> for [T]>::index_mut::hdb370f011351e38e+0x22>
;     }
 80031e6:      	ldr	r0, [sp, #0x8]
 80031e8:      	ldr	r1, [sp, #0x4]
 80031ea:      	add	sp, #0x20
 80031ec:      	pop	{r7, pc}

080031ee <<core::ops::range::Range<usize> as core::slice::index::SliceIndex<[T]>>::get_unchecked_mut::h2036545e447baf48>:
;     unsafe fn get_unchecked_mut(self, slice: *mut [T]) -> *mut [T] {
 80031ee:      	push	{r7, lr}
 80031f0:      	mov	r7, sp
 80031f2:      	sub	sp, #0x28
 80031f4:      	str	r0, [sp, #0x18]
 80031f6:      	str	r1, [sp, #0x1c]
 80031f8:      	str	r2, [sp, #0x20]
 80031fa:      	str	r3, [sp, #0x24]
;             ptr::slice_from_raw_parts_mut(slice.as_mut_ptr().add(self.start), self.end - self.start)
 80031fc:      	str	r0, [sp, #0x14]
 80031fe:      	mov	r0, r2
 8003200:      	str	r1, [sp, #0x10]
 8003202:      	mov	r1, r3
 8003204:      	bl	#0x106
 8003208:      	str	r0, [sp, #0xc]
 800320a:      	b	#-0x2 <<core::ops::range::Range<usize> as core::slice::index::SliceIndex<[T]>>::get_unchecked_mut::h2036545e447baf48+0x1e>
 800320c:      	ldr	r0, [sp, #0xc]
 800320e:      	ldr	r1, [sp, #0x14]
 8003210:      	bl	#-0x1308
 8003214:      	str	r0, [sp, #0x8]
 8003216:      	b	#-0x2 <<core::ops::range::Range<usize> as core::slice::index::SliceIndex<[T]>>::get_unchecked_mut::h2036545e447baf48+0x2a>
 8003218:      	ldr	r0, [sp, #0x10]
 800321a:      	ldr	r1, [sp, #0x14]
 800321c:      	subs	r1, r0, r1
 800321e:      	ldr	r0, [sp, #0x8]
 8003220:      	bl	#0xd0
 8003224:      	str	r0, [sp, #0x4]
 8003226:      	str	r1, [sp]
 8003228:      	b	#-0x2 <<core::ops::range::Range<usize> as core::slice::index::SliceIndex<[T]>>::get_unchecked_mut::h2036545e447baf48+0x3c>
;     }
 800322a:      	ldr	r0, [sp, #0x4]
 800322c:      	ldr	r1, [sp]
 800322e:      	add	sp, #0x28
 8003230:      	pop	{r7, pc}

08003232 <<core::ops::range::Range<usize> as core::slice::index::SliceIndex<[T]>>::index_mut::h25376e6793a07d26>:
;     fn index_mut(self, slice: &mut [T]) -> &mut [T] {
 8003232:      	push	{r7, lr}
 8003234:      	mov	r7, sp
 8003236:      	sub	sp, #0x38
 8003238:      	ldr.w	r12, [r7, #0x8]
 800323c:      	str	r0, [sp, #0x28]
 800323e:      	str	r1, [sp, #0x2c]
 8003240:      	str	r2, [sp, #0x30]
 8003242:      	str	r3, [sp, #0x34]
;         if self.start > self.end {
 8003244:      	cmp	r0, r1
 8003246:      	str	r3, [sp, #0x24]
 8003248:      	str	r2, [sp, #0x20]
 800324a:      	str	r1, [sp, #0x1c]
 800324c:      	str	r0, [sp, #0x18]
 800324e:      	str.w	r12, [sp, #0x14]
 8003252:      	bhi	#0xc <<core::ops::range::Range<usize> as core::slice::index::SliceIndex<[T]>>::index_mut::h25376e6793a07d26+0x30>
 8003254:      	b	#-0x2 <<core::ops::range::Range<usize> as core::slice::index::SliceIndex<[T]>>::index_mut::h25376e6793a07d26+0x24>
;         } else if self.end > slice.len() {
 8003256:      	ldr	r0, [sp, #0x20]
 8003258:      	ldr	r1, [sp, #0x24]
 800325a:      	bl	#-0x1324
 800325e:      	str	r0, [sp, #0x10]
 8003260:      	b	#0xa <<core::ops::range::Range<usize> as core::slice::index::SliceIndex<[T]>>::index_mut::h25376e6793a07d26+0x3c>
;             slice_index_order_fail(self.start, self.end);
 8003262:      	ldr	r0, [sp, #0x18]
 8003264:      	ldr	r1, [sp, #0x1c]
 8003266:      	ldr	r2, [sp, #0x14]
 8003268:      	bl	#-0x888
 800326c:      	trap
;         } else if self.end > slice.len() {
 800326e:      	ldr	r0, [sp, #0x1c]
 8003270:      	ldr	r1, [sp, #0x10]
 8003272:      	cmp	r0, r1
 8003274:      	bhi	#0x12 <<core::ops::range::Range<usize> as core::slice::index::SliceIndex<[T]>>::index_mut::h25376e6793a07d26+0x58>
 8003276:      	b	#-0x2 <<core::ops::range::Range<usize> as core::slice::index::SliceIndex<[T]>>::index_mut::h25376e6793a07d26+0x46>
;         unsafe { &mut *self.get_unchecked_mut(slice) }
 8003278:      	ldr	r0, [sp, #0x18]
 800327a:      	ldr	r1, [sp, #0x1c]
 800327c:      	ldr	r2, [sp, #0x20]
 800327e:      	ldr	r3, [sp, #0x24]
 8003280:      	bl	#-0x96
 8003284:      	str	r0, [sp, #0xc]
 8003286:      	str	r1, [sp, #0x8]
 8003288:      	b	#0x16 <<core::ops::range::Range<usize> as core::slice::index::SliceIndex<[T]>>::index_mut::h25376e6793a07d26+0x70>
;             slice_end_index_len_fail(self.end, slice.len());
 800328a:      	ldr	r0, [sp, #0x20]
 800328c:      	ldr	r1, [sp, #0x24]
 800328e:      	bl	#-0x1358
 8003292:      	str	r0, [sp, #0x4]
 8003294:      	b	#-0x2 <<core::ops::range::Range<usize> as core::slice::index::SliceIndex<[T]>>::index_mut::h25376e6793a07d26+0x64>
 8003296:      	ldr	r0, [sp, #0x1c]
 8003298:      	ldr	r1, [sp, #0x4]
 800329a:      	ldr	r2, [sp, #0x14]
 800329c:      	bl	#-0x8fe
 80032a0:      	trap
;     }
 80032a2:      	ldr	r0, [sp, #0xc]
 80032a4:      	ldr	r1, [sp, #0x8]
 80032a6:      	add	sp, #0x38
 80032a8:      	pop	{r7, pc}

080032aa <<core::ops::range::RangeTo<usize> as core::slice::index::SliceIndex<[T]>>::index_mut::h97ba7b20eb95408a>:
;     fn index_mut(self, slice: &mut [T]) -> &mut [T] {
 80032aa:      	push	{r7, lr}
 80032ac:      	mov	r7, sp
 80032ae:      	sub	sp, #0x28
 80032b0:      	str	r0, [sp, #0x1c]
 80032b2:      	str	r1, [sp, #0x20]
 80032b4:      	str	r2, [sp, #0x24]
 80032b6:      	mov.w	r12, #0x0
;         (0..self.end).index_mut(slice)
 80032ba:      	str.w	r12, [sp, #0x14]
 80032be:      	str	r0, [sp, #0x18]
 80032c0:      	ldr	r0, [sp, #0x14]
 80032c2:      	ldr.w	r12, [sp, #0x18]
 80032c6:      	mov	lr, sp
 80032c8:      	str.w	r3, [lr]
 80032cc:      	str	r1, [sp, #0x10]
 80032ce:      	mov	r1, r12
 80032d0:      	ldr	r3, [sp, #0x10]
 80032d2:      	str	r2, [sp, #0xc]
 80032d4:      	mov	r2, r3
 80032d6:      	ldr	r3, [sp, #0xc]
 80032d8:      	bl	#-0xaa
 80032dc:      	str	r0, [sp, #0x8]
 80032de:      	str	r1, [sp, #0x4]
 80032e0:      	b	#-0x2 <<core::ops::range::RangeTo<usize> as core::slice::index::SliceIndex<[T]>>::index_mut::h97ba7b20eb95408a+0x38>
;     }
 80032e2:      	ldr	r0, [sp, #0x8]
 80032e4:      	ldr	r1, [sp, #0x4]
 80032e6:      	add	sp, #0x28
 80032e8:      	pop	{r7, pc}

080032ea <<core::ops::range::RangeFull as core::slice::index::SliceIndex<[T]>>::index_mut::h11cdc8f47850f5a5>:
;     fn index_mut(self, slice: &mut [T]) -> &mut [T] {
 80032ea:      	sub	sp, #0xc
 80032ec:      	str	r0, [sp, #0x4]
 80032ee:      	str	r1, [sp, #0x8]
;     }
 80032f0:      	add	sp, #0xc
 80032f2:      	bx	lr

080032f4 <core::ptr::slice_from_raw_parts_mut::h8b7b8eb9d51711d7>:
; pub const fn slice_from_raw_parts_mut<T>(data: *mut T, len: usize) -> *mut [T] {
 80032f4:      	sub	sp, #0x18
 80032f6:      	str	r0, [sp, #0x10]
 80032f8:      	str	r1, [sp, #0x14]
;     unsafe { Repr { raw: FatPtr { data, len } }.rust_mut }
 80032fa:      	str	r0, [sp, #0x8]
 80032fc:      	str	r1, [sp, #0xc]
 80032fe:      	ldr	r0, [sp, #0x8]
 8003300:      	ldr	r1, [sp, #0xc]
 8003302:      	str	r0, [sp]
 8003304:      	str	r1, [sp, #0x4]
 8003306:      	ldr	r0, [sp]
 8003308:      	ldr	r1, [sp, #0x4]
; }
 800330a:      	add	sp, #0x18
 800330c:      	bx	lr

0800330e <core::ptr::mut_ptr::<impl *mut [T]>::as_mut_ptr::h874acc65f2a8fdbf>:
;     pub const fn as_mut_ptr(self) -> *mut T {
 800330e:      	sub	sp, #0x8
 8003310:      	str	r0, [sp]
 8003312:      	str	r1, [sp, #0x4]
;     }
 8003314:      	add	sp, #0x8
 8003316:      	bx	lr

08003318 <_ZN4core6result19Result$LT$T$C$E$GT$2ok17h37867028c560dcf5E>:
;     pub fn ok(self) -> Option<T> {
 8003318:      	sub	sp, #0x8
 800331a:      	mov	r1, r0
 800331c:      	strb.w	r0, [sp, #0x2]
;             Ok(x) => Some(x),
 8003320:      	ldrb.w	r0, [sp, #0x2]
 8003324:      	lsls	r2, r0, #0x1f
 8003326:      	cmp	r2, #0x0
 8003328:      	beq	#0xa <_ZN4core6result19Result$LT$T$C$E$GT$2ok17h37867028c560dcf5E+0x1e>
 800332a:      	b	#-0x2 <_ZN4core6result19Result$LT$T$C$E$GT$2ok17h37867028c560dcf5E+0x14>
 800332c:      	movs	r0, #0x0
;             Err(_) => None,
 800332e:      	strb.w	r0, [sp, #0x3]
;         match self {
 8003332:      	b	#0x12 <_ZN4core6result19Result$LT$T$C$E$GT$2ok17h37867028c560dcf5E+0x30>
 8003334:      	trap
 8003336:      	movs	r0, #0x1
;             Ok(x) => Some(x),
 8003338:      	strb.w	r0, [sp, #0x3]
;     }
 800333c:      	b	#0x8 <_ZN4core6result19Result$LT$T$C$E$GT$2ok17h37867028c560dcf5E+0x30>
 800333e:      	ldrb.w	r0, [sp, #0x3]
 8003342:      	add	sp, #0x8
 8003344:      	bx	lr
 8003346:      	b	#-0xc <_ZN4core6result19Result$LT$T$C$E$GT$2ok17h37867028c560dcf5E+0x26>
 8003348:      	ldrb.w	r0, [sp, #0x2]
 800334c:      	lsls	r0, r0, #0x1f
 800334e:      	cmp	r0, #0x0
 8003350:      	beq	#-0x16 <_ZN4core6result19Result$LT$T$C$E$GT$2ok17h37867028c560dcf5E+0x26>
 8003352:      	b	#-0x10 <_ZN4core6result19Result$LT$T$C$E$GT$2ok17h37867028c560dcf5E+0x2e>

08003354 <cortex_m::itm::write_words::h68a029408924bdf1>:
; unsafe fn write_words(stim: &mut Stim, bytes: &[u32]) {
 8003354:      	push	{r7, lr}
 8003356:      	mov	r7, sp
 8003358:      	sub	sp, #0x58
 800335a:      	str	r0, [sp, #0x44]
 800335c:      	str	r1, [sp, #0x48]
 800335e:      	str	r2, [sp, #0x4c]
;     let mut p = bytes.as_ptr();
 8003360:      	str	r0, [sp, #0x24]
 8003362:      	mov	r0, r1
 8003364:      	str	r1, [sp, #0x20]
 8003366:      	mov	r1, r2
 8003368:      	str	r2, [sp, #0x1c]
 800336a:      	bl	#-0x1414
 800336e:      	str	r0, [sp, #0x28]
 8003370:      	b	#-0x2 <cortex_m::itm::write_words::h68a029408924bdf1+0x1e>
;     for _ in 0..bytes.len() {
 8003372:      	ldr	r0, [sp, #0x20]
 8003374:      	ldr	r1, [sp, #0x1c]
 8003376:      	bl	#-0x1430
 800337a:      	str	r0, [sp, #0x18]
 800337c:      	b	#-0x2 <cortex_m::itm::write_words::h68a029408924bdf1+0x2a>
 800337e:      	movs	r0, #0x0
;     for _ in 0..bytes.len() {
 8003380:      	str	r0, [sp, #0x2c]
 8003382:      	ldr	r0, [sp, #0x18]
 8003384:      	str	r0, [sp, #0x30]
 8003386:      	ldr	r0, [sp, #0x2c]
 8003388:      	ldr	r1, [sp, #0x30]
 800338a:      	bl	#0x41a
 800338e:      	str	r0, [sp, #0x14]
 8003390:      	str	r1, [sp, #0x10]
 8003392:      	b	#-0x2 <cortex_m::itm::write_words::h68a029408924bdf1+0x40>
 8003394:      	ldr	r0, [sp, #0x14]
 8003396:      	str	r0, [sp, #0x34]
 8003398:      	ldr	r1, [sp, #0x10]
 800339a:      	str	r1, [sp, #0x38]
 800339c:      	b	#-0x2 <cortex_m::itm::write_words::h68a029408924bdf1+0x4a>
 800339e:      	add	r0, sp, #0x34
;     for _ in 0..bytes.len() {
 80033a0:      	bl	#0x3a8
 80033a4:      	str	r1, [sp, #0x40]
 80033a6:      	str	r0, [sp, #0x3c]
 80033a8:      	b	#-0x2 <cortex_m::itm::write_words::h68a029408924bdf1+0x56>
 80033aa:      	ldr	r0, [sp, #0x3c]
 80033ac:      	cmp	r0, #0x0
 80033ae:      	beq	#0x2 <cortex_m::itm::write_words::h68a029408924bdf1+0x60>
 80033b0:      	b	#-0x2 <cortex_m::itm::write_words::h68a029408924bdf1+0x5e>
 80033b2:      	b	#0x4 <cortex_m::itm::write_words::h68a029408924bdf1+0x66>
; }
 80033b4:      	add	sp, #0x58
 80033b6:      	pop	{r7, pc}
;     for _ in 0..bytes.len() {
 80033b8:      	trap
 80033ba:      	ldr	r0, [sp, #0x40]
 80033bc:      	str	r0, [sp, #0x50]
 80033be:      	str	r0, [sp, #0x54]
;         while !stim.is_fifo_ready() {}
 80033c0:      	b	#-0x2 <cortex_m::itm::write_words::h68a029408924bdf1+0x6e>
 80033c2:      	ldr	r0, [sp, #0x24]
 80033c4:      	bl	#0x490
 80033c8:      	str	r0, [sp, #0xc]
 80033ca:      	b	#-0x2 <cortex_m::itm::write_words::h68a029408924bdf1+0x78>
 80033cc:      	ldr	r0, [sp, #0xc]
 80033ce:      	lsls	r1, r0, #0x1f
 80033d0:      	cmp	r1, #0x0
 80033d2:      	beq	#0xa <cortex_m::itm::write_words::h68a029408924bdf1+0x8c>
 80033d4:      	b	#-0x2 <cortex_m::itm::write_words::h68a029408924bdf1+0x82>
;         stim.write_u32(ptr::read(p));
 80033d6:      	ldr	r0, [sp, #0x28]
 80033d8:      	bl	#-0x15e4
 80033dc:      	str	r0, [sp, #0x8]
 80033de:      	b	#0x0 <cortex_m::itm::write_words::h68a029408924bdf1+0x8e>
;         while !stim.is_fifo_ready() {}
 80033e0:      	b	#-0x22 <cortex_m::itm::write_words::h68a029408924bdf1+0x6e>
;         stim.write_u32(ptr::read(p));
 80033e2:      	ldr	r0, [sp, #0x24]
 80033e4:      	ldr	r1, [sp, #0x8]
 80033e6:      	bl	#0x44c
 80033ea:      	b	#-0x2 <cortex_m::itm::write_words::h68a029408924bdf1+0x98>
;         p = p.offset(1);
 80033ec:      	ldr	r0, [sp, #0x28]
 80033ee:      	movs	r1, #0x1
 80033f0:      	bl	#0x340
 80033f4:      	str	r0, [sp, #0x4]
 80033f6:      	b	#-0x2 <cortex_m::itm::write_words::h68a029408924bdf1+0xa4>
 80033f8:      	ldr	r0, [sp, #0x4]
 80033fa:      	str	r0, [sp, #0x28]
;     for _ in 0..bytes.len() {
 80033fc:      	b	#-0x62 <cortex_m::itm::write_words::h68a029408924bdf1+0x4a>

080033fe <cortex_m::itm::write_all::he15fa3f3f1d9858e>:
; pub fn write_all(port: &mut Stim, buffer: &[u8]) {
 80033fe:      	push	{r7, lr}
 8003400:      	mov	r7, sp
 8003402:      	sub	sp, #0x60
 8003404:      	str	r0, [sp, #0x4c]
 8003406:      	str	r1, [sp, #0x50]
 8003408:      	str	r2, [sp, #0x54]
;         let mut len = buffer.len();
 800340a:      	str	r0, [sp, #0x3c]
 800340c:      	mov	r0, r1
 800340e:      	str	r1, [sp, #0x38]
 8003410:      	mov	r1, r2
 8003412:      	str	r2, [sp, #0x34]
 8003414:      	bl	#-0x14de
 8003418:      	str	r0, [sp, #0x44]
 800341a:      	b	#-0x2 <cortex_m::itm::write_all::he15fa3f3f1d9858e+0x1e>
;         let mut ptr = buffer.as_ptr();
 800341c:      	ldr	r0, [sp, #0x38]
 800341e:      	ldr	r1, [sp, #0x34]
 8003420:      	bl	#-0x14c0
 8003424:      	str	r0, [sp, #0x48]
 8003426:      	b	#-0x2 <cortex_m::itm::write_all::he15fa3f3f1d9858e+0x2a>
;         if len == 0 {
 8003428:      	ldr	r0, [sp, #0x44]
 800342a:      	cmp	r0, #0x0
 800342c:      	beq	#0xc <cortex_m::itm::write_all::he15fa3f3f1d9858e+0x3e>
 800342e:      	b	#-0x2 <cortex_m::itm::write_all::he15fa3f3f1d9858e+0x32>
;         if ptr as usize % 2 == 1 {
 8003430:      	ldrb.w	r0, [sp, #0x48]
 8003434:      	lsls	r0, r0, #0x1f
 8003436:      	cmp	r0, #0x0
 8003438:      	bne	#0x4 <cortex_m::itm::write_all::he15fa3f3f1d9858e+0x42>
 800343a:      	b	#0x0 <cortex_m::itm::write_all::he15fa3f3f1d9858e+0x40>
; //! Low level access to Cortex-M processors
 800343c:      	b	#0x10a <cortex_m::itm::write_all::he15fa3f3f1d9858e+0x14c>
;         if ptr as usize % 2 == 1 {
 800343e:      	b	#0x44 <cortex_m::itm::write_all::he15fa3f3f1d9858e+0x88>
;             while !port.is_fifo_ready() {}
 8003440:      	b	#-0x2 <cortex_m::itm::write_all::he15fa3f3f1d9858e+0x44>
 8003442:      	ldr	r0, [sp, #0x3c]
 8003444:      	bl	#0x410
 8003448:      	str	r0, [sp, #0x30]
 800344a:      	b	#-0x2 <cortex_m::itm::write_all::he15fa3f3f1d9858e+0x4e>
 800344c:      	ldr	r0, [sp, #0x30]
 800344e:      	lsls	r1, r0, #0x1f
 8003450:      	cmp	r1, #0x0
 8003452:      	beq	#0xc <cortex_m::itm::write_all::he15fa3f3f1d9858e+0x64>
 8003454:      	b	#-0x2 <cortex_m::itm::write_all::he15fa3f3f1d9858e+0x58>
;             port.write_u8(*ptr);
 8003456:      	ldr	r0, [sp, #0x48]
 8003458:      	ldrb	r1, [r0]
 800345a:      	ldr	r0, [sp, #0x3c]
 800345c:      	bl	#0x38a
 8003460:      	b	#0x0 <cortex_m::itm::write_all::he15fa3f3f1d9858e+0x66>
;             while !port.is_fifo_ready() {}
 8003462:      	b	#-0x24 <cortex_m::itm::write_all::he15fa3f3f1d9858e+0x44>
;             ptr = ptr.offset(1);
 8003464:      	ldr	r0, [sp, #0x48]
 8003466:      	movs	r1, #0x1
 8003468:      	bl	#0x2b2
 800346c:      	str	r0, [sp, #0x2c]
 800346e:      	b	#-0x2 <cortex_m::itm::write_all::he15fa3f3f1d9858e+0x72>
 8003470:      	ldr	r0, [sp, #0x2c]
 8003472:      	str	r0, [sp, #0x48]
;             len -= 1;
 8003474:      	ldr	r1, [sp, #0x44]
 8003476:      	subs	r2, r1, #0x1
 8003478:      	cmp	r1, #0x1
 800347a:      	str	r2, [sp, #0x28]
 800347c:      	blo	#0xd0 <cortex_m::itm::write_all::he15fa3f3f1d9858e+0x152>
 800347e:      	b	#-0x2 <cortex_m::itm::write_all::he15fa3f3f1d9858e+0x82>
 8003480:      	ldr	r0, [sp, #0x28]
 8003482:      	str	r0, [sp, #0x44]
;         if ptr as usize % 2 == 1 {
 8003484:      	b	#-0x2 <cortex_m::itm::write_all::he15fa3f3f1d9858e+0x88>
;         if ptr as usize % 4 == 2 {
 8003486:      	ldr	r0, [sp, #0x48]
 8003488:      	and	r0, r0, #0x3
 800348c:      	cmp	r0, #0x2
 800348e:      	beq	#0x2 <cortex_m::itm::write_all::he15fa3f3f1d9858e+0x96>
 8003490:      	b	#-0x2 <cortex_m::itm::write_all::he15fa3f3f1d9858e+0x94>
 8003492:      	b	#0x86 <cortex_m::itm::write_all::he15fa3f3f1d9858e+0x11e>
;             if len > 1 {
 8003494:      	ldr	r0, [sp, #0x44]
 8003496:      	cmp	r0, #0x1
 8003498:      	bhi	#0x8 <cortex_m::itm::write_all::he15fa3f3f1d9858e+0xa6>
 800349a:      	b	#-0x2 <cortex_m::itm::write_all::he15fa3f3f1d9858e+0x9e>
;                 if len == 1 {
 800349c:      	ldr	r0, [sp, #0x44]
 800349e:      	cmp	r0, #0x1
 80034a0:      	beq	#0x50 <cortex_m::itm::write_all::he15fa3f3f1d9858e+0xf6>
 80034a2:      	b	#0x4c <cortex_m::itm::write_all::he15fa3f3f1d9858e+0xf4>
;                 while !port.is_fifo_ready() {}
 80034a4:      	b	#-0x2 <cortex_m::itm::write_all::he15fa3f3f1d9858e+0xa8>
 80034a6:      	ldr	r0, [sp, #0x3c]
 80034a8:      	bl	#0x3ac
 80034ac:      	str	r0, [sp, #0x24]
 80034ae:      	b	#-0x2 <cortex_m::itm::write_all::he15fa3f3f1d9858e+0xb2>
 80034b0:      	ldr	r0, [sp, #0x24]
 80034b2:      	lsls	r1, r0, #0x1f
 80034b4:      	cmp	r1, #0x0
 80034b6:      	beq	#0xa <cortex_m::itm::write_all::he15fa3f3f1d9858e+0xc6>
 80034b8:      	b	#-0x2 <cortex_m::itm::write_all::he15fa3f3f1d9858e+0xbc>
;                 port.write_u16(ptr::read(ptr as *const u16));
 80034ba:      	ldr	r0, [sp, #0x48]
 80034bc:      	bl	#-0x1664
 80034c0:      	str	r0, [sp, #0x20]
 80034c2:      	b	#0x0 <cortex_m::itm::write_all::he15fa3f3f1d9858e+0xc8>
;                 while !port.is_fifo_ready() {}
 80034c4:      	b	#-0x22 <cortex_m::itm::write_all::he15fa3f3f1d9858e+0xa8>
;                 port.write_u16(ptr::read(ptr as *const u16));
 80034c6:      	ldr	r0, [sp, #0x3c]
 80034c8:      	ldr	r1, [sp, #0x20]
 80034ca:      	bl	#0x342
 80034ce:      	b	#-0x2 <cortex_m::itm::write_all::he15fa3f3f1d9858e+0xd2>
;                 ptr = ptr.offset(2);
 80034d0:      	ldr	r0, [sp, #0x48]
 80034d2:      	movs	r1, #0x2
 80034d4:      	bl	#0x246
 80034d8:      	str	r0, [sp, #0x1c]
 80034da:      	b	#-0x2 <cortex_m::itm::write_all::he15fa3f3f1d9858e+0xde>
 80034dc:      	ldr	r0, [sp, #0x1c]
 80034de:      	str	r0, [sp, #0x48]
;                 len -= 2;
 80034e0:      	ldr	r1, [sp, #0x44]
 80034e2:      	subs	r2, r1, #0x2
 80034e4:      	cmp	r1, #0x2
 80034e6:      	str	r2, [sp, #0x18]
 80034e8:      	blo	#0x7c <cortex_m::itm::write_all::he15fa3f3f1d9858e+0x16a>
 80034ea:      	b	#-0x2 <cortex_m::itm::write_all::he15fa3f3f1d9858e+0xee>
 80034ec:      	ldr	r0, [sp, #0x18]
 80034ee:      	str	r0, [sp, #0x44]
;         if ptr as usize % 4 == 2 {
 80034f0:      	b	#0x28 <cortex_m::itm::write_all::he15fa3f3f1d9858e+0x11e>
;                 if len == 1 {
 80034f2:      	b	#0x24 <cortex_m::itm::write_all::he15fa3f3f1d9858e+0x11c>
;                     while !port.is_fifo_ready() {}
 80034f4:      	b	#-0x2 <cortex_m::itm::write_all::he15fa3f3f1d9858e+0xf8>
 80034f6:      	ldr	r0, [sp, #0x3c]
 80034f8:      	bl	#0x35c
 80034fc:      	str	r0, [sp, #0x14]
 80034fe:      	b	#-0x2 <cortex_m::itm::write_all::he15fa3f3f1d9858e+0x102>
 8003500:      	ldr	r0, [sp, #0x14]
 8003502:      	lsls	r1, r0, #0x1f
 8003504:      	cmp	r1, #0x0
 8003506:      	beq	#0xc <cortex_m::itm::write_all::he15fa3f3f1d9858e+0x118>
 8003508:      	b	#-0x2 <cortex_m::itm::write_all::he15fa3f3f1d9858e+0x10c>
;                     port.write_u8(*ptr);
 800350a:      	ldr	r0, [sp, #0x48]
 800350c:      	ldrb	r1, [r0]
 800350e:      	ldr	r0, [sp, #0x3c]
 8003510:      	bl	#0x2d6
 8003514:      	b	#0x0 <cortex_m::itm::write_all::he15fa3f3f1d9858e+0x11a>
;                     while !port.is_fifo_ready() {}
 8003516:      	b	#-0x24 <cortex_m::itm::write_all::he15fa3f3f1d9858e+0xf8>
;                 if len == 1 {
 8003518:      	b	#-0x2 <cortex_m::itm::write_all::he15fa3f3f1d9858e+0x11c>
; //! Low level access to Cortex-M processors
 800351a:      	b	#0x2c <cortex_m::itm::write_all::he15fa3f3f1d9858e+0x14c>
;         write_aligned(port, mem::transmute(slice::from_raw_parts(ptr, len)));
 800351c:      	ldr	r0, [sp, #0x48]
 800351e:      	ldr	r1, [sp, #0x44]
 8003520:      	bl	#0x2aa
 8003524:      	str	r0, [sp, #0x10]
 8003526:      	str	r1, [sp, #0xc]
 8003528:      	b	#-0x2 <cortex_m::itm::write_all::he15fa3f3f1d9858e+0x12c>
 800352a:      	ldr	r0, [sp, #0x10]
 800352c:      	str	r0, [sp, #0x58]
 800352e:      	ldr	r1, [sp, #0xc]
 8003530:      	str	r1, [sp, #0x5c]
 8003532:      	ldr	r1, [sp, #0x58]
 8003534:      	ldr	r2, [sp, #0x5c]
 8003536:      	str	r1, [sp, #0x8]
 8003538:      	str	r2, [sp, #0x4]
 800353a:      	b	#-0x2 <cortex_m::itm::write_all::he15fa3f3f1d9858e+0x13e>
 800353c:      	ldr	r0, [sp, #0x3c]
 800353e:      	ldr	r1, [sp, #0x8]
 8003540:      	ldr	r2, [sp, #0x4]
 8003542:      	bl	#0x3a
 8003546:      	b	#-0x2 <cortex_m::itm::write_all::he15fa3f3f1d9858e+0x14a>
; }
 8003548:      	b	#0x0 <cortex_m::itm::write_all::he15fa3f3f1d9858e+0x14e>
 800354a:      	b	#-0x2 <cortex_m::itm::write_all::he15fa3f3f1d9858e+0x14e>
 800354c:      	add	sp, #0x60
 800354e:      	pop	{r7, pc}
;             len -= 1;
 8003550:      	movw	r0, #0x4170
 8003554:      	movt	r0, #0x800
 8003558:      	movw	r2, #0x4154
 800355c:      	movt	r2, #0x800
 8003560:      	movs	r1, #0x21
 8003562:      	bl	#-0x1470
 8003566:      	trap
;                 len -= 2;
 8003568:      	movw	r0, #0x4170
 800356c:      	movt	r0, #0x800
 8003570:      	movw	r2, #0x4194
 8003574:      	movt	r2, #0x800
 8003578:      	movs	r1, #0x21
 800357a:      	bl	#-0x1488
 800357e:      	trap

08003580 <cortex_m::itm::write_aligned::h51a91deec28a6743>:
; pub fn write_aligned(port: &mut Stim, buffer: &Aligned<A4, [u8]>) {
 8003580:      	push	{r7, lr}
 8003582:      	mov	r7, sp
 8003584:      	sub	sp, #0x78
 8003586:      	str	r0, [sp, #0x64]
 8003588:      	str	r1, [sp, #0x68]
 800358a:      	str	r2, [sp, #0x6c]
;         let len = buffer.len();
 800358c:      	str	r0, [sp, #0x54]
 800358e:      	mov	r0, r1
 8003590:      	str	r1, [sp, #0x50]
 8003592:      	mov	r1, r2
 8003594:      	str	r2, [sp, #0x4c]
 8003596:      	bl	#-0x1698
 800359a:      	str	r0, [sp, #0x48]
 800359c:      	str	r1, [sp, #0x44]
 800359e:      	b	#-0x2 <cortex_m::itm::write_aligned::h51a91deec28a6743+0x20>
 80035a0:      	ldr	r0, [sp, #0x48]
 80035a2:      	ldr	r1, [sp, #0x44]
 80035a4:      	bl	#-0x166e
 80035a8:      	mov	r1, r0
 80035aa:      	str	r0, [sp, #0x70]
 80035ac:      	str	r1, [sp, #0x40]
 80035ae:      	b	#-0x2 <cortex_m::itm::write_aligned::h51a91deec28a6743+0x30>
;         if len == 0 {
 80035b0:      	ldr	r0, [sp, #0x40]
 80035b2:      	cmp	r0, #0x0
 80035b4:      	beq	#0x1a <cortex_m::itm::write_aligned::h51a91deec28a6743+0x52>
 80035b6:      	b	#-0x2 <cortex_m::itm::write_aligned::h51a91deec28a6743+0x38>
;         let split = len & !0b11;
 80035b8:      	ldr	r0, [sp, #0x40]
 80035ba:      	bic	r1, r0, #0x3
 80035be:      	mov	r2, r1
 80035c0:      	str	r1, [sp, #0x74]
;             slice::from_raw_parts(buffer.as_ptr() as *const u32, split >> 2),
 80035c2:      	ldr	r0, [sp, #0x50]
 80035c4:      	ldr	r1, [sp, #0x4c]
 80035c6:      	str	r2, [sp, #0x3c]
 80035c8:      	bl	#-0x16ca
 80035cc:      	str	r0, [sp, #0x38]
 80035ce:      	str	r1, [sp, #0x34]
 80035d0:      	b	#0x0 <cortex_m::itm::write_aligned::h51a91deec28a6743+0x54>
; }
 80035d2:      	b	#0xe8 <cortex_m::itm::write_aligned::h51a91deec28a6743+0x13e>
;             slice::from_raw_parts(buffer.as_ptr() as *const u32, split >> 2),
 80035d4:      	ldr	r0, [sp, #0x38]
 80035d6:      	ldr	r1, [sp, #0x34]
 80035d8:      	bl	#-0x1678
 80035dc:      	str	r0, [sp, #0x30]
 80035de:      	b	#-0x2 <cortex_m::itm::write_aligned::h51a91deec28a6743+0x60>
 80035e0:      	ldr	r0, [sp, #0x30]
 80035e2:      	ldr	r1, [sp, #0x3c]
 80035e4:      	lsrs	r2, r1, #0x2
 80035e6:      	str	r0, [sp, #0x2c]
 80035e8:      	str	r2, [sp, #0x28]
 80035ea:      	b	#-0x2 <cortex_m::itm::write_aligned::h51a91deec28a6743+0x6c>
 80035ec:      	ldr	r0, [sp, #0x2c]
 80035ee:      	ldr	r1, [sp, #0x28]
 80035f0:      	bl	#0x1be
 80035f4:      	str	r0, [sp, #0x24]
 80035f6:      	str	r1, [sp, #0x20]
 80035f8:      	b	#-0x2 <cortex_m::itm::write_aligned::h51a91deec28a6743+0x7a>
;         write_words(
 80035fa:      	ldr	r0, [sp, #0x54]
 80035fc:      	ldr	r1, [sp, #0x24]
 80035fe:      	ldr	r2, [sp, #0x20]
 8003600:      	bl	#-0x2b0
 8003604:      	b	#-0x2 <cortex_m::itm::write_aligned::h51a91deec28a6743+0x86>
;         let mut left = len & 0b11;
 8003606:      	ldr	r0, [sp, #0x40]
 8003608:      	and	r1, r0, #0x3
 800360c:      	str	r1, [sp, #0x5c]
;         let mut ptr = buffer.as_ptr().add(split);
 800360e:      	ldr	r0, [sp, #0x50]
 8003610:      	ldr	r1, [sp, #0x4c]
 8003612:      	bl	#-0x1714
 8003616:      	str	r0, [sp, #0x1c]
 8003618:      	str	r1, [sp, #0x18]
 800361a:      	b	#-0x2 <cortex_m::itm::write_aligned::h51a91deec28a6743+0x9c>
 800361c:      	ldr	r0, [sp, #0x1c]
 800361e:      	ldr	r1, [sp, #0x18]
 8003620:      	bl	#-0x16c0
 8003624:      	str	r0, [sp, #0x14]
 8003626:      	b	#-0x2 <cortex_m::itm::write_aligned::h51a91deec28a6743+0xa8>
 8003628:      	ldr	r0, [sp, #0x14]
 800362a:      	ldr	r1, [sp, #0x3c]
 800362c:      	bl	#0xd6
 8003630:      	str	r0, [sp, #0x60]
 8003632:      	b	#-0x2 <cortex_m::itm::write_aligned::h51a91deec28a6743+0xb4>
;         if left > 1 {
 8003634:      	ldr	r0, [sp, #0x5c]
 8003636:      	cmp	r0, #0x1
 8003638:      	bhi	#0x2 <cortex_m::itm::write_aligned::h51a91deec28a6743+0xbe>
 800363a:      	b	#-0x2 <cortex_m::itm::write_aligned::h51a91deec28a6743+0xbc>
 800363c:      	b	#0x4c <cortex_m::itm::write_aligned::h51a91deec28a6743+0x10c>
;             while !port.is_fifo_ready() {}
 800363e:      	b	#-0x2 <cortex_m::itm::write_aligned::h51a91deec28a6743+0xc0>
 8003640:      	ldr	r0, [sp, #0x54]
 8003642:      	bl	#0x212
 8003646:      	str	r0, [sp, #0x10]
 8003648:      	b	#-0x2 <cortex_m::itm::write_aligned::h51a91deec28a6743+0xca>
 800364a:      	ldr	r0, [sp, #0x10]
 800364c:      	lsls	r1, r0, #0x1f
 800364e:      	cmp	r1, #0x0
 8003650:      	beq	#0xa <cortex_m::itm::write_aligned::h51a91deec28a6743+0xde>
 8003652:      	b	#-0x2 <cortex_m::itm::write_aligned::h51a91deec28a6743+0xd4>
;             port.write_u16(ptr::read(ptr as *const u16));
 8003654:      	ldr	r0, [sp, #0x60]
 8003656:      	bl	#-0x17fe
 800365a:      	str	r0, [sp, #0xc]
 800365c:      	b	#0x0 <cortex_m::itm::write_aligned::h51a91deec28a6743+0xe0>
;             while !port.is_fifo_ready() {}
 800365e:      	b	#-0x22 <cortex_m::itm::write_aligned::h51a91deec28a6743+0xc0>
;             port.write_u16(ptr::read(ptr as *const u16));
 8003660:      	ldr	r0, [sp, #0x54]
 8003662:      	ldr	r1, [sp, #0xc]
 8003664:      	bl	#0x1a8
 8003668:      	b	#-0x2 <cortex_m::itm::write_aligned::h51a91deec28a6743+0xea>
;             ptr = ptr.offset(2);
 800366a:      	ldr	r0, [sp, #0x60]
 800366c:      	movs	r1, #0x2
 800366e:      	bl	#0xac
 8003672:      	str	r0, [sp, #0x8]
 8003674:      	b	#-0x2 <cortex_m::itm::write_aligned::h51a91deec28a6743+0xf6>
 8003676:      	ldr	r0, [sp, #0x8]
 8003678:      	str	r0, [sp, #0x60]
;             left -= 2;
 800367a:      	ldr	r1, [sp, #0x5c]
 800367c:      	subs	r2, r1, #0x2
 800367e:      	cmp	r1, #0x2
 8003680:      	str	r2, [sp, #0x4]
 8003682:      	blo	#0x3c <cortex_m::itm::write_aligned::h51a91deec28a6743+0x142>
 8003684:      	b	#-0x2 <cortex_m::itm::write_aligned::h51a91deec28a6743+0x106>
 8003686:      	ldr	r0, [sp, #0x4]
 8003688:      	str	r0, [sp, #0x5c]
;         if left > 1 {
 800368a:      	b	#-0x2 <cortex_m::itm::write_aligned::h51a91deec28a6743+0x10c>
;         if left == 1 {
 800368c:      	ldr	r0, [sp, #0x5c]
 800368e:      	cmp	r0, #0x1
 8003690:      	beq	#0x2 <cortex_m::itm::write_aligned::h51a91deec28a6743+0x116>
 8003692:      	b	#-0x2 <cortex_m::itm::write_aligned::h51a91deec28a6743+0x114>
 8003694:      	b	#0x24 <cortex_m::itm::write_aligned::h51a91deec28a6743+0x13c>
;             while !port.is_fifo_ready() {}
 8003696:      	b	#-0x2 <cortex_m::itm::write_aligned::h51a91deec28a6743+0x118>
 8003698:      	ldr	r0, [sp, #0x54]
 800369a:      	bl	#0x1ba
 800369e:      	str	r0, [sp]
 80036a0:      	b	#-0x2 <cortex_m::itm::write_aligned::h51a91deec28a6743+0x122>
 80036a2:      	ldr	r0, [sp]
 80036a4:      	lsls	r1, r0, #0x1f
 80036a6:      	cmp	r1, #0x0
 80036a8:      	beq	#0xc <cortex_m::itm::write_aligned::h51a91deec28a6743+0x138>
 80036aa:      	b	#-0x2 <cortex_m::itm::write_aligned::h51a91deec28a6743+0x12c>
;             port.write_u8(*ptr);
 80036ac:      	ldr	r0, [sp, #0x60]
 80036ae:      	ldrb	r1, [r0]
 80036b0:      	ldr	r0, [sp, #0x54]
 80036b2:      	bl	#0x134
 80036b6:      	b	#0x0 <cortex_m::itm::write_aligned::h51a91deec28a6743+0x13a>
;             while !port.is_fifo_ready() {}
 80036b8:      	b	#-0x24 <cortex_m::itm::write_aligned::h51a91deec28a6743+0x118>
;         if left == 1 {
 80036ba:      	b	#-0x2 <cortex_m::itm::write_aligned::h51a91deec28a6743+0x13c>
; }
 80036bc:      	b	#-0x2 <cortex_m::itm::write_aligned::h51a91deec28a6743+0x13e>
 80036be:      	add	sp, #0x78
 80036c0:      	pop	{r7, pc}
;             left -= 2;
 80036c2:      	movw	r0, #0x4170
 80036c6:      	movt	r0, #0x800
 80036ca:      	movw	r2, #0x41a4
 80036ce:      	movt	r2, #0x800
 80036d2:      	movs	r1, #0x21
 80036d4:      	bl	#-0x15e2
 80036d8:      	trap

080036da <core::mem::swap::hcb505821c13e4327>:
; pub fn swap<T>(x: &mut T, y: &mut T) {
 80036da:      	push	{r7, lr}
 80036dc:      	mov	r7, sp
 80036de:      	sub	sp, #0x8
 80036e0:      	str	r0, [sp]
 80036e2:      	str	r1, [sp, #0x4]
;         ptr::swap_nonoverlapping_one(x, y);
 80036e4:      	bl	#-0x1a50
 80036e8:      	b	#-0x2 <core::mem::swap::hcb505821c13e4327+0x10>
; }
 80036ea:      	add	sp, #0x8
 80036ec:      	pop	{r7, pc}

080036ee <core::mem::replace::hc5a8629378d7873a>:
; pub fn replace<T>(dest: &mut T, mut src: T) -> T {
 80036ee:      	push	{r7, lr}
 80036f0:      	mov	r7, sp
 80036f2:      	sub	sp, #0x8
 80036f4:      	str	r1, [sp]
 80036f6:      	str	r0, [sp, #0x4]
 80036f8:      	mov	r1, sp
;     swap(dest, &mut src);
 80036fa:      	bl	#-0x24
 80036fe:      	b	#-0x2 <core::mem::replace::hc5a8629378d7873a+0x12>
;     src
 8003700:      	ldr	r0, [sp]
; }
 8003702:      	add	sp, #0x8
 8003704:      	pop	{r7, pc}

08003706 <core::ptr::const_ptr::<impl *const T>::add::hcc46511a06be727f>:
;     pub const unsafe fn add(self, count: usize) -> Self
 8003706:      	push	{r7, lr}
 8003708:      	mov	r7, sp
 800370a:      	sub	sp, #0x10
 800370c:      	str	r0, [sp, #0x8]
 800370e:      	str	r1, [sp, #0xc]
;         unsafe { self.offset(count as isize) }
 8003710:      	bl	#0xa
 8003714:      	str	r0, [sp, #0x4]
 8003716:      	b	#-0x2 <core::ptr::const_ptr::<impl *const T>::add::hcc46511a06be727f+0x12>
;     }
 8003718:      	ldr	r0, [sp, #0x4]
 800371a:      	add	sp, #0x10
 800371c:      	pop	{r7, pc}

0800371e <core::ptr::const_ptr::<impl *const T>::offset::h7bb9957180935f30>:
;     pub const unsafe fn offset(self, count: isize) -> *const T
 800371e:      	sub	sp, #0x10
 8003720:      	str	r0, [sp, #0x4]
 8003722:      	str	r1, [sp, #0x8]
;         unsafe { intrinsics::offset(self, count) }
 8003724:      	add	r0, r1
 8003726:      	str	r0, [sp, #0xc]
 8003728:      	ldr	r0, [sp, #0xc]
 800372a:      	str	r0, [sp]
 800372c:      	b	#-0x2 <core::ptr::const_ptr::<impl *const T>::offset::h7bb9957180935f30+0x10>
;     }
 800372e:      	ldr	r0, [sp]
 8003730:      	add	sp, #0x10
 8003732:      	bx	lr

08003734 <core::ptr::const_ptr::<impl *const T>::offset::he5e9a74ba0cfc46d>:
;     pub const unsafe fn offset(self, count: isize) -> *const T
 8003734:      	sub	sp, #0x10
 8003736:      	str	r0, [sp, #0x4]
 8003738:      	str	r1, [sp, #0x8]
;         unsafe { intrinsics::offset(self, count) }
 800373a:      	add.w	r0, r0, r1, lsl #2
 800373e:      	str	r0, [sp, #0xc]
 8003740:      	ldr	r0, [sp, #0xc]
 8003742:      	str	r0, [sp]
 8003744:      	b	#-0x2 <core::ptr::const_ptr::<impl *const T>::offset::he5e9a74ba0cfc46d+0x12>
;     }
 8003746:      	ldr	r0, [sp]
 8003748:      	add	sp, #0x10
 800374a:      	bx	lr

0800374c <core::iter::range::<impl core::iter::traits::iterator::Iterator for core::ops::range::Range<A>>::next::h308ebc32e22673f9>:
;     fn next(&mut self) -> Option<A> {
 800374c:      	push	{r7, lr}
 800374e:      	mov	r7, sp
 8003750:      	sub	sp, #0x28
 8003752:      	str	r0, [sp, #0x20]
;         if self.start < self.end {
 8003754:      	adds	r1, r0, #0x4
 8003756:      	str	r0, [sp, #0x14]
 8003758:      	bl	#-0x189a
 800375c:      	str	r0, [sp, #0x10]
 800375e:      	b	#-0x2 <core::iter::range::<impl core::iter::traits::iterator::Iterator for core::ops::range::Range<A>>::next::h308ebc32e22673f9+0x14>
 8003760:      	ldr	r0, [sp, #0x10]
 8003762:      	lsls	r1, r0, #0x1f
 8003764:      	cmp	r1, #0x0
 8003766:      	bne	#0x6 <core::iter::range::<impl core::iter::traits::iterator::Iterator for core::ops::range::Range<A>>::next::h308ebc32e22673f9+0x24>
 8003768:      	b	#-0x2 <core::iter::range::<impl core::iter::traits::iterator::Iterator for core::ops::range::Range<A>>::next::h308ebc32e22673f9+0x1e>
 800376a:      	movs	r0, #0x0
;             None
 800376c:      	str	r0, [sp, #0x18]
;         if self.start < self.end {
 800376e:      	b	#0x2e <core::iter::range::<impl core::iter::traits::iterator::Iterator for core::ops::range::Range<A>>::next::h308ebc32e22673f9+0x54>
;             let n = unsafe { Step::forward_unchecked(self.start.clone(), 1) };
 8003770:      	ldr	r0, [sp, #0x14]
 8003772:      	bl	#-0x187e
 8003776:      	str	r0, [sp, #0xc]
 8003778:      	b	#-0x2 <core::iter::range::<impl core::iter::traits::iterator::Iterator for core::ops::range::Range<A>>::next::h308ebc32e22673f9+0x2e>
 800377a:      	movs	r1, #0x1
;             let n = unsafe { Step::forward_unchecked(self.start.clone(), 1) };
 800377c:      	ldr	r0, [sp, #0xc]
 800377e:      	bl	#-0x18d8
 8003782:      	mov	r1, r0
 8003784:      	str	r0, [sp, #0x24]
 8003786:      	str	r1, [sp, #0x8]
 8003788:      	b	#-0x2 <core::iter::range::<impl core::iter::traits::iterator::Iterator for core::ops::range::Range<A>>::next::h308ebc32e22673f9+0x3e>
;             Some(mem::replace(&mut self.start, n))
 800378a:      	ldr	r0, [sp, #0x14]
 800378c:      	ldr	r1, [sp, #0x8]
 800378e:      	bl	#-0xa4
 8003792:      	str	r0, [sp, #0x4]
 8003794:      	b	#-0x2 <core::iter::range::<impl core::iter::traits::iterator::Iterator for core::ops::range::Range<A>>::next::h308ebc32e22673f9+0x4a>
 8003796:      	ldr	r0, [sp, #0x4]
 8003798:      	str	r0, [sp, #0x1c]
 800379a:      	movs	r1, #0x1
 800379c:      	str	r1, [sp, #0x18]
;         if self.start < self.end {
 800379e:      	b	#-0x2 <core::iter::range::<impl core::iter::traits::iterator::Iterator for core::ops::range::Range<A>>::next::h308ebc32e22673f9+0x54>
;     }
 80037a0:      	ldr	r0, [sp, #0x18]
 80037a2:      	ldr	r1, [sp, #0x1c]
 80037a4:      	add	sp, #0x28
 80037a6:      	pop	{r7, pc}

080037a8 <<I as core::iter::traits::collect::IntoIterator>::into_iter::hbf96f872dc6a140c>:
;     fn into_iter(self) -> I {
 80037a8:      	sub	sp, #0x8
 80037aa:      	str	r0, [sp]
 80037ac:      	str	r1, [sp, #0x4]
;     }
 80037ae:      	add	sp, #0x8
 80037b0:      	bx	lr

080037b2 <core::slice::raw::from_raw_parts::h410d15212122f496>:
; pub unsafe fn from_raw_parts<'a, T>(data: *const T, len: usize) -> &'a [T] {
 80037b2:      	push	{r7, lr}
 80037b4:      	mov	r7, sp
 80037b6:      	sub	sp, #0x10
 80037b8:      	str	r0, [sp, #0x8]
 80037ba:      	str	r1, [sp, #0xc]
;     unsafe { &*ptr::slice_from_raw_parts(data, len) }
 80037bc:      	bl	#-0x1b42
 80037c0:      	str	r0, [sp, #0x4]
 80037c2:      	str	r1, [sp]
 80037c4:      	b	#-0x2 <core::slice::raw::from_raw_parts::h410d15212122f496+0x14>
; }
 80037c6:      	ldr	r0, [sp, #0x4]
 80037c8:      	ldr	r1, [sp]
 80037ca:      	add	sp, #0x10
 80037cc:      	pop	{r7, pc}

080037ce <core::slice::raw::from_raw_parts::h41748c2281e00b8b>:
; pub unsafe fn from_raw_parts<'a, T>(data: *const T, len: usize) -> &'a [T] {
 80037ce:      	push	{r7, lr}
 80037d0:      	mov	r7, sp
 80037d2:      	sub	sp, #0x10
 80037d4:      	str	r0, [sp, #0x8]
 80037d6:      	str	r1, [sp, #0xc]
;     unsafe { &*ptr::slice_from_raw_parts(data, len) }
 80037d8:      	bl	#-0x1b78
 80037dc:      	str	r0, [sp, #0x4]
 80037de:      	str	r1, [sp]
 80037e0:      	b	#-0x2 <core::slice::raw::from_raw_parts::h41748c2281e00b8b+0x14>
; }
 80037e2:      	ldr	r0, [sp, #0x4]
 80037e4:      	ldr	r1, [sp]
 80037e6:      	add	sp, #0x10
 80037e8:      	pop	{r7, pc}

080037ea <cortex_m::peripheral::itm::Stim::write_u8::h8f1296804be1c29b>:
;     pub fn write_u8(&mut self, value: u8) {
 80037ea:      	push	{r7, lr}
 80037ec:      	mov	r7, sp
 80037ee:      	sub	sp, #0x10
 80037f0:      	mov	r2, r1
 80037f2:      	str	r0, [sp, #0x8]
 80037f4:      	strb	r1, [r7, #-1]
;         unsafe { ptr::write_volatile(self.register.get() as *mut u8, value) }
 80037f8:      	str	r2, [sp, #0x4]
 80037fa:      	bl	#-0x190e
 80037fe:      	str	r0, [sp]
 8003800:      	b	#-0x2 <cortex_m::peripheral::itm::Stim::write_u8::h8f1296804be1c29b+0x18>
 8003802:      	ldr	r0, [sp]
 8003804:      	ldr	r1, [sp, #0x4]
 8003806:      	bl	#-0x1bee
 800380a:      	b	#-0x2 <cortex_m::peripheral::itm::Stim::write_u8::h8f1296804be1c29b+0x22>
;     }
 800380c:      	add	sp, #0x10
 800380e:      	pop	{r7, pc}

08003810 <cortex_m::peripheral::itm::Stim::write_u16::hc7f9eb7e4d27f9e3>:
;     pub fn write_u16(&mut self, value: u16) {
 8003810:      	push	{r7, lr}
 8003812:      	mov	r7, sp
 8003814:      	sub	sp, #0x10
 8003816:      	mov	r2, r1
 8003818:      	str	r0, [sp, #0x8]
 800381a:      	strh	r1, [r7, #-2]
;         unsafe { ptr::write_volatile(self.register.get() as *mut u16, value) }
 800381e:      	str	r2, [sp, #0x4]
 8003820:      	bl	#-0x1934
 8003824:      	str	r0, [sp]
 8003826:      	b	#-0x2 <cortex_m::peripheral::itm::Stim::write_u16::hc7f9eb7e4d27f9e3+0x18>
 8003828:      	ldr	r0, [sp]
 800382a:      	ldr	r1, [sp, #0x4]
 800382c:      	bl	#-0x1c34
 8003830:      	b	#-0x2 <cortex_m::peripheral::itm::Stim::write_u16::hc7f9eb7e4d27f9e3+0x22>
;     }
 8003832:      	add	sp, #0x10
 8003834:      	pop	{r7, pc}

08003836 <cortex_m::peripheral::itm::Stim::write_u32::h75c877bd5f25b4f7>:
;     pub fn write_u32(&mut self, value: u32) {
 8003836:      	push	{r7, lr}
 8003838:      	mov	r7, sp
 800383a:      	sub	sp, #0x10
 800383c:      	str	r0, [sp, #0x8]
 800383e:      	str	r1, [sp, #0xc]
;         unsafe { ptr::write_volatile(self.register.get(), value) }
 8003840:      	str	r1, [sp, #0x4]
 8003842:      	bl	#-0x1956
 8003846:      	str	r0, [sp]
 8003848:      	b	#-0x2 <cortex_m::peripheral::itm::Stim::write_u32::h75c877bd5f25b4f7+0x14>
 800384a:      	ldr	r0, [sp]
 800384c:      	ldr	r1, [sp, #0x4]
 800384e:      	bl	#-0x1c44
 8003852:      	b	#-0x2 <cortex_m::peripheral::itm::Stim::write_u32::h75c877bd5f25b4f7+0x1e>
;     }
 8003854:      	add	sp, #0x10
 8003856:      	pop	{r7, pc}

08003858 <cortex_m::peripheral::itm::Stim::is_fifo_ready::hc0edab71d9857f3d>:
;     pub fn is_fifo_ready(&self) -> bool {
 8003858:      	push	{r7, lr}
 800385a:      	mov	r7, sp
 800385c:      	sub	sp, #0x10
 800385e:      	str	r0, [sp, #0xc]
;         unsafe { ptr::read_volatile(self.register.get()) & 0b1 == 1 }
 8003860:      	bl	#-0x1974
 8003864:      	str	r0, [sp, #0x8]
 8003866:      	b	#-0x2 <cortex_m::peripheral::itm::Stim::is_fifo_ready::hc0edab71d9857f3d+0x10>
 8003868:      	ldr	r0, [sp, #0x8]
 800386a:      	bl	#-0x1c86
 800386e:      	str	r0, [sp, #0x4]
 8003870:      	b	#-0x2 <cortex_m::peripheral::itm::Stim::is_fifo_ready::hc0edab71d9857f3d+0x1a>
;     }
 8003872:      	ldr	r0, [sp, #0x4]
 8003874:      	and	r0, r0, #0x1
 8003878:      	add	sp, #0x10
 800387a:      	pop	{r7, pc}

0800387c <cortex_m::interrupt::disable::hf138034a7c17e25d>:
; pub fn disable() {
 800387c:      	push	{r7, lr}
 800387e:      	mov	r7, sp
;             __cpsid();
 8003880:      	bl	#-0x1eba
 8003884:      	b	#-0x2 <cortex_m::interrupt::disable::hf138034a7c17e25d+0xa>
; }
 8003886:      	pop	{r7, pc}

08003888 <__aeabi_memcpy>:
 8003888:      	push	{r4, r5, r6, r7, lr}
 800388a:      	add	r7, sp, #0xc
 800388c:      	str	r8, [sp, #-4]!
 8003890:      	cbz	r2, #0x10
 8003892:      	subs	r3, r2, #0x1
 8003894:      	and	r12, r2, #0x3
 8003898:      	cmp	r3, #0x3
 800389a:      	bhs	#0xc <__aeabi_memcpy+0x22>
 800389c:      	movs	r2, #0x0
 800389e:      	cmp.w	r12, #0x0
 80038a2:      	bne	#0x3e <__aeabi_memcpy+0x5c>
 80038a4:      	ldr	r8, [sp], #4
 80038a8:      	pop	{r4, r5, r6, r7, pc}
 80038aa:      	bic	r2, r2, #0x3
 80038ae:      	add.w	lr, r0, #0x1
 80038b2:      	rsbs	r4, r2, #0
 80038b4:      	add.w	r8, r1, #0x1
 80038b8:      	mvn	r2, #0x3
 80038bc:      	add.w	r5, r8, r2
 80038c0:      	add.w	r3, lr, r2
 80038c4:      	adds	r2, #0x4
 80038c6:      	ldrb	r6, [r5, #0x3]
 80038c8:      	strb	r6, [r3, #0x3]
 80038ca:      	ldrb	r6, [r5, #0x4]
 80038cc:      	strb	r6, [r3, #0x4]
 80038ce:      	ldrb	r6, [r5, #0x5]
 80038d0:      	strb	r6, [r3, #0x5]
 80038d2:      	ldrb	r5, [r5, #0x6]
 80038d4:      	strb	r5, [r3, #0x6]
 80038d6:      	adds	r3, r4, r2
 80038d8:      	adds	r3, #0x4
 80038da:      	bne	#-0x22 <__aeabi_memcpy+0x34>
 80038dc:      	adds	r2, #0x4
 80038de:      	cmp.w	r12, #0x0
 80038e2:      	beq	#-0x42 <__aeabi_memcpy+0x1c>
 80038e4:      	ldrb	r3, [r1, r2]
 80038e6:      	cmp.w	r12, #0x1
 80038ea:      	strb	r3, [r0, r2]
 80038ec:      	beq	#-0x4c <__aeabi_memcpy+0x1c>
 80038ee:      	adds	r3, r2, #0x1
 80038f0:      	cmp.w	r12, #0x2
 80038f4:      	ldrb	r6, [r1, r3]
 80038f6:      	strb	r6, [r0, r3]
 80038f8:      	beq	#-0x58 <__aeabi_memcpy+0x1c>
 80038fa:      	adds	r2, #0x2
 80038fc:      	ldrb	r1, [r1, r2]
 80038fe:      	strb	r1, [r0, r2]
 8003900:      	ldr	r8, [sp], #4
 8003904:      	pop	{r4, r5, r6, r7, pc}

08003906 <__aeabi_memcpy4>:
 8003906:      	push	{r4, r5, r7, lr}
 8003908:      	add	r7, sp, #0x8
 800390a:      	cmp	r2, #0x4
 800390c:      	blo	#0x62 <__aeabi_memcpy4+0x6c>
 800390e:      	sub.w	r12, r2, #0x4
 8003912:      	movs	r3, #0x1
 8003914:      	add.w	r3, r3, r12, lsr #2
 8003918:      	ands	lr, r3, #0x3
 800391c:      	beq	#0x2e <__aeabi_memcpy4+0x48>
 800391e:      	mov	r3, r1
 8003920:      	mov	r4, r0
 8003922:      	ldr	r5, [r3], #4
 8003926:      	cmp.w	lr, #0x1
 800392a:      	str	r5, [r4], #4
 800392e:      	bne	#0xc <__aeabi_memcpy4+0x38>
 8003930:      	mov	r2, r12
 8003932:      	mov	r0, r4
 8003934:      	mov	r1, r3
 8003936:      	cmp.w	r12, #0xc
 800393a:      	bhs	#0x16 <__aeabi_memcpy4+0x4e>
 800393c:      	b	#0x32 <__aeabi_memcpy4+0x6c>
 800393e:      	ldr	r3, [r1, #0x4]
 8003940:      	cmp.w	lr, #0x2
 8003944:      	str	r3, [r0, #0x4]
 8003946:      	bne	#0x30 <__aeabi_memcpy4+0x74>
 8003948:      	subs	r2, #0x8
 800394a:      	adds	r1, #0x8
 800394c:      	adds	r0, #0x8
 800394e:      	cmp.w	r12, #0xc
 8003952:      	blo	#0x1c <__aeabi_memcpy4+0x6c>
 8003954:      	ldr	r3, [r1]
 8003956:      	subs	r2, #0x10
 8003958:      	str	r3, [r0]
 800395a:      	cmp	r2, #0x3
 800395c:      	ldr	r3, [r1, #0x4]
 800395e:      	str	r3, [r0, #0x4]
 8003960:      	ldr	r3, [r1, #0x8]
 8003962:      	str	r3, [r0, #0x8]
 8003964:      	ldr	r3, [r1, #0xc]
 8003966:      	add.w	r1, r1, #0x10
 800396a:      	str	r3, [r0, #0xc]
 800396c:      	add.w	r0, r0, #0x10
 8003970:      	bhi	#-0x20 <__aeabi_memcpy4+0x4e>
 8003972:      	pop.w	{r4, r5, r7, lr}
 8003976:      	b.w	#-0xf2 <__aeabi_memcpy>
 800397a:      	ldr	r3, [r1, #0x8]
 800397c:      	subs	r2, #0xc
 800397e:      	str	r3, [r0, #0x8]
 8003980:      	adds	r1, #0xc
 8003982:      	adds	r0, #0xc
 8003984:      	cmp.w	r12, #0xc
 8003988:      	bhs	#-0x38 <__aeabi_memcpy4+0x4e>
 800398a:      	b	#-0x1c <__aeabi_memcpy4+0x6c>

0800398c <__aeabi_memset>:
 800398c:      	push	{r4, r6, r7, lr}
 800398e:      	add	r7, sp, #0x8
 8003990:      	cbz	r1, #0x3e
 8003992:      	subs	r3, r1, #0x1
 8003994:      	and	r12, r1, #0x3
 8003998:      	cmp	r3, #0x3
 800399a:      	bhs	#0x2 <__aeabi_memset+0x14>
 800399c:      	movs	r1, #0x0
 800399e:      	b	#0x22 <__aeabi_memset+0x38>
 80039a0:      	bic	r1, r1, #0x3
 80039a4:      	add.w	lr, r0, #0x1
 80039a8:      	rsbs	r3, r1, #0
 80039aa:      	mvn	r1, #0x3
 80039ae:      	add.w	r4, lr, r1
 80039b2:      	adds	r1, #0x4
 80039b4:      	strb	r2, [r4, #0x6]
 80039b6:      	strb	r2, [r4, #0x5]
 80039b8:      	strb	r2, [r4, #0x4]
 80039ba:      	strb	r2, [r4, #0x3]
 80039bc:      	adds	r4, r3, r1
 80039be:      	adds	r4, #0x4
 80039c0:      	bne	#-0x16 <__aeabi_memset+0x22>
 80039c2:      	adds	r1, #0x4
 80039c4:      	cmp.w	r12, #0x0
 80039c8:      	itt	ne
 80039ca:      	strbne	r2, [r0, r1]
 80039cc:      	cmpne.w	r12, #0x1
 80039d0:      	bne	#0x0 <__aeabi_memset+0x48>
 80039d2:      	pop	{r4, r6, r7, pc}
 80039d4:      	add	r0, r1
 80039d6:      	cmp.w	r12, #0x2
 80039da:      	strb	r2, [r0, #0x1]
 80039dc:      	it	ne
 80039de:      	strbne	r2, [r0, #0x2]
 80039e0:      	pop	{r4, r6, r7, pc}

080039e2 <__aeabi_memset4>:
 80039e2:      	push	{r4, r6, r7, lr}
 80039e4:      	add	r7, sp, #0x8
 80039e6:      	mov	r3, r2
 80039e8:      	uxtb	r2, r2
 80039ea:      	cmp	r1, #0x4
 80039ec:      	blo	#0x72 <__aeabi_memset4+0x80>
 80039ee:      	sub.w	lr, r1, #0x4
 80039f2:      	orr.w	r3, r2, r3, lsl #24
 80039f6:      	movs	r4, #0x1
 80039f8:      	orr.w	r3, r3, r2, lsl #16
 80039fc:      	add.w	r4, r4, lr, lsr #2
 8003a00:      	orr.w	r3, r3, r2, lsl #8
 8003a04:      	ands	r4, r4, #0x3
 8003a08:      	beq	#0x14 <__aeabi_memset4+0x3e>
 8003a0a:      	mov	r12, r0
 8003a0c:      	cmp	r4, #0x1
 8003a0e:      	str	r3, [r12], #4
 8003a12:      	bne	#0x12 <__aeabi_memset4+0x46>
 8003a14:      	mov	r1, lr
 8003a16:      	mov	r0, r12
 8003a18:      	cmp.w	lr, #0xc
 8003a1c:      	bhs	#0x32 <__aeabi_memset4+0x70>
 8003a1e:      	b	#0x18 <__aeabi_memset4+0x58>
 8003a20:      	cmp.w	lr, #0xc
 8003a24:      	bhs	#0x2a <__aeabi_memset4+0x70>
 8003a26:      	b	#0x10 <__aeabi_memset4+0x58>
 8003a28:      	cmp	r4, #0x2
 8003a2a:      	str	r3, [r0, #0x4]
 8003a2c:      	bne	#0x14 <__aeabi_memset4+0x62>
 8003a2e:      	adds	r0, #0x8
 8003a30:      	subs	r1, #0x8
 8003a32:      	mov	r12, r0
 8003a34:      	cmp.w	lr, #0xc
 8003a38:      	bhs	#0x16 <__aeabi_memset4+0x70>
 8003a3a:      	mov	r0, r12
 8003a3c:      	pop.w	{r4, r6, r7, lr}
 8003a40:      	b.w	#-0xb8 <__aeabi_memset>
 8003a44:      	str	r3, [r0, #0x8]
 8003a46:      	adds	r0, #0xc
 8003a48:      	subs	r1, #0xc
 8003a4a:      	mov	r12, r0
 8003a4c:      	cmp.w	lr, #0xc
 8003a50:      	blo	#-0x1a <__aeabi_memset4+0x58>
 8003a52:      	strd	r3, r3, [r0]
 8003a56:      	subs	r1, #0x10
 8003a58:      	strd	r3, r3, [r0, #8]
 8003a5c:      	adds	r0, #0x10
 8003a5e:      	cmp	r1, #0x3
 8003a60:      	bhi	#-0x12 <__aeabi_memset4+0x70>
 8003a62:      	mov	r12, r0
 8003a64:      	mov	r0, r12
 8003a66:      	pop.w	{r4, r6, r7, lr}
 8003a6a:      	b.w	#-0xe2 <__aeabi_memset>

08003a6e <HardFaultTrampoline>:
 8003a6e:      	mov	r0, lr
 8003a70:      	movs	r1, #0x4
 8003a72:      	tst	r0, r1
 8003a74:      	bne	#0x4 <HardFaultTrampoline+0xe>
 8003a76:      	mrs	r0, msp
 8003a7a:      	b	#0x4 <HardFault_>
 8003a7c:      	mrs	r0, psp
 8003a80:      	b	#-0x2 <HardFault_>

08003a82 <HardFault_>:
; pub unsafe extern "C" fn HardFault_(ef: &ExceptionFrame) -> ! {
 8003a82:      	push	{r7, lr}
 8003a84:      	mov	r7, sp
 8003a86:      	sub	sp, #0x8
 8003a88:      	str	r0, [sp, #0x4]
;     loop {
 8003a8a:      	b	#-0x2 <HardFault_+0xa>
 8003a8c:      	movs	r0, #0x4
;         atomic::compiler_fence(Ordering::SeqCst);
 8003a8e:      	strb	r0, [r7, #-5]
 8003a92:      	ldrb	r0, [r7, #-5]
 8003a96:      	bl	#-0x1f3a
 8003a9a:      	b	#-0x2 <HardFault_+0x1a>
;     loop {
 8003a9c:      	b	#-0x14 <HardFault_+0xa>
 8003a9e:      	bmi	#-0x58 <__aeabi_memset4+0x68>
