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
