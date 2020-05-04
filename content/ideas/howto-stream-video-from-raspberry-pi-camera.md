* Consider using [OpenFaaS](https://www.openfaas.com/)

* [HKCam: A Raspberry Pi-powered and open-source HomeKit security camera that costs under US$20](https://www.notebookcheck.net/HKCam-A-Raspberry-Pi-powered-and-open-source-HomeKit-security-camera-that-costs-under-US-20.422731.0.html)
* [Wyze Cam Pan 1080p Pan/Tilt/Zoom Wi-Fi Indoor Smart Home Camera with Night Vision and 2-Way Audio, Works with Alexa]()

* [Live Streaming Goes Pro with a Hacked Backpack](https://hackaday.com/2018/09/03/live-streaming-goes-pro-with-a-hacked-backpack/)
* [Open Data Cam Combines Camera, GPU, and Neural Network in an Artisanal DIY Cereal Box](https://hackaday.com/2018/10/29/open-data-cam-combines-camera-gpu-and-neural-network-in-an-artisanal-diy-cereal-box/)

* [Video Sreaming Like Your Raspberry Pi Depended On It](https://hackaday.com/2017/09/12/video-streaming-like-your-raspberry-pi-depended-on-it/)

* [Raspberry Pi High Quality Camera Review: Interchangeable Lenses, Powerful Sensor](https://www.tomshardware.com/reviews/raspberry-pi-high-quality-camera)


If you USB camera stops working or generally misbehaves,
a frustrating solution is to restart your Linux.
I have found that reloading the kernel drivers can clear most problems:

```bash
# reload the kernel video driver
sudo rmmod uvcvideo
sudo modprobe uvcvideo
```



# Check This Out!!
* [Building a Raspberry Pi security camera with OpenCV](https://www.pyimagesearch.com/2019/03/25/building-a-raspberry-pi-security-camera-with-opencv/)
* [Turning a Raspberry Pi into a portable streaming camera](https://opensource.com/life/15/9/turning-raspberry-pi-portable-streaming-camera)
    * [RPi Cam Web Interface](https://www.raspberrypi.org/forums/viewtopic.php?f=43&t=63276)
    * [RPi-Cam-Web-Interface](https://elinux.org/RPi-Cam-Web-Interface)
    * [Web based interface for controlling the Raspberry Pi Camera](https://github.com/silvanmelchior/RPi_Cam_Web_Interface)
* [Enhancing my ordinary IP security cameras with AI](https://harizanov.com/2018/03/enhancing-my-ordinary-security-cameras-with-ai/)




* [TTL Serial Camera](https://learn.adafruit.com/ttl-serial-camera)
* [The Camera Modual Guide](https://www.raspberrypi.org/magpi-issues/Essentials_Camera_v1.pdf)
* [Choose the Right 3D Vision Camera For Your IoT Device](https://medium.com/iotforall/choose-the-right-3d-vision-camera-for-your-iot-device-962d95c581cb)

* [How to Process Live Video Stream Using FFMPEG and OpenCV](http://blog.lemberg.co.uk/how-process-live-video-stream-using-ffmpeg-and-opencv)
* [OpenCV remote (web-based) stream processing](https://github.com/ECI-Robotics/opencv_remote_streaming_processing)
* [Raspberry Pi Camera low latency streaming with gstreamer via RTP](http://hopkinsdev.blogspot.hk/2016/06/raspberry-pi-camera-low-latency.html)
* [Raspberry Pi Camera openCV rendering with low latency streaming with gstreamer via RTP](http://hopkinsdev.blogspot.com/2016/06/raspberry-pi-camera-opencv-rendering.html)





# Introduction
The topic of computer vision and cameras is deep and complex.
It involves a range of technologies from photography, teleivison,
optical lens, the physics of light, and even how the brain + eye process color.

Streaming video from the Raspberry Pi has been quite a hot topic with users wanting to stream Live video from nature reserves or bird boxes and even live Raspberry Pi events. The Raspberry Pi 3 is the perfect platform for a number of reasons. Firstly, the Raspberry Pi has the ability to encode video directly using the hardware chip in H264 format as opposed to slow software encoding, which can also be poor quality.

When it comes to the Raspberry Pi,
Raspberry Pi Camera Module is from the Raspberry Pi Foundation
is the most popular but many others exist,
making this topic even harder to fully understand.

The original [5-megapixel model was released in 2013][07],
and an [8-megapixel Camera Module v2 was released in 2016][08].
For both iterations, there are visible light and infrared versions.


* explain all of this!! - https://www.raspberrypi.org/documentation/hardware/camera/
* [Vision Campus](https://www.youtube.com/playlist?list=PLULhsSsX_9ge4g9maUkFGGLaG5S8_CiAC)
*  Camera Hardware - https://picamera.readthedocs.io/en/release-1.13/fov.html

----

# Cameras

## Camera Sensor
* [Demystifying digital camera sensors once and for all](https://www.techhive.com/article/2052159/demystifying-digital-camera-sensors-once-and-for-all.html)

## Color
gamma, brightness, contrast, hue, sturation
* [Understanding Color Models Used in Digital Image Processing](https://www.allaboutcircuits.com/technical-articles/understanding-color-models-used-in-digital-image-processing/)
* [Color Spaces: The Model at the End of the Rainbow](https://hackaday.com/2018/03/30/color-spaces-the-model-at-the-end-of-the-rainbow/)
* [RGB LEDs: How to Master Gamma and Hue for Perfect Brightness](https://hackaday.com/2016/08/23/rgb-leds-how-to-master-gamma-and-hue-for-perfect-brightness/)
* [List of color spaces and their uses](https://en.wikipedia.org/wiki/List_of_color_spaces_and_their_uses)
color space - https://en.wikipedia.org/wiki/Color_space
* [A Beginner’s Guide to Understanding White Balance](https://www.makeuseof.com/tag/white-balance-guide/)

* [23 open source audio-visual production tools](https://opensource.com/article/18/2/open-source-audio-visual-production-tools)
* [color theory](https://en.wikipedia.org/wiki/Color_theory)
* [The fundamentals of understanding color theory](https://99designs.com/blog/tips/the-7-step-guide-to-understanding-color-theory/)
* [YUV Color Encoding](https://en.wikipedia.org/wiki/YUV)

----

# Video on Linux and Raspberry Pi

## raspivid and raspvidyuv
Three commandline utilities have been developed for the Raspberry Pi camera
which are used to take photo's and control the settings.
These are `raspistill` for taking still images,
`raspivid` for recording video and `raspiyuv` for taking Raw still images.
These utilities are specifically intended for the Raspberry Pi camera, not a USB or Ethernet camera.

* `raspbistill` images can be saved in jpeg, bmp, gif and png.
Jpeg give a small file size and is hardware accelerated so it's the best option for timelapse capture.
Jpg images uses adjustable compression so some detail of the image is lost. At 100% quality you will barely notice any loss but at 50% quality the image will be poor. BMP and PNG are lossless formats so the files will be bigger than jpg files but will have a better quality image. Gif is limited to 256 colours with a small file size.
* `raspiyuv` has the same features as `raspistill` but it generates a raw image file (YUV color encoding). Raw images made from the data directly from the camera sensor that have not been processed, so contain more graphical information than a picture that has been converted to jpg, bmp or png. This is more useful if you want to use an image editor to make advanced changes to lighting, colour or use for special effects.
* `raspivid` records video in HD 1080p (1920 x 1080) in the H264 Mpeg4 format which is the same video format used on Blu-Ray discs. Options allow you to alter the image size, frames per second, bitrate and view a preview.
Reducing the bitrate creates a smaller file but lowers the quality of the video image.
Frames per second can range between 2fps and 30fps


* https://www.raspberrypi.org/documentation/usage/camera/raspicam/raspivid.md
* https://www.raspberrypi.org/documentation/raspbian/applications/camera.md
* http://www.raspberryconnect.com/hardware-add-ons/item/137-raspberry-pi-camera-module

## Xorg vs Wayland
Linux and Ubuntu in particular will be moving away from [Xorg][26]
and towards using [Wayland][27] as its display manager.
You'll currently find both on Ubuntu 17.10, with Wayland being the default.
But there problem, [Ubuntu will be defaulting back to Xorg in 18.04][30].
Many of the tools have varying degrees of problems with Wayland
(most troublesome is that establish screen recording tools will not work,
but [Green Recorder][29] does).

To find out what display manager your running,
open a terminal and enter the command: `echo $XDG_SESSION_TYPE`.
If you see X11, it’s Xorg. If you see Wayland, the display server in use is Wayland.

With Ubuntu, you do get a [choose between Xorg and Wayland][28] at startup time.
You can also set Xorg as your default display manager
by uncommenting the line `#WaylandEnable=false` in the file `/etc/gdm3/custom.conf`.

## X Window Display and Screen
The command `echo $DISPLAY` produces the output `:1` on my Linux box.
The format of the `DISPLAY` environment variable is `[host]:<display>[.screen]`.
`host` refers to a network host name,
and if absent means to connect to the local machine.
Each `host` can have multiple displays, and each display can have multiple screens.
Screens aren't used much anymore,
with tools like xinerama and now xrandr combining multiple screens into a single logical screen.

## Video for Linux 2 (V4L2)
v4l2 stands for Video For Linux 2, the second version of the V4L API and framework.
As opposed to many driver implementations, the v4l2 framework is made an integral part of the Linux kernel code.
This static integration has been criticised but the project continues.
The V4L2 API allows you to manipulate various video devices, for capture as well as for output.
The API is also capable of handling many kind of devices such as TV tuners, and of course webcams.
The v4l2 API is mostly implemented as a set of IOCTL calls for you to make to your video devices.
Once you’ve understood the general mechanism, and know a few IOCTLs,
you’ll be able to manipulate your camera with a certain ease.

* [CAPTURING A WEBCAM STREAM USING V4L2](http://jwhsmith.net/2014/12/capturing-a-webcam-stream-using-v4l2/)
* [RESTful API supported by UV4L](https://www.linux-projects.org/documentation/rest-api/)

Video For Linux (V4L) is an API that provides unified access to various video capturing devices, such as TV tuners, USB web cameras, etc.
The Pi Camera drivers are proprietary, and in a sense,
that they do not follow any standard APIs.
That means that applications have to be written specifically for the Raspberry Pi camera.

Under Linux, the standard API for cameras (including web cams) is V4L (Video for Linux),
and a number of applications have been written that support any camera with a V4L driver.
An independent developer has now written a user space V4L driver for the Raspberry Pi camera, which is available from here3. With that driver, you can use generic Linux applications written for cameras. The driver has a few limitations: it is closed sourced, and can be a little slow because it runs as a user program rather than a kernel driver. The program worked reasonably well when I tested it and it is expected to continue to improve.

If you hook your camera up to a Linux box,
you can use `v4l2-ctld` to list the supported video formats.
The [`v4l2-ctl` tool][11] is used to control [video4linux][10] devices,
either video, vbi, radio or swradio, both input and output.
This tool uses the [USB video device class (UVC)][09] to query the info from the camera.
UVC is typically supported by recent webcams.

```bash
# install the v4l control tool
sudo apt install v4l-utils

# show the resolutions supported fo the MJPG pixel format
$ v4l2-ctl --device /dev/video0 --list-framesizes=MJPG
ioctl: VIDIOC_ENUM_FRAMESIZES
	Size: Discrete 160x120
	Size: Discrete 176x144
	Size: Discrete 320x240
	Size: Discrete 352x288
	Size: Discrete 640x480
	Size: Discrete 800x600
	Size: Discrete 960x720

# show all the supported rsolutions
v4l2-ctl --device /dev/video0 --list-formats-ext
```
* https://www.raspberrypi.org/forums/viewtopic.php?t=62364
* https://www.raspberrypi.org/documentation/usage/camera/raspicam/README.md
* http://www.home-automation-community.com/surveillance-with-raspberry-pi-noir-camera-howto/
* [How to use V4L2 Cameras on the Raspberry Pi 3 with an Upstream Kernel](https://blogs.s-osg.org/use-v4l2-cameras-raspberry-pi-3-upstream-kernel/)
* API - picamera Package - http://picamera.readthedocs.io/en/release-1.10/install3.html
* http://picamera.readthedocs.io/en/release-1.10/api.html
* Recording to a network stream - http://picamera.readthedocs.io/en/release-1.10/recipes1.html#recording-to-a-network-stream

## Adding a Camera to the Raspberry Pi
[camera!](http://raspi.tv/wp-content/uploads/2016/05/PiZero1.3_700.jpg)
[camera!](http://cdn.slashgear.com/wp-content/uploads/2016/05/2016-05-15-16.32.19-800x420.jpg)
[Raspberry Pi Zero version 1.3][06] has a camera connector,
and I'll be installing the version 2.1 camera
(previous version was v1.3 5MP and 1080p).
This [camera is 8 Megapixel, 1080p, and Better in Low Light][45]
and in general a [better camera][57].
The Zero’s camera cable connector is a little smaller than the ones used on the other Raspberry Pi.
This [Second Generation Raspberry Pi Camera Module][46] has the following specs:

* Fixed Focus Lens
* Sony [Exmor][49] [IMX219][48] Sensor Capable of [4K30][47], [1080P60][50], [720P180][51], 8MP Still
* 3280 (H) x 2464 (V) Active Pixel Count
* Maximum of 1080P30 and 8MP Stills in Raspberry Pi Board
* 2A Power Supply Highly Recommended

To activate the camera features on the RPi Zero,
access the configuration settings for the RPi by running the command:

```bash
# configure the raspberry pi camera
sudo raspi-config
```

Then navigate to “camera” and select “enable”.
Select “Finish” and reboot.

The installation of the camera cable must be done carefully and
its proper installation is illustrated in this picture:

[camera-cable](http://raspi.tv/wp-content/uploads/2016/05/PiZero1.3_700.jpg)

You can find [detail documentation on camera usage online][52].
A summary for [taking still pictures][54] and [taking videos][53] is given below.

To take a picture with the camera, do the following:

```bash
# take picture and store in image.jpg
raspistill -o ~/tmp/image.jpg --width 1024 --height 768

# display picture for viewing
display ~/tmp/image.jpg
```

You can also capture video with the camera.
To capture a 5 seconds of video in [H.264/MPEG-4 Advanced Video Coding (AVC)][108] format:

```bash
# capture video in file video.h264
raspivid -o ~/tmp/video.h264 --timeout 5000 --width 1024 --height 768 --codec H264

# record a 10 second VGA clip at 90fps
mplayer -benchmark ~/tmp/test90fps.h264-w 640 -h 480 -fps 90 -t 10000 -o ~/tmp/test90fps.h264

# play the videos
mplayer -benchmark ~/tmp/video.h264
mplayer -benchmark ~/tmp/test90fps.h264
```

Other possibilities for your camera are things like [time lapse photography][65] or
[`picamera`][55] which is a Python interface to the Raspberry Pi camera module
(source code [here][56]).
Or can do something more sophisticated like stream video to a web browser
via the Python package [`pistreaming`][58]
or with [`OpenCV`][59], or via [`motion`][60].

----

## Video Frameworks

### Userspace Video4Linux (UV4L)
* UV4L - User space Video4Linux - https://www.linux-projects.org/
    * http://www.linux-projects.org/uv4l/
    * How to install or upgrade UV4L on Raspbian Wheezy & Raspbian Jessie (for Raspberry Pi) - https://gist.github.com/rveitch/907a449fa6d4e12ca1d4d1ebf9b03a04
    * [Video: Install UV4L on Raspberry Pi 3](https://www.youtube.com/watch?v=7WA_tBTJQrk)
    * WebRTC extension - https://www.linux-projects.org/uv4l/webrtc-extension/
* https://www.linux-projects.org/uv4l/tutorials/
* [Quick installation instructions of UV4L for Ubuntu](https://www.linux-projects.org/uv4l/installation-ubuntu/)
* [xscreen](https://www.linux-projects.org/documentation/uv4l-xscreen/) is a userspace Video4Linux driver module for virtual devices from X screens. Turn any portion of any X Screen into a virtual Video4Linux device.
* UV4L - User space Video4Linux - https://www.linux-projects.org/uv4l/
* Is UV4L the best way to steam to the web? - https://www.raspberrypi.org/forums/viewtopic.php?t=169832
* [Use cases about the V4L2 driver for the Dual Raspberry Pi Camera Module](http://blog.csdn.net/hnllc2012/article/details/46226489)
* [Installing UV4L on Raspberry Pi](http://www.linux-projects.org/uv4l/installation/)
* [Tutorials for Raspberry Pi](https://www.linux-projects.org/uv4l/tutorials/)
* [Real-time HTTP/HTTPS Streaming Server with the native uv4l-server module](https://www.linux-projects.org/uv4l/tutorials/streaming-server/)

----

## Video Players
* hello_video - https://learn.adafruit.com/raspberry-pi-video-looper/hello-video
* mplayer - `sudo apt-get install mplayer2`
* omxplayer - https://elinux.org/Omxplayer
* vlc and cvlc - `sudo apt-get install vlc browser-plugin-vlc libavcodec-extra-53`
    * https://wiki.videolan.org/Documentation:Streaming_HowTo/Command_Line_Examples/
    * `vlc --longhelp --advanced` for a complete list of available options.
* Android using the RPi Camera Viewer (RPiC) app - http://frozen.ca/rpi-camera-viewer-for-android/
    * Using the UV4L driver to stream video from the raspberry pi camera to android phone - https://raspberrypi.stackexchange.com/questions/22372/using-the-uv4l-driver-to-stream-video-from-the-raspberry-pi-camera-to-android-ph

### omxplayer
omxplayer is a great general purpose video player that offloads video decoding
to the Pi's GPU so it can render 720p and even 1080p video on the Raspberry Pi 1 and Pi 2.
To use omxplayer you'll want to make sure your video is encoded with an H.264 codec and is in a file format like .avi, .mov, .mkv, .mp4, or .m4v.  If you have a video in a different format or that won't play you convert it into an H.264 video easily with some free tools.

### MPlayer
See this [Streaming Video to PC running OpenCV](https://www.raspberrypi.org/forums/viewtopic.php?t=97739)

### VLC
VLC is an open source media player supported on a wide number of computing platforms,
including GNU/Linux, Windows, Mac OS X, BSD, iOS and Android.
VLC can play most multimedia files, discs, streams, allows playback from devices,
(mpeg, mpeg-2, mpeg-4, wmv, mp3, dvds, vcds, podcasts, ogg/vorbis, mov, divx, quicktime,
and streaming from various online network sources like Youtube)
It is also able to convert to or stream in various formats.

* [Multicat](https://blog.duraffort.fr/post/2010/09/02/Multicat/)
    * https://www.videolan.org/projects/multicat.html
* [How to stream raspivid to Linux and OSX using GStreamer, VLC or Netcat?](https://raspberrypi.stackexchange.com/questions/27082/how-to-stream-raspivid-to-linux-and-osx-using-gstreamer-vlc-or-netcat)
* [How to stream video from Raspberry Pi camera and watch it live](https://raspberrypi.stackexchange.com/questions/23182/how-to-stream-video-from-raspberry-pi-camera-and-watch-it-live)
* [The Raspberry Pi Camera Module](https://www.ics.com/blog/raspberry-pi-camera-module#.VJFhbyvF-b8)
* [VLC media player](https://github.com/videolan/vlc)
* [Documentation:Streaming HowTo New](https://wiki.videolan.org/Documentation:Streaming_HowTo_New/)
* [Documentation:Streaming HowTo/Command Line Examples](https://wiki.videolan.org/Documentation:Streaming_HowTo/Command_Line_Examples/)

# Multicast
Sending traffic from one source to a single destination is called unicast.
Sending traffic from one source to everyone in the subnet is called a broadcast.
Sending traffic from one (or multiple) sources to a group of receivers is called multicast.

* [How to Stream Multicast Video Using VLC, Simple Tutorial](http://nerdynerdnerdz.com/3125/how-to-stream-multicast-video-using-vlc-simple-tutorial/)
* [Multicat](https://blog.duraffort.fr/post/2010/09/02/Multicat/)
    * https://www.videolan.org/projects/multicat.html
* [Multicast Tutorial Slides](https://www.slideshare.net/RockyS11/multicast-tutorial-slides)
* [Basics of Multicast technology](http://cpham.perso.univ-pau.fr/ENSEIGNEMENT/UERHD/Multicast.pdf)
* [Multicast Explained](https://www.tldp.org/HOWTO/Multicast-HOWTO-2.html)
* [UDP Unicast and Multicast Streaming Video using the Beaglebone Black](http://derekmolloy.ie/udp-video-streaming-beaglebone-black/)

# Open Broadcast Studio (OBS)
[Open Broadcaster Software (OBS)](https://obsproject.com/)
is a free open source software suite that is used for recording and live streaming. OBS is used to capture and record your screen while also capturing audio.

* [Create your own video streaming server with Linux](https://opensource.com/article/19/1/basic-live-video-streaming-server)

----

# Video Formats

## What are Video Formats?
* [Video Formats Explained](https://www.videomaker.com/article/c10/15362-video-formats-explained)
* https://imagenevp.com/top-10-video-formats/
* https://en.wikipedia.org/wiki/Video_file_format
* [The Complete List of Audio / Video File Formats for Developers](https://blog.filestack.com/thoughts-and-knowledge/complete-list-audio-video-file-formats/)

H.264
WebM is a media file format. It is primarily intended to offer a royalty-free alternative to use in the HTML5 video and the HTML5 audio tags.
AVI (Audio Video Interleave)
FLV (Flash Video Format)
WMV (Windows Media Video)
MOV (Apple QuickTime Movie)
MP4 (Moving Pictures Expert Group 4)
MKV - https://www.howtogeek.com/200736/what-is-an-mkv-file-and-how-do-you-play-them/
    * https://www.quora.com/How-do-I-play-mkv-files-on-Raspbian

* [Video Files](https://fileinfo.com/filetypes/video)
* [What Is Video Format and Which Video Format to Choose?](https://filmora.wondershare.com/video-editing-tips/video-formats.html)

### Motion JPEG
Some IP webcams do this by delivering [Motion JPEG or MJPEG][98] images.
MJPEG just streams individual JPEG pictures, one after another.
(In fact, some people have created streaming video solution
using this concept of [streaming JPEG pictures][130].)
Most [modern browsers][103] (think HTML5) can play MJPEG streams natively.
The down side of MJPEG streams is that they are not as efficient as [H.264][116],
which greatly improves quality and reduces size
by encoding only the differences from one frame to the next.
I'm willing to put up with the inefficiency to get the flexibility of browser support.

This brings to what I choose to implement,
[`mjpg-streamer`][96], a small open source MJPEG streaming server
that has been ported to the Raspberry Pi.
`mjpg-streamer` has a HTTP server streaming plugin,
which starts a web server that that you can connect your browser to watch the video.
This is all we need if the objective is to stream the viedo on you local LAN.
If you want to watch the video from anywhere,
you'll need to give your Raspberry Pi a static address
and open a port and forward from your home router to the RPi,
and expose the RPi the wild world of the Internet.
I prefer not to do this, and how to work around this will be shown in a subsequent step.
For now, we'll focus on how to get video streaming to a browser on your local LAN.

### H.264
https://www.videolan.org/developers/x264.html

### Converting Video Formats
* convert a video with ffmpeg
* HandBrake - https://handbrake.fr/downloads.php

----

## What is a Codec?
Most of the video you'll come across is compressed,
usually to make them smaller in size and more manageable,
usually with some loss in video quality.
A codec compresses and decompresses data.
It interprets the video file and determines how to play it on your screen.
Your computer comes with many codecs pre-installed,
though you can install codec packs for wider support,
or a program like VLC which have lots of codec support built-in.

Some examples of codecs include:

* FFmpeg (which includes formats like MPEG-2, the format in which DVDs are stored, and MPEG-4, the format Apple uses for movies in the iTunes store)
* DivX, which works with a certain type of MPEG-4 file, and was often used to rip DVDs in the pre-HD era
* XviD, an open source version of DivX, popular among movie pirates
* x264, which compresses H.264 videos (Also known as MPEG-4 AVC), and is very popular for high definition videos

There are a lot of different codecs out there, and it can get really confusing with all the different versions of MPEG standards.

* [Comparison of video codecs](https://en.wikipedia.org/wiki/Comparison_of_video_codecs)
* [Moving Picture Experts Group - MPEG](https://en.wikipedia.org/wiki/Moving_Picture_Experts_Group)

## What Is a Container?
A container is, essentially, a bundle of files. Usually a container consists of a video codec and an audio codec, though it can also contain things like subtitles. Containers allow you to choose one codec for your video and one for your audio, which is nice—that way, you can choose to use the high-quality DTS audio, or compress your audio to something like MP3 for even more space savings. It just gives you a bit more control over how you record your videos or rip your movies. Popular containers include:

* AVI
* Matroska (which uses the extension MKV)
* MP4 (which has been popularized by Apple in the iTunes Store—note that this can also come with the M4V extension, but the container is the exact same)
* MOV (which was created by Apple)

The main difference between different containers is not only the codecs they support but what other features they support—like subtitles or chapters. These days, MKV is an extremely popular container, mainly because it supports nearly any video codec under the sun, as well as a ton of extra features (plus it's open source).

* [Comparison of video container formats](https://en.wikipedia.org/wiki/Comparison_of_video_container_formats)

----

# Video Streaming

## What is Video Streaming?
Streaming technology usually refers to sending large streams of data between systems.
Because the data is too big to send in one go,
it is cut in to smaller packets of data.
These packets are then send sequentially,
and in order to decrease the size of the data, it is often compressed.

The operating principle of video streaming is the same.
Basically a video is compressed and then send in packets through a transport.
And there is a differences between streamed and static video media.
The key consideration when streaming media to a browser
is the fact that rather than playing a finite file,
we are relaying a file that is being created on the fly,
and has no pre-determined start or end.
This finite file sits on a server and can be delivered,
like most other files, to the browser
(ths is known as a [progressive download][126]).
Live [streamed media][127] lacks a finite start and end time, as in static file.
It is a stream of data that the server passes on down the line to the browser
and often uses [adaptive streaming][128].
Adaptive streaming works by detecting a user's bandwidth and CPU capacity in real time
and adjusting the quality of a video stream accordingly.
There a [multiple adaptive streaming formats][129] available.

Some tips on using FFmpeg and libx264 for streaming media:
[FFmpeg and how to use it wrong](https://videoblerg.wordpress.com/2017/11/10/ffmpeg-and-how-to-use-it-wrong/)

## What is Video Compression?
There are two methods of compressing video data.
The first is "Inter-Frame" based compression.
Think of this as saving every image in the video as a JPEG image.
An example compression algorithm that works accordingly is Motion-JPEG.
Other examples are DV and HuffYUV.

The second method is "Intra-Frame" based compression
and it uses the the differences in images.
If you start with an image the "Intra-Frame" based method only
tracks the differences in the following frames.

Some highly sophisticated algorithms have been developed over the years,
of which the most used one is H.264.
Other examples include Theora, Xvid and Divx.
Compression algorithms for video are often referred to as a "codec".

Seeking through a video is much more difficult when the compression is "Intra-Frame" based.
Before finding a frame at a certain position in the video,
the seek method first needs to find a full frame (keyframe),
and from there calculate the differences to the position.
The H.264 is a codec based on the differences in frames
and therefore less suited for situations where you do a lot of seeking in the videostream.
However when it comes to bandwidth, the H.264 codec is the clear winner compared to Motion-JPEG.
The H.264 codec was designed for streaming.

## What are the Video Transport Protocols?
To transport the stream of of video data packets,
there are several protocals to pick from.
In TCP/IP networks an UDP transport is the most simple solution.
The RTP protocol is a transport protocol on top of UDP.
Nowadays HTTP is also often used as a transport for streaming video.

UDP doesn't assure that packets are recieved in order,
but the RTP protocol provides this on top of UDP,
making it better suited for transporting video streams.

## Streaming Latency
The streaming latency has little to do with the encoding by the Pi,
but mostly to do with the playing or receiving end.
If the Pi weren’t capable of encoding a frame before the next frame arrived,
it wouldn’t be capable of recording video at all
since it buffers would rapidly become filled and stall.

Players typically introduce several seconds worth of latency.
The primary reason is that most players (e.g. VLC)
are optimized for playing streams over a network.
Such players allocate a large (multi-second) buffer
and only start playing once this is filled to guard against possible future packet loss.

For additional information, see the following:

* Latency - [Understanding Video Latency: What is video latency and why do we care about it?](http://www.vision-systems.com/content/dam/VSD/solutionsinvision/Resources/Sensoray_video-latency_article_FINAL.pdf)
* [Why is there so much latency when streaming video?](http://picamera.readthedocs.io/en/release-1.10/faq.html#why-is-there-so-much-latency-when-streaming-video)
* To measure performance of threading, use `mpstat -P ALL 1`.
* To measure the Internet speed, use https://fast.com/ or http://www.speedtest.net/
* See https://github.com/sivel/speedtest-cli
* at home using desktop, I'm getting 1ms to 10ms pings, 855Mbps upload, 847Mbps download
* at home using BlueRpi, I'm getting
* See /home/jeff/blogging/content/ideas/network-speed-testing.md

----

## Steaming / Broadcast Options for the Raspberry Pi
* [Broadcast Raspberry Pi camera](https://djynet.net/?p=744)
* [Raspberry Pi Streaming video](https://www.mjoldfield.com/atelier/2013/12/raspivid.html)


## What Type of Streaming Do I Need?
Use this this to help structure the content here:
[What are the options - Broadcast Raspberry Pi camera](http://djynet.net/?p=744)

An important requirement for my streaming camera needs
are that you can view it with ease,
viewed by multiple people concurrently,
and done so from anywhere with no restriction from networks or firewalls.
To me, this means that the video stream should be playable from a web browser.
Having to run a specific player, aka video decoder, is a complication I don't want.
So I want something that will work on any browser.
To get past the restrictions a network or firewall could impose,
I'll need to have [reverse proxy][115],
effectively putting the video stream on a web server outside the Raspberry Pi's network.

So this calls for a live video stream to an external web server.
There are a few modern streaming protocols for web browsers out there
but all the incompatible options is really annoying.
[Choosing a video format for streaming to a website][117] is a complicated and confusing topic:

* [HTTP Live Streaming (HLS)][124] is Apple's choice.
It isn’t supported natively by any desktop browser except for Safari.
It is supported on mobile.
This means you will need either a Silverlight or Flash player to play the stream on your desktop,
which is great except Chrome no longer supports either of these things.
* [MPEG-DASH][123] is better though there is no native support in the desktop browsers
yet but there are JavaScript implementations of it that allow its use via MSE.
* [Fragmented MP4][122] is supported by Adobe and Microsoft, but requires browser plugins
* [HTML5 video][125] is the new standard way to embed a video in a web page.

Before HTML5, a video could only be played in a browser
with a plug-in (like [Flash Video][32]),
but supported only on HTML5 compatible browsers like Chrome and FoxFire.

## Streaming Video to Web Page
The [introductory article about the camera module][99]
in the Raspberry Pi blog shows a method to [stream video][104]
from the Raspberry Pi to another computer.
(See "How does video streaming work?", [Part 1][105], [Part 2][106], [Part 3][107].)
This method essentially works as follows:

* On the Pi the `raspivid` utility is used to [encode H.264 video][100] from the camera
* The video stream is piped to the [netcat (`nc`)][101] utility,
which pushes it out to the network address where the video player is.
* On the player computer `nc` receives the stream and pipes it into [`mplayer`][102] to play.

This is an efficient method of streaming video from the RPi to another computer,
but it has a few problems for my use:

* The Raspberry Pi needs to know the address of the computer that is playing the video
* The playing computer needs to have an advanced player that can play a raw H.264 video stream.
* Since this system relies on a direct connection between the Pi and the player,
it is impossible to have the player computer connect and/or disconnect from the stream,
the connection needs to be on at all times.
* And what if you want to support two, three, or N concurrent players?
This cannot be done with this method.

So I want to live video stream broadcast (not just point-to-point)
from my Raspberry Pi camera, to a web server where
**any HTML5 compatible browser** can play it
(see this site to test your browser for HTML5 compatibility - http://html5test.com/).
This has proven to be a taller order than I originally imagined.


## Real Time Streaming Protocol (RTSP)
The Real Time Streaming Protocol (RTSP) is a network control protocol designed for use in entertainment and communications systems to control streaming media servers. The protocol is used for establishing and controlling media sessions between end points.

The Real-Time Streaming Protocol allows to control multimedia streams delivered, for example, via RTP. Control includes absolute positioning within the media stream, recording and possibly device control.

RTSP is a realtime streaming protocol. Meaning, you can stream whatever you want in real time. So you can use it to stream LIVE content (no matter what it is, video, audio, text, presentation...). RTP is a transport protocol which is used to transport media data which is negotiated over RTSP

* [The Many Ways to Stream Video using RTP and RTSP](https://cardinalpeak.com/blog/the-many-ways-to-stream-video-using-rtp-and-rtsp/)

## Real Time Messaging Protocol (RTMP)
RTMP was originally developed for streaming audio, video, and data over the Internet, between a server and a Flash player. It was created by Macromedia (now part of Adobe) and was later released as an open specification that’s commonly used for Flash and Flex/Air applications. The protocol supports AMF, SWF, FLV, and F4V file formats.

Today, most people agree that the video support included within HTML5 will reduce the need for these file formats. However, because there is so much video out there, and much of it is not HTML5-compliant yet, these traditional formats still carry a lot of weight.

Like WebSockets, RTMP creates persistent connections between a server and a client application written in Flash or Flex/Air. The technology is used to reduce the overhead involved in establishing and tearing down connections for low-latency or highly-interactive apps. Also like WebSockets, performance testing for RTMP is typically focused around the optimizing data that’s pushed from the server to the client.

* http://www.neotys.com/blog/testing-tips-for-todays-tech-html5-websockets-rtmp-adaptive-bitrate-streaming/
* [Android Streaming Live Camera Video to Web Page](http://www.androidhive.info/2014/06/android-streaming-live-camera-video-to-web-page/)

## Streaming RTMP with crtmpserver and ffmpeg
`crtmpserver` is a high performance streaming platform

* [crtmpserver + ffmpeg](https://telecom.altanai.com/2016/06/19/crtmpserver-ffmpeg/)

----

# Video Streaming Method
In the subsequent sections, I plan to show several methods for streaming video.
They will differ in there easy of use, in what tools are needed to create them,
and how & where you access the resulting video stream.
The methods explored are:

* Streaming to a Client - This involves streaming to a client could be co-located or some where on your network.
while the simples method, it requires your target to have and know how to use the video client.
* Streaming to Youtube
* Streaming to Webpage
* Streaming to HTML5 Browser

If you want to build remote controlled robot or drone with an onboard camera,
your defenitly going to needed minimal lag / latancy in the video stream.
I did **a lot** of research to get a lagless video stream from the Raspberry Pi.
It can prove to be quite a challenge,
a few methods that work best: `gstreamer` and `netcat`.
Both are detailed below along with several other metods.
GStreamer appears to provide the most stable, lag-free, and flexible solution to me.

## Streaming To Youtube
Like most Internet streaming services,
YouTube use a protocol called Real-Time Messaging Protocol (RTMP).
So in order to stream to Youtube, we'll need the RTMP URL as well as a private key for our specific stream.

* [Streaming Live to YouTube and Facebook using Raspberry Pi Camera](https://www.digikey.com/en/maker/blogs/streaming-live-to-youtube-and-facebook-using-raspberry-pi-camera)
* [Streaming To Youtube](https://learn.adafruit.com/ultimate-youtube-live-camera/streaming-to-youtube)

## Streaming with the VideoLAN Client (VLC)
* [Raspberry Pi MJPEG at ~30fps](https://www.lewisroberts.com/2015/05/15/raspberry-pi-mjpeg-at-30fps/)

[Streaming with VLC][12] from a Raspberry Pi is fairly straightforward.
I was unable to do it lagless,
but the cool thing is that you can pick up the stream on an iPad with vlc installed,
or on a mac using just the VLC app. No need for brewing.

First install VLC on the RPi:

```bash
# install videolan client - vlc
sudo apt-get install vlc
```

This will install two flavors of VLC:

* `vlc`**- VLC Player (display with controls)
* `cvlc`**- Commandline version of VLC Player (display without controls)

If you want to launch VLC without any graphical interface, replace `vlc` with `cvlc`.

To start streaming from the Raspberry Pi,
from the RPi to one other computer (aka unicast streaming),
do the following:

```bash
# get my ip address of your streaming source
$ ip route get 8.8.8.8 | awk '{print $NF; exit}'
192.168.1.31

# start streaming the raspberry pi camera
raspivid -t 0 -hf -b 1000000 -w 640 -h 480 -fps 24 -o - | cvlc -vvv stream:///dev/stdin --sout '#standard{access=http,mux=ts,dst=:5000}' :demux=h264
```

To view the video stream,
open the VLC app on your destination computer
and pick up the stream with:

```bash
vlc -vvv --network-caching 200 http://192.168.1.31:5000
```

**below isn't working**

Alternatively, using the RTSP protocol:

```bash
# using rtsp protocol on server
raspivid -t 0 -vf -n -w 640 -h 480 -fps 24 -o - | cvlc -vvv stream:///dev/stdin --sout '#rtp{sdp=rtp://:5000}' :demux=h264

# on the client
vlc -vvv --network-caching 200 rtp://239.0.0.1:5000
```

You could also send the video stream such that multiple
clients could view the video (aka multicast streaming):

```bash
# create video stream from raspberry pi
raspivid -o - -t 0 -hf -b 1000000 -w 640 -h 480 -fps 24 | cvlc -vvv stream:///dev/stdin --sout '#transcode{vcodec=h264,vb=800,acodec=none}:rtp{dst=239.0.0.1,port=5000,mux=ts}'

# one of the clients viewing the streaming video
vlc -vvv --network-caching 200 rtp://239.0.0.1:5000
```

```bash
# create video stream from raspberry pi
raspivid -o - -t 0 -hf -b 1000000 -w 640 -h 480 -fps 24 | cvlc -vvv stream:///dev/stdin --sout udp://239.0.0.1:5000

# one of the clients viewing the streaming video
vlc -vvv --network-caching 200 udp://239.0.0.1:5000
```

```bash
# create video stream from raspberry pi
raspivid -o - -t 0 -hf -b 1000000 -w 640 -h 480 -fps 24 | cvlc -vvv stream:///dev/stdin --sout '#transcode{vcodec=h264,vb=800,acodec=none}:udp{dst=239.0.0.1,port=5000,mux=ts}'

# one of the clients viewing the streaming video
vlc -vvv --network-caching 200 udp://239.0.0.1:5000
```

```bash
# create video stream from raspberry pi
raspivid -o - -t 0 -hf -b 1000000 -w 640 -h 480 -fps 24 | cvlc -vvv stream:///dev/stdin --sout '#duplicate{dst=std{access=udp,mux=ts,dst=239.0.0.1:5000}}' :demux=h264 --ttl 4 -I http --sout-keep --loop

# one of the clients viewing the streaming video
vlc -vvv --network-caching 200 rtp://239.0.0.1:5000
```


* [How to stream video from Raspberry Pi camera and watch it live](https://raspberrypi.stackexchange.com/questions/23182/how-to-stream-video-from-raspberry-pi-camera-and-watch-it-live)
* [The Raspberry Pi Camera Module](https://www.ics.com/blog/raspberry-pi-camera-module#.VJFhbyvF-b8)
* [VLC media player](https://github.com/videolan/vlc)
* [Documentation:Streaming HowTo New](https://wiki.videolan.org/Documentation:Streaming_HowTo_New/)
* [Documentation:Streaming HowTo/Command Line Examples](https://wiki.videolan.org/Documentation:Streaming_HowTo/Command_Line_Examples/)
* [How to add "special effects" to videos in Linux using VLC commands](https://www.itworld.com/article/2980369/linux/how-to-add-special-effects-to-videos-in-linux-using-vlc-commands.html)


## NetCat + MPlayer
The concept here is simple.
You use `netcat` to dump the camera data over a network pipe.

First thing to do, on the destination computer, start your `mplayer`
receiving the streaming video on some port (5000 in my case):

```bash
# get my ip address for later use
$ ip route get 8.8.8.8 | awk '{print $NF; exit}'
192.168.1.200

# stream video into mplayer
nc -l -p 5000 | mplayer -cache 1024 -
```

Now do the following on the Raspberry Pi
(in my cast, at IP address `192.168.1.200`):

```bash
# stream the raspberry pi video to another computer
raspivid -n -t 0 -w 1280 -h 720 -fps 49 -o - | nc 192.168.1.200 5000
```

## GStreamer

* [Gstreamer basic real time streaming tutorial](http://www.einarsundgren.se/gstreamer-basic-real-time-streaming-tutorial/)

[!gstreamer](https://upload.wikimedia.org/wikipedia/commons/thumb/d/db/Gstreamer-logo.svg/530px-Gstreamer-logo.svg.png)
**NOTE: gstreamer doesn't appear to work very well on Wayland Display Manager.**
[GStreamer][76] is a framework for creating streaming media applications.
The GStreamer framework is designed to make it easy to write applications
that handle audio or video or both.
It isn't restricted to audio and video,
and can process any kind of data flow.
Its main advantages are that the pluggable components can be mixed and matched
into arbitrary pipelines so that it's possible to write a
full-fledged video or audio editing application.
You can also use the pipelining capabilities of GStreamer
to take the video output from a Raspberry Pi camera module
and encode the video in H.264 format before passing it on to Janus.
GStreamer is a pipeline-based multimedia framework that links together
a wide variety of media processing systems to complete complex workflows.
For instance, GStreamer can be used to build a system that reads files in one format,
processes them, and exports them in another.
The formats and processes can be changed in a plug and play fashion.
(See this [diagram of the pipeline processing][77] for an example.)
This processing can be done on the [shell command line][82] or via
[Python bingdings][80] or [C bindings][81].

For good introductory tutorials on GStreamer,
checkout the articles "[Videostreaming with Gstreamer][84]",
"[Gstreamer basic real time streaming tutorial][83]",
"[Gstreamer basic real time streaming tutorial][86]"
and the video "[Fun with GStreamer Pipelines][85]".

“v4l2src” tells Gstreamer we want it to grab video from a video capture source,
in our case, a webcam using the Video4Linux2 drivers.

```bash
# streams desktop camera
gst-launch-1.0 -v v4l2src device=/dev/video0 ! xvimagesink
gst-launch-1.0 -v v4l2src ! xvimagesink
gst-launch-1.0 v4l2src ! xvimagesink

# the "hello world" of gstreamer (video test pattern and screen with snow)
gst-launch-1.0 videotestsrc ! autovideosink

# just screen with snow
gst-launch-1.0 videotestsrc pattern=snow ! autovideosink
```

* Smooth playback of adaptive video streams on Raspberry Pi with gst-mmal - https://gstreamer.freedesktop.org/data/events/gstreamer-conference/2016/John%20Sadler%20-%20Smooth%20video%20on%20Raspberry%20Pi%20with%20gst-mmal%20(Lightning%20Talk).pdf
* [HackspaceHat part 1: WebRTC, Janus and Gstreamer](https://planb.nicecupoftea.org/2015/07/28/hackspacehat-part-1-webrtc-janus-and-gstreamer/)

Now using gst-launch-1.0 which promises less latancy

* [Modern way to stream H.264 from the Raspberry Cam](https://raspberrypi.stackexchange.com/questions/26675/modern-way-to-stream-h-264-from-the-raspberry-cam)
* [Low-Latency Live Streaming your Desktop using ffmpeg](http://fomori.org/blog/?p=1213)
* [Raspberry Pi MJPG-Streamer low latency](https://stackoverflow.com/questions/20921541/raspberry-pi-mjpg-streamer-low-latency)
* [Raspberry Pi Camera openCV rendering with low latency streaming with gstreamer via RTP](http://hopkinsdev.blogspot.com/2016/06/raspberry-pi-camera-opencv-rendering.html)
* [Live Video Streaming with Raspberry Pi camera module](https://wiki.jmk.hu/wiki/Live_Video_Streaming_with_Raspberry_Pi_camera_module)
* [Raspivid v Gst-rpicamsrc (Updated)](https://sparkyflight.wordpress.com/tag/gst-rpicamsrc/)
* [Raspberry Pi Quadcopter](http://rpiquadcopter.blogspot.com/2014/06/raspberry-pi-camera-module-video.html)
* [Raspberry pi Camera with Gstreamer-1.0](http://linuxembeddedworld.blogspot.com/2014/03/raspberry-pi-camera-with-gstreamer-10.html)

* [GStreamer-1.0 personal cheat sheet](https://gist.github.com/strezh/9114204)
* [Collections of GStreamer usages](https://gist.github.com/nebgnahz/26a60cd28f671a8b7f522e80e75a9aa5)
* [Gstreamer cheat sheet](http://wiki.oz9aec.net/index.php/Gstreamer_cheat_sheet)
* [GStreamer for Robtics](http://docs.erlerobotics.com/erle_robots/related/ground_control_station/qgroundcontrol/camera_streaming)

You can [install GStreamer][05] via the following:

```bash
sudo apt-get install libgstreamer1.0-0 gstreamer1.0-plugins-base gstreamer1.0-plugins-good gstreamer1.0-plugins-bad gstreamer1.0-plugins-ugly gstreamer1.0-libav gstreamer1.0-doc gstreamer1.0-tools
```

on you raspberry pi

```bash
raspivid -t 0 -w 1080 -h 720 -fps 25 -hf -b 2000000 -o - | gst-launch-1.0 -v fdsrc ! h264parse ! rtph264pay config-interval=1 pt=96 ! gdppay ! tcpserversink host=192.168.1.31 port=5000
```

on the destination computer

```bash
gst-launch-1.0 -v tcpclientsrc host=192.168.1.31 port=5000 ! gdpdepay ! rtph264depay ! avdec_h264 ! videoconvert ! autovideosink sync=false
```

Gstreamer using RTP/UDP

```bash
# on you raspberry pi (server)
raspivid -n -w 1280 -h 720 -b 4500000 -fps 30 -vf -hf -t 0 -o - | gst-launch-1.0 -v fdsrc ! h264parse ! rtph264pay config-interval=10 pt=96 ! udpsink host=192.168.1.200 port=5000

# on the destination computer = 192.168.1.200 (client)
gst-launch-1.0 -v udpsrc port=5000 caps='application/x-rtp, media=(string)video, clock-rate=(int)90000, encoding-name=(string)H264' ! rtph264depay ! avdec_h264 ! videoconvert ! autovideosink sync=false
```


###############################################################################
* [Real-time MPEG-2 encoding with ffmpeg](http://www.smorgasbork.com/2009/12/03/real-time-mpeg-2-encoding-with-ffmpeg/)
    * see comment by author - This article is pretty old and really doesn’t apply to current ffmpeg versions. You also wouldn’t use MPEG2 for a streaming application.  You want to encode to h264, and you probably want to stream via HLS, which is supported by almost all current browsers (either directly or with Javascript extensions) with the exception of MSIE 11 and below. For MSIE, you need to use RTMP streaming along with a flash-based player.
    * check out this instead - http://www.bogotobogo.com/VideoStreaming/ffmpeg_http_live_streaming_hls.php

ffmpeg -i test.mp4 \
    -vcodec mpeg2video -pix_fmt yuv420p -me_method epzs -threads 4 \
    -r 29.97 -g 45 -bf 2 -trellis 2 -cmp 2 -subcmp 2 -s 704x396 -b 2500k -bt 300k \
    -acodec mp2 -ac 2 -ab 192k -ar 44100  \    
    -async 1  \    
    -y \     
    -f vob output.mpg

ffmpeg -i /dev/video0 -vcodec mpeg2video -pix_fmt yuv420p -me_method epzs -threads 4 -r 29.97 -g 45 -bf 2 -trellis 2 -cmp 2 -subcmp 2 -s 704x396 -b 2500k -bt 300k -acodec mp2 -ac 2 -ab 192k -ar 44100 -async 1 -y -f vob output.mpg
###############################################################################


###############################################################################

**Check this out for something different** - [Low-Latency Live Streaming your Desktop using ffmpeg](http://fomori.org/blog/?p=1213)

On your computer running an X Server,
you can grab the X11 display and send it to another computer for display.
On the X Server compluter, start up the following:

```bash
ffmpeg -f x11grab -s 1280x720 -framerate 30 -i :0.0 -c:v mpeg2video -q:v 20 -pix_fmt yuv420p -g 1 -threads 2 -f mpegts - | nc 192.168.1.31 5000
```

On the computer you wish to stream the video, do the following:

```bash
nc -l -p 5000 | mplayer -cache 1024 -
```

###############################################################################

-----

# A Tour of Video Stream Techniques Using Raspberry Pi
* https://en.wikipedia.org/wiki/Netcat
* https://mike632t.wordpress.com/2014/11/04/video-streaming-using-netcat/

## Playing Video Continuously Locally
**H.264 Encoding / Using Player / Viewable on RPi / One Viewer**
The most basic type of video would be to play it locally
on the Raspberry Pi which has the Pi Camera.
This is a form of video streaming, but the most elementary type.

```bash
# stream H.264 encode video from the pi camera directly to a player
raspivid -t 0 -w 640 -h 360 -fps 30 -o - | mplayer -
```

## Streaming Raw H.264 From A Raspberry Pi into a Player
**H.264 Encoding / Using Player / Viewable on Local Network / One Viewer**

Here I will explains how to generate a raw H.264 stream on a Raspberry Pi (RPi)
and send that stream to other computers on a network
where it can be viewed.
The stream can be played on:

* Another Raspberry Pi using the standard hello_video demo program
* Android using the RPi Camera Viewer (RPiC) app

http://frozen.ca/streaming-raw-h-264-from-a-raspberry-pi/
http://frozen.ca/rpi-camera-viewer-for-android/
https://en.wikipedia.org/wiki/Netcat

### Step 1: Video Streamer
The RPi's Pi Camera tool `raspivid` will be use to create the video.
we'll use the following:

```bash
# stream H.264 encode video from the pi camera
raspivid -n -ih -t 0 -rot 0 -w 640 -h 360 -fps 15 -o -
```

Where the parameters and options mean:

* **-w 1280** - video image pixel width
* **-w 720** - video image pixel height
* **-fps 15** - frames per second
* **-n** - to not show the video on the Raspberry Pi display
* **-ih** - to insert H.264 headers into the stream
* **-t 0** - to keep streaming forever
* **-rot 0** - to not rotate the stream
* **-o –** - to send the stream to stdout

We will pipes the output of `raspivid` into the netcat program, `nc`,
which then sends the stream out over a specific TCP/IP port.
We can use the following for `nc`:

```bash
# netcat will listen to port 5001 for a connection
nc -v -k -4 -l 5001
```

netcat can only handle one stream at a time.
If you want to handle multiple network streams at the same time,
you need to replace netcat with `ncat`,
which is part of the nmap package (install via `sudo apt-get install -y nmap`)

Now just substitute `ncat` for `nc` in the above command
and multiple devices will be able to view the stream simultaneously.

The netcat parameters are:

* **-l 5001** - listen on local port 5001
* **-k** - to connect repeatedly
* **-v** - to produce verbose error messages
* **-4** - to use IPv4 addresses only

Putting this all together,
on your RPi capturing the video, use the following command:

```bash
# outbound stream of H.264 encode video from the pi camera to a port
raspivid -n -ih -t 0 -rot 0 -w 640 -h 360 -fps 15 -o - | ncat -v -k -4 -l 5001
```

### Step 2: Video Player
On another system within your network,
we need to take this stream of H.264 encode video
and pipe into into a video decoder.
`mplayer` can decode H264 video
and we'll use netcat again to connect with the source.

**NOTE:** If you have a firewall enabled
on the machine that is to receive the video stream,
you will also need to allow inbound UDP connections.
https://mike632t.wordpress.com/2014/11/04/video-streaming-using-netcat/

```bash
nc 192.168.1.200 5001 | mplayer - -fps 15

nc -l -u -p 5001 192.168.1.208 | mplayer -
```



* https://mike632t.wordpress.com/2014/11/04/video-streaming-using-netcat/
* http://frozen.ca/streaming-raw-h-264-from-a-raspberry-pi/
* https://www.raspberrypi.org/forums/viewtopic.php?t=178493
* http://www.raspberry-projects.com/pi/pi-hardware/raspberry-pi-camera/streaming-video-using-vlc-player
* http://www.raspberry-projects.com/pi/pi-hardware/raspberry-pi-camera/streaming-video-using-vlc-player
* https://raspberrypi.stackexchange.com/questions/27082/how-to-stream-raspivid-to-linux-and-osx-using-gstreamer-vlc-or-netcat

## Streaming Raw H.264 From A Raspberry Pi but now using v4l2-ctl and cvlc
* https://www.raspberrypi.org/forums/viewtopic.php?f=43&t=146597
* https://raspberrypi.stackexchange.com/questions/23182/how-to-stream-video-from-raspberry-pi-camera-and-watch-it-live
* https://web.archive.org/web/20151012014829/http://www.videolan.org:80/doc/streaming-howto/en/ch03.html

## uv4l on Raspberry Pi
**Using Browser / Local Network / Multiple Viewers**
how to stream a Raspicam to a web using a Raspberry Pi and the UV4L driver.

* http://blog.cudmore.io/post/2016/06/05/uv4l-on-Raspberry-Pi/
* http://www.instructables.com/id/Raspberry-Pi-Video-Streaming/
* [uv4l-server](https://www.linux-projects.org/documentation/uv4l-server/)

## MJPG Streaming
* https://www.raspberrypi.org/forums/viewtopic.php?t=45178

## stream Sent straight to web clients
* https://github.com/pimterry/raspivid-stream
* http://www.mjoldfield.com/atelier/2013/12/raspivid.html
* https://raspberrypi.stackexchange.com/questions/7446/how-can-i-stream-h-264-video-from-the-raspberry-pi-camera-module-via-a-web-serve
* http://blog.cudmore.io/post/2016/06/05/uv4l-on-Raspberry-Pi/

## Raspberry Pi as a Live Streaming Camera That Broadcasts to YouTube
* https://lifehacker.com/set-up-a-raspberry-pi-as-a-live-streaming-camera-that-b-1790317509














## Streaming Video on Youtube
* [Making It Easier to Go Live](https://youtube-creators.googleblog.com/2018/03/making-it-easier-to-go-live.html)
    * [YouTube Does WebRTC – Here’s How](https://webrtchacks.com/youtube-does-webrtc-heres-how/)
* [YouTube Live Events: Do it live!](https://www.youtube.com/my_live_events)
* [Streaming Live to YouTube and Facebook using Raspberry Pi Camera](https://www.digikey.com/en/maker/blogs/streaming-live-to-youtube-and-facebook-using-raspberry-pi-camera/)
* [Live Stream to YouTube With a Raspberry Pi](http://www.makeuseof.com/tag/live-stream-youtube-raspberry-pi/)
* [Youtube: Introduction to live streaming](https://support.google.com/youtube/answer/2474026?hl=en)
* [Raspberry Pi IP Camera YouTube Live Video Streaming Server](http://videos.cctvcamerapros.com/raspberry-pi/ip-camera-raspberry-pi-youtube-live-video-streaming-server.html)


## Video File on HTML5 Browser
In [modern browsers][131] (which loosely means a browser without workarounds
and conforming to the latest Web/HTML standards, e.g. a HTML5 compliant browser),
adding a video to your page is as easy as adding an image.
No longer do you need to deal with special plug-ins or require crazy markup,
you can do it with a single element.

For example,
obtain any `mp4` video file (like `All-is-Full-of-Love-by-Bjork.mp4`
created via `youtube-dl -k https://vimeo.com/43444347`) and
put the HTML code below in file called `html5-video-example-1.html`
in the same same directory as the `mp4` file.
Then fire up a browser pointing to the HTML file; something like
`google-chrome html5-video-example-01.html`.

```html
<!DOCTYPE html>
<html>
<head>
	<title>HTML5 Video Example-1</title>
</head>
<body>
    <h1> HTML Video Example-1</h1>
    <video src="/home/jeff/tmp/All-is-Full-of-Love-by-Bjork.mp4" controls>
    </video>
</body>
</html>
```

That's all you need to embed a simple video on a webpage
and show the basic controls so that a user can play,
pause, or otherwise control the video.
Of course, this can get more elaborate.
Check out the posting "[HTML5 Video][132]" for examples
containing subtitles, opening posters, etc. like this:

```html
<!DOCTYPE html>
<html>
<head>
	<title>HTML5 Video Example-2</title>
	<style type="text/css">
	       html, body {
	           color: #FFFFFF;
	           text-align: center;
	           background-color: #111;
	       }
	</style>
</head>
<body>
    <h1> HTML Video Example-2</h1>
    <video controls style="width:640px;height:360px;" poster="https://thenewboston.com/images/forum/logos/145efe2aab7ca9959397d6344180b658.png">
        <source src="https://ia800201.us.archive.org/12/items/BigBuckBunny_328/BigBuckBunny_512kb.mp4"
            type="video/mp4">
        <track src="/home/jeff/tmp/mov_bbb.vtt" label="english subtitles"
            kind="subtitles" srclang="en" default></track>
    </video>
</body>
</html>
```

################################################################################

# Video Streaming Server
* [OpenCV – Stream video to web browser/HTML page](https://www.pyimagesearch.com/2019/09/02/opencv-stream-video-to-web-browser-html-page/)
* [Live video streaming over network with OpenCV and ImageZMQ](https://www.pyimagesearch.com/2019/04/15/live-video-streaming-over-network-with-opencv-and-imagezmq/)
* [Running a Raspberry Pi Webserver with Flask](https://raspberrypi-aa.github.io/session4/flask.html)
* [Python Live Video Streaming Example](http://www.chioka.in/python-live-video-streaming-example/)
* [Video Streaming with Flask](https://blog.miguelgrinberg.com/post/video-streaming-with-flask)
* [Flask Video Streaming Revisited](https://blog.miguelgrinberg.com/post/flask-video-streaming-revisited)
* [Series of Video Tutorals on Flask](https://www.youtube.com/playlist?list=PLLjmbh6XPGK4ISY747FUHXEl9lBxre4mM)
* [Make Your Python Prettier With Decorators|](https://hackaday.com/2018/08/31/an-introduction-to-decorators-in-python/)
* [Stream Video from the Raspberry Pi Camera to Web Browsers, Even on iOS and Android](https://blog.miguelgrinberg.com/post/stream-video-from-the-raspberry-pi-camera-to-web-browsers-even-on-ios-and-android)
* [Create your own video streaming server with Linux](https://opensource.com/article/19/1/basic-live-video-streaming-server)
* [Live video streaming with open source Video.js](https://opensource.com/article/20/2/video-streaming-tools)

## Streaming Video Using Raspberry Pi Zero
Despite the ease in which video files can be displayed within a HTML5 browser,
as shown in the previous section,
streaming to HTML5 in 2017 is still annoyingly hard.
I then came upone [PhotosLab HTML5 video streaming via websockets][133]
using a package called [JSMpeg][134].
[JSMpeg is a Video Player written in JavaScript][135].
It uses the broadcast industries [MPEG transport stream (MPEG-TS, MTS or TS)][136] transport streaming format.
It it claims to do low latency streaming (~50ms) via WebSocktes,
decode 720p Video at 30fps on an iPhone 5S, and works in any modern browser (Chrome, Firefox, Safari & Edge).
Dominic Szablewski, the creater of JSMpeg,
explains [here][137] why he resorting to what appears to be a browser hack makes sense.

The author of JSMpeg gives a [nice write up][01]
(and more [here][133] and [here][134]) on why the Pi Camera sometimes
has latency problems and how JSMpeg helps to resolve this by resorting to the
primitive features of MJPEG1 video format and JavaScript capabilities found in all browsers.

To top it off, Dominic provde an [implementation for the Raspberry Pi][138].
Procedures for this are in the following section.

### Step 0: Security via HTTPS
Almost any website you visit today is protected by HTTPS.
If yours isn’t yet, [it should be](https://developers.google.com/web/fundamentals/security/encrypt-in-transit/why-https).

* [How to get HTTPS working on your local development environment in 5 minutes]()

### Step 0: Make Sure Camera is Working
With all the moving parts on this approach,
lets makes sure each component is working properly.
The first and most fundamental component to check is the camera.
Lets see it the camera is working by using some of the Raspberry Pi's native camera tools:

```bash
# take picture and store in image.jpg
raspistill -o ~/tmp/image.jpg --width 1024 --height 768

# display picture for viewing
display ~/tmp/image.jpg

# capture 5 second video in file video.h264
raspivid -o ~/tmp/video.h264 --timeout 5000 --width 1024 --height 768 --codec H264

# play the video
mplayer ~/tmp/video.h264
```
### Step 1: Streaming Using pistreaming
First, lets try using a utility that the whole job for us.
`pistreaming` claims low latency streaming of the Pi's camera module to any reasonably modern web browser.
It make use of [JSMpeg][134], which is a Video Player written in JavaScript.
Other dependencies are the Python ws4py library, my picamera library (specifically version 1.7 or above), and FFmpeg

To begin, make sure you've got the dependent packages installed
and then clone the [`pistreaming` repository][58]:

```bash
# install required packages
sudo apt-get install libav-tools git python3-picamera python3-ws4py

# clone this repository
cd ~/src
git clone https://github.com/waveform80/pistreaming.git

# run the Python server script
cd pistreaming
python3 server.py
```

Now fire up your favorite web-browser and point it at the Raspberry Pi where your
running `pistreaming` using port `8082` (e.g. for me `google-chrome http://spycam-01:8082/`).
This configuration consumes about 85% of the CPU on the Raspberry Pi Zero.

>**NOTE:** While all this was easy enough to install on the Raspberry Pi Zero,
it initially showed a flickering image in the browser, never got an acceptable video.
I thought that if I used with more power than the RPi Zero (cpu was running at nearly 90%)
I could get better results.
Then I had problems booting up the RPi with the WiFi dongle installed and I happened to swap
out the WiFi dongle for a [Edimax EW-7811Un][02] (a dongle widely recommended for the RPi)
and both the boot and flicker problems went away.
I think the dongle was drawing two much power (WiFi dongle gets hot to the touch).


### Step 2: Install ffmpeg
* [Stream video from camera using ffserver on Raspberry Pi?](https://superuser.com/questions/1048724/stream-video-from-camera-using-ffserver-on-raspberry-pi)

[!ffmpeg](https://prupert.files.wordpress.com/2009/10/ffmpeg-logo.png)
[FFmpeg][95] claims to play pretty much anything that humans and machines have created;
supporting the most obscure ancient formats up to the cutting edge.
FFmpeg is able to decode, encode, transcode, mux, demux, stream, filter and play most anything.
Effectively, FFmpeg continuously streams a webcam's video to single `.jpg` file.
This toolkit contains:

* `**[ffmpeg][94]**` - is a command line tool for fast video and audio converter that can also grab from a live audio/video source.
* `**[ffserver][93]`** - is a streaming server for both audio and video.
* `**[ffplay][92]**` - is a command line simple and portable media player using the FFmpeg libraries and the SDL library.
* `**[ffprobe][91]**` - is a command line tool to gathers information from multimedia streams and prints it in human- and machine-readable fashion.

Unfortunately, Debian Jessie and later [no longer include the ffmpeg package][140].
To install it and make sure we have the latest and greatest ffmpeg,
I choose to [install from source code][139].
The procedure for this is below
(Get some coffee, this will take over two hours on a Raspberry Pi Zero.):

```bash
# install all the packages you need
sudo apt-get install yasm nasm build-essential automake autoconf libtool pkg-config libcurl4-openssl-dev intltool libxml2-dev libgtk2.0-dev libnotify-dev libglib2.0-dev libevent-dev checkinstall

# clone the ffmpeg package or download the latest snapshot
cd ~/src
git clone git://git.videolan.org/ffmpeg.git

# compile ffmpeg
cd ffmpeg
./configure --prefix=/usr
time make -j 8

# use RELEASE in checkinstall's version
# (NOTE: to work, I needed to create manually the directory /usr/share/ffmpeg)
cat RELEASE
sudo checkinstall

# install the deb file you made for ffmpeg
sudo dpkg --install ffmpeg_*.deb
```

### Step 3: Install node, npm, and Web Server
You need to install Node.js and npm, if not done already.
Node is used to stream the video, via a websocket, to a HTML5 browser.

Just to make sure I have maximum control over my `node.js` version,
like versioning for `ffmpeg`, I'm going to
head to the [Node.js download page][142] and grab the latest version.
For Linux, you can also install Node via the package manager,
for example [installing on Node.js on Ubuntu 16.04][143].
The install option I prefer is to use [Node Version Manager, `nvm`][141],
which give you on-demand access to the newest versions of Node.js,
but will also allow you to target previous releases that your app may depend on.
If you work with a lot of different Node.js utilities and projects,
you know sometimes you need to switch to other versions of Node.js.
That's where you can use `nvm` to download, install, and use different versions of Node.js.

```bash
# remove any previously installed version of node.js
sudo apt-get remove nodejs-legacy npm

# install required packages
sudo apt-get update
sudo apt-get install build-essential libssl-dev

# install nvm
curl -o- https://raw.githubusercontent.com/creationix/nvm/v0.33.0/install.sh | bash

# make sure to restart your terminal window
# verify theat nvm is installed which should output 'nvm' if the installation was successful
# NOTE: 'which nvm' will not work, since nvm is a sourced shell function, not an executable binary
command -v nvm
nvm --version

# to find out the versions of Node.js that are available for installation
nvm ls-remote
```
When you install Node.js using `nvm`,
the executable is called `node`.
You can see the version currently being used by the shell by typing `node -v`.

```bash
# you can install latest stable version of node
nvm install stable

# what version of node is currently being used
node -v

# list the multiple node.js versions installed
nvm ls

# you can install a specific version of node
nvm install 6.0.0

# to make one of the versions your default
# this version will be automatically selected when a new session spawns
nvm alias default 6.0.0

# can also switch to your default be using an alias
nvm use default

# to switch to and use another node.js version
nvm use 4.2.6
```

Verify your installation, which should also include the Node Package Manager, `npm`.

```bash
# where is node.js located
$ which node
/usr/bin/node

# what version of node.js are your using
$ node --version
v4.2.6

# location and version of node package manager
$ which npm
/usr/local/bin/npm
$ npm --version
4.1.1
```
For this streaming video solution using JSMpeg,
you'll also need to install Node.js `http-server`.
This web server will be use serve the static files
(`view-stream.html`, `jsmpeg.min.js`)
from which you can view the video in our browser.
If you wanted to, any other web server would work as well (nginx, apache, etc.
but `http-server` is very lightweight and simple to use.

```bash
# install a node web server
npm install -g http-server
```

### Step 4: Install JSMpeg
Install the JSMpeg GitHub repository on the Raspberry Pi:

```bash
# clone the jsmpeg repository
cd ~/src
git clone https://github.com/phoboslab/jsmpeg.git

# install node.js websocket library needed by jsmpeg
cd jsmpeg
npm install ws
```

### Step 5: Start the Websocket Relay
We'll now start things up and send our Raspberry Pi video to a web browser.
First, you must start the Websocket relay.
To do this, you must provide a password and a port for the incoming HTTP video stream from the camera.
You also provide a Websocket port that can connect to with a browser to see the video.

Within **one terminal window** on the Raspberry Pi, start up the Websocket relay:

```bash
# start the websocket relay
cd ~/src/jsmpeg
$ node websocket-relay.js password 8081 8082
Listening for incomming MPEG-TS Stream on http://127.0.0.1:8081/<secret>
Awaiting WebSocket connections on ws://127.0.0.1:8082/
```
Within a **second terminal window**, start your `http-server`
so we can serve the `view-stream.html` to a browser:

```bash
# start the web server so you can connect with the websocket
cd ~/src/jsmpeg
$ http-server
Starting up http-server, serving ./
Available on:
  http://127.0.0.1:8080
  http://192.168.1.27:8080
Hit CTRL-C to stop the server
```

Now within a **third terminal window**,
start `ffmpeg` to capture the Raspberry Pi video
and send it to the Websocket relay.
Provide the password and port from the above step in your destination URL:

```bash
# to access the camera board on /dev/video0 run
sudo modprobe bcm2835-v4l2

# start ffmpeg to capture video and send it to the websocket relay
ffmpeg -f v4l2 -framerate 25 -video_size 640x480 -i /dev/video0 -f mpegts -codec:v mpeg1video -s 640x480 -b:v 1000k -bf 0 http://localhost:8081/password
```

> **NOTE:** You can avoid running the `modprobe` by
putting `modprobe bcm2835-v4l2` in `/etc/rc.local` so it runs on every boot automatically.

### Step 6: View Video in Browser
Now, from anywhere on the _same network as the Raspberry Pi_
(so still not fulfilling all my requirements stated above),
fire up a browser to view the streaming video:

```bash
# view the streaming video
google-chrome http://spycam-01:8080/view-stream.html
```

Like the `pistreaming` utility, all of this appear to work on the Raspberry Pi Zero,
but there was considerable latency, the camera frame rate was 20 FPS,
and the CPU utilization was slightly above 90%.
I suspect this was due to the fact that the camera streaming (`ffmpeg`),
the WebSocket Relay (`websocket-relay.js`),
and the web server to view the video (`http-server`)
were all on the under powered Zero.

## Streaming Video But Distributing the Load
My next task is to move some the work being done by the able, but weak Raspberry Pi Zero,
to other more powerful processors.
Ultimately, these other  processors will be entirely off the network where the RPi Zero resides.
The `ffmpeg` process must run on the Raspberry Pi Zero,
since it must talk to the camera device driver,
but the other processes do not.

### Step 1: Move WebSocket Relay and Web Server
My plan is to us my beefer Linux box, `desktop`,
and placed both the WebSocket Relay (`websocket-relay.js`),
and the web server to view the video (`http-server`).

So in my case,
I created a clone of JSMpeg on `desktop` in directory `~/src/zetta-demo/tools`.
`desktop`'s IP address is `192.168.1.200`.

```bash
# install node.js websocket library needed by jsmpeg
cd ~/src/zetta-demo
npm install ws

# clone the jsmpeg repository
cd ~/src/zetta-demo/tools
git clone https://github.com/phoboslab/jsmpeg.git
```

### Step 2: Startup WebSocket Relay and Web Server
Like we did in the earlier,
we'll get the relay and server running so they can support FFmpeg running on the RPi Zero.
On `desktop` and within **one terminal window**, do the following:

```bash
# goto where you keep the websocket relay
cd ~/src/zetta-demo/tools/jspeg

# start the websocket relay
$ node websocket-relay.js password 8081 8082
Listening for incomming MPEG-TS Stream on http://127.0.0.1:8081/<secret>
Awaiting WebSocket connections on ws://127.0.0.1:8082/
```

Still on `desktop`, within a **second terminal window**:

```bash
# goto where  you keep the websocket relay
cd ~/src/zetta-demo/tools/jspeg

# start the web server so you can connect with the websocket
$ http-server
Starting up http-server, serving ./
Available on:
  http://127.0.0.1:8080
  http://192.168.1.200:8080
  http://192.168.1.13:8080
Hit CTRL-C to stop the server
```

Now on the Raspberry Pi Zero, within a **third terminal window**,
I ran the following:

```bash
# start ffmpeg to capture video and send it to the websocket relay
ffmpeg -f v4l2 -framerate 25 -video_size 640x480 -i /dev/video0 -f mpegts -codec:v mpeg1video -s 640x480 -b:v 1000k -bf 0 http://desktop:8081/password
```

### Step 3: View Video in Browser
Now, from anywhere on the _same network as the Raspberry Pi_
(**but in principle**, my requirements can be meet since `desktop`
doesn't have to be on the same LAN as the Raspberry Pi Zero),
fire up a browser to view the streaming video:

```bash
# view the streaming video
google-chrome http://desktop:8080/view-stream.html
```

So now I'm once again stream the camera to a local web page (aka on the same LAN),
but the distributed archtectue allows for the web page to be anywhere.
All of this appear to work well, but again,
there was considerable latency, the camera frame rate was 20 FPS,
and the CPU utilization was slightly above 85%.

Given that FFmpeg is now deprecated and replaced by [`avconv`][03]
(despite some beliving in [FFmpeg superiority][04]),
I thought I would give it a try:

```bash
# start avconv to capture video and send it to the websocket relay
avconv -f rawvideo -framerate 25 -video_size 640x480 -i /dev/video0 -f mpegts -codec:v mpeg1video -s 640x480 -b:v 1000k -bf 0 http://desktop:8081/password

# view the streaming video
google-chrome http://desktop:8080/view-stream.html
```

Using `avconv` was slightly more demanding of CPU on the Raspberry Pi Zero
but the latency was noticeable better.

### Step 4: Streaming from a File
While the purpose of all this is to stream live video,
as you can see here,
you can easily do the same from a file.
This also demonstrates that you can include not only the video but sound too.

```bash
# video form file, with sound, but some static for unkown reason
ffmpeg -re -i All-is-Full-of-Love-by-Bjork.ts -codec copy -f mpegts -codec:v mpeg1video -s 640x480 -b:v 1000k -bf 0 http://desktop:8081/password

# view the streaming video
google-chrome http://desktop:8080/view-stream.html
```

################################################################################

* [Stream a file with original playing rate](http://superuser.com/questions/508560/ffmpeg-stream-a-file-with-original-playing-rate)
* [RTP streaming with ffmpeg](http://lucabe72.blogspot.com/2010/04/rtp-streaming-with-ffmpeg.html)
* [Using CVLC for streaming using RTP protocol under Linux](https://inogeni.com/knowledgebase/using-cvlc-for-streaming-using-rtp-protocol-under-linux/)
* [How can I stream h264 files with FFmpeg over rtmp without reencoding?](http://forum.videohelp.com/threads/377436-How-can-I-stream-h264-files-with-FFmpeg-over-rtmp-without-reencoding)
* [An ffmpeg and SDL Tutorial](http://dranger.com/ffmpeg/ffmpeg.html)
* [A quick guide to using FFmpeg to convert media files](https://opensource.com/article/17/6/ffmpeg-convert-media-file-formats?sc_cid=70160000000gz65AAA)
* [ffmpeg documentation](https://www.ffmpeg.org/documentation.html)

################################################################################



## Streaming Camera to a Public Web Page
* [Secure Simple Remote Access for Camera Viewing](https://www.hackster.io/beame-io/secure-simple-remote-access-for-camera-viewing-64832e?utm_source=Hackster.io+newsletter&utm_campaign=b3faba5059-EMAIL_CAMPAIGN_2017_05_03&utm_medium=email&utm_term=0_6ff81e3e5b-b3faba5059-140225889&mc_cid=b3faba5059&mc_eid=9036129d51)






### Stream Video from a Public Site via WebSocket
http://www.earthcam.com/usa/newyork/timessquare/?cam=tsrobo1
http://weheart.digital/build-simple-live-streaming-solution/

### Hawkeye (web server streaming MJPEG)
In short, Hawkeye is a simpler version of the MJPG-streamer but with HTTPS support.

* [Hawkeye](https://igorpartola.com/projects/hawkeye/)
* [Hawkeye](https://github.com/ipartola/hawkeye)

### MJPG-streamer
* [How to build and run MJPG-Streamer on the Raspberry Pi](https://blog.miguelgrinberg.com/post/how-to-build-and-run-mjpg-streamer-on-the-raspberry-pi)
* [Streaming OpenCV Output Through HTTP/Network with MJPEG](https://ariandy1.wordpress.com/2013/04/07/streaming-opencv-output-through-httpnetwork-with-mjpeg/)
* [HOW TO STREAM THE PICAMERA TO YOUR BROWSER](https://desertbot.io/blog/how-to-stream-the-picamera)

[!mjpg-streamer](https://www.hqt.ro/wp-content/uploads/mjpg-streamer-fi1.png)
[`mjpg-streamer`][96] (its predecessor was `uvc_streamer`)
is a command line tool to stream JPEG files over an IP-based network
from a webcam to various types of viewers such as Chrome, Firefox, Cambozola, VLC, mplayer,
and other software capable of receiving MJPG streams.
It was originally written for embedded devices (e.g. OpenWrt) with very limited resources.
MJPG-streamer maybe the simplest way to stream a webcam.

The general consensus is that `mjpg-streamer` is faster and uses less CPU than most streamers,
so this may be ideal for your remote control projects in which real-time video feed is crucial for navigation
or light-weight hardware like the Raspberry Pi Zero.
Some webcams will deliver [Motion JPEG or MJPEG][98] images.
Mjpg-streamer is very efficient with these webcams,
as it just reads the images and streams them to the web.

The code block below will build a `mjpeg-streamer` from source
with added support for the Raspberry Pi camera via the `input_raspicam` plugin.
The build procedures and code are [on Github][96]
along with [documentation for `input_rapicam`][97], the Raspberry Pi plugin.

```bash
# make sure required tools and libraries are loaded
sudo apt-get install cmake libjpeg8-dev

# download, build, and install mjpg-streamer
cd ~/src
git clone https://github.com/jacksonliam/mjpg-streamer.git
cd mjpg-streamer/mjpg-streamer-experimental
make
sudo make install
```

With `mjpg-streamer` built for the Raspberry Pi,
you can now execute it and view the live video within a browser
(works great with Google Chrome and Firefox but not so much with Safari):

```bash
# change directories to where the plugins are located or provide path in environment
LD_LIBRARY_PATH=/home/pi/src/mjpg-streamer/mjpg-streamer-experimental ; mjpg_streamer -i "input_raspicam.so -rot 90 -ex night -ifx none awb auto" -o "output_http.so -w www -p 8090"

# streaming video in browser
google-chrome http://127.0.0.1:8090/?action=stream
```

The meaning of the parameters used with the `input_raspicam` plugin can be found [here][97].

By the way, `mjpg-streamer` can also be used on Ubuntu,
just need to use another plugin.
An example is given here:

```bash
# change directories to where the plugins are located or provide path in environment
LD_LIBRARY_PATH=/home/jeff/src/mjpg-streamer/mjpg-streamer-experimental ; mjpg_streamer -i "input_uvc.so -f 15 -r 1280x720" -o "output_http.so -w www -p 8090"

LD_LIBRARY_PATH=/home/jeff/src/mjpg-streamer/mjpg-streamer-experimental ; mjpg_streamer -i "input_uvc.so -q 85 -f 15 -r 1280x960" -o "output_http.so -w www -p 8090"

# streaming video in browser
google-chrome http://127.0.0.1:8090/?action=stream
```

################################################################################
* [LOCK UP YOUR RASPBERRY PI WITH GOOGLE AUTHENTICATOR](https://hackaday.com/2016/09/30/lock-up-your-raspberry-pi-with-help-from-google/)
* [EXPOSE YOUR RASPBERRY PI ON ANY NETWORK](http://hackaday.com/2016/09/20/expose-your-raspberry-pi/)
* [HOW TO RUN A PAGEKITE SERVER TO EXPOSE YOUR RASPBERRY PI](http://hackaday.com/2016/09/21/how-to-run-a-pagekite-server-to-expose-your-raspberry-pi/)
* [PageKite](https://pagekite.net/)
* [Open Source PageKite](https://pagekite.net/wiki/OpenSource/)
* [NeoRouter](http://www.neorouter.com/products-nrfree)
################################################################################

################################################################################
Up-and-coming reverse proxy is [Candy](https://caddyserver.com/)
* [My Experience of Switching from NGINX to Caddy](https://medium.com/@torch2424/my-experience-of-switching-from-nginx-to-caddy-79bc8cd627c0)
* [What Makes Caddy Different](https://caddyserver.com/blog/what-makes-caddy-different.html)
* [Setup Nginx as a reverse proxy](https://www.inpimation.com/setup-nginx-reverse-proxy/)
* [nginx reverse proxy mopidy raspberry pi 2](https://www.inpimation.com/nginx-mopidy-raspberry-pi-2/)
* [How To Develop a Node.js TCP Server Application using PM2 and Nginx on Ubuntu 16.04](https://www.digitalocean.com/community/tutorials/how-to-develop-a-node-js-tcp-server-application-using-pm2-and-nginx-on-ubuntu-16-04)
################################################################################


## Step X: Streaming Camera to the Internet
So far, using the Raspberry Pi camera module,
I have streamed video on my local network
but I wish to do this across the Internet.
Your Raspberry Pi will be transformed into a video surveillance camera
that you can place anywhere you can get WiFi with Internet access
and see the live streaming on a browser anywhere in the world.
You can [make your `localhost` (aka `127.0.0.1`) accessible from anywhere in the world][111]
via a [secure tunnel][112] service, or more specifically, [reverse proxy][115].
This provides you a publicly accessible URL, that watch for calls on that URL,
and then forwards those calls to your localhost server.
You'll need to install some software
from a fee for service provider like [`ngrok`][110] or build your own.
Luckly, ngrok has a free option.
So ngrok is a simple utility that will take my local web server extablished by mjpg-streamer
(aka video streaming server) and makes it available on the web.

Now sign up to the ngrok public servier at `https://dashboard.ngrok.com/user/signup`.
download ngrok, follow the [get strated page][114],
and check out the [ngrok documentation][113] for additional features.
The installation of `ngrok` is outlined below:

```bash
# download ngrok from https://ngrok.com/download
# no need for ngrok-server since you'll be using the public site
unzip ~/Download/ngrok.zip
sudo mv ~/Download/ngrok /usr/local/bin

# print version number of ngrok
ngrok version

# go to https://dashboard.ngrok.com/get-started and get your authtoken
ngrok authtoken dffjgyiorggkjt4435403_ggghhgl89B3k9ddlgiggg

# create your first secure tunnel
# open the web interface at http://localhost:4040 to inspect and replay requests
ngrok http 80
```

Now fire up the camera and use `ngrok` to stream the camera's live video to a
to the URL provided by `ngrok`:

```bash
# start streaming the video on the raspberry pi zero
LD_LIBRARY_PATH=/home/pi/src/mjpg-streamer/mjpg-streamer-experimental ; mjpg_streamer -i "input_raspicam.so -rot 90 -ex night -ifx none awb auto" -o "output_http.so -w www -p 8090"

# forward the video to the internet via ngrok
ngrok http 8090

# now using the url provide by ngrok, see the video in your broswer
google-chrome http://be4fac06.ngrok.io/?action=stream
```

## Step X: Potential Alternates for Streaming Camera
I did a considerable amount of research to identify `mjepg-streamer` as my solution.
It does appear to be the right choose, given all my constraint / requirements.
On the other hand, changing anyone of my assumtions could make it a poor choose.
Some of the alternatives that I investigate are documented here.

### WebRTC
* [WebRTC — The technology that powers Google Meet/Hangout, Facebook Messenger and Discord](https://medium.com/swlh/webrtc-the-technology-that-powers-google-meet-hangout-facebook-messenger-and-discord-cb926973d786)
* [WebRTC Fundementals](https://telecom.altanai.com/webrtc/)
* [Building a Raspberry Pi 2 WebRTC camera](https://www.rs-online.com/designspark/building-a-raspberry-pi-2-webrtc-camera)
* [FruitNanny: RaspberryPI based Baby Monitor (uses a Janus WebRTC Gateway)](https://ivadim.github.io/2017-08-21-fruitnanny/)
* [webrtcHacks / webrtcH4cKS: ~ Computer Vision on the Web with WebRTC and TensorFlow](https://webrtchacks.com/webrtc-cv-tensorflow/)
* [webrtcH4cKS: ~ Smile, You’re on WebRTC – Using ML Kit for Smile Detection](https://webrtchacks.com/ml-kit-smile-detection/)
* [webrtcH4cKS: ~ AIY Vision Kit Part 1: TensorFlow Computer Vision on a Raspberry Pi Zero](https://webrtchacks.com/aiy-vision-kit-tensorflow-uv4l-webrtc/)
* [webrtcH4cKS: ~ Part 2: Building a AIY Vision Kit Web Server with UV4L](https://webrtchacks.com/aiy-vision-kit-uv4l-web-server/)
* https://github.com/webrtcHacks
* [Build a Webcam Communication App using WebRTC](https://blog.bitsrc.io/build-a-webcam-communication-app-using-webrtc-9737384e84be)
* [Private Home Surveillance with the WebRTC DataChannel](https://webrtchacks.com/private-home-surveillance-with-the-webrtc-datachannel/)
* [Accelerated Computer Vision inside a WebRTC Media Server with Intel OWT](https://webrtchacks.com/accelerated-computer-vision-inside-a-webrtc-media-server-with-intel-owt/)

[!webrtc](https://webrtc.org/assets/images/webrtc-logo-vert-retro-255x305.png)
[WebRTC][71] is an open source project that provides browsers and mobile applications
with Real-Time Communications (RTC) capabilities
for audio, video, and data in Web and native apps via UDP packets and simple APIs.
The vision of WebRTC is a world where your phone, TV, and computer
could all communicate on a common platform where it is
easy to add video chat and peer-to-peer data sharing to your web application.
WebRTC is available now in Google Chrome, Opera, and Firefox.
A good place to see how simple video can be is to open
`[apprtc.appspot.com](https://apprtc.appspot.com/)`
or see the [WebRTC samples][74]
in Chrome, Opera or Firefox on a video enable computer.
The [WebRTC project "Getting Started" page][72]
and [Getting Started with WebRTC][73] are excellent places to start.

If you know little to nothing about WebRTC,
start with these videos that give introduction and motivation for WebRTC:

* [Quick Introduction to WebRTC](https://www.youtube.com/watch?v=RI5fGsEvDnI)
* [Introduction to WebRTC Tutorial | Pros And Cons](https://www.youtube.com/watch?v=7gRMTuSYkso)
* [WebRTC Tutorial - How does WebRTC work?](https://www.youtube.com/watch?v=2Z2PDsqgJP8)
* [WebRTC Demo - An Introduction to WebRTC](https://www.youtube.com/watch?v=g8fRAYOg6eg)
* [WebRTC for Beginners](https://www.youtube.com/watch?v=RvJuMJUSw8U&t=123s)

To see how this works, and really understand the power of the WebRTC protocol,
spend some time with the multiple demos found on the [WebRTC samples][74] page.

>**NOTE:** If you USB camera stops working or generally misbehaves while using WebRTC,
a frustrating solution is to restart your Linux.
As a simpler alternative,
I have found that reloading the kernel drivers can clear most problems:
>
```bash
# reload the kernel video driver
sudo rmmod uvcvideo
sudo modprobe uvcvideo
```

Let’s have some more fun with getUserMedia by creating a simple mirror application and determining its frame rate.
* [webrtcH4cKS: ~ getUserMedia Mirrors and Frame Rates](https://webrtchacks.com/mirror-framerate/)

#### WebRTC vs Websockets
WebRTC is designed for high-performance, high quality communication of video, audio and arbitrary data. In other words, for apps exactly like what you describe.

WebRTC apps need a service via which they can exchange network and media metadata, a process known as signaling. However, once signaling has taken place, video/audio/data is streamed directly between clients, avoiding the performance cost of streaming via an intermediary server.

WebSocket on the other hand is designed for bi-directional communication between client and server. It is possible to stream audio and video over WebSocket (see here for example), but the technology and APIs are not inherently designed for efficient, robust streaming in the way that WebRTC is.

#### WebRTC vs VoIP
https://www.voip-info.org/wiki/view/WebRTC+vs+VoIP
https://temasys.io/difference-webrtc-voip/
WebRTC and V.VoIP are similar in that both aim to enhance the user experience and enable any consumer device (whether it be mobile phone, fax, internet etc.) to effortlessly connect from anywhere and on any network internationally.

The primary difference between the two services is that VoIP uses a multitude of variants such as VoIP over DSL/cable modem, voice over Wi-Fi/3G (VoWiFi/3G), voice over LTE (VoLTE), and Rich Communication Suite (RCS), while WebRTC is solely focused on browser-based communications.

#### WebRTC vs RTMP
https://blog.red5pro.com/rtmp-webrtc-which-protocol-live-streaming-app/

#### WebRTC vs Skype
http://thevoipreport.com/article/skype-vs-webrtc/

#### WebRTC vs SIP
https://getvoip.com/blog/2013/02/27/sip-webrtc-is-there-a-difference/

### janus
[!janus](https://janus.conf.meetecho.com/janus-logo.png)
WebRTC has been conceived as a peer-to-peer solution:
that is, while signalling goes through a web server/application,
the media flow is peer-to-peer.
Nothing needed in the middle and only two participants.
Even in a simple peer-to-peer scenario,
one of the two involved parties (or maybe even both) doesn’t need to be a browser,
and may very well be a non-browser application.
So what if the application is "dumb" and doesn't know WebRTC?
Such an application will required a WebRTC Gateway:
one side talks WebRTC, while the other still WebRTC or something entirely different.
(See the post "[What is a WebRTC Gateway anyway?][78]").
A WebRTC Gateway is particularly useful for the many legacy infrastructures out there,
that may benefit from a WebRTC-enabled kind of access.
Also, the gateway could function to multicast, bridge, split, or otherwise process the streaming content
to create experiences you could otherwise have via a peer-to-peer solution (e.g. conferencing).
A popular a general purpose WebRTC gateway is [Janus][75].
In principle, you could use it to stream video from a Raspberry Pi directly to any browser
(doesn't have to be Google Chrome, Opera, or Firefox).
More importantly, you could create a more powerful user experince.
(See the presentation "[Janus: a general purpose WebRTC gateway][79]".)

### motion
[!motion](http://www.lavrsen.dk/foswiki/pub/Motion/WebPreferences/motion-trans.gif)
[`motion`][109] is a program that monitors the video signal from one or more cameras
and is able to detect if a significant part of the picture has changed.
Or in other words, it can detect motion.
Motion has many features can be a bit overwhelming
but the articles "[How to Operate Linux Spycams With Motion][118]" and
"[How to Set Up Motion Detection Webcam in Ubuntu][119]" will get you going.

* [TURN THAT PI ZERO INTO A STREAMING CAMERA, STEP-BY-STEP](https://hackaday.com/tag/wi-fi-camera/)
* [Raspberry Pi security camera using MotionEyeOS](https://www.geeky-gadgets.com/raspberry-pi-security-camera-24-01-2020/)
* [Raspberry Pi Security System Part 1: The camera](https://hackmypi.com/PiCamPart1.php)
* [motionEye is a web-based frontend for motion](https://github.com/ccrisan/motioneye)
* [motionEyeOS](https://github.com/ccrisan/motioneyeos/wiki)

### Camera Human Recognition
* [Building a Motion Activated Security Camera with the Raspberry Pi Zero](http://hackaday.com/2017/02/06/motion-detecting-camera-recognizes-humans-using-the-cloud/)
* [Smarten up your Pi Zero Web Camera with Image Analysis and Amazon Web Services (Part 1)](https://utbrudd.bouvet.no/2017/01/10/smarten-up-your-pi-zero-web-camera-with-image-analysis-and-amazon-web-services-part-1/)

## WebSockets
Nice writeup - http://www.neotys.com/blog/testing-tips-for-todays-tech-html5-websockets-rtmp-adaptive-bitrate-streaming/

# Real-Time Video Streaming Between Camera and Android Device
* [3 Possible Ways for Real-Time Video Streaming Between Camera and Android Device](https://www.intorobotics.com/3-possible-ways-real-time-video-streaming-camera-android-device/)
* [How to Turn An Old Android Phone into a Networked Security Camera](https://www.howtogeek.com/139373/how-to-turn-an-old-android-phone-into-a-networked-security-camera/)


# First Person View (FPV)
Drones typically use old school analog video transmission
for longer-range frist person viewing (FPV)
as [early as the 1980s][33].
These analog video signals are lossy and one-way (or one-to-many).
WiFi video is not what you want to send video from your quadcopter back to your FPV goggles.
WiFi is designed for 100% correct, two-way transmission of data between just two radios.
When you’re near the edge of your radios’ range,
you're first priority is getting any image in a timely fashion.
WiFi works hard to assure you get high quality images,
but while WiFi is retransmitting packets and your video is buffering, your quadcopter could be crashing.
You don’t need every video frame to be perfect.
On top of this, it’s just a lot easier to optimize both ends of a one-way transmission system
than it is to build antennas that must receive and transmit symmetrically.

[Befinitiv] wrote wifibroadcast to give his WiFi FPV video system some of the virtues of analog broadcast.

In particular, two Raspberry Pis combined with WiFi radios that can be put into monitor mode enable him to custom tailor the packets that get sent, allowing his rig to sidestep WiFi’s acknowledgment scheme, add in a custom retransmission routine that helps limit lost packets, and even allow multiple receivers to listen in to the same signal so that a diversity reception scheme could be implemented. - http://hackaday.com/2015/06/13/wifibroadcast-makes-wifi-fpv-video-more-like-analog/


* [Wifibroadcast – Analog-like transmission of live video data](https://befinitiv.wordpress.com/wifibroadcast-analog-like-transmission-of-live-video-data/)
Wifibroadcast is a project aimed at the live transmission of HD video (and other) data using wifi radios. One prominent use case is to transmit camera images for a first person view (FPV) of remote controlled aircrafts.
In contrast to a normal wifi connection wifibroadcast tries to mimic the advantageous properties of an analog link (like graceful signal degradation, unidirectional data flow, no association between devices).
Note: Before using wifibroadcast you have to check if the regulatories of your country allow such a use of wifi hardware.
* [(True) Unidirectional Wifi broadcasting of video data for FPV](https://befinitiv.wordpress.com/2015/01/25/true-unidirectional-wifi-broadcasting-of-video-data-for-fpv/)
* [EZ-WifiBroadcast](https://github.com/bortek/EZ-WifiBroadcast/wiki)
* https://dev.px4.io/en/wifibroadcast.html
* https://github.com/svpcom/wifibroadcast

* [FPV for dummies. All you need to know about FPV Racing Drones](https://coastlinerobotics.com/blogs/fpv-racing-drones-tutorials/60037699-fpv-for-dummies-all-you-need-to-know-about-fpv-racing-drones)
* [Drones and wireless video](http://www.datarespons.com/drones-wireless-video/)
* [Low Latency FPV Streaming with the Raspberry Pi](http://www.wumpus-cave.net/2015/11/06/low-latency-fpv-streaming-with-the-raspberry-pi/)
* [HD Video and Telemetry Link Uses Standard WiFi Hardware](https://hackaday.com/2018/12/27/hd-video-and-telemetry-link-uses-standard-wifi-hardware/)

* [UDP Live Image Streaming](https://github.com/chenxiaoqino/udp-image-streaming/)

## Streaming Oneway
Sending arbitrary IEEE 802.11 frames can be useful in
unidirectional long-distance communication or low-overhead data transmission.

* [ESP32 WiFi Range Testing - 10km using Directional Antenna](https://www.youtube.com/watch?v=yCLb2eItDyE)
* [unidirectional long-distance communication](https://github.com/Jeija/esp32free80211)

# Low-Latency Live Streaming
I want to stream 720p video (or any quality for that matter)
from one computer to another using `ffmpeg`, `netcat` and other such tools,
with a latency below 100ms, which is good enough for many games.
Streaming low-latency live content is quite hard,
because most video codecs are designed to achieve the best compression and not best latency.
This makes sense, because most movies are encoded once and decoded often,
so it is a good trade-off to use more time for the encoding than the decoding.

One way codecs reduce bandwidth is to compress different parts of a movie with varying quality.
For example, the h264 encoder will compress fast moving scenes more than a slow scene.
This is because the human eye will not be able to see all the detail in the fast moving scene anyway,
while the viewer might inspect the image of a slow scene more thoroughly.
But to do so, the encoder has first to find out if it is currently a fast or slow-moving scene.
This inspection, via buffering, introduces latency.
This buffer introduces latency in the ballpark of seconds rather than milliseconds.

Because a low-latency live stream cannot afford the time to analyze the video material up front,
live streamed content will look worse than any other encoded content
or you'll be forced to using more bandwidth.

I found some blog posts that explain live-streaming in depth:

* [Low Delay Video Streaming on the Internet of Things Using Raspberry Pi](https://www.mdpi.com/2079-9292/5/3/60/pdf)
* [Latency analysis of the raspberry camera](https://befinitiv.wordpress.com/2015/09/10/latency-analysis-of-the-raspberry-camera/)
* [Raspberry Pi Camera Latency Testing – Part 1](https://sparkyflight.wordpress.com/2014/02/22/raspberry-pi-camera-latency-testing-part-1/) and [Part 2](https://sparkyflight.wordpress.com/2014/02/22/raspberry-pi-camera-latency-testing-part-2/)
* [Using Raspivid for low-latency Pi Zero W Video Streaming](https://dantheiotman.com/2017/08/23/using-raspivid-for-low-latency-pi-zero-w-video-streaming/)
* [Low-Latency Live Streaming your Desktop using ffmpeg](http://fomori.org/blog/?p=1213)
* [Real-time MPEG-2 encoding with ffmpeg](http://www.smorgasbork.com/2009/12/03/real-time-mpeg-2-encoding-with-ffmpeg/)
* [High bitrate real-time MPEG-2 encoding with ffmpeg](http://www.smorgasbork.com/2010/01/10/high-bitrate-real-time-mpeg-2-encoding-with-ffmpeg/)
* [x264: the best low-latency video streaming platform in the world](https://web.archive.org/web/20150421033553/http://x264dev.multimedia.cx/archives/249)
* [x264 FFmpeg Options Guide](https://sites.google.com/site/linuxencoding/x264-ffmpeg-mapping)
* [Modern way to stream H.264 from the Raspberry Cam](https://raspberrypi.stackexchange.com/questions/26675/modern-way-to-stream-h-264-from-the-raspberry-cam)

## Measuring Latency
Here is a simple Python script that will output the current time
in milliseconds to help measure the latency
Using this script while you encode and decode the stream
in two different terminal windows but on the same your desktop.
Making a screenshot of the desktop ([use `Prt Scrn` or `Print Screen` key][31]),
take the differance of the two images,
and it gives you the total system latency at one millisecond resolution.
If you only need one second resolution, you could use https://time.gov/ .

```python
#!/usr/bin/python3

'''
Here is a simple Python script that will output the current time in milliseconds
to help measure the latency.  Using this script, you encode and decode the
stream in two different terminal windows but on the same your desktop.  Making a
screenshot of the desktop and it gives you the total system latency.

This may not be totally accurate because a snapshot of the desktop might occur
just before a new image is rendered by the X Window System, but should not be
too far off.
'''

import os
import sys
import time
import signal


# ANSI escape sequences for printing
BOLD = '\033[1m'
NORMAL = '\033[0m'
RED = '\033[91m'


def signal_handler(signal, frame):
    print(NORMAL)
    os.system('setterm -cursor on')
    sys.exit(0)

signal.signal(signal.SIGINT, signal_handler)

stime = int(time.time() * 1000)

# clear terminal and hide the cursor so not to obscure millisecond counter
os.system('clear')
os.system('setterm -cursor off')

print('\n\n' + 'Millisecond Counter:' + BOLD + RED)

while True:
    time.sleep(0.001)
    print('%s\r' % (int(time.time() * 1000) - stime), end='')
    sys.stdout.flush()
```

This may not be totally accurate because a snapshot of the desktop
might occur just before a new image is rendered by the X Window System,
but should not be too far off.

## OK Latency
This example use x264 encoding and requires 3Mbit/s of bandwidth.
For further x264 options check out this [guide][13].
If you want to change them for your scenario,
you always have to make sure that your `vbv-bufsize = vbv-maxrate / framerate`.
So in this scenario, for 3000 vbv-maxrate, I chose a vbv-bufsize of 100 at 30 FPS.

**NOTE: x11grab will not work with Wayland Display Manager.**

```bash
# on the server
ffmpeg \
    -f x11grab -s 1280x720 -framerate 30 -i :1.0 \
    -c:v libx264 -preset veryfast -tune zerolatency -pix_fmt yuv444p \
    -x264-params crf=20:vbv-maxrate=3000:vbv-bufsize=100:intra-refresh=1:slice-max-size=1500:keyint=30:ref=1 \
    -f mpegts - | nc -l -p 9000

# on the client
nc <server_ip_address> 9000 | mplayer -benchmark -
```
ffmpeg -f x11grab  -s 1280x720 -framerate 30 -i :1.0 -c:v libx264 -preset veryfast -tune zerolatency -pix_fmt yuv444p -x264-params crf=20:vbv-maxrate=3000:vbv-bufsize=100:intra-refresh=1:slice-max-size=1500:keyint=30:ref=1 -f mpegts - | nc -l -p 9000

ffmpeg -f x11grab  -s 1280x720 -framerate 30 -i :1.0 -c:v libx264 -preset veryfast -tune zerolatency -pix_fmt yuv444p -f mpegts - | nc -l -p 9000

Here is what the options are doing:

* [`-f x11grab`][14] -  The `-f` option forces input (or output) file format. (Format is normally auto detected for input files and guessed from the file extension for output files) This device allows one to capture a region of an X11 display. Use `ffmepg -formats` to see all available formats.
* [`-s 1280x720`][15] - Set the output frame size (width x height)
* [`-framerate 30`][14] - Specifies the rate at which frames will be grabbed from the X11 display
* [`-i :0.0`][16] - Input URL but in this case its a reference to the X11 display
* [`-c:v libx264`][17] - This encoder the video stream (because of the `:v`) for the input (because its used before an output file)
* [`-preset veryfast`][18] - Presets affect the encoding speed. Using a slower preset gives you better compression, whereas faster presets give you worse compression. Values can be `ultrafast`, `superfast`, `veryfast`, `faster`, `fast`, `medium` (default), `slow` and `veryslow`.
* [`-tune zerolatency`][19] - Optimization for fast encoding and low latency streaming when using x264 encoding
* [`-pix_fmt yuv444p`][20] - Set input pixel format. Use `ffmpeg -pix_fmts` to see all available pixel formats.
* [`-x264-params`][22] [`crf=20:vbv-maxrate=3000:vbv-bufsize=100:intra-refresh=1:slice-max-size=1500:keyint=30:ref=1`][23] - The option `-preset` chooses the best possible settings for you, but you can overwrite these with the `x264-params` option.
* [`-f mpegts`][24] - Output file format is [MPEG-TS][136] which is designed for live streaming over HTTP.
* [`-benchmark`][25] - Prints some statistics on CPU usage and dropped frames at the end of playback.


Always use the `-benchmark` flag on the client-side.
You might find that `-framedrop` helps as well, especially on slower clients.

## Best Latency
Using mpeg2video encoding, you can achieve almost no noticeable latency,
but the bandwidth requirements go through the roof,
so this is only an option when you have either very fast WiFi or a LAN.

Using `-q:v 20` gives you 100 to 150 milliseconds of latency.
Increasing the `-q:v` setting will lower the quality and save some bandwidth and vice versa,
setting it to a lower value will increase quality and bandwidth.
Setting the quality to 2 gives excellent image, around 200 millisecond of latency,
but uses something around 150Mbit/s!

**NOTE: x11grab will not work with Wayland Display Manager.**

```bash
# on the server
ffmpeg \
    -f x11grab -s 1280x720 -framerate 30 -i :1.0    \
    -c:v mpeg2video -q:v 20 -pix_fmt yuv420p -g 1 -threads 2 \
    -f mpegts - | nc -l -p 9000

# on the client
nc <host_ip_address> 9000 | mplayer -benchmark -
```
ffmpeg -f x11grab -s 1280x720 -framerate 30 -i :1.0 -c:v mpeg2video -q:v 20 -pix_fmt yuv420p -g 1 -threads 2 -f mpegts - | nc -l -p 9000

Here is what the options are doing:

* [`-c:v mpeg2video`][] -
* [`-q:v 20`][] -
* [`-pix_fmt yuv420p`][] -
* [`-g 1`][] -
* [`-threads 2`][] -

## Screen Recording Using FFmpeg
**NOTE: x11grab will not work with Wayland Display Manager.**

You can test if your running with Wayland via `echo $XDG_SESSION_TYPE`.
[How to Switch to Xorg from Wayland](https://itsfoss.com/switch-xorg-wayland/)

```bash
ffmpeg -f alsa -ac 2 -i hw:0,0 -f x11grab -r 30 -s $(xwininfo -root | grep 'geometry' | awk '{ print $2 }' | cut -f1 -d'+') -i :1.0 -f pulse -vcodec libx264 -preset veryfast -threads 0 -y output.mp4
```

* [Green Recorder 2.0 Released, Lets You Screen Record Wayland](https://www.omgubuntu.co.uk/2017/03/green-recorder-wayland-screen-recorder)
* [A simple screen recorder for Linux desktop. Supports Wayland & Xorg](https://github.com/foss-project/green-recorder)

## WebEx Screen-Sharing Hack
If you like me and use WebEx for desktop sharing on Windows,
you will be disappointed to know that WebEx Linux versions do not support screen sharing.
You might be able to solve this with a simple hack.

```bash
sudo modprobe v4l2loopback && sudo ffmpeg -f x11grab -r 15 -s 1920x1080 -i :0.0+0,623 -vcodec rawvideo -threads 0 -pix_fmt yuv420p -f v4l2 /dev/video0
```

Uses `ffmpeg` to capture one of your X Window displays and output the stream as a
`v412loopback` the device file `/dev/video0`.
`v412loopback` uses the same codec as my webcam, so by running this single line of code,
I effectively turn my webcam into a screen-sharing tool.

Couple this with broadcasting application like [Open Broadcaster Software (OBS)](https://obsproject.com/)
and you have a more powerful screen-sharing tool.

Got this idea from
"[24 Things I’ve Learned As A Software Developer Living On Ubuntu For A Weekish](https://hackernoon.com/24-things-learned-as-software-developer-on-ubuntu-for-a-weekish-5b7b0da5d4b5)".

# Smartphone Camera Viewer
* [RPi Camera Viewer for Android](http://frozen.ca/rpi-camera-viewer-for-android/)
* [RPi Camera Viewer for iOS](http://frozen.ca/rpi-camera-viewer-for-ios/)

## Augment Reality
* [AR.js: Efficient Augmented Reality for the Web](https://uploadvr.com/ar-js-efficient-augmented-reality-for-the-web/)
    * [Efficient Augmented Reality for the Web - 60fps on mobile!](https://github.com/jeromeetienne/ar.js)



[01]:https://github.com/waveform80/pistreaming#background
[02]:https://www.amazon.com/gp/product/B003MTTJOY
[03]:http://www.autodidacts.io/convert-media-files-like-a-geek-a-guide-to-video-transcoding-with-avconv-ffmpeg/
[04]:https://github.com/rg3/youtube-dl/issues/8622
[05]:https://gstreamer.freedesktop.org/documentation/installing/on-linux.html
[06]:https://www.raspberrypi.org/blog/zero-grows-camera-connector/
[07]:https://www.raspberrypi.org/blog/camera-board-available-for-sale/
[08]:https://www.raspberrypi.org/blog/new-8-megapixel-camera-board-sale-25/
[09]:https://en.wikipedia.org/wiki/USB_video_device_class
[10]:https://en.wikipedia.org/wiki/Video4Linux
[11]:http://trac.gateworks.com/wiki/linux/v4l2
[12]:https://sandilands.info/sgordon/live-webca-streaming-using-vlc-command-line
[13]:https://sites.google.com/site/linuxencoding/x264-ffmpeg-mapping
[14]:https://ffmpeg.org/ffmpeg-devices.html#x11grab
[15]:http://manpages.ubuntu.com/manpages/xenial/man1/ffmpeg.1.html
[16]:https://ffmpeg.org/ffmpeg.html#toc-Synopsis
[17]:https://ffmpeg.org/ffmpeg.html#Main-options
[18]:https://trac.ffmpeg.org/wiki/Encode/H.264#a2.Chooseapresetandtune
[19]:https://superuser.com/questions/564402/explanation-of-x264-tune
[20]:https://ffmpeg.org/ffmpeg.html#Advanced-Video-options
[21]:https://ffmpeg.org/ffmpeg.html#Generic-options
[22]:https://trac.ffmpeg.org/wiki/Encode/H.264#Overwritingdefaultpresetsettings
[23]:http://help.encoding.com/knowledge-base/article/advanced-configuration-options-for-the-libx264-video-codec/
[24]:https://stackoverflow.com/questions/11762464/what-is-difference-between-mp4-and-mpegts
[25]:https://linux.die.net/man/1/mplayer
[26]:https://wiki.debian.org/Xorg
[27]:https://wayland.freedesktop.org/
[28]:https://itsfoss.com/switch-xorg-wayland/
[29]:https://itsfoss.com/green-recorder-3/
[30]:https://www.omgubuntu.co.uk/2018/01/xorg-will-default-display-server-ubuntu-18-04-lts
[31]:https://help.ubuntu.com/stable/ubuntu-help/screen-shot-record.html
[32]:https://en.wikipedia.org/wiki/Flash_Video
[33]:https://hackaday.com/2020/03/13/an-epic-story-of-1980s-fpv-flight/
[34]:
[35]:
[36]:
[37]:
[38]:
[39]:
[40]:
[41]:
[42]:
[43]:
[44]:
[45]:http://petapixel.com/2016/04/25/raspberry-pi-camera-gets-first-ever-upgrade-now-8mp/
[46]:https://www.raspberrypi.org/blog/new-8-megapixel-camera-board-sale-25/
[48]:http://www.sony.net/Products/SC-HP/new_pro/april_2014/imx219_e.html
[49]:http://www.sony.net/Products/SC-HP/IS/sensor1/technology/exmor-r.html
[50]:https://en.wikipedia.org/wiki/1080p
[51]:https://en.wikipedia.org/wiki/720p
[52]:https://www.modmypi.com/download/raspicamdocs.odt
[53]:http://www.modmypi.com/blog/raspberry-pi-camera-board-raspivid-command-list
[54]:http://www.modmypi.com/blog/raspberry-pi-camera-board-raspistill-command-list
[55]:http://picamera.readthedocs.io/en/release-1.12/
[56]:https://github.com/waveform80/picamera
[57]:https://www.raspberrypi.org/magpi-issues/MagPi45.pdf
[58]:https://github.com/waveform80/pistreaming
[59]:http://www.pyimagesearch.com/2015/03/30/accessing-the-raspberry-pi-camera-with-opencv-and-python/
[60]:https://www.linux.com/learn/how-operate-linux-spycams-motion
[61]:https://learn.adafruit.com/li-ion-and-lipoly-batteries
[62]:https://www.adafruit.com/products/259
[63]:http://www.oreilly.com/openbook/linag2/book/ch11.html
[64]:http://hintshop.ludvig.co.nz/show/persistent-names-usb-serial-devices/
[65]:http://www.mikestreety.co.uk/blog/raspberry-pi-timelapse
[66]:http://www.computerhope.com/unix/screen.htm
[67]:http://bglug.ca/articles/nat_and_ip_masquerade.pdf
[68]:https://www.adafruit.com/products/3157
[69]:https://www.amazon.com/Micro-USB-OTG-Adapter-Cable/dp/B00D8YZ2SA
[70]:https://www.amazon.com/gp/product/B015GZOHKW/ref=oh_aui_detailpage_o05_s01?ie=UTF8&psc=1
[71]:https://webrtc.org/
[72]:https://webrtc.org/start/
[73]:https://www.html5rocks.com/en/tutorials/webrtc/basics/
[74]:https://webrtc.github.io/samples/
[75]:https://janus.conf.meetecho.com/docs/index.html
[76]:https://gstreamer.freedesktop.org/
[77]:http://developers-club.com/posts/236805/
[78]:https://webrtchacks.com/webrtc-gw/
[79]:https://archive.fosdem.org/2016/schedule/event/janus/attachments/slides/967/export/events/attachments/janus/slides/967/fosdem2016_janus_presentation.pdf
[80]:http://www.jonobacon.org/2006/08/28/getting-started-with-gstreamer-with-python/
[81]:https://arashafiei.files.wordpress.com/2012/12/gst-doc.pdf
[82]:http://wiki.oz9aec.net/index.php/Gstreamer_cheat_sheet
[83]:http://www.einarsundgren.se/gstreamer-basic-real-time-streaming-tutorial/
[84]:http://www.z25.org/static/_rd_/videostreaming_intro_plab/
[85]:https://www.youtube.com/watch?v=MCRKfXipAkU
[86]:http://www.einarsundgren.se/gstreamer-basic-real-time-streaming-tutorial/
[87]:
[88]:
[89]:
[90]:
[91]:https://ffmpeg.org/ffprobe.html
[92]:https://ffmpeg.org/ffplay.html
[93]:https://ffmpeg.org/ffserver.html
[94]:https://ffmpeg.org/ffmpeg.html
[95]:https://ffmpeg.org/documentation.html
[96]:https://github.com/jacksonliam/mjpg-streamer
[97]:https://github.com/foosel/OctoPrint/wiki/MJPG-Streamer-configuration
[98]:https://en.wikipedia.org/wiki/Motion_JPEG
[99]:https://www.raspberrypi.org/blog/camera-board-available-for-sale/
[100]:http://www.h264info.com/h264.html
[101]:https://linux.die.net/man/1/nc
[102]:http://www.mplayerhq.hu/design7/info.html
[103]:http://farukat.es/journal/2011/02/528-modern-browser
[104]:https://www.jwplayer.com/blog/what-is-video-streaming/
[105]:http://mingfeiy.com/progressive-download-video-streaming
[106]:http://mingfeiy.com/traditional-streaming-video-streaming
[107]:http://mingfeiy.com/adaptive-streaming-video-streaming
[108]:https://en.wikipedia.org/wiki/H.264/MPEG-4_AVC
[109]:http://www.lavrsen.dk/foswiki/bin/view/Motion/WebHome
[110]:https://www.theodo.fr/blog/2016/06/expose-your-local-environment-to-the-world-with-ngrok/
[111]:https://www.sitepoint.com/accessing-localhost-from-anywhere/
[112]:https://en.wikipedia.org/wiki/Tunneling_protocol
[113]:https://ngrok.com/docs/2
[114]:https://dashboard.ngrok.com/get-started
[115]:https://en.wikipedia.org/wiki/Reverse_proxy
[116]:http://www.onlinevideo.net/2011/03/the-h-264-basics/
[117]:http://www.onlinevideo.net/2011/09/what-video-formats-should-you-stream-heres-how-to-decide/
[118]:https://www.linux.com/learn/how-operate-linux-spycams-motion
[119]:https://www.maketecheasier.com/setup-motion-detection-webcam-ubuntu/
[120]:http://www.mrhobbytronics.com/raspberry-pi-zero-reset-switch/
[121]:
[122]:http://www.pcmag.com/encyclopedia/term/65186/fragmented-mp4
[123]:https://en.wikipedia.org/wiki/Dynamic_Adaptive_Streaming_over_HTTP
[124]:https://en.wikipedia.org/wiki/HTTP_Live_Streaming
[125]:https://en.wikipedia.org/wiki/HTML5_video
[126]:https://en.wikipedia.org/wiki/Progressive_download
[127]:https://en.wikipedia.org/wiki/Streaming_media
[128]:https://en.wikipedia.org/wiki/Adaptive_bitrate_streaming
[129]:https://en.wikipedia.org/wiki/Adaptive_bitrate_streaming#Implementations
[130]:http://thejackalofjavascript.com/rpi-live-streaming/
[131]:https://www.html5rocks.com/en/tutorials/internals/howbrowserswork/
[132]:https://www.html5rocks.com/en/tutorials/video/basics/
[133]:http://phoboslab.org/log/2013/09/html5-live-video-streaming-via-websockets
[134]:http://jsmpeg.com/
[135]:https://github.com/phoboslab/jsmpeg
[136]:https://en.wikipedia.org/wiki/MPEG_transport_stream
[137]:https://vimeo.com/144499042
[138]:https://github.com/phoboslab/jsmpeg#example-setup-for-streaming-raspberry-pi-live-webcam
[139]:http://superuser.com/questions/286675/how-to-install-ffmpeg-on-debian
[140]:http://unix.stackexchange.com/questions/242399/why-was-ffmpeg-removed-from-debian
[141]:https://github.com/creationix/nvm
[142]:https://nodejs.org/en/download/
[143]:https://www.digitalocean.com/community/tutorials/how-to-install-node-js-on-ubuntu-16-04
[144]:
[145]:
[146]:
[147]:
[148]:
[149]:
[150]:
