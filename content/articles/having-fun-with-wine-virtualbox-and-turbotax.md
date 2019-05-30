Title: Having Fun with Wine, VirtualBox, and TurboTax
Date: 2014-01-15 00:01
Category: Software
Tags: Wine, VirtualBox, TurboTax
Slug: having-fun-with-wine-VirtualBox-and-turbotax
Author: Jeff Irland
Image: VirtualBox-logo.jpg
Summary: I discovered that getting Microsoft Windows applications, like TuboTax, working using Wine is a pain!  Out of necessity, I turn to VirtualBox.  Getting VirtualBox and MS Windows 8.1 working together is simple.

Sometime ago, I committed myself to Linux and [Wine][06],
with the promise that I would sincerely abandon Microsoft Windows by
not [dual booting][07] my system nor installing any [virtualization][01] software.
Well, it is now tax-time and the Federal government wants their "fair share" of my income.
Will my preferred tax software package, [TurboTax][02], run with Linux & Wine?
All the evidence I have gathered (see [Wine's ratings][03] for one data point)
on the web leads me to believe I will be very disappointed.
I can't find any success stories!
Never the less, I will use this as a learning opportunity.
I'm going to plunge forward and try to get TurboTax working with Wine, ....
and it it fails me, resort to [VirtualBox][04],
which appears to have at least [some success][05] stories.

# Installing and Configuring Wine
Wine can be installed via the following:

```bash
# installing wine
sudo add-apt-repository ppa:ubuntu-wine/ppa
sudo apt-get update
sudo apt-get install wine
sudo apt-get install cabextract
sudo apt-get install winetricks
```

`winetricks` is a script which automates the installation of various useful packages,
offering a friendly interface to do so.
The `cabextract` package is a native Linux application that extracts Microsoft Cabinet files (CAB).
`ppa:ubuntu-wine/ppa` will get the latest versions for Wine and keep it updated with new releases.
This is important since the Wine support team is frequently
fixing and tweaking it to get Microsoft Windows software working.
To test if you got things installed properly[^A],
execute one of the already installed Microsoft Windows packages.
Try the following: `wine notepad.exe`.

[^A]:
    **NOTE:** Use the utility [`winecfg`][08] to configure Wine and change settings like
    sound, graphics, Windows version, and so on.

# Installing TurboTax with Wine
Wine is complex and large.
I don't have the patience for hours of configuring and testing;
particularly if in the end I can't print or electronically email my tax return.
I'm going to plunge into installing TurboTax via Wine,
and see if I can get things running with minimal effort.

So, I put the CD in the drive, right clicked on the setup.exe file, picked the menu item
"Open With Wine Windows Program Loader", and got a error screen titled
["We can't install TurboTax on your computer just yet..."][09].
Appears that TurboTax doesn't like Wine's version of the .NET Framework.
A little [research][10] suggested that I should install .NET 4 via this command:

```bash
# install .NET
winetricks dotnet40
```

After this, I still got a .NET related error.
Specifically, the TurboTax installer was looking for the `netfx40testapplication.exe`.
Another quick search brought me to these bug report: [#1][11] and [#2][12].
I have had enough ... on to VirtualBox!!

----

# Installing TurboTax Within VirtualBox
VirtualBox is being setup with Microsoft Windows (specifically Windows 8.1)
as the Guest OS and with the native Linux (specifically Ubuntu 13.10) as the Host OS.
[VirtualBox version 4.3 has added Windows 8.1 support][14],
so that is the version I wish to install.
I initially installed VirtualBox via Ubuntu's software center
(equivalent to using `sudo apt-get install virtualbox virtualbox-qt`),
which installed version 4.2.16-dfsg-3, and I had to back it out.
Instead, I install VirtualBox from the Oracle maintained repository,
following the [procedures outlined by Oracle][15].
I added the following lines (for the appropriate Linux distribution; mine is saucy)
to the `/etc/apt/sources.list` file:

```
# Oracle's software repository for VirtualBox
deb http://download.virtualbox.org/virtualbox/debian saucy contrib
```

Downloaded the Oracle public key for the software:

```bash
# get the public key for VirtualBox's repository
wget -q http://download.virtualbox.org/virtualbox/debian/oracle_vbox.asc -O- | sudo apt-key add -
```

Now install VirtualBox:

```bash
# install VirtualBox
sudo apt-get update
sudo apt-get install virtualbox vde2 virtualbox-guest-additions-iso virtualbox-ext-pack
```

### Configuring VirtualBox and Installing Windows 8.1
It appears you can install 32 or 64 bit Windows (assuming you have virtualization supporting processor).
I choose the 64 bit version.
As to the installation steps, I was guided by the posting "[Windows 8.1 in VirtualBox][16]",
and the steps are basically the following:

**Configure VirtualBox**

* Fired up VirtualBox, clicked the "New" button, and used the Wizard to create a virtual partition for Window
* I gave the virtual machine the name "MS Windows"
* I allocated to the virtual machine the maximum amount of RAM, that being 3.584GB
* I created a 50GB virtual hard drive with a VirtualBox Disk Image (VDI).  I Choose to have the virtual drive to grow dynamically.
* I opened up "Settings" and under "System" > "Processor", enable "PAE/NX". I also increased the CPU Cores to the number supported on my box (i.e. 4).
* Under "Display" > "Video", I increased the Video Memory as high as I can, disable 3D Acceleration but enabled 2D Acceleration.

**Install Windows 8.1**

* Still in the "Settings" window, go to "Storage" and under "IDE" where it shows "Empty", click the disk next to it and installed Windows 8.1 64-bit DVD into the drive.
* Still with "Storage", click the disk icon right of the "CD/DVD Drive" and select "Host Drive ...".  Also check "Passthrough". Click "OK".
* Select the "Start" button om the VirtualBox Manager window.
* At this point, a window should pop up and you see the Windows 8.1 install process begin.

### Installing TurboTax on VirtualBox
This is easy.
Fire up the "MS Windows" virtual machine, and load TruboTax like you would any other Microsoft Windows application.

----

# Apple iTunes
I also wanted to use my iPod with my music collection.
All my music is in  MP4 format on my Linux box, working happily with Rhythmbox,
but it can't be synced with [my iPod][17].
Apple has finally successfully blocked any form of access between Linux and my version of iPod (7th generation).
My work around is to run iTunes on my Windows Guest OS and share the my music directory
under the Linux Host OS with the Guest OS.

Wine and iTunes .............

### Step 1: Install Host OS (Linux) Guest Additions
First, you have to install VirtualBox Guest Additions in the Host OS.
You can check to see if guest additions has already been loaded by using `lsmod` or `mprobe`,
as shown below:

```bash
# check if virtualbox guest additions package has been installed (yes in this case)
$ dpkg -l | grep virtualbox-guest
ii  virtualbox-guest-dkms                                       5.2.10-dfsg-6ubuntu18.04.1                 all          x86 virtualization solution - guest addition module source for dkms
ii  virtualbox-guest-utils                                      5.2.10-dfsg-6ubuntu18.04.1                 amd64        x86 virtualization solution - non-X11 guest utilities
ii  virtualbox-guest-x11                                        5.2.10-dfsg-6ubuntu18.04.1                 amd64        x86 virtualization solution - X11 guest utilities
```

If the guest additions hasn't been loaded, you can do this via:

```bash
sudo apt-get install dkms build-essential linux-headers-generic module-assistant
sudo apt-get install virtualbox-guest-dkms virtualbox-guest-x11 virtualbox-guest-utils
```

With the VirtualBox additions installed, you should do a reboot.

### Step 2: Install Guest OS (Windows) Guest Additions
Launch VM VirtualBox and start your Guest OS
in which you want to share drives/folders and files contained in them.
Now its time to add Guest Additions to the Guest OS (Windows).

1. Click on **Devices** tab provided on the VM VirtualBox taskbar and select **Insert Guest Additions CD image...** from the drop-down list.
2. Download the VBoxWindowsAdditions.exe and run it via the popup window.
3. On the Setup Wizard select **Next**, use the default destination folder,
install the device software, and then reboot when prompted.

### Step 3: Setup Shared Folders
Once the VM reboots, log back in and proceed onto setting up the shared folder.

1. Click on **Devices** tab provided on the VM VirtualBox taskbar and select **Shared Folders** from the drop-down list.
2. VirtualBox will open a window **Shared Folders**.
Click on the top icon in the right-hand corner to add the drive/folder. Another window will open - **Add Share**.
3. **Add Share** allows you to give the path of the drive/folder you wish to share from the Host OS
by giving the path in **Folder Path** (You can also browse the drive/folder from your Host OS,
in my case `/home/jeff/Music`).
4. Now type the name of the folder in the **Folder Name** box.
It can be any name you wish to have on Guest OS,
but make sure it doesn't currently exist (I used `DesktopMusic`).
Also, check the boxes **Auto Mount** and **Make Permanent** and click **OK**.
5. Go to the Windows **Start**, select and click **Run** on Guest OS.
Type `net use x: \\vboxsrv\Drive F` as the run command and click **OK**.
6. If you have done everything right, then no messages or notifications will appear.
Note that the shared drive/folder name should be the same as given in the **Share Folder** window.
I gave it **Drive F** and you can check for its existence via the File Explorer.

### Step 4: Guest OS (Windows) Access to USB
To sync my iPod, I'll need my Guest OS (Windows) based iTunes access the Host OS (Linux)
USB ports.
VirtualBox by default only supports USB 1.x devices.

1. Make sure you have the VirtualBox extension pack
(includes support for USB 2.0 and USB 3.0 devices).
You can validate you have the extension package installed by going to
**File** > **Preferences...** > **Extensions**.
You should see **Oracle VM VirtualBox Extension Package** listed.
If not listed, follow the instructions in the articles listed in the
"Sources" section below under the heading "VirtualBox Guest OS Access to USB".
2. In order for VirtualBox to have access to the USB subsystem,
the user running VirtualBox must belong to the `vboxuser` group.
To check this, I ran on the Host OS (Linux) the command `groups jeff`,
which list all the groups the user `jeff` is part of.
If `vboxuser` isn't present, I would execute `sudo usermod -aG vboxusers jeff`,
and make sure to restart VirtualBox.
3. Click on **Machine** > **Settings...** > **USB**.
I then clicked on the icon for adding USB device but I didn't find my device.
I then picked the approprate icon to added a new USB Device Filter.
In the filter, I filled otu the **Vendor ID** and the **Product ID**
which I got for the iPod via `lsusb`.
4. Unplug your iPod, open VirtualBox make sure it spins up completely, and plug in your iPod.
Finally, right click on the VM status bar USB icon
and select the USB device you want to attach to the VM.

### Step 5: Install iTunes
Now we'll install iTunes.
Got to [Apple's iTunes download page][19], and down load the software.
After the download is completed and you have gone through all of Apple's marketing BS,
click on **File** > **Add Folder to Library...**.
Select the folder you are sharing with the Host OS (Linux)
and wait while Apple iTunes processes all your music for its consumption.

### Step 6: Sync iPod with iTunes
With iTunes fully initialized, you can now cable up the iPod and sync it with iTunes.
See ["Sync your iPhone, iPad, or iPod touch with iTunes on your computer using USB"][20] for detail instructions.

# Conclusion
Everything seems to be working perfectly within TurboTax and iTunes using VirtualBox!
I believe VirtualBox is destine to stay load and in use on my Linux box.
As to Wine, .... screw it!

# Sources
Getting Wine Working

* [A Guide to Wine on Ubuntu for Beginners](http://www.tuxarena.com/static/tut_wine_guide.php)
* [How To Run Windows Software on Ubuntu with Wine](http://www.howtogeek.com/105271/how-to-run-windows-software-on-ubuntu-with-wine/)
* [Use Wine to run Windows software on Linux](http://www.linuxuser.co.uk/tutorials/use-wine-to-run-windows-software-on-linux)
* [Wine 1.7.9 Released – Install on Ubuntu 13.04/12.10/12.04/11.10 and Linux Mint 16/13](http://www.tecmint.com/install-wine-on-ubuntu-and-linux-mint/)
* [Ubuntu Tips: How To Use Windows Applications in Linux Desktop Distributions](http://www.thegeekstuff.com/2009/08/ubuntu-tips-how-to-use-windows-application-in-linux-desktop-distributions/)
* [How to install Windows programs in Linux using Wine](http://www.simplehelp.net/2007/05/18/how-to-install-windows-programs-in-linux-using-wine/)
* [Running Microsoft DOS and Microsoft Windows Software on Linux](http://www.yolinux.com/TUTORIALS/LinuxTutorialRunMicrosoftExe.html)
* [winetricks](http://wiki.winehq.org/winetricks)

Getting TurboTax or Quicken Working

* [History of TurboTax Support via Wine on Linux](http://appdb.winehq.org/objectManager.php?sClass=application&iId=623)
* [Solved-Quicken 2011 Working on Linux](http://blog.jdpfu.com/2010/11/29/solved-quicken-2011-working-on-linux)

Getting VirtualBox Working

* [Using Windows XP in VirtualBox on Linux](http://www.linuxjournal.com/content/using-windows-xp-virtualbox-linux)
* [Install windows 7 through virtual box in ubuntu 12.04](http://askubuntu.com/questions/187424/install-windows-7-through-virtual-box-in-ubuntu-12-04)
* [How to Install Windows XP on Ubuntu with VirtualBox](http://www.wikihow.com/Install-Windows-XP-on-Ubuntu-with-VirtualBox)
* [Install Windows 8.1 on Oracle VirtualBox](http://betanews.com/2013/10/21/install-windows-8-1-on-oracle-virtualbox/)
* [Windows 8.1 in VirtualBox](http://www.geekthis.net/blog/95/windows-81-in-virtualbox)
* [VirtualBox/Installation](https://help.ubuntu.com/community/VirtualBox/Installation)
* [Starting VirtualBox](https://www.virtualbox.org/manual/ch01.html#idp51679504)

Shared Folders Within VirtualBox

* [How to share folders between guest and host in VirtualBox](https://www.techrepublic.com/article/how-to-share-folders-between-guest-and-host-in-virtualbox/)
* [Share Local Drives and Folders using Oracle VM VirtualBox with a Guest Windows OS](https://operating-systems.wonderhowto.com/how-to/share-local-drives-and-folders-using-oracle-vm-virtualbox-with-guest-windows-os-0126237/)
* [HOWTO: Install Linux Guest Additions + Xorg config](https://forums.virtualbox.org/viewtopic.php?f=3&t=15679)

VirtualBox Guest OS Access to USB

* [How to Access USB from VirtualBox Guest OS](https://www.linuxbabe.com/virtualbox/access-usb-from-virtualbox-guest-os)
* [How to enable USB in VirtualBox](https://www.techrepublic.com/article/how-to-enable-usb-in-virtualbox/)
* [VirtualBox USB capture issue (Windows 7 Host/Guest)](https://superuser.com/questions/1136607/virtualbox-usb-capture-issue-windows-7-host-guest)



[01]:http://en.wikipedia.org/wiki/Virtualization
[02]:https://turbotax.intuit.com/
[03]:http://appdb.winehq.org/objectManager.php?sClass=application&iId=623
[04]:https://www.virtualbox.org/
[05]:https://blogs.oracle.com/wbays/entry/turbotax_on_virtualbox_problem_solved
[06]:http://www.winehq.org/
[07]:http://en.wikipedia.org/wiki/Multi-booting
[08]:http://wiki.winehq.org/winecfg
[09]:https://ttlc.intuit.com/questions/1899606-error-we-can-t-install-turbotax-on-your-computer-just-yet
[10]:http://superuser.com/questions/476872/installing-net-4-0-framework-on-wine-using-winetricks
[11]:http://www.winehq.org/pipermail/wine-bugs/2012-January/308034.html
[12]:http://wine.1045685.n5.nabble.com/Bug-29666-New-TurboTax-2011-fails-to-install-td5161768.html
[13]:http://www.linuxjournal.com/content/using-windows-xp-virtualbox-linux
[14]:http://www.lifehacker.com.au/2013/10/virtualbox-4-3-adds-windows-8-1-support/
[15]:https://www.virtualbox.org/wiki/Linux_Downloads
[16]:http://www.geekthis.net/blog/95/windows-81-in-virtualbox
[17]:https://support.apple.com/ipod/ipod-nano
[18]:https://www.linuxbabe.com/virtualbox/access-usb-from-virtualbox-guest-os
[19]:https://www.apple.com/itunes/download/
[20]:https://support.apple.com/en-us/HT201253
