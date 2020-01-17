# Version 2
* [Neural Compute Stick 2 from Intel brings faster deep learning development to the edge](https://www.vision-systems.com/articles/2018/11/neural-compute-stick-2-from-intel-brings-faster-deep-learning-development-to-the-edge.html)
* [Plugging in Intel’s Neural Compute Stick 2](https://www.electronicdesign.com/embedded-revolution/plugging-intel-s-neural-compute-stick-2)
* [Intel to Discontinue First-Gen Movidius Neural Compute Stick](https://www.anandtech.com/show/14295/intel-to-discontinue-movidius-neural-compute-stick)


# Google Rdge TPU
* [Google’s AI Processor’s (TPU) Heart Throbbing Inspiration](https://medium.com/intuitionmachine/googles-ai-processor-is-inspired-by-the-heart-d0f01b72defe)
* [Raspberry Pi gets supercharged for AI by Google's Edge TPU Accelerator](https://www.techrepublic.com/article/raspberry-pi-gets-supercharged-for-ai-by-googles-edge-tpu-accelerator/)
* [Getting started with Google Coral’s TPU USB Accelerator](https://www.pyimagesearch.com/2019/04/22/getting-started-with-google-corals-tpu-usb-accelerator/)


* [Gyrfalcon Technology debuts Laceli AI Compute Stick with compact dimension, 4GB free storage space](http://wwpi.com/2018/01/02/gyrfalcon-technology-debuts-laceli-ai-compute-stick-with-compact-dimension-4gb-free-storage-space/)
* [How we made TensorFlow run on a Raspberry Pi using Rust](https://medium.com/snips-ai/how-we-made-tensorflow-run-on-a-raspberry-pi-using-rust-7478f7a31329)

* [Raspberry Pi Camera with Smarts — Cloud or Local?](https://hackaday.com/2019/03/07/raspberry-pi-camera-with-smarts-cloud-or-local/)
* [AI ON RASPBERRY PI WITH THE INTEL NEURAL COMPUTE STICK](https://hackaday.com/2019/01/31/ai-on-raspberry-pi-with-the-intel-neural-compute-stick/)

* [webrtcHacks / webrtcH4cKS: ~ Computer Vision on the Web with WebRTC and TensorFlow](https://webrtchacks.com/webrtc-cv-tensorflow/)
* [webrtcH4cKS: ~ Smile, You’re on WebRTC – Using ML Kit for Smile Detection](https://webrtchacks.com/ml-kit-smile-detection/)
* [webrtcH4cKS: ~ AIY Vision Kit Part 1: TensorFlow Computer Vision on a Raspberry Pi Zero](https://webrtchacks.com/aiy-vision-kit-tensorflow-uv4l-webrtc/)
* [webrtcH4cKS: ~ Part 2: Building a AIY Vision Kit Web Server with UV4L](https://webrtchacks.com/aiy-vision-kit-uv4l-web-server/)

# Study Plan
1. [Make Your Own Neural Network](https://www.amazon.com/Make-Your-Own-Neural-Network-ebook/dp/B01EER4Z4G)
1. [Neural Networks and Deep Learning](http://neuralnetworksanddeeplearning.com/)
1. [Comparing Top Deep Learning Frameworks: Deeplearning4j, PyTorch, TensorFlow, Caffe, Keras, MxNet, Gluon & CNTK](https://deeplearning4j.org/compare-dl4j-tensorflow-pytorch#comparing-top-deep-learning-frameworks-deeplearning4j-pytorch-tensorflow-caffe-keras-mxnet-gluon--cntk)
1. [Keras vs. TensorFlow – Which one is better and which one should I learn?](https://www.pyimagesearch.com/2018/10/08/keras-vs-tensorflow-which-one-is-better-and-which-one-should-i-learn/)
1. [Getting Started with TensorFlow: A Machine Learning Tutorial](https://www.toptal.com/machine-learning/tensorflow-machine-learning-tutorial)
1. [From Solving Equations to Deep Learning: A TensorFlow Python Tutorial](https://www.toptal.com/machine-learning/tensorflow-python-tutorial)
1. [What is the TensorFlow machine intelligence platform?](https://opensource.com/article/17/11/intro-tensorflow)
1. [TensorFlow Workshops](https://github.com/tensorflow/workshops)



################################################################################
Synthetic Sensor - http://www.gierad.com/projects/supersensor/
·         Roughly 30 percent of neurons in the brain's cortex are devoted to vision, compared with 8 percent for touch, and 2 percent for hearing - http://channel.nationalgeographic.com/brain-games/articles/brain-games-watch-this-perception-facts/
·         Vision Is Our Dominant Sense - https://www.brainline.org/article/vision-our-dominant-sense

There was overwhelming interest for the Movidius Neural Compute Stick (see attachment) when it first came out and the first production batch was sold out in the first few days. Late October, a new batch hit the market and I purchased one.

Why?  We had significant performance limitations on the MassMutual people counting FastTrack implementation.  Could we get better results with a different algorithm, pre-trained people classifier using TensorFlow.  Seems counter intuitive but this attached processor claims otherwise.  I hope to find out.

Same technology being used in Google’s AWS DeepLens and AIY Vision Kit

Movidius Vision Processoring Unit (VPU)
################################################################################

* [Leigh Johnson’s Guide To Machine Vision On Raspberry Pi](https://hackaday.com/2019/03/01/leigh-johnsons-guide-to-machine-vision-on-raspberry-pi/)


![brain](https://cdn-images-1.medium.com/max/1000/1*HXC8_0UdFoyJB8EjKywsPg.png)
A [Vision Processing Unit (VPU)][12] is an emerging class of microprocessor,
specifically designed to accelerate machine vision tasks.
VPUs are distinct from video processing units (aka [Graphics Processing Unit or GPU][05])
(which are specialised for [video encoding and decoding][02])
in their suitability for running [machine vision][03] algorithms such as
CNN (convolutional neural networks),
SIFT (Scale-invariant feature transform), etc.
They are distinct from GPUs,
which contain specialised hardware for [rasterization][01] and [texture mapping][04] (for 3D graphics),
and whose memory architecture is optimised for manipulating bitmap images in off-chip memory
(reading textures, and modifying frame buffers, with random access patterns).

The Neural Compute Stick (NCS) lets developers bring trained neural networks
built on the Caffe framework to embedded apps running on a variety of Myriad 2 VPU-based devices.
These could include robots, as well as smart home, surveillance, and security devices.

The $79 stick plugs into the Pi via USB, and accelerates vision recognition tasks using the 12 specialized cores in its Myriad 2 Vision Processing Unit (VPU). The low-power processor is capable of 100 gigaflops and consumes a single watt, although the power draw for the stick may occasionally rise to 2.5W.

It’s a Movidius Neural Compute Stick that’s designed for low-powered Deep Learning applications.
[Google Clips][13] hands-free camera uses Movidius chip inside.
The specs are that it’s capable of 100 Gigaflops of capability with 1W power consumption.
This is a USB 3.0 compatible stick
(don’t try it on USB 2.0, it won’t work!)
that is meant only for inference.
This is a specialized Deep Learning ASIC that that’s designed for convolution networks.
Unlike the workhorse of Deep Learning (i.e. GPUs),
this device is designed for mobile and IoT workloads.
It is meant to be paired up with another system to perform Deep Learning training.
The The Movidius stick has a set of enhanced imaging/vision accelerators,
12 specialized vector VLIW processors called SHAVEs, and two RISC processors.
The device supports 8/16/32 bit integer and 16/32 bit floating point arithmetic.

Movidius Neural Compute SDK currently supports two Deep Learning frameworks:

* [Caffe][07] - a deep learning framework from Berkeley Vision Labs
* [TensorFlow][06] - a deep learning framework from Google
    * [TensorFlow Lite](https://hackaday.com/2017/11/23/smarter-phones-in-your-hacks-with-tensorflow-lite/)

What about other Deep Learning frameworks like
[PyTorch](http://pytorch.org/),
[Theano](http://deeplearning.net/software/theano/)
Deeplearning4j,
Keras,
[MxNet](https://mxnet.incubator.apache.org/),
Gluon, and
CNTK?
There are few neural network frameworks comparisons on the web
([here](https://deeplearning4j.org/compare-dl4j-tensorflow-pytorch))

There is an active user forum for the Neural Compute Stick at
[`https://ncsforum.movidius.com`](https://ncsforum.movidius.com)
where you can get help troubleshooting an issue or coding examples.
The forum is also monitored by Movidius engineers which provide solutions as well.
There is also a Github repository at
[`http://github.com/Movidius/ncappzoo`](http://github.com/Movidius/ncappzoo)
which is designed for developers to contribute networks
and applications written for the Neural Compute Stick to the NCS community.

* [Movidius Developer Site](https://developer.movidius.com/)
* [Movidius™ NC SDK 1.07.07 (with Raspberry Pi support)](https://ncsforum.movidius.com/discussion/118/movidius-nc-sdk-1-07-07-with-raspberry-pi-support)
* [AI on Raspberry Pi with the Intel Neural Compute Stick](https://hackaday.com/2019/01/31/ai-on-raspberry-pi-with-the-intel-neural-compute-stick/)
* [Movidius Neural Compute Stick: Getting Started Guide](https://ncsforum.movidius.com/uploads/editor/0j/ln0nd3psmp6q.pdf)
* [Getting started with the Intel Movidius Neural Compute Stick](https://www.pyimagesearch.com/2018/02/12/getting-started-with-the-intel-movidius-neural-compute-stick/)
* [Getting Started with Neural Compute Stick and Rasbperry Pi 3](https://www.youtube.com/watch?v=f39NFuZAj6s)
* [OpenCV Vehicle Detection, Tracking, and Speed Estimation](https://www.pyimagesearch.com/2019/12/02/opencv-vehicle-detection-tracking-and-speed-estimation/)


* [TensorFlow Object Detection API tutorial — Training and Evaluating Custom Object Detector](https://becominghuman.ai/tensorflow-object-detection-api-tutorial-training-and-evaluating-custom-object-detector-ed2594afcf73)
* [Understanding SSD MultiBox — Real-Time Object Detection In Deep Learning](https://towardsdatascience.com/understanding-ssd-multibox-real-time-object-detection-in-deep-learning-495ef744fab)


* [AMD Vega training for Movidius Neural Compute Stick](https://medium.com/intuitionmachine/using-amds-vega-to-train-movidius-neural-compute-stick-9d19fef42c9)
* [Neural Compute Stick: Object Detection with Neural Networks](https://blog.codecentric.de/en/2017/10/object-detection-neural-compute-stick/)
* [Image classifier using Intel Movidius Neural Compute Stick with Raspberry Pi and (Pi Camera or USB Web Camera)](https://github.com/ibrahimsoliman97/Intel-Movidius-NCS-RPI)
* [Raspberry Pi Image Recognition System With Alexa Voice](https://www.geeky-gadgets.com/raspberry-pi-image-recognition-31-05-2018/)
* [How Pytorch gives the big picture with deep learning](https://medium.freecodecamp.org/how-pytoch-gives-the-big-picture-with-deep-learning-e4a0f372f4b6)

* [Google announces Movidius-powered AIY Vision Kit](http://www.bit-tech.net/news/tech/peripherals/google-announces-movidius-powered-aiy-vision-kit/1/)
* [How to give your Raspberry Pi 'state-of-the art computer vision' using Intel's Neural Compute Stick](https://www.techrepublic.com/article/how-to-give-your-raspberry-pi-state-of-the-art-computer-vision-using-intels-neural-compute-stick/)
* [OpenVINO, OpenCV, and Movidius NCS on the Raspberry Pi](https://www.pyimagesearch.com/2019/04/08/openvino-opencv-and-movidius-ncs-on-the-raspberry-pi/)



################################################################################
Guidance on implementation:
* [MobileNets on Intel® Movidius™ Neural Compute Stick and Raspberry Pi 3](https://software.intel.com/en-us/articles/mobilenets-on-intel-movidius-neural-compute-stick-and-raspberry-pi-3)
* [Getting started with the Intel Movidius Neural Compute Stick](https://www.pyimagesearch.com/2018/02/12/getting-started-with-the-intel-movidius-neural-compute-stick/)
* [Real-time object detection on the Raspberry Pi with the Movidius NCS](https://www.pyimagesearch.com/2018/02/19/real-time-object-detection-on-the-raspberry-pi-with-the-movidius-ncs/)
* [Movidius™ NC SDK 1.07.07 (with Raspberry Pi support)](https://ncsforum.movidius.com/discussion/118/movidius-nc-sdk-1-07-07-with-raspberry-pi-support)
* [Intel Movidius NCS RPI](https://github.com/ibrahimsoliman97/Intel-Movidius-NCS-RPI)
################################################################################

* [Deep Learning with Movidius NCS and Raspberry Pi3B+ (pt.1) VM and NCSDK setup](https://www.youtube.com/watch?v=p8o284gBSqo)
* [Deep Learning with Movidius NCS and Raspberry Pi3B+ (pt.2) Compile and Run Caffe Models](https://www.youtube.com/watch?v=Fk43FYLr6Dg)
* [Deep Learning with Movidius NCS and Raspberry Pi3B+ (pt.3) Install and Run on the Pi](https://www.youtube.com/watch?v=joElT3UfspA)
* [Deep Learning with Movidius NCS (pt.4) Installing NCSDK on a Rock64](https://www.youtube.com/watch?v=AXzIYk7-lr8)


* [Raspberry Pi and Movidius NCS Face Recognition](https://www.pyimagesearch.com/2020/01/06/raspberry-pi-and-movidius-ncs-face-recognition/)


# You Only Look Once (YOLO)
* [Gentle guide on how YOLO Object Localization works with Keras (Part 1)](https://hackernoon.com/gentle-guide-on-how-yolo-object-localization-works-with-keras-part-1-aec99277f56f)
* [Gentle guide on how YOLO Object Localization works with Keras (Part 2)](https://heartbeat.fritz.ai/gentle-guide-on-how-yolo-object-localization-works-with-keras-part-2-65fe59ac12d)
* [YOLO Object Detection](https://www.youtube.com/watch?v=4eIBisqx9_g)
    * https://github.com/llSourcell/YOLO_Object_Detection

* [What’s new in YOLO v3?](https://towardsdatascience.com/yolo-v3-object-detection-53fb7d3bfe6b)
* [YOLO for Intel/Movidius Neural Compute Stick (NCS)](https://github.com/gudovskiy/yoloNCS)
* [Real-time object detection with YOLO](http://machinethink.net/blog/object-detection-with-yolo/)
* [IoT Developer Show | Intel® Movidius™ Neural Compute Stick | Intel Software](https://www.youtube.com/watch?v=jMcrbhIa9EA&app=desktop)

* [The YOLOv3 Object Detection Network Is Fast!](https://medium.com/syncedreview/the-yolov3-object-detection-network-is-fast-fcceae0ab650)
* [How to implement a YOLO (v3) object detector from scratch in PyTorch: Part 1](https://blog.paperspace.com/how-to-implement-a-yolo-object-detector-in-pytorch/?utm_source=mybridge&utm_medium=blog&utm_campaign=read_more),
[Part 2](https://blog.paperspace.com/how-to-implement-a-yolo-v3-object-detector-from-scratch-in-pytorch-part-2/),
[Part 3](https://blog.paperspace.com/how-to-implement-a-yolo-v3-object-detector-from-scratch-in-pytorch-part-3/),
[Part 4](https://blog.paperspace.com/how-to-implement-a-yolo-v3-object-detector-from-scratch-in-pytorch-part-4/),
[Part 5](https://blog.paperspace.com/how-to-implement-a-yolo-v3-object-detector-from-scratch-in-pytorch-part-5/)

# Intel OpenVINO
Intel has acquired four companies to go after the AI market:
Nervana, Movidius, MobileEye, and Altera.
Intel has announced a software strategy,
called [Open Visual Inferencing and Neural Network Optimization (OpenVINO)][14]
to unify these offerings for the application developer.

* [Intel OpenVINO: Funny Name, Great Strategy](https://www.forbes.com/sites/moorinsights/2018/05/22/intel-openvino-funny-name-great-strategy/#7d86ae186301)
* [OpenVINO Toolkit Accelerates Computer Vision Development across Intel® Platforms](https://software.intel.com/en-us/blogs/2018/05/16/openvino-toolkit-accelerates-cv-development-across-intel-platforms)
* [OpenVINO Toolkit](https://software.intel.com/en-us/openvino-toolkit)

# Step 1: Build Movidius NCS SDK
To quickly get going, check out the [Movidius NCS Quick Start Guide][08].
(**NOTE:** A more complete guide can be found [here][11].)
You find additional documentation [here][09].
First, install the Movidius Neural Compute software developer kit (NCSDK).
This build process will take several minutes and install Python packages,
TensorFlow, Caffe, etc.


```bash
# go to the directory you plan to develop your project
cd ~/src
mkdir movidius
cd movidius

# clone the movidius ncs developer kit
git clone https://github.com/movidius/ncsdk.git

# if already cloned, update with this
git pull origin master

# build the developer kit
cd ncsdk
make install
```

During the install,
the `PYTHONPATH` enviroment variable will be added to your `.bashrc` as required by Caffe.
In my case, it was changed from `/home/jeff/.local/bin`
to `/home/jeff/.local/bin:/opt/movidius/caffe/python`.

Now test the installation by running the built-in examples.
Plug the NCS to your system's USB port
and run these commands on a new terminal window:

```bash
# goto your working directory
cd ~/src/movidius/ncsdk

# build the examples
make examples
```

**NOTE:** If you ever wish to uninstall the SDK, use `make uninstall`.

There are additional examples called the
[Neural Compute Application Zoo (NC App Zoo)][10].
These are examples contributued by the Movidius NCS user community.
You can also install these examples.

```bash
# go to directory for storing examples
cd ~/src/movidius/ncsdk

# clone neural compute application zoo
git clone https://github.com/movidius/ncappzoo.git
```






# Step X: Training Neural Network
The training phase does not utilize the NCS hardware or SDK,
while the subsequent phases of “profiling, tuning and compiling” and “prototyping”
do require the NCS hardware and the accompanying Movidius™ Neural Compute SDK.



[01]:https://en.wikipedia.org/wiki/Rasterisation
[02]:https://en.wikipedia.org/wiki/Video_codec
[03]:https://en.wikipedia.org/wiki/Machine_vision
[04]:https://en.wikipedia.org/wiki/Texture_mapping
[05]:https://en.wikipedia.org/wiki/Graphics_processing_unit
[06]:https://www.tensorflow.org/
[07]:http://caffe.berkeleyvision.org/
[08]:https://developer.movidius.com/start
[09]:https://movidius.github.io/ncsdk/
[10]:https://github.com/movidius/ncappzoo
[11]:https://movidius.github.io/ncsdk/index.html
[12]:https://www.movidius.com/vision-processing-units
[13]:https://techcrunch.com/2018/02/27/google-clips-review/
[14]:https://software.intel.com/en-us/openvino-toolkit
[15]:
[16]:
[17]:
[18]:
[19]:
[20]:
[21]:
[22]:
[23]:
[24]:
[25]:
[26]:
[27]:
[28]:
[29]:
[30]:
[31]:
[32]:
[33]:
[34]:
[35]:
[36]:
[37]:
[38]:
[39]:
[40]:
