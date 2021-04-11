JustBasic is a BASIC interpreter for Raspberry PI PICO RP2040

Inspired by Sinclair BASIC I used on my first ZX Spectrum personal computer.

State of work:
- the project is targetted for both PICO and Windows (used mostly as development platform now)
- the supported features are described in the manual and relevant examples can be found in examples folder
- the code for the PICO is compiled with 'no_flash' option so no flashing is required - just drag & drop the code to the PICO emulated disk, start the putty terminal and press enter
- it is assumed that POKE / PEEK will be used to address missing hardware features (the PICO examples show how to use systick timer) - NOTE: PEEK / POKE were not heavily tested - use them at your own RISK
- aimed to support most BASIC features in modern way: INT / FLOAT / STRING, arrays (now single dimension for INT / FLOAT), GOSUB & GOTO to use labels instead of line numbers, FOR / NEXT & WHILE loops and IF / THEN / ELSE / ENDIF with nesting, DATA / READ, PAYSE / GETTICK, complex expressions; build-in command tracing, built-in editor, flexible code formatting (non line oriented, many build in functions, and many others

Blinky example
==============
	REM Led-pin 25

	pmode 25, 1

	for k=1 to 10 step 0

		pause 500
	
		dwrite 25,1
	
		pause 500
	
		dwrite 25,0
	
	next k

	end

---
Bogdan Golab
