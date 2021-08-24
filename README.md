# another_esp8266_sensor_board

This repo contains build instructions for a multi-purpose esp8266 sensor device for home IoT projects. This board meets most of my home-automation hardware needs. It fits in a [cheap, widely-available enclosure](https://github.com/brev-dev/another_esp8266_sensor_board/blob/52ce970f76a799b5d4ab854d0ae5fb7a4b1d066b/images/project_box.webp) (no 3d printing required), and can be powered either by a LiPo battery (voltage-monitoring, charging, reverse-polarity, and protection circuitry included) or USB, with appropriate power sharing if the USB and battery are connected simultaneously. On the software side, I’ve kept things as high-level as possible: Tasmota for most usage scenarios; micropython where needed. Communication utilizes the MQTT protocol over Wi-Fi, or LORA (I use the board as both a [remote LORA sensor, and as a LORA-MQTT bridge](https://github.com/brev-dev/LORA_esp8266_sensor_MQTT_bridge/)).

![board3d](https://user-images.githubusercontent.com/77922126/128489871-9f01f8df-6a2a-4f25-b7f5-ae4963dc2fc5.png)
*Board V5, partially populated. Image generated in KiCad.*

The board is designed for the following sensors, as well as motor/pump control (for automatic plant watering). GPIO pins remain easily-accessible, so this board can also be used as the basis for many other sensors.

| Property | Module | Board Connection | Datasheet | Purchase Link\*|
| ---| --- | --- | :---: | --- |
| Temperature, pressure, humidity | BME280 | Direct (2.54mm headers) | [Link](https://github.com/brev-dev/another_esp8266_sensor_board/blob/e3f53c214705e32eaa9f90e711b66ee1d1c71691/datasheets/BST-BME280_DS001-11-844833.pdf) | |
| Moisture | “Capacitive soil moisture sensor V1.2” | Audio plug | [Link](https://github.com/brev-dev/another_esp8266_sensor_board/blob/e3f53c214705e32eaa9f90e711b66ee1d1c71691/datasheets/sen0193-humedad-de-suelos.pdf) (older version) | [AliExpress](https://www.aliexpress.com/item/32908693444.html) |
|	Lux | BH1750 | Direct (2.00mm headers) | [Link](https://github.com/brev-dev/another_esp8266_sensor_board/blob/d842e8ac7ead9bd1a256e17d498e4c6692d75f80/datasheets/BH1750FVI.pdf) | [AliExpress](https://www.aliexpress.com/item/32983784786.html) |
|	CO<sub>2</sub> | MH-Z19C | Direct (2.54mm headers) | [Link](https://github.com/brev-dev/another_esp8266_sensor_board/blob/55dd2d41b445c80636574d447e5fac080cfa47e3/datasheets/mh-z19c-pins-type-co2-manual-ver1_0.pdf) | [AliExpress](https://www.aliexpress.com/item/4000586074848.html) |

\**I've purchased from those links in the past, but they're provided with no guarantee. I also don't plan to update them when they inevitably expire.*

The use of an esp8266 comes with some limitations, specifically around available GPIO, and only one ADC port. This means that not all potential functionality is available at the same time. Yes, these limitations could be overcome either with a port splitter, or by utilizing a different microcontroller such as an ESP32; however part of the fun for me was seeing how much I could do with only the esp8266, and the end result fits all of my use-cases.

### Example devices

| V4, with BME280 (temperature, pressure and humidity), BH1750 (lux) and moisture (via the audio plug) sensors. Equipped for watering pump (bottom right); not currently connected. | V5, with the BME280 and MH-Z19C (CO<sub>2</sub>) sensors |
| --- | --- |
| ![example_board v4_in_enclosure](https://github.com/brev-dev/another_esp8266_sensor_board/blob/f81dc558d201dd6b186f64b55d8d96105131c601/images/example_board_v4.jpg) | ![example board v5](https://github.com/brev-dev/another_esp8266_sensor_board/blob/267a0774d6dde3e93f12f3d21828006e8bcaa9a0/images/example_board_v5.jpg) |

| A fresh delivery of V5 boards |
| --- |
| ![V5 boards](https://github.com/brev-dev/another_esp8266_sensor_board/blob/18c1c6acd3ac308fd4a820b2b3c71c050f9b53bc/images/V5_boards.jpg) |

### Why use this board, and not *\*insert-off-the-shelf-microcontroller-board-here\**?
You could (and probably should?!) use something else. I initially designed this board as a way to learn about IoT sensors and circuit design/fabrication. I’ve stuck with it because it provides several advantages over off-the-shelf boards:
1.	Convenient project-box fit without 3D printing
2.	No tangle of wires: most sensors are directly mounted to the board
3.	Theoretically better protection & stability (control over noise-suppression features, battery polarity protection, and voltage supervision). Of course, in practice this benefit is probably more than outweighed by my lack of board-design experience.

## Component Discussion

### Power

The board can be powered either directly from USB, or from a Li-Po battery. Board V4 and earlier used micro-USB; V5 uses USB-C. The cutout on the left of the board is designed to accommodate a 1-cell 18650-battery case such as [this](https://github.com/brev-dev/another_esp8266_sensor_board/blob/e89a59e6fc7c869a731ce79fabf49352d018e9ff/images/18650_battery_case.webp) ([purchase link](https://www.aliexpress.com/item/32993737904.html)). The battery connector is a 2-pin JST-PH (2mm pitch), but if you prefer, just solder the wires directly to the connectors.

If both battery and USB are connected simultaneously, a power-sharing circuit ensures that only the USB powers the board.
The battery is used in conjunction with a copy of the common 3-chip TP4056-based module for charging. There’s a switch provided if you’re not using a battery and want to bypass this circuitry (or if you don't want the battery to charge while USB is connected). The module includes protection for overcharge, over-discharge, overcurrent and short-circuit. Note that the overcurrent and short-circuit protection is bypassed for the rest of the board (not the battery) when USB is connected, and the power-sharing circuit is therefore active. 
The standard charging module doesn’t include battery-polarity protection, so I’ve also added that.

Battery voltage monitoring is available when either jumper JP5 (front) or JP6 (back) is bridged. This connects the positive battery terminal, through a voltage divider, to the esp's sole ADC pin. This connection is optional because the moisture sensor (and of course other sensors) also need access to the ADC. Due to this, it's clearly not possible to monitor both battery voltage and a soil moisture sensor at the same time with the V5 board.

#### Notes
- The FS8205 dual MOSFET chip comes in two package sizes. I chose the (slightly less common) SOT-23-6 variant because it's easier to hand-solder.
- Be aware that some AliExpress vendors are (I suspect accidentally) selling me4056 chips as tp4056. This chip has the same purpose but different pinout, so it won't work on the board. [Here's](https://github.com/brev-dev/another_esp8266_sensor_board/blob/a93f9e18d06ddcca5e1f6364de4ef48cf533c392/images/me4056.jpg) a bag of me4056's I received from one vendor (and was given a full refund when I finally worked-out what the problem was).
- As my 3-chip TP4056 charger footprint remains consistent with the widely-available modules, if you have one of those handy you can simply piggy-back it, rather than adding components directly to the board. [Here's](https://github.com/brev-dev/another_esp8266_sensor_board/blob/f170df5e5ed5a01450a450957b2c13060da18a92/images/tp4056_piggyback.jpg) an older example where I piggy-backed the charger circuit: just join the 6 corner pads. Note that the pictured module also comes with the alternative 8205A MOSFET package.
- I chose USB sockets that were as easy to hand-solder as possible, noting that only the power, not data, connectors are needed. For micro-USB you can find a [2-pin socket](https://github.com/brev-dev/another_esp8266_sensor_board/blob/e99d01fb7cc91dd79cf12d4cf2d8f64e2b0c8e33/datasheets/microUSB_socket_2pin.jpg) ([purchase link](https://www.aliexpress.com/item/33039304643.html)). I haven't found an equivalent for USB-C, but [this](https://github.com/brev-dev/another_esp8266_sensor_board/blob/e99d01fb7cc91dd79cf12d4cf2d8f64e2b0c8e33/datasheets/usbc_socket_6pin.webp) socket ([purchase link](https://www.aliexpress.com/item/4000011358933.html)) offers a smaller number of connectors (enough for USB2 data as well as power, I believe).
- If you only need a minimal USB-powered board, you can skip all of the charging, power sharing and reverse polarity components. Just add a USB socket (or connect directly to pads H5 (+5v) and H6 (ground), and bridge the two pads on diode footprint D2.

### LDO regulator

There’s a dizzying range of possible LDO ICs to choose from. I settled on the XC6203P332PR due to its relatively high current output, and low dropout voltage. Board V4 had footprints for two alternative regulators, which I was planning to test for stability, but these weren’t needed and were removed in V5. 
#### Tantalum capacitors
On PCB version 4 I paired two 1μF tantalum capacitors with the XC6203, per the [datasheet](https://github.com/brev-dev/another_esp8266_sensor_board/blob/86c8875968cf48237dee9fcda43d4448a1e4a00b/datasheets/XC6203.pdf). I had a capacitor fail on two of these boards after a few weeks of use, causing a short-circuit and lots of smoke (the boards were being USB-powered at the time). After reading tantalum horror-stories online, I decided to experiment with swapping them for ceramics on V5, and have experienced no further problems. I later discovered that the two failures were my fault: I fitted the parts in reverse! I’m sure there’s a good reason why the polarity-marker band on tantalums denotes the positive, while on aluminium capacitors and diodes it denotes the negative, but they tripped-up this newbie.

#### An aside: Cheap ESP-12F adaptor boards

Conveniently, the XC6203P332PR is also compatible with the[ white ESP-12F adaptor boards](https://github.com/brev-dev/another_esp8266_sensor_board/blob/0b8a2c9c500916e484b68a6f7c3c33d089ebb65e/images/esp-12f%20white%20adapter.jpg). It’s smaller than the provided footprint, but can still be soldered onto it with little trouble. Make sure you remove the central zero-ohm resistor on the front of the board if using a board-mounted regulator.

### Electrical Noise

I learned the hard way about the electrical-noise sensitivity of the ESP8266: on V3 of the board, it would reboot whenever the watering motor was activated. I overcame this in V4 with component repositioning (moving the motor to the far end away from the microcontroller), adding extra capacitors next to the motor connection, increasing power trace width vs signal traces, minimizing loops on the ground plane, and separating the motor ground-plane return path from the rest of the components.

### ESP8266
The board is designed for an ESP-12F. I tend to flash the chip in a [programmer board](https://github.com/brev-dev/another_esp8266_sensor_board/blob/0b8a2c9c500916e484b68a6f7c3c33d089ebb65e/images/esp-12f%20programmer.jpg) prior to soldering it on, just to check it's working.

When installed, it can be flashed in the normal way by connecting a USB-UART interface board to the appropriate pins.

#### Connection summary

| Pin# | Port | Board Connection | Resistor\* | 
| --- | --- | --- | --- | 
| 1 | RST | Reset button |  |
| 2 | ADC | ADC (moisture or battery)|  |
| 3 | EN | Chip enable | Supervisor, or E-PU |
| 4 | IO16 | DeepSleep |  |
| 5 | IO14 | I2C SCL, or SPI SCK |  |
| 6 | IO12 | Moisture VCC, or SPI SDO-MISO |  |
| 7 | IO13 | I2C SDA, or SPI MOSI |  |
| 8 | VCC |  |  | VCC |  |
| 15 | GND |  |  | GND |  |
| 16 | IO15 | LORA NSS | E-PD |
| 17 | IO2 | Onboard LED, & SPI SS |  |
| 18 | IO0 | Flash button | E-PU |
| 19 | IO4 | Mode switch (GND: use sleep) | E-PU |
| 20 | IO5 | Water pump, or LORA DIO | E-PD |
| 21 | RXD | CO2 Tx |  |
| 22 | TXD | CO2 Rx |  |

\* Resistor attached to pin: I:Internal, E:External, PU:Pull-Up, PD:Pull-Down

#### Deep sleep (optional with jumper JP2)

There seems to be some online [debates](https://www.esp8266.com/viewtopic.php?f=160&t=13625) about the optimal way to connect RST to GPIO16 in order to use the ESP8266’s DeepSleep functionality. I’ve erred on the side of caution and added a diode between the two.

### Voltage supervisor (optional with jumper JP1)

The ESP8266 is susceptible to brown-outs if the voltage is too low (a good explanation of this problem can be found [here](https://youtu.be/cKDv0aN67BY)). In conjunction with the non-instantaneous increase in voltage from the regulator when power is first applied, this can lead to boot problems. To protect against this, I’ve included an optional voltage supervisor ([TPS3839G33DBZ](https://github.com/brev-dev/another_esp8266_sensor_board/blob/4a8da56aba7b092c4e5784e14ad378a6c07b094b/datasheets/tps3839.pdf)) which will only set the chip-enable pin high when voltage is above an appropriate threshold. 
However, I’ve yet to notice brown-outs being a problem, so I sometimes skip this component.

### LORA (RFWM95W) module
![lorapair](https://github.com/brev-dev/another_esp8266_sensor_board/blob/5aa659a7452a0eb0ab53f27bc85ff3bf4364177d/images/lora_pair.jpg)
*A pair of LORA-equipped devices in their enclosures*

Combining an esp8266 with a LORA module is a stretch when it comes to available gpio. This board is designed to work with SX1276 LORA modules ([example link](https://www.aliexpress.com/item/32984655636.html)), and leans heavily on the design from [here](https://github.com/hallard/WeMos-Lora), which minimizes needed ports by linking three of the LORA module's pins (DIO0, 1 and 2) to one esp8266 pin via three diodes (board footprints D9, D10 and D11 respectively). This DIO-sharing configuration needs special handling in software. However, for simple LORA communications only DIO0 is needed, so for my LORA boards to date I have bridged D9, and left D10 and D11 disconnected.

#### Antenna
For testing, you can directly solder the common helical-wire antennas (often included with the purchase of a module) directly to the module's antenna pin. Range will suck, though. For better range attach a higher-gain antenna (I use 5dbi antennas bought [here](https://www.aliexpress.com/item/32979875502.html)). I include an IPEX U.FL-R footprint at AE1. Alternatively, SMA edge-mounted connectors fit nicely on the edge of the board over footprint J5. These can be wired-up as follows (this example is using board V4, but the same will work for V5): [top](https://github.com/brev-dev/another_esp8266_sensor_board/blob/493c38c68af71970a35fda9a3fc562d0f8774722/images/antenna_top.jpg) and [bottom](https://github.com/brev-dev/another_esp8266_sensor_board/blob/493c38c68af71970a35fda9a3fc562d0f8774722/images/antenna_bottom.jpg).

#### Notes
- Remember to install capacitor C10 if you're adding a LORA module to the board.


### BME280 sensor (temperature, pressure, humidity)

This is a very handy temperature/humidity/pressure sensor. With my board's current mount point, the BME280 sensor-chip sits outside of the enclosure. I find this convenient because I don't have to worry about airflow within the box. If the current geometry offends you, or you need a more robust device where the sensor won't risk getting damaged, consider a redesign on the connection point, or choose an alternative sensor with a built-in cage.

You might find that the soldered pins get in the way of closing the enclosure lid properly. If this is the case you can trim them prior to soldering, like I've done [here](https://github.com/brev-dev/another_esp8266_sensor_board/blob/7ec4fd718edccba7780aa4c0607bf689e7137857/images/bme280_trimmed_pins.jpg).

The sensor can communicate by I2C or SPI; most people seem to use I2C, for which you need to make no board alterations. If you want the SPI interface, close a [couple](https://github.com/brev-dev/another_esp8266_sensor_board/blob/bff7ac836695f352a52cb5e7e18f4aab712b4d77/images/rear_solder_bridges_bme_spi.jpg) of solder bridges on the rear to connect the additional pins. On board V5, one of these connections also powers the moisture sensor, so alterations would be needed if you want to run both the BME280 (with SPI interface) and a moisture sensor concurrently.

Notes
- The BME280 is reported to be a nicely precise sensor, but not always accurate. Specifically, the temperature sensor produces high readings (by up to a couple of degrees) due to the heat produced by the sensor itself when active. The level of this offset depends on how you run the sensor: if you only wake it up for readings, putting it to sleep inbetween, the offset is smaller than if you run it continually. However, since the offset appears consistent, you can easily calibrate it out post-measurement.
- Hey, when did this sensor become so expensive?! As of mid-2021, there's [apparently](https://forum.sensor.community/t/bme280-global-shortage/413) a global shortage which will hopefully end soon.
  - At the current prices, maybe it's worth stumping for the BME680 (like the BME280, with an additional VOC sensor). This looks as though it's pin-compatible for I2C. With SPI, you'd need to swap the two additional pins (which could be achieved with crossing links across solder bridges JP3 and JP4)
  - If cost is important, some projects are swapping-out the BME280 for an SHT31. This is also I2C, just no pressure sensor. I have no experience of this sensor, but it looks to be a simple swap-in.

### ADC Connections

A single ADC is available on the esp8266, with a measurement range from 0V to 1V. For measuring higher voltages, a [voltage divider](https://ohmslawcalculator.com/voltage-divider-calculator) is therefore needed. On board V5, the ADC can either be used for peripherals connected to the audio jack, or to monitor the battery voltage if either JP11 or JP5 is closed.

Connections via the audio jack go through a divider with R1=470 kΩ (component R7), R2=200 kΩ (component R8). This permits measurement of voltages up to 3.3V (3.3V is lowered to approximately 0.985V; calibrate the signal for higher accuracy).

The battery connection adds an additional 330 kΩ (component R10) resistor in series with component R7, leading to R1=800 kΩ. This increases the measurement range up to 5V.

#### The audio-style socket
I chose to use a 4-pole audio jack (model PJ313E) to connect the moisture sensors to the board. For now, only three of the four poles are connected; the fourth is a spare with an eye to future functionality. Starting from the base to the tip of the audio plug, the current connections are:

| Pole | Connection |
| --- | --- |
| 1 | GND |
| 2 | No connection |
| 3 | 3.3V (from GPIO12, via JP3) |
| 4 | To ADC via 3.3V voltage divider |

I've experienced one problem with my chosen socket (or maybe the combination of the socket and the plugs I use): by default, it's failing to make a connection to all four poles. This can be seen in the top image [here](https://github.com/brev-dev/another_esp8266_sensor_board/blob/e8318408b542502163760f25e8133f11a53af489/images/audio_socket_mod.jpg), where the deepest contact-pin (Pole 4) isn't deflected. To fix the problem, I snipped/filed-off the protruding plastic front part of the socket ([bottom image](https://github.com/brev-dev/another_esp8266_sensor_board/blob/e8318408b542502163760f25e8133f11a53af489/images/audio_socket_mod.jpg))

### Moisture sensor

In order to stop the moisture sensor running constantly and draining the battery, it's powered directly by gpio12. Bridge the right pad of JP3 to the centre pad to make that connection. It doesn't draw much current, so I've had no problems directly powering the sensor directly from a gpio pin. If it turned out to be a brown-out/stability issue in the future, this connection would need to be replaced by a MOSFET.

### BH1750 sensor (Lux)
This is a simple and reliable photodiode, combined with an I2C interface. You can buy it in various form-factors, with the light-ball version being particularly convenient for our purposes. [Trim-down the plastic parts of the built-in connector](https://github.com/brev-dev/another_esp8266_sensor_board/blob/7ec4fd718edccba7780aa4c0607bf689e7137857/images/bh1750_trimmed.jpg), and this can now plug directly into a standard 2mm-pitch pin header, as included on board V5. The light ball can be popped off the sensor and directly mounted into the [top of the enclosure](https://github.com/brev-dev/another_esp8266_sensor_board/blob/5aa659a7452a0eb0ab53f27bc85ff3bf4364177d/images/bh1750_case.jpg).

#### Notes
- This sensor can't be mounted at the same time as the MH-Z19C below, for purely physical reasons. There are no port conflicts, so they'll happily operate concurrently if you make PCB changes, or connect one or other with an extension cable.

### MH-Z19C sensor (CO<sub>2</sub>)

This is the priciest sensor I use, but I think it's worth it vs the cheaper VOC alternatives. It communicates over the UART bus (so esp8266 pins Rx and Tx). You therefore want to ensure the sensor isn't connected if you're trying to flash the ESP or use its serial interface.

To use the MH-Z19C on the board V5, you need to [connect two solder bridges on the rear](https://github.com/brev-dev/another_esp8266_sensor_board/blob/bff7ac836695f352a52cb5e7e18f4aab712b4d77/images/rear_solder_bridges_CO2.jpg). In hindsight I can't think of a good use-case when you wouldn't want those bridged, so I'll probably just swap the pads out for continuous traces on any future version.

#### Notes
- As usual, Andreas Spiess has a good [video](https://youtu.be/FL0L-nic9Vw) on the topic.
- This sensor is powered by 5V, not 3.3V like most of the other components. For this reason, you should only use this sensor when running from USB power (the board has no step-up capabilities for getting 5V from the battery, and since the MH-Z19C is designed to be continuously-powered, it'd probably be a big battery drain anyway.
- As currently wired (board V5) the sensor will continue running even if the board's power switch is turned to off. This is because it's connected earlier in the power circuit: I haven't tested whether it will run reliably on the lower voltage that'll be present after the power-sharing doide D2.
- As noted above, cannot be mounted on the board at the same time as a BH1750.
- When I first started this project, the manufacturer was in the process of changing from Z19B to the newer Z19C sensors and they were hard to come by. The situation seems to have improved. Choose a Z19C if available (better performance, apparently), and select the one with pins if you plan to directly mount it into the two corresponding board sockets.

### Water pump, and connector
Small water pumps and the necessary flexible tubing are widely available. As discussed [above](https://github.com/brev-dev/another_esp8266_sensor_board/blob/main/README.md#electrical-noise), they're electrically-noisy buggers; hence why the connector for the pump is in the far corner of the board from the esp, and shielded behind two capacitors of its own. It's normally powered by gpio5, via an N-channel MOSFET, or can be manually operated with the optional button SW5.

For simplicity, and since the small pumps seem to be able to function over quite a wide voltage range, the pump is supplied with whatever voltage is currently powering the board (defined by the state of the power sharing circuitry): if USB is connected, it'll be 5V minus the forward voltage across diodes D2 and D8; if battery-powered, it'll be the battery voltage minus the D8 drop. In practice it really doesn't make much difference: slightly more water will be pumped during a given time when on USB vs battery-powered.

For the pump's board connection, there's a footprint for a DC-002 socket. I considered using a USB socket but decided that was misleading since the output voltage isn't always the 5V that one would expect from USB. On the board pictured above, I skipped the power-jack socket and simply connected a double pin-header socket instead.

## Design & Fabrication

![boardlayout](https://github.com/brev-dev/another_esp8266_sensor_board/blob/d6abd56e7cb9d5aa49b46b3e4bf419d78e1f5672/images/board_layout_v5.png)
*Board V5 layout*

The board was designed in [KiCad](https://www.kicad.org/), and manufactured by [JLCPCB](https://jlcpcb.com). KiCad files and the information required by JLCPCB are provided in the board_v* directories.

Please be understanding with [the schematic](https://github.com/brev-dev/another_esp8266_sensor_board/blob/9ac3180b3b5d9ca07b58c377a639be6fb8d97420/board_v5/schematic_v5.pdf); I know it's ugly and desperately in need of splitting into multiple parts. Remember, this is my first PCB design!

### Enclosure

8mm M2.6 screws are needed to attach the board to the box, such as these ([purchase link](https://www.aliexpress.com/item/4000108693024.html))

## Software

For convenience, I use Tasmota for all devices where possible. Tasmota can't handle LORA, so for these devices I use micropython.

### Tasmota
Make sure you install the "sensors" version of the tasmota image.

Here are some Tasmota screenshots from the V4 device [pictured](https://github.com/brev-dev/another_esp8266_sensor_board/blob/f81dc558d201dd6b186f64b55d8d96105131c601/images/example_board_v4.jpg) at the top of this readme.

![Tasmota main page example](https://github.com/brev-dev/another_esp8266_sensor_board/blob/f81dc558d201dd6b186f64b55d8d96105131c601/images/tasmota_main_device005.png)  |  ![Tasmota configuration page example](https://github.com/brev-dev/another_esp8266_sensor_board/blob/f81dc558d201dd6b186f64b55d8d96105131c601/images/tasmota_config_device005.png)

Here are the main settings I changed from their default in the control interface. Read about these and other settings [here](https://tasmota.github.io/docs/Commands/).

- PulseTime1 12 (for the modules configured for watering on Relay1, choose your watering length here. This example defines the watering length as 1 second)
- DeepSleepTime 120 (defines the time between readings in seconds if you are using DeepSleep)

#### Notes
- I leave the analog signal reported as raw values, and then calibrate this later (in NodeRed). I believe you could also setup the calibration in Tasmota's control interface. On the example device, the moisture sensor gave a reading of 605 when dry and 282 when submerged in water. An Analog0 reading of 482 therefore corresponds to a moisture level of 38%.
- When configured as above, power is sent to the moisture sensor when Toggle 2 is set to ON. I expect this state to survive reboots and deep sleep because Tasmota's [PowerOnState](https://tasmota.github.io/docs/PowerOnState/) is set to 3. Unfortunately this isn't happening, so the moisture sensor isn't working by default when the device wakes. This is probably fixable within Tasmota's other options (maybe SetOption63?), but for now I've fixed it by adding a retained MQTT POWER2 ON command. 
- Tasmota can probably also be configured to carry-out the watering function directly when the moisture goes below a certain level. However, I carry this out in NodeRed, broadcasting the command to the device by MQTT.

### MicroPython

Look here for my LORA micropython software and instructions: https://github.com/brev-dev/LORA_esp8266_sensor_MQTT_bridge.

## Home IoT Setup

Although not covered by this repo, here are some quick notes on where these devices sit in my full home setup.

My home setup is designed to achieve these goals:
1. Automatic temperature control
2. Plant auto-watering
3. Informing other manual actions, such as ventilation, and some manual plant watering
4. Purely informational.

To enable temperature control in each room, the radiators are plugged into Tasmotized esp8285 smart plugs.

The "hub" is a Raspberry Pi 4 equipped with Mosquitto, NodeRed, InfluxDB, and Grafana. My NodeRed flows could probably be simplified by replacing much of it with, for example, HomeAssistant, but I haven't looked into that. The combination of InfluxDB and Grafana is used to store and visualize the historical data (examples below), along with the "MQTT Dash" app on our phones to monitor the current status and change temperature and moisture trigger levels. The rpi software stack utilizes Docker and [IOTStack](https://github.com/SensorsIot/IOTstack) for ease of configuration and maintenance. Andreas Spiess has some great videos on the topic, including: [#255](https://youtu.be/JdV4x925au0), [#295](https://youtu.be/a6mjt8tWUws), and [#352](https://youtu.be/KJRMjUzlHI8).

![Temperature Example](https://github.com/brev-dev/another_esp8266_sensor_board/blob/caf0b86783116dad75fac15154bac198f2339cff/images/temperature_example.png)
![Moisture Example](https://github.com/brev-dev/another_esp8266_sensor_board/blob/caf0b86783116dad75fac15154bac198f2339cff/images/moisture_example.png)
![CO2 Example](https://github.com/brev-dev/another_esp8266_sensor_board/blob/caf0b86783116dad75fac15154bac198f2339cff/images/co2_example.png)


## ToDo (_could_ be done; not necessarily _will_ be done!)
- Tidy-up the schematic
- Convert board to esp32 (potentially the new esp32-c3f, as it's footprint-compatible?)
  - Wire-up extra GPIO
  - Wire-up extra analog ports
    - Dedicated battery-monitoring port
    - Additional moisture-sensor ports
- Add a separately-powered RTC to improve deep-sleep battery drain.

