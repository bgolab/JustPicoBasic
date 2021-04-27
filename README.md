JustPicoBasic, a BASIC for Raspberry PI PICO RP2040
===================================================

Features:

- targetted for both PICO and Windows
- PICO binary is compiled with 'no_flash' flag - just drag & drop the uf2 file to the PICO disk, and run putty
- BASIC: INT / FLOAT / STRING, arrays, GOSUB & GOTO with labels, FOR / WHILE, IF / ELSE, DATA / READ, PAUSE / GETTICK, math & logical expressions, build-in functions, built-in editor, non line oriented, no indentation, etc
- hw support: analog / digital, OLED modules, Pimoroni Pico Explorer Base (LCD, buttons, piezo), etc

Wiring
======
![alt text](https://github.com/bgolab/JustBasic/blob/main/manuals/wiring.jpg)

Terminal
======
![alt text](https://github.com/bgolab/JustBasic/blob/main/manuals/terminal.png)

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

Built-in temperature sensor
===========================
	TSENSOR=20
	pmode 100, TSENSOR
	for k=1 to 5 
		t1k=aread(100) 
		print t1k/1000,".",t1k%1000,"C"
		pause 500 
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

Flexible code format (non line oriented, no indentation required)
=================================================================
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
bg
