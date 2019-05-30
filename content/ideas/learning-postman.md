* [What to Do When Chrome Drops Support for Your REST API Testing](https://dzone.com/articles/what-to-do-when-chrome-drops-support-for-your-rest)

* [Postman Docs](http://www.getpostman.com/docs/)
* [REST / HTTP API Tools for Development and Testing](http://fcfeibel.com/blog/2013/05/07/rest-http-api-tools-for-development-and-testing/)
* [httpie: A CLI http client that will make you smile](http://radek.io/2015/10/20/httpie/)
* [Testing API with Postman](http://www.sm-cloud.com/testing-api-with-postman/)
* [Enabling Chrome Developer Tools inside Postman](http://blog.getpostman.com/2014/01/27/enabling-chrome-developer-tools-inside-postman/)
* [Using a Postman http client for efficient HTTP testing](http://agiliq.com/blog/2014/09/using-postman/)
* [Making the perfect HTTP request using Postman Echo](http://blog.getpostman.com/2015/11/13/making-the-perfect-http-request-using-postman-echo/?utm_content=buffercf99f&utm_medium=social&utm_source=twitter.com&utm_campaign=buffer)
* [Review: Postman Client Makes RESTful API Exploration a Breeze](http://www.programmableweb.com/news/review-postman-client-makes-restful-api-exploration-breeze/brief/2014/01/27)
* [Meet Newman: a command line companion for Postman](http://blog.getpostman.com/2014/05/12/meet-newman-a-command-line-companion-for-postman/)
* [How to write powerful automated API tests with Postman, Newman and Jenkins](http://blog.getpostman.com/2015/09/03/how-to-write-powerful-automated-api-tests-with-postman-newman-and-jenkins/)

If you're a programmer or software engineer,
you'll be familiar with an integrated development environment (or IDE).
[Postman][01] is the first example of an API development environment (or ADE).
Postman started as a simple Chrome browser plugin in 2012
and quickly grew to become very popular tool.
Postman contains tools to design, debug, test,
and monitor APIs as well as develop and publish documentation.
It streamlines the development process,
creates a single source of truth for an organization's APIs
and enhances collaboration on APIs across an organization.

I have settled upone [Postman][01] (including other closely related Chrome tools)
and the commandline utility [cURL][03] as my prefered tools for interacting with HTTP based APIs.
There are several tools to choose from, but I have invested my time & efforts into learning these tools.

[cURL](https://curl.haxx.se/)
:   curl is an open source command line tool and library for transferring data with URL syntax.
    curl supports a range of common Internet protocols,
    currently including HTTP, HTTPS, FTP, FTPS, SCP, SFTP, TFTP, LDAP, DAP,
    DICT, TELNET, FILE, IMAP, POP3, SMTP and RTSP.

[httpie]()
:   httpie is a command-line http client, much like cURL or wget.
    httpie extends the basic functions of curl or wget with things like
    pretty-printing and syntax-highlighting within your terminal window.
    It recognises a few most-commonly used formats, such as JSON & HTML
    and processes the output accordingly.

[Postman](http://www.getpostman.com/)
:   Create and send any HTTP request, save to history, and replay later using the Postman Builder.
    Manage and organize your APIs with Postman Collections for a more efficient testing and integration workflow.
    Automatically generate API documentation based on your Collections, and publish them to standard formats.

[Postman Interceptor](https://chrome.google.com/webstore/detail/postman-interceptor/aicmkgpgakddgnaphhhpliifpcfhicfo/)
:   Postman Interceptor helps you send requests which use browser cookies through the Postman app.
    It can also send headers which are normally restricted by Chrome but are critical for testing APIs.
    The Interceptor makes this process painless.
    Something that would have required a proxy earlier can now be achieved without
    any installation steps or extra configuration.

[Run in Postman](http://www.getpostman.com/docs/run_button)
:  The Run in Postman button opens a collection of API endpoints directly in the user's Postman app.
    You can embed the button in your documentation to link a collection of endpoints
    and workflows that help developers onboard onto your API faster.

[Newman](https://www.npmjs.com/package/newman)
:   Newman is a command-line collection runner for Postman.
    It allows you to effortlessly run and test a Postman collection directly from the command-line.
    It is built with extensibility in mind so that you can easily integrate it
    with your continuous integration servers and build systems.

[Chrome DevTools](https://developer.chrome.com/devtools)
:   The Chrome Developer Tools (DevTools for short), are a set of web authoring
    and debugging tools built into Google Chrome.
    The DevTools provide web developers deep access into the internals of the browser
    and their web application.
    Use the DevTools to efficiently track down layout issues, set JavaScript breakpoints,
    and get insights for code optimization.

# OAuth 2.0
* [Using Postman Environment Variables & Auth Tokens](https://medium.com/@codebyjeff/using-postman-environment-variables-auth-tokens-ea9c4fe9d3d7#.ghq4nf8lp)
* [Visualizing the OAuth 2.0 Client Flow](http://techblog.constantcontact.com/api/visualizing-the-oauth-2-0-client-flow/)
* [Beer Locker: Building a RESTful API With Node - OAuth2 Server](http://scottksmith.com/blog/2014/07/02/beer-locker-building-a-restful-api-with-node-oauth2-server/)

## Learning OAuth2
* [Serious OAuth in 8 Steps](https://knpuniversity.com/screencast/oauth/intro)
* [3 Legged OAuth 2 using Insomnia REST](https://forge.autodesk.com/blog/3-legged-oauth-2-using-insomnia-rest)
* [GitHub API Authentication using OAuth 2.0](https://insomnia.rest/blog/oauth2-github-api/)

# Insomnia
Insomnia is open source cross-platform REST API client desktop application and alternative to Postmen.
It takes the pain out of interacting with HTTP-based APIs.
Insomnia combines an easy-to-use interface with advanced functionality like
authentication helpers, code generation, and environment variables.

* [Insomnia](https://insomnia.rest/)

# Mitmproxy
[mitmproxy][15] is an open source, interactive,
SSL-capable intercepting proxy with a console interface
used for debugging, testing, privacy measurements, and penetration testing.
It can be used to intercept, inspect, modify and replay web traffic such as
HTTP/1, HTTP/2, WebSockets, or any other SSL/TLS-protected protocols.

* [Mitmproxy: Your D.I.Y. Private Eye](https://medium.com/@maxgreenwald/mitmproxy-your-d-i-y-private-eye-864c08f84736)
* [How To: Use mitmproxy to read and modify HTTPS traffic](https://blog.heckel.xyz/2013/07/01/how-to-use-mitmproxy-to-read-and-modify-https-traffic-of-your-phone/)
* [Decrypt your HTTPS traffic with mitmproxy](https://www.darkcoding.net/software/decrypt-your-https-traffic-with-mitmproxy/)

# Which Postman Application
There is a [Postman Chrome browser application][09]
and the preferred Windows/Linux/MacOS [Postman Native App][08]
but **NOTE** that the [Postman Chrome browser app is being deprecated][12].
This can be confusing (or [Postman will not run at all][11])
because you may not know which one your running,
but there are [simple ways to make sure your running the right version][10].

* If you see "Builder" and "Team Library" at the center of the Postman window,
your running the Chrome browser application.
* If you see your Workspace and "invite" at the center of the Postman window,
your running the native application.

## Installing Postman on Chrome OS

## Installing Postman on Ubuntu 18.04
[Thanks to Snap][04], installing Postman on Ubuntu 18.04 should be made easier,
no more manually downloading and extracting files.
The problem is, it doesn't seem to work right (yet).
Instead, I installing Postman using [Postman's recommend procedures][06]
(also see [here][07]).
You'll find the download for the [Postman Linux native app on their website][08].

```bash
# download the postman compressed package
wget https://dl.pstmn.io/download/latest/linux64 -O ~/Downloads/Postman.tar.gz

# untar & unzip the package and then clean up
sudo tar -xzf ~/Downloads/Postman.tar.gz -C /opt
rm Postman.tar.gz

# link the postman executable to your path
sudo ln -s /opt/Postman/Postman /usr/bin/postman
```

This command will create an Unity desktop file for your launcher.
After you create the file, logout and then log back in,
you’ll be able to search for “Postman” in your Unity launcher to start up the Postman app.

```shell
cat > ~/.local/share/applications/postman.desktop <<EOL
[Desktop Entry]
Encoding=UTF-8
Name=Postman
Exec=postman
Icon=/opt/Postman/app/resources/app/assets/icon.png
Terminal=false
Type=Application
Categories=Development;
EOL
```

For me, this installed Postman for Linux Version 6.3.0 (linux 4.15.0-36-generic / x64).
This Postman's native apps will [notify you whenever a major update is available][05]

# Postman Test Run
Now lets take a test run with Postman interact with an API for both public and secure API endpoints.

* [Linux users can now install Postman as a snap](http://blog.getpostman.com/2018/12/05/linux-users-can-now-install-postman-as-a-snap/)
* [Manage a Collection of Secure API Endpoints with Postman](https://auth0.com/blog/manage-a-collection-of-secure-api-endpoints-with-postman/)
* [3 Ways Auth0 Can Help Retailers Protect Customer Data During the Holidays](https://auth0.com/blog/3-ways-auth0-can-help-retailers-protect-customer-data-during-the-holidays/)
* [How To Reduce Development Time? Mock Your APIs](https://hackernoon.com/how-to-reduce-development-time-mock-your-apis-f0c81072fad6)
* [Automating API’s testing with Postman and Newman](https://medium.com/@arthurgomesfaria/automating-apis-testing-with-postman-and-newman-a9a9ef0354d4)

# API Documentation
* [The Ultimate API Publisher’s Guide](https://www.youtube.com/watch?v=6Q3Cc1z-t5U)

# cURL to Postman
https://www.daniellittle.xyz/curl-to-postman/


# Postman to cURL
http://blog.getpostman.com/2016/02/03/curl-and-postman-work-wonderfully-together/

# API Testing
* [API Testing With Postman](https://www.axelerant.com/resources/team-blog/topic/api-testing)



[01]:https://www.getpostman.com/docs/introduction
[02]:https://curl.haxx.se/
[03]:http://linux.die.net/man/1/curl
[04]:http://ubuntuhandbook.org/index.php/2018/09/install-postman-app-easily-via-snap-in-ubuntu-18-04/
[05]:https://learning.getpostman.com/docs/postman/launching_postman/installation_and_updates#updating-postman
[06]:https://learning.getpostman.com/docs/postman/launching_postman/installation_and_updates/
[07]:https://www.bluematador.com/blog/postman-how-to-install-on-ubuntu-1604
[08]:https://www.getpostman.com/apps
[09]:https://chrome.google.com/webstore/detail/postman/fhbjgbiflinjbdggehcddcbncdddomop?hl=en
[10]:http://blog.getpostman.com/2017/03/14/going-native/
[11]:https://support.getpostman.com/hc/en-us/articles/115005901149-My-Postman-app-won-t-start
[12]:http://blog.getpostman.com/2017/11/01/goodbye-postman-chrome-app
[13]:
[14]:
[15]:https://mitmproxy.org/
[16]:
[17]:
[18]:
[19]:
[20]:

