Status: draft
Title: A Slow Walk Though the Garden of IoT - Part 1
Date: 2100-01-01 00:00
Category: Software
Tags: Internet of Things, REST API
Slug: a-slow-walk-though-the-garden-of-iot-part-1
Author: Jeff Irland
Image: internet-of-things.png
Summary: bla bla bla

An alternative to Pushover is [Instapush](https://instapush.im/).
[20 Free and Secure Alternatives to the Parse Push Service](https://dzone.com/articles/20-free-amp-secure-alternatives-to-the-parse-push?edition=252682&utm_source=DailyDigest&utm_medium=email&utm_campaign=dd2016-12-11)

[A REST API FOR ARDUINO AND THE CC3000 WIFI CHIP](http://blog.arduino.cc/2014/06/05/a-rest-api-for-arduino-and-cc3000/?utm_content=bufferc97c1&utm_medium=social&utm_source=twitter.com&utm_campaign=buffer)

[Face Recognition API to integrate facial recognition into any web service](https://www.keylemon.com/)

Read more: http://www.programmableweb.com/api/keylemon#ixzz37atW6GGC
Follow us: @ProgrammableWeb on Twitter | ProgrammableWeb on Facebook


# AWS IoT
* [Amazon Web Services](https://aws.amazon.com/)
* [AWS IoT](http://aws.amazon.com/iot/)
* [AWS IoT – Cloud Services for Connected Devices](https://aws.amazon.com/blogs/aws/aws-iot-cloud-services-for-connected-devices/?sc_campaign=launch&sc_category=iot&sc_channel=SM&sc_content=reInvent&sc_detail=std&sc_medium=aws&sc_publisher=tw_go&adbsc=social_launches_20151008_53682996&adbid=652168897924235264&adbpl=tw&adbpr=571241517)
* [AWS Lambda](https://aws.amazon.com/lambda/)
* [Smart Environmental Monitoring](https://www.hackster.io/alapisco/smart-environmental-monitoring-2552bb?utm_source=hackster&utm_medium=email&utm_campaign=new_projects)
* [Amazon Simple Notification Service (SNS)](https://www.hackster.io/taifur/aws-emergency-notifier-a83e81?utm_source=hackster&utm_medium=email&utm_campaign=new_projects)
* [Network Monitoring with AWS IoT](https://www.hackster.io/phantom-formula-e97912/network-monitoring-with-aws-iot-b8b57c?utm_source=hackster&utm_medium=email&utm_campaign=new_projects)
* [Build a connected maraca with AWS and Intel Edison](https://www.hackster.io/jinman/build-a-connected-maraca-with-aws-and-intel-edison-a4010e?ref=platform&ref_id=4851_trending___&offset=8)

# AWS IoT Button
* [AWS IoT Button](https://aws.amazon.com/iot/button/)
* [Getting Started with AWS IoT](http://docs.aws.amazon.com/iot/latest/developerguide/iot-gs.html)

# Waylay.io
* Waylay - http://www.waylay.io/
* http://waylayio.github.io/integration/2015/10/24/webscripts.html

# Adafruit.io
* [Getting Started With Adafruit IO](https://www.jeremymorgan.com/internet-of-things/how-to-adafruit-io/?utm_source=feedburner&utm_medium=email&utm_campaign=Feed%3A+JeremyMorganTutorials+%28Jeremy%27s+Tutorials%29)
* you have access to [Adafruit.io Dashboard](https://io.adafruit.com/jirland) and its [tutorials](https://learn.adafruit.com/adafruit-io)
* [adafruit.io IFTTT recipes](https://ifttt.com/recipes/search?q=adafruit)
* [Zapier](https://learn.adafruit.com/using-zapier-with-adafruit-io)
* Via adafruit.io sign-up, [you've been invited to use an app On Zapier](https://zapier.com/developer/invite/25310/e5b57f6e084ed73db02db095986ead31/)

Device Cloud Platform to be explored:
Pushover
Bug Labs dweet.io and Freeboard
[Node-RED](http://www.infoq.com/news/2014/05/ibm-node-red-qconlondon)
[Initial State - Stream data from your devices to beautiful visualizations in your web browser](https://www.initialstate.com/)

The broadest definition for the [Internet of Things (IoT)][46] that I have come accross is as follows:

>_IoT is an umbrella term used to describe a next step in the [evolution of the Internet][48].
We are all familiar with the web as a network of hyper-text documents and applications
(think blogs, online email, social sites, e-commerce sites etc.).
It is widely believed that the next step for the Internet is ‘smart’ objects (or ‘things’)
being accessible to human beings, and the things to each other, over the Internet.
This is the Internet of Things._
<footer>[Internet of Things: Philosophy][35]</footer>

<a href="http://en.wikipedia.org/wiki/Internet_of_Things">
    <img class="img-rounded" style="margin: 0px 8px; float: left" title="Source: Shutterstock - http://www.shutterstock.com/" alt="IoT Picture" src="/images/internet-of-things-2.png" width="200" height="200" />
</a>
There are more elaborate definition, such as [Mark Weiser's concept of Ubiquitous Computing][47],
which I find too lofty and not sufficiently discriptive.
On the other hand, the definition given in the post
"[The ABCs of the Internet of Things][41]" I find this too prescriptive.
At the same time, the above definition doesn't have much precision.
Is your laptop outfitted with some type of remote management software a smart object?

Underpinning the evolution of the Internet of Things is the ever increasing 'connected' devices in everyday usage.
This includes your computer and smart phones, but increasingly this will include device that
monitor your fitness, smart meters in your home, RFID readers within supply chains,
or the components of machines, for example a jet engine of an airplane or the drill of an oil rig.
In time, our lives will undergo a multitude of minuscule changes but collectively
will likely have a significant changes on how we work, play, and stay informed.
Some say that the new rule for the future is going to be
“anything that can be connected, will be connected.”

The IoT is the natural outcome of cheap,
embedded electronics and a maturing global network that allows devices to exchange data.
Some of these devices connect directly to the Internet, while others connect via gateways.
Under this vision, the typical RFID reader is merely an IoT gateway,
with RFID just one of many "last-meter" sensors.

Developing applications for the “Internet of Things” (IoT) is far too complicated.
In most cases it requires very specialized (i.e. expensive) skills sets,
in both hardware and software, to get even the most rudimentary prototypes up and running.

The Internet of Things is supposed to escort in a world where connected devices improve our lives.
While very inviting, this vision is proving slow in coming, in part because of the
[sub-optimal embedded technology chooses, connectivity challenges, and configuration complexity][34].
Also it very difficult to put a boundary around IoT;
so that you know when you have arrived.
It is a vast garden of technologies, both old and new, simple and complex, hardware and software.
What I want to do here is simple touch on some of the more elementary IoT implementations.
In subsequent articles,
I hope to venture deeper into the IoT garden and explore ever more powerful and complex solutions.

A common theme within IoT is the use of the TCP/IP and HTTP protocols using
APIs adopting the Roy Fielding's [REST architectural style][16] (so-called “RESTful” APIs).
Nonetheless, a key constraint that Fielding proposed is not always adopted.
This feature is known as [Hypermedia as the Engine of Application State (HATEOAS)][17]
or hypermedia APIs for short.
APIs that enforce this constraint are referred to as HATEOAS-compliant APIs.
More generally, APIs that adopt the characteristics of HATEOAS are called “Hypermedia APIs.”
HATEOAS is a good vision, and is the [most mature form of REST][50] and [solves some real challenges][42],
but it isn't applied often, but there are increasingly [examples HATOAS implementations][45].

# Pushover
* [PubNub - Deliver mobile push notifications to iOS and Android devices, even when an app is offline](https://www.pubnub.com/products/mobile-push/)

<a href="https://pushover.net/">
    <img class="img-rounded" style="margin: 0px 8px; float: left" title="Pushover Logo" alt="Pushover Logo" src="/images/pushover-logo.png" width="75" height="75" />
</a>
[Pushover][22] is a service to receive instant [push notifications][36]
on your phone, web browser, or tablet from a variety of sources.
You purchase and install a client app on your iPhone, Android device, or Desktop.
On the server side, Pushover provide an HTTP API for queuing messages to deliver
to devices addressable by User or Group Keys.
On the device side, the clients receive those push notifications,
show them to the user, and store them for off-line viewing.
With some scripting, you can integrate Pushover notifications into your
application, website, server process, network monitor, or anything else.
Messages are currently limited to 512 characters,
including a title of up to 100 characters.

Setting up Pushover is simple.
Download the client on to your device and then your prompted to register the device
with the Pushover web service.
Once this is done, you can immediately send notifications to you device via Pushover's web site
or send notifications via email.
A more robust approach would be to use the [Pushover applications][23],
the email gateway being just one of the examples.
You can also create you own application and [register it with Pushover][24].
Within the application you create, you'll use the [Pushover APIs][25] to send notifications.
The suite of apps and APIs are elementary and limited,
what can be done with them is powerful.
Check out the article "[Make a Smarter Notification System for Your Phone or Tablet with Pushover][27]".

Pushover uses a single, simple REST API to create messages within your application
and send them to the Pushover device clients.
There is no out-of-band authentication mechanisms or
per-call signing libraries required, such as [OAuth][26].
Pushover is simply notification, there is no logic or actions to be performed.
You could add some automation or logic by leveraging the services of[Zapier][43] or [IFTTT][28].
FTTT stands for "if this then that" and is a free service that
[connects with tons of other services][29] on the web to find information and react to it.

The simplest example of using Pushover may be via its email gateway.
I can use SendEmail, which is a lightweight, completely command line based, SMTP email agent.
It is written in Perl and designed to be used on the command line, in bash scripts,
Perl programs, within web sites, etc.

```bash
sendEmail -f jeff@desktop -t <my_user_key>@api.pushover.net -u "Test Email from Desktop" -m "A simple test message sent via SMPT mail relay on Google Mail." -s smtp.gmail.com:587 -o tls=yes -xu jeff.irland -xp <my_password>
```

Use of the Pushover email gateway doesn't require any application API key,
but if I do create an application, I'll need to [register it with Pushover][32].
I did that with a shell script I created that can be used to send notification messages from
my Linux desktop to Pushover.
That script, called `apprise`, could be used to provide filesystem backup status.
It should have a title and message and could look like this:

```bash
apprise -t "Backup Status" -m "Filesystem backup completed successfully on `date`."
```

Using the [Pushover API][25] within [cURL][33], the `apprise` script is listed below:

```bash
#!/bin/bash

APPTOKEN="<my_app_token>"
USERKEY="<my_user_key>"

USAGE="Usage: `basename $0` [-h] -t title -m message"

# Parse command line options
while getopts ht:m: OPT; do
    case "$OPT" in
        h)
            echo $USAGE
            exit 0
            ;;
        t)
            TITLE=$OPTARG
            ;;
        m)
            MESSAGE=$OPTARG
            ;;
        \?)
            # getopts issues an error message
            echo $USAGE >&2
            exit 1
            ;;
    esac
done

# Send message to Pushover to create notification
curl --silent \
    -F "token=$APPTOKEN" \
    -F "user=$USERKEY" \
    -F "message=$MESSAGE" \
    -F "device=desktop" \
    -F "title=$TITLE" \
    -F "sound=spacealarm" \
    https://api.pushover.net/1/messages.json | grep '"status":1' > /dev/null

# Check the exit code to identify an error
if [ $? -eq 0 ];
    then
        exit 0
    else
        echo "apprise failed"
        exit 1
fi
```

Note that the `curl` command in the script above, when successful,
does return a [JSON][49] object that looks something like

```json
{ "status":1, "request":"e9bfdc05dbed57f9465f1528bcd746fd" }
```

If this message is successfully parsed by `grep`,
then I assume `apprise` successfully sent the message.

While elegantly addressing it targeted problem domain, Pushover is very limited.
For example, it does not allow for a two-way dialog (other than acknowledgment of a notification),
it doesn't support any form of streaming or bulk data deliver,
and most limiting is that it requires you to use the supplied Pushover client.

# Bug Labs dweet.io and Freeboard
<a href="http://buglabs.net/">
    <img class="img-rounded" style="margin: 0px 8px; float: left" title="Bub Labs Badge" alt="Bub Labs Badge" src="/images/buglabs-badge.png" width="75" height="75" />
</a>
[Bug Labs][01] cloud based message board [dweet.io][02] over comes a Pushover limitation by
give you the freedom to build your own client and server.
It claims to have a "ridiculously simple messaging for the Internet of Things.
Fast, free and ridiculously simple - it's like Twitter for social machines."
It uses a [publish and subscribe architecture][37]
where senders of messages, called publishers (which do not program the messages to be sent
directly to specific receivers) post their messages where subscribers can retrieve them.
dweet.io doesn't require any setup or sign-up, you just publish and subscribe as you see fit.
Oviously this doesn't have much security but you can purchase [locks][38].
Locks allow you to protect and reserve your thing so that only people (and things)
with special keys can access it.
Once you lock a thing, the name of that thing cannot be used by anyone else.

The process of publishing a message is called "dweeting" by Bug Labs,
and this is done by using a simple [HAPI-REST][39] web API.
You can play with dweet.io and learn its operation by using using the [dweet.io API console][40].
Note that dweet.io only holds on to the last 500 dweets over a 24 hour period.
If the thing hasn't dweeted in the last 24 hours, its history will be removed.

Unlike Pushover, there isn't any signing up, keys, or any configuration necessary.
For example, if you want to send a message to Bug Labs message board (aka dweet a message)
like the one performed for Pushover

```bash
curl --silent 'https://dweet.io/dweet/for/jeffskinnerbox?title=Backup%20Status&message=Filesystem%20backup%20completed%20successfully'
```

This cURL command will return a JSON string like this[^A]
[^A]:
    The format below was produced by piping the curl output through
    the command `python -mjson.tool | pygmentize -l javascript`.
    This will colorize and pretty print the JSON script.

```json
{
    "by": "dweeting",
    "the": "dweet",
    "this": "succeeded",
    "with": {
        "content": {
            "message": "Filesystem backup completed successfully",
            "title": "Backup Status"
        },
        "created": "2014-06-01T21:51:49.239Z",
        "thing": "jeffskinnerbox"
    }
}
```

To read the latest dweet for the dweeter "jeffskinnerbox", you can call

```bash
curl --silent 'https://dweet.io/get/latest/dweet/for/jeffskinnerbox'
```

and this returns the JSON string

```json
{
    "by": "getting",
    "the": "dweets",
    "this": "succeeded",
    "with": [
        {
            "content": {
                "message": "Filesystem backup completed successfully",
                "title": "Backup Status"
            },
            "created": "2014-06-01T21:51:49.239Z",
            "thing": "jeffskinnerbox"
        }
    ]
}
```

You can also create a real-time subscription to dweets using
HTTP 1.1's [chunked transfer encoding][52].
The server will keep the connection alive and send you dweets as they arrive.
You can simple listen to the connection an process the JSON messages as they arrive.
This can be done with the following command:

```bash
curl --silent 'https://dweet.io/listen/for/dweets/from/jeffskinnerbox'
```

Bug Labs also offer a web-based tool called [Freeboard][03] that allows you to build
interactive user-interfaces for connected devices.
Bug Labs claims combining dweet.io + Freeboard,
give you everything you need to put together an IoT application quickly and easily.
Never the less, they can be used individually or in conjunction with other platforms.
It's interesting that Bug Labs positions Freeboard as an open source alternative to [Geckoboard][04].

* [dweet.io](https://dweet.io/)
* [Freeboard](https://freeboard.io/)
* [Freeboard's GitHub](https://github.com/Freeboard/freeboard)

# OpenSensors.io
[OpenSensors.io](https://www.opensensors.io/)

# CloudMQTT
CloudMQTT - https://www.cloudmqtt.com/
On AWS -

# MongoDB
mLab (formally MongoDB) - https://mlab.com/
On AWS - https://mlab.com/aws/

# IFTTT
[IFTTT](https://ifttt.com/)

# Where to Begin
* Stating Points and Foundational Knowledge
    * [RESTful Resources Required Reading][51]
    * [RESTful Web APIs][06]
    * [HTTP: The Definitive Guide][31]
* Non-Technical Introductions
    * [An Introduction to APIs][44]
    * [API 101][11]
    * [History of APIs][10]
    * [Winning in the API Economy][09]
    * [API Providers Guide­- API Design][13]
    * [API Consumer Guide - API Discovery][12]
* Tutorials
    * [Web API Design - Crafting Interfaces that Developers Love][14]
    * [API Facade Pattern - A Simple Interface to a Complex System][21]
    * [Designing and Implementing Hypermedia APIs - Part 1][07]
    * [Designing and Implementing Hypermedia APIs - Part 2][08]
    * [Hypermedia APIs: The Benefits of HATEOAS][18]
    * [The RESTful CookBook][19]
    * [Richardson Maturity Model][20]
* Directories / Tools for Finding APIs and IoT Devices
    * [ProgrammableWeb - Web Services Directory][15]
    * [Mashape API Platform & Marketplace][05]
    * [Connect2.me](https://www.connect2.me/whatisc2m.aspx)
    * [Thingful][30]
* Candidate IoT Protocols
    * [Exploring the Protocols of IoT](https://www.sparkfun.com/news/1705)
    * [pubsubhubbub](http://readwrite.com/2009/09/28/real-time_web_protocol_pubsubhubbub_explained#awesm=~oDUkPl96eqUpe3)
    * [Message Queuing Telemetry Transport (MQTT)](http://mqtt.org/)
    * [Advanced Message Queuing Protocol (AMQP)]()
    * [Simple/Streaming Text-Oriented Messaging Protocol (STOMP)]()
    * [Constrained Application Protocol (CoAP)]()
    * [Extensible Messaging and Presence Protocol (XMPP)]()
    * [Choosing Your Messaging Protocol: AMQP, MQTT, or STOMP](http://blogs.vmware.com/vfabric/2013/02/choosing-your-messaging-protocol-amqp-mqtt-or-stomp.html)
    * [MQTT and CoAP, IoT Protocols](http://www.eclipse.org/community/eclipse_newsletter/2014/february/article2.php)
    * [IoT Protocol Wars: MQTT vs CoAP vs XMPP](http://www.iotprimer.com/2013/11/iot-protocol-wars-mqtt-vs-coap-vs-xmpp.html)
    * [Minimal MQTT: Building a Broker](http://hackaday.com/2016/05/09/minimal-mqtt-building-a-broker/)
    * [Introduction to the MQTT Protocol on NodeMCU](http://www.allaboutcircuits.com/projects/introduction-to-the-mqtt-protocol-on-nodemcu/)
    * [MQTT Essentials: Part 1 – Introducing MQTT](http://www.hivemq.com/blog/mqtt-essentials-part-1-introducing-mqtt)
    * [muMQTT](https://play.google.com/store/apps/details?id=at.tripwire.mqtt.client&hl=en)
    * [PubNub](https://www.pubnub.com/)
    * [Pushover](https://pushover.net/)



[01]:http://buglabs.net/
[02]:http://buglabs.net/products/dweet.io
[03]:http://buglabs.net/products/freeboard
[04]:http://www.geckoboard.com/
[05]:https://www.mashape.com/
[06]:http://shop.oreilly.com/product/0636920028468.do?intcmp=il-prog-books-videos-cat-intsrch_rest_search_promo_ct
[07]:http://www.infoq.com/articles/hypermedia-api-tutorial-part-one
[08]:http://www.infoq.com/articles/hypermedia-api-tutorial-part-two
[09]:http://www.3scale.net/wp-content/uploads/2013/10/Winning-in-the-API-Economy-eBook-3scale.pdf
[10]:https://s3.amazonaws.com/kinlane-productions/whitepapers/API+Evangelist+-+History+of+APis.pdf
[11]:https://s3.amazonaws.com/kinlane-productions/whitepapers/API+Evangelist+-+API+101.pdf
[12]:https://s3.amazonaws.com/kinlane-productions/whitepapers/API+Evangelist+-+API+Consumers+Guide+-+API+Discovery.pdf
[13]:https://s3.amazonaws.com/kinlane-productions/whitepapers/API+Evangelist+-+API+Provide+Guide+-+API+Design.pdf
[14]:http://info.apigee.com/Portals/62317/docs/web%20api.pdf
[15]:http://www.programmableweb.com/apis/directory
[16]:http://www.ics.uci.edu/~fielding/pubs/dissertation/top.htm
[17]:http://restcookbook.com/Basics/hateoas/
[18]:http://blog.programmableweb.com/2014/02/27/hypermedia-apis-the-benefits-of-hateoas/
[19]:http://restcookbook.com/
[20]:http://martinfowler.com/articles/richardsonMaturityModel.html
[21]:http://chrismaloney.org/notes/API%20Webinar%20Series_/api-facade-pattern-ebook-2012-06.pdf
[22]:https://pushover.net/
[23]:https://pushover.net/apps
[24]:https://pushover.net/apps/build
[25]:https://pushover.net/api
[26]:http://oauth.net/
[27]:http://lifehacker.com/5935792/make-a-smarter-notification-system-for-your-phone-or-tablet-with-pushover
[28]:https://ifttt.com/wtf
[29]:https://ifttt.com/channels
[30]:http://thingful.net/
[31]:http://shop.oreilly.com/product/9781565925090.do
[32]:https://pushover.net/apps/build
[33]:http://curl.haxx.se/
[34]:http://www.eetimes.com/author.asp?section_id=36&doc_id=1319611&page_number=2
[35]:http://internetofthingsphilosophy.com/
[36]:http://en.wikipedia.org/wiki/Push_technology
[37]:http://en.wikipedia.org/wiki/Publish%E2%80%93subscribe_pattern
[38]:https://dweet.io/locks
[39]:https://github.com/jheising/HAPI
[40]:https://dweet.io/play/
[41]:http://features.techworld.com/networking/3516134/the-abcs-of-the-internet-of-things/?pn=1
[42]:http://www.slideshare.net/trilancer/why-hateoas-1547275
[43]:https://zapier.com/
[44]:https://zapier.com/learn/apis/
[45]:http://apievangelist.com/2014/04/15/what-are-some-good-examples-of-hypermedia-apis/
[46]:http://www.itu.int/osg/spu/publications/internetofthings/
[47]:http://en.wikipedia.org/wiki/Mark_Weiser
[48]:http://www.pewinternet.org/2014/03/11/world-wide-web-timeline/
[49]:http://www.w3schools.com/json/
[50]:http://martinfowler.com/articles/richardsonMaturityModel.html
[51]:http://bestoked.blogspot.com/2012/02/restful-resources-required-reading.html
[52]:http://en.wikipedia.org/wiki/Chunked_transfer_encoding
[53]:
[54]:
[55]:
[56]:
[57]:
[58]:
[59]:
[60]:
