
* [Ten Things You Need to Know About Indoor Positioning](http://www.directionsmag.com/entry/10-things-you-need-to-know-about-indoor-positioning/324602)
* [Position Tracking for Passive UHF RFID Tags with the Aid of a Scanned Array](http://link.springer.com/article/10.1007/s10776-013-0210-z)
* [Unwired Lab Location API](https://unwiredlabs.com/)
* [WIPP: Wi-Fi Compass for Indoor Passive Positioning with Decimeter Accuracy](http://www.mdpi.com/2076-3417/6/4/108)
* [Pozyx](https://www.pozyx.io/)
* [Indoor Navigation SDK, Push Notification SDK](http://meridianapps.com/sdks/)
* [The Study on Using Passive RFID Tags for Indoor Positioning](http://cdn.intechopen.com/pdfs/13209.pdf)
* [WiFi Location Services](http://hackaday.com/2015/09/22/hackaday-prize-best-product-wifi-location-services/)
* [decaWave DWM1000 - track an object to within 10cm indoors](http://hackaday.com/2015/06/17/new-part-day-indoor-location-systems/)
* [Find The Source: WiFi Triangulation](http://hackaday.com/2016/05/29/find-the-source-wifi-trangulation/)
* [WiFi Trilateration With Three or More Points](https://appelsiini.net/2017/trilateration-with-n-points/)
* [Tracking of devices through passive listening of WiFi](http://developers-club.com/posts/252831/)
* [access_points](https://github.com/kootenpv/access_points)
* [WiFinder](https://github.com/mpescimoro/wi-finder)
* [whereami](https://github.com/kootenpv/whereami)
    * [wherearehue](https://github.com/DeastinY/wherearehue)
* [Public Wi-Fi database. Geo-Location API. Public API of position by Wi-Fi (MAC, BSSID)](https://www.mylnikov.org/archives/1170)
* [Mozilla Location Service](https://location.services.mozilla.com/)
* [OpenCellid - The world's largest Open Database of Cell Towers](https://opencellid.org/)
* [Estimote Indoor Location](https://itunes.apple.com/us/app/estimote-indoor-location/id963704810?mt=8&ign-mpt=uo%3D4)
* [Estimote LTE Beacons hit the market](https://appdevelopermagazine.com/estimote-lte-beacons-hit-the-market/)

# Framework for Internal Navigation and Discovery (FIND)
* [Framework for Internal Navigation and Discovery (FIND)](https://www.internalpositioning.com/)
* [FIND FAQ](https://www.internalpositioning.com/faq/)
* [Offical version writen in Go - FIND GitHub](https://github.com/schollz/find3)
* [Python version - FIND GitHub](https://github.com/kootenpv/find)
* [find-lf - extension of FIND, the Framework for Internal Navigation and Discovery](https://github.com/schollz/find-lf)

# WiFi and Cell ID Positioning
Wi-Fi “sniffing” is a great way to do rough location processing.
A sensor reads the MAC ID and signal strength of WiFi Access Points nearby,
sends that data to the cloud.
A WiFi MAC ID database,
like [Google](https://developers.google.com/maps/documentation/geolocation/intro#wifi_access_point_object),
[Wigle](https://wigle.net/),
[SkyHook](http://www.skyhookwireless.com/submit-access-point),
or a cell site ID with [Polet](https://www.polte.com/),
[OpenCellid](https://opencellid.org/),
[Mozilla Location Service (MLS)](https://location.services.mozilla.com/)
calculates location.

Traditionally, getting WiFi information required a fairly expensive Wi-Fi module,
Semtech has released the LR1110.
This chip includes a GPS processor, WiFi scanner, and a Lora radio

* [Combain](https://combain.com/)
* [How Google--and everyone else--gets Wi-Fi location data](http://www.zdnet.com/article/how-google-and-everyone-else-gets-wi-fi-location-data/)
* [OpenCellid](https://opencellid.org/) - The world's largest Open Database of Cell Towers from [Unwired Labs](http://unwiredlabs.com/)
* [Location using ESP8266 | Geolocation Without GPS Module](https://electronicsforu.com/electronics-projects/gps-geolocation-using-esp8266-projects)
* A consolidated location and information of wireless networks world-wide to a central database: [Wireless Geographic Logging Engine (WiGLE)](https://en.wikipedia.org/wiki/WiGLE)

# What3Words
With what3words, the entire planet into three-meter squares and assigned each a unique,
three-word identifier, like famous.splice.writers or blocks.evenly.breed,
giving a precise address to the billions of people worldwide who don't have one.

For example,
103 Sheridan Way SW, Leesburg VA = distorts.ultrasound.snails
and the end of my driveway is pillows.intelligent.robot

* [Ted Talk](https://www.ted.com/talks/chris_sheldrick_a_precise_three_word_address_for_every_place_on_earth)
* [What3Words](https://what3words.com/developers/)

# Skyhook Precision Location
Use Skyhook Precision Location on a Raspberry Pi device running Raspbian Linux.
The device will continuously record its location, even when disconnected from the internet or not.

* [Skyhook Wireless Developer Site](http://www.skyhookwireless.com/developers)

# IndoorAtlas
There are many different types of systems available on the market today
including WiFi, Radio and Beacons.
IndoorAtlas provides a unique cloud platform that runs a disruptive
geomagnetic positioning in its core to accurately pinpoint a location inside a building.

* [IndoorAtlas - Indoor positioning systems (IPS)](https://www.indooratlas.com/)

# Visual Inertial Camera / Visual Inertial Odometry
* [Optor Visual Inertial Camera](https://www.seeedstudio.com/Optor-Cam2pc-Visual-Inertial-SLAM-p-2873.html)

# SubPos
The SubPos WiFi Positoning Standard is a dataless positioning system
that doesn't require expensive licencing, specialised hardware, laborious area profiling
or reliance on data connectivity
(a connection to a location database or cellphone coverage is not required).
Its compatible with existing WiFi access points and receivers.
It works independently of, or alongside GPS/WiFi Positioning Systems (WPS)/Indoor Positioning Systems (IPS)
as an additional positioning data source by exploiting hardware commonly available.
All a user wishing to determine their location underground/indoors will require is a WiFi enabled device.

* https://www.subpos.org/?q=details
* https://github.com/subpos
* https://www.youtube.com/watch?v=m3yo97_1XFI
* [Beacon-Stuffing: Wi-Fi Without Associations](https://www.microsoft.com/en-us/research/publication/beacon-stuffing-wi-fi-without-associations/)
* [The Location-based WiFi Services system: A Complete Open Source Solution for Wi-Fi Beacon Stuffing Based Location-based Services](https://github.com/lows/lows)

# Proximi.io
[proximi.io Proximity Platfrom](https://proximi.io/)
Get access to all of your favourite positioning technologies through a single API: IndoorAtlas, iBeacon, Eddystone beacons, WiFi, GPS and cellular positioning. Use just one – or all of them in combination for positioning and geofencing. All technologies function with the same geofencing logic both indoors and ooutdoors.  Proximi.io is truly technology-agnostic, and committed to supporting all of the major positioning technologies. In other words, you’ll be safe with us – no matter what technologies you want to use today or tomorrow.

# RFID Asset Tracking
* [Your Own RFID Gateway Written in Node.js](http://www.spiria.com/en/blog/embedded-systems-and-m2m/your-own-rfid-gateway-written-nodejs)
* [RFID-based Asset Tracking with Node.js and MongoDB](http://www.spiria.com/en/blog/embedded-systems-and-m2m/rfid-based-asset-tracking-nodejs-and-mongodb)

# Positioning via TV Signals

# Global Positioning System (GPS)
* [Hackaday Dictionary: The Global Positioning System (GPS)](http://hackaday.com/2015/11/12/hackaday-dictionary-the-global-positioning-system-gps/)

# WiFiSLAM
* [Simultaneous Location and Mapping (SLAM)](https://en.wikipedia.org/wiki/Simultaneous_localization_and_mapping)
* [Using Wi-Fi for Navigating the Great Indoors](https://www.technologyreview.com/s/424213/using-wi-fi-for-navigating-the-great-indoors/)
* [SLAM for Dummies](http://ocw.mit.edu/courses/aeronautics-and-astronautics/16-412j-cognitive-robotics-spring-2005/projects/1aslam_blas_repo.pdf)
* [OpenSLAM](https://openslam.org/)
* [Tutorials: SLAM algorithms](http://www.mrpt.org/List_of_SLAM_algorithms)
* [GeoMeetup - WiFiSLAM - Modern Innovations in Indoor Positioning (Joseph Huang)](https://www.youtube.com/watch?v=OGdvjvla1Tc)
* [WiFiSLAM](https://angel.co/wifislam)
* [Apple Acquires Indoor Location Company WifiSLAM](http://blogs.wsj.com/digits/2013/03/23/apple-acquires-indoor-location-company-wifislam/)

# Future Standards
* [Wi-Fi Location Promises Precision](https://www.networkcomputing.com/wireless-infrastructure/wi-fi-location-promises-precision/161511044?_mc=NL_NWC_EDT_NWC_converations_20170228&cid=NL_NWC_EDT_NWC_converations_20170228&elqTrackId=0399ee69f7f8445994d04edf3aca163c&elq=a62a6a0594ae43c08183d4430c188267&elqaid=76994&elqat=1&elqCampaignId=25693)

# Other
* [a monostatic active sonar using a piezo element and microphone](http://hackaday.com/2015/01/26/sonar-built-from-piezo-and-microphone/)
* [Combination of Phone Sensors and Neural Networks Could Allow Hackers to Steal PINs](https://www.allaboutcircuits.com/news/how-phone-sensors-and-neural-networks-team-up-to-help-hackers-steal-pins/?utm_source=All+About+Circuits+Members&utm_campaign=4c598b9402-EMAIL_CAMPAIGN_2017_05_10&utm_medium=email&utm_term=0_2565529c4b-4c598b9402-270523833/)
