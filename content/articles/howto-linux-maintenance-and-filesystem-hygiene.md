Title: HowTo: Linux Maintenance and Filesystem Hygiene
Date: 2014-03-31 21:23
Category: HowTo
Tags: How To, Linux, Raspberry Pi, Filesystem, Hygiene
Slug: howto-linux-maintenance-and-filesystem-hygiene
Author: Jeff Irland
Image: how-to.jpg
Summary: This article reviews the kinds of maintenance activities required by Ubuntu / Debian / Raspberry Pi Linux distributions to keep them running as they should.  It covers topics like OS and applications updates, disk / filesystems integrity, and cleaning up filesystem clutter.

What kind of maintenance does one need to do on an Ubuntu / Debian / Raspberry Pi Linux distributions?
Defrag the drive, clean your registry, update antivirus, etc. just like you need to in Windows?
None of this is needed in Linux but there is some recommend filesystem hygiene you should be doing.

## Gather Information
For starters, lets gather some information.
Some of the maintenance activities listed here, you're going to need some basic information.
This next section shows you how to get that information.

#### Distribution Name and Version
To determine which Linux version / build / release / distribution you are running:

```bash
# kernel name and release
uname -sr

# kernel version
uname -v

# Linux distribution
cat /etc/*-release
lsb_release -a
```

Use one of the following command to get a listing of all the physical hard drives
(and virutal drives) on the system:

```bash
# terminal commandline utilities to list disk drives
hwinfo --disk --short
sudo lshw -class disk -class storage -short

# GTK+ graphical user interface version of lshw
sudo lshw-gtk &
```

For the Raspberry Pi, you can list the installed firmware version via:

```bash
# list the Raspberry Pi's firmware version
/opt/vc/bin/vcgencmd version
```

To get a broader, and potentially more detailed look at your system,
consider the commands [`lshw`][11]
and the graphical tools [`lshw-gtk`][12] and [`sysinfo`][12].

## OS and Application Maintenance
You should periodically update your Linux operating system (OS)
and its applications.

#### Install Operating System and Application Patches/Updates
This will patch the Linux operating system and all its GPL applications

```bash
# commandline utility for applications upgrade
sudo apt-get update; sudo apt-get dist-upgrade

# graphics utility for applications upgrade
update-manager -c
```

#### Updating Firmware for Raspberry Pi
In the case of the Raspberry Pi (RPi), you will want to also upgrade the firmware regularly.
[Raspbian][07] is the standard Linux operating system distribution for the RPi,
but it doesn't include firmware.
Never the less, tools for updating the firmware are included in the Raspbian distribution of Linux.
That tool is `sudo apt-get install rpi-update`.
I'm using the [Adafruit's Occidentalis distribution][08], so this requires a
[slightly different update tool][09] (`git` needs to be installed):

```bash
# install tools to upgrade Raspberry Pi's firmware
sudo wget https://raw.github.com/Hexxeh/rpi-update/master/rpi-update -O /usr/bin/rpi-update
sudo chmod +x /usr/bin/rpi-update
```

Once the tool has been installed, periodically you can update the firmware via these commands:

```bash
# check for and install any required Raspberry Pi firmware upgrades
sudo BRANCH=next rpi-update
sudo reboot
```

Note that once the firmware has been successfully updated,
you'll need to reboot to load the new firmware.

## Filesystem Maintenance
Filesystems and disks should be check to make sure they are not running low on resources
and are not showing any signs of pending failure.


#### Check Storage and Inode Usage
If you let some directories get really full, like above 95% full, you will see some serious system problems.
Check on the status of directory systems storage space and inode usage:

    df
    df -i

#### Disk and Filesystems Integrity
[Smartmontools][02] is a set of applications that can test hard drives
and read their hardware SMART statistics (install with `sudo apt-get install smartmontools`).
To ensure that your drive supports [SMART][03], type the following for each physical drive:

    sudo smartctl -i /dev/sda

If `smartctl` can access the drive, you should turn on some SMART features.
I ran the following command on my three drives (example for the `/dev/sda` drive):

    sudo smartctl -s on -o on -S on /dev/sda

Check the disk's overall health:

    sudo smartctl -H /dev/sda

If it doesn’t return PASSED, you should immediately backup all your data.
A short, but more extensive test is

    sudo smartctl -t short /dev/sda

You can do a long self-test, but this can take a significant amount of time.
You might want to run it overnight and check for the results in the morning.

    sudo smartctl -t long /dev/sda

To check results, run the following:

    sudo smartctl -l selftest /dev/sda

Unfortunately, there’s no way to check progress, so just keep running that command until the results show up.
 If either test fails, you should immediately backup all your data.
Depending on the error, your drive might be close to death or it may still have a long life ahead.
Consult the [smartmontools FAQ][06].

We’ve now enabled some features and run the basic tests.
Instead of repeating the previous section daily, we can setup `smartd` to do it all automatically.
Via the demon, you can run Smartmontools in the background,
have it check drives, and email you when there are issues.
See the Sources below to figure out what needs to be done to setup the `smartd` demon.

#### Filesystem Checks and Repair
The Linux filesystem can be damaged under various circumstances, e.g., system crash,
power loss, disconnected disk, accidentally overwritten i-node, etc.
Thus it is a good idea to check the integrity of the filesystem regularly
to minimize the risk of filesystem corruption.
The tool used to [do filesystem checks and repairs is `fsck`][26].
You can check out the article to understand
"[How to force fsck to check filesystem after system reboot on Linux][10]"

Typically, you should run `fsck` periodically,
but there are scenarios when you will immediately want to run `fsck`.
Typical examples are:

* The system fails to boot
* Files on the system become corrupt (often you may see input/output error)
* Attached drive (including flash drives/SD cards) is not working as expected

>**NOTE:** A filesystem check can run for many minutes, if not hours,
>depending on the size of the filesystem.
>You'll want to schedule the check for an appropriate time.

Using the utility `tune2fs` we can get information
related to filesystem health and status.
The example below for the filesystem `/dev/sda`,
you get the:

* number of times the filesystem has been mounted since the last `fsck` checkup,
* number of mounts before a filesystem check is forced to happen,
* and the date/time of the last `fsck` check:

```bash
# what is the status of the /dev/sda filesystem
$ sudo tune2fs -l /dev/md0 | grep -e "Last checked" -e Max -e Mount
Mount count:              490
Maximum mount count:      -1
Last checked:             Mon May 27 14:57:13 2013
```

Generally, your going to want `fsck` to automatically attempt to correct errors it finds.
This can be done with `sudo umount /dev/sdb && sudo fsck -y /dev/sdb`.
The `-y` flag, automatically “yes” to any prompts from `fsck` to correct an error.

##### Forced Root Filesystem Check
You can do force a one-time filesystem check on the root file system
(aka `/`) on the next reboot by doing the following:

    sudo touch /forcefsck

Once you create an empty file named `forcefsck` in the root directory,
it will force filesystem check the next time you boot up (only on the root filesystem).
After successful booting, `/forcefsck` will automatically be removed.

##### Forced Non-Root Filesystem Check
Unlike the root filesystem,
there is no equivalent to `/forcefsck` file for non-root filesystems.
The only way to force `fsck` on all other non-root partitions
is to manipulate the filesystem's "Maximum mount count" parameter
within the `/etc/fstab` configuration file.
To force filesystem `fsck` check on non-root partition's to every 10th mount:

```bash
# force a filesystem check with fsck every 10 mount
sudo tune2fs -c 10 /dev/sdb

# to disable this automatic check
sudo tune2fs -c 0 /dev/sdb
# or
sudo tune2fs -c -1 /dev/sdb
```

## Periodic Filesystem Hygiene
Linux will leave some clutter around in the filesystem.
While generally not a problem, it can eat-up disk space,
and can become a problem for the `/boot` directory.

#### Clean-Up Temporary Files
Some editors (like vim) may leave files ending with a ‘~' character laying around.
You can clean them up under your `$HOME` as a normal user
(You can do it for the entire system as root, but that can be extremely dangerous.)
Use the command below to get a list of candidates:

    find $HOME -type f -name "*~" -print

After that appears to do what you want, add the -exec part.

    find $HOME -type f -name "*~" -print -exec rm {} \;

Kernel crashes, when they happen, write the core dump files under `/var`.
Assuming you aren't saving them for debugging, you can do this to get a listing:

    sudo find /var -type f -name "core" -print

Some applications create temporary files in their own directories:

    rm -rf ${HOME}/.macromedia/* ${HOME}/.adobe/*

#### Clean-Up Old Log Files
You can also remove old compress log files from the system with

    sudo rm -v /var/log/*.gz

#### Clean-Up Installation Packages
To remove partial packages, clean the cache, remove unused dependencies use:

```bash
# For software packages remove partial packages, clean the cache, remove unused dependencies
sudo apt-get autoclean
sudo apt-get clean
sudo apt-get autoremove
```

#### Clean-Up Old Kernel Packages
You also need to do something similar for kernel installations.
You'll find the amount of space being used by the current kernel
and old kernel installation packages in `/boot` by running:

    df -h /boot

The current Linux kernel installation (and the one you most definitely must keep)
can be identified via:

    uname -r

Run the following command to list all packages that you no longer need:

```bash
# list all the kernel packages installed on the system
dpkg -l 'linux-*'

# print the currently active kernel version
uname -r | sed "s/\(.*\)-\([^0-9]\+\)/\1/"

# list all the currently loaded old kernel packages, that is other than the active one
dpkg -l 'linux-*' | sed '/^ii/!d;/'"$(uname -r | sed "s/\(.*\)-\([^0-9]\+\)/\1/")"'/d;s/^[^ ]* [^ ]* \([^ ]*\).*/\1/;/[0-9]/!d'
```

You can use the above command to permanently delete **ALL** older kernels:

```bash
# USE WITH CAUTION: perminately delete old kernel packages
sudo apt-get remove --purge $(dpkg -l 'linux-*' | sed '/^ii/!d;/'"$(uname -r | sed "s/\(.*\)-\([^0-9]\+\)/\1/")"'/d;s/^[^ ]* [^ ]* \([^ ]*\).*/\1/;/[0-9]/!d')
```

However this **may not be wise**, as you should **always**
have an old kernel or two to fall back to
(just in case the new one doesn't work with your system).
At the very least, if you've just upgraded the kernel,
reboot before deleting the older versions.

```bash
# USE WITH CAUTION: to remove a specific kernel package, in this case 3.13.0-49
sudo apt-get remove --purge $(dpkg -l 'linux-*' | sed '/^ii/!d;/'"$(uname -r | sed "s/\(.*\)-\([^0-9]\+\)/\1/")"'/d;s/^[^ ]* [^ ]* \([^ ]*\).*/\1/;/[0-9]/!d' | grep 3.13.0-49)
```

And if you happen to blow away all the kernel images (as I have done more than once),
get your current kernel version back by executing `uname -r` and then reinstall it with:

    sudo apt-get install linux-image-x.x.x-xx

where `x.x.x-xx` is the kernel version number give by the `uname -r` command.

#### SSD TRIM
Solid-state drives (SSD) have brought about a new way of managing storage.
SSDs have benefits like silent and cooler operation and a faster interface spec,
compared to hard drives but brings with it new methods of maintenance and management.
SSDs have a feature called TRIM.
This is essentially a method for reclaiming unused blocks on the device,
which may have been previously written, but no longer contain valid data and therefore,
can be returned to the general storage pool for reuse.

Ubuntu Linux executes TRIM services via systemd timer service.
To check the existence and current status,
run `sudo systemctl list-timers --all`:

```bash
# verify TRIM services are enabled
$ sudo systemctl list-timers --all
NEXT                         LEFT                LAST                         PASSED             UNIT
Sat 2020-03-21 22:33:01 EDT  3min 10s left       Sat 2020-03-21 21:33:27 EDT  56min ago          anacron.timer
Sun 2020-03-22 00:00:00 EDT  1h 30min left       Sat 2020-03-21 00:00:01 EDT  22h ago            logrotate.timer
Sun 2020-03-22 00:00:00 EDT  1h 30min left       Sat 2020-03-21 00:00:01 EDT  22h ago            man-db.timer
Sun 2020-03-22 00:10:05 EDT  1h 40min left       Sat 2020-03-21 12:40:56 EDT  9h ago             apt-daily.timer
Sun 2020-03-22 03:10:22 EDT  4h 40min left       Sun 2020-03-15 03:10:28 EDT  6 days ago         e2scrub_all.timer
Sun 2020-03-22 06:35:01 EDT  8h left             Sat 2020-03-21 06:19:49 EDT  16h ago            apt-daily-upgrade.timer
Sun 2020-03-22 08:23:14 EDT  9h left             Sat 2020-03-21 14:38:27 EDT  7h ago             motd-news.timer
Sun 2020-03-22 08:35:00 EDT  10h left            Sat 2020-03-21 20:09:27 EDT  2h 20min ago       mdmonitor-oneshot.timer
Sun 2020-03-22 18:07:19 EDT  19h left            Sat 2020-03-21 18:07:19 EDT  4h 22min ago       systemd-tmpfiles-clean.
Mon 2020-03-23 00:00:00 EDT  1 day 1h left       Mon 2020-03-16 00:00:01 EDT  5 days ago         fstrim.timer
Sun 2020-04-05 11:39:18 EDT  2 weeks 0 days left Sun 2020-03-01 11:52:26 EST  2 weeks 6 days ago mdcheck_start.timer
n/a                          n/a                 n/a                          n/a                mdcheck_continue.timer
n/a                          n/a                 n/a                          n/a                snap-repair.timer
n/a                          n/a                 n/a                          n/a                snapd.refresh.timer
n/a                          n/a                 n/a                          n/a                snapd.snap-repair.timer

15 timers listed.
```

For additional information, check out:

* [Solid state drives in Linux: Enabling TRIM for SSDs](https://opensource.com/article/17/1/solid-state-drives-linux-enabling-trim-ssds)
* [Extend the life of your SSD drive with fstrim](https://opensource.com/article/20/2/trim-solid-state-storage-linux)

## When the Hard Disk Goes South
For basic disk errors, you could try letting Linux heal itself with `fsck` at boot up.
To do this, shut down the system with the -F option like this:

    sudo shutdown -r -F now

Linux reboots immediately and looks for disk errors with the [`fsck`][05] command.
Confirm fixing disk errors by pressing "y" and "Enter" if prompted.

If this fails, read these articles "[Disk Maintenance under Linux (Disk Recovery][01]",
[How to recover partitions and data using Linux - Tutorial][04],
and then follow the instructions carefully!

## Cleaning Up After a System Crash
At some point your system will crash and
you'll need to perform a manual repair of your filesystem.
When this happens, you'll reboot, the system stops, and
then indicates you must perform a manual repair of the filesystem.

### Check & Repair Filesystem
`fsck` (filesystem consistency check) is a command used to check filesystem
for consistency errors and repair them on Linux filesystems.
This tool is important for maintaining data integrity.
It should be run regularly,
especially after an unforeseen reboot (e.g. crash, power-outage).

>_**NOTE:** You need to be "root" to use `fsck` and
it is very important to unmount the filesystem before running it._

First take the system to [runlevel one (single user mode)][25].
Unmount the filesystem, and then run `fsck`.
For example, if the filesystem in question is `/home` (or its device named `/dev/sdh`) then type command:

```bash
umount /home
# or
umount /dev/sdh
```

Once `fsck` finished, remount the filesystem:

    mount /home

Now start the check/repair via the command

    fsck -y /dev/sdh

`fsck` will check the filesystem and ask which problems should be
fixed or corrected you don not use the `-y` option.
Any files that are recovered are placed in
the `/home/lost+found` directory by `fsck` command.

Once fsck finished, remount the filesystem:

    mount /home

### Superblock Corruption
It is possible that `fsck` will fail with a message telling you that
your filesystem has a bad [superblock][21].
The filesystem's superblock contains information about the filesystems type, size, structure, etc.
This very important information, and if totally lost, its catastrophic.
Luckily, redundant superblock information is maintained,
and therefore, [this too can be repaired][20].
You can find the location of the superblocks via

```bash
# find the location of superblocks
sudo umount /dev/sdh
sudo dumpe2fs /dev/sdh | grep -i superblock
```

The superblock labeled as "Primary" is the culprit, so you choose another to take its place.
Pick another superblock number and use it as the `-b` options parameter.

    sudo e2fsck -y -b 32768 /dev/sdh

Effectively, your running a filesystem check but using an alternate superblock.
This could run for a very long time (like hours).
After it completes, corruption should be removed and the primary superblock restored.

## When the Filesystem is Full
Sometimes after a system crash,
you'll get a message like "The volume filesystem root has only 0 bytes disk space remaining".
If you run the `df -h` command, you will in fact see it.
This is almost certainly due to being actually out of space on the root filesystem,
and not some erroneous message by Linux, so you must dig to find the source of the problem.

>_**NOTE:** A deceptive source of filling your root filesystem
is when there is a failure/corruption of a disk drive mount on [`/mnt`][24].
The disk maybe unmounted, but never the less,
programs can still successfully write to `/mnt` directory structure.
In my case, I had my backup system using `/mnt/backup` and it appear everything was find,
but in reality, data wasn't going to the external drive
but instead to the root filesystem under `/mnt`, filling up the root filesystem._

>_To check for this, `umount` any hard drives mounted to `/mnt`.
This should remove the filesystem.
Now look for the filesystem, and if parts of it are still there,
this could very well be the source of your file space problem._

A useful command for finding what's eating up all the space is the ["disk usage" command, `du`][19].
Running the following command:

    sudo du -s -h -x /*

This will give you the total amount of space used (`-s`) by each file
or directory at the top of your root filesystem (`/*`),
without looking at other filesystems (`-x`),
in human-readable numbers like "124M" (`-h`).
Don't worry if it takes a while to complete, it could take on the order of minutes.

Don't delete files without first knowing what they are, of course.
But, in general, you won't break your system if you delete files in the following directories:

* `/tmp` &ensp;&ensp;user temp data -- these are commonly all deleted every reboot anyway
* `/var/tmp` &ensp;&ensp;print spools, and other system temporary data
* `/var/cache/*` &ensp;&ensp;this one can be dangerous, research first!
* `/root` &ensp;&ensp;the root user's home directory

In addition to the locations above, the following locations are common culprits:

* `/opt` &ensp;&ensp;many third-party apps install here, and don't clean up after themselves
* `/var/log` &ensp;&ensp;log files can eat up a lot of space if there are repetitive errors

#### Very Large Log Files
Linux log files found in `/var/log` can be a source of your filesystem full.
These log files will quickly fill if there are problems within the system.

To investigate if they may be the source your filesystem full,
find the top ten largest files and directories in  `/var/log`:

```bash
# print number of bytes in the 10 largest files and directories in /var/log
sudo du -a -b /var/log | sort -n -r | head -n 10
```

To clean up the offending log file,
you can use the `: >` operation to truncate the file to zero bytes.
For example, this will reduce the `syslog` and `kern.log` files to zero bytes:

```bash
# reduce syslog and kern.log to zero bites
sudo su
cd /var/log
: > syslog
: > kern.lg
exit
```

#### Deleted But Open Files
Another potential source of a full filesystem are large
[files left open but have been deleted][13].
On Linux, a file may be deleted (removed/unlinked) while a process has it open.
When this happens, the file is essentially invisible to other processes,
but it still takes on physical space on the drive.
Tools like `du` will not see it.

To find these deleted but open files, run the utility [lsof][22]

```bash
# list open but deleted files
sudo lsof -nP | grep '(deleted)'
```

To find out how much space is taken up by these deleted but open files, run:

```bash
# total space used by open but deleted files
sudo lsof -nP | awk '/deleted/ { sum+=$8 } END { print sum }'
```

`lsof` will list all open files,
`awk` then searches for the deleted files, and sums up the file sizes (in bytes).

To get a list of process ID (PID) that own these file that are not redundant, use

```bash
# process IDs of open but deleted files
sudo lsof -nP | grep '(deleted)' | awk '{ print $2 }' | sort | uniq
```

It's up to the filesystem driver to actually free the allocated space,
and that will usually happen only once all file descriptors referring to that file are released.
So you can't really reclaim the space, unless you make the application close the file.
The challenge is that the responsible applications are long gone due to the system crash.
How does one "delete" a file that the operating system believes has already been deleted?

Actually we cannot remove the file as long as the file is still in use by a process.
But what we can do is: Getting the size down to 0 via Linux' [`/proc`][14] filesystem.
`/proc` is very special in that it is also a virtual filesystem.
It's sometimes referred to as a process information pseudo-file system.
It doesn't contain 'real' files but runtime system information
(e.g. system memory, devices mounted, hardware configuration, etc).
[Within `/proc`, each of the numbered directories corresponds to an actual process ID][15].
Looking at the process table, you can match running processes with the associated process ID.
Or at least that what should be happening absent a system crash.
When the system crashed, the process is gone but the deleted but open file remains.

[To fix this problem][23], our strategy is to [truncate][16] these deleted but open files.
Your can truncate text file and make the size to zero using [redirection][17]:
For example, if `2746` is the process ID with in `/proc` with a deleted but open file,
the coresponding file must be truncate zero bytes.
This can be done by switching to full root mode, find the effected files, and truncate them.
For an example with a PID of `2746`

    sudo -s
    cd /proc/2746/fd
    ls -l | grep '(deleted)' | awk '{ print $9 }'

The numbers produced by the last command is the file to be truncate.
For example, if one of the numbers produce is `12`, then use this operation
to truncate the file to zero bytes

    :> /proc/2746/fd/12

You could automate all of the above with this command line

```bash
# for all open but deleted files associated with process 2746, trunctate the file to 0 bytes
PID=2746 ; cd /proc/$PID/fd ; ls -l | grep '(deleted)' | awk '{ print $9 }' | while read FILE; do :> /proc/$PID/fd/$FILE; done
```

Finally, it's a good idea to do a [forced full file system check][18] on the next reboot.

```bash
# file system check on next reboot
sudo touch /forcefsck

# or

# shutdown and do a file system check now
shutdown -rF now
```

## Sources
I primarily consulted the following sources to create this posting:

* [Why use apt-get upgrade instead of apt-get dist-upgrade?](http://askubuntu.com/questions/194651/why-use-apt-get-upgrade-instead-of-apt-get-dist-upgrade)
* [What Kind of Maintenance Do I Need to Do On My Linux PC?](http://lifehacker.com/5817282/what-kind-of-maintenance-do-i-need-to-do-on-my-linux-pc)
* [Is system cleanup/optimization needed](http://askubuntu.com/questions/81042/is-system-cleanup-optimization-needed)
* [Disk Maintenance under Linux (Disk Recovery)](http://www.linuxjournal.com/article/193?page=0,0)
* [Smartmontools](https://help.ubuntu.com/community/Smartmontools)
* [S.M.A.R.T. (Self-Monitoring, Analysis, and Reporting Technology)](https://wiki.archlinux.org/index.php/S.M.A.R.T.)
* [Monitoring Hard Drive Health on Linux with smartmontools](http://blog.shadypixel.com/monitoring-hard-drive-health-on-linux-with-smartmontools/)
* [How do I remove or hide old kernel versions to clean up the boot menu or free space?](http://askubuntu.com/questions/2793/how-do-i-remove-or-hide-old-kernel-versions-to-clean-up-the-boot-menu-or-free-sp)
* [How to Get Rid of Deleted Open Files](http://www.unixwerk.eu/linux/deleted_files.html)



[01]:http://www.linuxjournal.com/article/193?page=0,0
[02]:http://sourceforge.net/apps/trac/smartmontools/wiki
[03]:http://en.wikipedia.org/wiki/S.M.A.R.T.
[04]:http://www.dedoimedo.com/computers/linux-data-recovery.html
[05]:http://linux.die.net/man/8/fsck
[06]:http://sourceforge.net/apps/trac/smartmontools/wiki/FAQ
[07]:http://www.raspbian.org/
[08]:http://learn.adafruit.com/adafruit-raspberry-pi-educational-linux-distro/overview
[09]:https://github.com/Hexxeh/rpi-update
[10]:https://linuxconfig.org/how-to-force-fsck-to-check-filesystem-after-system-reboot-on-linux
[11]:http://www.thegeekstuff.com/2008/12/how-to-get-hardware-specs-of-your-system-using-lshw-hardware-lister/
[12]:http://www.webupd8.org/2011/07/how-to-get-hardware-information-in.html
[13]:http://dustymabe.com/2012/01/22/recover-space-by-finding-deleted-files-that-are-still-held-open/
[14]:http://www.linuxjournal.com/article/8381
[15]:http://www.tldp.org/LDP/Linux-Filesystem-Hierarchy/html/proc.html
[16]:http://www.cyberciti.biz/faq/truncate-large-text-file-in-unix-linux/
[17]:http://bash.cyberciti.biz/guide/Redirection_of_standard_output
[18]:http://www.cyberciti.biz/faq/linux-force-fsck-on-the-next-reboot-or-boot-sequence/
[19]:http://linoxide.com/linux-command/linux-du-command/
[20]:http://linuxexpresso.wordpress.com/2010/03/31/repair-a-broken-ext4-superblock-in-ubuntu/
[21]:http://www.cyberciti.biz/tips/understanding-unixlinux-filesystem-superblock.html
[22]:http://www.thegeekstuff.com/2012/08/lsof-command-examples/
[23]:http://www.unixwerk.eu/linux/deleted_files.html
[24]:http://www.tldp.org/LDP/Linux-Filesystem-Hierarchy/html/mnt.html
[25]:http://www.cyberciti.biz/tips/linux-changing-run-levels.html
[26]:https://www.tecmint.com/fsck-repair-file-system-errors-in-linux/
