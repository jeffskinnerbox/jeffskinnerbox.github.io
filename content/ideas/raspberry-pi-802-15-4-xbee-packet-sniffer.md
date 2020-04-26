Title: Raspberry Pi 802.15.4 (XBee) Packet Sniffer
Date: 2100-01-01 00:00
Category: Electronics
Tags: Raspberry Pi, XBee
Slug: raspberry-pi-802-15-4-xbee-packet-sniffer
Author: Jeff Irland
Image: DRAFT_stamp.png
Summary: abla bla bla

* [chibiArduino v1.06 Release Available](http://freaklabs.org/index.php/blog/chibi/chibiarduino-v1-06-release.html)
* [Sniffing the Internet of Things with Wireshark, Sensniff, and FreakLabs](http://freaklabs.org/index.php/tutorials/software/sniffing-the-internet-of-things-with-wireshark-sensniff-and-freaklabs.html)
* [sensniff - Live Traffic Capture and Sniffer for IEEE 802.15.4 networks](https://github.com/g-oikonomou/sensniff)
* [Sniffing nRF24L01+ Traffic with Wireshark](http://hackaday.com/2014/08/05/sniffing-nrf24l01-traffic-with-wireshark/)
* [Sniffing and decoding NRF24L01+ and Bluetooth LE packets for under $30](http://blog.cyberexplorer.me/2014/01/sniffing-and-decoding-nrf24l01-and.html)
* [tshark](http://www.linuxuser.co.uk/tutorials/monitor-network-traffic-tutorial)
* [Sniff with Snort](http://www.itprotoday.com/management-mobility/sniff-snort)
* [Navigating with Wireshark and ICMP, DNS, ping](https://www.youtube.com/watch?time_continue=1&v=FrXORv_yALQ)
* [Working with Ring Buffer Wireshark Files](https://www.networkcomputing.com/networking/working-ring-buffer-wireshark-files)

<a href="/img/posts/jekyll-posts/RPi-XBee-Sniffer.jpg"><img align="left" title="bus priate board" src="/img/posts/jekyll-posts/RPi-XBee-Sniffer.jpg" width="250px" height="187px" class="img-rounded floatLeft" /></a>
As I continue to dive into the XBee radios and experiment with them via Arduino and the Raspberry Pi, I have found myself populating my code with print statement and creating utilities to "see" what is going on.Unfortunately, I often believe I'm sending one thing via one of the XBee's but I appear to be receive something unexpected.
My problem, of course, is that my print statements and utilities are not really "seeing" what is being transmitted via the XBee radio, just what I think I'm sending via the code.
To really see the packets (strictly speaking  frames), I would need to read the data frames directly from the radio transmission .... I need a 802.15.4 packet sniffer.

The first obvious thought is to turn the XBee radio into a sniffer.
This requires the radio to operate in [promiscuous mode][01].
Unfortunately, [XBee doesn't have a promiscuous mode][02].
To over come this, I'll need a non-XBee 802.15.4 radio which can support promiscuous mode.
So I did some searching on the Web, and while the topic of packet sniffing Ethernet (Internet) is well covered, there does seem to be a void when it comes to the 802.15.4 standard.
I narrowed my search further by focusing on something free or at least very inexpensive (After all, I'm just satisfying my curiosity, not solving a key problem!).  Here is what I found:

* [Inexpensive Sniffer Reveals 802.15.4 Packet Details][03] -  This USB dongle cost $50, along with some free software, can run on a PC and can display 802.15.4 and ZigBee device activity.
* [SmartRF Protocol Packet Snifferi][04] - The Packet Sniffer is a PC software application used to display and store RF packets captured with a listening RF device.  The "listening RF device" is the issue here, since this must be a 802.15.4 device capable of operating in promiscuous mode.  The site does provide a large list of potential devices you can purchase.
* [15dot4-tools Project][05] - is a set of 802.15.4 tools, including protocol analyzers and sniffers.  Interesting stuff but it looks likea  "work in progress".
* [Kisbee Wireless Sniffer][06] - An interesting device (from the guy that brings us a 802.11 sniffer called [Kismet][07]) that works on Android and PC but it costs $120, more than I want to spend.

* [Feeding the Shark - Turning the Freakduino into a Realtime Wireless Protocol Analyzer with Wireshark][08] - The radio device is an Arduino-based solution with an open source protocol stack.  The protocol sniffer software is the open source and very popular WireShark. All for under $50.
* [Sniffing the Internet of Things with Wireshark, Sensniff, and FreakLabs](http://freaklabs.org/index.php/tutorials/software/sniffing-the-internet-of-things-with-wireshark-sensniff-and-freaklabs.html)

I settled on the last bullet for my solution.  It fully open, made with familiar components, and inexpensive.  I ordered the FreakLabs Freakduino Chibi Wireless Arduino Compatible Board and got to work.

## FreakLabs Freakduino Chibi Wireless Arduino Compatible Board
Followed the [assembly  instructions][09] the FreakLabs website and instructions provided in the [Chibi Datasheet][10].
As outlined in the Datasheet,  validate the broads is functional via running the "Blink" sketch.
The next thing you'll want to do is to load the Chibi protocol stack, example sketches, etc. into the Arduino IDE.
Download the FreakLabs provided [ZIP file][11] and paste these files into the Arduino IDE file system (`...\arduino-1.0.1\libraries` directory).
You can now load the "chibi_ex4_cmdline" sketch as outlined in the assembly instructions.  Again, this is just to verify the soundness of the board, IDE software, etc.
To learn more about how to use the Chibi protocol stack, check out the [HOWTO guide][12].

## Connecting Freakduino and WireShark
The next step is to get  the Freakduino connected to WireShark.
As the post "[Turning the Freakduino into a Realtime Wireless Protocol Analyzer with Wireshark][13]" states,
this can be done via a Linux pipe.
A key utility program to make this happen is called by FreakLabs, [WSBridge][14].
A step-by-step tutorial to get things working can be found at the bottom of the a [first post][15].
I'll paraphrase the process here:

### Step 1: Install Wireshark
[Wireshark][16] is a free and open-source packet analyzer.
A network packet analyzer will try to capture network packets and tries to display that packet data as detailed as possible.
You could think of a network packet analyzer as a voltmeter or oscilloscope used by a technician to examine with is going on in a electronic device.

Wireshark is very similar to [tcpdump][17], but has a graphical front-end, plus some integrated sorting and filtering options.
Wireshark allows the user to put [network interface controllers][18] that support
[promiscuous mode][19] into that mode, in order to see all traffic visible on that interface, not just traffic addressed to one of the interface's configured addresses and broadcast/multicast traffic.
However, when capturing with a packet analyzer in promiscuous mode on a port on a [network switch][20], not all of the traffic traveling through the switch will necessarily be sent to the port on which the capture is being done, so capturing in promiscuous mode will not necessarily be sufficient to see all traffic on the network.

To install Wireshark, execute the following:

``` bash
sudo apt-get install wireshark
```

Once installed and you execute wireshark, you'll find that there are no capture interfaces listed. This is because Wireshark use the [dumpcap][21] which must be run as root to capture packets.
From a security standpoint, it is unwise to run wireshark as root, but wireshark does [provide a way][22]
to configure `dumpcap` with the required elevated privileges ([capture privileges][23])
but allowing wireshark user to be non-root but must be in a group called "wireshark".
This can be established with the following:

* `sudo dpkg-reconfigure wireshark-common`
* select "Yes" on the "configurating wirshark-common" screen
* `sudo usermod -a -G wireshark pi`

You can do `cat /etc/group | grep wireshark` to show you that a group "wireshark" now exists and it has one user member called "pi".  Now when you run Wireshark, you see a list of one or more interface you can use for capturing packets.

### Step 2: Install Arduino IDE on Raspberry Pi
Next install the [Linux version of the Arduino][24]  [integrated development environment][25] (IDE) on the Raspberry Pi.  The IDE is needed to make minor changes to the chibi protocol stack to support promiscuous mode.
To do the installation, execute `sudo apt-get install arduino`.
Next, we need to install the chibi protocol stack library as part of the Arduino's sketch library.
I down [loaded the files][26] to my [Dropbox][27] and then moved them to the RPi's Arduino's library location,
`/usr/share/arduino/libraries/`.
(By the way, to run the Arduino IDE, simple type the following on the RPi command line: `arduino &`)

### Step 3: Modifying chibi protocol stack to support promiscuous mode
Changing the chibi protocol stack to support promiscuous mode is very easy.  It's a one  line change:
`sudo vi /usr/share/arduino/libraries/chibiArduino/chibiUsrCfg.h`
and set the  promiscuous mode parameter to one: `#define CHIBI_PROMISCUOUS 1`

### Step 4: Persistent Name for the Freakdunio Devices
I want to plug the Freakduino Chibi Wireless Arduino into the RPi via its USB connection.
I have a hub on my RPi since I have several USB devices hooked to it.
I'm going to have to dance around to figure out what `ttyUSB*` the  Freakdunio is attached too.
I'm growing tired of the dance so I'm going to make the [device name persistent][28].
I ran the command [lsusb][29] twice, once before plugging in the Freakdunio to the USB hub,
and then after. The results I got are listed below:

<center>
![freakduino lsusb run](/img/posts/jekyll-posts/freakduino-lsusb-run.jpg "lsub results for the Freakdunio")
</center>

This tells us the Freakduino's VendorID:ProductID pair is `0403:6001`, which happens to be the same as another device on the RPi.
I removed the other device so I could have a unique identifier for my next action.
Using the `udevadm info -a -n /dev/ttyUSB0` command (Note: the `udevadm` command has
[problems][30]), I get the following output:

<center>
![freakduino lsusb run](/img/posts/jekyll-posts/freakduino-udevadm-run.jpg "udevadm results for the Freakdunio")
</center>

Scroll down the output until your find the VendorID and ProductID, you conclude that the  serial number of the device is `A6015Z6J`.
Armed with this information, I can now update the UDEV [rules][31].

I'll create a UDEV rule set that’ll make a symbolic link, called `/dev/freakduino`, for the Freakduino.
UDEV rules are located in the `/etc/udev/rules.d` directory.
I'll create a new file called `99-usb-serial.rules` and put the following line:

``` bash
SUBSYSTEM=="tty", ATTRS{idVendor}=="0403", ATTRS{idProduct}=="6001", ATTRS{serial}=="A6015Z6J", SYMLINK+="freakduino"
```

Now unplug and then plug back in the  Freakduino.  If you do `ls -l /dev/freakduino` you'll see the device and its symbolic link.  No more USB port dancing to find the  Freakduino!

### Step 5: Preparing the Freakduino Sketch
Now its time to establish the sketch with the  Freakduino that will perform the packet sniffing.
The required sketch (found in the IDE: File > Examples > Chibi > chibi_ex9_wsbridge)
is identified in the [FreakLab tutorial][32].
Instructions on how to prepare and execute the Arduino IDE  can be found on the [Chibi Datasheet][33].

Once the sketch is complied and uploaded to the Freakduino, you need to establish a RPi process that will connect the Freakuino's `/dev/freakduino` port with the WireShark that will be running on the RPi.
This requires the Linux version of FreakLab's wsbridge program.
Download this onto the RPi to `$HOME/src`.
Compile it with the `Makefile`, and place the `wsbridge` executable in `$HOME/bin`.

### Step 6: Fire Up the Packet Sniffer
Now all the components are in place to make the sniffer operational.
You'll need to read the [tutorial][34] from top to bottom to get a full understanding.
WireShark has undergone some updates since the writing of the tutorial (I'm using version 1.8.2) and those changes are reflected in the steps below:

* Make sure the Freakrduino is plugged into the RPi. In a new `xterm`, execute the `wsbridge` utility using the command-line: `sbridge /dev/freakduino &`
* In a new xterm, stratup WireShark using the command-line: `wireshark &`.  (By the way, I'm using multiple xterms here so that status or error messages from the different parts of the solution can be easily spotted.)
* Go the the Analyze menu button on WireShark and enable only the IEEE 802.15.4 protocol.  You shouldn't be able to seen any others with the Freakduino, this will prevent any confusion.
* Now select "Capture Options" on the WireShark window.  When the window pops up, select the "Manage Interfaces" button under the "Capture" block.  When the window pops up, select "Browser" within the "Pipes" tab, select `/tmp/wireshark`, save it, and you should now see `/tmp/wireshark` in the "Capture" block.
* Make sure only `/tmp/wireshark` is checked in the "Capture" block and select "Start" at the bottom of the window.  You should see the message "Client connected to pipe" in the wsbridge xterm.
* You likely to see no activity within WireShark, unless there are some 802.15.4 devices in the area, but we'll do that next.

To simplify the initialization of wsbridge and WireShark, you can use the command-line:
`(wsbridge /dev/freakduino &) && wireshark -k -i /tmp/wireshark &`.

### Step 7: Creating 802.15.4 Traffic
First we need to configure some XBee radios and drive them to create traffic that can be sensed by the packet sniffer.
To configure the XBee radios, I used the `XBeeTerm.py` utility I posted in my earlier blog titled
[Configuration Utilities for XBee Radios][35].
I'm going to setup my traffic generating network with two XBee radios  and I used the configuration file below on both radios:

```python
xxx
```

With the XBee radios now configured, well need to drive them with a program that will generate some 802.15.4 traffic.
I chose to connect both XBee's to a single RPi.
Also, I can write a single program in Python and not have to write another program in C++ for an Arduino to drive the other XBee (I happen to have two RPi's, but I like the idea of using one RPi).

### Step 8: xxx
xxx

<a href="http://www.adafruit.com/blog/2012/07/16/digi-xbee-examples-guides-step-by-step-tutorials-for-implementing-xbee-wireless-modules-in-electronics-projects/">Digi XBee Examples &amp; Guides | Step-by-step Tutorials for Implementing XBee Wireless Modules in Electronics Projects</a>

<a href="http://pastebin.com/6Ltt5xfe">XBee Discovery demo for Digi devices</a>

https://github.com/tomstrummer/python-xbee/blob/master/examples/led_adc_example.py

--------------------------------------------

I did get the the error message <code>Gtk-WARNING **: cannot open display</code> on several of Wireshark attempted start-ups.

<a href="http://www.leidinger.net/X/xhost.html">xhost access control program</a>

<a href="http://www.bramschoenmakers.nl/en/node/715">Allow other local users to run X11 applications</a>

<a href="http://www.ladyada.net/make/tweetawatt/index.html">Tweet-a-Watt</a>

http://www.wireshark.org/lists/wireshark-users/200712/msg00102.html

--------------------------------------------------------

From here, you should check out some the many videos, websites, and even books that can educate you on the use of Wireshark.  Is includes:
<ul>
	<li><a href="http://www.howtogeek.com/104278/how-to-use-wireshark-to-capture-filter-and-inspect-packets/">How to Use Wireshark to Capture, Filter and Inspect Packets</a></li>
	<li><a href="http://www.howtogeek.com/107945/how-to-identify-network-abuse-with-wireshark/">How to Identify Network Abuse with Wireshark</a></li>
	<li><a href="http://www.howtogeek.com/106191/5-killer-tricks-to-get-the-most-out-of-wireshark/">5 Killer Tricks to Get the Most Out of Wireshark</a></li>
</ul>
--------------------------------------------------------------
<ul>
	<li><a href="http://ask.wireshark.org/questions/10993/wireshark-to-analyze-802154-packet">Wireshark to analyze 802.15.4 packet</a></li>
	<li><a href="http://freaklabs.org/index.php/Tutorials/Software/Feeding-the-Shark-Turning-the-Freakduino-into-a-Realtime-Wireless-Protocol-Analyzer-with-Wireshark.html">Feeding the Shark - Turning the Freakduino into a Realtime Wireless Protocol Analyzer with Wireshark</a></li>
	<li><a href="http://berardi.us/WRLSS/wireshark.html">Wireshark as a network analyzer for Xbee</a></li>
	<li><a href="http://www.desert-home.com/2012/10/monitoring-my-xbee-network.html">Monitoring My XBee Network</a></li>
	<li><a href="http://arduino.cc/forum/index.php?topic=128942.0">Clogged up my XBee network</a></li>
	<li><a href="http://www.desert-home.com/2012/10/more-about-xbee-broadcast.html">More About XBee Broadcast</a></li>
</ul>
<a href="http://www.libelium.com/forum/viewtopic.php?f=17&amp;t=760">
</a>


[01]:http://revision3.com/haktip/promiscuous
[02]:http://forums.digi.com/support/forum/viewthread_thread,104
[03]:http://www.devmonkey.edn.com/blog/jon-titus-blog/inexpensive-sniffer-reveals-802154-packet-details?cid=Newsletter+-+EDN+on+Development+Tools#.UOM8VikZvmQ.mailto
[04]:http://www.ti.com/tool/packet-sniffer&amp;DCMP=MSP430&amp;HQS=Other+OT+smartrfsniffer
[05]:http://www.newae.com/tiki-index.php?page=15dot4tools
[06]:http://www.kismetwireless.net/kisbee/
[07]:http://www.kismetwireless.net/
[08]:http://www.freaklabs.org/index.php/Tutorials/Software/Feeding-the-Shark-Turning-the-Freakduino-into-a-Realtime-Wireless-Protocol-Analyzer-with-Wireshark.html
[09]:http://www.freaklabs.org/index.php/Blog/Chibi/Assembling-and-Setting-Up-the-Freakduino-Chibi.html
[10]:http://www.freaklabsstore.com/pub/FREAKDUINO-CHIBI%20v1.1%20Datasheet.pdf
[11]:http://www.freaklabs.org/index.php/chibiArduino.html
[12]:http://www.freaklabs.org/chibi/HOWTO%20Using%20the%20chibiArduino%20Wireless%20Protocol%20Stack.pdf
[13]:http://www.freaklabs.org/index.php/Tutorials/Software/Feeding-the-Shark-Turning-the-Freakduino-into-a-Realtime-Wireless-Protocol-Analyzer-with-Wireshark.html
[14]:http://www.freaklabs.org/index.php/WSBridge.html
[15]:http://www.freaklabs.org/index.php/Tutorials/Software/Feeding-the-Shark-Turning-the-Freakduino-into-a-Realtime-Wireless-Protocol-Analyzer-with-Wireshark.html
[16]:http://www.wireshark.org/
[17]:http://en.wikipedia.org/wiki/Tcpdump
[18]:http://en.wikipedia.org/wiki/Network_interface_controller
[19]:http://en.wikipedia.org/wiki/Promiscuous_mode
[20]:http://en.wikipedia.org/wiki/Network_switch
[21]:http://www.wireshark.org/docs/man-pages/dumpcap.html
[22]:http://superuser.com/questions/319865/how-to-set-up-wireshark-to-run-without-root-on-debian
[23]:http://wiki.wireshark.org/CaptureSetup/CapturePrivileges
[24]:http://playground.arduino.cc/learning/linux
[25]:http://en.wikipedia.org/wiki/Integrated_development_environment
[26]:http://www.freaklabs.org/index.php/chibiArduino.html
[27]:http://jeffskinnerbox.wordpress.com/2012/11/11/dropbox-for-the-raspberry-pi-sort-of/
[28]:http://hintshop.ludvig.co.nz/show/persistent-names-usb-serial-devices/
[29]:http://linux.die.net/man/8/lsusb
[30]:http://www.raspberrypi.org/phpBB3/viewtopic.php?f=28&amp;t=13382
[31]:http://wiki.debian.org/udev
[32]:http://www.freaklabs.org/index.php/Tutorials/Software/Feeding-the-Shark-Turning-the-Freakduino-into-a-Realtime-Wireless-Protocol-Analyzer-with-Wireshark.html
[33]:http://www.freaklabsstore.com/pub/FREAKDUINO-CHIBI%20v1.1%20Datasheet.pdf
[34]:http://www.freaklabs.org/index.php/Tutorials/Software/Feeding-the-Shark-Turning-the-Freakduino-into-a-Realtime-Wireless-Protocol-Analyzer-with-Wireshark.html
[35]:http://jeffskinnerbox.wordpress.com/2013/01/30/configuration-utilities-for-xbee-radios/
