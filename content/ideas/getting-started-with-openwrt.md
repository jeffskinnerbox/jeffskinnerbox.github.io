* [Build & Customise OpenWrt for Raspberry Pi](https://www.cnx-software.com/2020/01/12/build-customize-openwrt-for-raspberry-pi/)



# OpenWrt
![openwrt-logo](http://domoticx.com/wp-content/uploads/openwrt-logo.png)
[OpenWrt][40] is a descendant of the firmware used for the classic [Linksys WRT54G][39] router
(Named “WRT” after the first device that  prompted porting Linux to them, the “Linksys WRT45G”).
In fact, this classic Linksys series of routers lead to [DD-WRT][41], [OpenWrt][40], [Tomato][42],
and countless other open-source firmwares.
Read "[The Open Source WRT54G Story][43]" if you want more of a history lesson.

OpenWrt is described as a Linux distribution for embedded devices,
and primarily used on embedded devices to route network traffic.
Like other Linux distributions,
it offers a built-in package manager that allows you to install packages from a software repository.
It can be used for anything that an embedded Linux system can be used for,
including function as file / HTTP / IRC server, an SSH server, VPN, support guest networks, packet capture,
or [traffic-shaping][26] and Quality of Service controls.
And this is a very much abbreviated list!
The total list can be found [here][31].

Most people will be happy with their router’s default firmware,
while many power users will want a drop-in replacement firmware like [DD-WRT][27].
OpenWrt is more flexible – it’s basically an embedded Linux distribution that
can be installed on various routers.
It does provide access to a web interface if you need a GUI,
but it also offers many of the commands you would find on a Linux operating system
and for that reason it has greatly extended functionality.

So why should you use OpenWrt?

1. Customization and full control
1. Linux and Package Management
1. Mainly GPL – but other free licenses also included
1. Huge Feature set (over 3400+ packages and growing)
1. Still actively developed
1. Extremely easy to deploy and manage
1. Can be scripted if you want to manage a fleet of them
1. For people with Linux in their network already, this can be considered just another Linux box.
1. Developed to be deployed on low cost hardware
1. With OpenWrt, almost anything you do, can be applied ‘live’ without interrupting current network connections.

The main components making up OpenWrt are:

* [Linux kernel][15] - manages input/output requests from software,
and translates them into data processing instructions the CPU
* [util-linux][13] - standard package of the Linux operating system
* [uClibc][14] - small C standard library intended for Linux kernel-based operating systems
* [BusyBox][16] - software that provides several stripped-down Unix tools in a single executable file
* [Wireless Utilities][68] - utilities for WiFi specific to the WRTnode implementation of OpenWrt

OpenWrt provides a fully writable filesystem with package management,
allowing you to [customize the device][17] through the use of packages to suit any application.
Also OpenWrt supports a framework to build an application without having to
build a complete firmware around it and is fully customizable.

Another component, but not considered part of OpenWrt, is the [bootloader][48].
The Bootloader is a piece of software that is executed every time the hardware device is powered up.
It is executable machine code, and quite heavily device-specific.
Its main task is to initialize all the low-level hardware details.
The bootloader is commonly on flash storage.

Unlike other router software like DD-WRT,
OpenWrt can be completely command line based.
The standard OpenWrt distribution package doesn't include a graphical user interface (GUI),
but you can install one called the OpenWrt Configuration Interface, [LuCI][65].

OpenWRT also supports quite a number of hardware platforms for routers.
You can check whether your particular model is supported
by reviewing the [OpenWrt's hardware table][66].
OpenWRT also supports many security features that you might find useful,
including a firewall based on [ipchains][18], [WiFi Protected Access (WPA) encryption][19],
Remote Authentication Dial-In User Service (RADIUS) authentication,
Dropbear Secure Shell (SSH) server, OpenVPN, among others.

## Linux Kernel
There are so many Linux distributions out in the wild,
but there is only one de facto thing that they have in common:
the [Linux kernel][57].
[So what is a kernel][59]?
It’s the kernel that does the grunt work of the operating system.
The kernel’s job is to talk to the hardware and software,
and to manage the system’s resources as best as possible.
It talks to the hardware, via the drivers,
when applications submit there request to the kernel.
The kernel make sure that there is enough memory available for an application to run,
as well as to place an application in the right location in memory
The kernel coordinate these and many other things.
This kernel circus act is [illustrated here][58]
and the Linux kernel [anatomy here][60].

With just a kernel, it’s nearly impossible to do anything with the operating system.
You also need some additional applications/utilities to be bundled with it.
These utilities use the kernel's [system calls][62] to perform useful task,
and a [shell][63] for user interaction.
These additional application  include util-linux, uClibc, and BusyBox discussed below.

## util-linux
util-linux is a standard package of the Linux operating system.
The [util-linux code repository][55] is used by all variants of Linux.
This package contains a number of important utilities,
most of which are oriented towards maintenance of your Linux system.
Some of the more important utilities included in this package allow
you to partition your hard disk, view kernel messages, and create new filesystems.
These utilities are not the every day utilities like vim, grep, cat, etc.
(see Busybox for these)
but instead are operating system utilities.
See [this page][56] for a listing of the utilities within util-linux.

util-linux doesn't contain everything you need for
administering your Linux.
For example, utilities to manage the WiFi on the WRTnode will not be within util-linux.

* [An introduction to the GNU Core Utilities](https://opensource.com/article/18/4/gnu-core-utilities)

## uClibc
[uClibc][51] (aka µClibc/pronounced yew-see-lib-see)
is a small C standard library intended for Linux kernel-based
operating systems for embedded systems and mobile devices.
uClibc is to provide as much functionality as possible in a small amount of space.
uClibc is much smaller than [glibc (GNU C Library)][61]
which is normally used with Linux distributions.
uClibc is specifically focused on embedded Linux and
features can be enabled or disabled according to space requirements.

If you choose to compile programs with uClibc,
you'll to have your own uClibc toolchain. A toolchain consists of
[GNU binutils][52], the [gcc compiler][53], and uClibc,
all built to produce binaries for your target system linked with uClibc.
You can build your own native uClibc toolchain using the [uClibc buildroot system][54].

## BusyBox
[BusyBox][11] is a tool loaded into the OpenWrt environment.
BusyBox combines tiny versions of many common UNIX utilities into a single small executable.
It provides minimalist replacements for most of the utilities you usually find
in GNU fileutils, shellutils, includes [`vi`][12], etc.
BusyBox is extremely configurable, allowing you to include only the components you need.
The utilities in BusyBox generally have fewer options than their full-featured GNU cousins;
however, the options that are included provide the expected functionality
and behave very much like their GNU counterparts.

BusyBox is extremely modular so you can easily include or exclude commands
(or features) at compile time.
This makes it easy to customize your embedded systems.
To create a working system, just add some device nodes in `/dev`,
a few configuration files in `/etc`, and a Linux kernel.

For a listing of Busybox's utilities, check out the [Busybox Manual Page][28].
[BusyBox is a multi-call binary][12], that is,
a single binary acts like a large number of utilities.
BusyBox has built-in utility programs (called applets)
can share code for many common operations.
So it has the following syntax:

```bush
busybox <applet> [arguments...]  # or

<applet> [arguments...]          # if symlinked

Where the applets would include ls, awk, sed, wc, ....
and many other of your favorate Linux commands
```

## WiFi Utilities
Like in standard Linux, WiFi support, wireless in general,
is fragmented.
Wireless devices have an API different from that of Ethernet devices
because the specifications of IEEE 802.11 covers the whole communications process.
The available of some tools depend entirely on your drivers written for the hardware.
[Tools available through OpenWrt][71], and therefore, support most hardware platforms,
including WRTnode, are:

* `iwconfig` - is the configuration utility for the now obsolete [Wireless-Extensions (WEXT) API][69],
which is scheduled for removal.
* `iw` - is the configuration utility replacing `iwconfig` supporting the [nl80211 API][70].
* `iwinfo` - is a frontend to the custom library, which assembles information from various places.
* `hostapd` - this package contains a full featured IEEE 802.1x/WPA/EAP/RADIUS Authenticator.
* `wpa-cli` -  this is a WPA Supplicant command line interface

Beyond what utilities OpenWrt provides for WiFi,
WRTnode comes with some [custom utilities][68] (`aps`/`setwifi`/`ia`/`vw`/`nr`/`wifi`)
for the up-link part of the router inside of WRTnode.

* `aps` - is a WRTnode customized command which scans the WiFi SSIDs available.
* `vw` - is used to make changes to `/etc/config/wireless` where WiFi configuration information is stored, using the file editor `vi`.
* `nr` - is a WRTnode customized command which will reset the network side.  After 5 seconds it is possible to connect again to WRTnode's SSID.
* `ia` - is the WRTnode equivalent to `ifconfig`, the Linux network interface configuration, control, and query tool.
* `wifi` -  is a WRTnode customized command which will reset the network side. After 10 seconds it is possible to connect again to WRTnode's SSID.
* `setwifi` - is used to connect to an access point when give its SSID and password

[OpenWrt also support many WiFi modes][72] such as AP, Monitor, Ad-Hoc, [802.11s][73], and more.

## OPKG Package Manager
The [`opkg`][25] utility is a lightweight package manager used to download
and install OpenWrt packages from local package repositories
or ones located in the Internet.
`opkg` is a full package manager for the root file system,
instead of just a way to add software to a separate directory (e.g. `/opt`).
That is, `opkg` can also add kernel modules and drivers.

`opkg` attempts to resolve dependencies with packages,
and if this fails, reports an error and abort the installation of that package.
To ignore dependency errors, use the `--force-depends` flag.
To resolve package signature issues with `opkg update` use `opkg update --force-signature`.

To see which repositories you are connected to,
enter the following into the command line:

```bash
# list what opkg repositories your ar connected with
cat /etc/opkg/distfeeds.conf
```

Make sure to run `opkg update` before using `opkg` whenever you have rebooted your device.
The catalog of packages is temporary storage is wiped when rebooting.
Sometimes it is also useful to see which packages we have already installed,
or remove a package.

```bash
# update catatlog of packages (list of available packages is lost upon reboot)
opkg update

# list what packages are installed
opkg list-installed

# no install, just see what will be done
opkg install <packages> –noaction

# remove a group of packages
opkg remove <packages>
```

Your can install packages both from remote repositories,
as shown above, but also from local files:

```bash
# install package from local file
opkg install /tmp/<package-file>
```

You can also upgrade a package or a group of packages using the following command:

```bash
# upgrade a package or a group of packages
opkg upgrade <packages>
```
[As per the OpenWRT wiki, this is not recommended][36].
For two main reasons:

1. It is far more inefficient at allocating memory than the default installation process.
1. If you are upgrading a kernel package and there are compatibility issues, your device may break. Therefore, Do Not Upgrade Kernel Packages.

Instead of upgrading, it is recommended to reflash OpenWRT with the newer firmware image.

## Commands for Finding Hardware and Software Information
You can check version of your OpenWrt
and get basic information about the hardware via:

```bash
# openwrt version information
cat /etc/openwrt_release

# processor information
cat /proc/cpuinfo

# system memory
free
cat /proc/meminfo

# disk space
df -h
cat /proc/mtd
cat /proc/partitions

# kernel message
dmesg

# system log messages
logread

# Press “tab” twice at the command prompt
    # You’ll see almost all commands available on OpenWrt
    # Shell commands won’t be in that list!
```

## Bootloader
The WRTnode inclduses a customized [uboot][29] which is a popular [bootloader][30] that
supports multiple architectures (ARM, MIPS, AVR32, Nios, Microblaze, 68K and x86)
and filesystems (FAT32, ext2, ext3, ext4 and Cramfs).

Strictly speaking, a bootloader is not required to boot Linux.
The use of one (or several) bootloaders in a row to chainload (or [bootstrap][49])
a Kernel is not a categorical necessity,
but it is a preferred method to start an operating system.
The main advantage for OpenWrt is,
that the existence of a bootloader offers users and developers
additional possibilities to [debrick][50] a device.

## Flashing Firmware
When talking about "flashing OpenWrt" or "burning" onto a router,
we're going to replace the original software on the router with OpenWrt.
The word "flash" in this case comes from the fact that the storage space
on a router is a chip called "[flash memory][10]".

The specific procedures for flashing the firmware are hardware specific.
The OpenWrt website does provide a great deal of help,
but checkout the page for your hardware.
Good starting points are the pages
"[Download and Flash OpenWrt][08]" and "[Installing OpenWrt][09]".

## Router Reset
If you are like myself, at some point you'll end up resetting the router out of desperation.
This will cause OpenWrt to enter a built-in [failsafe mode][12].
Failsafe mode bypasses all configuration located on the [JFFS2][11] partition
(the writable 'overlay' filesystem),
and instead uses a basic set of hard coded defaults located on the [SquashFS][21] partition
(that is the read-only partition containing the router OS).
Failsafe mode can be used to fix a router which cannot be accessed
in the usual ways because of a problem with configuration such as locked out users,
locked out network connections, broken startup scripts,
broken packages or configurations, full [JFFS2][11] storage, etc.
It normally cannot fix more fundamental problems such as ['hard bricking'][20]
or issues with the hardware, kernel or
[squashFS][21] images that prevent the router booting properly
or making connections at the hardware level.

Once failsafe mode is triggered,
the router will boot with a network address of `192.168.1.1/24`
on the `eth0` network interface, and with only essential services running.
Using `telnet` for Ethernet connection or a [console cable][22] serial connection
to gain access to the device.
Once on the device, you can mount the JFFS2 partition with the command `mount_root`
and diagnose or fix the problems on the JFFS2 partition, if needed.

The router will not have the LuCI browser interface and no WiFi radio,
so one of the way to get new firmware on the device is via Ethernet
[`scp`][32] or [`telnet`][33].
###########
try netcat to - http://stackoverflow.com/questions/15807122/telnet-file-transfer-between-two-linux-machines
###########
You'll need to connect another computer on `eth0` on the router.
With this,the route and computer are on the same network.
While on the computer,
`cd` to the directory where you have the firmware bin file
and then excute the `scp` command with the routers `/tmp` as the target.
See below:

```bash
cd <bin-file-location>
scp openwrt-ar150-2.12.bin root@192.168.8.1:/tmp
```

If you have internet access, as root type the following commands:

```bash
wget http://download.linino.org/linino_distro/master/latest/openwrt-ar71xx-generic-linino-one-16M-squashfs-sysupgrade.bin
```

Next we need to get the new firmware flashed into memory,
effectively [replacing what is currently installed][24].
We'll use the utility [`mtd`][23] to do this.
Log into the router and then:

```bash
cd /tmp
mtd -r write openwrt-ar150-2.12.bin firmware
```

sysupgrade -v openwrt-ar71xx-generic-linino-one-16M-squashfs-sysupgrade.bin
https://wiki.openwrt.org/doc/howto/generic.uninstall
https://forum.piratebox.cc/read.php?8,3747,4991
https://wiki.openwrt.org/doc/howto/generic.sysupgrade

# Gl-iNet GL-AR150 Router
[!AR150](http://www.gl-inet.com/wordpress/wp-content/uploads/2015/09/ar150_marks_800.jpg)
[!AR150](http://www.gl-inet.com/wordpress/wp-content/uploads/2015/08/700x500_p1.jpg)
To help me write this document,
I used my favorite hackable product, the [GL-AR150-ext smart router][88].
it come with 16M byte Flash and 64M byte RAM, WiFi 802.11b/g/n 150Mbps,
powered by the System on a Chip (SoC) Qualcomm [Atheros AR9331][92],
models supporting internal or external antenna,
powered vi MicroUSB  port, Ethernet ports for WAN and LAN connections, USB 2.0 type A port,
###########
2 LAN connections, one is on the board ????
###########
hardware toggle button for reset and On/Off switch, USB Power control via GPIO 6
This tiny $25 devices has good [documentation][89] and even a [blog][90] for the hacker community.
* [OpenWrt page for GL-AR150](https://wiki.openwrt.org/toh/gl-inet/gl-ar150)

For the GL-AR150, you'll find details on how to use and configure the router
on the [GL.iNet GL-AR150 Wiki][89].
Within this Wiki, there are articles on[firmware upgrading][85],
[adding a real-time clock][86],
working with [UART & serial][84], [using uboot][83], etc.
Additional information can be found within the [GL.iNet Blog][90],
which covers topics like [building OpenWRT firmware][80],
[Uboot Web UI][81], [flashing firmware to the GL-AR150][82].
You can even see a teardown of the device [here][79].

## Flashing Firmware
When talking about "flashing OpenWrt" or "burning" onto a router,
we're going to replace the original software on the router with OpenWrt.
The word "flash" in this case comes from the fact that the storage space
on a router is a chip called "[flash memory][87]".

The GL-AR150 already runs on OpenWRT, but this is a customised version by GLiNet.
The objective here is to replace it with the official OpenWRT software.
You have two paths to do this: [using the devices UI to do the upgrade][95]
or flash the device via a USB stick.
The later approach requires opening the device and placing jumpers on the GPIO pins,
so we'll do the former.

I went to the OpenWrt web site for [firmware installation instructions for the GL-AR150][91].
The specific firmware download I used was [Chaos Calmer 15.05.1][93].
(The orginal GLiNet firmware can be found [here][94]).
The AR150 already runs on iGLiNet customized version of OpenWrt,
making the install easier.
To install the downloaded firmware:

1. Download your OpenWrt `.bin` file onto your computer so you can up load it via the browser.
1. Get on the router via Ethernet or WiFi and browse to `http://192.168.8.1` (see printing on the back of the router)
1. Go through GL-iNet's setup process, including password setting.  Remember it, you use it later.
1. Using the browser, upload the downloaded `.bin` firmware file to the router
1. Check "Keep settings" if you want to keep the password, IP domain (`192.168.8.1`), etc.
1. Hit the "Upgrade" button, wait for the reboot, and then the new OpenWrt should be installed
1. Using `ssh root@192.168.8.1` (you'll need to use `telnet` if the password isn't already set)
to login and enter the root password.

## Router Reset
If you are like myself, at some point you'll end up resetting the router out of desperation.
You can do this with the GL-AR150 by [hold the reset button for more then 8 seconds][96].
When this is done, the device defaults to GL-iNet's network domain of `192.168.8.0/24`,
unless you have installed OpenWrt, then if returns to OpenWrt's IP factory reset domain of `192.168.1.0/24`
In addition, when using OpenWrt,
it appears only the Ethernet port, not WiFi, is accessible after a reset.

* [“Factory” resetting an OpenWRT router](https://rob-the.geek.nz/archives/howto/factory-resetting-an-openwrt-router)
* [How-To: Clear OpenWRT config back to 'factory' settings](https://support.rbtechvt.com/knowledgebase/article/View/61/0/how-to-clear-openwrt-config-back-to-factory-settings)

## Unbricking Gl-iNet
A bricked GL-iNet is a device that does not respond.
In my case, I could ping the port but couldn't get in via `ssh`, `telnet`, or
even via [console cable][98].
To over come this, I followed the procedures outline on the GL-iNet's website,
[Tutorial: Unbricking/Upgrading your Gl-iNet][97].

To do this, you must have a reset button that works,
but I eventually managed to break off this tiny PCB mounted button.
To work around this, I considered
flashing the firmware using the USB Drive.
The procedures outline [here][99] have not bee verified,
and in fact, [some claim this will do more harm than good][100].

# Start Here
First thing to do is review [this presentation][78],
go to the [OpenWrt website][01],
read the [OpenWrt New Comer's Guide][02]
and then read [Advice on getting started with OpenWRT][03].
Another excellent read is the post "[My complete OpenWrt Setup Guide][04]"
and "[My complete OpenWrt Setup Guide][77]".
Your not going to use all of what you learn but its good preparation for the journey to come.

The steps below assume you have freshly install version of OpenWrt.
This means you have [installed OpenWrt][09] successfully.
How you do this is very depended on your hardware,
so check out the OpenWrt website for the details.
By default the WiFi and WLAN interfaces are disabled and must be enabled explicitly
by accessing the device via the Ethernet interface.


###########################
* [What causes the 'Connection Refused' message?](http://serverfault.com/questions/725262/what-causes-the-connection-refused-message)
* [What can be the reasons of connection refused errors?](http://stackoverflow.com/questions/2333400/what-can-be-the-reasons-of-connection-refused-errors)
###########################

Generally, at this point you should be able to use `ssh root@192.168.1.1`
to login and enter the root password.
If its your very first time to login in,
you'll need to use `telnet` instead and you'll be prompted to supply a new password.
But keep in mind, the IP address can be different
(e.g. for iGLiNet GL-AR150 I have been uses its default `192.168.8.1`),
and so can the login (e.g. `admin` instead of `root`).

While using `ssh` to login to the OpenWrt device,
I have had repeated problems with 'Connection Refused' message.
There could be many reasons, but the most common are:

1. The port is not open on the destination machine.
1. The port is open on the destination machine, but its backlog of pending connections is full.
1. A firewall between the client and server is blocking access (also check local firewalls).

After checking for firewalls issues (via `ping 192.168.8.173`)
and showing that the port is open,
use telnet (`telnet -l root -r 192.168.8.173`)
to connect to the ip/port to test connectivity.
If this fails, this removes any potential issues from your `ssh` application.
Then you can conclude that the port is not open on the destination machine.

# Step X: Internet Connectivity - DONE
To set up the OpenWrt device,
I could use it as a router and connect its WAN interface to my ISP
and then put a Laptop on the Ethernet or WiFi port provide by the device.
The Laptop get access to the OpenWrt device and the Internet.
The challenge here is that I have one ISP connection
and I don't want to deny my household Internet access
while I'm messing with my OpenWrt device.

There is away around this.
The way I like to  configure / setup my OpenWrt device is to connect them via
Ethernet form a Laptop
[making the Laptop a bridge to the Internet for the OpenWrt device][46].
(I use a Chromebook in my case,
but it appears the `ssh` in Chrome's [crosh/shell][47] can hang or have other problems.
Use instead Linux instanace installed via [Crouton][64].)
The Laptop is also connected to my home WiFi network,
providing Internet access to the Laptop.
I then can easily SSH into the OpenWrt device over its network,
but what about the OpenWrt device's assess to the Internet?

```
Internet----Home-WiFi-----------Laptop-----------OpenWrt
                   192.168.1.0/24   192.168.8.0/24
```

The Laptop is wirelessly connected to my home LAN (i.e. `192.168.1.0/24`),
which has Internet connectivity.
The OpenWrt devices supplies a LAN (i.e. `192.168.8.0/24`),
over which the Laptop and the device can communicate.
The Laptop can act as a bridge and support Internet connectivity for the OpenWrt device.

### Within Laptop
But this doesn't happen automatically.
The OpenWrt devices must be told that its LAN has Internet connectivity via the Laptop.
First you need the IP address of the Laptop as seen by the OpenWrt devices LAN.
To get this, on the Laptop execute this command:

```bash
# find the ethernet connection ip address
ip address show eth0 | grep inet
```

In my case, the OpenWrt IP address is `192.168.8.173`.
To share the Internet connection on the Laptop,
enable [IP forwarding][35] and [IP masquerading][34]
(a form of [network address translation][45]) on the Laptop
This approach should be used with dynamically assigned IP adressing
(for static addressing you should use [Source Network Address Translation - SNAT][44]):

```bash
# enable ip forwarding and ip masquerading
echo 1 | sudo tee /proc/sys/net/ipv4/ip_forward > /dev/null
sudo iptables -P FORWARD ACCEPT
sudo iptables -A POSTROUTING -t nat -j MASQUERADE -s 192.168.8.0/24
```

At this point, my Laptop route table looks like this:

```bash
# laptop's kernel routing table
$ /sbin/route -n
Kernel IP routing table
Destination     Gateway         Genmask         Flags Metric Ref    Use Iface
0.0.0.0         192.168.1.1     0.0.0.0         UG    1      0        0 wlan0
0.0.0.0         192.168.8.1     0.0.0.0         UG    10     0        0 eth0
192.168.1.0     0.0.0.0         255.255.255.0   U     0      0        0 wlan0
192.168.8.0     0.0.0.0         255.255.255.0   U     0      0        0 eth0
```

**NOTE:** This will not persist if you reboot the Laptop.
To make it persist,
do `sudo sysctl -w net.ipv4.ip_forward=1`
to permanently turn on ip forwarding
and `sudo /etc/init.d/iptables-persistent save`
will save all your `iptables` settings.

Forwarding the Internet connection can also be deactivated on your host PC:

```bash
# disable ip forwarding and ip masquerading
echo 0 | sudo tee /proc/sys/net/ipv4/ip_forward > /dev/null
sudo iptables -t nat -F POSTROUTING
```

### Within OpenWrt
Now `ssh root@192.168.8.1` into your OpenWrt device,
and tell the OpenWrt device the Laptop should be its Internet Gateway.
First, determine what interface device and IP address the OpenWrt router is using
for connectivity to the Laptop.
You can do this via running `ifconfig` or `arp` on the OpenWrt device.
The Ethernet interface will some TX/RX activity is your interface of interest.
In my case, the interface of interest is `eth1`.

Now set the default gateway such that the Laptop is used for the Internet connectivity.
Enter the following into the OpenWrt device:

```bash
# use 192.168.8.173 as your gateway
route add default gw 192.168.8.173 netmask 0.0.0.0

# alternative using iproute2 suite
ip route add default via 192.168.8.173 netmask 0.0.0.0 dev eth1
```

And use your router as the DNS name server for the OpenWrt device:

```bash
echo "nameserver 192.168.1.1" >> /etc/resolv.conf
```

Now test out ability of the OpenWrt device to access the Internet and systems on your home LAN:

```bash
# test connectivity to the internet
ping google.com

# test connectivity to your home lan router
ping 192.168.1.1
```

# Step X: Mount an External USB Media to Extend Root Filesystem

[USB Storage](https://wiki.openwrt.org/doc/howto/usb.storage)
[Partitioning, Formatting and Mounting Storage Devices](https://wiki.openwrt.org/doc/howto/storage)
[Setting up a USB drive for storage on OpenWRT](http://www.brendangrainger.com/entries/13)

This only applies if your router has a USB port
and you wish to add additional root filesystem space for installing software.
Skip to the next Step if one or both of these are not true.

I'm basically following the procedures out lined in the posts
"[Mount an external USB media as root fs on OpenWRT][37]"
and "[How to setup OpenWrt extroot, rootfs on USB storage][38]".

To see what packages you have installed on OpenWrt, use `opkg list`.
While OpenWrt is intended to be a minimal, light footprint Linux install,
it can get very bloated once you start adding packages.
So how do you build OpenWrt minimal image that will fit
with enough free space to install some other packages later?
One solution is to use [extroot][06] when a USB port is available on the router.

>**NOTE:** With OpenWrt Chaos Calmer 15.05 or 15.05.1 or any above release,
using extroot on routers with 4 MB flash, even the router have a USB port,
may not work.
[For system with 4 Mb of flash, you may not have enough space to install necessary packages for extroot on the default OpenWrt build][05].

For later reference, let check how much free space is on this barebones system
using `df -h`.
The directory of interest is the root filesystem, `/`, aka overlay filesystem `/overlay`.
As you can see below, It is currently using about 0.5M and 12M free:

```bash
# check free flash space
$ df -h
Filesystem                Size      Used Available Use% Mounted on
/dev/root                 2.0M      2.0M         0 100% /rom
tmpfs                    29.4M     64.0K     29.4M   0% /tmp
/dev/mtdblock5           12.4M    484.0K     11.9M   4% /overlay
overlayfs:/overlay       12.4M    484.0K     11.9M   4% /
tmpfs                   512.0K         0    512.0K   0% /dev
```

Using extroot requires the following packages to be installed.

```bash
# you do this since list of available packages is lost upon reboot
opkg update

# use this if opkg signature check fails (some times signature files are wrong due to maintenance)
# or you might need to delete the line that reads "option check_signature 1"
# from /etc/opkg.conf
# https://community.onion.io/topic/93/signature-check-failed-var-opkg-lists-chaos_calmer_packages/4
opkg update --force-signature

# install required packages
opkg install block-mount kmod-fs-ext4 kmod-usb-storage-extras

# install required programs
opkg install cfdisk e2fsprogs swap-utils
```

You might get an automatic reboot.
Remember to repeat the OpenWrt steps in Step X above
and rum `opkg update` again.

If you didn't get a automatic reboot,
load all necessary kernel modules with `modprobe` command
(they should have been loaded automatically):

```bash
modprobe sd_mod
modprobe usb-storage
modprobe ext4
```

Let's check what space these packages consume:

```bash
# check free flash space
$ df -h
Filesystem                Size      Used Available Use% Mounted on
/dev/root                 2.0M      2.0M         0 100% /rom
tmpfs                    29.4M    672.0K     28.8M   2% /tmp
/dev/mtdblock5           12.4M      1.9M     10.5M  15% /overlay
overlayfs:/overlay       12.4M      1.9M     10.5M  15% /
tmpfs                   512.0K         0    512.0K   0% /dev
```

Plug in your USB drive to your OpenWrt device and check kernel messages via `dmesg`.
It should give you some hints on the path to your USB drive.
In my case:

```bash
  .
  .
  .
[ 2755.771101] usb 1-1: new full-speed USB device number 2 using ehci-platform
[ 2756.211110] usb 1-1: new high-speed USB device number 3 using ehci-platform
[ 2756.365229] usb-storage 1-1:1.0: USB Mass Storage device detected
[ 2756.371984] scsi host0: usb-storage 1-1:1.0
[ 2757.372713] scsi 0:0:0:0: Direct-Access     Mass     Storage Device   1.00 PQ: 0 ANSI: 0 CCS
[ 2762.006592] sd 0:0:0:0: [sda] 15523840 512-byte logical blocks: (7.95 GB/7.40 GiB)
[ 2762.013459] sd 0:0:0:0: [sda] Write Protect is off
[ 2762.017501] sd 0:0:0:0: [sda] Mode Sense: 03 00 00 00
[ 2762.023593] sd 0:0:0:0: [sda] No Caching mode page found
[ 2762.027829] sd 0:0:0:0: [sda] Assuming drive cache: write through
  .
  .
  .
```

So the USB drive is `/dev/sda`.
Now partition and format hte USB drive with the command `cfdisk /dev/sda`
such that you have the following partition:

```bash
Device      Boot      Start       End  Sectors  Size Id Type
/dev/sda1              2048   8390655  8388608    4G 83 Linux
/dev/sda2           8390656  14682111  6291456    3G 83 Linux
/dev/sda3          14682112  15523839   841728  411M 82 Linux swap / Solaris
```

Now format the new partitions:

```bash
# format partitions
mke2fs -t ext4 /dev/sda1
mke2fs -t ext4 /dev/sda2
mke2fs -t ext4 /dev/sda3
```

Add a mount point and mount the drive partitions:

```bash
mkdir -p /mnt/root
mount /dev/sda1 /mnt/root

mkdir -p /mnt/data
mount /dev/sda2 /mnt/data
```

We also want somw swap space

```bash
mkswap /dev/sda3
swapon /dev/sda3
```

At this point, the filesystem looks like this:

```bash
# df -h
Filesystem                Size      Used Available Use% Mounted on
/dev/root                 2.0M      2.0M         0 100% /rom
tmpfs                    29.4M     64.0K     29.4M   0% /tmp
/dev/mtdblock5           12.4M      1.9M     10.5M  15% /overlay
overlayfs:/overlay       12.4M      1.9M     10.5M  15% /
tmpfs                   512.0K         0    512.0K   0% /dev
/dev/sda1                 3.8G     16.0M      3.6G   0% /mnt/root
/dev/sda2                 2.9G      9.0M      2.7G   0% /mnt/data
```

Now we copy the entire active OpenWrt filesystem into the new `/dev/sda1` partition,
and then unmount it:

```bash
# copy data from /overlay partition to the USB drive
tar -C /overlay/ -c . -f - | tar -C /mnt/root -xf -

# unmount the USB drive
sync && umount /dev/sda1 && umount /dev/sda2
```

With the USB drive unmounted,
configure the `/etc/config/fstab` file to mount the USB drive as `/overlay` partition
so it automatically mount on boot.

```bash
# get uci file for the currently attached block devices
block detect > /etc/config/fstab
```

Now edit the `/etc/config/fstab` file with vi to mount the new root partition, `/dev/sda1`,
at `/overlay` partition at startup.
You do this by changing the option enabled line from `0` to `1`,
for `/dev/sda1`, `/dev/sda2`, and `/dev/sda2`.
Also change the target name from `/dev/sda1` to `/dev/root`,
and `/dev/sda2` to `/dev/data`.

Now enable the `fstab` service at startup so the USB drive is automatically mounted and check it:

```bash
# enable fstab
/etc/init.d/fstab enable

# perform a check
readlink -f /etc/rc.d/*fstab

reboot
```

After the reboot, you are booting directly off of the flash drive
and have more room to install packages.
The OpenWrt file system now looks like this:

```bash
$ df -h
Filesystem                Size      Used Available Use% Mounted on
/dev/root                 2.0M      2.0M         0 100% /rom
tmpfs                    29.4M     64.0K     29.4M   0% /tmp
/dev/mtdblock5           12.4M      1.9M     10.5M  15% /overlay
overlayfs:/overlay       12.4M      1.9M     10.5M  15% /
tmpfs                   512.0K         0    512.0K   0% /dev
/dev/sda1                 3.8G     19.3M      3.6G   1% /mnt/root
/dev/sda2                 2.9G      9.0M      2.7G   0% /mnt/data
```

One benefit of this configuration is that you may want to save an image of your drive for future use.
You never know when you will be trying something out and need to restore from a backup!
Pivot-overlay is the recommended extroot implementation
because it is easier to set up and future firmware upgrade will still be written
to the routers flash (instead of your USB storage device).

# Step X: Install Web User Interface LuCI - DONE
[LuCI][67] is an [extensible and easily maintainable web user interface][75] for OpenWrt.
It uses the Lua programming language and
splits the interface up into logical parts for easy maintenance and small size.
Use `opkg list luci-*` to see all the available packages to administer OpenWrt through LuCI.

The steps below are to [install and configure LuCI][74]:

```bash
opkg update

# LuCI with http support (use 'opkg install luci-ssl' for https)
opkg install luci
```

The OpenWrt web server software [`uHTTPd`][76] is a dependency of the LuCI package
and is automatically installed when you install LuCI.
After installation the web server is not running!
You need to manually start the web server.
You should also enable the web server,
so that it automatically starts up whenever you reboot the router.

```bash
# starts the web server
/etc/init.d/uhttpd start

# enables web server automatically on reboots
/etc/init.d/uhttpd enable
```

Now you should be able to connect to the web server serving LuCI at `http://192.168.8.1`.

**NOTE:** LuCI will be [replaced by LuCI2 sometime in the future][07].
Be aware that LuCI may requires several extentions that can be a resource hog.

# Useful Software
These software packages will come in handy down the line:

```bash
opkg update

opkg install screen tcpdump
```
# Step X: Change the Host Name

# Step X: Change the Default DHCP Range

# Step X: Set Time Correctly with NTP

# Step X: Configuring OpenWrt Router Functions

# Step X: QoS for OpenWrt
* [QoS for OpenWrt](http://www.rooot.net/en/geek-stuff/openwrt/1-qos-openwrt.html)

# Step X: OpenWrt as a WiFi Client
* [OpenWrt as a wifi client](http://www.rooot.net/en/geek-stuff/openwrt/8-openwrt-wifi-client.html)

# step X: Binding IP Address and MAC Address
[How to bind IP Address and MAC Address on TP-Link Router?](http://www.tp-link.com/en/faq-170.html)

# Step X: Upgrading Firmware
* [Upgrading Your Firmware Version](https://cucumberwifi.io/community/tutorials/openwrt-upgrading-firmware-version.html)

# Step X: Scheduling Tasks
* [Scheduling Tasks](https://cucumberwifi.io/community/tutorials/openwrt-schedueling-tasks.html)

# Step X: IPv6 Networking
* [IPv6 home networking with OpenWrt](http://bredsaal.dk/ipv6-home-networking-with-openwrt)

# Step X: OpenWrt Packet Sniffer
* [OpenWrt tcpdump packet captures for traffic evaluation](http://threatvectorsecurity.blogspot.com/2014/06/openwrt-tcpdump-packet-captures-for.html)
* [Passive WiFi Tracking](http://edwardkeeble.com/2014/02/passive-wifi-tracking/)

# Step X: OpenWrt Web Camera



[01]:https://openwrt.org/
[02]:https://wiki.openwrt.org/doc/guide-newcomer
[03]:https://wiki.openwrt.org/doc/advice-getting-started
[04]:http://www.jauu.net/2015/03/03/complete-openwrt-guide/
[05]:https://fixmynix.com/build-openwrt-minimal-image-custom-firmware/
[06]:https://wiki.openwrt.org/doc/howto/extroot
[07]:https://wiki.openwrt.org/doc/techref/luci2
[08]:https://wiki.openwrt.org/doc/walkthrough_flash
[09]:https://wiki.openwrt.org/doc/howto/generic.flashing
[10]:https://en.wikipedia.org/wiki/Flash_memory
[11]:https://en.wikipedia.org/wiki/JFFS2
[12]:https://wiki.openwrt.org/doc/howto/generic.failsafe
[13]:http://en.wikipedia.org/wiki/Util-linux
[14]:http://en.wikipedia.org/wiki/UClibc
[15]:http://en.wikipedia.org/wiki/Linux_kernel
[16]:http://en.wikipedia.org/wiki/BusyBox
[17]:http://www.makeuseof.com/tag/what-is-openwrt-and-why-should-i-use-it-for-my-router/
[18]:http://www.linuxplanet.com/linuxplanet/tutorials/2100/1
[19]:http://www.howtogeek.com/167783/htg-explains-the-difference-between-wep-wpa-and-wpa2-wireless-encryption-and-why-it-matters/
[20]:https://en.wikipedia.org/wiki/Brick_(electronics)
[21]:https://wiki.openwrt.org/doc/techref/filesystems#squashfs
[22]::https://www.adafruit.com/products/954
[23]:https://wiki.openwrt.org/doc/techref/mtd
[24]:https://wiki.openwrt.org/doc/howto/generic.uninstall
[25]:https://wiki.openwrt.org/doc/techref/opkg
[26]:http://en.wikipedia.org/wiki/Traffic_shaping
[27]:http://en.wikipedia.org/wiki/DD-WRT
[28]:http://linux.die.net/man/1/busybox
[29]:http://www.linuxjournal.com/content/handy-u-boot-trick
[30]:http://www.addictivetips.com/mobile/what-is-bootloader-and-how-to-unlock-bootloader-on-android-phones-complete-guide/
[31]:https://downloads.openwrt.org/snapshots/trunk/ar71xx/generic/packages/packages/
[32]:http://www.hypexr.org/linux_scp_help.php
[33]:http://unix.stackexchange.com/questions/171456/download-n-upload-files-via-telnet-session
[34]:http://www.oreilly.com/openbook/linag2/book/ch11.html
[35]:https://en.wikipedia.org/wiki/IP_forwarding
[36]:https://wiki.openwrt.org/doc/techref/opkg?s[]=upgrade&s[]=pkgs
[37]:http://www.rooot.net/en/geek-stuff/openwrt/36-mount-external-usb-root-partition-openwrt.html
[38]:https://fixmynix.com/configuring-extroot-with-openwrt-on-tp-link-mr-3220/
[39]:http://en.wikipedia.org/wiki/Linksys_WRT54G_series
[40]:https://openwrt.org/
[41]:http://www.dd-wrt.com/site/index
[42]:http://www.polarcloud.com/tomato
[43]:http://www.wi-fiplanet.com/tutorials/article.php/3562391
[44]:http://www.netfilter.org/documentation/HOWTO/NAT-HOWTO-6.html
[45]:http://docs.openstack.org/mitaka/networking-guide/intro-nat.html
[46]:https://developer.ridgerun.com/wiki/index.php/How_to_use_USB_device_networking#Bridging_host_PC_to_allow_device_to_reach_the_Internet
[47]:https://www.chromium.org/chromium-os/poking-around-your-chrome-os-device
[48]:https://en.wikipedia.org/wiki/Booting#BOOT-LOADER
[49]:https://en.wikipedia.org/wiki/Bootstrapping#Computing
[50]:https://wiki.openwrt.org/doc/howto/generic.debrick
[51]:https://www.uclibc.org/
[52]:https://sourceware.org/binutils/
[53]:https://gcc.gnu.org/
[54]:https://buildroot.org/
[55]:https://git.kernel.org/cgit/utils/util-linux/util-linux.git/
[56]:http://www.linuxfromscratch.org/lfs/view/development/chapter06/util-linux.html
[57]:https://kernel.org/
[58]:http://www.makelinux.net/kernel_map/
[59]:http://www.howtogeek.com/howto/31632/what-is-the-linux-kernel-and-what-does-it-do/
[60]:http://www.ibm.com/developerworks/library/l-linux-kernel/
[61]:https://en.wikipedia.org/wiki/GNU_C_Library
[62]:https://en.wikipedia.org/wiki/System_call
[63]:https://en.wikipedia.org/wiki/Shell_(computing)
[64]:https://www.linux.com/learn/how-easily-install-ubuntu-chromebook-crouton%20
[65]:https://wiki.openwrt.org/doc/howto/luci.essentials
[66]:https://wiki.openwrt.org/toh/views/toh_extended_all
[67]:https://wiki.openwrt.org/doc/techref/luci
[68]:http://wiki.wrtnode.cc/index.php?title=%E5%A6%82%E4%BD%95%E9%80%9A%E8%BF%87%E6%97%A0%E7%BA%BF%E8%BF%9E%E4%B8%8A%E4%BA%92%E8%81%94%E7%BD%91/en
[69]:http://linuxwireless.org/en/developers/Documentation/Wireless-Extensions/
[70]:http://linuxwireless.org/en/developers/Documentation/nl80211/
[71]:https://wiki.openwrt.org/doc/howto/wireless.utilities
[72]:https://wiki.openwrt.org/doc/techref/wireless.modes
[73]:https://wiki.openwrt.org/doc/howto/mesh.80211s
[74]:https://wiki.openwrt.org/doc/howto/luci.essentials
[75]:https://github.com/openwrt/luci/wiki
[76]:https://wiki.openwrt.org/doc/howto/http.uhttpd
[77]:http://www.jauu.net/2015/03/03/complete-openwrt-guide/
[78]:http://ruxmon.com/assets/Uploads/OpenWRT-RuxMon-Brisbane.pdf
[79]:https://www.allaboutcircuits.com/news/teardown-tuesday-mini-network-router/?utm_source=All+About+Circuits+Members&utm_campaign=2577753527-EMAIL_CAMPAIGN_2017_06_01&utm_medium=email&utm_term=0_2565529c4b-2577753527-270523833/
[80]:http://www.gl-inet.com/build-your-openwrt-firmware-in-30-minutes/
[81]:http://www.gl-inet.com/how-to-enter-the-uboot-web-ui/
[82]:http://www.gl-inet.com/flash-your-own-firmware-to-the-router/
[83]:http://gl-inet.com/docs/diy/uboot/
[84]:http://www.gl-inet.com/docs/wiki/#!diy/serial.md
[85]:http://www.gl-inet.com/docs/wiki/#!mini/firmware.md
[86]:http://www.gl-inet.com/docs/wiki/#!mini/ar150rtc.md
[87]:https://en.wikipedia.org/wiki/Flash_memory
[88]:http://www.amazon.com/GL-AR150-ext-External-Antenna-150Mbps-Pre-installed/dp/B015CYI8DY/ref=sr_1_2?ie=UTF8&qid=1454383159&sr=8-2&keywords=GL-AR150
[89]:http://www.gl-inet.com/docs/wiki/#!index.md
[90]:http://www.gl-inet.com/blog/
[91]:https://wiki.openwrt.org/toh/gl-inet/gl-ar150
[92]:https://wikidevi.com/wiki/Atheros_AR9331
[93]:https://downloads.openwrt.org/snapshots/trunk/ar71xx/generic/openwrt-ar71xx-generic-gl-ar150-squashfs-sysupgrade.bin
[94]:https://www.gl-inet.com/downloads/
[95]:http://www.gl-inet.com/docs/mini/firmware/
[96]:http://www.gl-inet.com/docs/mini/
[97]:https://www.gl-inet.com/forums/topic/tutorial-unbrickingupgrading-your-gl-inet/
[98]:http://www.gl-inet.com/docs/diy/serial/
[99]:https://wiki.openwrt.org/toh/gl-inet/gl-ar150
[100]:https://www.gl-inet.com/forums/topic/ar150-usb-flashing-procedure-can-someone-please-verify-if-this-is-correct/
