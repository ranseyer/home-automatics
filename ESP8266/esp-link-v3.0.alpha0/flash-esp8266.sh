esptool.py --port /dev/ttyUSB0 --baud 230400 write_flash -fs 32m -ff 80m \
    0x00000 boot_v1.6.bin 0x1000 user1.bin \
    0x3FC000 esp_init_data_default.bin 0x3FE000 blank.bin

