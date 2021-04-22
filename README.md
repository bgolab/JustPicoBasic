JustPicoBasic, a BASIC for Raspberry PI PICO RP2040
=============================================================

Originally the project was named 'JustBasic' but it looks like this name is not unique so renamed it to 'JustPicoBasic'. At least for now;)

- the project is targetted for both PICO and Windows (used mostly as development platform now)
- the binary for PICO is compiled with 'no_flash' flag - just drag & drop the uf2 file, start putty and press enter
- aimed to support BASIC features in modern way: INT / FLOAT / STRING, arrays, GOSUB & GOTO to use labels instead of line numbers, FOR / NEXT, WHILE, IF / THEN / ELSE / ENDIF, DATA / READ, PAUSE / GETTICK, math & logical expressions, build-in command tracing, built-in editor, flexible code formatting (non line oriented), many build in functions including string processing, etc

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

General example
===============
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
	sineno=1
	for x=0 to 127
		plot x, fix(15+15*sin(2*3.14159*x/128))
	next x
	lref
	end

---
Bogdan Golab
