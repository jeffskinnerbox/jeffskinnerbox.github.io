

* [Add GPS Time and Location to a Raspberry Pi Project](https://www.rs-online.com/designspark/add-gps-time-and-location-to-a-raspberry-pi-project)
* [Adafruit Ultimate GPS on the Raspberry Pi](https://learn.adafruit.com/adafruit-ultimate-gps-on-the-raspberry-pi?view=all)
* [Adafruit Ultimate GPS](https://learn.adafruit.com/adafruit-ultimate-gps/)
* [SMA to uFL/u.FL/IPX/IPEX RF Adapter Cable](https://www.adafruit.com/product/851)
* [Adafruit GPS library](https://github.com/adafruit/Adafruit_GPS)
* [Python library for Raspberry PI for Ultimate GPS based on MTK3339 with serial interface as sold by Adafruit](https://github.com/PrzemoF/mtk3339)
* [GPS Tracking Comparisons](https://www.sparkfun.com/tutorials/169)
* [GPS Basics](https://learn.sparkfun.com/tutorials/gps-basics)
* [Introduction to GPS Data: NMEA & RTCM](http://www.geodetic.gov.hk/smo/gsi/data/ppt/NMEAandRTCM.ppt)
* [GPS Chipset](http://wiki.openstreetmap.org/wiki/GPS_Chipset)
* [A-GPS vs. GPS](http://www.diffen.com/difference/A-GPS_vs_GPS)
* [how I made a decent map with a GPS unit and Ubuntu Breezy GNU/Linux](http://cs.brown.edu/~dap/gps.htm)
* [Data On the Go](http://www.linux-magazine.com/Issues/2014/166/GPS-Tools)
* [NMEA data](http://www.gpsinformation.org/dale/nmea.htm#intro)
* [NMEA Decoder](http://freenmea.net/decoder)
* [Python library for parsing the NMEA 0183 protocol (GPS)](https://github.com/Knio/pynmea2)
* [How Not To Build Your Own DGPS Base Station](https://hackaday.com/2018/03/30/fail-of-the-week-how-not-to-build-your-own-dgps-base-station/)
* [Locating the Hard-to-Find Geospatial Answers](https://www.directionsmag.com/article/7637)

* [GPS Times, Atomic Clock Frequencies, and the Increasing Accuracy of GPS](https://www.allaboutcircuits.com/technical-articles/gps-times-atomic-clock-frequencies-increasing-accuracy-of-gps/)
* [Make a GPS Clock With Arduino](https://www.allaboutcircuits.com/projects/how-to-make-a-gps-clock-with-arduino/)

* [The xgps client](http://www.catb.org/gpsd/xgps-sample.html)
* [gps, xgps, xgpsspeed, cgps, lcdgps, gegps - test clients for gpsd](http://manpages.ubuntu.com/manpages/zesty/man1/gps.1.html)
* gpsd - https://github.com/biiont/gpsd
* gpsd - https://wiki.openstreetmap.org/wiki/Gpsd
* Detail documentation of gpsd - [gpsd — a GPS service daemon](http://www.catb.org/gpsd/)

* check this out for more information - https://learn.adafruit.com/adafruit-ultimate-gps/resources
    * Garmin GPS tutoral - http://www8.garmin.com/aboutGPS/
    * Trimble GPS Tutoral - http://www.trimble.com/gps_tutorial/

* [GPSBabel](https://www.gpsbabel.org/)
converts waypoints, tracks, and routes between popular GPS receivers such as Garmin or Magellan and mapping programs like Google Earth or Basecamp.
It also has powerful manipulation tools for such data. such as filtering duplicates points or simplifying tracks.



[!ultimate-gps](https://cdn-learn.adafruit.com/assets/assets/000/003/714/medium640/raspberry_pi_gps_pi_usbconnection2.jpg?1396801034)
I purchased [Adafruit's GPS Breakout][01] which uses the [MediaTek MTK3339 chipset][02].
This is a high-quality GPS module that can track up to 22 satellites concurrently,
has an module has a standard ceramic patch antenna
with an excellent high-sensitivity receiver (-165 dBm tracking and -145 dBm acquisition!),
and a built in antenna but with a option for active external antenna.
It has a 10Hz update rate (i.e. it can do up to 10 location updates per second)
giving it a high speed, high sensitivity logging or tracking capability.
Its power usage is very low, only 20mA during navigation and 25mA during tracking.
It claims a warm/cold start time of 34 seconds,
a maximum tracking velocity of 515 meters/s,
a position accuracy of 1.8 meters, and velocity accuracy of 0.1 meters/s.
The module supports DGPS/WAAS/EGNOS,
it is FCC E911 compliance with AGPS support,
jammer detection / reduction,
and multi-path detection / compensation.

The module supports an optional CR1220 coin cell to keep the real-time clock (RTC)
running, allowing warm starts and a tiny red LED.
The LED blinks at about 1Hz while it's searching for satellites
and blinks once every 15 seconds when a fix is found to conserve power.
Data is provided via a serial [NMEA 0183][06], 9600 baud (default) output.

The GPS module has a built in data-logging capability.
There is a microcontroller inside the module,
with some empty FLASH memory,
and the firmware allows sending commands to do internal logging to that FLASH.
You simply the microcontroller "Start Logging".
After that message is sent, the microcontroller can go to sleep
and does not need to wake up to talk to the GPS anymore to reduce power consumption.
The time, date, longitude, latitude, and height is logged every 15 seconds
and only when there is a fix.
The internal FLASH can store about 16 hours of data.
It also will automatically append data so you don't have to worry
about losing data if power is lost.
With the current firmware, is not possible to change what is logged and how often.

Adafruit provides some excellent write-up on how to configure and use this device:

* [Adafruit Ultimate GPS](https://learn.adafruit.com/adafruit-ultimate-gps/overview)
* [Adafruit Ultimate GPS on the Raspberry Pi](https://learn.adafruit.com/adafruit-ultimate-gps-on-the-raspberry-pi?view=all)
* [Adafruit's GPS Library LOCUS](https://github.com/adafruit/Adafruit_GPS)

# External GPS Antenna
With the module, I also purchase an external [active GPS antenna][03] that draws about 10mA
and will give you an additional 28 dB of gain
(but it has a 5 meter cable so may not see this gain).
You'll also need a [console cable][04] to easily make use of this GPS module.

Ther is also a GNSS Multi-Band antenna, such as the [ANN-MB-00 GNSS multiband antenna][26].
A multiband antenna is unique from other GNSS/GPS antennas
in that it is designed to receive both the classic L1 GPS band
and the newly launched (started in 2005) L2 GPS band.

# Navigation Technologies
* [The central place of GPS in our lives](https://plus.maths.org/content/recognising-place-gps-has-our-lives?nl=0)
* [How Etak Paved the Way to Personal Navigation](https://hackaday.com/2018/06/29/how-etak-paved-the-way-to-personal-navigation/)
* [An Introduction to GNSS](https://www.novatel.com/an-introduction-to-gnss/chapter-1-gnss-overview/)

# Global Navigation Satellite Systems (GNSS)
Global Navigation Satellite Systems (GNSS) is the acronym that encompasses
those systems that allow users to compute their position based on
signals transmitted by satellites, world-wide.
The obvious example is GPS,
but this term also includes other systems such as
[GLONASS][21], [Galileo][22] and [BeiDou][23].

# Global Positioning System (GPS) Background Information
The Global Positioning System (GPS) allows users to accurately determine
the location of objects on or above the surface of the Earth.
Most GPS receivers transmit [National Marine Electronics Association (NMEA)][20]
sentences that provide information that includes latitude and longitude,
altitude, time, bearing, speed, and a great many other variables at 9600 baud.

NMEA data - http://www.gpsinformation.org/dale/nmea.htm#PGRMM
Online NEMA tools - http://freenmea.net/

## GPS Technology
* [Hackaday Dictionary: The Global Positioning System (GPS)](https://hackaday.com/2015/11/12/hackaday-dictionary-the-global-positioning-system-gps/)
* [GPS for Dummies](https://books.google.com/books?id=Hbz4LYIrvuMC&pg=PA62&lpg=PA62&dq=comparison+of+gps+chips&source=bl&ots=HFGMKxCAOV&sig=C3wryIscPn01Nair4wJXMaKyEds&hl=en&sa=X&ved=0ahUKEwiSsZDgv57VAhXLej4KHenWBN44FBDoAQgzMAM#v=onepage&q=comparison%20of%20gps%20chips&f=false)
* [Adding GPS to Your Electronic Product (and How to Scale Up)](http://makezine.com/2016/07/06/adding-gps-to-your-electronic-product-and-how-to-scale-up/)
* [GPS Buying Guide](https://www.sparkfun.com/pages/GPS_Guide)
* [Do Chipset Channels Matter?](http://www.gpsreview.net/gps-chipset-channels/)
* http://www.furuno.com/en/gnss/technical/
* [GPS Visualizer's coordinate calculators & distance tools](http://www.gpsvisualizer.com/calculators)

## GPS-RTK
* [Real-Time Kinematic (RTK)](https://www.novatel.com/an-introduction-to-gnss/chapter-5-resolving-errors/real-time-kinematic-rtk/)
* [SparkFun GPS-RTK2 Board](https://www.sparkfun.com/products/15136)
* [SparkFun GPS-RTK Board - NEO-M8P-2](https://www.sparkfun.com/products/15005)
    * [What is GPS RTK?](https://learn.sparkfun.com/tutorials/what-is-gps-rtk)
    * [GPS-RTK Hookup Guide](https://learn.sparkfun.com/tutorials/gps-rtk-hookup-guide)

### Precise Point Positioning (PPP)
PPP is a positioning technique that removes or models GNSS system errors to provide a high level of position accuracy from a single receiver. A PPP solution depends on GNSS satellite clock and orbit corrections, generated from a network of global reference stations. Once the corrections are calculated, they are delivered to the end user via satellite or over the Internet. These corrections are used by the receiver, resulting in decimetre-level or better positioning with no base station required.

* [Precise Point Positioning (PPP)](https://www.novatel.com/an-introduction-to-gnss/chapter-5-resolving-errors/precise-point-positioning-ppp/)

## Differential Global Positioning Systems (DGPS)
Differential Global Positioning Systems (DGPS) are enhancements to the Global Positioning System (GPS) which provide improved location accuracy, in the range of operations of each system, from the 15-meter nominal GPS accuracy to about 10 cm in case of the best implementations.

## GNSS-SDR
[GNSS-SDR][24] is and open source Global Navigation Satellite Systems software-defined receiver.

## Dead Reckoning (DR)
* http://www.furuno.com/en/gnss/technical/tec_dead

## Language of GPS
Grid Square - http://www.gatorradio.org/Operating_Training_Aides/Ham_US_Grids%202005.pdf

# Get GPS Working on Raspberry Pi

# Pulse Per Second (PPS) Signal from the GPS
A pulse per second (PPS or 1PPS) is an electrical signal that has a width of less than one second and a sharply rising or abruptly falling edge that accurately repeats once per second. PPS signals are output by radio beacons, frequency standards, other types of precision oscillators and some GPS receivers.

* [Why do GPS receivers have a 1 PPS output?](https://electronics.stackexchange.com/questions/30750/why-do-gps-receivers-have-a-1-pps-output)
* [Add GPS Time and Location to a Raspberry Pi Project](https://www.rs-online.com/designspark/add-gps-time-and-location-to-a-raspberry-pi-project)
* [PPS (Pulse per Second) ...simple as that!](https://www.linkedin.com/pulse/pps-pulse-per-second-simple-deepak-kaira/)
* [The Raspberry Pi as a Stratum-1 NTP Server](http://www.satsignal.eu/ntp/Raspberry-Pi-NTP.html)
* [What’s More Accurate than a GPS Clock? The OpenPPS GPS Clock](https://hackaday.com/2019/05/11/whats-more-accurate-than-a-gps-clock-the-openppc-gps-clock/)
    * [OpenPPS](http://www.rocketmanrc.com/openpps.html)

## Step X: GPS Module Pinouts - DONE
[Adafruit's tutorial][05] provides an excellent description of the GPS module pins
and how to connect the console cable and external antenna
can be found in the tutorial "[Adafruit Ultimate GPS on the Raspberry Pi][07]".

[!gps-module-pinout](https://cdn-learn.adafruit.com/assets/assets/000/003/713/medium640/raspberry_pi_UltimateGPS_bb.png?1396801027)

## Step: X Setup Console Cable - DONE
Once you plug the console cable into the RPi,
the adapter should show up as a device file `/dev/ttyUSBX`
(where the 'X' will be '0', '1', '2', etc. depending on what other `ttyUSB` adapters are present.
So do the following:

```bash
# before you plug in the console cable
$ ls /dev/ttyUSB*
ls: cannot access /dev/ttyUSB*: No such file or directory

# after you plug in the console cable
ls /dev/ttyUSB*
/dev/ttyUSB0
```

This shows a new device file `/dev/ttyUSB0`.
This is your serial connection to the GPS module.

With the console cable plugged into the USB port of the RPi and GPS module wired,
you can do a quick check on what the device is doing:

```bash
# quick check of GPS module
$ sudo cat /dev/ttyUSB0
$GPGGA,164440.093,,,,,0,00,,,M,,M,,*71

$GPGSA,A,1,,,,,,,,,,,,,,,*1E

$GPGSV,1,1,01,01,,,31*7B

$GPRMC,164440.093,V,,,,,0.00,0.00,060180,,,N*4B

$GPVTG,0.00,T,,M,0.00,N,0.00,K,N*32

$GPGGA,164440.093,,,,,0,00,,,M,,M,,*71


```

To monitor continuously, its best to open up a serial terminal to check for activity.
Follow these steps:

```bash
# mointor gps data continously
sudo screen /dev/ttyUSB0 9600

# "ctrl-A" followed by ":quit" to stop and get out of screen
```

It may 30 or more seconds before the red LED stops blinking at 1 second intervals.
During this time, the GPS module is attempting to get a fix on the GPS satellites.
If needed, [use the external antenna to get a GPS fix][14].
The module will automatically detect an external active antenna is attached and switch over to use it.

>**NOTE:** uFL connectors are small and delicate.
The are not engineered for for repeated connections/disconnections.
Once you attach a uFL adapter, it is best to just let remain on the module.

The raw GPS data being produced are called [NMEA sentences][08].
You'll notice there are a few different kinds of NMEA sentences,
but the most common are
([NMEA Reference Manual][17] or [MTK3339 Data Sheet][02] or [GeoS NMEA Data Protocol v3.0][25]):

* [$GPRMC - Recommended minimum specific GPS/Transit data][09]
* [$GPGGA - Global Positioning System Fix Data][10]
* [$GPVTG - Track made good and ground speed][11]
* [$GPGSA - GPS DOP and active satellites][12]
* [$GPGSV - GPS Satellites in view][13]
* [$GPZDA - Date & Time (UTC, day, month, year, and local time zone)][19]

> **NOTE:** NMEA is the abbreviation for the [National Marine Electronics Association][15].
They develop specification that defines the interface between various pieces of marine electronic equipment.
[NMEA sets the standards for data format supported by all GPS manufacturers][16].

#####################################################
After the inital start of gpsd and then running something like gpspipe,
you get the following as the initial out put


{"class":"VERSION","release":"3.11","rev":"3.11-3","proto_major":3,"proto_minor":9}
{"class":"DEVICES","devices":[{"class":"DEVICE","path":"/dev/ttyUSB0","activated":"2017-07-28T03:12:39.588Z","native":0,"bps":9600,"parity":"N","stopbits":1,"cycle":1.00}]}
{"class":"WATCH","enable":true,"json":false,"nmea":true,"raw":0,"scaled":false,"timing":false,"split24":false,"pps":false,"device":"/dev/ttyUSB0"}

{
   "class":"VERSION",
   "release":"3.11",
   "rev":"3.11-3",
   "proto_major":3,
   "proto_minor":9
}

{
   "class":"DEVICES",
   "devices":[
      {
         "class":"DEVICE",
         "path":"/dev/ttyUSB0",
         "activated":"2017-07-28T03:12:39.588Z",
         "native":0,
         "bps":9600,
         "parity":"N",
         "stopbits":1,
         "cycle":1.00
      }
   ]
}

{
   "class":"WATCH",
   "enable":true,
   "json":false,
   "nmea":true,
   "raw":0,
   "scaled":false,
   "timing":false,
   "split24":false,
   "pps":false,
   "device":"/dev/ttyUSB0"
}

#####################################################

## Step X: Installing the GPS Daemon (gpsd) - DONE
The Raspberry Pi is successfully receiving the serial data that the GPS module provides
but its very cryptic.
There is a daemon that properly parsing the raw GPS data called `gpsd`.
It acts as a layer between your applications and the actual GPS hardware,
parsing errors, and providing a more readable, well-defined interfaces to any GPS module.

While a daemon service has its uses, it can get in our way.
Therefore, in this configuration the daemon service will be turned off.

To install `gpsd`:

```bash
# install the daemon gpsd
sudo apt-get install gpsd gpsd-clients python-gps

# disable the gpsd systemd service
sudo systemctl stop gpsd.socket
sudo systemctl disable gpsd.socket
```

Should you ever want to enable the default `gpsd` systemd service,
do the following (but not now!):

```bash
# enable the default gpsd systemd service
sudo systemctl enable gpsd.socket
sudo systemctl start gpsd.socket
```

## Step X: Using the gpsd Daemon
Now run the following command to manually start `gpsd`:

```bash
# manual start gpsd daemon
sudo gpsd -N -G /dev/ttyUSB0 -F /var/run/gpsd.sock

# to kill this daemon
sudo killall gpsd

# to run gpsd in the foregorund (not as a daemon)
sudo gpsd -G /dev/ttyUSB0 -F /var/run/gpsd.sock
```

The `-G` option allows you to connect from a non-localhost.
For example, via `telnet BlueRPi.local 2947`.
Not needed if you are connecting via terminal or ssh.

```bash
# X displays current GPS position/time/velocity and the locations of accessible satellites
xgps

# speedometer that uses position information from the GPS
xgpsspeed

# cgps is a client resembling xgps, but without the pictorial satellite display running in serial terminal
cgps -s

# collects fixes from gpsd and feeds them to a running instance of Google Earth for live location tracking
gegps

# watches packets coming from a GPS and displays them along with diagnostic information
gpsmon
```
These tools come with the `gpsd` package but don't need the `gpsd` process running to work:

```bash
# this will give you output like 'sudo screen /dev/ttyUSB0 9600'
gpscat -s 9600 /dev/ttyUSB0

# gpspipe is a tool to connect to gpsd and output the received sentences to stdout
gpspipe -r /dev/ttyUSB0
```


###############################################################
There is a differnace between the out put of
gpscat -s 9600 /dev/ttyUSB0
and
sudo screen /dev/ttyUSB0 9600

But gpspipe -r /dev/ttyUSB0 looks like screen


gpscat -p /dev/ttyUSB0
gets you something similar to "screen"

What is the nature of that difference??
###############################################################

###############################################################
The GPSD protocol is built on top of JSON.

A python module that comes with `gpsd`.

check out geopy - https://github.com/geopy/geopy
###############################################################

## Step X: External Antenna
For information about NMEA sesntance that cover antenna status - https://cdn-learn.adafruit.com/downloads/pdf/adafruit-ultimate-gps.pdf

## Step X: Using the Python GPS Library
With the `gpsd` process running,
execute the Python program below:

```python
import gps

# Listen on port 2947 (gpsd) of localhost
session = gps.gps("localhost", "2947")
session.stream(gps.WATCH_ENABLE | gps.WATCH_NEWSTYLE)

while True:
    try:
        report = session.next()
		# Wait for a 'TPV' report and display the current time
		# To see all report data, uncomment the line below
		# print report
        if report['class'] == 'TPV':
            if hasattr(report, 'time'):
                print report.time
    except KeyError:
		pass
    except KeyboardInterrupt:
		quit()
    except StopIteration:
		session = None
		print "GPSD has terminated"
```

## Step X: Using the Node.js GPS Library
* GPS.js is an extensible parser for NMEA sentences - https://www.npmjs.com/package/gps
* wrapper to start and stop gpsd from your program - https://www.npmjs.com/package/node-gpsd
* https://www.npmjs.com/browse/keyword/gps

## Step X: Changing Baud Rate of GPS Module
* [How to change the baud rate and update rate of MTK GPS module](https://hobbyking.com/media/file/201626144X19082X53.pdf)
* [MediaTek MTK33X9 GPS Chipset Command Generator](https://forum.micropython.org/viewtopic.php?t=726)
* [MTK NMEA PROPRIETARY COMMAND](https://www.pitlab.com/autopitlot/doc/MTK_commands.pdf)
* [PMTK command packet](http://www.pvelectronics.co.uk/PA6B/PA6B_commands.pdf)

## Step X: Battery Backup
* https://learn.adafruit.com/adafruit-ultimate-gps/battery-backup

## Step X: Built In Logging
* https://learn.adafruit.com/adafruit-ultimate-gps/built-in-logging

## Step X: Using Raspberry Pi UART Instead of USB
* https://learn.adafruit.com/adafruit-ultimate-gps-on-the-raspberry-pi?view=all#using-uart-instead-of-usb

## Step X: Tools
* http://www.visualgps.net/
* [7 of the Best Free Linux GPS Tools](http://www.linuxlinks.com/article/20110522052357647/GPSTools.html)



[01]:https://www.adafruit.com/product/746
[02]:https://cdn-shop.adafruit.com/datasheets/GlobalTop-FGPMMOPA6C-Datasheet-V0A-Preliminary.pdf
[03]:https://electronics.stackexchange.com/questions/130509/gps-antenna-when-is-an-active-antenna-really-necessary
[04]:https://www.adafruit.com/product/954
[05]:https://learn.adafruit.com/adafruit-ultimate-gps/pinouts
[06]:https://en.wikipedia.org/wiki/NMEA_0183
[07]:https://learn.adafruit.com/adafruit-ultimate-gps-on-the-raspberry-pi?view=all
[08]:http://aprs.gids.nl/nmea/
[09]:http://aprs.gids.nl/nmea/#rmc
[10]:http://aprs.gids.nl/nmea/#gga
[11]:http://aprs.gids.nl/nmea/#vtg
[12]:http://aprs.gids.nl/nmea/#gsa
[13]:http://aprs.gids.nl/nmea/#gsv
[14]:https://learn.adafruit.com/adafruit-ultimate-gps/external-antenna
[15]:https://www.nmea.org/
[16]:http://gpsworld.com/what-exactly-is-gps-nmea-data/
[17]:https://www.sparkfun.com/datasheets/GPS/NMEA%20Reference%20Manual1.pdf
[18]:https://learn.adafruit.com/adafruit-ultimate-gps-on-the-raspberry-pi?view=all#installing-a-gps-daemon-gpsd
[19]:http://aprs.gids.nl/nmea/#zda
[20]:http://www.gpsinformation.org/dale/nmea.htm#nmea
[21]:https://www.glonass-iac.ru/en/
[22]:https://www.esa.int/Our_Activities/Navigation/Galileo/What_is_Galileo
[23]:http://www.beidou.gov.cn/
[24]:https://gnss-sdr.org/
[25]:http://geostar-navi.com/files/docs/geos3/geos_nmea_protocol_v3_0_eng.pdf
[26]:https://www.sparkfun.com/products/15192
[27]:
[28]:
[29]:
[30]:
