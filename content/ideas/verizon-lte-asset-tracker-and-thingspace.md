* [What the hell is OAuth?](https://medium.com/@wdevon99/what-the-hell-is-oauth-6ba19f236612)
* [OAuth 2.0 explained](https://connect2id.com/learn/oauth-2)
* [An OAuth2 Grant Selection Decision Tree for Securing REST APIs](https://medium.com/scalable/an-oauth2-grant-selection-decision-tree-for-securing-rest-apis-d63b5c0c8900)
* [When To Use Which (OAuth2) Grants and (OIDC) Flows](https://medium.com/@robert.broeckelmann/when-to-use-which-oauth2-grants-and-oidc-flows-ec6a5c00d864)
* [What the Heck is OAuth?](https://developer.okta.com/blog/2017/06/21/what-the-heck-is-oauth)
* [OAuth 2 Simplified](https://aaronparecki.com/oauth-2-simplified/)
* [OAuth 2.0 Beginner's Guide](https://dzone.com/articles/oauth-20-beginners-guide)
* []()

# Contacts for Asset Tracker and ThingSpace
ThingSpace Manage and SDK Support Team - TSMSDK.Support@Verizon.com
Michael Menkes (ThingSpace Manage and SDK Support Team) - michael.e.menkes@g.verizon.com
Gabor Illes - gabor.illes@one.verizon.com
Matt Threefoot - matthew.j.threefoot@one.verizon.com
Darshan Gupta - darshan.gupta@one.verizon.com
Quentin Robinson - quentin.robinson@verizonwireless.com
Rizwan Mohammed - rizwan.khan.mohammed@one.verizon.com
Sravan Semmema - sravan.kumar.semmema@one.verizon.com


################################################################################

# Notes From Device Fails to Activate eMail
All,
This sounds like the following:

Off for about 2 sec and on for about ½ second
Slow, short blinks..................................................................trying to register on network  (Flicker slowly (200ms High/ 1800ms Low)

In short, doesn’t sound like it is connected to the network.

Desired would be the reverse, On for 2 seconds, Off for ½ second.
Slow, long blinks......................................................................................... registered and idle (Flicker slowly (1800ms High/200ms Low)

Not sure if activation needs the device to be restarted, but:
Powering off
• Connect the tracker to the charger.
• Hold down the power button for 5 seconds.
• Power LED will cycle through all colors for 3 seconds, then turn off.
Powering on
• Hold down the power button for 2 seconds.
• Power LED will cycle through all colors for 3 seconds.

If that doesn’t change the LED behavior, then need to continue to address network connectivity issue.
Not relevant for activation
* Power light is also blinking and the device is connected to a USB charger.
* Green short, fast blinks..................................................... 40% - 100% battery charge
* Yellow short, fast blinks.....................................................20% - 40% battery charge
* Red short, fast blinks....................................................... below 20% battery charge
When FOTA update is complete, LED returns to charging-only sequence.

GPS light is also blinking
* Short blinks........................................................................ acquiring GPS location
* goes solid when I bring the device outdoors.
* Solid......................................................................................location acquired

Sincerely,
ThingSpace Manage and SDK Support Team
TSMSDK.Support@Verizon.com

################################################################################

Hi Jeff,

Could you please add and activate the device on ThingSpace.

Steps to follow:
1. Connect device to charger for 10 minutes, you will see light starts blinking on the device for couple of sec. As a result, the device will exit factory mode, self-provision, and set the default sensor configuration
2. After 15 min of 10 min charging(Total 25 min Charging) you will see again lights starts blinking on the device.
3. Go to ThingSpace  and try to register and activate the device when you see lights blinking on the device.

Once the device is in ready state i can help you to perform FOTA to get the device into new firmware version.
Please let me know if you need any more details.

Thanks
Sravan

################################################################################






# About the Device
The Verizon LTE (Cat-M1) Asset Tracker device doesn't have any markings,
not even a logo, but it does have the following features:

* Dimensions are 4.5in. x 3.0in x 0.88in.
* On the front
    * three green LED labeled Power, Data, GPS
    * transparent plastic portal for what is likely a light sensor
    * a small perforated half-inch circle for what is likely temperature and humidity sensor
    * a half-inch indentation for what appears to be a [capacitive button][22]
* On the back
    * six screws to hold the casing together
    * Device Name: LTE Asset Tracker
    * sticker with the following:
        * Model: VZASSET-CM1-001
        * ICCID: 89148000004197461018
        * IMEI: 864508030149261
        * S/N: VZ1833000111
        * Date Code: 08/16/2018
* On the side
    * Micro-USB charging port
* What's missing
    * **NO** pin hole for reset button

>**NOTE:** Plugging the micro-USB charging port into Linux
>and running `lsusb` produces nothing interesting.
>Appears the USB is for charging only and you can't talk to the device via this port.

>**NOTE:**The International Mobile Equipment Identity (IMEI)
>is a 15 to 17-digit code that uniquely identifies mobile phone sets.
>The IMEI code can enable a GSM (Global System for Mobile communication) or UMTS (Universal Mobile Telecommunications Service) network to prevent a misplaced or stolen device from initiating calls.

>**NOTE:**The SIM card is internationally identified by it
>Integrated Circuit Card Identifier (ICCID).
>ICCIDs are stored in the SIM cards and are also engraved or printed on the SIM card body.

## Check a IMEI Number
The [International Mobile station Equipment Identity number (IMEI)][08]
is a number used to identify a device that uses terrestrial cellular networks.
IMEI numbers are hard-coded into device hardware,
making it nearly impossible to change them without somehow damaging the device.
The primary purpose of the IMEI numbers is to uniquely identify mobile devices.
Their secondary purpose is to prevent theft.
A thief cannot change the SIM card on a phone and expect to keep the phone.
When a carrier knows that a device has been stolen,
it can blacklist the IMEI code and lock it out of the network.

The easiest way to check the validity of an IMEI number manually
is by using the [Luhn formula][09] for verification of identification codes.
There are also [online checkers like IMEI.Info][10].
Using this IMEI checker websites you find the following information:

* **Model:** BG96-NA
* **Brand:** QUECTEL
* **IMEI:** TAC: 864508 FAC: 03 SNR: 014926 CD: 1
* **Device type:** Phone
* **SIM card size:** Mini Sim - Regular

>**NOTE: On a standard cell phone,
>a fast method of checking the IMEI number key in `*#06#`.
>Your IMEI number should pop up on your screen.
>You carrier may block this method,
>then try **Settings** -> **About Phone** -> **Status** -> **IMEI Information**
>(this works for Android phones).

# OAuth 2.0
OAuth 2.0 is an open standard framework for [access delegation][20] and is used by ThingSpace.
OAuth 2.0 is commonly used as a way for a user
( **Resource Owner:** the owner of the ThingSpace device )
to grant a 3rd-party website/application outside of the users control
( **Client (or Client Application):** a program that uses the ThingSpace APIs )
access to information
( **Resource Server:** the devise's status via the APIs )
to the 3rd-party websites/applications without giving them the users passwords
but via prompting for user approval or denial of the request
( **Authorization Server:** ThingSpace via web page popup)
This can be done, such that, the 3rd-party has limited/specific information access
( **Scope:** specify what device information will be provided)
and the access to this information is time limited
( **Token Expiration:** after N seconds, the ThingSpace API is no longer functional for the 3rd party).

**Confidential Client:** These clients can protect and not disclose a client_key and client_secret
(e.g. web application running in a webserver)
**Public Client:** These clients are unable to secure keys and secret
(e.g. mobile apps or javascript application running in a users browser)

Communication with the authorization server takes place via two ways.
**Front Channel** - Communication between the Resource Owner and Authorization Server goes through the Client
using HTTP redirect via the GET method.
**Back Channel** - Communications is between the Client and the Authorization Server.
Since no HTTP redirect is involved, the POST method is used and other parameters can be passed
(such as different Grant Types).

OAuth 2.0 Grant Types:
* **Client Credentials** is used only by Confidential Clients.
* **Resource Owner Credentials (aka Username-Password Authentication)** -


The first step of OAuth 2 is to get authorization from the user.
OAuth 2 provides four methods but ThingSpace appears to only support one
( **Grant Type:** )
* **Implicit** was previously recommended for clients without a secret, but has been superseded by using the Authorization Code grant with no secret.
* **Authorization Code** for apps running on a web server, browser-based and mobile apps
* **Resource Owner Credentials**

>**NOTE:A 1st-party client is a client that you trust enough
>to handle the end user’s authorization credentials.
>A 3rd-party client is a client that you don’t trust.
>So you, the owner of the device, is a 1st-party client, but your business partner,
>who would will make use of the specific information from the device you provide, is a 3rd-party.

The OAuth 2.0 flows are complex and [OAuth 2 specifications][21] can be a bit confusing to read.
So it can be difficult to understand exactly what is going on under the covers.
If you don't have a good understand of the OAuth 2 Framework,
it could helpful to study these sources:

* [OAuth Introduction and Terminology](https://www.youtube.com/watch?v=zEysfgIbqlg)
* [OAuth Codes And Tokens](https://www.youtube.com/watch?v=8CHpnTysVOo)
* [OAuth Grant Types](https://www.youtube.com/watch?v=1ZX7554l8hY)

* [An Introduction To OpenID Connect](https://www.youtube.com/watch?v=6DxRTJN1Ffo)
* [OpenID Connect Flows](https://www.youtube.com/watch?v=WVCzv50BslE)

* [OAuth 2.0 Beginner's Guide](https://dzone.com/articles/oauth-20-beginners-guide)
* [(Understanding) OAuth2… for real?](https://www.youtube.com/watch?v=f36s7KtnUD4)
* [OAuth 2.0 explained](https://connect2id.com/learn/oauth-2)
* [OAuth 2 Simplified](https://aaronparecki.com/oauth-2-simplified/)
* [What the Heck is OAuth?](https://developer.okta.com/blog/2017/06/21/what-the-heck-is-oauth)
* [An Overview of OAuth2 using the REST Client Components](https://www.youtube.com/watch?v=EuEovgmVCUs)
* [When To Use Which (OAuth2) Grants and (OIDC) Flows](https://medium.com/@robert.broeckelmann/when-to-use-which-oauth2-grants-and-oidc-flows-ec6a5c00d864)
* [An OAuth2 Grant Selection Decision Tree for Securing REST APIs](https://medium.com/scalable/an-oauth2-grant-selection-decision-tree-for-securing-rest-apis-d63b5c0c8900)
* [A Guide To OAuth 2.0 Grants](https://alexbilbie.com/guide-to-oauth-2-grants/)

# Chrome Feature: Copy as cURL
* [Chrome Feature: Copy as cURL](https://lornajane.net/posts/2013/chrome-feature-copy-as-curl)
* https://ec.haxx.se/usingcurl-copyas.html

# ThingSpace and Device Activation
The [ThingSpace Guides][04] section (specifically [ThingSpace Portal User Guide][07])
provides information on how to active both your ThingSpace account and the device.
The [ThingSpace Device Management Portal: Developer Guide][05]
takes you through the steps of getting you device working with ThingSpace.
What is provided below generally follows this guide.

## Step 1: Create an Account - DONE
Go to the [ThingSpace developer site][01] (aka https://core.thingspace.verizon.com/)
and create an account via the Sign In/Register button at the top right.

## Step 2: Add a Device to Account - DONE
1. Login into the site and click on the "[Devices][02]" button at the top of the site.
1. This brings you to a screen titled "Manage Devices"
and click on the button "[Mange Devices"][03] mid-page on the left.
1. Now click on "[ThingSpace SDK Devices][03]" on the left,
then click on the green "Add Device" button,
and select "TS-SDK" and "Single Device" on the pop-up screen.
1. Fill out the remainder of the pop-up screen with:

* **Device ID Type:** IMEI
* **Device ID:** 864508030084427
* **Device Name:** Asset-Tracker-2
* **Description:** Verizon Professional Services test device

Then click the red button titled "Add".

At this point, if you go to the [Device Management page][03],
you'll see your vice listed.
Click on your divices UID,
and you get the following device information:

* **Device Name:** jeffrey.irland@verizon.com **.... this appear to be wrong, aka ThingSpace Error**
* **UID:** e421ecae-89b4-6f8f-e7eb-d4e27a99d7a0
* **Device Identifier:** 864508030149261 (IMEI)
* **Created On:** 2018-10-05T17:03:31.048Z
* **Last Updated:** 2018-10-05T18:00:33.714Z
* **Account:** Verizon-PS
* **Description:** Verizon Professional Services test device
* **Device Model:** ts.device.cHeAssetTracker

## Step 3: Device Activation on ThingSpace - DONE
We now need to activate the device on ThingSpace
and check that its sending data
by viewing the data under ThingSpace device history.
To do this:

1. Go to the device [Configure][11] page.
1. On the "Actions" button, select "Activate Device".
1. Under [Device > Configure > UID (Device Details) > History][12]
you'll see temperature and other such data (It may take a few minutes to appear).

## Step 4: Establish an Application on ThingSpace - DONE
So if all has gone as outlined above,
the device is on the Verizon network and actively sending data to ThingSpace.
But don't want to interact with this device via the ThingSpace UI.
We want to interface with the device via its APIs.
To do this, we first need to establish to go to "[Applications][13]" on the ThingSpace main menu.
Once at this page,
select "New Application" and supply the following information:

* **App Name:** Asset-Tracker-2-App
* **Callback URL:** https://www.getpostman.com/oauth2/callback
* **Account:** Verizon-PS

Now select the "Update App" icon at the upper right corner and you will get the following:

* **App Name:** ASSET-TRACKER-2-APP
* **Created Date:** Oct 6, 2018 1:44:08 PM EDT
* **Last Updated Date:** Oct 6, 2018 1:44:08 PM EDT
* **Client ID:** 6ec0fc72-e605-46d1-b3b1-a4b80b3e51f6
* **Client Secret:** 7b190299-aa18-437c-bf83-234a03f1fad5
* **Scopes:** ts.alert,ts.alert.ro,ts.device,ts.device.ro,ts.event.ro,ts.place,ts.schedule,ts.schedule.ro,ts.subscription,ts.tag,ts.tag.ro,ts.target,ts.target.ro,ts.trigger,ts.trigger.ro,ts.user.ro
* **Callback URL:** https://www.getpostman.com/oauth2/callback
* **Account:** Verizon-PS

Now you have your applications Client ID and Client Secret
which are required to ultimately get a Bearer Token for the ThingSpace APIs.

>**NOTE:** The **Callback URL** “https://www.getpostman.com/oauth2/callback”
>(called by OAuth 2.0 a [Redirect URI][23])
>is specifically intended for users of [Postman][17] but is also should work for anyone,
>even if you don't have Postman installed.

## Step X: Obtaining Authorization Code and Bearer Token - DONE
Next we will go to ThingSpace's main menu and select
"[Resources][14]" > "[Cloud & Network API References][15]".
Here you will find documentation concerning ThingSpace APIs that let you connect,
activate, and control devices your device.

>**NOTE:** Some of the documentation links referenced above point to an earlier version of
>ThingSpace (aka https://thingspace.verizon.com) but we must use URL end-points where the APIs reside.
>(aka https://core.thingspace.verizon.com).
>That is why you see a different API end-point reference below.

You application needs first an Authorization Code (aka Authorization Code).
This is then used to obtain a Bearer Token
that will be used by your application to use ThingSpace APIs.
You must send an Bearer Token in the header of every API request.

We are specifically interested in the box titled "[Device & Diagnostics (API Reference)][18]".
Somewhat buried on this page is a link to the "[Getting an API Access Token][19]" page.
It is here you will find
a few method for obtaining the Authorization Code
(called in OAuth2 [Grant Types][24]) supported by ThingSpace.

**3-Legged Flow**
**Method 1 (Authorization Code Grant Type): Authorization Request**
This method is document within ThingSpace at
"Resources" > "Cloud & Network API References" > "Device & Diagnostics (API Reference)".
In this case, to get an authorization code,
you use this template within your browser's search box (aka address bar / URL bar):
`https://core.thingspace.verizon.com/oauth2/authorization?response_type=code&client_id=CLIENTID&scope=SCOPE`
Here is a specific example:

```html
<!-- get authorization code in browser' search box, simple scope example -->
https://core.thingspace.verizon.com/oauth2/authorization?response_type=code&client_id=6ec0fc72-e605-46d1-b3b1-a4b80b3e51f6&scope=ts.device

<!-- get authorization code in browser' search box, complex scope example -->
https://core.thingspace.verizon.com/oauth2/authorization?response_type=code&client_id=6ec0fc72-e605-46d1-b3b1-a4b80b3e51f6&scaope=ts.alert ts.alert.ro ts.device ts.device.ro ts.event.ro ts.place ts.schedule ts.schedule.ro ts.subscription ts.tag ts.tag.ro ts.target ts.target.ro ts.trigger ts.trigger.ro ts.user.ro
```

Via the ThingSpace application's encoded Callback URL (aka HTML URF-Redirect),
this brings you to a webpage where you must enter you ThingSpace login and password.
When completed successfully, the browser returns in the search box the following:

```html
<!-- returned authorization code -->
https://app.getpostman.com/oauth2/callback?code=ODM0MWQ2YmQtOTQ5Yy00MGI3LThhZGItZmFkMzYxNzNiMzRj&state=
```

Giving you an authorization code of `ODM0MWQ2YmQtOTQ5Yy00MGI3LThhZGItZmFkMzYxNzNiMzRj`.

#################### EXPERIMENT - DID NOT WORK #################################
```bash
# qurey what type of toke this is
curl -s -X GET  https://core.thingspace.verizon.com/oauth2/token/info?access_token=ODM0MWQ2YmQtOTQ5Yy00MGI3LThhZGItZmFkMzYxNzNiMzRj | jq -C '.'

{
  "error": "server_error",
  "error_description": "Error, failed to get token info due to internal error - Failed to load accessData."
}

# use it as a bearer token
$ curl -s -X GET -H "Content-Type: application/json" \
    -H "Authorization: Bearer ODM0MWQ2YmQtOTQ5Yy00MGI3LThhZGItZmFkMzYxNzNiMzRj" \
    https://core.thingspace.verizon.com/api/v2/devices/e421ecae-89b4-6f8f-e7eb-d4e27a99d7a0 | jq -C '.'

{
  "error": "internal_server_error",
  "error_description": "Error, failed to introspect access token",
  "cause": "Requested service failed due to internal error"
}
```
#################### EXPERIMENT - DID NOT WORK #################################

**3-Legged Flow**
**Method 1 (Authorization Code Grant Type): Access Token Request**
Now we can request the Bearer Token that will be used within the Client to call the API:

#################### EXPERIMENT - DID NOT WORK #################################
```bash
# request the access token (i.e. bearer token)
$ curl -s -X GET --user 6ec0fc72-e605-46d1-b3b1-a4b80b3e51f6:7b190299-aa18-437c-bf83-234a03f1fad5 \
    --data 'grant_type=authorization_code&code=ZjY1MTA2YjItODM5Ny00NzRlLTgwMzQtMzdjNGZkZTA1YjAx&scope=ts.alert ts.alert.ro ts.device ts.device.ro ts.event.ro ts.place ts.schedule ts.schedule.ro ts.subscription ts.tag ts.tag.ro ts.target ts.target.ro ts.trigger ts.trigger.ro ts.user.ro' \
    https://core.thingspace.verizon.com/oauth2/token

<?xml version="1.0" encoding="iso-8859-1"?>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN"
         "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" xml:lang="en" lang="en">
	<head>
		<title>400 - Bad Request</title>
	</head>
	<body>
		<h1>400 - Bad Request</h1>
	</body>
</html>

# request the access token (i.e. bearer token)
$ curl -s -X POST --user 6ec0fc72-e605-46d1-b3b1-a4b80b3e51f6:7b190299-aa18-437c-bf83-234a03f1fad5 \
    --data 'grant_type=authorization_code&code=ZjY1MTA2YjItODM5Ny00NzRlLTgwMzQtMzdjNGZkZTA1YjAx&scope=ts.alert ts.alert.ro ts.device ts.device.ro ts.event.ro ts.place ts.schedule ts.schedule.ro ts.subscription ts.tag ts.tag.ro ts.target ts.target.ro ts.trigger ts.trigger.ro ts.user.ro' \
    https://core.thingspace.verizon.com/oauth2/token | jq -C '.'

{
  "error": "invalid_grant",
  "error_description": "The provided authorization grant (e.g., authorization code, resource owner credentials) or refresh token is invalid, expired, revoked, does not match the redirection URI used in the authorization request, or was issued to another client."
}
```
#################### EXPERIMENT - DID NOT WORK #################################


**2-Legged Flow**
**Method 2 (Client Credentials Grant Type): Authorization Request**
ThingSpace can use the OAuth2 "client credentials" grant type,
and requires that the application key and secret are Base64 encoded.
To obtain an API token:

1. Copy the key (aka Client ID) and the secret (aka Client Secret)
and store them in a secure place for your application to use.
In my case, this is
key = `6ec0fc72-e605-46d1-b3b1-a4b80b3e51f6`
and secret = `7b190299-aa18-437c-bf83-234a03f1fad5`.
1. Concatenate the key and the secret, with a colon between them, like this:
`6ec0fc72-e605-46d1-b3b1-a4b80b3e51f6:7b190299-aa18-437c-bf83-234a03f1fad5`
1. Encode the entire string in Base64 format.
For me, I get the following string:
`NmVjMGZjNzItZTYwNS00NmQxLWIzYjEtYTRiODBiM2U1MWY2OjdiMTkwMjk5LWFhMTgtNDM3Yy1iZjgzLTIzNGEwM2YxZmFkNQ==`

>**NOTE:** To create the BASE64 encoding and learn more about Base64 format,
>visit [BAS64 Decode and Encode][16].
>On Linux, you can also create the BASE64 string via the command line:
>`echo -n <your_string> | base64`.

Now we send a POST request to `https://core.thingspace.verizon.com/oauth2/token`
with the encoded string in the header:

```bash
# request an access token
$ curl -s -X POST --data "grant_type=client_credentials" \
    -H "Content-Type: application/x-www-form-urlencoded" \
    -H "Authorization: Basic NmVjMGZjNzItZTYwNS00NmQxLWIzYjEtYTRiODBiM2U1MWY2OjdiMTkwMjk5LWFhMTgtNDM3Yy1iZjgzLTIzNGEwM2YxZmFkNQ==" \
    "https://core.thingspace.verizon.com/oauth2/token" | jq -C '.'

{
  "access_token": "YTM5ZGI1ZmQtNGQwYy00NzMyLWEzNWYtMDAzODFkNTg5MWM1",
  "expires_in": 2592000,
  "token_type": "bearer"
}

# query information about the access token
$ curl -s -X GET  https://core.thingspace.verizon.com/oauth2/token/info?access_token=YTM5ZGI1ZmQtNGQwYy00NzMyLWEzNWYtMDAzODFkNTg5MWM1 | jq -C '.'

{
  "grant_type": "client_credentials",
  "expires_in": 2592000,
  "created_at": "2018-10-20T14:36:16.586569558Z",
  "username": "",
  "clientid": "6ec0fc72-e605-46d1-b3b1-a4b80b3e51f6",
  "credentialstype": "ts.credential"
}
```

**NOTE: No username**
**NOTE: Worked but no Scope is defined.  So using it in an API returns nothing.**

#################### EXPERIMENT - DID NOT WORK #################################
```bash
$ curl -s -X POST --data "grant_type=client_credentials&scope=ts.device" \
    -H "Content-Type: application/x-www-form-urlencoded" \
    -H "Authorization: Basic NmVjMGZjNzItZTYwNS00NmQxLWIzYjEtYTRiODBiM2U1MWY2OjdiMTkwMjk5LWFhMTgtNDM3Yy1iZjgzLTIzNGEwM2YxZmFkNQ==" \
    "https://core.thingspace.verizon.com/oauth2/token" | jq -C '.'

{
  "error": "invalid_scope",
  "error_description": "The requested scope is invalid, unknown, malformed, or exceeds the scope granted by the resource owner."
}

# request an access token
$ curl -s -X POST -d "grant_type=client_credentials" \
    --data scope='ts.alert ts.alert.ro ts.device ts.device.ro ts.event.ro ts.place ts.schedule ts.schedule.ro ts.subscription ts.tag ts.tag.ro ts.target ts.target.ro ts.trigger ts.trigger.ro ts.user.ro' \
    -H "Content-Type: application/x-www-form-urlencoded" \
    -H "Authorization: Basic NmVjMGZjNzItZTYwNS00NmQxLWIzYjEtYTRiODBiM2U1MWY2OjdiMTkwMjk5LWFhMTgtNDM3Yy1iZjgzLTIzNGEwM2YxZmFkNQ==" \
    "https://core.thingspace.verizon.com/oauth2/token" | jq -C '.'

{
  "error": "invalid_scope",
  "error_description": "The requested scope is invalid, unknown, malformed, or exceeds the scope granted by the resource owner."
}
```
#################### EXPERIMENT - DID NOT WORK #################################


The response will contain a token that you must included
in the header of all Device Location API requests.
The token will be valid for 2,592,000 seconds (i.e. 30 days) from when it was first issued,
and any further token requests during that period will return the same token.
**ThingSpace documentation is incorrect ... This doesn't seem to be true**

To further validate this is a API Bearer Token,
query for information about an existing access token, do the following:

```bash
# query information about an access token
$ curl -s -X GET  https://core.thingspace.verizon.com/oauth2/token/info?access_token=YTM5ZGI1ZmQtNGQwYy00NzMyLWEzNWYtMDAzODFkNTg5MWM1 | jq -C '.'

{
  "grant_type": "client_credentials",
  "expires_in": 2592000,
  "created_at": "2018-10-20T14:36:16.586569558Z",
  "username": "",
  "clientid": "6ec0fc72-e605-46d1-b3b1-a4b80b3e51f6",
  "credentialstype": "ts.credential"
}
```


```bash
curl -s -X GET -H "Content-Type: application/json" \
    -H "Authorization: Bearer YTM5ZGI1ZmQtNGQwYy00NzMyLWEzNWYtMDAzODFkNTg5MWM1" \
    https://core.thingspace.verizon.com/api/v2/devices/e421ecae-89b4-6f8f-e7eb-d4e27a99d7a0 | jq -C '.'
```

**Method 3:**

```bash
# template for obtaining an authorization code
curl -v --user CLIENTID:CLIENTSECRET --data 'response_type=code&client_id=CLIENTID&scope=SCOPE' https://core.thingspace.verizon.com/oauth2/authorization

# get an authorization code
curl -v --user 6ec0fc72-e605-46d1-b3b1-a4b80b3e51f6:7b190299-aa18-437c-bf83-234a03f1fad5 \
    --data 'response_type=code&client_id=6ec0fc72-e605-46d1-b3b1-a4b80b3e51f6&scope=ts.device' \
    https://core.thingspace.verizon.com/oauth2/authorization
```

**Method 4:**

## Step X:
## Step X:
## Step X:
## Step X:

# Token Management
## Refresh a Token
To refresh an access token, you must

```bash
# ????????
```

## Streaming API Example from Monique
#################### EXPERIMENT - DID NOT WORK #################################
curl -X POST https://core.thingspace.verizon.com/api/v2/schedules \
    -H 'authorization: Bearer ZTBmOGM3MGQtMDdkNy00NTAzLWJjZTctODc1YzEwYWRjNzFh' \
    -H 'cache-control: no-cache' \
    -H 'content-type: application/json' \
    -d '"kind": "ts.target||ts.subscription||ts.device", "version": "1.0", "addressscheme": "streamrest", "address": "https://ec2-34-238-247-200.compute-1.amazonaws.com", "key1": "Bearer M2I3MzZmZGMtODJmMy00NDNmLTg5N2ItYWE5MGVlZDBkNmUz"'
#################### EXPERIMENT - DID NOT WORK #################################

## Request Device Data
```bash
# query information about an access token
$ curl -s -X GET  https://core.thingspace.verizon.com/oauth2/token/info?access_token=Y2IwYmQwOWItM2VjZi00NzlhLTg0N2EtN2I0YTQ5MmFkODZh | jq -C '.'

{
  "grant_type": "authorization_code",
  "expires_in": 2592000,
  "created_at": "2018-10-15T15:31:58.615369385Z",
  "username": "jeffrey.irland@verizon.com",
  "scope": [
    "ts.device"
  ],
  "clientid": "6ec0fc72-e605-46d1-b3b1-a4b80b3e51f6",
  "credentialstype": "ts.credential"
}

# request data from a device
$ curl -s -X GET -H "Content-Type: application/json" \
    -H "Authorization: Bearer Y2IwYmQwOWItM2VjZi00NzlhLTg0N2EtN2I0YTQ5MmFkODZh" \
    https://core.thingspace.verizon.com/api/v2/devices/e421ecae-89b4-6f8f-e7eb-d4e27a99d7a0 | jq -C '.'

{
  "qrcode": "864508030149261",
  "imei": 864508030149261,
  "refidtype": "imei",
  "refid": "864508030149261",
  "providerid": "9dfcfa69-a1c8-4eae-8611-b282646bb113",
  "state": "ready",
  "eventretention": 90,
  "tagids": [
    "11b19800-e716-65d9-f7e9-46e766a141bd"
  ],
  "id": "e421ecae-89b4-6f8f-e7eb-d4e27a99d7a0",
  "kind": "ts.device.cHeAssetTracker",
  "version": "1.0",
  "versionid": "dc3a4126-c8da-11e8-9c0c-02420a4c170d",
  "createdon": "2018-10-05T17:03:31.048Z",
  "lastupdated": "2018-10-05T20:11:35.803Z",
  "name": "Asset-Tracker-2",
  "description": "Verizon Professional Services test device",
  "diagnostic": {
    "BTR": {
      "CSRC": "Not_Supported",
      "HLTH": "Not_Supported",
      "PERC": "99",
      "STS": "\u0001",
      "TECH": "Not_Supported",
      "TMP": "Not_Supported",
      "UDET": "Not_Supported",
      "VLT": "Not_Supported"
    },
    "DINF": {
      "BBV": "Version 1.0",
      "BID": "MPSS.JO.3.0.2.C3-00180:9607.ltenbf3.prodQ:HYMAN-PC",
      "CHIP": "MDM9206",
      "DID": "864508030149261",
      "ICCID": "89148000004197461018",
      "IMEI": "864508030149261",
      "IMSI": "311270000209453",
      "KEV": " ThreadX Module Cortex-A7/ARM Version 5.6 ",
      "LNG": "Not_Supported",
      "LPO": "10-5-2018 17:59:27",
      "MNF": "QUALCOMM INCORPORATED",
      "MOD": "0",
      "NFC": "Not_Supported",
      "NLP": "Not_Supported",
      "OSV": "BG96NAMAR02A08M1G_O",
      "RTD": "Not_Supported",
      "SCRS": "Not_Supported",
      "SCRT": "Not_Supported",
      "SGPS": "Not_Supported",
      "TZ": "-04:00"
    },
    "EMMSV": {
      "EMMS": "4",
      "EMMSUBS": "Not_Supported"
    },
    "IPADDR": {
      "RU0I41": "100.76.253.252",
      "RU0I61": "Not_Supported",
      "RU0I62": "Not_Supported",
      "RU1I41": "0.0.0.0",
      "RU1I61": "Not_Supported",
      "RU1I62": "Not_Supported"
    },
    "NW": {
      "1xSIS": "Not_Supported",
      "3gSIS": "Not_Supported",
      "4gSIS": "-102",
      "BSID": "30019842",
      "CST": "Not_Supported",
      "CTP": "Mobile",
      "ISOCC": "Not_Supported",
      "MCC": "311",
      "MNC": "480",
      "NWID": "30019842",
      "NWT": "LTE",
      "RMN": "OFF",
      "SID": "30019842",
      "SIMST": "READY",
      "SST": "In Service"
    },
    "PDRX": {
      "DRXNB": "Not_Supported",
      "DRXSUBFN": "Not_Supported",
      "DRXSYSFN": "Not_Supported",
      "EARFCN": "5230",
      "PCI": "355",
      "PCYCL": "Not_Supported",
      "UEID": "557"
    },
    "PUL": {
      "DNAME": "Not_Supported",
      "IMEI": "864508030149261",
      "IMSI": "311270000209453",
      "MDN": "Not_Available",
      "MIBV": "Not_Supported"
    },
    "RAM": {
      "AVRAM": "65528",
      "FRRAM": "65528",
      "TLRAM": "65536"
    },
    "RSCE": {
      "RCCS": "1",
      "RCCSCC": "Not_Supported"
    },
    "SCID": {
      "BI": "Not_Supported",
      "CID": "30019842",
      "PLMN": "311480",
      "TAC": "29953"
    },
    "SCM": {
      "EARFCN": "5230",
      "PCI": "355",
      "RSRP": "-102",
      "RSRQ": "-12",
      "SUBFN": "Not_Supported",
      "SYSFN": "Not_Supported"
    },
    "STRG": {
      "AVST": "96",
      "FRST": "96",
      "TLST": "5377"
    },
    "WIFI": {
      "BSSID": "Not_Supported",
      "HSP": "Not_Supported",
      "MAC": "Not_Supported",
      "SSID": "Not_Supported",
      "WEN": "Not_Supported",
      "WSC": "Not_Supported",
      "WSP": "Not_Supported",
      "WSS": "Not_Supported"
    }
  },
  "fields": {
    "acceleration": {
      "x": "-0.0068",
      "y": "0.0378",
      "z": "0.9747"
    },
    "battery": "100",
    "deviceConfig": {
      "device": {
        "checkFota": 1
      }
    },
    "deviceDiagnostic": {
      "firmwareVersion": "1.0.15 B19",
      "radioFirmwareVersion": "BG96NAMAR02A08M1G_O",
      "thingspaceFirmwareVersion": "TSSDK_v0.8.0.0-0"
    },
    "humidity": "37",
    "light": "77",
    "location": {
      "latitude": "39.0961380",
      "longitude": "-77.5865249"
    },
    "orientation": {
      "motionInX": "2.0",
      "motionInY": "0.0",
      "motionInZ": "0.0"
    },
    "pressure": "1004",
    "signalStrength": "-103",
    "temperature": "23.2000"
  }
}
```

## Query a Token
To query for information about an existing access token, do the following:

```bash
# query information about an access token
$ curl -s -X GET  https://core.thingspace.verizon.com/oauth2/token/info?access_token=ZTRjN2NjZTYtM2ZmYS00YzcyLTkwMTgtYmJkMTk4MWQyMTc4 | jq -C '.'

{
  "grant_type": "client_credentials",
  "expires_in": 2592000,
  "created_at": "2018-10-09T01:39:46.166947142Z",
  "username": "",
  "clientid": "6ec0fc72-e605-46d1-b3b1-a4b80b3e51f6",
  "credentialstype": "ts.credential"
}
```

## Revoke a Token
You can also revoke a token with:

```bash
# revoke an existing token
$ curl -s -X POST -d "grant_type=client_credentials&token=TokenToRevoke" \
    -H "Content-Type: application/x-www-form-urlencoded" \
    -H "Authorization: Basic NmVjMGZjNzItZTYwNS00NmQxLWIzYjEtYTRiODBiM2U1MWY2OjdiMTkwMjk5LWFhMTgtNDM3Yy1iZjgzLTIzNGEwM2YxZmFkNQ=="  \
    "https://core.thingspace.verizon.com/oauth2/revoke" | jq -C '.'

{}

# revoke an existing token and print header info
$ curl -s -i -X POST -d "grant_type=client_credentials&token=TokenToRevoke" \
    -H "Content-Type: application/x-www-form-urlencoded" \
    -H "Authorization: Basic NmVjMGZjNzItZTYwNS00NmQxLWIzYjEtYTRiODBiM2U1MWY2OjdiMTkwMjk5LWFhMTgtNDM3Yy1iZjgzLTIzNGEwM2YxZmFkNQ=="  \
    "https://core.thingspace.verizon.com/oauth2/revoke"

HTTP/2 200
access-control-allow-credentials: true
access-control-allow-origin: *
cache-control: no-store
content-type: application/json
date: Tue, 09 Oct 2018 01:36:36 GMT
server: nginx/1.13.12
x-transaction-id: d67d39fc-ee98-4b47-9826-9140f1818b28
content-length: 3

{}
```

The response contains the revoked token in the header; there is no response body.

#################### EXPERIMENT - DID NOT WORK #################################
#################### EXPERIMENT - DID NOT WORK #################################




* [OAuth 2.0: An Overview](https://www.youtube.com/watch?v=CPbvxxslDTU)
* [An Introduction to OAuth 2](https://www.digitalocean.com/community/tutorials/an-introduction-to-oauth-2)
* [Which OAuth 2.0 flow should I use?](https://auth0.com/docs/api-auth/which-oauth-flow-to-use)
* [Understanding OAuth2 and Building a Basic Authorization Server of Your Own: A Beginner’s Guide](https://medium.com/google-cloud/understanding-oauth2-and-building-a-basic-authorization-server-of-your-own-a-beginners-guide-cf7451a16f66)




[01]:https://core.thingspace.verizon.com/portal/
[02]:https://core.thingspace.verizon.com/portal/ui/manage/overview
[03]:https://core.thingspace.verizon.com/portal/ui/manage/devices/sdk-devices
[04]:https://core.thingspace.verizon.com/portal/ui/resources/guides
[05]:https://core.thingspace.verizon.com/portal/resources/guides/ts-portal
[06]:https://core.thingspace.verizon.com/portal/ui/manage/credentials
[07]:https://core.thingspace.verizon.com/portal/resources/guides/ts-portal
[08]:https://www.maketecheasier.com/imei-number/
[09]:https://searchsecurity.techtarget.com/definition/LUHN-formula
[10]:https://www.imei.info/
[11]:https://core.thingspace.verizon.com/portal/ui/manage/devices/sdk-devices
[12]:https://core.thingspace.verizon.com/portal/ui/manage/devices/sdk-devices/e421ecae-89b4-6f8f-e7eb-d4e27a99d7a0/history
[13]:https://core.thingspace.verizon.com/portal/ui/applications
[14]:https://core.thingspace.verizon.com/portal/ui/resources/guides
[15]:https://core.thingspace.verizon.com/portal/ui/resources/cloudAPIReferences
[16]:https://www.base64encode.org
[17]:https://www.getpostman.com/
[18]:https://core.thingspace.verizon.com/portal/ui/doc/tsv2/index.html
[19]:https://core.thingspace.verizon.com/portal/ui/doc/tsv2/Getting_Credentials.html
[20]:https://en.wikipedia.org/wiki/Delegation_(computer_security)
[21]:https://oauth.net/2/
[22]:https://www.allaboutcircuits.com/technical-articles/introduction-to-capacitive-touch-sensing/
[23]:https://www.oauth.com/oauth2-servers/redirect-uris/
[24]:https://oauth.net/2/grant-types/
[25]:
[26]:
[27]:
[28]:
[29]:
[30]:
