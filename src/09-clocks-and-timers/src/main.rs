#![no_main]
#![no_std]
#![feature(asm)]

#![allow(unused_imports)]
use core::ptr;
use aux9::iprintln;
use aux9::{entry, tim6, ITM};

#[inline(never)]
fn delay(_itm: &mut ITM, tim6: &tim6::RegisterBlock, ms: u16) {
    // Write the the number of millisecs we want to wait
    tim6.arr.write(|w| w.arr().bits(ms));

    // Enable the counter
    tim6.cr1.modify(|_, w| w.cen().set_bit());

    // Wait until the update interrupt flag is set
    // i.e. until the timer fires
    while !tim6.sr.read().uif().bit_is_set() {}

    // Clear the uif
    tim6.sr.modify(|_, w| w.uif().clear_bit());
}

#[entry]
fn main() -> ! {
    let (mut leds, mut itm, rcc, tim6) = aux9::init();

    // Initialize TIM6

    // Power on TIM6 by enableing it
    rcc.apb1enr.modify(|_, w| w.tim6en().set_bit());

    // In CR1 register enable the One Pluse Mode (opm)
    // and clear Counter ENable (cen) to disable counter
    tim6.cr1.write(|w| w.opm().set_bit().cen().clear_bit());

    // Initialize TIM6 prescale assuming:
    //   counter_freq = abp1_freq / (prescale_value + 1)
    // Solve for prescale_value:
    //   prescale_value = (apb1_freg / counter_freq) - 1
    let apb1_freq = 8_000_000;
    let counter_freq = 1_000;
    let prescale_value: u16 = ((apb1_freq / counter_freq) - 1) as u16;
    tim6.psc.write(|w| w.psc().bits(prescale_value));

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
