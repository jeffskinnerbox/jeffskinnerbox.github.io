Title: Open Notebook
Slug: open-notebook
Status: hidden

Your standard web page creation tool is woefully unprepared to capture complex technical concepts
that require data, math, and graphs, but that is exactly what I would like to do.
I started playing around with [IPython Notebook][01] with [nbconvert][06]
as a way to document complex ideas on my website that required a mixture of 
prose, mathematics, algorithms, and graphs.
I got inspired by the blogs of
[Carl Boettiger][02], [David Ketcheson][03], [Ben Morris][04], [Fernando Perez][05],
and others who are already doing it.
I believe that IPython Notebook will prove to be an unqualified success,
so I’m assembling all my technical notes here

* **Notes for IPython Notebook**
    * [Configuring IPython](/notebooks/configuring-ipython.html)
    * [Formating IPython Notebook with Markdown](/notebooks/formating-ipython-notebook-with-markdown.html)
    * [Typesetting Math Using MathJax](/notebooks/typesetting-math-using-mathjax.html)
    * [Running Code in the IPython Notebook](/notebooks/running-code-in-the-ipython-notebook.html)
    * [Running Scripts from IPython](/notebooks/running-scripts-from-ipython.html)
    * [IPython's Rich Display System](/notebooks/ipython's-rich-display-system.html)
* **Using Matplotlib with IPython Notebook**
    * [Tips and Tricks for Matplotlib](/notebooks/tips-and-tricks-for-matplotlib.html)
    * [Javascript Viewer for Matplotlib Animations](/notebooks/javascript-viewer-for-matplotlib-animations.html)
    * [Matplotlib - 2D and 3D Plotting in IPython](/notebooks/matplotlib-2d-and-3d-plotting-in-ipython.html)
* **Notes for Digital Signal Processing**
    * [Physical Meaning of a Complex Signal](/notebooks/physical-meaning-of-a-complex-signal.html)
    * [Understanding the Fast Fourier Transform](/notebooks/understanding-the-fast-fourier-transform.html)
    * [Working with Fast Fourier Transform](/notebooks/working-with-fast-fourier-transform.html)

**Several mistakes in the formating (particurally in Markdown and MathJax) ... more work required.**

-----

### Converting Notebooks to HTML
``` bash
ipython nbconvert "Configuring IPython.ipynb" --to html
```
* [Blogging an iPython notebook with Jekyll](http://www.davidketcheson.info/2012/10/11/blogging_ipython_notebooks_with_jekyll.html)
* [Converting notebooks to other formats](http://ipython.org/ipython-doc/stable/interactive/nbconvert.html)
* [Exporting IPython Notebooks](http://frenticb.blogspot.com/2013/02/exporting-ipython-notebooks.html)
* [nbconvert: PDF from iPython Notebook](http://technicaltidbit.blogspot.com/2013/07/nbconvert-pdf-from-ipython-notebook.html)
* [Quick link to download nbconvert](http://technicaltidbit.blogspot.com/2013/07/quick-link-to-download-nbconvert_15.html)

### A Gallery of Interesting IPython Notebooks and Questions
* https://github.com/ipython/ipython/wiki/A-gallery-of-interesting-IPython-Notebooks
* http://nbviewer.ipython.org/
* http://stackoverflow.com/questions/tagged/ipython-notebook?sort=votes&amp;pagesize=50

### Blogging with the IPython Notebook
* [Blogging an iPython notebook with Jekyll](http://www.davidketcheson.info/2012/10/11/blogging_ipython_notebooks_with_jekyll.html)
* [Blogging with IPython-notebook](http://home.badc.rl.ac.uk/spascoe/blog/blogging-with-ipython-notebook.html)
* [Ben Morris' lab notebook](http://www.bendmorris.com/2013/05/blogging-with-ipython-distances-in.html)
* [Welcome to my Lab Notebook - Reloaded](http://carlboettiger.info/2012/09/28/Welcome-to-my-lab-notebook.html)
* [Blogging with the IPython notebook](http://blog.fperez.org/2012/09/blogging-with-ipython-notebook.html)
* [Blogging with IPython in Octopress](http://jakevdp.github.io/blog/2012/10/04/blogging-with-ipython/)

### Other Bloggers Using IPython Notebook
* [Blogging with the IPython Notebook](http://blog.fperez.org/2012/09/blogging-with-ipython-notebook.html)
* [Blogging with IPython: distances in higher dimensions](http://www.bendmorris.com/2013/05/blogging-with-ipython-distances-in.html)
* [short demo on how to use IPython Notebook as a research notebook](http://www.randalolson.com/2012/05/12/a-short-demo-on-how-to-use-ipython-notebook-as-a-research-notebook/)
* [Blogging with IPython in Octopress](http://jakevdp.github.io/blog/2012/10/04/blogging-with-ipython)
* [Blogging an iPython notebook with Jekyll](http://www.davidketcheson.info/2012/10/11/blogging_ipython_notebooks_with_jekyll.html)
* [Blogging with IPython-notebook](http://home.badc.rl.ac.uk/spascoe/blog/blogging-with-ipython-notebook.html)
* [Welcome to my Lab Notebook - Reloaded](http://carlboettiger.info/2012/09/28/Welcome-to-my-lab-notebook.html)
* [Python for Signal Processing](http://python-for-signal-processing.blogspot.com/)

### Scientific Python
* [Python Scientific Lecture Notes](http://scipy-lectures.github.io/)



[01]:http://ipython.org/notebook.html
[02]:http://carlboettiger.info/2012/09/28/Welcome-to-my-lab-notebook.html
[03]:http://www.davidketcheson.info/2012/10/11/blogging_ipython_notebooks_with_jekyll.html
[04]:http://www.bendmorris.com/2013/05/blogging-with-ipython-distances-in.html
[05]:http://blog.fperez.org/2012/09/blogging-with-ipython-notebook.html
[06]:http://github.com/ipython/nbconvert
