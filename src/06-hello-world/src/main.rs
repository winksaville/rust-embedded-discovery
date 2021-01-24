#![deny(unsafe_code)]
#![no_main]
#![no_std]

#[allow(unused_imports)]
use aux6::{entry, iprint, iprintln};

#[entry]
fn main() -> ! {
    let mut itm: aux6::ITM = aux6::init();

    iprint!(&mut itm.stim[0], "iprint!: Hello, world!\n");
    iprintln!(&mut itm.stim[0], "iprintln!: Hello, world!");

    iprint!(&mut itm.stim[0], "iprint!: ");
    iprint!(&mut itm.stim[0], "1");
    iprint!(&mut itm.stim[0], "2");
    iprint!(&mut itm.stim[0], "\n");

    panic!("Hello, world from panic!");
}
