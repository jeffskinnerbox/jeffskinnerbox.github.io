Title: HowTo: Install and Configure Fail2Ban
Date: 2016-04-27 21:27
Category: Software
Tags: How To, Fail2Ban, Security
Slug: howto-install-and-configure-fail2ban
Author: Jeff Irland
Image: how-to.jpg
Summary: Fail2ban is an intrusion prevention software framework that protects computers from brute-force attacks.  It scans log files and bans IP addresses that show malicious signs, such as, too many password failures.  Fail2Ban then updates firewall rules to reject the IP addresses for a specified amount of time, although any arbitrary other action (e.g. sending an email) could also be configured.

<a href="http://www.fail2ban.org/wiki/index.php/Main_Page">
    <img class="img-rounded" style="margin: 0px 8px; float: left" title="Fail2ban scans log files (e.g. /var/log/apache/error_log) and bans IPs that show the malicious signs -- too many password failures, seeking for exploits, etc. Generally Fail2Ban is then used to update firewall rules to reject the IP addresses for a specified amount of time." alt="fail2ban logo" src="{filename}/images/fail2ban-logo.png" width="100" height="100" /></a>
Recently I examined my desktop computer's `sshd` log file `/var/log/auth.log`
([log samples from sshd][01]) looking for failed login attempts.
(You could also use [`lastb`][23] which shows you the log file `/var/log/btmp`,
containing all the bad login attempts)
What I saw was a list of well over 100 attempts from a few IP addresses
(125.88.177.90 - Guangdong, China,
58.218.205.97 - Jiangsu region of China,
58.218.204.248 - Jiangsu region of China,
185.110.132.54 - Moscow, Russia),
trying to login via SSH as root or admin user.
In other works, attempting a [brute-force attacks][08].
To see these login attempts, I did the following:

```bash
# attacks on just port 22
$ cat /var/log/auth.log | grep 'sshd.*Failed' | grep 'port 22' | wc
    171    2814   18950

# attacks on any port
$ cat /var/log/auth.log | grep 'sshd.*Failed' | wc
  11066  182457 1229596
```

I also noticed that the attacher is attempting to use multiple originating ports in an effort
to subvert delays required between multiple logins
(see this [article][02] and [this][24] if you need more).
I decided it was time to pay a little bit more attention to security!

The article ["Keeping SSH Access Secure"][17] provides some good suggestions.
One method, not referenced in this article, is how you could
rate-limit `iptables` rules to address this issue (from this [source][03]):

```bash
# block connections if the login fails 10 times in 1 hour on port 22
iptables -I INPUT -p tcp --dport 22 -m state --state NEW -m recent --set
iptables -I INPUT -p tcp --dport 22 -m state --state NEW -m recent --update --seconds 3600 --hitcount 10 -j DROP
```

This blocks connections if the login fails ten times in one hour on port 22.

Another easy answer would be to limit `ssh` access from the `wlan` network interface only.
This works if you have no plans to `ssh` into your device from the Internet,
effectively cuts out the attacks from the Internet.
But of course, if your neighbors nerdy 13 year old wants to mess with your WiFi,
you still could have some attacks.

So its just a matter of time before the attack is on another port, or user account, or network interface,
therefore using [Fail2Ban][04] or something similar
(an alternative is [Droplan][06])
may be in order.
`fail2ban` reads the `sshd` log entries (and other log files)
and bans the originating address when there are too many failures.
Generally Fail2Ban is then used to update firewall rules to reject
the IP addresses for a specified amount of time, although any arbitrary other action
(e.g. sending an email) could also be configured.
Out of the box Fail2Ban comes with filters for various services (apache, courier, ssh, etc.).

While Fail2Ban does provide additional protection, the use of two factor authentication
(see ["Two-Factor Authentication via Google Authenticator"][07])
or public/private key authentication mechanisms
(see ["HowTo: Configure SSH Public Key Authentication"][18])
as your primary defense provide the best protection overall.

### Step 0: Getting to Know iptables
<a href="http://www.netfilter.org/">
    <img class="img-rounded" style="margin: 0px 8px; float: left" title="netfilter is a set of hooks inside the Linux kernel that allows kernel modules to register callback functions with the network stack. A registered callback function is then called back for every packet that traverses the respective hook within the network stack.
iptables is a generic table structure for the definition of rulesets. Each rule within an IP table consists of a number of classifiers (iptables matches) and one connected action (iptables target)." alt="netfilter logo" src="{filename}/images/netfilter-logo.png" width="265" height="72" /></a>
Linux comes with a host based [firewall][12] called [`netfilter`][09]
(or sometimes called "iptables" after the tool used to manage netfilter).
`netfilter` is a set of hooks inside the Linux kernel that allows
kernel modules to register callback functions with the network stack.
A registered callback function is then called back for every packet
that traverses the respective hook within the network stack.

The Linux based firewall `netfilter` is controlled by the program called [`iptables`][10].
`iptables` handles filtering for IPv4, and [`ip6tables`][11] handles filtering for IPv6.
When you install Ubuntu, `iptables` is there,
but it allows all traffic to flow through by default.
The websites [IptablesHowTo][13] and [Linux: 20 Iptables Examples For New SysAdmins][14]
provide a quick intro to `iptables` for Ubuntu.
When exposing your server to the Internet,
having an [effective Firewall policy is very important to secure your sever][15].
The website ["How To Set Up a Firewall Using Iptables on Ubuntu 14.04"][16]
can help you set up your Firewall.

`iptable` is a dense subject, and hard to master,
but here are some sources to get you knowledgeable:

* [The Beginner’s Guide to iptables, the Linux Firewall](http://www.howtogeek.com/177621/the-beginners-guide-to-iptables-the-linux-firewall/)
* [Linux IPTABLES Firewall Tutorial: Getting Started with Basics](http://www.slashroot.in/linux-iptables-firewall-tutorial-getting-started-basics)
* [What is a Firewall and How Does It Work?](https://www.digitalocean.com/community/tutorials/what-is-a-firewall-and-how-does-it-work)
* [A Deep Dive into Iptables and Netfilter Architecture](https://www.digitalocean.com/community/tutorials/a-deep-dive-into-iptables-and-netfilter-architecture)
* [How To Set Up a Firewall Using Iptables on Ubuntu 14.04](https://www.digitalocean.com/community/tutorials/how-to-set-up-a-firewall-using-iptables-on-ubuntu-14-04)
* [Linux Firewall Tutorial: IPTables Tables, Chains, Rules Fundamentals](http://www.thegeekstuff.com/2011/01/iptables-fundamentals/)
* [iptables: Small manual and tutorial with some examples and tips](https://www.garron.me/en/linux/iptables-manual.html)
* [IptablesHowTo](https://help.ubuntu.com/community/IptablesHowTo)

Ubuntu has `iptables` but also comes with [`ufw`][22]
and is considered the default firewall configuration tool for Ubuntu.
There is also a graphical version [`gufw`][46] can be installed with `sudo apt-get install gufw`.
Developed to ease `iptables` firewall configuration,
`ufw` provides a user friendly way to create an IPv4 or IPv6 host-based firewall.
By default `ufw` is disabled.

### Step 1: Install Fail2Ban
We will be installing a daemon called `fail2ban` that scans log files
and automatically bans suspicious IP address using `iptables`.
Install `fail2ban` with the following command:

```bash
# install the software
sudo apt-get install fail2ban

# copy the example configuration file and make it live
sudo cp /etc/fail2ban/jail.conf /etc/fail2ban/jail.local
```

`fail2ban` should start automatically after the install.
You can check this via `sudo service fail2ban status`.
You should see your `iptables` rules updated to something like:

```bash
# list the chain rules in service
$ sudo iptables -t filter --list
Chain INPUT (policy ACCEPT)
target     prot opt source               destination
fail2ban-ssh  tcp  --  anywhere             anywhere             multiport dports ssh

Chain FORWARD (policy ACCEPT)
target     prot opt source               destination

Chain OUTPUT (policy ACCEPT)
target     prot opt source               destination

Chain fail2ban-ssh (1 references)
target     prot opt source               destination
RETURN     all  --  anywhere             anywhere
```

### Step 2: Configure Fail2Ban
You can use `fail2ban` with any service that makes log files like Apache, FTP, etc.
The configuration for different services can be found in `/etc/fail2ban/jail.local`.
You can change this settings by adding appropriate lines in `/etc/fail2ban/jail.local`.
For example, I want to permanently ban the suspicious IP address after 10 attempts.
Apart from that, I want to ban access for this IP on all ports,
so I changed default `banaction` to `iptables-allports`.
So, part of my `/etc/fail2ban/jail.local` file looks like this:

```
[ssh]

enabled  = true
port     = ssh
filter   = sshd
logpath  = /var/log/auth.log
banaction = iptables-allports    ; ban retrys on any port
bantime  = 600                   ; ip address is banned for 10 minutes
maxretry = 10                    ; allow the ip address retry a max of 10 times
```

> **NOTE:** If I want to permanently ban a suspicious IP address,
I would set the ban time as follows: `bantime = -1  ; ip address permanently banned`.

If you have an active [brute force attack][05] underway on SSH,
you can check out the `/var/log/auth.log`
(use `tail --follow /var/log/auth.log | grep 'sshd.*Failed'`).
You should see 10 login attempts, followed by at least a 10 minute pause,
and then the attacks may begin again for 10 attempts.

When you did the necessary updates of the configuration files,
make sure to restart service:

```bash
sudo service fail2ban restart
```

and check current bans with:

```bash
sudo iptables -L -n --line
```

### Step 3: Permanently Banning of an IP Address
The post ["Make your Raspberry Pi more secure"][04]
shows how you can use `fail2ban` to permanently ban IP addresses,
but I prefer not to do it this way.
It would be easy to forget that I installed `fail2ban`,
and if IP Addresses start getting block that are not intended,
I may forget where to look to fix the problem.
My preference is to ban these IP Address via a more obvious Linux tool,
that is, directly via `iptables`.

You may want to log the traffic that is being blocking, this way,
your able to see which IP tried to access the server but I blocked.

```bash
# log action before blocking traffic from IP
sudo iptables -A INPUT -s 125.88.177.90 -j LOG --log-prefix "blocking all traffic"
sudo iptables -A INPUT -s 125.88.177.90 -j DROP
```

Your firewall now looks like this:

```bash
# list the chain rules in service with line numbers
$ sudo iptables --list --line-numbers
Chain INPUT (policy ACCEPT)
num  target     prot opt source               destination
1    fail2ban-ssh  tcp  --  anywhere             anywhere
2    LOG        all  --  125.88.177.90        anywhere             LOG level warning prefix "blocking all traffic"
3    DROP       all  --  125.88.177.90        anywhere

Chain FORWARD (policy ACCEPT)
num  target     prot opt source               destination

Chain OUTPUT (policy ACCEPT)
num  target     prot opt source               destination

Chain fail2ban-ssh (1 references)
num  target     prot opt source               destination
1    REJECT     all  --  125.88.177.87        anywhere             reject-with icmp-port-unreachable
2    RETURN     all  --  anywhere             anywhere

# list the chain rules in service as iptables commands
$ sudo iptables -S
-P INPUT ACCEPT
-P FORWARD ACCEPT
-P OUTPUT ACCEPT
-N fail2ban-ssh
-A INPUT -p tcp -j fail2ban-ssh
-A INPUT -s 125.88.177.90/32 -j LOG --log-prefix "blocking all traffic"
-A INPUT -s 125.88.177.90/32 -j DROP
-A fail2ban-ssh -s 58.218.204.30/32 -j REJECT --reject-with icmp-port-unreachable
-A fail2ban-ssh -j RETURN
```

Keep in mind that this type of logging can create considerable amounts of data
if you subject to frequent attacks.

>**NOTE:** To remove logging rule (delete rule 2 from INPUT chain): `sudo iptables -D INPUT 2`.

### Step 4: Save Firewall Rules
The firewall rules created so far will not survive a reboot of your system.
To overcome this,
you need to use the `iptables-save` or `iptables-persistent` commands,
or `netfilter-persistent` for Ubuntu 16.04.

```bash
# make backup of current itables rules
sudo cp /etc/iptables/rules.v4 /etc/iptables/backup_rules.v4

# make backup of currently active rules
sudo iptables-save > $HOME/tmp/backup_rules.v4

# make the currently active rules persistent over reboots
# (ie load them into /etc/iptables/rules.v4)
sudo netfilter-persistent save
```

My saved firewall rules look like this:

```bash
# list active firewall rules
$ sudo iptables -S
-P INPUT ACCEPT
-P FORWARD ACCEPT
-P OUTPUT ACCEPT
-N fail2ban-ssh
-A INPUT -p tcp -j fail2ban-ssh
-A INPUT -s 125.88.177.90/32 -j DROP
-A INPUT -s 58.218.204.30/32 -j DROP
-A INPUT -s 58.218.205.97/32 -j DROP
-A INPUT -s 58.218.204.248/32 -j DROP
-A INPUT -s 185.110.132.54/32 -j DROP
-A INPUT -s 125.88.177.87/32 -j DROP
-A INPUT -s 59.45.79.25/32 -j DROP
-A INPUT -s 221.229.162.7/32 -j DROP
-A INPUT -s 58.218.211.244/32 -j DROP
-A INPUT -s 58.218.211.11/32 -j DROP
-A INPUT -s 14.182.87.101/32 -j DROP
-A INPUT -s 58.218.199.166/32 -j DROP
-A INPUT -s 59.45.79.24/32 -j DROP
-A INPUT -s 122.141.236.69/32 -j DROP
-A INPUT -s 58.218.204.107/32 -j DROP
-A INPUT -s 81.243.48.52/32 -j DROP
-A INPUT -s 125.88.177.90/32 -j DROP
-A INPUT -s 1.93.129.5/32 -j DROP
-A INPUT -s 58.218.199.166/32 -j DROP
-A INPUT -s 59.45.79.24/32 -j DROP
-A INPUT -s 58.218.204.107/32 -j DROP
-A fail2ban-ssh -j RETURN
```

To restore iptables rule that you may have saved

```bash
# make your backup rules your active rules
sudo iptables-restore < $HOME/tmp/backup_rules.v4
```

### Step 5: Periodical Check of Status
You will have [brute force attacks][05] on SSH from time to time,
and so you should be checking you logs regularly.
You could periodically run the following command to see what is getting pass your
"`DROP`" rules in the `INPUT` chain.

```bash
# attacks on any port
tail --follow /var/log/auth.log | grep 'sshd.*Failed'
```

To see the impact your rules are having,
you can run the following command to list the number of packets being blocked:

```bash
# list number of packets and bytes being dropped by iptable rules
sudo iptables -L -n -v
```

In time, you may find some duplicate rules sneak into your `/etc/iptables/rules.v4` file.
You can find the duplicate rules via:

```bash
# list any rules that are duplicates
sudo sort /etc/iptables/rules.v4 | uniq --repeated
```

This will list all rows in the file that appear more than once.
Knowing this, you can edit the file and delete the duplicate rules.

You may also be interested in where all your attacks are coming from.
That is, you want to find out where a given IP address is physically located on earth.
Sites like [Geo IP Tool][19] give you a web site to lookup this information.
There are also command line tools that can be used, like [`geoiplookup`][20]
and via `curl ipinfo.io/<ip-address>` (both documented [here][21]).

Below is a script that creates a simple report from your rules file.

```bash
# geo-locations of blocked ip addresses in json format
sudo sort /etc/iptables/rules.v4 | uniq | grep DROP | awk '{ print $4 }' | sed 's/\/[0-9]*//' | while read line; do curl ipinfo.io/$line 2>/dev/null ; done | jq -c '{ city: .city , region: .region , country: .country , ip: .ip }'
```

# Sources
* [Install and configure fail2ban](http://iot-projects.com/index.php?id=make-your-raspberry-pi-more-secure)
* [Install and Config Fail2Ban in Debian 7 Wheezy](http://www.pontikis.net/blog/fail2ban-install-config-debian-wheezy)
* [How Fail2Ban Works to Protect Services on a Linux Server](https://www.digitalocean.com/community/tutorials/how-fail2ban-works-to-protect-services-on-a-linux-server)
* [How To Protect SSH with Fail2Ban on Ubuntu 14.04](https://www.digitalocean.com/community/tutorials/how-to-protect-ssh-with-fail2ban-on-ubuntu-14-04)
* [How to protect SSH with fail2ban](https://kyup.com/tutorials/protect-ssh-fail2ban/)
* [Preventing Brute Force Attacks With Fail2ban On Debian Etch](https://www.howtoforge.com/fail2ban_debian_etch)
* [Using Fail2ban to Secure Your Server](https://www.linode.com/docs/security/using-fail2ban-for-security)
* [Fail2ban is not blocking IPs trying to access my server via ssh](http://unix.stackexchange.com/questions/204383/fail2ban-is-not-blocking-ips-trying-to-access-my-server-via-ssh/204393#204393)



[01]:http://ossec-docs.readthedocs.org/en/latest/log_samples/auth/sshd.html
[02]:http://security.stackexchange.com/questions/67602/closely-spaced-failed-logins-in-auth-log
[03]:https://www.debian-administration.org/article/187/Using_iptables_to_rate-limit_incoming_connections
[04]:http://iot-projects.com/index.php?id=make-your-raspberry-pi-more-secure
[05]:https://en.wikipedia.org/wiki/Brute-force_attack
[06]:https://www.digitalocean.com/community/tutorials/how-to-automatically-firewall-digitalocean-private-network-interfaces-with-droplan
[07]:http://jeffskinnerbox.me/posts/2015/Nov/28/two-factor-authentication-via-google-authenticator/
[08]:https://en.wikipedia.org/wiki/Brute-force_attack
[09]:http://www.netfilter.org/
[10]:http://www.howtogeek.com/177621/the-beginners-guide-to-iptables-the-linux-firewall/
[11]:http://www.admin-magazine.com/Archive/2014/20/IPv6-Tables
[12]:https://en.wikipedia.org/wiki/Firewall_(computing)
[13]:https://help.ubuntu.com/community/IptablesHowTo
[14]:http://www.cyberciti.biz/tips/linux-iptables-examples.html
[15]:https://www.digitalocean.com/community/tutorials/how-to-choose-an-effective-firewall-policy-to-secure-your-servers
[16]:https://www.digitalocean.com/community/tutorials/how-to-set-up-a-firewall-using-iptables-on-ubuntu-14-04
[17]:https://www.debian-administration.org/article/87/Keeping_SSH_access_secure
[18]:http://jeffskinnerbox.me/posts/2016/Apr/27/howto-configure-ssh-public-key-authentication/
[19]:https://geoiptool.com/
[20]:http://linux.die.net/man/1/geoiplookup
[21]:http://xmodulo.com/geographic-location-ip-address-command-line.html
[22]:https://wiki.ubuntu.com/UncomplicatedFirewall
[23]:http://www.computerhope.com/unix/last.htm
[24]:https://hackaday.com/2018/11/14/hack-my-house-opening-raspberry-pi-to-the-internet-but-not-the-whole-world/
