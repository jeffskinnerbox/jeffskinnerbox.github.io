
* [NetBeez Blog](https://netbeez.net/blog/)
* [A sysadmin's guide to network management](https://opensource.com/article/18/7/sysadmin-guide-networking-commands)
* [Cisco Networking Basics: IP Addressing](https://www.networkcomputing.com/networking/cisco-networking-basics-ip-addressing/636970615)
* [Nmap Tutorial: Common Commands](https://www.networkcomputing.com/networking/nmap-tutorial-common-commands/520799832)
* [A List of Network Monitoring Tools for Network and System Administrators](https://www.cellstream.com/intranet/reference-reading/tipsandtricks/330-a-list-of-network-monitoring-tools-for-network-and-system-administrators.html)
* [What are useful command-line network monitors on Linux](http://xmodulo.com/useful-command-line-network-monitors-linux.html)
* [8 Linux Commands: To Find Out Wireless Network Speed, Signal Strength And Other Information](http://www.cyberciti.biz/tips/linux-find-out-wireless-network-speed-signal-strength.html)
* [useful CLI tools for Linux system admins](http://xmodulo.com/useful-cli-tools-linux-system-admins.html)
* [20 Command Line Tools to Monitor Linux Performance](http://www.tecmint.com/command-line-tools-to-monitor-linux-performance/)
* [80 Linux Monitoring Tools](https://blog.serverdensity.com/80-linux-monitoring-tools-know/)
* [SysUsage: the sysstat and sar grapher](http://sysusage.darold.net/index.html)
* [10 Useful Sar (Sysstat) Examples for UNIX / Linux Performance Monitoring](http://www.thegeekstuff.com/2011/03/sar-examples/?utm_source=feedburner)
* [14 Essential Network Troubleshooting Tools](http://www.networkcomputing.com/networking/14-essential-network-troubleshooting-tools/2076793987)
* [Unix Toolbox - a collection of Unix/Linux/BSD commands for advanced users](http://cb.vu/unixtoolbox.xhtml)

* [7 Common Network Latency Culprits](https://www.networkcomputing.com/networking/7-common-network-latency-culprits/851316634)

* [ip vs. ifconfig - WILT](http://www.innervoice.in/blogs/2015/11/27/ip-vs-ifconfig-wilt/)
* [A Subnetting Primer](https://danielmiessler.com/study/subnetting/)
* [IPv4 Subnetting Best Practices](https://www.networkcomputing.com/networking/ipv4-subnetting-best-practices/319505609)
* [Firewalls](https://danielmiessler.com/study/firewalls/)
* [An IPTABLES Primer](https://danielmiessler.com/study/iptables/)
* [16 iptables tips and tricks for sysadmins](https://opensource.com/article/18/10/iptables-tips-and-tricks)
* [An NMAP Primer](https://danielmiessler.com/study/nmap/)
* [20 Myths of WiFi Interferance](http://www.wifiadvies.be/20-myths-of-wi-fi-interference/)
* [Simple WebSocket Client](https://chrome.google.com/webstore/detail/simple-websocket-client/pfdhoblngboilpfeibdedpjgfnlcodoo?hl=en)

mitmproxy
* [mitmproxy - Tools for Analysising and Inspecting HTTP Traffic](https://mitmproxy.org/)
* [How To: Use mitmproxy to read and modify HTTPS traffic](https://blog.heckel.xyz/2013/07/01/how-to-use-mitmproxy-to-read-and-modify-https-traffic-of-your-phone/)
* [Decrypt your HTTPS traffic with mitmproxy](http://www.darkcoding.net/software/decrypt-your-https-traffic-with-mitmproxy/)
################################################################################


# Background
* [Networking tutorial](https://www.youtube.com/watch?v=XaGXPObx2Gs&list=PLowKtXNTBypH19whXTVoG3oKSuOcw_XeW)
Practical Networking
* [OSI Model](https://www.practicalnetworking.net/series/packet-traveling/osi-model/)
* [Key Network Elements](https://www.practicalnetworking.net/series/packet-traveling/key-players/)
* [Host to Host communication](https://www.practicalnetworking.net/series/packet-traveling/host-to-host/)
* [Host to Host communication through a Switch](https://www.practicalnetworking.net/series/packet-traveling/host-to-host-through-a-switch/)
* [Host to Host communication through a Router](https://www.practicalnetworking.net/series/packet-traveling/host-to-host-through-a-router/)
* [Packet Traveling (Part 1)](https://www.practicalnetworking.net/series/packet-traveling/packet-traveling/)
* [Packet Traveling (Part 2)](https://www.practicalnetworking.net/series/packet-traveling/packet-traveling-series-finale/)
* [Packet Traveling - How Packets Move Through a Network](https://www.youtube.com/watch?v=rYodcvhh7b8)
* [Address Resolution Protocol (ARP)](https://www.practicalnetworking.net/series/arp/address-resolution-protocol/)
* [Network Address Translation (NAT)](https://www.practicalnetworking.net/series/nat/nat/)
* [Cryptography](https://www.practicalnetworking.net/series/cryptography/cryptography/)

# Computer Networking
TCP/IP has become the global protocol for computer networking.

* [OSI: The Internet That Wasn’t](http://spectrum.ieee.org/computing/networks/osi-the-internet-that-wasnt)

Most network configuration manuals still refer to `ifconfig` and `route`
as the primary network configuration tools,
but `ifconfig` is known to behave inadequately in modern network environments.
They, and the whole [net-tools suite][15], are being deprecated,
but most Linux distros still include them.
They should be replaced by the [iproute2 suite][14].
iproute2 (usually shipped in a package called iproute or iproute2)
consists of several tools, of which the most important are `ip` and `tc`.
`ip` controls IPv4 and IPv6 configuration and `tc` stands for traffic control.
The iproute2 collection contains the following command-line utilities:
`ip`, `ss`, `bridge`, `rtacct`, `rtmon`, `tc`, `ctstat`, `lnstat`,
`nstat`, `routef`, `routel`, `rtstat`, and `arpd`.

what about ethtool, netifd, nm-tool, nm-online, [nmcli](https://fedoraproject.org/wiki/Networking/CLI)
* [Connect to a wireless network using command line nmcli](https://nullr0ute.com/2016/09/connect-to-a-wireless-network-using-command-line-nmcli/)

* Why nm-tool is no longer available in Ubuntu 15.04? - http://askubuntu.com/questions/617067/why-nm-tool-is-no-longer-available-in-ubuntu-15-04
* 9 Linux ethtool Examples to Manipulate Ethernet Card (NIC Card) - http://www.thegeekstuff.com/2010/10/ethtool-command/
* Fun with ethtool - http://www.linuxjournal.com/content/fun-ethtool
*  Stop using telnet to test network connectivity - http://scotte.github.io/2015/03/stop-using-telnet/

# Linux Traffic Control
Traffic control (tc) is a very useful Linux utility that gives you the ability to configure the kernel packet scheduler.
On Debian Linux, tc comes bundled with iproute, so in order to install it you have to run `apt-get install iproute`.

* [How to Use the Linux Traffic Control](https://netbeez.net/blog/how-to-use-the-linux-traffic-control/)
* [tc - show / manipulate traffic control settings](https://www.linux.com/blog/tc-show-manipulate-traffic-control-settings)
* [Traffic Shaping with tc](https://www.badunetworks.com/traffic-shaping-with-tc/)
* [Traffic Shaping, Bandwidth Shaping, Packet Shaping with Linux tc htb](https://www.iplocation.net/traffic-control)

# How to Configure Networking in Linux
* [How to configure networking in Linux](https://opensource.com/life/16/6/how-configure-networking-linux?sc_cid=701600000011yI7AAI)

# NetworkManager
* [RPi NetworkManager CLI](http://gary-dalton.github.io/RaspberryPi-projects/rpi_nmcli.html)
* [Exploring NetworkManager, D-Bus, systemd, and Raspberry Pi](http://dev.iachieved.it/iachievedit/exploring-networkmanager-d-bus-systemd-and-raspberry-pi/)
* According to [this article](https://raspberrypi.stackexchange.com/questions/48307/sharing-the-pis-wifi-connection-through-the-ethernet-port),
Network Manager can conflict with dhcpd (the default manager on Raspbian), hence you may need to disable dhcpd.

* [Pack Your Bags – Systemd Is Taking You To A New Home](https://hackaday.com/2019/10/16/pack-your-bags-systemd-is-taking-you-to-a-new-home/)

NetworkManager is a service for Linux which manages various networking interfaces,
including physical such as Ethernet and wireless,
and virtual such as VPN and other tunnels.
NetworkManager can be configured to control some or all of a system’s interfaces.
NetworkManager aims for Network Connectivity which "Just Works".
The computer should use the wired network connection when it's plugged in,
but automatically switch to a wireless connection when the user unplugs it
and walks away from the desk.
Likewise, when the user plugs the computer back in,
the computer should switch back to the wired connection.
The user should, most times, not even notice that their connection has been managed for them;
they should simply see uninterrupted network connectivity.

It is the [NetworkManager][51] daemon attempts to make networking configuration
and operation as painless and automatic as possible
by managing the primary network connection and
other network interfaces, like Ethernet, WiFi, and Mobile Broadband devices.
NetworkManager also has a command-line tool for controlling it, called [`nmcli`][60].
NetworkManager will connect any network device when a connection for that device becomes available,
unless that behavior is disabled.
If using DHCP, NetworkManager is intended to replace [default routes][52],
obtain IP addresses from a [DHCP server][53], and change [name servers][54] whenever it sees fit.
In effect, the goal of NetworkManager is to make networking Just Work.
For maximum control, it may make sense to [disable NetworkManager][55]
on some or all your interfaces.

**WARNING:** [Iptables and NetworkManager can conflict][47].
NetworkManager and iptables have opposite aims.
Iptables aims to keep any questionable network traffic out.
NetworkManager aims to keep you connected at all times.
Therefore if you want security all the time,
run iptables at boot time.
If you want security some of the time then NetworkManager might be the right choice.
Network Manager is used by default in most Linux desktop environments nowadays,
but it can be disabled (see ["How to disable Network Manager on Linux"][55]
and ["How do I prevent Network Manager from controlling an interface?"][62]),
if you prefer the old plain network service.

Within the Ubuntu and Debian distributions,
one way to tell NetworkManager to stop controlling a particular interface
is by telling NetworkManager to ignore ALL interfaces listed in the `/etc/network/interfaces` file.
This is done by adding the following lines to the Network Manager configuration file:

```
[main]
plugins=ifupdown

[ifupdown]
managed=false
```

Since this will only affect interfaces listed in the `/etc/network/interfaces` file,
any interface not listed there will remain under NetworkManager control.

####################
* also see
    * [10 basic examples of linux netstat command](http://www.binarytides.com/linux-netstat-command-examples/)
    * [tshark - Monitor network traffic tutorial](http://www.linuxuser.co.uk/tutorials/monitor-network-traffic-tutorial)
    * [10 Free Server & Network Monitoring Tools that Kick Ass](http://sixrevisions.com/tools/10-free-server-network-monitoring-tools-that-kick-ass/)
    * [Raspberry Pi – control your network traffic with Nagios](https://developer-blog.net/en/hardware-2/raspberry-pi-control-your-network-traffic-with-nagios/)
    * [Raspberry Pi and Distributed Network Monitoring: Iperf](https://netbeez.net/2014/08/19/raspberry-pi-and-distributed-network-monitoring-iperf/)
    * [How to Build a Portable Hacking Station with a Raspberry Pi and Kali Linux](http://lifehacker.com/how-to-build-a-portable-hacking-station-with-a-raspberr-1739297918)
    * [A tcpdump Primer with Examples](https://danielmiessler.com/study/tcpdump/)
####################

* **Tools to Query about Your or Other IP Addresses**
    * [What is my IP Address][41]- Your IP address and location can be found using this tool.
    * [Lookup IP Address Location][42] - If you can find out the IP address of an Internet user, you can get an idea what part of the country or world they're in by using our IP Lookup tool.
    * [Find Email Address Source][43] - how to find and copy an email header and paste it into the Trace Email Analyzer to get the sender's IP address and track the source.
    * [How to Hide Your IP Address][44] - Borrow a different IP address to go anywhere online and stay hidden.

* **Tools for Querying / Configuring IP Network**
    * [`ip`][17] shows and manipulates routing, devices, policy routing, and tunnels
    * [`ifconfig`][16] is a network interface configuration, control, and query tool.
    The `ifconfig` command is deprecated and you can replace `ifconfig` by `ip link`.
    * [`tc`][19] (traffic control) configures and controls the Linux kernel's
    network scheduler to show and manipulate network traffic control settings
    * [`ifrename`][13] allows to rename wireless network interfaces based on various
    static criteria to assign a consistent name to each interface.
    * [`arp`][20] (address resolution protocol) is used to translate Internet protocol addresses to
    hardware interface addresses.
    The `arp` command is deprecated and you can replace `arp -na` by `ip neigh`.
    * [`arp-scan`][65] is a very fast ARP packet scanner that shows every active IPv4 device on your Subnet
    ([Arp-scan User Guide][66])
    * [`arpwatch`][74] as the name implies, watches the MAC to IP pairings of devices on the network.
    If these change, then arpwatch will log and send an email to alert.
    In addition to changes, it will alert with new MAC to IP pairings.
    * [`route`][27] command is used to show/manipulate the IP routing table.
    It is primarily used to setup static routes to specific host or networks via an interface.
    * [`nslookup`][28] is a tool for querying the Domain Name System (DNS) to obtain domain name
    or IP address mapping or for any other specific DNS record.

* **Tools for Querying / Configuring WiFi**
    * [`iw`][02] show / manipulate wireless devices and their configuration.
    It is also used in the system startup scripts of many operating systems.
    * [`iwconfig`][18] is used to display and change the parameters of the
    wireless network interface (e.g. interface name, frequency, SSID).
    It may also be used to display the wireless statistics (extracted from `/proc/net/wireless`).
    Note that `iwconfig` is depreciated, you should use `iw` instead.
    * [`iwpriv`][34] is the companion tool to `iwconfig`. `iwpriv` deals with
    parameters and setting specific to each driver (as opposed to `iwconfig`
    which deals with generic ones).
    * [`iwgetid`][63] - reports ESSID, NWID or AP/Cell Address of wireless networks
    * [`iwlist`][12] allow to initiate scanning and list frequencies, bit-rates, encryption keys, etc.
    **Example Usage:** `iwlist wlan0 scan`
    * [`wpa_supplicant`][03]

* **Tools for Monitoring / Controlling Network Time**

* **Tools for Monitoring / Scanning IP Network**
    * [`nmap`][29] (network mapper) is a security tool for network exploration,
    q security scanning, and auditing.
    `nmap` sends specially crafted packets to discover hosts and services on a computer network,
    thus creating a "map" of the network.
    * [`zenmap`][91] is the official GUI for Nmap
    It is not to replace Nmap, but to make Nmap more useful.
    * [Angry IP Scanner (`ipscan`)][75] is an open-source and cross-platform
    network scanner designed to be fast and simple to use.
    It scans IP addresses and ports as well as has many other features.
    * [`ettercap`][30] is a network security tool for man-in-the-middle attacks on LAN.
    It is capable of intercepting traffic on a network segment, capturing passwords,
    and conducting active eavesdropping against a number of common protocols.
    * [`bettercap`][90] is like `ettercap`, but claims to be better.
    * [`netstat`][09] (network statistics) is a command-line tool that displays
    network connections for TCP (both incoming and outgoing),
    routing tables, and a number of network interface and network protocol statistics.
    **Example Usage:** `netstat -ie`
    * [`nethogs`][71] is a small "net top" tool. Instead of breaking the traffic down per protocol or per subnet,
    like most tools do, it groups bandwidth by process.
    * [`iptraf-ng`][72]  is a console-based network statistics utility for Linux.
    It gathers a variety of figures such as TCP connection packet and byte counts,
    interface statistics and activity indicators, TCP/UDP traffic breakdowns,
    and LAN station packet and byte counts.
    * [`nicstat`][10] prints network traffic, packets or Kb/s read and written.
    Its a utility like `top` for network interface card (NIC).
    It displays information and statistics about all your network card such as packets,
    kilobytes per second, average packet sizes and more.
    **Example Usage:** `nicstat -i wlan0 1`
    * nethogs & iftop - http://www.tecmint.com/nethogs-monitor-per-process-network-bandwidth-usage-in-real-time/

* **Tools for Monitoring / Scanning WiFi**
    * [`wavemon`][07] is a ncurses-based monitoring application for wireless network devices.
    It displays continuously updated information about signal levels, as well as,
    wireless-specific and general network information.
    **Example Usage:** `wavemon wlan0`
    * [`iwevent`][08] is another command line tool that displays wireless events
    received through the [RTNetlink socket][06].
    Each line displays the specific wireless event which describes
    what has happened on the specified wireless interface.
    **Example Usage:** `iwevent`
    * [`iwspy`][33] is used to set a list of addresses to monitor in a
    wireless network interface and to read back quality of link information for each of those.
    * [`rfkill`][61] - tool for enabling and disabling wireless devices

* **IP Network Packet Analysis**
    * [`tcpdump`][31] is a common packet analyzer that runs under the command line.
    It allows the user to display TCP/IP and other packets being transmitted or
    received over a network to which the computer is attached.
    * [`dumpcap`][73] is a network traffic dump tool.
    It lets you capture packet data from a live network and write the packets to a file.
    * [`wireshark`][32] (originally called `ethereal`) is the world's de facto
    network protocol analyzer letting you do deep inspection of hundreds of protocols,
    live capture, and offline analysis.
    * [`tshark`][35] the command-line version of Wireshark.
    The main advantage of tshark is that it can be used in scripts.
    Its main disadvantage is that it does not have a GUI.

* **Linux Performance Monitoring**
    * [`vmstat`][89] is a tool that collects and reports data about your system’s memory, swap,
    and processor resource utilization in real time.
    It can be used to determine the root cause of performance and issues related to memory use.

* **IP Performance**
    * [iPerf3][56] is a tool for active measurements of the maximum achievable bandwidth on IP networks.
    It supports tuning of various parameters related to timing, bandwidth, loss, and other parameters.

* **IP Networking Utilities**
    * [`ping`][25] (Packet Internet Gropper) is like a sonar pulse sent to detect another IP address.
    It is used to test the connection and latency between two network connections.
    * [prettyping](http://denilson.sa.nom.br/prettyping/)
    runs the standard `ping` in background and parses its output,
    showing ping responses in a colorful, graphical, easier to read way at the terminal.
    * [`traceroute`][26] (trace route) is a diagnostic tool for displaying the route
    (path) and measuring transit delays of packets across an IP network.
    * [`mtr` aka My TraceRoute or Matt's TraceRoute][70] combines the functions of the traceroute
    and ping programs in one network diagnostic tool.
    The Windows equivalent is [`pingpath`][84].
    * [`cryping`][69] is a `ping` like command line utility that extends the functionality
    of the traditional `ping` command to include ping individual specific ports,
    ping HTTP, SMTP, POP3 or NNTP services, time stamps, audible alarms, etc.
    * [`dig`][59] (domain information groper) is a flexible tool for interrogating DNS name servers.
    It performs DNS lookups and displays the answers that are returned from the name server(s) that were queried.
    * [`netcat` or `nc`][22] is a [highly functional][21] Unix utility which reads and writes data
    across network connections, using TCP or UDP protocol.
    It is designed to be a reliable "back-end" tool that can
    be used directly or easily driven by other programs and scripts.
    * [`ncat`][23] is a feature-packed networking utility which reads and writes
    * [`socat`][67] is as the cat command which transfers data between two locations rather
    than from a file to standard output.  You can grab data from a network socket, named pipe,
    or even setup a general virtual network interface as one end point.
    * [`wscat`][68] allows you to connect directly to a websocket server
    and receive/send data in a terminal like environment.
    * [`blucat`](http://blucat.sourceforge.net/blucat/) is netcat for Bluetooth
    data across networks from the command line.
    Ncat was written a much-improved reimplementation of `netcat`.
    `ncat` will work with IPv4, IPv6, and has many potential uses.

* **Terminal Access**
    * [`telnet`][24] ([teletype network][85]) is a computer protocol that provides
    two-way interactive communication used on the Internet
    or local area network to provide text-oriented
    communication facility using a virtual terminal connection.
    **Example Usage:** `telnet 192.168.8.1`
    * [`ssh`][]
    * [`tmux`][88] is a terminal multiplexer that allows us to create multiple sessions
    that act roughly like terminal windows, create windows that act like tabs,
    and create panes that let us split `tmux` windows horizontally and vertically.
    * [`tty-share`][86] is a command line tool that you could use to share your
    remote access terminal session with somebody. To make the setup easy,
    your session is in a terminal but a browser is used for the remote end.
    * [`tmate`][87] is built on top of `tmux` and is very similar to `tty-share`
    but requires a `ssh` terminal session on the remote end.

################################################################################

fprobe, nfcapd, and nfdump
fprobe is a tools that listens to an interface, collects network traffic data, and creates NetFlow records while nfdump reads and displays the NetFlow files stored by the nfcapd NetFlow capture daemon. Engineers can run nfcapd on the same machine as fprobe or on a different computer and use it to collects flows from multiple sources and put into directories. Nfdump can be used to create top N lists such as conversations and protocols.

Cacti
With Cacti, networking pros can graph SNMP values over time. It's handy for utilization, UPS statistics, and work with most any SNMP-managed device. Devices can be added and monitored over long periods of time, and can track not only interface utilization, but availability and response time.
* [How To Install and Configure an SNMP Daemon and Client on Ubuntu 18.04](https://www.digitalocean.com/community/tutorials/how-to-install-and-configure-an-snmp-daemon-and-client-on-ubuntu-18-04)

SmokePing
The open source SmokePing tool measures network latency, packet loss, and long-term changes in latency. The software sends multiple ping packets, usually 20, to the target host, then charts out the response times for each of the ping relies. The distribution gives you an idea of variations in response times.

OpenNMS
OpenNMS is a free and open source platform for network device and service availability monitoring. Features include outage notifications, availability reports, and scalability. OpenNMS is available in two platforms, Meridian and Horizon; Meridian is designed more for enterprises who want stability while Horizon is designed for monitoring new technologies such as Docker.

AirCrack-ng
This is a WiFi network security assessment tool that's handy for discovering nearby networks and clients. Network pros can use AirCrack-ng for packet capture and export the data to test files for additional processing by third-party tools.

arpspoof
This technique is commonly used for hacking, but network pros can use it to setup a quick man-in-the-middle packet capture for auditing purposes. It eliminates the need for a span or tap. Installing dsniff, a collection of network auditing and pen testing tools, will enable arpspoof and dnsspoof.

Snort
Snort is a well-known open source intrusion-detection and prevention system that uses a ruleset to analyze traffic, creates alerts, and stores problematic packets. Rules can be customized based on a company's specific needs. Snort was created by Martin Roesch, who founded Sourcefire, which sold a commercial version of the software. Cisco bought Sourcefire in 2013 and supports the open source Snort alongside a commercial version.

curl
This tool is used in command lines or scripts to transfer data, usually to and from a server. In networking, it can be used to measure website response time.

Elasticsearch, Logstash, and Kibana (ELK)
The open source ELK stack enables data collection and search. Logstash collects data such as syslog and local log files, and formats and writes the data to Elasticsearch. Kibana provides an interface to visualize the stored data and creates dashboards.

################################################################################

# Network Bandwidth Monitoring
* [18 commands to monitor network bandwidth on Linux server](https://www.binarytides.com/linux-commands-monitor-network/)
* [Best Tools To Monitor Network Bandwidth On A Linux Server](https://phoenixnap.com/kb/linux-network-bandwidth-monitor-traffic)
* [How to display network traffic in the terminal?](https://askubuntu.com/questions/257263/how-to-display-network-traffic-in-the-terminal)

################################################################################

[Howto Check Wireless link quality in Ubuntu Linux](http://www.ubuntugeek.com/howto-check-wireless-link-quality-in-ubuntu-linux.html)
[A tcpdump Tutorial and Primer](https://danielmiessler.com/study/tcpdump/)
[An introduction to using tcpdump at the Linux command line](https://opensource.com/article/18/10/introduction-tcpdump)
http://www.cyberciti.biz/networking/nmap-command-examples-tutorials/
http://www.thegeekstuff.com/2010/08/tcpdump-command-examples/
http://technet.microsoft.com/en-us/library/cc786759(v=ws.10).aspx
http://www.tecmint.com/ip-command-examples/
http://www.computerhope.com/unix/unslooku.htm
http://www.computerhope.com/unix/route.htm
http://www.thegeekstuff.com/2012/04/route-examples/
http://pcsupport.about.com/od/commandlinereference/p/tracert-command.htm
http://www.cyberciti.biz/faq/unix-ping-command-examples/
http://www.linux.org/threads/tcp-ip-utilities-ping-and-traceroute.4848/
http://www.thegeekstuff.com/2009/11/ping-tutorial-13-effective-ping-command-examples/
http://www.sanfoundry.com/10-ping-command-usage-examples-linux/
http://www.computerhope.com/unix/arp.htm
http://www.cyberciti.biz/faq/linux-traffic-shaping-using-tc-to-control-http-traffic/
http://www.cyberciti.biz/faq/linux-ip-command-examples-usage-syntax/
https://www.digitalocean.com/community/tutorials/how-to-use-iproute2-tools-to-manage-network-configuration-on-a-linux-vps
[iproute2 cheatsheet](http://baturin.org/docs/iproute2/)
http://www.computerhope.com/unix/ip.htm
http://linoxide.com/linux-command/use-ip-command-linux/
[Wireless Tools for Linux / Wireless Applications for Linux](http://www.hpl.hp.com/personal/Jean_Tourrilhes/Linux/Tools.html#links)
[Cheat Sheets](http://packetlife.net/library/cheat-sheets/)

################################################################################

## Network Time Protocol (NTP)
One problem with logging events over a network is that differences in system clocks
can make correlating events on different systems very difficult.
It is not unusual for the clock on a system to have drifted considerably.
Network Time Protocol (NTP) provides a mechanism so that one system can compare
and adjust its clock to match another system's clock.

The list of the NTP server pools can be found at the [NTP Pool Project][80].


[`timedatectl`][81] is a utility within the `systemd` system and service manager,
and replaces the traditional `date` command used in the `sysvinit` daemon based Linux distributions.
The `timedatectl` command allows you to query and change the configuration
of the system clock and its settings,
you can use this command to set or change the current date,
time and timezone or enable automatic system clock synchronization with a remote NTP server.

[ntpdate][82] (deprecated and replaced with `ntpd -q`) sets the local date and time by polling the Network Time Protocol (NTP) server(s) given as the server arguments to determine the correct time.
In most Linux systems, the ntpdate command is not installed by default.

`ntpd` is an operating system daemon which sets and maintains
the system time of day in synchronism with Internet standard time servers.

ntptrace

### Verify NTP is Working Or Not
You can use any one of the following program to verify ntp client configuration:

* `ntpq` – standard NTP query program
* `ntpstat` – show network time synchronisation status
* `timedatectl` – show or set info about ntp using systemd

To install these tools, use the following: `sudo apt install ntp`.

Run the command `timedatectl status` to see the NTP status:

```bash
# check ntp status
$ timedatectl status
      Local time: Sat 2018-11-10 01:44:22 UTC
  Universal time: Sat 2018-11-10 01:44:22 UTC
        RTC time: Sat 2018-11-10 01:44:22
       Time zone: Etc/UTC (UTC, +0000)
     NTP enabled: no
NTP synchronized: yes
 RTC in local TZ: no
      DST active: n/a
```

If "NTP enabled" is set to "no",
try configuring by editing `/etc/systemd/timesyncd.conf` file.
Append/edit [Time] by add time servers or change the provided ones or uncomment the relevant line:

```bash
  .
  .
[Time]
#Servers=0.debian.pool.ntp.org 1.debian.pool.ntp.org 2.debian.pool.ntp.org 3.debian.pool.ntp.org
Servers=0.us.pool.ntp.org 1.us.pool.ntp.org 2.us.pool.ntp.org 3.us.pool.ntp.org
  .
  .
```

Save and close the file, then start and enable it via:

```bash
# set ntp time
sudo timedatectl set-ntp true

# check status
$ timedatectl status
      Local time: Sat 2018-11-10 02:13:18 UTC
  Universal time: Sat 2018-11-10 02:13:18 UTC
        RTC time: Sat 2018-11-10 02:13:19
       Time zone: Etc/UTC (UTC, +0000)
     NTP enabled: yes
NTP synchronized: yes
 RTC in local TZ: no
      DST active: n/a
```


## Port Scanning Techniques
* [Port Scanning Techniques: An Introduction](https://www.networkcomputing.com/network-security/port-scanning-techniques-introduction/1231255414)

## Networking and WiFi Tools
The Linux operating systems comes with various set of tools
allowing you to manipulate network, the [Wireless Extensions][103] and monitor wireless networks.
These tools can be used to find out network speed, bit rate,
signal quality/strength, and much more.

[`iw`][124] is the basic tool for WiFi network-related tasks,
such as finding the WiFi device name, and scanning access points.
[`wpa_supplicant`][113] is the wireless tool for connecting to a WPA/WPA2 network.
[`ip`][121] is used for enabling/disabling devices,
and finding out general network interface information.

* [`ip`][121] - show / manipulate routing, devices, policy routing and tunnels

The above utilities are widely distributed, but many network configuration manuals and blogs
still refer to [`ifconfig`][120] and [`route`][110]
as the primary network configuration tools,
even when `ifconfig` is known to behave inadequately in modern network environments.

* [`ifconfig`][120] - configure a network interface
* [`route`][110] - command is used to show/manipulate the IP routing table.
* [`ping`][108] - Packet INternet Gropper (ping) is like a sonar pulse sent to detect connection and latency
* [`dig`][107] - Domain Information Groper (di) is for interrogating DNS name servers
* [`traceroute`][109] - displays an IP packets route (path) and measuring transit delays of packets

Note that `ifconfig` is being deprecated via the [iproute2 package][119]
and is being replaced by [`ip`][117],
which you can see further explained/motivated [here][118].
(**NOTE:** [`ifconfig` isn't the only utility being deprecated][127].)

Managing your [WiFi via command line][130] can be done via an array of tools.
[Wireless Tools for Linux and Linux Wireless Extension][103]
are a collection of user-space utilities
written for Linux to support and facilitate
the configuration of device drivers of wireless network interface controllers.

* [`iwconfig`][122] - configure a wireless network interface (supports WEP)
* [`ifrename`][114] - renames network interfaces based on various static criteria
* [`iwevent`][115] - displays wireless events generated by drivers and setting changes
* [`iwgetid`][116] - reports ESSID, NWID or AP/Cell Address of wireless networks
* [`iwlist`][135] - gets detailed wireless information from a wireless interface
* [`iwpriv`][136] - configures optional (private) parameters of a wireless network interface
* [`iwspy`][132] - gets wireless statistics from specific node

Tools for user space daemon for access points and WPA/WPA2 authentication.

* [`wpa_cli`][129] - command line client program for interacting with `wpa_supplicant`.
* [`wpa_supplicant`][113] - WiFi Protected Access client and [WPA/WPA2/IEEE 802.1X supplicant][128]
* [`wpa_supplicant.conf`][112] - configuration file for `wpa_supplicant`
* [`hostapd`][131] - user space software turns normal network interface cards into access point
* [`wicd-curses`][133] - Wicd is a network connection manager that can manage wireless and wired interfaces,
similar and an alternative to NetworkManager.

Some additional useful tools.

* [`rfkill`][106] - tool for accessing the Linux [rfkill device interface][105], which is used to enable and disable wireless networking devices, typically WLAN, Bluetooth and mobile broadband
* [`wavemon`][111] - signal levels monitoring application for wireless network devices.

Note that `iw` is the anticipated successor to the `iwconfig` family of tools
but [still under development][125].
Not all wireless devices and drivers support the [nl80211 standard][126],
so the older wireless tools above may still be required.

* [`iw`][124] - show / manipulate wireless devices and their configuration (supports WEP)

Below is a list of examples of the above utilities being used
(also see cheet sheet for [`ip`][100], [subnet masks][102]):

```bash
# find out your wireless card chipset information
lspci
lspci | grep -i wireless
lspci | egrep -i --color 'wifi|wlan|wireless'

# use the following command to get information about wireless card driver
lspci -vv -s 0c:00.0

# list all the connected wifi adapters
# doesn't work on raspberry pi
iw dev

# verify that you are connected to a network
iw wlan0 link

# turn down the wireless device
sudo ip link set wlan0 down

# execute the following command to bring it up
sudo ip link set wlan0 up

# show full details of wifi networks
sudo iwlist wlan0 scan

# list the available channels and what is being used by your device
sudo iwlist wlan0 channel

# list the ssid of all the available networks
sudo iwlist wlan0 scan | grep ESSID

# lists how many networks are on each channel
sudo iwlist wlan0 scan | grep Frequency | sort | uniq -c | sort -n

# check the current state of all your network devices
ip link

# check that the wireless device is up
ip link show wlan0

# check the connection status
iw wlan0 link

# report your ESSID, NWID or AP/Cell Address of wireless network
iwgetid

# list detailed wireless information from a wireless interface
iwlist

# show the ip address of wireless interface
sudo ip addr show

# connecting to open network (no encryption)
iw dev wlan0 connect your-essid   # doesn't work on raspberry pi
iwconfig wlan0 essid your-essid

# connecting to open network (no encryption) on specific channel/frequency
iw dev wlan0 connect your-essid 2432    # doesn't work on raspberry pi
iwconfig wlan0 essid your-essid freq 2432M

# get overall quality of the link
iwconfig wlan0 | grep -i --color quality

# find out received signal strength (RSSI – how strong the received signal is)
iwconfig wlan0 | grep -i --color signal

# See link quality continuously on screen
watch -n 1 cat /proc/net/wireless

# displays continuously updated information about signal levels,
# as well as, wireless-specific and general network information
wavemon

# displays wireless events received through the RTNetlink socket.
# each line displays the specific wireless event which describes
# what has happened on the specified wireless interface
iwevent

# obtain IP address by DHCP
sudo dhclient wlan0

# set ip address
sudo ifconfig wlan0 192.168.100.1
sudo ip addr add 192.168.100.1 dev wlan0

# remove an assigned IP address from the given interface
sudo ip addr del 192.168.50.5/24 dev eth1

# check the routing table information
sudo ip route show
sudo route

# adding a default gateway
sudo route add default gw 192.168.0.1
sudo ip route add default via 192.168.0.1

# use the ip command to verify the IP address assigned by DHCP. The IP address is 192.168.1.113 from below.
ip addr show wlan0

# check to see if NetworkManager is running
service NetworkManager status
```

|                iw Command                      |            wireless-tools Command              | Description       |
|:----------------------------------------------:|:----------------------------------------------:|:-----------------:|
| iw dev wlan0 link                              | iwconfig wlan0                                 | Getting link status. |
| iw dev wlan0 scan                              | iwlist wlan0 scan                              | Scanning for available access points. |
| iw dev wlan0 set type ibss                     | iwconfig wlan0 mode ad-hoc                     | Setting the operation mode to ad-hoc. |
| ifconfig wlan0 192.168.100.1                   | ip addr add 192.168.100.1 dev wlan0            | Set IP address |
| iw dev wlan0 connect your-essid                | iwconfig wlan0 essid your-essid                | Connecting to open network (no encryption). |
| iw dev wlan0 connect your-essid 2432           | iwconfig wlan0 essid your-essid freq 2432M     | Connecting to open network specifying channel (no encryption). |
| iw dev wlan0 connect your-essid key 0:your-key | iwconfig wlan0 essid your-essid key your-key   | Connecting to WEP encrypted network using hexadecimal key. |
| iw dev wlan0 connect your-essid key 0:your-key | iwconfig wlan0 essid your-essid key s:your-key | Connecting to WEP encrypted network using ASCII key. |
| iw dev wlan0 set power_save on                 | iwconfig wlan0 power on                        | Enabling power save. |

Fo WAP encryption, the command `iw` will not do.
You need `wpa_supplicant`.
l Raspberry Pi configuration using `sudo raspi-config`,
make sure to select "Boot Options" and choose "B1 Console".
You will need a password to get console access,
which gives you greater security, and allow console cables to work via
[`screen`][101] or [`microcom`][104].


-----


# Using wpa_cli and wpa_supplicant
* [Configuring wifi in Linux with wpa_supplicant](https://shapeshed.com/linux-wifi/)
* [Tutorial: Associating to a new AP (wifi) via wpa_cli](https://discourse.trueos.org/t/tutorial-associating-to-a-new-ap-wifi-via-wpa-cli/373)
* [How can one use wpa_cli to connect to a WPA network without a password?](https://askubuntu.com/questions/541704/how-can-one-use-wpa-cli-to-connect-to-a-wpa-network-without-a-password)
* [How to connect a Raspberry Pi to a Wifi network from the command line](https://theembeddedlab.com/tutorials/raspberry-pi-connect-wifi-network/)
* [Connect To Wifi From The Linux Command Line](https://linuxconfig.org/connect-to-wifi-from-the-linux-command-line)

Using a utility on Raspbian called `wpa_cli`.
This handles wireless configuration and writes its configuration into `/etc/wpa_supplicant/wpa_supplicant.conf`.

```bash
# see what the current status
$ sudo wpa_cli status

Selected interface 'wlan0'
bssid=48:5d:36:2e:ee:08
freq=2412
ssid=74LL5
id=0
id_str=home
mode=station
pairwise_cipher=CCMP
group_cipher=CCMP
key_mgmt=WPA2-PSK
wpa_state=COMPLETED
ip_address=192.168.1.224
p2p_device_address=74:da:38:6c:d7:aa
address=74:da:38:6c:d7:aa
uuid=c3cfceee-3949-5a7c-8756-83c9d73510e4
```

If you need to run a scan, you may want to enter the `wpa_cli` interactive mode.
That means that you don’t have to keep prefixing your commands with `wpa_cli`,
but can instead just type the commands `scan` and `scan_results`.
To enter interactive mode, just do…

```bash
# enter interactive mode and do a scan
$ sudo wpa_cli
wpa_cli v2.3
Copyright (c) 2004-2014, Jouni Malinen <j@w1.fi> and contributors

This software may be distributed under the terms of the BSD license.
See README for more details.


Selected interface 'wlan0'

Interactive mode

> scan
OK
<3>CTRL-EVENT-SCAN-STARTED
<3>CTRL-EVENT-SCAN-RESULTS
> scan_results
bssid / frequency / signal level / flags / ssid
48:5d:36:2e:ee:08	2412	-45	[WPA2-PSK-CCMP][WPS][ESS]	74LL5
fe:a6:67:ff:f0:13	2412	-58	[WPA2-PSK-CCMP][WPS][ESS][P2P]	\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00
6a:54:fd:84:98:e3	2412	-61	[WPA2-PSK-CCMP][WPS][ESS][P2P]	\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00
18:1b:eb:b2:79:08	2462	-74	[WPA-PSK-CCMP][WPA2-PSK-CCMP][WPS][ESS]	SQLKL
ac:e2:d3:e2:a2:f9	2462	-90	[WPA2-PSK-CCMP][WPS][ESS]	DIRECT-F8-HP OfficeJet Pro 6970
fa:8f:ca:66:9a:6d	2412	-71	[ESS]
> quit
```








WiFi Configuration Via Command Line
* [Step-by-step: Connect to WiFi network from command line in Linux](http://www.blackmoreops.com/2014/09/18/connect-to-wifi-network-from-command-line-in-linux/)
* [wireless on the command line](http://substack.net/wireless_from_the_command_line_in_linux)
* [The Pain of Connecting to WPA Wi-Fi on the Linux Command Line](http://www.sevenforge.com/2009/07/28/connecting-to-wpa-wifi-on-the-command-line/)
* [NetworkConfigurationCommandLine/Automatic](https://help.ubuntu.com/community/NetworkConfigurationCommandLine/Automatic)
* [How do I connect to a WPA wifi network using the command line?](http://askubuntu.com/questions/138472/how-do-i-connect-to-a-wpa-wifi-network-using-the-command-line)
* [Connect to WiFi network through Ubuntu terminal](http://askubuntu.com/questions/294257/connect-to-wifi-network-through-ubuntu-terminal)
* [Wireless network configuration](https://wiki.archlinux.org/index.php/Wireless_network_configuration)
* [How to Find The Best Wi-Fi Channel For Your Router on Any Operating System](http://www.howtogeek.com/197268/how-to-find-the-best-wi-fi-channel-for-your-router-on-any-operating-system/)

################################################################################

# MAC Address and OUI Lookup
* [OUI (MAC address) lookup script](http://www.backtrack-linux.org/forums/showthread.php?t=29819)
* [Resolving MAC Address from IP Address](http://unix.stackexchange.com/questions/120153/resolving-mac-address-from-ip-address-in-linux)
* [Change mac address with macchanger Linux command](http://linuxconfig.org/change-mac-address-with-macchanger-linux-command)
* [Wireshark · OUI Lookup Tool](https://www.wireshark.org/tools/oui-lookup.html)
* [Wireshark Packet Capture: Tshark Vs. Dumpcap](https://www.networkcomputing.com/networking/wireshark-packet-capture-tshark-vs-dumpcap/1149900924)
* [Deep Dive Packet Analysis with Wireshark](https://www.networkcomputing.com/sites/default/files/resources/nwc/Pennacchi__Deep_Dive_Packet_Analysis_Interop_2018.pdf)
* [Use Wireshark at the Linux command line with TShark](https://opensource.com/article/20/1/wireshark-linux-tshark)

################################################################################

################################################################################
Subnet and IP Calculator
IP Subnet Calculator for IPv4/v6
http://www.gestioip.net/cgi-bin/subnet_calculator.cgi
http://www.subnetonline.com/pages/subnet-calculators/ipv6-subnet-calculator.php
http://www.tunnelsup.com/subnet-calculator
http://www.ipv6calculator.net/
################################################################################

################################################################################

Multicast Domain Name System (mDNS)
(http://www.multicastdns.org/) is one of the features of Bonjour, included in Mac OS X 10.2 or later,
and the linux equivalent called [Avahi][57].
mDNS resolves host names to IP addresses within small networks that do not include a local name server.
It is a zero-configuration service,
using essentially the same programming interfaces,
packet formats and operating semantics as the unicast Domain Name System (DNS).
When an mDNS client needs to resolve a host name,
it sends an IP multicast query message that asks the host having that name to identify itself.
That target machine then multicasts a message that includes its IP address.
All machines in that subnet can then use that information to update their mDNS caches.

On the Internet at large, a DNS name such as "www.apple.com" must be resolved
to a numbered IP address before your computer can connect to the server.
A domain name system (DNS) server normally provides this name resolution service for your computer.
Your Internet service provider or network administrator normally provides a local DNS server for your use.

Conversely, mDNS allows computers on a local network, such as home or small office,
to look up each others' names and addresses without a DNS server.
Each computer knows its own name and responds to requests for that name automatically via IP multicast.

Anywhere that a you could normally use a DNS name such as "www.apple.com",
you could instead enter the Bonjour name of the computer on the local network.
To indicate that the name should be looked up using local multicast instead of a standard DNS query,
all Bonjour host names end with the extension ".local."
This helps avoid confusion between names that are local Bonjour computer names
("mycomputer.local") and globally unique DNS names ("www.apple.com").

################################################################################


-----


# Secure Shell (SSH)
Secure Shell (SSH) is a cryptographic network protocol for operating network services
securely over an unsecured network.
Typical applications include remote command-line, login, and remote command execution,
but any network service can be secured with SSH.

* [Linux Fu: Stupid SSH Tricks](https://hackaday.com/2019/12/17/linux-fu-stupid-ssh-tricks/)
* [SSH Reverse Proxy and Tunneling](https://medium.com/better-programming/ssh-reverse-proxy-and-tunneling-b6d96ab2325)

## Eliminate SSH Keys and use a GPG Keys Instead
* [How to enable SSH access using a GPG key for authentication](https://opensource.com/article/19/4/gpg-subkeys-ssh)
* [How to manage multiple SSH key pairs](https://www.redhat.com/sysadmin/manage-multiple-ssh-key-pairs)

## SSH - Remote Unix Work
* [Tips for remote Unix work: SSH, screen, and VNC](http://shebang.brandonmintern.com/tips-for-remote-unix-work-ssh-screen-and-vnc/)
* [How to enable SSH access using a GPG key for authentication](https://opensource.com/article/19/4/gpg-subkeys-ssh)
* [How to manage multiple SSH key pairs](https://www.redhat.com/sysadmin/manage-multiple-ssh-key-pairs)
* [Tools for SSH key management](https://opensource.com/article/20/2/ssh-tools)

## The'Connection Refused' Message
* [What causes the 'Connection Refused' message?](http://serverfault.com/questions/725262/what-causes-the-connection-refused-message)
* [What can be the reasons of connection refused errors?](http://stackoverflow.com/questions/2333400/what-can-be-the-reasons-of-connection-refused-errors)

While using `ssh` to login to a remote system,
say it has IP address `192.168.8.173`,
you may have had repeated problems with 'Connection Refused' message.
There could be many reasons, but the most common are:

1. The port is not open on the destination machine.
1. The port is open on the destination machine, but its backlog of pending connections is full.
1. A firewall between the client and server is blocking access (also check local firewalls).

After checking for firewalls issues (via `ping 192.168.8.173`)
and showing that the port is open,
use telnet (`telnet -l root -r 192.168.8.173`)
to connect to the ip/port to test connectivity.
If this fails, this removes any potential issues from your `ssh` application.
Then you can conclude that the port is not open on the destination machine.

# Share Terminal Access

## tty-share
tty-share enables you to do terminal sharing over the Internet.
Its an extremely simple means for a remote person to join a shared session you establish.

## Temporary Allow SSH Logins (ssh-allow-friend)
https://hackaday.com/2017/02/05/grant-anyone-temporary-permissions-to-your-computer-with-ssh/

## Teleconsole
* [Teleconsole - Share Your Linux Terminal with Your Friends](https://www.tecmint.com/teleconsole-share-linux-terminal-session-with-friends/)
* [How to Share a Terminal Session with Friends](https://www.maketecheasier.com/share-terminal-session-with-friends/)

# Recording Terminal Session
* [How To Record and Share Terminal Sessions Using Terminalizer on Ubuntu 18.04](https://www.digitalocean.com/community/tutorials/how-to-record-and-share-terminal-sessions-using-terminalizer-on-ubuntu-18-04)
* [Terminalizer](https://terminalizer.com/)

# Establishing a Connection
You can use `iw` to connect to an AP directly if and only if the AP has:

* No encryption
* Uses WEP for encryption

If you need to connect to an AP with WPA or WPA2 encryption,
then you must use [`wpa_supplicant`][03].

```bash
# connect to an AP that has encryption disabled, where its SSID is foo
iw wlan0 connect foo

# if you have two APs with the SSID foo, and you know the one you want to
# connect to is on the frequency 2432, you can specify the frequency to use
iw wlan0 connect foo 2432

# connect to an AP that uses WEP, you can use:
iw wlan0 connect foo keys 0:abcde d:1:0011223344
```

# WiFi Status and Configuration
All WiFi dongles are not the same.
They differ in performance based upon the chip set used in their design.
You can assess details about the capability of your WiFi dongle via [`iw`][02].
`iw` is a new CLI configuration utility for wireless devices.
The old tool `iwconfig` is deprecated, never the less, you might still find it in use.

```bash
# list information about the currently associated wireless network
$ iwconfig wlan0
wlan0     IEEE 802.11bgn  ESSID:"74LL5"
          Mode:Managed  Frequency:2.462 GHz  Access Point: 00:12:93:A4:8A:F0
          Bit Rate=54 Mb/s   Tx-Power=27 dBm
          Retry  long limit:7   RTS thr:off   Fragment thr:off
          Power Management:on
          Link Quality=63/70  Signal level=-47 dBm
          Rx invalid nwid:0  Rx invalid crypt:0  Rx invalid frag:0
          Tx excessive retries:0  Invalid misc:5471   Missed beacon:0
$
```

First thing is to get device capabilities for all devices:

```bash
# get device capabilities for all devices, such as band information (2.4 GHz, and 5 GHz),
# and 802.11n information
iw list
```

The next step is to see what wireless networks are available in your area.
A utility called `iwlist` provides all sorts of information about your wireless environment.
To scan your environment for available networks, do the following:

```bash
# scanning for an access point
sudo iwlist wlan0 scan

# alternative
sudo iw dev wlan0 scan
```

To listen to events concerning you WiFi link, use these commands:

```bash
# listening to events
iw event

# see the auth/assoc/deauth/disassoc frames
iw event -f

# timing information is added
iw event -t
```

To determine if you are connected to an AP (or not), and if you are the
last TX rate used you can use the command below:

```bash
# getting link status
iw dev wlan0 link
```

# Getting Station Statistics
To get station statistic information such as the amount of tx/rx bytes,
the last TX bit rate (including [MCS values][05]) you can do:

```bash
$ iw dev wlan0 station dump
Station 00:1f:90:b4:8a:80 (on wlan0)
	inactive time:	7976 ms
	rx bytes:	29886939
	rx packets:	419177
	tx bytes:	49091
	tx packets:	1535
	tx retries:	18
	tx failed:	0
	signal:  	-43 dBm
	signal avg:	-43 dBm
	tx bitrate:	48.0 MBit/s
	authorized:	yes
	authenticated:	yes
	preamble:	long
	WMM/WME:	no
	MFP:		no
	TDLS peer:		no
```

* **TDLS**, or Tunneled Direct Link Setup is a technology that enables devices to
link directly to one another when connected to a traditional WiFi network.
* **WMM/WME**, or Wireless Multimedia Extensions (WME), also known as WiFi Multimedia (WMM),
provides basic Quality of service (QoS) features to IEEE 802.11 networks.

If you want to get specific statistics against a peer you station is
communicating with you can use the following:

```bash
sudo iw dev wlan1 station get <peer-MAC-address>
```

In the case of a STA the above <peer-MAC-address>
would be the MAC address of your AP.

# Setting TX Power

```bash
# set the txpower by using either the device interface name of the respective phy.
iw dev <devname> set txpower <auto|fixed|limit> [<tx power in mBm>]
iw phy <phyname> set txpower <auto|fixed|limit> [<tx power in mBm>]
```

IEEE-802.11 was designed with [`power saving`][04] in mind for stations.
To assist stations with power saving, Access Points (APs) are designed to buffer frames
for a station when that station is in power save mode and
to transmit them later to the station when the AP knows the station will listen.
When a station is in power save mode, it turns off its transmitter and receiver to preserve energy.
It takes less power for a station to turn its receiver on to listen to
frames than to turn it its transmitter on to transmit frames.
For this reason, it's more power-efficient for an AP to inform a station if it has
buffered frames present on the AP than to have the station poll the AP querying if frames are present.

```bash
# to enable power save by default
sudo iw dev wlan0 set power_save on

# to query the current power save settings
iw dev wlan0 get power_save
```

# Setting Frequency or Channel
```bash
# set frequency
iw dev wlan0 set freq 2412 [HT20|HT40+|HT40-]

# set channel
iw dev wlan0 set channel 1 [HT20|HT40+|HT40-]
```

# IBSS / Ad-Hoc Networks
```bash
# join an IBSS / ad-hoc network
iw wlan0 set type ibss
iw wlan0 ibss join foo-adhoc 2412

# leaving an IBSS / ad-hoc network
iw wlan0 ibss leave
```

# Finding a device IP Address
If you are developing software for an Ethernet (or WiFi) device,
you’ll need to access the board for debugging and/or testing purpose.
If your board does not have user interface or the serial port is not available,
you’ll have to find the IP address (assuming it is using DHCP)
before accessing the board thru `telnet` or `ssh`.
A simple way to do that is to `ping` the broadcast address
and then check the `arp` table.

```bash
# local IP addresses provided to the host
$ /sbin/ifconfig |grep -B1 "inet addr" |awk '{ if ( $1 == "inet" ) { print $2 } else if ( $2 == "Link" ) { printf "%s:" ,$1 } }' | awk -F: '{ print $1 ": " $3 }'
eth0: 192.168.1.6
lo: 127.0.0.1
wlan0: 192.168.1.13

# ping the devices to make there presence known
$ ping -b 192.168.1.255
WARNING: pinging broadcast address
PING 192.168.1.255 (192.168.1.255) 56(84) bytes of data.
64 bytes from 192.168.1.153: icmp_seq=1 ttl=64 time=87.5 ms
64 bytes from 192.168.1.153: icmp_seq=1 ttl=64 time=88.4 ms (DUP!)
64 bytes from 192.168.1.153: icmp_seq=1 ttl=64 time=99.4 ms (DUP!)
64 bytes from 192.168.1.153: icmp_seq=2 ttl=64 time=106 ms
.
.
.
$ arp
Address                  HWtype  HWaddress           Flags Mask            Iface
FIOS_Quantum_Gateway.fi  ether   48:5d:36:2e:ee:06   C                     eth0
NP-12C297031738.fios-ro  ether   cc:6d:a0:ba:03:8b   C                     eth0
iPhone.fios-router.home  ether   28:cf:e9:a2:eb:ae   C                     eth0
Chromecast.fios-router.  ether   80:d2:1d:1a:0b:fc   C                     eth0
AMAC02Q4LRGG8WN.fios-ro  ether   a0:99:9b:19:8c:ff   C                     eth0
android-2d298f3f1cc4f8a  ether   74:75:48:dc:6e:b3   C                     eth0
FIOS_Quantum_Gateway.fi  ether   48:5d:36:2e:ee:06   C                     wlan0

$ arp -n
Address                  HWtype  HWaddress           Flags Mask            Iface
192.168.1.1              ether   48:5d:36:2e:ee:06   C                     eth0
192.168.1.171            ether   cc:6d:a0:ba:03:8b   C                     eth0
192.168.1.2              ether   28:cf:e9:a2:eb:ae   C                     eth0
192.168.1.153            ether   80:d2:1d:1a:0b:fc   C                     eth0
192.168.1.4              ether   a0:99:9b:19:8c:ff   C                     eth0
192.168.1.154            ether   74:75:48:dc:6e:b3   C                     eth0
192.168.1.1              ether   48:5d:36:2e:ee:06   C                     wlan0
```

```bash
# ping scan the network to assure host becomes visiable and the search for the MAC address
$ nmap -sP 192.168.1.255/24 > /dev/null ; arp -na | grep "at 00:17:88"
? (192.168.1.34) at 00:17:88:4a:15:15 [ether] on eth0
```

If you cannot find your device,
it may be configured to ignore `ping `broadcast (in order to avoid denial-of-service attack).
To enable it, make sure `/proc` file system is mounted and type:

```bash
# enable ping broadcast response
echo 0 > /proc/sys/net/ipv4/icmp_echo_ignore_broadcasts
```

Read more: http://www.cnx-software.com/2010/10/25/finding-a-device-ip-address/#ixzz3zFsxCdUW

Here is Bash script to do a ping sweep,
without using nmap but using `ping` & `arp` instead,
and return all the IP and MAC address for the devices on your network.

```bash
# ping sweep without nmap
# waits for all pings to complete and returns ip with mac address
#
# commandline version of the code below
# (prefix="192.168.1" && for i in `seq 254`; do (sleep 0.5 && ping -c1 -w1 $prefix.$i &> /dev/null && arp -n | awk ' /'$prefix'.'$i' / { print $1 "\t" $3 } ') & done; wait)

# capture the IP address prefix for your network - e.g. prefix="192.168.1"
prefix=$(ip route get 8.8.8.8 | awk '{print $3; exit}' | cut -d'.' -f 1,2,3)

# header for ping sweep
echo -e "IP Address\tMAC Address"

# perform ping sweep
for i in `seq 254`;
do
    (sleep 0.5 && ping -c1 -w1 $prefix.$i &> /dev/null && arp -n | awk ' /'$prefix'.'$i' / { print $1 "\t" $3 } ') &
done

# waits for all pings to complete
wait
```

# Finding Your Raspberry Pi
I typical run my Raspberry Pis headless,
and that can make login into them via `ssh` a challenge.
A typical interaction is this:

```bash
# attempting to log into a headless raspberry pi
$ ssh -X pi@zero01
ssh: Could not resolve hostname zero01: Temporary failure in name resolution
```

I'm quite sure DHCP has assigned an IP Address but DNS is failing to resolver the hostname `zero01`.
This will typically be resolved by DNS, but it never happens quick enough for me.
A simple trick to find your RPi is to `nmap` scan your network for open port 22,
the port supporting SSH, which must be open on the Raspberry Pi.

```bash
# scan for open port 22 on your network
$ nmap -T5 -n -p 22 --open 192.168.1.0/24 | grep "Nmap scan" | awk '{ print $5 }'
192.168.1.13
192.168.1.183
192.168.1.200
192.168.1.224
```

So the Raspberry Pi is amount this list of IP Addresses,
but I still have to decide which of the port-22-open devices is the RPi.

But there’s an even quicker way, that’s also more precise.
It turns out the Raspberry Pi Foundation actually has a range of MAC addresses all to themselves!
These ranges will have a prefix assigned, the [Organizationally Unique Identifiers (OUI)][76],
for the Ethernet or WiFi network interface on the Raspberry Pis.
The best resource to find the most current OUI assignments
is from the [MAC Address Block Large (MA-L) Public Listing at the IEEE][78].
A complete list of OUI assignments is compiled daily and is available [here][77].

According to this list there is a single OUI/MA-L assignment for the Raspberry Pi Foundation:

```
B8-27-EB   (hex)		Raspberry Pi Foundation
B827EB     (base 16)	Raspberry Pi Foundation
			        	Mitchell Wood House
				        Caldecote  Cambridgeshire  CB23 7NU
				        US
```

But I also often use WiFi dongles from Edimax on my Raspberry Pis.
A search of the OUI/MA-L assignment list provides:

```
74-DA-38   (hex)		Edimax Technology Co. Ltd.
74DA38     (base 16)	Edimax Technology Co. Ltd.
				        No. 278, Xinhu 1st Road
				        Taipei City  Neihu Dist  248
				        TW
```

So `arp -a` can dump the candiate devices IP Addresses via this command:

```bash
# list of raspberry pi with open port 22 on your network
 $ arp -a | grep -e 74:da:38 -e b8:27:eb | grep -Eo '[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}'
192.168.1.183
192.168.1.224
```

>**NOTE:** Sometimes the arp table has old cashed IP Addresses which are not live devices.
>That happens to be the case in the above example.
>See the article ["How to clear ARP cache on Linux or Unix"][79]
>to understand how to flush this cache.


------


# Port Scanning
Port Scanning is the name for the technique used to identify open ports and services available on a network host. It is sometimes utilized by security technicians to audit computers for vulnerabilities, however, it is also used by hackers to target victims. It can be used to send requests to connect to the targeted computers, and then keep track of the ports which appear to be opened, or those that respond to the request.

Port sweeping is regarded by certain systems experts to be different from port scanning. They point out that port scanning is executed through the searching of a single host for open ports. However, they state that port sweeping is executed through the searching of multiple hosts in order to target just one specific open port. While Port scanning and sweeping have legitimate uses with regard to network management, unfortunately, they are used almost as frequently for the purpose of criminal activity.

## Testing Site
The site `http://scanme.nmap.org/` is provided by the [Nmap Security Scanner Project][29]
and [Insecure.Org][92] to help folks learn about Nmap and also to test
and make sure that their Nmap installation (or Internet connection) is working properly.
It is OK to scan this machine with Nmap or other port scanners, just don't hammer it too hard.

## Scan a host
Do a `nmap` scan of a single host.

```bash
# scan a host
$ nmap www.google.com

Starting Nmap 7.60 ( https://nmap.org ) at 2018-01-06 21:52 EST
Nmap scan report for www.google.com (209.85.201.104)
Host is up (0.011s latency).
Other addresses for www.google.com (not scanned): 209.85.201.103 209.85.201.147 209.85.201.106 209.85.201.105 209.85.201.99 2607:f8b0:400d:c03::6a
rDNS record for 209.85.201.104: qu-in-f104.1e100.net
Not shown: 998 filtered ports
PORT    STATE SERVICE
80/tcp  open  http
443/tcp open  https

Nmap done: 1 IP address (1 host up) scanned in 4.60 seconds
```

```bash
# scan a subnet
$ nmap 192.168.1.1/24

Starting Nmap 7.60 ( https://nmap.org ) at 2018-01-06 21:53 EST
Nmap scan report for gateway (192.168.1.1)
Host is up (0.00053s latency).
Not shown: 992 closed ports
PORT     STATE    SERVICE
22/tcp   filtered ssh
53/tcp   open     domain
80/tcp   open     http
443/tcp  open     https
4567/tcp filtered tram
8022/tcp filtered oa-system
8080/tcp open     http-proxy
8443/tcp open     https-alt

Nmap scan report for desktop2 (192.168.1.13)
Host is up (0.000045s latency).
Not shown: 998 closed ports
PORT   STATE SERVICE
22/tcp open  ssh
80/tcp open  http

Nmap scan report for 192.168.1.34
Host is up (0.00040s latency).
Not shown: 998 closed ports
PORT     STATE SERVICE
80/tcp   open  http
8080/tcp open  http-proxy

Nmap scan report for 192.168.1.36
Host is up (0.0025s latency).
Not shown: 997 closed ports
PORT     STATE SERVICE
5222/tcp open  xmpp-client
8088/tcp open  radan-http
8222/tcp open  unknown

Nmap scan report for 192.168.1.95
Host is up (0.00098s latency).
Not shown: 997 closed ports
PORT     STATE SERVICE
8008/tcp open  http
8009/tcp open  ajp13
9000/tcp open  cslistener

Nmap scan report for 192.168.1.100
Host is up (0.018s latency).
Not shown: 999 closed ports
PORT     STATE SERVICE
8082/tcp open  blackice-alerts

Nmap scan report for 192.168.1.102
Host is up (0.0043s latency).
Not shown: 999 closed ports
PORT     STATE SERVICE
8082/tcp open  blackice-alerts

Nmap scan report for 192.168.1.103
Host is up (0.017s latency).
Not shown: 999 closed ports
PORT     STATE SERVICE
8082/tcp open  blackice-alerts

Nmap scan report for 192.168.1.196
Host is up (0.0038s latency).
All 1000 scanned ports on 192.168.1.196 are closed

Nmap scan report for 192.168.1.198
Host is up (0.0046s latency).
Not shown: 998 closed ports
PORT     STATE SERVICE
7676/tcp open  imqbrokerd
8080/tcp open  http-proxy

Nmap scan report for desktop2 (192.168.1.200)
Host is up (0.000075s latency).
Not shown: 998 closed ports
PORT   STATE SERVICE
22/tcp open  ssh
80/tcp open  http

Nmap scan report for 192.168.1.201
Host is up (0.0010s latency).
Not shown: 999 closed ports
PORT     STATE SERVICE
8009/tcp open  ajp13

Nmap done: 256 IP addresses (12 hosts up) scanned in 54.41 seconds
```

```bash
#  scan the most common 100 ports used:
$ sudo nmap -f 192.168.1.200

Starting Nmap 7.60 ( https://nmap.org ) at 2018-01-06 21:56 EST
Nmap scan report for desktop2 (192.168.1.200)
Host is up (0.000030s latency).
Not shown: 998 closed ports
PORT   STATE SERVICE
22/tcp open  ssh
80/tcp open  http

Nmap done: 1 IP address (1 host up) scanned in 1.66 seconds

# scan and search for the OS (and the OS version) on a host
$ sudo nmap -A 192.168.1.200

Starting Nmap 7.60 ( https://nmap.org ) at 2018-01-06 21:57 EST
Nmap scan report for desktop2 (192.168.1.200)
Host is up (0.000017s latency).
Not shown: 998 closed ports
PORT   STATE SERVICE VERSION
22/tcp open  ssh     OpenSSH 7.5p1 Ubuntu 10 (Ubuntu Linux; protocol 2.0)
| ssh-hostkey:
|   2048 cb:20:99:b5:ed:c4:01:50:ce:78:de:aa:a9:32:08:fe (RSA)
|   256 c7:50:06:19:12:1f:3f:0c:88:62:52:9b:d9:57:79:1e (ECDSA)
|_  256 31:5e:a6:fb:31:f0:23:a3:cd:c3:8e:f4:b9:4a:9a:c4 (EdDSA)
80/tcp open  http    Apache httpd 2.4.27 ((Ubuntu))
|_http-server-header: Apache/2.4.27 (Ubuntu)
|_http-title: Apache2 Ubuntu Default Page: It works
Device type: general purpose
Running: Linux 3.X|4.X
OS CPE: cpe:/o:linux:linux_kernel:3 cpe:/o:linux:linux_kernel:4
OS details: Linux 3.8 - 4.9
Network Distance: 0 hops
Service Info: OS: Linux; CPE: cpe:/o:linux:linux_kernel

OS and Service detection performed. Please report any incorrect results at https://nmap.org/submit/ .
Nmap done: 1 IP address (1 host up) scanned in 10.54 seconds
```

```bash
# scan for running service
$ sudo nmap -sV 192.168.1.200

Starting Nmap 7.60 ( https://nmap.org ) at 2018-01-06 21:59 EST
Nmap scan report for desktop2 (192.168.1.200)
Host is up (0.000016s latency).
Not shown: 998 closed ports
PORT   STATE SERVICE VERSION
22/tcp open  ssh     OpenSSH 7.5p1 Ubuntu 10 (Ubuntu Linux; protocol 2.0)
80/tcp open  http    Apache httpd 2.4.27 ((Ubuntu))
Service Info: OS: Linux; CPE: cpe:/o:linux:linux_kernel

Service detection performed. Please report any incorrect results at https://nmap.org/submit/ .
Nmap done: 1 IP address (1 host up) scanned in 8.00 seconds
```

```bash
# scan using a specific NSE script
# this command will search for a potential heartbleed attack
$ nmap -sV -p 443 -script=ssl-heartbleed.nse 192.168.1.1

Starting Nmap 7.60 ( https://nmap.org ) at 2018-01-06 22:02 EST
Nmap scan report for gateway (192.168.1.1)
Host is up (0.00051s latency).

PORT    STATE SERVICE  VERSION
443/tcp open  ssl/http lighttpd 1.4.38
|_http-server-header: lighttpd/1.4.38

Service detection performed. Please report any incorrect results at https://nmap.org/submit/ .
Nmap done: 1 IP address (1 host up) scanned in 28.16 seconds
```

```bash
# ping sweep without nmap
# waits for all pings to complete and returns ip with mac address
(echo -e "IP Address\tMAC Address" ; prefix="192.168.1" && for i in `seq 254`; do (sleep 0.5 && ping -c1 -w1 $prefix.$i &> /dev/null && arp -n | awk ' /'$prefix'.'$i' / { print $1 "\t" $3 } ') & done; wait)
```



-----


# What Devices Are Connected to Your Network

## IP/MAC Address Monitoring with with Arpwatch
* https://www.youtube.com/watch?v=uqanawVLpSg
* [Arpwatch Tool to Monitor Ethernet Activity in Linux](https://www.tecmint.com/monitor-ethernet-activity-in-linux/)
* [How To Monitor Ethernet Activity In Linux Using Arpwatch](http://www.linuxandubuntu.com/home/how-to-monitor-ethernet-activity-in-linux-using-arpwatch)
* [Arpwatch Home Network Monitor](https://www.virtualizationhowto.com/2016/02/arpwatch-home-network-monitor/)

[`aprwatch`][74] is an open source computer software that is used for
monitoring Address Resolution Protocol (APR) traffic on a computer network.
With `aprwatch`, you can easily keep a log or database of all Ethernet and IP address pairings.
That is, a list of all identified IP and MAC addresses pairings and their corresponding timestamps.
`aprwatch` listen to APR packets on a local network to monitor ARP activity to detect
ARP spoofing, network flip-flops, changed and new stations and address reuse.
It also has the option of reporting these changes via email.

To install `arpwatch` on Debian/Ubuntu Based Distros, do `sudo apt-get install arpwatch`.

`apwatch` creates or uses some important files for its operation.
The locations may vary a bit depending on the distro that you are using.

* `/var/arpwatch` - default directory
* `/var/arpwatch/arp.dat` - main ethernet/ip address records database
* `/var/arpwatch/ethercodes.dat` - vendor ethernet block list
* `/etc/rc.d/init.d/arpwatch` - arpwatch service to start or stop daemon
* `/etc/sysconfig/arpwatch` - main configuration file
* `/usr/sbin/arpwatch` - binary command to start and stop tool using the terminal
* `/var/log/messages` - system log file where arpwatch writes any changes or unusual activity to IP/MAC

If you want logs to be sent to a specific email address,
edit the main configuration file to add your email address.
Open `/etc/sysconfig/arpwatch` and edit the file with this


## IP/MAC Address Monitoring with with nmap
An easy way to scan your network to see what device are connected is to use [`nmap`][01].
With this you can find out if some unknown or unwanted device is connected to it.

Despite its popularity as a utility for network discovery and security auditing,
`nmap` isn't part of the base install for Ubuntu.
To install it, just do

    sudo apt-get install nmap

To begin your scan using `nmap -sP`,
which will run a ping scan on the specified network.
For instance, `nmap -sP 192.168.1.0/24` will scan the 256 hosts from
192.168.1.0 through 192.168.1.255 to see if they're available, and report back.

```bash
# ????
sudo nmap -v -sL 192.168.1.0/24

# ping scan on the specified network
sudo nmap -sP 192.168.1.0/24
```

To check to see what services are running on a box

```bash
# list what services are running
sudo nmap -sV 192.168.1.1
```


## IP/MAC Address Monitoring with with Zenmap
Zenmap is just a GUI form which can be used by novice users. It completely uses nmap command line tool. So they do not have similarities or differencies. They just completes each other.

* [Zenmap](http://nmap.org/zenmap/)
* [What is Zenmap?](https://geek-university.com/nmap/what-is-zenmap/)
* [An introduction to using Zenmap on Linux](http://www.maketecheasier.com/using-zenmap-on-linux/)
* [Zenmap Tutorial: Audit Your Networks using Nmap GUI](http://www.linux.com/learn/tutorials/381794-audit-your-network-with-zenmap)

* [How to Use Zenmap to Discover Your Network Devices](https://www.youtube.com/watch?v=wt_xMols4Ww&t=823s)

# netcat
Hacking with Netcat
[Part 1: The Basics](http://www.hackingtutorials.org/networking/hacking-with-netcat-part-1-the-basics/)
[Part 2: Bind and Reverse shells](http://www.hackingtutorials.org/networking/hacking-netcat-part-2-bind-reverse-shells/)
[Part 3: Advanced Netcat techniques](http://www.hackingtutorials.org/networking/hacking-with-netcat-part-3-advanced-techniques/)

# nslookup
* [10 Linux nslookup Command Examples for DNS Lookup](http://www.thegeekstuff.com/2012/07/nslookup-examples/)
* [nslookup command examples to check DNS Records](http://www.2daygeek.com/nslookup-command-examples-to-check-dns-records/#)

`nslookup` followed by the domain name will display the “A Record” (IP Address) of the domain:

```bash
# DNS host name lookup
$ nslookup redhat.com
Server:		192.168.1.1
Address:	192.168.1.1#53

Non-authoritative answer:
Name:	redhat.com
Address: 209.132.183.105
```

In the above output, server refers to the IP address of the DNS server.
Then the below section provides the “A Record” (IP Address) of the domain “redhat.com”.

You may also noticed the keyword “Non-authoritative answer” in the above output.
Any answer that originates from the DNS Server which has the complete
zone file information available for the domain is said to be authoritative answer.
In many cases, DNS servers will not have the complete zone file information available for a given domain. Instead, it maintains a cache file which has the results of all queries performed in the past for which it has gotten authoritative response. When a DNS query is given, it searches the cache file, and return the information available as “Non-Authoritative Answer”.

You can also do the reverse DNS look-up by providing the IP Address as argument to `nslookup`:

```bash
# reverse DNS lookup
$ nslookup desktop
Server:		192.168.1.1
Address:	192.168.1.1#53

Name:	desktop.fios-router.home
Address: 192.168.1.13
```

-----


# Routing
_Routing_ is a [means of sending an IP packet from one point to another][64].
In computer networking, a _router_ is a device responsible for forwarding network traffic.
On Linux and UNIX systems,
information on how packets are to be forwarded is stored in a
kernel structure called a _routing table_.
In effect, a routing table is a set of rules,
that is used to determine where data packets, traveling over an IP network, will be directed.
All IP-enabled devices, including computer hosts, routers, and switches, use routing tables.

Today, most of the multiuser systems (aka hosts) can be configured to act as a router.
So, a common routing algorithm can be specified that can be used by the router as well as by a host.
When a host can act like a router,
it is generally said that the host has an _embedded router_ functionality.
Such a host which has an embedded router functionality,
should never forward datagrams until and unless configured to do so (i.e. configured to act like a router).

The routing table can be used for both _static routing_ and _dynamic routing_.
Dynamic routing consists of the kernel making decisions as to which route,
out of multiple present routes, a packet should take.
Static routing is a form of routing that occurs when a router
uses a manually-configured routing entry,
rather than information from a dynamic routing protocol to forward traffic.

The data in routing table contains the following main entries:

Destination IP address
:   This  field represents the IP address of the destination.
    This IP address could be the address of a single host or could that be of a network.
IP address of next router
:   This entry gives the IP address of the next router which decides how to
    further send an IP data gram received on its interface.
Flags
:   This field provides information like destination IP address (specified above)
    is a host address or a network address or convey whether the next router
    (specified above) is really a next router or a directly connected interface.
Network interface specs
:   Some specification about the network interface the datagram should
    be passed for further transmission.

For further information and education, see

* [An introduction to Linux network routing](https://opensource.com/business/16/8/introduction-linux-network-routing?sc_cid=701600000011yI7AAI)
* [Introduction to Linux IP Routing Fundamentals (Part 1)](http://www.thegeekstuff.com/2012/04/ip-routing-intro/)

## Display the Routing Table
Each entry is nothing but an entry in the routing table (Linux kernel routing table).

```bash
# display the kernel routing table
$ sudo route -n
Kernel IP routing table
Destination     Gateway         Genmask         Flags Metric Ref    Use Iface
0.0.0.0         192.168.1.1     0.0.0.0         UG    0      0        0 eth1
192.168.1.0     0.0.0.0         255.255.255.0   U     1      0        0 eth1

# using netstat
$ netstat -r
Kernel IP routing table
Destination     Gateway         Genmask         Flags   MSS Window  irtt Iface
default         Wireless_Broadb 0.0.0.0         UG        0 0          0 eth1
192.168.1.0     *               255.255.255.0   U         0 0          0 eth1

# the -n option means that you want numerical IP addresses displayed
$ netstat -rn
Kernel IP routing table
Destination     Gateway         Genmask         Flags   MSS Window  irtt Iface
0.0.0.0         192.168.1.1     0.0.0.0         UG        0 0          0 eth1
192.168.1.0     0.0.0.0         255.255.255.0   U         0 0          0 eth1
```

The output provides a detailed information in the destination IP addresses and their gateways.
The flag ‘U’ suggests that the route is up,
and the flag ‘G’ suggests that the router is to a gateway (router).
If this flag is not set then it can be assumed that the destination is directly connected.

```bash
# using the iproute2 suite
$ ip route list
default via 192.168.1.1 dev eth1  proto static
192.168.1.0/24 dev eth1  proto kernel  scope link  src 192.168.1.4  metric 1
```

## Diagnosing Routing Problems
http://www.coyotepoint.com/files/downloads/StaticRoutes.pdf

## Using, Ping Traceroute, and MTR to Diagnose Network Issues
http://www.linux.org/threads/tcp-ip-utilities-ping-and-traceroute.4848/
* [How To Use Traceroute and MTR to Diagnose Network Issues](https://www.digitalocean.com/community/tutorials/how-to-use-traceroute-and-mtr-to-diagnose-network-issues)

### `ping`
http://www.cyberciti.biz/faq/unix-ping-command-examples/
http://www.linux.org/threads/tcp-ip-utilities-ping-and-traceroute.4848/
http://www.thegeekstuff.com/2009/11/ping-tutorial-13-effective-ping-command-examples/
http://www.sanfoundry.com/10-ping-command-usage-examples-linux/
http://www.computerhope.com/unix/arp.htm
http://www.cyberciti.biz/faq/linux-traffic-shaping-using-tc-to-control-http-traffic/

### `traceroute`
`traceroute` attempts to trace the route an IP packet would follow to some Internet host
by launching probe packets with a small TTL (time to live)
then listening for an ICMP "time exceeded" reply from a gateway.

 It start its probes with a TTL of one and increases this by one until
 it gets an ICMP "port unreachable" (or TCP reset), which means we got to the "host",
 or hit a max (which defaults to 30 hops).
 Three probes (by default) are sent at each TTL setting and a line is printed showing the TTL,
 address of the gateway and round trip time of each probe.
 The address can be followed by additional information when requested.
 If the probe answers come from different gateways,
 the address of each responding system will be printed.
 If there is no response within a 5.0 seconds (default),
 an "*" (asterisk) is printed for that probe.

* [Traceroute Command for Linux](https://www.lifewire.com/traceroute-linux-command-4092586)
* [traceroute command in Linux with Examples](https://www.geeksforgeeks.org/traceroute-command-in-linux-with-examples/)

### `mtr`
* [How to use the Linux mtr (My Traceroute) command](https://vitux.com/how-to-use-the-linux-mtr-command/)
* [Diagnosing Network Issues with MTR](https://www.linode.com/docs/networking/diagnostics/diagnosing-network-issues-with-mtr)
* [How To Use Traceroute and MTR to Diagnose Network Issues](https://www.digitalocean.com/community/tutorials/how-to-use-traceroute-and-mtr-to-diagnose-network-issues)
* [What is MTR & How to Use to Troubleshoot & Test your Connections](https://www.pcwdld.com/what-is-mtr-and-howto-troubleshoot-connections)

`mtr` combines the functionality of the `traceroute` and `ping` programs
in a single network diagnostic tool.

`mtr` probes the intermedate network hop between the host `mtr` runs on
and the user-specified destination host.
It first determines the address of each network hop between the machines,
it then sends a sequence [ICMP ECHO requests][83] (aka pings) to each one
to determine the quality of the link to each machine. As it does this,
it prints running statistics about each machine.


# Network Address Translation (NAT)
* [Network Address Translation (NAT) Tutorial](http://www.karlrupp.net/en/computer/nat_tutorial)

# Checking Port Status and Open Ports
good ways to find out what ports are listenting:

```bash
# check if the port is being used or not
sudo netstat -tulpen | grep 5000

# status of all ports
# list the open ports and the process that owns them
sudo netstat -tulpen

# which ports are LISTEN
udo netstat -tulpen | grep LISTEN

# list the services that are running
sudo lsof -iTCP -sTCP:LISTEN -P
```

Ports can also be blocked via your firewall.
To check your firewall rules, use the following:

```bash
# list your firewall rules
sudo /sbin/iptables -L
```

-----


# Firewall
* [The Linux Firewall](http://code.tutsplus.com/tutorials/the-linux-firewall--net-31748)
* [Secure your Linux network with firewall-cmd](https://www.redhat.com/sysadmin/secure-linux-network-firewall-cmd)
* [Five Firewall Configuration Mistakes You Need to Avoid](https://www.networkcomputing.com/network-security/five-firewall-configuration-mistakes-you-need-avoid)

Linux comes with a host based [firewall][39] called [`netfilter`][36]
(or sometimes called "iptables" after the tool used to manage netfilter).
`netfilter` is the framework in the Linux kernel,
which implements the rule and filters provided by the user,
through an interface available to user called `iptables`.
`netfilter` is a set of hooks inside the Linux kernel that allows
kernel modules to register callback functions with the network stack
("[A Deep Dive into Iptables and Netfilter Architecture][58]"
gives a nice description of these hook and callbacks).
A registered callback function is then called back for every packet
that traverses the respective hook within the network stack.
This Linux based firewall is controlled by the program called [`iptables`][37]
to handles filtering for IPv4, and [`ip6tables`][38] handles filtering for IPv6.
When you install Ubuntu, `iptables` is there,
but it allows all traffic by default.
The websites [IptablesHowTo][47] and [Linux: 20 Iptables Examples For New SysAdmins][48]
provide a quick intro to `iptables` for Ubuntu.
When exposing your server to the Internet,
having an [effective Firewall policy is very important to secure your sever][49].
The website ["How To Set Up a Firewall Using Iptables on Ubuntu 14.04"][50]
can help you set up your Firewall.

Ubuntu has `iptables` but also comes with [`ufw`][45]
and is considered the default firewall configuration tool for Ubuntu.
There is also a graphical version [`gufw`][46] can be installed with `sudo apt-get install gufw`.
Developed to ease `iptables` firewall configuration,
`ufw` provides a user friendly way to create an IPv4 or IPv6 host-based firewall.
By default `ufw` is disabled.

>**NOTE:** When working with firewalls,
take care not to lock yourself out of your own server by blocking SSH traffic
(port 22, by default).
If you lose access due to your firewall settings,
you may need to connect to it via the console to fix your access.
Once you are connected via the console, you can change your firewall rules to allow SSH access.
If your currently saved firewall rules allow SSH access, another method is to reboot your system.

[`firewalld`](https://firewalld.org/) provides a dynamically managed firewall via a service daemon.

* [Make Linux stronger with firewalls](https://opensource.com/article/19/7/make-linux-stronger-firewalls)

## Understanding Firewall Chains
[![iptables diagram](http://static.thegeekstuff.com/wp-content/uploads/2011/01/iptables-table-chain-rule-structure.png "iptables firewall is used to manage packet filtering and NAT rules. IPTables comes with all Linux distributions. Understanding how to setup and configure iptables will help you manage your Linux firewall effectively.")](http://www.thegeekstuff.com/2011/01/iptables-fundamentals/)
[![iptables flow](https://danielmiessler.com/images/DM_NF2.png "how traffic moves through netfilter")](https://danielmiessler.com/study/iptables/)
Managed via `iptables`, there are total of 4 default tables established for `netfilter`.
These tables might contain multiple chains.
Chains might contain multiple rules.
Rules are defined for the packets.

**Filter Table Rules Chains**
Filter is default table for iptables. So, if you don’t define you own table,
you’ll be using filter table. Iptables’s filter table has the following built-in chains.

* **INPUT** - This chain is used to control the behavior for incoming connections. Use this to open or close incoming ports (such as 80,25, and 110 etc) and ip addresses / subnet (such as 202.54.1.20/29).
* **OUTPUT** - This chain is used for outgoing connections. Use this open or close outgoing ports and ip addresses / subnets.
* **FORWARD** - This chain is used for incoming connections that aren’t actually being delivered locally. Usually used when you setup Linux as router. For example, eth0 connected to ADSL/Cable modem and eth1 is connected to local LAN. Use FORWARD chain to send and receive traffic from LAN to the Internet.

**NAT Table Rules Chains**
Iptable’s NAT table has the following built-in chains.

* **PREROUTING** - Alters packets before routing. i.e Packet translation happens immediately after the packet comes to the system (and before routing). This helps to translate the destination ip address of the packets to something that matches the routing on the local server. This is used for DNAT (destination NAT).
* **POSTROUTING** - Alters packets after routing. i.e Packet translation happens when the packets are leaving the system. This helps to translate the source ip address of the packets to something that might match the routing on the desintation server. This is used for SNAT (source NAT).
* **OUTPUT** - NAT for locally generated packets on the firewall.

**Mangle Table Rules Chains**
Iptables’s Mangle table is for specialized packet alteration.
This alters QOS bits in the TCP header.
The Mangle table has built-in chains for PREROUTING, OUTPUT, FORWARD, INPUT, POSTROUTING.

**Raw Table Rules Chains**
Iptable’s Raw table is for configuration excemptions.
The Raw table has built-in chains for PREROUTING, OUTPUT.

> **NOTE:**
Even though pinging an external host seems like something that would
only need to traverse the output chain,
keep in mind that to return the data, the input chain will be used as well.
When using `iptables` to lock down your system,
remember that a lot of protocols will require two-way communication,
so both the input and output chains will need to be configured properly.
SSH is a common protocol that people forget to allow on both chains.

### Default Chain Policy
Before going in and configuring specific rules,
you need to understand the default behavior of the three chains.
That is, what does `iptables` do if the connection doesn’t match any existing rules?
To see what your policy chains for unmatched traffic, run the `iptables -L` command:

```bash
# what is the default policy
$ sudo iptables -L | grep policy
Chain INPUT (policy ACCEPT)
Chain FORWARD (policy ACCEPT)
Chain OUTPUT (policy ACCEPT)
```

More times than not, you’ll want your system to accept connections by default.
Here how you can set policy to this default condition:

```bash
# set policy to ACCEPT all packets
sudo iptables --policy INPUT ACCEPT
sudo iptables --policy OUTPUT ACCEPT
sudo iptables --policy FORWARD ACCEPT
```

If you are establishing a highly secure system,
you may rather deny all connections and manually specify which ones you want to allow to connect.
In this case, the default policy of your chains is to DROP.

```bash
# set policy to DROP all packets
sudo iptables --policy INPUT DROP
sudo iptables --policy OUTPUT DROP
sudo iptables --policy FORWARD DROP
```

### Connection Responses
With your default chain policies configured,
you can start adding rules to `iptables` so it knows what to do when it
encounters a connection from or to a particular IP address or port.
This process boils down to:

1. Each packet starts at the first rule in the chain.
1. A packet proceeds until it matches a rule.
1. If a match found, then control will jump to the specified target of REJECT, ACCEPT, DROP, RETURN.

* The target **ACCEPT** means allow the connection (packet).
* The target **DROP** means drop the connection (packet) act like it never happened. Do not send an error message to remote host or sending host. This is best if you don’t want the source to realize your system exists.
* The target **REJECT** means to drop connection (packet) and send an error message to remote host.  This is best if you don’t want a particular source to connect to your system, but you want them to know that your firewall blocked them.
* The target **RETURN** means the firewall will stop executing the next set of rules in the current chain for this packet. The control will be returned to the calling chain.

The best way to show the difference between these targets
is to show what it looks like when a PC tries to ping a Linux machine with `iptables`
configured for each one of these settings.

`ping` response when the connection is allowed (ACCEPT):
![iptable accept]({filename}/images/iptables-target-accept.jpg "ping response when the connection is allowed (ACCEPT)")

`ping` response when the connection is not allowed or doesn't exist (DROP):
![iptable drop]({filename}/images/iptables-target-drop.jpg "ping response when the connection is not allowed or doesn't exist (DROP)")

`ping` response when the connection is blocked or connecting improperly (REJECT):
![iptable reject]({filename}/images/iptables-target-reject.jpg "ping response when the connection is blocked or connecting improperly (REJECT)")

## Displaying the Status of Firewall
To inspect firewall with line numbers, enter:

```bash
# firewall status with line numbers
sudo iptables -n -L -v --line-numbers
```

Where,

* **-L** : List rules.
* **-v** : Display detailed information. This option makes the list command show the interface name, the rule options, and the TOS masks. The packet and byte counters are also listed, with the suffix 'K', 'M' or 'G' for 1000, 1,000,000 and 1,000,000,000 multipliers respectively.
* **-n** : Display IP address and port in numeric format. Do not use DNS to resolve names. This will speed up listing.

The rules in the `iptables –list` command output contains the following fields:

* **num** - Rule number within the particular chain
* **target** - Special target variable that we discussed above
* **prot** - Protocols. tcp, udp, icmp, etc.,
* **opt** - Special options for that specific rule.
* **source** - Source ip-address of the packet
* **destination** - Destination ip-address for the packet

## Status / Stop / Restart Iptables Firewall Service
[Ubuntu: Stat / Stop / Restart Iptables Firewall Service](http://www.cyberciti.biz/faq/ubuntu-start-stop-iptables-service/)

## Logging Firewall Activity
* [How to Log Linux IPTables Firewall Dropped Packets to a Log File](http://www.thegeekstuff.com/2012/08/iptables-log-packets/)
* [Force iptables to log messages to a different log file](http://www.cyberciti.biz/tips/force-iptables-to-log-messages-to-a-different-log-file.html)
* [How can I configure syslog.conf file, to log iptables messages in a separate file?](http://unix.stackexchange.com/questions/96484/how-can-i-configure-syslog-conf-file-to-log-iptables-messages-in-a-separate-fil)

iptables logs = /var/log/syslog

Do note, however, that logging every single packet marked for dropping is liable to fill up your log filesystem really, really fast

## Block All Network Traffic
This will block all incoming and outgoing traffic including Internet.

```bash
# block absolutely all traffic, including SSH
iptable -F
iptables -P INPUT DROP
iptables -P OUTPUT DROP
iptables -P FORWARD DROP
```

**Do not enter above command over remote ssh login session.**

If you want to block all incoming traffic to your system __except__
ssh connection under Linux,
do the following:

```bash
#!/bin/sh

# My system IP/set ip address of server
SERVER_IP="65.55.12.13"

# Flushing all rules
iptables -F
iptables -X

# Setting default filter policy
iptables -P INPUT DROP
iptables -P OUTPUT DROP
iptables -P FORWARD DROP

# Allow unlimited traffic on loopback
iptables -A INPUT -i lo -j ACCEPT
iptables -A OUTPUT -o lo -j ACCEPT

# Allow incoming ssh only
iptables -A INPUT -p tcp -s 0/0 -d $SERVER_IP --sport 513:65535 --dport 22 -m state --state NEW,ESTABLISHED -j ACCEPT
iptables -A OUTPUT -p tcp -s $SERVER_IP -d 0/0 --sport 22 --dport 513:65535 -m state --state ESTABLISHED -j ACCEPT

# make sure nothing comes or goes out of this box
iptables -A INPUT -j DROP
iptables -A OUTPUT -j DROP
```

This script only allows incoming ssh.
No other incoming service or ping request or no outgoing service or request allowed.
Incoming ssh connection can be either new or already established one
and that is what specified by state rule '-m state --state NEW,ESTABLISHED'.
Outgoing ssh connection state can be established only.
By default this script allows everyone to ssh in by rule -s 0/0.
If you want this access limited by IP or network address then replace -s 0/0 with IP address.

Source: http://www.cyberciti.biz/tips/linux-iptables-4-block-all-incoming-traffic-but-allow-ssh.html

## Blocking All Traffic from a Specific IP
* [Iptables Drop IP Address](http://www.cyberciti.biz/faq/linux-iptables-drop/)

```bash
# Block from an IP
iptables -A INPUT -s 11.22.33.44 -j DROP

# If you want to block only on an specific NIC
iptables -A INPUT -s 11.22.33.44 -i eth0 -j DROP

# block traffic for a specific port
iptables -A INPUT -s 11.22.33.44 -p tcp -dport 22 -j DROP

# Using a Network and not only one IP
iptables -A INPUT -s 11.22.33.0/24 -j DROP

# log action before blocking traffic from IP
iptables -A INPUT -s 11.22.33.44 -j LOG --log-prefix "blocking all traffic"
iptables -A INPUT -s 11.22.33.44 -j DROP
```

Source: https://www.garron.me/en/linux/iptables-manual.html

## Stopping a Brute Force Attacks
You can also use `iptables` to stop brute force attacks to your server.
For example: Allow only three attempts to log through `ssh` before banning the IP for 15 minutes,
this should let legitimate users to log to the servers, but bots will not be able.

```bash
iptables -F
iptables -A INPUT -i lo -p all -j ACCEPT
iptables -A OUTPUT -o lo -p all -j ACCEPT
iptables -A INPUT -i eth0 -m state --state ESTABLISHED,RELATED -j ACCEPT
iptables -A INPUT -p tcp --dport ssh -j ACCEPT
iptables -A INPUT -p tcp --dport www -j ACCEPT
iptables -I INPUT -p tcp --dport 22 -i eth0 -m state --state NEW -m recent --set
iptables -I INPUT -p tcp --dport 22 -i eth0 -m state --state NEW -m recent --update --seconds 900 --hitcount 3 -j DROP
iptables -P INPUT DROP
```

Source: https://www.garron.me/en/linux/iptables-manual.html

## Edit Firewall Rules
* [How to edit iptables rules](https://fedoraproject.org/wiki/How_to_edit_iptables_rules)
* [How do you PREPEND an iptables rather than APPEND?](http://serverfault.com/questions/374993/how-do-you-prepend-an-iptables-rather-than-append)
* [Insert an iptables rule on a specific line number with a comment, and restore all rules after reboot](https://snipt.net/johan_adriaans/insert-an-iptables-rule-on-a-specific-line-number-with-a-comment-and-restore-all-rules-after-reboot/)

To insert one or more rules in the selected chain as the given rule number use the following syntax.
First find out line numbers, enter:

```bash
sudo iptables -L INPUT -v --line-numbers
```

Sample outputs:

```bash
Chain INPUT (policy DROP)
num  target     prot opt source               destination
1    DROP       all  --  202.54.1.1           0.0.0.0/0
2    ACCEPT     all  --  0.0.0.0/0            0.0.0.0/0           state NEW,ESTABLISHED
```

To insert rule between 1 and 2, enter:

```bash
# insert rule between 1 and 2
iptables -I INPUT 2 -s 202.54.1.2 -j DROP
```

To view updated rules, enter:

```bash
iptables -L INPUT -v --line-numbers
```

Sample outputs:

```bash
Chain INPUT (policy DROP)
num  target     prot opt source               destination
1    DROP       all  --  202.54.1.1           0.0.0.0/0
2    DROP       all  --  202.54.1.2           0.0.0.0/0
3    ACCEPT     all  --  0.0.0.0/0            0.0.0.0/0
```

## Delete Firewall Rules
To display line number along with other information for existing rules, enter:

```bash
# firewall status with line numbers
sudo iptables -n -L -v --line-numbers
```

You will get the list of IP.
Look at the number on the left, then use number to delete it.
For example delete line number 4, enter:

```bash
# delete iptable rule number 4
sudo iptables -D INPUT 4
```

or find source IP 202.54.1.1 and delete from rule:

```bash
# delete INPUT rule associated with IP 202.54.1.1
sudo iptables -D INPUT -s 202.54.1.1 -j DROP
```

Where,

* **-D** : Delete one or more rules from the selected chain

## Deleting / Editing Rules
* [How To List and Delete Iptables Firewall Rules](https://www.digitalocean.com/community/tutorials/how-to-list-and-delete-iptables-firewall-rules)

## Show and Clear Packet Counts
* [How To List and Delete Iptables Firewall Rules](https://www.digitalocean.com/community/tutorials/how-to-list-and-delete-iptables-firewall-rules)

## Saving Rules
If you change the `iptables` rules and restart the computer,
it will restart with the previous set of rules.
To preserver your rules, first check that you have made changes correctly using `sudo iptables -L`
then save them so they are use upon reboot.
For Ubuntu, this can be done by using `iptables-persistent`
(installed via `sudo apt-get install iptables-persistent`):

```bash
sudo /etc/init.d/iptables-persistent save
sudo /etc/init.d/iptables-persistent reload
```

You can also make you own backup copy of the currently active `iptables` rules via:

```bash
# make backup of currently active iptables rules
sudo iptables-save > /etc/iptables/backup_rules.v4
sudo ip6tables-save > /etc/iptables/backup_rules.v6
```

And to restore `iptables` rules from a file:

```bash
# restore iptables rules from backup
sudo iptables-restore < /etc/iptables/backup_rules.v4
sudo ip6tables-restore < /etc/iptables/backup_rules.v6
```

## Drop or Accept Traffic From Mac Address
Use the following syntax:

```bash
# drop packets from mac 00:0F:EA:91:04:08
sudo iptables -A INPUT -m mac --mac-source 00:0F:EA:91:04:08 -j DROP

# only accept traffic for TCP port 8080 from mac 00:0F:EA:91:04:07
sudo iptables -A INPUT -p tcp --destination-port 22 -m mac --mac-source 00:0F:EA:91:04:07 -j ACCEPT
```

## Open Range of Ports or IP Addresses
Use the following syntax to open a range of ports:

```bash
# open the ports from 7000 to 7010
iptables -A INPUT -m state --state NEW -m tcp -p tcp --dport 7000:7010 -j ACCEPT
```

Use the following syntax to open a range of IP address:

```bash
# only accept connection to tcp port 80 (Apache) if ip is between 192.168.1.100 and 192.168.1.200
iptables -A INPUT -p tcp --destination-port 80 -m iprange --src-range 192.168.1.100-192.168.1.200 -j ACCEPT

# nat example
iptables -t nat -A POSTROUTING -j SNAT --to-source 192.168.1.20-192.168.1.25
```

## Restrict the Number of Parallel Connections To a Server Per Client IP
You can use connlimit module to put such restrictions.
To allow 3 ssh connections per client host,
or restric HTTP requests, enter:

```bash
# allow 3 ssh connections per client host
sudo iptables -A INPUT -p tcp --syn --dport 22 -m connlimit --connlimit-above 3 -j REJECT

# set HTTP requests to 20:
sudo iptables -p tcp --syn --dport 80 -m connlimit --connlimit-above 20 --connlimit-mask 24 -j DROP
```

Where,

* **--connlimit-above 3** : Match if the number of existing connections is above 3.
* **--connlimit-mask 24** : Group hosts using the prefix length. For IPv4,
this must be a number between (including) 0 and 32.

## Testing Your Firewall
Find out if ports are open or not, enter:

```bash
# identify what ports are open
netstat -tulpn

# find out if tcp port 80 open or not, enter:
netstat -tulpn | grep :80

# if port 80 is not open, start Apache
service httpd start

# make sure iptables allowing access to the port 80
# iptables -L INPUT -v -n | grep 80
```

## Adding Comments to iptables Rules
* [Adding comments to iptables rules](https://major.io/2010/07/26/adding-comments-to-iptables-rules/)
* [commenting iptables rules](http://www.twam.info/software/linux/gentoo/commenting-iptables-rules)

## Saving iptables Rules
If you were to reboot your machine right after modifing your firewall,
your iptables configuration would disappear.
Rather than type this each time you reboot, however, you can save the configuration,
and have it start up automatically.
To save the configuration, you can use `iptables-save` and `iptables-restore`.
`iptables` stores the rules in memory but the ruleset created by
`iptables-save ruleset-name` can be used to store you rules in a safe place.

```bash
# dump iptables rules to stdout
sudo iptables-save

# dump iptable rules to a file so they can be restored later
sudo iptables-save > /etc/iptables/rules.v4

# restore iptable rules from file
sudo iptables-restore < /etc/iptables/rules.v4
```
For Ubuntu, to load the `iptables` rules files on boot up,
there is a package with the name `iptables-persistent`
which does the task of automatic loading of the saved `iptables` rules.
To do this, the rules must be saved in the file `/etc/iptables/rules.v4` for IPv4
and `/etc/iptables/rules.v6` for IPv6.

For use, the `iptables-persistent` package must simply be installed.

```bash
sudo apt-get install iptables-persistent
```

## Logging Traffic
If you would like to log dropped packets to syslog,
this would be the quickest way:

```bash
sudo iptables -I INPUT 5 -m limit --limit 5/min -j LOG --log-prefix "iptables denied: " --log-level 7
```

## Port Forwarding
* [Port Forwarding Using iptables](http://www.systutorials.com/816/port-forwarding-using-iptables/)
* [Iptables Forward Multiple Ports](https://ndtri128.wordpress.com/2014/05/19/iptables-forward-multiple-ports/)
* [Setting Up Gateway Using iptables and route on Linux](http://www.systutorials.com/1372/setting-up-gateway-using-iptables-and-route-on-linux/)
* [SSH Port Forwarding on Linux](http://www.systutorials.com/39648/port-forwarding-using-ssh-tunnel/)

## Flush / Remove All iptables Rules
Create the script `/root/fw.stop` using text editor:

```bash
#!/bin/sh

echo "Stopping firewall and allowing everyone..."

## Failsafe - die if /sbin/iptables not found
[ ! -x "$ipt" ] && { echo "$0: \"${ipt}\" command not found."; exit 1; }

iptables -P INPUT ACCEPT
iptables -P FORWARD ACCEPT
iptables -P OUTPUT ACCEPT

iptables -F
iptables -X

iptables -t nat -F
iptables -t nat -X

iptables -t mangle -F
iptables -t mangle -X

iptables iptables -t raw -F
iptables -t raw -X
```

Make sure you can execute the script via
`sudo chmod +x /root/fw.stop`
and then run the script as root user
`sudo /root/fw.stop`.

You can verify that firewall rules are flushed out via:
`iptables -L -v`
which should show that all chains will "ACCEPT" packets.

## Protect Your Network from Spamming, Scanning, etc.
[DROP (Don't Route Or Peer)][40] is an advisory "drop all traffic" list,
consisting of stolen 'zombie' netblocks and netblocks controlled entirely by professional spammers.

http://www.cyberciti.biz/tips/block-spamming-scanning-with-iptables.html

###############################
The firewall of Linux is in the hands of `iptables`
(which works with the underlying `netfilter` system).
Although incredibly powerful this makes using `iptables` complicated,
an so tends to make simple tasks complicated.
A much simpler front end for `iptables` is `ufw` (Uncomplicated Firewall).
The article "How To Setup a Firewall with UFW on an Ubuntu and Debian Cloud Server"
gives a good introductory tutorial on how to use `ufw`.
###############################

# WiFi Definitions and Concepts
All components that can connect into a wireless medium in a network are referred to as **stations**.
All stations are equipped with wireless network interface controllers (WNICs).
Wireless stations fall into one of two categories: wireless access points, and clients.

* **Access Points (APs)**, normally wireless routers, are base stations for the wireless network.
They transmit and receive radio frequencies for wireless enabled devices to communicate with.
* Wireless **clients** can be mobile devices such as laptops, personal digital assistants,
IP phones and other smartphones, or fixed devices such as desktops and workstations
that are equipped with a wireless network interface.

* **SoftAP** is short for Software enabled Access Point.
This is software that turns a computer that was not specifically made to be a
router into a Wireless Access Point.
It is often used interchangeably with the term "virtual router".
The advantage of SoftAP is the use of a regular cellphone,
for example, with a client antenna and data connection as an
Access Point to serve other wireless devices which do not have a data connection otherwise.
The wireless devices in the vicinity of the SoftAP enabled device,
which may not have the Internet access directly,
can use the Internet through the cellphone whose SoftAP is enabled.
This is called tethering.

The **basic service set (BSS)** is a set of all stations that can communicate with each other.
Every BSS has an identification (ID) called the BSSID,
which is the MAC address of the access point servicing the BSS.
There are two types of BSS:Independent BSS (also referred to as IBSS), and infrastructure BSS.

* An **independent BSS (IBSS)** is an ad hoc network that contains no access points,
which means they can not connect to any other basic service set (BSS).
* An **infrastructure BSS** can connect with other basic service set (BSS).

An **extended service set (ESS)** is a set of connected BSSs.
Access points in an ESS are connected by a distribution system.
Each ESS has an ID called the **SSID** which is a 32-byte (maximum) character string.

### Types of Wireless LANs
The IEEE 802.11 has two basic modes of operation: ad hoc mode and infrastructure mode.

* In **ad hoc mode**, mobile units transmit directly peer-to-peer.
There is no base and no one gives permission to talk.
This is accomplished using the Independent Basic Service Set (IBSS).
* In **infrastructure mode**, mobile units communicate through an access point that serves
as a bridge to other networks (such as Internet or LAN).

A **[WiFi Direct][06]**, also called WiFi P2P, network is another type of network where stations communicate peer to peer.
In a WiFi Direct group, the group owner operates as an access point and all other devices are clients.
There are two main methods to establish a group owner in the WiFi Direct group.

* In one approach, the user sets up a P2P group owner manually.
This method is also known as **Autonomous Group Owner** (autonomous GO).
* In the second method, also called **negotiation-based group creation**,
two devices compete based on the group owner intent value.
The device with higher intent value becomes a group owner and the second device becomes a client.
Group owner intent value can depend on whether the wireless device performs a
cross-connection between an infrastructure WLAN service and a P2P group,
remaining power in the wireless device, whether the wireless device is already a group owner in another group
and/or a received signal strength of the first wireless device.

A **bridge** can be used to connect networks, typically of different types.
A wireless Ethernet bridge allows the connection of devices on a wired Ethernet network to a wireless network.
The bridge acts as the connection point to the Wireless LAN.

A **wireless distribution system (WDS)** is a system enabling the wireless interconnection
of access points in an IEEE 802.11 network.
It allows a wireless network to be expanded using multiple access points without the
traditional requirement for a wired backbone to link them.

# Traffic Shaping
Traffic Shaping (a.k.a Bandwidth Shaping or Packet Shaping)
is an attempt to control network traffic by prioritizing network resources
and guarantee certain bandwidth based on predefined policy rules.
Traffic shaping uses concepts of traffic classification, policy rules,
queue disciplines and quality of service (QoS).

http://www.iplocation.net/tools/traffic-control.php

# Test for Internet Speed
You determine your Internet download speed right from a terminal window
by using the `wget` command to pull a file from a remote server.
The speed is displayed in the terminal when the file download has completed

```bash
$ wget -O /dev/null http://speedtest.wdc01.softlayer.com/downloads/test10.zip

--2014-12-24 16:00:44--  http://speedtest.wdc01.softlayer.com/downloads/test10.zip
Resolving speedtest.wdc01.softlayer.com (speedtest.wdc01.softlayer.com)... 208.43.102.250
Connecting to speedtest.wdc01.softlayer.com (speedtest.wdc01.softlayer.com)|208.43.102.250|:80... connected.
HTTP request sent, awaiting response... 200 OK
Length: 11536384 (11M) [application/zip]
Saving to: ‘/dev/null’

100%[======================================>] 11,536,384  5.03MB/s   in 2.2s

2014-12-24 16:00:46 (5.03 MB/s) - ‘/dev/null’ saved [11536384/11536384]
$
```

[How to Test Internet Connection Speed using Speedtest-Cli on Ubuntu Server](http://ubuntuserverguide.com/2014/01/how-to-test-internet-connection-speed-using-speedtest-cli-on-ubuntu-server.html)

See [Fast.com](https://fast.com/)

# Script for Wireless Stations Monitoring
Here is a [script][11] that provides live stats monitor of wireless stations' link quality
and some additional useful information regarding the
bit rate, Tx/Rx packets, wireless signal strength, etc.
<!-- ------- Start: Gist Code Snippet ---------- -->
<style="padding: 5px; overflow: auto; font-family: Andale Mono,Lucida Console,Monaco,fixed,monospace; color: rgb(0, 0, 0); background-color: rgb(238, 238, 238); font-size: 12px; line-height: 14px; width: 90%;">
    <script src="https://gist.github.com/jeffskinnerbox/9277e3ee7961c47ec4c8.js"></script>
</style>
<!-- --------- End: Gist Code Snippet ------------ -->

## Sources
These are the major sources for the information and commands documented in this post.

* [Official Linux Wireless Wiki](http://wireless.kernel.org/en/users/Documentation)
* [Wireless Tools for Linux](http://www.hpl.hp.com/personal/Jean_Tourrilhes/Linux/Tools.htmlq)

## Requires More Research
These links should be explored to see what additional information
could be gathered for this cheat sheet.

* [Finding a device IP Address](http://www.cnx-software.com/2010/10/25/finding-a-device-ip-address/)

* [Find What Devices Are Connected to Network In Ubuntu](http://itsfoss.com/how-to-find-what-devices-are-connected-to-network-in-ubuntu/)
* [Wi-Fi on the Command Line](http://www.linuxjournal.com/content/wi-fi-command-line)
* [ Who is on my wifi?](http://forum.backbox.org/general-support/who-is-on-my-wifi/)
* [WiFinder is a Python Driven Roommate Warning System](http://hackaday.com/2014/06/28/wifinder-is-a-python-driven-roommate-warning-system/)

* [7 Things Wi-Fi Hackers Hope You Don't Know](http://www.nowiressecurity.com/articles/things_wi-fi_hackers_hope_you_dont_know.htm)
* [First Linux Release of Wi-Fi app inSSIDer Available to Download](http://www.omgubuntu.co.uk/2011/01/wi-fi-app-inssider-2-linux-alpha-released)

# Route
* [Linux route Add Command Examples](http://www.cyberciti.biz/faq/linux-route-add/)
* [The Linux ip Command – An Ostensive Overview](http://packetpushers.net/linux-ip-command-ostensive-definition/)

# Nmap
* [Beginner's Guide to Nmap](http://www.linux.com/learn/tutorials/290879-beginners-guide-to-nmap)
* [Top 30 Nmap Command Examples For Sys/Network Admins](http://www.cyberciti.biz/networking/nmap-command-examples-tutorials/)
* [Nmap Cheat Sheet](https://blogs.sans.org/pen-testing/files/2013/10/NmapCheatSheetv1.0.pdf)
* [Nmap Referasnce Guide](http://www.bandwidthco.com/whitepapers/netforensics/recon/nmap/NMAP%20Reference%20Guide.pdf)
* [NMAP - A Stealth Port Scanner](http://www.csc.villanova.edu/~nadi/csc8580/S11/nmap-tutorial.pdf)
* [Nmap Tutorial: Host Discovery](https://www.networkcomputing.com/network-security/nmap-tutorial-host-discovery/1390582372)


# Kismet
* [How to use Kismet: A free Wi-Fi network-monitoring tool](http://searchsecurity.techtarget.com/video/How-to-use-Kismet-A-free-Wi-Fi-network-monitoring-tool?videoId=8eb0fc2d1aa26410VgnVCM1000000d01c80aRCRD)

# Arbitrary Network Packets
* [HOWTO: Crafting arbitrary network packets with socat](http://discourse.criticalengineering.org/t/howto-crafting-arbitrary-network-packets-with-socat/51/last)
* [socat: Linux / UNIX TCP Port Forwarder](http://www.cyberciti.biz/faq/linux-unix-tcp-port-forwarding/)
* [socat: The General Bidirectional Pipe Handler](https://www.linux.com/news/socat-general-bidirectional-pipe-handler)
* [Some useful socat commands](http://technostuff.blogspot.com/2008/10/some-useful-socat-commands.html)
* [Socat, Another Network Swiss Army Knife](https://blog.rootshell.be/2010/10/31/socat-another-network-swiss-army-knife/)
* [Hands-on learning about network protocols using socat](http://www.volkerschatz.com/net/socatproc.html)



[01]:http://www.linux.com/learn/tutorials/290879-beginners-guide-to-nmap
[02]:http://wireless.kernel.org/en/users/Documentation/iw
[03]:http://wireless.kernel.org/en/users/Documentation/wpa_supplicant
[04]:http://wireless.kernel.org/en/developers/Documentation/ieee80211/power-savings
[05]:http://www.digitalairwireless.com.au/wireless-blog/recent/understanding-mcs-values.html
[06]:http://en.wikipedia.org/wiki/Wi-Fi_Direct
[07]:http://www.raspberrypi-spy.co.uk/2014/10/how-to-use-wavemon-to-monitor-your-wifi-connection/
[08]:http://linux.about.com/library/cmd/blcmdl8_iwevent.htm
[09]:http://www.binarytides.com/linux-netstat-command-examples/
[10]:http://www.cyberciti.biz/hardware/linux-install-nicstat-command-to-print-network-statistics-for-nics/
[11]:https://forum.openwrt.org/viewtopic.php?id=29075
[12]:http://linux.die.net/man/8/iwlist
[13]:https://www.debian-administration.org/article/502/Keeping_consistent_network_interface_names_with_ifrename
[14]:http://www.linuxfoundation.org/collaborate/workgroups/networking/iproute2
[15]:http://net-tools.sourceforge.net/
[16]:http://linuxcommand.org/man_pages/iwconfig8.html
[17]:http://linux.die.net/man/8/ip
[18]:http://linuxcommand.org/man_pages/iwconfig8.html
[19]:http://lartc.org/manpages/tc.txt
[20]:http://linux.die.net/man/8/arp
[21]:http://www.sans.org/security-resources/sec560/netcat_cheat_sheet_v1.pdf
[22]:http://nc110.sourceforge.net/
[23]:http://nmap.org/ncat/
[24]:http://www.telnet.org/
[25]:http://linux.die.net/man/8/ping
[26]:http://pcsupport.about.com/od/commandlinereference/p/tracert-command.htm
[27]:http://linux.about.com/od/commands/l/blcmdl8_route.htm
[28]:http://linux.die.net/man/1/nslookup
[29]:http://nmap.org/
[30]:http://linux.die.net/man/8/ettercap
[31]:http://www.tcpdump.org/manpages/tcpdump.1.html
[32]:https://www.wireshark.org/
[33]:http://linux.die.net/man/8/iwspy
[34]:http://linux.about.com/library/cmd/blcmdl8_iwpriv.htm
[35]:http://www.linuxuser.co.uk/tutorials/monitor-network-traffic-tutorial
[36]:http://www.netfilter.org/
[37]:http://www.howtogeek.com/177621/the-beginners-guide-to-iptables-the-linux-firewall/
[38]:http://www.admin-magazine.com/Archive/2014/20/IPv6-Tables
[39]:https://en.wikipedia.org/wiki/Firewall_(computing)
[40]:http://www.spamhaus.org/drop/
[41]:https://www.whatismyip.com/?iref=home
[42]:http://whatismyipaddress.com/ip-lookup
[43]:http://whatismyipaddress.com/trace-email
[44]:http://whatismyipaddress.com/hide-ip
[45]:https://help.ubuntu.com/community/UFW
[46]:https://help.ubuntu.com/community/Gufw
[47]:https://help.ubuntu.com/community/IptablesHowTo
[48]:http://www.cyberciti.biz/tips/linux-iptables-examples.html
[49]:https://www.digitalocean.com/community/tutorials/how-to-choose-an-effective-firewall-policy-to-secure-your-servers
[50]:https://www.digitalocean.com/community/tutorials/how-to-set-up-a-firewall-using-iptables-on-ubuntu-14-04
[51]:https://wiki.gnome.org/Projects/NetworkManager
[52]:https://en.wikipedia.org/wiki/Default_route
[53]:https://en.wikipedia.org/wiki/Dynamic_Host_Configuration_Protocol
[54]:https://en.wikipedia.org/wiki/Name_server
[55]:http://xmodulo.com/disable-network-manager-linux.html
[56]:https://iperf.fr/
[57]:http://www.avahi.org/
[58]:https://www.digitalocean.com/community/tutorials/a-deep-dive-into-iptables-and-netfilter-architecture
[59]:http://www.thegeekstuff.com/2012/02/dig-command-examples/
[60]:https://manpages.debian.org/cgi-bin/man.cgi?sektion=1&query=nmcli&apropos=0&manpath=sid&locale=en
[61]:http://linux.die.net/man/1/rfkill
[62]:http://support.qacafe.com/knowledge-base/how-do-i-prevent-network-manager-from-controlling-an-interface/
[63]:http://linux.die.net/man/8/iwgetid
[64]:https://opensource.com/business/16/8/introduction-linux-network-routing
[65]:https://www.blackmoreops.com/2015/12/31/use-arp-scan-to-find-hidden-devices-in-your-network/
[66]:http://www.nta-monitor.com/wiki/index.php/Arp-scan_User_Guide
[67]:http://www.kitploit.com/2015/02/socat-multipurpose-relay-socket-cat.html
[68]:https://blog.grandcentrix.net/a-command-line-websocket-client/
[69]:https://www.networkcomputing.com/networking/troubleshooting-why-ping-when-you-can-cryping/1061658753
[70]:https://www.bitwizard.nl/mtr/
[71]:https://github.com/raboof/nethogs
[72]:http://iptraf.seul.org/
[73]:https://www.wireshark.org/docs/man-pages/dumpcap.html
[74]:http://www.linuxandubuntu.com/home/how-to-monitor-ethernet-activity-in-linux-using-arpwatch
[75]:https://angryip.org/
[76]:https://en.wikipedia.org/wiki/Organizationally_unique_identifier
[77]:http://standards.ieee.org/develop/regauth/oui/public.html
[78]:https://standards.ieee.org/products-services/regauth/oui/index.html
[79]:https://coderseye.com/how-to-clear-arp-cache-on-linux-or-unix/
[80]:http://www.pool.ntp.org/en/
[81]:https://www.tecmint.com/set-time-timezone-and-synchronize-time-using-timedatectl-command/
[82]:https://linux.die.net/man/8/ntpdate
[83]:https://www.howtogeek.com/howto/windows-vista/allow-pings-icmp-echo-request-through-your-windows-vista-firewall/
[84]:https://www.clouddirect.net/knowledge-base/KB0011455/using-traceroute-ping-mtr-and-pathping
[85]:https://www.lifewire.com/what-does-telnet-do-2483642
[86]:https://tty-share.com/
[87]:https://tmate.io/
[88]:https://danielmiessler.com/study/tmux/
[89]:https://www.linode.com/docs/uptime/monitoring/use-vmstat-to-monitor-system-performance/
[90]:https://danielmiessler.com/study/bettercap/
[91]:https://nmap.org/book/zenmap.html#zenmap-purpose
[92]:https://insecure.org/
[93]:
[94]:
[95]:
[96]:
[97]:
[98]:
[99]:
[100]:https://access.redhat.com/sites/default/files/attachments/rh_ip_command_cheatsheet_1214_jcs_print.pdf
[101]:http://www.computerhope.com/unix/screen.htm
[102]:https://kthx.at/subnetmask/
[103]:http://www.labs.hpe.com/personal/Jean_Tourrilhes/Linux/Tools.html
[104]:http://manpages.ubuntu.com/manpages/xenial/man1/microcom.1.html
[105]:https://access.redhat.com/documentation/en-US/Red_Hat_Enterprise_Linux/6/html/Power_Management_Guide/RFKill.html
[106]:http://www.digimantra.com/linux/rfkill-enabledisable-wireless-linux-laptop/
[107]:http://www.thegeekstuff.com/2012/02/dig-command-examples/
[108]:http://linux.die.net/man/8/ping
[109]:http://pcsupport.about.com/od/commandlinereference/p/tracert-command.htm
[110]:http://linux.about.com/od/commands/l/blcmdl8_route.htm
[111]:http://www.raspberrypi-spy.co.uk/2014/10/how-to-use-wavemon-to-monitor-your-wifi-connection/
[112]:http://linux.die.net/man/5/wpa_supplicant.conf
[113]:http://linux.die.net/man/8/wpa_supplicant
[114]:http://linux.die.net/man/8/ifrename
[115]:http://linux.die.net/man/8/iwevent
[116]:http://linux.die.net/man/8/iwgetid
[117]:https://access.redhat.com/sites/default/files/attachments/rh_ip_command_cheatsheet_1214_jcs_print.pdf
[118]:http://packetpushers.net/linux-ip-command-ostensive-definition/
[119]:http://www.linuxfoundation.org/collaborate/workgroups/networking/iproute2
[120]:http://linux.die.net/man/8/ifconfig
[121]:http://linux.die.net/man/8/ip
[122]:http://linux.die.net/man/8/iwconfig
[123]:http://jwalanta.blogspot.com/2010/02/internet-connection-sharing-ics-in.html
[124]:http://linux.die.net/man/8/iw
[125]:https://wireless.wiki.kernel.org/en/users/Documentation/iw
[126]:https://wireless.wiki.kernel.org/en/developers/documentation/nl80211
[127]:https://dougvitale.wordpress.com/2011/12/21/deprecated-linux-networking-commands-and-their-replacements/
[128]:https://w1.fi/wpa_supplicant/
[129]:http://linux.die.net/man/8/wpa_cli
[130]:http://www.linuxjournal.com/content/wi-fi-command-line
[131]:https://seravo.fi/2014/create-wireless-access-point-hostapd
[132]:http://linux.die.net/man/8/iwspy
[133]:https://wiki.archlinux.org/index.php/wicd
[134]:
[135]:http://linux.die.net/man/8/iwlist
[136]:http://linux.die.net/man/8/iwpriv
[137]:
[138]:
[139]:
[140]:

