# another_esp8266_sensor_board
This repository contains build instructions for a multi-purpose esp8266 sensor module for home IoT projects. The PCB is designed to be a single, affordable board that meets most of my home-automation hardware needs. It fits in a cheap, widely-available enclosure (no 3d printing required), and can be powered either by a LiPo battery (voltage-monitoring, charging, reverse-polarity, and protection circuitry included) or USB, with appropriate power sharing if the USB and battery are connected simultaneously. On the software side, I’ve kept things as high-level as possible: Tasmota for most usage scenarios; micropython where needed. Communication utilizes the MQTT protocol over Wi-Fi, or LORA (the board can operate as either a LORA transmitter or wifi-MQTT bridge).
The board is specifically designed for the following sensors, as well as motor/pump control (for automatic plant watering):
-	BME280 (direct connection): temperature, pressure, humidity
-	“Capacitive soil moisture sensor V1.2” (via audio plug): moisture (https://www.aliexpress.com/item/32908693444.html)
-	BH1750 (direct connection): Lux (https://www.aliexpress.com/item/32983784786.html)
-	MH-Z19C (direct connection): CO¬2

GPIO pins remain easily-accessible, so this board can also be used as the basis for many other sensors. 
The use of an esp8266 comes with some limitations, specifically around available GPIO, and only one analog port. This means that not all potential functionality is available at the same time. Yes, these limitations could be overcome either with a port splitter, or by utilizing a different microcontroller such as an ESP32; however part of the fun for me was seeing how much I could do with only the esp8266, and the end result fits all of my use-cases.

###Why use this, and not *\*insert-off-the-shelf-microcontroller-board-here\**?
You could (and probably should?!) use something else. I initially designed this board as a way to learn about IoT sensors and circuit design/fabrication. I’ve stuck with it because it provides several advantages over off-the-shelf boards:
1.	Convenient project-box fit without 3D printing
2.	No tangle of wires: most sensors are directly mounted to the board
3.	Theoretically better protection & stability (control over noise-suppression design features, battery polarity protection, and voltage supervision). Of course, in practice this benefit is probably more than outweighed by my lack of board-design experience.
