
* [IPython Or Jupyter?](https://www.datacamp.com/community/blog/ipython-jupyter)
* [Jupyter Notebook Tutorial: The Definitive Guide](https://www.datacamp.com/community/tutorials/tutorial-jupyter-notebook)
* [Jupyter is now a full-fledged IDE](https://towardsdatascience.com/jupyter-is-now-a-full-fledged-ide-c99218d33095)
* [Jupyter is the new Excel (but not for your boss)](https://towardsdatascience.com/jupyter-is-the-new-excel-but-not-for-your-boss-d24340ebf314)


* [IPython and Jupyter in Depth: High productivity, interactive Python - PyCon 2017](https://www.youtube.com/watch?v=VQBZ2MqWBZI&feature=youtu.be)
* [Jupyter with D3](http://www.bogotobogo.com/python/IPython/iPython_Jupyter_Notebook_with_Embedded_D3.php)
* [Jupyter Notebook Tricks for Data Science that Enhance your efficiency](https://codeburst.io/jupyter-notebook-tricks-for-data-science-that-enhance-your-efficiency-95f98d3adee4)
* [Tips, Tricks, Hacks, and Magic: How to Effortlessly Optimize Your Jupyter Notebook](https://towardsdatascience.com/how-to-effortlessly-optimize-jupyter-notebooks-e864162a06ee)

* [How To Set Up Jupyter Notebook with Python 3 on Ubuntu 18.04](https://www.digitalocean.com/community/tutorials/how-to-set-up-jupyter-notebook-with-python-3-on-ubuntu-18-04)
* [Advanced Jupyter Notebooks: A Tutorial](https://www.dataquest.io/blog/advanced-jupyter-notebooks-tutorial/)
* [Jupyter Notebook for Beginners: A Tutorial](https://www.dataquest.io/blog/jupyter-notebook-tutorial/)
* [Interactive Controls for Jupyter Notebooks](https://towardsdatascience.com/interactive-controls-for-jupyter-notebooks-f5c94829aee6)


* [Drops of Jupyter Notebooks: How to Keep Notes in the Information Age](https://hackaday.com/2019/02/22/drops-of-jupyter-notebooks-how-to-keep-notes-in-the-information-age/)
* [Why Jupyter Is Not My Ideal Notebook](https://blog.sicara.com/jupyter-notebook-analysis-production-b2d585204520)


* [Read the Docs](https://readthedocs.org/)

* [nbviewer](https://nbviewer.jupyter.org/)
* [JupyterHub](https://jupyterhub.readthedocs.io/en/latest/)
* [BinderHub](https://binderhub.readthedocs.io/en/latest/)
* [Jupyter Widgets](https://ipywidgets.readthedocs.io/en/latest/#)

* [Jupyter Lab: Evolution of the Jupyter Notebook](https://towardsdatascience.com/jupyter-lab-evolution-of-the-jupyter-notebook-5297cacde6b)
* [JupyterLab](https://blog.jupyter.org/jupyterlab-is-ready-for-users-5a6f039b8906)
* [JupyterLab teaches Python developers magic](https://opensource.com/article/19/5/jupyterlab-python-developers-magic)

* [Unofficial Jupyter Notebook Extensions](https://jupyter-contrib-nbextensions.readthedocs.io/en/latest/)
* [Jupyter Notebook Extensions: How to get the most from the notebook environment](https://towardsdatascience.com/jupyter-notebook-extensions-517fa69d2231)
* [Set Your Jupyter Notebook up Right with this Extension](https://towardsdatascience.com/set-your-jupyter-notebook-up-right-with-this-extension-24921838a332)
* [Bring your Jupyter Notebook to life with interactive widgets](https://towardsdatascience.com/bring-your-jupyter-notebook-to-life-with-interactive-widgets-bc12e03f0916)
* [Supercharging Jupyter Notebooks](https://towardsdatascience.com/supercharging-jupyter-notebooks-e22f5ad7ca18)

* [The 7 most popular ways to plot data in Python](https://opensource.com/article/20/4/plot-data-python)


* [Running Jupyter Notebooks on a Ubuntu Server](https://hackingandslacking.com/running-jupyter-notebooks-on-a-ubuntu-server-b7b2cb88a986)
* [Upgrading to JupyterLab on Ubuntu](https://hackersandslackers.com/upgrading-to-jupyter-lab-on-ubuntu/)





# Installing Jupyter Notebook
I want a interactive and feature rich environment for doing my OpenCV work,
and I found that in [Jupyter Notebook][55].
Like the OpenCV package, giving a proper introduction to Jupyter Notebook
could fill multiple books, web pages, news articles, and in fact does!
Jupyter is an evolution of the IPython Notebook,
but now [language agnostic and much more][54]
If you want to get a sense of the power and versatility of Jupyter Notebook,
check out the links below:

* [A gallery of interesting Jupyter Notebooks](https://github.com/jupyter/jupyter/wiki/A-gallery-of-interesting-Jupyter-Notebooks)
* [Jupyter nbviewer](http://nbviewer.jupyter.org/)
* [IPython Notebook best practices for data science](https://www.youtube.com/watch?v=JI1HWUAyJHE)
* [Jump Out of the Jupyter Notebook with nbconvert](https://towardsdatascience.com/jump-out-of-the-jupyter-notebook-with-nbconvert-7d4748960702)

If you wish to covert the Jupyter Notebooks to another format for publishing
(ex. HTML, PDF, Markdown, and more),
they can be created by using the [nbconvert][52] utility.
Another nice fact is that Jupyter Notebook files
(i.e. `*.ipynb`) will render automatically on GitHub/Gist ([example][53])
giving you a public way to share or .

## Setting Up Python 3
Most Linux versions ships with both Python 3 and Python 2 pre-installed.
To make sure that our versions are up-to-date, let’s update and upgrade the system

```bash
# update linux
sudo apt-get update
sudo apt-get upgrade

# check the version of Python 3 that is installed
$ python3 -V
Python 3.5.2

# to manage software packages for python 3, let’s install pip
sudo apt-get install -y python3-pip

# to ensure a robust programming environment
sudo apt-get install build-essential libssl-dev libffi-dev python-dev
```

You could install Jupyter directly under this system wide version of Python.
A more robust alternative is to use the combination of `pip`, `pyenv`,
and `pyenv-virtualenv`:

* Install Python versions with `pyenv`.
[pyenv][03] is a 3rd party tool for switching between multiple versions of Python
(e.g. change the global Python version between Python 2 and 3).
Pyenv manages the installation and removal of python interpreters.
Instead of needing to manually manipulate your `$PATH` to switch to a different interpreter,
pyenv allows you to specify which python you would like to use.
* Install Python packages with `pip`.
[pip][02] is a package management system used to install and manage software packages written in Python.
* Set up virtual environments with `pyenv-virtualenv`.
[pyenv-virtualenv][04] allows you to create a virtual environment that will use a specific interpreter.
[virtualenv][01] is a tool that creates isolated python environments.
When using a virtualenv, `pip` installs dependencies into a location that is only visible to the virtualenv.
Virtualenv allows you to test out different versions of libraries without worring
about accidentally upgrading a dependency that would affect another project.
With python 2, one needed to install the virtualenv application to be able to use it,
in python3 it is baked in to the standard installation.

I'm going to show leveraging the Linux system wide Python
then show use the combination of `pip`, `pyenv`, and `pyenv-virtualenv`.

## Install Jupyter System Wide
Installing Jupyter Notebook on your computer is documented [here][50].
For new users, they highly recommend installing it via [Anaconda][51],
but as an existing Python user, you can do the following:

* [Jupyter Standalone Might Just Be Better Than Anaconda](https://towardsdatascience.com/jupyter-standalone-might-just-be-better-than-anaconda-53104da05eee)

```bash
# update your pip utility
sudo -H pip3 install --upgrade pip

# install jupyter
sudo -H pip3 install jupyter

# install commonly used data analysis python packages
sudo -H pip3 install numpy
sudo -H pip3 install matplotlib
sudo -H pip3 install seaborn
sudo -H pip3 install sklearn
sudo -H pip3 install pandas
sudo -H pip3 install imutils
sudo -H pip3 install dweepy

# deep learning packages
# Installing Deep Learning Frameworks on Ubuntu with CUDA support
# https://www.learnopencv.com/installing-deep-learning-frameworks-on-ubuntu-with-cuda-support/
```

[Flask][63] is a Python web framework for writing web applications including web services.
If you see a need for a web app within your Juypter project,
Flask is the best way to go.

```bash
# if you plan to do any
sudo -H pip3 install flask
```

Spell checking isn't built into Jupyter but it can be supported via
an extention and the [Calysto spell checker][64] seems to be widely used and well supported.
The repository I'm installing here accually contains several editing tool extensions for Jupyter,
spell checking only being one of them.

```bash
# download the tools into your directory system
cd ~/src
git clone https://github.com/Calysto/notebook-extensions.git
cd notebook-extensions

# install the tools into your jupyter environment
jupyter nbextension install calysto --user

# enable the extensions you want, all of them are listed below
jupyter nbextension enable calysto/document-tools/main
jupyter nbextension enable calysto/cell-tools/main
jupyter nbextension enable calysto/spell-check/main
jupyter nbextension enable calysto/publish/main
jupyter nbextension enable calysto/submit/main
jupyter nbextension enable calysto/annotate/main

# to check the status of your extentions
jupyter nbextension list
```

Now when you open or reload a notebook, it should load the extensions.
You'll find a short video on how the spell checker works [here][65].
It only does checking.
You can use your browser to provide corrections.

## Install Jupyter via pyenv and pyenv-virtualenv

# Step 0: Install pyenv and pyenv-virtualenv
See "cheatsheet-python-pip-pyenv-commands.md" on how to install pyenv and pyenv-virtualenv.

# Step 1:

# Using Jupyter Notebook
You can start the Jupyter Notebook via several ways:

```bash
# enter this commad in a terminal and your browser will open with jupyter (http://localhost:8888)
jupyter notebook

# same but openning in port 9999
jupyter notebook --port 9999

# start notebook server without opening a web browser
jupyter notebook --no-browser

# notebook server provides help messages
jupyter notebook --help
```

What if you Jupyter environment isn't on your local computer,
but instead on a remote compute accessible via TCP/IP?
You want to open and manipulate an Jupyter Notebook running on the remote computer.
This can be done by opening an SSH tunnel.
This tunnel will forward the port used by the remotely running Jupyter Notebook server instance
to a port on your local machine,
where it can be accessed in a browser just like a locally running Jupyter Notebook instance.

On the remote machine, start the Jupyter Notebooks server:

```bash
# on the remote machine, start the jupyter notebooks server
jupyter notebook --no-browser --port=8889
```

On the local machine, start an SSH tunnel:

```bash
# on the local machine, start an SSH tunnel
# run in background: ssh -f -N -L localhost:8888:localhost:8889 remote_user@remote_host
# run in foreground: ssh -N -L localhost:8888:localhost:8889 remote_user@remote_host
ssh -N pi@BlueRPi -L localhost:8888:localhost:8889
```

Now enter `localhost:8888` in your favorite browser to use the remote Jupyter Notebook!

###############################################################################

**Within Chromebook ....**

1. **Desktop:** In one window, login to desktop -- cd Jupyter-Notebooks ; jupyter notebook --no-browser --port=8889
2. **Chromebook:** In 2nd window -- ssh -N jeff@desktop -L localhost:8888:localhost:8889
3. **Chromebook:** In 3rd window -- gnome-www-browser
4. **Chromebook:** Now enter `localhost:8888` in the browser and now you can access the remote Jupyter Notebook!

###############################################################################

* [Remote Access to IPython Notebooks via SSH](https://coderwall.com/p/ohk6cg/remote-access-to-ipython-notebooks-via-ssh)
* [Use Jupyter notebook remotely](http://amber-md.github.io/pytraj/latest/tutorials/remote_jupyter_notebook)
* [Running a notebook server](https://jupyter-notebook.readthedocs.io/en/stable/public_server.html)
* [Jupyter Notebook on remote server](https://coderwall.com/p/y1rwfw/jupyter-notebook-on-remote-server)


# Jupyter Slide Show
[Reveal.js][56] is an open-source tool to create HTML presentations
which will be displayed in an Internet browser.
This has a some advantage.
It is platform independent, and displayable on basically any computer
(as opposed to only Microsoft Office).

[RISE][57] is an open-source tool to convert Jupyter Notebooks into Reveal.js presentations.
Each notebook cell is formatted as a slide, including title, pictures, bullet lists, and more.
In particular, code snippets and their output are displayed in a nice, illustrative way.
[Here][58] is an example generated via [this][60] notebook.

To share your presentation,
you can convert your notebook into HTML slides with the command:

```bash
jupyter-nbconvert --to slides my-presentation-notebook.ipynb
```

To look at these you’ll need a local reveal.js install
(see e.g. [here][59] for instructions).

You can publish your HTML presentations online by using available [online platforms][61],
or on your own website, or using [github pages][62].

Example in a notebook:
* [How to Create a Slideshow using Jupyter+Markdown+Reveal.js](https://www.youtube.com/watch?v=EOpcxy0RA1A&feature=youtu.be)
* [Presentation slides with Jupyter Notebook](http://echorand.me/presentation-slides-with-jupyter-notebook.html#.V19WnWJ96V4)
* [A programmer’s cleaning guide for messy sensor data](https://opensource.com/article/17/9/messy-sensor-data?utm_medium=Email&utm_campaign=weekly&sc_cid=701f20000019T6MAAU)
* [Messy Sensor Data: A Programmer's Cleaning Guide](https://github.com/Spaxe/pyconau2017-messy-sensor-data)
* [Reveal.js - The HTML Presentation Framework](http://lab.hakim.se/reveal-js/#/)
* [RISE: Reveal.js - Jupyter/IPython Slideshow Extension](http://bollwyvl.github.io/live_reveal/#/)
    * https://github.com/damianavila/RISE
* [Presenting Code Using Jupyter Notebook Slides](https://medium.com/@mjspeck/presenting-code-using-jupyter-notebook-slides-a8a3c3b59d67)
* [How to make polished Jupyter presentations with optional code visibility](http://chris-said.io/2016/02/13/how-to-make-polished-jupyter-presentations-with-optional-code-visibility/)
* [Quick Tips: An Easy Way to Make Slideshows from Jupyter Notebooks](http://www.oliversherouse.com/2015/10/27/jupyter_slideshows.html)
* [Giving presentations with IPython notebook](https://neuroscience.telenczuk.pl/?p=607)



[01]:https://pypi.python.org/pypi/virtualenv
[02]:https://pip.pypa.io/en/stable/quickstart/
[03]:https://github.com/pyenv/pyenv
[04]:https://github.com/pyenv/pyenv-virtualenv



[50]:https://en.wikipedia.org/wiki/1080p
[51]:https://en.wikipedia.org/wiki/720p
[52]:https://www.modmypi.com/download/raspicamdocs.odt
[53]:http://www.modmypi.com/blog/raspberry-pi-camera-board-raspivid-command-list
[54]:http://www.modmypi.com/blog/raspberry-pi-camera-board-raspistill-command-list
[55]:http://picamera.readthedocs.io/en/release-1.12/
[56]:http://lab.hakim.se/reveal-js/#/
[57]:https://github.com/damianavila/RISE
[58]:http://fabienmaussion.info/acinn_xarray_workshop/#/
[59]:http://echorand.me/presentation-slides-with-jupyter-notebook.html
[60]:https://github.com/fmaussion/teaching/blob/master/xarray_intro_acinn/ACINN_workshop_xarray-slides.ipynb
[61]:https://slides.com/
[62]:https://cynng.wordpress.com/2014/10/08/using-reveal-js-on-github-pages-for-your-presentations/
[63]:https://www.fullstackpython.com/flask.html
[64]:https://github.com/calysto/notebook-extensions
[65]:https://www.youtube.com/watch?v=Km3AtRynWFQ
