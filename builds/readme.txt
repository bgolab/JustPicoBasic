PICO builds release notes
-------------------------

NOTE:
- since the save / load commands are not supported yet ALL current builds are compiled with 'no_flash' option; 
(no flashing required then, just drag & drop in PICO USB emulated disk)


1.0b11 - first published beta build for PICO RP2040
- feature list covered by v1.1xmanual



TODO list:
- load / save not supported yet; 
- graphic features not supported yet; 
- i2c / spi, adc (not sure if the hw quality of the RP2040 is ok)

NOTE: it is assumed that POKE / PEEK will be used to address missing hardware features (see systick example)
BUT: PEEK / POKE were not heavily tested - use them at your own RISK
