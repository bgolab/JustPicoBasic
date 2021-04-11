REM explorer led - pin 25
pmode 25, 1
for k=1 to 10 step 0
	pause 500
	dwrite 25,1
	pause 500
	dwrite 25,0
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
REM poke and GPIO 25
REM need to set dir out somehow???
print peek(0x400140cc)
poke 0x400140cc, 0x31F
end
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


