JustPicoBasic, a BASIC for RPI PICO RP2040
==========================================

Features:

- PICO binary is compiled with 'no_flash' flag - just drag & drop the uf2 file to the PICO disk, and run putty
- BASIC: INTEGER / FLOAT / STRING data types, arrays, GOSUB & GOTO with labels, FOR / NEXT, WHILE / ENDWHILE, IF / THEN / ELSE / ENDIF, DATA / READ, PAUSE / GETTICK, math & logical expressions, string expression & functions, many build-in math functions
- built-in editor, flexible formatting (non line oriented, no indentation), etc
- hw support: analog / digital, i2c, uart, spi, OLED 0.91", EEPROM for program storage, etc

Wiring (just RPI PICO, OLED 0.91", EEPROM 24C64)
================================================
![alt text](https://github.com/bgolab/JustBasic/blob/main/manuals/wiring/wiring3.png)

Terminal
======
![alt text](https://github.com/bgolab/JustBasic/blob/main/manuals/terminal5.png)

Morse Code - SOS
================
	REM Morse Code SOS
	data 3, 150, 3, 450, 3, 130

	pmode 25,OUTPUT
	for k=1 to 3
		read blinks, duration
		gosub signal
		pause 1000
	next k
	end

	signal:
		for i=1 to blinks
			dwrite 25, HIGH
			pause duration
			dwrite 25,LOW
			pause duration		
		next i 
	return

Built-in temperature sensor
===========================
	pmode 100, TSENSOR
	for k=1 to 5 
		t1k=aread(100) 
		print t1k/1000,".",t1k%1000,"C"
		pause 500 
	next k
	end

WHILE & IF
==========
	a=0
	WHILE a <= 10
		IF a > 5 and a%2 = 1 THEN 
			PRINT a, " is odd and bigger than 5"
		ELSE 
			PRINT a, " is even or smaller than 5" 
		ENDIF
		a=a+1
	ENDWHILE
	END

Flexible formatting (non line oriented, no indentation required)
================================================================
	m=3 data 2, 3, 4 
	sum=0 
	for i=1 to m read a sum=sum+a next i 
	print "sum=", sum 
	end

OLED 0.91" SINE
==============
	lcls
	for x=0 to 127
		lplot x, fix(15+15*sin(2*3.14159*x/128))
	next x
	lref
	end

Modern variable syntax
======================
	integer a, b, c
	a=1 b=2	c=a+b
	print c
	float f1, f2, f3
	f1=1.0 f2=2.0 f3=f1+f2
	print f3
	string s1, s2, s3
	s1="a" s2="b" s3=s1+s2
	print s3
	end

Arrays
=======
	string days(7,10)
	data "Monday", "Tuesday", "Wednesday", "Thursday", "Friday", "Saturday", "Sunday"
	for k=0 to 6
		read days(k)
	next k
	for k=0 to 6
		print days(k)
	next k
---
bgolab
