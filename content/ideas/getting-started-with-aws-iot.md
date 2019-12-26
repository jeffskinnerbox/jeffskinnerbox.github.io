# trigBoard
The trigBoard is an IoT project that does one thing -
it pushes you a notification triggered by a digital input.

* [trigBoard Is a Low-Power IoT Platform Designed Around the ESP8266](https://blog.hackster.io/the-trigboard-is-a-low-power-iot-platform-designed-around-the-esp8266-fffa6e267019)
* [TrigBoard Wiki](http://www.kevindarrah.com/wiki/index.php?title=TrigBoard)

###############################################################################

* [The Amazon Dash Button: A Retrospective](https://hackaday.com/2019/08/27/the-amazon-dash-button-a-retrospective/)
* [Amazon Dash Buttons Are Dead, But Here's What You Can Do With Yours](https://www.dailydot.com/debug/amazon-dash-buttons-what-to-do-hacks/)
* [Orphaned Amazon Dash Buttons Ripe For Hacking](https://hackaday.com/2019/08/05/orphaned-amazon-dash-buttons-ripe-for-hacking/)

* [Pre-configured Amazon AWS deep learning AMI with Python](http://www.pyimagesearch.com/2017/09/20/pre-configured-amazon-aws-deep-learning-ami-with-python/)

The Amazon Dash Button is a tiny WiFi-enabled device that’s
a simple button with a logo on the front.
It's IoT implementation for the [Amazon Dash Replenishment (DRS)][17] service.
If you get the Tide-branded version, simply press the button
and a bottle of laundry detergent will show up at your door in a few days.
Get the Huggies-branded version, and a box of diapers will show up.
Its a simple but engenious device that has been subject to tear downs to reveal its secrets
(see [here][18], [here][19]).

Via these tear downs, and examining the [Dash Button setup procedures][20],
people realized was that when you push the button on a configured Dash Button,
it fires up and enables its WiFi transceiver
(the Dash Button is asleep until you push the button),
requests an IP address via DHCP, and, as is required,
sends an [ARP probe][21] to make sure that no other device is using its assigned IP address
before it tries to talk to Amazon to to place your order.
This ARP request includes the [media access control address (MAC address)][22] of the button
(which isn’t printed on or in the device case).
So if you have a [program that watches for ARP probes][23],
you can get its MAC address.
You can now watch for a specific Dash Button being pressed
via watching for WiFi packets with it MAC address.

Others have used the insights gain from tear downs and discovered ways to repurpose these Dash Buttons:

* [Amazon Dash Button Silent Doorbell](https://www.hackster.io/elizabethna/amazon-dash-button-silent-doorbell-ec0956)

* [What Is Amazon Dash? And 6 of the Best Hacks You Should Know](https://www.makeuseof.com/tag/hacks-amazon-dash-buttons/)
* [Easiest Way to “Hack” Amazon Dash Button](https://community.smartthings.com/t/easiest-way-to-hack-amazon-dash-button/98113)
* [Using an Amazon Dash button to control Philips Hue lights](http://joshprewitt.com/2016/03/24/using-an-amazon-dash-button-to-control-philips-hue-lights/)
* [Hack the Amazon Dash button to control a SmartThings switch](https://community.smartthings.com/t/hack-the-amazon-dash-button-to-control-a-smartthings-switch/20427)
* [Amazon Dash hack with Raspberry Pi and Python](https://www.raspberrypi.org/magpi/hack-amazon-dash-button-raspberry-pi/)
* [Dash Hacking: Bare-Metal STM32 Programming - How to disassemble an Amazon Dash button and reprogram its STM32 processor!](https://learn.adafruit.com/dash-hacking-bare-metal-stm32-programming)
* [Hacking Amazon's Dash Button](http://www.networkworld.com/article/2991411/internet-of-things/hacking-amazons-dash-button.html)
* [Hacking the Amazon Dash Button to Record Whatever You Want](http://hackaday.com/2015/08/10/hacking-the-amazon-dash-button-to-record-whatever-you-want/)
* [Amazon Dash Button PWD3D](http://hackaday.com/2015/12/02/amazon-dash-button-pwn3d/)
* [Amazon Dash: Hack It to Run Your Own Code](http://hackaday.com/2015/08/12/amazon-dash-hack-it-to-run-your-own-code/)
* [How to disassemble an Amazon Dash button and reprogram its STM32 processor!](https://learn.adafruit.com/dash-hacking-bare-metal-stm32-programming/overview)
* [Hacking Amazon Dash with Node.js](https://videlais.com/2016/10/13/hacking-amazon-dash-with-node-js/)
* [Make Your Mailman Nervous With a Wifi Enabled Mailbox](http://hackaday.com/2016/04/05/make-your-mailman-nervous-with-a-wifi-enabled-mailbox/)
* [26 Amazon Dash Button Hacks You Probably Didn't Know About](http://www.dashbuttondudes.com/blog/2015/12/11/26-amazon-dash-button-hacks)
* [Custom Amazon Dash Ordering Button](https://github.com/gpwclark/dash-hack)

An so have built connected buttons that functionality has been inspired by the ASW Dash Button:

* [ESP8266 IFTTT Easy Button](https://www.hackster.io/noelportugal/esp8266-ifttt-easy-button-888a87)
* [1btn – an Open Source Dash](http://hackaday.com/2016/04/29/1btn-an-open-source-dash/)
* [SmartButton Pro](https://www.hackster.io/iboboc/smartbutton-pro-06ce5d?ref=newsletter&utm_source=Hackster.io+newsletter&utm_campaign=6fba61c172-2015_4_17_Top_projects4_16_2015&utm_medium=email&utm_term=0_6ff81e3e5b-6fba61c172-140225889)
* [E-mail Button: Connecting Arduino to IFTTT to send emails, tweets, text messages, and more](http://www.instructables.com/id/E-mail-Button-Connecting-Arduino-to-IFTTT-to-send-/)

[!aws-iot-button](https://manofmany.com/wp-content/uploads/2016/06/Amazon_feature-720x500.jpg)
The [AWS IoT Button][01] is a programmable button based on
the Amazon Dash Button hardware.
This device is easy to configure for IoT applications
and designed for developers to get started with AWS IoT, AWS Lambda,
and many other Amazon Web Services without writing device-specific code.
I got my AWS IoT Button the end of July 2016 and it sat around unused for several months.
I finally took the plunge to get up to speed on its use,
and I followed the [AWS IoT getting started tutoral][02] developed by Amazon Web Services (AWS)
and posts like ["How to set up an AWS IoT button"][24].

# Setting Up Your AWS Account
When you sign up for Amazon Web Services (AWS),
your AWS account is automatically signed up for all services in AWS, including AWS IoT.
To get you going, you'll need to [sign up for AWS][25],
[create a user][26] within Identity and Access Management (IAM),
and then setup the [AWS Command Line Interface][27].

## Step 1: Create an AWS Account - DONE
All AWS services are available on demand, pay-as-you-go pricing,
and require no long term contracts and have no complex licensing dependencies.
First you must create an AWS account (assuming you don't have one already).
[AWS has a a Free Tier][04] pricing tier designed to enable
you to get hands-on experience with AWS Cloud Services.
The AWS Free Tier makes available many services for 12 months following your AWS sign-up date
(some service do not automatically expire at the end of your 12 month).
You can find more about [AWS pricing here][05].

To get started with AWS, first check out the [10-Minute tutorials][08].
Also check out the [getting stated documentation][09],
[getting started with AWS IoT][10], and [Self-Paced Labs][11].

## Step 2: Log into the AWS Management Console - DONE
With your account established,
you can navigate to the [AWS Console][07] and login to [AWS Console][03].
The AWS Console is a landing page where you can being to establish and access the whole
set of Amazon AWS Services.

To learn more about the AWS Management Console, check out:

* [Getting Started with AWS](http://docs.aws.amazon.com/gettingstarted/latest/awsgsg-intro/gsg-aws-intro.html)
* [Getting Started with the AWS Management Console.](http://docs.aws.amazon.com/awsconsolehelpdocs/latest/gsg/getting-started.html)

## Step 3: Install AWS Command Line Interface
The [AWS Command Line Interface][12] is a tool to manage your AWS services.
Once this tools is downloaded and configured,
you can control multiple AWS services from the command line and automate them through scripts.
The AWS CLI provides direct access to AWS services' public APIs.
In addition to these low level, API equivalent commands,
the AWS CLI also provides customizations for several services.
Customizations are higher level commands that simplify using a service with a complex API.
Depending on your use case, you may want to use the AWS SDK or toolkit,
to make use of AWS CLI in [Python][13], [JavaScript][14], etc.

To make use of the AWS CLI,
you must install it from its GitHub repository,
or better yet, form its Python pip package as shown below.
First, lets make sure you have the foundation for our tools:

```bash
# update linux
sudo apt-get update
sudo apt-get upgrade

# check the version of Python 3 that is installed
$ python3 -V
Python 3.5.2

# to manage software packages for python 3, let’s install pip
sudo apt-get install -y python3-pip

# to ensure a robust programming environment
sudo apt-get install build-essential libssl-dev libffi-dev python-dev
```

Now we'll setup a virtual environment for our project:

```bash
# install python 3 virtual env tool
sudo apt-get install python3-venv

# enter your working directory
cd ~/src

# create your virtual environment
pyvenv aws-iot-button

# see what has been created
$ ls my_env
bin  include  lib  lib64  pyvenv.cfg  share
```

Together, these files work to make sure that your projects
are isolated from the broader context of your local machine,
so that system files and project files don’t mix.
To use this environment, you need to activate it,
which you can do by typing the following command that calls the activate script:

```bash
# activate your virtual environment
source ~/src/aws-iot-button/bin/activate
```

To leave the environment,
simply type the command `deactivate` and you will return to your original directory.

Now lets install AWS CLI in this virtual environment.
Using the documentation in the GitHub repository for a guide,
you need to do the following:


```bash
# install aws cli tool
pip install awscli

# if aws-cli is installed, upgrade to the latest version
pip install --upgrade awscli
```

>**Note:** Within the virtual environment,
you can use the command python instead of python3,
and pip instead of pip3 if you would prefer.
If you use Python 3 on your machine outside of an environment,
you will need to use the python3 and pip3 commands exclusively.

Before using AWS CLI,
you need to tell it about your AWS credentials.
You can do this in several ways: shell environment variables, shared credentials file,
config file, [AWS IAM Role][15].
The quickest way to get this done is to run the `aws configure` command:

```bash
# tell aws your credentials and configuration settings
$ aws configure
AWS Access Key ID [None]: AKIAJ6OKZU6NUPQUYFIA
AWS Secret Access Key [None]: PkM2jkSWlOc+FXiA2UYoyMLTLuXdG60i1wgN7b5h
Default region name [None]: us-east-1
Default output format [None]: json
```

This is the [more secure approach][16] then storing your credentials file in your local directory.
The `aws configure` command creates an INI formatted in `~/.aws/credentials` and in `~/.aws/config`.
This can enhance security by allowing you to keep the credentials in a location that’s accessible only to you,
and it makes it less likely that you’ll inadvertently upload your credentials site like GitHub.

Some example AWS CLI commands are:

```bash
# list any s3 buckets you may have
aws s3 ls

# list all your users and display the output in a table
$ aws iam list-users --output table
----------------------------------------------------------------------
|                              ListUsers                             |
+--------------------------------------------------------------------+
||                               Users                              ||
|+-------------------+----------------------------------------------+|
||  Arn              |  arn:aws:iam::916447052918:user/jeff.irland  ||
||  CreateDate       |  2016-11-05T01:56:14Z                        ||
||  PasswordLastUsed |  2017-06-10T17:47:10Z                        ||
||  Path             |  /                                           ||
||  UserId           |  AIDAINCSPQW3AYLQ477KE                       ||
||  UserName         |  jeff.irland                                 ||
|+-------------------+----------------------------------------------+|
```

You can find more documention concering the AWS CLI at:

* [AWS Command Line Interface Documentation](https://aws.amazon.com/documentation/cli/)
* [AWS CLI Command Line Referance Guide](http://docs.aws.amazon.com/cli/latest/reference/)
* An Introduction to the AWS Command Line Tool: [Part 1](https://www.linux.com/blog/introduction-aws-command-line-tool)
and [Part 2](https://www.linux.com/blog/introduction-aws-command-line-tool-part-2)
* [Guide to EC2 from the Command Line](https://www.joyofdata.de/blog/guide-to-aws-ec2-on-cli/)
* [Uploading Large Files to Amazon S3 with AWS CLI](https://www.systutorials.com/239665/uploading-large-files-amazon-s3-aws-cli/)
* [How to Handle AWS Through the Command Line](https://www.packtpub.com/books/content/how-to-handle-aws-through-the-command-line)
* [AWS Lambda Walkthrough Command Line Companion](https://alestic.com/2014/11/aws-lambda-cli/)
* [Three time-saving AWS command-line tricks](https://claudiajs.com/tutorials/aws-cli-tricks.html)
* [15 Essential Amazon AWS EC2 CLI Command Examples](http://www.thegeekstuff.com/2016/04/aws-ec2-cli-examples/)

## Step 4: Identity and Access Management (IAM)
When you first set up your AWS account,
you are the root user and were given access keys
(an access key ID and secret access key) to make programmatic requests to AWS.
However, do not use your AWS account (root) access key.
The access key for your AWS account gives full access to all your resources for all AWS services,
including your billing information.
There are a verity of [AWS tasks that require account root user][29].

Don't use your AWS root account credentials to access AWS,
and don't give your credentials to anyone else.
Instead, create individual users for anyone who needs access to your AWS account.

# Working with the AWS IoT Button
AWS IoT Buttons are available for purchase on [Amazon.com][06].

configure the button

* Press and hold the button for five seconds until the LED starts flashing blue.
* Use your phone or computer to connect to the Button ConfigureMe - XXXX WiFi network. Use the last 8 digits of the serial number of your device as the WPA2-PSK password.
* In a browser, navigate to http://192.168.0.1/index.html.
* Select the network (SSID) you want the button to connect to and enter its password.

The button will work wherever there is WiFi (2.4 Ghz).
If it can connect to the Internet, it will work.

The AWS IoT Button message payload contains the device serial number,
the measured battery voltage, and a click type.
The following JSON template shows what is sent in the payload.

```json
{
    "serialNumber": "GXXXXXXXXXXXXXXXXX",
    "batteryVoltage": "mV",
    "clickType": "SINGLE | DOUBLE | LONG"
}
```

A LONG clickType is sent if the first press lasts longer than 1.5 seconds.
SINGLE and DOUBLE clickType payloads are sent for short clicks.
The battery should last for approximately 1,000 presses.
When the device battery runs out of charge, there is no way to recharge or replace the battery.

There is a multi-color LED on the AWS IoT Button to provide status:

| Color          | Status       |
|:--------------:|:------------:|
| Blinking White | Connecting to WiFi, getting IP address, connecting to AWS IoT. |
| Solid Green    | Successfully connected to WiFi and published a message to AWS IoT. |
| Blinking Blue  | Soft AP mode. |
| Solid Orange   | No WiFi configured. |
| Red            | Error. (See the [Troubleshooting Guide](https://aws.amazon.com/iot/button/) for more information.) |



# Simple AWS IoT Application
In essence, [AWS IoT provides cloud services for connected devices][28].
It provides a secure, bi-directional communication
between Internet-connected things (such as sensors, actuators, embedded devices, or smart appliances)
and the AWS cloud to collect data from multiple devices and store / analyze the data.

* [Getting Started With AWS IOT](https://www.hackster.io/leoribg/getting-started-with-aws-iot-fa1f8b?utm_source=hackster&utm_medium=email&utm_campaign=new_projects)
* [AWS Lambda](https://aws.amazon.com/lambda/)
* [Network Monitoring with AWS IoT](https://www.hackster.io/phantom-formula-e97912/network-monitoring-with-aws-iot-b8b57c?utm_source=hackster&utm_medium=email&utm_campaign=new_projects)

# Hacking a Dash Button and Using it on AWS IoT
* [ARP Probing](https://thepacketgeek.com/scapy-p-07-monitoring-arp/)

# Environmental Monitoring with AWS IoT
* [Smart Environmental Monitoring](https://www.hackster.io/alapisco/smart-environmental-monitoring-2552bb?utm_source=hackster&utm_medium=email&utm_campaign=new_projects)
* [AWS Lambda@Edge](http://docs.aws.amazon.com/lambda/latest/dg/lambda-edge.html)

# Why I stopped hacking the Amazon Dash button and learned to solder
* [Why I stopped hacking the Amazon Dash button and learned to solder](https://news.ycombinator.com/item?id=12199058)
* [In case you decide to go with a Dash button anyways, I made it easier](https://github.com/ipartola/amadash)
* [Using an Amazon Dash Button for Emergency Notifications](https://east.fm/posts/using-an-amazon-dash-button-for-emergency-notifications/index.html)



# Create a Device in the Thing Registry
AWS IoT Button Quickstart- http://docs.aws.amazon.com/iot/latest/developerguide/iot-button-lambda.html

# AWS IoT Device SDK
The [AWS IoT Device SDK](https://aws.amazon.com/iot/sdk/)
(C, JavaScript, and Arduino Yún) runs on the device.
The [AWS SDKs](https://aws.amazon.com/tools/) give you access to AWS from your web or mobile app.
[Sample Code & Libraries](https://aws.amazon.com/code/)

# Understanding the AWS IoT Security Model
[Understanding the AWS IoT Security Model](https://aws.amazon.com/blogs/iot/understanding-the-aws-iot-security-model/)

# Create and Activate a Device Certificate

# Create an AWS IoT Policy

# Attach an AWS IoT Policy to a Device Certificate

# Attach a Thing to a Certificate

# Configure Your Device

# View Device MQTT Messages with the AWS IoT MQTT Client

# Configure and Test Rules

# AWS Greengrass
* https://medium.com/iotforall/aws-greengrass-announcement-ca75ce1f7940
* [How to think about AWS Greengrass and the internet of things](https://staceyoniot.com/how-to-think-about-aws-greengrass-and-the-internet-of-things/)
* [Here's what your hardware needs for the AWS Greengrass IoT service](http://www.networkworld.com/article/3146248/cloud-computing/heres-what-your-hardware-needs-for-the-aws-greengrass-iot-service.html)

# IoT for Non-IP Devices
* https://aws.amazon.com/blogs/iot/iot-for-non-ip-devices-2/




[01]:https://aws.amazon.com/iot/button/
[02]:http://docs.aws.amazon.com/iot/latest/developerguide/iot-gs.html
[03]:https://aws.amazon.com/premiumsupport/knowledge-center/sign-in-console/
[04]:https://aws.amazon.com/free/
[05]:https://aws.amazon.com/pricing
[06]:https://www.amazon.com/dp/B01C7WE5WM
[07]:https://console.aws.amazon.com/console
[08]:https://aws.amazon.com/start-now/?sc_ichannel=ha&sc_icampaign=start-now&sc_icontent=2235
[09]:https://aws.amazon.com/documentation/gettingstarted/
[10]:http://docs.aws.amazon.com/iot/latest/developerguide/iot-gs.html
[11]:https://aws.amazon.com/training/self-paced-labs/
[12]:http://docs.aws.amazon.com/cli/latest/userguide/cli-chap-welcome.html
[13]:http://boto3.readthedocs.io/en/latest/
[14]:http://docs.aws.amazon.com/sdk-for-javascript/v2/developer-guide/welcome.html
[15]:http://docs.aws.amazon.com/IAM/latest/UserGuide/id_roles.html
[16]:https://aws.amazon.com/blogs/security/a-new-and-standardized-way-to-manage-credentials-in-the-aws-sdks/
[17]:https://developer.amazon.com/dash-replenishment-service
[18]:https://mpetroff.net/2015/05/amazon-dash-button-teardown/
[19]:https://mpetroff.net/2016/07/new-amazon-dash-button-teardown-jk29lp/
[20]:https://www.amazon.com/gp/help/customer/display.html?tag=networkworld0a-20&nodeId=201746340
[21]:http://www.practicalnetworking.net/series/arp/arp-probe-arp-announcement/
[22]:https://en.wikipedia.org/wiki/MAC_address
[23]:https://thepacketgeek.com/scapy-p-07-monitoring-arp/
[24]:https://www.socialcustomer.com/2016/05/how-to-set-up-an-aws-iot-button.html
[25]:http://docs.aws.amazon.com/lambda/latest/dg/setting-up.html#setting-up-signup
[26]:http://docs.aws.amazon.com/lambda/latest/dg/setting-up.html#setting-up-iam
[27]:https://aws.amazon.com/cli/
[28]:https://aws.amazon.com/blogs/aws/aws-iot-cloud-services-for-connected-devices/?sc_campaign=launch&sc_category=iot&sc_channel=SM&sc_content=reInvent&sc_detail=std&sc_medium=aws&sc_publisher=tw_go&adbsc=social_launches_20151008_53682996&adbid=652168897924235264&adbpl=tw&adbpr=571241517
[29]:http://docs.aws.amazon.com/general/latest/gr/aws_tasks-that-require-root.html
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
