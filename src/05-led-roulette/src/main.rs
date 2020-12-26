#![deny(unsafe_code)]
#![no_main]
#![no_std]

//use aux5::{entry, prelude::*, Delay, Leds};
//use volatile::Volatile;
//
//#[entry]
//fn main() -> ! {
//    let (mut delay, mut leds): (Delay, Leds) = aux5::init();
//
//    let mut half_period = 2000_u16;
//    let v_half_period = Volatile::new(&mut half_period);
//
//    loop {
//        leds[0].on();
//        delay.delay_ms(v_half_period.read());
//
//        leds[0].off();
//        delay.delay_ms(v_half_period.read());
//    }
//}

//use aux5::{entry, prelude::*, Delay, Leds};
//use core::sync::atomic::{AtomicU16, Ordering};
//
//#[entry]
//fn main() -> ! {
//    let (mut delay, mut leds): (Delay, Leds) = aux5::init();
//
//    let half_period = AtomicU16::new(2000_u16);
//
//    loop {
//        leds[0].on();
//        delay.delay_ms(half_period.load(Ordering::Relaxed));
//
//        leds[0].off();
//        delay.delay_ms(half_period.load(Ordering::Relaxed));
//    }
//}

// Wink's Solution:
//   wink@3900x:~/prgs/rust/tutorial/embedded-discovery/src/05-led-roulette (master)
//   $ cargo size --target thumbv7em-none-eabihf --bin led-roulette --release -- -A
//      Compiling led-roulette v0.1.0 (/home/wink/prgs/rust/tutorial/embedded-discovery/src/05-led-roulette)
//       Finished release [optimized + debuginfo] target(s) in 0.56s
//   led-roulette  :
//   section              size        addr
//   .vector_table         392   0x8000000
//   .text                 876   0x8000188
//   .rodata                44   0x80004f4
//   .data                   0  0x20000000
//   .bss                    4  0x20000000
//   .uninit                 0  0x20000004
//   .debug_loc           4137         0x0
//   .debug_abbrev        1324         0x0
//   .debug_info         28226         0x0
//   .debug_aranges        288         0x0
//   .debug_ranges        1216         0x0
//   .debug_str          21705         0x0
//   .debug_pubnames      6440         0x0
//   .debug_pubtypes      7571         0x0
//   .ARM.attributes        58         0x0
//   .debug_frame          328         0x0
//   .debug_line          8919         0x0
//   .comment               19         0x0
//   Total               81547

use aux5::{entry, prelude::*, Delay, Leds};

struct LedState {
    cnt: u8,
    idx: usize,
}

impl LedState {
    fn new(cnt: u8, idx: usize) -> Self {
        Self { cnt, idx }
    }

    fn tick(&mut self, leds: &mut Leds) {
        if self.cnt == 0 {
            self.led_off(leds);
            self.cnt = 4;
        }
        if self.cnt == 3 {
            self.led_on(leds);
        }
    }

    fn tock(&mut self) {
        self.cnt -= 1;
    }

    fn next_idx(&mut self) {
        self.idx = (self.idx + 2) & 0x7;
    }

    fn led_on(&self, leds: &mut Leds) {
        leds[self.idx].on();
    }

    fn led_off(&mut self, leds: &mut Leds) {
        leds[self.idx].off();
        self.next_idx();
    }
}

#[entry]
fn main() -> ! {
    let (mut delay, mut leds): (Delay, Leds) = aux5::init();

    let period = 50_u8;

    const COUNTS: u8 = 3;

    let mut state1 = LedState::new(1, 0);
    state1.led_on(&mut leds);

    let mut state2 = LedState::new(COUNTS, 1);
    state2.led_on(&mut leds);

    loop {
        state1.tick(&mut leds);
        state2.tick(&mut leds);

        delay.delay_ms(period);

        state1.tock();
        state2.tock();
    }
}

// Solution from "my-solution.md"
//   wink@3900x:~/prgs/rust/tutorial/embedded-discovery/src/05-led-roulette (master)
//   $ cargo size --target thumbv7em-none-eabihf --bin led-roulette --release -- -A
//      Compiling led-roulette v0.1.0 (/home/wink/prgs/rust/tutorial/embedded-discovery/src/05-led-roulette)
//       Finished release [optimized + debuginfo] target(s) in 0.60s
//   led-roulette  :
//   section              size        addr
//   .vector_table         392   0x8000000
//   .text                1428   0x8000188
//   .rodata                44   0x800071c
//   .data                   0  0x20000000
//   .bss                    4  0x20000000
//   .uninit                 0  0x20000004
//   .debug_loc           8353         0x0
//   .debug_abbrev        1292         0x0
//   .debug_info         40518         0x0
//   .debug_aranges        280         0x0
//   .debug_ranges        2856         0x0
//   .debug_str          20675         0x0
//   .debug_pubnames      6320         0x0
//   .debug_pubtypes      7426         0x0
//   .ARM.attributes        58         0x0
//   .debug_frame          300         0x0
//   .debug_line         10373         0x0
//   .comment               19         0x0
//   Total              100338

// Adding fn delay_ms and never inlining reduces
// the size significanlty and now .text is 4
// bytes larger and .rodata is 32 bytes larger
// than "Wink's Solution".
//
//   $ cargo size --bin led-roulette --release -- -A
//      Compiling led-roulette v0.1.0 (/home/wink/prgs/rust/tutorial/embedded-discovery/src/05-led-roulette)
//       Finished release [optimized + debuginfo] target(s) in 0.58s
//   led-roulette  :
//   section              size        addr
//   .vector_table         392   0x8000000
//   .text                 880   0x8000188
//   .rodata                76   0x80004f8
//   .data                   0  0x20000000
//   .bss                    4  0x20000000
//   .uninit                 0  0x20000004
//   .debug_loc           4671         0x0
//   .debug_abbrev        1326         0x0
//   .debug_info         29355         0x0
//   .debug_aranges        288         0x0
//   .debug_ranges         464         0x0
//   .debug_str          20921         0x0
//   .debug_pubnames      6382         0x0
//   .debug_pubtypes      7521         0x0
//   .ARM.attributes        58         0x0
//   .debug_frame          328         0x0
//   .debug_line          9115         0x0
//   .comment               19         0x0
//   Total               81800

//use aux5::{entry, prelude::*, Delay, Leds};
//
//#[inline(never)]
//fn delay_ms(delay: &mut Delay, ms: u8) {
//    delay.delay_ms(ms);
//}
//
//#[entry]
//fn main() -> ! {
//    let (mut delay, mut leds): (Delay, Leds) = aux5::init();
//
//    let ms = 50_u8;
//    loop {
//        for curr in 0..8 {
//            let next = (curr + 1) % 8;
//
//            leds[next].on();
//            delay_ms(&mut delay, ms);
//            leds[curr].off();
//            delay_ms(&mut delay, ms);
//        }
//    }
//}
