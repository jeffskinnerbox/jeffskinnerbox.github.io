################################################################################
The document was quite old ... but Linux is linux right? :) how often are core commands and logging structures changed?  I also found:

----------

2) Regarding the logs in /var/log/
A bash command to filter the most interesting log messages is this:

grep -iv ': starting\|kernel: .*: Power Button\|watching system buttons\|Stopped Cleaning Up\|Started Crash recovery kernel' \
  /var/log/messages /var/log/syslog /var/log/apcupsd* \
  | grep -iw 'recover[a-z]*\|power[a-z]*\|shut[a-z ]*down\|rsyslogd\|ups'
When an unexpected power off or hardware failure occurs the filesystems will not be properly unmounted so in the next boot you may get logs like this:

EXT4-fs ... INFO: recovery required ...
Starting XFS recovery filesystem ...
systemd-fsck: ... recovering journal
systemd-journald: File /var/log/journal/.../system.journal corrupted or uncleanly shut down, renaming and replacing.
When the system powers off because user pressed the power button you get logs like this:

systemd-logind: Power key pressed.
systemd-logind: Powering Off...
systemd-logind: System is powering down.
Only when the system shuts down orderly you get logs like this:

rsyslogd: ... exiting on signal 15
When the system shuts down due to overheating you get logs like this:

critical temperature reached...,shutting down
If you have a UPS and running a daemon to monitor power and shutdown you should obviously check its logs (NUT logs on /var/log/messages but apcupsd logs on /var/log/apcupsd*)



On Wed, Feb 19, 2020 at 1:38 PM Lawrence, Chris <chris.lawrence@verizon.com> wrote:

Vinny - I stumbled across the following, which you might already have found or known for determining a cold/dirty shutdown:

--------------------------



Run this command* and compare the output to the examples below:

last -x | head | tac
Normal shutdown examples
A normal shutdown and power-up looks like this (note that you have a shutdown event and then a system boot event):

runlevel (to lvl 0)   2.6.32- Sat Mar 17 08:48 - 08:51  (00:02)
shutdown system down  ... -- first the system shuts down
reboot   system boot  ... -- afterwards the system boots
runlevel (to lvl 3)
In some cases you may see this (note that there is no line about the shutdown but the system was at runlevel 0 which is the "halt state"):

runlevel (to lvl 0)   ... -- first the system shuts down (init level 0)
reboot   system boot  ... -- afterwards the system boots
runlevel (to lvl 2)   2.6.24-... Fri Aug 10 15:58 - 15:32 (2+23:34)
Unexpected shutdown examples
An unexpected shutdown from power loss looks like this (note that you have a system boot event without a prior system shutdown event):

runlevel (to lvl 3)   ... -- the system was running since this momemnt
reboot   system boot  ... -- then we've a boot WITHOUT a prior shutdown
runlevel (to lvl 3)   3.10.0-693.21.1. Sun Jun 17 15:40 - 09:51  (18:11)
################################################################################


* [Troubleshooting with Linux Logs](https://www.loggly.com/ultimate-guide/troubleshooting-with-linux-logs/)
* [What are Linux Logs? How to View Them, Most Important Directories, and More](https://stackify.com/linux-logs/)

When you run into problems with your Linux system,
every seasoned Linux administrator will tell you that the first thing to be done is to view the logs.
And there are plenty of logs to be found:
logs for the system, logs for the kernel, for the boot process, for package managers,
for Xorg, for Apache, for MySQL, and on it goes.
For nearly anything you can think of, there is a log file.

Most log files can be found in one convenient location: `/var/log`.
These are all system and service logs,
where issue with your operating system or one of the major services are logged.
Where a desktop application will write logs will depend upon the developer
and if the app allows for custom log configuration.

I'm going to be focus on system logs, as that is where the heart of Linux troubleshooting lies.
And the key issue here is, how do you view and interperate these log files?

# Rsyslog
rsyslog is the default logging program in Debian and Red Hat.
It is an extension of the original syslog protocol,
with additional features such as flexible configuration,
rich filtering capabilities and content-based filtering.
Just like syslogd, the `rsyslogd` daemon can be used to gather log messages
from programs and servers and direct those messages to local log files, devices, or remote logging hosts.

* [rsyslog](https://www.rsyslog.com/)
* [rsyslog](https://geek-university.com/linux/rsyslog/)
* [How to Setup Central Logging Server with Rsyslog in Linux](https://www.tecmint.com/install-rsyslog-centralized-logging-in-centos-ubuntu/)
* [System: Controlling what logs where with rsyslog.conf](https://www.the-art-of-web.com/system/rsyslog-config/)


# Tools for Viewing Logs

## less
The one problem with this method is that syslog can grow fairly large; and, considering what you’re looking for will most likely be at or near the bottom, you might not want to spend the time scrolling line or page at a time to reach that end. Will syslog open in the less command, you could also hit the [Shift]+[g] combination to immediately go to the end of the log file. The end will be denoted by (END). You can then scroll up with the arrow keys or the scroll wheel to find exactly what you want.

## tail
 What tail does is output the last part of files.
 So, if you issue the command `tail /var/log/syslog`,
 it will print out only the last few lines of the `syslog` file.
When you issue the command `tail -f /var/log/syslog`,
tail will continue watching the log file and print out the line as they are written to the file.
This means you can follow what is written to `syslog`, as it happens, within your terminal window.

You can also instruct tail to only follow a specific amount of lines.
Say you only want to view the last five lines written to syslog; for that you could issue the command:
`tail -f -n 5 /var/log/syslog`.
This command would follow input to `syslog` and only print out the most recent five lines.
As soon as a new line is written to `syslog`, it would remove the oldest from the top.

## dmesg
The dmesg command prints the kernel ring buffer.
From the terminal window, if you issue the command `dmesg`, the entire kernel ring buffer will print out.

# `/var/log`
If you open a terminal window and issue the command `ls /var/log`,
you'll see something like this:

```bash
# list the contents of the logging directory
$ ls /var/log

apache2/                alternatives.log.8.gz  dpkg.log         mail.err.3.gz             syslog.3.gz
apt/                    alternatives.log.9.gz  dpkg.log.1       mail.err.4.gz             syslog.4.gz
cups/                   apcupsd.events         dpkg.log.10.gz   mail.log                  syslog.5.gz
dist-upgrade/           apport.log             dpkg.log.11.gz   mail.log.1                syslog.6.gz
gdm3/                   apport.log.1           dpkg.log.12.gz   mail.log.2.gz             syslog.7.gz
hp/                     apport.log.2.gz        dpkg.log.2.gz    mail.log.3.gz             tallylog
installer/              apport.log.3.gz        dpkg.log.3.gz    mail.log.4.gz             uvcdynctrl-udev.log
journal/                apport.log.4.gz        dpkg.log.4.gz    pm-powersave.log          vbox-install.log
mongodb/                apport.log.5.gz        dpkg.log.5.gz    pm-powersave.log.1        vbox-setup.log
openvpn/                apport.log.6.gz        dpkg.log.6.gz    pm-suspend.log            vbox-setup.log.1
private/                apport.log.7.gz        dpkg.log.7.gz    pm-suspend.log.1          vbox-setup.log.2
speech-dispatcher/      aptitude               dpkg.log.8.gz    repowerd.log              wifi-radar.log
sysstat/                aptitude.1.gz          dpkg.log.9.gz    repowerd.log.1            wtmp
unattended-upgrades/    auth.log               faillog          repowerd.log.2.gz         wtmp.1
upgrade/                auth.log.1             fontconfig.log   repowerd.log.3.gz         Xorg.0.log
upstart/                auth.log.2.gz          gpu-manager.log  repowerd.log.4.gz         Xorg.0.log.old
alternatives.log        auth.log.3.gz          kern.log         rsnapshot.log             Xorg.1.log
alternatives.log.1      auth.log.4.gz          kern.log.1       rsnapshot.log.1.gz        Xorg.1.log.old
alternatives.log.10.gz  boot.log               kern.log.2.gz    rsnapshot.log.2.gz        Xorg.2.log
alternatives.log.11.gz  bootstrap.log          kern.log.3.gz    rsnapshot.log.3.gz        Xorg.2.log.old
alternatives.log.12.gz  btmp                   kern.log.4.gz    rsnapshot.log.4.gz        Xorg.3.log
alternatives.log.2.gz   btmp.1                 lastlog          rsnapshot.log.5.gz        Xorg.3.log.old
alternatives.log.3.gz   dmesg.0                lp-acct          rsnapshot.log.6.gz        Xorg.4.log
alternatives.log.4.gz   dmesg.1.gz             lp-errs          syslog
alternatives.log.5.gz   dmesg.2.gz             mail.err         syslog.1
alternatives.log.6.gz   dmesg.3.gz             mail.err.1       syslog-2017091507.backup
alternatives.log.7.gz   dmesg.4.gz             mail.err.2.gz    syslog.2.gz
```

# `/var/log/syslog`
One of the most important logs `/var/log/syslog`.
This particular log file logs everything except auth-related messages.
Say you want to view the contents of that particular log file. To do that, you could quickly issue the command less /var/log/syslog. This command will open the syslog log file to the top. You can then use the arrow keys to scroll down one line at a time, the spacebar to scroll down one page at a time, or the mouse wheel to easily scroll through the file.

# `/var/log/apcupcd`
A bash command to filter the most interesting log messages is this:

```bash
grep -iv ': starting\|kernel: .*: Power Button\|watching system buttons\|Stopped Cleaning Up\|Started Crash recovery kernel' \
    /var/log/messages /var/log/syslog /var/log/apcupsd* \
    | grep -iw 'recover[a-z]*\|power[a-z]*\|shut[a-z ]*down\|rsyslogd\|ups'
```

# Improper Shutdown Troubleshooter

# What Caused the Shutdown
When your system stops for no apperent reason,
you want a way to find out what caused the shutdown.
Was a `shutdown` request run from console,
or someone hit power button, over heated CPU, power hit, etc.?

There are 4 commands to stop a Linux system properly:
`shutdown`, `poweroff`, `halt`, and `reboot` - https://www.tecmint.com/shutdown-poweroff-halt-and-reboot-commands-in-linux/

## last
Source - https://unix.stackexchange.com/questions/9819/how-to-find-out-from-the-logs-what-caused-system-shutdown

>**NOTE:**
>You can use the `who` command to print who is logged on,
>but also it can display the time of last system boot via
`who -b` or `uptime -s`.


`last` searches back through the `/var/log/wtmp` file
and displays a list of all users logged in (and out) since that file was created.

`last -x` (or `last -x -f /var/log//wtmp.1` for archived logs)
display the system shutdown entries and run level changes.
**A normal shutdown and power-up example** looks like this
(note that you have a shutdown event and then a system boot event):

```
runlevel (to lvl 0)   2.6.32- Sat Mar 17 08:48 - 08:51  (00:02)
shutdown system down  ... <-- first the system shuts down
reboot   system boot  ... <-- afterwards the system boots
runlevel (to lvl 3)
```

In some cases you may see this (note that there is no line about the shutdown
but the system was at runlevel 0 which is the "halt state"):

```
runlevel (to lvl 0)   ... <-- first the system shuts down (init level 0)
reboot   system boot  ... <-- afterwards the system boots
runlevel (to lvl 2)   2.6.24-... Fri Aug 10 15:58 - 15:32 (2+23:34)
```

**An unexpected shutdown from power loss** looks like this
(note that you have a system boot event without a prior system shutdown event):

```
runlevel (to lvl 3)   ... <-- the system was running since this momemnt
reboot   system boot  ... <-- then we've a boot WITHOUT a prior shutdown
runlevel (to lvl 3)   3.10.0-693.21.1. Sun Jun 17 15:40 - 09:51  (18:11)
```

When an **unexpected power off or hardware failure** occurs,
the filesystems will not be properly unmounted so in the next boot you may get logs like this:

```
EXT4-fs ... INFO: recovery required ...
Starting XFS recovery filesystem ...
systemd-fsck: ... recovering journal
systemd-journald: File /var/log/journal/.../system.journal corrupted or uncleanly shut down, renaming and replacing.
```

When the system **powers off because user pressed the power button**
you get logs like this:

```
systemd-logind: Power key pressed.
systemd-logind: Powering Off...
systemd-logind: System is powering down.
```

When the **system shuts down due to overheating** you get logs like this:

```
critical temperature reached...,shutting down
```

Only when the system shuts down orderly you get logs like this:

```
rsyslogd: ... exiting on signal 15
```

# Wireless Connection Troubleshooter
Sources
* [Wireless connection troubleshooter](https://help.ubuntu.com/stable/ubuntu-help/net-wireless-troubleshooting-hardware-check.html)
* [How do I troubleshoot problems with my wireless connection?](https://askubuntu.com/questions/236119/how-do-i-troubleshoot-problems-with-my-wireless-connection)
* []()

## Check the Wireless Adapter
Even though the wireless adapter is connected to the computer,
it may not have been recognized as a network device by the computer.
First step, check whether the device was recognized properly:

```bash
# check if wireless adapter is recognized
$ sudo lshw -C network

  *-network
       description: Ethernet interface
       product: 82579V Gigabit Network Connection
       vendor: Intel Corporation
       physical id: 19
       bus info: pci@0000:00:19.0
       logical name: eth0
       version: 04
       serial: 00:22:4d:83:c1:c8
       size: 1Gbit/s
       capacity: 1Gbit/s
       width: 32 bits
       clock: 33MHz
       capabilities: pm msi bus_master cap_list ethernet physical tp 10bt 10bt-fd 100bt 100bt-fd 1000bt-fd autonegotiation
       configuration: autonegotiation=on broadcast=yes driver=e1000e driverversion=3.2.6-k duplex=full firmware=0.13-4 ip=192.168.1.200 latency=0 link=yes multicast=yes port=twisted pair speed=1Gbit/s
       resources: irq:31 memory:efd00000-efd1ffff memory:efd39000-efd39fff ioport:f080(size=32)
  *-network
       description: Ethernet interface
       product: 82574L Gigabit Network Connection
       vendor: Intel Corporation
       physical id: 0
       bus info: pci@0000:03:00.0
       logical name: eth1
       version: 00
       serial: 00:22:4d:83:c1:d7
       capacity: 1Gbit/s
       width: 32 bits
       clock: 33MHz
       capabilities: pm msi pciexpress msix bus_master cap_list ethernet physical tp 10bt 10bt-fd 100bt 100bt-fd 1000bt-fd autonegotiation
       configuration: autonegotiation=on broadcast=yes driver=e1000e driverversion=3.2.6-k firmware=2.1-2 latency=0 link=no multicast=yes port=twisted pair
       resources: irq:16 memory:efc20000-efc3ffff memory:efc00000-efc1ffff ioport:e000(size=32) memory:efc40000-efc43fff
  *-network
       description: Wireless interface
       physical id: 1
       bus info: usb@2:1.5
       logical name: wlan0
       serial: 94:db:c9:51:10:ca
       capabilities: ethernet physical wireless
       configuration: broadcast=yes driver=rt2800usb driverversion=5.0.0-29-generic firmware=0.36 ip=192.168.1.13 link=yes multicast=yes wireless=IEEE 802.11
```

>**NOTE:** If your wireless adapter is connected via PCI, USB, or PCMCIA,
>you'll need to use other tools listed [here][01].

## Check the Signal Quality
If you have no signal or your access point isn't recognized,
you need to focus on the low-level stuff (hardware/drivers).
Is the router on?
Are antennas damaged or oriented improperly?
Is device too far away from the access point?
Do you have the right driver for your WiFi card?

## Is the Network Connection Stable
Since TCP/IP supports error-detection with retransmits,
and congestion control, WiFi disconnects/reconnects are usually a result of a
large number of errors to the point where TCP gives-up.
A full WiFi disconnect may happen only once in several minutes.

mtr combines the functionality of the traceroute and ping programs in a single network diagnostic tool.
Install `sudo apt-get install mtr`

* [How To Use Traceroute and MTR to Diagnose Network Issues](https://www.digitalocean.com/community/tutorials/how-to-use-traceroute-and-mtr-to-diagnose-network-issues)
* [Diagnosing Network Issues with MTR](https://www.linode.com/docs/networking/diagnostics/diagnosing-network-issues-with-mtr)
# Network Connection Troubleshooter

## Is the Network Connection Stable

# Other
Check Swap Usage Size and Utilization - https://www.cyberciti.biz/faq/linux-check-swap-usage-command/



[01]:https://help.ubuntu.com/stable/ubuntu-help/net-wireless-troubleshooting-hardware-check.html
[02]:
[03]:
[04]:
[05]:
[06]:
[07]:
[08]:
[09]:
[10]:
