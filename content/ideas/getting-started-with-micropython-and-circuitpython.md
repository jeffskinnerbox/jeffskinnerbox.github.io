
* [OpenMV Cam H7 - Machine Vision w/ MicroPython](https://www.kickstarter.com/projects/1798207217/openmv-cam-h7-machine-vision-w-micropython)
* [MicroPython class for OV2640 Camera](https://github.com/namato/micropython-ov2640)

* [MicroPython Unveils New Pyboard D Series Board with STM32F7xx MCU](https://blog.hackster.io/micropython-unveils-new-pyboard-d-series-board-with-stm32f7xx-mcu-a7721bc09877)

* [Micropython and C Play Together Better](https://hackaday.com/2019/08/31/micropython-and-c-play-together-better/)

* [Simple Neural Network on MCUs](https://blog.hackster.io/simple-neural-network-on-mcus-a7cbd3dc108c)

* [Adafruit’s Feather nRF52840 Express Board and Developing with CircuitPython](https://blog.nordicsemi.com/getconnected/adafruits-feather-nrf52840-express-board-and-developing-with-circuitpython)







[MicroPython][01] claims to be a lean and efficient implementation of the Python 3.
Its compact enough to fit and run within just 256k of code space and 16k of RAM.
MicroPython standard library includes a small subset of the Python standard library
plus additions for the embedded world,
and is optimized to run on microcontrollers and other constrained environments.
MicroPython's [pyboard][03] is just one example.
It give you the experince like a Python Operating System
(see this [video][23] for how this feels).
A few other boards can also give you this experiance:

* Teensy 3.x requiring the ARM toolchain
* ESP32 requiring the

MicroPython aims to be as compatible with normal Python, as much as possible,
and move code easily from the desktop to a microcontroller or embedded system.

Adafruit has embraced MicroPython, extended it, and calls their version [CircuitPython][04].
So CircuitPython is a derivative of MicroPython,
but Adafruit's objective is to simplify things for the novice
so they changes a few things to make the language easier to learn and use.
Adafruit has also created its own MicroPython/CircuitPython compatible hardware.
The video's below help explain the differences
and Adafruit's [documentation][06] go into the details:

* [CircuitPython vs MicroPython: Key Differences][05]
* [Time to Say Goodbye to Arduino and Go On to Micropython/ Adafruit Circuitpython?][07]

>**NOTE:** Maybe the single most important difference might be
>Adafruit/CircuitPython's support of SAMD microcontroller chip's on their boards.
>This chip give you native USB connectivity,
>so a serial connection to the board will give you access to a filesystem
>with all the Python code on the chip.
> This code is preserved between reboots,
>eliminating accidental loss of your code while developing.

My interest and hope is that MicroPython will give me ‘speed’
i.e. get something up and running beyond the embedded ‘hello world’ example.
While MicroPython, like Python, is an interpreted, high-level,
general-purpose programming language (resulting in slower execution),
it is very expressive and comes with loads of libraries so you can create quickly.

In addition, microcontroller programming involves at least 5 steps

1. **Write** your code, generally in some form of C using an IDE (Arduino etc.)
2. **Compile** your code for the specific microcontroller architecture
(with a specific tool-chain for a given architectures — AVR, Xtensa, ARM etc.)
3. **Flash** your code to the board with some USB-to-serial adapter.
4. **Debug** your code with an IDE and a lot of serial log/print statements.
5. **Repeat**

With MicroPython, the expectation is to strike out 2.5 of the 5.
The extra 0.5 from taking advantage of the large set of library.

# SAMD Chip
* [Drag And Drop Files On Select Arduino Boards ](https://hackaday.com/2019/05/29/drag-and-drop-files-on-select-arduino-boards/)

# Read-Eval-Print-Loop (REPL)
A [read–eval–print loop (REPL)][09],
also termed an interactive computer programming environment,
takes in a single user inputs (i.e., single expressions),
evaluates them, and returns the result to the user.
Classic examples of programming envirments that use REPL are
Lisp machines, PDP-11 Basic, and the Unix/Linux Shell.

* [WebREPL client for MicroPython](https://github.com/micropython/webrepl)

# Tools

## Adafruit MicroPython Tool (ampy)
[`ampy`][08] is a utility, created by Adafruit,
to interact with a CircuitPython or MicroPython board over a serial connection.

 With ampy you can send files from your computer to the board's file system,
 download files from a board to your computer,
 and send a Python script to a board to be executed.

>**Note:** `ampy` by design is meant to be simple and does not support advanced interaction.
>If you want to use `shell` or a terminal to send input to a board,
>check out MicroPython tools like `rshell` or `mpfshell` for more advanced interaction with boards.

Judging from the Adafruit documentation on `ampy`,
they appear to be backing away from supporting only on xxxxxxxxx

## rshell

## mpfshell

## GUI Tools
* [LittlevGL Brings GUI Tools to Micropython](https://hackaday.com/2019/02/28/littlevgl-brings-gui-tools-to-micropython/)
* [LittlevGL: Open-source Embedded GUI Library](https://littlevgl.com/)
* [LittlevGL's Blog](https://blog.littlevgl.com/)

## Pytype
[`pytype`](https://google.github.io/pytype/)
is a static type analyzer for Python code.
* [How to quickly find type-issues in your Python code with Pytype](https://medium.freecodecamp.org/how-to-quickly-find-type-issues-in-your-python-code-with-pytype-c022782f61c3)





# ESP32 + MicroPython
I want to set up and program an ESP32 device running MicroPython.

What you'll need:

* **Serial Terminal** - such at `screen` or `miniterm` (via `python3 -m serial.tools.miniterm`).
* **Python v3.6.x** For extra libraries need by the microcontroller,
clone the micropython/micropython-lib (git clone https://github.com/micropython/micropython-lib)
For extra libraries, a clone or archive of micropython/micropython-lib (git clone https://github.com/micropython/micropython-lib)
* **esptool (version 2.2 or newer)** to flash the board
* **adafruit-ampy** - to manage files on the board

* [Micropython — just works!](https://medium.com/@nihal.pasham/micropython-just-works-4e8979e7d7a6)
* [Get on the Good Foot with MicroPython on the ESP32](https://hackernoon.com/get-on-the-good-foot-with-micropython-on-the-esp32-decdd32c4720)
* [Get on the Good Foot with MicroPython on the ESP32, Part 1 of 2](https://boneskull.com/micropython-on-esp32-part-1/)
* [Get on the Good Foot with MicroPython on the ESP32, Part 2 of 2](https://boneskull.com/micropython-on-esp32-part-2/)
* [Programming an ESP using Jupyter Notebook](https://lemariva.com/blog/2019/01/micropython-programming-an-esp-using-jupyter-notebook)
* [MicroPython on ESP Using Jupyter Notebook](https://towardsdatascience.com/micropython-on-esp-using-jupyter-6f366ff5ed9)
* [Micropython on ESP Using Jupyter](https://www.instructables.com/id/Micropython-on-ESP-Using-Jupyter/)
* [Jupyter MicroPython Kernel](https://github.com/goatchurchprime/jupyter_micropython_kernel)





----


# Pre-Built MicroPython Firmware
MicroPython source code is available on [Github][17],
so we could built the firmware from source,
but there’s also a [pre-built binary which you can download on MicroPython website][17]
([source][21]):

* [MicroPython ESP8266 Firmware][18]
* [MicroPython ESP32 Firmware][19]


Check thsi out for how to install - Playing with MicroPython on the ESP - https://hackaday.io/project/165390-playing-with-micropython-on-the-esp

### Step X: Download MicroPython Firmware
Notice there are many firmware packages for ESP8266 and ESP32 boards.
You'll find for ESP32 separate firmware for boards with and without external SPIRAM.
Non-SPIRAM firmware will work on any board,
whereas SPIRAM enabled firmware will only work on boards with 4MiB of external pSRAM.
In my case, I'm using the standard firmware:

```bash
# get the standard (non-spiram) esp32 firmware: stable and lastest builds
cd ~/Downloads
wget https://micropython.org/resources/firmware/esp32-20190125-v1.10.bin   # stable build
wget https://micropython.org/resources/firmware/esp32-20190214-v1.10-98-g4daee3170.bin   # lastest build
```

### Step X: Install Your Tools
#### esptool.py
Install the latest version of `esptool.py`:

```bash
# install the latest version of esptool.py
sudo apt install python-pip
sudo pip install --upgrade pip
sudo pip install esptool --upgrade
```

#### ampy
https://learn.adafruit.com/sino-bit-micropython/running-code-with-ampy


* [ESP32 MicroPython Tutorial with Raspberry Pi](https://www.youtube.com/watch?v=w15-EQASP_Y)
* [ESP32 / ESP8266 MicroPython: Running scripts from a computer](https://techtutorialsx.com/2017/06/03/esp32-esp8266-micropython-running-scripts-from-a-computer/)

#### Jupyter
* [Programming an ESP using Jupyter Notebook](https://lemariva.com/blog/2019/01/micropython-programming-an-esp-using-jupyter-notebook)
* [MicroPython on ESP Using Jupyter Notebook](https://towardsdatascience.com/micropython-on-esp-using-jupyter-6f366ff5ed9)
* [Micropython on ESP Using Jupyter](https://www.instructables.com/id/Micropython-on-ESP-Using-Jupyter/)
* [A Jupyter based Micropython tutorial](https://github.com/hoihu/projects/blob/master/uPy/jupyter/uPy-tutorial1.ipynb)
* [Jupyter MicroPython Kernel](https://github.com/goatchurchprime/jupyter_micropython_kernel)
* [MicroPython Jupyter notebook kernel with Tony D! @micropython @ProjectJupyter](https://www.youtube.com/watch?v=UFc0pR2ehiw&feature=youtu.be)

 jupyter worksheet that explains things (how to install jupyter and the mpy-repl-tool package) and shows how to turn on a LED resp. the example disco flash effect from the official tutorials: https://github.com/hoihu/projects/blob/master/uPy/jupyter/uPy-tutorial1.ipynb

mpy-repl-tool is a package available on pypi with micropython tools
* [Welcome to mpy-REPL-Tool’s documentation!](https://mpy-repl-tool.readthedocs.io/en/latest/)

### Step X: Flash Firmware
Now connect your Linux box with your ESP32.
For most ESP32 boards, the ESP32 board will be give device `/dev/ttyUSB0`.
You program your esp32 board using the [`esptool.py` program][20].
If you are putting MicroPython on your board for the first time,
then you should first erase the entire flash using:

```bash
# full path
./esp-idf/components/esptool_py/esptool/esptool.py
# erease the entire flash
esptool.py --chip esp32 --port /dev/ttyUSB0 erase_flash

# flash the firmware starting at address 0x1000
esptool.py --chip esp32 --port /dev/ttyUSB0 --baud 460800 write_flash -z 0x1000 ~/Downloads/esp32-20190125-v1.10.bin
```

If the last step is successful, the output should be similar to the one below:

```bash
# erease the entire flash
$ python ~/.arduino15/packages/esp32/hardware/esp32/1.0.0/tools/esptool.py --chip esp32 --port /dev/ttyUSB0 erase_flash
esptool.py v2.3.1
Connecting........_
Chip is ESP32D0WDQ6 (revision 1)
Features: WiFi, BT, Dual Core
Uploading stub...
Running stub...
Stub running...
Erasing flash (this may take a while)...
Chip erase completed successfully in 2.9s
Hard resetting via RTS pin...

# flash the firmware starting at address 0x1000
$ python ~/.arduino15/packages/esp32/hardware/esp32/1.0.0/tools/esptool.py --chip esp32 --port /dev/ttyUSB0 --baud 460800 write_flash -z 0x1000 ~/Downloads/esp32-20190125-v1.10.bin
esptool.py v2.3.1
Connecting.....
Chip is ESP32D0WDQ6 (revision 1)
Features: WiFi, BT, Dual Core
Uploading stub...
Running stub...
Stub running...
Changing baud rate to 460800
Changed.
Configuring flash size...
Auto-detected Flash size: 4MB
Compressed 1087456 bytes to 687409...
Wrote 1087456 bytes (687409 compressed) at 0x00001000 in 15.7 seconds (effective 555.0 kbit/s)...
Hash of data verified.

Leaving...
Hard resetting via RTS pin...
```

### Step X: Test Your Firmware Install
Now make a terminal connection to the device
and enter the command `help()`:

```bash
>>> help()
Welcome to MicroPython on the ESP32!

For generic online docs please visit http://docs.micropython.org/

For access to the hardware use the 'machine' module:

import machine
pin12 = machine.Pin(12, machine.Pin.OUT)
pin12.value(1)
pin13 = machine.Pin(13, machine.Pin.IN, machine.Pin.PULL_UP)
print(pin13.value())
i2c = machine.I2C(scl=machine.Pin(21), sda=machine.Pin(22))
i2c.scan()
i2c.writeto(addr, b'1234')
i2c.readfrom(addr, 4)

Basic WiFi configuration:

import network
sta_if = network.WLAN(network.STA_IF); sta_if.active(True)
sta_if.scan()                             # Scan for available access points
sta_if.connect("<AP_name>", "<password>") # Connect to an AP
sta_if.isconnected()                      # Check for successful connection

Control commands:
  CTRL-A        -- on a blank line, enter raw REPL mode
  CTRL-B        -- on a blank line, enter normal REPL mode
  CTRL-C        -- interrupt a running program
  CTRL-D        -- on a blank line, do a soft reset of the board
  CTRL-E        -- on a blank line, enter paste mode

For further help on a specific object, type help(obj)
For a list of available modules, type help('modules')
>>>
>>> help('modules')
__main__          framebuf          socket            upip
_boot             gc                ssl               upip_utarfile
_onewire          hashlib           struct            upysh
_thread           heapq             sys               urandom
_webrepl          inisetup          time              ure
apa106            io                ubinascii         urequests
array             json              ucollections      uselect
binascii          machine           ucryptolib        usocket
btree             math              uctypes           ussl
builtins          micropython       uerrno            ustruct
cmath             neopixel          uhashlib          utime
collections       network           uhashlib          utimeq
dht               ntptime           uheapq            uzlib
ds18x20           onewire           uio               webrepl
errno             os                ujson             webrepl_setup
esp               random            umqtt/robust      websocket
esp32             re                umqtt/simple      websocket_helper
flashbdev         select            uos               zlib
Plus any modules on the filesystem
>>>
```





----

# Using MicroPython
* [MicroPython Usage](https://learn.adafruit.com/building-and-running-micropython-on-the-esp8266/micropython-usage)
* [Programming an ESP using Jupyter Notebook](https://lemariva.com/blog/2019/01/micropython-programming-an-esp-using-jupyter-notebook)
* [MicroPython on ESP Using Jupyter Notebook](https://towardsdatascience.com/micropython-on-esp-using-jupyter-6f366ff5ed9)
* [Micropython on ESP Using Jupyter](https://www.instructables.com/id/Micropython-on-ESP-Using-Jupyter/)
* [A Jupyter based Micropython tutorial](https://github.com/hoihu/projects/blob/master/uPy/jupyter/uPy-tutorial1.ipynb)
* [Jupyter MicroPython Kernel](https://github.com/goatchurchprime/jupyter_micropython_kernel)
* [MicroPython Jupyter notebook kernel with Tony D! @micropython @ProjectJupyter](https://www.youtube.com/watch?v=UFc0pR2ehiw&feature=youtu.be)

# Getting a Python Prompt
You can get a prompt via the serial port, via UART0, which is the same UART that is used for programming the firmware. The baudrate for the REPL is 115200 and you can use a command such as:

$ picocom -b 115200 /dev/ttyUSB0

# Configuring the WiFi and using the board
The ESP32 port is designed to be (almost) equivalent to the ESP8266 in terms of the modules and user-facing API. There are some small differences, notably that the ESP32 does not automatically connect to the last access point when booting up. But for the most part the documentation and tutorials for the ESP8266 should apply to the ESP32 (at least for the components that are implemented).

See http://docs.micropython.org/en/latest/esp8266/esp8266/quickref.html for a quick reference, and http://docs.micropython.org/en/latest/esp8266/esp8266/tutorial/intro.html for a tutorial.

The following function can be used to connect to a WiFi access point (you can either pass in your own SSID and password, or change the defaults so you can quickly call wlan_connect() and it just works):

def wlan_connect(ssid='MYSSID', password='MYPASS'):
    import network
    wlan = network.WLAN(network.STA_IF)
    if not wlan.active() or not wlan.isconnected():
        wlan.active(True)
        print('connecting to:', ssid)
        wlan.connect(ssid, password)
        while not wlan.isconnected():
            pass
    print('network config:', wlan.ifconfig())
Note that some boards require you to configure the WiFi antenna before using the WiFi. On Pycom boards like the LoPy and WiPy 2.0 you need to execute the following code to select the internal antenna (best to put this line in your boot.py file):

import machine
antenna = machine.Pin(16, machine.Pin.OUT, value=0)




# Examples
* [Getting Started with MicroPython on ESP32 – Hello World, GPIO, and WiFi](https://www.cnx-software.com/2017/10/16/esp32-micropython-tutorials/)
* [Micro Python on ESP32 (HUZZAH32)](https://wolfpaulus.com/embedded/micro-python-esp32/)
* [MicroPython Programming Tutorial: Getting Started with the ESP32 Thing](https://learn.sparkfun.com/tutorials/micropython-programming-tutorial-getting-started-with-the-esp32-thing/all)
* [MicroPython on an ESP32 Board With Integrated SSD1306 OLED Display (WEMOS/Lolin)](https://www.instructables.com/id/MicroPython-on-an-ESP32-Board-With-Integrated-SSD1/)
* [MicroPython — OTA Updates and GitHub, a match made in heaven](https://medium.com/@ronald.dehuysser/micropython-ota-updates-and-github-a-match-made-in-heaven-45fde670d4eb)


### Step X: Load MicroPython on a Microcontroller
* [How to Load MicroPython on a Microcontroller Board](https://learn.sparkfun.com/tutorials/how-to-load-micropython-on-a-microcontroller-board/esp32-thing)

### Step X: Install ampy
https://learn.adafruit.com/micropython-basics-load-files-and-run-code/install-ampy

```bash
sudo pip3 install adafruit-ampy

ampy --help
```

To upgrade your `ampy`, do the following: `sudo pip3 install adafruit-ampy --upgrade`.


### Step X: Loading MicroPython Firmware
[MicroPython][01]
[What is MicroPython][02]
https://learn.adafruit.com/micropython-basics-how-to-load-micropython-on-a-board/overview






# Build Your Own Custom MicroPython Firmware
* [Building and Running MicroPython on the ESP8266]()https://learn.adafruit.com/building-and-running-micropython-on-the-esp8266/overview
* [Build Your Own Custom MicroPython Firmware for the ESP8266 on Windows](https://www.youtube.com/watch?v=jG7WBY_vmpE)

>_Got it to work for ESP8266 but problem within MicroPython for ESP32 build._

# ESP-IDF
Espressif IoT Development Framework (ESP-IDF)
[Getting Started With ESP32 ESP-IDF (Part 1)](http://iot-bits.com/esp32/getting-started-with-esp32-esp-idf-part-1/)
[Getting Started With ESP32 ESP-IDF (Part 2)](http://iot-bits.com/esp32/getting-started-with-esp32-esp-idf-part-2/)
[Getting Started With ESP32 ESP-IDF (Part 3)](http://iot-bits.com/esp32/getting-started-with-esp32-esp-idf-part-3/)


## Toolchain Setup
To setup my toolchain,
I generally followed [Adafruit's methodology][10] (here is a [video][11] of this methodology).

### Step X: Connect a USB Device Through Vagrant
* [How to set up USB for Virtualbox?](https://askubuntu.com/questions/25596/how-to-set-up-usb-for-virtualbox)
* [Connect a Usb device through Vagrant](http://code-chronicle.blogspot.com/2014/08/connect-usb-device-through-vagrant.html)

To grant access by Vagrant (aka guest VM) to a USB device,
we need to disable the device in the host
and to enable in the guest (this is a precaution to avoid simultaneous access from host and guest).
So your enabling device within Vagrant, not USB ports.
Generally, this can be done within the Vagrantfile
by enable the usb option and adding a filter
based on the desired manufacturer and product IDs.

First, lets get the manufacturer and product IDs of are target device:

```bash
# without the device plugged into the usb port
lsusb > ~/tmp/junk1

# with the device plugged into the usb port
lsusb > ~/tmp/junk2

# differance will give you the device information
$ diff ~/tmp/junk1 ~/tmp/junk2
20a21
> Bus 003 Device 072: ID 10c4:ea60 Cygnal Integrated Products, Inc. CP210x UART Bridge / myAVR mySmartUSB light
```

The `10c4:ea60` is the desired `manufacture:product` ID information.
This must go into the Vagrantfile like this:

```
 # ------------------------ virtualbox VM configuration -----------------------
 config.vm.provider "virtualbox" do |vb|
   .
   .
   vb.customize ["modifyvm", :id, "--usb", "on"]   # enable USB
   vb.customize ['usbfilter', 'add', '0',
       '--target', :id,
       '--name', 'ESP32',
       '--vendorid', '0x10c4',
       '--productid', '0xea60']
   .
   .
 end
```

With this code block in your Vagrantfile,
do a `vagrant up`, `vagrant ssh`,
and check to if the device is visible to your VM with the following:

```bash
# check if the device is on the VM's usb list
$ lsusb
Bus 001 Device 002: ID 10c4:ea60 Cygnal Integrated Products, Inc. CP210x UART Bridge / myAVR mySmartUSB light
Bus 001 Device 001: ID 1d6b:0001 Linux Foundation 1.1 root hub
```

So you can no access this device via `/dev/bus/usb/001/002`.

>**NOTE:** You will only see the USB ports within VirtualBox / Vagrant if you have
>if you have previously installed the [VirtualBox Extension Pack][22].


### Step X: Setup Vagrant Environment
[Vagrant][13] is a tool that offers a simple and easy to use
command-line client for managing virtual environments.
I'm using it because it made it easier for me to
stand-up new software solutions for testing without disrupting my working system.
Vagrant has an easy-to-use workflow, makes automation easy, and lowers development environment setup time.
Machines are provisioned on top of VirtualBox, VMware, AWS, or any other provider.
Then, industry-standard provisioning tools such as
shell scripts, Chef, or Puppet, can automatically install
and configure software on the virtual machine.

To get my Vagrant environment up and running,
I started by examining the [Open-EIO `Vagrantfile`][14] and [Adafruit `Vagrantfile`][12].
In included things from Espressif's ["Setup Toolchain" documentation][15]
and this [video][16].
I did some additional modifications and what resulted is listed below:

```ruby
```

The Vagrant provisioning will take a bit of time,
at least 60 minutes on my machine.

### Step X: Verify Toolchain and ESP-IDF Install

```bash
# check if the esp32 toolchain was properly installed
$ xtensa-esp32-elf-gcc -v
Using built-in specs.
COLLECT_GCC=xtensa-esp32-elf-gcc
COLLECT_LTO_WRAPPER=/home/vagrant/xtensa-esp32-elf/bin/../libexec/gcc/xtensa-esp32-elf/5.2.0/lto-wrapper
Target: xtensa-esp32-elf
Configured with: /home/ivan/e/crosstool-NG/.build/src/gcc-5.2.0/configure --build=x86_64-build_pc-linux-gnu --host=x86_64-build_pc-linux-gnu --target=xtensa-esp32-elf --prefix=/home/ivan/e/crosstool-NG/builds/xtensa-esp32-elf --with-local-prefix=/home/ivan/e/crosstool-NG/builds/xtensa-esp32-elf/xtensa-esp32-elf/sysroot --with-sysroot=/home/ivan/e/crosstool-NG/builds/xtensa-esp32-elf/xtensa-esp32-elf/sysroot --with-newlib --enable-threads=no --disable-shared --with-pkgversion='crosstool-NG crosstool-ng-1.22.0-61-gab8375a' --disable-__cxa_atexit --enable-cxx-flags='-fno-exceptions -fno-rtti' --with-gmp=/home/ivan/e/crosstool-NG/.build/xtensa-esp32-elf/buildtools --with-mpfr=/home/ivan/e/crosstool-NG/.build/xtensa-esp32-elf/buildtools --with-mpc=/home/ivan/e/crosstool-NG/.build/xtensa-esp32-elf/buildtools --with-isl=/home/ivan/e/crosstool-NG/.build/xtensa-esp32-elf/buildtools --with-cloog=/home/ivan/e/crosstool-NG/.build/xtensa-esp32-elf/buildtools --with-libelf=/home/ivan/e/crosstool-NG/.build/xtensa-esp32-elf/buildtools --enable-lto --enable-target-optspace --without-long-double-128 --disable-libgomp --disable-libmudflap --disable-libssp --disable-libquadmath --disable-libquadmath-support --disable-nls --disable-multilib --enable-languages=c,c++ --disable-libstdcxx-verbose
Thread model: single
gcc version 5.2.0 (crosstool-NG crosstool-ng-1.22.0-61-gab8375a)

# check if the esp8266 toolchain was properly installed
```

If you get a response like "xtensa-esp32-elf-gcc: Command not found",
Then you have probably missed a step or done something wrong.

https://docs.espressif.com/projects/esp-idf/en/latest/get-started/index.html#start-a-project

```bash
# check esp-idf
mkdir ~/tmp
cd ~/tmp
cp -r $IDF_PATH/examples/get-started/hello_world .
```

#### Updating Toolchain and ESP-IDF
If may want to update the ESP-IDF to take advantage of new features or bug fixes.
Espressif recommends you delete the existing `~/esp/esp-idf` folder and cloning it again,
exactly as when doing initial installation.

### Step X: Verify MicroPython
```bash
# build it for your linux box
cd ~/micropython/ports/unix
make

# now try it out on your linux box
$ ./micropython
MicroPython v1.10-104-g7ef9482 on 2019-02-17; linux version
Use Ctrl-D to exit, Ctrl-E for paste mode
>>> list(5 * x + y for x in range(10) for y in [4, 2, 1])
[4, 2, 1, 9, 7, 6, 14, 12, 11, 19, 17, 16, 24, 22, 21, 29, 27, 26, 34, 32, 31, 39, 37, 36, 44, 42, 41, 49, 47, 46]
>>>
$

# run complete test suite
make test
```





[01]:https://www.micropython.org/
[02]:http://www.arm.com/
[03]:https://store.micropython.org/
[04]:https://learn.adafruit.com/welcome-to-circuitpython/what-is-circuitpython
[05]:https://core-electronics.com.au/tutorials/circuitpython-vs-micropython-differences.html
[06]:https://circuitpython.readthedocs.io/en/2.x/#differences-from-micropython
[07]:https://www.youtube.com/watch?v=m1miwCJtxeM
[08]:https://learn.adafruit.com/sino-bit-micropython/running-code-with-ampy
[09]:https://en.wikipedia.org/wiki/Read%E2%80%93eval%E2%80%93print_loop
[10]:https://learn.adafruit.com/building-and-running-micropython-on-the-esp8266/build-firmware
[11]:https://www.youtube.com/watch?v=qa2406iiSbI
[12]:https://github.com/adafruit/esp8266-micropython-vagrant/blob/master/Vagrantfile
[13]:https://www.vagrantup.com/
[14]:https://github.com/open-eio/esp32-micropython-vagrant/blob/master/Vagrantfile
[15]:https://docs.espressif.com/projects/esp-idf/en/latest/get-started/index.html#setup-toolchain
[16]:https://www.youtube.com/watch?v=jG7WBY_vmpE
[17]:https://github.com/micropython/micropython
[18]:https://micropython.org/download/#esp8266
[19]:https://micropython.org/download/#esp32
[20]:https://github.com/espressif/esptool
[21]:https://www.cnx-software.com/2017/10/16/esp32-micropython-tutorials/
[22]:https://www.virtualbox.org/wiki/Downloads
[23]:https://www.youtube.com/watch?v=5LbgyDmRu9s&feature=youtu.be
[24]:
[25]:
[26]:
[27]:
[28]:
[29]:
[30]:



