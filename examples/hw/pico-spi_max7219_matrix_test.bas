REM SPI MAX7219 test

data 0x0F, 0x01, 0x0F, 0x00

integer buffer(l)
cs=13
ll=2
pmode cs,OUT

sinit spi1, 11, 12, 10, 1000000

read buffer(0), buffer(1)
gosub maxWrite

pause 1000

read buffer(0), buffer(1)
gosub maxWrite

sdeinit spi1

end

maxWrite:
	dwrite cs, LOW
	swrite spi1, buffer, ll
	dwrite cs, HIGH
return
