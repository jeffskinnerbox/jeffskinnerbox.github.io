# Pelican Driven Website
This is the source content and tools for creating my web site [www.jeffskinnerbox.me][03].
The site is generated using [Pelican][04], written mostly in [markdown][05],
and it is hosted using [Github Pages][06].
The web sites user-interface theme was developed by reusing &
modifing the [pelican-bootstrap3][10] Pelican Theme and
reusing and modifing the [Bootswatch][09] [Bootstrap][07] theme called [flatly][08].
The web site also makes use of pages that were formated using the [IPython][12] tool [nbconvert][11].
All these tools (and [several more][13]) are used to create the content for the web site.

![Screen Shot](https://raw.githubusercontent.com/jeffskinnerbox/jeffskinnerbox.github.io/master/extra/Jeff's_Skinner_Box_Screen_Shot.png)

## Configuration Files
The building and publishing of the web site is manage via a Makefile, and the two Pelican configuration files
`pelicanconf.py` and `publishconf.py`.
This theme honors the following standard Pelican settings:

* Putting feeds in the `<head>` section:
	* `FEED_ALL_ATOM`
	* `FEED_ALL_RSS`
* Template settings:
	* `DISPLAY_PAGES_ON_MENU`
	* `DISPLAY_CATEGORIES_ON_MENU`
	* `MENUITEMS`
	* `LINKS` (Blogroll will be put in the sidebar instead of the head)
* Analytics and Comments
	* `GOOGLE_ANALYTICS`
	* `DISQUS_SITENAME`
	* `PIWIK_URL`, `PIWIK_SSL_URL` and `PIWIK_SITE_ID`

It uses the `tag_cloud` variable for displaying tags in the sidebar.
You can control the amount of tags shown with: `TAG_CLOUD_MAX_ITEMS`.

## Custom Domain Name
To use a custom domain with GitHub Pages,
you need to put the domain of your site (e.g., www.jeffskinnerbox.me)
inside a `CNAME` file at the root of your site.
To do this, add the `CNAME` file to the `content/extras/`.
Then use the configuration variable `STATIC_PATHS` setting to tell Pelican
to copy this file to your output directory. For example:

```python
STATIC_PATHS = [ 'images', 'extra/CNAME' ]
EXTRA_PATH_METADATA = { 'extra/CNAME': { 'path': 'CNAME' }, }
```

## Extras

### Custom CSS
If you want to add custom css to the theme,
without having to clone and maintain your own version of the theme,
you can use the `CUSTOM_CSS` variable.
The value is the location where you tell Pelican to put the file (see below):

```
CUSTOM_CSS = 'static/custom.css'
```

To tell Pelican to copy the relevant file to the desired destination,
add the path to `STATIC_PATHS` and the destination to `EXTRA_PATH_METADATA`, like so:

```
# Tell Pelican to add 'extra/custom.css' to the output dir
STATIC_PATHS = ['images', 'extra/custom.css']

# Tell Pelican to change the path to 'static/custom.css' in the output dir
EXTRA_PATH_METADATA = {
    'extra/custom.css': {'path': 'static/custom.css'}
}
```

### Plugins

### Pygments
You can choose the syntax highlighting style by using the `PYGMENTS_STYLE` variable
to specify one of the built-in Pygments styles.
By default the `native` style is used. The following styles are avaiable:

- autumn
- borland
- bw
- colorful
- default
- emacs
- friendly
- fruity
- manni
- monokai
- murphy
- native
- pastie
- perldoc
- solarizeddark
- solarizedlight
- tango
- trac
- vim
- vs

For a demo of the different Pygment styles, have a look [here](http://pygments.org/demo/218030/)

### Breadcrumbs
It's possible to show [breadcrumbs][14] in your site using the `DISPLAY_BREADCRUMBS` flag.
By default the article category isn't shown in the breadcrumbs,
if you wish to enable it, set the `DISPLAY_CATEGORY_IN_BREADCRUMBS` flag to _True_.

### Navbar
If you wish to use the inverse navbar from Bootstrap,
set the flag `BOOTSTRAP_NAVBAR_INVERSE` to _True_.

### Related Posts
This theme has support for the [Related Posts plugin](https://github.com/getpelican/pelican-plugins/tree/master/related_posts). All you have to do, is enable the plugin, and the theme will do the rest.

### Favicon
Set the `FAVICON` option in your `pelicanconf.py`. For example: `FAVICON = 'images/favicon.png'`

### Sidebar Options
The following things can be displayed on the sidebar:

* **Social links** can be provided through the `SOCIAL` variable. If it's empty, the section will not be shown
	* In your `pelicanconf.py` provide your social links like this:

```
SOCIAL = (('twitter', 'http://twitter.com/DaanDebie'),
          ('linkedin', 'http://www.linkedin.com/in/danieldebie'),
          ('github', 'http://github.com/DandyDev'),)
```
* **Tags** will be shown if `DISPLAY_TAGS_ON_SIDEBAR` is set to _True_
* **Categories** will be shown if `DISPLAY_CATEGORIES_ON_SIDEBAR` is set to _True_
* **Recent Posts** will be shown if `DISPLAY_RECENT_POSTS_ON_SIDEBAR` is set to _True_
	* Use `RECENT_POST_COUNT` to control the amount of recent posts. Defaults to **5**

To remove the sidebar entirely, set `HIDE_SIDEBAR` to _True_.

### reStructuredText styles
If you're using reStructuredText for writing articles and pages, you can include the extra CSS styles that are used by the `docutils`-generated HTML by setting `DOCUTIL_CSS` to True. This can be done as a global setting or  setting it in the metadata of a specific article or page.

### Disqus comments
* This theme sets identifiers for each article's comment threads. If you are switching from a theme that doesn't (such as the Pelican built-in default) this will result in existing comments getting lost. To prevent this, set DISQUS_NO_ID to _True_.
* Set DISQUS_ID_PREFIX_SLUG to _True_ if you have configured your article URLs such that the slug alone will likely not be unique. Ignored if DISQUS_NO_ID is _True_.
* To show Disqus comment counts on the index page, set DISQUS_DISPLAY_COUNTS to _True_.

### Content license
You can optionally declare a [Creative Commons license](http://creativecommons.org) for the content of your site.
It will appear in the site's footer. To enable, use one of the following two ways for configuration.

* To choose the license by name, set `CC_LICENSE` to the common abbreviated name of the license: `"CC-BY"` (require attribution), `"CC-BY-SA"` (require ShareAlike), `"CC-BY-ND"` (NoDerivatives) , `"CC-BY-NC"` (require attribution, no commercial reuse), `"CC-BY-NC-SA"` (require ShareAlike, no commercial reuse), or `"CC-BY-NC-ND"` (NoDerivatives, no commercial reuse).
* Alternatively, choose the licence by features:
    * `CC_LICENSE_DERIVATIVES` - `"yes"` if permitted, `"no"` if not permitted, and `"ShareAlike"` if derivatives must be shared under the same terms.
    * `CC_LICENSE_COMMERCIAL` - `"yes"` if commercial reuse is permitted, and `"no"` otherwise.
* Optionally, you can include attribution markup in the license mark by setting `CC_ATTR_MARKUP` to _True_.

The license choice mirrors the [Creative Commons License Chooser](http://creativecommons.org/choose/). Source for the macro that renders the mark is at http://github.com/hlapp/cc-tools.

### GitHub
The theme can show your most recently active GitHub repos in the sidebar. To enable, provide a `GITHUB_USER`. Appearance and behaviour can be controlled using the following variables:

* `GITHUB_REPO_COUNT`
* `GITHUB_SKIP_FORK`
* `GITHUB_SHOW_USER_LINK`

### Bootswatch and other Bootstrap 3 themes
I included all the lovely Bootstrap 3 themes from [Bootswatch](http://bootswatch.com/), built by [Thomas Park](https://github.com/thomaspark). You can tell Pelican what Bootswatch theme to use, by setting `BOOTSTRAP_THEME` to the desired theme, in lowercase (ie. 'readable' or 'cosmo' etc.). My own site is using _Readable_. If you want to use any other Bootstrap 3 compatible theme, just put the minified CSS in the `static/css` directory and rename it using the following naming scheme: `bootstrap.{theme-name}.min.css`. Then update the `BOOTSTRAP_THEME` variable with the _theme-name_ used.

#### Update: Readable has seen some major changes. I added the new version as 'readable' and renamed the old version to 'readable-old'. Update your config accordingly.

### AddThis
You can enable sharing buttons through [AddThis](http://www.addthis.com/) by setting `ADDTHIS_PROFILE` to your AddThis profile-id. This will display a **Tweet**, **Facebook Like** and **Google +1** button under each post.

### Facebook Open Graph
In order to make the Facebook like button work better, the template contains Open Graph metatags like `<meta property="og:type" content="article"/>`. You can disable them by setting `USE_OPEN_GRAPH` to _False_. You can use `OPEN_GRAPH_FB_APP_ID` to provide a Facebook _app id_. You can also provide a default image that will be passed to Facebook for the homepage of you site by setting `OPEN_GRAPH_IMAGE` to a relative file path, which will be prefixed by your site's static directory.

### Footer
The footer will display a copyright message using the AUTHOR variable and the year of the latest post. If a content license mark is enabled (see above), that will be shown as well.

## Makefile
The Makefile is engineered for doing common tasks with the static site generator Jekyll, such as,

* generating your site
* creating a new post or page from a default template
* preview it in your default browser
* publish you draft posting
* transfering it to a remote git repository, a remote host/server or a local git repository.

### Make Commands
I modified the default Makefile create by the installation of Pelican.
I updated it with some additional tools to make the work flow process more automated an easier.

`make html`
:   Convert your Markdown formated content and generate HTML content for local server
    (i.e. localhost:8000).

`make regenerate`
:   If you’d prefer to have Pelican automatically regenerate your site every time
    a change is detected (which is handy when testing locally),
    use this command instead to automatically regenerate files upon modification.

`make serve [PORT=8000]`
:   This will serve the content at `http://localhost:8000`.
    You use this to inspect its formatting before you post it on your web site.

`make devserver [PORT=8000]`
:   Normally you would need to run `make regenerate` and `make serve`
    in two separate terminal sessions, but you can run both at once via this command.
    This command will simultaneously run Pelican in regeneration mode, as well as,
    serve the output at `http://localhost:8000`.

`make stopserver`
:   Once you are done testing your changes, this command stop the development server.
    It does this via execution of the script `./develop_server.sh stop`.

`make publish`
:   To assure a clean generation of content, ready for production servera, run this command.

`make github [COMMENT="<string>"]`
:   When you’re ready to place your site within your local git repository
    and publish your site at GitHUb, you can upload it via this command.
    The `<string>` is the comment string required by Git.

`make process`
:   This is typically used internally to the Makefile.
    It creat thumbnails and other such support files required by the web site.

`make clean`
:   This will remove all the generated HTML files by deleting the `output` directory.

`make backup`
:   This will create a backup of the blog's contents and tools and place
    them in `$HOME/tmp` for safe keeping.

`make article [TITLE="<string>"]`
:   Using the metadata for an article stored in the directory `metadata`,
    this will create a draft article in the directory `content/drafts`
    and open it with `vim` for editing.

`make page [TITLE="<string>"]`
:   Using the metadata for a page stored in the directory `metadata`,
    this will create a draft article in the directory `content/pages`
    and open it with `vim` for editing.

## License
Copyright (c) 2014 Jeffrey C. Irland.  MIT Licensed, see [LICENSE][02] for details.



[01]:https://github.com/gummesson/jekyll-rake-boilerplate
[02]:https://github.com/jeffskinnerbox/jeffskinnerbox.github.io/blob/source/LICENSE.md
[03]:http://jeffskinnerbox.me/
[04]:http://blog.getpelican.com/
[05]:http://daringfireball.net/projects/markdown/
[06]:http://pages.github.com/
[07]:http://getbootstrap.com/
[08]:http://bootswatch.com/flatly/
[09]:http://bootswatch.com/
[10]:https://github.com/DandyDev/pelican-bootstrap3
[11]:http://ipython.org/ipython-doc/rel-1.0.0/interactive/nbconvert.html
[12]:http://ipython.org/
[13]:http://jeffskinnerbox.me/pages/this-blog-is-powered-by.html
[14]:http://en.wikipedia.org/wiki/Breadcrumb_(navigation)
[15]:
[16]:
[17]:
[18]:
[19]:
[20]:
[21]:
