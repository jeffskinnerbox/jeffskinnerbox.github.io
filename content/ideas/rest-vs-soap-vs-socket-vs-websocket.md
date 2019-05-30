* [SOAP vs. REST](http://nordicapis.com/rest-vs-soap-nordic-apis-infographic-comparison/)
* [Difference between socket and websocket?](http://stackoverflow.com/questions/4973622/difference-between-socket-and-websocket)
* [Are REST and HTTP the same thing?](http://restcookbook.com/Miscellaneous/rest-and-http/)
* [Top Specification Formats for REST APIs](http://nordicapis.com/top-specification-formats-for-rest-apis/)
* [API Gateways to Direct Microservices Architecture](http://nordicapis.com/api-gateways-direct-microservices-architecture/)
* [Designing Evolvable APIs for the Web](http://nordicapis.com/designing-evolvable-apis-for-the-web-formats/)

http://restcookbook.com/



## Webhook
[!webhook_logo]:http://blog.formstack.com/wp-content/uploads/2010/08/webhooks_logo-150x150.png
A webhook is a method of augmenting or altering the behavior of a web page,
or web application, with custom [callbacks][01].
So a webhooks are "[user-defined HTTP callbacks][03]" or "[real-time service][02]".
They are usually triggered by some event, like a comment being posted to a blog.
When that event occurs, the source site makes an HTTP request to the URI configured for the webhook.
Users can configure them to cause events on one site to invoke behavior on another.

## Webscript
http://www.britannica.com/topic/Web-script
Web script, a computer programming language for adding dynamic capabilities to World Wide Web pages.
Web scripting can add information to a page as a reader uses it or
let the reader enter information.

* [25 Emerging Free Web Scripts to Watch](http://www.hotscripts.com/blog/emerging-scripts/)
* [Server-less Stripe push notifications with webscript.io](http://coovtech.com/posts/push-with-web-script/)
* [Webscripts are short scripts, written in Lua, that run on our servers. They can respond to HTTP requests or run as cron jobs.](https://www.webscript.io/)

## Chunked HTTP
* [Chunked HTTP transfer encoding](http://martin.swende.se/blog/HTTPChunked.html)
* http://tpierrain.blogspot.com/2013/09/some-web-mechanical-sympathy-lets.html
* https://sharovatov.wordpress.com/2009/11/05/http-persistent-connections-pipelining-and-chunked-encoding/
* https://gist.github.com/CMCDragonkai/6bfade6431e9ffb7fe88


## WebSocket
[!websocket_logo]:http://www.appelsiini.net/demo/websocket/img/HTML5_Connectivity_512.png
* http://stackoverflow.com/questions/23172760/differences-between-webhook-and-websocket
* Moving Data over the Web: AJAX vs. WebSockets vs. Webhooks - https://blog.safe.com/2014/08/websockets-ajax-webhooks-comparison/
* What Are WebSockets? - https://www.pubnub.com/blog/2013-09-11-what-are-websockets/
* Comparisons between WebHooks, WebSockets, and server-sent events - https://www.safaribooksonline.com/library/view/restful-java-patterns/9781783287963/ch06s05.html
* [Simple WebSocket Client](https://chrome.google.com/webstore/detail/simple-websocket-client/pfdhoblngboilpfeibdedpjgfnlcodoo?hl=en)

## Rest-API
[!rest_api_logo]:http://static1.squarespace.com/static/5269a9bce4b07233cf8781fe/544eb6abe4b053b088f7237a/55770f60e4b09224e9c7619a/1433866080885/rest-api.png
A common theme within IoT is the use of the TCP/IP and HTTP protocols using
APIs adopting the Roy Fielding's [REST architectural style][16] (so-called “RESTful” APIs).
Nonetheless, a key constraint that Fielding proposed is not always adopted.
This feature is known as [Hypermedia as the Engine of Application State (HATEOAS)][17]
or hypermedia APIs for short.

[Mockable.io](https://www.mockable.io/#)
is a simple configurable service to mock out RESTful API or SOAP web-services.
This online service allows you to quickly define REST API or SOAP endpoints and have them return JSON or XML data.

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



[01]:https://en.wikipedia.org/wiki/Callback_(computer_programming)
[02]:http://culttt.com/2014/01/22/webhooks/
[03]:http://timothyfitz.com/2009/02/09/what-webhooks-are-and-why-you-should-care/
[04]:
[05]:https://ifttt.com/maker
[06]:https://www.marcus-povey.co.uk/2012/11/07/using-webhooks-with-ifttt-com/
[07]:https://captnemo.in/ifttt-webhook/
[08]:https://github.com/mapkyca/ifttt-webhook
[09]:https://www.hackster.io/ifttt/projects
[10]:https://ifttt.com/wtf
[11]:http://www.pocket-lint.com/news/130082-ifttt-explained-how-does-it-work-and-what-are-the-new-do-apps
[12]:
[13]:https://ifttt.com/channels
[14]:
[15]:
[16]:http://www.ics.uci.edu/~fielding/pubs/dissertation/top.htm
[17]:http://restcookbook.com/Basics/hateoas/
[18]:
[19]:
[20]:

