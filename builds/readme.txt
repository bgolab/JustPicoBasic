PICO builds release notes
-------------------------
NOTE1: The manual for the current (latest) version is available in the manual folder.

NOTE2: save / load commands are not supported yet

NOTE3: ALL builds are compiled with 'no_flash' option (no flashing required then, just drag & drop in PICO USB emulated disk)

NOTE4: it is assumed that POKE / PEEK will be used to address missing hw features now BUT PEEK / POKE were not heavily tested - use them at your own RISK

BUILDS
------
1.0b21b - beta release
- bug fixes (lcls, sm oled) & refactoring (expr parser for perf)

1.0b20 - beta release
- bug fixes & refactoring
- timestamping enabled for microsecond perf measurement

1.0b19 - beta release
- error handling improved
- tracing T1/T2 improved
- SM LN control implemented
- AREAD (ADC) / AWRITE (PWM), DREAD / DWRITE commands

1.0b18 - beta release
- refactoring for performance
- fixed: TeraTerm backspace problem (now both putty & teraterm supported), div by 0 crash (yes, it's true)
- SM OLED control implemented

1.0b17 - beta release
- bug fixes + refactoring
- OLED 0.91" 128x32 support (PLOT, DRAW, CIRCLE, LPRINT, LCLS, LREF
- INT / FIX commands
- SM - SYSMODE command (framework, ESC control for performance, future OLED control

1.0b11 - first published beta build for PICO RP2040
- feature list covered by v1.1x manual
