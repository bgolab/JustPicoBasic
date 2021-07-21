JustPicoBasic, a BASIC interpreter for RPI PICO RP2040
==========================================

Features:

- INTEGER / FLOAT / STRING data types, arrays, GOSUB & GOTO with labels, FOR & WHILE loops, IF / ELSE conditional, DATA / READ, PAUSE / GETTICK, math / logical / string expressions, many build-in math functions
- built-in editor, flexible formatting (non line oriented, no indentation), etc
- hw support: analog / digital, i2c / uart / spi, OLED 0.91", EEPROM for program storage, etc
- tested on the standard breadboard (PICO with OLED & EEPROM), and Cytron Maker PI PICO board

Breadboard wiring (PICO, OLED 0.91", EEPROM 24C64)
==================================================
![alt text](https://github.com/bgolab/JustBasic/blob/main/manuals/wiring/wiring3.png)

Terminal
======
![alt text](https://github.com/bgolab/JustBasic/blob/main/manuals/terminal7.png)

Morse Code - SOS
================
	REM Morse Code SOS
	data 3, 150, 3, 450, 3, 130

	pmode 25,OUT
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
SPI
===
	REM MAX7219 (SPI test)
	TESTREG=0x0F
	tx=11 rx=12 sck=10 csn=13 baud=10000000 ll=2
	integer buf(ll)
	pmode csn,OUT

	sinit spi1, tx, rx, sck, baud
	buf(0)=TESTREG buf(1)=0x1 
	gosub MaxWrite
	pause 1000
	buf(0)=TESTREG buf(1)=0x0 
	gosub MaxWrite
	sdeinit spi1
	end

	MaxWrite:
		dwrite csn, LOW
		swrite spi1, buf, ll
		dwrite csn, HIGH
	return
Play music
==========
	N_C3=131 N_CS3=139 N_D3=147 N_DS3=156 N_E3=165 N_F3=175 N_FS3=185 N_G3=196 N_GS3=208 N_A3=220 N_AS3=233 N_B3=247 N_C4=262 N_CS4=277 N_D4=294 N_DS4=311 N_E4=330 N_F4=349 N_FS4=370 N_G4=392 N_GS4=415 N_A4=440 N_AS4=466 N_B4=494 N_C5=523 N_CS5=554 N_D5=587 N_DS5=622 N_E5=659 N_F5=698 N_FS5=740 N_G5=784 N_GS5=831 N_A5=880 N_AS5=932 N_B5=988

	piezo_pin=18
	max_tones=8

	DATA N_C4, N_D4, N_E4, N_F4, N_G4, N_A4, N_B4, N_C5
	for k=1 to max_tones
		read freq
		tone piezo_pin, freq
		pause 500
	next k
	notone 18
	end
---
bgolab
