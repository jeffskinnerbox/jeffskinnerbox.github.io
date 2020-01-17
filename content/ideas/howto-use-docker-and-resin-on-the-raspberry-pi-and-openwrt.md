


# What are Containers?
* [Container Basics](https://www.sdxcentral.com/containers/definitions/containers-basics-update/)

* [Containers vs. Virtual Machines (VMs): What’s the Difference?](https://blog.netapp.com/blogs/containers-vs-vms/)
* [How Linux containers have evolved](https://opensource.com/article/17/7/how-linux-containers-evolved?sc_cid=70160000000h0P5AAI)
* [8 best practices for building containerized applications](https://opensource.com/life/16/9/8-best-practices-building-containerized-applications?sc_cid=70160000000QyBpAAK)
 * [Why we need a different container purely for apps - Mark Shuttleworth (Canonical)](https://www.youtube.com/watch?v=0z3yusiCOCk)
* [An Introduction To Snap Packages for Linux](https://www.youtube.com/watch?v=j40tNL3t4gw)

## What is chroot?
A [`chroot`][25]  or "chroot jail" is an operation (orginating with the Unix operating system)
that changes the apparent root directory for the current running process and its children
A program that is run in such a modified environment cannot name
(and therefore normally cannot access) files outside the designated directory tree.
chroot mechanism is used to do things like sandbox untrusted FTP clients or
a chroot environment can be used to create and host a separate virtualized copy of the software system.
See examples of `chroot` use [here][25], [here][26], and [here][27].

## debootstrap
debootstrap - Bootstrap a basic Debian system - http://manpages.ubuntu.com/manpages/trusty/man8/debootstrap.8.html


While creating my my mesh network,
I needed to create several identical mesh device
on the Raspberry Pi / Raspbian and  [GL-MT300N][12] / OpenWRT platforms.
I wanted to simplify the task of both initially establishing the devices and
simplify their subsequent updates.
I'm looking for a container to store the entire runtime environment:
an application, plus all its dependencies, libraries and other binaries,
and configuration files needed to run it, bundled into one package
and easily install them into my hardware devices.

In fact, Linux does support this concept of a container.
Thes containers contain everything required to make a piece of
software run is packaged into isolated containers.
Unlike [Virtual Machine (VM)][23], containers do not bundle a full operating system.
Containers contain only libraries and settings required to make the software work are needed.
This makes for efficient, lightweight, self-contained systems and guarantees
that software will always run the same, regardless of where it’s deployed.

<a href="https://www.docker.com/what-docker">
    <img class="img-rounded" style="margin: 0px 8px; float: left" title="Docker containers wrap up a piece of software in a complete filesystem that contains everything it needs to run: code, runtime, system tools, system libraries – anything you can install on a server. This guarantees that it will always run the same, regardless of the environment it is running in." alt="docker-logo" src="{filename}/images/docker-logo.png" width="400" height="331" />
</a>
[Docker][01] allows you to do just this by
packaging an application, with all of its dependencies,
into a standardized unit for software deployment.
With Docker, you can build any application in any language using any toolchain.
“Dockerized” applications are completely portable and can run anywhere.
A dockerized application contains the application,
its environment, dependencies and even the Operating System.

So with a dockerized application,
you can develop and test the application your
target envornments of Raspberry Pi or OpenWrt.
When it works, you can deploy it to the multiple Raspberry Pi or OpenWrt platforms.
We can do this without any pain or worries about corruption
of the underlying operating system and tools that may already exit on those target devices.
And last but not least, you can easily undo your tryouts.

In addition, there are a bunch of ready-to-use docker-images
already establish for the Raspberry Pi and OpenWRT.
For example, to run dockerized applications on the Raspberry Pi,
you are depending on the base images, which in this case, supports the ARM-architecture.
On this, you can load additiona docker-images,
which may load other applications.

# Linux Containers
<a href="https://linuxcontainers.org/">
    <img class="img-rounded" style="margin: 0px 8px; float: left" title="linuxcontainers.org is the umbrella project behind LXC, LXD, LXCFS and CGManager.  The goal is to offer a distro and vendor neutral environment for the development of Linux container technologies.  Containers which offer an environment as close to possible as the one you'd get from a VM but without the overhead that comes with running a separate kernel and simulating all the hardware." alt="LinuxContainers.org-logo" src="{filename}/images/linuxcontainers-logo.png" width="318" height="293" />
</a>
Linux containers are really about breaking an operating system into two parts:
the kernel and the user space.
Historically, the libraries in the user space supported programs
that interacted with the kernel (`ifconfig`, `sysctl`, etc.)
and user-facing programs such as web servers or databases.
Everything was dumped together in a single filesystem hierarchy.
Users could inspect the `/sbin` or `/lib` directories and see all of the applications
and libraries that support the operating system itself,
or inspect the `/usr/sbin` or `/usr/lib` directory to see all of the user-facing programs and libraries.
The problem with this model you never complete isolation between
operating system programs and business supporting applications.
If an application owner needed to change something, they could break the operating system.
Conversely, if the team in charge of doing security updates needed to change a library,
it could (and often did) break business facing applications.

With image-based containers (such as Docker),
an application owner can package and modify all of the dependencies in
`/sbin`, `/lib`, `/usr/bin`, and `/usr/lib` without worrying about breaking the underlying operating system.
Essentially, using image-based containers cleanly isolates the operating system into two parts,
again, the kernel and the user space.

One of the problems with containers is we package a bunch of
code, binaries, and libraries into a container image.
Once we package the code, we share it with essentially fancy file servers which we call Registry Servers.
Once the code is shared, it is basically anonymous without some form of cryptographic signing.
So container images are signed with digital fingerprint.

Docker is one of several popular container management packages, for example
Google's [Kubernetes][02] and
[Amazon EC2 Container Service][18].
Container technology is not new and been built in to Linux in the form of [LXC][06].
In fact, some Linux distributions have cropped up which have been
designed [specifically for running containers][07].
Some examples
include CoreOS [Rocket][10],
Red Hat's [Project Atomic][09],
Canonical's [Snappy Ubuntu][08].

For additional general informationa about container technology, see these sources:

* [A brief introduction to Linux containers and image signing](https://opensource.com/bus/16/8/introduction-linux-containers-and-image-signing?sc_cid=70160000000lcGQAAY)
* [Stabilizing the world of hot and fast containers](https://opensource.com/business/16/8/inside-look-future-linux-containers?sc_cid=70160000000lcGaAAI)
* [Manage your Linux containers like Google](https://opensource.com/business/16/7/manage-containers?sc_cid=70160000000lcG1AAI)
* [runC: The little container engine that could](https://opensource.com/life/16/8/runc-little-container-engine-could?sc_cid=CAMPAIGN_CODE)
* [Vincent Batts: What is it we want in containers anyways?](https://www.youtube.com/watch?v=wpFrkq5XNFM&feature=youtu.be)

-----

* [How to Use Docker to Cross Compile for Raspberry Pi (and More)](http://hackaday.com/2016/09/01/how-to-use-docker-to-cross-compile-for-raspberry-pi-and-more/)
* [Docker 1.12.1 Released; Brings Huge Improvements for Raspberry Pi Installs](http://www.internetnews.com/blog/skerner/docker-1.12.1-released-bring-huge-improvements-for-raspberry-pi-installs.html)
* [Using Docker on the Raspberry Pi](http://www.instructables.com/id/Using-Docker-on-the-Raspberry-Pi/?ALLSTEPS)
* [Experimenting with Docker on a Raspberry Pi](https://opensource.com/life/15/9/experimenting-docker-raspberry-pi)
* [Docker On A Raspberry Pi](http://blog.xebia.com/docker-on-a-raspberry-pi/)
* [Get Docker up and running on the RaspberryPi (ARMv6) in four steps](https://github.com/umiddelb/armhf/wiki/Get-Docker-up-and-running-on-the-RaspberryPi-(ARMv6)-in-four-steps-(Wheezy))
* [Docker on Raspberry Pi](https://stefanscherer.github.io/docker-on-raspberry-pi/)
* [Using Docker to run Node.js on a Raspberry Pi](https://opensource.com/life/15/9/experimenting-docker-raspberry-pi)
* [Swarm Mode on a Raspberry Pi Cluster](https://blog.docker.com/2016/07/swarm-mode-on-a-raspberry-pi-cluster/)
* [Docker 1.12 RC on the Raspberry Pi: Download Link](https://dzone.com/articles/docker-112-rc-on-the-raspberry-pi-download-link)

* [Craft Kubernetes Workshop](https://github.com/kelseyhightower/craft-kubernetes-workshop)
* [Kubernetes Tutorial - Step by Step Introduction to Basic Concepts](https://auth0.com/blog/kubernetes-tutorial-step-by-step-introduction-to-basic-concepts/)
* [Why Kubernetes is The New Application Server](https://developers.redhat.com/blog/2018/06/28/why-kubernetes-is-the-new-application-server/)
* [The Complete Kubernetes Collection of Tutorials and Tools](https://dzone.com/articles/the-complete-kubernetes-collection-tutorials-and-tools)


* [Getting started with multicontainer on resin.io](https://github.com/resin-io-projects/multicontainer-getting-started)

* [Docker ToolBox](https://www.docker.com/products/docker-toolbox)
* [Run containers through a simple, yet powerful graphical user interface](https://kitematic.com/)

**HypriotOS**
* [Getting started with Docker on your Raspberry Pi · Docker Pirates ARMed with explosive stuff](http://blog.hypriot.com/getting-started-with-docker-on-your-arm-device/)
* [Releasing HypriotOS 1.0.0 "Blackbeard"](http://blog.hypriot.com/post/releasing-HypriotOS-1-0/)
* [Run Docker on a Raspberry Pi 3 with onboard WiFi](http://blog.hypriot.com/post/run-docker-rpi3-with-wifi/)
* [Get your all-in-one Docker playground now: HypriotOS reloaded!](http://blog.hypriot.com/post/get-your-all-in-one-docker-playground-now-hypriotos-reloaded/)
* [Introducing Hypriot Cluster Lab: Docker clustering as easy as it gets](http://blog.hypriot.com/post/introducing-hypriot-cluster-lab-docker-clustering-as-easy-as-it-gets/)
* [How to setup a Docker Swarm cluster with Raspberry Pi's](http://blog.hypriot.com/post/how-to-setup-rpi-docker-swarm/)

* [Install Open vSwitch on Raspberry Pi](https://sdntestbed.wordpress.com/2015/07/03/install-open-vswitch-on-raspberry-pi/)


# Docker
Docker is a very popular software container platform.
Docker is more than just a container but an application that makes
it simple and easy to run application processes in a container,
which are like virtual machines, only more portable, more resource-friendly,
and more dependent on the host operating system.
For a detailed introduction to the different components of a Docker container,
check out ["The Docker Ecosystem: An Introduction to Common Components"][24].

containers are how you **run** your application
images are how your **store** your application
dockerfile tells Docker how to **create** a Docker image for your application

* [Introduction to Docker](https://www.youtube.com/watch?v=Q5POuMHxW-0)
* [Demystifying Docker](https://www.youtube.com/watch?v=q1qEYM_SESI)
* Dockerfile Tutorial by Example: [Part 1 - Basic](https://www.youtube.com/watch?v=6Er8MAvTWlI),
[Part 2 - Build workflow best practices](https://www.youtube.com/watch?v=ZcMr4G5DH7c),
[Part 3 - Creating a docker PHP Slim](https://www.youtube.com/watch?v=mbmVyXIaY80)
* [Creating your first Dockerfile, image and container](https://www.youtube.com/watch?v=hnxI-K10auY)
* Building a Microservice using Node js & Docker: [Part 1](https://www.youtube.com/watch?v=UWARTLO7TNQ),
[Part 2](https://www.youtube.com/watch?v=wLsiH134Qak)


* [Docker for App Dev](https://www.youtube.com/watch?v=tfOqLM9HjRg&list=PL6aLoEodmDP-SwkMXsLPnD2soWE7_2fwl)
* [Docker run vs exec: reference and key differences](https://medium.com/the-code-review/docker-run-vs-exec-deep-dive-into-their-differences-19a1041735a3)
* [Top 10 options for docker run — a quick reference guide for the CLI command](https://medium.com/the-code-review/top-10-docker-run-command-options-you-cant-live-without-a-reference-d256834e86c1)

## Moby
* https://mobyproject.org/#moby-and-docker

## Docker Swarm

## Get Started with Docker Engine
Docker's documentation contains a good [introduction installing and using the Docker Engine][11].

* [Docker Overview](https://docs.docker.com/engine/docker-overview/)

## Docker Hub
The [Docker Hub][03] is a cloud-based registry service for
building and distributing your docker-images.
It provides a centralized resource for docker image discovery,
distribution and change management, user and team collaboration,
and workflow automation.
You can get an overview of Docker Hub [here][04]
on [Docker's documentation site][05].

## Docker on Ubuntu

* [How to Install and Use Docker on Ubuntu 18.04](https://www.digitalocean.com/community/tutorials/how-to-install-and-use-docker-on-ubuntu-18-04)
* [Hands-On Docker released](https://blog.alexellis.io/handsondocker/)

### Step 1: Install Docker on Ubuntu

* [Install Docker for Ubuntu (16.04)](https://www.youtube.com/watch?v=wPmvN7KcOlI&index=3&list=PL6aLoEodmDP-SwkMXsLPnD2soWE7_2fwl)
* [How To Install and Use Docker on Ubuntu 16.04](https://www.digitalocean.com/community/tutorials/how-to-install-and-use-docker-on-ubuntu-16-04)

### Step X: Building a Dockerfile

* [Creating your first Dockerfile, image and container](https://www.youtube.com/watch?v=hnxI-K10auY&index=7&list=PL6aLoEodmDP-SwkMXsLPnD2soWE7_2fwl)
* Dockerfile Tutorial by Example: [Part 1 - Basic](https://www.youtube.com/watch?v=6Er8MAvTWlI),
[Part 2 - Build workflow best practices](https://www.youtube.com/watch?v=ZcMr4G5DH7c),
[Part 3 - Creating a docker PHP Slim](https://www.youtube.com/watch?v=mbmVyXIaY80)
* [Creating your first Dockerfile, image and container](https://www.youtube.com/watch?v=hnxI-K10auY)





# Embedded Device Containers

## Docker on OpenWrt
* [Docker OpenWRT Image](https://wiki.openwrt.org/doc/howto/docker_openwrt_image)
* [Building OpenWRT With Docker](https://noah.meyerhans.us/blog/2015/03/19/building-openwrt-with-docker/)
* [Run docker on raspberry pi and openwrt](https://zhihuicao.wordpress.com/2015/10/17/run-docker-on-raspberry-pi-and-openwrt/)

## Docker on Raspberry Pi
You can now install the Docker client on your Raspberry Pi with just one terminal command:

```bash
curl -sSL https://get.docker.com | sh
```

* [Get Started with Docker on Raspberry Pi](https://blog.alexellis.io/getting-started-with-docker-on-raspberry-pi/)
* [5 things about Docker on Raspberry Pi](https://blog.alexellis.io/5-things-docker-rpi/)
* [Getting started with Docker on your Raspberry Pi](https://blog.hypriot.com/getting-started-with-docker-on-your-arm-device/)

* [Hands-on Docker for Raspberry Pi](https://blog.alexellis.io/hands-on-docker-raspberrypi/)

## HypriotOS
Prior to 2015, Docker was not easily available for ARM-based devices
but the folks at [Hypriot][13] have made [Docker on the RPi][14] easy.
Hypriot built and released their own OS image, HypriotOS,
to run the Docker Engine on th RPi.
They support most of the Docker tools besides the Docker Engine,
including of [Docker Compose][15], [Docker Swarm][16], and [Docker Machine][17].
A user can download this pre-compiled Raspbian based SD Card image,
which includes a Linux kernel with all Docker related kernel options included.
Just download, extract, flash to a SD Card, and boot your Raspberry Pi.
Within minutes you have Docker up and running and you can instantly start using it.

## Resin.io
In a nut shell,
Resin.io/ResinOS alows you to run Docker containers on embedded devices.

* **Application** is a group of devices or "fleet" that will all run the same application code.
When you provision a device, it will automatically be associated to the application.
You can add as many devices to an application as you like,
its also possible to migrate devices to other applications.
* **Resin Remote** is a remote git repository that is associated to your application.
Any code pushed to the master branch of this repo will be built
and deployed as a container on all devices in the application.
* **Container** is a Docker container that is essentially
a bundle of your application code and all its dependencies.
It runs as an isolated process in userspace on the resinOS host.
* **resinOS** is a simple operating system that brings standard Docker containers
to embedded devices and works on a wide variety of device types and architectures.
* Resin Application
* **Resin Supervisor** is resin.io's agent that runs on devices. Its main role is to ensure your app is running, and keep communications with the Resin API server. - https://docs.resin.io/runtime/supervisor-api/
* **Local Mode** is the new experimental development mode for resin.io.
It allows you to build and sync code to a single development device in your local network
without having to go through the whole git push, build, deployment pipeline.
It uses the docker daemon on the device to do the builds. - https://docs.resin.io/development/local-mode/
and starts the container up in very much the same way as the resin-supervisor would.
* **edge-node-manager** provides an API that allows the user
to set the target status of the main process.
This is useful to free up the on-board radios
allowing user code to interact directly with the dependent devices e.g. to collect sensor data.
* **Dockerfile.template** is basically a recipe file on how to build and run our application container.
* **Yocto** is an open source project that provides templates, tools, and methods
to help you create custom Linux-based systems for embedded products regardless of the hardware architecture - https://www.yoctoproject.org/

* [Getting started with resin.io](https://www.youtube.com/watch?v=zQVnHCcwzrE)
* Using resin.io [Part 1](https://www.youtube.com/watch?v=8zXWn4RNgJc), [Part 2]()
* [Introducing resinOS: An Operating System Tailored for Containers and Built for the Embedded World](https://www.youtube.com/watch?v=5Q_-P1kBS58)
and the [slides from the video](https://www.slideshare.net/resin_io/introducing-resinos-an-operating-system-tailored-for-containers-and-built-for-the-embedded-world)

### Code Deployment
[!how-deploy-works](https://docs.resin.io/img/common/how_deploy_works.jpg)

* [Resin.io](https://resin.io/#)
* [I’m a resin.io fanboy, and you should be too](https://hackernoon.com/im-a-resin-io-fanboy-and-you-should-be-too-2b70e90b0710)
* [The Edge in Action - Check out how Resin.io and Azure IoT can work together](https://dzone.com/articles/the-edge-in-action?edition=306281&utm_source=Zone%20Newsletter&utm_medium=email&utm_campaign=iot%202017-07-18)
* [Take Resin.io for a test-drive](https://blog.alexellis.io/resin-io-test-drive/)
* [Electronjs + Resin.io: The Ultimate Guide](https://dzone.com/articles/electronjs-resinio-the-ultimate-guide)

* [Getting Started Guide](https://docs.resin.io/raspberrypi/nodejs/getting-started/)
* [Getting Started With Raspberry Pi 3 and Node.js](https://docs.resin.io/raspberrypi3/nodejs/getting-started/)

### Step 0:  Sign-up for Resin.io - DONE
If you don't already have a resin.io account, go to the sign-up page,
during the sign up process you will be asked to set up an SSH key so you can securely push code.

1. Sign-up and login with your GitHub account.
1. You need to enter a public SSH key to authenticate.
I used the one on my desktop Linux, located in `~/.ssh/id_rsa.pub`.
I pasted its contents into Resin.io.
1. I gave it a Application Name of "test" and Device Type of "Raspberry Pi3",
and I created a new application.

### Step X: Download and Burn resinOS - DONE
During your device setup, you'll be prompted to download the resinOS image.
You can use the [latest development version of resinOS][19]
but it is likely you want the production version that resides on the [Resin Dashboard][20].

With resinOS downloaded, the next thing to do is burn it to a SD card.
This can be done by several methods, including use Linux `dd`
but resin.io provides a downloadable utility called [Etcher][21]
They also offer a [Etcher CLI][22] which is a command-line tool that provides the benefits
of the desktop Etcher desktop application but runs from a terminal or within a script.
You download this tool from [here][22] and install as follows:

```bash
# extract the command line version of etcher
mv ~/Downloads/Etcher-cli-1.1.2-linux-x64.tar.gz ~/src
cd ~/src
tar fvx Etcher-cli-1.1.2-linux-x64.tar.gz
rm Etcher-cli-1.1.2-linux-x64.tar.gz

# set up  symlink to executable
ln -s ~/src/Etcher-cli-1.1.2-linux-x64/etcher ~/bin/etcher

# help messagw
$ etcher -h
Usage: etcher /snapshot/etcher/dist/Etcher-cli-1.1.2-linux-x64-app/lib/cli/etcher.js [options] <image>

Options:
  --help, -h     show help  [boolean]
  --version, -v  show version number  [boolean]
  --drive, -d    drive  [string]
  --check, -c    validate write  [boolean] [default: true]
  --yes, -y      confirm non-interactively  [boolean]
  --unmount, -u  unmount on success  [boolean] [default: true]
```

Now burn the the resin.io image downloaded earlier to an SD card:

```bash
# burn sd card with resin.io image
$ sudo ~/bin/etcher --drive /dev/sdj ~/Downloads/Raspbian/resin-test-2.2.0+rev1-v6.1.2.img
? This will erase the selected drive. Are you sure? Yes
Flashing [========================] 100% eta 0s
Validating [========================] 100% eta 0s
resin-test-2.2.0+rev1-v6.1.2.img was successfully written to STORAGE DEVICE (/dev/sdj)
Checksum: f8de38eb
```

### Step X: Adding Your Device - DONE
Now you can eject the burnt SD card and insert into the Raspberry Pi 3.
Connect your Raspberry Pi 3 to the Internet, then power it up.
In less than 10 minutes, your device should appear as "online" on the [resin.io dashboard][20].
At this point, the device comment field will say "Factory build" which means it has no code on it yet.

Within the Dashboard, if you select the name of the device,
you'll be take to another screen where you can change the device name
(which I changed to `BlueRPi`), write notes, etc.
At this point, your devices has no code to run, and in fact your can't even login to the Raspberry Pi
via ssh but we can fix that.

### Step X: Provisioning a device using the CLI
https://www.youtube.com/watch?v=xrmnkDqRGjk&list=PLT5WZl9m5WoPEU1tEM01SIlQnG2rNb6D0&index=7

### Step X: Deploy OpenSSH - DONE
This container starts an `openssh` server on port 22.
You can then ssh into the running container using
`ssh root@<YOUR-DEVICE'S-IP>` the default password for `root` is `resin`.

```bash
# go to a directory where you'll store all your resin applications packages
mkdir ~/resin-apps
mkdir ~/resin-apps/test
cd ~/resin-apps/test

# clone the target package
git clone https://github.com/resin-io-projects/resin-openssh.git
cd resin-openssh
```

Now you need add your resin.io `openssh` applications
to your GitHub instance supporting your resin.io application.
Your can find the required command on the [resin.io dashboard][20].

```bash
# add the the package
git remote add resin gh_jeffskinnerbox@git.resin.io:gh_jeffskinnerbox/test.git

# deploy your code to the device
git push resin master
```

Once you see the unicorn, your done.
I then rebooted the device via the resin.io dashboard.
Now you can `ssh` into the Raspberry Pi via (there is no `pi` user):

```bash
# login to the device (default password is resin)
ssh -X root@192.168.1.204
```

### Step X: Deploy Express.js Web Server
https://docs.resin.io/raspberrypi/nodejs/getting-started/#deploying-code

### Step X: Deploy Raspberry Pi 3 Bluetooth
This container will enable the native Bluetooth capabilities of the Raspberry Pi.

https://github.com/resin-io-projects/rpi3-bluetooth

```bash
# go to a directory where you'll store all your resin applications packages
cd ~/resin-apps/test

# clone the target package
git clone https://github.com/resin-io-projects/rpi3-bluetooth.git
```

### Step X: Custom Base Images
https://docs.resin.io/configuration/custom-docker-base-images/

### Step X: Building a Container
[Building ARM containers on any x86 machine, even DockerHub](https://resin.io/blog/building-arm-containers-on-any-x86-machine-even-dockerhub/)



[01]:https://www.docker.com/
[02]:http://kubernetes.io/
[03]:https://hub.docker.com/
[04]:https://docs.docker.com/docker-hub/overview/
[05]:https://docs.docker.com/
[06]:https://linuxcontainers.org/
[07]:http://www.cio.com/article/2918400/data-center/do-you-need-a-container-specific-linux-distribution.html
[08]:https://developer.ubuntu.com/en/snappy/
[09]:http://www.projectatomic.io/
[10]:https://coreos.com/blog/rocket/
[11]:https://docs.docker.com/linux/
[12]:http://www.gl-inet.com/mt300n/
[13]:http://blog.hypriot.com/
[14]:http://blog.hypriot.com/post/get-your-all-in-one-docker-playground-now-hypriotos-reloaded/
[15]:https://docs.docker.com/compose/
[16]:https://docs.docker.com/swarm/
[17]:https://docs.docker.com/machine/
[18]:https://aws.amazon.com/ecs/
[19]:https://resinos.io
[20]:https://dashboard.resin.io/
[21]:https://etcher.io/
[22]:https://etcher.io/cli/
[23]:https://en.wikipedia.org/wiki/Virtual_machine
[24]:https://www.digitalocean.com/community/tutorials/the-docker-ecosystem-an-introduction-to-common-components
[25]:https://www.howtogeek.com/441534/how-to-use-the-chroot-command-on-linux/
[26]:https://www.geeksforgeeks.org/chroot-command-in-linux-with-examples/
[27]:https://www.cyberciti.biz/faq/unix-linux-chroot-command-examples-usage-syntax/
[28]:
[29]:
[30]:
