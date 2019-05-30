In the city I live,
they offer

# Hacking eMail
* [Hack Your Gmail: A Quick Start for Google App Scripting](https://hackaday.com/2019/01/17/hack-your-gmail-a-quick-start-for-google-app-scripting/)


# Creating APIs
* [How to set-up a powerful API with Nodejs, GraphQL, MongoDB, Hapi, and Swagger](https://medium.freecodecamp.org/how-to-setup-a-powerful-api-with-nodejs-graphql-mongodb-hapi-and-swagger-e251ac189649)

## IFTTT
[!ifttt_logo]:http://marketingland.com/wp-content/ml-loads/2012/09/ifttt-logo.jpg
IFTTT.com (short for “If This Then That”)
is a popular service which lets you trigger actions
based on certain events that occur around the Internet.
It creates a chain of simple conditional statements ("if", "then", "else",
([called "if recipes" and "do recipes" by IFTTT][10]),
which trigger other web services ([called "channels" by IFTTT][11])
such as Gmail, Facebook, Instagram, and Pinterest.
You can think of IFTTT as a way to [automate your online life][04].
IFTTT does its best to make  this easy to do, including a
"[dashboard][11]" where you can encode and control all your services.
For the web-programmers, you can think of IFTTT as a utility for non-programmers,
giving them simple to use APIs and Webhooks.
So th services offered by IFTTT, while useful,
are limited to predefined services for the non-programming community
who are attempting to automate their online / digital life.

An obvious thing for IFTTT to do would be to expand its focus
and support a more general approach.
There is now an official channel for IFTTT that supports webhooks,
called [Maker Channel][05].
(One of the [open source precursor][07] to this IFTTT channel is discussed in this [article][06]
and you'll find the code on [Github][08].)
The Maker Channel is in effect, IFTTT's answer to the DIY communitity for IoT,
as illustrated via its presenace on [hackster.io][09].
(IFTTT does have some more speciallized channels for IoT.
[See the channels for "Connected Home", "Connected Car", and "Fitness and Wearables"][13])

As neat is it is, in my view,
IFTTT has questionable privacy and security.
The bottom line is that nothing is free in this world.
If you want do this service base "this then that" one way or the other,
you are going to sacrifice your privacy.
It can observe you beyond limits.
You've given access to all your data including your up to
date location, your posts, your calender, your dropbox, your evernote, your mail ... and you name it.
IFTTT may say that it's not using any of your data,
but you can't be that sure about hackers.

## Pushover
An alternative to Pushover is [Instapush](https://instapush.im/).
[20 Free and Secure Alternatives to the Parse Push Service](https://dzone.com/articles/20-free-amp-secure-alternatives-to-the-parse-push?edition=252682&utm_source=DailyDigest&utm_medium=email&utm_campaign=dd2016-12-11)

<a href="https://pushover.net/">
    <img class="img-rounded" style="margin: 0px 8px; float: left" title="Pushover Logo" alt="Pushover Logo" src="/images/pushover-logo.png" width="75" height="75" />
</a>
[Pushover][22] is a service to receive instant [push notifications][24]
on your phone, web browser, or tablet from a variety of sources.
You purchase and install a client app on your iPhone, Android device, or Desktop.
On the server side, Pushover provide an HTTP API for queuing messages to deliver
to devices addressable by User or Group Keys.
On the device side, the clients receive those push notifications,
show them to the user, and store them for off-line viewing.
With some scripting, you can integrate Pushover notifications into your
application, website, server process, network monitor, or anything else.
Messages are currently limited to 512 characters,
including a title of up to 100 characters.

* [PubNub - Deliver mobile push notifications to iOS and Android devices, even when an app is offline](https://www.pubnub.com/products/mobile-push/)

## Parsing eMail
IFTTT has many channels for handling email,
[most specifically for Gmail][12]
but there other [tools to help connect with any email service][14].
Never the less, none of these channels appear to parse the email message
and extract the specific information your looking to keep.
To do this, Python has some packages that could be used.
Specifically, the [`email`][15] and [`feedparser`][18] packages.
[This article][19] show how `feedparser` used,
a package intended for parsing syndicated feeds.
Instead, I choose to use the `email` Python package
(installed via `sudo pip install email`)
and was inspired by the impementation outline in the posting
"[Extract emails from Gmail with Python via IMAP][48]".

<!-- ---------------- Start: Gist Code Snippit ---------------- -->
<style="padding: 5px; overflow: auto; font-family: Andale Mono,Lucida Console,Monaco,fixed,monospace; color: rgb(0, 0, 0); background-color: rgb(238, 238, 238); font-size: 12px; line-height: 14px; width: 90%;">
    <script src="https://gist.github.com/jeffskinnerbox/088020e38933615336af.js"></script>
</style>
<!-- ----------------- End: Gist Code Snippit ----------------- -->

This proved too crud for my taste, but is generic and could work for any
[IMAP based email service][01].
I want to take advantage of Gmail's APIs to get a more eligent approch.

# Gmail API
The [Gmail API][20] is a RESTful API that can be used to access Gmail mailboxes and send mail.
All you need to use the Gmail API is the [client library][21]
for your choice of language and an [app that can authenticate][23] as a Gmail user.
The documentation for the Google APIs can be hard to follow,
but a good summary of the creation and management of APIs is given [here][35].

The Gmail API provides five primary resource types:
[Messages][25], Labels, Drafts, History, Threads.
Messages are what we are looking to parse for our data.
Messages are immutable: they can only be created and deleted.
No message properties can be changed other than the labels applied to a given message.

Check out [www.oauth.net][33] which has published a [Beginner’s Guide to OAuth][33]
that covers many of the topics needed to understand and implement.
Google provide tools to exploit its APIs via different envirnments
like [installed applications, mobile apps][42], and even [headless devices][43].
Also, checkout the posting
"[API Security: Deep Dive into OAuth and OpenID Connect][49]".

See these slides - https://docs.google.com/presentation/d/1KqevSqe6ygWVj4U-wlarKU7-SVR79x-vjpR4gEc4A9Q/edit#slide=id.g1697c74a_1_30

**These are the flow for installed application or a device**

<div style="float: left">
    <a href="https://developers.google.com/identity/protocols/OAuth2InstalledApp">
        <img class="img-rounded" style="margin: 0px 8px; width: 247px; height: 111px" title="Installed apps are distributed to individual machines, and it is assumed that these apps cannot keep secrets. These apps might access a Google API while the user is present at the app, or when the app is running in the background." alt="Install-App-Picture" src="https://developers.google.com/accounts/images/webflow.png" />
    </a>
</div>

<div style="float: right">
    <a href="https://developers.google.com/identity/protocols/OAuth2ForDevices">
        <img class="img-rounded" style="margin: 0px 8px; width: 247px; height: 111px" title="If your app will run on devices that do not have access to a system browser, or devices with limited input capabilities (for example, if your app will run on game consoles, video cameras, or printers), then this is the flow to be used." alt="Device-Picture" src="https://developers.google.com/accounts/images/deviceflow.png" />
    </a>
</div>

# eMail Acount for Water Usage
I set up a Gmail account to recieve water usage reports
`waterusagejirland@gmail.com`.

# Introduction to OAuth 2.0
OAuth stands for Open Authorization.
It’s a free and open protocol, that allows users to share their private resources
with a third party while keeping their own credentials secret.
OAuth does this by granting the requesting (client) applications a token,
once access is approved by the user.
Each token grants limited access to a specific resource for a specific period.

OAuth2 supports “delegated authentication”, that is,
it grants access to another person or application to perform actions on your behalf.

* [OAuth 2.0 Beginner's Guide](https://dzone.com/articles/oauth-20-beginners-guide)

# Gmail API Quickstart
To create an application that makes requests to the Gmail API,
I choose to use the [Python Quickstart tool][44] provided by Google API.
This is a simple Python command-line application that uses
your Client ID to make request to the Gmail API.

* [Using Gmail API and Python to read mail messages](https://github.com/abhishekchhibber/Gmail-Api-through-Python)
* [Using python to make authentication into GMail API](http://free-tutorials.org/using-python-to-make-authentication-into-gmail-api/)
* [Send Email programmatically with Gmail, Python, and Flask – Twilio Cloud Communications Blog](https://www.twilio.com/blog/2018/03/send-email-programmatically-with-gmail-python-and-flask.html)

## Step 1: Turn on the Gmail API
## Step 2: Install the Google Client Library

## OAuth 2.0 client IDs (Authentication and Authorization)
Like other Google REST APIs,
the Gmail API uses [Google's Identity Platform][26] (based on [OAuth 2.0][27])
to handle authentication and authorization.
Your app will specify one or more scopes:
strings which identify resources that it needs to access.
The Gmail API supports a number of fine-grained [authorization scopes][28]
to allow only the level of access required.

## API Key
When calling an API that does not access private user data,
you can use a simple [API key][34].
This key is used to authenticate your application for accounting purposes.
You can use API Keys for:

* Data that the data owner has identified as public, such as a public calendar or blog.
* Data that is owned by a Google service such as Google Maps or Google Translate. (Access limitations might apply.)

If you do need to access private user data,
you must use OAuth 2.0 Client ID.
Using an API key does not require user action or consent.
API keys do not grant access to any user account information,
only access to the API, and are not used for authorization.

Going back to the [Google Developer Console for credential creation][31],
select your project, create API Key,
select "Server Key", and name it "water-usage-server-key".
You also have the option to restrict this key to a specific IP address for it use.
This gave me (with an option to down load this to JSON file for safe keeping):

```
Name
    water-usage-server-key

API Key
    AIzaSyAiHrySc7bt81CO0L7vcF9YHP8DeuZKvoY
```

If you are only calling APIs that do not require user data,
then API keys might be simpler to use than OAuth 2.0 access tokens.
However, if your application already uses an OAuth 2.0 access token,
then there is no need to generate an API key as well.
Google ignores passed API keys if a passed OAuth 2.0 access token is already associated with the corresponding project.

### Create a Project (Application)
You need to identify your personal gmail account
(i.e. your personal identify) with the specified project or application.
You need to also to associate this project with a client (i.e. a program)
that works in your behave.
You can do this by giving this client credentials that you issued
and bind with this specific project.

To get authorization working, first you must register
the project in the [Google Developers Console][29].
In my case, I called the project/application "Home Water Usage"
and Google gave me:

```
Project ID
    home-water-usage

Project Number
    991861751950
```

All of this is posted on the [Google Developer Console Dashboard][30].
This project, now associated with your Google identity,
is now ready to have an access token assigned to it.
But first, you have to create credentials for the client that will be acting in your behave.
These credentials can be check by the API  provider to assure
you have in fact give permission to the client to access the API.

### Create a Client ID and Client Secret (OAuth 2.0 Client ID)
Next you must create some credentials for the project.
Going back to the [Google Developer Console for credential creation][31],
select your project, create OAuth 2.0 client ID credentials,
select "Other" for Application Type with "water-usage-logging" as its name.
This gave me (with an option to down load this to JSON file for safe keeping):

See - https://support.google.com/cloud/answer/6158857?hl=en

```
Client Name
    water-usage-logging

Here is your client ID
    991861751950-supug47n8am6s26g3mp7aij53qegbe4d.apps.googleusercontent.com

Here is your client secret
    aHqJWu2JIGPDzSH0eDabM7Cn
```

The JSON file created (`water-usage-logging.json`) is:

```json
{
    "installed": {
        "auth_provider_x509_cert_url": "https://www.googleapis.com/oauth2/v1/certs",
        "auth_uri": "https://accounts.google.com/o/oauth2/auth",
        "client_id": "991861751950-supug47n8am6s26g3mp7aij53qegbe4d.apps.googleusercontent.com",
        "client_secret": "aHqJWu2JIGPDzSH0eDabM7Cn",
        "project_id": "home-water-usage",
        "redirect_uris": [
            "urn:ietf:wg:oauth:2.0:oob",
            "http://localhost"
        ],
        "token_uri": "https://accounts.google.com/o/oauth2/token"
    }
}
```

Your client's/application's client IDs are now listed.
Take note of the Client ID as you'll need to add it to your code later.

### Exchange the Authorization Code for an Access Token
Here, Google APIs get a bit more complex than many other API providers.
Google API documents what is a computer method, not human method,
for getting access tokens.
There happens to be a post concerning
[how to get OAuth access token in console][36],
but it is very convoluted and ad-hoc.
To create a command-line tool to get the required authorization code,
you could use [python-oauth2][37] or [Google's oauth2client package][40],
or lift code from Google documenation titled "[Implementing Server-Side Authorization][39]",
or or go to the origin of all this at [Google's oauth2client Github site][41].
I choose to use the [Python Quickstart tool][44] provided by Google API.
This is a simple Python command-line application that uses
your Client ID to make request to the Gmail API.
Run the following command to install the required Google API libraries:

```bash
# install Google's OArth 2  library
pip install --upgrade google-api-python-client

# run the test tool
python gmail-label.py
```

##################### WHAT DOES IT DO
When you load your application for the first time,
your application must get permission for access the Gmail account with the requested permission scopes.
After this initial authorization,
the application is only presented with the permission dialog
if your app's client ID changes or the requested scopes have changed.
##################### WHAT DOES IT DO

<!-- ---------------- Start: Gist Code Snippit ---------------- -->
<style="padding: 5px; overflow: auto; font-family: Andale Mono,Lucida Console,Monaco,fixed,monospace; color: rgb(0, 0, 0); background-color: rgb(238, 238, 238); font-size: 12px; line-height: 14px; width: 90%;">
    <script src="https://gist.github.com/jeffskinnerbox/bb802a02e97db907a1d4.js"></script>
</style>
<!-- ----------------- End: Gist Code Snippit ----------------- -->

The `gmail-label.py` utility also creates the file `gmail-python-quickstart.json`:

```json
{
    "_class": "OAuth2Credentials",
    "_module": "oauth2client.client",
    "access_token": "ya29.UwI8oqy7xqGbje_sUY151hZ-1amG0KHCW8TdfD5u8YBsgoD_1lXW9lnaeXmDZfy1YXaX",
    "client_id": "991861751950-supug47n8am6s26g3mp7aij53qegbe4d.apps.googleusercontent.com",
    "client_secret": "aHqJWu2JIGPDzSH0eDabM7Cn",
    "id_token": null,
    "invalid": false,
    "refresh_token": "1/n4vBVD6iXVnAZFvoSQGEMO7aJlze5d92H_x-JE1tUlw",
    "revoke_uri": "https://accounts.google.com/o/oauth2/revoke",
    "scopes": [
        "https://www.googleapis.com/auth/gmail.compose",
        "https://www.googleapis.com/auth/gmail.readonly"
    ],
    "token_expiry": "2015-12-23T02:40:03Z",
    "token_info_uri": "https://www.googleapis.com/oauth2/v2/tokeninfo",
    "token_response": {
        "access_token": "ya29.UwI8oqy7xqGbje_sUY151hZ-1amG0KHCW8TdfD5u8YBsgoD_1lXW9lnaeXmDZfy1YXaX",
        "expires_in": 3600,
        "token_type": "Bearer"
    },
    "token_uri": "https://accounts.google.com/o/oauth2/token",
    "user_agent": "Gmail API Python Quickstart"
}
```


# Using Google's API Management Toods to Manually Creating OAuth Tokens
You can [generating OAuth tokens with Google's OAuth 2.0 Playground][45].
The [OAuth 2.0 Playground][46],
in conjunction with the [Google Developers Console][29],
allows you to manually create OAuth tokens.
The OAuth 2.0 Playground guides you through a three step process
and allows you to test the OAuth process.

# Managing Your APIs
If you wish to manage the API,
go to the [API Manager site][47] and turn on the monitoring  for your API.
API Management consist of monitoring the use of the API,
setting limits on the usage,
enabling/disabling the API, etc.

# MongoDB
[MongoDB][17] (from hu**mongo**us) is a [document-oriented database][02].
Classified as a [NoSQL database][03],
MongoDB isn't like a traditional table-based relational database structure in
favor of JSON-like documents with dynamic schemas (MongoDB calls the format [BSON][16]),
making the integration of data in certain types of applications easier and faster.

# Redis
[Redis][50] is an open source, in-memory data structure store,
supporting a large number of data structures
and is used as a database, cache, and message broker.
You can persist data by either by dumping the dataset to disk every once in a while,
or by appending each command to a log, or persistence can be disabled.
Redis also supports asynchronous replication.

* [MongoDB and Redis: a different interpretation of what's wrong with Relational DBs](http://oldblog.antirez.com/post/MongoDB-and-Redis.html)
* [Why (and how to) Redis with your MongoDB](https://www.compose.com/articles/why-and-how-to-redis-with-your-mongodb/)
* [Why Your MongoDB Needs Redis](https://www.slideshare.net/itamarhaber/why-your-mongodb-needs-redis)
* [IoT Backend with Redis and Node.js](https://www.slideshare.net/RedisLabs/redisconf17-iot-backend-with-redis-and-nodejs)
* [Using Redis as a Time Series Database: Why and How](https://www.infoq.com/articles/redis-time-series)
* [Iot sensor on ESP8266 sending values to Redis](http://fcerbell.github.io/IotSensorSendingToRedis/)
* [How to Build an High Availability MQTT Cluster for the Internet of Things Create a scalable MQTT infrastructure using Node.js, Redis, HAProxy and nscale to make the deployment phase a piece of cake](https://medium.com/@lelylan/how-to-build-an-high-availability-mqtt-cluster-for-the-internet-of-things-8011a06bd000)
* [Lelylan breaks up the Internet of Things complexity defining small, independent microservices.](http://www.lelylan.com/)

# Round Robin Database Tool (RRDtool)
<a href="http://oss.oetiker.ch/rrdtool/">
    <img class="img-rounded" style="margin: 0px 8px; float: left" title="RRDtool is the OpenSource industry standard, high performance data logging and graphing system for time series data. RRDtool can be easily integrated in shell scripts, perl, python, ruby, lua or tcl applications." alt="RRDtool Logo" src="{filename}/images/rrdtool-logo.jpg" width="250" height="250" />
</a>
The Round Robin Database Tool (RRDtool) is a open source graphing utility that
takes data sets you collect and graphs them.
RRDtool correlates time-series data like network bandwidth, temperatures,
CPU load or any other data type.
Data is stored in a circular buffer,
which allows the system storage footprint to remain constant over time.
The database will always have the same amount of data points throughout its lifetime.
When new data comes in the oldest data set is removed (FIFO).

The steps to use RRDtool for data graphing

* Create an empty RRD database using rrdtool create.
* Utilize a script and/or the cron to add data to the database using rrdtool update.
* Generate, usually via script, custom output graphs using rrdtool graph.

* [RRDtool](http://oss.oetiker.ch/rrdtool/)
* [Graph your sensors data with RRDtool](https://michael.bouvy.net/blog/en/2013/04/28/graph-data-rrdtool-sensors-arduino/)
* [RRDtool tutorial and graph examples](https://calomel.org/rrdtool.html)
* [Getting Started with RRDtool](http://www.cuddletech.com/articles/rrd/index.html)
* [rrdtool Round Robin Database Howto Version 1](http://www.generationip.com/documentation/Howto/46-rrdtool-round-robin-database-howto-version-1)
* [Cacti](https://www.cacti.net/) is a complete network graphing solution designed to harness the power of RRDTool's data storage and graphing functionality.
* []()
* []()



[01]:http://whatismyipaddress.com/imap
[02]:https://en.wikipedia.org/wiki/Document-oriented_database
[03]:http://nosql-database.org/
[04]:http://www.pcworld.com/article/2044579/how-to-use-ifttt-to-automate-your-online-life.html
[05]:https://ifttt.com/maker
[06]:https://www.marcus-povey.co.uk/2012/11/07/using-webhooks-with-ifttt-com/
[07]:https://captnemo.in/ifttt-webhook/
[08]:https://github.com/mapkyca/ifttt-webhook
[09]:https://www.hackster.io/ifttt/projects
[10]:https://ifttt.com/wtf
[11]:http://www.pocket-lint.com/news/130082-ifttt-explained-how-does-it-work-and-what-are-the-new-do-apps
[12]:http://lifehacker.com/the-best-gmail-ifttt-recipes-576181920?disableinsets=on&utm_expid=66866090-49.VYy4WCNHSyuP6EmjnM93MQ.2
[13]:https://ifttt.com/channels
[14]:https://github.com/newslynx/ifttthttps://developers.google.com/oauthplayground/
[15]:https://docs.python.org/2/library/email.html
[16]:http://bsonspec.org/
[17]:https://www.mongodb.org/
[18]:http://pythonhosted.org/feedparser/introduction.html
[19]:http://mitchtech.net/connect-raspberry-pi-to-gmail-facebook-twitter-more/
[20]:https://developers.google.com/gmail/api/
[21]:https://developers.google.com/gmail/api/downloads
[22]:https://pushover.net/
[23]:https://developers.google.com/gmail/api/auth/about-auth
[24]:http://en.wikipedia.org/wiki/Push_technology
[25]:https://developers.google.com/gmail/api/v1/reference/users/messages
[26]:https://developers.google.com/identity/
[27]:https://developers.google.com/identity/protocols/OAuth2
[28]:https://developers.google.com/gmail/api/auth/scopes
[29]:https://console.developers.google.com/start
[30]:https://console.developers.google.com/home/dashboard?project=home-water-usage
[31]:https://console.developers.google.com/projectselector/apis/credentials
[32]:http://oauth.net/
[33]:http://oauth.net/documentation/getting-started/
[34]:https://developers.google.com/api-client-library/python/guide/aaa_apikeys
[35]:https://developers.google.com/console/help/new/
[36]:https://github.com/burnash/gspread/wiki/How-to-get-OAuth-access-token-in-console%3F
[37]:https://github.com/joestump/python-oauth2
[38]:https://developers.google.com/api-client-library/python/guide/aaa_oauth
[39]:https://developers.google.com/gmail/api/auth/web-server
[40]:http://google-api-python-client.googlecode.com/hg/docs/epy/oauth2client-module.html
[41]:https://github.com/google/oauth2client
[42]:https://developers.google.com/identity/protocols/OAuth2InstalledApp
[43]:https://developers.google.com/identity/protocols/OAuth2ForDevices
[44]:https://developers.google.com/gmail/api/quickstart/python
[45]:https://developers.google.com/adwords/api/docs/guides/oauth_playground
[46]:https://developers.google.com/oauthplayground/
[47]:https://console.developers.google.com/apis/
[48]:http://www.voidynullness.net/blog/2013/07/25/gmail-email-with-python-via-imap/
[49]:http://nordicapis.com/api-security-oauth-openid-connect-depth/
[50]:https://redis.io/topics/introduction
[51]:
[52]:
[53]:
[54]:
[55]:
[56]:
[57]:
[58]:
[59]:
[60]:
