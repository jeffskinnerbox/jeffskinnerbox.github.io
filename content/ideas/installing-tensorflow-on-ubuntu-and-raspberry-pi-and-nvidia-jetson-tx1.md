
* [TensorFlow for Poets](https://petewarden.com/2016/02/28/tensorflow-for-poets/)
    * https://codelabs.developers.google.com/codelabs/tensorflow-for-poets/#0
* [Train your own image classifier with Inception in TensorFlow](https://research.googleblog.com/2016/03/train-your-own-image-classifier-with.html)
* [TensorFlow on Mobile: Tutorial](https://towardsdatascience.com/tensorflow-on-mobile-tutorial-1-744703297267)

* [Install guide: Raspberry Pi 3 + Raspbian Jessie + OpenCV 3](http://www.pyimagesearch.com/2016/04/18/install-guide-raspberry-pi-3-raspbian-jessie-opencv-3/)
* [OpenCV and Pi Camera Board](https://thinkrpi.wordpress.com/2013/05/22/opencv-and-camera-board-csi/)
* [OpenFace - Free and open source face recognition with deep neural networks](https://cmusatyalab.github.io/openface/)
* [Face Detection Using OpenCV With Raspberry Pi](https://www.hackster.io/deligence-technologies/face-detection-using-opencv-with-raspberry-pi-93a8fe)
* [Face Recognition: Kairos vs Microsoft vs Google vs Amazon vs OpenCV](https://www.kairos.com/blog/face-recognition-kairos-vs-microsoft-vs-google-vs-amazon-vs-opencv)

* [FloydHub is Heroku for Deep Learning](https://www.floydhub.com/)

* [ Artificial Intelligence Radio - Transceiver (AIR-T)](https://www.crowdsupply.com/deepwave-digital/air-t)



# TensorFlow
* [TesnorFlow 2.0](https://hackernoon.com/tensorflow-is-dead-long-live-tensorflow-49d3e975cf04)


* [Building a Real-Time Object Recognition App with Tensorflow and OpenCV](https://towardsdatascience.com/building-a-real-time-object-recognition-app-with-tensorflow-and-opencv-b7a2b4ebdc32)
* [How to train your own Object Detector with TensorFlow’s Object Detector API](https://towardsdatascience.com/how-to-train-your-own-object-detector-with-tensorflows-object-detector-api-bec72ecfe1d9)
* [Naked Tensor](https://hackaday.com/2017/03/14/google-machine-learning-made-simpler/)
* [Machine Learning Crash Course with TensorFlow APIs](https://developers.google.com/machine-learning/crash-course/)

# uTensor, PlaidML, and Edge Computing
* [Why the Future of Machine Learning is Tiny](https://petewarden.com/2018/06/11/why-the-future-of-machine-learning-is-tiny/)
* [Why Machine Learning on The Edge?](https://towardsdatascience.com/why-machine-learning-on-the-edge-92fac32105e6)

* [AI on Microcontrollers uTensor brings Deep-Learning to MCUs](https://www.youtube.com/watch?v=PBzbs4HoqHs)
* [Simple Neural Network on MCUs](http://www.iotexpert.it/2019/02/10/simple-neural-network-on-mcus/)
* [Simple Neural Network on MCUs](https://blog.hackster.io/simple-neural-network-on-mcus-a7cbd3dc108c)

* [PlaidML is a framework for making deep learning work everywhere](https://github.com/plaidml/plaidml)
* [Deep Learning without CUDA](https://informatics.sydney.edu.au/blogs/amdgpu/)
* [Tensor Compilers: Comparing PlaidML, Tensor Comprehensions, and TVM](https://hk.saowen.com/a/f043773450ca86e46acf0ba6e6e38da45e575ddd362bbc4bc49e06eef06bdd90)

# TensorBoard
[TensorBoard][01] helps you visualizing what is going on within TensorFlow
by make it easier to understand, debug, and optimize TensorFlow programs.

################################################################################
Does the below install TensorFlow and TesorBoard?

* https://www.tensorflow.org/install/
* https://github.com/tensorflow
* https://github.com/tensorflow/tensorboard
* [Tensorboard Explained in 5 Min](https://www.youtube.com/watch?v=3bownM3L5zM&feature=youtu.be)
################################################################################

# Installing TensorFlow on Ubuntu, Raspberry Pi, and the Nvidia Jetson TX1
* http://tflearn.org/
* [Installing Tflearn on Raspberry Pi 3](http://www.instructables.com/id/Installing-Tflearn-on-Raspberry-Pi-3/)
* [Five Steps to TensorFlow on the Raspberry Pi](https://hackaday.com/2018/05/18/five-steps-to-tensorflow-on-the-raspberry-pi/)

## Install TensorFlow on Ubuntu
* [Ubuntu 18.04: Install TensorFlow and Keras for Deep Learning](https://www.pyimagesearch.com/2019/01/30/ubuntu-18-04-install-tensorflow-and-keras-for-deep-learning/)
* [Keras Tutorial: How to get started with Keras, Deep Learning, and Python](https://www.pyimagesearch.com/2018/09/10/keras-tutorial-how-to-get-started-with-keras-deep-learning-and-python/)

TensorFlow is changing rapidlly, and you might want to consider installing it from source code.
If you choose to install TensorFlow via it source code,
the source code build and test tool being used by the TensorFlow project is [Bazel][29].
Bazel, developed and supported by Google,
is an open-source build and test tool similar to [Make][32], [Maven][31], and [Gradle][30].
It uses a human-readable, high-level build language, supports projects in multiple languages,
and builds outputs for multiple platforms.
Building from source also gives you greater control of the features installed.
During the build process, you'll be provided a series of questions, as shown [here][35],
to customize your features.

Instead, I choose to do the install from the Python repository.
While it doesn't provide the same control as building from source,
it is much easier and quicker to install.
The [TensorFlow website][20] provides guidence on how to [install TensorFlow on Ubuntu][21].
I choose the ["native" pip][22] option.

The appropriate URL below depends on the operating system,
Python version, and GPU support.
Find the appropriate value for the URL [here][23].
In my case,
I'll be installing the latest version of TensorFlow under Ubuntu 17.10 without GPU, Python 3.6.3, pip3 9.0.1:

```bash
# make sure you have the development tools
sudo apt-get install python3-pip python3-dev

# install the latest version of tensorflow from github
sudo -H pip3 install --upgrade tf-nightly
```

>**NOTE:** I orginally did the install under Python 3.6.3 using
`sudo -H pip3 install --upgrade https://storage.googleapis.com/tensorflow/linux/cpu/tensorflow-1.4.0-cp36-cp36m-linux_x86_64.whl`
but I happend to get some concerning warning message.
I followed the recommandation [here][02] and used the nightly build of TensorFlow.
Using the nightly build is a bit risky, so I should revert back to a stable version
working under Pyton 3.6.3 once this bug is cleared.
[Alternative][03] was to revert to Python 3.5.x and install TensorFlow with
`sudo -H pip3 install --upgrade https://storage.googleapis.com/tensorflow/linux/cpu/tensorflow-1.4.1-cp35-cp35m-linux_x86_64.whl`.

To uninstall TensorFlow, simple run `sudo -H pip3 uninstall tensorflow`.

You can validate the TensorFlow installation via the following simple Python3 script:

```bash
# first change your version of python
pyenv global 3.5.4
```

```python
import sys
import tensorflow as tf

# print versions used
print("Python Version = %s.%s.%s" % sys.version_info[:3])
print("TensorFlow Version =", tf.__version__)

# do a very basic tensorflow test
hello = tf.constant('Hello, TensorFlow!')
sess = tf.Session()
print(sess.run(hello))
```

I did get the following warning messages, but I believe I should be OK.

```
>>> import tensorflow as tf
2018-01-10 22:19:38.187852: I tensorflow/core/platform/s3/aws_logging.cc:53] Initializing Curl library
/usr/local/lib/python3.6/dist-packages/h5py/__init__.py:34: FutureWarning: Conversion of the second argument of issubdtype from `float` to `np.floating` is deprecated. In future, it will be treated as `np.float64 == np.dtype(float).type`.
  from ._conv import register_converters as _register_converters
>>> hello = tf.constant('Hello, TensorFlow!')
>>> sess = tf.Session()
2018-01-10 22:20:27.140519: I tensorflow/core/platform/cpu_feature_guard.cc:137] Your CPU supports instructions that this TensorFlow binary was not compiled to use: SSE4.1 SSE4.2 AVX
```

## Install TensorFlow on Raspberry Pi
* [Raspberry Pi now officially supports Google's TensorFlow software](https://www.theinquirer.net/inquirer/news/3037047/tensorflow-is-now-officially-supported-by-the-raspberry-pi)

I choose to do the install from the Python repository,
which is a much easier process.
While not the latest and full featured version of TensorFlow,
it does appear to be fairly complete and current.
I found where several Google folks where [cross-compiling TensorFlow for the Raspberry Pi][04]
and loading it up [TensorFlow’s Jenkins continuous integration system][05].
To do the install, download the Python Wheel for TensorFlow as shown below:

```bash
# download the python wheel form TensorFlow’s Jenkins continuous integration system
# Build #86 (Dec 31, 2017 12:03:00 AM) - last successful build for TensorFlow 1.4.0 / Python 3.4.x
curl -O http://ci.tensorflow.org/view/Nightly/job/nightly-pi-python3/86/artifact/output-artifacts/tensorflow-1.4.0-cp34-none-any.whl

# when  running Python 3.5, you can use the 3.4 wheel but need slight change to the file name
# you will see a couple of warnings every time you import tensorflow, but it should work correctly
mv tensorflow-1.4.0-cp34-none-any.whl tensorflow-1.4.0-cp35-none-any.whl

# build and install tensorflow
pip3 install tensorflow-1.4.0-cp35-none-any.whl
```

To test the install, import the TensorFlow and check the version:

```bash
# print version number of tensorflow
 $ python3 -c 'import tensorflow as tf; print(tf.__version__)'
/usr/lib/python3.5/importlib/_bootstrap.py:222: RuntimeWarning: compiletime version 3.4 of module 'tensorflow.python.framework.fast_tensor_util' does not match runtime version 3.5
  return f(*args, **kwds)
/usr/lib/python3.5/importlib/_bootstrap.py:222: RuntimeWarning: builtins.type size changed, may indicate binary incompatibility. Expected 432, got 412
  return f(*args, **kwds)
RuntimeError: module compiled against API version 0xb but this version of numpy is 0xa
1.4.0
```

Note that because we are running Python 3.5 on a Wheel built for Python 3.4,
you will see a couple of warnings every time you `import tensorflow`, but it should work correctly.

Notice that [TensorBoard][06] is also loaded:

```bash
# print tensorflow relate packages
$ pip3 list --format=columns | grep tensorflow
tensorflow             1.4.0
tensorflow-tensorboard 0.1.8
```

## Install TensorFlow on Nvidia Jetson TX1
* [Install TensorFlow on NVIDIA Jetson TX1 Development Kit](http://www.jetsonhacks.com/2016/12/30/install-tensorflow-on-nvidia-jetson-tx1-development-kit/)
* [Install TensorFlow for Python – NVIDIA Jetson TX Dev Kits](http://www.jetsonhacks.com/2017/09/22/install-tensorflow-python-nvidia-jetson-tx-dev-kits/)
* [How to Install GPU Tensorflow from Sources – Ubuntu 14.04](https://alliseesolutions.wordpress.com/2016/07/05/how-to-install-gpu-tensorflow-0-9-from-sources-ubuntu-14-04/)

## Install OpenAI Gym
* [OpenAI Gym - toolkit for developing and comparing reinforcement learning algorithms](https://gym.openai.com/)

## Open Vision Computer (OVC)
* [Open Source Robotics Foundation's robot stereo camera system](https://github.com/osrf/ovc)
* [Etron Stereo Camera - EX8029](https://www.sparkfun.com/products/14726)
* [Open Robotics](https://www.openrobotics.org/)
* https://docs.google.com/presentation/d/1NCimNJTRP6g3ESWhmaqi4t3dOprq7Yvne_JLeCTt3io/edit#slide=id.p

# Let's Robot
Still in the early stages of development,
Let's Robot is a live-streaming telepresence platform for controlling robots
and other devices through the internet.

* [LetsRoborTV](Luminoth: Open Source Image Recognition Toolkit)
* [Open Robot Control Code For Connecting to LetsRobot.tv](https://github.com/runmyrobot/runmyrobot)





[01]:https://www.tensorflow.org/get_started/summaries_and_tensorboard
[02]:https://stackoverflow.com/questions/47225210/tensorflow-install-fails-with-compiletime-version-3-5-of-module-does-not-match
[03]:https://www.tensorflow.org/install/install_linux#python_35
[04]:https://petewarden.com/2017/08/20/cross-compiling-tensorflow-for-the-raspberry-pi/
[05]:http://ci.tensorflow.org/view/Nightly/job/nightly-pi-python3/86/
[06]:https://www.tensorflow.org/get_started/summaries_and_tensorboard
[07]:
[08]:
[09]:
[10]:
[11]:
[12]:
[13]:
[14]:
[15]:
[16]:
[17]:
[18]:
[19]:
[20]:https://www.tensorflow.org/
[21]:https://www.tensorflow.org/install/install_linux
[22]:https://www.tensorflow.org/install/install_linux#InstallingNativePip
[23]:https://www.tensorflow.org/install/install_linux#the_url_of_the_tensorflow_python_package
[24]:
[25]:
[26]:
[27]:
[28]:
[29]:https://www.bazel.build/
[30]:https://gradle.org/
[31]:https://maven.apache.org/what-is-maven.html
[32]:https://www.gnu.org/software/make/
[33]:http://opencv.org
[34]:
[35]:https://www.tensorflow.org/install/install_sources
[36]:
[37]:
[38]:
[39]:
[40]:
