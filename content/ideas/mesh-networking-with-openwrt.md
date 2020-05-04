What a Mesh!
* [Part 1-The Ins and Outs Of Mesh Networking](http://www.sensorsmag.com/networking-communications/wireless-sensor/what-a-mesh-part-1-the-ins-and-outs-of-mesh-networking-1530)
* [Part 2-Networking Architectures and Protocols](http://www.sensorsmag.com/networking-communications/wireless-sensor/what-a-mesh-part-2-networking-architectures-and-protocols-1544)
* [Introduction to wireless mesh routing protocols](http://www.sensorsmag.com/networking-communications/wireless-sensor/what-a-mesh-part-2-networking-architectures-and-protocols-1544)
* [Could You Make Your Own Internet?](https://www.youtube.com/watch?v=OnKMkX0qS3Y)
* [Hyperboria 101 - Moving Through the Mesh](http://n-o-d-e.net/post/139284891496/hyperboria-101-moving-through-the-mesh)

* [A (Mostly) Complete OpenWRT Tutorial](https://mattventura.net/2009/08/17/a-mostly-complete-openwrt-tutorial/)
* [OpenWRT: basic network configuration](http://superuser.com/questions/742084/openwrt-basic-network-configuration)
* [Part 3 OpenWRT B.A.T.M.A.N. Mesh](https://www.youtube.com/watch?v=SB_MAqxVPTs&list=PLvgZ_9wT_LNdq7SdqJ6VSWspU3vlnEuV9)

* [Gluon is a modular framework for creating OpenWrt-based firmwares for wireless mesh nodes](https://gluon.readthedocs.io/en/v2016.1.4)
* [An Interface For The Headless Linux System](http://hackaday.com/2016/05/28/hackaday-prize-entry-a-hat-for-the-headless-linux-system/)

* [Installing mesh on OpenWrt - Mesh/OpenWRT](https://sudoroom.org/wiki/Mesh/OpenWRT)
* [How to manually configure a PittMesh node: Ubiquiti Rocket](http://www.metamesh.org/how-to-configure-a-ubnt-router)
* [Building a Wireless Mesh Network](http://www.shadowandy.net/2016/03/building-wireless-mesh-network.htm/3)
* [Mesh Network Practical Guide](https://www.gitbook.com/book/suriyadeepan/mesh-guide/details)
* [Batman on OpenWRT](https://wiki.reseaulibre.ca/guides/openwrt+batman/)

* [Outernet](https://en.wikipedia.org/wiki/Outernet)
    * [OUTERNET RADIO FOR THE INFORMATION AGE](https://outernet.is/)

Chantilly MESH
* [Chantilly MESH](https://gathman.org/meshdoc/)

PIC Mesh
* [PIC Mesh](http://people.ece.cornell.edu/land/courses/ece4760/FinalProjects/f2016/bac239_aw528_rk534/bac239_aw528_rk534/bac239_aw528_rk534/index.html)

* [Finding the Best Mesh for the IoT](https://www.eetimes.com/author.asp?section_id=36&doc_id=1332775)

Mesh Bee
* [Mesh Bee](http://wiki.seeedstudio.com/wiki/Zig_Bee)

ESP8266 Mesh Networking
* [ESP8266 Mesh User Guide](http://www.espressif.com/sites/default/files/30a-esp8266_mesh_user_guide_en.pdf)
* [ESP-Mesh](https://espressif.com/en/products/software/esp-mesh/overview)

Increasingly you hear the observation that the centralization of the Internet
and the services built on it has given governments far too much control.
There is a urgent call to decentralize the net at all levels, including the transport level.
An Internet without centralized telecommunications infrastructure can be hard to envision.
When people try to come to terms with this, usually it comes out as "mesh networking".

Given there are so many mesh network protocols / packages to select from,
how does one pick the right platform?
You see wide variation in the maturity and features supported by the different platforms.
They also often have very different objects, such as,
support for general purpose Internet access requiring low latency and significant bandwidth
or special purpose like sensor networks where latency and bandwidth a lesser concern.

# OSI Model
Nice break down of the OSI model
[![osi-model](https://s-media-cache-ak0.pinimg.com/736x/21/0c/f0/210cf024379729cbda41099e84dcb4d0.jpg "")](https://en.wikipedia.org/wiki/OSI_model)

# Four Setup Options for the Router
A router is a separating network element.
It separates two networks and allows certain traffic to cross.
Sometimes this is necessary in a network setup but for most home networks
it only creates a lot of obstacles.

Bridge Operating Mode - Connect the LAN port of the qMp Router to the LAN port of the Home Router
:   In this case you have to turn off the DHCP server on the qMp Router to prevent incorrect IP assignments.
    You may/should also change the LAN IP address of the qMp Router to avoid conflicts.
    Choose an IP address inside the subnet of the home Router but not conflicting with
    any static IP addresses used in your LAN nor overlapping the IP address pool
    which the DHCP server on the first router uses.
    For example, it your Home Router has an IP address 192.168.1.1 with subnet mask 255.255.255.0
    and the DHCP server uses the address pool 192.168.1.100-149,
    you can assign any address 192.168.1.2-99 and 150-254 to the second router, e.g. 192.168.1.2.
Gateway Operating Mode - Connect the WAN port of the qMp Router to the LAN port of the Home Router
:   Configure the qMp Router in gateway/NAT mode and connect its WAN port of the qMp Router
    to a LAN port of the Home Router.
    In this case it is important to use a different subnet on the qMp Router then the Home Router.
    If the Home Router uses addresses for network 192.168.1.0 with subnet mask 255.255.255.0
    the qMp Router must be outside of this subnet, e.g. it could be network 192.168.2.0
    with subnet mask 255.255.255.0.
    Make sure to enable the DHCP server on the qMp Router unless
    you only want to use static IP addresses in your LAN.
    If you need port forwarding from the Internet to the LAN of the qMp Router,
    you have to configure the same forwardings on the Home Router as well.
    You forward first from the Home Router to the qMp Router and then from the qMp Router into its LAN.
Router Operating Mode - Connect the WAN port of the qMp Router to the LAN port of the Home Router
:   Configure the qMp Router in router/non-NAT mode and assign a LAN IP address
    in a separate subnet from the Home Router (i.e. like the Gateway Operating Mode option).
    In router mode you have to configure static routes on the Home Router to make the qMp Router accessible.
    If you use NAT on the Home Router (which you will to get Internet access),
    you must also make sure that the Home Router does support NAT for addresses
    which are not in the Home Router's subnet.
    Some routers (particulalry those provided by ISPs) are limited to do NAT only
    for its own directly connected network (i.e. Home Route's network)
    but not for any subnet (i.e. qMp Router's network).
    If you have such a Home Router, this option will not work since the qMp Router will
    not be able to reach the Internet.
Router Operating in DMZ
:   * [What are the tradeoffs between the various router configurations](http://www.dslreports.com/faq/16077)
    * [3.0 Networking](http://www.dslreports.com/faq/verizonfios/3.0_Networking#12506)
    * [How to Configure Verizon FiOS Router to Give Network Control to Airport Extreme](http://www.podfeet.com/blog/tutorials-5/how-to-configure-verizon-fios-router-to-give-network-control-to-airport-extreme/)
    * [Two routers on your home network?](http://www.suggest-a-fix.com/index.php?/topic/44-two-routers-on-your-home-network/)
# Types of Networks
https://wellness.wikispaces.com/Network+Architectures
Ad-Hoc Network
:   Within wireless networking, Ad-Hoc is one of the modes of operation for an 802.11 radio.
    It happens at OSI layer 1, the physical layer,
    and it basically means that all devices can communicate directly
    to any other device that is within radio range.
    Normally, in Infrastructure mode, wireless devices can only communicate
    with a central Access Point or Router and that device is responsible for re-transmitting packets
    from one client device to another client device (even if they are right next to each other).

Mesh Network
:   Mesh Networking, also know as Mesh Routing happens at OSI layer 3, the network layer.
    Mesh Routing allows each device on a network (also called nodes) to act as a router
    and re-transmit packets on behalf of any other devices.
    Mesh Routing provide the multi-hop facility that Ad-Hoc mode lacks.
    By combining Ad-Hoc mode at layer 1 and Mesh Routing at layer 3,
    we can create wireless mesh networks purely between client devices without
    any need for centralized Access Points or Routers.

Peer-to-Peer (P2P) Network
:   P2P or Peer-to-Peer simply means that clients talk directly to each other without the use of a central server.
    Both Ad-Hoc and Mesh Routing can be described as P2P as they are both instances
    of clients-to-client communication, just at different layers of the OSI model.

Multipeer Connectivity
:   https://developer.apple.com/library/ios/documentation/MultipeerConnectivity/Reference/MultipeerConnectivityFramework/

Wireless Mesh Network
:   A Wireless Mesh Network (WMN) is a communications network made up of
    radio nodes using a Mesh Network.
    WMN often consist of mesh clients, mesh routers and gateways.
    The mesh clients are often laptops, cell phones and other wireless devices
    while the mesh routers forward traffic to and from the gateways which may,
    but need not, be connect to the Internet.

Multi-Radio Mesh Network
:   Multi-Radio Mesh refers to a unique pair of dedicated radios on each end of the link.
    This means there is a unique frequency used for each wireless hop
    and thus a dedicated CSMA collision domain.
    This is a true mesh link where you can achieve maximum performance without
    bandwidth degradation in the mesh and without adding latency.
    Thus voice and video applications work just as they would on a wired Ethernet network.
    In true 802.11 networks, there is no concept of a mesh. There are only APs and Stations.
    A Multi-Radio Mesh node will dedicate one of the radios to act as a station,
    and connect to a neighbor node AP radio.

Mobile Ad-Hoc Network
:   A Mobile Ad-Hoc Network (MANET) is a continuously self-configuring,
    infrastructure-less network of mobile devices connected without wires.
    Each device in a MANET is free to move independently in any direction,
    and will therefore change its links to other devices frequently.
    Each must forward traffic unrelated to its own use, and therefore be a router.
    The primary challenge in building a MANET is equipping each device to continuously
    maintain the information required to properly route traffic.

Wireless Sensor Network
:   Wireless Sensor Network (WSN) (sometimes called a wireless sensor and actuator network (WSAN))
    are spatially distributed autonomous sensors to monitor physical or environmental conditions.

Shared Mesh Network
:   A shared mesh (also known as ‘traditional’ or ‘best effort’ mesh)
    is a wireless mesh network that uses a single radio to communicate via mesh backhaul links
    to all the neighboring nodes in the mesh.
    This is a first generation mesh where the total available bandwidth of the radio channel
    is ‘shared’ between all the neighboring nodes in the mesh.
    The capacity of the channel is further consumed by traffic being forwarded
    from one node to the next in the mesh – reducing the end to end traffic that can be passed.
    Because bandwidth is shared amongst all nodes in the mesh,
    and because every link in the mesh uses additional capacity,
    this type of network offers much lower end to end transmission rates than a switched mesh
    and degrades in capacity as nodes are added to the mesh.

Switched Mesh Network
:   A switched mesh is a wireless mesh network that uses multiple radios to communicate
    via dedicated mesh backhaul links (packet relaying) to each neighboring node in the mesh.
    Here all of the available bandwidth of each separate radio channel
    is dedicated to the link to the neighboring node.
    The total available bandwidth is the sum of the bandwidth of each of the links.
    Each dedicated mesh link is on a separate channel,
    ensuring that forwarded traffic does not use any bandwidth from any other link in the mesh.
    As a result, a switched mesh is capable of much higher capacities
    and transmission rates than a shared mesh and grows in capacity as nodes are added to the mesh.
    There are three distinct types of configuration of wireless mesh networking
    1. Shared Mesh Network - One radio provides both backhaul (packet relaying) and client services (access to a laptop).
    2. Switched Mesh Network - One radio relayed packets over multiple hops while another radio provided client access.
    3. Switched Mesh Network - Two or more radios for the backhaul for higher bandwidth and low latency. This third generation wireless mesh networking is replacing previous generation products as more demanding applications like voice and video need to be relayed wirelessly over many hops of the mesh network.

IEEE 802.11s
:   IEEE 802.11s is an IEEE 802.11 amendment for mesh networking, defining how wireless devices can interconnect to create a WLAN mesh network, which may be used for static topologies and ad hoc networks.
https://en.wikipedia.org/wiki/IEEE_802.11s

Overlay Network
:   An overlay network is a computer network that is built on top of another network.
    Nodes in the overlay network can be thought of as being connected by virtual or logical links,
    each of which corresponds to a path, perhaps through many physical links, in the underlying network.

Community Network
:   [Community Networks][08] are established by local not for profit communities
    to provide an alternative to the local ISP or facility to compensate for lack of access to Internet facilities.
    Community networks often provide web space, e-mail, and other services for free, without advertising.

Tor
:   xxx [Tor][07]

Invisible Internet Project (I2P)
:   xxx [Invisible Internet Project (I2P)][05]

Freenet
:   xxx [Freenet][06]
    [How to set up your own fast, private open source mesh network](https://opensource.com/article/20/2/mesh-network-freemesh)

Darknet
:   An anonymizing overlay network, usually running over the internet. Examples: Tor, i2p, freenet.
([not to be confused with the dark web][43])

Deep Web
:   This is web content that is locked behind pay-walled websites,
    content accessible through company or academic databases,
    any kind of database that cannot be searched directly by Google,
    websites that are not linked to other websites, private websites and forums, etc.
    A vast amount of website content cannot be indexed by clicking on links, and this is the Deep Web.

Dark Web
:   Part of the Deep Web is the Dark Web, which includes hidden internet services,
    usually accessible through Tor but also through alternative
    anonymising software like [Invisible Internet Project (I2P)][05] and [Freenet][06].
    By its users, this part of the internet is called the Dark Net.
    The terminology ‘dark’ refers to the difficulty finding the content rather than
    its nature being dark: content in the dark web is being intentionally hidden.

Clearnet
:   The Internet at large, or any network which has no inherent cryptographic
    security, authenticity, or anonymity. Examples: internet, unencrypted meshnets.

The Meshnet
:   Used here, "the meshnet" refers the transitional CJDNS internet overlay network
    currently known as Hyperboria.

# Communities Experiment with Mesh Networks
![BattlemeshV9](http://www.olsr.org/mediawiki/images/c/c5/BattleMeshV9.png =100x100 "The Wireless Battle of the Mesh is an event that aims to bring together people from across the globe to test the performance of different routing protocols for ad-hoc networks, like Babel, B.A.T.M.A.N, BMX, OLSR, and 802.11s.")(http://battlemesh.org/)
Some of the interest in mesh networking is about getting around traditional ISPs,
or as an emergency backup network in the event of a disaster,gg
or providing [true secrecy][04] / privacy / anonymity from the paring eyes of governments,
or promoting [hyperlocality][02],
or just experimenting with the latest mesh networking protocols.
This experimental spirit in the [Wireless Battle of the Mesh][03] annual event.
This free event aims to bring together
people from across the globe
who are interested in dynamic routing protocols or wireless community networks
or wish to test the performance of different routing protocols
for mesh networks, like Babel, B.A.T.M.A.N, BMX, OLSR, and 802.11s.

Many of the community mesh network organization do not anonymize your identity,
prevent monitoring, orprevent jamming but some make some
[surgestion on how to do this](https://commotionwireless.net/understanding-commotions-warning-label/).

[Meta Mesh](http://www.metamesh.org/)
:   The Meta Mesh organization works with communities and the unincorporated,
    volunteer run, [Pittmesh Working Group](http://www.pittmesh.net/) to build Community Wireless Networks in Pittsburgh, PA
    and anywhere else our services and knowledge are needed.
    Meta Mesh appears to primarily support [Ubiquiti Network](https://www.ubnt.com/) hardware / software
    but also [appear to support OpenWRT](http://www.metamesh.org/#!how-to-configure-a-router/b7luv) using
    [Optimized Link State Routing Protocol (OLSR)](http://www.olsr.org/mediawiki/index.php/Projects#olsrd2).

[Commotion Wireless](https://commotionwireless.net/)
:   The Commotion project has pilot networks in [Detroit, Buffalo, Red Hook Brooklyn, and other locations](https://commotionwireless.net/about/where-its-used/).
    All Commotion platforms share a common core:
    a shared network medium (usually Ad-Hoc WiFi, aka IBSS),
    the [Optimized Link State Routing Protocol (OLSR)](http://www.olsr.org/mediawiki/index.php/Projects#olsrd2),
    and the [Commotion Architecture](https://wiki.commotionwireless.net/doku.php?id=commotion_architecture:start).
* [Commotion Pi: Build an RPi MESH Node](https://commotionwireless.net/blog/2014/06/12/commotion-pi-build-rpi-mesh-node/)

[People's Open Network](http://peoplesopen.net/)
:   This is a Oakland, CA based organization assocated with the Hackerspace [Sudo Room](https://sudoroom.org/)
    that does the [mesh network development](https://sudoroom.org/wiki/Mesh).
    This [network makes use of BATMAN-adv protocoal](https://sudoroom.org/wiki/Mesh/Firmware)
    and has [spcific network topology](https://sudoroom.org/wiki/Mesh/Network_topology)
    that make use of Sudo Room's routers and community routers.

[Project Byzantium](http://project-byzantium.org/)
:   Byzantium Mesh runs on Linux based x86 computer (include later generation MacBooks)
    with at least one 802.11 a/b/g/n wireless interface.
    It uses the OLSR protocal for routing and
    has been [intergrated with packet-radio](http://project-byzantium.org/byzantium-linux-v0-4b-now-with-packet-radio-support-and-distributed-messaging/).
* [Meshing Pis with Project Byzantium](https://getpocket.com/a/read/909311497)

[Broadband-Hamnet / HSMM-Mesh](http://www.broadband-hamnet.org/)
:   This platform is the High-Speed Multimedia Mesh suite, built for amateur radio,
    but applicable to unlicensed radio compliant to FCC Part 15.
    [Broadband-Hamnet][01] (formerly called HSMM-Mesh) is a high speed, self discovering,
    self configuring, fault tolerant,
    wireless computer network that can run for days from a fully charged car battery,
    or indefinitely with the addition of a modest solar array or other supplemental power source.
    The focus is on emergency communications.
    In its current form it is built using the Linksys WRT54G/GL/GS wireless routers
    and operates on channels 1-6 of the 2.4GHz ISM band,
    which overlaps with the upper portion of the 13cm amateur radio band.
    Other platforms and bands are in development at this time.
    Next will be Ubiquiti equipment with others supported as development resources permit.

* [1. Introduction To HSMM-MESH Or Broadband-Hamnet](https://www.youtube.com/watch?v=hUeW2ju-RZk&list=PLvgZ_9wT_LNfPHrOWLGG3T_mHWql86afr)
* [2. Setting up a MESH Node for Amateur Radio - WRT54G firmware install](https://www.youtube.com/watch?v=pryc8jIl6Xo)
* [3. HSMM-MESH Update Firmware on a Remote Node](https://www.youtube.com/watch?v=vvFjK-Ihk9c)
* [Ten Mile Raspberry Pi WiFi (with a Catch)](http://hackaday.com/2016/01/05/ten-mile-raspberry-pi-wifi-with-a-catch/)
* [Cheat Sheet – HSMM](http://www.hdecommgrp.org/?p=223)

[Seattle Meshnet](https://seattlemesh.net/about)
:   The Seattle Meshnet Project is an attempt to build the physical infrastructure to run cjdns

[OpenMesh](http://www.openmeshproject.org/)
:   On January 25, 2011, when the Egyptian government decided to block the entire Internet,
    OpenMeshProject.org came to life.

[Hybrid Wireless Mesh Protocol (HWMP)]()
:   HWMP protocol is hybrid, because it supports two kinds of path selection protocols.
    Although these protocols are very similar to routing protocols, but bear in mind,
    that in case of IEEE 802.11s these use MAC addresses for "routing", instead of IP addresses.
    Therefore, we use the term "path" instead of "route" and thus "path selection" instead of "routing""
* [1. Introduction To HSMM-MESH Or Broadband-Hamnet](https://www.youtube.com/watch?v=hUeW2ju-RZk&list=PLvgZ_9wT_LNfPHrOWLGG3T_mHWql86afr)
* [2. Setting up a MESH Node for Amateur Radio - WRT54G firmware install](https://www.youtube.com/watch?v=pryc8jIl6Xo)
* [3. HSMM-MESH Update Firmware on a Remote Node](https://www.youtube.com/watch?v=vvFjK-Ihk9c)
* [Cheat Sheet – HSMM](http://www.hdecommgrp.org/?p=223)

[Quick Mesh Project (qMp)]()
:   xxx
* [Quick deployment network using MANET](http://upcommons.upc.edu/pfc/bitstream/2099.1/14103/1/77789.pdf)
* [Quick Mesh Project](http://qmp.cat/Experimenting_with_the_WRTnode)
* [Quick deployment network using MANET](http://upcommons.upc.edu/pfc/bitstream/2099.1/14103/1/77789.pdf)
* [quick Mesh project (qMp.cat) workshop](https://github.com/pedro-nonfree/qmp-workshop-manual/blob/master/qmp-workshop-manual.org)
* [qMp wireless mesh network monitoring](https://github.com/pedro-nonfree/qmpsantsupc)
* [Integration of MANET/Mesh networks with qMp in the Guifi·net community - Document](http://upcommons.upc.edu/pfc/bitstream/2099.1/20956/1/88861.pdf)
* [Integration of Mesh networks with qMp in the Guifi·net community - Presentation](http://dev.qmp.cat/attachments/download/144/PFC_qMp-Guifi_presentation.pdf)
* [qMp wireless mesh network monitoring](https://github.com/pedro-nonfree/qmpsantsupc)
* Community Networks
    * [Starting, Contributing and Empowering Community Networks in cities Experiences in Barcelona](http://repositori.upf.edu/bitstream/handle/10230/22884/VilchesBlanco_2014.pdf?sequence=1)
    * [Experimental research on testbeds for community networks (year 3)](https://bscw.pangea.org/pub/bscw.cgi/d332070/D4.3.pdf)

[Project Meshnet / Hyperboria](http://hyperboria.net/)
:   Hyperboria is based on the cjdns routing protocol and formerly known as Project Meshnet.
    It runs a peer-to-peer IPv6 network with automatic end-to-end encryption,
    distributed IP address allocation,
    and Distributed Hash Table (DHT) based Source Routing.
[Meshnet activists rebuilding the internet from scratch](https://www.newscientist.com/article/mg21929294.500-meshnet-activists-rebuilding-the-internet-from-scratch)
[How Meshnets Are Changing The Face Of The Web](http://makezine.com/2014/11/26/how-meshnets-are-changing-the-face-of-the-web/)
[How to Connect to a DarkNet](http://www.tinkernut.com/portfolio/connect-to-a-darknet/)
[Setup CJDNS on Raspberry Pi](http://www.splatcrashbang.com/setup-cjdns-on-raspberry-pi/)
[Getting started with Hyperboria (cjdns), on Linux](http://meshbits.io/getting-started-with-meshnet-on-linux/)
[Running cjdns on Raspbian Jessie](http://mesh.philly2600.net/?p=54)
[Hyperboria Documentation](https://docs.meshwith.me/)


[Philly Mesh](http://mesh.philly2600.net/)
[Cleveland Meshnet](https://www.reddit.com/r/ClevelandMeshnet/)
[Maryland Mesh](https://www.reddit.com/r/marylandmesh)
[NYC Mesh](https://nycmesh.net/) (also supports qMp OpenWrt package which uses the BMX6 mesh protocol)
[VirginiaMesh](https://www.reddit.com/r/VirginiaMesh)


[FireChat](http://opengarden.com/about-firechat) mesh or multi-peering / store-and-forward or ???
:   When pro-democracy protests erupted in Hong Kong,
    many demonstrators feared the government would shut down the internet.
    Those fears, combined with congested data networks, drove thousands to download FireChat.
    The major innovation of FireChat was that it allowed users to chat in groups
    even when there was no Internet connection available.
    The app uses available WiFi networks (whether they are connected to the wider Internet or not),
    Bluetooth and other connections to set up a local network that people could use to chat.
    It uses a store-and-forward technique where the messages are encrypted,
    so other users can’t read them, even if the message is stored on a device
    while trying to find a way to deliver the message.
    [Why a messaging app meant for festivals became massively popular during Hong Kong protests](http://www.theverge.com/2014/10/16/6981127/firechat-messaging-app-accidental-protest-app-hong-kong)
* [How FireChat is using an obscure iOS feature to change messaging](http://www.pcworld.com/article/2137265/how-firechat-is-using-an-obscure-ios-feature-to-change-messaging.html)
* [Thali](http://thaliproject.org/)
* http://venturebeat.com/2015/10/20/open-garden-uses-firechat-in-tahiti-to-create-a-cell-phone-network-that-eliminates-need-for-carriers/
* https://play.google.com/store/apps/details?id=com.opengarden.firechat&referrer=utm_source%3Dfirechat.opengarden.com%26utm_medium%3Dweb%26utm_campaign%3Dbutton
* https://firechat.firebaseapp.com/
* https://www.npmjs.com/package/firechat
* [firechat and nearby communication](http://breizh-entropy.org/~nameless/random/posts/firechat_and_nearby_communication/)
* https://news.ycombinator.com/item?id=7941163
* [How FireChat Works, Unpacking Bluetooth](https://cctp2p.wordpress.com/2015/04/12/how-firechat-works/)
* [Cross-Platform Firechat: a possible explanation](http://blog.moritzhaarmann.de/blog/2014/06/25/firechat/)

# Routing Protocols
There are more than 70 competing schemes for routing packets across mesh networks.
Scalable Source Routing (SSR) is a routing protocol for unstructured networks
such as mobile ad hoc networks, mesh networks, or sensor networks.
https://en.wikipedia.org/wiki/Wireless_mesh_network#Routing_protocols
https://en.wikipedia.org/wiki/List_of_ad_hoc_routing_protocols
http://www.utilitynetworks.co.uk/site/content/introduction-wireless-mesh-routing-protocols-alan-holt

## OLSR Routing Protocol
Old and well-documented routing protocol
Mesh Networking With OLSR](http://www.dd-wrt.com/wiki/index.php/Mesh_Networking_with_OLSR)

## B.A.T.M.A.N. Mesh
Developed by Freifunk to replace OLSR
primarily use case is where a significant number of nodes move around a lot within the mesh area (vehicle based nodes for instance).
[B.A.T.M.A.N. Mesh Video Playlist](https://www.youtube.com/playlist?list=PLvgZ_9wT_LNdq7SdqJ6VSWspU3vlnEuV9)
[B.A.T.M.A.N. Advanced](http://www.open-mesh.org/projects/batman-adv/wiki/)
[Mobile Mesh Networks with the Raspberry Pi – Part 1](http://www.ericerfanian.com/mobile-mesh-networks-with-the-raspberry-pi-part-1/)
[Subnodes Project](http://subnodes.org/)
[A Raspberry Pi based batman-adv Mesh network node](http://people.skolelinux.org/pere/blog/A_Raspberry_Pi_based_batman_adv_Mesh_network_node.html)
[BATMAN on OpenWRT](https://wiki.reseaulibre.ca/guides/openwrt+batman/)

## CJDNS
The vision of [cjdns](https://github.com/cjdelisle/cjdns)
([video](https://www.youtube.com/watch?v=NRhMY-gdXDw) and [whitepaper](https://github.com/cjdelisle/cjdns/blob/master/doc/Whitepaper.md#the-router))
is an Internet where every packet is cryptographically protected
from source to destination against espionage and forgery,
getting an IP address is as simple as generating a cryptographic key,
core routers move data without a single memory look up,
and denial of service is a term read about in history books.
Finally, becoming an ISP is no longer confined to the mighty telecoms,
anyone can do it by running some wires or turning on a wireless device.
This is the vision of CJDNS.
CJDNS operates at layer 2 locally, and it can peer with other distant meshnets via a UDP interface on layer 3.
CJDNS implements an encrypted IPv6 network using public-key cryptography for address allocation and a distributed hash table for routing.

## Telehash
[TMesh](https://github.com/telehash/TMesh/blob/master/TMesh.md)

## Babel
Babel, a level-2 protocal,
is a loop-avoiding distance-vector routing protocol for IPv6 and IPv4 with fast convergence properties.
[Babel — a loop-avoiding distance-vector routing protocol](http://www.pps.univ-paris-diderot.fr/~jch/software/babel/)

# FreeMesh
* [How to set up your own fast, private open source mesh network](https://opensource.com/article/20/2/mesh-network-freemesh)

# Meshing Raspberry Pi
* [How to Install OpenWrt on Raspberry Pi](https://www.all4os.com/router/how-to-install-openwrt-on-raspberry-pi.html)
* [Mesh networking with multiple Raspberry Pi boards](http://hackaday.com/2012/11/14/mesh-networking-with-multiple-raspberry-pi-boards/)
* [Raspberry Pi Wireless Mesh: Scripts, Data, Plots – oh my!](http://lab.uchicago.edu/2013/09/27/raspberry-pi-wireless-mesh-scripts-data-plots-oh-my-part-1/)
* [MicroMesh - IoT Mesh Network](https://hackaday.io/project/2492-micromesh-iot-mesh-network)
* [How Meshnets Are Changing The Face Of The Web](http://makezine.com/2014/11/26/how-meshnets-are-changing-the-face-of-the-web/)

## OpenWRT
* [My complete OpenWrt Setup Guide](http://www.jauu.net/2015/03/03/complete-openwrt-guide/)
* [Creating a basic Batman-adv mesh](http://www.radiusdesk.com/technical_discussions/batman_basic)
* [Hosting Two WiFi Networks on One OpenWrt Router](https://www.smallbusinesstech.net/more-complicated-instructions/openwrt/hosting-two-wifi-networks-on-one-openwrt-router)
* [How to connect OpenWRT behind another router](https://forum.openwrt.org/viewtopic.php?id=44660)

# Tools
* [Horst is a diagnostic tool that displays Layer 1 information about the link](http://br1.einfach.org/tech/horst/)
* [MTR (My Traceroute) is a tool that continuously runs traceroutes and shows the latency at each hop of the path.](http://www.bitwizard.nl/mtr/)

# Other
* [Thread - New wireless mesh standard hatches from Google's Nest](http://linuxgizmos.com/new-wireless-mesh-standard-hatches-from-googles-nest/)
* [Mesh Network Key to Winning IoT Race](http://www.eetimes.com/document.asp?doc_id=1323606)
* [Wireless 802.11s Mesh Networks,a Techno Commercial](http://www.calsoftlabs.com/downloads/wireless-mesh-networks.pdf)
* [Example Community Broadband Wireless Mesh Network Design](http://www.tranzeo.com/products/docs/EnRoute500-Mesh-sample-design-report.pdf)
* [How To Set Up An Open Mesh Network in Your Neighborhood](http://www.shareable.net/blog/how-to-set-up-an-open-mesh-network-in-your-neighborhood)
* [Introducing wireless mesh networking](http://www.iebmedia.com/index.php?id=4651&parentid=74&themeid=255&hft=25&showdetail=true&bb=1&PHPSESSID=1g35q8lhujc3rfbdclgthpt0t2)
* [Untangle the Mesh: Comparing mesh networking technologies](http://www.iebmedia.com/index.php?id=6279&parentid=74&themeid=255&hft=55&showdetail=true&bb=1&PHPSESSID=9r4us74ftnj48tgjfpipbrud84)
* What a Mesh!: [Part 1-The Ins and Outs Of Mesh Networking](http://www.sensorsmag.com/networking-communications/wireless-sensor/what-a-mesh-part-1-the-ins-and-outs-of-mesh-networking-1530) and [Part 2-Networking Architectures and Protocols](http://www.sensorsmag.com/networking-communications/wireless-sensor/what-a-mesh-part-2-networking-architectures-and-protocols-1544)
* [Ultra Narrow Band Wireless Mesh Networks](http://tiny-mesh.com/wireless-mesh-network/ultra-narrow-band.html)
* [CSRmesh for Bluetooth low energy devices](https://wiki.csr.com/wiki/CSRmesh)
* [Mesh Networking Playlist](https://www.youtube.com/playlist?list=PLrIDWbyydDJCPIF5nN9mGa5aMU-ml4mdL)



[01]:http://www.broadband-hamnet.org/
[02]:https://en.wikipedia.org/wiki/Hyperlocal
[03]:http://www.battlemesh.org/
[04]:https://www.newamerica.org/oti/the-crypto-cat-is-out-of-the-bag/
[05]:http://i2pproject.net/en/
[06]:https://freenetproject.org/
[07]:https://www.torproject.org/
[08]:https://en.wikipedia.org/wiki/Community_network
[09]:
[10]:
[11]:
[12]:
[13]:
[14]:
[15]:
[16]:
[17]:
[18]:
[19]:
[20]:
[43]:http://www.economist.com/news/international/21702176-drug-trade-moving-street-online-cryptomarkets-forced-compete?utm_source=pocket&utm_medium=email&utm_campaign=pockethits
