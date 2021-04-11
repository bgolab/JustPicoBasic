PRINT "DATA INT/FLOAT/STR, new READ syntax"
bru=2
DIM guru1(3)
DIM guru2#(4)
DATA 2*bru, 2.0, "abc", 5, 4.44, "def", 77, 88.00
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

end