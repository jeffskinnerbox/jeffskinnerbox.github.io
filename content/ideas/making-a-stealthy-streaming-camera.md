* Consider using [OpenFaaS](https://www.openfaas.com/)

* [Live Streaming Goes Pro with a Hacked Backpack](https://hackaday.com/2018/09/03/live-streaming-goes-pro-with-a-hacked-backpack/)
* [Hundreds ‘Rickrolled’ in Mysterious Campus Prank at Cornell](https://cornellsun.com/2017/11/10/hundreds-rickrolled-in-mysterious-campus-prank-at-cornell/)
* [A Doorbell With Facial Recognition](https://medium.com/@mppise/a-doorbell-with-facial-recognition-3b132bf9605)
* [Building a Raspberry Pi security camera with OpenCV](https://www.pyimagesearch.com/2019/03/25/building-a-raspberry-pi-security-camera-with-opencv/)

* [Video Sreaming Like Your Raspberry Pi Depended On It](https://hackaday.com/2017/09/12/video-streaming-like-your-raspberry-pi-depended-on-it/)

# ESP32-CAM or ESP32-EYE + Omnivision camera
* [How to make a small, low-cost, remote accessible security camera with an ESP32](https://www.nabto.com/esp32/)
* [Matchbox-Sized P2P Remote Accessible Camera with ESP32](https://www.hackster.io/crgregersen/matchbox-sized-p2p-remote-accessible-camera-with-esp32-a41126)
* [ESP32-CAM Video Streaming Web Server (works with Home Assistant)](https://randomnerdtutorials.com/esp32-cam-video-streaming-web-server-camera-home-assistant/)
* [ESP32-Cam Does Time Lapse](https://hackaday.com/2020/01/28/esp32-cam-does-time-lapse/)


>**stealthy**, adjective [stel-thee]
>behaving, done, or made in a cautious and surreptitious manner, so as not to be seen or heard.

# Tiny Spy Audio Transmitter
* [Tiny Transmitter Brings Out the Spy Inside You](https://hackaday.com/2018/05/18/tiny-transmitter-brings-out-the-spy-inside-you/)

# Calling Home
* [PR-Holonet: Disaster Area Emergency Comms](https://hackaday.io/project/140426-pr-holonet-disaster-area-emergency-comms)
* [RockBLOCK Mk2 - Iridium SatComm Module](https://www.sparkfun.com/products/13745)
* [Satellite communication with RockBLOCK](http://www.makersnake.com/rockblock/)

# DashCam
* [Making a DashCam Using the Raspberry Pi Zero (pt.1)](https://www.hackster.io/BnBe_Club/making-a-dashcam-using-the-raspberry-pi-zero-pt-1-9dd3ad)







If you USB camera stops working or generally misbehaves,
a frustrating solution is to restart your Linux.
I have found that reloading the kernal drivers can clear most problems:

```bash
# reload the kernal video driver
sudo rmmod uvcvideo
sudo modprobe uvcvideo
```



# Adding a Camera to the Raspberry Pi Zero - DONE
[camera!](http://raspi.tv/wp-content/uploads/2016/05/PiZero1.3_700.jpg)
[camera!](http://cdn.slashgear.com/wp-content/uploads/2016/05/2016-05-15-16.32.19-800x420.jpg)
[Raspberry Pi Zero version 1.3][06] has a camera connector,
and I'll be installing the version 2.1 camera
(previous version was v1.3 5MP and 1080p).
This [camera is 8 Megapixel, 1080p, and Better in Low Light][45]
and in general a [better camera][57].
The Zero’s camera cable connector is a little smaller than the ones used on the other Raspberry Pi.
This [Second Generation Raspberry Pi Camera Module][46] has the following specs:

* Fixed Focus Lens
* Sony [Exmor][49] [IMX219][48] Sensor Capable of [4K30][47], [1080P60][50], [720P180][51], 8MP Still
* 3280 (H) x 2464 (V) Active Pixel Count
* Maximum of 1080P30 and 8MP Stills in Raspberry Pi Board
* 2A Power Supply Highly Recommended

To activate the camera features on the RPi Zero,
access the configuration settings for the RPi by running the command:

```bash
# configure the raspberry pi camera
sudo raspi-config
```

Then navigate to “camera” and select “enable”.
Select “Finish” and reboot.

The installation of the camera cable must be done carefully and
its proper installation is illustrated in this picture:

[camera-cable](http://raspi.tv/wp-content/uploads/2016/05/PiZero1.3_700.jpg)

You can find [detail documentation on camera usage online][52].
A summary for [taking still pictures][54] and [taking videos][53] is given below.

To take a picture with the camera, do the following:

```bash
# install ImageMagick, which contains display
sudo apt-get install imagemagick

# take picture and store in image.jpg
raspistill -o ~/tmp/image.jpg --width 1024 --height 768

# display picture for viewing
display ~/tmp/image.jpg
```

You can also capture video with the camera.
To capture a 5 seconds of video in [H.264/MPEG-4 Advanced Video Coding (AVC)][09] format:

```bash
# capture video in file video.h264
raspivid -o ~/tmp/video.h264 --timeout 5000 --width 1024 --height 768 --codec H264

# record a 10 second VGA clip at 90fps
raspivid -w 640 -h 480 -fps 90 -t 10000 -o ~/tmp/test90fps.h264

# play the videos
mplayer ~/tmp/video.h264
mplayer ~/tmp/test90fps.h264

# stream video into mplayer
raspivid -n -t 0 -w 1280 -h 720 -fps 49 -o - | mplayer -cache 1024 -
```

Other possibilities for your camera are things like [time lapse photography][08] or
[`picamera`][55] which is a Python interface to the Raspberry Pi camera module
(source code [here][56]).
Or can do something more sophisticated like stream video to a web browser
via the Python package [`pistreaming`][58]
or with [`OpenCV`][59], or via [`motion`][60].
These implementations have there limitations since the video streamer and the web browser
must be on the same network.
In the subsequent sections,
we will work around these and other limitations.

----

# First, An Instant Camera / WebCam
* [ESP8266 (WiFi) + Camera Tutorial CODE with trigBoard & ArduCam](https://www.youtube.com/watch?v=0VgLEP1ktcg&feature=youtu.be)
* [ESP8266 Wi-Fi Instant Camera is a Simple Shooter](https://hackaday.com/2018/11/13/esp8266-wi-fi-instant-camera-is-a-simple-shooter/)
* [ESP32 / 8266 WiFi instant Camera](https://hackaday.io/project/162256-esp32-8266-wifi-instant-camera)
* [ESP8266 / ESP32 WiFi Powered Digital Camera](https://github.com/Heltec-Aaron-Lee/FS2) is a digital "Polaroid" that uploads the photo instantly to the cloud.
* [Captivating ESP32 Camera Hack](https://hackaday.com/2019/06/10/captivating-esp32-camera-hack/)
* [Cheap ESP32 Webcam](https://hackaday.com/2019/02/02/cheap-esp32-webcam/)
    * [A $9 Fully Open Source Streaming Webcam with No Soldering!](https://www.hackster.io/punkgeek/a-9-fully-open-source-streaming-webcam-with-no-soldering-c4b7c6)
    * [How can I display an RTSP video stream in a web page](https://stackoverflow.com/questions/2245040/how-can-i-display-an-rtsp-video-stream-in-a-web-page)
* [ESP32 with Camera and TFT Display](https://www.youtube.com/watch?v=v_8XifFcpaI&list=PLjUbKCHhzPExyfSCF_d9oH97dmMvn3tBD)
* [ESP-Eye: First Look (ESP32 Face Recognition)](https://www.youtube.com/watch?v=_JwMuvFVMsM&feature=youtu.be)
* [ESP32 Camera Mini Series](https://www.youtube.com/playlist?list=PLjUbKCHhzPExyfSCF_d9oH97dmMvn3tBD)
* LEDWallCamera
    * [Add-On Makes ESP32 Camera Board Easier To Program](https://hackaday.com/2020/01/09/add-on-board-makes-esp32-camera-board-easier-to-program/)
    * [ESP32-Cam Programmer & LED Wall Effects](https://www.youtube.com/watch?v=ikhZ34WgObc)

----
















## Step X: Streaming Camera to the Internet - DONE
So far, using the Raspberry Pi camera module,
I have streamed video on my local network
but I wish to do this across the Internet.
Your Raspberry Pi will be transformed into a video surveillance camera
that you can place anywhere you can get WiFi with Internet access
and see the live streaming on a browser anywhere in the world.
You can [make your `localhost` (aka `127.0.0.1`) accessible from anywhere in the world][02]
via a [secure tunnel][03] service, or more specifically, [reverse proxy][07].
This provides you a publicly accessible URL, that watch for calls on that URL,
and then forwards those calls to your localhost server.
You'll need to install some software
from a fee for service provider like [`ngrok`][01] or build your own.
Luckly, ngrok has a free option.
So ngrok is a simple utility that will take my local web server extablished by mjpg-streamer
(aka video streaming server) and makes it available on the web.

Now sign up to the ngrok public servier at `https://dashboard.ngrok.com/user/signup`.
download ngrok, follow the [get strated page][05],
and check out the [ngrok documentation][04] for additional features.
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


# Streaming Oneway
Sending arbitrary IEEE 802.11 frames can be useful in
unidirectional long-distance communication or low-overhead data transmission.

* [ESP32 WiFi Range Testing - 10km using Directional Antenna](https://www.youtube.com/watch?v=yCLb2eItDyE)
* [unidirectional long-distance communication](https://github.com/Jeija/esp32free80211)

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

## Physical Web Space
A Physical Web Space, is a website which follows you around wherever you go.
Literally, hence the "physical".
It is hosted in a tiny server that I carry on myself, powered by batteries!
Users can access it through a local WiFi network generated by the server,
which is open in order to facilitate joining it.
It also acts as a captive portal, redirecting all (well, most) requests to the local website.

* [MY PHYSICAL WEB SPACE](https://www.instructables.com/id/My-Physical-Web-Space/)
* [Setting up a Raspberry Pi Captive Portal](https://pimylifeup.com/raspberry-pi-captive-portal/)
* [Building	a Raspberry	Pi Captive Portal Wi‐Fi	Hotspot](http://cybersecurityguy.com/Building_a_Raspberry_Pi_Captive_Portal_Wi-Fi_Hotspot.pdf)

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

## Augment Reality
* [AR.js: Efficient Augmented Reality for the Web](https://uploadvr.com/ar-js-efficient-augmented-reality-for-the-web/)
    * [Efficient Augmented Reality for the Web - 60fps on mobile!](https://github.com/jeromeetienne/ar.js)

# Camera Robot
* [ZeroBot - Raspberry Pi Zero FPV Robot](https://hackaday.io/project/25092-zerobot-raspberry-pi-zero-fpv-robot)
* [Little FPV Bot Keeps It Simple With An ESP32](https://hackaday.com/2019/02/11/little-fpv-bot-keeps-it-simple-with-an-esp32/)



[01]:https://www.theodo.fr/blog/2016/06/expose-your-local-environment-to-the-world-with-ngrok/
[02]:https://www.sitepoint.com/accessing-localhost-from-anywhere/
[03]:https://en.wikipedia.org/wiki/Tunneling_protocol
[04]:https://ngrok.com/docs/2
[05]:https://dashboard.ngrok.com/get-started
[06]:https://www.raspberrypi.org/blog/zero-grows-camera-connector/
[07]:https://en.wikipedia.org/wiki/Reverse_proxy
[08]:http://www.mikestreety.co.uk/blog/raspberry-pi-timelapse
[09]:https://en.wikipedia.org/wiki/H.264/MPEG-4_AVC


[45]:http://petapixel.com/2016/04/25/raspberry-pi-camera-gets-first-ever-upgrade-now-8mp/
[46]:https://www.raspberrypi.org/blog/new-8-megapixel-camera-board-sale-25/
[48]:http://www.sony.net/Products/SC-HP/new_pro/april_2014/imx219_e.html
[49]:http://www.sony.net/Products/SC-HP/IS/sensor1/technology/exmor-r.html
[50]:https://en.wikipedia.org/wiki/1080p
[51]:https://en.wikipedia.org/wiki/720p
[52]:https://www.modmypi.com/download/raspicamdocs.odt
[53]:http://www.modmypi.com/blog/raspberry-pi-camera-board-raspivid-command-list
[54]:http://www.modmypi.com/blog/raspberry-pi-camera-board-raspistill-command-list
[55]:http://picamera.readthedocs.io/en/release-1.12/
[56]:https://github.com/waveform80/picamera
[57]:https://www.raspberrypi.org/magpi-issues/MagPi45.pdf
[58]:https://github.com/waveform80/pistreaming
[59]:http://www.pyimagesearch.com/2015/03/30/accessing-the-raspberry-pi-camera-with-opencv-and-python/
[60]:https://www.linux.com/learn/how-operate-linux-spycams-motion
