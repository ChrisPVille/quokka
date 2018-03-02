EESchema Schematic File Version 2
LIBS:power
LIBS:device
LIBS:transistors
LIBS:conn
LIBS:linear
LIBS:regul
LIBS:74xx
LIBS:cmos4000
LIBS:adc-dac
LIBS:memory
LIBS:xilinx
LIBS:microcontrollers
LIBS:dsp
LIBS:microchip
LIBS:analog_switches
LIBS:motorola
LIBS:texas
LIBS:intel
LIBS:audio
LIBS:interface
LIBS:digital-audio
LIBS:philips
LIBS:display
LIBS:cypress
LIBS:siliconi
LIBS:opto
LIBS:atmel
LIBS:contrib
LIBS:valves
LIBS:quokka-cache
EELAYER 25 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 1 8
Title ""
Date ""
Rev ""
Comp ""
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
$Sheet
S 7650 3300 750  350 
U 5A989333
F0 "keyboard" 60
F1 "sub_kbd.sch" 60
$EndSheet
$Sheet
S 4500 3250 2300 1350
U 5A98957A
F0 "fpga" 60
F1 "sub_fpga.sch" 60
$EndSheet
$Sheet
S 7700 4050 1400 600 
U 5A989584
F0 "display" 60
F1 "sub_display.sch" 60
$EndSheet
$Sheet
S 1750 4350 1800 900 
U 5A989590
F0 "6502" 60
F1 "sub_6502.sch" 60
$EndSheet
$Sheet
S 5300 5200 1550 800 
U 5A989599
F0 "gpio" 60
F1 "sub_gpio.sch" 60
$EndSheet
$Sheet
S 5100 1950 1500 800 
U 5A9895A2
F0 "micro" 60
F1 "sub_micro.sch" 60
$EndSheet
Text HLabel 7650 3400 2    60   Input ~ 0
row[5:0]
Text HLabel 7650 3550 2    60   Output ~ 0
column[4:0]
Text HLabel 6800 3400 0    60   Output ~ 0
KBD_row[5:0]
Text HLabel 6800 3550 0    60   Input ~ 0
KBD_col[4:0]
$Sheet
S 1800 1000 1050 700 
U 5A989E5E
F0 "power" 60
F1 "sub_power.sch" 60
$EndSheet
$EndSCHEMATC
