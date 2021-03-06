EESchema Schematic File Version 4
EELAYER 30 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 1 1
Title "Thermocouple Safety Switch"
Date ""
Rev "1"
Comp "LSR - FEMTO-ST"
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
$Comp
L Device:Thermocouple TC-1
U 1 1 615480E1
P 1000 1000
F 0 "TC-1" H 973 1325 50  0000 C CNN
F 1 "Thermocouple" H 973 1234 50  0000 C CNN
F 2 "Connector_Wire:SolderWire-1sqmm_1x02_P5.4mm_D1.4mm_OD2.7mm" H 425 1050 50  0001 C CNN
F 3 "~" H 425 1050 50  0001 C CNN
	1    1000 1000
	1    0    0    -1  
$EndComp
$Comp
L Teensy:Teensy4.0 U1
U 1 1 6155774A
P 5000 4600
F 0 "U1" H 5000 6215 50  0000 C CNN
F 1 "Teensy4.0" H 5000 6124 50  0000 C CNN
F 2 "Teensy:Teensy40_SMT" H 4600 4800 50  0001 C CNN
F 3 "" H 4600 4800 50  0001 C CNN
	1    5000 4600
	1    0    0    -1  
$EndComp
$Comp
L AD597:AD597ARZ IC1
U 1 1 6155BD6E
P 1400 1500
F 0 "IC1" H 1950 1765 50  0000 C CNN
F 1 "AD597ARZ" H 1950 1674 50  0000 C CNN
F 2 "AD597:SOIC127P600X175-8N" H 2350 1600 50  0001 L CNN
F 3 "http://www.mouser.com/ds/2/609/AD596_597-877171.pdf" H 2350 1500 50  0001 L CNN
F 4 "Thermocouple Conditioner AD597ARZ AD597ARZ, Instrumentation Amplifier, 15kHz 5  30 V, 8-Pin SOIC" H 2350 1400 50  0001 L CNN "Description"
F 5 "1.75" H 2350 1300 50  0001 L CNN "Height"
F 6 "Analog Devices" H 2350 1200 50  0001 L CNN "Manufacturer_Name"
F 7 "AD597ARZ" H 2350 1100 50  0001 L CNN "Manufacturer_Part_Number"
F 8 "584-AD597ARZ" H 2350 1000 50  0001 L CNN "Mouser Part Number"
F 9 "https://www.mouser.co.uk/ProductDetail/Analog-Devices/AD597ARZ/?qs=NmRFExCfTkHIKc%252BlbHjVKQ%3D%3D" H 2350 900 50  0001 L CNN "Mouser Price/Stock"
F 10 "AD597ARZ" H 2350 800 50  0001 L CNN "Arrow Part Number"
F 11 "https://www.arrow.com/en/products/ad597arz/analog-devices" H 2350 700 50  0001 L CNN "Arrow Price/Stock"
	1    1400 1500
	1    0    0    -1  
$EndComp
Wire Wire Line
	1100 900  1300 900 
Wire Wire Line
	1100 1100 2500 1100
Wire Wire Line
	950  2500 950  2350
Wire Wire Line
	950  1700 1400 1700
Connection ~ 950  1800
Wire Wire Line
	950  1800 950  1700
$Comp
L power:+9V #PWR0102
U 1 1 615779EB
P 2600 1200
F 0 "#PWR0102" H 2600 1050 50  0001 C CNN
F 1 "+9V" H 2615 1373 50  0000 C CNN
F 2 "" H 2600 1200 50  0001 C CNN
F 3 "" H 2600 1200 50  0001 C CNN
	1    2600 1200
	1    0    0    -1  
$EndComp
$Comp
L power:Earth #PWR0103
U 1 1 615790EB
P 3250 1600
F 0 "#PWR0103" H 3250 1350 50  0001 C CNN
F 1 "Earth" H 3250 1450 50  0001 C CNN
F 2 "" H 3250 1600 50  0001 C CNN
F 3 "~" H 3250 1600 50  0001 C CNN
	1    3250 1600
	1    0    0    -1  
$EndComp
Wire Wire Line
	950  2350 800  2350
Connection ~ 950  2350
Connection ~ 1300 1500
Wire Wire Line
	2800 1600 2600 1600
Connection ~ 2600 1600
Wire Wire Line
	3100 1700 3100 1800
Connection ~ 3100 1800
$Comp
L power:+5V #PWR0104
U 1 1 615980F8
P 6850 5250
F 0 "#PWR0104" H 6850 5100 50  0001 C CNN
F 1 "+5V" H 6865 5423 50  0000 C CNN
F 2 "" H 6850 5250 50  0001 C CNN
F 3 "" H 6850 5250 50  0001 C CNN
	1    6850 5250
	1    0    0    -1  
$EndComp
$Comp
L Device:C C13
U 1 1 61598DDF
P 6850 5900
F 0 "C13" H 6965 5946 50  0000 L CNN
F 1 "0.01??F" H 6965 5855 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric" H 6888 5750 50  0001 C CNN
F 3 "~" H 6850 5900 50  0001 C CNN
	1    6850 5900
	1    0    0    -1  
$EndComp
$Comp
L power:Earth #PWR0105
U 1 1 615994D7
P 6850 6150
F 0 "#PWR0105" H 6850 5900 50  0001 C CNN
F 1 "Earth" H 6850 6000 50  0001 C CNN
F 2 "" H 6850 6150 50  0001 C CNN
F 3 "~" H 6850 6150 50  0001 C CNN
	1    6850 6150
	1    0    0    -1  
$EndComp
Wire Wire Line
	6850 5250 6850 5550
Connection ~ 6850 5550
Wire Wire Line
	6850 5550 6850 5750
Wire Wire Line
	3900 5250 3100 5250
Wire Wire Line
	3100 1800 3100 5250
Text Notes 1050 2000 0    50   ~ 10
For compensation coils / MOT coils / ZS only
$Comp
L Device:Thermocouple TC-2
U 1 1 615E6DD9
P 3500 1000
F 0 "TC-2" H 3473 1325 50  0000 C CNN
F 1 "Thermocouple" H 3473 1234 50  0000 C CNN
F 2 "Connector_Wire:SolderWire-1sqmm_1x02_P5.4mm_D1.4mm_OD2.7mm" H 2925 1050 50  0001 C CNN
F 3 "~" H 2925 1050 50  0001 C CNN
	1    3500 1000
	1    0    0    -1  
$EndComp
$Comp
L AD597:AD597ARZ IC2
U 1 1 615E6DE7
P 4100 1500
F 0 "IC2" H 4650 1765 50  0000 C CNN
F 1 "AD597ARZ" H 4650 1674 50  0000 C CNN
F 2 "AD597:SOIC127P600X175-8N" H 5050 1600 50  0001 L CNN
F 3 "http://www.mouser.com/ds/2/609/AD596_597-877171.pdf" H 5050 1500 50  0001 L CNN
F 4 "Thermocouple Conditioner AD597ARZ AD597ARZ, Instrumentation Amplifier, 15kHz 5  30 V, 8-Pin SOIC" H 5050 1400 50  0001 L CNN "Description"
F 5 "1.75" H 5050 1300 50  0001 L CNN "Height"
F 6 "Analog Devices" H 5050 1200 50  0001 L CNN "Manufacturer_Name"
F 7 "AD597ARZ" H 5050 1100 50  0001 L CNN "Manufacturer_Part_Number"
F 8 "584-AD597ARZ" H 5050 1000 50  0001 L CNN "Mouser Part Number"
F 9 "https://www.mouser.co.uk/ProductDetail/Analog-Devices/AD597ARZ/?qs=NmRFExCfTkHIKc%252BlbHjVKQ%3D%3D" H 5050 900 50  0001 L CNN "Mouser Price/Stock"
F 10 "AD597ARZ" H 5050 800 50  0001 L CNN "Arrow Part Number"
F 11 "https://www.arrow.com/en/products/ad597arz/analog-devices" H 5050 700 50  0001 L CNN "Arrow Price/Stock"
	1    4100 1500
	1    0    0    -1  
$EndComp
Wire Wire Line
	3600 900  4100 900 
Wire Wire Line
	3600 1100 5200 1100
Wire Wire Line
	5200 1100 5200 1500
Wire Wire Line
	3550 2500 3550 2350
Wire Wire Line
	3550 1700 4100 1700
Connection ~ 3550 1800
Wire Wire Line
	3550 1800 3550 1700
$Comp
L power:+9V #PWR0108
U 1 1 615E6E02
P 5350 850
F 0 "#PWR0108" H 5350 700 50  0001 C CNN
F 1 "+9V" H 5365 1023 50  0000 C CNN
F 2 "" H 5350 850 50  0001 C CNN
F 3 "" H 5350 850 50  0001 C CNN
	1    5350 850 
	1    0    0    -1  
$EndComp
$Comp
L power:Earth #PWR0109
U 1 1 615E6E08
P 5950 1600
F 0 "#PWR0109" H 5950 1350 50  0001 C CNN
F 1 "Earth" H 5950 1450 50  0001 C CNN
F 2 "" H 5950 1600 50  0001 C CNN
F 3 "~" H 5950 1600 50  0001 C CNN
	1    5950 1600
	1    0    0    -1  
$EndComp
$Comp
L Device:C C4
U 1 1 615E6E0E
P 5700 1600
F 0 "C4" V 5952 1600 50  0000 C CNN
F 1 "0.01??F" V 5861 1600 50  0000 C CNN
F 2 "Capacitor_SMD:C_0805_2012Metric" H 5738 1450 50  0001 C CNN
F 3 "~" H 5700 1600 50  0001 C CNN
	1    5700 1600
	0    -1   -1   0   
$EndComp
Wire Wire Line
	4100 900  4100 1500
Wire Wire Line
	3550 2350 3400 2350
Connection ~ 3550 2350
Connection ~ 4100 1500
Wire Wire Line
	5350 850  5350 1600
Wire Wire Line
	5550 1600 5350 1600
Connection ~ 5350 1600
Wire Wire Line
	5200 1700 5600 1700
Wire Wire Line
	5600 1700 5600 1800
Wire Wire Line
	5200 1800 5600 1800
Text Notes 3750 2000 0    50   ~ 10
For compensation coils / MOT coils / ZS only
$Comp
L Device:Thermocouple TC-3
U 1 1 615EEAC7
P 6150 1000
F 0 "TC-3" H 6123 1325 50  0000 C CNN
F 1 "Thermocouple" H 6123 1234 50  0000 C CNN
F 2 "Connector_Wire:SolderWire-1sqmm_1x02_P5.4mm_D1.4mm_OD2.7mm" H 5575 1050 50  0001 C CNN
F 3 "~" H 5575 1050 50  0001 C CNN
	1    6150 1000
	1    0    0    -1  
$EndComp
$Comp
L AD597:AD597ARZ IC3
U 1 1 615EEAD5
P 6750 1500
F 0 "IC3" H 7300 1765 50  0000 C CNN
F 1 "AD597ARZ" H 7300 1674 50  0000 C CNN
F 2 "AD597:SOIC127P600X175-8N" H 7700 1600 50  0001 L CNN
F 3 "http://www.mouser.com/ds/2/609/AD596_597-877171.pdf" H 7700 1500 50  0001 L CNN
F 4 "Thermocouple Conditioner AD597ARZ AD597ARZ, Instrumentation Amplifier, 15kHz 5  30 V, 8-Pin SOIC" H 7700 1400 50  0001 L CNN "Description"
F 5 "1.75" H 7700 1300 50  0001 L CNN "Height"
F 6 "Analog Devices" H 7700 1200 50  0001 L CNN "Manufacturer_Name"
F 7 "AD597ARZ" H 7700 1100 50  0001 L CNN "Manufacturer_Part_Number"
F 8 "584-AD597ARZ" H 7700 1000 50  0001 L CNN "Mouser Part Number"
F 9 "https://www.mouser.co.uk/ProductDetail/Analog-Devices/AD597ARZ/?qs=NmRFExCfTkHIKc%252BlbHjVKQ%3D%3D" H 7700 900 50  0001 L CNN "Mouser Price/Stock"
F 10 "AD597ARZ" H 7700 800 50  0001 L CNN "Arrow Part Number"
F 11 "https://www.arrow.com/en/products/ad597arz/analog-devices" H 7700 700 50  0001 L CNN "Arrow Price/Stock"
	1    6750 1500
	1    0    0    -1  
$EndComp
Wire Wire Line
	6250 900  6750 900 
Wire Wire Line
	6250 1100 7850 1100
Wire Wire Line
	7850 1100 7850 1500
Wire Wire Line
	6250 2500 6250 2350
Wire Wire Line
	6250 1700 6750 1700
Connection ~ 6250 1800
Wire Wire Line
	6250 1800 6250 1700
$Comp
L power:+9V #PWR0111
U 1 1 615EEAF0
P 8000 850
F 0 "#PWR0111" H 8000 700 50  0001 C CNN
F 1 "+9V" H 8015 1023 50  0000 C CNN
F 2 "" H 8000 850 50  0001 C CNN
F 3 "" H 8000 850 50  0001 C CNN
	1    8000 850 
	1    0    0    -1  
$EndComp
$Comp
L power:Earth #PWR0112
U 1 1 615EEAF6
P 8600 1600
F 0 "#PWR0112" H 8600 1350 50  0001 C CNN
F 1 "Earth" H 8600 1450 50  0001 C CNN
F 2 "" H 8600 1600 50  0001 C CNN
F 3 "~" H 8600 1600 50  0001 C CNN
	1    8600 1600
	1    0    0    -1  
$EndComp
$Comp
L Device:C C6
U 1 1 615EEAFC
P 8350 1600
F 0 "C6" V 8602 1600 50  0000 C CNN
F 1 "0.01??F" V 8511 1600 50  0000 C CNN
F 2 "Capacitor_SMD:C_0805_2012Metric" H 8388 1450 50  0001 C CNN
F 3 "~" H 8350 1600 50  0001 C CNN
	1    8350 1600
	0    -1   -1   0   
$EndComp
Wire Wire Line
	6750 900  6750 1500
Wire Wire Line
	6250 2350 6100 2350
Wire Wire Line
	6100 2350 6100 1500
Wire Wire Line
	6100 1500 6750 1500
Connection ~ 6250 2350
Connection ~ 6750 1500
Wire Wire Line
	8000 850  8000 1600
Wire Wire Line
	8200 1600 8000 1600
Connection ~ 8000 1600
Wire Wire Line
	7850 1700 8250 1700
Wire Wire Line
	8250 1700 8250 1800
Wire Wire Line
	7850 1800 8250 1800
Text Notes 6400 2000 0    50   ~ 10
For compensation coils / MOT coils / ZS only
$Comp
L Device:Thermocouple TC-4
U 1 1 615F600B
P 8650 1000
F 0 "TC-4" H 8623 1325 50  0000 C CNN
F 1 "Thermocouple" H 8623 1234 50  0000 C CNN
F 2 "Connector_Wire:SolderWire-1sqmm_1x02_P5.4mm_D1.4mm_OD2.7mm" H 8075 1050 50  0001 C CNN
F 3 "~" H 8075 1050 50  0001 C CNN
	1    8650 1000
	1    0    0    -1  
$EndComp
$Comp
L AD597:AD597ARZ IC4
U 1 1 615F6019
P 9250 1500
F 0 "IC4" H 9800 1765 50  0000 C CNN
F 1 "AD597ARZ" H 9800 1674 50  0000 C CNN
F 2 "AD597:SOIC127P600X175-8N" H 10200 1600 50  0001 L CNN
F 3 "http://www.mouser.com/ds/2/609/AD596_597-877171.pdf" H 10200 1500 50  0001 L CNN
F 4 "Thermocouple Conditioner AD597ARZ AD597ARZ, Instrumentation Amplifier, 15kHz 5  30 V, 8-Pin SOIC" H 10200 1400 50  0001 L CNN "Description"
F 5 "1.75" H 10200 1300 50  0001 L CNN "Height"
F 6 "Analog Devices" H 10200 1200 50  0001 L CNN "Manufacturer_Name"
F 7 "AD597ARZ" H 10200 1100 50  0001 L CNN "Manufacturer_Part_Number"
F 8 "584-AD597ARZ" H 10200 1000 50  0001 L CNN "Mouser Part Number"
F 9 "https://www.mouser.co.uk/ProductDetail/Analog-Devices/AD597ARZ/?qs=NmRFExCfTkHIKc%252BlbHjVKQ%3D%3D" H 10200 900 50  0001 L CNN "Mouser Price/Stock"
F 10 "AD597ARZ" H 10200 800 50  0001 L CNN "Arrow Part Number"
F 11 "https://www.arrow.com/en/products/ad597arz/analog-devices" H 10200 700 50  0001 L CNN "Arrow Price/Stock"
	1    9250 1500
	1    0    0    -1  
$EndComp
Wire Wire Line
	8750 900  9250 900 
Wire Wire Line
	8750 1100 10350 1100
Wire Wire Line
	10350 1100 10350 1500
Wire Wire Line
	8900 2500 8900 2350
Wire Wire Line
	8900 1700 9250 1700
Connection ~ 8900 1800
Wire Wire Line
	8900 1800 8900 1700
$Comp
L power:+9V #PWR0114
U 1 1 615F6034
P 10450 850
F 0 "#PWR0114" H 10450 700 50  0001 C CNN
F 1 "+9V" H 10465 1023 50  0000 C CNN
F 2 "" H 10450 850 50  0001 C CNN
F 3 "" H 10450 850 50  0001 C CNN
	1    10450 850 
	1    0    0    -1  
$EndComp
$Comp
L power:Earth #PWR0115
U 1 1 615F603A
P 11000 1700
F 0 "#PWR0115" H 11000 1450 50  0001 C CNN
F 1 "Earth" H 11000 1550 50  0001 C CNN
F 2 "" H 11000 1700 50  0001 C CNN
F 3 "~" H 11000 1700 50  0001 C CNN
	1    11000 1700
	1    0    0    -1  
$EndComp
$Comp
L Device:C C8
U 1 1 615F6040
P 10850 1600
F 0 "C8" V 10598 1600 50  0000 C CNN
F 1 "0.01??F" V 10689 1600 50  0000 C CNN
F 2 "Capacitor_SMD:C_0805_2012Metric" H 10888 1450 50  0001 C CNN
F 3 "~" H 10850 1600 50  0001 C CNN
	1    10850 1600
	0    1    1    0   
$EndComp
Wire Wire Line
	9250 900  9250 1500
Wire Wire Line
	8900 2350 8750 2350
Wire Wire Line
	8750 2350 8750 1500
Wire Wire Line
	8750 1500 9250 1500
Connection ~ 8900 2350
Connection ~ 9250 1500
Wire Wire Line
	10450 850  10450 1600
Wire Wire Line
	10700 1600 10450 1600
Connection ~ 10450 1600
Wire Wire Line
	10350 1700 10750 1700
Wire Wire Line
	10750 1700 10750 1800
Wire Wire Line
	10350 1800 10750 1800
Text Notes 8900 2000 0    50   ~ 10
For compensation coils / MOT coils / ZS only
$Comp
L Device:Thermocouple TC-5
U 1 1 615FD500
P 750 5400
F 0 "TC-5" H 723 5725 50  0000 C CNN
F 1 "Thermocouple" H 723 5634 50  0000 C CNN
F 2 "Connector_Wire:SolderWire-1sqmm_1x02_P5.4mm_D1.4mm_OD2.7mm" H 175 5450 50  0001 C CNN
F 3 "~" H 175 5450 50  0001 C CNN
	1    750  5400
	1    0    0    -1  
$EndComp
$Comp
L AD597:AD597ARZ IC5
U 1 1 615FD50E
P 1150 5900
F 0 "IC5" H 1700 6165 50  0000 C CNN
F 1 "AD597ARZ" H 1700 6074 50  0000 C CNN
F 2 "AD597:SOIC127P600X175-8N" H 2100 6000 50  0001 L CNN
F 3 "http://www.mouser.com/ds/2/609/AD596_597-877171.pdf" H 2100 5900 50  0001 L CNN
F 4 "Thermocouple Conditioner AD597ARZ AD597ARZ, Instrumentation Amplifier, 15kHz 5  30 V, 8-Pin SOIC" H 2100 5800 50  0001 L CNN "Description"
F 5 "1.75" H 2100 5700 50  0001 L CNN "Height"
F 6 "Analog Devices" H 2100 5600 50  0001 L CNN "Manufacturer_Name"
F 7 "AD597ARZ" H 2100 5500 50  0001 L CNN "Manufacturer_Part_Number"
F 8 "584-AD597ARZ" H 2100 5400 50  0001 L CNN "Mouser Part Number"
F 9 "https://www.mouser.co.uk/ProductDetail/Analog-Devices/AD597ARZ/?qs=NmRFExCfTkHIKc%252BlbHjVKQ%3D%3D" H 2100 5300 50  0001 L CNN "Mouser Price/Stock"
F 10 "AD597ARZ" H 2100 5200 50  0001 L CNN "Arrow Part Number"
F 11 "https://www.arrow.com/en/products/ad597arz/analog-devices" H 2100 5100 50  0001 L CNN "Arrow Price/Stock"
	1    1150 5900
	1    0    0    -1  
$EndComp
Wire Wire Line
	2250 5500 2250 5900
Connection ~ 900  6200
Wire Wire Line
	900  6200 900  6100
$Comp
L power:+9V #PWR0117
U 1 1 615FD529
P 2400 5650
F 0 "#PWR0117" H 2400 5500 50  0001 C CNN
F 1 "+9V" H 2415 5823 50  0000 C CNN
F 2 "" H 2400 5650 50  0001 C CNN
F 3 "" H 2400 5650 50  0001 C CNN
	1    2400 5650
	1    0    0    -1  
$EndComp
$Comp
L power:Earth #PWR0118
U 1 1 615FD52F
P 2950 6000
F 0 "#PWR0118" H 2950 5750 50  0001 C CNN
F 1 "Earth" H 2950 5850 50  0001 C CNN
F 2 "" H 2950 6000 50  0001 C CNN
F 3 "~" H 2950 6000 50  0001 C CNN
	1    2950 6000
	1    0    0    -1  
$EndComp
$Comp
L Device:C C12
U 1 1 615FD535
P 2700 6000
F 0 "C12" V 2952 6000 50  0000 C CNN
F 1 "0.01??F" V 2861 6000 50  0000 C CNN
F 2 "Capacitor_SMD:C_0805_2012Metric" H 2738 5850 50  0001 C CNN
F 3 "~" H 2700 6000 50  0001 C CNN
	1    2700 6000
	0    -1   -1   0   
$EndComp
Wire Wire Line
	1150 5300 1150 5900
Wire Wire Line
	900  6750 750  6750
Wire Wire Line
	750  6750 750  5900
Connection ~ 1150 5900
Text Notes 1450 6400 0    50   ~ 10
For oven only
Wire Wire Line
	3900 5350 3150 5350
Wire Wire Line
	3150 5350 3150 2750
Wire Wire Line
	3150 2750 5600 2750
Wire Wire Line
	5600 2750 5600 1800
Connection ~ 5600 1800
Wire Wire Line
	3900 5450 3200 5450
Wire Wire Line
	3200 5450 3200 2800
Wire Wire Line
	3200 2800 8250 2800
Wire Wire Line
	8250 2800 8250 1800
Connection ~ 8250 1800
Wire Wire Line
	3900 5550 3250 5550
Wire Wire Line
	3250 5550 3250 2850
Wire Wire Line
	3250 2850 10750 2850
Connection ~ 10750 1800
$Comp
L Device:R R1
U 1 1 6161D048
P 2700 6400
F 0 "R1" V 2493 6400 50  0000 C CNN
F 1 "5.7 kOhms" V 2584 6400 50  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P10.16mm_Horizontal" V 2630 6400 50  0001 C CNN
F 3 "~" H 2700 6400 50  0001 C CNN
	1    2700 6400
	0    1    1    0   
$EndComp
Wire Wire Line
	2400 6400 2550 6400
$Comp
L Device:Thermocouple TC-6
U 1 1 61640153
P 700 3100
F 0 "TC-6" H 673 3425 50  0000 C CNN
F 1 "Thermocouple" H 673 3334 50  0000 C CNN
F 2 "Connector_Wire:SolderWire-1sqmm_1x02_P5.4mm_D1.4mm_OD2.7mm" H 125 3150 50  0001 C CNN
F 3 "~" H 125 3150 50  0001 C CNN
	1    700  3100
	1    0    0    -1  
$EndComp
$Comp
L AD597:AD597ARZ IC6
U 1 1 61640161
P 1300 3600
F 0 "IC6" H 1850 3865 50  0000 C CNN
F 1 "AD597ARZ" H 1850 3774 50  0000 C CNN
F 2 "AD597:SOIC127P600X175-8N" H 2250 3700 50  0001 L CNN
F 3 "http://www.mouser.com/ds/2/609/AD596_597-877171.pdf" H 2250 3600 50  0001 L CNN
F 4 "Thermocouple Conditioner AD597ARZ AD597ARZ, Instrumentation Amplifier, 15kHz 5  30 V, 8-Pin SOIC" H 2250 3500 50  0001 L CNN "Description"
F 5 "1.75" H 2250 3400 50  0001 L CNN "Height"
F 6 "Analog Devices" H 2250 3300 50  0001 L CNN "Manufacturer_Name"
F 7 "AD597ARZ" H 2250 3200 50  0001 L CNN "Manufacturer_Part_Number"
F 8 "584-AD597ARZ" H 2250 3100 50  0001 L CNN "Mouser Part Number"
F 9 "https://www.mouser.co.uk/ProductDetail/Analog-Devices/AD597ARZ/?qs=NmRFExCfTkHIKc%252BlbHjVKQ%3D%3D" H 2250 3000 50  0001 L CNN "Mouser Price/Stock"
F 10 "AD597ARZ" H 2250 2900 50  0001 L CNN "Arrow Part Number"
F 11 "https://www.arrow.com/en/products/ad597arz/analog-devices" H 2250 2800 50  0001 L CNN "Arrow Price/Stock"
	1    1300 3600
	1    0    0    -1  
$EndComp
Wire Wire Line
	800  3000 1300 3000
Wire Wire Line
	800  3200 2400 3200
Wire Wire Line
	2400 3200 2400 3600
$Comp
L power:+9V #PWR0121
U 1 1 6164017C
P 2500 3300
F 0 "#PWR0121" H 2500 3150 50  0001 C CNN
F 1 "+9V" H 2515 3473 50  0000 C CNN
F 2 "" H 2500 3300 50  0001 C CNN
F 3 "" H 2500 3300 50  0001 C CNN
	1    2500 3300
	1    0    0    -1  
$EndComp
$Comp
L power:Earth #PWR0122
U 1 1 61640182
P 3000 3700
F 0 "#PWR0122" H 3000 3450 50  0001 C CNN
F 1 "Earth" H 3000 3550 50  0001 C CNN
F 2 "" H 3000 3700 50  0001 C CNN
F 3 "~" H 3000 3700 50  0001 C CNN
	1    3000 3700
	1    0    0    -1  
$EndComp
$Comp
L Device:C C10
U 1 1 61640188
P 2750 3700
F 0 "C10" H 2865 3746 50  0000 L CNN
F 1 "0.01??F" H 2865 3655 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric" H 2788 3550 50  0001 C CNN
F 3 "~" H 2750 3700 50  0001 C CNN
	1    2750 3700
	0    -1   -1   0   
$EndComp
Wire Wire Line
	1300 3000 1300 3600
Connection ~ 1300 3600
Wire Wire Line
	2500 3800 2500 3900
Text Notes 1600 4100 0    50   ~ 10
For oven only
Wire Wire Line
	950  3800 950  3900
Wire Wire Line
	950  3800 1300 3800
Wire Wire Line
	1300 3900 950  3900
Connection ~ 950  3900
Wire Wire Line
	950  4450 750  4450
Wire Wire Line
	750  4450 750  3600
Connection ~ 950  4450
Wire Wire Line
	950  4450 950  4600
Wire Wire Line
	750  3600 1300 3600
Connection ~ 2500 3700
Wire Wire Line
	2500 3700 2400 3700
$Comp
L Device:R R3
U 1 1 616A3B19
P 2500 4150
F 0 "R3" H 2570 4196 50  0000 L CNN
F 1 "5.7 kOhms" H 2570 4105 50  0000 L CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P10.16mm_Horizontal" V 2430 4150 50  0001 C CNN
F 3 "~" H 2500 4150 50  0001 C CNN
	1    2500 4150
	1    0    0    -1  
$EndComp
$Comp
L Device:R R4
U 1 1 616A5674
P 2500 4650
F 0 "R4" H 2570 4696 50  0000 L CNN
F 1 "3.3 kOhms" H 2570 4605 50  0000 L CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P10.16mm_Horizontal" V 2430 4650 50  0001 C CNN
F 3 "~" H 2500 4650 50  0001 C CNN
	1    2500 4650
	1    0    0    -1  
$EndComp
Wire Wire Line
	2500 4900 2500 4800
Connection ~ 2500 3900
Wire Wire Line
	2500 4300 2500 4400
Wire Wire Line
	2500 4400 3050 4400
Connection ~ 2500 4400
Wire Wire Line
	2500 4400 2500 4500
Wire Wire Line
	2400 6000 2550 6000
Wire Wire Line
	2400 5650 2400 6000
Connection ~ 3100 6400
Wire Wire Line
	3100 5650 3900 5650
Wire Wire Line
	3100 5650 3100 6400
Wire Wire Line
	2500 3300 2500 3700
Wire Wire Line
	3050 5750 3900 5750
Wire Wire Line
	1300 1500 1300 900 
Wire Wire Line
	1300 1500 1400 1500
Wire Wire Line
	2500 1500 2500 1100
Wire Wire Line
	2500 1700 3100 1700
Wire Wire Line
	2500 1800 3100 1800
Wire Wire Line
	2600 1200 2600 1600
Wire Wire Line
	1400 1800 950  1800
Wire Wire Line
	800  2350 800  1500
Wire Wire Line
	800  1500 1300 1500
Wire Wire Line
	4100 1800 3550 1800
Wire Wire Line
	3400 2350 3400 1500
Wire Wire Line
	3400 1500 4100 1500
Wire Wire Line
	2400 3800 2500 3800
Wire Wire Line
	2400 3900 2500 3900
Wire Wire Line
	2500 3900 2500 4000
$Comp
L Device:R R5
U 1 1 61861893
P 4300 6800
F 0 "R5" H 4370 6846 50  0000 L CNN
F 1 "220 Ohms" H 4370 6755 50  0000 L CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P10.16mm_Horizontal" V 4230 6800 50  0001 C CNN
F 3 "~" H 4300 6800 50  0001 C CNN
	1    4300 6800
	1    0    0    -1  
$EndComp
$Comp
L Device:R R6
U 1 1 61861EA5
P 4550 6550
F 0 "R6" H 4620 6596 50  0000 L CNN
F 1 "220 Ohms" H 4620 6505 50  0000 L CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P10.16mm_Horizontal" V 4480 6550 50  0001 C CNN
F 3 "~" H 4550 6550 50  0001 C CNN
	1    4550 6550
	1    0    0    -1  
$EndComp
$Comp
L Device:LED D1
U 1 1 61862939
P 4300 7150
F 0 "D1" V 4339 7032 50  0000 R CNN
F 1 "LED" V 4248 7032 50  0000 R CNN
F 2 "LED_THT:LED_D3.0mm" H 4300 7150 50  0001 C CNN
F 3 "~" H 4300 7150 50  0001 C CNN
	1    4300 7150
	0    -1   -1   0   
$EndComp
$Comp
L Device:LED D2
U 1 1 61863B14
P 4550 7000
F 0 "D2" V 4589 6882 50  0000 R CNN
F 1 "LED" V 4498 6882 50  0000 R CNN
F 2 "LED_THT:LED_D3.0mm" H 4550 7000 50  0001 C CNN
F 3 "~" H 4550 7000 50  0001 C CNN
	1    4550 7000
	0    -1   -1   0   
$EndComp
Wire Wire Line
	4300 6950 4300 7000
Wire Wire Line
	4550 6700 4550 6850
Wire Wire Line
	4300 7300 4300 7400
Wire Wire Line
	4300 7400 4450 7400
Wire Wire Line
	4550 7150 4550 7400
Wire Wire Line
	4550 7400 4450 7400
Connection ~ 4450 7400
Wire Wire Line
	6400 5650 6100 5650
Wire Wire Line
	6850 6150 6850 6050
$Comp
L Device:R R7
U 1 1 618CF54B
P 5000 6800
F 0 "R7" H 5070 6846 50  0000 L CNN
F 1 "220 Ohms" H 5070 6755 50  0000 L CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P10.16mm_Horizontal" V 4930 6800 50  0001 C CNN
F 3 "~" H 5000 6800 50  0001 C CNN
	1    5000 6800
	1    0    0    -1  
$EndComp
$Comp
L Device:R R8
U 1 1 618D08B4
P 5400 6550
F 0 "R8" H 5470 6596 50  0000 L CNN
F 1 "220 Ohms" H 5470 6505 50  0000 L CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P10.16mm_Horizontal" V 5330 6550 50  0001 C CNN
F 3 "~" H 5400 6550 50  0001 C CNN
	1    5400 6550
	1    0    0    -1  
$EndComp
$Comp
L Device:LED D3
U 1 1 618D0CF8
P 5000 7150
F 0 "D3" V 5039 7032 50  0000 R CNN
F 1 "LED" V 4948 7032 50  0000 R CNN
F 2 "LED_THT:LED_D3.0mm" H 5000 7150 50  0001 C CNN
F 3 "~" H 5000 7150 50  0001 C CNN
	1    5000 7150
	0    -1   -1   0   
$EndComp
$Comp
L Device:LED D4
U 1 1 618D14CA
P 5400 7000
F 0 "D4" V 5439 6882 50  0000 R CNN
F 1 "LED" V 5348 6882 50  0000 R CNN
F 2 "LED_THT:LED_D3.0mm" H 5400 7000 50  0001 C CNN
F 3 "~" H 5400 7000 50  0001 C CNN
	1    5400 7000
	0    -1   -1   0   
$EndComp
Wire Wire Line
	5400 6700 5400 6850
Wire Wire Line
	5000 7300 5000 7400
Wire Wire Line
	5000 7400 5200 7400
Wire Wire Line
	5200 7400 5200 7500
Wire Wire Line
	5200 7400 5400 7400
Wire Wire Line
	5400 7400 5400 7150
Connection ~ 5200 7400
NoConn ~ 1150 6000
NoConn ~ 1300 3700
NoConn ~ 1400 1600
NoConn ~ 4100 1600
NoConn ~ 6750 1600
NoConn ~ 9250 1600
Wire Wire Line
	2500 1600 2600 1600
Wire Wire Line
	3250 1600 3100 1600
Wire Wire Line
	750  5900 1150 5900
Wire Wire Line
	900  6100 1150 6100
Wire Wire Line
	850  5300 1150 5300
Wire Wire Line
	850  5500 2250 5500
Wire Wire Line
	2400 6100 2400 6200
Connection ~ 2400 6200
Wire Wire Line
	2400 6200 2400 6400
Connection ~ 2400 6000
Wire Wire Line
	2250 6000 2400 6000
Wire Wire Line
	2850 6000 2950 6000
Wire Wire Line
	5200 1600 5350 1600
Wire Wire Line
	5950 1600 5850 1600
Wire Wire Line
	6750 1800 6250 1800
Wire Wire Line
	7850 1600 8000 1600
Wire Wire Line
	10350 1600 10450 1600
Wire Wire Line
	11000 1700 11000 1600
Wire Wire Line
	9250 1800 8900 1800
Wire Wire Line
	10750 1800 10750 2850
Wire Wire Line
	8600 1600 8500 1600
$Comp
L Device:C C2
U 1 1 61579F11
P 2950 1600
F 0 "C2" H 3065 1646 50  0000 L CNN
F 1 "0.01??F" H 3065 1555 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric" H 2988 1450 50  0001 C CNN
F 3 "~" H 2950 1600 50  0001 C CNN
	1    2950 1600
	0    -1   -1   0   
$EndComp
Wire Wire Line
	2600 3700 2500 3700
Wire Wire Line
	3000 3700 2900 3700
Wire Wire Line
	1150 6200 900  6200
Wire Wire Line
	5850 6950 5850 7000
Connection ~ 6050 7400
Wire Wire Line
	6250 7400 6250 7150
Wire Wire Line
	6050 7400 6250 7400
Wire Wire Line
	6050 7400 6050 7500
Wire Wire Line
	5850 7400 6050 7400
Wire Wire Line
	5850 7300 5850 7400
Wire Wire Line
	6250 6700 6250 6850
$Comp
L Device:LED D6
U 1 1 6193BF66
P 6250 7000
F 0 "D6" V 6289 6882 50  0000 R CNN
F 1 "LED" V 6198 6882 50  0000 R CNN
F 2 "LED_THT:LED_D3.0mm" H 6250 7000 50  0001 C CNN
F 3 "~" H 6250 7000 50  0001 C CNN
	1    6250 7000
	0    -1   -1   0   
$EndComp
$Comp
L Device:LED D5
U 1 1 6193BF60
P 5850 7150
F 0 "D5" V 5889 7032 50  0000 R CNN
F 1 "LED" V 5798 7032 50  0000 R CNN
F 2 "LED_THT:LED_D3.0mm" H 5850 7150 50  0001 C CNN
F 3 "~" H 5850 7150 50  0001 C CNN
	1    5850 7150
	0    -1   -1   0   
$EndComp
$Comp
L Device:R R10
U 1 1 6193BF5A
P 6250 6550
F 0 "R10" H 6320 6596 50  0000 L CNN
F 1 "220 Ohms" H 6320 6505 50  0000 L CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P10.16mm_Horizontal" V 6180 6550 50  0001 C CNN
F 3 "~" H 6250 6550 50  0001 C CNN
	1    6250 6550
	1    0    0    -1  
$EndComp
$Comp
L Device:R R9
U 1 1 6193BF54
P 5850 6800
F 0 "R9" H 5920 6846 50  0000 L CNN
F 1 "220 Ohms" H 5920 6755 50  0000 L CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P10.16mm_Horizontal" V 5780 6800 50  0001 C CNN
F 3 "~" H 5850 6800 50  0001 C CNN
	1    5850 6800
	1    0    0    -1  
$EndComp
NoConn ~ 6100 3250
NoConn ~ 6100 3350
NoConn ~ 6100 3450
NoConn ~ 6100 3550
NoConn ~ 6100 3650
NoConn ~ 6100 3750
NoConn ~ 6100 3850
NoConn ~ 6100 3950
NoConn ~ 6100 5150
NoConn ~ 6100 5050
NoConn ~ 6100 4950
NoConn ~ 6100 4850
NoConn ~ 6100 4750
NoConn ~ 6100 4650
NoConn ~ 6100 4550
NoConn ~ 6100 4450
NoConn ~ 6100 4350
NoConn ~ 6100 4250
NoConn ~ 6100 4150
NoConn ~ 6100 4050
NoConn ~ 3900 3250
NoConn ~ 3900 4850
NoConn ~ 3900 4750
Wire Wire Line
	4450 7500 4450 7400
Wire Wire Line
	3050 4400 3050 5750
Wire Wire Line
	2250 6100 2400 6100
Wire Wire Line
	2250 6200 2400 6200
Wire Wire Line
	2850 6400 3100 6400
Wire Wire Line
	3100 6550 3100 6400
$Comp
L Device:R R2
U 1 1 6161C695
P 3100 6700
F 0 "R2" V 2893 6700 50  0000 C CNN
F 1 "3.3 kOhms" V 2984 6700 50  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P10.16mm_Horizontal" V 3030 6700 50  0001 C CNN
F 3 "~" H 3100 6700 50  0001 C CNN
	1    3100 6700
	1    0    0    -1  
$EndComp
Wire Wire Line
	3100 6850 3100 6900
Wire Wire Line
	6100 5550 6850 5550
Wire Wire Line
	3900 3350 3550 3350
Wire Wire Line
	3550 3350 3550 6350
Wire Wire Line
	3550 6350 4300 6350
Wire Wire Line
	4300 6350 4300 6650
Wire Wire Line
	4550 6400 4550 6300
Wire Wire Line
	4550 6300 3600 6300
Wire Wire Line
	3600 6300 3600 3450
Wire Wire Line
	3600 3450 3900 3450
Wire Wire Line
	5000 6250 3650 6250
Wire Wire Line
	3650 6250 3650 3550
Wire Wire Line
	3650 3550 3900 3550
Wire Wire Line
	5400 6400 5400 6200
Wire Wire Line
	5400 6200 3700 6200
Wire Wire Line
	3700 6200 3700 3650
Wire Wire Line
	3700 3650 3900 3650
Wire Wire Line
	3900 3750 3750 3750
Wire Wire Line
	3750 3750 3750 6150
Wire Wire Line
	3750 6150 5850 6150
Wire Wire Line
	5850 6150 5850 6650
Wire Wire Line
	3900 3850 3800 3850
Wire Wire Line
	3800 3850 3800 6100
Wire Wire Line
	3800 6100 6250 6100
Wire Wire Line
	6250 6100 6250 6400
Wire Wire Line
	5000 6950 5000 7000
Wire Wire Line
	5000 6650 5000 6250
NoConn ~ 6100 5450
NoConn ~ 6100 5750
NoConn ~ 6100 5850
NoConn ~ 6100 5950
NoConn ~ 3900 5950
NoConn ~ 3900 5850
NoConn ~ 3900 5150
NoConn ~ 3900 4650
NoConn ~ 3900 4950
NoConn ~ 3900 4350
NoConn ~ 3900 4450
NoConn ~ 3900 4550
NoConn ~ 3900 4250
NoConn ~ 3900 4150
NoConn ~ 3900 4050
NoConn ~ 3900 3950
NoConn ~ 3900 5050
$Comp
L power:Earth #PWR0127
U 1 1 63D1F167
P 8550 4350
F 0 "#PWR0127" H 8550 4100 50  0001 C CNN
F 1 "Earth" H 8550 4200 50  0001 C CNN
F 2 "" H 8550 4350 50  0001 C CNN
F 3 "~" H 8550 4350 50  0001 C CNN
	1    8550 4350
	1    0    0    -1  
$EndComp
$Comp
L power:+9V #PWR0128
U 1 1 63D1FE1D
P 8950 4150
F 0 "#PWR0128" H 8950 4000 50  0001 C CNN
F 1 "+9V" H 8965 4323 50  0000 C CNN
F 2 "" H 8950 4150 50  0001 C CNN
F 3 "" H 8950 4150 50  0001 C CNN
	1    8950 4150
	1    0    0    -1  
$EndComp
$Comp
L Connector:Conn_01x01_Female J2
U 1 1 63D2083E
P 8750 4350
F 0 "J2" H 8778 4376 50  0000 L CNN
F 1 "Conn_01x01_Female" H 8778 4285 50  0000 L CNN
F 2 "Connector_Wire:SolderWire-2sqmm_1x01_D2mm_OD3.9mm" H 8750 4350 50  0001 C CNN
F 3 "~" H 8750 4350 50  0001 C CNN
	1    8750 4350
	1    0    0    -1  
$EndComp
$Comp
L Connector:Conn_01x01_Female J1
U 1 1 63D20FBB
P 9150 4150
F 0 "J1" H 9178 4176 50  0000 L CNN
F 1 "Conn_01x01_Female" H 9178 4085 50  0000 L CNN
F 2 "Connector_Wire:SolderWire-2sqmm_1x01_D2mm_OD3.9mm" H 9150 4150 50  0001 C CNN
F 3 "~" H 9150 4150 50  0001 C CNN
	1    9150 4150
	1    0    0    -1  
$EndComp
Wire Wire Line
	6400 5650 6400 6100
Wire Wire Line
	8900 1800 8900 2350
Wire Wire Line
	6250 1800 6250 2350
Wire Wire Line
	950  1800 950  2350
Wire Wire Line
	3550 1800 3550 2350
Wire Wire Line
	950  3900 950  4450
Wire Wire Line
	900  6200 900  6750
$Comp
L power:Earth #PWR?
U 1 1 61A17EFE
P 900 6850
F 0 "#PWR?" H 900 6600 50  0001 C CNN
F 1 "Earth" H 900 6700 50  0001 C CNN
F 2 "" H 900 6850 50  0001 C CNN
F 3 "~" H 900 6850 50  0001 C CNN
	1    900  6850
	1    0    0    -1  
$EndComp
Wire Wire Line
	900  6850 900  6750
Connection ~ 900  6750
$Comp
L power:Earth #PWR?
U 1 1 61A35532
P 950 4600
F 0 "#PWR?" H 950 4350 50  0001 C CNN
F 1 "Earth" H 950 4450 50  0001 C CNN
F 2 "" H 950 4600 50  0001 C CNN
F 3 "~" H 950 4600 50  0001 C CNN
	1    950  4600
	1    0    0    -1  
$EndComp
$Comp
L power:Earth #PWR?
U 1 1 61A377EC
P 950 2500
F 0 "#PWR?" H 950 2250 50  0001 C CNN
F 1 "Earth" H 950 2350 50  0001 C CNN
F 2 "" H 950 2500 50  0001 C CNN
F 3 "~" H 950 2500 50  0001 C CNN
	1    950  2500
	1    0    0    -1  
$EndComp
$Comp
L power:Earth #PWR?
U 1 1 61A3942C
P 3550 2500
F 0 "#PWR?" H 3550 2250 50  0001 C CNN
F 1 "Earth" H 3550 2350 50  0001 C CNN
F 2 "" H 3550 2500 50  0001 C CNN
F 3 "~" H 3550 2500 50  0001 C CNN
	1    3550 2500
	1    0    0    -1  
$EndComp
$Comp
L power:Earth #PWR?
U 1 1 61A3B342
P 6250 2500
F 0 "#PWR?" H 6250 2250 50  0001 C CNN
F 1 "Earth" H 6250 2350 50  0001 C CNN
F 2 "" H 6250 2500 50  0001 C CNN
F 3 "~" H 6250 2500 50  0001 C CNN
	1    6250 2500
	1    0    0    -1  
$EndComp
$Comp
L power:Earth #PWR?
U 1 1 61A3BA3F
P 8900 2500
F 0 "#PWR?" H 8900 2250 50  0001 C CNN
F 1 "Earth" H 8900 2350 50  0001 C CNN
F 2 "" H 8900 2500 50  0001 C CNN
F 3 "~" H 8900 2500 50  0001 C CNN
	1    8900 2500
	1    0    0    -1  
$EndComp
$Comp
L power:Earth #PWR?
U 1 1 61A40F7B
P 2500 4900
F 0 "#PWR?" H 2500 4650 50  0001 C CNN
F 1 "Earth" H 2500 4750 50  0001 C CNN
F 2 "" H 2500 4900 50  0001 C CNN
F 3 "~" H 2500 4900 50  0001 C CNN
	1    2500 4900
	1    0    0    -1  
$EndComp
$Comp
L power:Earth #PWR?
U 1 1 61A422B5
P 3100 6900
F 0 "#PWR?" H 3100 6650 50  0001 C CNN
F 1 "Earth" H 3100 6750 50  0001 C CNN
F 2 "" H 3100 6900 50  0001 C CNN
F 3 "~" H 3100 6900 50  0001 C CNN
	1    3100 6900
	1    0    0    -1  
$EndComp
$Comp
L power:Earth #PWR?
U 1 1 61A44315
P 5200 7600
F 0 "#PWR?" H 5200 7350 50  0001 C CNN
F 1 "Earth" H 5200 7450 50  0001 C CNN
F 2 "" H 5200 7600 50  0001 C CNN
F 3 "~" H 5200 7600 50  0001 C CNN
	1    5200 7600
	1    0    0    -1  
$EndComp
Wire Wire Line
	4450 7500 5200 7500
Wire Wire Line
	5200 7500 5200 7600
Connection ~ 5200 7500
Wire Wire Line
	5200 7500 6050 7500
$Comp
L power:Earth #PWR?
U 1 1 61A6573E
P 6400 6100
F 0 "#PWR?" H 6400 5850 50  0001 C CNN
F 1 "Earth" H 6400 5950 50  0001 C CNN
F 2 "" H 6400 6100 50  0001 C CNN
F 3 "~" H 6400 6100 50  0001 C CNN
	1    6400 6100
	1    0    0    -1  
$EndComp
$EndSCHEMATC
