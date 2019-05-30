Status: draft
Title: Adding a Wiki to My Blog
Date: 2100-01-01 00:00
Category: Software
Tags: TiddlyWiki, Blog, Wiki, Heruko, Node.js
Slug: adding-a-wiki-to-my-blog
Author: Jeff Irland
Image: tiddlywiki_logo.png
Summary: bla bla bla bla bla bla

I find myself with a multitude of ancillary information,
some of it related to this blog but not all related.
I need a place to adequately organize and store it.
Creating a page or post on the blog will be over kill.
May of the topic are interrelated and should be searchable and cross-linked.

What I need is a [microblog][13] or a [personal wiki][01].
There seems to be many of them but I have found [TiddlyWiki][02]
offering the most inviting solution.
I particularly like the fact that you can use it with just a browser
(must be at least somewhat [HTML5 complatable][03], like [Chrome][04]).
All you need is a browser and you maintain the wiki via a locally stored HTML file.
The file is loaded with [JavaScript][05] to support the editing of the wiki.
TiddlyWiki's fundamental units of information is the "[tiddler][14]",
which is to capture a small, self contain thought, idea, or concept.

The really strong features for me are that
TiddlyWiki is amazingly easy to use, portable across multiple operating systems,
and highly configurable.
What pushed me over the top are the facts that I could also use,
via [TiddlyWiki Plugins][22],
Markdown to format the content
(althought TiddlyWiki supports it own  Markdown-like formating language which is more powerful)
and I can edit using Vim via CodeMirror.
The post "[TiddlyWiki, an open source Evernote with VIM and Markdown][21]"
gives a good, quick discussion on this topic.

My initial thought was just to add the wiki's HTML file to my blog
as a page addressable from the header menu.
This approach would make the wiki editable by anyone, something I didn't want.
TiddlyWiki does support the rendering of a static HTML file, which is what I want,
but this solution make for a cold and lifeless wiki with no interactivity and searching capabilities.

TiddlyWiki does support an alternative where the pages
are delivered via a server using [Node.js][06][^A].
This provides the interactivity I want, and I can password protect its editing.
In addition, individual tiddlers are stored in separate files,
instead of a single HTML file, so you can organise them as you wish across multiple wiki.
Also, it gives me an excuse to [learn more about Node.js][^B]!

[^A]:
    [Node.js is a platform][08] built on Chrome's JavaScript runtime for event-driven, non-blocking I/O model.
    Unlike JavaScript applications running in a web browser,
    Node.js runs JavaScript by leveraging [V8][07],
    Google’s fast JavaScript engine designed for Chrome.
    This allows Node.js to create a runtime environment that pushes JavaScript
    from the server to the client quickly.
    V8 translates JavaScript into native machine language,
    instead of working overtime to interpret it as bytecode, giving Node.js its speed.
    This speed, combined with asynchronous programming,
    are the twin powerhouses that make Node.js so responsive.
    The web posts [Way Node.js is Becoming the Go-To Technology in the Enterprise][10],
    [What is Node.JS and Why Should I Care?][11], and
    [Why The Hell Would I Use Node.js? A Case-by-Case Tutorial][12]
    provides some good insights and motivation for the use of Node.js.

[^B]:
    Node.js shines in real-time web applications employing push technology over websockets.
    What is so revolutionary about that? Well, after over 20 years of stateless-web
    based on the stateless request-response paradigm,
    we finally have web applications with real-time, two-way connections,
    where both the client and server can initiate communication,
    allowing them to exchange data freely.
    This is in stark contrast to the typical web response paradigm,
    where the client always initiates communication.
    Additionally, it’s all based on the open web stack (HTML, CSS and JS)
    running over the standard port 80.

