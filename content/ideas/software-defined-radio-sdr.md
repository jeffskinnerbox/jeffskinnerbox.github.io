
* [Defcon 21 - All Your RFz Are Belong to Me - Hacking the Wireless World with Software Defined Radio](https://www.youtube.com/watch?v=ZuNOD3XWp4A)

* [Spectrum Painting: Trolling CTF players with gr-paint](https://irrational.net/2019/11/30/trolling-ctf-players-with-gr-paint/)

# DragonOS LTS
DragonOS is a Debian Linux based operating system which comes with many open source software defined radio programs pre-installed. It supports SDRs like the RTL-SDR, HackRF and LimeSDR.

* [Software-Defined Radio Made Easy](https://hackaday.com/2020/04/11/software-defined-radio-made-easy/)




################################################################################
# sdr-i-q-record-format
################################################################################

* [Practical Guide to Radio-Frequency Analysis and Design](https://www.allaboutcircuits.com/textbook/radio-frequency-analysis-design/)

* [How to Process I/Q Signals in a Software-Defined RF Receiver](https://www.allaboutcircuits.com/technical-articles/how-to-process-iq-signals-software-defined-rf-receiver-dsp-digital-signal/)

* [DSP Spreadsheet: IQ Diagrams](https://hackaday.com/2019/11/15/dsp-spreadsheet-iq-diagrams/)

* [Interactive Demo Shows the Power of Fourier Transforms](https://hackaday-com.go-vip.co/2019/04/10/interactive-demo-shows-the-power-of-fourier-transforms/)
* [Accelerating Fourier transforms using the Raspberry Pi's GPU](http://www.raspberrypi.org/archives/5934)
* [Fourier Explained: 3Blue1Brown Style!](https://hackaday.com/2019/07/13/fourier-explained-3blue1brown-style/)
* [csdr - build DSP processing chains by shell pipes](https://github.com/simonyiszk/csdr)
* [Comparison of analog and digital recording](https://en.wikipedia.org/wiki/Comparison_of_analog_and_digital_recording)
* [How to Process I/Q Signals in a Software-Defined RF Receiver](https://www.allaboutcircuits.com/technical-articles/how-to-process-iq-signals-software-defined-rf-receiver-dsp-digital-signal/)

* [SOFTWARE DEFINED RADIO FOR ENGINEERS: FREE UNIVERSITY LEVEL TEXT BOOK WITH PLUTOSDR EXAMPLES](https://www.rtl-sdr.com/software-defined-radio-for-engineers-free-university-level-text-book-with-plutosdr-examples/)
    * [Software-Defined Radio for Engineers](http://www.analog.com/en/education/education-library/software-defined-radio-for-engineers.html)
    * [Software Defined Radio for Engineers: A practical guide to the wireless physical layer](https://sdrforengineers.github.io)
    * [The Scientist & Engineer's Guide to Digital Signal Processing](http://www.analog.com/en/education/education-library/scientist_engineers_guide.html)

* [Signals Everywhere](https://signalseverywhere.com/)


A signal is a varying physical quanity that conveys information about the behavior or attributes of some phenomenon.
A [waveform][56] is the shape and form of a signal,
such as a peridoic wave moving in a physical medium or an abstract representation.
I/Q waveform files contain the digital complex sample values of a radio signal.

WAV files are used as they have become a de-facto standard supported by the most common SDR software. The maximum size of a single file is 2GB.

## Fundamental digital modulation methods
The most fundamental digital modulation techniques are based on [keying][40]:

* [PSK (phase-shift keying][41]: a finite number of phases are used.
* [FSK (frequency-shift keying)][43]: a finite number of frequencies are used.
* [ASK (amplitude-shift keying)][42]: a finite number of amplitudes are used.
* [QAM (quadrature amplitude modulation)][44]: a finite number of at least two phases and at least two amplitudes are used.

In QAM, an inphase signal (or I, with one example being a cosine waveform) and a quadrature phase signal (or Q, with an example being a sine wave) are amplitude modulated with a finite number of amplitudes, and then summed. It can be seen as a two-channel system, each channel using ASK. The resulting signal is equivalent to a combination of PSK and ASK.

## Modulator and detector principles of operation
PSK and ASK, and sometimes also FSK, are often generated and detected using the principle of QAM.
The I and Q signals can be combined into a [complex-valued][46] signal _I+jQ_ (where _j_ is the [imaginary unit][47]).
The resulting so called [equivalent lowpass signal][48] or [equivalent baseband signal][49]
is a complex-valued representation of the [real-valued][50] modulated physical signal
(the so-called [passband signal][51] or [RF signal][52]).

* [I/Q Record Format][53]
* [Quadrature ( I-Q ) Modulation Tutorial][54]
* [If The I And Q Of Software Defined Radio Are Your Nemesis, Read On](https://hackaday.com/2017/05/16/if-the-i-and-q-of-software-defined-radio-are-your-nemesis-read-on/)
* [IQ Modulator Basics: Operation, measurements, impairments](https://www.youtube.com/watch?v=RHFZUqUM8DY&feature=em-subs_digest)
* [Display in-phase and quadrature components of modulated signal constellation][55]
* [If The I And Q Of Software Defined Radio Are Your Nemesis, Read On][45]

## Waveform Viewer
A waveform viewer is a software tool for viewing a signals waveform.
http://en.wikipedia.org/wiki/Waveform_viewer



[40]:http://en.wikipedia.org/wiki/Keying_(telecommunications)
[41]:http://en.wikipedia.org/wiki/Phase-shift_keying
[42]:http://en.wikipedia.org/wiki/Amplitude-shift_keying
[43]:http://en.wikipedia.org/wiki/Frequency-shift_keying
[44]:http://en.wikipedia.org/wiki/Quadrature_amplitude_modulation
[45]:http://hackaday.com/2017/05/16/if-the-i-and-q-of-software-defined-radio-are-your-nemesis-read-on/
[46]:http://en.wikipedia.org/wiki/Complex-valued
[47]:http://en.wikipedia.org/wiki/Imaginary_unit
[48]:http://en.wikipedia.org/wiki/Equivalent_lowpass_signal
[49]:http://en.wikipedia.org/wiki/Equivalent_baseband_signal
[50]:http://en.wikipedia.org/wiki/Real-valued
[51]:http://en.wikipedia.org/wiki/Passband_signal
[52]:http://en.wikipedia.org/wiki/RF_signal
[53]:http://signals-analysis.blogspot.com/2009/11/new-article-iq-format-sa-and-iq-records.html
[54]:http://www.fourier-series.com/IQMod/
[55]:http://www.mathworks.com/help/comm/ref/discretetimescatterplotscope.html
[56]:http://en.wikipedia.org/wiki/Waveform
[57]:
[58]:
[59]:



################################################################################
# getting started with the rtl-sdr
################################################################################


Check out [Listen to the Globe](http://hackaday.com/2017/01/02/listen-to-the-globe/)

* [RTL-SDR: Seven Years Later](https://hackaday.com/2019/07/31/rtl-sdr-seven-years-later/)
* [Setting Up a Raspberry Pi SD Card With Amateur Radio-Related Apps](https://dzone.com/articles/setting-up-a-raspberry-pi-sd-card-with-some-amateu)
* [Amateur Radio related uses for the Raspberry Pi ](https://www.kevinhooke.com/2016/07/05/amateur-radio-related-uses-for-the-raspberry-pi-slides/)
* [Entry Level SDR Educational Tools For Raspberry Pi](https://github.com/myriadrf/ScratchRadio)
* [Using the RTL-SDR in the Pothos Dataflow Processing Platform](http://www.rtl-sdr.com/using-rtl-sdr-pothos-dataflow-processing-platform/)
* [csdr - build DSP processing chains by shell pipes](https://github.com/simonyiszk/csdr)
* [Sniffing ANT-FS with an RTL-SDR and MMDS Downconverter in Pothos](http://www.rtl-sdr.com/sniffing-ant-fs-with-an-rtl-sdr-and-mmds-downconverter-in-pothos/)
* [SDR (Software Defined Radio)](http://osmocom.org/projects/sdr/wiki/rtl-sdr)
* [Cloud-SDR](http://www.cloud-sdr.com/what-is-cloud-sdr/)
* [Icoboard Software Defined Radio Platform](https://hackaday.com/2018/03/20/icoboard-software-defined-radio-platform/)
* [All Your SDR Software In A Handy Raspberry Pi Image](https://hackaday.com/2019/12/20/all-your-sdr-software-in-a-handy-raspberry-pi-image/)
* [The Raspberry Pi 3B+ As An SDR – Without The SDR!](https://hackaday.com/2018/04/14/the-raspberry-pi-3b-as-an-sdr-without-the-sdr/)

* [Remote ADS-B Install Listens In On All The Aircraft Transmissions With RTL-SDR Trio, Phones Home on Cellular](https://hackaday.com/2019/08/14/remote-ads-b-install-listens-in-on-all-the-aircraft-transmissions-with-rtl-sdr-trio-phones-home-on-cellular/)

* [SOFTWARE DEFINED RADIO FOR ENGINEERS: FREE UNIVERSITY LEVEL TEXT BOOK WITH PLUTOSDR EXAMPLES](https://www.rtl-sdr.com/software-defined-radio-for-engineers-free-university-level-text-book-with-plutosdr-examples/)
    * [Software-Defined Radio for Engineers](http://www.analog.com/en/education/education-library/software-defined-radio-for-engineers.html)
    * [Software Defined Radio for Engineers: A practical guide to the wireless physical layer](https://sdrforengineers.github.io)
    * [The Scientist & Engineer's Guide to Digital Signal Processing](http://www.analog.com/en/education/education-library/scientist_engineers_guide.html)

* [hardware devices for cheap SDR receivers](https://github.com/IgrikXD/Easy-SDR)


# Enclosure
* [Printed It: Custom Enclosure Generator ](https://hackaday.com/2018/03/02/printed-it-custom-enclosure-generator/)


# Meter Reading
* [Monitoring Home Power Consumption for less than $25](https://blog.kroy.io/monitoring-home-power-consumption-for-less-than-25/)


# RTL-SDR Tools
* [RTLSDR Scanner](https://eartoearoak.com/software/rtlsdr-scanner)
* [RF Monitor](https://eartoearoak.com/software/rf-monitor)
* [Radio Communication Analysis using RfCat](https://www.inguardians.com/2017/03/18/radio-communication-analysis-using-rfcat/)
* [RFCrack - A Software Defined Radio Attack Tool - KitPloit - PenTest & Hacking Tools for your CyberSecurity Kit](https://www.kitploit.com/2018/01/rfcrack-software-defined-radio-attack.html)



###############################################################################

* [How does Software Defined Radio (SDR) work under the Hood?](https://www.youtube.com/watch?v=xQVm-YTKR9s)
* [Intuitive Tutorial on SDR, Frequency Domain. and IQ Data](https://arachnoid.com/software_defined_radios/)
* [Intro to RTL-SDR, Part I - Principles and Hardware](http://ajoo.blog/intro-to-rtl-sdr-part-i-principles-and-hardware.html)
* [Intro to RTL-SDR, Part II - Software](http://ajoo.blog/intro-to-rtl-sdr-part-ii-software.html)


# Selecting a RTL-SDR
[RTL-SDR.COM][75] is an excelent souce for the latest intell on the RTL-SDR,
and provides several guides aimed at helping you set-up your RTL-SDR.
This includea a [Quick Start Guide][76], [RTL-SDR Buyers Guide][77],
and a large set of [Tutorials][78].
Anothe excellent source is [Radio for Everyone][60].

* [60 RTL-SDR Dongles Reviewed](https://hackaday.com/2017/09/05/19-rtl-sdr-dongles-reviewed/)
* [The Libre Space Foundation Reviews Software Defined Radios](https://hackaday.com/2020/04/08/the-esa-reviews-software-defined-radios/)
* [An Introductory Project for Software Defined Radio](https://www.allaboutcircuits.com/projects/an-introductory-project-for-software-defined-radio/?utm_source=All+About+Circuits+Members&utm_campaign=e01676fafa-EMAIL_CAMPAIGN_2017_02_08&utm_medium=email&utm_term=0_2565529c4b-e01676fafa-270523833/)
* [Buy RTL-SDR Dongles](http://www.rtl-sdr.com/buy-rtl-sdr-dvb-t-dongles/)
* [Getting Started with RTL-SDR and SDR-Sharp](https://cdn-learn.adafruit.com/downloads/pdf/getting-started-with-rtl-sdr-and-sdr-sharp.pdf)
* [RTLSDR4Everyone: The best RTL-SDR setup for $60](http://www.rtl-sdr.com/rtlsdr4everyone-the-best-rtl-sdr-set-up-for-60/)
* [RTL_SDR Blog V3 Dongles User Guide](http://www.rtl-sdr.com/rtl-sdr-blog-v-3-dongles-user-guide/)
* [The Hobbyist's Guide to the RTL-SDR: Really Cheap Software Defined Radio](https://www.amazon.com/gp/product/B00KCDF1QI/ref=as_li_tl?ie=UTF8&camp=1789&creative=390957&creativeASIN=B00KCDF1QI&linkCode=as2&tag=book0674-20&linkId=RSP53QLYXP4IS32X)
* [RTL_SDR for Linux Quick Start Guide](http://www.rtl-sdr.com/a-good-quickstart-guide-for-rtl-sdr-linux-users/)

# YARD Stick One
YARD Stick One is a sub-1 GHz wireless test tool controlled by your computer from Great Scott Gadgets

* [Hak5 1908 – How to begin hacking with the YARD Stick One](https://www.hak5.org/episodes/hak5-1908-how-to-begin-hacking-with-the-yard-stick-one)
* [Go Play in the YARD](https://www.sparkfun.com/news/2726)
* [Executing A Vehicle Keyless Entry Attack](https://hackaday.com/2019/03/30/executing-a-vehicle-keyless-entry-attack/)
* https://www.amazon.com/YARD-Stick-One-wireless-controlled/dp/B01N3TR4AA/ref=sr_1_fkmr0_1
* https://www.sparkfun.com/products/14777
* https://greatscottgadgets.com/yardstickone/

# Hacking with RFCat
* [Hacking fixed key remotes with (only) RFCat](https://andrewmohawk.com/tag/rfcat/)
* [HACKING ALARM SYSTEMS WITH AN RTL-SDR AND RFCAT](https://www.rtl-sdr.com/hacking-alarm-systems-with-rtl-sdr-and-rfcat/)
* [HACKING RADIO CONTROLLED OUTLETS](https://hackaday.com/tag/rfcat/)
* [Radio Communication Analysis using RfCat](https://www.inguardians.com/2017/03/18/radio-communication-analysis-using-rfcat/)

# Hacking with RFCrack
* [RFCrack - A Software Defined Radio Attack Tool - KitPloit - PenTest & Hacking Tools for your CyberSecurity Kit ](https://www.kitploit.com/2018/01/rfcrack-software-defined-radio-attack.html)


# Setup
* [New Linux RTL-SDR Driver with Fully Exposed Controls](http://www.rtl-sdr.com/new-linux-rtl-sdr-driver-with-fully-exposed-controls/)
* [Raspberry Pi SDR](http://hackaday.com/2017/01/27/raspberry-pi-sdr/)

# Installing GNU Radio
* [AI Listens to Radio](https://hackaday.com/2018/02/17/ai-listens-to-radio/)
* [Deep Learning Meets DSP: OFDM Signal Detection](https://blog.kickview.com/deep-learning-meets-dsp-ofdm-signal-detection/)
* [Neural Network Learn SDR Ham Radio](https://hackaday.com/2017/12/16/neural-network-learns-sdr-ham-radio/)

# Lows Noise Amplifier (LNA)
[Why use a Preamp?](http://www.radioforeveryone.com/p/why-use-preamp.html)
* [LNA4All](http://lna4all.blogspot.com/)
* [Review - LNA4ALL](http://www.radioforeveryone.com/p/summary-buy-one-works-as-advertised.html)
* [Review: LNA4ALL Antenna Amplifier](http://www.radioforeveryone.com/2013/08/antenna-amplifier.html)
* [INSMA 0.1-2000MHz RF Wideband Amplifier 30dB low-noise LNA Broadband Module Receiver](https://www.amazon.com/INSMA-0-1-2000MHz-Amplifier-low-noise-Broadband/dp/B01D5RRT0I/ref=sr_1_2?s=electronics&ie=UTF8&qid=1483585185&sr=1-2&keywords=lna)

## Bias Tee
Bias-T is nothing more than a simple diplexer.

* [DIY Bias-T](http://lna4all.blogspot.com/2014/11/diy-bias-t.html)
* [RTL-SDR Bias Tee Hack](http://www.rtl-sdr.com/rtl-sdr-bias-tee-hack/)

http://forums.solidsignal.com/showthread.php/167-Diplexer-Splitter-Combiner-What-are-these-things

## Upconverter
[Review of the SpyVerter Upconverter](http://www.rtl-sdr.com/review-of-the-spyverter-upconverter/)
* [Ham It Up v1.3 - RF Upconverter For Software Defined Radio](http://www.nooelec.com/store/ham-it-up.html)

# Tuning the RTL-SDR for Optimal Use
You'll find that the dongle is limited by the following:

* frequency offset
* quality of the antenna
* sample rate you can obtain
* bandwidth of the device
* A/D bit resolution

Improving the Quality of the Antenna

* [Antenna-Theory.com][61]
* [Broadband Discone Antenna][62]
* [VE3SQB ANTENNA DESIGN PROGRAMS][63]
* [D.I.Y. Discone for RTLSDR][64]
* [Understanding Antenna Specifications and Operation](http://www.digikey.com/en/articles/techzone/2011/mar/understanding-antenna-specifications-and-operation)

## Determining Your Dongles Frequency Off-Set
Once you start playing around with any of the RTL-SDR dongles and some of the Software Defined Radio (SDR) tools out there, you observer that the frequency settings/readings your using don't make sense.
In fact, they seem to be way off, like tens of kHz off!  So any attempt to tune into a specific local radio station (like this for example:
`rtl_fm -W -f 99.5M | play -r 32k -t raw -e signed-integer -b 16 -c 1 -V1 -`) can often produce a very noisy / distorted signal or nothing intelligent at all.
One of the root cause of this is the low quality local oscillator used on the dongles.e
These oscillators frequency are engineered for a specific value (28.8MHz in the case of the RTL2832U-based USB DVB-T adapters dongle like mine) but will vary significantly among the device manufactured (it will also drift with temperature).

Now if you know how far off your dongles oscillators frequency was from its specification value, then you could compensate for it.
So in my `rtl_fm` example above, you would adjust the `-f 99.5M` parameter to compensate for the off-set.
Each unique device has its own off-set, so how do you determine your devices off-set?
Thanks to the [work of  Joshua Lackey and Steve Markgraf][65], there exist a tool to calculate this value.
That tool is called [kalibrate, or kal][66] (actually, we be using [kalibrate-rtl][67]
which is a fork of the software from [kalibrate][68]
and specifically designed for the RTL-SDR dongles) uses the precise known frequencies of used within GSM base stations to calculate the local oscillator frequency offset.
GSM base stations timing is required to be very accurate (to within 0.05 ppm), so if we can measure the dongles frequency relative to this very stable GSM frequency, we have an accurate measure of our dongles off-set.

In fact, there is a [video][69] on how to use this tool with RTL-SDR dongles.

``` bash
cd ~/src
git clone git://github.com/steve-m/kalibrate-rtl.git
cd kalibrate-rtl
./bootstrap &amp;&amp; CXXFLAGS='-W -Wall -O3'
./configure
make
```

I did the commands below because "make install" failed
``` bash
cd src
/usr/bin/install -c kal '/home/jeff/bin'
```

Data captured using kalibrate-rtl:

```
kal -s GSM850 --> channel 238 --> kal -c 238 --> -891.2MHz   30.254 ppm, -20.256 ppm
kal -s GSM900 --> channel 989 --> kal -c 989 --> 928.0MHz   26.225 ppm, 26.023 ppm
kal -s GSM900 --> channel 991 --> kal -c 991 --> 928.4MHz   7.793 ppm, -1.919 ppm
kal -s GSM900 --> channel 998 --> kal -c 998 --> 929.8MHz   1.712 ppm, 2.508 ppm
```

Baried with in the http://superkuh.com/

frequency offset

Kalibrate-RTL

[RTLSDR Scanner](http://eartoearoak.com/software/rtlsdr-scanner) is a simple cross platform python based spectrum analyzer for the RTL-SDR. The scanner also has an auto calibration feature which can help find the PPM offset of a dongle.

[HOW TO CALIBRATE RTL-SDR USING KALIBRATE-RTL ON LINUX][70]

<strong>Improving Your Dongles Antenna</strong>

[Home Made Coat Hanger Discone][71]

Improving Your SDR Radio

* [Adding more frequencies to your software defined radio][72]
* [Improving a software defined radio with a few bits of wire][73]
* [RTL-SDR Improvement Tips][74]

# SIGINT / Signal Classification
* [Name That Unknown RF Signal With A Little FFT Magic](https://hackaday.com/2020/02/11/name-that-unknown-rf-signal-with-a-little-fft-magic/)

# SIGINT / Spectrum Monitoring
* [Mobile SIGINT Hacking on a Civilian’s Budget](https://hackaday.com/2019/06/05/mobile-sigint-hacking-on-a-civilians-budget/)
* [MONITORING THE SPECTRUM: BUILDING YOUR OWN DISTRIBUTED RF SCANNER ARRAY](http://www.rtl-sdr.com/talk-monitoring-spectrum-building-distributed-rf-scanner-array/)
* [Embedded rtl-sdr setup: RTL-SDR + OpenWRT = OMG!!](http://rtl-sdr.sceners.org/?p=40)
* [Building an RF Scanner Array](https://events.ccc.de/congress/2013/Fahrplan/system/attachments/2230/original/30c3-RFArray.pdf)
* [Running RTL-SDR on OpenWrt](http://www.rtl-sdr.com/running-an-rtl-sdr-on-openwrt/)
* [Scan your WiFi and get access point information and signal quality](https://github.com/kootenpv/access_points)
* [Radio Spectrum Recordings: Time Travel with Software Defined Radio](https://hackaday.com/2018/07/23/hope-xiii-time-travel-with-software-defined-radio/)
* [ElectroSense](https://electrosense.org/)

* [libcsdr](https://github.com/simonyiszk/csdr) is a set of simple DSP routines for Software Defined Radio.  It is mostly useful for AM/FM/SSB demodulation and spectrum display.
* [qtcsdr]() makes a ham transceiver out of your Raspberry Pi 2 and RTL-SDR with the help of rpitx
* [rpitx - RF transmitter for Raspberry Pi](https://github.com/F5OEO/rpitx)
* [OpenWebRX](http://sdr.hu/openwebrx)

Instead of running coax from the USB DVB-T stick to an antenna,
use a small OpenWRT box with a USB TV stick and plug that in close to our antenna.
Then control and manage it over WiFi
Simply install the [rtlsdr package on OpenWRT](http://www.rtl-sdr.com/creating-a-wireless-sdr-receiver-with-a-mini-wifi-router/)
and you should be good to launch it from the command line.
This gives you a [remote radio head](https://en.wikipedia.org/wiki/Remote_radio_head).
A remote radio head is a remote radio transceiver that connects to an operator
radio control panel via electrical or wireless interface.

If you want to really get the most out of it,
it’s better to try and do some processing on the router itself.
A SDR decoding ADS-B signals with [MalcolmRobb‘s modifications dump1090](https://github.com/mutability/dump1090)
has been shown to work.
Dump1090 is also in the OpenWRT packages list,
and now even has a script to allow you to start it automatically.







# RTL-SDR Based Tools
* [Michael Ossmann & Kate Temkin - Software-Defined Everything](https://www.youtube.com/watch?v=-5TAfdYpC44)
* [RFTap: A Bridge Between GNURadio and Wireshark](http://www.rtl-sdr.com/rftap-a-bridge-between-gnuradio-and-wireshark/)
* [SDRDue: New Software for Passive Radar with Two Coherent RTL-SDR Dongles](http://www.rtl-sdr.com/sdrdue-new-software-for-passive-radar-with-two-coherent-rtl-sdr-dongles/)
* [KerberosSDR - A 4x Phase Coherent RTL-SDR for Passive Radar, Direction Finding and More!](https://www.indiegogo.com/projects/kerberossdr-4x-coherent-rtl-sdr#/)
* [Easy Direction Finding Thanks To Quad SDRs](https://hackaday.com/2019/08/22/__trashed-3/)
* [SDR Is At the Heart of This Soup-Can Doppler Radar Set](https://hackaday.com/2018/11/29/sdr-is-at-the-heart-of-this-soup-can-doppler-radar-set/)
* [Bike-Mounted Synthetic-Aperture Radar Makes Detailed Images](https://hackaday.com/2019/08/15/bike-mounted-synthetic-aperture-radar-makes-detailed-images/)
* [SDR Spectrum Grabber](http://hackaday.com/2016/11/18/cache-shortwave-signals-for-later-with-this-sdr-spectrum-grabber/)
* [sdrangelove - a Qt software defined radio application](http://osmocom.org/projects/sdr/wiki/sdrangelove)

# Signals Reverse Engineering
* [Reverse Engineering Signals with the Universal Radio Hacker Software](http://www.rtl-sdr.com/reverse-engineering-signals-universal-radio-hacker-software/)
* [Automate Your Home From the Clearance Rack](https://hackaday.com/2019/01/19/automate-your-home-from-the-clearance-rack/)
* [ATTACK SOME WIRELESS DEVICES WITH A RASPBERRY PI AND AN RTL-SDR](https://hackaday.com/2017/09/10/attack-some-wireless-devices-with-a-raspberry-pi-and-an-rtl-sdr/)
* [EXPLOITING WEAK CRYPTO ON CAR KEY FOBS](https://hackaday.com/2017/10/18/exploiting-weak-crypto-on-car-key-fobs/)
* [RFCrack - A Software Defined Radio Attack Tool](https://www.kitploit.com/2018/01/rfcrack-software-defined-radio-attack.html)

# Radio Reverse Engineering
* [USING THE FCC EAS FOR FUN AND PROFIT](https://hackaday.com/2016/10/10/using-the-fcc-eas-for-fun-and-profit/)
* [Reverse Engineering A Ceiling Fan Remote](https://hackaday.com/2020/03/31/reverse-engineering-a-ceiling-fan-remote/)
* [Reverse engineering a ceiling fan](https://irrational.net/2014/03/23/reverse-engineering-a-ceiling-fan/)
* [Universal Radio Hacker](https://hackaday.com/2017/02/23/universal-radio-hacker/)
* [Universal Radio Hacker: Video Playlist](https://www.youtube.com/playlist?list=PLlKjreY6G-1EKKBs9sucMdk8PwzcFuIPB)
* [Universal Radio Hacker: Investigate Wireless Protocols like a Boss](https://hakin9.org/universal-radio-hacker-investigate-wireless-protocols-like-a-boss/)
* [reverse engineering static key remotes with gnuradio and rfcat](https://leonjza.github.io/blog/2016/10/02/reverse-engineering-static-key-remotes-with-gnuradio-and-rfcat/)
* [Reverse Engineering Signals with the Universal Radio Hacker Software](http://www.rtl-sdr.com/reverse-engineering-signals-universal-radio-hacker-software/)
* [Using MATLAB and SDR to Reverse Engineer 433MHz Messages](http://hackaday.com/2015/02/16/using-matlab-and-sdr-to-reverse-engineer-433mhz-messages/)
* [Your Table Is Ready, Courtesy Of HackRF](https://hackaday.com/2019/06/04/your-table-is-ready-courtesy-of-hackrf/)
* [RF reverse engineering has become trivial — thanks to the ‘Opensource SDR’ movement](https://medium.com/@nihal.pasham/rf-reverse-engineering-has-become-trivial-thanks-to-the-opensource-sdr-movement-d1f9216f2f04)
* [gr-inspector: Signal Analysis Toolbox for GNU Radio](https://github.com/gnuradio/gr-inspector)
* [inspectrum](https://www.rtl-sdr.com/inspectrum-a-new-tool-for-analyzing-captured-signals/)
    * [inspectrum](https://www.rtl-sdr.com/tag/inspectrum/)
* [waveconverter](https://www.rtl-sdr.com/waveconverter-an-open-source-rf-reverse-engineering-tool/)
* [DSpectrum](https://www.rtl-sdr.com/youtube-talk-introduction-to-dspectrum-for-reverse-engineering-signals/)
* [Attack Some Wireless Devices With A Raspberry Pi And An RTL-SDR](Attack Some Wireless Devices With A Raspberry Pi And An RTL-SDR)
* [Samy Kamkar: Reverse Engineering for a Secure Future](https://hackaday.com/2018/01/02/samy-kamkar-reverse-engineering-for-a-secure-future/)
* [Radio Hacking: Cars, Hardware, and more! - Samy Kamkar - AppSec California 2016](https://www.youtube.com/watch?v=1RipwqJG50c&t=15s)
* [Samy Kamkar's Crash Course in How to Be a Hardware Hacker](https://www.youtube.com/watch?v=tlwXmNnXeSY&app=desktop)

# Projects
* [Read Home Power Meters With RTL-SDR](https://hackaday.com/2017/12/21/read-home-power-meters-with-rtl-sdr/)
* [Building A LoRa PHY With SDR](http://hackaday.com/2016/11/18/building-a-lora-phy-with-sdr/)
* [WSPR reception setup using RTL-SDR dongle V3](https://docs.google.com/document/d/10_xEGW_tdC7LhA-5_UE7ZmgMfPv4ySvz6DQrv02X4ek/mobilebasic)
* [RTL-SDR Tutorial: GPS Decoding and Plotting](http://www.rtl-sdr.com/rtl-sdr-tutorial-gps-decoding-plotting/)

# Radio Telescope
* [Listen to the Sun, Saturn, and the Milky Way with Your Own Radio Telescope](https://hackaday.com/2016/09/28/listen-to-the-sun-saturn-and-the-milky-way-with-your-own-radio-telescope/)
* [Radio Telescopes Horn In With GNU Radio](https://hackaday.com/2019/01/20/radio-telescopes-horn-in-with-gnu-radio/)
* DYI Radio Telescope
    * [DIY Radio Telescope Version 2: Wifi vision - Part 1](https://www.youtube.com/watch?v=o6WHhqDHSQ4)
    * [DIY Radio Telescope V2: Wifi Vision - Part 2](https://www.youtube.com/watch?v=VABeN4uv03s)
    * [Building a Camera That Can See Wifi | Radio Telescope V2 - Part 3 SUCCESS!](https://www.youtube.com/watch?v=g3LT_b6K0Mc&feature=youtu.be)
* [The Tiny Radio Telescope](https://hackaday.com/2016/07/31/the-tiny-radio-telescope/)
* [Probe The Galaxy On A Shoestring With This DIY Hydrogen-Line Telescope](https://hackaday.com/2019/09/29/probe-the-galaxy-on-a-shoestring-with-this-diy-hydrogen-line-telescope/)
* [A Miniature Radio Telescope In Every Backyard](https://hackaday.com/2019/10/22/a-miniature-radio-telescope-in-every-backyard/)

# Other SDR Tools
* [Global Radio Direction Finding in Your Browser](https://hackaday.com/2018/07/16/global-radio-direction-finding-in-your-browser/)
* [Building An SDR Lab With Wheels](https://hackaday.com/2018/07/27/building-an-sdr-lab-with-wheels/)

# SDR Transmitter
Transmit radio signals using just a serial port

* [Your USB Serial Adapter Just Became a SDR](https://hackaday.com/2018/12/06/your-usb-serial-adapter-just-became-a-sdr/)
* [RF transmitter for Raspberry Pi](https://www.rtl-sdr.com/rpitx-v2-released-easily-record-and-replay-with-rtl-sdr-and-a-raspberry-pi/)



[60]:http://www.radioforeveryone.com/p/reducing-electrical-noise.html
[61]:http://www.antenna-theory.com/
[62]:http://www.ramseyelectronics.com/downloads/manuals/DA25.pdf
[63]:http://www.ve3sqb.com/
[64]:http://helix.air.net.au/index.php/d-i-y-discone-for-rtlsdr/
[65]:https://github.com/steve-m/kalibrate-rtl
[66]:http://thre.at/kalibrate/
[67]:https://github.com/steve-m/kalibrate-rtl
[68]:http://thre.at/kalibrate/
[69]:http://www.youtube.com/watch?v=VaKzhaf5iKg
[70]:http://www.securitytube.net/video/7726
[71]:http://www.rtl-sdr.com/home-made-coat-hanger-discone/
[72]:http://hackaday.com/2012/07/08/adding-more-frequencies-to-you-software-defined-radio/
[73]:http://hackaday.com/2012/05/14/improving-a-software-defined-radio-with-a-few-bits-of-wire/
[74]:http://www.ab9il.net/software-defined-radio/rtl2832-sdr.html
[75]:http://www.rtl-sdr.com/
[76]:http://www.rtl-sdr.com/rtl-sdr-quick-start-guide/
[77]:http://www.rtl-sdr.com/buy-rtl-sdr-dvb-t-dongles/
[78]:http://www.rtl-sdr.com/category/tutorial/
[79]:


################################################################################
# linesdr open source software defined radio
################################################################################



* [Entry Level SDR Educational Tools For Raspberry Pi](https://github.com/myriadrf/ScratchRadio)
* [The LimeSDR Mimi Grove Starter Kit](https://www.rtl-sdr.com/tag/iot/)
* [An SDR Transceiver The Old-School Way](https://hackaday.com/2019/06/29/an-sdr-transceiver-the-old-school-way/)

* [Pluto Might Not Be A Planet, But It Is An SDR Transceiver](https://hackaday.com/2020/04/14/pluto-might-not-be-a-planet-but-it-is-an-sdr-transceiver/)
* [SOFTWARE DEFINED RADIO FOR ENGINEERS: FREE UNIVERSITY LEVEL TEXT BOOK WITH PLUTOSDR EXAMPLES](https://www.rtl-sdr.com/software-defined-radio-for-engineers-free-university-level-text-book-with-plutosdr-examples/)
    * [Software-Defined Radio for Engineers](http://www.analog.com/en/education/education-library/software-defined-radio-for-engineers.html)
    * [Software Defined Radio for Engineers: A practical guide to the wireless physical layer](https://sdrforengineers.github.io)
    * [The Scientist & Engineer's Guide to Digital Signal Processing](http://www.analog.com/en/education/education-library/scientist_engineers_guide.html)

* [quicky intro to sdr](http://hackaday.com/2016/05/30/hackaday-dictionary-software-defined-radio-sdr/)
* [Open source SDR board teams up with Snappy Ubuntu](http://linuxgizmos.com/open-source-sdr-sbc-runs-snappy-ubuntu-on-cyclone-v/)
* [Sodera - Your Introduction into SDR](http://sodera.de/)
* LimeSDR and its toolchain have already been used to create a Wireless Multi-tool for IoT, [Part 1](http://www.rs-online.com/designspark/electronics/eng/blog/an-intel-powered-wireless-multi-tool-for-the-iot-part-1), [Part 2](http://www.rs-online.com/designspark/electronics/eng/blog/an-intel-powered-wireless-multi-tool-for-the-iot-part-2), [source code](https://github.com/DesignSparkrs/sdr-ble-demo/)
* [Cyberspectrum SDR Meetup](https://kb.ettus.com/Cyberspectrum)
* [Gqrx SDR](http://gqrx.dk/)
* [csdr - build DSP processing chains by shell pipes](https://github.com/simonyiszk/csdr)
* [Optimising Performance on HF](https://www.crowdsupply.com/lime-micro/limesdr/updates/optimising-performance-on-hf?utm_source=LimeSDR+supporters&utm_campaign=6181a14370-Update_LimeSDR_optimising_HF_2017_02_14&utm_medium=email&utm_term=0_1e5a81cd57-6181a14370-112302893)
* [4G (LTE) Home Repeater With LimeSDR](http://www.instructables.com/id/4G-LTE-Home-Repeater-With-LimeSDR/)
* [GSM Phone Network At EMF Camp Built on Raspberry Pi and LimeSDR](https://hackaday.com/2018/08/30/gsm-phone-network-at-emf-camp-built-on-raspberry-pi-and-limesdr/)

* [A Guide to Ubuntu Core and Snaps](https://dzone.com/articles/a-guide-to-ubuntu-core-and-snaps?edition=329543&utm_source=Zone%20Newsletter&utm_medium=email&utm_campaign=iot%202017-10-10)
 * [Why we need a different container purely for apps - Mark Shuttleworth (Canonical)](https://www.youtube.com/watch?v=0z3yusiCOCk)
* [An Introduction To Snap Packages for Linux](https://www.youtube.com/watch?v=j40tNL3t4gw)

* [SigFox SDR Dongle](https://build.sigfox.com/sdr-dongle)

* [AI Listens to Radio](https://hackaday.com/2018/02/17/ai-listens-to-radio/)
* [Neural Network Learn SDR Ham Radio](https://hackaday.com/2017/12/16/neural-network-learns-sdr-ham-radio/)
* [Deep Learning Meets DSP: OFDM Signal Detection](https://blog.kickview.com/deep-learning-meets-dsp-ofdm-signal-detection/)

* [Printed It: Custom Enclosure Generator ](https://hackaday.com/2018/03/02/printed-it-custom-enclosure-generator/)

* [liquidsdr.org](http://liquidsdr.org/) is home to liquid-dsp,
a free and open-source signal processing library for software-defined radios written in C.

* [Review: LimeSDR Mini Software Defined Radio Transceiver](https://hackaday.com/2018/03/13/review-limesdr-mini-software-defined-radio-transceiver/)

* [Lime SDR (and Pluto, Too) Sends TV](https://hackaday.com/2019/01/19/lime-sdr-and-pluto-too-sends-tv/)

* [ Artificial Intelligence Radio - Transceiver (AIR-T)](https://www.crowdsupply.com/deepwave-digital/air-t)
* [Deepwave Digital: Making Sense of Signals](http://on-demand.gputechconf.com/gtc/2018/video/S8375/)

# Sthingray
* [It Might Be Possible To Build A Stingray With A Raspberry Pi](https://hackaday.com/2018/11/19/it-might-be-possible-to-build-a-stingray-with-a-raspberry-pi/)
* [How To Detect And Find Rogue Cell Towers](https://mail.aol.com/webmail-std/en-us/suite)


################################################################################

![limesdr](https://www.crowdsupply.com/img/31d2/limesdr-7_jpg_project-body.jpg)
Ever since I become aware of [RTL-SDR][20] and how it could be used to create
a very cheap [software defined radio (SDR)][21]
by uses a [TV tuner dongle based on the RTL2832U chipset][22],
I have been hooked on diving deeper into SDR.
The use of the TV dongle and the RTL-SDR software is very much a hack with very limited functionality,
and can't come close to the abilities of professional grade SDR.
I have been watching the product development in this SDR space,
many are expensive, or have technical limitations, or [just plain hard to do][30].
This has been changing (e.g. [HackRF][23]) but I still didn't feel I was getting
enough for the money.

With the arrival of [LimeSDR][24], I'm read to part with my money.
I recently enthusiastically backed a crowd sourced SDR hardware build for $250
(list price will be $300).
[Lime Microsystems][03] launched this project via [CrowdSupply][01].
Lime has also received the [backing of the UK mobile operator EE][18]
and [Ubuntu will supply an App Store for the LimeSDR][19].

Lime billed it project as:

**A Software Defined Radio for Everyone**

LimeSDR is a low cost, open source, apps-enabled software defined radio (SDR)
platform that can be used to support just about any type of wireless communication standard.
LimeSDR can send and receive UMTS, LTE, GSM, LoRa, Bluetooth, Zigbee, RFID,
and Digital Broadcasting, to name but a few.

While most SDRs have remained in the domain of RF and protocol experts,
LimeSDR is usable by anyone familiar with the idea of an app store -
it’s the first SDR to integrate with Snappy Ubuntu Core.
This means you can easily download new LimeSDR apps from developers around the world.
If you’re a developer yourself,
you can share and/or sell your LimeSDR apps through Snappy Ubuntu Core as well.

The LimeSDR platform gives students, inventors,
and developers an intelligent and flexible device for manipulating wireless signals,
so they can learn, experiment, and develop with freedom from limited functionality
and expensive proprietary devices.

**Features & Specifications**

* **RF Transceiver:** Lime Microsystems LMS7002M MIMO FPRF ([Datasheet][04])
* **FPGA:** Altera Cyclone IV EP4CE40F23 - also compatible with EP4CE30F23
* **Memory:** 256 MBytes DDR2 SDRAM
* **USB 3.0 controller:** Cypress USB 3.0 CYUSB3014-BZXC
* **Oscillator:** Rakon RPT7050A @30.72MHz ([Datasheet][05])
* **Continuous frequency range:** 100 kHz – 3.8 GHz
* **Bandwidth:** 61.44 MHz Digital Interface (160MHz Analog Interface)
* **RF connection:** 10 U.FL connectors (6 RX, 4 TX)
* **Power Output (CW):** up to 10 dBm
* **Multiplexing:** 2x2 MIMO
* **Power:** micro USB connector or optional external power supply
* **Power Consumption:** typically 880 mW in full 2x2 MIMO mode (550 mW in SISO mode)
* **Status indicators:** programmable LEDs
* **Operating System:** Snappy Ubuntu Core (Linux), running on USB-connected host system
* **Dimensions:** 100 mm x 60 mm

# Documentation
* [LimeSDR-USB User Guide](http://wiki.myriadrf.org/LimeSDR-USB_User_Guide)
* [LimeMicro:LMS7002M Datasheet](https://wiki.myriadrf.org/LimeMicro:LMS7002M_Datasheet)
* [Altera's Cyclone IV FPGA](https://www.altera.com/products/fpga/cyclone-series/cyclone-iv/overview.html)
* [Cyclone IV Device Handbook](https://www.altera.com/content/dam/altera-www/global/en_US/pdfs/literature/hb/cyclone-iv/cyclone4-handbook.pdf)

# Who is Lime Microsystems
[Lime Microsystems][03] is the creator of
[the world's first field programmable RF (FPRF) chip][02]
and uses this technology in the LimeSDR.
[Field Programmable Gate Arrays (FPGAs)][06] are semiconductor devices that are
based around a matrix of configurable logic blocks (CLBs)
connected via programmable interconnects.
FPGAs can be reprogrammed to desired application or functionality requirements after manufacturing.
This feature distinguishes FPGAs from Application Specific Integrated Circuits (ASICs),
which are custom manufactured for specific design tasks.

Some FPGAs have analog functions but FPGAs generally don't touch the analog world.
In contrast, the Lime FPRF deals directly with analog.
At the highest level of abstraction, the FPRF transmitter takes a digital data stream
and converts it into an analog wireless signals,
while the receiver perform the inverse operation.
Add to this the capability to program key parameters like the RF frequency,
gain, and bandwidth, and you have the essential ingredients of an FPRF chip.
The FPRF allows you to experiment with radio characteristics
by changing parameters on the fly.

![trans-path](http://img.deusm.com/eetimes/2014/02/1320986/fprf-pad-0005-02.jpg)
In the transmit path,
the first operation perfromed is to accepts data as
[In-phase (I Data) and Quadrature (Q Data)][07] words.
The transmit path applies the data to a pair of on-chip Digital to Analog Converters (DAC)
to convert it into two analog signals.
The user can choose to bypass the DACs and inject analog signals directly
into the device or monitor the DAC outputs.

The next operation involves filtering the analog signal.
This pass band filter is programmed by the user to a selectable set of bandwidths.
The filtering restricts the signals to the selected bandwidth,
and attenuates any out-of-band noise or aliasing from the DAC.

The next stage is a programmable baseband gain stage that can be user adjusted.
The signal is then mixed to directly give the required modulated RF frequency output.
This is done with a Phase Lock Loop (PLL) clock by a programmable ratio,
which generates a stable frequency radio frequency signal.

The programmable RF gain stage provides the final signal boost that is output from the FPRF device.
The transmit power level is sufficient for short range communications,
without any further amplification, or use external amplification to increase the range.

![recie-path](http://img.deusm.com/eetimes/2014/02/1320986/fprf-pad-0005-03.jpg)
On the receiver path, the FPRF device offers a choice of low noise amplifiers (LNAs).
A general broadband input stage is designed to handle RF inputs across a wide spectrum.
Other LNAs are optimized for enhanced performance for signals in specific frequency bands.

Next the mixer in the receive path uses the PLL clock to provide direct down conversion.
Programmable gain stages and filtering are applied,
before the analog signal is digitised and output as [I&Q data][08] streams.
Of course, the entire receiver path is also highly user programmable,
just like the transmit path.

Configuration of all the different elements is performed
via a [Serial Peripheral Interface (SPI)][09] into the control logic.
Each element is programmed by loading static data or the parameters can be changed on the fly.
The chip was designed to be highly flexible,
because one of the key applications is for cellular femto and pico cells.
These boxes act as local base stations for cell phones,
and link into the Internet to provide fast connectivity inside the home or small office.
The challenge in designing an RF chip for these applications
but for cellular systems that are different around the world.

https://www.youtube.com/watch?v=8IrO4mg2ToA

#  Myriad RF
Lime is a supporter of [MyriadRF][10],
a low cost universal radio platform, based on flexible and programmable integrated circuits.
The MyriadRF websit states,
"Myriad RF is a family of open source hardware and software projects for wireless communications, and a community that is working to make wireless innovation accessible to as many people as possible."

* [Lime Suite](https://myriadrf.org/projects/lime-suite/)

# LimeNet
[LimeNET][33] is the follow-up to the LimeSDR crowd campaign.
This new device is intended for use primarily as a mobile and IoT base station.
LimeNET base stations desires to transform the way telco networks run,
shifting the emphasis and value away from proprietary hardware to
open hardware with app stores on top.

The LimeNET platforms use Lime's LMS7002M field programmable RF transceiver
to provide continuous coverage between 100 kHz and 3.8 GHz, with a 120 MHz RF bandwidth.
The transceiver contains two transmit and two receive chains to enable 2×2 MIMO.
The platforms also run an Intel i7-7500U dual-core CPU running at 2.7/3.5 GHz.

* [LimeNET Micro radio platform for self-contained wireless networks](https://www.geeky-gadgets.com/limenet-micro-radio-platform-19-10-2018/)

# LimeSDR Application Ecosystem
Appears [Josh Blum][14] (a major [contributor to several SDR tools][17])
played a [major role][15] in the [LimeSuite software][16],
making sure that LimeSDR is well supported by SDR software tools/platfroms,
and to provide some example demonstrations.

* https://myriadrf.org/blog/limesdr-application-ecosystem/

Ubuntu App Stores - https://www.crowdsupply.com/lime-micro/limesdr/updates/ubuntu-app-store-progress?utm_source=LimeSDR+supporters&utm_campaign=cc95a5e8d2-EMAIL_CAMPAIGN_2017_05_16&utm_medium=email&utm_term=0_1e5a81cd57-cc95a5e8d2-112302893
In order to make it possible to browse and search the available apps without having to first configure an app-enabled system, two websites have been set up:

* https://limenet.limemicro.com/
* https://limesdr.limemicro.com/

## LMS Suite Software
The board’s host driver architecture, meanwhile, supports both the SoapySDR and UHD APIs. The firmware supports advanced features liked timed TX bursts and RX sample timestamps, “as required for use with GSM and other time-sensitive protocols,” says the project. The LimeSDR’s host driver is built on a “Lime Suite” low level library that handles programming and calibration of the LMS7002M FPRF transceiver, among other gnarly internal communications.

http://wiki.myriadrf.org/LMS_Suite
https://myriadrf.org/projects/lime-suite/
https://myriadrf.org/blog/limesuite-driver-architecture/

## SoapySDR
SoapySDR is the glue layer that sits between the LimeSDR’s driver
and SDR applications.
LimeSDR uses a wrapper (SoapyLMS7)
so it can be supported by SoapySDR or GrOsmoSDR.
This provides support for programming environments like
the Pothos framework, GNU Radio, GQRX, and CubicSDR.

https://github.com/pothosware/SoapySDR/wiki

## Snappy Ubuntu Core
Lime Microsystems has partnered with [Canonical][25],
so that the LimeSDR board can take advantage of [Snappy Ubuntu Core][26].
The Snappy version of Ubuntu features an app store, [hacker-proof updates][28], and a 128MB RAM footprint.
Canonical states this is the smallest, safest Ubuntu ever,
and they are particualty [targing IoT embedded devices][27]
(Ubuntu 15.04 includes Snappy).
It can be use in the cloud or on samll devices.
The IoT version of Snappy requires a 600MHz CPU and 128MB RAM,
only 40MB of which is directly used by the system,
while the rest is available for apps.
The system also needs 4GB of flash for factory reset and system rollback.

Lime claims that via the Ubuntu software ecosystem,
users will be able to download apps that put LimeSDR to a variety of uses:
an IoT gateway for smart-home products, a cellular base station,
a streaming media server, even radio astronomy.
Developers will be able to share and distribute their own creations as well.

To learn more about Snappy Ubuntu purpose, structure, installation, and usage,
I wrote an article about installing
Snappy Ubuntu on a Raspberry Pi 3.
**To be writen using**
###################################################
Ubuntu Core is specifically designed for IoT devices running Linux,
with a low hardware requirements,
and a new package manager called snappy.
Snappy replaces `apt-get` for this version of Ubuntu, which provides simpler,
faster, and more reliable updates, stronger security, and allows roll-backs in case something goes wrong.
Easy firmware updates are something missing in most connected device,
which means they are more vulnerable to potential hackers,
but with snappy security updates should be able to make it regularly,
so that if something like heartbleed occurs again, you know your router,
home automation gateway, connected washing machine, or robot will be soon patched automatically.

Let’s go through the hardware requirements first:

* Processor – 600 MHz processor (ARMv7 or greater, or x86)
* System Memory – 128 MB RAM or greater (The system itself uses 40 MB RAM)
* Storage – 4GB flash / storage for factory reset and system rollback

So the hardware requirements are not quite as low as something as OpenWRT,
but still lower than what you’d expect from Ubuntu,
so you could use an old laptop or PC as a development platform.

* starting at https://developer.ubuntu.com/en/snappy/
* [Canonical’s Snap: The Good, the Bad and the Ugly](https://thenewstack.io/canonicals-snap-great-good-bad-ugly/)
* [Ubuntu Core 16 Enables Snappy IoT](http://m.electronicdesign.com/dev-tools/ubuntu-core-16-enables-snappy-iot)
* [Snappy Ubuntu Core – An Entirely New Ubuntu Operating System For Clouds And Devices](https://www.unixmen.com/snappy-ubuntu-core-an-entirely-new-ubuntu-operating-system-for-clouds-and-devices/)
* [Getting Started With Snappy Ubuntu Core](https://www.unixmen.com/getting-started-with-snappy-ubuntu-core/)
* [Snapcraft is a build and packaging tool which helps you package your software as a snap](https://developer.ubuntu.com/en/snappy/build-apps/)
* [snapcraft.io](http://snapcraft.io/)
* [Ubuntu Snappy – What You Need to Know](https://www.maketecheasier.com/ubuntu-snappy-what-you-need-to-know/)
* [Docker on Snappy Ubuntu Core on a Raspberry Pi 2](https://darrenjw2.wordpress.com/2015/08/28/docker-on-snappy-ubuntu-core-on-a-raspberry-pi-2/)
* [Running Ubuntu Snappy inside Docker](http://andrea.corbellini.name/2015/03/25/running-ubuntu-snappy-inside-docker/)
* [How To Package and Publish a Snap Application on Ubuntu 18.04](https://www.digitalocean.com/community/tutorials/how-to-package-and-publish-a-snap-application-on-ubuntu-18-04?utm_source=DigitalOcean_Newsletter)

* [The New Minimalist Operating Systems](https://blog.docker.com/2015/02/the-new-minimalist-operating-systems/)
* [Docker: A Comparison of Minimalistic Operating Systems](https://www.inovex.de/blog/docker-a-comparison-of-minimalistic-operating-systems/)
* [Prime Time: Docker, Juju, and Snappy Ubuntu Core](https://insights.ubuntu.com/2015/07/20/prime-time-docker-juju-and-snappy-ubuntu-core/)
###################################################




## GNURadio
[GNURadio][31] is a gigantic suite of software,
and it’s a lot harder to code up in Python than it is to use the GUI.
The [LuaRadio project][32] trys to deal with these shortcomings bykeeping things easy to code
and keeping the codebase small and tidy.

Four-hour [Introduction to GNU Radio](https://www.youtube.com/playlist?list=PLA688X_YZoy8GrYWbe074IBDPt86Qi5f5)
by Tom Rondeau (the leader of the GNU Radio Project)
from the [2012 ARRL TAPR DCC](https://www.tapr.org/conf_dcc2012.html).

* [Getting Started with GNU Radio](https://hackaday.com/2015/11/11/getting-started-with-gnu-radio/)
* [GNU Radio first steps: a FM receiver](https://www.abclinuxu.cz/blog/jenda/2019/11/gnu-radio-first-steps-a-fm-receiver)
* [GNU Radio Workshop](http://ntms.org/files/MUD2019/MUD_GNR.pdf)
* [SDR and GNU Radio for Microwave](http://ntms.org/files/CowtownHamfestJan2019/CowtownHamfest_Jan2019_SDR_GNU_Radio_BobN5BRG.pdf)

## Pothos
[Pothos][11] is an [open source project][12] is a dataflow framework for
creating topologies of interconnected processing blocks.
Topologies can be distributed across hosts.
Pothos boasts an elegant framework API,
as well as a fully-functional graphical topology designer.
[Pothos SDR][13] is a development environment for Windows,
making it easier for Windows users to design and develop for SDR hardware.

* http://www.joshknows.com/projects
* http://www.pothosware.com/
* [Pothos features summary page](https://github.com/pothosware/pothos/wiki/Features)
* [Using the RTL-SDR in the Pothos Dataflow Processing Platform](http://www.rtl-sdr.com/using-rtl-sdr-pothos-dataflow-processing-platform/)
* [Sniffing ANT-FS with an RTL-SDR and MMDS Downconverter in Pothos](http://www.rtl-sdr.com/sniffing-ant-fs-with-an-rtl-sdr-and-mmds-downconverter-in-pothos/)

## LuaRadio
LuaRadio is a lightweight, embeddable flow graph signal processing framework for software-defined radio.
Like GNU Radio, LuaRadio is a flow graph signal processing framework, but [different](https://github.com/vsergeev/luaradio/blob/master/docs/6.comparison-gnuradio.md).

* [LuaRadio Gives Insight Into SDR](https://hackaday.com/2019/12/24/luaradio-gives-insight-into-sdr/)
* [LimeSDR LuaRadio support and Arch Linux package](https://myriadrf.org/blog/limesdr-luaradio-support-arch-linux-package/)

* http://luaradio.io/docs/reference-manual.html
* http://luaradio.io/examples/rtlsdr-wbfm-mono.html
* http://luaradio.io/docs/embedding-luaradio.html
* http://luaradio.io/docs/comparison-gnuradio.html

## SDRPlay
* [Your First GNU Radio Receiver With SDRPlay](https://hackaday.com/2015/11/12/your-first-gnu-radio-receiver-with-sdrplay/)

# Snap packages for LimeSDR
* [Snap packages for LimeSDR](https://www.crowdsupply.com/lime-micro/limesdr/updates/snap-packages)
* [Ubuntu Core 16 gets smaller and snappier](http://hackerboards.com/ubuntu-core-16-gets-smaller-goes-all-snaps/)
* [Appliance builder guide: webcam](https://developer.ubuntu.com/en/snappy/guides/appliance-builder-guide-webcam/)
* [Ubuntu Snappy Core 16 Release Candidate 2 Out Now with Raspberry Pi 3 Fixes](http://news.softpedia.com/news/ubuntu-snappy-core-16-release-candidate-2-out-now-with-raspberry-pi-3-fixes-509736.shtml)

# Digital Signal Processing
* [three-part tutorial on using Octave](http://hackaday.com/2016/06/30/tutorial-on-signal-processing-in-linux-with-octave/)
* [ MATLAB under Linux](https://help.ubuntu.com/community/MATLAB)
* Scilab, Freemat, Sage, and Spyder

# LimeSDR Projects
* [GPS Fake-out with the LimeSDR](http://sdrgps.blogspot.co.uk/2016/12/gps-fake-out-with-limesdr.html)


##############################
[MyRiad RF has confirmation][29] that LimeSDR can be made to work together with an
Ubuntu Virtualbox VM, on top of Windows 10, and via USB passthrough from the host computer.
##############################

##############################
Training

* [A Visual Introduction to DSP for SDR](http://visual-dsp.switchb.org/) - time-frequency browser designed for scientific visualization of the spectral domain.
##############################

##############################
Other Tools

* [baudline](http://www.baudline.com/index.html)

* [Amazon EC2 F1 Instances](https://aws.amazon.com/ec2/instance-types/f1/) are a compute instance with field programmable gate arrays (FPGAs) that you can program to create custom hardware accelerations for your application.
##############################

# Be Careful
* [The Great Ohio Key Fob Mystery, Or “Honey, I Jammed The Neighborhood!”](https://hackaday.com/2019/05/15/the-great-ohio-key-fob-mystery-or-honey-i-jammed-the-neighborhood/)



[01]:https://www.crowdsupply.com/lime-micro
[02]:http://www.eetimes.com/author.asp?doc_id=1320986
[03]:http://www.limemicro.com/
[04]:https://myriadrf.org/blog/lms7002m-datasheet-now-available-wiki/
[05]:http://www.rakon.com/products/families/download/file?fid=39.225
[06]:https://en.wikipedia.org/wiki/Field-programmable_gate_array
[07]:https://en.wikipedia.org/wiki/In-phase_and_quadrature_components
[08]:http://whiteboard.ping.se/SDR/IQ
[09]:https://learn.sparkfun.com/tutorials/serial-peripheral-interface-spi
[10]:https://myriadrf.org/
[11]:http://www.pothosware.com/#overview
[12]:https://github.com/pothosware/pothos/wiki
[13]:http://www.joshknows.com/blog/67/AnnouncingPothosSdrDevEnvironment
[14]:https://www.linkedin.com/in/josh-blum-1681537a
[15]:http://www.joshknows.com/blog/74/LimesdrOnTheCrowdFundingCampaignTrail
[16]:https://myriadrf.org/projects/lime-suite/
[17]:http://www.joshknows.com/projects
[18]:http://www.limemicro.com/press-releases/ee-backs-lime-microsystems-crowdfunding-campaign-leapfrog-wireless-innovation-uk/
[19]:http://www.limemicro.com/press-releases/ubuntu-app-store-announced-limesdr-developed-applications/
[20]:http://www.rtl-sdr.com/about-rtl-sdr/
[21]:https://en.wikipedia.org/wiki/Software-defined_radio
[22]:https://www.amazon.com/gp/product/B008S7AVTC/ref=oh_details_o00_s00_i00?ie=UTF8&psc=1
[23]:https://greatscottgadgets.com/hackrf/
[24]:https://myriadrf.org/projects/limesdr/
[25]:http://www.canonical.com/
[26]:http://www.ubuntu.com/internet-of-things
[27]:http://hackerboards.com/lightweight-snappy-ubuntu-core-os-targets-iot/
[28]:http://thenewstack.io/snappy-ubuntu-core-powering-microcontrollers-to-microservices/
[29]:https://myriadrf.org/blog/limesdr-native-windows-via-ubuntu-vm/?utm_source=LimeSDR+supporters&utm_campaign=7c106bb9cf-Project_Update_Lime_Beta_7_7_2016&utm_medium=email&utm_term=0_1e5a81cd57-7c106bb9cf-112302893
[30]:http://electronics.kitchen/misc/freesrp/
[31]:http://gnuradio.org/
[32]:http://luaradio.io/
[33]:http://www.limenet.net
[34]:
[35]:
[36]:
[37]:
[38]:
[39]:

