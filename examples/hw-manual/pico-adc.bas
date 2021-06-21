REM PICO ADC: low pass RC filter required on PWM output
adc_pin=26
pwm_pin=16

xstart=6000
xstop=65535
xstep=16

pmode pwm_pin,pwm
pmode adc_pin,adc

awrite adc_pin,0

for k=xstart to xstop step xstep
	awrite pwm_pin,k
	pause 1000
	print k, ",", aread(adc_pin)
next k
end
-------------------------
REM RC circuit - analog read (ADC) & PWM
pmode 26, ADC
pmode 22, PWM
awrite 22,16000
for k=1 to 20 print aread(26) pause 500 next k
awrite 22,32000
for k=1 to 20 print aread(26) pause 500 next k
end
-------------------------
REM Temperature sensor v3
pmode 100, TSENSOR
for k=1 to 5 
	t1k=aread(100) 
	print t1k/1000,".",t1k%1000,"C"
	pause 500 
next k
end
-------------------------
REM Temperature sensor v1
pmode 100, TSENSOR
for k=1 to 10 print aread(100) pause 500 next k
end
---
REM Temperature sensor v2
pmode 100, TSENSOR
float temp
for k=1 to 10 
	temp=aread(100)/1000.0
	print temp
	pause 1000
next k
end