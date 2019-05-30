Title: Setting up the XBee on the Arduino and Raspberry Pi
Date: 2100-01-01 00:00
Category: Electronics
Tags: XBee, Arduino, Raspberry Pi
Slug: setting-up-the-xbee-on-the-arduino-and-baspberry-pi
Author: Jeff Irland
Image: DRAFT_stamp.png
Summary: abla bla bla

* [Sniffing and decoding NRF24L01+ and Bluetooth LE packets for under $30](http://blog.cyberexplorer.me/2014/01/sniffing-and-decoding-nrf24l01-and.html)

## Installing  xbee-arduino Tools for the Arduino
Now lets install the tool set for the Arduino development, [xbee-arduino][01],
identified in my post [Selecting XBee Radios and Supporting Software Tools][02]".
This environment will be on my PC since I haven't established a Arduino development environment on my RPi.
Download the xbee-arduino zip file from the site, unzip it, and move the created XBee directory to your Arduino library (in my case `C:\Program Files\arduino-1.0.1\libraries`).

Your now ready for Arduino development, but first, lets get the XBee radios configured properly.  Back to the RPi which is where we'll perform the configuration.

## Setting-up a XBee Network End Device on the Arduino
The first thing I want to set up is the End Device since it will be my sources of spontaneous XBee packets, and therefore, I can use it to validate the Coordinator's set-up.

To wire the XBee radio to the Arduino, do the following:

* The Arduino's RX is digital pin 10.  Connect this to the XBee's TX  (3rd pin from the right on the [Adafruit  XBee Adapter][03])
* The Arduino's TX is digital pin 11.  Connect this to the XBee's RX (4th pin from the right on Adapter)
* For power, wire the Arduino's 5 volt pin to the XBee's power (5th pin from the right on Adapter)
* For ground, wire the Arduino's ground to the XBee's ground (7th pin from the right on Adapter)

I make use of the [Arduino SoftwareSerial library][04] so that I can use the  Atmega chip's native serial port (supported via the  chips [UART][05]) for boot loading and debugging.
Also use Arduino XBee development development library  [xbee-arduino][06] identified earlier.

<a href="http://www.desert-home.com/2012/10/using-xbee-library.html">Using the XBee library</a>

<a href="http://www.desert-home.com/p/the-world-of-xbee.html">The World of XBee</a>

<a href="http://www.jsjf.demon.co.uk/xbee/xbee.pdf">XBee Cookbook Issue 1.4 for Series 1 (Freescale) with 802.15.4 Firmware, John Foster, April 26, 2011</a>

The <a href="ftp://ftp1.digi.com/support/documentation/90000982_A.pdf">XBee's API Operation</a> (page 56)

``` c
/* TBD */
```

This program bla bla bla

## Setting-up the XBee Network Coordinator on the RPi
Using the python-xbee package installed earlier and the XBee radio reconfigured as a network coordinator, I'm ready to establish the coordinator node of my XBee network on the RPi.  I accomplish this via the following Python program:

``` python
# TBD
```

This program bla bla bla

enter watch mode: `echo -e "baudrate 9600\nserial /dev/ttyUSB0\nwatch\n" | python xbee-serial-terminal.py`

## Packets, Frames, and Protocols
The terms frame and packet are not interchangeable, though many people often use them that way. Also, packets and frames, in themselves, do not full specify a protocol.

* **What is a frame? -** A frame is simply a chunk of data with a pattern of bits at the start and possibly bits at the end. The bits at the start and end of the frame are often referred to as frame delimiters. Frames are created by hardware protocols and contain frame delimiters, hardware addresses, such as the source and destination MAC addresses, and data encapsulated from a higher layer protocol.
* **What is a packet? -** A packet is simply a chunk of data enclosed in one or more wrappers that help to identify the chunk of data and route it to the correct destination. Destination in this sense means a particular application or process running on a particular machine. These wrappers consist of headers, or sometimes headers and trailers. Packets are created at the machine sending the information. The application generating the data on the sending machine passes the data to a protocol stack running on that machine. The protocol stack breaks the data down into chunks and wraps each chunk in one or more wrappers that will allow the packets to be reassembled in the correct order at the destination.
* **What is a protocol? -** The word "protocol" refers to a set of rules for communicating. Networking protocols specify what types of data can be sent, how each type of message will be identified, what actions can or must be taken by participants in the conversation, precisely where in the packet header or trailer each type of required information will be placed, the method of error checking, how to compact data (if required), how the transmitting device signals that it has concluded sending data, how the receiving device signals that it has completed receiving data, and more. Sometimes protocols are "layered" on top of other protocols, taking advantage of what's already there and adding additional capabilities.

To make this more concrete, consider an Ethernet based IP email packet example illustration below. You can see how frames and packets differ but are  intimately related. On the other hand, a protocol is much more than the data being encapsulated and sent.

<a href="http://www.aboutdebian.com/network.htm"><img alt="encapsulated payload" src="http://jeffskinnerbox.files.wordpress.com/2013/01/encapsulated-payload.gif?w=500" width="500" height="221" /></a>

<a href="http://www.aboutdebian.com/network.htm"><img alt="outgoing e-mail frame" src="http://jeffskinnerbox.files.wordpress.com/2013/01/outgoing-e-mail-frame.gif?w=500" width="500" height="181" /></a>

<a href="http://blog.onlymyemail.com/how-email-works/"><img alt="how email works" src="http://jeffskinnerbox.files.wordpress.com/2013/01/how-email-works.jpg?w=431" width="431" height="500" /></a>

<a href="http://www.erg.abdn.ac.uk/~gorry/course/intro-pages/protocols.html">Communications Protocols</a>

sliding window protocol
<h2>References</h2>
Configuring the XBee Radios
<ul>
<ul>
	<li style="padding-left:30px;"><a href="http://www.digi.com/support/kbase/kbaseresultdetl?id=2184">What is API (Application Programming Interface) Mode and how does it work?</a></li>
	<li style="padding-left:30px;"><a href="http://docs.sensestage.eu/change-to-using-the-api-mode-of-the-xbees">Change to using the API mode of the XBees</a></li>
	<li style="padding-left:30px;"><a href="http://www.instructables.com/id/Configuring-XBees-for-API-Mode/">Configuring XBees for API Mode</a></li>
	<li style="padding-left:30px;"><a href="http://www.circuitsathome.com/mcu/playing-xbee-part-4-api">Playing Xbee. Part 4 – API</a></li>
	<li style="padding-left:30px;"><a href="http://code.google.com/p/xbee-api/wiki/XBeeConfiguration">XBee Configuration</a></li>
</ul>
</ul>
General Documentation
<ul>
<ul>
	<li>XBee 802.15.4 (Series 1) Module <a href="http://www.digi.com/pdf/ds_xbeemultipointmodules.pdf">Datasheet</a>, <a href="ftp://ftp1.digi.com/support/documentation/90000982_A.pdf">Product Manual</a>,</li>
	<li><a href="http://www.digi.com/support/kbase/kbaseresultdetl?id=3215">Digi API Frame Maker</a></li>
</ul>
</ul>
-------------------------------------------------------------------------------

<a href="http://hackaday.com/2009/03/19/usb-sniffing-in-linux/">USB sniffing in linux</a>, <a href="http://securfox.wordpress.com/2009/11/15/sniffing-usb-port-on-linux/">Sniffing USB port on Linux</a>, <a href="http://www.linux-usb.org/tools.html">Linux USB Tools</a>, <a href="http://www.kroah.com/linux-usb/">USBView</a>, <a href="http://vusb-analyzer.sourceforge.net/">Virtual USB Analyzer</a>

XBee 802.15.4 (Series 1) Module <a href="http://www.digi.com/pdf/ds_xbeemultipointmodules.pdf">Datasheet</a>, <a href="ftp://ftp1.digi.com/support/documentation/90000982_A.pdf">Product Manual</a>,

<a href="http://rubenlaguna.com/wp/2009/03/12/example-of-xbee-api-frames/">Example of XBee API Frames</a>

State Machines
<ul>
	<li><a href="http://stackoverflow.com/questions/5492980/what-are-the-best-python-finite-state-machine-implementations">What are the best Python Finite State Machine implementations</a></li>
	<li><a href="https://github.com/oxplot/fysom">Finite State Machine for Python</a></li>
</ul>

[01]:http://code.google.com/p/xbee-arduino/
[02]:http://jeffskinnerbox.wordpress.com/2012/12/22/selecting-xbee-radios-and-supporting-softwaretools/
[03]:https://www.adafruit.com/products/126
[04]:http://arduino.cc/en/Reference/SoftwareSerial
[05]:http://en.wikipedia.org/wiki/UART
[06]:http://code.google.com/p/xbee-arduino/
