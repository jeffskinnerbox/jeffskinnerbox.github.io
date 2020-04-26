
################################################################################
The "easiest" thing for us to get you for the demo would be our modem and existing dev board, which is an expansion board for the Atmel Xplained Pro:
http://www.atmel.com/products/microcontrollers/avr/xplained.aspx
https://www.digikey.com/catalog/en/partgroup/sam-l21-xplained-pro-evaluation-kit/54571?mpart=ATSAML21-XPRO-B&vendor=150.
This is something we can ship right away. There is a BLE expansion board for this kit, as well as a number of other expansion board options. There is also a BLE-based Xplained board, though we haven't used it before (to my knowledge). It uses a Cortex-M0 based MCU. This would be the closest to what we are actually doing for a dev board, so would likely be easiest for us to support.

There is another board (SAMD20) that has a GPS reference design as well

Conversely we could spin a RPi shield for you. It would be about a day of work, though if it the only option we would be happy to do it. Ideally if you could support T&M for that it would offset some of the extra work since we probably won't be mass-producing the RPi shield for our dev kit (since we like to "force" people into a constrained embedded environment from the get go, rather than Linux, which isn't a great option for low-power devices).

I've copied Ryan Zanski on this who is our hardware lead for our LTE-M module who can answer any follow-up questions you may have or tell me if I've mischaracterized anything.



LTE-M DEVELOPMENT KIT (LL-LTE-M-VZN-DEV) - $ 249.00

Hi Jeff,
Link Labs will now be accepting pre-orders for our LTE-M development kits.
https://cdn.shopify.com/s/files/1/0714/7123/products/lte-m1-with-dev-board_small_large.jpg?v=1505235116
Included in the development kits are:
Link Labs LTE-M module for the Verizon network (LL-LTE-M-VZN-SE)
LL-LTE-M-VZN-SE Expansion board for Atmel Xplained Pro (LL-LTE-M-VZN-XP)
Atmel SAM L21 Xplained Pro Evaluation Kit
USB cable
Cellular antenna
LTE-M SIM card (note that standard LTE SIMs will not work on LTE-M networks)
Quick Start Guide, SW Library, Example projects
For pre-orders only, 12 months of LTE-M cellular service included!
The 12 months of LTE-M service (up to a $60 value) will only be included in pre-sales during the month October.

Reserve your development kit today!
################################################################################

* [Hologram Nova LTE Cat-M1](https://hologram.io/store/nova-lte-cat-m1-(pre-order))
* [Hologram Dash](https://hologram.io/store/hologram-global-dash-(pre-order)/)
* [The World’s Smallest LTE Cat M1 Module: u-blox’s SARA-R404M](https://www.allaboutcircuits.com/news/the-u-blox-sara-r404m-the-worlds-smallest-lte-cat-m1-module/)

LTE Category M1 is a new cellular radio access technology optimized for low-power wide-area (LPWA) applications in IoT that is compatible with existing LTE networks.
In the US, AT&T and Verizon are the first networks to support LTE Cat-M1 technology on their existing LTE networks. (LTE Cat-M1 is a new network access technology so coverage and support will vary by network provider.)
The Hologram Nova LTE Cat-M1 is built with u-blox R404 onboard which has band 13 support for Verizon's LTE Cat-M1 network. Future versions of the Hologram Nova and Hologram Global Dash will support global LTE Cat-M1/NB1 bands. These global Cat-M versions will ship in Q1 2018 and are available for pre-order now.


* [Raspberry Pi Cellular IoT HAT – LTE-M & NB-IoT & eGPRS](https://sixfab.com/product/raspberry-pi-lte-m-nb-iot-egprs-cellular-hat)


################################################################################




The Hologram Nova is a global, easy-to-use, and completely open source
cellular USB modem available in 2G/3G and 4G LTE Cat-M1 models.
Hologram provides Global IoT SIM cards and Developer Tools
making it easy to create cellular solutions.
It is designed to work on the Raspberry Pi,
but capable of operating with any USB host device
that is able to communicate over a standard USB port.

operate over all four the 850/900/1900/2100Mhz bands, and connect using a standard UFL antenna connector.

* [Hologram Nova Documentation Center](https://hologram.io/docs/)
* [Quick Start Guide](https://hologram.io/docs/guide/connect/connect-device/)
* [Hologram Nova User Manual](https://hologram.io/docs/reference/nova/user-manual/)

# Nova Communication Patterns
There are several communication patterns supported by the Hologram Nova device
and are described below:

>**NOTE:** You can send data to and from your Nova device.
_Outbound_ refers to sending data from the Nova device,
and _Inbound_ refers to outside data reaching the Nova device.

* [**Hologram Cloud Messaging**][11] -
For outbound communications, any TCP connected device can be reached using Hologram's [TCP API][16],
even if it’s not on Hologram’s cellular network.
For inbound, Hologram exposes an API via the [Hologram Dashboard interface][18]
to send TCP or UDP messages to any port on your device.
This requires that your device runs embedded Linux or otherwise implements a TCP/IP networking stack.
See the [Cloud Messaging API reference][17] for details.
* [**Direct IP**][12] -
For outbound communications Hologram device have access to the full internet,
so you may use any IP-based protocol to communicate with any internet-routable host.
You can bypass the Hologram Cloud above and instead communicate directly with the host.
For inbound, Hologram cellular devices do not have internet-routable IP addresses,
so you can’t connect to your device directly from the internet.
This means that to send data to your device,
the device must first establish a connection to an outside server and request the data.
The server can then send data back to the device in a response using the already-established connection,
like the request-response pattern used in HTTP.
* [**Spacebridge IP Tunnel**][13] -
If device-originated requests, as in Direct IP, aren’t a good fit for your application,
tunnel–through a different server may be a better fit.
Hologram provides a service called SpaceBridge,
which uses secure SSH tunneling to let you connect to any port on your device.
See [SpaceBridge guide][19] for details.
(NOTE: The inbound Cloud Messaging feature above relies on a SpaceBridge tunnel behind the scenes,
and is a simpler alternative to SpaceBridge if you don’t require direct access to the network socket.)
* [**SMS via Hologram Cloud**][14] -
Hologram supports SMS messages via a cloud API.
Outbound SMS messages sent via API will appear as originating from an internal Hologram phone number.
(NOTE: This is the case even if you have bought a phone number for receiving inbound SMS messages.)
See [Send an SMS via the Hologram Cloud][20].
In the case of inbound, even if you don’t buy a phone number for your device,
you can send SMS messages to it from the [Hologram Dashboard][18].
You may also configure the phone number that the SMS will appear to originate from.
For information on sending SMS to the device via HTTP API, see the [Incoming SMS API reference][21].
* [**Circuit-Switched SMS**][15] -
You can send/recieve an SMS via the standard SMS switching network,
use [AT commands][22] to request them from the cellular modem.
Outbound SMS messages will appear as originating from an internal Hologram phone number.
For inbound SMS, you must buy a dedicated phone number for your Hologram device.
To read inbound SMSes on the device, use AT commands to request them from the modem.


| Method                   | Outbound   | Inbound    | Pricing                                         | Dash Support |
|:------------------------:|:----------:|:----------:|:-----------------------------------------------:|:------------:|
| Hologram Cloud Messaging | Yes        | Yes        | Data                                     | Yes (outbound only) |
| Direct IP                | Yes        | Reply only | Data                                            | No           |
| Spacebridge IP Tunnel    | Reply only | Yes        | Data                                            | No           |
| SMS via Hologram Cloud   | Yes        | Yes        | Outbound: Data, Inbound: Free                   | Yes          |
| Circuit-Switched SMS     | Yes        | Yes        | Outbound: Per message, Inbound: Buy phone number| Inbound Only |

# Nova Data Metering
Per-MB data pricing and per-message SMS pricing depends on your zone and billing plan.
See [Hologram IoT Cellular Platform Plans][08] for details.

For example, the USA "pay as you go" type plan,
with no contract or roaming charges within USA:

| Element                         | Fee             |
|:-------------------------------:|:---------------:|
| Platform Fee                    | $0.40           |
| Cost (billed per kb)            | $0.60 / MB      |
| Inbound SMS (sent to device)    | FREE            |
| Outbound SMS (sent from device) | $0.19 / Message |

# Step X: Create a Hologram Account
Following the procedures outlined [here][02],
you'll need to [create a Hologram account][01] to manage your devices and billing.
From the Hologram Dashboard, click the Activate SIM button in the top-right corner.

With your device powered off,
insert the Hologram SIM Card into your device.
We'll power on the device in a latter step.

# Step X: Install Hologram SDK and Command Line Tools
The Hologram [Python SDK][04] and [command line (CLI)][05]
tools are both open source and on [Github][06].
These tools are downloadable via `curl` from your terminal.

```bash
# from any directory, install the tools
curl -L hologram.io/python-install | bash

# to update these tools
curl -L hologram.io/python-update | bash
```

After this install,
you'll have access to the `hologram` CLI tool.
Help for this tool is as follows:

```bash
# hologram cli help message
$ hologram --help
usage: hologram [-h]
                {send, receive, spacebridge, heartbeat, modem, version, activate}
                ...

Hologram Python SDK version 0.6.1.
This hologram command line program allows you to interact
with the Hologram SDK.

optional arguments:
  -h, --help            show this help message and exit

subcommands:
  valid subcommands

  {send, receive, spacebridge, heartbeat, modem, version, activate}
    send         This subcommand allows you to send cloud messages to the Hologram
                 Cloud or SMS to a specified destination number. Type hologram send --help for more
                 information.

    receive      This subcommand allows you to listen on a given host and port for
                 incoming cloud messages or SMS. Type hologram receive --help for more information.

    spacebridge  This subcommand allows you to use spacebridge by establishing
                 a connection via the Python SDK. Type hologram spacebridge --help for more information.

    heartbeat    This subcommand allows you to send periodic messages to your
                 device via a specified period parameter. Type hologram heartbeat --help for more
                 information.

    modem        This subcommand allows you to use the SDK to interact with a
                 supported modem. Type hologram modem --help for more information.

    version      This subcommand prints the Hologram SDK version

    activate     This subcommand allows you to activate a SIM via the Hologram SDK.
```

# Step X: Install Raspberry Pi Drivers
Since the Cat-M1 Nova relies on a different chipset vendor than the 3G/2G Nova
(underneath the hood of the u-blox),
there is a different driver required for the `hologram` CLI tool.
To load the driver you need two commands:

```bash
# add the option module to the kernel
sudo modprobe option

# update the id
sudo sh -c 'echo -n 05c6 90b2 > /sys/bus/usb-serial/drivers/option1/new_id'
```

>**NOTE:** If you don't do the above kernel fix,
you'll typical get the following error message from `hologram`:
ERROR: Unable to detect a usable serial port

This kernel module will work until the next reboot.
You may want to make this module permanent, and to do this, use the folllowing:

** DOESN'T WORK **
```bash
# to make this permanent
sudo sh -c 'echo option >> /etc/modules'
sudo depmod
sudo reboot

# after reboot, run this to check if module is now permanent
lsmod | grep option
```
must find a way to do this permanently:
`sudo sh -c 'echo -n 05c6 90b2 > /sys/bus/usb-serial/drivers/option1/new_id'`
** DOESN'T WORK **

You can find further documentation [here][26], [here][27], and [here][28].

# Step X: Basic Configure and Testing
Follow the instructions [here][07] to install the devices antenna,
make sure the SIM is installed, and then plug in the devices USB
into your computer where you installed the Hologram SDK / CLI.
The LED's have the following meaning:

* **Blue LED (Power)** - When on, device has booted up and modem is powered on.
* **Red LED (Network)** - When off, no network is detected.  When blinking, a network has been detected.
When continuously on, modem is connected to a network.

You can test the general status of your device with these commands:

```bash
# print rssi signal strength
$ sudo hologram modem signal
Signal strength: 25,99

# print rssi signal strength every 5 seconds
sudo hologram modem signal --repeat 5

# print IMSI value of the attached SIM
$ sudo hologram modem sim
ICCID: 8944500408176003276

# print modem name
$ sudo hologram modem type
Type: Hologram Nova US 4G LTE Cat-M1 Cellular USB Modem (R404)

# establishes a cellular connection
$ sudo hologram modem connect -v
INFO: Detected modem NovaM_R404
INFO: found working port at /dev/ttyUSB3
INFO: chatscript file: /usr/local/lib/python2.7/dist-packages/Hologram/Network/Modem/chatscripts/default-script
INFO: Instantiated a NovaM_R404 interface with device name of /dev/ttyUSB3
INFO: Connecting to cell network with timeout of 200 seconds
INFO: Checking for existing PPP sessions
INFO: Rerouting packets to ppp0 interface
INFO: Successfully connected to cell network

# brings down a cellular connection
$ sudo hologram modem disconnect
Checking for existing PPP sessions
Found existing PPP session on pid: 2768
Killing pid 2768 now

# deoesn't appear to be implemented yet
sudo hologram modem location
```

Now test the device.
You can immediately send a message with this command:
`sudo hologram send -t <topics> <message>`.
To receive inbound messages (try from the Hologram Dashboard):
`sudo hologram receive`.

```bash
# connect the hologram device to a network
sudo hologram connect

#
```

# Step X: Hologram Cloud Messaging
The [Hologram Socket API][16] provides a outbound low-level TCP socket interface for embedded devices
to communicate with the Hologram Cloud.
The inbound [Hologram REST API][17] offers much of the same functionality,
but the Socket API is preferable in bandwidth-constrained environments.

Establish a TCP connection to the host
`cloudsocket.hologram.io` (aka `23.253.146.203`)
and port `9999` and send an API message.
The message will appear on the [Hologram Dashboard Console][10].
Unique Socket API credentials are associated with each Hologram device,
and must be supplied when communicating.
The credentials, aka device key, can be generated on the [Hologram Device Dashboard][18].

Here is an example of an outbound Hologram Cloud Message:

```bash
# send message to hologram dashboard console
$ echo '{"devicekey":"1%psF8vO", "data":"Hello, World!", "tags":["Test", "Hologram-Cloud-Messaging"]}' | nc -i1 cloudsocket.hologram.io 9999
[0,0]
```

Notice that the server responds with an array of two numbers.
The first describes any errors, and the second is currently always set to zero.
The first digit maps to the following response codes:

* **0** – Send successful, no error
* **1** – Connection was closed so we couldn’t read enough
* **2** – Couldn’t parse the message
* **3** – Auth section of message was invalid
* **4** – Payload type was invalid
* **5** – Protocol type was invalid
* **6** – An internal error occurred

For example, a response of `[0,0]` indicates success,
and a response of `[3,0]` indicates invalid authentication.

# Step X: Connect Raspberry Pi to Cat-M1 Network
https://projects.hologram.io/hologram/add-cellular-to-a-raspberry-pi-with-hologram-nova-ea5926?ref=channel&ref_id=19412_trending___&offset=3

# Step X:
Next, you do the [Access Point Name (APN) settings][03].
I used the following APN settings:

* **APN:** hologram
* **APN username:** (none)
* **APN password:** (none)
* **IP Address:** Dynamic (using DHCP)
* **Data Roaming:** Enabled

Your device should now be connected to the Hologram cellular network.

# Device File Name for Nova
```
$ sudo hologram modem connect -v
INFO: Detected modem NovaM_R404
INFO: found working port at /dev/ttyUSB2
INFO: chatscript file: /usr/local/lib/python2.7/dist-packages/Hologram/Network/Modem/chatscripts/default-script
INFO: Instantiated a NovaM_R404 interface with device name of /dev/ttyUSB2
INFO: Connecting to cell network with timeout of 200 seconds
INFO: Checking for existing PPP sessions
INFO: Rerouting packets to ppp0 interface
INFO: Successfully connected to cell network
```

Under Linux, each and every hardware device, including USB ports,
are treated as a file and call a [device file][25].
A device file allows a user to access hardware devices,
but shields the users from the technical details about the hardware.
A conventional serial port will typically have a device file such as
`/dev/ttyS0`, `/dev/ttyS1`, etc. but a USB serial ports can appear as
`/dev/ttyUSB0`, `/dev/ttyUSB1`, etc. or even appear in `/dev/usb`.

When your device is plugged in, Linux assigns the device file name
as it sees fit and isn’t always predicable ([it doesn’t have to be this way][23]).
From the output of [`lsusb`][09] before and after you plug in the device,
you can deduce what device file your serial device is connected too.

```bash
# without nova device
$ lsusb
Bus 001 Device 003: ID 0424:ec00 Standard Microsystems Corp. SMSC9512/9514 Fast Ethernet Adapter
Bus 001 Device 002: ID 0424:9514 Standard Microsystems Corp. SMC9514 Hub
Bus 001 Device 001: ID 1d6b:0002 Linux Foundation 2.0 root hub

# with nova device plugged in
$ lsusb
Bus 001 Device 017: ID 05c6:90b2 Qualcomm, Inc.
Bus 001 Device 003: ID 0424:ec00 Standard Microsystems Corp. SMSC9512/9514 Fast Ethernet Adapter
Bus 001 Device 002: ID 0424:9514 Standard Microsystems Corp. SMC9514 Hub
Bus 001 Device 001: ID 1d6b:0002 Linux Foundation 2.0 root hub
```

The string `Bus 001 Device 017` hints
I should search for the device file in the directory `/dev/bus`.
I find the device file is `/dev/bus/usb/001/017`.

Linux creates device nodes dynamically on the fly as they are needed.
It is basically a hotplug system, freeing the user from  making node assignments,
but also means you have to search around to find where Linux put your device file.
The command-line tool `hologram` takes care of all this,
so you don't need to create a [persistent device name][23].

Never the less, if your curious about where things are located,
running of the `lsusb` command above tells us
UPS's VendorID:ProductID pair is `05c6:90b2`.
Using the `udevadm info -a -n /dev/bus/usb/001/017` command,
you conclude that the serial number of the device is `3f980000.usb`.
See below: (command and output)

```bash
# get the serial number of the UPS device
udevadm info -a -n /dev/bus/usb/001/017 | grep ATTRS{serial}
    ATTRS{serial}=="3f980000.usb"
```

Armed with this information and following guidance from [this post][24] and [this one][29],
I could have update the [UDEV rules][23].
But **Don't Do This**, since from my experimenting,
I believe it will cause problems with `hologram`.
It appears that this tool is designed to deal with
all covert behavior of Linux device files.



[01]:https://dashboard.hologram.io/account/register
[02]:https://hologram.io/docs/guide/connect/connect-device/
[03]:https://hologram.io/docs/guide/connect/connect-device/#apn-settings
[04]:https://hologram.io/docs/reference/cloud/python-sdk/
[05]:https://hologram.io/docs/reference/cloud/hologram-cli/
[06]:https://github.com/hologram-io
[07]:https://hologram.io/docs/reference/nova/user-manual/#quad-band-flexible-ufl-antennas
[08]:https://hologram.io/pricing/
[09]:http://linux.die.net/man/8/lsusb
[10]:https://dashboard.hologram.io/routes?drawer=full
[11]:https://hologram.io/docs/guide/connect/protocols/#hologram-cloud-messaging
[12]:https://hologram.io/docs/guide/connect/protocols/#direct-ip
[13]:https://hologram.io/docs/guide/connect/protocols/#spacebridge-ip-tunnel
[14]:https://hologram.io/docs/guide/connect/protocols/#sms-via-hologram-cloud
[15]:https://hologram.io/docs/guide/connect/protocols/#circuit-switched-sms
[16]:https://hologram.io/docs/reference/cloud/embedded/
[17]:https://hologram.io/docs/reference/cloud/http/
[18]:https://dashboard.hologram.io/
[19]:https://hologram.io/docs/guide/cloud/spacebridge-tunnel/
[20]:https://hologram.io/docs/reference/cloud/embedded/#send-a-message-to-the-hologram-cloud
[21]:https://hologram.io/docs/reference/cloud/http/#/reference/hologram-cloud/sms/send-sms-to-a-device
[22]:http://hologram.io/wp-content/uploads/2017/05/u-blox-AT-Commands-Manual.pdf
[23]:http://hintshop.ludvig.co.nz/show/persistent-names-usb-serial-devices/
[24]:http://hackaday.com/2009/09/18/how-to-write-udev-rules/
[25]:http://en.wikipedia.org/wiki/Device_file
[26]:https://hologram.io/docs/reference/cloud/python-sdk/#novam_r404
[27]:https://superuser.com/questions/691271/what-does-modprobe-option-do
[28]:https://askubuntu.com/questions/299676/how-to-install-3rd-party-module-so-that-it-is-loaded-on-boot
[29]:https://opensource.com/article/18/11/udev
[30]:

