REM SPI MAX7219 test
INTS=0x0A SCN=0x0B TST=0x0F DEC=0x09 SHT=0x0C

integer buf(l)
cs=13 ll=2
pmode cs,OUT
dwrite cs, HIGH

sinit spi1, 11, 12, 10, 1000
gosub maxInit
gosub maxTest
gosub maxClear
for x=0 to 7 y=x gosub maxPlot pause 200 next x
sdeinit spi1
end

maxInit:
	addr=SCN value=0x07 gosub maxWrite
	addr=DEC value=0x00 gosub maxWrite
	addr=SHT value=0x01 gosub maxWrite
return

maxWrite:
REM arg: addr, value
	buf(0)=addr buf(1)=value
	dwrite cs, LOW
	swrite spi1, buf, ll
	dwrite cs, HIGH
return

maxPlot:
REM arg: x, y
	addr=x+1 value=1
	for yy=0 to y-1 
		value=2*value 
	next yy
	gosub maxWrite
return

maxClear:
	for j=1 to 8 
		addr=j value=0 gosub maxWrite 
	next j
return

maxTest:
	addr=TST value=0x01 gosub maxWrite 
	pause 500 
	value=0x00 gosub maxWrite
return
