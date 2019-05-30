**CONVERT THIS BLOG TO `ip` AND DROP `ifconfig`!!!!!!!**

check out linssid and iwscanner





![ad-hoc](http://www.nnre.ru/kompyutery_i_internet/sobiraem_kompyuter_svoimi_rukami/i_184.png)
A [wireless ad-hoc network (WANET)][02],
is a decentralized type of wireless network.
The network is ad-hoc because it does not rely on a pre-existing infrastructure,
such as a routers in wired networks or WiFi [access points][01] in managed (infrastructure) wireless networks.
In a ad-hoc network, wireless stations communicate directly with one another on a peer-to-peer basis,
without using an access point or any intermediate network router.
Ad-hoc networks can form a local network, but don't need to be isoltated,
since you can configure them to share an Internet connection.
The new [WiFi Direct][61] standard also builds on ad-hoc mode,
allowing devices to communicate directly over WiFi signals.

The posting "[Creating an Ad-hoc network for your Raspberry Pi][15]"
does an excellent job of giving you the basic steps
needed to create an Ad-Hoc WiFi network.
It quickly shows you what files need to be modified but with minimal explanation.
I hope to do a better job here,
avoid some pit fails,
and make it easily repeatable via some scripts.

To get my Ad-Hoc WiFi network operation, I'm going to follow these basic steps:

1. Establish one of the ad-hoc wireless nodes, called the bridge node, as the gateway via an Ethernet connection to my LAN and WiFi access to all the ad-hoc wireless nodes
1. All other ad-hoc wireless nodes, called standard nodes, will only have WiFi access.  They will use the bridge node to gain access to the Internet or allow allow access to these ad-hoc nodes from my LAN
1. Getting the Wireless Interface Name and Hardware Address
1. Connect to WiFi
1. Install and Configure DHCP Server
1. Update interfaces Config File
1. RPi Network Conf Bootstrapper
1. Prevent DHCP From Starting At Boot
1. Reboot and Test

I will provide description, instructions, and tools to create the following thypes of ad-hoc networks:

* **Static Ad-Hoc WiFi Network** - Configure the ad-hoc network using _static IP addressing_
* **Dynamic Ad-Hoc WiFi Network** - Configure the ad-hoc network using _dynamic IP addressing_
* **Fallback Ad-Hoc WiFi Network** - Configure the ad-hoc network to use access point if available but use _ad-hoc as a fallback

>>The naming convention I'm using for ad-hoc WiFi nodes is `meshNN`.
Don't let this confuse you into believing what we have here is a mesh network; it is not.
I'm using this naming convention because I will be converting this
ad-hoc network into a mesh network in the future.
I'm establishing here some scripts that I'll be reusing when I make my mesh network.

# Background
A WiFi network device always operates in one of six modes
(or for some special hardware, multiple modes as in [AP+STA][52] or [WDS with AP Mode][53])
that 802.11 wireless cards can operate in:

1.  **Master / Access Point** - acting as an access point (AP)
1.  **Managed / Station / STA / Access Point Client / Wireless Client / Client** - act as a client to an access point
1.  **Ad-Hoc / Point-to-Point / Wireless Bridge** - directly connecting two or more computers without an access point
1.  **Mesh / Point-to-Multipoint / Multi-point Bridge** - decentralized interconnection with other wireless access points
1.  **Repeater / WDS** - wireless interconnection to other access points to form a single managed network
1.  **Monitor** - passively read packets, no packets are transmitted

You may also hear about Infrastructure Mode.
Strictly speaking, Infrastructure Mode is not a device mode but a concept.

We are **_not_** interested in creating a wireless access point out of one device
so the other devices can home on it.
While [this could be done][57], and it may adress some use cases,
it requires [special software (`hostapd`)][58],
we are establishing a pure peer-to-peer arangement.

We are specifically interested in ad-hoc mode.
On wireless computer networks, ad-hoc mode is a method for
wireless devices to directly communicate with each other.
Operating in ad-hoc mode allows all wireless devices within range
of each other to discover and communicate in peer-to-peer fashion without involving central access points.

Ad-hoc mode, also referred to as peer-to-peer mode or an
Independent Basic Service Set (IBSS),
is used to create a wireless network
without the need of having a Master Access Point in the network.
Each station in an IBSS network is managing the network itself.
Ad-Hoc is useful for connecting two or more computers to each other
when no (useful) AP is around for this purpose.

Ad-hoc mode is useful for establishing a network where wireless infrastructure
does not exist or where other network services
(such as Internet access, printer access, etc.) are not required.

## WiFi Interface Adapter Must Support A-Hoc Networking
Keep in mind that [not all Raspberry Pi WiFi adapters will support ad-hoc mode][04].
The WiFi adapters I'm using are the popular and inexpensive
[Edimax EW-7811Un][06] and [OURLINK WU110EC][05].

To test if the WiFi adapter can be placed into Ad-Hoc mode,
use the following commands:

```bash
# take the wifi interface down
sudo ifconfig wlan0 down

# set the interface to ad-hoc mode
sudo iwconfig wlan0 mode ad-hoc

# check to see if interface is in ad-hoc mode
sudo iwconfig wlan0 | grep Mode
```

Android devices, wireless printers, Google’s Chromecast,
and a wide variety of other WiFi-enabled devices don’t want to deal
with the problems of ad-hoc networks and will refuse to connect to them,
and only connecting to networks in infrastructure mode.
There’s not much you can do about this;
you just have to use a network in infrastructure mode rather than ad-hoc mode.

## Limitations of Ad Hoc Mode Wireless Networking
[Ad-Hoc networks suffer from several key limitations][54] that require special consideration.

* **Security** - WiFi devices in ad-hoc mode offer minimal security
against unwanted incoming connections.
For example, ad-hoc devices cannot disable SSID broadcast
like infrastructure mode devices can.
Attackers generally will have little difficulty finding your
ad-hoc device if they get within signal range.
* **Signal Strength Monitoring** - The normal operating system software indications
seen when connected in infrastructure mode are unavailable in ad-hoc mode.
Without the ability to monitor the strength of signals,
maintaining a stable connection can be difficult,
especially when the ad-hoc devices change their positions.
* **Speed** - Ad-hoc mode ofen runs slower than infrastructure mode.
Specifically, WiFi networking standards like 802.11g require only that ad-hoc mode
communication supports 11 Mbps connection speeds.
WiFi devices supporting 54 Mbps or higher in infrastructure mode will drop back
to a maximum of 11 Mbps when changed to ad-hoc mode.

The most concerning of these limitations is security
but there are things that can be done.
For one thing, you can [set up an ad-hoc network using WPA security][56].

## NetworkManager
* [RPi NetworkManager CLI](http://gary-dalton.github.io/RaspberryPi-projects/rpi_nmcli.html)
* [Exploring NetworkManager, D-Bus, systemd, and Raspberry Pi](http://dev.iachieved.it/iachievedit/exploring-networkmanager-d-bus-systemd-and-raspberry-pi/)
* According to [this article](https://raspberrypi.stackexchange.com/questions/48307/sharing-the-pis-wifi-connection-through-the-ethernet-port),
Network Manager can conflict with dhcpd (the default manager on Raspbian), hence you may need to disable dhcpd.

The default networking setup on Ubuntu
assumes that you are using the machine as a desktop or a laptop
([generally not on Raspberry Pi][49] but [it can be installed][50]).
To aid in the user experiance, the [NetworkManager][14] software utility
has been provided to some other Linux distributions.
NetworkManager is a service for Linux which manages various networking interfaces,
including physical such as Ethernet and wireless,
virtual such as VPN and other tunnels,
and [it can work with ad-hoc networks][75].
NetworkManager can be configured to control some or all of a system’s interfaces.
NetworkManager attempts to keep an active network connection available at all times.
Its aim is to simplify the use of computer networks on Linux-based
and other Unix-like operating systems.
NetworkManager has a command-line tool for controlling it, called [`nmcli`][16].

* See [nmcli](https://fedoraproject.org/wiki/Networking/CLI)
* [Connect to a wireless network using command line nmcli](https://nullr0ute.com/2016/09/connect-to-a-wireless-network-using-command-line-nmcli/)

The point of NetworkManager is to make networking configuration
and setup as painless and automatic as possible for the novice user.
If using DHCP, NetworkManager is intended to replace default routes,
obtain IP addresses from a DHCP server and change nameservers whenever it sees fit.
In effect, the goal of NetworkManager is to make networking just work.

The trouble with this is that it will fight you for control if you attempt anything but the basic network.
Because of this, you may need to disable NetworkManager.
If NetworkManager is installed and set to run with upstart (the default),
it will try to manage your network interfaces.
Before you start configuring the ad-hoc network,
you need to stop the NetworkManager.
To see if NetworkManager is being used,
check with `sudo service network-manager status`.

For maximum control, it may make sense to [disable NetworkManager][55]
on some or all your interfaces.
To stop NetworkManager, you can do one of these three things:

1. Remove it: `sudo apt-get purge network-manager network-manager-gnome`
1. Permanently Disable it: Edit `/etc/init/network-manager.conf` and add the line `manual` near the beginning of the file.
1. Temporarily Disable it: Using [command-line tool for controlling NetworkManager][16], `sudo service network-manager stop`.
1. Disable Network Manager for a Particular Network Interface: See the articles ["How to disable Network Manager on Linux"][55] and ["How do I prevent Network Manager from controlling an interface?"][51].

Within the Debian distributions (e.g. Ubuntu and Raspbian),
one way to tell NetworkManager to stop controlling a particular interface
is by telling NetworkManager to ignore ALL interfaces listed in the `/etc/network/interfaces` file.
This is done by adding the following lines to the Network Manager
configuration file [`/etc/NetworkManager/NetworkManager.conf`][59]:

```
[main]
plugins=ifupdown

[ifupdown]
managed=false
```

Since this will only affect interfaces listed in the `/etc/network/interfaces` file,
any interface not listed there will remain under NetworkManager control.
This the simplest, and lest disruptive way to get NetworkManager out of you way
but let it continue to run for other purposes.

## Networking and WiFi Tools
The Linux operating systems comes with various set of tools
allowing you to manipulate network, the [Wireless Extensions][03] and monitor wireless networks.
These tools can be used to find out network speed, bit rate,
signal quality/strength, and much more.

[`iw`][24] is the basic tool for WiFi network-related tasks,
such as finding the WiFi device name, and scanning access points.
[`wpa_supplicant`][13] is the wireless tool for connecting to a WPA/WPA2 network.
[`ip`][21] is used for enabling/disabling devices,
and finding out general network interface information.

* [`ip`][21] - show / manipulate routing, devices, policy routing and tunnels

The above utilities are widely distributed, but many network configuration manuals and blogs
still refer to [`ifconfig`][20] and [`route`][41]
as the primary network configuration tools,
even when `ifconfig` is known to behave inadequately in modern network environments.

* [`ifconfig`][20] - configure a network interface
* [`route`][41] - command is used to show/manipulate the IP routing table.
* [`ping`][43] - Packet INternet Gropper (ping) is like a sonar pulse sent to detect connection and latency
* [`dig`][44] - Domain Information Groper (di) is for interrogating DNS name servers
* [`traceroute`][42] - displays an IP packets route (path) and measuring transit delays of packets

Note that `ifconfig` is being deprecated via the [iproute2 package][19]
and is being replaced by [`ip`][17],
which you can see further explained/motivated [here][18].
(**NOTE:** [`ifconfig` isn't the only utility being deprecated][27].)

Managing your [WiFi via command line][39] can be done via an array of tools.
[Wireless Tools for Linux and Linux Wireless Extension][03]
are a collection of user-space utilities
written for Linux to support and facilitate
the configuration of device drivers of wireless network interface controllers.

* [`iwconfig`][22] - configure a wireless network interface (supports WEP)
* [`ifrename`][32] - renames network interfaces based on various static criteria
* [`iwevent`][33] - displays wireless events generated by drivers and setting changes
* [`iwgetid`][34] - reports ESSID, NWID or AP/Cell Address of wireless networks
* [`iwlist`][35] - gets detailed wireless information from a wireless interface
* [`iwpriv`][36] - configures optional (private) parameters of a wireless network interface
* [`iwspy`][37] - gets wireless statistics from specific node

Tools for user space daemon for access points and WPA/WPA2 authentication.

* [`wpa_cli`][29] - command line client program for interacting with `wpa_supplicant`.
* [`wpa_supplicant`][13] - WiFi Protected Access client and [WPA/WPA2/IEEE 802.1X supplicant][28]
* [`wpa_supplicant.conf`][12] - configuration file for `wpa_supplicant`
* [`hostapd`][38] - user space software turns normal network interface cards into access point

Some additional useful tools.

* [`rfkill`][74] - tool for accessing the Linux [rfkill device interface][73], which is used to enable and disable wireless networking devices, typically WLAN, Bluetooth and mobile broadband
* [`wavemon`][40] - signal levels monitoring application for wireless network devices.

Note that `iw` is the anticipated successor to the `iwconfig` family of tools
but [still under development][25].
Not all wireless devices and drivers support the [nl80211 standard][26],
so the older wireless tools above may still be required.

* [`iw`][24] - show / manipulate wireless devices and their configuration (supports WEP)

Below is a list of examples of the above utilities being used
(also see cheet sheet for [`ip`][80], [subnet masks][81]):

```bash
# find out your wireless card chipset information
lspci
lspci | grep -i wireless
lspci | egrep -i --color 'wifi|wlan|wireless'

# use the following command to get information about wireless card driver
lspci -vv -s 0c:00.0

# list all the connected wifi adapters
# doesn't work on raspberry pi
iw dev

# verify that you are connected to a network
iw wlan0 link

# turn down the wireless device
sudo ip link set wlan0 down

# execute the following command to bring it up
sudo ip link set wlan0 up

# show full details of wifi networks
iwlist wlan0 scan

# list the available channels and what is being used by your device
iwlist wlan0 channel

# list the ssid of all the available networks
iwlist wlan0 scan | grep ESSID

# lists how many networks are on each channel
iwlist wlan0 scan | grep Frequency | sort | uniq -c | sort -n

# check the current state of all your network devices
ip link

# check that the wireless device is up
ip link show wlan0

# check the connection status
iw wlan0 link

# report your ESSID, NWID or AP/Cell Address of wireless network
iwgetid

# list detailed wireless information from a wireless interface
iwlist

# show the ip address of wireless interface
sudo ip addr show

# connecting to open network (no encryption)
iw dev wlan0 connect your-essid   # doesn't work on raspberry pi
iwconfig wlan0 essid your-essid

# connecting to open network (no encryption) on specific channel/frequency
iw dev wlan0 connect your-essid 2432    # doesn't work on raspberry pi
iwconfig wlan0 essid your-essid freq 2432M

# get overall quality of the link
iwconfig wlan0 | grep -i --color quality

# find out received signal strength (RSSI – how strong the received signal is)
iwconfig wlan0 | grep -i --color signal

# See link quality continuously on screen
watch -n 1 cat /proc/net/wireless

# displays continuously updated information about signal levels,
# as well as, wireless-specific and general network information
wavemon

# displays wireless events received through the RTNetlink socket.
# each line displays the specific wireless event which describes
# what has happened on the specified wireless interface
iwevent

# obtain IP address by DHCP
sudo dhclient wlan0

# set ip address
sudo ifconfig wlan0 192.168.100.1
sudo ip addr add 192.168.100.1 dev wlan0

# remove an assigned IP address from the given interface
sudo ip addr del 192.168.50.5/24 dev eth1

# check the routing table information
sudo ip route show
sudo route

# adding a default gateway
sudo route add default gw 192.168.0.1
sudo ip route add default via 192.168.0.1

# use the ip command to verify the IP address assigned by DHCP. The IP address is 192.168.1.113 from below.
ip addr show wlan0

# check to see if NetworkManager is running
service NetworkManager status
```

|                iw Command                      |            wireless-tools Command              | Description       |
|:----------------------------------------------:|:----------------------------------------------:|:-----------------:|
| iw dev wlan0 link                              | iwconfig wlan0                                 | Getting link status. |
| iw dev wlan0 scan                              | iwlist wlan0 scan                              | Scanning for available access points. |
| iw dev wlan0 set type ibss                     | iwconfig wlan0 mode ad-hoc                     | Setting the operation mode to ad-hoc. |
| ifconfig wlan0 192.168.100.1                   | ip addr add 192.168.100.1 dev wlan0            | Set IP address |
| iw dev wlan0 connect your-essid                | iwconfig wlan0 essid your-essid                | Connecting to open network (no encryption). |
| iw dev wlan0 connect your-essid 2432           | iwconfig wlan0 essid your-essid freq 2432M     | Connecting to open network specifying channel (no encryption). |
| iw dev wlan0 connect your-essid key 0:your-key | iwconfig wlan0 essid your-essid key your-key   | Connecting to WEP encrypted network using hexadecimal key. |
| iw dev wlan0 connect your-essid key 0:your-key | iwconfig wlan0 essid your-essid key s:your-key | Connecting to WEP encrypted network using ASCII key. |
| iw dev wlan0 set power_save on                 | iwconfig wlan0 power on                        | Enabling power save. |

Fo WAP encryption, the command `iw` will not do.
You need `wpa_supplicant`.

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

The console cable is a USB serial device,
and I have give it a [usb persistent name][70] of `ccable33v`.
(For the Adafruit console cable,
I added the following UDEV rule to a file in the `/etc/udev/rules.d.` directory:
`SUBSYSTEM=="tty", ATTRS{idVendor}=="067b", ATTRS{idProduct}=="2303", SYMLINK+="ccable33v"`.)
With this, I can log into my Raspberry Pi device with:

```bash
# login to raspberry pi console
sudo screen /dev/ccable33v 115200,cs8

# NOTE: press CTRL + A then k. To logout and kill all screen session
```

**NOTE:** If this doesn't work, make sure you have the serial console correctly configured.
During the intial Raspberry Pi configuration using `sudo raspi-config`,
make sure to select "Boot Options" and choose "B1 Console".
You will need a password to get console access,
which gives you greater security, and allow console cables to work via
[`screen`][71] or [`microcom`][72].

## Finding Your RPi
If you placed your Raspberry Pi on your network but don't know its IP address,
you may use the [Adafruit Pi Finder script][62] ([source is here][64]) to find it.

```bash
# get finder shell script from github
curl -o finder.sh https://raw.githubusercontent.com/adafruit/Adafruit-Occidentalis/master/finder.sh

# make finder executable
chmod +x finder.sh

# execute finder
./finder.sh -t
```


All the ad-hoc networks discussed here will have the following layout:

[basic-ad-hoc-network!](/home/jeff/Downloads/qMp-and-home-router-configuration.odp)

* All the nodes are Raspberry Pi. The nodes `mesh02` and `mesh03` are both RPi A equipped
with a WiFi dongle to support the ad-hoc WiFi network.
* The bridge node, called `mesh01`, is a RPi 1 and has both WiFi dongle for the ad-hoc network
and a Ethernet connection to my LAN router. With these two network interfaces,
it can be used to bridge my LAN network and the ad-hoc network
(allowing me to ssh into all the devices).
* Only `mesh01` will have access to my LAN or the Internet but it will server as a
gateway for the other nodes.  This isn't required for the ad-hoc network per say,
but it does allow me to update the nodes software as needed.
* The ad-hoc network will be `192.168.100.xxx`.

###########################################
On boot up, Linux uses the `/etc/network/interfaces` file to determine how its to use
the installed WiFi and Ethernet network interfaces.
Once Linux is up and running,
you can use the `ifconfig` (or `ip`) and `iwconfig` (or `iw`) commands to adjust
what `/etc/network/interfaces` may have established.
In some instances,
we will want to permanently establish an ad-hoc network,
so the use the `/etc/network/interfaces` file is way to go.
Other times you'll want to do something temporary via the command line.

I'll be using both method here.
bla bla bla
###########################################

## Typical Network Interface and Security Setup
First, lets review what your setings will be prior to making the changes
to create your ad-hoc network.
The file `/etc/network/interfaces` contains network interface configuration
information for when you boot up or use the [`ifup` and `ifdown` commands][10].
For additional documentation on how to make use of this file,
check out the examples in the file `/usr/share/doc/ifupdown/examples/network-interfaces`,
the [manual page for the file][08],
and the [network configuration documentation][07],
or this [good detailed explanation of `/etc/network/interfaces` syntax][09].

The default `/etc/network/interfaces` configuration file for
the Raspberry Pi will look something like this:

```bash
# interfaces(5) file used by ifup(8) and ifdown(8)

# Please note that this file is written to be used with dhcpcd
# For static IP, consult /etc/dhcpcd.conf and 'man dhcpcd.conf'

# Include files from /etc/network/interfaces.d:
source-directory /etc/network/interfaces.d

# start loopback interfaces upon boot up and register loopback interface
auto lo
iface lo inet loopback

# start ethernet interface at boot time and use dhcp
auto eth0
iface eth0 inet dhcp

# static IP address to interface USB Gadget (RPi Zero)
auto usb0
allow-hotplug usb0
iface usb0 inet static
    address 10.0.1.1
    netmask 255.255.255.0

# start wifi interface using dhcp and wpa
auto wlan0
allow-hotplug wlan0
iface wlan0 inet dhcp
    wpa-conf /etc/wpa_supplicant/wpa_supplicant.conf

# configure each 'default' network in wpa_supplicant.conf with DHCP
# upon a successful connection to an access point
iface default inet dhcp
```

Within `/etc/wpa_supplicant/wpa_supplicant.conf`,
you can assign a value to the `id_str` variable for each
network={...} block in order to uniquely identify each network.
Once this is done, the value of this variable can then be used within
`/etc/network/interfaces` to have each WPA network activated/configured automatically.
If the `id_str` variable is not explicitly defined for a given network in
`/etc/wpa_supplicant/wpa_supplicant.conf`, then the variable defaults to `default`.

Once changes are made to the `/etc/network/interfaces` configuration file,
it can be reloaded by `/etc/init.d/networking restart`.

The typical `/etc/wpa_supplicant/wpa_supplicant.conf`
configuration file for the Raspberry Pi would look something like this:

```bash
# country code environment variable, required for RPi 3
country=US

# path to the ctrl_interface socket and the user group
ctrl_interface=DIR=/var/run/wpa_supplicant GROUP=netdev

# allow wpa_supplicant to overwrite configuration file whenever configuration is changed
update_config=1

# 1 = wpa_supplicant initiates scanning and AP selection ; 0 = driver takes care of scanning
ap_scan=1

# wifi network settings for home network
network={
    id_str="home"              # needs to match keyword you used in the interfaces file
    psk="1CyberPhysicalSystems2"   # pre-shared key used in WPA-PSK mode ; 8 to 63 character ASCII passphrase
    ssid="74LL5"               # SSID either as an ASCII string with double quotation or as hex string
    mode=0                     # 0 = managed, 1 = ad-hoc, 2 = access point
    scan_ssid=0                # = 1 do not broadcast SSID ; = 0 SSID is visible to scans
    proto=WPA RSN              # list of supported protocals; WPA = WPA ; RSN = WPA2 (also WPA2 is alias for RSN)
    key_mgmt=WPA-PSK WPA-EAP   # list of authenticated key management protocols (WPA-PSK, WPA-EAP, ...)
    pairwise=CCMP              # accepted pairwise (unicast) ciphers for WPA (CCMP, TKIP, ...)
    auth_alg=OPEN              # authentication algorithms (OPEN, SHARED, LEAP, ...)
    priority=5                 # priority of selecting this network (larger numbers are higher priority)
}

# wifi network settings for default network
network={
    id_str="default"           # needs to match keyword you used in the interfaces file
    mode=0                     # 0 = managed, 1 = ad-hoc, 2 = access point
    scan_ssid=0                # = 1 do not broadcast SSID ; = 0 SSID is visible to scans
    key_mgmt=NOME              # list of authenticated key management protocols (WPA-PSK, WPA-EAP, ...)
    auth_alg=OPEN              # authentication algorithms (OPEN, SHARED, LEAP, ...)
    priority=1                 # priority of selecting this network (larger numbers are higher priority)
}

```

[WiFi Protected Access (WPA) and WiFi Protected Accesss II (WPA2)][45]
are 802.11 wireless authentication and encryption standards,
the successors to the simpler [Wired Equivalent Privacy (WEP)][46].
Most "locked" 802.11 wireless networks use WPA/WPA2 authentication
(its more secure than WEP)
and networks with hidden SSID (SSID not broadcasted)
can only be supported using `wpa_supplicant.conf`.
On most Linux systems, the [`wpa_supplicant`][12] daemon handles WPA/WPA2.
There is a companion file `/etc/wpa_supplicant/wpa_supplicant.conf`
which lists all accepted networks and security policies, including pre-shared keys.
Documentation on this configuration file can found in the [wpa_supplicant man page][12],
the [`wpa_supplicant` command man page][13],
[networking with multiple WiFi networks][48].
and [highly comment wpa-Supplicant configuration file][47].

Changes to the `/etc/wpa_supplicant/wpa_supplicant.conf`
configuration file can be reloaded be sending `SIGHUP` signal to `wpa_supplicant`
(i.e. `killall -HUP wpa_supplicant`).
Similarly, reloading can be triggered with the `wpa_cli reconfigure` command.

# Ah-Hoc Network Channel Sellection
* [List of WiFi Channels](https://en.wikipedia.org/wiki/List_of_WLAN_channels)
* [How to boost your Wi-Fi speed by choosing the right channel](http://www.extremetech.com/computing/179344-how-to-boost-your-wifi-speed-by-choosing-the-right-channel)

## Establishing Static Ad-Hoc WiFi Network
## Establishing Dynamic Ad-Hoc WiFi Network
## Establishing Fallback Ad-Hoc WiFi Network







[netconnectd](https://github.com/foosel/netconnectd)
is a small daemon that ensures connectivity for single-PCB devices such as the Raspberry Pi where you don't always have the means to setup your network interfaces by hand.









## Establishing Static Ad-Hoc WiFi Network
Static IP addressing is being used since its assumed that the ad-hoc network
doesn't have DHCP operating.
We'll also assume WPA is being used but see the note below concerning WEP security.
These changes to the `/etc/network/interfaces` and `/etc/wpa_supplicant/wpa_supplicant.conf` files
need to be made on all the desvice participating in the ad-hoc WiFi.
To manual configure the ad-hoc network, that is,
without the use of (or override) the `/etc/network/interfaces` configuration file,
I make use of the utilities [`ip`](http://linuxcommand.org/man_pages/ip8.html)
and [iw](https://wireless.wiki.kernel.org/en/users/Documentation/iw)
or the deprecated tools
[`ifconfig`](http://linuxcommand.org/man_pages/ifconfig8.html)
and [`iwconfig`](http://linuxcommand.org/man_pages/iwconfig8.html).
I give them both here since I found `iw` doesn't always work
and you must fall back to the old tools.

### Step 1A: Establish the Bridge Node (no encryption)
Starting with the bridge node (`mesh01` in my case),
we can establish the ad-hoc network without encryption
No encryption is easier and quicker, but of course very insecure.
If you want encryption, then go to **Step 1B** below.

When you SSH into the bridge not, make sure your entering via the Ethernet link.
You can check for the IP address via your LAN router or `ssh -X pi@mesh01.local`
in and run `ifconfig` and make sure your using the `eth0` device IP address.

```bash
# turn down the wifi interface
#sudo ifconfig wlan0 down
sudo ip link set wlan0 down

# change the device's operating mode to ad-hoc
#sudo iw dev wlan0 set type ibss
#sudo iw dev wlan0 set type adhoc
sudo iwconfig wlan0 mode ad-hoc

# change the wifi operating SSID
sudo iwconfig wlan0 essid my-ad-hoc-wifi

# change the device's operating channel
sudo iwconfig wlan0 channel 5

# bring the wireless interface up
#sudo ifconfig wlan0 up
sudo ip link set wlan0 up

# assign an IP address to the wireless interface
#sudo ifconfig wlan0 192.168.100.1
sudo ip addr add 192.168.100.1 dev wlan0

# assign an network mask to the wireless interface
#sudo ifconfig wlan0 netmask 255.255.255.0
sudo ip addr add 192.168.100.1/24 dev wlan0    # add address 192.168.100.1 with netmask 24 to device wlan0
```

Now validate everthing is working

```bash
# report your ESSID, NWID or AP/Cell Address of wireless network
iwgetid

# try ping your ip address to see it its up
ping 192.168.100.1
ping -I wlan0 192.168.100.1
```

Now preceed to Step 2.

### Step 1B: Establish the Bridge Node (WAP encryption)
The first thing to do is work on the bridge node (`mesh01` in my case).
We are going to bypass the standard configuration file `/etc/wpa_supplicant/wpa_supplicant.conf`
and create an ad-hoc WiFi enabling `/etc/wpa_supplicant/wpa_adhoc.conf`
configuration file for the Raspberry Pi.
It should look something like this:

```bash
# country code environment variable, required for RPi 3
country=US

# path to the ctrl_interface socket and the user group
ctrl_interface=DIR=/var/run/wpa_supplicant GROUP=netdev

# allow wpa_supplicant to overwrite configuration file whenever configuration is changed
update_config=1

# ap_scan=0 driver takes care of scanning, AP selection, and IEEE 802.11 association
#    parameters (e.g., WPA IE generation); this mode can also be used with
#    non-WPA drivers when using IEEE 802.1X mode; do not try to associate with
#    APs (i.e., external program needs to control association). This mode must
#    also be used when using wired Ethernet drivers.
# ap_scan=1 mode will first try to scan for existing networks,
#    and only if no matches with the enabled networks are found,
#    a new IBSS or AP mode network is created.
# ap_scan=2 mode can force the new network to be created immediately regardless of scan results
ap_scan=2

# ad-hoc wifi network settings
network={
    psk="secret-passphrase"    # key used in WPA-PSK mode ; 8 to 63 character ASCII passphrase
    ssid="my-ad-hoc-wifi"      # SSID either as an ASCII string with double quotation or as hex string
    mode=1                     # 0 = managed, 1 = ad-hoc
    frequency=2432             # channel frequency to be used, 2432 = channel 5
    id_str="ad-hoc"            # needs to match keyword you used in the interfaces file
    scan_ssid=0                # 0 = do not scan with specific Probe Request frames
    proto=WPA                  # list of supported protocals; WPA = WPA ; RSN = WPA2 (also WPA2 is alias for RSN)
    key_mgmt=WPA-NONE          # list of authenticated key management protocols (WPA-PSK, WPA-EAP, ...)
    pairwise=NONE              # accepted pairwise (unicast) ciphers for WPA (CCMP, TKIP, ...)
    group=TKIP                 # accepted group (broadcast/multicast) ciphers for WPA
    auth_alg=OPEN              # authentication algorithms (OPEN, SHARED, LEAP, ...)
}
```

Make sure you set the fill permission to ensure only root can access this file:

```bash
# make sure only root can access the file
sudo chown root.root etc/wpa_supplicant/wpa_adhoc.conf
sudo chmod 600 etc/wpa_supplicant/wpa_adhoc.conf
```

Next thing to be performed on the bridge node is the configuration of the WiFi network interface.
That involves the following:

```bash
# turn down the wifi interface
#sudo ifconfig wlan0 down
sudo ip link set wlan0 down

# change the device's operating mode to ad-hoc
#sudo iw dev wlan0 set type ibss
#sudo iw dev wlan0 set type adhoc
sudo iwconfig wlan0 mode ad-hoc

# remove - done by wpa_supplicant
# change the device's operating channel
#sudo iwconfig wlan0 channel $CHANNEL
#iw interface ibss join your_ssid frequency

# remove - done by wpa_supplicant
# change the wifi operating SSID
#sudo iwconfig wlan0 essid my-ad-hoc-wifi

# remove - not using WEP encryption
# add WEP encryption key
# sudo iwconfig wlan0 key 1234567890

# remove - only relivent for non ad-hoc networks
# set the sensitivity threshold of the network
# sudo iwconfig wlan0 sens -80

# for WAP encryption, the command iw will not do, you need wpa_supplicant
# -B means run wpa_supplicant in the background
# -D specifies the wireless driver. wext is the generic driver
# -c specifies the path for the configuration file
            nl80211 is the current standard, but not all wireless chip's modules support it.
            wext is currently deprecated, but still widely supported.
# run wpa_supplicant
#sudo wpa_supplicant -B -D nl80211 -i wlan0 -c /etc/wpa_supplicant/wpa_adhoc.conf
sudo wpa_supplicant -D nl80211 -i wlan0 -c /etc/wpa_supplicant/wpa_adhoc.conf

# bring the wireless interface up
#sudo ifconfig wlan0 up
sudo ip link set wlan0 up

# remove - using static addressing here
# start dhclient to get an address
#sudo dhclient wlan0

# assign an IP address to the wireless interface
#sudo ifconfig wlan0 192.168.100.1
sudo ip wlan0 192.168.100.1

# assign an network mask to the wireless interface
#sudo ifconfig wlan0 netmask 255.255.255.0
sudo ip wlan0 netmask 255.255.255.0

# try ping your ip address to see it its up
ping 192.168.100.1
ping -I wlan0 192.168.100.1
```

>**NOTE:** For cards using madwifi driver, you need to use other tools
to configure the WiFi interface.
sudo wlanconfig ath1 destroy
sudo wlanconfig ath1 create wlandev wifi0 wlanmode adhoc

Once these changes are made, you need to restart the network:

```bash
# restart all the network interfaces
sudo /etc/init.d/networking restart

# this command may work if the 'restart' command fails
sudo /etc/init.d/networking reload

# just start the wlan0 interface
sudo /etc/init.d/networking start wlan0
```

**NOTE:** to make this perminate for reboots do the following
For the bridge node (`mesh01` in my case),
the `/etc/network/interfaces` configuration file should look the code block below.
All the other nodes in the ad-hoc network will also have this
configuration except the ethernet interface can be removed and the IP address needs to be unique.

```bash
# start loopback interfaces upon boot up and register loopback interface
auto lo
iface lo inet loopback

#  start ethernet interface at boot time and uses dhcp
auto eth0
iface eth0 inet dhcp        # lan ip address being assigned to the device via dhcp

# wifi interface will start with hotplug event, use static IP, and use WPA
allow-hotplug wlan0
iface wlan0 inet static
    address 192.168.100.1   # ad-hoc wifi ip address being assigned to the device
    netmask 255.255.255.0
    wireless-channel 5
    wpa-conf /etc/wpa_supplicant/wpa_adhoc.conf
```

**NOTE:** To setting up the Raspberry Pi in Ad-Hoc WiFi mode using WEP and a status IP address,
you want to change the `/etc/network/interfaces` configuration file along these lines:
The `/etc/wpa_supplicant/wpa_supplicant.conf` file not used for WEP.

```bash
# wifi interface will start with hotplug event and use WEP
allow-hotplug wlan0
iface wlan0 inet static
    address 192.168.100.1   # ad-hoc wifi ip address being assigned to the device
    netmask 255.255.255.0
    wireless-mode ad-hoc
    wireless-keymode open
    wireless-channel 5
    wireless-essid my-ad-hoc-wifi
    wireless-key s:<password>
```

**NOTE:** You don't have to have a  `/etc/wpa_supplicant/wpa_supplicant.conf`
configuration file to use WAP/WAP2.
All the required information can be place in the  `/etc/wpa_supplicant/wpa_supplicant.conf`
configuration file, as shown below, but this is less secure since anyone can read
this configuration file but you need to be root to read the supplicant file.

```bash
see https://learn.adafruit.com/adafruits-raspberry-pi-lesson-3-network-setup/setting-up-wifi-with-occidentalis
# wifi interface will start with hotplug event and use WAP
auto wlan0
allow-hotplug wlan0
iface wlan0 inet dhcp
    wpa-scan-ssid 1             # 0 unless your network is hidden, then it must be 1
    wpa-ap-scan 1
    wpa-key-mgmt WPA-PSK        # list of authenticated key management protocols (WPA-PSK, WPA-EAP, ...)
    wpa-proto RSN WPA           # list of supported protocals; WPA = WPA ; RSN = WPA2 (also WPA2 is alias for RSN)
    wpa-pairwise CCMP TKIP      # accepted pairwise (unicast) ciphers for WPA (CCMP, TKIP, ...)
    wpa-group CCMP TKIP
    wpa-ssid "My Secret SSID"   # SSID either as an ASCII string with double quotation or as hex string
    wpa-psk "My SSID PSK"       # key used in WPA-PSK mode ; 8 to 63 character ASCII passphrase
```

**NOTE:** You may want to detect if your ah-hoc network has been established.
You could try scanning with `sudo iwlist wlan0 scanning | grep SSID` but this will do no good.
Ad-hoc networks do not beacon a SSID like an access point.
To "see" your ad-hoc network, use `ifconfig wlan0` and check to see if your
IP address has been set.
If so, your in business.

### Step 2: Establish the Standard Nodes
For the standard nodes in your ad-hoc network,
you follow the same proceed you applied above for the bridge node.
There are only three differances:

1. You do not need to perfrom IP Masquerading or IP Forwarding as implemented on the bridge node in the next step (Step 3)
1. The IP Address on the standard and bridge nodes must be unique (established via `sudo ip wlan0 192.168.100.X`)
1. You must tell each of the standard nodes that they will be using the bridge node as a Internet gateway

Items 1 and 2 should be trival to implement.
Item 3 allows you to share a Internet connection on one computer with on another.
Since it is the birdge node (`mesh01`) that has the Ethernet connection to the Internet,
we'll make the standard nodes aware of its address for sharing the connection.
You set the IP address to be shared as follows:

**how do you do this with ip route**

```bash
# use 192.168.100.1 as your gatway
sudo route add default gw 192.168.100.1
```

The job isn't done since the standard node needs a way
to resolve the names of Internet sites to IP addresses.
This is, we need to set the [Domain Name Server (DNS)][78] to be used.
You could use your LAN's or Google's DNS.

```bash
# using local dns to give access to named hosts on lan and internet
sudo sh -c "echo 'nameserver 192.168.1.1' >> /etc/resolv.conf"

# set domain name server to google's DNS (8.8.8.8 and 8.8.4.4)
#sudo sh -c "echo 'nameserver 8.8.8.8' >> /etc/resolv.conf"
#sudo sh -c "echo 'nameserver 8.8.4.4' >> /etc/resolv.conf"
```

You can also use [DNS Masquerading][79] to do this task.

### Step 3: Internet Connection Sharing via Bridge
The next step is to give your ad-hoc network access to the Internet
via the bridge node's Ethernet interface.
This is done by [IP Masquerading, a form of Network Address Translation (NAT)][63]
[This blog][23] provides a good example and [this paper][82] gives a good explanation.

On you device that will serve as your Internet gateway,
the bridge node (`mesh01` in my case),
you can share the Internet over wireless,

```bash
# remove this
#where ppp0 is the connection you want to share (PPPoE connection in this case)
#sudo iptables -t nat -A POSTROUTING -o ppp0 -j MASQUERADE

# -t nat -- the rule is to go into the NAT table
# -A POSTROUTING -- the rule is to be appended to the POSTROUTING chain
# -s 192.168.100.0 -- the rule applies to traffic originating from the specified address space
# -o eth0 -- name of an interface via which a packet is going to be sent
# -j MASQUERADE -- traffic matching this rule is to "jump" to the MASQUERADE target to be manipulated as described above
#
# apply ip masquerading for packets ad-hoc wifi and send out on ethernet
sudo iptables -t nat -A POSTROUTING -s 192.168.100.0 -o eth0 -j MASQUERADE
```

############ Remove ################
**IS ABOVE - The wrong way to masquerade - see this** - http://www.billauer.co.il/ipmasq-html.html

sudo iptables -t nat -A POSTROUTING -s 192.168.0.0/16 -o ppp0 -j MASQUERADE
The above command assumes that your private address space is 192.168.0.0/16 and that your Internet-facing device is ppp0. The syntax is broken down as follows:

-t nat -- the rule is to go into the nat table
-A POSTROUTING -- the rule is to be appended (-A) to the POSTROUTING chain
-s 192.168.0.0/16 -- the rule applies to traffic originating from the specified address space
-o ppp0 -- the rule applies to traffic scheduled to be routed through the specified network device
-j MASQUERADE -- traffic matching this rule is to "jump" (-j) to the MASQUERADE target to be manipulated as described above
############################

You also need to enable [IP forwarding][76].
IP forwarding should be enabled when you want the system to act as a router,
that is transfer IP packets from one network to another.
If forwarding is turned off,
the Linux kernel will first check to see which interface the packet came from.
If it didn't come from the same interface it is being sent to, the kernel will discard it.

```bash
# temporally turn on ip forwarding
sudo sh -c "echo 1 > /proc/sys/net/ipv4/ip_forward"
```

To enable permanently add the line `net.ipv4.ip_forward=1`
to the file `/etc/sysctl.conf`.
Or you could use the fillowing command:

```bash
# permanently turn on ip forwarding
sudo sysctl -w net.ipv4.ip_forward=1
```

In some cases, your ISP might limit the [Time to Live (TTL)][77]
and the result could be your unable to share the Internet.
A fix to this to modify the packet's TTL value:

```bash
# modify the out going packet TTL value
sudo iptables -t mangle -A PREROUTING -j TTL --ttl-inc 1
```

## Establishing Dynamic Ad-Hoc WiFi Network
This is going to be very similar to the configuration
of the Static Ad-Hoc WiFi Network proceedures.

[How to connect to a WPA/WPA2 WiFi network using Linux command line](http://linuxcommando.blogspot.com/2013/10/how-to-connect-to-wpawpa2-wifi-network.html)

Sometimes you may have issues with dhclient. In that case try avahi-autoip. After installing it, issue:

wlanconfig ath0 destroy

And then:

wlanconfig ath create wlandev wifi0 wlanmode adhoc

Now you will be able to ping the other hosts (peers) in the network

ping hostname.local

## Establishing Fallback Ad-Hoc WiFi Network
















# Step XXX: Ad-Hoc Mode Using DHCP and WPA Security
* [Wireless Communication Between Raspberry Pi and Your Computer](https://spin.atomicobject.com/2013/04/22/raspberry-pi-wireless-communication/)
A better way to go for the Ad-Hoc WiFi is to use WPA2 (stronger security)

and have the IP address assigned via DHCP (no preplanning of IP adressing required).
You see this in the `/etc/wpa_supplicant/wpa_ahhoc.conf` code block below:

```bash
```

The `/etc/network/interfaces` configuration file is:

```bash
```

You can query the current status of WPA/WPA2 with the shell command:

```bash
# get the status of your WPA network
wpa_cli status
```

To restart the network:

```bash
sudo /etc/init.d/networking restart

# this command may work if the 'restart' command fails
sudo /etc/init.d/networking reload
```

To start the interface, you can use

```bash
# -B means run wpa_supplicant in the background.
# -D specifies the wireless driver. wext is the generic driver.
# -c specifies the path for the configuration file.
sudo wpa_supplicant -B -i wlan0 -c /etc/wpa_supplicant/wpa_supplicant.conf

# verify that you are indeed connected to the SSID
iw wlan0 link
```

**Note:** Running `/etc/init.d/networking restart` is deprecated
because it may not re-enable some interfaces.
The solution, if you experience this, is to use `sudo reboot`, or do it the hard way.

# Step XXX: Install and Configure DHCP Server
* [Creating an Ad-hoc Wireless Network](https://wiki.gumstix.com/index.php/Creating_an_Ad-hoc_Wireless_Network)
* [Wireless Communication Between Raspberry Pi and Your Computer](https://spin.atomicobject.com/2013/04/22/raspberry-pi-wireless-communication/)
* [Setting up ad-hoc in Debian with DHCP?](http://unix.stackexchange.com/questions/44851/setting-up-ad-hoc-in-debian-with-dhcp)
* [Raspberry Pi Tutorial – Connect to WiFi or Create An Encrypted DHCP Enabled Ad-hoc Network as Fallback](http://lcdev.dk/2012/11/18/raspberry-pi-tutorial-connect-to-wifi-or-create-an-encrypted-dhcp-enabled-ad-hoc-network-as-fallback/)

Install the `isc-dhcp-server` package for the DHCP server

```bash
# install dhcp server
sudo apt-get update
sudo apt-get install isc-dhcp-server
```

Not sure if the below is correct..........

Setting up a DHCP server on the ad-hoc network will allow devices to connect
to the network without having to manually establish for them an IP address.
Only one of the ad-hoc networks nodes needs the DHCP server.

To do this, you need to update the DHCP configuration file `/etc/dhcp/udhcpd.conf`.

Put the following in the file `/etc/dhcp/udhcpd.conf`:

```bash
#start address
start  192.168.1.2

#end address
end   192.168.1.254

#interface to listen on
interface   wlan0

#maximum number of leases
max_leases   64
```

Now get DHCP up and running:

```bash
# create the leases file
sudo touch /var/lib/misc/udhcpd.leases

# run the dhcp server
sudo udhcpd /etc/udhcpd.conf
```


# Step XXX: Finding a Quite WiFi Channel
here is an easier way to find out which channels are congested. In the terminal, type:

sudo iwlist wlan0 scan | grep Frequency | sort | uniq -c | sort -n

This will show you how many networks are on each channel.

You can also use the following command to find out which channels your WiFi adaptor supports.

iwlist wlan0 channel

The first step is to see what wireless networks are available in your area.
The utility `iwlist` provides all sorts of information about your wireless environment.
To scan your environment for available networks, do the following:

```bash
# list the available channels and what is being used
$ iwlist wlan0 channel
wlan0     11 channels in total; available frequencies :
          Channel 01 : 2.412 GHz
          Channel 02 : 2.417 GHz
          Channel 03 : 2.422 GHz
          Channel 04 : 2.427 GHz
          Channel 05 : 2.432 GHz
          Channel 06 : 2.437 GHz
          Channel 07 : 2.442 GHz
          Channel 08 : 2.447 GHz
          Channel 09 : 2.452 GHz
          Channel 10 : 2.457 GHz
          Channel 11 : 2.462 GHz
          Current Frequency:2.412 GHz (Channel 1)
```

```bash
# scan for wifi networks
$ sudo iwlist wlan0 scan

wlan0     Scan completed :
          Cell 01 - Address: 48:5D:36:2E:EE:08
                    Channel:1
                    Frequency:2.412 GHz (Channel 1)
                    Quality=55/70  Signal level=-55 dBm
                    Encryption key:on
                    ESSID:"74LL5"
                    Bit Rates:1 Mb/s; 2 Mb/s; 5.5 Mb/s; 11 Mb/s; 18 Mb/s
                              24 Mb/s; 36 Mb/s; 54 Mb/s
                    Bit Rates:6 Mb/s; 9 Mb/s; 12 Mb/s; 48 Mb/s
                    Mode:Master
                    Extra:tsf=0000003c453b8b96
                    Extra: Last beacon: 40ms ago
                    IE: Unknown: 000537344C4C35
                    IE: Unknown: 010882848B962430486C
                    IE: Unknown: 030101
                    IE: Unknown: 0706555320010B1E
                    IE: Unknown: 2A0100
                    IE: Unknown: 2F0100
                    IE: IEEE 802.11i/WPA2 Version 1
                        Group Cipher : CCMP
                        Pairwise Ciphers (1) : CCMP
                        Authentication Suites (1) : PSK
                    IE: Unknown: 32040C121860
                    IE: Unknown: 2D1AAD1917FFFFFF0000000000000000000000000000000000000000
                    IE: Unknown: 3D1601080400000000000000000000000000000000000000
                    IE: Unknown: 7F080400000000000040
                    IE: Unknown: DD780050F204104A0001101044000102103B0001031047001050BA0730CF99C24BBECB5E3611CB792410210009477265656E5761766510230003424852102400013410420001311054000800060050F20400011011000E477265656E576176652042485234100800022008103C0001031049000600372A000120
                    IE: Unknown: DD09001018020A005C0000
                    IE: Unknown: DD180050F2020101880003A4000027A4000042435E0062322F00
          Cell 02 - Address: FA:8F:CA:6C:C8:1F
                    Channel:1
                    Frequency:2.412 GHz (Channel 1)
                    Quality=55/70  Signal level=-55 dBm
                    Encryption key:off
                    ESSID:""
                    Bit Rates:1 Mb/s; 2 Mb/s; 5.5 Mb/s; 11 Mb/s; 6 Mb/s
                              9 Mb/s; 12
                              .
                              .
                              .
```

To see what channels are being used or list network SSID, try this:

```bash
# list the wifi channels being used
$ sudo iwlist wlan0 scan | grep \(Channel
                    Frequency:2.412 GHz (Channel 1)
                    Frequency:2.412 GHz (Channel 1)
                    Frequency:2.412 GHz (Channel 1)
                    Frequency:2.437 GHz (Channel 6)
                    Frequency:2.437 GHz (Channel 6)

# list the ssid of the networks
$ sudo iwlist wlan0 scan | grep ESSID
                    ESSID:"74LL5"
                    ESSID:"SQLKL"
                    ESSID:""
                    ESSID:"hpsetup"
                    ESSID:"NETGEAR10"
```

To find out which channels are congested, the command below
lists how many networks are on each channel:

```bash
# lists how many networks are on each channel
$ sudo iwlist wlan0 scan | grep Frequency | sort | uniq -c | sort -n
      2                     Frequency:2.437 GHz (Channel 6)
      3                     Frequency:2.412 GHz (Channel 1)
```


# Step XXX: Internet Connection Sharing on Gateway
The next step is to get access to the Internet.
This is done by [IP Masquerading, a form of Network Address Translation (NAT)][63].
On you devie that will serve as your Intenet gateway,
you can share the Internet over wireless,

```bash
sudo iptables -t nat -A POSTROUTING -o ppp0 -j MASQUERADE
```

where ppp0 is the connection you want to share (PPPoE connection in this case)

You also need to enable IP forwarding:

############################
**IS ABOVE - The wrong way to masquerade - see this** - http://www.billauer.co.il/ipmasq-html.html

sudo iptables -t nat -A POSTROUTING -s 192.168.0.0/16 -o ppp0 -j MASQUERADE
The above command assumes that your private address space is 192.168.0.0/16 and that your Internet-facing device is ppp0. The syntax is broken down as follows:

-t nat -- the rule is to go into the nat table
-A POSTROUTING -- the rule is to be appended (-A) to the POSTROUTING chain
-s 192.168.0.0/16 -- the rule applies to traffic originating from the specified address space
-o ppp0 -- the rule applies to traffic scheduled to be routed through the specified network device
-j MASQUERADE -- traffic matching this rule is to "jump" (-j) to the MASQUERADE target to be manipulated as described above
############################

```bash
sudo sh -c "echo 1 > /proc/sys/net/ipv4/ip_forward"
```

Or, to enable permanently add the following line to `/etc/sysctl.conf`

```bash
net.ipv4.ip_forward=1
```

Some ISPs might limit the TTL so that you wont be able to share the internet. Fix:

```bash
sudo iptables -t mangle -A PREROUTING -j TTL --ttl-inc 1
```

# Step XXX: Using the Gateway's Intenet Connection
Now to use the shared internet on another computer,
set it to ad-hoc mode and assign IP address in the same subnet
as described above and perform the following:

Set the IP of computer sharing internet as gateway

```bash
sudo route add default gw 192.168.0.1
```

Set DNS server. We're using Google's DNS.

```bash
# google's domain name server (8.8.8.8  and  8.8.4.4)
#sudo sh -c "echo 'nameserver 8.8.8.8' >> /etc/resolv.conf"
#sudo sh -c "echo 'nameserver 8.8.4.4' >> /etc/resolv.conf"

# using local dns to give access to named hosts on lan and internet
sudo sh -c "echo 'nameserver 192.168.1.1' >> /etc/resolv.conf"
```

You can also use IP and DNS Masquerading to ease the task.

* [Internet Connection Sharing in Linux over Ad-hoc Wireless](http://jwalanta.blogspot.com/2010/02/internet-connection-sharing-ics-in.html)

# Step XXX: Ad-Hoc Secured with WEP
# Step XXX: Ad-Hoc Secured with WAP
[Setting up an Ad-Hoc Network – And securing it using WPA](http://techblog.aasisvinayak.com/setting-up-an-ad-hoc-network-and-securing-it-using-wpa/)

# Optional Boot Time Ad-Hoc Network
To access a Raspberry Pi, you need a display and some type of keyboard input.
This option would be very simple to use,
but it would requires the extra cost and bother of the display and keyboard.
I typically choose to login via SSH using another computer like a laptop via a WiFi access point.
But what if you want to access your Raspberry Pi (RPi)
but there is no access point it can associate with?
In the past, what I have resorted to is a [console cable][31],
which works nicely but requires access to GPIO pins and of course the properly designed cable.

* [WirelessAutoselect](https://wiki.ubuntu.com/WirawanPurwanto/WirelessAutoselect)
* [Wireless Communication Between Raspberry Pi and Your Computer](https://spin.atomicobject.com/2013/04/22/raspberry-pi-wireless-communication/)
* [How to get a Raspberry Pi to set up a wireless ad-hoc network, but only if it is not already connected](http://www.novitiate.co.uk/?p=183)


The posting "[Raspberry Pi Tutorial – Connect to WiFi or Create An Encrypted DHCP Enabled Ad-hoc Network as Fallback][30]"
provides a great idea on how to access your RPi when in this situation.
WiFi access point available.
You simply configured the RPi to first attempt to connect to your know WiFi access points.
If that fails, create and use an ad-hoc network as fallback.
This way I can always reach the RPi via another WiFi device, like a laptop,
on the same ad-hoc network using SSH.

So the idea is that we use a WPA2 protested WiFi connection for typical usage,
but use an ad-hoc network as fallback if we cannot connect on boot.
To make it easier to connect and secure with the ad-hoc network,
we'll use a DHCP server and use WPS2 for the ad-hoc network.

##############
joint the chantilly library network - sudo iwconfig wlan0 essid ffxlib
##############

# Sources
Much of what is explained here can be derived (with great difficulty) from the following sources:

* Static Ad-Hoc WiFi Network
    * [Setting up an Ad-Hoc Network – And securing it using WPA](http://techblog.aasisvinayak.com/setting-up-an-ad-hoc-network-and-securing-it-using-wpa/)
* Dynamic Ad-Hoc WiFi Network
    * [Creating an Ad-hoc network for your Raspberry Pi](http://slicepi.com/creating-an-ad-hoc-network-for-your-raspberry-pi/)
    * [Creating an Ad-hoc Wireless Network](https://wiki.gumstix.com/index.php/Creating_an_Ad-hoc_Wireless_Network)
    * [Wireless Communication Between Raspberry Pi and Your Computer](https://spin.atomicobject.com/2013/04/22/raspberry-pi-wireless-communication/)
    * [Running DHCP Server on Ad-hoc Network](https://wiki.gumstix.com/index.php/Creating_an_Ad-hoc_Wireless_Network)
    * [Setting up ad-hoc in Debian with DHCP?](http://unix.stackexchange.com/questions/44851/setting-up-ad-hoc-in-debian-with-dhcp)
* Fallback Ad-Hoc WiFi Network
    * [WirelessAutoselect](https://wiki.ubuntu.com/WirawanPurwanto/WirelessAutoselect)
    * [How to get a Raspberry Pi to set up a wireless ad-hoc network, but only if it is not already connected](http://www.novitiate.co.uk/?p=183)
    * [Raspberry Pi Tutorial – Connect to WiFi or Create An Encrypted DHCP Enabled Ad-hoc Network as Fallback](http://lcdev.dk/2012/11/18/raspberry-pi-tutorial-connect-to-wifi-or-create-an-encrypted-dhcp-enabled-ad-hoc-network-as-fallback/)
* Internet Connection
    * [Internet Connection Sharing in Linux over Ad-hoc Wireless](http://jwalanta.blogspot.com/2010/02/internet-connection-sharing-ics-in.html)
    * [IP Masquerading using iptables](http://www.billauer.co.il/ipmasq-html.html)
    * [Ubuntu IP Masquerading](http://linux.about.com/od/ubusrv_doc/a/ubusg18t03.htm)
* Handling Multiple Networks
    * [How to setup multiple WiFi networks?](http://raspberrypi.stackexchange.com/questions/11631/how-to-setup-multiple-wifi-networks)
    * [Use a Raspberry Pi with multiple WiFi networks](https://www.mikestreety.co.uk/blog/use-a-raspberry-pi-with-multiple-wifi-networks)
    * [HowTo: Connect and roam wifi networks with wpasupplicant](http://crunchbang.org/forums/viewtopic.php?id=16624)
* General Information
    * [Connect to WiFi network from command line in Linux](http://www.blackmoreops.com/2014/09/18/connect-to-wifi-network-from-command-line-in-linux/)
    * [How do I connect to a WPA wifi network using the command line?](http://askubuntu.com/questions/138472/how-do-i-connect-to-a-wpa-wifi-network-using-the-command-line)
    * [How to connect to a WPA/WPA2 WiFi network using Linux command line](http://linuxcommando.blogspot.com/2013/10/how-to-connect-to-wpawpa2-wifi-network.html)
    * [Chapter 5. Network setup](https://www.debian.org/doc/manuals/debian-reference/ch05.en.html#_the_loopback_network_interface)
    * [WifiDocs/Adhoc](https://help.ubuntu.com/community/WifiDocs/Adhoc)
    * [Wi-Fi WLAN wireless home networking information](https://help.ubuntu.com/community/WifiDocs/WiFiHowTo)
    * [Configuring a WLan ad-hoc network](http://www.mertl-research.at/ceon/doku.php?id=hardware:beaglebone_black:debian:configure_wlan_adhoc_network)
    * [Setting up Wifi with the Command Line](https://learn.adafruit.com/adafruits-raspberry-pi-lesson-3-network-setup/setting-up-wifi-with-occidentalis)



[01]:https://en.wikipedia.org/wiki/Wireless_access_point
[02]:https://en.wikipedia.org/wiki/Wireless_ad_hoc_network
[03]:http://www.labs.hpe.com/personal/Jean_Tourrilhes/Linux/Tools.html
[04]:https://www.raspberrypi.org/forums/viewtopic.php?f=28&t=88623
[05]:http://www.amazon.com/MM-OURLINK-WU110EC-Wireless-Repeater/dp/B00OZP5OJS
[06]:http://www.amazon.com/Edimax-EW-7811Un-150Mbps-Raspberry-Supports/dp/B003MTTJOY?ie=UTF8&psc=1&redirect=true&ref_=oh_aui_detailpage_o04_s00
[07]:https://wiki.debian.org/NetworkConfiguration
[08]:https://manpages.debian.org/cgi-bin/man.cgi?query=interfaces&apropos=0&sektion=0&manpath=Debian+7.0+wheezy&format=html&locale=en
[09]:http://unix.stackexchange.com/questions/128439/good-detailed-explanation-of-etc-network-interfaces-syntax
[10]:http://www.linux-tutorial.info/modules.php?name=ManPage&sec=8&manpage=ifup
[11]:https://en.wikipedia.org/wiki/Supplicant_(computer)
[12]:http://linux.die.net/man/5/wpa_supplicant.conf
[13]:http://linux.die.net/man/8/wpa_supplicant
[14]:https://wiki.debian.org/NetworkManager
[15]:http://slicepi.com/creating-an-ad-hoc-network-for-your-raspberry-pi/
[16]:https://manpages.debian.org/cgi-bin/man.cgi?sektion=1&query=nmcli&apropos=0&manpath=sid&locale=en
[17]:https://access.redhat.com/sites/default/files/attachments/rh_ip_command_cheatsheet_1214_jcs_print.pdf
[18]:http://packetpushers.net/linux-ip-command-ostensive-definition/
[19]:http://www.linuxfoundation.org/collaborate/workgroups/networking/iproute2
[20]:http://linux.die.net/man/8/ifconfig
[21]:http://linux.die.net/man/8/ip
[22]:http://linux.die.net/man/8/iwconfig
[23]:http://jwalanta.blogspot.com/2010/02/internet-connection-sharing-ics-in.html
[24]:http://linux.die.net/man/8/iw
[25]:https://wireless.wiki.kernel.org/en/users/Documentation/iw
[26]:https://wireless.wiki.kernel.org/en/developers/documentation/nl80211
[27]:https://dougvitale.wordpress.com/2011/12/21/deprecated-linux-networking-commands-and-their-replacements/
[28]:https://w1.fi/wpa_supplicant/
[29]:http://linux.die.net/man/8/wpa_cli
[30]:http://lcdev.dk/2012/11/18/raspberry-pi-tutorial-connect-to-wifi-or-create-an-encrypted-dhcp-enabled-ad-hoc-network-as-fallback/
[31]:https://learn.adafruit.com/adafruits-raspberry-pi-lesson-5-using-a-console-cable/overview
[32]:http://linux.die.net/man/8/ifrename
[33]:http://linux.die.net/man/8/iwevent
[34]:http://linux.die.net/man/8/iwgetid
[35]:http://linux.die.net/man/8/iwlist
[36]:http://linux.die.net/man/8/iwpriv
[37]:http://linux.die.net/man/8/iwspy
[38]:https://seravo.fi/2014/create-wireless-access-point-hostapd
[39]:http://www.linuxjournal.com/content/wi-fi-command-line
[40]:http://www.raspberrypi-spy.co.uk/2014/10/how-to-use-wavemon-to-monitor-your-wifi-connection/
[41]:http://linux.about.com/od/commands/l/blcmdl8_route.htm
[42]:http://pcsupport.about.com/od/commandlinereference/p/tracert-command.htm
[43]:http://linux.die.net/man/8/ping
[44]:http://www.thegeekstuff.com/2012/02/dig-command-examples/
[45]:https://en.wikipedia.org/wiki/Wi-Fi_Protected_Access
[46]:https://en.wikipedia.org/wiki/Wired_Equivalent_Privacy
[47]:https://w1.fi/cgit/hostap/plain/wpa_supplicant/wpa_supplicant.conf
[48]:http://jlcreations.com/raspberry-pi-wifi-multiple-networks/
[49]:http://raspberrypi.stackexchange.com/questions/15209/using-network-manager-for-wireless-vpn-management
[50]:http://dev.iachieved.it/iachievedit/exploring-networkmanager-d-bus-systemd-and-raspberry-pi/
[51]:http://support.qacafe.com/knowledge-base/how-do-i-prevent-network-manager-from-controlling-an-interface/
[52]:http://www.hi-flying.com/products_detail_faqs/&productId=4b01f897-b100-4e11-a85b-9d15bedaf145.html
[53]:http://www.dlink.com/uk/en/support/faq/access-points-and-range-extenders/what-do-the-modes-mean-on-my-ap]
[54]:http://jairjp.com/JANUARY%202014/02%20HELEN.pdf
[55]:http://xmodulo.com/disable-network-manager-linux.html
[56]:http://techblog.aasisvinayak.com/setting-up-an-ad-hoc-network-and-securing-it-using-wpa/
[57]:https://nims11.wordpress.com/2012/04/27/hostapd-the-linux-way-to-create-virtual-wifi-access-point/
[58]:https://w1.fi/hostapd/
[59]:http://linux.die.net/man/5/networkmanager.conf
[60]:http://wireless.kernel.org/en/users/Documentation/iw
[61]:http://www.howtogeek.com/178691/htg-explains-what-is-wi-fi-direct-and-how-does-it-work/
[62]:https://github.com/adafruit/Adafruit-Pi-Finder
[63]:http://www.oreilly.com/openbook/linag2/book/ch11.html
[64]:https://github.com/adafruit/Adafruit-Occidentalis/blob/master/finder.sh
[65]:https://www.adafruit.com/products/954
[66]:https://en.wikipedia.org/wiki/System_console
[67]:https://www.element14.com/community/docs/DOC-80667/l/raspberry-pi-a-b-zero-pi-2-gpio-pinout
[68]:https://www.element14.com/community/docs/DOC-73950/l/raspberry-pi-3-model-b-gpio-40-pin-block-pinout
[69]:http://raspi.tv/2012/how-to-run-raspberry-pi-with-no-monitor-or-network
[70]:http://hintshop.ludvig.co.nz/show/persistent-names-usb-serial-devices/
[71]:http://www.computerhope.com/unix/screen.htm
[72]:http://manpages.ubuntu.com/manpages/xenial/man1/microcom.1.html
[73]:https://access.redhat.com/documentation/en-US/Red_Hat_Enterprise_Linux/6/html/Power_Management_Guide/RFKill.html
[74]:http://www.digimantra.com/linux/rfkill-enabledisable-wireless-linux-laptop/
[75]:https://help.ubuntu.com/community/WifiDocs/Adhoc
[76]:https://en.wikipedia.org/wiki/IP_forwarding
[77]:https://en.wikipedia.org/wiki/Time_to_live
[78]:https://en.wikipedia.org/wiki/Google_Public_DNS
[79]:https://wiki.debian.org/HowTo/dnsmasq
[80]:https://access.redhat.com/sites/default/files/attachments/rh_ip_command_cheatsheet_1214_jcs_print.pdf
[81]:https://kthx.at/subnetmask/
[82]:http://bglug.ca/articles/nat_and_ip_masquerade.pdf
[83]:
[84]:
[85]:
[86]:
[87]:
[88]:
[89]:
[90]:
