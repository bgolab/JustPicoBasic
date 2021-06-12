REM SPI MAX7219 test
INTS=0x0A SCN=0x0B TST=0x0F DEC=0x09 SHT=0x0C
D0=0x01
D1=0x02
D2=0x03
D3=0x04
D4=0x05
D5=0x06
D6=0x07
D7=0x08

integer buf(l)
cs=13 ll=2
pmode cs,OUT
dwrite cs, HIGH

sinit spi1, 11, 12, 10, 1000

REM buf(0)=TST buf(1)=0x1 gosub maxW
REM pause 500
buf(0)=SCN buf(1)=0x07 gosub maxW
buf(0)=DEC buf(1)=0x00 gosub maxW
REM buf(0)=INTS buf(1)=0x01 gosub maxW
buf(0)=SHT buf(1)=0x01 gosub maxW
buf(0)=TST buf(1)=0x00 gosub maxW

for k=1 to 8
	buf(0)=k buf(1)=0x00 gosub maxW
next k

pause 1000

buf(0)=D0 buf(1)=0x1 gosub maxW
buf(0)=D1 buf(1)=0x2 gosub maxW
buf(0)=D2 buf(1)=0x4 gosub maxW
buf(0)=D3 buf(1)=0x8 gosub maxW
buf(0)=D4 buf(1)=0x8 gosub maxW
buf(0)=D5 buf(1)=0x4 gosub maxW
buf(0)=D6 buf(1)=0x2 gosub maxW
buf(0)=D7 buf(1)=0x1 gosub maxW

sdeinit spi1
end

maxW:
	dwrite cs, LOW
	swrite spi1, buf, ll
	dwrite cs, HIGH
return
