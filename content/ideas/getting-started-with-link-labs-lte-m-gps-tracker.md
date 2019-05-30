
* [NMEA data](http://www.gpsinformation.org/dale/nmea.htm#intro)
* [Python library for parsing the NMEA 0183 protocol (GPS)](https://github.com/Knio/pynmea2)
* [Locating the Hard-to-Find Geospatial Answers](https://www.directionsmag.com/article/7637)

################################################################################
These instructions below are from Glenn Schatz (Link Labs, VP of Business Development)
taken from an eMail sent to Jeff Irland (dated January 17, 2018).

**GPS Tag Procedures**

* The device itself has a mini-USB port for charging and programming
* Please charge the device completely before using. This should take ~1 hr
* To change the settings you need to use Tera Term (https://osdn.net/projects/ttssh2/releases/)
* Connect GPS Tag to computer via USB (UART to USB)
* Open Tera Term and connect via Serial (device will enumerate as a COM port)
    * **Note: You will not see your keystrokes on the terminal in Tera Term**
* Hit Enter to bring up the GPS Tracker Menu
* Hit 2 Enter to get into Device Config Menu
* To change the Transmit interval hit 1 Enter and input the GPS Fix interval in seconds
* Hit 5 Enter to verify settings
* Hit Enter to return to Device Config Menu
* Hit 6 to go back to the Main Menu Hit 4 to Reset Device
    * **Note: Device settings will not be changed until AFTER a reset**
* There are other settings that can be adjusted, but most of these are reserved for future use

**UI Procedure**

* Create a Conductor Account (if you don't already have one): http://docs.link-labs.com/m/72700/l/835334-create-a-conductor-account
* Choose a plan
    * **Note: Current FW uses about 800 network bytes of data per GPS fix. Next FW release lowers this to ~100 bytes.**
* Add an Application Token: http://docs.link-labs.com/m/72700/l/836107-networkassets
* Add an LTE-M Device by IMEI and ICCID under "Devices: LTE-M"
* You should see the device status change from "Ready" to "Active" but you can also verify device status using this API Call: https://networkasset-conductor.link-labs.com/networkAsset/lte/admin/info/IMEI/
    * **Note: A browser with a JSON viewer extension installed is recommended**
    * **Note: The UI status may not accurately reflect the device status if the device has previously been deactivated - we are working to fix this error**
* You can see the data flow on this screen. You can also query the data via API.
    * **Note: All the LTE-M-specific Conductor API calls can be found here: https://networkasset-conductor.link-labs.com/networkAsset/docs.html#!/lte/ **
* Once you have a valid GPS fix, you can use the AirFinder UI. To create an AirFinder account (included with Conductor service), please send me the email address you would like associated with the account if it is different than this shipping email. Your shipping email should have already received an invitation.
* Once in AirFinder Add a "Site Name". This could be as simple as "Test".
* In the Admin portal, Add an Application using the Application Token from Conductor
* Add a Category. This can be anything.
* Then, in the Admin portal, Add a "GPS/WiFiTag" Using the "Node ID" in the "Tag" box. "Category" should be the category you just created. Brand, Model #, and Serial # must be entered, but can be any value.
* Once a GPS Tag is added, click "User" on the top center-right to move to the User portal.
* If you click "Tags", you should see the Category you created, and your tag on the far right. If you click on the Map Pointer, you will see a map popup.
* To see device history, click the stopwatch in the top right corner, select the date window you want to see, and click the stopwatch again.

**Other Notes**

* Expected battery life for the rechargeable 500 mAh battery:
    * 1 TX/day=3 months
    * 1 TX/hr=9 days
    * 1 TX/30 min=4.5 days
    * 1TX /5 min=18 hours
* Current device does not support PSM/eDRX modes due to stability issues in PSM/eDRX modes. Battery life in PSM mode expected to be about 2X current performance. eDRX will vary by timer settings. A firmware update will be made available when these modes are supported.
* If you have any issues, the best most common way to recover is to charge the device completely, verify transmission interval, hit the pin reset next to the two LEDs, and go outside to ensure a good GPS fix.

For additional help, contact Link Labs Support (support@link-labs.com) or Glenn Schatz
(eMail: glenn.schatz@link-labs.com, office: 202-524-1390 x95, mobile: 520-271-5528)
################################################################################

################################################################################
From Ryan Zanski of Link Labs (ryan.zanski@link-labs.com)

When the device is plugged in via USB it will still perform its normal operation. To stop this, or at least slow the rate down, you will need to update the configuration settings of the device. If the LEDs are blinking at a set interval it may just be going through it's normal operation.

The LED behavior is as follows:



Startup/reset-             5 Red LED blinks



Normal Operation- (cycles every X minutes depending on TX/update interval)

                       GPS scan Red LED solid (30s - 4 min)

                       GPS scan done: Yellow flash 2 times Successful GPS

                                                   Yellow flash 1 time GPS scan failed (timeout reached)

                       Both LEDs turn off then LTE-m uplink message TX



Button press- Battery level indicator

                       4 LED blinks = high battery, 3 LED blinks = medium, 2 LED blinks = low, 1 LED blink = empty

                       Battery voltage is provided in the message payload so higher accuracy results can be found using message



Button Hold (3-5s)- Device Reset. Holding for extended period will put into bootloader mode



LEDs in case:

                      Back top right red LED is the charge LED and will only illuminate if USB plugged in and battery charging.

                      Back top left red LED is the Link Labs LTE-m module LED and will illuminate when module is not in sleep mode (RX, TX, processing)
################################################################################

################################################################################
See email dated Mon, Jun 11, 2018 11:14 am from jeffrey.irland (jeffrey.irland@verizon.com)
This contains ifnroamtion about the LEDs and appears to be taken from the documentation.
################################################################################

Reading list:
* [Conductor](http://conductor.link-labs.com/LTE-M)
* [Conductor - Data Platform](http://docs.link-labs.com/m/52182)
* [Conductor - Data Platform: User Guide](http://docs.link-labs.com/m/52182/c/154990)
* [A Python wrapper of the Conductor API - conductor.py](http://docs.link-labs.com/m/52182/l/478374-a-python-wrapper-of-the-conductor-api-conductor-py)
* [Command-line utility to send downlink messages - send_command_client_edge.py](http://docs.link-labs.com/m/52747/l/637873-command-line-utilit

**Link Labs GPS Tracker Device**

GPS Tracker Device is .....

When the device is plugged in for charging via USB,
it will still perform its normal operation.
To stop this, or at least slow the rate down,
you will need to update the configuration settings of the device (discribed in Steps X to X below).
If the LEDs are blinking while charging,
it is just going through it's normal operation.

The GPS Tracker LED on the frount behavior is as follows:

* Startup/reset - LEDs on frount blink 5 time
* Normal Operation - cycles every X minutes depending on TX/update interval
    * GPS scan - LEDs on front are solid 30 sec to 4 min
    * GPS scan successful - LEDs on front flash Yellow 2 times
    * GPS scan failed - LEDs on front flash Yellow 1 times (timeout reached)
    * Both LEDs turn off then LTE-m uplink message TX
* Button Press
    * Battery level indicator
        * High Battery - LEDs blink 4 times
        * Medium Battery - LEDs blink 3 times
        * Low Battery - LEDs blink 2 times
        * Empty Battery - LEDs blink 1 times
        * NOTE - Battery voltage is provided in the message payload so higher accuracy results can be found using message
    * Button Hold (3-5 sec)- Device Reset
    * Holding for extended period will put into bootloader mode

The GPS Tracker LED in the case behave like this:
    * Back top right red LED is the charge LED and will only illuminate if USB plugged in and battery charging.
    * Back top left red LED is the Link Labs LTE-m module LED and will illuminate when module is not in sleep mode (RX, TX, processing)

**Cloud Platform**

**Users and Credentials**

[Conductor][50] exposes REST-APIs giving access to your device,
making it easy to build web-based applications to monitor and control the device.
Your first step is to [create an account][51] via Conductor's web-based
user interface (UI) at http://conductor.link-labs.com/ .
Associated with an account is a [access control method][52] (aka Security Domain Model)
defining the roles of accounts, user, acounts, user groups, etc.

**Network Assets**

[Network Assets][53] are separated into distinct groups by Conductor.
Conductor identifies groups of modules and groups of gateways using a token scheme.
The system relies on two types of tokens: Application Tokens and Network Tokens.
The Network Assets are defined as:

* A **module** is associated with one **Application Token**,
which is assigned to it by its user.
Users can generate Application Tokens within their Conductor accounts by using the Conductor UI.
Application Tokens can also be generated via the REST API by users with proper granted authorities.
* Every **gateway** is registered to one Conductor account and is associated with one **Network Token**.
The Tracker is its own gateway ... I think?
* An **Application Token** is an 80-bit unique identifier, used to identify a class of modules.
Application Tokens provide users a method to segregate data-flows logically.
The intent is for all modules supporting a specific task/function to use the same Application Token.
* A **Network Token** is a 32-bit unique identifier, used to separate distinct networks.
With the exception of the default token assigned to all factory-fresh gateways and modules
(aka OPEN Network Token), Network Tokens are generated within a Conductor account using the Conductor UI.
* An **AssetGroup** is a logical grouping of Network Assets.
AssetGroups provide a method to separate data-flows beyond
the capabilities afforded by Network and Application Tokens.

**Alerts and Notifications**

The [Alerts and Notifications][54] allows a user to set conditions that
alert the user via e-mail or SMS when triggered by an action.

**Authentication**

You don't communicate directly with the GPS Tracker but through Conductor,
after [Conductor performs authentication][55].
Conductor requires you to authenticate yourself via providing credentials,
along with a request to Conductor.
Conductor then determines whether the request is authorized.

Requests made to conductor, via its REST-APIs, has a wide range of responses.
A full listing of those responses are provided in the [Network API Swagger Documentation][56].

* If Conductor determines the credentials are valid and the provided authorities are adequate, a 2xx response code is returned. The calling client may handle the response accordingly.
* Else if Conductor determines the credentials are valid but authorities are inadequate, a 403 response code is returned.
* Else Conductor determines the credentials are invalid and a 401 response code is returned.

**Address Model**

An [Address][57] is the unique identity associated with every Node
(i.e., modules, gateways and repeaters) within Conductor.
An Address may also refer to the unique identity of a specific Link between a pair of Nodes.
Addresses are:

* used to identify a Node specific data item when retrieved from Conductor
* provided to Conductor for the purpose of querying/filtering operations on a Node
* provided to Conductor to specify the target of a downlink operation, like send a command to a specific Node

A [Node Address][58] is a globally unique address,
which consists of a [Node Type][59] and a [Node ID][60], together.
Node Types are 16-bit big endian integers,
which are hard-coded into Conductor and used identify various types of nodes.
For example, the Node Type of my GPS Tracker is the hex value `0x0303` and formatted as `$303$`.
A Node ID is a unique identifier for a specific Node within the scope of the Node Type.
The size of a Node ID can be 32-bit to 128-bit big endian integer,
depending on the Node Type.
For example, the Node ID of my GPS Tracker is `00000000-00000000-0001450-2bf65e93d`
or equivalently `0-0-0001450-2bf65e93d`.
Therefore, the [Node Address is a concatenation][61] of the Node Type and Node ID.
For example, the Node Address of my GPS Tracker is `$303$0-0-0001450-2bf65e93d`.

A [Link Type][62] is a 16-bit big endian integer used to identify the type of link between two Nodes.
A [Link Address][63] represents a Link between a pair of Nodes over a Link of a particular type.
A Link Address therefore contains the Node Addresses and the Link Type.
A Link Address is formed by concatenating the
far Node Address, the Link Type, and the near Node Address:
<FarNode><LinkType><NearNode> and writen as `$NNNN$X-X-X-X!LLLL!$NNNN$X-X-X-X`.

**Client Edge APIs**

The [Client Edge APIs][64] allow clients (aka software applications)
to access uplink data from and send downlink data to Network Assets.
Additionally, the Client Edge APIs expose the set of Network Assets
which are valid subjects of uplink and downlink operations for the given client.

The Client Edge API base URL (aka ClientEdgeBase) is
`https://clientedge-conductor.link-labs.com/clientEdge`,
and is referred to as `<ClientEdgeBase>` for short.
Additional Swagger documentation of the Client Edge APIs is maintained at
https://clientedge-conductor.link-labs.com/clientEdge/docs.html .

The Client Edge Data API allows clients to access data from Nodes
(i.e., modules, repeaters and gateways) to which they have access given their granted authorities.

In general, the Client Edge Data API is organized by:

* the **data type’s** handled by Conductor
* the **subject type’s** supported by Conductor
* and **subject id’s** which are registered with Conductor (the term subject refers to the subject of a data query)



[50]:http://docs.link-labs.com/m/52182/l/478042-introduction
[51]:http://docs.link-labs.com/m/52182/l/478050-users-and-credentials
[52]:http://docs.link-labs.com/m/52182/l/478052-access
[53]:http://docs.link-labs.com/m/52182/l/478252-networkassets
[54]:http://docs.link-labs.com/m/52182/l/744464-alerts-and-notifications
[55]:http://docs.link-labs.com/m/52182/l/478054-authentication
[56]:https://networkasset-conductor.link-labs.com/networkAsset/docs.html#!/lte/
[57]:http://docs.link-labs.com/m/52182/l/478124-address-model
[58]:http://docs.link-labs.com/m/52182/l/478124-address-model#node_addresses
[59]:http://docs.link-labs.com/m/52182/l/478124-address-model#node_types
[60]:http://docs.link-labs.com/m/52182/l/478124-address-model#node_ids
[61]:http://docs.link-labs.com/m/52182/l/478124-address-model#node_addresses
[62]:http://docs.link-labs.com/m/52182/l/478124-address-model#link_types
[63]:http://docs.link-labs.com/m/52182/l/478124-address-model#link_addresses
[64]:http://docs.link-labs.com/m/52182/l/478147-client-edge-apis
[65]:
[66]:
[67]:
[68]:
[69]:
[70]:
################################################################################

----------

# Step 1: Charge the Tracker - DONE
The Tracker device itself has a mini-USB port for charging and programming.
Using a [USB 2.0 A-Male to Mini-B cable][06],
make sure to charge the device completely before using (take about 1 hour).

# Step 2: Find Device File Name for Tracker - DONE
Using the same cable used to charge the Tracker,
plug the device into you Linux computer.
Most likely, your Tracker's device named is `/dev/ttyAMC0`,
but to make sure,
you can deduce what the device file's name by do the following:

1. Without the device plugged in a USB port,
run this command `ls /dev > /tmp/step1`.
2. Now plug the device into the Linux systems USB port, wait 30 seconds,
and run this command ` ls /dev > /tmp/step2`.
3. Now do this `diff /tmp/step1 /tmp/step2`.
Pick the name with `tty` in it, and that is your device file.

In my case, on a desktop Linux system, my Tracker device file name is `/dev/ttyAMC0`.

> **NOTE:**Under Linux, each and every hardware device, including USB ports,
are treated as a file and call a [device file][09].
A device file allows a user to access hardware devices,
but shields the users from the technical details about the hardware.
A conventional serial port will typically have a device file such as
`/dev/ttyS0`, `/dev/ttyS1`, etc. but a USB serial ports can appear as
`/dev/ttyUSB0`, `/dev/ttyUSB1`, `/dev/ttyACM0`, etc. or even appear in `/dev/usb/`
directory.
[The convention for microcontrollers][02], like the Link Lab's Tracker,
should always end up with names such as `/dev/ttyACM0`
and not `/dev/ttyUSB0` or `/dev/ttyS0` but you'll see strange things sometimes.

# Step 3: Connecting With the Tracker - DONE
Since we are working on Linux, your going to need an alternative to [Tera Term][05],
which is _yet another_ DEC VT100 terminal emulator for the Microsoft Windows OS.
The obvious Linux alternatives are PuTTY and screen,
but on my Ubuntu 17.10 Linux, I found that `putty` core dumped on me!
[Root cause][01] appears to be relate to the [switch from Xorg to Wayland display server][03].
To work around this you could [switch back to Xorg from Wayland][04],
or as a [temporary alternative][03],
issue the command `xhost +si:localuser:root` and then `sudo putty` should work fine.

But I choose to use `screen`,
because it does so many things well and I grew up on the Unix commandline.
Enter the command `screen /dev/ttyACM0 9600,cs8` and hit the 'Enter' key
and you should see the following screen:

```
-LTE_M GPS Tracker-
1. LTE_m config
2. Device config
3. RESERVED: Future use
4. Reset device
>
```

Congratulations, you are now communicating with the Tracker microcontroller via its USB port.

# Step 4: Change Trakers Configuration - DONE
Now hit `2` `Enter` to get into Device Config Menu.
You'll see the following new lines:

```
-Device Configuration-
1. Change transmit interval
2. Change mailbox check interval
3. Change initial GPS mode
4. Restore default settings
5. Show current device parameters
6. Back
>
```

To change the Transmit interval,
hit `1` `Enter` and input the GPS Fix interval in seconds
(I choose 60 seconds).
Now hit `5` `Enter` to verify settings.
You should see the following:

```
>
Transmit Interval: 60
Mailbox Interval: 600
```

Now hit `6` `Enter` to go back to the Main Menu,
and then hit `4` `Enter` to reset the Tracker.
(**Note:** To activate the new Tracker settings, you must do the reset.)

Now at this point, the Tracker microcontroller has dropped the USB connection
and your `screen`  session is messed up.
So the safe thing to do is is to kill your `screen` session and re-establish it.
To quit the session your are within,
press `Ctrl+a` then type `:quit`.

> **NOTE:** To validate `screen` in fact is terminated, use `screen -list`
and if you see "No Sockets in ...", it is gone.

For one last check, let's go back in a check the configuration:

* Enter the command `screen /dev/ttyACM0 9600,cs8` and hit the `Enter` key
* Enter `2` and hit `Enter`
* Enter `5` and hit `Enter`

You should see the following, and if so, your good,
and you can pull the Tracker from the USB cable.

```
-LTE_M GPS Tracker-
1. LTE_m config
2. Device config
3. RESERVED: Future use
4. Reset device
>
-Device Configuration-
1. Change transmit interval
2. Change mailbox check interval
3. Change initial GPS mode
4. Restore default settings
5. Show current device parameters
6. Back
>
Transmit Interval: 60
Mailbox Interval: 600
```

# Step 5: Create Conductor Account - DONE
Now create a Conductor Account by going to [Link Lab's Conductor Web UI][07]
by using 'Sign Up' at the bottom
(You'll find some documentation [here][08]).
You will be prompted to provide a 'Device ID' and a 'Email Address'.
The 'Device ID' is your [International Mobile Equipment Identity or IMEI][10] of the Tracker device.
(**NOTE:** You should have been given the IMEI when give the Tracker,
or if your desperate, you could physically open the device to find this number.)
The 'Email Address' will be used to send you an email message for verification.
Retrieve that email and do the verification.

During validation, you'll be sent to a screen to provide a password for the Conductor account.
Complete this step and then select the 'Billing' tab.
You'll need to provide a credit card for billing purposes,
so select the 'Add Card' button, and fill in the form.
Then select a 'Plan' and choose the 'Developer Plan'
for both the 'Symphony Link Devices' and 'LTE-M Device'.

################################################################################
IMEI          357353080088893
ICCID         89148000003711822101
NODE ADDRESS  $303$0-0-0001450-2bf65e93d    (also called "Node ID")
################################################################################

# Step 6: Add an Application Token - DONE
Still within the Conductor Account screens,
we need to add an application token for the Tracker devices.
Select 'DATA' and then 'APPLICATION' from the side menu within Conductor.
Now select the 'ADD APPLICATION' button at the top right.

################################################################################
Application Name     Application x09B0
Application Token    b789ab9cca224e1109b0
################################################################################

################################################################################
# Step X: AirFinder Account
https://app.airfinder.com/login
Tag             $303$0-0-0001450-2bf65e93d
Catagory        GPS Tag
Brand           Link Labs
Model No.       LL-LTE-M-VZN-GPS1
Serial Number   357353080088893
################################################################################

# Step 7: Add IMEI and ICCID
Still within the Conductor Account screens,
we will now .............
Select 'DEVICES' and 'LTE_M' from the side menu within Conductor.
Now select the 'ADD LTE-M' button at the top right.
Enter the IMEI, ICCID , your local zip code, and select the 'APPLICATION' you created earlier.
Hit the 'ADD' button.

Now you'll be back into the 'DEVICES' / 'LTE-M' screen where yoru device will show a status of 'Ready'.

# Step 8:

# Step X:
# Step X:
# Step X:

# Step X: Python Wrapper for Conductor API
http://docs.link-labs.com/m/52182/l/478374-a-python-wrapper-of-the-conductor-api-conductor-py
Set up your environment:

```bash
# install your desired version of python
pyenv install 2.7.14

# list the version of python installed
$ pyenv versions
* system (set by /home/jeff/.pyenv/version)
  2.7.14
  2.7.9
  3.5.4
  3.6.4

mkdir ~/src/link-labs-gps-tracker
cd ~/src/link-labs-gps-tracker

# set your desired version of python
pyenv 2.7.14

# what is your python version
$ pyenv version
2.7.14 (set by /home/jeff/src/link-labs-gps-tracker/.python-version)

# what is your python version
$ python --version
Python 2.7.14

pyenv virtualenv tracker
pyenv activate tracker

# install the conductor library
pip install linklabs-conductor

# upgrade to the lates conductor library
pip install --upgrade linklabs-conductor
```

Grab some messages from Conductor:

################################################################################
################################ No Longer Works ###############################
```python
import json
import conductor

#account = conductor.ConductorAccount('myusername', 'mypassword')
account = conductor.ConductorAccount('jeff.irland@verizon.net', '1@#Zippitydo2')

#alternatively, you could request a particular gateway:
#gateway = account.get_gateway('$101$0-0-0-123456789')

node = account.get_module('$303$0-0-0001450-2bf65e93d')

# list of all messages received from that node in the last 5000 minutes
messages = node.get_recent_messages(5000)

print(messages)

#parsed = json.loads(messages)
#print(json.dumps(parsed, indent=4, sort_keys=True))
```
################################################################################

```python
# https://www.link-labs.com/documentation/software-downloads-conductor-downloads

import json
import conductor

account = conductor.ConductorAccount('jeff.irland@verizon.net', '1@#Zippitydo2')
node = account.get_module('$303$0-0-0001450-2bf65e93d')

# list of all messages received from that node in the last 5000 minutes
#messages = node.get_recent_messages(mins_back=24*60)
messages = node.get_recent_messages(50)

# alternatively
# where start_time and stop_time are Python 'datetime.datetime' objects
# messages = node.get_messages_time_range(start_time, stop_time)
print(messages)

#parsed = json.loads(messages)
#print(json.dumps(parsed, indent=4, sort_keys=True))
```

```bash
# deactivate python virtual environment
pyenv deactivate

# delete virtual environment
pyenv virtualenv-delete tracker
```

# Step X: Send Command from Conductor to a Module
A command-line utility to post a command from Conductor to a module. (Uses conductor.py)

send_command_client_edge.py
http://docs.link-labs.com/m/52182/l/478379-command-line-utility-to-send-downlink-messages-send_command_client_edge-py

# Step X: REST API

################################################################################
* [Authentication](http://docs.link-labs.com/m/52182/l/478054-authentication)
* Help with examples: Derek Dernbach <derek.dernbach@link-labs.com>

I need Link Labs to provision me a clientID and cientSecret
clientId = VerizonEnterprise
clientSecret = 9f2f0b1d2dfa44aab51ab558ccde0075

################################################################################

# Step XA: Request Access Token From Authorization Server
Provide username-password and client credentials to the
Conductor Authorization Server via a request of the following form:

* **POST:** https://oauth2-conductor.link-labs.com/oauth/token
* **Content-Type:** application/x-www-form-urlencoded
* **Request Body:** grant_type=password&username={user}&password={pass}&client_id={id}&client_secret={secret}

When using cURL, this translates to

```bash
# request an access token and a refresh token
curl -s -X POST \
-H "Content-Type: application/x-www-form-urlencoded" \
-d "grant_type=password&username={user}&password={pass}&client_id={id}&client_secret={secret}" \
https://oauth2-conductor.link-labs.com/oauth/token \
| jq -C '.'
```

Here is a working example:

```bash
# request an access token and a refresh token
$ curl -s -X POST -H "Content-Type: application/x-www-form-urlencoded" -d "grant_type=password&username=jeff%2Eirland%40verizon%2Enet&password=1%40%23Zippitydo2&client_id=VerizonEnterprise&client_secret=9f2f0b1d2dfa44aab51ab558ccde0075" https://oauth2-conductor.link-labs.com/oauth/token | jq -C '.'
{
  "access_token": "1bc11610-8f9e-494c-a17e-4390ccbb0ff2",
  "token_type": "bearer",
  "refresh_token": "7984101f-100e-441e-8cdc-f8d9379311b2",
  "expires_in": 86399,
  "scope": "all"
}
```

# Step XB: Refresh Access Token
If a request fails and Conductor returns an Unauthorized 401 response, a new Access Token may be obtained by making a refresh request to the Conductor Authorization Server. The refresh request uses the Refresh Token provided in the initial response from the Authorization Server.
That refreash request takes the form:

* **POST:** https://oauth2-conductor.link-labs.com/oauth/token
* **Content-Type:** application/x-www-form-urlencoded
* **Request Body:** grant_type=refresh_token&refresh_token={refresh_token}&client_id={id}&client_secret={secret}

When using cURL, this translates to

```bash
# refreash an access token
curl -s -X POST \
-H "Content-Type: application/x-www-form-urlencoded" \
-d "grant_type=refresh_token&refresh_token={refresh_token}&client_id={id}&client_secret={secret}" \
https://oauth2-conductor.link-labs.com/oauth/token \
| jq -C '.'
```

Here is a working example:

```bash
# refreash an access token
```

# Step XC:
The "Basic" HTTP authentication scheme is defined in RFC 7617,
which transmits credentials as user ID/password pairs, encoded using base64.
As the user ID and password are passed over the network as clear text (it is base64 encoded, but base64 is a reversible encoding), the basic authentication scheme is not secure. HTTPS / TLS should be used in conjunction with basic authentication.

* Encode to Base64 format - https://www.base64encode.org/
    * To get "amVmZi5pcmxhbmRAdmVyaXpvbi5uZXQ6MUAjWmlwcGl0eWRvMg==", base64 encoding of Conductor <login>:<password>
* This isn't secure - https://stackoverflow.com/questions/28927051/curl-command-for-https-ssl


These don't work
    * curl -s -X GET https://networkasset-conductor.link-labs.com/networkAsset/module/%24303%240-0-0001450-2bf65e93d?api_key=1bc11610-8f9e-494c-a17e-4390ccbb0ff2
    * curl -s -X GET -H "Content-Type: application/x-www-form-urlencoded" https://networkasset-conductor.link-labs.com/networkAsset/module/%24303%240-0-0001450-2bf65e93d?api_key=1bc11610-8f9e-494c-a17e-4390ccbb0ff2
    * curl -s -X GET -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_10_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/44.0.2403.89 Safari/537.36" https://networkasset-conductor.link-labs.com/networkAsset/module/%24303%240-0-0001450-2bf65e93d?api_key=1bc11610-8f9e-494c-a17e-4390ccbb0ff2
    * curl -s -X GET 'https://networkasset-conductor.link-labs.com/networkAsset/module/%24303%240-0-0001450-2bf65e93d?api_key=1bc11610-8f9e-494c-a17e-4390ccbb0ff2' -d "grant_type=password&username=jeff%2Eirland%40verizon%2Enet&password=1%40%23Zippitydo2&client_id=VerizonEnterprise&client_secret=9f2f0b1d2dfa44aab51ab558ccde0075" | jq -C '.'

These do work
    * curl -s -X GET 'https://networkasset-conductor.link-labs.com/networkAsset/module/%24303%240-0-0001450-2bf65e93d?api_key=1bc11610-8f9e-494c-a17e-4390ccbb0ff2' -H 'Authorization: Basic amVmZi5pcmxhbmRAdmVyaXpvbi5uZXQ6MUAjWmlwcGl0eWRvMg==' -H 'Accept-Encoding: gzip, deflate, br' -H 'Accept-Language: en-US,en;q=0.9' -H 'Upgrade-Insecure-Requests: 1' -H 'User-Agent: Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.186 Safari/537.36' -H 'Accept: text/html,application/xhtml+xml,application/xml;q=0.9,image/webp,image/apng,*/*;q=0.8' -H 'Cache-Control: max-age=0' -H 'Cookie: _ga=GA1.2.302021072.1515200744; hubspotutk=b7b631623276d5c9e709b9535a5c3818; __cfduid=d491ebd47cca779c7bce732679d9ffe4b1517071976; __hssrc=1; LLCONDUCTOR_ClientEdge=23D8A8D344B792D044F65F12A9C404DB; _gid=GA1.2.367236142.1519694537; __hstc=81985929.b7b631623276d5c9e709b9535a5c3818.1515200746595.1519694538006.1519697398736.14; LLCONDUCTOR_NetworkAsset=138B2847AC16EAFC46EF1C5F000A0107' -H 'Connection: keep-alive' --compressed | jq -C '.'
    * curl -s -X GET 'https://networkasset-conductor.link-labs.com/networkAsset/module/%24303%240-0-0001450-2bf65e93d?api_key=1bc11610-8f9e-494c-a17e-4390ccbb0ff2' -H 'Authorization: Basic amVmZi5pcmxhbmRAdmVyaXpvbi5uZXQ6MUAjWmlwcGl0eWRvMg==' | jq -C '.'


```bash
# this works .... what is this ???
$ curl -s -k -X GET 'https://networkasset-conductor.link-labs.com/networkAsset/module/%24303%240-0-0001450-2bf65e93d?api_key=1bc11610-8f9e-494c-a17e-4390ccbb0ff2' -H 'Authorization: Basic amVmZi5pcmxhbmRAdmVyaXpvbi5uZXQ6MUAjWmlwcGl0eWRvMg==' | jq -C '.'
{
  "self": {
    "href": "https://networkasset-conductor.link-labs.com/networkAsset/module/$303$0-0-0001450-2bf65e93d"
  },
  "nodeAddress": "$303$0-0-0001450-2bf65e93d",
  "initialDetectionTime": "2018-01-17T13:56:30.462",
  "registrationTime": "2018-04-11T13:35:19.338",
  "registrationToken": "b5c96e5758dba85c5849",
  "nodeName": "Jeff Irland",
  "assetInfo": {
    "accessors": {
      "owners": [
        {
          "href": "account/1597",
          "desc": ""
        }
      ]
    },
    "metadata": {
      "tags": [],
      "props": {
        "cellDataUsage": "25169845",
        "iccid": "89148000003711822101",
        "min": "7162557264",
        "mdn": "2402789943",
        "ipAddress": "10.50.0.31",
        "averageRssi": "-103.5",
        "imei": "357353080088893",
        "lteProvStatus": "ACTIVATED",
        "msisdn": "12402789943",
        "rssiCollectTime": "2018-04-12T03:04:37.463Z"
      }
    },
    "enabled": true
  }
}

```


#####################################Client Edge APIs###########################################
The Client Edge Data API allows clients to access data from Nodes (i.e., modules, repeaters and gateways)

Client Edge will send back data in chunks for each request.  If a request has more results that exist for the requested time range, 2 flags will be set in the returned result set --  moreRecordsExist and nextPageId.  If the moreRecordsExist flag is true, the nextPageId property will be populated with an Id to pass in for the next query, to get the next set of results as a query parameter of pageId.

* [Client Edge APIs](https://www.link-labs.com/documentation/conductor-data-platform-user-guide#Client-Edge)

* GET: <ClientEdgeBase>/data/uplinkPayload/node/$301$0-0-0-35426be41/events/2015-09-02T00:00:00/2015-09-01T00:00:00

```bash
$ curl -s -k -X GET 'https://clientedge-conductor.link-labs.com/clientEdge/data/uplinkPayload/node/%24303%240-0-0001450-2bf65e93d/events/2018-05-03T00:00:00/2018-04-03T00:00:00' -H 'Authorization: Basic amVmZi5pcmxhbmRAdmVyaXpvbi5uZXQ6MUAjWmlwcGl0eWRvMg==' | jq -C '.'
{
  "queryUrl": {
    "href": "http://clientedge-conductor.link-labs.com/clientEdge/data/uplinkPayload/node/$303$0-0-0001450-2bf65e93d/events/2018-05-03T00:00:00/2018-04-03T00:00:00"
  },
  "subjectType": "node",
  "subject": "$303$0-0-0001450-2bf65e93d",
  "queryTime": "2018-05-05T14:17:03Z",
  "maxWTime": "2018-05-01T21:54:46.427",
  "minWTime": "2018-04-13T19:33:30.292",
  "resultCount": 92,
  "moreRecordsExist": false,
  "nextPageId": null,
  "results": [
    {
      "eventUrl": {
        "href": "http://clientedge-conductor.link-labs.com/clientEdge/data/uplinkPayload/event/04447524-4b96-472c-b5c0-ccfd4fb699b1/2018-05-01T21:54:46.290"
      },
      "uuid": "04447524-4b96-472c-b5c0-ccfd4fb699b1",
      "time": "2018-05-01T21:54:46.290",
      "metadata": {
        "tags": [],
        "props": {
          "app_tok": "b5c96e5758dba85c5849",
          "t_write": "1525211686427",
          "net_tok": "4f50454e",
          "acctId": "2",
          "t_expire": "1530395686",
          "t_fwd_SomeFwder": "1525211686426",
          "t_ingest": "1525211686418"
        }
      },
      "links": [
        {
          "href": "https://clientedge-conductor.link-labs.com/clientEdge/data/avgSignalMetadata/event/04447524-4b96-472c-b5c0-ccfd4fb699b1/2018-05-01T21:54:46.290",
          "desc": "avgSigMeta"
        }
      ],
      "type": "uplinkPayload",
      "value": {
        "module": "$303$0-0-0001450-2bf65e93d",
        "linkType": "SymphonyLoRa",
        "gateway": "$101$0-0-0000128-66173d0b0",
        "linkAddress": "$303$0-0-0001450-2bf65e93d!101!$101$0-0-0000128-66173d0b0",
        "startReceiveTime": "2018-05-01T21:54:46.290",
        "messageSequence": null,
        "portNumber": "0",
        "avgSignalMetadata": {
          "@type": "LTEMAvgSignalMetadata",
          "sourceAddress": "$303$0-0-0001450-2bf65e93d",
          "destAddress": "$101$0-0-0000128-66173d0b0",
          "linkType": "SymphonyLoRa",
          "cellId": 0,
          "cellTac": 0,
          "cellRsrp": -111,
          "cellRsrq": -17,
          "imei": "357353080088893"
        },
        "pld": "04174D8B40D1C13BBD0078FFE5"
      }
    },
    {
      "eventUrl": {
        "href": "http://clientedge-conductor.link-labs.com/clientEdge/data/uplinkPayload/event/7828650b-999e-4542-bc8f-fe596ad274b6/2018-05-01T21:52:52.275"
      },
      "uuid": "7828650b-999e-4542-bc8f-fe596ad274b6",
      "time": "2018-05-01T21:52:52.275",
      "metadata": {
        "tags": [],
        "props": {
          "app_tok": "b5c96e5758dba85c5849",
          "t_write": "1525211572341",
          "net_tok": "4f50454e",
          "acctId": "2",
          "t_expire": "1530395572",
          "t_fwd_SomeFwder": "1525211572340",
          "t_ingest": "1525211572346"
        }
      },
      "links": [
        {
          "href": "https://clientedge-conductor.link-labs.com/clientEdge/data/avgSignalMetadata/event/7828650b-999e-4542-bc8f-fe596ad274b6/2018-05-01T21:52:52.275",
          "desc": "avgSigMeta"
        }
      ],
      "type": "uplinkPayload",
      "value": {
        "module": "$303$0-0-0001450-2bf65e93d",
        "linkType": "SymphonyLoRa",
        "gateway": "$101$0-0-0000128-66173d0b0",
        "linkAddress": "$303$0-0-0001450-2bf65e93d!101!$101$0-0-0000128-66173d0b0",
        "startReceiveTime": "2018-05-01T21:52:52.275",
        "messageSequence": null,
        "portNumber": "0",
        "avgSignalMetadata": {
          "@type": "LTEMAvgSignalMetadata",
          "sourceAddress": "$303$0-0-0001450-2bf65e93d",
          "destAddress": "$101$0-0-0000128-66173d0b0",
          "linkType": "SymphonyLoRa",
          "cellId": 0,
          "cellTac": 0,
          "cellRsrp": -112,
          "cellRsrq": -18,
          "imei": "357353080088893"
        },
        "pld": "01101000001FFC"
      }
    },
    {
      "eventUrl": {
        "href": "http://clientedge-conductor.link-labs.com/clientEdge/data/uplinkPayload/event/6c44680c-11ba-4dcc-bf01-c27ff673adb5/2018-05-01T21:44:35.003"
      },
      "uuid": "6c44680c-11ba-4dcc-bf01-c27ff673adb5",
      "time": "2018-05-01T21:44:35.003",
      "metadata": {
        "tags": [],
        "props": {
          "app_tok": "b5c96e5758dba85c5849",
          "t_write": "1525211075221",
          "net_tok": "4f50454e",
          "acctId": "2",
          "t_expire": "1530395075",
          "t_fwd_SomeFwder": "1525211075220",
          "t_ingest": "1525211075215"
        }
      },
      "links": [
        {
          "href": "https://clientedge-conductor.link-labs.com/clientEdge/data/avgSignalMetadata/event/6c44680c-11ba-4dcc-bf01-c27ff673adb5/2018-05-01T21:44:35.003",
          "desc": "avgSigMeta"
        }
      ],
      "type": "uplinkPayload",
      "value": {
        "module": "$303$0-0-0001450-2bf65e93d",
        "linkType": "SymphonyLoRa",
        "gateway": "$101$0-0-0000128-66173d0b0",
        "linkAddress": "$303$0-0-0001450-2bf65e93d!101!$101$0-0-0000128-66173d0b0",
        "startReceiveTime": "2018-05-01T21:44:35.003",
        "messageSequence": null,
        "portNumber": "0",
        "avgSignalMetadata": {
          "@type": "LTEMAvgSignalMetadata",
          "sourceAddress": "$303$0-0-0001450-2bf65e93d",
          "destAddress": "$101$0-0-0000128-66173d0b0",
          "linkType": "SymphonyLoRa",
          "cellId": 0,
          "cellTac": 0,
          "cellRsrp": -106,
          "cellRsrq": -13,
          "imei": "357353080088893"
        },
        "pld": "30174E6EBCD1C07F950021E5A5"
      }
    },
    {
      "eventUrl": {
        "href": "http://clientedge-conductor.link-labs.com/clientEdge/data/uplinkPayload/event/8a82ed90-aef0-424b-a607-b64d9966c7e2/2018-05-01T21:41:10.622"
      },
      "uuid": "8a82ed90-aef0-424b-a607-b64d9966c7e2",
      "time": "2018-05-01T21:41:10.622",
      "metadata": {
        "tags": [],
        "props": {
          "app_tok": "b5c96e5758dba85c5849",
          "t_write": "1525210870819",
          "net_tok": "4f50454e",
          "acctId": "2",
          "t_expire": "1530394870",
          "t_fwd_SomeFwder": "1525210870818",
          "t_ingest": "1525210870813"
        }
      },
      "links": [
        {
          "href": "https://clientedge-conductor.link-labs.com/clientEdge/data/avgSignalMetadata/event/8a82ed90-aef0-424b-a607-b64d9966c7e2/2018-05-01T21:41:10.622",
          "desc": "avgSigMeta"
        }
      ],
      "type": "uplinkPayload",
      "value": {
        "module": "$303$0-0-0001450-2bf65e93d",
        "linkType": "SymphonyLoRa",
        "gateway": "$101$0-0-0000128-66173d0b0",
        "linkAddress": "$303$0-0-0001450-2bf65e93d!101!$101$0-0-0000128-66173d0b0",
        "startReceiveTime": "2018-05-01T21:41:10.622",
        "messageSequence": null,
        "portNumber": "0",
        "avgSignalMetadata": {
          "@type": "LTEMAvgSignalMetadata",
          "sourceAddress": "$303$0-0-0001450-2bf65e93d",
          "destAddress": "$101$0-0-0000128-66173d0b0",
          "linkType": "SymphonyLoRa",
          "cellId": 0,
          "cellTac": 0,
          "cellRsrp": -105,
          "cellRsrq": -16,
          "imei": "357353080088893"
        },
        "pld": "2C174D514FD1C0BA230021E5A5"
      }
    },
    .
    .
    .
    .
```


[01]:https://askubuntu.com/questions/970058/putty-ssh-client-fails-with-segmentation-fault-after-upgrade-to-17-10
[02]:https://rfc1149.net/blog/2013/03/05/what-is-the-difference-between-devttyusbx-and-devttyacmx/
[03]:https://itsfoss.com/switch-xorg-wayland/
[04]:https://askubuntu.com/questions/961304/how-do-you-switch-from-wayland-back-to-xorg-in-ubuntu-17-10
[05]:https://ttssh2.osdn.jp/
[06]:https://www.amazon.com/Monoprice-1-5-Feet-Mini-B-Ferrite-105446/dp/B003L18RZU
[07]:http://conductor.link-labs.com/
[08]:http://docs.link-labs.com/m/72700/l/835334-create-a-conductor-account
[09]:http://en.wikipedia.org/wiki/Device_file
[10]:https://en.wikipedia.org/wiki/International_Mobile_Equipment_Identity
[11]:
[12]:
[13]:
[14]:
[15]:
[16]:
[17]:
[18]:
[19]:
[20]:
