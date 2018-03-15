EESchema Schematic File Version 4
LIBS:quokka-cache
EELAYER 26 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 14 14
Title ""
Date ""
Rev ""
Comp ""
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 "Quokka 6502 Microprocessor Trainer"
$EndDescr
Text HLabel 6950 600  0    50   3State ~ 0
5V_DATA[7..0]
Text HLabel 1150 600  0    50   BiDi ~ 0
5V_ADDR[19..0]
Text HLabel 1750 5400 0    50   BiDi ~ 0
5V_R~W
Text HLabel 4600 1500 0    50   Output ~ 0
5V_RDY
Text HLabel 1750 5200 0    50   BiDi ~ 0
5V_PHI1
Text HLabel 4600 1300 0    50   Output ~ 0
5V_PHI0
Text HLabel 1750 5300 0    50   BiDi ~ 0
5V_PHI2
Text HLabel 7300 3750 0    50   3State ~ 0
5V_~IRQ
Text HLabel 4600 1600 0    50   Output ~ 0
5V_~NMI
Text HLabel 4600 1700 0    50   Output ~ 0
5V_Physical6502_~RES
Text HLabel 4600 1900 0    50   Output ~ 0
5V_SO
Text HLabel 4600 3250 0    50   Output ~ 0
5V_RAM_~cs
Text HLabel 4600 3350 0    50   Output ~ 0
5V_GPIO_~cs
Text HLabel 4600 3450 0    50   Output ~ 0
5V_OPT1_~cs
Text HLabel 4600 3550 0    50   Output ~ 0
5V_OPT2_~cs
Text HLabel 1750 5500 0    50   BiDi ~ 0
5V_SYNC
Text HLabel 7350 5050 3    50   Output ~ 0
5V_Physical6502_~BusEnable
Text HLabel 8800 600  2    50   3State ~ 0
3V3_DATA[7..0]
Text HLabel 6000 4650 2    50   Input ~ 0
3V3_ADDR[19..0]
Text HLabel 2800 5400 2    50   BiDi ~ 0
3V3_R~W
Text HLabel 5650 1500 2    50   Input ~ 0
3V3_RDY
Text HLabel 2800 5200 2    50   BiDi ~ 0
3V3_PHI1
Text HLabel 5650 1300 2    50   BiDi ~ 0
3V3_PHI0
Text HLabel 2800 5300 2    50   BiDi ~ 0
3V3_PHI2
Text HLabel 5650 1400 2    50   Input ~ 0
3V3_IRQ
Text HLabel 5650 1600 2    50   Input ~ 0
3V3_~NMI
Text HLabel 5650 1700 2    50   Input ~ 0
3V3_Physical6502_~RES
Text HLabel 5650 1900 2    50   Input ~ 0
3V3_SO
Text HLabel 5650 3250 2    50   Input ~ 0
3V3_RAM_~cs
Text HLabel 5650 3350 2    50   Input ~ 0
3V3_GPIO_~cs
Text HLabel 5650 3450 2    50   Input ~ 0
3V3_OPT1_~cs
Text HLabel 5650 3550 2    50   Input ~ 0
3V3_OPT2_~cs
Text HLabel 2800 5500 2    50   BiDi ~ 0
3V3_SYNC
Text HLabel 5650 1800 2    50   Input ~ 0
3V3_RES
Text HLabel 5650 2000 2    50   Input ~ 0
3V3_Physical6502_~BusEnable
Entry Wire Line
	1450 1400 1550 1300
Entry Wire Line
	1450 1500 1550 1400
Entry Wire Line
	1450 1600 1550 1500
Entry Wire Line
	1450 1700 1550 1600
Entry Wire Line
	1450 1800 1550 1700
Entry Wire Line
	1450 1900 1550 1800
Entry Wire Line
	1450 2000 1550 1900
Entry Wire Line
	1450 2100 1550 2000
Entry Wire Line
	1450 3350 1550 3250
Entry Wire Line
	1450 3450 1550 3350
Entry Wire Line
	1450 3550 1550 3450
Entry Wire Line
	1450 3650 1550 3550
Entry Wire Line
	1450 3750 1550 3650
Entry Wire Line
	1450 3850 1550 3750
Entry Wire Line
	1450 3950 1550 3850
Entry Wire Line
	1450 4050 1550 3950
Text Label 1550 3950 0    50   ~ 0
5_A0
Text Label 1550 3850 0    50   ~ 0
5_A1
Text Label 1550 3750 0    50   ~ 0
5_A2
Text Label 1550 3650 0    50   ~ 0
5_A3
Text Label 1550 3550 0    50   ~ 0
5_A4
Text Label 1550 3450 0    50   ~ 0
5_A5
Text Label 1550 3350 0    50   ~ 0
5_A6
Text Label 1550 3250 0    50   ~ 0
5_A7
Text Label 3000 2000 2    50   ~ 0
3_A8
Text Label 3000 1900 2    50   ~ 0
3_A9
Text Label 3000 1800 2    50   ~ 0
3_A10
Text Label 3000 1700 2    50   ~ 0
3_A11
Text Label 3000 1300 2    50   ~ 0
3_A15
Text Label 3000 1400 2    50   ~ 0
3_A14
Text Label 3000 1500 2    50   ~ 0
3_A13
Text Label 3000 1600 2    50   ~ 0
3_A12
$Comp
L power:GND #PWR01407
U 1 1 5ACFA85C
P 2400 2650
F 0 "#PWR01407" H 2400 2400 50  0001 C CNN
F 1 "GND" H 2500 2550 50  0000 C CNN
F 2 "" H 2400 2650 50  0001 C CNN
F 3 "" H 2400 2650 50  0001 C CNN
	1    2400 2650
	1    0    0    -1  
$EndComp
Wire Wire Line
	2300 2600 2400 2600
Wire Wire Line
	2400 2600 2500 2600
Connection ~ 2400 2600
Wire Wire Line
	2400 2600 2400 2650
$Comp
L power:GND #PWR01408
U 1 1 5ACFB071
P 2400 4600
F 0 "#PWR01408" H 2400 4350 50  0001 C CNN
F 1 "GND" H 2500 4500 50  0000 C CNN
F 2 "" H 2400 4600 50  0001 C CNN
F 3 "" H 2400 4600 50  0001 C CNN
	1    2400 4600
	1    0    0    -1  
$EndComp
Wire Wire Line
	2400 4550 2400 4600
Wire Wire Line
	2300 4550 2400 4550
Connection ~ 2400 4550
Wire Wire Line
	2400 4550 2500 4550
$Comp
L power:+5V #PWR01402
U 1 1 5ACFBACC
P 2150 2950
F 0 "#PWR01402" H 2150 2800 50  0001 C CNN
F 1 "+5V" H 2165 3123 50  0000 C CNN
F 2 "" H 2150 2950 50  0001 C CNN
F 3 "" H 2150 2950 50  0001 C CNN
	1    2150 2950
	1    0    0    -1  
$EndComp
$Comp
L power:+5V #PWR01401
U 1 1 5ACFBAE4
P 2150 1000
F 0 "#PWR01401" H 2150 850 50  0001 C CNN
F 1 "+5V" H 2165 1173 50  0000 C CNN
F 2 "" H 2150 1000 50  0001 C CNN
F 3 "" H 2150 1000 50  0001 C CNN
	1    2150 1000
	1    0    0    -1  
$EndComp
$Comp
L power:+3V3 #PWR01404
U 1 1 5ACFBBE0
P 2350 1000
F 0 "#PWR01404" H 2350 850 50  0001 C CNN
F 1 "+3V3" H 2500 1050 50  0000 C CNN
F 2 "" H 2350 1000 50  0001 C CNN
F 3 "" H 2350 1000 50  0001 C CNN
	1    2350 1000
	1    0    0    -1  
$EndComp
Wire Wire Line
	2300 1000 2350 1000
Wire Wire Line
	2350 1000 2400 1000
Connection ~ 2350 1000
$Comp
L power:+3V3 #PWR01405
U 1 1 5ACFC24A
P 2350 2950
F 0 "#PWR01405" H 2350 2800 50  0001 C CNN
F 1 "+3V3" H 2500 3000 50  0000 C CNN
F 2 "" H 2350 2950 50  0001 C CNN
F 3 "" H 2350 2950 50  0001 C CNN
	1    2350 2950
	1    0    0    -1  
$EndComp
Wire Wire Line
	2300 2950 2350 2950
Wire Wire Line
	2350 2950 2400 2950
Connection ~ 2350 2950
Wire Bus Line
	1150 600  1450 600 
$Comp
L quokka:74LVC4245A U1403
U 1 1 5ACFDAC4
P 2250 5700
F 0 "U1403" H 1950 6350 50  0000 C CNN
F 1 "74LVC4245A" H 2650 6350 50  0000 C CNN
F 2 "" H 2250 5700 50  0001 C CNN
F 3 "https://assets.nexperia.com/documents/data-sheet/74LVC4245A.pdf" H 2250 5700 50  0001 C CNN
	1    2250 5700
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR01409
U 1 1 5ACFDAD8
P 2400 6550
F 0 "#PWR01409" H 2400 6300 50  0001 C CNN
F 1 "GND" H 2500 6450 50  0000 C CNN
F 2 "" H 2400 6550 50  0001 C CNN
F 3 "" H 2400 6550 50  0001 C CNN
	1    2400 6550
	1    0    0    -1  
$EndComp
Wire Wire Line
	2400 6500 2400 6550
$Comp
L power:+5V #PWR01403
U 1 1 5ACFDAE2
P 2150 4900
F 0 "#PWR01403" H 2150 4750 50  0001 C CNN
F 1 "+5V" H 2165 5073 50  0000 C CNN
F 2 "" H 2150 4900 50  0001 C CNN
F 3 "" H 2150 4900 50  0001 C CNN
	1    2150 4900
	1    0    0    -1  
$EndComp
$Comp
L power:+3V3 #PWR01406
U 1 1 5ACFDAE8
P 2350 4900
F 0 "#PWR01406" H 2350 4750 50  0001 C CNN
F 1 "+3V3" H 2500 4950 50  0000 C CNN
F 2 "" H 2350 4900 50  0001 C CNN
F 3 "" H 2350 4900 50  0001 C CNN
	1    2350 4900
	1    0    0    -1  
$EndComp
Wire Wire Line
	2300 4900 2350 4900
Wire Wire Line
	2350 4900 2400 4900
Connection ~ 2350 4900
Wire Wire Line
	2300 6500 2400 6500
Connection ~ 2400 6500
Wire Wire Line
	2400 6500 2500 6500
Text Notes 1850 750  0    50   ~ 0
Always inputs (except\nwhen using soft-6502)
NoConn ~ 1750 5600
NoConn ~ 1750 5700
NoConn ~ 1750 5800
NoConn ~ 1750 5900
NoConn ~ 2800 5900
NoConn ~ 2800 5800
NoConn ~ 2800 5700
NoConn ~ 2800 5600
$Comp
L power:GND #PWR01419
U 1 1 5AD04D87
P 5250 2650
F 0 "#PWR01419" H 5250 2400 50  0001 C CNN
F 1 "GND" H 5350 2550 50  0000 C CNN
F 2 "" H 5250 2650 50  0001 C CNN
F 3 "" H 5250 2650 50  0001 C CNN
	1    5250 2650
	1    0    0    -1  
$EndComp
Wire Wire Line
	5250 2600 5250 2650
$Comp
L power:+5V #PWR01413
U 1 1 5AD04D8E
P 5000 1000
F 0 "#PWR01413" H 5000 850 50  0001 C CNN
F 1 "+5V" H 5015 1173 50  0000 C CNN
F 2 "" H 5000 1000 50  0001 C CNN
F 3 "" H 5000 1000 50  0001 C CNN
	1    5000 1000
	1    0    0    -1  
$EndComp
$Comp
L power:+3V3 #PWR01416
U 1 1 5AD04D94
P 5200 1000
F 0 "#PWR01416" H 5200 850 50  0001 C CNN
F 1 "+3V3" H 5350 1050 50  0000 C CNN
F 2 "" H 5200 1000 50  0001 C CNN
F 3 "" H 5200 1000 50  0001 C CNN
	1    5200 1000
	1    0    0    -1  
$EndComp
Wire Wire Line
	5150 1000 5200 1000
Wire Wire Line
	5200 1000 5250 1000
Connection ~ 5200 1000
$Comp
L quokka:74LVC4245A U1404
U 1 1 5AD04D81
P 5100 1800
F 0 "U1404" H 4800 2450 50  0000 C CNN
F 1 "74LVC4245A" H 5500 2450 50  0000 C CNN
F 2 "" H 5100 1800 50  0001 C CNN
F 3 "https://assets.nexperia.com/documents/data-sheet/74LVC4245A.pdf" H 5100 1800 50  0001 C CNN
	1    5100 1800
	1    0    0    -1  
$EndComp
Text Notes 4850 750  0    50   ~ 0
Always outputs
$Comp
L quokka:74LVC4245A U1401
U 1 1 5ACF77F2
P 2250 1800
F 0 "U1401" H 1950 2450 50  0000 C CNN
F 1 "74LVC4245A" H 2650 2450 50  0000 C CNN
F 2 "" H 2250 1800 50  0001 C CNN
F 3 "https://assets.nexperia.com/documents/data-sheet/74LVC4245A.pdf" H 2250 1800 50  0001 C CNN
	1    2250 1800
	1    0    0    -1  
$EndComp
$Comp
L quokka:74LVC4245A U1402
U 1 1 5ACF77F9
P 2250 3750
F 0 "U1402" H 1950 4400 50  0000 C CNN
F 1 "74LVC4245A" H 2650 4400 50  0000 C CNN
F 2 "" H 2250 3750 50  0001 C CNN
F 3 "https://assets.nexperia.com/documents/data-sheet/74LVC4245A.pdf" H 2250 3750 50  0001 C CNN
	1    2250 3750
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR01420
U 1 1 5AD06712
P 5250 4600
F 0 "#PWR01420" H 5250 4350 50  0001 C CNN
F 1 "GND" H 5350 4500 50  0000 C CNN
F 2 "" H 5250 4600 50  0001 C CNN
F 3 "" H 5250 4600 50  0001 C CNN
	1    5250 4600
	1    0    0    -1  
$EndComp
Wire Wire Line
	5250 4550 5250 4600
$Comp
L power:+5V #PWR01414
U 1 1 5AD06719
P 5000 2950
F 0 "#PWR01414" H 5000 2800 50  0001 C CNN
F 1 "+5V" H 5015 3123 50  0000 C CNN
F 2 "" H 5000 2950 50  0001 C CNN
F 3 "" H 5000 2950 50  0001 C CNN
	1    5000 2950
	1    0    0    -1  
$EndComp
$Comp
L power:+3V3 #PWR01417
U 1 1 5AD0671F
P 5200 2950
F 0 "#PWR01417" H 5200 2800 50  0001 C CNN
F 1 "+3V3" H 5350 3000 50  0000 C CNN
F 2 "" H 5200 2950 50  0001 C CNN
F 3 "" H 5200 2950 50  0001 C CNN
	1    5200 2950
	1    0    0    -1  
$EndComp
Wire Wire Line
	5150 2950 5200 2950
Wire Wire Line
	5200 2950 5250 2950
Connection ~ 5200 2950
$Comp
L quokka:74LVC4245A U1405
U 1 1 5AD06728
P 5100 3750
F 0 "U1405" H 4800 4400 50  0000 C CNN
F 1 "74LVC4245A" H 5500 4400 50  0000 C CNN
F 2 "" H 5100 3750 50  0001 C CNN
F 3 "https://assets.nexperia.com/documents/data-sheet/74LVC4245A.pdf" H 5100 3750 50  0001 C CNN
	1    5100 3750
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR01410
U 1 1 5AD06F19
P 4450 2300
F 0 "#PWR01410" H 4450 2050 50  0001 C CNN
F 1 "GND" H 4455 2127 50  0000 C CNN
F 2 "" H 4450 2300 50  0001 C CNN
F 3 "" H 4450 2300 50  0001 C CNN
	1    4450 2300
	1    0    0    -1  
$EndComp
Wire Wire Line
	4450 2300 4450 2200
Wire Wire Line
	4450 2200 4600 2200
$Comp
L power:GND #PWR01411
U 1 1 5AD07719
P 4450 4250
F 0 "#PWR01411" H 4450 4000 50  0001 C CNN
F 1 "GND" H 4455 4077 50  0000 C CNN
F 2 "" H 4450 4250 50  0001 C CNN
F 3 "" H 4450 4250 50  0001 C CNN
	1    4450 4250
	1    0    0    -1  
$EndComp
Wire Wire Line
	4450 4250 4450 4150
Wire Wire Line
	4450 4150 4600 4150
Text HLabel 4600 3650 0    50   Output ~ 0
5V_LED_CLK
Text HLabel 4600 3750 0    50   Output ~ 0
5V_LED_DATA
Text HLabel 4600 3850 0    50   Output ~ 0
5V_LED_Load
$Comp
L Device:R R1403
U 1 1 5AD0AAF1
P 7800 4000
F 0 "R1403" V 7593 4000 50  0000 C CNN
F 1 "1k" V 7684 4000 50  0000 C CNN
F 2 "" V 7730 4000 50  0001 C CNN
F 3 "~" H 7800 4000 50  0001 C CNN
	1    7800 4000
	0    -1   1    0   
$EndComp
$Comp
L Device:Q_NPN_BEC Q1401
U 1 1 5AD0AAF8
P 7450 4000
F 0 "Q1401" H 7641 4000 50  0000 L CNN
F 1 "Q_NPN_BEC" H 7641 3955 50  0001 L CNN
F 2 "" H 7650 4100 50  0001 C CNN
F 3 "~" H 7450 4000 50  0001 C CNN
	1    7450 4000
	-1   0    0    -1  
$EndComp
$Comp
L Device:R R1401
U 1 1 5AD0AAFF
P 7350 3550
F 0 "R1401" H 7050 3600 50  0000 L CNN
F 1 "4.7k" H 7125 3500 50  0000 L CNN
F 2 "" V 7280 3550 50  0001 C CNN
F 3 "~" H 7350 3550 50  0001 C CNN
	1    7350 3550
	-1   0    0    -1  
$EndComp
$Comp
L power:GND #PWR01423
U 1 1 5AD0AB07
P 7350 4200
F 0 "#PWR01423" H 7350 3950 50  0001 C CNN
F 1 "GND" H 7450 4200 50  0000 C CNN
F 2 "" H 7350 4200 50  0001 C CNN
F 3 "" H 7350 4200 50  0001 C CNN
	1    7350 4200
	-1   0    0    -1  
$EndComp
$Comp
L power:+5V #PWR01422
U 1 1 5AD0AB0D
P 7350 3400
F 0 "#PWR01422" H 7350 3250 50  0001 C CNN
F 1 "+5V" H 7250 3500 50  0000 C CNN
F 2 "" H 7350 3400 50  0001 C CNN
F 3 "" H 7350 3400 50  0001 C CNN
	1    7350 3400
	-1   0    0    -1  
$EndComp
Wire Wire Line
	7350 3700 7350 3750
Wire Wire Line
	7300 3750 7350 3750
Connection ~ 7350 3750
Wire Wire Line
	7350 3750 7350 3800
Entry Wire Line
	3100 3350 3000 3250
Entry Wire Line
	3100 3450 3000 3350
Entry Wire Line
	3100 3550 3000 3450
Entry Wire Line
	3100 3650 3000 3550
Entry Wire Line
	3100 3750 3000 3650
Entry Wire Line
	3100 3850 3000 3750
Entry Wire Line
	3100 3950 3000 3850
Entry Wire Line
	3100 4050 3000 3950
Entry Wire Line
	3100 1400 3000 1300
Entry Wire Line
	3100 1500 3000 1400
Entry Wire Line
	3100 1600 3000 1500
Entry Wire Line
	3100 1700 3000 1600
Entry Wire Line
	3100 1800 3000 1700
Entry Wire Line
	3100 1900 3000 1800
Entry Wire Line
	3100 2000 3000 1900
Entry Wire Line
	3100 2100 3000 2000
Wire Bus Line
	3100 600  3200 600 
$Comp
L Device:R R1402
U 1 1 5AD17667
P 7350 4800
F 0 "R1402" H 7050 4850 50  0000 L CNN
F 1 "4.7k" H 7125 4750 50  0000 L CNN
F 2 "" V 7280 4800 50  0001 C CNN
F 3 "~" H 7350 4800 50  0001 C CNN
	1    7350 4800
	-1   0    0    -1  
$EndComp
$Comp
L power:+5V #PWR01424
U 1 1 5AD1766D
P 7350 4650
F 0 "#PWR01424" H 7350 4500 50  0001 C CNN
F 1 "+5V" H 7350 4800 50  0000 C CNN
F 2 "" H 7350 4650 50  0001 C CNN
F 3 "" H 7350 4650 50  0001 C CNN
	1    7350 4650
	-1   0    0    -1  
$EndComp
$Comp
L power:GND #PWR01427
U 1 1 5AD21D50
P 8000 2650
F 0 "#PWR01427" H 8000 2400 50  0001 C CNN
F 1 "GND" H 8100 2550 50  0000 C CNN
F 2 "" H 8000 2650 50  0001 C CNN
F 3 "" H 8000 2650 50  0001 C CNN
	1    8000 2650
	1    0    0    -1  
$EndComp
Wire Wire Line
	8000 2600 8000 2650
$Comp
L power:+5V #PWR01425
U 1 1 5AD21D57
P 7750 1000
F 0 "#PWR01425" H 7750 850 50  0001 C CNN
F 1 "+5V" H 7765 1173 50  0000 C CNN
F 2 "" H 7750 1000 50  0001 C CNN
F 3 "" H 7750 1000 50  0001 C CNN
	1    7750 1000
	1    0    0    -1  
$EndComp
$Comp
L power:+3V3 #PWR01426
U 1 1 5AD21D5D
P 7950 1000
F 0 "#PWR01426" H 7950 850 50  0001 C CNN
F 1 "+3V3" H 8100 1050 50  0000 C CNN
F 2 "" H 7950 1000 50  0001 C CNN
F 3 "" H 7950 1000 50  0001 C CNN
	1    7950 1000
	1    0    0    -1  
$EndComp
Wire Wire Line
	7900 1000 7950 1000
Wire Wire Line
	7950 1000 8000 1000
Connection ~ 7950 1000
$Comp
L quokka:74LVC4245A U1407
U 1 1 5AD21D66
P 7850 1800
F 0 "U1407" H 7550 2450 50  0000 C CNN
F 1 "74LVC4245A" H 8250 2450 50  0000 C CNN
F 2 "" H 7850 1800 50  0001 C CNN
F 3 "https://assets.nexperia.com/documents/data-sheet/74LVC4245A.pdf" H 7850 1800 50  0001 C CNN
	1    7850 1800
	1    0    0    -1  
$EndComp
Text Notes 7500 750  0    50   ~ 0
Bidirectional Data
Entry Wire Line
	7150 2000 7050 1900
Entry Wire Line
	7150 1900 7050 1800
Entry Wire Line
	7150 1800 7050 1700
Entry Wire Line
	7150 1700 7050 1600
Entry Wire Line
	7150 1600 7050 1500
Entry Wire Line
	7150 1500 7050 1400
Entry Wire Line
	7150 1400 7050 1300
Entry Wire Line
	7150 1300 7050 1200
Text Label 7150 1300 0    50   ~ 0
5_D0
Text Label 7150 1400 0    50   ~ 0
5_D1
Text Label 7150 1500 0    50   ~ 0
5_D2
Text Label 7150 1600 0    50   ~ 0
5_D3
Text Label 7150 1700 0    50   ~ 0
5_D4
Text Label 7150 1800 0    50   ~ 0
5_D5
Text Label 7150 1900 0    50   ~ 0
5_D6
Text Label 7150 2000 0    50   ~ 0
5_D7
Wire Wire Line
	7350 2000 7150 2000
Wire Wire Line
	7150 1900 7350 1900
Wire Wire Line
	7350 1800 7150 1800
Wire Wire Line
	7150 1700 7350 1700
Wire Wire Line
	7350 1600 7150 1600
Wire Wire Line
	7150 1500 7350 1500
Wire Wire Line
	7350 1400 7150 1400
Wire Wire Line
	7150 1300 7350 1300
$Comp
L power:GND #PWR01421
U 1 1 5AD2E7F5
P 5250 6550
F 0 "#PWR01421" H 5250 6300 50  0001 C CNN
F 1 "GND" H 5350 6450 50  0000 C CNN
F 2 "" H 5250 6550 50  0001 C CNN
F 3 "" H 5250 6550 50  0001 C CNN
	1    5250 6550
	1    0    0    -1  
$EndComp
Wire Wire Line
	5250 6500 5250 6550
$Comp
L power:+5V #PWR01415
U 1 1 5AD2E7FC
P 5000 4900
F 0 "#PWR01415" H 5000 4750 50  0001 C CNN
F 1 "+5V" H 5015 5073 50  0000 C CNN
F 2 "" H 5000 4900 50  0001 C CNN
F 3 "" H 5000 4900 50  0001 C CNN
	1    5000 4900
	1    0    0    -1  
$EndComp
$Comp
L power:+3V3 #PWR01418
U 1 1 5AD2E802
P 5200 4900
F 0 "#PWR01418" H 5200 4750 50  0001 C CNN
F 1 "+3V3" H 5350 4950 50  0000 C CNN
F 2 "" H 5200 4900 50  0001 C CNN
F 3 "" H 5200 4900 50  0001 C CNN
	1    5200 4900
	1    0    0    -1  
$EndComp
Wire Wire Line
	5150 4900 5200 4900
Wire Wire Line
	5200 4900 5250 4900
Connection ~ 5200 4900
$Comp
L quokka:74LVC4245A U1406
U 1 1 5AD2E80B
P 5100 5700
F 0 "U1406" H 4800 6350 50  0000 C CNN
F 1 "74LVC4245A" H 5500 6350 50  0000 C CNN
F 2 "" H 5100 5700 50  0001 C CNN
F 3 "https://assets.nexperia.com/documents/data-sheet/74LVC4245A.pdf" H 5100 5700 50  0001 C CNN
	1    5100 5700
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR01412
U 1 1 5AD2E811
P 4450 6200
F 0 "#PWR01412" H 4450 5950 50  0001 C CNN
F 1 "GND" H 4455 6027 50  0000 C CNN
F 2 "" H 4450 6200 50  0001 C CNN
F 3 "" H 4450 6200 50  0001 C CNN
	1    4450 6200
	1    0    0    -1  
$EndComp
Wire Wire Line
	4450 6200 4450 6100
Wire Wire Line
	4450 6100 4600 6100
Text HLabel 3200 600  2    50   Input ~ 0
3V3_ADDR[19..0]
Wire Bus Line
	6950 600  7050 600 
Entry Wire Line
	8600 2000 8700 1900
Entry Wire Line
	8600 1900 8700 1800
Entry Wire Line
	8600 1800 8700 1700
Entry Wire Line
	8600 1700 8700 1600
Entry Wire Line
	8600 1600 8700 1500
Entry Wire Line
	8600 1500 8700 1400
Entry Wire Line
	8600 1400 8700 1300
Entry Wire Line
	8600 1300 8700 1200
Text Label 8600 1300 2    50   ~ 0
3_D0
Text Label 8600 1400 2    50   ~ 0
3_D1
Text Label 8600 1500 2    50   ~ 0
3_D2
Text Label 8600 1600 2    50   ~ 0
3_D3
Text Label 8600 1700 2    50   ~ 0
3_D4
Text Label 8600 1800 2    50   ~ 0
3_D5
Text Label 8600 1900 2    50   ~ 0
3_D6
Text Label 8600 2000 2    50   ~ 0
3_D7
Wire Wire Line
	8400 2000 8600 2000
Wire Wire Line
	8600 1900 8400 1900
Wire Wire Line
	8400 1800 8600 1800
Wire Wire Line
	8600 1700 8400 1700
Wire Wire Line
	8400 1600 8600 1600
Wire Wire Line
	8600 1500 8400 1500
Wire Wire Line
	8400 1400 8600 1400
Wire Wire Line
	8600 1300 8400 1300
Wire Bus Line
	8800 600  8700 600 
Entry Wire Line
	4300 5300 4400 5200
Entry Wire Line
	4300 5400 4400 5300
Entry Wire Line
	4300 5500 4400 5400
Entry Wire Line
	4300 5600 4400 5500
Text Label 4400 5500 0    50   ~ 0
5_A19
Text Label 4400 5400 0    50   ~ 0
5_A18
Text Label 4400 5300 0    50   ~ 0
5_A17
Text Label 4400 5200 0    50   ~ 0
5_A16
Wire Wire Line
	4400 5500 4600 5500
Wire Wire Line
	4600 5400 4400 5400
Wire Wire Line
	4400 5300 4600 5300
Wire Wire Line
	4600 5200 4400 5200
Wire Bus Line
	4300 4650 4200 4650
Entry Wire Line
	5950 5300 5850 5200
Entry Wire Line
	5950 5400 5850 5300
Entry Wire Line
	5950 5500 5850 5400
Entry Wire Line
	5950 5600 5850 5500
Text Label 5850 5500 2    50   ~ 0
3_A19
Text Label 5850 5400 2    50   ~ 0
3_A18
Text Label 5850 5300 2    50   ~ 0
3_A17
Text Label 5850 5200 2    50   ~ 0
3_A16
Wire Wire Line
	5850 5500 5650 5500
Wire Wire Line
	5650 5400 5850 5400
Wire Wire Line
	5850 5300 5650 5300
Wire Wire Line
	5650 5200 5850 5200
Wire Bus Line
	5950 4650 6000 4650
Text HLabel 4200 4650 0    50   BiDi ~ 0
5V_ADDR[19..0]
Wire Wire Line
	8100 2600 8000 2600
Connection ~ 8000 2600
Wire Wire Line
	7900 2600 8000 2600
Wire Wire Line
	5150 2600 5250 2600
Connection ~ 5250 2600
Wire Wire Line
	5350 2600 5250 2600
Wire Wire Line
	5150 4550 5250 4550
Connection ~ 5250 4550
Wire Wire Line
	5350 4550 5250 4550
Wire Wire Line
	5150 6500 5250 6500
Connection ~ 5250 6500
Wire Wire Line
	5350 6500 5250 6500
Text HLabel 4600 2350 3    50   Input ~ 0
EnableXcvrs
Text HLabel 4600 4300 3    50   Input ~ 0
EnableXcvrs
Text HLabel 4600 6250 3    50   Input ~ 0
EnableXcvrs
Text HLabel 1750 6250 3    50   Input ~ 0
EnableXcvrs
Text HLabel 1750 4300 3    50   Input ~ 0
EnableXcvrs
Text HLabel 1750 2350 3    50   Input ~ 0
EnableXcvrs
Text HLabel 7350 2350 3    50   Input ~ 0
EnableXcvrs
Wire Wire Line
	7350 2350 7350 2300
Wire Wire Line
	4600 2350 4600 2300
Wire Wire Line
	4600 4300 4600 4250
Wire Wire Line
	1750 4300 1750 4250
Wire Wire Line
	1750 2350 1750 2300
Wire Wire Line
	4600 6250 4600 6200
Wire Wire Line
	1750 6250 1750 6200
Text HLabel 1650 2350 3    50   Input ~ 0
Drive6502Bus
Text HLabel 1650 4300 3    50   Input ~ 0
Drive6502Bus
Text HLabel 1650 6250 3    50   Input ~ 0
Drive6502Bus
Wire Wire Line
	1650 2350 1650 2200
Wire Wire Line
	1650 2200 1750 2200
Wire Wire Line
	1650 4300 1650 4150
Wire Wire Line
	1650 4150 1750 4150
Wire Wire Line
	1650 6250 1650 6100
Wire Wire Line
	1650 6100 1750 6100
Text HLabel 7250 2350 3    50   Input ~ 0
DataDir
Wire Wire Line
	7250 2350 7250 2200
Wire Wire Line
	7250 2200 7350 2200
Text HLabel 5650 3650 2    50   Input ~ 0
3V3_LED_CLK
Text HLabel 5650 3750 2    50   Input ~ 0
3V3_LED_DATA
Text HLabel 5650 3850 2    50   Input ~ 0
3V3_LED_Load
Text HLabel 5650 3950 2    50   Input ~ 0
3V3_LED_~CLR
Text HLabel 4600 3950 0    50   Output ~ 0
5V_LED_~CLR
Wire Wire Line
	7350 4950 7350 5000
$Comp
L Device:R R1406
U 1 1 5AAE36A0
P 9300 4000
F 0 "R1406" V 9093 4000 50  0000 C CNN
F 1 "1k" V 9184 4000 50  0000 C CNN
F 2 "" V 9230 4000 50  0001 C CNN
F 3 "~" H 9300 4000 50  0001 C CNN
	1    9300 4000
	0    -1   1    0   
$EndComp
$Comp
L Device:Q_NPN_BEC Q1402
U 1 1 5AAE36A6
P 8950 4000
F 0 "Q1402" H 9141 4000 50  0000 L CNN
F 1 "Q_NPN_BEC" H 9141 3955 50  0001 L CNN
F 2 "" H 9150 4100 50  0001 C CNN
F 3 "~" H 8950 4000 50  0001 C CNN
	1    8950 4000
	-1   0    0    -1  
$EndComp
$Comp
L Device:R R1404
U 1 1 5AAE36AC
P 8850 3550
F 0 "R1404" H 8550 3600 50  0000 L CNN
F 1 "4.7k" H 8625 3500 50  0000 L CNN
F 2 "" V 8780 3550 50  0001 C CNN
F 3 "~" H 8850 3550 50  0001 C CNN
	1    8850 3550
	-1   0    0    -1  
$EndComp
Wire Wire Line
	8850 3700 8850 3750
Wire Wire Line
	8800 3750 8850 3750
Connection ~ 8850 3750
Wire Wire Line
	8850 3750 8850 3800
Text HLabel 8800 3750 0    50   BiDi ~ 0
5V_~RES
Text Label 3350 1400 0    50   ~ 0
IRQ
Text Label 3350 1800 0    50   ~ 0
RES
Text Label 3350 2000 0    50   ~ 0
Physical6502_~BusEnable
Wire Wire Line
	4600 2000 3350 2000
Wire Wire Line
	3350 1800 4600 1800
Wire Wire Line
	3350 1400 4600 1400
Text Label 8100 4000 2    50   ~ 0
IRQ
Text Label 9600 4000 2    50   ~ 0
RES
Text Label 8450 5000 2    50   ~ 0
Physical6502_~BusEnable
$Comp
L power:+5V #PWR01428
U 1 1 5AB1BFDF
P 8850 3400
F 0 "#PWR01428" H 8850 3250 50  0001 C CNN
F 1 "+5V" H 8750 3500 50  0000 C CNN
F 2 "" H 8850 3400 50  0001 C CNN
F 3 "" H 8850 3400 50  0001 C CNN
	1    8850 3400
	-1   0    0    -1  
$EndComp
$Comp
L power:GND #PWR01429
U 1 1 5AB1C006
P 8850 4200
F 0 "#PWR01429" H 8850 3950 50  0001 C CNN
F 1 "GND" H 8950 4200 50  0000 C CNN
F 2 "" H 8850 4200 50  0001 C CNN
F 3 "" H 8850 4200 50  0001 C CNN
	1    8850 4200
	-1   0    0    -1  
$EndComp
Wire Wire Line
	9600 4000 9450 4000
Wire Wire Line
	8450 5000 7350 5000
Connection ~ 7350 5000
Wire Wire Line
	7350 5000 7350 5050
Wire Wire Line
	8100 4000 7950 4000
$Comp
L Device:Q_NPN_BEC Q1403
U 1 1 5AB3D9C0
P 9250 5350
F 0 "Q1403" H 9441 5350 50  0000 L CNN
F 1 "Q_NPN_BEC" H 9441 5305 50  0001 L CNN
F 2 "" H 9450 5450 50  0001 C CNN
F 3 "~" H 9250 5350 50  0001 C CNN
	1    9250 5350
	1    0    0    -1  
$EndComp
$Comp
L Device:R R1407
U 1 1 5AB3D9C6
P 9350 4900
F 0 "R1407" H 9425 4950 50  0000 L CNN
F 1 "4.7k" H 9425 4850 50  0000 L CNN
F 2 "" V 9280 4900 50  0001 C CNN
F 3 "~" H 9350 4900 50  0001 C CNN
	1    9350 4900
	1    0    0    -1  
$EndComp
Wire Wire Line
	9350 5050 9350 5100
Wire Wire Line
	9400 5100 9350 5100
Connection ~ 9350 5100
Wire Wire Line
	9350 5100 9350 5150
Text HLabel 8750 5350 0    50   BiDi ~ 0
5V_~RES
$Comp
L power:GND #PWR01431
U 1 1 5AB3D9D8
P 9350 5550
F 0 "#PWR01431" H 9350 5300 50  0001 C CNN
F 1 "GND" H 9450 5550 50  0000 C CNN
F 2 "" H 9350 5550 50  0001 C CNN
F 3 "" H 9350 5550 50  0001 C CNN
	1    9350 5550
	1    0    0    -1  
$EndComp
$Comp
L power:+3V3 #PWR01430
U 1 1 5AB4E984
P 9350 4750
F 0 "#PWR01430" H 9350 4600 50  0001 C CNN
F 1 "+3V3" H 9500 4800 50  0000 C CNN
F 2 "" H 9350 4750 50  0001 C CNN
F 3 "" H 9350 4750 50  0001 C CNN
	1    9350 4750
	1    0    0    -1  
$EndComp
Text HLabel 9400 5100 2    50   Output ~ 0
3V3_SENSE_RES
$Comp
L Device:R R1405
U 1 1 5AB525DD
P 8900 5350
F 0 "R1405" V 8700 5225 50  0000 L CNN
F 1 "4.7k" V 8800 5275 50  0000 L CNN
F 2 "" V 8830 5350 50  0001 C CNN
F 3 "~" H 8900 5350 50  0001 C CNN
	1    8900 5350
	0    1    1    0   
$EndComp
$Comp
L Device:C C1402
U 1 1 5B101853
P 9600 2000
F 0 "C1402" H 9715 2046 50  0000 L CNN
F 1 "1u" H 9715 1955 50  0000 L CNN
F 2 "" H 9638 1850 50  0001 C CNN
F 3 "~" H 9600 2000 50  0001 C CNN
	1    9600 2000
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR01435
U 1 1 5B10185A
P 9600 2150
F 0 "#PWR01435" H 9600 1900 50  0001 C CNN
F 1 "GND" H 9605 1977 50  0000 C CNN
F 2 "" H 9600 2150 50  0001 C CNN
F 3 "" H 9600 2150 50  0001 C CNN
	1    9600 2150
	1    0    0    -1  
$EndComp
$Comp
L power:+5V #PWR01434
U 1 1 5B101860
P 9600 1850
F 0 "#PWR01434" H 9600 1700 50  0001 C CNN
F 1 "+5V" H 9615 2023 50  0000 C CNN
F 2 "" H 9600 1850 50  0001 C CNN
F 3 "" H 9600 1850 50  0001 C CNN
	1    9600 1850
	1    0    0    -1  
$EndComp
$Comp
L Device:C C1405
U 1 1 5B1070E2
P 10100 2000
F 0 "C1405" H 10215 2046 50  0000 L CNN
F 1 "1u" H 10215 1955 50  0000 L CNN
F 2 "" H 10138 1850 50  0001 C CNN
F 3 "~" H 10100 2000 50  0001 C CNN
	1    10100 2000
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR01441
U 1 1 5B1070E8
P 10100 2150
F 0 "#PWR01441" H 10100 1900 50  0001 C CNN
F 1 "GND" H 10105 1977 50  0000 C CNN
F 2 "" H 10100 2150 50  0001 C CNN
F 3 "" H 10100 2150 50  0001 C CNN
	1    10100 2150
	1    0    0    -1  
$EndComp
$Comp
L power:+5V #PWR01440
U 1 1 5B1070EE
P 10100 1850
F 0 "#PWR01440" H 10100 1700 50  0001 C CNN
F 1 "+5V" H 10115 2023 50  0000 C CNN
F 2 "" H 10100 1850 50  0001 C CNN
F 3 "" H 10100 1850 50  0001 C CNN
	1    10100 1850
	1    0    0    -1  
$EndComp
$Comp
L Device:C C1403
U 1 1 5B112124
P 9600 2850
F 0 "C1403" H 9715 2896 50  0000 L CNN
F 1 "1u" H 9715 2805 50  0000 L CNN
F 2 "" H 9638 2700 50  0001 C CNN
F 3 "~" H 9600 2850 50  0001 C CNN
	1    9600 2850
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR01437
U 1 1 5B11212A
P 9600 3000
F 0 "#PWR01437" H 9600 2750 50  0001 C CNN
F 1 "GND" H 9605 2827 50  0000 C CNN
F 2 "" H 9600 3000 50  0001 C CNN
F 3 "" H 9600 3000 50  0001 C CNN
	1    9600 3000
	1    0    0    -1  
$EndComp
$Comp
L power:+5V #PWR01436
U 1 1 5B112130
P 9600 2700
F 0 "#PWR01436" H 9600 2550 50  0001 C CNN
F 1 "+5V" H 9615 2873 50  0000 C CNN
F 2 "" H 9600 2700 50  0001 C CNN
F 3 "" H 9600 2700 50  0001 C CNN
	1    9600 2700
	1    0    0    -1  
$EndComp
$Comp
L Device:C C1406
U 1 1 5B112136
P 10100 2850
F 0 "C1406" H 10215 2896 50  0000 L CNN
F 1 "1u" H 10215 2805 50  0000 L CNN
F 2 "" H 10138 2700 50  0001 C CNN
F 3 "~" H 10100 2850 50  0001 C CNN
	1    10100 2850
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR01443
U 1 1 5B11213C
P 10100 3000
F 0 "#PWR01443" H 10100 2750 50  0001 C CNN
F 1 "GND" H 10105 2827 50  0000 C CNN
F 2 "" H 10100 3000 50  0001 C CNN
F 3 "" H 10100 3000 50  0001 C CNN
	1    10100 3000
	1    0    0    -1  
$EndComp
$Comp
L power:+5V #PWR01442
U 1 1 5B112142
P 10100 2700
F 0 "#PWR01442" H 10100 2550 50  0001 C CNN
F 1 "+5V" H 10115 2873 50  0000 C CNN
F 2 "" H 10100 2700 50  0001 C CNN
F 3 "" H 10100 2700 50  0001 C CNN
	1    10100 2700
	1    0    0    -1  
$EndComp
$Comp
L Device:C C1401
U 1 1 5B117EB2
P 9600 1150
F 0 "C1401" H 9715 1196 50  0000 L CNN
F 1 "1u" H 9715 1105 50  0000 L CNN
F 2 "" H 9638 1000 50  0001 C CNN
F 3 "~" H 9600 1150 50  0001 C CNN
	1    9600 1150
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR01433
U 1 1 5B117EB8
P 9600 1300
F 0 "#PWR01433" H 9600 1050 50  0001 C CNN
F 1 "GND" H 9605 1127 50  0000 C CNN
F 2 "" H 9600 1300 50  0001 C CNN
F 3 "" H 9600 1300 50  0001 C CNN
	1    9600 1300
	1    0    0    -1  
$EndComp
$Comp
L power:+5V #PWR01432
U 1 1 5B117EBE
P 9600 1000
F 0 "#PWR01432" H 9600 850 50  0001 C CNN
F 1 "+5V" H 9615 1173 50  0000 C CNN
F 2 "" H 9600 1000 50  0001 C CNN
F 3 "" H 9600 1000 50  0001 C CNN
	1    9600 1000
	1    0    0    -1  
$EndComp
$Comp
L Device:C C1404
U 1 1 5B117EC4
P 10100 1150
F 0 "C1404" H 10215 1196 50  0000 L CNN
F 1 "1u" H 10215 1105 50  0000 L CNN
F 2 "" H 10138 1000 50  0001 C CNN
F 3 "~" H 10100 1150 50  0001 C CNN
	1    10100 1150
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR01439
U 1 1 5B117ECA
P 10100 1300
F 0 "#PWR01439" H 10100 1050 50  0001 C CNN
F 1 "GND" H 10105 1127 50  0000 C CNN
F 2 "" H 10100 1300 50  0001 C CNN
F 3 "" H 10100 1300 50  0001 C CNN
	1    10100 1300
	1    0    0    -1  
$EndComp
$Comp
L power:+5V #PWR01438
U 1 1 5B117ED0
P 10100 1000
F 0 "#PWR01438" H 10100 850 50  0001 C CNN
F 1 "+5V" H 10115 1173 50  0000 C CNN
F 2 "" H 10100 1000 50  0001 C CNN
F 3 "" H 10100 1000 50  0001 C CNN
	1    10100 1000
	1    0    0    -1  
$EndComp
$Comp
L Device:C C1407
U 1 1 5B117ED6
P 10600 1150
F 0 "C1407" H 10715 1196 50  0000 L CNN
F 1 "1u" H 10715 1105 50  0000 L CNN
F 2 "" H 10638 1000 50  0001 C CNN
F 3 "~" H 10600 1150 50  0001 C CNN
	1    10600 1150
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR01445
U 1 1 5B117EDC
P 10600 1300
F 0 "#PWR01445" H 10600 1050 50  0001 C CNN
F 1 "GND" H 10605 1127 50  0000 C CNN
F 2 "" H 10600 1300 50  0001 C CNN
F 3 "" H 10600 1300 50  0001 C CNN
	1    10600 1300
	1    0    0    -1  
$EndComp
$Comp
L power:+5V #PWR01444
U 1 1 5B117EE2
P 10600 1000
F 0 "#PWR01444" H 10600 850 50  0001 C CNN
F 1 "+5V" H 10615 1173 50  0000 C CNN
F 2 "" H 10600 1000 50  0001 C CNN
F 3 "" H 10600 1000 50  0001 C CNN
	1    10600 1000
	1    0    0    -1  
$EndComp
Text Label 1550 2000 0    50   ~ 0
5_A8
Text Label 1550 1900 0    50   ~ 0
5_A9
Text Label 1550 1800 0    50   ~ 0
5_A10
Text Label 1550 1700 0    50   ~ 0
5_A11
Text Label 1550 1300 0    50   ~ 0
5_A15
Text Label 1550 1400 0    50   ~ 0
5_A14
Text Label 1550 1500 0    50   ~ 0
5_A13
Text Label 1550 1600 0    50   ~ 0
5_A12
Text Label 3000 3950 2    50   ~ 0
3_A0
Text Label 3000 3850 2    50   ~ 0
3_A1
Text Label 3000 3750 2    50   ~ 0
3_A2
Text Label 3000 3650 2    50   ~ 0
3_A3
Text Label 3000 3550 2    50   ~ 0
3_A4
Text Label 3000 3450 2    50   ~ 0
3_A5
Text Label 3000 3350 2    50   ~ 0
3_A6
Text Label 3000 3250 2    50   ~ 0
3_A7
Wire Wire Line
	1550 1300 1750 1300
Wire Wire Line
	1550 1400 1750 1400
Wire Wire Line
	1550 1500 1750 1500
Wire Wire Line
	1550 1600 1750 1600
Wire Wire Line
	1550 1700 1750 1700
Wire Wire Line
	1550 1800 1750 1800
Wire Wire Line
	1550 1900 1750 1900
Wire Wire Line
	1550 2000 1750 2000
Wire Wire Line
	2800 1300 3000 1300
Wire Wire Line
	2800 1400 3000 1400
Wire Wire Line
	2800 1500 3000 1500
Wire Wire Line
	2800 1600 3000 1600
Wire Wire Line
	2800 1700 3000 1700
Wire Wire Line
	2800 1800 3000 1800
Wire Wire Line
	2800 1900 3000 1900
Wire Wire Line
	2800 2000 3000 2000
Wire Wire Line
	2800 3250 3000 3250
Wire Wire Line
	2800 3350 3000 3350
Wire Wire Line
	2800 3450 3000 3450
Wire Wire Line
	2800 3550 3000 3550
Wire Wire Line
	2800 3650 3000 3650
Wire Wire Line
	2800 3750 3000 3750
Wire Wire Line
	2800 3850 3000 3850
Wire Wire Line
	2800 3950 3000 3950
Wire Wire Line
	1550 3250 1750 3250
Wire Wire Line
	1550 3350 1750 3350
Wire Wire Line
	1550 3450 1750 3450
Wire Wire Line
	1550 3550 1750 3550
Wire Wire Line
	1550 3650 1750 3650
Wire Wire Line
	1550 3750 1750 3750
Wire Wire Line
	1550 3850 1750 3850
Wire Wire Line
	1550 3950 1750 3950
Text Label 8700 650  3    50   ~ 0
3_D[7..0]
Text Label 7050 650  3    50   ~ 0
5_D[7..0]
Text Label 1450 650  3    50   ~ 0
5_A[16..0]
Text Label 3100 650  3    50   ~ 0
3_A[16..0]
Text Label 5950 4700 3    50   ~ 0
3_A[19..16]
Wire Bus Line
	5950 4650 5950 5600
Wire Bus Line
	4300 4650 4300 5600
Wire Bus Line
	8700 600  8700 1900
Wire Bus Line
	7050 600  7050 1900
Wire Bus Line
	3100 600  3100 4050
Wire Bus Line
	1450 600  1450 4050
Text Label 4300 4700 3    50   ~ 0
5_A[19..16]
$EndSCHEMATC