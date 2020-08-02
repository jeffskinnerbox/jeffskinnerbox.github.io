

* [Videos: NVIDIADeveloper](https://www.youtube.com/channel/UCBHcMCGaiJhv-ESTcWGJPcw)
* [Train Your Machine Learning Models on Google’s GPUs for Free — Forever](https://hackernoon.com/train-your-machine-learning-models-on-googles-gpus-for-free-forever-a41bd309d6ad)
* [Google Colab Free GPU Tutorial](https://medium.com/deep-learning-turkey/google-colab-free-gpu-tutorial-e113627b9f5d)
* [FloydHub is Heroku for Deep Learning](https://www.floydhub.com/)







################################################################################

# NVIDIA Jetson TX1
The "Nvidia Jetson" is a brand name for a series of computation processor boards from Nvidia.
The Jetson [TK1][14], [TX1 and TX2][13] models all are carrying a [Tegra][12] processor from Nvidia.
I have heard of the NVIDIA Jetson TX1 but was put off by its $600 price tag.
I just couldn't justify pay this much money to satisfy my curiosity.
But then in December of 2017, I got an email from NVIDIA,
offering the [NVIDIA Jetson TX1 SE][29] (SE = student edition ... doesn't come with a built in camera) for $200.
It's steep, but you're getting a mighty powerful ARM development board
at this price was a nice find.

In 1999, the [ASCI Blue Pacific][06] [super computer][07] was brought
on-line at Lawrence Livermore National Laboratory, running at 1T FLOPs (nearly 4T FLOPs at peak),
to replace live weapons testing by simulating nuclear weapon tests.
(ASCI stand for [Accelerated Strategic Computing Initiative][05]).

Unlike many other small Linux machines,
the Jetson TX1 wants you to have a desktop machine with 64-bit Ubuntu running on it in order to get started.
This makes things simpler for loading the many [software installations supported by the Jetson][20].

## How does the Jetson TX1 Compare
The [numbers supplied by NVIDIA report][04] that the Jetson TX1 performance beats
out an Intel Core i7 6700K Skylake CPU when it comes to deep learning,
but where it really excels is power efficiency.

Because of the small size of the Jetson TX1 processor,
it is tempting to compare other small machines like the various Raspberry Pis, BeagleBone Black, etc.
Any such comparison should look beyond the CPU and consider the performance advantage
offered by the NVIDIA Maxwell GPU.
The GPU can perform many general-purpose tasks, as well as,
image manipulation and mathematics used in high-end robotics.
See some benchmarking done [here][19].

For comparison, a handheld calculator performs relatively few FLOPS
([What is a FLOP?][10]).
A computer response time below 0.1 second in a calculation context is
usually perceived as instantaneous by a human operator,
so a simple calculator needs only about 10 FLOPS to be considered functional ([source][08]).
The NVIDIA Jetson TX1 Maxwell architecture
with quad-core ARM Cortex-A57, 4GB RAM, 16GB of [eMMC storage][18], and integrated 256-core Maxwell GPU
delivering over 1 TeraFLOPs of performance while consuming 10 watts of power ([source][17]).
$10K can buy you two [Nvidia Titan V GPUs][49] and a [Intel i7 8700K][50], [cranking out 217 TeraFLOPs][48].




[understanding supercomputer performance][09]
[What makes a computer "super"?][11]
[floating point operations per second (FLOPS)][08]
* [Everything You Need To Know About The NVIDIA Jetson TX1 Performance](https://www.phoronix.com/scan.php?page=article&item=nvidia-jtx1-perf&num=1)
* [The NVIDIA Jetson TX1 Developer Kit: A Tiny, Low Power, Ultra Fast Computer](https://www.linux.com/learn/nvidia-jetson-tx1-developer-kit-tiny-low-power-ultra-fast-computer)
* [Nvidia Jetson Nano Review](https://www.arnabkumardas.com/platforms/nvidia/nvidia-jetson-nano-review-and-benchmark/)
* [nVidia’s Jetson TX1: Embedded Computer Vision](https://blog.hyperiondev.com/index.php/2017/11/15/nvidias-jetson-tx1-embedded-computer-vision/)
* [NVIDIA Jetson TX2 Delivers Twice the Intelligence to the Edge](https://devblogs.nvidia.com/jetson-tx2-delivers-twice-intelligence-edge/)
* [Embedded Linux Wiki: Jetson TX1](https://elinux.org/Jetson_TX1)
* [Benchmarking the Xnor AI2GO Platform on the Raspberry Pi](https://blog.hackster.io/benchmarking-the-xnor-ai2go-platform-on-the-raspberry-pi-628a82af8aea)
* [RK3399Pro vs Raspberry Pi 4 vs Jetson Nano – AI and Deep Learning Capabilities](https://www.seeedstudio.com/blog/2019/12/05/rk3399pro-vs-raspberry-pi-4-vs-jetson-nano-ai-and-deep-learning-capabilities/)




* https://www.phoronix.com/scan.php?page=search&q=Jetson+TX1
* [NVIDIA Doubles TX1 Deep Learning Speed & Efficiency With Software Upgrade](https://www.phoronix.com/scan.php?page=news_item&px=NVIDIA-JetPack-2.3)
* [NVIDIA JTX1: Finally An Exciting 64-bit ARM Board!](https://www.phoronix.com/scan.php?page=article&item=nvidia-tegra-jtx1&num=1)

* [Getting Started with the NVIDIA Jetson Nano Developer Kit](https://blog.hackster.io/getting-started-with-the-nvidia-jetson-nano-developer-kit-43aa7c298797)
* [Hands-On: New Nvidia Jetson Nano is More Power In A Smaller Form Factor](https://hackaday.com/2019/03/18/hands-on-new-nvidia-jetson-nano-is-more-power-in-a-smaller-form-factor/)
* [Hands On With Nvidia's New Jetson Nano](https://www.extremetech.com/computing/288153-hands-on-with-nvidias-new-jetson-nano)
* [Google Coral Edge TPU vs NVIDIA Jetson Nano: A quick deep dive into EdgeAI performance](https://blog.usejournal.com/google-coral-edge-tpu-vs-nvidia-jetson-nano-a-quick-deep-dive-into-edgeai-performance-bc7860b8d87a)



# Jetson TX1 Enclosure
For a developer kit enclosure,
I purchased the [JIANGRUI Acrylic TXShell](https://www.amazon.com/gp/product/B072VXYCRZ/)
off of Amazon.
I did a considerable amount of online research
other acrylic shell providers, metal cases, 3d printed enclosures),
and in the end, it met my most important needs at a reasonable price.

* .STL format - [A 3D Printed case for Nvidia Jetson TX1](https://github.com/yxftju/JETSON-TX1-case)
* .STL format - [Jetson-TX1/TX2-enclosure-3D](https://github.com/arrfou90/Jetson-TX1)
* OpenSCAD format - [NVIDIA Jetson TX1 Development Board Case](https://github.com/gpmidi/Jetson-TX1)
* [3D Printering: Making A Thing With OpenSCAD](https://hackaday.com/2013/12/11/3d-printering-making-a-thing-with-openscad/)

* [JETSON-TX1-case - A 3D Printed case for Nvidia Jetson TX1](https://github.com/yxftju/JETSON-TX1-case)
    * Imported into [Onshape](https://www.onshape.com/open-source)


## Jetson TX2
* [NVIDIA Jetson TX1 and TX2 Comparison](https://www.youtube.com/watch?v=hz9000u5pw0)
* [NVIDIA Jetson TX2 Delivers Twice the Intelligence to the Edge](https://devblogs.nvidia.com/jetson-tx2-delivers-twice-intelligence-edge/)

## Jetson Nano

## Jetson Xavier NX
The Jetson Xavier NX delivers up to 21 Trillions Operations per Second (TOPS) while using up to 15 watts of power.


* [Nvidia Jetson Xavier NX review: Redefining GPU accelerated machine learning](https://www.androidauthority.com/jetson-xavier-nx-dev-kit-review-1117930/)

## Boot Options
[Boot off of SD Card](https://jkjung-avt.github.io/sd-rootfs-on-tx1/)
[Boot off of eMMC]()
[Boot off of SSD]()


################################################################################


Flash Jetpack on Jetson TX2 Dev Kit with Ubuntu Virtualbox VM - https://scratchrobotics.com/2019/06/11/flash-jetpack-on-jetson-tx2-dev-kit-with-ubuntu-virtualbox-vm/



# Physical Assembly - DONE
There is no physcial assembly for the Jetson TX1.
The develoment kit is ready to be powered up and loaded with software,
but I also purchased an enclosure and [SSD drive][32] for the device.

In addition, you're likely to want Serial Console connection to your Jetson TX1.
This can be done via UART 0 on the GPIO headers.
To make Serial Console access easy,
purchase an Adafruit [USB to TTL Serial Cable – Debug / Console Cable for Raspberry Pi][24].

## Step 1: Load Jetson TX1 on the Enclosure - DONE
I purchased from Amazon an enclosure for the Nvidia Jetson TX1 Developer Kit
called the [JIANGRUI Acrylic TXShell][21].
This open enclosure comes with a SATA power/data extension cable
that lets you expand Jetson TX1 storage with a SSD drive.
The enclosure assembly is very simple but tedious.

## Step 2: Installing SSD Drive - DONE
The on-board 16GB of [eMMC storage][18] is more than enough room for Linux and a large application,
but that amount can easily be overrun if a lot of data storage is needed.
To get more storage and [better perfromance][22],
I installed a [Samsung 850 PRO - 256GB][16] SSD drive.
I could use the SSD drive as supplemental storage,
or choose to use the drive as the root directory of the operating system.
I want to do the later but my intial boot up will be using the on board eMMC storage
and I will then move the eMMC contents to the SSD.

Until you are ready to do the Linux mount of the SDD,
do not attach the SATA power/data extension cable to the Jetson TX1 board.
This is just a pre-caution to make sure the Jetson TX1 doesn't get confused on its first boot up.

To do the SSD installation, view the videos "[Develop on SSD - NVIDIA Jetson TX Dev Kits][23]".
and "[Install Samsung SSD on NVIDIA Jetson TX1][31]".

## Step 3: Establish Serial Console Access - DONE
A Serial Console is a ubiquitous tool when the development kit has issues
but I'm going to use it to avoid the need for a monitor.
In my case, I'm are going to connect a Ubuntu PC up to the
Jetson TX1 Development Kit through UART 0 on the GPIO headers.
UART 0 is the serial console on the Jetson TX1.
The Jetson TX1's UART 0 is is accessible via 2.54mm headers,
which make interfacing easy with an
Adafruit [USB to TTL Serial Cable – Debug / Console Cable for Raspberry Pi][24].
The post "[Serial Console – NVIDIA Jetson TX1][26]" give additional documentation.

The wiring is straight forward (see [Jetson TX1 Pinout][25] and [this write-up][26])
and connection speed is 115200, with 8 bits, no parity, and 1 stop bit (115200 8N1):

1. Make sure that the Jetson is powered off
2. Jetson TX1 J21 Pin 6 (GND) -> Cable GND (Black Wire)
3. Jetson TX1 J21 Pin 8 (UART 0 TXD) -> Cable RXD (White Wire)
4. Jetson TX1 J21 Pin 10 (UART 0 RXD) -> Cable TXD (Green Wire)
5. Then plug the USB connector into the host machine

## Step X: Power Up / First Boot from eMMC - DONE
Plug the power adapter into the the Jetson board and then into the power outlet.
The board might powers on,
but more likely you need to press and release the power button on the device
(goto [5:24 minutes on this video](https://www.youtube.com/watch?v=9AWfW7cAb1Y)).

Check to make sure that you can find the USB port the Jetson device is mapped
to a port and then login with `screen`:

```bash
# check to make sure that you can see the serial console cable usb connection
# and get vendor / product id
$ lsusb | grep Cygnal
Bus 003 Device 096: ID 10c4:ea60 Cygnal Integrated Products, Inc. CP2102/CP2109 UART Bridge Controller [CP210x family]

# find where the USB port to the jetson is mapped
$ ls /dev/ttyUSB*
/dev/ttyUSB0

# enter console
# 115200 baud, 8 data bits, no parity, one stop bit, VT100 terminal emulation, ignore hang-ups
screen /dev/ttyUSB0 115200,cs8,-parenb,-cstopb,-hupcl
```

At this point you should have console access to the Jetson TX1.
You will be user `ubuntu`, with password `ubuntu`,
within the `/home/ubuntu` home directory on the Jetson TX1.
You should also see the following banner on the console:

```
Welcome,

Instructions on how to install the NVIDIA Linux driver binary
release which is located at : ${HOME}/NVIDIA-INSTALL

Step 1)
Change directories into the NVIDIA installation directory:
    cd ${HOME}/NVIDIA-INSTALL

Step 2)
Run the installer script to extract and install the NVIDIA
Linux driver binary release:
    sudo ./installer.sh

Step 3)
Reboot the system to have the Ubuntu Desktop UI come up.

NOTE:
username: ubuntu
password: ubuntu

Visit https://developer.nvidia.com/embedded-computing to
download the latest software release and product documentation
```

>**NOTE:** The [in box documentation][44], [online documentation][45],
>[alternate documentation][47] and [videos][46] for the Jetson TX1,
>at best, makes passing reference to the above instructions.
>Never the less, this is a key step to make the Jetson TX1 ready
>for subsequent steps of OS flashing and SDK installation.

The Jetson TX1 comes with a pre-installed Ubuntu 14.04 LTS OS.
The Nvidia drivers for it should be installed when it is booted for the first time.
There will be a directory `NVIDIA-INSTALL` containing the installer
script to extract and install the NVIDIA Linux driver binary.
The commands to do it are as follows:

```bash
# list the current version of linux running
$ uname -a
Linux tegra-ubuntu 3.10.96-tegra #1 SMP PREEMPT Tue May 17 16:29:05 PDT 2016 aarch64 aarch64 aarch64 GNU/Linux

# install the nvidia linux drivers, bootloader, etc.
cd ${HOME}/NVIDIA-INSTALLER
sudo ./installer.sh

# reboot to finish the install
sudo reboot
```

Now shutdown the OS (via `sudo shutdown -h now`) or it may appear to hang.
In any event, remove the power.

## Step X: Prepare for JetPack Install (Force USB Recovery Mode)
To update your system, you must be in Force USB Recovery Mode (RCM)
so that you can transfer system software to the Jetson TX1.
When in Force USB Recovery Mode,
you can update system software and write to the boot loader,
boot configuration table (BCT),
and write partition configuration to the device.

**When instructed to place the Jetson TX1 in Force USB Recovery Mode**,
follow the procedure listed below ([check out this video][30]):

1. Power down the device. If connected, remove the AC adapter from the device.  The device must be powered OFF, and not in a suspend or sleep state.
2. Connect the Micro-B plug on the USB OTG cable to the Recovery (USB Micro-B) Port on the Jetson TX1 and the other end to an available USB 3.0 port on the host PC.
3. Connect the power adapter to the device.
4. Press the Power Button (right most button)
5. Press and hold down the Forced Recovery Button (second button from the right)
6. Press and release the Reset Button (left most button)
7. Wait 2 seconds and release the RECOVERY FORCE button.



------


* [Embedded AI: The Nvidia Jetson TX1 - Part 1](https://fizzylogic.nl/2017/11/09/embedded-ai-the-nvidia-jetson-tx1/)

* [Setting up Nvidia TX1 Dev board with JetPack 3.2 and SSD with a bonus](https://blog.gauravagarwalr.com/posts/2018-04-10-setting-up-nvidia-tx1/)
* [Working on Jetson TX1 Development Board](https://hub.packtpub.com/working-on-jetson-tx1-development-board-tutorial/)
* [HEADLESS SETUP - Jetson Nano](https://www.jetsonhacks.com/2019/08/21/jetson-nano-headless-setup/)
* [How to install JetPack on Jetson TX1](http://www.bojankomazec.com/2017/02/how-to-install-jetpack-on-jetson-tx1.html)

* [How to configure your NVIDIA Jetson Nano for Computer Vision and Deep Learning](https://www.pyimagesearch.com/2020/03/25/how-to-configure-your-nvidia-jetson-nano-for-computer-vision-and-deep-learning/)
* [Getting Started with NVIDIA Jetson Nano Devkit: Inference using Images, RTSP Video Stream](https://www.cnx-software.com/2019/12/07/getting-started-with-nvidia-jetson-nano-devkit-inference-using-images-rtsp-video-stream/)

# Establish Host and JetPack Ready for Flashing Jetson TX1 - DONE
The Jetson TX1 Dev board needs to be updated with Nvidia's JetPack SDK
but the dev board is not directly flashable via a USB stick.
You need a host machine (with Ubuntu OS)
where you setup the dev board using the '[Force Recovery USB Mode][30]'.
You'll need to download the JetPack SDK to the host and install to the target Jetson TX1,
taking about ~2 hour in total.

To make thing a bit more challeging, the Jetson TX1 is at its [end of life as of January 15, 2019][27].
JetPack 3.3 is the final JetPack to support Jetson TX1 Developer Kit,
but I installed 3.4 which the documentation says should work.
Linux for Tegra (L4T), aka Linux Driver Package,
sustaining releases for Jetson TX1 will continue to be made as deemed necessary.

The JetPack SDK includes an Ubuntu Linux-based cross platform development system,
an Ubuntu OS customized for the Jetson TX1,
and can then flash the Jetson TX1 via the USB interface.
[JetPack SDK includes][28] the latest Linux Driver Package (L4T) with Linux operating system
and CUDA-X accelerated libraries,
and APIs for AI Edge application development.
It also includes samples, documentation, and developer tools for both host computer and developer kit,
and supports higher level SDKs such as DeepStream for streaming video analytics and Isaac for robotics.

## My Flashing Configuration
The installation of the JetPack platform on the Jetson TX1 is a bit involved.
For one thing, it requires a separate Ubuntu 16.04 (aka host) where JetPack will be downloaded
and built for the Jetson TX1 (aka target).
The host Ubuntu 16.04 must be connected to the target Jetson TX1 via Ethernet and USB OTG cable.
All this requires two HDMI monitors and two keyboard + mouse, and all the required cabling.
Unfortunately, I only have one monitor & PC so I'll be doing this via
a virtual machine using[Vagrant][33] & [VirtualBox][34] on my Linux desktop.

My approach isn't unique, but it does have its challeges.
And to make it worse, the Nvidia docuemtion is old / poor / non-existent.
Here are some of the thing that tripped me up and
required multiple cycles of rework from me before I got things right:

* After you run the `installer.sh` script, you can't boot-up the OS any more; it hangs.
This is to be expected, just continue to follow the procedures.
* Make sure to allocate disk space on your host VM to hold everything
being built to support the flashing of the Jetson TX1.
I allocated 150GB of storage.
* Both the Jetson TX1 and the VM host must be IP addressable on your LAN so they can communicate via Ethernet.
This requires a "public_network" be established within the Vagrantfile.
* Make sure the USB connection on the VM host is a USB 3.0, the same as the Jetson TX1.
Also, make sure you use the USB OTG cable provided with the kit when interconnecting the VM host with the Jetson TX1.
* The `sdkmanager` runs long and you are likely to be prompted three or four times,
asking if you wish to terminate ... do not.
As long as the percentages continue to increase (which appears to slow when reaching >95%),
you are making progress.

Sources:
* [Updating a Nvidia Jetson TX1 Through Windows via VirtualBox with Jetpack](https://medium.com/@connerfritz/installing-the-latest-jetpack-on-a-nvidia-jetson-tx1-on-windows-through-virtualbox-8adef92e7171)
* [Install Jetson TX1 Jetpack using VM (VirtualBox on macOS)](http://qml.610t.org/FreeBSD/TX1_Jetpack_VM.html)
* [Flash Jetpack on Jetson TX2 Dev Kit with Ubuntu Virtualbox VM](https://scratchrobotics.com/2019/06/11/flash-jetpack-on-jetson-tx2-dev-kit-with-ubuntu-virtualbox-vm/)
* [NVIDIA Jetson TX1 Development Kit Unboxing and Demonstration](https://www.youtube.com/watch?v=9AWfW7cAb1Y)
* [JetPack 2.0 – NVIDIA Jetson Development Pack – Jetson TX1](https://www.jetsonhacks.com/2015/11/18/jetpack-2-0-nvack-jetson-tx1/)
* [JetPack 2.0 Install on NVIDIA Jetson TX1](https://www.youtube.com/watch?v=DyhRMjaUknQ)
* [How to install JetPack on Jetson TX1](http://www.bojankomazec.com/2017/02/how-to-install-jetpack-on-jetson-tx1.html)
* [Checking Out the Jetson TX1](https://www.electronicdesign.com/technologies/microprocessors/article/21802850/checking-out-the-jetson-tx1)
* [Jetson TX1 and TX2 Developer Kits User Guide (July 20, 2017)](https://developer.download.nvidia.com/embedded/L4T/r28_Release_v1.0/Docs/Jetson_TX1_and_TX2_Developer_Kits_User_Guide.pdf)
* [Jetson TX2 Developer Kits User Guide (December 17, 2019)](https://developer.download.nvidia.com/embedded/L4T/r28_Release_v1.0/Docs/Jetson_TX1_and_TX2_Developer_Kits_User_Guide.pdf)

## Step 1: Create an Ubuntu Host - DONE
Nvidia has a very odd installation procedure where you must run the Jetpack SDK
on a separate Linux computer while the Jetson TX1 is connected via USB and the Jetson TX1 is in Recovery Mode.
Since I didn't have a spare computer and monitor laying around,
I choose to setup a virtual machine using [Vagrant][33] & [VirtualBox][34] on my Linux desktop.
The [Vagrantfile I used to set this up on GitHub][35], but using a Ubuntu 16.04 Vagrant box.
(This isn't very tricky and I'm not the first to do this,
see "[Updating a Nvidia Jetson TX1 Through Windows via VirtualBox with Jetpack][36]".)

######################## NOT USED ?? ###########################################
## Step X: Hardware Setup for Jetson TX1 and Ubvuntu Host
To flash the Jetson TX1 with software,
you need to connect the TX1, using a USB cord to the host machine,
connect your TX1 via ethernet port to a LAN (where the Host is connected to),
and you need to have a console cable connect with the Jetson TX1 via a Ubuntu host USB port
(giving you terminal access the Jetson TX1).

>**NOTE:** The installation is usually smooth but if you see it hang near the line
>"Sending BCT..." or something similar, either change the port on your host machine or change the cord.
>I had it working using a different cord.

to the host machine and switch to 'Force Recovery USB Mode'.

Press enter, once you are ready. Most probably everything will install smoothly, as it did in my case. You might lose wifi connectivity on the host (if using wifi) a couple of times. Don't worry, it happens. The most important thing is that the connection on the target is not flaky.
######################## NOT USED ?? ###########################################

## Step X: Download JetPack to Ubuntu Host - DONE
Nvidia offers a software development kit (SDK),
which contains all of the software needed for building computer vision and deep learning applications,
along with the target OS to flash the development board.
The [Nvidia Jetson TX1 Developer Kit site][37] informs you on what version of JetPack is supported on the Jetson TX1.
It states that "Jetson TX1 continues to be supported by JetPack 4.x releases, built on the L4T r32 codeline".

I went to the [JetPack SDK download site][38], which took me to the [Jetpack 4.3 Archive][39],
where I download the  Jetson AGX Xavier series, Jetson TX2 series, Jetson TX1, and Jetson Nano
[NVIDIA SDK Manager][40] a file called `sdkmanager_0.9.12-4180_amd64.deb`.
Then follow the link on the site to these instructions "[Install Jetson Software with SDK Manager][42]
(in my case, version 1.1.0.6343).


```bash
# download the nvidia sdk manager package
# put in browser https://developer.nvidia.com/embedded/dlc/nv-sdk-manager

# go to where the package has been downloaded
cd ~/Downloads

# install the sdk manager
sudo apt install ./sdkmanager_0.9.12-4180_amd64.deb

# start the sdk manager
# you are likely to be asked to do an sdk manager upgrade ... do so
cd ~
sdkmanager
```

[NVIDIA SDK MANAGER system requirements](https://docs.nvidia.com/sdk-manager/system-requirements/index.html)

You then follow the procedures outline in the online [NVIDIA SDK Manager Documentation][43]
and the the instructions provide by the NVIDIA SDK Manager applications.

* Enter login and password you used when registering your Jetson TX1 with Nvidia
* Update the NVIDIA SDK Manager as requested (new version is 1.1.0.6343). You'll be kicked out and your need to start again.
* Within "Step 1", make sure to check all the topics.  Select JetPack 4.3 and DeepStream SDK for install
* I used the default download folder (`~/Downloads/nvidia/sdkm_downloads` which already exists)
and target HW image folder (`~/nvidia/nvidia_sdk` which you must create).
Also check "Download now.  Install later." and check the terms & conditions.
* I executed "Step 3" which took about 30 minutes to complete. At this time, you will first create an OS directory system for the Jetson and then you will flash the Jetson OS.

############################# REMOVE AFTER TESTING #############################

I booted up the Jetson and plugged in a spare console cable and successfully got the following from `lsusb`:
`Bus 002 Device 003: ID 067b:2303 Prolific Technology, Inc. PL2303 Serial Port`

What I believe I saw on my VM when connecting the Jetson and running `lsusb`:
`Bus 003 Device 104: ID 0955:7721 NVIDIA Corp. T210 [Tegra Erista]`

JUs having the OTG cable on the Jetson will product the following:
`Bus 001 Device 001: ID 1d6b:0002 Linux Foundation 2.0 root hub` within
    Bus 001 Device 001: ID 1d6b:0002 Linux Foundation 2.0 root hub
    Bus 003 Device 002: ID 0955:09ff NVidia Corp.
    Bus 003 Device 001: ID 1d6b:0003 Linux Foundation 3.0 root hub
    Bus 002 Device 001: ID 1d6b:0002 Linux Foundation 2.0 root hub

Used this in the Vagrantfile (important change was use of usb 3.0 in VM and plugging the USB cable into a usb 3.0 port,
also notice that the usb 2.0 ports did not seem to find discover the usb device for some reason):
    vb.customize ["modifyvm", :id, "--usbxhci", "on"]       # usb 3.0 (xHCI) controller
    vb.customize ['usbfilter', 'add', '0', '--target', :id,
        '--name', 'NVIDIA Jetson TX1',
        '--vendorid', '0x0955',
        '--productid', '0x7721']

1. with filter in place, but up device doesn't appear on VM or Desktop and get the above with NVidia device on Jetson
2. Started Jetson and got the following last message on console:
        [   12.874064] tegra210_mixer tegra210-mixer: ASoC: hw_params() failed: -22
        [   12.880857] tegra-snd-t210ref-mobile-rt565x sound.27: ASoC: PRE_PMU: TX1 Transmit-MIXER1-1 Receive event failed: -22
3. On Jetson colsole, got the folowing from `lsusb`:
        Bus 001 Device 001: ID 1d6b:0002 Linux Foundation 2.0 root hub
        Bus 003 Device 002: ID 0955:09ff NVidia Corp.
        Bus 003 Device 001: ID 1d6b:0003 Linux Foundation 3.0 root hub
        Bus 002 Device 001: ID 1d6b:0002 Linux Foundation 2.0 root hub
4. Do recovery press with rest: can nolong console into Jetson.  On Desktop, get the following from `lsusb | grep NV`:
        Bus 003 Device 067: ID 0955:7721 NVIDIA Corp. T210 [Tegra Erista]
5. Go into VM a entered `lsusb` and got this:
        Bus 002 Device 001: ID 1d6b:0003 Linux Foundation 3.0 root hub
        Bus 001 Device 002: ID 0955:7721 NVidia Corp.
        Bus 001 Device 001: ID 1d6b:0002 Linux Foundation 2.0 root hub
6. On Desktop:
        `ls /dev/ttyG* /dev/ttyU*`
        ls: cannot access '/dev/ttyG*': No such file or directory
        /dev/ttyUSB0
7. On VM:
        `ls /dev/ttyG* /dev/ttyU*`
        ls: cannot access '/dev/ttyG*': No such file or directory
        ls: cannot access '/dev/ttyU*': No such file or directory

VM (jetson-dev) = 192.168.1.218
Jetson (hubv2-24fd5b0000036206) = 192.168.1.231

############################# REMOVE AFTER TESTING #############################

## OTG USB Not Working
JTX1_USB_as device - https://forums.developer.nvidia.com/t/jtx1-usb-as-device/44028
Making your own OTG cable - https://www.youtube.com/watch?v=YxFemTqSA4I or https://www.youtube.com/watch?v=_Kv5lJKJhDg
How usb OTG works(master/slave) - https://stackoverflow.com/questions/11338076/how-usb-otg-worksmaster-slave

USB OTG introduces the concept of a device performing both master and slave roles – whenever two USB devices are connected and one of them is a USB OTG device, they establish a communication link. The device controlling the link is called the master or host, while the other is called the slave or peripheral.

USB OTG defines two roles for devices: OTG A-device and OTG B-device, specifying which side supplies power to the link, and which initially is the host. The OTG A-device is a power supplier, and an OTG B-device is a power consumer. In the default link configuration, the A-device acts as a USB host with the B-device acting as a USB peripheral. The host and peripheral modes may be exchanged later by using Host Negotiation Protocol (HNP).

The initial role of each device is defined by which mini plug a user inserts into its receptacle.

Nearly all smartphones and tablets that are currently available support USB On-The-Go.
But how to I know if my computer support USB OTG?
For OTG cable to work your phone must have an operating system that supports OTG.




## Step X: Set-up USB for Vagrant/Virtualbox
* [How to set up USB for Virtualbox?](https://askubuntu.com/questions/25596/how-to-set-up-usb-for-virtualbox)
* [what are the proper values for usb device in virtual box](https://askubuntu.com/questions/682550/what-are-the-proper-values-for-usb-device-in-virtual-box)
* [How to set up USB for Virtualbox?](https://askubuntu.com/questions/25596/how-to-set-up-usb-for-virtualbox)

Make sure to use settings for USB 2.0
    #vb.customize ["modifyvm", :id, "--usb", "on"]           # usb 1.1 (CHCI) controller
    vb.customize ["modifyvm", :id, "--usbehci", "on"]       # usb 2.0 (EHCI) controller

NVIDIA DRIVE: A minimum of 40GB and up to 120GB (during flash) free disk space on the system volume is needed for each full (host and target) deployed SDK version.




------


# Installation of JetPack on Jetson TX1 eMMC


## Step X: Test JetPack Setup
The JetPack installation, comes with its own car detection sample.
You can see it in action, and also test your setup, by running:

* [Setting up Nvidia TX1 Dev board with JetPack 3.2 and SSD with a bonus](https://blog.gauravagarwalr.com/posts/2018-04-10-setting-up-nvidia-tx1/)

```bash
$ ~/tegra_multimedia_api/samples/backend/backend 1 \
../../data/Video/sample_outdoor_car_1080p_10fps.h264 H264 \
--trt-deployfile ../../data/Model/GoogleNet_one_class/GoogleNet_modified_oneClass_halfHD.prototxt \
--trt-modelfile ../../data/Model/GoogleNet_one_class/GoogleNet_modified_oneClass_halfHD.caffemodel \
--trt-forcefp32 0 --trt-proc-interval 1 -fps 1
```

------


# Load the SSD
Jetson TX1 comes with a built in RAM capacity of 16GB via onboard eMMC,
out of which, the above installation of JetPack will takes about >8 GB.
This leaves us with very little space to work with.
I didn't want to use limited and slow SD card.
I choose to run the OS on a 256 GB SSD.

One other advantage of using an SSD,
apart from speed and size is the fact that the entire installation is intact on the eMMC.
In case of issues, you can disconnect the SSD and try it again.

Sources:
* [Setting up Nvidia TX1 Dev board with JetPack 3.2 and SSD with a bonus](https://blog.gauravagarwalr.com/posts/2018-04-10-setting-up-nvidia-tx1/)
* [Develop on SSD - NVIDIA Jetson TX Dev Kits][23]
* [Install Samsung SSD on NVIDIA Jetson TX1][31]

# Step X: Format SSD and Copy Files to SSD
After you have physically connected your SSD,
you should see the SSD show up when you boot the Dev Board.
The first thing you should do is format it, using the Disks utility.

I chose EXT4 as the format.
I had left about 10 GB of free space on the partition to avoid SSD wear and tear.

Once that is done copy the files from the eMMC to the SSD, using:

```bash
sudo cp -ax / /media/ubuntu/NAME_OF_YOUR_SSD_DRIVE
```

You can find the name by checking Disks utility or by running `df -h` command.
This would take a while, depending on your SSD speed.
It took me ~3 minutes.

# Step X: Edit `bootconfig` to Boot from SSD
To use the SSD as our boot drive,
I will need to edit the `bootconfig` file in `/boot/extlinux`.

The original file looks like:

```bash
$ cat /boot/extlinux/extlinux.conf
TIMEOUT 30
DEFAULT primary

MENU TITLE p2371-2180 eMMC boot options

LABEL primary
      MENU LABEL primary kernel
      LINUX /boot/Image
      INITRD /boot/initrd
      APPEND ${cbootargs} root=/dev/mmcblk0p1 rw rootwait
```

Backup the original file, using:

```bash
sudo cp /boot/extlinux/extlinux.conf /boot/extlinux/extlinux.conf.original
```

Edit it so it look like:

```bash
  $ sudo gedit /boot/extlinux/extlinux.conf
TIMEOUT 30
DEFAULT satassd

MENU TITLE p2371-2180 eMMC boot options

LABEL satassd
      MENU LABEL primary SATA SSD
      LINUX /boot/Image
      INITRD /boot/initrd
      APPEND ${cbootargs} root=/dev/sda1 rw rootwait

LABEL emmc
      MENU LABEL Internal eMMC
      LINUX /boot/Image
      INITRD /boot/initrd
      APPEND ${cbootargs} root=/dev/mmcblk0p1 rw rootwait
```

I renamed primary to emmc, and added another block for satassd.
And edited it accordingly.

## Step X: Boot from the SSD
Once this is done, Reboot.
You should now see an "SD Icon" instead of the SSD.
That is the internal eMMC.
Test the installation and you are good to go!


------


# Jetson/TX1 Cloning
* [Jetson/TX1 Cloning](https://elinux.org/Jetson/TX1_Cloning)


------


# Installing TensorFlow, TensoRT, and OpenCV
* [Object Detection on NVIDIA Jetson TX2](https://medium.com/datadriveninvestor/object-detection-on-nvidia-jetson-tx2-6090dc3e0595)


------


## Step X: Setup Docker
https://blog.gauravagarwalr.com/posts/2018-04-10-setting-up-nvidia-tx1/#bonus-setup-docker

## Step X: Jetson TX1 Swap File
* [Jetson TX1 Swap File and Development Preparation](https://www.jetsonhacks.com/2016/12/21/jetson-tx1-swap-file-and-development-preparation/)


-----


# Testing the Jetson TX1
* [The NVIDIA Jetson TX1 Developer Kit: A Tiny, Low Power, Ultra Fast Computer](https://www.linux.com/learn/nvidia-jetson-tx1-developer-kit-tiny-low-power-ultra-fast-computer)


-----


# Testing
[Object Detection on NVIDIA Jetson TX2](https://medium.com/datadriveninvestor/object-detection-on-nvidia-jetson-tx2-6090dc3e0595)


# Getting Started with the Jetson TX1: NVIDIA Developer Program
* [NVIDIA Developer Program](https://developer.nvidia.com/)
* [Jetson Inference](https://github.com/dusty-nv/jetson-inference)
* [Jetson TX1 Wiki](https://elinux.org/Jetson_TX1)
* [ROS Applications](http://wiki.ros.org/NvidiaJetson/TX1)




# Snap
Canonical has deployed Snappy Ubuntu Core,
a tiny Linux-based operating system for large-scale cloud container deployments,
IoT devices, mobile phones, and anything that needs transitional updates and tiny footprint.
Snappy Ubuntu Core works more or less like Google’s Chrome OS where
it offers transitional image based updates for the system and apps that can be rolled back,
along with confinement that is known in the container world.

But as the article "[Canonical’s Snap: The Good, the Bad and the Ugly](https://thenewstack.io/canonicals-snap-great-good-bad-ugly/)" nicely outlines, does the world need another containerizer on Linux?



# FloydHub is Heroku for Deep Learning
https://www.floydhub.com/  -   It never ceases to amaze me how what I once considered difficult or requiring special skills can become easy or common almost overnight!!




* [Measuring Machine Learning](https://towardsdatascience.com/measuring-machine-learning-945a47bd3750)
    * [Hands on with the Coral Dev Board](https://medium.com/@aallan/hands-on-with-the-coral-dev-board-adbcc317b6af)
    * [Getting Started with the NVIDIA Jetson Nano Developer Kit](https://towardsdatascience.com/measuring-machine-learning-945a47bd3750)


# Benchmarks
* [Raspberry Pi 3 Benchmarks vs. Eight Other ARM Linux Boards](https://www.phoronix.com/scan.php?page=article&item=raspberry-pi-3&num=1)
* [Benchmarks Of Many ARM Boards From The Raspberry Pi To NVIDIA Jetson TX2](https://www.phoronix.com/scan.php?page=article&item=march-2017-arm&num=1)

# TensorRT
* [AI at the Edge: TensorFlow to TensorRT on Jetson: Video](https://event.on24.com/eventRegistration/console/EventConsoleApollo.jsp?&eventid=1602941&sessionid=1&username=&partnerref=&format=fhaudio&mobile=false&flashsupportedmobiledevice=false&helpcenter=false&key=1DB3FD8783438A48604E2864BA3C51E5&text_language_id=en&playerwidth=1000&playerheight=650&overwritelobby=y&eventuserid=196030285&contenttype=A&mediametricsessionid=160639597&mediametricid=2297202&usercd=196030285&mode=launch)
* [AI at the Edge: TensorFlow to TensorRT on Jetson: Slides](http://developer.download.nvidia.com/embedded/webinars/TF-TRT-Jetson-WebinarPresentation.pdf?XmLXnRYjIKOfwcPrf2i4ej-CjLgKf8UCd0FiPvZTlrafDoPGeINpeQ3VG4MAwu5Zluk1esb-CordxTnAVYqSGH_Eug8jIIfP93wnN6R7GGn9_EfATJkU0p18_1QG2qfHFQcN6Hl_F2pKmmNZugU9RpX61vReXw)

# MIT RACECAR
[RACECAR/J][01] is derived from the open source [MIT RACECAR][02],
an “open-source powerful platform for robotics research and education”.
The RACECAR/J Chassis is based on the [TRAXXAS Slash 4×4 Platinum Truck][03],
an upgraded version of the normal Slash 4×4 which adds aluminum bits
and pieces such as C-hubs, steering blocks, rear hub carriers and axle nuts.

* [Self Driving RC Car using Tensorflow and OpenCV/](http://ahmedmadbouly.me/Self-driving-RC-Car-using-Tensorflow-and-OpenCV/)
* [Jetson RACECAR](http://www.jetsonhacks.com/category/robotics/jetson-racecar/)
* [Nvidia Jetson Robots Get A Head Start With Isaac Software Tools](https://hackaday.com/2019/06/01/nvidia-jetson-robots-get-a-head-start-with-isaac-software-tools/)

# Software
[JetPack 3.2 SDK for NVIDIA Jetson](https://developer.nvidia.com/embedded/jetpack?ncid=em-ded-jk32-33601)
[JetPack 4.3 SDK for NVIDIA Jetson](https://www.seeedstudio.com/blog/2019/12/19/jetpack-4-3-released-for-your-jetson-modules)
bundles the complete Jetson platform software—including
TensorRT, cuDNN, CUDA Toolkit, NVIDIA VisionWorks™, GStreamer,
and OpenCV—all built on top of L4T with LTS Linux kernel.

Development - https://developer.nvidia.com/embedded/jetpack
Jetson Software - https://developer.nvidia.com/embedded/develop/software
* JetPack - https://developer.nvidia.com/embedded/jetpack
* Linux For Tegra (L4T) - https://developer.nvidia.com/embedded/linux-tegra-archive
* DeepStream SDK on Jetson - https://developer.nvidia.com/deepstream-jetson

NVIDIA Software -
* [NVIDIA Deep Learning GPU Training System (DIGITS)](https://developer.nvidia.com/digits)
* CUDA and cuDNN
* [CUDA Is Like Owning A Supercomputer](https://hackaday.com/2018/03/19/cuda-is-like-owning-a-supercomputer/)
* [NVIDIA Deep Learning Accelerator (NVDLA)](http://nvdla.org/)

* [An Even Easier Introduction to CUDA](https://devblogs.nvidia.com/even-easier-introduction-cuda/)
* [CUDA IS LIKE OWNING A SUPERCOMPUTER](https://hackaday.com/2018/03/19/cuda-is-like-owning-a-supercomputer/)
* [Real Life CUDA Programming - Part 0 — An Overview](https://medium.com/@ori_cohen/https-medium-com-real-life-cuda-programming-part-0-an-overview-f83a2cd77779)
* [Real Life CUDA Programming - Part 1 — A gentle introduction to the GPU](https://medium.com/@ori_cohen/real-life-cuda-programming-part-1-a-gentle-introduction-to-the-gpu-16078f39ede9)
* [Real Life CUDA Programming — part 2 — Hello CUDA](https://medium.com/@ori_cohen/real-life-cuda-programming-part-2-hello-cuda-a33d0c57aab0)
* [Real Life CUDA Programming — part 3 — Unified Memory](https://medium.com/@ori_cohen/real-life-cuda-programming-part-3-unified-memory-2d9c7c4cd485)


## Board Dimensions
You can download the Jetson TX1 board design files [here][15].
You'll file the board drawing on page one on the PDF `P2597_B04_PCB_assembly_drawing.pdf`.
The dimensions of the board are 170.18mm x 170.18mm (6.7in x 6.7in  or  6 45/64 inch x 6 45/64 inch).


# Machine Learning Applied to RF
* [Making Sense of Signals](http://on-demand.gputechconf.com/gtc/2018/video/S8375/)
* [Deepwave Digital’s  AIR-T (Artificial Intelligence Radio — Transceiver)](http://linuxgizmos.com/linux-on-jetson-sdr-board-gets-major-software-upgrade/)
* [cuFFT on the AIR-T with GNU Radio](https://deepwavedigital.com/blog/cufft-on-the-air-t-with-gnu-radio/)

# GStreamer
* [Nvidia Hardware accelerated video Encoding/Decoding (nvcodec) — GStreamer](https://medium.com/@nareshkumarganesan/nvidia-hardware-accelerated-video-encoding-decoding-nvcodec-gstreamer-4b8eab662bf1)

# OS Upgrade
* [Porting Ubuntu Core 18 on Nvidia Jetson TX1 Developer Kit](https://ubuntu.com/blog/porting-ubuntu-core-18-to-nvidia-jetson-tx1-developer-kit)

# Project for the Jetson TX1
* [Open Data Cam Combines Camera, GPU, and Neural Network in an Artisanal DIY Cereal Box](https://hackaday.com/2018/10/29/open-data-cam-combines-camera-gpu-and-neural-network-in-an-artisanal-diy-cereal-box/)
* [How One NVIDIAN Uses Deep Learning to Keep Cats from Pooping on His Lawn](https://blogs.nvidia.com/blog/2016/07/07/deep-learning-cats-lawn/)
* [Neural Network Learns SDR Ham Radio](https://hackaday.com/2017/12/16/neural-network-learns-sdr-ham-radio/)
* [ Artificial Intelligence Radio - Transceiver (AIR-T)](https://www.crowdsupply.com/deepwave-digital/air-t)
* [SDR meets AI in a mash-up of Jetson TX2, Artix-7, and 2x2 MIMO](http://linuxgizmos.com/sdr-meets-ai-in-a-mash-up-of-jetson-tx2-artix-7-and-2x2-mimo/)

# Building Your Development Environment
* [Building a Digits Dev Machine on Ubuntu 16.04](https://blog.kickview.com/building-a-digits-dev-machine-on-ubuntu-16-04/)
* [How to use OpenCV’s “dnn” module with NVIDIA GPUs, CUDA, and cuDNN](https://www.pyimagesearch.com/2020/02/03/how-to-use-opencvs-dnn-module-with-nvidia-gpus-cuda-and-cudnn/)



[01]:http://www.jetsonhacks.com/category/robotics/racecarj/
[02]:http://fast.scripts.mit.edu/racecar/
[03]:https://traxxas.com/products/models/electric/6804Rslash4x4platinum
[04]:https://www.phoronix.com/scan.php?page=article&item=nvidia-tegra-jtx1&num=1
[05]:https://en.wikipedia.org/wiki/Advanced_Simulation_and_Computing_Program
[06]:https://en.wikipedia.org/wiki/ASCI_Blue_Pacific
[07]:https://en.wikipedia.org/wiki/Supercomputer
[08]:https://en.wikipedia.org/wiki/FLOPS
[09]:https://kb.iu.edu/d/apeq
[10]:https://www.youtube.com/watch?v=ZaJp6ZYP6Xc
[11]:https://www.youtube.com/watch?v=xBtlJBUbjV0
[12]:http://www.nvidia.com/object/tegra.html
[13]:https://www.nvidia.com/en-us/autonomous-machines/embedded-systems-dev-kits-modules/
[14]:http://www.nvidia.com/object/jetson-tk1-embedded-dev-kit.html
[15]:http://developer.nvidia.com/embedded/dlc/jetson-tx1-developer-kit-carrier-board-design-files
[16]:https://www.amazon.com/Samsung-850-PRO-2-5-Inch-MZ-7KE256BW/dp/B00LMXBOP4
[17]:https://elinux.org/Jetson_TX1
[18]:https://www.windowscentral.com/emmc-vs-ssd
[19]:https://www.linux.com/training-tutorials/nvidia-jetson-tx1-developer-kit-tiny-low-power-ultra-fast-computer/
[20]:https://developer.nvidia.com/embedded/downloads
[21]:https://www.amazon.com/JIANGRUI-Acrylic-TXShell-Enclosure-integrated/dp/B072VXYCRZ/
[22]:https://www.windowscentral.com/emmc-vs-ssd
[23]:https://www.youtube.com/watch?v=ZpQgRdg8RmA
[24]:https://www.adafruit.com/product/954?gclid=CImM8dj6u8kCFdgVgQodg6MI7g
[25]:https://www.jetsonhacks.com/nvidia-jetson-tx1-j21-header-pinout/
[26]:https://www.jetsonhacks.com/2015/12/01/serial-console-nvidia-jetson-tx1/
[27]:https://developer.nvidia.com/embedded/jetson-tx1-developer-kit
[28]:https://developer.nvidia.com/embedded/develop/software
[29]:http://images.nvidia.com/content/tegra/embedded-systems/pdf/JTX1-DevKit-Product-sheet.pdf?ncid=pa-blo-ftrs27-3860
[30]:https://www.youtube.com/watch?v=4JUWS9i_FCQ
[31]:https://www.youtube.com/watch?v=6nzWt42mzqk
[32]:https://en.wikipedia.org/wiki/Solid-state_drive
[33]:https://www.vagrantup.com/
[34]:https://www.virtualbox.org/
[35]:https://github.com/jeffskinnerbox/ubuntu-desktop
[36]:https://medium.com/@connerfritz/installing-the-latest-jetpack-on-a-nvidia-jetson-tx1-on-windows-through-virtualbox-8adef92e7171
[37]:https://developer.nvidia.com/embedded/jetson-tx1-developer-kit
[38]:https://developer.nvidia.com/embedded/jetpack
[39]:https://developer.nvidia.com/jetpack-43-archive
[40]:https://developer.nvidia.com/embedded/dlc/nv-sdk-manager
[41]:https://developer.download.nvidia.com/embedded/L4T/r28_Release_v1.0/Docs/Jetson_TX1_and_TX2_Developer_Kits_User_Guide.pdf
[42]:https://docs.nvidia.com/sdk-manager/install-with-sdkm-jetson/index.html
[43]:https://docs.nvidia.com/sdk-manager/download-run-sdkm/index.html#login
[44]:https://images-eu.ssl-images-amazon.com/images/I/81Q7ee4BDAS.pdf
[45]:https://developer.download.nvidia.com/embedded/L4T/r24_Release_v2.0/Docs/L4T_Jetson_X1_Developer_Kit_User_Guide.pdf
[46]:https://www.youtube.com/watch?v=DyhRMjaUknQ
[47]:http://www.bojankomazec.com/2017/02/how-to-install-jetpack-on-jetson-tx1.html
[48]:https://medium.com/intuitionmachine/building-a-270-teraflops-deep-learning-box-of-under-10-000-2d790b0ae2ec
[49]:https://www.nvidia.com/en-us/titan/titan-v/
[50]:https://www.intel.com/content/www/us/en/products/processors/core/core-vpro/i7-8700k.html
[51]:
[52]:
[53]:
[54]:
[55]:
[56]:
[57]:
[58]:
[59]:
[60]:

