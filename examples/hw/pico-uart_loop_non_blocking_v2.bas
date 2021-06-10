REM UART loop-test (uart0 TX/GPIO0 is connected to RX/GPIO1) - non-blocking test
l=3
waitTime=500
integer bufin(l), bufout(l)

uinit uart0, 0, 1, 9600
for k=1 to l
print "k=", k
	bufin(0)=k
	gosub testRX
	uwrite uart0, bufin, 1
	gosub testRX
	uread uart0, bufout, 1
	gosub testRX
next k
udeinit uart0

end

testRX:
	t_start=gettick() while gettick()<t_start+waitTime endwhile
	print ureadable(uart0)
return