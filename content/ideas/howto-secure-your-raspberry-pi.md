
To start, checkout some of the sections with [HowTo: Set-Up the Raspberry Pi as a Headless Device](http://jeffskinnerbox.me/posts/2016/Apr/27/howto-set-up-the-raspberry-pi-as-a-headless-device/).

* [How to Check If Your Online Accounts Have Been Hacked](https://www.makeuseof.com/tag/check-online-accounts-hacked/)

* [How to encrypt your entire life in less than an hour](https://medium.freecodecamp.com/tor-signal-and-beyond-a-law-abiding-citizens-guide-to-privacy-1a593f2104c3)
* [Let’s Encrypt is a free, automated, and open Certificate Authority](https://letsencrypt.org/)

* [How to secure your Raspberry Pi](https://opensource.com/article/17/3/iot-security-raspberry-pi)
* [50 ways to avoid getting hacked in 2017](https://opensource.com/article/17/1/yearbook-50-ways-avoid-getting-hacked?sc_cid=70160000001275XAAQ)
* [Building Secure Systems Checklist](https://dzone.com/articles/building-secure-systems-checklist?edition=286882&utm_source=weeklydigest&utm_medium=email&utm_campaign=wd2017-03-22)
* [Useful Linux Security Tricks To Harden Your System](https://dzone.com/articles/useful-linux-security-tricks-to-harden-your-system?edition=283882&utm_source=weeklydigest&utm_medium=email&utm_campaign=wd2017-03-15)
* [IoT Security: Tips to Protect your Device from Bad Hackers](https://www.hackster.io/charifmahmoudi/iot-security-tips-to-protect-your-device-from-bad-hackers-768093?ref=platform&ref_id=425_trending___&offset=0)
* [“IOT SECURITY” IS AN EMPTY BUZZWORD](http://hackaday.com/2016/06/13/iot-security-is-an-empty-buzzword/)

* [WiFiManager](https://github.com/tzapu/WiFiManager)
* [Is Someone Stealing Your WiFi?](http://askbobrankin.com/is_someone_stealing_your_wifi.html)

* [The Internet Of Things Needs Firewalls Too](http://electronicdesign.com/communications/internet-things-needs-firewalls-too)
* [Creating a Baseline Trace - Knowing how an IoT device behaves when it starts up can help troubleshoot security issues.](http://www.networkcomputing.com/cloud-infrastructure/iot-security-creating-baseline-trace/1188674858?elq_mid=79207&elq_cid=23179140&elqTrackId=0f8ae392a68044dd91ea6318a68779cd&elq=a5c1673a5d854ffd8100669a13bc3b90&elqaid=79207&elqat=1&elqCampaignId=27215)

* [How an Attacker Could Crack Your Wireless Network Security](https://www.howtogeek.com/191482/how-an-attacker-could-crack-your-wireless-network-security/)

* [Uptime Monitor - monitors your websites every 5 minutes and alerts you if your sites are down](https://uptimerobot.com/)

* [How Passwordless Authentication Works](https://dzone.com/articles/how-passwordless-authentication-works?edition=305105&utm_source=weeklydigest&utm_medium=email&utm_campaign=wd2017-06-21)
* [The Secret Life Of Your Login Credentials](https://blog.bradfieldcs.com/the-secret-life-of-your-login-credentials-6a254bad52ce)
* [Why PKI will secure the Internet of Things for years to come](https://www.helpnetsecurity.com/2018/03/19/pki-iot/)

* [LOCK UP YOUR RASPBERRY PI WITH GOOGLE AUTHENTICATOR](https://hackaday.com/2016/09/30/lock-up-your-raspberry-pi-with-help-from-google/)
* [EXPOSE YOUR RASPBERRY PI ON ANY NETWORK](https://hackaday.com/2016/09/20/expose-your-raspberry-pi/)
* [HOW TO RUN A PAGEKITE SERVER TO EXPOSE YOUR RASPBERRY PI](https://hackaday.com/2016/09/21/how-to-run-a-pagekite-server-to-expose-your-raspberry-pi/)

# wolfSSL
The [wolfSSL](https://www.wolfssl.com/wolfSSL/Home.html)
is an open source embedded SSL library (formerly CyaSSL) which is lightweight, portable, C-language-based SSL/TLS library targeted at IoT, embedded, and RTOS environments primarily because of its size, speed, and feature set. It works seamlessly in desktop, enterprise, and cloud environments as well. wolfSSL supports industry standards up to the current TLS 1.3 and DTLS 1.2, is up to 20 times smaller than OpenSSL, offers a simple API, an OpenSSL compatibility layer, OCSP and CRL support,

* [What You Need to Know About the TLS 1.3 Protocol and wolfSSL’s SSL/TLS Libraries](https://www.allaboutcircuits.com/news/what-you-need-to-know-about-the-tls-1.3-protocol-and-wolfssls-ssl-tls-libra)
* [lwIP - A Lightweight TCP/IP stack](https://savannah.nongnu.org/projects/lwip/)
* [Secure Communication With TLS and the Mosquitto Broker](https://dzone.com/articles/secure-communication-with-tls-and-the-mosquitto-broker)

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

################################################################################
Up-and-coming reverse proxy is [Candy](https://caddyserver.com/)
* [My Experience of Switching from NGINX to Caddy](https://medium.com/@torch2424/my-experience-of-switching-from-nginx-to-caddy-79bc8cd627c0)
* [What Makes Caddy Different](https://caddyserver.com/blog/what-makes-caddy-different.html)
################################################################################

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

# Microchip's ATECC508A
 many other MCUs) stores those private TLS credentials unprotected on its flash memory. Anybody who has physical access to the device can steal private keys and get access to the cloud.

* CryptoAuth Xplained Pro - http://www.atmel.com/tools/cryptoauthxplainedpro.aspx
* [The two-dollar secure IoT solution: Mongoose OS + ESP8266 + ATECC508 + AWS IoT](https://mongoose-os.com/blog/mongoose-esp8266-atecc508-aws/)
* http://www.cnx-software.com/2017/03/07/secure-iot-connectivity-with-nodemcu-esp8266-board-atecc508a-crypto-chip-mongoose-os-and-aws-iot/
* [Security Module For Raspberry Pi](https://www.zymbit.com/zymkey/#Cryptosilicon)
* https://www.youtube.com/watch?v=g1jB11wOQDg
* http://embeddedblog.blogspot.com/2016/02/atmel-moves-iot-security-into-hardware.html

# Maxim DS28C36
* [MAXAUTHDEMO1 Kit: Demonstrating Cryptographic Hash, Signatures, and Authentication](https://www.maximintegrated.com/en/products/digital/memory-products/MAXAUTHDEMO.html)


[110]:https://www.theodo.fr/blog/2016/06/expose-your-local-environment-to-the-world-with-ngrok/
[111]:https://www.sitepoint.com/accessing-localhost-from-anywhere/
[112]:https://en.wikipedia.org/wiki/Tunneling_protocol
[113]:https://ngrok.com/docs/2
[114]:https://dashboard.ngrok.com/get-started
[115]:https://en.wikipedia.org/wiki/Reverse_proxy

