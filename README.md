# another_esp8266_sensor_board

This repository contains build instructions for a multi-purpose esp8266 sensor module for home IoT projects. The single, affordable board meets most of my home-automation hardware needs. It fits in a [cheap, widely-available enclosure](https://github.com/brev-dev/another_esp8266_sensor_board/blob/52ce970f76a799b5d4ab854d0ae5fb7a4b1d066b/images/project_box.webp) (no 3d printing required), and can be powered either by a LiPo battery (voltage-monitoring, charging, reverse-polarity, and protection circuitry included) or USB, with appropriate power sharing if the USB and battery are connected simultaneously. On the software side, I’ve kept things as high-level as possible: Tasmota for most usage scenarios; micropython where needed. Communication utilizes the MQTT protocol over Wi-Fi, or LORA (I use the board as both a [remote LORA sensor, and as a wifi-MQTT bridge](https://github.com/brev-dev/LORA_esp8266_sensor_MQTT_bridge/)).

![board3d](https://user-images.githubusercontent.com/77922126/128489871-9f01f8df-6a2a-4f25-b7f5-ae4963dc2fc5.png)
*Board V5, partially populated. Image generated in KiCad.*

The board is designed for the following sensors, as well as motor/pump control (for automatic plant watering). GPIO pins remain easily-accessible, so this board can also be used as the basis for many other sensors.

| Property | Module | Board Connection | Datasheet | Purchase link\*|
| ---| --- | --- | :---: | --- |
| Temperature, pressure, humidity | BME280 | Direct (2.54mm headers) | [Link](https://github.com/brev-dev/another_esp8266_sensor_board/blob/e3f53c214705e32eaa9f90e711b66ee1d1c71691/datasheets/BST-BME280_DS001-11-844833.pdf) | |
| Moisture | “Capacitive soil moisture sensor V1.2” | Audio plug | [Link](https://github.com/brev-dev/another_esp8266_sensor_board/blob/e3f53c214705e32eaa9f90e711b66ee1d1c71691/datasheets/sen0193-humedad-de-suelos.pdf) (older version) | [AliExpress](https://www.aliexpress.com/item/32908693444.html) |
|	Lux | BH1750 | Direct (2.00mm headers) | [Link](https://github.com/brev-dev/another_esp8266_sensor_board/blob/d842e8ac7ead9bd1a256e17d498e4c6692d75f80/datasheets/BH1750FVI.pdf) | [AliExpress](https://www.aliexpress.com/item/32983784786.html) |
|	CO<sub>2</sub> | MH-Z19C | Direct (2.54mm headers) | [Link](https://github.com/brev-dev/another_esp8266_sensor_board/blob/55dd2d41b445c80636574d447e5fac080cfa47e3/datasheets/mh-z19c-pins-type-co2-manual-ver1_0.pdf) | [AliExpress](https://www.aliexpress.com/item/4000586074848.html) |

\**I've purchased from those links in the past, but they're provided with no guarantee. I also don't plan to update them when they inevitably expire.*

The use of an esp8266 comes with some limitations, specifically around available GPIO, and only one analog port. This means that not all potential functionality is available at the same time. Yes, these limitations could be overcome either with a port splitter, or by utilizing a different microcontroller such as an ESP32; however part of the fun for me was seeing how much I could do with only the esp8266, and the end result fits all of my use-cases.

### Why use this, and not *\*insert-off-the-shelf-microcontroller-board-here\**?
You could (and probably should?!) use something else. I initially designed this board as a way to learn about IoT sensors and circuit design/fabrication. I’ve stuck with it because it provides several advantages over off-the-shelf boards:
1.	Convenient project-box fit without 3D printing
2.	No tangle of wires: most sensors are directly mounted to the board
3.	Theoretically better protection & stability (control over noise-suppression features, battery polarity protection, and voltage supervision). Of course, in practice this benefit is probably more than outweighed by my lack of board-design experience.

## Board Discussion

### Power

The board can be powered either directly from USB, or from a Li-Po battery. Board V4 and earlier used micro-USB; V5 uses USB-C. In each case I chose sockets that were as easy to hand-solder as possible, noting that I only need the power, not data, connectors.
If both battery and USB are connected simultaneously, a power-sharing circuit ensures that only the USB powers the board.
The battery is used in conjunction with a copy of the common 3-chip TP4056-based module for charging. There’s a switch provided if you’re not using a battery and therefore want to bypass this circuitry. The module includes protection for overcharge, over-discharge, overcurrent and short-circuit. Note that the overcurrent and short-circuit protection is bypassed for the rest of the board (not the battery) when USB is connected, and the power-sharing circuit is therefore active. 
The standard charging module doesn’t include battery-polarity protection, so I’ve also added that.

#### Random observations
- The FS8205 dual MOSFET chip comes in two pachage sizes. I chose the (slightly less common) SOT-23-6 variant because it's easier to hand-solder.
- As my 3-chip TP4056 charger footprint remains consistent with the widely-available modules, of you have one of those handy, you can piggy-back it, rather than adding components directly to the board.

### LDO regulator

There’s a dizzying range of possible LDO ICs to choose from. I settled on the XC6203P332PR due to its relatively high current output, and low dropout voltage. Board V4 had footprints for two alternative regulators, which I was planning to test for stability; with the other layout changes I made above, these weren’t needed. 
#### Tantalum capacitors
On board V4 I paired two 1uf tantalum capacitors with the XC6203P332PR, as per the spec sheet. On two of the PCBs, a capacitor failed after a few weeks of use, causing a short-circuit and lots of smoke (the boards were being USB-powered at the time, so the short-circuit protection didn’t help). After reading tantalum horror-stories online, I decided to experiment with swapping them for ceramics on V5, and have experienced no further problems. I later discovered that the two failures were my fault: I fitted the parts in reverse! I’m sure there’s a good reason why the polarity-marker band on tantalums denotes the positive, while on aluminium capacitors and diodes it denotes the negative, but they tripped-up this newbie.

#### An aside: Cheap ESP-12F adaptor boards

Conveniently, the XC6203P332PR is also compatible with the white ESP-12F adaptor boards. It’s smaller than the provided footprint, but can still soldered onto this footprint with little trouble. Make sure you remove the central 0 resistor on the front of the board if using a board-mounted regulator.

### Electrical Noise

I learned the hard way about the electrical-noise sensitivity of the ESP8266: on V3 of the board, it would reboot whenever the watering motor was activated. I overcame this in V4 with component repositioning (moving the motor to the far end away from the microcontroller), adding extra capacitors next to the motor connection, increasing power trace width vs signal traces, minimizing loops on the ground plane, and separating the motor ground-plane return path from the rest of the components.

### Voltage supervisor (optional with jumper JP1)

The ESP8266 is susceptible to brown-outs if the voltage is too low (a good explanation of this problem can be found [here](https://youtu.be/cKDv0aN67BY)). In conjunction with the non-instantaneous increase in voltage from the regulator when power is first applied, this can lead to boot problems. To protect against this, I’ve included an optional voltage supervisor (TPS3839G33DBZ) which will only set the chip-enable pin high when voltage is above an appropriate threshold. 
However, I’ve yet to notice brown-outs being a problem, so I sometimes skip this component.

### Deep sleep (optional with jumper JP2)

There are some debates about the best way to connect RST to GPIO16 in order to use the ESP8266’s DeepSleep functionality. I’ve erred on the side of caution and added a diode between the two.

### LORA (RFWM95W) module
- DIO
- antenna

### BME280 sensor (temperature, pressure, humidity)
- sensor outside case

### BH1750 sensor (Lux)
- connector

### Fabrication

