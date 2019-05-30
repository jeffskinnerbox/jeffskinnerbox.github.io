Status: draft
Title: Home Intercom System for the Minimalists
Date: 2100-01-01 00:00
Category: Electronics
Tags: VoIP, SIP, Intercom
Slug: home-intercom-system-for-the-minimalists
Author: Jeff Irland
Image: DRAFT_stamp.png
Summary: bla bla bla

Search on "android as intercom" and you'll get some good ideas.

# SIP Solutions
[TP-LINK TL-PA2010KIT AV200 Nano Powerline Adapter Starter Kit,](http://www.amazon.com/TP-LINK-TL-PA2010KIT-Powerline-Adapter-Starter/dp/B00AWRUIY4/ref=sr_1_1?ie=UTF8&qid=1401505516&sr=8-1&keywords=TL-PA2010KIT)

[IHU is a Voice over IP (VoIP) application for Linux (using Qt), that creates an audio stream between two computers easily and with the minimal traffic on the network.](http://ihu.sourceforge.net/)

[HOWTO: GSM Base Station with the BeagleBone Black, Debian GNU/Linux and a USRP](http://discourse.criticalengineering.org/t/howto-gsm-base-station-with-the-beaglebone-black-debian-gnu-linux-and-a-usrp/56)

A [search of eBay for "VoIP Intercom"][ebay] gets you device that range from $150 to $500.
[ebay]:http://www.ebay.com/sch/i.html?_trksid=p2057253.m570.l1311.R1.TR1.TRC0.A0.H0.Xvoip+inter&_nkw=voip+intercom&_sacat=0&_from=R40

* [CyberData](http://cyberdata.net/products/voip/digitalanalog/intercomv3/docs.html)

* [Hosting a private VoIP server on a Raspberry Pi](http://www.ezwebgallery.org/hosting-a-private-voip-server-on-a-raspberry-pi/)
* [A VoIP Implementation on an Embedded Platform](http://epublications.marquette.edu/cgi/viewcontent.cgi?article=1038&context=theses_open)
* [VoIP Architecture](http://www.engineersgarage.com/articles/voip-voice-over-ip-internet-protocol?page=2)
* [Br-r-r-r-r-ing…It’s your Arduino](http://www.nerdybynature.com/2010/09/01/br-r-r-r-r-ing-its-your-arduino/)
* [Two Phone Intercom Toy](http://blog.thelifeofkenneth.com/2011/12/two-phone-intercom-toy.html)
* [Fun With Cheap SIP VoIP Hardware](http://blog.thelifeofkenneth.com/2011/05/fun-with-cheap-sip-voip-hardware.html)
* [I Hear U Project (IHU)](http://ihu.sourceforge.net/index.html)
* [How to Build Your Own, More Powerful Version of Google Voice](http://lifehacker.com/how-to-build-your-own-more-powerful-version-of-google-575896480)

# WebRTC Solutions
* [WebRTC is a free, open project that enables web browsers with Real-Time Communications (RTC)](http://www.webrtc.org/home)
* [The True Meaning of the VoiceEnabled Web](http://res.sys-con.com/session/2207/Keith_McFarlane.pdf)
    * [WebRTC](http://en.wikipedia.org/wiki/WebRTC)
* [DIY Baby Monitor](https://antibore.wordpress.com/2016/11/10/diy-baby-monitor/)
* [HackspaceHat part 1: WebRTC, Janus and Gstreamer](https://planb.nicecupoftea.org/2015/07/28/hackspacehat-part-1-webrtc-janus-and-gstreamer/)
* [Building a Raspberry Pi 2 WebRTC camera](https://www.rs-online.com/designspark/building-a-raspberry-pi-2-webrtc-camera)
* [FruitNanny: RaspberryPI based Baby Monitor (uses a Janus WebRTC Gateway)](https://ivadim.github.io/2017-08-21-fruitnanny/)

# Google Voice
* [About Google Voice](https://support.google.com/voice/answer/115061?hl=en&ref_topic=1707989)
* [Obihai OBi200 VoIP Telephone Adapter with Google Voice & SIP](http://www.newegg.com/Product/Product.aspx?Item=N82E16833617008&utm_medium=Email&utm_source=IGNEFL112816&cm_mmc=EMC-IGNEFL112816-_-EMC-112816-Index-_-VoIP-_-33617008-S0K&ignorebbr=1)



I got a simple problem begging for a simple solution.
While in my basement workshop, even when I'm not blasting music ands running noisy power tools,
my wife finds it impossible to get my attention.
I seem to be acoustically isolated from the world.
I tried telling her that this is part of the beauty of having a
basement workshop .... she was not unammused.
I need a home intercom.

I want something simple and inexpensive....A minimalist solution.
I would like to set up a intercom system with three or more two-way speaking devices.
I have some broad design criteria:

* the device needs to operate wirelessly (I don't like pulling wire)
* it needs to be a table top device (don't want to fix it to a wall)
* it must be inexpensive and simple to design (so re-purposing/hacking exiting devices is desirable)
* the device should be small, simple to use, and do its one thing well (you push a button, speak into a microphone, and your voice is broadcast to all the other devices)
* ideally battery power (so I can place it anywhere or even bring it with me)
* ultimately, the intercom should VoIP connect with cell phone (doesn't everything) and support video (why not)

I have a strong preferance for the device to operate using VoIP.
(I must admit that a major motivator for this project is as a learning experience;
an excuse for me learn more about VoIP.
Its the journey, not the destination, that interests me the most.)
I don't appear to be the [first to consider building an inexpensive VoIP based intercom system][21],
but I haven't seen anyone build it yet.

I sense that Home Intercom systems are a thing of the past
(In the age of ubiquitous cell phones, do you need one?)
but I have found some intercom-like products still being offered by
[Linear][15], [Optex][16], [Airphone][17], [NuTone][19], [Digital Acoustics][22], [Legrand][20], and others.
Most are packed with features that I don't need (and don't want to pay for)
and often second as a music speaker stystem.
And they don't come cheap at typical price of about $300 for a master console and a single remote.
While some are wireless, IP networking isn't generally used,
with the exception of large / expensive commercial security systems.
Airphone does offer an IP based solution in its [JKW-IP][18] series,
Digital Acoustics is all IP based,
and [myintercom][26] is a VoIP intercom,
but these appears to be a commercial system scaled down for reidential and still pricy and complex.

As to building an intercom from seperately purchased omponents,
I did come across a press release stating that
[Arcturus Networks launches the industry’s first dedicated VoIP microcontroller solution for intercoms, telephony and IP audio distribution][29].
The press release states development kits are available for $495 ... not very encouraging.
Arcturus does offer several [embedded VoIP boards and modules][30]
but the all appear to be $150 or greate in small quanities.

## Alternatives
Of course there are [wireless intercom systems][27] working within the [ISM bands][28].
So have kindof eliminated the posibility of just buying a VoIP based intercom,
but what about alternative technologies like a cell phone or some type of radio.
As I hinted earlier, a cell phone is a simple solution, if you have it on your person at all times.
I must admit, I generally only carry my cell when out of the house.

Battery operated radios are another alternative, such as,
[General Mobile Radio Service (GMRS)][01], [Multi-Use Radio Service (MURS)][03],
[Family Radio Service (FRS)][02], sometimes called the [new CB Bands][07],
and there is more traditional [Citizen Band (CB)][04] and [Ham][05] radio.
Putting asided CB and Ham, since they are really intended for other uses,
the others are inexpensive radio service designed for the general public use,
providing short-distance two-way communication.
GMRS is licenced (easy to aquire but costs about $85 for 5 years)
but MURS and FRS doesn't require any license to operate.
In fact, the MURS device market has intercom devices
(e.g. those callboxes found on gated communites or long driveways),
but they can cost $80 or more for a single device.
On the other hand, you can get pickup a GMRS or FRS[^A] device as cheap as $25 a pair
(Motorola GMRS FV300 2-Way Radio or Uniden 16-Mile FRS/GMRS 2-Way Radio-GMR1635-2).

[^A]:
    GMRS and FMS radios are typically handheld portable devices,
    about 25 channels, and [share the frequency band near 462 and 467 MHz][06].
    CB radio [operates near 27 MHz (11 meters) and has 40 channels][08].
    MURS is located at [151 and 154 MHz with 5 channels][09].
    The Ham radio bands are many in number and [scattered over the spectrum from 1.8 MHz to 1240 MHz][10].
    Many Ham radios have dual-band capabilities, operating on both the [UHF 70-centimeter][11] (420 to 450 MHz)
    and the [HF 2-meter][12] (144 to 148 MHz) bands.
    In fact, the popular (and inexpensive) [BaoFeng UV-5][13] handheld radios covers the
    70-centimeter, 2-meter, GRMS, FRS, and MURS.

There are some downsides to these devices.
For one thing, your using communications channels that are shared with the general public;
there is no privacy what so ever.
Also channels can get congested with other users,
and while changing channels or frequiency could be a cure,
this is a complexity that I would rather avoid.
And these are full radios, and as such, they have multiple buttons and configurable items,
taking me away for the idea of simplicity.

## Plan of Attack
* On Desktop and Raspberry Pi
    * Research and select one or more SIP clients
    * Establish a SIP account with a provider and setup a three-way conferance bridge
    * Via command line, create a crude intercom capability

## Some Challenges
The simple conferance speaker I selected to use is connected via USB.
It has no [Ethernet Controller][14] and one will need to be provided (somehow) if it is to work over WiFi.

## VoIP
Using VoIP is like using electronic mails:
* You need an address. That's mainly what Ekiga.net is for: giving free SIP-Addresses.
* You need a software to use this address. Any SIP aware software will do, but we recommend our free Ekiga softphone, which has Instant-Messaging, Audio and Video built-in.

## Definitions
### Things
Plain Old Telephone Service (POTS)
:   This is the kind you have in your house. The phone can be built for very cheap and typically communicates with Pulse dialing (retro style rotary dial) or DTMF (key pad).
Public Switched Telephone Network (PSTN)
:   PSTN refers to the international telephone system based on copper wires carrying analog voice data.
    This is in contrast to newer telephone networks base on digital technologies, such as ISDN and FDDI.
    Telephone service carried by the PSTN is often called plain old telephone service (POTS).
Analog Telephone Adapters (ATA)
:   An ATA is a device which acts as a hardware interface between a PSTN analog phone system
    and a digital network or VoIP service.
    An ATA links with the remote VoIP Service Provider’s service using a VoIP Protocol such as SIP or H.323.
    The encoding and decoding of voice signals are done using a voice codec.
    ATAs communicate directly with the VoIP service, therefore there is no need for software,
    and hence no need for a computer
Foreign eXchange Subscriber (FXS)
:   This interface is the port that actually delivers the analog line to the subscriber.
    In other words it is the ‘plug on the wall’ that delivers a dial tone, battery current and ring voltage.
Foreign eXchange Office (FXO)
:   This interface is the port that receives the analog line. It is the plug on the phone or fax machine,
    or the plug(s) on your analog phone system. It delivers an on-hook/off-hook indication (loop closure).
    Since the FXO port is attached to a device, such as a fax or phone, the device is often called the ‘FXO device’.
VoIP Gateway
:   VoIP gateways register on a network as the service provider or as an external PBX system,
    acting as a mediator for all incoming and outgoing data transfers.
FXO Gateway
:   To connect analog phone lines to an IP phone system you need an FXO gateway.
    This allows you to connect the FXS port to the FXO port of the gateway,
    which then translates the analog phone line to a VoIP call.
FXS Gateway
:   An FXS gateway is used to connect one or more lines of a traditional PBX to a VoIP phone system or provider.
    Alternatively, you can use it to connect analog phones to it and re-use your analog phones with a VoIP phone system.
    You need an FXS gateway because you want to connect the FXO ports
    (which normally are connected to the telephone company) to the Internet or a VoIP system.
FXS Adapter (aka ATA)
:   An FXS adapter is used to connect an analog phone or fax machine to a VoIP phone system or to a VoIP provider.
    You need this because you need to connect the FXO port of the phone/fax machine to the adapter.
SIP Address
:   A SIP address is what you get when you register for a SIP account,
    and it acts as a communication handle that people use to contact you.
    A SIP address resembles an email address.
    The structure is like this: `sip:user@domain:port`.
    Some SIP addresses are passed without the `sip` and `port` part since it is understood
    that this part automatically takes its place.
Softphone
:   A softphone is a software program for making telephone calls over the Internet using a general purpose computer,
    rather than using dedicated hardware.
Multimedia Service Platform
:   Multimedia Service Platform is a communications solution for service delivery of
    Voice, Video, Instant Messaging (IM), File Transfer, and Presence based on SIP protocol.
    [![MSP](http://www.ag-projects.com/images/stories/ag_images/msp-big.png "Multimedia Service Platform")](http://www.ag-projects.com/)

### Protocals and Standards
ENUM (E.164 Number to URI Mapping)
:   ENUM is a protocol that provides a translation mechanism for E.164 telephone numbers into IP addressing schemes.
    Via ENUM, you can dial a telephone number and reach a SIP, H.323 or any other Internet Telephony user.
    It is based on standards endorsed by IETF (Internet Engineering Task Force)
    and ITU (International Telecommunication Union).
E.164
:   E.164 is the ITU (International Telecommunication Union) telephone numbering plan.
    It describes how and by whom telephone numbers are assigned.

* Similar Products
    * [Basic 3-Channel Intercom System Set](http://www.gadgetshack.com/three-channel-basic-wired-intercom-system.html)
    * []()
* Inexpensive WiFi Chips
    * [Atmel Announces SmartConnect WiFi Modules](http://hackaday.com/2014/03/01/atmel-announces-smartconnect-wifi-modules/)
    * [A breakout board for a tiny WiFi chip](http://hackaday.com/2013/01/27/a-breakout-board-for-a-tiny-wifi-chip/)
    * [Finally, TI is producing simple, cheap WiFi modules](http://hackaday.com/2013/01/12/finally-ti-is-producing-simple-cheap-wifi-modules/)
    * []()
* Getting Started
    * [How VoIP Works](http://computer.howstuffworks.com/ip-telephony.htm)
    * [SIP Introduction](http://www.iptel.org/sip/intro)
    * [SIP: More Than You Ever Wanted To Know About](http://www.iptel.org/files/sip_tutorial.pdf)
    * []()
    * []()
* HowTo Guides on Build your own VoIP System
    * [VoIP HOWTO: Asterisk, SIP, FreePBX, and geekery](http://axfp.org/voip-howto-asterisk-sip-freepbx-and-geekery/)
    * [Build your own VoIP System – Part 1: The Basics](http://www.sipwise.com/news/technical/byov-services-1/)
    * [Build your own VoIP System – Part 2: An open Skype Replacement](http://www.sipwise.com/news/technical/byov-skype-replacement/)
    * [Build your own VoIP System – Part 3: the sip:provider as an SBC](http://www.sipwise.com/news/technical/byov-system-spce-as-sbc/)
* Simple Home PBX
    * [Asterisk Simple PBX System](http://the-asterisk-book.com/1.6/minimale-telefonanlage.html)
    * [How to Build Your Own Home Phone Server](http://www.maximumpc.com/article/how-tos/how_build_your_own_home_phone_server)
    * [Incredible PBX for RasPBX](http://www.raspberry-asterisk.org/)
    * [The Perfect Stocking Stuffer: Incredible PBX for the Raspberry Pi Gets a Facelift](http://nerdvittles.com/?p=8178)
    * []()
    * []()
* SIP VoIP Client (aka SoftPhone, Video Conferencing, and/or Instant Messenger Application)
    * [SIP Phones](http://www.pernau.at/kd/voip/bookmarks-sip-phones.html)
    * [Linphone](http://www.linphone.org/)
    * [Ekiga](http://www.ekiga.org/)
    * [Jitsi - audio/video and chat communicator](https://jitsi.org/)
    * [SFLphone](http://sflphone.org/)
    * [Blink](http://icanblink.com/)
    * []()
* SIP Proxy / Server
    * [OpenSIPS](http://www.opensips.org/)
    * [Open Source VoIP Software](http://www.voip-info.org/wiki/view/Open+Source+VOIP+Software)
    * [SIP Express Router (SER)](http://www.iptel.org/ser)
    * [Kamailio - an Open Source SIP Server](http://www.kamailio.org/w/)
        * [Run your own Skype-like service in less than one hour](http://kb.asipto.com/kamailio:skype-like-service-in-less-than-one-hour)
    * [GNU SIP Witch](http://www.gnu.org/software/sipwitch/)
    * []()
    * []()
* Command Line SIP VoIP Client
    * [Linphonec and linphonecsh](http://www.linphone.org/eng/documentation/guide/linphonecsh-control.html)
    * [pjsua - command line SIP soft phone](http://www.pjsip.org/pjsua.htm)
    * []()
    * []()
* Free SIP Service
    * [SIP2SIP](www.sip2sip.info/)
        * [Phone Number for Sip2Sip](http://www.flynumber.com/virtual-number/Sip2Sip-ITSP)
        * [AG Project](http://www.ag-projects.com/services-products-211/276?task=view)
    * [IPKall Signup](http://phone.ipkall.com/)
    * [Linphone free SIP service](http://www.linphone.org/eng/linphone/register-a-linphone-account.html)
    * []()
    * []()
* SIP / VoIP Software Library
    * [PJSIP](http://www.pjsip.org)
    * []()
    * []()
* Voice Chat Application for Gaming
    * [TeamSpeak (not open source / not free)](http://www.teamspeak.com/)
    * [Mumble](http://mumble.sourceforge.net/)
    * []()
    * []()
* Intercom Speaker
    * [Kinyo ArtDio True USB VoIP Conference Speaker with Integrated Microphone](http://www.amazon.com/72-SS100-Conference-Speaker-Integrated-Microphone/dp/B00ASHRVFC)
        * [Also see for $9.19](http://www.pokernationusa.com/artduor-true-usb-voip-conference-speaker-with-integrated-microphone.html?source=googleps)
    * [Sedna USB VOIP Speaker Phone Specifications - SE-P41SP](http://www.amazon.co.uk/Powered-Skype-Telephone-Conference-Speaker/dp/B007JIS0A8)
    * [USRobotics USB Internet Speakerphone (USR9610)](http://www.amazon.com/USRobotics-USB-Internet-Speakerphone-USR9610/dp/B000E6IL10/ref=sr_1_fkmr0_1?s=electronics&ie=UTF8&qid=1392151839&sr=1-1-fkmr0&keywords=US+Robotics+USR809610+USB+VoIP+Internet+Speakerphone)
        * [USRobotics USB Internet Speakerphone - Quick Installation Guide](http://support.usr.com/support/9610/9610-files/9610-na-ig.pdf)
    * [mVox USB Speakerphone](http://www.amazon.com/mVox-MV100-USB-Speakerphone/dp/B0007W2E64/ref=pd_sim_sbs_e_1)
    * []()
    * []()
* USB to WiFi Bridge (How can I connect any USB device to my computer wirelessly?)
    * [TP-Link TL-WN822N 300 Mbps Wireless N USB Adapter](http://www.amazon.com/dp/B00416Q5KI/?tag=googhydr-20&hvadid=34600705728&hvpos=1o1&hvexid=&hvnetw=g&hvrand=25551089692659868&hvpone=&hvptwo=&hvqmt=b&hvdev=t&ref=pd_sl_7pmo06p6a5_b)
    * [OpenWRT on TP-Link TL-WR703N](http://wiki.openwrt.org/toh/tp-link/tl-wr703n)
    * [Edimax EW-7811Un 150 Mbps Wireless 11n Nano Size USB Adapter](http://www.amazon.com/Edimax-EW-7811Un-Wireless-Adapter-Wizard/dp/B003MTTJOY/ref=pd_bxgy_pc_text_y)
    * [Wireless USB Hub and Adapter Kit](http://www.iogear.com/product/GUWH204KIT/?ClickID=c7nlv4zxefsezzi7f7qz7f4k74aiianllzxz)
    * []()
* Books, Tutorials, Specifications, etc.
    * [Multimedia Service Platform](http://www.ag-projects.com/)
    * [VoIP Hacks: Tips & Tools for Internet Telephony](http://www.amazon.com/VoIP-Hacks-Tools-Internet-Telephony-ebook/dp/B002SR2QJG/ref=sr_1_1?ie=UTF8&qid=1392153828&sr=8-1&keywords=VoIP+Hacks%3A+Tips+%26+Tools+for+Internet+Telephony)
    * [Detail Flow Chart for SIP Call](http://www.in2eps.com/fo-sip/tk-fo-sip-ex3261.html)
    * [Description of Voice Over IP Protocols](http://www.protocols.com/pbook/VoIPFamily.htm)
    * []()
    * []()



[01]:http://en.wikipedia.org/wiki/General_Mobile_Radio_Service
[02]:http://en.wikipedia.org/wiki/Family_Radio_Service
[03]:http://en.wikipedia.org/wiki/Multi-Use_Radio_Service
[04]:http://en.wikipedia.org/wiki/Citizens%27_band_radio
[05]:http://en.wikipedia.org/wiki/Ham_radio
[06]:http://ba-marc.org/writeups/gmrs-frs-freq.htm
[07]:http://www.captainswoop.com/radio/uhf.html
[08]:http://www.captainswoop.com/radio/11m.html
[09]:http://home.provide.net/~prsg/murs_faq.htm#Q4
[10]:http://www.arrl.org/graphical-frequency-allocations
[11]:http://en.wikipedia.org/wiki/70-centimeter_band
[12]:http://en.wikipedia.org/wiki/2-meter_band
[13]:http://www.amazon.com/BaoFeng-UV-5R-Dual-Band-136-174-400-480/dp/B0097252UK
[14]:http://en.wikipedia.org/wiki/Network_interface_controller
[15]:http://www.linearcorp.com/product_detail.php?productId=1518
[16]:http://www.optexamerica.com/security-products/ivision
[17]:http://www.aiphone.net/product/single/
[18]:http://www.aiphone.net/product/single/jkw/image/JKW_IP_catalog.pdf
[19]:http://www.nutone.com/products/product-line/intercoms
[20]:http://www.legrand.us/intercoms-and-door-entry.aspx#.UwDkKd_0rv5
[21]:http://ask-beta.slashdot.org/story/02/11/18/0532233/turning-your-pc-into-a-lan-based-intercom
[22]:http://www.digac.com/ip7.htm
[23]:http://arashafiei.wordpress.com/2012/10/12/capture-video-and-audio-from-webcam-using-ffmpeg/
[24]:http://libav.org/avconv.html
[25]:http://rpm.pbone.net/index.php3/stat/45/idpl/17118410/numer/1/nazwa/avconv
[26]:http://www.myintercom.de/en/funktionsweise
[27]:http://www.gadgetshack.com/wiin.html
[28]:http://en.wikipedia.org/wiki/ISM_band
[29]:http://www.arcturusnetworks.com/2013/11/13/arcturus-launches-industry%E2%80%99s-first-dedicated-voip-microcontroller-solution-for-intercoms-telephony-and-ip-audio-distribution/
[30]:http://www.arcturusnetworks.com/products/
[31]:
[32]:
[33]:
[34]:
[35]:
[36]:
[37]:
[38]:
