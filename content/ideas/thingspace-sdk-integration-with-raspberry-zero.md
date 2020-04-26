

* [Raspberry Pi Cellular IoT HAT – LTE-M & NB-IoT & eGPRS](https://sixfab.com/product/raspberry-pi-lte-m-nb-iot-egprs-cellular-hat)


Within [Verizon Thingspace Resources][01]
you'll find [instructions for a Raspberry Pi Ethernet/WiFi Development Kit][02].
This give you the ability to create a Thingspace device,
with diagnostics and security credentialing,
for non-cellular devices.

# Background

## Thingspace Device Registration
The International Mobile Equipment Identity (IMEI)
is a 15 to 17-digit code that uniquely identifies mobile phone sets.
The IMEI code can enable a GSM (Global System for Mobile communication) or UMTS (Universal Mobile Telecommunications Service) network to prevent a misplaced or stolen device from initiating calls.

---

# Step 1: Downloading the SDK - DONE
Check the README instructions within
`https://github.com/verizonlabs/ts_sdk_c` and then clone the Thingspace SDK repository:

```bash
# clone the repository
cd ~/src
git clone https://github.com/verizonlabs/ts_sdk_c.git Thingspace_SDK
```

Once you've cloned the repository,
you will also need to update its submodules

```bash
# down load additional files
# you will be asked for your GitHub username and password multiple times
# you can also setup your git environment with your login information
./scripts/get_submodules.sh
```

# Step X: Identify Your Raspberry Pi MAC Address - DONE
To determine the MAC address of your Raspberry Pi,
run the following in a terminal window:

```bash
# find the interface names on your raspberry pi
$ ls /sys/class/net/
lo  wlan0

# I'll be using the wifi interface wlan0; get the mac address for wlan0
$ cat /sys/class/net/wlan0/address
74:da:38:6c:d7:aa
```

For proper formatting of the MAC Address registering your device on Thingspace,
remove the “:” and make all characters capitals.
Therefore, `74:da:38:6c:d7:aa` will become `74DA386CD7AA` when entered into Thingspace.

>**NOTE:** The MAC address is part of the Network Interface Controller,
which for this project the WiFi USB adaptor.
So the MAC address is on the physical adaptor.
Therefore, if you swap out the WiFi adaptor for another one,
the MAC address will change, breaking you devices binding to Thingspace.
You could fix this by [changing the device MAC address][12] or updating Thingspace.

Next several steps will involve registering
the Raspberry Pi device on to Thingspace portal using the above MAC address.
The [Thingspace Guides][04] section (specifically [Thingspace Portal User Guide][07])
provides information on how to active both your Thingspace account and the device.
The [Thingspace Device Management Portal: Developer Guide][05]
takes you through the steps of getting you device working with Thingspace.

## Step X: Create an Account - DONE
Go to the [Thingspace developer site][10] (aka https://core.thingspace.verizon.com/)
and create an account via the Sign In/Register button at the top right.

## Step X: Add a Device to Account - DONE
The procedures for adding a device to Thingspace is document [here][13].
I'll be following those procedures below.

1. Login into the site and click on the "[Devices][11]" button at the top of the site.
1. This brings you to a screen titled "Manage Devices"
and click on the button "[Mange Devices"][03] mid-page on the left.
1. Now click on "[Thingspace SDK Devices][03]" on the left,
then click on the green "Add Device" button,
and select "NON TS-SDK" and "Single Device" on the pop-up screen.
1. Using the pulldown menu under "Device ID Type", select "MAC Address".
1. Provide a "Device ID" (I used the MAC Address found earlier, `74DA386CD7AA`),
a "Name" (I used "Zero02" the host name of the Raspberry Pi)
1. Provide a "Description" (I used "Raspberry Pi Zero - version 1 with no WiFi and no BLE").
1. Select a "Device Model" from the pulldown menu.
I selected `ts.device.sdk.packageTracker.legacy`
and then selected the red "Add" button at the bottom.

With this, a page popped up showing the device details,
including a UID of `84715c37-e2eb-60e3-edc7-53ba65780978`.
This identifier will be used later.

> **NOTE:** In the above procedures, you check the "NON TS-SDK" box
if you are adding a development kit, as we are.
You will check the "TS-SDK" box if you are adding a production device,
which must be pre-registered with Thingspace.

## Step X: Obtaining Security Certificates - DONE
Certificates are required to establish a secure connection
between the Raspberry Pi client and the Thingspace server.

1. You get certificates from Thingspace by selecting the red "Request" button on the right.
1. Select a 2048 bit certificate and select "Request Certificate".
1. After some processing, you can download three files
(device certificate, device private key, server CA certificate).
You'll need to install the certificate on your Raspberry Pi device.
(Since I did the download to my local machine,
1. I used [SSH to move these files][07] to the Raspberry Pi
(ex. `scp ~/Downloads/ThingSpace/74DA386CD7AA.cert.pem pi@zero02:/home/pi/src/Thingspace_SDK`).

## Step X: Assigning Certificates to Applications - DONE
Next we are going to associate the certificates with the sample application
provided with the SDK (i.e. `~/src/Thingspace_SDK/examples/`).
We do this via a script provide with the SDK:

```bash
# assoicate the certificates with the sample application
./scripts/include_certs.sh thingspaceserver.pem 74DA386CD7AA.cert.pem 74DA386CD7AA.private.key examples/applications/simple/include/
```

## Step X: Update Applications MAC Address Reference - DONE
Next we need to change the sample application program's
default MAC address to our `74DA386CD7AA`
but first step is to find what the default MAC address is:

```bash
# list the default mac address
$ grep TS_DRIVER_MAX_ID_SIZE examples/platforms/ts_sdk_c_platforms_unix_raspberry-pi3/ts_driver_socket.c | grep "sock->_driver"
	snprintf((char *) ( sock->_driver._spec_id ), TS_DRIVER_MAX_ID_SIZE, "%s", "B827EBA15910" );

# replace default mac address with yours
sed -i 's/B827EBA15910/74DA386CD7AA/' examples/platforms/ts_sdk_c_platforms_unix_raspberry-pi3/ts_driver_socket.c
```

## Step X: Build the Applications - DONE
Next we'll compile the applications in
`~/src/Thingspace_SDK/examples/applications` folder
and create binary application file in folder
`~/src/Thingspace_SDK/cmake-build-debug/examples/applications` folder.
We'll be using `cmake` to create the `makefile`.
`cmake` will take the following parameters:

* Create executable for release or debugging: `-B [./cmake-build-debug | ./cmake-build-release]`
* Create executable for release or debugging: `-DCMAKE_BUILD_TYPE = [Debug | Release (default)]`
* Create example application or not:  `-DBUILD_EXAMPLES = [ON | OFF (default)]`

More documentation concerning how to build the application can be found within
The GitHub site "[Thingspace IoT Device Toolkit][08]".

```bash
# make sure you have all the required tools and libraries
sudo apt-get --yes install cmake libbsd-dev

# create the makefile
cd ~/src/Thingspace_SDK
cmake . -B./cmake-build-debug -DCMAKE_BUILD_TYPE=Debug -DBUILD_EXAMPLES=ON

# make the application
cd cmake-build-debug
make
```

>**NOTE:** If you change the `cmake` parameters to do a different build,
you will have to move or delete the existing `cmake-build-debug` directory
before running cmake again (or just use a different directory name).


## Step X: Activate Device on Thingspace Portal
We now need to start up the sample application we created, and while its running,
activate the device on Thingspace.

```bash
# change directory to where the sample application resides
cd ~/src/Thingspace_SDK/cmake-build-debug/examples/applications

# run the application
$ ./example_simple
DEBUG : [425906:14:05.515103][main.c:29               ][main        ] : simple: initializing,...
DEBUG : [425906:14:05.519519][main.c:41               ][main        ] : simple: hostname(simpm.thingspace.verizon.com:8883), host(simpm.thingspace.verizon.com), port(8883)
DEBUG : [425906:14:05.525441][main.c:52               ][main        ] : simple: initializing certificates,...
DEBUG : [425906:14:05.621207][main.c:59               ][main        ] : simple: initializing connection,...
DEBUG : [425906:14:05.623490][ts_transport_mqtt.c:234 ][ts_dial     ] : ts_transport_dial: connecting to, 'simpm.thingspace.verizon.com:8883'
DEBUG : [425906:14:08.304346][ts_transport_mqtt.c:240 ][ts_dial     ] : ts_transport_dial: connected to server
DEBUG : [425906:14:08.427479][main.c:67               ][main        ] : simple: initializing callback,...
DEBUG : [425906:14:08.430273][ts_transport_mqtt.c:279 ][ts_listen   ] : ts_transport_listen
DEBUG : [425906:14:08.432207][ts_transport_mqtt.c:298 ][ts_listen   ] : ts_transport_listen: listening to, 'ThingspaceSDK/74DA386CD7AA/TSServerPublishCommand'
DEBUG : [425906:14:08.515154][main.c:75               ][main        ] : simple: entering run-loop,...
DEBUG : [425906:14:08.517913][ts_service.c:107        ][ts_service_tick] : After calling firewall tick, remaining timer budget is 74076
DEBUG : [425906:14:08.520154][ts_transport_mqtt.c:172 ][ts_tick     ] : ts_transport_tick
DEBUG : [425906:14:13.519673][ts_service_ts_json.c:112][ts_enqueue  ] : ts_service_enqueue: sending ({"unitName":"unit-name","unitMacId":"74DA386CD7AA","unitSerialNo":"unit-serial-number","sensor":{"characteristics":[{"characteristicsName":"temperature","currentValue":50.200001}]}}) on (ThingspaceSDK/74DA386CD7AA/UNITOnBoard)
DEBUG : [425906:14:13.694950][ts_service.c:107        ][ts_service_tick] : After calling firewall tick, remaining timer budget is 1
DEBUG : [425906:14:13.697427][ts_transport_mqtt.c:172 ][ts_tick     ] : ts_transport_tick
DEBUG : [425906:14:18.698726][ts_service_ts_json.c:112][ts_enqueue  ] : ts_service_enqueue: sending ({"unitName":"unit-name","unitMacId":"74DA386CD7AA","unitSerialNo":"unit-serial-number","sensor":{"characteristics":[{"characteristicsName":"temperature","currentValue":50.200001}]}}) on (ThingspaceSDK/74DA386CD7AA/UNITOnBoard)
DEBUG : [425906:14:18.815045][ts_service.c:107        ][ts_service_tick] : After calling firewall tick, remaining timer budget is 1
DEBUG : [425906:14:18.818105][ts_transport_mqtt.c:172 ][ts_tick     ] : ts_transport_tick
DEBUG : [425906:14:23.820052][ts_service_ts_json.c:112][ts_enqueue  ] : ts_service_enqueue: sending ({"unitName":"unit-name","unitMacId":"74DA386CD7AA","unitSerialNo":"unit-serial-number","sensor":{"characteristics":[{"characteristicsName":"temperature","currentValue":50.200001}]}}) on (ThingspaceSDK/74DA386CD7AA/UNITOnBoard)
DEBUG : [425906:14:24.043573][ts_service.c:107        ][ts_service_tick] : After calling firewall tick, remaining timer budget is 1
DEBUG : [425906:14:24.045847][ts_transport_mqtt.c:172 ][ts_tick     ] : ts_transport_tick
DEBUG : [425906:14:29.047198][ts_service_ts_json.c:112][ts_enqueue  ] : ts_service_enqueue: sending ({"unitName":"unit-name","unitMacId":"74DA386CD7AA","unitSerialNo":"unit-serial-number","sensor":{"characteristics":[{"characteristicsName":"temperature","currentValue":50.200001}]}}) on (ThingspaceSDK/74DA386CD7AA/UNITOnBoard)
DEBUG : [425906:14:29.123398][ts_service.c:107        ][ts_service_tick] : After calling firewall tick, remaining timer budget is 1
DEBUG : [425906:14:29.125953][ts_transport_mqtt.c:172 ][ts_tick     ] : ts_transport_tick
DEBUG : [425906:14:34.127192][ts_service_ts_json.c:112][ts_enqueue  ] : ts_service_enqueue: sending ({"unitName":"unit-name","unitMacId":"74DA386CD7AA","unitSerialNo":"unit-serial-number","sensor":{"characteristics":[{"characteristicsName":"temperature","currentValue":50.200001}]}}) on (ThingspaceSDK/74DA386CD7AA/UNITOnBoard)
DEBUG : [425906:14:34.277576][ts_service.c:107        ][ts_service_tick] : After calling firewall tick, remaining timer budget is 1
DEBUG : [425906:14:34.279867][ts_transport_mqtt.c:172 ][ts_tick     ] : ts_transport_tick
  .
  .
  .
```

Now we'll activate the device on the Thingspace portal
and the simulated sensor data created by the application
should be received and viewable under Thingspace device history.

1. Go to the device [Configure][03] page.
1. On the "Actions" button, select "Activate Device".
1. Under [Device > Configure > UID (Device Details) > History][09] you'll see temperature data.








[01]:https://core.thingspace.verizon.com/portal/ui/resources/guides
[02]:https://core.thingspace.verizon.com/portal/resources/guides/RasPi_ThingspaceIntegration_v2.pdf
[03]:https://core.thingspace.verizon.com/portal/ui/manage/devices/sdk-devices
[04]:https://core.thingspace.verizon.com/portal/ui/resources/guides
[05]:https://core.thingspace.verizon.com/portal/resources/guides/ts-portal
[06]:https://core.thingspace.verizon.com/portal/ui/manage/credentials
[07]:https://core.thingspace.verizon.com/portal/resources/guides/ts-portal
[07]:https://help.ubuntu.com/community/SSH/TransferFiles
[08]:https://github.com/verizonlabs/ts_sdk_c
[09]:https://core.thingspace.verizon.com/portal/ui/manage/devices/sdk-devices/84715c37-e2eb-60e3-edc7-53ba65780978/history
[10]:https://core.thingspace.verizon.com/portal/
[11]:https://core.thingspace.verizon.com/portal/ui/manage/overview
[12]:https://www.howtogeek.com/192173/how-and-why-to-change-your-mac-address-on-windows-linux-and-mac/
[13]:https://core.thingspace.verizon.com/portal/resources/guides/ts-portal
[14]:
[15]:
[16]:
[17]:
[18]:
[19]:
[20]:
