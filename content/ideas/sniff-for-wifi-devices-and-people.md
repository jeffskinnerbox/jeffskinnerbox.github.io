
* [Dope Scope - A directional WiFi Sniffing device that fits in the palm of your hand](http://warcollar.com/products/dopescope.html)

* [ESP8266 Sniffer](https://www.hackster.io/kosme/esp8266-sniffer-9e4770)
* [Inconspicuously Sniff Wi-Fi Data Packets Using an ESP8266](https://null-byte.wonderhowto.com/how-to/inconspicuously-sniff-wi-fi-data-packets-using-esp8266-0192829/)
* [Stealthfully Sniff Wi-Fi Activity Without Connecting to a Target Router](https://null-byte.wonderhowto.com/how-to/stealthfully-sniff-wi-fi-activity-without-connecting-target-router-0183444/)
* [Monitor Foot Traffic Using Radio](https://hackaday.com/2018/04/06/monitor-foot-traffic-using-radio/)
* [ESP32-Paxcounter is a proof-of-concept device for metering passenger flows in realtime](https://hackaday.com/2018/04/06/monitor-foot-traffic-using-radio/)
* [Quickie WiFi Scanner](http://hackaday.com/2016/02/24/quickie-wifi-scanner/)
* [WiFi Scanner -Know the WiFi Signal around you](https://community.seeedstudio.com/WiFi-Scanner--Know-the-WiFi-Signal-around-you--p-220.html)
* [esp8266locationtracker - Opportunistically track and transmit the location of a ESP8266](https://github.com/dancudds/esp8266locationtracker)
* [ESP8266 Turned Secretive WiFi Probe Request Sniffer](https://hackaday.com/2020/09/20/esp8266-turned-secretive-wifi-probe-request-sniffer/)
* [Hunting Rogue Access Points with the ESP8266](https://hackaday.com/2017/12/28/antenna-alignment-and-hunting-rogue-access-points-with-the-esp8266/)
* [WarWalking With The ESP8266](http://hackaday.com/2016/10/23/warwalking-with-the-esp8266/)
* [Dope Scope - A directional WiFi Sniffing device that fits in the palm of your hand](http://warcollar.com/products/dopescope.html)
* [ESP8266 Sniffer](https://www.hackster.io/kosme/esp8266-sniffer-9e4770)
* [ESP8266 Friend Detector](https://www.hackster.io/ricardooliveira/esp8266-friend-detector-12542e)


## WiFi Deauthentication Attack
A [WiFi deauthentication attack](https://en.wikipedia.org/wiki/Wi-Fi_deauthentication_attack)
is a type of denial-of-service attack that targets communication between a user and a Wi-Fi wireless access point.
* [Pocket-Sized Deauther Could Definitely Get You In Trouble](https://hackaday.com/2019/04/04/pocket-sized-deauther-could-definitely-get-you-in-trouble/)
* [Great Badge Concept: A “Geiger Counter” For WiFi Deauthentication Frames](https://hackaday.com/2020/06/20/great-badge-concept-a-geiger-counter-for-wifi-deauthentication-frames/)

# Connect ESP to Wireshark
* [ArduinoPcap](https://github.com/spacehuhn/ArduinoPcap)
* [Sniffing WiFi with ESP32 & ESP8266 in Wireshark](https://www.youtube.com/watch?v=3Ac6X6ZBQ0g)




---------



## WiFi Scanning
* [Why do WiFi devices broadcast?](https://security.stackexchange.com/questions/152007/why-do-wifi-devices-broadcast)


WiFi scanning is one of the basic functions in a wireless network.
It is the mechanism by which a client device (e.g. computer)
or an application discovers the wireless networks that are in range of the WiFi adapter.
As part of this process, application gathers information about the
signal strength, channel, security configuration, and capabilities of nearby networks.
Client devices use this information to determine which networks they can join or roam to.

There are two methods to perform WiFi scanning: active and passive.

* During an **active scan**, the client device searches for wireless networks
by transmitting probes and listening for responses from the access points in range.
These responses describe the configuration and capabilities of each of the
wireless networks managed by the access point.
* During a **passive scan**, the client device listens for beacons,
which are specific frames transmitted by the access points to announce their presence and,
similarly to a probe response,
also include the configuration and capabilities of the wireless networks they service.
A client device must listen on a channel long enough to catch a beacon from a nearby access point
(A default of 10 beacons per second is typical).

An active scan is the recommended mechanism for fast connection establishment
and supported by basically all the WiFi drivers.
But active scanning has a few disadvantages.
First, this method cannot be used, in general,
to find wireless networks that do not broadcast
their SSID (also known as hidden networks),
and second, it may result in shorter scan ranges because
client devices usually transmit at lower power levels.
As a consequence, access points that are located farther away
cannot decode the probes and will not send a response to the client.

Alternatively, a passive scan allows you to find all networks,
including those that are hidden and located at farther distances
(contrary to client devices, access points usually transmit at higher power levels).
Passive scanning requires specific capabilities from the WiFi driver and some extra coding.
For example, the driver must have the ability to put the WiFi interface in
[monitor mode][05] (more on this below)
and provide a mechanism to supply additional information about the frames,
such as the signal strength at which the frames are being received from the access point.
WiFi scanners doing a passive scan would need to
(somehow) iterate over the different supported channels, listen for beacons,
and extract additional information from specialized frame headers
that are used by the WiFi driver to pass information to user-space applications.

## WiFi Modes
A WiFi network device always operates in one
(or for some special hardware, multiple modes as in AP+STA or WDS with AP Mode)
of the six modes that 802.11 wireless cards can operate in:

1. Master / Access Point - acting as an access point (AP)
1. Managed / Station / STA / Access Point Client / Wireless Client / Client - act as a client to an access point
1. Ad-Hoc / Point-to-Point / Wireless Bridge - directly connecting two or more computers without an access point
1. Mesh / Point-to-Multipoint / Multi-point Bridge - decentralized interconnection with other wireless access points
1. Repeater / WDS - wireless interconnection to other access points to form a single managed network
1. Monitor - passively read packets, no packets are transmitted

Strictly speaking, Infrastructure Mode is not a device mode but a concept.

## WiFi Monitor and Promiscuous Modes
The Ethernet and WiFi data is broadcasted to all who wish to listen on a wire or in the air
but only "marked" to be processed by the intended receiver.
The packets sent are are not constrained to reach a specific device, unlike with switched LANs.
This allows for two types of listening in: **Monitor mode** and **Promiscuous mode**.
Monitor mode only applies to wireless networks,
while promiscuous mode can be used on both wired and wireless networks.
Monitor mode is one of the six modes that 802.11 wireless cards can operate in:
Master (acting as an access point), Managed (client, also known as station),
Ad-hoc, Mesh, Repeater, and Monitor mode.

* **Monitor mode:** Sometimes called "rfmon mode", sniffs the packets in the air
without connecting (associating) with any access point.
No association to access point (and no authentication) means your presence is unknown,
your not connected to a network, you can't process the Ethernet information.
This also means the NIC does not care whether the CRC values are correct for packets captured in monitor mode,
so some packets that you see may in fact be corrupted.
In addition, monitor mode allows you to find hidden SSIDs.
SSIDs aren't broadcast by the AP, but they are broadcast by the client.
* **Promiscuous mode:** Sniffing the packets after connecting to an access point.
This is likely what you need to be in if you want to analyze packets (Wireshark, tcpdump, etc.).
In promiscous mode, everything specific to WLAN is hidden from the monitoring tool.
So you only get to see packets that were succesfully decrypted.
In promiscuous mode, you will not see packets until you have associated.
Not all wireless drivers support promiscuous mode.

Important differences between Monitor and Promiscuous modes:

* Promiscuous mode tell the card to _process all frames_,
(i.e. remove 802.11 frame headers) including those not destined for it.
But, monitor mode tells the card to _pass along the frames_ intact (with 802.11 headers)
and not present plain old Ethernet frames.
* In monitor mode, the SSID is not filtered so all packets of all SSID's
from the currently selected channel are captured.
When in promiscuous mode, an 802.11 adapter will only supply packet
for the host of the SSID the adapter has joined.
Although it can receive, at the radio level, packets on other SSID's,
it will not forward them to the host.
* So in order to capture absolutely all traffic from all access points that the adapter can receive,
the adapter must be put into monitor mode.
In this mode, the driver will not be able to sending any traffic
and will only supply received packets to a local storage capture mechanism.
Also this means that the machine will not be able to use that adapter
to resolve addresses to host names using a network protocol such as DNS
or any other such network services.

With some hardware, it is possible to have a network device in monitor mode while in one of the other modes.
This is useful to observe the network whilst using it.
However, not all hardware fully supports this.

Command to put Wireless card in monitor mode on Linux:

```bash
# put wireless adaptor in monitoring mode
sudo ifconfig wlan0 down
sudo iwconfig wlan0 mode monitor
sudo ifconfig wlan0 up
```

## Probe Requests Sniffing
First, you use this as a “presence detection” mechanism.
You can track the presence of people in a specific area.
Being at home, I could detect when my neighbor is back at home and uses his laptop.
Then, the detected SSID’s could help you to learn a lot about your potential victim.
The goal is to “put a face” on the MAC address. You can learn the type of device/ISP they use.
You can learn about the habits (and later to perform social engineering). hotel SSID’s, restaurant SSID’s etc.

* [Show me your SSID’s, I’ll Tell Who You Are!](https://blog.rootshell.be/2012/01/12/show-me-your-ssids-ill-tell-who-you-are/)
* Build movement-aware applications: [HyperTrack](https://www.hypertrack.com/)
* [HyperTrack Documentation](https://docs.hypertrack.com/)



-----------




# WiFi Sniffer
What is a network sniffer?
A network sniffer (also known as network analyzer or packet analyzer)
is a software or hardware that can intercept and log traffic on a network.
The sniffer captures each packet that flows across the network and analyzes its content.

What are the benefits of a network sniffer?
The packet capture done by a network sniffer has several benefits, including:

* Identify and pinpoint unusual traffic in your network
* Collect data for security analysis
* Detect peaks and valleys in the bandwidth usage
* Analyze the performance of your network

# WiFi Sniffer as Sensor for Humans
Based on the principle that a WiFi device is constantly pinging for known Access Points or known devices,
this code captures those packages and prints the MAC address of the origin device.

* [Wi-Fi Sniffer as Sensor for Humans](https://www.youtube.com/watch?v=fmhjtzmLrg8)
* [ESP8266 Sniffer](https://www.hackster.io/kosme/esp8266-sniffer-9e4770)
* [HakByte: Remotely Track Devices over Wi-Fi with the ESP Bug](https://www.youtube.com/watch?v=1uSg9JoDGeU)
* [Remote Wifi Sniffing Station with an ESP8266](https://www.youtube.com/watch?v=_GQMZg_5FPE)
    * [ETHERNET CONTROLLER DISCOVERED IN THE ESP8266](https://hackaday.com/2016/04/01/ethernet-controller-discovered-in-the-esp8266/)
    * [espthernet](https://github.com/cnlohr/espthernet)
    * https://www.amazon.com/HiLetgo-ENC28J60-Ethernet-Network-Arduino/dp/B00WX1NRO0uction to the Kismet packet sniffer](https://www.linux.com/news/introduction-kismet-packet-sniffer
