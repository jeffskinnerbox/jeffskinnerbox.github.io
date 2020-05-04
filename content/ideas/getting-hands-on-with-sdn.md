* SDX Central - https://www.sdxcentral.com/
* David Bombal - https://www.youtube.com/user/ConfigTerm/search?query=ryu

* [What is SDN? How software-defined networking changed everything](https://www.grotto-networking.com/SDNfun.html#a-graph-with-attributes-and-json-export)
* https://web.archive.org/web/20130116072451/http://www.stanford.edu/~brandonh/ONS/OpenFlowTutorial_ONS_Heller.pdf
* https://www.sdxcentral.com/

# Verizon Themes
* **5G**
* [Everything You Need to Know About 5G](https://www.youtube.com/watch?v=GEx_d0SjvS0)
* [5G Definitions](https://www.sdxcentral.com/5g/definitions/)
* [5G is coming, what to expect and why](https://www.idtechex.com/research/articles/idtechex-research-5g-is-coming-what-to-expect-and-why-00014993.asp)

Enhanced mobile broadband (eMBB)
Massive machine-type connections (mMTC)
Ultra-reliable low-latency communications (uRLLC)

Massive MIMO
Edge-computing and cloudification
Network slicing
* **SDN**
* **Security**
* **One Fiber**
    * [Verizon's Boston Smart Cities Pilot Begins](https://www.lightreading.com/gigabit/gigabit-cities/verizons-boston-smart-cities-pilot-begins/d/d-id/728893)
    * [Verizon's One Fiber initiative in Boston](https://www.lightreading.com/smart-cities/verizon-takes-one-fiber-to-more-cities/d/d-id/733901)
    * [Verizon Takes 'One Fiber' to More Cities](https://www.lightreading.com/smart-cities/verizon-takes-one-fiber-to-more-cities/d/d-id/733901)
* **Advance Communicationas and Collaboration**

----

Getting hands on with SDNs makes clear its central capabilities
and teaches many other lessons in networking.
These notes contain tips for setting up an SDN testbed on your laptop and provide examples of programming SDNs.
Key compoents to the testbed are:

* **Virtual Machine for our Emulated Network**
The folks over at Mininet have figured out a very nice way to emulate networks on Linux.
For isolation purposes (e.g. in case your emulated network runs amok)
you'll want to run Mininet in a virtual machine (VM).
* **Mininet and Python**
You can do a fair amount with Mininet from the command line,
but to get at more of its power and configurability you can work with it directly via Python.
* **Working with Networks/Graphs in Python**
Using network graphs in Python you can create examples of shortest, widest,
and arbitrary destination tree based forwarding tables for Ethernet switches.
* **Programming Switches**
Program all those virtual switches based on calculated forwarding tables and see the effects of different routing policies via round trip delays (ping) and throughput (iperf) in Mininet.

* https://www.grotto-networking.com/SDNfun.html#a-graph-with-attributes-and-json-export

# Definitions
https://www.zdnet.com/article/software-defined-networking-101-what-sdn-is-and-where-its-going/

* [What is Network Virtualization](https://www.sdxcentral.com/cloud/devops/definitions/programmability-network-automation-sdn-networks/)
* [What is Network Functions Virtualization](https://www.sdxcentral.com/nfv/definitions/whats-network-functions-virtualization-nfv/)
* [What is Software Defined Networking (SDN)?](https://www.sdxcentral.com/sdn/definitions/what-the-definition-of-software-defined-networking-sdn/)
* [What is SDN? How software-defined networking changed everything](https://www.zdnet.com/article/software-defined-networking-101-what-sdn-is-and-where-its-going/)
* [Why SDN or NFV Now?](https://www.sdxcentral.com/sdn/definitions/why-sdn-software-defined-networking-or-nfv-network-functions-virtualization-now/)
* [Which is Better – SDN or NFV?](https://www.sdxcentral.com/nfv/definitions/which-is-better-sdn-or-nfv/)
* [NFV and SDN: What’s the Difference?](https://www.sdxcentral.com/articles/contributed/nfv-and-sdn-whats-the-difference/2013/03/)
* [Programmability of SDN Networks](https://www.sdxcentral.com/cloud/devops/definitions/programmability-network-automation-sdn-networks/)

* **Cloud Computing**
Cloud platforms, such as OpenStack, rely on the native ability of their workloads
to be relocated to different areas of the physical infrastructure,
without noticeably impacting their performance.
When a workload is defined by its virtual address
its coordinators must allow themselves to be re-educated whenever that address points
to a different physical location.

* **Software Defined Networking (SDN)** technology is an approach to cloud computing
that facilitates network management and enables programmatically network configuration
in order to improve network performance and monitoring.
SDN is meant to address:
    * the fact that the static architecture of traditional networks is decentralized and complex
    * while current networks require more flexibility and easy troubleshooting.
    * SDN suggests to centralize network intelligence in one network component by disassociating the forwarding process of network packets (data plane) from the routing process (control plane).
    * The control plane consists of one or more controllers which are considered as the brain of SDN network where the whole intelligence is incorporated.

* **OpenFlow** is a communications protocol that gives access to the forwarding plane
of a network switch or router over the network.
OpenFlow enables network controllers to determine the path of network packets across a network of switches.
OpenFlow was commonly associated with SDN. Since 2012 however,
for many companies OpenFlow is no longer an exclusive solution, they added proprietary techniques.

* [**Open Networking Foundation (ONF)**][01] is a nonprofit trade organization,
funded by companies such as Deutsche Telekom, Facebook, Google, Microsoft, and Verizon
aimed at promoting networking through SDN
and standardizing the OpenFlow protocol and related technologies.

* **4G wireless communication** introduced SDN to telecom networks.
The introduction of a virtual network subdivision technique
called [network functions virtualization (NFV)][02] triggered a
radical simplification of telco data center architecture that remains ongoing,
enabling customer services to be staged on less expensive servers
nearly identical to those used in enterprise data centers.
With new NFV models such as [CORD (Central Office Re-architected as a Datacenter)][03],
a provider's services may be migrated, in whole or in part, to the customer's own premises, leveraging the customer's own hardware and infrastructure to eliminate latency and expedite performance.

* **CORD (Central Office Re-architected as a Datacenter)** combines NFV, SDN,
and the elasticity of commodity clouds to bring datacenter economics
and cloud agility to the Telco Central Office.
CORD lets the operator manage their Central Offices using
declarative modeling languages for agile, real-time configuration of new customer services.
Major service providers like AT&T, SK Telecom, Verizon,
China Unicom and NTT Communications are already supporting CORD.
There are two CORD profiles, [R-CORD][04] (broadband residential services)
and [M-CORD][05] (5G mobile wireless networks).

* CORD running on your laptop - https://guide.opencord.org/

# Background
Networking Basics
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
Cloud Computing
* [Cloud Edge Computing: Beyond the Data Center](https://www.openstack.org/edge-computing/cloud-edge-computing-beyond-the-data-center?lang=en_US)
Cloud Networking
* [Introduction to Cloud Overlay Networks - VXLAN](https://www.youtube.com/watch?v=Jqm_4TMmQz8)
* [VXLAN overlay networks with Open vSwitch](https://www.youtube.com/watch?v=tnSkHhsLqpM)
* [Introduction to OpenStack Neutron](https://www.youtube.com/watch?v=yqFpyubsYfE)
* [OpenStack Neutron Packet Walkthrough (DVR)](https://www.youtube.com/watch?v=7IXEtUEZslg)
SDN, NFV, and OpenFlow
* [What is NFV?](https://www.youtube.com/watch?v=xGZaZTnvR9A)
* [What is SDN? How software-defined networking changed everything](https://www.zdnet.com/article/software-defined-networking-101-what-sdn-is-and-where-its-going/)
* [Introduction to SDN (Software-defined Networking)](https://www.youtube.com/watch?v=DiChnu_PAzA)
* [SDN Abstractions](https://www.slideshare.net/martin_casado/sdn-abstractions)
* [SDN Hub](http://sdnhub.org/)
* [SDN, NFV and OpenFlow for Skeptics: 7 Part Series](https://www.youtube.com/watch?v=6h5xa2mmjjw&list=PLWJf584cuAlT9qbZuTy5E85EaDfp_lNz-) - start with Part 2 to avoid the marketing

# NetDevOps
[NetDevOps Live!](https://developer.cisco.com/netdevops/live/)
is a weekly webinar series from [Cisco DevNet](https://developer.cisco.com/)
where anything related to network automation, programmability, and NetDevOps
is the topic of discussion.

* [Building a NetDevOps CI/CD Pipeline](https://www.youtube.com/watch?v=LinGy8DGIJ8)

# Programable Networking
* [P4: Programming the Network's Forwarding Plane](https://www.networkcomputing.com/networking/p4-programming-networks-forwarding-plane/799175661?_mc=nl_x_nwcr_edt_aud_nwc_x_x-updates-20180915)

# Mininet
Mininet creates a realistic virtual network, running real kernel,
switch and application code, on a single machine

* [Introduction to Mininet](https://www.youtube.com/watch?v=jmlgXaocwiE)
* [Mininet and Remote SDN Controllers (Floodlight + Pox)](https://www.youtube.com/watch?v=CPasnNg9Z4I)
* [Mininet Custom Topologies](https://www.youtube.com/watch?v=yHUNeyaQKWY)
* [VXLAN overlay networks with Open vSwitch](https://www.youtube.com/watch?v=tnSkHhsLqpM)

* [How to use Kytos with Mininet](https://tutorials.kytos.io/napps/how_to_use_kytos_with_mininet/)
* [Mininet: An Instant Virtual Network on your Laptop (or other PC)](http://mininet.org/)

* https://www.packetdesign.com/blog/quick-start-mpls-fundamentals/
* https://www.packetdesign.com/blog/a-guide-to-mpls-vpn-fundamentals/

# Introduction to SDN
* [Introduction to SDN (Software-defined Networking)](https://www.youtube.com/watch?v=DiChnu_PAzA)
* [SDN Abstractions](https://www.slideshare.net/martin_casado/sdn-abstractions)
* [SDN Hub](http://sdnhub.org/)

Topology Service
Inventory Service
Statistic Service
Host Tracking

## South Bound Interface
OpenFlow
OVSDB
NETCONF
SNMP

## Applicaton Interface
Java API
Norhtbound (RESTConf)

## Network Applications

# Introduction to OpenFlow
* [Introduction to OpenFlow](https://www.youtube.com/watch?v=l25Ukkmk6Sk)
* [OpenFlow Tutorial](https://web.archive.org/web/20130116072451/http://www.stanford.edu/~brandonh/ONS/OpenFlowTutorial_ONS_Heller.pdf)

# Introduction to Open vSwitch
* https://www.openvswitch.org/
* [Introduction to Open vSwitch (OVS)](https://www.youtube.com/watch?v=rYW7kQRyUvA)
* [OpenFlow flow entries on Open vSwitch (OVS)](https://www.youtube.com/watch?v=FyV4MoQ3T0I)
* [OpenFlow with multiple Flow Tables](https://www.youtube.com/watch?v=TD5wmoD7XOE)

# SDN and NFS
* [SDN & NFV Use Cases Defined](https://www.sdxcentral.com/sdn-nfv-use-cases/)
* [What is Network Functions Virtualization?](https://thenewstack.io/de-ossify-the-network-with-function-virtualization/)
* [SDN & NFV APIs and SDKs](https://www.sdxcentral.com/directory/nfv-sdn/comprehensive-list-of-sdn-apis/)
* [What is OpenStack Networking?](https://www.sdxcentral.com/cloud/open-source/definitions/openstack-networking/)
* [What is an NFV OpenStack?](https://www.sdxcentral.com/nfv/definitions/what-is-nfv-openstack/)
* [NFV/SDN Essentials for Service Providers](https://www.youtube.com/watch?v=4MOphSlwwiY)

# SDN: What It Is, Why It Matters, and How to Do It
* [SDN 101: What It Is, Why It Matters, and How to Do It](https://blogs.cisco.com/ciscoit/sdn-101-what-it-is-why-it-matters-and-how-to-do-it)
* [7 Advantages of Software Defined Networking](http://www.ingrammicroadvisor.com/data-center/7-advantages-of-software-defined-networking)

# Open Source SDN and NFS
open source software defined network (SDN) and network functions virtualization (NFV) software platform

* [OpenDaylight](https://www.opendaylight.org/)
* [Floodlight](http://www.projectfloodlight.org/floodlight/)
* [Kytos](https://kytos.io/)
* [POX Controller](https://noxrepo.github.io/pox-doc/html/#)

# Ryu
Ryu is a component-based software defined networking framework.
Ryu provides software components with well defined API that make it easy for developers
to create new network management and control applications.
Ryu supports various protocols for managing network devices, such as OpenFlow, Netconf, OF-config, etc.

* http://osrg.github.io/ryu/
* https://www.sdxcentral.com/sdn/definitions/sdn-controllers/open-source-sdn-controllers/what-is-ryu-controller/

# Network Service Chaining
[What is Network Service Chaining? Definition](https://www.sdxcentral.com/sdn/network-virtualization/definitions/what-is-network-service-chaining/)

# Getting Hands on With SDN
* [Tutorial&1: SDN for Engineers](https://web.archive.org/web/20130116072451/http://www.stanford.edu/~brandonh/ONS/OpenFlowTutorial_ONS_Heller.pdf)
* [Grotto Networking: SDN Fun](https://www.grotto-networking.com/SDNfun.html#a-graph-with-attributes-and-json-export)
* [Ryu SDN and other related things](https://www.youtube.com/user/ConfigTerm/search?query=ryu)
* [Create a SDN on Linux with open source](https://opensource.com/article/20/4/quagga-linux)

# Quagga
[Quagga](https://www.quagga.net/) is a routing software suite,
providing implementations of OSPFv2, OSPFv3, RIP v1 and v2,
RIPng and BGP-4 for Unix platforms, particularly FreeBSD, Linux, Solaris and NetBSD.



[01]:https://www.opennetworking.org/
[02]:https://thenewstack.io/de-ossify-the-network-with-function-virtualization/
[03]:https://opencord.org/about/
[04]:https://www.opennetworking.org/cord/
[05]:https://www.opennetworking.org/m-cord/
[06]:
[07]:
[08]:
[09]:
[10]:
