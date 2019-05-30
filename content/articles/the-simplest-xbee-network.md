Title: The Simplest XBee Network
Date: 2013-03-20 00:01
Category: Electronics
Tags: XBee
Slug: the-simplest-xbee-network
Image: simplest-xbee-network.jpg
Author: Jeff Irland
Summary: What I do here is list some simple, proof of concept programs that I used to create a network with a Arduino and Raspberry Pi (RPi) using XBee radios.

<a href="http://jeffskinnerbox.files.wordpress.com/2013/03/simplest-xbee-network.jpg">
    <img class="img-rounded" style="margin: 0px 8px; float: left" alt="SAMSUNG" src="/images/simplest-xbee-network.jpg?w=500" width="250" height="188" />
</a>
As I continue my investigation of the XBee radio, I'm impressed by the functionality compressed into the the small package, but I have been frustrated by one fact.  It has been a hard road to understand the device and to make it do something useful.  There is a confusing mass of commands and options that can be used.  To make things more difficult for me, it is my nature to study my subject at depth, and understand it well, before I commit myself to a project.  The XBee radios are proving to be a deep subject.  I have been struggling to get a simple 802.15.4 network up and working, at least one that is sufficiently complex to be useful for my needs.

I stumbled into the realization that I don't have to master 802.15.4 and a large set of XBee commands to make a very simple but potentially useful network.  It's a very basic observation about all radio devices like the XBee.  You see, at its core the XBee radio is  a <a href="http://en.wikipedia.org/wiki/Modem">modem</a>.  It encodes digital information, transmits its digits via electromagnetism, within a specific frequency band, to be received by another XBee, and  then converted back to digital information.  The use of packet data, the 802.15.4 protocol, and all the AT commands are layers on top of the XBee's  modem capability.  The modem, the core communications sub-component, is a serial communications device with a Universal Asynchronous Receiver/Transmitter (UART) as examined in an <a href="http://jeffskinnerbox.wordpress.com/2012/12/05/raspberry-pi-serial-communication/">earlier blog</a>.  So why not we just treat the XBee radio as a simple serial communication device?  Drop the idea of packetized data and 802.15.4 protocol and just do raw serial communications.

While this simplification is seductive, it does come at a price. Data is packetized and transmitted using a protocol for very good reasons.  In data transmission you must consider the fact that data could get corrupted, you need to share the communication channel with others,  data streams may be long (if not endless) and need to be properly sequenced, communications is main between specific devices as apposed to just broadcasting, and many other concerns.  You give up much of this by doing raw serial communications but you gain simplicity.

What I plan to do here is list some simple, proof of concept programs that I used to create a network with a Arduino and Raspberry Pi (RPi) using XBee radios.  You could simply add additional devices, using the same code, and it will become a fully interconnected network (i.e. where every device can talk to every other devices directly).  While inferior to a 802.15.4 network on many levels, its quick to get operational and easy to debug.  Also keep in mind that this is built on the XBee radio,  but you could do this with most any radio which supports serial communications.
<h2>Architecture</h2>
I'll be using a Arduino and a RPis for for my network, each with a XBee radio thought which they can communicate. I'll establish terminal interface into each device so I can enter text for the device to transmit and the terminal will also show what messages where revived. All  terminals will be within windows on my PC using PuTTY, Xterm, or the Arduino's serial monitor screen.
<h2>Initializing the XBee Radios</h2>
First step is to make sure all the XBee radios that will be part of your network are properly configured.  Specifically, you need to make sure the PAN ID and Channel ID of the XBee radio's are identical.  To accomplish this, I used the <code>XBeeTerm.py</code> utility I posted in my earlier blog titled <a href="http://jeffskinnerbox.wordpress.com/2013/01/30/configuration-utilities-for-xbee-radios/">Configuration Utilities for XBee Radios</a>.  I'm going to setup my network with two XBee radios (but you can use as many as you wish) and I used the configuration file below on both radios:

```shell
# To remove comments, white spaces, and blank lines, use the following:
#		sed '/^#/d; s/\([^$]\)#.*/\1/' Modem-Device.txt | sed 's/[ \t]*$//' &gt; modemd.txt
# Run this script to configure the XBee radio using the following:
#		./XBeeTerm.py modemd.txt
#
baudrate 9600		# (XBeeTerm command) set the baudrate used to comm. with the XBee
serial /dev/ttyUSB0	# (XBeeTerm command) serial device which has the XBee radio
+++ 			# (XBee command) enter AT command mode on the XBee
ATRE			# (XBee command) restore XBee to factory settings
ATID B000		# (XBee command) Set the PAN ID to eight byte hex (all XBee's must have this same value)
ATCH 0E			# (XBee command) set the Channel ID to a four byte hex (all XBee's must have same value)
ATPL 0			# (XBee command) power level at which the RF module transmits (0 lowest / 4 highest)
ATWR			# (XBee command) write all the changes to the XBee non-volatile memory
ATFR			# (XBee command) reboot XBee radio
exit			# (XBeeTerm command) exit python shell
```

<h2>Arduino Configuration</h2>
The sketch on the Arduino is very simple. Called <code>XBeeModem.ino</code> and is listed blow:

```cpp
/*
    The XBee devise should be connected to the Arduino Uno in the following way:
        XBee RX is connected to Arduino TX pin 3
        XBee TX is connected to Ardunio RX pin 2
        XBee +5V and Ground pins connect to the same on the Arduino
 */

#define RXPIN 2
#define TXPIN 3
#define BAUDRATE 9600

#include

SoftwareSerial XBeeSerial =  SoftwareSerial(RXPIN, TXPIN);

void setup()
{
    pinMode(13, OUTPUT);

    // Set the data rate for the hardware Serial port
    // and post a message stating so on the Arduino's Serial Monitor.
    Serial.begin(BAUDRATE);
    Serial.println("Arduino #1 up and running.");

    // Set the data rate for the SoftwareSerial port and
    // send a message out stating so via the XBee to the other devices.
    XBeeSerial.begin(BAUDRATE);
    XBeeSerial.println("Arduino #1 up and running.");
}

void loop()
{
    char c;

    // Read data arriving from the XBee and send to Arduino Serial Monitor.
    if (XBeeSerial.available()) {
        Serial.print((char)XBeeSerial.read());
    }

    // Capture data typed at the Arduino Serial Monitor, echo the data to the Serial Monitor,
    // and send that data via the XBee.
    if (Serial.available()) {
        c = (char)Serial.read();
        Serial.print(c);
        XBeeSerial.print(c);
    }

    delay(100);
}
```

<h2>Raspberry Pi Configuration</h2>
The Python program on the RPi is also very simple, except for one point.  Linux I/O reads will <a href="http://www.linux-mag.com/id/308/">block </a>if there are no characters to read.  You must "turn-off" blocking.  The program is called <code>XBeeModem.py</code> and is listed blow:

<p><script src="https://gist.github.com/jeffskinnerbox/6663336.js"></script></p>

The above script imports `pretty.py` which you can find here - [`https://gist.github.com/jeffskinnerbox/6663095`](https://gist.github.com/jeffskinnerbox/6663095).

<h2>Closing</h2>
It doesn't get much simpler than this. With a little work, you might make something useful out of this technique but its very limited in the types of problems that it could handle. Never the less, it was a good diversion for me to clear my mind. Now back to the XBee's core capabilites, the 802.15.4 protocol, and the other minutia!
