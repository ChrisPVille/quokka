EESchema Schematic File Version 4
LIBS:quokka-cache
EELAYER 26 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 10 14
Title ""
Date ""
Rev ""
Comp ""
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 "Quokka 6502 Microprocessor Trainer"
$EndDescr
Text HLabel 5350 4900 0    50   UnSpc ~ 0
6502_DATA[7..0]
Text HLabel 5350 2650 0    50   UnSpc ~ 0
6502_ADDR[19..0]
Text HLabel 5750 5900 0    50   UnSpc ~ 0
6502_R~W
Text HLabel 5750 6000 0    50   UnSpc ~ 0
6502_RDY
Text HLabel 5750 6100 0    50   UnSpc ~ 0
6502_PHI1
Text HLabel 5750 6200 0    50   UnSpc ~ 0
6502_PHI0
Text HLabel 6250 6200 2    50   UnSpc ~ 0
6502_PHI2
Text HLabel 6250 6100 2    50   UnSpc ~ 0
6502_~IRQ
Text HLabel 6250 6000 2    50   UnSpc ~ 0
6502_~NMI
Text HLabel 6250 5900 2    50   UnSpc ~ 0
6502_~RES
Text HLabel 6250 5800 2    50   UnSpc ~ 0
6502_SO
Text HLabel 6250 5600 2    50   UnSpc ~ 0
OPT1_~cs
Text HLabel 6250 5500 2    50   UnSpc ~ 0
OPT2_~cs
Text HLabel 6250 5700 2    50   UnSpc ~ 0
6502_SYNC
Text HLabel 6600 2650 2    50   BiDi ~ 0
FPGA_Expansion[7..0]
$Comp
L Connector_Generic:Conn_02x36_Counter_Clockwise J1001
U 1 1 5AB66C6D
P 5950 4400
F 0 "J1001" H 6000 6317 50  0000 C CNN
F 1 "Conn_02x36_Counter_Clockwise" H 6000 6226 50  0000 C CNN
F 2 "" H 5950 4400 50  0001 C CNN
F 3 "~" H 5950 4400 50  0001 C CNN
	1    5950 4400
	1    0    0    -1  
$EndComp
Entry Wire Line
	5550 5100 5450 5000
Entry Wire Line
	5550 5200 5450 5100
Entry Wire Line
	5550 5300 5450 5200
Entry Wire Line
	5550 5400 5450 5300
Entry Wire Line
	5550 5500 5450 5400
Entry Wire Line
	5550 5600 5450 5500
Entry Wire Line
	5550 5700 5450 5600
Entry Wire Line
	5550 5800 5450 5700
Entry Wire Line
	5600 3900 5500 4000
Entry Wire Line
	5600 4000 5500 4100
Entry Wire Line
	5600 4100 5500 4200
Entry Wire Line
	5500 3900 5600 3800
Entry Wire Line
	5500 3800 5600 3700
Entry Wire Line
	5500 3700 5600 3600
Entry Wire Line
	5500 3600 5600 3500
Entry Wire Line
	5500 3300 5600 3200
Entry Wire Line
	5500 3200 5600 3100
Entry Wire Line
	5500 3100 5600 3000
Entry Wire Line
	5500 3000 5600 2900
Entry Wire Line
	5500 2900 5600 2800
Entry Wire Line
	5500 2800 5600 2700
Entry Wire Line
	5500 3400 5600 3300
Entry Wire Line
	5500 3500 5600 3400
Text Label 5600 3900 0    50   ~ 0
A12
Text Label 5600 4000 0    50   ~ 0
A13
Text Label 5600 4100 0    50   ~ 0
A14
Text Label 5600 4200 0    50   ~ 0
A15
Text Label 5600 2700 0    50   ~ 0
A0
Text Label 5600 2800 0    50   ~ 0
A1
Text Label 5600 2900 0    50   ~ 0
A2
Text Label 5600 3000 0    50   ~ 0
A3
Text Label 5600 3100 0    50   ~ 0
A4
Text Label 5600 3200 0    50   ~ 0
A5
Text Label 5600 3300 0    50   ~ 0
A6
Text Label 5600 3500 0    50   ~ 0
A8
Text Label 5600 3400 0    50   ~ 0
A7
Text Label 5600 3600 0    50   ~ 0
A9
Text Label 5600 3700 0    50   ~ 0
A10
Text Label 5600 3800 0    50   ~ 0
A11
Wire Wire Line
	5600 3900 5750 3900
Wire Wire Line
	5750 4000 5600 4000
Wire Wire Line
	5600 4100 5750 4100
Wire Wire Line
	5750 4200 5600 4200
Wire Wire Line
	5750 3800 5600 3800
Wire Wire Line
	5600 3700 5750 3700
Wire Wire Line
	5750 3600 5600 3600
Wire Wire Line
	5600 3500 5750 3500
Wire Wire Line
	5750 3400 5600 3400
Wire Wire Line
	5600 3300 5750 3300
Wire Wire Line
	5750 3200 5600 3200
Wire Wire Line
	5600 3100 5750 3100
Wire Wire Line
	5750 3000 5600 3000
Wire Wire Line
	5600 2900 5750 2900
Wire Wire Line
	5750 2800 5600 2800
Wire Wire Line
	5600 2700 5750 2700
Wire Wire Line
	5550 5800 5750 5800
Wire Wire Line
	5750 5700 5550 5700
Wire Wire Line
	5550 5600 5750 5600
Wire Wire Line
	5750 5500 5550 5500
Wire Wire Line
	5550 5400 5750 5400
Wire Wire Line
	5750 5300 5550 5300
Wire Wire Line
	5550 5200 5750 5200
Wire Wire Line
	5750 5100 5550 5100
Text Label 5550 5100 0    50   ~ 0
D0
Text Label 5550 5200 0    50   ~ 0
D1
Text Label 5550 5300 0    50   ~ 0
D2
Text Label 5550 5400 0    50   ~ 0
D3
Text Label 5550 5500 0    50   ~ 0
D4
Text Label 5550 5600 0    50   ~ 0
D5
Text Label 5550 5700 0    50   ~ 0
D6
Text Label 5550 5800 0    50   ~ 0
D7
Entry Wire Line
	5600 4300 5500 4400
Entry Wire Line
	5600 4400 5500 4500
Entry Wire Line
	5600 4500 5500 4600
Entry Wire Line
	5600 4600 5500 4700
Entry Wire Line
	5500 4300 5600 4200
Text Label 5600 4300 0    50   ~ 0
A16
Text Label 5600 4400 0    50   ~ 0
A17
Text Label 5600 4500 0    50   ~ 0
A18
Text Label 5600 4600 0    50   ~ 0
A19
Wire Wire Line
	5600 4300 5750 4300
Wire Wire Line
	5750 4400 5600 4400
Wire Wire Line
	5600 4500 5750 4500
Wire Wire Line
	5750 4600 5600 4600
Wire Bus Line
	5350 4900 5450 4900
$Comp
L power:GND #PWR01001
U 1 1 5AB6DD73
P 5600 4900
F 0 "#PWR01001" H 5600 4650 50  0001 C CNN
F 1 "GND" H 5500 5000 50  0001 C CNN
F 2 "" H 5600 4900 50  0001 C CNN
F 3 "" H 5600 4900 50  0001 C CNN
	1    5600 4900
	1    0    0    -1  
$EndComp
Wire Wire Line
	5750 4700 5600 4700
Wire Wire Line
	5750 5000 5700 5000
Wire Wire Line
	5700 5000 5700 4900
Wire Wire Line
	5750 4900 5700 4900
Connection ~ 5700 4900
Wire Wire Line
	5750 4800 5700 4800
Wire Wire Line
	5700 4800 5700 4900
Wire Wire Line
	5600 4700 5600 4900
Wire Wire Line
	5600 4900 5700 4900
Connection ~ 5600 4900
Entry Wire Line
	6500 3300 6400 3200
Entry Wire Line
	6500 3200 6400 3100
Entry Wire Line
	6500 3100 6400 3000
Entry Wire Line
	6500 3000 6400 2900
Entry Wire Line
	6500 2900 6400 2800
Entry Wire Line
	6500 2800 6400 2700
Entry Wire Line
	6500 3400 6400 3300
Entry Wire Line
	6500 3500 6400 3400
Text Label 6400 2700 2    50   ~ 0
E0
Text Label 6400 2800 2    50   ~ 0
E1
Text Label 6400 2900 2    50   ~ 0
E2
Text Label 6400 3000 2    50   ~ 0
E3
Text Label 6400 3100 2    50   ~ 0
E4
Text Label 6400 3200 2    50   ~ 0
E5
Text Label 6400 3300 2    50   ~ 0
E6
Text Label 6400 3400 2    50   ~ 0
E7
Wire Wire Line
	6250 3400 6400 3400
Wire Wire Line
	6400 3300 6250 3300
Wire Wire Line
	6250 3200 6400 3200
Wire Wire Line
	6400 3100 6250 3100
Wire Wire Line
	6250 3000 6400 3000
Wire Wire Line
	6400 2900 6250 2900
Wire Wire Line
	6250 2800 6400 2800
Wire Wire Line
	6400 2700 6250 2700
Wire Bus Line
	6500 2650 6600 2650
Wire Bus Line
	5500 2650 5350 2650
Text Label 5500 3900 1    50   ~ 0
A[19..0]
Wire Bus Line
	6500 2650 6500 3500
Wire Bus Line
	5450 4900 5450 5700
Wire Bus Line
	5500 2650 5500 4700
Text Label 6500 3050 0    50   ~ 0
E[7..0]
Text Label 5450 5450 1    50   ~ 0
D[7..0]
$EndSCHEMATC
