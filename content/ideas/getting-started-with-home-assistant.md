
<!--
Maintainer:   jeffskinnerbox@yahoo.com / www.jeffskinnerbox.me
Version:      0.0.0
-->


############################## REMOVE THESE ITEMS ##############################
# ThingsBoard
ThingsBoard is an open-source IoT platform that enables rapid development,
management and scaling of IoT projects.
It's goal is to provide the out-of-the-box IoT cloud, or on-premises solutions
that will enable server-side infrastructure for your IoT applications.
* [ThingsBoard](https://thingsboard.io/)

# Cooling
* [Benchmarking Different Methods to Cool the Raspberry Pi](https://medium.com/young-coder/benchmarking-different-methods-to-cool-the-raspberry-pi-ff015cc075e)

### Mycroft
* [Awesome Stuff: A Voice-Operated Household Assistant](https://www.techdirt.com/blog/innovation/articles/20150829/07551832101/awesome-stuff-voice-operated-household-assistant.shtml)
* [Mycroft: An Open Source Artificial Intelligence For Everyone](https://www.kickstarter.com/projects/aiforeveryone/mycroft-an-open-source-artificial-intelligence-for?ref=card)
* [Mycroft: A.I. for everyone](https://mycroft.ai/)

* [Home automation with Z-Wave, Home-Assistant, Aeon Multisensor, HUE lights, and a Raspberry Pi 2](https://partofthething.com/thoughts/home-automation-with-z-wave-home-assistant-aeon-multisensor-hue-lights-and-a-raspberry-pi-2/)

# DYI Smart Home
* [6 open source home automation tools](https://opensource.com/life/17/12/home-automation-tools?utm_medium=Email&utm_campaign=weekly&sc_cid=701f2000000tpYEAAY)
* [What Smart Home IoT Platform Should You Use?](https://dzone.com/articles/what-smart-home-iot-platform-should-you-use)
############################## REMOVE THESE ITEMS ##############################


# Raspberry Pi as a Server
* [Raspberry Pi Server based on Docker, with VPN, Dropbox backup, Influx, Grafana, etc.](https://www.youtube.com/watch?v=a6mjt8tWUws&feature=youtu.be)
    * [IOTstack](https://sensorsiot.github.io/IOTstack/)

* [#255 Node-Red, InfluxDB, and Grafana Tutorial on a Raspberry Pi](https://www.youtube.com/watch?v=JdV4x925au0)
* [Raspberry Pi 4 8GB & USB Boot](https://www.youtube.com/watch?v=2zrwjGcyM5s)
* [#312 Boot a Raspberry Pi4 with an SSD to make it reliable and fast](https://www.youtube.com/watch?v=gp6XW-fGVjo)
* [#288 Raspberry Pi 4 Coolers: Which one is best? (Quickie)](https://www.youtube.com/watch?v=qa3YnWhzPsw)

* [How to Disable the Annoying SSH Password Warning on Raspberry Pi](https://www.tomshardware.com/how-to/disable-ssh-password-warning-raspberry-pi)

## Proxy Server
* [How to Use a Raspberry Pi as a Proxy Server (with Privoxy)](https://www.howtogeek.com/683971/how-to-use-a-raspberry-pi-as-a-proxy-server-with-privoxy/)

## Mozilla WebThings
* [Mozilla WebThings: An Open Platform For Building IoT Devices](https://hackaday.com/2019/10/29/mozilla-webthings-an-open-platform-for-building-iot-devices/)

## Set-Up
* [How to resize a Root Partition in Linux](https://medium.com/100-days-of-linux/how-to-resize-a-linux-root-file-system-af3e5096b4e4)










<!--
See https://github.com/andrewjfreyer/monitor/blob/master/README.md
<details><summary><h1>Introduction</h1></summary>
<br>
</details>
-->

I got plans for several standard home sensors (e.g. water sensors),
not so standard sensors (e.g. people detecting via smart phone RF exhaust),
and some novel status display methods (e.g. scrolling display critical events).
These edge devices all require a operating environment where they can be
provisioned, monitored, controlled, persistent data storage, etc.

So I need :
* Smart Home / IoT Server
* Smart Home / IoT Platform
* Smart Home / IoT Device Gateway
* Smart Home / IoT Devices

For the server I have selected the ever popular Raspberry Pi, which means I'm hosting my own solution.
I could choose one of the may cloud providers
([Samsung SmartThings][11], [Mozilla IoT][12], [AWS Alexa][13],
[Google's Cloud IoT Core][14], [Microsoft Azure IoT][15], etc.)
but I don't think any of them will provide me the privacy, control, or extensibility I will ultimately desire.

For the platform, which will operate on the server,
I read multiple reviews and quickly restrict my attention to [Home Assistant][07] or [OpenHAB][08]
and choose Home Assistant based in part on [SmartHome University's evaluation][18] of the two options
([here][19] is another informative review).
These platforms claim to be vendor and technology agnostic open source automation software for your home.
There are others with a similar bent
(e.g [Calaos][21], [Domoticz][22], [MisterHouse][23], [OpenMotics][24], [OpenNetHome][25], etc.)
but Home Assistant and OpenHAB have captured the most attention.

For the device gateway, assuming I need it,
at this moment I would be using a [Raspberry Pi with EdgeX Foundry][09],
EdgeX Foundry is part of [LF Edge][10],
a portfolio (aka collection of projects or umbrella, if you prefer) for Linux based IoT solutions.
But I want to give serious consideration to alternatives like
[Mozilla WebThings][12] and [Eclipse ThingWeb][16],
which are both an implementations of the ["Web of Things" standard from the W3C][17].

With wide control comes greater responsibility.
Read these articles to get some insight, pointers,
and confidence that helped me select Home Assistant as my platform:

* Pros/Cons of Home Assistant
    * [3 Things No One Will Tell You About Home Assistant](https://www.youtube.com/watch?v=WGiFUpiYjEE&feature=youtu.be)
    * [Home Assistant vs OpenHAB - Which one is better?](https://www.youtube.com/watch?v=A4jrE_MtRWc)
    * [Why I use Home Assistant for open source home automation](https://opensource.com/article/20/11/home-assistant)
    * [Cloud control vs local control: What to choose for your home automation](https://opensource.com/article/20/11/cloud-vs-local-home-automation)
    * [How to choose a wireless protocol for home automation](https://opensource.com/article/20/11/wireless-protocol-home-automation)
    * [Set up Home Assistant to manage your open source smart home](https://opensource.com/article/20/12/home-assistant)
    * [Home Assistant Demo](https://demo.home-assistant.io/#/lovelace/0)
* Home Automation Ideas
    * [10 tips for DIY IoT home automation](https://opensource.com/life/16/9/iot-home-automation-projects?sc_cid=701600000012AJUAA2)
    * [25 Smart Home Automation Ideas – How To Set Everything Up](https://smarthomesolver.com/reviews/smart-home-automation-ideas/)
    and it's companion: [video](https://www.youtube.com/watch?v=F-mEA5RN_yo)
    * [25 Home Automation Ideas: Ultimate Smart Home Tour (volume 2)](https://smarthomesolver.com/reviews/25-smart-home-automation-ideas-volume-2/)
    * [Ranking All My Smart Home Products and Projects. SMART HOME TOUR.](https://www.youtube.com/watch?v=n0dfuj60aaI&feature=youtu.be)
    and it's companion: [video](https://www.youtube.com/watch?v=jDaRPsvvcz4)
* Informative YouTubers focusing on home automation:
    * [The Hook Up](https://www.youtube.com/channel/UC2gyzKcHbYfqoXA5xbyGXtQ)
    * [Everything Smart Home](https://www.youtube.com/channel/UCrVLgIniVg6jW38uVqDRIiQ)
    * [SuperHouseTV](https://www.youtube.com/user/SuperHouseTV)
    * [Smart Home Junkie](https://www.youtube.com/channel/UCVtQ4AOSmCFUuvixddYiSxw)

------


# Raspberry Pi OS vs Ubuntu
## Raspbian
If your Raspberry Pi 4 will not boot, it is possible that the SPI EEPROM has become corrupted. To check, remove the SD card, disconnect the device from power, then reconnect it. If the green LED does not flash, this indicates that the EEPROM has become corrupted. - https://www.raspberrypi.org/downloads/

# Smart Home / IoT Server
The first critical decision is what hardware do I use?
After a bit of research,
I concluded I want to use the most capable Raspberry Pi,
booting from a fast and beefy SSD drive,
housed in a highly functional case.
For me, this boils down to:

* The compute platform is the [Raspberry Pi 4][01] with 4GB of memory.
The speed and performance of the Raspberry Pi 4 is a step up from earlier models,
enabling a complete desktop experience.
The Raspberry Pi 4 also now supports [native USB boot without SD card][06].
This can give you faster boots, faster disk drive, and higher reliability.
* I'm using the [Samsung 860 EVO SSD 500GB - M.2 SATA Internal Solid State Drive][02].
Why SSD? They are about 10 times faster than SD Card,
as low as twice the price of SDs and should be much more reliable.
SDs are well suited to cameras but will tend to fail because computers
often over-writing the same location wearing down the memory.
* The [well-regarded][38] and stylish [Argon ONE M.2 Case for Raspberry Pi 4][03] which supports,
or should I say the Raspberry Pi 4 supports,
the [USB Attached SCSI Protocol (UASP)][04].
This means you can maximize the transfer speeds
of your M.2 SATA Drive which comes with built-in adapter board for the M.2 SSD.
* You can also [configure the Argon case fan and power button][05] for you needs
(e.g. temperature selectable multi-speed fan & power switch supporting safe shutdown and hard reboot).
And to top it off, the GPIO pins are still easily accessible but smartly hidden.



------


# Getting Started With Home Assistant
* [Quickly getting started with Home Assistant (2020 Guide)](https://www.youtube.com/watch?v=Am8FEhBhe5Y&feature=youtu.be)
* [Home Assistant Beginners Guide: Installation, Addons, Integrations, Scripts, Scenes, and Automations](https://www.youtube.com/watch?v=sVqyDtEjudk)
* [Home Assistant INSTALLATION GUIDE 2020 + Key Addons](https://www.youtube.com/watch?v=xNK3IDxSPHo)
* []()



------



## Preparing the Raspberry OS

### Step X: Prepare SD-Card for First Boot

### Step 1: Download Raspberry Pi Image - DONE
Before you can load a copy of the latest Raspberry Pi image onto your micro SD Card,
you must first download the official [Raspberry Pi 4][30] operating system, [Raspberry Pi OS][31]
The download site also lists a check sum for the download file.
(In my case, I down loaded the Raspberry 4 OS file to `/home/jeff/Downloads/RPi-OS`.)
Check whether the file has been changed from its original state
by checking its digital signature (SHA1 hash value).

```bash
# download raspberry pi os at https://howtoraspberrypi.com/downloads/

# validate file is uncorrupted via check of digital signature
$ sha1sum /home/jeff/Downloads/RPi-OS/raspbian_latest.zip
4c4ebc332ab2ed0e2e590adb2bf60f5cec95001f  /home/jeff/Downloads/RPi-OS/raspbian_latest.zip
```

Next you need to unzip the file to retrieve the Linux image file:

```bash
# move to the directory with the download
cd /home/jeff/Downloads/RPi-OS

# unzip the download file
$ unzip raspbian_latest.zip
Archive:  raspbian_latest.zip
  inflating: 2020-12-02-raspios-buster-armhf-full.img

# check the size of the image, note that its over 8G
$ ls -l
total 11612092
-rw-r--r-- 1 jeff jeff 8787066880 Dec  2 08:21 2020-12-02-raspios-buster-armhf-full.img
-rw-rw-r-- 1 jeff jeff 3092088753 Dec  6 11:28 raspbian_latest.zip

# remove the zip file
rm raspbian_latest.zip
```

### Step 2: Write Raspberry Pi Image to SD Card - DONE
Next using Linux, you have to copied the Raspberry OS image onto the SD card mounted to your system.
I'll be using the [Rocketek 11-in-1 4 Slots USB 3.0 Memory Card Reader][32] to create my SD Card.
Make sure to [choose a reputable SD Card][33] from [here][34], don't go cheap.
**NOTE:** Additionally important for this project is to use a 32G SD Card
since we'll be using the SD Card to transport the RPi image to the M.2 SSD.

When using your card reader,
you'll need to know the device name of the reader.
The easiest way to find this is just unplug your card reader from the USB port,
run `df -h`, then plug it back in, and run `df -h` again.

```bash
# with the SD card reader unplugged
$ df -h
Filesystem      Size  Used Avail Use% Mounted on
udev            7.8G     0  7.8G   0% /dev
tmpfs           1.6G  2.2M  1.6G   1% /run
/dev/sda3       110G   57G   47G  55% /
tmpfs           7.8G  982M  6.8G  13% /dev/shm
tmpfs           5.0M  8.0K  5.0M   1% /run/lock
tmpfs           7.8G     0  7.8G   0% /sys/fs/cgroup
/dev/loop2       56M   56M     0 100% /snap/core18/1932
/dev/loop4      141M  141M     0 100% /snap/gnome-3-26-1604/100
/dev/loop3       56M   56M     0 100% /snap/core18/1885
/dev/loop0       98M   98M     0 100% /snap/core/10185
/dev/loop5      162M  162M     0 100% /snap/gnome-3-28-1804/128
/dev/loop7      2.3M  2.3M     0 100% /snap/gnome-system-monitor/145
/dev/loop6      256M  256M     0 100% /snap/gnome-3-34-1804/36
/dev/loop1       98M   98M     0 100% /snap/core/10444
/dev/loop8       52M   52M     0 100% /snap/snap-store/498
/dev/loop9      163M  163M     0 100% /snap/gnome-3-28-1804/145
/dev/loop10      65M   65M     0 100% /snap/gtk-common-themes/1513
/dev/loop12      50M   50M     0 100% /snap/snap-store/467
/dev/loop11     2.3M  2.3M     0 100% /snap/gnome-system-monitor/148
/dev/loop13     141M  141M     0 100% /snap/gnome-3-26-1604/98
/dev/loop14     218M  218M     0 100% /snap/gnome-3-34-1804/60
/dev/loop15      65M   65M     0 100% /snap/gtk-common-themes/1514
/dev/sda1       461M  139M  299M  32% /boot
/dev/md0        917G  299G  572G  35% /home
/dev/sdb        3.6T  561G  2.9T  17% /mnt/backup
tmpfs           1.6G   12K  1.6G   1% /run/user/130
tmpfs           1.6G   48K  1.6G   1% /run/user/1000

# with the SD card reader plugged in USB
$ df -h
Filesystem      Size  Used Avail Use% Mounted on
udev            7.8G     0  7.8G   0% /dev
tmpfs           1.6G  2.2M  1.6G   1% /run
/dev/sda3       110G   57G   47G  55% /
tmpfs           7.8G  989M  6.8G  13% /dev/shm
tmpfs           5.0M  8.0K  5.0M   1% /run/lock
tmpfs           7.8G     0  7.8G   0% /sys/fs/cgroup
/dev/loop2       56M   56M     0 100% /snap/core18/1932
/dev/loop4      141M  141M     0 100% /snap/gnome-3-26-1604/100
/dev/loop3       56M   56M     0 100% /snap/core18/1885
/dev/loop0       98M   98M     0 100% /snap/core/10185
/dev/loop5      162M  162M     0 100% /snap/gnome-3-28-1804/128
/dev/loop7      2.3M  2.3M     0 100% /snap/gnome-system-monitor/145
/dev/loop6      256M  256M     0 100% /snap/gnome-3-34-1804/36
/dev/loop1       98M   98M     0 100% /snap/core/10444
/dev/loop8       52M   52M     0 100% /snap/snap-store/498
/dev/loop9      163M  163M     0 100% /snap/gnome-3-28-1804/145
/dev/loop10      65M   65M     0 100% /snap/gtk-common-themes/1513
/dev/loop12      50M   50M     0 100% /snap/snap-store/467
/dev/loop11     2.3M  2.3M     0 100% /snap/gnome-system-monitor/148
/dev/loop13     141M  141M     0 100% /snap/gnome-3-26-1604/98
/dev/loop14     218M  218M     0 100% /snap/gnome-3-34-1804/60
/dev/loop15      65M   65M     0 100% /snap/gtk-common-themes/1514
/dev/sda1       461M  139M  299M  32% /boot
/dev/md0        917G  299G  572G  35% /home
/dev/sdb        3.6T  561G  2.9T  17% /mnt/backup
tmpfs           1.6G   12K  1.6G   1% /run/user/130
tmpfs           1.6G   48K  1.6G   1% /run/user/1000
/dev/sdj1        60M   21M   39M  36% /media/jeff/boot
```

Note that in my example above, the new device is `/dev/sdj1`.
The last part (the number 1) is the partition number
but we want to write to the whole SD card, not just one partition.
Therefore you need to remove that part when creating the image.
With this information, and know the location of the Raspbian image and
where we need to write the Raspberry OS image to the SD Card.

>**NOTE:** (Optional) To securely wipe data from the SD-Card,
>you should wipe out all the data on the SD-Card by overwriting the entire drive with random data.
>This ensures that the data cannot be recovered by any data recovery tool.
>You need to completely wipe the data only if the device is going to be given away.
>Otherwise, you can skip this step.
>
>```bash
># erase data on the cd-card
>sudo dd if=/dev/zero of=/dev/<drive> bs=4096 status=progress
>```
>
>Depending of the size of the drive, the process will take some time to complete.
>Once the disk is erased, the `dd `command will print “No space left on device”.

```bash
# go to directory with the RPi image
cd /home/jeff/Downloads/RPi-OS

# unmount the sd card reader
sudo umount /dev/sdj1

# write the image to the sd card reader
$ sudo dd bs=4M if=2020-12-02-raspios-buster-armhf-full.img of=/dev/sdj
2095+0 records in
2095+0 records out
8787066880 bytes (8.8 GB, 8.2 GiB) copied, 705.832 s, 12.4 MB/s

# ensure the write cache is flushed
sudo sync

# (optional) make a copy of the image from the sd-card
sudo dd bs=4M if=/dev/sdj of=copy-from-sd-card.img
sudo truncate --reference 2020-12-02-raspios-buster-armhf-full.img copy-from-sd-card.img

# (optional) check the integrity of the sd card image
$ diff -s 2020-12-02-raspios-buster-armhf-full.img copy-from-sd-card.img
Files 2020-12-02-raspios-buster-armhf-full.img and copy-from-sd-card.img are identical

# remove the copied image
rm ~/Downloads/RPi-OS/copy-from-sd-card.img
```

SSH can be enabled on first boot by placing a file named `ssh` (without any extension),
onto the root directory of the boot partition on the SD-Card:

```bash
# enable ssh on first boot
sudo touch /media/jeff/boot/ssh
```

Final check, unmount, and then remove the SD Card:

```bash
# sd card space used
$ df -h | grep media
/dev/sdj2       7.8G  6.7G  683M  91% /media/jeff/rootfs
/dev/sdj1       253M   54M  199M  22% /media/jeff/boot

# unmount the sd card
sudo umount /dev/sdj1 /dev/sdj2
```

>**NOTE:** While the SD Card is 32GB in size,
>ithe image makes it think its about 8GB.

########################### MOVE LATTER AND REPURPOSE ##########################
Remove SD card from the reader on your computer.
We’re going to set up the WiFi interface next.

>**NOTE:** You could immediately put the SD Card in the RPi and boot it up,
>but you will have no WiFi access and you'll need to use the Ethernet interface,
>or if there is no Ethernet interface,
>you'll need to use a console cable to make the file modification
>outline in the next step.
>[Adafruit has good description on how to use a console cable][35]
>and the how to [enable the UART for the console][36].

### Step 3: Setup Hostname and Networking
Using the USB SD-Card reader from the earlier steps,
once again mount the SD-Card,
and then update hostname, the network interfaces, and wpa_supplicant files:

```bash
# setting the hostname for the raspberry pi
sudo sed -i 's/raspberrypi/home-assist/' /media/jeff/rootfs/etc/hosts
sudo sed -i 's/raspberrypi/home-assist/' /media/jeff/rootfs/etc/hostname
```

```bash
# Create the network interfaces file
sudo mv /media/jeff/rootfs/etc/network/interfaces /media/jeff/rootfs/etc/network/interfaces.old
cat /home/jeff/src/rpi-loader/rpi4/interfaces | sudo tee /media/jeff/rootfs/etc/network/interfaces > /dev/null

# Create the wpa supplicant file
sudo mv /media/jeff/rootfs/etc/wpa_supplicant/wpa_supplicant.conf /media/jeff/rootfs/etc/wpa_supplicant/wpa_supplicant.old
cat /home/jeff/src/rpi-loader/rpi4/wpa_supplicant.conf | sudo tee /media/jeff/rootfs/etc/wpa_supplicant/wpa_supplicant.conf > /dev/null
```

```bash
# update the wpa supplicant file with information about your home wifi
sudo sed -i 's/<home-ssid>/MY-SSID/' /media/jeff/rootfs/etc/wpa_supplicant/wpa_supplicant.conf
sudo sed -i 's/<home-password>/MY-PASSWORD/' /media/jeff/rootfs/etc/wpa_supplicant/wpa_supplicant.conf

# update the wpa supplicant file with information about your jetpack wifi
sudo sed -i 's/<jetpack-ssid>/MY-SSID/' /media/jeff/rootfs/etc/wpa_supplicant/wpa_supplicant.conf
sudo sed -i 's/<jetpack-password>/MY-PASSWORD/' /media/jeff/rootfs/etc/wpa_supplicant/wpa_supplicant.conf
```
########################### MOVE LATTER AND REPURPOSE ##########################



------



## Argon ONE M.2 Case for Raspberry Pi 4
If your searching how to best marry a Solid State Drive (SSD) with a Raspberry Pi,
the [Argon ONE M.2 Case for Raspberry Pi 4][20] is the way to go.
With this case, you get support for high speed [M.2 SATA SSDs][26],
combined with the faster USB 3 supported on the RPi 4,
maximizing the true potential speeds of your Raspberry Pi 4.
This able boot via an M.2 SATA SSD for faster boot times,
more reliable and larger storage capacity compared to the traditional microSD Card.

### Step 1: Assemble the Argon ONE M.2 Case - DONE
The physical assembly of the Argon ONE M.2 is easy,
just follow the documentation that comes with the product and online information.
For information about assembly & setup,
follow instruction that come with the Argon ONE M.2,
and check out the following:

Sources:

* [Argon ONE M.2 SSD case for the Raspberry Pi 4 mini PC](https://www.geeky-gadgets.com/raspberry-pi-4-case-07-10-2020/)
* [The Argon One Raspberry Pi 4 Case - Is this the Best Pi4 Case?](https://www.youtube.com/watch?v=8VlE654abDo)
* [Argon One Tips and Setup](http://wagnerstechtalk.com/argonone/)
* [Argon ONE Case for Raspberry Pi 4 Updated](https://tech.scargill.net/argon-one-case-for-raspberry-pi4/)

### Step 2: Booting From the SD-Card - DONE
Install the SD Card created earlier,
apply power to the Argon ONE M.2 via a USB C charger for the Raspberry Pi 4,
connect an Ethernet cable from you LAN,
and then press the power switch on the Argon ONE M.2.

Once the RPi boots up,
you can [find your Raspberry P on your network][27] using [`arp-scan`][28]:

```bash
# scan the network for all live hosts
sudo arp-scan 192.168.1.0/24

# scan the network of a certain type of alive hosts
# MAC range for raspbery pi is: DC:A6:32:00:00:00 - DC:A6:32:FF:FF:FF
$ sudo arp-scan 192.168.1.0/24 | grep dc:a6:32
192.168.1.69	dc:a6:32:a7:fe:98	Raspberry Pi Trading Ltd
```

Now using the IP address you found for the RPi,
SSH login (`ssh pi@192.168.1.69`)
and run the following commands to update your RPi to the latest software:

```bash
# set the time zone for your raspberry pi device
sudo timedatectl set-timezone America/New_York

# update the raspberry pi os
sudo apt-get update
sudo apt-get -y upgrade

# clean up any packages no longer needed
sudo apt-get -y autoremove
```

Run the following commands to update your RPi to the latest firmware
and resizing the disk partition to use the full disk size
(important since we'll be uploading an 8GB  image file):

```bash
# do firmware update and reboot
sudo rpi-update

# expand partition to use 100% of remaining space
sudo raspi-config nonint do_expand_rootfs

# reboot needed the above to take effect
sudo reboot
```

Check if you got secured the remaining space on SD Card via `df -h`,
and then shutdown the Raspberry Pi and remove the SD Card for the next step.

Sources:

* [How could one automate the raspbian raspi-config setup?](https://raspberrypi.stackexchange.com/questions/28907/how-could-one-automate-the-raspbian-raspi-config-setup)

### Step 3: Prepare Bootloader to Use the M.2 SATA SSD - DONE
Before editing the bootloader configuration,
make sure you have [updated your system][29] (as shown in previous step)
to get the latest version of the [`rpi-eeprom` package][39].
Now lets [install the stable bootloader][37]:

```bash
# make sure you have or install the latest bootloader
$ sudo rpi-eeprom-update -d -a
BCM2711 detected
Dedicated VL805 EEPROM detected
BOOTLOADER: up-to-date
CURRENT: Thu  3 Sep 12:11:43 UTC 2020 (1599135103)
 LATEST: Thu  3 Sep 12:11:43 UTC 2020 (1599135103)
 FW DIR: /lib/firmware/raspberrypi/bootloader/critical
VL805: up-to-date
CURRENT: 000138a1
 LATEST: 000138a1

# if not the latest bootloader, reboot
sudo shutdown -r now

# check the bootloader version, as well as the boot order
vcgencmd bootloader_version
vcgencmd bootloader_config

# replace "critical" with "stable", allowing stable updates to be applied
sudo sed -i 's/critical/stable/g' /etc/default/rpi-eeprom-update

# list the bootloader binaries
$ ls /lib/firmware/raspberrypi/bootloader/stable/pieeprom*
/lib/firmware/raspberrypi/bootloader/stable/pieeprom-2020-04-16.bin
/lib/firmware/raspberrypi/bootloader/stable/pieeprom-2020-06-15.bin
/lib/firmware/raspberrypi/bootloader/stable/pieeprom-2020-07-16.bin
/lib/firmware/raspberrypi/bootloader/stable/pieeprom-2020-07-31.bin
/lib/firmware/raspberrypi/bootloader/stable/pieeprom-2020-09-03.bin

# if not the latest bootloader, update bootloader with version 2020-06-15 or newer and reboot
sudo rpi-eeprom-update -d -f /lib/firmware/raspberrypi/bootloader/stable/pieeprom-2020-09-03.bin
sudo shutdown -r now

# recheck the bootloader version
$ vcgencmd bootloader_version
Sep  3 2020 13:11:43
version c305221a6d7e532693cc7ff57fddfc8649def167 (release)
timestamp 1599135103
update-time 0
capabilities 0x00000000

# recheck the boot order to validate the change
# BOOT_ORDER should equal 0xF41 meaning boot from SD-Card first, and if absent, from the USB
$ vcgencmd bootloader_config
[all]
BOOT_UART=0
WAKE_ON_GPIO=1
POWER_OFF_ON_HALT=0
DHCP_TIMEOUT=45000
DHCP_REQ_TIMEOUT=4000
TFTP_FILE_TIMEOUT=30000
ENABLE_SELF_UPDATE=1
DISABLE_HDMI=0
BOOT_ORDER=0xf41

# halt the rpi
sudo shutdown -h now
```

At this points, you could boot from the USB, assuming you didn't have the SD-Card installed on the RPi
and you had an operating system to on the M.2 SSD.
To accomplish this,
in the next step we'll copy the Raspberry Pi OS to the the SD Card
and then it will be installed on the M.2 SATA SSD
so we can physically remove the SD-Card.

Sources:

* [How to Boot Raspberry Pi 4 From a USB SSD or Flash Drive](https://www.tomshardware.com/how-to/boot-raspberry-pi-4-usb)
* [Stable Raspberry Pi 4 USB boot (HOW-TO)](https://www.youtube.com/watch?v=tUrX9wzhygc)


### Step 4: Load the Raspberry Pi OS Image on the SD Card - DONE
We need to write the Raspberry Pi OS image onto the M.2 SDD.
We'll do this via the SD Card, so let load the RPi OS image into the `/tmp`
directory on the SD Card.

```bash
# place sd card in usb reader and plug into desktop computer

# find the path to the sd card reader and check sd card size
$ df -h | grep media
/dev/sdj2        29G  7.6G   21G  28% /media/jeff/rootfs
/dev/sdj1       253M   54M  199M  22% /media/jeff/boot

# from you desk top computer
# copy rpi image from desk computer to sd card
cp -p /home/jeff/Downloads/RPi-OS/2020-12-02-raspios-buster-armhf-full.img /media/jeff/rootfs/home/pi

# check sd card size
$ df -h | grep media
/dev/sdj2        29G   16G   12G  57% /media/jeff/rootfs
/dev/sdj1       253M   54M  199M  22% /media/jeff/boot
```

### Step 5: Load Raspberry Pi OS on the M.2 SATA SSD
Often on Linux, when you plug a USB thumb drive in, you're alerted that the drive exists.
Sometimes, however, a drive isn't set-up/organized so it functions.
For those times, you may need to partition and format the device.
Partitioning is the process of dividing a storage device into local sections,
called partitions, which help organize multiple filesystems and their associated operating systems.
Disk formatting is the process of preparing a data storage device for initial use.

########################### MOVER TO PROPER LOCATION ###########################
It is generally recommended to have separate partitions for `/`, `/boot` and swap.
I would also strongly suggest putting `/home` on a separate partition as well,
even if you do not split the file system hierarchy any further.
I want to make the following partitions:
########################### MOVER TO PROPER LOCATION ###########################

First, lets see if we can find out about the SSD drive.
The easy way to list the block devices attached to your Raspberry Pi
via `lsblk` (list block devices) command:

```bash
# place sd card in rpi and boot up

# list block devices
$ lsblk
NAME        MAJ:MIN RM   SIZE RO TYPE MOUNTPOINT
sda           8:0    0 465.8G  0 dism
mmcblk0     179:0    0  14.5G  0 disk
├─mmcblk0p1 179:1    0   256M  0 part /boot
└─mmcblk0p2 179:2    0  14.2G  0 part /

# list formated / filesystems block devices
$ lsblk -f
NAME        FSTYPE LABEL  UUID                                 FSAVAIL FSUSE% MOUNTPOINT
sda
mmcblk0
├─mmcblk0p1 vfat   boot   4467-8C16                             198.4M    21% /boot
└─mmcblk0p2 ext4   rootfs 66f68227-b1ae-4493-9ef5-e593576a6e81    5.7G    54% /
```

I see the Samsung 860 EVO SSD 500GB listed as the `sda` device (aka `/dev/sda`).
No evidance of this SSD being partitioned or formated.
`mmcblk0` is the SD-Card and fully prepared, as it must be to operate.

First, lets partition the SSD device:

```bash
# list the partitions
$ sudo parted -l
Error: /dev/sda: unrecognised disk label
Model: Argon Forty (scsi)
Disk /dev/sda: 500GB
Sector size (logical/physical): 512B/512B
Partition Table: unknown
Disk Flags:

Model: SD SC32G (sd/mmc)
Disk /dev/mmcblk0: 31.9GB
Sector size (logical/physical): 512B/512B
Partition Table: msdos
Disk Flags:

Number  Start   End     Size    Type     File system  Flags
 1      4194kB  273MB   268MB   primary  fat32        lba
 2      273MB   31.9GB  31.6GB  primary  ext4
```

**NOTE:** The physically installed Argon SSD,
the device/disk `/dev/sda`, has no label and no partition table.
We'll use the `parted` to work on the `/dev/sda` storage device.

```bash
# enter the parted tool to work on /dev/sda
sudo parted --align optimal /dev/sda

# find out how to make a new partition
(parted) help mkpart
  mkpart PART-TYPE [FS-TYPE] START END     make a partition

	PART-TYPE is one of: primary, logical, extended
        FS-TYPE is one of: zfs, btrfs, nilfs2, ext4, ext3, ext2, fat32, fat16, hfsx, hfs+, hfs, jfs, swsusp,
        linux-swap(v1), linux-swap(v0), ntfs, reiserfs, freebsd-ufs, hp-ufs, sun-ufs, xfs, apfs2, apfs1, asfs, amufs5,
        amufs4, amufs3, amufs2, amufs1, amufs0, amufs, affs7, affs6, affs5, affs4, affs3, affs2, affs1, affs0,
        linux-swap, linux-swap(new), linux-swap(old)
        START and END are disk locations, such as 4GB or 10%.  Negative values count from the end of the disk.  For
        example, -1s specifies exactly the last sector.

        'mkpart' makes a partition without creating a new file system on the partition.  FS-TYPE may be specified to set
        an appropriate partition ID.

# show information about the storage device
(parted) print
Error: /dev/sda: unrecognised disk label
Model: Argon Forty (scsi)
Disk /dev/sda: 500GB
Sector size (logical/physical): 512B/512B
Partition Table: unknown
Disk Flags:

# set the partition table type to GPT
(parted) mklabel gpt

# make your partions
(parted) mkpart primary fat32 0% 100%

# list your partions
(parted) print
Model: Argon Forty (scsi)
Disk /dev/sda: 500GB
Sector size (logical/physical): 512B/512B
Partition Table: gpt
Disk Flags:

Number  Start   End    Size   File system  Name     Flags
 1      33.6MB  500GB  500GB  fat32        primary


# save and quit
(parted) quit
```

Now lets format the new partitions:

```bash
# format the new partitions
sudo mkfs -t vfat /dev/sda1


$ lsblk -f
NAME        FSTYPE LABEL  UUID                                 FSAVAIL FSUSE% MOUNTPOINT
sda
└─sda1      vfat          B5D7-20B1
mmcblk0
├─mmcblk0p1 vfat   boot   4467-8C16                             198.4M    21% /boot
└─mmcblk0p2 ext4   rootfs 66f68227-b1ae-4493-9ef5-e593576a6e81     12G    54% /
```

Now we are going to repeat the steps we performed for preparing the SD-Card,
but now on the M.2 SATA SSD.
We'll the image we moved to the SD-Card (`/home/pi`) by copying it to the M.2 SATA SSD.

```bash
# write the image to the sd card reader
$ sudo dd bs=4M if=/home/pi/2020-12-02-raspios-buster-armhf-full.img of=/dev/sda

# check out how the /dev/sda has been partitioned (just like the sd card was)
$ lsblk -f
NAME        FSTYPE LABEL  UUID                                 FSAVAIL FSUSE% MOUNTPOINT
sda
├─sda1      vfat   boot   4467-8C16
└─sda2      ext4   rootfs 66f68227-b1ae-4493-9ef5-e593576a6e81
mmcblk0
├─mmcblk0p1 vfat   boot   4467-8C16                             198.4M    21% /boot
└─mmcblk0p2 ext4   rootfs 66f68227-b1ae-4493-9ef5-e593576a6e81     12G    54% /
```

SSH can be enabled on first boot by placing a file named `ssh` (without any extension),
onto the root directory of the boot partition on the SD-Card:

```bash
# mount the required device
sudo mkdir /mnt
udo mkdir /mnt/boot
sudo mount /dev/sda1 /mnt/boot

# enable ssh on first boot
sudo touch /mnt/boot/ssh

# halt the rpi and remove the sd card
sudo shutdown -h now
```

With this completed, its time to halt the RPi, remove the SD Card from the RPi,
boot from the M.2 SDD for the first time using the image we just installed!

Sources:

* [How to partition and format a drive on Linux](https://opensource.com/article/18/11/partition-format-drive-linux)
* [How to partition a disk in Linux](https://opensource.com/article/18/6/how-partition-disk-linux)
* [Stable Raspberry Pi 4 USB boot (HOW-TO)](https://www.youtube.com/watch?v=tUrX9wzhygc)
* [Parted User’s Manual](https://www.gnu.org/software/parted/manual/parted.html)
* [How To Format Disk Partitions on Linux](https://devconnected.com/how-to-format-disk-partitions-on-linux/)
* [How to align partitions for best performance using parted](https://rainbow.chard.org/2013/01/30/how-to-align-partitions-for-best-performance-using-parted/)

#################################### REMOVE ####################################
```bash
# mount the ssd drive
sudo mkdir /mnt
sudo mkdir /mnt/SSD
sudo mount /dev/sda1 /mnt/SSD
```

Now leave the Raspberry Pi and go to you desktop linux

```bash
# view all the groups
getent group

# add an exiting user to an existing group
sudo usermod -a -G root pi

# remove a user from a group
sudo usermod -G pi pi

# copy Raspberry pi image from desk computer to raspberry pi
scp -rp /home/jeff/Downloads/RPi-OS/2020-12-02-raspios-buster-armhf-full.img pi@192.168.1.69:/mnt/SSD
```

# using the same downloaded raspberry pi os image, copy to SSD

# validate file is uncorrupted via check of digital signature
$ sha1sum /home/jeff/Downloads/RPi-OS/raspbian_latest.zip
4c4ebc332ab2ed0e2e590adb2bf60f5cec95001f  /home/jeff/Downloads/RPi-OS/raspbian_latest.zip
```

Next you need to unzip the file to retrieve the Linux image file:

```bash
# move to the directory with the download
cd /home/jeff/Downloads/RPi-OS

# unzip the download file
$ unzip raspbian_latest.zip
Archive:  raspbian_latest.zip
  inflating: 2020-12-02-raspios-buster-armhf-full.img

# check the size of the image, note that its over 8G
$ ls -l
total 11612092
-rw-r--r-- 1 jeff jeff 8787066880 Dec  2 08:21 2020-12-02-raspios-buster-armhf-full.img
-rw-rw-r-- 1 jeff jeff 3092088753 Dec  6 11:28 raspbian_latest.zip

# remove the zip file
rm raspbian_latest.zip
```
#################################### REMOVE ####################################



#################################### REMOVE ####################################
### Step X: Load Raspberry Pi OS on the M.2 SATA SSD
Often on Linux, when you plug a USB thumb drive in, you're alerted that the drive exists.
Sometimes, however, a drive isn't set-up/organized so it functions.
For those times, you may need to partition and format the device.
Partitioning is the process of dividing a storage device into local sections,
called partitions, which help organize multiple filesystems and their associated operating systems.
Disk formatting is the process of preparing a data storage device for initial use.

It is generally recommended to have separate partitions for `/`, `/boot` and swap.
I would also strongly suggest putting `/home` on a separate partition as well,
even if you do not split the file system hierarchy any further.
I want to make the following partitions:

First, lets see if we can find out about the SSD drive.
The easy way to list the block devices attached to your Raspberry Pi
via `lsblk` (list block devices) command:

```bash
# list block devices
$ lsblk
NAME        MAJ:MIN RM   SIZE RO TYPE MOUNTPOINT
sda           8:0    0 465.8G  0 dism
mmcblk0     179:0    0  14.5G  0 disk
├─mmcblk0p1 179:1    0   256M  0 part /boot
└─mmcblk0p2 179:2    0  14.2G  0 part /

# list formated / filesystems block devices
$ lsblk -f
NAME        FSTYPE LABEL  UUID                                 FSAVAIL FSUSE% MOUNTPOINT
sda
mmcblk0
├─mmcblk0p1 vfat   boot   4467-8C16                             198.4M    21% /boot
└─mmcblk0p2 ext4   rootfs 66f68227-b1ae-4493-9ef5-e593576a6e81    5.7G    54% /
```

I see the Samsung 860 EVO SSD 500GB listed as the `sda` device (aka `/dev/sda`).
No evidance of this SSD being partitioned or formated.
`mmcblk0` is the SD-Card and fully prepared, as it must be to operate.

First, lets partition the SSD device:

```bash
# list the partitions
$ sudo parted -l
Error: /dev/sda: unrecognised disk label
Model: Argon Forty (scsi)
Disk /dev/sda: 500GB
Sector size (logical/physical): 512B/512B
Partition Table: unknown
Disk Flags:

Model: SD SL16G (sd/mmc)
Disk /dev/mmcblk0: 15.5GB
Sector size (logical/physical): 512B/512B
Partition Table: msdos
Disk Flags:

Number  Start   End     Size    Type     File system  Flags
 1      4194kB  273MB   268MB   primary  fat32        lba
 2      273MB   15.5GB  15.3GB  primary  ext4
```

**NOTE:** The physically installed Argon SSD,
the device/disk `/dev/sda`, has no label and no partition table.
We'll use the `parted` to work on the `/dev/sda` storage device.

```bash
# enter the parted tool to work on /dev/sda
sudo parted --align optimal /dev/sda

# find out how to make a new partition
(parted) help mkpart
  mkpart PART-TYPE [FS-TYPE] START END     make a partition

	PART-TYPE is one of: primary, logical, extended
        FS-TYPE is one of: zfs, btrfs, nilfs2, ext4, ext3, ext2, fat32, fat16, hfsx, hfs+, hfs, jfs, swsusp,
        linux-swap(v1), linux-swap(v0), ntfs, reiserfs, freebsd-ufs, hp-ufs, sun-ufs, xfs, apfs2, apfs1, asfs, amufs5,
        amufs4, amufs3, amufs2, amufs1, amufs0, amufs, affs7, affs6, affs5, affs4, affs3, affs2, affs1, affs0,
        linux-swap, linux-swap(new), linux-swap(old)
        START and END are disk locations, such as 4GB or 10%.  Negative values count from the end of the disk.  For
        example, -1s specifies exactly the last sector.

        'mkpart' makes a partition without creating a new file system on the partition.  FS-TYPE may be specified to set
        an appropriate partition ID.

# show information about the storage device
(parted) print
Error: /dev/sda: unrecognised disk label
Model: Argon Forty (scsi)
Disk /dev/sda: 500GB
Sector size (logical/physical): 512B/512B
Partition Table: unknown
Disk Flags:

# set the partition table type to GPT
(parted) mklabel gpt

# make your partions
(parted) mkpart primary fat32 33.6MB 250MB    # /boot = ~256MB
(parted) mkpart primary ext4 250MB 8GB        # /swap = ~8GB
(parted) mkpart primary ext4 8GB 100GB        # /     = ~100GB
(parted) mkpart primary ext4 100GB 100%       # /home = remainder of disk space (400GB)

# list your partions
(parted) print
Model: Argon Forty (scsi)
Disk /dev/sda: 500GB
Sector size (logical/physical): 512B/512B
Partition Table: gpt
Disk Flags:

Number  Start   End     Size    File system  Name    Flags
 1      33.6MB  250MB   216MB   fat32        primary
 2      250MB   8000MB  7750MB  ext4         primary
 3      8019MB  100GB   92.0GB  ext4         primary
 4      100GB   500GB   400GB   ext4         primary

# name the partitions
(parted) name 1 'boot'
(parted) name 2 'swap'
(parted) name 3 'rootfs'
(parted) name 4 'home'

# list your partitions
(parted) print
Model: Argon Forty (scsi)
Disk /dev/sda: 500GB
Sector size (logical/physical): 512B/512B
Partition Table: gpt
Disk Flags:

Number  Start   End     Size    File system  Name    Flags
 1      33.6MB  250MB   216MB   fat32        boot
 2      250MB   8000MB  7750MB  ext4         swap
 3      8019MB  100GB   92.0GB  ext4         rootfs
 4      100GB   500GB   400GB   ext4         home

# save and quit
(parted) quit

# list formated / filesystems block devices
$ lsblk -f
NAME        FSTYPE LABEL  UUID                                 FSAVAIL FSUSE% MOUNTPOINT
sda
├─sda1
├─sda2
├─sda3
└─sda4
mmcblk0
├─mmcblk0p1 vfat   boot   4467-8C16                             198.4M    21% /boot
└─mmcblk0p2 ext4   rootfs 66f68227-b1ae-4493-9ef5-e593576a6e81    5.7G    54% /
```

Now lets format the new partitions:

```bash
# format all the new partitions
sudo mkfs -t fat /dev/sda1
sudo mkfs -t ext4 /dev/sda2
sudo mkfs -t ext4 /dev/sda3
sudo mkfs -t ext4 /dev/sda4
```

Now we'll copy the boot files from the SD-Card to the SSD:

```bash
# mount the ssd drive
sudo mkdir /mnt
sudo mkdir /mnt/SSD
sudo mount /dev/sda1 /mnt/SSD

# copy files from ssd-card to ssd
sudo mkdir /mnt/SSD/boot
sudo cp /boot/*.elf /mnt/SSD/boot
sudo cp /boot/*.dat /mnt/SSD/boot
```

Sources:

* [How to partition and format a drive on Linux](https://opensource.com/article/18/11/partition-format-drive-linux)
* [How to partition a disk in Linux](https://opensource.com/article/18/6/how-partition-disk-linux)
* [Stable Raspberry Pi 4 USB boot (HOW-TO)](https://www.youtube.com/watch?v=tUrX9wzhygc)
* [Parted User’s Manual](https://www.gnu.org/software/parted/manual/parted.html)
* [How To Format Disk Partitions on Linux](https://devconnected.com/how-to-format-disk-partitions-on-linux/)
* [How to align partitions for best performance using parted](https://rainbow.chard.org/2013/01/30/how-to-align-partitions-for-best-performance-using-parted/)
#################################### REMOVE ####################################



### Step X: Boot from the M.2 SATA SSD
Now shutdown the Raspberry Pi and physically remove the SD-Card from the Argon ONE M.2 Case.
Restart the RPi and you should now be booting off the M.2 SATA SSD.

### Step X: XXX
Using the `blkid` command you can view attributes of block devices that are on your system.

```bash
# display all the block devices that are on your system
sudo blkid

# display the mount point
sudo blkid -o list

# get additional information about a spicific device
sudo blkid -pi /dev/sda

# list all mounted filesytems
findmnt -n -o SOURCE /
```

### Step 3: Booting From the M.2 SATA SSD
By default, Raspberry Pi boots up and stores all of its programs on a microSD memory card,
which has a maximum theoretical bandwidth of 50 MBps on the Raspberry Pi 4,
but even the best microSD cards get no faster than about 38 MBps in sequential writes.
Using an external SSD as your main storage drive could speed things up significantly.

Raspberry PI 4 can now officially boot from USB.
That means you can use SSD or HDD drives instead of SD card.

Steps to be taken:

1. Copy Raspberry OS to an SD-Card
1. Boot the Raspberry Pi using the SD-Card
1. Install the latest bootloader
1. Update your OS and firmware
1. Configure the Raspberry Pi OS to us the SSD

1. Change the PARTUUID on the SSD
1. Change the boot disk definition on the SD-Card
1. Change the root location on the SSD
1. Resize the partition on the SSD

```bash
# update the raspberry pi os
sudo apt-get update
sudo apt-get -y full-upgrade

# do firmware update and reboot
sudo rpi-update
sudo reboot

# update the eeprom
sudo rpi-eeprom-update -d -a
sudo raspi-config
```

Using the `blkid` command you can view attributes of block devices that are on your system.

```bash
# display all the block devices that are on your system
sudo blkid

# display the mount point
sudo blkid -o list

# get additional information about a spicific device
sudo blkid -pi /dev/sdc

# list all mounted filesytems
findmnt -n -o SOURCE /
```


### Step 4: Install Argon Scripts


------



### Network Booting
The latest Raspberry Pis, version 4, ship with Preboot Execution Environment (PXE) boot enabled,
allowing the Pi to load its file system from a server on the same network.

* [Running Raspberry Pi Without an SD Card](https://hackaday.com/2018/10/08/hack-my-house-running-raspberry-pi-without-an-sd-card/)
* [Networek Booting the Pi 4](https://hackaday.com/2019/11/11/network-booting-the-pi-4/)

# Install
### Step 1: Flash Raspberry Pi SD Card
### Step X: Load You Tools
### Step X: IOTStack
IOTstack is a builder for docker-compose to easily make and maintain IoT stacks on the Raspberry Pi.
### Step X: Clone the SD Card
`rpi-clone` is a shell script that for cloning a **running** Raspberry Pi boot disk
(SD card or USB disk) to a destination disk which will then be bootable.
Destination disks are SD cards in the SD card slot or a USB card reader, USB flash disks, or USB hard drives

Run `rpi-clone -V sda` first just to get an idea of what happens.
If you like what you see, create a cron job in crontab with the command `rpi-clone sda -U`.
And that's it. Your Pi will now automatically back itself up completely to that disk, which can then be booted from.
No more worrying about your SD card dying on you out of nowhere. Enjoy!

* [RPi, Clone the Raspberry boot disk](https://pysselilivet.blogspot.com/2017/11/rpi-clone-raspberry-boot-disk.html)
* [Back Up Headless Raspberry Pi Zero with RPI-Clone or PiShrink](https://robotzero.one/headless-pi-zero-backup-clone/)
* [Setup rpi-clone](http://mitchhopto.com/rpi-clone.html)
* [Can I clone my entire Raspberry Pi for deployment onto another Raspberry Pi?](https://raspberrypi.stackexchange.com/questions/15102/can-i-clone-my-entire-raspberry-pi-for-deployment-onto-another-raspberry-pi/15118)

### Step X:
### Step X:
### Step X:
### Step X: Stress Testing
* [How to Stress Test Temperature on Raspberry Pi (Stressberry)](https://core-electronics.com.au/tutorials/how-to-stress-test-temperature-on-raspberry-pi.html)
* [Stress Testing the Raspberry Pi](https://www.instructables.com/Stress-Testing-the-Raspberry-Pi/)
* [Stress Testing Your Raspberry Pi (for Cooling and Overclocking)](https://core-electronics.com.au/tutorials/stress-testing-your-raspberry-pi.html)



------



# IoT Security
* [IoT without Internet.. Yes its possible :)](https://abhatikar.medium.com/iot-without-internet-yes-its-possible-938c43f0a75f)
* [Secure IoT for Successful IoT](https://abhatikar.medium.com/secure-iot-for-successful-iot-e8059bf63a0f)
* [IoT Network Deep Dive](https://abhatikar.medium.com/iot-network-deep-dive-f896e6de0ee5)
* [Secure remote access to your IoT devices](https://tinkerman.cat/post/secure-remote-access-to-your-iot-devices/)
* [Building a web-server and Reverse-proxy for IOT and arm devices](https://blog.craterx.com/webserver/)
* [I’m NUC Done Yet — Breathing New Life Into an Old Machine](https://medium.com/swlh/im-nuc-done-yet-breathing-new-life-into-an-old-machine-f819f5e1c131)



------



# Smart Home / IoT Platform
So what do I load onto my hardware platform to give me the full Smart Home / IoT Platform experiance?

* [#295 Raspberry Pi Server based on Docker, with VPN, Dropbox backup, Influx, Grafana, etc: IOTstack](https://www.youtube.com/watch?v=a6mjt8tWUws)
* [#352 Raspberry Pi4 Home Automation Server (incl. Docker, OpenHAB, HASSIO, NextCloud)](https://www.youtube.com/watch?v=KJRMjUzlHI8&t=849s)
* [Raspberry Pi as SMART HOME hub – (Video Tutorial)](https://peyanski.com/raspberry-pi-as-smart-home-hub-video-tutorial/)

### Raspberry Pi VPN Server
* [How to Make a Raspberry Pi VPN Server](https://dzone.com/articles/how-to-make-a-raspberry-pi-vpn-server)
* [PiVPN](https://pivpn.io/)

### Node-Red, InfluxDB, Mosquitto, and Grafana
* [Node-RED + Home Assistant How-To](https://www.youtube.com/watch?v=SuoSXVqjyfc)
* [#255 Node-Red, InfluxDB, and Grafana Tutorial on a Raspberry Pi](https://www.youtube.com/watch?v=JdV4x925au0)
* [Easy Home Assistant, Node-RED, InfluxDB and Grafana Integration](https://peyanski.com/home-assistant-node-red-influxdb-and-grafana-integration/)
* [The Script](https://tech.scargill.net/the-script/)



------




### Home Assistant
* [Raspberry Pi home automation system](https://www.geeky-gadgets.com/raspberry-pi-home-automation-system-30-04-2019/)
* [Hass.io](https://www.home-assistant.io/hassio/)
* [Home Assistant][07]
* [Burns Home Assistant](https://www.youtube.com/channel/UCSKQutOXuNLvFetrKuwudpg)
* [Creating an IoT Server with Home Assistant and MQTT](https://www.hackster.io/Richa1/creating-an-iot-server-with-home-assistant-and-mqtt-3d874d)
* [works with Framework for Internal Navigation and Discovery (FIND)](https://github.com/schollz/find3)
* [AWS IoT Environment for Home Assistant](https://www.hackster.io/mitchese/aws-iot-environment-for-home-assistant-899a1b)
* [Integrating Snips with Home Assistant](https://medium.com/snips-ai/integrating-snips-with-home-assistant-314723645c77)
* [Home Assistant Tutorials](https://www.youtube.com/playlist?list=PLLydq6ff7NvJ1ioQSVRCt2FJK9EFzRKWr)
* [Tested: Home Assistant integrations, remote access and voice commands](https://staceyoniot.com/home-assistant-integrations-remote-access-setup-review/)
* [Home Automation Covers Everything](https://hackaday.com/2020/07/13/home-automation-covers-everything/)

# Awesome Home Assistant
[Awesome Home Assistant](https://www.awesome-ha.com/)
is a curated list of Home Assistant resources.
It contains additional software, tutorials, custom integration, add-ons,
custom Lovelace cards & plugins, cookbooks, example setups, and much more.
The list is divided into categories and can be found here: https://www.awesome-ha.com/

### Home Assistant on non-RPi & Vagrant
* [Tutorial: How to Install Home Assistant on a Generic Linux System](https://diy.viktak.com/2020/07/tutorial-how-to-install-home-assistant-on-a-generic-linux-system.html)
* [Hass.io on Vagrant/VirtualBox for testing & add-on development](https://community.home-assistant.io/t/hass-io-on-vagrant-virtualbox-for-testing-add-on-development/29612)

#### Lovelace
Lovelace is the Home Assistant dashboard.

* [Home Assistant Demo](https://demo.home-assistant.io/#/lovelace/0)
* [Setting up Home Assistant Lovelace UI](https://www.youtube.com/watch?t=652&v=QEtX0uboxQA&feature=youtu.be)
* [EASY Lovelace Mobile Dashboard](https://youtu.be/5y6rhwr5Y8c)

* [How I built my Home Assistant touchscreen](https://www.youtube.com/watch?v=sv67ovOhjzQ)
* [Smart Home Control Panel - Best looking and most useful component | HA Dashboard](https://www.youtube.com/watch?v=KDpz3OvaU4c)
* [Create an AWESOME looking Lovelace Dashboard with no YAML Files in 2020! - Home Assistant - How to](https://www.youtube.com/watch?v=ixIGlEpvWXY)
* [Grid Cards in Home Assistant // Build your own AWESOME dashboard with 9 different types of cards!](https://www.youtube.com/watch?app=desktop&v=I96fN7uQ9PY)




------



# NextCloud
## rsync
## rclone (aka rsybc fir cloud storage)
Rclone ("rsync for cloud storage") is a command line program to sync files and directories to and from different cloud storage providers.

* [Linux Fu: Send In The (Cloud) Clones](https://hackaday.com/2020/11/10/linux-fu-send-in-the-cloud-clones/)



------



# Wireguard
* [Wireguard and NextCloud on a Raspberry Pi = Marvelous (Docker, IOTstack)](https://www.youtube.com/watch?v=7Pe-Cv0tnLs&feature=youtu.be)



------



# Smart Home / IoT Device Gateway

### Samsung SmartThings
### Pillips Hue


------



# Smart Home / IoT Devices

### ESPHome
Tasmota or ESPHome, together with Home Assistant are often seen together for home automation.
Most of the focus is on flashing and integrating readily available devices and sensors.
But which framework is better also for our do-it-yourself sensors and ESP32 boards.

* [Tasmota vs ESPhome: Who wins?](https://www.youtube.com/watch?v=nHaFM0tKOvY&feature=youtu.be)

Esphome shows a lot of promise.
It has over-the-air updates, it automatically compiles based on some yaml and uploads it! If it cant upload it (like the initial flash) I would simply set up the yaml, compile it, SCP it locally and flash it with https://github.com/espressif/esptool. If this worked, it would now support OTA updates.

Because its a bunch of yaml I can source control it too!

It uses passwords for both API integrations (home-assistant) and for OTA updates (same or different password) which makes me feel good.

Also: the server runs as a container, so its running on my Server network on nomad. I can simply go to http://esphome.service.consul and click “Upload” to update my IoT.

* [ESPHome](https://esphome.io/)
* [ESPHome Device Configuration Repository](https://www.esphome-devices.com/)

* [Home Automation With Home Assistant and ESPHome - First Steps](https://www.youtube.com/watch?v=xDbH-xPQtXU)
* [Home Automation with ESPHome & Home Assistant](https://www.youtube.com/playlist?list=PL2a34OA-WuyYvDbSaIthEk5dCs1BB2fB-)
* [Getting Started with ESPHome and Home Assistant](https://esphome.io/guides/getting_started_hassio.html)
* [How to get started with ESPHome and Sonoff](https://www.youtube.com/watch?v=soKuma8DJWQ)
* [Roll Your Own Automation With ESPHome](https://hackaday.com/2020/04/20/roll-your-own-automation-with-esphome/)
* [My Secure Smart Home](https://marcyoung.us/post/smart-home/)



------



# Manage Raspberry Pi with Ansible
* [Manage your Raspberry Pi fleet with Ansible](https://opensource.com/article/20/9/raspberry-pi-ansible)

## Consider using this model / tool for your next round of deveploment
    * [Set Up A Headless Raspberry Pi, All From Another Computer’s Command Line](https://hackaday.com/2018/11/24/set-up-a-headless-raspberry-pi-all-from-another-computers-command-line/)
    * [Headless Raspberry Pi Configuration](http://peter.lorenzen.us/linux/headless-raspberry-pi-configuration)
    * Make use of the following "Maiden Script" capabilities
        * [Finding the Raspberry Pis on the network](https://www.youtube.com/watch?v=hx7DB7Iqslk)
            * nmap -sn 192.168.1.0/24
            * sudo arp-scan 192.168.1.0/24
            * sudo arp-scan 192.168.1.0/24 | grep dc:a6:32
        * [Updated "firstboot" Release for Raspberry Pi OS](https://www.nedmcclain.com/raspberry-pi-os-firstboot/)
        * [raspberian-firstboot](https://github.com/nmcclain/raspberian-firstboot)
        * [Hardware bootstrapping with Ansible](https://opensource.com/article/19/5/hardware-bootstrapping-ansible)
        * [Safely enabling ssh in the default Raspbian Image](http://hackerpublicradio.org/eps.php?id=2356)
        * [Safely enabling ssh in the default Raspberry Pi OS](https://github.com/kenfallon/fix-ssh-on-pi)
    * Use Ansible
        * [Using Ansible to configure a Raspberry Pi (Home Assistant, LIRC, 433Utils, Z-Wave, etc.)](https://chester.me/archives/2019/04/using-ansible-to-configure-a-raspberry-pi-home-assistant-lirc-433utils-zwave-etc/)
        * [Starting with Ansible in Raspberry Pi](https://dev.to/project42/starting-with-ansible-in-raspberry-pi-2mhm)
        * [Ansible and Raspberry Pi](https://leonelgalan.com/2020/04/24/ansible-raspberry-pi.html)
        * [Manage your Raspberry Pi fleet with Ansible](https://opensource.com/article/20/9/raspberry-pi-ansible)
        * [Installing Ansible on the Raspberry Pi](https://www.theurbanpenguin.com/installing-ansible-on-the-raspberry-pi/)
        * [Initial Pi configuration via Ansible](https://qmacro.org/2020/04/05/initial-pi-configuration-via-ansible/)
        * [Test Ansible configuration](https://www.pidramble.com/wiki/setup/test-ansible)

# Manage Home Assistant with Ansible


------


# Automation Button
* [Automate LIKE A PRO! #01 - Automations Button. Learn to create an automation combined with a button](https://www.youtube.com/watch?v=lkMoEQmsqIk)

# Presence Detection
* [Install Presence Detection in Home Assistant](https://www.youtube.com/watch?v=H4_p61nqqAs)
* [Presence detection with Raspberry Pi, Home Assistant and Monitor](https://www.youtube.com/watch?v=-uRq4L6bxrI&feature=youtu.be)
* [monitor](https://github.com/andrewjfreyer/monitor) - Passive Bluetooth presence detection of beacons, cell phones, and other Bluetooth devices. Useful for mqtt-based home automation, especially when the script runs on multiple devices, distributed throughout a property.

# Integration with Alexa
* [How to do Simple Home Automation with Amazon Alexa || ESP8266](https://www.youtube.com/watch?v=ZyetXihGrM0)

# Things to Do
* [ESP32/ ESP-EYE: Browser Based Spectrum Analyzer](https://blog.squix.org/2019/08/esp32-esp-eye-browser-based-spectrum-analyzer.html)
* ESP queries for the weather and is a "sensor" for Home Assistant (include other envirnmental sensors to top it off) - [New WeatherStation Color Version published](https://blog.squix.org/2017/07/new-weatherstation-color-version-published.html)

### Things to Do with Home Assistant
* [TensorFlow Object Detection with Home-Assistant](https://www.hackster.io/robin-cole/tensorflow-object-detection-with-home-assistant-7cc04b)
* [SmartHome University](https://smarthome.university/)
* [16 Must-Have Automations I Run On My $2,000 Open Source Smart Home (And You Can As Well)](https://smarthome.university/automations/16-best-automation-ideas/)

### Telegram Bot
* [Telegram Bot Platform](https://telegram.org/blog/bot-revolution)
* [Using a Telegram Bot and a Demo Board to experiment with home automation](https://www.open-electronics.org/using-a-telegram-bot-and-a-demo-board-to-experiment-with-home-automation/)
* [How to make a responsive telegram bot](http://www.sohamkamani.com/blog/2016/09/21/making-a-telegram-bot/)
* [Home Automation: Playing With IoT, Temperature Sensors, Fans, and Telegram Bots](https://dzone.com/articles/home-automation-playing-with-iot-temperature-senso)
* [Telebot - The easy way to write Telegram bots in Node.js](https://github.com/kosmodrey/telebot)
* [Talking Telegram with the ESP8266](https://hackaday.com/2019/02/21/talking-telegram-with-the-esp8266/)
* [ESP8266 and Telegram Bot: Home Automation](https://dzone.com/articles/esp8266-and-telegram-bot-home-automation)
* [Quick And Dirty: Operate An Intercom Via Telegram](https://hackaday.com/2019/12/02/quick-and-dirty-operate-an-intercom-via-telegram/)
* [Set Up Telegram Bot on Raspberry Pi](https://www.instructables.com/id/Set-up-Telegram-Bot-on-Raspberry-Pi/)
* [home surveillance monitored via telegram](https://ginolhac.github.io/posts/diy-raspberry-monitored-via-telegram/#communication-with-motion-via-telegram)

### OpenRemote
* [OpenRemote](http://www.openremote.org/display/HOME/OpenRemote)

# Overclocking the Raspberry Pi
* [Adventures In Overclocking: Which Raspberry Pi 4 Flavor Is Fastest?](https://hackaday.com/2020/11/11/adventures-in-overclocking-which-raspberry-pi-4-flavor-is-fastest/)
* [Overclocking the Raspberry Pi 4](https://www.tomshardware.com/reviews/raspberry-pi-4-b-overclocking,6188.html)
* [Some Raspberry Pi 4s Can Now Overclock to 2.3 GHz. Here’s How.](https://www.tomshardware.com/how-to/raspberry-pi-4-23-ghz-overclock)

# Safe Shutdown with Super Capacitors
* [Safe Shutdown for Raspberry Pi with Super Capacitors](https://quantumenergygenerator.com/blog/133-safe-shutdown-for-raspberry-pi-with-super-capacitors/)
* [Is there a simple and cheap way to protect your super caps? How?](https://www.youtube.com/watch?v=NsTAyD2i3rc)
* [Pimp my Raspberry: Automatic fan, automatic shutdown, automatic Python](https://www.youtube.com/watch?v=P5o0PpfzuW8)

* [Let's Learn About Super Capacitors! (A Practical Guide to Super Capacitors)](https://www.instructables.com/Lets-learn-about-Super-Capacitors-A-Practical-G/)
* [Hybrid Supercapacitors Are — Well — Super](https://hackaday.com/2020/03/14/hybrid-supercapacitors-are-well-super/)
* [Rapid Charging Supercapacitors](https://hackaday.com/2020/09/16/rapid-charging-supercapacitors/)
* [How does a Supercapacitor Work?](https://batteryuniversity.com/learn/article/whats_the_role_of_the_supercapacitor)

* [Is there a simple and cheap way to protect your super caps? How?](https://www.youtube.com/watch?v=NsTAyD2i3rc)
* [Simple Balancing and Protection Method for Supercaps](https://www.youtube.com/watch?v=clMjGGEZRYw)
* [Solar harvesting into supercapacitors](https://www.tindie.com/products/jaspersikken/solar-harvesting-into-supercapacitors/)

# Linux Security Harding
* [25 Hardening Security Tips for Linux Servers](https://www.tecmint.com/linux-server-hardening-security-tips/)
* [Linux hardening: A 15-step checklist for a secure Linux server](https://www.computerworld.com/article/3144985/linux-hardening-a-15-step-checklist-for-a-secure-linux-server.html)
* [Linux Server Security: 10 Linux Hardening & Security Best Practices](https://securityboulevard.com/2020/08/linux-server-security-10-linux-hardening-security-best-practices/)
* [40 Linux Server Hardening Security Tips](https://www.cyberciti.biz/tips/linux-security.html)

# Uninterruptible Power Supply (UPS)
* See "Step 6: Zero Battery Supply (Optional)" in `getting-started-with-home-assistant.md`
* See "Battery Supply + Power Monitoring" in `advanced-machine-vision-environment-for-raspberry-pi.md`
* [UPS PIco - Uninterruptible Power Supply with Peripherals and I2C control Interface](http://www.rpiblog.com/2015/01/ups-pico-uninterruptible-power-supply.html)
* [Ultimate Battery Backup Mod](http://hackaday.com/2016/03/05/ultimate-battery-backup-mod/)
* [A Super UPS For The Pi](https://hackaday.com/2020/11/05/a-super-ups-for-the-pi/)
* [PiVoyager: the smart UPS for the Raspberry Pi](https://www.tindie.com/products/omzlo/pivoyager-the-smart-ups-for-the-raspberry-pi/)
* [PiVoyager: installation and tutorial](https://www.omzlo.com/articles/pivoyager-installation-and-tutorial)

Adafruit's [PowerBoost 1000C Charger](https://www.adafruit.com/products/2465)
is a DC/DC boost converter module
that can be powered by any 3.7V LiIon/LiPoly battery,
and convert the battery output to 5.2V DC for running your 5V projects.
Best of all, it has built-in load-sharing battery charger circuit.
So it will automatically switch over to the USB power when available,
instead of continuously charging/draining the battery,
making it a Uninterruptable Power Supply (UPS).

# Smart Analog Doorbell
* [Making my analog doorbell smart by simply attaching a $7 sensor to it](https://partofthething.com/thoughts/making-my-analog-doorbell-smart-by-simply-attaching-a-7-sensor-to-it/)
* [DIY ESP32 Video Doorbell Locks Out Big Brother](https://hackaday.com/2020/12/22/diy-esp32-video-doorbell-locks-out-big-brother/)

# Indoor Localization
* [How to set up Indoor Localization with Crownstone and Home Assistant](https://www.youtube.com/watch?v=1BONZ-ryKeA)

# Wyze Camera
Bust you use the cloud service
* [Wyze Cam V3 Review - Unboxing, Features, Setup, Installation, Testing, Video & Audio Quality](https://www.youtube.com/watch?v=WQZ_xExcwto)
* [Wyze Cam v3: Unbelievable Night Vision for $20](https://www.youtube.com/watch?v=EwP7p2Z7hOA&feature=emb_rel_end)
* [Wyze Review](https://www.security.org/security-cameras/wyze/review/)
* [Can Wyze Cameras Be Hacked (and How You Can Stop Them)](https://thesecuritycameraguy.com/can-wyze-cameras-be-hacked-and-how-you-can-stop-them/)
* https://www.amazon.com/gp/customer-reviews/R1GN9BTTWQZK3P/ref=cm_cr_othr_d_rvw_ttl?ie=UTF8&ASIN=B076H3SRXG
* https://www.amazon.com/gp/customer-reviews/R2NX523G3R0CZ8/ref=cm_cr_othr_d_rvw_ttl?ie=UTF8&ASIN=B076H3SRXG
* https://www.amazon.com/gp/customer-reviews/RV54YRZNI6I6R/ref=cm_cr_dp_d_rvw_ttl?ie=UTF8&ASIN=B076H3SRXG

* [OFFICIAL RTSP Support! Use Wyze cams with any NVR | Smart Home | Home Assistant](https://www.youtube.com/watch?v=YPiHs44i0TA)
* [How to Set Up Wyze Official RTSP Firmware : Use Wyze Cams with Network DVRs!](https://www.youtube.com/watch?v=e0SgzWwt7yI)
* [3 Of The Best Ways To Configure Your Wyze Cameras](https://www.youtube.com/watch?v=Io4eNaTjf08)
* [Wyze Cam Outdoor | App setup | Features](https://www.youtube.com/watch?v=02yQ6dT15Lc)

* [ESP32-CAM Video Streaming Web Server (works with Home Assistant)](https://randomnerdtutorials.com/esp32-cam-video-streaming-web-server-camera-home-assistant/)
* [ESP32-Cam Does Time Lapse](https://hackaday.com/2020/01/28/esp32-cam-does-time-lapse/)

# Shelly Flood Sensor
* [Shelly Flood Sensor Review](https://hometechhacker.com/shelly-flood-sensor-review/)
* [HOME ASSISTANT SHELLY FLOOD | Detect any leakages immediately](https://www.youtube.com/watch?v=amJcuFv2Roo)

# WatchDog
* [Edge Networking’s Last Resort](https://medium.com/@nedmcclain/edge-networkings-last-resort-890b536ab960)

# Nabu Casa
Nabu Casa (built by the founder of Home Assistant),
claims to be the missing cloud piece for Home Assistant.

* Keep's your Home Assistant secure by deal with dynamic DNS, SSL certificates, and eliminating the need to open ports on your router.
* Supports the Home Assistant by paying for the infrastructure to build new releases and pay for hosting the community forums.
* Text to Speech is part of your subscription. This allows you to turn any text into natural sounding audio clips to be played on any speaker that Home Assistant supports.

# Smart Thermostat
* [Building a better thermostat with Home Assistant](https://opensource.com/article/18/8/build-thermostat-open-source-tools)

# MQTT
* [Understanding MQTT: How Smart Home Devices Communicate](https://www.youtube.com/watch?v=NjKK5ab0-Kk)
* [MQTT Essentials](https://www.hivemq.com/tags/mqtt-essentials/)







[01]:https://www.raspberrypi.org/products/raspberry-pi-4-model-b/
[02]:https://www.amazon.com/Samsung-250GB-SATA-Internal-MZ-N6E250BW/dp/B07864V6CK
[03]:https://www.argon40.com/argon-one-m-2-case-for-raspberry-pi-4.html
[04]:https://blog.startech.com/post/all-you-need-to-know-about-uasp/
[05]:https://www.yodeck.com/docs/display/YO/Configure+Argon+1+case+with+Fan+and+Power+Button
[06]:https://www.youtube.com/watch?v=zVhYvvrGhMU
[07]:https://home-assistant.io/
[08]:http://www.openhab.org/index.html
[09]:https://www.edgexfoundry.org/devkits/community-devkit/
[10]:https://www.lfedge.org/
[11]:https://www.smartthings.com/
[12]:https://iot.mozilla.org/
[13]:https://developer.amazon.com/en-US/alexa
[14]:https://cloud.google.com/iot-core
[15]:https://azure.microsoft.com/en-us/overview/iot/
[16]:http://www.thingweb.io/
[17]:https://www.w3.org/WoT/
[18]:https://smarthome.university/your-smart-home-platform-home-assistant-vs-openhab/
[19]:https://www.purdylounge.com/openhab-vs-home-assistant/
[20]:https://www.argon40.com/argon-one-m-2-case-for-raspberry-pi-4.html
[21]:https://calaos.fr/en/
[22]:https://domoticz.com/
[23]:http://misterhouse.sourceforge.net/
[24]:https://www.openmotics.com/
[25]:http://opennethome.org/
[26]:https://www.cdw.com/content/cdw/en/articles/computersandaccessories/2020/10/21/m2-sata-vs-nvme-ssds.html
[27]:https://www.youtube.com/watch?v=hx7DB7Iqslk
[28]:https://www.linux-magazine.com/Online/Features/Using-ARP-for-Network-Recon
[29]:https://www.raspberrypi.org/documentation/raspbian/updating.md
[30]:https://www.raspberrypi.org/products/raspberry-pi-4-model-b/?resellerType=home
[31]:https://www.raspberrypi.org/software/
[32]:http://www.amazon.com/gp/product/B00GVRHON2?psc=1&redirect=true&ref_=oh_aui_detailpage_o00_s01
[33]:http://www.wirelesshack.org/best-micro-sd-card-for-the-raspberry-pi-model-2.html
[34]:http://www.jeffgeerling.com/blogs/jeff-geerling/raspberry-pi-microsd-card
[35]:https://www.bitpi.co/2015/02/11/how-to-change-raspberry-pis-swapfile-size-on-rasbian/
[36]:https://cdn-learn.adafruit.com/downloads/pdf/adafruits-raspberry-pi-lesson-5-using-a-console-cable.pdf
[37]:https://www.raspberrypi.org/documentation/hardware/raspberrypi/bcm2711_bootloader_config.md
[38]:https://magpi.raspberrypi.org/articles/argon-one-m-2-review
[39]:https://www.raspberrypi.org/documentation/hardware/raspberrypi/booteeprom.md
[40]:
[41]:
[42]:
[43]:
[44]:
[45]:
[46]:
[47]:
[48]:
[49]:
[50]:
