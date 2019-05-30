Title: Controlling and Viewing the Raspberry Pi GPIO via PC Browser
Date: 2012-10-19 00:01
Category: Electronics
Tags: Raspberry Pi
Slug: controlling-and-viewing-the-raspberry-pi-gpio-via-pc-browser
Author: Jeff Irland
Image: webiopi-chrome.jpg
Summary: In this article, I use a tool called WebIOPi, I control my Raspberry Pi, and the things its networked with, via an internet browser. With this, you can control and monitor GPIO using Python scripts.

<center>
[![WebIOPi]({filename}/images/webiopi-chrome.jpg "WebIOPi Web Page")](https://code.google.com/p/webiopi/)
</center>
This idea of controlling my Raspberry Pi (RPi), and the things its networked with, via an internet browser is at the heart of what I would like to do with the assortment of Arduino and Xbee devices I'm assembling.  To explore how best to do this, I'm considering using <a href="http://code.google.com/p/webiopi/">WebIOPi</a>, which is a web application used to control your RPi’s GPIO.  I believe it could be useful as a test tool, but more importantly, I suspect that I could learn how to engineer my application by studying its design.
<h2>Install WebIOPi</h2>
When installing WebIOPi on my RPi, I followed the <a href="http://code.google.com/p/webiopi/wiki/INSTALL#PHP/Apache">installation</a> instructions for the Apache version.  I choose this version since  I'll be using the Apache web server for other features as my project evolves. Note that there is a small error on the instructions if you use a symbolic link to the webiopi directory.  Create this link using

```
sudo ln -s /home/pi/webiopi /var/www/webiopi
```

Immediately after installation,  you can test to see if you can render a web page.  Assuming that your  Raspberry Pi is connected to your network  and its named <code>raspberrypi</code>, you can open a browser to <code><a href="http://raspberrypi/webiopi/" rel="nofollow">http://raspberrypi/webiopi/</a></code> with your network PC.  It might work but your likely to get a error, something like "...Could not reliably determine the server’s fully qualified domain name..." and the <a href="http://scottlinux.com/2011/02/16/could-not-reliably-determine-the-servers-fully-qualified-domain-name/">solution</a> is to give your web server a name.

To do this,  create this Apache config file:

```
sudo vi /etc/apache2/conf.d/fqdn
```

Enter <code>ServerName raspberrypi</code> into this file and restart Apache using

```
sudo /etc/init.d/apache2 restart
```

<h2>Installing GPIO Utilities</h2>
While checking on the status of of the Python based GPIO package on the RPI using the command <code>dpkg -l | grep gpio</code>, I concluded that the  <a href="http://learn.adafruit.com/adafruit-raspberry-pi-educational-linux-distro/overview">Occidentalis</a> distribution I'm using doesn't have any Python libraries for GPIO.

Picking up some tips from <a href="http://learn.adafruit.com/raspberry-pi-e-mail-notifier-using-leds/overview">Raspberry Pi E-mail Notifier Using LEDs</a>.  I determined that I need to install several python packages first.  I did this via

```shell
sudo apt-get install python
sudo apt-get install python-dev
sudo apt-get install python-pip
```

With this done, now its time to install the required Python libraries but first, update the Python distribution by running

```
sudo easy_install -U distribute
```

Finally you can install the Raspberry Pi GPIO (General Purpose Input/Ouput) library:

```
sudo pip install RPi.GPIO
```

<h2>What did I find</h2>
WebIOPi  supports binary GPIOs, in both input and output.  That is, you can set a GPIO output pin high/low via a browser pick.  Also, you can see the state of a GPIO pin.  Equally important to me is that WebIOPi auto-refreshes, via <a href="http://www.kendoui.com/blogs/teamblog/posts/12-05-11/hello_services_webapi_rest_json_and_ajax.aspx">WebAPI, REST, JSON and AJAX</a> I assume.  Therefore, when the GPIO pins change state, the browser automatically is updated with the new status.  And this happens for all browsers displaying WebIOPi.  You can demonstrate this by opening two browsers pointing at WebIOPi.  Action performed in one browser will also appear in the other.
<h2>Test Script</h2>
I used this code to generate some random activity on the GPIO pins and test WebIOPi.

```python

#!/usr/bin/env python

import RPi.GPIO as GPIO, time

BLINK_FREQ = 3                  # refresh GPIO pins every 3 seconds

GPIO.setmode(GPIO.BCM)
GPIO.setup(0, GPIO.OUT)
GPIO.setup(1, GPIO.OUT)
GPIO.setup(4, GPIO.OUT)
GPIO.setup(17, GPIO.OUT)
GPIO.setup(21, GPIO.OUT)
GPIO.setup(22, GPIO.OUT)
GPIO.setup(10, GPIO.OUT)
GPIO.setup(9, GPIO.OUT)
GPIO.setup(11, GPIO.OUT)
GPIO.setup(18, GPIO.OUT)
GPIO.setup(23, GPIO.OUT)
GPIO.setup(24, GPIO.OUT)
GPIO.setup(25, GPIO.OUT)
GPIO.setup(8, GPIO.OUT)
GPIO.setup(7, GPIO.OUT)

i = 0
while True:
                if i == 0:
                                GPIO.output(0, True)
                                GPIO.output(1, False)
                                GPIO.output(4, False)
                                GPIO.output(17, True)
                                i = i + 1
                elif i == 2:
                                GPIO.output(0, False)
                                GPIO.output(1, True)
                                GPIO.output(4, True)
                                GPIO.output(17, False)
                                i = i + 1
                elif i == 1:
                                GPIO.output(7, False)
                                GPIO.output(8, True)
                                GPIO.output(25, True)
                                GPIO.output(23, False)
                                i = i + 1
                elif i == 3:
                                GPIO.output(7, True)
                                GPIO.output(8, False)
                                GPIO.output(25, False)
                                GPIO.output(23, True)
                                i = i + 1
                elif i == 4:
                                GPIO.output(21, True)
                                GPIO.output(22, False)
                                GPIO.output(10, False)
                                GPIO.output(9, True)
                                GPIO.output(11, True)
                                GPIO.output(18, True)
                                i = i + 1
                elif i == 5:
                                GPIO.output(21, False)
                                GPIO.output(22, True)
                                GPIO.output(10, True)
                                GPIO.output(9, False)
                                GPIO.output(11, False)
                                GPIO.output(18, False)
                                i = i + 1
                else:
                                i = 0
                time.sleep(BLINK_FREQ)
```

<h2>Alternative Approaches</h2>
The use of a Web page to control the RPi seems useful enough but what if the target environment for launching control messages is a cell phone?  Maybe a phone app would be a better approach.  Check out the post  <a href="http://www.samratamin.com/blog/raspberry-pi-iphone-control-a-rpi-with-an-iphone-in-2-minutes/">Raspberry Pi + iPhone: Control a RPi with an iPhone in 2 Minutes</a>.
