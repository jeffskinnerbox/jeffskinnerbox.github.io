
* [How the NSA is tracking people right now](http://apps.washingtonpost.com/g/page/national/how-the-nsa-is-tracking-people-right-now/634/)
* [NSA tracking cellphone locations worldwide, Snowden documents show](https://www.washingtonpost.com/world/national-security/nsa-tracking-cellphone-locations-worldwide-snowden-documents-show/2013/12/04/5492873a-5cf2-11e3-bc56-c6ca94801fac_story.html?utm_term=.d86bafc0ff8b)

# Creating APIs
* [How to set-up a powerful API with Nodejs, GraphQL, MongoDB, Hapi, and Swagger](https://medium.freecodecamp.org/how-to-setup-a-powerful-api-with-nodejs-graphql-mongodb-hapi-and-swagger-e251ac189649)

# Trilateration / Triangulartion
* [Trilateration](https://en.wikipedia.org/wiki/Trilateration)
* [How GPS works? Trilateration explained](https://www.youtube.com/watch?v=4O3ZVHVFhes)
* [How GPS Really Works (technical)](https://www.youtube.com/watch?v=RBLJO6JQ1aI)
* [The Geometry of Relativity and why your GPS works](https://www.youtube.com/watch?v=YnG2ee0WZt4)

# Google's Map APIs
* [Google Maps Platform](https://cloud.google.com/maps-platform/)
* [The Google Maps Geolocation API](https://developers.google.com/maps/documentation/geolocation/intro)
* [Client Libraries for Google Maps Web Services](https://developers.google.com/maps/web-services/client-library)

# MapQuest's Map APIs
* [MapQuest Developer Portal](https://developer.mapquest.com/)
* [MapQuest Products](https://business.mapquest.com/products/)

# Other APIs
* [IP Geolocation API](https://ipgeolocationapi.com/)

# Google Indoor Maps
With indoor Google Maps, visitors can spend less time searching for building directories and more time discovering new points of interest. Simply zoom in and out of a building and go floor to floor with indoor maps.

* https://www.google.co.in/maps/about/partners/indoormaps/
* Use indoor maps to view floor plans - https://support.google.com/maps/answer/2803784?hl=en&visit_id=1-636169070112701367-4240871743&rd=1
* [MapsIndoors](https://www.mapspeople.com)
* [Google Unveils The Cartographer, Its Indoor Mapping Backpack](https://techcrunch.com/2014/09/04/google-unveils-the-cartographer-its-indoor-mapping-backpack/)

# Using the APIs
* [Find your Wi-Fi device using the Google Geolocation API](https://www.hackster.io/middleca/find-your-wi-fi-device-using-the-google-geolocation-api-2bdd59)
* [Cellular Geolocation using your cell tower and Google!](https://www.hackster.io/middleca/cellular-geolocation-using-your-cell-tower-and-google-b83534?utm_source=Hackster.io+newsletter&utm_campaign=3dab21478a-2015_4_17_Top_projects4_16_2015&utm_medium=email&utm_term=0_6ff81e3e5b-3dab21478a-140225889&mc_cid=3dab21478a&mc_eid=9036129d51)
* [Public Wi-Fi database. Geo-Location API. Public API of position by Wi-Fi (MAC, BSSID)](https://www.mylnikov.org/archives/1170)

# Telemetry over Opportunistic WiFi Links
* [How DNS Tunneling Works](http://inside-out.xyz/technology/how-dns-tunneling-works.html)
* [DNS Tunneling: Getting The Data Out Over Other Peoples’ WiFi](http://hackaday.com/2016/08/07/getting-the-data-out-over-other-peoples-wifi/)
* [TOWL - Telemetry over Opportunistic WiFi Links](http://www.phreakmonkey.com/2016/08/towl-telemetry-over-opportunistic-wifi.html)
* [Nameserver Transfer Protocol (NSTX)](http://thomer.com/howtos/nstx.html)
* [iodine](http://code.kryo.se/iodine/)
* [dnscat2 – DNS Tunnel Tool](http://www.darknet.org.uk/2016/01/dnscat2-dns-tunnel-tool/)
* [Tunneling Data and Commands Over DNS to Bypass Firewalls](https://zeltser.com/c2-dns-tunneling/)
* [PowerShell DNS Command & Control with dnscat2-powershell](http://www.blackhillsinfosec.com/?p=5578)

# Skyhook Precision Location
Use Skyhook Precision Location on a Raspberry Pi device running Raspbian Linux.
The device will continuously record its location, even when disconnected from the internet or not.

* [Skyhook Wireless Developer Site](http://www.skyhookwireless.com/developers)

# IP Address Location
* [ipinfo.io IP lookup API](http://ipinfo.io/developers/getting-started)
* [ipinfo.io client library](http://ipinfo.io/developers/client-libraries)


```bash
curl ipinfo.io
```

# Alternative Location Encoding

## What3Words
With what3words, the entire planet into three-meter squares and assigned each a unique,
three-word identifier, like famous.splice.writers or blocks.evenly.breed,
giving a precise address to the billions of people worldwide who don't have one.

For example,
103 Sheridan Way SW, Leesburg VA = distorts.ultrasound.snails
and the end of my driveway is pillows.intelligent.robot

* [Ted Talk](https://www.ted.com/talks/chris_sheldrick_a_precise_three_word_address_for_every_place_on_earth)
* [What3Words](https://what3words.com/developers/)

## Geohasing
Geohashes are a way of encoding lat/lon points as strings. The original intention was to have a URL-friendly way of specifying geolocations, but geohashes have turned out to be a useful way of indexing geo-points and geo-shapes in databases.
Geohashes offer properties like arbitrary precision, similar prefixes for nearby positions, and the possibility of gradually removing characters from the end of the code to reduce its size (and gradually lose precision).
In other words, the longer the geohash string, the more accurate it is. If two geohashes share a prefix— and gcpuuz—then it implies that they are near each other. The longer the shared prefix, the closer they are.

* [Geohash Intro](http://www.bigfastblog.com/geohash-intro)
* [geohash.org](http://geohash.org/)
* [An Introduction to Geospatial Data in Redis Through Urban Forestry](https://www.youtube.com/watch?v=R4MrP9fnA_Q)
* [worldwide map of geohashes](http://mapzen.github.io/leaflet-spatial-prefix-tree/)
