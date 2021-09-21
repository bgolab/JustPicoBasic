for angle=30 to 120 step 5
	servo 19, angle
	pause 500
	noservo 19
next angle

'noservo' will eliminate vibrations in bad quality servos
========================================================
SM 11
servoPin=19 level=90 lDelta=10
gosub setservo
FOR k=0 TO 1 STEP 0
	d=INKEY()
	IF d==asc("u") THEN 
		level=level+lDelta if level>180 then level=180 endif
		gosub setservo 
	ENDIF
	IF d==asc("d") THEN 
		level=level-lDelta if level<0 then level=0 endif
		gosub setservo
	ENDIF
	IF d==113 THEN BREAK ENDIF
	PAUSE 100
NEXT k
	level=90
	gosub setservo
END
setservo:
	servo servoPin, level 
	pause 400
	noservo servoPin	// fixed bad sg90 - it vibrates for unknown reason
RETURN
==============================
SM 11
servoPin=19 level=90 lDelta=5
servo servoPin, level
FOR k=0 TO 1 STEP 0
	d=INKEY()
	IF d==asc("u") THEN 
		level=level+lDelta if level>180 then level=180 endif 
		servo servoPin, level 
	ENDIF
	IF d==asc("d") THEN 
		level=level-lDelta if level<0 then level=0 endif
		servo servoPin, level 
	ENDIF
	IF d==113 THEN BREAK ENDIF
	PAUSE 50
NEXT k
	servo servoPin, 90
END
==============================
SM 11
FOR k=0 TO 1 STEP 0
	servo 19,30
	gosub waitKey
	servo 19,120
	gosub waitKey
next k
END
waitKey:
	d=INKEY()
	while d==0 d=INKEY() endwhile
RETURN