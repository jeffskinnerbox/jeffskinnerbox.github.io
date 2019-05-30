Title: RTL-SDR Software Defined Radio (SDR) for $20
Date: 2013-05-26 00:01
Category: Electronics
Tags: RTL-SDR, Software Defined Radio
Slug: rtl-sdr-software-defined-radio-SDR-for-20
Author: Jeff Irland
Image: NooElec_TV28T.jpg
Summary: RTL-SDR is a very cheap software defined radio that uses a TV tuner dongle based on the RTL2832U chipset. Essentially, this means that a cheap $20 TV tuner can be used as a computer based radio scanner.  A scanner capability that would have cost hundreds of dollars just a few years ago.

While researching the GNU Radio project, I came upon references to the <a href="http://gnuradio.org/redmine/projects/gnuradio/wiki/Hardware">RTL2832 TV tuners</a>. These dongle are made to receive and decode the European standard digital television, <a href="http://en.wikipedia.org/wiki/DVB-T">Digital Video Broadcasting — Terrestrial (DVB-T)</a>. (By the way, the North American standard is <a href="http://en.wikipedia.org/wiki/ATSC_tuner">Advanced Television Systems Committee (ATSC)</a>, and not  compatible with DVB-T, so this will not work in North America for TV reception.)  In 2012, <a href="http://thread.gmane.org/gmane.linux.drivers.video-input-infrastructure/44461/focus=44461">Antii Palosaari</a>, discovered that there is a device mode for the Realtek DVB-T device chip (<a href="http://www.realtek.com.tw/products/productsView.aspx?Langid=1&amp;PFid=35&amp;Level=4&amp;Conn=3&amp;ProdID=257">RTL2832U</a>) in which raw samples can be captured and transferred to a host computer. This feature enables this device to be used as an inexpensive "front end"  for a <a href="http://en.wikipedia.org/wiki/Software-defined_radio">Software Defined Radio (SDR)</a> that could be implemented on a PC or other device.

A SDR provide the ability to sample and record the electromagnetic energy (or <a href="http://en.wikipedia.org/wiki/Radio_frequency">radio frequency</a>, called "RF" for short) with no preconceived idea as to the structure of the RF <a href="http://en.wikipedia.org/wiki/Signal_(information_theory)">signal</a>.  In a sense, you can interact with the RF signal in its must fundamental form.  In addition, a SDR allows you to implement, by means of software, a radio communication system where components that have been typically implemented in hardware.

SDR solutions for the professional-grade applications and amateur radio have been around for some time, but the appearance of cheap solutions for the hacker is new.  There are general purpose SDR platforms for over $1000, like the Ettus Research <a href="http://www.ettus.com/">Universal Software Radio Peripheral (USRP)</a>, the $525 <a href="http://www.rfspace.com/RFSPACE/SDR-IQ.html">SDR-IQ Receiver</a>, to the $450 <a href="http://nuand.com/bladeRF">bladeRF</a> from the Kickstarter Nuand or Great Scott's <a href="http://www.forbes.com/sites/andygreenberg/2012/10/19/darpa-funded-radio-hackrf-aims-to-be-a-300-wireless-swiss-army-knife-for-hackers/">DARPA-Funded</a> <a href="http://ossmann.blogspot.com/2012/06/introducing-hackrf.html">HackRF</a> for an estimate $300, and now the $20 hacker grade dongle discussed here.  But unlike most of the other referenced solutions,  the dongle  requires a PC, or some sort of attached processor, to provide the signal processing.

In all SDR solutions, a significant amounts of the <a href="http://en.wikipedia.org/wiki/Signal_processing">signal processing</a> is handed over to a numerical processor, rather than being done in special-purpose RF hardware. Such a design produces a radio which can receive and transmit widely different radio protocols (referred to as a waveform) based solely on the software used.  So in a SDR solution, the electromagnetic waveform is rapidly sampled, the sample values are converted to numerical values, and these numbers are manipulated via a discipline called <a href="http://en.wikipedia.org/wiki/Digital_signal_processing">digital signal processing (DSP)</a>.  Ultimately, the resulting DSP numerical values produced are converted to an analog signal that goes to a speaker, TV, or other such output device.

The DVB-T dongles can provide a critical component of a cheap SDR, since the chip allows transferring the raw I/Q samples to the host. What <a href="http://www.ni.com/white-paper/4805/en">I/Q samples</a> are is well beyond what I wish to describe here, but let it be said that practical hardware design concerns make I/Q data the critical for signal processing.  So the fact the dongle does the digital sampling, called a <a href="http://en.wikipedia.org/wiki/Analog-to-digital_converter">analog-to-digital converter (ADC)</a>, and outputs I/Q samples, makes it a valuable asset for a SDR solution.

So how does one get your PC configured to take the dongles I/Q output and create a SDR?  There is <a href="http://gnuradio.org/redmine/projects/gnuradio/wiki">GNU Radio</a> (where this post first begun), but a simpler starting point would be the popular, easy, and open source <a href="http://sdrsharp.com/">SDR#</a>.  SDR# can perform the required signal processing in an intuitive user interface (if your into Ham Radio, or bit of a RF hacker, and such).  Unfortunately, I couldn't get SDR# (a MS Windows application) to operate under  Linux and I had to resorted to some simpler utilities.
<h2>The Dongle</h2>
All this sounds exciting to me (what a geek!) so I <a href="http://www.amazon.com/gp/product/B008S7AVTC/ref=oh_details_o00_s00_i00?ie=UTF8&amp;psc=1">purchased from Amazon</a> one of the dongles, specifically the NooElec TV28T v2 USB DVB-T,  FM+DAB &amp; RTL-SDR Receiver, RTL2832U &amp; R820T Tuner, MCX Input.
<ul>
<ul>
	<li><strong>NooElec TV28T</strong> - This is the <a href="http://www.nooelec.com/store/software-defined-radio/sdr-receivers/tv28tv2.html#.UZQmefH_5k8">manufacture</a> and model name for the device</li>
	<li><strong>DVB-T</strong> - This device is made to receive and decode the European standard digital television, <a href="http://en.wikipedia.org/wiki/DVB-T">Digital Video Broadcasting — Terrestrial (DVB-T)</a></li>
	<li><strong>FM+DAB &amp; RTL-SDR Receiver</strong> - The device can also receive FM radio and <a href="http://en.wikipedia.org/wiki/Digital_Audio_Broadcasting">Digital Audio Broadcasting (DAB)</a> used in several countries, particularly in Europe. <a href="http://www.rtlsdr.org/">RTLSDR</a> is the popular name give to this class of device, which contain the RTL2832U chip, which can be hacked for SDR use.</li>
	<li><strong>RTL2832U &amp; R820T Tuner</strong> - These are the <a href="http://www.realtek.com.tw/products/productsView.aspx?Langid=1&amp;PFid=35&amp;Level=4&amp;Conn=3&amp;ProdID=257">DVB-T demodulator</a> and <a href="https://www.google.com/url?sa=t&amp;rct=j&amp;q=&amp;esrc=s&amp;source=web&amp;cd=1&amp;cad=rja&amp;ved=0CCwQFjAA&amp;url=http%3A%2F%2Fsuperkuh.com%2Fgnuradio%2FR820T_datasheet-Non_R-20111130_unlocked.pdf&amp;ei=PCuUUbnGI-e80QHfwoDwDw&amp;usg=AFQjCNFUMXBDm9QvhzhIzJGckOLi8n5gaQ&amp;sig2=FA2mXxtZhkdokBQ3oegvdQ&amp;bvm=bv.46471029,d.dmQ">TV Tuner</a> chips used in the device.</li>
	<li> <strong>MCX Input</strong> – Is a 3.6 millimeter (0.14 in) micro coaxial (MCX) coaxial RF connector 30% smaller that Sub-Miniature version B (SMB) connectors that are typically used in the USA.  MCX is a standard in Europe. It provides broadband capability from DC to 6 GHz.</li>
</ul>
</ul>
<a href="http://jeffskinnerbox.files.wordpress.com/2013/05/71ratxr2wjl-_sl1500_.jpg">
    <img class="img-rounded" style="margin: 0px 8px; float: left" alt="71RaTxr2WJL._SL1500_" src="/images/NooElec_TV28T.jpg" width="180" height="180" />
</a>
 NooElec TV28T
From the research I have done, I have found that the NooElec TV28T dongle provides an approximate tuning range of 25MHz-1700MHz for the SDR.  It has been demonstrated to be compatible with most SDR software, including SDR#.  You can pick up FM radio but  don't expect to pick up long-wave or AM broadcasts since their spectrum lies below 25MHz. You can listen to the 12m 10m 6m 2m 1.25m 70cm 33cm and 23cm ham band, as well as CB, Marine VHF, RC Band, FRS, GMRS, and Airband (Aviation).

The dongle will not provide the desired SDR function out of the box.  It must first be configured (aka hacked) to stream the I/Q samples to the USB output.  This is where <a href="http://sdr.osmocom.org/trac/wiki/rtl-sdr">Antii Palosaari's</a> discovery comes into play.  The wiki's <a href="http://rtlsdr.org/">rtlsdr.org</a> and <a href="http://sdr.osmocom.org/trac/">OsmoSDR</a> are good sources for disparate information concerning RTL2832U based SDR, typically called RTL-SDR.  For my purposes, I wanted to get something initially working on my PC (Linux OS) but ultimately I wanted to have the dongle attached to a Raspberry Pi (RPi) and have the RPi be a server or archive of I/Q samples (sort of a intelligent wide band scanner as done in <a href="http://www.jpmeijers.com/drupal/node/15">Raspberry Pi and DVB-T receivers</a> and here <a href="http://www.hamradioscience.com/raspberry-pi-as-remote-server-for-rtl2832u-sdr/">Raspberry Pi as Remote Server for RTL2832u SDR</a> and here <a href="http://www.jpmeijers.com/drupal/node/15">SDR with Raspberry Pi and DVB-T receivers</a>) that could be processed by my PC.  Therefore, the first step is to get the dongle and a good SDR processor working on my PC.
<h2>Building rtl-sdr Library and Capture Tools</h2>
The  OsmoSDR wiki has some good instructions on <a href="http://sdr.osmocom.org/trac/wiki/rtl-sdr#Buildingthesoftware">how to build the rtl-sdr software</a>. I basically followed the wiki's instructions but I had to first install <a href="http://www.cmake.org/">cmake</a> (<code>sudo apt-get install cmake</code>) and <a href="http://www.libusb.org/">libusb</a> (<code>sudo apt-get install libusb-1.0-0-dev</code>) to get a successful make.  I then using the following commands:

```shell
cd ~/src
git clone git://git.osmocom.org/rtl-sdr.git
cd rtl-sdr/
mkdir build
cd build
cmake ../
make
sudo make install
sudo ldconfig
cmake ../ -DINSTALL_UDEV_RULES=ON
```

The result is source code placed in <code>~/src/rtl-sdr/build/src</code> and the executables are placed in <code>/usr/local/bin</code>: rtl_adsb, rtl_eeprom, rtl_fm, rtl_sdr, rtl_tcp, rtl_test.  The documentation for these utilities is nearly non-existent.  The only documentation I could fine is for the rtl_fm, a posting called <a href="http://kmkeen.com/rtl-demod-guide/index.html">Rtl_fm Guide: The long lost documentation</a>.  If you use the command line option <code>--help</code>, you will get some description for each of the tools (see the very end of this post for some screen captures).  Here is a short description and some example usages:
<ul>
<ul>
	<li><strong>rtl_sdr</strong> - This is an I/Q recorder for RTL2832 based DVB-T receivers. To send 10 samples to stdout, and sampled at 1.8Ms/s with frequency tuned to 392MHz: <code>rtl_sdr -s1.8e6 -f392e6 -n10 -.</code></li>
	<li><strong>rtl_test</strong> - Bench-marking tool for RTL2832 based DVB-T receivers.  The <code>-t</code> option only works for Elonics E4000 tuners (Therefore, on non-E4000 tuners, you can not test for the tuning range).  To check the possible tuning range: <code>rtl_test -t</code>.  To check the maximum sample-rate possible on your machine (change the rate down until no sample loss occurs): <code>rtl_test -s 2.5e6</code></li>
	<li><strong>rtl_fm</strong> - A simple narrow band FM demodulator for RTL2832 based DVB-T receivers.  Rtl_fm is a general purpose analog demodulator. It can handle FM, AM and SSB. It can scan more than a hundred frequencies a second. Make sure <code>rtl_fm</code> and the player are both set to use the same data rate.  Tune into a local FM radio station : <code>rtl_fm -W -f 99.5M | play -r 32k -t raw -e signed-integer -b 16 -c 1 -V1 -</code></li>
	<li><strong>rtl_tcp</strong> -  An I/Q sample server for RTL2832 based DVB-T receivers.  I/Q samples are streamed to a specified IP address and port.</li>
	<li><strong>rtl_adsb</strong> - A simple Automatic dependent surveillance-broadcast (ADS-B) decoder.  ADS-B is a surveillance technology for tracking aircraft as part of the Next Generation Air Transportation System (NextGen).</li>
	<li><strong>rtl_eeprom</strong> - An EEPROM programming tool for RTL2832 based DVB-T receivers.</li>
</ul>
</ul>
<h2>First Run of the Dongle</h2>
<a href="http://jeffskinnerbox.files.wordpress.com/2013/05/sdrsharp.png">
    <img class="img-rounded" style="margin: 0px 8px; float: left" alt="sdrsharp" src="/images/sdrsharp.png?w=150" width="150" height="107" />
</a>
The first thing to do is to plug in the dongle and run the test <code>rtl_test -t</code>.  It gave me an error statement expressing "installing the udev rules file rtl-sdr.rules".  The site "<a href="http://www.instructables.com/id/rtl-sdr-on-Ubuntu/step3/Setup-udev-rules/">rtl-sdr on Ubuntu</a>" provides some instructions on how to fix this.  The command <code>lsusb | grep Realtek</code> gives me the information I need to create the following entry into <code>/etc/udev/rules.d</code>:
<p style="padding-left:30px;"><code>SUBSYSTEM=="usb", ATTRS{idVendor}=="0bda", ATTRS{idProduct}=="2838", GROUP="adm", MODE="0666", SYMLINK+="rtl_sdr"</code></p>
After another try, I got a successful test.  Next, I sent ten I/O samples to stdout and then tuned into a local FM radio station using these commands:
<p style="padding-left:30px;"><code>rtl_sdr -s1.8e6 -f392e6 -n10 -
rtl_fm -W -f 99.5M | play -r 32k -t raw -e signed-integer -b 16 -c 1 -V1 -</code></p>
<h2>Getting SDR# Running in Linux (didn't work)</h2>
The  rtlsdr.org wiki has some instructions on <a href="http://rtlsdr.org/softwarelinux">how to get SDR# working within Linux</a>.  Also, the <a href="http://sdrsharp.com/">SDR# home page</a> has a link called <a href="http://pastebin.com/tgYwRBQt">One shot install script for Linux</a>. Both these sites require you to build the software from source code. Mono is able to run Microsoft .NET applications in Linux.  I attempted this and got errors that I could not figure out (I'm not a MS Windows developer type and I'm not interested becoming one!).

Given this, I chose a different path. I found another posting that claim to <a href="http://opensource.telkomspeedy.com/wiki/index.php/SDR:_SDRSharp_Ubuntu_12.04">get SDR# running in Linux</a>. In this case, only executable will be loaded, not source code that needs to be compiled. You can download SDR# executable from this <a href="http://sdrsharp.com/index.php/downloads">posting</a>.  You'll also need to install <a href="http://www.mono-project.com/Main_Page">mono</a> and <a href="http://www.portaudio.com/">PortAudio</a>.  Here is how I did it:

```shell
sudo apt-get install mono-complete monodevelop
sudo apt-get install libportaudio2
cd ~/src
mkdir sdrsharp
cd sdrsharp
```

Within <code>~/src/sdrsharp</code>, install the downloaded SDR# zip file and unzip it.

```shell
cd sdr-nightly
ln -s /usr/local/lib/librtlsdr.so librtlsdr.dll
ln -s /usr/lib/i386-linux-gnu/libportaudio.so.2 libportaudio.so
```

Note, for the above link, you may need to use <code>locate libportaudio.so.2</code> to find the PortAudio library.

To test things out, I ran the application using mono sdrsharp.exe and got a core dump.  I attempted this again using the stable version of SDR# instead of the nightly build and got the same results.  After the typical thrashing about, I found a <a href="https://lists.ubuntu.com/archives/ubuntu-mono/2013-February/041580.html">bug report for this problem</a>.  Also see "<a href="http://epic.geek.nz/page/2012/12/29/sdr-software-good-bad-and-ugly/">SDR Software – Good, bad and very ugly</a>".  Also, there seems to be some sort of <a href="http://dangerousprototypes.com/2012/08/05/confusion-over-sdr-vs-opensdrsharp/">dispute between SDR# and a new group calling itself Open SDR#</a>.  I'm not sure, but what appears to be at the heart of this is the level of support of SDR# within Linux.  All this is disappointing since SDR# is a very popular tool and I wish I could find away to make use of it within Linux.

The next logical SDR tool to try would be the Linux-based <a href="http://www.oz9aec.net/index.php/gnu-radio/gqrx-sdr">Gqrx SDR receiver</a>, but in this case, it is dependent on <a href="http://gnuradio.org/redmine/projects/gnuradio/wiki">GNU Radio</a>.  I'm attempting to delay my conquest of GNU Radio until I do some experimenting with the dongle.  So lets turn our attention to a much simpler tool.
<h2>Getting RTL-SDR Scanner Running</h2>
<a href="http://eartoearoak.com/software/rtlsdr-scanner">RTLSDR Scanner</a> is a simple frequency scanning GUI using the OsmoSDR rtl-sdr library.  I more or less followed the <a href="http://eartoearoak.com/software/rtlsdr-scanner/rtlsdr-scanner-installation">installation instructions</a> but they are confusing/out-of-date and you'll needed to do some adjustments.  The OsmoSDR rtlsdr library has already been installed earlier in the text, so its not listed here.  To get the required files for RTLSDR Scanner:

```shell
sudo apt-get install python python-wxgtk2.8 python-matplotlib python-numpy
cd ~/src
git clone git://github.com/roger-/pyrtlsdr.git
cd pyrtlsdr
sudo setup.py
cd ~/src
git clone git://github.com/EarToEarOak/RTLSDR-Scanner.git
```

<a href="http://jeffskinnerbox.files.wordpress.com/2013/05/demo_waterfall.jpg">
    <img class="img-rounded" style="margin: 0px 8px; float: left" alt="demo_waterfall.py" src="/images/demo_waterfall.jpg" width="250" height="140" />
</a>
With this, I found I could run <code>~/src/pyrtlsdr/demo_waterfall.py</code>.  Make sure to read the comments in the file to understand how to change the center frequency, gain, etc.  The image below is <code>demo_waterfall.py</code> tuned to the amateur radio <a href="http://en.wikipedia.org/wiki/6-meter_band">6 meters band</a>.  The image is called a <a href="http://en.wikipedia.org/wiki/Spectrogram">spectrogram</a> (sometimes call spectral waterfall) is a dynamic, visual representation of the spectrum of frequencies in the RF signal.  Blue is low signal strength, where yellow, and red are higher strengths.

To get
<code>~/src/RTLSDR-Scanner/src/rtlsdr_scan.py</code> to work, I had to do some coping of files as shown below:

```shell
cp ~/src/pyrtlsdr/rtlsdr/rtlsdr.py  ~/src/RTLSDR-Scanner/src/rtlsdr.py
cp ~/src/pyrtlsdr/rtlsdr/librtlsdr.py  ~/src/RTLSDR-Scanner/src/librtlsdr.py
```

<a href="http://jeffskinnerbox.files.wordpress.com/2013/05/rtlsdr-scanner.jpg">
    <img class="img-rounded" style="margin: 0px 8px; float: right" alt="rtlsdr_scan.py" src="/images//rtlsdr-scanner.jpg" width="250" height="145" />
</a>
The image below is from <code>rtlsdr_scan.py</code>, again tuned to the amateur radio 6 meters band.  Here again you see the signal strength of the individual amateur radios as vertical spikes.
So we now have auditory and visual proof the dongle is doing its job. Now its on to <a href="http://jeffskinnerbox.wordpress.com/2013/07/08/gnu-radio-and-gqrx-sdr-receiver/">GNU Radio</a>!
<h2>Command-Line Options for RTLSDR Capture Tools</h2>
For reference purposes, below are screen shots of the RTLSDR capture tool's command line options.
<p>
<a href="http://jeffskinnerbox.files.wordpress.com/2013/05/rtl_test-s.jpg"><img class="float" alt="rtl_test -s" src="http://jeffskinnerbox.files.wordpress.com/2013/05/rtl_test-s.jpg?w=150" width="150" height="118" /></a> rtl_test -s
<a href="http://jeffskinnerbox.files.wordpress.com/2013/05/rtl_test1.jpg"><img class="float" alt="rtl_test" src="http://jeffskinnerbox.files.wordpress.com/2013/05/rtl_test1.jpg?w=150" width="150" height="138" /></a> rtl_test

<a href="http://jeffskinnerbox.files.wordpress.com/2013/05/rtl_tcp.jpg"><img class="float" alt="rtl_tcp" src="http://jeffskinnerbox.files.wordpress.com/2013/05/rtl_tcp.jpg?w=150" width="150" height="118" /></a> rtl_tcp
<a href="http://jeffskinnerbox.files.wordpress.com/2013/05/rtl_sdr1.jpg"><img class="float" alt="rtl_sdr" src="http://jeffskinnerbox.files.wordpress.com/2013/05/rtl_sdr1.jpg?w=150" width="150" height="110" /></a> rtl_sdr 

<a href="http://jeffskinnerbox.files.wordpress.com/2013/05/rtl_adsb.jpg"><img class="float" alt="rtl_adsb" src="http://jeffskinnerbox.files.wordpress.com/2013/05/rtl_adsb.jpg?w=150" width="150" height="88" /></a> rtl_adsb
<a href="http://jeffskinnerbox.files.wordpress.com/2013/05/rtl_fm.jpg"><img class="float" alt="rtl_fm" src="http://jeffskinnerbox.files.wordpress.com/2013/05/rtl_fm.jpg?w=150" width="150" height="138" /></a> rtl_fm
