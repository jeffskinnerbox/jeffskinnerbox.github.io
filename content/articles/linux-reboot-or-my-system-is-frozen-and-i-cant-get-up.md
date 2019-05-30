Title: Linux Reboot ... or ... My System is Frozen and I Can't Get Up!
Date: 2013-06-16 00:01
Category: Software
Tags: Linux
Slug: linux-reboot-or-my-system-is-frozen-and-i-cant-get-up
Author: Jeff Irland
Image: sysrq-key.jpg
Summary: This posting list the several options you have when you find yourself with a frozen Linux screen.  There is no need to do a hard reboot of your system and I show you how this can be done.

<a href="http://jeffskinnerbox.files.wordpress.com/2013/06/sysrq-key.jpg">
    <img class="img-rounded" style="margin: 0px 8px; float: left" alt="sysrq-key" src="/images/sysrq-key.jpg" width="300" height="199" />
</a>
While I was building the environment for my Linux box,  I ran into some problems with Ubuntu.  I found myself with frozen screens or booted up into blank screens and other such things.  Seems that Ubuntu 13.04 is currently a bit unstable or I just screwed things up badly ... a little of both I suspect. I managed to get through these problems, but too often I got desperate and I hitting the on/off switch to get the box rebooted.  Doing this can result in corrupted files and other such nasty things.  So this motivated me to research the "correct" way to get out of these Linux near death experiences.

The golden nugget here is actually at the end of this posting, that is the Magic SysRq Key.  This gem can get you out of most any freeze but I provide more here since the alternatives might be less intrusive.
<h2>Stopping a Running Process</h2>
While this post's focus is on how to reboot Linux, keep in mind that sometimes the problem that your attempting to solve may be handled via a simpler approach.  Specifically, maybe you just need to kill a running process.

In the Bash shell, you can use job control:
<ul>
<ul>
	<li>Ctrl+C – halts the current command</li>
	<li>Ctrl+Z – stops the current command, resume with fg in the foreground or bg in the background</li>
	<li>Ctrl+D – log out of current session, similar to exit</li>
</ul>
</ul>
On a Desktop version of Linux, there are normally six text consoles sessions available and one graphics session.  You could leave a frozen GUI, and go to a console screen to kill an offending process:
<ul>
<ul>
	<li>You can access the consoles by pressing CTRL + ALT + Fx (where Fx is a function key on the keyboard from F1 to F6).</li>
	<li>Once you enter one of the consoles, you will be prompted for user name and password. Enter them and then you’ll reach a command prompt.  Now you can kill the offending process using the kill command.</li>
	<li>To switch back to the graphic session, just click CTRL + ALT + F7.</li>
</ul>
</ul>
The process "killing" could be done via the recommended <code>kill -SIGTERM <em>pid</em></code>  or the more forceful <code>kill -SIGKILL <em>pid</em></code>. There are also versions of these tools, <a href="http://www.thegeekstuff.com/2009/12/4-ways-to-kill-a-process-kill-killall-pkill-xkill/"><code>killall</code> and <code>pkill</code></a>, that use the name of the process as an argument instead of the process ID.

<code>xkill</code> is a utility for forcing the X server to close connections to clients. Closing an X application that has become unresponsive, or misbehaving in general. Execute <code>xkill</code>, and once it's running, you simply click on the window you wish to  kill, and it performs a <code>kill -9</code>.
<h2>When Kill -9 Does Not Work</h2>
You are supposed to be able to kill any process with <code>kill -9 <em>pid</em></code>, but you may come across a process that just will not die. Usually this happens when you are trying to kill a <a href="http://en.wikipedia.org/wiki/Zombie_process">zombie process or defunct process</a>. These are processes that are dead and have exited, but they remain as <a href="http://www-cdf.fnal.gov/offline/UNIX_Concepts/concepts.zombies.txt">zombies in the process list</a>. The kernel keeps them in the process list until the parent process retrieves the exit status code by calling the wait() system call. This does not usually happen with daemon processes because they detach themselves from their parent process and are adopted by the init process (PID=1) which will automatically call wait() to clear them out of the process list.

You may sometimes see the daemon defunct PID in the process list for a brief moment before it gets cleaned up by the init process. You don't have to worry about these. You can also end up with an unkillable process if a process is stuck waiting for the kernel to finish something. This usually happens when the kernel is waiting for I/O. Where you see this most often is with network filesystems such as NFS and SaMBa that have disconnected uncleanly. This also happens when a drive fails or if someone unplugs a cable to a mounted drive. If the device had a memmapped file or was used for swap then you may be really screwed. Any kernel calls that flush IO may hang forever waiting for the device to respond.

