
* [OpenMV Cam H7 - Machine Vision w/ MicroPython](https://www.kickstarter.com/projects/1798207217/openmv-cam-h7-machine-vision-w-micropython)
* [OpenMV H7 Product Line](https://www.youtube.com/watch?v=E6SCejAeDSs)
* [MicroPython class for OV2640 Camera](https://github.com/namato/micropython-ov2640)

* [MicroPython Unveils New Pyboard D Series Board with STM32F7xx MCU](https://blog.hackster.io/micropython-unveils-new-pyboard-d-series-board-with-stm32f7xx-mcu-a7721bc09877)

* [Micropython and C Play Together Better](https://hackaday.com/2019/08/31/micropython-and-c-play-together-better/)

* [Simple Neural Network on MCUs](https://blog.hackster.io/simple-neural-network-on-mcus-a7cbd3dc108c)

* [Adafruit’s Feather nRF52840 Express Board and Developing with CircuitPython](https://blog.nordicsemi.com/getconnected/adafruits-feather-nrf52840-express-board-and-developing-with-circuitpython)

* [Micropython On Microcontrollers](https://hackaday.com/2020/11/14/micropython-on-microcontrollers/)
* [Raspberry Pi Pico vs ESPR32: Intro to Microcontrollers with MicroPython](https://www.techtimes.com/articles/256277/20210124/raspberry-pi-pico-vs-espr32-intro-microcontrollers-micropython.htm)







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
5. **Repeat**by going back to step 1.

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

## Jupyter MicroPython Kernel
The Jupyter Notebook community have created a kernel to interact
with a MicroPython ESP8266 or ESP32 over its serial REPL.





------




# MicroPython on the ESP32
To use MicroPython with the ESP8266 or ESP32,
you'll need to first flash it with the latest MicroPython firmware.
MicroPython firmware source code is available on [Github][17],
so we could built the firmware from source,
but it is best to use the pre-built binary which you can download via MicroPython website below:

* [MicroPython ESP8266 Firmware](https://micropython.org/download/esp8266)
* [Quick reference for the ESP8266](https://docs.micropython.org/en/latest/esp8266/quickref.html)
* [MicroPython tutorial for ESP8266](https://docs.micropython.org/en/latest/esp8266/tutorial/index.html)

* [MicroPython ESP32 Firmware](https://micropython.org/download/esp32)
* [Quick reference for the ESP32](https://docs.micropython.org/en/latest/esp32/quickref.html)
* [Getting started with MicroPython on the ESP32](https://docs.micropython.org/en/latest/esp32/tutorial/intro.html)

There is a multitude of modules and boards from different sources which carry the ESP32 chip.
I'm going to focus on the ESP32 board, specifically the ESP-32S (aka ESP-WROOM-32).
MicroPython tries to provide a generic port which would run on as many boards/modules as possible,
but there may be limitations.
To make a generic ESP32 port and support as many boards as possible,
the following design and implementation decision were made:

* GPIO pin numbering is based on ESP32 chip numbering.
Have the manual/pin diagram of your board at hand to find correspondence between your board pins and actual ESP32 pins.
* All pins are supported by MicroPython but not all are usable on any given board.
For example pins that are connected to external SPI flash should not be used,
and a board may only expose a certain selection of pins.

# ESP32 + MicroPython
I want to set up and program an ESP32 device running MicroPython.

What you'll need:

* **Serial Terminal** - such at `screen` or `miniterm` (via `python3 -m serial.tools.miniterm`).
* **Python v3.6.x** For extra libraries need by the microcontroller,
clone the micropython/micropython-lib (git clone https://github.com/micropython/micropython-lib)
For extra libraries, a clone or archive of micropython/micropython-lib (git clone https://github.com/micropython/micropython-lib)
* **esptool (version 2.2 or newer)** to flash the board
* **adafruit-ampy** - to manage files on the board

### Step 1: Download MicroPython Firmware - DONE
For any given ESP board, there is only one firmware package to download
but there are many types to choose from.

Check out the following for details:

* [Firmware for Generic ESP32 module](https://micropython.org/download/esp32/)

Note there is firmware for boards with and without external SPIRAM.
Non-SPIRAM firmware will work on any board,
whereas SPIRAM enabled firmware will only work on boards with 4MiB of external pSRAM.
In my case, I'm using the standard & non-spiram firmware.

```bash
# make a directory for store firmware bin files
mkdir ~/Downloads/micropython
cd ~/Downloads/micropython

# get the esp32 firmware: stable and lastest builds
wget https://micropython.org/resources/firmware/esp32-20210418-v1.15.bin   # stable build
wget https://micropython.org/resources/firmware/esp32-20210610-unstable-v1.15-201-g8c02b9494.bin   # latest build
```

### Step 2: Install Your `esptool.py` - DONE
Firmware flashing on the ESP32 (and for ESP8266) board is done using the `esptool.py` program.
To install the latest version of `esptool.py`:

```bash
# install the latest version of esptool.py
sudo apt install python-pip
sudo pip install --upgrade pip
sudo pip install esptool --upgrade
```
In my case, I choose to use my existing version of `esptool.py`
I have been using for all my C++ based coding for the ESP processors.
That version is found here:
`/home/jeff/.arduino15/packages/esp32/tools/esptool_py/2.6.1/esptool.py`.

### Step 2A: Install Utility to Manipulate Files via USB - DONE
The MicroPython tool [`ampy`][08] is a simple command line tool to manipulate files
and run code on a CircuitPython or MicroPython board over its serial connection.
With `ampy` you can send files from your computer to the board's file system,
download files from a board to your computer,
and send a Python script to a board to be executed.

You can use `ampy` with either Python 2.7.x or 3.x:

```bash
# install ampy
pip install adafruit-ampy        # install ampy under python 2.7.x
pip3 install adafruit-ampy       # install ampy under python 3.x
```

Now lets see what `ampy` can do for us

```bash
# list ampy help
$ ampy --help
Usage: ampy [OPTIONS] COMMAND [ARGS]...

  ampy - Adafruit MicroPython Tool

  Ampy is a tool to control MicroPython boards over a serial connection.
  Using ampy you can manipulate files on the boards internal filesystem and
  even run scripts.

Options:
  -p, --port PORT    Name of serial port for connected board.  Can optionally
                     specify with AMPY_PORT environment variable.  [required]
  -b, --baud BAUD    Baud rate for the serial connection (default 115200).
                     Can optionally specify with AMPY_BAUD environment
                     variable.
  -d, --delay DELAY  Delay in seconds before entering RAW MODE (default 0).
                     Can optionally specify with AMPY_DELAY environment
                     variable.
  --version          Show the version and exit.
  --help             Show this message and exit.

Commands:
  get    Retrieve a file from the board.
  ls     List contents of a directory on the board.
  mkdir  Create a directory on the board.
  put    Put a file or folder and its contents on the board.
  reset  Perform soft reset/reboot of the board.
  rm     Remove a file from the board.
  rmdir  Forcefully remove a folder and all its children from the board.
  run    Run a script and print its output.
```

Each subcommand has its own help, for example to see help for the `ls` command run:

```bash
# help for ampy subcommand ls
$ ampy --port /dev/ttyUSB0 ls --help
Usage: ampy ls [OPTIONS] [DIRECTORY]

  List contents of a directory on the board.

  Can pass an optional argument which is the path to the directory.  The
  default is to list the contents of the root, /, path.

  For example to list the contents of the root run:

    ampy --port /board/serial/port ls

  Or to list the contents of the /foo/bar directory on the board run:

    ampy --port /board/serial/port ls /foo/bar

  Add the -l or --long_format flag to print the size of files (however note
  MicroPython does not calculate the size of folders and will show 0 bytes):

    ampy --port /board/serial/port ls -l /foo/bar

Options:
  -l, --long_format  Print long format info including size of files.  Note the
                     size of directories is not supported and will show 0
                     values.
  -r, --recursive    recursively list all files and (empty) directories.
  --help             Show this message and exit.

# help for ampy subcommand run
$ ampy --port /dev/ttyUSB0 run --help
Usage: ampy run [OPTIONS] LOCAL_FILE

  Run a script and print its output.

  Run will send the specified file to the board and execute it immediately.
  Any output from the board will be printed to the console (note that this
  is not a shell and you cannot send input to the program).

  Note that if your code has a main or infinite loop you should add the
  --no-output option.  This will run the script and immediately exit without
  waiting for the script to finish and print output.

  For example to run a test.py script and print any output until it
  finishes:

    ampy --port /board/serial/port run test.py

  Or to run test.py and not wait for it to finish:

    ampy --port /board/serial/port run --no-output test.py

Options:
  -n, --no-output  Run the code without waiting for it to finish and print
                   output.  Use this when running code with main loops that
                   never return.
  --help           Show this message and exit.
```

### Step2B: rshell and mpfshell
`ampy` isn't enough for you, check out other MicroPython tools like `rshell` or `mpfshell`
for more advanced interaction with boards.

### Step 3: Flash Firmware - DONE
Now connect your Linux box with your ESP32.
For most ESP32 boards, the ESP32 board will be give device `/dev/ttyUSB0`.
You program your esp32 board using the [`esptool.py` program][20].
If you are putting MicroPython on your board for the first time,
then you should first erase the entire flash using:

```bash
# erease the entire flash on the esp32
/home/jeff/.arduino15/packages/esp32/tools/esptool_py/2.6.1/esptool.py --chip esp32 --port /dev/ttyUSB0 erase_flash

# flash the firmware starting at address 0x1000
/home/jeff/.arduino15/packages/esp32/tools/esptool_py/2.6.1/esptool.py --chip esp32 --port /dev/ttyUSB0 --baud 460800 write_flash -z 0x1000 ~/Downloads/micropython/esp32-20210418-v1.15.bin
```

If these two step are successful, the output should be similar to below:

```bash
# erease the entire flash
$ /home/jeff/.arduino15/packages/esp32/tools/esptool_py/2.6.1/esptool.py --chip esp32 --port /dev/ttyUSB0 erase_flash
esptool.py v2.6
Serial port /dev/ttyUSB0
Connecting........_
Chip is ESP32D0WDQ6 (revision 1)
Features: WiFi, BT, Dual Core, Coding Scheme None
MAC: 30:ae:a4:0e:8a:6c
Uploading stub...
Running stub...
Stub running...
Erasing flash (this may take a while)...
Chip erase completed successfully in 5.8s
Hard resetting via RTS pin...

# flash the firmware starting at address 0x1000
$ /home/jeff/.arduino15/packages/esp32/tools/esptool_py/2.6.1/esptool.py --chip esp32 --port /dev/ttyUSB0 --baud 460800 write_flash -z 0x1000 ~/Downloads/micropython/esp32-20210418-v1.15.bin
esptool.py v2.6
Serial port /dev/ttyUSB0
Connecting......
Chip is ESP32D0WDQ6 (revision 1)
Features: WiFi, BT, Dual Core, Coding Scheme None
MAC: 30:ae:a4:0e:8a:6c
Uploading stub...
Running stub...
Stub running...
Changing baud rate to 460800
Changed.
Configuring flash size...
Auto-detected Flash size: 4MB
Compressed 1469216 bytes to 953244...
Wrote 1469216 bytes (953244 compressed) at 0x00001000 in 21.8 seconds (effective 538.2 kbit/s)...
Hash of data verified.

Leaving...
Hard resetting via RTS pin...
```

### Step 4: Test Your Firmware Install - DONE
Once you have the firmware installed,
you can access the REPL (Python prompt) over the ESP32 USB connection (or over UART0 depending on your board)
via a serial terminal.
The default baudrate is 115200.

Now make a terminal connection to the the ESP32 and use the `help()`
command to validate the firmware is working:

```bash
# serial terminal to the esp32
screen /dev/ttyUSB0 115200,cs8cls

# test out the python REPL
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

# list of available modules
>>> help('modules')
__main__          framebuf          uasyncio/lock     urandom
_boot             gc                uasyncio/stream   ure
_onewire          inisetup          ubinascii         uselect
_thread           machine           ubluetooth        usocket
_uasyncio         math              ucollections      ussl
_webrepl          micropython       ucryptolib        ustruct
apa106            neopixel          uctypes           usys
btree             network           uerrno            utime
builtins          ntptime           uhashlib          utimeq
cmath             onewire           uheapq            uwebsocket
dht               uarray            uio               uzlib
ds18x20           uasyncio/__init__ ujson             webrepl
esp               uasyncio/core     uos               webrepl_setup
esp32             uasyncio/event    upip              websocket_helper
flashbdev         uasyncio/funcs    upip_utarfile
Plus any modules on the filesystem
>>>
```



------




# Some Examples

### Step X: Some Examples
source [here][21]
Check this out for how to install - Playing with MicroPython on the ESP - https://hackaday.io/project/165390-playing-with-micropython-on-the-esp

Lets see what files (if any) are on the ESP32 board:

```bash
# list the files on the esp32 recursively and in long format
$ ampy --port /dev/ttyUSB0 ls -r -l
/boot.py - 139 bytes

# lets load a junk file
ls > junk
ampy --port /dev/ttyUSB0 put junk

# now view what files we got
$ ampy --port /dev/ttyUSB0 ls -l
/boot.py - 139 bytes
/junk - 3213 bytes
```

A useful function for connecting to your local WiFi network is:

def do_connect():
    import network
    wlan = network.WLAN(network.STA_IF)
    wlan.active(True)
    if not wlan.isconnected():
        print('connecting to network...')
        wlan.connect('essid', 'password')
        while not wlan.isconnected():
            pass
    print('network config:', wlan.ifconfig())

Once the network is established the socket module can be used to create and use TCP/UDP sockets as usual, and the urequests module for convenient HTTP requests.



### Step X: Install Additional Tools


* [ESP32 MicroPython Tutorial with Raspberry Pi](https://www.youtube.com/watch?v=w15-EQASP_Y)
* [ESP32 / ESP8266 MicroPython: Running scripts from a computer](https://techtutorialsx.com/2017/06/03/esp32-esp8266-micropython-running-scripts-from-a-computer/)

#### Jupyter
* [MicroPython Jupyter notebook kernel with Tony D! @micropython @ProjectJupyter](https://www.youtube.com/watch?v=UFc0pR2ehiw&feature=youtu.be)
* [Micropython on ESP Using Jupyter](https://www.instructables.com/id/Micropython-on-ESP-Using-Jupyter/)
* [Programming an ESP using Jupyter Notebook](https://lemariva.com/blog/2019/01/micropython-programming-an-esp-using-jupyter-notebook)
* [MicroPython on ESP Using Jupyter Notebook](https://towardsdatascience.com/micropython-on-esp-using-jupyter-6f366ff5ed9)
* [Micropython on ESP Using Jupyter](https://www.instructables.com/id/Micropython-on-ESP-Using-Jupyter/)
* [Get on the Good Foot with MicroPython on the ESP32, Part 1 of 2](https://boneskull.com/micropython-on-esp32-part-1/)
* [Get on the Good Foot with MicroPython on the ESP32, Part 2 of 2](https://boneskull.com/micropython-on-esp32-part-2/)
* [A Jupyter based Micropython tutorial](https://github.com/hoihu/projects/blob/master/uPy/jupyter/uPy-tutorial1.ipynb)
* [Jupyter MicroPython Kernel](https://github.com/goatchurchprime/jupyter_micropython_kernel)
* [MicroPython Jupyter notebook kernel with Tony D! @micropython @ProjectJupyter](https://www.youtube.com/watch?v=UFc0pR2ehiw&feature=youtu.be)

 jupyter worksheet that explains things (how to install jupyter and the `mpy-repl-tool` package) and shows how to turn on a LED resp. the example disco flash effect from the official tutorials: https://github.com/hoihu/projects/blob/master/uPy/jupyter/uPy-tutorial1.ipynb

`mpy-repl-tool` is a package available on pypi with micropython tools
* [Welcome to mpy-REPL-Tool’s documentation!](https://mpy-repl-tool.readthedocs.io/en/latest/)




------




# Examples
* [Getting Started with MicroPython](https://python.plainenglish.io/getting-started-with-micropython-c09dd0bbe33c)
* [Getting Started with MicroPython on ESP32 – Hello World, GPIO, and WiFi](https://www.cnx-software.com/2017/10/16/esp32-micropython-tutorials/)
* [Micro Python on ESP32 (HUZZAH32)](https://wolfpaulus.com/embedded/micro-python-esp32/)
* [MicroPython Programming Tutorial: Getting Started with the ESP32 Thing](https://learn.sparkfun.com/tutorials/micropython-programming-tutorial-getting-started-with-the-esp32-thing/all)
* [MicroPython on an ESP32 Board With Integrated SSD1306 OLED Display (WEMOS/Lolin)](https://www.instructables.com/id/MicroPython-on-an-ESP32-Board-With-Integrated-SSD1/)
* [MicroPython — OTA Updates and GitHub, a match made in heaven](https://medium.com/@ronald.dehuysser/micropython-ota-updates-and-github-a-match-made-in-heaven-45fde670d4eb)





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
[17]:
[18]:
[19]:
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



