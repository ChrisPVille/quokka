EESchema Schematic File Version 4
LIBS:quokka-cache
EELAYER 26 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 4 15
Title ""
Date ""
Rev ""
Comp ""
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 "Quokka 6502 Microprocessor Trainer"
$EndDescr
Text HLabel 5000 3400 0    50   BiDi ~ 0
R~W
Text HLabel 6450 1800 2    50   BiDi ~ 0
GPIO[7..0]
$Comp
L power:GND #PWR0410
U 1 1 5ABD3089
P 5650 3850
F 0 "#PWR0410" H 5650 3600 50  0001 C CNN
F 1 "GND" H 5750 3750 50  0000 C CNN
F 2 "" H 5650 3850 50  0001 C CNN
F 3 "" H 5650 3850 50  0001 C CNN
	1    5650 3850
	1    0    0    -1  
$EndComp
Wire Wire Line
	5650 3800 5650 3850
$Comp
L power:+5V #PWR0402
U 1 1 5ABD3090
P 5400 2200
F 0 "#PWR0402" H 5400 2050 50  0001 C CNN
F 1 "+5V" H 5400 2350 50  0000 C CNN
F 2 "" H 5400 2200 50  0001 C CNN
F 3 "" H 5400 2200 50  0001 C CNN
	1    5400 2200
	1    0    0    -1  
$EndComp
$Comp
L power:+3V3 #PWR0403
U 1 1 5ABD3096
P 5600 2200
F 0 "#PWR0403" H 5600 2050 50  0001 C CNN
F 1 "+3V3" H 5750 2250 50  0000 C CNN
F 2 "" H 5600 2200 50  0001 C CNN
F 3 "" H 5600 2200 50  0001 C CNN
	1    5600 2200
	1    0    0    -1  
$EndComp
Wire Wire Line
	5550 2200 5600 2200
Wire Wire Line
	5600 2200 5650 2200
Connection ~ 5600 2200
$Comp
L quokka:74LVC4245A U401
U 1 1 5ABD309F
P 5500 3000
F 0 "U401" H 5200 3650 50  0000 C CNN
F 1 "74LVC4245A" H 5900 3650 50  0000 C CNN
F 2 "Package_SO:TSSOP-24_4.4x7.8mm_P0.65mm" H 5500 3000 50  0001 C CNN
F 3 "https://assets.nexperia.com/documents/data-sheet/74LVC4245A.pdf" H 5500 3000 50  0001 C CNN
	1    5500 3000
	1    0    0    -1  
$EndComp
Text Notes 5175 1975 0    50   ~ 0
Bidirectional Data
Entry Wire Line
	6250 3200 6350 3100
Entry Wire Line
	6250 3100 6350 3000
Entry Wire Line
	6250 3000 6350 2900
Entry Wire Line
	6250 2900 6350 2800
Entry Wire Line
	6250 2800 6350 2700
Entry Wire Line
	6250 2700 6350 2600
Entry Wire Line
	6250 2600 6350 2500
Entry Wire Line
	6250 2500 6350 2400
Text Label 6250 2500 2    50   ~ 0
G0
Text Label 6250 2600 2    50   ~ 0
G1
Text Label 6250 2700 2    50   ~ 0
G2
Text Label 6250 2800 2    50   ~ 0
G3
Text Label 6250 2900 2    50   ~ 0
G4
Text Label 6250 3000 2    50   ~ 0
G5
Text Label 6250 3100 2    50   ~ 0
G6
Text Label 6250 3200 2    50   ~ 0
G7
Wire Wire Line
	6050 3200 6250 3200
Wire Wire Line
	6250 3100 6050 3100
Wire Wire Line
	6050 3000 6250 3000
Wire Wire Line
	6250 2900 6050 2900
Wire Wire Line
	6050 2800 6250 2800
Wire Wire Line
	6250 2700 6050 2700
Wire Wire Line
	6050 2600 6250 2600
Wire Wire Line
	6250 2500 6050 2500
Wire Bus Line
	6450 1800 6350 1800
Wire Wire Line
	5750 3800 5650 3800
Connection ~ 5650 3800
Wire Wire Line
	5550 3800 5650 3800
Wire Wire Line
	5000 3550 5000 3500
Text Label 6350 1850 3    50   ~ 0
G[7..0]
$Comp
L power:GND #PWR0409
U 1 1 5ABD3633
P 5000 3550
F 0 "#PWR0409" H 5000 3300 50  0001 C CNN
F 1 "GND" H 5100 3450 50  0000 C CNN
F 2 "" H 5000 3550 50  0001 C CNN
F 3 "" H 5000 3550 50  0001 C CNN
	1    5000 3550
	1    0    0    -1  
$EndComp
$Comp
L Device:C C401
U 1 1 5ABD4DD7
P 6800 2850
F 0 "C401" H 6915 2896 50  0000 L CNN
F 1 "1u" H 6915 2805 50  0000 L CNN
F 2 "Capacitor_SMD:C_0603_1608Metric" H 6838 2700 50  0001 C CNN
F 3 "~" H 6800 2850 50  0001 C CNN
	1    6800 2850
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0406
U 1 1 5ABD4DDE
P 6800 3000
F 0 "#PWR0406" H 6800 2750 50  0001 C CNN
F 1 "GND" H 6805 2827 50  0000 C CNN
F 2 "" H 6800 3000 50  0001 C CNN
F 3 "" H 6800 3000 50  0001 C CNN
	1    6800 3000
	1    0    0    -1  
$EndComp
$Comp
L power:+5V #PWR0404
U 1 1 5ABD4DE4
P 6800 2700
F 0 "#PWR0404" H 6800 2550 50  0001 C CNN
F 1 "+5V" H 6815 2873 50  0000 C CNN
F 2 "" H 6800 2700 50  0001 C CNN
F 3 "" H 6800 2700 50  0001 C CNN
	1    6800 2700
	1    0    0    -1  
$EndComp
$Comp
L Device:LED_Small D403
U 1 1 5ABE75BA
P 3900 3500
F 0 "D403" H 4150 3550 50  0000 R CNN
F 1 "LED_Small" V 3855 3432 50  0001 R CNN
F 2 "LED_SMD:LED_0805_2012Metric" V 3900 3500 50  0001 C CNN
F 3 "~" V 3900 3500 50  0001 C CNN
	1    3900 3500
	0    -1   -1   0   
$EndComp
$Comp
L Device:LED_Small D410
U 1 1 5ABE75EB
P 4600 3500
F 0 "D410" H 4850 3550 50  0000 R CNN
F 1 "LED_Small" V 4555 3432 50  0001 R CNN
F 2 "LED_SMD:LED_0805_2012Metric" V 4600 3500 50  0001 C CNN
F 3 "~" V 4600 3500 50  0001 C CNN
	1    4600 3500
	0    -1   -1   0   
$EndComp
$Comp
L Device:LED_Small D409
U 1 1 5ABE75F2
P 4500 3500
F 0 "D409" H 4750 3550 50  0000 R CNN
F 1 "LED_Small" V 4455 3432 50  0001 R CNN
F 2 "LED_SMD:LED_0805_2012Metric" V 4500 3500 50  0001 C CNN
F 3 "~" V 4500 3500 50  0001 C CNN
	1    4500 3500
	0    -1   -1   0   
$EndComp
$Comp
L Device:LED_Small D408
U 1 1 5ABE75F9
P 4400 3500
F 0 "D408" H 4650 3550 50  0000 R CNN
F 1 "LED_Small" V 4355 3432 50  0001 R CNN
F 2 "LED_SMD:LED_0805_2012Metric" V 4400 3500 50  0001 C CNN
F 3 "~" V 4400 3500 50  0001 C CNN
	1    4400 3500
	0    -1   -1   0   
$EndComp
$Comp
L Device:LED_Small D407
U 1 1 5ABE7600
P 4300 3500
F 0 "D407" H 4550 3550 50  0000 R CNN
F 1 "LED_Small" V 4255 3432 50  0001 R CNN
F 2 "LED_SMD:LED_0805_2012Metric" V 4300 3500 50  0001 C CNN
F 3 "~" V 4300 3500 50  0001 C CNN
	1    4300 3500
	0    -1   -1   0   
$EndComp
$Comp
L Device:LED_Small D406
U 1 1 5ABE7607
P 4200 3500
F 0 "D406" H 4450 3550 50  0000 R CNN
F 1 "LED_Small" V 4155 3432 50  0001 R CNN
F 2 "LED_SMD:LED_0805_2012Metric" V 4200 3500 50  0001 C CNN
F 3 "~" V 4200 3500 50  0001 C CNN
	1    4200 3500
	0    -1   -1   0   
$EndComp
$Comp
L Device:LED_Small D405
U 1 1 5ABE760E
P 4100 3500
F 0 "D405" H 4350 3550 50  0000 R CNN
F 1 "LED_Small" V 4055 3432 50  0001 R CNN
F 2 "LED_SMD:LED_0805_2012Metric" V 4100 3500 50  0001 C CNN
F 3 "~" V 4100 3500 50  0001 C CNN
	1    4100 3500
	0    -1   -1   0   
$EndComp
$Comp
L Device:LED_Small D404
U 1 1 5ABE7615
P 4000 3500
F 0 "D404" H 4250 3550 50  0000 R CNN
F 1 "LED_Small" V 3955 3432 50  0001 R CNN
F 2 "LED_SMD:LED_0805_2012Metric" V 4000 3500 50  0001 C CNN
F 3 "~" V 4000 3500 50  0001 C CNN
	1    4000 3500
	0    -1   -1   0   
$EndComp
$Comp
L Device:R R401
U 1 1 5ABE7638
P 3900 3750
F 0 "R401" V 3850 3400 50  0000 L CNN
F 1 "390" V 3900 3675 50  0000 L CNN
F 2 "Resistor_SMD:R_0603_1608Metric" V 3830 3750 50  0001 C CNN
F 3 "~" H 3900 3750 50  0001 C CNN
	1    3900 3750
	1    0    0    -1  
$EndComp
$Comp
L Device:R R402
U 1 1 5ABE763F
P 4000 3750
F 0 "R402" V 3950 3400 50  0000 L CNN
F 1 "390" V 4000 3675 50  0000 L CNN
F 2 "Resistor_SMD:R_0603_1608Metric" V 3930 3750 50  0001 C CNN
F 3 "~" H 4000 3750 50  0001 C CNN
	1    4000 3750
	1    0    0    -1  
$EndComp
$Comp
L Device:R R403
U 1 1 5ABE7646
P 4100 3750
F 0 "R403" V 4050 3400 50  0000 L CNN
F 1 "390" V 4100 3675 50  0000 L CNN
F 2 "Resistor_SMD:R_0603_1608Metric" V 4030 3750 50  0001 C CNN
F 3 "~" H 4100 3750 50  0001 C CNN
	1    4100 3750
	1    0    0    -1  
$EndComp
$Comp
L Device:R R404
U 1 1 5ABE764D
P 4200 3750
F 0 "R404" V 4150 3400 50  0000 L CNN
F 1 "390" V 4200 3675 50  0000 L CNN
F 2 "Resistor_SMD:R_0603_1608Metric" V 4130 3750 50  0001 C CNN
F 3 "~" H 4200 3750 50  0001 C CNN
	1    4200 3750
	1    0    0    -1  
$EndComp
$Comp
L Device:R R405
U 1 1 5ABE7654
P 4300 3750
F 0 "R405" V 4250 3400 50  0000 L CNN
F 1 "390" V 4300 3675 50  0000 L CNN
F 2 "Resistor_SMD:R_0603_1608Metric" V 4230 3750 50  0001 C CNN
F 3 "~" H 4300 3750 50  0001 C CNN
	1    4300 3750
	1    0    0    -1  
$EndComp
$Comp
L Device:R R406
U 1 1 5ABE765B
P 4400 3750
F 0 "R406" V 4350 3400 50  0000 L CNN
F 1 "390" V 4400 3675 50  0000 L CNN
F 2 "Resistor_SMD:R_0603_1608Metric" V 4330 3750 50  0001 C CNN
F 3 "~" H 4400 3750 50  0001 C CNN
	1    4400 3750
	1    0    0    -1  
$EndComp
$Comp
L Device:R R407
U 1 1 5ABE7662
P 4500 3750
F 0 "R407" V 4450 3400 50  0000 L CNN
F 1 "390" V 4500 3675 50  0000 L CNN
F 2 "Resistor_SMD:R_0603_1608Metric" V 4430 3750 50  0001 C CNN
F 3 "~" H 4500 3750 50  0001 C CNN
	1    4500 3750
	1    0    0    -1  
$EndComp
$Comp
L Device:R R408
U 1 1 5ABE7669
P 4600 3750
F 0 "R408" V 4550 3400 50  0000 L CNN
F 1 "390" V 4600 3675 50  0000 L CNN
F 2 "Resistor_SMD:R_0603_1608Metric" V 4530 3750 50  0001 C CNN
F 3 "~" H 4600 3750 50  0001 C CNN
	1    4600 3750
	1    0    0    -1  
$EndComp
$Comp
L Power_Protection:SP0504BAJT D401
U 1 1 5ABEBAFD
P 4100 2200
F 0 "D401" V 4500 2300 50  0000 R CNN
F 1 "DF5A6.8F" V 4425 2300 50  0000 R CNN
F 2 "Package_TO_SOT_SMD:SOT-353_SC-70-5" H 4400 2150 50  0001 L CNN
F 3 "http://www.littelfuse.com/~/media/files/littelfuse/technical%20resources/documents/data%20sheets/sp05xxba.pdf" H 4225 2325 50  0001 C CNN
	1    4100 2200
	-1   0    0    1   
$EndComp
$Comp
L Power_Protection:SP0504BAJT D402
U 1 1 5ABECE71
P 4775 2200
F 0 "D402" V 5175 2300 50  0000 R CNN
F 1 "DF5A6.8F" V 5100 2300 50  0000 R CNN
F 2 "Package_TO_SOT_SMD:SOT-353_SC-70-5" H 5075 2150 50  0001 L CNN
F 3 "http://www.littelfuse.com/~/media/files/littelfuse/technical%20resources/documents/data%20sheets/sp05xxba.pdf" H 4900 2325 50  0001 C CNN
	1    4775 2200
	-1   0    0    1   
$EndComp
Wire Wire Line
	5000 2700 4100 2700
Wire Wire Line
	2425 2500 3900 2500
Wire Wire Line
	2425 2900 4300 2900
Wire Wire Line
	2425 3100 4500 3100
Wire Wire Line
	4600 3400 4600 3200
Connection ~ 4600 3200
Wire Wire Line
	4600 3200 2425 3200
Wire Wire Line
	4500 3400 4500 3100
Connection ~ 4500 3100
Wire Wire Line
	4400 3400 4400 3000
Connection ~ 4400 3000
Wire Wire Line
	4400 3000 2425 3000
Wire Wire Line
	4300 3400 4300 2900
Connection ~ 4300 2900
Wire Wire Line
	4200 3400 4200 2800
Connection ~ 4200 2800
Wire Wire Line
	4200 2800 5000 2800
Wire Wire Line
	4000 3400 4000 2600
Connection ~ 4000 2600
Wire Wire Line
	4000 2600 5000 2600
Wire Wire Line
	2425 2800 4200 2800
Wire Wire Line
	4100 2700 4100 3400
Connection ~ 4100 2700
Wire Wire Line
	4100 2700 2425 2700
Wire Wire Line
	3900 3400 3900 2500
Connection ~ 3900 2500
Wire Wire Line
	3900 2500 5000 2500
Wire Wire Line
	2425 2600 4000 2600
Wire Wire Line
	4300 2900 4575 2900
Wire Wire Line
	4400 3000 4675 3000
Wire Wire Line
	4500 3100 4775 3100
Wire Wire Line
	4600 3200 4875 3200
Wire Wire Line
	4875 2400 4875 3200
Connection ~ 4875 3200
Wire Wire Line
	4875 3200 5000 3200
Wire Wire Line
	4775 2400 4775 3100
Connection ~ 4775 3100
Wire Wire Line
	4775 3100 5000 3100
Wire Wire Line
	4675 2400 4675 3000
Connection ~ 4675 3000
Wire Wire Line
	4675 3000 5000 3000
Wire Wire Line
	4575 2400 4575 2900
Connection ~ 4575 2900
Wire Wire Line
	4575 2900 5000 2900
Wire Wire Line
	4200 2400 4200 2800
Wire Wire Line
	4100 2400 4100 2700
Wire Wire Line
	4000 2400 4000 2600
Wire Wire Line
	3900 2400 3900 2500
$Comp
L power:GND #PWR0401
U 1 1 5AC0745E
P 4425 1800
F 0 "#PWR0401" H 4425 1550 50  0001 C CNN
F 1 "GND" H 4525 1700 50  0000 C CNN
F 2 "" H 4425 1800 50  0001 C CNN
F 3 "" H 4425 1800 50  0001 C CNN
	1    4425 1800
	1    0    0    -1  
$EndComp
Wire Wire Line
	4100 2000 4100 1725
Wire Wire Line
	4100 1725 4425 1725
Wire Wire Line
	4425 1725 4425 1800
Wire Wire Line
	4425 1725 4775 1725
Wire Wire Line
	4775 1725 4775 2000
Connection ~ 4425 1725
$Comp
L power:GND #PWR0411
U 1 1 5AC0C5ED
P 4250 4225
F 0 "#PWR0411" H 4250 3975 50  0001 C CNN
F 1 "GND" H 4350 4125 50  0000 C CNN
F 2 "" H 4250 4225 50  0001 C CNN
F 3 "" H 4250 4225 50  0001 C CNN
	1    4250 4225
	1    0    0    -1  
$EndComp
Wire Wire Line
	3900 4175 3900 3900
Wire Wire Line
	4000 3900 4000 4175
Connection ~ 4000 4175
Wire Wire Line
	4000 4175 3900 4175
Wire Wire Line
	4100 3900 4100 4175
Connection ~ 4100 4175
Wire Wire Line
	4100 4175 4000 4175
Wire Wire Line
	4200 3900 4200 4175
Wire Wire Line
	4200 4175 4100 4175
Wire Wire Line
	4300 3900 4300 4175
Wire Wire Line
	4400 3900 4400 4175
Wire Wire Line
	4400 4175 4300 4175
Wire Wire Line
	4500 3900 4500 4175
Wire Wire Line
	4500 4175 4400 4175
Connection ~ 4400 4175
Wire Wire Line
	4600 3900 4600 4175
Wire Wire Line
	4600 4175 4500 4175
Connection ~ 4500 4175
Wire Wire Line
	4200 4175 4250 4175
Connection ~ 4200 4175
Connection ~ 4300 4175
Wire Wire Line
	4250 4225 4250 4175
Connection ~ 4250 4175
Wire Wire Line
	4250 4175 4300 4175
$Comp
L Device:C C402
U 1 1 5AC1AF1D
P 7300 2850
F 0 "C402" H 7415 2896 50  0000 L CNN
F 1 "1u" H 7415 2805 50  0000 L CNN
F 2 "Capacitor_SMD:C_0603_1608Metric" H 7338 2700 50  0001 C CNN
F 3 "~" H 7300 2850 50  0001 C CNN
	1    7300 2850
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0407
U 1 1 5AC1AF23
P 7300 3000
F 0 "#PWR0407" H 7300 2750 50  0001 C CNN
F 1 "GND" H 7305 2827 50  0000 C CNN
F 2 "" H 7300 3000 50  0001 C CNN
F 3 "" H 7300 3000 50  0001 C CNN
	1    7300 3000
	1    0    0    -1  
$EndComp
$Comp
L power:+3V3 #PWR0405
U 1 1 5AC1C826
P 7300 2700
F 0 "#PWR0405" H 7300 2550 50  0001 C CNN
F 1 "+3V3" H 7300 2875 50  0000 C CNN
F 2 "" H 7300 2700 50  0001 C CNN
F 3 "" H 7300 2700 50  0001 C CNN
	1    7300 2700
	1    0    0    -1  
$EndComp
$Comp
L Connector_Generic:Conn_01x09 J401
U 1 1 5ACF6504
P 2225 2900
F 0 "J401" H 2145 3517 50  0000 C CNN
F 1 "Conn_01x09" H 2145 3426 50  0000 C CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x09_P2.54mm_Vertical" H 2225 2900 50  0001 C CNN
F 3 "~" H 2225 2900 50  0001 C CNN
	1    2225 2900
	-1   0    0    -1  
$EndComp
$Comp
L power:GND #PWR0408
U 1 1 5ACF822D
P 2475 3350
F 0 "#PWR0408" H 2475 3100 50  0001 C CNN
F 1 "GND" H 2480 3177 50  0000 C CNN
F 2 "" H 2475 3350 50  0001 C CNN
F 3 "" H 2475 3350 50  0001 C CNN
	1    2475 3350
	1    0    0    -1  
$EndComp
Wire Wire Line
	2475 3350 2475 3300
Wire Wire Line
	2475 3300 2425 3300
Wire Bus Line
	6350 1800 6350 3100
$EndSCHEMATC
