REM LED - PWM
pmode 25, PWM
for k=1 to 10
cycle=65535*k/10
pause 300
print cycle
awrite 25,cycle
next k
end