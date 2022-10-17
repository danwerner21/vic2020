EESchema Schematic File Version 4
EELAYER 30 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 3 4
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
L 74xx:74LS245 U14
U 1 1 607D21E8
P 1800 1650
F 0 "U14" H 1800 1950 50  0000 C CNN
F 1 "74LS245" H 1800 1850 50  0000 C CNN
F 2 "Package_DIP:DIP-20_W7.62mm_Socket" H 1800 1650 50  0001 C CNN
F 3 "http://www.ti.com/lit/gpn/sn74LS245" H 1800 1650 50  0001 C CNN
	1    1800 1650
	1    0    0    -1  
$EndComp
$Comp
L 74xx:74LS245 U15
U 1 1 607D34FA
P 1800 3700
F 0 "U15" H 1800 3850 50  0000 C CNN
F 1 "74LS245" H 1800 3800 50  0000 C CNN
F 2 "Package_DIP:DIP-20_W7.62mm_Socket" H 1800 3700 50  0001 C CNN
F 3 "http://www.ti.com/lit/gpn/sn74LS245" H 1800 3700 50  0001 C CNN
	1    1800 3700
	1    0    0    -1  
$EndComp
$Comp
L 74xx:74LS245 U16
U 1 1 607D4326
P 1800 5600
F 0 "U16" H 1800 5800 50  0000 C CNN
F 1 "74LS245" H 1800 5700 50  0000 C CNN
F 2 "Package_DIP:DIP-20_W7.62mm_Socket" H 1800 5600 50  0001 C CNN
F 3 "http://www.ti.com/lit/gpn/sn74LS245" H 1800 5600 50  0001 C CNN
	1    1800 5600
	1    0    0    -1  
$EndComp
$Comp
L 74xx:74LS245 U18
U 1 1 607D49CB
P 3550 1600
F 0 "U18" H 3550 1800 50  0000 C CNN
F 1 "74LS245" H 3550 1700 50  0000 C CNN
F 2 "Package_DIP:DIP-20_W7.62mm_Socket" H 3550 1600 50  0001 C CNN
F 3 "http://www.ti.com/lit/gpn/sn74LS245" H 3550 1600 50  0001 C CNN
	1    3550 1600
	1    0    0    -1  
$EndComp
$Comp
L Memory_EPROM:2764 U19
U 1 1 607D6E47
P 3900 6250
F 0 "U19" H 3900 6700 50  0000 C CNN
F 1 "2764" H 3900 6600 50  0000 C CNN
F 2 "Package_DIP:DIP-28_W15.24mm_Socket" H 3900 6250 50  0001 C CNN
F 3 "https://downloads.reactivemicro.com/Electronics/ROM/2764%20EPROM.pdf" H 3900 6250 50  0001 C CNN
	1    3900 6250
	1    0    0    -1  
$EndComp
$Comp
L Vic2020mainboard-rescue:6560-6560 U20
U 1 1 6083B46F
P 5800 2500
AR Path="/6083B46F" Ref="U20"  Part="1" 
AR Path="/5F5BC33E/6083B46F" Ref="U20"  Part="1" 
F 0 "U20" H 5800 2700 50  0000 C CNN
F 1 "6560" H 5850 2550 50  0000 C CIB
F 2 "Package_DIP:DIP-40_W15.24mm_Socket" H 5800 4500 50  0001 C CNN
F 3 "http://www.6502.org/documents/datasheets/mos/mos_6500_mpu_mar_1980.pdf" H 5800 4400 50  0001 C CNN
	1    5800 2500
	1    0    0    -1  
$EndComp
$Comp
L Device:R R17
U 1 1 6083C651
P 8100 2450
F 0 "R17" H 7900 2500 50  0000 L CNN
F 1 "510" V 8100 2350 50  0000 L CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P7.62mm_Horizontal" V 8030 2450 50  0001 C CNN
F 3 "~" H 8100 2450 50  0001 C CNN
	1    8100 2450
	1    0    0    -1  
$EndComp
$Comp
L Device:R R19
U 1 1 6083D4B2
P 9600 2150
F 0 "R19" H 9670 2196 50  0000 L CNN
F 1 "1.8K" V 9600 2050 50  0000 L CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P7.62mm_Horizontal" V 9530 2150 50  0001 C CNN
F 3 "~" H 9600 2150 50  0001 C CNN
	1    9600 2150
	1    0    0    -1  
$EndComp
$Comp
L Device:R R20
U 1 1 6083DE87
P 9600 3000
F 0 "R20" H 9650 3100 50  0000 L CNN
F 1 "2.7K" V 9600 2900 50  0000 L CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P7.62mm_Horizontal" V 9530 3000 50  0001 C CNN
F 3 "~" H 9600 3000 50  0001 C CNN
	1    9600 3000
	1    0    0    -1  
$EndComp
$Comp
L Device:R R22
U 1 1 6083E616
P 10200 3100
F 0 "R22" H 10250 3150 50  0000 L CNN
F 1 "270" V 10200 3000 50  0000 L CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P7.62mm_Horizontal" V 10130 3100 50  0001 C CNN
F 3 "~" H 10200 3100 50  0001 C CNN
	1    10200 3100
	1    0    0    -1  
$EndComp
$Comp
L Device:R R16
U 1 1 6083F09A
P 7850 2650
F 0 "R16" V 7750 2650 50  0000 C CNN
F 1 "240" V 7850 2650 50  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P7.62mm_Horizontal" V 7780 2650 50  0001 C CNN
F 3 "~" H 7850 2650 50  0001 C CNN
	1    7850 2650
	0    1    1    0   
$EndComp
$Comp
L Device:C C5
U 1 1 6083F56B
P 8250 3000
F 0 "C5" V 8150 3100 50  0000 L CNN
F 1 "220pf" V 8150 2750 50  0000 L CNN
F 2 "Capacitor_THT:C_Rect_L7.0mm_W2.0mm_P5.00mm" H 8288 2850 50  0001 C CNN
F 3 "~" H 8250 3000 50  0001 C CNN
	1    8250 3000
	0    1    1    0   
$EndComp
$Comp
L Device:C C8
U 1 1 60840787
P 9300 2150
F 0 "C8" H 9250 2450 50  0000 L CNN
F 1 ".1uF" H 9250 2350 50  0000 L CNN
F 2 "Capacitor_THT:C_Rect_L7.0mm_W2.0mm_P5.00mm" H 9338 2000 50  0001 C CNN
F 3 "~" H 9300 2150 50  0001 C CNN
	1    9300 2150
	1    0    0    -1  
$EndComp
$Comp
L Device:C C7
U 1 1 60840CCD
P 9100 1300
F 0 "C7" H 9215 1346 50  0000 L CNN
F 1 ".01uf" H 9215 1255 50  0000 L CNN
F 2 "Capacitor_THT:C_Rect_L7.0mm_W2.0mm_P5.00mm" H 9138 1150 50  0001 C CNN
F 3 "~" H 9100 1300 50  0001 C CNN
	1    9100 1300
	1    0    0    -1  
$EndComp
$Comp
L Device:C C10
U 1 1 608411A3
P 9600 1300
F 0 "C10" H 9715 1346 50  0000 L CNN
F 1 ".1uf" H 9715 1255 50  0000 L CNN
F 2 "Capacitor_THT:C_Rect_L7.0mm_W2.0mm_P5.00mm" H 9638 1150 50  0001 C CNN
F 3 "~" H 9600 1300 50  0001 C CNN
	1    9600 1300
	1    0    0    -1  
$EndComp
$Comp
L Device:R R18
U 1 1 60841655
P 9350 1150
F 0 "R18" V 9250 1150 50  0000 C CNN
F 1 "1K" V 9350 1150 50  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P7.62mm_Horizontal" V 9280 1150 50  0001 C CNN
F 3 "~" H 9350 1150 50  0001 C CNN
	1    9350 1150
	0    1    1    0   
$EndComp
$Comp
L Device:R R21
U 1 1 60841E83
P 10000 1500
F 0 "R21" V 9900 1450 50  0000 C CNN
F 1 "470" V 10000 1500 50  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P7.62mm_Horizontal" V 9930 1500 50  0001 C CNN
F 3 "~" H 10000 1500 50  0001 C CNN
	1    10000 1500
	0    1    1    0   
