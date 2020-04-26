
* [Hands-On: GreatFET Is An Embedded Tool That Does It All](https://hackaday.com/2019/07/02/hands-on-greatfet-is-an-embedded-tool-that-does-it-all/)

Summary: The Bus Pirate is an open source hacker multi-tool that talks to electronic stuff using 1-Wire, I2C, SPI, JTAG, Asynchronous serial, MIDI, PC keyboard, HD44780 LCD, and more. It has a ton of other capabilities like low-speed logic analyzer, 1Hz-40MHz frequency measurement, Bus traffic sniffers (SPI, I2C), and more.

* [Bus Pirate v3.6a Hookup Guide](https://learn.sparkfun.com/tutorials/bus-pirate-v36a-hookup-guide)
* [Logic Pirate](http://dangerousprototypes.com/docs/Logic_Pirate)
* [RS-232 vs. TTL Serial Communication](https://www.sparkfun.com/tutorials/215?_ga=1.132009867.562203984.1457131060)
* [The Newbie’s Guide To JTAG](https://hackaday.com/2020/02/24/the-newbies-guide-to-jtag/)
* [A Hacker’s Guide To JTAG](https://hackaday.com/2020/04/08/a-hackers-guide-to-jtag/)

<a href="/img/posts/jekyll-posts/bus-pirate.jpg"><img align="left" title="bus priate board" src="/img/posts/jekyll-posts/bus-pirate.jpg" width="200px" height="149px" class="img-rounded floatLeft" /></a>
Interfacing a new microchip or interfacing a new device can be a hassle,
since it can required breadboarding a circuit, writing code, or maybe even prototyping a PCB.
Getting it right on the first try is nearly a hopeless task, but the Bus Pirate provides some hope.
The [Bus Pirate][01], created by [Dangerous Prototypes][02],
is a [Microchip PIC24][17] embedded system which
is a troubleshooting tool that communicates between a terminal and any
embedded device over most standard serial protocols, which include I2C, SPI, and asynchronous serial.
The Bus Pirate can operate at 3.3V or 5V logic levels
and controlling the Bus Pirate is as easy as hooking up a serial terminal program
and plugging in a USB cable.

The Bus Pirates main object is to reduce or eliminates early prototyping effort when working with new or unknown chips.
Type commands into a terminal on your computer, those commands are interpreted by the Bus Pirate and sent via the proper protocol.
The Pirate will also interpret data sent from your embedded device back to your computer terminal. There is also a bootloader on the Bus Pirate, which allows you to easily update the firmware and change the functionality.

This posting documents my initial run at the Bus Pirate.
My initial efforts where to run the self-testing, update the firmware, and study the documentation.
Doesn't sound like much but this little board is packed with functionality.

# Understanding UART and I2C
* [Introduction to the I2C Bus](https://www.youtube.com/watch?v=oRTq8HI4UGs&feature=youtu.be)
* [How to Communicate with UART](https://www.youtube.com/watch?v=e8uEKWpVf10&feature=youtu.be)
* [Introduction to the I2C Bus](http://www.allaboutcircuits.com/technical-articles/introduction-to-the-i2c-bus/)
* [An Introduction to Differential I²C](http://hackaday.com/2017/03/31/an-introduction-to-differential-i%C2%B2c/)
* [What Could Go Wrong? I2C Edition](http://hackaday.com/2016/07/19/what-could-go-wrong-i2c-edition/)
* [Taking the Leap Off Board: An Introduction to I2C Over Long Wires](http://hackaday.com/2017/02/08/taking-the-leap-off-board-an-introduction-to-i2c-over-long-wires/)
* [Bus Pirate Commandeers I2C](http://hackaday.com/2017/02/07/bus-pirate-commandeers-i2c/)

## Bus Pirate Self-Test
To use Bus Pirate, you'll need to connect with it via a terminal emulator.
Linux has a simple terminal called [microcom][03] that can do the trick.
You can install it on on Ubuntu or the Raspberry Pi (RPi) via `sudo apt-get install microcom`.

To start up Bus Pirate, connect it to the RPi via a USB cable, and type in `microcom -p /dev/ttyUSB0`
Follow this with a carriage return and you should get the prompt `HiZ>`.
Now perform a self-test using the instructions posted on the [Bus Pirate self-test guide][12].
A self-test goes like this:

1. Disconnect any devices from the Bus Pirate I/O header pins.
2. Connect the Vpullup (Vpu) pin to the +5V pin. Connect the ADC pin to the +3.3V pin.
3. Connect the Bus Pirate to you system via the USB cable.
4. Within a terminal window, execute the command `sudo microcom -p /dev/buspirate`.
5. To begin the self test, type '~' followed by enter in the terminal. (Self-test is available in HiZ mode only.)

I got the following output:

<center>
![Test Results](/img/posts/jekyll-posts/bus-pirate-self-test-results1.jpg "bus pirate self test results")
</center>

The test failed ... Specifically it failed the voltage test.  I suspected that the RPi's USB port couldn't deliver the power, so I repeated the test using my PC and it passed.
The moral of the story is that the Bus Pirate needs to be used with a powered hub on the RPi.  Also, its a
[good practice][05] to power both the RPi and the device ( Bus Pirate, WiFi, etc.) from the same hub.

## Persistent Names for the Bus Pirate USB Devices
Now that I must use a hub, I'm going to have to dance around to figure out what `ttyUSB*` the Bus Pirate is attached too.
I'm growing tired of the dance so I'm going to make the [device name persistent][06].
I ran the command [lsusb][07] twice, once before plugging in the Bus Pirate to the USB hub, and then after. The results I got are listed below:

<center>
![buss pirate lsub](/img/posts/jekyll-posts/bus-pirate-lsusb.jpg "setting of persistent USB name for bus pirate")
</center>

This tells us the Bus Pirate's VendorID:ProductID pair is `0403:6001`.
Using the `udevadm info -a -n /dev/ttyUSB0` command,
you conclude that the  serial number of the device is `AD01W5AI`.
Armed with this information and following guidance from [this post][11] and [this post][23],
I can now update the [UDEV rules][08].
I'll create a UDEV rule set that’ll make a symbolic link, called `/dev/buspirate`, for the Bus Pirate.
UDEV rules are located in the `/etc/udev/rules.d` directory.
I'll create a new file called `99-usb-serial.rules` within the RPi and put in the following line:

```
SUBSYSTEM=="tty", ATTRS{idVendor}=="0403", ATTRS{idProduct}=="6001", ATTRS{serial}=="AD01W5AI", SYMLINK+="buspirate"
```

Now unplug and then plug back in the Bus Pirate.  If you do `ls -l /dev/buspirate` you'll see the device and its symbolic link.  No more USB port dancing to find the Bus Pirate!
Repeat the Bus Pirate self-test with  `microcom -p /dev/buspirate` and you should have an error free run when attached to the USB hub.
Note that depending on your permissions setting on your system, you might have to use `sudo microcom -p /dev/buspirate`.

## Bus Pirate Firmware Update
While in the Bus Pirate (v3.6 as stated on the board),
I ran the [command "i"][09] to list the firmware version
and it didn't list the latest  firmware (i.e. v6.1).
I got the following:

```
Bus Pirate v3b
Firmware v5.10 (r559)  Bootloader v4.4
DEVID:0x0447 REVID:0x3046 (24FJ64GA002 B8)
http://dangerousprototypes.com
```

To update the Bus Pirate with the latest firmware, I followed the instructions at [Dangerous Prototypes][10].
The instructions are very convoluted, but basically it went like this:

1. Down load the latest firmware and loading tools, [BusPirate.package.v6.1.zip](http://code.google.com/p/dangerous-prototypes-open-hardware/downloads/detail?name=BusPirate.package.v6.1.zip).
2. Unpack the Zip file and you'll find multiple versions of tools and firmware.  Were interested in in the directory `BPv3-firmware`, so `cd` into it.
3. We'll be loading the firmware package called `BPv3-frimware-v6.1.hex` and we must compile the loader tool in the directory `pirate-loader-source`.
4. Run the provided script `build-unix.sh` to build the loading tool by doing `sh ./build-unix.sh`. This should give you an executable called `pirate-loader_lnx`. Now `cd ..` to return to the directory where the Hex data is located.
5. In a separate terminal for the Bus Pirate, enter into bootloader mode by using this series of commands: `sudo microcom -p /dev/buspirate`, `$`, and `y`. You'll see a response back from the Bus Pirate `BOOTLOADER`.  Now terminate the terminal being used.  _This is need to to free the serial port to the Bus Pirate before proceeding._
6. In a terminal, execute the command `sudo ./pirate-loader-source/pirate-loader_lnx --dev=/dev/buspirate --hex=BPv3-frimware-v6.1.hex`.  This will perform the firmware upload.
7. Reset the Bus Pirate by removing and attaching the USB cable. The firmware update is complete.

Now if you check the firmware version using the "i" command again, you get:

```
Bus Pirate v3.5
Firmware v6.1 r1676  Bootloader v4.4
DEVID:0x0447 REVID:0x3046 (24FJ64GA002 B8)
http://dangerousprototypes.com
```

You can also do a hardware [self-test][13] to further verify things are in working order.

## User Modes
The Bus Pirate can be used directly via a user thought a terminal or can be driven
via a script written in a verity of languages.

* **User Terminal Mode** - The Bus Pirate is accessed from a command line in a serial terminal.  The Bus Pirate always starts in high impedance mode (Hi-Z), a safe mode with all outputs disabled.  It's intended to protect any connected devices from conditions beyond their specifications.  From there, a bus mode can be selected to use the Bus Pirate with a specific protocol.  For more information, see [Bus Pirate user interface][19] and [Bus Pirate menu options guide][20].
* **Binary Scripting Mode** - It is possible to automate the commands to the Bus Pirate using command chaining and scripting.  Scripting control examples are provided in the libraries like the [pyBusPirateLite][14] Python library.  See [Bus Pirate Scripting][18] in Python for more information.

## Bus Pirate Cable Pinouts
Below is a reference cards for the [Bus Pirate probe cable pinout][16].
Note that this is for the [Seeed Studio probe cable][15], and the color coding maybe different for other vendors.
[![reference card](/img/posts/jekyll-posts/seeedstudio-bus-pirate-probe-cable-pinout.png "bus priate pinout reference card")](http://dangerousprototypes.com/docs/Common_Bus_Pirate_cable_pinouts)
[![cable connector](/img/posts/jekyll-posts/seeedstudio-bus-pirate-probe-cable-connector.jpg "bus priate probe connector")](http://dangerousprototypes.com/docs/Common_Bus_Pirate_cable_pinouts)
[![cable connector colors](/img/posts/jekyll-posts/seeedstudio-bus-pirate-probe-cable-connector-colors.jpg "bus priate probe connector wire colors")](http://dangerousprototypes.com/docs/Common_Bus_Pirate_cable_pinouts)

## Bus Pirate Documentation
The Bus Pirate documentation is considerable but not easy to consume and master,
or for that matter, even figure out where to begin.
The Bus Pirate “documentation” is a user community supported [wiki][22].
Like most hypertext documentation, there is no obvious way to read it linearly like a textbook,
and it can be hard to be sure you have found all of the material relevant to a particular topic.
I discovered that studying these documents, in the order given below, should prove fairly successful.
This is not [all of the documentation][21], but the parts that will help get you up and going.

* Introduction to the Bus Pirate
    * [Bus Pirate Online Manual](http://dangerousprototypes.com/docs/Bus_Pirate)
    * [Hardware Overview](http://dangerousprototypes.com/docs/Hardware_overview)
    * [Protocols, Features, and Applications supported by Bus Pirate](http://dangerousprototypes.com/docs/Features_overview)
* Bus Pirate I/O Pins and Cabling
    * [Bus Pirate I/O Pin Descriptions](http://dangerousprototypes.com/docs/Bus_Pirate_I/O_Pin_Descriptions)
    * [Common Bus Pirate cable pinouts][16]
* Bus Pirate Menu Options
    * [Bus Pirate user interface][19]
    * [Bus Pirate menu options guide][20]
* Main Bus Pirate Modes
    * [1-Wire (Dallas/Maxim 1-Wire Protocol)](http://dangerousprototypes.com/docs/1-Wire)
    * [UART (Universal Asynchronous Receiver Transmitter)](http://dangerousprototypes.com/docs/UART)
    * [I2C (Inter-Integrated Circuit or I-Squared-C](http://dangerousprototypes.com/docs/I2C)
    * [SPI (Serial Peripheral Interface)](http://dangerousprototypes.com/docs/SPI)
    * [Raw 2-Wire](http://dangerousprototypes.com/docs/Raw_2-wire)
    * [Raw 3-Wire](http://dangerousprototypes.com/docs/Raw_3-wire)
    * [HD44780 LCDs](http://dangerousprototypes.com/docs/HD44780_LCDs)
    * [MIDI (Musical Instrument Digital Interface)](http://dangerousprototypes.com/docs/MIDI#MIDI)
* Bus Pirate Sub-Modes
    * [Servo Mode (sub-mode of 1-Wire)](http://dangerousprototypes.com/docs/Bus_Pirate_servo_driver_documentation)
* Bonus Bus Pirate Modes (requires [bonus firmware](http://dangerousprototypes.com/docs/Bus_Pirate#Firmware_upgrades))
    * [PC Keyboard](http://dangerousprototypes.com/docs/PC_keyboard)
    * [DIO (Digital IO Mode)](http://dangerousprototypes.com/docs/Bus_Pirate:_DIO_mode)
    * [JTAG (Joint Test Action Group)](http://dangerousprototypes.com/docs/JTAG)
* Bus Pirate Scripting
    * [Binary Access Mode (used with software or scripts)](http://dangerousprototypes.com/docs/Bitbang)
    * [Bus Pirate BASIC script reference](http://dangerousprototypes.com/docs/Bus_Pirate_BASIC_script_reference)
    * [Bus Pirate Scripting in Python](http://dangerousprototypes.com/docs/Bus_Pirate_Scripting_in_Python)
* Bus Pirate Applications (there are many more)
    * [Scan for I2C read and write addresses](http://dangerousprototypes.com/2009/09/07/scan-for-i2c-read-and-write-addresses/)
    * [Logic Analyzer Mode](http://dangerousprototypes.com/docs/Logic_analyzer_mode)
    * [Bus Pirate Oscilloscope](http://dangerousprototypes.com/2010/12/06/bus-pirate-piratescope/)
    * [Bus Pirate AVR Programming](http://dangerousprototypes.com/docs/Bus_Pirate_AVR_Programming)
    * [Bus Pirate Binary SPI Sniffer Utility](http://dangerousprototypes.com/docs/Bus_Pirate_binary_SPI_sniffer_utility)
* Technical Details
    * [Bus Pirate self-test guide](http://dangerousprototypes.com/docs/Bus_Pirate_self-test_guide)
    * [HEX/DEC/BIN number entry and output display](http://dangerousprototypes.com/docs/HEX/DEC/BIN_number_entry_and_output_display)
    * [Practical guide to Bus Pirate pull-up resistors](http://dangerousprototypes.com/docs/Practical_guide_to_Bus_Pirate_pull-up_resistors)
    * [Pull-up resistors, high impedance pins, and open collector buses](http://dangerousprototypes.com/docs/Pull-up_resistors,_high_impedance_pins,_and_open_collector_buses)
* Tutorials
    * [Bus Pirate 101 tutorial](http://dangerousprototypes.com/docs/Bus_Pirate_101_tutorial)
    * [Bus Pirate 102 tutorial](http://dangerousprototypes.com/docs/Bus_Pirate_102_tutorial)
    * [Bus Pirate Edu kit partlist](http://dangerousprototypes.com/docs/Bus_Pirate_Edu_kit_partlist)
    * [Sailing the I2Cs with the Bus Pirate](http://www.sharebrained.com/2013/02/26/sailing-the-i2cs-with-the-bus-pirate/)
    * [Getting Started With an I2C LCD Using a Bus Pirate/](https://embeddedcode.wordpress.com/2014/12/06/getting-started-with-an-i2c-lcd-using-a-bus-pirate/)
* Uses for the Bus Pirate
    * [Bus Pirate Tips: Data Sniffer / Serial Bridge/ AVR & SPI Flash Programmer / JTAG](http://blog.allthingsgeek.com/article/index/index/id/26#.VNl1xdTN_MQ)
    * [Using a Bus Pirate as a USB-TTL Serial Converter](http://haquesprojects.com/embedded-device-hacking/using-a-bus-pirate-as-a-usb-ttl-serial-converter/)
    * [Bus Pirate as FTDI Cable](http://blog.zencoffee.org/2011/07/bus-pirate-as-ftdi-cable/)
    * [Transparent UART bridge](http://dangerousprototypes.com/docs/UART#Transparent_UART_bridge)

It should be no surprise that to really understand (and maybe some day master) the Bus Pirate,
you'll need to work with the Bus Pirate and an attached device while reading the documentation.



# FTDI
* [Using FTDI Chips With Python](https://hackaday.com/2018/12/19/using-ftdi-chips-with-python/)



[01]:http://www.seeedstudio.com/depot/bus-pirate-v3-assembled-p-609.html?cPath=61_68
[02]:http://dangerousprototypes.com/docs/Bus_Pirate
[03]:http://manpages.ubuntu.com/manpages/lucid/man1/microcom.1.html
[04]:http://dangerousprototypes.com/docs/Self-test_guide
[05]:http://elinux.org/RPi_VerifiedPeripherals
[06]:http://hintshop.ludvig.co.nz/show/persistent-names-usb-serial-devices/
[07]:http://linux.die.net/man/8/lsusb
[08]:http://wiki.debian.org/udev
[09]:http://dangerousprototypes.com/docs/Bus_Pirate_menu_options_guide#I_Hardware.2C_firmware.2C_microcontroller_version_information
[10]:http://dangerousprototypes.com/2012/01/11/bus-pirate-firmware-v6-1-now-available/
[11]:http://hackaday.com/2009/09/18/how-to-write-udev-rules/
[12]:http://dangerousprototypes.com/docs/Bus_Pirate_self-test_guide
[13]:http://dangerousprototypes.com/docs/Self-test_guide
[14]:http://dangerousprototypes.com/forum/viewtopic.php?f=28&t=1703&sid=afd2b57c12d3acf8d4d3cd6c3f3dc5b9
[15]:http://www.seeedstudio.com/depot/bus-pirate-v3-probe-kit-p-526.html
[16]:http://dangerousprototypes.com/docs/Common_Bus_Pirate_cable_pinouts
[17]:http://www.microchip.com/pagehandler/en-us/family/16bit/
[18]:http://dangerousprototypes.com/docs/Bus_Pirate_Scripting_in_Python
[19]:http://dangerousprototypes.com/docs/Bus_Pirate_user_interface
[20]:http://dangerousprototypes.com/docs/Bus_Pirate_menu_options_guide
[21]:http://dangerousprototypes.com/docs/Category:Bus_Pirate
[22]:http://en.wikipedia.org/wiki/Wiki
[23]:https://opensource.com/article/18/11/udev
