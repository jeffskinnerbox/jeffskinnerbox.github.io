*
* [The definitive Node.js handbook](https://medium.freecodecamp.org/the-definitive-node-js-handbook-6912378afc6e)

Overall, you can be pretty underwhelmed by some of the implementations for the Internet of Things.
Most of the ways in which devices are being connected to the Internet are not very interesting,
if not just a bad idea.
Even while underwhelmed by IoT,
there are a handful of areas that I do find interesting,
One of the interesting thing is how IoT can be fueling by [APIs][24].
IoT solutions can be designed to be both [API provider][26] as well as an [API consumer][25].

While [mobile applications][27] have historically been the biggest driver of API development,
they are just API consumers, as are most websites.
Then there are an increasing number of API providers, particularly commercial businesses,
who offer offer access to their services or data via APIs.

# What is IoT?
The trouble with the Internet of Things is that the things
don’t really talk to each other.
Devices like the Nest thermostat, the Dropcam camera, etc.
do a pretty good job of talking **through** the Internet
and communicate with their assigned app or dashboard.
But such devices would be so much more useful if they also exchanged information on their own
or at least facilitated that exchange under your direction.

Let me paraphrase [Brian Mulloy of Apigee][33], who I think said it best:

>Let's say I have smart car tires that can communicate their identity, temperature, pressure status, etc.
I could fire up my iPhone app and see if my tires have enough air in them,
but that's not IoT.
IoT is when I can arrive a my local gas station and my car can talk to the air pressure actuator.
The actuator then tells me which of my tires need to be pumped up and
sets the air pressure to the proper value given the current tire pressure and tempature.
That is what the Internet of Things is all about.

One of the difficulties facing IoT solution developers with this broad IoT vision is that
connected devices can each speak with an app or with an end user,
but the infrastructure isn’t there to enable the objects to speak directly to each other
or some arbitrary enterprise system.
There is no way for one connected device to know of another
and easily share a permission in the same way that an end user might enable [OAuth 2.0][38]
so that her Instagram photos are posted on Facebook.

If you have a Pebble Watch, Google Glass, and a smartphone,
and when a new email or text comes through, your are bombarded by multiple notifications from each device.
No one thought about creating a user experience where the devices work together.
We don’t have the design metaphors to really think about what an IoT would look like.
The hope is that with Zetta, developers will be able to start defining
an end-user experience that makes sense.

The Internet of Things isn't about things at all,
and its not about the connections we create wirelessly or other wise.
Its about creating reusable services that make accessible the intrinsic data or control
hidden within things.
Then combine these services to transform the data and orchestrating the interactions among the things
to create a user experience that is useful or engaging.

This perspective of IoT has several primary tenets:

1. Focusing on IoT devices (and their gateways and supporting platforms)
as service-first (aka [API-first][23]).
The idea here isn't to simply to create “an internet-connected thing.”
Instead we could make the things discrete capabilities more accessible, reusable,
and useful when combined with additional services.

1. Focusing on interoperability and extensibility.
Your favorite IoT device may go away or evolve but the need you wish to satisfies may last a long time.
The useful capabilities of the thing need to be expose so they can be manipulated
in know and yet to be defined ways.
1. Beyond the raw capabilities offered by IoT,
earning and keeping trust is essential to an IoT solution.
Trust is not only about privacy and security
but it is also support long enough to warrant the investment,
and the nurturing / expansion of a rich eco-system of things and user experiences.

Creating an architecture to facilitates this accessibility of things
and the orchestration of a user experience,
while honoring the implied tenets, should be our mission.

# Proposal
I propose here the use of REST + Hypermedia
(aka HATEOAS, an abbreviation for "Hypermedia As The Engine Of Application State"
or [Hypermedia APIs][32])
when architecting our IoT solutions.
When applied to this architecture style, we should use the tool Zetta.js
to instantiate our design and create the executable for our solutions.
Of course, supporting tools will also be needed, and they should primarily be Node.js and Node-RED.

This isn't the only API strategy and [vendors offer a variety of methods and capabilities][19].
The picture is a bit blurry at the moment
I understand that [Hypermedia is debate topic among API designers][34]
Certainly a [controversial topic][35],
but gaining traction as a solution to the Internet of Things.

A shortcoming facing IoT architects with a broad IoT vision is that, at present,
connected devices can each speak with dedicated mobile app or server,
but the infrastructure isn’t there to enable the device to speak directly to each other,
be orchestrated in a common way,
or offer services to a yet to be defined application.
Today, IoT solutions are delivered as a vertical stack of user interface, some things in the middle
like edge gateway or cloud server, and the device itself.

Rarely is an IoT device "released into the wild" without these supporting component
developed and deliver together with the device.
And when it does,
interfacing it is based on a set of low level protocols (i.e. OSI Layer 1 and 2),
and it must stay within its ecosystem (e.g. ZigBee, PubSub, etc.)
of many other slave devices, tethered to a gateway
that communicates to the enterprise in its behalf.
The device isn't addressable directly but cloaked behind something (e.g. gateway),
creating an artificial boundary that only exist to service the physical needs
(e.g. low power radios to save battery life, translation of protocols)
of the device.
Applications and the enterprise wish to interface directly with these devices,
unencumbered as services and not as chunks of hardware.
They need to be addressable just like any web API.

My proposal is that we allow for this.

# Background
## REST
Much as been written about REST APIs,
[so browse the web to get the painful details][31],
but I like the following description:

>Being a software architectural style, the REST application architecture
provides the ability to increase the performance of your projects
by creating a more maintainable architecture.

While this doesn't truly describe REST,
it does say why its used as an architectural style.

## Hypermedia
Hypermedia, an extension of the term hypertext,
is a random access medium of information which includes graphics, audio, video, plain text, and hyperlinks.
Hypermedia is a subset of multimedia,
which includes non-interactive linear presentations of content (e.g. FM radio station).
The World Wide Web is a classic example of hypermedia,
whereas a non-interactive cinema presentation is an example of standard multimedia
due to the absence of hyperlinks.

What about IoT device and products?
They generally do not provide a web-enabled, unified experience for communicating
between business systems and other devices.
Could we represent IoT device like LED, thermostat, buzzer, proximity sensor, media device, cell phone
or any devices as accessible and controlled using APIs?
[Siren][30] is just such a hypermedia specification for representing entities via a Web API.

As HTML is used for visually representing documents on a Web site,
Siren is a specification for presenting entities (e.g. physical things) via a Web API.
Siren offers structures to communicate information about entities,
actions for executing state transitions,
and links for client navigation:

* **Entities** information like properties, sub-entities
* **Actions** to control devices, change states
* **Links** so client (e.g. browser or application) can navigation to find services


* [Hypermedia: The Good, the Bad, and the Ugly](http://www.slideshare.net/mikestowe/hypermedia-the-good-the-bad-and-the-ugly)

# Node.js
[!node-logo](https://nodejs.org/static/images/logos/nodejs-new-pantone-black.png)
Node.js is good for apps where the server side is serving web services being called by many clients
or web applications employing push technology over websockets.
Because it uses non-blocking io,
it can serve a lot more requests simultaneously on the same hardware
Since IoT is progressing towards lots of small clients making web service calls to the server,
Node.js is a good fit.
Node.js basically makes the web server more efficient by eliminating the need for thousands of blocked threads.
Instead of having one thread per request,
you can have one thread serve hundreds of requests in a non-blocking manner.
Where Node really shines is in building fast, scalable network applications,
as it’s capable of handling a huge number of simultaneous connections with high throughput,
which equates to high scalability.
Mind you, it's not just Node.js,
it's the whole stack that has to be able support high volume of web service requests.
Node.js is a piece of it.

Reading list:
* [Why The Hell Would I Use Node.js? A Case-by-Case Tutorial](http://www.toptal.com/nodejs/why-the-hell-would-i-use-node-js)
* [Node.js Embedded Development on the Raspberry Pi](https://learn.adafruit.com/node-embedded-development/why-node-dot-js)
* [A Beginner’s Guide to npm — the Node Package Manager](https://www.sitepoint.com/beginners-guide-node-package-manager/#managingdependencies)

## Installing Node.js
Head to the [Node.js download page][12] and grab the version you need.
For Linux, you can also install Node via the package manager,
for example [installing on Node.js on Ubuntu 16.04][13].
One option for the Linux install is to use [Node Version Manager, `nvm`][14],
which give you on-demand access to the newest versions of Node.js,
but will also allow you to target previous releases that your app may depend on.
If you work with a lot of different Node.js utilities and projects,
you know sometimes you need to switch to other versions of Node.js.
That's where you can use `nvm` to download, install, and use different versions of Node.js.

```bash
# install required packages
sudo apt-get update
sudo apt-get install build-essential libssl-dev

# install nvm
curl -o- https://raw.githubusercontent.com/creationix/nvm/v0.33.0/install.sh | bash

# verify theat nvm is installed which should output 'nvm' if the installation was successful
# NOTE: 'which nvm' will not work, since nvm is a sourced shell function, not an executable binary
command -v nvm
nvm --version

# to find out the versions of Node.js that are available for installation
nvm ls-remote
```
When you install Node.js using `nvm`,
the executable is called `node`.
You can see the version currently being used by the shell by typing `node -v`.

```bash
# what version of node is currently being used
node -v

# list the multiple node.js versions installed
nvm ls

# you can install a specific version of node
nvm install 6.0.0

# to make one of the versions your default
# this version will be automatically selected when a new session spawns
nvm alias default 6.0.0

# can also switch to your default be using an alias
nvm use default

# to switch to and use another node.js version
nvm use 4.2.6
```

Verify your installation, which should also include the Node Package Manager, `npm`.

```bash
# where is node.js located
$ which node
/usr/bin/node

# what version of node.js are your using
$ node --version
v4.2.6

# location and version of node package manager
$ which npm
/usr/local/bin/npm
$ npm --version
4.1.1
```

## Node Packaged Modules
`npm` can install packages in local or global locations.
In local mode it installs the package in a node_modules folder in your parent working directory. This location is owned by the current user.

Global packages are installed in `/usr/local/lib/node_modules/` or `/usr/lib/node_modules/`
which is owned by root.
This means you would have to use `sudo` to install packages globally,
which could cause permission errors when resolving third-party dependencies,
as well as being a security concern.
`npm` will allow you to [change the location of global packages][15].

To install and list node.js global packages:

```bash
# global install of node.js packages
sudo npm install <package> --global

# full list installed global packages (what comes with node.js and yoru installs)
npm list --global

# list just the package you installed globally
npm list --global --depth=0
```

Installing packages in local mode is done without the `--global` flag.
The package will be installed in your parent working directory in a `node_modules` folder.
To install and list node.js local packages:

```bash
# make a project directory and change to it
mkdir ~/project && cd ~/project

# install uglify-js package locally to this project
npm install uglify-js

# list installed local packages
npm list --depth=0
```

* [npm Orgs](https://www.npmjs.com/docs/orgs/?utm_campaign=2017-03-22%20free%20Orgs&utm_medium=email&utm_source=Eloqua)
* [create a free Org](https://www.npmjs.com/features)

## console.log
* [Colorful Console Message](https://medium.com/@samanthaming/colorful-console-message-2e8203786838)

## Managing Package Dependencies
The best way to manage locally installed npm packages
and there dependencies on each otehr is to create a [`package.json` file][16].
This can be created with the command `npm init`:

```bash
# create the package.json file
$ npm init
This utility will walk you through creating a package.json file.
It only covers the most common items, and tries to guess sensible defaults.

See `npm help json` for definitive documentation on these fields
and exactly what they do.

Use `npm install <pkg> --save` afterwards to install a package and
save it as a dependency in the package.json file.

Press ^C at any time to quit.
name: (project)
version: (1.0.0)
description: just a test run of npm
entry point: (index.js)
test command:
git repository:
keywords: junk
author: jeff irland
license: (ISC) MIT
About to write to /home/jeff/project/package.json:

{
  "name": "project",
  "version": "1.0.0",
  "description": "just a test run of npm",
  "main": "index.js",
  "dependencies": {
    "longest": "^1.0.1",
    "uglify-js": "^2.7.5"
  },
  "devDependencies": {},
  "scripts": {
    "test": "echo \"Error: no test specified\" && exit 1"
  },
  "keywords": [
    "junk"
  ],
  "author": "jeff irland",
  "license": "MIT"
}


Is this ok? (yes)
```

We may also install packages after the creation of the `package.json` file.
Fore example, we may install a specific version of the underscore package.
We do that by using the @ sign to append a version number.
We also want the

```bash
# install version 0.0.1 of underscore and update package.json
npm install underscores@0.0.1 --save

# or you could do the package.json update after the fact
npm install underscores@0.0.1
npm install underscores@0.0.1 --save
```

# Process Object
The process object is a global that provides information about,
and control over, the current `node.js` process.
As a global, it is always available to `node.js` applications without using `require()`.

The `process.env` property returns an object containing the user environment.

```bash
# pass env variable PORT to the global environment
PORT=3000 ; node index.js
```

Then somewhere your program you have

```javascript
# if PORT is passed from the env use it, other set to 2000
var PORT = process.env.PORT || 2000;
```

# Node.js Based IoT Platforms
* [Raspberry pi, a Buzzer and Node.js – An IoT Doorbell](http://thejackalofjavascript.com/rpi-buzzer-node-iot-doorbell/)
* [Home Monitoring with Raspberry Pi and Node.js](https://www.hackster.io/andreioros/home-monitoring-with-raspberry-pi-and-node-js-8ec795)
* [Video: Node.JS Appliances on Embedded Linux Devices](https://www.youtube.com/watch?v=92Zh8b4W570)

# Apigee
* [Apigee-127: A Toolkit for Building Awesome APIs](http://apigee.com/about/blog/developer/apigee-127-toolkit-building-awesome-apis)
* [A127: Introduction And Getting Started](https://www.youtube.com/watch?v=KL1kAH2ipBw)
* [Build APIs in Node.js and Swagger 2.0 with Apigee-127](https://www.youtube.com/watch?v=Fw43z14Y1Xw)

# Zetta
[!zetta-logo](https://camo.githubusercontent.com/7988230f7b222a8e743a3d09ed61f40cc7d70c17/687474703a2f2f7777772e7a657474616a732e6f72672f696d616765732f6c6f676f732f7a657474612d6c6f676f2e737667)
The amazing thing about the web is the fact that clients (browsers) and servers
can interact in complex ways without the client knowing anything beforehand
about the server and the resources it hosts.
The key constraint is that the server and client must both agree on the media used,
which in the case of the web is HTML.
This concept has been generalized and extended to create REST APIs
where the browser can replace by servers, platforms like smartphones,
or even IoT devices.
These APIs can be viewed as sort of [microservices][28] and provide stateless transactions
to any who authorized to use them.
These microservices can be stitched together create a composite service or user experience.

The opportunity is to take many intenet of things, connect them to each other and to the internet,
and create a harmonious experiences that span multiple devices,
and grow ecosystems of connected things, just as we do with mobile apps.
Its hte opportunity to bring physical devices into our digital and mobile world
and completely reimagine the way we interact with our devices.

[Zetta embodies the idea that the IOT is about using APIs][36]
to take advantage of all the data that connected devices can collect
and then letting developers build services on top of them.
It’s an app-centric model with intelligence in the cloud,
as opposed to a device-centric model with intelligence on the hardware and at the edge.
Zetta aims to create connected physical device where every Internet-connected “Thing” is exposed as an API.
End-node devices can be connected using Zetta even when these devices are low-cost,
power efficient microcontrollers that don’t have the processing or memory capacity to run Zetta directly.
Zetta models physical devices as state machines and then assists in the orchestrate of their interactions.

There are several tutorials and examples to help you learn how to make use of Zetta.
T
* Documentation
    * [Zetta website](http://www.zettajs.org/)
    * [Zetta's Wiki - Introduction to Zetta](https://github.com/zettajs/zetta/wiki)
    * [Zetta Projects Directory](http://www.zettajs.org/projects/)
* Code Examples
    * [Zetta Tutorials](https://github.com/zettajs/zetta-tutorials)
    * [Zetta Coding Examples](https://github.com/kevinswiber?tab=repositories)
    * [Building a Zetta Security System](https://github.com/zettajs/zetta-security-system)
* Slideware
    * [Zetta: An API First Platform](http://www.slideshare.net/apijp/zetta-an-api-first-platform)
    * [Zetta js Hands on IoT](http://www.slideshare.net/anilsagar/zetta-js-hands-on-iot?qid=3863ecca-1807-4cb0-95f3-692b7653d168&v=&b=&from_search=2)
    * [Designing an API for the Internet of Things](http://www.slideshare.net/kswiber/designing-an-api-for-the-internet-of-things?qid=3863ecca-1807-4cb0-95f3-692b7653d168&v=&b=&from_search=39)
* Videos
    * Zetta training by Matthew Dobson (Software Engineer at Apigee)
"JavaScript with featured guest Zetta:
[Part 1](https://www.youtube.com/watch?v=zXaM7eO_EoQ),
[Part 2](https://www.youtube.com/watch?v=WYbvt8ODACY),
[Part 3](https://www.youtube.com/watch?v=CIGnQUSWjm4)".

hese include:

## Zetta Device
Class: Zetta.Device

This is a zetta device modeled in software.
With zetta you can create state machines for all of your devices that conditionally
allow functionality to be exposed based on the `state` property.
You should inherit from this class and implement the `init` function
`require('zetta-device');` or `require('zetta').Device;`.

A device in Zetta has three different pieces of information attached to it in the API.

1. `properties` are information on the object. Most of this is user defined.
    * `type` is defined by the driver. It lets Zetta know what kind of device is represented in the API.
    * `id` is a unique identifier that Zetta generates for you.
    * `name` is a unique identifier that can be determined by you in the driver. For now we hard coded it to `"Buzzer"`.
1. `actions` are the specific actions that can be taken on the object. We outline any parameters needed, and what kind of HTTP call must be made to trigger the action.
1. `links` are different pieces of context around the object. They can be websocket links leading to sensor readings or links back to the parent server of where the object lives.

## Zetta Scout
A Scout is a Zetta class that finds devices connected to a Zetta server.
When the Zetta server starts up,
it's possible that not all of its devices are online.
A Scout runs perpetually in the background, constantly searching for devices,
and discovering when they are available.
The Zetta Scouts is designed to discover devices that communicate over a variety of protocols,
such as Bluetooth, Zigbee, or plain old HTTP.

Class: Zetta.Scout

This is a class you inherit from when writing custom device drivers.
Scouts are used to search for devices with external node modules, or protocols.
It's used by `require('zetta-scout');` or `require('zetta').Scout;`.
You must inherit from the Scout class when building custom Zetta modules.

## Zetta Auto Scout
Zetta Auto Scout is a way to initiate a zetta device driver without having to build a generic scout that looks for only a device type.
This will only initialize one led driver, zetta thinks that it already exists. You can get around this with adding separate args for each device.

https://github.com/zettajs/zetta-auto-scout

## Zetta App
Apps let you query for devices and create interactions between them in JavaScript.

## Zetta Server
The Zetta server communicates and coordinates with physical devices on a network
and generates REST APIs that you can use to interact with those devices over HTTP.
The Zetta API is a built-in, out-of-the-box feature of Zetta.
The Zetta server automatically generates APIs for devices that it recognizes.

>Note: Zetta APIs are RESTful hypermedia APIs. Essentially, this means that
each API response includes links that let you discover what further actions
you can perform with the API.
The pattern is analogous to the way web pages work,
where hyperlinks lead you to related web content.

## Zetta Streams

## Node Moduals Supporting Zetta
ZettaJS is powered by different node modules. Let's go through them and understand why zetta uses these modules.
https://community.apigee.com/articles/4272/decoding-node-modules-used-by-zettajs.html

## Siren Hypermedia Specification
ZettaJS - Introduction to Siren - Hypermedia Specification
https://community.apigee.com/articles/4330/zettajs-introduction-to-siren-hypermedia-specifica.html

## Zetta Browser Client
You can interact with Zetta APIs using the [Zetta Browser Client][37].
With this browser, you can controlling device transitions
and the client app provides a wealth of information about your Zetta instance.

http://browser.zettajs.io/#/overview?url=http://127.0.0.1:1337

# Node-RED
* [Wiring The Internet of Things With NODE RED](https://www.youtube.com/watch?v=j9H3t3l1En0)
* [HOW TO NODE-RED!](http://bitluni.net/how-to-node-red/)
* [A Guide to Rules Engines for IoT: Flow Processing Engines](https://dzone.com/articles/a-guide-to-rules-engines-for-iot-flow-processing-e)
* [Automate Your Life With Node-RED (Plus A Dash Of MQTT)](https://hackaday.com/2020/01/15/automate-your-life-with-node-red-plus-a-dash-of-mqtt/)

![node-red-logo](http://images.techhive.com/images/article/2016/05/raspberry-pi-2-node-red-100663608-primary.idge.png "When you want to connect an IoT device to anything, you should take a serious look at Node-RED, a free, open source visual process wiring system from IBM")
[Node-RED][03] is a new [industry created open-source tool][02],
created by the [IBM Emerging Technology team][01],
that lets you build applications by simply wiring pieces together.
These pieces can be hardware devices, web APIs, or online services.

Node-RED is about making sense out of the Internet of Things.
It’s about understanding how devices relate to each other and how they interact.
Node-RED is built on top of Node.js
and takes advantage of the huge node module ecosystem
to provide a tool that is capable of integrating many different systems.
Its lightweight nature makes it ideal to run at the edge of the network,
such as on the Raspberry Pi, and other hack-friendly platforms.

With Node-RED, the processing of messages is visualised
as a graphical flow between “nodes” representing input,
output or processing by Node-RED.
A message is generated at an input node and is passed to any node that node’s out is connected to.
Built on top of the Node.js platform,
it is able to also handle connections to databases such as MongoDB,
protocols such as TCP, UDP, HTTP and WebSockets
and services like IRC or Twitter and has nodes that represent input or output to all of them.
It also has nodes which allow you to change values in a message,
process a messages with JavaScript, fill out a template, delay a message being passed on,
select a path for a message to take, map numeric ranges or even do sentiment analysis on text.
There’s also some handy file storage nodes and, to aid debugging,
a message injector node and a debug output node.

Node-RED frees up development time,
eliminating the need to do repetitive programming tasks
and instead enabling you to focus the high level problem.

There is also a hosted Node-RED called [FRED][18].
Doesn't appear to do anything other than remove the burden of mangeing you own
Node.js and Node-RED environment.
It does have a [Node-RED Programming Guide][17]
which appears to provide better introductory documentation.

* A alternative and more advance version of Node-RED is [Losant](https://www.losant.com/)
    * [Experiences](https://docs.losant.com/experiences/overview/?utm_campaign=Product&utm_source=hs_email&utm_medium=email&utm_content=50052321&_hsenc=p2ANqtz-80QcBmxusbektmnHKsNgLI4RAXHJoPXYCNRM8VAedCQjKGl0LVvtP9uWclacSn_YgywbQt8SSQwLD5JoWASdtGeBsUxw&_hsmi=50052321)
    * [Experience Walkthrough](https://docs.losant.com/experiences/walkthrough/overview/?utm_campaign=Product&utm_source=hs_email&utm_medium=email&utm_content=50052321&_hsenc=p2ANqtz-_UoVdpSnVhoxg2dP5cg82t6qP8yybXpNA_4FUvUxvQUkbyYJzHaKTdaoK6gnjWh1tmPEKtl8VLHnDEGyoeYORUCahXxg&_hsmi=50052321)
    * [Losant Kiln](https://www.losant.com/iot-platform/kiln-iot-custom-experiences?utm_campaign=Product&utm_source=hs_email&utm_medium=email&utm_content=50052321&_hsenc=p2ANqtz-9LuoqLUYcJeBCf1T042YD08HhOR9I9ZSIiv0nIks63g6UrH8gI2wgG6pb2ex_5PAACi_IZUjk58Njckyn6uGQxnMFsYA&_hsmi=50052321) can be used to deliver custom IoT experiences to your users

###############################
doing HTTP requests
* [Running OpenWhisk Actions From Node-RED](http://ryanjbaxter.com/cloud/bluemix/2016/03/24/running-whisk-actions-from-node-red.html)
* [How do I send form-data in HTTP Request Node with POST in Node-Red?](https://developer.ibm.com/answers/questions/276380/how-do-i-send-form-data-in-http-request-node-with.html)
###############################

# Getting Started
The content here is lift for these sources:

* [Getting started with Node-RED](https://opensource.com/life/16/5/getting-started-node-red)
* [The Node-RED Getting Started page](http://nodered.org/docs/getting-started/)
* [Raspberry Pi Hosting Node-Red](https://learn.adafruit.com/raspberry-pi-hosting-node-red/what-is-node-red)
* [Node-RED Wiki](https://github.com/node-red/node-red/wiki)
* [Raspberry Pi 2 Node-Red setup](https://swabbster.wordpress.com/2015/04/16/raspberry-pi2-node-red-setup/)
* [Raspberry Pi + NodeJS](http://weworkweplay.com/play/raspberry-pi-nodejs/)

* [node-red/node-red-nodes · GitHub](https://github.com/node-red/node-red-nodes)
* [node-red-m2x 0.1.1](http://flows.nodered.org/node/node-red-m2x)
* [Node-RED M2X Node](https://github.com/attm2x/node-red-m2x)
* [Node-RED, wiring the Raspberry Pi to the IoT](http://www.networkworld.com/article/3075329/internet-of-things/node-red-wiring-the-raspberry-pi-to-the-iot.html)
* [Developing Node-RED custom nodes helping notes](https://tzapu.com/help-developing-node-red-custom-nodes/)

## Installing Node-RED
The easiest way to install Node-RED is to use node’s package manager, npm.
Installing it as a global module adds the command node-red to your system path:

```bash
sudo apt-get update
sudo apt-get install nodejs npm
sudo npm install -g --unsafe-perm node-red
```

See [Node-RED Upgrade Documentation][04] for the purpose of the `--unsafe-perm` parameter.

You'll also need to manually create a symlink `/usr/bin/node`.

```bash
sudo ln -s /usr/bin/nodejs /usr/bin/node
```

>>WHY THE SYMLINK: There is a naming conflict with the node package (Amateur Packet Radio Node Program),
and the nodejs binary has been renamed from node to nodejs.
You'll need to symlink /usr/bin/node to /usr/bin/nodejs or you could uninstall
the Amateur Packet Radio Node Program to avoid that conflict.

To get the latest upgrade you can use
`sudo npm update -g --unsafe-perm node-red`,
but it is best to re-install Node-RED as follows:

```bash
sudo npm cache clean
sudo npm install -g --unsafe-perm node-red
```

To get the bleeding edge Node-RED code from GitHub,
Check out [Node-RED's Install documentation][06].

For installing on Raspberry Pi.
Check out [Node-RED's documentation][07] and [Adafruit's Tutorial][08].

# Running Node-RED
Check out [Node-RED Getting Started page][04] for full instructions on getting started.
Basic steps once its install is the following:

1. `node-red`
1. Open `http://localhost:1880` in a browser

Where Node-RED command line is:

```
Usage: node-red [-v] [-?] [--settings settings.js] [--userDir DIR] [flows.json]

Options:
  -s, --settings FILE  use specified settings file
  -u, --userDir  DIR   use specified user directory
  -v                   enable verbose output
  -?, --help           show usage
```

By default, Node-RED stores your data in the directory `$HOME/.node-red`.
To override what directory to use, the `--userDir` command-line option can be used.

If you find it necessary to pass arguments to the underlying node.js process,
see the [Node-RED Running documentation][09].

## Installing Additional Node Modules
Next we need to install some required Node-RED node modules.
A subtlety (bug?)  with the [Node-RED implementation on the Raspberry Pi][22]
is that you must do installs while within the users Node-RED configuration directory.
By default this is `~/.node-red`.
Therefore, it appears that Node-RED modules are not global,
so **DO NOT** use `nmp install -g ...` .

You can search for available nodes in the [Node-RED library][20] or on the [npm repository][21].
We need the following node modules:

* [daemon](https://www.npmjs.com/package/node-red-node-daemon)
* [timestamp](http://flows.nodered.org/node/thethingbox-node-timestamp)
* [OS Information](http://flows.nodered.org/node/node-red-contrib-os)

They are installed as follows:

```bash
# all node-red module must go here
cd ~/.node-red

# install daemon to run bash script
sudo npm install node-red-node-daemon

# install tool to timestamp JSON message
sudo npm install thethingbox-node-timestamp

# install tools to get operating system information
sudo npm install node-red-contrib-os
```
## Adding Nodes
Node-RED comes with a core set of useful nodes,
but there are a growing number of additional nodes available for installing.
You can search for available nodes in the [Node-RED library][10] or on the [npm repository][11].
Some of the nodes also have dependencies on external libraries
and without these being installed will not function correctly.

To install an npm-packaged node,
you can either install it locally within your user data directory
(by default, `$HOME/.node-red`):

```bash
cd $HOME/.node-red
npm install <npm-package-name>
```

or globally alongside Node-RED:

```bash
sudo npm install -g <npm-package-name>
```

It is also possible to install nodes by copying their `.js` and `.html` files
into a nodes directory within your user data directory.
If these nodes have any npm dependencies,
they must be also be installed within the user data directory.

In all cases, you will need to restart Node-RED for it to pick-up the new nodes.

Some good nodes to add are:

```bash
sudo npm install -g node-red-node-ping          # Pings a machine and returns the trip time in mS.  Returns boolean false if no response received within 5 seconds, or if the host is unresolveable.
sudo npm install -g node-red-node-mongodb
```

## Editing Nodes
copy a node - ctrl-c
paste a node - ctrl-v
delete a node - delete or backspace

## Importing Flows
You can imported flows straight into the editor by pasting the JSON
representing the flow into the Import dialog
(`Ctrl-i` or via the dropdown menu within Node-RED).

## Exporting Flows
Use `Ctrl-a` to select all the flows on the tab and `Ctrl-e` to popup the flow.
From there, you can do copy the flow to your clipboard.

* [Node-RED, wiring the Raspberry Pi to the IoT](http://www.networkworld.com/article/3075329/internet-of-things/node-red-wiring-the-raspberry-pi-to-the-iot.html)
* [IOT made real – Using TI SensorTag data with Logentries and NodeRed](https://blog.logentries.com/2016/02/iot-made-real-using-ti-sensortag-data-with-logentries/)
    * [Raspberry Pi, Logs and Iot – Sending Pi Log and Sensor Data to Logentries](https://dzone.com/articles/raspberry-pi-logs-and-iot-sending-pi-log-and-senso)
* [Connecting it All Together – PubNub and Node-RED](http://www.internetoflego.com/connecting-it-all-together-pubnub-and-node-red/)
* [Node-Red Websockets Page : Scargill's Tech Blog](http://tech.scargill.net/a-node-red-websockets-web-page/)
* [Node-Red Scheduler](http://tech.scargill.net/node-red-scheduler/)
* [Pete Scargill's Node-Red Posts](http://tech.scargill.net/?s=node-red)
* [Flow-based programming for the Internet of Things with Node-RED hosted on Microsoft Azure](http://embedded101.com/Blogs/PaoloPatierno/entryid/477/flow-based-programming-for-the-internet-of-things-with-node-red-hosted-on-microsoft-azure)
* [Building IoT App with Node-Red](http://node-red-ws.mybluemix.net/presentation/index.html#slide-0)
* [Making IFTTT (If This Then That) talk to Node-RED](https://harizanov.com/2015/03/making-ifttt-if-this-then-that-talk-to-node-red/)
* [Baofeng (or other radio) data TX/RX for Raspberry Pi](http://flows.nodered.org/flow/d802e43ab306b4b9f2ba)

* [Weather Station – DHT11, MQTT, Node-RED, Google Chart, Oh My!](http://www.internetoflego.com/weather-station-dht11-mqtt-node-red-google-chart-oh-my/)
* [Creating a node for Node-RED: The Philips Hue Node](http://blog.buildinginternetofthings.com/2013/11/09/creating-a-node-for-node-red-the-philips-hue-node/)
* [node-red/node-red-node-swagger](https://github.com/node-red/node-red-node-swagger)
* [Build a REST API For Your IoT Data Using MongoDB, Node-RED, and Bluemix](http://ryanjbaxter.com/2014/07/21/build-a-rest-api-for-your-iot-data-using-mongodb-node-red-and-bluemix/)
* [Node-RED on WRTnode](http://blog.thestateofme.com/2014/12/03/node-red-on-wrtnode/)
* [node-red-contrib-freeboard](https://www.npmjs.com/package/node-red-contrib-freeboard)

# Forever, PM2, Monit, Prometheus, Supervisor
* [forever - Node.js app with forever running as a service daemon](http://www.slidequest.com/q/70ang)
* [pm2 - Advanced, production process manager for Node.js](http://pm2.keymetrics.io/)
* [Monit](https://mmonit.com/monit/) is a free, open source process supervision tool for Unix and Linux. With Monit, system status can be viewed directly from the command line, or via the native HTTP web server.
* [Deploying Node.js With Upstart and Monit](https://howtonode.org/deploying-node-upstart-monit)
* [Prometheus](https://prometheus.io/)
* [Getting started with Prometheus](https://opensource.com/article/18/12/introduction-prometheus)
* [Supervisor: A Process Control System for UNIX-like operating systems](http://supervisord.org/)

# Sources
* [Hypermedia APIs: The Benefits of HATEOAS](https://www.programmableweb.com/news/hypermedia-apis-benefits-hateoas/how-to/2014/02/27)
* [Why Hypermedia Makes Sense](http://clarify.io/blog/why-hypermedia-makes-sense/)
* [ZettaJS - Introduction to Siren - Hypermedia Specification](https://community.apigee.com/articles/4330/zettajs-introduction-to-siren-hypermedia-specifica.html)



[01]:https://www-304.ibm.com/connections/blogs/et/entry/node-red?lang=en_us
[02]:https://developer.ibm.com/open/node-red/
[03]:http://nodered.org/
[04]:http://nodered.org/docs/getting-started/upgrading.html
[05]:http://nodered.org/docs/getting-started/
[06]:http://nodered.org/docs/getting-started/installation.html
[07]:http://nodered.org/docs/hardware/raspberrypi.html#starting-node-red
[08]:https://learn.adafruit.com/raspberry-pi-hosting-node-red?view=all#what-is-node-red
[09]:http://nodered.org/docs/getting-started/running.html
[10]:http://flows.nodered.org/
[11]:https://www.npmjs.com/browse/keyword/node-red
[12]: https://nodejs.org/en/download/
[13]:https://www.digitalocean.com/community/tutorials/how-to-install-node-js-on-ubuntu-16-04
[14]:https://github.com/creationix/nvm
[15]:https://www.sitepoint.com/beginners-guide-node-package-manager/
[16]:https://docs.npmjs.com/getting-started/using-a-package.json
[17]:http://noderedguide.com/
[18]:https://fred.sensetecnic.com/
[19]:http://thenewstack.io/the-different-flavors-of-iot-apis/
[20]:http://flows.nodered.org/
[21]:https://www.npmjs.com/browse/keyword/node-red
[22]:http://nodered.org/docs/hardware/raspberrypi#using-the-editor
[23]:https://www.programmableweb.com/news/emergence-api-first-development/2014/01/09
[24]:https://www.programmableweb.com/api-university/what-are-apis-and-how-do-they-work
[25]:http://101.consume.apievangelist.com/
[26]:http://nordicapis.com/api-platform-defined-api-provider-is-a-platform/
[27]:https://en.wikipedia.org/wiki/Mobile_app
[28]:https://www.nanoscale.io/webinar-replay-intro-to-microservices/?utm_source=Dzone
[29]:
[30]:https://github.com/kevinswiber/siren/tree/master
[31]:http://www.restapitutorial.com/lessons/whatisrest.html
[32]:https://www.programmableweb.com/news/hypermedia-apis-benefits-hateoas/how-to/2014/02/27
[33]:https://www.programmableweb.com/news/zetta-wants-to-connect-your-devices-to-make-iot-vision-real/2014/09/16
[34]:http://www.foxycart.com/blog/the-hypermedia-debate#.WHfwUvErLMQ
[35]:http://apieconomist.com/blog/darrel-miller-hypermedia-apis
[36]:https://lx-group.com.au/zetta-an-api-first-internet-of-things-platform/
[37]:http://browser.zettajs.io/
[38]:https://oauth.net/2/
[39]:
[40]:

