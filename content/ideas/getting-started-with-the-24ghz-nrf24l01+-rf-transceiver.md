Status: draft
Title: Getting Started with the 2.4Ghz nRF24L01+ RF Transceiver
Date: 2100-01-01 00:00
Category: Electronics
Tags: nRF24L01, Wireless
Slug: getting-started-with-the-2.4ghz-nrf24l01-rf-transceiver
Author: Jeff Irland
Image: DRAFT_stamp.png
Summary: bla bla bla

Check out
* [RadioHead Packet Radio library for embedded microprocessors](http://www.airspayce.com/mikem/arduino/RadioHead/index.html)
* [nRFIoT - Easy IoT Sensors](https://hackaday.io/project/2009-nrfiot-easy-iot-sensors)
* [MySensors](http://www.mysensors.org/)
* [Mosquitto](http://mosquitto.org/).
* [Using an NRF24L01 for Air Bootloading](http://hackaday.com/2014/03/07/using-an-nrf24l01-for-air-bootloading/)
* [rf24boot v0.2 released!](http://ncrmnt.org/wp/2014/05/20/rf24boot-v0-2-released/#more-1792)
* [Raspberry Pi helps with 2.4GHz home automation](http://hackaday.com/2013/05/30/raspberry-pi-helps-with-2-4ghz-home-automation/)
* [Sniffing nRF24L01+ Traffic with Wireshark](http://hackaday.com/2014/08/05/sniffing-nrf24l01-traffic-with-wireshark/)
* [Sniffing and decoding NRF24L01+ and Bluetooth LE packets for under $30](http://blog.cyberexplorer.me/2014/01/sniffing-and-decoding-nrf24l01-and.html)
* [The Development Of A Lightweight Wireless Protocol](http://hackaday.com/2014/06/12/the-development-of-a-lightweight-wireless-protocol/)
* [A wireless door monitor based on the BANO framework](http://www.embeddedrelated.com/showarticle/605.php)
* [RFToy](http://rayshobby.net/rftoy/)
* [BLE advertising beacons using an nRF24L01+ module ](http://hackaday.com/2016/06/21/hackaday-prize-entry-ble-beacon-library/)
* [Fixing your cheap nrf24l01+ pa/lna module](http://blog.blackoise.de/2016/02/fixing-your-cheap-nrf24l01-palna-module/#comment-7225)
* [Building a LC-Filter for your nrf24l01+ pa/lna module](http://blog.blackoise.de/category/ugly-fix/)

![nRF24L01+](/img/posts/jekyll-posts/nRF24L01P+.jpg)
[Nordic Semiconductor offers a family][01] of ultra low power 2.4 GHz ISM band wireless solution device.
One of their latest modules is the ultra low power (ULP) 2Mbps RF transceiver called the [nRF24L01+][02].
(There is also the [nRF24LU1+][06], 2.4GHz RF System-on-Chip (SoC) with Flash and USB.
The nRF24LU1+ integrates an nRF24L01+ transceiver core with a 16MHz 8-bit 8051-compatible CPU, amoung other things.)
To design a radio system with the nRF24L01+,
you simply need a microcontroller and a few external passive components.
The configuration I purchased is is board mounted with the passive components
(e.g. crystal), built in antenna, etc. to support basic operation.
The high air data rate combined with two power saving modes make the
nRF24L01+ very suitable for ultra low power designs.
In addition, the nRF24L01+ is drop-in compatible with nRF24L01
and on-air compatible with Nordoc Semiconductor's nRF2401A, nRF2402, nRF24E1 and nRF24E2 radios.

I paid less than $9 for two of them (and it appears you can get them even cheaper)
and are highly recommended for simple but reliable wireless solutions.
By reading the [nRF24L01+ Product Specification v1.0][07] and other sources,
you can discover the following facts about this device:

* You can operate and configure the nRF24L01+ through a 4-wire Serial Peripheral Interface (SPI) bus.  The register map, which is accessible through the SPI, contains all configuration registers in the nRF24L01+.
* The device  handles all the high speed link layer operations via the Enhanced Shock-Burst protocol engine.  It features automatic packet assembly and timing, automatic acknowledgement, packet loss detection, and retransmissions of packets.  (The data-link layer has responsibility of transferring datagram from one node to adjacent node over a link.)
* It has user configurable parameters like frequency channel, output power and air data rate.  nRF24L01+ supports an air data rate of 250 kbps, 1 Mbps and 2Mbps with 126 RF channels within the 2.4GHz ISM band.  The high air data rate combined with two power saving modes make makes the device suitable for ultra low power solutions.
* The Enhanced ShockBurst protocol engine accepts a 1 to 32 bytes dynamic payload length, automatic packet handling, and maximum of 6 data pipe to support 1-to-6 star networks.
* Each radio can receive packets on up to six different addresses. This allows us to implement features such as selective packet broadcasting without sacrificing other functionality.

## Usage
The Enhanced ShockBurst features enable significant improvements of power efficiency for
bi-directional and uni-directional systems,
without adding complexity on the host controller side.
In Enhanced ShockBurst it is possible to configure parameters such as the maximum number
of retransmits and the delay from one transmission to the next retransmission.
All automatic handling is done without the involvement of the MCU.

>>> **What is Enhanced ShockBurst?** Using Enhanced Shockburst is a lot like using TCP,
where regular Shockburst is like using UDP.
While Enhanced Shockburst doesn’t handle setting up and closing a connection like TCP does (AKA sockets),
it does give you some sort of semi-guarantee that your packet will get through.
Similar to TCP, Enhanced Shockburst will try so many times to send a packet that is not acknowledged
(also handled by Enhanced Shockburst at the receiver) before it just gives up and flags an interrupt.

>>> The setup / assumptions for Enhanced Shockburst is very simple.
First, you need to make sure that at the TX device,
your pipe 0 RX address (RX_ADDR_P0 register) is the same as your TX address (TX_ADDR register).
This is because auto-acknowledgements are received on pipe 0 of the TX device.
Next, you would enable auto-acknowledgements on pipe 0 of the TX and whatever pipe(s) you are using at the RX.
Finally, you would set up the maximum number of retries and the retry delay in the
SETUP_RETR register (ARC and ARD fields, respectively) of the TX device.

>>> **What is a Pipe?** The radio has 6 pipes, and each pipe is essentially
just an address that you can receive data on (when in RX mode).
This means that any nRF24L01+ can actually act as 6 different receivers at the same time!
So what good is this?
You could set up one pipe to be a data channel and another to be a control channel.
You might also have a receiver that did several different functions,
and would do the task that corresponds to the channel it received data on.

>>>keep these things in mind.
Pipes use the same RF channel (whatever the channel is set in the RF_CH register).
If you are using Enhanced Shockburst, the transmitter’s TX address and pipe 0 receive
address (TX_ADDR and RX_ADDR_P0, respectively) must be the same to get autoacknowledgements properly.
This can be a pain since every time you want to send data to a different address you have to change two addresses.

An nRF24L01 configured as primary RX (PRX) will be able to receive data trough 6 different data pipes, as in the figure below.
A data pipe will have a unique address but share the same frequency channel.
This means that up to 6 different nRF24L01 configured as primary TX (PTX)
can communicate with one nRF24L01 configured as PRX,
and the nRF24L01 configured as PRX will be able to distinguish between them.

![nRF24L01_figure04](img/posts/jekyll-posts/nRF24L01P_figure04.jpg)

Data pipe 0 has a unique 40 bit configurable address.
Each of data pipe 1-5 has an 8 bit unique address and shares the 32 most significant address bits.
All data pipes can perform full Enhanced ShockBurst functionality.
nRF24L01 will use the data pipe address when acknowledging a received packet.
This means that nRF24L01 will transmit ACK with the same address as it receives payload at.

An nRF24L01 configured as PTX with Enhanced ShockBurst enabled,
will use the ShockBurst feature to send a packet whenever the microcontroller wants to.
After the packet has been transmitted, nRF24L01 will switch on its receiver
and expect an acknowledgement to arrive from the terminating part.
If this acknowledgement fails to arrive,
nRF24L01 will retransmit the same packet until it receives an acknowledgement
or the number of retries exceeds the number of allowed retries given in the SETUP_RETR_ARC register.
If the number of retries exceeds the number of allowed retries,
this will show in the STATUS register bit MAX_RT and gives an interrupt.
Whenever an acknowledgement is received by an nRF24L01 it will consider the last transmitted packet as delivered.
It will then be cleared from the TX FIFO, and the TX_DS IRQ source will be set high.

## Documenation
The nRF24l01+ transceiver is also simple to use, in part to its simple design philosophy,
but also thanks to some great libraries:

* [Mirf Library][14] and its [documentation][15]
* [RF24 Library][10] and its [documentation][11]
* [RF24 Network Library][12] and its [documentation][13]

And to top it off, the website [DIY embedded][09],
which seems to specialize in the Nordic Semiconductor nRF24L01,
and has multiple nRF24L01 tutorials on it home page.

* [Tutorial 0: Everything You Need to Know about the nRF24L01 and MiRF-v2 ](http://www.diyembedded.com/tutorials/nrf24l01_0/nrf24l01_tutorial_0.pdf)
* [Tutorial 1: Getting a Simple Link Going with the nRF24L01 and the nRF24L01 C Library](http://read.pudn.com/downloads144/sourcecode/embed/626756/nrf24l01_tutorial_1_pic18.pdf)
* [Tutorial 2: A Sweet Hardware Link Layer with Enhanced Shockburst](http://read.pudn.com/downloads144/sourcecode/embed/626770/nrf24l01_tutorial_2_pic18.pdf)
* [Tutorial 3: Working with Multiple Pipes ](http://read.pudn.com/downloads164/sourcecode/book/750274/nrf24l01_tutorial_3.pdf)
* [Tutorial 4: Cryptography with ARC4](http://www.diyembedded.com/tutorials/nrf24l01_4/nrf24l01_tutorial_4.pdf)

## Key Features
Key features of the nRF24L01+ are (source: [nRF24L01+ data sheet][02]):

* Worldwide 2.4GHz ISM band, GFSK modulation, 1 or 2MHz bandwidth
* 0, -6, -12, and -18dBm programmable TX output power
* configurable 250 kbps, 1 Mbps and 2 Mbps on air data rates
* RX sensitivity of -94dBm at 250kbps, -82dBm at 2Mbps, and -85dBm at 1Mbps
* The radio front end uses Gaussian Frequency-Shift Keying (GFSK) modulation with a programmable transmit power of 0, -6, -12 or -18dBm and 11.3mA at 0dBm.  When receiving, it has -82dBm sensitivity at 2Mbps, -85dBm sensitivity at 1Mbps, and -94dBm sensitivity at 250kbps with 13.5mA at 2Mbps.
* Ultra low power (11.3 mA Tx with 1 mW (0dBm) output power, 13.3mA Radio RX at 2Mbps on-air data-rate, down to 26 μA in standby-I and 900 nA deep sleep mode)
* VCC (i.e. supply voltage) is range of 1.9 – 3.6V, with 5V tolerant input pins (**Supply voltage is really up to 3.6V. Using a supply voltage of 5V will destroy the module!**)
* Except of VCC and GND，the other pins can be direct connected to 5V Microprocessor's IO, without the need for level converter.
* Automatic acknowledge sending with automatic retries
* RX and TX FIFO’s with ACK user data possibility
* Dynamic payload length of 1 to 32 Bytes
* Up to 6 data pipes/addresses for simplified star network
* Simple 8 pin (7 pin without IRQ) 10Mbps SPI interface: VCC, GND, CE, CSN, SCK, MISO, MOSI and optional IRQ.

Below is the nRF24L01 Block Diagram (Source: Nordic Semiconductor Data Sheet [nRF24L01P_Product_Specification_1_0.pdf][03])
<center>
![block diagram](/img/posts/jekyll-posts/nrf24l01-block-diagram.png)
</center>

## Pin Connections
On the board containing the nRF24L01+, you have eight pins to interface with,
and these are Vcc, GND, IRQ, CE, and the four SPI-related pins (CSN, SCK, MISO, and MOSI).
The boards pin out is illustrated below:
<center>
![block diagram](/img/posts/jekyll-posts/nRF24L01P+-pin-out.jpg)
</center>

1. **GND:** Ground.
2. **VCC:** 3.3V power input. This pin is connected to the input of a voltage regulator on the board.
3. **CE:** This pin is always an input with respect to the 24L01. This pin has different meanings depending on what mode the 24L01 is in at a given time.
    * If the **device is a receiver**, having CE high allows the 24L01 to monitor the air and receive packets.  CE being low puts the chip in standby and it no longer monitors the air.
    * If the **device is a transmitter**, CE is always held low except when the user wants to transmit a packet.  This is done by loading the TX FIFO and then toggling the CE pin (low-to-high transition, leave high for at least 10 uS, then back to low).
4. **CSN:** Chip Select Not.  This is the enable pin for the SPI bus, and it is active low (hence the “not” in the name). You always want to keep this pin high except when you are sending the device an SPI command or getting data on the SPI bus from the chip.
5. **SCK:** SPI Shift Clock, up to 10 MHz.  When you configure your SPI bus, SCK should stay low normally (rising edges are active), and the clock samples data in the middle of data bits.
6. **MOSI:** Master-Out-Slave-In.  From both the microcontroller’s and the 24L01’s perspectives, the master is the microcontroller and the slave is the 24L01. This is because the 24L01 never sends data without first being requested by the microcontroller. Essentially, this pin is the side of the bus on which the master (the microcontroller) sends data to the slave (the 24L01). It is also connected to the MOSI pin on your microcontroller’s SPI interface.
7. **MISO:** Master-In-Slave-Out.  This pin is like the MOSI pin, but backwards. This pin is the side of the bus on which the slave (the 24L01) sends data to the master (the microcontroller). As you can see, SPI is a full-duplex bus, meaning that you can send data in both ways at once, but on separate lines.
8. **IRQ:** Optional Interrupt Request pin.  The interrupt pin is to signal your microcontroller that something interesting has happened. You can set interrupts for any combination of the following events: data received, data transmitted, and maximum number of transmit retries reached. If you’re not using interrupts, this pin isn’t required because you can poll the 24L01’s STATUS register over SPI to see if any interrupt has occurred, but it’s still faster (in general) to check the status of an IO pin than to send an SPI command and then wait for the response. NOTE: the IRQ pin is ACTIVE-LOW. It is normally high, but when an interrupt is asserted, the pin will go low.

## Bit and Byte Order
The SPI needs to be configured to send the **Most Significant Bit First**. within a byte.
For multiple data bytes, the **Least Significant Byte needs to be shifted first**.

## Establishing My Code Base
I'm using the blog posting [Setup Nordic nRF24L01 RF modules to both Arduino UNO and Raspberry Pi][04]
and [Migrated RF24 codes to github][08]
for guiding me in the development of my wireless sensor network.
I'm also using the code associated with this post, listed on GitHub
and called [Arduino & Raspberry Pi Driver for nRF24L01+ 2.4GHz Wireless Transceiver][05].
I also took the `rpi_hub_arduino` program from the GitHub site from which this apparently was forked
([maniacbug's library][10])
and made some changes on the use of RPI GPIO pins.
All this was needed since the documentation and code seemed to be out of synch.
Never the less, the [RF24 Library's][10] [documentation][11] appears to capture functionality.

I downloaded the library and example files into `~/src`
on my Raspberry Pi using `git clone https://github.com/stanleyseow/RF24.git`.
I then made multiple modifications to the code and the Makefiles.
My objective is to have a single instance of code, when conditionally compiled,
create the required libraries to support the Raspberry Pi or the Arduino.
I'm attempting to make simpler the maintenance of a RPi/Arduino wireless network with a single code base.

### Arduino Hardware
Arduino Uno connections to the nRF24L01 modules:

| Arduino Uno | nRF24L01+ | Function |
|:-----------:|:---------:|:--------:|
|   Pin 12    |   Pin 7   |   MISO   |
|   Pin 11    |   Pin 6   |   MOSI   |
|   Pin 13    |   Pin 5   |   SCK    |
|   Pin 9     |   Pin 4   |   CSN    |
|   Pin 8     |   Pin 3   |    CE    |
|    3.3V     |   Pin 2   | VCC/3.3V |
|    GND      |   Pin 1   |   GND    |

The pin assignment for CE and CSN are configurable, in that you could use other pins on the Arduino.
RF Module Pin 8 (IRQ) is not connected since our application isn't using an interupt.

Optional :- Connect a small buzzer to digital Pin 2 to hear a beep when the packet is returned to sender.

![Raspberry Pi (Revision 1) GPIO Pin Out](/img/posts/jekyll-posts/raspberry-pi-rev-1-gpio-pin-out.jpg)

>>>**Note:** Resetting the Arduino doesn’t necessarily reset the radio, which can prevent the radio from initializing properly.  Neil's Log Book][16] states you can avoid this problem by wiring the radio’s Vcc pin to an Arduino digital output pin.  At program startup, set that pin low for 100 ms and then high before calling Radio_Init().  This will reset the radio, ensuring that it is ready to be reinitialized.

### Arduino Software
Make sure the Arduino IDE is installed on the Ubuntu platfrom via `sudo apt-get install arduino arduino-core arduino-mk`.
The program required for the Ardunio is within `~/src/RF24/examples/nRF24_sendto_hub`.
From the directory `~/src/RF24`,
I had to copy `nRF24L01.h  RF24_config.h  RF24.cpp  RF24.h` to the current directory.

Compile and upload to the Arduino


## Setting Up Raspberry Pi

### Raspberry Pi Hardware

|       Raspberry Pi      | nRF24L01+ | Function |
|:-----------------------:|:---------:|:--------:|
| GPIO 9 / MISO (Pin 21)  |   Pin 7   |   MISO   |
| GPIO 10 / MOSI (Pin 19) |   Pin 6   |   MOSI   |
| GPIO 11 / SCKL (Pin 23) |   Pin 5   |   SCK    |
|  GPIO 8 / CE0 (Pin 24)  |   Pin 4   |   CSN    |
|    GPIO 25 (Pin 22)     |   Pin 3   |    CE    |
|       3.3V (Pin 1)      |   Pin 2   | VCC/3.3V |
|       Gnd (Pin 25)      |   Pin 1   |   GND    |

### Raspberry Pi Software
I downloaded the library and example files into `~/src`
on my Raspberry Pi using `git clone https://github.com/stanleyseow/RF24.git`.
I then proceeded to build the required libraries and executables doing the following:

    cd ~/src/RF24/librf24-rpi/librf24
    make
    sudo make install
    sudo ldconfig -v | grep librf

Now build the example programs:

    cd ~/src/RF24/librf24-rpi/librf24/examples
    make




## Sources

* [NRF24L01+ transmitting from Raspberry pi to Arduino](http://p24bredo.wordpress.com/2013/05/21/nrf24l01-transmitting-from-raspberry-pi-to-arduino/)
* [Python code to interface with Nordic nRF24L01+ radio over SPI through BusPirate](https://github.com/kevinmehall/nRF24L01-buspirate)
* [ARDUINO + RASPBERRY PI Switching light with NRF24l01+](http://hack.lenotta.com/arduino-raspberry-pi-switching-light-with-nrf24l01/)
* [Tutorial: Ultra Low Cost 2.4 GHz Wireless Transceiver with the FRDM Board](http://mcuoneclipse.com/2013/07/20/tutorial-ultra-low-cost-2-4-ghz-wireless-transceiver-with-the-frdm-board/)
* [Setup Nordic nRF24L01 RF modules to both Arduino UNO and Raspberry Pi](http://arduino-for-beginners.blogspot.com/2013/02/setup-nordic-nrf24l01-rf-modules-to.html?goback=%2Egde_1268377_member_217339050#%21)
* [Tutorial - nRF24L01 and AVR](http://gizmosnack.blogspot.com/2013/04/tutorial-nrf24l01-and-avr.html)
* [Raspberry pi: nRF24L01 and TCP](http://gizmosnack.blogspot.com/2013/05/raspberry-pi-nrf24l01-and-tcp.html)
* [Using the nRF24L01 wireless module](http://www.insidegadgets.com/2012/08/22/using-the-nrf24l01-wireless-module/)
* [Getting Started with nRF24L01+ on Arduino](http://maniacbug.wordpress.com/2011/11/02/getting-started-rf24/)
* [nRF24L01 2.4GHz Radio/Wireless Transceivers How-To](http://arduino-info.wikispaces.com/Nrf24L01-2.4GHz-HowTo)
* [nRF24L01 Examples using the RF24 Libraries](http://arduino-info.wikispaces.com/nRF24L01-RF24-Examples)
* [ElectFreaks NRF24L01 Series](http://www.elecfreaks.com/wiki/index.php?title=NRF24L01_Series)
* [Neil's Log Book](http://nrqm.ca/nrf24l01/)

[01]:http://www.nordicsemi.com/eng/Products/2.4GHz-RF
[02]:http://www.nordicsemi.com/eng/Products/2.4GHz-RF/nRF24L01P
[03]:http://www.general-files.org/download/gs56bb2066h32i0/nRF24L01P_Product_Specification_1_0.pdf.html
[04]:http://arduino-for-beginners.blogspot.com/2013/02/setup-nordic-nrf24l01-rf-modules-to.html?goback=%2Egde_1268377_member_217339050#%21
[05]:https://github.com/stanleyseow/RF24
[06]:http://www.nordicsemi.com/eng/Products/2.4GHz-RF/nRF24LU1P
[07]:http://www.nordicsemi.com/eng/content/download/2726/34069/file/nRF24L01P_Product_Specification_1_0.pdf
[08]:http://arduino-for-beginners.blogspot.com/2013_03_01_archive.html
[09]:http://blog.diyembedded.com/
[10]:https://github.com/maniacbug/RF24
[11]:http://maniacbug.github.io/RF24/index.html
[12]:https://github.com/maniacbug/RF24Network
[13]:http://maniacbug.github.io/RF24Network/
[14]:https://github.com/aaronds/arduino-nrf24l01
[15]:http://playground.arduino.cc/InterfacingWithHardware/Nrf24L01
[16]:http://nrqm.ca/mechatronics-lab-guide/lab-guide-using-the-radio/
[17]:
[18]:
[19]:
[20]:
[21]:
[22]:
[23]:
[24]:
[25]:
[26]:
