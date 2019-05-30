


* [Splunk Quick Reference Guide](https://www.splunk.com/pdfs/solution-guides/splunk-quick-reference-guide.pdf)

* [power monitoring with Splunk](https://www.hurricanelabs.com/blog/the-coffee-report-splunk-iot-and-coffee)



# What is Splunk? Splunking?
What do you do when you need information about the state of a machine, devices, or software?
You look at its log files ... Splunk is Google for log files.
It does a lot more but log processing is still at the product’s core.
It stores all your logs and provides very fast search capabilities
roughly in the same way Google does for the internet.

You can send any time series data to Splunk and index it
(aka transform raw time stamped event data into searchable events).
The event data then becomes search-able, actionable, presentable via Splunk.

Some videos that explains Splunk:

* [What is Splunk? Splunking?](https://www.youtube.com/watch?v=V621h2e3HrU)
* [Splunk Video Playlist](https://www.youtube.com/user/splunkvideos/playlists)

Documentation:

* [Splunk Documentation](http://docs.splunk.com/Documentation)

## Open Source Alternative: ELK Stack
Splunk was the first log analysis software, and market leader,
but there is an open-source alternative called [ELK Stack][08].
ELK stands for [Elasticsearch][11], [Logstash][12], and [Kibana][13]
which are all developed, managed and maintained by [Elastic][14].

Splunk and the ELK Stack use two different approaches to solve the same problem.
Splunk takes a pile of unorganized data
and allows you to search through the information to extract what they need.
ELK requires more work and planning in the beginning,
but the value extraction is easier at the end.
Check out the article: ["Splunk and the ELK Stack: A Side-by-Side Comparison"][15].

## Splunk Tutorial Data
https://docs.splunk.com/Documentation/Splunk/6.5.2/PivotTutorial/GetthetutorialdataintoSplunk

## Splunk Datasets
* [About Datasets](http://docs.splunk.com/Documentation/Splunk/7.1.0/Knowledge/Aboutdatasets)
* [Using Datasets in Splunk](https://www.function1.com/2017/04/using-datasets-in-splunk)
* [Splunk Datasets Add-on](https://splunkbase.splunk.com/app/3245/#/overview)

## Splunk Indexer
Splunk indexer is one of the most important splunk component.
As the name suggests, indexer collects logs and process those for creating searchable data.
Same as any book index, it create index for all data items from your environment.
The Splunk indexer stores all data in a directory located in `$SPLUNK_HOME/var/lib/splunk`.
Indexes consist of two types of files: raw data (full log files) and index files (key keywords from logs)
Splunk Enterprise comes with a number of pre-configured indexes, including:

* **main**: This is the default Splunk Enterprise index. All processed data is stored here unless otherwise specified.
* **_internal**: Stores Splunk Enterprise internal logs and processing metrics.
* **_audit**: Contains events related to the file system change monitor, auditing, and all user search history

For aditional information, check out:

* [Indexes, indexers, and indexer clusters](http://docs.splunk.com/Documentation/Splunk/7.1.0/Indexer/Aboutindexesandindexers)

## Splunk's Search Processing Language (SPL)
The Search & Reporting App is the primary interface for using the Splunk
software to run searches, save reports, and create dashboards.
For searching, you can just use simple search terms, like a username,
and see how often that turns up in a given time period.
But Splunk’s Search Processing Language (SPL) offers a lot more.
SPL is a powerful tool for sifting through vast amounts of data
and performing statistical operations on what is relevant in a specific context.

* http://docs.splunk.com/Documentation/Splunk/7.1.0/SearchTutorial/WelcometotheSearchTutorial
* [SPL: Search Processing Language](https://intellipaat.com/tutorial/splunk-tutorial/spl-search-processing-language/)
* [Search command quick reference table](http://docs.splunk.com/Documentation/Splunk/latest/SearchReference/ListOfSearchCommands)
* [Machine Learning Toolkit quick referance table](https://www.splunk.com/pdfs/solution-guides/machine-learning-quick-ref-guide.pdf)

```
# table listing all your sources
| metadata type=hosts index=* OR index=_*

# table listing all sourcetypes
| metadata type=sourcetypes index=* OR index=_*
```

# Splunk Stream
Splunk Stream captures real-time streaming network data
and performs packet analysis at layer 4 (TCP, UDP)
as well as many layer 7 applications (HTTP, DNS, etc.).
This enables reporting on things like application response times,
application decoding (i.e. what web pages are accessed),
as well as detecting unauthorized users.

A "stream" is a grouping of events defined by a specific network protocol and set of fields. When combined with logs, metrics, and other information, the streams that you capture with Splunk Stream can provide valuable insight into activities and suspicious behavior across your network infrastructure.

Splunk Stream is supported on many operating systems, but mostly Intel x86 based computers and architectures.
Never the less, one of the Splunk developers ported the Stream binaries to ARM architecture.
Unfortunately, it does not support the breadth of other applications as with Intel x86 versions.

* [How to Stream Internet of Things Data into Splunk in Ten Easy Steps!](https://www.splunk.com/blog/2014/01/22/connect-splunk-to-the-internet-of-things-in-ten-easy-steps.html)

# Splunk IoT
* https://www.splunk.com/view/SP-CAAAH5T

# Splunk Platform
https://www.splunk.com/en_us/download.html

## Splunk Universal Forwarder


## Splunk HTTP Event Collector (HEC)
* [Introduction to Splunk HTTP Event Collector](http://dev.splunk.com/view/event-collector/SP-CAAAE6M)
* [HTTP Event Collector, your DIRECT event pipe to Splunk 6.3](https://www.splunk.com/blog/2015/10/06/http-event-collector-your-direct-event-pipe-to-splunk-6-3.html)
* [Ingest Data with One Tool from Twitter to OPC, Node-RED](https://www.splunk.com/blog/2017/12/04/ingest-data-with-one-tool-from-twitter-to-opc-node-red.html)

## Splunk Insights for Infrastructure
https://www.splunk.com/en_us/resources/video.40bW03ZjE6PdKzdcgiuT8bCr8mjvtuzS.html

## Splunk Apps and Add-Ons
Splunk supports over 1000 apps and add-ons that can extend the Splunk platform.
To get these Apps & Add-On, goto [SplunkBase][02] and browse.

Apps are dashboards and search scripts to address specific need.

* https://www.splunk.com/en_us/products/apps-and-add-ons.html
* [Splunk Dashboard Examples](https://splunkbase.splunk.com/app/1603/)
* [Splunk Datasets Add-on](https://splunkbase.splunk.com/app/3245/#/overview)

## Splunk Machine Learning
* [Introducing the Splunk Machine Learning Toolkit Version 3.3](https://www.splunk.com/content/splunk-blogs/en/2018/06/20/introducing-the-splunk-machine-learning-toolkit-version-3-3.html)
* [Machine Learning Toolkit quick referance table](https://www.splunk.com/pdfs/solution-guides/machine-learning-quick-ref-guide.pdf)

### Splunk Stream
Splunk Stream is the purpose-built wire data collection and analytic solution from Splunk. Passively capture packets, dynamically detect application, parse the protocol, and send metadata back to your Indexer for over 30 protocols. Detection only for over 300 commercial protocols, even if encrypted.

Targeted full packet capture to NAS for forensic investigation of raw packets. Aggregate data using familiar SPL aggregation methods to reduce the volume of data indexed. Capture Flow-type records, including NetFlow v5, v9, jFlow, and sFlow, and IPFIX, and send Flow Records directly into your Indexers, with optional filtering and aggregation.

Ingest PCAP files in real-time or on-demand. Create MD5 hashes of file attachments for Threat Intelligence correlations using Splunk ES, and extract and store those reassembled files for forensic or DLP purposes. Parse SQL statements to help understand user intent. Understand IP client-server connections with patent-pending visualization.

* https://www.splunk.com/view/splunk-introduces-the-splunk-app-for-stream/SP-CAAANBR
* [Splunk App for Stream](https://splunkbase.splunk.com/app/1809/)
* [Splunk App for Stream: How Can You Use Ephemeral Streams?](https://www.splunk.com/blog/2015/02/13/splunk-app-for-stream-how-can-you-use-ephemeral-streams.html)

# Sharktap
I'd suggest using a Netgear ProSAFE GS105Ev2 switch instead of the Sharktap. Amongst other things the Netgear supports port mirroring, has gigabit and is way cheaper (price, not quality). I have both the Sharktap and the Netgear here and the Sharktap is just gathering dust on a a shelf (it's basically just a Micro 100Mbit Switch Chip with 3 ports and hardwired port mirroring). - https://www.reddit.com/r/raspberry_pi/comments/4461gv/deep_packet_inspection_with_splunk_stream_on_a/

* [Throwing Star LAN Tap Pro](https://hakshop.com/products/throwing-star-lan-tap-pro)
* [Turning a NetGear GS105E into a network monitoring device](https://www.youtube.com/watch?v=G8uAhSZnSnA)

>**NOTE:** The phrase "wire data" references the information that passes over
computer and telecommunication networks defining communications between client and server devices.
More precisely, wire data is the information that is communicated in each layer of the OSI model
(Layer 1 not being included because those protocols
are used to establish connections and do not communicate information).

# Splunk Home Monitor
* [It’s a Family Affair…What’s up with the Family?](https://www.splunk.com/blog/2016/09/25/its-a-family-affair-whats-up-with-the-family.html)
* [Kamilo Amir on Google+](https://plus.google.com/+KamiloAmir)
* [Splunk Apps by Kam](http://amiracle19.blogspot.com/)
* [Splunk app for home | monitor >](https://github.com/amiracle/homemonitor)
* [“How To Guide”: Splunk Home Monitor for FIOS Routers](https://4dd0p3r470r.wordpress.com/2015/01/31/how-to-splunk-home-monitor-for-fios-routers/)
* [Setting up Verizon FiOS Router for Home Monitor **UDPATED**](http://amiracle19.blogspot.com/p/setting-up-verizon-fios-router-for-home.html)
* https://plus.google.com/+KamiloAmir
* https://github.com/amiracle/homemonitor
* http://amiracle19.blogspot.com/2015/09/troubleshooting-home-monitor-app.html
* [Troubleshooting home | monitor > app](http://amiracle19.blogspot.com/2015/09/troubleshooting-home-monitor-app.html)

This video takes you through the setup and configuration of your Verizon FiOS router and an instance of Splunk.
* [Splunk Connected Home Demo](https://www.youtube.com/watch?v=Mm2--RJR56Y)
* [Network Monitor in 10 minutes with Splunk](https://www.youtube.com/watch?v=HPVlHQjnxYs)
* [Home Monitor powered by Splunk](https://www.youtube.com/watch?v=pgJ4dtIn5wo)
* [Home Monitor App with Splunk Stream Explained](https://www.youtube.com/watch?v=wW7UuKxnlhg)
* [Home Monitor App for Splunk Explained](https://www.youtube.com/watch?v=cnKQsI-NMfo)

# Learning Splunk
* [Splunk Getting Started](https://www.splunk.com/en_us/resources/getting-started.html)
* [Splunk Education Videos](https://www.splunk.com/en_us/training/videos/all-videos.html)
* [Splunk Search Tutorial](http://docs.splunk.com/Documentation/Splunk/latest/SearchTutorial/WelcometotheSearchTutorial)
* [Splunk Blogs](https://www.splunk.com/blog/homepage.html)
* [Splunk Apps](https://splunkbase.splunk.com/)
* [Splunk Quick Reference Guide](https://www.splunk.com/pdfs/solution-guides/splunk-quick-reference-guide.pdf)

* https://www.learnsplunk.com/

# Basic Installation and Setup of Splunk
* [Splunk Enterprise Admin Manual](http://docs.splunk.com/Documentation/Splunk/7.1.0/Admin/Howtousethismanual)
* [Splunk Enterprise Installation Manual](http://docs.splunk.com/Documentation/Splunk/latest/Installation/Whatsinthismanual)

## Step 1: Installing Splunk Enterprise - DONE
[This video][01] demonstrates the process to installing Splunk Enterprise on Linux.
I specifically followed these steps:

```bash
# download splunk
cd ~/Downloads
wget -O splunk-7.1.0-2e75b3406c5b-linux-2.6-amd64.deb 'https://www.splunk.com/bin/splunk/DownloadActivityServlet?architecture=x86_64&platform=linux&version=7.1.0&product=splunk&filename=splunk-7.1.0-2e75b3406c5b-linux-2.6-amd64.deb&wget=true'

# install splunk in /opt/splunk
sudo dpkg -i splunk-7.1.0-2e75b3406c5b-linux-2.6-amd64.deb
```

Now lets start Splunk and check it out:

```bash
# go to where splunk executables are stored
cd /opt/splunk/bin

# set SPLUNK_HOME env variable
echo "SPLUNK_HOME='/opt/splunk' ; export SPLUNK_HOME" >> $HOME/.bashrc

# to accept the license, and not be prompted again
sudo -u splunk /opt/splunk/bin/splunk start --accept-license

# to start splunk you must be user splunk
sudo -u splunk /opt/splunk/bin/splunk start

# to stop or restart splunk
sudo -u splunk /opt/splunk/bin/splunk stop
sudo -u splunk /opt/splunk/bin/splunk restart

# to enable splunk at boot time
sudo -u splunk /opt/splunk/bin/splunk enable boot-start -user splunk
```

To see what other commands splunk can suport:

```bash
# print help message
$ sudo -u splunk /opt/splunk/bin/splunk help

Welcome to Splunk's Command Line Interface (CLI).

    Type these commands for more help:

        help [command]             type a command name to access its help page
        help [object]              type an object name to access its help page
        help [topic]               type a topic keyword to get help on a topic
        help commands              display a full list of CLI commands
        help clustering            commands that can be used to configure the clustering setup
        help shclustering          commands that can be used to configure the Search Head Cluster setup
        help control, controls     tools to start, stop, manage Splunk processes
        help datastore             manage Splunk's local filesystem use
        help distributed           manage distributed configurations such as
                                   data cloning, routing, and distributed search
        help forwarding            manage deployments
        help input, inputs         manage data inputs
        help licensing             manage licenses for your Splunk server
        help settings              manage settings for your Splunk server
        help simple, cheatsheet    display a list of common commands with syntax
        help tools                 tools to help your Splunk server
        help search                help with Splunk searches

    Universal Parameters:

        The following parameters are usable by any command. For more details on each parameter, type "help [parameter]".

Syntax:

	[command] [object] [-parameter <value> | <value>]... [-uri][-auth]

      app        specify the app or namespace to run the command; for search, defaults to
                 the Search app

      auth       specify login credentials to execute commands that require you to be logged in

      owner      specify the owner/user context associated with an object; if not specified,
                 defaults to the currently logged in user

      uri        execute a command on any specified Splunk server. Use the
                 format: <ip>:<port>

      Note: Both IPv4 and IPv6 formats are supported for specifying an IP address, for example:
      127.0.0.1:80 or "[2001:db8::1]:80". By default, splunkd listens on IPv4 only. To enable
      IPv6 support, refer to the instructions in:
      http://docs.splunk.com/Documentation/Splunk/latest/Admin/ConfigureSplunkforIPv6
      .
      .
      .
```

## Step 2: Go to Splunk's Web UI - DONE
Now we need to go to Splunk's browser based UI and
getting data into Splunk.
[This video][03] tells you the basics of what needs to be done.

Within your browser, log into the Splunk UI at `http://desktop:8000`.
Use the `admin` login and the password you created during the install.

################################################################################
```bash
# check what group we are targetting (answer: adm)
$ lsl /var/log/auth.log
-rw-r----- 1 syslog adm 24806216 May 18 21:42 /var/log/auth.log

# make splunk user part of the adm group
sudo usermod -a -G adm splunk

# what groups is user splunk part of
$ groups splunk
splunk : splunk adm

# to remove splunk user from adm group
gpasswd -d splunk adm
```
################################################################################

## Step 3: Validate Splunk is Working (Splunk Log Files) - DONE
You don’t have any data at this point,
but you can verify that search is working by running a search in the internal index.
You can do this as follows: Do a search with `index=_internal`.

[Splunk Enterprise keeps track of its activity by logging][07] to
various files in `$SPLUNK_HOME/var/log/splunk`.
The Splunk Enterprise internal log files are rolled based on size.
You can change the default log rotation size by editing `$SPLUNK_HOME/etc/log.cfg`.
You can search these files in Splunk Web by typing: `index=_internal`.
Search for errors and warnings by typing: `index=_internal (log_level=error OR log_level=warn*)`.

>**NOTE**: The underscore in front of internal is how Splunk identifies all of its internal indexes

## Step 4: Log File Monitoring (aka Data Inputs) - DONE
A core capability of Splunk is its ability to monitor [log files][04]
and create reports and alerts based on events being logged.
On Ubuntu Linux, nearly all operating system log files
are within the directory `/var/log`.

So in the Splunk UI via `sudo -u splunk /opt/splunk/bin/splunk start`
and then logged in as `admin`.
I went to `Settings` –> `Data Inputs` –> `Files & Directories`
and then add `/var/log` and `/var/log/*` to the inputs.
That basically makes it so that Splunk monitors every log file coming under that directory.
See this video for more information.

You'll also notice in Splunk's `Settings` –> `Data Inputs` –> `Files & Directories`
the use of the environmental variable `SPLUNK_HOME` which is the path to
where Splunk was installed (`/opt/splunk` in my case).
Make sure your `.profile` or `.bashrc` file set and exports `SPLUNK_HOME` environmental variable.

## Step 5: Searching & Reporting - DONE
Splunk comes with the "Searching & Reporting" App pre-installed.
Go to `splunk>enteprise`  –> `Searching & Reporting`
(aka `http://desktop:8000/en-US/app/search/search`)
In the search bar, enter `host=desktop sshd`.
This will show you all the logged events for the SSH daemon,
mainly being failed login events.
For more information,
check out the video "[Basic Search in Splunk Enterprise][06]".

## Step X: Splunking SSH Bruteforce Login Attempts
I'm most interested in monitoring failed SSH login attempts
which is logged the file `/var/log/auth.log`.
Not only do I want to see a list of these events,
but I would like to know who’s trying to log in as an invalided user,
what user are they trying to use to log in,
what region of the world are they coming from.
The article "[Monitoring SSH Bruteforce Attempts Using Splunk][05]"
does a good job explaining how to set this up.

Let's formulate a search for Splunk to use to get our desired date.
Go to `splunk>enteprise`  –> `Searching & Reporting`
(aka `http://desktop:8000/en-US/app/search/search`) and enter the following:

```
sshd "failed password for" NOT repeated

sshd "failed password for invalid user"

# search query for invalid users
sshd "failed password for invalid user" | iplocation IPADDRESS
```

This list all SSH faild password events,
excluding repeated attempts within the same session.

We want to refine this further,
so


* [How do I keep track of failed SSH log-in attempts?](https://askubuntu.com/questions/178016/how-do-i-keep-track-of-failed-ssh-log-in-attempts)

## Step X: Install Splunk Add-on for Linux App
Go to `splunk>enterprise` –> `+ Find More Apps`,
search for "Splunk Add-on for Linux" and then click on "Install".
Use the login and password you use for the Splunk website,
and then restart Splunk.

Now go to `Settings` –> `User interface` –> `Prebuilt panels`

## Step X: Creating Alerts in Splunk
* [Demo: Creating Alerts in Splunk Light](https://www.splunk.com/en_us/resources/video.dkYmhkdDp_LyfIUJfiSSq4yF8HocSp1d.html)

## Step X: Dashboards & Visualizations
https://www.splunk.com/en_us/training/videos/create-dashboard-in-splunk-enterprise.html

* [Dashboard Digest Series – Episode 1](https://www.splunk.com/blog/2016/08/29/dashboard-digest-series-episode-1.html)
* [Dashboard Digest Series: Episode 7 – Iron Splunk](https://www.splunk.com/content/splunk-blogs/en/2018/06/13/dashboard-digest-series-episode-7-iron-splunk.html)

## Step X: Splunk Health Check
* http://127.0.0.1:8000/en-US/app/splunk_monitoring_console/monitoringconsole_check

Search for Splunk errors and warnings by typing: `index=_internal (log_level=error OR log_level=warn*)`.

# Step X: Splunk IoT Example
* [The Coffee Report: Splunk, IoT, and… Coffee?](https://www.hurricanelabs.com/blog/the-coffee-report-splunk-iot-and-coffee)

# Advanced Setup of Splunk

# Step X: Packet Capture File (PCAP)
* [Security Analytics: having fun with Splunk and a packet capture file](https://www.sans.org/reading-room/whitepapers/detection/security-analytics-fun-splunk-packet-capture-file-pcap-34580)

# Step X: Raspberry Pi as a Universal Forwarder / Network Sniffer
* [How do I configure a Splunk Forwarder on Linux?](http://www.laurentmarot.fr/wordpress/?m=20170918)
* [Raspberry Pi as a Splunk Universal Forwarder to Store-and-Foward Logs](https://stichintime.wordpress.com/category/raspberry-pi/)
* [Splunk Universal Forwarder for Raspberry Pi](https://www.splunk.com/blog/2013/10/11/introducing-the-splunk-universal-forwarder-for-raspberry-pi.html)
* [Introducing the Splunk Universal Forwarder for Raspberry Pi!](https://www.splunk.com/blog/2013/10/11/introducing-the-splunk-universal-forwarder-for-raspberry-pi.html)
* [How to Splunk Data from a Raspberry Pi – Three Easy Steps!](https://www.splunk.com/blog/2013/10/21/how-to-splunk-data-from-a-raspberry-pi-three-easy-steps.html)
* [Raspberry Pi Baby Monitor With Splunk](http://www.instructables.com/id/Raspberry-Pi-Baby-Monitor-With-Splunk/)
* [Splunk – universal forwarder on Raspberry Pi 3 and Splunk enterprise on Labtop](http://devops.pm/archives/287/splunk-universal-forwarder-on-raspberry-pi-3-and-splunk-enterprise-on-labtop/)

* [How to Splunk Data from a Raspberry Pi – Three Easy Steps!](https://www.splunk.com/blog/2013/10/21/how-to-splunk-data-from-a-raspberry-pi-three-easy-steps.html)



[01]:https://www.splunk.com/en_us/training/videos/installing-splunk-enterprise-on-linux.html
[02]:https://splunkbase.splunk.com/
[03]:https://www.splunk.com/en_us/training/videos/getting-data-in-to-splunk-enterprise-linux.html
[04]:https://en.wikipedia.org/wiki/Log_file
[05]:https://danielmiessler.com/blog/monitoring-ssh-bruteforce-attempts-using-splunk/
[06]:https://www.splunk.com/en_us/training/videos/basic-search-in-splunk-enterprise.html
[07]:http://docs.splunk.com/Documentation/Splunk/latest/Troubleshooting/WhatSplunklogsaboutitself
[08]:https://logz.io/learn/complete-guide-elk-stack/
[09]:
[10]:
[11]:https://logz.io/tag/elasticsearch/
[12]:https://logz.io/tag/logstash/
[13]:https://logz.io/tag/kibana/
[14]:https://www.elastic.co/
[15]:https://devops.com/splunk-elk-stack-side-side-comparison/
[16]:
[17]:
[18]:
[19]:
[20]:
