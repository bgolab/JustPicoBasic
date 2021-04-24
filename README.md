JustPicoBasic, a BASIC for Raspberry PI PICO RP2040
===================================================

Features:

- targetted for both PICO and Windows (used mostly as development platform now)
- PICO binary is compiled with 'no_flash' flag - to start just drag & drop the uf2 file to the PICO disk, open putty or teraterm and press enter
- BASIC language in modern way: INT / FLOAT / STRING, arrays, GOSUB & GOTO use labels, FOR / NEXT, WHILE, IF / THEN / ELSE / ENDIF, DATA / READ, PAUSE / GETTICK, math & logical expressions, build-in command tracing, built-in editor, flexible code formatting (non line oriented), many build in functions including string processing, etc
- hardware support: some OLED modules and Pimoroni Pico Explorer Base (LCD, buttons, piezo)

Wiring
======
![alt text](https://github.com/bgolab/JustBasic/blob/main/manuals/wiring.jpg)

Blinky
=====
	REM Led-pin 25

	pmode 25, 1

	for k=1 to 10 step 0

		pause 500
	
		dwrite 25,1
	
		pause 500
	
		dwrite 25,0
	
	next k

	end

Loops & IFs
===========
	PRINT "IF/THEN/ELSE/ENDIF"
	a=0
	WHILE a <= 10
		IF a%2 = 1 THEN 
			PRINT "odd" 
			PRINT a 
		ELSE 
			PRINT "even ", a 
		ENDIF
		a=a+1
	ENDWHILE
	END

Flexible code format
====================
	m=3 data 2, 3, 4 
	sum=0 
	for i=1 to m read a sum=sum+a next i 
	print "sum=", sum 
	end

OLED 0.91" SINE
==============
	lcls
	for x=0 to 127
		plot x, fix(15+15*sin(2*3.14159*x/128))
	next x
	lref
	end

---
Bogdan Golab
