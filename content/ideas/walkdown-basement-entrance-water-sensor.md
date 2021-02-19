
I have a walk down basement stair well that can flood
if I make sure the drain is clean and cleared of leaves.
I want to build a sensor to detect water accumulation
(not just wetness but the water rise to a point where it could rise above the door sill).
It needs to be self-sufficient (aka off of mains power) make it challege to power.
I'll need a battery and a solar panel to power the station,
which means adding at least a regulator and charge controller to your build.
I can provide power saving by making periodic measurements between multi-minute deep-sleep cycles.
We'll also need to removing the power from the sensors
when the microcontroller is asleep to avoid very small but impactful currents that will flow.


* [Solar Powered WiFi Weather Station V1.0: 19 Steps](https://www.instructables.com/id/Solar-Powered-WiFi-Weather-Station/)
* [Solar Wifi Weather Station (v2.0)](https://translate.google.com/translate?sl=auto&tl=en&js=y&prev=_t&hl=en&ie=UTF-8&u=https%3A%2F%2Fwww.danilolarizza.com%2Fstazione-meteo-solare-wifi-v2-0%2F&edit-text=&act=url)
* [Improved Outdoor Solar Harvester Now Handles All The Parts](https://hackaday.com/2019/11/19/improved-outdoor-solar-harvester-now-handles-all-the-parts/)

* [Low-cost Drift Buoy Plies The Atlantic For Nearly A Year](https://hackaday.com/2017/04/28/low-cost-drift-buoy-plies-the-atlantic-for-nearly-a-year/)
* [Project Wilson](https://projectwilson2020.wixsite.com/mysite/)

* [ESP32 Technical Tutorials: Watchdog Processing](https://www.youtube.com/watch?v=C2xF3O6qkbg)
* [Device Power Management in IoT](https://dzone.com/articles/device-power-management-in-iot)

* [Weather Station Is A Tutorial in Low Power Design](https://hackaday.com/2018/11/04/weather-station-is-a-tutorial-in-low-power-design/)

* [Adafruit INA260 High or Low Side Voltage, Current, Power Sensor](https://www.adafruit.com/product/4226)

* [AAA Powered LoRa Mailbox Sensor Goes The Distance](https://hackaday.com/2020/02/15/aaa-powered-lora-mailbox-sensor-goes-the-distance/)

* [ESP32 Secrets: Interrupts, and Deep-Sleep under the Hood](https://www.youtube.com/watch?feature=youtu.be&v=CJhWlfkf-5M&app=desktop)
* [Aggressively Low Power with the ESP8266](https://www.youtube.com/watch?v=I3lJWcRSlUA)
* [ESP8266 Low Power Solutions](https://www.espressif.com/sites/default/files/9b-esp8266-low_power_solutions_en_0.pdf)
* [One ESP8266, One Battery, One Year… And Counting](https://hackaday.com/2020/01/15/one-esp8266-one-battery-one-year-and-counting/)
* [How Low Can An ESP32 Go?](https://hackaday.com/2020/01/07/how-low-can-an-esp32-go/)
* [Low-Power ESP32 Boards](https://blog.voneicken.com/2018/lp-wifi-esp32-boards/)
* [ESP32 Soil Monitors Tap Into Ultra-Low Power Mode](https://hackaday.com/2021/01/14/esp32-soil-monitors-tap-into-ultra-low-power-mode/)
* [ESP32 Low Power Device Design – Part 1](https://blog.squix.org/2020/04/esp32-door-sensor-part-1.html)
* [A Deep Dive Into Low Power WiFi Microcontrollers](https://hackaday.com/2018/12/17/a-deep-dive-into-low-power-wifi-microcontrollers/)
* [Deep Sleep & Other Power Modes (ESP32 + Arduino Series)](https://www.youtube.com/watch?v=dyvpRYfWjkY&feature=youtu.be)
* [ESP32 Deep Sleep with Arduino IDE and Wake Up Sources](https://randomnerdtutorials.com/esp32-deep-sleep-arduino-ide-wake-up-sources/)
* [ESP32 Deep Sleep Tutorial](https://www.instructables.com/ESP32-Deep-Sleep-Tutorial/)
* [ESP32 Trail Camera Goes the Distance on AA Batteries](https://hackaday.com/2020/05/18/esp32-trail-camera-goes-the-distance-on-aa-batteries/)
* [Datalogger Uses ESP32 and ESP8266 Low Power Modes](https://hackaday.com/2017/09/24/datalogger-uses-esp32-and-esp8266-low-power-modes/)



# Solar Power
* [PiJuice Zero](https://www.crowdsupply.com/pi-supply/pijuice-zero)

# Solar Irradiance ... Got Enough?
* [Is Solar Right For You? Find Out!](https://hackaday.com/2019/09/07/is-solar-right-for-you-find-out/)
* [Dave Young -- Scrounging, Sipping, And Seeing Power](https://hackaday.com/2020/02/03/the-cult-of-really-low-power-circuits-scrounging-sipping-and-seeing-power/)
* [The Cult Of Really Low-Power Circuits: Scrounging, Sipping, And Seeing Power](https://hackaday.com/2020/02/03/the-cult-of-really-low-power-circuits-scrounging-sipping-and-seeing-power/)

* [3W Solar Panel 138X160](https://www.seeedstudio.com/3W-Solar-Panel-138X160.html)
* [LiPo Rider Pro](https://www.seeedstudio.com/LiPo-Rider-Pro.html)
* [Solar harvesting into supercapacitors](https://www.tindie.com/products/jaspersikken/solar-harvesting-into-supercapacitors/)
* [LiFePO4wered/Solar1](https://www.tindie.com/products/xorbit/lifepo4weredsolar1/)
* [Solar Pi Platter](https://www.tindie.com/products/globoy/solar-pi-platter/)
* [makerPower Solar](https://www.crowdsupply.com/danjuliodesigns/makerpower-solar)
* [Let The Solar Free](https://hackaday.com/2020/10/24/let-the-solar-free/)

# Solar Powered: Pro & Con
* [Is Solar Right For You? Find Out!](https://hackaday.com/2019/09/07/is-solar-right-for-you-find-out/)
* [The Dark Side Of Solar Power](https://hackaday.com/2020/12/02/the-dark-side-of-solar-power/#more-429117)


# Implementing Power Management
Usually, we can model an device power consumption using three different areas:
microcontroller, radio operations, sensors and actuators.
The easiest way to comtrol power consumption by an application using
Arduino, ESP8266, and other compatible devices is implementing the code in the `loop()` method.
For example, when we have to acquire data from a sensor at specific time intervals,
we simply add the `delay(..)` method,
specifying how long the device should wait before starting again and repeat the same tasks.
This approach isn’t the best one when we consider the power management aspect.
There are different ways we can use to achieve a better result.
for example, an [ESP8266 device has four different modes to “sleep” or save the battery][01]:

* **No Sleep -** This is the most inefficient way to use this device. It is always on.
* **Modem Sleep -** This mode is enabled only when the ESP8266 is connected to WiFi.
In this mode, the ESP8266 turns off the WiFi module between two DTIM Beacon interval.
The ESP8266 turns on again the WiFi module before the next Beacon.
Sleep mode is used when it is necessary to keep the CPU on.
* **Light Sleep -** This is mode is very similar to the Modem-sleep mode but in this mode,
ESP8266 suspends the CPU and turns off the clock.
This mode is more efficient than the previous mode.
In Light-sleep mode, the ESP8266 should be woken up using a GPIO pin.
* **Deep-Sleep -** In this mode, everything is turned off except the RTC (Real Time Clock),
so that the ESP8266 can be turned on periodically.
This is the most the most efficient mode.
The deep-sleep mode can be used in scenarios where the device should send data at specific intervals.

## ATtiny13 Sensor Reader
uses an ATtiny13 to actually read the sensor values. The chip doesn’t run continuously, its watchdog is set at 1 Hz, ensuring that the device is woken up often enough so that it has time to power up the sensor

* [The Right Tools For The Job](https://hackaday.com/2021/02/06/the-right-tools-for-the-job/)
* [Old Gas Meter Gets Smart With The ESP8266](https://hackaday.com/2021/01/31/old-gas-meter-gets-smart-with-the-esp8266/)
* [ATtiny Hacks](https://hackaday.com/category/attiny-hacks/)
* [ESP32 TRAIL CAMERA GOES THE DISTANCE ON AA BATTERIES](https://hackaday.com/2020/05/18/esp32-trail-camera-goes-the-distance-on-aa-batteries/)

## ESP32 Ultra-Low Power Mode
* [ESP32 Soil Monitors Tap Into Ultra-Low Power Mode](https://hackaday.com/2021/01/14/esp32-soil-monitors-tap-into-ultra-low-power-mode/)

## Burden Voltage
In-circuit current measurement requires that the circuit-under-test be opened
and the measurement instrument leads placed in series.
Ideally, the test instrument would appear to the circuit as a dead short.
The reality is that there are always some small, but potentially significant,
resistance from switches, fuses and the meter leads.
The burden voltage is the voltage drop that occurs across the instrument as a result of this additional impedance.

Burden voltage is the voltage drop caused by current flowing through a current measuring device.
A large burden voltage can affect the circuit being measured, corrupting the measurement.

* http://zone.ni.com/reference/en-XX/help/370384V-01/dmm/burden_voltage/


# Amperes vs Power vs Energy
Power consumption measured in watts (usually in milliwatt, mW)
is the correct term for low power applications
but all too often the current consumption, measured in amperes (usually milliamperes, mA),
is what is specificed instead.
As the power is just the operating voltage multiplied by the current,
it is trivial to calculate power for fixed voltage operations
but often voltage changes widely over time and loading conditions.

So more relavent might be the energy consumption, measured in Joules (usually in micro joules, µJ),
that determines how much energy is actually drained from the battery to complete a specific task.
The energy consumption will be the integral of the power consumption over the time needed to perform the operation.
Again, for static signals this is a simple multiplication of power consumption and the time
but with varying signals this will demand more complex analysis.

Where power consumption is most relevant is when using a current-constrained power source,
such as a Lithium-ion coin cell battery.
Batteries like a coin-cell can only source about a few mA current peaks without getting damaged.
By attempting to draw a higher peak, you risk reducing the capacity of the battery permanently,
potentially impacting the output voltage too.
Peak power consumption will not be an issue for applications where there is enough current to support the peak.

* [Power consumption explained](https://blog.nordicsemi.com/getconnected/power-consumption-explained)
* [How to optimize energy efficiency in smart devices](https://blog.nordicsemi.com/getconnected/how-to-optimize-energy-efficiency-in-smart-devices)
* [The Importance of Average Power Consumption to Battery Life](https://blog.nordicsemi.com/getconnected/the-importance-of-average-power-consumption-to-battery-life)
* [Selecting the best lithium primary batteries for your LoRaWAN node](https://www.thethingsnetwork.org/article/selecting-the-best-lithium-primary-batteries-for-your-lorawan-node)

## Measurment Tools for Ultra-Low-Power
µCurrent Meter - https://www.adafruit.com/product/882
CurrentRanger - https://lowpowerlab.com/shop/product/152
USB Isolator - https://www.adafruit.com/product/2107

* [#245 Deep-Sleep Current: Which is better? µCurrent or CurrentRanger?](https://www.youtube.com/watch?v=HmXfyLyN38c&feature=youtu.be)
* [TvE’s Blog - adventure in low power](https://blog.voneicken.com/)
* [uCurrent Videos](https://www.youtube.com/results?search_query=uCurrent)

## Lock-in Amplifiers
* [Basic Fundamentals of Lock-In Amplifiers](https://www.allaboutcircuits.com/technical-articles/basic-fundamentals-of-lock-in-amplifiers/)
* [Understanding Types of Lock-In Amplifiers and Related Noise Sources](https://www.allaboutcircuits.com/technical-articles/understanding-types-lock-in-amplifiers-noise-sources/)



# PLA Waterproofing
* [Truck Bed Liners Improve 3D Prints](https://hackaday.com/2021/02/14/truck-bed-liners-improve-3d-prints/)

# Water Detection
* [Photoelectric Water / Liquid Level Sensor For Arduino](https://www.dfrobot.com/product-1470.html)
* [Low Power Water Level Sensor for LoRaWAN/The Things Network](https://www.hackster.io/Amedee/low-power-water-level-sensor-for-lorawan-the-things-network-96c877)
* [Water detection system](https://www.hackster.io/gusgonnet/water-detection-system-227b08?ref=list&ref_id=3061&offset=2)
* [How to Protect Your House From Water Leaks—Without the Internet of Things](http://spectrum.ieee.org/at-work/education/how-to-protect-your-house-from-water-leakswithout-the-internet-of-things)
* [ESP8266 Water Alarm](http://benlo.com/esp8266/esp8266WaterAlarm.html)


* [Flood Buzz Water Leak Detector - Set of 6](http://www.brookstone.com/pd/flood-buzz-water-leak-detector---set-of-6/745263p.html?bkeid=compare%7Cmercent%7Cgooglebaseads%7Csearch&gclid=Cj0KEQjwoM63BRDK_bf4_MeV3ZEBEiQAuQWqkUzwfq761WYUNx0aoD4_tHDvs13ASGm71N77GMQAtOIaAtoW8P8HAQ&adpos=1o5&device=c&creative=97619010084&network=g)
* [Re-Useable Water Leak Alarm](http://www.homedepot.com/p/Re-Useable-Water-Leak-Alarm-RWD21/204116885?MERCH=REC-_-SearchPLPHorizontal1_rr-_-NA-_-204116885-_-N)
* [Battery-Operated Water Alarm](http://www.homedepot.com/p/Basement-Watchdog-Battery-Operated-Water-Alarm-BWD-HWA/100038838)
* [Flood Fault Circuit Interrupter Could Save Lives](https://hackaday.com/2018/05/16/flood-fault-circuit-interrupter-could-save-lives/)

* [Detecting Water With And Without Headaches](https://hackaday.com/2016/12/15/detecting-water-with-and-without-headaches/)

# Detecting Low Battery Voltages
* [Adding a Battery Gauge to a Project with Zero Parts](https://hackaday.com/2014/11/08/adding-a-battery-gauge-to-a-project-with-zero-parts/)

# Distance Sensor
It has a range of 28 cm to 750 cm with a **read resolution of 1mm**
(precision isn't specified, but its probably about 5-10 mm).

This sensor has a 'blind' zone distance of 0 to 28 cm,
that means it can't accurately tell when something is less than that distance away.
it's best used when you know that the object you're sensing is at least 30 cm from the sensor!

* [Large Ultrasonic (Sonar) Sensor with Horn and UART Output](https://www.adafruit.com/product/4664)



[01]:https://www.espressif.com/sites/default/files/9b-esp8266-low_power_solutions_en_0.pdf
[02]:
[03]:
[04]:
[05]:
[06]:
[07]:
[08]:
[09]:
[10]:
