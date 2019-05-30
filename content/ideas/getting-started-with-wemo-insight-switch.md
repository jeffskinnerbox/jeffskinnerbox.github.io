
# WeMo
* [WeMo without a smartphone](http://hackaday.com/2013/02/23/wemo-without-a-smartphone/)
* [WeMo API Hacking](http://www.issackelly.com/blog/2012/08/04/wemo-api-hacking/)

# WeMo Commandline tool
* [belkin-wemo-command-line-tools](https://www.npmjs.com/package/belkin-wemo-command-line-tools)

# Hacking the Wemo
* [Better Smart Plug](http://hackaday.com/2015/08/29/hackaday-prize-semifinalist-a-better-smart-plug/)
* https://hackaday.io/project/6799-smartee-the-smart-plug

# Roll Your Own
* [Building a WiFi Outlet](http://nordness.net/posts/building-a-wifi-outlet/)

# Rooting WeMo Insight Switch
* [OpenWRT on a Belkin WeMo - The Easy Way](https://www.realmtech.net/2016-04/openwrt-on-a-belkin-wemo-easy-way)
* [OpenWRT on a Belkin WeMo - The Hard Way](https://www.realmtech.net/2016-04/openwrt-on-a-belkin-wemo-hard-way)
* OpenWRT for WEMO [Part 1 - Compiling firmware](http://sheldor.blogspot.com/2014/01/openwrt-for-wemo-part-1-compiling.html) and [Part 2 - Flashing Firmware](http://sheldor.blogspot.com/2014/01/openwrt-for-wemo-part-2-flashing.html)




The [Belkin WeMo Insight Switch][40] ([different from the orginal Belkin's WeMo Switch][39])
uses WiFi for connectivity and
allows your home appliances power to be switched on/off using your your smart phone
or via the WeMo's hackable, but not truely open, APIs.
When used with its companion smart phone app, you can also

* tracks electricity usage and cost over time
* schedules when your electronic device is ON/OFF
* receives notifications of status change and usage
* exports power data via Email

The maximum power capacity of WeMo is 15 Amps, 1800 Watts at 110 Volts U.S.  Exceeding this limit can damage your WeMo device.

The [Belkin WeMo Insight Switch is one of the most capable smart switches on the market][38],
and Belkin has also built some [Amazon Echo / Alexa skills][37] for it.
The WeMo Insight Switch also support some
[APIs like phone apps, Nest, and IFTTT][42]
but it doesn't have any open APIs.
Never the less, some hacking of the device has been occuring (with mixed success)
and you'll find [Shell][47], [Python][44], [Node.js][46], and even [Node-RED][45] solutions.
Also, it appears that Belkin WeMo Switch have been [rooted][50]
and even has have the [operating system replace with OpenWrt][49].

[Belkin does offer LED Lighting][41] and its ues Zigbee radios,
just like the Phillips Hue, but Belkin use its own bridge.
Doesn't seem to be compatable with the Phillips Hue bridge,
only work with the WeMo Link hub and cannot be paired with the Hue Bridge.
Finally, Belkin even offers something for the Maker community via the [WeMo Maker][48].
It claims to control nearly any low-voltage electronics device,
like a garage door.

* [How to Use the Belkin WeMo Insight Switch to Monitor Power Usage](https://www.howtogeek.com/250182/how-to-use-the-belkin-wemo-insight-switch-to-monitor-power-usage/)
* [MONITORING POWER DRAW WITH WEMO INSIGHT SWITCHES](https://www.chameth.com/2016/05/02/monitoring-power-with-wemo/)
* [Here is a script to control a local WeMo switch](https://forum.omz-software.com/topic/1427/here-is-a-script-to-control-a-local-wemo-switch/4)

# WeMo Insight Switch Setup
First review the web page "[WEMO Insight - Getting to know][01]".
This will introduce to the physical design, so you understand the buttons,
and the basic use of the smart phone app.

https://hackaday.io/project/5093-belkin-wemo-insight-teardown
https://hackaday.io/project/6799/logs

To install WeMo Insight Switch, simply plug the Switch into an outlet in your home and then
plug an electronic device or appliance into the switch.

http://www.belkin.com/home-automation/setup/video.m4v
http://www.belkin.com/us/support-article?articleNum=80142

# Remote Access to WeMo Device
http://www.belkin.com/us/support-article?articleNum=8227

# Firmware Update
Once a day your WeMo reaches out to Belkin development server
and compares the firmware version it is running to what is the newest on the server.
If an update is available, the next time you open your WeMo smart phone app
you may see a pop-up message letting you know that you can install this to your Wemo.

http://www.belkin.com/us/support-article?articleNum=27353

# Connecting WeMo Insight Switch to Amazon Echo



[01]:http://www.belkin.com/us/support-article?articleNum=42290
[02]:
[03]:
[04]:
[05]:
[06]:
[07]:
[08]:
[09]:
[10]:

[37]:https://www.amazon.com/dp/B01JTQCD3W
[38]:http://www.tomsguide.com/us/best-smart-switch,review-4087.html
[39]:https://www.howtogeek.com/252249/the-difference-between-belkins-wemo-switch-and-wemo-insight-switch/
[40]:http://www.belkin.com/us/p/P-F7C029/
[41]:http://www.belkin.com/us/p/P-F5Z0489/
[42]:http://www.belkin.com/uk/p/P-F7C029/
[43]:
[44]:https://pypi.python.org/pypi/ouimeaux
[45]:https://www.hardill.me.uk/wordpress/2016/01/11/new-wemo-nodes-for-node-red/
[46]:https://github.com/timonreinhard/wemo-client
[47]:https://www.npmjs.com/package/belkin-wemo-command-line-tools
[48]:https://www.wired.com/2014/12/review-wemo-maker/
[49]:http://hackaday.com/2015/11/17/belkin-wemo-teardown/

