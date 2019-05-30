
* [Practical Guide to Radio-Frequency Analysis and Design](https://www.allaboutcircuits.com/textbook/radio-frequency-analysis-design/)

* [How to Process I/Q Signals in a Software-Defined RF Receiver](https://www.allaboutcircuits.com/technical-articles/how-to-process-iq-signals-software-defined-rf-receiver-dsp-digital-signal/)

* [Interactive Demo Shows the Power of Fourier Transforms](https://hackaday-com.go-vip.co/2019/04/10/interactive-demo-shows-the-power-of-fourier-transforms/)
* [Accelerating Fourier transforms using the Raspberry Pi's GPU](http://www.raspberrypi.org/archives/5934)
* [csdr - build DSP processing chains by shell pipes](https://github.com/simonyiszk/csdr)
* [Comparison of analog and digital recording](https://en.wikipedia.org/wiki/Comparison_of_analog_and_digital_recording)
* [How to Process I/Q Signals in a Software-Defined RF Receiver](https://www.allaboutcircuits.com/technical-articles/how-to-process-iq-signals-software-defined-rf-receiver-dsp-digital-signal/)

* [SOFTWARE DEFINED RADIO FOR ENGINEERS: FREE UNIVERSITY LEVEL TEXT BOOK WITH PLUTOSDR EXAMPLES](https://www.rtl-sdr.com/software-defined-radio-for-engineers-free-university-level-text-book-with-plutosdr-examples/)
    * [Software-Defined Radio for Engineers](http://www.analog.com/en/education/education-library/software-defined-radio-for-engineers.html)
    * [Software Defined Radio for Engineers: A practical guide to the wireless physical layer](https://sdrforengineers.github.io)
    * [The Scientist & Engineer's Guide to Digital Signal Processing](http://www.analog.com/en/education/education-library/scientist_engineers_guide.html)


A signal is a varying physical quanity that conveys information about the behavior or attributes of some phenomenon.
A [waveform][16] is the shape and form of a signal,
such as a peridoic wave moving in a physical medium or an abstract representation.
I/Q waveform files contain the digital complex sample values of a radio signal.

WAV files are used as they have become a de-facto standard supported by the most common SDR software. The maximum size of a single file is 2GB.

## Fundamental digital modulation methods
The most fundamental digital modulation techniques are based on [keying][01]:

* [PSK (phase-shift keying][02]: a finite number of phases are used.
* [FSK (frequency-shift keying)][03]: a finite number of frequencies are used.
* [ASK (amplitude-shift keying)][04]: a finite number of amplitudes are used.
* [QAM (quadrature amplitude modulation)][05]: a finite number of at least two phases and at least two amplitudes are used.

In QAM, an inphase signal (or I, with one example being a cosine waveform) and a quadrature phase signal (or Q, with an example being a sine wave) are amplitude modulated with a finite number of amplitudes, and then summed. It can be seen as a two-channel system, each channel using ASK. The resulting signal is equivalent to a combination of PSK and ASK.

## Modulator and detector principles of operation
PSK and ASK, and sometimes also FSK, are often generated and detected using the principle of QAM.
The I and Q signals can be combined into a [complex-valued][06] signal _I+jQ_ (where _j_ is the [imaginary unit][07]).
The resulting so called [equivalent lowpass signal][08] or [equivalent baseband signal][09]
is a complex-valued representation of the [real-valued][10] modulated physical signal
(the so-called [passband signal][11] or [RF signal][12]).

* [I/Q Record Format][13]
* [Quadrature ( I-Q ) Modulation Tutorial][14]
* [IQ Modulator Basics: Operation, measurements, impairments](https://www.youtube.com/watch?v=RHFZUqUM8DY&feature=em-subs_digest)
* [Display in-phase and quadrature components of modulated signal constellation][15]
* [If The I And Q Of Software Defined Radio Are Your Nemesis, Read On][17]

## Waveform Viewer
A waveform viewer is a software tool for viewing a signals waveform.
http://en.wikipedia.org/wiki/Waveform_viewer



[01]:http://en.wikipedia.org/wiki/Keying_(telecommunications)
[02]:http://en.wikipedia.org/wiki/Phase-shift_keying
[03]:http://en.wikipedia.org/wiki/Frequency-shift_keying
[04]:http://en.wikipedia.org/wiki/Amplitude-shift_keying
[05]:http://en.wikipedia.org/wiki/Quadrature_amplitude_modulation
[06]:http://en.wikipedia.org/wiki/Complex-valued
[07]:http://en.wikipedia.org/wiki/Imaginary_unit
[08]:http://en.wikipedia.org/wiki/Equivalent_lowpass_signal
[09]:http://en.wikipedia.org/wiki/Equivalent_baseband_signal
[10]:http://en.wikipedia.org/wiki/Real-valued
[11]:http://en.wikipedia.org/wiki/Passband_signal
[12]:http://en.wikipedia.org/wiki/RF_signal
[13]:http://signals-analysis.blogspot.com/2009/11/new-article-iq-format-sa-and-iq-records.html
[14]:http://www.fourier-series.com/IQMod/
[15]:http://www.mathworks.com/help/comm/ref/discretetimescatterplotscope.html
[16]:http://en.wikipedia.org/wiki/Waveform
[17]:http://hackaday.com/2017/05/16/if-the-i-and-q-of-software-defined-radio-are-your-nemesis-read-on/
[18]:
[19]:
[20]:
[21]:
[22]:
[23]:
[24]:
[25]:
[26]:
[27]:
[28]:
[29]:
[30]:
