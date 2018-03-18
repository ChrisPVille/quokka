EESchema Schematic File Version 4
LIBS:quokka-cache
EELAYER 26 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 15 15
Title ""
Date ""
Rev ""
Comp ""
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 "Quokka 6502 Microprocessor Trainer"
$EndDescr
Text HLabel 3450 4550 0    50   UnSpc ~ 0
6502_DATA[7..0]
Text HLabel 3400 2250 0    50   UnSpc ~ 0
6502_ADDR[19..0]
Text HLabel 5200 3275 2    50   UnSpc ~ 0
6502_R~W
Text HLabel 5200 3375 2    50   UnSpc ~ 0
6502_RDY
Text HLabel 5200 3475 2    50   UnSpc ~ 0
6502_PHI1
Text HLabel 5200 3575 2    50   UnSpc ~ 0
6502_PHI0
Text HLabel 5200 4375 2    50   UnSpc ~ 0
6502_PHI2
Text HLabel 5200 4275 2    50   UnSpc ~ 0
6502_~IRQ
Text HLabel 5200 4175 2    50   UnSpc ~ 0
6502_~NMI
Text HLabel 5200 4075 2    50   UnSpc ~ 0
6502_~RES
Text HLabel 5200 3975 2    50   UnSpc ~ 0
6502_SO
Text HLabel 5200 3775 2    50   UnSpc ~ 0
OPT1_~cs
Text HLabel 5200 3675 2    50   UnSpc ~ 0
OPT2_~cs
Text HLabel 5200 3875 2    50   UnSpc ~ 0
6502_SYNC
Text HLabel 5550 2250 2    50   BiDi ~ 0
FPGA_Expansion[7..0]
Entry Wire Line
	3650 4750 3550 4650
Entry Wire Line
	3650 4850 3550 4750
Entry Wire Line
	3650 4950 3550 4850
Entry Wire Line
	3650 5050 3550 4950
Entry Wire Line
	3650 5150 3550 5050
Entry Wire Line
	3650 5250 3550 5150
Entry Wire Line
	3650 5350 3550 5250
Entry Wire Line
	3650 5450 3550 5350
Entry Wire Line
	3650 3500 3550 3600
Entry Wire Line
	3650 3600 3550 3700
Entry Wire Line
	3650 3700 3550 3800
Entry Wire Line
	3550 3500 3650 3400
Entry Wire Line
	3550 3400 3650 3300
Entry Wire Line
	3550 3300 3650 3200
Entry Wire Line
	3550 3200 3650 3100
Entry Wire Line
	3550 2900 3650 2800
Entry Wire Line
	3550 2800 3650 2700
Entry Wire Line
	3550 2700 3650 2600
Entry Wire Line
	3550 2600 3650 2500
Entry Wire Line
	3550 2500 3650 2400
Entry Wire Line
	3550 2400 3650 2300
Entry Wire Line
	3550 3000 3650 2900
Entry Wire Line
	3550 3100 3650 3000
Text Label 3650 3500 0    50   ~ 0
A12
Text Label 3650 3600 0    50   ~ 0
A13
Text Label 3650 3700 0    50   ~ 0
A14
Text Label 3650 3800 0    50   ~ 0
A15
Text Label 3650 2300 0    50   ~ 0
A0
Text Label 3650 2400 0    50   ~ 0
A1
Text Label 3650 2500 0    50   ~ 0
A2
Text Label 3650 2600 0    50   ~ 0
A3
Text Label 3650 2700 0    50   ~ 0
A4
Text Label 3650 2800 0    50   ~ 0
A5
Text Label 3650 2900 0    50   ~ 0
A6
Text Label 3650 3100 0    50   ~ 0
A8
Text Label 3650 3000 0    50   ~ 0
A7
Text Label 3650 3200 0    50   ~ 0
A9
Text Label 3650 3300 0    50   ~ 0
A10
Text Label 3650 3400 0    50   ~ 0
A11
Text Label 3650 4750 0    50   ~ 0
D0
Text Label 3650 4850 0    50   ~ 0
D1
Text Label 3650 4950 0    50   ~ 0
D2
Text Label 3650 5050 0    50   ~ 0
D3
Text Label 3650 5150 0    50   ~ 0
D4
Text Label 3650 5250 0    50   ~ 0
D5
Text Label 3650 5350 0    50   ~ 0
D6
Text Label 3650 5450 0    50   ~ 0
D7
Entry Wire Line
	3650 3900 3550 4000
Entry Wire Line
	3650 4000 3550 4100
Entry Wire Line
	3650 4100 3550 4200
Entry Wire Line
	3650 4200 3550 4300
Entry Wire Line
	3550 3900 3650 3800
Text Label 3650 3900 0    50   ~ 0
A16
Text Label 3650 4000 0    50   ~ 0
A17
Text Label 3650 4100 0    50   ~ 0
A18
Text Label 3650 4200 0    50   ~ 0
A19
Wire Bus Line
	3450 4550 3550 4550
Entry Wire Line
	5450 2900 5350 2800
Entry Wire Line
	5450 2800 5350 2700
Entry Wire Line
	5450 2700 5350 2600
Entry Wire Line
	5450 2600 5350 2500
Entry Wire Line
	5450 2500 5350 2400
Entry Wire Line
	5450 2400 5350 2300
Entry Wire Line
	5450 3000 5350 2900
Entry Wire Line
	5450 3100 5350 3000
Text Label 5350 2300 2    50   ~ 0
E0
Text Label 5350 2400 2    50   ~ 0
E1
Text Label 5350 2500 2    50   ~ 0
E2
Text Label 5350 2600 2    50   ~ 0
E3
Text Label 5350 2700 2    50   ~ 0
E4
Text Label 5350 2800 2    50   ~ 0
E5
Text Label 5350 2900 2    50   ~ 0
E6
Text Label 5350 3000 2    50   ~ 0
E7
Wire Bus Line
	5450 2250 5550 2250
Wire Bus Line
	3550 2250 3400 2250
Text Label 3550 3500 1    50   ~ 0
A[19..0]
Text Label 5450 2650 0    50   ~ 0
E[7..0]
Text Label 3550 5100 1    50   ~ 0
D[7..0]
$Comp
L Connector_Specialized:Test_Point TP1538
U 1 1 5ADCD8F9
P 3750 4200
F 0 "TP1538" V 3750 4375 50  0000 L CNN
F 1 "Test_Point" H 3808 4229 50  0001 L CNN
F 2 "TestPoint:TestPoint_Plated_Hole_D2.0mm" H 3950 4200 50  0001 C CNN
F 3 "~" H 3950 4200 50  0001 C CNN
	1    3750 4200
	0    1    -1   0   
$EndComp
$Comp
L Connector_Specialized:Test_Point TP1536
U 1 1 5ADCD8FA
P 3750 4100
F 0 "TP1536" V 3750 4275 50  0000 L CNN
F 1 "Test_Point" H 3808 4129 50  0001 L CNN
F 2 "TestPoint:TestPoint_Plated_Hole_D2.0mm" H 3950 4100 50  0001 C CNN
F 3 "~" H 3950 4100 50  0001 C CNN
	1    3750 4100
	0    1    -1   0   
$EndComp
$Comp
L Connector_Specialized:Test_Point TP1534
U 1 1 5ADCD8FB
P 3750 4000
F 0 "TP1534" V 3750 4175 50  0000 L CNN
F 1 "Test_Point" H 3808 4029 50  0001 L CNN
F 2 "TestPoint:TestPoint_Plated_Hole_D2.0mm" H 3950 4000 50  0001 C CNN
F 3 "~" H 3950 4000 50  0001 C CNN
	1    3750 4000
	0    1    -1   0   
$EndComp
$Comp
L Connector_Specialized:Test_Point TP1532
U 1 1 5ADCD8FC
P 3750 3900
F 0 "TP1532" V 3750 4075 50  0000 L CNN
F 1 "Test_Point" H 3808 3929 50  0001 L CNN
F 2 "TestPoint:TestPoint_Plated_Hole_D2.0mm" H 3950 3900 50  0001 C CNN
F 3 "~" H 3950 3900 50  0001 C CNN
	1    3750 3900
	0    1    -1   0   
$EndComp
$Comp
L Connector_Specialized:Test_Point TP1530
U 1 1 5ADCD8FD
P 3750 3800
F 0 "TP1530" V 3750 3975 50  0000 L CNN
F 1 "Test_Point" H 3808 3829 50  0001 L CNN
F 2 "TestPoint:TestPoint_Plated_Hole_D2.0mm" H 3950 3800 50  0001 C CNN
F 3 "~" H 3950 3800 50  0001 C CNN
	1    3750 3800
	0    1    -1   0   
$EndComp
$Comp
L Connector_Specialized:Test_Point TP1528
U 1 1 5ADCD8FE
P 3750 3700
F 0 "TP1528" V 3750 3875 50  0000 L CNN
F 1 "Test_Point" H 3808 3729 50  0001 L CNN
F 2 "TestPoint:TestPoint_Plated_Hole_D2.0mm" H 3950 3700 50  0001 C CNN
F 3 "~" H 3950 3700 50  0001 C CNN
	1    3750 3700
	0    1    -1   0   
$EndComp
$Comp
L Connector_Specialized:Test_Point TP1526
U 1 1 5AC02B40
P 3750 3600
F 0 "TP1526" V 3750 3775 50  0000 L CNN
F 1 "Test_Point" H 3808 3629 50  0001 L CNN
F 2 "TestPoint:TestPoint_Plated_Hole_D2.0mm" H 3950 3600 50  0001 C CNN
F 3 "~" H 3950 3600 50  0001 C CNN
	1    3750 3600
	0    1    -1   0   
$EndComp
$Comp
L Connector_Specialized:Test_Point TP1524
U 1 1 5AC02B46
P 3750 3500
F 0 "TP1524" V 3750 3675 50  0000 L CNN
F 1 "Test_Point" H 3808 3529 50  0001 L CNN
F 2 "TestPoint:TestPoint_Plated_Hole_D2.0mm" H 3950 3500 50  0001 C CNN
F 3 "~" H 3950 3500 50  0001 C CNN
	1    3750 3500
	0    1    -1   0   
$EndComp
$Comp
L Connector_Specialized:Test_Point TP1522
U 1 1 5ADCD901
P 3750 3400
F 0 "TP1522" V 3750 3575 50  0000 L CNN
F 1 "Test_Point" H 3808 3429 50  0001 L CNN
F 2 "TestPoint:TestPoint_Plated_Hole_D2.0mm" H 3950 3400 50  0001 C CNN
F 3 "~" H 3950 3400 50  0001 C CNN
	1    3750 3400
	0    1    -1   0   
$EndComp
$Comp
L Connector_Specialized:Test_Point TP1520
U 1 1 5ADCD902
P 3750 3300
F 0 "TP1520" V 3750 3475 50  0000 L CNN
F 1 "Test_Point" H 3808 3329 50  0001 L CNN
F 2 "TestPoint:TestPoint_Plated_Hole_D2.0mm" H 3950 3300 50  0001 C CNN
F 3 "~" H 3950 3300 50  0001 C CNN
	1    3750 3300
	0    1    -1   0   
$EndComp
$Comp
L Connector_Specialized:Test_Point TP1518
U 1 1 5ADCD903
P 3750 3200
F 0 "TP1518" V 3750 3375 50  0000 L CNN
F 1 "Test_Point" H 3808 3229 50  0001 L CNN
F 2 "TestPoint:TestPoint_Plated_Hole_D2.0mm" H 3950 3200 50  0001 C CNN
F 3 "~" H 3950 3200 50  0001 C CNN
	1    3750 3200
	0    1    -1   0   
$EndComp
$Comp
L Connector_Specialized:Test_Point TP1517
U 1 1 5ADCD904
P 3750 3100
F 0 "TP1517" V 3750 3275 50  0000 L CNN
F 1 "Test_Point" H 3808 3129 50  0001 L CNN
F 2 "TestPoint:TestPoint_Plated_Hole_D2.0mm" H 3950 3100 50  0001 C CNN
F 3 "~" H 3950 3100 50  0001 C CNN
	1    3750 3100
	0    1    -1   0   
$EndComp
$Comp
L Connector_Specialized:Test_Point TP1515
U 1 1 5ADCD905
P 3750 3000
F 0 "TP1515" V 3750 3175 50  0000 L CNN
F 1 "Test_Point" H 3808 3029 50  0001 L CNN
F 2 "TestPoint:TestPoint_Plated_Hole_D2.0mm" H 3950 3000 50  0001 C CNN
F 3 "~" H 3950 3000 50  0001 C CNN
	1    3750 3000
	0    1    -1   0   
$EndComp
$Comp
L Connector_Specialized:Test_Point TP1511
U 1 1 5ADCD906
P 3750 2800
F 0 "TP1511" V 3750 2975 50  0000 L CNN
F 1 "Test_Point" H 3808 2829 50  0001 L CNN
F 2 "TestPoint:TestPoint_Plated_Hole_D2.0mm" H 3950 2800 50  0001 C CNN
F 3 "~" H 3950 2800 50  0001 C CNN
	1    3750 2800
	0    1    -1   0   
$EndComp
$Comp
L Connector_Specialized:Test_Point TP1513
U 1 1 5ADCD907
P 3750 2900
F 0 "TP1513" V 3750 3075 50  0000 L CNN
F 1 "Test_Point" H 3808 2929 50  0001 L CNN
F 2 "TestPoint:TestPoint_Plated_Hole_D2.0mm" H 3950 2900 50  0001 C CNN
F 3 "~" H 3950 2900 50  0001 C CNN
	1    3750 2900
	0    1    -1   0   
$EndComp
$Comp
L Connector_Specialized:Test_Point TP1509
U 1 1 5ADCD908
P 3750 2700
F 0 "TP1509" V 3750 2875 50  0000 L CNN
F 1 "Test_Point" H 3808 2729 50  0001 L CNN
F 2 "TestPoint:TestPoint_Plated_Hole_D2.0mm" H 3950 2700 50  0001 C CNN
F 3 "~" H 3950 2700 50  0001 C CNN
	1    3750 2700
	0    1    -1   0   
$EndComp
$Comp
L Connector_Specialized:Test_Point TP1507
U 1 1 5AC07E64
P 3750 2600
F 0 "TP1507" V 3750 2775 50  0000 L CNN
F 1 "Test_Point" H 3808 2629 50  0001 L CNN
F 2 "TestPoint:TestPoint_Plated_Hole_D2.0mm" H 3950 2600 50  0001 C CNN
F 3 "~" H 3950 2600 50  0001 C CNN
	1    3750 2600
	0    1    -1   0   
$EndComp
$Comp
L Connector_Specialized:Test_Point TP1505
U 1 1 5AC07E6A
P 3750 2500
F 0 "TP1505" V 3750 2675 50  0000 L CNN
F 1 "Test_Point" H 3808 2529 50  0001 L CNN
F 2 "TestPoint:TestPoint_Plated_Hole_D2.0mm" H 3950 2500 50  0001 C CNN
F 3 "~" H 3950 2500 50  0001 C CNN
	1    3750 2500
	0    1    -1   0   
$EndComp
$Comp
L Connector_Specialized:Test_Point TP1503
U 1 1 5AC07E70
P 3750 2400
F 0 "TP1503" V 3750 2575 50  0000 L CNN
F 1 "Test_Point" H 3808 2429 50  0001 L CNN
F 2 "TestPoint:TestPoint_Plated_Hole_D2.0mm" H 3950 2400 50  0001 C CNN
F 3 "~" H 3950 2400 50  0001 C CNN
	1    3750 2400
	0    1    -1   0   
$EndComp
$Comp
L Connector_Specialized:Test_Point TP1501
U 1 1 5ADCD90C
P 3750 2300
F 0 "TP1501" V 3750 2475 50  0000 L CNN
F 1 "Test_Point" H 3808 2329 50  0001 L CNN
F 2 "TestPoint:TestPoint_Plated_Hole_D2.0mm" H 3950 2300 50  0001 C CNN
F 3 "~" H 3950 2300 50  0001 C CNN
	1    3750 2300
	0    1    -1   0   
$EndComp
$Comp
L Connector_Specialized:Test_Point TP1502
U 1 1 5AC4F20A
P 5200 2300
F 0 "TP1502" V 5200 2475 50  0000 L CNN
F 1 "Test_Point" H 5258 2329 50  0001 L CNN
F 2 "TestPoint:TestPoint_Plated_Hole_D2.0mm" H 5400 2300 50  0001 C CNN
F 3 "~" H 5400 2300 50  0001 C CNN
	1    5200 2300
	0    -1   1    0   
$EndComp
$Comp
L Connector_Specialized:Test_Point TP1504
U 1 1 5AC4F210
P 5200 2400
F 0 "TP1504" V 5200 2575 50  0000 L CNN
F 1 "Test_Point" H 5258 2429 50  0001 L CNN
F 2 "TestPoint:TestPoint_Plated_Hole_D2.0mm" H 5400 2400 50  0001 C CNN
F 3 "~" H 5400 2400 50  0001 C CNN
	1    5200 2400
	0    -1   1    0   
$EndComp
$Comp
L Connector_Specialized:Test_Point TP1506
U 1 1 5AC4F216
P 5200 2500
F 0 "TP1506" V 5200 2675 50  0000 L CNN
F 1 "Test_Point" H 5258 2529 50  0001 L CNN
F 2 "TestPoint:TestPoint_Plated_Hole_D2.0mm" H 5400 2500 50  0001 C CNN
F 3 "~" H 5400 2500 50  0001 C CNN
	1    5200 2500
	0    -1   1    0   
$EndComp
$Comp
L Connector_Specialized:Test_Point TP1508
U 1 1 5AC4F21C
P 5200 2600
F 0 "TP1508" V 5200 2775 50  0000 L CNN
F 1 "Test_Point" H 5258 2629 50  0001 L CNN
F 2 "TestPoint:TestPoint_Plated_Hole_D2.0mm" H 5400 2600 50  0001 C CNN
F 3 "~" H 5400 2600 50  0001 C CNN
	1    5200 2600
	0    -1   1    0   
$EndComp
$Comp
L Connector_Specialized:Test_Point TP1510
U 1 1 5ADCD911
P 5200 2700
F 0 "TP1510" V 5200 2875 50  0000 L CNN
F 1 "Test_Point" H 5258 2729 50  0001 L CNN
F 2 "TestPoint:TestPoint_Plated_Hole_D2.0mm" H 5400 2700 50  0001 C CNN
F 3 "~" H 5400 2700 50  0001 C CNN
	1    5200 2700
	0    -1   1    0   
$EndComp
$Comp
L Connector_Specialized:Test_Point TP1512
U 1 1 5ADCD912
P 5200 2800
F 0 "TP1512" V 5200 2975 50  0000 L CNN
F 1 "Test_Point" H 5258 2829 50  0001 L CNN
F 2 "TestPoint:TestPoint_Plated_Hole_D2.0mm" H 5400 2800 50  0001 C CNN
F 3 "~" H 5400 2800 50  0001 C CNN
	1    5200 2800
	0    -1   1    0   
$EndComp
$Comp
L Connector_Specialized:Test_Point TP1514
U 1 1 5ADCD913
P 5200 2900
F 0 "TP1514" V 5200 3075 50  0000 L CNN
F 1 "Test_Point" H 5258 2929 50  0001 L CNN
F 2 "TestPoint:TestPoint_Plated_Hole_D2.0mm" H 5400 2900 50  0001 C CNN
F 3 "~" H 5400 2900 50  0001 C CNN
	1    5200 2900
	0    -1   1    0   
$EndComp
$Comp
L Connector_Specialized:Test_Point TP1516
U 1 1 5AC4F234
P 5200 3000
F 0 "TP1516" V 5200 3175 50  0000 L CNN
F 1 "Test_Point" H 5258 3029 50  0001 L CNN
F 2 "TestPoint:TestPoint_Plated_Hole_D2.0mm" H 5400 3000 50  0001 C CNN
F 3 "~" H 5400 3000 50  0001 C CNN
	1    5200 3000
	0    -1   1    0   
$EndComp
$Comp
L Connector_Specialized:Test_Point TP1527
U 1 1 5ADCD915
P 5200 3675
F 0 "TP1527" V 5200 3850 50  0000 L CNN
F 1 "Test_Point" H 5258 3704 50  0001 L CNN
F 2 "TestPoint:TestPoint_Plated_Hole_D2.0mm" H 5400 3675 50  0001 C CNN
F 3 "~" H 5400 3675 50  0001 C CNN
	1    5200 3675
	0    -1   1    0   
$EndComp
$Comp
L Connector_Specialized:Test_Point TP1529
U 1 1 5AC81ADB
P 5200 3775
F 0 "TP1529" V 5200 3950 50  0000 L CNN
F 1 "Test_Point" H 5258 3804 50  0001 L CNN
F 2 "TestPoint:TestPoint_Plated_Hole_D2.0mm" H 5400 3775 50  0001 C CNN
F 3 "~" H 5400 3775 50  0001 C CNN
	1    5200 3775
	0    -1   1    0   
$EndComp
$Comp
L Connector_Specialized:Test_Point TP1531
U 1 1 5AC81AE1
P 5200 3875
F 0 "TP1531" V 5200 4050 50  0000 L CNN
F 1 "Test_Point" H 5258 3904 50  0001 L CNN
F 2 "TestPoint:TestPoint_Plated_Hole_D2.0mm" H 5400 3875 50  0001 C CNN
F 3 "~" H 5400 3875 50  0001 C CNN
	1    5200 3875
	0    -1   1    0   
$EndComp
$Comp
L Connector_Specialized:Test_Point TP1533
U 1 1 5ADCD918
P 5200 3975
F 0 "TP1533" V 5200 4150 50  0000 L CNN
F 1 "Test_Point" H 5258 4004 50  0001 L CNN
F 2 "TestPoint:TestPoint_Plated_Hole_D2.0mm" H 5400 3975 50  0001 C CNN
F 3 "~" H 5400 3975 50  0001 C CNN
	1    5200 3975
	0    -1   1    0   
$EndComp
$Comp
L Connector_Specialized:Test_Point TP1535
U 1 1 5ADCD919
P 5200 4075
F 0 "TP1535" V 5200 4250 50  0000 L CNN
F 1 "Test_Point" H 5258 4104 50  0001 L CNN
F 2 "TestPoint:TestPoint_Plated_Hole_D2.0mm" H 5400 4075 50  0001 C CNN
F 3 "~" H 5400 4075 50  0001 C CNN
	1    5200 4075
	0    -1   1    0   
$EndComp
$Comp
L Connector_Specialized:Test_Point TP1537
U 1 1 5ADCD91A
P 5200 4175
F 0 "TP1537" V 5200 4350 50  0000 L CNN
F 1 "Test_Point" H 5258 4204 50  0001 L CNN
F 2 "TestPoint:TestPoint_Plated_Hole_D2.0mm" H 5400 4175 50  0001 C CNN
F 3 "~" H 5400 4175 50  0001 C CNN
	1    5200 4175
	0    -1   1    0   
$EndComp
$Comp
L Connector_Specialized:Test_Point TP1539
U 1 1 5ADCD91B
P 5200 4275
F 0 "TP1539" V 5200 4450 50  0000 L CNN
F 1 "Test_Point" H 5258 4304 50  0001 L CNN
F 2 "TestPoint:TestPoint_Plated_Hole_D2.0mm" H 5400 4275 50  0001 C CNN
F 3 "~" H 5400 4275 50  0001 C CNN
	1    5200 4275
	0    -1   1    0   
$EndComp
$Comp
L Connector_Specialized:Test_Point TP1540
U 1 1 5ADCD91C
P 5200 4375
F 0 "TP1540" V 5200 4550 50  0000 L CNN
F 1 "Test_Point" H 5258 4404 50  0001 L CNN
F 2 "TestPoint:TestPoint_Plated_Hole_D2.0mm" H 5400 4375 50  0001 C CNN
F 3 "~" H 5400 4375 50  0001 C CNN
	1    5200 4375
	0    -1   1    0   
$EndComp
Wire Wire Line
	3650 5450 3800 5450
Wire Wire Line
	3650 5350 3800 5350
Wire Wire Line
	3650 5250 3800 5250
Wire Wire Line
	3650 5150 3800 5150
Wire Wire Line
	3650 5050 3800 5050
Wire Wire Line
	3650 4950 3800 4950
Wire Wire Line
	3650 4850 3800 4850
Wire Wire Line
	3650 4750 3800 4750
$Comp
L Connector_Specialized:Test_Point TP1548
U 1 1 5AD57E20
P 3800 5450
F 0 "TP1548" V 3800 5625 50  0000 L CNN
F 1 "Test_Point" H 3858 5479 50  0001 L CNN
F 2 "TestPoint:TestPoint_Plated_Hole_D2.0mm" H 4000 5450 50  0001 C CNN
F 3 "~" H 4000 5450 50  0001 C CNN
	1    3800 5450
	0    1    -1   0   
$EndComp
$Comp
L Connector_Specialized:Test_Point TP1547
U 1 1 5AD57E26
P 3800 5350
F 0 "TP1547" V 3800 5525 50  0000 L CNN
F 1 "Test_Point" H 3858 5379 50  0001 L CNN
F 2 "TestPoint:TestPoint_Plated_Hole_D2.0mm" H 4000 5350 50  0001 C CNN
F 3 "~" H 4000 5350 50  0001 C CNN
	1    3800 5350
	0    1    -1   0   
$EndComp
$Comp
L Connector_Specialized:Test_Point TP1546
U 1 1 5AD57E2C
P 3800 5250
F 0 "TP1546" V 3800 5425 50  0000 L CNN
F 1 "Test_Point" H 3858 5279 50  0001 L CNN
F 2 "TestPoint:TestPoint_Plated_Hole_D2.0mm" H 4000 5250 50  0001 C CNN
F 3 "~" H 4000 5250 50  0001 C CNN
	1    3800 5250
	0    1    -1   0   
$EndComp
$Comp
L Connector_Specialized:Test_Point TP1545
U 1 1 5AD57E32
P 3800 5150
F 0 "TP1545" V 3800 5325 50  0000 L CNN
F 1 "Test_Point" H 3858 5179 50  0001 L CNN
F 2 "TestPoint:TestPoint_Plated_Hole_D2.0mm" H 4000 5150 50  0001 C CNN
F 3 "~" H 4000 5150 50  0001 C CNN
	1    3800 5150
	0    1    -1   0   
$EndComp
$Comp
L Connector_Specialized:Test_Point TP1544
U 1 1 5AD57E38
P 3800 5050
F 0 "TP1544" V 3800 5225 50  0000 L CNN
F 1 "Test_Point" H 3858 5079 50  0001 L CNN
F 2 "TestPoint:TestPoint_Plated_Hole_D2.0mm" H 4000 5050 50  0001 C CNN
F 3 "~" H 4000 5050 50  0001 C CNN
	1    3800 5050
	0    1    -1   0   
$EndComp
$Comp
L Connector_Specialized:Test_Point TP1543
U 1 1 5AD57E3E
P 3800 4950
F 0 "TP1543" V 3800 5125 50  0000 L CNN
F 1 "Test_Point" H 3858 4979 50  0001 L CNN
F 2 "TestPoint:TestPoint_Plated_Hole_D2.0mm" H 4000 4950 50  0001 C CNN
F 3 "~" H 4000 4950 50  0001 C CNN
	1    3800 4950
	0    1    -1   0   
$EndComp
$Comp
L Connector_Specialized:Test_Point TP1542
U 1 1 5AD57E44
P 3800 4850
F 0 "TP1542" V 3800 5025 50  0000 L CNN
F 1 "Test_Point" H 3858 4879 50  0001 L CNN
F 2 "TestPoint:TestPoint_Plated_Hole_D2.0mm" H 4000 4850 50  0001 C CNN
F 3 "~" H 4000 4850 50  0001 C CNN
	1    3800 4850
	0    1    -1   0   
$EndComp
$Comp
L Connector_Specialized:Test_Point TP1541
U 1 1 5AD57E4A
P 3800 4750
F 0 "TP1541" V 3800 4925 50  0000 L CNN
F 1 "Test_Point" H 3858 4779 50  0001 L CNN
F 2 "TestPoint:TestPoint_Plated_Hole_D2.0mm" H 4000 4750 50  0001 C CNN
F 3 "~" H 4000 4750 50  0001 C CNN
	1    3800 4750
	0    1    -1   0   
$EndComp
$Comp
L Connector_Specialized:Test_Point TP1525
U 1 1 5AD717CD
P 5200 3575
F 0 "TP1525" V 5200 3750 50  0000 L CNN
F 1 "Test_Point" H 5258 3604 50  0001 L CNN
F 2 "TestPoint:TestPoint_Plated_Hole_D2.0mm" H 5400 3575 50  0001 C CNN
F 3 "~" H 5400 3575 50  0001 C CNN
	1    5200 3575
	0    -1   -1   0   
$EndComp
$Comp
L Connector_Specialized:Test_Point TP1523
U 1 1 5AD717D3
P 5200 3475
F 0 "TP1523" V 5200 3650 50  0000 L CNN
F 1 "Test_Point" H 5258 3504 50  0001 L CNN
F 2 "TestPoint:TestPoint_Plated_Hole_D2.0mm" H 5400 3475 50  0001 C CNN
F 3 "~" H 5400 3475 50  0001 C CNN
	1    5200 3475
	0    -1   -1   0   
$EndComp
$Comp
L Connector_Specialized:Test_Point TP1521
U 1 1 5AD717D9
P 5200 3375
F 0 "TP1521" V 5200 3550 50  0000 L CNN
F 1 "Test_Point" H 5258 3404 50  0001 L CNN
F 2 "TestPoint:TestPoint_Plated_Hole_D2.0mm" H 5400 3375 50  0001 C CNN
F 3 "~" H 5400 3375 50  0001 C CNN
	1    5200 3375
	0    -1   -1   0   
$EndComp
$Comp
L Connector_Specialized:Test_Point TP1519
U 1 1 5AD717DF
P 5200 3275
F 0 "TP1519" V 5200 3450 50  0000 L CNN
F 1 "Test_Point" H 5258 3304 50  0001 L CNN
F 2 "TestPoint:TestPoint_Plated_Hole_D2.0mm" H 5400 3275 50  0001 C CNN
F 3 "~" H 5400 3275 50  0001 C CNN
	1    5200 3275
	0    -1   -1   0   
$EndComp
Wire Wire Line
	3650 2900 3750 2900
Wire Wire Line
	3650 2800 3750 2800
Wire Wire Line
	3650 2700 3750 2700
Wire Wire Line
	3650 2600 3750 2600
Wire Wire Line
	3650 2500 3750 2500
Wire Wire Line
	3650 2400 3750 2400
Wire Wire Line
	3650 4100 3750 4100
Wire Wire Line
	3650 4200 3750 4200
Wire Wire Line
	3650 2300 3750 2300
Wire Wire Line
	3650 3500 3750 3500
Wire Wire Line
	3650 3600 3750 3600
Wire Wire Line
	3650 3700 3750 3700
Wire Wire Line
	3650 3800 3750 3800
Wire Wire Line
	3650 3400 3750 3400
Wire Wire Line
	3650 3300 3750 3300
Wire Wire Line
	3650 3200 3750 3200
Wire Wire Line
	3650 3100 3750 3100
Wire Wire Line
	3650 3000 3750 3000
Wire Wire Line
	3650 3900 3750 3900
Wire Wire Line
	3650 4000 3750 4000
Wire Wire Line
	5200 2300 5350 2300
Wire Wire Line
	5200 2400 5350 2400
Wire Wire Line
	5200 2500 5350 2500
Wire Wire Line
	5200 2600 5350 2600
Wire Wire Line
	5200 2700 5350 2700
Wire Wire Line
	5200 2800 5350 2800
Wire Wire Line
	5200 2900 5350 2900
Wire Wire Line
	5200 3000 5350 3000
Wire Bus Line
	5450 2250 5450 3100
Wire Bus Line
	3550 4550 3550 5350
Wire Bus Line
	3550 2250 3550 4300
$EndSCHEMATC
