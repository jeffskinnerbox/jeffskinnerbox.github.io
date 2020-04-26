
################################################################################

I want to building a radio listening device that will pickup WiFi & BLE devices,
and (potentially using a network of these devices)
estimate the location of where these device a physically located.
This can be use to:

* to get an estimate of the amount people traffic in a particular area as in
[Monitor Foot Traffic Using Radio](https://hackaday.com/2018/04/06/monitor-foot-traffic-using-radio/)
* xxx
* I'm trying to do what most every advertising platform attempts to do but provides that infromaton to you.
See [Skyhook Wireless Developer Site](http://www.skyhookwireless.com/developers)

----

# Kali
Kali Linux is a Debian-derived Linux distribution designed for digital forensics and penetration testing.

* [Kali Linux 2017.3 hands-on: The best alternative to Raspbian for your Raspberry Pi](https://www.zdnet.com/article/kali-linux-2017-3-hands-on-the-best-alternative-to-raspbian-for-raspberry-pi/)
* [Wifi Autoscaning w/ Raspberry Pi and Kali Linux](http://cdf123x.blogspot.com/2013/04/wifi-autoscaning-w-raspberry-pi-and.html)
* [Kali Linux Tools Listing](https://tools.kali.org/tools-listing)
* [An introduction to the Kismet packet sniffer](https://www.linux.com/news/introduction-kismet-packet-sniffer)
* [Kali Linux Tutorial](https://www.tutorialspoint.com/kali_linux/index.htm)

----

# Presence and Identity

## Sensing WiFi and BLE Devices
* [Tracking people via WiFi (even when not connected)](https://www.crc.id.au/tracking-people-via-wifi-even-when-not-connected/)
* [Presence detection using phone’s WiFi and Node-RED](https://harizanov.com/2014/03/presence-detection-using-phones-wifi-and-node-red/)
* [Using Raspberry Pi Access Point to Track Devices](https://www.yetanotherblog.com/2014/03/25/using-raspberry-pi-access-point-to-track-devices/)
* [Tracking Devices via Raspberry Pi (Part Two)](https://www.yetanotherblog.com/2014/03/25/tracking-devices-via-raspberry-pi-part-two/)
* [Real-Time Rogue Wireless Access Point Detection with the Raspberry Pi](http://www.linuxjournal.com/content/real-time-rogue-wireless-access-point-detection-raspberry-pi?page=0,0)
* [Portable WiFi Analyzer](https://www.instructables.com/id/Portable-WiFi-Analyzer/)

## Using ESP8266
* [Monitor Foot Traffic Using Radio](https://hackaday.com/2018/04/06/monitor-foot-traffic-using-radio/)
* [ESP32-Paxcounter is a proof-of-concept device for metering passenger flows in realtime](https://hackaday.com/2018/04/06/monitor-foot-traffic-using-radio/)
* [Quickie WiFi Scanner](http://hackaday.com/2016/02/24/quickie-wifi-scanner/)
* [WiFi Scanner -Know the WiFi Signal around you](https://community.seeedstudio.com/WiFi-Scanner--Know-the-WiFi-Signal-around-you--p-220.html)
* [esp8266locationtracker - Opportunistically track and transmit the location of a ESP8266](https://github.com/dancudds/esp8266locationtracker)

----

# Location

## Geoloaction, Geocodes, Maps
* [Unwired Lab Location API](https://unwiredlabs.com/)
* [Geocoding](https://unwiredlabs.com/docs/#geocoding) is the process of converting addresses (like a street address) into geographic coordinates (like latitude and longitude)
* [Reverse geocoding](https://unwiredlabs.com/docs/#reverse-geocoding) is the process of converting geographic coordinates into a human-readable address.
* [A Plan To Replace Geographic Coordinates on Earth With Unique Strings of Three Words](https://www.smithsonianmag.com/science-nature/plan-replace-geographic-coordinates-earth-unique-strings-three-words-180949946/)
* [3 Word Address](http://what3words.com/)
* [Plus Code](https://plus.codes/)

## Location Platforms
Use Skyhook Precision Location on a Raspberry Pi device running Raspbian Linux.
The device will continuously record its location, even when disconnected from the internet or not.

* [Skyhook Wireless Developer Site](http://www.skyhookwireless.com/developers)

## Geolocation Without GPS Module
* [Location using ESP8266 | Geolocation Without GPS Module](https://electronicsforu.com/electronics-projects/gps-geolocation-using-esp8266-projects)
* A consolidated location and information of wireless networks world-wide to a central database: [Wireless Geographic Logging Engine (WiGLE)](https://en.wikipedia.org/wiki/WiGLE)
    * [WiGLE.net](https://wigle.net/)

# WiFi and Cell ID Positioning
Wi-Fi “sniffing” is a great way to do rough location processing.
A sensor reads the MAC ID and signal strength of WiFi Access Points nearby,
sends that data to the cloud.
A WiFi MAC ID database,
like [Google](https://developers.google.com/maps/documentation/geolocation/intro#wifi_access_point_object),
[Wigle](https://wigle.net/),
[SkyHook](http://www.skyhookwireless.com/submit-access-point),
or a cell site ID with [Polet](https://www.polte.com/),
[OpenCellid](https://opencellid.org/),
[Mozilla Location Service (MLS)](https://location.services.mozilla.com/)
calculates location.

Traditionally, getting WiFi information required a fairly expensive Wi-Fi module,
Semtech has released the LR1110.
This chip includes a GPS processor, WiFi scanner, and a Lora radio

* [Combain](https://combain.com/)
* [How Google--and everyone else--gets Wi-Fi location data](http://www.zdnet.com/article/how-google-and-everyone-else-gets-wi-fi-location-data/)
* [OpenCellid](https://opencellid.org/) - The world's largest Open Database of Cell Towers from [Unwired Labs](http://unwiredlabs.com/)
* [Location using ESP8266 | Geolocation Without GPS Module](https://electronicsforu.com/electronics-projects/gps-geolocation-using-esp8266-projects)
* A consolidated location and information of wireless networks world-wide to a central database: [Wireless Geographic Logging Engine (WiGLE)](https://en.wikipedia.org/wiki/WiGLE)

## Indoor Location
* [WiFinder](https://github.com/mpescimoro/wi-finder)
* [whereami](https://github.com/kootenpv/whereami)
    * [wherearehue](https://github.com/DeastinY/wherearehue)
* multiple object tracker projects on github
    * https://github.com/search?q=topic%3Agps-tracker&type=Repositories
    * https://github.com/search?q=topic%3Awifi-fingerprints&type=Repositories
    * https://github.com/search?q=topic%3Alocation-services&type=Repositories

### Framework for Internal Navigation and Discovery (FIND)
* [Framework for Internal Navigation and Discovery (FIND)](https://www.internalpositioning.com/)
* [FIND FAQ](https://www.internalpositioning.com/faq/)
* [Offical version writen in Go - FIND GitHub](https://github.com/schollz/find3)
* [Python version - FIND GitHub](https://github.com/kootenpv/find)
* [find-lf - extension of FIND, the Framework for Internal Navigation and Discovery](https://github.com/schollz/find-lf)

----

# Gathering Atributes

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

----

# Telemetry Over Opportunistic WiFi Links

## Open / Captive Portal Hotspots
* [TOWL - Telemetry over Opportunistic WiFi Links](http://www.phreakmonkey.com/2016/08/towl-telemetry-over-opportunistic-wifi.html)

## Using Management Frames
* [Smuggler - An interactive 802.11 wireless shell without the need for authentication or association](https://www.trustwave.com/Resources/SpiderLabs-Blog/Smuggler---An-interactive-802-11-wireless-shell-without-the-need-for-authentication-or-association/)
* [Chura-Liya](https://github.com/interference-security/Chura-Liya)
* [Beacon Stuffing Beacon Frames and Injection](https://www.youtube.com/watch?v=SPY3W_Kmq8U)

## DNS Tunneling
* [How DNS Tunneling Works](http://inside-out.xyz/technology/how-dns-tunneling-works.html)
* [DNS Tunneling: Getting The Data Out Over Other Peoples’ WiFi](http://hackaday.com/2016/08/07/getting-the-data-out-over-other-peoples-wifi/)
* [hy big ISPs aren’t happy about Google’s plans for encrypted DNS](https://arstechnica.com/tech-policy/2019/09/isps-worry-a-new-chrome-feature-will-stop-them-from-spying-on-you/)
* [Nameserver Transfer Protocol (NSTX)](http://thomer.com/howtos/nstx.html)
* [iodine](http://code.kryo.se/iodine/)
* [dnscat2 – DNS Tunnel Tool](http://www.darknet.org.uk/2016/01/dnscat2-dns-tunnel-tool/)
* [Tunneling Data and Commands Over DNS to Bypass Firewalls](https://zeltser.com/c2-dns-tunneling/)
* [PowerShell DNS Command & Control with dnscat2-powershell](http://www.blackhillsinfosec.com/?p=5578)

### Domain Name Server (DNS)
* [Introduction to the Domain Name System (DNS)](https://opensource.com/article/17/4/introduction-domain-name-system-dns)
* [Build your own DNS name server on Linux](https://opensource.com/article/17/4/build-your-own-name-server)
* [dnsd: DNS encoder, decoder, and server](https://github.com/ansuz/modern-dnsd)
* [DNS Is Still the Achilles Heel of the Internet](https://www.darkreading.com/partner-perspectives/f5/dns-is-still-the-achilles-heel-of-the-internet/a/d-id/1329019?elq_mid=78743&elq_cid=23179140&_mc=NL_NWC_EDT_NWC_converations_20170606&cid=NL_NWC_EDT_NWC_converations_20170606&elqTrackId=3d7fdc6841d24f4199ac352d2062abca&elq=25cb098a61134c4e8b49e622076230d1&elqaid=78743&elqat=1&elqCampaignId=26848)

# Capturing Cellphone IMSI
An international mobile subscriber identity (IMSI) is a unique number, usually fifteen digits, associated with Global System for Mobile Communications (GSM) and Universal Mobile Telecommunications System (UMTS) network mobile phone users. The IMSI is a unique number identifying a GSM subscriber.

* [You Can Easily Get Into Anybody’s Smartphone with this Tool](https://www.techtimes.com/articles/246754/20200103/you-can-easily-get-into-anybody-s-smartphone-with-this-tool.htm)
* [How to make a simple $7 IMSI Catcher](https://www.youtube.com/watch?v=UjwgNd_as30)

