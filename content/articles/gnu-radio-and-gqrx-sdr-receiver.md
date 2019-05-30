Title: GNU Radio and Gqrx SDR Receiver
Date: 2013-07-08 00:01
Category: Electronics
Tags: RTL-SDR, Software Defined Radio
Slug: gnu-radio-and-gqrx-srd-receiver
Author: Jeff Irland
Image: gnu_radio_logo.png
Summary: GNU Radio is a free, open-source software development toolkit that provides signal processing blocks to implement software defined radios. It can be used with external RF hardware to create software-defined radios, or without hardware in a simulation-like environment.

<a href="http://gnuradio.org/redmine/projects/gnuradio/wiki/GNURadioCompanion">
    <img class="img-rounded" style="margin: 0px 8px; float: left" alt="grc logo" src="/images/gnu_radio_logo.png" width="256" height="256" />
</a>
In <a href="http://jeffskinnerbox.wordpress.com/2013/05/26/rtl-sdr-software-defined-radio-sdr-for-20/">my last post</a>, I was using the <a href="http://gnuradio.org/redmine/projects/gnuradio/wiki/Hardware">RTL2832 TV tuner</a> dongle to get a simple <a href="http://en.wikipedia.org/wiki/Software-defined_radio">Software Defined Radio (SDR)</a> operational.  I wanted to use the <a href="http://sdrsharp.com/">SDR#</a> program as my receiver but found that the MS Windows tool would not work and so I targeted <a href="http://www.oz9aec.net/index.php/gnu-radio/gqrx-sdr">Gqrx</a> as an alternative. Gqrx is dependent on the <a href="http://gnuradio.org/redmine/projects/gnuradio/wiki">GNU Radio</a>.  So in this post, I plan to get Gqrx and GNU Radio up and operational with the <a href="http://rtlsdr.org/">RTL-SDR dongle</a>.  I spend some time with other tools to help further verify (with mixed success) that GNU Radio is working.

The contain here comes from multiple source and I attempt to list those sources below.  For a good video to get a sense of what your in for, check out this <a href="http://dangerousprototypes.com/2013/05/22/tutorial-kali-linux-with-gnu-radio-gqrx-and-rtl-sdr-dongle/">video</a>. Also, this <a href="http://blog.opensecurityresearch.com/2012/06/getting-started-with-gnu-radio-and-rtl.html">post</a> covers many of the topics here.

GNU Radio is a free &amp; open-source software development toolkit that provides signal processing blocks to implement software defined radios. It can be used with readily-available low-cost external RF hardware to create software-defined radios, or without hardware in a simulation-like environment. It is being used in hobbyist, academic, and commercial environments to support both wireless communications research and real-world radio systems. <a href="http://radioware.nd.edu/documentation">
</a>

Gqrx is an experimental AM, FM and Single Side Band (SSB) software defined receiver implemented using GNU Radio and the Qt GUI toolkit. Currently it works on Linux and can use the RTL_SDR dongles as input source.

Also within this post, I venture out from gqrx to examine a few other tools.  I don't cover much territory, nor have much success.  The insperation to examine these other tools comes mainly from the lengthy post "<a href="http://superkuh.com/rtlsdr.html#simple_ra">RTL-SDR and GNU Radio with Realtek RTL2832U [Elonics E4000/Raphael Micro R820T] software defined radio receiver</a>".  Also check out "<a href="http://blog.opensecurityresearch.com/2012/06/getting-started-with-gnu-radio-and-rtl.html">Getting Started with GNU Radio and RTL-SDR (on Backtrack)</a>".
<h2>Build GNU Radio on Ubuntu</h2>
The GNU Radio web site has <a href="http://gnuradio.org/redmine/projects/gnuradio/wiki/InstallingGR#Using-the-build-gnuradio-script">specific instructions</a> and a build script for installing it on Ubuntu (I'm using version 13.04).  This process claims it may take 1-2 hours to do the install (for me it ran in 1 hour 14 minutes).  The steps are as follows:

```shell
cd ~/src
mkdir ~/gnuradio
cd ~/gnuradio
wget http://www.sbrac.org/files/build-gnuradio && chmod a+x ./build-gnuradio && ./build-gnuradio --verbose
```

When prompted, tell it to proceed and give it <code>sudo</code> privilege by typing "Y". Because of the <code>--verbose</code> option, you will see a lot of text whizzing by as the <code>build-gnuradio</code> script does its thing. You’ll also see a percentage complete indicator as the script works its way down it tasks.

The GNU Radio build creates a large variety of tools which get installed into <code>/usr/local/bin</code>.  You also notice that tools not directly related to GNU Radio are also created. I'll leave it for another time to understand and explain the GNU Radio environment.
<h2>The "Hello World" of GNU Radio</h2>
<a href="http://jeffskinnerbox.files.wordpress.com/2013/06/dial_tone-grc-home-jeff-gnu-radio-companion_006.png">
    <img class="img-rounded" style="margin: 0px 8px; float: left" alt="dial_tone.grc - -home-jeff - GNU Radio Companion_006" src="/images/dial_tone-grc-home-jeff-gnu-radio-companion.png" width="250" height="138" />
</a>
To verify that the software is working, best thing is to create the typical "Hello, World" program, just we might have done for our first foray into C++, Python, or other programming language.  In the world of GNU Radio, this program has come to be the phone dial tone. To do this, I followed the video <a href="http://www.youtube.com/watch?v=xxe87CdIq-s">The "Hello World" of GNU Radio: Dial Tone</a> and the <a href="http://gnuradio.org/redmine/projects/gnuradio/wiki/TutorialsWritePythonApplications">gnuradio.org</a>.  I did this using the <a href="http://gnuradio.org/redmine/projects/gnuradio/wiki/GNURadioCompanion">GNU Radio Companion</a> (executable located at <code>/usr/local/bin/gnuradio-companion</code>).  GNU Radio Companion (GRC) is a graphical tool for creating signal flow graphical models and generating Python source code for the model created.

GRC's generated flow and code for the "Hello, World" program is listed below. The Python code for the dial tone program was placed in the home directory, and in my case, it was called <code>dail_tone.py</code>. While it can be executed via the <code>gnuradio-companion</code>, it can also be executed via <code>python dial_tone.py</code>. The user interface for the GRC and the corresponding Python code it generated is listed below:

```python

#!/usr/bin/env python
##################################################
# Gnuradio Python Flow Graph
# Title: Dial Tone
# Author: Jeff Irland
# Description: "Hello, World" program - produces phone dial tone
# Generated: Sat Jun 22 21:24:56 2013
##################################################

from gnuradio import analog
from gnuradio import audio
from gnuradio import blocks
from gnuradio import eng_notation
from gnuradio import gr
from gnuradio import window
from gnuradio.eng_option import eng_option
from gnuradio.gr import firdes
from gnuradio.wxgui import fftsink2
from gnuradio.wxgui import forms
from gnuradio.wxgui import scopesink2
from grc_gnuradio import wxgui as grc_wxgui
from optparse import OptionParser
import wx

class dial_tone(grc_wxgui.top_block_gui):

	def __init__(self):
		grc_wxgui.top_block_gui.__init__(self, title="Dial Tone")
		_icon_path = "/usr/share/icons/hicolor/32x32/apps/gnuradio-grc.png"
		self.SetIcon(wx.Icon(_icon_path, wx.BITMAP_TYPE_ANY))

		##################################################
		# Variables
		##################################################
		self.samp_rate = samp_rate = 32000
		self.noise_slider = noise_slider = .005

		##################################################
		# Blocks
		##################################################
		_noise_slider_sizer = wx.BoxSizer(wx.VERTICAL)
		self._noise_slider_text_box = forms.text_box(
			parent=self.GetWin(),
			sizer=_noise_slider_sizer,
			value=self.noise_slider,
			callback=self.set_noise_slider,
			label='noise_slider',
			converter=forms.float_converter(),
			proportion=0,
		)
		self._noise_slider_slider = forms.slider(
			parent=self.GetWin(),
			sizer=_noise_slider_sizer,
			value=self.noise_slider,
			callback=self.set_noise_slider,
			minimum=0,
			maximum=.1,
			num_steps=1000,
			style=wx.SL_VERTICAL,
			cast=float,
			proportion=1,
		)
		self.Add(_noise_slider_sizer)
		self.wxgui_scopesink2_0 = scopesink2.scope_sink_f(
			self.GetWin(),
			title="Scope Plot"
			sample_rate=samp_rate,
			v_scale=0,
			v_offset=0,
			t_scale=0,
			ac_couple=False,
			xy_mode=False,
			num_inputs=1,
			trig_mode=gr.gr_TRIG_MODE_AUTO,
			y_axis_label="Counts",
		)
		self.Add(self.wxgui_scopesink2_0.win)
		self.wxgui_fftsink2_0 = fftsink2.fft_sink_f(
			self.GetWin(),
			baseband_freq=0,
			y_per_div=10,
			y_divs=10,
			ref_level=0,
			ref_scale=2.0,
			sample_rate=samp_rate,
			fft_size=1024,
			fft_rate=15,
			average=False,
			avg_alpha=None,
			title="FFT Plot",
			peak_hold=False,
		)
		self.Add(self.wxgui_fftsink2_0.win)
		self.blocks_add_xx_0 = blocks.add_vff(1)
		self.audio_sink_0 = audio.sink(32000, "pulse", True)
		self.analog_sig_source_x_1 = analog.sig_source_f(samp_rate, analog.GR_COS_WAVE, 350, .1, 0)
		self.analog_sig_source_x_0 = analog.sig_source_f(samp_rate, analog.GR_COS_WAVE, 440, .1, 0)
		self.analog_noise_source_x_0 = analog.noise_source_f(analog.GR_GAUSSIAN, noise_slider, 0)

		##################################################
		# Connections
		##################################################
		self.connect((self.blocks_add_xx_0, 0), (self.wxgui_scopesink2_0, 0))
		self.connect((self.blocks_add_xx_0, 0), (self.audio_sink_0, 0))
		self.connect((self.analog_sig_source_x_0, 0), (self.blocks_add_xx_0, 2))
		self.connect((self.analog_sig_source_x_1, 0), (self.blocks_add_xx_0, 1))
		self.connect((self.analog_noise_source_x_0, 0), (self.blocks_add_xx_0, 0))
		self.connect((self.blocks_add_xx_0, 0), (self.wxgui_fftsink2_0, 0))

	def get_samp_rate(self):
		return self.samp_rate

	def set_samp_rate(self, samp_rate):
		self.samp_rate = samp_rate
		self.analog_sig_source_x_0.set_sampling_freq(self.samp_rate)
		self.analog_sig_source_x_1.set_sampling_freq(self.samp_rate)
		self.wxgui_fftsink2_0.set_sample_rate(self.samp_rate)
		self.wxgui_scopesink2_0.set_sample_rate(self.samp_rate)

	def get_noise_slider(self):
		return self.noise_slider

	def set_noise_slider(self, noise_slider):
		self.noise_slider = noise_slider
		self.analog_noise_source_x_0.set_amplitude(self.noise_slider)
		self._noise_slider_slider.set_value(self.noise_slider)
		self._noise_slider_text_box.set_value(self.noise_slider)

if __name__ == '__main__':
	parser = OptionParser(option_class=eng_option, usage="%prog: [options]")
	(options, args) = parser.parse_args()
	tb = dial_tone()
	tb.Run(True)
```

When the GRC flow execution button is pressed, the scope and FFT plots are are created as shown below:

<a href="http://jeffskinnerbox.files.wordpress.com/2013/06/dial-tone_005.png">
    <img class="img-rounded" style="margin: 0px 8px; float: left" alt="Dial Tone_005" src="/images/dial-tone_005.png" width="250" height="266" />
</a>

The build for GNU Radio also installs the RTL-SDR software, so it would be wise to test GNU Radio with the RTL_SDR hardware and make sure everything is operating as expected.  I want to make a simple FM receiver, comparable to what was done via <a href="http://kmkeen.com/rtl-demod-guide/index.html"><code>rtl_fm</code></a> in <a href="http://jeffskinnerbox.wordpress.com/2013/05/26/rtl-sdr-software-defined-radio-sdr-for-20/">RTL-SDR – Software Defined Radio (SDR) for $20</a>. Something equivalent to:
<p style="padding-left:30px;"><code>rtl_fm -W -f 99.5M | play -r 32k -t raw -e signed-integer -b 16 -c 1 -V1 -</code></p>
Using the following postings as a guide:
<ul>
<ul>
	<li><a href="http://www.youtube.com/watch?v=KWeY2yqwVA0">How To Build an FM Receiver with the USRP in Less Than 10 Minutes</a></li>
	<li><a href="http://cegt201.bradley.edu/projects/proj2011/sdr/update_files/FM_radio_receiver.pdf">Construction of an FM Receiver</a></li>
	<li><a href="http://files.meetup.com/2179791/FM-Demo-by-GNU-Radio.pdf">Assembling an FM Receiver Like Blazes by GNU Radio</a></li>
	<li><a href="http://blog.chris007.de/?p=391">Simple FM Receiver with OsmoSDR in GNURadio</a></li>
	<li><a href="http://dutchgnuradio.blogspot.com/2013/04/rtl2832u-based-wide-band-fm-receiver.html">RTL2832U Based Wide Band FM receiver using GNU RADIO</a></li>
</ul>
</ul>
I had sufficient success to convince myself that GNU Radio was work.
<h2>Building Gqrx on Ubuntu</h2>
Gqrx is a software defined AM, FM and SSB software defined radio receiver for RTL-SDR based dongles (as well as the <a href="http://en.wikipedia.org/wiki/Universal_Software_Radio_Peripheral">Universal Software Radio Peripherals</a> and <a href="http://sdr.osmocom.org/trac/wiki/Hardware">Osmo SDR devices</a>).  It features a  <a href="http://en.wikipedia.org/wiki/Qt_(framework)">Qt GUI</a>.  As a QT program, you'll need to make sure you have QT4 installed (version 5 will not work) and that you have the <a href="http://en.wikipedia.org/wiki/Qt_Creator"><code>qtcreator</code></a> tool is installed:

```shell
sudo apt-get install qt4-default
sudo apt-get install phonon-backend-gstreamer
```

Now download the source for <a href="http://www.oz9aec.net/index.php/gnu-radio/gqrx-sdr">Gqrx via its page on GitHub</a>  and extract it into your target directory. The posting <a href="http://www.thepowerbase.com/2012/06/getting-started-with-rtl-sdr/2/">Getting Started With RTL-SDR</a> and the <a href="https://github.com/csete/gqrx/blob/master/README.md">README</a> on the GitHub site where useful in understanding how to do the install.  I did the following:

```shell
git clone git://github.com/csete/gqrx.git
cd gqrx
qmake gqrx.pro
make
```

At this point, you should find the gqrx executable in <code>~/src/gqrx</code> directory.  Start up via <code>./gqrx</code> and you'll get the screen below (or set your values to equal this):
<p>
<a href="http://jeffskinnerbox.files.wordpress.com/2013/06/configure-i-o-devices_001.png">
    <img class="img-rounded" style="margin: 0px 8px; float: left" alt="Configure I-O devices_001" src="/images/configure-i-o-devices_001.png" width="301" height="346" />
</a>
<p>
Click "OK" and the screen below will pop up.  Make sure you have the RTL-SDR dongle plugged in and select the button on the top left to start processing data.  I have tuned the radio to a local FM station at 85.7MHz and listen to Washington Nationals vs. Phillies baseball!

<a href="http://jeffskinnerbox.files.wordpress.com/2013/06/gqrx-0-0-rtl0_004.png">
    <img class="img-rounded" style="margin: 0px 8px; float: left" alt="Gqrx 0.0 - rtl=0_004" src="/images/gqrx-0-0-rtl0_004.png" width="500" height="384" />
</a>
<h2>Building Multimode Radio Receiver</h2>
This radio receiver is capable of demodulating muitiple modes, specifically AM, FM, USB, LSB , WFM. TV-FM, PAL-FM. It's easy to use and  has an automated scanning and spectral zoom features where clicking on the spectrogram or panorama to tune to the frequency of interest.

Multimode documentation is sparse to non existent. The posts "<a href="http://foxgulch.com/WordPress/?p=615">Using the Realtek RTL2832 USB “dongle” as a gnuradio multimode receiver</a>" and "<a href="http://superkuh.com/rtlsdr.html#multimodeappnote">RTL-SDR and GNU Radio with Realtek RTL2832U [Elonics E4000/Raphael Micro R820T] software defined radio receiver</a>" and "<a href="http://blog.opensecurityresearch.com/2012/06/getting-started-with-gnu-radio-and-rtl.html">Getting Started with GNU Radio and RTL-SDR (on Backtrack)</a>" gave some important hints on how to install multimode and get it operational.  I did the following:

```shell
cd ~
svn co https://www.cgran.org/svn/projects/multimode/trunk/ ~/src/multimode
make install
```

When I executed <code>multimode.py</code>, it didn't product a display.  I suspect its some subtle Python code problem, or more likely.  incompatibility with the latest GNU Radio libraries.  For now, I'm going to abandon this.
<h2>GNU Radio Signal Scanner</h2>
<a href="http://www.techmeology.co.uk/gr-scan/">gr-scan</a> is a program  built upon GNU Radio, rtl-sdr, and the OsmoSDR Source Block.  This receiver constantly changes frequencies in a set order looking for a frequency that has someone transmitting. It is intended to scan a range of frequencies and print a list of discovered signals.  Installation involved the following steps:

```shell
cd ~./src
mkdir gr-scan
cd gr-scan
```

with your browser, download: <code>http://www.techmeology.co.uk/gr-scan/gr-scan-2012082301.tar.gz</code>

```shell
gzip -d gr-scan-2012082301.tar.gz
tar -xvvf gr-scan-2012082301.tar
cd gr-scan-2012082301
make
```

When I attempted to do the <code>make</code>, it complained about missing Gun Radio files.  I suspect the GNU Radio libraries and include files are layed out differently since the time <code>gr-scan</code> was designed (August of 2012).  I'm leaving fixing this to another time.
<h2>What's Next</h2>
In this and the <a href="http://jeffskinnerbox.wordpress.com/2013/05/26/rtl-sdr-software-defined-radio-sdr-for-20/">previous SDR posts</a>, I focused on getting a taste of the technology without committing myself to much of an effort.  I really need to study and understand the tools that I have assembled. I still need to do a great deal more studying of  the radio spectrum itself ... I feel like I'm wondering in the dark most of the time.

Also, I feel that I'm very limited by the antenna I'm presently using (the <a href="http://jeffskinnerbox.files.wordpress.com/2013/05/71ratxr2wjl-_sl1500_.jpg">pitiful dipole </a>that came with the RTL dongle).  I'm thinking of building a better antenna.  Maybe try to pickup a NOAA weather satellites, with its distinctive audio signal when demodulated, and decode one of its satellite weather photos .... maybe.

Another problem with the RTL-SDR is that its internal oscillator is cheap  and drifts, resulting in clock errors with  many kHz of frequency display error in SDR - depending on a band you're listening to.  This is very annoying if you use your dongle as a radio scanner - what's the point of knowing frequency of a transmitter if it's almost random on your SDR?   This frequency error is linear across the spectrum, and can be adjusted in most SDR programs by entering a PPM (parts per million) offset value.  So I need to calculate this error offset so I can  calibrate the SDR software.
