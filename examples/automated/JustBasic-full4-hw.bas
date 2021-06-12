PRINT "CONSTANTS"
PRINT IN, ", ", OUT, ", ", PULLUP, ", ", PULLDOWN, ", ", ADC, ", ", PWM, ", ", TSENSOR, ", ", I2C0, ", ", I2C1, ", ", UART0, ", ", UART1, ", ", SPI0, ", ", SPI1
PRINT HIGH, ", ", LOW, ", ", ENABLE, ", ", DISABLE

PRINT " "

PRINT "I2C/UART/SPI PARSER SYNTAX"
IINIT i2c0, 4, 5
IINIT i2c1, 2, 3, 100000
UINIT uart0, 16, 17
UINIT uart1, 8, 9, 38400
SINIT spi0, 3, 0, 2
SINIT spi1, 11, 8, 10, 20000000
IDEINIT i2c0
UDEINIT uart0
SDEINIT spi0
IDEINIT i2c1
UDEINIT uart1
SDEINIT spi1

integer buf(10)
IREAD i2c0, 0x3c, buf ,10, 0
IWRITE i2c0, 0x3c, buf ,10, 0
UREAD  uart0, buf, 10
UWRITE  uart0, buf, 10
SREAD spi0, buf, 10
SWRITE spi0, buf, 10

PRINT " "

PRINT "GPIO SYNTAX"
PMODE 25, OUT 
DWRITE 25, HIGH 
DWRITE 25, LOW

PMODE 24, IN 
PMODE 24, PULLUP 
a=DREAD(24)

PMODE 26, ADC 
b=AREAD(26)

PMODE 20, PWM 
AWRITE 20, 1000

PRINT " "

PRINT "xREADABLE/xWRITABLE SYNTAX"
a=IREADABLE(i2c0) print a
a=IWRITABLE(i2c1) print a
a=UREADABLE(uart0) print a
a=UWRITABLE(uart1) print a
a=SREADABLE(spi0) print a
a=SWRITABLE(spi1) print a

print IREADABLE(i2c0)
print IWRITABLE(i2c1)
print UREADABLE(uart0)
print UWRITABLE(uart1)
print SREADABLE(spi0)
print SWRITABLE(spi1)

END