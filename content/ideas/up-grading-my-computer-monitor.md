

```bash
$ xrandr -d :0 -q
Screen 0: minimum 320 x 200, current 1920 x 1200, maximum 8192 x 8192
VGA-1 disconnected (normal left inverted right x axis y axis)
HDMI-1 connected primary 1920x1200+0+0 (normal left inverted right x axis y axis) 519mm x 324mm
   1920x1200     59.95*+
   1600x1200     60.00
   1680x1050     59.88
   1280x1024     75.02    60.02
   1152x864      75.00
   1024x768      75.03    60.00
   800x600       75.00    60.32
   640x480       75.00    59.94
   720x400       70.08
DP-1 disconnected (normal left inverted right x axis y axis)
```

# What Video Driver
Run lshw -c video | grep 'configuration' to see the video driver used, or lshw -c video for more detail. i915, for example, means your video adapter uses the Intel 915 drivers.

```bash
$ sudo lshw -c video
  *-display
       description: VGA compatible controller
       product: Xeon E3-1200 v2/3rd Gen Core processor Graphics Controller
       vendor: Intel Corporation
       physical id: 2
       bus info: pci@0000:00:02.0
       version: 09
       width: 64 bits
       clock: 33MHz
       capabilities: msi pm vga_controller bus_master cap_list rom
       configuration: driver=i915 latency=0
       resources: irq:39 memory:ef400000-ef7fffff memory:d0000000-dfffffff ioport:f000(size=64) memory:c0000-dffff

$ sudo lshw -c video | grep 'configuration'
       configuration: driver=i915 latency=0

 $ modinfo i915
filename:       /lib/modules/4.10.0-30-generic/kernel/drivers/gpu/drm/i915/i915.ko
license:        GPL and additional rights
description:    Intel Graphics
author:         Intel Corporation
author:         Tungsten Graphics, Inc.
firmware:       i915/bxt_dmc_ver1_07.bin
firmware:       i915/skl_dmc_ver1_26.bin
firmware:       i915/kbl_dmc_ver1_01.bin
firmware:       i915/skl_guc_ver6_1.bin
srcversion:     F0E9CF22A8DCA43307F94E0
alias:          pci:v00008086d0000593Bsv*sd*bc03sc*i*
alias:          pci:v00008086d00005927sv*sd*bc03sc*i*
   .
   .
   .
```

# Tools for Large Monitors
* [Linux Fu: X Command](https://hackaday.com/2017/09/21/linux-fu-x-command/)
    * xdotool
    * wmctrl
    * xrandr


https://askubuntu.com/questions/377205/how-to-find-out-what-graphics-driver-is-installed/377211

* [How to get information about graphics card (GPU) on Linux](http://www.binarytides.com/linux-get-gpu-information/)
* [How to install and configure graphics drivers in Linux](http://www.techradar.com/how-to/computing/how-to-install-and-configure-graphics-drivers-in-linux-1327223)
* [The best graphics cards of 2017](http://www.techradar.com/news/computing-components/graphics-cards/best-graphics-cards-1291458)




* [The 2017 ULTRAWIDE Monitor Buyers Guide](https://www.youtube.com/watch?v=7wGV46ynBhw)
* [UltraWide 21:9 vs UHD 4K | Which is for you?](https://www.youtube.com/watch?v=6Gq2YPOrx50)
* [Ultrawide 21:9 vs UHD 4K vs Gaming 144 Hz ... Which is best?](https://www.youtube.com/watch?v=6Gq2YPOrx50)

* [LG 34" Ultrawide IPS Monitor Review - The Best Monitor for Multitasking!](https://www.youtube.com/watch?v=fuecZoV1wZE)
* [Ultrawide vs Dual Screen - what is the best setup for productivity?](https://www.youtube.com/watch?v=7ZavkOq0boU)

* [LG 34UM68-P 34-Inch 21:9 UltraWide IPS Monitor](http://www.lg.com/us/monitors/lg-34UM68-P-ultrawide-monitor)

* [LG 34UM60-P 34-Inch IPS WFHD (2560 x 1080) Ultrawide ](https://www.amazon.com/LG-34UM60-P-34-Inch-Ultrawide-Freesync/dp/B06Y28LK9G/)
* [34" Class 21:9 UltraWide® WFHD IPS Freesync LED Monitor (34" Diagonal)](http://www.lg.com/us/monitors/lg-34UM60-P-ultrawide-monitor)

* Why will my Ultrawide (2560 x 1080) monitor work at correct resolution in Linux (Ubuntu) but not Windows 10? Acer E15, Intel HD graphics, LG 25UM58  - https://answers.microsoft.com/en-us/windows/forum/windows_10-hardware/why-will-my-ultrawide-2560-x-1080-monitor-work-at/1797e192-32a5-4554-a21e-b305afe27f06?auth=1
* 2560x1080 for 29" ultra wide monitor is not supported on ubuntu 14.04 and 14.10 bug report: https://bugs.launchpad.net/ubuntu/+s...r/+bug/1357804

* [How do I configure Ubuntu for a 21:9 screen?](https://askubuntu.com/questions/727753/how-do-i-configure-ubuntu-for-a-219-screen)
* [How to Set A Custom Screen Resolution in Ubuntu Desktop](http://ubuntuhandbook.org/index.php/2017/04/custom-screen-resolution-ubuntu-desktop/)

* [Super Key](https://en.wikipedia.org/wiki/Super_key_(keyboard_button))

* [What's the difference between WQHD, QHD, 2K, 4K and UHD? Display resolutions explained](http://www.expertreviews.co.uk/tvs-entertainment/1404464/whats-the-difference-between-wqhd-qhd-2k-4k-and-uhd-display-resolutions-1)
WFHD = 2560x1080 monitor
WQHD = 3440x1440 monitor

* [HDMI vs DisplayPort vs DVI vs VGA vs USB-C: Every connection explained plus how to get 144Hz](http://www.expertreviews.co.uk/accessories/pc-monitors/1404476/hdmi-vs-displayport-vs-dvi-vs-vga-every-connection-explained)

Panel Type
IPS - https://en.wikipedia.org/wiki/IPS_panel

Color Gamut (CIE1931) - https://en.wikipedia.org/wiki/Gamut
sRBG over 99% - https://en.wikipedia.org/wiki/SRGB
Pixel Pitch - https://en.wikipedia.org/wiki/Dot_pitch
