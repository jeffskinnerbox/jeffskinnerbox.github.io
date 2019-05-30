Title: Speech Synthesis on the Raspberry Pi
Date: 2012-11-26 00:01
Category: Electronics 
Tags: Raspberry Pi, Audio
Slug: speech-synthesis-on-the-raspberry-pi
Author: Jeff Irland
Image: hal9000.png
Summary: I want the RPi to provide status via email, SMS, web updates, and so why not speech? This post show you how to get the speech synthesis utility Festival working on the Raspberry Pi.

Now that I can get <a href="http://jeffskinnerbox.wordpress.com/2012/11/15/getting-audio-out-working-on-the-raspberry-pi/">sound</a> out of my Raspberry Pi (RPi), the next logical step for me is speech synthesis ... Right?  I foresee my RPi being used as a controller/gateway for other devices (e.g. RPi or Arduino).  In that capacity, I want the RPi to provide status via email, SMS, web updates, and so why not speech?  Therefore, I'm looking for a good text-to-speech tool that will work nicely with my RPi.

The two dominate free speech synthesis tools for Linux are <a href="http://espeak.sourceforge.net/">eSpeak</a> and <a href="http://www.cstr.ed.ac.uk/projects/festival/download.html">Festival</a> (which has a light-weight version called Flite). Both tools appear very popular, well supported, and produce quality voices.  I sensed that Festival is more feature reach and configurable, so I went with it.

To install Festival and Flite (which doesn't require Festival to be installed), use the following command:

```shell
sudo apt-get install festival
<code>sudo apt-get install flite
```

<h2>Festival</h2>
To test out the installation, check out <a href="http://linux.die.net/man/1/festival">Festival's man page</a>, and execute the following:

```shell
echo "Why are you in front of the computer?" | festival --tts
date '+%A, %B %e, %Y' | festival --tts
festival --tts Gettysburg_Address.txt
```

<h2>Text, WAV, Mp3 Utilities</h2>
Festival also supplies a tool for converting text files into WAV files.  This tool, called <a href="http://manpages.ubuntu.com/manpages/hardy/man1/text2wave.1.html"><code>text2wave</code></a> can be executes as follows:

```shell
text2wave -o HAL.wav HAL.txt
aplay HAL.wav
```

MP3 files can be 5 to 10 times smaller than WAV files, so it might be nice to convert a WAV file to MP3.  You can do this via a tool called <a href="http://linux.die.net/man/1/lame"><code>lame</code></a>.

```shell
lame HAL.wav HAL.mp3
```

<center>
<a href="http://jeffskinnerbox.files.wordpress.com/2012/11/lame-example.jpg">
    <img class="aligncenter size-full wp-image-847" title="lame example" alt="lame example" src="http://jeffskinnerbox.files.wordpress.com/2012/11/lame-example.jpg" width="545" height="311" />
</a>
</center>
<h2>Flite</h2>
<a href="http://manpages.ubuntu.com/manpages/hardy/man1/flite.1.html">Flite</a> (festival-lite) is a small, fast run-time synthesis engine developed using Festival for small embedded machines. Taking a famous quote from <a href="http://en.wikipedia.org/wiki/HAL_9000">HAL</a>, the computer in the movie "<a href="http://en.wikipedia.org/wiki/2001:_A_Space_Odyssey_(film)">2001: A Space Odyssey</a>"

```shell
flite "Look Dave, I can see you're really upset about this. I honestly think you ought to sit down calmly, take a stress pill, and think things over."
```

Depending how the software was built for the package, you find that flite (and festival) has multiple voices. To find what voices where built in, use the command

```shell
flite -lv
```

To play a specific voice from the list, use the <code>-voice</code> parameter in the command

```shell
flite -voice kal "I'm now speaking kal's voice. By the way, please call me Dr. Hawking."
```

In my case, the default voice appears to be "kal", which sounds somewhat like <a href="http://www.newscientist.com/article/dn21323-the-man-who-saves-stephen-hawkings-voice.html">Stephen Hawking</a>.  "slt" appears to be a female version of the "kal" voice.

<a href="http://manpages.ubuntu.com/manpages/hardy/man1/flite_time.1.html"><code>flite_time</code></a> is a talking clock that can speak things like "The time is now, exactly two, in the afternoon."

```shell
flite_time 14:00
flite_time `date +%H:%M`
```

<h2>Documentation</h2>
The documentation for Festival and Flite isn't all that great but there does seem to be multiple sources.  Here is what I found most useful:
<ul>
<ul>
	<li><a href="http://www.cstr.ed.ac.uk/projects/festival/manual/festival_7.html">Quick Start</a></li>
	<li><a href="http://digital.cs.usu.edu/~vkulyukin/vkweb/teaching/cs6890/festival.pdf">More Complete</a></li>
</ul>
</ul>

## Update
Gary Hall of [878.org.uk][01] made me aware of another method of getting speech out of the Raspberry Pi.
His article [Getting your Raspberry Pi to speak the weather forecast][02]
explains his very simple approach using Google Text to Speech service.
See below

```shell
mplayer -ao alsa -really-quiet -noconsolecontrols "http://translate.google.com/translate_tts?tl=en&q=Look Dave, I can see you're really upset about this."
```

Some day, Google will rule the world!



[01]:http://874.org.uk/
[02]:http://874.org.uk/speaking-weather-forecast-raspberry-pi.html
