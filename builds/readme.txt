PICO builds release notes
-------------------------
CAVEATS:
- load / save not supported yet; 
- adc - not sure if the hw quality of the RP2040 is ok (still waiting RPI team to propose workarround)

NOTE: it is assumed that POKE / PEEK will be used to address missing hw features now BUT PEEK / POKE were not heavily tested - use them at your own RISK

NOTE: since the save / load commands are not supported yet ALL current builds are compiled with 'no_flash' option; 
(no flashing required then, just drag & drop in PICO USB emulated disk)
------------------------------------------------------------------------------------------------------------------
BUILDS:

1.0b18 - still beta release
- refactoring for performance
- fixed TeraTerm backspace problem (now both putty & teraterm supported)
- SM OLED control implemented

1.0b17 - still beta release
- bug fixes + refactoring
- OLED 0.91" 128x32 support (PLOT, DRAW, CIRCLE, LPRINT, LCLS, LREF
- INT / FIX commands
- SM - SYSMODE command (framework, ESC control for performance, future OLED control

1.0b11 - first published beta build for PICO RP2040
- feature list covered by v1.1x manual
