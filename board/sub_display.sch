EESchema Schematic File Version 4
LIBS:quokka-cache
EELAYER 26 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 5 15
Title ""
Date ""
Rev ""
Comp ""
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 "Quokka 6502 Microprocessor Trainer"
$EndDescr
$Sheet
S 4100 3100 1600 1000
U 5AC1379B
F0 "Digit Row 2" 50
F1 "sub_digit_row.sch" 50
F2 "Din" I L 4100 4000 50 
F3 "Dout" O R 5700 4000 50 
F4 "CLK" I L 4100 3200 50 
F5 "~RST" I L 4100 3300 50 
F6 "Load" I L 4100 3400 50 
$EndSheet
$Sheet
S 1850 3100 1600 1000
U 5AC137A8
F0 "Digit Row 1" 50
F1 "sub_digit_row.sch" 50
F2 "Din" I L 1850 4000 50 
F3 "Dout" O R 3450 4000 50 
F4 "CLK" I L 1850 3200 50 
F5 "~RST" I L 1850 3300 50 
F6 "Load" I L 1850 3400 50 
$EndSheet
$Sheet
S 6350 3100 1600 1000
U 5AC14525
F0 "Last Digit Row" 50
F1 "sub_last_digit_row.sch" 50
F2 "Din" I L 6350 4000 50 
F3 "CLK" I L 6350 3200 50 
F4 "~RST" I L 6350 3300 50 
F5 "Load" I L 6350 3400 50 
$EndSheet
Wire Wire Line
	6350 4000 5700 4000
Wire Wire Line
	4100 4000 3450 4000
Text HLabel 1350 2550 0    50   Input ~ 0
CLK
Text HLabel 1350 2650 0    50   Input ~ 0
~RST
Text HLabel 1350 2750 0    50   Input ~ 0
Load
Wire Wire Line
	1350 2550 1750 2550
Wire Wire Line
	6350 3200 6250 3200
Wire Wire Line
	6250 3200 6250 2550
Wire Wire Line
	4100 3200 4000 3200
Wire Wire Line
	4000 3200 4000 2550
Connection ~ 4000 2550
Wire Wire Line
	4000 2550 6250 2550
Wire Wire Line
	1850 3200 1750 3200
Wire Wire Line
	1750 3200 1750 2550
Connection ~ 1750 2550
Wire Wire Line
	1750 2550 4000 2550
Wire Wire Line
	1350 2650 1650 2650
Wire Wire Line
	1350 2750 1550 2750
Wire Wire Line
	6350 3300 6150 3300
Wire Wire Line
	6150 3300 6150 2650
Wire Wire Line
	6350 3400 6050 3400
Wire Wire Line
	6050 3400 6050 2750
Wire Wire Line
	4100 3300 3900 3300
Wire Wire Line
	3900 3300 3900 2650
Connection ~ 3900 2650
Wire Wire Line
	3900 2650 6150 2650
Wire Wire Line
	4100 3400 3800 3400
Wire Wire Line
	3800 3400 3800 2750
Connection ~ 3800 2750
Wire Wire Line
	3800 2750 6050 2750
Wire Wire Line
	1850 3300 1650 3300
Wire Wire Line
	1650 3300 1650 2650
Connection ~ 1650 2650
Wire Wire Line
	1650 2650 3900 2650
Wire Wire Line
	1850 3400 1550 3400
Wire Wire Line
	1550 3400 1550 2750
Connection ~ 1550 2750
Wire Wire Line
	1550 2750 3800 2750
Text HLabel 1350 4000 0    50   Input ~ 0
Din
Wire Wire Line
	1350 4000 1850 4000
$EndSCHEMATC
