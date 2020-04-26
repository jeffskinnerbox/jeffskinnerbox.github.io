
* [Basic Time Series Manipulation with Pandas](https://towardsdatascience.com/basic-time-series-manipulation-with-pandas-4432afee64ea)

* [MongoDB CRUD operations with Python (Pymongo)]()https://medium.com/@MicroPyramid/mongodb-crud-operations-with-python-pymongo-a26883af4d09

* [Learn MongoDB With Me](https://dzone.com/articles/learn-mongodb-with-me)
* [Learn MongoDB With Me (Part 2)](https://dzone.com/articles/learn-mongodb-with-me-part-2)
* [Learn MongoDB With Me (Part 3)](https://dzone.com/articles/learn-mongodb-with-me-part-3)

I want to read data from low-cost sensors,
log tht information into a [time series database (TSDB)][01],
and combine that with a web front-end to easily visualize the data.


In general time series data has the following characteristics:

1 Each data point in a time series is a `<timestamp, value>` pair
which denotes the observation recorded at a point in time.
1. Generally, data arrives in increasing timestamp order
and just needs to be appended to the end of the time series,
but sometimes data points may arrive out of order and need insertion in the middle.
1. Data is usually read by specifying a time window ( ex., all data points between 5pm and 7pm today).
1. There is often a time-to-live (TTL) associated with the data points,
which depends on the timestamp of the data point.
( ex. for a given series, we may want to purge each data point in the time series after 7 days has elapsed).

* [A Comparison of Time Series Databases and Netsil’s Use of Druid](https://blog.netsil.com/a-comparison-of-time-series-databases-and-netsils-use-of-druid-db805d471206)
* [System Properties Comparison OpenTSDB vs. Redis](https://db-engines.com/en/system/OpenTSDB%3BRedis)
* [System Properties Comparison HBase vs. OpenTSDB vs. Redis](https://db-engines.com/en/system/HBase%3BOpenTSDB%3BRedis)

# MongoDB Atlas
MongoDB Atlas offers the functionality of MongoDB in an automated cloud service.
It enables you to deploy, operate, and grow your data layer in the cloud with a few clicks or an API call.

* [MongoDB Atlas: Getting Started](https://docs.atlas.mongodb.com/getting-started/)

# MongoDB
[MongoDB][17] (from hu**mongo**us) is a [document-oriented database][11].
Classified as a [NoSQL database][12],
MongoDB isn't like a traditional table-based relational database structure in
favor of JSON-like documents with dynamic schemas
(MongoDB calls the format [BSON][16], a binary style of JSON)
making the integration of data in certain types of applications easier and faster.
MongoDB is written in C, C++ and JavaScript,
the fourth most popular type of database management system (4th to Oracle, MySQL and MS-SQL),
and it’s the most popular database for document stores.

These are the [main concepts to discribe MongoDB][08] and its capabilities:

* **Database**: MongoDB arranges data into databases just as most relational databases do.
In an RDBMS (relational database-management systems),
a database is a set of tables, stored procedures, views and so on.
A database is a container of your collections,
and a single MongoDB server typically has multiple databases.
* **Collection**: A collection is the equivalent of an RDBMS table.
Documents in a collection can have different fields.
Typically, all documents in a collection have a similar or related purpose.
* **Documents**: A record in a MongoDB collection, and the basic unit of data in a MongoDB, is the document.
A document contains a set of fields or key-value pairs.
The best way to think of it is that it’s similar to a multidimensional array.
* **Primary Key**: In MongoDB, the field `_id` is reserved for the primary key.
When we insert the data without the field `_id`,
MongoDB sets the value of it as the unique number by itself to uniquely identify the data.
* **Mongo**: It’s mongo's interactive shell that lets database administrators
view, insert, remove and update data in their databases, as well as get replication information,
set up sharding, shut down servers, execute JavaScript and more.
* **Mongostat**: A command-line tool, `mongostat` displays a summary list of statistics
regarding the status of a currently running MongoDB instance.
* **Mongotop**: Another command-line tool, `mongotop` provides a method to track
the amount of time a MongoDB instance spends reading and writing data.
* **Mongoimport, Mongoexport**: These command-line utilities create a binary export
of the contents of a Mongo database.
* **Supports indexing, ad hoc queries and real-time aggregation**
MongoDB supports ad hoc queries by indexing BSON documents and by employing a unique query language.
* **Supports replication**: MongoDB supports two forms of replication: replica sets and master-slave.
The replication capability is important because it continuously copies data from primary to secondary servers.
* **Hashed-based sharding**: This feature applies when different parts of a
data table are spread across multiple servers.
It will distribute new entries across all available servers, making the data more evenly distributed.
Doing so solves a major and common problem: scaling.
* **File storage**: This feature is called GridFS and represents a simple file abstraction.
GridFS is basically a way of breaking up large binary objects for storage in the database.
It requires two queries: one to fetch a file’s metadata and one to fetch its contents.
As a rule of thumb, anything that’s too big to load all at once
probably isn’t something you want to load all at once on the server.
Therefore, anything you plan to stream is a good candidate for GridFS.
* **MongoDB Management Service (MMS)**: This feature is an effortless approach to operations
that would normally be overly complicated.
With a single interface, you can provision machines,
configure replica sets, and make upgrades.

Here are some brief getting started tutorials:

* [Gentle Introduction to MongoDB using Pymongo](http://altons.github.io/python/2013/01/21/gentle-introduction-to-mongodb-using-pymong/)
* [Insert, Read, Update, Delete in MongoDB using PyMongo](https://codehandbook.org/pymongo-tutorial-crud-operation-mongodb/)
* [Getting Started with MongoDB - Part 1](https://code.tutsplus.com/tutorials/getting-started-with-mongodb-part-1--net-22879)
* [Getting Started with MongoDB - Part 2](https://code.tutsplus.com/tutorials/getting-started-with-mongodb-part-2--net-23636)
* [Getting Started With MongoDB](https://dzone.com/articles/getting-started-with-mongodb)
* [Getting Started With MongoDB (Part 2)](https://dzone.com/articles/getting-started-with-mongodb-part-2)
* [Getting Started With MongoDB (Part 3)]()

## Install MongoDB
Follow the offical installation procedures with [mongoDB Documentation][05]
and see ["How to Install and Secure MongoDB 3.6 on Ubuntu 17.10"][06] for unquiness for Ubuntu 17.10.

### Step 1: Create a List File for MongoDB - DONE
Create the `/etc/apt/sources.list.d/mongodb-org-3.6.list`
list file using the command appropriate for your version of Ubuntu:

```bash
# import the public key used by the package management system
sudo apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv 2930ADAE8CAF5059EE73BB4B58712A2291FA4AD5

# list file for ubuntu 17.04
echo "deb [ arch=amd64,arm64 ] https://repo.mongodb.org/apt/ubuntu xenial/mongodb-org/3.6 multiverse" | sudo tee /etc/apt/sources.list.d/mongodb-org-3.6.list
```

### Step 2: Install and Start the MongoDB Packages - DONE
```bash
# reload the local package database sudo apt-get update

# install mongodb
sudo apt-get install -y mongodb-org

# start mongodb
sudo systemctl start mongod

# check that the service has started properly
$ sudo systemctl status mongod
● mongod.service - High-performance, schema-free document-oriented database
   Loaded: loaded (/lib/systemd/system/mongod.service; disabled; vendor preset: enabled)
   Active: active (running) since Mon 2018-05-14 21:43:22 EDT; 13s ago
     Docs: https://docs.mongodb.org/manual
 Main PID: 18465 (mongod)
    Tasks: 23
   CGroup: /system.slice/mongod.service
           └─18465 /usr/bin/mongod --config /etc/mongod.conf

May 14 21:43:22 desktop systemd[1]: Started High-performance, schema-free document-oriented database.
```

If desired, enable the automatic launch of MongoDB when the system starts.

```bash
# start mongodb at boot time
sudo systemctl enable mongod
```

You can control MongoDB service using the `systemctl` commands.
For example `sudo systemctl mongod stop` to stop the service
or `sudo systemctl mongod start` to start it again.

### Step 3: Create a MongoDB Admin User and Secure It
In its present configuration,
when you login into mongodb with `mongo`,
you don't need a user name or password and you get warning messages like this:

WARNING: Access control is not enabled for the database.
Read and write access to data and configuration is unrestricted.

To correct this,
connect to your MongoDB again using the `mongo` command and after the `> `sign,
add these queries:

```
# use the admin database for your operations
use admin

# create an administrator for all databases
db.createUser({
  user: "admin",
  pwd: "zippitydo",
  roles: [{ role: "dbAdminAnyDatabase", db: "admin" }]
})

# create a root user
db.createUser({
  user: "root",
  pwd: "zippitydo",
  roles: [{ role: "root", db: "admin" }]
})
```

This switches to the admin database and creates a new user with `dbAdminAnyDatabase` role therein.
Optionally, you may want to give the user [`root` permission][09].
You can do so using the `root` role by replacing `dbAdminAnyDatabase` with `root` in the above query.
You can [find out more about this role][10] in the official MongoDB documentation.

Edit the `mongod.conf` with this command:
`sudo vi /etc/mongod.conf`.

Below the `#security` comment, add the following lines:

```
security:
  authorization: "enabled"
```

Then restart the MongoDB service: `sudo service mongod restart`.

Now your database is secured with username and password
and the warning message should have disappeared upon your next connection to MongoDB.
Try to connect to your database using the new user we created earlier.

```bash
# login to mongodb
mongo -u “your-user-name” -p “your-password” --authenticationDatabase “admin”
```

## To Remove a User from MongoDB
To see what users you have, use the command

```
# show what users are in the admin database
show users

# remove a user
use admin
db.dropUser("myuser")
```

## To Remove MongoDB
```bash
# stop the mongod process
sudo service mongod stop

# remove any mongodb packages
sudo apt-get purge mongodb-org*

# remove mongodb databases and log files
sudo rm -r /var/log/mongodb
sudo rm -r /var/lib/mongodb
```

## The Mongo Shell
The Mongo Shell is an interactive JavaScript interface to MongoDB.
Once connected to MongoDB,
you can use the Mongo Shell to query and update data as well as perform administrative operations.

https://docs.mongodb.com/manual/mongo/
https://docs.mongodb.com/tutorials/connect-to-mongodb-shell/

## Connect to MongoDB via the Python Driver
[PyMongo][07] is a Python distribution containing tools for working with MongoDB.

### Install PyMongo
```bash
# install pymongo
sudo pip3 install pymongo
```


# InfluxData
InfluxData cliams to be a complete Time Series Platform built specifically for
metrics, events, and other time-based data.
InfuxData is realy a platfrom of tools consists of four compoents

* Telegraf Time-Series Data Collector
* InfluxDB Time-Series Data Storage
* Chronograf Time-Series Data Visualization
* Kapacitor Time-Series Data Processing

* [InfluxDB is 27x Faster vs. MongoDB for Time Series Workloads](https://www.influxdata.com/blog/influxdb-is-27x-faster-vs-mongodb-for-time-series-workloads/)
* [Raspberry Pi IoT: Sensors, InfluxDB, MQTT, and Grafana](https://dzone.com/articles/raspberry-pi-iot-sensors-influxdb-mqtt-and-grafana)
* [Playing With Docker, MQTT, Grafana, InfluxDB, Python, and Arduino](https://dzone.com/articles/playing-with-docker-mqtt-grafana-influxdb-python-a)

# OpenTSDB
[OpenTSDB][03] is a time-series database widely-used as a
monitoring tool using [Apache HBase][04] as storage.

* [15-min Getting Started Guide for OpenTSDB](https://medium.com/@zshao/15-min-getting-started-guide-for-opentsdb-44b81341f54e)

# Redis
[Redis][02] is an open source, in-memory data structure store,
supporting a large number of data structures
and is used as a database, cache, and message broker.
You can persist data by either by dumping the dataset to disk every once in a while,
or by appending each command to a log, or persistence can be disabled.
Redis also supports asynchronous replication.

[`redis-cli`][02] is the Redis command line interface,
a simple program that allows to send commands to Redis,
and read the replies sent by the server, directly from the terminal.

Time series data can be modeled in Redis in a few ways,
depending on the data and your desired access patterns.  - https://redislabs.com/redis-best-practices/time-series/

* [Build your first Redis Hello World application in Python](https://opensource.com/article/18/4/how-build-hello-redis-with-python)
* [Redis Time Series - Time Series Data implemented directly in Redis with Lua](https://medium.com/@markuman/redis-time-series-63f3442bb09d)
* [How To Troubleshoot Issues in Redis](https://www.digitalocean.com/community/cheatsheets/how-to-troubleshoot-issues-in-redis)
* [MongoDB and Redis: a different interpretation of what's wrong with Relational DBs](http://oldblog.antirez.com/post/MongoDB-and-Redis.html)
* [Why (and how to) Redis with your MongoDB](https://www.compose.com/articles/why-and-how-to-redis-with-your-mongodb/)
* [Why Your MongoDB Needs Redis](https://www.slideshare.net/itamarhaber/why-your-mongodb-needs-redis)
* [IoT Backend with Redis and Node.js](https://www.slideshare.net/RedisLabs/redisconf17-iot-backend-with-redis-and-nodejs)
* [Using Redis as a Time Series Database: Why and How](https://www.infoq.com/articles/redis-time-series)
* [Iot sensor on ESP8266 sending values to Redis](http://fcerbell.github.io/IotSensorSendingToRedis/)
* [How to Build an High Availability MQTT Cluster for the Internet of Things Create a scalable MQTT infrastructure using Node.js, Redis, HAProxy and nscale to make the deployment phase a piece of cake](https://medium.com/@lelylan/how-to-build-an-high-availability-mqtt-cluster-for-the-internet-of-things-8011a06bd000)
* [Lelylan breaks up the Internet of Things complexity defining small, independent microservices.](http://www.lelylan.com/)
* [Redis as a Primary Datastore](https://www.youtube.com/watch?v=qqeRZHWaoaU)

* [Storing Time Series in Redis](https://www.codeproject.com/Articles/1023038/Storing-Time-Series-in-Redis)
* [Redis as a Time Series Data Store with Danni Moiseyev - Redis Labs](https://www.youtube.com/watch?v=j9-QIwJ0woE)
* [How to Benchmark the Performance of a Redis Server on Ubuntu 18.04](https://www.digitalocean.com/community/tutorials/how-to-perform-redis-benchmark-tests)

# YugaByte
[Extending Redis API with a Native Time Series Data Type](https://blog.yugabyte.com/extending-redis-with-a-native-time-series-data-type-e5483c7116f8)

# Declarative Visualization in Python
[Altair](https://altair-viz.github.io/)
is a declarative statistical visualization library for Python,
based on [Vega](https://vega.github.io/vega/) and [Vega-Lite](https://vega.github.io/vega-lite/).

# Round Robin Database Tool (RRDtool)
<a href="http://oss.oetiker.ch/rrdtool/">
    <img class="img-rounded" style="margin: 0px 8px; float: left" title="RRDtool is the OpenSource industry standard, high performance data logging and graphing system for time series data. RRDtool can be easily integrated in shell scripts, perl, python, ruby, lua or tcl applications." alt="RRDtool Logo" src="{filename}/images/rrdtool-logo.jpg" width="250" height="250" />
</a>
The Round Robin Database Tool (RRDtool) is a open source graphing utility that
takes data sets you collect and graphs them.
RRDtool can be easily integrated in shell scripts, perl, python, etc.
It compiles on a number of different Linux and Unix platforms as well as on Microsoft Windows.
RRDtool is routinely used to correlates time-series data like network bandwidth, temperatures,
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

# Prometheus
* https://prometheus.io/
* [Getting started with Prometheus](https://opensource.com/article/18/12/introduction-prometheus)

# Grafana
Grafana is an open source software for time series analytics

* [Using OpenTSDB in Grafana](http://docs.grafana.org/features/datasources/opentsdb/)

# Tableau
* [Tableau & MongoDB: Visual analytics on JSON at the speed of thought](https://www.tableau.com/about/blog/2015/6/tableau-mongodb-visual-analytics-json-speed-thought-39557)

# Plotly
* [Plotly for Python](https://plot.ly/d3-js-for-python-and-pandas-charts/)
* [Python Plotly Tutorial](https://www.journaldev.com/19692/python-plotly-tutorial)
* [An introduction to plotly.js — an open source graphing library](https://medium.freecodecamp.org/an-introduction-to-plotly-js-an-open-source-graphing-library-c036a1876e2e)



[01]:https://en.wikipedia.org/wiki/Time_series_database
[02]:https://redis.io/topics/rediscli
[03]:http://opentsdb.net/
[04]:https://hortonworks.com/apache/hbase/
[05]:https://docs.mongodb.com/manual/tutorial/install-mongodb-on-ubuntu/
[06]:https://medium.com/gatemill/how-to-install-mongodb-3-6-on-ubuntu-17-10-ac0bc225e648
[07]:http://api.mongodb.com/python/current/index.html
[08]:http://www.datacenterjournal.com/5-simple-steps-get-started-mongodb/
[09]:https://docs.mongodb.com/v3.0/reference/built-in-roles/#root
[10]:https://docs.mongodb.com/v3.0/reference/built-in-roles/#dbAdminAnyDatabase
[11]:https://en.wikipedia.org/wiki/Document-oriented_database
[12]:http://nosql-database.org/
[13]:
[14]:
[15]:
[16]:http://bsonspec.org/
[17]:https://www.mongodb.org/
[18]:
[19]:
[20]:

