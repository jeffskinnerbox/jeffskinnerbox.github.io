Title: Getting Audio Out Working on the Raspberry Pi
Date: 2012-11-15 00:01
Category: Electronics
Tags: Linux, Raspberry Pi 
Slug: getting-audio-out-working-on-the-raspberry-pi
Author: Jeff Irland
Image: ALSA.jpg
Summary: I want to deliver sound from my Raspberry Pi’s (RPi) Audio Output 3.5mm jack This post shows you how to get audio out working on the Raspberry Pi.

I want to deliver sound from my Raspberry Pi's (RPi) Audio Output 3.5mm jack.  I'll need to get audio drivers working on Audio Out, and to test it, I'll need some sound files and players.  I'm choosing the <a href="http://www.alsa-project.org/main/index.php/Main_Page">Advanced Linux Sound Architecture (ALSA)</a> drivers because its widely supported and because <a href="http://en.wikipedia.org/wiki/Advanced_Linux_Sound_Architecture">ALSA</a> not only provides audio but  <a href="http://en.wikipedia.org/wiki/Musical_Instrument_Digital_Interface">Musical Instrument Digital Interface (MIDI)</a> functionality to Linux.   I'll also be using the popular command line MP3 players, <a href="http://linux.die.net/man/1/mpg321">mpg321</a> and the WAV player that comes with ALSA, <a href="http://linux.die.net/man/1/aplay">aplay</a>.

To get things going, I installed ALSA, a MP3 tools, and a WAV to MP3 conversion tool via the following commands:

```shell
sudo apt-get install alsa-utils
sudo apt-get install mpg321
sudo apt-get install lame
```

<h2>Enabling the Sound Module</h2>
Reboot the RP and when it comes back up, its time to load the Sound Drivers.  This will be done via loadable kernel module (LKM) which are object file  that contains code to extend the Linux kernel.  <code>lsmod</code> is a command on Linux systems which prints the contents of the <code>/proc/modules</code> file.  It shows which loadable kernel modules are currently loaded.  In my case, <code>lsmod</code> gives me:

<center>
<a href="http://jeffskinnerbox.files.wordpress.com/2012/11/lsmod.jpg">
    <img class="aligncenter size-full wp-image-706" title="lsmod" alt="lsmod" src="http://jeffskinnerbox.files.wordpress.com/2012/11/lsmod.jpg" width="545" height="284" />
</a>
</center>

The <code>snd-bcm2835</code> module appears to be already installed. RPi has a Broadcom  <a href="http://www.broadcom.com/products/BCM2835">BCM2835</a> <a href="http://www.androidauthority.com/how-it-works-systems-on-a-chip-soc-93587/">system on a chip (SoC)</a> which is a High Definition 1080p Embedded Multimedia Applications Processor.  <code>snd-bcm2835</code> is the sound driver.  If  <code>lsmod</code> doesn't list the <code>snd-bcn2835</code> module, then it can be installed via the following command:

```shell
sudo modprobe snd-bcm2835
```

<h2>Enabling Audio Output</h2>
By default, the RPi audio output is set to automatically select the digital HDMI interface if its being used, otherwise the analog audio output. You can force it to use a specific interface via the sound mixer controls.  <a href="http://linux.die.net/man/1/amixer"><code>amixer</code></a> allows command-line control of the mixer for the ALSA driver.

You can force the RPi to use a specific interface using the command <code>amixer cset numid=3 N</code> where the <code>N</code> parameter means the following: 0=auto, 1=analog, 2=hdmi.  Therefore, to force the Raspberry Pi to use the analog output:

```shell
amixer cset numid=3 1
```

<h2>Sound Check</h2>
With this done, you should be ready for a simple test.  Plug a speaker into the (RPi) Audio Output 3.5mm jack.  I used a simple battery powered<a href="http://www.ihomeaudio.com/iHM60GX/"> iHM60 iHome</a> speaker.  The jack will not deliver much power, so the speaker needs to be powered.

To test the RPi audio, you can play a WAV file (<a href="http://www.jahozafat.com/php/sounds/?id=gog&amp;media=WAVS&amp;type=Movies&amp;movie=Full_Metal_Jacket&amp;quote=numnuts.txt&amp;file=numnuts.wav">download this</a> ... excellent for user-error notification) with <code><a href="http://linux.die.net/man/1/aplay">aplay</a></code>, <a href="http://linux.die.net/man/1/mpg321"><code>mpg321</code></a> for MP3 files, or use the <a href="http://linux.die.net/man/1/speaker-test"><code>speaker-test</code></a> command if you don't have a WAV/MP3 file.

```shell
aplay numnuts.wav
speaker-test -t sine -f 440 -c 2 -s 1
mpg321 "Mannish Boy.mp3"
```

<h2>More on the ALSA Sound Drivers and Utilities</h2>
While ALSA is a powerful tool, it documentation appears is very weak.  Also, it appears that the capabilities of ALSA drivers and utilities are very  dependent on the hardware used.  The best sources of documentation that I found include <a href="http://www.alsa-project.org/main/index.php/Main_Page">Advanced Linux Sound Architecture (ALSA) project homepage</a>,  <a href="https://wiki.archlinux.org/index.php/Advanced_Linux_Sound_Architecture">archlinux Advanced Linux Sound Architecture</a>, and <a href="http://www.tldp.org/HOWTO/Alsa-sound.html">ALSA-sound-mini-HOWTO</a>.

You can find useful information in the directory /proc, which is a "virtual" file system (meaning that it does not exist in real life, but merely is a mapping to various processes and tasks in your computer).
<ul>
<ul>
	<li><code>/proc/modules</code> gives information about loaded kernel modules.  The command <code>lsmod | grep snd</code> will list modules relevant to the sound system.</li>
	<li>You can check the existence of a soundcard by looking  at <code>cat /proc/asound/cards</code>.</li>
</ul>
</ul>
The <code>amixer</code> command can provide useful information (sometimes):
<ul>
<ul>
	<li>You can look at the mixer settings by typing <code>amixer</code> without any arguments. This command lists the mixer settings of the various parts of the soundcard. The output from <code>amixer</code> can greatly differ from card to card. Unfortunately  you can't find much documentation on how to interpret the out.</li>
	<li>The RPi doesn't have a "Master" control only "PCM".  So commands like <code>amixer set Master...</code> will not work.  You must use <code>amixer set PCM ...</code></li>
	<li>You can mute /unmute the sound via these commands: <code>amixer set PCM mute</code> and <code>amixer set PCM unmute</code></li>
	<li>As of August 2012, there appears to be a <a href="http://raspberrypi.stackexchange.com/questions/1268/alsa-volume-ignored-when-beginning-playback">known bug</a> in RPi ALSA driver that ignores volume settings at the start of playback and always plays at max volume.  Therefore, commands like <code>amixer set PCM 50% unmute</code> will <span style="text-decoration:underline;">not</span> set the volume to 50%, at least until this bug is fixed.  Maybe this isn't really a bug but a limitation of the hardware because there is a workaround for this .... see below.</li>
</ul>
</ul>
<h2>Volume Control</h2>
The RPi built-in sound chips don't have a "master volume" control, and as a result, you must control the volume via software.  I guess the RPi views itself as a preamplifier (preamp) and volume controls would be supplied down stream.  ALSA provides a software volume control using the <a title="Softvol" href="http://alsa.opensrc.org/Softvol">softvol</a> plugin.

The <code>/etc/asound.conf</code> file is a configuration files for ALSA drivers (system-wide).  The main use of this configuration file is to add functionality. It allows you to create "virtual devices" that pre or post-process audio streams. Any properly written ALSA program can use these virtual devices as though they were normal devices.  My RPi  <code>/etc/asound.conf</code> file looks like this:

<center>
<a href="http://jeffskinnerbox.files.wordpress.com/2012/11/orginal-asound-conf.jpg">
    <img class="aligncenter size-full wp-image-746" title="orginal asound.conf" alt="asound conf" src="http://jeffskinnerbox.files.wordpress.com/2012/11/orginal-asound-conf.jpg" width="545" height="223" />
</a>
</center>

For most changes to `/etc/asound.conf` you will need to restart the sound server for the changes to take effect.
You can do this via

```
sudo /etc/init.d/alsa-utils restart
```

I attempted to implement the software volume controls outline in a <a href="http://www.gentoo-wiki.info/HOWTO_Softvol">softvol how-to</a> that I found, but I couldn't get it to work.  I did some additional digging, and I found a solution buried within a python script for a <a href="http://learn.adafruit.com/reading-a-analog-in-and-controlling-audio-volume-with-the-raspberry-pi/overview">Adafruit project</a>.  The following works for controlling the volume (in this case, reducing the volume to 80% of maximum):

```
amixer cset numid=1 -- 80%
```

Note that you can use this command to change the volume while sound is being played an its effect takes place immediately.  Also, I noticed that once the volume has been adjusted, its effect remains even after a reboot.
<h2>WAV and MP3 Conversion</h2>
The MP3 player <a href="http://linux.die.net/man/1/mpg321"><code>mpg321</code></a> can convert MP3 files to WAV files but the WAV player, <a href="http://linux.die.net/man/1/aplay"><code>aplay</code></a>, can not do a conversion.  To make a MP3 file from a WAV file, you'll need the tool <a href="http://linux.die.net/man/1/lame"><code>lame</code></a>.
<ul>
<ul>
	<li>To convert from WAV to MP3: <code>lame input.wav output.mp3</code></li>
	<li>To convert from MP3 to WAV:  <code>mpg321 -w output.wav input.mp3</code></li>
</ul>
</ul>
<h2>Bottomeline</h2>
While you can get ALSA working on the Raspberry Pi, it appears only partly supported, maybe buggy, and poorly documented.  If you just want to simply get sound out of the device (like I do), you'll be fine.  But if you have some desire to do some sound processing with ALSA, your likely to be very frustrated.
<h2>Epilogue</h2>
This specific post has gotten about 25% of all the viewings of my blog. I'm not sure why this is the case but I speculate that there are many people tying to make RPi into a Media Player and looking for answers to their technical problems.

At this point in time, others have done some additional postings and they are more instructive than my post. You should check out:
<ul>
	<li><a href="http://blog.scphillips.com/2013/01/sound-configuration-on-raspberry-pi-with-alsa/">Sound configuration on Raspberry Pi with ALSA</a></li>
</ul>
