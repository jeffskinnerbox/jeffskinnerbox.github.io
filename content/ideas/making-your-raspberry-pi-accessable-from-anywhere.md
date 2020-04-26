
----

* [PiTunnel connects your Raspberry Pi to the world](https://techcrunch.com/2017/12/06/pitunnel-connects-your-raspberry-pi-to-the-world/)

When installing a computer, such as a Raspberry Pi, on your home network,
its not reachable from the public Internet.
On your home LAN, your behind a NAT or a firewall and
it generally can’t act accept income requests for connections.

A way around this is to open a port in your home router (firewall)
and forward traffic from that port, through your home network, to the Raspberry Pi.
Problem solve!
Your home based RPi is now accessible anywhere you can get an Internet connection.

But what if your Raspberry Pi is on some private network you cannot control,
where you can't modify the firewall rules and foreword-ports?
A way around this is called [reverse-tunneling][01].
In reverse tunneling,
you establish an encrypted connecting out of the RPi, onto the Internet to a third party server.
This third party then accepts connections from you
and passes your incoming connection onto the reverse tunnel back to the RPi,
just as you would have connected directly to it.

Your tunnel connection is encrypted and secured via password (or better yet ssh keys).
Your connect to the thrid party would also be encripted and password protected,
giving you total end-to-end protection.
The only difference is that you always connect to the third party to reach your RPi,
and all traffic between you and the RPi will go through that third party.
This makes it so that your RPi accessible and secure
even though it’s buried behind a NAT or a firewall!

# Reverse Shells
* [Reverse Shells](https://www.sans.org/reading-room/whitepapers/covert/inside-out-vulnerabilities-reverse-shells-1663)
* [SSH Reverse Proxy and Tunneling](https://medium.com/better-programming/ssh-reverse-proxy-and-tunneling-b6d96ab2325)

# How Is This Done?
1. You will need a virtual machine (VM) somewhere on the Internet.
Any cheap Linux VM will do.
1. On this VM you will need SSH running, a user login for the RPi to connect,
and this user use will have ssh keys to login.

# Step X: Test Reverse Tunnel from Server
Now that we know the SSH connection works,
we want to test that the server allows us to create a reverse tunnel.

# Step X: Install Agent on RPi
Now we want to copy over the `agent` we created to the RPi
and make it into a service which runs automatically.

# Step X: Creating a systemd Service
`systemd` is an `init` system which is used on many GNU/Linux distributions,
including Raspbian and HypriotOS.

* [Pack Your Bags – Systemd Is Taking You To A New Home](https://hackaday.com/2019/10/16/pack-your-bags-systemd-is-taking-you-to-a-new-home/)

# Step X: xxx
# Step X: xxx

# Step X: Power Saving
If your RPi is running on battery power
or has a very limited connection times,
you might want to restrict the time it keeps the tunnel open.

For example, you might want to have the RPi open the tunnel
for five minutes at the top of the hour, every hour.
To do this, set a timeout on the tunnel.
When creating the Agent script,
add the -e timeout parameter so that the Agent automatically closes the tunnel after five minutes (300 seconds).
Note that any ongoing connection will not forcefully be closed.

# Step X: Adding Security
This from - https://rpi.sh/post/agent/

The Agent above is listening on the interface 0.0.0.0 on the remote ssh server, meaning that it will accept connections from the public internet.

For a SSH service or web server this is often what we want, but for a Virtual Network Computing (VNC) service or other similar sensitive connections we could tighten the security by listening to the local interface 127.0.0.1 instead.

This would mean that to be able to connect to the reverse tunnel port on the remote server we would first have to create a forward tunnel from our laptop to the server, and then make a VNC connection to our local port (forward tunnel->reverse tunnel->Pi).

###############################################################################

What if you Jupyter environment isn't on your local computer,
but instead on a remote compute accessible via TCP/IP?
You want to open and manipulate an Jupyter Notebook running on the remote computer.
This can be done by opening an SSH tunnel.
This tunnel will forward the port used by the remotely running Jupyter Notebook server instance
to a port on your local machine,
where it can be accessed in a browser just like a locally running Jupyter Notebook instance.

On the remote machine, start the Jupyter Notebooks server:

```bash
# on the remote machine, start the jupyter notebooks server
jupyter notebook --no-browser --port=8889
```

On the local machine, start an SSH tunnel:

```bash
# on the local machine, start an SSH tunnel
# run in background: ssh -f -N -L localhost:8888:localhost:8889 remote_user@remote_host
# run in foreground: ssh -N -L localhost:8888:localhost:8889 remote_user@remote_host
ssh -N pi@BlueRPi -L localhost:8888:localhost:8889
```

Now enter `localhost:8888` in your favorite browser to use the remote Jupyter Notebook!

###############################################################################


* [How DNS Tunneling Works](http://inside-out.xyz/technology/how-dns-tunneling-works.html)
* [DNS Tunneling: Getting The Data Out Over Other Peoples’ WiFi](http://hackaday.com/2016/08/07/getting-the-data-out-over-other-peoples-wifi/)
* [TOWL - Telemetry over Opportunistic WiFi Links](http://www.phreakmonkey.com/2016/08/towl-telemetry-over-opportunistic-wifi.html)
* [Nameserver Transfer Protocol (NSTX)](http://thomer.com/howtos/nstx.html)
* [iodine](http://code.kryo.se/iodine/)
* [dnscat2 – DNS Tunnel Tool](http://www.darknet.org.uk/2016/01/dnscat2-dns-tunnel-tool/)
* [Tunneling Data and Commands Over DNS to Bypass Firewalls](https://zeltser.com/c2-dns-tunneling/)
* [PowerShell DNS Command & Control with dnscat2-powershell](http://www.blackhillsinfosec.com/?p=5578)



###############################################################################


# Reverse SSH Tunnel – when you cannot SSH to your host
* [Persistent reverse (NAT bypassing) SSH tunnel access with autossh](https://raymii.org/s/tutorials/Autossh_persistent_tunnels.html)

You may be in a restricted network situation (company, hotel, hospital)
where you have a "server" which you want to access from outside that network.
You cannot forward ports to access that machine,
but you can ssh to the outside (to your own server).
You'll need another server to which you setup a persistent ssh connection with a reverse tunnel.
Then if you need to access the machine you ssh into the other server,
and from there you ssh through the tunnel to the restriced machine.
(Make sure you have permission to do this from the administrators.
They generally don't like holes in the firewall/security.)

The down-side of SSH is that by itself it cannot maintain a persistent connection
— network issues may force the tunnel to stop responding, or even drop completely.
Autossh is a small front-end for SSH that can monitor the connection,
and restart the tunnel if it drops or stops responding.

* [Reverse SSH Tunnel – when you cannot SSH to your host](http://home.oraculo.pt/2017/03/21/reverse-ssh-tunnel/)
* [Keeping your SSH connections alive with autossh](https://www.linux.com/news/keeping-your-ssh-connections-alive-autossh)
* [SSH TUNNELLING FOR FUN AND PROFIT: AUTOSSH](https://www.everythingcli.org/ssh-tunnelling-for-fun-and-profit-autossh/)
* [Persistent reverse (NAT bypassing) SSH tunnel access with autossh](https://raymii.org/s/tutorials/Autossh_persistent_tunnels.html)
* [Creating a persistent ssh tunnel in Ubuntu](https://erik.torgesta.com/2013/12/creating-a-persistent-ssh-tunnel-in-ubuntu/)
* [Autossh Startup Script for Multiple Tunnels](https://surniaulula.com/2012/12/10/autossh-startup-script-for-multiple-tunnels/)

* [Reverse SSH Tunnel – when you cannot SSH to your host](http://home.oraculo.pt/2017/03/21/reverse-ssh-tunnel/)
* [Keeping your SSH connections alive with autossh](https://www.linux.com/news/keeping-your-ssh-connections-alive-autossh)
* [SSH TUNNELLING FOR FUN AND PROFIT: AUTOSSH](https://www.everythingcli.org/ssh-tunnelling-for-fun-and-profit-autossh/)
* [Persistent reverse (NAT bypassing) SSH tunnel access with autossh](https://raymii.org/s/tutorials/Autossh_persistent_tunnels.html)
* [Creating a persistent ssh tunnel in Ubuntu](https://erik.torgesta.com/2013/12/creating-a-persistent-ssh-tunnel-in-ubuntu/)
* [Autossh Startup Script for Multiple Tunnels](https://surniaulula.com/2012/12/10/autossh-startup-script-for-multiple-tunnels/)

################################################################################
Up-and-coming reverse proxy is [Candy](https://caddyserver.com/)
* [My Experience of Switching from NGINX to Caddy](https://medium.com/@torch2424/my-experience-of-switching-from-nginx-to-caddy-79bc8cd627c0)
* [What Makes Caddy Different](https://caddyserver.com/blog/what-makes-caddy-different.html)
* [Setup Nginx as a reverse proxy](https://www.inpimation.com/setup-nginx-reverse-proxy/)
* [nginx reverse proxy mopidy raspberry pi 2](https://www.inpimation.com/nginx-mopidy-raspberry-pi-2/)
* [How To Develop a Node.js TCP Server Application using PM2 and Nginx on Ubuntu 16.04](https://www.digitalocean.com/community/tutorials/how-to-develop-a-node-js-tcp-server-application-using-pm2-and-nginx-on-ubuntu-16-04)
################################################################################



## Step X: Streaming Camera to the Internet - DONE
So far, using the Raspberry Pi camera module,
I have streamed video on my local network
but I wish to do this across the Internet.
Your Raspberry Pi will be transformed into a video surveillance camera
that you can place anywhere you can get WiFi with Internet access
and see the live streaming on a browser anywhere in the world.
You can [make your `localhost` (aka `127.0.0.1`) accessible from anywhere in the world][111]
via a [secure tunnel][112] service, or more specifically, [reverse proxy][115].
This provides you a publicly accessible URL, that watch for calls on that URL,
and then forwards those calls to your localhost server.
You'll need to install some software


Now sign up to the ngrok public servier at `https://dashboard.ngrok.com/user/signup`.
download ngrok, follow the [get strated page][114],
and check out the [ngrok documentation][113] for additional features.
The installation of `ngrok` is outlined below:

```bash
# download ngrok from https://ngrok.com/download
# no need for ngrok-server since you'll be using the public site
unzip ~/Download/ngrok.zip
sudo mv ~/Download/ngrok /usr/local/bin

# print version number of ngrok
ngrok version

# go to https://dashboard.ngrok.com/get-started and get your authtoken
ngrok authtoken dffjgyiorggkjt4435403_ggghhgl89B3k9ddlgiggg

# create your first secure tunnel
# open the web interface at http://localhost:4040 to inspect and replay requests
ngrok http 80
```

Now fire up the camera and use `ngrok` to stream the camera's live video to a
to the URL provided by `ngrok`:

```bash
# start streaming the video on the raspberry pi zero
LD_LIBRARY_PATH=/home/pi/src/mjpg-streamer/mjpg-streamer-experimental ; mjpg_streamer -i "input_raspicam.so -rot 90 -ex night -ifx none awb auto" -o "output_http.so -w www -p 8090"

# forward the video to the internet via ngrok
ngrok http 8090

# now using the url provide by ngrok, see the video in your broswer
google-chrome http://be4fac06.ngrok.io/?action=stream
```

* [Ngrok, secure tunnels to your Local Development Environment …or how I exposed my local services in 3 seconds?](https://medium.com/@jotarios/ngrok-secure-tunnels-local-dead8685bd71)

* [How to secure your Raspberry Pi](https://opensource.com/article/17/3/iot-security-raspberry-pi)
* [Useful Linux Security Tricks To Harden Your System](https://dzone.com/articles/useful-linux-security-tricks-to-harden-your-system?edition=283882&utm_source=weeklydigest&utm_medium=email&utm_campaign=wd2017-03-15)
* [IoT Security: Tips to Protect your Device from Bad Hackers](https://www.hackster.io/charifmahmoudi/iot-security-tips-to-protect-your-device-from-bad-hackers-768093?ref=platform&ref_id=425_trending___&offset=0)
* [“IOT SECURITY” IS AN EMPTY BUZZWORD](http://hackaday.com/2016/06/13/iot-security-is-an-empty-buzzword/)

* [WiFiManager](https://github.com/tzapu/WiFiManager)
* [Is Someone Stealing Your WiFi?](http://askbobrankin.com/is_someone_stealing_your_wifi.html)

* [The Internet Of Things Needs Firewalls Too](http://electronicdesign.com/communications/internet-things-needs-firewalls-too)

* [How an Attacker Could Crack Your Wireless Network Security](https://www.howtogeek.com/191482/how-an-attacker-could-crack-your-wireless-network-security/)



###############################################################################

# Web TLS/SSL
* [How To Secure Your Rancher Web App with Let's Encrypt on Ubuntu 16.04](https://www.digitalocean.com/community/tutorials/how-to-secure-your-rancher-web-app-with-let-s-encrypt-on-ubuntu-16-04)

# Reverse SSH Tunnel – when you cannot SSH to your host
You may be in a restricted network situation (company, hotel, hospital)
where you have a "server" which you want to access from outside that network.
You cannot forward ports to access that machine,
but you can ssh to the outside (to your own server).
You'll need another server to which you setup a persistent ssh connection with a reverse tunnel.
Then if you need to access the machine you ssh into the other server,
and from there you ssh through the tunnel to the restriced machine.
(Make sure you have permission to do this from the administrators.
They generally don't like holes in the firewall/security.)

The down-side of SSH is that by itself it cannot maintain a persistent connection
— network issues may force the tunnel to stop responding, or even drop completely.
Autossh is a small front-end for SSH that can monitor the connection,
and restart the tunnel if it drops or stops responding.

* [Reverse SSH Tunnel – when you cannot SSH to your host](http://home.oraculo.pt/2017/03/21/reverse-ssh-tunnel/)
* [Keeping your SSH connections alive with autossh](https://www.linux.com/news/keeping-your-ssh-connections-alive-autossh)
* [SSH TUNNELLING FOR FUN AND PROFIT: AUTOSSH](https://www.everythingcli.org/ssh-tunnelling-for-fun-and-profit-autossh/)
* [Persistent reverse (NAT bypassing) SSH tunnel access with autossh](https://raymii.org/s/tutorials/Autossh_persistent_tunnels.html)
* [Creating a persistent ssh tunnel in Ubuntu](https://erik.torgesta.com/2013/12/creating-a-persistent-ssh-tunnel-in-ubuntu/)
* [Autossh Startup Script for Multiple Tunnels](https://surniaulula.com/2012/12/10/autossh-startup-script-for-multiple-tunnels/)

* [Reverse SSH Tunnel – when you cannot SSH to your host](http://home.oraculo.pt/2017/03/21/reverse-ssh-tunnel/)
* [Keeping your SSH connections alive with autossh](https://www.linux.com/news/keeping-your-ssh-connections-alive-autossh)
* [SSH TUNNELLING FOR FUN AND PROFIT: AUTOSSH](https://www.everythingcli.org/ssh-tunnelling-for-fun-and-profit-autossh/)
* [Persistent reverse (NAT bypassing) SSH tunnel access with autossh](https://raymii.org/s/tutorials/Autossh_persistent_tunnels.html)
* [Creating a persistent ssh tunnel in Ubuntu](https://erik.torgesta.com/2013/12/creating-a-persistent-ssh-tunnel-in-ubuntu/)
* [Autossh Startup Script for Multiple Tunnels](https://surniaulula.com/2012/12/10/autossh-startup-script-for-multiple-tunnels/)

## Step X: Streaming Camera to the Internet - DONE
So far, using the Raspberry Pi camera module,
I have streamed video on my local network
but I wish to do this across the Internet.
Your Raspberry Pi will be transformed into a video surveillance camera
that you can place anywhere you can get WiFi with Internet access
and see the live streaming on a browser anywhere in the world.
You can [make your `localhost` (aka `127.0.0.1`) accessible from anywhere in the world][111]
via a [secure tunnel][112] service, or more specifically, [reverse proxy][115].
This provides you a publicly accessible URL, that watch for calls on that URL,
and then forwards those calls to your localhost server.
You'll need to install some software


Now sign up to the ngrok public servier at `https://dashboard.ngrok.com/user/signup`.
download ngrok, follow the [get strated page][114],
and check out the [ngrok documentation][113] for additional features.
The installation of `ngrok` is outlined below:

```bash
# download ngrok from https://ngrok.com/download
# no need for ngrok-server since you'll be using the public site
unzip ~/Download/ngrok.zip
sudo mv ~/Download/ngrok /usr/local/bin

# print version number of ngrok
ngrok version

# go to https://dashboard.ngrok.com/get-started and get your authtoken
ngrok authtoken dffjgyiorggkjt4435403_ggghhgl89B3k9ddlgiggg

# create your first secure tunnel
# open the web interface at http://localhost:4040 to inspect and replay requests
ngrok http 80
```

Now fire up the camera and use `ngrok` to stream the camera's live video to a
to the URL provided by `ngrok`:

```bash
# start streaming the video on the raspberry pi zero
LD_LIBRARY_PATH=/home/pi/src/mjpg-streamer/mjpg-streamer-experimental ; mjpg_streamer -i "input_raspicam.so -rot 90 -ex night -ifx none awb auto" -o "output_http.so -w www -p 8090"

# forward the video to the internet via ngrok
ngrok http 8090

# now using the url provide by ngrok, see the video in your broswer
google-chrome http://be4fac06.ngrok.io/?action=stream
```

* [How to secure your Raspberry Pi](https://opensource.com/article/17/3/iot-security-raspberry-pi)
* [Useful Linux Security Tricks To Harden Your System](https://dzone.com/articles/useful-linux-security-tricks-to-harden-your-system?edition=283882&utm_source=weeklydigest&utm_medium=email&utm_campaign=wd2017-03-15)
* [IoT Security: Tips to Protect your Device from Bad Hackers](https://www.hackster.io/charifmahmoudi/iot-security-tips-to-protect-your-device-from-bad-hackers-768093?ref=platform&ref_id=425_trending___&offset=0)
* [“IOT SECURITY” IS AN EMPTY BUZZWORD](http://hackaday.com/2016/06/13/iot-security-is-an-empty-buzzword/)

* [WiFiManager](https://github.com/tzapu/WiFiManager)
* [Is Someone Stealing Your WiFi?](http://askbobrankin.com/is_someone_stealing_your_wifi.html)

* [The Internet Of Things Needs Firewalls Too](http://electronicdesign.com/communications/internet-things-needs-firewalls-too)

* [How an Attacker Could Crack Your Wireless Network Security](https://www.howtogeek.com/191482/how-an-attacker-could-crack-your-wireless-network-security/)



# Auto-Connect to Open WiFi Network
[!open-wifi](http://true-random.com/homepage/projects/wifi/free_wifi.jpg)
I would like this project to auto-connect to any open WiFi network automatically;
Without knowing the SSID beforehand or involving any human intervention.

To have the RPi Zero search and connect to ANY Open WiFi,
modifiy the `/etc/network/interfaces`:

```bash
# Include files from /etc/network/interfaces.d:
source-directory /etc/network/interfaces.d

auto lo
iface lo inet loopback

iface eth0 inet manual

# establish connection to home wifi and other known networks
auto wlan0
allow-hotplug wlan0
iface wlan0 inet dhcp
    wpa-conf /etc/wpa_supplicant/wpa_supplicant.conf
```


See the following `/etc/wpa_supplicant/wpa_supplicant.conf`
to connect to any open / unsecured wifi in range:

```bash
# country code environment variable, required for RPi 3
country=US

# path to the ctrl_interface socket and the user group
ctrl_interface=DIR=/var/run/wpa_supplicant GROUP=netdev

# allow wpa_supplicant to overwrite configuration file whenever configuration is changed
update_config=1

# 1 = wpa_supplicant initiates scanning and AP selection ; 0 = driver takes care of scanning
ap_scan=1

# wifi network settings for home network
network={
    id_str="home"              # needs to match keyword you used in the interfaces file
    psk="my-password"          # pre-shared key used in WPA-PSK mode ; 8 to 63 character ASCII passphrase
    ssid="74LL5"               # SSID either as an ASCII string with double quotation or as hex string
    mode=0                     # 0 = managed, 1 = ad-hoc, 2 = access point
    scan_ssid=0                # = 1 scan for hidden SSID ; = 0 scans for visible SSID
    proto=WPA RSN              # list of supported protocals; WPA = WPA ; RSN = WPA2 (also WPA2 is alias for RSN)
    key_mgmt=WPA-PSK WPA-EAP   # list of authenticated key management protocols (WPA-PSK, WPA-EAP, ...)
    pairwise=CCMP              # accepted pairwise (unicast) ciphers for WPA (CCMP, TKIP, ...)
    auth_alg=OPEN              # authentication algorithms (OPEN, SHARED, LEAP, ...)
    priority=5                 # priority of selecting this network (larger numbers are higher priority)
}

wifi network settings for jetpack
network={
    id_str="jetpack"           # needs to match keyword you used in the interfaces file
    psk="my-password"          # pre-shared key used in WPA-PSK mode ; 8 to 63 character ASCII passphrase
    ssid="Verizon-MiFi6620L-7EE6"      # SSID either as an ASCII string with double quotation or as hex string
    mode=0                     # 0 = managed, 1 = ad-hoc, 2 = access point
    scan_ssid=0                # = 1 scan for hidden SSID ; = 0 scans for visible SSID
    proto=WPA RSN              # list of supported protocals; WPA = WPA ; RSN = WPA2 (also WPA2 is alias for RSN)
    key_mgmt=WPA-PSK WPA-EAP   # list of authenticated key management protocols (WPA-PSK, WPA-EAP, ...)
    pairwise=CCMP              # accepted pairwise (unicast) ciphers for WPA (CCMP, TKIP, ...)
    auth_alg=OPEN              # authentication algorithms (OPEN, SHARED, LEAP, ...)
    priority=3                 # priority of selecting this network (larger numbers are higher priority)
}

# connect to any open / unsecured wifi in range (must broadcast an SSID)
network={
    id_str="open_wifi"         # needs to match keyword you used in the interfaces file
    ssid=""                    # SSID isn't important, any will do
    mode=0                     # 0 = managed, 1 = ad-hoc, 2 = access point
    key_mgmt=NONE              # network must be open with no security
    priority=-999              # priority of selecting this network (small number means network of last resort)
}
```

Now bring interface down/up and check status.
Execute `sudo ifconfig wlan0 down && sudo ifconfig wlan0 up && sudo wpa_cli -i wlan0 status`
and look for `wpa_state=COMPLETED`.

# Auto-Connect to Public WiFi Network
* [How to get free wifi on public networks](https://medium.freecodecamp.com/free-wifi-on-public-networks-daf716cebc80#.hesy8hhz6)
    * [FreeWifi](https://github.com/kylemcdonald/FreeWifi)
    * [SpoofMAC](https://github.com/feross/SpoofMAC)

## Domain Name Server (DNS)
* [Introduction to the Domain Name System (DNS)](https://opensource.com/article/17/4/introduction-domain-name-system-dns)
* [Build your own DNS name server on Linux](https://opensource.com/article/17/4/build-your-own-name-server)
* [dnsd: DNS encoder, decoder, and server](https://github.com/ansuz/modern-dnsd)

## Telemetry over Opportunistic WiFi Links
* [How DNS Tunneling Works](http://inside-out.xyz/technology/how-dns-tunneling-works.html)
* [DNS Tunneling: Getting The Data Out Over Other Peoples’ WiFi](http://hackaday.com/2016/08/07/getting-the-data-out-over-other-peoples-wifi/)
* [TOWL - Telemetry over Opportunistic WiFi Links](http://www.phreakmonkey.com/2016/08/towl-telemetry-over-opportunistic-wifi.html)
* [Nameserver Transfer Protocol (NSTX)](http://thomer.com/howtos/nstx.html)
* [iodine](http://code.kryo.se/iodine/)
* [dnscat2 – DNS Tunnel Tool](http://www.darknet.org.uk/2016/01/dnscat2-dns-tunnel-tool/)
* [Tunneling Data and Commands Over DNS to Bypass Firewalls](https://zeltser.com/c2-dns-tunneling/)
* [PowerShell DNS Command & Control with dnscat2-powershell](http://www.blackhillsinfosec.com/?p=5578)




[01]:http://www.thegeekstuff.com/2013/11/reverse-ssh-tunnel
[02]:
[03]:
[04]:
[05]:
[06]:
[07]:
[08]:
[09]:
[10]:
