

# DYI Smart Home
* [6 open source home automation tools](https://opensource.com/life/17/12/home-automation-tools?utm_medium=Email&utm_campaign=weekly&sc_cid=701f2000000tpYEAAY)
* [What Smart Home IoT Platform Should You Use?](https://dzone.com/articles/what-smart-home-iot-platform-should-you-use)

* [Making my analog doorbell smart by simply attaching a $7 sensor to it](https://partofthething.com/thoughts/making-my-analog-doorbell-smart-by-simply-attaching-a-7-sensor-to-it/)
* [Home automation with Z-Wave, Home-Assistant, Aeon Multisensor, HUE lights, and a Raspberry Pi 2](https://partofthething.com/thoughts/home-automation-with-z-wave-home-assistant-aeon-multisensor-hue-lights-and-a-raspberry-pi-2/)

* [ESP32-CAM Video Streaming Web Server (works with Home Assistant)](https://randomnerdtutorials.com/esp32-cam-video-streaming-web-server-camera-home-assistant/)
* [ESP32-Cam Does Time Lapse](https://hackaday.com/2020/01/28/esp32-cam-does-time-lapse/)



I got plans for several standard home sensors (e.g. water sensors),
not so standard sensors (e.g. people detecting via smart phone RF exhaust),
and some novel status display methods (e.g. scrolling display critical events).
These edge devices all require a operating environment where they can be
provisioned, monitored, controlled, persistent data storage, etc.

So I need :
* Smart Home / IoT Server
* Smart Home / IoT Platform
* Smart Home / IoT Device Gateway
* Smart Home / IoT Devices

For the server I have selected the ever popular Raspberry Pi, which means I'm hosting my own solution.
I could choose one of the may cloud providers
([Samsung SmartThings][11], [Mozilla IoT][12], [AWS Alexa][13],
[Google's Cloud IoT Core][14], [Microsoft Azure IoT][15], etc.)
but I don't think any of them will provide me the privacy, control, or extensibility I will ultimately desire.

For the platform, which will operate on the server,
I quickly restrict my attention to [Home Assistant][07] or [OpenHAB][08]
and choose Home Assistant based in part on [SmartHome University's evaluation][18] of the two options
([here][19] is another informative review).
These platforms claim to be vendor and technology agnostic open source automation software for your home.
There are others with a similar bent
(e.g [Calaos][21], [Domoticz][22], [MisterHouse][23], [OpenMotics][24], [OpenNetHome][25], etc.)
but Home Assistant and OpenHAB have captured the most attention.

For the device gateway, assuming I need it,
at this moment I would be using a [Raspberry Pi with EdgeX Foundry][09],
EdgeX Foundry is part of [LF Edge][10],
a portfolio (aka collection of projects or umbrella, if you prefer) for Linux based IoT solutions.
But I want to give serious consideration to alternatives like
[Mozilla WebThings][12] and [Eclipse ThingWeb][16],
which are both an implementations of the ["Web of Things" standard from the W3C][17].

With wide control comes greater resposibility.
Read these articals to get some insight and pointers:

* [10 tips for DIY IoT home automation](https://opensource.com/life/16/9/iot-home-automation-projects?sc_cid=701600000012AJUAA2)



------


# Smart Home / IoT Server
The first critical decision is what hardware do I use?
After a bit of research,
I concluded I want to use the most capable Raspberry Pi,
booting from a fast and beefy SSD drive,
housed in a highly functional case.
For me, this boils down to:

* The compute platform is the [Raspberry Pi 4][01] with 4GB of memory.
The speed and performance of the Raspberry Pi 4 is a step up from earlier models,
enabling a complete desktop experience.
The Raspberry Pi 4 also now supports [native USB boot without SD card][06].
This can give you faster boots, faster disk drive, and higher reliability.
* I'm using the [Samsung 860 EVO SSD 250GB - M.2 SATA Internal Solid State Drive][02].
Why SSD? They are about 10 times faster than SD Card,
as low as twice the price of SDs and should be much more reliable.
SDs are well suited to cameras but will tend to fail because computers
often over-writing the same location wearing down the memory.
* The stylish [Argon ONE M.2 Case for Raspberry Pi 4][03] which supports,
or should I say the Raspberry Pi 4 supports,
the [USB Attached SCSI Protocol (UASP)][04].
This means you can maximize the transfer speeds
of your M.2 SATA Drive which comes with built-in adapter board for the M.2 SSD.
You can also [configure the Argon 1 case fan and power button][05] for you needs
(e.g. temperature selectable multi-speed fan & power switch supporting safe shutdown and hard reboot).
And to top it off, the GPIO pins are still easily accessible but smartly hidden.

* https://www.youtube.com/watch?v=zVhYvvrGhMU
* https://www.youtube.com/watch?v=gp6XW-fGVjo
* https://hackaday.com/2020/05/25/boot-your-pi-over-usb/

* [Argon ONE M.2 SSD case for the Raspberry Pi 4 mini PC](https://www.geeky-gadgets.com/raspberry-pi-4-case-07-10-2020/)
* [The Argon One Raspberry Pi 4 Case - Is this the Best Pi4 Case?](https://www.youtube.com/watch?v=8VlE654abDo)
* [Argon One Tips and Setup](http://wagnerstechtalk.com/argonone/)
* [Argon ONE Case for Raspberry Pi 4 Updated](https://tech.scargill.net/argon-one-case-for-raspberry-pi4/)
* [Is This The Best Raspberry Pi 4 Case? The New Argon One M.2](https://www.youtube.com/watch?v=LLc4pF3jZQg)

### Network Booting
The latest Raspberry Pis, version 4, ship with Preboot Execution Environment (PXE) boot enabled,
allowing the Pi to load its file system from a server on the same network.

* [Running Raspberry Pi Without an SD Card](https://hackaday.com/2018/10/08/hack-my-house-running-raspberry-pi-without-an-sd-card/)
* [Networek Booting the Pi 4](https://hackaday.com/2019/11/11/network-booting-the-pi-4/)

### Hardware Platform
* [Introducing the Raspberry Pi 2](http://hackaday.com/2015/02/02/introducing-the-raspberry-pi-2/)
* [UPS PIco - Uninterruptible Power Supply with Peripherals and I2C control Interface](http://www.rpiblog.com/2015/01/ups-pico-uninterruptible-power-supply.html)
* [PiVoyager: the smart UPS for the Raspberry Pi](https://www.tindie.com/products/omzlo/pivoyager-the-smart-ups-for-the-raspberry-pi/)
* [PiVoyager: installation and tutorial](https://www.omzlo.com/articles/pivoyager-installation-and-tutorial)

### Overclocking the Raspberry Pi
* [Overclocking the Raspberry Pi 4](https://www.tomshardware.com/reviews/raspberry-pi-4-b-overclocking,6188.html)

# Install
### Step 1: Flash Raspberry Pi SD Card
### Step X: Load You Tools
### Step X: IOTStack
IOTstack is a builder for docker-compose to easily make and maintain IoT stacks on the Raspberry Pi.
### Step X: Clone the SD Card
`rpi-clone` is a shell script that for cloning a **running** Raspberry Pi boot disk
(SD card or USB disk) to a destination disk which will then be bootable.
Destination disks are SD cards in the SD card slot or a USB card reader, USB flash disks, or USB hard drives

Run `rpi-clone -V sda` first just to get an idea of what happens.
If you like what you see, create a cron job in crontab with the command `rpi-clone sda -U`.
And that's it. Your Pi will now automatically back itself up completely to that disk, which can then be booted from.
No more worrying about your SD card dying on you out of nowhere. Enjoy!

* [RPi, Clone the Raspberry boot disk](https://pysselilivet.blogspot.com/2017/11/rpi-clone-raspberry-boot-disk.html)
* [Back Up Headless Raspberry Pi Zero with RPI-Clone or PiShrink](https://robotzero.one/headless-pi-zero-backup-clone/)
* [Setup rpi-clone](http://mitchhopto.com/rpi-clone.html)
* [Can I clone my entire Raspberry Pi for deployment onto another Raspberry Pi?](https://raspberrypi.stackexchange.com/questions/15102/can-i-clone-my-entire-raspberry-pi-for-deployment-onto-another-raspberry-pi/15118)

### Step X:
### Step X:
### Step X:


------



# Stress Tesing
* [How to Stress Test Temperature on Raspberry Pi (Stressberry)](https://core-electronics.com.au/tutorials/how-to-stress-test-temperature-on-raspberry-pi.html)
* [Stress Testing the Raspberry Pi](https://www.instructables.com/Stress-Testing-the-Raspberry-Pi/)
* [Stress Testing Your Raspberry Pi (for Cooling and Overclocking)](https://core-electronics.com.au/tutorials/stress-testing-your-raspberry-pi.html)

------


# Smart Home / IoT Platform
So what do I load onto my hardware platform to give me the full Smart Home / IoT Platform experiance?

* [#295 Raspberry Pi Server based on Docker, with VPN, Dropbox backup, Influx, Grafana, etc: IOTstack](https://www.youtube.com/watch?v=a6mjt8tWUws)
* [#352 Raspberry Pi4 Home Automation Server (incl. Docker, OpenHAB, HASSIO, NextCloud)](https://www.youtube.com/watch?v=KJRMjUzlHI8&t=849s)
* [Raspberry Pi as SMART HOME hub – (Video Tutorial)](https://peyanski.com/raspberry-pi-as-smart-home-hub-video-tutorial/)
* [Easy Home Assistant, Node-RED, InfluxDB and Grafana Integration](https://peyanski.com/home-assistant-node-red-influxdb-and-grafana-integration/)

### Node-Red, InfluxDB, Mosquitto, and Grafana
* [#255 Node-Red, InfluxDB, and Grafana Tutorial on a Raspberry Pi](https://www.youtube.com/watch?v=JdV4x925au0)
* [The Script](https://tech.scargill.net/the-script/)

### Home Assistant
* [Raspberry Pi home automation system](https://www.geeky-gadgets.com/raspberry-pi-home-automation-system-30-04-2019/)
* [Hass.io](https://www.home-assistant.io/hassio/)
* [Home Assistant][07]
* [Burns Home Assistant](https://www.youtube.com/channel/UCSKQutOXuNLvFetrKuwudpg)
* [Creating an IoT Server with Home Assistant and MQTT](https://www.hackster.io/Richa1/creating-an-iot-server-with-home-assistant-and-mqtt-3d874d)
* [works with Framework for Internal Navigation and Discovery (FIND)](https://github.com/schollz/find3)
* [AWS IoT Environment for Home Assistant](https://www.hackster.io/mitchese/aws-iot-environment-for-home-assistant-899a1b)
* [Integrating Snips with Home Assistant](https://medium.com/snips-ai/integrating-snips-with-home-assistant-314723645c77)
* [Home Assistant Tutorials](https://www.youtube.com/playlist?list=PLLydq6ff7NvJ1ioQSVRCt2FJK9EFzRKWr)
* [Tested: Home Assistant integrations, remote access and voice commands](https://staceyoniot.com/home-assistant-integrations-remote-access-setup-review/)
* [Home Automation Covers Everything](https://hackaday.com/2020/07/13/home-automation-covers-everything/)

### Lovelace
Lovelace is the Home Assistant dashboard.

# ################################### REMOVE ###################################
# openHAB
* [openHAB][08]
* [openHAB 2 has arrived](https://jaxenter.com/openhab-2-arrived-131328.html)
* [$20 Wireless Arduino Home Automation w/ OpenHAB](http://hackaday.io/project/1720-20-wireless-arduino-home-automation-w-openhab)
* [Installing openHAB Home Automation on Raspberry Pi](https://dzone.com/articles/installing-openhab-home-automation-on-raspberry-pi)
* [OpenHAB on Raspberry Pi](http://www.instructables.com/id/OpenHAB-on-Raspberry-Pi/?ALLSTEPS)
* [HABmin on Raspberry Pi - An openHAB Admin Console](http://www.instructables.com/id/openHAB-Admin-Console-HABmin-on-Raspberry-Pi/?ALLSTEPS)
* [OpenHAB App](https://play.google.com/store/apps/details?id=org.openhab.habdroid&hl=en)
* [Uber Home Automation w/ Arduino & Pi](http://www.instructables.com/id/Uber-Home-Automation-w-Arduino-Pi/?ALLSTEPS)
# ################################### REMOVE ###################################



------


# Smart Home / IoT Device Gateway

### Samsung SmartThings
### Pillips Hue


------


# Smart Home / IoT Devices

### ESPHome
Tasmota or ESPHome, together with Home Assistant are often seen together for home automation.
Most of the focus is on flashing and integrating readily available devices and sensors.
But which framework is better also for our do-it-yourself sensors and ESP32 boards.

* [Tasmota vs ESPhome: Who wins?](https://www.youtube.com/watch?v=nHaFM0tKOvY&feature=youtu.be)

Esphome shows a lot of promise.
It has over-the-air updates, it automatically compiles based on some yaml and uploads it! If it cant upload it (like the initial flash) I would simply set up the yaml, compile it, SCP it locally and flash it with https://github.com/espressif/esptool. If this worked, it would now support OTA updates.

Because its a bunch of yaml I can source control it too!

It uses passwords for both API integrations (home-assistant) and for OTA updates (same or different password) which makes me feel good.

Also: the server runs as a container, so its running on my Server network on nomad. I can simply go to http://esphome.service.consul and click “Upload” to update my IoT.

* [ESPHome](https://esphome.io/)
* [Home Automation with ESPHome & Home Assistant](https://www.youtube.com/playlist?list=PL2a34OA-WuyYvDbSaIthEk5dCs1BB2fB-)
* [Getting Started with ESPHome and Home Assistant](https://esphome.io/guides/getting_started_hassio.html)
* [How to get started with ESPHome and Sonoff](https://www.youtube.com/watch?v=soKuma8DJWQ)
* [Roll Your Own Automation With ESPHome](https://hackaday.com/2020/04/20/roll-your-own-automation-with-esphome/)
* [My Secure Smart Home](https://marcyoung.us/post/smart-home/)



------


# Integration with Alexa
* [How to do Simple Home Automation with Amazon Alexa || ESP8266](https://www.youtube.com/watch?v=ZyetXihGrM0)

# Things to Do
* [ESP32/ ESP-EYE: Browser Based Spectrum Analyzer](https://blog.squix.org/2019/08/esp32-esp-eye-browser-based-spectrum-analyzer.html)
* ESP queries for the weather and is a "sensor" for Home Assistant (include other envirnmental sensors to top it off) - [New WeatherStation Color Version published](https://blog.squix.org/2017/07/new-weatherstation-color-version-published.html)

### Things to Do with Home Assistant
* [TensorFlow Object Detection with Home-Assistant](https://www.hackster.io/robin-cole/tensorflow-object-detection-with-home-assistant-7cc04b)
* [SmartHome University](https://smarthome.university/)
* [16 Must-Have Automations I Run On My $2,000 Open Source Smart Home (And You Can As Well)](https://smarthome.university/automations/16-best-automation-ideas/)

### Telegram Bot
* [Telegram Bot Platform](https://telegram.org/blog/bot-revolution)
* [Using a Telegram Bot and a Demo Board to experiment with home automation](https://www.open-electronics.org/using-a-telegram-bot-and-a-demo-board-to-experiment-with-home-automation/)
* [How to make a responsive telegram bot](http://www.sohamkamani.com/blog/2016/09/21/making-a-telegram-bot/)
* [Home Automation: Playing With IoT, Temperature Sensors, Fans, and Telegram Bots](https://dzone.com/articles/home-automation-playing-with-iot-temperature-senso)
* [Telebot - The easy way to write Telegram bots in Node.js](https://github.com/kosmodrey/telebot)
* [Talking Telegram with the ESP8266](https://hackaday.com/2019/02/21/talking-telegram-with-the-esp8266/)
* [ESP8266 and Telegram Bot: Home Automation](https://dzone.com/articles/esp8266-and-telegram-bot-home-automation)
* [Quick And Dirty: Operate An Intercom Via Telegram](https://hackaday.com/2019/12/02/quick-and-dirty-operate-an-intercom-via-telegram/)
* [Set Up Telegram Bot on Raspberry Pi](https://www.instructables.com/id/Set-up-Telegram-Bot-on-Raspberry-Pi/)
* [home surveillance monitored via telegram](https://ginolhac.github.io/posts/diy-raspberry-monitored-via-telegram/#communication-with-motion-via-telegram)

### OpenRemote
* [OpenRemote](http://www.openremote.org/display/HOME/OpenRemote)

### Mycroft
* [Awesome Stuff: A Voice-Operated Household Assistant](https://www.techdirt.com/blog/innovation/articles/20150829/07551832101/awesome-stuff-voice-operated-household-assistant.shtml)
* [Mycroft: An Open Source Artificial Intelligence For Everyone](https://www.kickstarter.com/projects/aiforeveryone/mycroft-an-open-source-artificial-intelligence-for?ref=card)
* [Mycroft: A.I. for everyone](https://mycroft.ai/)




[01]:https://www.raspberrypi.org/products/raspberry-pi-4-model-b/
[02]:https://www.amazon.com/Samsung-250GB-SATA-Internal-MZ-N6E250BW/dp/B07864V6CK
[03]:https://www.argon40.com/argon-one-m-2-case-for-raspberry-pi-4.html
[04]:https://blog.startech.com/post/all-you-need-to-know-about-uasp/
[05]:https://www.yodeck.com/docs/display/YO/Configure+Argon+1+case+with+Fan+and+Power+Button
[06]:https://www.youtube.com/watch?v=zVhYvvrGhMU
[07]:https://home-assistant.io/
[08]:http://www.openhab.org/index.html
[09]:https://www.edgexfoundry.org/devkits/community-devkit/
[10]:https://www.lfedge.org/
[11]:https://www.smartthings.com/
[12]:https://iot.mozilla.org/
[13]:https://developer.amazon.com/en-US/alexa
[14]:https://cloud.google.com/iot-core
[15]:https://azure.microsoft.com/en-us/overview/iot/
[16]:http://www.thingweb.io/
[17]:https://www.w3.org/WoT/
[18]:https://smarthome.university/your-smart-home-platform-home-assistant-vs-openhab/
[19]:https://www.purdylounge.com/openhab-vs-home-assistant/
[20]:
[21]:https://calaos.fr/en/
[22]:https://domoticz.com/
[23]:http://misterhouse.sourceforge.net/
[24]:https://www.openmotics.com/
[25]:http://opennethome.org/
[26]:
[27]:
[28]:
[29]:
[30]:
