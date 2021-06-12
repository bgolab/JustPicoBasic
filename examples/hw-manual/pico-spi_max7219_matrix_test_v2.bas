REM MAX7219 (SPI test)
TESTREG=0x0F
tx=11 rx=12 sck=10 csn=13 baud=10000000 ll=2
integer buf(ll)
pmode csn,OUT

sinit spi1, tx, rx, sck, baud

buf(0)=TESTREG buf(1)=0x1 
gosub MaxWrite
pause 1000
buf(0)=TESTREG buf(1)=0x0 
gosub MaxWrite

sdeinit spi1
end

MaxWrite:
	dwrite csn, LOW
	swrite spi1, buf, ll
	dwrite csn, HIGH
return
