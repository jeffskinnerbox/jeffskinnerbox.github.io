#!/usr/bin/env python
# -*- coding: utf-8 -*- #

# This file is only used if you use `make publish` or
# explicitly specify it as your config file.
# No longer publishing to http://localhost:8000/

from __future__ import unicode_literals
import os
import sys
sys.path.append(os.curdir)
from pelicanconf import *                                                       # NOQA

# A list of tuples (Title, URL) for additional menu items to appear
# at the beginning of the main menu.
#MENUITEMS = (('About Me', '/pages/about-me/'),
#            ('MicroContent', 'deadend.html'),
#            ('Open Notebook', '/pages/open-notebook/'),)
MENUITEMS = (('About Me', '/pages/about-me/'),
            ('MicroContent', 'http://jeffskinnerbox-wiki.herokuapp.com/'),
            ('Open Notebook', '/pages/open-notebook/'),)

# Domain name of the site (this will be placed in output/CNAME)
SITEURL = 'http://jeffskinnerbox.me'
RELATIVE_URLS = False       # always set to False when you're ready to publish

# Links to appear in the "links" section of the sidebar
#WIKI = (('Project Ideas', 'deadend.html'),
#       ('Things to Study', 'deadend.html'),)
WIKI = (('Project Ideas', 'http://jeffskinnerbox-wiki.herokuapp.com/#Potential Projects'),  # NOQA
       ('Things to Study', 'http://jeffskinnerbox-wiki.herokuapp.com/#Topics for Study'),)  # NOQA

FEED_DOMAIN = SITEURL
FEED_ALL_ATOM = 'feeds/all.atom.xml'
FEED_ALL_RSS = 'feeds/all.rss.xml'
FEED_MAX_ITEMS = 100

# List of templates that are used directly to render content.
# Typically direct templates are used to generate index pages for collections
# of content (e.g., tags and category index pages).
#DIRECT_TEMPLATES = ('index', 'tags', 'categories', 'archives', 'sitemap')
#SITEMAP_SAVE_AS = 'sitemap.xml'

# content with dates in the future should not be generated
#WITH_FUTURE_DATES = False   # NOQA commented out because "make publish" will not work without error, remove when fixed

# Turn-on Google Analytics, Disqus when publishing
GOOGLE_ANALYTICS_ON = True
DISQUS_ON = True

DISPLAY_TESTS_ON_SIDEBAR = False
DELETE_OUTPUT_DIRECTORY = True