Zombies can be identified in the output from the process status command <code>ps</code> by the presence of a "Z" in the "STAT" column. Zombies that exist for more than a short period of time typically indicate a bug in the parent program, or just an uncommon decision to reap children.  A zombie process is not the same as an orphan process. An orphan process is a process that is still executing, but whose parent has died. They do not become zombie processes; instead, they are adopted by init (process ID 1), which waits on its children.
<h2>Standard Reboot Commands</h2>
The vast majority of your systm shut downs or reboots will follow one of these two forms.  The first will halt the system so you can power it off and the second will reboot the system:

```bash
# power off system
shutdown -h now

# reboot the system
shutdown -r now
```

<a href="http://linux.die.net/man/8/shutdown"><code>shutdown</code></a> is the preferred and the safest ways to stop Linux. Never the less, in the tradition of Unix, Linux gives you more than one  way to accomplish this task.   <a href="http://manpages.ubuntu.com/manpages/lucid/man8/reboot.8.html"><code>reboot</code>, <code>halt</code>, and <code>poweroff</code></a> are some additional commands that Linux provides to stop the system.  These commands can be more "forceful" than <code>shutdown</code> but <a href="http://askubuntu.com/questions/64995/what-is-the-difference-between-shutdown-and-poweroff-commands">similar to it</a>.

The simplicity of these commands give the illusion that the system state of Linux is running or not running.  It isn't quite that simple.  Linux can operate in several states called runlevels.
<h2>Linux Runlevels</h2>
A <a href="http://en.wikipedia.org/wiki/Runlevel">runlevel</a> is a preset operating state for the Linux operating system.  A system can be booted into  any of several runlevels, each of which is represented by a single digit integer. Each runlevel designates a different system configuration and allows access to a different combination of processes and system resources.

Seven runlevels are supported in the standard Linux kernel. They are:
<ul>
<ul>
	<li><strong>0 - System Halted:</strong>  all system activity is stopped, the system can be safely powered down</li>
	<li><strong>1 - Single User:</strong>  single superuser is the only active login and no daemons (services) are started. It is mainly used for maintenance.</li>
	<li><strong>2 - Multiple Users:</strong> multiple users allowed but network filesystem (HFS) is not.</li>
	<li><strong>3 - Multiple Users:</strong>  multiple users are allowed command line (i.e., all-text mode); the standard runlevel for most servers</li>
	<li><strong>4 - User-Definable</strong></li>
	<li><strong>5 - Multiple Users:</strong> multiple users are allowed graphical user interface; the standard runlevel for most desktop systems</li>
	<li><strong>6 - Reboot:</strong> just like run level 0 except a reboot is issued, used when restarting the system</li>
</ul>
</ul>
In the interests of completeness, there is also a runlevel 'S' that the system uses on it's way to another runlevel. Read the <a href="http://linux.about.com/od/commands/l/blcmdl8_init.htm">man page for the <code>init</code></a> command for more information, but you can safely skip this for all practical purposes.

By default Linux boots either to runlevel 3 or to runlevel 5. The former permits the system to run all services except for a GUI. The latter allows all services including a GUI.

Booting into a different runlevel can help solve certain problems. For example, if a change made in the X Window System configuration on a machine that has been set up to boot into a GUI has rendered the system unusable, it is possible to temporarily boot into a console (i.e., all-text mode) runlevel (i.e., runlevels 3 or 1) in order to repair the error and then reboot into the GUI.  Likewise, if a machine will not boot due to a damaged configuration file or will not allow logging-in because of a corrupted /etc/passwd file  or because of a forgotten password, the problem can solved by first booting into single-user mode (i.e. runlevel 1).

There are two commands for directly reading or manipulating the Linux rumlevels:
<ul>
<ul>
	<li><strong><code>runlevel</code></strong> - Use the runlevel command to tell you two things: The last run level, and the current run level.  If the first character is 'N', it stands for none, meaning there has been no run level change since powering up.</li>
	<li><strong><code>telinit</code></strong> - The program responsible for altering the runlevel is init, and it can be called using the telinit command.</li>
</ul>
</ul>
The <a href="http://www.debian-administration.org/articles/212">topic of runlevels</a> is actually much richer than what is illustrated here.  It plays a key role in Linux background processes, called services or daemons.  For more, check out this <a href="http://pthree.org/2008/02/26/managing-services-in-ubuntu-part-i-an-introduction-to-runlevels/">Managing Services in Ubuntu, Part I: An Introduction to Runlevels</a> and <a href="http://pthree.org/2008/02/27/managing-services-in-ubuntu-part-ii-managing-runlevels/">Part II</a>.
<h2>Getting a Login From a Frozen GUI Screen</h2>
A not so common problem is when a frozen, full screen X application takes control over your mouse and keyboard and it seems that the only way to regain access to the system is to force a shutdown.  The fact is, if you could get to a some form of terminal session, you might be able to kill the offending process and get out of this frozen state.
This is where accessing a console screen by pressing CTRL + ALT + Fx
(where Fx is a function key on the keyboard from F1 to F6; and F7 brings you back to the desktop) can be very handy.

The X Server can often be the source of these frozen screen situations, so restarting the X Server may be the solution.  This can be done via the key combination Ctrl+Alt+Backspace.  Keep in mind that you will loses any unsaved data in applications.  Also, this capability is turned off by default on may Linux systems (including Ubuntu).  This was done to avoid confusion by  people accustom to MS Windows.  An alternative key combination is as follows:
<p style="padding-left:30px;">Press [AltGR][01] + [SysRQ][02] + K instead (AltGR is the RIGHT ALT button and SysRQ is often labelled "Print Screen", and remember to press and hold the keys in the in the right sequence, e.g. starting with ALtGR, and ending with the K(ill) key).</p>
You can turn back on the Ctrl+Alt+Backspace by following the instructions <a href="https://wiki.ubuntu.com/XorgCtrlAltBackspace">here</a>.
<h2>Magic SysRq Key</h2>
If the system is completely locks up, or <a href="http://www.linuxjournal.com/content/rebooting-magic-way">your filesystem fails</a>, there are still alternatives. The "<a href="http://en.wikipedia.org/wiki/Magic_SysRq_key">magic SysRq key</a>" provides a way to send commands directly to the kernel through the <a href="http://www.linuxjournal.com/article/8381"><code>/proc</code> filesystem</a>. It is enabled via a kernel compile time option, CONFIG_MAGIC_SYSRQ, which seems to be standard on most distributions.The magic SysRq key (or PrintScrn or Print Screen on some keyboards) is a key combination understood by the Linux kernel, which allows the user to perform various low-level commands regardless of the system's state. This is a surprising feature of the kernel but is commonly used to perform a safe reboot of a locked-up Linux computer.  See this post for some <a href="http://royal.pingdom.com/2012/06/26/sysadmin-needs-sysrq-magic/">historical perspective of the SysReq key</a>.

To check if the CONFIG_MAGIC_SYSRQ option is enable on your Linux kernel, check the configuration file that installed to /boot partition.  Do this via:
<p style="padding-left:30px;"><code>cat /boot/config-$(uname -r) | grep CONFIG_MAGIC_SYSRQ</code></p>
If your get "<code>CONFIG_MAGIC_SYSRQ=y"</code>, then its enabled on your kernel.

When running a kernel with SysRq compiled in, <code>/proc/sys/kernel/sysrq</code> controls the functions allowed to be invoked via the SysRq key.  If the file contains "<code>1</code>", that means that every possible SysRq request is allowed. See <a href="http://lxr.linux.no/linux/Documentation/sysrq.txt">here</a> for more on the <code>/proc/sys/kernel/sysrq</code>.

To actually reboot the machine there is a well know key sequence to follow: REISUB (or REISUO if you want to turn off the system instead of reboot).  Basically, if you keep pressed AltGR + SysRq + R and then while you keep pressed AltGR + SysRq you press E, I, S, U, B with about 1 second between each letter (do not type it fast). Your system will reboot. This  is a safer alternative to just cold rebooting the computer.

Mnemonic for REISUB is <strong>R</strong>eboot <strong>E</strong>ven <strong>I</strong>f  <strong>S</strong>ystem <strong>U</strong>tterly <strong>B</strong>roken, so while pressing `AltGR + SysRq`, press the following  keys:
<p style="padding-left:60px;">
<ul>
<ul>
    <li><strong>R</strong> - Switch to <a href="http://unix.stackexchange.com/questions/16530/what-does-raw-unraw-keyboard-mode-mean">XLATE mode</a></li>
    <li><strong>E</strong> - Send <a href="http://www.gnu.org/software/libc/manual/html_node/Termination-Signals.html">Terminate signal</a> to all processes except for init</li>
    <li><strong>I</strong> - Send <a href="http://meinit.nl/the-3-most-important-kill-signals-on-the-linux-unix-command-line">Kill signal</a> to all processes except for init</li>
    <li><strong>S</strong> - <a href="http://linux.die.net/man/1/sync">Sync</a> all mounted filesystems</li>
    <li><strong>U</strong> - Remount filesystems as read-only</li>
    <li><strong>B</strong> - Reboot</li>
</ul>
</ul>
The magic SysRq key supports more then just the REISUB keys.  To see the larger range of thing you can do via Magic SysRq Key's direct communications with the kernel, <a href="http://www.isotton.com/devel/docs/sysrq-cheatsheet/">check out here</a>.



[01]:http://en.wikipedia.org/wiki/AltGr_key
[02]:http://en.wikipedia.org/wiki/System_request
