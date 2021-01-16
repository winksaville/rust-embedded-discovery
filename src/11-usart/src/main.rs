//#![deny(unsafe_code)]
#![no_main]
#![no_std]

use core::fmt::{self, Write};

#[allow(unused_imports)]
use aux11::{entry, iprint, iprintln, usart1, ITM};
use heapless::{consts, Vec};

macro_rules! uprint {
    ($serial:expr, $($arg:tt)*) => {
        $serial.write_fmt(format_args!($($arg)*)).ok()
    };
}

macro_rules! uprintln {
    // For somereason my minicom needs "\r" for EOL
    // so you need "linefeed ON" in minicom. Use (Ctrl-A a)
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
        //iprintln!("write_str: s={}", s);0
        let _ = ws(self.usart1, s);
        Ok(())
    }
}

fn wc(usart: &mut usart1::RegisterBlock, ch: char) {
    // Wait for Transmit buffer Empty (TXE)
    while usart.isr.read().txe().bit_is_clear() {}

    // Send a single character
    unsafe {
        usart.tdr.write(|w| w.tdr().bits(ch as u16));
    }
}

fn ws(usart: &mut usart1::RegisterBlock, s: &str) {
    for ch in s.chars() {
        wc(usart, ch);
    }
}

fn rb(usart: &mut usart1::RegisterBlock) -> u8 {
    // Wait for a character
    while usart.isr.read().rxne().bit_is_clear() {}

    usart.rdr.read().rdr().bits() as u8
}

fn readline(usart: &mut usart1::RegisterBlock, buffer: &mut Vec<u8, consts::U8>) {
    for _ in 0..buffer.capacity() {
        let b = rb(usart);
        let _ = wc(usart, b as char);
        if b == b'\r' {
            return;
        }
        let _ = buffer.push(b);
    }
}

fn reverse(buffer: &mut Vec<u8, consts::U8>) {
    if buffer.len() == 0 {
        return;
    }

    let last_idx = buffer.len() - 1;
    let mid = buffer.len() / 2;
    for i in 0..mid {
        let tmp: u8 = buffer[last_idx - i];
        buffer[last_idx - i] = buffer[i];
        buffer[i] = tmp;
    }
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

    //// A byte echo server
    //loop {
    //    let b = rb(serial.usart1);
    //    let _ = wc(serial.usart1, b as char);
    //}

    // Line by line
    let mut buffer: Vec<u8, consts::U8> = Vec::new();
    loop {
        buffer.clear();
        readline(serial.usart1, &mut buffer);
        uprintln!(serial, "buffer={:?}", buffer);
        reverse(&mut buffer);
        uprintln!(serial, "buffer={:?}", buffer);
    }
}
