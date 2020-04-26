
* [Dell Edge Gateways for IoT](http://www.dell.com/us/business/p/edge-gateway)
* [Dell Edge Gateway 3002 Installation and Operation Manual](http://www.dell.com/support/manuals/us/en/19/dell-edge-gateway-3000-series/dell-edge_gateway-3002-install_manual/overview)
* [Dell Edge Gateway 3000 Series spec sheet](http://i.dell.com/sites/doccontent/shared-content/data-sheets/en/Documents/Dell_Edge_Gateway_3000_Series_spec_sheet.pdf)
* [Dell IoT Solutions Partners](http://delliotpartners.com/#!/partner/find)
* []()

# Step 1: Physical Setup - DONE
Follow the procedures in the
"[Setting up your Edge Gateway][01]" section
of the "Dell Edge Gateway 3002 Installation and Operation Manual".
Make sure to also install the micro-SIM card and the micro-SD card.
A 32G SD card should be sufficient for most applications.

Once this is complete,
plug in the [Gigabit PoE+ Injector][03] into your LAN, the Edge Gateway, and wall power.
This will boot up the Dell Edge Gateway.

# Step 2: Setting Up the Operating System - DONE
"[Setting up the operating system][04]" section
of the "Dell Edge Gateway 3002 Installation and Operation Manual".
The Dell Edge Gateway's were ordered with [Ubuntu Core 16][05] pre-installed.
This version of Ubuntu is intended for IoT devices, promising
greater security and dependability with remotely up-gradeable
containerized packages known as [snaps][06].

To find the IP address of the Edge Gateway,
do a [ping scan  with `nmap`][07] and look for a referance to a Dell device
as shown below:

```bash
# ping scan on your network
$ sudo nmap -sP 192.168.1.0/24
   .
   .
   .
Nmap scan report for 192.168.1.210
Host is up (0.00064s latency).
MAC Address: 14:B3:1F:22:B1:0C (Dell)
   .
   .
   .
```

With this information,
we know the IP address, `192.168.1.210` in my case,
and we can now [`ssh` into the device][08].
At first boot up,
the default user name and password is `admin`.
For example:

```bash
# first login to the Dell Edge Gateway
$ ssh -X admin@192.168.1.210
The authenticity of host '192.168.1.210 (192.168.1.210)' can't be established.
ECDSA key fingerprint is SHA256:HrDhGbSnxvb448VMZaTi+kn8YmC+b+w1USGpreUg9N8.
Are you sure you want to continue connecting (yes/no)? yes
Warning: Permanently added '192.168.1.210' (ECDSA) to the list of known hosts.
admin@192.168.1.210's password:
X11 forwarding request failed on channel 0
Welcome to Ubuntu Core 16 (GNU/Linux 4.4.0-96-generic x86_64)

 * Documentation:  https://help.ubuntu.com
 * Management:     https://landscape.canonical.com
 * Support:        https://ubuntu.com/advantage

The programs included with the Ubuntu system are free software;
the exact distribution terms for each program are described in the
individual files in /usr/share/doc/*/copyright.

Ubuntu comes with ABSOLUTELY NO WARRANTY, to the extent permitted by
applicable law.

Welcome to Snappy Ubuntu Core, a transactionally updated Ubuntu.

 * See https://ubuntu.com/snappy

It's a brave new world here in Snappy Ubuntu Core! This machine
does not use apt-get or deb packages. Please see 'snap --help'
for app installation and transactional updates.

To run a command as administrator (user "root"), use "sudo <command>".
See "man sudo_root" for details.

admin@1RPRB02:~$
```

# Step 3: Update the Operating System - DONE
Follow the procedures in the
"[Updating operating system and applications][09]" section
of the "Dell Edge Gateway 3002 Installation and Operation Manual".
Assuming your LAN is connected to the Internet,
you should update to latest OS components and applications.
In my case, I ran the following to update Ubuntu Core 16:

```bash
# check the OS version information
$ sudo uname -a
Linux 1RPRB02 4.4.0-96-generic #119-Ubuntu SMP Tue Sep 12 14:59:54 UTC 2017 x86_64 x86_64 x86_64 GNU/Linux

# update the OS
$ sudo snap refresh
All snaps up to date.
```

To list what snaps are currently installed, do the following:

```bash
# list the installed snaps
$ sudo snap list
Name              Version          Rev   Developer  Notes
alsa-utils        1.1.2-5          68    canonical  -
bluez             5.44-3           129   canonical  -
caracalla         16.04-1.33       46    canonical  gadget
caracalla-kernel  4.4.0-96.119-1   54    canonical  kernel
ccm-wda           3.00.0.37334     12    dell-inc   -
core              16-2.28.5        3247  canonical  core
dcc               3.2.1.283        3     dell-inc   -
dcm               9.2.1.52         7     dell-inc   -
locationd         4.0.0            71    canonical  -
modem-manager     1.6.2-5          82    canonical  -
network-manager   1.2.2-13         233   canonical  -
snapweb           0.26-10          300   canonical  -
tpm2              1.0-5            42    canonical  -
udisks2           2.6.4-2          100   canonical  -
uefi-fw-tools     1.5.2-0.7.2+git  10    canonical  -
wifi-ap           17               204   canonical  -
wpa-supplicant    2.4.3            41    canonical  -
```

The Dell Edge Gateway uses [NTP][10] and set to the [UTC time zone][11],
but you may want to change this.
To change the time zone to your location,
run the commands below (`sudo timedatectl --help` for more information):

```bash
# current date and time
date

Sat Oct 28 20:26:52 UTC 2017
sudo timedatectl set-timezone America/New_York
```

# Step X: Activate the Mobile Broadband Service
Follow the procedures in the
"[Activating your mobile broadband service][02]" section
of the "Dell Edge Gateway 3002 Installation and Operation Manual".

# Step X: Other Network Interfaces
* http://www.dell.com/support/manuals/us/en/19/dell-edge-gateway-3000-series/dell-edge_gateway-3002-install_manual/network-communication-interfaces?guid=guid-f7cabf2e-ec9f-485f-b2b7-39dd026a8dae&lang=en-us
* http://www.dell.com/support/manuals/us/en/19/dell-edge-gateway-3000-series/dell-edge_gateway-3002-install_manual/additional-communication-interfaces?guid=guid-056b2156-c8f6-4a21-8d83-be8f4167ddfd&lang=en-us

# Step X: Setting up the ZigBee Dongle
Follow the procedures in the
"[Setting up the ZigBee dongle][16]" section
of the "Dell Edge Gateway 3002 Installation and Operation Manual".

# Step X: Installing Dell Command | Monitor
* http://en.community.dell.com/techcenter/enterprise-client/w/wiki/7777.dell-command-monitor-faq
* http://www.dell.com/support/manuals/us/en/19/dell-command-monitor-v9.2/dcm_ig_9.2/installing-dell-command--monitor-on-dell-edge-gateway-systems-using-snap-package?guid=guid-ec14efa4-1c5d-45e2-a43a-8812b7175e44&lang=en-us
* http://www.dell.com/support/manuals/us/en/19/dell-command-monitor-v9.2/dcm_ig_9.2/upgrading-dell-command--monitor-version-91-or-912-using-snap-package?guid=guid-8977a88f-9fb7-4e83-9318-67b78aed40a7&lang=en-us

# Step X: Trusted Platform Module (TPM)
* http://www.dell.com/support/manuals/us/en/19/dell-edge-gateway-3000-series/dell-edge_gateway-3002-install_manual/security?guid=guid-a4bb7fee-5ac8-4828-9f97-521d017946f1&lang=en-us

# Step X: Watchdog Timer (WDT)
* http://www.dell.com/support/manuals/us/en/19/dell-edge-gateway-3000-series/dell-edge_gateway-3002-install_manual/watchdog-timer-(wdt)?guid=guid-4a9f1588-6cf2-4ca2-addc-a59c2cefd300&lang=en-us
* [Watchdog Timers in Microcontrollers](https://www.allaboutcircuits.com/technical-articles/watchdog-timers-microcontroller-timers)

# Step X: NetworkManager
The Dell Edge Gateway appears to be using [NetworkManager][13] (aka [`nmcli`][12])
(originally developed by Red Hat and now is hosted by the GNOME project)
to manage its wired and wireless connections.
NetworkManager is a program for providing detection and configuration
for systems to automatically connect to network.
For wireless networks, NetworkManager prefers known wireless networks
and has the ability to switch to the most reliable network.
NetworkManager-aware applications can switch from online and offline mode.
NetworkManager also prefers wired connections over wireless ones,
and supports Ethernet, Bridge, Bond, VLAN, Team, InfiniBand, WiFi,
mobile broadband (WWAN), PPPoE and a variety of different VPN services.

The use of NetworkManager is important to know.
There is much advice on the web about configuring your network connections.
Much of this advice can give you nothing but headaches,
since unknown to you, you'll be fighting with NetworkManager
for control of your network connections.
Stick with using the NetworkManager tools,
like `nmcli` (see [man page][14] and [examples][15]), and your should be OK.

```bash
# view the network interfaces
$ network-manager.nmcli device status
DEVICE    TYPE      STATE         CONNECTION
eth0      ethernet  connected     Wired connection 2
cdc-wdm0  gsm       disconnected  --
wlan0     wifi      disconnected  --
eth1      ethernet  unavailable   --
lo        loopback  unmanaged     --

# show active connections
$ network-manager.nmcli con show -active
NAME                UUID                                  TYPE            DEVICE
Wired connection 2  18c02b8c-9681-3d8e-95c8-649dd0ca2b3e  802-3-ethernet  eth0

# list of available wifi access points
$ network-manager.nmcli device wifi
*  SSID                           MODE    CHAN  RATE       SIGNAL  BARS  SECURITY
   74LL5                          Infra   6     54 Mbit/s  100     ▂▄▆█  WPA2
   --                             Infra   6     54 Mbit/s  45      ▂▄__
   W7JKF                          Infra   1     54 Mbit/s  32      ▂▄__  WPA2
   SQLKL                          Infra   1     54 Mbit/s  32      ▂▄__  WPA1 WPA2
   TRENDnet637                    Infra   11    54 Mbit/s  32      ▂▄__  WEP
   DIRECT-72-HP ENVY 4520 series  Infra   1     54 Mbit/s  29      ▂___  WPA2
   FiOS-DCJ9G                     Infra   11    54 Mbit/s  29      ▂___  WPA2
   Download Virus                 Infra   11    54 Mbit/s  25      ▂___  WPA2
   thefarm                        Infra   6     54 Mbit/s  24      ▂___  WPA2
   hpsetup                        Ad-Hoc  6     11 Mbit/s  22      ▂___

# take down a connection
sudo nmcli con down connection_name

# bring up a connection
sudo nmcli con up connection_name
```

NetworkManager service control is via `systemctl`, therefore it may be enabled with
`sudo systemctl enable NetworkManager` and disabled with `sudo systemctl disable NetworkManager`.
The service may also be monitored using
`sudo service NetworkManager [status|start|stop|reload|restart]`.

```bash
# what is the status of NetworkManager
sudo service NetworkManager status
```

# Step X: Restoring Ubuntu Core 16
* http://www.dell.com/support/manuals/us/en/19/dell-edge-gateway-3000-series/dell-edge_gateway-3002-install_manual/restoring-ubuntu-core-16?guid=guid-315dbb94-ebbc-4f4c-a57f-75564a239c27&lang=en-us

# Step X: locationd
`locationd` is a daemon that centralizes location from positioning subsystems
available via hardware and software.
It provides a client API offering positioning capabilities to applications
and other system components,
abstracting away the details of individual positioning solutions.

* http://locationd.readthedocs.io/en/latest/index.html
* https://docs.ubuntu.com/core/en/stacks/location/location-service/docs/reference/configuration

# Snaps
* https://build.snapcraft.io/
* [Getting Started with Watson IoT Edge Analytics on a Dell Edge Gateway 3000](https://developer.ibm.com/recipes/tutorials/getting-started-with-watson-iot-edge-analytics-on-a-dell-edge-gateway-3000/)

## Gadget Snap
The gadget snap is responsible for defining and manipulating the system properties which are specific to a devices.
For example, the gadget snap will describe the bootloader to be used by the device.

* https://developer.ubuntu.com/core/examples/gadget-snaps
* https://docs.ubuntu.com/core/en/guides/build-device/gadget

# EdgeX Foundry
Much of the EdgeX detail is on the public site at https://www.edgexfoundry.org/ plus its technical wiki https://wiki.edgexfoundry.org/

To get hands on with the code and connected with community,
go to [here](https://www.edgexfoundry.org/community/#HowToGetStarted)

* [Running EdgeX on a Raspberry Pi](https://www.hackster.io/mhall119/running-edgex-on-a-raspberry-pi-d35dd5)
* [EdgeX Foundry Ready for Prime Time!](https://www.edgexfoundry.org/blog/2019/07/11/edgex-foundry-ready-for-prime-time/)
* [EdgeX Foundry, the common framework for IoT edge computing, now available as a snap](https://ubuntu.com/blog/edgex-foundry-the-common-framework-for-iot-edge-computing-now-available-as-a-snap)




[01]:http://www.dell.com/support/manuals/us/en/19/dell-edge-gateway-3000-series/dell-edge_gateway-3002-install_manual/setting-up-your-edge-gateway?guid=guid-a8dc9da8-1ec2-455f-b8e4-3cd87ef24042&lang=en-us
[02]:http://www.dell.com/support/manuals/us/en/19/dell-edge-gateway-3000-series/dell-edge_gateway-3002-install_manual/activating-your-mobile-broadband-service?guid=guid-c4edfa23-da7f-410d-80a1-7a78b394b182&lang=en-us
[03]:http://www.trendnet.com/products/proddetail?prod=170_TPE-115Gi
[04]:http://www.dell.com/support/manuals/us/en/19/dell-edge-gateway-3000-series/dell-edge_gateway-3002-install_manual/setting-up-the-operating-system?guid=guid-ccafe957-f249-4327-866c-39c6955e648b&lang=en-us
[05]:https://www.ubuntu.com/core
[06]:https://snapcraft.io/
[07]:http://www.binarytides.com/ping-sweep-network-nmap/
[08]:https://support.suso.com/supki/SSH_Tutorial_for_Linux
[09]:http://www.dell.com/support/manuals/us/en/19/dell-edge-gateway-3000-series/dell-edge_gateway-3002-install_manual/updating-operating-system-and-applications?guid=guid-54c16be4-3177-428e-b83d-aa08692a8038&lang=en-us
[10]:https://en.wikipedia.org/wiki/Network_Time_Protocol
[11]:https://www.timeanddate.com/time/aboututc.html
[12]:http://manpages.ubuntu.com/manpages/xenial/man1/nmcli.1.html
[13]:https://www.mankier.com/package/networkmanager
[14]:https://www.mankier.com/1/nmcli
[15]:https://www.mankier.com/7/nmcli-examples
[16]:http://www.dell.com/support/manuals/us/en/19/dell-edge-gateway-3000-series/dell-edge_gateway-3002-install_manual/setting-up-the-zigbee-dongle?guid=guid-d7e464fc-2e1e-4a43-b008-d7a866b75903&lang=en-us
[17]:
[18]:
[19]:
[20]:
