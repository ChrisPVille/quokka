EESchema Schematic File Version 4
LIBS:quokka-cache
EELAYER 26 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 3 15
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
P 5900 6150
F 0 "J301" H 5671 6141 50  0000 R CNN
F 1 "USB_B" H 5671 6050 50  0000 R CNN
F 2 "" H 6050 6100 50  0001 C CNN
F 3 "" H 6050 6100 50  0001 C CNN
	1    5900 6150
	-1   0    0    -1  
$EndComp
Text HLabel 1850 5350 0    50   Output ~ 0
uC_SCLK
Text HLabel 1850 5450 0    50   Output ~ 0
uC_MOSI
Text HLabel 1850 5550 0    50   Input ~ 0
uC_MISO
Text HLabel 1850 5650 0    50   Output ~ 0
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
Wire Wire Line
	5600 6150 4800 6150
Wire Wire Line
	5600 6250 4800 6250
Text Label 4800 6250 0    50   ~ 0
USB_N
Text Label 4800 6150 0    50   ~ 0
USB_P
$Comp
L power:GND #PWR0303
U 1 1 5AA58CA8
P 5950 6600
F 0 "#PWR0303" H 5950 6350 50  0001 C CNN
F 1 "GND" H 5955 6427 50  0000 C CNN
F 2 "" H 5950 6600 50  0001 C CNN
F 3 "" H 5950 6600 50  0001 C CNN
	1    5950 6600
	1    0    0    -1  
$EndComp
Wire Wire Line
	5900 6550 5900 6600
Wire Wire Line
	5900 6600 5950 6600
Wire Wire Line
	5950 6600 6000 6600
Wire Wire Line
	6000 6600 6000 6550
Connection ~ 5950 6600
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
Text HLabel 1850 5950 0    50   Output ~ 0
FPGA_CCLK
Text HLabel 1850 6050 0    50   Output ~ 0
FPGA_CDIN
$EndSCHEMATC