## Installation
Install Node.js via `apt-get`.
Because of a conflict with another package (amateur radio node package,
the executable from the Ubuntu repositories is called `nodejs` instead of `node`.
Node.js package manager and other programs will want to call it "node",
so you'll need to set up a symbolic link between `nodejs` and `node`.

```bash
# install the Node.js engine and its package manager
sudo apt-get install nodejs npm

# create symbolic link
sudo ln -s /usr/bin/nodejs /usr/bin/node
```

You can install the wiki, TiddlyWiki, via the Node.js package manager, [`npm`][15]:

```bash
# install TiddlyWiki, the '-g' option installs it globally
sudo npm install -g tiddlywiki

# check its version
tiddlywiki --version

```

When a new version of TiddlyWiki is released, you can easily upgrade it with this command:

```bash
# upgrade TiddlyWiki
sudo npm update -g tiddlywiki
```

## Creating a Wiki
At this point, you should be ready to create a test wiki.

* change directory to where you want the wiki to be stored
* `tiddlywiki mynewwiki --init server` will create a folder called `mynewwiki` for a new wiki that includes server-related components
* `tiddlywiki mynewwiki --server` to start TiddlyWiki server
* With your browser, visit `http://127.0.0.1:8080/`
* Try editing and creating tiddlers.  The Tiddles will be maintained in individual files in the `tiddlers` directory.

Check the [TiddlyWiki website documentation][02] to find out more about the capabilities of TiddlyWiki.

## Configuring TiddlyWiki
* **Setting a Favicon** - Following the instructions outline in the [TiddlyWiki tiddler][23],
create a tiddler called `$:/favicon.ico` provide your [favicon][25].
(First you [import the image][24] to create a tiddler and then rename that tiddler to `$:/favicon.ico`.)
* **Install Markdown Plugin** - Follow the instructions given by TiddlyWiki plugin's documentation to
[install the Markdown plugin][26].
The key to getting TiddlyWiki to format Markdown text is to select `text/vnd.tiddlywiki`
in the text type menu at the bottom of the tiddler when editing it.
* [CodeMirror](http://tiddlywiki.com/plugins/tiddlywiki/codemirror/)

## Creation of Wiki for Blog
Create the wiki via

* change directories into blogging and execute `tiddlywiki wiki --init server`.
* Modify `pelicanconf.py` to include

```python
# A list of tuples (Title, URL) for additional menu items to appear
# at the beginning of the main menu.
MENUITEMS = (('About Me', '/pages/about-me.html'),
            ('Wiki', 'http://127.0.0.1:8080/'),
            ('Open Notebook', '/pages/open-notebook.html'),)
```

* `tiddlywiki wiki --server` to start TiddlyWiki server

## Hosting TiddlyWiki
TiddlyWiki recommends some methods for
[hosting your TiddlyWiki on the web](http://tiddlywiki.com/#TiddlyWiki%20in%20the%20Sky%20for%20TiddlyWeb).

GitHub Pages host only static HTML pages.
No server side technology is supported.
So node.js applications won't run on GitHub Pages.
Never the less, I wanted the easy deployment strategy I get with GitHub Pages.

### Hosting TiddlyWiki on Heroku
After establishing a free Heroku account,
you are taken to "[Getting Started with Node.js on Heroku][16]".
This provides an excellent tutorial on how to get a demo Node.js app running.
"[Deploying Node.js Apps on Heroku][19]" does the same for an existing application.
The real secrete in getting it to work was found in the post "[Installing TiddlyWiki5 on Heroku][20]".
Learning from these documents, the installation steps I formulated are the following:

* The first step is for you to install the [Heroku Toolbelt][17].
This provides you access to the Heroku Command Line utility,
as well as Git and Foreman, tools you’ll use in later steps
(files are installed in `~/.heroku`, `/usr/local/heroku`, and `/usr/bin/heroku`.)

* Establish your Heroku Toolbelt account:

```bash
$ heroku login
Enter your Heroku credentials.
Email: jeffskinnerbox@yahoo.com
Password (typing will be hidden):
Authentication successful.
$
```

* Change directory to where you application resides
and initialize things for use with Heroku.
The command `npm init` will walk you through creating a `package.json` file.
You can skip any of the prompts by leaving them blank.

```bash
# move to your Wiki directory
cd ~/blog/wiki

# initialize the application for Heroku
npm init
This utility will walk you through creating a package.json file.
It only covers the most common items, and tries to guess sane defaults.

See `npm help json` for definitive documentation on these fields
and exactly what they do.

Use `npm install <pkg> --save` afterwards to install a package and
save it as a dependency in the package.json file.

Press ^C at any time to quit.
name: (wiki) jeffskinnerbox.wiki
version: (0.0.0) 1.0.0
description: Personal Wiki for the website www.jeffskinnerbox.me
entry point: (index.js)
test command:
git repository:
keywords: heroku tiddlywiki
author: Jeff Irland
license: (BSD-2-Clause) MIT
About to write to /home/jeff/blogging/wiki/package.json:

{
  "name": "jeffskinnerbox.wiki",
  "version": "1.0.0",
  "description": "Personal Wiki for the website www.jeffskinnerbox.me",
  "main": "index.js",
  "scripts": {
    "test": "echo \"Error: no test specified\" && exit 1"
  },
  "keywords": [
    "heroku",
    "tiddlywiki"
  ],
  "author": "Jeff Irland",
  "license": "MIT"
}

Is this ok? (yes) yes
```

* To install dependencies, use `npm install <pkg> --save`.
This will install the package and also add it as a dependency in the `package.json` file.

```bash
# create the dependencies
$ npm install tiddlywiki --save
npm WARN package.json jeffskinnerbox.wiki@1.0.0 No repository field.
npm WARN package.json jeffskinnerbox.wiki@1.0.0 No README data
npm http GET https://registry.npmjs.org/tiddlywiki
npm http 304 https://registry.npmjs.org/tiddlywiki
tiddlywiki@5.1.7 node_modules/tiddlywiki

# list the package.json file to see the results
$ cat package.json
{
  "name": "jeffskinnerbox.wiki",
  "version": "1.0.0",
  "description": "Personal Wiki for the website www.jeffskinnerbox.me",
  "main": "index.js",
  "scripts": {
    "test": "echo \"Error: no test specified\" && exit 1"
  },
  "keywords": [
    "heroku",
    "tiddlywiki"
  ],
  "author": "Jeff Irland",
  "license": "MIT",
  "dependencies": {
    "tiddlywiki": "~5.1.7"
  }
}
```

* Using an editor, specifiy the `package.json` file the version of Node.js
that will be used to run your application on Heroku.
Also
define the `scripts.start` in your `package.json` file.
(If you do so, you don’t need to manually create a `Procfile` because it will be created automatically.)
Using the commandline `cat package.json | python -mjson.tool | pygmentize -l javascript`,
below is the listing:

```json
FINISH FINISH FINISH FINISH
```

* So that the Wiki can run locally via `foreman start`
* in the development enviment, create the `Procfile`:

```bash
# Procfile contains the
$ cat Procfile
FINISH FINISH FINISH FINISH
```

* Using the `npm install` command,
you can install the dependencies that you declared in your `package.json` file.
The use `foreman` to test it out locally using a
browser with the URL ` http://localhost:5000/`.

```bash
# build the app
$ npm install

# run the app locally
$ foreman start
19:39:53 web.1  | started with pid 12484
19:39:55 web.1  | Serving on 127.0.0.1:8080
19:39:55 web.1  | (press ctrl-C to exit)
```

* Create a .gitignore file that looks something like this

```bash
$ cat .gitignore
/node_modules
npm-debug.log
.DS_Store
/*.env
```

* Establish the `git` repository that will be used by this Heroku application,
then add you first commit to the repository,
and make sure exclude any ignore any unnecessary files.

```bash
# initialize the git repoistory
git init

# make your commit
git add .
git commit -m "Initial commitment on December 29, 2014."
```

* Login into Heroku and create the initial instance of the Heroku application.
Also, pick a name for the application and apply it.

```bash
# enter your Heroku credentials
$ heroku login
Enter your Heroku credentials.
Email: jeffskinnerbox@yahoo.com
Password (typing will be hidden):
Authentication successful.

# create the initial instance of the Heroku application
$ heroku create
Creating secure-sea-4842... done, stack is cedar-14
https://secure-sea-4842.herokuapp.com/ | https://git.heroku.com/secure-sea-4842.git
Git remote heroku added

# rename the application
$ heroku apps:rename jeffskinnerbox-wiki
Renaming secure-sea-4842 to jeffskinnerbox-wiki... done
https://jeffskinnerbox-wiki.herokuapp.com/ | https://git.heroku.com/jeffskinnerbox-wiki.git
Git remote heroku updated
```

* Now it's time to deploy the application to Heroku.
Deploy to Heroku follows the standard `git` pattern:

```bash
# deploy to Heroku
$ git push heroku master
Counting objects: 169, done.
Delta compression using up to 4 threads.
Compressing objects: 100% (166/166), done.
Writing objects: 100% (169/169), 15.86 MiB | 2.05 MiB/s, done.
Total 169 (delta 1), reused 0 (delta 0)
remote: Compressing source files... done.
remote: Building source:
remote:
remote: -----> Node.js app detected
remote: -----> Resetting git environment
remote: -----> Requested node range:  0.10.x
remote: -----> Resolved node version: 0.10.33
remote: -----> Downloading and installing node
remote: -----> Exporting config vars to environment
remote: -----> Installing dependencies
remote:        tiddlywiki@5.1.7 node_modules/tiddlywiki
remote: -----> Caching node_modules directory for future builds
remote: -----> Cleaning up node-gyp and npm artifacts
remote: -----> Building runtime environment
remote: -----> Discovering process types
remote:        Procfile declares types -> web
remote:
remote: -----> Compressing... done, 39.8MB
remote: -----> Launching... done, v3
remote:        https://jeffskinnerbox-wiki.herokuapp.com/ deployed to Heroku
remote:
remote: Verifying deploy... done.
To https://git.heroku.com/jeffskinnerbox-wiki.git
 * [new branch]      master -> master
```

* Now check to see if everything is working

```bash
# check that everything is working (at https://jeffskinnerbox-wiki.herokuapp.com/)
heroku open
```

* Now that everything is established an initialized, the updating of the Heroku-based
application follows a simple pattern:

```bash
# make your commit
git add .
git commit -m "<your commitment>"

# enter your Heroku credentials
heroku login

# deploy to Heroku
git push heroku master
```

Unfortunately the only problem with running TW5 on Heroku is that they use what they call an ephemeral filesystem. That is, any time the dyno spins down (usually from being idle) and then spins up, all file system changes will be gone and it will only have what's in the git repo. - https://groups.google.com/forum/#!topic/tiddlywiki/XDFW_tcSbf0

Having only a single web dyno running will result in the dyno going to sleep after one hour of inactivity. This causes a delay of a few seconds for the first request upon waking. Subsequent requests will perform normally. - https://devcenter.heroku.com/articles/getting-started-with-nodejs#scale-the-app
Signup for a free [Pingdom](https://www.pingdom.com/free/) account and have it ping your instance on Heroku. This should help keep your Heroku instance awake and watching the world for you.

* [Avoid Heroku idling with New Relic pings](https://coderwall.com/p/u0x3nw/avoid-heroku-idling-with-new-relic-pings)

### Hosting TiddlyWiki on OpenShift
* [OpenShift](https://www.openshift.com/)
** [Setup a personal TiddlyWiki on OpenShift](http://ericmiao.github.io/blog/2014/04/05/setup-personal-tiddlywiki-on-openshift/)
** [10 Reasons OpenShift is the Best Place for Node.js Apps](https://blog.openshift.com/10-reasons-openshift-is-the-best-place-to-host-your-nodejs-app/)

#####################

To get a list of the Heroku applications you are managing: heroku apps

To delete an application: heroku apps:destroy --app <the-application>

#####################

* [Hosting compatible with Node](https://github.com/joyent/node/wiki/Node-Hosting)
* [Setup a personal TiddlyWiki on OpenShift](http://ericmiao.github.io/blog/2014/04/05/setup-personal-tiddlywiki-on-openshift/)

* [Heroku + Node.js + MongoLab](http://embeddedfun.blogspot.com/2011/11/heroku-nodejs-mongolab.html)
* [Getting Started on Heroku](https://devcenter.heroku.com/start)
* [Introduction to Heroku - YouTube](https://www.youtube.com/watch?v=VuydqVmRvrs)
* [What is Heroku? Explained through Analogy - YouTube](https://www.youtube.com/watch?v=J9dWpxLdeko)

## Learning TiddlyWiki
* [Tiddler Toddler: an absolute beginner's guide to TiddlyWiki](http://tiddlertoddler.tiddlyspot.com/)
* [Get started and organized with TiddlyWiki](https://opensource.com/article/19/2/tiddlywiki)

## Quickly Building a Prototype
This show you a simple way to get your project setup so that you can talk to it and control it via the interwebs.
* [Anatomy of a web application using node.js, ExpressJS, MongoDB & Backbone.js](http://www.amazon.com/gp/product/B00HRME7NA/ref=kinw_myk_ro_title)
* [µCast #16: Pi + Express + Bootstrap + Angular FTW!](http://blog.microcasts.tv/2014/04/14/pi_express_bootstrap_angular/)
* [µCast #17: Control Hardware Remotely With Socket.IO](http://blog.microcasts.tv/2014/06/21/using-socket-io-to-control-the-raspberry-pi-remotely/)



[01]:http://en.wikipedia.org/wiki/Personal_wiki
[02]:http://tiddlywiki.com/
[03]:http://html5test.com/
[04]:https://www.google.com/intl/en/chrome/browser/#brand=CHMB&utm_campaign=en&utm_source=en-ha-na-us-sk&utm_medium=ha
[05]:http://www.w3schools.com/js/
[06]:http://nodejs.org/
[07]:http://en.wikipedia.org/wiki/V8_(JavaScript_engine)
[08]:http://readwrite.com/2013/11/07/what-you-need-to-know-about-nodejs#feed=%2Fhack&awesm=~oD2cgDlOnKEfSp
[09]:http://www.appdynamics.com/blog/nodejs/what-is-node-js-and-why-should-i-care-an-operations-guy-searches-for-answers/
[10]:http://www.nearform.com/nodecrunch/node-js-becoming-go-technology-enterprise/
[11]:http://www.makeuseof.com/tag/what-is-node-js-and-why-should-i-care-web-development/
[12]:http://www.toptal.com/nodejs/why-the-hell-would-i-use-node-js
[13]:http://en.wikipedia.org/wiki/Microblogging
[14]:http://tiddlywiki.com/#Tiddlers
[15]:https://docs.npmjs.com/getting-started/what-is-npm
[16]:https://devcenter.heroku.com/articles/getting-started-with-nodejs#introduction
[17]:https://toolbelt.heroku.com/
[18]:
[19]:https://devcenter.heroku.com/articles/deploying-nodejs
[20]:https://groups.google.com/forum/#!topic/tiddlywiki/XDFW_tcSbf0
[21]:http://blog.htmlfusion.com/tiddlywiki-evernote-with-vim-and-markdown/
[22]:http://tiddlywiki.com/#Plugins
[23]:http://tiddlywiki.com/#Setting%20a%20favicon
[24]:http://tiddlywiki.com/#ImportTiddlers
[25]:http://en.wikipedia.org/wiki/Favicon
[26]:http://tiddlywiki.com/plugins/tiddlywiki/markdown/
[27]:
[28]:
[29]:
[30]:
