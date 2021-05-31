-add examples with PMOD names for adc, pwm, in/ot digital, temp sensor
-------------------------
REM PMODE modes
INDIR=0
OUTDIR=1
PULLUP=2
PULLDOWN=3
ADC=10
PWM=15
TSENSOR=20
-------------------------
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
pmode 22, OUTDIR
dwrite 22,1
for k=1 to 10 print aread(26) pause 500 next k
dwrite 22,0
end
-------------------------
REM RC circuit - digital read
pmode 26, INDIR
pmode 22, OUTDIR
dwrite 22,1
for k=1 to 10 print dread(26) pause 500 next k
dwrite 22,0
end
-------------------------
REM explorer led - pin 25
pmode 25, OUTPUT
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
pmode a, 0
pmode b, 0
pmode y, 0

y=15
pmode y, 0
pmode y, 2
REM modes: 0-IN, 1-OUT, 2-PULLUP, 3-PULLDOWN
for k=1 to 10 step 0
	pause 50
	print dread(y)
next k
-------------------------
REM  peek applied to 64-bit counter
print peek(0x40054008)
print peek(0x4005400c)
print gettick()
end
#r

Press ESC to break!

0
1252320910
1252320
-------------------------
REM SYSTICK
SYSTCSR=0xe000e010
SYSTRVR=0xe000e014
SYSTCVR=0xe000e018
poke SYSTCSR, 0
poke SYSTRVR, 0x1e847
poke SYSTCSR, 5
for k=1 to 50
    print and(peek(SYSTCVR), 0x00FFFFFF)
    pause 1000
next k
end
#r

Press ESC to break!

55252
45668
35918
27168
17418
8668
124043
115168
-------------------------
REM OLED SINE
sm oled 1
lcls lref
sineno=1
for x=0 to 127
	lplot x,fix(15+15*sin(2*3.14159*x/128))
next x
lref
end
-------------------------
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
		dwrite 25,HIGH
		pause duration
		dwrite 25,LOW
		pause duration		
	next i 
return
-----------------------
REM ZIGZAG v1
lcls lref
xmin=0 xmax=127 ymin=0 ymax=31
ldraw xmin, ymin, xmax, ymin
ldraw xmax, ymin, xmax, ymax
ldraw xmax, ymax, xmin, ymax
ldraw xmin, ymax, xmin, ymin
lref
end
---
REM ZIGZAG v2
lcls lref
xmin=0 xmax=127 ymin=0 ymax=31
for k=0 to 10
	ldraw xmin+k, ymin+k, xmax, ymin+k
	ldraw xmax-k, ymin+k, xmax-k, ymax-k
	ldraw xmax-k, ymax-k, xmin+k, ymax-k
	ldraw xmin+k, ymax-k, xmin+k, ymin+k
	lref
	pause 200
next k
end

