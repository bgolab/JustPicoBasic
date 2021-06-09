NOTE: All current builds are compiled with 'no_flash' option so no flashing required to try the BASIC, just drag & drop into PICO emulated disk.

PICO builds release notes
-------------------------
1.0b44NW - beta release
- FIXED: array element to var assignment issue for expr parser(the bug introduced in 1.0b33)
- FEATURES: New Wiring support(single i2c0 bus for both OLED and EEPROM); i2c/uart/spi to support string as the data buffer for writing

1.0b43NW - beta release
- FEATURES: it's 1.0b43 re-compiled for New Wiring (the one using single i2c0 bus for both EEPROM and OLED)

1.0b43 - beta release
- FIXED/REFACTORED: i2c/spi buffer issues, internal array handling, etc

1.0b42 - beta release
- FIXED: comma not tokenized when follows constant
- FEATURES: i2c/uart/spi support framework (experimental), name length increased to 10, many cosmetic changes related to terminal

1.0b41 - beta release
- FIXED: ESC-started lines corrupted the source code 
- FEATURES: changed the lcls behavior (now clears buffer memory without refreshing the screen)

1.0b40 - beta release
- FIXED: pwm channel issue for some pins, many cosmetic issues

1.0b39 - beta release
- FEATURES: built-in const for hw setup readability(INPUT/OUTPUT,PULLUP/PULLDOWN, ADC/PWM, TSENSOR, HIGH/LOW, ENABLE/DISABLE)

1.0b38 - beta release
- FEATURES: '==' / '!=" C-style condition supported, cli 'cc' added ('sm ln' removed), 'break' supported for for/while-loops
- cliparser/loopScanner refactored

1.0b37 - beta release
- FIXED: 'inkey' not to return 255 when no key pressed, 'inkey' to work when ESC disabled, 
- major keyboard handling refactoring

1.0b36 - beta release
- FIXED: 'ldraw' issues, 't1-t2' to support float variables
- FEATURES: new 'ldraw' syntax

1.0b35 - beta release
- FIXED: for-loop error when TO is lower than index, string array to keep asciiz
- array handling refactoring

1.0b33 - beta release
- FEATURES: Two dimensional integer/float arrays ('DIM' and suffixless syntax supported), string arrays ('DIM' and suffixless syntax supported), asc() function added

1.0b32 - beta release
- FIXED: int expr bug (introduced in 1.0b21 as a result of refactoring), fixed cosmetic OLED issues
- FEATURES: OLED auto-detection added to automatically enable OLED functions.

1.0b30 - beta release
- FIXED: 'INPUT' broken for float var
- FEATURES: 'DIM' multiple arrays declaration; experimental suffixless variable and array declaration (supposed to replace legacy suffix-based variable declaration)
- refactoring

1.0b27 - beta release
- FEATURES: NEW 'lprint' syntax; renamed 'plot/draw/circle' to 'lplot/ldraw/lcircle'; removed 'h'/'u'/'e' and introduced direct run through 'r'(ad-hoc command mode)
- FIXED: TeraTerm BS to del char also on the screen

1.0b24 - beta release
- FEATURES: ed(eeprom dump), is(i2c scanner); s/l(save/load) to store startup program in eeprom; re-implemented rnd (now based on ROSC RANDOMBIT with Von Neumann extractor as whitenizer)

1.0b21b - beta release
- bug fixes (lcls, sm oled) & refactoring (expr parser for perf) & refactoring
- FEATURES: timestamping enabled for microsecond perf measurement

1.0b19 - beta release
- error handling improved
- FEATURES: T1/T2 improved, SM LN added, AREAD (ADC) / AWRITE (PWM) / DREAD / DWRITE added

1.0b18 - beta release
- refactoring for performance
- FIXED: TeraTerm backspace problem (now both putty & teraterm supported), div by 0 crash (yes, it's true)
- FEATURES: 'SM OLED' added; 'INT' / 'FIX' added, SM framework added, OLED 0.91" 128x32 support added ('PLOT, DRAW, CIRCLE, LPRINT, LCLS, LREF')

1.0b11 - first published beta build for PICO RP2040
- FEATURES: covered by v1.1x manual
