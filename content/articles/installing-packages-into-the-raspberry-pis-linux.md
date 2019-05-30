Title: Installing Packages into the Raspberry Pi's Linux
Date: 2012-09-25 00:01
Category: Electronics
Tags: Raspberry Pi, Linux
Slug: installing-packages-into-the-raspberry-pis-linux
Author: Jeff Irland
Image: raspberry-pi-image-from-adafruit.jpg
Summary: At some point its time to build the software foundation that you'll need to make it an effective development environment on the Raspberry Pi.  These are the packages that I loaded to get myself up and running.

Once I got the <a href="http://www.raspberrypi.org/">RPi</a> up and running <a href="http://jeffskinnerbox.wordpress.com/2012/09/09/raspberry-pi-has-arrived/">headless</a> on my local network, its time to build the software foundation that I'll need to make it an effective development environment.  These are the packages that I loaded to get myself up and running.
<h2>Do Your House Cleaning First</h2>
I'm loading software via the Linux <a href="http://en.wikipedia.org/wiki/Advanced_Packaging_Tool"><code>apt-get</code></a> utility and you need to make sure its database is up to date. First thing to do is to update apt-get's local database with server's pkglist's files.  Then checks for outdated packages in the system and automatically upgrades them.  Execute the following commands:

<p style="padding-left:30px;"><code>sudo apt-get update
sudo apt-get upgrade</code></p>

<h2>Search for Package or Package Description</h2>
Some times you don't know package name but aware of some keywords to search the package.  To search for packages, use the following:
<p style="padding-left:30px;"><code>apt-cache search "<em>text-to-search</em>"
apt-cache search "<em>text-to-search</em>" | grep "<em>more-search-text</em>"</code></p>

<h2>Synaptic</h2>
Synaptic is a graphical package management program for Linux software. It provides the same features as the <code>apt-get</code> command line utility with a X Windows GUI front-end.  While I will not be using X Windows at this moment, in the future I will and <a href="http://en.wikipedia.org/wiki/Synaptic_(software)"><code>synaptic</code></a> is a very nice alternative to apt-get when in in X Windows.
<p style="padding-left:30px;"><code>sudo apt-get install synaptic</code></p>

<h2>Vim</h2>
Vim is a highly configurable text editor and widely available for many different platforms.  <a href="http://en.wikipedia.org/wiki/Emacs">Emacs</a> also has a large following, but I think everyone needs to be prepared to use <a href="http://en.wikipedia.org/wiki/Vim_(text_editor)"><code>vim</code></a> if your serious about Linux.  The RPi Linux distribution appears to have <code>vi</code> loaded but <code>vim</code> is a superior tool.
<p style="padding-left:30px;"><code>sudo apt-get install vim
sudo apt-get install vim-gtk</code></p>

<h2>PyRoom</h2>
PyRoom is a a fullscreen editor without buttons, widgets, formatting options, menus and with only the minimum of required dialog windows, it doesn't have any distractions and lets you focus on writing and only writing.  It is the polar opposite of Vim, and as such, is a good editor for the novice or casual user, but requires X Windows and Python.
<p style="padding-left:30px;"><code>sudo apt-get install pyroom</code></p>

<h2>Git</h2>
Given that I plan to hack some<em> to-be-determined</em> applications using the RPi, I should consider establish some tools for  source code management. The last time I did serious software development in Linux (really Unix), I was using Source Code Control System (SCCS). The tools are much improved now and <a href="http://git-scm.com/documentation"><code>git</code></a> is hands down the way to go.
<p style="padding-left:30px;"><code>sudo apt-get install git</code></p>

<h2>Chromium</h2>
We all have a favorite browser and I choose <a href="http://www.chromium.org/Home"><code>chromium</code></a> for my RPi.  Chromium serves as a base for Google Chrome, which is Chromium re-branded (name and logo) with very few additions.
<p style="padding-left:30px;"><code>sudo apt-get install chromium</code></p>
