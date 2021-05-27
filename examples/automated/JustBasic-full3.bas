REM 2-DIMENSIONAL ARRAYS
dim1=10 dim2=10
dim a(dim1,dim2), d#(dim1,dim2)
float b(dim1,dim2), c(dim1,dim2)

for k=0 to dim1-1
	for i=0 to dim2-1
		a(k,i)=k*i
	next i
next k
print a(4,7), ", ", a(5,8), ", ", a(7,6), ", ", a(8,9)

for k=0 to dim1-1
	for i=0 to dim2-1
		b(k,i)=k*i
	next i
next k
print b(4,7), ", ", b(5,8), ", ", b(7,6), ", ", b(8,9)

for k=0 to dim1-1
	for i=0 to dim2-1
		c(k,i)=k*i
	next i
next k
print c(4,7), ", ", c(5,8), ", ", c(7,6), ", ", c(8,9)

for k=0 to dim1-1
	for i=0 to dim2-1
		d#(k,i)=k*i
	next i
next k
print d#(4,7), ", ", d#(5,8), ", ", d#(7,6), ", ", d#(8,9)

REM STRING-ARRAYS
string ws(5,10)
ws(0)="a1234"
ws(1)="b1234"
print ws(0), ws(1)

dim ds$(5,10)
ds$(0)="x4321"
ds$(1)="y4321"
print ds$(0),ds$(1);
DATA "z4321" READ ds$(2) print ds$(2)

string days(7,10)
data "Monday", "Tuesday", "Wednesday", "Thursday", "Friday", "Saturday", "Sunday"
for k=0 to 6
	read days(k)
next k
for k=0 to 6
	print days(k)
next k

REM ASC
PRINT ASC("ABC"), ASC("")

REM Support for !=, ==
g=0
while g!=3
	if g==2 then print "two" endif
	if g!=2 then print "not two" endif
	g=g+1
endwhile

REM FOR / WHILE BREAK
for k1=1 to 10
	for i1=1 to 10
		if i1==2 then break endif
		print "i1:",i1
	next i1
	if k1==5 then break endif
	print "k1:",k1
	print "---"
next k1

s1=0
while s1<5
	print s1
	s1=s1+1
	if s1==3 then break endif
endwhile

for z1=1 to 8
	a1=0
	while a1<z1
		print a1;
		a1=a1+1
		if a1==5 then  break endif
	endwhile
	print ""
next z1

end
