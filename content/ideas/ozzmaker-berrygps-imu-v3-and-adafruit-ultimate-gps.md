
##############################################################################
* [GPS Basics](https://learn.sparkfun.com/tutorials/gps-basics)
* [GPS Tracking Comparisons](https://www.sparkfun.com/tutorials/169)
* [Building a GPS System](https://www.sparkfun.com/gps)
* [Building A GPS With Bug Eyes And Ancient Wisdom](https://hackaday.com/2019/09/06/building-a-gps-with-bug-eyes-and-ancient-wisdom/)

* [Add GPS Time and Location to a Raspberry Pi Project](https://www.rs-online.com/designspark/add-gps-time-and-location-to-a-raspberry-pi-project)
* [Adafruit Ultimate GPS on the Raspberry Pi](https://learn.adafruit.com/adafruit-ultimate-gps-on-the-raspberry-pi?view=all)
* [Adafruit Ultimate GPS](https://learn.adafruit.com/adafruit-ultimate-gps/)
* [SMA to uFL/u.FL/IPX/IPEX RF Adapter Cable](https://www.adafruit.com/product/851)
* [Adafruit GPS library](https://github.com/adafruit/Adafruit_GPS)
* [Python library for Raspberry PI for Ultimate GPS based on MTK3339 with serial interface as sold by Adafruit](https://github.com/PrzemoF/mtk3339)
* [Introduction to GPS Data: NMEA & RTCM](http://www.geodetic.gov.hk/smo/gsi/data/ppt/NMEAandRTCM.ppt)
* [GPS Chipset](http://wiki.openstreetmap.org/wiki/GPS_Chipset)
* [how I made a decent map with a GPS unit and Ubuntu Breezy GNU/Linux](http://cs.brown.edu/~dap/gps.htm)
* [Data On the Go](http://www.linux-magazine.com/Issues/2014/166/GPS-Tools)
* [NMEA data](http://www.gpsinformation.org/dale/nmea.htm#intro)
* [NMEA Decoder](http://freenmea.net/decoder)
* [Python library for parsing the NMEA 0183 protocol (GPS)](https://github.com/Knio/pynmea2)
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


# DashCam
Combining the GPS location information onto a video stream

* [Making a DashCam Using the Raspberry Pi Zero (pt.1)](https://www.hackster.io/BnBe_Club/making-a-dashcam-using-the-raspberry-pi-zero-pt-1-9dd3ad)




##############################################################################






I investigate here two GPS solutions for the Raspberry Pi:

* [Adafruit's Ultimate GPS][41] which uses the [MediaTek MTK3339 chipset][42]
* Sparkfun
* [Ozzmaker's BerryGPS-IMU V3][20] which uses the [uBlox CAM-M8][70]
but also has [IMU sensor LSM9DS1][68] [Barometric Sensor BMP280][69]

| Features                        | MediaTek MTK3339 |   uBlox CAM-M8   |
|:--------------------------------|:----------------:|:----------------:|
| **Power Consumption**           | | |
|   Acquisition                   | 25 mW | |
|   Tracking                      | 18 mW | |
| **Current Consumption (@3.3V)** | | |
|   Acquisition                   | 25 mA | 26 mA |
|   Tracking                      | 20 mA | 23 mA |
| **Sensitivity**                 | | |
|   Acquisition (cold start)      | -148 dBm | -148 dBm |
|   Acquisition (hot start)       | -163 dBm | -156 dBm |
|   Tracking                      | -165 dBm | -164 dBm |


| Features                        | MediaTek MTK3339 |   uBlox CAM-M8   |
|:--------------------------------|:----------------:|:----------------:|

Sources:
* [MT3339 All-in-One GNSS Datasheet](https://d86o2zu8ugzlg.cloudfront.net/mediatek-craft/documents/mt3339/MT3339_Datasheet.pdf)
* [u-blox M8 Concurrent GNSS Antenna Modules](https://www.u-blox.com/sites/default/files/CAM-M8-FW3_DataSheet_%28UBX-15031574%29.pdf)


# Data Logging
* [The Pythonic Guide To Logging](https://timber.io/blog/the-pythonic-guide-to-logging/)
* [logzero: Python logging made easy](https://logzero.readthedocs.io/en/latest/)
* [Use logzero for simple logging in Python](https://opensource.com/article/20/2/logzero-python)
* [OpenLog Data Logger](https://learn.sparkfun.com/tutorials/openlog-hookup-guide)

## Data Logging for NMEA Output
* [Using PySerial, PyNMEA2, and Raspberry Pi to log NMEA output](https://fishandwhistle.net/post/2016/using-pyserial-pynmea2-and-raspberry-pi-to-log-nmea-output/)

## Plotting
* [Python Data Science Handbook](https://jakevdp.github.io/PythonDataScienceHandbook/)
* [Geographic Data with Basemap](https://jakevdp.github.io/PythonDataScienceHandbook/04.13-geographic-data-with-basemap.html)


----


# Background: Navigation Technologies
When GPS was first released to consumers,
it wasn’t even in the hands or understanding of most people.
It was used for pretty unique and esoteric stuff, with a simple GPS receivers.
They were pretty much just displayed current coordinates including latitude, longitude, and altitude- not much else.
These old units are big, heavy, slow, and use a ton of power for what they do.
Modern GPS units are light, small, cheap, and use very little power.

* [The central place of GPS in our lives](https://plus.maths.org/content/recognising-place-gps-has-our-lives?nl=0)
* [How Etak Paved the Way to Personal Navigation](https://hackaday.com/2018/06/29/how-etak-paved-the-way-to-personal-navigation/)
* [An Introduction to GNSS](https://www.novatel.com/an-introduction-to-gnss/chapter-1-gnss-overview/)
* [New-Age Satellite-Based Navigation STAN: Simultaneous Tracking and Navigation with LEO Satellite Signals](https://insidegnss.com/new-age-satellite-based-navigation-stan-simultaneous-tracking-and-navigation-with-leo-satellite-signals/)
* [Tracking The Satellites That Keep Us On Track; Monitoring GPS, Galileo, BeiDou, And GLONASS](https://hackaday.com/2019/09/24/tracking-the-satellites-that-keep-us-on-track-monitoring-gps-galileo-beidou-and-glonass/)
* [Coarse Materials: GPS and GNSS for Geospatial Professionals](https://www.e-education.psu.edu/geog862/home.html)

## Time and Navigation
* [Time and Navigation](https://timeandnavigation.si.edu/)

## Space Navigation
* [Star Trackers: Telling Up From Down In Any Space](https://hackaday.com/2020/04/02/star-trackers-telling-up-from-down-in-any-space/)

## Dead Reckoning (DR)
* http://www.furuno.com/en/gnss/technical/tec_dead

## Global Navigation Satellite Systems (GNSS)
Global Navigation Satellite Systems (GNSS) is the acronym that encompasses
those systems that allow users to compute their position based on
signals transmitted by satellites, world-wide.
The obvious example is GPS,
but this term also includes other systems such as
[GLONASS][61], [Galileo][62] and [BeiDou][63].

GPS provides positioning of an object to the earth.
It uses timely signals generated by satellites revolving around the earth.
GPS includes a constellation of 24 satellites and extra for backup purpose.
Four satellites are used for getting the precise position, this process is known as [trilateration][37].

GPS technology uses standalone receivers, where the location is directly calculated. This technique is prone to errors such as uncorrected satellite clock errors, orbital parameter satellite error, ionospheric and tropospheric delays, multipath errors, geometric errors and datum selection errors. To reduce these errors new technologies are evolved. GPS can gain nominal accuracy of 10-15 meters.

## Global Positioning System (GPS) Background Information
The Global Positioning System (GPS) allows users to accurately determine
the location of objects on or above the surface of the Earth.
Most GPS receivers transmit [National Marine Electronics Association (NMEA)][60]
sentences that provide information that includes latitude and longitude,
altitude, time, bearing, speed, and a great many other variables at 9600 baud.

A GPS device is designed to delivering fourteen numbers:
(x, y, z) coordiantes, vilocity along theses coordinats (vx, vy, vz), time,
and error estimates for each of these seven values.
The `gpsd` daemon's job is to deliver these numbers to user applications with minimum fuss.
This is a "TPV" — time-position-velocity report. A GPS is a TPV oracle.

## What is GPS NMEA Data?
[NMEA is a standard data format][34] supported by all GPS manufacturers,
much like ASCII is the standard for digital computer characters in the computer world.
The purpose of NMEA is to give equipment users the ability to mix and match hardware and software.
NMEA-formatted GPS data also makes life easier for software developers
so they can write software for a wide variety of GPS receivers
instead of having to write a custom interface for each GPS receiver.

But like so many standards,
NMEA is confusing since there are many NMEA messages, not just one.
Different kinds of GPS receivers with different capabilities will have
different types of NMEA messages with different capabilities.
And there is no physical or data link layer standard for NMEA.
NMEA data can be transmitted via different types of communications interfaces
such as RS-232, USB, Bluetooth, Wi-Fi, UHF, and many others.

For details on the NMEA message structure,
check out the article ["What Exactly Is GPS NMEA Data?"][34].

NMEA data - http://www.gpsinformation.org/dale/nmea.htm#PGRMM
Online NEMA tools - http://freenmea.net/

The raw GPS data being produced are called [NMEA sentences][48].
You'll notice there are a few different kinds of NMEA sentences,
but the most common are
([NMEA Reference Manual][57] or [MTK3339 Data Sheet][42] or [GeoS NMEA Data Protocol v3.0][65]):

* [$GPRMC - Recommended minimum specific GPS/Transit data][49]
* [$GPGGA - Global Positioning System Fix Data][50]
* [$GPVTG - Track made good and ground speed][51]
* [$GPGSA - GPS DOP and active satellites][52]
* [$GPGSV - GPS Satellites in view][53]
* [$GPZDA - Date & Time (UTC, day, month, year, and local time zone)][59]

> **NOTE:** NMEA is the abbreviation for the [National Marine Electronics Association][55].
>They develop specification that defines the interface between various pieces of marine electronic equipment.
>[NMEA sets the standards for data format supported by all GPS manufacturers][56].

## Language of GPS
Grid Square - http://www.gatorradio.org/Operating_Training_Aides/Ham_US_Grids%202005.pdf

## GPS Technology
* [Hackaday Dictionary: The Global Positioning System (GPS)](https://hackaday.com/2015/11/12/hackaday-dictionary-the-global-positioning-system-gps/)
* [GPS for Dummies](https://books.google.com/books?id=Hbz4LYIrvuMC&pg=PA62&lpg=PA62&dq=comparison+of+gps+chips&source=bl&ots=HFGMKxCAOV&sig=C3wryIscPn01Nair4wJXMaKyEds&hl=en&sa=X&ved=0ahUKEwiSsZDgv57VAhXLej4KHenWBN44FBDoAQgzMAM#v=onepage&q=comparison%20of%20gps%20chips&f=false)
* [Adding GPS to Your Electronic Product (and How to Scale Up)](http://makezine.com/2016/07/06/adding-gps-to-your-electronic-product-and-how-to-scale-up/)
* [GPS Buying Guide](https://www.sparkfun.com/pages/GPS_Guide)
* [Do Chipset Channels Matter?](http://www.gpsreview.net/gps-chipset-channels/)
* http://www.furuno.com/en/gnss/technical/
* [GPS Visualizer's coordinate calculators & distance tools](http://www.gpsvisualizer.com/calculators)

## gpsd - Daemon for GPS Reciver
* [gpsd](https://en.wikipedia.org/wiki/Gpsd)
* [gpsd manpage](https://manpages.debian.org/testing/gpsd/gpsd.8.en.html)
* [Tutorial – gpsd](https://www.linux-magazine.com/Issues/2018/210/Tutorial-gpsd#article_f2)

## GPS Connection
Network based correction methods (GPS-RTK and GPS-PPP)
can provide GPS fixes to centimeter level accuracy under ideal conditions. However, these solutions are very sensitive to the environment — such as bridges, trees, and buildings. It is well established that the way to overcome this challenge and improve precisions GPS reliability is to use high-accuracy IMU aiding at a low-level in the position solution.

## AGPS
* [A-GPS vs. GPS](http://www.diffen.com/difference/A-GPS_vs_GPS)

## Differential Global Positioning Systems (DGPS)
[DGPS (Differential GPS)][35] is essentially a system to provide positional corrections to GPS signals.
DGPS is designed to be more accurate than GPS.
DGPS are enhancements to the GPS which provide improved location accuracy,
in the range of operations of each system,
from the 15-meter nominal GPS accuracy to about 10 cm in case of the best implementations.
DGPS uses a fixed, known position to adjust real time GPS signals to eliminate [pseudorange errors][36].
The stationary GPS receiver needs to be with 100km of the roving GPS receiver.
DGPS corrections improve the accuracy of position data only.
DGPS has no effect on results that are based on speed data.
DGPS accarcy will be effected by the distance between the transmitter & rover,
and ionosphere, troposphere and multipath conditions.

* [How Does DGPS (Differential GPS) Work?](https://racelogic.support/01VBOX_Automotive/01General_Information/Knowledge_Base/How_Does_DGPS_(Differential_GPS)_Work%3F)
* [Difference Between GPS and DGPS](https://techdifferences.com/difference-between-gps-and-dgps.html)
* [How Not To Build Your Own DGPS Base Station](https://hackaday.com/2018/03/30/fail-of-the-week-how-not-to-build-your-own-dgps-base-station/)
* [Differential GPS Explained](https://www.esri.com/news/arcuser/0103/differential1of2.html)

## GPS-RTK
* [Real-Time Kinematic (RTK)](https://www.novatel.com/an-introduction-to-gnss/chapter-5-resolving-errors/real-time-kinematic-rtk/)
* [SparkFun GPS-RTK2 Board](https://www.sparkfun.com/products/15136)
* [SparkFun GPS-RTK Board - NEO-M8P-2](https://www.sparkfun.com/products/15005)
    * [What is GPS RTK?](https://learn.sparkfun.com/tutorials/what-is-gps-rtk)
    * [GPS-RTK Hookup Guide](https://learn.sparkfun.com/tutorials/gps-rtk-hookup-guide)

## Real-Time Kinematic vs. Differential GPS
* [Real-Time Kinematic and Differential GPS](https://www.e-education.psu.edu/geog862/node/1828)

### Precise Point Positioning (PPP)
PPP is a positioning technique that removes or models GNSS system errors to provide a high level of position accuracy from a single receiver. A PPP solution depends on GNSS satellite clock and orbit corrections, generated from a network of global reference stations. Once the corrections are calculated, they are delivered to the end user via satellite or over the Internet. These corrections are used by the receiver, resulting in decimetre-level or better positioning with no base station required.

* [Precise Point Positioning (PPP)](https://www.novatel.com/an-introduction-to-gnss/chapter-5-resolving-errors/precise-point-positioning-ppp/)

## Pulse Per Second (PPS) Signal from the GPS
A pulse per second (PPS or 1PPS) is an electrical signal that has a width of less than one second and a sharply rising or abruptly falling edge that accurately repeats once per second. PPS signals are output by radio beacons, frequency standards, other types of precision oscillators and some GPS receivers.

* [Why do GPS receivers have a 1 PPS output?](https://electronics.stackexchange.com/questions/30750/why-do-gps-receivers-have-a-1-pps-output)
* [Add GPS Time and Location to a Raspberry Pi Project](https://www.rs-online.com/designspark/add-gps-time-and-location-to-a-raspberry-pi-project)
* [PPS (Pulse per Second) ...simple as that!](https://www.linkedin.com/pulse/pps-pulse-per-second-simple-deepak-kaira/)
* [What’s More Accurate than a GPS Clock? The OpenPPS GPS Clock](https://hackaday.com/2019/05/11/whats-more-accurate-than-a-gps-clock-the-openppc-gps-clock/)
    * [OpenPPS](http://www.rocketmanrc.com/openpps.html)

## GPS Time Coordinate System
The [World Geodetic System 1984][38] [(WGS84)][67]
(also known as WGS 1984, EPSG:4326)
is comprised of a terrestrial reference coordinate system, a geodetic datum
([Horizontal Datum][71] + [Vertical Datum][72]), and a [ellipsoid modeling the earth][58].

WGS84 is comprises of a reference [ellipsoid modeling the earth][58],
a standard coordinate system, altitude data and a [geoid][39].
It uses the Earth’s center of mass as the coordinate origin.
[Geodesists][40] believe the error is less than 2 centimeters

## Magnetic North vs Geographic (True) North
* [Magnetic North vs Geographic (True) North Pole](https://gisgeography.com/magnetic-north-vs-geographic-true-pole/)

## GPS Position Accuracy
[Dilution of precision](https://en.wikipedia.org/wiki/Dilution_of_precision_(navigation))
is a term used in GPS navigation to specify the error
in positional measurement precision resulting from sub-optimal satellite geometry.

* [GPS Position accuracy and how to tell if you have a good fix?](https://ozzmaker.com/gps-position-accuracy-and-how-to-tell-if-you-have-a-good-fix/)

##  Coordinate Systems
* [Latitude, Longitude and Coordinate System Grids](https://gisgeography.com/latitude-longitude-coordinates/)

## Maps
* [Marble](https://marble.kde.org/index.php)

## Python Libraries for GIS and Mapping
* [Python Libraries for GIS and Mapping](https://gisgeography.com/python-libraries-gis-mapping/)
* [Python3 GPS Client Tools](https://confluence.clazzes.org/display/PYTOOLS/Python3+GPS+Client+Tools)

## GNSS-SDR
[GNSS-SDR][64] is and open source Global Navigation Satellite Systems software-defined receiver.

## VBOX Automotive
VBOX is a data acquisition systems by RACELOGIC used for measuring the speed and position of a moving vehicle.
VBOX data loggers can record high accuracy GPS speed measurements, distance, acceleration,
braking distance, heading, slip angle, lap times, position, cornering forces and more.

* [VBOX 3i | 100Hz Data Logger](https://www.vboxautomotive.co.uk/index.php/en/products/data-loggers/vbox-3i)
* [Racelogic](https://racelogic.support/)


----


# Time Keeping
* [Stratum-1-Microserver HOWTO](https://www.ntpsec.org/white-papers/stratum-1-microserver-howto/)
* [The Raspberry Pi as a Stratum-1 NTP Server](http://www.satsignal.eu/ntp/Raspberry-Pi-NTP.html)
* [Why You Should Consider Moving From NTP to NTPsec](https://medium.com/linode-cube/why-you-should-consider-moving-from-ntp-to-ntpsec-edab616b6740)
* [Setting the computer time using GPS](https://area-51.blog/2012/06/18/getting-gps-to-work-on-a-raspberry-pi/)
* [5 minute guide to making a GPS Locked Stratum 1 NTP Server with a Raspberry Pi](https://ava.upuaut.net/?p=951)


----


# GPS Data Formats
* [The Ultimate List of GIS Formats and Geospatial File Extensions](https://gisgeography.com/gis-formats/)
* [Vector vs Raster: What’s the Difference Between GIS Spatial Data Types?](https://gisgeography.com/spatial-data-types-vector-raster/)

## GPX File Format
A GPX file is a GPS data file saved in the GPS Exchange format,
which is an open standard XML format that can be freely used by GPS programs.
It contains longitude and latitude location data that may include
waypoints, routes, and tracks.

GPX files can be used by a variety of applications including Google Earth, GPSRouteX, and GPX Viewer.
GPX files store three types of data:

* Waypoint - Includes GPS coordinates of a point. It may also include other descriptive information.
* Route - Includes a list of track points, which are waypoints for turn or stage points, that lead to a destination.
* Track - Includes a list of points that describe a path.


----


# Raspberry Pi Zero Setup
I have set up all all my Raspberry Pi's as [headless devices][01].
For one thing, I want to SSH into my devices so I don't want
or need a monitor/keyboard.
The real trick on going headless is doing the initial setup of the device
without an HDMI monitor or a keyboard / mouse,
required by the [typical RPi setup][28].
Using just a SD Card reader/writer, a USB WiFi adapter,
and a Linux machine, I can do the whole setup.

If you determined to have WiFi for your RPi Zero
(the one without WiFi, like the Zero W has),
it can be done.
It's easy to just use a [Micro USB OTG Adapter][26] and a [WiFi USB Adapter][27].
With this in place, you just need to provision the RPi Zero
like any Raspberry Pi for WiFi connectivity.
This can be done by following "Step 3: Configure your WiFi" within
["HowTo: Set-Up the Raspberry Pi as a Headless Device"][25].

### Step 1: Download Raspberry Pi Image - DONE
Before you can load a copy of the latest Raspberry Pi image onto your micro SD Card,
you must first download the official Raspberry Pi operating system, [Raspbian][13]
(in my case, the version is [Stretch][11]).
You can get that download [here][12].

>**NOTE:** I installed Raspbian Buster Lite
>(Version:September 2019, Release date:2019-09-26, Kernel version:4.19)

The Raspbian download site also lists a check sum for the download file.
(In my case, I down loaded the Raspbian file to `/home/jeff/Downloads/`.)
Check whether the file has been changed from its original state
by checking its digital signature (SHA1 hash value).

```bash
# validate file is uncorrupted via check of digital signature
$ sha256sum 2019-09-26-raspbian-buster-lite.zip
64c4103316efe2a85fd2814f2af16313abac7d4ad68e3d95ae6709e2e894cc1b 2019-09-26-raspbian-buster-lite.zip
```

Next you need to unzip the file to retrieve the Linux image file:

```bash
$ unzip 2019-09-26-raspbian-buster-lite.zip
Archive:  2019-09-26-raspbian-buster-lite.zip
  inflating: 2019-09-26-raspbian-buster-lite.img
```

### Step 2: Write Raspberry Pi Image to SD Card - DONE
Next using Linux, you have copied the Raspbian image onto the SD card mounted to your system.
I'll be using the [Rocketek 11-in-1 4 Slots USB 3.0 Memory Card Reader][14] to create my SD Card.
Make sure to [choose a reputable SD Card][15] from [here][24], don't go cheap.

When using your card reader,
you'll need to know the device name of the reader.
The easiest way to find this is just unplug your card reader from the USB port,
run `df -h`, then plug it back in, and run `df -h` again.

```bash
# with the SD card reader unplugged
$ df -h
Filesystem      Size  Used Avail Use% Mounted on
udev            7.8G     0  7.8G   0% /dev
tmpfs           1.6G  2.1M  1.6G   1% /run
/dev/sda3       110G   61G   44G  59% /
tmpfs           7.8G  833M  7.0G  11% /dev/shm
tmpfs           5.0M  8.0K  5.0M   1% /run/lock
tmpfs           7.8G     0  7.8G   0% /sys/fs/cgroup
/dev/loop3      157M  157M     0 100% /snap/gnome-3-28-1804/110
/dev/loop0       43M   43M     0 100% /snap/gtk-common-themes/1313
/dev/loop5       55M   55M     0 100% /snap/core18/1279
/dev/loop1      3.8M  3.8M     0 100% /snap/gnome-system-monitor/111
/dev/loop4       90M   90M     0 100% /snap/core/8213
/dev/loop6      141M  141M     0 100% /snap/gnome-3-26-1604/97
/dev/loop17      15M   15M     0 100% /snap/gnome-characters/367
/dev/loop13     1.0M  1.0M     0 100% /snap/gnome-logs/81
/dev/loop8      1.0M  1.0M     0 100% /snap/gnome-logs/73
/dev/loop16     157M  157M     0 100% /snap/gnome-3-28-1804/91
/dev/loop12     141M  141M     0 100% /snap/gnome-3-26-1604/98
/dev/loop9       45M   45M     0 100% /snap/gtk-common-themes/1353
/dev/loop15     4.3M  4.3M     0 100% /snap/gnome-calculator/536
/dev/loop10     4.3M  4.3M     0 100% /snap/gnome-calculator/544
/dev/sda1       461M  117M  321M  27% /boot
/dev/md0        917G  254G  617G  30% /home
/dev/sdb        3.6T  473G  3.0T  14% /mnt/backup
tmpfs           1.6G   64K  1.6G   1% /run/user/1000
/dev/loop18      90M   90M     0 100% /snap/core/8268
/dev/loop2       55M   55M     0 100% /snap/core18/1288
/dev/loop11     3.8M  3.8M     0 100% /snap/gnome-system-monitor/123
/dev/loop19      15M   15M     0 100% /snap/gnome-characters/375

# with the SD card reader plugged in USB
$ df -h
Filesystem      Size  Used Avail Use% Mounted on
udev            7.8G     0  7.8G   0% /dev
tmpfs           1.6G  2.1M  1.6G   1% /run
/dev/sda3       110G   61G   44G  59% /
tmpfs           7.8G  833M  7.0G  11% /dev/shm
tmpfs           5.0M  8.0K  5.0M   1% /run/lock
tmpfs           7.8G     0  7.8G   0% /sys/fs/cgroup
/dev/loop3      157M  157M     0 100% /snap/gnome-3-28-1804/110
/dev/loop0       43M   43M     0 100% /snap/gtk-common-themes/1313
/dev/loop5       55M   55M     0 100% /snap/core18/1279
/dev/loop1      3.8M  3.8M     0 100% /snap/gnome-system-monitor/111
/dev/loop4       90M   90M     0 100% /snap/core/8213
/dev/loop6      141M  141M     0 100% /snap/gnome-3-26-1604/97
/dev/loop17      15M   15M     0 100% /snap/gnome-characters/367
/dev/loop13     1.0M  1.0M     0 100% /snap/gnome-logs/81
/dev/loop8      1.0M  1.0M     0 100% /snap/gnome-logs/73
/dev/loop16     157M  157M     0 100% /snap/gnome-3-28-1804/91
/dev/loop12     141M  141M     0 100% /snap/gnome-3-26-1604/98
/dev/loop9       45M   45M     0 100% /snap/gtk-common-themes/1353
/dev/loop15     4.3M  4.3M     0 100% /snap/gnome-calculator/536
/dev/loop10     4.3M  4.3M     0 100% /snap/gnome-calculator/544
/dev/sda1       461M  117M  321M  27% /boot
/dev/md0        917G  254G  617G  30% /home
/dev/sdb        3.6T  473G  3.0T  14% /mnt/backup
tmpfs           1.6G   68K  1.6G   1% /run/user/1000
/dev/loop18      90M   90M     0 100% /snap/core/8268
/dev/loop2       55M   55M     0 100% /snap/core18/1288
/dev/loop11     3.8M  3.8M     0 100% /snap/gnome-system-monitor/123
/dev/loop19      15M   15M     0 100% /snap/gnome-characters/375
/dev/sdf2       1.8G  1.1G  634M  64% /media/jeff/rootfs
/dev/sdf1        41M   41M   512 100% /media/jeff/0298-4814
```

Note that in my example above, the new device is `/dev/sdf1` and `/dev/sdf2`.
The last part (the number 1) is the partition number
but we want to write to the whole SD card, not just one partition.
Therefore you need to remove that part when creating the image.
With this information, and know the location of the Raspbian image and
where we need to write the Raspbian image to the SD Card
(see more detail instructions [here][16]).

```bash
# go to directory with the RPi image
cd ~/Downloads/Raspbian

# unmount the sd card reader
sudo umount /dev/sdf1 /dev/sdf2

# write the image to the sd card reader
sudo dd bs=4M if=2019-09-26-raspbian-buster-lite.img of=/dev/sdf

# ensure the write cache is flushed
sudo sync

# (optional) check the integrity of the sd card image
sudo dd bs=4M if=/dev/sdf of=copy-from-sd-card.img
sudo truncate --reference 2019-09-26-raspbian-buster-lite.img copy-from-sd-card.img
diff -s 2019-09-26-raspbian-buster-lite.img copy-from-sd-card.img
```

Remove SD card reader on your computer and then reinstall it.
We’re going to set up the network interfaces next.

>**NOTE:** You could immediately put the SD Card in the RPi and boot it up,
>but you will have no WiFi access and you'll need to use the Ethernet interface,
>or if there is no Ethernet interface,
>you'll need to use a console cable to make the file modification
>outline in the next step.
>[Adafruit has good description on how to use a console cable][17]
>and the how to [enable the UART for the console][18].

### Step 3: Setup Networking - DONE
We now we need to setup
the hostname and networking features for the Raspberry Pi.
We do this by creating this file in

Using your card reader wuth the SD Card install,
plug it back into a USB port and find the file
`/media/jeff/rootfs/etc/network/interfaces`
modify this network interfaces file to look like this:

```bash
# Maintainer:   jeffskinnerbox@yahoo.com / www.jeffskinnerbox.me
# Version:      0.5


# interfaces(5) file used by ifup(8) and ifdown(8)

# PLEASE NOTE that this file is written to be used with dhcpcd
# For static IP, consult /etc/dhcpcd.conf and 'man dhcpcd.conf'
# Also see https://raspberrypi.stackexchange.com/questions/39785/dhcpcd-vs-etc-network-interfaces


# include files from /etc/network/interfaces.d
source-directory /etc/network/interfaces.d

# The loopback network interface
auto lo
iface lo inet loopback

# establish ethernet (wired) network interface
iface eth0 inet manual

# establish wifi connection for embedded wifi
allow-hotplug wlan0
iface wlan0 inet manual
    wpa-conf /etc/wpa_supplicant/wpa_supplicant.conf

# establish wifi connection for dongle
allow-hotplug wlan1
iface wlan1 inet manual
    wpa-conf /etc/wpa_supplicant/wpa_supplicant.conf
```

Next, you modify your `/media/jeff/rootfs/etc/wpa_supplicant/wpa_supplicant.conf`
WiFi file to look like this:


```bash
# Maintainer:   jeffskinnerbox@yahoo.com / www.jeffskinnerbox.me
# Version:      0.5

# country code environment variable, required for RPi 3
country=US

# path to the ctrl_interface socket and the user group
ctrl_interface=DIR=/var/run/wpa_supplicant GROUP=netdev

# allow wpa_supplicant to overwrite configuration file whenever configuration is changed
update_config=1

# 1 = wpa_supplicant initiates scanning and AP selection ; 0 = driver takes care of scanning
ap_scan=1

# home wifi network settings
network={
    id_str="home"                   # needs to match keyword you used in the interfaces file
    ssid="<home-ssid>"              # SSID either as an ASCII string with double quotation or as hex string
    mode=0                          # 0 = managed, 1 = ad-hoc, 2 = access point
    scan_ssid=0                     # = 1 do not broadcast SSID ; = 0 SSID is visible to scans
    proto=WPA RSN                   # list of supported protocals; WPA = WPA ; RSN = WPA2 (also WPA2 is alias for RSN)
    key_mgmt=WPA-PSK WPA-EAP        # list of authenticated key management protocols (WPA-PSK, WPA-EAP, ...)
    psk="<home-password>"           # pre-shared key used in WPA-PSK mode ; 8 to 63 character ASCII passphrase
    pairwise=CCMP                   # accepted pairwise (unicast) ciphers for WPA (CCMP, TKIP, ...)
    auth_alg=OPEN                   # authentication algorithms (OPEN, ShARED, LEAP, ...)
    priority=3                      # priority of selecting network (larger numbers are higher priority)
}

# jetpack wifi network settings
network={
    id_str="jetpack"                # needs to match keyword you used in the interfaces file
    ssid="<jetpack-ssid>"           # SSID either as an ASCII string with double quotation or as hex string
    mode=0                          # 0 = managed, 1 = ad-hoc, 2 = access point
    scan_ssid=0                     # = 1 do not broadcast SSID ; = 0 SSID is visible to scans
    proto=WPA RSN                   # list of supported protocals; WPA = WPA ; RSN = WPA2 (also WPA2 is alias for RSN)
    key_mgmt=WPA-PSK WPA-EAP        # list of authenticated key management protocols (WPA-PSK, WPA-EAP, ...)
    psk="<jetpack-password>"        # pre-shared key used in WPA-PSK mode ; 8 to 63 character ASCII passphrase
    pairwise=CCMP                   # accepted pairwise (unicast) ciphers for WPA (CCMP, TKIP, ...)
    auth_alg=OPEN                   # authentication algorithms (OPEN, ShARED, LEAP, ...)
    priority=5                      # priority of selecting network (larger numbers are higher priority)
}
```

### Step 4: Setup Hostname - DONE
If you want to change the hostname, do the following:

```bash
sudo sed -i 's/raspberrypi/berrygps/' /media/jeff/rootfs/etc/hosts
sudo sed -i 's/raspberrypi/berrygps/' /media/jeff/rootfs/etc/hostname
```

### Step 5: Enable SSH on Raspberry Pi - DONE
SSH is disabled by default in Raspberry Pi,
hence you’ll have to enable it when you turn on the Pi after a fresh installation of Raspbian.
SSH can be enabled by placing a file named `ssh`, without any extension,
onto the boot partition of the SD card.

```bash
# SSH can be enabled by placing a file named "ssh", without any extension,
# onto the boot partition of the SD card.
touch /media/jeff/boot/ssh
```

>**NOTE:** I'm not sure, but I believe this little trick
>only works on the first boot of the Raspberry Pi.

Now unmount the SD Card and move to the next step.

```bash
# unmount the sd card reader
sudo umount /dev/sdf1 /dev/sdf2
```

# Step 6: Finding Your Raspberry Pi IP Address - DONE
Next we'll power up the RPi Zero, but first,
lets check what IP address are being used on our WiFi network.
Place the SD-Card into the Raspberry Pi, power it up,
and login via ssh via WiFi or via Ethernet.

I will be run this Raspberry Pi headless,
and that can make login into them via `ssh` a challenge.
A typical secinario is you power up the device
and the interaction you have is this:

```bash
# attempting to log into a headless raspberry pi
$ ssh -X pi@berrygps
ssh: Could not resolve hostname berrygps: Temporary failure in name resolution
```

I'm quite sure DHCP has assigned an IP Address but DNS is failing to resolver the hostname `raspeberry`.
This will typically be resolved by DNS, but it never happens quick enough for me.
A simple trick to find your RPi is to `nmap` scan your network for open port 22,
the port supporting SSH, which must be open on the Raspberry Pi.

```bash
# scan for open port 22 on your network BEFORE powering up the rpi
$ nmap -T5 -n -p 22 --open 192.168.1.0/24 | grep "Nmap scan" | awk '{ print $5 }'
192.168.1.13
192.168.1.200
192.168.1.250

# scan for open port 22 on your network AFTER powering up the rpi
192.168.1.13
192.168.1.200
192.168.1.230
192.168.1.250
```

So the Raspberry Pi is amount this list of IP Addresses,
but I still have to decide which of the port-22-open devices is the RPi.

But there’s an even quicker way, that’s also more precise.
It turns out the Raspberry Pi Foundation actually has a range of MAC addresses all to themselves!
These ranges will have a prefix assigned, the [Organizationally Unique Identifiers (OUI)][76],
for the Ethernet or WiFi network interface on the Raspberry Pis.
The best resource to find the most current OUI assignments
is from the [MAC Address Block Large (MA-L) Public Listing at the IEEE][78].
A complete list of OUI assignments is compiled daily and is available [here][77].

According to this list there is a single OUI/MA-L assignment for the Raspberry Pi Foundation:

```
DC-A6-32   (hex)		Raspberry Pi Trading Ltd
				        Maurice Wilkes Building, Cowley Road
				        Cambridge    CB4 0DS
				        GB
```

But I also often use WiFi dongles from Edimax on my Raspberry Pis.
A search of the [OUI/MA-L assignment list][19] provides:

```
00-1F-1F   (hex)		Edimax Technology Co. Ltd.
00-50-FC                No. 278, Xinhu 1st Road
00-0E-2E                Taipei City  Neihu Dist  248
00-00-B4                TW
08-BE-AC
74-DA-38
80-1F-02

```

So `arp -a` can dump the candidate devices IP Addresses via this command:

```bash
# list of Edimax devices with open port 22 on your network
$ arp -a | grep -e 00:1f:1f -e 00:50:fc -e 00:0e:2e -e 00:00:b4 -e 08:be:ac -e 74:da:38 -e 80:1f:02

? (192.168.1.230) at 74:da:38:70:1c:08 [ether] on eth0
```

>**NOTE:** Sometimes the arp table has old cashed IP Addresses which are not live devices.
>See the article ["How to clear ARP cache on Linux or Unix"][79]
>to understand how to flush this cache.

So, we can now log into the Raspberry Pi via `ssh -X pi@berrygps` or `ssh -X pi@b192.168.1.230`.

### Step 7: Update Linux Packages - DONE
On the Raspberry Pi, update the Linux packages.

```bash
# commandline utility for applications upgrade
sudo apt-get -y update && sudo apt-get -y dist-upgrade

# clean up any packages no longer needed
sudo apt-get -y autoremove
```

### Step 8: Configure the Raspberry Pi
You could now run the `sudo raspi-config`
(see [raspi-config documentation][10] and [here][08])
This is an interactive script that allowing you to configured multiple devices settings.
Also, set the time zone and reboot.

```bash
# perfrom the raspi-config operations on the command-line normally done via UI tool
# raspi-config nonint do_hostname <hostname>   # modify the host name
#sudo raspi-config nonint do_ssh 0                   # enable ssh
sudo raspi-config nonint do_spi 0                   # SPI controller (/dev/spidev0.0 and /dev/spidev0.1) can be enabled
sudo raspi-config nonint do_i2c 0                   # enabling I2C bus /dev/i2c-1
sudo raspi-config nonint do_serial 0                # enable serial console and allows console cables to work
sudo raspi-config nonint do_onewire 0               # enable 1-wire
sudo raspi-config nonint do_camera 0                # enable camera
sudo raspi-config nonint do_expand_rootfs           # expand partition to use 100% of remaining space
sudo raspi-config nonint do_boot_behaviour B1       # require password to get console access

# set the time zone for your raspberry pi device
sudo timedatectl set-timezone "America/New_York"

# reboot to make sure all these commands take effect
sudo shutdown -r now
```

### Step 9: Updating Firmware for Raspberry Pi - DONE
After a successful upgrade and reboot,
use `hostnamectl` and `vcgencmd` if you wish to see your current Raspbian version
and firmware version.
See how below:

```bash
# check you current OS version
 $ hostnamectl
   Static hostname: berrygps
         Icon name: computer
        Machine ID: 6ee07b9e27044479a87a5be0b6c1e96b
           Boot ID: b4d390ca43fd42568b2fd02181cfdfc5
  Operating System: Raspbian GNU/Linux 10 (buster)
            Kernel: Linux 4.19.75+
      Architecture: arm

# check the firmware version
$ sudo /opt/vc/bin/vcgencmd version
Sep 24 2019 17:39:25
Copyright (c) 2012 Broadcom
version 6820edeee4ef3891b95fc01cf02a7abd7ca52f17 (clean) (release) (start_x)
```

In the case of the Raspberry Pi, you will want to also upgrade the firmware regularly.
[Raspbian][07] is the standard Linux operating system distribution for the RPi,
but it doesn't include firmware.
Never the less, tools for updating the firmware are included in the Raspbian distribution of Linux.

```bash
# install firmware update tool
sudo apt-get -y install rpi-update

# check for and install any required Raspberry Pi firmware upgrades
sudo BRANCH=next rpi-update

# if firmware is installed, reboot
sudo shutdown -r now
```

Return the tools `hostnamectl` and `vcgencmd` to see how your
kernel and firmware may have changed from the earlier step.

Once these tools have been installed,
periodically you can update the firmware via the commands below:

```bash
# periodically you can update the firmware via the command
sudo apt-get install rpi-update

# check for and install any required Raspberry Pi firmware upgrades
sudo BRANCH=next rpi-update

# if firmware is installed, reboot
sudo shutdown -r now
```

### Step 10: Development Package Installs - DONE
While the Raspberry Pi comes with a fairly robust set of Linux packages,
it could use some beefing up for most uses.
For example, while the distribution is likely to already have some Python packages installed,
execute the following to make sure you have all that is needed:

```bash
# package management tools
sudo apt-get -y install software-properties-common

# python 3 development libraries including TK and GTK GUI support
sudo apt-get -y install python3-dev python3-tk python-imaging-tk
sudo apt-get -y install libgtk-3-dev libboost-all-dev
sudo apt-get -y install build-essential cmake

# install pip
wget https://bootstrap.pypa.io/get-pip.py
sudo python3 get-pip.py
rm get-pip.py

# install virtual environment tools
sudo pip3 install virtualenv virtualenvwrapper

# install pyenv
curl -s https://raw.githubusercontent.com/pyenv/pyenv-installer/master/bin/pyenv-installer | bash

# general development tools
sudo apt-get -y install gnome-terminal jq markdown vim screen

# software version control tools
sudo apt-get -y install git git-lfs

# secure hash algorithms (SHA) tools, specifically SHA256
sudo apt-get -y install hashalot

# install some X Window utilities
sudo apt-get -y install x11-apps x11-xserver-utils xterm wmctrl

# general development tools
sudo apt-get -y install markdown vim vim-gtk libcanberra-gtk-module
sudo apt-get -y install microcom screen
sudo apt-get -y install build-essential i2c-tools libssl-dev

# so you can discover hosts via Multicast Domain Name System (mDNS)
sudo apt-get -y install avahi-daemon
```

### Step 11: Load Personal Tools - DONE
Now that all the Linux packages have been loaded,
time to install my personal tools on the device.

```bash
# setup your bash environment
rm ~/.bashrc ~/.bash_logout
git clone https://github.com/jeffskinnerbox/.bash.git ~/.bash
ln -s ~/.bash/inputrc ~/.inputrc
ln -s ~/.bash/bashrc ~/.bashrc
ln -s ~/.bash/bash_login ~/.bash_login
ln -s ~/.bash/bash_logout ~/.bash_logout
ln -s ~/.bash/bash_profile ~/.bash_profile
ln -s ~/.bash/dircolors.old ~/.dircolors

# source/load the changes into your profile
source ~/.bashrc

# setup your vim environment
git clone http://github.com/jeffskinnerbox/.vim.git ~/.vim
ln -s ~/.vim/vimrc ~/.vimrc
mkdir ~/.vim/backup
mkdir ~/.vim/tmp
cd ~/.vim
git submodule init
git submodule update
cd ~

# setup your x windows environment
git clone http://github.com/jeffskinnerbox/.X.git ~/.X
ln -s ~/.X/xbindkeysrc ~/.xbindkeysrc
ln -s ~/.X/Xresources ~/.Xresources
ln -s ~/.X/xsessionrc ~/.xsessionrc

# rebuilding $HOME/.Xauthority to avoid MIT magic cookie error
touch ~/.Xauthority
xauth generate :0 . trusted
xauth add ${HOST}:0 . `xxd -l 16 -p /dev/urandom`
```

### Step 12: Setup Python Development Environment - DONE
Now create a Python Virtual Environment to support the Python tools that will be used.

```bash
# create virtual environment - berrygps
$ mkvirtualenv berrygps -p python3
Already using interpreter /usr/bin/python3
Using base prefix '/usr'
New python executable in /home/pi/.virtualenvs/berrygps/bin/python3
Also creating executable in /home/pi/.virtualenvs/berrygps/bin/python
Installing setuptools, pip, wheel...
done.
virtualenvwrapper.user_scripts creating /home/pi/.virtualenvs/berrygps/bin/predeactivate
virtualenvwrapper.user_scripts creating /home/pi/.virtualenvs/berrygps/bin/postdeactivate
virtualenvwrapper.user_scripts creating /home/pi/.virtualenvs/berrygps/bin/preactivate
virtualenvwrapper.user_scripts creating /home/pi/.virtualenvs/berrygps/bin/postactivate
virtualenvwrapper.user_scripts creating /home/pi/.virtualenvs/berrygps/bin/get_env_details

# activate the virtual environment
workon berrygps

pip install gps

# exit/deactivate virtualenv
deactivate
```


----


# Setup for OzzMaker's BerryGPS

Sources:
    * [BerryGPS setup Guide for Raspberry PI][23]
    * [BerryGPS and BerryGPS-IMU Quick Start Guide][22]



I purchased the [BerryGPS-IMU v3][20],
which is designed to fit perfectly with the Raspberry Pi Zero,
but compatible with all other versions of the Raspberry Pi.
This location tracking board includes sensors for
GPS, Accelerometer, Gyroscope, Magnetometer (Compass), Barometric/Altitude, and Temperature.
The BerryGPS-IMU uses the same sensors found on the [BerryIMU][21].
This means that all of the guides and code used for the BerryIMU can also be used with the BerryGPS-IMU.
Read the post ["BerryGPS and BerryGPS-IMU Quick Start Guide"][22]
for a more complete description of the BerryGPS-IMU v3.

The OzzMaker products website list several useful postings concerning the BerryGPS-IMU v3 board"

* General
    * [BerryGPS and BerryGPS-IMU Quick Start Guide][22]
    * [BerryGPS setup Guide for Raspberry PI][23]
* GPS
    * [BerryGPS Data logger using a BerryGPS][29]
    * [Navigating with Navit on the Raspberry Pi][33]
    * [Use u-Center graphical interface to control GPS](http://ozzmaker.com/using-u-center-to-connect-to-a-raspberry-pi-with-an-attached-berrygps-imu-gsm/)
    * [Using python with a GPS receiver on a Raspberry Pi](http://ozzmaker.com/using-python-with-a-gps-receiver-on-a-raspberry-pi/)
    * [Real-time GPS tracking with a Raspberry Pi](http://ozzmaker.com/real-time-gps-tracking-with-a-raspberry-pi/)
    * [How to save GPS data to a file using Python](http://ozzmaker.com/how-to-save-gps-data-to-a-file-using-python/)
* IMU
    * [Guide to interfacing a Gyro and Accelerometer with a Raspberry Pi](http://ozzmaker.com/berryimu/)
    * [Guide to interfacing a Gyro and Accelerometer with a Raspberry Pi - Kalman Filter](http://ozzmaker.com/guide-interfacing-gyro-accelerometer-raspberry-pi-kalman-filter/)
    * [Create a Digital Compass with the Raspberry Pi – Part 1 – “The Basics”](http://ozzmaker.com/compass1/)
    * [Create a Digital Compass with the Raspberry Pi – Part 2 – “Tilt Compensation”](http://ozzmaker.com/compass2/)
    * [Create a Digital Compass with the Raspberry Pi – Part 3 – “Calibration”](http://ozzmaker.com/compass3/)
    * [Create a Digital Compass with the Raspberry Pi – Part 4- “Smartphone Replica”](http://ozzmaker.com/compass04/)
    * [Converting values from an Accelerometer to Gs – “ Proper Acceleration”](http://ozzmaker.com/accelerometer-to-g/)
    * [How to Create an Inclinometer using a Raspberry Pi and an IMU](http://ozzmaker.com/inclinometer-using-raspberry-pi-imu/)
    * [Raspberry Pi Digital Spirit Level]()

### Step 1: Physical Assembly of the BerryGPS-IMU - DONE
Consult the post ["BerryGPS and BerryGPS-IMU Quick Start Guide"][22]
to understand how to assemble the unit.

### Step 2: Disable Serial Console - DONE
BerryGPS uses the serial port assigned to console on the Raspberry Pi,
so we need to disable the console and make use of it its pins.
On RPi Zero, console is assign `/dev/ttyAMA0` and
`dev/serial0` is assigned as an alias to console.

```bash
# current tty assignment for console
$ ls -l /dev/serial0 /dev/ttyAMA0
lrwxrwxrwx 1 root root       7 Dec 27 15:11 /dev/serial0 -> ttyAMA0
crw--w---- 1 root tty  204, 64 Dec 27  2019 /dev/ttyAMA0

# serial console needs to be disabled and then the serial port enabled
# select 'interfacing options' -> Serial -> No -> Yes and then Yes to reboot
sudo raspi-config               # execute in interactive mode

# reboot the rpi
sudo shutdown -r now

# new assignment of console (tty1)
$ cat /boot/cmdline.txt
console=tty1 root=PARTUUID=6c586e13-02 rootfstype=ext4 elevator=deadline fsck.repair=yes rootwait
```

### Step 3: Quick Viewing of GPS Data - DONE
Now it time see if we got things working
by looking raw GPS data, [NMEA sentences][02], from device `/dev/serial0`.
NMEA sentences contain all the requered GPS data (e.g longatute, latitude, number of statilites, etc.).
There is are several ways to see this data:

```bash
# cat the data to stdout
cat /dev/serial0

# scroll the data on a terminal
screen /dev/serial0 9600,cs8

# or using the ttyAMA0 device
cat /dev/ttyAMA0
screen /dev/ttyAMA2 9600,cs8
```

Every second or two, any of the satellites picked up by the GPS chip puts out some information,
and that information is encoded in sentences, or what you see on each line.
Each sentence encodes specific pieces of information separated by commas,
which has a different meaning based on the first 5 (or so) characters.
The exact specification is proprietary,
but there is a [good online reference][02].

If your [GPS has a fix][03], you would also see the green LED flash on the BerryGPS
and the NMEA data will have almost all the comma delimited spaces filled in.
If you have no fix, then no green LED and most of the NMEA data is empty.
On first power up, it can take your GPS module 10 minutes to get a fix in some situations.

### Step X: Manually Parsing NMEA Sentences
The python script below accesses GPS data by connecting directly to the serial interface.
It filters on `$GPRMC` NMEA sentences and then splits the attributes into different variables.

```python
import serial

port = "/dev/serial0"

def parseGPS(data):
#    print "raw:", data #prints raw data
    if data[0:6] == "$GPRMC":
        sdata = data.split(",")
        if sdata[2] == 'V':
            print "no satellite data available"
            return
        print "---Parsing GPRMC---",
        time = sdata[1][0:2] + ":" + sdata[1][2:4] + ":" + sdata[1][4:6]
        lat = decode(sdata[3]) #latitude
        dirLat = sdata[4]      #latitude direction N/S
        lon = decode(sdata[5]) #longitute
        dirLon = sdata[6]      #longitude direction E/W
        speed = sdata[7]       #Speed in knots
        trCourse = sdata[8]    #True course
        date = sdata[9][0:2] + "/" + sdata[9][2:4] + "/" + sdata[9][4:6]#date

        print "time : %s, latitude : %s(%s), longitude : %s(%s), speed : %s, True Course : %s, Date : %s" %  (time,lat,dirLat,lon,dirLon,speed,trCourse,date)

def decode(coord):
    #Converts DDDMM.MMMMM > DD deg MM.MMMMM min
    x = coord.split(".")
    head = x[0]
    tail = x[1]
    deg = head[0:-2]
    min = head[-2:]
    return deg + " deg " + min + "." + tail + " min"

print "Receiving GPS data"
ser = serial.Serial(port, baudrate = 9600, timeout = 0.5)
while True:
   data = ser.readline()
   parseGPS(data)
```

Source:

* [Using python with a GPS receiver on a Raspberry Pi](https://ozzmaker.com/using-python-with-a-gps-receiver-on-a-raspberry-pi/)

### Step X: Using `pynmea2` to Parse NMEA Sentences
Here again, this python script accesses the GPS data by connecting directly to the serial interface.
It filters on `$GPGGA` NMEA sentences and then uses `pynmea2` to parse the data.
(`pynmea2` can be installed with: `pip install pynmea2`)

```python
import serial
import pynmea2

port = "/dev/serial0"

def parseGPS(str):
    if str.find('GGA') > 0:
        msg = pynmea2.parse(str)
        print "Timestamp: %s -- Lat: %s %s -- Lon: %s %s -- Altitude: %s %s -- Satellites: %s" % (msg.timestamp,msg.lat,msg.lat_dir,msg.lon,msg.lon_dir,msg.altitude,msg.altitude_units,msg.num_sats)

serialPort = serial.Serial(port, baudrate = 9600, timeout = 0.5)
while True:
    str = serialPort.readline()
    parseGPS(str)
```

Source:

* [Using python with a GPS receiver on a Raspberry Pi](https://ozzmaker.com/using-python-with-a-gps-receiver-on-a-raspberry-pi/)
* [Using PySerial, PyNMEA2, and Raspberry Pi to log NMEA output](https://fishandwhistle.net/post/2016/using-pyserial-pynmea2-and-raspberry-pi-to-log-nmea-output/)

### Step 4: Install gpsd Daemon - DONE
The Linux utility [`gpsd`][04] is a daemon that receives data from a GPS receiver,
acts as a layer between your applications and the actual GPS hardware,
parsing errors, and providing a more readable, well-defined interfaces to any GPS module.
`gspd` provides the NMEA data back to multiple applications such
[`gpsmon`][05], [`cgps`][06], and [gpsprof][09].

Be default, `gpsd` is configured to start at boot and run in the background as a daemon.
While a daemon service has its uses, it can get in our way.
Therefore, at this time, the daemon service will be turned off.
Also, we need to edit the `gpsd` config file so that `gpsd` uses the correct serial device.

```bash
# install, gpsd, gpsmon and cgps
sudo apt-get -y install gpsd-clients gpsd

# install gpsprof
sudo apt-get -y install python-gps gnuplot

# supporting libraries
sudo apt-get -y install pkg-config libcairo2-dev gcc python3-dev libgirepository1.0-dev
sudo pip3 install gobject PyGObject

# disable the gpsd systemd service
sudo systemctl stop gpsd.socket
sudo systemctl disable gpsd.socket

# check the status of the gpsd systemd service
$ sudo systemctl status gpsd.socket
● gpsd.socket - GPS (Global Positioning System) Daemon Sockets
   Loaded: loaded (/lib/systemd/system/gpsd.socket; disabled; vendor preset: enabled)
   Active: inactive (dead)
   Listen: /var/run/gpsd.sock (Stream)
           [::1]:2947 (Stream)
           127.0.0.1:2947 (Stream)

# updated gpsd configuration
sudo sed -i 's/DEVICES=\"\"/DEVICES=\"\/dev\/serial0\"/' /etc/default/gpsd

# reboot the rpi
sudo shutdown -r now
```

Should you ever want to enable the default `gpsd` systemd service,
do the following (but not now!):

```bash
# enable the default gpsd systemd daemon service
sudo systemctl enable gpsd.socket
sudo systemctl start gpsd.socket
```

### Step 5: Using the gpsd Daemon - DONE
You can also run the following command to manually start `gpsd`:

```bash
# manual start gpsd daemon
#   -F    create a control socket for device addition and removal commands
sudo gpsd /dev/serial0 -F /var/run/gpsd.sock

# to run gpsd in the foregorund (not as a daemon)
#   -N    don't daemonize; run in foreground. This switch is mainly useful for debugging
sudo gpsd -N /dev/serial0 -F /var/run/gpsd.sock

# to kill this daemon
sudo killall gpsd

# start gpsd daemon and allow socket connect to remote host
#   -G    allows you to connect from a non-localhost
sudo gpsd -G /dev/serial0 -F /var/run/gpsd.sock
```

The `-G` option allows you to connect from a non-localhost.
For example, via `telnet BlueRPi.local 2947`.
Not needed if you are connecting via terminal or `ssh`.

### Step 6: Viewing GPS Data - DONE
There are number of freely available tools which we can used to view meaningful information
from the GPS unit, like longitude, latitude and ground speed.
These tools where included in the install step above.
You will find moe information about
`xgps`, `xgpsspeed`, `cgps`, `lcdgps`, `gegps` via `man xgps`.

First, manually start the GPS deamon via `sudo gpsd /dev/serial0 -F /var/run/gpsd.sock`,
then try out the following commmands.

```bash
# cgps is a client resembling xgps, but without the pictorial satellite display running in serial terminal
cgps
cgps -s       #  surpress displaying the data coming from the daemon

# watches packets coming from a GPS and displays them along with diagnostic information
# -n forces gpsmon to request NMEA0183 packets instead of the raw datastream from gpsd
gpsmon -n

# collects fixes from gpsd and feeds them to a running instance of Google Earth for live location tracking
gegps
```

`gpsprof` performs accuracy, latency, and time drift profiling on a GPS.
It emits to standard output a GNUPLOT scatter graph.
The command below will take 100 samples from BerryGPS and display them in a graph
using `gnuplot`:

```bash
gpsprof | gnuplot -persist          # plot 100 data points
gpsprof -n 300 > gpsprof.plot       # dump 300 data points ready to be ploted via gnuplot
gpsprof -n 300 -d gpsprof.data      # dump 300 data points without gnuplot code
```

Some tools will require X Windows server,
which can be running on something other than the Raspberry Pi
(using the `-G` option):

```bash
# X displays current GPS position/time/velocity and the locations of accessible satellites
xgps

# speedometer that uses position information from the GPS
xgpsspeed
```

>**NOTE:** For `xgpx` and `xgpsspeed`,
>I had issues with Python and couldn't get these to work.

### Step 7: Piping GPS Data - DONE
When gpsd is running, you will not be able to see the raw NMEA data via `cat /dev/serial0`
as the serial device will show as busy.
To get around this, you can use `gpscat` and `gpspipe` to view this data while `gpsd` is running.

```bash
# this will give you output like 'sudo screen /dev/serial0 9600'
sudo gpscat -s 9600 /dev/serial0

# gpspipe is a tool to connect to gpsd and output the received sentences to stdout
#    -r = Output raw NMEA sentences
#    -R = causes super-raw (gps binary) data to be output
#    -d = Causes gpspipe to run as a daemon
#    -l = Causes gpspipe to sleep for ten seconds before attempting to connect to gpsd
#    -o = Output to file
gpspipe -r /dev/serial0
```


### Step X: gpxlogger
gpxlogger — Tool to connect to gpsd and generate a GPX file - https://www.mankier.com/1/gpxlogger

GPX, or GPS Exchange Format, is an XML schema designed as a common GPS data format for software applications. It can be used to describe waypoints, tracks, and routes. The format is open and can be used without the need to pay license fees.

GPX Viewer - Tracks, Routes & Waypoints - https://play.google.com/store/apps/details?id=com.vecturagames.android.app.gpxviewer&hl=en_US

GPS Visualizer - https://www.gpsvisualizer.com/


-----


# Setup fo Adafruit's Ultimate GPS
[!ultimate-gps](https://cdn-learn.adafruit.com/assets/assets/000/003/714/medium640/raspberry_pi_gps_pi_usbconnection2.jpg?1396801034)
I also purchased [Adafruit's Ultimate GPS][41] which uses the [MediaTek MTK3339 chipset][42].
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
Data is provided via a serial [NMEA 0183][46], 9600 baud (default) output.

The GPS module has a built in data-logging capability.
There is a microcontroller inside the module,
with some empty FLASH memory,
and the firmware allows sending commands to do internal logging to that FLASH.
You simply tell the microcontroller "Start Logging".
After that message is sent, the microcontroller can go to sleep
and does not need to wake up to talk to the GPS anymore to reduce power consumption.
The time, date, longitude, latitude, and height is logged every 15 seconds
and only when there is a satellite fix.
The internal FLASH can store about 16 hours of data.
It also will automatically append data so you don't have to worry
about losing data if power is lost.
With the current firmware, is not possible to change what is logged and how often.

Adafruit provides some excellent write-up on how to configure and use this device:

* [Adafruit Ultimate GPS](https://learn.adafruit.com/adafruit-ultimate-gps/overview)
* [Adafruit Ultimate GPS on the Raspberry Pi](https://learn.adafruit.com/adafruit-ultimate-gps-on-the-raspberry-pi?view=all)
* [Adafruit's GPS Library LOCUS](https://github.com/adafruit/Adafruit_GPS)

## External GPS Antenna
With the module, I also purchase an external [active GPS antenna][43] that draws about 10mA
and will give you an additional 28 dB of gain
(but it has a 5 meter cable so may not see this gain).
You'll also need a [console cable][44] to easily make use of this GPS module.

There is also a GNSS Multi-Band antenna, such as the [ANN-MB-00 GNSS multiband antenna][66].
A multiband antenna is unique from other GNSS/GPS antennas
in that it is designed to receive both the classic L1 GPS band
and the newly launched (started in 2005) L2 GPS band.

For information about NMEA sentence that cover antenna status - https://cdn-learn.adafruit.com/downloads/pdf/adafruit-ultimate-gps.pdf

### Step 1: GPS Module Pinouts - DONE
[Adafruit's tutorial][45] provides an excellent description of the GPS module pins
and how to connect the console cable and external antenna
can be found in the tutorial "[Adafruit Ultimate GPS on the Raspberry Pi][47]".

[!gps-module-pinout](https://cdn-learn.adafruit.com/assets/assets/000/003/713/medium640/raspberry_pi_UltimateGPS_bb.png?1396801027)

### Step 2: Setup Console Cable - DONE
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
If needed, [use the external antenna to get a GPS fix][54].
The module will automatically detect an external active antenna is attached and switch over to use it.

>**NOTE:** uFL connectors are small and delicate.
>The are not engineered for for repeated connections/disconnections.
>Once you attach a uFL adapter, it is best to just let remain on the module.

### Step 3: Installing the GPS Daemon (gpsd) - DONE
The Raspberry Pi is successfully receiving the serial data that the GPS module provides
but its very cryptic.
There is a daemon that properly parsing the raw GPS data called `gpsd`.
It acts as a layer between your applications and the actual GPS hardware,
parsing errors, and providing a more readable, well-defined interfaces to any GPS module.

At this point,
you can use the same procedure (Steps 4 onward) used for the OzzMaker BerryGPS device.

### Step X: Changing Baud Rate of GPS Module
* [How to change the baud rate and update rate of MTK GPS module](https://hobbyking.com/media/file/201626144X19082X53.pdf)
* [MediaTek MTK33X9 GPS Chipset Command Generator](https://forum.micropython.org/viewtopic.php?t=726)
* [MTK NMEA PROPRIETARY COMMAND](https://www.pitlab.com/autopitlot/doc/MTK_commands.pdf)
* [PMTK command packet](http://www.pvelectronics.co.uk/PA6B/PA6B_commands.pdf)

### Step X: Battery Backup
* https://learn.adafruit.com/adafruit-ultimate-gps/battery-backup

### Step X: Built In Logging
* https://learn.adafruit.com/adafruit-ultimate-gps/built-in-logging

### Step X: Using Raspberry Pi UART Instead of USB
* https://learn.adafruit.com/adafruit-ultimate-gps-on-the-raspberry-pi?view=all#using-uart-instead-of-usb


----


# GPS Data Logger and Mapping
The posts ["BerryGPS Data logger using a BerryGPS"][29]
and [Navigating with Navit on the Raspberry Pi][33]
explains how to log and map GPS data
from a BerryGPS-IMU and then how to plot this data onto [Google Maps][30] and other maps
(e.g. [OpenStreetMap][31], [National Maps][32], etc.).


# Using the Python GPS Library
With the `gpsd` process running,
execute the Python program below:

```python
import gps3 requests

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

# Real-Time GPS Tracking
* [Real-Time GPS Tracking](https://www.instructables.com/id/Real-Time-GPS-Tracking/)

# Using the Node.js GPS Library
* GPS.js is an extensible parser for NMEA sentences - https://www.npmjs.com/package/gps
* wrapper to start and stop gpsd from your program - https://www.npmjs.com/package/node-gpsd
* https://www.npmjs.com/browse/keyword/gps

# Other Tools
* http://www.visualgps.net/
* [7 of the Best Free Linux GPS Tools](http://www.linuxlinks.com/article/20110522052357647/GPSTools.html)



[01]:http://internetofthingsagenda.techtarget.com/definition/headless-system
[02]:http://www.gpsinformation.org/dale/nmea.htm
[03]:https://en.wikipedia.org/wiki/Time_to_first_fix
[04]:https://gpsd.gitlab.io/gpsd/index.html
[05]:https://gpsd.gitlab.io/gpsd/gpsmon.html
[06]:https://manpages.debian.org/jessie/gpsd-clients/cgps.1.en.html
[07]:http://www.raspbian.org/
[08]:https://raspberrypi.stackexchange.com/questions/28907/how-could-one-automate-the-raspbian-raspi-config-setup#47958
[09]:https://gpsd.gitlab.io/gpsd/gpsprof.html
[10]:http://elinux.org/RPi_raspi-config
[11]:https://www.raspberrypi.org/blog/raspbian-stretch/
[12]:https://www.raspberrypi.org/downloads/raspbian/
[13]:https://www.raspbian.org/
[14]:http://www.amazon.com/gp/product/B00GVRHON2?psc=1&redirect=true&ref_=oh_aui_detailpage_o00_s01
[15]:http://www.wirelesshack.org/best-micro-sd-card-for-the-raspberry-pi-model-2.html
[16]:https://www.raspberrypi.org/documentation/installation/installing-images/linux.md
[17]:https://www.bitpi.co/2015/02/11/how-to-change-raspberry-pis-swapfile-size-on-rasbian/
[18]:https://cdn-learn.adafruit.com/downloads/pdf/adafruits-raspberry-pi-lesson-5-using-a-console-cable.pdf
[19]:http://standards-oui.ieee.org/oui.txt
[20]:http://ozzmaker.com/product/berrygps-imu/
[21]:http://ozzmaker.com/product/berryimu-accelerometer-gyroscope-magnetometer-barometricaltitude-sensor/
[22]:http://ozzmaker.com/berrygps-berrygps-imu-quick-start-guide/
[23]:http://ozzmaker.com/berrygps-setup-guide-raspberry-pi/
[24]:http://www.jeffgeerling.com/blogs/jeff-geerling/raspberry-pi-microsd-card
[25]:http://jeffskinnerbox.me/posts/2016/Apr/27/howto-set-up-the-raspberry-pi-as-a-headless-device/
[26]:https://www.amazon.com/gp/product/B015GZOHKW
[27]:https://www.amazon.com/Edimax-EW-7811Un-150Mbps-Raspberry-Supports/dp/B003MTTJOY
[28]:https://www.raspberrypi.org/help/noobs-setup/
[29]:http://ozzmaker.com/gps-data-logger-using-berrygps/
[30]:https://cloud.google.com/maps-platform/
[31]:https://www.openstreetmap.org
[32]:https://www.usgs.gov/core-science-systems/national-geospatial-program/national-map
[33]:http://ozzmaker.com/navigating-navit-raspberry-pi/
[34]:https://www.gpsworld.com/what-exactly-is-gps-nmea-data/
[35]:https://techdifferences.com/difference-between-gps-and-dgps.html
[36]:https://racelogic.support/01VBOX_Automotive/01General_Information/Knowledge_Base/How_Does_DGPS_(Differential_GPS)_Work%3F
[37]:https://gisgeography.com/trilateration-triangulation-gps/
[38]:https://confluence.qps.nl/qinsy/latest/en/world-geodetic-system-1984-wgs84-182618391.html
[39]:https://gisgeography.com/geoid-mean-sea-level/
[40]:https://gisgeography.com/geodesy/
[41]:https://www.adafruit.com/product/746
[42]:https://cdn-shop.adafruit.com/datasheets/GlobalTop-FGPMMOPA6C-Datasheet-V0A-Preliminary.pdf
[43]:https://electronics.stackexchange.com/questions/130509/gps-antenna-when-is-an-active-antenna-really-necessary
[44]:https://www.adafruit.com/product/954
[45]:https://learn.adafruit.com/adafruit-ultimate-gps/pinouts
[46]:https://en.wikipedia.org/wiki/NMEA_0183
[47]:https://learn.adafruit.com/adafruit-ultimate-gps-on-the-raspberry-pi?view=all
[48]:http://aprs.gids.nl/nmea/
[49]:http://aprs.gids.nl/nmea/#rmc
[50]:http://aprs.gids.nl/nmea/#gga
[51]:http://aprs.gids.nl/nmea/#vtg
[52]:http://aprs.gids.nl/nmea/#gsa
[53]:http://aprs.gids.nl/nmea/#gsv
[54]:https://learn.adafruit.com/adafruit-ultimate-gps/external-antenna
[55]:https://www.nmea.org/
[56]:http://gpsworld.com/what-exactly-is-gps-nmea-data/
[57]:https://www.sparkfun.com/datasheets/GPS/NMEA%20Reference%20Manual1.pdf
[58]:https://gisgeography.com/ellipsoid-oblate-spheroid-earth/
[59]:http://aprs.gids.nl/nmea/#zda
[60]:http://www.gpsinformation.org/dale/nmea.htm#nmea
[61]:https://www.glonass-iac.ru/en/
[62]:https://www.esa.int/Our_Activities/Navigation/Galileo/What_is_Galileo
[63]:http://www.beidou.gov.cn/
[64]:https://gnss-sdr.org/
[65]:http://geostar-navi.com/files/docs/geos3/geos_nmea_protocol_v3_0_eng.pdf
[66]:https://www.sparkfun.com/products/15192
[67]:http://support.virtual-surveyor.com/en/support/solutions/articles/1000261351-what-is-wgs84-
[68]:https://learn.sparkfun.com/tutorials/lsm9ds1-breakout-hookup-guide/all
[69]:https://learn.adafruit.com/adafruit-bmp280-barometric-pressure-plus-temperature-sensor-breakout/overview
[70]:https://cdn.sparkfun.com/assets/0/b/0/f/7/u-blox8-M8_ReceiverDescrProtSpec__UBX-13003221__Public.pdf
[71]:https://gisgeography.com/horizontal-datum/
[72]:https://gisgeography.com/vertical-datum/
[73]:
[74]:
[75]:
[76]:https://en.wikipedia.org/wiki/Organizationally_unique_identifier
[77]:http://standards.ieee.org/develop/regauth/oui/public.html
[78]:https://standards.ieee.org/products-services/regauth/oui/index.html
[79]:https://coderseye.com/how-to-clear-arp-cache-on-linux-or-unix/

