REM Temperature sensor v1
pmode 100, TSENSOR
for k=1 to 10 print aread(100) pause 500 next k
end
---
REM Temperature sensor v2
pmode 100, TSENSOR
float temp
for k=1 to 10 
	temp=aread(100)/1000.0
	print temp
	pause 1000
next k
end
-------------------------
REM Temperature sensor v3
pmode 100, TSENSOR
for k=1 to 5 
	t1k=aread(100) 
	print t1k/1000,".",t1k%1000,"C"
	pause 500 
next k
end
-------------------------
REM RC circuit - analog read (ADC) & PWM
pmode 26, ADC
pmode 22, PWM
awrite 22,16000
for k=1 to 20 print aread(26) pause 500 next k
awrite 22,32000
for k=1 to 20 print aread(26) pause 500 next k
end
-------------------------
REM RC circuit - analog read (ADC)
pmode 26, ADC
pmode 22, OUT
dwrite 22,1
for k=1 to 10 print aread(26) pause 500 next k
dwrite 22,0
end
-------------------------
REM RC circuit - digital read
pmode 26, IN
pmode 22, OUT
dwrite 22,1
for k=1 to 10 print dread(26) pause 500 next k
dwrite 22,0
end
-------------------------
REM explorer led - pin 25
pmode 25, OUT
for k=1 to 10 step 0
	pause 500
	dwrite 25,HIGH
	pause 500
	dwrite 25,LOW
next k
end
-------------------------
REM explorer buttons: a, b, x, y
a=12
b=13
x=14
y=15
pmode a, IN
pmode b, IN
pmode y, IN
pmode y, PULLUP
for k=1 to 10 step 0
	pause 50
	print dread(y)
next k
-------------------------
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
		dwrite 25,HIGH
		pause duration
		dwrite 25,LOW
		pause duration		
	next i 
return
---
REM LED - PWM
pmode 25, PWM
for k=1 to 10
cycle=65535*k/10
pause 300
print cycle
awrite 25,cycle
next k
end