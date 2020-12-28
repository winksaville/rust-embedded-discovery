//! Initialization code

#![no_std]

#[allow(unused_extern_crates)] // NOTE(allow) bug rust-lang/rust#53964
extern crate panic_itm; // panic handler

pub use cortex_m::{asm::bkpt, iprintln, peripheral::ITM};
pub use cortex_m_rt::entry;
pub use f3::hal::stm32f30x::{gpioc, rcc};

use f3::hal::stm32f30x::{self, GPIOE, RCC};

pub fn init() -> (ITM, &'static gpioc::RegisterBlock, &'static rcc::RegisterBlock) {
    // restrict access to the other peripherals
    (stm32f30x::Peripherals::take().unwrap());

    let p = cortex_m::Peripherals::take().unwrap();

    unsafe { (p.ITM, &*GPIOE::ptr(), &*RCC::ptr()) }
}
