Wiring changes history:
- wiring.jpg (obsoleted) - initial wiring for OLED 0.91" using i2c0(GPIO16,GPIO17)
- wiring2.jpg (obsoleted) - added EEPROM 24C64 using I2C1(GPIO2,GPIO3); supported on builds up to 1.0b43
- wiring3.png (current-simlified wiring) - re-wired to use single i2c0 bus only (GPIO4,GPIO5); supported on build 1.0b43NW, 1.0b44 and onwards

The following circuits were used during the development & testing:
1. For builds versions <=1.0b43 use the wiring2.jpg scheme
I2C0(GPIO16, GPIO17): OLED0.91 [address: 0x3C], internal pull-ups resistors of 2x4.7k
I2C1(GPIO2, GPIO3): EEPROM-C64 [address: 0x50], external pull-ups resistors of 2x10k

2. For build versions 1.0b43NW, 1.0b44 and onward including 1.1 line use the wiring3.png scheme
I2C0(GPIO4, GPIO5): OLED0.91 [address: 0x3C], EEPROM-C64 [address: 0x50]
