REM UART loop-test
l=8
integer bi(l), bo(l)
for k=0 to l-1 bi(k)=k next k
uinit uart0, 0, 1, 9600
uwrite uart0, bi, l
pause 100
uread uart0, bo, l
udeinit uart0
end
---------------------------------------------

