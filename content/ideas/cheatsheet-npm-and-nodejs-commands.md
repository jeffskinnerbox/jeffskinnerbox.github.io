* [Tour of npm](http://tobyho.com/2012/02/09/tour-of-npm/)
* [Node Package Manager - Commands](http://www.w3resource.com/slides/node-package-manager-commands-slides-presentation.php)
* [What you can do with npx](https://www.youtube.com/watch?feature=youtu.be&v=55WaAoZV_tQ&app=desktop)

[npm][01] is the package manager for [Node.js][04]
(and javascripts, angular, io.js, nodebots, jquery, grunt, etc.).
The npm command-line tool is bundled with node and io.js.
If you have either of those installed, then you already have npm too.

[npm's documentation site][02] featuring large number of videos and tutorial.


# Installing Node.js (node)
Head to the [Node.js download page][12] and grab the version you need.
For Linux, you can also install Node via the package manager,
for example [installing on Node.js on Ubuntu 16.04][13].

One option for the Linux install is to use [Node Version Manager, `nvm`][14],
which give you on-demand access to the newest versions of Node.js,
but will also allow you to target previous releases that your app may depend on.
If you work with a lot of different Node.js utilities and projects,
you know sometimes you need to switch to other versions of Node.js.
That's where you can use `nvm` to download, install, and use different versions of Node.js.

Follow this to install `nvm` and `node`:

```bash
# install required packages
sudo apt-get update
sudo apt-get install build-essential libssl-dev

# install nvm
curl -o- https://raw.githubusercontent.com/creationix/nvm/v0.33.0/install.sh | bash

# verify theat nvm is installed which should output '.nvm' if the installation was successful
# NOTE: 'which nvm' will not work, since nvm is a sourced shell function, not an executable binary
command -v nvm
nvm --version

# to find out the versions of Node.js that are available for installation
nvm ls-remote
```
When you install Node.js using `nvm`, the executable is called `node` just like normal.
You can see the version currently being used by doing the typical `node -v`.

```bash
# what version of node is currently being used
node -v

# list the multiple node.js versions installed
nvm ls

# you can install a specific version of node
nvm install 6.0.0

# to make one of the versions your default
# this version will be automatically selected when a new session spawns
nvm alias default 6.0.0

# can also switch to your default be using an alias
nvm use default

# to switch to and use another node.js version
nvm use 4.2.6
```

Verify your installation, which should also include the Node Package Manager, `npm`.

```bash
# where is node.js located
$ which node
/usr/bin/node

# what version of node.js are your using
$ node --version
v4.2.6

# location and version of node package manager
$ which npm
/usr/local/bin/npm
$ npm --version
4.1.1
```

## Node Packaged Manager (npm)
Node comes with package manager, called `npm`,
already installed so you should have a version of `npm`.
However, `npm` gets updated more frequently than Node does,
so you'll want to make sure it's the latest version.

```bash
# install the latest version of npm
npm install npm@latest --global

# what is the version of npm
npm -v
```

`npm` can install packages in local or global locations.
In local mode it installs the package in a directory called `node_modules`
in your parent working directory.
This location is owned by the current user.

When your using `nvm`,
global packages are installed in `~/.nvm/versions/node/vX.X.X/lib/node_modules/`
and is owned by currrent user.
This means you do not have to use `sudo` to install packages globally.
(`npm` will allow you to [change the location of global packages][15],
but you shouldn't do this when using `nvm`.)

While using `nvm`, you can install and list node.js global packages
using the same command you always used:

```bash
# global install of node.js packages
npm install <package> --global

# full list installed global packages (what comes with node.js and yoru installs)
npm list --global

# list just the package you installed globally
npm list --global --depth=0
```

Installing packages in local mode is done without the `--global` flag.
The package will be installed in your parent working directory in a `node_modules` folder.
To install and list node.js local packages:

```bash
# make a project directory and change to it
mkdir ~/project && cd ~/project

# install uglify-js package locally to this project
npm install uglify-js

# list installed local packages
npm list --depth=0
```

* [npm Orgs](https://www.npmjs.com/docs/orgs/?utm_campaign=2017-03-22%20free%20Orgs&utm_medium=email&utm_source=Eloqua)
* [create a free Org](https://www.npmjs.com/features)

## Managing Package Dependencies
The best way to manage locally installed npm packages
and there dependencies on each otehr is to create a [`package.json` file][16].
This can be created with the command `npm init`:

```bash
# create the package.json file
$ npm init
This utility will walk you through creating a package.json file.
It only covers the most common items, and tries to guess sensible defaults.

See `npm help json` for definitive documentation on these fields
and exactly what they do.

Use `npm install <pkg> --save` afterwards to install a package and
save it as a dependency in the package.json file.

Press ^C at any time to quit.
name: (project)
version: (1.0.0)
description: just a test run of npm
entry point: (index.js)
test command:
git repository:
keywords: junk
author: jeff irland
license: (ISC) MIT
About to write to /home/jeff/project/package.json:

{
  "name": "project",
  "version": "1.0.0",
  "description": "just a test run of npm",
  "main": "index.js",
  "dependencies": {
    "longest": "^1.0.1",
    "uglify-js": "^2.7.5"
  },
  "devDependencies": {},
  "scripts": {
    "test": "echo \"Error: no test specified\" && exit 1"
  },
  "keywords": [
    "junk"
  ],
  "author": "jeff irland",
  "license": "MIT"
}


Is this ok? (yes)
```

We may also install packages after the creation of the `package.json` file.
Fore example, we may install a specific version of the underscore package.
We do that by using the @ sign to append a version number.
We also want the

```bash
# install version 0.0.1 of underscore and update package.json
npm install underscores@0.0.1 --save

# or you could do the package.json update after the fact
npm install underscores@0.0.1
npm install underscores@0.0.1 --save
```



# Node Package Manager (npm)
* [A Beginner’s Guide to npm — the Node Package Manager](http://www.sitepoint.com/beginners-guide-node-package-manager/)
* [npm cheat sheet](http://browsenpm.org/help)
* [10 Cool Things You Probably Didn’t Realize npm Could Do](http://blog.izs.me/post/1675072029/10-cool-things-you-probably-didnt-realize-npm)

```bash
# initial install of npm
sudo apt-get install npm

# update the npm package
 sudo npm install npm -g
```

# Starting a Node.js Project
[Getting a new node project started with npm][05]

```bash
# create your project directory
mkdir npmtest

# change to the directory you just created and establish git repository
cd !$
git init

# pull preconfigured .gitignore file
wget https://gist.github.com/jeffskinnerbox/9612119 -O .gitignore

# initialise your node.js and create your project.json
npm init
```

```bash
# Once you have added some code to index.js and some tests of course, add and commit your code.
git add .
git commit -a 'Initial release'

# Now your ready to release use npm to update the version. There are three options for this command being major, minor and patch each of which increments the version numbers in that order. In the example below we should go from 0.0.0 to 0.1.0.
npm version minor

# Run your tests!
npm test

# Push to github, the version command automatically tags your project so we can check it out if we need!
git push origin master --tags

# Ship it
npm publish
```

Other Nifty Commands

```bash
# creates a package.json in root for you
npm init

# lists all installed packages
npm list

# removes packages not depended on by your project according to your package.json
npm prune

# tells you which installed packages are outdated with respect to what is current
# in the npm registry but allowable by the version definition in your package.json
npm outdated
```

# nmp Rebuild
Some Node packages contain native code that's written in C++,
which require compilation.
If you ever need to recompile them,
often the case when you upgrade to a new version of Node,
you must do the following

```bash
npm rebuild
```

http://tobyho.com/2012/02/09/tour-of-npm/

# Properties of package.json
The `package.json` file provides you several useful things:

* It serves as documentation for what packages your project depends on.
* It allows you to specify the versions of a package that your project can use using semantic versioning rules.
* Makes your build reproducable which means that its way easier to share with other developers.

The [package.json interactive guide][03] describes important properties
of the package.json packaging format for node.js applications.

`npm init` will create a `package.json` file using a default format.
It is also possible to totally customize the information created
and the questions asked during the init process.
This is done by creating a custom `.npm-init.js`,
or it will use the default `~/.npm-init.js`.

A simple `.npm-init.js` could look something like this:

```json
module.exports = {
  customField: 'Custom Field',
  otherCustomField: 'This field is really cool'
}
```

Running `npm init` with this file in your home directory,
would output a `package.json` similar to this:

```json
{
  customField: 'Custom Field',
  otherCustomField: 'This field is really cool'
}
```

Customizing the questions is also possible, by using the prompt function.

```json
module.exports = prompt("what's your favorite flavor of ice cream buddy?", "I LIKE THEM ALL");
```

To learn more on how to create more advanced customizations,
checkout "[Specifics of npm's package.json handling][06]".

Sometime you can forget to use the `--save` flag when installing new modules.
As a result, your `package.json` file will not be updated with dependencies.
To discover those dependencies after this mishap,
you can create a [script to collect the dependencies][07] in `./node_modules`,
or use the `npm-collect` module.

```bash
# install npm-collect
sudo npm install -g npm-collect

# print out your projects module dependencies
nmp-collect

# update your package.json with your projects module dependencies
nmp-collect --save
```

Editing your  `package.json` file could introduce errors.
To validate your edits, you can use the [Package.json validator][08].



[01]:https://www.npmjs.com/
[02]:https://docs.npmjs.com/
[03]:http://browsenpm.org/package.json
[04]:https://nodejs.org/en/
[05]:http://www.wolfe.id.au/2014/02/01/getting-a-new-node-project-started-with-npm/
[06]:https://docs.npmjs.com/files/package.json
[07]:http://stackoverflow.com/questions/9961502/is-there-a-way-to-automatically-build-the-package-json-file-for-node-js-projects
[08]:http://package-json-validator.com/
[09]:
[10]:
[11]:
[12]:https://nodejs.org/en/download/
[13]:https://www.digitalocean.com/community/tutorials/how-to-install-node-js-on-ubuntu-16-04
[14]:https://github.com/creationix/nvm
[15]:https://www.sitepoint.com/beginners-guide-node-package-manager/
[16]:https://docs.npmjs.com/getting-started/using-a-package.json
[17]:
[18]:
[19]:
[20]:

