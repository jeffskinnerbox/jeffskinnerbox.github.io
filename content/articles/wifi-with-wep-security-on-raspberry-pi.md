Title: WiFi (with WEP Security) on Raspberry Pi
Date: 2012-11-05 00:01
Category: Electronics
Tags: Raspberry Pi, WiFi
Slug: wifi-with-wep-security-on-raspberry-pi
Author: Jeff Irland
Image: linux-wifi-logo.png
Summary: While I have seen many posting on how to configure the Raspberry Pi with WPA, there is oddly little information about WEP configrations.  Hopefully this posting will solve that problem for you.

<p>The Raspberry Pi Linux distribution I'm using is Adafruit's <a href="http://learn.adafruit.com/adafruit-raspberry-pi-educational-linux-distro/occidentalis-v0-dot-2">Occidentalis</a>.  It <a href="http://learn.adafruit.com/adafruit-raspberry-pi-educational-linux-distro/occidentalis-v0-dot-1#wifi-support">supports WiFi</a> out of the box and appears easy to configure.  But as noted by Adafruit, adding peripherals to the RPi may increase the loading on the power supply to your board and this, in turn, may affect the voltage presented to the RPi.</p>
<p>This is clearly the case, even for the tiny  OURlink WiFi (802.11b/g/n) USB Adapter (uses the <a href="http://www.realtek.com/products/productsView.aspx?Langid=2&amp;PNid=21&amp;PFid=48&amp;Level=5&amp;Conn=4&amp;ProdID=277">RTl8192cu chip</a> which is <a href="http://wiki.debian.org/rtl819x">supported by Debian Linux</a>) I purchased from <a href="http://www.adafruit.com/products/814">Adafruit</a>.  When I plugged it into the RPi, it became unstable and crashed.  Adafruit advises that you can over come this by attach the RPi's USB port to a powered hub.  (Note that all USB hubs aren't powered or powered sufficient, and therefore, not all are  <a href="http://elinux.org/RPi_VerifiedPeripherals">recommended</a>.  I used a Dynex 4 Port Hub with a 5V 2.1A power adapter and all seem fine.)  If you find using a using a USB hub completely unacceptable, you could make some <a href="http://theiopage.blogspot.com.au/2012/06/increasing-raspberry-pis-usb-host.html">RPi board modifications</a> to the <a href="http://elinux.org/Polyfuses_explained">polyfuses</a>, but this isn't the "official/supported" approach for this power problem .... but first .... see the <strong>Epilogue No. 1</strong> below.</p>

I eventually got around to moving away from WEP to WPA2.
See **Epilogue No. 2** at the end of this page.
To make things even more exciting,
I changed the WiFi adapter to one that didn't have a currently installed drive on the RPi.
See **Epilogue No. 3** for the solution to this dilemma.

<h2>My First Attempt (Unsuccessful)</h2>
<p>Once I got the RPi USB port properly powered, I followed the Adafruit's <a href="http://learn.adafruit.com/adafruit-raspberry-pi-educational-linux-distro/occidentalis-v0-dot-1#wifi-support">instructions</a>.  I updated the<code>/etc/network/interfaces</code> file with the following:</p>

```bash
########## DID NOT WORK FOR ME ##########

# The loopback network interface
auto lo
iface lo inet loopback

# The primary (wired) network interface
iface eth0 inet dhcp

# The wifi (wireless) network interface
auto wlan0
allow-hotplug wlan0
iface wlan0 inet dhcp
      wpa-ssid YOUR_SSID
      wpa-psk YOUR_WEP_KEY
```

<p>I ran  <code>ifconfig -a</code> and got the following:</p>
<p>
<center>
<a href="http://jeffskinnerbox.files.wordpress.com/2012/11/ifconfig-a.jpg"><img class="aligncenter size-full wp-image-574" title="ifconfig -a" alt="ifconfig" src="http://jeffskinnerbox.files.wordpress.com/2012/11/ifconfig-a.jpg" width="545" height="311" /></a>
</center>
</p>
<p>This tells me that Linux sees the WiFi device and assigned it device name <code>wlan0</code>. It also says there isn't an IP address assigned and no data is moving.  Appears that network interface <code>wlan0</code> isn't running so I tried bring it up with <code>sudo ifup wlan0</code> and I got the following:</p>
<p>
<center>
<a href="http://jeffskinnerbox.files.wordpress.com/2012/11/ifup-wlan0.jpg"><img class="aligncenter size-full wp-image-576" title="ifup wlan0" alt="wlan0" src="http://jeffskinnerbox.files.wordpress.com/2012/11/ifup-wlan0.jpg" width="545" height="311" /></a>
</center>
</p>
<p>No IP assigned ... now what?</p><h2>This Worked ... But</h2>
<p>After the typical thrashing about, it came to me that I'm not using WAP security (which is implied by the<code>/etc/network/interfaces</code> file content) but I'm using WEP.  I did some web searching and found a site that claimed to address <a href="http://www.gc-linux.org/wiki/WL:Wifi_Configuration">Debian WiFi WEP configuration</a>.  This provided me the needed command syntax for the solution.   I updated the<code>/etc/network/interfaces</code> file with the following:</p>

```bash
# The loopback network interface
auto lo
iface lo inet loopback

# The primary (wired) network interface
iface eth0 inet dhcp

# The wifi (wireless) network interface
auto wlan0
allow-hotplug wlan0
iface wlan0 inet dhcp
       wireless-essid YOUR_SSID
       wireless-key YOUR_WEP_KEY
```


<p>I then ran <code>sudo ifup wlan0</code> to start the wireless networking (Note: you can use <code>sudo ifdown wlan0</code> to turn-off the wireless network).  This time DHCP discovery appeared to work.  I then ran <code>ifconfig -a</code> giving me the display below with an assigned wireless IP.</p>
<p>
<center>
<a href="http://jeffskinnerbox.files.wordpress.com/2012/11/ifconfig-a-this-time-it-worked.jpg"><img class="aligncenter size-full wp-image-585" title="ifconfig -a (this time it worked)" alt="it worked" src="http://jeffskinnerbox.files.wordpress.com/2012/11/ifconfig-a-this-time-it-worked.jpg" width="545" height="322" /></a>
</center>
</p>
<p>The wireless device now has an IP address and data seems to be flowing.  In an effort to further convince myself that the WiFi was working, I disconnected the wired ethernet connection and attempted to re-login in via <code>ssh -X pi@RedRPi.local</code>, over the wireless interface. This failed, giving the message:</p>

```
ssh: Could not resolve hostname RedRPi.local: hostname nor servname provided, or not known
```

<h2>Working For Sure</h2>
<p>I suspected (after more thrashing about) it was Ssh or <a href="http://learn.adafruit.com/adafruit-raspberry-pi-educational-linux-distro/occidentalis-v0-dot-1#bonjour-support">Avahi/Bonjour</a> or both that was getting in the way.  So I did the following:</p><ol><ol><li>I cleaned out the <code>~/.ssh/known_hosts</code> file on the PC from which I'm accessing the RPi (I'm using Cygwin with Openssh). With the entries in the file removed  ssh keys would need to be recreated on next login.</li><li>I then logged into the RPi in via <code>ssh -X pi@RedRPi.local.</code> The login created an entry the <code>~/.ssh/known_hosts</code> file on the PC.</li><li>Using vi, I edited the  <code>~/.ssh/known_hosts</code> file.  I duplicated the one existing record but changed the  IP address to the wireless address.</li><li>I restarted the openssh on the PC.  (I terminated all the Cygwin window and restarted them.  I could get anything else to work short of a PC reboot).</li><li>I then logged in using <code>ssh -X pi@192.168.1.7</code>. Now I'm wireless!!</li></ol></ol>
<p>My <code>~/.ssh/known_hosts</code> file looks like this:</p>
<p>
<center>
<a href="http://jeffskinnerbox.files.wordpress.com/2012/11/known_hosts.jpg"><img class="aligncenter size-full wp-image-594" title="known_hosts" alt="known hosts" src="http://jeffskinnerbox.files.wordpress.com/2012/11/known_hosts.jpg" width="545" height="300" /></a>
</center>
</p><h2>Epilogue No. 1</h2>
<p>I have found that if  I don't use a USB  powered hub and I plug in the OURlink WiFi (802.11b/g/n) USB Adapter while the RPi is up and running, the RPi will crash.  The good news is that, once the RPi reboots, it runs fine without the powered hub.</p>
<p>So, go ahead and use the WiFi USB Adapter, without the powered hub, but make sure the adapter is plugged in when you boot up .... problem solved!</p>

## Epilogue No. 2
I eventually got around to improving the security on my WiFi network by moving to WPA2.
This is a vast improvement over WEP, but [not completely unbreakable][01].
I followed the procedures outline in [How to Setup Wi-Fi On Your Raspberry Pi via the Command Line][02].

The results are these two files: `/etc/network/interfaces`

```bash
# The loopback network interface
auto lo
iface lo inet loopback

# The primary (wired) network interface
iface eth0 inet dhcp

# The wifi (wireless) network interface for WPA2
allow-hotplug wlan0
iface wlan0 inet dhcp
wpa-conf /etc/wpa_supplicant/wpa_supplicant.conf
iface default inet dhcp
```

and the file `/etc/wpa_supplicant/wpa_supplicant.conf` 

```bash
ctrl_interface=DIR=/var/run/wpa_supplicant GROUP=netdev
update_config=1

network={
ssid="YOUR_SSID"
psk="YOUR_WEP_KEY"

# Protocol type can be: RSN (for WP2) and WPA (for WPA1)
proto=RSN

# Key management type can be: WPA-PSK or WPA-EAP (Pre-Shared or Enterprise)
key_mgmt=WPA-PSK

# Pairwise can be CCMP or TKIP (for WPA2 or WPA1)
pairwise=CCMP

#Authorization option should be OPEN for both WPA1/WPA2 (in less commonly used are SHARED and LEAP)
auth_alg=OPEN
}
```

To get it running, execute the commands `sudo ifdown wlan0` then `sudo ifup wlan0`.

**Note:** To create the Hex version of the `psk` key from an ASCII passphrase,
your can use the [`wpa_passphrase`][04] [documented here][03].

## Epilogue No. 3
I had to swap out my OURlink WiFi (802.11b/g/n) USB adapter on the RPi for a new one
and suddenly WiFi stopped working.
This seem strange, since it was the same manufacture.
I discovered, via the [`lsusb`][05] command, that the USB ID had changed for the adapter.
This could imply that the chip set inside the adapter is also different.

After much research, I discovered that the device drive had changed.
I found the procedures for the fix in [this article][06]
and downloaded the new compiled module driver for the kernel
along with its companion firmware file, 
and added the module to the kernel.

At that point, the WiFi adapter could be sensed by [`ifconfig`][08]
but I still couldn't get it to work.
A looked into the `/etc/udev/rules.d/70-persistent-net.rules` file for [udev rules][07],
and this showe that the adapter was assigned a new name.
I reflected this new name in the `/etc/network/interfaces` file,
and then everything worked fine.



[01]:http://phys.org/news/2014-03-wpa2-wireless.html
[02]:http://www.howtogeek.com/167425/how-to-setup-wi-fi-on-your-raspberry-pi-via-the-command-line/
[03]:http://programmaticponderings.wordpress.com/2012/12/25/installing-a-miniature-wifi-module-on-the-raspberry-pi/
[04]:http://linux.die.net/man/8/wpa_passphrase
[05]:http://linux.die.net/man/8/lsusb
[06]:http://www.mendrugox.net/2013/08/tp-link-tl-wn725n-v2-working-on-raspberry-raspbian/
[07]:http://en.wikipedia.org/wiki/Udev
[08]:http://www.computerhope.com/unix/uifconfi.htm
