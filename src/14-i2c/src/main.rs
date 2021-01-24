#![deny(unsafe_code)]
#![no_main]
#![no_std]

//use alloc::collections::binary_heap;
//use aux14::i2c1::RegisterBlock;
#[allow(unused_imports)]
use aux14::{entry, iprint, iprintln, prelude::*};

// Slave address
const MAGNETOMETER: u8 = 0b001_1110;

// Addresses of the magnetometer's registers
const OUT_X_H_M: u8 = 0x03;
//const IRA_REG_M: u8 = 0x0A;

// Tweaks to "My Solution", but
// returns 0x00 for IRA_REG_M :(

#[entry]
fn main() -> ! {
    // RefManual: I2C master mode 28.4.8
    //   Figure 309: page 842
    //    "Transfer sequence flowcart for I2C master transmitter for N<=255 bytes"

    let (i2c1, mut delay, mut itm) = aux14::init();

    loop {
        let mut wait_txis_1_counter = 0;
        let mut wait_txis_1 = || {
            // Wait while txis is 0 so we can send more data
            while i2c1.isr.read().txis().bit_is_clear() {
                //wait_txis_1_counter = wait_txis_1_counter + 1;
                wait_txis_1_counter += 1;
            }
        };

        let mut wait_tc_1_counter = 0;
        let mut wait_tc_1 = || {
            // Wait while register address is being sent
            while i2c1.isr.read().tc().bit_is_clear() {
                wait_tc_1_counter += 1;
            }
        };

        let mut wait_rxne_1_counter = 0;
        let mut wait_rxne_1 = || {
            // Wait while register address is being sent
            while i2c1.isr.read().rxne().bit_is_clear() {
                wait_rxne_1_counter += 1;
            }
        };

        // Stage 1: Send the address of the register we want to read to the
        // magnetometer

        // Initialize i2c1.cr2
        // RefManual: 28.7.2
        // Send start with MAGNETOMETER address
        i2c1.cr2.write(|w| {
            w.start().set_bit();
            w.sadd1().bits(MAGNETOMETER);
            w.rd_wrn().clear_bit();
            w.nbytes().bits(1);
            w.autoend().clear_bit()
        });
        wait_txis_1();

        // Send the address of OUT_X_H_M register in MAGNETOMETER we want to read
        i2c1.txdr.write(|w| {
            w.txdata().bits(OUT_X_H_M)
        });
        wait_tc_1();


        // Stage 2: Receive the contents of the register we asked for
        // Broadcast RESTART with MAGNETOMETER address with the R/W bit set to Read
        i2c1.cr2.modify(|_, w| {
            w.start().set_bit();
            //w.sadd1().bits(MAGNETOMETER); // Since autoend was 0 above sadd1 unchanged?
            w.rd_wrn().set_bit();
            w.nbytes().bits(6);
            w.autoend().set_bit()
        });

        // Read the 6 bytes of data
        let mut buffer = [0u8; 6];
        for byte in &mut buffer {
            wait_rxne_1();
            *byte = i2c1.rxdr.read().rxdata().bits()
        }

        // We don't need to explictly broadcast stop because AUTOEND is 1
        iprintln!(&mut itm.stim[0], "buffer: {:?} txis={} tc={} rxne={}", buffer, wait_txis_1_counter, wait_tc_1_counter, wait_rxne_1_counter);

        delay.delay_ms(1_000_u16);
    }
}

//// The original "My Solution"
//// Returns 0x00 for IRA_REG_M :(
//#[entry]
//fn main() -> ! {
//    let (i2c1, _delay, mut itm) = aux14::init();
//
//    // Stage 1: Send the address of the register we want to read to the
//    // magnetometer
//    {
//        // Broadcast START
//        // Broadcast the MAGNETOMETER address with the R/W bit set to Write
//        i2c1.cr2.write(|w| {
//            w.start().set_bit();
//            w.sadd1().bits(MAGNETOMETER);
//            w.rd_wrn().clear_bit();
//            w.nbytes().bits(1);
//            w.autoend().clear_bit()
//        });
//
//        // Wait until we can send more data
//        while i2c1.isr.read().txis().bit_is_clear() {}
//
//        // Send the address of the register that we want to read: IRA_REG_M
//        i2c1.txdr.write(|w| w.txdata().bits(IRA_REG_M));
//
//        // Wait until the previous byte has been transmitted
//        while i2c1.isr.read().tc().bit_is_clear() {}
//    }
//
//    // Stage 2: Receive the contents of the register we asked for
//    let byte = {
//        // Broadcast RESTART
//        // Broadcast the MAGNETOMETER address with the R/W bit set to Read
//        i2c1.cr2.modify(|_, w| {
//            w.start().set_bit();
//            w.nbytes().bits(1);
//            w.rd_wrn().set_bit();
//            w.autoend().set_bit()
//        });
//
//        // Wait until we have received the contents of the register
//        while i2c1.isr.read().rxne().bit_is_clear() {}
//
//        // Broadcast STOP (automatic because of `AUTOEND = 1`)
//
//        i2c1.rxdr.read().rxdata().bits()
//    };
//
//    // Expected output: 0x0A - 0b01001000
//    iprintln!(&mut itm.stim[0], "0x{:02X} - 0b{:08b}", IRA_REG_M, byte);
//
//    loop {}
//}

