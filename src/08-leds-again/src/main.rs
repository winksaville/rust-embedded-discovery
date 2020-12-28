//#![deny(unsafe_code)]
#![no_main]
#![no_std]

use core::ptr;
use aux8::{entry, iprintln};

fn read_ahbenr() -> u32 {
    const RCC: u32 = 0x4002_1000 + 0x14;
    unsafe { ptr::read_volatile(RCC as *const u32) }
}

#[entry]
fn main() -> ! {
    let (mut itm, gpioe, rcc) = aux8::init();

    // TODO initialize GPIOE
    iprintln!(&mut itm.stim[0], "1 read ahbenr={:#0x}", read_ahbenr());

    //// My original solution, which requires commenting out deny(unsafe_code)
    //rcc.ahbenr.write(|w| {
    //    unsafe { w.bits(1 << 21) }
    //});

    //// My modified solution which reads original value and then sets bit 21
    //rcc.ahbenr.write(|w| {
    //    unsafe { w.bits(read_ahbenr() | (1 << 21)) }
    //});

    // The "proper" solution which uses modify and sets bit iopen (i.e. 21)
    rcc.ahbenr.modify(|_, w| {
        w.iopeen().set_bit()
    });
    iprintln!(&mut itm.stim[0], "2 read ahbenr={:#0x}", read_ahbenr());

    // From the-solution.md, I didn't figure out :)
    gpioe.moder.modify(|_, w| {
        w.moder8().output();
        w.moder9().output();
        w.moder10().output();
        w.moder11().output();
        w.moder12().output();
        w.moder13().output();
        w.moder14().output();
        w.moder15().output()
    });

    // Turn on all the LEDs in the compass
    gpioe.odr.write(|w| {
        w.odr8().set_bit();
        w.odr9().set_bit();
        w.odr10().set_bit();
        w.odr11().set_bit();
        w.odr12().set_bit();
        w.odr13().set_bit();
        w.odr14().set_bit();
        w.odr15().set_bit()
    });

    aux8::bkpt();

    loop {}
}
