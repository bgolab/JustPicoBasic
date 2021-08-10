PRINT "a-left, w-up, s-right, z-down, q-leave, f-speed"
x=64 y=16 lcls lplot x,y lref
speed=0
FOR k=0 TO 1 STEP 0
	d=INKEY()
	REM IF d<>0 THEN PRINT d, ", ", x, ", ", y ENDIF
	IF d=asc("q") THEN BREAK ENDIF
	if d=asc("f") THEN speed=1-speed print "speed: ", speed ENDIF
	if d=asc("w") THEN y=y-1-4*speed gosub point ENDIF
	if d=asc("a") THEN x=x-1-4*speed gosub point ENDIF
	if d=asc("z") THEN y=y+1+4*speed gosub point ENDIF
	if d=asc("s") THEN x=x+1+4*speed gosub point ENDIF
NEXT k
END
point: 
	if x>127 then x=127 endif
	if x<0 then x=0 endif
	if y>31 then y=31 endif
	if y<0 then y=0 endif
	lcls lplot x,y lref 
return
---
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
---
-------------------------
REM OLED SINE
sm 21
lcls lref
sineno=1
for x=0 to 127
	lplot x,fix(15+15*sin(2*3.14159*x/128))
next x
lref
end