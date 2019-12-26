
################################################################################
# ThingSpace Core
To get a app token

```bash
curl -k -v --user ca9f6bd2-2fb2-49c1-aa59-539ba3409cd2:085cbe01-dd27-4da3-acc4-54da9258d6c2 --data "grant_type=client_credentials" -X POST https://core.thingspace.verizon.com/oauth2/token

curl -X POST -d "grant_type=client_credentials" \
    -u ca9f6bd2-2fb2-49c1-aa59-539ba3409cd2:085cbe01-dd27-4da3-acc4-54da9258d6c2 \
    "https://core.thingspace.verizon.com/oauth2/token"

curl -s -X POST -d "grant_type=client_credentials" \
    -u ca9f6bd2-2fb2-49c1-aa59-539ba3409cd2:085cbe01-dd27-4da3-acc4-54da9258d6c2 \
    "https://core.thingspace.verizon.com/oauth2/token" | jq -C '.'
```


################################################################################

# API Console
[ThingSpace API Console][07]
[API referance documentation][08]

# ThingSpace Manage
ThingSpace Manage is a self-service portal where you can manage the connectivity
of IoT devices on the Verizon Wireless Network.
You must sign in at the bottom of [this page][04].

http://www.verizonenterprise.com/resources/thingspace_solutions_brief_en_xg.pdf

# Main Body
Use a POST request to send data from a device or application to ThingSpace.io, with the data in the body of the request.
https://thingspace.verizon.com/develop/apis/dweet/v1/API%20Reference/Send%20Data%20with%20POST.html

ThingSpace Demo GitHub - https://github.com/kidbug/tsdemo


An API token is a unique identifier of an application requesting access to a service.
A service would generate an API token for the application to use when requesting the service.
You can then match the token they provide to the one you store in order to authenticate.
API tokens are a replacement to sending some username/password combination
over HTTP which is not secure.
However, the problem still exists that someone could take and use the API token instead.
A lot of the bigger service providers use OAuth 2.0 at the moment.
It's not a perfect solution but it's probably the most secure, wide-spread,
API security method used at the moment.

There are some important factors for choosing token based authentication:

* Stateless and scalable servers
* Mobile application ready
* Pass authentication to other applications
* Extra security

The artcle "[The Ins and Outs of Token Based Authentication][10]"
give a good introduction to token based authentication.

# Step 1: Retrieve App Credentials
First thing to be done is to read "[Getting Credentials to use the API][09]"
and [obtain tokens on the ThingSpace website][06].
This will establish your trial account and associated keys.
The registration process establishes your test token,
which can be seen [here][02].

```
My Test Token
89ba225e1438e95bd05c3cc288d3591
```
If you follow the documentation referanced above,
you'll establish a trial account [here][01] get your full key set
(Key, Secret, Token - you can supply an App Name and Callback URL).
You can access that key set [here][02].
You should also povide a meaningful "App Name",
In my case, the application is called `ts-spycam-01`.

```
App Name  ts-spycam-01
Key       eV0F8zqoGrs01JWNVDjfkBf17Yoa
Secret    9qu6iBmnBP_8bviOOIUA_MqcMBka
Token     bee94e70dbc534a0b48bef3cb9f10404
Callback URL
```

A key final step is to concatenate the key and the secret, with a colon between them,
and send a POST request to obtain an API token.
This will be done in the next step.

# Step 2: Retrieve App Access Token
[ThingSpace Connectivity Management API][05]
allows you to add and activate devices, check their status, monitor their usage,
and perform other device connectivity management tasks through a RESTful API.
To do this, your application must send an API token in the header of every API request.

## Obtaining a ThingSpace Token Programmatically
ThingSpace use the OAuth2 "client credentials" grant type,
and requires the concatenate of the key and the secret, with a colon between them.
This string is then [encode in Base64 format][11]:

```
# key_value:secret_value using values above
eV0F8zqoGrs01JWNVDjfkBf17Yoa:9qu6iBmnBP_8bviOOIUA_MqcMBka

# base64 encoding done via https://www.base64encode.org/
ZVYwRjh6cW9HcnMwMUpXTlZEamZrQmYxN1lvYTo5cXU2aUJtbkJQXzhidmlPT0lVQV9NcWNNQmth
```

>Base64 encoding schemes that encode binary data by treating it numerically
>and translating it into a base 64 representation.
>Base64 encoding schemes are commonly used when there is a need to encode binary data
>that needs be stored and transferred over media that are designed to deal with textual data.
>This is to ensure that the data remains intact without modification during transport.

Now you can obtain an API token:

```bash
# request an api token
$ curl -X POST -d "grant_type=client_credentials" \
       -H "Authorization: Basic ZVYwRjh6cW9HcnMwMUpXTlZEamZrQmYxN1lvYTo5cXU2aUJtbkJQXzhidmlPT0lVQV9NcWNNQmth" \
       -H "Content-Type: application/x-www-form-urlencoded" \
       "https://thingspace.verizon.com/api/ts/v1/oauth2/token"

{
    "access_token": "f76aacfd4461a6be6738764b3ffa9c99",
    "expires_in": 3600,
    "scope": "am_application_scope default",
    "token_type": "Bearer"
}
```

As shown above. the response will contain a token that you must include in the header
of all Connectivity Management API requests.
The token will expire and that expire time is given in seconds.

## Obtaining a ThingSpace Token Via Website
You can also make the request to generate a new token via the [API Key site][02].
If you select ["My Keys" on the Develop page][03],
that will bring you to [webpage for your account's keys][02].
On that page is a refreash button next to "Token" where you can generate another application token.

# Step 3
For example, a `sar` disk i/o transfer rate report generates data in tabular form:

```bash
# print current i/o trasfer rates
$ sar -b  1 1
Linux 4.4.0-53-generic (desktop) 	12/22/2016 	_x86_64_	(4 CPU)

12:30:26 PM       tps      rtps      wtps   bread/s   bwrtn/s
12:30:27 PM     23.00      3.00     20.00     24.00    306.00
Average:        23.00      3.00     20.00     24.00    306.00
```

I want to take the list line and put it into a JSON object like this:


```json
{
    "hostName": "desktop",
    "createdAt": "2015-09-22T10:30:06.000Z",
    "sarReport": "I/O Transfer Rate",
    "sarData": {
        "tps": 23.00,
        "rtps": 3.00,
        "wtps": 20.00,
        "bread/s": 24.00,
        "bwrtn/s": 306.00
    }
}
```

Of course, the first thing that needs to be done is strip away all the things that
I don't want or need.
This could easily be done with this:

```bash
# raw values for i/o transfer rates
$ sar -b  1 1 | awk  '$1="" ; END{print}' | sed '1,$s/ //'
23.00 3.00 20.00 24.00 360.00
```

# more stuff
Get data from thingspace
curl -s -X GET --header "Accept: application/json" "https://thingspace.io/get/dweets/for/node-red-test" | jq -C '.'

Post data on thingspace
curl -s -X POST --header "Content-Type: application/json" --header "Accept: application/json" -d "{ \"test\": \"test\" }" "https://thingspace.io/dweet/for/node-red-test" | jq -C '.'

# Step X: Streaming Camera to Freeboard
[Freeboard][84], by [Bug Labs][85],
is a simple Web-based dashboard that tracks different Web-connected devices in real time.
Bug Labs likens Freeboard's to [Dropbox][87] in the world of cloud storage,
in that it is designed to bridge the gap between well-versed programmers
and those with little to no coding expertise.
Part of this is a simple messaging tools called [dweet.io][86].
You just publish and go - - no cryptic APIs, no access tokens, no passkeys (unless you want them).
dweet.io is REST-API cloud based publishing & subscribing platform for IoT devices.
dweet.io doesn't manage lost, duplicated, or out of sequence messages, the applcation must do this.
The messages sent are "dweets", as in a [Twitter for devices][108].
The role of the Freeboard interface in all of this is to gather these "dweets"
and present them as meaningful graphs, text, and gauges.

dweet.io and freeboard is free to use, unless you want to reserve a thing name,
store the dweets, or keep your dweets private, then it’s $2 per thing per month.
You do get a little bit of storage for free in that
you can get the 5 most recent dweets in the last 24-hour time period via an API call.

Send data from your thing to the cloud by "dweeting" it with a "humanized API",
aka [HAPI][88] web API.

[dweet.io API console][89]
[dweet.io API documentation][90]


# Step X: Controlling the Camera (Optional)
* [My Internet of Things and MobileFirst adventure – Part 4: Adding in the camera](https://dennisschultz.wordpress.com/2015/06/29/my-internet-of-things-and-mobilefirst-adventure-part-5-adding-in-the-camera/)
* [node-red-contrib-camerapi](http://flows.nodered.org/node/node-red-contrib-camerapi)
* [node-red-contrib-webcam](http://flows.nodered.org/node/node-red-contrib-webcam)

# Video Storage
* [Cloudinary](http://cloudinary.com/)
* [example use of Cloudinary](https://openhomeautomation.net/internet-of-things-project-raspberry-pi-2/)

# POST System Status
The utility `sar`, part of the `sysstat` package,
you can monitor performance of various Linux subsystems (CPU, memory, I/O..) in real time.
Also, `sar` you can also collect all performance data on an on-going basis,
store them, and do historical analysis to identify bottlenecks.
The `sysstat` package is usually not installed in Linux system by default.
You need to install it.

```bash
# install sar / sysstat tools
sudo apt-get install sysstat

# check the version of sar
sar -V

# check if sar is working - system CPU statistics 3 times with 1 second interval
sar 1 3
```

The automatic colletion of `sar` statistics may not be enabled by default.
To check, `grep ENABLE /etc/default/sysstat` and if says "false" then edit the file
and change it to "true".
This historical information is maintained within log files located in `/var/log/sysstat`.
Each months of data is stored with `/var/log/sysstat/saNN` where NN is the day of the month.

Also change the collection interval from every 10 minutes to every 2 minutes.
Now restart the service via `service sysstat restart` (or `/etc/init.d/sysstat restart`).

For more information about `sar`, check out:

* [Simple steps to install and configure sar (sysstat) on Ubuntu/Debian server](https://crybit.com/sysstat-sar-on-ubuntu-debian/)
* [10 Useful Sar (Sysstat) Examples for UNIX / Linux Performance Monitoring](http://www.thegeekstuff.com/2011/03/sar-examples/?utm_source=feedburner)
* [How to Use Sar for Monitoring Your Linux System? Sysstat Sar Examples and Usage](https://www.blackmoreops.com/2014/06/18/sysstat-sar-examples-usage/)
* [Collect and report Linux System Activity Information with sar](https://www.thomas-krenn.com/en/wiki/Collect_and_report_Linux_System_Activity_Information_with_sar)

The `sadf` command is used for displaying the contents of data files created by the `sar` command.
But unlike `sar`, `sadf` can write its data in many different formats (CSV, XML, etc.)
The default format is one that can easily be handled by pattern processing commands like `awk`,
but by using the `-j` option, `sadf` will provide a JSON formatted output.

There is one major problem, `sadf -j` doesn't produce valid JSON
(see [bug report][12]).
You can check for this using [`jsonlint`][13], a JSON validator tool
(there are also JSON schema validator [website][14] and [command line tools][15]):


```bash
# install JSON syntax validator and formatter tools
# also installs json_pp and json_xs
sudo apt-get install python-demjson

# jsonlint command misnamed as jsonlint-py
# https://bugs.launchpad.net/ubuntu/+source/python-demjson/+bug/1574848
sudo ln -s /usr/bin/jsonlint-py /usr/bin/jsonlint
sudo chmod a+xr /usr/bin/jsonlint
```

I was able to work around some of this by passing the `sadf -j` output through
the `sed -e 's/]\t/],/' -e 's/}\t/},/'` routing as shown here:

```bash
# this doesn't validate
sadf -j | jsonlint
  .
  .
  .
<stdin>:5019:11: Error: Values must be separated by a comma
   |  At line 5019, column 11, offset 165656
   |  Object started at line 5015, column 4, offset 165424
<stdin>:5027:11: Error: Values must be separated by a comma
   |  At line 5027, column 11, offset 165920
   |  Object started at line 5023, column 4, offset 165688
  .
  .
  .

# this works
sadf -j | sed -e 's/]\t/],/' -e 's/}\t/},/' | jsonlint
<stdin>: ok

# and this works
sadf -j -- -B 60 1 | sed -e 's/]\t/],/' -e 's/}\t/},/' | jsonlint
<stdin>: ok

# but this didn't works
sadf -j -- -A | sed -e 's/]\t/],/'  -e 's/}\t/},/' | jsonlint
sadf -j -- -n DEV | sed -e 's/]\t/],/'  -e 's/}\t/},/' | jsonlint
```

Given all this, here are several examples for current-time `sar` data,
where current time is the last `sar` snapshot with the past two minutes,
expressed in JSON format:

```bash
# CPU load: sar -P ALL
sadf -j -- -P ALL -s 22:20:00 -e 22:22:01 | sed -e 's/]\t/],/'  -e 's/}\t/},/'

# RAM load: sar -r
sadf -j -- -r -s 22:20:00 -e 22:22:01 | sed -e 's/]\t/],/'  -e 's/}\t/},/'

# I/O transfer rate: sar -b
sadf -j -- -b -s 22:20:00 -e 22:22:01 | sed -e 's/]\t/],/'  -e 's/}\t/},/'
```

```bash
# used to populate JSON below

# average values accross all CPUs
sar  1 1 | awk  '$1="" ; $2 ="" ; END{print}' | sed '1,$s/  //' > ~/tmp/cpu-junk.txt

# values for each CPU
sar -P 0,1,2,3 1 1 | tail -4 | awk  '$1="" ; $2 ="" ; {print}' | sed '1,$s/  //' >> ~/tmp/cpu-junk.txt
```

```json
{
    "id": 1001,
    "hostName": "desktop",
    "ipAddress": "192.168.0.1",
    "createdAt": "2015-09-22T10:30:06.000Z"
    "sarReport": "CPU Load",
    "sarData" {
        "averageCpu": {
            "%user": 55.55,
            "%nice": 55.55,
            "%system": 55.55,
            "%iowait": 55.55,
            "%steal": 55.55,
            "%idle": 55.55,
        },
        "0Cpu": {
            "%user": 55.55,
            "%nice": 55.55,
            "%system": 55.55,
            "%iowait": 55.55,
            "%steal": 55.55,
            "%idle": 55.55,
        },
        "1Cpu": {
            "%user": 55.55,
            "%nice": 55.55,
            "%system": 55.55,
            "%iowait": 55.55,
            "%steal": 55.55,
            "%idle": 55.55,
        },
        "2Cpu": {
            "%user": 55.55,
            "%nice": 55.55,
            "%system": 55.55,
            "%iowait": 55.55,
            "%steal": 55.55,
            "%idle": 55.55,
        },
        "3Cpu": {
            "%user": 55.55,
            "%nice": 55.55,
            "%system": 55.55,
            "%iowait": 55.55,
            "%steal": 55.55,
            "%idle": 55.55,
        }
    }
}
```

```bash
# used to populate JSON below

# raw values for i/o transfer rates
sar -b  1 1 | awk  '$1="" ; END{print}' | sed '1,$s/ //' > ~/tmp/io-junk.txt
```

```json
{
    "id": 1002,
    "hostName": "desktop",
    "ipAddress": "192.168.0.1",
    "createdAt": "2015-09-22T10:30:06.000Z",
    "sarReport": "I/O Transfer Rate",
    "sarData" {
        "tps": 55.55,
        "rtps": 55.55,
        "wtps": 55.55,
        "bread/s": 55.55,
        "bwrtn/s": 55.55
    }
}
```

* [JSON Schema is a vocabulary that allows you to annotate and validate JSON documents](http://json-schema.org/)
* [Understanding JSON Schema](https://spacetelescope.github.io/understanding-json-schema/)
* [setting required on a json-schema array](http://stackoverflow.com/questions/17931874/setting-required-on-a-json-schema-array)
* [Convert CSV to JSON with jq](http://infiniteundo.com/post/99336704013/convert-csv-to-json-with-jq)
* [CONVERT CSV TO JSON IN PYTHON](http://www.idiotinside.com/2015/09/18/csv-json-pretty-print-python/)
* [VALIDATE DATA EASILY WITH JSON SCHEMA (PYTHON RECIPE)](http://code.activestate.com/recipes/579135-validate-data-easily-with-json-schema/)
* []()



[01]:https://thingspace.verizon.com/login
[02]:https://thingspace.verizon.com/account/keys
[03]:https://thingspace.verizon.com/develop
[04]:https://thingspace.verizon.com/content/manageintro/
[05]:https://thingspace.verizon.com/develop/apis/m2m/v1/index.html
[06]:https://thingspace.verizon.com/develop/apis/m2m/v1/Getting%20Started/Getting%20Credentials.html
[07]:https://thingspace.verizon.com/develop/apis/m2m/v1/API%20Console.html
[08]:https://thingspace.verizon.com/develop/apis/m2m/v1/API%20Reference/index.html
[09]:https://thingspace.verizon.com/develop/apis/m2m/v1/Getting%20Started/Getting%20Credentials.html
[10]:https://scotch.io/tutorials/the-ins-and-outs-of-token-based-authentication
[11]:https://en.wikipedia.org/wiki/Base64
[12]:https://github.com/sysstat/sysstat/issues/128
[13]:http://manpages.ubuntu.com/manpages/precise/man1/jsonlint.1.html
[14]:http://www.jsonschemavalidator.net/
[15]:http://xmodulo.com/validate-json-command-line-linux.html
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

[84]:http://www.networkworld.com/article/3131491/internet-of-things/freeboard-web-dashboards-made-easy.html
[85]:https://buglabs.net/
[86]:http://www.networkworld.com/article/3133738/internet-of-things/dweetio-a-simple-effective-messaging-service-for-the-internet-of-things.html
[87]:https://www.dropbox.com/
[88]:https://github.com/jheising/HAPI
[89]:https://dweet.io/play/
[90]:http://beta.dweet.io/apis_docs.html

[108]:https://www.element14.com/community/community/design-challenges/forget-me-not/blog/2014/08/29/fmn05-why-tweet-when-you-can-dweet

