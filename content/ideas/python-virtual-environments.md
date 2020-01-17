

The environment variable `PYTHONPATH` sets the search path for importing python modules,
not for executing them like you're trying.
http://docs.python.org/2/using/cmdline.html#envvar-PYTHONPATH


* [Configuring Python Environment With Virtualenvwrapper](https://medium.com/the-andela-way/configuring-python-environment-with-virtualenvwrapper-8745c2895745)
* [Virtualenv with Virtualenvwrapper on Ubuntu](https://medium.com/@aaditya.chhabra/virtualenv-with-virtualenvwrapper-on-ubuntu-34850ab9e765)
* [Virtualenv with Virtualenvwrapper on Ubuntu 18.04](https://itnext.io/virtualenv-with-virtualenvwrapper-on-ubuntu-18-04-goran-aviani-d7b712d906d5)

* [Why you should use pyenv + Pipenv for your Python projects](https://hackernoon.com/reaching-python-development-nirvana-bb5692adf30c)
* [Why Python devs should use Pipenv](https://opensource.com/article/18/2/why-python-devs-should-use-pipenv?utm_medium=Email&utm_campaign=weekly&sc_cid=701f2000000tyL5AAI)
* [Pipenv & Virtual Environments](http://docs.python-guide.org/en/latest/dev/virtualenvs/)


* [USING PYENV WITH VIRTUALENV AND PIP CHEAT SHEET](https://fijiaaron.wordpress.com/2015/06/18/using-pyenv-with-virtualenv-and-pip-cheat-sheet/)
* [pyenv Tutorial](https://amaral.northwestern.edu/resources/guides/pyenv-tutorial)
* [Python Virtual Environments - a Primer](https://realpython.com/blog/python/python-virtual-environments-a-primer/)
* [What is the relationship between virtualenv and pyenv?](http://stackoverflow.com/questions/29950300/what-is-the-relationship-between-virtualenv-and-pyenv)
* [Managing Multiple Python Versions with pyenv](http://akbaribrahim.com/managing-multiple-python-versions-with-pyenv/)
* Python Working Environment for Beginners: [Part 1](https://www.thoughtworks.com/insights/blog/python-working-environment-beginners-part-1)
[Part 2](https://www.thoughtworks.com/insights/blog/python-working-environment-beginners-part-2)
* [Working with Python's 3rd Party Libraries the Right Way](https://ewilazarus.github.io/working-with-pythons-3rd-party-libraries-the-right-way.html)
* [Using a virtual environment with Python 3.4](https://robinwinslow.uk/2013/12/26/python-3-4-virtual-environment/)




# The NEW Python Virtual Environments - venv
venv - a built-in API module for creating "virtual environments". Added since Python 3.3.
pyvenv - a built-in command line tool for creating “virtual environments”. It helps separate packages dependence between projects. Ships with Python from 3.4.

* [pyvenv vs venv vs python-virtualenv vs virtualenv and python 3](http://askubuntu.com/questions/603935/pyvenv-vs-venv-vs-python-virtualenv-vs-virtualenv-and-python-3)
* [Python Virtual Environments: A Primer](https://realpython.com/python-virtual-environments-a-primer/)





################################################################################

https://leemendelowitz.github.io/blog/how-does-python-find-packages.html

# How Does Python import Know Where to Find Packages?
Python imports work by searching the directories listed in sys.path

```bash
$ python
Python 2.7.14 (default, Sep 23 2017, 22:06:14)
[GCC 7.2.0] on linux2
Type "help", "copyright", "credits" or "license" for more information.
>>> import sys
>>> print '\n'.join(sys.path)

/home/jeff/.local/bin
/opt/movidius/caffe/python
/usr/lib/python2.7
/usr/lib/python2.7/plat-x86_64-linux-gnu
/usr/lib/python2.7/lib-tk
/usr/lib/python2.7/lib-old
/usr/lib/python2.7/lib-dynload
/home/jeff/.local/lib/python2.7/site-packages
/usr/local/lib/python2.7/dist-packages
/usr/local/lib/python2.7/dist-packages/ecdsa-0.13-py2.7.egg
/usr/local/lib/python2.7/dist-packages/pyaes-1.6.0-py2.7.egg
/usr/local/lib/python2.7/dist-packages/ts_dweepy-0.3.0-py2.7.egg
/usr/lib/python2.7/dist-packages
>>>
```

sys.path is populated using the current working directory, followed by directories listed in your PYTHONPATH environment variable, followed by installation-dependent default paths, which are controlled by the site module.

################################################################################


# Managing Python Packages the Right Way
* [Managing Python packages the right way](https://opensource.com/article/19/4/managing-python-packages)
* [Python Virtual Environments: A Primer](https://realpython.com/python-virtual-environments-a-primer/)


Although Python applications can be made of a single file,
usually they consist of a series of functions, objects (classes), handy tools and of course,
variables spread across multiple file(s), placed inside modules.
These modules together make up what is referred as a package.

A Virtual Environment, oftern refered to as virtualenv,
is an isolated working copy of Python which allows you to work on a specific project
without worry of affecting other projects.
It enables multiple side-by-side installations of Python, one for each project.
It doesn’t actually install separate copies of Python, but it does provide a
clever way to keep different project environments isolated.

When you’re beginning,
it’s pretty easy to setup your Python environment on Linux.
But in time, things can get messy due to multiple versions, interpreters, utilities and projects.
The traditional way of installing a package involves first spotting it and then downloading.
It sounds simple and feels right since its like many things in Python,
but this can lead to problems down the road.
Packages can conflict with each other and be dependent on specific version of Python interpreters.

**The Goal** - Create isolated development environments that target different python interpreters and require different dependencies.

**The Problem** - When using python to develop a project, it is very easy to accidentally install packages that can be found by your system python. This is a problem because it makes it difficult to isolate dependencies on a per project basis. A better approach is to create isolated environments in which dependencies can be installed.

**The Solution** - Virtual environments (and a few other tools) can rescue us from this situation.
From the [official documents][05]:
"A virtual environment (also called a venv) is a Python environment such that the Python interpreter, libraries and scripts installed into it are isolated from those installed in other virtual environments, and (by default) any libraries installed in a “system” Python, i.e. one which is installed as part of your operating system."

I have a few needs and restrictions:

1. I need Python 2.7 and 3.6, but I want to be able to install other interpreters like PyPy and Anaconda.
1. Python3 must be the default for everything, but easily step back when I need Python2.
1. I want one Jupyter Notebook that works both with Python2 and Python3,
and both are able to detect the active `virtualenv` at jupyter notebook execution time.
1 I want one iPython Console for Python3 and one iPython Console for Python2,
so no need to install iPython on my projects’ virtualenvs.
1. I want useful programs written in Python (ex: `youtube-dl`) globally available on my system
without contaminating the global interpreters and avoiding any library version issues.
1. I want to use virtualenvwrapper to develop my projects allowing me to change context/project quickly with one command.
1. I want this setup to be maintainable without adding too many thing to PATH.

My objective here is to show how the combination of `pip`, `pyenv`,
and `pyenv-virtualenv` with `pyenv-virtualenvwrapper` makes for a very simple,
straightforward process to manage Python environments:

* Install Python versions with `pyenv`.
[pyenv][03] is a 3rd party tool for switching between multiple versions of Python
(e.g. change the global Python version between Python 2 and 3).
Pyenv manages the installation and removal of python interpreters.
Instead of needing to manually manipulate your \$PATH to switch to a different interpreter,
pyenv allows you to specify which python you would like to use.
* Install Python packages with `pip`.
* Set up virtual environments with `pyenv-virtualenv`.
[pyenv-virtualenv][04] allows you to create a virtual environment that will use a specific interpreter.
[virtualenv][01] is a tool that creates isolated python environments.
When using a virtualenv, `pip` installs dependencies into a location that is only visible to the virtualenv.
Virtualenv allows you to test out different versions of libraries without worring
about accidentally upgrading a dependency that would affect another project.
With python 2, one needed to install the virtualenv application to be able to use it,
in python3 it is baked in to the standard installation.

If you stick to those basic rules, Python shouldn’t be any trouble.

## What is an Environment
In the world of Python, an environment is a folder (directory) which contains everything that a Python project (application) needs in order to run in an organised, isolated fashion. When it is initiated, it automatically comes with its own Python interpreter - a copy of the one used to create it - alongside its very own pip.

## Virtual Environments
Python has its own way of downloading, storing, and resolving packages (or modules).
Python makes decisions made about package storage and resolution,
which can lead to some problems on which packages are are pulled into your code.

At its core, the main purpose of Python virtual environments
is to create an isolated environment for Python projects.
This means that each project can have its own dependencies,
regardless of what dependencies every other project has.

Using the `virtualenv` tool consists of getting it to create a folder,
containing the Python interpreter and a copy of pip.
Afterwards, in order to work with it, we need to either specify the location of that interpreter
or us its `activate` command.

## Virtualenv and Shebang
It is important to use [shebang][23] `#!/usr/bin/env python` within Python executable scripts.
It runs `env`, which will look for the default python for that environment.
Therefore, your script will use the right path to you Python modules
and **not** `$PYTHONPATH` set for you login.

* [How to activate a Python virtual environment from a script file](https://www.a2hosting.com/kb/developer-corner/python/activating-a-python-virtual-environment-from-a-script-file)

################################################################################

To install
`sudo apt-get install python-virtualenv python3-virtualenv virtualenv`

To make use of system installed Python packages,
create the environment with virtualenv --system-site-packages.
`virtualenv --system-site-packages <target directory>`

Then, activate the virtualenv. When you install packages, use pip install --ignore-installed.
That way pip will install what you've requested locally even though a system-wide version exists.
`pip install --ignore-installed <package>`

################################################################################

## Leave Your Native Python Alone
Linux has many Python programs as part of it suite of tools.
I like them to be available in all sessions without activate any virtualenv.
And I don't want to mess with the global Python installation to avoid library conflict issues.
Another thing that I don’t like is installing big packages like
Jupyter/iPython, OpenCV, etc. on each of my projects’ virtualenvs.

# Python 2 or 3?
When choosing a Python interpreter,
the first question is: “Should I choose Python 2 or Python 3”?

1. Most production applications today use Python 2.7,
but will [only receive necessary security updates until 2020][08].
1. Python 3 is ready for the production deployment of applications today,
and it encapsulates both Python 3 and Python 2.

So use Python 3 for new Python applications,
but familiarizing yourself with Python 2.7
and make sure your application can run under Python 2.7 if you can.
It is possible to [write code that works on Python 2.6, 2.7, and Python 3][09].

But you will find differences between the build envirnemtns between Python 2 and 3.
bla bla bla bla

# Installing Different Python Versions
If you write Python code that should be running on different Python versions,
you have to install multiple Python versions on your workstation.
Your typically Linux (e.g. Ubuntu) only supports one python 2.x version
and one 3.x version at a time.
There’s a popular [PPA called "deadsnakes"][11] that contains older versions of Python.
You could [install it][12] via the commands below:

```bash
# install the deadsnakes ppa
sudo add-apt-repository ppa:deadsnakes/ppa
sudo apt-get update

# to remove this package, you can use the following
sudo add-apt-repository --remove ppa:deadsnakes/ppa
```

But for me, this **DID NOT WORK** became of my [Ubuntu version][13].
In any event, I found a better alternative in `pyenv` combined with `virtualenv` and `pip`.
[This Python development toolchain][14] can save you from many of the versioning headaches
you can create for yourself when dealing with multiple projects.

## Managing Multiple Python Interpreters
[pyenv][03] lets you easily switch between multiple versions of Python.
Pyenv manages the installation and removal of python interpreters.
Instead of needing to manually manipulate your `$PATH` to switch to a different interpreter,
`pyenv` allows you to specify which python you would like to use.
[`pyenv` GitHub README.md file][03] provides a good documentation on how it operates.

`pyenv` lets you specify which Python version to use globally (`pyenv global <name>`)
and which version to use in a given directory structure (`pyenv local <name>`).
So if you prefer to use Python 3 in general,
but need to use Python 2 on one project,
you can just navigate to the root of that project and set it:

### Step 1: Installing pyenv - DONE
Installing `pyenv` is easy via [its installer][15].
It will create a directory in your `$HOME` called `.pyenv`
and your need to update your `.bashrc` or `.bash_profile`
files so you can find the executables and required files.

```bash
# execute the pyenv installer
curl -L https://raw.githubusercontent.com/pyenv/pyenv-installer/master/bin/pyenv-installer | bash

# update your profile / bashrc with this
export PATH="/home/jeff/.pyenv/bin:$PATH" >> $HOME/.bashrc
eval "$(pyenv init -)" >> $HOME/.bashrc
eval "$(pyenv virtualenv-init -)" >> $HOME/.bashrc
```

To update `pyenv` to the latest version:

```bash
# update your pyenv tool to the latest version
pyenv update

# your cuurently running version
pyenv --version
```

The installation will create a directory structure within `$HOME/.pyenv`.
It is hear where the multiple versions of Python will be installed,
but `$HOME/.pyenv/versions` is currently empty.

>**NOTE:** To uninstall `pyenv`, see "[Uninstalling pyenv][21]" section of the README.md file

### Step 2: Install Python Verisons for pyenv to Manage - DONE
So far, we haven't loaded any Python versions for `pyenv` to manage.
To show this, you can run `pyenv which <command>` or `pyenv version`:

```bash
# system installed python currently being used
$ pyenv which python3
/usr/bin/python3

$ pyenv version
system (set by /home/jeff/.pyenv/version)
```

Usually you will only have one version of python installed, the system-wide version.
That’s what’s shown in the above command.
`pyenv` now allows you to expand upon this version.
Now let's install the first Python version for `pyenv` to manage.
This is the latest version of Python 3 and 2 (at the time of writing this document).

```bash
# install python 3.6.4
$ pyenv install 3.6.4
Downloading Python-3.6.4.tar.xz...
-> https://www.python.org/ftp/python/3.6.4/Python-3.6.4.tar.xz
Installing Python-3.6.4...
Installed Python-3.6.4 to /home/jeff/.pyenv/versions/3.6.4

# install python 2.7.9
pyenv install 2.7.9

# assure the pyenv shims are updated
pyenv rehash

# check what was done in $HOME/.pyenv
$ ls $HOME/.pyenv/versions/
2.7.9  3.6.4
```

no need to memorize whats installed or to do a directory listing.
`pyenv versions` will show all available Python versions to install:

```bash
# list the version of python installed
$ pyenv versions
  system
  2.7.9
* 3.6.4 (set by /home/jeff/.pyenv/version)
```

### Step 3: Using pyenv to Manage Python Versions - DONE
`pyenv` lets you specify which Python version to use globally (pyenv global <version no.>)
and which version to use in a given directory structure (pyenv local <version no.>).
So if you prefer to use Python 3 in general,
but need to use Python 2 on one project, you can just navigate to the root of that project and set it:

```bash
# list all Python versions available to pyenv
$ pyenv versions
  system
  2.7.9
* 3.5.4 (set by /home/jeff/.pyenv/version)
  3.6.4

# use python 3.6.4 globally
$ pyenv global 3.6.4

# check python version beiing used
$ python --version
Python 3.6.4

# but use python 2.7.9 when in test-dir directory
mkdir $HOME/tmp/test-dir
cd $HOME/tmp/test-dir

$ python --version
Python 3.6.4

pyenv local 2.7.9

$ python --version
Python 2.7.9

# pyenv create a hidden file with the required version of python
$ cat .python-version
2.7.9
```

If you wish, you can go back to using the system version of Python via `pyenv global system`.

`pyenv local <version>` will create a simple plain text file, `.python-version`,
whose contents will be just 2.7.9.
For everything under `$HOME/tmp/test-dir`, typing `python` will launch Python 2.7.9,
while typing it outside that folder will launch Python 3.4.3.
(If you want, you can just create the `.python-version`
file yourself manually and give it the name of a version.)
You learn more on how `pyenv` works [here][10].

### Step 4: pyenv Commands - DONE
The basic, most used commands supported by `pyenv` can be listed via:

```bash
# list the pyenv commands
$ pyenv --help
Usage: pyenv <command> [<args>]

Some useful pyenv commands are:
   commands    List all available pyenv commands
   local       Set or show the local application-specific Python version
   global      Set or show the global Python version
   shell       Set or show the shell-specific Python version
   install     Install a Python version using python-build
   uninstall   Uninstall a specific Python version
   rehash      Rehash pyenv shims (run this after installing executables)
   version     Show the current Python version and its origin
   versions    List all Python versions available to pyenv
   which       Display the full path to an executable
   whence      List all Python versions that contain the given executable

See `pyenv help <command>' for information on a specific command.
For full documentation, see: https://github.com/pyenv/pyenv#readme
```

You can see additional documetnation concerning these commands on [`pyenv` GitHub][20].

The full list of `pyenv` commands is below.
Use `pyenv help <command>` or `pyenv <command> --help` for information on a specific command.

```bash
# full list of pyenv commands
$ pyenv commands
activate
commands
completions
deactivate
doctor
exec
global
help
hooks
init
install
installer
local
offline-installer
prefix
rehash
root
shell
shims
uninstall
update
version
--version
version-file
version-file-read
version-file-write
version-name
version-origin
versions
virtualenv
virtualenv-delete
virtualenv-init
virtualenv-prefix
virtualenvs
whence
which
```

### Step 5: Using pyenv-virtualenv With pyenv
You have used `virtualenv`,
the idea of a local Python might seem familiar.
Indeed, a local Python created from `pyenv` is almost like a Python virtual environment.
The main difference is that `pyenv` actually copies an entire Python installation
every time you create a new `pyenv` version.
In contrast, `virtualenv` makes use of symbolic links to decrease the size of the virtualenv’s.
So you can use your virtual environments paradigm,
there is a plugin for that: `pyenv-virtualenv`.
This plugin adds complete `virtualenv` functionality to `pyenv`.

If you used the [`pyenv` installer][15] and followed its configuration steps,
as outline in the earlier section,
`pyenv-virturalenv` will have already been installed for you and properly configured.
`pyenv-virtualenv` is a `pyenv` plugin that provides features to manage
virtualenvs and conda environments for Python on UNIX-like systems.
The [`README.md` outlined at `pyenv-virtualenv` GitHub][19] provide additional details.



[virtualenvwrapper][02]

* [Setting up virtualenvwrapper with pyenv using pyenv-virtualenvwrapper](https://blog.shichao.io/2014/10/01/setup_virtualenvwrapper_with_pyenv_using_pyenv_virtualenvwrapper.html)
* [Easy Twisted Development With Virtualenv And Pyenv](https://derwolfe.net/2014/10/19/twisted-pyenv-virtualenv/)

## Python Package Management
There are four basic approaches to managing Python packages:

* installing them manually
* using a system-level package manager like `homebrew`, `yum`, or `aptitude`
* using `easy_install`
* using `pip`

The vast majority of the time, the right choice is using `pip`
(See "[Why use pip over easy_install?][06]").

## Installing and Managing Packages With pip
You should use `pip` and not `easy_install`.
This is because `pip`

* Packages are downloaded before installation.
Partially-completed installation doesn’t occur as a result.
* Care is taken to present useful output on the console.
the reasons for actions are kept track of.
* If a package is being installed, pip keeps track of why that
package was required.
* Error messages should be useful.

Generally, `pip` is pre-installed for Python 3.4 or later,
but see [here][18] to install it manually.

```bash
# installing a package globally for all users
sudo pip install <package>

# installing a package only local user
pip install --user <package>

# install version 2.0.0. of requests
pip install requests==2.0.0

# upgrade a package
pip install -upgrade <package>

# remove a package
pip uninstall <package>

# install using a url: pip install [url]
# install virtualenv
pip install https://github.com/pypa/virtualenv/tarball/1.9.X

# install from inside an environment, or create one
# Example: pip install [env name] [package name]
# install requests inside a virtualenv called *venv*
pip install -E venv requests

# list all the packages you have installed globally or for this user
pip list
pip list --user

# show what files were installed
pip show --files <package>

# search PyPi for package
$ pip search esptool pywhereis
esptool (2.2)    - A serial utility to communicate & flash code to Espressif ESP8266 & ESP32
                   chips.
pywhereis (0.3)  - Unix whereis-like python script and package to find the source file of
                   python object (package, module, function, class ...).
```

* The `--upgrade` option tells `pip` to upgrade a package if already installed.
* The `--user` option tells `pip` to install the program to a subdirectory
of your user directory (`~/.local`) to avoid modifying libraries used by your operating system.

### Creating a List of Installed Packages
Depending on your Python environment
(whether it be a virtual or a global one),
`pip` can create a file listing of all the packages installed,
sometimes called a "freeze" or "requirements".
This can be used to re-create the Python packages on another installation.

```bash
# what version of python
cd $HOME
$ python --version
Python 3.6.4

# list packages installed
$ pip list
Package        Version
-------------- ---------
bleach         1.5.0
blinker        1.4
enum34         1.1.6
html5lib       0.9999999
Markdown       2.6.10
numpy          1.13.3
pip            9.0.1
pip-autoremove 0.9.0
protobuf       3.5.1
setuptools     38.2.5
six            1.11.0
utils          0.9.0
Werkzeug       0.13
wheel          0.30.0

# pip freese list
$ pip freeze
bleach==1.5.0
blinker==1.4
enum34==1.1.6
html5lib==0.9999999
Markdown==2.6.10
numpy==1.13.3
pip-autoremove==0.9.0
protobuf==3.5.1
six==1.11.0
utils==0.9.0
Werkzeug==0.13
```

Now installing all packages from "freeze" list

```bash
# create the package list
pip freeze > requirements.txt

# go to the new install site and install the packages
pip install -r requirements.txt
```

### Configuration File
`pip` allows you to [set all command line option defaults][16]
in the `$HOME/.pip/pip.conf` filew using [INI file format][17].
My `pip.conf` file looks like this:

```
; output format will be in columns in future, this enforces it now
[list]
format = columns
```

## Manually Installing Packages
In some cases, `pip` isn't used to install packages,
such as when you install software from source.
My installation of OpenCV is one good example
(see README.md file for /home/jeff/src/rpi-loader).
This build creates a Python [shared library (`.so` extension)][22]
that must be imported at runtime.
Specifically, a file `/usr/local/lib/python3.6/site-packages/cv2.so`.

This make sense for the Linux system Python since it is within the
search path used by system Python.
But this will fail for any of the `pyenv` installed Pythons.

To overcome this,
you need to symbolically link the system package, located in `..../site-packages`,
to the `pyenv` version of `site-packages` as shown below:

```bash
# go to the relevant python's site-package directory
cd ~/.pyenv/versions/3.6.4/lib/python3.6/site-packages/

# sym-link our opencv bindings into the cv virtual environment for python 3.6
ln -s /usr/local/lib/python3.6/site-packages/cv2.so cv2.so
```

If you install the package using
Python `pip` / `pip3` standard package management procedures
(download a tarball, and then apply `sudo python3 setup.py build`,
followed by `sudo python3 setup.py install`),
you'll need to establish a similar symbolic link.
Unless of course, you do this install while in a virtual environment.

## Create Environments for Jupyter
* [The definitive guide to setup my Python workspace](https://medium.com/@henriquebastos/the-definitive-guide-to-setup-my-python-workspace-628d68552e14)
* [Create isolated Jupyter ipython kernels with pyenv and virtualenv](http://www.alfredo.motta.name/create-isolated-jupyter-ipython-kernels-with-pyenv-and-virtualenv/)
* [Intalling Jupyter in a virtualenv](https://taufiqhabib.wordpress.com/2016/12/18/intalling-jupyter-in-a-virtualenv/)
* [Configuring Jupyter for PySpark 1.5.2 with pyenv/virtualenv](https://www.bigdatarepublic.nl/configuring-jupyter-for-pyspark-1-5-2-with-pyenvvirtualenv/)













# Sources
* [The Hitchhiker’s Guide to Python!](http://python-guide-pt-br.readthedocs.io/en/latest/)
* [How To Install Python 3 and Set Up a Local Programming Environment on Ubuntu 16.04](https://www.digitalocean.com/community/tutorials/how-to-install-python-3-and-set-up-a-local-programming-environment-on-ubuntu-16-04)
* [Managing Multiple Python Versions with pyenv](http://akbaribrahim.com/managing-multiple-python-versions-with-pyenv/)
* [A Modern Python Development Toolchain](http://www.chriskrycho.com/2015/a-modern-python-development-toolchain.html)
* [Easy Twisted Development With Virtualenv And Pyenv](https://derwolfe.net/2014/10/19/twisted-pyenv-virtualenv/)
* [Common Python Tools: Using virtualenv, Installing with Pip, and Managing Packages](https://www.digitalocean.com/community/tutorials/common-python-tools-using-virtualenv-installing-with-pip-and-managing-packages)



[01]:https://pypi.python.org/pypi/virtualenv
[02]:https://bitbucket.org/dhellmann/virtualenvwrapper
[03]:https://github.com/pyenv/pyenv
[04]:https://github.com/pyenv/pyenv-virtualenv
[05]:https://docs.python.org/3/library/venv.html#venv-def
[06]:https://stackoverflow.com/questions/3220404/why-use-pip-over-easy-install
[07]:https://www.python.org/downloads/release/python-361/
[08]:https://www.python.org/dev/peps/pep-0373
[09]:https://docs.python.org/3/howto/pyporting.html
[10]:http://akbaribrahim.com/managing-multiple-python-versions-with-pyenv/
[11]:http://docs.python-guide.org/en/latest/starting/install3/linux/
[12]:https://benzidwael.wordpress.com/2015/04/17/installing-different-python-versions-in-ubuntu/
[13]:https://askubuntu.com/questions/916442/errors-on-update-after-trying-to-install-python-2-7
[14]:http://www.chriskrycho.com/2015/a-modern-python-development-toolchain.html
[15]:https://github.com/pyenv/pyenv-installer
[16]:https://pip.pypa.io/en/stable/user_guide/#config-file
[17]:https://en.wikipedia.org/wiki/INI_file
[18]:https://pip.pypa.io/en/stable/installing/
[19]:https://github.com/pyenv/pyenv-virtualenv
[20]:https://github.com/pyenv/pyenv/blob/master/COMMANDS.md
[21]:https://github.com/pyenv/pyenv#uninstalling-pyenv
[22]:https://helloacm.com/calling-c-shared-library-from-python-code-linux-version/
[23]:https://bash.cyberciti.biz/guide/Shebang
[24]:
[25]:
[26]:
[27]:
[28]:
[29]:
[30]:
