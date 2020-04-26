
* [ESP32 Videos](https://www.youtube.com/playlist?list=PL3XBzmAj53RnZPeWe799F-uoXERBldhn9)

* [ESP8266 Tips & Tricks](https://www.youtube.com/channel/UCqk4hT4XpzUVVUfsIDNzvPw)
* [My ESP32 videos](https://www.youtube.com/channel/UCu7_D0o48KbfhpEohoP7YSQ)

* [RemoteDebug for ESP Platforms](https://hackaday.com/2019/03/07/remotedebug-for-esp-platforms/)


* [Using the ESP8266 to build the Internet of Things](https://www.youtube.com/watch?v=CjeDkmm0w_w&app=desktop)
* [The Internet of Things with ESP32](http://esp32.net/)
* [Installing the ESP32 Arduino Core](https://learn.sparkfun.com/tutorials/esp32-thing-hookup-guide#installing-the-esp32-arduino-core)
* [Over-the-air updating an ESP32](https://blog.classycode.com/over-the-air-updating-an-esp32-29f83ebbcca2)
* [Secure over-the-air updates for ESP32](https://blog.classycode.com/secure-over-the-air-updates-for-esp32-ec25ae00db43)
* [ESP32 AT Instruction Set and Examples - Espressif Systems](https://espressif.com/sites/default/files/documentation/esp32_at_instruction_set_and_examples_en.pdf)
* [ESP32, We Have Ways to Make You Talk](https://hackaday.com/2018/02/06/esp32-we-have-ways-to-make-you-talk/)
* [ESP32 Boards With Displays: An Overview](https://hackaday.com/2018/05/23/esp32-boards-with-displays-an-overview/)

* [Face Detection and Recognition on the ESP32](https://blog.hackster.io/face-detection-and-recognition-on-the-esp32-3b4b9a35c765)
* [Espressif IoT Development Framework (ESP-IDF)](https://docs.espressif.com/projects/esp-idf/en/latest/get-started/index.html)
    * [Secure Boot](https://docs.espressif.com/projects/esp-idf/en/latest/security/secure-boot.html)
    * [Flash Encryption](https://docs.espressif.com/projects/esp-idf/en/latest/security/flash-encryption.html)

# Background
The ESP32 is a low cost, low power microcontroller with integrated 2.4 GHz WiFi (up to 150Mbps)
and dual-mode Bluetooth (classic and BLE),
which employs a dual-core Tensilica Xtensa LX6 microprocessor.
The ESP32 is a successor to the ESP8266 microcontroller,
and like the ESP8266, the ESP32 is created and developed by Espressif Systems,
a Shanghai-based Chinese company.
This chip includes almost everything you’ll need to begin programming the WiFi/Bluetooth SoC
and to create IoT applications.

* ESP32 Key Features
    * 240 MHz dual-core Tensilica LX6 microcontroller with performing at up to 600 DMIPS
    * integrated 520 KB SRAM
    * integrated 802.11/b/g/n HT40 Wi-Fi transceiver,  baseband,  stack and LWIP
    * integrated dual mode Bluetooth (classic and BLE)
    * 16 MB Flash
    * 2.2V to 3.6V operating voltage
    * -40°C to +125°C operating temperature
    * on-board PCB antenna / IPEX connector for external antenna
    * supports sniffer, station, SoftAP and WiFi direct modes
* ESP32 Peripheral Interfaces
    * 12-bit ADC up to 18 channels
    * 2x 8-bit DACs
    * 10x capacitive touch interface
    * Temperature sensor
    * 3x SPI
    * 2x I²S
    * 2x I²C
    * 3x UARTs, including hardware flow control
    * SD/SDIO/MMC host
    * SDIO master/slave 50 MHz
    * Ethernet MAC interface with dedicated DMA and IEEE 1588 support
    * CAN bus 2.0
    * IR (TX/RX)
    * PWM/timer input/output available on every GPIO pin
    * Hall effect sensor
    * Ultra low power and low noise analog amplifier
* ESP32 Security
    * WEP, WPA/WPA2 PSK/Enterprise
    * Hardware accelerated encryption: AES / SHA2 / Elliptical Curve Cryptography / RSA-4096
* ESP32 Performance
    * Max data rate of 150 Mbps@11n HT40, 72 Mbps@11n HT20, 54 Mbps@11g, and 11 Mbps@11b
    * Maximum transmit power of 19.5 dBm@11b, 16.5 dBm@11g, 15.5 dBm@11n
    * Minimum receiver sensitivity of -98 dBm
    * 135 Mbps UDP sustained throughput
    * 2.5 μA deep sleep current
* Resources
    * [ESP32 Datasheet (PDF)](https://www.espressif.com/sites/default/files/documentation/esp32_datasheet_en.pdf)
    * [ESP32 Technical Reference Manual](https://espressif.com/sites/default/files/documentation/esp32_technical_reference_manual_en.pdf)
    * [ESP32 Pinout v1.0]()
    * [ESP32 Pin List]()
    * [ESP32 Hardware Design Guidelines](https://espressif.com/sites/default/files/documentation/esp32_hardware_design_guidelines_en.pdf)
    * [ESP32 RTOS SDK API Reference](https://github.com/espressif/ESP31_RTOS_SDK/tree/master/documents)
    * [ESP32 Other Resources (Espressif/Documentation)](https://espressif.com/en/products/hardware/esp32/resources)
    * [ESP32 Other Resources (esp32.net)](http://esp32.net/)

# Toolchain
The Espressif Internet Development Framework (ESP-IDF) is core development tool-chain for the ESP32 chip. It includes the compiler, programming tools and various software components that enable software development on the chip.

* [How to Get Started with the ESP32](http://hackaday.com/2016/10/04/how-to-get-started-with-the-esp32/)
* [ESP32 Toolchain Setup on Ubuntu](http://iot-bits.com/esp32/esp32-toolchain-setup/)
* [ESP32 – building the toolchain for Linux (Ubuntu)](http://blog.podkalicki.com/esp32-building-the-toolchain-for-linux-ubuntu/)

# Over-The-Air Update (OTA)
* [Library Makes ESP Over the Air Updates Easy](https://hackaday.com/2019/03/21/library-makes-esp-over-the-air-updates-easy/)
* [ESP8266 - Pushing OTA Upgrades](http://smallbits.marshall-tribe.net/blog/2016/05/29/esp8266-pushing-ota-upgrades)
* https://www.youtube.com/watch?v=o05sBDfaFO8&index=9&list=PLNOffh-6mSoRfxD4wTvRziUDUiSLSyJKE

# AWS IoT with ESP32 and Mongoose OS
See - https://madcow-public.s3.amazonaws.com/iot_loft_guide.pdf
and - https://www.slideshare.net/AmazonWebServices/rapid-prototyping-with-aws-iot-and-mongoose-os-on-esp8266-esp32-and-cc3200-platforms

Prerequisites
* AWS CLI configured with valid credentials in the AWS account that you intend to use
    * http://docs.aws.amazon.com/cli/latest/userguide/installing.html
* ESP32 Dev board
    * A (good!) USB cable to connect the ESP32 board to your computer
    * mos – The Mongoose OS flashing tool. Download at http://www.mongoose-os.com
* git clone of the Mongoose OS repository from GitHub:
    * git clone https://github.com/

# ESP Security
* [Don’t Toss That Bulb, It Knows Your Password](https://hackaday.com/2019/01/29/dont-toss-that-bulb-it-knows-your-password/)

# Watchdog Time
* [Preventing Embedded Fails with Watchdogs](https://hackaday.com/2019/01/12/preventing-embedded-fails-with-watchdogs/)
* [ESP32 Technical Tutorials: Watchdog Processing](https://www.youtube.com/watch?v=C2xF3O6qkbg)
* [ESP32 Tutorial - Watchdog Timer](https://www.youtube.com/watch?v=7kLy2iwIvy8)
* [Watchdog Timers in Microcontrollers](https://www.allaboutcircuits.com/technical-articles/watchdog-timers-microcontroller-timers)

# Using Both ESP32 Cores
The ESP32 comes with 2 Xtensa 32-bit LX6 microprocessors: core 0 and core 1.
So, it is dual core.
When we run code on Arduino IDE, by default, it runs on core 1.
What if I wanted to keep everything WiFi related to core0,
while updating the displays was handled by core1,
and make your ESP32 multitasking?

* [How to use ESP32 Dual Core with Arduino IDE](https://randomnerdtutorials.com/esp32-dual-core-arduino-ide/)

# Swagger UI
* [ESP8266 Tutorial: Adding Swagger UI to REST AP](https://everythingesp.com/esp8266-tutorial-adding-swagger-ui-to-rest-api/)

# ESP32 Long-Range
* [External antennas and ESP32 Long-Range mode](https://www.youtube.com/watch?v=2rujjTOPIRU&app=desktop)
* [Wi-Fi Antennas with Gain and ESP32 Long-Range Mode (part2)](https://www.youtube.com/watch?v=PUppoaePi3A)
