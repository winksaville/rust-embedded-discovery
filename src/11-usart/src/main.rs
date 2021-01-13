//#![deny(unsafe_code)]
#![no_main]
#![no_std]

use core::fmt::{self, Write};

#[allow(unused_imports)]
use aux11::{entry, iprint, iprintln, usart1, ITM};

macro_rules! uprint {
    ($serial:expr, $($arg:tt)*) => {
        $serial.write_fmt(format_args!($($arg)*)).ok()
    };
}

macro_rules! uprintln {
    // For somereason my minicom needs "\r" for EOL
    // and you need "linefeed ON". Use (Ctrl-A a)
    ($serial:expr, $fmt:expr) => {
        uprint!($serial, concat!($fmt, "\r"))
    };
    ($serial:expr, $fmt:expr, $($arg:tt)*) => {
        uprint!($serial, concat!($fmt, "\r"), $($arg)*)
    };
}

struct SerialPort {
    usart1: &'static mut usart1::RegisterBlock,
    // Added itm so write_str could use iprintln!
    itm: ITM,
}

impl fmt::Write for SerialPort {
    fn write_str(&mut self, s: &str) -> fmt::Result {
        //iprintln!("write_str: s={}", s);
        let _ = ws(self.usart1, s);
        Ok(())
    }
}


fn wc(usart: &mut usart1::RegisterBlock, ch: char) -> Result<(), &'static str> {
    // Wait for Transmit buffer Empty (TXE)
    while usart.isr.read().txe().bit_is_clear() {}

    // Send a single character
    unsafe {
        usart.tdr.write(|w| w.tdr().bits(ch as u16));
    }

    Ok(())
}

fn ws(usart: &mut usart1::RegisterBlock, s: &str) -> Result<(), &'static str> {
    for ch in s.chars() {
        match wc(usart, ch) {
            Ok(a) => a,
            Err(e) => return Err(e),
        }
    }

    Ok(())
}

fn rb(usart: &mut usart1::RegisterBlock) -> u8 {
    // Wait for a character
    while usart.isr.read().rxne().bit_is_clear() {};

    usart.rdr.read().rdr().bits() as u8
}

#[entry]
#[allow(unused_variables)]
fn main() -> ! {
    let (usart1, mono_timer, mut itm) = aux11::init();
    iprintln!(&mut itm.stim[0], "Hi");

    let mut serial = SerialPort { usart1, itm };

    let start = mono_timer.now();
    uprintln!(serial, "hello, world!");
    let elapsed = start.elapsed();


    iprintln!(
        &mut serial.itm.stim[0],
        "ws took {} ticks ({} us)",
        elapsed,
        ((elapsed as f32) / (mono_timer.frequency().0 as f32)) * 1e6
    );

    // A byte echo server
    loop {
        let b = rb(serial.usart1);
        let _ = wc(serial.usart1, b as char);
    }
}
