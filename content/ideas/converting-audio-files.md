Title: Converting Audio Files
Date: 2100-01-01 00:00
Category: Audio
Tags:
Slug: converting-audio-files
Author: Jeff Irland
Image: DRAFT_stamp.png
Summary: bla bla bla

* [Accelerating Fourier transforms using the Raspberry Pi's GPU](http://www.raspberrypi.org/archives/5934)
* [HiFiBerry](http://www.hifiberry.com/)
* [Audio Sensor Development Part 1: Microphone Math](http://www.macetech.com/blog/node/138)
* [Audio Sensor Development Part 2: EDA, PCB, SPL, PSRR](http://www.macetech.com/blog/node/139)
* [Audio Sensor Development Part 3: Theory Meets Reality](http://www.macetech.com/blog/node/140)

* [ Audacity - basic audio recording](http://www.audacityteam.org/)
* [Ardour - Record, Edit, and Mix on Linux](https://ardour.org/)

* [DeepSound overview](http://jpinsoft.net/DeepSound/)

[GStreamer is a framework for creating streaming media applications](https://gstreamer.freedesktop.org/)

## Music and Sound Waves
* [Art Ludwig's Sound Page](http://www.silcom.com/~aludwig/)
* [The Kraakdoos — Musical Abuser of an Ancient OpAmp](http://hackaday.com/2015/09/03/the-kraakdoos-musical-abuser-of-an-ancient-opamp/)
* The Sound on Sound (SOS) series of articles on [sound synthesis](http://www.soundonsound.com/sos/allsynthsecrets.htm)
* [Using a Raspberry Pi as a synthesiser](https://www.blogdot.tv/using-a-raspberry-pi-as-a-synthesiser/)
* [The Fart Box, A Synthesizer Not Quite Like Others](https://hackaday.com/2020/03/21/the-fart-box-a-synthesizer-not-quite-like-others/)
* [Music from Outer Space: Your Synth-DIY Headquarters](http://musicfromouterspace.com/)

## Audio Codec
An audio codec (or just [codec][17]) is a device or computer program capable of
coding or decoding a digital data stream of audio.
Codecs typically implementing an algorithm that compresses and decompresses the digitized audio signal
and places the data in an [audio file format][18] or launch a streaming media audio format.
The object of the algorithm is create a file (or data stream), that when decoded back to an audio signal,
maintains a quaility objective using the minimum number of bits.
This can effectively reduce the storage space and the bandwidth required for
transmission of the stored audio file.

There are three major groups of audio file formats:

* Uncompressed audio formats (e.g. WAV, AIFF, AU)
* Formats with lossless compression (e.g. FLAC, Apple Lossless - m4a, MPEG-4)
* Formats with lossy compression (e.g. MP3, AAC)

There is a forth format, where the data is stored in uncompressed audio in raw form, called [raw audio][20],
and the file has no header information ([sampling rate][21], [bit depth][22], [endian][23], or number of channels).
Comparable to WAV or AIFF in size, raw audio data can be written in [PCM][28], [IEEE 754][27] or [ASCII][26].
The implied header information is: 16-bit PCM encoding at a 44.1 kHz sampling rate
Typical file extension are .raw or .pcm, or it can be also without extension
and widely used in [compact discs][19].

In digital audio, [44.1 kHz is a common sampling frequency][25], and used in Compact Discs.
The full range of human hearing is between 20 Hz and 20 kHz.
The minimum sampling rate, as dictated by [Nyquist–Shannon sampling theorem][24],
 needs to be 40 kHz for maximum fidelity.

## WAV vs. AIFF vs. MP3 File Formats
| Filename Extension | Name | Format Type | Description | Encoding |
| ------- | ------- | ------- | ------- | ------- |
| PCM | Pulse-Code Modulation | Uncompressed | Also known a Linear PCM, it is the standard audio format for CDs. PCM audio is an uncompressed, lossless storage system. | |
| WAV | Waveform Audio File Format | Uncompressed or Compressed | WAV audio files are similar to PCM audio and can be coded as compressed or uncompressed lossless audio. WAV files are similar to AIFF audio files used on Mac computers. Popularized by Microsoft. | Linear Pulse Code Modulation (LPCM) Adaptive Delta Pulse Code Modulation (ADPCM) |
| AIFF | Audio Interchange File Format | Uncompressed | AIFF and WAV formats are fairly interchangeable.  Like WAV, the AIFF format is an uncompressed PCM (pulse-code modulation). Apple/Macintosh equivalent of WAV files, though both Windows PCs and Apple Macs will recognize either format. | |
| MP3 | MPEG-2 Audio Layer III | Lossy Compressed | MPEG stands for Moving Pictures Experts Group, an organization that develops standards for coded audio and video programs. MP3 is a lossy audio format and bit rates for MP3 music files range from a low of 32kbits/s up to 320kbits/s. | |
| WMA | Window Media Audio | Lossless Compressed | WMA was developed by Microsoft as a competitor to MP3 files and is a lossless compressed audio format. | |
| AAC | Advanced Audio Coding | Lossy Compressed | format used in the Apple iPod, iPhone and iTunes music store  | |
| FLAC | Free Lossless Audio Codec | Lossless Compressed | One of its advantages is that it reduces the file size of an audio program from 30 to 40% (the amount of storage space it takes on a disc or other device) without sacrificing audio quality. | |

* [Differences Between PCM/ADPCM Wave Files Explained][12]
* [I/Q Data for Dummies][13]
* [If The I And Q Of Software Defined Radio Are Your Nemesis, Read On](https://hackaday.com/2017/05/16/if-the-i-and-q-of-software-defined-radio-are-your-nemesis-read-on/)
* [IQ Modulator Basics: Operation, measurements, impairments](https://www.youtube.com/watch?v=RHFZUqUM8DY&feature=em-subs_digest)

**Bit Size** - Bit size is the number of bits used to encode the amplitude of the signal. In 8 bit recordings, a total of 256 (0 to 255) amplitude levels are available. In 16 bit, a total of 65,536 (-32768 to 32767) amplitude levels are available. The greater the resolution of the file is, the greater the realistic dynamic range of the file. CD-Audio uses 16 bit samples.

**Sample Rate** - Sample rate is the number of samples per second. CD-Audio has a sample rate of 44,100. This means that 1 second of audio has 44,100 samples. DAT tapes have a sample rate of 48,000.  When looking at frequency response, the highest frequency can be considered to be 1/2 of the sample rate.

* [Examples of IQ Signals][10]
* [What’s Your IQ – About Quadrature Signals][11]
* [DSP Spreadsheet: IQ Diagrams](https://hackaday.com/2019/11/15/dsp-spreadsheet-iq-diagrams/)

### Quadrature Signals
Quadrature signals, also called IQ signals, IQ data or IQ samples, are often used in RF applications. They form the basis of complex RF signal modulation and demodulation, both in hardware and in software, as well as in complex signal analysis.

A pair of periodic signals are said to be in “quadrature” when they differ in phase by 90 degrees. The “in-phase” or reference signal is referred to as “I,” and the signal that is shifted by 90 degrees (the signal in quadrature) is called “Q.” What does this mean and why do we care?

## Converting Formats
A huge variety of file formats are used to store and distribute digital audio. The most commonly used for compressed audio is mp3, and the most common format for raw audio (uncompressed) is .wav.  But there are many other audio formats, and you likely want to be able to convert between the various formats.

If you want to convert between different compressed audio formats, generally there is no way around decoding the original compressed format to raw audio (i.e. .wav) before re-encoding the file to another common format.

* [Some Notes on Basic Sound Frequency Analysis On Linux][01]
* [HOWTO Convert audio files][02]
* [SOX - Swiss Army knife of sound processing programs][03]
* [15 Awesome Examples to Manipulate Audio Files Using Sound eXchange (SoX)][04]
* [Great Apps to Convert Audio & Video Files in Linux][05]
* [Converting music file formats in Linux - Tutorial][06]
* [Tom's Definitive Linux Software Roundup: Audio Apps][07]
* [Convert Audio Files From Many Formats In Ubuntu Linux With Sound Converter][08]
* [Wavbreake][09]

## Direct-Digital Synthesis (DDS)
[Direct-digital synthesis (DDS)](http://hackaday.com/2016/02/12/embed-with-elliot-audio-playback-with-direct-digital-synthesis/)
is a sample-playback technique that is useful for adding a little bit of audio
to your projects without additional hardware.

# Audio Syntesizer
* [A Fully Open Source Raspberry Pi Synthesizer](https://hackaday.com/2018/06/08/a-fully-open-source-raspberry-pi-synthesizer/)
* [Google’s AI-Powered Synthesizer](https://www.theverge.com/circuitbreaker/2018/3/13/17114760/google-nsynth-super-ai-touchscreen-synth)
* [Synthberry Pi standalone Pure Data Raspberry Pi synthesiser](https://www.geeky-gadgets.com/raspberry-pi-synthesiser-14-02-2020/)
* https://hackaday.com/2015/08/07/logic-noise-4046-voltage-controlled-oscillator-part-one/

## Digital Audio Editor
* [Audacity](http://audacity.sourceforge.net/)

## Waveform Viewer
A waveform viewer is a software tool for viewing a signals waveform.
http://en.wikipedia.org/wiki/Waveform_viewer
[Browser-based audio waveform visualisation](http://waveform.prototyping.bbc.co.uk/)

## Capturing Still Images and Streamming Video from WebCam
You can capture still images and videos with the webcam using `cheese` or `memcoder`.
These work on Unbuntu:

    cheese -d /dev/video0
    mencoder tv:// -tv width=320:height=240:device=/dev/video0 -nosound -ovc lavc -o ~/tmp/wcrecording.avi

[luvcview](http://www.mattfischer.com/blog/?tag=luvcview)
[How to build and run MJPG-Streamer on the Raspberry Pi](http://blog.miguelgrinberg.com/post/how-to-build-and-run-mjpg-streamer-on-the-raspberry-pi)

## Downloading Video Files
If your interested in capturing a YouTube video,
there is a very easy approach give in this video: [How to Download youtube videos on Ubuntu linux][14].
Unfortanately, appears YouTube has caught on, and this no longer works.

There is a commandline alternate, `youtube-dl`, documented here:
[Youtube-dl: Perfect tool for downloading YouTube videos in Ubuntu][15] and
[Install YouTube-DL – A Command Line Video Download Tool for Linux][29].
You can find the source and a complete listing of
[`youtube-dl` command line options on Github][30].
Despite its name, `youtube-dl` claims to download videos from not only YouTube.com
but Google Video, Photobucket, Facebook, Yahoo, and many more similar sites.
`youtube-dl` also allows to choose specific avialable video quality format to download
(or let the program itself automatically download higher quality video)
download user specified list, and much more.
To install it, do the following:

```bash
# install or upgrade the video download tool
sudo pip install --upgrade youtube_dl
```

To download a video file, simply run the following command (with the approprate URL of course)

```bash
# download the video to your current directory from this YouTube URL
youtube-dl http://www.youtube.com/watch?v=nOMX3deeW6Q
```

The file is placed in your current directory and given an name similar to it title.
For more options, checkout `man youtube-dl` or `youtube-dl --help`.

If your interested in only the audio of a video file, `youtube-dl` can also help you here.

```bash
# download only the sound to your current directory from this YouTube URL
youtube-dl -k -x --audio-format wav http://www.youtube.com/watch?v=nOMX3deeW6Q
```

> Did you do the above example? You want more floppy drive music?  Of Course you do!  Check out [Gigawipf][16].

## Ripping Audio From Video
While `youtube-dl` can extract the audio from a video that is on the web,
what if the file is already downloaded?

    mplayer -dumpaudio -dumpfile audio_file.mp3 video_file.mp4

Doesn't seem to work???

## Capturing Audio and Video Using VoIP
[Capture audio and video using VoIP](http://www.tuxradar.com/answers/614)
[Weekend Project: Record From Skype Calls and Other Apps on Linux](https://www.linux.com/learn/tutorials/367395-weekend-project-record-from-skype-calls-and-other-apps-on-linux)

## MP3 ID3 Tag Information
* [mp3info - MP3 technical info viewer and ID3 tag editor](http://manpages.ubuntu.com/manpages/gutsy/man1/mp3info.1.html)
* [Update music info with public database data](http://www.commandlinefu.com/commands/view/13626/update-music-info-with-public-database-data)
* []()
* []()

[eSpeak](https://en.wikipedia.org/wiki/ESpeak) is a compact open source software speech synthesizer for Linux, Windows, and other platforms



[01]:http://www.acronymchile.com/sigproc.html
[02]:http://en.linuxreviews.org/HOWTO_Convert_audio_files
[03]:http://sox.sourceforge.net/
[04]:http://www.thegeekstuff.com/2009/05/sound-exchange-sox-15-examples-to-manipulate-audio-files/#more-486
[05]:http://www.makeuseof.com/tag/10-applications-to-convert-audio-and-video-files-in-linux/
[06]:http://www.dedoimedo.com/computers/audio_conversion_linux.html
[07]:http://www.tomshardware.com/reviews/ubuntu-linux-audio-software,2856-11.html
[08]:http://www.addictivetips.com/ubuntu-linux-tips/convert-audio-files-from-many-formats-in-ubuntu-linux-with-sound-converter/
[09]:http://wavbreaker.sourceforge.net/
[10]:http://www.google.com/url?sa=t&amp;rct=j&amp;q=&amp;esrc=s&amp;frm=1&amp;source=web&amp;cd=13&amp;cad=rja&amp;ved=0CHgQFjAM&amp;url=http%3A%2F%2Fwww.ws.binghamton.edu%2Ffowler%2Ffowler%2520personal%2520page%2FEE521_files%2FII-1-a%2520IQ%2520Examples_2007.pdf&amp;ei=284HUqbiLenkyQGxm4DoAQ&amp;usg=AFQjCNHtFrm6vcqPb1RbSvhp2cf5FU4Bmg&amp;sig2=nT_MC_2X9wFwyVuLTbKGUg&amp;bvm=bv.50500085,d.aWc
[11]:http://www.tek.com/blog/what%E2%80%99s-your-iq-%E2%80%93-about-quadrature-signals%E2%80%A6
[12]:http://support.microsoft.com/kb/89879
[13]:http://whiteboard.ping.se/SDR/IQ
[14]:http://www.youtube.com/watch?v=3qY2XgyCB0w
[15]:http://www.tecmint.com/install-youtube-dl-command-line-video-download-tool/
[16]:http://www.youtube.com/user/Gigawipf?feature=watch
[17]:http://en.wikipedia.org/wiki/Codec
[18]:http://en.wikipedia.org/wiki/Digital_audio_format
[19]:http://en.wikipedia.org/wiki/Compact_Disc
[20]:http://www.fmtz.com/misc/raw-audio-file-formats
[21]:http://en.wikipedia.org/wiki/Sampling_rate
[22]:http://en.wikipedia.org/wiki/Audio_bit_depth
[23]:http://en.wikipedia.org/wiki/Endian
[24]:http://en.wikipedia.org/wiki/Nyquist%E2%80%93Shannon_sampling_theorem
[25]:http://en.wikipedia.org/wiki/44.1_kHz
[26]:http://en.wikipedia.org/wiki/ASCII
[27]:http://en.wikipedia.org/wiki/IEEE_754
[28]:http://en.wikipedia.org/wiki/Pulse-code_modulation
[29]:http://www.tecmint.com/install-youtube-dl-command-line-video-download-tool/
[30]:https://github.com/rg3/youtube-dl
[31]:
[32]:
[33]:
[34]:
[35]:
[36]:
[37]:
[38]:
[39]:
[40]:
