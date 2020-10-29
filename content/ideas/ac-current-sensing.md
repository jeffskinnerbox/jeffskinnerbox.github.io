
* [Building A Safe ESP32 Home Energy Monitor](https://hackaday.com/2019/07/27/building-a-safe-esp32-home-energy-monitor/)
* [Non Intrusive Load Monitoring with Shelly 3EM](https://blog.squix.org/2020/07/non-intrusive-load-monitoring-with-shelly-3em.html)
* [A Complete Raspberry Pi Power Monitoring System](https://hackaday.com/2020/07/24/a-complete-raspberry-pi-power-monitoring-system/)

* [#321 7 Sensors tested: Measuring Current with Microcontrollers (Arduino, ESP32, ESP8266)](https://www.youtube.com/watch?v=cG8moaufmQs&t=75s)




# Current Sensing
There are three common techniques for measuring current, typically using an oscilloscope.
The first is using a resistor (sometimes called a current shunt) in series with the current being measured.
The second is to use a current transformer.
The third is to use a current probe.
Since all three methods require that the current being measured pass through the measurement sensor they are all somewhat invasive.

[Current Sensing Theory][10]

## Oscilloscope Current Probe
* [Understanding, Selecting, and Effectively Using Current Probes](https://www.digikey.com/en/articles/understanding-selecting-effectively-using-current-probes)
* [Micsig CP2100A Best Affordable Current Probe](https://www.youtube.com/watch?v=8zW4j0euN8A)

## Hall Effect Current Sensing
A [Hall effect sensor][03] is a device that is used to measure the magnitude of a magnetic field.
Its output voltage is directly proportional to the magnetic field strength through it.
Hall effect sensors are used for proximity sensing, positioning, speed detection,
and current sensing applications.

We are interested here in the Hall effect current sensor which be used for AC or DC current measurement.

## Current Sensing Transformer
A [current transformer][01] is a type of transformer that is used to reduce
or multiply an alternating current (AC).
A current transformer is designed to maintain an accurate ratio between the currents in its primary
and secondary circuits over a defined range.
They are often used as [instrument transformers][02] for metering of high voltage or high current circuits,
providing a safely isolated secondary control circuity from the high voltages or currents.
Current transformers are designed to present negligible load to the supply being measured
and have an accurate current ratio and phase relationship to enable accurate secondary connected metering.
Current transformers typically consist of a silicon steel ring core
with the primary conductor inducing a magnetic field in the core as the primary current is passed through the ring.
The current transformers ring core is wound with many turns of copper wire forming the secondary.

If the current transformer (CT) sensor is a "current output" type,
such as the YHDC by Beijing YaoHuadechang Electronic Co., Ltd which I use in this project,
the current signal needs to be converted to a voltage signal with a burden resistor.
If it is a voltage output CT you can skip this step and leave out the burden resistor,
as the burden resistor is built into the CT.

## Split Core Current Transformer
A [split-core current transformer][01] is a current transformer with
either have a two-part core or a core with a removable section.
This allows the transformer to be placed around a conductor without having to disconnect or sever it.
So a Split Core Current Transformer (aka current transformer) that is a non-invasive AC current sensor,
such that it can be clamped around the supply line of an electrical load (aka primary)
to tell you how much current is passing through it.
It does this by acting as an inductor and responding to the magnetic field
around a current-carrying conductor (aka secondary).
By reading the amount of current being produced by the secondary wire wound around the transformer core,
you can calculate how much current is passing through the primary conductor.

# Safety
The secondary of a current transformer should not be disconnected from its burden while current is in the primary, as the secondary will attempt to continue driving current into an effective infinite impedance up to its insulation break-down voltage and thus compromise operator safety. For certain current transformers, this voltage may reach several kilovolts and may cause arcing. Exceeding the secondary voltage may also degrade the accuracy of the transformer or destroy it. Energizing a current transformer with an open circuit secondary is equivalent to energizing a voltage transformer (normal type) with a short circuit secondary. In the first case the secondary tries to produce an infinite voltage and in the second case the secondary tries to produce an infinite current. Both scenarios can be dangerous and damage the transformer.

# Solution
>**WARNING:** To connect a "current output" type CT sensor to an Arduino or any MCU,
>the output signal from the CT sensor needs to be conditioned
>so it meets the input requirements of the MCU analog inputs,
>i.e. a positive voltage between 0V and the ADC reference voltage.
>See "[CT Sensors - Interfacing with an Arduino][08]" on how this can be done
>and a [report on the properties of the YHDC current transformer][09].

The [Gravity Analog AC Current Sensor (20A)][04]
can sense AC line currents up to 20A and products a proportional
analog output designed to be compatible with 3V3/5V micro-controller.
This solution has two primary components:

1. A split core current transformer rated at 20A.
This is used to measure the line current being drawn by the AC line load.
Specifically, its a [ZIYUN (20A MAX) Split Core Current Transformer][06].
2. A Hall effect current sensor is used to measure the smaller (but proportional to the AC line)
current from the split core current transformer secondary.
Its electrically equivalent [Gravity: Analog 20A Current Sensor][05],
the difference being the 3.5mm headphone jack input.

The split core current transformer is connected with the Hall effect current sensor via
1 meter wire with a [TRS (Tip-Ring-Sleeve) connector][07]  (aka audio jack).
This combination gives you excellent safety separation form the main line current of your load.
Also the Gravity: Analog 20A Current Sensor provide you with an internal burden resistor,
saving you the steps of designing and setting up this additional circuitry.

# Example Setup
* [Using a Split Core Current Transformer](https://www.youtube.com/watch?v=-3DRaMcHf5w)
* https://wiki.dfrobot.com/Gravity_Analog_AC_Current_Sensor__SKU_SEN0211_

# Example Code
* https://wiki.dfrobot.com/Gravity_Analog_AC_Current_Sensor__SKU_SEN0211_
* https://learn.sparkfun.com/tutorials/environmental-monitoring-with-the-tessel-2



-----



For $25, I purpurchased from Amazon the [Gravity: Analog AC Current Sensor (10A)][11].
This package include a non-invasive AC current sensor ([YHDC SCT013-010 current transformer, 10A max][13])
and a signal conversion module ([DFROBOT 10A Analog AC Current Sensor, version 1.0][14])
You'll find technical discription of the use of the current sensor and
signal conversion module on the [DFROBOT website][12].

The signal conversion module provides:
* additional electrical isolation

https://learn.openenergymonitor.org/electricity-monitoring/ct-sensors/introduction



-----


# Data Converters
TI Precision Labs: Training & Videos for

ADC noise - [Introduction to noise in ADC systems](https://training.ti.com/ti-precision-labs-introduction-to-adc-noise)
DAC calibration - [DACs: Precision DAC Calibration](https://training.ti.com/ti-precision-labs-dacs-precision-dac-calibration)
DAC digitalfeedthrough - [DACs: Digital Feedthrough](https://training.ti.com/ti-precision-labs-dacs-digital-feedthrough)
Digital communication basics - [SPI Communication Basics](https://training.ti.com/ti-precision-labs-adcs-spi-serial)
Error sources - [Statistics Behind Error Analysis of ADC System](https://training.ti.com/ti-precision-labs-adcs-statistics-behind-error-analysis)



[01]:https://en.wikipedia.org/wiki/Current_transformer
[02]:https://en.wikipedia.org/wiki/Instrument_transformer
[03]:https://en.wikipedia.org/wiki/Hall_effect_sensor
[04]:https://www.dfrobot.com/product-1486.html
[05]:https://www.dfrobot.com/product-1570.html
[06]:https://www.amazon.com/ZIYUN-Transformer-Principle-electricity-consumption/dp/B01MTTL6EZ/
[07]:https://missionengineering.com/what-is-a-trs-cable/
[08]:https://learn.openenergymonitor.org/electricity-monitoring/ct-sensors/interface-with-arduino
[09]:https://learn.openenergymonitor.org/electricity-monitoring/ct-sensors/yhdc-sct-013-000-ct-sensor-report
[10]:https://www.nktechnologies.com/engineering-resources/current-sensing-theory/
[11]:https://www.amazon.com/gp/product/B07Y8GK8MG/ref=ppx_yo_dt_b_asin_title_o00_s00
[12]:https://wiki.dfrobot.com/Gravity_Analog_AC_Current_Sensor__SKU_SEN0211_
[13]:http://en.yhdc.com/product/SCT013-401.html
[14]:https://www.dfrobot.com/product-1919.html
[15]:
[16]:
[17]:
[18]:
[19]:
[20]:
