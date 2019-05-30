Title: Conky for the Raspberry Pi
Date: 2012-11-02 00:01
Category: Electronics
Tags: Conky, Raspberry Pi
Slug: conky-for-the-raspberry-pi
Author: Jeff Irland
Image: conky-logo.png
Summary: Conky is a Linux system monitor tool using X Windows.  Conky is highly configurable and is able to monitor many system variables including the status of the CPU, memory, swap space, disk storage, temperatures, processes, network interfaces, battery power, system messages, e-mail in-boxes, Linux updates, runs many popular music players, and much more.

<a href="/images/conky-window.jpg">
    <img class="img-rounded" style="margin: 0px 8px; float: left" title="Conky Window" src="/images/conky-window.jpg" width="77" height="300" />
</a>
<a href="http://conky.sourceforge.net/">Conky</a>  is a Linux system monitor tool using X Windows.  Conky is highly configurable and is able to monitor many system variables including the status of the CPU, memory, swap space, disk storage, temperatures, processes, network interfaces, battery power, system messages, e-mail in-boxes  Linux updates, runs many popular music players, and much more. Unlike system monitors that use high-level widget tool-kits to render their information, Conky is drawn directly in an X window, allowing it to consume relatively fewer system resources.

To install the standard Conky package, use the following:

`sudo apt-get install conky-std`

Two sites you will want to read, beyond the <a href="http://conky.sourceforge.net/docs.html">Conky manual page</a> are the lists of <a href="http://conky.sourceforge.net/config_settings.html">Config Settings</a> and <a href="http://conky.sourceforge.net/variables.html">Variables</a>. You use the Config Settings to describe general features of how you want your Conky to appear, and the variables to define what actually gets displayed.

The color names that are used within Conky are the X11 colors located in <code>/usr/share/X11/rgb.txt</code>.  There isn't a standard set of colors to be found on any X Window system, so you'll need to inspect this file to get some idea of what color names you can use.  This <a href="http://www.kgym.jp/freesoft/xrgb.html">X color name list</a>, which appears to be larger than what is in the RPi's <code>rgb.txt</code> file, could help you visualized the colors.

Conky uses a configuration file location in <code>$HOME/.conkyrc</code>.  Conky can be configured in an amazing number of way but I'm using the following configuration on the RPi:

<p><script src="https://gist.github.com/jeffskinnerbox/6603187.js"></script></p>

<h2>Debugging Conky</h2>
An easy way to force Conky to reload your <code>~/.conkyrc</code> configuration file is to us the command <code>killall -SIGUSR1 conky</code>. This saves you the trouble of having to kill and then restart.  I also discovered that  while conky is running and your concurrently editing the <code>.conkyrc</code> file in vi, saving the file appears to cause conky to restart and read the new <code>.conkyrc</code> ... nice.
