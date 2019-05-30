
* [How to Convert Images Using Linux](https://www.lifewire.com/convert-linux-command-unix-command-4097060)

## Display Characteristics
Sometime you need to know the dimensions or pixel resolution
of the monitor you are using.
There happens to be a [website that can help][04]:
[display size][01],
[screen resolution][02],
[dots per square inch][03].
Also, you could use the [xrandr][05] configuration utility.
It can be used to set the size, orientation or reflection of the outputs for a screen,
but also give you your displays chartereistics.
See this example:

```bash
$ xrandr
Screen 0: minimum 8 x 8, current 1920 x 1200, maximum 32767 x 32767
DP1 disconnected (normal left inverted right x axis y axis)
HDMI1 connected primary 1920x1200+0+0 (normal left inverted right x axis y axis) 519mm x 324mm
   1920x1200      60.0*+
   1600x1200      60.0
   1680x1050      59.9
   1280x1024      75.0     60.0
   1152x864       75.0
   1024x768       75.1     60.0
   800x600        75.0     60.3
   640x480        75.0     60.0
   720x400        70.1
VGA1 disconnected (normal left inverted right x axis y axis)
VIRTUAL1 disconnected (normal left inverted right x axis y axis)
```

## Image File Characteristics
For some image formats you can just use the [`file`][06]
or `convert` and `identify` from ImageMagick command:

```bash
$ file Pictures/Wallpaper/ZZ-Top.png
Pictures/Wallpaper/ZZ-Top.png: PNG image data, 2560 x 1600, 8-bit/color RGB, non-interlaced
```

Not all image formats report the size (JPEG most notably doesn't):

```bash
$ file Pictures/Wallpaper/White-Earth-Limb.jpg
Pictures/Wallpaper/White Earth Limb.jpg: JPEG image data, JFIF standard 1.02
```

For those you will have to use something like `convert`:

```bash
$ convert Pictures/Wallpaper/White-Earth-Limb.jpg -print "Size: %wx%h\n" /dev/null
Size: 1500x1487
```
$ convert MyJpeg.jpg -print "Size: %wx%h\n" /dev/null
Size: 380x380

## Converting Image File Format
```bash
# convert image from JPG to PNG format
convert jeffskinnerbox-300x300.jpeg jeffskinnerbox-300x300.png
```

## Resize Image File
```bash
# resize image to a 128 by 128 pexal picture
convert jeffskinnerbox-300x300.png -resize 128x128 jeffskinnerbox-128x128.png
```

## Changing The Size of an Image

* [HOWTO: Command line manipulation of images](http://discourse.criticalengineering.org/t/howto-command-line-manipulation-of-images/47)
* [ImageMagick Command-Line Tools](http://www.imagemagick.org/script/command-line-tools.php)
* []()



[01]:http://www.infobyip.com/detectdisplaysize.php
[02]:http://www.infobyip.com/detectscreenresolution.php
[03]:http://www.infobyip.com/detectmonitordpi.php
[04]:http://www.infobyip.com/
[05]:http://pkg-xorg.alioth.debian.org/howto/use-xrandr.html
[06]:http://www.computerhope.com/unix/ufile.htm
[07]:
[08]:
[09]:
[10]:
