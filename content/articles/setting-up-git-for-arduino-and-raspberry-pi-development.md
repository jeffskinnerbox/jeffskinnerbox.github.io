Title: Setting up Git for Arduino and Raspberry Pi Development
Date: 2012-09-28 00:01
Category: Electronics
Tags: Arduino, Raspberry Pi, Git, GitHub, Cygwin
Slug: setting-up-git-for-arduino-and-raspberry-pi development
Author: Jeff Irland
Image: github-logo.jpg
Summary: This is how I setup the software source code control envirnment for my Arduino and Raspberry Pi work. I'm making use of the distributed version control system Git and it cloud based repository, GitHub.

For my future projects, I plan to do a combination of Arduino and RPi development.  The development of the Arduino code will be on my MS Windows PC and the RPi solution will be developed naively within the RPi Linux environment   Given this distributed environment (and my ability to bungle things), I can foresee  potential problems maintain good source code control.  To deal with this, the combination of <a href="http://git-scm.com/">git</a> and <a href="https://github.com/">gethub</a> seems the right way to proceed .... after all it has worked for the distributed <a href="http://git-scm.com/book/en/Getting-Started-A-Short-History-of-Git">Linux development community</a>.
<h2>Git on MS Windows</h2>
The first thing I did was to set up git within my MS Windows PC.  Given that <a href="http://jeffskinnerbox.wordpress.com/2012/09/09/raspberry-pi-has-arrived/">I installed Cygwin</a> when setting up the RPi, that is where I returned to install git.  Therefore, I plan to use git within the Cygwin environment on my PC and not within MS Windows per say.  <a href="http://git-scm.com/downloads">This could be done</a>, but my approach allows me to learn git commands once since, Cygwin is a Linux-like environment, everything should look and operate the same.

To accomplish this I follow the instructions outline in <a href="http://www.celinio.net/techblog/?p=818">Installing Git on Cygwin</a>.  These instructions are very straight forward.  The challenge was in initializing git for my first project, at least it was a challenge for me since git is new tool for me and Cygwin didn't always cooperate.  I had to address this the old fashion way .... read the documentation and trouble logs (vs. doing a web search for someones web post with instructions).  All the important secrets of git can be found widely dispersed and buried deep withing these web sites: <a href="http://git-scm.com/documentation">Git Documentation</a> and <a href="http://gitref.org/index.html">Git Reference</a>.  Source information from trouble logs will be listed below.

So how did I do it?  It's easy once you successively done it once.  First let me state the context; for the exercise I'm doing, I'm attempting to place my <code>.bashrc, .profile, .vimrc</code>, and a few other configuration files under gits control.  The basic sequence of operation is to initialize the git environment, configure some parameters, and then add the files.  It goes like this (I'll let you research the git documentation, just like I did, to understand the command.  Trust me, this is good for you!):
<p style="padding-left:30px;">

```shell
git init
git config --global user.name "jeffskinnerbox"
git config --global user.email jeff.irland@verizon.net
git config --global core.editor vim
git config --global merge.tool vimdiff
git add .bashrc .profile .vimrc .bash_profile .minttyrc .inputrc .gitconfig .gitignore
```

To see what you got, use the <code>git status</code> command.  This will tell you the files got staged but not committed. The commit will come later.  First we need to set up our communal repository within <a href="https://github.com/">github</a>.
<h2>Setting Up GitHub</h2>
You may be asking,<a href="http://techcrunch.com/2012/07/14/what-exactly-is-github-anyway/"> What Exactly Is GitHub Anyway?</a>  Well, in a few words, github is a web-based hosting service for software development projects that use git. The next step is to go to <a href="https://github.com/">github</a>, set up your free login, and then set up a repository.  In my case, I set up a github repository called <a href="https://github.com/jeffskinnerbox/Cygwin-Configuration-Files">Cygwin-Configuration-Files</a> to store my configuration files established earlier under git control.  It will be empty at this point, and that's all for now, loading it with files comes later.

I didn't say much about how to set up github, but trust me, it is as simple as outlined above.  It's via git that all the real work takes place.  GitHub is all about giving you an off-site, web-access-able, complete version controlled historical record of your code that can be shared with others.
<h2>Back to Git within Cygwin</h2>
Now that we have established github and initialized, configured, and added files to the Cygwin environment  we can associated the PC and github environments.  It wasn't clear to me, from the git documentation, how to best do this association.  Using  <code>git clone</code> isn't intuitive to me, but it seems to work.  This is how I did it:

```shell
git clone https://github.com/jeffskinnerbox/Cygwin-Configuration-Files.git
```

<em><span style="text-decoration:underline;">Warning</span> ...</em> You may, as I did, get the following error:

```
Cloning into 'Cygwin-Configuration-Files'...
error: error setting certificate verify locations:
CAfile: /usr/ssl/certs/ca-bundle.crt
CApath: none while accessing https://github.com/jeffskinnerbox/Cygwin-Configuration-Files.git/info/refs
fatal: HTTP request failed
```

If you get the above error, <a href="http://codeforthesoul.blogspot.com/2012/09/git-error-about-missing-certificates-on.html">the problem</a> is that Cygwin hasn't installed the ca-certificates package.  Run the <a href="http://www.cygwin.com/install.html">Cygwin installer</a> again, and add that package; after that <code>git clone</code> should start working.

The next step is to commit your files to the git local repository within the PC under Cygwin.  To do this, execute the following command:

```
git commit
```

You will be put into vim to provide a comment that will be posted with the git version.  Why vim?  Because you executed the command <code>git config --global core.editor vim</code>  earlier.  If you don't want to use vim for adding comments under git, supply another editor when you do the configuration step.

The next step, which strictly isn't required but a nice to have, is to associate a descriptive identifier with the github repository.  The descriptor I used is "Cygwin-Configuration-Files".  The command I used is:

```shell
git remote add Cygwin-Configuration-Files https://github.com/jeffskinnerbox/Cygwin-Configuration-Files.git
```

The final step is to push your local files to the github repository,

```
git push Cygwin-Configuration-Files
```

<em>Warning ... </em> It was during the <code>git push</code> that I ran into another problem, but it could happen nearly any time.  I discovered that sometimes, after multiple Cygwin updating or installing packages, you'll start to get strange errors related to "fork()" or .dll loading. After some research, I discoved these errors are usually solved by <a href="http://cygwin.wikia.com/wiki/Rebaseall">rebasing your packages</a>.  While rebasing, which is executed using the Cygwin <code>rebaseall</code> command, is is a bit of a mystery, it does appear to work
<h2>Rebasing Cygwin</h2>
Before you can run the <code><a href="http://inamidst.com/eph/cygwin">rebaseall</a></code> command, you'll need to make sure no Cygwin-based services are running.   To do this, you need to run two cygwin command, <a href="http://cygwin.com/faq/faq.setup.html#faq.setup.uninstall-service">cygrunsrc</a> and <a href="http://superuser.com/questions/194529/cygwin-fatal-error-unable-to-remap-what-does-it-mean">rebaseall</a>,  under the ash command in MS Windows command prompt, not in a Cygwin Terminal window.   The sequence of activity is as follows:
<ol>
<ol>
	<li>Exit the Cygwin Terminal</li>
	<li>Run as administrator the MS Windows Command Prompt window</li>
	<li>Execute ash via <code>\cygwin\bin\ash.exe</code></li>
	<li>Now under ash, see if any Cygwin processes are running via <code>/usr/bin/cygrunsrc -L</code></li>
	<li>Stop any of the  running processes via <code>/usr/bin/cygrunsrc --stop &lt;process's&gt;</code></li>
	<li>Now do the rebase via <code>/usr/bin/rebaseall</code></li>
</ol>
</ol>
For an example the steps above performed within the Command Prompt under ash, see below:

<center>
<a href="http://jeffskinnerbox.files.wordpress.com/2012/09/capture.jpg"><img title="Window Capture of ash, cygrunsrv, rebaseall" alt="window capture" src="/images/ash-run-capture.jpg" width="545" height="275" /></a>
</center>
<h2>Git on the Raspberry Pi</h2>
Admittedly, getting git setup under MS Windows / Cygwin isn't a walk in the park.  It appears to work fine once set up, but the setup process can be painful.

Git under the Raspberry Pi's Linux installs flawlessly, as you would expect, given git origins.  First you  install git via <code>sudo apt-get install git</code>.  Then, just as was done above, do the initialization of the git environment, configure some parameters,  add the files, setup the github, clone, and push.

In my case, I setup a separate  a github repository called <code><a href="https://github.com/jeffskinnerbox/RPI-Configuration-Files">RPI-Configuration-Files</a></code> to store my RPi configuration files.  I could have used the same repository as was setup for the PC environment but that didn't make sense for my present needs.
<h2>Conclusion</h2>
So that's it!  Its a long post for what is really a simple to use tool, but setting it up the first time could be a challenge.
