EESchema Schematic File Version 4
LIBS:quokka-cache
EELAYER 26 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 3 14
Title ""
Date ""
Rev ""
Comp ""
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 "Quokka 6502 Microprocessor Trainer"
$EndDescr
$Comp
L MCU_ST_STM32:STM32F072CBTx U301
U 1 1 5AA35B88
P 5400 3150
F 0 "U301" H 1800 5100 50  0000 C CNN
F 1 "STM32F072CBTx" H 2000 5000 50  0000 C CNN
F 2 "Package_QFP:LQFP-48_7x7mm_P0.5mm" H 9100 4925 50  0001 R TNN
F 3 "http://www.st.com/st-web-ui/static/active/en/resource/technical/document/datasheet/DM00090510.pdf" H 5400 3150 50  0001 C CNN
	1    5400 3150
	1    0    0    -1  
$EndComp
$Comp
L Connector_Specialized:USB_B J301
U 1 1 5AA35CDE
P 5825 6650
F 0 "J301" H 5596 6641 50  0000 R CNN
F 1 "USB_B" H 5596 6550 50  0000 R CNN
F 2 "" H 5975 6600 50  0001 C CNN
F 3 "" H 5975 6600 50  0001 C CNN
	1    5825 6650
	-1   0    0    -1  
$EndComp
Text HLabel 9200 3550 2    50   Output ~ 0
uC_SCLK
Text HLabel 9200 3750 2    50   Output ~ 0
uC_MOSI
Text HLabel 9200 3650 2    50   Input ~ 0
uC_MISO
Text HLabel 9200 3450 2    50   Output ~ 0
uC_~CS
Text HLabel 1850 5750 0    50   Input ~ 0
FPGA_~INT
Text Label 9550 4150 2    50   ~ 0
USB_N
Wire Wire Line
	9200 4150 9550 4150
Wire Wire Line
	9200 4250 9550 4250
Text Label 9550 4250 2    50   ~ 0
USB_P
Text Label 4425 6750 0    50   ~ 0
USB_N
Text Label 4425 6650 0    50   ~ 0
USB_P
$Comp
L power:GND #PWR0303
U 1 1 5AA58CA8
P 5875 7100
F 0 "#PWR0303" H 5875 6850 50  0001 C CNN
F 1 "GND" H 5880 6927 50  0000 C CNN
F 2 "" H 5875 7100 50  0001 C CNN
F 3 "" H 5875 7100 50  0001 C CNN
	1    5875 7100
	1    0    0    -1  
$EndComp
Wire Wire Line
	5825 7050 5825 7100
Wire Wire Line
	5825 7100 5875 7100
Wire Wire Line
	5875 7100 5925 7100
Wire Wire Line
	5925 7100 5925 7050
Connection ~ 5875 7100
$Comp
L power:+2V5 #PWR0301
U 1 1 5AA5F4DD
P 5350 1100
F 0 "#PWR0301" H 5350 950 50  0001 C CNN
F 1 "+2V5" H 5365 1273 50  0000 C CNN
F 2 "" H 5350 1100 50  0001 C CNN
F 3 "" H 5350 1100 50  0001 C CNN
	1    5350 1100
	1    0    0    -1  
$EndComp
Wire Wire Line
	5350 1100 5350 1150
Wire Wire Line
	5200 1150 5200 1250
Wire Wire Line
	5300 1250 5300 1150
Wire Wire Line
	5200 1150 5300 1150
Connection ~ 5300 1150
Wire Wire Line
	5300 1150 5350 1150
Wire Wire Line
	5350 1150 5400 1150
Wire Wire Line
	5400 1150 5400 1250
Connection ~ 5350 1150
Wire Wire Line
	5400 1150 5500 1150
Wire Wire Line
	5500 1150 5500 1250
Connection ~ 5400 1150
$Comp
L power:GND #PWR0302
U 1 1 5AA5F8A6
P 5350 5050
F 0 "#PWR0302" H 5350 4800 50  0001 C CNN
F 1 "GND" H 5355 4877 50  0000 C CNN
F 2 "" H 5350 5050 50  0001 C CNN
F 3 "" H 5350 5050 50  0001 C CNN
	1    5350 5050
	1    0    0    -1  
$EndComp
Wire Wire Line
	5350 5050 5350 5000
Wire Wire Line
	5350 5000 5300 5000
Wire Wire Line
	5200 5000 5200 4950
Wire Wire Line
	5300 4950 5300 5000
Connection ~ 5300 5000
Wire Wire Line
	5300 5000 5200 5000
Wire Wire Line
	5400 4950 5400 5000
Wire Wire Line
	5400 5000 5350 5000
Connection ~ 5350 5000
Wire Wire Line
	5500 4950 5500 5000
Wire Wire Line
	5500 5000 5400 5000
Connection ~ 5400 5000
Text HLabel 1600 4050 0    50   Output ~ 0
FPGA_CCLK
Text HLabel 1600 4550 0    50   Output ~ 0
FPGA_CDIN
Text HLabel 1350 6300 2    50   Input ~ 0
FPGA_DONE
Text HLabel 1350 6400 2    50   Output ~ 0
FPGA_PROG_B
Text HLabel 1350 6500 2    50   Input ~ 0
FPGA_INIT_B
$Comp
L Device:L_Coupled_Small L?
U 1 1 5AC01C3F
P 4900 6700
F 0 "L?" H 4825 6925 50  0000 C CNN
F 1 "Choke" H 4900 6850 50  0000 C CNN
F 2 "" H 4900 6700 50  0001 C CNN
F 3 "~" H 4900 6700 50  0001 C CNN
	1    4900 6700
	1    0    0    -1  
$EndComp
Wire Wire Line
	4425 6750 4800 6750
Wire Wire Line
	4425 6650 4800 6650
Wire Wire Line
	5000 6750 5525 6750
Wire Wire Line
	5000 6650 5525 6650
$Comp
L Device:R R?
U 1 1 5AC07574
P 5200 6275
F 0 "R?" V 5125 6175 50  0000 L CNN
F 1 "50k" V 5200 6200 50  0000 L CNN
F 2 "" V 5130 6275 50  0001 C CNN
F 3 "~" H 5200 6275 50  0001 C CNN
	1    5200 6275
	1    0    0    -1  
$EndComp
$Comp
L Device:R R?
U 1 1 5AC078C2
P 5200 5975
F 0 "R?" V 5125 5875 50  0000 L CNN
F 1 "50k" V 5200 5900 50  0000 L CNN
F 2 "" V 5130 5975 50  0001 C CNN
F 3 "~" H 5200 5975 50  0001 C CNN
	1    5200 5975
	1    0    0    -1  
$EndComp
Wire Wire Line
	5525 6450 5425 6450
Wire Wire Line
	5425 6450 5425 5800
Wire Wire Line
	5425 5800 5200 5800
Wire Wire Line
	5200 5800 5200 5825
$Comp
L power:GND #PWR?
U 1 1 5AC0839F
P 5200 6425
F 0 "#PWR?" H 5200 6175 50  0001 C CNN
F 1 "GND" H 5275 6300 50  0000 C CNN
F 2 "" H 5200 6425 50  0001 C CNN
F 3 "" H 5200 6425 50  0001 C CNN
	1    5200 6425
	1    0    0    -1  
$EndComp
Wire Wire Line
	5200 6125 4425 6125
Connection ~ 5200 6125
Text Label 4425 6125 0    50   ~ 0
USB_DET
Wire Wire Line
	9200 4050 9550 4050
Text Label 9550 4050 2    50   ~ 0
USB_DET
$EndSCHEMATC
