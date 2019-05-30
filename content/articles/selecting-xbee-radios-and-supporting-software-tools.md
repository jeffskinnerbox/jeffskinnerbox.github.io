Title: Selecting XBee Radios and Supporting Software Tools
Date: 2012-12-22 00:01
Category: Electronics
Tags: XBee
Slug: selecting-xbee-radios-and-supporting-software-tools
Author: Jeff Irland
Image: xbee_ftdi_powered.jpg
Summary: In this article, I explore the different XBee Series 1 & 2 radios and illuminate the options of using each.  A major point of consideration is the availability of software libraries for devloping code.

<center>
<a href="http://jeffskinnerbox.wordpress.com/2012/12/22/selecting-xbee-radios-and-supporting-softwaretools/digimesh_networking/" rel="attachment wp-att-986"><img class="aligncenter size-full wp-image-986" alt="DigiMesh_networking" src="http://jeffskinnerbox.files.wordpress.com/2012/12/digimesh_networking.jpg" width="499" height="262" /></a>
</center>

My ultimate aim is to wirelessly network several Arduino based platforms with a centralized Raspberry Pi controller or gateway.  There is much for me to learn to get this operational, not the least of which is the selection of the radio device platform I plan to use. After reviewing <a href="https://www.sparkfun.com/categories/16">other</a> devices, I have settled on the XBee, in part because of its popularity, its mesh capabilities, and it power management.  To get up to speed on the Xbee, I found the tutorials at <a href="http://www.ladyada.net/make/xbee/index.html">Adafruit</a>, <a href="https://www.sparkfun.com/pages/xbee_guide">Sparkfun</a>, and <a href="http://www.parallax.com/portals/0/downloads/docs/prod/book/122-32450-xbeetutorial-v1.0.pdf">Parallax</a> helpful.   Some additional good references are listed at the end of this post.

As I did in the post <a href="http://jeffskinnerbox.wordpress.com/2012/12/05/raspberry-pi-serial-communication/">Raspberry Pi Serial Communication: What, Why, and a Touch of How</a>, I have a desire (obsessive need?) to do some extensive researching before diving into implementing a project.  What is listed below are my research findings.
<h2>XBee Series 1 vs. Series 2</h2>
<a href="http://www.digi.com/xbee/">Digi's XBee website</a> gives you a confusing set of options for selecting radios but after reviewing multiple sources, it boils down to the XBee Series 1 vs. Series 2 for the DIY type applications I would do.
<ul>
<ul>
	<li><a href="http://www.adafruit.com/products/128">XBee Series 1 Module</a> (<a href="http://www.freescale.com/">Freescale</a> technology with 802.15.4 firmware) have a 250 kbps RF data rates and operate at 2.4 GHz.  These radios use the<a href="http://en.wikipedia.org/wiki/IEEE_802.15.4"> IEEE 802.15.4</a> networking protocol and can perform point-to-multi-point networking.  You can also do <a href="http://en.wikipedia.org/wiki/Peer-to-peer">peer-to-peer</a> networking (a form of <a href="http://en.wikipedia.org/wiki/Mesh_networking">mesh</a> network) but this will require a firmware  <a href="http://www.libelium.com/development/waspmote/tutorial0002">upgrade</a> called <a href="http://www.digi.com/technology/digimesh/">DigiMesh</a> designed specifically for the Series 1 hardware.</li>
	<li><a href="http://www.adafruit.com/products/968">XBee Series 2 Module</a> (<a href="http://www.silabs.com/products/wireless/zigbee/Pages/default.aspx">Ember/Silicon Labs</a> technology with ZigBee firmware) are similar to the Series 1 in many respects but use the <a href="http://www.zigbee.org/">ZigBee</a> standard, and  therefore, have the potential for interoperability with devices made by different vendors.</li>
</ul>
</ul>
<a href="http://computer.howstuffworks.com/how-wireless-mesh-networks-work.htm">Mesh networking</a> (<a href="http://en.wikipedia.org/wiki/Network_topology">topology</a>) is a type of networking where each node must not only capture and disseminate its own data, but also may serve as a relay for other nodes, that is, it must collaborate to propagate the data in the network.  This gives the network <a href="http://en.wikipedia.org/wiki/Self-organizing_network">self configuring</a>, <a href="http://queue.acm.org/detail.cfm?id=864027">self healing</a>, <a href="http://en.wikipedia.org/wiki/Dynamic_routing">dynamic routing</a>, and other capabilities.  Wireless mesh networks can be implemented with various wireless technology including <a title="802.11s" href="http://en.wikipedia.org/wiki/802.11s">802.11</a>, <a title="802.15" href="http://en.wikipedia.org/wiki/802.15">802.15</a>, <a title="802.16" href="http://en.wikipedia.org/wiki/802.16">802.16</a>, cellular technologies or combinations of more than one type.  The mesh enabling capability for these technologies is the<a href="http://en.wikipedia.org/wiki/Routing_protocol"> routing protocol </a>being used. There are <a href="http://en.wikipedia.org/wiki/Wireless_mesh_network">many routing protocols</a> being used by mesh networks today for many different types of products, but I will concern ourselves with just the XBee Series 1 and Series 2 products.

The <a href="http://www.zigbee.org/">Zigbee Alliance</a> is a group of more than 300 companies who is responsible for publishing and maintaining the Zigbee specification. In the ZigBee network topology,  there are different node types in the network (Coordinator, Router, End Device). <a href="http://www.digi.com/technology/digimesh/">DigiMesh</a> is a proprietary <a href="http://compnetworking.about.com/od/basicnetworkingfaqs/a/peer-to-peer.htm">peer-to-peer networking</a> using a simplified topology (no need to define and organize coordinators, routers or end-nodes).  Digi has a <a href="http://www.digi.com/pdf/wp_zigbeevsdigimesh.pdf">white paper</a> that does a nice comparison of the two types of meshing products.

To further clarify the similarity/difference between Series 1 &amp; 2, see the table below:
<center>
<table border="1" cellspacing="0" cellpadding="0">
<tbody>
<tr>
<td width="187">
<p align="center"><b>Feature</b></p>
</td>
<td width="135">
<p align="center"><b>XBee Series 1 / 802.15.4</b></p>
</td>
<td width="135">
<p align="center"><b>XBee Series 2 / ZigBee</b></p>
</td>
<td width="181">
<p align="center"><b>Ramifications</b></p>
</td>
</tr>
<tr>
<td width="187">
<p align="center"><b>Price</b></p>
</td>
<td width="135">
<p align="center">~ $23</p>
</td>
<td width="135">
<p align="center">~ $26</p>
</td>
<td width="181">
<p align="center">Price shouldn’t be a driver but If you are looking for a simple point-to-point configuration, you should go with the Series 1. The Series 2 requires considerable setup and configuration.</p>
</td>
</tr>
<tr>
<td valign="top" width="187">
<p align="center"><b>Transmit Power Output</b><b> </b></p>
<p align="center"><b>Indoor/Urban Range</b><b> </b></p>
<p align="center"><b>Line-of-Sight Range</b></p>
</td>
<td valign="top" width="135">
<p align="center">1 mW (0dbm)</p>
<p align="center">up to 100 ft.</p>
<p align="center">up to 300 ft.</p>
</td>
<td valign="top" width="135">
<p align="center">2 mW (+3dbm)</p>
<p align="center">up to 133 ft.</p>
<p align="center">up to 400 ft.</p>
</td>
<td width="181">
<p align="center">The additional power of the Series 2 give you a ~25% increase in range.</p>
</td>
</tr>
<tr>
<td width="187">
<p align="center"><b>Firmware</b></p>
</td>
<td width="135">
<p align="center">Comes standard with 802.15.4 firmware for point-point or star topology. Requires DigiMesh firmware to mesh.</p>
</td>
<td width="135">
<p align="center">does not offer any 802.15.4-only firmware; it is always running the XBee ZB ZigBee mesh firmware</p>
</td>
<td width="181">
<p align="center">DigiMesh, while proprietary, appears to have less overhead and easier to configure</p>
</td>
</tr>
<tr>
<td width="187">
<p align="center"><b>Network Topologies</b></p>
</td>
<td width="135">
<p align="center">Point-to-Point, Star, and Mesh (with DigiMesh firmware)</p>
</td>
<td width="135">
<p align="center">Point-to-Point, Star, and Mesh</p>
</td>
<td width="181">
<p align="center">With a closer reading of the specs, you’ll find that the Series 1 with DigiMesh has a peer-to-peer topology but the Series 2 is hierarchical. I believe peer-to-peer is superior.</p>
</td>
</tr>
<tr>
<td width="187">
<p align="center"><b>Routing Protocol</b></p>
</td>
<td width="135">
<p style="text-align:center;" align="center">Ad hoc On-Demand Distance Vector (AODV) Routing + Hierarchical Tree Routing as last resort</p>
</td>
<td width="135">
<p align="center">Ad hoc On-Demand Distance Vector (AODV) Routing</p>
</td>
<td width="181">
<p align="center">I suspect there are more differences here but couldn’t uncover them.</p>
</td>
</tr>
<tr>
<td width="187">
<p align="center"><b>RF Data Rate</b></p>
</td>
<td width="135">
<p align="center">250 Kbps</p>
</td>
<td width="135">
<p align="center">250 Kbps</p>
</td>
<td width="181">
<p align="center">RF data rate doesn’t have much practical meaning</p>
</td>
</tr>
<tr>
<td width="187">
<p align="center"><b>Practical Maximum Throughput</b></p>
</td>
<td width="135">
<p align="center">~ 80kbps</p>
</td>
<td width="135">
<p align="center">ZigBee is significantly slower than the 802.15.4</p>
</td>
<td width="181">
<p align="center">ZugBee is a full OSI stack, and as a result, has significant overhead.</p>
</td>
</tr>
<tr>
<td width="187">
<p align="center"><b>Power-Down Current</b></p>
</td>
<td width="135">
<p align="center">10 uA</p>
</td>
<td width="135">
<p align="center">1 uA</p>
</td>
<td width="181">
<p align="center">Series 2 was built for low power consumption.</p>
</td>
</tr>
</tbody>
</table>
</center>

After pondering this all for a bit, I believe the choose boils down to two questions:
<ul>
<ul>
	<li>Is the interoperability of ZigBee important to you?</li>
	<li>What are the benefits of ZigBee vs. DigiMesh?</li>
</ul>
</ul>
The answer to the first question is "no".  While I find ZigBee's interoperability seductive, the practical matter is that I just don't see that many applications that I could envision integrating into a project.  Maybe some day, but not within my planning horizon.  As to the second question, I don't see any advantages to ZigBee's imposed topology of coordinators, routers, and end-nodes.  I believe the homogeneous types of nodes will give my applications the flexibility I may need. Of course, there are many other things one might want to consider, but I think this analysis is sufficient for my needs.  I'm going with the XBee Series 1 Module and I'll install DigiMesh firmware when it comes time to build meshed networks.
<h2>AT Mode vs. API Mode</h2>
XBee modules support two modes of operation – <a href="http://www.digi.com/support/kbase/kbaseresultdetl?id=2205">AT mode</a> and <a href="http://www.digi.com/support/kbase/kbaseresultdetl?id=2184">API mode</a>.  In API mode, you communicate with the radio by sending and receiving packets. In AT (transparent) mode, the XBee radio simply relays serial data to the receiving XBee, as identified by the DH+DL address.  Series 1 radios support both AT and API modes with a single firmware version, allowing you switch between the modes with the  <a href="http://ftp1.digi.com/support/documentation/90001003_A.pdf">X-CTU software</a>.

To create simple point-to-point links, XBee works nicely in AT mode without much coding. However, if your goal is to build a network consisting of more than two devices, AT mode becomes too difficult to bear. You will spend almost all the time switching in and out of AT mode, wasting time and draining batteries in the process. On the other hand, in API mode commands and data travel in specially formatted frames and no switching is necessary. Another advantage of API mode is that serial speed on transmitters doesn't have to match – one can be configured for 115,200bps, another for 2400bps, third left with default 9600bps. There is another nice feature called remote command; you can remotely request the state of XBee module pins, for example, or change an output pin level.

It's clear that I'll want to work in API mode, but judging from the <a href="http://www.circuitsathome.com/mcu/playing-xbee-part-4-api">examples of XBee API mode code</a>, it sure would be nice to have a library package that has designed in some basic utilities that I can leverage.  That is the next topic.
<h2>Supporting Software</h2>
One of the first packages I discovered was the <a href="http://sojournstudio.org/xnp/?page_id=61">Xbee Network Protocol (XNP)</a>.  I was impressed by the volume and quality of the <a href="http://forums.adafruit.com/viewtopic.php?f=40&amp;p=131325#p131325">documentation</a>.  Never the less, I passed on it for two reasons.  First, it isn't as mature as other packages I discovered (and not widely used), and most importantly, it appears to be implementing mesh networking in software.  Ether the author didn't recognize that the Series 1 modules can mesh via the DigiMesh firmware (not a surprise since many websites wrongfully report that the Series 1 do not mesh) or he just wants to roll-his-own (what better way to learn about mesh routing protocols).

<a href="http://code.google.com/p/xbee-arduino/">xbee-arduino</a> is a C++ Arduino library for communicating with XBees in API mode, with support for both Series 1 and Series 2.  Judging from the documentation,  it appears that it could be ported to Raspberry Pi but it would be far easier to use something targeted for the RPi (see below).  With the latest beta software, the XBee's serial communications can be handle via <a href="http://arduino.cc/en/Reference/SoftwareSerial">SoftwareSerial</a>, freeing up the Arduino USB for debugging.  It also appears to that the author is experimenting  if not already <a href="http://code.google.com/p/xbee-arduino/issues/detail?id=20">supporting DigiMesh</a>. The package is well documented, actively maintained, and equally important, appears to be popular.

Another possibility for the Raspberry Pi is the <a href="http://code.google.com/p/python-xbee/">python-xbee</a>. This Python package is not as well documented as the xbee-arduino but does appear to be actively used and supported. The fact that its on the Python Organization's web site as a <a href="http://pypi.python.org/pypi/XBee/2.0.0">listed package</a> gives it some additional credibility. See <a href="http://code.google.com/p/python-xbee/issues/detail?id=28">this</a> and <a href="http://www.digi.com/wiki/developer/index.php/XBee_Extensions_to_the_Python_Socket_API">this</a> with respect to DigiMesh support.

<a href="http://code.google.com/p/libxbee/">libxbee</a> is another C++ library but targeted at Linux and Windows. Fewer users and the author states "development is coming to an end" may mean this platform isn't as strong as the others.

While not a very rigorous analysis, I believe I'll place my bets on <a href="http://code.google.com/p/xbee-arduino/">xbee-arduino for Arduino</a> development and <a href="http://code.google.com/p/python-xbee/">python-xbee for Raspberry Pi</a> development.  Using Python is intriguing in part because it appears to be the preferred software language for the RPi.  But what if you have some C++ code, a popular language for Linux, and that you want to use some existing libraries? There are tools that could make this happen. You could use <a href="http://docs.python.org/2/extending/extending.html">Python's C/C++ extension modules</a>. Also, there is the <a href="http://www.swig.org/">Simplified Wrapper and Interface Generator (SWIG)</a>, which is a software development tool that connects programs written in C/C++ with a variety of high-level programming languages. SWIG is used with different types of target languages including common scripting languages such as Perl, PHP, Python, Tcl and Ruby.
<h2>References</h2>
An unspoken consideration in my analysis is documentation availability/quality, example implementations  for learning, and the availability of software libraries I could potential use. Here are some of the more interesting things I uncovered.

Tutorials (ZigBee but can be generalized to the XBee)
<ul>
<ul>
	<li><a href="http://www.rfwireless-world.com/Tutorials/Zigbee_tutorial.html">Zigbee Tutorial</a> - a short introduction</li>
	<li><a href="http://sensor-networks.org/index.php?page=0823123150">802.15.4 vs ZigBee</a> - a more technical introduction</li>
	<li><a href="http://freaklabs.org/index.php/Blog/Zigbee/zigbee-mesh-routing-interactive-tutorial.html">Zigbee Mesh Routing - Interactive Tutorial</a> - nice job explaining AODV routing</li>
	<li><a href="http://www.jennic.com/elearning/zigbee/files/html/module1/module1-1.htm">The ZigBee Standard</a> - a painless introduction</li>
</ul>
</ul>
XBee Documentation
<ul>
<ul>
	<li><a href="http://www.digi.com/products/wireless-wired-embedded-solutions/zigbee-rf-modules/point-multipoint-rfmodules/xbee-series1-module#docs">XBee Series 1 Manuals</a> - multiple document covering the Series 1 modual</li>
	<li><a href="http://www.jsjf.demon.co.uk/xbee/faq.pdf">The Unofficial XBee FAQ</a>  - answers to issues that maybe getting in the way</li>
	<li><a href="http://www.jsjf.demon.co.uk/xbee/xbee.pdf">XBee Cookbook for Series 1</a> - sort of companion document to the The Unoffical XBee FAQ</li>
	<li><a href="http://www.libelium.com/development/waspmote">Libelium.com Development Documentation</a> - while targeted for the meshlium device, this does have good general documenation</li>
</ul>
</ul>
Example Implementations
<ul>
<ul>
	<li><a href="http://gallery.digi.com/">Collection of XBee Projects</a> - Digi's collection of XBee projects done by the Hacker/DIY community</li>
	<li><a href="http://examples.digi.com/">XBee Examples &amp; Guides</a> - Digi's website giving you step-by-step instructions for simple projects</li>
	<li>Playing Xbee: Part <a href="http://www.circuitsathome.com/mcu/playing-xbee">1</a>, <a href="http://www.circuitsathome.com/low-power/playing-xbee-part-2">2</a>, <a href="http://www.circuitsathome.com/mcu/playing-xbee-part-3">3</a>, <a href="http://www.circuitsathome.com/mcu/playing-xbee-part-4-api">4</a> - author does a nice "teaching tour" on his introduction to XBee</li>
</ul>
</ul>
Other Sources
<ul>
<ul>
	<li><a href="http://www.mesh-networks.org/index.php?language=english&amp;page=the_group">mesh networks research group</a> - informative topics focused in the mesh networks field</li>
	<li><a href="http://dsnet.tu-plovdiv.bg/wiki/Wiki.jsp?page=Driver%20Module%20for%20XBee%20Device">Driver Module for XBee Device</a> - Linux kernel driver for XBee</li>
</ul>
</ul>
