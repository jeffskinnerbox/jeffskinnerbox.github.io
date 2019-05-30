Personal Wiki for the web site www.jeffskinnerbox.me
Check out adding-a-wiki-to-my-blog.md for better instruction on the installation.

## Running Node.js on Heroku
Make sure you have [Node.js][02] installed on your Heroku instance.
To do this, start with the Heroku's instructions at ["Getting Started with Node.js on Heroku"][01].
It will provide you step-by-step instructions on getting Node.js running within your Heroku account.

## Installation
You can install Node.js via `apt-get`,
but because of a conflict with another package (amateur radio node package0,
the executable from the Ubuntu repositories is called `nodejs` instead of `node`.
Node.js package manager and other programs will want to call it "node",
so you'll need to set up a symbolic link between `nodejs` and `node`.

```bash
# install the Node.js engine and its package manager
sudo apt-get install nodejs npm

# create symbolic link
sudo ln -s /usr/bin/nodejs /usr/bin/node
```

## Install Heroku Toolbelt
[Heroku Toolbelt][03] is a CLI tool for creating and managing Heroku apps.
To install it, follow the instructions at ["Heroku CLI"][04].

Once installed, you'll have access to the Heroku command from your command shell.
Log in using the email address and password you used when creating your Heroku account:

```bash
git clone git@github.com:heroku/node-js-getting-started.git # or clone your own fork
cd node-js-getting-started
npm install
npm start
```

Your app should now be running on [localhost:5000](http://localhost:5000/).

## Deploying to Heroku

```bash
heroku create
git push heroku master
heroku open
```

## Subsequent Uploads to Heroku
Use this Bash script:

```bash
#!/usr/bin/env bash

set -x

# make your commit
git add --all
git commit -m "Tiddler updates for $(date)"

# enter your Heroku credentials
heroku login

# deploy to Heroku
git push heroku master
```

## Documentation

For more information about using Node.js on Heroku, see these Heroku Dev Center articles:

- [Getting Started with Node.js on Heroku](https://devcenter.heroku.com/articles/getting-started-with-nodejs)
- [Heroku Node.js Support](https://devcenter.heroku.com/articles/nodejs-support)
- [Node.js on Heroku](https://devcenter.heroku.com/categories/nodejs)
- [Best Practices for Node.js Development](https://devcenter.heroku.com/articles/node-best-practices)
- [Using WebSockets on Heroku with Node.js](https://devcenter.heroku.com/articles/node-websockets)
- [Installing TiddlyWiki5 on Heroku](https://groups.google.com/forum/#!topic/tiddlywiki/XDFW_tcSbf0)



[01]:https://devcenter.heroku.com/articles/getting-started-with-nodejs#introduction
[02]:http://nodejs.org/
[03]:https://toolbelt.heroku.com/
[04]:https://devcenter.heroku.com/articles/heroku-command
[05]:
[06]:
[07]:
[08]:
[09]:
[10]:
