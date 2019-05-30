Title: Configuration Utilities for XBee Radios
Date: 2013-01-30 00:01
Category: Electronics
Tags: Raspberry Pi, XBee
Slug: configuration-utilities-for-xbee-radios
Author: Jeff Irland
Image: xbee-module-series-1-1mw-with-wire-antenna-xb24-awi-001.jpg
Summary: In this post, I provide a python utility that can be used to configure and test Xbee radios.  Its a command interpretors used to send AT Commands to the XBee with output is color coded to help distinguish user input, from XBee radio output, and from interpretors output.

<a href="http://jeffskinnerbox.files.wordpress.com/2012/10/xbee-module-series-1-1mw-with-wire-antenna-xb24-awi-001.jpg">
    <img class="img-rounded" style="margin: 0px 8px; float: left" title="XBee Module - Series 1 - 1mW with Wire Antenna - XB24-AWI-001" alt="XBee Series 1" src="/images/xbee-module-series-1-1mw-with-wire-antenna-xb24-awi-001.jpg" width="20%" height="20%" />
</a>
My ultimate aim is to wirelessly network several Arduino based platforms with a centralized Raspberry Pi controller. There is much for me to learn to get this operational, not the least of which is the radio device I plan to use, the Xbee.  To get up to speed on the Xbee, I found the tutorials at <a href="http://www.ladyada.net/make/xbee/index.html">Adafruit</a>, <a href="https://www.sparkfun.com/pages/xbee_guide">Sparkfun</a>, and <a href="http://www.parallax.com/portals/0/downloads/docs/prod/book/122-32450-xbeetutorial-v1.0.pdf">Parallax</a> helpful.   More detailed references are listed at the end of this post, but the very first challenge is to configure the XBee radios for operation.  This post provides insight on how this can be done, and my main mission, create a few simple utilities that make that job easy.</p>

<h2>Xbee Radios</h2>
I purchased two XBee Series 1 Module (Freescale 802.15.4 firmware) from <a href="https://www.adafruit.com/products/128">Adafruit</a>.  These are manufactured by Digi and are low-power module with wire antenna  (<a href="http://www.digi.com/products/wireless-wired-embedded-solutions/zigbee-rf-modules/point-multipoint-rfmodules/xbee-series1-module#models">XB24-AWI-001</a>).  They have a 250 kbps RF data rates and operate at 2.4 GHz.  These radios use the IEEE 802.15.4 networking protocol and can perform point-to-multi-point or <a href="http://en.wikipedia.org/wiki/Peer-to-peer">peer-to-peer</a> networking , but as configured here, they do not <a href="http://en.wikipedia.org/wiki/Mesh_networking">mesh</a>.  The Digi models that handle meshing are Digimesh, ZNet2.5 and Zigbee (ZB).  <a href="http://www.digi.com/technology/digimesh/">Digimesh</a> is a version of firmware that runs on Series 1 hardware. So, if you choose to, you can <a href="http://www.libelium.com/development/waspmote/tutorial0002">upgrade</a> these modules to Digimesh firmware to get meshing.
<h2>Xbee Adapter Board</h2>
Along with the XBee radios, I purchased adapter boards designed to make it easier to work with the radios. The adopter provides on-board 3.3V regulator power from a 5 volt source, voltage level shifting circuitry so you can connect  5V circuitry to the XBee, commonly used pins are brought out along the edge (making it easy to breadboard), and engineered to be interface via FTDI cable to a computer via USB.  The<a href="http://www.ladyada.net/make/xbee/wiring.html"> image and the text</a> below describe the pin-out for the <a href="https://www.adafruit.com/products/126">Adafruit  XBee Adapter</a>:

<center>
<a href="http://jeffskinnerbox.files.wordpress.com/2012/10/xbee-pinout.jpg">
    <img class="size-full wp-image-418" title="Xbee Pin Out" alt="XBee Pinout" src="/images/xbee-pinout.jpg" width="545" height="333" />
</a>
</center>
<ol>
<ol>
	<li><strong>3V pin</strong> - This is either an input power pin (if 5V is not provided) or an output from the 250mA regulator if 5V is provided</li>
	<li><strong>DTR</strong> - "Data terminal ready"  is a flow control pin used to tell the XBee that the microcontroller or computer host is ready to communicate.</li>
	<li><strong>RST</strong> - "Reset"  pin can be used to reset the XBee.  By default it is pulled high by the 10K resistor under the module. To reset, pull this pin low.'</li>
	<li><strong>Ground</strong> - common ground for power and signal</li>
	<li><strong>CTS</strong> - "Clear to Send" this is a flow control pin that can be used to determine if there is data in the XBee input buffer ready to be read</li>
	<li><strong>5V</strong> - This is the power input pin into the 3.3V regulator. Provide up to 6V that will be linearly converted into 3.3V</li>
	<li><strong>RX</strong> - "Receive Data" is the XBee's serial recieve pin. Serial data is sent on this pin <strong>into</strong> the XBee to be transmitted wirelessly</li>
	<li><strong>TX</strong> - "Transmit Data" is the XBee's serial transmit pin. Serial data is sent on this pin <strong>out of</strong> the XBee, after it has been transmitted wirelessly from another module</li>
	<li><strong>RTS</strong> - "Ready to Send" is a flow control pin that can be used to tell the XBee to signal that the computer or microcontroller needs a break from reading serial data.</li>
	<li>see pin #1</li>
</ol>
</ol>
<a href="http://www.ladyada.net/make/xbee/configure.html">
    <img class="img-rounded" style="margin: 0px 8px; float: left" title="Xbee Adaptor connected with USB FTDI TTL-232 Cable" alt="XBee Adaptor" src="/images/xbee_ftdi_powered.jpg" width="20%" height="10%" />
</a>
The DTR, RTS, RST and RX pins (going <em>into</em> the XBee) pass through a level converter chip that brings the levels to 3.3V. Adafruit claims you can use pretty much anywhere between 2.7 to 5.5V data to communicate with the XBee. The breakout pins on the bottom of the board are not level shifted and you should try to keep data going directly into the XBee pin under 3.3V

<h2>XBee Initial Configuration and Testing</h2>
You need a way to communicate withe the Xbee, via it adapter,  to set it up.  This can be done via Adafruit's  <a href="http://www.adafruit.com/products/70">USB FTDI TTL-232 Cable</a>, and the <a href="http://www.digi.com/support/productdetail?pid=3352">Digi X-CTU</a> serial terminal program.  By the way, the <a href="ftp://ftp1.digi.com/support/documentation/90001003_a.pdf">X-CTU user guide</a> describes the many more things it can do beyond the configuration shown here.
<ol>
<ol>
	<li>Plug in the USB FTDI TTL-232 Cable into a PC USB port.  If drivers are not installed automatically (it didn't for me), follow the steps at the <a href="http://www.ftdichip.com/Drivers/VCP.htm">FTDI site</a>.</li>
	<li>Download the X-CTU, double click on the executable file, and follow the instructions to install the program.</li>
	<li>Now connect the USB FTDI TTL-232 Cable to the Xbee Adapter as shown in the picture to the right and insert the USB end of the cable to you PC.  Start the X-CTU.</li>
	<li>To connect, configure and upgrading the Xbee, follow the Adafruit <a href="http://www.ladyada.net/make/xbee/configure.html">instructions</a> for the Xbee Adapter board. Note that if you follow the instructions (I didn't - I kept it at 9600 baud), the modem's serial interface is now set to 19,200 baud, not the default 9600 used by X-CTU.  Remember this next time you use X-CTU with this Xbee.</li>
	<li>If your instructed by X-CTU to reset the Xbee, you can do this by shorting the reset pin, RST pin,  to ground.</li>
</ol>
</ol>
The configuration can be touchy, it can go badly, or not at all.  In my case, I seem to have one Xbee Adapter that can reliably perform a firmware upgrade but the other one took some time due to a lose fitting between the Adaptor and  Xbee.  If you run into configuration problems, check out these sites: <a href="http://www.digi.com/wiki/developer/index.php/Bootloader_to_force_XBee_reflash">Using XCTU to Invoke the Bootloader</a>, <a href="http://www.jsjf.demon.co.uk/xbee/faq.pdf">The Unofficial XBee FAQ</a>,  <a href="http://www.youtube.com/watch?feature=player_detailpage&amp;v=fxOqQZD-oaM">How to recover from a failed firmware upgrade</a>.
<h2>Quickly Getting the Xbee's Communicating</h2>
The next step for me was just do a basic test of getting two XBee device communicating with each other. This is just a sanity test to see evidence of communication between the devices. Basically, I just followed the <a href="http://www.ladyada.net/make/xbee/point2point.html">instructions</a> provided by Adafruit.
<center>
<a href="http://jeffskinnerbox.wordpress.com/2013/01/30/configuration-utilities-for-xbee-radios/simple-test/" rel="attachment wp-att-942"><img class=" wp-image-942 alignright" alt="simple test" src="http://jeffskinnerbox.files.wordpress.com/2012/12/simple-test.jpg" width="327" height="245" /></a>
</center>
<ol>
<ol>
	<li>Using the X-CTU, set the PAN ID to the same value on the two Xbee's.</li>
	<li>Select an Ardunio that has been programmed to send repeated brief messages to its serial port.  I used the standard LED <a href="http://arduino.cc/en/Tutorial/Blink">Blinking sketch</a> but put in some write statements in the loop.</li>
	<li>Using an Arduino and breadboard, connect +5V and ground to provide power. Make sure the XBee's LED is blinking.</li>
	<li>Connect the RX line (input) of the XBee to the TX line (output) of the Arduino. Connect the RX line (input) of the Arduino to the TX line (output) of the Xbee. Plug the Arduino into your PC's serial port.</li>
	<li>Now take the second Xbee and connect the  USB FTDI TTL-232 Cable to the Xbee and the PC.  The cable is doing nothing but appling power to the Xbee.</li>
	<li>Now you should see the receive LED periodically light on the USB FTDI TTL-232 Cable tethered Xbee.</li>
	<li>You now got proof that the two Xbee's are communicating.  The Arduino connected Xbee is sending data to its serial port and the USB FTDI TTL-232 Cable tethered Xbee is receiving it.</li>
</ol>
</ol>
Above you'll find a picture of the configuration, and below is the Arduino sketch I used.

```cpp
/*
 *  Xbee Test via Blink LED
 *
 *Turns on an LED on for one second, then off for one second, repeatedly.
 *Also increase brigthness of analog LED.
 *
 *The circuit:
 * LED1 connected from digital pin 13 to ground.
 * LED2 connected from analog pin 9 to ground.
 * Note: On most Arduino boards, there is already an LED on the board
 * connected to pin 13, so you don't need any extra components for this example.

 *Created 1 June 2005
 *By David Cuartielles
 *http://arduino.cc/en/Tutorial/Blink
 *based on an orginal by H. Barragan for the Wiring i/o board
 *Modified by Jeff Irland in December 2012
 */

int ledPin1 =  13;    // LED connected to digital pin 13
int ledPin2 =  9;     // LED connected to analog pin 9
int brightness = 0;

// The setup() method runs once, when the sketch starts
void setup()   {
    Serial.begin(9600);
    pinMode(ledPin1, OUTPUT);     // initialize the digital pin as an output
    Serial.println(&quot;Arduino done with setup()&quot;);
}

// the loop() method runs over and over again,
// as long as the Arduino has power
void loop()
{
    digitalWrite(ledPin1, HIGH);   // set the LED on
    Serial.println(&quot;LED set HIGH.&quot;);
    delay(1000);                   // wait for a second

    digitalWrite(ledPin1, LOW);    // set the LED off
    Serial.println(&quot;LED set LOW.&quot;);
    delay(1000);                   // wait for a second

    brightness = brightness + 5;
    analogWrite(ledPin2, brightness);
    Serial.println(&quot;LED brightness increased.&quot;);
}
```

<h2>Installing XBee Python Tools for the RPi</h2>
While the MS Windows based Digi X-CTU tool is just fine, I want to use the RPi's and Python to access the XBee serial communication API, and its advanced features, for one or more XBee devices.  I prefer simple utilities, that can be scripted within the Linux shell.  Call me a Linux snob if you wish, but I don't care for MS Windows!

In my post "<a href="http://jeffskinnerbox.wordpress.com/2012/12/22/selecting-xbee-radios-and-supporting-softwaretools/">Selecting XBee Radios and Supporting Software Tools</a>", I referenced a Python package that could be used to create my utilitiesd, call python-xbee, and I will be using it here. It claims to provides a semi-complete implementation of the XBee binary API protocol and allows a developer to send and receive the information they desire without dealing with the raw communication details. It also claims the  library is compatible with both XBee 802.15.4 (Series 1) and XBee ZigBee (Series 2) modules, normal and PRO.

First, we need to load some additional required Python Packages, that being <a href="http://pyserial.sourceforge.net/">pySerial</a> and <a href="https://nose.readthedocs.org/en/latest/">Nose</a>. pySerial extends python's capabilities to include interacting with a serial port and Nose is a package providing a very easy way to build tests, based on the Python class <a href="http://docs.python.org/2/library/unittest.html">unittest</a>.  (Don't let this all scare you away, these are necessary but your not going to use them directly).  To load these package:

```
sudo pip install pySerial
sudo pip install nose
```

Download the python-xbee tools from <a href="http://code.google.com/p/python-xbee/">Google Code</a> or <a href="http://pypi.python.org/pypi/XBee/2.0.0">Python Org</a> and place them into the RPi's $HOME/src.  The README file provides installation instructions.  It states that the following command automatically test and install the package for you:

```
sudo python setup.py install
```

There is a simple to use RPi platform tool that I have modified for my needs, that is a XBee serial command shell for interacting with XBee radios.  It performs the core functions of the official configuration tool, <a href="https://sites.google.com/site/xbeetutorial/xctu">X-CTU</a>, which only runs on Windows. (There happens to be a cross-platform version of X-CTU called <a href="http://www.moltosenso.com/client/fe/browser.php?pc=/client/fe/download.php">moltosenso Network Manager</a> but I don't need all this horse power.)  I'll use this X-CTU-alternative to configure the individual XBee radios.  With the X-CTU, you can update firmware, etc. but most of the time you need the program to do simple configuration tasks. You could use Linux's <a href="http://linux.die.net/man/1/minicom"><code>minicom</code></a>, but I prefer a simpler tool which can be scripted so I can configure several XBee radios identically.  I found much of what I wanted in an existing <a href="https://github.com/sensestage/xbee-tools">Python XBee tools for configuration</a>.  I made some modification/improvements, I call it the XBeeTerm, and its listed below:

<p><script src="https://gist.github.com/jeffskinnerbox/6663016.js"></script></p>

The XBeeTerm.py module imports functions from the pretty.py package, specifically to colorize the output for xterm on the Raspberry Pi.  This package is provided here:

<p><script src="https://gist.github.com/jeffskinnerbox/6663095.js"></script></p>

<h2>Identifying the RPi USB device used by the XBee</h2>
Since the python-xbee library wants to talk to the via a Linux serial devices, I'm using the <a href="http://www.adafruit.com/products/70">USB FTDI TTL-232 Cable</a> (<a href="http://www.ftdichip.com/">FTDI</a> is the <a href="http://en.wikipedia.org/wiki/Universal_Serial_Bus">USB</a> chip manufacturer) used in the XBee configuration step done earlier.  I connected the cable to the RPi USB port  and then we need to find the serial tty the cable is associated with.  To do this, it takes a bit of detective work. Run the commands:

```
lsusb
dmesg | grep Manufacturer
dmesg | grep FTDI
```

A better command might be (but I'm not sure it will work every time):

```
dmesg | grep -i usb | grep -i tty
```

The interpretation of the output tells us the cable is attached to serial device <code>/dev/ttyUSB0</code>.  See the output below.

<a href="http://jeffskinnerbox.wordpress.com/2013/01/30/configuration-utilities-for-xbee-radios/best-use-of-dmesg/" rel="attachment wp-att-1070"><img class="aligncenter size-full wp-image-1070" alt="best use of dmesg" src="http://jeffskinnerbox.files.wordpress.com/2012/12/best-use-of-dmesg.jpg" width="500" height="192" /></a>

Another possibility is to use <a href="http://linux.die.net/man/8/udevadm"><code>udevadm</code></a> to gather information about specific devices but I never figured out exactly how to use it to answer my question.  Python also has a package called <a href="http://sourceforge.net/apps/trac/pyusb/">PyUSB</a> that might provide some help, but also here you'll still need the vendor and product identification information.

Chances are that when you plug the cable into the same USB port the next time, it will default to the same tty but there is no certainty.  To assign a permanent tty name to the device, and never do any of this again, check out <a href="http://hintshop.ludvig.co.nz/show/persistent-names-usb-serial-devices/">Persistent names for usb-serial devices</a>.
<h2>Configuring the XBee Radios for API Mode</h2>
The configuration and testing of the XBee's done earlier was done in AT Command mode (Transparent Mode). In AT mode, everything sent to the RX line of the XBee radio will be sent out via the antenna, and all the incoming data from antenna will go to the XBee's TX line.  This is why we could check the sanity of the XBee radios in the earlier section, <strong>XBee Initial Configuration and Testing </strong>using a simple Arduino sketch.  We sent junk to the XBee and it transmitted it!

Now we'll configure two XBee radios (with a Coordinator and a single End Device) to form a network using API Mode.  In API Mode, XBee won't send out anything until it received the correct form of commands from the serial interface.  The <a href="ftp://ftp1.digi.com/support/documentation/90000982_A.pdf">XBee AT Command Set</a> (page 27), specifically the  ATAP 2 command, allows you to configure the XBee radio for API Mode.   So <a href="http://code.google.com/p/xbee-api/wiki/WhyApiMode">why API Mode</a>, consider the following:
<ul>
<ul>
	<li>When sending a packet, the transmitting radio receives an ACK, indicating the packet was successfully delivered. The transmitting radio will resend the packet if it does not receive an ACK.</li>
	<li>Receive packets (RX), contain the source address of transmitting radio</li>
	<li>You can configure a remote radio with the Remote AT feature</li>
	<li>Easily address multiple radios and send broadcast TX packets</li>
	<li>Receive I/O data from 1 or more remote XBees</li>
	<li>Obtain RSSI (signal strength) of an RX packet</li>
	<li>Packets include a checksum for data integrity</li>
</ul>
</ul>
The XBeeTerm utility will  easily configure the XBee radios for API mode and set the appropriate network parameters.  To get a deeper appreciation of configuring the XBee radios, see the References at the end.  For here, I'll just run through the steps using the XBeeTerm.py tool and the configuration commands used, documented in file scripts.

Coordinator Configuration File: <code>Config-Coordinator.txt</code>

<p><script src="https://gist.github.com/jeffskinnerbox/6663169.js"></script></p>

End Device Configuration File: <code>Config-End-Device.txt</code>

<p><script src="https://gist.github.com/jeffskinnerbox/6663187.js"></script></p>

As they stand right now, these files could not be processed by <code>XBeeTerm.py</code> because of the comments (included to make the contents understandable).  To clean this up, the command <code>sed '/^#/d; s/\([^$]\)#.*/\1/'</code>will remove all shell type comments from a file and <code>sed 's/[ \t]*$//'</code>will remove unneeded white space.  Putting this all together and you can use this to prepare the above files for <code>XBeeTerm.py</code>:

```shell
sed '/^#/d; s/\([^$]\)#.*/\1/' Config-Coordinator.txt | sed 's/[ \t]*$//' > coord.txt
sed '/^#/d; s/\([^$]\)#.*/\1/' Config-End-Device.txt | sed 's/[ \t]*$//' > endd.txt
```

Now execute the following <code>python XBeeTerm.py coord.txt</code> and you get the output below:

<a href="http://jeffskinnerbox.files.wordpress.com/2013/01/xbeeterm-script.jpg"><img class="aligncenter size-full wp-image-1262" alt="XBeeTerm Script" src="http://jeffskinnerbox.files.wordpress.com/2013/01/xbeeterm-script.jpg" width="500" height="205" /></a>

The yellow text is responses back from the XBee serial terminal and the red text is from the XBee radio itself.  Since all the red text is "OK", all the commands took and the XBee radio is now configured as a Coordinator.  Now repeat this for the End Device XBee radio.

In this example, I have one End Device but what if you have multiple devices, do you need a <code>Config-End-Device.txt </code>file for each end device?  The only change within the configuration file is the radio's address, which is established via the ATMY command.  Here is a trick to avoid the need for multiple files.  First, configure all your End Devices using the configuration file.  Then, for each radio, modify the ATMY use the following:

```shell
echo -e "baudrate 9600\nserial /dev/ttyUSB0\n+++\nATMY AAA1\nATWR\nATFR\nexit" | python XBeeTerm.py
```

but for each End Device radio, increment the ATMY address by one (e.g. AAA2, AAA3, ...).
<h2>Querying XBee for Configuration</h2>
Now that we believe the XBee radios are properly configured, lets verify that by query the radios.  You could use XBeeTerm to perform this function by including only the AT Command without the parameter but I wanted a more informative tool. For this, I have created another utility that can take a list of AT Commands as arguments and query the XBee radio for the AT's parameter value.  This utility, call <code>XBeeQuery.py</code>, is listed below:

<p><script src="https://gist.github.com/jeffskinnerbox/6663248.js"></script></p>

Here is a sample output for the XBeeQuery utility:

<a href="http://jeffskinnerbox.files.wordpress.com/2013/01/xbeequery-script.jpg"><img class="aligncenter size-full wp-image-1265" alt="XBeeQuery Script" src="http://jeffskinnerbox.files.wordpress.com/2013/01/xbeequery-script.jpg" width="500" height="205" /></a>
<h2>References</h2>
Configuring the XBee Radios
<ul>
<ul>
	<li><a href="http://www.digi.com/support/kbase/kbaseresultdetl?id=2184">What is API (Application Programming Interface) Mode and how does it work?</a></li>
	<li><a href="http://docs.sensestage.eu/change-to-using-the-api-mode-of-the-xbees">Change to using the API mode of the XBees</a></li>
	<li><a href="http://www.instructables.com/id/Configuring-XBees-for-API-Mode/">Configuring XBees for API Mode</a></li>
	<li><a href="http://www.circuitsathome.com/mcu/playing-xbee-part-4-api">Playing Xbee. Part 4 – API</a></li>
	<li><a href="http://code.google.com/p/xbee-api/wiki/XBeeConfiguration">XBee Configuration</a></li>
</ul>
</ul>
General Documentation
<ul>
<ul>
	<li>XBee 802.15.4 (Series 1) Module <a href="http://www.digi.com/pdf/ds_xbeemultipointmodules.pdf">Datasheet</a>, <a href="ftp://ftp1.digi.com/support/documentation/90000982_A.pdf">Product Manual</a></li>
</ul>
</ul>
