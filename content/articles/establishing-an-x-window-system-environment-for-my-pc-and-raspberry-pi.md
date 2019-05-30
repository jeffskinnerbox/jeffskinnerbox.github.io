Title: Establishing an X Window System Environment for my PC and Raspberry Pi
Date: 2012-10-04 00:01
Category: Electronics
Tags: Raspberry Pi, Linux, X Window System, Window Manager, Cygwin
Slug: establishing-an-x-window-system-environment-for-my-pc-and-raspberry-pi
Author: Jeff Irland
Image: x-window-system-screen-shot.jpg
Summary: I show here how to configure your Raspberry Pi and your Microsoft Windows based PC, so they share the same display monitor.  Using the powers of X Window, the Raspberry Pi Linux applications and MS Windows programs can work side-by-side.

As stated in an <a href="http://jeffskinnerbox.wordpress.com/2012/09/09/raspberry-pi-has-arrived/">earlier post</a>, I plan to run my Raspberry Pi (RPi) as an attached device to my homes LAN and use my MS Windows PC to access the RPi.  The RPi will use my PC for display output and key board / mouse as input.  With the X Window System on the RPi, I can transmit an entire RPi desktop if I wish (using <a href="http://lxde.org/">LXDE</a> and it would look and feel much like <a href="http://en.wikipedia.org/wiki/Virtual_Network_Computing">VNC</a>).  I find this cumbersome since now your dealing with two desktop environments: MS Windows desktop and  X Window System based desktop all one display.

There is an alternative way. One of the cool things about the X architecture is that it can use MS Windows as your window manager (at least with the tools like <a href="http://x.cygwin.com/">Cygwin/X</a>, <a href="http://sourceforge.net/projects/xming/">Xming</a>, and <a href="http://www.microimages.com/mix/">MI/X</a>) but the application within the window frame can be the RPi based X Window System application.  Now you have a single desktop (MS Windows) but your running RPi application within a MS Windows window.  And with this configuration, you can run both Linux programs within a standard terminal window and graphic  X Window System applications in another window.

For me this is clearly the way to go.  It will allow me to hop on my PC, and with a double-click on a desktop icon, get me to a password prompt on the RPi.  Enter the password, and I can immediately run both command line and X graphics application on the RPi, along side MS Windows applications, all concurrently on a single desktop.

How I did this, along with some background information, is provide below.
<h2>X Window System</h2>
<img class="img-rounded" style="margin: 0px 8px; float: left" title="X Windows Client Server Architecture" alt="X architecture" src="/images/x-windows-client-server-architecture.png" width="210" height="356" />
The X Window System (commonly referred to as X Windows or just X or X11) is a software system and network protocol that provides a basis for graphical user interfaces (GUIs) and rich input device capability for networked computers.
X uses a client/server model, but appears backwards when you first learn of X.  In X, it's the server that runs on the local machine (the PC), providing its services to the display based on requests from client programs that may be running remotely (the RPi). Within a X Window System, a client can also run locally. The server also manages the input devices (your keyboard and mouse), and it manages the display of colors and fonts on the screen, all based on requests from a client.

One of the most significant features of X is that it was specifically designed to work across a network. The client and the server communicate via the X Protocol, a network protocol that can run locally or across a network. Regardless of whether a client program is local or remote, it communicates with the server through the X Protocol.
<h2>X Window System Components</h2>
A X Window System consist of several components which work together.  They are:
<ul>
<ul>
	<li><strong>X Server</strong> - manages the display, based on requests from the window manager.</li>
	<li><strong>Window Manager</strong> - is an application that is itself an X client, with responsibility for managing the appearance and placement of the windows on the screen.   The window manager takes care of the appearance and placement of the windows; it doesn't determine what goes on inside.</li>
	<li><strong>Windows</strong> - are the X clients, typically providing user functionality.  Windows are fully in control of the application but their placement, geometry  etc. are controlled by the window manager.</li>
	<li><strong>Display Manager</strong> - runs as a program that allows the starting of a session on an X server from the same local or remote computer A <a href="http://en.wikipedia.org/wiki/X_display_manager_(program_type)">display manager</a> presents the user with a login screen which prompts for a username and password. A session starts when the user successfully enters a valid combination of username and password.</li>
</ul>
<ul>
<ul>
<ul>
	<li>When the display manager runs on the user's computer, it starts the X server before presenting the user the login screen, optionally repeating when the user logs out.</li>
	<li>When the display manager runs on a remote computer, it acts like a telnet server, requesting username and password and starting a remote session.</li>
</ul>
</ul>
</ul>
<ul>
	<li> <strong>Desktop Environment</strong> - go further than a window manager in providing an integrated graphical environment where all applications and windows have a common look and feel. The desktop environments also include session management, for saving and restoring your work sessions.</li>
</ul>
</ul>
In the spirit of user-friendliness and security, the desktop and display manager hides much of the X Window System and its' subtleties.  If you want to really explore X (and light its load on the RPi), it's helpful to run with just a window manager for a while (even if you plan to go back to the desktop).  That is what I plan to do.
<h2>Cygwin's X Server and Window Manager</h2>
Before you can run a X client, you need to start the X server.  You can run the X server in two ways: it will automatically start if your Linux is configured with a X Display Manager (XDM), and if not, at the Linux command line you can start X manually.  It is the latter that I want to do on my PC / RPi combination (and the way my RPi distribution <a href="http://learn.adafruit.com/adafruit-raspberry-pi-educational-linux-distro/overview">Occidentalis</a> is pre-configured).   Also, in my configuration, I'll be using the Cygwin  X server on the PC, and no server will be running on the RPi, only X clients.

Now there are some important capabilities within the Cygwin X server.  Cygwin/X can work with <a href="http://x.cygwin.com/docs/ug/using-window-managers.html">its window managers</a>  in several different ways.
<ul>
<ul>
	<li><strong>Internal window manager</strong> - The internal window manager creates a MS Windows window for each top-level X window.  This window manage is "internal" to the Cygwin X server.</li>
	<li><strong>External local window managers</strong> -  These local window managers must be installed on Cygwin and runs on the PC (e.g. twm, mwm, fvwm2, openbox, aewm++, WindowMaker).</li>
	<li><strong>Remote window managers</strong> - This would be a situation where the window manager is on the RPi and would connect via a remote sessions using XDMCP (X Display Manager Control Protocol).</li>
</ul>
</ul>
I plan to keep things simple and use the Cygwin internal window manage.

XWin is the X Server for the X Window System on the Cygwin environment running on Microsoft Windows. It can operate in <a href="http://x.cygwin.com/docs/man1/XWin.1.html">three different modes</a>:
<ul>
<ul>
	<li><strong>Single Window</strong> - This is the default mode. Each X screen appears as a single MS Windows window and all X windows are contained within this window. (In X terminology, the MS Windows window contains the <a href="http://en.wikipedia.org/wiki/Root_window">root window</a> for the screen.)</li>
	<li><strong>Multi-Window</strong><em> - </em>In this mode XWin uses its own integrated window manager in order to handle the top-level X windows, in such a way that they appear as normal MS Windows windows.</li>
	<li><strong>Rootless<em> -</em></strong> In this mode the X server works in a window containing the whole screen but this root window (traditionally covered with an X hatch pattern) is hidden from view, so only top-level X windows are seen.</li>
</ul>
</ul>
To get a better idea on what the different modes can provide you from a user experience perspective, check out some <a href="http://x.cygwin.com/screenshots/">Cygwin/X screen shots</a>.   Again, my objectives are to keep things simple and clean, so I will be using the multi-window mode.
<h2>Configuring Cygwin/X</h2>
To operate Cygwin/X in multi-window mode you use the command <code>startxwin</code> (You use <code>startx</code> for window mode.  <code>startxwin</code> is a specialized version of <code>startx </code>with a few differences appropriate to running in multi-window mode, rather than windowed mode).  The <code>startxwin</code> program has a resource file called <code>.startxwinrc</code>.  You can create a <code>~/.startxwinrc</code> script to start client programs, such as mintty or xterm. An example <code>.startxwinrc</code> file is:

```shell
mintty --position 150,150 --size 80,50
mintty --position 600,500 --size 80,25 --exec ssh -X pi@raspberrypi.local
```

This will open up two xterm windows for your in the left hand corner of the screen and a thrid xterm window in the center of the screen.  This third screen is automatically logging in to the RPi as user pi and will wait four you to enter the password.

Also make sure that you export your <code>DISPLAY</code> for the X server on your PC.  You can do this by placing the following in your <code>.bashrc</code> file:

```shell
# environment variables required by X Window System
export DISPLAY=:0.0
```

<h2>Configuring RPi</h2>
Not much needs to be done to the RPi to prepare for the X applications.  You may wish to launch some X Window System application upon logging in.  You can do this by adding the X applications to your .bash_profile.  For example, add the following line to launch the LXDE file manager:

```shell
# execute X Window System programs
pcmanfm &
```

<h2>Starting and Stopping the Cygwin X Server</h2>
The environments are now set.  Time to start the X Server. The easiest way for <a href="http://x.cygwin.com/docs/ug/using.html#using-starting">starting Cygwin/X</a> is using the "XWin Server" shortcut under "Cygwin-X" on the Start Menu or on the MS Windows desktop. You could also type <code>startxwin</code> on the Cygwin command line.

As to stopping the X Server, for the window mode I'm working in (multi-window), <a href="http://x.cygwin.com/docs/ug/using-stopping.html">stopping Cygwin/X</a> can be done by  Selecting the "Exit..." option from the notification area icon menu.
<h2>How Does It Look</h2>
So given the configuration discussed above, your get a nice clean display with MS Windows, Cygwin, RPi command line, and RPi X Window application running in a single windows management environment.  Picture provided below:

<a href="http://jeffskinnerbox.files.wordpress.com/2012/10/x-window-system-screen-shot1.jpg"><img class="aligncenter size-large wp-image-367" title="X Window System Screen Shot" alt="screen shot 1" src="/images/x-window-system-screen-shot1.jpg" width="1024" height="640" /></a>

You thought the Raspberry Pi was a simple little hardware hackers computer .... but its running like a big dog now!
<h2>References</h2>
Much of what is provided here was lifted from the following sources:
<ul>
<ul>
	<li><a href="http://linuxdevcenter.com/pub/a/linux/2005/08/25/whatisXwindow.html">What Is the X Window System</a></li>
	<li><a href="http://www.comptechdoc.org/os/linux/howlinuxworks/linux_hlxwindows.html">How Linux X Works</a></li>
	<li><a href="http://www.physionet.org/physiotools/cygwin/#using-x">Using Cygwin/X</a></li>
	<li><a href="http://unicorn.mcmaster.ca/teaching/cygwin/cygwin-x-user_guide.pdf">Cygwin/X User’s Guide</a></li>
	<li><a href="https://secweb.cs.odu.edu/~zeil/cs252/website/Lectures/xwinlaunch/page/xwinlaunch.html">The X Window System</a></li>
</ul>
</ul>
