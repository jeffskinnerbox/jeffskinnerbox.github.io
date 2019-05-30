Cjdns gives each node a unique uncensored and authenticated IP6, and end to end crypto.
IPFS does for the web what Cjdns does for the internet.  https://ipfs.io/

[I2P](https://geti2p.net/en/) is an anonymous overlay network - a network within a network.
It is intended to protect communication from dragnet surveillance and monitoring by third parties such as ISPs.
I2PBerry allows Raspberry Pi users to surf the I2P anonymously -
https://www.element14.com/community/community/raspberry-pi/blog/2014/07/22/i2pberry-allows-raspberry-pi-users-to-surf-the-i2p-anonymously


IPFS is another essential building block for the neighborhood social app:
a place to post publicly accessible objects (web pages, documents) that doesn't require a centralized server.

* [Outernet](https://en.wikipedia.org/wiki/Outernet)
    * [OUTERNET RADIO FOR THE INFORMATION AGE](https://outernet.is/)
* [CJDNS Adhoc node](http://www.instructables.com/id/CJDNS-Adhoc-Node/?ALLSTEPS)
* [Hyperboria DNS solution](http://nxter.org/hyperboria-adopts-nxt-aliases-for-dns-solution/)
* [CJDNS NAT Gateway](https://github.com/cjdelisle/cjdns/blob/master/doc/nat-gateway.md)
* [fc00](https://www.fc00.org/about)
* [hyperboria/docs](https://github.com/hyperboria/docs)
* [Managing DNS for moving devices with cjdns and consul](https://rickvandeloo.com/2016/01/31/managing-dns-for-moving-devices-with-cjdns-and-consul/)
* [Decentralize common Fedora apps with Cjdns](https://fedoramagazine.org/decentralize-common-fedora-apps-cjdns/)
    * [Novalug presentation on youtube](https://www.youtube.com/watch?v=nHC3Nx8-5Lo)

* [ELI5 Why I don't seem to need port forwarding with CJDNS](https://www.reddit.com/r/darknetplan/comments/18umsp/eli5_why_i_dont_seem_to_need_port_forwarding_with/)
* [Installing and Configuring CJDNS on Ubuntu Linux](https://brianturchyn.net/installing-and-configuring-cjdns-on-ubuntu-linux/)
* [Using a CJDNS Tunnel for Site-Site Encryption](https://web.johncook.uk/articles/vps/cjdns-tunnel)
*
* [Nightfall](https://github.com/kpcyrd/nightfall)
* [yrd - cjdns swiss army knife](https://github.com/kpcyrd/yrd)
* [cjdns & hyperboria](https://events.sublab.io/system/attachments/6/original/praesi.pdf?1431710274)
* [airmesh](http://www.netlore.co.uk/airmesh/)

<a href="https://hyperboria.net/">
    <img class="img-rounded" style="margin: 0px 8px; float: left" title="Hyperboria is a peer-to-peer IPv6 network with automatic end-to-end encryption, distributed IP address allocatioonnd  the cjdns routing protocol. " alt="hyperboria-logo" src="{filename}/images/hyperboria-logo.png" width="270" height="58" />
</a>
[cjdns][03] is the routing protocol used by [Hyperboria][01][^A],
formerly known as [Project Meshnet][02].
Hyperboria is an encrypted Mesh Network that utilizes cjdns,
a [network layer (aka layer 3)][22] routing protocol
which implements [end-to-end encryption][21].
As illustrated in the [promotional video for Hyperboria][11],
its aim is to build a global decentralized computer network based
"on secure protocols for routing traffic over private mesh or
public internetworks independent of a central supporting infrastructure."

[^A]:
    In Greek mythology, the [Hyperboreans][24] were mythical people who lived "beyond the North Wind".
    The Greeks thought that Boreas, the god of the North Wind, lived in Thrace,
    and therefore Hyperborea indicates a region that lay far to the north of Thrace.
    This land was supposed to be perfect, with the sun shining twenty-four hours a day.

Hyperboria is a [pseudonymous network][27]
(meaning "false name" or state of disguised identity),
your direct peers can tell where you are (by virtue of their connection),
but no one else can (unless you expose your data personally).
Such a network is resistant to revealing you identity since
each node in a communication path must give up your idenity.
Given Hyperboria's usage focus is on freedom of access and free speech,
[Hyperboria makes a logical case][28] for this less than guaranteed, absolute anonymity.

So Hyperboria is a decentralized alternative network (see this [video][40])
to the Internet (aka [clearnet][12])
with privacy, security, and scalability as the main features.
Networks like Hyperboria are called a [darknet][10]
([not to be confused with the dark web][43])
as the are an overlay network
that can only be accessed with specific authorization.
Its like being your own ISP,
independent of the existing infrastructure by joining a local meshnet
or by overlaying your end-to-end encrypted traffic over the Internet (ivp6 over ipv4).
Anyone can join the Hyperboria network by installing [cjdns][03]
and connecting to existing peers.
Its not only about sticking it to the ISPs but addressing some [sociopolitical issues][04]
via "[meshnet activism][09]".

By installing and running cjdns on a home computer, for example,
that computer becomes a cjdns node that can be networked
with any other machine that is also running the protocol.
cjdns is hardware and protocol-agnostic.
It doesn't care how the nodes are actually communicating,
allowing it to serve as a bridge between otherwise incompatible networks.
So a cjdns router could include a single WiFi interface using a layer 2 mesh
to communicate with multiple peers,
or it could using multiple point to point links to communicate with a single peer each,
or it could use wired Ethernet,
and it can even bridge over existing networks including the Internet.
You can find a more extensive explanation of cjdns objectives
within [Project Goals][13] and [whitepaper][14] documents on Github.

A few local cjdns communities, called [mesh locals][08] have been established in
[Seattle][05], [NYC][06] and [Maryland][07].
A 'Mesh Local' is a mesh network situated in a particular geography,
focused on providing a community-centric alternative (or complement) to the internet.
The cjdns protocol was designed to be agnostic of the medium over which it communicates.
That means that even if the closest node is beyond the functional range
of that nodes wireless radio, you can still peer with it over the internet.
As a result, you local network can peer with distant cjdns network nodes.

For a more complete introduction of CJDNS and Mesh Networking,
check out my posts xxx and xxx.

###############################

* [Hyperboria Documentation](https://docs.meshwith.me/)
* [Hyperboria Peers API  - An API for finding nearby peers for the Hyperboria network](https://peers.fc00.io/)

###############################

Scuttlebot is an open source peer-to-peer log store used as a database,
identity provider, and messaging system. It features global replication,
file-syncronization, and end-to-end encryption.

* [Scuttlebot](http://scuttlebot.io/)
* [Secure Scuttlebutt Consortium](https://github.com/ssbc)
* [How to get invited to Secure Scuttlebot](http://evbogue.com/invitesforssb/)
* [/howto/ssb/scuttlebot](https://transitiontech.ca/howto/ssb/scuttlebot)
* [Introduction to Using Scuttlebot](https://ssbc.github.io/docs/scuttlebot/tutorial.html)
* [ssb handbook](https://github.com/ssbc/ssb-handbook)

###############################

The general procedure for creating a mesh network with cjdns is:
1. Install cjdns to create a node by following the [README file on Github][03].
1. Make sure your node is configured correctly, which can be determined from the XXXXX Trouble Shooting guide.
1. Locate your nearest Mesh Local, find a peer, and connect your node up with the network.

# Purpose of cjdns
* [Why](https://github.com/hyperboria/docs/blob/master/install/fedora.md)
* http://208.113.152.107/meetings/2016/5/cjdns-ip6-mesh-vpn

## cjdns as a VPN
Configuring a point to point VPN connection is fairly straightforward,
as is configuring a centralized VPN server and clients.
However, when every node in the VPN network needs to talk securely with many other nodes,
relaying every packet through the central server becomes a drag on performance,
and a single point of failure.
Mesh VPNs, like tinc and cjdns automatically create point to point connections
based on a shared overall configuration. Each node only needs a connection to one or more peers (that can be reused) to get things started.
Cjdns, however, goes much further than tinc.
On a local LAN or mesh with broadcast, it is zero configuration.
Peers are automatically discovered via the 0xFC00 layer 2 protocol.

* [Simple Service Discovery Protocol (SSDP)](https://en.wikipedia.org/wiki/Simple_Service_Discovery_Protocol)
* [Neighbor Discovery Protocol (NDP)](https://en.wikipedia.org/wiki/Neighbor_Discovery_Protocol)

# As a Darknet
In a widespread VPN, address assignment must be coordinated by a central authority.
The internet also uses centralized IP assignment,
which means a government can take away your IP at any time.
Cjdns uses CryptoGraphic Addressing (CGA).
Your IP6 is the SHA-512 of your public key truncated to 128 bits.
Your IP is as safe as the private key pair which produced it,
and cannot [insert standard cryptography disclaimer] be spoofed.
Most mesh VPNs decrypt packets before routing to a new node.
All cjdns packets are end to end encrypted - relay nodes are untrusted.
There is no centralized routing.
If a node is "blackholeing" packets for some reason - a sender simply doesn't route through that node anymore.

# Step 1: Prepare the Raspberry Pi - DONE
I have a post "XXX-howto-set-up-the-raspberry-pi-as-a-headless-device.md"
that will initialize the Raspberry Pi.
Start with this to get RPi ready for the next steps.

# Step 2: Retrieve cjdns from GitHub and Build It - DONE
Once you’ve gotten this far,
the instructions on the [Github page of the cjdns source code][03]
walk you through installation
(i.e. README.md file), https://github.com/cjdelisle/cjdns/blob/master/README.md
setup of cjdns,
and connecting to friends on the mesh.
What you see in this an following steps was derived, in large part,
from the cjdns GitHub site.

The Bash script `do` does the bulk of the work of getting cjdns built.
You'll find some documentation on the `do` script [here][15].
Below is how you should install the cjdns source and execute this script.

```bash
# make sure you already have all the required packages
sudo apt-get install nodejs build-essential git

# go to where you want to place the cjdns source and clone from GitHub
cd /opt
sudo git clone https://github.com/cjdelisle/cjdns.git cjdns

# go to the source directory and run a script to make cjdns
cd cjdns
sudo ./do
```

When you get the message
"Build completed successfully, type ./cjdroute to begin setup"
you can then proceed to the next step.

>**NOTE:** When building cjdns, I received the message "Failed to build cjdns.".
I did a [search for a solution][23] and I was advised to use the following as a temporary work around:
`sudo NO_TEST=1 Seccomp_NO=1 ./do`.
This gave me the desired message "Build completed successfully, type ./cjdroute to begin setup.".

In the future, if compilation errors occur in build,
you should back up `cjdroute.conf` to somewhere outside your source tree
and run `sudo ./clean`.

# Step X: Generate cjdns Configuration File - DONE
The utility `cjdroute` is used to start up cjdns,
but it is also used to create a configuration file.
Using `sudo ./cjdroute --help` will give you some documentation
on the use of `cjdroute` is shown below:

```bash
# change directory to cjdns location
cd /opt/cjdns

# print help information for cjdroute
$ ./cjdroute --help
Cjdns armel linux
Usage:
    cjdroute --help                This information
    cjdroute --genconf [--no-eth]  Generate a configuration file, write it to stdout
                                   if --no-eth is specified then eth beaconing will
                                   be disabled.
    cjdroute --bench               Run some cryptography performance benchmarks.
    cjdroute --version             Print the protocol version which this node speaks.
    cjdroute --cleanconf < conf    Print a clean (valid json) version of the config.
    cjdroute --nobg                Never fork to the background no matter the config.

To get the router up and running.
Step 1:
  Generate a new configuration file.
    cjdroute --genconf > cjdroute.conf

Step 2:
  Find somebody to connect to.
  Check out the IRC channel or http://hyperboria.net/
  for information about how to meet new people and make connect to them.
  Read more here: https://github.com/cjdelisle/cjdns/#2-find-a-friend

Step 3:
  Add that somebody's node to your cjdroute.conf file.
  https://github.com/cjdelisle/cjdns/#3-connect-your-node-to-your-friends-node

Step 4:
  Fire it up!
    sudo cjdroute < cjdroute.conf

For more information about other functions and non-standard setups, see README.md
```

To generate a cjdns configuration file, do the following:

```bash
sudo touch cjdroute.conf
sudo chmod a+w jcdroute.conf

# generate a cjdns configuration file
sudo ./cjdroute --genconf > cjdroute.conf

#  permissions set so only you can read & write to it
sudo chmod go-rwx cjdroute.conf
```

> **NOTE:** A lost cjdroute.conf file means you lost your password and connections to peered nodes.
Anyone who connected to you will no longer be able to connect.
A compromised cjdroute.conf file means that other people can impersonate you on the network.

Beyond creating a configuration file,
`cjdroute --genconf` generates a password (which you keep secret) and public key
that you can share with nodes you wish to peer and authorize them to connect to you,
and a IPv6 address that uniquly identifies your node.
(You'll find this at the top of the `cjdroute.conf` file.)
Whenever a message tries to be routed to your instance of cjdns,
these these trusted nodes will encrypt that password with that public key.
So your instance of cjdns can verify that someone else has the correct password,
and that the password was meant only for you, and only you can decrypt that password.

To operate properly, the `cjdroute.conf` file must be correctly formatted
or it fails to operate properly without warning.
The [Hyperboria website][41] recommends checking the file with a [Javascript lint utility][42], `jshint`.

```bash
sudo jshint ./cjdroute.conf
```

> **NOTE:** This will allow comments, but jshint is designed for Javascripts
and may not display errors and warnings etc. in all cases.

# Step X: Find a Peering Node - DONE
cjdns's network operates on a [friend-of-a-friend model][28].
This means, that to connect to the network you need to find nodes, called peers,
which allow you to connect to the network.
To get into an existing network (e.g. Hyperboria),
you need to connect to someone who is already in the network.
To find a peering node, you could join [Hyperboria community][16],
or you can peer with public peers to get into the network right away.

[To do the public peering][17],
first get on the [#cjdns channel on the Efnet IRC Network][18][^B].
Once in the channel, type ? public and you'll get links to public peers.
I found this URL http://cjdns.ca/ provided a link to [public peers][20],
or this [list of public peers][26] in Hyperboria's GitHub,
or this [widely known public node][25].
Follow any link and get to the peer info or "creds",
which look something like this:

[^B]:
    [EFnet or Eris-Free][19] network is a major Internet Relay Chat (IRC) network,
    with more than 35,000 users.
    It is the modern-day descendant of the original IRC network.

From **[https://pad.meshwith.me/p/public](https://pad.meshwith.me/p/public)**

```json
// coyo
"45.33.82.56:50492": {
    "password": "dustgard+d6f06c921bc26e8ede35fb5a8d97692f58b6d241",
    "publicKey": "h8dzr60ylqk7dx47mlfk6tdu0gyuk0vtpckbn1lvp2hl6c764bj0.k",
    "ipv6": "fcf1:4069:e3c4:6e66:9460:b92b:b156:cb9f",
    "hostname": "li1045-56.members.linode.com",
    "location": "Dallas, TX, USA",
    "contact": "coyo@darkdna.net"
}
```

```json
// Derp's Public Peer, password guaranteed until October 03, 2016
"142.4.212.42:1441": {
    "contact": "derp@HypeIRC,EFnet",
    "location": "Beauharnois, Quebec, Canada",
    "hostname": "fusion.hyperboria.ca",
    "password":"201510034nnmj97n54nby3797xt227lr0538ty4",
    "publicKey":"9uf222z95bxd7sgvncdtzr2skgjp7vdr472f7u74pc0zxu0pjxl0.k"
}
```

From **[https://jointhe.hyperboria.network/](https://jointhe.hyperboria.network/)**

```json
"74.221.208.153:25521": {
  "password": "jljwnfutfpt1nz3yjsj0dscpf7",
  "publicKey": "8hgr62ylugxjyyhxkz254qtz60p781kbswmhhywtbb5rpzc5lxj0.k",
  "hostname": "seanode.meshwith.me",
  "contact": "peering@meshwith.me"
}
```

I'm not going to provide these public peers access to my machine,
but it I did, I would give `coyo@darkdna.net`
(who is making the INbound connection) the following 4 items:

1. My external IPv4
1. The port found in my conf file here: // Bind to this port. "bind": "0.0.0.0:yourportnumberishere",
1. The unique password that you uncommented or created: "password": "thisisauniquestring_002"
1. My public key: "publicKey": "thisisauniqueKEY_001.k"
1. His username: "William Jevons"

# Step X: Peering with a Node - DONE
If I was to use the information above concerning the public node,
I would paste it into the `cjdroute.conf` file generated earlier.
Instead, I'll be peering with someone I know and who has provide me their credentials:

```json
"70.184.247.44:4995": {
  "password":"vNL3hST9wQnBzCnD5JO32EEIN3sVlfc",
  "publicKey":"pgsx1w3fr74rskxfs6uufmyy72rgkt46u9hy7r9zcz9uvc3wj4j0.k",
  "contact": "stuart@gathman.org",
  "location": "Fairfax,VA,USA"
}
```

The peer information goes into the "connectTo" section under the "UDPInterface" section.
Note that under UDPInterface there are separate sections for IPv4 and IPv6 based peers.
This is a IPv4 peer.
Make sure you don't mix them up.

To initiate the connection **OUTbound** to this cjdns peer,
you make updates to the `/opt/cjdns/cjdroute.conf` file.
Within `cjdroute.conf`, search for "UDPInterface" and you will see:

```json
    // Interfaces to connect to the switch core.
    "interfaces":
    {
        // The interface which connects over UDP/IP based VPN tunnel.
        "UDPInterface":
        [
            {
                // Bind to this port.
                "bind": "0.0.0.0:10848",

                // Nodes to connect to (IPv4 only).
                "connectTo":
                {
                    // Add connection credentials here to join the network
                    // If you have several, don't forget the separating commas
                    // They should look like:
                    // "ipv4 address:port": {
                    //     "login": "(optional) name your peer has for you"
                    //     "password": "password to connect with",
                    //     "publicKey": "remote node key.k",
                    //     "peerName": "(optional) human-readable name for peer"
                    // },
                    // Ask somebody who is already connected.
                }
            },
            {
                // Bind to this port.
                "bind": "[::]:10848",

                // Nodes to connect to (IPv6 only).
                "connectTo":
                {
                    // Add connection credentials here to join the network
                    // Ask somebody who is already connected.
                }
            }
        ]
```

In the "Nodes to connect to (IPv4 only)" section,
I'll place my peering friend:

```json
// Interfaces to connect to the switch core.
    "interfaces":
    {
        // The interface which connects over UDP/IP based VPN tunnel.
        "UDPInterface":
        [
            {
                // Bind to this port.
                "bind": "0.0.0.0:10848",

                // Nodes to connect to (IPv4 only).
                "connectTo":
                {
                    // Add connection credentials here to join the network
                    // If you have several, don't forget the separating commas
                    // They should look like:
                    // "ipv4 address:port": {
                    //     "login": "(optional) name your peer has for you"
                    //     "password": "password to connect with",
                    //     "publicKey": "remote node key.k",
                    //     "peerName": "(optional) human-readable name for peer"
                    // },
                    // Ask somebody who is already connected.

                    "70.184.247.44:4995": {
                        "password":"vNL3hST9wQnBzCnD5JO32EEIN3sVlfc",
                        "publicKey":"pgsx1w3fr74rskxfs6uufmyy72rgkt46u9hy7r9zcz9uvc3wj4j0.k",
                        "contact": "stuart@gathman.org",
                        "location": "Fairfax,VA,USA"
                    }
                },
            {
                // Bind to this port.
                "bind": "[::]:10848",

                // Nodes to connect to (IPv6 only).
                "connectTo":
                {
                    // Add connection credentials here to join the network
                    // Ask somebody who is already connected.
                }
            }
```

You can add as many connections as you want to the `connectTo` attribute,
just follow the JSON syntax.

With this, cjdns allows you to initiate a connection
outbound (from YOU --> FRIEND) but **not inbound (from FRIEND --> YOU)**
but traffic flows both ways once the connection is established.

To allow you friends to initiate connections **INbound**,
you will need to search for "authorizedPasswords"
and provide information to your friend from the following code block:

```json
"authorizedPasswords":
    [
        // A unique string which is known to the client and server.
        // Specify an optional user to identify the peer locally.
        // It is not used for authentication.
        {"password": "l5gfl2cpw3la9w2btyxtxrj6j3m4g29", "user": "default-login"}

        // More passwords should look like this.
        // {"password": "x4nk5bx053h7knp8hd7q9mxzc6ql4sg", "user": "my-second-peer"},
        // {"password": "09xj971qnbku49lcrrnh2ng6s2yq28p", "user": "my-third-peer"},
        // {"password": "d724vkeh28p4sbyrqq1gk72nfpjspq7", "user": "my-fourth-peer"},

        // Below is an example of your connection credentials
        // that you can give to other people so they can connect
        // to you using your default password (from above).
        // The login field here yourself to your peer and the peerName field
        // is the name the peer which will be displayed in peerStats
        // Adding a unique password for each peer is advisable
        // so that leaks can be isolated.
        /*
        "your.external.ip.goes.here:10848": {
            "login": "default-login",
            "password":"lvgfl5cpw3lkkw2bty2tlrj6j3m7g29",
            "publicKey":"tnr03bu2ms6i5dn3mhsx31kbs7gxlokrpk8gsgcdlcbksrzd2bq0.k",
            "peerName":"your-name-goes-here"
        },
        */
    ],
```

Ideally, I would provide information like this, in this format:

```json
// Jeff Irland's experimental cjdns node (mesh01)
"71.171.94.138:10848": {
    "login": "default-login",
    "password": "lvgfl2cpw3lktw2btyxtlrj6j3mzg29",
    "publicKey": "3wqkmjxsxld3lvgzp76mpbtzqqmt454kwrdsp7j0tjh2mgn580z0.k",
    "ipv6": "fc00:f3d3:8434:d96a:dc78:f224:32e4:b890",
    "peerName": "jeff_irland_mesh01",
    "contact": "jeff.irland@verizon.net",
    "location": "Leesburg, VA"
}
```

To find out more about peering, check out these sources:

* [What is Hyperboria?](https://github.com/hyperboria/docs/blob/master/faq/peering.md#why-should-i-prefer-the-friend-of-a-friend-model)
* [How to install cjdns](https://github.com/hyperboria/cjdns#how-to-install-cjdns)
* [Configuring cjdns](https://github.com/cjdelisle/cjdns/blob/master/doc/configure.md)
* [Connect your node to your friend's node](https://github.com/cjdelisle/cjdns#3-connect-your-node-to-your-friends-node)
* [Peers](https://github.com/hyperboria/peers)

# Step X: Open-Up the firewall
Within `/opt/cjdns/cjdroute.conf` look up the port being used to peer with other cjdns nodes.
look for line "bind":"0.0.0.0:<PORT>" within the  "UDPInterface" section.
In my case the port is 10848.
For cjdns to work properly, packets must flow through this port, and so it must be open.
Generally it will be closed but to check use[nmap][38][^D] or [`netstat`][35][^E]:

[^D]:
    Nmap ("Network Mapper") is a free and open source (license) utility for
    network discovery and security auditing.
    Many systems and network administrators also find it useful for tasks such as network inventory,
    managing service upgrade schedules, and monitoring host or service uptime.

[^E]:
    netstat ("network statistics") is a command-line tool that displays network connections
    (both incoming and outgoing), routing tables, and a number of network interface
    (network interface controller or software-defined network interface) and network protocol statistics.

```bash
# to list port that have something listening on it
netstat -an | grep LISTEN

# if the output is empty, then the port is closed
netstat -an | grep 10848
```

* [The Linux Firewall](http://code.tutsplus.com/tutorials/the-linux-firewall--net-31748)

The firewall of Linux is in the hands of `iptables`
(which works with the underlying `netfilter` system).
Although incredibly powerful this makes using `iptables` complicated,
an so tends to make simple tasks complicated.
A much simpler front end for `iptables` is [`ufw` (Uncomplicated Firewall)][31].
The article "[How To Setup a Firewall with UFW on an Ubuntu and Debian Cloud Server][32]"
gives a good introductory tutorial on how to use `ufw`.

First, lets ensure that UFW is configured to support IPv6
so that will configure both your IPv4 and IPv6 firewall rules.
Execute the following:

```bash
# if the command returns yes, the ufw is configured to support bot IPv4 and IPv6
$ grep IPV6 /etc/default/ufw
IPV6=yes
$
```

Make sure "IPv6" is set to "yes".
If not, edit the file, change it, and then restart the firewall with:

```bash
sudo ufw disable
sudo ufw enable
```

To open the 10848 to allow UDP packets, use the command: `sudo ufw allow 10848/udp`.

```bash
# ufw command structure looks like this:
# ufw [--dry-run] [options] [rule syntax]

# open port 10848 for UDP packets
$ sudo ufw allow 10848/udp
Rule added
Rule added (v6)

# for safe measure, make sure port 22 is open so SSH continues to work
$ sudo ufw allow 22/tcp
Skipping adding existing rule
Skipping adding existing rule (v6)
$

# check the status of the firewall
$ sudo ufw status
Status: active

To                         Action      From
--                         ------      ----
10848/udp                  ALLOW       Anywhere
22/tcp                     ALLOW       Anywhere
10848/udp                  ALLOW       Anywhere (v6)
22/tcp                     ALLOW       Anywhere (v6)

$
```

Now check externally to the cjdns device to see what ports are open

```bash

$ sudo nmap -Pn mesh01

Starting Nmap 6.40 ( http://nmap.org ) at 2016-03-18 13:55 EDT
Nmap scan report for mesh01 (192.168.1.181)
Host is up (0.066s latency).
Not shown: 999 filtered ports
PORT   STATE SERVICE
22/tcp open  ssh
MAC Address: 74:DA:38:56:03:CD (Unknown)

Nmap done: 1 IP address (1 host up) scanned in 20.13 seconds
$

# UDP port scan on port 10848
sudo nmap -sU -Pn -p 10848 mesh01

Starting Nmap 6.40 ( http://nmap.org ) at 2016-03-18 14:34 EDT
Nmap done: 1 IP address (0 hosts up) scanned in 0.85 seconds
$

# second scan
$ sudo nmap -sU -Pn -p 10848 mesh01

Starting Nmap 6.40 ( http://nmap.org ) at 2016-03-18 15:00 EDT
Nmap scan report for mesh01 (192.168.1.181)
Host is up (0.043s latency).
PORT      STATE  SERVICE
10848/udp closed unknown
MAC Address: 74:DA:38:56:03:CD (Unknown)

Nmap done: 1 IP address (1 host up) scanned in 0.88 seconds
$
```

>**Note** that UDP scanning is [problematic][36] and so unreliable because
of the lack of a confirming SYN-ACK or other packet as with TCP.
As such, many false positives can occur from UDP port scans.
When a generic UDP packet is sent to a UDP port of a remote host,
one of the following occurs:
* If the UDP port is open, the packet is accepted, no response packet is sent. This might be interpreted as closed by the software tools.
* If the UDP port is closed, an ICMP packet is sent in response with the appropriate error code such as "Destination Unreachable".
[Scanning UDP ports is more inference-based][37], since it does not rely on
acknowledgements from the remote host like TCP does,
but instead collects all ICMP errors the remote host sends for each closed port.
Therefore, closed ports are detected by the presence of ICMP response packets,
open ports are detected by the lack of response packets.

Next you must make sure your local network router firewall is open on the same port
and forwarded to your cjdns node.
In my case, my router has an admin portal on `192.168.1.1`
where I can do [port forwarding on my FIOS router][33].

To check if a port is open on your network router,
use "[You Get Signal][34]".
This is a free website utility for remotely verifying
if a port is open or closed.
It is useful to users who wish to verify port forwarding,
check to see if a server is running,
or a firewall or ISP is blocking certain ports.

# Step X: Starting Up cjdns
With the updates to `/opt/cjdns/cjdroute.conf`
and openning of the proper prots on your firewalls,
your ready to start-up cjdns with the command[^C]:

[^C]:
    The command `sudo ./cjdroute < cjdroute.conf` [may not work because][30]
    the "`<`" redirection is performed by your shell,
    which does not have the permission of root.
    The redirection of the stdin, stdout, stderr is not performed by sudo.

```bash
cd /opt/cjdns

# get WARNING message with this and doesn't' seem to work
sudo ./cjdroute < cjdroute.conf

# you could do the following (pi owns the process)
sudo cat cjdroute.conf | ./cjdroute

# you could do the following (nobody owns the process)
sudo sh -c './cjdroute < cjdroute.conf'

# maybe the best method (nobody owns the process)
sudo -s
./cjdroute < cjdroute.conf
```

If all goes well, `cjdroute` starts up a daemon in the background,
and lets you know.
You should see no ERROR or WARNING messages, but just DEBUG, INFO are acceptable.
When completed, you should see something like this at the end:

```
1443702359 DEBUG Configurator.c:635 Cjdns started in the background
```

If not, you probably have something wrong with the configuration file.
The above starts cjdns as the root user so it can configure your
system without concern for permissions.
To start cjdns as a non-root user, see the document "[Run cjdns as a non-root user][29]".

To stop cjdns, just do the following:

```bash
# stop cjdns
sudo killall cjdroute
```

# Step X: Check for Listening Services
Once you start running cjdns, you become a IPv6 host.
Linux may automatically reconfigure network services to use this new address.
Unless you specifically desire this, you'll need to suppress Linux from making these network changes.

```bash
# do a TCP connect scan on all ports
nmap -6 -n -r -v -p1-65535 -sT fe80::76da:38ff:fe56:3cd
Starting Nmap 6.47 ( http://nmap.org ) at 2016-03-13 15:34 UTC
Initiating Ping Scan at 15:34
Scanning fe80::76da:38ff:fe56:3cd [2 ports]
Strange error from connect (22):Invalid argument
Completed Ping Scan at 15:34, 0.01s elapsed (1 total hosts)
Nmap scan report for fe80::76da:38ff:fe56:3cd [host down]
Read data files from: /usr/bin/../share/nmap
Note: Host seems down. If it is really up, but blocking our ping probes, try -Pn
Nmap done: 1 IP address (0 hosts up) scanned in 1.20 seconds

# do a TCP connect scan on all ports, don't perform host discovery (-Pn)
# and specify the network interface (%wlan0)
$ nmap -6 -n -r -v -p1-65535 -sT fe80::76da:38ff:fe56:3cd%wlan0
Starting Nmap 6.47 ( http://nmap.org ) at 2016-03-13 15:43 UTC
Initiating Ping Scan at 15:43
Scanning fe80::76da:38ff:fe56:3cd [2 ports]
Completed Ping Scan at 15:43, 0.00s elapsed (1 total hosts)
Initiating Connect Scan at 15:43
Scanning fe80::76da:38ff:fe56:3cd [65535 ports]
Discovered open port 22/tcp on fe80::76da:38ff:fe56:3cd
Completed Connect Scan at 15:43, 27.89s elapsed (65535 total ports)
Nmap scan report for fe80::76da:38ff:fe56:3cd
Host is up (0.0060s latency).
Not shown: 65534 closed ports
PORT   STATE SERVICE
22/tcp open  ssh

Read data files from: /usr/bin/../share/nmap
Nmap done: 1 IP address (1 host up) scanned in 29.39 seconds
```

The first nmap scan didn't fully work and you get the message
"Strange error from connect (22):Invalid argument".
The second scan worked.
It shows this host is up,
has no services running on ports 1-65535, and has a firewall.
Note that there is one port open, port 22 for SSH.

If you see anything open, fix it.
Edit `/etc/ssh/sshd_config` to read:

```bash
ListenAddress 192.168.1.1
```

[See instructions](https://github.com/hyperboria/cjdns#4-secure-your-system---check-for-listening-services)
#################

# Step X: Check for Packets
A key feather of cjdns it request from Linux the generation of virtual network interfaces
that do not connect to a wire but to a process that simulates the network.
Often these devices are called [TUN or TAP][39].
TUN is used with routing, while TAP is used for creating a network bridge.

TUN (namely network TUNnel) simulates a network layer device
and it operates with layer 3 packets like IP packets.
TUN has a companion device called TAP (namely network TAP) and it
simulates a link layer device and it operates with layer 2 packets like Ethernet frames.

The TUN TAP device appears the same to the kernel in that it can't tell whether
the data comes from a wire connected to an ethernet interfaces or from a userland application.
When data is written it is forwarded to the userland application
rather than a physical interface device eg. `eth0`.

With cjdns running and you execute `ifconfig`,
you'll see there is a network interface called `tun0`.
If you `killall cjdroute` (i.e. terminate cjdns), you will see that `tun0` disappears.

#################
Running `ifconfig tun0` should reveal some RX / TX packets.

to sniff for ethernet cjdns traffic
`tcpdump -nn -s0 -t -vv -e -i wlan0 ether proto 0xfc00`
#################

# Step X: Check Your Connectivity to Hyperboria
Given your running cjdns and peered with a public Hyperboria node,
let’s check if you have access to any of the websites ONLY available Hyperboria.
The websites `socialno.de`, `irc.cjdna.ca`, `forum.meshbits.io`, `hyperboria.name`, `rows.io`
are only reachable via Hyperboria.
Just ping to any of these websites, and see if you are getting a response.

ping6 socialno.de
or
ping6 irc.cjdns.ca
or
ping6 forum.meshbits.io

what about /opt/cjdns/tools/ping and pingAll

Ping is not the best tool to be used to test the availability of a remote network. Although ping can tell you that a network is reachable and send you response times, the lack of that information does not imply that the network is down.
The lack of a ping return is most likely (1) ping is disabled on router or (more likely) end point or (2) Network is congested or misconfigured.

Another check is to validate you have established connections to any peer nodes
in your cjdns configuration file `/opt/cjdns/cjdroute.conf`.

/opt/cjdns/tools/peerStat

http://meshbits.io/getting-started-with-meshnet-on-linux/

# Step X: Peering with You Own Nodes
Now you could also create your own network by creating one or more nodes,
just like the one your creating now on a Raspberry Pi, and peer with them.

```json
// Jeff Irland's experimental cjdns node (mesh01)
"71.171.94.138:10848": {
    "login": "default-login",
    "password": "lvgfl2cpw3lktw2btyxtlrj6j3mzg29",
    "publicKey": "tnr01bu2ms6b5dx3mhsx31kbsngxltkrpk1gsgcdlcb9srzdubq0.k",
    "ipv6": "fc30:e192:ae61:b973:4ae5:9383:423a:4200",
    "peerName": "jeff_irland_mesh01",
    "contact": "jeff.irland@verizon.net",
    "location": "Leesburg, VA"
}
```

Assuming William Jevons is a friend and I wish to allow INbound connection,
I need to provide William the following 4 items:

1. My external IPv4
1. The port found in my conf file here: // Bind to this port. "bind": "0.0.0.0:yourportnumberishere",
1. The unique password that you uncommented or created: "password": "thisisauniquestring_002"
1. My public key: "publicKey": "thisisauniqueKEY_001.k"
1. His username: "William Jevons"

My firends login credentials will look something like this (with your IPv4 and port):

```json
"1.2.3.4:56789": {
    "login": "William Jevons",
    "password": "thisisauniquestring_002",
    "publicKey": "thisIsJustForAnExampleDoNotUseThisInYourConfFile_1.k"
}
```


# Admin Interface
[Admin Interface](https://github.com/hyperboria/cjdns#admin-interface)

# Step X: Administrative Stuff
* [Admin interface](https://github.com/cjdelisle/cjdns#admin-interface)
* https://www.npmjs.com/package/cjdns-admin
* [cjdns-admin (0.1.1)](https://docs.omniref.com/js/npm/cjdns-admin/0.1.1)

# Step X: Get in IRC
[Get in IRC](https://github.com/hyperboria/cjdns#6-get-in-irc)

# Step X: Secure Your System
* [Self-check your network services](https://github.com/cjdelisle/cjdns/blob/master/doc/network-services.md)

# Step X: Start Your cjdns Services
* [Start it up!](https://github.com/cjdelisle/cjdns#5-start-it-up)
* [Anatomy of a running cjdns](https://docs.meshwith.me/cjdns/anatomy.html)
* [More Hyerboria Docs](https://docs.meshwith.me/)

# Step X: Testing
* [Testing the network](https://github.com/hyperboria/docs/blob/master/quickstart.md#step-4-testing-the-network)

Most of you might have come across a service called Reddit and some of you might even be very active there. The source code for reddit is available for public. Similarly there is an service called UPPIT in Hyperboria which is a clone of Reddit that will be accessible only on Hyperboria network but not through the regular Internet.

If you try connecting to http://uppit.us through regular internet,
you cannot access the service, but once you started using cjdns & connected to Hyperboaria,
only then you can get access to uppit.us service.

# cjdns NAT Gateway
* [CJDNS NAT Gateway](https://github.com/cjdelisle/cjdns/blob/master/doc/nat-gateway.md)

# 3rd Party Tools for managing/working with cjdns
* [cjdns Tools](https://github.com/hyperboria/docs/blob/master/ctrls.md)

# Step X: Troubleshooting
* [Troubleshooting](https://github.com/hyperboria/docs/blob/master/quickstart.md#troubleshooting)

# Step X: Keep Peering Credentials Safe
* https://docs.meshwith.me/cjdns/operator-guidelines.html

# Step X: enable the service and start it up
The article
[Running cjdns on Raspbian Jessie](http://mesh.philly2600.net/?p=54)
show you how to use `systemctl` to run cjdns at start-up.

# Step X: Configure cjdns as a NAT Gateway
* [CJDNS NAT Gateway](https://github.com/cjdelisle/cjdns/blob/master/doc/nat-gateway.md)

# Step X: Hyperboria Map
* http://www.fc00.org/

# Step X: Discoverability
* [nodeinfo.json](https://github.com/hyperboria/docs/blob/master/cjdns/nodeinfo-json.md)
* [Adding your public node's credentials](https://github.com/hyperboria/peers)

You may install a network service that depends on cjdns,
for instance you might install `thttpd` to serve up [`nodeinfo.json`](https://docs.meshwith.me/en/cjdns/nodeinfo.json.html).
If `thttpd` is configured to listen only on your cjdns IP,
then it will not start until cjdns is up and running.
Add `After=cjdns-wait-online.service` to `thttpd.service` to hold off starting
the service until cjdns has the tunnel up and ready.

# Step X: Clone the SD Card
* [Backup, Restore, Customize and Clone your Raspberry Pi SD Cards (tutorial)](http://sysmatt.blogspot.com/2014/08/backup-restore-customize-and-clone-your.html)
* [Duplicating Your Raspberry Pi’s SDHC Card](https://programmaticponderings.wordpress.com/2013/02/12/duplicating-your-raspberry-pis-sdhc-card/)
* [CLONE AN SD CARD ON LINUX, UBUNTU 12.04](http://rricketts.com/clone-an-sd-card-on-linux-ubuntu-12-04/)
* [Back-up a Raspberry Pi SD card using a Mac](https://smittytone.wordpress.com/2013/09/06/back-up-a-raspberry-pi-sd-card-using-a-mac/)
* [How to Clone Raspberry Pi SD Cards Using the Command Line in OS X](http://computers.tutsplus.com/articles/how-to-clone-raspberry-pi-sd-cards-using-the-command-line-in-os-x--mac-59911)

# Heartbeat Services
* [Getting Started with Heartbeat](http://www.linuxjournal.com/article/9838)
* [Linux heartbeat installation](https://www.watters.ws/mediawiki/index.php/Linux_heartbeat_installation)
* [Heartbeat Clustering in Linux](http://www.linuxnix.com/heartbeat-clustering/)
* [The Linux-HA User’s Guide](http://www.linux-ha.org/doc/users-guide/users-guide.html)

# Meshing Raspberry Pi
* [Mesh networking with multiple Raspberry Pi boards](http://hackaday.com/2012/11/14/mesh-networking-with-multiple-raspberry-pi-boards/)
* [Raspberry Pi Wireless Mesh: Scripts, Data, Plots – oh my!](http://lab.uchicago.edu/2013/09/27/raspberry-pi-wireless-mesh-scripts-data-plots-oh-my-part-1/)

# Meshing Raspberry Pi with CJDNS
* [Getting started with Hyperboria (cjdns), on Linux](http://meshbits.io/getting-started-with-meshnet-on-linux/)
* [Running cjdns on Raspbian Jessie](http://mesh.philly2600.net/?p=54)
* [Meshberry v0.2](https://nycmesh.net/meshberry/)
* [How to Connect to a DarkNet](http://www.tinkernut.com/portfolio/connect-to-a-darknet/)
* [Hyperboria Documentation](https://docs.meshwith.me/)



[01]:http://hyperboria.net/
[02]:https://projectmeshnet.wordpress.com/
[03]:https://github.com/cjdelisle/cjdns
[04]:http://makezine.com/2014/11/26/how-meshnets-are-changing-the-face-of-the-web/
[05]:https://seattlemesh.net/about
[06]:https://nycmesh.net/
[07]:https://www.reddit.com/r/marylandmesh
[08]:https://github.com/cjdelisle/cjdns/tree/master/doc/meshlocals/existing
[09]:https://www.newscientist.com/article/mg21929294.500-meshnet-activists-rebuilding-the-internet-from-scratch
[10]:https://en.wikipedia.org/wiki/Darknet
[11]:https://www.youtube.com/watch?v=pSSiqlwzA3U
[12]:https://en.wikipedia.org/wiki/Clearnet_(networking)
[13]:https://github.com/cjdelisle/cjdns/blob/master/doc/projectGoals.md
[14]:https://github.com/cjdelisle/cjdns/blob/master/doc/Whitepaper.md
[15]:https://docs.meshwith.me/notes/do.html
[16]:https://github.com/cjdelisle/cjdns/blob/master/README.md#community
[17]:https://github.com/hyperboria/docs/blob/master/quickstart.md#step-3-find-a-public-peer
[18]:http://chat.efnet.org/irc.cgi?chan=%23cjdns
[19]:https://en.wikipedia.org/wiki/EFnet
[20]:https://pad.meshwith.me/p/public
[21]:https://en.wikipedia.org/wiki/End-to-end_encryption
[22]:https://en.wikipedia.org/wiki/Network_layer
[23]:https://github.com/hyperboria/cjdns/issues/6#issuecomment-162244016
[24]:https://en.wikipedia.org/wiki/Hyperborea
[25]:https://jointhe.hyperboria.network/
[26]:https://github.com/hyperboria/peers
[27]:https://en.wikipedia.org/wiki/Pseudonymity
[28]:https://github.com/hyperboria/docs/blob/master/faq/peering.md#why-should-i-prefer-the-friend-of-a-friend-model
[29]:https://github.com/hyperboria/cjdns/blob/master/doc/non-root-user.md
[30]:http://stackoverflow.com/questions/82256/how-do-i-use-sudo-to-redirect-output-to-a-location-i-dont-have-permission-to-wr
[31]:https://www.linux.com/learn/tutorials/863701-an-introduction-to-uncomplicated-firewall-ufw
[32]:https://www.digitalocean.com/community/tutorials/how-to-setup-a-firewall-with-ufw-on-an-ubuntu-and-debian-cloud-server
[33]:https://www.verizon.com/support/residential/quick-guides/port-forwarding.htm
[34]:http://www.yougetsignal.com/tools/open-ports/
[35]:http://www.binarytides.com/linux-netstat-command-examples/
[36]:https://en.wikipedia.org/wiki/Port_scanner#UDP_scanning
[37]:https://community.qualys.com/docs/DOC-1185
[38]:https://nmap.org/
[39]:http://www.naturalborncoder.com/virtualization/2014/10/17/understanding-tun-tap-interfaces/
[40]:https://www.youtube.com/watch?v=OnKMkX0qS3Y
[41]:https://github.com/hyperboria/docs/blob/master/tips-and-tricks.md
[42]:http://jshint.com/install/
[43]:http://www.economist.com/news/international/21702176-drug-trade-moving-street-online-cryptomarkets-forced-compete?utm_source=pocket&utm_medium=email&utm_campaign=pockethits
[44]:
[45]:
[46]:
[47]:
[48]:
[49]:
[50]:
