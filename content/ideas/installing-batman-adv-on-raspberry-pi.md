Names for the wireless sensor network:
* sensor
* sennet - sensor network
* wsn - wireless sensor network
* sensorem - latin for sensor

From Stuart Gathman
* ESSID: chantilly-mesh
* Chan: 1
* Mode: Ad-hoc
* Protocol: BATMAN-ADV
* Encryption: None

* [CJDNS Adhoc node](http://www.instructables.com/id/CJDNS-Adhoc-Node/?ALLSTEPS)
* [Creating a basic Batman-adv mesh](http://www.radiusdesk.com/technical_discussions/batman_basic)
* [RADIUSDESK](http://www.radiusdesk.com/technical_discussions)
* [sudo room - Mesh/BATMAN-adv](https://sudoroom.org/wiki/Mesh/BATMAN-adv)
* [Tips & Tricks](http://www.wifiadvies.be/uncategorized/open-mesh-technical-breakdown/)
* [Raspberry Pi, Raspbian, Wireless and BATMAN-ADV for meshing](http://mindofdes.blogspot.co.uk/2013/02/raspberry-pi-raspbian-wireless-and.html)

* [Installing mesh on OpenWrt - Mesh/OpenWRT](https://sudoroom.org/wiki/Mesh/OpenWRT)
* [How to manually configure a PittMesh node: Ubiquiti Rocket](http://www.metamesh.org/how-to-configure-a-ubnt-router)
* [Building a Wireless Mesh Network](http://www.shadowandy.net/2016/03/building-wireless-mesh-network.htm/3)
* [Mesh Network Practical Guide](https://www.gitbook.com/book/suriyadeepan/mesh-guide/details)

<a href="https://www.open-mesh.org/projects/open-mesh/wiki">
    <img class="img-rounded" style="margin: 0px 8px; float: left" title="B.A.T.M.A.N. (better approach to mobile ad-hoc networking) is a layer 2 routing protocol, implemented in the Linux kernel, for multi-hop ad-hoc mesh networks." alt="batman-adv-logo" src="{filename}/images/batman-adv-log.png" width="115" height="45" />
</a>
I have been thinking about diving into [openHAB][20],
loading it on a [Raspberry Pi][21],
and create a sensor network for some home automation/monitoring devices.
I have also explored using [OpenWrt][22] and [qMp][09] as the network.
I choose [mesh networking][23],
really its a [MANET][24] using a [layer 3 mesh routing protocol][02] like [cjdns][10],
or a level 2 mesh routing protocal like [BATMAN-Adv][05].
Nodes in this mesh network will be gateway'ed and managed via an inexpensive router
(maybe a [Linksys WRT54G][55] or [Western Digital My Net N600][26])
and the nodes will be the [WRTnode][25] or the [GL-AR150][03].
The nodes would then have sensors attached to them.
The ideas I have for sensors include ultrasonic water level monitor for my sump pump,
designed LED lighting for the deck, whole house water leak detection, etc.
An ambitious project I know, but for me, its all about the journey,
not the destination!

I was considering using [Quick Mesh Project (qMp)][09].
qMp is a system for easily deploying Mesh/MANET networks using WiFi technology.
The qMp firmware, based on OpenWrt, works on many embedded WiFi network devices.
The [qMp website states][18] that, in general
every device supported by OpenWrt with 4 MB+ Flash and 32 MB+ RAM can work with qMp.
I have an old [Linksys WRT54G][01] V8 wireless router
and I want to use it as my main node (that is, the node I'll use to mange the network)
for a [Quick Mesh Project (qMp)][09] network.
The main node needs to be beefy enough so support a web server, network management tools, etc.
All the other node, much smaller nodes, will be using WRTnode.

I believe a better alternative to qMp is the [Open-Mesh][04]
routing protocols for ad-hoc networks, [BATMAN-Adv][05].
The name stands for “Better Approach To Mobile Ad-hoc Networking“,
this is a routing protocol for multi-hop ad-hoc mesh networks.
BATMAN-Adv is better supported and documented than qMp.
BATMAN-Adv doesn't claim to have an easy setup like qMp,
but this a small consideration when you see the support behind BATMAN-Adv.
Also, with this project you'll find tools like
`batadv-vis` to visualize your BATMAN-Adv mesh network,
`alfred` for flooding the network with data,
`batctl` is the configuration and debugging tool.



* [Raspberry Pi WiFi Mesh Network](https://www.raspberrypi.org/forums/viewtopic.php?f=36&t=14835)

# B.A.T.M.A.N. Mesh
Developed by [Freifunk][07] to replace [Optimized Link State Routing Protocol (OLSR)][06]
primarily use case is where a significant number of nodes move around a lot within the mesh area
(vehicle based nodes for instance).
BATMAN's critical imporvement is the decentralization of the knowledge
about the best route through the network — no single node has all the data.
Not all routes are calculated,
only route to the next neighbour So complete topology is not known to any single node,
topology and routing decisions are distributed between all the nodes.
Spreading this information reduces the “cost” on each node.

Before you can establish a BATMAN-Adv meshed network,
you need to establish an [Ad-Hoc WiFi network][24]
since this is used as the foundation for building the mesh.
BATMAN-Adv is a mesh software that runs on top of each of the ad-hoc connected devices.
Your not establish a mesh network because you have a few ad-hoc connected devices,
but because the BATMAN-Adv software is running on top of the ad-hoc connected devices.
The mesh software routes packets from one point of the mesh
to another point in the most efficient way,
while taking advantage of the Ad-Hoc network on which it rides.

What the mesh provides an expansion of the networks reach over an area
which may be impossible to cover by using cables or a single WiFi access point.
Also, a mesh is a "living thing" that can compensate and recalculate alternative routes on the fly.
This makes a mesh very robust and reliable when comparing
it to running Access Points in WDS mode for instance.

The Open-Mesh web site contains an excellent introduction into the [B.A.T.M.A.N. protocol concept][08].
The original BATMAN protocol ran on the [Network Layer (Layer 3)][13]
but [B.A.T.M.A.N. Advanced (BATMAN-Adv)][05] is a
[Data Link Layer (Layer 2)][12] protocol
and built into the [Linux kernel][11] for greater efficiency.

BATMAN has an extensive history with several branches.
That [history and branching is outlined on the Open-Mesh website][19].
bla bla bla
BATMAN branches explained - https://www.open-mesh.org/projects/open-mesh/wiki/BranchesExplained

## Layer 2 vs. Layer 3
Most layer 3 routing protocols operate by sending UDP packets to other routers
and manipulate the kernel routing table to effect their routing decision.
As packets are retransmitted they must be brought up from layer 2 to layer 3 on each node
before being moved back down to layer 2 for retransmission.
BATMAN-Adv operates entirely on layer 2 providing a virtual switch port on each node.
A BATMAN-Adv network of nodes can be imagined as a large distributed switch
where each node has a single switch port to which any other bridge or switch can be connected.

## Packet Routing and Transmission
The [virtual Ethernet interface][45] ([tap][46]) is used to emulate the switch.
This switch sends and receives the packets.
The packet is retransmitted by each node at layer 2 only;
the packet is never brought up to higher levels during transmission.
This means any transmission looks like one hop to all the higher layers (layer 3 and up)
no matter how many nodes are in the network.
At layer 2, the routing protocol must handle the data traffic
BATMAN-Adv uses its own [EtherType][47] [0x0842][48].
These [Ethernet-Frames][49] are sent to find the routing information.
Each data traffic Ethernet-Frame is encapsulated in a 0x0842 Ethernet frame.

## Node Identification
In Layer 3 routing protocols, for the node to join a network, it must have a unique IP address.
However, before joining the network, how can the node know which IPs are unique?
BATMAN-Adv overcomes this problem.
Just like a [Ethernet switch][50], BATMAN-Adv does not use IP addresses for identification
but instead uses [MAC addresses][51].
The BATMAN algorithm decides the best neighbour to receive the packet being sent
by looking it up in the MAC [translation table][15].

## Bridging Interfaces
BATMAN-Adv's use of MAC addresses allows multiple other interfaces to be bridged
in easily using bridge tools.
The MAC of each participant behind the bridge is collected and
transmitted as a list via [HNA-messages][52] to all the BATMAN-Adv nodes.
This makes integration of non-meshed clients very easy and allows the non-meshed clients to roam.

## Packet Loss and Encryption
Similarly to Ethernet, BATMAN-Adv leaves re-transmission of packets
to higher layer mechanisms such as TCP.
As BATMAN-Adv works at layer 2, it is network-layer agnostic.
DHCP, IPv4, IPv6 IPX etc. can all be run on top of BATMAN-Adv.
BATMAN-Adv does not perform any encryption at layer 2,
encryption must be performed at a higher layer.

## User Space Daemon vs. Kernel Module
[User space][55] daemon `batmand` only handles the exchange of routing information.
In user space, packet forwarding usually takes place as follows:

1. select() to wait for a packet
1. read() the packet from the kernel
1. find next hop, update tables
1. write() the packet to the kernel

[System calls][54] to copy the message (read and write)
takes a long time and the CPU must be switched between [kernel space][55] and user space.
This becomes a problem when the bandwidth usage rises,
and therefore, the peak performance of the network interface card (NIC) can’t be reached.
By switching to kernel space,
the kernel buffer can be reused without having to copy it (read/write)
and the system calls and mode switches are no longer necessary.
Kernel functions can be made asynchronous and pre-emptive so asynchronous packet handling is possible.
By implementing BATMAN-Adv as a kernel module packet processing becomes almost negligible.

## BATMAN-Adv Kernel Modules
BATMAN-Adv is build as a kernel module to maximize it performance
(an improvement over the original BATMAN protocol which was implemented in user space).
Kernel modules, or loadable kernel module (LKM),
are pieces of code that can be loaded
and unloaded into the kernel upon demand.
They extend the functionality of the Linux kernel without the need to reboot the system.
Without modules, we would have to build monolithic kernels
and add new functionality directly into the kernel image, creating larger kernels,
and require us to rebuild / reboot the kernel every time we want new functionality.

The latest version source code for BATMAN-Adv and its supporting tools
can be found on the [Open-Mesh Wiki Download site][17].
Since BATMAN-Adv is now part of the offical Linux distribution,
you don't need to build it from source but your likely to find these supported packages
are many months to years behind the wiki's software.

If you want to build BATMAN-Adv from source,
check out [this site for some instructions][53].

## BATMAN Deamon - IS THIS PART OF BATMAN OR BATMAN-ADV????
The [`batmand` deamon][31] can be run in 2 different ways:

1. Start the daemon with `batmand [options] interface`, this is called daemon mode
1. Connect to that daemon to issue further commands with `batmand -c [options]`, this is called client mode

The functions changes configured through `batmand`:

* visualization server - The BATMAN daemons may send their local view about their
single-hop neighbors to the `vis` server.
It collects the information and provides data in a format similar to OLSR's topology information output.
* originator interval - A node transmits broadcast messages (called [originator message][32] or OGM version 2)
to inform the neighboring does about it's existence.
Originator interval is the time to wait after sending one message and before sending the next message.
The default value is 1000 ms (1 second).
In a mobile network, you may want to detect network changes very quickly (ex. 500 ms).
In a static network, you can save bandwidth by using a higher value.

https://www.open-mesh.org/projects/batmand/wiki

## BATMAN Configuration Tools
BATMAN-Adv has one primary configuration utility, `batctl`,
whcih offers a convenient way to configure the BATMAN-Adv kernel module
as well as displaying debug information such as originator tables,
translation tables and the debug log.
BATMAN-Adv operates on layer 2.
Thus all hosts participating in the virtual switched network are transparently
connected together for all protocols above layer 2.
Therefore the common diagnosis tools do not work as expected.
To overcome these problems `batctl` contains the commands
`ping`, `traceroute`, `tcpdump` which provide similar functionality
to the normal Linux ping, traceroute, tcpdump commands,
but modified to layer 2 behaviour or using the BATMAN-Adv protocol.

These functions change BATMAN-Adv configurations through `batctl`:
`batctl` is the configuration and debugging tool.
https://downloads.open-mesh.org/batman/manpages/batctl.8.html

Some of the many `batctl` options (see all of them [here][44]):

* [`bonding`][38] - when there's multiple interfaces with similar throughput,
bonding can be used to increase frame throughput.
It uses round robin load balancing to evenly distribute frames.
* [`dat`][39] - a [distributed arp table][40] is a Distributed Hash Table aimed
to store ARP entries and to allow nodes to perform fast lookup operations.
All the operations in the DHT (get and store) are performed on a set of nodes computed
by means of a distributed hash function which input value is an IPv4 address.
* [`fragmentation`][41] - a driver that sets fragmentation, which sends frames in
fragmented frames when a wireless interfaces can't send/receive packets more than 1500 bytes.
The protocol adds its own header to existing frames, which makes the packets have 1528 bytes.
* [`gw_mode`][42] - a server is an internet gateway, a client sends and receives traffic to and from the gateway
* [`nc`][43] - network coding is where forwarding packets in a wireless mesh network,
bandwidth can be saved by exploiting the information already present at the destinations of a forward.
One way of doing this is network coding, where two packets are combined before transmission.
* `ping` - layer 2 ping of a MAC address or bat-host name.
It will try to find the bat-host name if the given parameter was not a MAC address.
* `tcpdump` - layer 2 tcpdump will display all packets that are seen on the given interface(s).
A variety of options to filter the output are available.
* `traceroute` - Layer 2 traceroute to a MAC address or bat-host name.
It will try to find the bat-host name if the given parameter was not a MAC address.

Some additional useful tools:

* [`alfred`][37] -is a user space daemon for distributing arbitrary local information
over the mesh/network in a decentralized fashion.
This data can be anything which appears to be useful, you may distribute hostnames,
phone books, administration information, DNS information, the local weather forecast ...
* [`alfred-gpsd`][35] - a used to distribute GPS location information about your BATMAN-Adv mesh network.
This information could be, for example, combined with [`vis`][34] to visualize
your mesh topology with true geographic layout.
The server fetches the information from locals nodes serving data from [`gpsd`][33]
(i.e. interface daemon for GPS receivers)
* [`batadv-vis`][36] - its a server that saves local client tables
and distributes these tables via `alfred`.
These tables can be used to create network topology maps.

Some of the configuration files:

* `bat-hosts` - This file is similar to the `/etc/hosts` file.
You can write one MAC address and one host name per line.
`batctl` will search for `bat-hosts` in /etc, your home directory, and the current directory.
The found data is used to match MAC address to your provided host name
or replace MAC addresses in debug output and logs.
Host names are much easier to remember than MAC addresses.

# What Are We Creating: Basic Mesh Network
When everything is complete we will have a mesh with the following characteristics:

* One node which serve as an entry point for other non-meshing WiFi devices.
* One node which serve as a gateway to your LAN and onto the Internet. It will also act as well as an entry point.

<a href="http://www.radiusdesk.com/technical_discussions/batman_basic">
    <img class="img-rounded" style="margin: 0px 8px; float: left" title="xxx" alt="basic-mesh-network" src="{filename}/images/basic-mesh-network.png" width="467" height="540" />
</a>

So this mesh network can be considered as an extended bridge where traffic will:

* Enter at one of the entry points.
* Be routed through the mesh cloud.
* Exit at the single exit point and released onto the LAN.

Not covered here

* Multiple entry points per mesh node.
* Using VLAN's to separate traffic within the mesh.
* Using VLAN's at the exit point (gateway).
* Making the mesh more secure.
* Creating a NATted exit point.
* Adding a Captive Portal at the exit point.

* [Creating a basic Batman-adv mesh](http://www.radiusdesk.com/technical_discussions/batman_basic)

# Step 1: Prepare the Raspberry Pi - DONE
I have a post ["HowTo: Set-Up the Raspberry Pi as a Headless Device"][28]
that will initialize the Raspberry Pi.
Your going to need two devices to create a minimal network.
Start with this to get RPi ready for the next steps.

To avoid confusion, it is best **not** have an Ethernet connection
and are just working to set up the WiFi connection first on the target device.
To do this, you don't using `ssh` to connect with the Raspberry Pi,
but just using a terminal, say with [screen][29] using a [console cable][30].

# Step 2: Setting up Ad-Hoc Wireless Networking
The next step is to get wireless networking working properly on the Pi’s.
The steps above gives you a managed wireless connection,
the typically one where the device connects to a router.
The router takes care of all the details of establishing a WiFi network and getting you online.
Although this isn’t mesh networking,
you'll be using it to install all your software,
since you'll loose Internet connectivity until you get the mesh full operational.

If you logged into the device,
you can get the IP address of the WiFi and Ethernet interfaces via

```bash
# local IP addresses provided to the system
/sbin/ifconfig |grep -B1 "inet addr" |awk '{ if ( $1 == "inet" ) { print $2 } else if ( $2 == "Link" ) { printf "%s:" ,$1 } }' | awk -F: '{ print $1 ": " $3 }'

# extenal IP address
curl ipecho.net/plain ; echo "   - external IP address"
```

Starting with the gateway, find the IP Address of the two interface `wlan0` and `eth0`

```bash
# scan for mesh03 to get its ip address for the wireless and ethernet interfaces
$ sudo nmap -sP 192.168.1.0/24 | grep mesh
Nmap scan report for mesh03.fios-router.home (192.168.1.23)
Nmap scan report for mesh03.fios-router.home (192.168.1.190)
```
One of these IP addresses is the interface `wlan0` and the other is `eth0`.
Take a guess on which is the Ethernet interface and us it to login.
Once logged in, run the command `sudo iwconfig wlan0 | grep Access`
and if you get an IP address you logged in on, you need to switch to the other IP address.
When switched, you can do the following to set the WiFi adaptor to Ad-Hoc mode:

```bash
# bring the wireless interface down
sudo ifconfig wlan0 down

# change the device's operating mode, SSID, channel
sudo iwconfig wlan0 channel 6 essid mywifi mode ad-hoc

# change the wifi networks password
sudo iwconfig wlan0 key restricted key s:1234567890

# bring the wireless interface up
sudo ifconfig wlan0 up

# Scan for ad-hoc cells in range (necessary for some drivers to trigger IBSS scanning)
sudo iwlist wlan0 scan

# assign an IP address to the wireless interface
sudo ifconfig wlan0 192.168.1.1 netmask 255.255.255.0
```

Add the following to the `/etc/network/interfaces` file to `mesh01`,
the device to become the gateway:

```bash
auto wlan0
iface wlan0 inet static
    address 192.168.1.1
    netmask 255.255.255.0
    wireless-channel 6
    wireless-essid mywifi
    wireless-key 1234567890
    wireless-mode ad-hoc
```

Add the same to `mesh02` and `mesh03` except give them another IP addresses
`192.168.1.2` and `192.168.1.3`.

[WiFi Ad-hoc Network](https://wiki.debian.org/WiFi/AdHoc)
[Setting up an ad-hoc network on boot](http://unix.stackexchange.com/questions/77530/setting-up-an-ad-hoc-network-on-boot)
[Setup ad-Hoc network](https://wiki.hacdc.org/index.php/BATMAN-Advanced_Setup#Setup ad-Hoc network)
[Limitations of Ad Hoc Mode Wireless Networking](http://compnetworking.about.com/od/wirelessfaqs/f/adhoclimitation.htm)
[Understanding Ad Hoc Mode](http://www.wi-fiplanet.com/tutorials/article.php/1451421/Understanding-Ad-Hoc-Mode.htm)

# Step X: Installing BATMAN-Adv - DONE
You could download and compiled BATMAN-Adv kernel,
but BATMAN-Adv is installable as a Linux Kernel module
and is [now part of the mainline Linux development stream][27].
You can install the packages
[`batctl`][14] (configuration and debugging tool for BATMAN-Adv)
and [`bridge-utils`][16] (utility needed to create and manage bridge devices):

```bash
# install required packages for BATMAN-Adv
sudo apt-get install batctl bridge-utils

# add a loadable kernel module to the Linux kernel
sudo modprobe batman-adv
```
To see the version of BATMAN-Adv your running, use the command `batctl -v`:

```bash
# print BATMAN version and Linux kernel version
$ batctl -v
batctl debian-2014.3.0-2 [batman-adv: 2015.2]

$ uname -r
4.4.6+
```

> **NOTE:** While this is easy and convenient, the package could be old.
To get the latest BATMAN-Adv and `batctl` software,
you need to go to the Open-Mesh source code repository.
You'll find links to the latest stable code posted at [Download B.A.T.M.A.N.][17].

# Step X: XXX

* [Compile and install BATMAN-Advanced](https://wiki.hacdc.org/index.php/BATMAN-Advanced_Setup)
* [Mobile Mesh Networks with the Raspberry Pi – Part 1](http://www.ericerfanian.com/mobile-mesh-networks-with-the-raspberry-pi-part-1/)
* [A Raspberry Pi based batman-adv Mesh network node](http://people.skolelinux.org/pere/blog/A_Raspberry_Pi_based_batman_adv_Mesh_network_node.html)
* [Subnodes Project](http://subnodes.org/)
* [Install batman-adv on Raspberry Pi](https://forum.piratebox.cc/read.php?2,5256)
* [Raspberry Pi, Raspbian, Wireless and BATMAN-ADV for meshing](http://mindofdes.blogspot.com/2013/02/raspberry-pi-raspbian-wireless-and.html)
* [B.A.T.M.A.N. (2013.2.0) configuration on Ubuntu 12.10](https://dev.wlan-si.net/ticket/1114)
* [B.A.T.M.A.N. Advanced quick start guide](https://www.open-mesh.org/projects/batman-adv/wiki/Quick-start-guide)
* [Creating a basic Batman-adv mesh](http://www.radiusdesk.com/technical_discussions/batman_basic)
* [Batman-adv mesh network set-up - WIT 2014 internetworking practical](https://www.youtube.com/watch?v=CLKHWfQlFqQ)
* [A script to easily create a B.A.T.M.A.N-adv mesh node](https://www.reddit.com/r/NCmeshnet/comments/2capde/a_script_to_easily_create_a_batmanadv_mesh_node/)
* [Wireless mesh networking on Raspberry Pi using batman-adv protocol](http://stackoverflow.com/questions/23437690/wireless-mesh-networking-on-raspberry-pi-using-batman-adv-protocol)
* [Enabling mesh (ad-hoc) network on multiple Raspberry Pi’s](http://scalabilly.com/2015/08/mesh-ad-hoc-network-on-multiple-raspberry-pis/)

# Step X: Install Alfred
[A.L.F.R.E.D - Almighty Lightweight Fact Remote Exchange Daemon](https://www.open-mesh.org/projects/alfred/wiki#Getting-started)
[How do I install alfred-json on Ubuntu?](http://askubuntu.com/questions/426302/how-do-i-install-alfred-json-on-ubuntu)
[How do I install alfred-json on Ubuntu?](http://www.ceus-now.com/how-do-i-install-alfred-json-on-ubuntu/)

`alfred` is a user space daemon for distributing arbitrary local information
over the mesh in a decentralized fashion,
but `alfred` is not required to run a batman-adv mesh network.
This data can be anything which appears to be useful.
You may distribute hostnames, administration information, DNS information, etc.
`alfred` does not strictly require BATMAN-Adv to operate,
but can use neighborhood information from BATMAN-Adv when available.

# Step X: batctl
When BATMAN was moved from layer 3 to layer 2 to become BATMAN-Adv operating within the kernel,
a handy tool to manage the module and debug the network became necessary.
The `batctl` tool was created to fill that gap.
As such, [batctl][14] is the configuration and debugging tool for BATMAN-Adv.
`batctl` offers a convenient interface to all the BATMAN-Adv
kernel module's settings as well as status information.
It also contains a layer 2 version of ping, traceroute and tcpdump,
since the virtual network switch is completely transparent for all protocols above layer 2.

All configuration of BATMAN-Adv is done in the virtual filesystem `sysfs`
and `batctl` is merely a convenient interface to this.

* [Using batctl](https://www.open-mesh.org/projects/batman-adv/wiki/Using-batctl)


# Step X: BATMAN Deamon
https://www.open-mesh.org/projects/batmand/wiki

# Step X: XXX

# Step X: Mixing non-BATMAN Systems with BATMAN-Adv
If you have a couple of computers that you don't want to run BATMAN-Adv on
but you still want make use of the mesh network,
you will need to configure an entry point for them on a node running BATMAN-Adv.
Any device running Linux can be setup to work as a mesh entry point.

* https://www.open-mesh.org/projects/batman-adv/wiki/Quick-start-guide#Mixing-non-BATMAN-systems-with-batman-adv



[01]:http://support.linksys.com/en-us/support/routers/WRT54G
[02]:http://bmx6.net/projects/bmx6
[03]:http://www.gl-inet.com/ar150/
[04]:https://www.open-mesh.org/projects/open-mesh/wiki
[05]:https://www.open-mesh.org/projects/batman-adv/wiki/Doc-overview
[06]:https://en.wikipedia.org/wiki/Optimized_Link_State_Routing_Protocol
[07]:http://freifunk.net/en/what-is-it-about/
[08]:https://www.open-mesh.org/projects/open-mesh/wiki/BATMANConcept
[09]:http://qmp.cat/Home
[10]:https://github.com/cjdelisle/cjdns/blob/master/doc/Whitepaper.md
[11]:https://en.wikipedia.org/wiki/Linux_kernel
[12]:https://en.wikipedia.org/wiki/Data_link_layer
[13]:https://en.wikipedia.org/wiki/Network_layer
[14]:https://downloads.open-mesh.org/batman/manpages/batctl.8.html
[15]:https://www.open-mesh.org/projects/open-mesh/wiki/2012-05-13-translation-table-in-a-nutshell
[16]:http://www.linuxfromscratch.org/blfs/view/svn/basicnet/bridge-utils.html
[17]:https://www.open-mesh.org/projects/open-mesh/wiki/Download
[18]:http://qmp.cat/Supported_devices
[19]:https://www.open-mesh.org/projects/open-mesh/wiki/BranchesExplained
[20]:http://www.openhab.org/
[21]:http://www.raspberrypi.org/
[22]:https://openwrt.org/
[23]:http://en.wikipedia.org/wiki/Mesh_networking
[24]:http://en.wikipedia.org/wiki/Mobile_ad_hoc_network
[25]:http://wrtnode.com/
[26]:http://www.wdc.com/wdproducts/library/UM/ENG/4779-705072.pdf
[27]:https://www.open-mesh.org/projects/open-mesh/wiki/2009-10-23-batman-goes-mainline
[28]:http://jeffskinnerbox.me/posts/2016/Apr/27/howto-set-up-the-raspberry-pi-as-a-headless-device/
[29]:http://aperiodic.net/screen/start
[30]:https://learn.adafruit.com/adafruits-raspberry-pi-lesson-5-using-a-console-cable/overview
[31]:https://www.open-mesh.org/projects/batmand/wiki
[32]:https://www.open-mesh.org/projects/batman-adv/wiki/OGM
[33]:http://manpages.ubuntu.com/manpages/xenial/en/man8/gpsd.8.html
[34]:https://www.open-mesh.org/projects/batmand/wiki/VisualizeMesh
[35]:https://www.open-mesh.org/projects/alfred/wiki/Alfred-gpsd
[36]:https://www.open-mesh.org/projects/alfred/wiki/Batadv-vis
[37]:https://www.open-mesh.org/projects/alfred/wiki
[38]:https://www.open-mesh.org/projects/batman-adv/wiki/Multi-link-optimize
[39]:https://www.open-mesh.org/projects/batman-adv/wiki/DistributedArpTable-technical
[40]:https://www.open-mesh.org/projects/batman-adv/wiki/DistributedARPTable
[41]:https://www.open-mesh.org/projects/batman-adv/wiki/Fragmentation-technical
[42]:https://www.open-mesh.org/projects/batman-adv/wiki/Gateways
[43]:https://www.open-mesh.org/projects/batman-adv/wiki/NetworkCoding
[44]:https://downloads.open-mesh.org/batman/manpages/batctl.8.html
[45]:https://linuxconfig.org/configuring-virtual-network-interfaces-in-linux
[46]:http://www.innervoice.in/blogs/2013/12/08/tap-interfaces-linux-bridge/
[47]:https://en.wikipedia.org/wiki/EtherType
[48]:https://en.wikipedia.org/wiki/Wake-on-LAN
[49]:https://en.wikipedia.org/wiki/Ethernet_frame
[50]:https://en.wikipedia.org/wiki/Network_switch
[51]:https://en.wikipedia.org/wiki/MAC_address
[52]:https://en.wikipedia.org/wiki/Optimized_Link_State_Routing_Protocol#Messages
[53]:http://wiki.freifunk-bielefeld.de/doku.php?id=batman_installieren
[54]:https://en.wikipedia.org/wiki/System_call
[55]:https://en.wikipedia.org/wiki/User_space
[56]:
[57]:
[58]:
[59]:
[60]:
