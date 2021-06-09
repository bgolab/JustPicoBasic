REM suffix less var and array(dim) syntax
integer gugi, gugi2, dgugi
float fgugi, fgugi2, ggugi
string sgugi, sgugi2
gugi=1
fgugi=1.0
sgugi="fgugi"
gugi2=2
fgugi2=2.0
sgugi2="fgugi2"
print gugi, ", ", fgugi, ", ", sgugi, ", ", gugi2, ", ", fgugi2, ", ", sgugi2

DIM dgugi(10), ggugi(10)
dgugi(2)=22
ggugi(2)=dgugi(2)
print dgugi(2), ", ", ggugi(2)

integer efti, defti(3)
efti=99
defti(0)=efti
print efti, ", ", defti(0)

float fefti2, gefti2(3)
fefti2=99
gefti2(0)=fefti2
print fefti2, ", ", gefti2(0)

REM MULTI-ARRAY DECLARATION
DIM e1(4)
DIM a1(2), b1#(2), c1(4)
DIM d1(4)
a1(0)=77
c1(0)=88
e1(0)=99
print a1(0), c1(0), e1(0)
integer ewu0
ewu0=a1(0)
print ewu0

REM MAX INTEGER IN FLOAT
for k=0 to 5
	a=16777216+k
	a#=a 
	b#=-a
	print a, "->", a#, ",", b#
next k

PRINT "MAX INTEGER IN FLOAT"
for k=0 to 5
	a=16777216+k
	a#=a 
	b#=-a
	print a, "->", a#, ",", b#
next k

PRINT "DATA INT/FLOAT/STR, new READ syntax"
bru=2
DIM guru1(3)
DIM guru2#(4)
DATA 2*bru, 2.0, "abc", 5, 4.44, "def", 77, -88.00
READ a, c#, egon$, b, d#, ifon$, guru1(0), guru2#(1)
PRINT a, ", ", c#, ", ", egon$, ", ", b, ", ", d#, ", ", ifon$, ", ", guru1(0), ", ", guru2#(1)

PRINT "Quadratic Equation"
a#=-2
b#=3
c#=-1 
delta#=b# * b# - 4 * a# * c#
x1# = (-b#-sqr(delta#))/(2*a#)
x2# = (-b#+sqr(delta#))/(2*a#)
PRINT "x1=", x1#, ", x2=", x2#

PRINT "SINE and SKIP the NEW LINE"
offset=50
scale=offset
for deg=0 to 360 step 9
	value#=offset+scale*sin(deg*2*3.14159/360)
	for iv#=0 to value# 
		print " ";
	next iv#
	print "X"
next deg

PRINT "INT & FIX"
a=INT(1.1)
b=INT(-1.1)
c=FIX(1.9)
d=FIX(-1.9)
PRINT a, ", ", b, ", ", c, ", ", d
PRINT INT(1.1), ", ", INT(-1.1), ", ", FIX(1.9), ", ", FIX(-1.9)

PRINT "TEST NUM32/NUM8+FLT32 formats"
a=1
print a
b=-1
print b
a=1000000
print a
b=-1000000
print b
c#=2
print c#
d#=-2
print d#
e#=2.345
print e#

PRINT "TEST TYPE-AWARE SCANNER AGAINST CODE COLLISION"
a=133
b=151
c=160
d=166
e=173
f=179
g=183

a=0
WHILE a<3 PRINT a a=a+1 ENDWHILE
FOR k=1 TO 3 
	PRINT k 
	IF k>1 THEN PRINT "OK" ENDIF
NEXT k

end


REM 133/8f:while,  151/90:endwhile, 153/8b:for, , 160/8c:to,  166/87:if, 173/88:then, 179/8e:next, 183/b1:end,  (183)

end