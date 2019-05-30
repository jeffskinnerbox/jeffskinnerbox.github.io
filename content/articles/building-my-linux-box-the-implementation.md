Title: Building My Linux Box...The Implementation
Date: 2013-08-01 00:01
Category: Software
Tags: Linux, Ubuntu, Squeeze Box, Harmony Remote, Chrome, Xbindkeys, KeePass, Wine, RAID, Google Cloud Print
Slug: building-my-linux-box-the-implementation
Author: Jeff Irland
Image: ubuntu-13-04-raring-ringtail.jpg
Summary: In this posting, I show how I implemented my plans to build my custom made Linux system.  I review where I deviated from my plans, and give some of the details on software configuration.

<img class="img-rounded" style="margin: 0px 8px; float: left" alt="Ubuntu 13.04 Raring Ringtail" src="/images/ubuntu-13-04-raring-ringtail.jpg" width="8%" height="8%" />
In an earlier post, I outlined [my plan for building a Linux Box][11].  Here I will post how that plan was ultimately implemented. Life has taught me that all good planning is ultimately undone, and at some point, you must improvise.  That has also proven true for this quest to up grade my computation.  Specifically:
<ul>
<ul>
	<li>After ordering all the hardware, it came to me that it was dumb to attempt to reuse my old semi-reliable, slow CD drive.  So I purchase the HP 24X Multiformat DVD/CD Writer (dvd1260i) at Best Buy for 40 dollars.</li>
	<li>I discovered that the my old PC had <a href="http://www.webopedia.com/TERM/A/ATA.html">ATA</a> hard drives (commonly called an IDE drive) and my new Mobo only supports <a href="http://www.webopedia.com/TERM/S/Serial_ATA.html">SATA</a> (SATA 3Gb/s &amp; 6GB/s and it includes an external eSATA port).   This blows my plan to reuse my existing hard drives ... stupid me, I should have checked.  I did a quick scan for ATA controller cards and found a few (not many) for 15 to 30 dollars.  I could buy the card and make this work but it doesn't seem like a good investment.  The drives are 400G drives and has a maximum data transfer rate of about 133MB/s (i.e. ATA/66).  The maximum data transfer rates of SATA II and SATA III are 300 MB/s and 600 MB/s, respectively.  I can buy a Seagate - Barracuda 500GB SATA II Internal Hard Drive for $70.  Given my objective to increase the performance of my computing experience, buying a new SATA III hard drive should have been part of the original plan.</li>
	<li>After <a href="http://www.cyberciti.biz/tips/raid-hardware-vs-raid-software.html">reading up on RAID</a> and the Intel Rapid Storage Technology (RST), I concluded that it would be best to do a Software Raid and not use RST.</li>
	<li>While I assumed in my original plan that I would dual boot the box with Linux and MS Windows, the <a href="http://jeffskinnerbox.wordpress.com/2013/04/28/building-my-linux-box-the-plan/">comment from armahillo@gmail.com </a>convinced me of what I suspected I should do; and that was to make <a href="http://www.winehq.org/">wine</a>, <a href="http://www.mono-project.com/Main_Page">mono</a>, and <a href="http://www.playonlinux.com/">PlayOnLinux</a> work for me.  While I haven't stressed them, so far so good.  I have not installed VirtualBox and I suspect I will not ... unless I get desperate.</li>
	<li>I was planning to reuse my old keyboard and mouse, but you know, I hated that keyboard and the mouse was already acting badly and about to die on me.  So I ended up replacing them with sometime worthy of my new system.</li>
</ul>
</ul>
<h2>Configuring Ubuntu</h2>
You'll find many recommendations on how to jazz up a newlly install Ubuntu system.  I found some of these suggestions useful:
<ul>
<ul>
	<li><a href="http://debianhelp.wordpress.com/2012/09/28/to-do-list-after-installing-ubuntu-13-04-aka-raring-ringtail-operating-system/">To Do List After installing Ubuntu 13.04 aka Raring Ringtail OS</a></li>
	<li><a href="http://www.noobslab.com/2013/04/tweaksthings-to-do-after-install-of.html">Things/Tweaks to do after Install of Ubuntu 13.04 Raring Ringtail</a></li>
	<li><a href="http://mambochimbo.blogspot.com/2013/05/to-do-top-things-to-do-after-installing.html">Top things to do after installing Ubuntu 13.04</a></li>
	<li><a href="http://fabhax.com/technology/change-wallpapers-in-gnome-3.4/">Change desktop, login and lock screen wallpapers</a></li>
</ul>
</ul>
<h2>Installing "dot" Files</h2>
Like may, over the years I have made a large time investment in tuning my <code>.bashrc</code>, <code>.vimrc</code>, and other such resource files.  I installed my beloved "dot" files from my <a href="https://github.com/jeffskinnerbox">Git repository</a>.
<h2>Installing Google Chromium and Chrome</h2>
Chromium is a fully open-source version of Google's Chrome, and for licensing reasons, it doesn't come packaged with the integrated Flash or a native PDF reader.  Lucky, there is a work around and that is documented here: <a href="http://www.omgubuntu.co.uk/2010/07/use-google-chrome%E2%80%99s-native-pdf-reader-in-chromium">Use Google Chrome’s Native PDF reader in Chromium</a>.

But I prefer Chrome to Chromium, and luckily, you can install it on Ubuntu.
Just go to [Chrome's download site][15] and follow the instructions.

<h2>Installing My Squeeze Box</h2>
I have a <a href="http://www.mysqueezebox.com/index/Home">SqueezeBox</a> device in my workshop for playing music.
Specifically, I have the Squeezebox Classic ([Owner's Guide][12]).
On my old PC, I had installed the SlimServer which would provide the music stream.  I want to now reestablish that capability on the Linux box. The post <a href="http://www.ehow.com/how_7314755_use-squeezebox-ubuntu.html">How to Use Squeezebox With Ubuntu</a> and the <a href="http://wiki.slimdevices.com/index.php/DebianPackage">Logitech SqueezeBox Wiki</a> gives you all the information you should need.

The Ubuntu (Debian) software for the <a href="http://wiki.slimdevices.com/index.php/Logitech_Media_Server">SqueezeCenter</a> or now called the Logitech Media Server (formerly known as SlimServer) is maintained by Logitech, and therefore, will not be installed via <code>get-apt</code>.  To make it part of the package resource list (used to locate archives of the package distribution system in use on the system), you need to update the <a href="http://linux.die.net/man/5/sources.list"><code>/etc/apt/sources.list</code></a> file.  To do this, do the following:

```bash
sudo vim /etc/apt/sources.list
```

Scroll to the bottom of the file and enter the following information and then save:

```bash
# This software is not part of Ubuntu, but is offered by Logitech for the
# Logitech Media Server (formerly known as SqueezeCenter or SlimServer).
deb http://debian.slimdevices.com stable main
```

Now do the following:

```bash
sudo apt-get remove --purge logitechmediaserver
sudo apt-get update
sudo apt-get install logitechmediaserver
```

Now open a browser and type "<code>http://desktop:9000</code>" as the URL, where "desktop" is the name of your Linux system.  This brings you to a Squeezebox interface to configure the system.

If you want to start/stop Logitech Media Server manually you can run:
<code>sudo /etc/init.d/logitechmediaserver stop</code>,
<code>sudo /etc/init.d/logitechmediaserver start</code>,
and
<code>sudo /etc/init.d/logitechmediaserver restart</code>.

Keep in mind that the Squeeze Box Server uses port 9000.
Make sure the port is open with the following:
`netstat -an | grep 9000`.
If the you don't get any output or the line doesn't contain "LISTEN",
then the port is closed or there is no process (i.e `squeezeboxserver`) listening to it.
Use these procedures to [open ports on a Linux firewall][13].

**Note:** Because of a bug (conflict with the version of Perl I'm using),
    I had to install a beta version directly using

```bash
# See http://forums.slimdevices.com/showthread.php?101237-Logitech-Media-Server-7-8-0-now-available!
# Download the Debian package from http://downloads.slimdevices.com/nightly/?ver=7.8
sudo dpkg -i logitechmediaserver_7.8.1~1411629722_all.deb
```

Someone at Logitech had the brilliant idea that MP3s and other audio files
should be stored in an online service a while back,
something that doesn't sit well with me, I prefer to keep them on my LAN.
Consider this to [roll your own Squeezebox with a Raspberry Pi][14].

<h2>Configuring Printers</h2>
### Configuring Samsung SCX-4521F Printer/Scanner
When it comes to printers and scanners, Ubuntu advices that you should simply plug it in and try!
Ubuntu claims that if it's a newer model USB scanner / printer,
it is likely that it will work immediately without any further driver or software installations.
I did this with my multifunction [Samsung SCX-4521F][03], which is a printer / scanner combination,
and the printer function worked but the scanner did not.

After a bit of research, I discovered that Ubuntu uses
[Common UNIX Printing System (CUPS)][01] for printer management.
CUPS is the standards-based,
open source printing system developed by Apple for OS X and other UNIX-like operating systems.
Assuming CUPS is installed (and it appeares to be with the Ubuntu package),
you can use a web browser to access it features.
To do this, open your web browser and got to [`http://localhost:631/`](http://localhost:631/).
You'll find there an overview of CUPS, administrative functions, and even command-line utilities.

I also discovered that [SANE (Scanner Access Now Easy)][06] is the Linux way of scanning.
SANE supports a great many scanners, and the community around SANE adds support for more scanners all the time.
They claim, by and large, you should simple plug them in and your ready to scan.
However, some scanners, like mine, require more effort.

SANE isn't typically installed with the Ubuntu distribution,
but you can install SANE via

```
sudo apt-get install sane xsane libsane-extras
```

SANE supplies a utility called
[`scanimage`][02] that is a command-line interface to control image acquisition
devices such as flatbed scanners or cameras.
When I ran it, I got the following results

```
$ scanimage --list-devices

No scanners were identified. If you were expecting something different,
check that the scanner is plugged in, turned on and detected by the
sane-find-scanner tool (if appropriate). Please read the documentation
which came with this software (README, FAQ, manpages).
```

Some more web research told me that my printer is a [Xerox manufactured product][04]
and I needed to install the Samsung Unified Linux Driver.
I did the repository setup and package install recommended at
[The Samsung Unified Linux Driver Repository][05].
The install I did was

```
sudo apt-get install suld-driver-4.00.39 suld-configurator-2-qt4
```

I then added my login user to the `scanner` group via `sudo usermod -a -G scanner jeff`.
I ran the command `sane-find-scanner` to see if I'm now able to detect the scanner,
and I got the following disappointing results.

```
$ sudo sane-find-scanner

  # sane-find-scanner will now attempt to detect your scanner. If the
  # result is different from what you expected, first make sure your
  # scanner is powered up and properly connected to your computer.

  # No SCSI scanners found. If you expected something different, make sure that
  # you have loaded a kernel SCSI driver for your SCSI adapter.

could not fetch string descriptor: Pipe error
could not fetch string descriptor: Pipe error
  # No USB scanners found. If you expected something different, make sure that
  # you have loaded a kernel driver for your USB host controller and have setup
  # the USB system correctly. See man sane-usb for details.

  # Not checking for parallel port scanners.

  # Most Scanners connected to the parallel port or other proprietary ports
  # can't be detected by this program.
```

At this point, I did some back tracking and discovered the following article:
[How do I get the scanner to work on a Samsung SCX 4521F Multi function printer?][07]
The work already done above covers step 1 of this article
and step 2 isn't relevant (since I can already print).
I need to perform step 3, that is

```
sudo apt-get install samsungmfp-scanner
```

Now I re-ran the command `scanimage --list-devices` and got the following

```
$ scanimage --list-devices
device `smfp:SAMSUNG SCX-4x21 Series on USB:0' is a SAMSUNG SCX-4x21 Series on USB:0 Scanner
```

but the `sudo sane-find-scanner` got the same
"could not fetch string descriptor: Pipe error" error message when done earlier.

After some more research and using `lsusb | grep Samsung` and `cat /lib/udev/rules.d/40-libsane.rules | grep 3419`,
I discover there is no udev rule for the SCX-4521F scanner.
Therefore, I place the following lines in `/lib/udev/rules.d/40-libsane.rules`

```
# Samsung SCX-4521F
ATTRS{idVendor}=="04e8", ATTRS{idProduct}=="3419", ENV{libsane_matched}="yes"
```

This still didn't give me a good run for `sudo sane-find-scanner`
but the command `scanimage --test` did give passing results.
Given this, I proceeded to using [`xsane`][08] to test out some scanning (it worked!).
xsane is a X Window application and produces it output in [PNM format][09].
You can convert this format to PDF (and many other formats) via the utility [`convert`][10]
(e.g. `convert outfile.pnm outfile.pdf`).

### Configuring HP LaserJet P2035 for Google Cloud Printing
I later abandoned my Samsung printer for the HP LaserJet P2035;
a basic black & white workhorse.
Keeping the multipurpose Samsung working was just too much of a drain on my time.

To get this printer working, I choose to use it with [Google Cloud Print][19].
To do this, for the most part, I followed the post
"[How can I easily set up a Google Cloud Print printer?][20]"
to get my Linux box configured with the Google Cloud Print service.
I then used "[How can I import my printer(s) into Google Cloud Print?][21]"
to get my printer established within Google Cloud Print.

With Google Cloud Print, I'm not only able to print from my Linux desktop,
but from any Chrome browser when I'm logged in to my Google account.
So I can print from my Chromebook, Android Phone, etc.
The next step was to share this print with others,
and that can be done by following this posting:
[Share your printer][22].

<h2>iPod Support</h2>
Ubuntu comes with <a href="https://wiki.gnome.org/Apps/Rhythmbox">Rhythmbox</a> as its music playing application and can be used to synch with a iPod.
Also, you'll want to install several Rhythmbox <a href="http://www.webupd8.org/2012/08/rhythmbox-third-party-plugins-ubuntu-ppa.html">plugins</a>.
That can be done via

```bash
sudo add-apt-repository ppa:fossfreedom/rhythmbox-plugins
sudo add-apt-repository ppa:phw/musicbrainz
sudo apt-get update
sudo apt-get install rhythmbox-plugin-complete
```

After installing any of the above Rhythmbox plugins, enable them from the main menu: Rhythmbox > Plugins.


<h2>Setting-Up Harmony Remote</h2>
I have the <a href="http://www.logitech.com/en-us/product/harmony-remote-650">Logitech Harmony 650 Universal Remote Control</a> for my home theater system.  To program the device, it must be tethered to a web site via a Windows or Mac PC.  The Harmony web site does reference some <a href="http://forums.logitech.com/t5/Harmony-Remotes/Harmony-Linux-support/td-p/294061">Linux support done by others</a>.  The posting "<a href="http://openattitude.com/2011/01/27/how-to-set-up-a-harmony-remote-using-linux/">How to set up a Harmony remote using Linux</a>" and "<a href="http://madabar.com/techblog/2011/09/09/logitech-harmony-universal-remote-linux-software-support/">Logitech Harmony Universal Remote Linux Software Support</a>" give you the basics of what you need to do.  Within these sites you lean about the utilities <a href="http://www.phildev.net/harmony/"><code>concordance</code></a> and <code><a href="http://sourceforge.net/projects/congruity/">congruity</a></code>. The first utility provides most of the functionality of the Windows software provided by Logitech and the second is a GUI application for programming Logitech Harmony remote using concordance.  To install these utilities, do the following:

```bash
sudo apt-get install concordance
sudo apt-get install congruity
```

You also have to configure the web browser to ask what to do with download links. It is best to use Firefox and you can configure downloads via: Edit-&gt;Preferences-&gt;General-&gt;Downloads-&gt;Always ask me where to save files.

Now plug the remote into the PC using the provided cable, and enter the command: <code>sudo concordance -i -v</code>.  You should get a bunch of data and the word "Success", verifying that you can talk to the device.

Now go through the following process:
<ol>
<ol>
	<li>Plug in the remote via the provided USB cable.</li>
	<li>Visit the Harmony Remote's member site <a href="http://members.harmonyremote.com/EasyZapper/New/Main.asp?WebProcessAction=Start&amp;ClassId=HarmonyProcess%2EProcLogin&amp;RelativePath=ProcLogin%2F&amp;ReturnUrl=%2FEasyZapper%2FUserHome%2Easp&amp;AccountType=Normal&amp;Error=&amp;UserName=&amp;Password=&amp;BrowserType=Mozilla%2F5%2E0%20%28X11%3B%20Linux%20i686%29%20AppleWebKit%2F537%2E22%20%28KHTML%2C%20like%20Gecko%29%20Ubuntu%20Chromium%2F25%2E0%2E1364%2E160%20Chrome%2F25%2E0%2E1364%2E160%20Safari%2F537%2E22">URL</a>.  This appears to be a legacy support site and Logitech site listed in the documentation with the device will not work under Linux.</li>
	<li>Create an account or login into your existing account.</li>
	<li>Skip/ignore the “you need to update your software” steps, and eventually a download prompt appears.</li>
	<li>Choosing ‘open’ rather than ‘save’ impressively results in the Congruity graphical setup up launching.</li>
	<li>Step through the setup boxes as prompted.</li>
</ol>
</ol>
<h2>Setting-Up Keyboard &amp; Mouse</h2>
<a href="http://jeffskinnerbox.files.wordpress.com/2013/06/logitech-wireless-illuminated-keyboard-k800.jpg">
    <img class="img-rounded" style="margin: 0px 8px; float: left" alt="Logitech Wireless Illuminated Keyboard K800" src="/images/logitech-wireless-illuminated-keyboard-k800.jpg?w=150" width="150" height="70" />
</a>
 To improve my driving experience, I purchased the
<a href="http://www.logitech.com/en-us/product/wireless-illuminated-keyboard-k800">Logitech Wireless Illuminated Keyboard K800</a>
and the
<a href="http://www.logitech.com/en-us/product/wireless-mouse-m510">Logitech M510 Wireless Mouse</a>.
These devices use the <a href="http://www.logitech.com/en-us/promotions/6072">Logitech Unifying wireless technology</a>, which allows a single wireless receiver to connect with multiple Unifying devices.  I plugged in the mouse's receiver  and in short order the mouse was working.
<a href="http://jeffskinnerbox.files.wordpress.com/2013/06/logitech-m510-wireless-mouse.jpg">
    <img class="img-rounded" style="margin: 0px 8px; float: right" alt="Logitech M510 Wireless Mouse" src="/images/logitech-m510-wireless-mouse.jpg" width="75" height="57" />
</a>
I was a bit concerned about the ability of the receiver to support multiple device (i.e. the keyboard) simultaneously under Linux.
Doing a quick search I found a post discussing how to do the <a href="http://askubuntu.com/questions/113984/is-logitechs-unifying-receiver-supported">device pairing under Linux</a>.  <a href="https://lekensteyn.nl/logitech-unifying.html#ltunify">To install</a> the <a href="https://git.lekensteyn.nl/ltunify/"><code>ltunify</code></a> pairing software, and do the pairing, do the following:

```bash
cd ~/src
git clone https://git.lekensteyn.nl/ltunify.git
cd ltunify
make install-home
```

* To list the devices that are paired: <code>sudo ltunify list</code>
* To pair a device: <code>sudo ltunify pair</code>, then turn your wireless device off and on to start pairing.
* To unpair a device: <code>sudo ltunify unpair mouse</code>
* To get help: <code>sudo ltunity --help</code>

<h2>Mouse Xbindkeys</h2>
The M510 mouse has extra buttons on its left side and the scroll wheel  has a side-to-side click, but out of the box,the don't do anything under Linux.  It would be nice to make use of these extra buttons.  To address this problem, I found pointers in these posts: <a href="http://ubuntuforums.org/showthread.php?t=1957300">How to get all those extra mouse buttons to work</a>, <a href="http://askubuntu.com/questions/24916/how-do-i-remap-certain-keys">How do I remap certain keys</a>,  <a href="http://blog.hanschen.org/2009/10/13/mouse-shortcuts-with-xbindkeys/">Mouse shortcuts with xbindkeys</a>, and <a href="http://forums.logitech.com/t5/Mice-and-Pointing-Devices/Guide-for-setup-Performance-MX-mouse-on-Linux-with-KDE/td-p/517167">Guide for setup Performance MX mouse on Linux (with KDE)</a>.

Basically, using<a href="http://www.nongnu.org/xbindkeys/#utilisation"> Xbindkeys</a>, I want to map the mouse buttons with desired actions. I want to setup the M510 mouse extra buttons as follows:
<ul>
<ul>
	<li><strong>Left-side Button</strong>: <strong>up</strong> mapped to <strong>Page Up</strong> and <strong>down</strong> mapped to <strong>Page Down</strong></li>
	<li><strong>Scroll Wheel</strong>: <strong>move left</strong> mapped to <strong>Copy</strong> and <strong>move right</strong> mapped to <strong>Paste</strong></li>
	<li><strong>Scroll Wheel</strong>: <strong>press</strong> mapped to <strong>Paste</strong></li>
</ul>
</ul>
<a href="http://linux.die.net/man/1/xev"><code>xev</code></a> prints the contents of X events by creating a window and then asks the X Server to send it events whenever anything happens to the window.  It's sort of a keyboard and mouse events sniffer.  If we know what event name the X Server gives to our buttons, then we can remap them. Using this program, we find out the following:
<ul>
<ul>
	<li><strong>Left-side Button</strong>: <strong>up</strong> is known by the X Server as <strong>button 9</strong></li>
	<li><strong>Left-side Button</strong>: <strong>down</strong> is known by the X Server as <strong>button 8
</strong></li>
	<li><strong>Scroll Wheel</strong>: <strong>move left</strong> is known by the X Server as <strong>button 6</strong></li>
	<li><strong>Scroll Wheel</strong>: <strong>move right</strong> is known by the X Server as <strong>button 7</strong></li>
	<li><strong>Scroll Wheel</strong>: <strong>press</strong> is known by the X Server as <strong>button 2</strong></li>
</ul>
</ul>
Now we need a mechanism to re-map mouse (or keyboard) button inputs.  <a href="https://wiki.archlinux.org/index.php/Xbindkeys"><code>Xbindkeys</code></a> is is a X Windows program that enables us to bind commands to certain keys or key combinations on the keyboard and it will also work for the mouse.  The file  <code>~/.xbindkeysrc</code> is what <code>xbindkeys</code> uses as a configuration file to link a command to a key/button on your keyboard/mouse.  There is also <code>xbindkeys_config</code> is an easy to use gtk program for configuring <code>xbindkeys</code>. To install these tools, do the following:

```bash
sudo apt-get install xautomation xbindkeys xbindkeys-config
```

To create your initial xbindkeys configuration file, just run the following command:

```bash
xbindkeys --defaults &gt; $HOME/.xbindkeysrc
```

The syntax of the contents of .xbindskesrc is simple and is illustrated below:

```bash
# short comment
    "command to start"
        associated key
```

The <code>"command to start"</code> is simply a shell command (that you can run from a terminal),  and <code>"associated key"</code> is the key or button.

Now, using an editor, update the `.xbindkeysrc` file to include the following:

```
# Do a Page Down when mouse left-side down button is pressed
"xte 'key Page_Down'"
    b:8
# Do a Page Up when mouse left-side up button is pressed
"xte 'key Page_Up'"
    b:9
# Move scroll wheel to the left to copy text
"xte 'keydown Control_L' 'keydown Shift_L' 'key c' 'keyup Control_L' 'keyup Shift_L'"
    b:6
# Move scroll wheel to the right to paste text
"xte 'keydown Control_L' 'keydown Shift_L' 'key v' 'keyup Control_L' 'keyup Shift_L'"
    b:7
# Press scroll wheel to paste text
"xte 'keydown Control_L' 'keydown Shift_L' 'key v' 'keyup Control_L' 'keyup Shift_L'"
    b:2
```

To activate any modification of the `.xbindkeysrc` configuration file, your have to restart xbindkeys.   This can be done via:

```bash
pkill xbindkeys
xbindkeys
```

Other useful resources are:
<ul>
<ul>
	<li><code>xte</code> is a program that generates fake input using the XTest extension</li>
	<li><code>xvkbd</code> is a virtual (graphical) keyboard program for X Window System which provides facility to enter characters onto other X clients by clicking on a keyboard displayed on the screen.</li>
	<li><code>xbindkeys_show</code> is a program to show the grabbing keys used in xbindkeys</li>
	<li><a href="https://wiki.archlinux.org/index.php/Xmodmap"><code>xmodmap</code></a> is a utility for modifying keymaps and pointer button mappings in <a href="https://wiki.archlinux.org/index.php/Xorg">Xorg</a>.</li>
</ul>
</ul>
<h2>Moving from SplashID to KeePass</h2>
I have been using the MS Windows based <a href="https://www.splashid.com/">SplashID</a> to store passwords, credit cards, account numbers, etc. securely on my PC and cell phone.  I got it to work under <a href="http://www.winehq.org/">Wine</a> but I'm considering Linux alternatives.  I'm growing tired of purchasing SplashID licenses and the user interface looks like it was designed in the 1970's.  I came across "<a href="http://lifehacker.com/5529133/five-best-password-managers">Five Best Password Managers</a>" which gave me the incentive to check out <a href="http://keepass.info/">KeePass</a>.  KeePass is a cross platform, open source password manager.  It is extendable via its plugin framework, where additional functionality can be added.  It looks like I can use <a href="https://www.dropbox.com/install?os=lnx">Dropbox</a> and <a href="http://www.keepassdroid.com/">KeePassDroid</a> to get the data on my cell phone.  I found these sites useful to get the job done:
<ul>
<ul>
	<li><a href="http://www.androidpolice.com/2011/03/30/tutorial-sync-passwords-across-computers-and-android-with-keepass/">Sync Passwords Across Computers And Android With KeePass</a></li>
	<li><a href="http://lifehacker.com/5063176/how-to-use-dropbox-as-the-ultimate-password-syncer">How to Use Dropbox as the Ultimate Password Syncer</a></li>
</ul>
</ul>
The first step was to get KeePass installed in Ubuntu.  I found it on the <a href="http://en.wikipedia.org/wiki/Ubuntu_Software_Center">Ubuntu Software Center</a> or you can use:

```bash
sudo apt-get install keepass2 keepass2-doc
```

I then exported the contents of my SplashID database to a <a href="http://en.wikipedia.org/wiki/Comma-separated_values">CSV file</a> and imported it into keepass2.  I set up the KeePass2 database within my Dropbox folder.  This way, it can be scych'ed with my cell phone. I then installed KeePassDroid on my cell phone, pointing it at the database with the cell phones Dropbox.  <a href="http://www.keepassdroid.com/">KeePassDroid</a> is a port of the KeePass password safe for the Android platform.

There is some cleanup of the fields within the KeePass2 database, but the data is now accessable on both my PC and my cell phone.

## Installing Slake Utility
[Slack][16] is a team collaboration tool that replaced email with a chat app that
plugged in to all their favorite services like Twitter, GitHub, and Dropbox.
It organize your team conversations in open channels.
You can make a channel for a project, a topic, a team, etc.
but transparent view of all that’s going on.

At the time of  writing this post,
Slake didn't have an offical tool for the Linux desktop,
but [ScudCloud][17] provide the unofficial Slack client for Ubuntu.
[And it's open source][18].

To install the Slake client, and its spelling checker, do the following:

```bash
sudo apt-add-repository -y ppa:rael-gc/scudcloud
sudo apt-get update
sudo apt-get install scudcloud
sudo apt-get install hunspell-en-us
```

If you want to use a Slack icon instead of ScudCloud
(which is not possible to include in this package due to copyright)

```bash
sudo dpkg-divert --add --rename --divert /opt/scudcloud/resources/scudcloud.png.real /opt/scudcloud/resources/scudcloud.png
sudo cp ~/scudcloud.png /opt/scudcloud/resources/
sudo chmod +r /opt/scudcloud/resources/scudcloud.png
```

<h2>Installing Wine</h2>
<a href="http://www.winehq.org/">Wine</a> allows you to run many Windows programs on Linux. Instead of simulating internal Windows logic like a virtual machine or emulator, Wine translates Windows API calls into Linux calls.  I used the following to install Wine:

```bash
sudo add-apt-repository ppa:ubuntu-wine/ppa
sudo apt-get update
sudo apt-get install wine
```

Using Wine on Windows programs can be as simple  or complex, it all depends on the program.  <a href="https://help.ubuntu.com/community/Wine">Ubuntu provides some guidance on how to use Wine</a>, also check out <a href="http://www.winehq.org/site/documentation">Wine Documentation</a> and <a href="http://wiki.winehq.org/HowTo">Wine HowTo</a>.

At the time of writing of this post, the only thing I loaded via Wine was SplashID, which worked without any challenges.

>**Note:** Ultimately, I abandoned Wine and installed VirtualBox.
See my posting titled "Having Fun with Wine, VirtualBox, and TurboTax".

<h2>Installing PlayOnLinux</h2>
<a href="http://www.playonlinux.com/en">PlayOnLinux</a> is based on Wine, and so profits from all its features, yet it keeps the user from having to deal with all its complexity.  I also install this package, in part because it comes pre-configured to load some popular tools.  I used it to install Internet Explore (sometimes its the only browser you can get to work on a site), and Kindle.
<h2>Installing RAID</h2>
RAID is an acronym for Redundant Array of Independent Disks and RAID as the first tier in your data protection strategy. It uses multiple hard disks storing the same data to protect against some degree of physical disk failure. The amount of protection it affords depends upon the type of RAID used.  I'm not going to go into all the types of RAID, nor their benefits, but you can find much of this information, and much more, in the following links:
<ul>
<ul>
	<li><a href="https://wiki.ubuntu.com/Raid">Raid</a></li>
	<li><a href="https://help.ubuntu.com/community/FakeRaidHowto">FakeRaidHowto</a></li>
	<li><a href="http://augmentedtrader.wordpress.com/2012/05/13/10-things-raid/">10 Surprising Facts About RAID</a></li>
	<li><a href="http://en.wikipedia.org/wiki/Mdadm">Mdadm</a></li>
</ul>
</ul>
In my case, I had an existing disk drive (non-RAID), loaded with data, and I wanted to add an additional drive to make it a RAID.  This presents some challenges since you're attempting to preserve the data.  In this regard, I found the following links helpful:
<ul>
<ul>
	<li><a href="http://ascend4.org/Installing_Raid_1_on_Existing_Ubuntu_Server">Installing Raid 1 on Existing Ubuntu Server</a></li>
	<li><a href="http://ubuntuforums.org/showthread.php?t=1703904">Using MDADM to add RAID 1 setup to existing data drive</a></li>
	<li><a href="https://wiki.archlinux.org/index.php/Convert_a_single_drive_system_to_RAID">Convert a single drive system to RAID </a></li>
	<li><a href="http://feeding.cloud.geek.nz/posts/setting-up-raid-on-existing/">Setting up RAID on an existing Debian/Ubuntu installation</a></li>
	<li><a href="http://linuxconfig.org/linux-software-raid-1-setup#h1-introduction">Software Raid 1 Setup</a></li>
	<li><a href="http://linhost.info/2012/05/configure-a-software-raid1-array-in-linux/">Configure Software RAID1 Array In Linux</a></li>
</ul>
</ul>
I had already installed one <a href="http://en.wikipedia.org/wiki/Solid-state_drive">SSD</a> and one <a href="http://en.wikipedia.org/wiki/Hard_disk_drive">HHD</a> disk drives in my system.  I then installed a third drive that matched the HHD drive.  My 128GB SSD has the device name of <code>/dev/sda1</code> and mounted as <code>/boot</code>.  The currently installed 1TB SATA HDD has the device name of <code>/dev/sdb1</code> and mounted as /home.  The newly install 1TB SATA HDD has the device name of <code>/dev/sdc</code>.

Description of the procedures I used to create the RAID is as follows:
<ul>
<ul>
	<li>Physically install the additional hard drive.</li>
	<li>Install <a href="http://en.wikipedia.org/wiki/Mdadm">mdadm</a>, which is the Linux utility used to manage software RAID devices.</li>
</ul>
</ul>

```
sudo apt-get install mdadm
```

<ul>
<ul>
	<li>Partition the newly installed disk. Use the following inputs: n to establish a logic partition, p to make it a primary partition, 1  should be the partition number, use the same sectors as the currently installed drive, t to set the partition type, fd hex code type, p to print what the partition table will look like, w to write all of the changes to disk.</li>
</ul>
</ul>

```
sudo fdisk /dev/sdc
```

<ul>
<ul>
	<li>Create a single-disk RAID-1 array (aka degraded array) with the existing hard drive. (Note the "missing" keyword is specified as one of the devices. We are going to fill this missing device later with the new drive.)</li>
</ul>
</ul>

```
sudo mdadm --create /dev/md0 --level=1 --raid-devices=2 missing /dev/sdc1
```

<ul>
<ul>
	<li>At this point, if you do a <code>sudo fdisk -l | grep '^Disk'</code>, you see a new disk, that being <code>/dev/md0</code>.  This is the RAID but not yet fully created.</li>
	<li>Make the file system (ext3 type like the currently installed hard drive) on the RAID device.</li>
</ul>
</ul>

```
sudo mkfs -t ext3 -j -L RAID-ONE /dev/md0
```

<ul>
<ul>
	<li>Make a mount point for the RAID and mount the device.</li>
</ul>
</ul>

```bash
sudo mkdir /mnt/raid1
sudo mount /dev/md0 /mnt/raid1</code></p>
```

<ul>
<ul>
	<li>Copy over the files form the original hard drive to the new hard drive using <a href="http://en.wikipedia.org/wiki/Rsync">rsync</a>.</li>
</ul>
</ul>

```
sudo rsync -avxHAXS --delete --progress /home/* /mnt/raid1
```

<ul>
<ul>
	<li>Just  in case of a disaster, copy the original hard drive to the SSD <code>/dev/sda1</code> root file system as /<code>home_backup.</code></li>
</ul>
</ul>

```
sudo rsync -avxHAXS --delete --progress /home /home_backup
```

<ul>
<ul>
	<li>After the copy, to see the status of the RAID, use the command <code>sudo mdadm --detail /dev/md0</code>.  What you see is that the <code>/dev/sdc1</code> drives is in "active sync " state but no reference to the other drive.  When you do <code>cat /proc/mdstat</code> you see "<code>md0 : active raid1 sdc1[1]</code>" but again no reference to the other drive.</li>
	<li>Edit your <code>/etc/fstab</code> file and edit all references of <code>/dev/sdb1</code> to <code>/dev/md0</code> and reboot the system.  With this, <code>/dev/md0</code> will be used as <code>/home</code> on the next boot. This will free up the existing hard drive so it can be made ready for the RAID.</li>
	<li>With fdisk, re-partition /dev/sdb1 with a partition of type fd. Use the following inputs: n to establish a logic partition, p to make it a primary partition, 1  should be the partition number, use the same sectors as the currently installed drive, t to set the partition type, fd hex code type, p to print what the partition table will look like, w to write all of the changes to disk.</li>
</ul>
</ul>

```
sudo fdisk /dev/sdb1
```

<ul>
<ul>
	<li>Add <code>/dev/sdb1</code> to your existing RAID array.</li>
</ul>
</ul>

```
mdadm /dev/md0 --add /dev/sdb1
```

<ul>
<ul>
	<li>The RAID array will now start to rebuild so that the two drives have the same data. Use the following command to check the status of the rebuild.</li>
</ul>
</ul>

```
sudo mdadm -D /dev/md0
```

<ul>
<ul>
	<li>For Ubuntu, it seems it is also necessary to update the <code>/etc/mdadm/mdadm.conf</code> file. If this is not done, the RAID device will not be mounted when you reboot the system. The solution is to run the following command on your system, once the RAID drive has been configured:</li>
</ul>
</ul>

```bash
sudo cp /etc/mdadm/mdadm.conf /etc/mdadm/mdadm.conf_backup
sudo mdadm --detail --scan >> /etc/mdadm/mdadm.conf
```


[01]:https://www.cups.org/
[02]:http://linux.about.com/library/cmd/blcmdl1_scanimage.htm
[03]:http://www.samsung.com/levant/consumer/computers-peripherals/printers/mono-multi-function/SCX-4521F/XSG
[04]:http://www.bchemnet.com/suldr/supported.html
[05]:http://www.bchemnet.com/suldr/index.html
[06]:http://www.sane-project.org/
[07]:http://askubuntu.com/questions/231778/how-do-i-get-the-scanner-to-work-on-a-samsung-scx-4521f-multi-function-printer
[08]:http://linux.about.com/library/cmd/blcmdl1_xsane.htm
[09]:http://en.wikipedia.org/wiki/Netpbm_format
[10]:http://www.imagemagick.org/script/convert.php``
[11]:http://jeffskinnerbox.me/posts/2013/Apr/28/building-my-linux-box-the-plan/
[12]:http://www.logitech.com/assets/32377/squeezeboxclassic-ownersguide.pdf
[13]:http://www.tixati.com/optimize/open-ports-linux.html
[14]:http://www.instructables.com/id/Wall-Mounted-SqueezePlayer-with-Raspberry-Pi/?ALLSTEPS
[15]:https://www.google.com/intl/en-US/chrome/browser/desktop/index.html
[16]:https://slack.com/
[17]:http://www.makeuseof.com/tag/linux-loving-slack-users-heres-an-app-for-you/
[18]:https://github.com/raelgc/scudcloud/
[19]:http://www.google.com/cloudprint/learn/#utm_campaign=en&utm_source=en-ha-ww-sk&utm_medium=ha&utm_term=%2Bgoogle%20%2Bcloud%20%2Bprint
[20]:http://askubuntu.com/questions/158874/how-can-i-easily-set-up-a-google-cloud-print-printer
[21]:http://askubuntu.com/questions/172716/how-can-i-import-my-printers-into-google-cloud-print
[22]:https://support.google.com/chromebook/answer/2541899?hl=en-GB&rd=1
