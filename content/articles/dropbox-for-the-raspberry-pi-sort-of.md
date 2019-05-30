Title: Dropbox for the Raspberry Pi (sort of)
Date: 2012-11-11 00:01
Category: Software
Tags: Linux, Raspberry Pi, Dropbox
Slug: dropbox-for-the-raspberry-pi-sort-of
Author: Jeff Irland
Image: dropbox-logo.jpg
Summary: I'm presently using Dropbox as a service for quick and easy movement of files between multiple PCs I use.  I would like the same on the Raspberry Pi, particularly for moving files from my PC to the RPi. 

I'm presently using <a href="https://www.dropbox.com/">Dropbox</a> as a service for quick &amp; easy movement of files between multiple PCs I use.  Its copy &amp; paste operation is very intuitive on a Windows PC. I would like the same on the Raspberry Pi (RPi), particularly for moving files from my PC to the RPi.  I wanted the same utility on my RPi, but at the same time, I want the Linux command line paradigm supported and not be force to run X Windows on the RPi.

I did some searching and found things like <a href="https://www.dropbox.com/install?os=lnx">Dropbox's Linux distribution</a> (which I wasn't confident would work "out of the box" for the RPi's ARM architecture, but source is provided),  <a href="http://www.lifehacker.com.au/2011/07/how-to-set-up-a-file-syncing-dropbox-clone-you-control/">GoodSync</a> or <a href="http://hm-innovations.com/2012/10/29/best-way-to-use-raspberry-pi-and-turn-it-into-a-dropbox/">Owncloud</a> (which wouldn't access my existing Dropbox files but instead create an alternative), <a href="http://raspberrypigadget.wordpress.com/2012/07/01/day-six-dropbox-access/">python</a> or  <a href="http://harizanov.com/2012/08/dropbox-shell-script-for-raspberrypi/">bash shell</a> based up/down loaders (appears to behave like a simplified FTP tool), or the <a href="http://fuse.sourceforge.net/sshfs.html">Secure SHell File System (SSHFS)</a> based approach (the PC's Dropbox directory is mounted on the RPi).

While the <a href="https://www.dropbox.com/install?os=lnx">Dropbox's Linux distribution</a> is likely the ultimate way to go, I didn't want to commit myself to the effort it would potentially require.  I settled on the SSHFS based approach.  I'm running my <a href="http://jeffskinnerbox.wordpress.com/2012/09/09/raspberry-pi-has-arrived/">RPi headless</a> and access it via my PC using <a href="http://x.cygwin.com/">Cygwin/X</a> and <a href="http://www.openssh.org/">Secure Shell (ssh)</a>.  With the SSHFS approach, I could make the Dropbox directory available for mounting at boot-up or mount it at will.  I only envision using the RPi-based Dropbox when I'm doing development and I will be doing that from my PC.  So this SSHFS approach seems fine for the way that I operate.

The SSHFS approach means files will not really be replicated on the RPi, like Dropbox does.  The files will reside within my PC's Dropbox folder (and replicated on my other PCs via the Dropbox service) but accessible by the RPi via the SSHFS file mount.  This means I can't have any applications I run on the RPi depend on files located in its Dropbox directory since it may not be always mounted.  I'm OK with this limitation, and in fact is consistent with the ad-hoc purpose I have for the Dropbox directory.
<h2>Installation Required on the PC</h2>
For me, nothing needs to be done here.  I already have Dropbox running on my PC, and via Cygwin/X, I have the foundations required for the host side of the SSHFS solution.  If you need help with this, <a href="http://db.tt/WG4dR9shttp://db.tt/WG4dR9s">signup for Dropbox here</a> and find out<a href="http://jeffskinnerbox.wordpress.com/2012/10/04/establishing-an-x-window-system-environment-for-my-pc-and-raspberry-pi/"> how I'm using Cygwin/X here</a>.
<h2>Installation Required on the RPi</h2>
On the client side of the solution, you'll need to install <a href="http://fuse.sourceforge.net/sshfs.html">SSHFS</a> and <a href="http://fuse.sourceforge.net/">FUSE</a>. FUSE is the user-space filesystem framework and is the foundation on which SSHFS resides. FUSE allows user-space software, SSH in this case, to present a virtual file system interface to the user; something generally only done by the Linux kernel.  SSHFS connects to the remote system and provide the look and feel of a regular file system interface for remote files. On the RPi, install SSHFS via the command:

```
sudo apt-get install sshfs
```

FUSE appear to be already installed on the RPi or maybe comes with SSHFS. Next you need to add required users to the FUSE usergroup.  In my case, that is the user pi.  You can see the existing groups pi is part of via the command <code>groups pi</code>.  You can validate that the FUSE user group has been created by using the command <code>cat /etc/group | grep fuse</code>.  To add pi to the FUSE user group, use the command:

```
sudo gpasswd -a pi fuse
```

The fuse group lets you limit which users are allowed to use FUSE-based file systems, in my case the Dropbox. This is important because FUSE installs <a href="http://www.acm.uiuc.edu/workshops/security/setuid.html">setuid programs</a>, which always carry security implications.
<h2>Configuring the Dropbox File System</h2>
Now its time to make your Dropbox directory on the RPi, and mount it to the PC's instance of Dropbox. On the RPi, use this command to create the Dropbox:

```
mkdir ~/Dropbox
```

The next thing to do is to make sure that you can connect to the PC via ssh.  When I installed Cygwin, my focus was on using it as an X Server and making ssh connections from the PC to RPi.  I never tried the inverse (connect from the RPi to the PC) and that is what SSHFS is effectively doing.  So check for two things:
<ul>
<ul>
	<li>Is the ssh server running on the PC?  You can check for its status via the command <code>cygrunsrv -Q sshd</code>. In my case it was running, so its fine.</li>
	<li>Is the port used by the ssh server on the PC open? You'll need to <a href="http://lifehacker.com/205090/geek-to-live--set-up-a-personal-home-ssh-server">open SSH port 22</a> for ssh services to work.  You can check its status by attempting to use it.  In my case, this was <code>ssh Jeff@HomePC.home</code>.  If this command appears to hang or time out (as it did for me), the port is likely blocked.  You'll need to go to your <a href="http://www.dummies.com/how-to/content/how-to-open-a-port-in-the-windows-7-firewall.html">Windows Firewall</a> and open port 22.</li>
</ul>
</ul>
There is another Cygwin sublimity that has to be taken into consideration.  When using the Cygwin, Windows drive letters are mapped to a <a href="http://znark.com/tech/cygwin.html">special directory</a>.  In my case, the Dropbox directory appears to Cygwin to have the following path: <code>/cygdrive/c/Users/Jeff/Dropbox</code>.

With this all addressed, <span style="text-decoration:underline;">reboot the RPi</span>, and then you can now fire up you RPi Dropbox via:

```
sshfs Jeff@HomePC.home:/cygdrive/c/Users/Jeff/Dropbox ~/Dropbox
```

After you supply the PC's password, you should now be able to access the Dropbox directory on the PC.  If you wish, you can remove the file system connection to the PC via the command:

```
fusermount -u ~/Dropbox
```

This connection will stay established as long as you don't do the <code>fusermount -u</code> or reboot the RPi.  If you wish to mount the file system upon boot-up, and avoid executing the <code>sshfs</code> when you log-in, you can follow the procedure outline in the article that initially inspired me: <a href="http://mitchtech.net/dropbox-on-raspberry-pi-via-sshfs/">Dropbox on Raspberry Pi via SSHFS</a>
<h2>Something to Keep in Mind</h2>
While for the most part, moving between Windows/DOS and the Linux file systems isn't a problem, there is one thing to remember. Windows-based text editors put one set of special characters at the end of lines (i.e. carriage return and line break = '\r\n'), while Unix/Linux puts other characters (i.e. line break = '\n').  This <a href="http://www.codinghorror.com/blog/2010/01/the-great-newline-schism.html">odd anomaly</a> is normally harmless, but some applications on a Linux cannot understand these characters and can cause Linux to not respond correctly.

The best example of Linux behaving badly (and the only one I know) is the execution of “<a href="http://bash.cyberciti.biz/guide/Shebang">shebang</a>” or the “#!...” at the top of a bash, python, perl, etc. script.  If you edit these files in DOS, then move them to Linux, shebang will stop working.  Editing them under DOS is the origin of the problem, since a DOS based text editor will inject the extra carriage return character at the end of the text line.

To fix this problem, you can quickly convert an ASCII text file from DOS format (carriage return and line break) to the Unix format (line break), you can use the tool <a href="http://linux.die.net/man/1/dos2unix"><code>dos2unix</code></a>.  Run this utility on the effected file and shebang should work once again.
<h2>Epilogue</h2>
At its foundation, SSH functions as a protocol for authenticating and encrypting remote shell sessions.  SSH can be thought of as much more than just a secure shell.  Using SSH's foundation, SSHFS creates a new capability.  To learn more, check out the link <a href="http://matt.might.net/articles/ssh-hacks/">SSH: More than secure shell</a>.

Key sources I consulted to write this include:
<ul>
<ul>
	<li><a href="http://www.linuxjournal.com/article/8904?page=0,0">SSHFS: Super Easy File Access over SSH</a></li>
	<li><a href="http://mitchtech.net/dropbox-on-raspberry-pi-via-sshfs/">Dropbox on Raspberry Pi via SSHFS</a></li>
	<li><a href="http://www.debianadmin.com/mount-a-remote-file-system-through-ssh-using-sshfs.html">Mount a remote file system through ssh Using sshfs</a></li>
</ul>
</ul>
