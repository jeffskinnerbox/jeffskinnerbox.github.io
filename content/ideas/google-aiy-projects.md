
* [Installing Alexa Voice Service to Raspberry Pi](https://www.youtube.com/watch?v=frH9HaQTFL8)
* [Do It Yourself Artificial Intelligence](https://medium.com/@aallan/do-it-yourself-artificial-intelligence-569b718207)

* [THIS CARDBOARD BOX CAN TELL YOU WHAT IT SEES](https://hackaday.com/2019/03/09/this-cardboard-box-can-tell-you-what-it-sees/)


![aiy-logo](https://www.welcome.ai/system/attachments/attachments/000/001/244/original/aiyprojects.gif?1508039111)
Google has declared a new strategy, calling it "[AI First][28]".
In this spirit, Google wants to put AI into the maker toolkit,
and to kick this off,
they have created the [do-it-yourself artificial intelligence, or AIY program][10].

# Google AIY Vision Kit
![vision-kit](https://hackadaycom.files.wordpress.com/2017/12/google_aiy_vision-kit_th.png?w=600&h=600)
Google's Vision Kit is a smart camera kit you can build using a Pi Zero W, Pi Camera,
and a custom vision processing board with the
[Movidius MA2450 vision processing chip][31] they call the "Vision Bonnet".
The The chip acts as a neural network accelerator allowing you to run
the vision processing neural network on the accessory board itself.
This Vision Kit doesn't relied on Google Cloud infrastructure
but makes use [TensorFlow][33] running on the low power neural network accelerator board.
[Google claims][32] the deep learning inference acceleration engine on the Raspberry Pi Zero
runs 60 times faster than trying to do it on a Raspberry Pi 3.

Google's Vision Kit comes with three vision deep learning algorithms

* person, cat, and dog detector
* facial emotions classifier (detect happiness, sadness,etc.)
* classify 1,000 common objects, like a cup, an orange, chair, etc.

This kit did have some initial problems, and should be all resolved now,
but it may be wise to read this article
["Teething Troubles for the New AIY Projects Vision Kit?"][37] before assembling the kit.

Google's Vision Kit is loosely similar to Google Clips
https://design.google/library/ux-ai/

## Step 1: Voice Kit Physical Assemble - DONE
The physical assembly of the kit is easy but is a delicate operation.
Followed the steps outline [here][36].

>**NOTE:**Make sure to use a Raspberry Pi Camera Module Version 2.
Camera Module Version 1 is not supported and will not work.
Also, there are  missed labled cables on some kits.
Follow the instructions carefully.

## Step 2: Download the Operating System - DONE
First download the Vision Kit SD image and write it to the SD card.
The instructions for this can be found [here][34],
but I basically followed the SD-Card burning procedures outlined for
["HowTo: Set-Up the Raspberry Pi as a Headless Device"][35].

## Step 3: Update WiFi, Ethernet, and Hostname Configuration Files - DONE
Before installing the SD Card in the Raspberry Pi,
I updated the files used for WiFi/Ethernet and host name configuration files
to reflect my LAN environment and my personal needs.
Specifically the files
`/etc/wpa_supplicant/wpa_supplicant.conf`,
`/etc/network/interfaces`,
and `/etc/hostname`.
See examples [here][38] and [here][39].

By doing this, I will be able to `ssh` right into my Raspberry Pi as a headless device.
The instructions provide by Google assume you have a monitor, keyboard, etc.

## Step 4: Turn It On for the First Time - DONE
Instructions can be found [here][40].
Insert your SD card with the Vision Kit SD image,
and plug in your micro-USB to USB cable with a power source.
In the pre-configured demo mode,
Vision Kit boots up, the Joy Detector demo app will be running.
The 'Joy Detector' demo runs inference using Google’s facial detection model.

You can run this command to check that the Vision Bonnet is connected and has booted successfully:

```bash
# check if vision bonnet is operating properly
$ dmesg | grep googlevisionbonnet
[   18.290097] googlevisionbonnet spi0.0: Initializing
[   18.405680] googlevisionbonnet spi0.0: Resetting myriad on probe
[   18.405697] googlevisionbonnet spi0.0: Resetting myriad
[   22.670563] googlevisionbonnet spi0.0: Writing myriad firmware
[   28.432878] googlevisionbonnet spi0.0: Myriad booting
[   28.649260] googlevisionbonnet spi0.0: Myriad ready
```

>**NOTE:** If the cable between the Raspberry Pi and the Vision Bonnet
is installed improperly, the RPi will not boot (aka no green LED on RPi).
If this happens, check your cable.

If you directing the PiCamera toward someone’s face,
the color of the arcade button’s LED is the sum of the joy scores across all detected faces:
sad faces are blue, joyful faces are red.
And if your joy score exceeds 85%, an 8-bit sound will play.

## Step X: ???
* [Creating a Linux service with systemd](https://medium.com/@benmorel/creating-a-linux-service-with-systemd-611b5c8b91d6)

if you’re attempting to run any of the demo software provided with the Video Kit,
remember that the 'Joy Detection' demo is already running as a service in the background.
So before running other demo code shut down the joy service.
The demos designed to run as part of the [`systemd` service management system][41].
We can do `sudo systemctl enable service_name`,
and the service will automatically start at boot time.
We can also disable services not to start at boot time, start, restart, and stop them.

The 'Joy Detector' automatically runs when your Vision Kit is turned on.
You can disable it from automatically running by entering:

```bash
# stop the joy_dettection_demo
sudo systemctl stop joy_detection_demo.service

# disable starting joy_dettection_demo at boot time
sudo systemctl disable joy_detection_demo.service
```

You can also go ahead and stop AIY services, and unload all the AIY related drivers as follows,

sudo systemctl stop joy_detection_demo.service
sudo rmmod aiy_vision
sudo rmmod aiy_adc
sudo rmmod pwm_aiy_io
sudo rmmod gpio_aiy_io
sudo rmmod aiy_io_i2c

## Step X: ???
## Step X: ???
## Step X: ???
```bash
# take picture and store in image.jpg
raspistill -o ~/tmp/image.jpg --width 1024 --height 768

```
```bash
# update your linux packages and OS
sudo apt-get update && sudo apt-get dist-upgrade

# install mplayer
sudo apt-get install mplayer

# stream picamera video into mplayer
raspivid -n -t 0 -w 1280 -h 720 -fps 49 -o - | mplayer -cache 1024 -
```




* [Announcing the AIY Projects Vision Kit](https://blog.hackster.io/announcing-the-aiy-projects-vision-kit-234505bc6eef)
* [AIY PROJECTS: VISION KIT: BUILD YOUR OWN INTELLIGENT CAMERA](https://www.raspberrypi.org/magpi/aiy-projects-vision-kit/)
* [Google AIY Vision Kit - Order from Micro Center](http://www.microcenter.com/product/501552/AIY_Vision_Kit)
* [Google offers Raspberry Pi owners this new AI vision kit to spot cats, people, emotions](http://www.zdnet.com/article/google-offers-raspberry-pi-owners-this-new-ai-vision-kit-to-spot-cats-people-emotions/)
* [Amazon buys smart camera and doorbell startup Blink](https://www.theverge.com/circuitbreaker/2017/12/22/16810516/amazon-blink-acquisition-smart-camera-doorbell-company)

## BerryNet
* [The 3 trendiest AI kits in 2017 — A quick guide of Google Vision kit, DeepLens & BerryNet](https://becominghuman.ai/which-ai-kit-fits-your-needs-the-best-google-aiy-vision-kit-deeplens-berrynet-16aea8bfbe33)
    * [Run Object Detection using Deep Learning on Raspberry Pi 3 (1)](https://medium.com/dt42/run-object-detection-using-deep-learning-on-raspberry-pi-3-1-55027eac26c3)
    * [Run Object Detection using Deep Learning on Raspberry Pi 3 (2)](https://medium.com/dt42/run-object-detection-using-deep-learning-on-raspberry-pi-3-2-66f43609bc85)
    * [Christmas Gift：BerryNet 2.0 Available now](https://medium.com/dt42/christmas-gift-berrynet-2-0-available-now-c5fbff0ce5fc)

# Google AIY Voice Kit
![voice-kit](https://www.raspberrypi.org/app/uploads/2017/05/AIY-Projects.jpg)
The first [Google AIY Projects][03] kit arrived free on the [cover of issue 57 of the MagPi][29],
enabling you to add voice interaction to your Raspberry Pi projects using Google’s Voice Assistant.
The magazine sold out in hours,
so a couple of months later a retail version of the Voice Kit was made [available for pre-order][30],
and those kits shipped to customers a couple of months after that, in October 2017.

>**NOTE:** If your plan is use the Google Cloud Speech API, it is not free.
Streaming everything spoken in a room to the cloud may not be acceptable,
and searching through it for a hotword or phrase is probably going cost you tens of dollars per day.
So you may want a less expensive approach.
It turns out we can actually use TensorFlow on a Raspberry Pi to look for
and recognise a custom hotword entirely locally without talking to the cloud at all.
Check out this article:
[A Magic Mirror with Added TensorFlow](https://medium.com/@aallan/a-magic-mirror-with-added-tensorflow-b8fcc5528a6)

## Google Assistant
![google-assistant-logo](https://upload.wikimedia.org/wikipedia/commons/5/5a/Google_Assistant_logo.png)
[Google Home][12] enables users to speak voice commands to interact with [Google Assistant][13].
Google Assistant is an intelligent personal assistant.
Google Home is Google's response to Amazon's Echo,
and the Google Assistant is its alternative to Amazon's Alexa.
Google Assistant launched on Google Home and [Google Pixel smartphones][18]
but not (as of this writing) offered on Andriod or other smartphones.
[Google has confirmed it will begin rolling out an Assistant][19]
the week of 26 February 2017 for Android 7.0 Nougat and 6.0 Marshmallow phones.
[To check if your phone has Google Assistant][23], say "Ok Google", "Hey, Google",
or press-and-hold the home button
([but has some problems for Samsung users like myself][21]).

Alexa's abilities, in large part, is based on the skills that you or someone else program into it,
and if the skills are not present, your likely to get the "I don't understand the question" response.
Google Assistant on the other hand has the Google search engine at its disposal,
and therefore, you can ask Assistant almost anything,
and it will understand your words in context and serve up relevant results in a conversational manner.
Google Assistant also has it equivalent to Amazon's Alexa Skills, call [Conversation Actions][24].
Which is better, Amazon Echo with Alexa vs. Google Home with Assistant,
is a subject of much debate (see [here][14], [here][17], [here][25], [here][26], and [here][23]).

One of the nicer things about Google Assistant
is that it is [designed to be conversational][20].
That is, you ask a question and then ask several follow-up questions,
and Google Assistant will be able to keep track of the conversation, determine context,
and audibly respond with the right information.
You do need to preface each with the "OK Google" or "Hey, Google" wake-up.
Like Echo Alexa (see [Alexa dialog history][16]),
Google also allows you to peek at all the data Home sends back and forth
(go to [`myactivity.google.com`][15]).

With Google Assistant on you smartphone,
find stuff while you're traveling,
make phone calls or text messages or email,
open phone apps, and [more][20].


* [Google AIY: Artificial Intelligence Yourself](http://hackaday.com/2017/05/04/google-aiy-artificial-intelligence-yourself/)
* [How to Build Your Own Google AIY without the Kit](http://hackaday.com/2017/05/30/diy-google-aiy/)
* [Headless Voice Activated Google Assistant on Raspberry Pi](https://www.hackster.io/shiva-siddharth/headless-voice-activated-google-assistant-on-raspberry-pi-8343f7?utm_source=Hackster.io+newsletter&utm_campaign=01e267dfa3-EMAIL_CAMPAIGN_2017_05_03&utm_medium=email&utm_term=0_6ff81e3e5b-01e267dfa3-140225889&mc_cid=01e267dfa3&mc_eid=9036129d51)
* [Sudo Google Assistant](http://hackaday.com/2017/05/16/sudo-google-assistant/)
* [ReSpeaker 2 Mics Pi HAT for Alexa Voice Service, Google Assistant](https://www.seeedstudio.com/ReSpeaker-2-Mics-Pi-HAT-p-2874.html?utm_source=mailchimp&utm_medium=edm&utm_campaign=new_0606)
* [Add Vision to the AIY Voice Kit](https://www.hackster.io/elizmyers/add-vision-to-the-aiy-voice-kit-e9ff3d)

## Step 1: Voice Kit Physical Assemble - DONE
Follow the [AIY Projects][03] website's instructions for
physically assembling the [Google Assistant Voice Kit][01] or
you can [checkout this video][07] for some detail help.

## Step 2: Install Operating System - DONE
Next we have to install the operating system image for this hardware kit.
Google provides a [pre-configured SD Card image][04] for the kit
(named `aiyprojects-2017-09-11.img` in my case),
but I want to install this solution on my own image.
Google does provide a [guide to add Google Assistant to a standalone Raspberry Pi 3][02]
where provide your own speaker / microphone / button.
What I wish to do is a blend of the two approaches:
I want to use the hardware kit but install the software from the "bring your own hardware" solution.

Close examination of the [AIY Voice Kit Github repository][06],
[Create a Voice Kit with your Raspberry Pi][08],
the [Overview of the Google Assistant Library for Python][02],
the [AIY Voice Kit How-To | Part 2: Google Assistant SDK][05]
and [AIY Voice Kit How-To | Part 3: Cloud Speech API][09] videos
all gives you the insight you need to know.
The key instructions to follow can be found [here][11].

On my first try, I did attempt to us my own image but not all the features worked.
I assume something was on the Google provided image that I didn't pickup.
So instead I used Google's Voice Kit image, got the kit working,
and then added my additional packages on top of that.

I want to do all this via a headless configuration,
so I did the following to the Google's Voice Kit image first before booting it:

1. Mount the SD Card on my computer.
1. Edited the Network Interfaces and WPA Supplicant file so they include my home network information.
1. Edit the `hostname` file to include my desired host name.
1. Enables SSH so I could terminal session into the device on first boot up.
1. Unmounted the SD Card, installed it on the Raspberry Pi and then booted the RPi.
1. `ssh -X` into your Raspberry Pi and follow the procedures below.

To find the IP address of you Raspberry Pi,
ping sweep before and after the device is placed on the network
and you'll see the new address appear.
You can use this script to do this:

```bash
# ping sweep without nmap
# waits for all pings to complete and returns ip with mac address
(prefix="192.168.1" && for i in `seq 254`; do (sleep 0.5 && ping -c1 -w1 $prefix.$i &> /dev/null && arp -n | awk ' /'$prefix'.'$i' / { print $1 "\t" $3 } ') & done; wait)
```

Once you SSH login into the RPi,
run this command to assure you can SSH in on future login attempts:

```bash
# enable ssh for future logins
sudo raspi-config nonint do_ssh 0
```

## Step 3: Test Voice Kit Software - DONE
The [Voice Kit github software][06]
contains the required drivers to use with the special speaker and microphone hardware,
along with some testing and install tools.
This software should already be installed on the image you downloaded.

The documented process for checking out the Voice Kit involes the graphics UI
but I'll be doing everything all the steps via the commandline.
The [video][05] show how the graphical UI install goes
and I'll be following that pattern for the commandline install.
Use `find /home/pi -name <file-name>` to locate any of the tools used here.

Now lets check if the above setup was properly done.
Run the following scripts:

```bash
# run the audio test
/home/pi/AIY-voice-kit-python/checkpoints/check_audio.py
```

## Step 4: Configure a Google Developer Project - DONE
Next we setup a Google Developer Project which
will give us access to the Google Assistant API.
Using your Google Assistant device,
open up an Internet browser and go to the [Cloud Console][22]
and follow these [instructions][27].

From the project credentials screen
(`https://console.cloud.google.com/apis/credentials?project=marine-alchemy-186203` in my case),
I downloaded the JSON file containing the client secret
I place it in `/home/pi/assistant.json`.

## Step 5: Turn It On for the First Time - DONE
For the device to begin acting as your Google Assistant, much like Google Home,
there is a demo app.
We'll do some convoluted steps here to pattern our commandline activity
like the graphical UI approach documented for the Voice Kit.

```bash
# run the dev_terminal
/home/pi/bin/AIY-voice-kit-shell.sh

# once the terminal starts, run this
src/assistant_library_demo.py
```

At this point, a Chromium browser will popup.
You need to grant the Voice Kit access to your Google Assistant service.
Just add your login, password, and provide access.

With the access provide, your assistant is operational.
The assistant library app has hotword detection built-in
and is used to initialize your device for the first time.
To start a conversation with the Google Assistant,
say "Okay, Google" or "Hey Google".

When you are done, press Ctrl-C to end the application.
You still be in the dev_terminal at this point and you'll
need to enter `exit` to terminate the dev_terminal.

## Step 6: Testing The Button - DONE
The button on top of the Voice Kit can also be talk with Google Assistant.
Test this out with the following:

```bash
# run the dev_terminal
/home/pi/bin/AIY-voice-kit-shell.sh

# run the button command test
src/assistant_grpc_demo.py
```

Now press the button and ask a question.

## Step 7: Setup the Cloud Speech API - DONE
The Cloud Speech API allows you to control device,
such as the LED button on the Voice Kit, via voice control.
There is a fee for this, after the first 60 minutes of use.
Instructions on setting this up can be found [here][09],
but I didn't bother.
I'll come back to this when the day comes I wish to voice control something via Google.
In any event, the setup is virtually the same as the Step 4 above
and you can execute the script below to test it out.

```bash
# run the dev_terminal
/home/pi/bin/AIY-voice-kit-shell.sh

# run the button command test
src/cloud_speech_demo.py
```
## Step X: Adjust the Playback and Recording Volume

alsamixer

https://developers.google.com/assistant/sdk/develop/grpc/hardware/audio

## Step X: Run Examples
https://developers.google.com/assistant/sdk/develop/python/run-sample

## Step X:Customize Interacts with the Assistant
https://developers.google.com/assistant/sdk/develop/python/next-steps

## Step X: Voice-Controlled Objects via the Voice Kit
* [Building Voice-Controlled Objects with Google’s AIY Projects Voice Kit](https://blog.hackster.io/building-voice-controlled-objects-with-googles-aiy-projects-voice-kit-352d3272cede)

## Adding a Camera

client id = 139747328702-2e9ds7bfisdjmu2f0o5qe3hkimnel1sl.apps.googleusercontent.com
client secret = 0Rq9gpxlVy9frYQDtUeuwiw-



[01]:https://aiyprojects.withgoogle.com/voice
[02]:https://developers.google.com/assistant/sdk/develop/python/
[03]:https://aiyprojects.withgoogle.com/
[04]:https://aiyprojects.withgoogle.com/voice#assembly-guide-1-get-the-voice-kit-sd-image
[05]:https://www.youtube.com/watch?v=T94TWUnrZkU
[06]:https://github.com/google/aiyprojects-raspbian
[07]:https://www.youtube.com/watch?v=HER_885yVDM
[08]:https://www.raspberrypi.org/magpi-issues/Essentials_AIY_Projects_Voice_v1.pdf
[09]:https://www.youtube.com/watch?v=kCfkHkl00gg
[10]:https://aiyprojects.withgoogle.com/
[11]:https://github.com/google/aiyprojects-raspbian/blob/master/HACKING.md
[12]:https://madeby.google.com/home/
[13]:https://assistant.google.com/
[14]:http://www.pocket-lint.com/review/139617-google-home-review-a-better-voice-assistant-than-amazon-echo
[15]:https://myactivity.google.com/myactivity
[16]:https://www.amazon.com/gp/help/customer/display.html?nodeId=201602040
[17]:https://www.cnet.com/news/google-home-vs-amazon-echo/
[18]:http://www.pocket-lint.com/review/139038-google-pixel-review-android-at-its-best
[19]:http://www.pocket-lint.com/news/140393-google-assistant-is-coming-to-a-nougat-or-marshmallow-handset-near-you
[20]:http://www.pocket-lint.com/news/137722-what-is-google-assistant-how-does-it-work-and-which-devices-offer-it
[21]:http://trendblog.net/okay-google-not-working-fix/
[22]:https://console.cloud.google.com/home/dashboard
[23]:https://assistant.google.com/platforms/phones/
[24]:https://developers.google.com/actions/develop/conversation
[25]:https://www.forbes.com/sites/jaymcgregor/2016/12/30/amazons-alexa-vs-google-assistant-24-questions-1-winner/#6e43541c2316
[26]:http://1reddrop.com/2017/02/26/amazon-alexa-hits-10000-skills-why-better-google-assistant/
[27]:https://aiyprojects.withgoogle.com/voice#users-guide-1-1--connect-to-google-cloud-platform
[28]:https://www.androidauthority.com/google-ai-first-812335/
[29]:https://blog.hackster.io/raspberry-pis-new-aiy-project-s-kit-1b7df33c34ee
[30]:https://blog.hackster.io/the-google-aiy-projects-voice-kit-is-now-available-for-pre-order-from-micro-center-e20a41537e7
[31]:https://www.movidius.com/myriadx
[32]:https://www.raspberrypi.org/magpi/aiy-projects-vision-kit/
[33]:https://www.tensorflow.org/
[34]:https://aiyprojects.withgoogle.com/vision#assembly-guide-2-assemble-the-hardware
[35]:http://jeffskinnerbox.me/posts/2016/Apr/27/howto-set-up-the-raspberry-pi-as-a-headless-device/
[36]:https://aiyprojects.withgoogle.com/vision#assembly-guide-2-assemble-the-hardware
[37]:https://blog.hackster.io/teething-troubles-for-the-new-aiy-projects-vision-kit-625ed4e9287a
[38]:http://raspberrypi.stackexchange.com/questions/11631/how-to-setup-multiple-wifi-networks
[39]:https://www.raspberrypi.org/forums/viewtopic.php?f=91&t=14226
[40]:https://aiyprojects.withgoogle.com/vision#assembly-guide-6-turn-it-on-and-use-the-joy-detector-demo
[41]:https://www.freedesktop.org/wiki/Software/systemd/
[42]:
[43]:
[44]:
[45]:
[46]:
[47]:
[48]:
[49]:
[50]:


