Title: A Better Mobile Display for the Raspberry Pi
Date: 2013-04-11 00:01
Category: Electronics
Tags: Linux, Raspberry Pi, X Window System, Window Manager
Slug: a-better-mobile-display-for-the-raspberry-pi
Author: Jeff Irland
Image: issh-on-ipad.png
Summary: I found a comprehensive VT100 / xterm terminal emulator, integrated with a tunneled X server, that gives me a mobile display for the Raspberry Pi via my iPad.

<a href="http://jeffskinnerbox.files.wordpress.com/2013/04/issh-on-ipad.png">
    <img class="img-rounded" style="margin: 0px 8px; float: left" alt="issh-on-ipad" src="/images/issh-on-ipad.png?w=225" width="225" height="300" />
</a>
As I described in an <a href="http://jeffskinnerbox.wordpress.com/2012/10/04/establishing-an-x-window-system-environment-for-my-pc-and-raspberry-pi/">earlier post</a>, I run my Raspberry Pi (RPi) as a <a href="http://en.wikipedia.org/wiki/Headless_system">headless system</a>, using <a href="http://x.cygwin.com/">Cygwin/X</a>'s xterm for command line interaction with the RPi, with my PC being my X server to support any X Window applications.  I can move files between the PC and the RPi via my <a href="http://jeffskinnerbox.wordpress.com/2012/11/11/dropbox-for-the-raspberry-pi-sort-of/">pseudo-Dropbox</a>.  I really recommend this configuration and its working perfectly for me.

This configuration gives me a great deal of utility but no mobility .... I'm still tied to my desktop PC.  Maybe I should consider replacing the desktop PC with a laptop but I don't want to spend the money.  I have seen some small,  inexpensive <a href="http://www.adafruit.com/products/922">keyboards</a> and <a href="http://www.adafruit.com/products/947">displays</a> that could be connected directly to the RPi, and you could <a href="http://www.raspberrypi.org/archives/2848">cobble together a mobile unit</a>, or the more elegant <a href="http://news.idg.no/cw/art.cfm?id=9662DBB2-013A-069C-759851E179CD3D16">Kindle version</a>, but this still doesn't give me the mobility look &amp; feel I would like.

iPad to the rescue (assuming you have one ....)!   I found a great app called <a href="http://www.zinger-soft.com/iSSH_features.html">iSSH</a> by Zingersoft.  Its claims that it is a "comprehensive VT100, VT102, VT220, ANSI, xterm, and xterm-color terminal emulator over SSH and telnet, integrated with a tunneled X server, RDP and VNC client. "   I installed it, configured it quickly, and got  a terminal connection to the RPi without reading the documentation .... Impressive since successfully configuring ssh, Xserver, etc. can be challenging sometimes.  (Note: The easy of this was largely due to setting up RPi environment properly in the first place. See the <a href="http://jeffskinnerbox.wordpress.com/2012/10/04/establishing-an-x-window-system-environment-for-my-pc-and-raspberry-pi/">earlier post</a>).  To top it off, iSSH has a slick look &amp; feel.

<h2>Configuring iSSH</h2>
<a href="http://jeffskinnerbox.files.wordpress.com/2013/04/issh-on-ipad-x-server.png">
    <img class="img-rounded" style="margin: 0px 8px; float: left" alt="iSSH X Server Session" src="/images/issh-on-ipad-x-server.png?w=225" width="225" height="300" />
</a>
Zingersoft's <a href="http://www.zinger-soft.com/support1.html">documentation on configuring iSSH</a> is easy to follow and requires just a few steps.  I had no problem getting an terminal session working to the RPi but I did have problems with graphics programs (i.e. X Window client programs).  It appears that iSSH's terminal isn't really <a href="http://invisible-island.net/xterm/xterm.faq.html">xterm</a> but a terminal emulation (secured via <a href="http://en.wikipedia.org/wiki/Secure_Shell">ssh</a>).  The iSSH terminal doesn't use the X server.  In fact, while in the terminal session,  to see the X server display (i.e. to see graphics applications rendered via the RPi X client) you must hit the button at the top right of the iPad display.

Frankly, the fact that the X application didn't work the first time wasn't a big surprise to me.  I have been struggling with getting my X Window configuration set up to work reliably for some time.  What I was observing was that X would work fine for sometime but at some point I would get the error message "couldn't connect to display".

This error is very common and nearly every X user has seen some version of this before.  I assume that the right way to solve this was to gain a deeper understanding of X Windows and discover its root cause .  I did gain a deeper understanding of X Windows, but a solution to my problem never jumped out from the "official" materials I read.  I found the solution when I happened upon the blog "<a href="http://b.kl3in.com/2012/01/x11-display-forwarding-fails-after-some-time/">X11 Display Forwarding Fails After Some Time</a>".

The root cause of my error message is the time out of the X Forwarding.  I have been using the -X option when using ssh.  This is the more secure option for X Forwarding, but comes at a price, as shown below.
<ul>
<ul>
	<li>Using <code>ssh -X</code>, X forwarding is enabled in "Untrusted" mode, making use of various X security extensions, including a time-limited Xauth cookie.</li>
	<li>Use <code>ssh -Y</code> to enable "Trusted" mode for X, which will enable complete access to your X server. There is no timeout for this option.</li>
</ul>
</ul>
So my Display problem isn't really an error, per say, but ssh timing out on me.  To fix this, I added the entry <code>ForwardX11Timeout 596h</code> into my <code>~/.ssh/config</code> file on my PC.  With this problem solved, I continued my journey into X.
<h2>My Journey to a Better Understanding of X</h2>
Using <a href="http://en.wikipedia.org/wiki/X_Window_System">X Windows</a> for the first time can be somewhat of a shock to someone familiar with other graphical environments, such as Microsoft Windows or Mac OS.  X was designed from the beginning to be network-centric, and uses a “client-server” model. In the X model, the “X server” runs on the computer that has the keyboard, monitor, and mouse attached. The server's responsibility includes tasks such as managing the display, handling input from the keyboard and mouse, and other input or output devices (i.e., a “tablet” can be used as an input device, and a video projector can be an output device, etc.). Each X application (such as xterm) is a “client”. A client sends messages to the server requesting things like “Please draw a window at these coordinates”, and the server sends back messages such as “The user just clicked on the OK button”. These standardized set of messages make up the <a href="https://en.wikipedia.org/wiki/X_Window_System_core_protocol">X Protocol</a>.

The X server and the X clients commonly run on the same computer. However, it is perfectly possible to run the X server on a less powerful computer (e.g. in my case a PC or iPad), and run X applications (the clients) on a powerful machine that serves multiple X servers (or it can be a simple RPi, as in my case). In this scenario the communication between the X client and server takes place over the network (WiFi for my iPad), via the X Protocol. There is nothing in the protocol that forces the client and server machines to be running the same operating system, or even to be running on the same type of computer.
<h2>The Display</h2>
It is important to remember that the X server is the is the software program which manages the monitor, keyboard, and pointing device. In the X window system, these three devices are collectively referred to as the "display".  Therefore, the X server serves displaying capabilities, via the display, to other programs, called X clients, that connect to  the X server.  All these connections are established via the X protocol.

The relationship between the X server and the display are tight, in that the X server is engineered to support a specific display (or set of displays).  As a user of X, you don't have any control over this relationship, only the software developer who created the server can modify this relationship (generally speaking).  On the other hand, as a user you have free hand in configuring the X protocol connection between the X server and the X clients.

How do you establish a X Protocol connection between any given server and a client?  This is done via the environment variable "DISPLAY".  A Linux environment variable DISPLAY tells all its X clients what display they should use for their windows. Its value is set by default in ordinary circumstances, when you start an X server and run jobs locally. Alternatively, you can specify the display yourself.  One reason to do this is when you want log into another system, and run a X client there, and but have the window displayed at your local terminal.  That is, the DISPLAY environment variable must point to your local terminal.

So the environment variable "DISPLAY" stores the address for X clients to connect to. These addresses are in the form: <code>hostname:displaynumber.screennumber</code> where
<ul>
<ul>
	<li><code>hostname</code> is the name of the computer where the X server runs. An omitted <code>hostname</code> means the localhost.</li>
	<li><code>displaynumber</code> is a sequence number (usually 0). It can be varied if there are multiple displays connected to one computer.</li>
	<li><code>screennumber</code> is the screen number. A display can actually have multiple screens. Usually there's only one screen though where 0 is the default.</li>
</ul>
</ul>
Setting the DISPLAY variable depends of your shell, but for the Bourne, Bash or Korn shell, you could do the following to connect with the systems local display:

```
export DISPLAY=localhost:0.0
```

The remote server knows where it have to redirect the X network traffic via the definition of the DISPLAY <a title="linux:environment_variable" href="http://gerardnico.com/wiki/linux/environment_variable">environment variable</a> which generally points to an X Display server located on your local computer.
<h2>X Security</h2>
So you see, as the user, you have full control over where you wish to display the X client window.   So what prevents you from doing something malicious,  like popping up window on someone else  terminal or read their key strokes?  After all, all you really need is their host name.  <a href="http://www.linux-tutorial.info/modules.php?name=Howto&amp;pagename=Remote-X-Apps/Remote-X-Apps-6.html">X servers have three ways of authenticating connections</a> to it: the host list mechanism (xhost) and the magic cookie mechanism (xauth). Then there is ssh, that can forward X connections, providing a protected connection between client and server over a network using a secure <a title="Tunnelling protocol" href="http://en.wikipedia.org/wiki/Tunnelling_protocol">tunnelling protocol</a>.
<h2>The xhost Command</h2>
The <a href="http://www.xfree86.org/current/xhost.1.html"><code>xhost</code></a> program is used to add and delete host (computer) names or user names to the list of machines and users that are allowed to make connections to the X server. This provides a rudimentary form of privacy control and security.  A typical use is as follows: Let's call the computer you are sitting at the "local host" and the computer you want to connect to the "remote host". You first use xhost to specify which computer you want to give permission to connect to the X server of the local host. Then you connect to the remote host using telnet. Next you set the DISPLAY variable on the remote host. You want to set this DISPLAY variable to the local host. Now when you start up a program on the remote host, its GUI will show up on the local host (not on the remote host).

For example, assume the IP address of the local host is 128.100.2.16 and the IP address of the remote host is 17.200.10.5.

On the local host, type the following at the command line:

```
xhost + 17.200.10.5
```

Log on to the remote host

```
telnet 17.200.10.5
```

On the remote host (through the telnet connection), instruct the remote host to display windows on the local host by typing:

```
export DISPLAY=128.100.2.16:0.0
```

Now when you type xterm on the remote host, you should see an xterm window on the local host.  You should remove the remote host from your access control list as follows.

```
xhost - 17.200.10.5
```

Some additional xhost commands:
<p style="padding-left:30px;"><code>xhost</code>List all the hosts that have access to the X server
<code>xhost + hostname</code>Adds hostname to X server access control list.
<code>xhost - hostname</code>Removes hostname from X server access control list.
<code>xhost +</code> Turns off access control (all remote hosts will have access to X server ... generally a bad thing to do)
<code>xhost -</code>Turns access control back on (all remote hosts blocked access to X server)</p>
Xhost is a very insecure mechanism. It does not distinguish between different users on the remote host. Also, hostnames (addresses actually) can be <a href="http://en.wikipedia.org/wiki/Spoofing_attack">spoofed</a>. This is bad if you're on an untrusted network.
<h2>The xauth Command</h2>
Xauth allows access to anyone who knows the right secret. Such a secret is called an authorization record, or a <a href="http://en.wikipedia.org/wiki/Magic_cookie">magic cookie</a>. This authorization scheme is formally called <code>MIT-MAGIC-COOKIE-1</code>.  The cookies for different displays are stored together in the file <code>.Xauthority</code> in the user's home directory (you can specify a different cookie file with the <code>XAUTHORITY</code> environment variable).  The <code>xauth</code> application is a utility for accessing the <code>.Xauthority</code> file.

On starting a session, the X server reads a cookie from the<code>.Xauthority</code> file. After that, the server only allows connections from clients that know the same cookie (Note: When the cookie in <code>.Xauthority</code> changes, the server will not pick up the change.).  If you want to use xauth, you must start the X server with the <code>-auth authfile</code> argument.   You can generate a magic cookie for the <code>.Xauthority</code> file using the utility <code>mcookie</code> (typical usage: <code>xauth add :0 . `mcookie`</code>).

Now that you have started your X session on the server and have your cookie in <code>.Xauthority</code>, you will have to transfer the cookie to the client host. There are a few ways to do this.  The most basic way is to transfer the cookie manually by listing the magic cookie for your display with <code>xauth list</code> and injecting it into the remote hosts <code>.Xauthority</code> via the <code>xauth</code> utility.

Xauth has a clear security advantage over xhost. You can limit access to specific users on specific computers and it does not suffer from spoofed addresses as xhost does.
<h2>X Over SSH</h2>
Even with the <code>xhost</code> and <code>xauth</code> methods, the  the X protocol is transmitted over the network with no encryption.  If you're  worried someone might snoop on your connections (and you should worry), use ssh.  SSH, or the Secure Shell, allows secure (<a href="http://en.wikipedia.org/wiki/Encryption">encrypted</a> and <a href="http://en.wikipedia.org/wiki/Authentication">authenticated</a>) connections between any two devices running SSH. These connections may include terminal sessions, file transfers, TCP port forwarding, or X Window System forwarding.  SSH supports a wide variety of encryption algorithms. It supports various <a href="http://en.wikipedia.org/wiki/Message_authentication_code">MAC</a> algorithms, and it can use <a href="http://en.wikipedia.org/wiki/Public-key_cryptography">public-key cryptography</a> for authentication or the traditional username/password.

SSH can do something called "<a href="http://docstore.mik.ua/orelly/networking_2ndEd/ssh/ch09_01.htm#ch09-31407">X Forwarding</a>" makes the communication secure by "<a href="http://en.wikipedia.org/wiki/Tunneling_protocol">tunneling</a>" the X protocol over the SSH secure link.  Forwarding is a type of interaction with another network application, through a inter-mediator, in this case SSH. SSH intercepts a service request from some other program on one side of an SSH connection, sends it across the encrypted connection, and delivers it to the intended recipient on the other side. This process is mostly transparent to both sides of the connection: each believes it is talking directly to its partner and has no knowledge that forwarding is taking place.  This is called tunneling since X protocol is encapsulated within the a SSH protocol.

When setting up an SSH tunnel for X11, the Xauth key will automatically be copied to the remote system(in a munged form to reduce the risk of forgery) and the DISPLAY variable will be set.

To turn on X forwarding over ssh, use the command line switch <code>-X</code> or write the following in your local ssh configuration file:

```
Host remote.host.name ForwardX11 yes
```

The current version of SSH supports the X11 SECURITY extension, which provides two classes of clients: trusted clients, which can do anything with the display, and untrusted clients, which cannot inject synthetic events (mouse movement, keypresses) or read data from other windows (e.g., take screenshots). It should be possible to run almost all clients as untrusted, leaving the trusted category for screencapture and screencast programs, macro recorders, and other specialized utilities.

If you use <code>ssh -X remotemachine</code> the remote machine is treated as an untrusted client and <code>ssh -Y remotemachine</code> the remote machine is treated as trusted client.  '-X' is supposedly the safe alternative to '-Y'.  However, as a Cygwin/X maintainer says "this is widely considered to be not useful, because the Security extension uses an arbitrary and limited access control policy, which results in a lot of applications not working correctly and what is really a false sense of security".

You can configuring SSH via the following files:
<ul>
<ul>
	<li>per-user configuration is in <code>~/.ssh/config</code></li>
	<li>system-wide client configuration is in <code>/etc/ssh/ssh_config</code></li>
	<li>system-wide daemon configuration is in <code>/etc/ssh/sshd_config</code></li>
</ul>
</ul>
The ssh server (<code>sshd</code>) at the remote end automatically sets <code>DISPLAY</code> to point to its end of the X forwarding tunnel. The remote tunnel end gets its own cookie; the remote ssh server generates it for you and puts it in<code>~/.Xauthority</code> there. So, X authorization with ssh is fully automatic.

X over SSH solves some of the problems inherent to classic X networking. For example, SSH can tunnel X traffic through firewalls and NAT, and the X configuration for the session is taken care of automatically. It will also handle compression for low-bandwidth links.  Also, if you're using X11 forwarding, you may want to consider setting <span style="font-family:'courier new', courier, monospace;">ForwardX11Trusted no </span>to guard against malicious clients.
<h2>The Window Manager</h2>
The X design philosophy is much like the Linux/UNIX design philosophy, “tools, not policy”.  This philosophy extends to X not dictating what windows should look like on screen, how to move them around with the mouse, what keystrokes should be used to move between windows, what the title bars on each window should look like, etc.  Instead, X delegates this responsibility to an application called a “Window Manager”.

There are many window managers available for X and each  provides a different look and feel.  Some of them support  highly configurable virtual desktops like, <a href="http://www.kde.org/">KDE</a> and <a href="http://www.gnome.org/">GNOME</a>, some of them are lightweight desktop like <a href="http://lxde.org/">LXDE</a> which comes with the RPi, or you can operate bare bones (like I am on my PC while using the RPi) and let MS Windows be your Window Manager via <a href="http://x.cygwin.com/">Cygwin/X.</a>  The iPad's iSSH can run without a Window Manager.  In effect, X server uses the display as it sees fit and your unable to control where things loaded. iSSH does have a Window Manage your can use as an option called <a href="http://dwm.suckless.org/">dwm</a>.  Its a <a href="http://en.wikipedia.org/wiki/Tiling_window_manager">tiling window manager</a>, which is a reasonable way to go given that your pointing device is your finger on the iPad.
<h2>X Display Manager</h2>
The X Display Manager (XDM) is an optional part of the X Window System that is used for login session management.  XDM provides a graphical interface for choosing which display server to connect to, and entering authorization information such as a login &amp; password.  Like the Linux <a href="http://en.wikipedia.org/wiki/Getty_(Unix)">getty</a> utility, it performs system logins to the display being connected to and then runs a session manager on behalf of the user (usually an X window manager).  XDM then waits for this program to exit, signaling that the user is done and should be logged out of the display. At this point, XDM can display the login and display chooser screens for the next user to login.

In the small world of my RPi's, a PC, and an iPad, I have no need for an XDM and don't use one.
<h2>Enough of the X Journey ... Now in Conclusion</h2>
So what does the iSSH give me? I can now sit on the couch, watch TV, and simultaneously login into the RPi with full X Windows support.  Some would call this Nirvana but I call it just VERY NICE.  The iPad/iSSH combination isn't the perfect user experience but Zingersoft did a good job.

By the way .... the above iPad screen shot of the X Server display with a globe was rendered using the following code:

```python

#!/usr/bin/env python

# Source: http://www.scipy.org/Cookbook/Matplotlib/Maps

from mpl_toolkits.basemap import Basemap
import matplotlib.pyplot as plt
import numpy as np

Use_NASA_blue_marble_image = False

# set up orthographic map projection with
# perspective of satellite looking down at 50N, 100W.
# use low resolution coastlines.
# don't plot features that are smaller than 1000 square km.
map = Basemap(projection='ortho', lat_0=50, lon_0=-100, resolution='l', area_thresh=1000.)

# draw coastlines, country boundaries, fill continents.
if Use_NASA_blue_marble_image:
    map.bluemarble()
else:
    map.drawcoastlines()
    map.drawcountries()
    map.fillcontinents(color='coral')

# draw the edge of the map projection region (the projection limb)
map.drawmapboundary()

# draw lat/lon grid lines every 30 degrees.
map.drawmeridians(np.arange(0, 360, 30))
map.drawparallels(np.arange(-90, 90, 30))

# lat/lon coordinates of five cities.
lats = [40.02, 32.73, 38.55, 48.25, 17.29]
lons = [-105.16, -117.16, -77.00, -114.21, -88.10]
cities = ['Boulder, CO', 'San Diego, CA', 'Washington, DC', 'Whitefish, MT', 'Belize City, Belize']

# compute the native map projection coordinates for cities.
x, y = map(lons, lats)

# plot filled circles at the locations of the cities.
map.plot(x, y, 'bo')

# plot the names of those five cities.
for name, xpt, ypt in zip(cities, x, y):
        plt.text(xpt + 50000, ypt + 50000, name)

# make up some data on a regular lat/lon grid.
nlats = 73
nlons = 145
delta = 2. * np.pi / (nlons - 1)
lats = (0.5 * np.pi - delta * np.indices((nlats, nlons))[0, :, :])
lons = (delta * np.indices((nlats, nlons))[1, :, :])
wave = 0.75 * (np.sin(2. * lats) ** 8 * np.cos(4. * lons))
mean = 0.5 * np.cos(2. * lats) * ((np.sin(2. * lats)) ** 2 + 2.)

# compute native map projection coordinates of lat/lon grid.
x, y = map(lons * 180. / np.pi, lats * 180. / np.pi)

# contour data over the map.
CS = map.contour(x, y, wave + mean, 15, linewidths=1.5)

plt.show()
```
