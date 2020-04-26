
# Arduino On The Command Line
For someone like myself, who is at home with Linux as my OS and Vim as my editor,
using the [Arduino IDE][03] for Arduino coding is a step back into the stone age.
If you are used to doing these things yourself and controlling the organization of your code
then the Arduino IDE does some really arbitrary and annoying things.
For example, try sharing a common file between your sketch and modules (that is, Arduino libraries)
which you may or not use depending on what sketch you are compiling.
The Arduino will compile everything in the directory with the included file.
You have no say in what gets compiled and in what context.

I particulalry wanted command line support with ESP8266 addon for the Arduino IDE,
provided by the ESP8266 community ([lead by Ivan Grokhotkov of Espressif][22]).
Check out the [ESP8266 Arduino GitHub repository][32] for more information.
To see more detailed instructions on installing  ESP8266 support on your Arduino IDE,
see [SparkFun's ESP8266 Thing Hookup Guide][33].
[ESP8266 Arduino libraries documentation][34] can be found online.

I'm not the first to lament about the this topic, but more importantly,
some people have stepped forward and done something about it!
The folks at Arduino have given us [Installing Arduino on Linux][01], which gives us
a Arduino IDE, but more importantly, the foundation of this package are executables
and libraries that can be called executed outside of the IDE.
Others like [Martin Oldfield and Sudar Muthu][02] have given us the Linux package `arduino-mk`
which allows you to use the core tools that form the foundation for the Arduino IDE.
Those foundational tools are within the package `arduino-core`.
The actual Arduino IDE is in the package `arduino`.
But these Makefile tools don't easily support the ESP8266/ESP32 boards,
which prompted the creation of [Esp8266-Arduino-Makefile][17]
to get support for the ESP architecture but abandoned the Arduino boards.

I wanted to avoid all this confusion and get on a path that will remain compatible
with the future evolution of the Arduino IDE.
I discovered that [Arduino has released a command line interface (CLI)][13],
called `arduino-cli`,
that performs most of the features present in the Arduino IDE.
The Arduino CLI aims to replace the majority of features the Arduino IDE has without the graphical UI.
The CLI will allow you to Install new libraries, create new projects,
and compile projects directly from the command line.
And it appears the goal of the Arduino CLI in any kind of script for the command line.
So in principle, it should work in a standard Makefile too.

>**NOTE:** As of August 24, 2018, the Arduino team has made a formal
>alpha release [announcment of Arduino Command Line Interface (CLI)][13].
>See the [`arduino-cli` github site][14] for more information, where it says
>"This software is currently under active development:
>anything can change at any time,
>API and UI must be considered unstable until we release version 1.0.0."

One of the things that comes free with the Arduino IDE is a serial monitor.
Of course, this is an indispensable tool for both testing and debugging,
and I don't want to loss this capability.
We haven't abandoned this capability since there are Linux alternatives.
The post [Arduino and Linux TTY][04] provides a series of solutions.
(What is listed below isn't always functional for every need, so consult the posting for more ideas.)

Some of your best monitoring options are:

* Assuming the Arduino's USB is plugged into `/dev/ACM0` and the port speed is set to `57600`,
`cu -l /dev/ttyACM0 -s 57600` will get you simple connect.
For more commands, consult the [`cu` manual page][07].
* You can use [`screen`][08] to provide a more interactive serial monitor session with an Arduino.
The command `screen /dev/ttyACM0 57600` is similar to the above.
See [Linux Screen Tutorial and How To][05]
[Screen User's Manual][06] for more information about the power of `screen`.

What follows is how I installed the [Arduino IDE][03], the [Arduino CLI][14]
and used it with [GNU Make (aka Makefile)][15].
Doing this, I can create an all command line (or nearly all)
software development experance while still leveraging the popularity of the Arduino IDE platform.


-----


# Installing the Arduino IDE
[Arduino][11] is an open-source platform used for building electronics projects.
Arduino consists of both a physical programmable circuit board (often referred to as a microcontroller)
and a piece of software, or IDE (Integrated Development Environment) that runs on your computer,
used to write and upload computer code to the physical board.
There is [Linux build of the Arduino IDE][09],
as well as [alternatives to the standard Arduino IDE][10].

### Step 0: Uninstall Old Arduino IDE - DONE
If you upgrading your Arduino IDE,
the first thing you want to do is uninstall the old version.
The Arduino IDE package comes with an uninstall script but it doesn't do a complete removal
of all the configuration files and modifications you have likely make over time.
You'll need to save and then reinstall those things you have added.
The procedure below should do the trick.

Copy any of your sketch and personal libraries you may wish to keep.
Don't worry about public libraries since they can be reinstalled for sources.

```bash
# copy your sketches or the whole directory to be safe
#cp -r ~/src/arduino ~/tmp
cp -r ~/src/arduino/sketchbooks ~/tmp

# move to the location of the arduino ide and run the uninstall script
cd ~/src/arduino
./uninstall.sh

# remove your symbolic link to the arduino ide executable
rm ~/bin/arduino

# remove the arduino ide confguration files
rm -r -f ~/.ardunio15
rm -r -f ~/Arduino      # may not exist if you follwed my configruation here

# remove the entire arduino ide directory
cd ~
rm -r -f ~/src/arduino
```

### Step 1: Installing Arduino IDE - DONE
You could install the Arduino IDE via the Ubuntu Software Center and search for Arduino.
Alternatively, you can install via the command line by running the following:

```bash
# install arduino from software repositories (NOT RECOMMENDED)
sudo apt-get update && sudo apt-get install arduino arduino-core
```

The above installs a package from the Ubuntu software repositories,
which likely to be an older Arduino IDE version.
The newest version of the Arduino can be downloaded from the [Arduino download page][12].
(**NOTE:** Using this method Arduino software won't automatically be updated,
so you should check Arduino website every few months and download
a new version if one is available.)

```bash
# download the software - arduino-nightly-linux64.tar.xz
# from https://www.arduino.cc/en/Main/Software
#                    or
# ARDUINO 1.8.12 official release at
# https://www.arduino.cc/en/Main/Donate

# uncompress the tarball
cd ~/Downloads
tar -xvf arduino-1.8.12-linux64.tar.xz
rm arduino-1.8.12-linux64.tar.xz

# move the result folder to $HOME/src directory for your use
mv arduino-1.8.12 ~/src/arduino

# run the script to install both desktop shortcut and launcher icon
cd ~/src/arduino
./install.sh
ln -s ~/src/arduino/arduino ~/bin/arduino

# remove brltty (braille device) which will conflict with the Arduino
sudo apt-get remove brltty
```

The `./install.sh` step will also create the directory `$HOME/.arduino15`.
This will play an important role in preferences, boards,
and libraries within the Arduino environment.

### Step 2: Quick Test - DONE
Lets do a quick check on the install:

```bash
# print version and build information for the arduino ide and exit
$ arduino --version
Picked up JAVA_TOOL_OPTIONS:
Sketchbook folder disappeared: The sketchbook folder no longer exists.
Arduino will switch to the default sketchbook
location, and create a new sketchbook folder if
necessary. Arduino will then stop talking about
himself in the third person.
Loading configuration...
Initializing packages...
Preparing boards...
Arduino: 1.8.12
```

This will also create the directory `$HOME/Arduino` to hold your sketchbook.
We'll be removing this in a later step.

When the Arduino Software IDE is properly installed you can execute
the IDE via the command `arduino &>/dev/null &` or the desktop icon.

>**NOTE:** It might happen that when you upload a sketch
>(after you have selected your board and serial port),
>you get an error Error opening serial port.
>If you get this error, you need to [set serial port permission][23].

### Step 3: Setup Your Arduino IDE Preferences - DONE
Normally, running the `arduino` command starts the IDE,
optionally loading any `.ino` files specified on the commandline.
Also, it normally puts all your Arduino sketches and project libraries within
a common directory defaulting to `$HOME/Arduino`.
Lets change this location:

1. Create the directory `$HOME/src/arduino/sketchbooks`
2. Start the Arduino IDE, select the menu button **File** > **Preferences**
3. Change the "Sketchbook location" to `$HOME/src/arduino/sketchbooks`
(make sure you do this via the **Browse** button) and save it.
4. Restart the Arduino and the directory will be prepared automatically for you
(check for the creation of `~/src/arduino/sketchbooks/libraries` to confirm).

>**NOTE:** Some preferences, but not all,
>can be controlled from the Preferences dialog within the Arduino environment (see [here][19]).
>More preferences can be edited directly in the file `$HOME/.arduino15/preferences.txt`
>but only edit when the Arduino IDE is **not** running.

### Step 4: Remove Old Sketch Directory - DONE
The new `sketchbook` directory create above contains a subdirectory `libraries`
(This was created when you restarted the Arduino IDE).
`$HOME/src/arduino/sketchbooks/libraries` is where all your libraries will go
(both downloads and personal ones you create).
Improperly installing libraries can be a major source of confusion within the Arduino world.
Check out Adafruit's "[All About Arduino Libraries][18]" for their proper care and feeding.

Now that your sketches and libraries have a new location,
make sure to remove the default location created during the Arduino IDE install:

```bash
# remove the old sketchbook location
rm -r -f ~/Arduino
```

### Step 5: Move Back Saved Sketches - DONE
If you did Step 0 and you saved any sketch from a previous install,
you can simply copy them into the `$HOME/src/arduino/sketchbooks` directory.
For example:

```bash
# copy your old sketches into you new sketchbook
cp -r ~/tmp/sketchbooks ~/src/arduino
```

### Step 6: Changing IDE Default Window Size - DONE
I find the default window side of the Arduino IDE a big announce.
Within the `~/.arduino15/preferences.txt` file,
update the preferences to the following:

```
editor.window.height.min=800
editor.window.width.min=1000
```


-----


# Installing the Arduino Commond Line Interface - `arduino-cli`
[Arduino has released a command line interface (CLI)][13], called `arduino-cli`,
that performs most of the features present in the Arduino IDE.
The CLI will allow you to Install new libraries, create new projects,
and compile projects directly from the command line.
The goal of the Arduino CLI is to be including it in Makefile
or in any kind of script for the command line.
The Arduino CLI aims to replace the majority of features
the Arduino IDE has without the graphical UI.

There isn't a great deal of documentation on `arduino-cli`
but the [`arduino-cli` github site][14] provides what you need for installation.
I also found these sites useful:

* [Arduino now has a command line interface (CLI)](https://hub.packtpub.com/arduino-now-has-a-command-line-interface-cli/)
* [Tutorial on the Arduino Command Line Interface (CLI)][21]
* [Arduino Command Line Interface](https://github.com/arduino/arduino-cli)
* [Arduino CLI Command Line Interface Getting Started (Mac and Windows)](https://www.youtube.com/watch?v=8LPSjucQoso)
* [Arduino Gets Command Line Interface Tools That Let You Skip the IDE](https://hackaday.com/2018/08/26/arduino-gets-command-line-interface-tools-that-let-you-skip-the-ide/)

>**NOTE:** As of August 24, 2018, the Arduino team has made a formal
>alpha release [announcment of Arduino Command Line Interface (CLI)][13].
>See the [`arduino-cli` github site][14] for more information, where it says
>"This software is currently under active development:
>anything can change at any time,
>API and UI must be considered unstable until we release version 1.0.0."

### Step 0: Uninstall arduino-cli - DONE
You may have installed `arduino-cli` in the past and it will be wise to remove
any other version that may be in your `$PATH`.

```bash
# uninstall the arduino-cli tool
rm -r -f $GOPATH/src/github.com/arduino $GOPATH/bin/arduino-cli

# remove executable in your PATH
rm -f ~/bin/arduino-cli /usr/bin/arduino-cli
```

########################## REMOVE THIS BETWEEN LINES ###########################
### Step 1: Install arduino-cli
The the [`arduino-cli` github site][14] give you a choose of installing the "stable"
version or the latest source.
I'm using the latest source and will update frequently as it evolves.

>**NOTE:** `arduino-cli` is writen in the [Go language][30]
>([golang.org][31]) and is installed via the Go Package Manager.
>To find out more about Go packages, check out [this site][29].

```bash
# install the go language
sudo apt install golang-go

# install GOPATH variable and restart your shell
echo "export GOPATH=$HOME/src/go_code" >> ~/.bashrc
echo "export PATH=$PATH:$GOPATH/bin" >> ~/.bashrc
source ~/.bashrc

# install the arduino-cli tool
go get -u github.com/arduino/arduino-cli

# put the arduino-cli executable in your PATH
ln -s $GOPATH/bin/arduino-cli ~/bin/arduino-cli
```
########################## REMOVE THIS BETWEEN LINES ###########################

### Step 1: Install arduino-cli - DONE
The easiest way to get the latest version of
`arduino-cli` is to use the supplied `install.sh` script:

```bash
# isntall arduino-cli in your local bin
curl -fsSL https://raw.githubusercontent.com/arduino/arduino-cli/master/install.sh | BINDIR=$HOME/bin sh

# check the the installation
$ arduino-cli version
arduino-cli Version: 0.8.0 Commit: 64c501d

# list commandline options
$ arduino-cli help
Arduino Command Line Interface (arduino-cli).

Usage:
  arduino-cli [command]

Examples:
  arduino-cli <command> [flags...]

Available Commands:
  board         Arduino board commands.
  cache         Arduino cache commands.
  compile       Compiles Arduino sketches.
  config        Arduino Configuration Commands.
  core          Arduino Core operations.
  daemon        Run as a daemon on port
  help          Help about any command
  lib           Arduino commands about libraries.
  sketch        Arduino CLI Sketch Commands.
  upload        Upload Arduino sketches.
  version       Shows version number of arduino CLI.

Flags:
      --additional-urls strings   Additional URLs for the board manager.
      --config-file string        The custom config file (if not specified the default will be used).
      --format string             The output format, can be [text|json]. (default "text")
  -h, --help                      help for arduino-cli
      --log-file string           Path to the file where logs will be written.
      --log-format string         The output format for the logs, can be [text|json].
      --log-level string          Messages with this level and above will be logged. Valid levels are: Trace, Debug, Info, Warning, Error, Fatal, Panic
  -v, --verbose                   Print the logs on the standard output.

Use "arduino-cli [command] --help" for more information about a command.
```

########################## REMOVE THIS BETWEEN LINES ###########################
### Step 1A: Updating arduino-cli
`go get` will install the package in the first directory listed at `$GOPATH`
(an environment variable which might contain a colon separated list of directories).

You can use `go get -u <package>` to update existing packages.
You can also use `go get -u all` to update all packages in your `$GOPATH`.

```bash
# update the arduino-cli tool
go get -u github.com/arduino/arduino-cli
```
########################## REMOVE THIS BETWEEN LINES ###########################

########################## REMOVE THIS BETWEEN LINES ###########################
### Step 2: Create the .cli-config.yml File
I found out the hard way about the **non-existance** of the `.cli-config.yml` file.
There is no good documentation on this file or what it does within `arduino-cli`
but I found some hints on the video "[Tutorial on the Arduino Command Line Interface (CLI)][21]"
(at around 2:37 minutes)

But the most insight came when I ran the following commands:

```bash
# dump out the configuration file but with debug on for more information
$ arduino-cli config dump --debug
INFO[0000] Initiating configuration
INFO[0000] Unserializing configurations from /home/jeff/src/go_code/bin/.cli-config.yml
WARN[0000] Error reading config, using default configuration  error="open /home/jeff/src/go_code/bin/.cli-config.yml: no such file or directory"
WARN[0000] Did not manage to get config file, using default configuration  error="open /home/jeff/src/go_code/bin/.cli-config.yml: no such file or directory"
INFO[0000] Checking if CLI is Bundled into the IDE
INFO[0000] Candidate IDE Directory: /home/jeff/src/go_code/bin
INFO[0000] CLI is not bundled into the IDE
INFO[0000] Configuration set
INFO[0000] arduino-cli-0.3.3-alpha.preview
INFO[0000] Starting root command preparation (`arduino`)
INFO[0000] Formatter set
INFO[0000] Executing `arduino config dump`
proxy_type: auto
sketchbook_path: /home/jeff/Arduino
arduino_data: /home/jeff/.arduino15
board_manager: null
```

This says the `.cli-config.yml` doesn't exist and it uses "sketchbook_path: /home/jeff/Arduino".
After some further exploring, I concluded that
`arduino-cli config init` could create the file I need:

```bash
# create the configuration file
$ arduino-cli config init

Config file PATH: /home/jeff/src/go_code/bin/.cli-config.yml
```

Now lets update the `.cli-config.yml` file with the approprate path to my sketchbooks:

```bash
# using and editor, update sketchbooks path

# what is in the configuration file
cat /home/jeff/src/go_code/bin/.cli-config.yml

proxy_type: auto
sketchbook_path: /home/jeff/Arduino
arduino_data: /home/jeff/.arduino15
board_manager: null
```

This isn't what I want.
If I don't change this,
loading of libraries will be within `/home/jeff/Arduino`
and not `/home/jeff/src/arduino/sketchbooks` where I want them.
I editted the file to look like this:

```yml
proxy_type: auto
sketchbook_path: /home/jeff/src/arduino/sketchbooks
arduino_data: /home/jeff/.arduino15
board_manager: null
```

Execute `arduino-cli config dump --debug` again and you will see the changes.
########################## REMOVE THIS BETWEEN LINES ###########################

### Step 2: Create the .cli-config.yml Configuration File - DONE
`arduino-cli` doesn't strictly require a configuration file to work because
the command line interface provides any possible functionality.

```bash
# create a arduino=cli configration file
$ arduino-cli config init
Config file written to: /home/jeff/.arduino15/arduino-cli.yaml
```

If you inspect `~/.arduino15/arduino-cli.yaml` contents,
you'll find out the available options with their respective default values.

```bash
# default contents of ~/.arduino15/arduino-cli.yaml
$ cat ~/.arduino15/arduino-cli.yaml
board_manager:
  additional_urls: []
daemon:
  port: "50051"
directories:
  data: /home/jeff/.arduino15
  downloads: /home/jeff/.arduino15/staging
  user: /home/jeff/Arduino
logging:
  file: ""
  format: text
  level: info
```

### Step 3: Update arduino-cli - DONE
If you are running a fresh install of the `arduino-cli`,
you probably need to update the platform indexes
(you'll see these indexes in `~/.ardunio15`) by running:

```bash
# update package index of cores
$ arduino-cli core update-index
Downloading missing tool builtin:serial-discovery@1.0.0...
builtin:serial-discovery@1.0.0 downloaded
Installing builtin:serial-discovery@1.0.0...
builtin:serial-discovery@1.0.0 installed
Updating index: package_index.json downloaded

# shows the list of installed platforms
$ arduino-cli core list
ID              Installed Latest Name
esp32:esp32     1.0.2     1.0.2
esp8266:esp8266 2.5.2     2.5.2

# list all known boards and their corresponding FQBN
$ arduino-cli board listall
Board Name                      FQBN
"WeMos" WiFi&Bluetooth Battery  esp32:esp32:WeMosBat
4D Systems gen4 IoD Range       esp8266:esp8266:gen4iod
AI Thinker ESP32-CAM            esp32:esp32:esp32cam
ALKS ESP32                      esp32:esp32:alksesp32
Adafruit ESP32 Feather          esp32:esp32:featheresp32
Adafruit Feather HUZZAH ESP8266 esp8266:esp8266:huzzah
Amperka WiFi Slot               esp8266:esp8266:wifi_slot
Arduino                         esp8266:esp8266:arduino-esp8266
BPI-BIT                         esp32:esp32:bpi-bit
D-duino-32                      esp32:esp32:d-duino-32
DOIT ESP32 DEVKIT V1            esp32:esp32:esp32doit-devkit-v1
Digistump Oak                   esp8266:esp8266:oak
Dongsen Tech Pocket 32          esp32:esp32:pocket_32
ESP32 Dev Module                esp32:esp32:esp32
ESP32 FM DevKit                 esp32:esp32:fm-devkit
ESP32 Pico Kit                  esp32:esp32:pico32
ESP32 Wrover Module             esp32:esp32:esp32wrover
ESP32vn IoT Uno                 esp32:esp32:esp32vn-iot-uno
ESPDuino (ESP-13 Module)        esp8266:esp8266:espduino
ESPea32                         esp32:esp32:espea32
ESPectro Core                   esp8266:esp8266:espectro
ESPectro32                      esp32:esp32:espectro32
ESPino (ESP-12 Module)          esp8266:esp8266:espino
ESPresso Lite 1.0               esp8266:esp8266:espresso_lite_v1
ESPresso Lite 2.0               esp8266:esp8266:espresso_lite_v2
Electronic SweetPeas - ESP320   esp32:esp32:esp320
FireBeetle-ESP32                esp32:esp32:firebeetle32
Frog Board ESP32                esp32:esp32:frogboard
Generic ESP8266 Module          esp8266:esp8266:generic
Generic ESP8285 Module          esp8266:esp8266:esp8285
Heltec WiFi Kit 32              esp32:esp32:heltec_wifi_kit_32
Heltec WiFi LoRa 32             esp32:esp32:heltec_wifi_lora_32
Heltec WiFi LoRa 32(V2)         esp32:esp32:heltec_wifi_lora_32_V2
Heltec Wireless Stick           esp32:esp32:heltec_wireless_stick
Hornbill ESP32 Dev              esp32:esp32:hornbill32dev
Hornbill ESP32 Minima           esp32:esp32:hornbill32minima
IntoRobot Fig                   esp32:esp32:intorobot-fig
Invent One                      esp8266:esp8266:inventone
LOLIN D32                       esp32:esp32:d32
LOLIN D32 PRO                   esp32:esp32:d32_pro
LOLIN(WEMOS) D1 R2 & mini       esp8266:esp8266:d1_mini
LOLIN(WEMOS) D1 mini Lite       esp8266:esp8266:d1_mini_lite
LOLIN(WEMOS) D1 mini Pro        esp8266:esp8266:d1_mini_pro
LoPy                            esp32:esp32:lopy
LoPy4                           esp32:esp32:lopy4
M5Stack-Core-ESP32              esp32:esp32:m5stack-core-esp32
M5Stack-FIRE                    esp32:esp32:m5stack-fire
M5Stick-C                       esp32:esp32:m5stick-c
MH ET LIVE ESP32DevKIT          esp32:esp32:mhetesp32devkit
MH ET LIVE ESP32MiniKit         esp32:esp32:mhetesp32minikit
Microduino-CoreESP32            esp32:esp32:CoreESP32
Nano32                          esp32:esp32:nano32
Node32s                         esp32:esp32:node32s
NodeMCU 0.9 (ESP-12 Module)     esp8266:esp8266:nodemcu
NodeMCU 1.0 (ESP-12E Module)    esp8266:esp8266:nodemcuv2
NodeMCU-32S                     esp32:esp32:nodemcu-32s
Noduino Quantum                 esp32:esp32:quantum
ODROID ESP32                    esp32:esp32:odroid_esp32
OLIMEX ESP32-EVB                esp32:esp32:esp32-evb
OLIMEX ESP32-GATEWAY            esp32:esp32:esp32-gateway
OLIMEX ESP32-PoE                esp32:esp32:esp32-poe
OROCA EduBot                    esp32:esp32:oroca_edubot
Olimex MOD-WIFI-ESP8266(-DEV)   esp8266:esp8266:modwifi
Onehorse ESP32 Dev Module       esp32:esp32:onehorse32dev
Phoenix 1.0                     esp8266:esp8266:phoenix_v1
Phoenix 2.0                     esp8266:esp8266:phoenix_v2
Seeed Wio Link                  esp8266:esp8266:wiolink
Silicognition wESP32            esp32:esp32:wesp32
SparkFun ESP32 Thing            esp32:esp32:esp32thing
SparkFun ESP8266 Thing          esp8266:esp8266:thing
SparkFun ESP8266 Thing Dev      esp8266:esp8266:thingdev
SparkFun LoRa Gateway 1-Channel esp32:esp32:sparkfun_lora_gateway_1-channel
SweetPea ESP-210                esp8266:esp8266:esp210
T-Beam                          esp32:esp32:t-beam
TTGO LoRa32-OLED V1             esp32:esp32:ttgo-lora32-v1
ThaiEasyElec's ESPino           esp8266:esp8266:espinotee
ThaiEasyElec's ESPino32         esp32:esp32:espino32
Turta IoT Node                  esp32:esp32:turta_iot_node
WEMOS LOLIN32                   esp32:esp32:lolin32
WeMos D1 R1                     esp8266:esp8266:d1
WiFiduino                       esp8266:esp8266:wifiduino
WiPy 3.0                        esp32:esp32:wipy3
Widora AIR                      esp32:esp32:widora-air
WifInfo                         esp8266:esp8266:wifinfo
XinaBox CW01                    esp8266:esp8266:cw01
XinaBox CW02                    esp32:esp32:cw02
u-blox NINA-W10 series (ESP32)  esp32:esp32:nina_w10
```

### Step 4: Install New Core's for arduino-cli - DONE
The list above only include ESP microcontrlers.
What if you wanted support for [SAM D MCUs][16]?
In this case, you would install the `arduino:samd`
platform core by running the following:

```bash
# install support for SAM D processors
$ arduino-cli core install arduino:samd
Downloading packages...
arduino:arm-none-eabi-gcc@7-2017q4 downloaded
arduino:bossac@1.7.0-arduino3 downloaded
arduino:openocd@0.10.0-arduino7 downloaded
arduino:CMSIS@4.5.0 downloaded
arduino:CMSIS-Atmel@1.2.0 downloaded
arduino:arduinoOTA@1.2.1 downloaded
arduino:samd@1.8.4 downloaded
Installing arduino:arm-none-eabi-gcc@7-2017q4...
arduino:arm-none-eabi-gcc@7-2017q4 installed
Installing arduino:bossac@1.7.0-arduino3...
arduino:bossac@1.7.0-arduino3 installed
Installing arduino:openocd@0.10.0-arduino7...
arduino:openocd@0.10.0-arduino7 installed
Installing arduino:CMSIS@4.5.0...
arduino:CMSIS@4.5.0 installed
Installing arduino:CMSIS-Atmel@1.2.0...
arduino:CMSIS-Atmel@1.2.0 installed
Installing arduino:arduinoOTA@1.2.1...
arduino:arduinoOTA@1.2.1 installed
Installing arduino:samd@1.8.4...
arduino:samd@1.8.4 installed

# verify we have installed the core properly
$ arduino-cli core list
ID              Installed Latest Name
arduino:samd    1.8.4     1.8.4  Arduino SAMD Boards (32-bits ARM Cortex-M0+)
esp32:esp32     1.0.2     1.0.2
esp8266:esp8266 2.5.2     2.5.2
```

### Step 5: Fix the `esptool` - DONE
I had to do a "fix" the [`esptool.py` tool][24] (ROM bootloader for ESP8266 & ESP32)
since its not within my $PATH
The fix is the following:

```bash
# check the esptool is executable
$ ls -l ~/.arduino15/packages/esp32/tools/esptool_py/2.6.1/esptool*

# create a symbolic link to the esptool executable
$ ln -s ~/.arduino15/packages/esp32/tools/esptool_py/2.6.1/esptool.py ~/bin/esptool

# test you can now reach it
$ esptool
usage: esptool [-h] [--chip {auto,esp8266,esp32}] [--port PORT] [--baud BAUD]
               [--before {default_reset,no_reset,no_reset_no_sync}]
               [--after {hard_reset,soft_reset,no_reset}] [--no-stub]
               [--trace] [--override-vddsdio [{1.8V,1.9V,OFF}]]
               {load_ram,dump_mem,read_mem,write_mem,write_flash,run,image_info,make_image,elf2image,read_mac,chip_id,flash_id,read_flash_status,write_flash_status,read_flash,verify_flash,erase_flash,erase_region,version}
               ...
esptool: error: too few arguments
```

-----


# Using the arduino-cli With ESP Processor
In this section,
I'll walkthrough how to make use of `arduino-cli` to build projects.
I'll be using examples from [ntp-clock.ino][20].

### Step 1: Load Needed Libraries - DONE
The example I'm doing, the [ntp-clock.ino][20] sketch,
requires several additional libraries which are not
pre-installed in the Arduino IDE or the `arduino-cli`.
I show below how to do a library install via a`arduino-cli`,
and they will be place in `$HOME/src/arduino/sketechbooks/libraries`

>**NOTE:** You could have install this libary within the Arduino IDE, for example,
>via **Tools** > **Manage Libraries...** > enter "arduino-timer" and install.
>That will work with the Adruino IDE but would **not** have worked with `ardunio-cli`.
>You must use `arduino-cli lib install <library-name>`.

The `arduino-cli` command we will use to install libraries is `arduino-cli lib ...`:

```bash
# help message for arduino-cli lib
$ arduino-cli lib help
Arduino commands about libraries.

Usage:
  arduino-cli lib [command]

Examples:
  arduino-cli lib install AudioZero
  arduino-cli lib update-index

Available Commands:
  download     Downloads one or more libraries without installing them.
  install      Installs one of more specified libraries into the system.
  list         Shows a list of all installed libraries.
  search       Searchs for one or more libraries data.
  uninstall    Uninstalls one or more libraries.
  update-index Updates the libraries index.
  upgrade      Upgrades installed libraries.

Flags:
  -h, --help   help for lib

Global Flags:
      --config-file string   The custom config file (if not specified ./.cli-config.yml will be used).
      --debug                Enables debug output (super verbose, used to debug the CLI).
      --format string        The output format, can be [text|json]. (default "text")

Use "arduino-cli lib [command] --help" for more information about a command.
```

One of the libraries to be installed is `arduino-timer`.
You can see how this is done below:

```bash
# search for a library with 'arduino-timer' in its name
$ arduino-cli lib search arduino-timer
Name: "arduino-timer"
  Author: Michael Contreras
  Maintainer: Michael Contreras
  Sentence: Timer library for delaying function calls
  Paragraph: Simple non-blocking timer library for calling functions in / at / every specified units of time. Supports millis, micros, time rollover, and compile time configurable number of tasks.
  Website: https://github.com/contrem/arduino-timer
  Category: Timing
  Architecture: *
  Types: Contributed
  Versions: [0.0.1, 1.0.0, 1.0.1, 2.0.0, 2.0.1]
Name: "arduino-timer-api"
  Author: sadr0b0t
  Maintainer: sadr0b0t
  Sentence: Simple cross-platform API for multitasking on timer interrupt handlers
  Paragraph: Simple cross-platform API for multitasking on Arduino based on timer interrupt handlers. Works with AVR/Arduino, PIC32/ChipKIT platforms.
  Website: https://github.com/sadr0b0t/arduino-timer-api
  Category: Timing
  Architecture: *
  Types: Contributed
  Versions: [0.1.0]

# install the desired library
$ arduino-cli lib install "arduino-timer"
arduino-timer depends on arduino-timer@2.0.1
Downloading arduino-timer@2.0.1...
arduino-timer@2.0.1 downloaded
Installing arduino-timer@2.0.1...
Installed arduino-timer@2.0.1

# check if it installed
$ arduino-cli lib list
Name          Installed Available Location
arduino-timer 2.0.1     -         user
```

I'll use this non-trivial example sketch, [ntp-clock.ino][20],
which makes use of a ESP8266/NodeMCU + 7-segment LED display board.
Let's install the required libraries for the sketch `ntp-clock.ino`:

```bash
# install all your required libraries
arduino-cli lib install "arduino-timer"
arduino-cli lib install "Adafruit GFX Library"
arduino-cli lib install "Adafruit LED Backpack Library"@1.1.6
arduino-cli lib install "Time"
arduino-cli lib install "Timezone"

# or
arduino-cli lib install "arduino-timer" "Adafruit GFX Library" "Adafruit LED Backpack Library" "Time" "Timezone"

# to see what you have installed so far
$ arduino-cli lib list
Name                          Installed Available Location
arduino-timer                 2.0.1     -         user
Adafruit_ILI9341              1.5.4     -         user
Adafruit_LED_Backpack_Library 1.1.6     -         user
Adafruit_GFX_Library          1.7.5     -         user
Timezone                      1.2.4     -         user
Adafruit_TouchScreen          1.0.4     -         user
Adafruit_STMPE610             1.1.0     -         user
Time                          1.6       -         user
```

To remove all these libraries, just use the following command:
`arduino-cli lib uninstall Adafruit_GFX_Library Adafruit_LED_Backpack_Library arduino-timer Time Timezone`.

### Step 2: Find the Board's FQBN (Fully Qualified Board Name) - DONE
First step is understand what type of board your dealing.
To do this, just connect your device to your PC via a USB,
in my case a ESP8266/NodeMCU board,
and run a command to sense the board:

```bash
# connect the board to PC via usb cable

# sense the board
$ arduino-cli board list
Port         Type              Board Name FQBN Core
/dev/ttyUSB0 Serial Port (USB) Unknown
```

This wasn't much help since `arduino-cli` couldn't detect the board type.
We know the board is some type of NodeMCU with a ESP8266.
Let's list available cores matching 'nodemcu':

```bash
# list all boards matching 'nodemcu'
$ arduino-cli board listall nodemcu
Board Name                  	FQBN
NodeMCU 0.9 (ESP-12 Module) 	esp8266:esp8266:nodemcu
NodeMCU 1.0 (ESP-12E Module)	esp8266:esp8266:nodemcuv2
NodeMCU-32S                 	esp32:esp32:nodemcu-32s
```

My board is the "NodeMCU 1.0 (ESP-12E Module)", and so,
we now have its coresponding Fully Qualified Board Name (FQBN)
of `esp8266:esp8266:nodemcuv2`.
This gives us the needed information to complile the sketch.

### Step 3: Compiling the Sketch - DONE
The `arduino-cli` tool also supports compiling and loading of the sketch.
hear is more information on compiling:

```bash
# help message for arduino-cli compiler
$ arduino-cli help compile
Compiles Arduino sketches.

Usage:
  arduino-cli compile [flags]

Examples:
  arduino-cli compile -b arduino:avr:uno /home/user/Arduino/MySketch

Flags:
      --build-cache-path string    Builds of 'core.a' are saved into this path to be cached and reused.
      --build-path string          Path where to save compiled files. If omitted, a directory will be created in the default temporary path of your OS.
      --build-properties strings   List of custom build properties separated by commas. Or can be used multiple times for multiple properties.
  -b, --fqbn string                Fully Qualified Board Name, e.g.: arduino:avr:uno
  -h, --help                       help for compile
  -o, --output string              Filename of the compile output.
      --preprocess                 Print preprocessed code to stdout instead of compiling.
      --quiet                      Optional, supresses almost every output.
      --show-properties            Show all build properties used instead of compiling.
  -v, --verbose                    Optional, turns on verbose mode.
      --vid-pid string             When specified, VID/PID specific build properties are used, if boards supports them.
      --warnings string            Optional, can be "none", "default", "more" and "all". Defaults to "none". Used to tell gcc which warning level to use (-W flag). (default "none")

Global Flags:
      --config-file string   The custom config file (if not specified ./.cli-config.yml will be used).
      --debug                Enables debug output (super verbose, used to debug the CLI).
      --format string        The output format, can be [text|json]. (default "text")
```

To compile the sketch we have to run the compile command
with the proper board's FQBN (Fully Qualified Board Name) we just got in the previous command.
Now we are going to compile the [ntp-clock.ino][20] sketch.

```bash
# download net-clock.ino
mkdir ~/tmp/ntp-clock
cd ~/tmp/ntp-clock
wget https://gist.github.com/jeffskinnerbox/d74f518157c28dc2dac3297095417447/raw
mv raw ntp-clock.ino

# compile the sketch
$ arduino-cli compile --fqbn esp8266:esp8266:nodemcuv2 ~/tmp/ntp-clock
WARNING: library Timezone claims to run on avr architecture(s) and may be incompatible with your current board which runs on esp8266 architecture(s).
Sketch uses 279620 bytes (26%) of program storage space. Maximum is 1044464 bytes.
Global variables use 30268 bytes (36%) of dynamic memory, leaving 51652 bytes for local variables. Maximum is 81920 bytes.
```

This will create two file,
`ntp-clock.esp8266.esp8266.nodemcuv2.bin` and `ntp-clock.esp8266.esp8266.nodemcuv2.elf`,
within `~/src/ntp-clock`.
The `.bin` file is the firmware that will be uploaded into the microcontroller.
The `.elf` file is a executable and linkable format (elf)
formated file used when object file linking is required.

### Step 4: UpLoad the Sketch - DONE
We can now upload the sketch to the ESP8266 board
and see the board in operation.

```bash
# help information concerning upload
$ arduino-cli help upload
Upload Arduino sketches.

Usage:
  arduino-cli upload [flags]

Examples:
  arduino-cli upload /home/user/Arduino/MySketch

Flags:
  -b, --fqbn string    Fully Qualified Board Name, e.g.: arduino:avr:uno
  -h, --help           help for upload
  -i, --input string   Input file to be uploaded.
  -p, --port string    Upload port, e.g.: COM10 or /dev/ttyACM0

  -t, --verify         Verify uploaded binary after the upload.

Global Flags:
      --config-file string   The custom config file (if not specified ./.cli-config.yml will be used).
      --debug                Enables debug output (super verbose, used to debug the CLI).
      --format string        The output format, can be [text|json]. (default "text")
```

As before, we need to provide the FQBN, but also specify the serial port used by the board:
We'll do this for the [ntp-clock.ino][20] sketch:

```bash
# upload the compile sketch
$ arduino-cli upload --fqbn esp8266:esp8266:nodemcuv2 --port /dev/ttyUSB0 ~/tmp/ntp-clock
No new serial port detected.
esptool.py v2.6
2.6
esptool.py v2.6
Serial port /dev/ttyUSB0
Connecting....
Chip is ESP8266EX
Features: WiFi
MAC: bc:dd:c2:24:f9:fb
Uploading stub...
Running stub...
Stub running...
Configuring flash size...
Auto-detected Flash size: 4MB
Compressed 283776 bytes to 205769...
Wrote 283776 bytes (205769 compressed) at 0x00000000 in 18.2 seconds (effective 124.9 kbit/s)...
Hash of data verified.

Leaving...
Hard resetting via RTS pin...
```

Your board should now be running the `ntp-clock.ino` sketch.
To validate, execute `screen /dev/ttyUSB0 9600,cs8` in a terminal and push the reset button on the NodeMCU.


----


# Using Makefile
You'll find Makefile template for the [Arduino board family][26],
the [Atmel (now Microchip) AVR family][25],
[Espressif Systems ESP family][17] ([there is more than one][27]), and others.
The harsh reality is that there isn't single Makefile template for all
the boards & processors leveraging the Arduino IDE or `arduino-cli`.
Ideally, I want to have a simple to understand Makefile for
the specific board/processor families I'm interested in.
There are several "best practices" you'll find them here:

* [Practical Makefiles, by example](http://nuclear.mutantstargoat.com/articles/make/)
* [Make: Building AVR And Arduino Firmware On The Command Line](https://flyingcarsandstuff.com/2017/11/make-building-avr-and-arduino-firmware-on-the-command-line/)
* [Makefiles, Best Practices](https://danyspin97.org/blog/makefiles-best-practices/)
* [ESP8266 - First Steps](http://smallbits.marshall-tribe.net/blog/2016/05/07/esp8266-first-steps)

To get what I needed,
I ended up settling on on [makeEspArduino][27] as the foundation of my Makefile.
While not as simple as I wished,
it does seem to be very functional and well supported.
It's major down side is its lack of good documentation.
Only materials I have found are:

* [makeEspArduino: README File](https://github.com/plerup/makeEspArduino/blob/master/README.md)
* [makeEspArduino: A makefile for ESP8266 and ESP32 Arduino projects](https://libraries.io/github/plerup/makeEspArduino)

### Step 1: Create the Makefile - DONE
You'll find that the simple Makefile below
will support our example sketch [ntp-clock.ino][20] when using `arduino-cli`.
Place the text below in a file called `Makefile`:

```bash
# programs name
PROG = ntp-clock

# fully qualified board name (FQBN)
FQBN = esp8266:esp8266:nodemcuv2

# serial port used by the board
PORT = /dev/ttyUSB0

# location of esptool
ESPTOOL = /home/jeff/.arduino15/packages/esp32/tools/esptool_py/2.6.1/esptool.py

# string within names give to .bin and .elf files
VAR = $(shell echo $(FQBN) | tr ':' '.')

# compile and firmware flashing commands
CC = arduino-cli compile --fqbn $(FQBN)
UPLOAD = arduino-cli upload --fqbn $(FQBN) --port $(PORT)


.PHONY: build upload clean erase

build:                                          # build the binary executable
	$(CC) $(CURDIR)

upload:                                         # up load the binary executable
	$(UPLOAD) $(CURDIR)

erase:                                          # erase the entire flash
	$(ESPTOOL) --port $(PORT) erase_flash

size:                                           # determine the flash size
	$(ESPTOOL) --port $(PORT) flash_id

clean:                                          # delete all binaries and object viles
	rm --force $(PROG).$(VAR).bin $(PROG).$(VAR).elf
```

### Step 2: Compile & Upload Sketch - DONE
With the Makefile encoding all the details of how to build your sketch,
you have a simple process to build and upload your firmware to the NodeMCU board:

```bash
# go to your test sketch
cd ~/tmp/ntp-clock

# create your Makefile using the block of code in Step 1

# compile the sketch
make

# upload the sketch
make upload
```



[01]:http://playground.arduino.cc/Learning/Linux
[02]:http://www.mjoldfield.com/atelier/2009/02/arduino-cli.html
[03]:https://www.arduino.cc/en/main/software
[04]:http://playground.arduino.cc/Interfacing/LinuxTTY
[05]:http://www.rackaid.com/resources/linux-screen-tutorial-and-how-to/
[06]:http://www.gnu.org/software/screen/manual/screen.html#Overview
[07]:http://linux.die.net/man/1/cu
[08]:http://www.computerhope.com/unix/screen.htm
[09]:https://www.arduino.cc/en/Guide/Linux
[10]:https://www.intorobotics.com/alternatives-standard-arduino-ide-one-choose/
[11]:https://learn.sparkfun.com/tutorials/what-is-an-arduino
[12]:https://www.arduino.cc/en/Main/Software
[13]:https://blog.arduino.cc/2018/08/24/announcing-the-arduino-command-line-interface-cli/
[14]:https://github.com/arduino/arduino-cli
[15]:https://www.gnu.org/software/make/
[16]:https://www.microchip.com/design-centers/32-bit/sam-32-bit-mcus/sam-d-mcus
[17]:https://github.com/thunderace/Esp8266-Arduino-Makefile
[18]:https://learn.adafruit.com/adafruit-all-about-arduino-libraries-install-use/arduino-libraries
[19]:https://www.arduino.cc/en/hacking/preferences
[20]:https://gist.github.com/jeffskinnerbox/d74f518157c28dc2dac3297095417447
[21]:https://www.youtube.com/watch?v=TTiQR_4edXw
[22]:https://frightanic.com/iot/interview-ivan-grokhotkov-espressif/
[23]:https://www.arduino.cc/en/Guide/Linux
[24]:https://pypi.org/project/esptool/
[25]:https://flyingcarsandstuff.com/2017/11/make-building-avr-and-arduino-firmware-on-the-command-line/
[26]:https://hackaday.com/2015/10/01/arduino-development-theres-a-makefile-for-that/
[27]:https://github.com/plerup/makeEspArduino/blob/master/README.md
[28]:https://github.com/plerup/makeEspArduino
[29]:https://medium.com/rungo/everything-you-need-to-know-about-packages-in-go-b8bac62b74cc
[30]:https://medium.com/rungo/working-in-go-workspace-3b0576e0534a
[31]:https://golang.org/
[32]:https://github.com/esp8266/Arduino
[33]:https://learn.sparkfun.com/tutorials/esp8266-thing-hookup-guide/installing-the-esp8266-arduino-addon
[34]:https://arduino-esp8266.readthedocs.io/en/2.4.2/#
[35]:
[36]:
[37]:
[38]:
[39]:
[40]:

