#![no_main]
#![no_std]
#![feature(asm)]

#![allow(unused_imports)]
use core::ptr;
use aux9::iprintln;
use aux9::{entry, tim6, ITM};

#[inline(never)]
fn delay(_itm: &mut ITM, _tim6: &tim6::RegisterBlock, ms: u16) {
    let v = 3;
    match v {
        1 => {
            //iprintln!(&mut _itm.stim[0], "delay v={}", v);
            const TPMS: u32 = 5_000u32;
            let count: u32 = (ms as u32) * TPMS;
            let p_count = &count as *const u32;
            for _ in 0..count {
                unsafe { let _ = ptr::read_volatile(p_count); }
            }
        }
        2 => {
            //iprintln!(&mut _itm.stim[0], "delay v=2");
            const TPMS: u32 = 1_000u32;
            let count: u32 = (ms as u32) * TPMS;
            for _ in 0..count {
                aux9::nop();
            }
        }
        3 => {
            //iprintln!(&mut _itm.stim[0], "delay v=3");
            const TPMS: u32 = 1_000u32;
            let count: u32 = (ms as u32) * TPMS;
            for _ in 0..count {
                unsafe{
                    asm!("nop");
                }
            }
        }
        _ => panic!("Unknown delay variant v={}", v)
    }
}

#[entry]
fn main() -> ! {
    let (mut leds, mut itm, _rcc, tim6) = aux9::init();

    // TODO initialize TIM6

    let ms = 50;
    loop {
        for curr in 0..8 {
            let next = (curr + 1) % 8;

            leds[next].on();
            delay(&mut itm, tim6, ms);
            leds[curr].off();
            delay(&mut itm, tim6, ms);
        }
    }
}
