l=5
integer bi_u(l), bo_u(l)
for k=0 to l-1 bi_u(k)=2*k next k

REM UART loop-test (uart0 TX/GPIO0 is connected to RX/GPIO0)
uinit uart0, 0, 1, 9600
uwrite uart0, bi_u, l
pause 100
uread uart0, bo_u, l
udeinit uart0

end
