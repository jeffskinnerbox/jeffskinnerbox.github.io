
* [70+ Raspberry Pi alternatives in one convenient list](http://liliputing.com/2016/06/70-raspberry-pi-alternatives-one-convenient-list.html)
* [Understanding the Differences Between ARM and x86 Processing Cores](https://www.allaboutcircuits.com/news/understanding-the-differences-between-arm-and-x86-cores/?utm_source=All+About+Circuits+Members&utm_campaign=623e2e2933-EMAIL_CAMPAIGN_2017_05_16&utm_medium=email&utm_term=0_2565529c4b-623e2e2933-270523833/)

Are you feeling confined by the Arduino's limited environment, peripherals, and power?
You're beginning to look around for other options, but your finding there are too many choices?
There are microcontrollers from dozens of vendors in 8-bit, 16-bit, and 32-bit flavors,
each requiring its own compilers and programmers, which could add up to a fortune.
Is there no cheap and viable alternative for the little blue board
that has captured your imagination?

## Microcontroller vs Microprocessor
A microcontroller differs from a microprocessor in many ways.
The first and most important difference is its functionality.
In order that the microprocessor may be used,
other components such as memory must be added to it.
Even though the microprocessors are considered to be powerful computing machines,
their weak point is that they are not adjusted to communicating to peripheral equipment.
In order to communicate with peripheral environment,
the microprocessor must use specialized circuits added as external chips.
In short microprocessors are the pure heart of the computers.

On the other hand, the microcontroller is designed to be all of that in one.
No other specialized external components are needed for its application
because all necessary circuits which otherwise belong to peripherals are already built into it.
It saves the time and space needed to design a device.
Also, microcontroller is a processor that has its program and data memory built in.
These chips are intended for small embedded control applications,
so leaving the pins for I/O and not requiring a external memory bus.

The distinction between a SoC or "single chip solution"
and a microcontoller may be a bit fuzzy.
In essence, a SoC is a single chip that does everything that used to take up multiple chips.
The SoC in a cell phone might have a 32-bit ARM processor running Android
and any apps that the user has installed.
In addition it would have a GPU, the wireless transceiver and modem,
the video and audio decoders for streaming video, GPS, controllers for the accelerometer,
controllers for battery management, and who knows what else.
As a result, there could be multiple microcontrollers in a SoC.

## AVR / Atmel
The [AVR][01] is a [modified Harvard architecture][05] 8-bit RISC single chip microcontroller
which was developed by Atmel in 1996.
The megaAVR chips became extremely popular after they were designed into the
8-bit Arduino platform in 2005.

* [Arduino](http://arduino.cc/en/Main/Products)

## PIC / Microchip Technology
PIC or PICmicro is a family of modified Harvard architecture microcontrollers
made by [Microchip Technology][04] but,
originally developed by General Instrument's Microelectronics Division.
The name PIC initially referred to "Peripheral Interface Controller" now it is "PIC" only.
Given that there is nearly 2000 different models of PIC microcontrollers,
Microchip provides a [Product Selector Tool][11].

## ARM / ARM Holding
[ARM][03] is a family of instruction set architectures for computer processors based
on a reduced instruction set computing (RISC)
architecture developed by British company [ARM Holdings][02].
The ARM Cortex-M is a group of 32-bit RISC ARM processor cores licensed by ARM Holdings.
The cores are intended for microcontroller use, and consist of the Cortex-M0, M0+, M1, M3, M4, and M7.
The latest generation of chips, [Cortex-M7][07],
is a 32-bit processor that provides double the compute performance
and digital signal processing (DSP) capability of the previous generation of ARM-based microcontrollers.

In addition, ARM has [announced][08]
a new software platform and free operating system to simplify
and speed up the creation and deployment of Internet of Things (IoT) products
called the [ARM mbed™ IoT Device Platform][09].
The operating system consists of a [device-side OS that runs on ARM’s M-class designs][10]
and a server side piece of software called mbed Device Server.
The Device Server will run in virtualized environments and other types of chips.
The OS design means that constrained and relatively “dumb” devices
can communicate back to smarter ones running higher power operating systems.
The OS contains security, communication and device management features
and supports Wi-Fi, Bluetooth, 6LoWPAN and Thread, but not Z-wave or Zigbee.
It can support both IPv4 and IPv6 as well.
The mbed OS is free, will be available to ARM’s partners and developers in 4Q14.

* [Tessel 2](https://tessel.io/)
* [Teensy 3.1](https://www.pjrc.com/teensy/)
* [BeagleBone](http://beagleboard.org/bone)
* [Freedom](http://mbed.org/platforms/FRDM-KL46Z/)
* [BananaPi](http://bananapi.org/) - ARM Cortex-A7 dual-core
* [Raspberry Pi](http://www.raspberrypi.org/) - Broadcom BCM2835 system on a chip (SoC), which includes an ARM11

## Intel
* [Intel Edison Module](http://www.intel.com/content/www/us/en/do-it-yourself/edison.html)

## Feescale
* [UDOO](http://www.udoo.org/)
* [Wandboard](http://www.wandboard.org/)
* [RIoTboard](http://www.riotboard.org/)
* [WaRP](http://www.warpboard.org/)
* [CuBox](http://www.solid-run.com/product/cubox-i2/)

## MIPS
MIPS (originally an acronym for Microprocessor without Interlocked Pipeline Stages)
is a reduced instruction set computer (RISC) instruction set (ISA)
developed by MIPS Technologies.

* [WRTnode](http://wrtnode.com/) -
The MT7620 router-on-a-chip includes an 802.11n MAC and baseband,
a 2.4 GHz radio,
a 580 MHz [MIPS][37] CPU ([MIPS 24KEc][38]),
a 5-port 10/100 switch
and two Reduced Gigabit Media Independent Interface (RGMII).
The CPU can process advanced
applications such as routing, security, and VoIP.
The MT7620 also includes a selection of interfaces to support a variety of applications,
such as a USB port for accessing external storage.

## Other Processors
* [pcDuino3](http://www.pcduino.com/pcduino-v3/) -
Allwinner Technology is a China-based fabless semiconductor company that designs
mixed-signal [SoC][06] and provides total system solution.


Maybe this is all you need for this post:

* [Open Source Hardware](http://au.mouser.com/applications/open-source-hardware/)
* [Microcontroller Comparison](http://www.makershed.com/pages/microcontroller-comparison)
* [How Intel's Edison Stacks Up Against Arduino And Raspberry Pi](http://readwrite.com/2014/09/10/intel-edison-raspberry-pi-arduino-comparison)
* [The Edison is Not a Raspberry Pi](https://www.sparkfun.com/news/1603?utm_source=SparkFun+Customer+Newsletter&utm_campaign=4dbf6c0ad1-StandardNewsletterSept22-26&utm_medium=email&utm_term=0_fa5287abaf-4dbf6c0ad1-7212537)
* []()

This interactive site contains information on many of the latest open source hardware boards and accessories, including BeagleBone, Arduino, Netduino, STMicroelectronics Nucleo, Texas Instruments LaunchPad, and the Intel Galileo.

The site contains schematic diagrams, technical details, and compatible expansion boards for the most common OSHW boards.

The new site is project oriented, allowing developers to sort and select parametric data for the desired board requirements of their particular project.

Parameters include processor type and speed; number of analog and digital inputs; wireless options including WiFi and Bluetooth; USB ports including host, client, and/or OTG; video connectivity; and more.

* [Raspberry Pi stays sky high in 2015 Hacker SBC Survey](http://linuxgizmos.com/raspberry-pi-stays-sky-high-in-2015-hacker-sbc-survey/)
* [Raspberry Pi Comparison Chart](https://www.makershed.com/pages/raspberry-pi-comparison-chart?utm_medium=email&utm_campaign=Maker+Pro+Newsletter+-+020515&utm_content=Maker+Pro+Newsletter+-+020515+CID_23412c58008033119ffa4ad6b38d34f9&utm_source=email_campaign&utm_term=RaspberryPiComparisonChart)
* [Orange Pi SBC tempts Raspberry Pi clone fans](http://linuxgizmos.com/orange-pi-sbc-tempts-raspberry-pi-clone-fans/)
* [Arietta G25 - Acme Systems Linux boards](http://www.acmesystems.it/arietta)
* [Processor Boards for IoT](https://iotdc.hackpad.com/Processor-Boards-for-IoT-jBHdtN5BRrZ)
* [Embedded Linux board comparison chart and more!](http://www.adafruit.com/blog/2014/05/06/embedded-linux-board-comparison-chart-and-more/)
* [Embedded Linux Board Comparison](https://learn.adafruit.com/embedded-linux-board-comparison/overview)
* [ODROID-W](http://www.hardkernel.com/main/products/prdt_info.php?g_code=g140610189490)
* [Black Swift](http://www.open-electronics.org/black-swift-the-tiny-wireless-computer-is-on-kickstarter/)
* [Fubarino SD Development Board](http://www.microchip.com/stellent/idcplg?IdcService=SS_GET_PAGE&nodeId=1406&dDocName=en566210)
* [iMX233-OLinuXino-NANO](https://www.olimex.com/Products/OLinuXino/iMX233/iMX233-OLinuXino-NANO/)
* [TE-TM4C123](http://community.arm.com/docs/DOC-8010)
* [TinyDuino](https://tiny-circuits.com/products/tinyduino/)
* [MinnowBoard](http://www.minnowboard.org/)
* [ODROID-U3](http://hardkernel.com/main/main.php)
* [MSP430 Launchpad](http://embedded-lab.com/blog/?p=4114&mid=5508)
* [HummingBoard](http://imx.solid-run.com/wiki/index.php?title=HummingBoard_Hardware)
* [CuBox-i](http://cubox-i.com/)
* [chipKIT Uno32](https://digilentinc.com/Products/Detail.cfm?NavPath=2,892,893&Prod=CHIPKIT-UNO32)
* [CubieTruck](http://www.cubietruck.com/)
* [Tiva C Series Connected LaunchPad](http://www.automationworld.com/control/prototype-internet-things-apps-20)
* [Tiniest Linux COM yet - OpenWRT Linux on a MIPS-based Ralink RT5350 SoC](http://linuxgizmos.com/tiniest-linux-com-yet/)
* [WeIO - Tiny open-source module aims to make IoT apps easy](http://linuxgizmos.com/tiny-open-source-module-aims-to-make-iot-apps-easy/)
* [P-Star 25K50 Micro](http://www.pololu.com/product/3150)
* [ARM-BMW, The Open Hardware Cortex-M0 Development Board](http://theanine.io/projects/arm-bmw/)
* [Radxa](http://radxa.com/)
* [Parallella-16 Micro Server](https://www.parallella.org/parallella-models/)

| Board | Processor | Flash Memory | RAM Memory | EEPROM | I/O | Analog In | PWM | UART, I2C, SPI |
|:------|:---------:|:------------:|:----------:|:------:|:---:|:---------:|:---:|:------------:|
|Teensy 3.1|MK20DX25, 32 bit ARM Cortex-M4, 72 MHz|262144|65536|2048|34, 3.3V, 5V|21|12|32, 2, 1|

Wireless Enabled

* [RFduino](http://www.rfduino.com/)
* [Blend Micro - an Arduino Development Board with BLE](http://www.seeedstudio.com/depot/Blend-Micro-an-Arduino-Development-Board-with-BLE-p-1834.html?utm_source=EDM20140520&utm_medium=EDM20140520&utm_campaign=EDM20140520)
* [VoCore: A coin-sized Linux computer with wifi](https://www.indiegogo.com/projects/vocore-a-coin-sized-linux-computer-with-wifi#home)
* [JeeNode](http://jeelabs.net/projects/hardware/wiki/JeeNode)
* [ATmega128RFA1](https://www.sparkfun.com/products/11197)
    * [ATmega128RFA1 Dev Board Hookup Guide](https://learn.sparkfun.com/tutorials/atmega128rfa1-dev-board-hookup-guide)
    * [TinyOS](http://www.tinyos.net/)
* [WiDo - Arduino Compatible + WiFI IoT Node](http://www.dfrobot.com/index.php?route=product/product&product_id=1159&utm_medium=email&utm_campaign=September+is+great%2C+here%27s+why&utm_source=YMLP&utm_term=image+576)
* [Waspmote](http://www.cooking-hacks.com/documentation/tutorials/waspmote)
* [Moteino](https://lowpowerlab.com/shop/index.php?_route_=Moteino-R4)
* [Energia](http://www.element14.com/community/people/janisalnis/blog/2014/09/13/energia-is-out-there-for-cc3200)
* []()

[01]:http://en.wikipedia.org/wiki/Atmel_AVR
[02]:http://en.wikipedia.org/wiki/ARM_Holdings
[03]:http://en.wikipedia.org/wiki/ARM_architecture
[04]:http://en.wikipedia.org/wiki/Microchip_Technology
[05]:http://en.wikipedia.org/wiki/Modified_Harvard_architecture
[06]:http://en.wikipedia.org/wiki/System_on_a_chip
[07]:http://venturebeat.com/2014/09/23/arm-aims-to-put-real-brains-in-devices-for-internet-of-things/?utm_source=feedburner&utm_medium=feed&utm_campaign=Feed%3A+Venturebeat+VentureBeat
[08]:http://www.arm.com/about/newsroom/arm-announces-device-platform-and-free-os-to-accelerate-internet-of-things-deployment.php
[09]:http://mbed.org/
[10]:https://gigaom.com/2014/10/01/to-combat-fragmentation-arm-built-a-new-type-of-os-for-the-internet-of-things/
[11]:http://www.microchip.com/maps/microcontroller.aspx
[12]:
[13]:
[14]:
[15]:
[16]:
[17]:
[18]:
[19]:
[20]:

[37]:http://en.wikipedia.org/wiki/MIPS_instruction_set
[38]:http://www.systemc-cpu-models.org/mips_models/24kec/
