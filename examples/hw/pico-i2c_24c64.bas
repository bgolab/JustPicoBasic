l=100
integer bi_i(l), bo_i(l), eeIntAddr

eeI2CAddr=0x50
eeIntAddr=0
eeIntAddrH=eeIntAddr/256
eeIntAddrL=AND(eeIntAddr,0xFF)
bi_i(0)=eeIntAddrH
bi_i(1)=eeIntAddrL

REM I2C EE read tests (i2c0 is already initialized during PICO startup)
REM iinit i2c0, 0, 1, 400000
iwrite i2c0, eeI2CAddr, bi_i, 2, 0

pause 100

while 1>0
      iread i2c0, eeI2CAddr, bo_i, 1, 0
      if(bo_i(0)==0) then break endif
	  print bo_i(0)
endwhile

ideinit i2c0

end