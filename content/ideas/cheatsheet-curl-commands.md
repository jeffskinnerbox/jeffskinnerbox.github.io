Title: CheatSheet: cURL Commands
Slug: cheatsheet-curl-commands
Status: hidden

See the following for more examples:
* [cURL your way to freedom](http://grahamnic.wordpress.com/2013/05/06/mac-os-curl-your-way-to-freedom/)
* [curl tutorial with examples of usage](http://www.yilmazhuseyin.com/blog/dev/curl-tutorial-examples-usage/)
* [Using cURL to automate HTTP jobs](https://curl.haxx.se/docs/httpscripting.html)
* [Manual -- curl usage explained](https://curl.haxx.se/docs/manual.html)
* [Everything curl - the book](https://curl.haxx.se/book.html)

[cURL][03] is a command line tool for getting or sending files using URL syntax.
cURL uses the client-side URL transfer library [`libcurl`][01],
it supports a range of common Internet protocols,
including HTTP, HTTPS, FTP, FTPS, SCP, SFTP, TFTP, LDAP, LDAPS, DICT, TELNET, FILE, IMAP, POP3, SMTP and RTSP.
cURL offers a [busload of useful tricks][02] like proxy support, user authentication,
ftp upload, HTTP post, SSL connections (i.e. https:), cookies, file transfer resume.

Basic use of cURL involves simply typing `curl` at the command line,
followed by the URL of the output to retrieve.
cURL defaults to displaying the output it retrieves to the standard output specified on the system.
Beyond this, cURL offers an boat load of [command line options][04] to get the effect your looking for.

# Things to Learn

## Learning OAuth2
* [Serious OAuth in 8 Steps](https://knpuniversity.com/screencast/oauth/intro)
* [3 Legged OAuth 2 using Insomnia REST](https://forge.autodesk.com/blog/3-legged-oauth-2-using-insomnia-rest)
* [GitHub API Authentication using OAuth 2.0](https://insomnia.rest/blog/oauth2-github-api/)

# Useful Tools

## Copy as cURL
[Chrome has a feature][13] which allows you to copy a web request as a [cURL][03] request,
so you see all the various elements of the request on the command line.
To use this feature:

1. First turn on the developer tools in **Chrome Menu** > **More tools** > **Developer tools**
or enter `Ctr` + `Shift` + `I`.
1. Next make the request by pasting your URL into the Chrome browser and hit `Return`.
1. Now check the "Network" tab.
There you'll see listed your requests for the page itself and also each of the assets.
1. Right-click on any of the entries there, and select **Copy** > **Copy as cURL**.

## Convert cURL Syntax to Python, Node.js, PHP
Convert cURL syntax to native Python, Node.js, or PHP code using an [online converter][14].

## Insomnia
Insomnia is open source cross-platform REST API client desktop application and alternative to Postmen.
It takes the pain out of interacting with HTTP-based APIs.
Insomnia combines an easy-to-use interface with advanced functionality like
authentication helpers, code generation, and environment variables.

* [Insomnia](https://insomnia.rest/)

## Mitmproxy
[mitmproxy][15] is an open source, interactive,
SSL-capable intercepting proxy with a console interface
used for debugging, testing, privacy measurements, and penetration testing.
It can be used to intercept, inspect, modify and replay web traffic such as
HTTP/1, HTTP/2, WebSockets, or any other SSL/TLS-protected protocols.

* [Mitmproxy: Your D.I.Y. Private Eye](https://medium.com/@maxgreenwald/mitmproxy-your-d-i-y-private-eye-864c08f84736)
* [How To: Use mitmproxy to read and modify HTTPS traffic](https://blog.heckel.xyz/2013/07/01/how-to-use-mitmproxy-to-read-and-modify-https-traffic-of-your-phone/)
* [Decrypt your HTTPS traffic with mitmproxy](https://www.darkcoding.net/software/decrypt-your-https-traffic-with-mitmproxy/)

## Pretty print JSON On The Command Line
* [JSON on the command line with jq](https://shapeshed.com/jq-json/)
* [Discover how to use jq, a JSON manipulation command line, with GeoJSON](https://webgeodatavore.com/jq-json-manipulation-command-line-with-geojson.html)
* [Parsing JSON with jq](http://www.compciv.org/recipes/cli/jq-for-parsing-json/)

[`jq`][11] is a lightweight and flexible command-line JSON processor,
sort of like a `sed` for JSON data.
You can use it to slice, filter, map and transform JASON structured data
with the same ease that `sed`, `awk`, `grep`.
Install this utility via

    sudo apt-get install jq

A `jq` program is a “filter”.
That is, it takes an input and produces an output.
There are a lot of built in filters for extracting a particular field of an object,
or converting a number to a string, or various other standard tasks.
Filters can be combined in various ways and you can pipe the output of one filter into another filter,
or collect the output of a filter into an array.

The absolute simplest is `.`.
This is a filter that takes its input and produces it unchanged as output.
Since `jq` by default pretty-prints all output,
this trivial program can be a useful way of formatting JSON output.
For example,

```bash
echo '{"this":"succeeded","by":"dweeting","the":"dweet","with":{"thing":"thing_name","created":"2014-05-03T01:47:23.260Z","content":{"hello":"world"}}}' | jq -M '.'
 ```

will produce

```json
{
  "with": {
    "content": {
      "hello": "world"
    },
    "created": "2014-05-03T01:47:23.260Z",
    "thing": "thing_name"
  },
  "the": "dweet",
  "by": "dweeting",
  "this": "succeeded"
}
```

The `-M` option will give you monochrome output.
`jq` or `jq -C` outputs colored JSON, if writing to a terminal.

 The formater `python -mjson.tool | pygmentize -l javascript` will produce

 ```json
{
    "by": "dweeting",
    "the": "dweet",
    "this": "succeeded",
    "with": {
        "content": {
            "hello": "world"
        },
        "created": "2014-05-03T01:47:23.260Z",
        "thing": "thing_name"
    }
}
 ```

# Example Uses of cURL

## Download a Single File
The following command will get the content of the URL and display it in the STDOUT (i.e on your terminal).

    curl http://www.centos.org

To store the output in a file, you an redirect it as shown below.
This will also display some additional download statistics.

    $ curl http://www.centos.org > $HOME/tmp/junk.html
      % Total    % Received % Xferd  Average Speed   Time    Time     Time  Current
                                     Dload  Upload   Total   Spent    Left  Speed
    100 15201  100 15201    0     0  29070      0 --:--:-- --:--:-- --:--:-- 29065

You get the same result by using the `--output` (or `-o`) option.
In this case the command is: `curl -o $HOME/tmp/junk.html http://www.centos.org`.
And to use the URL name as the filename to store the result,
use the command: `curl -O http://www.centos.org/index.html`
and the output will be in the current directory, in file `index.html`.

To not show the progress bar in the printout, use the `-sS` options.
So using the above example again, you get no output (but you will see errors if they occur):

    # suppress the progress output but otherwise output errors to STDERR
    $ curl --fail --silent --show-error http://www.centos.org > $HOME/tmp/junk.html

    # same effect
    $ curl -sS http://www.centos.org > $HOME/tmp/junk.html

## Downloading Multiple Files
We can download multiple files in a single shot by specifying the URLs on the command line.

    curl -O http://www.gnu.org/software/gettext/manual/html_node/index.html -O http://www.gnu.org/software/gettext/manual/gettext.html

This command will download both index.html and gettext.html
and save it in the same name under the current directory.

## Follow HTTP Location Headers
By default cURL doesn’t follow the [HTTP Location headers][05] (also called Redirect).
When a requested web page is moved to another place,
then an HTTP Location header will be sent as a Response and it will have where the actual web page is located.
For example, if you attempt to download the home page of my blog, you get

    $ curl http://www.jeffskinnerbox.me
    <html>
    <head><title>301 Moved Permanently</title></head>
    <body bgcolor="white">
    <center><h1>301 Moved Permanently</h1></center>
    <hr><center>nginx</center>
    </body>
    </html>

To get the page, use the `--location` (or `-L`) option

    curl --location www.jeffskinnerbox.me

# Doing HTTP Request Methods With cURL
The Hypertext Transfer Protocol (HTTP) is an application protocol for distributed,
collaborative, [hypermedia][07] information systems.
HTTP functions as a request-response protocol in the client-server computing model.
A web browser may be the client and an application running on a computer hosting a web site may be the server.
The client submits an [HTTP request message][08] to the server.
This is also know as the client executing a HTTP Request Method.

cURL supports the `--request` (or `-X`) parameter,
you must choose our HTTP method to use for the requests.
Its values can be GET, POST, DELETE, PUT, etc.
If we don't specify this parameter, cURL will use the GET method by default.

## Make a GET Request Without Any Data
We have already been doing this in the above examples.
The following commands are equivalent:

    curl http://www.centos.org
    curl --request GET 'http://www.centos.org'

In the first line, cURL is using the GET method by default.

You can also use cURL to execute APIs.
In this case, we are using a GitHub API (see [GitHub Developer][12])
to get infomration about a user use the command

    curl https://api.github.com/users/jeffskinnerbox

The JSON formated output form this GET method is

    {
        "login": "jeffskinnerbox",
        "id": 2348174,
        "avatar_url": "https://avatars.githubusercontent.com/u/2348174?",
        "gravatar_id": "d6386d1bc80e871a5a4b6d0e28d5f7da",
        "url": "https://api.github.com/users/jeffskinnerbox",
        "html_url": "https://github.com/jeffskinnerbox",
        "followers_url": "https://api.github.com/users/jeffskinnerbox/followers",
        "following_url": "https://api.github.com/users/jeffskinnerbox/following{/other_user}",
        "gists_url": "https://api.github.com/users/jeffskinnerbox/gists{/gist_id}",
        "starred_url": "https://api.github.com/users/jeffskinnerbox/starred{/owner}{/repo}",
        "subscriptions_url": "https://api.github.com/users/jeffskinnerbox/subscriptions",
        "organizations_url": "https://api.github.com/users/jeffskinnerbox/orgs",
        "repos_url": "https://api.github.com/users/jeffskinnerbox/repos",
        "events_url": "https://api.github.com/users/jeffskinnerbox/events{/privacy}",
        "received_events_url": "https://api.github.com/users/jeffskinnerbox/received_events",
        "type": "User",
        "site_admin": false,
        "name": null,
        "company": null,
        "blog": "www.jeffskinnerbox.me",
        "location": null,
        "email": null,
        "hireable": false,
        "bio": null,
        "public_repos": 11,
        "public_gists": 8,
        "followers": 0,
        "following": 0,
        "created_at": "2012-09-14T17:09:01Z",
        "updated_at": "2014-04-30T20:43:52Z"
    }

## Make a Request With Data
In order to send data with the GET requests, we should use `--data` parameter.
For example, you could send login data with POST request

    curl --request POST 'http://www.somedomain.com/login/' --data 'username=myusername&password=mypassword'

Search for data

    curl --request GET 'http://www.youtube.com/results?search_query=my_keyword'

## Rake requests With Extra Headers
Sometimes you need to add [HTTP headers][09] to your requests.
This is done by `--header` (or `-H`) parameter.

    curl --request GET 'http://www.somedomain.com/user/info/' --header 'sessionid:1234567890987654321'

Notice that we are using semicolon(":") to separate header name from its value.

## Get Response With HTTP Headers
Every time your web browser requests a page,
the web server sends “headers” before it sends the actual page markup.
These headers are normally invisible, although cURL will make them visible if you’re interested.
But the headers are important, because they tell your browser how to interpret the page markup that follows.

If you need to get HTTP headers with your response, `--include` (or `-i`) parameter can be used.
[HTTP headers][10] are part of these HTTP requests and responses,
and they carry information about the client browser, the requested page, the server and more.
Consider the following to see what additional information is provided.

    curl --request GET 'http://www.centos.org' > junk1
    curl --request GET 'http://www.centos.org' --include > junk2
    diff junk1 junk2

The `diff` produces the following:

    0a1,10
    > HTTP/1.1 200 OK
    > Server: nginx/0.8.55
    > Date: Sun, 27 Apr 2014 02:21:22 GMT
    > Content-Type: text/html; charset=UTF-8
    > Connection: keep-alive
    > Last-Modified: Fri, 25 Apr 2014 13:49:41 GMT
    > ETag: "20797-3b61-4f7de3cc22740"
    > Accept-Ranges: bytes
    > Content-Length: 15201
    >

## See Complete Request And Response Headers with CURL
Using verbose output in curl can help you see all headers
(both request headers sent and response headers received).
Using Verbose is done by simply passing `--verbose` (or `-v`).
For example, the command `curl www.youtypeitwepostit.com` gives you

    <!DOCTYPE html>
    <html>
        <head>
            <title>Home</title>
            <!-- optional styling to this site -->
            <link href="http://netdna.bootstrapcdn.com/twitter-bootstrap/2.2.2/css/bootstrap-combined.min.css" rel="stylesheet" />
        </head>
        <body>
            <div>
              <h1>You type it, we post it!</h1>
              <p>Exciting! Amazing!</p>

              <p class="links">
                <a href="http://www.youtypeitwepostit.com/messages">Get started</a>
                <a href="http://www.youtypeitwepostit.com/about">About this site</a>
                <!--<a href="http://www.youtypeitwepostit.com/login">Login via Example.net</a>-->
              </p>
            </div>
        </body>
        <!-- optional enhancement -->
        <script src="http://netdna.bootstrapcdn.com/twitter-bootstrap/2.2.2/js/bootstrap.min.js"></script>
        <script src="http://code.jquery.com/jquery-latest.js"></script>
        <script src="http://www.youtypeitwepostit.com/script.js"></script>
    </html>

But the command `curl --verbose www.youtypeitwepostit.com` gives you

    * Rebuilt URL to: www.youtypeitwepostit.com/
    * Adding handle: conn: 0x91462b0
    * Adding handle: send: 0
    * Adding handle: recv: 0
    * Curl_addHandleToPipeline: length: 1
    * - Conn 0 (0x91462b0) send_pipe: 1, recv_pipe: 0
    * About to connect() to www.youtypeitwepostit.com port 80 (#0)
    *   Trying 50.16.227.220...
    * Connected to www.youtypeitwepostit.com (50.16.227.220) port 80 (#0)
    > GET / HTTP/1.1
    > User-Agent: curl/7.32.0
    > Host: www.youtypeitwepostit.com
    > Accept: */*
    >
    < HTTP/1.1 200 OK
    < Content-Type: text/html
    < Date: Mon, 28 Apr 2014 01:34:15 GMT
    < Etag: "c69b62faa34d53bed401282f35449700"
    < Last-Modified: undefined
    < Content-Length: 973
    < Connection: keep-alive
    <
    <!DOCTYPE html>
    <html>
        <head>
            <title>Home</title>
            <!-- optional styling to this site -->
            <link href="http://netdna.bootstrapcdn.com/twitter-bootstrap/2.2.2/css/bootstrap-combined.min.css" rel="stylesheet" />
        </head>
        <body>
            <div>
              <h1>You type it, we post it!</h1>
              <p>Exciting! Amazing!</p>

              <p class="links">
                <a href="http://www.youtypeitwepostit.com/messages">Get started</a>
                <a href="http://www.youtypeitwepostit.com/about">About this site</a>
                <!--<a href="http://www.youtypeitwepostit.com/login">Login via Example.net</a>-->
              </p>
            </div>
        </body>
        <!-- optional enhancement -->
        <script src="http://netdna.bootstrapcdn.com/twitter-bootstrap/2.2.2/js/bootstrap.min.js"></script>
        <script src="http://code.jquery.com/jquery-latest.js"></script>
        <script src="http://www.youtypeitwepostit.com/script.js"></script>
    </html>
    * Connection #0 to host www.youtypeitwepostit.com left intact

Sometimes even `--verbose` is not enough.
Then `--trace` and `--trace-ascii`
offer even more details as they show EVERYTHING curl sends and receives.
Use it like this:

```bash
curl --trace-ascii debugdump.txt http://www.example.com/
```

Many times you may wonder what exactly is taking all the time,
or you just want to know the amount of milliseconds between two points in a transfer.
For those, and other similar situations,
the `--trace-time` option is what you need.
It'll prepend the time to each trace output line:

```bash
curl --trace-ascii d.txt --trace-time http://example.com/
```

## Show Methods that are Supported on a Resource
If you want to figure out which methods are supported on a resource,
use the `OPTIONS` method for this.
It will return an `ALLOW` header,
that returns all the methods the current resource is capable of handling.
For example, the command

    curl --include --request OPTIONS 'http://www.centos.org'

returns the following.  It include the line starting with "Allow"
which list the methods supported.

    HTTP/1.1 200 OK
    Server: nginx/0.8.55
    Date: Tue, 06 May 2014 01:14:00 GMT
    Content-Type: text/html; charset=UTF-8
    Connection: keep-alive
    Allow: GET,HEAD,POST,OPTIONS,TRACE
    Content-Length: 0

If resources require authentication,
it is possible that OPTIONS returns more methods once you added authentication headers to the request.

Keep in mind that many web services do not taking advantage of the `OPTIONS` method,
and as a result, its results could be erroneous.

## Show Only Response Headers
Sometimes you only want to see the response headers returned by the server,
without seeing the actual response content.
In this case, use the `--head` (or `-I`) option.

    $ curl --request GET --head www.youtypeitwepostit.com
    HTTP/1.1 200 OK
    Content-Type: text/html
    Date: Mon, 28 Apr 2014 01:38:16 GMT
    Etag: "c69b62faa34d53bed401282f35449700"
    Last-Modified: undefined
    Content-Length: 973
    Connection: keep-alive

## Pass HTTP Authentication in cURL
Sometime, websites will require a username and password to view the content.
With the `--user` (or `-u`) option, we can pass those credentials from cURL
to the web server as shown below.

    curl --user username:password URL

**NOTE:** The credentials are passed in the clear, unencrypted!

## Download Files from FTP Server
cURL can also be used to download files from FTP servers.
If the given FTP path is a directory,
by default it will list the files under the specific directory.

    curl -u ftpuser:ftppass -O ftp://ftp_server/public_html/xss.php

The above command will download the xss.php file from the ftp server
and save it in the local directory.

    curl -u ftpuser:ftppass -O ftp://ftp_server/public_html/

Here, the given URL refers to a directory.
So cURL will list all the files and directories under the given URL.

## Upload Files to FTP Server
Curl can also be used to upload files to the FTP server with -T option.

    curl -u ftpuser:ftppass -T myfile.txt ftp://ftp.testserver.com

The above command will upload the file named myfile.txt to the FTP server.
You can also upload multiple files at a same time using the range operations.

    curl -u ftpuser:ftppass -T "{file1,file2}" ftp://ftp.testserver.com

## Using a Proxy
We can specify cURL to use proxy to do the specific operation by using `--proxy` (or `-x`) option.
We need to specify the host and port of the proxy.
For example

    curl --proxy proxysever.test.com:3128 http://google.co.in

## Send Mail using SMTP Protocol
cURL can also be used to send mail using the SMTP protocol.
You should specify the from-address, to-address, and the mailserver ip-address as shown below.

    curl --mail-from blah@test.com --mail-rcpt foo@test.com smtp://mailserver.com

Once the above command is entered,
it will wait for the user to provide the data to mail.
Once you’ve composed your message, type "." (i.e. period) as the last line,
which will send the email immediately.

## How to Look Up Geographic Location of an IP Address
[ipinfo.io](http://ipinfo.io/)
Unlike other services, ipinfo.io provides JSON-based geolocation API, so you can easily look up geolocation from the command line, using tools like curl.

    curl ipinfo.io/23.66.166.151

## Get Definition of a Word using DICT Protocol
You can use cURL to get the definition for a word with the help of [DICT protocol][06].
We need to pass a Dictionary Server URL to it.
There are many dictionaries are available, but you can list all the dictionaries using
`curl dict://dict.org/show:db` and you get the output

    220 pan.alephnull.com dictd 1.12.0/rf on Linux 3.0.0-14-server <auth.mime> <18508651.19610.1398478389@pan.alephnull.com>
    250 ok
    110 74 databases present
    gcide "The Collaborative International Dictionary of English v.0.48"
    wn "WordNet (r) 3.0 (2006)"
    moby-thes "Moby Thesaurus II by Grady Ward, 1.0"
    elements "The Elements (07Nov00)"
    vera "V.E.R.A. -- Virtual Entity of Relevant Acronyms (June 2006)"
    jargon "The Jargon File (version 4.4.7, 29 Dec 2003)"
    foldoc "The Free On-line Dictionary of Computing (26 July 2010)"
    easton "Easton's 1897 Bible Dictionary"
    hitchcock "Hitchcock's Bible Names Dictionary (late 1800's)"
    bouvier "Bouvier's Law Dictionary, Revised 6th Ed (1856)"
    devil "The Devil's Dictionary (1881-1906)"
    world02 "CIA World Factbook 2002"
    gaz2k-counties "U.S. Gazetteer Counties (2000)"
    gaz2k-places "U.S. Gazetteer Places (2000)"
    gaz2k-zips "U.S. Gazetteer Zip Code Tabulation Areas (2000)"
    eng-swe "English-Swedish Freedict dictionary"
    nld-eng "Dutch-English Freedict dictionary"
    eng-cze "English-Czech fdicts/FreeDict Dictionary"
    eng-swa "English-Swahili xFried/FreeDict Dictionary"
    .
    .
    .

To query for the word "internet", you get the following:

    curl dict://dict.org/d:internet
    220 pan.alephnull.com dictd 1.12.0/rf on Linux 3.0.0-14-server <auth.mime> <18509108.23553.1398478640@pan.alephnull.com>
    250 ok
    150 1 definitions retrieved
    151 "internet" gcide "The Collaborative International Dictionary of English v.0.48"
    internet \in"ter*net\ ([i^]n"t[~e]r*n[e^]t), n.
        A large network[3] of numerous computers connected through a
        number of major nodes of high-speed computers having
        high-speed communications channels between the major nodes,
        and numerous minor nodes allowing electronic communication
        among millions of computers around the world; -- usually
        referred to as {the internet}. It is the basis for the
        {World-Wide Web}.
        [PJC]
    .
    250 ok [d/m/c = 1/0/16; 0.000r 0.000u 0.000s]
    221 bye [d/m/c = 0/0/0; 0.000r 0.000u 0.000s]

## Sources and Additional Examples
* [Using cURL to automate HTTP jobs](http://curl.haxx.se/docs/httpscripting.html)
* [15 Practical Linux cURL Command Examples (cURL Download Examples)](http://www.thegeekstuff.com/2012/04/curl-examples/)
* [curl tutorial with examples of usage](http://www.yilmazhuseyin.com/blog/dev/curl-tutorial-examples-usage/)
* [CURL command Tutorial in Linux with Example Usage](http://www.slashroot.in/curl-command-tutorial-linux-example-usage)
* [An introduction to curl using GitHub's API](https://gist.github.com/caspyin/2288960)
* [GitHub API v3](https://developer.github.com/v3/)
* []()
* []()



[01]:http://curl.haxx.se/libcurl/
[02]:http://curl.haxx.se/docs/features.html
[03]:http://curl.haxx.se/
[04]:http://curl.haxx.se/docs/manpage.html
[05]:http://en.wikipedia.org/wiki/HTTP_location
[06]:http://en.wikipedia.org/wiki/DICT
[07]:http://en.wikipedia.org/wiki/Hypermedia
[08]:http://en.wikipedia.org/wiki/HTTP#Request_methods
[09]:http://en.wikipedia.org/wiki/HTTP_headers
[10]:http://code.tutsplus.com/tutorials/http-headers-for-dummies--net-8039
[11]:http://stedolan.github.io/jq/
[12]:https://developer.github.com/v3/
[13]:https://lornajane.net/posts/2013/chrome-feature-copy-as-curl
[14]:https://curl.trillworks.com/
[15]:https://mitmproxy.org/
[16]:
[17]:
[18]:
[19]:
[20]:
