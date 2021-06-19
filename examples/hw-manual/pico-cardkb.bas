REM I2C M5Stack CardKB mini keyboard  read test (blocking i2c read)
cardkb=0x5F
integer buf(10)

iinit i2c1, 6, 7, 100000

REM card kb has no pullups!
pmode 6, pullup
pmode 7, pullup

while 1>0
      iread i2c1, cardkb, buf, 1, 0
	  if(buf(0)!=0) then 
		print chr$(buf(0)) 
	  endif
	  pause 20
endwhile

ideinit i2c1
end

