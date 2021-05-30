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