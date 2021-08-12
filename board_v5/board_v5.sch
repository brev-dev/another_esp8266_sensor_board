EESchema Schematic File Version 4
EELAYER 30 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 1 1
Title ""
Date ""
Rev ""
Comp ""
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
$Comp
L Power_Supervisor:TPS3839DBZ U2
U 1 1 5F3C1462
P 6300 3450
F 0 "U2" H 6500 3600 50  0000 R CNN
F 1 "TPS3839G33DBZ" H 6800 3700 50  0000 R CNN
F 2 "Package_TO_SOT_SMD:SOT-23_Handsoldering" H 6300 3450 50  0001 C CNN
F 3 "http://www.ti.com/lit/ds/sbvs193d/sbvs193d.pdf" H 6300 3450 50  0001 C CNN
	1    6300 3450
	1    0    0    -1  
$EndComp
$Comp
L Device:CP C1
U 1 1 5F3C4EDA
P 4550 3300
F 0 "C1" H 4665 3346 50  0000 L CNN
F 1 "1uF" H 4665 3255 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric_Pad1.15x1.40mm_HandSolder" H 4588 3150 50  0001 C CNN
F 3 "~" H 4550 3300 50  0001 C CNN
	1    4550 3300
	1    0    0    -1  
$EndComp
$Comp
L power:Earth #PWR0107
U 1 1 5F3FE56B
P 5900 4300
F 0 "#PWR0107" H 5900 4050 50  0001 C CNN
F 1 "Earth" H 5900 4150 50  0001 C CNN
F 2 "" H 5900 4300 50  0001 C CNN
F 3 "~" H 5900 4300 50  0001 C CNN
	1    5900 4300
	1    0    0    -1  
$EndComp
$Comp
L Device:R R4
U 1 1 5F41C949
P 9100 3300
F 0 "R4" H 9170 3346 50  0000 L CNN
F 1 "4.7k" H 9170 3255 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" V 9030 3300 50  0001 C CNN
F 3 "~" H 9100 3300 50  0001 C CNN
	1    9100 3300
	1    0    0    -1  
$EndComp
$Comp
L Device:R R5
U 1 1 5F41DA90
P 9600 4750
F 0 "R5" H 9670 4796 50  0000 L CNN
F 1 "4.7k" H 9670 4705 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" V 9530 4750 50  0001 C CNN
F 3 "~" H 9600 4750 50  0001 C CNN
	1    9600 4750
	1    0    0    -1  
$EndComp
$Comp
L power:Earth #PWR0108
U 1 1 5F41F6D0
P 9600 4900
F 0 "#PWR0108" H 9600 4650 50  0001 C CNN
F 1 "Earth" H 9600 4750 50  0001 C CNN
F 2 "" H 9600 4900 50  0001 C CNN
F 3 "~" H 9600 4900 50  0001 C CNN
	1    9600 4900
	1    0    0    -1  
$EndComp
$Comp
L Diode:1N4148 D3
U 1 1 5F422102
P 10550 4450
F 0 "D3" V 10450 4250 50  0000 L CNN
F 1 "1N4148" V 10550 4100 50  0000 L CNN
F 2 "Diode_SMD:D_SOD-323_HandSoldering" H 10550 4275 50  0001 C CNN
F 3 "https://assets.nexperia.com/documents/data-sheet/1N4148_1N4448.pdf" H 10550 4450 50  0001 C CNN
	1    10550 4450
	0    1    1    0   
$EndComp
Wire Wire Line
	10550 4300 10550 4200
Wire Wire Line
	10550 4200 10750 4200
Wire Wire Line
	10550 4600 10550 4700
$Comp
L Device:R R6
U 1 1 5F426C0B
P 9950 4750
F 0 "R6" H 10020 4796 50  0000 L CNN
F 1 "10k" H 10020 4705 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" V 9880 4750 50  0001 C CNN
F 3 "~" H 9950 4750 50  0001 C CNN
	1    9950 4750
	1    0    0    -1  
$EndComp
$Comp
L power:Earth #PWR0109
U 1 1 5F426EF5
P 9950 4900
F 0 "#PWR0109" H 9950 4650 50  0001 C CNN
F 1 "Earth" H 9950 4750 50  0001 C CNN
F 2 "" H 9950 4900 50  0001 C CNN
F 3 "~" H 9950 4900 50  0001 C CNN
	1    9950 4900
	1    0    0    -1  
$EndComp
$Comp
L My_Library:XC6203E332PR_NB VR1
U 1 1 5F4DD933
P 4900 3200
F 0 "VR1" H 4850 3500 50  0000 L CNN
F 1 "XC6203P332PR_NB" H 4550 3400 50  0000 L CNN
F 2 "Package_TO_SOT_SMD:SOT-89-3_Handsoldering" H 4900 3200 50  0001 C CNN
F 3 "http://www.farnell.com/datasheets/578808.pdf" H 4900 3200 50  0001 C CNN
	1    4900 3200
	1    0    0    -1  
$EndComp
Wire Wire Line
	5200 3150 5400 3150
$Comp
L power:Earth #PWR0111
U 1 1 5F4E788C
P 4900 3450
F 0 "#PWR0111" H 4900 3200 50  0001 C CNN
F 1 "Earth" H 4900 3300 50  0001 C CNN
F 2 "" H 4900 3450 50  0001 C CNN
F 3 "~" H 4900 3450 50  0001 C CNN
	1    4900 3450
	1    0    0    -1  
$EndComp
$Comp
L Device:CP C2
U 1 1 5F54A907
P 5400 3300
F 0 "C2" H 5515 3346 50  0000 L CNN
F 1 "1uF" H 5515 3255 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric_Pad1.15x1.40mm_HandSolder" H 5438 3150 50  0001 C CNN
F 3 "~" H 5400 3300 50  0001 C CNN
	1    5400 3300
	1    0    0    -1  
$EndComp
Connection ~ 5400 3150
$Comp
L power:Earth #PWR0116
U 1 1 5F54BDD2
P 5400 3450
F 0 "#PWR0116" H 5400 3200 50  0001 C CNN
F 1 "Earth" H 5400 3300 50  0001 C CNN
F 2 "" H 5400 3450 50  0001 C CNN
F 3 "~" H 5400 3450 50  0001 C CNN
	1    5400 3450
	1    0    0    -1  
$EndComp
$Comp
L Device:CP C3
U 1 1 5F54CBAA
P 5850 3300
F 0 "C3" H 5968 3346 50  0000 L CNN
F 1 "220uF" H 5968 3255 50  0000 L CNN
F 2 "Capacitor_SMD:CP_Elec_6.3x5.4" H 5888 3150 50  0001 C CNN
F 3 "~" H 5850 3300 50  0001 C CNN
	1    5850 3300
	1    0    0    -1  
$EndComp
$Comp
L power:Earth #PWR0117
U 1 1 5F55254D
P 5850 3450
F 0 "#PWR0117" H 5850 3200 50  0001 C CNN
F 1 "Earth" H 5850 3300 50  0001 C CNN
F 2 "" H 5850 3450 50  0001 C CNN
F 3 "~" H 5850 3450 50  0001 C CNN
	1    5850 3450
	1    0    0    -1  
$EndComp
Wire Wire Line
	10900 4400 10900 4200
Connection ~ 10900 4200
$Comp
L Device:C C4
U 1 1 5F63F452
P 8300 3100
F 0 "C4" H 8415 3146 50  0000 L CNN
F 1 ".1uF" H 8415 3055 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric_Pad1.15x1.40mm_HandSolder" H 8338 2950 50  0001 C CNN
F 3 "~" H 8300 3100 50  0001 C CNN
	1    8300 3100
	1    0    0    -1  
$EndComp
$Comp
L power:Earth #PWR0114
U 1 1 5F63FD23
P 8300 3250
F 0 "#PWR0114" H 8300 3000 50  0001 C CNN
F 1 "Earth" H 8300 3100 50  0001 C CNN
F 2 "" H 8300 3250 50  0001 C CNN
F 3 "~" H 8300 3250 50  0001 C CNN
	1    8300 3250
	1    0    0    -1  
$EndComp
Connection ~ 3450 2850
Connection ~ 2900 4650
Connection ~ 2600 4650
Wire Wire Line
	2600 4650 2900 4650
$Comp
L power:Earth #PWR0105
U 1 1 5F3F11F6
P 3450 3750
F 0 "#PWR0105" H 3450 3500 50  0001 C CNN
F 1 "Earth" H 3450 3600 50  0001 C CNN
F 2 "" H 3450 3750 50  0001 C CNN
F 3 "~" H 3450 3750 50  0001 C CNN
	1    3450 3750
	1    0    0    -1  
$EndComp
$Comp
L Device:R R1
U 1 1 5F391B37
P 2900 3600
F 0 "R1" H 2970 3646 50  0000 L CNN
F 1 "10k" H 2970 3555 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" V 2830 3600 50  0001 C CNN
F 3 "~" H 2900 3600 50  0001 C CNN
	1    2900 3600
	1    0    0    -1  
$EndComp
Wire Wire Line
	3300 3250 2900 3250
Wire Wire Line
	2900 3250 2900 3450
Wire Wire Line
	2800 3250 2900 3250
Connection ~ 2900 3250
Wire Wire Line
	2300 3250 2400 3250
$Comp
L Device:R R2
U 1 1 5F39942C
P 2300 3400
F 0 "R2" H 2370 3446 50  0000 L CNN
F 1 "10k" H 2370 3355 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" V 2230 3400 50  0001 C CNN
F 3 "~" H 2300 3400 50  0001 C CNN
	1    2300 3400
	1    0    0    -1  
$EndComp
Wire Wire Line
	2300 3550 2600 3550
$Comp
L Diode:1N4148 D1
U 1 1 5F3A9689
P 2900 4500
F 0 "D1" V 2854 4580 50  0000 L CNN
F 1 "1N4148" V 2945 4580 50  0000 L CNN
F 2 "Diode_SMD:D_SOD-323_HandSoldering" H 2900 4325 50  0001 C CNN
F 3 "https://assets.nexperia.com/documents/data-sheet/1N4148_1N4448.pdf" H 2900 4500 50  0001 C CNN
	1    2900 4500
	0    1    1    0   
$EndComp
Wire Wire Line
	2600 4650 2600 3950
Wire Wire Line
	2100 4650 2600 4650
Wire Wire Line
	2100 4650 2100 4200
Wire Wire Line
	3450 3450 3450 2850
$Comp
L Device:R R3
U 1 1 5F3999B9
P 3450 3600
F 0 "R3" H 3520 3646 50  0000 L CNN
F 1 "100k" H 3520 3555 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" V 3380 3600 50  0001 C CNN
F 3 "~" H 3450 3600 50  0001 C CNN
	1    3450 3600
	1    0    0    -1  
$EndComp
$Comp
L Connector_Generic:Conn_02x05_Odd_Even J1
U 1 1 5F6E2C51
P 7100 3900
F 0 "J1" H 7150 4317 50  0000 C CNN
F 1 "Conn_02x05_Odd_Even" H 7150 4226 50  0000 C CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_2x05_P2.54mm_Vertical" H 7100 3900 50  0001 C CNN
F 3 "~" H 7100 3900 50  0001 C CNN
	1    7100 3900
	1    0    0    -1  
$EndComp
$Comp
L Connector_Generic:Conn_02x06_Odd_Even J2
U 1 1 5F6E546D
P 10400 3450
F 0 "J2" H 10450 3867 50  0000 C CNN
F 1 "Conn_02x05_Odd_Even" H 10450 3776 50  0000 C CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_2x06_P2.54mm_Vertical" H 10400 3450 50  0001 C CNN
F 3 "~" H 10400 3450 50  0001 C CNN
	1    10400 3450
	1    0    0    -1  
$EndComp
$Comp
L power:Earth #PWR0101
U 1 1 5F6F83EA
P 8600 5000
F 0 "#PWR0101" H 8600 4750 50  0001 C CNN
F 1 "Earth" H 8600 4850 50  0001 C CNN
F 2 "" H 8600 5000 50  0001 C CNN
F 3 "~" H 8600 5000 50  0001 C CNN
	1    8600 5000
	1    0    0    -1  
$EndComp
$Comp
L power:Earth #PWR0102
U 1 1 5F704BC2
P 6900 4100
F 0 "#PWR0102" H 6900 3850 50  0001 C CNN
F 1 "Earth" H 6900 3950 50  0001 C CNN
F 2 "" H 6900 4100 50  0001 C CNN
F 3 "~" H 6900 4100 50  0001 C CNN
	1    6900 4100
	1    0    0    -1  
$EndComp
Wire Wire Line
	9250 4500 9250 5200
Wire Wire Line
	9200 4300 9300 4300
Wire Wire Line
	9300 4300 9300 5250
Wire Wire Line
	9300 5250 9200 5250
Wire Wire Line
	9200 4400 9350 4400
Wire Wire Line
	9200 3800 9800 3800
Wire Wire Line
	9850 3800 9850 3250
Wire Wire Line
	9850 3250 10200 3250
Wire Wire Line
	9900 4200 9900 3350
Wire Wire Line
	9900 3350 10200 3350
Wire Wire Line
	9600 4600 9600 3550
Wire Wire Line
	10700 3550 10700 3650
$Comp
L power:Earth #PWR0112
U 1 1 5F7590BB
P 10750 3900
F 0 "#PWR0112" H 10750 3650 50  0001 C CNN
F 1 "Earth" H 10750 3750 50  0001 C CNN
F 2 "" H 10750 3900 50  0001 C CNN
F 3 "~" H 10750 3900 50  0001 C CNN
	1    10750 3900
	1    0    0    -1  
$EndComp
Connection ~ 10700 3650
Wire Wire Line
	8000 3700 7400 3700
Wire Wire Line
	7900 3800 7400 3800
Wire Wire Line
	7650 3900 7400 3900
Wire Wire Line
	7550 4100 7400 4100
Wire Wire Line
	7600 5350 7600 4000
Wire Wire Line
	7600 4000 7400 4000
Wire Wire Line
	6900 4000 6900 4100
Connection ~ 6900 4100
Wire Wire Line
	8000 4100 7800 4100
Wire Wire Line
	7800 4100 7800 3600
Wire Wire Line
	7800 3600 6900 3600
Wire Wire Line
	6900 3600 6900 3700
Wire Wire Line
	6750 5150 6750 3800
Wire Wire Line
	6750 3800 6900 3800
Wire Wire Line
	6800 5250 6800 3900
Wire Wire Line
	6800 3900 6900 3900
$Comp
L power:Earth #PWR0115
U 1 1 5F84308B
P 6300 3750
F 0 "#PWR0115" H 6300 3500 50  0001 C CNN
F 1 "Earth" H 6300 3600 50  0001 C CNN
F 2 "" H 6300 3750 50  0001 C CNN
F 3 "~" H 6300 3750 50  0001 C CNN
	1    6300 3750
	1    0    0    -1  
$EndComp
Wire Wire Line
	6700 4900 6700 3600
Wire Wire Line
	6700 3600 6900 3600
Connection ~ 6900 3600
Connection ~ 9600 4600
Wire Wire Line
	6300 3150 5850 3150
Connection ~ 6300 3150
Connection ~ 5850 3150
Wire Wire Line
	9200 4500 9250 4500
Wire Wire Line
	10200 4400 10200 4900
Wire Wire Line
	9950 4600 9950 4400
Wire Wire Line
	9950 4400 10200 4400
Connection ~ 10900 4700
Wire Wire Line
	10550 4700 10750 4700
$Comp
L power:Earth #PWR0110
U 1 1 5F44305D
P 10900 5100
F 0 "#PWR0110" H 10900 4850 50  0001 C CNN
F 1 "Earth" H 10900 4950 50  0001 C CNN
F 2 "" H 10900 5100 50  0001 C CNN
F 3 "~" H 10900 5100 50  0001 C CNN
	1    10900 5100
	1    0    0    -1  
$EndComp
Wire Wire Line
	10600 4900 10200 4900
$Comp
L My_Library:AO3400 Q4
U 1 1 5F4FF921
P 10800 4900
F 0 "Q4" H 11004 4946 50  0000 L CNN
F 1 "AO3400" H 11004 4855 50  0000 L CNN
F 2 "Package_TO_SOT_SMD:SOT-23_Handsoldering" H 11000 4825 50  0001 L CIN
F 3 "https://www.fairchildsemi.com/datasheets/BS/BSS138.pdf" H 10800 4900 50  0001 L CNN
	1    10800 4900
	1    0    0    -1  
$EndComp
Wire Wire Line
	7650 3900 7650 5200
Wire Wire Line
	2100 4200 1950 4200
Wire Wire Line
	2300 3250 2100 3250
Wire Wire Line
	2100 3250 2100 4100
Connection ~ 2300 3250
$Comp
L Mechanical:MountingHole H1
U 1 1 5FAD42C7
P 1700 2050
F 0 "H1" H 1800 2096 50  0000 L CNN
F 1 "MountingHole" H 1800 2005 50  0000 L CNN
F 2 "MountingHole:MountingHole_2.5mm" H 1700 2050 50  0001 C CNN
F 3 "~" H 1700 2050 50  0001 C CNN
	1    1700 2050
	1    0    0    -1  
$EndComp
$Comp
L Mechanical:MountingHole H2
U 1 1 5FADC048
P 1700 2250
F 0 "H2" H 1800 2296 50  0000 L CNN
F 1 "MountingHole" H 1800 2205 50  0000 L CNN
F 2 "MountingHole:MountingHole_2.5mm" H 1700 2250 50  0001 C CNN
F 3 "~" H 1700 2250 50  0001 C CNN
	1    1700 2250
	1    0    0    -1  
$EndComp
$Comp
L Mechanical:MountingHole H3
U 1 1 5FADC169
P 1700 2450
F 0 "H3" H 1800 2496 50  0000 L CNN
F 1 "MountingHole" H 1800 2405 50  0000 L CNN
F 2 "MountingHole:MountingHole_2.5mm" H 1700 2450 50  0001 C CNN
F 3 "~" H 1700 2450 50  0001 C CNN
	1    1700 2450
	1    0    0    -1  
$EndComp
$Comp
L Transistor_FET:TSM2301ACX Q3
U 1 1 5FB11B1C
P 3700 3050
F 0 "Q3" V 3949 3050 50  0000 C CNN
F 1 "TSM2301ACX" V 4040 3050 50  0000 C CNN
F 2 "Package_TO_SOT_SMD:SOT-23_Handsoldering" H 3900 2975 50  0001 L CIN
F 3 "https://www.taiwansemi.com/products/datasheet/TSM2301A_C15.pdf" H 3700 3050 50  0001 L CNN
	1    3700 3050
	0    -1   1    0   
$EndComp
$Comp
L Transistor_FET:TSM2301ACX Q1
U 1 1 5FB2852B
P 2600 3350
F 0 "Q1" V 2942 3350 50  0000 C CNN
F 1 "TSM2301ACX" V 2851 3350 50  0000 C CNN
F 2 "Package_TO_SOT_SMD:SOT-23_Handsoldering" H 2800 3275 50  0001 L CIN
F 3 "https://www.taiwansemi.com/products/datasheet/TSM2301A_C15.pdf" H 2600 3350 50  0001 L CNN
	1    2600 3350
	0    1    -1   0   
$EndComp
Wire Wire Line
	3450 2850 3600 2850
Connection ~ 2600 3550
Wire Wire Line
	9600 3550 10200 3550
Wire Wire Line
	10200 3450 9200 3450
Connection ~ 9100 3450
Wire Wire Line
	10800 3450 10700 3450
Wire Wire Line
	9200 3900 9400 3900
Wire Wire Line
	10850 3350 10850 3850
Wire Wire Line
	10700 3350 10850 3350
$Comp
L Switch:SW_Push SW4
U 1 1 5F4D7E73
P 8900 3450
F 0 "SW4" H 8900 3735 50  0000 C CNN
F 1 "SW_Flash" H 8900 3644 50  0000 C CNN
F 2 "my library:SW_PUSH_6mm_THT_2pin_V2" H 8900 3650 50  0001 C CNN
F 3 "~" H 8900 3650 50  0001 C CNN
	1    8900 3450
	1    0    0    -1  
$EndComp
$Comp
L Switch:SW_Push SW3
U 1 1 5F4D88AB
P 7800 3200
F 0 "SW3" H 7800 3485 50  0000 C CNN
F 1 "SW_RST" H 7800 3394 50  0000 C CNN
F 2 "my library:SW_PUSH_6mm_THT_2pin_V2" H 7800 3400 50  0001 C CNN
F 3 "~" H 7800 3400 50  0001 C CNN
	1    7800 3200
	1    0    0    -1  
$EndComp
Wire Wire Line
	9950 3900 9950 3800
Wire Wire Line
	9950 3800 10800 3800
Wire Wire Line
	10800 3800 10800 3450
$Comp
L power:Earth #PWR0118
U 1 1 5F504737
P 10400 4200
F 0 "#PWR0118" H 10400 3950 50  0001 C CNN
F 1 "Earth" H 10400 4050 50  0001 C CNN
F 2 "" H 10400 4200 50  0001 C CNN
F 3 "~" H 10400 4200 50  0001 C CNN
	1    10400 4200
	1    0    0    -1  
$EndComp
$Comp
L power:Earth #PWR0119
U 1 1 5F549205
P 8700 3450
F 0 "#PWR0119" H 8700 3200 50  0001 C CNN
F 1 "Earth" H 8700 3300 50  0001 C CNN
F 2 "" H 8700 3450 50  0001 C CNN
F 3 "~" H 8700 3450 50  0001 C CNN
	1    8700 3450
	1    0    0    -1  
$EndComp
Connection ~ 7550 2950
Connection ~ 8300 2950
Wire Wire Line
	8300 2950 8600 2950
Connection ~ 8600 2950
Wire Wire Line
	8600 2950 9100 2950
Wire Wire Line
	9100 3150 9100 2950
Connection ~ 9100 2950
Wire Wire Line
	9100 2950 9400 2950
Wire Wire Line
	9400 2950 9400 3650
Wire Wire Line
	8600 2950 8600 3500
$Comp
L power:Earth #PWR0120
U 1 1 5F56F682
P 7600 3200
F 0 "#PWR0120" H 7600 2950 50  0001 C CNN
F 1 "Earth" H 7600 3050 50  0001 C CNN
F 2 "" H 7600 3200 50  0001 C CNN
F 3 "~" H 7600 3200 50  0001 C CNN
	1    7600 3200
	1    0    0    -1  
$EndComp
$Comp
L Connector:AudioJack4 J5
U 1 1 5F4517BD
P 5650 4400
F 0 "J5" H 5607 4725 50  0000 C CNN
F 1 "Moisture" H 5607 4634 50  0000 C CNN
F 2 "my library:Jack_3.5mm_PJ313e_NB" H 5650 4400 50  0001 C CNN
F 3 "~" H 5650 4400 50  0001 C CNN
	1    5650 4400
	1    0    0    -1  
$EndComp
NoConn ~ 5850 4400
Wire Wire Line
	5900 4300 5850 4300
$Comp
L power:Earth #PWR0106
U 1 1 5F3F831B
P 6300 5200
F 0 "#PWR0106" H 6300 4950 50  0001 C CNN
F 1 "Earth" H 6300 5050 50  0001 C CNN
F 2 "" H 6300 5200 50  0001 C CNN
F 3 "~" H 6300 5200 50  0001 C CNN
	1    6300 5200
	1    0    0    -1  
$EndComp
$Comp
L Device:R R8
U 1 1 5F3F6606
P 6300 5050
F 0 "R8" H 6370 5096 50  0000 L CNN
F 1 "200k" H 6370 5005 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" V 6230 5050 50  0001 C CNN
F 3 "~" H 6300 5050 50  0001 C CNN
	1    6300 5050
	1    0    0    -1  
$EndComp
$Comp
L Device:R R7
U 1 1 5F399F9D
P 6100 4600
F 0 "R7" V 6300 4550 50  0000 L CNN
F 1 "470k" V 6200 4500 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" V 6030 4600 50  0001 C CNN
F 3 "~" H 6100 4600 50  0001 C CNN
	1    6100 4600
	0    1    1    0   
$EndComp
$Comp
L Device:LED D4
U 1 1 5F4B163C
P 3150 3950
F 0 "D4" H 3100 3850 50  0000 L CNN
F 1 "LED_W" H 3050 3750 50  0000 L CNN
F 2 "LED_SMD:LED_0805_2012Metric_Pad1.15x1.40mm_HandSolder" H 3150 3950 50  0001 C CNN
F 3 "~" H 3150 3950 50  0001 C CNN
	1    3150 3950
	-1   0    0    1   
$EndComp
$Comp
L Connector_Generic:Conn_01x06 J10
U 1 1 5F4FBC3A
P 9950 5350
F 0 "J10" H 10030 5342 50  0000 L CNN
F 1 "BME280" H 10030 5251 50  0000 L CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x06_P2.54mm_Vertical" H 9950 5350 50  0001 C CNN
F 3 "~" H 9950 5350 50  0001 C CNN
	1    9950 5350
	1    0    0    -1  
$EndComp
$Comp
L power:Earth #PWR0122
U 1 1 5F5618EE
P 9650 5250
F 0 "#PWR0122" H 9650 5000 50  0001 C CNN
F 1 "Earth" H 9650 5100 50  0001 C CNN
F 2 "" H 9650 5250 50  0001 C CNN
F 3 "~" H 9650 5250 50  0001 C CNN
	1    9650 5250
	1    0    0    -1  
$EndComp
Wire Wire Line
	9750 5250 9650 5250
Wire Wire Line
	9350 4400 9350 5350
Wire Wire Line
	9750 3650 10200 3650
$Comp
L Switch:SW_SPDT SW2
U 1 1 5F454BC7
P 10200 4100
F 0 "SW2" H 10200 4385 50  0000 C CNN
F 1 "Mode" H 10200 4294 50  0000 C CNN
F 2 "my library:SS-12F23" H 10200 4100 50  0001 C CNN
F 3 "~" H 10200 4100 50  0001 C CNN
	1    10200 4100
	1    0    0    -1  
$EndComp
Wire Wire Line
	4400 2850 4400 3150
Wire Wire Line
	4600 3150 4550 3150
Connection ~ 4400 3150
Wire Wire Line
	4400 3150 4400 3250
Wire Wire Line
	4350 3250 4400 3250
Wire Wire Line
	3900 3150 3950 3150
Connection ~ 3900 3150
Wire Wire Line
	3700 2850 3900 2850
Connection ~ 3700 2850
$Comp
L Connector_Generic:Conn_01x03 J4
U 1 1 5F4CF73D
P 11100 4500
F 0 "J4" H 11180 4542 50  0000 L CNN
F 1 "Motor" H 11180 4451 50  0000 L CNN
F 2 "my library:DC002_C12568" H 11100 4500 50  0001 C CNN
F 3 "~" H 11100 4500 50  0001 C CNN
	1    11100 4500
	1    0    0    -1  
$EndComp
Wire Wire Line
	10900 4500 10900 4600
Wire Wire Line
	10900 4600 10900 4700
Connection ~ 10900 4600
$Comp
L Device:R R9
U 1 1 5F4B0F35
P 3000 4100
F 0 "R9" H 3070 4146 50  0000 L CNN
F 1 "300R" H 3070 4055 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" V 2930 4100 50  0001 C CNN
F 3 "~" H 3000 4100 50  0001 C CNN
	1    3000 4100
	1    0    0    -1  
$EndComp
Connection ~ 2900 3750
Wire Wire Line
	10200 3650 10200 3750
Connection ~ 10200 3650
$Comp
L Device:R R11
U 1 1 5F519AF5
P 10550 4000
F 0 "R11" H 10620 4046 50  0000 L CNN
F 1 "10k" H 10620 3955 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" V 10480 4000 50  0001 C CNN
F 3 "~" H 10550 4000 50  0001 C CNN
	1    10550 4000
	0    1    1    0   
$EndComp
Wire Wire Line
	10700 3900 10700 4000
Wire Wire Line
	10200 3900 10700 3900
$Comp
L Device:R R13
U 1 1 5F560AF8
P 1800 7050
F 0 "R13" H 1870 7096 50  0000 L CNN
F 1 "1k" H 1870 7005 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" V 1730 7050 50  0001 C CNN
F 3 "~" H 1800 7050 50  0001 C CNN
	1    1800 7050
	1    0    0    -1  
$EndComp
$Comp
L Device:R R15
U 1 1 5F560D70
P 3600 7100
F 0 "R15" H 3670 7146 50  0000 L CNN
F 1 "1k" H 3670 7055 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" V 3530 7100 50  0001 C CNN
F 3 "~" H 3600 7100 50  0001 C CNN
	1    3600 7100
	1    0    0    -1  
$EndComp
$Comp
L Device:R R14
U 1 1 5F561148
P 3400 7100
F 0 "R14" H 3470 7146 50  0000 L CNN
F 1 "1.2k" H 3470 7055 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" V 3330 7100 50  0001 C CNN
F 3 "~" H 3400 7100 50  0001 C CNN
	1    3400 7100
	-1   0    0    1   
$EndComp
$Comp
L Device:R R16
U 1 1 5F56165B
P 5800 6350
F 0 "R16" H 5870 6396 50  0000 L CNN
F 1 "100" H 5870 6305 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" V 5730 6350 50  0001 C CNN
F 3 "~" H 5800 6350 50  0001 C CNN
	1    5800 6350
	0    1    1    0   
$EndComp
$Comp
L Device:C C5
U 1 1 5F561A43
P 2000 6650
F 0 "C5" H 2115 6696 50  0000 L CNN
F 1 ".1uF" H 2115 6605 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric_Pad1.15x1.40mm_HandSolder" H 2038 6500 50  0001 C CNN
F 3 "~" H 2000 6650 50  0001 C CNN
	1    2000 6650
	1    0    0    -1  
$EndComp
$Comp
L Device:C C6
U 1 1 5F562441
P 5400 6350
F 0 "C6" H 5515 6396 50  0000 L CNN
F 1 ".1uF" H 5515 6305 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric_Pad1.15x1.40mm_HandSolder" H 5438 6200 50  0001 C CNN
F 3 "~" H 5400 6350 50  0001 C CNN
	1    5400 6350
	1    0    0    -1  
$EndComp
$Comp
L Device:C C7
U 1 1 5F562B06
P 6050 6650
F 0 "C7" H 6165 6696 50  0000 L CNN
F 1 "10uF" H 6165 6605 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric_Pad1.15x1.40mm_HandSolder" H 6088 6500 50  0001 C CNN
F 3 "~" H 6050 6650 50  0001 C CNN
	1    6050 6650
	1    0    0    -1  
$EndComp
$Comp
L KiCadCustomLibraries:TP4056 U4
U 1 1 5F56D898
P 2700 6850
F 0 "U4" H 2700 7547 60  0000 C CNN
F 1 "TP4056" H 2700 7441 60  0000 C CNN
F 2 "my library:TP4056_SOIC-8" H 2700 6850 60  0001 C CNN
F 3 "" H 2700 6850 60  0001 C CNN
	1    2700 6850
	1    0    0    -1  
$EndComp
Wire Wire Line
	3200 6850 3250 6850
Wire Wire Line
	3250 6850 3250 7400
Wire Wire Line
	3250 7400 2950 7400
$Comp
L power:Earth #PWR0123
U 1 1 5F59DE9A
P 2950 7400
F 0 "#PWR0123" H 2950 7150 50  0001 C CNN
F 1 "Earth" H 2950 7250 50  0001 C CNN
F 2 "" H 2950 7400 50  0001 C CNN
F 3 "~" H 2950 7400 50  0001 C CNN
	1    2950 7400
	1    0    0    -1  
$EndComp
Connection ~ 2950 7400
Wire Wire Line
	2950 7400 2700 7400
Wire Wire Line
	2200 6500 2200 6400
Connection ~ 2200 6500
Wire Wire Line
	2200 6500 2000 6500
Connection ~ 2000 6500
$Comp
L power:Earth #PWR0124
U 1 1 5F5C80F8
P 1400 7650
F 0 "#PWR0124" H 1400 7400 50  0001 C CNN
F 1 "Earth" H 1400 7500 50  0001 C CNN
F 2 "" H 1400 7650 50  0001 C CNN
F 3 "~" H 1400 7650 50  0001 C CNN
	1    1400 7650
	1    0    0    -1  
$EndComp
$Comp
L Device:LED D6
U 1 1 5F5D3678
P 1800 6750
F 0 "D6" V 1747 6830 50  0000 L CNN
F 1 "LED_R" V 1838 6830 50  0000 L CNN
F 2 "LED_SMD:LED_0805_2012Metric_Pad1.15x1.40mm_HandSolder" H 1800 6750 50  0001 C CNN
F 3 "~" H 1800 6750 50  0001 C CNN
	1    1800 6750
	0    -1   -1   0   
$EndComp
Wire Wire Line
	1800 7200 2150 7200
Wire Wire Line
	2150 7200 2150 6850
Wire Wire Line
	2150 6850 2200 6850
$Comp
L Device:LED D5
U 1 1 5F631EEF
P 1500 6750
F 0 "D5" V 1447 6830 50  0000 L CNN
F 1 "LED_G" V 1538 6830 50  0000 L CNN
F 2 "LED_SMD:LED_0805_2012Metric_Pad1.15x1.40mm_HandSolder" H 1500 6750 50  0001 C CNN
F 3 "~" H 1500 6750 50  0001 C CNN
	1    1500 6750
	0    -1   -1   0   
$EndComp
$Comp
L Device:R R12
U 1 1 5F63267A
P 1500 7050
F 0 "R12" H 1570 7096 50  0000 L CNN
F 1 "1k" H 1570 7005 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" V 1430 7050 50  0001 C CNN
F 3 "~" H 1500 7050 50  0001 C CNN
	1    1500 7050
	1    0    0    -1  
$EndComp
Wire Wire Line
	1800 6500 1800 6600
Connection ~ 1800 6500
Wire Wire Line
	1800 6500 1900 6500
Wire Wire Line
	1500 6500 1500 6600
Wire Wire Line
	1500 6500 1800 6500
Wire Wire Line
	1500 7200 1500 7250
Wire Wire Line
	1500 7250 2200 7250
Wire Wire Line
	2200 7250 2200 6950
$Comp
L power:Earth #PWR0125
U 1 1 5F655EB5
P 2000 6800
F 0 "#PWR0125" H 2000 6550 50  0001 C CNN
F 1 "Earth" H 2000 6650 50  0001 C CNN
F 2 "" H 2000 6800 50  0001 C CNN
F 3 "~" H 2000 6800 50  0001 C CNN
	1    2000 6800
	1    0    0    -1  
$EndComp
$Comp
L power:Earth #PWR0126
U 1 1 5F6700A0
P 3400 7250
F 0 "#PWR0126" H 3400 7000 50  0001 C CNN
F 1 "Earth" H 3400 7100 50  0001 C CNN
F 2 "" H 3400 7250 50  0001 C CNN
F 3 "~" H 3400 7250 50  0001 C CNN
	1    3400 7250
	1    0    0    -1  
$EndComp
Wire Wire Line
	5950 6350 6050 6350
Wire Wire Line
	6050 6350 6050 6000
Wire Wire Line
	6050 6000 6250 6000
Connection ~ 6050 6350
Wire Wire Line
	6050 6350 6050 6500
Wire Wire Line
	5250 6200 5400 6200
Connection ~ 5400 6200
Wire Wire Line
	5400 6200 5650 6200
Wire Wire Line
	5650 6200 5650 6350
Wire Wire Line
	6050 7200 6250 7200
Wire Wire Line
	6050 7200 5850 7200
Wire Wire Line
	5850 7200 5850 7300
Connection ~ 6050 7200
$Comp
L power:Earth #PWR0127
U 1 1 5F72FFD2
P 5850 7300
F 0 "#PWR0127" H 5850 7050 50  0001 C CNN
F 1 "Earth" H 5850 7150 50  0001 C CNN
F 2 "" H 5850 7300 50  0001 C CNN
F 3 "~" H 5850 7300 50  0001 C CNN
	1    5850 7300
	1    0    0    -1  
$EndComp
Wire Wire Line
	6050 6800 6050 7200
Connection ~ 6050 6000
$Comp
L My_Library:FS8205 T1
U 1 1 5F77FACF
P 4000 7350
F 0 "T1" V 4151 7800 50  0000 C CNN
F 1 "FS8205" V 4242 7800 50  0000 C CNN
F 2 "Package_TO_SOT_SMD:SOT-23-6_Handsoldering" H 4000 7350 50  0001 C CNN
F 3 "" H 4000 7350 50  0001 C CNN
	1    4000 7350
	0    1    1    0   
$EndComp
Connection ~ 5400 6950
Wire Wire Line
	4100 7350 3600 7350
Wire Wire Line
	3200 6400 3350 6400
Wire Wire Line
	5400 6500 5400 6650
NoConn ~ 5050 6500
Wire Wire Line
	5250 6200 5250 6800
Wire Wire Line
	5250 6800 5050 6800
Wire Wire Line
	5050 6200 5150 6200
Wire Wire Line
	5150 6200 5150 6650
Wire Wire Line
	5150 6650 5400 6650
Connection ~ 5400 6650
Wire Wire Line
	5400 6650 5400 6950
Wire Wire Line
	3600 6950 3600 6800
Wire Wire Line
	3600 6800 3850 6800
$Comp
L power:Earth #PWR0128
U 1 1 5F90C60D
P 3600 7450
F 0 "#PWR0128" H 3600 7200 50  0001 C CNN
F 1 "Earth" H 3600 7300 50  0001 C CNN
F 2 "" H 3600 7450 50  0001 C CNN
F 3 "~" H 3600 7450 50  0001 C CNN
	1    3600 7450
	1    0    0    -1  
$EndComp
$Comp
L My_Library:DW01A IC1
U 1 1 5F813B59
P 4450 6500
F 0 "IC1" H 4450 5933 50  0000 C CNN
F 1 "DW01" H 4450 6024 50  0000 C CNN
F 2 "Package_TO_SOT_SMD:SOT-23-6_Handsoldering" H 4450 6500 50  0001 L BNN
F 3 "DW01" H 4450 6500 50  0001 L BNN
F 4 "C351410" H 4450 6500 50  0001 L BNN "Field4"
F 5 "DW01" H 4450 6500 50  0001 L BNN "Field5"
	1    4450 6500
	-1   0    0    1   
$EndComp
Wire Wire Line
	3600 7450 3600 7350
Connection ~ 3600 7350
Wire Wire Line
	3600 7350 3600 7250
Wire Wire Line
	4600 7050 4600 6950
Wire Wire Line
	4600 6950 3700 6950
Wire Wire Line
	3700 6950 3700 6200
Wire Wire Line
	3700 6200 3850 6200
Wire Wire Line
	3800 7050 3800 6500
Wire Wire Line
	3800 6500 3850 6500
Wire Wire Line
	3800 7050 4300 7050
Wire Wire Line
	4800 7350 5400 7350
Wire Wire Line
	5400 6950 5400 7350
Wire Wire Line
	3350 6000 6050 6000
Wire Wire Line
	3200 6950 3400 6950
Wire Wire Line
	3350 6400 3350 6000
$Comp
L Mechanical:MountingHole_Pad H5
U 1 1 5FAE5A1B
P 1050 5650
F 0 "H5" H 1150 5699 50  0000 L CNN
F 1 "IN+" H 1150 5608 50  0000 L CNN
F 2 "my library:TP4056_1pad_sm" H 1050 5650 50  0001 C CNN
F 3 "~" H 1050 5650 50  0001 C CNN
	1    1050 5650
	1    0    0    -1  
$EndComp
$Comp
L Mechanical:MountingHole_Pad H6
U 1 1 5FAF7254
P 1250 7550
F 0 "H6" H 1350 7599 50  0000 L CNN
F 1 "IN-" H 1350 7508 50  0000 L CNN
F 2 "my library:TP4056_1pad_sm" H 1250 7550 50  0001 C CNN
F 3 "~" H 1250 7550 50  0001 C CNN
	1    1250 7550
	1    0    0    -1  
$EndComp
$Comp
L Mechanical:MountingHole_Pad H7
U 1 1 5FB2AB2E
P 6250 5900
F 0 "H7" H 6350 5949 50  0000 L CNN
F 1 "OUT+" H 6350 5858 50  0000 L CNN
F 2 "my library:TP4056_1pad_sm" H 6250 5900 50  0001 C CNN
F 3 "~" H 6250 5900 50  0001 C CNN
	1    6250 5900
	1    0    0    -1  
$EndComp
$Comp
L Mechanical:MountingHole_Pad H8
U 1 1 5FB2B09A
P 6250 6250
F 0 "H8" H 6350 6299 50  0000 L CNN
F 1 "B+" H 6350 6208 50  0000 L CNN
F 2 "my library:TP4056_1pad_sm" H 6250 6250 50  0001 C CNN
F 3 "~" H 6250 6250 50  0001 C CNN
	1    6250 6250
	1    0    0    -1  
$EndComp
$Comp
L Mechanical:MountingHole_Pad H9
U 1 1 5FB2B314
P 6450 6850
F 0 "H9" H 6550 6899 50  0000 L CNN
F 1 "B-" H 6550 6808 50  0000 L CNN
F 2 "my library:TP4056_1pad_sm" H 6450 6850 50  0001 C CNN
F 3 "~" H 6450 6850 50  0001 C CNN
	1    6450 6850
	1    0    0    -1  
$EndComp
$Comp
L Mechanical:MountingHole_Pad H10
U 1 1 5FB2B5BA
P 6250 7100
F 0 "H10" H 6350 7149 50  0000 L CNN
F 1 "OUT-" H 6350 7058 50  0000 L CNN
F 2 "my library:TP4056_1pad_sm" H 6250 7100 50  0001 C CNN
F 3 "~" H 6250 7100 50  0001 C CNN
	1    6250 7100
	1    0    0    -1  
$EndComp
Wire Wire Line
	1950 4200 1950 5500
Wire Wire Line
	1850 4100 1850 5600
Wire Wire Line
	1850 5600 6600 5600
Wire Wire Line
	1850 4100 2100 4100
Wire Wire Line
	5400 6950 6450 6950
Wire Wire Line
	6600 5600 6600 6350
Wire Wire Line
	6050 6350 6250 6350
Wire Wire Line
	6750 5500 6750 6950
Wire Wire Line
	1950 5500 6750 5500
Wire Wire Line
	1300 2850 3450 2850
Wire Wire Line
	6050 6000 6050 5850
Wire Wire Line
	6050 5850 1500 5850
Wire Wire Line
	1500 5850 1500 3150
Wire Wire Line
	1500 3150 3500 3150
Wire Wire Line
	9200 4000 9450 4000
Wire Wire Line
	10750 3250 10700 3250
Wire Wire Line
	10750 3150 10750 3250
Wire Wire Line
	9550 3150 10750 3150
Connection ~ 9750 3650
Wire Wire Line
	9550 4000 9550 3150
$Comp
L Connector:Conn_01x02_Male J6
U 1 1 5F486D29
P 3550 4350
F 0 "J6" V 3612 4394 50  0000 L CNN
F 1 "Conn_01x02_Male" V 3703 4394 50  0000 L CNN
F 2 "Connector_JST:JST_PH_B2B-PH-K_1x02_P2.00mm_Vertical" H 3550 4350 50  0001 C CNN
F 3 "~" H 3550 4350 50  0001 C CNN
	1    3550 4350
	-1   0    0    1   
$EndComp
Wire Wire Line
	3300 4650 3300 4350
Wire Wire Line
	3300 4350 3350 4350
Wire Wire Line
	3300 4250 3350 4250
$Comp
L My_Library:2N2222A_NB Q2
U 1 1 5F4F0B00
P 2700 3750
F 0 "Q2" H 2891 3796 50  0000 L CNN
F 1 "2N2222A_NB" H 2891 3705 50  0000 L CNN
F 2 "Package_TO_SOT_SMD:SOT-23_Handsoldering" H 2900 3675 50  0001 L CIN
F 3 "http://www.fairchildsemi.com/ds/PN/PN2222A.pdf" H 2700 3750 50  0001 L CNN
	1    2700 3750
	-1   0    0    -1  
$EndComp
$Comp
L Device:C C8
U 1 1 5F64FEC3
P 10750 4450
F 0 "C8" H 10865 4496 50  0000 L CNN
F 1 ".1uF" H 10865 4405 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric_Pad1.15x1.40mm_HandSolder" H 10788 4300 50  0001 C CNN
F 3 "~" H 10750 4450 50  0001 C CNN
	1    10750 4450
	1    0    0    -1  
$EndComp
Wire Wire Line
	10750 4200 10750 4300
Connection ~ 10750 4200
Wire Wire Line
	10750 4200 10900 4200
Wire Wire Line
	10750 4600 10750 4700
Connection ~ 10750 4700
Wire Wire Line
	10750 4700 10900 4700
$Comp
L power:Earth #PWR0104
U 1 1 5F68CAD7
P 11100 4200
F 0 "#PWR0104" H 11100 3950 50  0001 C CNN
F 1 "Earth" H 11100 4050 50  0001 C CNN
F 2 "" H 11100 4200 50  0001 C CNN
F 3 "~" H 11100 4200 50  0001 C CNN
	1    11100 4200
	1    0    0    -1  
$EndComp
Wire Wire Line
	11100 3900 10900 3900
Connection ~ 10900 3900
Wire Wire Line
	10900 3900 10900 4200
Wire Wire Line
	8000 3900 7900 3900
Wire Wire Line
	7900 3900 7900 3800
Connection ~ 7900 3800
$Comp
L Device:R R18
U 1 1 5F7893D0
P 7350 3100
F 0 "R18" H 7420 3146 50  0000 L CNN
F 1 "10k" H 7420 3055 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" V 7280 3100 50  0001 C CNN
F 3 "~" H 7350 3100 50  0001 C CNN
	1    7350 3100
	0    1    1    0   
$EndComp
Wire Wire Line
	6700 3450 6700 3100
$Comp
L Device:Jumper_NC_Small JP2
U 1 1 5F83D6BC
P 7000 3450
F 0 "JP2" H 7000 3662 50  0000 C CNN
F 1 "Jumper_NC_Small" H 7000 3571 50  0000 C CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x02_P2.54mm_Vertical" H 7000 3450 50  0001 C CNN
F 3 "~" H 7000 3450 50  0001 C CNN
	1    7000 3450
	1    0    0    -1  
$EndComp
Wire Wire Line
	7550 2950 7550 4100
Wire Wire Line
	7500 3100 7500 2950
Connection ~ 7500 2950
Wire Wire Line
	7500 2950 7550 2950
$Comp
L Device:Jumper_NC_Dual JP1
U 1 1 5F7739DB
P 6950 3100
F 0 "JP1" H 6950 3339 50  0000 C CNN
F 1 "Jumper_NC_Dual" H 6950 3248 50  0000 C CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x03_P2.54mm_Vertical" H 6950 3100 50  0001 C CNN
F 3 "~" H 6950 3100 50  0001 C CNN
	1    6950 3100
	1    0    0    -1  
$EndComp
Wire Wire Line
	6750 3800 6750 3450
Wire Wire Line
	6750 3450 6900 3450
Connection ~ 6750 3800
Wire Wire Line
	7900 3350 6950 3350
Wire Wire Line
	7900 3350 7900 3800
Wire Wire Line
	6950 3200 6950 3350
Wire Wire Line
	9400 3650 9750 3650
Wire Wire Line
	9200 4700 9200 5150
Wire Wire Line
	6750 5150 9200 5150
Wire Wire Line
	4400 2850 4500 2850
$Comp
L Switch:SW_Push SW5
U 1 1 5FAC1DB3
P 10850 5650
F 0 "SW5" H 10850 5935 50  0000 C CNN
F 1 "SW_Water" H 10850 5844 50  0000 C CNN
F 2 "my library:SW_Tactile_SPST_Angled_NB" H 10850 5850 50  0001 C CNN
F 3 "~" H 10850 5850 50  0001 C CNN
	1    10850 5650
	1    0    0    -1  
$EndComp
$Comp
L power:Earth #PWR0121
U 1 1 5FAC2F74
P 10650 5650
F 0 "#PWR0121" H 10650 5400 50  0001 C CNN
F 1 "Earth" H 10650 5500 50  0001 C CNN
F 2 "" H 10650 5650 50  0001 C CNN
F 3 "~" H 10650 5650 50  0001 C CNN
	1    10650 5650
	1    0    0    -1  
$EndComp
Wire Wire Line
	11050 5650 11050 4700
Wire Wire Line
	11050 4700 10900 4700
$Comp
L Diode:SB130 D7
U 1 1 5F6FC431
P 7550 3450
F 0 "D7" V 7596 3530 50  0000 L CNN
F 1 "MBRS130LT3" V 7505 3530 50  0000 L CNN
F 2 "Diode_SMD:D_SMB" H 7550 3275 50  0001 C CNN
F 3 "https://www.onsemi.com/pub/Collateral/MBRS130LT3-D.PDF" H 7550 3450 50  0001 C CNN
F 4 " or 1n5818" V 7550 3450 50  0001 C CNN "Comment"
	1    7550 3450
	1    0    0    1   
$EndComp
Wire Wire Line
	8000 3200 8000 3450
Wire Wire Line
	7100 3450 7400 3450
Wire Wire Line
	7700 3450 8000 3450
Connection ~ 8000 3450
Wire Wire Line
	8000 3450 8000 3700
Wire Wire Line
	7550 2950 8050 2950
$Comp
L Device:CP C9
U 1 1 5F677823
P 11100 4050
F 0 "C9" H 11218 4096 50  0000 L CNN
F 1 "220uF" H 11218 4005 50  0000 L CNN
F 2 "Capacitor_THT:CP_Radial_D5.0mm_P2.00mm" H 11138 3900 50  0001 C CNN
F 3 "~" H 11100 4050 50  0001 C CNN
F 4 "1000uf footprint: Capacitor_THT:CP_Radial_D8.0mm_P3.80mm" H 11100 4050 50  0001 C CNN "Note"
	1    11100 4050
	1    0    0    -1  
$EndComp
Wire Wire Line
	10900 2850 10900 3900
Connection ~ 9950 4400
Wire Wire Line
	9900 4400 9950 4400
Connection ~ 9900 4200
Wire Wire Line
	9200 4200 9650 4200
Wire Wire Line
	10000 3850 10850 3850
Wire Wire Line
	10000 4100 10000 3850
Connection ~ 10000 4100
Wire Wire Line
	9200 4100 10000 4100
NoConn ~ 4350 3050
$Comp
L Switch:SW_SPDT SW1
U 1 1 5F458E36
P 4150 3150
F 0 "SW1" H 4150 2825 50  0000 C CNN
F 1 "OFF / ON" H 4150 2916 50  0000 C CNN
F 2 "my library:SS-12F23" H 4150 3150 50  0001 C CNN
F 3 "~" H 4150 3150 50  0001 C CNN
	1    4150 3150
	1    0    0    -1  
$EndComp
$Comp
L Diode:SB130 D8
U 1 1 5F71A55E
P 4650 2850
F 0 "D8" H 4696 2930 50  0000 L CNN
F 1 "MBRS130LT3" H 4400 3000 50  0000 L CNN
F 2 "Diode_SMD:D_SMB" H 4650 2675 50  0001 C CNN
F 3 "https://www.onsemi.com/pub/Collateral/MBRS130LT3-D.PDF" H 4650 2850 50  0001 C CNN
	1    4650 2850
	-1   0    0    -1  
$EndComp
Wire Wire Line
	9250 5200 9500 5200
Wire Wire Line
	9500 5200 9500 5350
Wire Wire Line
	9500 5350 9750 5350
Connection ~ 9250 5200
Wire Wire Line
	9750 5450 9350 5450
Wire Wire Line
	9350 5450 9350 5350
Connection ~ 9350 5350
Wire Wire Line
	9200 4600 9500 4600
Connection ~ 9400 3900
Wire Wire Line
	9400 3900 9950 3900
Wire Wire Line
	6600 5450 9150 5450
$Comp
L Device:Jumper_NC_Dual JP3
U 1 1 5F9588BF
P 9500 5750
F 0 "JP3" H 9500 5900 50  0000 C CNN
F 1 "Jumper_NC_Dual" H 9500 6000 50  0000 C CNN
F 2 "Jumper:SolderJumper-3_P1.3mm_Open_RoundedPad1.0x1.5mm" H 9500 5750 50  0001 C CNN
F 3 "~" H 9500 5750 50  0001 C CNN
	1    9500 5750
	-1   0    0    1   
$EndComp
Wire Wire Line
	9650 5550 9650 5600
Wire Wire Line
	9650 5550 9750 5550
$Comp
L Device:Jumper_NC_Small JP4
U 1 1 5FA111F0
P 9550 5600
F 0 "JP4" H 9550 5700 50  0000 C CNN
F 1 "Jumper_NC_Small" H 9550 5800 50  0000 C CNN
F 2 "Jumper:SolderJumper-2_P1.3mm_Open_RoundedPad1.0x1.5mm" H 9550 5600 50  0001 C CNN
F 3 "~" H 9550 5600 50  0001 C CNN
	1    9550 5600
	1    0    0    -1  
$EndComp
Wire Wire Line
	9750 5750 9750 5650
Wire Wire Line
	9900 4200 9900 4400
$Comp
L RF_Module:RFM95W-915S2 U3
U 1 1 5FA9FC31
P 10050 1850
F 0 "U3" H 10050 2531 50  0000 C CNN
F 1 "RFM95W-915S2" H 10050 2440 50  0000 C CNN
F 2 "RF_Module:HOPERF_RFM9XW_SMD" H 6750 3500 50  0001 C CNN
F 3 "https://www.hoperf.com/data/upload/portal/20181127/5bfcbea20e9ef.pdf" H 6750 3500 50  0001 C CNN
	1    10050 1850
	1    0    0    -1  
$EndComp
Wire Wire Line
	9300 4300 9300 1750
Connection ~ 9300 4300
Wire Wire Line
	9350 4400 9350 1650
Connection ~ 9350 4400
Wire Wire Line
	9200 3700 9200 3450
Connection ~ 9200 3450
Wire Wire Line
	9200 3450 9100 3450
Connection ~ 8000 3700
$Comp
L RF_Module:ESP-12F U1
U 1 1 5F6E5B1B
P 8600 4300
F 0 "U1" H 8600 4500 50  0000 C CNN
F 1 "ESP-12F" H 8600 4400 50  0000 C CNN
F 2 "RF_Module:ESP-12E" H 8600 4300 50  0001 C CNN
F 3 "http://wiki.ai-thinker.com/_media/esp8266/esp8266_series_modules_user_manual_v1.1.pdf" H 8250 4400 50  0001 C CNN
	1    8600 4300
	1    0    0    -1  
$EndComp
Connection ~ 9250 4500
Wire Wire Line
	9500 4600 9500 1850
Wire Wire Line
	9500 1850 9550 1850
Connection ~ 9500 4600
Wire Wire Line
	9500 4600 9600 4600
Wire Wire Line
	9300 1750 9550 1750
Wire Wire Line
	9350 1650 9550 1650
Wire Wire Line
	9250 1550 9550 1550
Wire Wire Line
	10050 1350 9050 1350
$Comp
L power:Earth #PWR0129
U 1 1 5FBD21B2
P 10050 2600
F 0 "#PWR0129" H 10050 2350 50  0001 C CNN
F 1 "Earth" H 10050 2450 50  0001 C CNN
F 2 "" H 10050 2600 50  0001 C CNN
F 3 "~" H 10050 2600 50  0001 C CNN
	1    10050 2600
	1    0    0    -1  
$EndComp
Wire Wire Line
	9950 2450 10050 2450
Connection ~ 10050 2450
Wire Wire Line
	10050 2450 10150 2450
Wire Wire Line
	10050 2600 10050 2450
$Comp
L Device:C C10
U 1 1 5FBFF47B
P 9050 1500
F 0 "C10" H 9165 1546 50  0000 L CNN
F 1 ".1uF" H 9165 1455 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric_Pad1.15x1.40mm_HandSolder" H 9088 1350 50  0001 C CNN
F 3 "~" H 9050 1500 50  0001 C CNN
	1    9050 1500
	1    0    0    -1  
$EndComp
Connection ~ 9050 1350
$Comp
L power:Earth #PWR0130
U 1 1 5FBFFEA8
P 9050 1650
F 0 "#PWR0130" H 9050 1400 50  0001 C CNN
F 1 "Earth" H 9050 1500 50  0001 C CNN
F 2 "" H 9050 1650 50  0001 C CNN
F 3 "~" H 9050 1650 50  0001 C CNN
	1    9050 1650
	1    0    0    -1  
$EndComp
Wire Wire Line
	9650 4200 9650 2750
Connection ~ 9650 4200
Wire Wire Line
	9650 4200 9900 4200
$Comp
L Diode:1N4148 D9
U 1 1 5FC180B0
P 10850 2300
F 0 "D9" V 10750 2100 50  0000 L CNN
F 1 "1N4148" V 10850 1950 50  0000 L CNN
F 2 "Diode_SMD:D_SOD-323_HandSoldering" H 10850 2125 50  0001 C CNN
F 3 "https://assets.nexperia.com/documents/data-sheet/1N4148_1N4448.pdf" H 10850 2300 50  0001 C CNN
	1    10850 2300
	-1   0    0    1   
$EndComp
$Comp
L Diode:1N4148 D10
U 1 1 5FC1A7E4
P 10850 2150
F 0 "D10" V 10750 1950 50  0000 L CNN
F 1 "1N4148" V 10850 1800 50  0000 L CNN
F 2 "Diode_SMD:D_SOD-323_HandSoldering" H 10850 1975 50  0001 C CNN
F 3 "https://assets.nexperia.com/documents/data-sheet/1N4148_1N4448.pdf" H 10850 2150 50  0001 C CNN
	1    10850 2150
	-1   0    0    1   
$EndComp
$Comp
L Diode:1N4148 D11
U 1 1 5FC1AEE1
P 10850 2000
F 0 "D11" V 10750 1800 50  0000 L CNN
F 1 "1N4148" V 10850 1650 50  0000 L CNN
F 2 "Diode_SMD:D_SOD-323_HandSoldering" H 10850 1825 50  0001 C CNN
F 3 "https://assets.nexperia.com/documents/data-sheet/1N4148_1N4448.pdf" H 10850 2000 50  0001 C CNN
	1    10850 2000
	-1   0    0    1   
$EndComp
Wire Wire Line
	10550 2150 10700 2150
Wire Wire Line
	10550 2250 10700 2250
Wire Wire Line
	10700 2250 10700 2300
Wire Wire Line
	10550 2050 10700 2050
Wire Wire Line
	10700 2050 10700 2000
Wire Wire Line
	11000 2000 11000 2150
Wire Wire Line
	9650 2750 11000 2750
Connection ~ 11000 2150
Wire Wire Line
	11000 2150 11000 2300
Connection ~ 11000 2300
Wire Wire Line
	11000 2300 11000 2750
Wire Wire Line
	10550 1550 10850 1550
Wire Wire Line
	10850 1550 10850 1300
$Comp
L Device:Antenna AE1
U 1 1 5FC9326F
P 10850 1100
F 0 "AE1" H 10930 1089 50  0000 L CNN
F 1 "Antenna" H 10930 998 50  0000 L CNN
F 2 "Connector_Coaxial:U.FL_Molex_MCRF_73412-0110_Vertical" H 10850 1100 50  0001 C CNN
F 3 "~" H 10850 1100 50  0001 C CNN
	1    10850 1100
	1    0    0    -1  
$EndComp
Wire Wire Line
	8050 1350 8050 2950
Wire Wire Line
	8050 1350 9050 1350
Connection ~ 8050 2950
Wire Wire Line
	8050 2950 8300 2950
Wire Wire Line
	2900 4650 3300 4650
Connection ~ 6250 6350
Wire Wire Line
	6250 6350 6600 6350
Connection ~ 6450 6950
Wire Wire Line
	6450 6950 6750 6950
NoConn ~ 10550 1750
NoConn ~ 10550 1850
NoConn ~ 10550 1950
NoConn ~ 9550 2050
Wire Wire Line
	3300 3250 3300 3950
Connection ~ 4550 3150
Wire Wire Line
	4550 3150 4400 3150
Wire Wire Line
	6700 4900 6300 4900
Wire Wire Line
	6600 4500 6600 5450
$Comp
L power:Earth #PWR0136
U 1 1 5FBF9E0D
P 4550 3450
F 0 "#PWR0136" H 4550 3200 50  0001 C CNN
F 1 "Earth" H 4550 3300 50  0001 C CNN
F 2 "" H 4550 3450 50  0001 C CNN
F 3 "~" H 4550 3450 50  0001 C CNN
	1    4550 3450
	1    0    0    -1  
$EndComp
$Comp
L Connector_Generic:Conn_01x05 J8
U 1 1 5FC7D402
P 8950 5950
F 0 "J8" H 9030 5992 50  0000 L CNN
F 1 "BH1750" H 9030 5901 50  0000 L CNN
F 2 "Connector_PinHeader_2.00mm:PinHeader_1x05_P2.00mm_Vertical" H 8950 5950 50  0001 C CNN
F 3 "~" H 8950 5950 50  0001 C CNN
	1    8950 5950
	1    0    0    -1  
$EndComp
Wire Wire Line
	9750 3650 9750 5100
Wire Wire Line
	9750 5100 8750 5100
Connection ~ 9750 5100
Wire Wire Line
	9750 5100 9750 5150
$Comp
L power:Earth #PWR0138
U 1 1 5FCF228A
P 8500 6050
F 0 "#PWR0138" H 8500 5800 50  0001 C CNN
F 1 "Earth" H 8500 5900 50  0001 C CNN
F 2 "" H 8500 6050 50  0001 C CNN
F 3 "~" H 8500 6050 50  0001 C CNN
	1    8500 6050
	1    0    0    -1  
$EndComp
Wire Wire Line
	7650 5200 8650 5200
Wire Wire Line
	7600 5350 8550 5350
Wire Wire Line
	8750 5750 8750 5100
Wire Wire Line
	8500 6050 8750 6050
Wire Wire Line
	8650 5200 8650 5850
Wire Wire Line
	8650 5850 8750 5850
Connection ~ 8650 5200
Wire Wire Line
	8650 5200 9250 5200
Wire Wire Line
	8550 5350 8550 5950
Wire Wire Line
	8550 5950 8750 5950
Connection ~ 8550 5350
Wire Wire Line
	8550 5350 9350 5350
Wire Wire Line
	5400 3150 5850 3150
Wire Wire Line
	9400 5600 9450 5600
Wire Wire Line
	9400 3900 9400 5600
Wire Wire Line
	9150 5750 9250 5750
Wire Wire Line
	9150 5450 9150 5750
Wire Wire Line
	9200 5250 9200 5650
Wire Wire Line
	9200 5650 9500 5650
Connection ~ 9200 5250
Wire Wire Line
	6800 5250 9200 5250
$Comp
L Diode:SB130 D2
U 1 1 5F39526C
P 3900 3000
F 0 "D2" V 3946 3080 50  0000 L CNN
F 1 "MBRS130LT3" V 4050 2800 50  0000 L CNN
F 2 "Diode_SMD:D_SMB" H 3900 2825 50  0001 C CNN
F 3 "https://www.onsemi.com/pub/Collateral/MBRS130LT3-D.PDF" H 3900 3000 50  0001 C CNN
	1    3900 3000
	0    1    -1   0   
$EndComp
$Comp
L Device:R R10
U 1 1 5FD044B1
P 5900 5150
F 0 "R10" H 5970 5196 50  0000 L CNN
F 1 "330k" H 5970 5105 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" V 5830 5150 50  0001 C CNN
F 3 "~" H 5900 5150 50  0001 C CNN
	1    5900 5150
	1    0    0    -1  
$EndComp
Wire Wire Line
	5850 4500 6600 4500
Wire Wire Line
	6250 4600 6300 4600
Wire Wire Line
	6300 4600 6300 4900
Connection ~ 6300 4900
Wire Wire Line
	5950 4600 5900 4600
Wire Wire Line
	5900 4600 5900 5000
Connection ~ 5900 4600
Wire Wire Line
	5900 4600 5850 4600
Wire Wire Line
	4850 5300 4850 4950
Wire Wire Line
	4850 4100 3300 4100
Connection ~ 3300 4100
Wire Wire Line
	3300 4100 3300 4250
Wire Wire Line
	4850 5300 5150 5300
Wire Wire Line
	5350 5300 5650 5300
$Comp
L Device:Jumper_NC_Small JP5
U 1 1 5FE3700A
P 5250 5300
F 0 "JP5" H 5250 5512 50  0000 C CNN
F 1 "Jumper_NC_Small" H 5250 5421 50  0000 C CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x02_P2.54mm_Vertical" H 5250 5300 50  0001 C CNN
F 3 "~" H 5250 5300 50  0001 C CNN
	1    5250 5300
	1    0    0    -1  
$EndComp
Connection ~ 10200 3750
Wire Wire Line
	10200 3750 10200 3900
Wire Wire Line
	10700 3650 10700 3750
Connection ~ 10700 3750
Wire Wire Line
	10700 3750 10750 3750
Wire Wire Line
	10750 3750 10750 3900
NoConn ~ 8000 4300
NoConn ~ 8000 4400
NoConn ~ 8000 4500
NoConn ~ 8000 4600
NoConn ~ 8000 4700
NoConn ~ 8000 4800
NoConn ~ 1300 6650
NoConn ~ 1300 6850
Wire Wire Line
	1300 2850 1300 5750
Connection ~ 1300 6150
Connection ~ 3300 3950
Wire Wire Line
	3300 3950 3300 4100
Wire Wire Line
	2900 4350 2900 4250
Wire Wire Line
	2900 4250 3000 4250
Connection ~ 2900 4250
Wire Wire Line
	2900 4250 2900 3750
$Comp
L Connector_Generic:Conn_01x05 J9_1
U 1 1 6107677C
P 8200 2300
F 0 "J9_1" H 8280 2292 50  0000 L CNN
F 1 "MH-Z19C_signal" H 8280 2201 50  0000 L CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x05_P2.54mm_Vertical" H 8200 2300 50  0001 C CNN
F 3 "https://www.tinytronics.nl/shop/index.php?route=product/product/get_file&file=3109/MH-Z19C-DZ-terminal%20type%20CO2%20Manual(Ver1.21)-202103.pdf" H 8200 2300 50  0001 C CNN
	1    8200 2300
	-1   0    0    1   
$EndComp
$Comp
L Connector_Generic:Conn_01x04 J9_2
U 1 1 61079D72
P 7150 2400
F 0 "J9_2" H 7230 2392 50  0000 L CNN
F 1 "MH-Z19C_power" H 7230 2301 50  0000 L CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x04_P2.54mm_Vertical" H 7150 2400 50  0001 C CNN
F 3 "https://www.tinytronics.nl/shop/index.php?route=product/product/get_file&file=3109/MH-Z19C-DZ-terminal%20type%20CO2%20Manual(Ver1.21)-202103.pdf" H 7150 2400 50  0001 C CNN
	1    7150 2400
	-1   0    0    1   
$EndComp
$Comp
L power:Earth #PWR0103
U 1 1 61095254
P 7500 2400
F 0 "#PWR0103" H 7500 2150 50  0001 C CNN
F 1 "Earth" H 7500 2250 50  0001 C CNN
F 2 "" H 7500 2400 50  0001 C CNN
F 3 "~" H 7500 2400 50  0001 C CNN
	1    7500 2400
	1    0    0    -1  
$EndComp
Wire Wire Line
	7350 2400 7500 2400
NoConn ~ 7350 2200
NoConn ~ 7350 2300
NoConn ~ 8400 2200
NoConn ~ 8400 2100
Connection ~ 9450 4000
Wire Wire Line
	9450 4000 9550 4000
Connection ~ 9800 3800
Wire Wire Line
	9800 3800 9850 3800
Wire Wire Line
	3600 2600 3600 2850
Connection ~ 3600 2850
Wire Wire Line
	3600 2850 3700 2850
Wire Wire Line
	7350 2600 7350 2500
Wire Wire Line
	3600 2600 7350 2600
Wire Wire Line
	9250 1550 9250 4500
NoConn ~ 8400 2500
Wire Wire Line
	9450 2300 8900 2300
Wire Wire Line
	9450 2300 9450 4000
Wire Wire Line
	4800 2850 6150 2850
Wire Wire Line
	6150 2850 6150 2650
Wire Wire Line
	6150 2650 7900 2650
Wire Wire Line
	7900 2650 7900 2850
Wire Wire Line
	7900 2850 10900 2850
Wire Wire Line
	7500 2700 7500 2950
$Comp
L Device:Jumper_NC_Dual JP6
U 1 1 614F60A9
P 6950 2900
F 0 "JP6" H 6950 3050 50  0000 C CNN
F 1 "Jumper_NC_Dual" H 6950 3150 50  0000 C CNN
F 2 "Jumper:SolderJumper-3_P1.3mm_Open_RoundedPad1.0x1.5mm" H 6950 2900 50  0001 C CNN
F 3 "~" H 6950 2900 50  0001 C CNN
	1    6950 2900
	1    0    0    -1  
$EndComp
Wire Wire Line
	6300 2700 7500 2700
Wire Wire Line
	6300 2700 6300 3150
Wire Wire Line
	7200 2900 7200 3100
Connection ~ 7200 3100
Wire Wire Line
	6700 2900 6700 3100
Connection ~ 6700 3100
Wire Wire Line
	6950 3200 6650 3200
Wire Wire Line
	6650 3200 6650 3000
Wire Wire Line
	6650 3000 6950 3000
Connection ~ 6950 3200
$Comp
L Device:Jumper_NC_Small JP7
U 1 1 6164652B
P 7000 3400
F 0 "JP7" H 7000 3500 50  0000 C CNN
F 1 "Jumper_NC_Small" H 7000 3600 50  0000 C CNN
F 2 "Jumper:SolderJumper-2_P1.3mm_Open_RoundedPad1.0x1.5mm" H 7000 3400 50  0001 C CNN
F 3 "~" H 7000 3400 50  0001 C CNN
	1    7000 3400
	1    0    0    -1  
$EndComp
Wire Wire Line
	7100 3400 7100 3450
Connection ~ 7100 3450
Wire Wire Line
	6900 3400 6900 3450
Connection ~ 6900 3450
Wire Wire Line
	8400 2400 8700 2400
Wire Wire Line
	9800 2400 9800 3800
$Comp
L Device:Jumper_NC_Small JP8
U 1 1 6170327F
P 8800 2300
F 0 "JP8" H 8800 2400 50  0000 C CNN
F 1 "Jumper_NC_Small" H 8800 2500 50  0000 C CNN
F 2 "Jumper:SolderJumper-2_P1.3mm_Open_RoundedPad1.0x1.5mm" H 8800 2300 50  0001 C CNN
F 3 "~" H 8800 2300 50  0001 C CNN
	1    8800 2300
	1    0    0    -1  
$EndComp
Wire Wire Line
	8700 2300 8400 2300
$Comp
L Device:Jumper_NC_Small JP9
U 1 1 61704572
P 8800 2400
F 0 "JP9" H 8800 2500 50  0000 C CNN
F 1 "Jumper_NC_Small" H 8800 2600 50  0000 C CNN
F 2 "Jumper:SolderJumper-2_P1.3mm_Open_RoundedPad1.0x1.5mm" H 8800 2400 50  0001 C CNN
F 3 "~" H 8800 2400 50  0001 C CNN
	1    8800 2400
	-1   0    0    1   
$EndComp
Wire Wire Line
	8900 2400 9800 2400
Connection ~ 1250 7650
Wire Wire Line
	1250 7650 1400 7650
Wire Wire Line
	1300 6150 1300 6350
Wire Wire Line
	1000 7650 1250 7650
Wire Wire Line
	900  7650 1000 7650
Connection ~ 1000 7650
$Comp
L My_Library:USB_C_Plug_Power P1
U 1 1 5FD53D6A
P 700 6750
F 0 "P1" H 807 7617 50  0000 C CNN
F 1 "USB_C_Plug_Power" H 807 7526 50  0000 C CNN
F 2 "my library:usb_type-c_6-pin" H 850 6750 50  0001 C CNN
F 3 "https://www.usb.org/sites/default/files/documents/usb_type-c.zip" H 850 6750 50  0001 C CNN
	1    700  6750
	1    0    0    -1  
$EndComp
Wire Wire Line
	900  7650 700  7650
Connection ~ 900  7650
Connection ~ 500  7650
Wire Wire Line
	500  7650 400  7650
Connection ~ 600  7650
Wire Wire Line
	600  7650 500  7650
Connection ~ 700  7650
Wire Wire Line
	700  7650 600  7650
$Comp
L Switch:SW_DIP_x01 SW6
U 1 1 613D7BBB
P 1600 6350
F 0 "SW6" H 1600 6617 50  0000 C CNN
F 1 "SW_DIP_x01" H 1600 6526 50  0000 C CNN
F 2 "Button_Switch_THT:SW_DIP_SPSTx01_Slide_6.7x4.1mm_W7.62mm_P2.54mm_LowProfile" H 1600 6350 50  0001 C CNN
F 3 "~" H 1600 6350 50  0001 C CNN
	1    1600 6350
	1    0    0    -1  
$EndComp
Connection ~ 1300 6350
Wire Wire Line
	1900 6350 1900 6500
Connection ~ 1900 6500
Wire Wire Line
	1900 6500 2000 6500
Wire Wire Line
	1050 5750 1300 5750
Connection ~ 1300 5750
Wire Wire Line
	1300 5750 1300 6000
$Comp
L Device:Jumper_NC_Small JP10
U 1 1 61469E18
P 1600 6000
F 0 "JP10" H 1600 6100 50  0000 C CNN
F 1 "Jumper_NC_Small" H 1600 6200 50  0000 C CNN
F 2 "Jumper:SolderJumper-2_P1.3mm_Open_RoundedPad1.0x1.5mm" H 1600 6000 50  0001 C CNN
F 3 "~" H 1600 6000 50  0001 C CNN
	1    1600 6000
	1    0    0    -1  
$EndComp
Wire Wire Line
	1700 6000 1900 6000
Wire Wire Line
	1900 6000 1900 6350
Connection ~ 1900 6350
Wire Wire Line
	1500 6000 1300 6000
Connection ~ 1300 6000
Wire Wire Line
	1300 6000 1300 6150
$Comp
L Device:Jumper_NC_Small JP11
U 1 1 614B09FF
P 5250 4950
F 0 "JP11" H 5250 5050 50  0000 C CNN
F 1 "Jumper_NC_Small" H 5250 5150 50  0000 C CNN
F 2 "Jumper:SolderJumper-2_P1.3mm_Open_RoundedPad1.0x1.5mm" H 5250 4950 50  0001 C CNN
F 3 "~" H 5250 4950 50  0001 C CNN
	1    5250 4950
	1    0    0    -1  
$EndComp
Wire Wire Line
	5150 4950 4850 4950
Connection ~ 4850 4950
Wire Wire Line
	4850 4950 4850 4100
Wire Wire Line
	5350 4950 5650 4950
Wire Wire Line
	5650 4950 5650 5300
Connection ~ 5650 5300
Wire Wire Line
	5650 5300 5900 5300
$EndSCHEMATC
