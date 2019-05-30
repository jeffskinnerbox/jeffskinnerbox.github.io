
[!rpi-zero](https://www.raspberrypi.org/wp-content/uploads/2016/05/straightened.jpg)
[!rpi-zero](http://raspi.tv/wp-content/uploads/2016/05/Pi-Zero-1.3-top_1500.jpg)
[!rpi-zero](http://cdn.slashgear.com/wp-content/uploads/2016/05/straightened.jpg)
the 'normal' GPIO header pins have been left off to keep the devices slim and small,
and the processor / RAM are kept pretty basic.
Instead of the RPi 2's faster quad core ARM v7,
the Zero uses a single-core 1GHz ARM
(same processor in the RPi Model B+ and A+) and has only 512 MB of RAM.
You're essentially going to get the same performance as the RPi A+ or B+.
If you're looking for something that can do some more serious processing,
check out the RPi 2 or RPi 3.

# Raspberry Pi Zero Tour
![rpi-zero-all-types](http://zdnet1.cbsistatic.com/hub/i/r/2017/05/07/b510bd4a-f8bd-4b80-8c94-9e0f8c331665/resize/770xauto/567ce41124a0f0c49315dd7013074fc1/imgp3772.jpg)
![rpi-zero](http://livedoor.blogimg.jp/victory7com/imgs/1/2/1237de17.jpg)
[Adafruit][05] gives a nice [tour of the RPi Zero][04].

* HDMI Video is still available,
but you'll to use a Mini to Standard HDMI adapter to connect an HDMI cable.
* No analog audio out,
but if you connect HDMI to a monitor with speakers you will get HDMI digital audio.
* Like the RPi Model A+,
the RPi Zero does not have a USB Hub built in.
This means you get one USB port!
Moreover that USB port is not a standard [type A port][07],
instead it is a [USB On-The-Go (USB OTG)][08] port.
* The RPi Zero has two micro USP ports, one for USB OTG and the other for just power.
The RPi Zero power circuit has a blocking diode on the
USB power input to prevent dueling power supplies.
The standard USB ports and GPIO pins do not have that diode.
The Pi Foundation recommends adding a blocking diode when powering a RPi through the GPIO ports.
* You can power the RPi Zero thought the USB OTG port, but not recommended.

## RPi Zero v1.3 Camera Enabled
[Raspberry Pi Zero version 1.3][06] comes with a frequently requested feature: a camera connector,
but there is a small catch.
While the Raspberry Pi camera modules themselves will work just fine on the Pi Zero,
the usual camera cable they come with will not.
The [Pi Zero’s camera cable connector][68] is a little smaller than the ones on the full-grown Pi,
so it needs a special cable to interface the camera modules
to the slightly smaller connector found on the Pi Zero.

## USB Gadget
[!usb-go](https://upload.wikimedia.org/wikipedia/en/b/b6/USB_OTG_Logo.svg)
The Raspberry Pi Zero (and model A and A+) support [USB On The Go][01].
USB On-The-Go is an extension of the USB 2.0 specification
for connecting peripheral devices to each other.
USB OTG products can communicate with each other without the need to be connected to a host computer.
USB OTG devices, known as dual-role peripherals,
can act as limited hosts or peripherals themselves depending on how
the cables are connected to the devices, and they also can connect to a host PC.
(**Note:** Although the model A and A+ can support being a USB slave,
they are missing the ID pin, which is tied to ground internally,
so are unable to dynamically switch between USB master/slave mode.
As such, they default to USB master mode.)

The magic happens in the “gadget mode” firmware of the PI Zero.
Since it doesn’t have the USB HUB chip in the way like other models (RPi B/B+)
it can be configured in device mode.
This makes it appear to any host computer as a virtual USB network adaptor
– so you can immediately access it as though it were Ethernet connected.
It also possible to set it up to appear as mass storage device, keyboard, mouse or any other USB peripheral!

In order to connect a USB device (mouse, keyboard, WiFi, etc.),
you'll need a you’ll also need a suitable OTG cable or connector for your device.
Electrically, there isn't anything special about the OTG cable,
only that it has a male micro USB on one end and a female Type A USB connector on the other end.
You can [grab one for a few bucks on Amazon][02].
If you need to connect multiple USB devices,
a simple USB hub will do what you need.
A powered hub is even better,
you can power the RPi Zero from the hub.
The power cable does not pass any data,
just plug the power micro USB cable into one of the ports.

Using the Linux USB Gadget modules (list in the parentheses below),
the RPi Zero can emulate a whole host of USB devices including:

* **Serial** (`g_serial`) – So can get a serial connection via Putty or Screen into the RPi Zero,
similar to using the UART pins.
* **Ethernet** (`g_ether`) – Make the RPi Zero appear as a USB Ethernet modem,
and with the right configuration, you can then get full TCP/IP services.
* **Ethernet and Serial** (`g_cdc`) - _Not clear what this is._
* **Mass storage and Serial** (`g_acm_ms`) – You can get the RPi Zero to appear as a flash drive,
allowing you to copy files over and then process them.
* **MIDI** (`g_midi`) – The RPi Zero could appear as a virtual MIDI instrument.
* **Audio** (`g_audio`) – The RPi Zero could appear as a virtual headphone output or microphone input.
* **Keyboard/Mouse** (`g_hid`) – The RPi Zero could appear as a virtual keyboard or mouse.
So when you plug the RPi Zero into a computer, it could start typing!
* **Webcam** (`g_webcam`) – Allows you to configure the device as if its a webcam
* **Printer** (`g_printer`) – The Raspberry Pi Zero appears to be a printer
* **Multi** (`g_multi`) - Allows you to combine up to 3 Gadget modules at a time
(although Windows and Mac have difficulty handling it)
* **Gadget Tester** (`g_zero`) – Used for testing purposes

## Console Access to RPi Zero
[!sereial-cable](https://cdn-shop.adafruit.com/970x728/954-02.jpg)
A [USB to TTL serial cable][35] (aka console cable)
can be used to connect to [system console][36] on the Raspberry Pi Zero.
(Make sure to use a cable having 3.3V logic levels. Not all cables are 3.3V!)
The great advantage of connecting this way is that
you do not need keyboard, mouse, or display attached to the RPi to log into it.
It can even supply the power for your RPi.
The RPi uses its built-in serial port to allow devices to connect to its console,
via a terminal emulater like [`screen`][66],
and issue commands just as if you were logged in.
The posting "[How to Run Raspberry Pi with No Monitor or Network][39]"
can give you additional information.

Connect the console cable to the RPi pins in the table below.
The location of these GPIO pins on the Raspberry Pi (all types) is illustrated in the picture below
(see [Raspberry Pi A+ , B+ , Zero, Pi 2 GPIO Pinout][37] and
[Raspberry Pi 3 Model B GPIO 40 Pin Block Pinout][38] for additional detail):

[pin-out!](http://workshop.raspberrypiaustralia.com/assets/console-cable-connections.jpg)
[pin-out!](https://www.element14.com/community/servlet/JiveServlet/previewBody/80667-102-1-338789/GPIO.png)

|   Raspberry Pi   |   Serial Cable    |
|:----------------:|:-----------------:|
| VCC → RPi Pin 02 | DC Power 5V - red |
| GND → RPi Pin 06 | Ground - black    |
| RXD → RPi Pin 08 | TX - white        |
| TXD → RPi Pin 10 | RX - green        |

**NOTE:** Only connect to VCC / Pin 02 if you are **not** supply power via the USB.

The console cable is a USB serial device,
and I have give it a [usb persistent name][64] of `ccable33v`.
(For the Adafruit console cable,
I added the following UDEV rule to a file in the `/etc/udev/rules.d.` directory:
`SUBSYSTEM=="tty", ATTRS{idVendor}=="067b", ATTRS{idProduct}=="2303", SYMLINK+="ccable33v"`.)
With this, I can log into my RPi Zero device with:

```bash
# login to raspberry pi console
sudo screen /dev/ccable33v 115200,cs8

# NOTE: press CTRL + A then k. To logout and kill all screen session
```

**NOTE:** If this doesn't work, make sure you have the serial console correctly configured.
During the Raspberry Pi configuration using `sudo raspi-config`, select "Boot Options" and choose "B1 Console".
You will need a password to get console access,
which gives you greater security, and allow console cables to work via [`screen`][66].

# Raspberry Pi Zero Set Up
The objective here is to get the RPi Zero up and running without the need for any
USB keyboard, mouse, or HDMI monitor.
Set it up as a [headless device][03], and to do so,
we'll need to make use of the USB OTG capabilities of the RPi Zero.

To setting up the Raspberry Pi Zero as a USB Slave (OTG mode),
we'll use the `g_ether` driver creating a virtual Ethernet device
(allowing full SSH, SFTP, VNC etc).
The other USB Gadget drivers (beside `g_ether`)
can be done after the first boot and we have the RPi Zero up and working.

## Step 0: Configuring the SD Card
Download and install the latest Raspbian Jessie onto a suitably large SD card,
and expand the root partition.
This has been described in many place, including [my description (Steps 1 & 2)][03].
Once you're done, plug the micro SD card into the Micro SD Card holder on the Zero.

## Step 1: Setting Up RPi Zero OTG
On a non-Zero Raspberry Pi, like the RPi A,
the next step would be to configure the WiFi on the SD Card so you can log in,
or on the RPi B model, just plug in an Ethernet cable.
Can't do ether of these with the RPi Zero since it has neither WiFi or Ethernet.
In the RPi Zero case, In Steps 1 to Step 3 show you how to use the powers of the USB Gadget.
You could avoid the completity of this by using a WiFi dongle
and a [Micro USB to USB OTG Adapter][69] or [Ultra Mini DM Micro USB 5pin OTG Adapter Connector][70].
Place this on the RPi Zero USB and follow Steps
["HowTo: Set-Up the Raspberry Pi as a Headless Device"][03].

To enable the USB Gadget capability on the RPi Zero,
first the SD Card's `/boot` directory files need to be properly configure to enable USB Gadget mode.
The [video showing how to configure USB OTG][09] and the article
"Raspberry Pi Zero – Programming over USB! - [Part 1][10] and [Part 2][11]"
provides detail documentation.

With the SD Card mounted, you need to edit two files in the `/boot` directory.
Within the file `/boot/config.txt`, add the following line at the bottom of the file
(including a newline):

```
# dwc2 USB controller driver enables USB Gadget mode
dtoverlay=dwc2
```

Next, open up the file  `/boot/cmdline.txt`.
Be careful with this file, it is very picky with its formatting!
Each parameter is separated by a single space (it does not use newlines).
Insert `modules-load=dwc2,g_ether` after `rootwait`.
After the insertion, the line should look like this

```
dwc_otg.lpm_enable=0 console=serial0,115200 console=tty1 root=/dev/mmcblk0p2 rootfstype=ext4 elevator=deadline fsck.repair=yes rootwait modules-load=dwc2,g_ether quiet init=/usr/lib/raspi-config/init_resize.sh
```

Eject the SD card from your computer.

## Step 2A: Connecting with it as USB Gadget (Ubuntu)
To connect to the RPi Zero over USB,
you’ll need [Bonjour][12], or the Linux [Avahi Daemon][12] or similar
[zero configuration discovery service][13] on your host computer.
My Ubuntu Linux distributions has this all already installed.

Put the SD Card into the RPi Zero, power it up, and connect it via standard USB to your computer.
It will take up to 90s to boot up (shorter on subsequent boots).
Use `lsusb` to validate that the RPi Zero as an Ethernet Gadget has been sensed by the host computer via:

```bash
# check for the RPi Zero gadget
$ lsusb | grep Gadget
Bus 002 Device 013: ID 0525:a4a2 Netchip Technology, Inc. Linux-USB Ethernet/RNDIS Gadget
```

The new USB interface causes a [network hotplug][14]
event reporting that a new network interface has been registered.
At this time, the interface might look like this via `ifconfig` or `ip addr show`:

~~~~{.bash hl_lines="2 3 4 5 6 7"}
$ ifconfig
enp0s29u1u7 Link encap:Ethernet  HWaddr c6:5d:2b:58:db:d3
          UP BROADCAST RUNNING MULTICAST  MTU:1500  Metric:1
          RX packets:46 errors:0 dropped:0 overruns:0 frame:0
          TX packets:252 errors:0 dropped:0 overruns:0 carrier:0
          collisions:0 txqueuelen:1000
          RX bytes:11030 (11.0 KB)  TX bytes:44941 (44.9 KB)

eth0      Link encap:Ethernet  HWaddr 00:22:4d:83:c1:c8
          inet addr:192.168.1.200  Bcast:192.168.1.255  Mask:255.255.255.0
          inet6 addr: fe80::222:4dff:fe83:c1c8/64 Scope:Link
          UP BROADCAST RUNNING MULTICAST  MTU:1500  Metric:1
          RX packets:3115681 errors:0 dropped:454 overruns:0 frame:0
          TX packets:1735886 errors:0 dropped:0 overruns:0 carrier:0
          collisions:0 txqueuelen:1000
          RX bytes:3312462197 (3.3 GB)  TX bytes:242018666 (242.0 MB)
          Interrupt:20 Memory:efd00000-efd20000

eth1      Link encap:Ethernet  HWaddr 00:22:4d:83:c1:d7
          UP BROADCAST MULTICAST  MTU:1500  Metric:1
          RX packets:0 errors:0 dropped:0 overruns:0 frame:0
          TX packets:0 errors:0 dropped:0 overruns:0 carrier:0
          collisions:0 txqueuelen:1000
          RX bytes:0 (0.0 B)  TX bytes:0 (0.0 B)
          Interrupt:16 Memory:efc20000-efc40000

lo        Link encap:Local Loopback
          inet addr:127.0.0.1  Mask:255.0.0.0
          inet6 addr: ::1/128 Scope:Host
          UP LOOPBACK RUNNING  MTU:65536  Metric:1
          RX packets:4845 errors:0 dropped:0 overruns:0 frame:0
          TX packets:4845 errors:0 dropped:0 overruns:0 carrier:0
          collisions:0 txqueuelen:1
          RX bytes:78332787 (78.3 MB)  TX bytes:78332787 (78.3 MB)

wlan0     Link encap:Ethernet  HWaddr 94:db:c9:51:10:ca
          inet addr:192.168.1.13  Bcast:192.168.1.255  Mask:255.255.255.0
          inet6 addr: fe80::96db:c9ff:fe51:10ca/64 Scope:Link
          UP BROADCAST RUNNING MULTICAST  MTU:1500  Metric:1
          RX packets:532053 errors:0 dropped:0 overruns:0 frame:0
          TX packets:10022 errors:0 dropped:0 overruns:0 carrier:0
          collisions:0 txqueuelen:1000
          RX bytes:121933015 (121.9 MB)  TX bytes:2597747 (2.5 MB)
~~~~

The `ip addr show` command gives me:

~~~~{.bash hl_lines="22 23 24 25"}
$ ip addr show
1: lo: <LOOPBACK,UP,LOWER_UP> mtu 65536 qdisc noqueue state UNKNOWN group default qlen 1
    link/loopback 00:00:00:00:00:00 brd 00:00:00:00:00:00
    inet 127.0.0.1/8 scope host lo
       valid_lft forever preferred_lft forever
    inet6 ::1/128 scope host
       valid_lft forever preferred_lft forever
2: eth0: <BROADCAST,MULTICAST,UP,LOWER_UP> mtu 1500 qdisc pfifo_fast state UP group default qlen 1000
    link/ether 00:22:4d:83:c1:c8 brd ff:ff:ff:ff:ff:ff
    inet 192.168.1.200/24 brd 192.168.1.255 scope global eth0
       valid_lft forever preferred_lft forever
    inet6 fe80::222:4dff:fe83:c1c8/64 scope link
       valid_lft forever preferred_lft forever
3: eth1: <NO-CARRIER,BROADCAST,MULTICAST,UP> mtu 1500 qdisc pfifo_fast state DOWN group default qlen 1000
    link/ether 00:22:4d:83:c1:d7 brd ff:ff:ff:ff:ff:ff
4: wlan0: <BROADCAST,MULTICAST,UP,LOWER_UP> mtu 1500 qdisc mq state UP group default qlen 1000
    link/ether 94:db:c9:51:10:ca brd ff:ff:ff:ff:ff:ff
    inet 192.168.1.13/24 brd 192.168.1.255 scope global wlan0
       valid_lft forever preferred_lft forever
    inet6 fe80::96db:c9ff:fe51:10ca/64 scope link
       valid_lft forever preferred_lft forever
7: enp0s29u1u7: <BROADCAST,MULTICAST,UP,LOWER_UP> mtu 1500 qdisc pfifo_fast state UP group default qlen 1000
    link/ether 42:b8:49:59:e8:54 brd ff:ff:ff:ff:ff:ff
    inet6 fe80::1fe8:b090:8c31:39e9/64 scope link
       valid_lft forever preferred_lft forever
~~~~

This demonstrates that the Linux host does in fact see the RPi Zero USB Gadget
as an Ethernet interface, but gives it a strange name of `enp0s29u1u7`.
The next question is, does services like TCP/IP SSH see the USB Gadget?
This seems unlikely since the USB Gadget doesn't have a IP address assigned to it.

To further validate this,
login via SSH from a Linux terminal from the RPi Zero's host machine:

```bash
# confirm that the RPi Zero is online
$ ping raspberrypi.local
ping: unknown host raspberrypi.local

# if RPI Zero is online, login into it
$ ssh pi@raspberrypi.local
ssh: Could not resolve hostname raspberrypi.local: Name or service not known
```

In my case, this didn't initially work and it made me suspicious that
[Multicast Domain Name System (mDNS)][17] wasn't working properly.
mDNS is one of the features of Bonjour, included in Mac OS X 10.2 or later,
and the linux equivalent called [Avahi][16].
mDNS resolves host names to IP addresses within small networks that do not include a local name server.
It is a [zero-configuration service (aka Zeroconf)][16],
using essentially the same programming interfaces,
packet formats and operating semantics as the unicast [Domain Name System (DNS)][28].
When an mDNS client needs to resolve a host name,
it sends an IP multicast query message that asks the host having that name to identify itself.
That target machine then multicasts a message that includes its IP address.
All machines in that subnet can then use that information to update their mDNS caches.

Networking device hostnames ending with [`.local`][18] are often employed in private networks,
where they are resolved either via the multicast domain name service (mDNS)
or local Domain Name System (DNS) servers.
Anywhere that a you could normally use a DNS name such as "www.apple.com",
you could instead enter the Bonjour name of the computer on the local network.
To indicate that the name should be looked up using local multicast instead of a standard DNS query,
all Bonjour host names end with the extension ".local."
This helps avoid confusion between names that are local Bonjour computer names
("mycomputer.local") and globally unique DNS names ("www.apple.com").

First I wanted to make sure that the `avahi-deamon` is running and its status was OK.
I did this with the following:

```bash
# is the avahi-daemon running
$ ps -e | grep avahi
  967 ?        00:00:02 avahi-daemon
 1012 ?        00:00:00 avahi-daemon

# status of the avahi-daemon
$ sudo service avahi-daemon status
● avahi-daemon.service - Avahi mDNS/DNS-SD Stack
   Loaded: loaded (/lib/systemd/system/avahi-daemon.service; enabled; vendor preset: enabled)
   Active: active (running) since Tue 2016-07-19 22:50:43 EDT; 4 days ago
 Main PID: 967 (avahi-daemon)
   Status: "avahi-daemon 0.6.32-rc starting up."
   CGroup: /system.slice/avahi-daemon.service
           ├─ 967 avahi-daemon: running [desktop.local
           └─1012 avahi-daemon: chroot helpe

Jul 24 14:15:00 desktop avahi-daemon[967]: Registering new address record for fe80::83f3:9d9d:3647:84eb on enp0s29u1u7.*.
Jul 24 14:15:43 desktop avahi-daemon[967]: Withdrawing address record for fe80::83f3:9d9d:3647:84eb on enp0s29u1u7.
Jul 24 14:15:43 desktop avahi-daemon[967]: Leaving mDNS multicast group on interface enp0s29u1u7.IPv6 with address fe80::83f3:9d9d:3647:84eb.
Jul 24 14:15:43 desktop avahi-daemon[967]: Interface enp0s29u1u7.IPv6 no longer relevant for mDNS.
Jul 24 14:15:45 desktop avahi-daemon[967]: Joining mDNS multicast group on interface enp0s29u1u7.IPv6 with address fe80::83f3:9d9d:3647:84eb.
Jul 24 14:15:45 desktop avahi-daemon[967]: New relevant interface enp0s29u1u7.IPv6 for mDNS.
Jul 24 14:15:45 desktop avahi-daemon[967]: Registering new address record for fe80::83f3:9d9d:3647:84eb on enp0s29u1u7.*.
Jul 24 14:16:28 desktop avahi-daemon[967]: Withdrawing address record for fe80::83f3:9d9d:3647:84eb on enp0s29u1u7.
Jul 24 14:16:28 desktop avahi-daemon[967]: Leaving mDNS multicast group on interface enp0s29u1u7.IPv6 with address fe80::83f3:9d9d:3647:84eb.
Jul 24 14:16:28 desktop avahi-daemon[967]: Interface enp0s29u1u7.IPv6 no longer relevant for mDNS.
```

So the Aiahi daemon is running and the daemon appears to be registering the USB Gadget `enp0s29u1u7`
_but then shortly after it is withdrawn_.
I tried restarting the service with `sudo service avahi-daemon restart`,
but that did not help.

[Some say][19] that [NetworkManager][21] could be getting in the way,
and it may make sense to [disable NetworkManager][22]
on some or all your interfaces.
You can check to see if NetworkManager is running
via the command `service NetworkManager status`.
My experimentation has shown me that removing NetworkManager could cause other problems.
I (and many others) have had problems with NetworkManager before,
so I suspect its the root of my troubles.

## Step 2B: Connecting with it as USB Gadget (Raspberry Pi)
The Raspberry Pi Linux distribution doesn't use NetworkManager
([but some people have installed it][20]),
so I connected the RPi Zero into a RPi B USB port and it work immediately!
I was able to SSH into without problem.

The network interface on the RPi B looked like this:

~~~~{.bash hl_lines="20-27"}
$ ifconfig
eth0      Link encap:Ethernet  HWaddr b8:27:eb:a6:d5:8c
          inet addr:192.168.1.190  Bcast:192.168.1.255  Mask:255.255.255.0
          inet6 addr: fe80::3665:17c1:7c60:ec46/64 Scope:Link
          UP BROADCAST RUNNING MULTICAST  MTU:1500  Metric:1
          RX packets:35022 errors:0 dropped:13 overruns:0 frame:0
          TX packets:1659 errors:0 dropped:0 overruns:0 carrier:0
          collisions:0 txqueuelen:1000
          RX bytes:6386979 (6.0 MiB)  TX bytes:173190 (169.1 KiB)

lo        Link encap:Local Loopback
          inet addr:127.0.0.1  Mask:255.0.0.0
          inet6 addr: ::1/128 Scope:Host
          UP LOOPBACK RUNNING  MTU:65536  Metric:1
          RX packets:100 errors:0 dropped:0 overruns:0 frame:0
          TX packets:100 errors:0 dropped:0 overruns:0 carrier:0
          collisions:0 txqueuelen:1
          RX bytes:14272 (13.9 KiB)  TX bytes:14272 (13.9 KiB)

usb0      Link encap:Ethernet  HWaddr ce:c9:66:99:66:4c
          inet addr:169.254.112.117  Bcast:169.254.255.255  Mask:255.255.0.0
          inet6 addr: fe80::14d7:1f17:3744:44a0/64 Scope:Link
          UP BROADCAST RUNNING MULTICAST  MTU:1500  Metric:1
          RX packets:443 errors:0 dropped:0 overruns:0 frame:0
          TX packets:464 errors:0 dropped:0 overruns:0 carrier:0
          collisions:0 txqueuelen:1000
          RX bytes:152457 (148.8 KiB)  TX bytes:160613 (156.8 KiB)

wlan0     Link encap:Ethernet  HWaddr 00:e0:4c:1b:db:5f
          inet addr:192.168.1.189  Bcast:192.168.1.255  Mask:255.255.255.0
          inet6 addr: fe80::d4a3:6453:8ff9:215d/64 Scope:Link
          UP BROADCAST RUNNING MULTICAST  MTU:1500  Metric:1
          RX packets:45069 errors:0 dropped:3681 overruns:0 frame:0
          TX packets:830 errors:0 dropped:2 overruns:0 carrier:0
          collisions:0 txqueuelen:1000
          RX bytes:11215268 (10.6 MiB)  TX bytes:80524 (78.6 KiB)
~~~~

Notice how the RPi Zero Ethernet Gadget appears to be on a separate domain `169.254.112.117`.
This is very strange!

I suspect this strange IP address is resulting from a faulty assumption on my part.
I should not assume that [DHCP][33] can help me,
and instead I must supply a static IP address.
After all, the USB Gadget isn't really on my LAN, where the DHCP server is,
it is attached to a USB.
We are atempting to communicate with it via TCP/IP but it needs its own network.

I'm going to assume another [private network][34] with addressing `10.0.1.x`.
On this network, the RPi B host will have IP address `10.0.1.1`
and the RPi Zero USB Gadget will have address `10.0.1.2`.
**NOTE:** You'll see this addressing scheme being used below without any futher motivation.

## Step 3: Bridging Via Host PC to Allow Gadget to Reach the Internet
Now we want to update the the RPi Zero with the latest software
and that will require Internet access.
If you now login into the RPi Zero and `ping` a know host on the Internet,
you'll find that you can't reach it:

```bash
# log into the RPi Zero
$ ssh -X pi@raspberry.local

# ping Google
$ ping google.com
ping: unknown host google.com

# ping Google's IP address
$ ping 172.217.4.206
connect: Network is unreachable
```

To gain Internet access, the RPi Zero, and its supporting host
(i.e. the Linux system its plugged into via USB) needs to support three things:

* The host and RPi Zero both must be on a common IP network
* The RPi Zero must use its host as an [Internet Gateway][27]
(its assumed the host has access to the Internet directly or via a gateway)
* The RPi Zero must have an assigned [DNS server][31]
(such as Google's [`8.8.8.8`][26]) so it can resolve host names.

For all this to work and gain Internet access,
you must mapping the RPi Zero IP address space into the host's
by modifying network address information in Internet Protocol (IP) datagram packet headers.
This is called [Network Address Translation (NAT)][29].
More specifically, we need to use a form of NAT called [IP Masquerading][30]
which allows internally connected computers to communicate to the Internet
without communicating directly to a LAN's router
([this paper][67] gives a good explanation).
In essence, we are asking the host to act like a router,
that is transfer IP packets from one network to another, and generally,
computers refuse to act like routers.
To over come this, you need to specifically enabled that it is to
transfer IP packets from one network to another.
This is call [IP Forwarding][32].

To setup the host on another private network (via the USB as the network interface),
_login into the host_ and make this entry into the `/etc/network/interfaces` file:


```bash
# static IP address to interface USB Gadget (RPi Zero)
auto usb0
allow-hotplug usb0
iface usb0 inet static
    address 10.0.1.1
    netmask 255.255.255.0
```

Then restart the network interfaces with the command `sudo /etc/init.d/networking restart`.
Now the `usb0` network interface should have the new IP address.
Check it with:

~~~~{.bash hl_lines="3"}
# check usb0 ip address
$ ifconfig usb0
usb0      Link encap:Ethernet  HWaddr 4e:31:3a:db:3d:a8
          inet addr:10.0.1.1  Bcast:10.0.1.255  Mask:255.255.255.0
          inet6 addr: fe80::4c31:3aff:fedb:3da8/64 Scope:Link
          UP BROADCAST RUNNING MULTICAST  MTU:1500  Metric:1
          RX packets:167 errors:0 dropped:0 overruns:0 frame:0
          TX packets:198 errors:0 dropped:0 overruns:0 carrier:0
          collisions:0 txqueuelen:1000
          RX bytes:31085 (30.3 KiB)  TX bytes:37989 (37.0 KiB)
~~~~

The next step is to get access to the Internet.
This is done by [IP Masquerading, a form of Network Address Translation (NAT)][63].
To let the RPi Zero get the access to the Internet via its Linux host,
_login into the host_ and do the following
(_assumes_ that the host is connected to the LAN via the `eth0` network interface):

```bash
# tell kernel that you want to allow IP forwarding
echo 1 | sudo tee /proc/sys/net/ipv4/ip_forward > /dev/null

# or you could do the following
sudo sysctl -w net.ipv4.ip_forward=1

# tell iptables to forward the packets from interface usb0 to LAN / Internet on interface eth0
sudo iptables -A FORWARD -j ACCEPT
sudo iptables -A POSTROUTING -t nat -j MASQUERADE -s 10.0.1.0/25
```

**IS THIS - The wrong way to masquerade - see this** - http://www.billauer.co.il/ipmasq-html.html

At this point, your route table should look something like this on the host:

```bash
$ route
Kernel IP routing table
Destination     Gateway         Genmask         Flags Metric Ref    Use Iface
default         FIOS_Quantum_Ga 0.0.0.0         UG    202    0        0 eth0
10.0.1.0        *               255.255.255.0   U     0      0        0 usb0
link-local      *               255.255.0.0     U     203    0        0 usb0
192.168.1.0     *               255.255.255.0   U     202    0        0 eth0
```

The `iptables` rules on the host should look like this:

```bash
# to see your iptable rules
$ sudo iptables -L
Chain INPUT (policy ACCEPT)
target     prot opt source               destination

Chain FORWARD (policy ACCEPT)
target     prot opt source               destination
ACCEPT     all  --  anywhere             anywhere

Chain OUTPUT (policy ACCEPT)
target     prot opt source               destination
```

To give the RPi Zero a DNS server, log into the RPi Zero and do the following:

```bash
# append comment in file
echo -e "\\n# Google DNS" | sudo tee --append /etc/resolv.conf > /dev/null

# append the name server
echo "nameserver 8.8.8.8" | sudo tee --append /etc/resolv.conf > /dev/null

# set the default gateway
sudo route add default gw 10.0.1.1
```

Also on the RPi Zero, provide the IP address for the `usb0` interface and
restart the interface with `sudo /etc/init.d/networking restart`.
Here are the charges need to `/etc/network/interfaces` file:

```bash
# static IP address for USB Gadget (RPi Zero)
auto usb0
allow-hotplug usb0
iface usb0 inet static
    address 10.0.1.2
    netmask 255.255.255.0
```

>**NOTE**: If you want these changes to persist after a reboot,
it is best pratice to not append the name server with data,
but instead, put `dns-nameservers 8.8.8.8` within the iface stanza above.
This way, the this DNS entry would survive a reboot.
Also, to make the routing table changes persistent,
place `gateway 10.0.1.1` in the same stanza.
To make the IP Forwarding permanent insert or edit the following line in
`/etc/sysctl.conf`: `net.ipv4.ip_forward = 1`
See below on how to make the iptable updates persistent.

On the RPi Zero, the routing table will look something like this:

```bash
$ route
Kernel IP routing table
Destination     Gateway         Genmask         Flags Metric Ref    Use Iface
default         10.0.1.1        0.0.0.0         UG    0      0        0 usb0
10.0.1.0        *               255.255.255.0   U     0      0        0 usb0
link-local      *               255.255.0.0     U     202    0        0 usb0
```

Now retest the RPi Zero's ability to reach the Internet:

```bash
$ ping -c 3 google.com
PING google.com (216.58.195.142) 56(84) bytes of data.
64 bytes from iad23s24-in-f14.1e100.net (216.58.195.142): icmp_seq=1 ttl=56 time=10.0 ms
64 bytes from iad23s24-in-f14.1e100.net (216.58.195.142): icmp_seq=2 ttl=56 time=20.4 ms
64 bytes from iad23s24-in-f14.1e100.net (216.58.195.142): icmp_seq=3 ttl=56 time=11.0 ms

--- google.com ping statistics ---
3 packets transmitted, 3 received, 0% packet loss, time 2004ms
rtt min/avg/max/mdev = 10.040/13.874/20.486/4.696 ms
```

To stop the forwarding of IP messages from the RPi Zero,
you can use the following commands:

```bash
echo 0 | sudo tee /proc/sys/net/ipv4/ip_forward > /dev/null
sudo iptables -t nat -F POSTROUTING
```

The actual iptables rules are created and
customized on the command line with the command `iptables` for IPv4
(and `ip6tables` for IPv6) but will no be there after reboot.
The firewall rules created so far will not survive a reboot of your system.
To overcome this,
you need to use the `iptables-save` or `iptables-persistent`
(or `netfilter-persistent` for Ubuntu 16.04).

```bash
# make backup of current itables rules
sudo cp /etc/iptables/rules.v4 /etc/iptables/backup_rules.v4

# make backup of currently active rules
sudo iptables-save > $HOME/tmp/backup_rules.v4

# make the currently active rules persistent over reboots
# (ie load them into /etc/iptables/rules.v4)
sudo netfilter-persistent save
```

To restore iptables rule that you may have saved

```bash
# make your backup rules your active rules
sudo iptables-restore < $HOME/tmp/backup_rules.v4
```

## Step 4: Configuring the Raspberry Pi Zero
With the above steps complete, you can follow the article
["HowTo: Set-Up the Raspberry Pi as a Headless Device"][03] to complete the install.
Specifically, make sure to do at least the following:

* Step 5: Configure the Raspberry Pi
* Step 6: OS Updates
* Step 7: Updating Firmware for Raspberry Pi

## Step 5: Adding WiFi to the Zero
If you determined to have WiFi for your RPi Zero, it can be done.
You could [try using an ESP8266][42].
But the ESP8266 is a WiFi (aka wireless Ethernet) to serial device
(you don't get access to TCP/IP directly).
To work around this, you could simply connect ESP8266 to the serial port in the RPi Zero
and start a WiFi point-to_point (PPP) connection to some other machine on your WiFi network,
giving you terminal access.
But unfortunately the ESP8266 doesn’t provide PPP support.
The article "[RASPBERRY PI ZERO + ESP8266 = INTERNET?!][24]"
and [software from Jee Labs][40] does provide away around all this.
Effectively a [wireless to serial bridge][41] but its more
like a WiFi co-processor to web-enable, reprogram,
and control a other wise simple/dumb microprocessor.

The posting "[Add a Tiny Wi-Fi Board to a Raspberry Pi Zero][23]"
shows how you can solder onto the RPi Zero board a WiFi USB dongle,
effectively bypassing the micro USB connector with a standard USB.
It's much easier to just use a [Micro USB OTG Adapter][43] and a [WiFi USB Adapter][44].
With this in place, you just need to provision the RPi Zero
like any Raspberry Pi for WiFi connectivity.
This can be done by following "Step 3: Configure your WiFi" within
["HowTo: Set-Up the Raspberry Pi as a Headless Device"][03].

I added the following to the  `/etc/network/interfaces` file:

```bash
# establish connection to home wifi and other known networks
auto wlan0
allow-hotplug wlan0
iface wlan0 inet dhcp
    wpa-conf /etc/wpa_supplicant/wpa_supplicant.conf
```

And the following to the `/etc/wpa_supplicant/wpa_supplicant.conf` file:

```bash
# home wifi network settings
network={
    id_str="home"
    ssid="my-wifi"
    scan_ssid=1
    psk="my-wifi-password"
    proto=RSN
    key_mgmt=WPA-PSK
    pairwise=CCMP
    auth_alg=OPEN
}
```

Now reboot you RPi Zero, put in the micro USB OTB adapter along with the WiFi USB adapter,
and you should be able to login.
But in this case, your using your home WiFi's LAN and its [DHCP][33] instead of
provisioning another IP network using static addressing,
as you did for the USB Gadget scenario.
In fact, if you did this on the SD Card earlier in Step 1,
you could skip the USB Gadget stuff all together ...
but then you wouldn't have learned about all of the RPi Zero's USB Gadgetry!

## Step 5A: Free Some Disk Space
If you are using an 8GB SD card,
you may be using close to 50% of the available space,
so one simple thing to do is to delete both
LibreOffice and Wolfram engine to free up about 1G of space.

```bash
# free up some disk space by remove some packages
sudo apt-get purge wolfram-engine
sudo apt-get purge libreoffice*
sudo apt-get clean
sudo apt-get autoremove
```

## Step 6: Zero Battery Supply (Optional)
The size and power consumption of the Raspberry Pi Zero makes it possible to create battery powered
solutions like a small stealthy spycam applications.
You can replacing the micro USB wall charger, and start powering with batteries.
A [Lithium Ion Polymer Battery][61] and a corresponding Adafruit [PowerBoost 1000C Charger][62]
can be an effective solution.
It has built-in load-sharing battery charger circuit.
So it will automatically switch over to the USB power when available,
instead of continuously charging/draining the battery,
making it a Uninterruptible Power Supply (UPS).

## Step 7A: Battery Power Monitoring (Optional)
If you're running off of a battery, your going to want to know when its running dry,
and gracefully shutdown the Raspberry Pi.
How long your project will run on batteries can be estimated by knowing
the capacity of your batteries and the amount of current consumed by your project.
Battery capacity (in mAh) / Average current consumption (in mA) = Hours of expected runtime.

In addition, to sense your batteries ability to continue to supply power,
you need to monitor its output voltage.
A fully charged Lipoly battery will give you 4.2V but stick around 3.7V for much of the battery life.
It then slowly sink down to 3.2V or so before the protection circuitry on the battery cuts it off.
By measuring the voltage you can quickly tell when you're heading to 3.2V
and intervene to do your own graceful shutdown.

A great way to measure voltage and current over time is by using the
[INA219-based current sensor breakout][84].
The INA219 can be attached directly in series with the power input of this project
and queried over the INA219's I2C interface to read current consumption.
Using the Raspberry Pi's ability I2C interface,
you can record the current consumption and voltage level of your project over time.
The following articles could be helpful:

* [Adafruit INA219 Current Sensor Breakout](https://learn.adafruit.com/adafruit-ina219-current-sensor-breakout)
* [Battery Life & Current Consumption](https://learn.adafruit.com/low-power-wifi-datalogging/battery-life-and-current-consumption)

## Step 7B: Battery Supply + Power Monitoring
* [LiFePO4wered/Pi3 Product Brief](https://lifepo4wered.com/files/LiFePO4wered-Pi3-Product-Brief.pdf)

[!LiFePO4wered/Pi](https://cdn.hackaday.io/images/9332751457457361166.jpg)
The [LiFePO4wered/Pi][85] (purchase on [Tindie][87])
may be the best power solution for the Raspberry Pi Zero.
It combines both the UPS and power monitoring functions into a single solution.
It also has PCB touch button that gives you clean shutdown instead of just pulling power.
A ultra-low power [MSP430G2231 microcontroller][86] monitors the battery
and also connected to the Pi's I2C bus and monitors the Pi's running state.

The dsigner provides a [open source software package to interact with the LiFePO4wered/Pi][88].
It contains an application development library,
a CLI interface to read/write device registers over the I2C bus,
and a tiny daemon (`lifepo4wered-daemon`) that continually tracks the power state.
The daemon can initiate a clean shutdown when the battery is empty
or the user wants to turn the RPi off using the touch button.
Touch button parameters, voltage thresholds,
and an auto boot flag can be customized by the user and saved to flash.
You can also set it up so the RPi will automatically boot whenever there is enough battery charge.
There is also a wake up timer that can be set so the Pi can shut down,
and automatically be started again after the wake timer expires.

The LiFePO4wered/Pi works fine for the Raspberry Pi Zero and 1,
but it could have difficulty maintaining a charge for a RPi 2 or 3 under load.
The  latest version, the [LiFePO4wered/18650][89], can hand these heavy load conditions.
You can even get a case with room for the RPi3 and the LiFePO4wered/Pi [on Tindie][90].
**Note:** Adafruit has a similar solution to the LiFePO4wered/Pi
doing a [hack of its PowerBoost 500 Charger][25].

The LiFePO4wered/Pi requires software to be running on the Raspberry Pi to operate correctly.
This software provides a daemon that automatically
manages the power state and shutdown of the RPi,
a library that allows integration of LiFePO4wered/Pi functionality in user programs,
and a CLI (command line interface) program that allows the user to
easily configure the LiFePO4wered/Pi or control it from shell scripts.
Load the software RPi Zero via

```bash
# clone software package
cd ~
git clone https://github.com/xorbit/LiFePO4wered-Pi.git

# build the software
cd LiFePO4wered-Pi
python build.py

# install the software
# this also performs enablement of I2C bus and GPIO UART
sudo ./INSTALL.sh
```

At this time, the blinking LiFePO4wered/Pi PWR LED should now go on solid.
If the PWR LED does not yet go on solid,
it is likely that the I2C was not yet enabled before the installer was run,
and a reboot is required.

The only necessary user interaction is with the touch button,
with feedback provided by the green PWR LED.
The LiFePO4wered/Pi touch button can be used to turn the Raspberry Pi on and off.
The touch button needs to be pressed and held to take effect.
During this press-and-hold delay, the PWR LED glow will ramp up.
During booting or shutdown,
if the user touches the button during this time,
the PWR LED will do a quick flashing sequence to
indicate it cannot comply with the user request at that time.

To make it convenient to interact with the LiFePO4wered/Pi,
the software package installed on the RPi provides a command line tool.

```bash
# get help message
lifepo4wered-cli

# get the current battery voltage
# returns the battery voltage in millivolts
lifepo4wered-cli get vbat

# get the supply voltage
# returns the  raspberry pi supply battery voltage in millivolts
lifepo4wered-cli get vout

# to set the wake time to an hour
# if you shut down the Raspberry Pi, it will wake up again in about 60 minutes
lifepo4wered-cli set wake_time 60

# Raspberry Pi to always run whenever there is power to do so
lifepo4wered­cli set auto_boot 1
```

## Shutdown Button
The Raspberry Pi Zero features two pin holes,
labeled RUN on the board along side the bank of GPIO pins.
You cant shutdown your RPi from these pins but you can do a hard reset
or start your RPi from them.
All you need to do is attach a momentary push button switch to these pins,
and pushing the button will hard reset your RPi or if you have already shut it down,
you can turn it back on with just a press of the button.
You can find documentation on the reset switch for the [RPi Zero][120] or
any of the [Rev 2 RPis][121].

* [Making Your Own RPi Power Button](https://dzone.com/articles/making-your-own-rpi-power-button?edition=306281&utm_source=Zone%20Newsletter&utm_medium=email&utm_campaign=iot%202017-07-18)
* [ADD A SAFE OFF-SWITCH TO POWER DOWN YOUR RASPBERRY PI](https://www.raspberrypi.org/magpi-issues/MagPi57.pdf)
* [Reboot or shut down your Raspberry Pi using an Amazon Dash Button](https://howchoo.com/g/ymy4nza0nzb/reboot-your-raspberry-pi-using-an-amazon-dash-button)
* [SHUT IT DOWN (RASPBERRY PI THAT IS)](https://facelesstech.wordpress.com/2016/01/16/shut-it-down-raspberry-pi-that-is/)
* [Adding a Shutdown Button to the Raspberry Pi B+](https://www.element14.com/community/docs/DOC-78055/l/adding-a-shutdown-button-to-the-raspberry-pi-b)
* [Physical Shutdown Button For Raspberry Pi](http://www.myelectronicslab.com/tutorial/physical-shutdown-button-for-raspberry-pi/)
* [Adding an On/Off switch to your Raspberry Pi](http://www.raspberry-pi-geek.com/Archive/2013/01/Adding-an-On-Off-switch-to-your-Raspberry-Pi)
* [How To Add a Reset Switch To Your Raspberry Pi](http://www.makeuseof.com/tag/add-reset-switch-raspberry-pi/)
* [Simple Raspberry Pi Shutdown Button](http://www.instructables.com/id/Simple-Raspberry-Pi-Shutdown-Button/?ALLSTEPS)
* [HowTo: Raspberry Pi Raspbian Power on / off GPIO button](http://www.barryhubbard.com/raspberry-pi/howto-raspberry-pi-raspbian-power-on-off-gpio-button/)
* [Raspberry Pi ON/OFF Power Controller](http://www.mosaic-industries.com/embedded-systems/microcontroller-projects/raspberry-pi/on-off-power-controller)
* [Giving Linux the Remote Boot](http://hackaday.com/2017/02/14/giving-linux-the-remote-boot/)







[01]:https://en.wikipedia.org/wiki/USB_On-The-Go
[02]:https://www.amazon.com/s/ref=nb_sb_noss?url=search-alias%3Daps&field-keywords=usb+otg&rh=i%3Aaps%2Ck%3Ausb+otg&tag=an050-20
[03]:http://jeffskinnerbox.me/posts/2016/Apr/27/howto-set-up-the-raspberry-pi-as-a-headless-device/
[04]:https://learn.adafruit.com/introducing-the-raspberry-pi-zero/a-tour-of-the-pi-zero
[05]:https://www.adafruit.com/
[06]:https://www.raspberrypi.org/blog/zero-grows-camera-connector/
[07]:http://pcsupport.about.com/od/termsu/a/usb-type-a.htm
[08]:https://www.maximintegrated.com/en/app-notes/index.mvp/id/1822
[09]:http://www.geeky-gadgets.com/raspberry-pi-zero-coding-over-usb-11-07-2016/
[10]:http://blog.gbaman.info/?p=699
[11]:http://blog.gbaman.info/?p=791
[12]:https://learn.adafruit.com/bonjour-zeroconf-networking-for-windows-and-linux/overview
[13]:http://www.zeroconf.org/
[14]:http://linux-hotplug.sourceforge.net/?selected=net
[15]:http://www.avahi.org/
[16]:http://www.practicallynetworked.com/sharing/configure_and_use_avahi_and_linux.htm
[17]:http://www.multicastdns.org/
[18]:https://en.wikipedia.org/wiki/.local
[19]:http://en.qi-hardware.com/wiki/Ethernet_over_USB
[20]:http://dev.iachieved.it/iachievedit/exploring-networkmanager-d-bus-systemd-and-raspberry-pi/
[21]:https://wiki.debian.org/NetworkManager
[22]:http://xmodulo.com/disable-network-manager-linux.html
[23]:http://lifehacker.com/add-a-tiny-wi-fi-board-to-a-raspberry-pi-zero-1756656549
[24]:http://pwiatrowski.com/technology/raspberry-pi-zero-esp8266-internet/
[25]:https://blog.adafruit.com/2015/12/18/how-to-run-a-pi-zero-and-other-pis-from-a-lipo-including-low-battery-raspberry_pi-piday-raspberypi/
[26]:https://en.wikipedia.org/wiki/Google_Public_DNS
[27]:https://en.wikipedia.org/wiki/Default_gateway
[28]:http://compnetworking.about.com/od/dns_domainnamesystem/f/dns_servers.htm
[29]:https://www.youtube.com/watch?v=QBqPzHEDzvo
[30]:http://www.tldp.org/HOWTO/IP-Masquerade-HOWTO/ipmasq-background2.1.html
[31]:https://www.youtube.com/watch?v=GlZC4Jwf3xQ
[32]:http://serverfault.com/questions/248841/ip-forwarding-when-and-why-is-this-required
[33]:https://www.youtube.com/watch?v=RUZohsAxPxQ
[34]:https://en.wikipedia.org/wiki/Private_network
[35]:https://www.adafruit.com/products/954
[36]:https://en.wikipedia.org/wiki/System_console
[37]:https://www.element14.com/community/docs/DOC-80667/l/raspberry-pi-a-b-zero-pi-2-gpio-pinout
[38]:https://www.element14.com/community/docs/DOC-73950/l/raspberry-pi-3-model-b-gpio-40-pin-block-pinout
[39]:http://raspi.tv/2012/how-to-run-raspberry-pi-with-no-monitor-or-network
[40]:https://github.com/jeelabs/esp-link
[41]:http://hackaday.com/2015/09/18/transparent-esp8266-wifi-to-serial-bridge/
[42]:https://github.com/esp8266/esp8266-wiki/wiki
[43]:https://www.amazon.com/gp/product/B015XA3W0G/ref=ox_sc_act_title_3?ie=UTF8&psc=1&smid=A2J7K8AZ6ZYFQB
[44]:https://www.amazon.com/Edimax-EW-7811Un-150Mbps-Raspberry-Supports/dp/B003MTTJOY/ref=pd_bxgy_147_2?ie=UTF8&psc=1&refRID=4MKDCVV0N99SNPYZRC42

[84]:https://www.adafruit.com/products/904
[85]:http://lifepo4wered.com/files/LiFePO4wered-Pi-Product-Brief.pdf
[86]:http://www.ti.com/product/msp430g2231?utm_source=GOOGLE&utm_medium=cpc&utm_term=msp430g2231&utm_campaign=MSP_MSP_US_P_E_MSP430&utm_content=c97b21ff-897a-4a49-ab05-768cbb131e72&gclid=Cj0KEQiAperBBRDfuMf72sr56fIBEiQAPFXszTBkL4s4n9_P97FxDOL0d8UuoD1Gcq1jyD1Jw38jNbIaAs8j8P8HAQ
[87]:https://www.tindie.com/products/xorbit/lifepo4weredpi/
[88]:https://github.com/xorbit/LiFePO4wered-Pi
[89]:https://hackaday.io/project/18041-lifepo4wered18650
[90]:https://www.tindie.com/products/mjrice/enclosure-for-raspberry-pi-3-and-lifepo4weredpi/
