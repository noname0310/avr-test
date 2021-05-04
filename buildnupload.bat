cargo +nightly-2021-01-07 build
avr-objcopy -S -j .text -j .data -O ihex target/avr-atmega328p/debug/avr-test.elf target/avr-atmega328p/debug/avr-test.hex
avrdude -q -patmega328p -carduino -PCOM6 -D "-Uflash:w:target/avr-atmega328p/debug/avr-test.hex:i"
