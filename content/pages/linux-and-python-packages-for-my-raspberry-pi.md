Title: Linux and Python Packages for My Raspberry Pi
Slug: linux-and-python-packages-for-my-raspberry-pi
Status: hidden

I have two Raspberry Pi's (RPi) and will likely have more as I proceed deeper into the projects I have identified.
Not all the RPi's will be configured the same
and I'm using this page to document what Linux and Python packages I have loaded.

### My Raspberry Patch
<a href="/images/raspberry-pi-python-logo-rpi-logo.jpg">
    <img class="img-rounded" style="margin: 0px 8px; float: left" alt="Raspberry Pi + Python Logo + RPi Logo" src="/images/raspberry-pi-python-logo-rpi-logo.jpg" width="150" height="150" />
</a>
Given that the Raspberry Pi (RPi) is a relatively new devices, you can expect the software for this platform to undergo frequent updates.
First you have the RPi's Linux
[operating system (OS)](http://en.wikipedia.org/wiki/Operating_system)
(in my case [Occidentalis](http://learn.adafruit.com/adafruit-raspberry-pi-educational-linux-distro/occidentalis-v0-dot-2),
which is built on top of
[Raspbian](http://www.raspberrypi.org/downloads)).
This software's is primary made of the many stable Linux utilities with some less stable RPi extensions and the RPi
[kernel](http://en.wikipedia.org/wiki/Kernel_(computing)).
Then you have the RPi
[firmware](http://en.wikipedia.org/wiki/Firmware)
 gets regular updates from the RPi development community.
And finally you have any of the applications and utilities that you might have gotten from other sources that are not part of the normal RPi Linux distribution.
This could include things like
[WebIOPi](http://code.google.com/p/webiopi/)
 also includes packages for
[Python](http://www.python.org/).

|   RPi Board  | Linux Packages |
|:------------:|:----------------|
|  **RedRPi**  | Synaptic, Vim, PyRoom, Git, Chromium, Apache, Python, IPython, matplotlib, basemap, numpy, Pandas, PyQt4, markdown, Conky, SendEmail, SSHFS, ALSA, Festival, Flite, dos2unix, x11-apps, x11-xserver-utils, xterm, fonts-inconsolata,  Mathematica |
| **BlackRPi** | Synaptic, Vim, Git, Chromium, Python, SSHFS, Wireshark, Microcom, Arduino, dos2unix |

### Do Your House Cleaning First
I'm loading software via the Linux
[`apt-get`](http://en.wikipedia.org/wiki/Advanced_Packaging_Tool)
utility and you need to make sure its database is up to date. First thing to do is to update apt-get's local database with server's pkglist's files.  Then checks for outdated packages in the system and automatically upgrades them.  Execute the following commands:

``` bash
sudo apt-get update
sudo apt-get upgrade
```

To do similar updates for Python, use the following:

``` bash
sudo easy_install -U distribute
```

#### Search for Package or Package Description
Some times you don't know package name but aware of some keywords to search the package.  To search for packages, use the following:

``` bash
apt-cache search "text-to-search"
apt-cache search "text-to-search" | grep "more-search-text"
```

#### Erase Package and Configuration File
To completely erase from you Linux system, you can use the following:

``` bash
apt-get --purge remove {package-name}
```

#### List All Installed Packages
You can use following command to find out all Linux package names available on your system:

``` bash
dpkg -l
```

Suppose you want to find out if a specific package is installed, say its "apache-perl", you type the command:

``` bash
dpkg -s apache-perl
```

To get a list of all the Python packages installed you can use:

``` bash
pip freeze --local
```

### Linux and Python Packages
#### Python
Python is an interpreted, object-oriented, high-level programming language  attractive for rapid application development, as well as for use as a scripting or glue language to connect existing components together. Python's simple, easy to learn syntax emphasizes readability and therefore reduces the cost of program maintenance.  While the Raspberry Pi Linux distribution is likely to already have some python packages installed, execute the following to make sure you have all that is needed (see
[distribute and easy_install](http://www.youtube.com/watch?v=jI8VBP1wEZU)
 more details).

``` bash
sudo apt-get install python
sudo apt-get install python-dev
sudo apt-get install libjpeg-dev
sudo apt-get install libfreetype6-dev
sudo apt-get install python-setuptools
sudo apt-get install python-pip
```

With this done, now its time to install the required Python libraries but first, update the Python distribution by running

``` bash
sudo easy_install -U distribute
```

Finally you can install the Raspberry Pi GPIO (General Purpose Input/Ouput) and other packages:

``` bash
sudo pip install RPi.GPIO
sudo pip install pySerial
sudo pip install nose
sudo pip install cmd2
```

For 2D plotting, install the
[matplotlib](http://matplotlib.org/index.html)
library which produces publication quality figures in a variety of hardcopy formats and interactive environments across platforms. You can generate plots, histograms, power spectra, bar charts, errorcharts, scatterplots, etc, with just a few lines of code.The matplotlib
[basemap](http://matplotlib.org/basemap/index.html)
toolkit is a library for plotting 2D data on maps in Python.
[numpy](http://www.numpy.org/)
is a foundation package for scientific computing with Python.  Besides its obvious scientific uses, NumPy can also be used as an efficient multi-dimensional container of generic data.  The package
[scipy](http://www.scipy.org/)
contains modules for optimization, linear algebra, integration, interpolation, special functions, FFT, signal and image processing, ODE solvers, and other tasks common in science and engineering. The The basic data structure in SciPy is a multidimensional array provided by the NumPy module.  And to round things off,
[pandas](http://pandas.pydata.org/)
is a Python package providing fast, flexible, and expressive data structures designed to make working with structured (tabular, multidimensional, potentially heterogeneous) and time series data both easy and intuitive. It aims to be the fundamental high-level building block for doing practical data analysis in Python.

``` bash
sudo apt-get install python-matplotlib
sudo apt-get install python-mpltoolkits.basemap
sudo apt-get install python-numpy
sudo apt-get install python-scipy
sudo apt-get install python-pandas
```

PyQt4 PyQt is a set of Python  bindings for
[Digia's Qt](http://qt.digia.com/)
cross platform framework that is widely used for developing application software with a graphical user interface (GUI).

``` bash
sudo apt-get install python-qt4
```

#### IPython
[IPython](http://ipython.org/)
can do much more than the standard Python. IPython is an interactive shell for the Python programming language that offers enhanced introspection, additional shell syntax, tab completion and rich history. IPython allows non-blocking interaction with Tkinter, GTK, Qt and wxWidgets (the standard Python shell only allows interaction with Tkinter).  IPython provide a rich
[text web interface](http://en.wikipedia.org/wiki/Rich_Internet_application)
(i.e. Web application that has many of the characteristics of desktop application software delivered by way of a browser) called Notebook.  For scientific and engineering work, it is often presented as a companion tool to Matplotlib.

``` bash
sudo apt-get install ipython ipython-doc ipython-notebook ipython-qtconsole
```

#### Markdown
Markdown is a text-to-HTML conversion tool for web writers, and its useful for software documentation.
Markdown allows you to write using an easy-to-read, easy-to-write plain text format,
then convert it to structurally valid XHTML (or HTML).
The idea is that a Markdown-formatted document should be publishable as-is,
as plain text, without requiring conversion to HTML.
I use it extensively for my software documentationm.

```bash
sudo apt-get install markdown
```

#### X Window Utilities
The `x11-apps` package provides a miscellaneous assortment of X applications that ship with the X Window System, including `xclock` (graphical clocks), `xconsole` (monitors system console messages), `xeyes` (demo program ... eyes track the pointer), `xload` (monitor for the system load average), `xwd` (utility for taking screenshots), etc. `xterm` is the standard terminal emulator for the X Window System. The `x11-xserver-utils` package provides a miscellaneous assortment of X Server utilities that ship with the X Window System, including `xrdb` (a tool to manage the X server resource database), `xsetroot` (a tool for tailoring the appearance of the root window)

``` bash
sudo apt-get install x11-apps
sudo apt-get install x11-xserver-utils
sudo apt-get install xterm
```

#### Synaptic
Synaptic is a graphical package management program for Linux software. It provides the same features as the `apt-get` command line utility with a X Windows GUI front-end.  While I will not be using X Windows at this moment, in the future I will and
[synaptic](http://en.wikipedia.org/wiki/Synaptic_(software))
is a very nice alternative to `apt-get` when in in X Windows.

``` bash
sudo apt-get install synaptic
```

#### Vim
Vim is a highly configurable text editor and widely available for many different platforms.
[Emacs](http://en.wikipedia.org/wiki/Emacs)
also has a large following, but I think everyone needs to be prepared to use
[vim](http://en.wikipedia.org/wiki/Vim_(text_editor))
if your serious about Linux.  The RPi Linux distribution appears to have `vi` loaded but `vim` is a superior tool.

``` bash
sudo apt-get install vim
sudo apt-get install vim-gtk
```

`vim` will work for you just fine right out of the box but its real power is demonstrated by tapping into it configuration via the `.vimrc` file.
Configuring vim is a major topic, covered by many web sites and books, but you'll find my `.vimrc` file on
[GitHub](https://github.com/jeffskinnerbox/dotvim).

#### PyRoom
PyRoom is a a fullscreen editor without buttons, widgets, formatting options, menus and with only the minimum of required dialog windows, it doesn't have any distractions and lets you focus on writing and only writing.  It is the polar opposite of Vim, and as such, is a good editor for the novice or casual user, but requires X Windows and Python.

``` bash
sudo apt-get install pyroom
```

#### Git
Given that I plan to hack some _to-be-determined_ applications using the RPi, I should consider establish some tools for  source code management. The last time I did serious software development in Linux (really Unix), I was using Source Code Control System (SCCS). The tools are much improved now and
[`git`](http://git-scm.com/documentation)
is hands down the way to go.

``` bash
sudo apt-get install git
```

#### Chromium
We all have a favorite browser and I choose
[`chromium`](http://www.chromium.org/Home)
for my RPi.  Chromium serves as a base for Google Chrome, which is Chromium re-branded (name and logo) with very few additions.

``` bash
sudo apt-get install chromium
```

#### Apache
Apache is a very popular web server and I will make use of it for any web application that are required. It can be installed, along with its required scripting language, via the command below.

``` bash
sudo aptitude install apache2 php5
```

#### Conky
[Conky](http://conky.sourceforge.net/)
is a system monitor tool for X Windows.  Conky is highly configurable and is able to monitor many system variables including the status of the CPU, memory, swap space, disk storage, temperatures, processes, network interfaces, battery power, system messages, e-mail inboxes, Linux updates, runs many popular music players, and much more.  To install the standard Conky package, use the following:

``` bash
sudo apt-get install conky-std
```

#### SendEmail
[sendEmail](http://www.debianadmin.com/how-to-sendemail-from-the-command-line-using-a-gmail-account-and-others.html)
is a command-line outgoing email
[SMTP](http://en.wikipedia.org/wiki/Simple_Mail_Transfer_Protocol)
client. It is used for sending e-mails from the command line, and can therefore be easily embedded into other applications or scripts. It great for integrating email into shell or python scripts. All fields of the sent emails (such as the sender and reply-to addresses, recipients, message body, subject and attachments) are specified as command-line arguments, as well as other parameters (such as the SMTP server name, user and password for SMTP account, network timeouts, etc.).

``` bash
sudo apt-get install sendemail
```

#### SSHFS
[SSHFS](https://help.ubuntu.com/community/SSHFS) (SSH Filesystem)
is a file system client to mount and interact with directories and files located on a remote server or workstation. SSHFS requires no special software on the remote side, just a SSH server with support for the SFTP extension. SSHFS is an alternative to traditional network file system, such as NFS, OpenAFS or Samba. Setting up these network file systems requires administrator access on both systems, but not for SSHFS.

``` bash
sudo apt-get install sshfs
```

#### Advanced Linux Sound Architecture (ALSA)
The [Advanced Linux Sound Architecture (ALSA)](http://en.wikipedia.org/wiki/Advanced_Linux_Sound_Architecture)
provides audio and MIDI functionality to the Linux operating system. Is structured as Linux kernel module and provides an API for device drivers for sound cards.

``` bash
sudo apt-get install alsa-utils
sudo apt-get install mpg321
sudo apt-get install lame
```

#### Festival / Flite
The [Festival](http://www.cstr.ed.ac.uk/projects/festival/)
Speech Synthesis System offers a general framework for building
[speech synthesis](http://en.wikipedia.org/wiki/Speech_synthesis)
systems as well as including examples of various modules. As a whole it offers full text to speech through a number APIs: from shell level, though a Scheme command interpreter, as a C++ library, from Java, and an Emacs interface. Festival is multi-lingual (currently English (British and American), and Spanish) though English is the most advanced. Other groups release new languages for the system.
And full tools and documentation for build new voices are available through Carnegie Mellon's
[FestVox](http://festvox.org/index.html) project.

[Flite](http://www.speech.cs.cmu.edu/flite/) (festival-lite) is a small,
fast run-time synthesis engine developed at CMU and primarily designed for small embedded machines and/or large servers. Flite is designed as an alternative synthesis engine to Festival for voices built using the FestVox suite of voice building tools.

``` bash
sudo apt-get install festival
sudo apt-get install flite
```

#### Wireshark
[Wireshark](http://www.wireshark.org/)
(originally named Ethereal) is a free and open-source packet analyzer. Wireshark is very similar to
[tcpdump](http://en.wikipedia.org/wiki/Tcpdump),
but has a graphical front-end, plus some integrated sorting and filtering options.  Wireshark allows the user to put
[network interface controllers](http://en.wikipedia.org/wiki/Network_interface_controller)
that support
[promiscuous mode](http://en.wikipedia.org/wiki/Promiscuous_mode)
into that mode, in order to see all traffic visible on that interface, not just traffic addressed to one of the interface's configured addresses and broadcast/multicast traffic.

``` bash
sudo apt-get install wireshark
```

#### Microcom
[Microcom](http://manpages.ubuntu.com/manpages/lucid/man1/microcom.1.html)
is a minimalistic terminal program for accessing devices (e.g. switches) via a serial connection. it features connection via rs232 serial interfaces (including setting of transferrates) as well as in "telnetmode" as specified in rfc2217.

``` bash
sudo apt-get install microcom
```

#### Arduino
Arduino is a single-board microcontroller designed to make the process of using electronics in multidisciplinary projects more accessible. The hardware consists of a simple open source hardware design for the Arduino board with an Atmel AVR processor and on-board input/output support. Arduino is a descendant of the open-source
[Wiring](http://en.wikipedia.org/wiki/Wiring_(development_platform))
platform and is programmed using a Wiring-based language (syntax and libraries), similar to C++ with some slight simplifications and modifications.  What is installed here is the Arduino 
[integrated development environment](http://en.wikipedia.org/wiki/Integrated_development_environment) (IDE).

``` bash
sudo apt-get install arduino
```

To run the Arduino IDE, simple type the following on the RPi command line: `arduino &`.

#### Dos2Unix
I [mount my Window PC’s Dropbox directory](http://jeffskinnerbox.wordpress.com/2012/11/11/dropbox-for-the-raspberry-pi-sort-of/)
on my RPi so I can work in both environments at will. While editing files on a machine running some form of Windows and uploading them to a Linux server is convenient, it can cause unforeseen complications. Windows-based text editors put one set of special characters at the end of lines (i.e. carriage return and line break = `\r\n`), while Unix/Linux puts other characters (i.e. line break = `\n`). This is normally harmless, but some applications on a Linux cannot understand these characters and can cause Linux to not respond correctly.

The best example of Linux behaving badly (and the only one I know)  is the execution of “shebang” or the “`#!...`” at the top of a bash, python, perl, etc. script.  If you edit these files in DOS, then move them to Linux,
[shebang](http://bash.cyberciti.biz/guide/Shebang)
will stop working.  Editing them under DOS is the origin of the problem, since a DOS based text editor will inject the extra carriage return character at the end of the text line.

To fix this problem, you can quickly convert an ASCII text file from DOS format (carriage return and line break) to the Unix format (line break), you can use the tool `dos2unix`.  Run this utility on the effected file and shebang should work once again.

``` bash
sudo apt-get install dos2unix
```

#### Fonts
The native fonts on RPi are nothing to get excited about and can be hard on the eyes. I prefer
[Inconsolata](http://www.levien.com/type/myfonts/inconsolata.html)
which claims to be designed primarily for use on the screen and high resolution rendering. It is a
[monospaced](http://en.wikipedia.org/wiki/Monospaced_font)
font designed for source code listing, terminal emulators, and similar uses.

``` bash
sudo apt-get install fonts-inconsolata
```

A similar font is Consolas and is what I use with my PC based X server
([Cygwin/X](http://x.cygwin.com/)) and on my iPad's
[iSSH](http://www.zinger-soft.com/iSSH_features.html) X server.
