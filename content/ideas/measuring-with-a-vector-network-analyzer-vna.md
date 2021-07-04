
* [Smith Chart Basics + VNA Paperclip Test](https://www.youtube.com/watch?v=lUkPjqOoJQU)


* [NanoVNA SAA2 Version 2 Vector Network Analyzer - Ham Radio Antenna Analyzer](https://www.youtube.com/watch?v=4pAuEQl4uoM)
* [NanoVNA comparison measuring a duplexer - NanoVNA-H4 and SAA-2N](https://www.youtube.com/watch?v=GipCVEsiqXc)
* loads of VNA videos from W2AEW - https://www.youtube.com/user/w2aew/search?query=vna

* [So. You Bought a VNA. Now What?](https://hackaday.com/2020/04/23/so-you-bought-a-vna-now-what/)
* [Getting Started with the NanoVNA -part 1](https://hexandflex.com/2019/08/31/getting-started-with-the-nanovna-part-1/)
* [Getting Started with the NanoVNA -part 2](https://hexandflex.com/2019/09/08/getting-started-with-the-nanovna-part-2/)
* [Getting Started with the NanoVNA -Part 3 – PC Software](https://hexandflex.com/2019/09/15/getting-started-with-the-nanovna-part-3-pc-software/)


A Vector Network Analyzer (VNA) generates a signal and measures the amplitude and phase
of the signal reflected from the device under test (DUT).
It can not only measure resistance, but also the capacitance and induactance of the DUT.

I purchased the [AURSINC NanoVNA SAA-2N V2.2][02] on Amazon for $130.
It's ports have [N-type connectors][03] and comes with N-type calibration kit,
N-type extension cables, and a carrying case.
This device can be controlled by PC via VNA-QT software.
I also bought a [SMA to N-Conector Adapter Kit][04] and
a [SMA VNA Calibration Kit][05].

Unlike some of the original NanoVNAs,
the SAA-2N/NanoVNA_V2.2 does not load the initial calibration data at startup,
and does not automatically interpolate the calibration data after the user changes the frequency.
The user must recalibrate or call back the calibration data after each startup and frequency change.

It main advantages over earlier NanoVNAs is that it can measure 150KHz to 3GHz (twice the frequency range),
can support 201 sweep points on the display / 1024 sweep points on the USB output (twice the data points),
and has a 4 inch display (nearly twice the size display),
and comes in a metal case.

>**NOTE:** DO NOT hook-upa a VNA to any line or connection with an active signal or powered circuit.
>VNA measurements are not done with active devices and you risk burning out the NanoVNA circuits.



------



# Background
When working with radio frequencies,
it’s relatively easy to measure amplitudes,
but it can be challenging to measure phase and impedance,
especially across a wide frequency range.
If you working with electronics at low frequencies,
a good DMM or oscilloscope your best friend.
If your an RF engineer,
a Vector Network Analyser (VNA) is the test equipment you need to make the amplitude, phase, and impedance
measurments you require.
A VNA is designed to inject a known frequency and amplitude source signal into a RF port
and measure the relative amplitude and phase of this signal when received at one or more other (or same) port.

## RF Network Analysis
Within RF network analysis, you provide a stimulus for the network and then monitors the response.
In this way the operation and performance can be seen and assessed for its suitability.
There are various types of instrument which can be used for RF networtk analysis.
These types of RF network analyzer are all able to measure the parameters of RF components and devices but in different ways:

* **Scalar network analyzer (SNA):** The scalar network analyzer, SNA is a form of RF network analyzer that only measures the amplitude properties of the device under test - i.e. its scalar properties. In view of this it is the simpler of the various types of analyser.
* **Vector network analyzer (VNA):** The VNA network analyzer is a more useful form of RF network analyzer than the SNA as it is able to measure more parameters about the device under test. Not only does the it measure the amplitude response, but it also looks at the phase as well. As a result VNA network analyzer may also be called a gain-phase meter or an Automatic Network Analyzer.
* **Large Signal Network Analyzer (LSNA):** The large signal network analyzer, LSNA is a highly specialised for of RF network analyser that is able to investigate the characteristics of devices under large signal conditions. It is able to look at the harmonics and non-linearities of a network under these conditions, providing a full analysis of its operation. A previous version of the Large Signal Network Analyser, LSNA was known as the Microwave Transition Analyzer, MTA.

Network analyzers commonly measure S–parameters but there are other network parameter sets such as
Y-parameters, Z-parameters, and H-parameters
T-parameters or ABCD-parameters

* Scattering parameters or S-parameters

## Transmission Lines

Network Theory
* [Electrical Engineering Circuit Analysis](https://www.youtube.com/playlist?list=PLX2gX-ftPVXWv1eWntPcZtztrmwYBiBQY)
* [Network Theory](https://www.youtube.com/watch?v=NEhH6C7Fzw4&list=PLBlnK6fEyqRgLR-hMp7wem-bdVN1iEhsh&index=1)

Electromagnetism
* [Electrostatics](https://www.youtube.com/playlist?list=PLULkq8AIoZ7yrBBCcz7g7NNZeUf6Fwtz8)
* [Magnetostatics](https://www.youtube.com/playlist?list=PLULkq8AIoZ7zDqmU3ccLU_T_u3xg65t25)
Electromagnetic Waves
* [EM Waves](https://www.youtube.com/playlist?list=PLULkq8AIoZ7yv-F-diG-LzhSzRDOtBaCK)
Transmission Lines
* [Time Domain Transmission Lines](https://www.youtube.com/playlist?list=PLULkq8AIoZ7zDTvbaWW9RvXR8Ngnpe0s8)
* [Time Harmonic Transmission Lines](https://www.youtube.com/playlist?list=PLULkq8AIoZ7z_TKgSR-yPWZAd5An72lQR)
Microwave Engineering
* [Microwave Circuits and Systems](https://www.youtube.com/watch?v=RPCy2nLYDoI&list=PLrs8ZY6UVFwe3w1RiVeLUlI25nLbHd_uh)
* [Satellite Communications](https://www.youtube.com/playlist?list=PLrs8ZY6UVFwcfCqGAUlRcrKvYZnBMigJ-)
Antennas
* [Introduction to Antennas](https://www.antenna-theory.com/)
* [Antenna Design](https://www.youtube.com/watch?v=GVYEVhZ-BaE&list=RDQMdftGPmaMoTI&start_radio=1)
* [Wireless Without Batteries](https://www.youtube.com/watch?v=Ce3lFCzTQD4&list=PLULkq8AIoZ7xpPM9bGRDUr7dkhEk5eTwT)


* [AT&T Archives: Similiarities of Wave Behavior](https://www.youtube.com/watch?v=DovunOxlY1k)
* [Tektronix - Transmission Lines](https://www.youtube.com/watch?v=I9m2w4DgeVk)

# Complex Impedance
# S Parameters
* [Understanding S Parameters](https://www.youtube.com/watch?v=-Pi0UbErHTY)
* [Radio frequency networks are characterized using S (scattering) parameters](https://www.youtube.com/watch?v=-Pi0UbErHTY)
# Voltage Standing Wave Ratio (VSWR)
* [Transmission Line Terminations for Digital and RF signals - Intro/Tutorial](https://www.youtube.com/watch?v=g_jxh0Qe_FY)
* [What is VSWR: Voltage Standing Wave Ratio](https://www.youtube.com/watch?v=BSa051lWB_c)
* [Visualizing RF Standing Waves on Transmission Lines](https://www.youtube.com/watch?v=M1PgCOTDjvI)
* [Understanding VSWR and Return Loss](Understanding VSWR and Return Loss)
* [How not to damage your NanoVNA when measuring SWR](https://www.youtube.com/watch?v=totwu4IbavE)

# Directional Coupler
* [Directional Coupler Basics & how to sweep SWR of an antenna | Return Loss | VSWR](https://www.youtube.com/watch?v=iBK9ZIx9YaY)
* [How a Directional Coupler in an SWR meter works](https://www.youtube.com/watch?v=byF1FLdbUiA)



------



## RF Network Analyzers vs. Spectrum Analyzers
While there are similarities between RF network analyzers and spectrum analyzers,
there major differences, especially in the types of measurements that are made.
A spectrum analyzer is intended for analysing the nature of signals that are fed into RF Networks.
Spectrum analyzers are normally used to measure the characteristics of a signal rather than a device.
Spectrum analyzers can be used for testing networks such as filters.
To achieve this they need tracking generator. When used in this way, spectrum analyzers can be used for scalar component testing (magnitude versus frequency, but no phase measurements). With spectrum analyzers, it is easy to get a trace on the display, but interpreting the results can be much more difficult than with a network analyzer.

A network analyzer, on the other hand generates a signal and uses this to analyze a network or device.
RF Network analyzers are used to measure components, devices, circuits, and sub-assemblies.
It will display amplitude and often phase information (frequency or power sweeps) and normally in a ratio format. An RF network analyzer looks for a known signal, i.e. a known frequency, at the output of the device under test, since it is a stimulus response system.
The key element of the vector network analyzer, VNA, is that it can measure both amplitude and phase
measurement that includes phase as well as amplitude enables far more to be discovered about the device under test as phase is a critical element in network analysis. This is because a complete characterization of devices and networks involves measurement of phase as well as magnitude.
Only with a knowledge of phase and magnitude from a VNA can circuit models be developed that will enable complete simulation to be undertaken. This will enable matching circuits to be designed based on conjugate matching techniques.

## Vector Network Analyzer (VNA): Concept of Operation
When power enters a port of an RF network,
some power enters the network, but dependent upon the impedance match,
some of the power is reflected back to the source.
The vector network analyzer utilises the concept of measuring the transmitted and
reflected waves of a band of frequencies, as a signal passes through a device under test.
This enables the characteristics of a device to be determined.
If both transmitted and reflected signals are used to characterise the input,
and also the output, then the device can be fully characterised.
This can form a key part of any design or test for an RF circuit.

These are some of the key parameters that need to be closely examined when
selecting the right RF network analyzer for any applications

* **Frequency Range:** This is the main specification. A network analyzer’s frequency range defines the minimum and maximum frequencies it can measure.
When determine the frequency range required,
remeber that it will be necessary to measure the network performance at not only he fundamental frequency,
but also harmonics to see how the network will respond at these frequencies. Accordingly it is normally recommended that the VNA network analyzer top frequency should be around two to five times maximum operational frequency.
* **Dynamic Range:** The VNA dynamic range defines the range of power over which the RF network analyzer will work.
This can be important where there is a large variation between the maximum and minimum power levels that may be involved in a device under test. This VNA specification should be at least 6 dB better than the maximum attenuation anticipated within the device under test.
* **Trace Noise:** Trace noise is an important RF network analyzer specification if the test instrument is to be used for applications like measuring filter ripple performance. It can be a key factor in the accuracy of some measurements.
The VNA trace noise specification details that amount of noise present on a measurement. It is typically measured in milli-dB (0.001 dB).
* **Number of Test Ports:** A network analyzer can have two, four, or more test ports.
Dependent upon the types of devices that will need to be measured, but many devices only require two ports.
* **Measurement Speed:** This is the time required to perform measurements across a range of frequencies.
As measurements require the vector network analyzer to sweep over a range of frequencies,
taking measurements of with signals entering the device under test from the ports, tests can take an appreciable amount of time.

Sources:

* [Back to Basics: What is a VNA / Vector Network Analyzer](https://www.youtube.com/watch?v=Sb3q8f0NBZc)
* [What is a Vector Network Analyzer, VNA: the basics](https://www.electronics-notes.com/articles/test-methods/rf-vector-network-analyzer-vna/what-is-a-vna.php)
* [Vector Network Analyzer, VNA Specifications](https://www.electronics-notes.com/articles/test-methods/rf-vector-network-analyzer-vna/vna-specifications.php)
* [How to calibrate a Vector Network Analyzer, VNA](https://www.electronics-notes.com/articles/test-methods/rf-vector-network-analyzer-vna/how-to-calibrate-vna.php)

# Types of Measurements
from - https://www.youtube.com/watch?v=o1eLK4EMpEQ&t=301s
Measure antennas, duplexers, diplexers, filters, inductors, capacitors, amplifiers, splitters, baluns, chockes, phase networks, attenuators, etc.

* [Test & Measurement Fundamentals](https://www.youtube.com/watch?v=-Pi0UbErHTY&list=PLKxVoO5jUTlvsVtDcqrVn0ybqBVlLj2z8)
* [NANOVNA](https://www.youtube.com/playlist?list=PLXDK0MeyK4ZhPjgg6xkBzt6OVtc5leUgA)

## Reflection Measurements
Single port measurements

VSWR
Reflection Coefficient, S11, S22
Return Loss
Input Impedance
Feedline Length
Distance to Fault

## Transmission Measurements
Two port measurements

Filter Shape (gain & frequency response)
Loos in feedline
Gain/Loss
Delay in DUT
S21, S12
Transmission Coefficient
Insertion Phase / Group Delay




Reviews
* [Which NanoVNA Should I buy? - TheSmokinApe](https://www.youtube.com/watch?v=xNNtM_mUAqc)






# What is a VNA?
* [Back to Basics: What is a VNA / Vector Network Analyzer](https://www.youtube.com/watch?v=Sb3q8f0NBZc)

# NanoVNA V2 Vector Network Analyzer
* [How to properly use a NanoVNA V2 Vector Network Analyzer & Smith Chart (Tutorial)]()







# Vector Network Analyzer (VNA)
Vector Network Analyzers are used to test component specifications
and verify network designs to make sure systems and their components work properly together.

* [Learning About VNAs](https://hackaday.com/2020/06/11/learning-about-vnas/)
* [Back to Basics: What is a VNA / Vector Network Analyzer](https://www.youtube.com/watch?v=Sb3q8f0NBZc)


* [DIY Scalar Network Analyzer](https://hackaday.com/2019/12/25/diy-scalar-network-analyzer/)
* [Scalar Network Analyzer: SNA](https://www.electronics-notes.com/articles/test-methods/rf-vector-network-analyzer-vna/scalar-network-analyzer-sna.php)

* [So. You Bought A VNA. Now What?](https://hackaday.com/2020/04/23/so-you-bought-a-vna-now-what/)
* [Test Antenna Signal Pattern on the Cheap](https://imgur.com/gallery/5zWhpTA)
* [NanoVNA Is A $50 Vector Network Analyzer](https://hackaday.com/2019/08/11/nanovna-is-a-50-vector-network-analyzer/)
* [NanoVNA Tests Antenna Pattern](https://hackaday.com/2020/01/11/nanovna-tests-antenna-pattern/)
* [NanoVNA V2 Case](https://hackaday.io/project/176512-nanovna-v2-case)
* [#329: Presentation recording: Intro to the VNA and NanoVNA for BayCon 2021](https://www.youtube.com/watch?v=o1eLK4EMpEQ)
* [NanoVNA Videos](https://www.youtube.com/user/g4nsj/search?query=nanovna)

* [NanoVNA Is A $50 Vector Network Analyzer](https://hackaday.com/2019/08/11/nanovna-is-a-50-vector-network-analyzer/)
* [NanoVNA Tests Antenna Pattern](https://hackaday.com/2020/01/11/nanovna-tests-antenna-pattern/)
* [NanoVNA V2 Case](https://hackaday.io/project/176512-nanovna-v2-case)

* [#188 Antenna Tutorial incl. cheap DIY Antenna Tester (LoRa, ESP32)](https://www.youtube.com/watch?v=J3PBL9oLPX8)
* [How to build performing antennas for LoRa, WiFi, 433MHz, Airplanes etc.(NanoVNA, MMANA-GAL)](https://www.youtube.com/watch?v=6cVYsHCLKq8)
* [How to properly use a NanoVNA V2 Vector Network Analyzer (Tutorial)](https://www.youtube.com/watch?v=_pjcEKQY_Tk)
* [Why 50 Ohms?](https://www.youtube.com/results?search_query=why+50+ohms)

## Vector Network Analyzer (VNA)
Vector Network Analyzers are used to test component specifications
and verify design simulations to make sure systems and their components work properly together.

* [Learning About VNAs](https://hackaday.com/2020/06/11/learning-about-vnas/)
* [#329: Presentation recording: Intro to the VNA and NanoVNA for BayCon 2021](https://www.youtube.com/watch?v=o1eLK4EMpEQ)
* [Back to Basics: What is a VNA / Vector Network Analyzer](https://www.youtube.com/watch?v=Sb3q8f0NBZc)
* [DIY Scalar Network Analyzer](https://hackaday.com/2019/12/25/diy-scalar-network-analyzer/)
* [So. You Bought A VNA. Now What?](https://hackaday.com/2020/04/23/so-you-bought-a-vna-now-what/)
* [Test Antenna Signal Pattern on the Cheap](https://imgur.com/gallery/5zWhpTA)
* [NanoVNA Is A $50 Vector Network Analyzer](https://hackaday.com/2019/08/11/nanovna-is-a-50-vector-network-analyzer/)
* [NanoVNA Tests Antenna Pattern](https://hackaday.com/2020/01/11/nanovna-tests-antenna-pattern/)
* [NanoVNA V2 Case](https://hackaday.io/project/176512-nanovna-v2-case)

# Vector Network Analyzer (VNA)
Vector Network Analyzers are used to test component specifications
and verify design simulations to make sure systems and their components work properly together.

* [Learning About VNAs](https://hackaday.com/2020/06/11/learning-about-vnas/)
* [Back to Basics: What is a VNA / Vector Network Analyzer](https://www.youtube.com/watch?v=Sb3q8f0NBZc)
* [DIY Scalar Network Analyzer](https://hackaday.com/2019/12/25/diy-scalar-network-analyzer/)
* [So. You Bought A VNA. Now What?](https://hackaday.com/2020/04/23/so-you-bought-a-vna-now-what/)
* [Test Antenna Signal Pattern on the Cheap](https://imgur.com/gallery/5zWhpTA)
* [NanoVNA Is A $50 Vector Network Analyzer](https://hackaday.com/2019/08/11/nanovna-is-a-50-vector-network-analyzer/)
* [NanoVNA Tests Antenna Pattern](https://hackaday.com/2020/01/11/nanovna-tests-antenna-pattern/)
* [NanoVNA V2 Case](https://hackaday.io/project/176512-nanovna-v2-case)

# Vector Network Analyzer (VNA) Demystified
* [NANOVNA Demystified](https://www.youtube.com/watch?v=yGKWBpgN8PU&t=0s)
* [A Small, Simple, USB-Powered Vector Network Analyzer Covering 1 kHz to 1.3 GHz](https://www.sdr-kits.net/documents/Baier_VNWA2_QEX.pdf)
* []()



------



# NanoVNA Software
* [NanoVNA V2 Users Group](https://groups.io/g/NanoVNAV2)
* [NanoVNA-QT](https://github.com/nanovna-v2/NanoVNA-QT)
* [NanoVNA Saver](https://github.com/zarath/nanovna-saver)
* [NanoVNASaver](https://nanovna.com/?page_id=90)

## NanoVNA-QT



------



# Smith Chart
The Smith Chart is a tool for visualizing the impedance of a transmission line and antenna
system as a function of frequency, showing  how they behave from an impedance viewpoint.
Smith Charts are also extremely helpful for impedance matching.
The Smith Chart is used to display an actual (physical) antenna's impedance when measured on a Vector Network Analyzer (VNA).
Developed around 1940 by Phillip Smith,
the Smith Chart is no longer used to the simplify the calculation of transmission line equatons
since the arrival of mondern computers.
However, their value in visualizing the impedance of an antenna or a transmission line has not decreased.

* [Introduction to Smith Charts](https://www.antenna-theory.com/tutorial/smith/chart.php#smithchart)
* [Smith Chart Basics](https://www.microwaves101.com/encyclopedias/smith-chart-basics)
* [Understanding the Smith Chart](https://www.youtube.com/watch?v=rUDMo7hwihs)
* [Mathematical Construction and Properties of the Smith Chart](https://www.allaboutcircuits.com/technical-articles/mathematical-construction-and-properties-of-the-smith-chart/)
* [How To Read Smith Charts](https://www.youtube.com/watch?v=DpqluBkbLSA)
* [Basics of the Smith Chart - Intro, impedance, VSWR, transmission lines, matching](https://www.youtube.com/watch?v=TsXd6GktlYQ&list=RDCMUCiqd3GLTluk2s_IBt7p_LjA&start_radio=1)
* [Understanding the Smith Chart](https://www.youtube.com/watch?v=rUDMo7hwihs)
* [Smith Chart Basics: Impedance and Admittance curves and conversion](https://www.youtube.com/watch?v=gw1TYWwfvGk)
* [Smith Chart: Z, VSWR, Reflection Coef and Transmission Line Effects](https://www.youtube.com/watch?v=ImNRca5ecF0)
* [Smith Chart Basics](https://www.microwaves101.com/encyclopedias/smith-chart-basics)

* [Smith Chart](https://www.printfreegraphpaper.com/gp/smith.pdf)

* Smith Chart Hands-On - https://www.youtube.com/channel/UCFDM4s9QHMvPQlnW8KI6htw/search?query=smith
    * Introduction to the Smith Chart with Examples
    * Example 1: Finding Γ from Z and vice versa.
    * Impedance Matching with the Smith Chart

# scikit-rf
[`scikit-rf`](http://scikit-rf.org/about.html)
seeks to provides a modern, object-oriented library for network analysis and calibration aimed at being flexible and scalable.

* [Quick Intro to scikit-rf, a python library for RF engineering](https://www.youtube.com/watch?v=9ZLocBIxOJY)


------



# How to Properly Use a NanoVNA V2
* [How to properly use a NanoVNA V2 Vector Network Analyzer & Smith Chart](https://www.youtube.com/watch?v=_pjcEKQY_Tk)
* [Presentation recording: Intro to the VNA and NanoVNA for BayCon 2021](https://www.youtube.com/watch?v=o1eLK4EMpEQ&t=301s)

# VNA Calibration
For any VNA, you must always calibrate the instrument prior measuring your DUT
(and use [calibration devices of proper quality][06]).
This is because the VNA itself has non-linearities,
the measurement is heavily dependent on where you attach the DUT,
and there is some crosstalk between the measurment ports on the VNA.
Also remember, you must do a new calibration any time you change the VNA freqancy range applied to the DUT.

## Calibration Plane
Most VNA measurement setups will NOT allow you to connect a device under test (DUT)
directly to the analyzer front panel test ports.
More likely, you would connect your device to test fixtures, adapters, or cables that are connected to the analyzer.

To remove the effects of the measurment setup,
calibration should  takes place at the closest points possible to the DUT.
This this point is called the measurement [calibration plane][01] or reference plane.
When you do this, the errors associated with the test setup
(cables, test fixtures, and adapters used between the analyzer ports and the reference plane)
are measured and removed in the calibration process.

## Electrical Delay
If you use a port extension (aka adaptor), you change the calibration plane since you have introducted
some delay in the signal propogation and you will need to compansate for it
if you attached the extension after the calibation plan.
The NanoVNA can compinsate for this delay within its calibration setup.

## Short Open Load (SOL) Calerbration
To calibrate the VNA, you must apply short, open, load (typically 50 or 75 ohms) on the VNA's output port
(Port1 or CH0 on the NanoVNA).
The output port emits a signal and measures both the emitted signal and reflected signal from the DUT.

## Short Open Load Tip (SOLT) Calerbration
## Short Open Load Thru (SOLT) Calerbration
The SOL calibration is suficient for measurments of DUT which do not require a thru measurment, such as antennas,
but if your using the VNA to measure a filter, you'll also need to calibate with the VNA input port
(Port2 or CH1 on the NanoVNA).
The input port measures the emited signal after it passes through the DUT.
The

* [How to calibrate a Vector Network Analyzer, VNA](https://www.electronics-notes.com/articles/test-methods/rf-vector-network-analyzer-vna/how-to-calibrate-vna.php)
* [Why a VNA needs to be calibrated | how to calibrate a nanoVNA](https://www.youtube.com/watch?v=x-tbvAbh9jk)
* [NanoVNA Port Extension using the Electrical Delay setting](https://www.youtube.com/watch?v=bEPUePy_buM)



------



# Impedance Matching
* [Impedance Matching with QUCS Studio and VNA](https://hexandflex.com/2020/01/11/impedance-matching-with-qucs-studio-and-vna/)
* [Impedance Matching and Smith Chart Impedance](https://www.maximintegrated.com/en/design/technical-documents/tutorials/7/742.html)
* [Smith Chart and Impedance Matching](https://www.antenna-theory.com/tutorial/smith/chart.php)

# Measure Crystals
* [Measuring Crystals with NanoVNA and other tools](https://www.youtube.com/watch?v=G9zZRNzhsEE)
* [nanoVNA - Determining the Resonant Frequency of Crystals](https://www.youtube.com/watch?v=rVIHVi-7brs)

# Measure Coaxial Cable Characteristic Impedance and Cable Loss
* [NANOVNA Coax Loss Measurement](https://www.youtube.com/watch?v=mU71rGUKlBI)
* [nanoVNA - Coaxial Cable Measurement Methods (Characteristic Impedance and Cable Loss)](https://www.youtube.com/watch?v=G66_iqOu-Bs)

# Measuring RLC Components
* [NanoVNA - Measuring RLC Components](https://www.youtube.com/watch?v=R0mRTigYzco)
* [nanoVNA - Measuring Inductors and Capacitors](https://www.youtube.com/watch?v=iJ1qKE5O0bY)

# Measuring Voltage Standing Wave Ratio (VSWR)
VSWR = Return Loss

When looking at systems that include transmission lines it is necessary to understand that sources, transmission lines / feeders and loads all have a characteristic impedance. 50Ω is a very common standard for RF applications although other impedances may occasionally be seen in some systems.

In order to obtain the maximum power transfer from the source to the transmission line, or the transmission line to the load, be it a resistor, an input to another system, or an antenna, the impedance levels must match

Standing waves represent power that is not accepted by the load and reflected back along the transmission line or feeder.

Issues arise when power is transferred into the transmission line or feeder and it travels towards the load. If there is a mismatch, i.e. the load impedance does not match that of the transmission line, then it is not possible for all the power to be transferred.

As power cannot disappear, the power that is not transferred into the load has to go somewhere and there it travels back along the transmission line back towards the source.

When this happens the voltages and currents of the forward and reflected waves in the feeder add or subtract at different points along the feeder according to the phases. In this way standing waves are set up.

* [What is VSWR: Voltage Standing Wave Ratio](https://www.electronics-notes.com/articles/antennas-propagation/vswr-return-loss/what-is-vswr.php)
* [Using the NanoVNA to Measure Antenna SWR and Resonance](https://www.youtube.com/watch?v=_drx7ORUDWI)
* [Smith chart basics part 2: finding VSWR](https://www.youtube.com/watch?v=YbZ9RBw7-js)
* [Smith Chart: Z, VSWR, Reflection Coef and Transmission Line Effects](https://www.youtube.com/watch?v=ImNRca5ecF0&t=44s)

# Reflection Coefficent
* [Smith chart basics, part 3: finding reflection coefficient](https://www.youtube.com/watch?v=9KlIgae0ad8)
* [Smith Chart: Z, VSWR, Reflection Coef and Transmission Line Effects](https://www.youtube.com/watch?v=ImNRca5ecF0&t=44s)

# Lowpass, Bandpass Filter
* [NANOVNA Measuring Various Bandpass Filters](https://www.youtube.com/watch?v=hf4grkMuql4)
* [How to use the NanoVNA to measure a low-pass filter](https://www.youtube.com/watch?v=F17mN5uuzGY)

# Measuring Aplifier
* [NanoVNA and TinySA for Radio Design](https://www.youtube.com/watch?v=B7DFOq9rM_M)

# Antenna Measurements
* [NanoVNA for Antenna Analysis](https://www.youtube.com/watch?v=WxkC4ZSFiF0)
* [Optimizing Antennas using a cheap N1201SA VNA (Vector Impedance Analyzer), LoRa, Review](https://www.youtube.com/watch?v=ZpKoLvqOWyc)
* [NANOVNA 1/4Wave Vertical Antenna Measurement](https://www.youtube.com/watch?v=5uEz1KkHKas)
* [Testing NFC antennas with a NanoVNA](https://www.youtube.com/watch?v=aSPYP8a3v_I)


# Measurement of Coax Characteristics
## Why 50 and 75 Ohms
There is a prevalence of 50 ohm coax.
Sure, you sometimes see 75 ohm coax, but overwhelmingly, RF circuits work at 50 ohms.
Apparently in the 1930s,
radio transmitters were pushing towards higher power levels.
You generally think that thicker wires have less loss.
For coax cable carrying RF though, it’s a bit more complicated.
The impedance is a function of the dielectric material,
the diameter of the center conductor,
and RF signals exhibit the skin effect (they don’t travel in the center of the conductor)

When you put all this together,
you learn that the loss of the cable is minimized at 77 ohms for a cable with air dielectric.
Of course, that’s not 50 ohms but closer to the 75 ohms used to carry weak antenna signals in TV systems.
According to [Microwaves 101][12], choice of 50 ohms is a compromise between power handling capability
and signal loss per unit length, for air dielectric.
For cheaper commercial cables, such as those that bring CATV to your home,
an impedance 75 ohms probably was a compromise between low loss and cable flexibility.

* [Why is Coax 50 Ohms?](https://www.youtube.com/watch?app=desktop&v=I-OnQZJv35I)

## Time Domain Reflectometer (TDR)
A [time-domain reflectometer (TDR)][07] is an electronic instrument used to determine
the characteristics of electrical lines by observing reflected waveforms.

* [Schmitt Trigger Oscillator / Tutorial / 74AC14 Inverter / squarewave generator](https://www.youtube.com/watch?v=NuXitMK3HSA)
* [Cheap and simple TDR using an oscilloscope and 74AC14 Schmitt Trigger Inverter](https://www.youtube.com/watch?v=9cP6w2odGUc)

## Coax Impedance
* [How to measure coax velocity factor VF and impedance Z](https://www.youtube.com/watch?v=TpIIftvQPFM)
* [How to Measure the impedance of "unknown" coax using a NanoVNA](https://www.youtube.com/watch?v=hqKLFbNYRZc)

## Coax Velocity Factor
* [How to measure coax velocity factor VF and impedance Z](https://www.youtube.com/watch?v=TpIIftvQPFM)
* [NanoVNA measuring velocity factor and cable length](https://www.youtube.com/watch?v=aWvPB299U60)

## Measure Coax Length
* [Use NanoVNA to measure coax length - BONUS Transmission Lines and Smith Charts, SWR and more](https://www.youtube.com/watch?v=9thbTC8-JtA)
* [Use a scope to measure the length and impedance of coax](https://www.youtube.com/watch?v=Il_eju4D_TM)

## Terminations on Transmission Lines
* [Transmission Line Terminations for Digital and RF signals - Intro/Tutorial](https://www.youtube.com/watch?v=g_jxh0Qe_FY)





[01]:https://zone.ni.com/reference/en-XX/help/373153D-01/vnahelp/reference_plane/
[02]:https://www.amazon.com/gp/product/B08G4GXTKK
[03]:https://en.wikipedia.org/wiki/N_connector
[04]:https://www.amazon.com/gp/product/B07TD91LYH/
[05]:https://www.amazon.com/gp/product/B082F25WXC
[06]:https://hackaday.com/2021/05/08/calibrating-a-vna-the-proper-way/
[07]:https://en.wikipedia.org/wiki/Time-domain_reflectometer
[08]:
[09]:
[10]:
[11]:
[12]:http://www.microwaves101.com/encyclopedias/why-fifty-ohms
[13]:
[14]:
[15]:
[16]:
[17]:
[18]:
[19]:
[20]:
