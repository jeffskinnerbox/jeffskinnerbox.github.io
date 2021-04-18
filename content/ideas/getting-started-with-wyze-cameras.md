
# Wyze Camera V2
Wyze's tiny $25 security camera is surprisingly [awesome][02].
The Wyze Cam v2 delivers fast, clear, live stream footage directly
to your smartphone via the Wyze App (iOS and Android), day or night.
You can receive an alert anytime your Wyze Cam v2 detects sound or motion
and view up to 14 days of saved alert videos for free;
there is no monthly fees or subscription required.

Wyze provides a motion detection in both live stream and playback video modes.
Plus, you can add an 8GB, 16GB or 32GB microSD card to enable continuous recording,
schedule custom time lapse videos,
use 2-way audio to talk, and listen through your Wyze Cam v2.
It has a 110 degree angle lens, supports 1080P video (1920x1080), and supports 8x digital zooming.

Use the Wyze App to manage and view multiple cameras,
share your cameras with other users, view alert videos,
and record and share photos and videos directly from the app.

The Wyze camera is small in size, has an magnetic base or can screw mounted, flexible 3-axis aimming.
The Wyze Cam v2 must be powered to use (it does not have a battery)
and is designed for indoor use (it is not weatherproof).

* [Wyze Review](https://www.security.org/security-cameras/wyze/review/)
* [Wyze Camera V2 Outdoor Housing - Snow, Rain, -30 Degrees, WiFi Range](https://www.youtube.com/watch?v=HbkQfRpOaow)
* [Can Wyze Cameras Be Hacked (and How You Can Stop Them)](https://thesecuritycameraguy.com/can-wyze-cameras-be-hacked-and-how-you-can-stop-them/)
* [So why are Wyze cameras so cheap?](https://www.youtube.com/watch?v=IPr0RNYPoy4&feature=youtu.be)
* https://www.amazon.com/gp/customer-reviews/R1GN9BTTWQZK3P/ref=cm_cr_othr_d_rvw_ttl?ie=UTF8&ASIN=B076H3SRXG
* https://www.amazon.com/gp/customer-reviews/R2NX523G3R0CZ8/ref=cm_cr_othr_d_rvw_ttl?ie=UTF8&ASIN=B076H3SRXG
* https://www.amazon.com/gp/customer-reviews/RV54YRZNI6I6R/ref=cm_cr_dp_d_rvw_ttl?ie=UTF8&ASIN=B076H3SRXG

# Wyze Camera Cabling
Extension power cable keeps your indoor or outdoor Wireless Security Camera
connected over a much greater distance.
Compatible with WyzeCam.

* [10FT Long USB Power Extension Cable for WyzeCam,WyzeCam ](https://www.amazon.com/Extension-WyzeCam-NestCam-Charging-Security/dp/B081XNGLVQ)
* [2 Pack 16.4FT Power Extension Cable for Wyze Cam Pan/WyzeCam](https://www.amazon.com/16-4FT-Extension-WyzeCam-Durable-Charging/dp/B07FT9BZM3)
* [26ft Power Extension Cable Compatible with WyzeCam](https://www.amazon.com/Extension-Compatible-WyzeCam-Charging-Security/dp/B07KY6BB6D)
* [SIOCEN 26FT 2Pack USB Power Extension Cable for Wyze Cam Pan,WyzeCam](https://www.amazon.com/SIOCEN-Extension-WyzeCam-Security-Charging/dp/B07X1S8TQY)

# Wyze Cam Privacy / Security
* [Data Breach at Wyze Labs Exposes Information of 2.4 Million Customers](https://www.nytimes.com/2019/12/30/business/wyze-security-camera-breach.html)

# Wyze Video Doorbell
* [The Wyze Video Doorbell Isn't for Everyone... Plus, CT Capetronix Smart Bulbs](https://www.youtube.com/watch?v=A29ki_tG5b8)
* [Wyze Video Doorbell: Watch BEFORE you BUY](https://www.youtube.com/watch?v=QCVD4GE934I)

# Wyze Thermostat
* [How We Made Wyze Thermostat](https://www.youtube.com/watch?v=P9cWErjgUAk)
* [Wyze Thermostat Hands On - Unboxing, Installation & First Impressions Review](https://www.youtube.com/watch?v=Hl7nZaZKKk4)
* [Who Says Smart Thermostats Can't Be Cheap? | WYZE THERMOSTAT 3-MONTH REVIEW](https://www.youtube.com/watch?v=FFWzyNuAWgA)
* []()
* []()

# Wyze Band Activity Tracker
* [Wyze Band Review](https://www.pcmag.com/reviews/wyze-band)


# Wyze Noise-Cancelling Headphones


-----



# Wyze Camera Setup
The [Wyze website provides an excellent setup guide][01];
just follow those instructions.

Your going to want to install a microSD card if you want view/playback past video & sound recording.
You should put in a 8G to 32G microSD card ([stores 2 to 4 days of continious recording][04])
and format it using the proceedures outlined [here][03].

Sources:

* [Wyze Cam Setup Guide][01]
* [How to Format your microSD card][03]
* [Wyze Cam V2 Unboxing & Setup Tutorial | 1080P Wifi Smart Home Camera](https://www.youtube.com/watch?v=gGItwnNyuoM)
* [3 Of The Best Ways To Configure Your Wyze Cameras](https://www.youtube.com/watch?v=Io4eNaTjf08)

* [OFFICIAL RTSP Support! Use Wyze cams with any NVR | Smart Home | Home Assistant](https://www.youtube.com/watch?v=YPiHs44i0TA)
* [How to Set Up Wyze Official RTSP Firmware : Use Wyze Cams with Network DVRs!](https://www.youtube.com/watch?v=e0SgzWwt7yI)

# How to install the RTSP Firmware
Real Time Streaming Protocol (RTSP) is a standard network protocol designed to establish and control media sessions between endpoints.

Installation procedures are documented [here][05].
You can transfer the `demo.bin` file to the same microSD card your using to capture video on the Wyze camera.

RTSP Access
   user name: jirland
   password: zippitydo
   URL: rtsp://jirland:zippitydo@192.168.1.80/live

```bash
# stream to videolan client (vlc) - 2 second delay and video motion is poor
vlc rtsp://jirland:zippitydo@192.168.1.80/live

# same as above but without graphics user interface
cvlc rtsp://jirland:zippitydo@192.168.1.80/live

# stream to FFmpeg media player (ffplay) - 4 second delay and video motion is poor
ffplay rtsp://jirland:zippitydo@192.168.1.80/live
```


Sources:

* [Wyze Cam RTSP][05]
* [How to Set Up Wyze Official RTSP Firmware: Use Wyze Cams with Network DVRs!](https://www.youtube.com/watch?v=e0SgzWwt7yI)
* [Who Else Wants To Setup RTSP On Wyze Cam?](https://www.youtube.com/watch?v=12xmbzbw5E8)



-----



### What is RTSP?
Real Time Streaming Protocol (RTSP) is a standard network protocol designed to
establish and control media sessions between endpoints.
Due to hardware limitation, RTSP could only be achieved as a separate firmware version
for both Wyze Cam v2 and Wyze Cam Pan.

>**NOTE:** RTSP is not a stock feature with the Wyze Cam and is a beta feature
>that requires the installation of different firmware.
>Using the RTSP firmware will prevent the camera from supporting any future functions or features in the Wyze app.
>
>Wyze claims it don't have the resources to keep developing two branches of
>firmware for Wyze Cam v2 and Wyze Cam Pan.
>At this time, Wyze is not committing to ongoing maintenance for RTSP firmware.
>Wyze will deliver security updates as needed.

### Real Time Streaming Protocol (RTSP)
The Real Time Streaming Protocol (RTSP) is a network control protocol designed for use in entertainment and communications systems to control streaming media servers. The protocol is used for establishing and controlling media sessions between end points.

The Real-Time Streaming Protocol allows to control multimedia streams delivered, for example, via RTP. Control includes absolute positioning within the media stream, recording and possibly device control.

RTSP is a realtime streaming protocol. Meaning, you can stream whatever you want in real time. So you can use it to stream LIVE content (no matter what it is, video, audio, text, presentation...). RTP is a transport protocol which is used to transport media data which is negotiated over RTSP

* [The Many Ways to Stream Video using RTP and RTSP](https://cardinalpeak.com/blog/the-many-ways-to-stream-video-using-rtp-and-rtsp/)
 * [How can I display an RTSP video stream in a web page](https://stackoverflow.com/questions/2245040/how-can-i-display-an-rtsp-video-stream-in-a-web-page)
* [RTP streaming with ffmpeg](http://lucabe72.blogspot.com/2010/04/rtp-streaming-with-ffmpeg.html)
* [Using CVLC for streaming using RTP protocol under Linux](https://inogeni.com/knowledgebase/using-cvlc-for-streaming-using-rtp-protocol-under-linux/)

### What does do for me?
RTSP make a cheap Wyze into an expensive IP Cam.


-----



# Wyze Sensor
* [Wyze Sense Review and Installation - Cheap Home Security - Only 20$](https://www.youtube.com/watch?v=fb-BFybR_R8)
* [Wyze $5 Door/Motion Wireless Sensors - No Cloud or Camera Required - How To with Home Assistant](https://www.digiblur.com/2019/08/wyze-5-doormotion-wireless-sensors-no.html)

# Wyze Camera Version 3
* [Wyze Cam V3 Review - Unboxing, Features, Setup, Installation, Testing, Video & Audio Quality](https://www.youtube.com/watch?v=WQZ_xExcwto)
* [Wyze Cam v3: Unbelievable Night Vision for $20](https://www.youtube.com/watch?v=EwP7p2Z7hOA&feature=emb_rel_end)
* [Wyze Cam V3 - Is It Worth The Hype?](https://www.youtube.com/watch?v=Xlp7BIAt_LI&feature=youtu.be)

# Camera for Outdoor Use
* [Wyze launches its $50 wire-free outdoor camera](https://techcrunch.com/2020/06/23/wyze-launches-its-50-wire-free-outdoor-camera/)
* [Wyze Cam Outdoor | App setup | Features](https://www.youtube.com/watch?v=02yQ6dT15Lc)
* [Wyze Cam WiFi Security Camera Behind Glass Window Setup + Lighting To Prevent Glare](https://www.youtube.com/watch?v=s1UDgI3M9Vo&feature=youtu.be)
* [Wyze Sense Review - $20 Pack of Contact and Motion Sensors for Wyze Cameras](https://www.youtube.com/watch?v=BEW32P4rUSQ)

# Step X: Wyze Cam Features
* [Wyze Cam Features](https://wyzelabs.zendesk.com/hc/en-us/sections/360004966992-Wyze-Cam-Features)

# Step X: Smart Home Integration
* [Smart Home Integration](https://wyzelabs.zendesk.com/hc/en-us/sections/360005012811-Smart-Home-Integration)
* [Turn Your Wyze Cameras Off When Anyone Comes Home (And On When You Leave)](https://www.youtube.com/watch?v=OGGnMbXoJL0)

# Alexa Integration
* [HOW TO USE WYZE CAM WITH ALEXA](https://www.youtube.com/watch?v=PhrdEOOpZxY)
* [Monocle RTSP/RTP IP Cameras](https://www.amazon.com/Monocle-RTSP-RTP-IP-Cameras/dp/B079P7DZ4D)
* []()

## Echo Show 5
Set up
* Plug your Echo Show 5 into an outlet. In about a minute, the display will turn on and Alexa will greet you.
* Follow the on-screen setup instructions. During setup, you'll connect to Wi-Fi so you can access Amazon services.
* Once setup is complete, say "Alexa" to wake your Echo Show 5, then ask for music, news, weather, and more. You'll know Alexa is ready when the blue bar appears at the bottom of the screen.
* Check out our [Alexa guide](https://www.amazon.com/b?node=17934672011) for the latest updates. You can also ask, "Alexa, what can you do?"
* Swipe down from the top of your Echo Show 5 screen to access Settings. Swipe left from the right side of the screen for shortcuts to music, smart home, tips on using Alexa, and more.
* [Download](https://www.amazon.com/b?node=18354642011) or update the Amazon Alexa app on your smartphone to get more out of your Echo Show 5.
* visit the [Alexa Privacy Hub](https://www.amazon.com/b/?node=19149155011) or ask, "Alexa, how do I review my privacy settings?
    * “Alexa, why did you do that?”
    * “Alexa, how do I delete my voice recordings?”
    * “Alexa, how do I turn off the microphones?”
* Manage Your Alexa Data - https://www.amazon.com/alexa-privacy/apd/myad
* Chat help page - https://www.amazon.com/hz/contact-us/csp
* Support for Echo Show - https://www.amazon.com/gp/help/customer/display.html?nodeId=202138870
* Amazon Digital and Device Forum  - https://www.amazonforum.com/s/



[01]:https://wyzelabs.zendesk.com/hc/en-us/articles/360030110891-Wyze-Cam-Setup-Guide
[02]:https://www.cnet.com/news/best-home-security-cameras-of-the-year-wyze-arlo-and-more/
[03]:https://wyzelabs.zendesk.com/hc/en-us/articles/360031488091-How-to-Format-your-microSD-card
[04]:https://learncctv.com/wyze-cam-v2-sd-card-size/
[05]:https://wyzelabs.zendesk.com/hc/en-us/articles/360026245231-Wyze-Cam-RTSP
[06]:
[07]:
[08]:
[09]:
[10]:
