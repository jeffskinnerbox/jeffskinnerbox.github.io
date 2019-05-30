Title: Multiple Methods of Driving a 16x2 LCD with the Raspberry Pi
Date: 2100-01-01 00:00
Category: Electronics
Tags: LCD, Raspberry Pi
Slug: multiple-methods-of-driving-a-16x2-lcd-with-the-raspberry-pi
Author: Jeff Irland
Image: DRAFT_stamp.png
Summary: bla bla bla

In this post, I will describe two ways to drive this popular LCD display via the Raspberry Pi GPIO pins.

## The 16x2 LCD Display
[Cheap character crystal display (LCD) based on the HD44780 chipset][01]
come in a variety of sizes: 2x16, 4x20, etc. These displays have two standard interface modes,
4 bit and 8 bit parallel. 8 bit requires a total of 11 data lines, 4 bit requires 7 (6 for write-only).
Some LCDs support an additional serial data mode.
The [Hitachi HD44780 LCD controller][02] is one of the most common dot matrix LCD display controllers available.
Hitachi developed the microcontroller specifically to drive alphanumeric LCD display
with a simple interface that could be connected to a general purpose microcontroller or microprocessor.

## Method 1 / 6 Lines
The HD44780 LCD can be fully controlled as a display with 6 digital lines
(12 lines if you include power, ground, back-light, contrast lighting control, etc.).
Adafruit has an excellent [tutorial][03], making use of [Python scripts][04],
how to use the  HD44780 LCD as an display device with the RPi, so I'm not going to repeat it here.
But I must say, 6 lines to control a single device, particularly a display device, seems an unwarranted heavy use of scarce I/O resources (i.e. GPIO pins) on the RPi.
A better approach might be to use the [RPi's I2C capabilities][05]
and thereby reduce the number of GPIO pins required.
This is Method #2 outlined next.

## Method 2 / 2 Lines
The way you can reduce the GPIO pins required is to leverage a [I2C and SPI input/output Expander][06]
or [I2C Controlled + Keypad Arduino Shield Kit][07] designed for the LCD.
The Expander is more general purpose since it isn't designed just for the Arduino.
Adafruit has a [tutorial][08] on its use. On the other hand,
the Arduino shield has more features in that it has 4 directional buttons plus select button allows basic control.
Adafruit also offers a [Arduino tutorial][09] and a [16x2 LCD shield library][10].
I have the Arduino shield kit so that what I'll use.

The first obvious challenges is that the Adafruit library are written for the Arduino,
so can it be leveraged in any way for the RPi or do I start from scratch?
There is significant differences between the RPi and Arduino,
and I suspect that any attempt to "port" the library will turn into a rewrite.
So maybe a better approach would be to leverage the Python scripts used in Method #1 and port them to Method #2.
Of course, the big difference here is the use of I2C as the serial bus, and not the 6 line approach in Method #1.

## Method 3 / USB
[USB + Serial Backpack Kit with 16x2 RGB backlight positive LCD](http://www.adafruit.com/products/782)

------

* [Drive a 16x2 LCD with the Raspberry Pi](http://learn.adafruit.com/drive-a-16x2-lcd-directly-with-a-raspberry-pi)
* [Raspberry Pi I2C (Python)](http://www.instructables.com/id/Raspberry-Pi-I2C-Python/?ALLSTEPS)
* [Configuring the Pi for I2C](http://learn.adafruit.com/using-the-bmp085-with-raspberry-pi/configuring-the-pi-for-i2c)
* [Beginners guide to SPI on Raspberry Pi](http://www.bitwizard.nl/wiki/index.php/Beginners_guide_to_SPI_on_Raspberry_Pi)
* [Raspberry Pi to Arduino shields connection bridge](http://www.cooking-hacks.com/index.php/documentation/tutorials/raspberry-pi-to-arduino-shields-connection-bridge)



[01]:http://iamsuhasm.wordpress.com/tutsproj/using-lcds/
[02]:http://en.wikipedia.org/wiki/Hitachi_HD44780_LCD_controller
[03]:http://learn.adafruit.com/drive-a-16x2-lcd-directly-with-a-raspberry-pi
[04]:https://github.com/adafruit/Adafruit-Raspberry-Pi-Python-Code
[05]:http://jeffskinnerbox.wordpress.com/2012/12/05/drive-a-16x2-lcd-with-the-raspberry-pi/
[06]:https://www.adafruit.com/products/292
[07]:https://www.adafruit.com/products/715
[08]:http://learn.adafruit.com/i2c-spi-lcd-backpack
[09]:http://learn.adafruit.com/rgb-lcd-shield
[10]:https://github.com/adafruit/Adafruit-RGB-LCD-Shield-Library
