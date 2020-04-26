################################################################################
* [3D-printed NAS](https://chapelierfou.org/blog/a-small-3d-printed-nas.html)
* [Keeping A 3D Printed NAS Updated With The Times](https://hackaday.com/2020/01/26/keeping-a-3d-printed-nas-updated-with-the-times/)
* [How to build your own Raspberry Pi NAS](https://www.techradar.com/how-to/computing/how-to-build-your-own-raspberry-pi-nas-1315968)
* [Create a hardened Raspberry Pi NAS](https://blog.alexellis.io/hardened-raspberry-pi-nas/)
* [OpenMediaVault](https://www.openmediavault.org/)
* [FreeNAS vs OpenMediaVault](http://www.freenas.org/freenas-vs-openmediavault/)
* [Video: Raspberry Pi 3 NAS 4TB - DIY Step by Step](https://www.youtube.com/watch?v=SUbaJ-Tjg5s)
* [Automating backups on a Raspberry Pi NAS](https://opensource.com/article/18/8/automate-backups-raspberry-pi)
* [How-To How to Turn a Raspberry Pi Into a NAS for Whole-Home File Sharing](https://www.pcmag.com/news/372164/how-to-turn-a-raspberry-pi-into-a-nas-for-whole-home-file-sh)
* [Sabrent USB 3.0 to SSD / 2.5-Inch SATA Hard Drive Adapter](https://www.amazon.com/Sabrent-2-5-Inch-Adapter-Optimized-EC-SSHD/dp/B011M8YACM)
* [PiNAS dual drive Raspberry Pi NAS](https://www.geeky-gadgets.com/raspberry-pi-nas-17-02-2020/)


* [Mozilla adds a voice assistant to its Things Gateway](https://www.gearbrain.com/mozilla-things-gateway-smart-assistant-2591942459.html)
* [Mozilla launches home IoT platform designed for Raspberry Pi](https://futurefive.co.nz/story/mozilla-launches-home-iot-platform-designed-for-raspberry-pi)
* [Mozilla WebThings Raspberry Pi home IoT platform launched](https://www.geeky-gadgets.com/mozilla-webthings-30-04-2019/)
################################################################################



# Internet of Things (IoT)
Many IoT devices today use proprietary vertical technology stacks,
built around a cloud-based central point of control.
Points of integration between these stacks are done per-vendor.
There are efforts to create standards,
but the landscape is extremely complex and there’s still not yet a single dominant model or market leader.

![iot-stack](https://2r4s9p1yi1fa2jd7j43zph8r-wpengine.netdna-ssl.com/files/2017/06/iot_vertical_stacks.png)

## IoT Integration Pattern
* **Direct Integration Pattern -**
The simplest pattern is the direct integration pattern where a device exposes a API directly to the Internet.
This is useful for relatively high powered devices which can support TCP/IP and HTTP
and can be directly connected to the Internet.
This pattern can be tricky for devices on a sub-network (e.g. home or corporate private network)
which may need to use NAT or TCP tunneling in order to traverse a firewall.
* **Gateway Integration Pattern -**
The gateway integration pattern is useful for resource-constrained devices
which can’t run an HTTP server themselves and so use a gateway to bridge them to the web.
This pattern is particularly useful for devices which have limited power sensor or PAN
network technologies (e.g. BLE, ZigBee)
that don’t directly connect to the Internet (e.g. a battery powered door sensor).
This gateway can also be used to bridge all kinds of existing IoT devices to the web (e.g. home WiFi router).
* **Cloud Integration Pattern -**
In the cloud integration pattern the API is exposed by a cloud server
which acts as a gateway remotely and the device uses some other protocol to communicate
with the server on the back end.
This pattern is particularly useful for a large number of devices over
a wide geographic area which need to be centrally coordinated (e.g. LinkLabs Tracker).

![integration-patterns](https://2r4s9p1yi1fa2jd7j43zph8r-wpengine.netdna-ssl.com/files/2017/06/wot_integration_patterns.png)

# The Web of Things
The Internet and the World Wide Web (WWW) are built on open standards which are decentralized by design,
allowing anyone to connect to the Internet without the need for a central point of control.
The “Internet of Things” (IoT) is a term to describe how physical objects are being connected
to the Internet so that they can be discovered, monitored, controlled or interacted with.

Using the Internet of Things today is a lot like sharing information on the Internet
before the World Wide Web existed.
Back then there were competing hypertext systems and proprietary GUIs,
but the Internet lacked a unifying application layer protocol for sharing and linking information.
The “Web of Things” (WoT) is an effort to take the lessons learned from the
World Wide Web and apply them to IoT.
It’s about creating a decentralized Internet of Things by giving Things URLs
on the web to make them linkable and discoverable,
and defining a standard data model and APIs to make them interoperable.

The Web of Things is not just another vertical IoT technology stack
but is intended as a unifying horizontal application layer to bridge together multiple underlying IoT protocols.
Rather than start from scratch, the Web of Things is built on existing,
proven web standards like REST, HTTP, JSON, WebSockets and TLS (Transport Layer Security).
But the Web of Things will also require new web standards.
In particular, there might be a need for:

* Web Thing Description format to describe things
* REST style Web Thing API to interact with them
* new generation of HTTP better optimised for IoT use cases and use by resource constrained devices.

Mozilla, the [Web of Things community][02]
and related standardization efforts at the [IETF][01], [W3C][03], [OCF][04] and [OGC][05]
has been working a Web of Things (WoT) framework of software and services
that attempts to bridge the communication gap between connected devices.
Devices are provided with web URLs, a data model, and API.
The intent is to provide a more decentralized Internet of Things that is secure, open, and interoperable.

The access layer in the WoT is built around several core design patterns:

1. All things should be exposing their services through a RESTful API (either directly or through gateway).
REST is an architectural style at the root of the programmable Web thanks to its implementation in HTTP 1.1.
As a consequence, if things offer RESTful APIs over HTTP,
they get a URL and become seamlessly integrated to the World Wide Web and its tools such as browsers,
hyperlinked HTML pages and Javascript applications.
2. The request-response nature of HTTP is often cited as one of the limitations for IoT use-cases
as it does not match the event-driven nature of applications that are common in the Wireless Sensor Networks.
To overcome this shortcoming, while keeping a focus on fostering integration with the Web,
use of HTML5 WebSockets, either natively or through the use of translation brokers
(e.g., translating from MQTT or CoAP to WebSockets).
This complements the REST API of things with a publish subscribe mechanism
that is largely integrated with the Web eco-system.
3. Some things can connect directly to the Internet (e.g., using Ethernet, WiFi or LTE),
but in other cases (for example when devices are battery-powered)
devices can access the Internet through Smart Gateways.
Smart Gateway are protocol translation gateways at the edge of the network.

So what's is the difference between IoT and WoT?
IoT is the hardware layer to connect everyday items to the Internet.
WoT is the software layer to connect everyday items to the Internet.
WoT is like what the World Wide Web was to the Internet.

![wot-stack](https://2r4s9p1yi1fa2jd7j43zph8r-wpengine.netdna-ssl.com/files/2017/06/wot_horizontal_layers.png)

# Project Things by Mozilla
Companies like Apple, Google, Amazon and Samsung have all been working hard
to create their own standard to control all the connected devices around your home.
[Mozilla wants to create an open standard][08] with the W3C around the Web of Things.
The idea is that device makers and service providers should use the same standard.
The specifications rely on JSON, and a REST and WebSockets API.
Those are standard data and API models on the web, and they should work perfectly fine for connected devices.
Eventually, manufacturers could leverage this work to create their own gateways.
Maybe Netgear could embed a Web of Things gateway into their next router.
Developers could also create bridges between the HomeKit API
or Amazon’s Smart Home Skill API so that all devices work with your Amazon Echo,
Google Home or iPhone without too much effort.
Web of Things could become the common language between those proprietary APIs.

Standard web apps could interface to control your connected devices.
For instance, you can use your voice to turn on the lights,
create IFTTT-style rules to automate your house, add a floor-plan to lay out your devices and more.
Mozilla has designed an add-on system so that you can add support for new devices
and protocols by installing plugins.
All this would run on your open source gateway.
Google or Amazon can’t see when you turn on the light using your voice.

The Emerging Technologies team at Mozilla are working on "[Project Things][09]"
three components in the IoT integration pattern:
**Things Cloud**, **Things Gateway**, and a **Things Framework** for the things themselves.
So far, the Mozilla team has focused on the Things Gateway and the Things Framework.

An additional goal is to build an IoT framework for an open source implementation
of a Web of Things API which anyone is free to implement themselves using
the programming language and operating system of their choice.
To this end, Mozilla has started working on a
[draft Web Thing API specification][07] to eventually propose for standardization.
This includes a simple but extensible Web Thing Description format with a default JSON encoding,
REST + WebSockets Web Thing API, and [features][10] like rules engines, mock devices,
device protocal extentions, etc.

## Mozilla’s Things Gateway
Mozilla have made available a [software to build a Things Gateway][06] using a Raspberry Pi.
Its an early prototype so that people can get their hands on the source code
(JavaScript with a NodeJS web server)
to build their own Web of Things gateway and contribute to the project from an early stage.
Things Gateway features include:

* rules engine for setting _if this, then that_ style rules for how things interact
* floorplan view to lay out devices on a map of your home
* experimental voice control and support for many new types of “things”
* add-ons system for adding support for new protocols and devices
* authorise third party applications to access your gateway

Some terminology:

**Add-on**
:   An Add-on is a collection of code that the Gateway runs to gain a new features, usually a new adapter.
    This is loosely modeled after the add-on system in Firefox where each add-on
    adds to the functionality of your Gateway.

**Adapter**
:   An Adapter is an object that manages communication with a device or set of devices.
    This could be very granular, such as one adapter object communicating with one GPIO pin,
    or it could be much more broad, such as one adapter communicating with any number of devices over WiFi.
    The Mozilla Thing Gatewaycomes with the Zigbee and Z-Wave adapter add-ons installed by default.

**Device**
:   A Device is just that, a hardware device, such as a smart plug, light bulb, or temperature sensor.

**Property**
:   A Property is an individual property of a device, such as its on/off state, its energy usage, or its color.

## Installing Things Gateway
To install the Mozilla Things Gateway,
I basically followed the instruction on its [GitHub README.md file][18],
but there will be gaps and challeges.
The instructions below should help avoid some problems.

Key source materials I used are:

* [GitHub: Things Gateway by Mozilla README.md File](https://github.com/mozilla-iot/gateway/blob/master/README.md)
* [How to build your own private smart home with a Raspberry Pi and Mozilla’s Things Gateway](https://hacks.mozilla.org/2018/02/how-to-build-your-own-private-smart-home-with-a-raspberry-pi-and-mozillas-things-gateway/)
* [Creating an Add-on for the Project Things Gateway](https://hacks.mozilla.org/2018/02/creating-an-add-on-for-the-project-things-gateway/)
* [Mozilla IoT Wiki](https://github.com/mozilla-iot/wiki/wiki)

### Step 1: Install Node.js and Other Dependencies - DONE
Mozilla's Things Gateway uses Git/GitHub and is built with Node.js
and the versioning of Node should be managed via `nvm`.
Use `nvm` to install Long Term Support (LTS) version of node
and set it as the default version

```bash
# install node version manager - nvm
curl -o- https://raw.githubusercontent.com/creationix/nvm/v0.33.8/install.sh | bash

# install a LTS version of node and set the default version
nvm install --lts
nvm use --lts
nvm alias default lts/*
```

Mozilla recommends using [`yarn`][11] for Node.js package management.
They claim `yarn` is preferred but `npm install` will also work.
`yarn` was [developed by Facebook as a better alternitive][12] to `npm install`.
(check [here][13] and [here][14] for the pros & cons).
To [install `yarn`][15], do the following:

```bash
# configure your linux package manager with link to yarn repository
curl -sS https://dl.yarnpkg.com/debian/pubkey.gpg | sudo apt-key add -
echo "deb https://dl.yarnpkg.com/debian/ stable main" | sudo tee /etc/apt/sources.list.d/yarn.list

# install yarn (flag to stop node vs node.js confusion)
sudo apt-get update && sudo apt-get install --no-install-recommends yarn
```

The gateway can support Zwave, and therefore,
you need to install the Open-Zwave library on your Raspberry Pi
(see [here][16] and [here][17] for instructions):

```bash
sudo apt-get install -y libusb-1.0-0-dev libudev-dev

# go to directory to download libraries and then install
cd ~/tmp
wget "https://github.com/ekarak/openzwave-debs-raspbian/raw/master/v1.4.79/openzwave_1.4.79.gfaea7dd_armhf.deb"
wget "https://github.com/ekarak/openzwave-debs-raspbian/raw/master/v1.4.79/libopenzwave1.3_1.4.79.gfaea7dd_armhf.deb"
wget "https://github.com/ekarak/openzwave-debs-raspbian/raw/master/v1.4.79/libopenzwave1.3-dev_1.4.79.gfaea7dd_armhf.deb"
sudo dpkg -i *openzwave*.deb
```

>**NOTE:** [Mozilla IoT Wiki][21] recommends you download and build the source yourself.
Also see the utility `/home/pi/src/gateway/tools/compile-openzwave.sh`.

### Step 2: Download and Build Gateway - DONE
Now lets install the and build the Mozilla Things Gateway:

```bash
# clone the github repository
cd ~/src
git clone https://github.com/mozilla-iot/gateway.git

# enter gatway directory and build the application
cd ~/src/gateway
yarn
```

### Step 3: Add SSL Certificate - DONE
If you don't plan on using Mozilla's provided tunneling service to set up a `*.mozilla-iot.org domain`,
you can use your own SSL certificate.
The HTTPS server looks for `privatekey.pem` and `certificate.pem`.
You can generate a self-signed certificate by following the steps below:

```bash
# create a ssl certificate in the gateway directory
cd ~/src/gateway
./tools/make-self-signed-cert.sh
```

This will allow you to access the gateway from your LAN but not the Internet.
To access the gateway somewhere other than your LAN .............
See https://hacks.mozilla.org/2018/02/how-to-build-your-own-private-smart-home-with-a-raspberry-pi-and-mozillas-things-gateway/
and https://letsencrypt.org/
Could there be some utitilities in /home/pi/src/gateway/tools

### Step X: Starting Things Gateway

```bash
# start the things gateway
$ npm start

> things-gateway@0.3.0 start /home/pi/src/gateway
> webpack && node build/gateway.js


[at-loader] Using typescript@2.4.1 from typescript and "tsconfig.json" from /home/pi/src/gateway/tsconfig.json.


[at-loader] Checking started in a separate process...

[at-loader] Ok, 1.801 sec.
Hash: 36db8bcdddbdc51dc66d
Version: webpack 3.0.0
Time: 15230ms
                               Asset       Size  Chunks                    Chunk Names
addons/plugin/addon-manager-proxy.js    9.04 kB          [emitted]
                          gateway.js     252 kB       0  [emitted]  [big]  main
     ../static/js/lib/stm_web.min.js     100 kB          [emitted]
                   addons/adapter.js    2.67 kB          [emitted]
           addons/addon-constants.js    3.21 kB          [emitted]
                  addons/deferred.js  847 bytes          [emitted]
                    addons/device.js    3.11 kB          [emitted]
      addons/plugin/adapter-proxy.js    4.39 kB          [emitted]
                      gateway.js.map     328 kB       0  [emitted]         main
       addons/plugin/device-proxy.js    1.58 kB          [emitted]
                addons/plugin/ipc.js     4.1 kB          [emitted]
      addons/plugin/plugin-client.js    2.82 kB          [emitted]
      addons/plugin/plugin-server.js     3.1 kB          [emitted]
             addons/plugin/plugin.js     9.2 kB          [emitted]
     addons/plugin/property-proxy.js    2.53 kB          [emitted]
                  addons/property.js    3.23 kB          [emitted]
                     addons/utils.js    2.62 kB          [emitted]
   [0] ./src/constants.js 3.21 kB {0} [built]
   [6] ./src/addon-manager.js 28.4 kB {0} [built]
   [8] ./src/models/settings.js 1.74 kB {0} [built]
   [9] ./src/db.js 14.3 kB {0} [built]
  [11] ./src/models/jsonwebtoken.js 3.85 kB {0} [built]
  [24] ./src/app-instance.js 1.21 kB {0} [built]
  [29] ./src/controllers/oauth_controller.ts 6.87 kB {0} [built]
  [33] ./src/ssltunnel.js 4.58 kB {0} [built]
  [37] ./src/controllers/commands_controller.js 5.89 kB {0} [built]
  [38] ./src/rules-engine/index.js 2.63 kB {0} [built]
  [42] ./src/app.js 8.98 kB {0} [built]
  [70] ./src/router.js 4 kB {0} [built]
  [93] ./src/controllers/uploads_controller.js 1.99 kB {0} [built]
  [94] ./src/models/intentparser.js 2.56 kB {0} [built]
 [112] ./src/log-timestamps.js 3.31 kB {0} [built]
    + 99 hidden modules

WARNING in ./src/addon-manager.js
33:9-16 Critical dependency: require function is used in a way in which dependencies cannot be statically extracted
2018-02-17 21:12:04.984 Opening database: ./db.sqlite3
2018-02-17 21:12:05.644 Listening on port 4443
2018-02-17 21:12:05.690 Redirector listening on port 8080
```

### Step X: First Login to the Gateway
If your using a browser running on the Raspberry Pi,
enter `https://localhost:4443`, but generally,
use the host name or IP address (e.g. `https://SynSen:4443`) since
you'll be loging in from another computer.
**But** the first time you do this, your access will be blocked!
This is because you haven't installed the self-signed certificate created on the Raspberry Pi
(On Chrome, this blockage can be overridden but its best to [install the certificate][19]).

In the following text,
`certificate.pem` is the certificate file originating from the Raspberry Pi / Mozilla Things Gateway.
To install the certificate for use by you Linux operating system,
your fist move the certificate to it from the Raspberry Pi:

```bash
# copy the certificate to your local system
cd ~/Downloads
scp pi@SynSen:/home/pi/src/gateway/ssl/certificate.pem synsen-things-gateway.pem

# copy certificate to its destination
sudo mkdir /usr/local/share/ca-certificates/extra
sudo cp synsen-things-gateway.pem /usr/local/share/ca-certificates/extra/synsen-things-gateway.crt

# update your certifications to make it active
sudo update-ca-certificates
```

After these steps the new certification is known by system utilities like `curl` and `get`.
Unfortunately, this does not affect most web browsers like Mozilla Firefox or Google Chrome.
To [install the certificate so your Chrome browser can use it][20] in the future,
do the following:

```bash
# install certutil and other tools
sudo apt-get install libnss3-tools

# list all your current certificates used by chrome
certutil -d sql:$HOME/.pki/nssdb -L

# import the certificate for chrome
cd ~/Downloads
certutil -d sql:$HOME/.pki/nssdb -A -t "P,," -n 'SynSen Mazilla Things Gateway Certificate' -i synsen-things-gateway.pem

# list all your certificates and make sure its added
certutil -d sql:$HOME/.pki/nssdb -L
```

By the way, you need to delete a certificate do the following:

```bash
# remove certificates used by chrome
certutil -D -d sql:$HOME/.pki/nssdb -n <name of certificate>

# see a list of all your certificates and their names
certutil -d sql$HOME/.pki/nssdb -L
```

### Step X:
### Step X:
### Step X: Creating an Add-on for the Project Things Gateway
[Creating an Add-on for the Project Things Gateway](https://hacks.mozilla.org/2018/02/creating-an-add-on-for-the-project-things-gateway/)

### Step X: Mozilla Thing Gateway’s Web Interface
The Mozilla Thing Gateway’s web interface is a [Progressive Web App](https://developers.google.com/web/fundamentals/codelabs/your-first-pwapp/)

there is a Virtual Things add-on which allows you to experiment with different types of web things without needing to buy any real hardware. Click the “+” button at the bottom right of the screen to see a list of available add-ons.



* [Mozilla Things Gateway Supported Hardware](https://github.com/mozilla-iot/wiki/wiki/Supported-Hardware)
* [Mozilla IoT GitHub](https://github.com/mozilla-iot)
* [An introduction to the Web of Things Framework](https://www.w3.org/2015/05/wot-framework.pdf)
* [JSON for Linking Data](https://json-ld.org/)
* [Building the Web of Things](https://hacks.mozilla.org/2017/06/building-the-web-of-things/)

* [Web of Things (WoT) Architecture](https://w3c.github.io/wot-architecture/)
* [Web of Things - Use Cases and Requirements for the Web of Things](https://w3c.github.io/wot/wot-ucr.html)
* [Web of Things - Technology Landscape](https://w3c.github.io/wot/landscape.html)



[01]:https://www.ietf.org/
[02]:https://webofthings.org/
[03]:https://www.w3.org/WoT/
[04]:https://openconnectivity.org/developer/specifications
[05]:https://github.com/opengeospatial/sensorthings
[06]:https://iot.mozilla.org/gateway/
[07]:https://mozilla-iot.github.io/wot/
[08]:https://techcrunch.com/2018/02/06/mozilla-announces-an-open-framework-for-the-internet-of-things/
[09]:https://iot.mozilla.org/
[10]:https://blog.mozilla.org/blog/2018/02/06/announcing-project-things-open-framework-connecting-devices-web/
[11]:https://yarnpkg.com/en/
[12]:https://code.facebook.com/posts/1840075619545360
[13]:https://www.keycdn.com/blog/npm-vs-yarn/
[14]:https://blog.risingstack.com/yarn-vs-npm-node-js-package-managers/
[15]:https://yarnpkg.com/en/docs/install
[16]:https://github.com/OpenZWave/node-openzwave-shared/issues/164
[17]:https://github.com/OpenZWave/node-openzwave-shared/blob/master/README-raspbian.md
[18]:https://github.com/mozilla-iot/gateway/blob/master/README.md
[19]:https://thomas-leister.de/en/how-to-import-ca-root-certificate/
[20]:https://stackoverflow.com/questions/7580508/getting-chrome-to-accept-self-signed-localhost-certificate
[21]:https://github.com/mozilla-iot/wiki/wiki/Installing-OpenZWave
[22]:
[23]:
[24]:
[25]:
[26]:
[27]:
[28]:
[29]:
[30]:
