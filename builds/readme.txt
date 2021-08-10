NOTE: All current builds are compiled with 'no_flash' option so no flashing required to try the BASIC, just drag & drop the uf2 image into the PICO emulated disk.

Known issues
------------
- PICO cannot boot when no startup program; Workaround: use ESC to skip startup program during the boot

Release notes for v1.1 builds
-----------------------------
1.1b100 - beta release (very early build)
- changes vs v1.0: 32bit internal architecture (tokens structure, number storage, etc), improved performance, changed 'sm' syntax, etc


Release notes for v1.0 builds
-----------------------------
1.0b57 - beta release
- refactoring: variable access, for loop

1.0b56NW2 - beta release
-moved to SDK 1.2.0 (replaced the SDK 1.1.2)

1.0b56NW - beta release
- PERF: perf improvements, new buil-in perf tools
- refactoring: array handling, error handling

1.0b55NW - beta release
- PERF: perf improvements
- refactoring: name type handling

1.0b54NW - beta release
- PERF: perf improvement in variable parser

1.0b53NW - beta release
- PERF: perf improvement in expr parsers (int, float, logical)

1.0b52NW - beta release
- FIXED: abs/sgn/val float issues, refactored expr parser and hw code

1.0b51NW - beta release
- FEATURES: tone/notone added initial support

1.0b50NW - beta release
-FIXED: PICO stuck at boot when no EEPROM connected, 'ee'/'ed' to check if the EEPROM is available; 'is' replaced with 'is 0|1' to workaround the 'is' stuck issue   

1.0b49NW - beta release
- refactoring, better error handling (added detection of next-var missmatch, increased parser error verbosity level)

1.0b48NW - beta release
- FIXED: spi csn issue (bad byte sync)

1.0b47NW - beta release
- FIXED: xwrite/xread to return 1 when ready to write or read
- refactoring/changes: constants parsing, esc/oled are no longer a const, some cosmetic changes

1.0b46NW - beta release
- FIXED: INPUT constant collided with INPUT keyword - renamed both INPUT/OUTPUT constants to IN/OUT

1.0b45NW - beta release
- FIXED: spi to intialize 4 pins

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
