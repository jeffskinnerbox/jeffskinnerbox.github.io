Title: Testing: Tables
Slug: testing-tables
Status: hidden

## The Back Story
Out of the box, the table formating of Python Markdown sucks!
It has no borders, no header formating, no padding in cells, etc.
This can be fixed with a little custom CSS.
My fix is in `content/extra/custom.css` and is listed blow:

```css
/* This allows for a wider range of font sizes for the Tag Cloud.
 * Make sure to change the TAG_CLOUD_STEPS value in pelicanconf.py
 * to to the number of tags here (i.e. 8) */
.tag-1 {
    font-size: 20pt;
}

.tag-2 {
    font-size: 18pt;
}

.tag-3 {
    font-size: 16pt;
}

.tag-4 {
    font-size: 14pt;
}

.tag-5 {
    font-size: 12pt;
}

.tag-6 {
    font-size: 10pt;
}

.tag-7 {
    font-size: 8pt;
}

.tag-8 {
    font-size: 6pt;
}

/* This will provide some visual improvements to Markdown's formating of tables */
table, th, td {
    margin-left: auto;
    margin-right: auto;
    border: 1px solid black;
}

table {
    box-shadow: 5px 5px 10px #888888;
}

th {
    padding-top: 5px;
    padding-bottom: 5px;
    padding-right: 15px;
    padding-left: 15px;
    background-color: #B8B8B8;
    color: black;
}

td {
    padding-top: 5px;
    padding-bottom: 5px;
    padding-right: 15px;
    padding-left: 15px;
    background-color: #FFFFFF;
    color: black;
}

/* This will make the in-text code more aesthetically appealing */
code {
    font-family: monospace, monospace;
    color: black;
}

/* This will make the code blocks more aesthetically appealing */
.codehilite {
    border-radius: 5px;
    box-shadow: 5px 5px 10px #888888;
}
```

## Tables
Tables aren't part of the core Markdown spec, but are part of Python / Pelican
implementation.
This posting gives you some idea on how [tables should be supported][01]
and see the [Python Table extension][02].
You combine this, with the `custom.css` discussed above, and this

```
| Default Justified | Left Justified | Right Justified | Centered Justified |
| ----------------- |:-------------- | ---------------:|:------------------:|
| row 1, col 1 | row 1, col 2     | row 1, col 3 | _this should be italics_   |
| row 2, col 1 | **this should be bold** | row 2, col 3 | row 2, col 4     |
| row 3, col 1 | row 3, col 2     | $\frac{1}{\Bigl(\sqrt{\phi \sqrt{5}}-\phi\Bigr) e^{\frac25 \pi}}$ | row 3, col 4     |
| `this should be code` | row 4, col 2     | row 4, col 3 | row 4, col 4     |
| row 5, col 1 | row 5, col 2     | row 5, col 3 | row 5, col 4     |
```

you get the following:

| Default Justified | Left Justified | Right Justified | Centered Justified |
| ----------------- |:-------------- | ---------------:|:------------------:|
| row 1, col 1 | row 1, col 2     | row 1, col 3 | _this should be italics_   |
| row 2, col 1 | **this should be bold** | row 2, col 3 | row 2, col 4     |
| row 3, col 1 | row 3, col 2     | $\frac{1}{\Bigl(\sqrt{\phi \sqrt{5}}-\phi\Bigr) e^{\frac25 \pi}}$ | row 3, col 4     |
| `this should be code` | row 4, col 2     | row 4, col 3 | row 4, col 4     |
| row 5, col 1 | row 5, col 2     | row 5, col 3 | row 5, col 4     |

Test of inline MathJax: $\frac{1}{\Bigl(\sqrt{\phi \sqrt{5}}-\phi\Bigr) e^{\frac25 \pi}}$

## Tables With Images
Yes, you can do images within the tables!
So with this code:

```
| Default Justified | Left Justified | Right Justified | Centered Justified |
| ----------------- |:-------------- | ---------------:|:------------------:|
| row 1, col 1 | row 1, col 2     | row 1, col 3 | _this should be italics_   |
| [![Pelican Logo](/images/logos/thumbnail/pelican_logo.png)](http://blog.getpelican.com/) | **this should be bold** | row 2, col 3 | row 2, col 4     |
| [![IPython Logo](/images/logos/thumbnail/ipython_notebook_logo.png)](http://ipython.org/notebook.html) | [![Gist Logo](/images/logos/thumbnail/gist_logo.jpg)](https://github.com/signup/free?return_to=gist) | [![Disqus Logo](/images/logos/thumbnail/disqus_logo.png)](http://disqus.com/) | [![Atom Logo](/images/logos/thumbnail/atom_logo.png)](http://atomenabled.org/) |
| `this should be code` | row 4, col 2     | ![BATMAN-Adv]({filename}/images/batman-adv-logo.png "BATMAN-Adv Mesh Network Software") | row 4, col 4     |

```

you get the following:

| Default Justified | Left Justified | Right Justified | Centered Justified |
| ----------------- |:-------------- | ---------------:|:------------------:|
| row 1, col 1 | row 1, col 2     | row 1, col 3 | _this should be italics_   |
| [![Pelican Logo](/images/logos/thumbnail/pelican_logo.png)](http://blog.getpelican.com/) | **this should be bold** | row 2, col 3 | row 2, col 4     |
| [![IPython Logo](/images/logos/thumbnail/ipython_notebook_logo.png)](http://ipython.org/notebook.html) | [![Gist Logo](/images/logos/thumbnail/gist_logo.jpg)](https://github.com/signup/free?return_to=gist) | [![Disqus Logo](/images/logos/thumbnail/disqus_logo.png)](http://disqus.com/) | [![Atom Logo](/images/logos/thumbnail/atom_logo.png)](http://atomenabled.org/) |
| `this should be code` | row 4, col 2     | ![BATMAN-Adv]({filename}/images/batman-adv-logo.png "BATMAN-Adv Mesh Network Software") | row 4, col 4     |


[01]:http://stackoverflow.com/questions/16099153/table-not-render-when-use-redcarpet-in-jekyll-github-pages
[02]:http://pythonhosted.org//Markdown/extensions/tables.html
[03]:
[04]:
[05]:
[06]:
[07]:
[08]:
