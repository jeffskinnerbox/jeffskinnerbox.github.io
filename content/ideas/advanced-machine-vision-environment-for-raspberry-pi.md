* [How we made TensorFlow run on a Raspberry Pi using Rust](https://medium.com/snips-ai/how-we-made-tensorflow-run-on-a-raspberry-pi-using-rust-7478f7a31329)
* [TensorFlow for Poets](https://petewarden.com/2016/02/28/tensorflow-for-poets/)
    * https://codelabs.developers.google.com/codelabs/tensorflow-for-poets/#0
* [Train your own image classifier with Inception in TensorFlow](https://research.googleblog.com/2016/03/train-your-own-image-classifier-with.html)
* [How to Add a Power Button to Your Raspberry Pi](https://www.makeuseof.com/tag/add-power-button-raspberry-pi/)



# Physical Design

## Active Cooling
Implementing machine vision on a Raspberry Pi with tools like OpenCV and TensorFlow
can be computationally very intensive, pushing the RPi CPU very hard,
causing the processor to generate considerable heat.
The RPi's processor must protect itself from high temperatures,
so when the processor’s internal temperature approaches 85 degrees Celsius,
it protects itself by disables overclocking,
reverting to minimal speeds/freq and voltages,
or in some cases shutting down completely.

So the performance of the machine vision algorithm may be impacted by the heat of the RPi processor.
To combat this, it could be beneficial to provide active cooling.
Microsoft blog, "[Active cooling your Raspberry Pi 3][01]",
provides some data on how effective adding a fan can be.
(NOTE: You can fine the Raspberry Pi 3 Fan Mount [STL file][07] [here][02],
and have it 3D printed at [shapeways][06] or other sites.
To view the STL file, you can use [this site][05].)

## Battery Supply + Power Monitoring
The [LiFePO4wered/Pi3][85] (purchase on [Tindie][87])
may be the best power solution for the Raspberry Pi 3.
It combines both the UPS and power monitoring functions into a single solution.
It also has PCB touch button that gives you clean shutdown instead of just pulling power.
A ultra-low power [MSP430G2231 microcontroller][86] monitors the battery
and also connected to the Pi's I2C bus and monitors the Pi's running state.
You can find more information in the [LiFePO4wered/Pi3 Product Brief][89].

The designer provides a [open source software package to interact with the LiFePO4wered/Pi3][88].
It contains an application development library,
a CLI interface to read/write device registers over the I2C bus,
and a tiny daemon (`lifepo4wered-daemon`) that continually tracks the power state.
The daemon can initiate a clean shutdown when the battery is empty
or the user wants to turn the RPi off using the touch button.
Touch button parameters, voltage thresholds,
and an auto boot flag can be customized by the user and saved to flash.
You can also set it up so the RPi will automatically boot whenever there is enough battery charge.
There is also a wake up timer that can be set so the Pi can shut down,
and automatically be started again after the wake timer expires.

The LiFePO4wered/Pi3 is specifically designed for the heavy load conditions
found on a typical Raspberry Pi 3 but can work on all the RPi versions.
(**NOTE:** The [LiFePO4wered/Pi][86] is smaller and engineered for the Raspberry Pi Zero.)
You can even get a case with room for the RPi3 and the LiFePO4wered/Pi3 [on Tindie][90].

The LiFePO4wered/Pi3 requires software to be running on the Raspberry Pi to operate correctly.
This software provides a daemon that automatically
manages the power state and shutdown of the RPi,
a library that allows integration of LiFePO4wered/Pi3 functionality in user programs,
and a CLI (command line interface) program that allows the user to
easily configure the LiFePO4wered/Pi3 or control it from shell scripts.

The [LiFePO4wered/Pi3 Product Brief][89] tells you how to load the software
and is summarized below:

```bash
# clone software package
cd ~/src
git clone https://github.com/xorbit/LiFePO4wered-Pi.git

# build the software
cd LiFePO4wered-Pi
python build.py

# install the software
# this also performs enablement of I2C bus and GPIO UART
sudo ./INSTALL.sh
```

At this time, the blinking LiFePO4wered/Pi3 PWR LED should now go on solid.
If the PWR LED does not yet go on solid,
it is likely that the I2C was not yet enabled before the installer was run,
and a reboot is required.

The only necessary user interaction is with the touch button,
with feedback provided by the green PWR LED.
The LiFePO4wered/Pi3 touch button can be used to turn the Raspberry Pi on and off.
The touch button needs to be pressed and held to take effect.
During this press-and-hold delay, the PWR LED glow will ramp up.
During booting or shutdown,
if the user touches the button during this time,
the PWR LED will do a quick flashing sequence to
indicate it cannot comply with the user request at that time.

To make it convenient to interact with the LiFePO4wered/Pi3,
the software package installed on the RPi provides a command line tool.

```bash
# get help message
lifepo4wered-cli

# get the current battery voltage
# returns the battery voltage in millivolts
lifepo4wered-cli get vbat

# get the supply voltage
# returns the  raspberry pi supply battery voltage in millivolts
lifepo4wered-cli get vout

# to set the wake time to an hour
# if you shut down the Raspberry Pi, it will wake up again in about 60 minutes
lifepo4wered-cli set wake_time 60

# Raspberry Pi to always run whenever there is power to do so
lifepo4wered­cli set auto_boot 1
```

## Case
With the addition of the UPS and fan to the Raspberry Pi 3 configuration,
you'll need a suitable case to hold all the components.
I found the case designed to hold LiFePO4wered/Pi3 works fine
and you can purchase it [on Tindie][90].

# Software Configuration

# Overclocking
* [What accessories do I need to overclock my Raspberry Pi 3 B+?](https://www.androidcentral.com/what-accessories-do-i-need-overclock-my-raspberry-pi-3-b)
* config.txt - Overclocking options - https://www.raspberrypi.org/documentation/configuration/config-txt/overclocking.md
* [Overclock Your Raspberry Pi The Right Way](https://hackaday.com/2018/01/16/__trashed-5/)

# Embedded Learning Library (ELL)
The Microsoft's [Embedded Learning Library (ELL)][03]
claims to help in the design and deployment of intelligent machine-learned models
onto resource constrained platforms and small single-board computers,
like Raspberry Pi, Arduino, and micro:bit.

* http://www.zdnet.com/article/microsoft-wants-to-bring-ai-to-raspberry-pi-and-other-tiny-devices/
* [ELL Tutorials](https://microsoft.github.io/ELL/tutorials/)



# Reading Processor Tempature and Clock Speed
https://www.elinux.org/RPI_vcgencmd_usage

vcgencmd get_config int

```bash
# processor temperature
vcgencmd measure_temp
/opt/vc/bin/vcgencmd measure_temp
```

```bash
# clock speed
$ vcgencmd measure_clock arm
frequency(45)=600000000

$ vcgencmd measure_clock core
frequency(1)=250000000
```



# Performance and Speed Testing
* To measure performance of threading, use `mpstat -P ALL 1`.
* To measure the Internet speed, use https://fast.com/ or http://www.speedtest.net/
* See https://github.com/sivel/speedtest-cli
* at home using desktop, I'm getting 1ms to 10ms pings, 855Mbps upload, 847Mbps download
* at home using BlueRpi, I'm getting

Also see /home/jeff/blogging/content/ideas/network-speed-testing.md


# Streaming Latency
The streaming latency has little to do with the encoding by the Pi,
but mostly to do with the playing or receiving end.
If the Pi weren’t capable of encoding a frame before the next frame arrived,
it wouldn’t be capable of recording video at all
since it buffers would rapidly become filled and stall.

Players typically introduce several seconds worth of latency.
The primary reason is that most players (e.g. VLC)
are optimized for playing streams over a network.
Such players allocate a large (multi-second) buffer
and only start playing once this is filled to guard against possible future packet loss.

For additional information, see the following:

* [Why is there so much latency when streaming video?](http://picamera.readthedocs.io/en/release-1.10/faq.html#why-is-there-so-much-latency-when-streaming-video)



[01]:https://microsoft.github.io/ELL/tutorials/Active-cooling-your-Raspberry-Pi-3/
[02]:https://microsoft.github.io/ELL/gallery/Raspberry-Pi-3-Fan-Mount/
[03]:https://microsoft.github.io/ELL/
[05]:https://www.viewstl.com/
[06]:https://www.shapeways.com/
[07]:https://en.wikipedia.org/wiki/STL_(file_format)
[08]:
[09]:
[10]:

[85]:https://cdn.tindiemedia.com/images/resize/NS8E-8h1An68bOqZrKHhnukm44c=/full-fit-in/2400x1600/smart/58262/products/2016-12-15T20%3A35%3A06.599Z-IMGP8966.JPG
[86]:https://lifepo4wered.com/lifepo4wered-pi.html
[87]:https://www.tindie.com/products/xorbit/lifepo4weredpi3/
[88]:https://github.com/xorbit/LiFePO4wered-Pi
[89]: https://lifepo4wered.com/files/LiFePO4wered-Pi3-Product-Brief.pdf
[90]:https://www.tindie.com/products/mjrice/enclosure-for-raspberry-pi-3-and-lifepo4weredpi3/
