* [Networking tutorial](https://www.youtube.com/watch?v=XaGXPObx2Gs&list=PLowKtXNTBypH19whXTVoG3oKSuOcw_XeW)

* [Serial Terminal Basics](https://learn.sparkfun.com/tutorials/terminal-basics)

* [Setting up a serial terminal](https://software.intel.com/en-us/setting-up-serial-terminal-intel-edison-board)
* [Remote Serial Console HOWTO](http://tldp.org/HOWTO/Remote-Serial-Console-HOWTO/)
* [5 Linux / Unix Commands For Connecting To The Serial Console](http://www.cyberciti.biz/hardware/5-linux-unix-commands-for-connecting-to-the-serial-console/)
* [Open a RS232 Serial Terminal Connection](https://pixhawk.ethz.ch/tutorials/serial_terminal)
* [RS-232 vs. TTL Serial Communication](https://www.sparkfun.com/tutorials/215?_ga=1.132009867.562203984.1457131060)
* [Serially, Are You Syncing or Asyncing?](http://hackaday.com/2016/06/28/serially-are-you-syncing-or-asyncing/)
* [What Could Go Wrong: Asynchronous Serial Edition](http://hackaday.com/2016/06/22/what-could-go-wrong-asynchronous-serial-edition/)
* [A Crash Course In Reliable Communication](https://hackaday.com/2018/06/14/a-crash-course-on-reliable-communication/)

* [Eternal Terminal](https://mistertea.github.io/EternalTCP/)
* [terminal emulators](https://en.wikipedia.org/wiki/List_of_terminal_emulators)
* [Computer terminal](https://en.wikipedia.org/wiki/Computer_terminal)
* [Linux console](https://en.wikipedia.org/wiki/Linux_console)
* [Linux Serial Console HOWTO](http://www.vanemery.com/Linux/Serial/serial-console.html)
* [RPi Serial Connection](http://elinux.org/RPi_Serial_Connection)

* [Using UART on Raspberry Pi](https://electrosome.com/uart-raspberry-pi-python/)
* [Raspberry Pi and the Serial Port](http://www.hobbytronics.co.uk/raspberry-pi-serial-port)

* [Adafruit FT232H Breakout - General Purpose USB to GPIO+SPI+I2C](https://www.adafruit.com/products/2264)


HyperTerminal - HyperTerminal is the defacto terminal program for any Windows OS up to XP (you can find ports for other Windows versions).
PuTTY
Screen
microcom

# Character Encoding
* [Baudot code](https://en.wikipedia.org/wiki/Baudot_code) aka International Telegraph Alphabet No. 1 or ITA1
* [Baudot–Murray code]() aka International Telegraph Alphabet No. 2 (ITA2)
* [ASCII](https://en.wikipedia.org/wiki/ASCII)

# TTY
The `tty` command gets its name from a device from the late 1800s known as
[teleprinters (aka teletypewriter, Teletype, or TTY)](https://en.wikipedia.org/wiki/Teleprinter)
It appeared in Unix in 1971, and is part of Linux and Unix-like operating systems to this day.

* [What is a TTY on Linux? (and How to Use the tty Command)](https://www.howtogeek.com/428174/what-is-a-tty-on-linux-and-how-to-use-the-tty-command/)
* [The TTY demystified](http://www.linusakesson.net/programming/tty/)

# Computer Terminal
A computer terminal is an electronic or electromechanical hardware device that is used for entering data into, and displaying data from, a computer or a computing system.
Early user terminals connected to computers were electromechanical teleprinters/teletypewriters (TeleTYpewriter, TTY), such as the Teletype Model 33 ASR, originally used for telegraphy or the Friden Flexowriter.

The DEC VT05 was an early example of a hardware based virtual teletype,
a predecessor to the famous DEC VT100.
* [VT05](https://en.wikipedia.org/wiki/VT05)
* [VT100](https://en.wikipedia.org/wiki/VT100)

* https://en.wikipedia.org/wiki/Computer_terminal

Linux and other Unix-like operating systems such as macOS,
the terminal window and applications such as [xterm](https://en.wikipedia.org/wiki/Xterm)
examples of virtual teletypes, but these are emulated entirely in software.
They are called pseudo-teletypes, which is shortened to pts.

# Types of Serial Port
serial port lines (CTS, RTS, DTR, DSR, RI, CD)
## RJ45
## DB-9
## RS-232

# Serial Interface
The whole purpose of a serial interface is to provide a
single path for data transmission wirelessly or over a cable.
Parallel buses are still used in some applications.
But with high-speed data so common today,
a serial interface is the only practical option for communications over any distance greater than several feet.

Serial interfaces can be used to provide standardized logic levels from transmitters to receivers,
define the transmission medium and connectors,
and specify timing and data rates.
The definition of logic levels, medium, and connectors is part of the
physical layer (PHY) or layer 1 of the Open Systems Interconnection (OSI) networking model.
Any additional functions such as data handling is part of the
media access control (MAC) layer or layer 2 of the OSI model.

Dozens of serial data interfaces are used today.
Most have been developed for specific applications.
A few have become universal, such as I2C, CAN, LIN, SPI, Flex, MOST, and I2S.
Then there’s Ethernet and USB and other higher-speed serial interfaces like FireWire, HDMI, and Thunderbolt.

# RS-232 and RS-485
Two of the oldest serial interfaces are RS-232 and RS-485.
These legacy interfaces aren’t obsolete or discontinued, though.
Both are still alive and well in many applications.

* [What’s The Difference Between The RS-232 And RS-485 Serial Interfaces?](http://www.electronicdesign.com/what-s-difference-between/what-s-difference-between-rs-232-and-rs-485-serial-interfaces)
* [According to Pete: How RS-485 Works](https://www.sparkfun.com/news/2652)
* [Application Guidelines for TIA/EIA-485-A](http://e2e.ti.com/cfs-file/__key/telligent-evolution-components-attachments/00-142-00-00-00-33-63-91/TSB_2D00_89_2D00_A.pdf)
* [RS-485 Transceiver Tutorial](https://www.intersil.com/content/dam/Intersil/whitepapers/interface/rs-485-transceiver-tutorial.pdf)

# Computer Serial Port
* http://www.labbookpages.co.uk/electronics/serialPort.html

# Change Terminal Characteristics With stty
The stty utility shall set or report on terminal I/O characteristics for the device.

Whenever you enable a terminal,
the system automatically sets the operating characteristics of the serial line to a set of default values.
Sometimes these values do not match the values used by the terminal and,
therefore, must be changed to allow communication between the system and the terminal.
You can display the operating characteristics of a serial line with the `stty` (set tty) command.

Typing `stty sane` at the shell prompt will fix a lot of oddities.
For example, if you accidentally issue a bad command
and all of a sudden nothing shows up on the screen
or if you have general gibberish showing up on the screen,
`stty sane` may return your terminal session to sanity.
See - https://www.cyberciti.biz/tips/bash-fix-the-display.html

* https://blog.nelhage.com/2009/12/a-brief-introduction-to-termios-termios3-and-stty/
* http://pubs.opengroup.org/onlinepubs/007904975/utilities/stty.html
* http://linux.101hacks.com/unix/stty/
* http://www.commandlinefu.com/commands/using/stty
* http://osr507doc.xinuos.com/en/HANDBOOK/serial_line_operation_changing.html
* [How to change the color of your Linux terminal](https://opensource.com/article/19/9/linux-terminal-colors)

# Screen
How to check if I'm in screen session? - https://serverfault.com/questions/257975/how-to-check-if-im-in-screen-session

The `screen` program does not (as far as we know) provide an option for local echo
(to see what you are typing).
Screen assumes that character echo will be supplied at the far end, not your local host.
This can be a pain but `minicom` is an alternative that can provide local echo.

* [An introduction to GNU Screen](https://opensource.com/article/17/3/introduction-gnu-screen)

# Minicom
Minicom is a terminal program, intended for use with a modem, that
works well as an intermediary to any remote system connect through a
serial port.
One big advantage of minicom is that it allows one to easily capture
text into a file.

```bash
# install serial port terminal minicom
sudo apt-get install minicom
```

You might want to find out the name of your serial port,

```bash
# list all the port that are used to connected to outside terminals
dmesg | grep tty
```

Once minicom is installed it will not be setup to talk properly to a board through the UART port.
To change the configuration, open up a terminal window and run

```bash
# `-s` parm runs minicom in setup mode
`sudo minicom -s`
```

After executing this command, follow these steps:

1. Press A and change the serial device to the one you say in the previous step “For example: /dev/tty0”
1. Press F to change the flow control to “No”
1. Finally and most importantly, Press E to change your baud rate to “9600”

Now Press Esc to go back to main menu,
and then save your configuration as default or you could save with a name.
For example cisco, now every time you would like to use the same configuration just type sudo minicom cisco.

## Local Echo
>Local echo is a computer modem feature and terminal option that allows the modem to display keyboard commands and transmitted data on the screen as it is being entered into the computer or received by the modem.

For some situations you will not hav local echo of characters you type in.
To fix this, you can add it with `CTRL-A E` to turn on local echo
and `CTRL-A A` to append a linefeed to CR terminated ASCII arriving at the serial port.

* https://superuser.com/questions/752098/local-echo-using-screen-to-connect-to-a-serial-terminal


You will see the minicom configuration utility ... http://processors.wiki.ti.com/index.php/Setting_up_Minicom_in_Ubuntu

* [Using Minicom the serial terminal emulator](https://www.acmesystems.it/minicom)
* http://lachlanmiskin.com/blog/2012/08/03/using-minicom-to-interface-with-serial-devices-on-linux/
* [Minicom User Guide](http://www.shop.ngxtechnologies.com/download/jtag/minicom_User_Guide.pdf)
* [Minicom-tutorial](http://derrekito.github.io/Minicom-tutorial/)

[Null modem](https://en.wikipedia.org/wiki/Null_modem)

#######################################

Many embedded devices still communicate over a serial connection like they did 40 years ago.
On the other hand, most modern computers lack a hardware serial port,
and replaced with a USB serial interface.
This post shows in detailed steps how to open a serial connection to an embedded device on Windows (Vista, XP), Linux and Mac OS X.

# What is meant by serial communication?
# Serial Connection
[Serial Communication](https://learn.sparkfun.com/tutorials/serial-communication)

# Understanding UART
* [How to Communicate with UART](https://www.youtube.com/watch?v=e8uEKWpVf10&feature=youtu.be)
* [Back to Basics: The Universal Asynchronous Receiver/Transmitter (UART)](http://www.allaboutcircuits.com/technical-articles/back-to-basics-the-universal-asynchronous-receiver-transmitter-uart/?utm_source=All+About+Circuits+Members&utm_campaign=44def5ed41-EMAIL_CAMPAIGN_2016_12_28&utm_medium=email&utm_term=0_2565529c4b-44def5ed41-270523833/)
* [Where does 9600 bps come from?](https://www.sparkfun.com/news/2231)
* [UART Double Buffering Technique: Interrupt-Friendly](http://www.allaboutcircuits.com/technical-articles/uart-double-buffering-technique-interrupt-friendly/)
* [UART Baud Rate: How Accurate Does It Need to Be?](https://www.allaboutcircuits.com/technical-articles/the-uart-baud-rate-clock-how-accurate-does-it-need-to-be/?utm_source=All+About+Circuits+Members&utm_campaign=e01676fafa-EMAIL_CAMPAIGN_2017_02_08&utm_medium=email&utm_term=0_2565529c4b-e01676fafa-270523833/)
* [DISCOVERY: UARTS PART 1](http://embedded.fm/blog/2016/11/29/discovery-uarts-part-1)
* [DISCOVERY: UARTS PART 2 - CONNECTIONS](http://embedded.fm/blog/2016/12/6/discovery-uarts-part-2-connections)
* [DISCOVERY: UARTS PART 3 - THE FINAL STEP](http://embedded.fm/blog/2016/12/13/discovery-uarts-part-3-the-final-step)
* [WHAT GOOD IS A UART? COMMAND CONSOLE!](http://embedded.fm/blog/2016/12/14/what-good-is-a-uart-command-console)
* [DISCOVERY: UART INPUT](http://embedded.fm/blog/2017/1/19/discovery-uart-input)
* [How to Communicate with UART](https://www.youtube.com/watch?v=e8uEKWpVf10&feature=youtu.be)
* [Using the UART](http://www.raspberry-projects.com/pi/programming-in-c/uart-serial-port/using-the-uart)

# SPI Bus
* [SPI On Embedded Linux](http://hackaday.com/2017/02/19/spi-on-embedded-linux/)
* [What Could Go Wrong: SPI](http://hackaday.com/2016/07/01/what-could-go-wrong-spi/)

# I2C Bus
* [Introduction to the I2C Bus](http://www.allaboutcircuits.com/technical-articles/introduction-to-the-i2c-bus/)
* [An Introduction to Differential I²C](http://hackaday.com/2017/03/31/an-introduction-to-differential-i%C2%B2c/)
* [Introduction to the I2C Bus](https://www.youtube.com/watch?v=oRTq8HI4UGs&feature=youtu.be)
* [What Could Go Wrong? I2C Edition](http://hackaday.com/2016/07/19/what-could-go-wrong-i2c-edition/)
* [Taking the Leap Off Board: An Introduction to I2C Over Long Wires](http://hackaday.com/2017/02/08/taking-the-leap-off-board-an-introduction-to-i2c-over-long-wires/)
* [Bus Pirate Commandeers I2C](http://hackaday.com/2017/02/07/bus-pirate-commandeers-i2c/)

# Universal Serial Bus (USB)
USB (universal serial bus) is an industry standard covering cables, connectors and protocols;
and is pretty ubiquitous among tech products these days.

* [USB Reverse Engineering: Down the rabbit hole](http://devalias.net/devalias/2018/05/13/usb-reverse-engineering-down-the-rabbit-hole/)
* [USB Reverse Engineering: A Universal Guide](https://hackaday.com/2018/05/25/usb-reverse-engineering-a-universal-guide/)

# Bit Banging
In circuit designing,
[bit banging][04] is slang for various techniques in which serial communications
use software instead of dedicated hardware (such as a modem, UART, or shift register)
to process and make use of signals.
For bit banging, your using software to directly sets and samples the state of pins on a microcontroller.
The software is responsible for all parameters of the signal:
timing, levels, synchronization, etc.

In contrast to bit banging, dedicated hardware handles these parameters
and provides buffered data interface in other systems.
As a result, the software is not required to perform signal demodulation.
Also, bit banging allows the same device to use different protocols with minimal
or no hardware changes required.

* [a tiny software UART TX for the AVR ATtiny](https://marcelmg.github.io/software_uart/)

# Serial Port

# What is the Tx and Rx?
TX and RX are abbreviations for Transmit and Receive, respectively. Note that these metrics are referenced to the server being monitored; Transmit FROM this server, and Receive TO this server.

# Modems
The term "AT Commands" come from Hayes modem control commands that were used by the Hayes smart modems.
The Hayes commands started with AT (abreviation of the word "attention")
to gain the attention from the MODEM.
The dial up and wireless MODEMs (devices that involve machine to machine communication)
need AT commands to interact with a computer.
These include the Hayes command set as a subset,
along with other extended AT commands.

* [All You Wanted To Know About AT And GSM AT Commands](http://electronicsforu.com/resources/cool-stuff-misc/wanted-know-gsm-commands)
* [Serial Programming/Modems and AT Commands](https://en.wikibooks.org/wiki/Serial_Programming/Modems_and_AT_Commands)
* [A brief history of USB, what it replaced, and what has failed to replace it](http://arstechnica.com/gadgets/2015/11/a-brief-history-of-usb-what-it-replaced-and-what-has-failed-to-replace-it-2/)

# Terminal
Back when computers where big, bulky, and took up entire rooms,
you would generally interact with them via punch cards and paper tape.
But there was also another device first used by the computer operator,
but later by end users, used for entering and retrieving data, known as a [terminal][01].
These terminals came in many form factors, but generally consisted of a keyboard and a screen.
The earliest terminals were pure electromechanical devices,
[teletypewriters (TeleTYpewriter, TTY)][03]
(more generically know as a [teleprinter][02]),
with no electronic logic and no CRT display tube,
just keyboard and paper printer.

In the realm of computers, TTY was used to refer to "teletype" or "teletypewriter",
but it has come to refer to any type of text terminal.
[The TTY demystified](http://www.linusakesson.net/programming/tty/)

* [Top 7 open source terminal emulators](https://opensource.com/life/15/11/top-open-source-terminal-emulators?sc_cid=70160000001206EAAQ)

## Ncurses and Terminfo
* [Linux Fu: Controlling the Terminal](https://hackaday.com/2018/11/28/linux-fu-controlling-the-terminal/#more-334438)

# What is a Console?
The device `/dev/console` is used to send messages to the console.
The console where system messages appear is described as the "logical console",
which can also be the keyboard and monitor that are attached to the system.

http://www.tldp.org/HOWTO/Remote-Serial-Console-HOWTO/intro-what.html

## Why Use a Serial Console?
The advantages of a serial USB cable are that you won’t need extra keyboards,
mouse or external displays attached.
You don’t even need an extra power supply.

http://www.tldp.org/HOWTO/Remote-Serial-Console-HOWTO/intro-why.html
[Setting up a serial console](https://www.howtoforge.com/setting_up_a_serial_console)

## Console Access to Raspberry Pi
[!sereial-cable](https://cdn-shop.adafruit.com/970x728/954-02.jpg)
A [USB to TTL serial cable][65] (aka console cable)
can be used to connect to [system console][66] on the Raspberry Pi A.
(Make sure to use a cable having 3.3V logic levels. Not all cables are 3.3V!)
The great advantage of connecting this way is that
you don't need to utilize the WiFi you attempting to configure and
you do not need keyboard, mouse, or display attached to the RPi to log into it.
It can even supply the power for your RPi.
The RPi uses its built-in serial port to allow devices to connect to its console,
via a terminal emulater like [`screen`][71] or [`microcom`][72],
and issue commands just as if you were logged in.
The posting "[How to Run Raspberry Pi with No Monitor or Network][69]"
can give you additional information.

Connect the console cable to the RPi pins in the table below.
The location of these GPIO pins on the Raspberry Pi (all types) is illustrated in the picture below
(see [Raspberry Pi A+, B+, Zero, Pi 2 GPIO Pinout][67] and
[Raspberry Pi 3 Model B GPIO 40 Pin Block Pinout][68] for additional detail):

[pin-out!](http://workshop.raspberrypiaustralia.com/assets/console-cable-connections.jpg)
[pin-out!](https://www.element14.com/community/servlet/JiveServlet/previewBody/80667-102-1-338789/GPIO.png)

|   Raspberry Pi   |   Serial Cable    |
|:----------------:|:-----------------:|
| VCC → RPi Pin 02 | DC Power 5V - red |
| GND → RPi Pin 06 | Ground - black    |
| RXD → RPi Pin 08 | TX - white        |
| TXD → RPi Pin 10 | RX - green        |

**NOTE:** Only connect to VCC / Pin 02 if you are **not** supply power via USB.

If your terminal emulator is running in Linux (such as [`screen`][71]),
you will need to know the device name assigned by Linux to your console cable.
It could be the following:

* Typically its USB Serial Port Adapter device name: `/dev/ttyUSB0`, `/dev/ttyUSB1`, and so on.
* Built-in (standard) serial device name: the Linux standard is `/dev/ttyS0`, `/dev/ttyS1`, and so on
* Some types of USB serial adapter may appear as `/dev/ttyACM0` ...

The console cable I use is a USB serial device,
so I could use something like `/dev/ttyUSB0`,
but I have give it a [usb persistent name][70] of `ccable33v`.
For the Adafruit console cable,
I added the following UDEV rule to a file in the `/etc/udev/rules.d.` directory:
`SUBSYSTEM=="tty", ATTRS{idVendor}=="067b", ATTRS{idProduct}=="2303", SYMLINK+="ccable33v"`.
See "[Howto: persistent device names on Raspberry Pi][75]" for more information.

With the console cable and proper terminal emulator parameters:

* **Speed (baud rate):** 115200
* **Bits:** 8
* **Parity:** None
* **Stop Bits:** 1
* **Flow Control:** None

You can always access the device it if you use `sudo screen ...`.
To avoid `sudo` root access,
you will need to be a member of the `dialout` group to access this device via `screen`
(for later releases the required group is `tty`).
You can check which is needed with:

```bash
# find out the group name for the device
$ ls -l /dev/ttyUSB0
crw-rw---- 1 root dialout 188, 0 Mar 19 17:41 /dev/ttyUSB0
```

Within the "`crw-rw----T 1 root dialout ...`",
`c` means character device,
and root can 'read,write' and the group `dialout` can 'read,write' to the device
and everyone else cannot access it.
To find out if you, the current user, is in the group dialout, use the command:

To find out if you, the current user,
is in the group `dialout` and place yourself in the groud, use the `groups` and `usermod` commands:

```bash
# find out if your in the dialout group
$ groups jeff
jeff : jeff adm cdrom sudo dip plugdev lpadmin sambashare vboxusers

# put yourself into the dialout group
sudo usermod -a -G dialout jeff
```

You can now log into a Raspberry Pi via a console cable with:

```bash
# login to raspberry pi console
screen /dev/ccable33v 115200,cs8

# NOTE: press CTRL+A then k. To logout and kill all screen session
```

To scroll up while using screen,
type CTRL+A ESC and you can then use the arrow keys or mouse wheel to scroll up.

To kill the session your are within,
press Ctrl+A then type ":quit".

To kill a session that you have left:

```bash
# list the screens attached or detached
$ screen -list
There is a screen on:
        11505.pts-1.desktop     (03/24/2017 11:16:24 PM)        (Attached)
1 Socket in /var/run/screen/S-jeff.

# kill the desired screen session
$ screen -X -S 11505.pts-1.desktop quit
```
Type RETURN twice when you are ready to go back to interactive mode.

**NOTE:** If any of this doesn't work, make sure you have the serial console correctly configured.
During the intial Raspberry Pi configuration using `sudo raspi-config`,
make sure to select "Boot Options" and choose "B1 Console".
You will need a password to get console access,
which gives you greater security, and allow console cables to work via
[`screen`][71] or [`microcom`][72].
Consult the websites [RPi Serial Connection][73] and
[How to connect Raspberry pi to Ubuntu via USB Cable][74]
for additional insights.

# Bus Pirate
http://dangerousprototypes.com/docs/Bus_Pirate

# μArt
https://www.crowdsupply.com/pylo/muart

# USB to TTL Serial
* [USB to TTL Serial Cable - Debug / Console Cable](https://www.adafruit.com/product/954)
* [FTDI Serial TTL-232 USB Cable](https://www.adafruit.com/product/70)
* [USB/Serial Converter - FT232RL](https://www.adafruit.com/product/18)
* [Using FTDI Chips With Python](https://hackaday.com/2018/12/19/using-ftdi-chips-with-python/)



[01]:https://en.wikipedia.org/wiki/Computer_terminal
[02]:https://en.wikipedia.org/wiki/Teleprinter
[03]:https://en.wikipedia.org/wiki/Teletype_Corporation
[04]:https://en.wikipedia.org/wiki/Bit_banging
[05]:
[06]:
[07]:
[08]:
[09]:
[10]:

[65]:https://www.adafruit.com/products/954
[66]:https://en.wikipedia.org/wiki/System_console
[67]:https://www.element14.com/community/docs/DOC-80667/l/raspberry-pi-a-b-zero-pi-2-gpio-pinout
[68]:https://www.element14.com/community/docs/DOC-73950/l/raspberry-pi-3-model-b-gpio-40-pin-block-pinout
[69]:http://raspi.tv/2012/how-to-run-raspberry-pi-with-no-monitor-or-network
[70]:http://hintshop.ludvig.co.nz/show/persistent-names-usb-serial-devices/
[71]:http://www.computerhope.com/unix/screen.htm
[72]:http://manpages.ubuntu.com/manpages/xenial/man1/microcom.1.html
[73]:http://elinux.org/RPi_Serial_Connection
[74]:https://www.anintegratedworld.com/how-to-connect-raspberry-pi-to-ubuntu-via-usb-cable/
[75]:http://rolfblijleven.blogspot.nl/2015/02/howto-persistent-device-names-on.html

