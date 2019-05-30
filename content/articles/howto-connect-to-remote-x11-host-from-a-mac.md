Title: HowTo: Connecting to Remote X11 Host from a Mac
Date: 2016-01-29 19:55
Category: Software
Tags: How To, Mac, Vim, MacVim, XQuartz, X Window System
Slug: howto-connecting-to-remote-x11-host-from-a-mac
Author: Jeff Irland
Image: how-to.jpg
Summary: I want to log into my home Linux box from my work laptop, which is a Mac.  I also what to use all the tools I  have grown comfortable, particularly vi/vim/gvim while on my home system.  This requires X11 to work on the Mac.  Here I show you how this is done on the Mac using XQuartz, Apple's version of the X server.

<a href="http://www.xquartz.org/index.html">
    <img class="img-rounded" style="margin: 0px 8px; float: left" title="The XQuartz project is an open-source effort to develop a version of the X.Org X Window System that runs on OS X." alt="XQuartz Logo" src="{filename}/images/xquartz-logo.jpg" width="90" height="90" />
</a>
I want to [run a remote X client][04] on my Linux desktop (with Ubuntu and X Window System)
and display that client application my Apple MacBook Pro laptop running
OS X Yosemite (version 10.10.5).
I was hoping that, since Mac originated from parts of the Linux / X Window world,
I could simply run `ssh -X user@server`,
but this doesn't do the trick.

## Installation of XQuartz
After multiple attempts to get things working,
I [discovered][03] that to use ssh with X11 Forwarding,
you need to install XQuartz[^A] on OS X v10.8 or above.
The [XQuartz project][01] is an open-source effort to develop
a version of the [X.Org][05] X Window System that runs on OS X.
This is Apple's version of the X server.
You need to download and install the server before using ssh with X11 forwarding.
Just follow the instructions given [here][03].

[^A]: On your Mac, check out this directory `/Applications/Utilities/` and you will find the file `X11.app`.
It will give give you some instructions on how to support X11.
The latest version of Apple OS X no longer ships with X11.app, i.e. XQuartz server.

Once the install is completed,
clicking on the XQuartz logo gives you a XTerm.
Within the XTerm,
you can run an application on the remote system using the following commands:

```bash
# execute a XTerm on the remove system and display on you local Mac
ssh -X -C user@server-ip

# execute an app on the remote system, go to background, and display on your local Mac
ssh -f -X -C user@server-ip /path/to/app-name
```

Where,

* **user@server-ip**: remote login username and password
* **-f**: Requests ssh to go to background just before command execution. This is useful if ssh is going to ask for passwords or passphrases, but the user wants it in the background. This is the recommended way to start X11 programs at a remote site/host.
* **-X**: Enables X11 forwarding.
* **-C**: Requests compression of all data (including stdin, stdout, stderr, and data for forwarded X11 and TCP connections).
* **-c cipher**: Selects the cipher specification for encrypting the session.
* **-T**: Disable pseudo-tty allocation.

Use compression, **-C**,
if you think that programs are running slowly because of a lack of bandwidth or network congestion.

## .Xresources or .Xdefaults?
Many X programs have user-level configuration options that can be set in the [X server resource database][06].
Depending on your version of X.Org,
the most common ways to achieve persistent configuration for your X programs are to store them in either
the `.Xresources` or `.Xdefaults` files which are read when X starts or when the X client starts, respectively.
Both are user configurable dotfiles located in `$HOME` used to set X resources.
These are configuration parameters for X client applications, such as:

* defining terminal colours
* configuring terminal preferences
* setting dots-per-inch (DPI), anti-aliasing, hinting and other X font settings
* changing the Xcursor theme
* theming xscreensaver
* altering preferences on low-level X applications (e.g. xclock, xeyes)

Consider the X program `xterm`.
You want to make the background black and the foreground white.
This can be achieved by passing some command line arguments to xterm:

```bash
# xterm with background black and foreground white
xterm -bg black -fg white
```

This is fine if you want this for only one time,
but if you want it to be the default, you put it in a configuration file
`.Xresources` or `.Xdefaults` as follows:

```bash
XTerm*background: black
XTerm*foreground: white
```

The difference between these two files are the following:

* `.Xdefaults` is the older method of storing X resources.
This file is re-read every time an Xlib program is started.
If X11 is used over the network, the file must be present on the same filesystem as the programs.
* `.Xresources` is newer. It is loaded with [`xrdb`][09] into the [resource manager][07]
property of the X11 root window.
Whenever any program looks up a resource, it is read straight from resource manager.

If `.Xresources` does not exist,
Xlib falls back to the old method of reading `.Xdefaults` on every program startup.
Note that most distributions will load `.Xresources` automatically if it is present,
causing `.Xdefaults` to be ignored even if you have never run `xrdb` manually.

The advantage of the new method is that it's enough to call `xrdb` once,
and the resources will be available to any program running on this display,
whether local or remote.
Use of `.Xdefaults` comes at the cost that basically
all X programs needs to parse this file every time you run one.
A better way is to put the configuration options in `.Xresources`
and store the configuration in the X server’s resource database by using the `xrdb` command:

```bash
# intialize user configurable resources using the X server resource database utility, xrdb
xrdb -merge $HOME/.Xresources
```

This execution of `xrdb` is done automatically when you login on most Linux distributions.
Also, the name `.Xresources` is only a convention –
you can use `xrdb` to load any file, even `.Xdefaults`.

## Short Digression Concerning gVim and MacVim
`vi` / `vim` / `gvim` has long been my standard text editor on Linux.
Assuming you have the editors configured properly on the remote system,
and you're using Xterm to login in,
you should have no difficulty using it with XQuartz.

This easy of use made me ponder why I could never get `gvim`
to work properly with my `.vimrc` resource file on my Mac,
even when working within the XQuartz XTerm.
A small amount of research taught me that `gvim` requires
X.Org and I must use [MacVim][08] instead.
If you’re on a Mac, you just have to use `MacVim` as the `gvim` alternative,
there seems to be no way out of it.
It’s basically like `gvim`, except for Mac OS.

To help get MacVim working, use the following articles:

* [Getting MacVim to run properly on Yosemite](http://awebfactory.com/node/541)
* [Gvim or MacVim in Mac OS X](http://stackoverflow.com/questions/21012203/gvim-or-macvim-in-mac-os-x)
* [Running MacVim in your terminal](http://effectif.com/vim/running-vim-with-ruby-support-in-terminal)
* [gvim cmdline OSX](http://renesd.blogspot.com/2009/08/gvim-cmdline-osx-macvim-from-terminal.html)



[01]:http://www.xquartz.org/
[02]:http://docstore.mik.ua/orelly/networking_2ndEd/ssh/ch09_03.htm
[03]:http://www.cyberciti.biz/faq/apple-osx-mountain-lion-mavericks-install-xquartz-server/
[04]:http://docstore.mik.ua/orelly/unix3/upt/ch06_10.htm
[05]:http://www.x.org/wiki/
[06]:https://en.wikipedia.org/wiki/X_resources
[07]:https://tronche.com/gui/x/xlib/resource-manager/
[08]:http://macvim-dev.github.io/macvim/
[09]:http://docstore.mik.ua/orelly/unix3/upt/ch06_08.htm
