
* [A quick guide to using FFmpeg to convert media files](https://opensource.com/article/17/6/ffmpeg-convert-media-file-formats?sc_cid=70160000000gz65AAA)
* [How to Decode a QR Code by Hand](https://www.youtube.com/watch?v=KA8hDldvfv0)
* [How to install OpenCV 4 on Ubuntu](https://www.pyimagesearch.com/2018/08/15/how-to-install-opencv-4-on-ubuntu/)
* [pip install opencv](https://www.pyimagesearch.com/2018/09/19/pip-install-opencv/)
* [OpenCV Text Detection (EAST text detector)](https://www.pyimagesearch.com/2018/08/20/opencv-text-detection-east-text-detector/)
* [Pan/tilt face tracking with a Raspberry Pi and OpenCV](https://www.pyimagesearch.com/2019/04/01/pan-tilt-face-tracking-with-a-raspberry-pi-and-opencv/)

* [Jupyter Notebook Extensions: How to get the most from the notebook environment](https://towardsdatascience.com/jupyter-notebook-extensions-517fa69d2231)


# ImageAI
ImageAI is an easy to use Computer Vision Python library that empowers developers
to easily integrate state-of-the-art Artificial Intelligence
features into their new and existing applications and systems.

* [Train Image Recognition AI with 5 lines of code](https://towardsdatascience.com/train-image-recognition-ai-with-5-lines-of-code-8ed0bdd8d9ba)

# Machine Vision
https://www.visiononline.org/vision-resources-details.cfm/vision-resources/Computer-Vision-vs-Machine-Vision/content_id/4585
Machine vision traditionally refers to the use of computer vision in an industrial or practical application or process where it is necessary to execute a certain function or outcome based on the image analysis done by the vision system. The vision system uses software to identify pre-programmed features. The system can be used to trigger a variety of set “actions” based on the findings.

Computer vision refers in broad terms to the capture and automation of image analysis with an emphasis on the image analysis function across a wide range of theoretical and practical applications.

It’s a nice board but why would I use instead of a Raspberry Pi + OpenCV + Python?

# Some Concepts
## Color
* [Color Spaces: The Model at the End of the Rainbow](https://hackaday.com/2018/03/30/color-spaces-the-model-at-the-end-of-the-rainbow/)
* [RGB LEDs: How to Master Gamma and Hue for Perfect Brightness](https://hackaday.com/2016/08/23/rgb-leds-how-to-master-gamma-and-hue-for-perfect-brightness/)
* [List of color spaces and their uses](https://en.wikipedia.org/wiki/List_of_color_spaces_and_their_uses)
color space - https://en.wikipedia.org/wiki/Color_space
* CAM - https://en.wikipedia.org/wiki/Color_appearance_model
* CIE - https://en.wikipedia.org/wiki/International_Commission_on_Illumination
* YUV - https://en.wikipedia.org/wiki/YUV
* and ther are many others (see https://en.wikipedia.org/wiki/Color_space)

Computer display standard - https://en.wikipedia.org/wiki/Computer_display_standard
Graphics Display Resolution - https://en.wikipedia.org/wiki/Graphics_display_resolution
* SXGA (1280 x 1024): up to 15 fps (frames/second)
* VGA (640 x 480): up to 30 fps
* CIF (352 x 288): up to 60 fps
* QVGA (320 x 240): up to 60 fps
* QCIF (176 x 144): up to 120 fps
* QQVGA (160 x 120): up to 60 fps
* QQCIF (88 x 72): up to 120 fps

Portable Network Graphics - https://en.wikipedia.org/wiki/Portable_Network_Graphics#Pixel_format
Raster graphics - https://en.wikipedia.org/wiki/Raster_graphics
Digital Video - https://en.wikipedia.org/wiki/Digital_video

## Computer's Monitor Calibration
[How Do I Calibrate My Computer's Monitor for the Best Picture?](https://lifehacker.com/5882632/how-do-i-calibrate-my-computers-monitor-for-the-best-picture)

## Video and TV
National Television System Committee (NTSC) and Phase Alternating Line (PAL) - https://www.youtube.com/watch?v=3GJUM6pCpew&app=desktop
https://www.youtube.com/watch?v=Z6KAbNvUMXQ

## Best Frame Rate
Best Frame Rate - https://www.youtube.com/watch?v=-vyxdm5aIOk
The History of Frame Rate for Film - https://www.youtube.com/watch?v=mjYjFEp9Yx0

## Aspect Ratio
The History of Aspect Ratio - https://www.youtube.com/watch?v=3CgrMsjGk7k

# Lens and Focal Length
The History and Science of Lenses - https://www.youtube.com/watch?v=1YIvvXxsR5Y&list=PLrMEncyd64BdPt-iWyxiAdo19tYm7myf1&index=15
The Properties of Camera Lenses - https://www.youtube.com/watch?v=CGGUXAMliqM
Focusing on Depth of Field and Lens Equivalents - https://www.youtube.com/watch?v=lte9pa3RtUk

# Color Temperature
 Color Temperature - https://www.youtube.com/watch?v=3HnhIRPLWsM

# OpenCV
The JoVois microSD includes many machine vision algorithms from [OpenCV 3.2][30] and other sources.
OpenCV (Open Source Computer Vision Library) is open source tool
widely used both in the academic and commercial worlds.
It has C++, C, Python, and Java interfaces and supports Windows, Linux, Mac OS, iOS and Android.
OpenCV is designed for computational efficiency, has a strong focus on real-time applications,
and can take advantage of multi-core processing.
Enabled within OpenCV is OpenCL (Open Computing Language),
a framework for execute across heterogeneous platforms consisting of central processing units (CPUs),
graphics processing units (GPUs), digital signal processors (DSPs),
field-programmable gate arrays (FPGAs) and other processors or hardware accelerators.

* [Computer Vision with Raspberry Pi and the Camera Pi module](https://www.open-electronics.org/computer-vision-with-raspberry-pi-and-the-camera-pi-module/)

# Streaming Video
Streaming a USB camera and the Pi camera module are fundamentally different operations; the Pi camera module is handled by the GPU which gets to draw directly on the HDMI/composite output if it wants to (in other words the CPU doesn't even need to "see" the frames). The USB bus doesn't get to do that so you have to grab frames from the USB camera and render them on-screen (i.e. it takes CPU time to render the video output)

* [Streaming videos using webcam](http://www.engineersgarage.com/embedded/raspberry-pi/streaming-videos-using-webcam)
* [How to Operate Linux Spycams With Motion](https://www.linux.com/learn/tutorials/780055-how-to-operate-linux-spycams-with-motion)
* [How to Operate Your Spycams with ZoneMinder on Linux (part 1)](http://www.linux.com/learn/tutorials/762058-how-to-operate-your-spycams-with-zoneminder-on-linux-part-1-)
* [Wifibroadcast – Analog-like transmission of live video data](https://befinitiv.wordpress.com/wifibroadcast-analog-like-transmission-of-live-video-data/)

# Object Recognition
* [Google Cloud Platform Vision API](https://cloud.google.com/vision/docs/getting-started?utm_source=product-announcement&utm_medium=email&utm_campaign=2016-02-Vision-API&utm_content=NoFT)
* [20+ Emotion Recognition APIs That Will Leave You Impressed, and Concerned](http://nordicapis.com/20-emotion-recognition-apis-that-will-leave-you-impressed-and-concerned/)
* [Face Recognition With Python, in Under 25 Lines of Code](https://realpython.com/blog/python/face-recognition-with-python/)
* [Clarifai](https://www.clarifai.com/)
* [How to Make Your Web App Smarter with Image Recognition](https://www.sitepoint.com/how-to-make-your-web-app-smarter-with-image-recognition/)

# VMX
[VMX Project: Computer Vision for Everyone](https://www.kickstarter.com/projects/visionai/vmx-project-computer-vision-for-everyone/posts/722323)

# CMUcam5 Pixy
* [Pixy2 is Super Vision for Arduino or Raspberry Pi](https://hackaday.com/2018/11/09/pixy2-is-super-vision-for-arduino-or-raspberry-pi/)
* [Pixy (CMUcam5): a fast, easy-to-use vision sensor](https://www.kickstarter.com/projects/254449872/pixy-cmucam5-a-fast-easy-to-use-vision-sensor)
* [Pan/Tilt2 Servo Motor Kit for Pixy2 - Dual Axis Robotic Camera Mount](https://www.seeedstudio.com/Pan-Tilt2-Servo-Motor-Kit-for-Pixy2-Dual-Axis-Robotic-Camera-Mount-p-3161.html)
    * [VMX: A Personal Computer Vision Server](https://vision.ai/purchase)
    * [Purchase, Documentation, Blog for Pixy CMUcam5 Image Sensor](http://www.robotshop.com/en/pixy-cmucam5-image-sensor.html?gclid=CjwKEAjw4s2wBRDSnr2jwZenlkgSJABvFcwQ0n_E5O0wzL8XCC-tkLf5ijS3VCQqgGtUxnjqsU6ZKBoCPAfw_wcB)
    * [Face Detector](http://www.cmucam.org/projects/cmucam3/wiki/Viola-jones)
    * [vision.ai Github](https://github.com/VISIONAI)

# People Counting with OpenCV
* People Counter with OpenCV Python:
[Video](https://www.youtube.com/watch?v=aEcBnD80nLg),
[Blog](http://www.femb.com.mx/category/people-counter/)
* [Counting People: Use OpenCV* for Edge Detection](https://software.intel.com/en-us/articles/opencv-at-the-edge-counting-people)
* [Footfall: A Camera Based People Counting System for under £60](https://blogs.wcode.org/2015/04/footfall-a-camera-based-people-counting-system-for-under-60/)
* [Is there an algorithm to count moving objects using the OpenCV module in Python?](https://www.quora.com/Is-there-an-algorithm-to-count-moving-objects-using-the-OpenCV-module-in-Python)
* [Basic motion detection and tracking with Python and OpenCV](http://www.pyimagesearch.com/2015/05/25/basic-motion-detection-and-tracking-with-python-and-opencv/)
* [Counting in Extremely Dense Crowd Images](http://crcv.ucf.edu/projects/crowdCounting/index.php)
* [Head Counter](https://github.com/yquemener/HeadCounter)
* [PEOPLE COUNTING SYSTEM USING RASPBERRY PI WITH OPENCV ](http://www.ijream.org/papers/IJREAMV02I01894.pdf)
* [People-Counter](https://github.com/LukashenkoEvgeniy/People-Counter)

Test Videos
* https://github.com/LukashenkoEvgeniy/People-Counter/blob/master/test2.mp4
* https://github.com/WatershedArts/Footfall/tree/master/images

Test Images
* [Lenna](https://en.wikipedia.org/wiki/Lenna)
* [Lenna](https://medium.com/five-guys-facts/lenna-e802b18d9ddc)
* [The Lena Standard Test Image, Full Version (!)](http://tech.velmont.net/the-lena-standard-test-image-full-version/)
* [The Lenna Story](http://www.cs.cmu.edu/~chuck/lennapg/lenna.shtml)
* [1972 Playboy Magazine - The "Lenna" Edition](http://kevinrye.net/index_files/1972_playboy_magazine_the_lenna_edition.php)
* [Lena Soderberg: The Playboy model at the centrefold of computer science](http://www.smh.com.au/technology/technology-news/lena-soderberg-the-playboy-model-at-the-centrefold-of-computer-science-20150510-ggyien.html)
* [The photo of Lena Söderberg](http://www.computableminds.com/post/lena-soderberg-common-image-processing-test-images.html)
* [The Playboy Centerfold That Helped Create the JPEG](https://www.theatlantic.com/technology/archive/2016/02/lena-image-processing-playboy/461970/)
* [A Nude ‘Playboy’ Photo Has Been a Mainstay in Testing Tech for Decades](https://onezero.medium.com/a-nude-playboy-photo-has-been-a-mainstay-in-testing-tech-for-decades-b8cdb434dce1)
* http://sipi.usc.edu/database/database.php?volume=misc&image=12#top

# JeVois
[!jevios-pictue](https://ksr-ugc.imgix.net/assets/014/886/994/18a5f65e1561e5954d5eff3bb2bcef0e_original.png?w=1024&h=576&fit=fill&bg=000000&v=1482445914&auto=format&q=92&s=44e072db2cf6e8b335395f122ffea599)
[JeVois][01] (French for "I see") is a 1.5x1.2x0.9 inch, open-source,
machine vision camera (see demo [here][05]).
JeVois' has a 1.3MP camera capable of video capture at:

* SXGA (1280 x 1024): up to 15 fps (frames/second)
* VGA (640 x 480): up to 30 fps
* CIF (352 x 288): up to 60 fps
* QVGA (320 x 240): up to 60 fps
* QCIF (176 x 144): up to 120 fps
* QQVGA (160 x 120): up to 60 fps
* QQCIF (88 x 72): up to 120 fps

This 1.35GHz [Allwinner A33 ARM Cortex A7][04] quad-core / dual [Mali-400][06] [GPU][03]
is optimized for machine vision running Linux / OpenCV,
and [comes with pre-configured machine vision software modules][07].
The JeVois hardware platfrom comes with a cooling fan ensures that CPU and GPU
can run at their maximum frequency even under sustained full processing load.
(The ARM Cortex A7 CPU clock speed is reduce when processors hits 75C
but the fan allows it to run under full load for days or weeks and keeps the tempature to under 50C.)

JeVois makes it easy to add machine vision to your projects by embedding
image capture, vision processing, and delivery of results into the tiny camera itself.
Its powerful processor has enough processing power to run sophisticated
machine vision algorithms for object detection and tracking, scene recognition,
detection and decoding of QR codes or other 2D barcode markers,
face detection, and object recognition using deep neural networks.

The JeVois software framework combines custom Linux kernel drivers for camera sensor and for USB output,
written in C, and a custom high-level vision processing framework, written in [C++-17][31].
The JeVois framework is designed for easy integration with other relevant libraries,
including [tiny-dnn][32], [OpenCV][33], [boost][34], [zBar][35], [Eigen][36], etc.
The JeVois operating system infrastructure is built using the [buildroot framework][37],
making it easier to support the JeVois embedded Linux systems via cross-compilation on Ubuntu.
The JeVois software framework makes it easy to create new vision processing modules,
and which allows simultaneous compilation of the same source code for a host computer
(e.g. Linux desktop used for development, debugging and testing)
and for the platform hardware (ARM processor).

JeVois is an impressive machine vision solution and
and its processor compares very favorably to the Raspberry Pi 3:

[!jrvois-vs-rpi3](https://cdn.shopify.com/s/files/1/1719/3183/files/comparison-to-rpi_1024x1024.png?v=1488568740)

[The world’s smallest autonomous racing drone](https://robohub.org/the-worlds-smallest-autonomous-racing-drone/)

JeVois can run standalone, or as a USB camera streaming raw or
The JeVois can work as:

1. A standalone computer, with no USB video streaming.
In such case, one would usually simply stream text strings over serial port,
to inform a controlling computer of what it is seeing and recognizing.
All you need then is to provide power to the JeVois camera's mini-USB connector.
1. Video streaming raw or pre-processed video over USB to a host computer for further action.
For Linux, works out of the box, no drivers needed, all functionality is available.
You can switch between different vision processing modes on the fly and at runtime, by selecting different camera resolutions and frame rates on your host computer.

[!jevios-architecture](http://jevois.org/assets/images/frameworks.png)

JeVois' [originated from academic research][22]
and morphed into an educational project to encourage the study of machine vision,
computational neuroscience, and machine learning as part of introductory programming and robotics courses,
and boasts an [impressive range of features][08].
JeVois aims to provide a self-contained, configurable machine vision engine
that can deliver both visual outputs of how it is analyzing what it sees (useful to understand the algorithms),
and text outputs over a serial link that describe what it has found
(useful to send to a micro-controller that can control a robot).

* [Quick start, tutorials, downloads and resources](http://jevois.org/start/)
* [General introduction and core documentation](http://jevois.org/doc/)
* [Bundled machine vision modules](http://jevois.org/doc/UserDemos.html)
* [Programmer documentation for vision modules](http://jevois.org/basedoc/)
* [Community questions & answers](http://jevois.org/qa/)

JeVois' academic research orgins means that you could also leverage
some of the tools created via that research, such as:

* [iLab Neuromorphic Vision C++ Toolkit (iNVT)](http://ilab.usc.edu/toolkit/)
* [iLab Neuromorphic Robotics Toolkit (NRT)](http://nrtkit.org/)

## Step 0: Register on JeVois Tech Zone
Register on [JeVois Tech Zone][12].
This will put you on the email list
and allow you to seek help from the community of JeVois users.

## Step 1: Download MicroSD Card Image - DONE
The operating system and machine vision software for JeVois resides on a MicroSD card
that you insert directly into the smart camera.
The source for the software resides on the [JeVois Github site][09],
and installation & cross-compiling instructions can be found [here][11],
but you can also download the pre-packaged JeVois MicroSD card image.
The procedure is listed below:

```bash
# download the latest jevois image from http://jevois.org/start/software.html

# unzip the downloaded file
$ unzip jevois-image-latest-8G.zip
Archive:  jevois-image-latest-8G.zip
  inflating: jevois-image-1.0d-8G.img
 extracting: jevois-image-1.0d-8G.md5

# validate file is uncorrupted via check of digital signature
$ sha1sum jevois-image-1.0d-8G.img
786ee02798335ea562983d66ab780e4c363905a5  jevois-image-1.0d-8G.img

# NOT the same number but I assumed all is well
$ cat jevois-image-1.0d-8G.md5
843fee34a765d3b2735b19d7922f8af3  jevois-image-1.0d-8G.img
```

## Step 2: Write Image to MicroSD Card - DONE
Next using Linux, you have to copied the image onto the SD card mounted to your system.
I'll be using the [Rocketek 11-in-1 4 Slots USB 3.0 Memory Card Reader][10] to create my SD Card.
The SD cards must be at least 8GB in size.

>**NOTE:** When using your card reader,
you'll need to know the device name of the reader.
The easiest way to find this is just unplug your card reader from the USB port,
run `df -h`, then plug it back in, and run `df -h` again.

```bash
# go to directory with the jevios image
cd /home/jeff/Downloads/JeVois

# put the sd card readed into usb and then unmount it
sudo umount /dev/sdj1

# write the image to the sd card reader
sudo dd bs=4M if=jevois-image-1.0d-8G.img of=/dev/sdj

# ensure the write cache is flushed
sync

# check the integrity of the sd card image
sudo dd bs=4M if=/dev/sdj of=copy-from-sd-card.img
sudo truncate --reference jevois-image-1.0d-8G.img copy-from-sd-card.img
diff -s jevois-image-1.0d-8G.img copy-from-sd-card.img

# unmount the sd card reader
sudo umount /dev/sdj
```

## Step 3: Connecting JeVois to Power and Linux Host - DONE
[Insert the MicroSD Card][13] into the JeVois camera and
connect it with mini-USB cable to a host computer (desktop or laptop).
The JeVois camera is [powered through the mini-USB connector][14] and is always required for operation.
The power sources needs to provide a regulated 5V +/- 10% voltage and
no less than 800mA current.
This a total of 4 Watts of power,
which is above the limit of what a single USB 2.0 port is designed to supply,
but is within the limits of a single USB 3.0 port.
The USB can provide a serial connection to the JeVois camera but
4-pin JST-SH 1.0mm connector (referred to as micro-serial connector,
[JST is not a connector][49])
provides an alternative/optional TTL-level serial (UART) connection to a microcontroller.

After plugging in the JeVois to you host computer,
Observe the two-color LED on the camera next to the USB connector:

* Green: Power is on and is strong enough (USB ports are not too weak to power the device)
* Red: Camera is streaming video frames.
* After about 3 seconds, Flash orange (green+red): The camera sensor chip has been detected and initialized.
* After about 5 seconds: Solid orange (green+red): The smart camera is ready for use.

You will find the JeVois USB video device file at `/dev/video*`
and the USB serial device interface at `/dev/ttyAMC*`.

To display the JeVois camera, we'll use [GUVCView][15].
GUVCView is a GTK+ front-end for the capturing of video
from devices supported by the [UVC driver][16].
With GUVCView you can capture video or images along with audio.
Guvcview uses a two-window interface in normal use.
One window displays the camera image to be recorded
and the other displays the settings and controls,
as well as menus.
With GUVCView yiu can [record from your webcam][17]

To install `guvcview`, follow the procedure below.
When using `guvcview` for the first time, it may hang trying to use the sound device.
To avoid this, start the first time from a Linux terminal.

```bash
# install guvcview and ffmpeg
sudo apt-get install guvcview ffmpeg

# start guvcview for the first time
# on raspberry pi host, use '-a none -o none' instead of '-ao none'
guvcview -ao none -f YUYV -x 640x360

# to see version number and command line argument
guvcview --help

# in subsequent runs, use the following
guvcview -ao none --device=/dev/video1 --format=YUYV --resolution=640x480
```

`guvcview` provides a great graphical user interface but does not work for all pixel formats
(and sometime crashes).
An alternative is to use [`ffplay`][25].
`ffplay` is a portable media player using the
[FFmpeg libraries][23] and the [SDL library][24].

`ffplay` can display all pixel formats supported by JeVois
and will reject a format if it does not exactly match what the hardware supports.
The pixel format supported by JeVois are
(see [User guide to video modes and mappings][18] for more information):
`yuyv422` for YUYV, `gray` for GRAY, `rgb565` for RGB565,
`mjpeg` for MJPG, `bgr24` for BGR24, and `bayer_rggb8` for BAYER.

```bash
# start ffplay
ffplay /dev/video1 -vf hflip -pixel_format yuyv422 -video_size 640x480
```

## Step 4: JeVois Installed Machine Vision Algorithms
The above puts JeVois into one of the machine vision algorithms included and ready to run.
Specifically, its a demo mode which runs vision algorthms that

* The [**salience**][26] (also called saliency) of an object, a person, a pixel, etc.
is the state or quality by which it stands out relative to its neighbors.
Saliency detection is considered to be a key attentional mechanism that facilitates learning
and survival by enabling organisms to focus their limited perceptua
and cognitive resources on the most pertinent subset of the available sensory data.
* People can recognize the meaning of a scene, or the [**gist**][27],
during their first eye fixation on that scene.
for example, you can recognize a scene is a beach, a dining room, or a street
in less than half a second.
* [**Face detection**][28] is a psycholoical process to identify human face
or computer technology capable of identifying or verifying a person
from a digital image or a video frame from a video source.
* [**Object recognition**][29] in the field of computer vision concerns the finding
and identifying objects in an image or video sequence.
Humans recognize objects in images with little effort,
despite the fact that the image of the objects may vary somewhat in different view points,
in many different sizes and scales, even when they are translated or rotated,
and they are partially obstructed from view.

Several machine vision algorithms are available (and some turned off).
Which algorithm runs is selected either by selecting a particular video resolution
on the a host computer connected to JeVois over the USB link
(easily done with `guvcview`),
or 2) using the command-line interface when no host computer is used
(and JeVois is only connected, for example, to an Arduino).
See this [video demo][19] and [user documentation on video modes and mappings][18]
for information and guidance.

The JeVois camera is capable of running a wide range of machine vision algorithms.
The selection of which algorithm runs is defined by a configuration file
(`/config/videomappings.cfg`) which establishes a mapping between
camera resolution, frame rate, and pixel format, a USB output resolution, and pixel format,
and the corresponding machine vision processing module.
You can find [here][13] the machine vision algorithms are included
and ready to run when using the JeVois MicroSD card image
(**NOTE:** More machine vision algorithms are available,
but they have been turned off to allow compatibility with Mac host computers.)

A vision processing mode in JeVois is determined by the combination of pixel format, image resolution, and frame rate. You can play with all these parameters in your camera software to trigger different modes. For example, in the default JeVois disk image, 320x240@60fps in MJPEG format uses the PassThrough vision module (no processing, just output the raw captured images after compressing them to MJPEG) while 320x240@60fps in YUYV format uses the SaveVideo module (which can capture and save video to the microSD card).

## Step X: Connecting to JeVois Via USB Serial Interface
You can interface with JeVois via the commandline using
its USB serial device interface at `/dev/ttyAMC*`.
JeVois's documentation provides a good introduction on
[how to use the serial USB interface][20] via [`screen`][21]
and the JeVois CLI commands.

>*NOTE:* JeVois doesn't support local echo on its serial interface
since its mission is to support a host computer, not humans, with machine vision.
But `screen` can't provide local echo either (to the best of my knowledge).
So consider using `minicom`.
With `minicom` you can enter `CTRL-A E` to turn on local echo
(and `CTRL-A A` to append a linefeed, if needed).

My Ubuntu Linux monitors the connection of modems via the process `ModemManager`,
and to it, JeVois looks like a new modem.
It may try to initialize JeVois as a modem that can dial out over telephone lines.
JeVois should ignore this but this may interfere with CLI commands until `ModemManager` gives up.
You may want to stop this via `sudo killall ModemManager` (it will come back on next reboot).

## Step X: Using MicroSD Card on Desktop Computer
Modifying the contents of your MicroSD card,
for example to add new machine vision modules
or to get video files that were recorded by JeVois,
can be achieved by taking the MicroSD card out of your JeVois camera
and connecting it to a desktop or laptop computer.

* http://jevois.org/doc/MicroSD.html

* [Front Door Camera Sends Automatic Alerts By Text](https://hackaday.com/2019/01/21/front-door-camera-sends-automatic-alerts-by-text/)

# Cloud Vision APIs
* [Google Cloud Vision API](https://cloud.google.com/vision/?utm_source=newsletter&utm_medium=email&utm_content=2016-January-cloud-global-us-gcp-newsletter-aw-en&utm_campaign=JanuarynewsletterV6Gamma)
* [Exploring the world on-the-go using Google Cloud Vision and Twilio](http://blog.juliaferraioli.com/2016/02/exploring-world-using-vision-twilio.html)
* [Comparing the Top Five Computer Vision APIs](https://goberoi.com/comparing-the-top-five-computer-vision-apis-98e3e3d7c647)
* [Valossa](http://valossa.com/)
* [Microsoft Azure Video API](https://azure.microsoft.com/en-us/services/cognitive-services/video-api/)
* [wildlife camera](https://hackaday.com/tag/wildlife-camera/)

# OpenMV Cam M7 / H7
* https://openmv.io/
* [OpenMV Cam M7](https://www.sparkfun.com/products/14185)
* [OpenMV Cam M7](https://openmv.io/products/openmv-cam-m7)
* [OpenMV Videos](https://www.youtube.com/channel/UCk43Dxy_qcwwYyLsP6EWatQ)
* [Reading barcodes with Python and OpenMV](https://www.pyimagesearch.com/2018/03/19/reading-barcodes-with-python-and-openmv/)
* [OpenMV Cam H7 - Machine Vision w/ MicroPython](https://www.kickstarter.com/projects/1798207217/openmv-cam-h7-machine-vision-w-micropython)
* [Deep Learning at the Edge on an Arm Cortex-Powered Camera Board](https://blog.hackster.io/deep-learning-at-the-edge-on-an-arm-cortex-powered-camera-board-3ca16eb60ef7)

# Arducam
* [ArduCAM now Supports ESP8266 Arduino Board with WIFI Websocket Camera Demo](http://www.arducam.com/arducam-supports-esp8266-arduino-board-wifi-websocket-camera-demo/)
* [The GotchaCAM Portable DIY Wifi Camera Based Travel and Home Security and Surveillance System](http://www.arducam.com/)
* [GitHub for ArduCAM](https://github.com/ArduCAM)
* http://hackaday.com/2017/04/11/esp32-wifi-hits-10km-with-a-little-help/
    * [more information](https://www.youtube.com/watch?v=yCLb2eItDyE)

# Rapberry Pi Camera Module vs USB Camera
The Pi camera is 'run' by the GPU and can dump full frames into RAM at 15 frames a second.
This is 7.5MB/frame, 15fps = 112.5 Mega bytes per second.
Or you can have full HD resolution 30fps H264 encoded (by the GPU)
along with some simultaneous still photos (Google MMAL) all at virtually zero CPU loading

On the other hand, the RPi USB-Webcam is 'run' a byte at a time by the CPU,
and at the cost of 100% CPU loading you might achieve a couple of hundred Mega bits per second.
So even if a USB-Webcam  could provide the throughput you desired,
its going to consume a very large fraction of you CPU cycles.
SO, unless CCTV resolutions (320x240 pixels) are what you want,
it has to be the Pi camera.

MMAL (Multi-Media Abstraction Layer) is a framework which is used to provide a host-side, simple and relatively low-level interface to multimedia components running on VideoCore.

[VideoCore][39] is a low-power mobile multimedia processor found on the Raspberry Pi.
Its DSP architecture is flexible and efficient enough to encode/decode
a number of multimedia codecs in software while maintaining low power usage.
The [Raspberry Pi's VideoCore GPU provides][40] 24 GFLOPS of computation
and supports OpenGL ES 1.1, OpenGL ES 2.0, hardware-accelerated OpenVG 1.1, Open EGL,
OpenMAX and 1080p30 H.264 high-profile decode.


General-purpose computing on graphics processing units (GPGPU, rarely GPGP) is the use of a graphics processing unit (GPU), which typically handles computation only for computer graphics, to perform computation in applications traditionally handled by the central processing unit (CPU) - https://en.wikipedia.org/wiki/General-purpose_computing_on_graphics_processing_units

* RPI-3: Performance issue on FFmpeg with mmal support - https://raspberrypi.stackexchange.com/questions/66923/rpi-3-performance-issue-on-ffmpeg-with-mmal-support
* Smooth playback of adaptive video streams on Raspberry Pi with gst-mmal - https://gstreamer.freedesktop.org/data/events/gstreamer-conference/2016/John%20Sadler%20-%20Smooth%20video%20on%20Raspberry%20Pi%20with%20gst-mmal%20(Lightning%20Talk).pdf

# SimpleCV vs OpenCV
[OpenCV][33] is a library that can be used with different languages (C, C++, Java, Python, etc.),
and it provides standard things such as image capture, image manipulation, etc.
SimpleCV on the other hand is a framework including several libraries (OpenCV and other libraries like pygame etc.) and uses Python for scripting. Due to the nature of Python, you can either run scripts or use an interactive shell to do computer vision stuff and related tasks.

Which one to choose? This really depends on your usage scenario. For quick prototyping I'd guess SimpleCV is far superior, but for actual implementation/usage, OpenCV offers a lot more possibilities (although at a higher complexity; e.g. being able to be included in native applications as well as embedded systems).

There is a book available that is quite detailed "Practical computer vision with SimpleCV"

SimpleCV is great for simple machine projects and hobbies but don't expect high performance, its all in python for a start and so there is a performance penalty just on that

* [Using the Raspberry Pi camera module with SimpleCV](http://openlabtools.eng.cam.ac.uk/Resources/Imaging/RPiCamera/)
* https://www.youtube.com/watch?v=UZSm7Q2bZoc

# Installing OpenCV and Jupyter on a Raspberry Pi - DONE
[!opencv-logo](http://opencv.org/assets/theme/logo.png)
You’ve just got your Rasperry Pi a camera and your all excited to use it with [OpenCV][33].
First of all, hopefully its one of the [RPi Board Cameras][44].
While you could use a cheaper [USB-Webcam on the RPi][38],
you'll get none of the benfits of the Raspberry Pi's native GPU or [Graphics Processing Unit][45].

My sources of insperation for the steps below are from:

* [Accessing the Raspberry Pi Camera with OpenCV and Python](http://www.pyimagesearch.com/2015/03/30/accessing-the-raspberry-pi-camera-with-opencv-and-python/)
* [Raspbian Stretch: Install OpenCV 3 + Python on your Raspberry Pi](http://www.pyimagesearch.com/2017/09/04/raspbian-stretch-install-opencv-3-python-on-your-raspberry-pi/)
* [Installing OpenCV on your Raspberry Pi Zero](http://www.pyimagesearch.com/2015/12/14/installing-opencv-on-your-raspberry-pi-zero/)
* [Best resources for learning OpenCV (Python and C++)](http://jacksimpson.co/best-resources-for-learning-opencv-python-and-c/)

## Step 0: Disk Space - DONE
The OpenCV and the OpenCV Contribution pakages are very large (430M + 120M).
If your like me, you'll be using an 8GB SD card on the Raspberry Pi Zero
and 16GB SD-Card for all the other RPi's.
A standard Raspberry Pi install will likely use over 4GB of the available space,
and then you add your personal tools and more space is used up.
I have found that attempting to load OpenCV and the OpenCV Contribution pakage
will require 10GB of disk space.
If your considering using Jupyter and some of the popular Python libraries,
your looking at 11 to 12GB of SD-Card storage being consumed.
My advice is to consider using a 32G SD-Card.

If your in the middle of your install,
and your desperately looking for more space,
consider deleting both the LibreOffice and Wolfram engines
to free up about 1G of space, as shown below:

```bash
# free up some disk space by remove some packages
sudo apt-get purge wolfram-engine
sudo apt-get purge libreoffice*
sudo apt-get clean
sudo apt-get autoremove
```

In addition, once you have successfully compiled OpenCV,
you can delete the source directory,
as outlined in Step 6 below.

## Step 1: Install OpenCV Dependencies - DONE
The first thing we should do is update and upgrade any existing packages,
followed by updating the Raspberry Pi firmware.

```bash
# update the raspberry pi platform
sudo apt-get update && sudo apt-get upgrade
sudo rpi-update

# if the firmware is updated, you need to reboot
sudo shutdown -r now
```

Now let install OpenCV dependency packages:

```bash
# install dev tool packages you'll need for opencv
sudo apt-get install build-essential git cmake pkg-config

# install image processing packages
sudo apt-get install libjpeg-dev libtiff5-dev libjasper-dev libpng12-dev

# install video processing packages
sudo apt-get install libavutil-dev libavcodec-dev libavformat-dev libswscale-dev libv4l-dev
sudo apt-get install libxvidcore-dev libx264-dev

# highgui used to display images to screen and build basic GUIs
sudo apt-get install libgtk2.0-dev libgtk-3-dev

# packages for opencv matrix operations
sudo apt-get install libatlas-base-dev gfortran

# get python 2.7 and python 3 header files so we can compile opencv with python bindings
sudo apt-get install python2.7-dev python3-dev

# to manage software packages for python 3, let’s install pip and virtual env tool
sudo apt-get install python3-pip
sudo apt-get install python3-venv

# to ensure a robust python programming environment
sudo apt-get install build-essential libssl-dev libffi-dev python-dev
```

## Step 2: Install OpenCV from Source Code - DONE
Lets grab the [latest version of OpenCV][41] from GitHub and install it.
Make sure your `opencv` and `opencv_contrib` versions match up,
otherwise you will run into errors during compilation.

```bash
# move to the direct where opencv will be installed
cd ~/src

# download and install opencv
wget -O opencv.zip https://github.com/opencv/opencv/archive/3.3.0.zip
unzip opencv.zip

# download and install opencv_contrib
wget -O opencv_contrib.zip https://github.com/opencv/opencv_contrib/archive/3.3.0.zip
unzip opencv_contrib.zip

# remove zip files
rm opencv.zip opencv_contrib.zip
```

## Step 3: Setup Python Environment - DONE
Using `pyvenv` allows you to create isolated Python environments,
separate from your system install of Python.
This means that you can run multiple versions of Python,
with different versions of packages installed into each virtual environment.
Installing and using these packages is not a requirement to use OpenCV and Python,
but I highly recommend.

Next, create the Python virtual environment that we’ll use for computer vision development:

```bash
# make a virtual environment for python 3 development
cd ~/src
pyvenv cv_env

# see what has been created
$ ls cv_env
bin  include  lib  lib64  pyvenv.cfg  share
```

Together, these files work to make sure that your projects
are isolated from the broader context of your local machine,
so that system files and project files don’t mix.
This is good practice for version control and to ensure that each of your projects
has access to the particular packages that it needs (including `wheels`).

To use this environment, you need to activate it,
which you can do by typing the following command that calls the activate script:

```bash
# activate your virtual environment
source ~/src/cv_env/bin/activate
```

To leave the environment,
simply type the command `deactivate` and you will return to your original directory.

Your Linux terminal prompt will now be prefixed with the name of your environment,
in this case it is called `cv_env`.
This prefix lets us know that the environment `cv_env` is currently active,
meaning that when we create programs here they will use
only this particular environment’s settings and packages.

>**Note:** Within the virtual environment,
you can use the command python instead of python3,
and pip instead of pip3 if you would prefer.
If you use Python 3 on your machine outside of an environment,
you will need to use the python3 and pip3 commands exclusively.

## Step 4: Installing NumPy on your Raspberry Pi - DONE
You should now be in the `cv_env` virtual environment and it should be activated
(which you should stay in for the rest of these steps).
Our only Python dependency is NumPy, a Python package used for numerical processing.
We install this now (this will take several minutes):

```bash
# install python numpy package
cd ~/src/cv_env
source ~/src/cv_env/bin/activate
pip install numpy
```

## Step 5: Compile and Install OpenCV - DONE
We are now ready to compile and install OpenCV.
Make sure you're still in the `cv_env` virtual environment by examining your prompt
(You should see the `cv_env` text preceding the prompt.)

```bash
# create and enter the directoy where opencv will be built
cd ~/src/opencv-3.3.0
mkdir build
cd build

# for ubuntu ... create the makefile for the build
cmake -D CMAKE_BUILD_TYPE=RELEASE -D CMAKE_INSTALL_PREFIX=/usr/local -D INSTALL_PYTHON_EXAMPLES=ON -D OPENCV_EXTRA_MODULES_PATH=~/src/opencv_contrib-3.3.0/modules -D BUILD_EXAMPLES=ON ..

# for raspberry pi ... create the makefile for the build
cmake -D CMAKE_BUILD_TYPE=RELEASE -D CMAKE_INSTALL_PREFIX=/usr/local -D OPENCV_EXTRA_MODULES_PATH=~/src/opencv_contrib-3.3.0/modules -D INSTALL_PYTHON_EXAMPLES=ON -D ENABLE_NEON=ON -D ENABLE_VFPV3=ON -D BUILD_TESTS=ON -D BUILD_EXAMPLES=ON ..

# execute the make file
# note: if you have a compiler error, do "make clean" and then just "make"
make

# install opencv executables and libraries
sudo make install

# creates the necessary links and cache to the most recent shared libraries
sudo ldconfig
```

Provided the above steps finished without error,
OpenCV should now be installed in `/usr/local/lib/python3.5/site-packages`
or `/usr/local/lib/python3.5/dist-packages`.
You should verify this:

```bash
# verify the opencv install
$ ls -l /usr/local/lib/python3.5/site-packages/
total 3876
-rw-r--r-- 1 root staff 3968464 Sep  5 17:11 cv2.cpython-35m-arm-linux-gnueabihf.so
```

For some reason (bug in the CMake script?),
the OpenCV 3 file for Python 3+ binding may have the extention `.so`
and named `cv2.cpython-35m-arm-linux-gnueabihf.so` (or some variant of)
rather than simply `cv2.so` like  it should.
This needs to be fixed:

```bash
# enter the target directory
cd /usr/local/lib/python3.5/site-packages/

# rename the file
sudo mv cv2.cpython-35m-arm-linux-gnueabihf.so cv2.so

# sym-link our opencv bindings into the cv virtual environment for python 3.5
#cd ~/.virtualenvs/cv/lib/python3.5/site-packages/
cd ~/src/cv_env/lib/python3.5/site-packages/
ln -s /usr/local/lib/python3.5/site-packages/cv2.so cv2.so
```

## Step 6: Test OpenCV 3 Install - DONE
To validate the install of OpenCV and its binding with Python3,
open up a new terminal, execute the `source` and `workon` commands,
and then attempt to import the Python + OpenCV bindings:

```bash
[cv_env] $ ~/src/cv_env $ python
Python 3.5.3 (default, Jan 19 2017, 14:11:04)
[GCC 6.3.0 20170124] on linux
Type "help", "copyright", "credits" or "license" for more information.
>>> import cv2
>>> cv2.__version__
'3.3.0'
>>>
```

Appears that OpenCV 3.3.0 has been successfully installed
on Raspberry Pi 3 + Python 3.5 environment.

Once your absolutely sure OpenCV has been successfully installed,
you can remove both the `~/src/opencv-3.3.0` and `~/src/opencv_contrib-3.3.0`
directories to free up a bunch of space on your disk.

## Step 7: Test the Camera and Install Required Python Module - DONE
Before we go any further,
we need to make sure the camera on the Raspberry Pi works.
The install instructions for the camera can bout found [here][47].
To test out the camera, just use some of the simple tools
that come with the RPi:

```bash
# test the raspberry pi camer to make sure it works
raspistill -o output.jpg
display output.jpg
```

With the last command, you should see a picture displayed.

So we know now the Raspberry Pi camera is working properly,
but how do we interface with the Raspberry Pi camera module using Python?
To do this, we'll use [Python's picamera][48].
To do the install,
make sure your in the `cv_env` virtual environment,
and execute the following commands:

```bash
# install picamera modual with the array sub-module
pip install "picamera[array]"
```
The standard picamera module provides methods to interface with the camera,
but we need the array sub-module so that we can utilize OpenCV.
With our Python bindings, OpenCV represents images as NumPy arrays
and the array sub-module enables this.

## Step 8: Uploading Test Data - DONE
OpenCV is all about processing visual images,
so your going to need test data,
potential a great deal of it, in the form of pictures and videos.
Some sources to consider are:

* Search Google for images or videos to download
* You can use the utility [`youtube-dl`][46] (may want to use the `-k` option)
to download videos from Youtube, or from nearly any website.
* [USC-SIPI image database](http://sipi.usc.edu/database/)

You can use SSH to move data from your local desktop to the Raspberry Pi.
I did this with the following commands:

```bash
cd ~/src/cv_env
mkdir videos images

# copy a file from your computer to another computer
# scp <file> <username>@<IP address or hostname>:<Destination>

# load images to the raspberry pi
scp ~/Downloads/Lenna.png pi@BlueRPi:~/src/cv_env/images
scp ~/Downloads/Lenna.tif pi@BlueRPi:~/src/cv_env/images
scp ~/Downloads/Lenna.jpg pi@BlueRPi:~/src/cv_env/images

# load videos to the raspberry pi
scp ~/Downloads/All-is-Full-of-Love-by-Bjork.mp4 pi@BlueRPi:~/src/cv_env/videos
```

# Install Jupyter Notebook
I want a interactive and feature rich environment for doing my OpenCV work,
and I found that in [Jupyter Notebook][55].
Like the OpenCV package, giving a proper introduction to Jupyter Notebook
could fill multiple books, web pages, news articles, and in fact does!
Jupyter is an evolution of the IPython Notebook,
but now [language agnostic and much more][54]
If you want to get a sense of the power and versatility of Jupyter Notebook,
check out the links below:

* [A gallery of interesting Jupyter Notebooks](https://github.com/jupyter/jupyter/wiki/A-gallery-of-interesting-Jupyter-Notebooks)
* [Jupyter nbviewer](http://nbviewer.jupyter.org/)
* [IPython Notebook best practices for data science](https://www.youtube.com/watch?v=JI1HWUAyJHE)

If you wish to covert the Jupyter Notebooks to another format for publishing
(ex. HTML, PDF, Markdown, and more),
they can be created by using the [nbconvert][52] utility.
Another nice fact is that Jupyter Notebook files
(i.e. `*.ipynb`) will render automatically on GitHub/Gist ([example][53])
giving you a public way to share or .

Installing Jupyter Notebook on your computer is documented [here][50].
For new users, they highly recommend installing it via [Anaconda][51],
but as an existing Python user, you can do the following
([here is why][56] I'm using `sudo -H`):

```bash
# update your pip utility
pip3 install --upgrade pip

# install jupyter
sudo -H pip3 install jupyter

# install some of the commonly used python packages
sudo -H pip3 install numpy
sudo -H pip3 install pandas
sudo -H pip3 install matplotlib
sudo -H pip3 install seaborn
sudo -H pip3 install sklearn
```

You can start the Jupyter Notebook via several ways:

```bash
# enter this commad in a terminal and your browser will open with jupyter (http://localhost:8888)
jupyter notebook

# same but openning in port 9999
jupyter notebook --port 9999

# start notebook server without opening a web browser
jupyter notebook --no-browser

# notebook server provides help messages
jupyter notebook --help
```

What if you Jupyter environment isn't on your local computer,
but instead on a remote compute accessible via TCP/IP?
You want to open and manipulate an Jupyter Notebook running on the remote computer.
This can be done by opening an SSH tunnel.
This tunnel will forward the port used by the remotely running Jupyter Notebook server instance
to a port on your local machine,
where it can be accessed in a browser just like a locally running Jupyter Notebook instance.

On the remote machine, start the Jupyter Notebooks server:

```bash
# on the remote machine, start the jupyter notebooks server
jupyter notebook --no-browser --port=8889
```

On the local machine, start an SSH tunnel:

```bash
# on the local machine, start an SSH tunnel
# run in background: ssh -f -N -L localhost:8888:localhost:8889 remote_user@remote_host
# run in foreground: ssh -N -L localhost:8888:localhost:8889 remote_user@remote_host
ssh -N pi@BlueRPi -L localhost:8888:localhost:8889
```

Now enter `localhost:8888` in your favorite browser to use the remote Jupyter Notebook!

* [Remote Access to IPython Notebooks via SSH](https://coderwall.com/p/ohk6cg/remote-access-to-ipython-notebooks-via-ssh)
* [Use Jupyter notebook remotely](http://amber-md.github.io/pytraj/latest/tutorials/remote_jupyter_notebook)
* [Running a notebook server](https://jupyter-notebook.readthedocs.io/en/stable/public_server.html)
* [Jupyter Notebook on remote server](https://coderwall.com/p/y1rwfw/jupyter-notebook-on-remote-server)

# Face Detection Using node-opencv
[node-opencv][42] is OpenCv's bindings for Node.js.


* https://github.com/drejkim/pyenv-opencv/blob/master/detection.py
* [node-opencv GitHub](https://github.com/peterbraden/node-opencv)
* [node-opencv documentation](http://peterbraden.github.io/node-opencv/)
* [Real-time face detection using OpenCV, Node.js, and WebSockets](http://drejkim.com/blog/2014/12/02/real-time-face-detection-using-opencv-nodejs-and-websockets/)
* [face-detection-node-opencv GitHub](https://github.com/drejkim/face-detection-node-opencv)

################################################################################

* [Install guide: Raspberry Pi 3 + Raspbian Jessie + OpenCV 3](http://www.pyimagesearch.com/2016/04/18/install-guide-raspberry-pi-3-raspbian-jessie-opencv-3/)
* [OpenCV and Pi Camera Board](https://thinkrpi.wordpress.com/2013/05/22/opencv-and-camera-board-csi/)
* [OpenFace - Free and open source face recognition with deep neural networks](https://cmusatyalab.github.io/openface/)
* [Face Detection Using OpenCV With Raspberry Pi](https://www.hackster.io/deligence-technologies/face-detection-using-opencv-with-raspberry-pi-93a8fe)
* [Face Recognition: Kairos vs Microsoft vs Google vs Amazon vs OpenCV](https://www.kairos.com/blog/face-recognition-kairos-vs-microsoft-vs-google-vs-amazon-vs-opencv)

################################################################################

# Networked Birdhouse
* [Networked Solar Birdhouses Deep in the Woods](http://hackaday.com/2016/05/20/making-solar-powered-networked-birdhouses-putting-them-in-the-middle-of-the-woods/)

# motion
[!motion](http://www.lavrsen.dk/foswiki/pub/Motion/WebPreferences/motion-trans.gif)
[`motion`][109] is a program that monitors the video signal from one or more cameras
and is able to detect if a significant part of the picture has changed.
Or in other words, it can detect motion.
Motion has many features can be a bit overwhelming
but the articles "[How to Operate Linux Spycams With Motion][118]" and
"[How to Set Up Motion Detection Webcam in Ubuntu][119]" will get you going.

* [TURN THAT PI ZERO INTO A STREAMING CAMERA, STEP-BY-STEP](https://hackaday.com/tag/wi-fi-camera/)
* [Raspberry Pi Security System Part 1: The camera](https://hackmypi.com/PiCamPart1.php)

# Camera Human Recognition
* [Building a Motion Activated Security Camera with the Raspberry Pi Zero](http://hackaday.com/2017/02/06/motion-detecting-camera-recognizes-humans-using-the-cloud/)
* [Smarten up your Pi Zero Web Camera with Image Analysis and Amazon Web Services (Part 1)](https://utbrudd.bouvet.no/2017/01/10/smarten-up-your-pi-zero-web-camera-with-image-analysis-and-amazon-web-services-part-1/)

# Other
* [IoT IP camera teardown and getting root password](http://jelmertiete.com/2016/03/14/IoT-IP-camera-teardown-and-getting-root-password/)


# Installing OpenCV and Jupyter on Ubuntu
I also want OpenCV on my Linux desktop which is running Ubuntu 17.04.
I used the installation procedure below, which was derived from
[this website](http://milq.github.io/install-opencv-ubuntu-debian/).

```bash
################################# Update Linux #################################

sudo apt-get -y update
sudo apt-get -y upgrade
sudo apt-get -y dist-upgrade
sudo apt-get -y autoremove

######################### Install OpenCV Dependencies ##########################

# required build tools
sudo apt-get install -y build-essential cmake

# GUI (if you want to use GTK instead of Qt, replace 'qt5-default' with 'libgtkglext1-dev' and remove '-DWITH_QT=ON' option in CMake)
sudo apt-get install -y qt5-default libvtk6-dev

# Media I/O
sudo apt-get install -y zlib1g-dev libjpeg-dev libwebp-dev libpng-dev libtiff5-dev libjasper-dev libopenexr-dev libgdal-dev

# NOTE: At the time of this install, ibjasper-dev was not available for Ubuntu 17.04.
# I needed to install the package from an earlier release.  I did the following
# echo "deb http://us.archive.ubuntu.com/ubuntu/ yakkety universe" | sudo tee -a /etc/apt/sources.list
# sudo apt-get update
# sudo apt-get install libjasper-dev

# Video I/O
sudo apt-get install -y libdc1394-22-dev libavcodec-dev libavformat-dev libswscale-dev libtheora-dev libvorbis-dev libxvidcore-dev libx264-dev yasm libopencore-amrnb-dev libopencore-amrwb-dev libv4l-dev libxine2-dev

# Parallelism and linear algebra libraries
sudo apt-get install -y libtbb-dev libeigen3-dev

# get python 2.7 and python 3 header files so we can compile opencv with python bindings
sudo apt-get install python2.7-dev python3-dev

# to manage software packages for python 3, let’s install pip and virtual env tool
sudo apt-get install python3-pip
sudo apt-get install python3-venv

# Java
sudo apt-get install -y ant default-jdk

# Documentation
sudo apt-get install -y doxygen

################################ Install OpenCV ################################

# move to the direct where opencv will be installed
cd ~/src

# download and install opencv
wget -O opencv.zip https://github.com/opencv/opencv/archive/3.3.0.zip
unzip opencv.zip

# download and install opencv_contrib
wget -O opencv_contrib.zip https://github.com/opencv/opencv_contrib/archive/3.3.0.zip
unzip opencv_contrib.zip

# remove zip files
rm opencv.zip opencv_contrib.zip

# create and enter the directoy where opencv will be built
cd ~/src/opencv-3.3.0
mkdir build
cd build

# create the makefile for the build
cmake -D CMAKE_BUILD_TYPE=RELEASE -D CMAKE_INSTALL_PREFIX=/usr/local -D INSTALL_PYTHON_EXAMPLES=ON -D OPENCV_EXTRA_MODULES_PATH=~/src/opencv_contrib-3.3.0/modules -D BUILD_EXAMPLES=ON ..

# execute the make file
# note: if you have a compiler error, do "make clean" and then just "make"
make -j4

# install opencv executables and libraries
sudo make install

# creates the necessary links and cache to the most recent shared libraries
sudo ldconfig
```

Provided the above steps finished without error,
OpenCV should now be installed in `/usr/local/lib/python3.5/dist-packages/`.
You should verify this:

```bash
# verify the opencv install
$ ls -l /usr/local/lib/python3.5/dist-packages/
total 3876
-rw-r--r-- 1 root staff 3968464 Sep  5 17:11 cv2.cpython-35m-x86_64-linux-gnu.so
```

For some reason (bug in the CMake script?),
the OpenCV 3 file for Python 3+ binding has the extention `.so`
and named `cv2.cpython-35m-x86_64-linux-gnu.so` (or some variant of)
rather than simply `cv2.so` like  it should.
This needs to be fixed:

```bash
# enter the target directory and rename the file
cd /usr/local/lib/python3.5/dist-packages/
sudo mv cv2.cpython-35m-x86_64-linux-gnu.so cv2.so
```



[01]:http://jevois.org/
[02]:http://hackaday.com/2017/05/17/jevois-machine-vision-camera-nails-demo-mode/
[03]:https://en.wikipedia.org/wiki/Graphics_processing_unit
[04]:http://www.gsmarena.com/allwinner_a33_is_a_4_chipset_with_quadcore_cortexa7_processor-news-9173.php
[05]:http://hackaday.com/2017/05/17/jevois-machine-vision-camera-nails-demo-mode/
[06]:https://www.arm.com/products/multimedia/mali-gpu/ultra-low-power/mali-400.php
[07]:https://www.jevoisinc.com/products/jevois-a33-smart-machine-vision-camera?variant=36249051018
[08]:http://jevois.org/doc/Hardware.html
[09]:https://github.com/jevois
[10]:https://www.amazon.com/gp/product/B00GVRHON2?psc=1&redirect=true&ref_=oh_aui_detailpage_o00_s01
[11]:http://jevois.org/doc/CompilingJeVois.html
[12]:http://jevois.org/qa/index.php
[13]:http://jevois.org/start/start.html
[14]:http://jevois.org/doc/UserConnect.html
[15]:http://guvcview.sourceforge.net/
[16]:http://www.ideasonboard.org/uvc/
[17]:https://www.ghacks.net/2011/02/05/record-from-your-web-cam-in-linux-with-guvcview/
[18]:http://jevois.org/doc/UserModes.html
[19]:https://www.youtube.com/watch?v=pfLlk30uF6Y
[20]:http://jevois.org/doc/USBserialLinux.html
[21]:https://www.rackaid.com/blog/linux-screen-tutorial-and-how-to/
[22]:http://jevois.org/doc/History.html
[23]:https://ffmpeg.org/
[24]:https://www.libsdl.org/
[25]:https://ffmpeg.org/ffplay.html
[26]:https://imotions.com/blog/saliency-detection/
[27]:https://www.k-state.edu/psych/vcl/basic-research/scene-gist.html
[28]:https://web.stanford.edu/class/ee368/Project_03/Project/reports/ee368group02.pdf
[29]:http://www.cs.toronto.edu/~jepson/csc2503/recognition1.pdf
[30]:http://opencv.org/opencv-3-2.html
[31]:http://www.infoworld.com/article/3044727/application-development/qa-bjarne-stroustrup-previews-c-17.html
[32]:https://github.com/tiny-dnn/tiny-dnn
[33]:http://opencv.org
[34]:http://www.boost.org/
[35]:http://zbar.sourceforge.net/
[36]:http://eigen.tuxfamily.org
[37]:https://buildroot.uclibc.org/
[38]:https://www.raspberrypi.org/documentation/usage/webcams/
[39]:https://en.wikipedia.org/wiki/VideoCore
[40]:http://elinux.org/Raspberry_Pi_VideoCore_APIs#Built-in_Sample_Programs
[41]:https://github.com/opencv/opencv
[42]:https://www.npmjs.com/package/opencv
[43]:http://www.pyimagesearch.com/2017/09/04/raspbian-stretch-install-opencv-3-python-on-your-raspberry-pi/
[44]:https://www.adafruit.com/product/3099
[45]:https://en.wikipedia.org/wiki/Graphics_processing_unit
[46]:https://rg3.github.io/youtube-dl/download.html
[47]:https://thepihut.com/blogs/raspberry-pi-tutorials/16021420-how-to-install-use-the-raspberry-pi-camera
[48]:http://picamera.readthedocs.io/en/release-1.9/index.html
[49]:https://hackaday.com/2017/12/27/jst-is-not-a-connector/
[50]:http://jupyter.org/install.html
[51]:https://www.anaconda.com/
[52]:https://nbconvert.readthedocs.io/en/latest/
[53]:https://github.com/barbagroup/AeroPython/blob/master/lessons/01_Lesson01_sourceSink.ipynb
[54]:https://www.quora.com/What-is-the-difference-between-Jupyter-and-IPython-Notebook
[55]:http://jupyter.org/
[56]:https://stackoverflow.com/questions/43623025/what-does-sudo-h-do
[57]:
[58]:
[59]:
[60]:

[109]:http://www.lavrsen.dk/foswiki/bin/view/Motion/WebHome

[118]:https://www.linux.com/learn/how-operate-linux-spycams-motion
[119]:https://www.maketecheasier.com/setup-motion-detection-webcam-ubuntue

