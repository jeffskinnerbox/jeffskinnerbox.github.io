
* [Introduction to the MQTT Protocol on NodeMCU](http://www.allaboutcircuits.com/projects/introduction-to-the-mqtt-protocol-on-nodemcu/)
* [Publishing MQTT messages from a NodeMCU – Soil Moisture Sensor](http://iotalot.com/2016/05/08/publishing-mqtt-messages-from-a-nodemcu-soil-moisture-sensor/)
* [mbedTLS SSL Certificate Verification With Mosquitto, lwIP, and MQTT](https://dzone.com/articles/mbedtls-ssl-certificate-verification-with-mosquitto-lwip-and-mqtt?edition=298027&utm_source=Spotlight&utm_medium=email&utm_campaign=iot%202017-05-09)

* [Baofeng (or other radio) data TX/RX for Raspberry Pi](http://flows.nodered.org/flow/d802e43ab306b4b9f2ba)

* [Weather Station – DHT11, MQTT, Node-RED, Google Chart, Oh My!](http://www.internetoflego.com/weather-station-dht11-mqtt-node-red-google-chart-oh-my/)

* [How to Bridge Mosquitto MQTT Broker to AWS IoT](https://aws.amazon.com/blogs/iot/)

Hijacking Your Home IoT Appliance: [Part 1](https://medium.com/@alexharasic/hijacking-your-home-iot-appliance-part-1-8c2aabdf950d)
and [Part 2](https://medium.com/@alexharasic/hijacking-your-home-iot-appliance-part-2-92cff7055540)

# ESP8266
* [MQTT Tutorial for Raspberry Pi, Arduino, and ESP8266: Send MQTT messages between 3 different platforms](https://www.baldengineer.com/mqtt-tutorial.html)
* [MQTT client library for ESP8266](https://github.com/tuanpmt/esp_mqtt)
* [Temp sensor connected to ESP8266 and upload data using MQTT](https://www.hackster.io/mtashiro/temp-sensor-connected-to-esp8266-and-upload-data-using-mqtt-5e05c9?utm_source=Hackster.io+newsletter&utm_campaign=20569a30e7-2015_4_17_Top_projects4_16_2015&utm_medium=email&utm_term=0_6ff81e3e5b-20569a30e7-140225889)
* [ESP8266 AND IOT: STREAMING SERIAL ACCELEROMETER DATA VIA MQTT](http://tinker.yeoman.com.au/2015/03/29/esp8266-and-iot-streaming-serial-accelerometer-data-via-mqtt/)

# MQTT
* [Introduction to MQTT](https://learn.sparkfun.com/tutorials/introduction-to-mqtt)
* [MQTT: A Conceptual Deep-Dive](https://www.ably.io/concepts/mqtt)
* [Running Mosquitto (MQTT broker) on Raspberry Pi](http://www.seeed.cc/project_detail.html?id=1754&utm_source=comedm17&utm_medium=mailchimp&utm_campaign=Molly0804)
* [Raspberry Pi IoT: Sensors, InfluxDB, MQTT, and Grafana](https://dzone.com/articles/raspberry-pi-iot-sensors-influxdb-mqtt-and-grafana)
* [Playing With Docker, MQTT, Grafana, InfluxDB, Python, and Arduino](https://dzone.com/articles/playing-with-docker-mqtt-grafana-influxdb-python-a)
* [Setting up an IoT framework/dashboard with NodeRed, Mosca/Mosquitto and Freeboard.io dashboard](https://primalcortex.wordpress.com/2015/02/25/setting-up-an-iot-frameworkdashboard-with-nodered-moscamosquitto-and-freeboard-io-dashboard/)
* [Installing Mosquitto on a Raspberry Pi](http://jpmens.net/2013/09/01/installing-mosquitto-on-a-raspberry-pi/)
* [Tutorial: IOT / Installing and Testing Mosquitto MQTT on the Raspberry Pi](http://www.switchdoc.com/2016/02/tutorial-installing-and-testing-mosquitto-mqtt-on-raspberry-pi/)
* [Minimal MQTT: Power and Privacy](http://hackaday.com/2016/06/02/minimal-mqtt-power-and-privacy/)
* [Minimal MQTT: Control and Clients](http://hackaday.com/2016/05/27/minimal-mqtt-control-and-clients/)
* [Minimal MQTT: Networked Nodes](http://hackaday.com/2016/05/17/minimal-mqtt-networked-nodes/)
* [MINIMAL MQTT: Building a Broker](https://hackaday.com/2016/05/09/minimal-mqtt-building-a-broker/)
* [Creating an IoT Server with Home Assistant and MQTT](https://www.hackster.io/Richa1/creating-an-iot-server-with-home-assistant-and-mqtt-3d874d?ref=similar&ref_id=45410&offset=5)
* [How to Mash Up BLE, NodeJS, and MQTT to Get Internet of Things](https://hackaday.com/2018/08/24/how-to-mash-up-ble-nodejs-and-mqtt-to-get-internet-of-things/)

# wolfSSL
The [wolfSSL](https://www.wolfssl.com/wolfSSL/Home.html)
is an open source embedded SSL library (formerly CyaSSL) which is lightweight, portable, C-language-based SSL/TLS library targeted at IoT, embedded, and RTOS environments primarily because of its size, speed, and feature set. It works seamlessly in desktop, enterprise, and cloud environments as well. wolfSSL supports industry standards up to the current TLS 1.3 and DTLS 1.2, is up to 20 times smaller than OpenSSL, offers a simple API, an OpenSSL compatibility layer, OCSP and CRL support,

* [What You Need to Know About the TLS 1.3 Protocol and wolfSSL’s SSL/TLS Libraries](https://www.allaboutcircuits.com/news/what-you-need-to-know-about-the-tls-1.3-protocol-and-wolfssls-ssl-tls-libra)
* [lwIP - A Lightweight TCP/IP stack](https://savannah.nongnu.org/projects/lwip/)
* [MQTT With lwIP and the NXP FRDM-K64F](https://dzone.com/articles/mqtt-with-lwip-and-the-nxp-frdm-k64f)
* [mbedTLS SSL Certificate Verification With Mosquitto, lwIP, and MQTT](https://quantixcap.wordpress.com/2017/04/26/mbedtls-ssl-certificate-verification-with-mosquitto-lwip-and-mqtt/)
* [Secure Communication With TLS and the Mosquitto Broker](https://dzone.com/articles/secure-communication-with-tls-and-the-mosquitto-broker)

# openssl
* [Secure Communication With TLS and the Mosquitto Broker](https://dzone.com/articles/secure-communication-with-tls-and-the-mosquitto-broker)

# MQTT
* [REST is for sleeping. MQTT is for Mobile](https://mobilebit.wordpress.com/2013/05/03/rest-is-for-sleeping-mqtt-is-for-mobile/)

The original vision of the world of IoT was that all devices were addressable on the internet.
In practice, implementer’s found that it was simply impractical in many situations
to have devices talking to each other directly by initiating peer-to-peer communication.
Without a server or service, generally known as a broker, every client would need to
handle a number of common but often complex problems.

This is where Message Queue Telemetry Transport (MQTT) steps in.
It is a very lightweight messaging protocol which meets the needs of most IoT related communications.
The protocol is mature, with the first use over a decade ago.
In 2014, MQTT received ratification by OASIS (an open standards consortium).
Just like in HTTP, the protocol of the world wide web,
a number of methods are defined: connect, disconnect, subscribe, unsubscribe and publish.

Messages and subscriptions in MQTT are based on "topics".
Topics can be viewed as a close relation to the URL we see in the location bar in our browsers.
In the same way it is best practice for the structure of URLs to convey meaning
about the resource retrieved; topics should also attempt to follow a similar pattern.

An example topic name which illustrates a topic structure: `/world/customer1/sensor1/temperature`
Notice that the the topic gradually becomes more specific with a `/`
used to delimit each logical component.

One key difference between HTTP and MQTT is whilst publishing is an absolute topic
(as shown above), subscriptions can use wildcards.
Two types of wildcards are supported.
The `#` which matches any topic tree and the `+` which matches only one level of the topic.
Wildcards allows subscribers,
subject to a sufficient topic structure,
to subscribe to many devices with just one request.


There are several MQTT brokers available,
such as the popular [Mosquitto MQTT Broker][24]
(nice [Rasberry Pi implementation of Mosquitto][26] as a private broker),
but there is also the MQTT Broker [Mosca][21],
which runs on Node.js and so is platform agnostic.
[Mosquitto][25], [Mosca][23] and [CloudMQTT][22] all support MQTT over websockets,
which allows use of webclient dashboards in a straight forward way.
MQTT over websockets allowes every browser to be a MQTT client.
You can push messages to your browser when an event occurs or publish messages to your device.

So what is Freeboard.io? - http://freeboard.io/ What about Dashing? - http://dashing.io/

To get MQTTCloud working with OwnTracks, I found a [helpful OwnTracks Community artical][20].

The GPS capture device I selected is the iOS/Android app OwnTracks, an open-source "location diary" that continually publishes a message with location information at a periodic interval (for example, every 5 seconds or 10 meters moved). OwnTracks is perfect for this solution because of the simplicity and ease of configuration: just configure the publish topic, point to a messaging broker and your location information starts getting published. Here's an example:

Programming for Hosted - http://owntracks.org/booklet/tech/proghosted/
OwnTracks Community - https://community.owntracks.org/topic/23/node-red
Check out - http://flows.nodered.org/flow/1aab1d44e387da96b3fe

# Dashboards
Node-RED lacks a control and display panel from where can drive your application
or see it status.
The are many dashboad tools available to fill this void,
but two will get special mention here

## Freeboard
[Freeboard][27], from [Bug Labs][28], advertises itself as a turn-key HTML-based "engine" for dashboards,
and a open source real-time dashboard builder for IOT and other web mashups.
Freeboard can runs entirely in the browser as a single-page static web app without the need for a server.
The code on the [Freeboard Github][29] is the client-side version of what you see
when you use the Freeboard hosted service at http://freeboard.io.

Freeboard can be run entirely from a local hard drive.
You download/clone the repository and open `index.html`.
While freeboard runs as a stand-alone app out of the box,
you can augment and control it from javascript with a simple API.
All API calls are made on the freeboard singleton object.
To get Freeboard to run locally, do the following:

```bash
# clone the Freeboard repository
cd ~/src
git clone https://github.com/Freeboard/freeboard.git

# now point your browser to Freeboard's index file
google-chrome file:///home/jeff/src/freeboard/index.html
```

For Node-RED integration, you don't need the above
(Freeboard is bundled within the package).
Just install the `node-red-contrib-freeboard` plugin

```bash
sudo npm install -g node-red-contrib-freeboard
```

The Freeboard will be posted at `http://localhost:1880/freeboard/`.

## Dashing
Another dashboard is the Ruby on Rails-based tool [Dashing][30].
Dashing provides everything you need to create dynamic dashboard interfaces,
including a large set of pre-made widgets
(installed when you create a project
and [user submitted Dashing widgets][31] you can install manually)
to easily present data in a graphical format.
You can customize these widgets via web standards (HTML, SCSS, and CoffeeScript)
and develop your own if there is nothing that meets your needs.
To use Dashing, you don't need to know Ruby or Rails.

A widget is defined using three files:
a small amount of html specifying data bindings for the delivered data,
style information in a SASS scss file,
and event handling code in coffeescript.
Once a widget is defined, instances can be created by editing the dashboard's ERB file.
You just create a HTML `div` with a data-view attribute matching a widget's class name
and a data-id that is used to route data to the widget.
Data can be pushed to the widgets by submitting an HTTP POST to /widgets/<data-id>
from an external job or application, or can be pulled using Dashing's job support.
[The web site][30] describes how to get data into your widgets in more detail.

Install dashing using gem from the command line.
But before you can do this, you must sure you have Ruby 1.9+ installed:

```bash
gem install dashing
```

Generate a new dashboard project with dashing

```bash
dashing new sweet_dashboard_project
```

Change your directory to `sweet_dashboard_project` and bundle gems

```bash
cd sweet_dashboard_project
bundle
```

Start the dashing server and point your browser at `localhost:3030`:

```bash
dashing start
google-chrome http://localhost:3030
```

Every new Dashing project comes with sample widgets &
sample dashboards for you to explore.
The directory is setup as follows:

* Assets — All your images, fonts, and js/coffeescript libraries. Uses Sprockets
* Dashboards — One `.erb` file for each dashboard that contains the layout for the widgets.
* Jobs — Your ruby jobs for fetching data (e.g for calling third party APIs like twitter).
* Lib — Optional ruby files to help out your jobs.
* Public — Static files that you want to serve. A good place for a favicon or a custom 404 page.
* Widgets — All the html/css/coffee for individual widgets.

Run dashing from command line to find out what command line tools are available to you.

To install [additional widgets from 3^^rd^^ parties][31],
you the `dash install` command followed by the gist id of the widget.
For example, the asana tasks gist is https://gist.github.com/willjohnson/6334811 or gist 6334811.
To install the widget, we run:

See http://fmrldev.blogspot.com/2014/04/raspberry-pi-information-radiator_29.html

>NOTE: Dashing-js is a Node.js port of the Ruby version of Dashing,
and has a node already established within Node-RED.
The port is not as well documented as the Ruby version,
and frankly, doesn't appear to have much support behind it.

## Initial State
[Initial State - Stream data from your devices to beautiful visualizations in your web browser](https://www.initialstate.com/)

* Waylay - http://www.waylay.io/
* http://waylayio.github.io/integration/2015/10/24/webscripts.html
* [Getting Started With Adafruit IO](https://www.jeremymorgan.com/internet-of-things/how-to-adafruit-io/?utm_source=feedburner&utm_medium=email&utm_campaign=Feed%3A+JeremyMorganTutorials+%28Jeremy%27s+Tutorials%29)

################################################################################

* [How to Create Microservices and Go Serverless with PubNub Functions](https://www.pubnub.com/blog/serverless-microservices-with-pubnub-functions/)
* []()
* []()

* [PubNub](https://www.pubnub.com/)
    * https://www.pubnub.com/docs/blocks-catalog
    * https://www.pubnub.com/products/functions/
* [Pushover](https://pushover.net/)

* [Internet of Things 101: Getting Started w/ Raspberry Pi](https://www.pubnub.com/blog/2015-05-27-internet-of-things-101-getting-started-w-raspberry-pi/)


* [PubNub - Deliver mobile push notifications to iOS and Android devices, even when an app is offline](https://www.pubnub.com/products/mobile-push/)
* [Connecting it All Together – PubNub and Node-RED](http://www.internetoflego.com/connecting-it-all-together-pubnub-and-node-red/)


* What Are WebSockets? - https://www.pubnub.com/blog/2013-09-11-what-are-websockets/
* Comparisons between WebHooks, WebSockets, and server-sent events - https://www.safaribooksonline.com/library/view/restful-java-patterns/9781783287963/ch06s05.html

# Eon
Eon is an open-source chart and map framework for realtime data

* [Getting Started with PubNub's Project EON: Realtime Maps, Charts, and Dashboards](https://www.youtube.com/watch?v=_8PQolnKCrM)
* [Mapbox](https://www.mapbox.com)
* [Introducing the Mapbox CLI](https://blog.mapbox.com/introducing-the-mapbox-cli-8b58950496f0)
* [Python Command line interface to Mapbox Web Services](https://github.com/mapbox/mapbox-cli-py)

# PubNub Presence
Device and User Presence - https://www.pubnub.com/products/presence/
Automatic realtime detection of device and user state to identify who and what is connected.
* [Presence User and Machine Detection](https://www.pubnub.com/blog/2014-03-12-presence-update-3-new-features/)
* [PubNub Presence Python SDK: Setting custom time-out and Here_now()](https://www.youtube.com/watch?v=NK2uISyxCr8)

# Data Stream Network

# PubNub BLOCKS
PubNub BLOCKS always run as functions inside the PubNub Data Stream Network.

https://www.pubnub.com/docs/blocks-catalog

# PubNub versus MQTT
PubNub is a something-vaguely-like MQTT like service.
One big difference between MQTT and Pubnub is that in MQTT
you can elect to simply listen for certain messages with wildcards.
It doesn’t work that way in PubNub.
You get everything coming in for that particular key.

PubNub is a public service and claims high availability /relaibility because
since they have backup servers on multiple continents.
PubNub claims to connects 15 globally redundant points of presence
into a single network capable of handling hundreds of millions of simultaneous
device connections and relaying trillions of messages.

PubNub is free for less than 100 devices and less than one million messages per month.
This is adiquite for small home network but if you have 25 devices sending an update every second,
you'll exceed 1 million messages and [this will cost you $49/month][05]

* MQTT for Embedded Devices Now Supported by PubNub - https://www.pubnub.com/blog/mqtt-now-supported-by-pubnub/
* New, Improved PubNub MQTT Support and IoT Capabilities - https://www.pubnub.com/blog/new-improved-pubnub-mqtt-support-and-iot-capabilities/
* Using MQTT with PubNub - https://stackoverflow.com/questions/37903316/using-mqtt-with-pubnub

################################################################################



[01]:
[02]:
[03]:
[04]:
[05]:https://www.pubnub.com/pricing/
[06]:
[07]:
[08]:
[09]:
[10]:
[11]:
[12]:https://play.google.com/store/apps/details?id=org.owntracks.android
[13]:http://owntracks.org/booklet/
[14]:https://hosted.owntracks.org
[15]:http://owntracks.org/booklet/features/hosted/
[16]:http://owntracks.org/booklet/guide/broker/
[17]:
[18]:
[19]:https://www.cloudmqtt.com/
[20]:https://community.owntracks.org/topic/23/node-red
[21]:http://www.mosca.io/
[22]:https://www.cloudmqtt.com/docs-websocket.html
[23]:https://github.com/mcollina/mosca/wiki/MQTT-over-Websockets
[24]:http://mosquitto.org/
[25]:http://jpmens.net/2014/07/03/the-mosquitto-mqtt-broker-gets-websockets-support/
[26]:http://owntracks.org/booklet/guide/broker/
[27]:http://freeboard.io/
[28]:http://buglabs.net/
[29]:https://github.com/Freeboard/freeboard
[30]:http://dashing.io/
[31]:https://github.com/Shopify/dashing/wiki/Additional-Widgets
[32]:
[33]:
[34]:
[35]:
[36]:
[37]:
[38]:
[39]:
[40]:
