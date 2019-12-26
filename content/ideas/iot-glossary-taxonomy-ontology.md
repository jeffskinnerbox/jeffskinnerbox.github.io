
* [Connectivity of the Internet of Things](https://learn.sparkfun.com/tutorials/connectivity-of-the-internet-of-things)
* [The Guide to Low-Power Wide Area Networks](https://www.engineering.com/IOT/ArticleID/16869/The-Guide-to-Low-Power-Wide-Area-Networks.aspx)
* [IoT Trends: Low-Power Wide-Area Networks and Standard Consolidation](https://www.engineering.com/IOT/ArticleID/12684/IoT-Trends-Low-Power-Wide-Area-Networks-and-Standard-Consolidation.aspx)


* [AllSeen's merger with OCF brings IoT closer to common ground](http://www.pcworld.com/article/3130102/allseens-merger-with-ocf-brings-iot-closer-to-common-ground.html)


See [here](https://www.radio-electronics.com/info/cellulartelecomms/lte-long-term-evolution/ue-category-categories-classes.php),
[here](https://www.leverege.com/blogpost/cellular-iot-explained-nb-iot-vs-lte-m),
[here](https://halberdbastion.com/technology/iot/iot-protocols/emtc-lte-cat-m1),
and others for Cat-4 vs Cat-0 vs Cat-1 vs Cat-M1 vs eMTC vs NB-IoT … don’t you just love standards!
* [Wio LTE Cat M1/NB-IoT Tracker](http://wiki.seeedstudio.com/Wio_LTE_Cat_M1_NB-IoT_Tracker/)


In preperation for a job interview, I needed to refreash my understanding of the
swarming collection of acronyms and concepts used in the web domain[^A].
This rambling list of acronyms and phrases is the producton of my preperation.

[^A]:
    This would be a great application for knowledge representation using a semantic network
    and a tool like [protégé][07], but that would require more time than I have!

The importance of this job area:
* [The Best Jobs Of 2014: Lots Of Math, Data And Code](http://readwrite.com/2014/04/28/best-jobs-2014-math-big-data-code-programming#awesm=~oD26OeAU8DImbd)
* [The Best Jobs of 2014](http://www.careercast.com/jobs-rated/best-jobs-2014)



## Software Defined Networking and Network Function Virtualization
**Software Defined Networking (SDN)**
:   The idea of separating the control plane of a network from the data plane that forwards network traffic.
    The goal of this disaggregation is to create a network that is centrally managed and programmable.
    Some SDN implementations use a software-based management platform that controls commodity network hardware.
    Other approaches use an integrated hardware and software-approach.
    The technology is primarily used in enterprise data centers for customers
    who demand a network that can more easily adapt to the needs of the business compared
    to traditional networking architectures.
    SDN also has a number of sub-categories, including software-defined Wide Area Network,
    or using SDN to microsegment network traffic for security purposes.

**Network Function Virtualization (NFV)**
:   NFV was initially conceived by a consortium of telecommunications vendors
    who were looking to more easily control how they offer network services to customers.
    The fundamental idea of NFV is to virtualize network services and abstract them from dedicated hardware.
    NFV deployments typically use commodity servers to run software versions of network services
    that previously were hardware-based.
    These software-based services are called Virtual Network Functions (VNF) and would run in an NFV environment.
    Examples of VNFs include routing, firewalling, load balancing, WAN acceleration, and encryption.
    By virtualizing these network services, providers can offer customers these services dynamically,
    with the ability to spin them up down on demand.

## Industrial Control System
Industrial control system (ICS) is a general term that encompasses several types of
control systems and associated instrumentation used for industrial process control.

**Direct Digital Control (DDC)**
:   The automated control of a condition or process by a digital device (computer).
    DDC takes a centralized network-oriented approach.
    All instrumentation is gathered by various analog and digital converters
    which use the network to transport these signals to the central controller.
    The centralized computer then follows all of its production rules
    (which may incorporate sense points anywhere in the structure)
    and causes actions to be sent via the same network to valves, actuators,
    and other HVAC components that can be adjusted.

**Distributed Control Systems (DCS)**
https://en.wikipedia.org/wiki/Distributed_control_system

**Supervisory Control and Data Acquisition (SCADA)**
:   A control system architecture that uses computers, networked data communications,
    and graphical user interfaces for high-level process supervisory management,
    but uses other peripheral devices such as programmable logic controllers and discrete PID controllers
    to interface to the process plant or machinery.

## Web Services
The term Web services describes a standardized way of integrating Web-based applications
using the JSON, XML, SOAP, WSDL, RDF and UDDI open standards over an Internet protocol backbone.
Unlike traditional client/server models, such as a Web server/Web page system,
Web services do not provide the user with a GUI.
Web services instead share business logic, data and processes
through a programmatic interface across a network.

**Tag**
:   A command inserted in a document that specifies how the document,
    or a portion of the document, should be formatted.
    Tags are used by all format specifications that store documents as text files.
    This includes SGML, XML, and HTML.

**JSON**
:   JSON (JavaScript Object Notation) is a lightweight data-interchange format.
    It is easy for humans to read and write.
    JSON is smaller than XML, and faster and easier to parse and generate.
    The JSON text format is syntactically identical to the code for creating JavaScript objects.
    As a result, a JavaScript program can use the built-in eval() function and execute
    JSON data to produce native JavaScript objects.

**XML**
:   XML (Extensible Markup Language) data-interchange format using tag data.
    XML is a flexible way to create common information formats and share both the format
    and the data on the World Wide Web, intranets, and elsewhere.
    For example, computer makers might agree on a standard or common way to describe
    the information about a computer product (processor speed, memory size, and so forth)
    and then describe the product information format with XML.
    Such a standard way of describing data would enable a user to send an intelligent agent
    (a program) to each computer maker's Web site, gather data, and then make a valid comparison.
    XML can be used by any individual or group of individuals or companies
    that wants to share information in a consistent way.

**SOAP**
:   Simple Object Access Protocol (SOAP) is an XML based protocol for accessing Web Services.
    SOAP defines a standard communication protocol specification for XML-based message exchange.
    SOAP uses different transport protocols, such as HTTP and SMTP.
    The standard protocol HTTP makes it easier for SOAP model to tunnel across firewalls
    and proxies without any modifications to the SOAP protocol.
    SOAP can sometimes be slower than middleware technologies like CORBA or ICE due to its verbose XML format.

**WSDL**
:   Web Services Description Language (WSDL) is an XML-based language for describing Web Services.

**UDDI**
:   Universal Description, Discovery and Integration (UDDI) is a directory service
    (i.e. listing what services are available), described in WSDL and communicates in SOAP,
    where companies can search for Web services.

**RDF**
:   Resource Description Framework (RDF) is a framework for describing resources on the web, written in XML.
    It's a metadata data model for modeling of information that is implemented in web resources,
    using a variety of syntax notations and [data serialization][02] formats.

**Web Resource**
:   The concept of a web resource is a fundamental elements in the web architecture.
    The term refers to targets of uniform resource locators (URL),
    but its definition has been further extended to include the any uniform resource identifier (URI),
    or internationalized resource identifier (IRI).

**Web Framework**
:   A Web framework is a collection of packages or modules which allow developers to write Web applications or services without having to handle such low-level details as protocols, sockets or process/thread management.

**WSGI**
:   Web Server Gateway Interface
    [Bobo Framework](http://bobo.digicool.com/en/latest/contents.html)

## RESTful Programming
[RESTful Programming][04] uses the concept of REST,
which stands for Representational State Transfer (It is sometimes spelled "ReST").
Its's an architecture style for designing networked applications
and a lightweight alternative to web services.
REST is not a "standard", but it has [six constraints][05].
The idea is that, rather than using complex mechanisms such as
CORBA, RPC or SOAP to connect between machines,
simple HTTP is used to make calls between machines.

RESTful applications use HTTP requests to post data (create and/or update),
read data (e.g., make queries), and delete data.
Thus, REST uses HTTP for all four CRUD (Create/Read/Update/Delete) operations.
It relies on a stateless, client-server, cacheable communications protocol;
and in virtually all cases, the HTTP protocol is used.

**REST**
:   REST stands for [Representational State Transfer][03], and it uses the four HTTP methods
    GET, POST, PUT and DELETE to execute different operations.
    This in contrast to SOAP for example, which creates new arbitrary commands
    (verbs) like getAccounts() or applyDiscount().
    REST describes a set of architectural principles by which data can be
    transmitted over a standardized interface (such as HTTP).
    REST does not contain an additional messaging layer and focuses on design rules
    for creating stateless services.
    While accessing RESTful resources with HTTP protocol, the URL of the resource serves acts
    as the resource identifier and GET, PUT, DELETE, POST and HEAD are the standard HTTP
    operations to be performed on that resource.

**ROA**
:   A resource-oriented architecture (ROA) is a style of software architecture
    and programming paradigm for designing and developing software in the form
    of resources with "RESTful" interfaces.

**REST API**
:   A REST API is a set of operations that can be invoked by means of any the four verbs,
    using the actual URI as parameters for your operations.
    For example you may have a method to query all your accounts which can be
    called from /accounts/all/ this invokes a HTTP GET and the 'all' parameter
    tells your application that it shall return all accounts.

HATEOAS, an abbreviation for Hypermedia as the Engine of Application State

**XXX**
:   How [I Explained REST to My Wife][01]

**REST vs. SOAP**
:   Multiple factors need to be considered when choosing a particular type of Web service,
    that is between REST and SOAP.
    * The RESTful Web services are completely stateless.
    * Restful services provide a good caching infrastructure over HTTP GET method (for most servers).
    * REST is particularly useful for restricted-profile devices such as mobile and PDAs.
    * REST services are easy to integrate with the existing websites and are exposed with XML so the HTML pages can consume the same with ease.
    * The Web Services Description Language (WSDL) contains and describes the common set of rules to define the messages, bindings, operations and location of the Web service.
    * SOAP requires less plumbing code than REST services design, (i.e., transactions, security, coordination, addressing, trust, etc.)
    * SOAP Web services (such as JAX-WS) are useful in handling asynchronous processing and invocation.
    * SOAP supports several protocols and technologies, including WSDL, XSDs, SOAP, WS-Addressing

**ROA vs. SOA**
:   ROA (REST Oriented Architecture) is just a fancy name for a SOA (Service Based Architecture) using REST services.
    The main advantage of SOAP-based SOA over ROA is the more mature tool support;
    however, this could change over time.
    Another SOA advantages include the type-safety of XML requests
    (for responses, ROA can also use XML if the developers desire it).
    The main advantage of ROA is ease of implementation, agility of the design,
    and the lightweight approach to things.
    A nice analogy for REST vs. SOAP is mailing a letter: with SOAP,
    you're using an envelope; with REST, it's a postcard.

XSLT
XHTML
CSS
Asynchronous HTML and HTTP

HTML5 - [brief introduction to HTML5][18]

**Microformats**
:   [Microformats][13] are small patterns of HTML, built upon existing and widely adopted standards,
    represent commonly published things like people, events, blog posts, reviews, and tags in web pages.
    Microformats are often used for quickest & simplest way to provide an API
    to the information on your website.
    More technically, they are items of semantic markup, using just standard
    "[plain old semantic HTML][14]" (i.e. "POSH")
    with a set of common [class-names][15] and "[rel][16]" values.
    They are open and available, freely, for anyone to use.

**Microdata**
:   [Microdata][17] is a new HTML5 specification that allows machine-readable data to be embedded in HTML documents.
    Microdata makes web pages more easily parseable and understandable by computers
    so that they can use the information on your pages to create more robust information.
    While a web browser can display a web page with text on it, the browser
    has no way of knowing what the different parts of the page are.

**DOM**
:   When your browser renders a web page, it constructs a Document Object Model (DOM),
    a collection of objects that represent the HTML elements on the page.
    The DOM is an interface to allow programs and scripts to update
    content, structure, and style of documents dynamically.
    It is platform and language neutral.
    The W3C has several recommendations for different DOM levels.
    These levels provide more control and power over the Web documents.
    For example, DOM level 0 is a mix of HTML functions, that have not been formally specified,
    that allow scripting languages to interact with Microsoft Internet Explorer 3.0 and Netscape Navigator 3.0.

**DHTML or Dynamic HTML**
:   This is a combination of the Document Object Model (DOM), Cascading Style Sheets (CSS),
    and JavaScript that allows HTML to interact more directly with the readers.
    In many ways DHTML is what makes web pages fun.

**AJAX**
:   Asynchronous JavaScript and XML (AJAX) is a group of interrelated web development techniques
    used on the client-side to create asynchronous, interactive web applications using JavaScript.
    With Ajax, web applications can send data to, and retrieve data from, a server asynchronously
    (in the background) without interfering with the display and behavior of the existing page.
    Ajax is not a single technology, but a group of technologies.
    * HTML (or XHTML) and CSS for presentation
    * The Document Object Model (DOM) for dynamic display of and interaction with data
    * XML for the interchange of data, and XSLT for its manipulation
    * The XMLHttpRequest object for asynchronous communication
    * JavaScript to bring these technologies together

**WADL**
:   The Web Application Description Language (WADL) and is typically used for documenting REST services,
    jsut as WSDL is used for SOAP services.
    Like the rest of REST, WADL is lightweight, easier to understand and easier to write than WSDL.
    In some respects, it is not as flexible as WSDL (no binding to SMTP servers),
    but it is sufficient for any REST service and much less verbose.


## Authentication
Authentication is the process of determining whether someone or something is,
in fact, who or what it is declared to be.
In private and public computer networks (including the Internet),
authentication is commonly done through the use of logon passwords.
Knowledge of the password is assumed to guarantee that the user is authentic.
The use of digital certificates issued and verified by a Certificate Authority (CA)
as part of a public key infrastructure is become the standard way
to perform authentication on the Internet.

**OpenID**
:   OpenID is an open standard that allows users to be authenticated by certain co-operating sites (known as Relying Parties or RP) using a third party service, eliminating the need for webmasters to provide their own ad hoc systems and allowing users to consolidate their digital identities.

**OAuth**
:   OAuth is an open standard for authorization. OAuth provides a method for clients to access server resources on behalf of a resource owner such as a different client or an end-user. It also provides a process for end-users to authorize third-party access to their server resources without sharing their credentials, typically a username and password pair, using user-agent redirections.

**Social Login**
:   Social Login is a form of Single Sign-On (SSO)
    that uses existing login information from a social networking service,
    such as Facebook or Twitter, to sign into a third-party Web site,
    instead of requiring the user to create a new login for that site.

**Thread**
:   A thread of execution is the smallest sequence of programmed instructions that can be managed independently by an operating system scheduler.

**Single Threading**
:   Single Threading is the processing of one command at a time.  The opposite of single threading is multithreading.  While it has been suggested that the term single threading is misleading, the term has been widely accepted within the functional programming community.

**JavaScript (JS)**
:   JavaScript (JS) is a dynamic computer programming language.  It is most commonly used as part of web browsers, whose implementations allow client-side scripts to interact with the user, control the browser, communicate asynchronously, and alter the document content that is displayed. It is also being used in server-side programming, game development and the creation of desktop and mobile applications.

**Node.js**
:   Node.js is a software platform for scalable server-side and networking applications. Node.js applications are written in JavaScript, and can be run within the Node.js runtime on Windows, Mac OS X, and Linux with no changes.  Node.js applications are designed to maximize throughput and efficiency, using non-blocking I/O and asynchronous events. Node.js applications run single-threaded, although Node.js uses multiple threads for file and network events.
[ What You Need To Know About Node.js](http://readwrite.com/2013/11/07/what-you-need-to-know-about-nodejs#feed=/hack&awesm=~oD2cgDlOnKEfSp)

[Flask is a microframework for Python based on Werkzeug, Jinja 2](http://flask.pocoo.org/)

**Markup**
:   Markup refers to the sequence of characters or other symbols that you insert at certain places in a text or word processing file to indicate how the file should look when it is printed or displayed or to describe the document's logical structure. The markup indicators are often called "tags."

**HTML**
:   HTML (Hypertext Markup Language) is the set of markup symbols or codes inserted in a file intended for display on a World Wide Web browser page. The markup tells the Web browser how to display a Web page's words and images for the user. Each individual markup code is referred to as an element (but many people also refer to it as a tag).

**Big Data**
:   Big data is the term for a collection of data sets so large and complex
    that it becomes difficult to process using on-hand database management tools
    or traditional data processing applications.
    Big data is difficult to work with using most relational database management systems
    and desktop statistics and visualization packages.
    It typically requires instead parallel software running on tens, hundreds, or even thousands of servers.

http://shop.oreilly.com/product/0636920025054.do?code=DEAL&imm_mid=0ba076&cmp=em-strata-books-videos-product-dod_agile_data_science_deal
[EMC Academic Alliance](https://www.youtube.com/user/EMCAcademics)

## Cloud Computing
Cloud computing means storing and accessing data and programs over the Internet instead of your computer's hard drive.
Cloud computing is **not about** having a dedicated hardware server or stored data in residence on a local computer or network.

**The Cloud**
:   A metaphor for the Internet and it's network of servers, with some servers use computing power to run applications or "deliver a service."

**Infrastructure as a Service (IaaS)**
:   In the most basic cloud-service model, providers of IaaS offer computers – physical or
    (more often) virtual machines – and other resources.

**Platform as a service (PaaS)**
:   Platform as a service (PaaS) is a category of cloud computing services that
    provides a computing platform and a solution stack as a service.
    PaaS offerings facilitate the deployment of applications without the cost and complexity
    of buying and managing the underlying hardware and software and provisioning hosting capabilities.

**Software as a Service (SaaS)**
:   SaaS is a software delivery model in which software and associated data
    are centrally hosted on the cloud by independent software vendors (ISVs)
    or application service providers (ASPs).
    SaaS allows organizations to access business functionality at a cost typically
    less than paying for licensed applications since SaaS pricing is based on a monthly fee.

**NoSQL**
:   Today, non-relational, cloud, or "NoSQL" databases are gaining mindshare as an alternative model for database management.

## Web Client and Server

**Web Server**
The primary function of a web server is to store, process and deliver web pages to clients.
The communication between client and server takes place using HTTP.
Pages delivered are most frequently HTML documents, which may include images,
style sheets and scripts in addition to text content.

**HTTP**
:   Hypertext Transfer Protocol (HTTP)

**Apache HTTP Server**
:

**Elasticsearch**
:   Elasticsearch is a search engine built on top of Apache Lucene, a full-text search engine library.
    It provides a distributed, multitenant-capable full-text search engine
    with a RESTful web interface and schema-free JSON documents.
    Elasticsearch is developed in Java and is released as open source under the terms of the Apache License.

**HADOOP**
:   Apache Hadoop is an open-source software framework for storage and large-scale processing
    of data-sets on clusters of commodity hardware.
    Some of Hadoop's components were originally derived from Google's
    MapReduce and Google File System (GFS) papers.

The Apache Hadoop framework is composed of the following modules:
Hadoop Common – contains libraries and utilities needed by other Hadoop modules
Hadoop Distributed File System (HDFS) – a distributed file-system that stores data on commodity machines, providing very high aggregate bandwidth across the cluster.
Hadoop YARN – a resource-management platform responsible for managing compute resources in clusters and using them for scheduling of users' applications.
Hadoop MapReduce – a programming model for large scale data processing.

Beyond HDFS, YARN and MapReduce, the entire Apache Hadoop “platform” is now commonly considered to consist of a number of related projects as well – Apache Pig, Apache Hive, Apache HBase, Apache Spark, and others.

## Web Site
A web page (or webpage) is a web document that is suitable for the World Wide Web and the web browser.
A web browser displays a web page on a monitor or mobile device.

A website (also written as Web site, web site, or simply site)
is a set of related web pages served from a single web domain.
A website is hosted on at least one web server, accessible via a network such as the Internet
(or a private local area network) through an Internet address
known as a Uniform Resource Locator (URL).

**Internet**
:   The Internet is a global system of interconnected computer networks that use the
    standard Internet protocol suite (commonly called TCP/IP) to serve several billion users worldwide.

**Domain Name**
:   A domain name is an identification string that defines a realm of administrative autonomy,
    authority or control on the Internet.
    Domain names are formed by the rules and procedures of the Domain Name System (DNS).
    Any name registered in the DNS is a domain name.

**DNS**
:   The Domain Name System (DNS) is a hierarchical distributed naming system for
    computers, services, or any resource connected to the Internet or a private network.
    It associates various information with domain names assigned to each of the participating entities.
    Most prominently, it translates easily memorized domain names to the numerical IP addresses
    needed for the purpose of locating computer services and devices worldwide.

**Dynamic Web Site**
:   A **server-side dynamic web page** is a web page whose construction is controlled
    by an application server processing server-side scripts.
    In server-side scripting parameters determine how the assembly of every new web page proceeds,
    including the setting up of more client-side processing.
    A **client-side dynamic web page** processes the web page using HTML
    scripting running in the browser as it loads.
    JavaScript and other scripting languages determine the way the HTML in the
    received page is parsed into the Document Object Model, or DOM, that represents the loaded web page.

**Static Web Site**
    A static web page is a web page that is delivered to the user exactly as stored,
    in contrast to dynamic web pages which are generated by a web application.
    Consequently a static web page displays the same information for all users, from all contexts.
    Static web pages are suitable for the contents that never or rarely need to be updated.

**LAMP**
:   The acronym [LAMP][06] refers to first letters of the four components of a solution stack,
    composed entirely of free and open-source software, suitable for building
    high-availability heavy-duty dynamic web sites,
    and capable of serving tens of thousands of requests simultaneously.
    The meaning of the LAMP acronym depends on which specific components are used as part of the actual bundle:
    * **L**inux, the operating system (i.e. not just the Linux kernel, but also glibc and some other essential components of an operating system)
    * **A**pache HTTP Server, the web server
    * **M**ySQL, MariaDB or MongoDB, the database management system
    * **P**HP, Perl, or Python, scripting languages used for dynamic web pages and web development.

## Content Management
Content management, or CM, is the set of processes and technologies that support the collection,
managing, and publishing of information in any form or medium.
When stored and accessed via computers, this information has come to be referred to,
simply, as content or, to be precise, digital content.
Digital content may take the form of text (such as electronic documents),
multimedia files (such as audio or video files),
or any other file type that follows a content lifecycle requiring management.

**Content Management Framework (CMF)**
:   A Content Management Framework (CMF) is a system that facilitates the use of
    reusable components or customized software for managing web content.
    It shares aspects of a web application framework and a Content Management System (CMS).

**Content Management System (CMS)**
:   A content management system (CMS) is a computer program that allows publishing,
    editing and modifying content as well as maintenance from a central interface.
    Such systems of content management provide procedures to manage workflow in a collaborative environment.
    These procedures can be manual steps or an automated cascade.

**Drupal**
:   [Drupal](https://drupal.org/) is an open source content management framework,
    writen in PHP, powering millions of websites and applications.
    The standard release of Drupal, known as Drupal core,
    contains basic features common to content management systems.
    These include user account registration and maintenance, menu management, RSS feeds,
    taxonomy, page layout customization, and system administration.
    The Drupal core installation can be used as a simple website, a single- or multi-user blog,
    an Internet forum, or a community website providing for user-generated content.

JQuery
JavaScript
Ruby on Rails
[Cucumber](http://cukes.info/), Capybar, Raspec
Backbone.js
MongoDB
Splunk

SQL database
nosql database

Agile

**Quantified Self**
:   The Quantified Selfis a movement to incorporate technology into data acquisition
    on aspects of a person's daily life in terms of inputs
    (e.g. food consumed, quality of surrounding air), states
    (e.g. mood, arousal, blood oxygen levels), and performance (mental and physical).
    Such self-monitoring and self-sensing, which combines wearable sensors
    (EEG, ECG, video, etc.) and wearable computing, is also known as lifelogging.

**Machine Data**
:   Machine-generated data is information which was automatically created from a computer process,
    application, or other machine without the intervention of a human.
    Machine-generated data is data that is generated as a result of a decision of
    an independent computational agent or a measurement of an event that is not caused by a human action.

**Scrum**
[Scrum Basics](https://www.youtube.com/watch?feature=player_embedded&v=vmGMpME_phg)
["Pigs and Chickens"](http://searchsoftwarequality.techtarget.com/definition/pigs-and-chickens)

## Wireless Technologies for Wearables
* [6 wireless technologies for wearables](https://blog.nordicsemi.com/getconnected/wireless-technologies-for-wearables)

## What is PAN, BAN, WAN and LPWAN
* https://blog.nordicsemi.com/getconnected/what-is-pan-ban-wan-lpwan-types-of-networks

* [LPWA matchup | LoRaWAN vs Sigfox vs NB-IoT vs LTE-M: Part 1](https://enterpriseiotinsights.com/20190814/channels/news/lpwa-matchup-round-one)
* [LPWA matchup | LoRaWAN vs Sigfox vs NB-IoT vs LTE-M: Part 2](https://enterpriseiotinsights.com/20190820/channels/news/lpwa-matchup-round-two)
* [LPWA matchup | LoRaWAN vs Sigfox vs NB-IoT vs LTE-M: Part 3](https://browsifyapp.com/industry-news/iot-building-news/lpwa-matchup-lorawan-vs-sigfox-vs-nb-iot-vs-lte-m-trading-blows-round-3/)
* [LPWA matchup | LoRaWAN vs Sigfox vs NB-IoT vs LTE-M: Part 4](https://browsifyapp.com/industry-news/iot-building-news/lpwa-matchup-lorawan-vs-sigfox-vs-nb-iot-vs-lte-m-billion-question-round-4/)
* [LPWA matchup | LoRaWAN vs Sigfox vs NB-IoT vs LTE-M: Part 5](https://enterpriseiotinsights.com/20190829/channels/news/lpwa-matchup-round-five)

## Knowledge Management

## Internet Communications
**IRC**
:   Internet Relay Chat (IRC) is a system that facilitates transfer of messages in the form of text.
    The chat process works on a client/server model of networking.
    IRC clients are computer programs that a user communicates with other like programs via a chat servers.
    It is mainly designed for group communication in discussion forums, called channels,
    but also allows one-to-one communication via private message, data transfer, and file sharing.

## Internet Protocol Suite
[Internet Protocol Suite](http://en.wikipedia.org/wiki/Internet_protocol_suite)
Application layer
BGP DHCP * DHCPv6 DNS FTP HTTP IMAP IRC LDAP MGCP NNTP NTP POP RPC RTP RTSP RIP SIP SMTP SNMP SOCKS SSH Telnet TLS/SSL XMPP more...

Transport layer
TCP UDP DCCP SCTP RSVP more...

Internet layer
IP IPv4 IPv6 ICMP ICMPv6 ECN IGMP IPsec more...

Link layer
ARP/InARP NDP OSPF Tunnels L2TP PTPP Media access control Ethernet DSL ISDN FDDI DOCSIS more...

ISO Transport on top of TCP (ITOT) - http://tools.ietf.org/html/rfc2126

**Cyber-Physical Systems (CPS)**
:   A cyber-physical system (CPS) is a system of collaborating computational elements controlling physical entities.
    Today, a precursor generation of cyber-physical systems embedded systems.
    In embedded systems the emphasis tends to be more on the computational elements,
    and less on an intense link between the computational and physical elements.
    Unlike more traditional embedded systems, a full-fledged CPS is typically designed
    as a network of interacting elements with physical input and output instead of as standalone devices.
    See [Cyber-Physical Systems Concept Map](http://cyberphysicalsystems.org/).

**Congnitive Radio**
:   Cognitive radio (CR) is a form of wireless communication in which a transceiver
    can intelligently detect which communication channels are in use and which are not,
    and instantly move into vacant channels while avoiding occupied ones.
    This optimizes the use of available radio-frequency (RF) spectrum while
    minimizing interference to other users.
    In some parts of the world, spectrum regultory bodies are requesting that RF spectrum,
    known as white spaces, be made available for public use and IoT.

## IoT Networking
* White Space
    * [NuRAN Wireless ](http://www.digitaljournal.com/pr/1991582)
    * [Neul](http://www.neul.com/neul/)
    * [Weightless](http://www.weightless.org/)
    * [Sigfox](http://www.sigfox.com/en/)
* Cellular
    * [Colibri LTE](http://www.sequans.com/press-release/sequans-introduces-colibri-lte-platform-internet-things/)
* Satellite
    * [ORBCOMM](http://www.orbcomm.com/)

## Internet of Things (IoT)
The concept of the “Internet of things” first emerged in the late 1990s.
It proposed that physical objects not normally thought of as “computers”—like boxes
in a warehouse or appliances in a home—could be networked together using small,
cheap digital transmitters and receivers.

There are many [definitions for the Internet of Things (IoT)][09].
One of those definitions is:
The network formed by things/objects having identities, virtual personalities operating in smart spaces using intelligent interfaces to connect and communicate with the users, social and environmental contexts.

[A Very Short History Of The Internet Of Things](http://www.forbes.com/sites/gilpress/2014/06/18/a-very-short-history-of-the-internet-of-things/)
[Cisco's infographic](http://share.cisco.com/internet-of-things.html)
[Intel's infographic](http://www.intel.com/content/www/us/en/intelligent-systems/iot/internet-of-things-infographic.html)
[Godzilla's infographic](http://www.bestcomputersciencedegrees.com/internet-of-things/)

Also see [The Internet of Things? What's that? (A relative explanation)](http://www.element14.com/community/groups/internet-of-things/blog/2014/03/29/what-is-the-internet-of-things)
[The Internet of Things Phenomenon: What does it all mean?](http://www.element14.com/community/groups/internet-of-things/blog/2013/04/16/the-internet-of-things-phenomenon-what-does-it-all-mean)
[What the Internet of Things (IoT) Needs to Become a Reality](http://www.freescale.com/files/32bit/doc/white_paper/INTOTHNGSWP.pdf)

## IoT Market Trends
* [Intel focusing more on the IoT according to latest revenue report](http://www.element14.com/community/groups/internet-of-things/blog/2014/04/22/intel-focusing-more-on-the-iot-according-to-latest-revenue-report?CMP=SOM-IOT-CABE-INTEL)
* [The Internet of Things Business Index: A quiet revolution gathers pace](http://www.arm.com/about/newsroom/75-percent-of-global-business-leaders-are-exploring-the-economic-opportunities-created-by-the.php) ([summary](http://www.itproportal.com/2013/12/05/internet-things-quiet-revolution-gathers-pace/))
* [America's Coming Manufacturing Revolution](http://www.theatlantic.com/business/archive/2014/04/americas-coming-manufacturing-revolution/360931/)
* []()
* []()

## IoT Devices, Wireless Connectivity, and IoT Application
* [Intel's Quark SoC]()
* [Texas Instruments: Wireless Connectivity](http://www.ti.com/lit/sg/slab056c/slab056c.pdf)
* []()
* []()
* []()


**Ambient Backscatter**
:   Ambient backscatter uses existing radio frequency signals, such as radio,
    television and digital telephony, to transmit data without a battery or power grid connection.
    Each such device uses an antenna to pick up an existing signal and convert it
    into tens to hundreds of microwatts of electricity.
    It uses that power to modify and reflect the signal with encoded data.
    Antennas on other devices, in turn, detect that signal and can respond accordingly.

**Machine to Machine (M2M)**
:   Machine to machine (M2M) refers to technologies that allow both wireless and wired systems to communicate with other devices of the same type. M2M was originally used for automation and instrumentation but now has been also used to refer to telematics applications.

**Connected Device**
:   Connected devices include remote sensors, remote monitoring, actuating devices, associated aggregation devices, PCs, laptops, tablets, eReaders, mobile handsets, femto cells & routers.
:   **Connected Transportation** – Fleet/Telematics/Inter-Vehicle Communication (IVC)/IVC Original Equipment Manufacturer (OEMS); Usage-Based Insurance (UBI)/Pay As You Drive (PAYD); and Public Safety/Emergency.
:   **Connected Meters, Sensors and Alarms** – Utility/Smart Grid; Water/Oil/Gas; Security and Surveillance; and Automation and Control.
:   **Connected Machines, Screens and Things** – Automated Teller Machine (ATM)/Point of Sale (POS)/Access/Vending; Digital Signage and Kiosk; Asset Tracking; and Embedded Routers and Modems.
:   **Connected Personal Devices** – Personal Gaming and Tracking; Personal Health Management; and Copiers/Printers/Scanners.


**Telematics**
:   Telematics is an interdisciplinary field encompassing telecommunications, vehicular technologies, road transportation, road safety, electrical engineering (sensors, instrumentation, wireless communications, etc.), computer science (multimedia, Internet, etc.). It purpose is to control remote objects, particulalry for navigation.

**Telemetry**
:   Telemetry is the transmission of measurements from the location of origin to the location of computing and consumption, especially without affecting control on the remote objects. Telemetry is typically applied in testing of flight objects but has multiple other uses.


**Processor Boards for IoT**
* [Processor Boards for IoT](https://iotdc.hackpad.com/Processor-Boards-for-IoT-jBHdtN5BRrZ)


## Accenture
**[Industrial Internet][08]**
:   Industrial Internet refers to the integration of complex physical machinery
    with networked sensors and software.
    It draws together fields such as Machine Learning, Big Data, Internet of Things,
    and Machine-to-Machine communication to gather data from physical objects,
    analyze it (often in real-time), and use it to control and adjust operations.

**Machine Learning**
:   Machine learning, a branch of artificial intelligence, concerns the construction
    and study of systems that can learn from data.
    The process of machine learning is similar to that of data mining.
    Both systems search through data to look for patterns.
    However, instead of extracting data for human comprehension,
    as is the case in data mining applications,
    machine learning uses that data to improve the program's own understanding.
    Machine learning programs detect patterns in data and adjust program actions accordingly.

**Data Sciences**
:   xxx

**Big Data**
:   Big data is the term used for massive volume of both structured and unstructured data
    that is so large or complex that it's difficult to process using traditional database and software techniques.
    The challenges include capture, curation, storage, search, sharing, transfer, analysis and visualization.
    In-depth articles: [The Age of Big Data][10], [Steamrolled by Big Data][12], [They're Watching You at Work][11].

**Advanced Analytics**
:   Advanced Analytics mean the analysis of structured and unstructured data through the use of
    sophisticated statistical methods of prediction and forecasting tools
    able to extract and infer information that traditional methods of BI,
    such as Query and Reporting, are unable to provide.
    The purpose is the formulation of accurate forecasts and predictions for the optimization
    of planning processes and the identification of new opportunities.

**Predictive Analytics**
:   Predictive Analytics are the statistical techniques and data analysis aimed to analyze
    the historical facts to make predictions about future events.
    The Predictive Analytics capture the relationships between various factors
    in such a way as to allow assessment of current or potential risk associated with a set of conditions.
    These are widely used in various analytical fields: actuarial science, marketing,
    financial services, insurance, telecommunications, retail, travel, healthcare, pharmaceuticals.

**Data Mining**
:   Data Mining is the set of techniques and methodologies related to the extraction of knowledge
    from a large amounts of data (through automated methods or semi-automatic) and to the scientific,
    industrial or operational use of this knowledge.

**Business Intelligence**
:   Business Intelligence means ”transformation of data and information into knowledge.”
    The tools used allow business user to make strategic decisions based on accurate,
    current and relevant information but always pointing to the past.
    It is often confused with Predictive Analytics, but BI is essentially based on
    flexible data presentation, and therefore is not able to extrapolate and infer information
    about the future, which instead is the main characteristic of the Advanced Analytics.

**Accenture Strategic Initative in the Industral Internet**
:   * [Taleris](http://www.taleris.com/) - Taleris is a joint venture established by GE and Accenture to provide airlines and cargo carriers around the world with intelligent operations services, focused on improving efficiency by leveraging aircraft performance data, prognostics, recovery and planning optimization solutions that include assets and capabilities from both Accenture and GE.
    * [Omnetric Group](http://www.omnetricgroup.com/) - Omnetric Group is a Siemens and Accenture joint venture in the smart grid field to develop solutions and services that allow utilities to improve efficiency and achieve greater supply security.  Omnetric Group will focus on solutions and services for system integration and management of the growing volume of data created as part of power grid operation. These offerings will enable utilities to integrate operational technologies (OT), such as real-time grid management, with information technologies (IT) like smart metering.
    * [2lemetry](http://2lemetry.com/)
    * [apigee](https://apigee.com/about/)

**Accenture Buze Words**
:   * Advanced Case Management (ACM), also known as dynamic or adaptive case management,refers to the coordination of a service request in finance, health, legal, citizen or human resources-related matters, on behalf of a subject such as a customer, a citizen, or an employee. The concept of ACM has been embraced by large corporations such as IBM, and is most simply defined as a comprehensive strategy that approaches cases from every possible angle, simultaneously emphasizing the importance of integration in meeting the needs of a client – also known as management from 360 degrees.
    * Process-centric business process management (BPM) refers to an approach focusing on processes themselves, rather than on people, documents, contents or other components. Process-centric BPM often involves three main stages: discovery, implementation and maintenance. Discovery is widely viewed as the most important and time-consuming stage. Contract this with a Data-centric driven business (aka Artifact-centric Business Process Model).




[01]:http://www.looah.com/source/view/2284
[02]:http://en.wikipedia.org/wiki/Serialization
[03]:http://en.wikipedia.org/wiki/Representational_state_transfer
[04]:http://rest.elkstein.org/
[05]:http://www.restapitutorial.com/lessons/whatisrest.html
[06]:http://en.wikipedia.org/wiki/LAMP_(software_bundle)
[07]:http://protege.stanford.edu/
[08]:http://www.accenture.com/us-en/Pages/service-technology-labs-industrial-internet-strategic-innovation-initiative.aspx
[09]:http://en.wikipedia.org/wiki/Internet_of_things
[10]:http://www.nytimes.com/2012/02/12/sunday-review/big-datas-impact-in-the-world.html?pagewanted=all&_r=0
[11]:http://www.theatlantic.com/magazine/archive/2013/12/theyre-watching-you-at-work/354681/
[12]:http://www.newyorker.com/online/blogs/elements/2013/04/steamrolled-by-big-data.html
[13]:http://microformats.org/wiki/what-are-microformats
[14]:http://microformats.org/wiki/POSH
[15]:http://microformats.org/wiki/class-names
[16]:http://microformats.org/wiki/rel
[17]:http://diveintohtml5.info/extensibility.html
[18]:http://diveintohtml5.info/index.html
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


######################################################################################################################


# The Wireless Challenge
An unspoken aspect of the Internet of Things (IoT)
is how these "things" are most often expected to be untethered.
That is, these things
will not communicate via wires but via some wireless communication method.
As individuals, we have become accustom to being untethered and
we have integrated cellular, WiFi, and Bluetooth into our daily lives.
Therefore, it should be no surprise that we would
expect our things to live a wireless life too.

While wireless can provides clear advantages in cost and flexibility
over a fixed wired solution,
it also brings along a host of challenges.
Specifically, radio communication links are notoriously
variable and unpredictable.
A link that is strong today may be weak tomorrow due to
environmental conditions, new obstacles,
unanticipated interference and myriad other factors.
A truly untethered device (wireless communications and no power cable)
must have have its power source on-board via a battery.
Also, the environment in which you communicate and
how often you communicate has a major impact on the amount of power consumed by the device.

What is often under appreciated is the challenge this presents for our IoT devices.
Many of the devices will be small and stealthy,
battery operated with no continuous source of power.
They maybe far away from home, and therefore,
no assured infrastructure to support the required wireless connectivity.
To complicate matters, some devices will stream large volumes of data,
assuring the need for relatively large amounts of power.
While others may have very little data or infrequent data to communicate,
reducing power needs.
But even in this case, they may be in such remote places,
that wireless communications method
require considerable power or specialize data encoding to reach long distances.
Some solution require one-way communications and others require bi-directional.

The wireless challenge can be boiled down to these
major failure modes:

* interference from other wireless devices call **RF Interference**
* changes in the physical environment or obstacles or distance generally call **Multipath Fading** and **Path Loss**
* loss of intermediate communication points call **Node Drop**

There are other challenge, which are not failures at all, but create limitations:

* limitations due to physics called here **Propagation Characteristics**
* regulatory limitations required to mange the electromagnetic spectrum called her **Spectrum Management**
* the electrical power consumed by a device can limit its use and we'll call this **Power Management**

* **RF Interference**
occurs when the small portion of the electromagnetic spectrum devoted to
general-purpose wireless communication devices is crowded with traffic from WiFi
networks, cordless telephones, bar-code scanners, and innumerable other
devices that can interfere with communications.
While you can measure the interference at any point in time,
because there is no way to
predict what interference will be present at a given
location, frequency, or time
A reliable network must be able to
continually sidestep these interference on an ongoing basis.

* **Multipath Fading**
is a highly varying phenomenon that can prevent successful
transmission even when you have a line-of-sight path to your device.
This occurs when multiple copies of the transmission bounce off objects in the environment
(ceilings, doors, people, etc.) all traveling different distances.
When these multiple signals interfering destructively,
fades so server that signal strength is reduced by
1/100th to 1/1000th its ordinal strength (i.e. 20 to 30dB fade) are common.
Multipath fading depends on the transmission frequency, device position,
and on every nearby object, so predicting it is practically impossible.
In addition, because objects in the environment move, the multipath effect changes over time,
and it is unsafe to rely on any particular connection between devices, or path, to be usable forever.

* **Path Loss**
is present when a network is first deployed, wireless paths are established
between devices based on the immediate RF environment and available neighbors.
Unlike wired networks, these variables often change;
paths may later be blocked by new equipment, repositioned partitions, delivery trucks,
or very small changes in device position.
Assuring reliability for the life of the network, not just the first
few weeks after installation, requires continually working around these blockages
in a transparent, automatic fashion.

* **Node Drop**
is an important issue to consider with multi-hop mesh or gateway type wireless sensor networks.
While node failure because of semiconductor or hardware malfunction
is rare, nodes may be damaged, destroyed or removed during the life of the network.
Additionally, power surges, blackouts, or brownouts can cause nodes to
fail unless they have an independent power source.
In other cases, the node might move,
and as a result, can no longer communicate because the distance is too far.
End-to-end reliability may requires the networking intelligence
that routes around the loss, as in a mesh network, of any single or multiple node drop.

* **Propagation Characteristics**
are the physical characteristic of the atmosphere,
the medium over which the signals are "carried" from the transmitter to the receiver.
As a result, the quality of the communications is dependent on the physical factors
that influence the propagation of electromagnetic (EM) signals in this medium.
This is a complex topic but basically, EM lower frequencies tend to bend around and
penetrate obstacles and but higher frequencies less so.
Also, EM of higher frequencies are more readily absorbed by the atmosphere,
and as a result, tend not to travel as far.
So why not just use low frequencies?
Well these frequency bands
have been claimed long ago for a wide class of services like radio, TV, and even our cell phones.

* **Spectrum Management**
is the process of regulating the use of radio frequencies
to promote efficient use and gain a net social benefit.
Optimal spectrum management depends on the application
but must satisfy the demands of the propagation environment,
provide adequate bandwidth for the application
and the number of devices requiring service.
It also needs to be harmonized to allow large market development and
support for applications across regions or even globally.
Most of the usable spectrum in most regions is designated as licensed,
such as cellular communications
(i.e. users need to buy a license from the local regulator to operate a designated frequency band and power level).
We are all also familiar with unlicensed spectrum, which is free for use and share by all.
The best example is the spectrum used by WiFi, which we use with no hassles of a license or fees.
Most of today's IoT solutions tend to use unlicensed spectrum.
But because unlicensed spectrum is shared, typically the power levels are very low so one
user doesn't interfere with the use of the spectrum by others.

* **Power Management**
is a feature of some radio device that turns off the power
or switches the system to a low-power state when inactive.
This can be a challenge for some communication technologies which may require frequent or
even nearly continuous "chatter".
Your typical WiFi solution is an example of wireless technology that does a lot of chatter.
Such chatter will consume power but may have little value to your application.
For any IoT device that must operate for days untethered, on a battery,
this chatter must be keep to a minimum.
Some basic approaches to manage power consumption is to change the communication technology
(e.g. don't use WiFi but something much simpler) or
externally manage the technology by turning on the wireless radio only when you need it.

These problems are not unique to the world of IoT,
and in fact, have been with us since the earliest days of wireless communications.
Over time, what has emerged is a confusing mixture of technologies that attempt to address these challenges.
This includes wireless communications technologies like the familiar cellular and WiFi,
but also technology like mesh networking, ultra-narrowband radio, Low Energy Bluetooth,
and technologies that are sometimes set apart from the others like RFID, NFC.
No one of these technologies address all the problems enumerated above.
So your left with the engineering challenge of defining a business process and selecting a technology,
that when married together, addresses your use case.
This isn't always a perfect marriage.

In my future blogging, I'll attempt to cover some of these wireless communication technologies
being used for IoT solutions.
I hope to illustrate not only the specifics for these emerging technologies,
but how the "wireless challenge" imposes an architectural pattern that must be matched with
the IoT solution your attempting to create.


######################################################################################################################


# White Paper
An often unspoken aspect of the Internet of Things (IoT)
is how these "things" are most often expected to be untethered.
That is, these things
will not communicate via wires but via some wireless communication method.
As individuals, we have become accustom to being untethered and
integrated cellular, WiFi, and even Bluetooth into our daily lives.
Therefore, it should be no surprise that we would
expect our things live a wireless life too.

What is under appreciated is the challenge this presents for our things,
or devices as I will call them here.
Many of the devices will be small and stealthy,
battery operated with no continuous source of power,
and maybe far away from home, and therefore,
no assured infrastructure to support the required wireless connectivity.
To complicate matters, some devices will stream large volumes of data,
assuring the need for relatively large amounts of power.
While others may have very little data or infrequent data to communicate,
reducing power needs,
but they may be in such remote places, that wireless communications method
require considerable power or specialize data encoding to reach long distances.

These problems are not unique to the world of IoT,
and it fact, have been with us since the earliest days of wireless communications.
Over time, what has emerged is a confusing mixture of technologies that attempt to address these challenges.
This includes wireless communications technologies like the familiar cellular and WiFi,
but also technology like mesh networking, ultra-narrowband radio, Low Energy Bluetooth,
and technologies that are sometimes set apart from the others like RFID, NFC.
No one of these technologies address all the problems enumerated above.
So your left with the engineering challenge of defining a business process and selecting a technology,
that when married together, addresses your use case.
This isn't always a perfect marriage.

In this white paper,
I will provide some structure on how to think about these technologies
and the problems they attempt to solve.
I will use some simple design pattern ....

# The Wireless Challenges
While wireless can provides clear advantages in cost and flexibility
over a fixed wired solution,
it also brings along a host of challenges.
Specifically, point-to-point radio communication links are notoriously
variable and unpredictable.
A link that is strong today may be weak tomorrow due to
environmental conditions, new obstacles,
unanticipated interference and myriad other factors.
Also, a truly untehered device (wireless communications and no power cable)
must have have its power source on-board via a battery.
The envirnment inwhich you communicate and
how often you communicate has a major impact on the amount of power consumed by the device.
These factors can be boiled down into three major failure modes:

* interference from other wireless devices call RF Interference
* changes in the physical environment or obstacles or distance generally call Multipath Fading and Path Loss
* loss of intermediate communication points call Node Drop

There are other challenge, which are not failures at all, but cause distinct limitation:

* limitations due to physics called here Propagation Characteristics
* regulatory limitations required to mange the electromagnetic spectrum called her Spectrum Management
* the electrical power consumed by a device can limit its use and we'll call this Power Management

## RF Interference
The small portion of the electromagnetic spectrum devoted to
general-purpose wireless communication devices is crowded with traffic from WiFi
networks, cordless telephones, bar-code scanners, and innumerable other
devices that can interfere with communications.
Because there is no way to
predict what interference will be present in a facility at a given
location, frequency, and time, a reliable network must be able to
continually sidestep these interference on an ongoing basis.

Interference also increases with the popularity of the wireless applications.
More and more devices come to use the spectrum and cause the hiss and buzzing we have hear
on our old cordless telephones.
Special data encoding techniques have been developed to combat interference
(such as those used by WiFi and other devices using the popular WiFi specturm),
but there are limits on what can be done.
When it gets very crowed, no one can communicate.

## Multipath Fading
A second highly varying phenomenon called multipath fading can prevent successful
transmission even when the line-of-sight link margin is expected to be sufficient.
This occurs when multiple copies of the transmission bounce off objects in the environment
(ceilings, doors, people, etc.) all traveling different distances
When interfering destructively, fades so server that signal strength is reduced by
1/100th to 1/1000th its ordinal strength (i.e. 20 to 30dB fade) are common.
Multipath fading depends on the transmission frequency, device position,
and on every nearby object, predicting it is practically impossible.
Because objects in the environment move, the multipath effect changes over time,
and it is unsafe to rely on any particular connection between devices, or path, to be usable forever.

Here again, special data encoding techniques have been developed to combat multifath fading,
just like interference.
But the best techniques to combat multipath fading can be expensive in cost and power,
requiring multiple antennas
(like your WiFi routes with 2, 3, and even 4 antennas)
or transmit simultaneously on multiple frequency bands.
For small devices, with low power requirements, this just may not be possible.

## Path Loss
When a network is first deployed, wireless paths are established
between devices based on the immediate RF environment and available neighbors.
Unlike wired networks, these variables often change;
paths may later be blocked by new equipment, repositioned partitions, delivery trucks,
or very small changes in device position.
Assuring reliability for the life of the network, not just the first
few weeks after installation, requires continually working around these blockages
in a transparent, automatic fashion.

## Node Loss
Node loss is an important issue to consider with wireless sensor networks.
While node failure because of semiconductor or hardware malfunction
is rare, nodes may be damaged, destroyed or removed during the life of the network.
Additionally, power surges, blackouts, or brownouts can cause nodes to
fail unless they have an independent power source.
In other cases, the node might move,
and as a result, can no longer communicate becasue the distance is too far.
End-to-end reliability may requires the networking intelligence
that routes around the loss of any single node.

## Propagation Characteristics
The atmosphere as the medium over which the signals are "carried" from the transmitter to the receiver.
As a result, the quality of the communications is dependent on the physical factors
that influence the propagation of electromagnetic (EM) signals in this medium.
https://transition.fcc.gov/pshs/techtopics/techtopics17.html

## Spectrum Management
[Spectrum management][21] is the process of regulating the use of radio frequencies
to promote efficient use and gain a net social benefit.
Optimal spectrum management depends on the application
but must satisfy the demands of the propagation environment,
provide adequate bandwidth for the application
and the number of devices requiring service.
It also needs to be harmonized to allow large market development and
support for applications across regions or even globally.

Spectrum is regulated worldwide by agencies such as the
Federal Communications Commission (FCC) in the United States
and the Conference of Postal and Telecommunications Administrations (CEPT) in Europe.
These organizations allocate frequency bands
for specific use and drive standards and certification plans for radio transmitters.
Most of the usable spectrum in most regions is designated as licensed,
(i.e. users need to buy a license from the local regulator to operate a designated frequency band and power level).
A familiar example for licensed frequency bands use is cellular communication. Government
auctions are used worldwide to sell spectrum bands to mobile operators to regulate commercial
frequency allocation.

We are all also fimilar with unlicensed spectrum, which is free for use and share by all.
The best example is the spectrum used by WiFi, which we use with no hassles of a license or fees.
But because unlicensed spectrum is shared, typically the power levels are very low so one
user doesn't interfere with the use of the spectrum by others.

The [industrial, scientific and medical (ISM) radio bands][20] are
unlicensed spectrum bands reserved internationally
for the use for industrial, scientific and medical purposes other than telecommunications.
There are multiple bands but the most note worthy for IoT devices
are the 433MHz, 900MHz, 2.4GHz, and 5GHz bands.

Power and time limitation for Low Power Radio

## Power Management
Power Management is a feature of some radio device that turns off the power
or switches the system to a low-power state when inactive.

# IoT Communications Solution Patterns
An additional challege for wireless is what I call here the
Communication Solution Pattern.
These are architectual patterns imposed on the IoT solution
by the nature of the problem being address.
The IoT problem being address may demand of the solution that it carry
large volumes of data, work over long ranges, or other such requirments.
Unlike the challeges address above,
which are dictated by the physical envirnment,
these challeges come about because how we must solve the business problem we a addressing.

## Data Patterns
* Sparse
* Voluminous

## Network Patterns
* Hub
* Mesh
* Long Range

## Power Management Pattern
* Line Powered
* Rechargeable Battery
* Long Life Battery

# Sigfox
SIGFOX is a cellular style network operator that provides a tailor-made solution
for low-throughput Internet of Things and M2M applications to connect
using ultra-narrow band, UNB technology in the unlicensed ISM radio bands.
UNB technology enables very low transmitter power levels to be used
while still being able to maintain a robust data connection.

* Up to 140 messages per object per day
* Payload size for each message is 12 bytes
* Wireless throughput up to 100 bits per second
* SIGFOX radio link uses unlicensed ISM radio bands. Frequencies can vary according to national regulations, but in Europe the 868MHz band is widely used and in the US it is 915MHz.
* The density of the cells in the SIGFOX network is based on an average range of about 30-50km in rural areas and in urban areas where there are usually more obstructions and noise is greater the range may be reduced to between 3 and 10km. Distances can be much higher for outdoor nodes where SIGFOX states line of sight messages could travel over 1000km.

[The AirBoard][19] is a thumb-sized MCU for rapid IoT prototyping.
The team has announced a slew of new partnerships with startups like Blynk, SODAQ and SIGFOX.

* [SIGFOX for M2M & IoT][11]

## Sigfox in the News
* [Silicon Valley to Get a Cellular Network, Just for Things][03]

* [IoT startup Sigfox launching 902 MHz network nationwide in U.S. ][04]
    * French startup Sigfox is rolling out its slow-speed Internet of Things wireless network in San Francisco today, and hopes to cover 90 percent of the U.S. population with the network within the next three years.
    * Sigfox has already conducted several pilot projects of its network technology in various locations across the United States.
    * The company's network technology runs in the unlicensed 902 MHz band in the United States
(or the 868 MHz band in Europe) and therefore doesn't require Sigfox to purchase spectrum licenses.
And the company's base stations (which require a fiber or DSL connection, a power supply and a rooftop)
and its devices (which cost generally just a few dollars and can run on a few AA batteries for years)
can communicate over dozens of miles. The result is a simple,
low-power network that can be deployed at a fraction of the cost of a traditional cellular network
    * Sigfox's deployment partner in Spain spent $5 million to deploy the company's network across the country in seven months.
    * Due to power-emission regulations in the unlicensed band, Sigfox customers can only receive 140 messages per day from their devices, and those messages can only contain around 100 characters. Customers can send only four messages per day to their devices. The messages are relatively prompt though, arriving in a few seconds.
    * service plans start at roughly $8 a year, a price that slides down as customers purchase more connections.
    * The company currently counts around 300,000 devices currently connected to its networks in Europe, and its customers have pledged to increase that number to 8 million over the next two years.
    * Sigfox doesn't directly build its network. The company typically contracts with local companies to handle the relatively simple deployment of its rooftop antennas, and then those local partners often resell Sigfox's services.


# low-power, long-range networks
Rules and spectrum allocations vary across the world,
but these lower frequencies gets inside buildings better and the use of ultra-narrowband
helps manage signal-to-noise problems at long range, allowing very low-power devices.
The downside is ultra-low data rates, and even further restricted downlink performance.
SigFox, for example, is intended as a wide-area public network,
with the other technologies available as either public or private networks.
Bandwidth restrictions cause some tough challenges for software updates and security,
but nonetheless, the technology is an interesting alternative for long-range, low-power deployments.

SIGFOX, LoRa, OnRamp, Link Labs, Weightless, SemtechNWave,  M2Communication, Coroni

# Weightless
Weightless has decided to pursue ultra-narrow-band (UNB) communication in the free-to-use ISM bands,
rather than ‘white space’ radio for its physical layer.
Around the world, agreements, legislation and infrastructure required to use white space radio
(communications in spare TV channels)
are not coming along quickly enough, and Weightless changes its strategy.

# Ultra-Narrow Band Radio

* [Understanding Ultra Narrowband Modulation][12]
* [Ultra Narrow Band Modulation Textbook][13]

# LoRa
One of the major issues for machine to machine (M2M) communications
used for applications like the Internet of Things (IoT)
is to enable communications over long ranges using very low power levels.
One scheme for addressing this is known as [LoRa (Low Power Radio)][07].
A LoRa network can be arranged to provide coverage similar to that of a cellular network.
Many LoRa operators are cellular network operators who will be able to use existing masts to mount LoRa antennas.
In some instances the LoRa antennas may be combined with cellular antennas as the frequencies
may be close and combining antennas will provide significant cost advantages.

he LoRa modulation scheme at the heart of a LoRaWAN
was developed to solve challenges facing IoT applications that
needed wide area coverage as well as years-long battery life

A LoRaWAN network uses a star-of-stars topology with gateways serving as a
transparent bridge relaying messages between end-devices and a central network server.
Gateways connect to the network server via standard IP connections,
while end-devices use single-hop wireless communication to one or many gateways.
The structure is similar to a cellular telephony network,
and gateway devices will typically be installed on existing cellular towers,
but instead of providing a single, interconnected network,
the scheme allows multiple independent LoRaWANs to operate in a given geographic area.

[LoRa Alliance][06] is an open,
non-profit association of members whos mission to standardize Low Power Wide Area Networks (LPWAN)
being deployed around the world to enable Internet of Things (IoT), machine-to-machine (M2M),
and smart city, and industrial applications.
The Alliance members will collaborate to drive the global success of the LoRa protocol (LoRaWAN),
by sharing knowledge and experience to guarantee interoperability between operators in one open global standard.

* Long range: 15 - 20 km and the support of millions of nodes
* Long battery life: in excess of ten years
* LoRaWAN specification intended for wireless battery operated Things in regional, national or global network.
* LoRaWAN target key requirements of internet of things such as secure bi-directional communication, mobility, and localization services.
* This standard will provide seamless interoperability among smart Things without the need of complex local installations and gives back the freedom to the user, developer, businesses enabling the role out of Internet of Things.
* LoRaWAN network architecture is typically laid out in a star-of-stars topology in which gateways is a transparent bridge relaying messages between end-devices and a central network server in the backend.
* Gateways are connected to the network server via standard IP connections while end-devices use single-hop wireless communication to one or many gateways.
* All end-point communication is generally bi-directional, but also supports operation such as multicast enabling software upgrade over the air or other mass distribution messages to reduce the on air communication time.
* LoRaWAN data rates range from 0.3 kbps to 50 kbps. To maximize both battery life of the end-devices and overall network capacity, the LoRaWAN network server is managing the data rate and RF output for each end-device individually by means of an adaptive data rate (ADR) scheme.

![img](http://lora-alliance.org/portals/0/images/whatis/networkBW.png)

# Cellular
* Sierra Wireless - http://www.sierrawireless.com/
* [Cellular IoT Explained: NB-IoT vs. LTE-M vs. 5G and More](https://medium.com/iotforall/cellular-iot-explained-nb-iot-vs-lte-m-vs-5g-and-more-8f26496df5d4)
* [An Overview of Narrowband IoT (NB-IoT)](https://www.link-labs.com/blog/overview-of-narrowband-iot)

## 2G
The bulk of IoT connections today are on 2G networks, although some are migrating to 3G.
Although 70 percent of IoT links are 2G-based,
cellular carriers are sunsetting these older networks so they can focus their resources on new 4G LTE networks.

## 4.5G
4.5G, an upgraded version of LTE, to be available commercially next year,
offering greater capacity, speeds in excess of 1Gbps and low latency that
can support next generation mobile applications.

## 5G
5G (5th generation mobile networks or 5th generation wireless systems)
denotes the next major phase of mobile telecommunications standards beyond the current 4G/IMT-Advanced standards.
NGMN Alliance or Next Generation Mobile Networks Alliance define 5G network requirements as:

* Data rates of several tens of Mb/s should be supported for tens of thousands of users.
* 1 Gbit/s to be offered, simultaneously to tens of workers on the same office floor.
* Several hundreds of thousands of simultaneous connections to be supported for massive sensor deployments.
* Spectral efficiency should be significantly enhanced compared to 4G.
* Coverage should be improved.
* Signalling efficiency enhanced.
* Latency should be significantly reduced compared to LTE

## Category 0 LTE (LTE Cat-0)
M2M had been talked about as a possible application for LTE,
but there was a major issue with the complexity of the system.
As M2M communications typically require
low levels of data on an occasional basis, low power, and low cost,
the complexity of LTE meant that it was not viable for many M2M communications applications.
With GSM modems now costing as little as $10 each,
there is no way to reach this price for a LTE modems (currently cost upwards of $40).
However the new LTE category means that this figure is within reach.

The introduction of Cat-0 means that there is a viable option for using LTE
as the bearer for many M2M applications.
Most 4G LTE mobile phones being used today are either category 3 or 4,
and new developments are taking place for categories 6 or even 7.

Category 0 has been estimated to reduce the complexity of an LTE modem by 50%
relative to a single band Category 1 LTE module.
It has done this by tailoring the system to operate with a much simpler modem.
As such Cat-0 operates with only one transmit / receive antenna,
has a single RF chain, peak data rate is 1Mbps in downlink and uplink,
and it only offers half duplex capability.

Peak rate reduction to 1Mbps in downlink and uplink

No one else in the industry has a true Cat-1 or Cat-0 LTE chipset

* [Opening up LTE for IoT][14]
* [LTE Cat 0 opens M2M door][15]
* [Making LTE lighter, cheaper (and slower) for the Internet of Things][16]

# Altair Semiconductor
Altair Semiconductor has come out with LTE-only chipsets that they claim is a better match for a variety of
business and consumer IoT applications than any other available long-range connectivity options.
Altair also claims a more comprehensive level of power management
than is defined in LTE Category 0 to allow for maximum sleep time
and to allow for wake time exactly when it’s needed.
That allows IoT applications – such as smart metering – based on Altair technology
to run for up to 10 years on a single battery.

[The Wait Is Over: Altair Brings Affordable, Low Power, Robust LTE Connectivity to IoT](http://www.iotevolutionmagazine.com/features/articles/404696-wait-over-altair-brings-affordable-low-power-robust.htm)

# Helium Systems
Helium is a complete platform for smart machines.
It's based on simple device connectivity, and stresses security, low power,
low cost, ease of development, and much more.
The Helium network is built on 802.15.4
Innovative protocols allow every device on the network to have a true Internet presence without the complexity and cost of a full TCP/IP stack.
Helium support the unlicensed ISM bands including 902-928MHz (US), 863-870MHz (EU), 779 - 787MHz (China WPAN) and 2.4GHz (worldwide). The Atom dynamically switches between 2.4 Ghz and the other bands to trade off speed, power, and coverage.

# IEEE 802.15.4
The IEEE 802.15.4 standard defines a physical layer (PHY)
and Medium Access Control (MAC) layer for short-range,
low-power operation, ideal for WSNs.
IEEE 802.15.4 forms the basis of several proprietary and standards-based protocols
including ZigBee unsynchronised single-channel networks,
and WirelessHART time-synchronised multichannel networks.

# IEEE 802.15.4e

# IEEE 802.11
IEEE 802.11 is a set of media access control (MAC) and physical layer (PHY)
specifications for implementing wireless local area network (WLAN)
computer communication in the 2.4, 3.6, 5, and 60 GHz frequency bands
(in 2016 and beyond, the sub-1 GHz bands for IEEE 802.11ah
and 45/60 GHz for IEEE 802.11aj and IEEE 802.11ay).

## IEEE 802.11ah = WiFi HaLow
IEEE 802.11ah is a wireless networking protocol that is an amendment of the
IEEE 802.11-2007 wireless networking standard.
It utilizes sub 1 GHz license-exempt bands to provide extended range WiFi networks,
compared to conventional WiFi networks operating in the 2.4 GHz and 5 GHz bands.
It also benefits from lower energy consumption,
allowing the creation of large groups of stations or sensors that cooperate to share the signal,
supporting the concept of the Internet of Things.
The standard is expected to be finalized and arrive in 2016,
with chips and systems based on 802.11ah hitting the market as early as 2015.

Source: https://en.wikipedia.org/wiki/IEEE_802.11ah

## WiFi HaLow
The WiFi Alliance  says the new standard [WiFi HaLow][22] (pronounced halo)
will doubles the distance and cuts the power consumption of traditional WiFi.
The Alliance would like to see WiFi become a standard in smart cities
where proprietary standards and cellular networks currently reign supreme,
and in personal area networks for wearable devices where Bluetooth radios are used now.
So far, the WiFi Alliance is being pretty vague on the details about the
new standard in terms of how much power it will consume,
how far it will travel, and how much data it will be able to transfer (and how quickly).
It does say that the new standard will use the 900 megahertz spectrum.
Data rates for HaLow, which are between 150 kilobits per second and 18 megabits per second,
which is much less than the traditional WiFi rates.
Generally, you’ll see faster data rates at higher power consumptions and when there is less interference.

The standard won’t be official until 2018, but devices will be out late 2016.

## IEEE 802.11af
In 2014, the WiFi alliance introduced 802.11af,
a networking protocol operating in unused TV whitespace spectrum between 54 and 790 MHz.
802.11af has a similar range as 802.11ah – about one kilometer – but products
and chips utilizing 802.11af have been rare and hard to find.

## IEEE 802.11ax
IEEE 802.11ax is the successor to 802.11ac, and will increase the efficiency of WLAN networks.
Currently at a very early stage of development this project has the goal
of providing 4x the throughput of 802.11ac.

# WirelessHART

# WiGig
* http://www.wi-fi.org/discover-wi-fi/wigig-certified
* [Terragraph](https://code.facebook.com/posts/1072680049445290/introducing-facebook-s-new-terrestrial-connectivity-systems-terragraph-and-project-aries/) is a 60GHz wireless system consists of radios that are based on the WiGig standard and are designed for consumer electronics, which allowed us to create nodes that are inexpensive relative to traditional telecom infrastructure.

# Smart WiFi
[Wi-Fi dreams and reality][24]

* [Qualcomm WiFi SON][23] is aimed at simplifying WiFi networking in the home
and office while optimizing end-to-end performance and offering the best user experience.
* [Luma](https://getluma.com/)
* Google addresses this through a dedicated radio that scans the environment and select the best channel based on advanced algorithms, and the ability of different OnHub devices to coordinate with one another.
* [eero](https://www.eero.com/)

# Wireless Sensor Networks (WSN)
Several mesh protocols are available for sensor networking:
802.11s for WiFi, various ad-hoc routing protocols such as those used in ZigBee,
and Linear Technology’s Time Synchronised Mesh Protocol,
which forms the basis of the WirelessHART and 802.15.4e standards.

# Time Synchronized Mesh Protocol (TSMP)
[Time Synchronized Mesh Protocol (TSMP)][18],
was developed by Dust Networks as a communications protocol for
low-power, self-organizing networks of wireless devices called motes.
TSMP devices stay synchronized to each other and communicate in timeslots,
similar to other TDM (time-division multiplexing) systems.
Such deterministic communication allows the devices to stay extremely low power,
as the radios only turn on for the periods of scheduled communication.
The protocol is designed to operate very reliably in a noisy environment.
It uses channel hopping to avoid interference
(i.e. the packets between TSMP devices get sent on different radio channels depending on time of transmission.
Digi International has also developed a time synchronized mesh protocol called DigiMesh.

Dust Networks' underlying time synchronized mesh networking technology has
been standardized by the HART Communications Foundation with the WirelessHART protocol,
and the International Society of Automation ISA100 standard.

# White Space

# Cognitive Radio

# Dynamic Spectrum Alliance (DSA)
The Dynamic Spectrum Alliance is a global organization advocating for laws and regulations
that will lead to more efficient and effective spectrum utilization.
Dynamic spectrum access refers to a set of technologies which allow users to share access to spectrum.
This will enable regulators to tailor technical conditions to the particular location
and times where sharing is to occur;
maximise spectrum usage efficiency and facilitate innovation;
and protect incumbent services from harmful interference.

# WM-Bus (Wireless M-Bus)
The Wireless Meter Bus is a variant of the M-Bus or Meter-Bus
which is a European standard defined under EN 13757.
The Wireless Meter Bus or Wireless M-Bus is aimed at remote reading of gas or electricity meters
as well as any other types of meters that may need to be read remotely.
The Wireless M-Bus is defined under specification EN 13757-4.

* [Wireless Meter Bus, WM-Bus Technology][10]

# ZigBee
ZigBee is a wireless networking standard that is aimed at remote control and sensor applications
which is suitable for operation in harsh radio environments and in isolated locations.
ZigBee technology builds on IEEE standard 802.15.4 which defines the physical and MAC layers.
Above this, ZigBee defines the application and security layer specifications
enabling interoperability between products from different manufacturers.
In this way ZigBee is a superset of the 802.15.4 specification.

* [ZigBee Technology Tutorial][08]

# EnOcean
EnOcean wireless technology uses a combination of energy harvesting and
very low power wireless communications to enable virtually indefinite communications
to be maintained without the need for recharging.

# 6LoWPAN
The 6LoWPAN system is used for a variety of applications including wireless sensor networks.
This form of wireless sensor network sends data as packets
and using IPv6 over Low power Wireless Personal Area Networks.
6LoWPAN provides a means of carrying packet data in the form of IPv6 over IEEE 802.15.4 networks.
Using the fact that IPv4 addresses are running short,
and with the possible explosion of devices with allocated IP addresses,
6LoWPAN starts by using IPv6 as the basic IP format.
In this way, 6LoWPAN adopts a different approach to the other low power wireless sensor network solutions.

* [6LoWPAN basics tutorial][09]
* http://www.ti.com/lsds/ti/wireless_connectivity/6lowpan/overview.page
* http://www.link-labs.com/6lowpan-vs-zigbee/

# IPv6 over BLE
* [Why run IPV6 over Bluetooth low energy?](https://blog.nordicsemi.com/getconnected/why-run-ipv6-over-bluetooth-low-energy)

# IEEE P2413
IEEE P2413 aims to form a framework for interoperability among connected devices
and related applications in home automation, industrial systems, telematics
and other sectors that are expected to use IoT in the coming years.
While it doesn't replace existing IoT standard groups,
it aims to create a standard architecture so IoT systems for all industries can work together,

# Iotera
Iotera claims its is a new wireless technology that uses free wireless spectrum with a range of up to 4 miles.
As a first application, they are building the Iota.
In addition to being the world's smallest GPS tracking device,
the Iota also contains temperature and accelerometer sensors which can be
used with our web and mobile applications to monitor and track anything that's important to you.

* Range of the device - Typically experience a range of 2-4 miles in more suburban areas like San Jose and a range of 1-2 miles in more urban areas like downtown San Francisco.
* Battery life - For on-demand location applications where you are searching for the lost item infrequently (less than once per day) you should see a battery life of 3-4 months. The number of location updates before needing to recharge is approximately 800. So if you were to check the location every 10 minutes continuously during the day, you would have to recharge the battery after about 11 days.
* Spectrum - unlicensed 902 to 920 MHz radio band to transmit small amounts of data

[Iotera](http://www.iotera.com/)

# Telensa
http://www.telensa.com/
http://m2mworldnews.com/2015/06/10/31594-telensa-passes-9-million-internet-of-things-device-milestone/

# Traqueur
Traqueur Nano - http://www.gpsbusinessnews.com/Traqueur-Nano-GPS-Sigfox-VHF-with-Multi-Year-Battery-Life_a5396.html

# NWave
http://m2mworldnews.com/2014/11/04/71004-nwave-joins-weightless-sig-to-create-open-standard-for-the-iot/

# HyperCat

# Cognitive Radio
Cognitive radio (CR) is one of the new long term developments taking place and radio receiver and radio communications technology. After the Software Defined Radio (SDR) which is slowly becoming more of a reality, cognitive radio (CR) and cognitive radio technology will be the next major step forward enabling more effective radio communications systems to be developed.

The idea for cognitive radio has come out of the need to utilise the radio spectrum more efficiently, and to be able to maintain the most efficient form of communication for the prevailing conditions. By using the levels of processing that are available today, it is possible to develop a radio that is able to look at the spectrum, detect which frequencies are clear, and then implement the best form of communication for the required conditions. In this way cognitive radio technology is able to select the frequency band, the type of modulation, and power levels most suited to the requirements, prevailing conditions and the geographic regulatory requirements.

* [Cognitive Radio Tutorial][17]

# XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX

* Chip Manufacture
** Semtech
*** [LoRa Product Family](http://www.semtech.com/wireless-rf/lora.html)
*** [Semtech Internet of Things](http://www.semtech.com/wireless-rf/iot.html)

# XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX
Weightless and SigFox fit in a market niche where use cases required very long life battery operation
(can be multiple years), infrequent data delivery
(once/twice a day but could be more frequent if willing to consume battery life),
small information packets (<1K bytes), very inexpensive asset tags/devices (~$5),
cheap service plans (~$12/year), but confined to just emerging service area
(i.e. antenna infrastructure must be installed to service an area).
Contrast this with similar offers from cellular and satellite solutions which have higher data rates
but much more expressive tags ($75 - $100+) and service plans but have a huge existing service area.

* [Open Source Weightless-N IoT Network Blankets London](http://www.iotevolutionworld.com/iot/articles/405143-open-source-weightless-n-iot-network-blankets-london.htm)
* [A wireless network for gadgets set to arrive in San Francisco](http://www.computerworld.com/article/2489676/internet/a-wireless-network-for-gadgets-set-to-arrive-in-san-francisco.html)

Given these characteristics,
I think the primary use cases will involve status / maintenance monitoring.
Also, it seems likely that logistics type use case could be addressed if the antenna infrastructure
is sufficiently dense to support signal strength triangulation to identify physical location.

Given all this, the telco could position this low power radio solution as an
alternative to its much more capable (and more expensive) cellular bases M2M solution.
It’s an underserved market.
I also think location information is an important feature
(knowing the status of a mobile asset without location isn’t much help).
There are many dumb assets out there that business what to track
(location of stuff, fuel levels, hours of operation, full/empty status, need of repair, etc.)
but cellular M2M is too expensive.

A Telco today is a voice & data provider.
With low power radio, they could position themselves as a visibility provider
= a providing information to show the status / location of things/assets.
Asset visibility is an understood need for the traditional supply chain
and could be generalized to many other business assets/activities.
It could be a service offering via a portal or APIs.
Analytics / data could be provided to enrich the offering
(combine with geo-fencing, city traffic patterns, weather conditions, etc.)
to focus on specific industry’s needs.


######################################################################################################################

# What is 3G?
When 3G networks started rolling out,
they replaced the 2G system, a network protocol that only allowed the most basic
of what we would now call smartphone functionality.
Most 2G networks handled phone calls, basic text messaging, and small amounts of data over a protocol called MMS.
With the introduction of 3G connectivity, a number of larger data formats became much more accessible,
including standard HTML pages, videos, and music.
The speeds were still pretty slow, and mostly required pages
and data specially formatted for these slower wireless connections.
By 2G standards, the new protocol was speedy,
but still didn’t come anywhere close to replacing a home broadband connection.

# What is 4G?
The International Telecommunications Union-Radio (ITU-R)
is the United Nations official agency for all manner of information and communication technologies,
which decided on the specifications for the 4G standard in March 2008.
The ITU-R set standards for 4G connectivity
requiring all services described as 4G to adhere to a set of speed and connection standards.
For mobile use, including smartphones and tablets,
connection speeds need to have a peak of at least 100 megabits per second,
and for more stationary uses such as mobile hotspots, at least 1 gigabit per second.
When these standards were announced,
these speeds were unheard of in the practical world,
because they were intended as a target for technology developers,
a point in the future that marked a significant jump over the current technology.
Over time, the systems that power these networks have caught up,
not just in the sense that new broadcasting methods have found their way into products,
but the previously-established 3G networks have been improved to the point that they can be classified as 4G.

## What is LTE?
[4G vs LTE: What's the difference?](http://www.techadvisor.co.uk/feature/mobile-phone/4g-vs-lte-whats-the-difference-3605656/)
LTE stands for Long Term Evolution,
and isn’t as much a technology as it is the path followed to achieve 4G speeds.
As it stands, most of the time when your phone displays the “4G” symbol in the upper right corner,
it doesn’t really mean it.
When the ITU-R set the minimum speeds for 4G, they were a bit unreachable,
despite the amount of money tech manufacturers put into achieving them.
In response, the regulating body decided that LTE,
the name given to the technology used in pursuit of those standards,
could be labeled as 4G if it provided a substantial improvement over the 3G technology.

Immediately networks began advertising their connections as 4G LTE,
a marketing technique that allowed them to claim next-gen connectivity
without having to reach the actual required number first.
It’s not entirely trickery though, despite inconsistent speeds depending on location and network,
the difference between 3G and 4G is immediately noticeable.

So, LTE is a first-generation 4G technology that should theoretically reach speeds of around 100Mbit/s.
As well as lacking in overall download speed,
LTE also lacks uplink spectral efficiency and speed.
Uplink spectral efficiency refers to the efficiency of the rate that data is uploaded
and transmitted from your smartphone.
That's where MIMO (Multiple Input Multiple Output) comes in.
It's a practical technique for sending and receiving more than one data signal
on the same channel at the same time by using more than one antenna.
Also part of LTE-Advanced is carrier aggregation.
It lets operators treat multiple radio channels in different
or the same frequency bands as if they were one,
producing quicker speeds and enabling users to be able to perform bandwidth hogging activities
like streaming HD video much faster than ever before.

With better carrier aggregation and MIMO,
we can head towards a new standard: LTE Advanced.
This is also known as LTE-A or 'true' 4G.

## LTE UE Category & Class Definitions
LTE utilises User Equipment (UE) categories
or classes to define the performance specifications an enable base stations
to be able to communicate effectively with them knowing their performance levels.
Some like LTE Cat 3, LTE Cat 4 and LTE Cat 0 are widely quoted and used.
Other like LTE Cat 7 and LTE Cat 8 are much newer.

The LTE categories or UE classes are needed to ensure that the base station,
can communicate correctly with the user equipment.
By relaying the LTE UE category information to the base station,
it is able to determine the performance of the UE and communicate with it accordingly.

There are 9 different LTE UE categories that are define.
The different LTE categories have a wide range in the supported parameters and performance.
LTE category 1, for example does not support MIMO, but LTE UE category 5 supports 4x4 MIMO.



* [ExtremeTech explains: What is LTE?](https://www.extremetech.com/mobile/110711-what-is-lte)
* [4G vs LTE – what is the difference?](http://www.androidauthority.com/4g-vs-lte-274882/)
* [LTE Tutorial](https://www.tutorialspoint.com/lte/index.htm)
* [LTE Long Term Evolution Tutorial & Basics](http://www.radio-electronics.com/info/cellulartelecomms/lte-long-term-evolution/3g-lte-basics.php)

# What is 5G?
Carriers are already testing the fifth generation of mobile broadband connectivity, 5G,
but there’s a lot still to work out.
There’s no agreed upon standard as yet,
and we’re not likely to see 5G starting to roll out until at least 2020.
Judging by what has happened with 4G,
it could also be several years beyond that before it’s widely available.

5G networks will use a type of encoding called OFDM,
which is similar to the encoding that LTE uses.
The air interface will be designed for much lower latency and greater flexibility than LTE, though.

The new networks will predominantly use very high frequencies that can transmit huge amounts of data,
but only a few blocks at a time.
The standard will work all the way from low frequencies to high,
but it gets the most benefit over 4G at higher frequencies.
5G may also transmit data over the unlicensed frequencies currently used for WiFi,
without conflicting with existing WiFi networks.

For 5G, the FCC has already made available swaths of the spectrum
in the millimeter wave range for both licensed and unlicensed
use for companies to begin exploring 5G options (specifically,
licensed use in the 28 GHz, 37 GHz, and 39 GHz bands, unlicensed use in the 64-71 GHz band,
and shared access in the 37-37.6 GHz band).
Millimeter wave technology promises higher data capacity than we currently have now.
A simplified rule of thumb to go by is the higher the frequency, the more data it can transmit.

It is expected that standards for 5G will be agreed upon and set by 2020
and that business applications for the technology will start to appear in 2022/23.
It could take another two to three years for consumer access to the tech.


http://www.pcmag.com/article/345387/what-is-5g
http://www.rcrwireless.com/20170124/carriers/verizon-testing-5g-in-10-locations-could-expand-beyond-fiber-footprint-tag2


* [A network of networks: How will carriers handle the evolution to 5G?](https://dupress.deloitte.com/content/dam/dup-us-en/articles/3795_network-of-networks/DUP_Network-of-networks.pdf)


######################################################################################################################





[01]:http://www.orange-business.com/en/press/veolia-water-and-orange-launch-m2o-city-a-smart-metering-operator
[02]:https://www.rudebaguette.com/2013/07/09/orange-smartcities/
[03]:http://www.technologyreview.com/news/527376/silicon-valley-to-get-a-cellular-network-just-for-things/
[04]:http://www.fiercewireless.com/tech/story/iot-startup-sigfox-launching-902-mhz-network-nationwide-us/2015-03-03
[05]:http://www.m2ocity.com/en/
[06]:http://lora-alliance.org/
[07]:http://www.radio-electronics.com/info/wireless/lora/basics-tutorial.php
[08]:http://www.radio-electronics.com/info/wireless/zigbee/zigbee.php
[09]:http://www.radio-electronics.com/info/wireless/6lowpan/basics-tutorial.php
[10]:http://www.radio-electronics.com/info/wireless/wireless-m-bus/basics-tutorial.php
[11]:http://www.radio-electronics.com/info/wireless/sigfox/basics-tutorial.php
[12]:http://mwrf.com/markets/understanding-ultra-narrowband-modulation
[13]:http://www.vmsk.org/Textbook.pdf
[14]:http://telecoms.com/opinion/opening-up-lte-for-iot/
[15]:http://www.radio-electronics.com/news/cellular-telecoms/lte-cat-0-opens-m2m-door-5173
[16]:http://www.fiercewireless.com/story/making-lte-lighter-cheaper-and-slower-internet-things/2015-03-02
[17]:http://www.radio-electronics.com/info/rf-technology-design/cognitive-radio-cr/technology-tutorial.php
[18]:http://cds.linear.com/docs/en/white-paper/TSMP_Whitepaper.pdf
[19]:http://blog.atmel.com/2015/01/20/airboard-is-a-thumb-sized-mcu-for-rapid-iot-prototyping/
[20]:https://en.wikipedia.org/wiki/ISM_band
[21]:https://en.wikipedia.org/wiki/Spectrum_management
[22]:http://www.wi-fi.org/discover-wi-fi/wi-fi-halow
[23]:https://www.qualcomm.com/news/releases/2016/01/05/qualcomm-launches-wi-fi-son-self-organizing-network-solutions-simplify-wi
[24]:http://www.rcrwireless.com/20160420/network-infrastructure/wifinow-2016-wi-fi-dreams-reality
[25]:
[26]:
[27]:
[28]:
[29]:
[30]:
