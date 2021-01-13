//#![deny(unsafe_code)]
#![no_main]
#![no_std]

#[allow(unused_imports)]
use aux11::{entry, iprint, iprintln, usart1::RegisterBlock};

fn wc(usart: &mut RegisterBlock, ch: char) -> Result<(), &'static str> {
    // Wait for Transmit buffer Empty (TXE)
    while usart.isr.read().txe().bit_is_clear() {}

    // Send a single character
    unsafe {
        usart.tdr.write(|w| w.tdr().bits(ch as u16));
    }

    Ok(())
}

fn ws(usart: &mut RegisterBlock, s: &str) -> Result<(), &'static str> {
    for ch in s.chars() {
        match wc(usart, ch) {
            Ok(a) => a,
            Err(e) => return Err(e),
        }
    }

    Ok(())
}

#[entry]
#[allow(unused_variables)]
fn main() -> ! {
    let (usart1, mono_timer, mut itm) = aux11::init();
    iprintln!(&mut itm.stim[0], "Hi");

    let start = mono_timer.now();
    // Send a single character
    let _ = ws(usart1, "hello, world!\r");
    let elapsed = start.elapsed();


    iprintln!(
        &mut itm.stim[0],
        "ws took {} ticks ({} us)",
        elapsed,
        ((elapsed as f32) / (mono_timer.frequency().0 as f32)) * 1e6
    );

    loop {}
}
