
* [How to Watch Amazon Prime Video on Your TV With Chromecast](https://www.makeuseof.com/tag/how-to-watch-amazon-prime-on-tv-chromecast/)
* [Uninstalling Linux Apps In Chrome OS May Be Simplified Soon](https://www.androidheadlines.com/2018/10/uninstalling-linux-apps-in-chrome-os-may-be-simplified-soon.html)

* [Chrome OS now allows virtual desktops](https://www.techradar.com/au/news/chrome-os-now-allows-virtual-desktops)
* [How to Use Virtual Desktops on Chrome OS](https://www.howtogeek.com/437202/how-to-use-virtual-desktops-on-chrome-os/)

Status: draft
Title: Installing Linux on Chromebook
Date: 2100-01-01 00:00
Category: Software, Hardware
Tags: Chrome, Chromebook, Crouton, Linux
Slug: installing-linux-on-chromebook
Author: Jeff Irland
Image: toshiba-chromebook-linux.jpg
Summary: The price of the Chromebook makes it a very attractive, assuming you can get your favorite tools working on it.  Well, you can install Linux, along with all the tools Linux brings to your development needs. This post is a somewhat disjointed dump of things that I’ve done to create a comfortable working envirnment on a Chromebook.


# Background
<a href="http://www.pcmag.com/article2/0,2817,2470486,00.asp">
    <img class="img-rounded" style="margin: 0px 8px; float: left" title="This Chromebook 2 is thin and light, which is pretty impressive, considering it has a 13.6-inch HD display. The plastic chassis measures just 0.76 by 12.76 by 8.4 inches (HWD) and weighs only 2.95 pounds." alt="chromebook picture" src="{filename}/images/toshiba-chromebook-linux.jpg" width="250" height="250" />
</a>
I wanted to get a Linux laptop for some lightweight development
and remote login into my home Linux box,
but I couldn't justify the price tag for my limited needs.
Why would any any developer buy a Chromebook?
“It’s just a web browser,” was the closing remark of every Chromebook review.
We'll you can load them with Linux, and equally important,
[Chromebook's are cheap & popular][31]
and can be purchased for $300 or less
In fact, [Amazon's top three computers sold over the 2014 Christmas season were Chromebooks][32].
Check out the article ["Linux apps on Chrome OS – an overview of its biggest feature since Android apps"][99]
for information on the early days of Google's Crostini Project.

Knowing I could installing a traditional Linux environment on a Chromebook,
so in 2015 I got myself a [Toshiba CB35-B3340 Chromebook 2][01] with 4G of memory and 16G drive
(see a review [here][38]).
I used Crouton and worked well for me but I begain to run low on disk space.
So in 2018, I replaced this with the [Acer Chromebook 14 (CB3-431)][81] with its 32G SSD drive,
which I believe is the minimum you should have if your installing Linux.
For the Acer, I used Crostini (the Google supported alternative to Crouton)
since [Google's Crostini supported it][101]
(and [**not**][119] the Toshiba Chromebook 2).

Note that these Chromebooks uses an Intel process,
which maybe [important for installing Linux][04],
but it appears the [ARM process is now supported][82].
Chromebook isn't a PC replacement, but for many users, a [better alternative][23].
See the [Chrome Help Center][21] and [Chromebook Help Center][22] for more information.

Conveniently, Chromebooks have a [Developer Mode][58],
which lets you bypass all the normal checks and balances that Google
use to ensure that rogue software does not run on Chrome OS devices.
After you have switched into developer mode,
your Chromebook will run whatever you want it to.
You can open up a Linux shell in a browser tab
([Chromebooks are running a cut down Linux distribution][39] after all)
simply by hitting `Ctrl`+`Alt`+`T` on the keyboard,
or bring ups a [crosh shell][33].

Installing a traditional Linux environment on your Chromebook is a quick and easy
because the Chrome OS is a Linux-based operating system.
You can install an alternative Linux environment and get a fully-fledged Linux desktop
along side Chromebook.
There are four main ways to install a traditional Linux environment on your device:

1. The traditional dual-boot environment using [ChrUbuntu][02] or [GalliumOS][88].
So here you have two operating systems, but only one of them can be executing at any one time.
1. [Boot from USB][06] option will allow you to activate booting from USB devices.
This is essentially the same as the first method but not booting from the hard drive.
1. Run Linux along side of Chrome OS in a [chroot][74] environment using [Crouton][03].
In this case, you have two operating systems concurrently operating.
1. And maybe the best answer is [Crostini][10]. Think of this as a more secure and Google supported version of Crouton.

### Crouton
[Crouton][103] appears to be the first well received & supported way of running another OS on top of Chrome OS.
Crouton [chroot environment][75] to run both Chrome OS and Ubuntu at the same time.
Chroot is an operation that changes the apparent root directory
for the current running process and their children.
A program that is run in such a modified environment cannot access files and commands
outside that environmental directory tree.
This modified environment is called a "[chroot jail][76]".
Crouton is quite impressive how easy it is to use and
comes with a [rich set of options][51].
(By the way, there happens to be a way to merging ChromeOS and Android
via [ARC Welder][54].)

### Crostini
[Project Crostini][104] appears to be Google's response the
grass root community of Chromebook user's effort to support Linux, such as Crouton.
In May of 2018, [Google announced Chrome OS is getting Linux support][97].
As a result, Chromebooks will soon be able to run Linux apps and execute Linux commands.
A preview of Linux on the Pixelbook will be released first, with support for more devices coming later.
Google’s goals appears to be make it possible for developers to code on Chromebooks.

Beginning with Chrome OS 69, [Linux for Chromebooks][100]
is supported on the stable channel on select devices.
This allows developer to run Linux applications, editors, and other command-line tools
on the Chromebook.
After setting up, users will have access to a Terminal and be able to install apps or packages.

It would be best if Linux's apps running on top of the Chrome operating system
was support without the need for a hack like Crouton
(To run Linux, you must run in "Developer Mode",
which makes the Chromebook no longer the “secure” machine that it was designed to be).

# Quick Chromebook Introduction
You can find thousands of apps for the Chromebook on the web
to do things like create documents, edit photos, and listen to music in the browser.
Google has provided a recommendation list at the sites like
"[Find apps for your Chromebook][26]",
"[10 Top Tweaks and Tips for Chromebook][27]",
"[Chromebook tips and tricks: Getting the most out of your Chrome OS machine][29]",
"[15 essential Chrome OS keyboard shortcuts][30]".
And the there many handy features/capabilities like
"[How to prevent a Chromebook from running out of memory][83]",
"[Now you can unlock Chrome OS with a PIN code][84]",
"[Unlock your Chromebook with your Android phone][85]",
"[Android apps are now available on these Chromebooks][86]",
"[How To Run Android Apps on Your Chromebook][87]".

## Chromebook as a Development Environment
I'm not the first to consider the Chromebook as an alternative development environment.
In fact, Martin Malinda's posting
Ultimate guide for Web Development on Chromebook —
[Part 1: Crouton][55] and
[Part 2: ChromeOS tricks and workflows][56]
and Joe Marini's [Tools for Developing on ChromeOS][57]
are a good read to understand how to make the Chromebook a powerful developers tool.

Keep in mind that the Chrome browser comes pre-packaged with
Chrome Developer Tools ([DevTools][62] for short),
which is a set of web authoring and debugging tools built into Google Chrome.
I will not cover that here, but you can learn more about it at
[Code School][63] for free.
DevTools can also optimize your workflow and make life easier.

## Working with Chromebook / Chrome Browser
Switching from a PC to a Chromebook comes with a few adjustments.
For one, you’ll need to have access to a WiFi signal for most Chrome apps to function.
Also, the Chromebook doesn't have a standard PC keyboard (e.g. no Page Up / Down keys).
For a fuller list of shortcuts,
see "[Cheatsheet: Chromebook and Chrome OS Keyboard Shortcuts][XXX]".

There are several features that are not available from the Chrome Menu,
which you can access only from a special URI scheme to
display some special pages that show information about memory usage, cached files, plug-ins and more.
These commands start with an `about:` or `chrome://`.
Check out "[20+ Google Chrome's about: and chrome:// commands][25]" more information,
or to get a full listing of these commands,
put "`about:about`" in the Chrome browsers commandline.
There is even [experimental features][28] offered by Chrome via `chrome://flags`.

## Working With Chrome OS
Chromebooks are foundationally different from traditional PCs,
and there are a [lot of misconceptions][66]
about how they work and what they can and cannot do.
The fact is, Chromebooks with its Chrome OS are [very capable machines][67].
First of all, [Chrome OS][68] (designed by Google) is based upon the Linux kernel.
This gives the OS a great number of things it can exploit.

In this section, I'm going to touch on only those things most relievent to
installing Linux but for some additional Chrome OS commands, tips, and tricks,
check out the following:

* [Chrome Story][37]
* [100 Tips for Google Chrome][41]
* [Getting Started with your Chromebook][35]
* [100 Best Chromebook Tips, Tricks and Time Savers][36]
* [11 tips to get the most out of your Chromebook][50]

## Crosh
[Crosh][89] is a shell environment known as “Chrome Shell”
that is provided with Chrome OS.
Crosh allows users to run [several commands][65] directly from Chrome OS.
Developer mode is not required to use crosh.
The vast majority of linux commands are locked down inside crosh
unless you are in [developer mode][69].

Crosh can be accessed by pressing `Ctrl`+`Alt`+`T` on the keyboard.
This will open a crosh terminal in a new tab of the Chrome browser.
You can actually create as many shells as you want.
Just hit `Ctrl`+`Alt`+`T` again and a second shell will be opened.
**NOTE:** There is also the [Crosh Window][90] Chrome browser extention that doesn't use a tab
but opens a window outside of the browser.

`crosh` has two separate versions of help.
you can access basic help in the crosh window by simple typing `help`.
This will give you a list of commands that can be used inside crosh.
To get a list of the more advanced commands type `help_advanced`.
To access further functionality from crosh such as as the Bash Shell,
Chrome OS needs to be in [developer mode][69].

There are several commands included in Chrome OS’s crosh shell.
You'll find many of them documented in these articles:

* [25 Helpful Chrome OS Shell (crosh) Commands](http://krypted.com/unix/helpful-chrome-os-shell-crosh-commands/)
* [10+ Commands Included In Chrome OS’s Hidden Crosh Shell](http://www.howtogeek.com/170648/10-commands-included-in-chrome-oss-hidden-crosh-shell/)
* [Customize Chromebook Chrosh Shell Environment](https://gist.github.com/aaronhalford/a009bc73498407ae80e2)
* [10 Commands In Chrome’s Crosh Shell](http://efytimes.com/e1/fullnews.asp?edid=124113)
* [27 Handy Chrome OS Commands to Run in Crosh](https://beebom.com/chrome-os-commands-run-crosh/)

Crosh even supports full-blown `bash` shell with ssh-agent and Vim.
To get Vim working, do the following:

```
CTRL+ALT+T
crosh> shell
chrosos@localhost / $ echo $SHELL
/bin/bash
chrosos@localhost / $ vim
```

The problem with running crosh in the browser is that if you want to use shortcuts like `Ctrl`+`w`
(in Vim, for example), Chrome will take the default action associated to that shortcut.
One solution is to open crosh as a window.

You can also put crosh in a window, independent of your Chrome browser.
You can do this via a Chrome app called [Crosh Window][33]
(You must have [Secure Shell][34] installed for this to work).
When clicked, this app opens a new crosh window without any chrome browser,
but pressing `Ctrl`+`Alt`+`T` still brings up crosh in the Chrome browser.

# How to Lock Your Chromebook
The long battery life on a Chromebook means you can close the lid,
put it to one side, return a few days later, open and resume.
You don’t even have to log back in,
and givem my lengthy passwords Google Account password is nice.
But the benefit of this is outweighed by good security/privacy practice.

* [How To Make Your Chromebook Ask for Password on Wake](https://www.omgchrome.com/make-chromebook-lock-lid-closed/)

## Chromebook Screen Lock
Chromebook Screen Lock option

* [Unlock your Chromebook with your Android phone](https://support.google.com/chromebook/answer/6070209?hl=en)

## Chromebook Smart Lock
You can use the [Smart Lock feature][116] on your Android phone
to enable Smart Lock on your Chromebook.
With this feature turned on,
as long as your phone is in Bluetooth range,
instead of needing to use your Google account password (in my case, long and complex)
to unlock your Chromebook you can click an icon to sign in via your phone's credentials.
Only caveat is both the phone and the Chromebook have to be connected to the Internet
so they can communicate through your Google account.

* [How to unlock your Chromebook using your Android phone with Smart Lock](https://www.androidcentral.com/unlock-your-chromebook-using-your-android-phone-smart-lock)

## Google Assistant on a Chromebook
* [How to enable Google Assistant on a Chromebook](https://www.xda-developers.com/enable-google-assistant-chromebook-chrome-os/)
* [Google Assistant Arrives In Chrome OS Dev Update](https://chromeunboxed.com/news/chromebook-developer-channel-google-assistant)

## ChromeOS Containers
* [Getting Started with ChromeOS Containers via Project Crostini](https://kmyers.me/blog/chromeos/getting-started-with-chromeos-containers-via-project-crostini/)

-----

* [What is Crostini](https://www.reddit.com/r/Crostini/wiki/getstarted/crostini-setup-guide)
* [Redditt/r/Crostini Wiki](https://www.reddit.com/r/Crostini/wiki/index#wiki_how-to_pages)
* [Tutorial: Backup your Chrome OS Crostini Container to a remote server](https://kmyers.me/blog/chromeos/tutorial-backup-your-chrome-os-crostini-container-to-a-remote-server/)

# Crostini
Take a close look at Google's [Crostini project][104],
and it reveals that [Crostini runs a Linux VM (virtual machine) on Chrome OS][102].
So to run the current version of Crostini requires a
Chromebook with [VT-x and AMD-V support][98] (hardware virtualization),
and not all have a CPU with that support.
Crostini also make use of a great little Chrome OS extension Xiwi.
Xiwi allows you use that OS in a browser window inside of Chrome OS.
It's not required to put the Chromebook into Developer Mode to use Crostini.

Check out these sources to find out more about Crostini:

* [Official Chromebook Linux Support is here! Crostini Running on ARM and Intel](https://www.youtube.com/watch?v=tsE9ZoZ_KN8)
* [Video: How Project Crostini works to run Linux apps on Chrome OS](https://www.aboutchromebooks.com/news/video-how-project-crostini-works-run-linux-apps-on-chromebooks/)
* [Here’s a list of Chromebooks with Linux app support](https://www.xda-developers.com/chromebooks-linux-app-support/)
* [Some Chromebooks slated to never receive Linux app support, here’s the full list](https://9to5google.com/2018/11/01/chromebooks-to-never-receive-linux-full-list/)
* [Reddit Crostini Wiki](https://www.reddit.com/r/Crostini/wiki/index)

## The Linux Install with Crostini
Crostini allows a full Linux virtual machine environment to run in safe,
sandboxed containers within Chrome OS.
There’s no need to use the less secure Developer Mode, with Crouton, for this.
To run the Linux VM in a Chrome OS container, you have to currently:

1. Have a [compatable Chromebook][107] (e.g. Pixelbook, Acer Chromebook 14)
1. Be on the [Chromebook Beta Channel][106]
1. Enable the experimental `#enable-cross-container` flag
1. Turn on the Linux (Beta) extension

The details for these steps is provide below.

At the conclusion of this, you will have Chrome OS hosting a [Termina Virtual Machine (VM)][113]
running a [Debian Stretch based container][114].
You can start installing software using the [package management tools][115]
included in Debian by utilizing the provided Terminal application.

>**Note:** You can move to channels with newer versions of Chrome OS
>(e.g. Stable to Beta as I'm doing) without powerwashing your Chromebook.
>However, if you want to move back to a more stable channel (e.g. Beta to Stable),
>you will be forced to [powerwash your system][43]
>(aka whip the disk clean and do a freash install).

Check out these sources to find out more details on installing Crostini and running Linux:

* [How to install Linux apps on your Chromebook](https://www.androidcentral.com/how-install-linux-apps-your-chromebook)
* [First look: Running full Linux apps on a Chromebook with Project Crostini](https://www.aboutchromebooks.com/news/first-look-running-full-linux-apps-on-a-chromebook-with-project-crostini/)
* [How to Set Up and Use Linux Apps on Chromebooks](https://www.howtogeek.com/363331/how-to-set-up-and-use-linux-apps-on-chrome-os/)
* [Another Milestone Achieved: Run Linux Apps on a Chromebook](https://www.linuxinsider.com/story/85639.html)
* [How to Get Access to Experimental Features in Chrome (and on Chromebooks)](https://www.howtogeek.com/179070/how-to-get-access-to-experimental-features-on-your-chromebook-or-just-in-chrome/)

### Step 0: Checking Compatibility - DONE
[Linux support, via Crostini, is available in the latest stable version of Chrome OS][105],
including my [Acer Chromebook 14 CB3-431][1010].
Google doesn’t seem to have published a definitive list of supported Chromebooks,
but [here’s one from XDA Developers][99].

The first step to get ready for Crostini support of Linux.
For this, you need to get the right version of Chrome.
The simplest way to check whether your Chromebook meets this criteria is to open the
**Chrome Menu** (i.e. the three dots, top right), choose **Help** and **About Chrome OS**,
then make sure you’re on version 69 or later.
If not, hit the **Check for updates** button, let the image download
(I updated to verison 70.0.3538.58) and reboot as required.

### Step 1: Modify Chromebook Channel and Settings - DONE
Next we switch Chromebook channels and enable experimental features.
Google and others provides documetnation on how to [switch between Stable/Beta/Dev channels][106]
and [experimental features][108].
You need to do the following (**do not** need to put the Chromebook into developer mode):

1. [Switch on the Beta Channel][109] -
Open the **Chrome Menu** (i.e. the three dots, top right), choose **Help** and **About Chrome OS**
On the same Settings page, click on **Detailed build information**.
The **Channel** needs to be set to **Currently on beta** and use the **Change channel** button to do so.
1. [Restart to Update][112] -
Go back to the **Chrome Menu** (i.e. the three dots, top right),
choose **Help**, **About Chrome OS**, and click on **Restart**.
1. [Enable the Crostini Feature][110] -
Within a Chrome browser tab, enter `chrome://flags/enable-experimental-crostini-ui#enable-experimental-crostini-ui`
and for **Experimental Crostini** select **Enable** from the pulldown button.
Then select the **RESTART NOW** at the bottom of the page.
1. [Turn on the Linux (Beta) Extension][111] -
Next go back to **Chrome Menu**, choose **Settings**, and from the **Settings** menu
select **Linux (Beta)** (or just scroll down the page).
Select **Turn on** and then **Install**.
This will download the virtual machine, container, etc.

Once you click the **Install** button, this gets everything rolling.
It will take a few minutes for the processing to complete,
but when it’s finished, a Linux Shell Terminal will start automatically
(If it doesn't start, [open your app drawer and click the Terminal icon][118]).

You can also start Linux via the command line.
Open Chrome OS' built-in shell, crosh; then run this shell command `vmc start termina`
(yes, leave the 'l' off on the word "terminal").

### Step X: Install Packages
With the prep work done, it's finally time to install Linux applications.

```bash
# upgrade all your packages
sudo apt-get -y update && sudo apt-get -y upgrade

# list the linux kernal version (appears to be specific to chromebook)
$ uname -r
4.14.67-07156-gc116f2c8c400

# list all available time zones and show new york
$ timedatectl list-timezones | grep New_York
America/New_York

# set time zone
sudo timedatectl set-timezone 'America/New_York'
```

```bash
# install some basic x windows system apps
sudo apt-get install x11-apps

# test x windows system with these old toys
xclock &
xeyes &
```

To install Gnome Software Center

```bash
# install gnome software center
sudo apt-get install gnome-software gnome-packagekit
```

Once the process is finished,
you'll see a new item in your Chromebook's app launcher called "Software."
When you first open the Software Center,
you might find very little on its virtual shelves.
You can try rebooting your Chromebook to see if that fixes things,
force an update via `sudo apt-get update && sudo apt-get dist-upgrade` and then reboot your Chromebook.

Now install some basic tools you'll need:

```bash
# first install Python packages
sudo apt-get install python python-dev libjpeg-dev libfreetype6-dev python-setuptools python-pip
pip install virtualenv virtualenvwrapper

# package management tools
sudo apt-get install software-properties-common

# first install Python packages
sudo apt-get install python python-dev libjpeg-dev libfreetype6-dev python-setuptools python-pip
pip install virtualenv virtualenvwrapper

# some X Window utilities
sudo apt-get install x11-apps x11-xserver-utils xterm wmctrl

# other handy tools
sudo apt-get install sendmail gnome-terminal jq

# secure hash algorithms (SHA) tools, specifically SHA256
sudo apt-get install hashalot

# general development tools
sudo apt-get install markdown git vim vim-gtk libcanberra-gtk-module libcanberra-gtk3-module
sudo apt-get install microcom screen
sudo apt-get install build-essential i2c-tools libssl-dev
```

Installing tools and configuration parameter for your environment:

```bash
# install tools for vim text editor
cd $HOME
git clone https://github.com/jeffskinnerbox/.vim.git
ln -s $HOME/.vim/vimrc $HOME/.vimrc
mkdir $HOME/.vim/backup
mkdir $HOME/.vim/tmp

# install tools for bash shell
cd $HOME
git clone https://github.com/jeffskinnerbox/.bash.git
rm .bashrc .bash_logout
ln -s $HOME/.bash/bashrc $HOME/.bashrc
ln -s $HOME/.bash/bash_login $HOME/.bash_login
ln -s $HOME/.bash/bash_logout $HOME/.bash_logout
ln -s $HOME/.bash/bash_profile $HOME/.bash_profile
ln -s $HOME/.bash/dircolors.old $HOME/.dircolors

# source the resource file so its currently active
source ~/.bashrc

# install X configuration files
cd $HOME
git clone https://github.com/jeffskinnerbox/.X.git
ln -s $HOME/.X/xbindkeysrc $HOME/.xbindkeysrc
ln -s $HOME/.X/Xresources $HOME/.Xresources
ln -s $HOME/.X/xsessionrc $HOME/.xsessionrc
```

Installing tools for python virtual environment (i.e. pyenv):

```bash
#messme "You'll need to provide root password when prompted.\n"

# install python virtual env scripts
#pip install virtualenvwrapper

# copy scripts for python virual env
#sudo cp ~/.bash/virtualenvwrapper.sh ~/.bash/virtualenvwrapper_lazy.sh /usr/local/bin

# execute the pyenv installer
curl -L https://raw.githubusercontent.com/pyenv/pyenv-installer/master/bin/pyenv-installer | bash

# update your profile / bashrc with this
#export PATH="/home/jeff/.pyenv/bin:$PATH" >> $HOME/.bashrc
#eval "$(pyenv init -)" >> $HOME/.bashrc
#eval "$(pyenv virtualenv-init -)" >> $HOME/.bashrc

# install python 3.6.4 via pyenv
pyenv install 3.6.4

# assure the pyenv shims are updated
pyenv rehash
```

## Step X: Download Anaconda
Anaconda is an open source package that will let us run Python. Go to the website and download the Linux version.

Make sure to click the button for the 64-BIT INSTALLER so we can install Python 3.7. This might take a while to download depending on your internet connection.

* https://wsvincent.com/install-python3-chromebook/

### Step X:
* https://www.reddit.com/r/Crostini/wiki/index#wiki_how-to_pages
* https://www.reddit.com/r/Crostini/wiki/getstarted/crostini-setup-guide

### Step X:
### Step X: Restarting Crostini Terminal
* [Crostini Terminal app doesn't work after rebooting](https://bugs.chromium.org/p/chromium/issues/detail?id=840151)

### Step X: How to Reset Everything
* [How to reset everything](https://www.reddit.com/r/Crostini/comments/8ddx2l/question_how_to_reset_everything/)

### Step X: Backup your Chrome OS Crostini Containers
* [Tutorial : Backup your Chrome OS Crostini Container to a remote server](https://kmyers.me/blog/chromeos/tutorial-backup-your-chrome-os-crostini-container-to-a-remote-server/)

### Step X: How to Install and Use the Gnome Software Center on Chrome OS
* https://www.howtogeek.com/363331/how-to-set-up-and-use-linux-apps-on-chrome-os/

Installing the Gnome Software Center
is no different than installing any other app with `apt-get`.
Type the following command:

```bash
# install gnome software center
sudo apt-get install gnome-software gnome-packagekit
```

Again, hit “Y” when prompted to install the software. It will download all the necessary files to install the Software Center, which will then show up as “Software” in the app drawer.

### Step X:
### Step X:
### Step X:

### Step X: Startup After Shutdown

### Step X: How To Reset Crostini to Default
* https://www.reddit.com/r/Crostini/wiki/getstarted/crostini-setup-guide

### Folder Sharing
* [Google Will Improve Linux in Chrome OS with Folder Sharing and More](https://www.extremetech.com/computing/279219-google-will-improve-linux-in-chrome-os-with-folder-sharing-and-more)

-----

# Chrome OS v69 stable introduces Linux app compatibility
Starting with version 69, Chrome OS users can use Linux applications. This is a game changer for Chrome OS, as it opens a massive catalog of available software.
Chrome OS 69 hit the stable channel around mid-September 2018.

1. To get started, jump into your device’s Settings menu by clicking the system tray and then the “Settings” button.
1. In the Settings menu, scroll down to the bottom. There should be an entry titled “Linux (Beta).” If it’s there, you’re in luck—your device supports Linux apps. Click the “Turn On” button to get everything rolling.
1. A new window will open that lets you set up Linux. Click the “Install” button to get started installing the Terminal.
(It will take a few minutes for the process to complete, so just hang out for a few while it does its thing. When it’s finished, the Terminal will start automatically.)
1.

-----

# Crouton
The Crouton script allows you to install components of some Linux distributions,
right inside Chrome OS — no need for dual-booting here.
Crouton stands for Chromium OS Universal Chroot Environment
and can be found on [github with loads of documentation][03] and a [wiki][15].
Using crouton, one can launch most of Linux applications inside a Chrome OS window,
Android Studio included.

By default, Ubuntu 16.04 LTS is installed.
[xfce][47] is the desktop environment that will be used by default
(not mandatory, but handy for the next step, plus you may need it for other Linux-related things).
There are [extension][12] will bring clipboard synchronization
and some other integrations between the chroot and Chrome OS.

One of the most impressive things that you can do with Crouton is run native Linux apps,
either in a window of their own, or as a browser tab, using [`xiwi`][18].
Xiwi is a [X.org][70] X11 backend running unaccelerated integration with Chromium OS.
With `xiwi` (X11 in a Window) you create a window in Chrome
and channeling a virtual X11 framebuffer over to it.
You can run a X11 desktop environment or
you can launch apps on an individual basis in a Chrome OS window or tab.
You can do things like running the GIMP image editor as a Chrome browser tab.
This is literally as simple as typing `xiwi -t gimp` within crosh,
at the Linux command line (more about this below).

Check out these sources to find out more about Crouton:

* What is Crouton
    * [Crouton]( https://chromebook.guide/crouton/)
    * [Crouton Command Cheat Sheet](https://github.com/dnschneid/crouton/wiki/Crouton-Command-Cheat-Sheet)
    * [Chromebook basic tweaks and tips for Crouton](https://fuyuko.net/chromebook-basic-tweaks-and-tips-for-crouton/)
* Installing Crouton and Linux
    * [Tutorial: Install Ubuntu on a Chromebook](https://insights.ubuntu.com/2018/01/30/tutorial-install-ubuntu-on-a-chromebook)
    * [How to Install and Run Linux on a Chromebook](https://www.lifewire.com/install-linux-on-chromebook-4125253)
    * [How to install Linux on a Chromebook (and why you should)][103]
* Crouton Extensions
    * [Crouton Integration](https://chrome.google.com/webstore/detail/crouton-integration/gcpneefbbnfalgjniomfjknbcgkbijom)
    * [Crouton Clipboard]( https://chrome.google.com/webstore/detail/crouton-clipboard/jipofmbanedhjnpooojdeeddanhfljif)

## Update a Crouton Chroot
When a new version of Crouton comes out,
the software in your chroot will be outdated.
It won’t automatically update itself, but you can update it fairly quickly.

```bash
# enter your chroot and run the following command.
croutonversion -u -d -c

# xenial is the name of your chroot
sudo sh ~/Downloads/crouton -u -n xenial
```

## Managing Crouton
Unlike the Chromebook itself,
whe a new version of Crouton comes out,
the software in your chroot will not automatically update itself.
To update it, enter your chroot and run the following command.
That means this command must be run from that Crouton Linux system:

```bash
croutonversion -u -d -c
```

Next, exit the chroot and run the following command from the Chrome OS shell,
replacing “name” with the name of your chroot.
If you didn’t specify a name,
it’s probably the name of the release you installed — for example, “xenial”, in my case.

```bash
# xenial is the name of the Linux version to be installed
# add -e to the command to encrypt your chroot
sudo sh ~/Downloads/crouton -u -n xenial
```

You can delete the chroot via:

```bash
# delete a chroot
sudo delete-chroot <chroot-name>
```

The article "[How to Manage the Crouton Linux System on Your Chromebook][24]"
gives some additional pointers on manging your Crounton-enabled Chromebook.
It covers things like backing up the chroot, creating multiple chroots,
deleting a chroot, etc.

## Switching Between Crouton and ChromeOS
You can switch between your Crouton session and ChromeOS by using four keys:
`CTRL`+`ALT`+`SHIFT`+`→` (the left or right arrow key on the top row of your keyboard).
Left or right arrow will toggle you between Crouton / ChromeOS session.

## Printing with Chromebook
So how do you print on a Chromebook?
You use [Google Cloud Print][59].
Some new printers support Google Cloud Print,
so you can connect them to your network and easily print to them.
If you have an old printer connected to a Windows or Mac computer,
you can use the Google Cloud Print Connector feature to make an older printer
accessible to Google Cloud Print.
Don’t try to plug your printer directly into your Chromebook, though — that won’t work.

## Chromebook Backup
The [Github Wiki for Crouton][49] provides a very complete description of making backups.
The command below should get started quickly on do a Crouton chroot backup,
but its wise to read the wiki.

```bash
# perfrom a back up of the chroot
sudo edit-chroot -b name

# restore
sudo edit-chroot -r name
```

These command creates a tar archive in the current directory from which
the command is executed.
When doing the backup, enter crosh and shell,
and make sure no other chroot intances are running.

*[An Official Google Drive for Linux is Here, Sort Of — Maybe This Is All We’ll Ever Get](http://www.howtogeek.com/196635/an-official-google-drive-for-linux-is-here-sort-of-maybe-this-is-all-well-ever-get/)
*[Using Google Drive from the Linux Command Line](http://linuxnewbieguide.org/?p=1078)
*[GDRIVE: A SIMPLE GOOGLE DRIVE CLI CLIENT (CROSS-PLATFORM)](http://www.webupd8.org/2014/09/gdrive-simple-google-drive-cli-client.html)
*[How to sync Google Drive from the command line on Linux](http://xmodulo.com/how-to-sync-google-drive-from-the-command-line-on-linux.html)

Push the file to Google Drive
http://www.howtogeek.com/196635/an-official-google-drive-for-linux-is-here-sort-of-maybe-this-is-all-well-ever-get/

https://developers.google.com/drive/v2/reference/files/insert

```bash
# move to the directory where you want the backup saved
cd ~/Downloads

# backup your chroot files
sudo edit-chroot -b xenial

# move the tar file to GDrive
xxx
```

You can restore the backup later with the following command:

```bash
# restore your backup
sudo edit-chroot -r xenial
```

Or perhaps you’ve powerwashed your Chromebook and you want to get
your customized Linux environment back.
You can run the following command while installing Crouton.
The Crouton installer script will restore your chroot
from the backup file you provide,
so replace `backupfile.tar.gz` with the name of the backup file you want to restore.

```bash
# restore backup to a powerwashed Chromebook
sudo sh ~/Downloads/crouton -f backupfile.tar.gz
```

# The Linux Install with Crouton
I choose to use the [Crouton method][03], which is a set of scripts,
to use the Linux command chroot ([Change Root][13]) to simultaneously
run a Linux operating system alongside Chrome OS.
Chroot was meant for Linux administrators to easily fix problems while running as the root,
superuser, without logging off the current user.
Here, it's being used to run a primitive form of container.
It has neither the sophistication of a [virtual machine (VM)][40]
or an advanced container such as [Docker][52] or [Vagrent][53].
What chroot has going for it is that it's very lightweight
and is present on almost all versions of Linux (including Chrome OS).
Its downside is that in this mode users have a great deal of power over their system,
so be careful not to do foolish things with your Chromebook.

I'm also going to install two different X window managers,
[Xfce][47] and [i3][44].
While both are not necessary, they are very different and suited for different needs.
You have a command line choose for which one you wish to start with Linux.

If you need to know what Crostini can and can't do for developing before purchasing, see the open-source Chromium project page on containers and Crostini, which should answer all the questions you may have on this subject. - https://chromium.googlesource.com/chromiumos/docs/+/master/containers_and_vms.md

* The **offical** Ubuntu on Chromebook - [How to install Ubuntu Linux on a Chromebook: An official Canonical tutorial](https://betanews.com/2018/01/30/install-ubuntu-chromebook/)
* [Running Linux on a Chromebook: How to Install & Get the Best of Both Worlds](https://www.techspot.com/guides/1509-how-to-run-linux-chromebook/)
* [How to install Linux on a Chromebook (and why you should)][103]
* [Chrome OS Stable Channel Gets Linux Apps](https://www.linuxjournal.com/content/chrome-os-stable-channel-gets-linux-apps)

## Step 0: Inttialize Your Chromebook - DONE
If your dealing with a new Chromebook or an established Chromebook,
make sure to do the following:

* **Get WiFi Connectivity -**
Make sure you have established an initial Google account
and set up the WiFi connectivity.
* **Backup Your Chromebook Data -**
Since all of your data is synced to Google Server,
you actually don’t have to worry about losing any data.
The only data that you must make a back-up of is the `Download` folder
because the content of this folder is not synced.
* **Backup Your Chromebook Environment-**
Once you have taken the back-up,
it’s also a fail-safe plan to create a restore USB of Chrome OS,
in case something goes badly wrong and you need to re-install Chrome OS.
Install Chromebook recovery utility from the Chrome web store.
Go to the [Chrome Web Store][07]
and install the [Chromebook Recovery Utility][08].
Open the app and follow the instructions to create the recovery drive.
All you need is working Internet and a USB drive with at least 4GB space.

## Step 1: Putting the Chromebook into Developer Mode - DONE
Putting Chromebook into “[Developer Mode][19]” will give you full root access,
including the ability to modify your Chromebook’s system files.
[Entering Developer Mode is a little different depending on the manufacturer][16].
(remember Chrome OS is a specific build by the computer manufacturer).
We'll use it to install a full Linux system with Crouton.
The article "[How to Enable Developer Mode on Your Chromebook][05]"
and the [this video][09] gives a complete description of this process.
There are a few subtle steps that can trip you up, so read it.

>**Warning:** Entering developer mode will wipe all data off of the SSD.

As part of the process of enabling Developer Mode, your Chromebook will be “[powerwashed][43].”
All the user accounts and their files will be removed from your Chromebook.
Also keep in mind that Developer Mode will need access to the Internet to download files.
This means you need to have initialized the native Chromebook with access to WiFi.

My Chromebook is a Acer Chromebook 14 (CB3-431) which was released on March 29, 2016,
and I used the proceedure outline in the article
["How to Enable Developer Mode on Your Chromebook"][05]
to enter developer mode.

>**NOTE:** If you want to disable developer mode on your Chromebook in the future, that’s easy.
Just reboot the Chromebook.
At the scary looking warning screen, press the Space key as instructed.
Your Chromebook will revert to factory-default settings, erasing its files.
You’ll have to log into it with your Google account again, but everything will
be back to its normal, locked-down state.

## Step 2: Download and Install Crouton - DONE
Per the Crouton Github repository,
you can grab the latest Crouton release from https://goo.gl/fd3zc.
Crouton is a set of scripts that bundle up the installation of
Ubuntu or Debian OS for the Chromebook.
All the best documentation is maintained on Github's
[crouton: Chromium OS Universal Chroot Environment][10]
and the [Wiki][15].
There you will find a easy to use link to download Crouton.

Just execute this link [`https://goo.gl/fd3zc`][11] from your Chromebook browser.
Download Crouton via the link to the directory `Downloads`,
pop open a shell (`Ctrl`+`Alt`+`T`, within the popped up window type `shell` and hit enter),
and run `sh ~/Downloads/crouton` to see some examples on what you can to with this utility.

You should also install the [crouton integration][12] extension.
This works with with the "extension" or "[xiwi][18]" targets (see below),
provides much improved integration with Chromium OS
by putting X11 in a native window.

## Step 3: Choose a Linux Target, Options, and Install - DONE
While still in the shell from the previous step,
install you Linux OS onto the Chromebook by
following the procedures  outline in Step 4 of the article
"[How to Easily Install Ubuntu on Chromebook with Crouton][14]".

When installing using Crouton, you have to specify a target Linux environment.
For example, `sudo sh ~/Downloads/crouton -r trusty -t xfce,xiwi` installs the Xfce desktop
with the `trusty` version of Ubuntu.
You’ll find other targets here too — Ubuntu’s Unity desktop, KDE, GNOME, LXDE, Enlightenment,
and even command-line only targets like “core” and “cli-extra” if you don’t need a fancy desktop.
To get a listing, use the commands below:

```bash
# see a list of targets
sh ~/Downloads/crouton -t help
Available targets:
audio
        Support audio playback via Chromium OS's audio system.
        Requires: core
chrome
        Google Chrome browser, stable channel.
        Requires: x11
chrome-beta
        Google Chrome browser, beta channel.
        Requires: x11
chrome-dev
        Google Chrome browser, dev channel.
        Requires: x11
chromium
        Chromium browser. Uses the distro's version, which may be old.
        Requires: x11
cli-extra
        Basic CLI tools such as ssh.
        Requires: core
core
        Performs core system configuration. Most users would want this.
e17
        Installs the enlightenment desktop environment. (Approx. 50MB)
        Requires: gtk-extra
extension
        Clipboard synchronization and URL handling with Chromium OS.
        Requires: x11
gnome
        Installs the GNOME desktop environment. (Approx. 400MB)
        Requires: gtk-extra
gnome-desktop
        Installs GNOME along with common applications. (Approx. 1100MB)
        Requires: gnome
gtk-extra
        GTK-based tools including gdebi, gksu, and a simple browser.
        Requires: x11
kde
        Installs a minimal KDE desktop environment. (Approx. 600MB)
        Requires: x11
kde-desktop
        Installs KDE along with common applications. (Approx. 1000MB)
        Requires: kde
keyboard
        Adds support for Chromebook keyboard special keys.
        Requires: x11
lxde
        Installs the LXDE desktop environment. (Approx. 200MB)
        Requires: gtk-extra
lxde-desktop
        Installs LXDE along with common applications. (Approx. 800MB)
        Requires: lxde
touch
        Touchscreen and limited generic gesture support.
        Requires: x11
unity
        Installs the Unity desktop environment. (Approx. 700MB)
        Requires: gtk-extra
unity-desktop
        Installs Unity along with common applications. (Approx. 1100MB)
        Requires: unity
x11
        X11 via autodetected backend. Does not install any desktop environment.
xbmc
        Installs the XBMC media player. (Approx. 140MB)
        Requires: x11
xfce
        Installs the Xfce desktop environment. (Approx. 250MB)
        Requires: gtk-extra
xfce-desktop
        Installs Xfce along with common applications. (Approx. 1200MB)
        Requires: xfce
xiwi
        X.org X11 backend running unaccelerated in a Chromium OS window.
        Requires: audio extension
xorg
        X.Org X11 backend. Enables GPU acceleration on supported platforms.
        Requires: audio
```

The `crouton` script can also give you a listing the Linux distributions it can support:

```bash
# see a list of Linux distributions and their releases
sh ~/Downloads/crouton -r list
Insufficient permissions to refresh crouton installer.
Recognized debian releases:
    potato! woody! sarge! etch! lenny! squeeze! wheezy jessie stretch sid
Recognized kali releases:
    moto! kali! sana! kali-rolling
Recognized ubuntu releases:
    warty! hoary! breezy! dapper! edgy! feisty! gutsy! hardy! intrepid! jaunty!
    karmic! lucid! maverick! natty! oneiric! precise quantal! raring! saucy!
    trusty utopic! vivid! wily! xenial yakkety* zesty*
Releases marked with ! are upstream end-of-life, and should be avoided.
Releases marked with * are unsupported, but may work with some effort.
```

You can use the following command line to install a lightweight desktop system:

```bash
# install your desired Ubuntu release and targets (NOTE: chroot drive not encripted via option -e)
sudo sh ~/Downloads/crouton -r xenial -t xfce,gtk-extra,xfce-desktop,x11,xiwi,keyboard,extension,core,cli-extra,chrome
```

If you are like me and have at least 32G of SSD disk space on your Chromebook,
and you may want a [Unity desktop][93] experiance, so use this
(Note: [Unity is going away][92] and being replace by [Gnome][94])

```bash
# install your Ubuntu Unity Desktop and targets (NOTE: chroot drive not encripted via option -e)
sudo sh ~/Downloads/crouton -r xenial -t gtk-extra,audio,unity,unity-desktop,x11,xiwi,keyboard,extension,core,cli-extra,chrome
```
The above crouton command will download and install Ubuntu from the internet,
so depending on your internet speeds it may take a while (15 to 25 minutes).
During the installation, you will prompted for a user name and password for your Ubuntu installation.

Ubuntu is installed in the directory
`/mnt/stateful_partition/crouton/chroots/xenial`.
If you choose to install additional Linux instances with crouton, like trusty,
they will be places in
`/mnt/stateful_partition/crouton/chroots`.

The Crouton [Wiki][15] discusses [security][17]
and points out that crouton is not, and cannot be, as secure as Chromium OS in verified mode.
If this is a concern, you can use the `-e` option to encrypt the Linux instance.

```bash
# install your desired Ubuntu release (16.04 LTS), targets, and encript the drive
sudo sh ~/Downloads/crouton -e -r xenial -t gtk-extra,audio,unity,unity-desktop,x11,xiwi,keyboard,extension,core,cli-extra,chrome
```

## Step 4: Test It Out - DONE
While still in the shell from the previous step,
you can now test out your Ubuntu instance by
entering your chroot in command-line mode via:

```bash
# enter command line mode of Linux instance
sudo enter-chroot -n xenial
```

You'll get a command-line prompt of `(xenial)jeff@localhost:~$`.
Your now running in you Linux instance within the Chrome chroot shell.
Your present working directory is `/home/jeff`
and the downloaded instance of crouton is in the directory `/home/jeff/Downloads`.

Notice that if you point to your Chrome browser, and enter `Ctrl`+`Alt`+`T`,
you can get Linux login instance running
concurrently within the Chrome browser tab too!

>**NOTE:** In principle, you can start Ubuntu/Unity within a Chromebook window using:
>
>1. Press `Ctrl`+`Alt`+`T` to bring up a terminal on your Chrome browser
>1. Type `shell` and hit `Enter` key
>1. Type `sudo enter-chroot` and hit `Enter` key
>1. Login as a root, type `sudo xiwi startunity` and hit `Enter` key
>
>I found this didn't work.
> There appeases to be an [issue][77] or maybe [more][78].

## Step 5: Install Crosh Window - DONE
The [Crosh Window][79] (aka [Chromium OS shell][80]) can be found in the Chrome Web Store.
Install it on the Chromebook via this [link][79].
This will give you `chroot` access outside of the Chrome browser tab.
You'll find this easier and more robust than always depending on the browser to
run your Ubuntu Unity.

# Things To Configure and Install Within Ubuntu

## Step X: Startup Unity Desktop - DONE
Now lets completely back out of the terminal by repeatedly entering `exit`
until the Chome tabs closes, and we are back to a know state.
Find the Crosh Window applcation you just installed and fire it up.
With then Crosh Window that pops up, do the following:

1. Type `shell` and hit `Enter` key
1. Type `sudo enter-chroot` and hit `Enter` key
1. Login as a root, type `sudo xiwi startunity` and hit `Enter` key

Alternatively, you could do the following:

```bash
# start ubuntu/unity within a chromebook window
sudo enter-chroot xiwi startunity

# start ubuntu/unity in full screen mode
sudo enter-chroot startunity -X xiwi
```

In this later case, you switch back to Chrome OS on the fly simply
by hitting `Ctrl`+`Alt`+`Shift`+`Back`
or hitting `Ctrl`+`Alt`+`Shift`+`Forward`
(`Back` and `Forward` are the arrow keys at the top of the Chromebook keyboard).

## Step X: Establish a Better Terminal and Browser - DONE
After the installation, follow the prompts and set up your Unix account.
After that, you will be logged into Ubuntu!
You can start using your favourite OS now, but there were some issues I need to fix.

First let install the Chrome browser.
This can easily be done by just typing `gnome-chrome` in a xterm.
You will be prompted to establish a new keyring and initialize with you Google account.

Next lets install a better terminal than `xterm`
(e.g. The out of the box version of `xterm` is very frustating because cut & paste doesn't work).
I'm much more comfortable with gnome-terminal and it can be install with:

```bash
# install a better terminal than xterm
sudo apt-get install gnome-terminal
```

With just this, `gnome-terminal` will likely crash when you start it.
Chances are the [`locales`][91] aren’t set right.
Type in the command below, and reboot Ubuntu.

```bash
# gnome-terminal requires
sudo locale-gen en_US en_US.UTF-8
export LANG=en_US.UTF-8
export LC_ALL=en_US.UTF-8
sudo dpkg-reconfigure locales

# now restart ubunutu
```

## Step X: Changing Host Name - DONE
The Linux instance host name will default to `localhost`.
Change the name of the Linux system to something memerable.
[This can be changed][64] to something more appropriate, like `chromebook`, via

```bash
# update the host name file
sudo bash -c "echo 'chromebook' > /etc/hostname"
```

## Step X: Configure My Personal Environment - DONE
I next installed tools and configuration parameter for my login environment:

```bash
# make sure you have the latest linux packages
sudo apt-get update && sudo apt-get dist-upgrade

# install key foundational tools
sudo apt-get install vim-gnome git wmctrl curl bash-completion ttf-ubuntu-font-family

# install tools for vim text editor
cd $HOME
git clone https://github.com/jeffskinnerbox/.vim.git
ln -s $HOME/.vim/vimrc $HOME/.vimrc
mkdir $HOME/.vim/backup
mkdir $HOME/.vim/tmp

# install tools for bash shell
cd $HOME
git clone https://github.com/jeffskinnerbox/.bash.git
rm .bashrc .bash_logout
ln -s $HOME/.bash/bashrc $HOME/.bashrc
ln -s $HOME/.bash/bash_login $HOME/.bash_login
ln -s $HOME/.bash/bash_logout $HOME/.bash_logout
ln -s $HOME/.bash/bash_profile $HOME/.bash_profile
ln -s $HOME/.bash/dircolors.old $HOME/.dircolors

# source the resource file so its currently active
source ~/.bashrc

# install X configuration files
cd $HOME
git clone https://github.com/jeffskinnerbox/.X.git
ln -s $HOME/.X/xbindkeysrc $HOME/.xbindkeysrc
ln -s $HOME/.X/Xresources $HOME/.Xresources
ln -s $HOME/.X/xsessionrc $HOME/.xsessionrc
```

>**NOTE:** Vim is an almost compatible version of the UNIX editor Vi.
>Many new features have been added: multi level undo, syntax highlighting,
>command line history, on-line help, filename completion, block operations,
>folding, Unicode support, etc.
>The `vim-gnome` package contains a version of vim compiled with a [GNOMEi 2 GUI][120]
>and support for scripting with Lua, Perl, Python, Ruby, and Tcl.

## Step X: Ubuntu Environment Improvements - DONE
The Ubuntu installed via provides just a few apps
(file manager, Xterm and a couple more) so let's install some extra applications.
Open `gnome-terminal` and install them using the following commands:

```bash
# package management tools
sudo apt-get install software-properties-common

# general development tools
sudo apt-get install microcom screen
sudo apt-get install markdown build-essential libssl-dev

# first install Python packages
sudo apt-get install python python-dev libjpeg-dev libfreetype6-dev python-setuptools python-pip

# get python 2.7 and python 3 header files
sudo apt-get install python2.7-dev python3-dev

# to manage software packages for python 3, let’s install pip and virtual env tool
sudo apt-get install python3-pip python3-venv

# to ensure a robust python programming environment
sudo apt-get install build-essential libssl-dev libffi-dev python-dev

# use the ARM specific GTK to prevent GTK warnings
sudo apt-get install libcanberra-gtk*

# execute the pyenv installer
curl -L https://raw.githubusercontent.com/pyenv/pyenv-installer/master/bin/pyenv-installer | bash

# tools for viewing and manipulating image & video files
sudo apt-get install imagemagick feh mplayer2 vlc mediainfo

# basic networking / firewall tools / network performance testing & monitoring
sudo apt-get install dnsutils tcpdump wavemon nicstat nmap ufw rfkill netcat
sudo apt-get install iperf iperf3 nethogs
sudo pip3 install speedtest-cli

# other handy tools
sudo apt-get install jq hashalot
```

## Step X: Install i3 (Optional) - DONE
* [Running a window manager (i3wm) on stock Chrome OS](https://www.reddit.com/r/Crostini/comments/ean9du/running_a_window_manager_i3wm_on_stock_chrome_os/)

[i3][44] is a [tilling window manager][45] that is configurable, fast, well documented,
but primarily targeted at advanced users and developers.
While you may already fined i3 installed,
you can install i3 from via the chroot
(i.e. `Ctrl`+`Alt`+`T` then `shell` then `sudo enter-chroot -n xenial`).
Make sure you using the [latest version of i3 via `i3wm.org` site][95]:

```bash
# make sure you have the latest linux packages
sudo apt-get update && sudo apt-get dist-upgrade

# download and install the key for the 01/30/2018 repository release
cd ~/Downloads
/usr/lib/apt/apt-helper download-file http://debian.sur5r.net/i3/pool/main/s/sur5r-keyring/sur5r-keyring_2018.01.30_all.deb keyring.deb SHA256:baa43dbbd7232ea2b5444cae238d53bebb9d34601cc000e82f11111b1889078a
sudo dpkg -i ./keyring.deb

# update your repository source list and update
sudo bash -c "echo 'deb http://debian.sur5r.net/i3/ $(lsb_release -c -s) universe' >> /etc/apt/sources.list"
sudo apt-get update

# install i3
sudo apt-get install i3

# supporting programs
sudo apt-get install i3lock xautolock i3status feh dunst dmenu wmctrl x11-utils

# install my personal i3 configuration file
cd ~
git clone https://github.com/jeffskinnerbox/.i3.git
ln -s ~/.i3/i3status.conf ~/.i3status.conf
```

Your can [run i3 from within xfce / Unity by placing it in the "Application Autostart"][46],
but but you can jump right into it from crosh shell if you set up your
`.xinitrc` file to execute i3.

```bash
# add exec i3 to ~/.xinitrc
echo "exec i3" > ~/.xinitrc

# launch i3 directly from the crosh shell
sudo enter-chroot -X xiwi -n xenial xinit

# launch i3 directly from the crosh shell
# use native Xorg instead of xiwi (linux runs full screen, no access to Chrome)
sudo enter-chroot -X xorg -n xenial xinit
```

The i3 tilling window manager is highly configurable but entirely keyboard driven.
You will not see any buttons or menus,
and for the uninitiated, you'll be completely lost on what to do
to create a window or navigate.
No worries ... the [i3 window manager is very well documented][96].

## Step X: Updating the chroot
Ubuntu may stop working after a Chrome OS update. If that's the case,
update all the installed targets using the following command
(in Chrome OS, open a terminal using `Ctrl`+`Alt`+`T`, then type "shell"):

http://www.webupd8.org/2013/12/things-to-do-after-installing-ubuntu-on.html

```bash
sudo sh -e ~/Downloads/crouton -u -n xenial
```

## Step X: Push Backup to Google Drive

################################################################################
## Step X: Install Drop Box
You'll inevitably need to move files into this new environment,
and you can use `scp` but you may like to use Dropbox.
The only way I know of getting Dropbox install on an Ubuntu instance is via the
[Ubuntu Apps Directory][48].
Via the browser,  click on the download button and follow the procedures.
################################################################################

# Starting Up Linux and Linux Apps
crouton in a Chromium OS window (xiwi) - https://github.com/dnschneid/crouton/wiki/crouton-in-a-Chromium-OS-window-(xiwi)

There are several ways to start up your Linux instance on the Chromebook,
but they all start from the crosh shell.
To get to the crosh shell,
type `Ctrl`+`Alt`+`T` to bring up a Chrome Shell or `crosh`.
Then type `shell` at the prompt to get to the root Linux shell
(this can only be done in [Developer Mode][19]).
Now within this window, enter one of the following:

```bash
# command line only
sudo enter-chroot -n xenial

# run full Xfce Window Manger
# use native xiwi (linux runs in chroos window or Chrome tab)
sudo startxfce4 -X xiwi -n xenial

# run full Xfce Window Manger
# use native Xorg instead of xiwi (linux runs full screen, no access to Chrome)
sudo startxfce4 -X xorg -n xenial

# lightweight, tilling window manager - i3 Window Manager
sudo enter-chroot -X xiwi -n xenial xinit
```

```bash
sudo startxiwi -f gnome-terminal      # run X Windows in a terminal

sudo startxfce4 -X xiwi               # run X Windows with window manager
```

You can also run Linux programs, including X Window programs,
as individual programs without pulling up a desktop envirnment as you do with xfce and i3.
With the [crouton integration][12] extension,
this enables running the X11 windows in the Ubuntu chroot as
native Chrome OS windows.
You enter chroot via `sudo enter-chroot` and the run the app via `xiwi`.
you use `xiwi -T <app>` to launch in Chrome browser tab,
or `xiwi -F <app>` to launch full-screen.
You can silence output and run the command in the background via
`sudo enter-chroot -b xiwi -T <app>`.

You can launch individual apps in crouton windows by using the "xiwi" command
in the chroot shell.
Use startxiwi to launch directly from the host shell.
Use the startxiwi parameter -b to run in the background.

If your application forks and quits,
xiwi may get confused and quit as well
(you'll get an error/quit when the window launches).
Often you must pass your app the  `-f` parameter.
If you can't find one,
you can pass `-f` to xiwi itself
(e.g., `xiwi -f gvim` or `xiwi gvim -f`),
and xiwi will not close unless there are no applications visible
and you close the Chromium OS window.
Also, xiwi doesn't know you current directory so use full paths
(e.g. `sudo enter-chroot -b xiwi gimp ~/Downloads/img.jpg`).

For example,

```bash
# run the program node-red in the background
sudo startxiwi -b node-red

# run the program node-red in the foreground (also brings up an additional window)
Sudo enter-chroot xiwi node-red

# run a xterm in the forground
sudo startxiwi -f xterm
xiwi -f xterm
```

https://support.google.com/chromebook/answer/1047367?hl=en&ref_topic=2589149
http://blog.laptopmag.com/how-to-right-click-on-a-chromebook

## Xhost / Xauth
The X server will not accept connections from just anywhere.
You don't want everyone to be able to display windows on your screen or read what you type
(Someone with access to your display can read and write your screens, read your keystrokes, and read your mouse actions).
The X Server has ways to authenticating connections to it: the host list mechanism (`xhost`)
and the magic cookie mechanism (`xauth`).
Then there is `ssh`, the secure shell, that can forward X connections.

Some X Servers can be configured not to listen on the usual TCP port where you would access the X Server.xi
Notably the default configuration of Debian GNU/Linux is to disable the X server listening on the TCP port.
If you wish to use remote X on a Debian system, you should re-enable this by altering the way the X server is started. Look at /etc/X11/xinit/xserverrc for a start.

finish finish finish finish

http://www.tldp.org/HOWTO/Remote-X-Apps-6.html
http://users.stat.umn.edu/~geyer/secure.html
http://serverfault.com/questions/51005/how-to-use-xauth-to-run-graphical-application-via-other-user-on-linux
http://www.tldp.org/HOWTO/Remote-X-Apps-6.html

## Aliases
To make this all easier to remember, you could create some aliases'.
Aliases have to be stored in `~/.bashrc` to persist indefinitely
(Note `~` is `home/chronos/user`.  Make sure to do `cd` when you enter the shell).

There is one problem with aliases'.
If you launch applications via aliases,
the xiwi command will not know about them.
You can add the [following snippet][42] to your `~/.bashrc` to handle basic aliases:

```bash
# Wrap xiwi so that aliases work
xiwi() {
    local xiwiargs=''
    while [ "${1#-}" != "$1" ]; do
        xiwiargs="$xiwiargs $1"
        shift
    done
    local cmd="`alias "$1" 2>/dev/null`"
    if [ -z "$cmd" ]; then
        cmd="$1"
    else
        eval "cmd=${cmd#*=}"
        cmd="env $cmd"
    fi
    shift
    eval "/usr/local/bin/xiwi $xiwiargs $cmd \"\$@\""
}
```

For example, to create an alias for starting i3, xfce, and command line version of Ubuntu
I putting the following in my  `~/.bashrc` file:

```bash
```

>NOTE: You do your edits of `~/.bashrc` from inside your crosh/shell, edit, not chroot.

## Linux in a Chromium OS Window
https://github.com/dnschneid/crouton/wiki/crouton-in-a-Chromium-OS-window-(xiwi)

## Markdown
https://chrome.google.com/webstore/detail/markdown-preview/jmchmkecamhbiokiopfpnfgbidieafmd

#### Ssh Tunnelling on Chrome OS
To use [ssh tunnelling on Chrome OS][20],
open the crosh shell by pressing `Ctrl`+`Alt`+`T` anywhere in Chrome OS.
The shell will open in a browser tab.
Next, use the appropriate `ssh` command to connect to an SSH server and establish a tunnel.
You’ll do this by running the `ssh` command and then by typing every option on its own line, like so:

![crosh ssh](http://cdn3.howtogeek.com/wp-content/uploads/2014/11/img_546b9898a9e3f.png)

You could also just type in the whole line like `ssh jeff@desktop`
to secure shell into the `desktop` system using the login `jeff`.

While chromebook can support `ssh` natively, it is a bit limited.
I have run had problem getting access to devices running OpenWrt,
bu there are some [apps you can install that give more full features][73].

### Linux
Xfce tweaks

* Turn on X11 Forwarding - http://www.webupd8.org/2013/12/things-to-do-after-installing-ubuntu-on.html
* Make sure the TERM varable is set to the same value as the remote system your logging into (XTERM=xterm-256color)
* download your .bash, .vim, etc.


## Getting to a Command Prompt
https://www.chromium.org/chromium-os/poking-around-your-chrome-os-device

## Chromebook Factory Reset
http://www.cnet.com/how-to/what-does-it-mean-to-powerwash-a-chromebook/

## Run Linux Desktop in Browser Tab
http://www.howtogeek.com/208368/how-to-run-a-full-linux-desktop-in-a-browser-tab-on-your-chromebook/

## When Linux Stops Working
Linux may stop working after a Chrome OS update.
If that's the case, update all the installed targets using the following command
(in Chrome OS, open a terminal using `Ctrl`+`Alt`+`T`, then type "shell"):

```bash
# xenial is the name of your chroot
sudo sh -e ~/Downloads/crouton -u -n xenial
```

Where "xenial" is the name of the chroot you want to update.
The default chroot name is the codename for the Ubuntu version you've installed
(regardless of the desktop environment you've installed).
For example, if you've installed Ubuntu 12.04 Precise, the default chrootname is "precise"

## Sharing Files Between Chrome OS and Ubuntu Environments
There is not much to do to share the files.
The folder `Downloads` in each environment contain the same content.

* To get to `Downloads` folder in Chome OS – Start the `Files` App
* To get to `Downloads` folder in Ubuntu Environment
– it’s under `/home/username/downloads` using File Manager.

## Developing on a Chromebook
* [Developing on a Chromebook - Part 1: The Chromebook](http://blog.tomtasche.at/2011/11/developing-on-chromebook-part-1.html)
* [Developing on a Chromebook - Part 2: Cloud, it's not me, it's you.](http://blog.tomtasche.at/2011/11/developing-on-chromebook-part-2-cloud.html)
* [Developing on a Chromebook - Part 3: X-Forwarding, or "Eclipse on a Chromebook"](http://blog.tomtasche.at/2012/01/developing-on-chromebook-part-3-x.html)
* [Developing on a Chromebook - Part 4: Back to the past](http://blog.tomtasche.at/2012/02/developing-on-chromebook-part-4-back-to.html)
* [State of Developing on a Chromebook](http://matthewphillips.info/posts/state-of-developing-on-a-chromebook.html)
* [Using Cloud Drives on Chromebooks](http://matthewphillips.info/posts/using-cloud-drives-on-chromebooks.html)
* [Coder on a Chromebook with Crouton](https://github.com/googlecreativelab/coder/wiki/Coder-on-a-Chromebook-with-Crouton)
* Ultimate guide for Web Development on Chromebook — [Part 1: Crouton][55] and [Part 2: ChromeOS tricks and workflows][56]
* [Tools for Developing on ChromeOS][57]


# Connecting Chromebook to Ethernet
Wireless internet is great,
but sometimes you might find yourself in a situation where only
a physical Ethernet Internet connection will do.
Most Chromebooks do not include an Ethernet LAN port,
but you can easily add this functionality with a USB Ethernet adapter.
Headed on over to Amazon to look for an adapter.
I got the [Rankie SuperSpeed USB 3.0 to RJ45 Gigabit Ethernet Network Adapter - R1161][72].
It works fine with my Chomebook's USB 3.0 port and it was just plug and play.

# Chrome Apps to Install
* Ultimate guide for Web Development on Chromebook — [Part 1: Crouton][55] and [Part 2: ChromeOS tricks and workflows][56]

* [Postman][60] is a great utility for testing REST based APIs.
* [GistBox][81] can access and store code snippets (or "Gists", in their terms) for easy access them from everywhere.

### Dropbox
* https://github.com/dnschneid/crouton/wiki/Dropbox
* [How to enable Dropbox integration into the file manager on your Chromebook](http://www.androidcentral.com/how-enable-dropbox-integration-file-manager-your-chromebook?utm_source=related&utm_medium=module&utm_campaign=next)

### Chrome Remote Desktop
* http://computers.tutsplus.com/tutorials/use-chrome-remote-desktop-to-access-your-computer-anywhere--cms-21227
* [Chrome Remote Desktop: The easy way to access a remote computer](https://www.computerworld.com/article/3230909/enterprise-applications/chrome-remote-desktop-access-remote-computer-easily.html)

### Microsoft Apps
http://www.omgchrome.com/microsoft-brings-office-online-chrome-web-store/

# Run Android App On Chromebook
Eventually, Google hopes, you’ll be able to run potentially millions of Android apps
within Chrome or Chrome OS once they’re formally ported over.
But you can get make that vision start to happen today—with a new Google tool called ARC Welder.

* [Here's how to run Android apps on Chrome with Google's new tool](http://www.pcworld.com/article/2905297/heres-how-to-run-android-apps-on-chrome-with-googles-new-tool.html)
* [How to Install Android Applications Directly on Chromebook](https://www.maketecheasier.com/install-android-applications-chromebook/)
* [How to install Android apps on Chrome/Chromebooks](https://www.youtube.com/watch?v=fgOd0qdR_AU)




[01]:http://www.cnet.com/products/toshiba-chromebook-2-review/
[02]:http://chromeos-cr48.blogspot.mx/
[03]:https://github.com/dnschneid/crouton
[04]:http://www.howtogeek.com/185039/4-things-to-keep-in-mind-when-buying-a-chromebook-for-linux/
[05]:http://www.howtogeek.com/210817/how-to-enable-developer-mode-on-your-chromebook/
[06]:http://www.pcworld.com/article/2873561/google-just-made-it-easier-to-run-linux-on-your-chromebook.html
[07]:https://chrome.google.com/webstore/category/apps
[08]:https://chrome.google.com/webstore/detail/chromebook-recovery-utili/jndclpdbaamdhonoechobihbbiimdgai
[09]:https://www.youtube.com/watch?v=d_MuVwJq_XQ
[10]:https://github.com/dnschneid/crouton
[11]:https://goo.gl/fd3zc
[12]:https://chrome.google.com/webstore/detail/crouton-integration/gcpneefbbnfalgjniomfjknbcgkbijom
[13]:https://wiki.archlinux.org/index.php/Change_root
[14]:https://www.linux.com/learn/tutorials/795730-how-to-easily-install-ubuntu-on-chromebook-with-crouton
[15]:https://github.com/dnschneid/crouton/wiki
[16]:https://www.chromium.org/chromium-os/developer-information-for-chrome-os-devices
[17]:https://github.com/dnschneid/crouton/wiki/Security
[18]:https://github.com/dnschneid/crouton/wiki/crouton-in-a-Chromium-OS-window-(xiwi)
[19]:https://software.intel.com/en-us/blogs/2014/07/01/chrome-os-whats-developer-mode
[20]:http://www.howtogeek.com/202768/how-to-use-ssh-tunnelling-on-chrome-os/
[21]:https://support.google.com/chrome#topic=3227046
[22]:https://support.google.com/chromebook/?hl=en#topic=3399709
[23]:https://www.google.com/chromebook/switch/
[24]:https://mudongliang.github.io/2017/08/15/how-to-manage-the-crouton-linux-system-on-your-chromebook.html
[25]:http://techmeasy.blogspot.com/2011/10/20-google-chromes-about-and-chrome.html
[26]:https://support.google.com/chromebook/answer/1056325?hl=en
[27]:http://www.technorms.com/35871/top-tweaks-and-tips-for-chromebook
[28]:http://beebom.com/2015/10/chrome-flags-guide-to-enhance-web-browsing
[29]:http://www.pocket-lint.com/news/129107-chromebook-tips-and-tricks-getting-the-most-out-of-your-chrome-os-machine
[30]:http://www.cnet.com/how-to/15-essential-chrome-os-keyboard-shortcuts/
[31]:http://www.zdnet.com/article/few-business-takers-yet-but-chromebook-sales-to-grow-7-3-million-this-year/
[32]:http://www.zdnet.com/article/top-3-holiday-computers-on-amazon-were-chromebooks/
[33]:https://chrome.google.com/webstore/detail/crosh-window/nhbmpbdladcchdhkemlojfjdknjadhmh?hl=en-US
[34]:https://chrome.google.com/webstore/detail/secure-shell/pnhechapfaindjhompbnflcldabbghjo
[35]:http://www.chromestory.com/Getting_Started_With_Your_Chromebook.pdf
[36]:http://www.chromestory.com/google-chromebook/
[37]:http://www.chromestory.com/
[38]:https://failicide.wordpress.com/2014/12/18/toshiba-chromebook-2-an-amazing-device/
[39]:https://en.wikipedia.org/wiki/Chrome_OS
[40]:https://en.wikipedia.org/wiki/Virtual_machine
[41]:http://www.chromestory.com/100_Chrome_ChromeOS_And_ChromeBook_Tips_Ebook.pdf
[42]:https://github.com/dnschneid/crouton/wiki/crouton-in-a-Chromium-OS-window-(xiwi)
[43]:http://www.cnet.com/how-to/what-does-it-mean-to-powerwash-a-chromebook/
[44]:http://i3wm.org/
[45]:https://en.wikipedia.org/wiki/Tiling_window_manager
[46]:https://github.com/dnschneid/crouton/wiki/i3
[47]:http://www.xfce.org/
[48]:https://apps.ubuntu.com/cat/applications/nautilus-dropbox/
[49]:https://github.com/dnschneid/crouton/wiki/Backups
[50]:http://www.geek.com/chips/11-tips-to-get-the-most-out-of-your-chromebook-1637058/
[51]:http://tomwwolf.com/chromebook-14-compedium/chromebook-crouton-cookbook/
[52]:https://www.docker.com/
[53]:https://www.vagrantup.com/
[54]:https://chrome.google.com/webstore/detail/arc-welder/emfinbmielocnlhgmfkkmkngdoccbadn
[55]:https://medium.com/@martinmalinda/ultimate-guide-for-web-development-on-chromebook-part-1-crouton-2ec2e6bb2a2d#.unzzpg2a1
[56]:https://medium.com/@martinmalinda/ultimate-guide-for-web-development-on-chromebook-part-2-chromeos-tricks-and-workflows-4dfcc308d391#.k4axwqchl
[57]:http://joemarini.blogspot.com/2013/11/tools-for-developing-on-chromeos.html
[58]:https://sites.google.com/site/chromeoswikisite/home/what-s-new-in-dev-and-beta/developer-mode
[59]:http://www.cnet.com/how-to/how-to-print-from-a-chromebook/
[60]:https://www.getpostman.com/
[61]:https://chrome.google.com/webstore/detail/gistbox-desktop/pdjgfbgklbmmigkmmdbbhfchdldngkml
[62]:https://developers.google.com/web/tools/chrome-devtools/
[63]:https://www.codeschool.com/courses/discover-devtools
[64]:http://www.ducea.com/2006/08/07/how-to-change-the-hostname-of-a-linux-system/
[65]:http://krypted.com/commands/crosh-commands/
[66]:http://www.computerworld.com/article/2474456/cloud-computing/say-what-3-major-misconceptions-about-google-s-chrome-os.html
[67]:http://www.pcworld.com/article/2691209/5-powerful-things-you-didnt-know-chromebooks-could-do.html
[68]:https://en.wikipedia.org/wiki/Chrome_OS
[69]:http://www.howtogeek.com/210817/how-to-enable-developer-mode-on-your-chromebook/
[70]:http://x.org/wiki/
[72]:https://www.amazon.com/Network-Adapter-Rankie-SuperSpeed-Ethernet/dp/B010SEARPU/ref=sr_1_3?ie=UTF8&qid=1476410333&sr=8-3&keywords=ethernet+adapter
[73]:https://chrome.google.com/webstore/detail/secure-shell/pnhechapfaindjhompbnflcldabbghjo?utm_source=gmail
[74]:https://en.wikipedia.org/wiki/Chroot
[75]:https://help.ubuntu.com/community/BasicChroot
[76]:http://unix.stackexchange.com/questions/105/chroot-jail-what-is-it-and-how-do-i-use-it
[77]:https://github.com/dnschneid/crouton/issues/2698
[78]:https://github.com/dnschneid/crouton/issues/2601
[79]:https://chrome.google.com/webstore/detail/crosh-window/nhbmpbdladcchdhkemlojfjdknjadhmh?hl=en-US
[80]:https://chromium.googlesource.com/chromiumos/platform2/+/master/crosh/
[81]:https://www.acer.com/ac/en/US/content/series/acerchromebook14
[82]:https://medium.com/@rmcneely/setting-up-your-arm-chromebook-for-development-aa530d0cdb15
[83]:http://www.techrepublic.com/article/how-to-prevent-a-chromebook-from-running-out-of-memory/
[84]:https://www.engadget.com/2016/08/19/unlock-chrome-os-with-pin/
[85]:https://support.google.com/chromebook/answer/6070209?hl=en-GB
[86]:http://www.techradar.com/news/mobile-computing/laptops/android-apps-are-now-available-on-these-chromebooks-1323567
[87]:http://fieldguide.gizmodo.com/how-to-run-android-apps-on-your-chromebook-1786505928
[88]:https://galliumos.org/
[89]:https://community.spiceworks.com/how_to/147047-how-to-access-the-chrome-shell-crosh-on-a-chromebook
[90]:https://chrome.google.com/webstore/detail/crosh-window/nhbmpbdladcchdhkemlojfjdknjadhmh?hl=en-US
[91]:https://help.ubuntu.com/community/Locale
[92]:https://www.pcworld.com/article/3188190/linux/why-ubuntu-dumping-unity-is-a-good-thing.html
[93]:https://www.makeuseof.com/tag/unity-explained-ubuntu-default-desktop-environment/
[94]:https://www.gnome.org/
[95]:https://i3wm.org/docs/repositories
[96]:https://i3wm.org/docs/
[97]:https://venturebeat.com/2018/05/08/chrome-os-is-getting-linux-app-support/
[98]:https://en.wikipedia.org/wiki/X86_virtualization#Intel_virtualization_(VT-x)
[99]:https://www.xda-developers.com/linux-apps-chrome-os-overview-crostini/
[100]:https://9to5google.com/2018/05/08/chrome-os-linux-app-support/
[101]:https://www.reddit.com/r/Crostini/comments/99lz6c/crostini_available_on_acer_chromebook_14_cb3431/
[102]:https://www.youtube.com/watch?time_continue=102&v=s9mrR2tqVbQ
[103]:https://arstechnica.com/gadgets/2017/06/how-to-install-linux-on-a-chromebook/
[104]:https://www.aboutchromebooks.com/news/google-officially-unveils-project-crostini-linux-apps-on-chrome-os/
[105]:https://www.reddit.com/r/Crostini/comments/9budfp/when_does_crostini_come_to_stable/
[106]:https://support.google.com/chromebook/answer/1086915?hl=en
[107]:https://www.reddit.com/r/Crostini/wiki/getstarted/crostini-enabled-devices
[108]:https://www.howtogeek.com/179070/how-to-get-access-to-experimental-features-on-your-chromebook-or-just-in-chrome/
[109]:https://support.google.com/chromebook/answer/1086915?hl=en
[110]:https://www.howtogeek.com/179070/how-to-get-access-to-experimental-features-on-your-chromebook-or-just-in-chrome/
[111]:https://support.google.com/chromebook/answer/2588006?hl=en
[112]:https://edgetalk.net/chrome-tip-properly-restart-google-chrome-browser-without-losing-tabs/
[113]:https://chromium.googlesource.com/chromiumos/overlays/board-overlays/+/master/project-termina/
[114]:https://wiki.debian.org/DebianStretch
[115]:https://www.debian.org/doc/manuals/debian-reference/ch02.en.html
[116]:https://support.google.com/chromebook/answer/6070209?hl=en
[118]:https://betanews.com/2018/04/23/terminal-app-chromeos-linux/
[119]:https://9to5google.com/2018/11/01/chromebooks-to-never-receive-linux-full-list
[120]:https://help.gnome.org/misc/release-notes/2.0/
[121]:
[122]:
[123]:
[124]:
[125]:
[126]:
[127]:
[128]:
[129]:
[130]:

