NOTE: All current builds are compiled with 'no_flash' option so no flashing required to try the BASIC, just drag & drop into PICO emulated disk.

PICO builds release notes
-------------------------
1.0b35 - beta release
- bug fixes (for-loop error when TO is lower than index when STEP is greater than 0) & refactoring

1.0b34 - beta release
- bug fixes (string array to keep asciiz) & refactoring, plus some cosmetic changes

1.0b33 - beta release
- FEATURES: Two dimensional integer/float arrays (DIM and suffixless syntax supported), string arrays (DIM and suffixless syntax supported), asc() function added

1.0b32 - beta release
- FIXED: int expr bug (introduced in 1.0b21 as a result of refactoring), fixed cosmetic OLED issues

1.0b31 - beta release
- FEATURES: OLED auto-detection added to automatically enable OLED functions.

1.0b30 - beta release
- tokenizer refactoring
- FEATURES: DIM multiple arrays declaration; experimental suffixless variable and array declaration (supposed to replace legacy suffix-based variable declaration)

1.0b29 - beta release
- FIXED: INPUT broken for float var
- refactoring for performance and memory usage

1.0b27 - beta release
- FEATURES: NEW lprint syntax (allows mixed expressions of INT/FLOAT/STR)

1.0b26 - beta release
- FEATURES: removed 'h'/'u'/'e' commands, introduced direct run (single line ad-hoc commands) through 'r' command, renamed plot/draw/circle to lplot/ldraw/lcircle

1.0b25 - beta release
- FIXED: TeraTerm BS to del char also on the screen

1.0b24 - beta release
- FEATURES: CLI: ed - EEPROM content dump, is - I2C scanner (shows I2C devices connected to both I2C buses)

1.0b23 - beta release
- FEATURES: CLI: s/l (save/load) initial support for EEPROM (24c64) to store BASIC program (auto.bas)

1.0b22 - beta release
- FEATURES: re-implemented rnd function (now based on ROSC RANDOMBIT with Von Neumann extractor as whitenizer)

1.0b21b - beta release
- bug fixes (lcls, sm oled) & refactoring (expr parser for perf)

1.0b20 - beta release
- bug fixes & refactoring
- FEATURES: timestamping enabled for microsecond perf measurement

1.0b19 - beta release
- error handling improved
- FEATURES: T1/T2 improved, SM LN added, AREAD (ADC) / AWRITE (PWM) / DREAD / DWRITE added

1.0b18 - beta release
- refactoring for performance
- FIXED: TeraTerm backspace problem (now both putty & teraterm supported), div by 0 crash (yes, it's true)
- FEATURES: SM OLED added

1.0b17 - beta release
- bug fixes + refactoring
- FEATURES: INT / FIX added, SM framework added, OLED 0.91" 128x32 support added (PLOT, DRAW, CIRCLE, LPRINT, LCLS, LREF)

1.0b11 - first published beta build for PICO RP2040
- FEATURES: covered by v1.1x manual
