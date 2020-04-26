
* [Differences between Iperf and SpeedTest](https://netbeez.net/blog/differences-between-iperf-and-speedtest/)
* [7 Common Network Latency Culprits](https://www.networkcomputing.com/networking/7-common-network-latency-culprits/851316634)
 * [3 handy command-line internet speed tests](https://opensource.com/article/20/1/internet-speed-tests)

# LAN Test
* https://www.linode.com/docs/networking/diagnostics/install-iperf-to-diagnose-network-speed-in-linux
* https://linuxaria.com/article/tool-command-line-bandwidth-linux
* https://www.linux.com/learn/five-funny-little-linux-network-testers-and-monitors
* https://lifehacker.com/how-to-test-your-internet-speed-with-a-terminal-command-1364123567
* http://deice.daug.net/netcat_speed.html

 # Internet Test
* http://openspeedtest.com/
* speedtest-cli - https://github.com/sivel/speedtest-cli
* https://github.com/ddsol/speedtest.net
* https://www.broadbandmap.gov/internet-service-providers/lessburg-va/lat=39.1156615/long=-77.5636015/
* https://github.com/sanderjo/fast.com
* https://github.com/sindresorhus/fast-cli
* https://github.com/sanderjo/fast.com

# Linux Performance
* [Linux Performance Analysis in 60,000 Milliseconds](https://medium.com/netflix-techblog/linux-performance-analysis-in-60-000-milliseconds-accc10403c55)
* [Linux Performance](http://www.brendangregg.com/linuxperf.html)
* [CPU utilization is wrong](https://opensource.com/article/18/4/cpu-utilization-wrong)
* [7 tools for analyzing performance in Linux with bcc/BPF](https://opensource.com/article/17/11/bccbpf-performance)
* [Netflix FlameScope](https://medium.com/netflix-techblog/netflix-flamescope-a57ca19d47bb)


I have had some significant performance problems with computer vision projects using OpenCV.
The project worked reasonable while on my home network or when using my JetPack.
But when I went to a client site,
my performance was very poor when using my JetPack.
I suspected it was a very congested WiFi spectrum but I had no way to really diagnose the problem.

I wasn't sure of the problem was the limited bandwidth of the Raspberry Pi
(As stated [here][03] and what I have measured,
the Raspberry Pi has a 10/100 Mbps interface, with maximum traffic throughput of about 95 Mbps.)

* Caveats of Traditional Network Tools – Part II: Iperf - https://blog.thousandeyes.com/caveats-of-traditional-network-tools-iperf/
* [Install iPerf to Diagnose Network Speed in Linux](https://linode.com/docs/networking/diagnostics/install-iperf-to-diagnose-network-speed-in-linux/)
* [Troubleshooting Client Speed using iPerf](https://documentation.meraki.com/zGeneral_Administration/Tools_and_Troubleshooting/Troubleshooting_Client_Speed_using_iPerf)
* [IPERF: How to test network Speed,Performance,Bandwidth](https://www.slashroot.in/iperf-how-test-network-speedperformancebandwidth)
* [Iperf cheat sheet](https://www.jamescoyle.net/cheat-sheets/581-iperf-cheat-sheet)
* [Video: iPerf3 Interoperability](https://www.youtube.com/watch?v=_K6uUOZwr40)

# Network Performance Testing with wget
If you want to test throughout and packet loss,
iPerf or iPerf3 are the way to go since those tools run in memory.
But if you want to measure the true performance of a web server,
you would want to include the latency introduced by its storage system and load.
In this case, you need to download a file from the server.

* [Free Network Performance Test Tool: Wget](https://www.networkcomputing.com/networking/free-network-performance-test-tool-wget/863281230)

# iPerf
[iPerf][01] is a command-line tool used in the diagnostics of network speed issues.
iPerf measures the maximum network throughput a server can handle.
It is particularly useful when experiencing network speed issues,
as you can use iPerf to determine which server is unable to reach maximum throughput.

[!iperf-diagram](http://www.blog.creativform.com/wp-content/uploads/2015/04/IPERFmeasureBandwidth.png)
iPerf must be installed on both computers between which you are testing the connection.
The quality of a link can be tested as follows:

* **Latency**: response time can be measured with the Ping command.
* **Jitter**: latency variation can be measured with an Iperf UDP test.
* **Datagram Loss**: can be measured with an Iperf UDP test.

>To be clear, the difference between TCP (Transmission Control Protocol)
and UDP (User Datagram Protocol) is that TCP use processes to check that the
packets are correctly sent to the receiver whereas with UDP the packets are sent
without any checks but with the advantage of being quicker than TCP.
Iperf uses the different capacities of TCP and UDP to provide statistics about network links.

Install iPerf via `sudo apt install iperf`.

## iPerf Usage Examples
* **iperf -s** - runs iperf in the server mode.
* **iperf -s -D** - runs iperf in the server mode as a continuously running daemon.
* **iperf -c 10.1.1.1** - runs iperf in the client mode, where the server’s IP address is 10.1.1.1 (by default, only the bandwidth from the client to the server is measured).
* **iperf -c 10.1.1.1 -r** - connects back to the client allowing the bi-directional bandwidth measurement.
* **iperf -c 10.1.1.1 -d** - implies simultaneous bi-directional bandwidth measurement. If you want to test the bandwidths sequentially, use the -r argument (see the previous example).
* **iperf -c 10.1.1.1 -w 4000** - w switch defines TCP window size – amount of data that can be buffered during a connection without a validation from the receiver (it can be between 2 and 65,535 bytes).
* **server side: iperf -s -p 12000 and client side: iperf -c 10.1.1.1 -p 12000** - p switch must be set on both sides and its value defines a communication port. By default, the Iperf client connects to the Iperf server on the TCP port 5001 and the bandwidth displayed by Iperf is the bandwidth from the client to the server.
* **iperf -c 10.1.1.1 -t 30** - specifies the test duration time in seconds (default is 10 seconds).
* **iperf -c 10.1.1.1 -t 30 -i 3** - i argument specifies the interval in seconds between periodic bandwidth reports.
* **iperf -h** - provides you with detailed help starting with command format: iperf [-s|-c host] [options], then explanation of the arguments/switches, etc.

Great reference manual that describes how to use these switches
(eg. how to use -u switch to perform UDP test)
can be found at the [iPerf project site][01] and on the [iPerf man page][02].

# Network Throughput Testing
* **SpeedTest**: pushes traffic to an Internet server and measures latency,
and upload and download speed.
* **Iperf**: pushes TCP or UDP traffic between two hosts under your management
and can measure bandwidth, jitter, and packet loss. Mostly used in WAN testing.

* [Measuring Web Latency in the Browser](https://hackaday.com/2018/07/21/measuring-web-latency-in-the-browser/)

## Internet Bandwidth Testing
* speedtest-cli - https://github.com/sivel/speedtest-cli

Install `speedtest-cli`:

```bash
# install speedtest-cli
sudo -H pip3 install speedtest-cli
```

Usage of `speedtest-cli`:

```bash
# internet speed test of a raspberry pi 3
$ speedtest-cli
Retrieving speedtest.net configuration...
Testing from Verizon Fios (108.44.239.158)...
Retrieving speedtest.net server list...
Selecting best server based on ping...
Hosted by BroadAspect (Ashburn, VA) [15.09 km]: 7.109 ms
Testing download speed................................................................................
Download: 93.37 Mbit/s
Testing upload speed......................................................................................................
Upload: 87.12 Mbit/s

# simple output
$ speedtest-cli --simple
Ping: 8.075 ms
Download: 93.17 Mbit/s
Upload: 93.93 Mbit/s
```

```json
# internet speed test of desktop
$ speedtest-cli --json | python -m json.tool
{
    "bytes_received": 409373932,
    "bytes_sent": 151519232,
    "download": 703060667.2150407,
    "ping": 4.442,
    "server": {
        "cc": "US",
        "country": "United States",
        "d": 15.092170307793129,
        "host": "speedtest.broadaspect.net:8080",
        "id": "3810",
        "lat": "39.0436",
        "latency": 4.442,
        "lon": "-77.4878",
        "name": "Ashburn, VA",
        "sponsor": "BroadAspect",
        "url": "http://speedtest.broadaspect.net/speedtest/upload.php"
    },
    "share": null,
    "timestamp": "2017-10-31T03:01:27.533658Z",
    "upload": 703958176.3113049
}
```

## General Bandwidth Testing
We want to measure the network perfromance from the `iperf` client to the `iperf` server.
The fist thing you might want are the host names or IP address of the systems your
performance testing.
You can use the following to get this information:

```bash
# get the host name
hostname

# local IP addresses provided to the system
ip route get 8.8.8.8 | awk '{print $NF; exit}'

# extenal IP address
curl ipecho.net/plain
```

Next lets start the server.
Use this to start an `iperf` server listener process.

```bash
# start the server
iperf --server --port 5999 --parallel 2 --interval 5 --format M

# equivalent
iperf -s -p 5999 -P 2 -i 5 -f M

# simple form
iperf -s -i 5
```

This will start an `iperf` listener:

* **--server** - run in server mode
* **--port 5999** - listen on port 5999 (the default is port 5001, however)
* **--interval 5** - report on the connections every 5 seconds.
* **--format M** - report in kilibits (k,m,K,M for Kbits, Mbits, KBytes, MBytes)
* **--parallel 2** - limit the iperf process to providing two connections,
and after the second connection the server process will exit.
Placing in a value of zero will allow the iperf process to listen continually
and without limit to the number of connections until closed.

Now we'll start the client side and connect it to the listener.
To launch a client connection to a server named s-network1.amcs.tld using port 5999 (the non-default used in the previous example) for 60 seconds with a 5-second display interval, enter the following command:

```bash
# start the client
iperf --client BlueRPi --port 5999 --parallel 2 --interval 5 --format M --time 30

# equivalent
iperf -c BlueRPi -p 5999 -P 2 -i 5 -f M -t 30

# simple form
iperf -c BlueRPi -i 5
```

This will start an `iperf` client:

* **--client BlueRPi** run in client mode, connecting to BlueRPi
* **--port 5999** - connect on port 5999 (the default is port 5001, however)
* **--interval 5** - report on the connections every 5 seconds.
* **--format m** - report in kilibits (k,m,K,M for Kbits, Mbits, KBytes, MBytes)
* **--time 30** - time in seconds to transmit for (default 10 secs)

## One-Way Ping (OWAMP)
* [One-Way Ping (OWAMP)](http://software.internet2.edu/owamp/)

## Jitter & Packet Loss

## Permanently Running iPref
You can set up an iPerf server to run permanently on a host
(running as a deamon via `iperf -s -D`)
and then target that host to get iPerf measurements from several locations.
This is convenient because you don’t have to manage two hosts each time you want to run a test.
But after some time,
the iPerf server wouldn’t respond and error messages appeared on the iPerf client side.

[How to Fix Bugs on a Permanent iPerf Server](https://netbeez.net/blog/fix-iperf-bug/)

# PerfSonar
* [How to test your network with PerfSONAR](https://opensource.com/article/18/11/how-test-your-network-perfsonar)




[01]:https://iperf.fr/
[02]:https://code.google.com/p/iperf/wiki/ManPage
[03]:https://netbeez.net/blog/iperf-test/
[04]:
[05]:
[06]:
[07]:
[08]:
[09]:
[10]:
