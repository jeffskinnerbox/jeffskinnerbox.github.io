Title: IPython Notebook in Virtualenv
Date: 2013-10-06 00:01
Category: Software
Tags: IPython Notebook, Virtualenv
Slug: ipython-notebook-in-virtualenv
Author: Jeff Irland
Image: ipynb_icon_256x256.png
Summary: I need the latest (and still not supported on Ubuntu 13.04) version of IPython so I could create IPython Notebook blog pages.  I explain how to get this up and running.

I discovered a problem with using [nbconvert][16] for posting [IPython Notebooks][05] to my blog.
Basically it doesn't work for my version of IPython, so I looked for an upgrade.
I found it but its only delivered bundled with the latest version of IPython.
Currently, I'm stuck with using IPython 0.13.2 on my Ubuntu system, at least if I use the
distribution provide via Ubuntu.
And I can only expect to have problems if I try mixing an older version of IPython with the latest
version of nbconvert.

I sure Ubuntu will be getting around to supporting the latest version of IPython (i.e. IPython 1.1.0).
in the next few weeks to months, but that doesn't help me now.
I'm hesitant to do a whole sale upgrade of IPython on my system since it my upset other thing I got going on.

The answer to my dilemma will be using the Python Org tool [virtualenv][01] (see [this][12] for full documentation).
This tool will give me a virtual environment that will not disrupt my other projects.
Virtualenv is a tool to create isolated Python environments, quite like [chroot jail][03] on Unix systems.
In a chroot, programs cannot access anything outside of chroot but in virtualenv as the name implies,
it creates isolated environments only with respect to libraries,
but the programs can still access the files and folders normally.
With this, I can support my blog IPython 1.1.0 while also maintaining my other projects which requires IPython 0.13.2.

## Virtualenv Setup and Usage
One might think that you could just install virtualenv and IPython and go
but it turns out that there are a couple other steps needed to make this work.
The steps I outline below were derived from the posts:
[A Primer on virtualenv][06],
[Virtualenv and pip Basic][08], and
[A tutorial on Virtualenv to isolate python installations][07].

### Step 0: Check For Installations
It's wise to check for an existing installations of virtualenv and its companion tools.
It appears possible (but I'm not sure) to install multiple copies if you mix package management tools
like apt-get, pip, and easy_install.  So first perform this check to see if you get any response:

```shell
virtualenv --version
virtualenvwrapper --version
```

[virtualenvwrapper][04] is a set of extensions to virtualenv.
The extensions include wrappers for creating and deleting virtual environments and otherwise managing your development workflow.
Use the virtualenvwrapper script to make working with and changing to/from multiple virtualenvs easy
(see [Virtualenv and pip Basics][13] for examples).

### Step 1: Install Virtualenv and Virtualenvwrapper
I'm installing virtualenv and virtualenvwrapper but will not be using only the later here.
I want the tool installed for potential future use, but for now,
I will only have a single virtual environment that I need to work with.

```shell
sudo pip install virtualenv
sudo pip install virtualenvwrapper
```

### Step 2: Create a Virtualenv
The following command creates a clean virtualenv devoid of any packages in a directory called `_notebook`.

```shell
$ virtualenv --no-site-packages _notebook
New python executable in _notebook/bin/python
Installing Setuptools........................................done.
Installing Pip...............................................done.
```

The way virtualenv works is that it creates the directory `_notebook` symlinks to your global python installation, as you can see clearly using the tree utility.

```shell
$ tree -d _notebook
_notebook
├── bin
├── include
│   └── python2.7 -> /usr/include/python2.7
├── lib
│   └── python2.7
│       ├── distutils
│       ├── encodings -> /usr/lib/python2.7/encodings
│       ├── lib-dynload -> /usr/lib/python2.7/lib-dynload
│       └── site-packages
│           ├── _markerlib
│           ├── pip
│           │   ├── backwardcompat
│           │   ├── commands
│           │   ├── vcs
│           │   └── vendor
│           │       ├── distlib
│           │       │   └── _backport
│           │       └── html5lib
│           │           ├── filters
│           │           ├── serializer
│           │           ├── treebuilders
│           │           ├── treewalkers
│           │           └── trie
│           ├── pip-1.4.1-py2.7.egg-info
│           ├── setuptools
│           │   ├── _backport
│           │   │   └── hashlib
│           │   ├── command
│           │   └── tests
│           └── setuptools-0.9.8-py2.7.egg-info
└── local
    ├── bin -> /home/jeff/myblog/_notebook/bin
    ├── include -> /home/jeff/myblog/_notebook/include
    └── lib -> /home/jeff/myblog/_notebook/lib
```

Note that the `-–no-site-packages` option is for you to isolate your environment from the main site packages directory.
By default, virtualenv will symlink to your system’s site-packages if you install a package in the virtualenv that is already installed on your system.
If you use the `--no-site-packages` option you are starting with a bare Python install and will need to install all the things you have forgotten about since the first time you set your system.
Do you want this virtualenv to use packages from your system site-packages, if not, then  
pass in the `-–no-site-packages` switch when creating your virtualenv.

### Step 3: Use the Environment
So we now have a new virtualenv, it now has to be activated. To do this, change to the virtualenv directory you just created and source the activation script from the bin directory in your virtualenv:

```shell
~/myblog$ cd _notebook
~/myblog/_notebook$ source bin/activate
(_notebook)~/myblog/_notebook$ 
```

Notice that the command prompt is modified after the sourcing.
When you activate a virtualenv, it modifies your current prompt to prepend the name of the virtualenv in parentheses so that you know at a glance you have it active.
Other than the prompt change, the main changes the activate script makes are:

```shell
VIRTUAL_ENV="/home/jeff/myblog/_notebook"
export VIRTUAL_ENV

_OLD_VIRTUAL_PATH="$PATH"
PATH="$VIRTUAL_ENV/bin:$PATH"
export PATH
```

This sets up an environment variable with the virtualenv path and also modifies your path so the bin directory in the virtualenv is first.
This is important since running python from the command line when your virtualenv is active runs it from there instead of your system path.
This means through the magic of the Python site module the site-packages in your virtualenv will be in sys.path and not your system’s site-packages.

### Step 4: Installing Packages in Virtualenv
Now that we are in the virtual envirnment, if you list the installed python packages,
you'll find very little:

```shell
(_notebook)~/myblog/_notebook$ pip freeze
argparse==1.2.1
wsgiref==0.1.2
(_notebook)~/myblog/_notebook$
```

Now you can simply install your desired additional packages using pip.
This does not require `sudo` access, as all the packages are installed in the virtualenv  `_notebook` created.
For my IPython Notebook blogging effort, I require the following packages:

```shell
pip install numpy
pip install matplotlib
pip install pandas
pip install scipy
easy_install yolk
```

To install the basemap for matplotlib, you'll need to [download][11] the source from Matplotlib Org website.
Basemap is an add-on toolkit for matplotlib that lets you plot data on map projections with coastlines, lakes, rivers and political boundaries.

```shell
tar -zxvf basemap-1.0.7.tar.gz
cd basemap-1.0.7
cd geos-3.3.3
export GEOS_DIR="/home/jeff/myblog/_notebook/lib"
./configure --prefix=$GEOS_DIR
make; make install
cd ..
python setup.py install
```

### Step 5: Installing IPython
The final install is IPython version 1.1.0 itself, but there are several dependencies packages that should be installed.
These dependencies should be load automatically, but in case there are problems,
they are [documented on the IPython website][09].
You can download the latest IPython package from the [Python Org website][10].

```shell
unzip ipython-1.1.0.zip 
cd ipython-1.1.0
easy_install ipython[all]
```

You can validate that IPython has been installed by running `ipython notebook`.
I did this by moving my IPython Notebooks that were destine for my blog to a directory called `ipnb` within `_notebook`.
It is with `~/myblog/_notebook/ipnb`.  More on this in another posting.

## Virtualenv Usage
For further usage information, check out the tutorials:
[Virtualenv Tutorial][14],
and [Getting Started with virtualenv and virtualenvwrapper in Python][15].

* Create an environment called "foobar": `virtualenv foobar`.  With this, virtualenv inherits packages from the system's default site-packages directory.  This is especially useful when relying on certain packages being available, so you don't have to go through installing them in every environment.  If you wish to install everything fresh, use `virtualenv --no-site-packages foobar`.
* Activate the environment by sourcing its activate script, which is located in the environment's bin/ directory: `source foobar/bin/activate`.  This will change your $PATH so its first entry is the virtualenv’s bin/ directory.
* To install a package in your virtual environment, make sure the environment is active an then use `pip`, `easy_install` or any of the standard python package management tools. You'll see that executable scripts are placed in foobar/bin/ and eggs in foobar/lib/python2.X/site-packages/.
* Yolk is a small command line tool which can, among other things, list the currently installed Python packages in your environment: `yolk -l`.
* To leave an environment, simply run `deactivate`. (Note: if you run `yolk -l` once deactivated, you'll get no packages listed.)

## Warning Message
For reasons I don't full understand, after installing virtualenv, I repeatedly
got the warning message below:

```
/usr/local/bin/virtualenv:5: UserWarning: Module dap was already imported from None, but /usr/lib/python2.7/dist-packages is being added to sys.path
```

I took the advice given at the posting "[UserWarning: Module Dap Was Already Imported From None][02]" to clear the problem.

[01]:https://pypi.python.org/pypi/virtualenv
[02]:http://jhshi.me/2013/04/13/userwarning-module-dap-was-already-imported-from-none/
[03]:https://help.ubuntu.com/community/BasicChroot
[04]:http://virtualenvwrapper.readthedocs.org/en/latest/
[05]:http://ipython.org/notebook.html
[06]:http://iamzed.com/2009/05/07/a-primer-on-virtualenv/
[07]:http://warpedtimes.wordpress.com/2012/09/23/a-tutorial-on-virtualenv-to-isolate-python-installations/
[08]:http://www.jontourage.com/2011/02/09/virtualenv-pip-basics/
[09]:http://ipython.org/ipython-doc/stable/install/install.html
[10]:https://pypi.python.org/pypi/ipython
[11]:http://matplotlib.org/basemap/users/installing.html
[12]:http://www.virtualenv.org/en/latest/index.html
[13]:http://www.jontourage.com/2011/02/09/virtualenv-pip-basics/
[14]:http://simononsoftware.com/virtualenv-tutorial/
[15]:http://www.silverwareconsulting.com/index.cfm/2012/7/24/Getting-Started-with-virtualenv-and-virtualenvwrapper-in-Python
[16]:http://ipython.org/ipython-doc/rel-1.0.0/interactive/nbconvert.html
