# Known issues
--------------
- 1.1b101: PICO cannot boot when no startup program; Workaround: use ESC to skip startup program during the boot; fixed in 1.1b103


### Release notes for v1.1 builds ###
-----------------------------
1.1b103 - beta release (will be published soon)
- moved to SDK 1.3.1
- FEATURES: INPUT “text”,var;  multi-dimensional arrays support; s$=”” to free heap memory;
- CHANGES: DATA - const only; STRING/INTEGER/FLOAT replaced by DIM v[,v][AS STRING|INTEGER|FLOAT]; non-static string & arrays(no-size required); new hw syntax
- PERF: improved LET & FOR implementation
- refactoring: heap packed string format to save memory;
- FIXED: booting issue when no startup program; READ commad float issue

1.1b101 - beta release
- FEATURES: servo/noservo added support (experimental)

1.1b100 - beta release (very early build in the v1.1 line)
- changes vs v1.0: comletelly re-written 32bit internal architecture (32bit tokens, 32bit int/float storage, etc), improved performance, changed 'sm' syntax, etc
