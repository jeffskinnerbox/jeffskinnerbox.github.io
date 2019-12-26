
* [CREATE CHEAP PHILIPS HUE COMPATIBLE DEVICES](http://hackaday.com/2017/03/01/create-cheap-philips-hue-compatible-devices/)

----

* [Compare 12 Smart Plugs that Work With Alexa + WiFi vs. Z-wave Review](https://www.youtube.com/watch?v=9m5oAbnU19c)
* [Part 1-Start Your Smart Home: Wink Hub 2, SmartThings, HomeKit, IFTTT, Amazon Echo](https://www.youtube.com/watch?v=xEMcqQE6Rlc)
* [Part 2: Start Your DIY Smart Home - Smart Lighting + Home Automation + Amazon Echo](https://www.youtube.com/watch?v=e_2vb5IQ_y0)

* [whereami](https://github.com/kootenpv/whereami)
    * [wherearehue](https://github.com/DeastinY/wherearehue)

----

**Phillips Hue**
[!philips-hum-logo](http://www.usa.lighting.philips.com/b-dam/b2b-li/en_AA/support/tools/Philips%20Hue.png)
I purchased a [Philips Hue White Starter Kit][01] to begin my entry into controlling my homes lighting.
This kit comes with two [A19 LED light bulbs][02]
and a [Hue Bridge 2.0][03].
These white lights, therefore no color control, are the cheaper in the Philips Hue line.
The Hue Bridge connects your home WiFi (or Ethernet)
with a maximum of 50 lights per bridge
and 12 Philips Hue accessories (e.g. motion sensor, swithces, etc.) per bridge.
The Hue Bridge communicates with the Hue devices via the
[Zigbee Light link protocol 1.0][04]
([Zigbee Light Link User Guide][05], and [presentation][06]).

Philips Hue makes a range of bulbs and fixtures,
and it can be a challenge to [understand the differences][14].
The Hue Bridge also works with [non-Hue contollers][10] and [non-Hue light bulbs][18], such as:

* non-Hum controllers
    * [Google Home, Google Assistant, and Google OnHub][07]
    * [Amazon Alexa][08]
    * [If This Then That - IFTTT][09]
    * [Logitech Harmony][11]
* non-Hum light bulbs
    * [GE Link][12]
    * [Cree Connected][13]
    * [Osram][15] appears to have some problems

An even greater plus for Phillips Hue would be letting you
control all of your ZigBee-based lights, regardless of their manufacturer.
[Phillips Hue initially refused to do this][60], but [later made a reversal][61], at least in part.
Of course, to undermine any attempt by Phillips Hue,
your could, as others have done, [root the Hue Bridge][62].
Its rather intrusive, so get your soldering iron out!
(Instructions and pictures [here][63])
If your really adventurous and once rooted,
you can [enable the hidden WiFi radio][64]
that comes with the OpenWrt instance on the Hue Bridge,
but not turned on for your use.

I choose Philips Hue as my lighting solution because of its quality, popularity,
but primarily because of it commitment to a [developer program][16] and [published RESTful APIs][17].
Once you register to Hue's developer forum,
you get access to the [Developer Program / API Documentation][33].
You also find additional information at
["Advanced control for your Hue Personal Wireless Lighting System"][34]
and ["Hue Tips"][35].

# Open Source Alternative
The [diyHue][83] project emulates a Philips Hue Bridge that is able to control ZigBee lights,
Mi-Light bulbs, Neopixel strips and any cheap ESP8266 based bulbs.
It is written in Python and will runs on the RaspberryPi.

# Third Party LED Bulbs
* [How to Add Third Party Smart Bulbs to Your Philips Hue System](https://www.howtogeek.com/216811/how-to-add-third-party-smart-bulbs-to-your-philips-hue-system/)
* [Cree Connected LED Bulb](https://support.smartthings.com/hc/en-us/articles/204258280-Cree-Connected-LED-Bulb)
* [PHILIPS HUE COMPATIBLE 3RD PARTY BULBS](https://huehomelighting.com/philips-hue-compatible-3rd-party-bulbs/)
* [3rd Party Lights that Work with Hue](https://www.smarthomereviewer.com/3rd-party-lights-that-work-with-hue/)

# Companion But Not Hue Bridge Compatible Device - Belkin WeMo
There are [pros & cons of smart lights vs smart switches][43]
but I think you may need both.
The Phillips Hue product line doesn't offer a smart switch,
but the Belkin WeMo could fill in this void in the Phillips Hue product line.
The [Belkin WeMo Insight Switch][40] ([different from the orginal Belkin's WeMo Switch][39])
uses WiFi instead of Zigbee for connectivity.
The [Belkin WeMo Insight Switch is one of the most capable smart switches on the market][38],
and Belkin has also built some [Amazon Echo / Alexa skills][37] for it.

The WeMo Insight Switch does support some
[APIs like phone apps, Amazon Alexa, Nest, and IFTTT][42]
but it doesn't have any open APIs.
Never the less, some hacking of the device has been occuring (with mixed success)
and you'll find [Shell][47], [Python][44], [Node.js][46], and even [Node-RED][45] solutions.
Also, it appears that Belkin WeMo Switch have been [rooted][50]
and even has have the [operating system replace with OpenWrt][49].

[Belkin does offer LED Lighting][41] and its ues Zigbee radios,
just like the Phillips Hue, but Belkin use its own bridge.
Doesn't seem to be compatible with the Phillips Hue bridge,
only work with the WeMo Link hub and cannot be paired with the Hue Bridge.

Finally, Belkin even offers something for the Maker community via the [WeMo Maker][48].
It claims to control nearly any low-voltage electronics device,
like a garage door.

# Initializing Your Hue Bridge and Bulbs
Initializing the Hue Starter Kit is easy
(instructions are posted [here][21]):

1. Screw in the light bulb and turn on the power to the light.
1. Power the Hue Bridge and connect the Ethernet port to your router.
1. Download the phone app from the App Store or Google Play Store.
At this time, your likely to get an update for the Hue Bridge.
1. Follow the procedure on the phone app to pair your bulb with the Hue Bridge.
The app sensed both bulbs in the kit, even when only one was powered.
1. Thew phone app allows you to name the location of the bulbs,
along with setting its status.
1. Using the phone app, or via a browser at https://my.meethue.com/en-us/ ,
create a MyHue account.
In your MyHue account, you can rename the bulbs, get access to network information,
firmware versions, etc.

With just this, your up and running.
You can now control your bulb via the Hue phone app.
You can find additional tips & tutorials at [Hue Tips][22].

**NOTE:** I believe the light bulbs are already paired with the
bridge they arrive with.
If you buy additional bulbs, you need to use the procedure in the next section.

# Adding Additional Hue Bulbs
When you install a new Hue bulb you have to tell your Hue Bridge about it,
so the bulb can join Hue Bridge Zigbee network.
The procedure you use is:

1. Screw in the light bulb and turn on the power to the light.
(It can be helpful to power off all other Hue lights when
trying to add a new bulb to an existing Bridge.)
1. Bulbs must be within 40 to 60 feet of the bridge.
1. Open "Setting" in your Hue mobile app and select "Light Setup",
select the plus sign on the bottom right,
if this is a new light, try pressing "Search" and it will scan for your light.
1. Thew phone app allows you to name the location of the bulbs,
along with setting its status.

If you have any difficulties, go to Hue Tips webpage
["How to Connect and Reconnect Hue bulbs"][65].

# Hue Bridge Discovery
Discovery broker for IoT devices - https://nupnp.com
* [UPnP, Vulnerability As A Feature That Just Won’t Die](https://hackaday.com/2019/01/14/upnp-vulnerability-as-a-feature-that-just-wont-die/)

[There are several ways to discover a Hue bridge in a network][23].
Philips Hue provides a web site utility that can used
or you can find the bridge by ping scanning the network
then perform a arp lookup, then search for the "Philips Lighting BV"
vendor specific MAC segment `00:17:88`.

```bash
# discover the IP address of the bridge(s) on your network by visiting - www.meethue.com/api/nupnp
$ curl -s https://www.meethue.com/api/nupnp | jq -C '.'
[
  {
    "id": "001788fffe4a1515",
    "internalipaddress": "192.168.1.34"
  }
]

# ping scan the network to assure bridge becomes visiable and the search for the MAC address
$ nmap -sP 192.168.1.255/24 > /dev/null ; arp -na | grep "at 00:17:88"
? (192.168.1.34) at 00:17:88:4a:15:15 [ether] on eth0
```

Another discovery mechanism is Lamp Finder.
This option works through the Hue Lights application.
The Touchlink option is currently only built into an IOS application,
if you have an droid device you will have to use Lamp Finder on a PC or MAC.

# API Access
[Philips Hue provide considerable documentation on how to use the Hue APIs][18]
and for building your own applications.
(You'll also find some unoffical documentation [here][68].)
The full API documentation is only available to registered users,
which can be done [here][66].
To make use of the APIs,
you'll first need to [discover identify information for you Hue Bridge / devices][23].
For device discovery,
the Hue Bridge make use of the [Simple Service Discovery Protocol (SSDP)][19] part of
[Universal Plug and Play (UPnP)][20] set of networking protocols.

A typical Hue Bridge API workflow goes as follows:

1. Hue bridge discovery via SSDP (a multicast protocol over UDP).
1. A one-time application registration to the Hue bridge over HTTP and use of the Hue Bridge button.
You will be given a username, which is used for all subsequent API calls.
1. You may now place any API calls, using your username, against the Hue Bridge.

## API Access to Hue Bridge
The Hue Bridge has a RESTful API interface,
which behaves like a simple web service.
Therefore, you can use all the standard tools useful for RESTful APIs, like [curl][67].
Here are some examples:

```bash
# discover the IP address of the bridge(s) on your network
# by visiting - www.meethue.com/api/nupnp or the following
$ curl -s https://www.meethue.com/api/nupnp | jq -C '.'
[
  {
    "id": "001788fffe4a1515",
    "internalipaddress": "192.168.1.34"
  }
]

# gssdp-discover (from gupnp-tools) will list devices and services advertized over SSDP
sudo apt install gupnp-tools
gssdp-discover -i eth0 --timeout=3

# the hue bridge has a web server at 192.168.1.34
# this home page will list a long list of software licenses being used
google-chrome http://192.168.1.34

# description of the hue bridge
curl http://192.168.1.34/description.xml

# configuration information from the bridge
$ curl -s http://192.168.1.34/api/username/config | jq -C '.'
{
  "name": "Philips Hue",
  "datastoreversion": "59",
  "swversion": "01036659",
  "apiversion": "1.16.0",
  "mac": "00:17:88:4a:15:15",
  "bridgeid": "001788FFFE4A1515",
  "factorynew": false,
  "replacesbridgeid": null,
  "modelid": "BSB002"
}
```

**NOTE:** In the above, the username can be kept empty or a name which is not yet whitelisted.
Most queries require a username that has been posted in the bridges whitelist, but not for this command.

## Create a New User
A hue resource web address will always start with the following
RESTful root `http://<bridge IP address>/api`.
In most of the commands (the exceptions being when you create a username)
you’ll also include a `username` after this: `http://<bridge IP address>/api/<username>`.
This `username` determines if you have access to a Hue Bridge resources.
If you provide a `username` that isn’t known to the bridge,
then most resources won’t be available to you.
Using one that is authorized will allow you to interact with pretty much everything interesting.

So lets create a `username` for our bridge.
The link button on the bridge must be pressed and this command executed within 30 seconds.

```bash
# create a username for the bridge; make sure to press bridge button first
$ curl -s -X POST -d "{ \"devicetype\": \"jeff.irland\" }" http://192.168.1.34/api | jq -C '.'
[
  {
    "success": {
      "username": "KXCmAVYhD-kyRZZf1gvj37TIjxaFBnZkv4jU0ItE"
    }
  }
]
```

Once a new user has been created,
the user key is added to a ‘whitelist’,
allowing access to API commands that require a whitelisted user.
(At present, only this API, create new user command, doesn't require a whitelisted user.)

Now using the created username, lets query the bridge for configuration information.
This will also give us the whitelist of unernames for the bridge.
(**NOTE:** From the whitelist, it appears you can make multiple
usernames for a given `<application_name>#<devicename>`.)

```bash
# list of all configuration elements in the bridge
$ curl -s http://192.168.1.34/api/KXCmAVYhD-kyRZZf1gvj37TIjxaFBnZkv4jU0ItE/config | jq -C '.'
{
  "name": "Philips Hue",
  "zigbeechannel": 11,
  "bridgeid": "001788FFFE4A1515",
  "mac": "00:17:88:4a:15:15",
  "dhcp": true,
  "ipaddress": "192.168.1.34",
  "netmask": "255.255.255.0",
  "gateway": "192.168.1.1",
  "proxyaddress": "none",
  "proxyport": 0,
  "UTC": "2017-02-12T02:07:39",
  "localtime": "2017-02-11T21:07:39",
  "timezone": "America/New_York",
  "modelid": "BSB002",
  "datastoreversion": "59",
  "swversion": "01036659",
  "apiversion": "1.16.0",
  "swupdate": {
    "updatestate": 0,
    "checkforupdate": false,
    "devicetypes": {
      "bridge": false,
      "lights": [],
      "sensors": []
    },
    "url": "",
    "text": "",
    "notify": false
  },
  "linkbutton": false,
  "portalservices": true,
  "portalconnection": "connected",
  "portalstate": {
    "signedon": true,
    "incoming": true,
    "outgoing": true,
    "communication": "disconnected"
  },
  "factorynew": false,
  "replacesbridgeid": null,
  "backup": {
    "status": "idle",
    "errorcode": 0
  },
  "whitelist": {
    "7ZtphatpqlzZNZRf9JmxGLJ98d1wBjhRon7s51Nh": {
      "last use date": "2017-02-11T22:31:49",
      "create date": "2017-02-11T21:14:47",
      "name": "Hue 2#Samsung SM-G928V"
    },
    "7o9nIYryiEiQ4kG45njh1ZQ8x8E9NcW8SaLLsTV7": {
      "last use date": "2017-02-12T02:03:26",
      "create date": "2017-02-12T02:03:26",
      "name": "my_app#no_1"
    },
    "DuUWkSyJGXHd5yqViE8b7LWhYPkyjpgtARaqjD3p": {
      "last use date": "2017-02-12T02:07:39",
      "create date": "2017-02-12T02:04:32",
      "name": "my_app#no_1"
    },
    "KXCmAVYhD-kyRZZf1gvj37TIjxaFBnZkv4jU0ItE": {
      "last use date": "2018-10-14T02:57:05",
      "create date": "2018-10-14T02:55:33",
      "name": "jeff.irland"
    }
  }
}
```

We can also delete a user from the whitelist:

```bash
# delete username from bridge whitelist
$ curl -s -X DELETE  http://192.168.1.34/api/KXCmAVYhD-kyRZZf1gvj37TIjxaFBnZkv4jU0ItE/config/whitelist/7o9nIYryiEiQ4kG45njh1ZQ8x8E9NcW8SaLLsTV7 | jq -C '.'
[
  {
    "success": "/config/whitelist/7o9nIYryiEiQ4kG45njh1ZQ8x8E9NcW8SaLLsTV7 deleted"
  }
]
```

# Get Bridge Full Datastore
This command is used to fetch the entire datastore from the device,
including settings and state information for lights, groups, schedules and configuration.
It should only be used sparingly as it is resource intensive for the bridge.

```bash
# fetch the entire datastore from the device
$ curl -s http://192.168.1.34/api/KXCmAVYhD-kyRZZf1gvj37TIjxaFBnZkv4jU0ItE | jq -C '.'
{
  "lights": {
    "1": {
      "state": {
        "on": true,
        "bri": 74,
        "alert": "select",
        "reachable": true
      },
      "type": "Dimmable light",
      "name": "Hue white lamp 1",
      "modelid": "LWB014",
      "manufacturername": "Philips",
      "uniqueid": "00:17:88:01:02:3b:af:ab-0b",
      "swversion": "1.15.2_r19181",
      "swconfigid": "D1D2055F",
      "productid": "Philips-LWB014-1-A19DLv3"
    },
    "2": {
      "state": {
        "on": true,
        "bri": 76,
        "alert": "select",
        "reachable": true
      },
      "type": "Dimmable light",
      "name": "Hue white lamp 2",
      "modelid": "LWB014",
      "manufacturername": "Philips",
      "uniqueid": "00:17:88:01:02:3f:75:6c-0b",
      "swversion": "1.15.2_r19181",
      "swconfigid": "D1D2055F",
      "productid": "Philips-LWB014-1-A19DLv3"
    }
  },
  "groups": {
    "1": {
      "name": "Office",
      "lights": [
        "2",
        "1"
      ],
      "type": "Room",
      "state": {
        "all_on": true,
        "any_on": true
      },
      "class": "Office",
      "action": {
        "on": true,
        "bri": 74,
        "alert": "select"
      }
    }
  },
  "config": {
    "name": "Philips Hue",
    "zigbeechannel": 11,
    "bridgeid": "001788FFFE4A1515",
    "mac": "00:17:88:4a:15:15",
    "dhcp": true,
    "ipaddress": "192.168.1.34",
    "netmask": "255.255.255.0",
    "gateway": "192.168.1.1",
    "proxyaddress": "none",
    "proxyport": 0,
    "UTC": "2017-02-12T02:27:01",
    "localtime": "2017-02-11T21:27:01",
    "timezone": "America/New_York",
    "modelid": "BSB002",
    "datastoreversion": "59",
    "swversion": "01036659",
    "apiversion": "1.16.0",
    "swupdate": {
      "updatestate": 0,
      "checkforupdate": false,
      "devicetypes": {
        "bridge": false,
        "lights": [],
        "sensors": []
      },
      "url": "",
      "text": "",
      "notify": false
    },
    "linkbutton": false,
    "portalservices": true,
    "portalconnection": "connected",
    "portalstate": {
      "signedon": true,
      "incoming": true,
      "outgoing": true,
      "communication": "disconnected"
    },
    "factorynew": false,
    "replacesbridgeid": null,
    "backup": {
      "status": "idle",
      "errorcode": 0
    },
    "whitelist": {
      "7ZtphatpqlzZNZRf9JmxGLJ98d1wBjhRon7s51Nh": {
        "last use date": "2017-02-11T22:31:49",
        "create date": "2017-02-11T21:14:47",
        "name": "Hue 2#Samsung SM-G928V"
      },
      "DuUWkSyJGXHd5yqViE8b7LWhYPkyjpgtARaqjD3p": {
        "last use date": "2017-02-12T02:27:01",
        "create date": "2017-02-12T02:04:32",
        "name": "my_app#no_1"
      },
      "KXCmAVYhD-kyRZZf1gvj37TIjxaFBnZkv4jU0ItE": {
        "last use date": "2018-10-14T02:57:05",
        "create date": "2018-10-14T02:55:33",
        "name": "jeff.irland"
      }
  },
  "schedules": {},
  "scenes": {
    "nmdolrNiIqrLqsf": {
      "name": "Dimmed",
      "lights": [
        "1",
        "2"
      ],
      "owner": "7ZtphatpqlzZNZRf9JmxGLJ98d1wBjhRon7s51Nh",
      "recycle": false,
      "locked": false,
      "appdata": {
        "version": 1,
        "data": "Zxmrb_r01_d06"
      },
      "picture": "",
      "lastupdated": "2017-02-11T22:15:36",
      "version": 2
    },
    "o-KmOlwWiqT2nO1": {
      "name": "Nightlight",
      "lights": [
        "1",
        "2"
      ],
      "owner": "7ZtphatpqlzZNZRf9JmxGLJ98d1wBjhRon7s51Nh",
      "recycle": false,
      "locked": false,
      "appdata": {
        "version": 1,
        "data": "9hyxx_r01_d07"
      },
      "picture": "",
      "lastupdated": "2017-02-11T22:15:36",
      "version": 2
    },
    "uWgXAu12ZAEzwnk": {
      "name": "Bright",
      "lights": [
        "1",
        "2"
      ],
      "owner": "7ZtphatpqlzZNZRf9JmxGLJ98d1wBjhRon7s51Nh",
      "recycle": false,
      "locked": false,
      "appdata": {
        "version": 1,
        "data": "Hduas_r01_d05"
      },
      "picture": "",
      "lastupdated": "2017-02-11T22:15:35",
      "version": 2
    }
  },
  "rules": {},
  "sensors": {
    "1": {
      "state": {
        "daylight": null,
        "lastupdated": "none"
      },
      "config": {
        "on": true,
        "configured": false,
        "sunriseoffset": 30,
        "sunsetoffset": -30
      },
      "name": "Daylight",
      "type": "Daylight",
      "modelid": "PHDL00",
      "manufacturername": "Philips",
      "swversion": "1.0"
    }
  },
  "resourcelinks": {}
}
```

## API Access to Hue Bulbs
The full datastore dump from above,
we can now easily form queries for the individual bulbs:

```bash
# query information of all lights
$ curl -s http://192.168.1.34/api/KXCmAVYhD-kyRZZf1gvj37TIjxaFBnZkv4jU0ItE/lights | jq -C '.'
{
  "1": {
    "state": {
      "on": true,
      "bri": 74,
      "alert": "select",
      "reachable": true
    },
    "type": "Dimmable light",
    "name": "Hue white lamp 1",
    "modelid": "LWB014",
    "manufacturername": "Philips",
    "uniqueid": "00:17:88:01:02:3b:af:ab-0b",
    "swversion": "1.15.2_r19181",
    "swconfigid": "D1D2055F",
    "productid": "Philips-LWB014-1-A19DLv3"
  },
  "2": {
    "state": {
      "on": true,
      "bri": 76,
      "alert": "select",
      "reachable": true
    },
    "type": "Dimmable light",
    "name": "Hue white lamp 2",
    "modelid": "LWB014",
    "manufacturername": "Philips",
    "uniqueid": "00:17:88:01:02:3f:75:6c-0b",
    "swversion": "1.15.2_r19181",
    "swconfigid": "D1D2055F",
    "productid": "Philips-LWB014-1-A19DLv3"
  }
}

# turn light bulb number 1 off
curl -H "Accept: application/json" -X PUT --data '{"on":false}' http://192.168.1.34/api/KXCmAVYhD-kyRZZf1gvj37TIjxaFBnZkv4jU0ItE/lights/1/state

# turn all light bulbs in group 0 off
$ curl -s -H "Accept: application/json" -X PUT --data '{"on":false}' http://192.168.1.34/api/KXCmAVYhD-kyRZZf1gvj37TIjxaFBnZkv4jU0ItE/groups/0/action | jq -C '.'
[
  {
    "success": {
      "/groups/0/action/on": false
    }
  }
]

# change light 1 to brightness of 25 (min 0 and max is 254)
$ curl -s -X PUT -d "{ \"bri\": 5 }" http://192.168.1.34/api/KXCmAVYhD-kyRZZf1gvj37TIjxaFBnZkv4jU0ItE/lights/1/state | jq -C '.'
[
  {
    "success": {
      "/lights/1/state/bri": 25
    }
  }
]

# change all lights in group 1 to brightness 100
$ curl -s -X PUT -d "{ \"bri\": 100 }" http://192.168.1.34/api/KXCmAVYhD-kyRZZf1gvj37TIjxaFBnZkv4jU0ItE/groups/1/action | jq -C '.'
[
  {
    "success": {
      "/groups/1/action/bri": 100
    }
  }
]
```

# Hue React to External Events
The Hue Bridge has the API hooks to react to external events,
for example, your Hue bulbs flash if your garage door is opened.
In fact, [Hue supports sensors and switches][25] like presences sensors and wall switches with this API.
These devices are exposed under /sensors (see [Sensors API][24]).
There are just a few steps to follow.
Firstly, you need to create a [Generic IP Sensor][27], then [create a rule for that external sensor][29],
and then [create a trigger from the external IP sensor][28].
You can see the complete flow [here][26].

```bash
# get all sensors
$ curl -s http://192.168.1.34/api/KXCmAVYhD-kyRZZf1gvj37TIjxaFBnZkv4jU0ItE/sensors | jq -C '.'
{
  "1": {
    "state": {
      "daylight": null,
      "lastupdated": "none"
    },
    "config": {
      "on": true,
      "configured": false,
      "sunriseoffset": 30,
      "sunsetoffset": -30
    },
    "name": "Daylight",
    "type": "Daylight",
    "modelid": "PHDL00",
    "manufacturername": "Philips",
    "swversion": "1.0"
  }
}

# get all rules
$ curl -s http://192.168.1.34/api/KXCmAVYhD-kyRZZf1gvj37TIjxaFBnZkv4jU0ItE/rules | jq -C '.'
{}
```

# Zigbee OTA firmware updates
* [Zigbee OTA firmware updates](https://support.smartthings.com/hc/en-us/articles/215394303-ZigBee-OTA-firmware-updates)

# Hue Bridge Software Update
* Is my Hub's firmware up to date? - https://support.smartthings.com/hc/en-us/articles/207316543-Is-my-Hub-s-firmware-up-to-date-

From your application it is possible to [update new firmware to your hue bridge][30].
All the relevant parameters for updating the software
can be found by getting the bridge `config` information.
Check `/config/portalstate/signedon` to verify whether the bridge has a portal connection.
If no portal connection is available.
(You cannot reliably determine that the system is up-to-date if there is no portal connection.)
If you are connected to the portal,
the next step is to set the `checkforupdate` flag to `true`.
You then can perform the update.

```bash
# get hue bridge config information
$ curl -s http://192.168.1.34/api/KXCmAVYhD-kyRZZf1gvj37TIjxaFBnZkv4jU0ItE/config | jq -C '.portalstate'
{
  "signedon": true,
  "incoming": true,
  "outgoing": true,
  "communication": "disconnected"
}

# check hue bridge software version
$ curl -s http://192.168.1.34/api/KXCmAVYhD-kyRZZf1gvj37TIjxaFBnZkv4jU0ItE/config | jq -C '.swversion'
"01036659"

# set the `checkforupdate` flag to `true`
$ curl -s -X PUT -d "{\"swupdate\": {\"checkforupdate\":true}}" http://192.168.1.34/api/KXCmAVYhD-kyRZZf1gvj37TIjxaFBnZkv4jU0ItE/config | jq -C '.'
[
  {
    "success": {
      "/config/swupdate/checkforupdate": true
    }
  }
]

# check update state, 0 = no update available, 2 = update available, 3 = performing the update
$ curl -s http://192.168.1.34/api/KXCmAVYhD-kyRZZf1gvj37TIjxaFBnZkv4jU0ItE/config | jq -C '.swupdate.updatestate'
2

# perfrom the update by moving to updatestate 3
curl -s -X PUT -d "{\"swupdate\": {\"updatestate\":3}}" http://192.168.1.34/api/KXCmAVYhD-kyRZZf1gvj37TIjxaFBnZkv4jU0ItE/config | jq -C '.'
```

# Command-line Access to Hue Lights
You could use the above `curl` commands or the hue mobile app
to control Hue bulbs, but their are friendlier command-line tools.
Two that I came accross are:

* [`phue`][31] is a Python library for the Philips Hue system
* [`hue-cli`][32] is a command line interface to Philips Hue system

I have choose to use `hue`.
Its uses Node.js and is easy to install, setup and then use.
As shown below,
this tool will create a file called `hue.json` in your home directory.
This file will contain the Hum Bridge IP address and its `username`,
aka credentials to securely access the bridge.

```bash
# install hue-cli
npm install -g hue-cli

# have hue-cli find your hue bridge IP address - doesn't appear to work
hue search

# register the hue-cli app with the hue bridge
$ hue -H 192.168.1.34 register
please go and press the link button on your base station
Hue Base Station paired!
username: 5N5HPhstiQriP3FItnLJrSp9asw3Bxjbb32aeobX
config file written to `/home/jeff/.hue.json`

# list hub bridge configuration
hue config

# list the bulbs you have
$ hue lights
   1 Hue white lamp 1
   2 Hue white lamp 2

# get information about bulb 1
$ hue light 1
   1 on    51      Hue white lamp 1

# get full list of information
$ hue -j light 1
{
  "state": {
    "on": true,
    "bri": 51,
    "alert": "select",
    "reachable": true
  },
  "type": "Dimmable light",
  "name": "Hue white lamp 1",
  "modelid": "LWB014",
  "manufacturername": "Philips",
  "uniqueid": "00:17:88:01:02:3b:af:ab-0b",
  "swversion": "1.15.2_r19181",
  "swconfigid": "D1D2055F",
  "productid": "Philips-LWB014-1-A19DLv3",
  "id": "1"
}

# turn light 1 on
$ hue -j light 1 on
[
  {
    "success": {
      "/lights/1/state/on": true
    }
  }
]

# turn off all the lights
$ hue -j lights off
[
  {
    "success": {
      "/lights/1/state/on": false
    }
  }
]
[
  {
    "success": {
      "/lights/2/state/on": false
    }
  }
]

# increase bulb 1 brightness
 $ hue -j lights 1 +20
[
  {
    "success": {
      "/lights/1/state/bri": 71
    }
  }
]

# rename bulb 1
$ hue rename 1 "funky new name"
light 1 renamed

# check for available hue-cli updates
```bash
$ hue --updates
you are running the latest version 0.2.0
```

# Connecting Philips Hue Lights to Amazon Echo
One of the advertised features of the Phillips Hue Bridge (version 2 only)
is that [Amazon Echo][36] [Alexa skills][51] have been developed for you to support a Smart Home.

>**Definition:** "Smart Home" is the term commonly used to define a residence that has
>appliances, lighting, heating, air conditioning, TVs, computers,
>entertainment audio & video systems, security, and camera systems that are capable of
>communicating with one another and can be controlled remotely by a time schedule,
>from any room in the home, as well as remotely from any location in the world by phone or Internet.

To support the Smart Home concept,
Amazon's Alexa provides a set of built-in smart home capabilities,
called [Smart Home Skill API or Smart Home Skills][52],
using the [Alexa Skills Kit][53],
via [Alexa Voice Services][58].
The Smart Home Skills teaches Alexa how to control your Smart Home devices.
These Alexa Skills and the [wide range of compatible devices][55] make up what
Amazon calls the ["Alexa Smart Home"][54].
Also, the Philips Hue skill also includes support for [Scenes][59],
allowing you to voice control a collection of Philips Hue devices
assigned to various rooms in the house.

Both [Amazon][57] and [Phillips Hue][56] provide documentation to guide you in the setup.
Its easy to get your Hub Bridge controlled via Alexa.
Just say “Alexa,  discover devices”.
Alexa will scan your network for your Philips Hue Bridge
and once found it will add all of your Hue lights to Alexa.
In my case, it doscovered my two lamps called "office desk lamp" and "office desktop lamp".

Another key thing to do is to create a group within the Alexa phone app
(Select Main Menu > Smart Home > Your Groups).
In my case, all the bulbs in my home office where put in the group "office".

With these task completed, I could speak to my Echo Alexa and command my office bulbs via:

* Alexa, turn on office desktop
* Alexa, turn on office desktop lamp
* Alexa, turn on office desk
* Alexa, turn on office desk lamp
* Alexa, turn on office
* Alexa, turn on office lamps
* Alexa, make office bright
* Alexa, make office lamps bright
* Alexa, make office dim
* Alexa, make office lamps dim
* Alexa, set office bright
* Alexa, set office to 20%
* Alexa, set office lamps to 20%


Hue Skills - https://www.amazon.com/Philips-Hue/dp/B01LWAGUG7/ref=sr_1_1?ie=UTF8&qid=1486953070&sr=8-1&keywords=hue+skills
Alexa Support › Smart Home - https://www.amazon.com/gp/help/customer/display.html/ref=hp_bc_nav?ie=UTF8&nodeId=201749200
How to Setup Hue with Amazon Alexa - http://huetips.com/tutorials/how-to-setup-hue-with-amazon-alexa/
Alexa Hue - https://github.com/sarkonovich/Alexa-Hue
[Build your first custom skill in just 10 minutes](https://iot-for-all.com/alexa-whats-for-lunch-fb02062e54b9#.f11q7ts3k)

http://www.tomsguide.com/us/connect-philips-hue-amazon-echo,review-3471.html

----

**Samsung SmartThings**

# Samsung SmartThings
The [SmartThings Hub V2][69] is the brain for Samsung's wide range of smart devices and makes them work together.
At the time of write this,
there are [three generations of SmartThings hubs][70].
It is powered via house current but also has about 10 hours of backup power from 4 AA (non-recahrgable) batteries.
It supports devices communication protocols ZigBee, Z-Wave, and IP.
It requires an internet-connected router with an available Ethernet port,
plus the free SmartThings app for Android or iPhone smartphones.
It claims compatible with brands like
SmartThings, Arlo, Honeywell, Schlage, Bose, Yale, OSRAM, First Alert, and DLink devices.

You can use the SmartThings app or Amazon Alexa to control your devices.

The SmartThings Hub battery backup is optional and I choose not to install the batteries.
If my power goes out, your WiFi, Internet connectivity, extra will likely go with it,
unless your using a UPS.
Having the batteries installed, never really using then and therefore forgetting them,
only invites them to leak at a future date and destroying the hub.
And in general, the apps instructions are crappy to non-existent.

* [Samsung patches SmartThings Hub flaws](https://www.zdnet.com/article/internet-of-things-samsung-patches-smartthings-hub-flaws/)
* [Samsung SmartThings still hasn’t earned my trust in the smart home](https://www.cnet.com/news/samsung-smartthings-still-hasnt-earned-my-trust-in-the-smart-home/)

## SmartThings Developer Documentation
* [SmartThings Developer Documentation](https://smartthings.developer.samsung.com/docs/index.html)

### Sign-Up for SmartThings Accounts
If you haven’t signed up for a Samsung Account,
do so hear `https://account.samsung.com/membership/intro`.
Also, sign up for the SmartThings Developer Portal here

### Generate a Personal Access Token
Generate a personal access token for quick access to the SmartThings API

## Setup Samsung SmartThings Hub
* [Samsung SmartThings first impressions and initial setup](https://rcmtech.wordpress.com/2015/10/13/samsung-smartthings-first-impressions-and-initial-setup/)
* [How to Set Up and Use Your Samsung SmartThings System](https://www.makeuseof.com/tag/how-to-set-up-use-samsung-smartthings-system/)
* [SmartThings Community](https://community.smartthings.com/)
* [SmartThings Developer Site](https://smartthings.developer.samsung.com/)
* [SmartThings Groovy IDE](https://graph-na04-useast2.api.smartthings.com/)
* [Samsung Help for SmartThings](https://help.content.samsung.com/csweb/faq/searchFaq.do)
* [SmartThings App](https://www.samsung.com/global/galaxy/apps/smartthings/)

### Step 1: Power Up Hub and SmartThing App
Plug the hub into Ethernet port on your router and plug in the power cord.
There should be nothing in the USB ports.
Proceed to your mobile device and [download the SmartThings app][71] to continue the set up.
I had to fumble through the login and app start up because Samsung insisting on
pushing marketing materials at you and assuring you have no privacy rights what so ever.
Here are the procedures I used:

1. From the SmartThings App, tap the "Dashboard" icon in the lower left.
1. tap "Add device" mid-screen.
1. Tap "Add Device Manually".
1 Select "Search" and type in "smartthings hub" and
then select the "Add" button for "SmartThings Hub (2015 & 2013)
1. Register your hub by typing in the "Welcome Code" (found with the instructions inside the box)
and select the "Register Your Hub" button.
1. You should get a solid green light (online with the cloud) on the hub
after some other colors (see [here][72] for meaning of colors).

This took me multiple trys, and judging from other peoples experince on line,
I suspect it was somthing on Samsung's SmartThings Cloud that had to be cleared
automatically to get me on.

### Step X: Connect and Configure New Devices
You use this process to connect new ZigBee or Z-Wave devices to your SmartThings Hub.
I followed the procedures [here][] https://support.smartthings.com/hc/en-us/articles/205956950-How-to-connect-and-configure-new-devices (using "SmartThings app" tab).

My first sensor was the [Fibaro System Flood Sensor][73],
a Z-Wave water detector I [purchase on Amazon][74].
It also includes temperature sensor, tamper sensor, a acoustic & visual alarm,
and you can even use an [external probe][81].
You'll find a [manual for the Flood Sensor][75]and [knowledge base][82]
on Fibaro's website but the SmartThings installation is found [here][76],
and a Youtube revew [here][80].

First, you need to physically prepare the device for operation by
[twist open the casing and remove the battery insulator][77].
The Samsung directions maybe wrong, so use the
video ["Tutorial Fibaro Flood Sensor"][78] as your guide.
Particularly important is to toggle the switch three time **fast**.

At this point, data should start flowing from the water sensor to SmartThings.
You should get updates on the smartphone app and SmartThings Cloud UI.
[Data is refreshed every 10 minutes][79] (except for water sensing).

### Step X: Setup Samsung SmartThings Portals
There are several websites your going to want access to,
so log into the following and establish accounts (if not done already):

* [Samsung Account](https://account.samsung.com/membership/index.do)
* [SmartThings Community](https://community.smartthings.com/)
* [SmartThings Developers](https://smartthings.developer.samsung.com/)
* [SmartThings Groovy IDE](https://graph-na04-useast2.api.smartthings.com/)

### Step X: Edit Name of SmartThings Hub
### Step X:
### Step X:

## Samsung SmartThings Hub Vulnerabilities
* [20 Samsung SmartThings Hub vulnerabilities jeopardized smart homes](https://www.digitaltrends.com/home/20-vulnernabilties-exposed-in-samsung-smartthings-hub/)

# SmartThings REST API
An active internet connection is always required to manually control your devices and Automations via the SmartThings mobile app. During an internet outage, the Hub will not be able to talk to the SmartThings cloud or mobile app; you will not be notified via the app of a local event until internet is restored.

## OAuth Integration
[SmartThings uses OAuth2][84] for authentication.
To integrate a third-party application with SmartThings,
you must first [submit a request][85].
Once approved, you can enable users of your platform to interact with
[SmartThings Cloud][86] through your application.

The OAuth 2.0 flows are complex and [OAuth 2 specifications][87] can be a bit confusing to read.
So it can be difficult to understand exactly what is going on under the covers.
If you don't have a good understand of the OAuth 2 Framework,
it could helpful to study these sources:

* [OAuth Introduction and Terminology](https://www.youtube.com/watch?v=zEysfgIbqlg)
* [OAuth Codes And Tokens](https://www.youtube.com/watch?v=8CHpnTysVOo)
* [OAuth Grant Types](https://www.youtube.com/watch?v=1ZX7554l8hY)

* [An Introduction To OpenID Connect](https://www.youtube.com/watch?v=6DxRTJN1Ffo)
* [OpenID Connect Flows](https://www.youtube.com/watch?v=WVCzv50BslE)

* [OAuth 2.0 Beginner's Guide](https://dzone.com/articles/oauth-20-beginners-guide)
* [(Understanding) OAuth2… for real?](https://www.youtube.com/watch?v=f36s7KtnUD4)
* [OAuth 2.0 explained](https://connect2id.com/learn/oauth-2)
* [OAuth 2 Simplified](https://aaronparecki.com/oauth-2-simplified/)
* [What the Heck is OAuth?](https://developer.okta.com/blog/2017/06/21/what-the-heck-is-oauth)
* [An Overview of OAuth2 using the REST Client Components](https://www.youtube.com/watch?v=EuEovgmVCUs)
* [When To Use Which (OAuth2) Grants and (OIDC) Flows](https://medium.com/@robert.broeckelmann/when-to-use-which-oauth2-grants-and-oidc-flows-ec6a5c00d864)
* [An OAuth2 Grant Selection Decision Tree for Securing REST APIs](https://medium.com/scalable/an-oauth2-grant-selection-decision-tree-for-securing-rest-apis-d63b5c0c8900)
* [A Guide To OAuth 2.0 Grants](https://alexbilbie.com/guide-to-oauth-2-grants/)
* [OAuth 2.0: An Overview](https://www.youtube.com/watch?v=CPbvxxslDTU)
* [An Introduction to OAuth 2](https://www.digitalocean.com/community/tutorials/an-introduction-to-oauth-2)
* [Which OAuth 2.0 flow should I use?](https://auth0.com/docs/api-auth/which-oauth-flow-to-use)
* [Understanding OAuth2 and Building a Basic Authorization Server of Your Own: A Beginner’s Guide](https://medium.com/google-cloud/understanding-oauth2-and-building-a-basic-authorization-server-of-your-own-a-beginners-guide-cf7451a16f66)

# Step 0:
Start with reading the [SmartThings API (v1.0-PREVIEW)][88] documentation.

# Step 1: Geneate Authorization Bearer Token
All SmartThings resources are protected with OAuth 2.0 Bearer Tokens
sent on the request as an `Authorization: Bearer <TOKEN>` header,
and operations require specific OAuth scopes that specify the exact permissions authorized by the user.

There are two types of tokens: SmartApp tokens, and personal access tokens:

* **SmartApp tokens** are used to communicate between third-party integrations, or SmartApps, and the SmartThings API.
When a SmartApp is called by the SmartThings platform, it is sent an authorization token
that can be used to interact with the SmartThings API.
* **Personal access tokens** are used to interact with the API for non-SmartApp use cases.
They can be created and managed on the personal access tokens page `https://account.smartthings.com/tokens`.

My interests are access the SmartThings Cloud using `curl` scripts, Postman, etc.
Therefore, I'll generate a personal acess token via
the personal access tokens page `https://account.smartthings.com/tokens`.
I generated the following:

* **Token Name:** `personal-token`
* **Scope:** Devices, Installed Applications, Locations, Applications, Device Profiles, Schedules, Scenes, Notifications, Invitations, Custom Capabilities
* **Personal Access Token:** `1c07f3ba-8eb1-47fe-bdd3-3585bfbbf5b1`

If for some reason I wish to delete this token or generate a new token,
return to the personal access tokens page `https://account.smartthings.com/tokens`.

# Step 2: Retrieve App Credentials
# Step 3: Retrieve App Access Token

```bash
# list all locations currently available in a user account
$ curl -s -X GET -H "Content-Type: application/json" \
    -H "Authorization: Bearer 1c07f3ba-8eb1-47fe-bdd3-3585bfbbf5b1" \
    https://api.smartthings.com/v1/locations | jq -C '.'

{
  "items": [
    {
      "locationId": "33310e8e-4895-4f7e-882c-6e8d776500f9",
      "name": "Home"
    }
  ],
  "_links": null
}

# list all rooms currently available in a location
$ curl -s -X GET -H "Content-Type: application/json" \
    -H "Authorization: Bearer 1c07f3ba-8eb1-47fe-bdd3-3585bfbbf5b1" \
    https://api.smartthings.com/v1/locations/33310e8e-4895-4f7e-882c-6e8d776500f9/rooms | jq -C '.'

{
  "items": [
    {
      "roomId": "79d727d5-1b90-4d55-9b34-253d944400ae",
      "locationId": "33310e8e-4895-4f7e-882c-6e8d776500f9",
      "name": "Kitchen",
      "backgroundImage": null
    },
    {
      "roomId": "0db0f447-f396-4dd7-b9e1-b5424e08c14a",
      "locationId": "33310e8e-4895-4f7e-882c-6e8d776500f9",
      "name": "Office",
      "backgroundImage": null
    },
    {
      "roomId": "376b7e87-c52a-4c56-96f8-f0244048f079",
      "locationId": "33310e8e-4895-4f7e-882c-6e8d776500f9",
      "name": "Basement",
      "backgroundImage": null
    }
  ],
  "_links": null
}

# get a list of devices
$ curl -s -X GET -H "Content-Type: application/json" \
    -H "Authorization: Bearer 1c07f3ba-8eb1-47fe-bdd3-3585bfbbf5b1" \
    https://api.smartthings.com/v1/devices | jq -C '.'

{
  "items": [
    {
      "deviceId": "69cc41f5-1756-41a9-acd5-7f29d10df1f1",
      "name": "Jeffrey Irland's SAMSUNG-SM-G928V",
      "label": "Jeffrey Irland's SAMSUNG-SM-G928V",
      "locationId": "33310e8e-4895-4f7e-882c-6e8d776500f9",
      "deviceTypeId": "8a9d4b1e3bfce38a013bfce42d360015",
      "deviceTypeName": "Mobile Presence",
      "deviceNetworkType": "UNKNOWN",
      "components": [
        {
          "id": "main",
          "capabilities": [
            {
              "id": "presenceSensor",
              "version": 1
            },
            {
              "id": "sensor",
              "version": 1
            },
            {
              "id": "occupancySensor",
              "version": 1
            }
          ]
        }
      ],
      "dth": {
        "deviceTypeId": "8a9d4b1e3bfce38a013bfce42d360015",
        "deviceTypeName": "Mobile Presence",
        "deviceNetworkType": "UNKNOWN",
        "completedSetup": false,
        "networkSecurityLevel": "UNKNOWN"
      },
      "type": "DTH"
    },
    {
      "deviceId": "f5c594e7-7094-4b0a-b05a-60891174890f",
      "name": "Fibaro Flood Sensor",
      "label": "Bathroom Water Sensor",
      "deviceManufacturerCode": "010F-0B00-2001",
      "locationId": "33310e8e-4895-4f7e-882c-6e8d776500f9",
      "roomId": "376b7e87-c52a-4c56-96f8-f0244048f079",
      "deviceTypeId": "975c2616-84ae-4798-904f-710d0ce1f0a7",
      "deviceTypeName": "Fibaro Flood Sensor",
      "deviceNetworkType": "ZWAVE",
      "components": [
        {
          "id": "main",
          "label": "Bathroom Water Sensor",
          "capabilities": [
            {
              "id": "temperatureMeasurement",
              "version": 1
            },
            {
              "id": "battery",
              "version": 1
            },
            {
              "id": "waterSensor",
              "version": 1
            },
            {
              "id": "configuration",
              "version": 1
            },
            {
              "id": "sensor",
              "version": 1
            },
            {
              "id": "healthCheck",
              "version": 1
            }
          ]
        }
      ],
      "dth": {
        "deviceTypeId": "975c2616-84ae-4798-904f-710d0ce1f0a7",
        "deviceTypeName": "Fibaro Flood Sensor",
        "deviceNetworkType": "ZWAVE",
        "completedSetup": false,
        "networkSecurityLevel": "ZWAVE_LEGACY_NON_SECURE",
        "hubId": "207c841c-d1a1-4ef8-8490-f15582fd7960"
      },
      "type": "DTH"
    },
    {
      "deviceId": "cad90c8b-7f12-443b-bb82-8fbc2e5b8bbe",
      "name": "Philips Hue White",
      "label": "Philips Hue White",
      "locationId": "33310e8e-4895-4f7e-882c-6e8d776500f9",
      "roomId": "79d727d5-1b90-4d55-9b34-253d944400ae",
      "deviceTypeId": "4a8b7081-ebf5-4c8b-ad22-5573b3eac389",
      "deviceTypeName": "ZLL Dimmer Bulb",
      "deviceNetworkType": "ZIGBEE",
      "components": [
        {
          "id": "main",
          "capabilities": [
            {
              "id": "switch",
              "version": 1
            },
            {
              "id": "polling",
              "version": 1
            },
            {
              "id": "configuration",
              "version": 1
            },
            {
              "id": "switchLevel",
              "version": 1
            },
            {
              "id": "refresh",
              "version": 1
            },
            {
              "id": "actuator",
              "version": 1
            },
            {
              "id": "healthCheck",
              "version": 1
            }
          ]
        }
      ],
      "dth": {
        "deviceTypeId": "4a8b7081-ebf5-4c8b-ad22-5573b3eac389",
        "deviceTypeName": "ZLL Dimmer Bulb",
        "deviceNetworkType": "ZIGBEE",
        "completedSetup": true,
        "networkSecurityLevel": "UNKNOWN",
        "hubId": "207c841c-d1a1-4ef8-8490-f15582fd7960"
      },
      "type": "DTH"
    },
    {
      "deviceId": "9b314107-971b-4bed-ba1c-56a02e61ce30",
      "name": "Fibaro Flood Sensor",
      "label": "Kitchen Sink Water Sensor",
      "deviceManufacturerCode": "010F-0B00-2001",
      "locationId": "33310e8e-4895-4f7e-882c-6e8d776500f9",
      "roomId": "79d727d5-1b90-4d55-9b34-253d944400ae",
      "deviceTypeId": "975c2616-84ae-4798-904f-710d0ce1f0a7",
      "deviceTypeName": "Fibaro Flood Sensor",
      "deviceNetworkType": "ZWAVE",
      "components": [
        {
          "id": "main",
          "label": "Kitchen Sink Water Sensor",
          "capabilities": [
            {
              "id": "temperatureMeasurement",
              "version": 1
            },
            {
              "id": "battery",
              "version": 1
            },
            {
              "id": "waterSensor",
              "version": 1
            },
            {
              "id": "configuration",
              "version": 1
            },
            {
              "id": "sensor",
              "version": 1
            },
            {
              "id": "healthCheck",
              "version": 1
            }
          ]
        }
      ],
      "dth": {
        "deviceTypeId": "975c2616-84ae-4798-904f-710d0ce1f0a7",
        "deviceTypeName": "Fibaro Flood Sensor",
        "deviceNetworkType": "ZWAVE",
        "completedSetup": true,
        "networkSecurityLevel": "UNKNOWN",
        "hubId": "207c841c-d1a1-4ef8-8490-f15582fd7960"
      },
      "type": "DTH"
    }
  ],
  "_links": {}
}

# get a device's description
$ curl -s -X GET -H "Content-Type: application/json" \
    -H "Authorization: Bearer 1c07f3ba-8eb1-47fe-bdd3-3585bfbbf5b1" \
    https://api.smartthings.com/v1/devices/f5c594e7-7094-4b0a-b05a-60891174890f | jq -C '.'

{
  "deviceId": "f5c594e7-7094-4b0a-b05a-60891174890f",
  "name": "Fibaro Flood Sensor",
  "label": "Bathroom Water Sensor",
  "deviceManufacturerCode": "010F-0B00-2001",
  "locationId": "33310e8e-4895-4f7e-882c-6e8d776500f9",
  "roomId": "376b7e87-c52a-4c56-96f8-f0244048f079",
  "deviceTypeId": "975c2616-84ae-4798-904f-710d0ce1f0a7",
  "deviceTypeName": "Fibaro Flood Sensor",
  "deviceNetworkType": "ZWAVE",
  "components": [
    {
      "id": "main",
      "label": "Bathroom Water Sensor",
      "capabilities": [
        {
          "id": "temperatureMeasurement",
          "version": 1
        },
        {
          "id": "battery",
          "version": 1
        },
        {
          "id": "waterSensor",
          "version": 1
        },
        {
          "id": "configuration",
          "version": 1
        },
        {
          "id": "sensor",
          "version": 1
        },
        {
          "id": "healthCheck",
          "version": 1
        }
      ]
    }
  ],
  "dth": {
    "deviceTypeId": "975c2616-84ae-4798-904f-710d0ce1f0a7",
    "deviceTypeName": "Fibaro Flood Sensor",
    "deviceNetworkType": "ZWAVE",
    "completedSetup": false,
    "networkSecurityLevel": "ZWAVE_LEGACY_NON_SECURE",
    "hubId": "207c841c-d1a1-4ef8-8490-f15582fd7960"
  },
  "type": "DTH"
}

# get the full status of a device - Bathroom Water Sensor
$ curl -s -X GET -H "Content-Type: application/json" \
    -H "Authorization: Bearer 1c07f3ba-8eb1-47fe-bdd3-3585bfbbf5b1" \
    https://api.smartthings.com/v1/devices/f5c594e7-7094-4b0a-b05a-60891174890f/status | jq -C '.[]'

{
  "main": {
    "configuration": {},
    "waterSensor": {
      "water": {
        "value": "dry"
      }
    },
    "healthCheck": {
      "checkInterval": {
        "value": 28920,
        "unit": "s",
        "data": {
          "protocol": "zwave",
          "hubHardwareId": "000F"
        }
      },
      "DeviceWatch-Enroll": {
        "value": null
      },
      "healthStatus": {
        "value": null,
        "data": {}
      },
      "DeviceWatch-DeviceStatus": {
        "value": null,
        "data": {}
      }
    },
    "temperatureMeasurement": {
      "temperature": {
        "value": 69.33,
        "unit": "F"
      }
    },
    "sensor": {},
    "battery": {
      "battery": {
        "value": 100,
        "unit": "%"
      }
    }
  }
}

# get wet/dry and battery status of flood sensor - Bathroom Water Sensor
$ curl -s -X GET -H "Content-Type: application/json" \
    -H "Authorization: Bearer 1c07f3ba-8eb1-47fe-bdd3-3585bfbbf5b1" \
    https://api.smartthings.com/v1/devices/f5c594e7-7094-4b0a-b05a-60891174890f/status | \
    jq -C '.[] | { moisture: .components.main.waterSensor.water.value, battery: .components.main.battery.battery.value }'

{
  "moisture": "dry",
  "battery": 100
}

# get wet/dry and battery status of flood sensor - Kitchen Sink Water Sensor
curl -s -X GET -H "Content-Type: application/json" \
    -H "Authorization: Bearer 1c07f3ba-8eb1-47fe-bdd3-3585bfbbf5b1" \
    https://api.smartthings.com/v1/devices/9b314107-971b-4bed-ba1c-56a02e61ce30/status | \
    jq -C '.[] | { moisture: .components.main.waterSensor.water.value, battery: .components.main.battery.battery.value }'
```

```bash
DEVICE_ID_1="f5c594e7-7094-4b0a-b05a-60891174890f"   # Bathroom Water Sensor
DEVICE_ID_2="9b314107-971b-4bed-ba1c-56a02e61ce30"   # Kitchen Sink Water Sensor

echo "{ \"date\": \"$(date)\" }"

curl -s -X GET -H "Content-Type: application/json" \
    -H "Authorization: Bearer 1c07f3ba-8eb1-47fe-bdd3-3585bfbbf5b1" \
        https://api.smartthings.com/v1/devices/$(DEVICE_ID_1) | jq -C '. | { label: .label }'

curl -s -X GET -H "Content-Type: application/json" \
    -H "Authorization: Bearer 1c07f3ba-8eb1-47fe-bdd3-3585bfbbf5b1" \
    https://api.smartthings.com/v1/devices/$(DEVICE_ID_1)/status | \
    jq -C '.[] | { moisture: .components.main.waterSensor.water.value, battery: .components.main.battery.battery.value }'
```

* [SmartThings Developer Documentation](https://smartthings.developer.samsung.com/docs/index.html)
* [SmartThings REST API](https://github.com/bradymholt/smartthings-rest-api)

# Connecting Samsung SmartThings to Amazon Echo
* [Connect Smart Home Devices to Your Echo with a Smart Home Hub](https://www.amazon.com/gp/help/customer/display.html?nodeId=G202189640&ref_=pe_2242090_353040100_SAP_AUCC_LR_HV_Trans_QSG_hub)

# LANnouncer
LANnouncer is a device driver for the Samsung SmartThings home automation hub, bringing audio alerts to the system through any connected Android device.
* [LANnouncer](http://www.keybounce.com/lannouncer/)
* [LANnouncer alerts in Home Assistant!!](https://www.youtube.com/watch?v=VMA9ZqgLNIA)

# Bixby
[Bixby](https://www.cnet.com/news/samsung-will-let-developers-make-apps-that-tap-into-bixby-add-more-languages-and-put-on-more-devices/)
is Samsung's take on the pocket assistant, combining machine learning, voice assistance,
visual help and more into an all-encompassing helper.

* [Samsung Bixby: Everything you need to know!](https://www.androidcentral.com/bixby)



[01]:http://www2.meethue.com/en-us/productdetail/philips-hue-white-sk-a19
[02]:https://www.earthled.com/collections/a19-led-light-bulbs
[03]:http://www2.meethue.com/en-us/productdetail/philips-hue-bridge
[04]:http://www.zigbee.org/zigbee-for-developers/applicationstandards/zigbee-light-link/
[05]:https://www.nxp.com/documents/user_manual/JN-UG-3091.pdf
[06]:http://www.symmetron.ru/suppliers/lighting/files/lighting/components/wireless/zigbee-light-link.pdf
[07]:http://www2.meethue.com/en-us/friends-of-hue/google-home-products/
[08]:http://www2.meethue.com/en-us/friends-of-hue/amazon-alexa/
[09]:http://www2.meethue.com/en-us/friends-of-hue/ifttt/
[10]:http://www2.meethue.com/en-us/friends-of-hue/
[11]:http://www2.meethue.com/en-us/friends-of-hue/logitech/
[12]:http://www.gelinkbulbs.com/
[13]:http://creebulb.com/connected
[14]:http://www.howtogeek.com/248178/the-difference-between-all-of-philips-hue-light-bulbs/
[15]:https://developers.meethue.com/content/do-3rd-party-bulbs-work-newest-hue-hubs
[16]:https://developers.meethue.com/
[17]:https://developers.meethue.com/philips-hue-api
[18]:https://developers.meethue.com/documentation/getting-started
[19]:https://en.wikipedia.org/wiki/Simple_Service_Discovery_Protocol
[20]:https://en.wikipedia.org/wiki/Universal_Plug_and_Play
[21]:http://www2.meethue.com/en-us/about-hue/get-started/
[22]:http://huetips.com/
[23]:https://developers.meethue.com/documentation/hue-bridge-discovery
[24]:https://developers.meethue.com/documentation/sensors-api
[25]:https://developers.meethue.com/documentation/supported-sensors
[26]:https://developers.meethue.com/documentation/how-use-ip-sensors
[27]:https://developers.meethue.com/documentation/supported-sensors#genericSensor
[28]:https://developers.meethue.com/documentation/sensors-api#56_update_sensor
[29]:https://developers.meethue.com/documentation/rules-api
[30]:https://developers.meethue.com/documentation/software-update
[31]:https://github.com/studioimaginaire/phue
[32]:https://github.com/bahamas10/hue-cli
[33]:https://developers.meethue.com/
[34]:http://huelights.com/
[35]:http://huetips.com/
[36]:https://www.amazon.com/gp/help/customer/display.html/ref=?ie=UTF8&nodeId=201399130
[37]:https://www.amazon.com/dp/B01JTQCD3W
[38]:http://www.tomsguide.com/us/best-smart-switch,review-4087.html
[39]:https://www.howtogeek.com/252249/the-difference-between-belkins-wemo-switch-and-wemo-insight-switch/
[40]:http://www.belkin.com/us/p/P-F7C029/
[41]:http://www.belkin.com/us/p/P-F5Z0489/
[42]:http://www.belkin.com/uk/p/P-F7C029/
[43]:https://www.cnet.com/news/smart-bulbs-vs-smart-switches-the-pros-and-cons-of-connected-lighting/
[44]:https://pypi.python.org/pypi/ouimeaux
[45]:https://www.hardill.me.uk/wordpress/2016/01/11/new-wemo-nodes-for-node-red/
[46]:https://github.com/timonreinhard/wemo-client
[47]:https://www.npmjs.com/package/belkin-wemo-command-line-tools
[48]:https://www.wired.com/2014/12/review-wemo-maker/
[49]:http://hackaday.com/2015/11/17/belkin-wemo-teardown/
[50]:https://www.invincealabs.com/blog/2016/11/wemo-hardware-bypass/
[51]:https://www.amazon.com/b?ie=UTF8&node=13727921011
[52]:https://developer.amazon.com/alexa/smart-home
[53]:https://developer.amazon.com/alexa-skills-kit
[54]:https://www.amazon.com/alexa-smart-home/b?node=13575751011
[55]:http://smarthome.reviewed.com/features/everything-that-works-with-amazon-echo-alexa
[56]:http://huetips.com/tutorials/how-to-setup-hue-with-amazon-alexa/
[57]:https://www.amazon.com/gp/help/customer/display.html?nodeId=201749240
[58]:https://developer.amazon.com/alexa-voice-service
[59]:https://developer.amazon.com/public/solutions/alexa/alexa-skills-kit/docs/providing-scenes-in-a-smart-home-skill
[60]:http://hackaday.com/2015/12/15/philips-says-no-internet-of-things-for-you/
[61]:https://developers.meethue.com/documentation/friends-hue-update
[62]:http://hackaday.com/2016/07/26/root-on-the-philips-hue-iot-bridge/
[63]:http://colinoflynn.com/2016/07/getting-root-on-philips-hue-bridge-2-0/
[64]:https://medium.com/@rxseger/enabling-the-hidden-wi-fi-radio-on-the-philips-hue-bridge-2-0-42949f0154e1#.cymnc3e1v
[65]:http://huetips.com/help/bulb-connectivity/
[66]:https://www.developers.meethue.com/user/register
[67]:https://curl.haxx.se/
[68]:http://www.burgestrand.se/hue-api/
[69]:https://blog.smartthings.com/tag/smartthings-v2-hub/
[70]:https://support.smartthings.com/hc/en-us/articles/207477083-Which-version-of-the-Hub-do-I-have-
[71]:https://www.samsung.com/global/galaxy/apps/smartthings/
[72]:https://support.smartthings.com/hc/en-us/articles/205956920-What-do-the-LED-colors-on-the-Hub-mean-
[73]:https://www.fibaro.com/en/products/flood-sensor/
[74]:https://www.amazon.com/Fibaro-Z-Wave-Flood-Sensor-FGFS-101/dp/B00P2PJI6U
[75]:https://manuals.fibaro.com/flood-sensor/
[76]:https://support.smartthings.com/hc/en-us/articles/204076164-Fibaro-Flood-Sensor
[77]:https://manuals.fibaro.com/content/manuals/en/FGFS-101/FGFS-101-EN-SG.pdf
[78]:https://www.youtube.com/watch?v=Fs-bW8efjuE
[79]:https://manuals.fibaro.com/hk-flood-sensor/
[80]:https://www.youtube.com/watch?v=dUuPXqWbj58
[81]:https://www.youtube.com/watch?v=0idfyuXgJ70
[82]:https://manuals.fibaro.com/knowledge-base/
[83]:https://diyhue.github.io/
[84]:https://smartthings.developer.samsung.com/docs/oauth/oauth-integration.html
[85]:https://smartthings.developer.samsung.com/docs/oauth/oauth-integration.html#Request-to-integrate-third-party-applications
[86]:https://www.smartthings.com/
[87]:https://oauth.net/2/
[88]:https://smartthings.developer.samsung.com/docs/api-ref/st-api.html
[89]:
[90]:
[91]:
[92]:
[93]:
[94]:
[95]:
[96]:
[97]:
[98]:
[99]:
[100]:
