EESchema Schematic File Version 4
LIBS:quokka-cache
EELAYER 26 0
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
S 1100 900  1600 850 
U 5A9C14CE
F0 "Power" 50
F1 "sub_power.sch" 50
$EndSheet
$Sheet
S 1450 4750 1800 900 
U 5A9C14D9
F0 "6502" 50
F1 "sub_6502.sch" 50
$EndSheet
$Sheet
S 5100 1950 1950 1000
U 5A9C14E5
F0 "Microcontroller" 50
F1 "sub_micro.sch" 50
$EndSheet
$Sheet
S 5100 3600 2300 1550
U 5A9C14F1
F0 "FPGA" 50
F1 "sub_fpga.sch" 50
F2 "KBD_col[0:5]" O R 7400 3700 50 
F3 "KBD_row[0:4]" I R 7400 3800 50 
$EndSheet
$Sheet
S 5100 5700 2050 750 
U 5A9C14FD
F0 "GPIO" 50
F1 "sub_gpio.sch" 50
$EndSheet
$Sheet
S 8350 4650 2450 900 
U 5A9C150A
F0 "Display" 50
F1 "sub_display.sch" 50
$EndSheet
$Sheet
S 8150 3250 600  350 
U 5A9C1519
F0 "Keyboard" 50
F1 "sub_keyboard.sch" 50
F2 "column[5:0]" I L 8150 3350 50 
F3 "row[4:0]" O L 8150 3500 50 
$EndSheet
Wire Bus Line
	7400 3700 7750 3700
Wire Bus Line
	7750 3700 7750 3350
Wire Bus Line
	7750 3350 8150 3350
Wire Bus Line
	7850 3500 7850 3800
Wire Bus Line
	7850 3800 7400 3800
Wire Bus Line
	8150 3500 7850 3500
$EndSCHEMATC
