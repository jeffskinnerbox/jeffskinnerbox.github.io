Image for summary - https://i1.wp.com/henrysbench.capnfatz.com/wp-content/uploads/2016/02/HC-SR501.jpg

[!hr-sr501](https://www.squirrel-labs.net/media/catalog/product/cache/1/image/650x/040ec09b1e35df139433887a97daa66f/i/r/irmodule_3.jpg)
The [HC-SR501 Passive Infrared (PIR) motion sensor][01]
will detect infrared changes, which can often be interpreted as motion.
PIR sensors allow you to sense motion,
almost always used to detect whether a human has moved in or out of the sensors range.
For many basic projects or products that need to detect when
a person has left or entered the area, or has approached, PIR sensors are great.
They are low power and low cost, pretty rugged, have a wide lens range, and are easy to interface with.
PIRs won't tell you how many people are around or how close they are to the sensor,
the lens is often fixed to a certain sweep and distance.

The HC-SR501 uses the [RE200B][03] [pyroelectric][04] passive infrared sensor
and the [BISS0001 IC][02] to control how motion is detected.
The module features adjustable sensitivity that allows for a
motion detection range from 3 meters to 7 meter over a 120 degree area.
The module also includes time delay adjustments and trigger selection
that allow for fine tuning within your application.
It runs on 5V-12V power,
and a digital signal output is 3.3V high/low.

The device requires nearly a minute to initialize,
and this period, it often will output false detection signals.
Circuit logic or application code needs to take this initialization period into consideration.

The output of this device will go LOW (or Off)
for approximately 3 seconds AFTER the time delay completes.
In other words, ALL motion detection is blocked during this three second period.
So when in the single trigger mode and your time delay is set 5 seconds,
when the PIR detects motion and set the output high for 5 seconds,
after five seconds the PIR will sets its output low for about 3 seconds.
During the three seconds, the PIR will not detect motion.
After three seconds, the PIR will detect motion again and detected motion will once again set the output high.

Some good sites on basic design and operational information for the sensor,
a long with wiring diagrams, code examples, and project ideas are:

* [Henry's Bench: Arduino HC-SR501 Motion Sensor Tutorial](http://henrysbench.capnfatz.com/henrys-bench/arduino-sensors-and-input/arduino-hc-sr501-motion-sensor-tutorial/)
* [Instructables: PIR Motion Sensor Tutorial](http://www.instructables.com/id/PIR-Motion-Sensor-Tutorial/?ALLSTEPS)
* [Adafruit: PIR Motion Sensor](https://learn.adafruit.com/pir-passive-infrared-proximity-motion-sensor/overview)

https://www.adafruit.com/products/189
https://learn.adafruit.com/pir-passive-infrared-proximity-motion-sensor/
http://www.instructables.com/id/PIR-Motion-Sensor-Tutorial/
https://www.mysensors.org/build/motion
http://blog.roman-mueller.ch/index.php/2013/01/26/hc-sr501-passive-infrared-sensor-with-arduino/

* [ESP8266_PIRv2 - ESP8266 Huzzah Deep Sleep Mode PIR Motion Alarm using IFTTT](https://github.com/rgrokett/ESP8266_PIRv2)
* [Passive infrared (PIR) sensor tutorial](https://hackaday.com/2009/08/21/passive-infrared-pir-sensor-tutorial/)




[01]:http://www.datasheet-pdf.download/hc-sr501-pir-motion-sensor/
[02]:http://www.ladyada.net/media/sensors/BISS0001.pdf
[03]:https://cdn-learn.adafruit.com/assets/assets/000/010/134/original/RE200B.pdf
[04]:https://en.wikipedia.org/wiki/Pyroelectricity
[05]:
[06]:
[07]:
[08]:
[09]:
[00]:
[11]:
[12]:
