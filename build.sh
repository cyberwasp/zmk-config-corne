!#/bin/bash

source .venv/bin/activate

west build -s zmk/app -b nice_nano_v2 -d build/settings_reset -- -DSHIELD="settings_reset"
west build -s zmk/app -b nice_nano_v2 -d build/right -- -DSHIELD="corne_right nice_oled"
west build -s zmk/app -b nice_nano_v2 -d build/left -S studio-rpc-usb-uart -- -DSHIELD="corne_left nice_oled"
