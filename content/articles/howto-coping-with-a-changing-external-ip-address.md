Title: HowTo: Coping With a Changing External IP Address
Date: 2016-02-07 13:14
Category: Software
Tags: How To, DDNS
Slug: howto-coping-with-a-changing-external-ip-address
Author: Jeff Irland
Image: how-to.jpg
Summary: Since I'm not using a static IP for my home router, my ISP can change my IP address as they sees fit. But in order for me to SSH into my home server from outside my local network, I need my home’s router current IP address.  Here a create a simple utility that pushes to my cell phone the new address when my router's IP address changes.

<a href="http://whatismyipaddress.com/">
    <img class="img-rounded" style="margin: 0px 8px; float: left" title="Since I'm not using a static IP for my home router, my ISP can change my IP address as they sees fit. But in order for me to SSH into my home server from outside my local network, I need my home’s router current IP address." alt="internet connection picture" src="{filename}/images/internet-connection.png" width="128" height="128" />
</a>
Some ISPs frequently change the IP address they provide you,
while others provide it on a long lease but may still change it.
Most ISPs allocate their range of IP addresses dynamically (using DHCP),
and the “lease” is often until you reboot the router or set to 24 hours,
which is why your address might change frequently.
For most users, changing IP doesn’t matter,
but in my case, I need a known address so I can login remotely.
To do this easily, you could have your ISP give you a fixed address
(aka a static IP address),
but if they offer this service at all, they will charge you for it.

I don't want to pay for the static IP address, so I need an alternative.
One alternative is to make use of a [Dynamic DNS (DDNS)][01] address service.
These services associate your actual address (in its numerical form)
with a fixed mnemonic address in real time,
so as long as you have  mnemonic form, it will point you to  your server.
This service can also cost you money.
(e.g. [Dyn][02] has stopped their free plans
but [No-IP][03] provides a quasi-free service).
Your home router will also need to support the DDNS client.
Not all routes support DDNS,
but [OpenWrt does][04] and is [fairly easy to install][05]
if you want to go in this direction.

The cheapskate alternative is to create a service on your server
that email or other wish notifies you, when the IP address changes.
This is practical if the IP address isn't changing too frequently,
which happens to be my case.
My choose is to use a  simple service for periodically looking up my IP address,
specifically using the website [ifconfig.co][06].
The design is to execute the command `curl ifconfig.co` periodically,
check if the IP address has changes, and if so, email or text the change to myself.

To do this, I placed the shell program listed below, which I call `ip_check`,
in `cron` to run every hour.

<!-- -------- Start: Gist Code Snippet --------- -->
<style="padding: 5px; overflow: auto; font-family: Andale Mono,Lucida Console,Monaco,fixed,monospace; color: rgb(0, 0, 0); background-color: rgb(238, 238, 238); font-size: 12px; line-height: 14px; width: 90%;">
    <script src="https://gist.github.com/jeffskinnerbox/fd4c1ea2f22a361f4164.js"></script>
</style>
<!-- --------- End: Gist Code Snippet ---------- -->

To run the script in [`cron`][09] every hour,
I [edited the cron table][08] via the command `crontab -e`
and place the following in the table: `@hourly  /home/jeff/bin/ip_check -x`.
Also note that `cron` can be temperamental,
so check out the post "[Reasons why crontab does not work][10]"
if you have problems getting it working.

The above shell program makes use of the utility `apprise`,
a push notification tool for the [Pushover][07] service.
This will notify me on my cell phone of any changes to the external IP address.

<!-- -------- Start: Gist Code Snippet --------- -->
<style="padding: 5px; overflow: auto; font-family: Andale Mono,Lucida Console,Monaco,fixed,monospace; color: rgb(0, 0, 0); background-color: rgb(238, 238, 238); font-size: 12px; line-height: 14px; width: 90%;">
    <script src="https://gist.github.com/jeffskinnerbox/13cd61e4d99feb0dcbca.js"></script>
</style>
<!-- --------- End: Gist Code Snippet ---------- -->



[01]:https://en.wikipedia.org/wiki/Dynamic_DNS
[02]:http://dyn.com/dns/
[03]:http://www.noip.com/
[04]:https://wiki.openwrt.org/doc/howto/ddns.client
[05]:http://www.pebra.net/blog/2014/02/07/installing-openwrt-on-wd-mynet-n600/
[06]:http://ifconfig.co/
[07]:https://pushover.net/
[08]:http://man7.org/linux/man-pages/man5/crontab.5.html
[09]:https://en.wikipedia.org/wiki/Cron
[10]:http://askubuntu.com/questions/23009/reasons-why-crontab-does-not-work
