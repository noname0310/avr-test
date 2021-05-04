cargo build
avr-objcopy -S -j .text -j .data -O ihex target/avr-atmega328p/debug/avr-test.elf target/avr-atmega328p/debug/avr-test.hex
avrdude -q -patmega328p -carduino -PCOM3 -D "-Uflash:w:target/avr-atmega328p/debug/avr-test.hex:i"