#![no_main]
#![no_std]

//use core::ptr;
//
//#[allow(unused_imports)]
//use aux7::{entry, iprint, iprintln};
//
//#[entry]
//fn main() -> ! {
//    aux7::init();
//
//    unsafe {
//        // A magic address!
//        const GPIOE_BSRR: u32 = 0x48001018;
//
//        // Turn on the "North" LED (red)
//        ptr::write_volatile(GPIOE_BSRR as *mut u32, 1 << 9);
//
//        // Turn on the "East" LED (green)
//        ptr::write_volatile(GPIOE_BSRR as *mut u32, 1 << 11);
//
//        // Turn off the "North" LED
//        ptr::write_volatile(GPIOE_BSRR as *mut u32, 1 << (9 + 16));
//
//        // Turn off the "East" LED
//        ptr::write_volatile(GPIOE_BSRR as *mut u32, 1 << (11 + 16));
//    }
//
//    loop {}
//}
 
//// 0xBAAAAAAD address
//use core::ptr;
//
//#[allow(unused_imports)]
//use aux7::{entry, iprint, iprintln};
//
//#[entry]
//fn main() -> ! {
//    aux7::init();
//
//    unsafe {
//        ptr::read_volatile(0x4800_1800 as *const u32);
//    }
//
//    loop {}
//}

//// Spooky action at a distance, using GPIO_ODR
//use core::ptr;
//
//#[allow(unused_imports)]
//use aux7::{entry, iprint, iprintln};
//
//#[entry]
//fn main() -> ! {
//    let mut itm = aux7::init().0;
//
//    unsafe {
//        const GPIOE_BSRR: u32 = 0x4800_1018;
//        const GPIOE_ODR: u32 = 0x4800_1014;
//
//        iprintln!(
//            &mut itm.stim[0],
//            "ODR = 0x{:04x}",
//            ptr::read_volatile(GPIOE_ODR as *const u16)
//        );
//
//        // Turn on the NORTH LED (red)
//        ptr::write_volatile(GPIOE_BSRR as *mut u32, 1 << 9);
//
//        iprintln!(
//            &mut itm.stim[0],
//            "ODR = 0x{:04x}",
//            ptr::read_volatile(GPIOE_ODR as *const u16)
//        );
//
//        // Turn on the EAST LED (green)
//        ptr::write_volatile(GPIOE_BSRR as *mut u32, 1 << 11);
//
//        iprintln!(
//            &mut itm.stim[0],
//            "ODR = 0x{:04x}",
//            ptr::read_volatile(GPIOE_ODR as *const u16)
//        );
//
//        // Turn off the NORTH LED
//        ptr::write_volatile(GPIOE_BSRR as *mut u32, 1 << (9 + 16));
//
//        iprintln!(
//            &mut itm.stim[0],
//            "ODR = 0x{:04x}",
//            ptr::read_volatile(GPIOE_ODR as *const u16)
//        );
//
//        // Turn off the EAST LED
//        ptr::write_volatile(GPIOE_BSRR as *mut u32, 1 << (11 + 16));
//    }
//
//    loop {}
//}

#[allow(unused_imports)]
use aux7::{entry, iprint, iprintln};

// Type safe manipulation
#[entry]
fn main() -> ! {
    let gpioe = aux7::init().1;

    // Turn on the North LED
    gpioe.bsrr.write(|w| w.bs9().set_bit());

    // Turn on the East LED
    gpioe.bsrr.write(|w| w.bs11().set_bit());

    // Turn off the North LED
    gpioe.bsrr.write(|w| w.br9().set_bit());

    // Turn off the East LED
    gpioe.bsrr.write(|w| w.br11().set_bit());

    loop {}
}