$EndComp
$Comp
L Transistor_BJT:2SC1815 Q2
U 1 1 6084286B
P 10050 1150
F 0 "Q2" H 10200 1450 50  0000 L CNN
F 1 "2SC1815" H 10200 1350 50  0000 L CNN
F 2 "Package_TO_SOT_THT:TO-92_Inline_Wide" H 10250 1075 50  0001 L CIN
F 3 "https://media.digikey.com/pdf/Data%20Sheets/Toshiba%20PDFs/2SC1815.pdf" H 10050 1150 50  0001 L CNN
	1    10050 1150
	1    0    0    -1  
$EndComp
$Comp
L Transistor_BJT:2SC1815 Q1
U 1 1 6084318F
P 10100 2750
F 0 "Q1" H 10291 2796 50  0000 L CNN
F 1 "2sc1959" H 10291 2705 50  0000 L CNN
F 2 "Package_TO_SOT_THT:TO-92_Inline_Wide" H 10300 2675 50  0001 L CIN
F 3 "https://media.digikey.com/pdf/Data%20Sheets/Toshiba%20PDFs/2SC1815.pdf" H 10100 2750 50  0001 L CNN
	1    10100 2750
	1    0    0    -1  
$EndComp
$Comp
L Vic2020mainboard-rescue:CP-Device C11
U 1 1 608440DF
P 10500 1350
AR Path="/608440DF" Ref="C11"  Part="1" 
AR Path="/5F5BC33E/608440DF" Ref="C11"  Part="1" 
F 0 "C11" V 10245 1350 50  0000 C CNN
F 1 "1uf" V 10336 1350 50  0000 C CNN
F 2 "Capacitor_THT:CP_Radial_D4.0mm_P2.00mm" H 10538 1200 50  0001 C CNN
F 3 "~" H 10500 1350 50  0001 C CNN
	1    10500 1350
	0    -1   -1   0   
$EndComp
$Comp
L power:GND #PWR0137
U 1 1 608459E1
P 9000 1450
F 0 "#PWR0137" H 9000 1200 50  0001 C CNN
F 1 "GND" V 9005 1322 50  0000 R CNN
F 2 "" H 9000 1450 50  0001 C CNN
F 3 "" H 9000 1450 50  0001 C CNN
	1    9000 1450
	0    1    1    0   
$EndComp
Wire Wire Line
	9200 1150 9100 1150
Text GLabel 9000 1150 0    35   Input ~ 0
VICAUDIO
Connection ~ 9100 1150
Wire Wire Line
	9100 1150 9000 1150
Wire Wire Line
	9500 1150 9600 1150
Wire Wire Line
	9600 1150 9850 1150
Connection ~ 9600 1150
Wire Wire Line
	10150 1350 10350 1350
Wire Wire Line
	10650 1350 10750 1350
Text GLabel 10750 1350 2    35   Input ~ 0
AUDIOOUT
Wire Wire Line
	10150 1350 10150 1500
Connection ~ 10150 1350
Wire Wire Line
	9850 1500 9850 1450
Wire Wire Line
	9850 1450 9600 1450
Wire Wire Line
	9600 1450 9100 1450
Connection ~ 9600 1450
Wire Wire Line
	9100 1450 9000 1450
Connection ~ 9100 1450
Text Notes 9500 1000 0    118  ~ 0
AUDIO
Wire Wire Line
	7700 2650 7400 2650
Text GLabel 7400 2650 0    47   Input ~ 0
LUMA
Wire Wire Line
	8000 2650 8100 2650
Wire Wire Line
	8100 2650 8100 2600
Wire Wire Line
	8100 2650 8100 2700
Connection ~ 8100 2650
Wire Wire Line
	9300 2000 9600 2000
Connection ~ 9300 2000
$Comp
L power:GND #PWR0140
U 1 1 60858D4A
P 8950 2300
F 0 "#PWR0140" H 8950 2050 50  0001 C CNN
F 1 "GND" H 8955 2127 50  0000 C CNN
F 2 "" H 8950 2300 50  0001 C CNN
F 3 "" H 8950 2300 50  0001 C CNN
	1    8950 2300
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0141
U 1 1 6085944B
P 9300 2300
F 0 "#PWR0141" H 9300 2050 50  0001 C CNN
F 1 "GND" H 9305 2127 50  0000 C CNN
F 2 "" H 9300 2300 50  0001 C CNN
F 3 "" H 9300 2300 50  0001 C CNN
	1    9300 2300
	1    0    0    -1  
$EndComp
Wire Wire Line
	8900 2950 8900 3100
$Comp
L power:GND #PWR0142
U 1 1 6085B274
P 8900 3100
F 0 "#PWR0142" H 8900 2850 50  0001 C CNN
F 1 "GND" H 8905 2927 50  0000 C CNN
F 2 "" H 8900 3100 50  0001 C CNN
F 3 "" H 8900 3100 50  0001 C CNN
	1    8900 3100
	1    0    0    -1  
$EndComp
$Comp
L Vic2020mainboard-rescue:R_POT-Device RV1
U 1 1 6085CD64
P 8900 2800
F 0 "RV1" H 9050 2950 50  0000 R CNN
F 1 "1K" V 8900 2850 50  0000 R CNN
F 2 "Varistor:Potentiometer_Trimmer_2x4.kicad_mod" H 8900 2800 50  0001 C CNN
F 3 "~" H 8900 2800 50  0001 C CNN
	1    8900 2800
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0143
U 1 1 6085EDA7
P 9600 3150
F 0 "#PWR0143" H 9600 2900 50  0001 C CNN
F 1 "GND" H 9605 2977 50  0000 C CNN
F 2 "" H 9600 3150 50  0001 C CNN
F 3 "" H 9600 3150 50  0001 C CNN
	1    9600 3150
	1    0    0    -1  
$EndComp
Wire Wire Line
	9600 2300 9600 2750
Connection ~ 9600 2750
Wire Wire Line
	9600 2750 9600 2850
Wire Wire Line
	9600 2750 9900 2750
$Comp
L power:GND #PWR0144
U 1 1 608615F8
P 10200 3250
F 0 "#PWR0144" H 10200 3000 50  0001 C CNN
F 1 "GND" H 10205 3077 50  0000 C CNN
F 2 "" H 10200 3250 50  0001 C CNN
F 3 "" H 10200 3250 50  0001 C CNN
	1    10200 3250
	1    0    0    -1  
$EndComp
Wire Wire Line
	10200 2550 10200 2000
Wire Wire Line
	10200 2000 9600 2000
Connection ~ 9600 2000
Text GLabel 7500 3000 0    47   Input ~ 0
CHROMA
Wire Wire Line
	10200 2950 10750 2950
Connection ~ 10200 2950
Text GLabel 10750 2950 2    47   Input ~ 0
VIDEOOUT
Text Notes 8250 2300 0    118  ~ 0
VIDEO\n
Wire Wire Line
	2300 1150 2450 1150
Wire Wire Line
	2300 1250 2450 1250
Wire Wire Line
	2300 1350 2450 1350
Wire Wire Line
	2300 1450 2450 1450
Wire Wire Line
	2300 1550 2450 1550
Wire Wire Line
	2300 1650 2450 1650
Wire Wire Line
	2300 1750 2450 1750
Wire Wire Line
	1300 1150 1150 1150
Wire Wire Line
	1300 1250 1150 1250
Wire Wire Line
	1150 1350 1300 1350
Wire Wire Line
	1300 1450 1150 1450
Wire Wire Line
	1300 1550 1150 1550
Wire Wire Line
	1150 1650 1300 1650
Wire Wire Line
	1300 1750 1150 1750
Wire Wire Line
	1300 1850 1150 1850
Wire Wire Line
	1300 2050 1150 2050
Wire Wire Line
	1300 2150 1150 2150
Text GLabel 1150 2050 0    47   Input ~ 0
RW
Text GLabel 1150 2150 0    47   Input ~ 0
DATAE
Wire Wire Line
	2300 1850 2450 1850
$Comp
L power:GND #PWR0145
U 1 1 6089469D
P 1800 2450
F 0 "#PWR0145" H 1800 2200 50  0001 C CNN
F 1 "GND" V 1805 2322 50  0000 R CNN
F 2 "" H 1800 2450 50  0001 C CNN
F 3 "" H 1800 2450 50  0001 C CNN
	1    1800 2450
	0    1    1    0   
$EndComp
$Comp
L power:+5V #PWR0146
U 1 1 608956D7
P 1800 850
F 0 "#PWR0146" H 1800 700 50  0001 C CNN
F 1 "+5V" V 1815 978 50  0000 L CNN
F 2 "" H 1800 850 50  0001 C CNN
F 3 "" H 1800 850 50  0001 C CNN
	1    1800 850 
	0    1    1    0   
$EndComp
Wire Wire Line
	2300 3200 2450 3200
Wire Wire Line
	2300 3300 2450 3300
Wire Wire Line
	2300 3400 2450 3400
Wire Wire Line
	2300 3500 2450 3500
Wire Wire Line
	2300 3600 2450 3600
Wire Wire Line
	2300 3700 2450 3700
Wire Wire Line
	2300 3800 2450 3800
Wire Wire Line
	2300 3900 2450 3900
Wire Wire Line
	2300 5200 2450 5200
Wire Wire Line
	2300 5300 2450 5300
Wire Wire Line
	2300 5400 2450 5400
Wire Wire Line
	2300 5600 2450 5600
Wire Wire Line
	2300 5700 2450 5700
Text GLabel 2450 5700 2    47   Input ~ 0
COLOR
Wire Wire Line
	1300 3200 1100 3200
Wire Wire Line
	1300 3300 1100 3300
Wire Wire Line
	1300 3400 1100 3400
Wire Wire Line
	1300 3500 1100 3500
Wire Wire Line
	1300 3600 1100 3600
Wire Wire Line
	1300 3700 1100 3700
Wire Wire Line
	1300 3800 1100 3800
Wire Wire Line
	1300 3900 1100 3900
$Comp
L power:+5V #PWR0147
U 1 1 608D6CF0
P 1800 2900
F 0 "#PWR0147" H 1800 2750 50  0001 C CNN
F 1 "+5V" V 1815 3028 50  0000 L CNN
F 2 "" H 1800 2900 50  0001 C CNN
F 3 "" H 1800 2900 50  0001 C CNN
	1    1800 2900
	0    1    1    0   
$EndComp
$Comp
L power:GND #PWR0148
U 1 1 608D748C
P 1800 4500
F 0 "#PWR0148" H 1800 4250 50  0001 C CNN
F 1 "GND" V 1805 4372 50  0000 R CNN
F 2 "" H 1800 4500 50  0001 C CNN
F 3 "" H 1800 4500 50  0001 C CNN
	1    1800 4500
	0    -1   -1   0   
$EndComp
$Comp
L power:GND #PWR0149
U 1 1 608D7EE7
P 1300 4100
F 0 "#PWR0149" H 1300 3850 50  0001 C CNN
F 1 "GND" V 1305 3972 50  0000 R CNN
F 2 "" H 1300 4100 50  0001 C CNN
F 3 "" H 1300 4100 50  0001 C CNN
	1    1300 4100
	0    1    1    0   
$EndComp
Wire Wire Line
	1300 4200 1050 4200
Text GLabel 1050 4200 0    47   Input ~ 0
E
Wire Wire Line
	1300 6100 1100 6100
$Comp
L power:GND #PWR0150
U 1 1 608DE729
P 1300 6000
F 0 "#PWR0150" H 1300 5750 50  0001 C CNN
F 1 "GND" V 1305 5872 50  0000 R CNN
F 2 "" H 1300 6000 50  0001 C CNN
F 3 "" H 1300 6000 50  0001 C CNN
	1    1300 6000
	0    1    1    0   
$EndComp
$Comp
L power:GND #PWR0151
U 1 1 608DEFF3
P 1800 6400
F 0 "#PWR0151" H 1800 6150 50  0001 C CNN
F 1 "GND" V 1805 6272 50  0000 R CNN
F 2 "" H 1800 6400 50  0001 C CNN
F 3 "" H 1800 6400 50  0001 C CNN
	1    1800 6400
	0    -1   -1   0   
$EndComp
$Comp
L power:+5V #PWR0152
U 1 1 608DF659
P 1800 4800
F 0 "#PWR0152" H 1800 4650 50  0001 C CNN
F 1 "+5V" V 1815 4928 50  0000 L CNN
F 2 "" H 1800 4800 50  0001 C CNN
F 3 "" H 1800 4800 50  0001 C CNN
	1    1800 4800
	0    1    1    0   
$EndComp
Text GLabel 1100 6100 0    47   Input ~ 0
E
Wire Wire Line
	1300 5100 1150 5100
Wire Wire Line
	1300 5200 1150 5200
Wire Wire Line
	1300 5300 1150 5300
Wire Wire Line
	1300 5500 1150 5500
Wire Wire Line
	1300 5700 1000 5700
Text GLabel 2450 5600 2    47   Input ~ 0
BLK4
NoConn ~ 2300 5800
NoConn ~ 1300 5800
Text GLabel 1000 5700 0    47   Input ~ 0
CENB
$Comp
L power:+5V #PWR0153
U 1 1 60914FBC
P 3550 800
F 0 "#PWR0153" H 3550 650 50  0001 C CNN
F 1 "+5V" V 3565 928 50  0000 L CNN
F 2 "" H 3550 800 50  0001 C CNN
F 3 "" H 3550 800 50  0001 C CNN
	1    3550 800 
	0    1    1    0   
$EndComp
$Comp
L power:GND #PWR0154
U 1 1 609154C3
P 3550 2400
F 0 "#PWR0154" H 3550 2150 50  0001 C CNN
F 1 "GND" V 3555 2272 50  0000 R CNN
F 2 "" H 3550 2400 50  0001 C CNN
F 3 "" H 3550 2400 50  0001 C CNN
	1    3550 2400
	0    -1   -1   0   
$EndComp
Wire Wire Line
	3050 1100 2900 1100
Wire Wire Line
	3050 1200 2900 1200
Wire Wire Line
	3050 1300 2900 1300
Wire Wire Line
	3050 1400 2900 1400
Wire Wire Line
	3050 1500 2900 1500
Wire Wire Line
	3050 1600 2900 1600
Wire Wire Line
	3050 1700 2900 1700
Wire Wire Line
	3050 1800 2900 1800
Wire Wire Line
	4050 1800 4150 1800
Wire Wire Line
	4050 1700 4150 1700
Wire Wire Line
	4050 1600 4150 1600
Wire Wire Line
	4050 1400 4150 1400
Wire Wire Line
	4050 1300 4150 1300
Wire Wire Line
	4050 1200 4150 1200
Wire Wire Line
	4050 1100 4150 1100
Wire Wire Line
	4050 1500 4150 1500
Wire Wire Line
	3050 2000 2800 2000
Wire Wire Line
	3050 2100 3050 2400
$Comp
L power:+5V #PWR0155
U 1 1 609C2DBD
P 3500 2700
F 0 "#PWR0155" H 3500 2550 50  0001 C CNN
F 1 "+5V" V 3515 2828 50  0000 L CNN
F 2 "" H 3500 2700 50  0001 C CNN
F 3 "" H 3500 2700 50  0001 C CNN
	1    3500 2700
	0    1    1    0   
$EndComp
$Comp
L power:GND #PWR0156
U 1 1 609C32ED
P 3500 4900
F 0 "#PWR0156" H 3500 4650 50  0001 C CNN
F 1 "GND" V 3505 4772 50  0000 R CNN
F 2 "" H 3500 4900 50  0001 C CNN
F 3 "" H 3500 4900 50  0001 C CNN
	1    3500 4900
	0    -1   -1   0   
$EndComp
$Comp
L power:GND #PWR0157
U 1 1 609C3B20
P 5800 4050
F 0 "#PWR0157" H 5800 3800 50  0001 C CNN
F 1 "GND" V 5805 3922 50  0000 R CNN
F 2 "" H 5800 4050 50  0001 C CNN
F 3 "" H 5800 4050 50  0001 C CNN
	1    5800 4050
	0    -1   -1   0   
$EndComp
$Comp
L power:+5V #PWR0158
U 1 1 609C409B
P 7550 900
F 0 "#PWR0158" H 7550 750 50  0001 C CNN
F 1 "+5V" V 7565 1028 50  0000 L CNN
F 2 "" H 7550 900 50  0001 C CNN
F 3 "" H 7550 900 50  0001 C CNN
	1    7550 900 
	0    1    1    0   
$EndComp
Text GLabel 4100 4100 2    47   Input ~ 0
VRW
$Comp
L power:+5V #PWR0159
U 1 1 609EDC7A
P 4100 4200
F 0 "#PWR0159" H 4100 4050 50  0001 C CNN
F 1 "+5V" V 4115 4328 50  0000 L CNN
F 2 "" H 4100 4200 50  0001 C CNN
F 3 "" H 4100 4200 50  0001 C CNN
	1    4100 4200
	0    1    1    0   
$EndComp
Wire Wire Line
	4100 3900 4100 4000
Wire Wire Line
	4100 4000 4300 4000
Connection ~ 4100 4000
Text GLabel 4300 4000 2    47   Input ~ 0
CENB
Wire Wire Line
	3000 3900 2900 3900
Wire Wire Line
	2900 4000 3000 4000
Wire Wire Line
	3000 4100 2900 4100
Wire Wire Line
	3000 4200 2900 4200
Wire Wire Line
	3000 4300 2900 4300
Wire Wire Line
	3000 4400 2900 4400
Wire Wire Line
	2900 4500 3000 4500
Wire Wire Line
	4000 4200 4100 4200
Wire Wire Line
	4000 4100 4100 4100
Wire Wire Line
	4000 4000 4100 4000
Wire Wire Line
	4000 3900 4100 3900
Wire Wire Line
	4000 3600 4150 3600
Wire Wire Line
	4000 3500 4150 3500
Wire Wire Line
	4000 3400 4150 3400
Wire Wire Line
	4000 3300 4150 3300
Wire Wire Line
	4000 3200 4150 3200
Wire Wire Line
	4000 3100 4150 3100
Wire Wire Line
	4000 3000 4150 3000
Wire Wire Line
	4000 2900 4150 2900
$Comp
L Vic2020mainboard-rescue:AS6C1008-55PCN-as6c1008-55pcn U17
U 1 1 607D5355
P 3500 3800
F 0 "U17" H 3450 4050 50  0000 C CNN
F 1 "AS6C1008-55PCN" V 3450 3600 50  0000 C CNN
F 2 "Package_DIP:DIP-32_W15.24mm" H 3500 3900 50  0001 C CNN
F 3 "https://www.alliancememory.com/wp-content/uploads/pdf/AS6C4008.pdf" H 3500 3900 50  0001 C CNN
	1    3500 3800
	1    0    0    -1  
$EndComp
Wire Wire Line
	2850 2900 3000 2900
Wire Wire Line
	2850 3000 3000 3000
Wire Wire Line
	2850 3100 3000 3100
Wire Wire Line
	2850 3200 3000 3200
Wire Wire Line
	2850 3300 3000 3300
Wire Wire Line
	2850 3400 3000 3400
Wire Wire Line
	2850 3500 3000 3500
Wire Wire Line
	2850 3600 3000 3600
Wire Wire Line
	2850 3700 3000 3700
Wire Wire Line
	2850 3800 3000 3800
Text GLabel 2900 3900 0    47   Input ~ 0
PB0
Text GLabel 2900 4000 0    47   Input ~ 0
PB1
Text GLabel 2900 4200 0    47   Input ~ 0
PB3
Text GLabel 2900 4100 0    47   Input ~ 0
PB2
Text GLabel 2900 4300 0    47   Input ~ 0
PB4
Text GLabel 2900 4400 0    47   Input ~ 0
PB5
Text GLabel 2900 4500 0    47   Input ~ 0
PB6
Wire Wire Line
	4300 5650 4450 5650
Wire Wire Line
	4300 5750 4450 5750
Wire Wire Line
	4300 5950 4450 5950
Wire Wire Line
	4300 6050 4450 6050
$Comp
L power:+5V #PWR0160
U 1 1 60B56BB0
P 3900 5250
F 0 "#PWR0160" H 3900 5100 50  0001 C CNN
F 1 "+5V" V 3915 5378 50  0000 L CNN
F 2 "" H 3900 5250 50  0001 C CNN
F 3 "" H 3900 5250 50  0001 C CNN
	1    3900 5250
	0    1    1    0   
$EndComp
$Comp
L power:GND #PWR0161
U 1 1 60B5755E
P 3900 7350
F 0 "#PWR0161" H 3900 7100 50  0001 C CNN
F 1 "GND" V 3905 7222 50  0000 R CNN
F 2 "" H 3900 7350 50  0001 C CNN
F 3 "" H 3900 7350 50  0001 C CNN
	1    3900 7350
	0    -1   -1   0   
$EndComp
$Comp
L power:GND #PWR0162
U 1 1 60B5876A
P 3500 6950
F 0 "#PWR0162" H 3500 6700 50  0001 C CNN
F 1 "GND" V 3505 6822 50  0000 R CNN
F 2 "" H 3500 6950 50  0001 C CNN
F 3 "" H 3500 6950 50  0001 C CNN
	1    3500 6950
	0    1    1    0   
$EndComp
$Comp
L power:+5V #PWR0163
U 1 1 60B58BD9
P 3500 6850
F 0 "#PWR0163" H 3500 6700 50  0001 C CNN
F 1 "+5V" V 3515 6978 50  0000 L CNN
F 2 "" H 3500 6850 50  0001 C CNN
F 3 "" H 3500 6850 50  0001 C CNN
	1    3500 6850
	0    -1   -1   0   
$EndComp
Wire Wire Line
	3500 5550 3350 5550
Wire Wire Line
	3350 5450 3500 5450
Wire Wire Line
	3500 5650 3350 5650
Wire Wire Line
	3500 5750 3350 5750
Wire Wire Line
	3500 5850 3350 5850
Wire Wire Line
	3500 5950 3350 5950
Wire Wire Line
	3500 6050 3350 6050
Wire Wire Line
	3500 6150 3350 6150
Wire Wire Line
	3500 6250 3350 6250
Wire Wire Line
	3500 6350 3350 6350
Wire Wire Line
	3500 6450 3350 6450
Wire Wire Line
	3500 6550 3350 6550
$Comp
L Connector:Conn_01x03_Male J3
U 1 1 60BE6EF4
P 2750 6650
F 0 "J3" H 2600 6650 50  0000 C CNN
F 1 "FONT SELECT" V 2700 6650 50  0000 C CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x03_P2.54mm_Vertical" H 2750 6650 50  0001 C CNN
F 3 "~" H 2750 6650 50  0001 C CNN
	1    2750 6650
	1    0    0    -1  
$EndComp
Wire Wire Line
	3500 6650 2950 6650
$Comp
L power:+5V #PWR0164
U 1 1 60BF4876
P 2950 6750
F 0 "#PWR0164" H 2950 6600 50  0001 C CNN
F 1 "+5V" V 2965 6878 50  0000 L CNN
F 2 "" H 2950 6750 50  0001 C CNN
F 3 "" H 2950 6750 50  0001 C CNN
	1    2950 6750
	0    1    1    0   
$EndComp
$Comp
L power:GND #PWR0165
U 1 1 60BF4E2C
P 2950 6550
F 0 "#PWR0165" H 2950 6300 50  0001 C CNN
F 1 "GND" H 2955 6377 50  0000 C CNN
F 2 "" H 2950 6550 50  0001 C CNN
F 3 "" H 2950 6550 50  0001 C CNN
	1    2950 6550
	-1   0    0    1   
$EndComp
Wire Wire Line
	4300 6150 4450 6150
Wire Wire Line
	4300 5850 4450 5850
Wire Wire Line
	4300 5550 4450 5550
Wire Wire Line
	4300 5450 4450 5450
Wire Wire Line
	1300 5600 1150 5600
Wire Wire Line
	2300 5100 2450 5100
Wire Wire Line
	1300 5400 1150 5400
Wire Wire Line
	2300 5500 2450 5500
Wire Wire Line
	3500 7050 3200 7050
Text GLabel 3200 7050 0    47   Input ~ 0
VA13
Text GLabel 1800 7150 0    47   Input ~ 0
VA12
Wire Wire Line
	6400 1200 6650 1200
Wire Wire Line
	6400 1300 6650 1300
Wire Wire Line
	6400 1400 6650 1400
Wire Wire Line
	6400 1500 6650 1500
Wire Wire Line
	6400 1600 6650 1600
Wire Wire Line
	6400 1700 6650 1700
Wire Wire Line
	6400 1800 6650 1800
Wire Wire Line
	6400 1900 6650 1900
Wire Wire Line
	6400 2000 6650 2000
Wire Wire Line
	6400 2100 6650 2100
Wire Wire Line
	6400 2200 6650 2200
Wire Wire Line
	6400 2300 6650 2300
Wire Wire Line
	6400 2400 6650 2400
Wire Wire Line
	6400 2500 6650 2500
Wire Wire Line
	6400 2650 6650 2650
Wire Wire Line
	6400 2750 6650 2750
Wire Wire Line
	6400 2850 6650 2850
Wire Wire Line
	6400 2950 6650 2950
Wire Wire Line
	6400 3050 6650 3050
Wire Wire Line
	6400 3150 6650 3150
Wire Wire Line
	6400 3250 6650 3250
Wire Wire Line
	6400 3350 6650 3350
Wire Wire Line
	6400 3450 6650 3450
Wire Wire Line
	6400 3550 6650 3550
Wire Wire Line
	6400 3650 6650 3650
Wire Wire Line
	6400 3750 6650 3750
Wire Wire Line
	5200 1300 5050 1300
Wire Wire Line
	5200 1550 5050 1550
Wire Wire Line
	5200 1800 5050 1800
Wire Wire Line
	5200 1900 5050 1900
Wire Wire Line
	5200 2200 5050 2200
Wire Wire Line
	5300 2550 5050 2550
Wire Wire Line
	5300 2650 5050 2650
Wire Wire Line
	5300 2750 5050 2750
Wire Wire Line
	5200 3050 5050 3050
Text GLabel 5050 1550 0    47   Input ~ 0
VRW
Text GLabel 5050 1800 0    47   Input ~ 0
CHROMA
Text GLabel 5050 1900 0    47   Input ~ 0
LUMA
Text GLabel 5050 2650 0    47   Input ~ 0
POTX
Text GLabel 5050 2750 0    47   Input ~ 0
POTY
Text GLabel 5050 2550 0    47   Input ~ 0
LPEN
Text GLabel 5050 3050 0    47   Input ~ 0
VICAUDIO
Text GLabel 4700 1300 0    47   Input ~ 0
VICO1
Text GLabel 4700 1400 0    47   Input ~ 0
VICO2
Text GLabel 4650 2200 0    47   Input ~ 0
VICPO1
$Comp
L Connector:Conn_Coaxial J6
U 1 1 60F03614
P 10400 5300
F 0 "J6" H 10500 5275 50  0000 L CNN
F 1 "Audio Out" H 10250 5450 50  0000 L CNN
F 2 "RCA:CUI_RCJ-041-reversepins" H 10400 5300 50  0001 C CNN
F 3 " ~" H 10400 5300 50  0001 C CNN
	1    10400 5300
	1    0    0    -1  
$EndComp
$Comp
L Connector:Conn_Coaxial J7
U 1 1 60F04748
P 10400 5800
F 0 "J7" H 10500 5682 50  0000 L CNN
F 1 "Video Out" H 10150 5950 50  0000 L CNN
F 2 "RCA:CUI_RCJ-041-reversepins" H 10400 5800 50  0001 C CNN
F 3 " ~" H 10400 5800 50  0001 C CNN
	1    10400 5800
	1    0    0    1   
$EndComp
Wire Wire Line
	10400 5600 10400 5550
Wire Wire Line
	10400 5550 10500 5550
Connection ~ 10400 5550
Wire Wire Line
	10400 5550 10400 5500
$Comp
L power:GND #PWR0166
U 1 1 60F63C26
P 10500 5550
F 0 "#PWR0166" H 10500 5300 50  0001 C CNN
F 1 "GND" V 10505 5422 50  0000 R CNN
F 2 "" H 10500 5550 50  0001 C CNN
F 3 "" H 10500 5550 50  0001 C CNN
	1    10500 5550
	0    -1   -1   0   
$EndComp
Wire Wire Line
	10200 5300 9950 5300
Wire Wire Line
	10200 5800 9950 5800
Text GLabel 9950 5300 0    47   Input ~ 0
AUDIOOUT
Text GLabel 9950 5800 0    47   Input ~ 0
VIDEOOUT
$Comp
L Connector:DIN-4 J5
U 1 1 60F8B8ED
P 8100 4850
F 0 "J5" H 8100 4575 50  0000 C CNN
F 1 "SVIDEO Out" H 8100 4484 50  0000 C CNN
F 2 "Connector:DIN-4TE_5749181-1" H 8100 4850 50  0001 C CNN
F 3 "http://www.mouser.com/ds/2/18/40_c091_abd_e-75918.pdf" H 8100 4850 50  0001 C CNN
	1    8100 4850
	0    -1   -1   0   
$EndComp
$Comp
L power:GND #PWR0167
U 1 1 60F8D94E
P 7950 5400
F 0 "#PWR0167" H 7950 5150 50  0001 C CNN
F 1 "GND" H 7955 5227 50  0000 C CNN
F 2 "" H 7950 5400 50  0001 C CNN
F 3 "" H 7950 5400 50  0001 C CNN
	1    7950 5400
	1    0    0    -1  
$EndComp
$Comp
L Connector:Conn_01x02_Male J4
U 1 1 60FDDF6B
P 7950 3200
F 0 "J4" V 8000 3250 50  0000 L CNN
F 1 "Chroma Disconnect" V 7900 2600 50  0000 L CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x02_P2.54mm_Vertical" H 7950 3200 50  0001 C CNN
F 3 "~" H 7950 3200 50  0001 C CNN
	1    7950 3200
	0    -1   -1   0   
$EndComp
Text GLabel 1150 1150 0    47   Input ~ 0
BD0
Text GLabel 1150 1250 0    47   Input ~ 0
BD1
Text GLabel 1150 1350 0    47   Input ~ 0
BD2
Text GLabel 1150 1450 0    47   Input ~ 0
BD3
Text GLabel 1150 1550 0    47   Input ~ 0
BD4
Text GLabel 1150 1650 0    47   Input ~ 0
BD5
Text GLabel 1150 1750 0    47   Input ~ 0
BD6
Text GLabel 1150 1850 0    47   Input ~ 0
BD7
Text GLabel 4450 5450 2    47   Input ~ 0
BD0
Text GLabel 4450 5550 2    47   Input ~ 0
BD1
Text GLabel 4450 5650 2    47   Input ~ 0
BD2
Text GLabel 4450 5750 2    47   Input ~ 0
BD3
Text GLabel 4450 5850 2    47   Input ~ 0
BD4
Text GLabel 4450 5950 2    47   Input ~ 0
BD5
Text GLabel 4450 6050 2    47   Input ~ 0
BD6
Text GLabel 4450 6150 2    47   Input ~ 0
BD7
Text GLabel 6650 2650 2    47   Input ~ 0
BD0
Text GLabel 6650 2750 2    47   Input ~ 0
BD1
Text GLabel 6650 2850 2    47   Input ~ 0
BD2
Text GLabel 6650 2950 2    47   Input ~ 0
BD3
Text GLabel 6650 3050 2    47   Input ~ 0
BD4
Text GLabel 6650 3150 2    47   Input ~ 0
BD5
Text GLabel 6650 3250 2    47   Input ~ 0
BD6
Text GLabel 6650 3350 2    47   Input ~ 0
BD7
Text GLabel 6650 3450 2    47   Input ~ 0
VD8
Text GLabel 6650 3550 2    47   Input ~ 0
VD9
Text GLabel 6650 3650 2    47   Input ~ 0
VD10
Text GLabel 6650 3750 2    47   Input ~ 0
VD11
Text GLabel 4150 3600 2    47   Input ~ 0
VD15
Text GLabel 4150 3500 2    47   Input ~ 0
VD14
Text GLabel 4150 3400 2    47   Input ~ 0
VD13
Text GLabel 4150 3300 2    47   Input ~ 0
VD12
Text GLabel 4150 3200 2    47   Input ~ 0
VD11
Text GLabel 4150 3100 2    47   Input ~ 0
VD10
Text GLabel 4150 3000 2    47   Input ~ 0
VD9
Text GLabel 4150 2900 2    47   Input ~ 0
VD8
Text GLabel 2900 1800 0    47   Input ~ 0
VD15
Text GLabel 2900 1700 0    47   Input ~ 0
VD14
Text GLabel 2900 1600 0    47   Input ~ 0
VD13
Text GLabel 2900 1500 0    47   Input ~ 0
VD12
Text GLabel 2900 1400 0    47   Input ~ 0
VD11
Text GLabel 2900 1300 0    47   Input ~ 0
VD10
Text GLabel 2900 1200 0    47   Input ~ 0
VD9
Text GLabel 2900 1100 0    47   Input ~ 0
VD8
Text GLabel 2450 1150 2    47   Input ~ 0
D0
Text GLabel 2450 1250 2    47   Input ~ 0
D1
Text GLabel 2450 1350 2    47   Input ~ 0
D2
Text GLabel 2450 1450 2    47   Input ~ 0
D3
Text GLabel 2450 1550 2    47   Input ~ 0
D4
Text GLabel 2450 1650 2    47   Input ~ 0
D5
Text GLabel 2450 1750 2    47   Input ~ 0
D6
Text GLabel 2450 1850 2    47   Input ~ 0
D7
Text GLabel 2450 3200 2    47   Input ~ 0
A0
Text GLabel 2450 3300 2    47   Input ~ 0
A1
Text GLabel 2450 3400 2    47   Input ~ 0
A2
Text GLabel 2450 3500 2    47   Input ~ 0
A3
Text GLabel 2450 3600 2    47   Input ~ 0
A4
Text GLabel 2450 3700 2    47   Input ~ 0
A5
Text GLabel 2450 3800 2    47   Input ~ 0
A6
Text GLabel 2450 3900 2    47   Input ~ 0
A7
Text GLabel 2450 5100 2    47   Input ~ 0
A8
Text GLabel 2450 5200 2    47   Input ~ 0
A9
Text GLabel 2450 5300 2    47   Input ~ 0
A10
Text GLabel 2450 5400 2    47   Input ~ 0
A11
Text GLabel 2450 5500 2    47   Input ~ 0
A12
Text GLabel 1100 3200 0    47   Input ~ 0
VA0
Text GLabel 1100 3300 0    47   Input ~ 0
VA1
Text GLabel 1100 3400 0    47   Input ~ 0
VA2
Text GLabel 1100 3500 0    47   Input ~ 0
VA3
Text GLabel 1100 3600 0    47   Input ~ 0
VA4
Text GLabel 1100 3700 0    47   Input ~ 0
VA5
Text GLabel 1100 3800 0    47   Input ~ 0
VA6
Text GLabel 1100 3900 0    47   Input ~ 0
VA7
Text GLabel 1150 5100 0    47   Input ~ 0
VA8
Text GLabel 1150 5200 0    47   Input ~ 0
VA9
Text GLabel 1150 5300 0    47   Input ~ 0
VA10
Text GLabel 1150 5400 0    47   Input ~ 0
VA11
Text GLabel 1150 5500 0    47   Input ~ 0
VA12
Text GLabel 1150 5600 0    47   Input ~ 0
VA13
Text GLabel 2850 2900 0    47   Input ~ 0
VA0
Text GLabel 2850 3000 0    47   Input ~ 0
VA1
Text GLabel 2850 3100 0    47   Input ~ 0
VA2
Text GLabel 2850 3200 0    47   Input ~ 0
VA3
Text GLabel 2850 3300 0    47   Input ~ 0
VA4
Text GLabel 2850 3400 0    47   Input ~ 0
VA5
Text GLabel 2850 3500 0    47   Input ~ 0
VA6
Text GLabel 2850 3600 0    47   Input ~ 0
VA7
Text GLabel 2850 3700 0    47   Input ~ 0
VA8
Text GLabel 2850 3800 0    47   Input ~ 0
VA9
Text GLabel 3350 5450 0    47   Input ~ 0
VA0
Text GLabel 3350 5550 0    47   Input ~ 0
VA1
Text GLabel 3350 5650 0    47   Input ~ 0
VA2
Text GLabel 3350 5750 0    47   Input ~ 0
VA3
Text GLabel 3350 5850 0    47   Input ~ 0
VA4
Text GLabel 3350 5950 0    47   Input ~ 0
VA5
Text GLabel 3350 6050 0    47   Input ~ 0
VA6
Text GLabel 3350 6150 0    47   Input ~ 0
VA7
Text GLabel 3350 6250 0    47   Input ~ 0
VA8
Text GLabel 3350 6350 0    47   Input ~ 0
VA9
Text GLabel 3350 6450 0    47   Input ~ 0
VA10
Text GLabel 3350 6550 0    47   Input ~ 0
VA11
Text GLabel 6650 1200 2    47   Input ~ 0
VA0
Text GLabel 6650 1300 2    47   Input ~ 0
VA1
Text GLabel 6650 1400 2    47   Input ~ 0
VA2
Text GLabel 6650 1500 2    47   Input ~ 0
VA3
Text GLabel 6650 1600 2    47   Input ~ 0
VA4
Text GLabel 6650 1700 2    47   Input ~ 0
VA5
Text GLabel 6650 1800 2    47   Input ~ 0
VA6
Text GLabel 6650 1900 2    47   Input ~ 0
VA7
Text GLabel 6650 2000 2    47   Input ~ 0
VA8
Text GLabel 6650 2100 2    47   Input ~ 0
VA9
Text GLabel 6650 2200 2    47   Input ~ 0
VA10
Text GLabel 6650 2300 2    47   Input ~ 0
VA11
Text GLabel 6650 2400 2    47   Input ~ 0
VA12
Text GLabel 6650 2500 2    47   Input ~ 0
VA13
NoConn ~ 5200 2350
$Comp
L Vic2020mainboard-rescue:Ferrite_Bead_Small-Device FB7
U 1 1 5F767278
P 6300 850
F 0 "FB7" V 6063 850 50  0000 C CNN
F 1 " " V 6154 850 50  0001 C CNN
F 2 "Inductor_THT:L_Axial_L6.6mm_D2.7mm_P10.16mm_Horizontal_Vishay_IM-2" V 6230 850 50  0001 C CNN
F 3 "~" H 6300 850 50  0001 C CNN
	1    6300 850 
	0    1    1    0   
$EndComp
$Comp
L Vic2020mainboard-rescue:Ferrite_Bead_Small-Device FB8
U 1 1 5F768674
P 6300 1000
F 0 "FB8" V 6350 1100 50  0000 C CNN
F 1 "Ferrite_Bead_Small" V 6154 1000 50  0001 C CNN
F 2 "Inductor_THT:L_Axial_L6.6mm_D2.7mm_P10.16mm_Horizontal_Vishay_IM-2" V 6230 1000 50  0001 C CNN
F 3 "~" H 6300 1000 50  0001 C CNN
	1    6300 1000
	0    1    1    0   
$EndComp
Wire Wire Line
	5800 950  5800 850 
Wire Wire Line
	5800 850  6150 850 
$Comp
L Device:C C6
U 1 1 5F77E4F2
P 5650 850
F 0 "C6" V 5398 850 50  0000 C CNN
F 1 ".1UF" V 5489 850 50  0000 C CNN
F 2 "Capacitor_THT:C_Rect_L7.0mm_W2.0mm_P5.00mm" H 5688 700 50  0001 C CNN
F 3 "~" H 5650 850 50  0001 C CNN
	1    5650 850 
	0    1    1    0   
$EndComp
Connection ~ 5800 850 
$Comp
L power:GND #PWR033
U 1 1 5F77F20F
P 5400 850
F 0 "#PWR033" H 5400 600 50  0001 C CNN
F 1 "GND" V 5405 722 50  0000 R CNN
F 2 "" H 5400 850 50  0001 C CNN
F 3 "" H 5400 850 50  0001 C CNN
	1    5400 850 
	0    1    1    0   
$EndComp
Wire Wire Line
	5400 850  5500 850 
$Comp
L Vic2020mainboard-rescue:CP-Device C9
U 1 1 5F792C3C
P 6850 750
AR Path="/5F792C3C" Ref="C9"  Part="1" 
AR Path="/5F5BC33E/5F792C3C" Ref="C9"  Part="1" 
F 0 "C9" H 7000 650 50  0000 R CNN
F 1 "2.2uF" H 6800 650 50  0000 R CNN
F 2 "Capacitor_THT:CP_Radial_D4.0mm_P2.00mm" H 6888 600 50  0001 C CNN
F 3 "~" H 6850 750 50  0001 C CNN
	1    6850 750 
	-1   0    0    1   
$EndComp
$Comp
L Vic2020mainboard-rescue:CP-Device C37
U 1 1 5F794472
P 7250 750
AR Path="/5F794472" Ref="C37"  Part="1" 
AR Path="/5F5BC33E/5F794472" Ref="C37"  Part="1" 
F 0 "C37" H 7350 850 50  0000 R CNN
F 1 ".47uF" H 7200 650 50  0000 R CNN
F 2 "Capacitor_THT:CP_Radial_D4.0mm_P2.00mm" H 7288 600 50  0001 C CNN
F 3 "~" H 7250 750 50  0001 C CNN
	1    7250 750 
	-1   0    0    1   
$EndComp
Wire Wire Line
	7250 600  7250 550 
Wire Wire Line
	7250 550  6850 550 
Wire Wire Line
	5500 550  5500 850 
Connection ~ 5500 850 
Wire Wire Line
	6850 600  6850 550 
Connection ~ 6850 550 
Wire Wire Line
	6850 550  5500 550 
Wire Wire Line
	6400 850  6550 850 
Wire Wire Line
	6550 850  6550 900 
Wire Wire Line
	6550 900  6850 900 
Wire Wire Line
	6850 900  7250 900 
Connection ~ 6850 900 
Wire Wire Line
	7250 900  7550 900 
Connection ~ 7250 900 
Wire Wire Line
	6150 850  6150 1000
Wire Wire Line
	6150 1000 6200 1000
Connection ~ 6150 850 
Wire Wire Line
	6150 850  6200 850 
Wire Wire Line
	8100 1000 8100 2000
Wire Wire Line
	6400 1000 8100 1000
Wire Wire Line
	10150 750  8100 750 
Wire Wire Line
	8100 750  8100 1000
Wire Wire Line
	10150 750  10150 950 
Connection ~ 8100 1000
$Comp
L Vic2020mainboard-rescue:CP-Device C38
U 1 1 5F96202A
P 8950 2150
AR Path="/5F96202A" Ref="C38"  Part="1" 
AR Path="/5F5BC33E/5F96202A" Ref="C38"  Part="1" 
F 0 "C38" H 8850 2450 50  0000 L CNN
F 1 "10uF" H 8850 2350 50  0000 L CNN
F 2 "Capacitor_THT:CP_Radial_D4.0mm_P2.00mm" H 8988 2000 50  0001 C CNN
F 3 "~" H 8950 2150 50  0001 C CNN
	1    8950 2150
	1    0    0    -1  
$EndComp
Connection ~ 8950 2000
Wire Wire Line
	8950 2000 9300 2000
$Comp
L Vic2020mainboard-rescue:CP-Device C39
U 1 1 5F96349E
P 9450 2750
AR Path="/5F96349E" Ref="C39"  Part="1" 
AR Path="/5F5BC33E/5F96349E" Ref="C39"  Part="1" 
F 0 "C39" V 9300 2750 50  0000 C CNN
F 1 "47uF" V 9600 2700 50  0000 C CNN
F 2 "Capacitor_THT:CP_Radial_D4.0mm_P2.00mm" H 9488 2600 50  0001 C CNN
F 3 "~" H 9450 2750 50  0001 C CNN
	1    9450 2750
	0    1    1    0   
$EndComp
$Comp
L Vic2020mainboard-rescue:Ferrite_Bead_Small-Device FB9
U 1 1 5F9637C5
P 7750 3000
F 0 "FB9" V 7605 3000 50  0000 C CNN
F 1 "Ferrite_Bead_Small" V 7604 3000 50  0001 C CNN
F 2 "Inductor_THT:L_Axial_L6.6mm_D2.7mm_P10.16mm_Horizontal_Vishay_IM-2" V 7680 3000 50  0001 C CNN
F 3 "~" H 7750 3000 50  0001 C CNN
	1    7750 3000
	0    1    1    0   
$EndComp
Wire Wire Line
	7500 3000 7600 3000
$Comp
L Vic2020mainboard-rescue:Ferrite_Bead_Small-Device FB6
U 1 1 5F9795E0
P 4950 2200
F 0 "FB6" V 4805 2200 50  0000 C CNN
F 1 "Ferrite_Bead_Small" V 4804 2200 50  0001 C CNN
F 2 "Inductor_THT:L_Axial_L6.6mm_D2.7mm_P10.16mm_Horizontal_Vishay_IM-2" V 4880 2200 50  0001 C CNN
F 3 "~" H 4950 2200 50  0001 C CNN
	1    4950 2200
	0    1    1    0   
$EndComp
Wire Wire Line
	4850 2200 4650 2200
$Comp
L Vic2020mainboard-rescue:Ferrite_Bead_Small-Device FB5
U 1 1 5F98DF3B
P 4950 1300
F 0 "FB5" V 4805 1300 50  0000 C CNN
F 1 "Ferrite_Bead_Small" V 4804 1300 50  0001 C CNN
F 2 "Inductor_THT:L_Axial_L6.6mm_D2.7mm_P10.16mm_Horizontal_Vishay_IM-2" V 4880 1300 50  0001 C CNN
F 3 "~" H 4950 1300 50  0001 C CNN
	1    4950 1300
	0    1    1    0   
$EndComp
$Comp
L Vic2020mainboard-rescue:Ferrite_Bead_Small-Device FB4
U 1 1 5F98E82C
P 4800 1400
F 0 "FB4" V 4900 1250 50  0000 C CNN
F 1 "Ferrite_Bead_Small" V 4654 1400 50  0001 C CNN
F 2 "Inductor_THT:L_Axial_L6.6mm_D2.7mm_P10.16mm_Horizontal_Vishay_IM-2" V 4730 1400 50  0001 C CNN
F 3 "~" H 4800 1400 50  0001 C CNN
	1    4800 1400
	0    1    1    0   
$EndComp
Wire Wire Line
	4900 1400 5200 1400
Wire Wire Line
	4700 1300 4850 1300
Wire Wire Line
	1800 7150 3500 7150
Text GLabel 2400 2500 0    50   Input ~ 0
COLOR
Text GLabel 2400 2300 0    50   Input ~ 0
E
$Comp
L 74xx:74LS245 U23
U 1 1 5FA34F4B
P 6500 6000
F 0 "U23" H 6500 6250 50  0000 C CNN
F 1 "74LS245" H 6500 5700 50  0000 C CNN
F 2 "Package_DIP:DIP-20_W7.62mm_Socket" H 6500 6000 50  0001 C CNN
F 3 "http://www.ti.com/lit/gpn/sn74LS245" H 6500 6000 50  0001 C CNN
	1    6500 6000
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0138
U 1 1 5FA36233
P 6500 6950
F 0 "#PWR0138" H 6500 6700 50  0001 C CNN
F 1 "GND" H 6505 6777 50  0000 C CNN
F 2 "" H 6500 6950 50  0001 C CNN
F 3 "" H 6500 6950 50  0001 C CNN
	1    6500 6950
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0139
U 1 1 5FA36D35
P 5900 6400
F 0 "#PWR0139" H 5900 6150 50  0001 C CNN
F 1 "GND" V 5905 6272 50  0000 R CNN
F 2 "" H 5900 6400 50  0001 C CNN
F 3 "" H 5900 6400 50  0001 C CNN
	1    5900 6400
	0    1    1    0   
$EndComp
Wire Wire Line
	6500 6800 6500 6950
Wire Wire Line
	6000 6400 5900 6400
Wire Wire Line
	5550 6500 6000 6500
Wire Wire Line
	7000 5500 7150 5500
Wire Wire Line
	7000 5600 7150 5600
Wire Wire Line
	7000 5700 7150 5700
NoConn ~ 7000 5800
NoConn ~ 6000 5800
NoConn ~ 6000 5900
NoConn ~ 6000 6000
NoConn ~ 6000 6100
NoConn ~ 6000 6200
NoConn ~ 7000 6200
NoConn ~ 7000 6100
NoConn ~ 7000 6000
NoConn ~ 7000 5900
Text GLabel 7150 5500 2    50   Input ~ 0
A13
Text GLabel 7150 5600 2    50   Input ~ 0
A14
Text GLabel 7150 5700 2    50   Input ~ 0
A15
Text GLabel 5550 5500 0    50   Input ~ 0
MA13
Text GLabel 5550 5600 0    50   Input ~ 0
MA14
Text GLabel 5550 5700 0    50   Input ~ 0
MA15
Text GLabel 5550 6500 0    50   Input ~ 0
E
$Comp
L power:+5V #PWR0170
U 1 1 5FC6EDB7
P 6500 5000
F 0 "#PWR0170" H 6500 4850 50  0001 C CNN
F 1 "+5V" H 6515 5173 50  0000 C CNN
F 2 "" H 6500 5000 50  0001 C CNN
F 3 "" H 6500 5000 50  0001 C CNN
	1    6500 5000
	1    0    0    -1  
$EndComp
Wire Wire Line
	6500 5000 6500 5200
$Comp
L power:GND #PWR034
U 1 1 5FCF7773
P 4600 3850
F 0 "#PWR034" H 4600 3600 50  0001 C CNN
F 1 "GND" V 4605 3722 50  0000 R CNN
F 2 "" H 4600 3850 50  0001 C CNN
F 3 "" H 4600 3850 50  0001 C CNN
	1    4600 3850
	0    -1   -1   0   
$EndComp
$Comp
L Device:R R28
U 1 1 5FCF89FF
P 4350 3850
F 0 "R28" V 4250 3850 50  0000 C CNN
F 1 "1k" V 4350 3850 50  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P7.62mm_Horizontal" V 4280 3850 50  0001 C CNN
F 3 "~" H 4350 3850 50  0001 C CNN
	1    4350 3850
	0    1    1    0   
$EndComp
Wire Wire Line
	4500 3850 4600 3850
Wire Wire Line
	4200 3850 4100 3850
Wire Wire Line
	4100 3850 4100 3900
Connection ~ 4100 3900
Wire Wire Line
	5550 5500 5650 5500
Wire Wire Line
	5550 5600 5750 5600
Wire Wire Line
	5550 5700 5850 5700
$Comp
L Device:R R29
U 1 1 5FD8831F
P 5650 5250
F 0 "R29" V 5650 5550 50  0000 L CNN
F 1 "1k" V 5650 5200 50  0000 L CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P7.62mm_Horizontal" V 5580 5250 50  0001 C CNN
F 3 "~" H 5650 5250 50  0001 C CNN
	1    5650 5250
	1    0    0    -1  
$EndComp
$Comp
L Device:R R30
U 1 1 5FD88C18
P 5750 5250
F 0 "R30" V 5750 5550 50  0000 L CNN
F 1 "1k" V 5750 5200 50  0000 L CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P7.62mm_Horizontal" V 5680 5250 50  0001 C CNN
F 3 "~" H 5750 5250 50  0001 C CNN
	1    5750 5250
	1    0    0    -1  
$EndComp
Wire Wire Line
	5850 5400 5850 5700
Connection ~ 5850 5700
Wire Wire Line
	5850 5700 6000 5700
Wire Wire Line
	5750 5400 5750 5600
Connection ~ 5750 5600
Wire Wire Line
	5750 5600 6000 5600
Wire Wire Line
	5650 5400 5650 5500
Connection ~ 5650 5500
Wire Wire Line
	5650 5500 6000 5500
Wire Wire Line
	5650 5100 5650 5050
Wire Wire Line
	5750 5100 5750 5050
Wire Wire Line
	5850 5100 5850 5050
Wire Wire Line
	5850 5050 5750 5050
Wire Wire Line
	5750 5050 5650 5050
Connection ~ 5750 5050
$Comp
L power:GND #PWR035
U 1 1 5FE417A1
P 5400 5050
F 0 "#PWR035" H 5400 4800 50  0001 C CNN
F 1 "GND" V 5405 4922 50  0000 R CNN
F 2 "" H 5400 5050 50  0001 C CNN
F 3 "" H 5400 5050 50  0001 C CNN
	1    5400 5050
	0    1    1    0   
$EndComp
Wire Wire Line
	5650 5050 5400 5050
Connection ~ 5650 5050
$Comp
L Device:R R31
U 1 1 5FD88CB8
P 5850 5250
F 0 "R31" V 5850 5550 50  0000 L CNN
F 1 "1k" V 5850 5200 50  0000 L CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P7.62mm_Horizontal" V 5780 5250 50  0001 C CNN
F 3 "~" H 5850 5250 50  0001 C CNN
	1    5850 5250
	1    0    0    -1  
$EndComp
Text GLabel 2800 2000 0    50   Input ~ 0
RW
Text GLabel 4150 1100 2    50   Input ~ 0
D0
Text GLabel 4150 1200 2    50   Input ~ 0
D1
Text GLabel 4150 1300 2    50   Input ~ 0
D2
Text GLabel 4150 1400 2    50   Input ~ 0
D3
Text GLabel 4150 1500 2    50   Input ~ 0
D4
Text GLabel 4150 1600 2    50   Input ~ 0
D5
Text GLabel 4150 1700 2    50   Input ~ 0
D6
Text GLabel 4150 1800 2    50   Input ~ 0
D7
$Comp
L 74xx:74LS32 U24
U 2 1 6015526C
P 2750 2400
F 0 "U24" H 2750 2400 50  0000 C CNN
F 1 "74ALS32" H 2700 2200 50  0000 C CNN
F 2 "Package_DIP:DIP-14_W7.62mm_Socket" H 2750 2400 50  0001 C CNN
F 3 "http://www.ti.com/lit/gpn/sn74LS32" H 2750 2400 50  0001 C CNN
	2    2750 2400
	1    0    0    -1  
$EndComp
Wire Wire Line
	2400 2300 2450 2300
Wire Wire Line
	2400 2500 2450 2500
Wire Wire Line
	8100 2000 8950 2000
Wire Wire Line
	8100 2300 8100 2000
Connection ~ 8100 2000
Wire Wire Line
	9300 2800 9300 2750
Text GLabel 9100 3650 2    50   Input ~ 0
SVIDC
Text GLabel 7550 4750 0    50   Input ~ 0
VIDEOOUT
Text GLabel 8100 4400 0    50   Input ~ 0
SVIDC
Wire Wire Line
	8100 4550 8100 4400
Wire Wire Line
	8100 5250 8100 5150
Wire Wire Line
	9050 2800 9100 2800
Wire Wire Line
	8100 2650 8900 2650
Wire Wire Line
	8400 3000 8700 3000
Wire Wire Line
	8700 3000 8700 3400
Wire Wire Line
	8700 3400 9100 3400
Wire Wire Line
	9100 3400 9100 2800
Connection ~ 9100 2800
Wire Wire Line
	9100 2800 9300 2800
Wire Wire Line
	8050 3000 8100 3000
Wire Wire Line
	7850 3000 7950 3000
Wire Wire Line
	7600 3000 7600 3650
Wire Wire Line
	7600 3650 7850 3650
Connection ~ 7600 3000
Wire Wire Line
	7600 3000 7650 3000
$Comp
L Device:C C40
U 1 1 601370BA
P 8000 3650
F 0 "C40" V 7748 3650 50  0000 C CNN
F 1 ".1uf" V 7839 3650 50  0000 C CNN
F 2 "Capacitor_THT:C_Rect_L7.0mm_W2.0mm_P5.00mm" H 8038 3500 50  0001 C CNN
F 3 "~" H 8000 3650 50  0001 C CNN
	1    8000 3650
	0    1    1    0   
$EndComp
$Comp
L Device:R R36
U 1 1 60137E06
P 8400 3650
F 0 "R36" V 8193 3650 50  0000 C CNN
F 1 "75" V 8284 3650 50  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P7.62mm_Horizontal" V 8330 3650 50  0001 C CNN
F 3 "~" H 8400 3650 50  0001 C CNN
	1    8400 3650
	0    1    1    0   
$EndComp
Wire Wire Line
	8550 3650 9100 3650
Wire Wire Line
	8250 3650 8150 3650
Wire Wire Line
	7950 5250 7950 5400
Wire Wire Line
	8100 5250 7950 5250
Wire Wire Line
	7800 5250 7800 4950
Connection ~ 7950 5250
Wire Wire Line
	7950 5250 7800 5250
Wire Wire Line
	7800 4750 7550 4750
$EndSCHEMATC
