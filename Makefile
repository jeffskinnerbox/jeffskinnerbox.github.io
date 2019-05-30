DEBUG ?= 0

# Use Bash shell instead of the default /bin/sh
SHELL := /bin/bash

# Shell loops will continue past errors without this
EXIT_ON_ERROR = set -e

# Parameters set for debugging
ifeq ($(DEBUG), 1)
	DEBUG_PELICANOPTS = -D
else
	DEBUG_PELICANOPTS =
endif

# These options will be passed to "python".
PYTHONOPTS =

# These options will be passed to "pelican".
PELICANOPTS += $(DEBUG_PELICANOPTS) --ignore-cache

# These are the locations where temporary files will be stored.
TMP = $(HOME)/tmp
TMPFILE = "$(TMP)/temp_file_$(shell date +%H%M%S)"

# Directory structure of the blogging directory (at least what's required for this work flow).
BASEDIR = $(HOME)/blogging
BINDIR = $(BASEDIR)/bin
METADATA = $(BASEDIR)/metadata
INPUTDIR = $(BASEDIR)/content
OUTPUTDIR = $(BASEDIR)/output
CACHEDIR = $(BASEDIR)/cache
WIKI = $(BASEDIR)/wiki
ARTICLESDIR = $(INPUTDIR)/articles
DRAFTSDIR = $(INPUTDIR)/drafts
EXTRADIR = $(INPUTDIR)/extra
IDEASDIR = $(INPUTDIR)/ideas
IMAGESDIR = $(INPUTDIR)/images
NOTEBOOKSDIR = $(INPUTDIR)/notebooks
PAGESDIR = $(INPUTDIR)/pages
LOGOS = $(IMAGESDIR)/logos
SUMMARY = $(IMAGESDIR)/summary

CONFFILE = $(BASEDIR)/pelicanconf.py
PUBLISHCONF = $(BASEDIR)/publishconf.py

# If a backup is requested, this is the backup file's location/name.
BACKUPDIR = "$(TMP)/blog_backup_$(shell date | tr ': ' '_')"

# Author of the idea, draft, or article
AUTHOR = Jeff Irland

# Date and time stamp to be applied to an article's header.
DATETIME = $(shell date "+%Y-%m-%d %H:%M")

# If an idea, draft, or article is created, this will capture the title
# and make it part of the URL for the document.
ifdef TITLE
	SLUG = $(shell echo "$(TITLE)" | tr -d '!@$%^&*()?:;|{}[]",.' | tr '[:upper:]' '[:lower:]' | tr -s ' ' | tr '_ ' '-' | tr -s '-' )
else
	SLUG = place-holder
endif

################################################################################

help:
	@echo 'Makefile for a Pelican Web Site'
	@echo ' '
	@echo 'Usage:'
	@echo '   make serve [PORT=8000]         serve site at http://localhost:8000'
	@echo '   make start [PORT=8000]         start/restart local server'
	@echo '   make stop                      stop the local server'
	@echo ' '
	@echo '   make draft [TITLE="<str>"]     pick a file in /ideas to move to /drafts, '
	@echo '                                    using TITLE as its title'
	@echo '   make article                   pick a file in /drafts to move to /articles'
	@echo '   make publish                   generate content for production server'
	@echo '   make github [COMMENT="<str>"]  upload the content to production server'
	@echo ' '
	@echo '   make html                      generate content for local server'
	@echo '   make clean                     remove the generated HTML files'
	@echo '   make backup                    create a backup of the blogs content and tools'
	@echo '   make version                   print out the software version numbers'
	@echo '   make upgrade                   upgrade the Pelican package'
	@echo '   make process                   create thumbnails for the web site'
	@echo '   make regenerate                regenerate files upon modification'
	@echo '   make github_pelican            push the contents of website into Github'
	@echo '                                    and post to Github Website'
	@echo '   make github_tiddlywiki         push the content of the wiki into Github'
	@echo '                                    and post to Heroku Website'
	@echo ' '
	@echo 'Set the DEBUG variable to 1 to enable debugging (e.g. make html DEBUG=1)'
	@echo ' '

# Create a draft file for $(BASEDIR)/content/drafts diretory from a file within the $(BASEDIR)/content/ideas directory
draft:
	@echo " "
	@echo "Enter the number of the file you wish to process. Pick the last number to exit."
	@$(EXIT_ON_ERROR) ; \
	PS3="Enter Number: " ; \
	cd $(IDEASDIR) ; \
	select file in * exit ; \
	do \
    	case $$file in \
        	exit) \
            	echo "Exiting from select loop!" ; \
            	exit 1 ; \
            	;; \
        	*) \
            	echo "You picked the file $$file" ; \
				echo $$file > /home/jeff/tmp/temp_name ; \
				mv $$file $(TMPFILE) ; \
            	break ; \
            	;; \
    	esac ; \
	done
ifdef TITLE
	cat $(METADATA)/article.metadata $(TMPFILE) | sed 's/Title: xxx/Title: $(TITLE)/' | sed 's/Slug: xxx/Slug: $(SLUG)/' | sed 's/Author: xxx/Author: $(AUTHOR)/' > $(DRAFTSDIR)/$(SLUG).md
	vim $(DRAFTSDIR)/$(SLUG).md &
else
	TITLE="$(shell cat /home/jeff/tmp/temp_name)" ; \
	SLUG="$(shell cat /home/jeff/tmp/temp_name)" ; \
	cat $(METADATA)/article.metadata $(TMPFILE) | sed 's/Title: xxx/Title: $(TITLE)/' | sed 's/Slug: xxx/Slug: $(SLUG)/' | sed 's/Author: xxx/Author: $(AUTHOR)/' > $(DRAFTSDIR)/$(SLUG).md
	vim $(DRAFTSDIR)/$(SLUG).md &
endif


# Create a article file for $(BASEDIR)/content/articles diretory from a file within the $(BASEDIR)/content/drafts directory
article:
	@echo " "
	@echo "Enter the number of the file you wish to process. Pick the last number to exit."
	@$(EXIT_ON_ERROR) ; \
	PS3="Enter Number: " ; \
	cd $(DRAFTSDIR) ; \
	select file in * exit ; \
	do \
    	case $$file in \
        	exit) \
            	echo "Exiting from select loop!" ; \
            	exit 1 ; \
            	;; \
        	*) \
            	echo "You picked the file $$file" ; \
				sed '{ s/Date: 2100-01-01 00:00/Date: $(DATETIME)/ ; /Status: draft/d }' $$file > $(ARTICLESDIR)/$$file ; \
				mv $$file $(TMPFILE) ; \
            	break ; \
            	;; \
    	esac ; \
	done


html:
	pelican $(INPUTDIR) -o $(OUTPUTDIR) -s $(CONFFILE) $(PELICANOPTS)


clean:
	[ ! -d $(OUTPUTDIR) ] || rm -rf $(OUTPUTDIR)
	[ ! -d $(CACHEDIR) ] || rm -rf $(CACHEDIR)
	rm -rf $(BASEDIR)/*.pyc


regenerate: clean process html


serve:
ifdef PORT
	cd $(OUTPUTDIR) && python $(PYTHONOPTS) -m pelican.server $(PORT)
else
	cd $(OUTPUTDIR) && python $(PYTHONOPTS) -m pelican.server
endif

start: startserver startwiki

stop: stopserver stopwiki

# This runs in the background, Pelican and a HTTP Server.  As updates are made to
# the blog pages and articles, the blog can be view at "http://localhost:8000/" using a browser.
startserver:
ifdef PORT
	@$(BASEDIR)/develop_server.sh restart $(PORT)
	@echo 'Started Pelican and HTTP server processes running in background.'
else
	@$(BASEDIR)/develop_server.sh restart
	@echo 'Started Pelican and HTTP server processes running in background.'
endif


# This stops the Pelican and HTTP Server running in the background.
# Site location is http://localhost:8000/
stopserver:
	@$(BASEDIR)/develop_server.sh stop
	@echo 'Stopped Pelican and HTTP server processes running in background.'


# This starts the TiddlyWiki server process required for TiddlyWiki server.
# http://tiddlywiki.com/#ServerCommand
startwiki:
	@tiddlywiki wiki --server & echo "$$!" > tiddlywiki.pid
	@echo 'Started TiddlyWiki server processes running in background.'


# This stops the TiddlyWiki server process required for TiddlyWiki server.
stopwiki:
	@kill -9 `cat tiddlywiki.pid` && rm -rf tiddlywiki.pid
	@echo 'Stopped TiddlyWiki server processes running in background.'


# convert logo's to thumbnails (and other such things) for web site formatting
process:
	rm -rf $(LOGOS)/thumbnail $(SUMMARY)/thumbnail
	mkdir $(LOGOS)/thumbnail $(SUMMARY)/thumbnail
	cd $(LOGOS); . ./create.sh
	cd $(SUMMARY); . ./create.sh
	cd $(BASEDIR)


# prepare for publishing content to your web site
publish: clean process
	pelican $(INPUTDIR) -o $(OUTPUTDIR) -s $(PUBLISHCONF) $(PELICANOPTS)


# make a backup of your web site content
backup: html
	mkdir $(BACKUPDIR)
	cp -r $(BASEDIR)/content $(BACKUPDIR)
	cp -r $(BASEDIR)/theme $(BACKUPDIR)
	find . -maxdepth 1 -type f -exec cp {} $(BACKUPDIR) \;


# push the contents of website into Github and post contents on Github Website
github_pelican:
	ghp-import $(OUTPUTDIR)
	git push origin gh-pages:master
	git add --all
ifdef COMMENT
	git commit -m "$(COMMENT)"
else
	git commit -m "Modified $(shell date)"
endif
	git push origin master:source


# push the content of the wiki into Github and post to Heroku Website
github_tiddlywiki:
	cd $(WIKI); git add --all
	cd $(WIKI); git commit -m "Tiddler updates for $(shell date)"
	cd $(WIKI); heroku login
	cd $(WIKI); git push heroku master


# place contents in Github and push to Website
github: backup publish github_pelican github_tiddlywiki


# Versions of tools being used
version:
	@echo -n 'Current version of Pelican used locally ' ; pelican --version
	@echo -n 'Current version of TiddlyWiki used locally ' ; tiddlywiki --version
	@echo -n 'Current version of TiddlyWiki use in Heroku ' ; cat wiki/package.json | jq '.dependencies.tiddlywiki' | tr -d '"'
	@echo -n 'Current version of Node used locally ' ; node --version
	@echo -n 'Current version of Node use in Heroku ' ; cat wiki/package.json | jq '.engines.node' | tr -d '"'

# upgrade the Pelican package
upgrade: version
	#pip install --upgrade Pelican
	#pip install --upgrade Markdown
	#sudo npm update -g tiddlywiki

.PHONY: draft article html help clean regenerate serve startserver publish backup process github
