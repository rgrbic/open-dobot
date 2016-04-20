#!/bin/bash

# Replace with were Arduino is installed in your system.
AVR_DIR=/Applications/Arduino.app/Contents/Java/hardware/tools/avr
SERIAL_PORT=/dev/cu.usbmodem1421

$AVR_DIR/bin/avrdude -C${AVR_DIR}/etc/avrdude.conf -patmega2560 -cwiring -P${SERIAL_PORT} -b115200 -D -Uflash:w:$1.hex:i
