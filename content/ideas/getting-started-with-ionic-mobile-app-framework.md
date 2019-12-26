
* Flutter - Google’s portable UI toolkit for building natively-compiled applications for mobile, web, and desktop from a single codebase.
    * [Flutter](https://flutter.dev/)
    * [Flutter for Desktop: Create and Run a Desktop Application](https://medium.com/flutter-community/flutter-for-desktop-create-and-run-a-desktop-application-ebeb1604f1e0)
* Ionic
    * [Iconic Getting Started V2](http://ionicframework.com/docs/v2/setup/installation/)
    * [Get started with Ionic Framework](http://ionicframework.com/getting-started/)
    * [TutorialsPoint's Ionic Tutorial](https://www.tutorialspoint.com/ionic/index.htm)
    * [Thinkster's Mastering the Ionic Framework: Learn to Build & Deploy Native Speed HTML5 Based Apps](https://thinkster.io/ionic-framework-tutorial)
    * [Create Your First Mobile App with AngularJS and Ionic](https://scotch.io/tutorials/create-your-first-mobile-app-with-angularjs-and-ionic)
    * [Build Your First Mobile App With The Ionic Framework](http://gonehybrid.com/build-your-first-mobile-app-with-the-ionic-framework-part-1/)
    * [Icon's Blog: Tutorials](http://blog.ionic.io/tag/tutorials/)

* Others
    * [Cordova Frameworks: Ionic vs. Framework7](https://www.toptal.com/apache-cordova/frameworks-ionic-framework7)
    * [Appcelerator](https://www.appcelerator.com/)






# MIT App Inventor
MIT App Inventor is an intuitive, visual programming environment that allows everyone
– even children – to build fully functional apps for smartphones and tablets.

* [MIT App Inventor](http://appinventor.mit.edu/explore/index-2.html)

[!ionic-logo](https://upload.wikimedia.org/wikipedia/commons/thumb/d/d1/Ionic_Logo.svg/2000px-Ionic_Logo.svg.png)
[Ionic][01] is open source framework used for developing mobile applications.
It provides tools and services for building mobile UI with [native app][02] look and feel.
Ionic framework needs native wrapper to be able to run on mobile devices,
but is built on top of [AngularJS][04] and [Cordova][03].
For running the apps on the mobile device,
you'll also need the [Android environment setup (Andriod SDK)][14]
or [iOS environment setup (XCode)][15].
Finally, you will also need basic knowledge about these technologies
and familiar with HTML, CSS and JavaScript.
Ionic als uses [TypeScript][16], a superset of JavaScript, which means it gives you JavaScript,
along with a number of extra features such as type declarations and interfaces.
Although Ionic is built with TypeScript, using it to build an Ionic app is optional.

Ionic is not an alternative option to Cordova
(itself an open-source mobile development framework built on Node.js)
but instead a UI library to make a better Cordova project.
Ionic can be compared to a framework like [Bootstrap][05] or [Foundation][06]
but this time for Mobile and not Web.

Some of the advertised benefits of the Ionic Hybrid Mobile Apps Framework are:

* Ionic is used for hybrid app development.
This means that you can package your applications for IOS, Android,
Windows Phone and Firefox OS which can save you a lot of working time.
* Starting your app is very easy since Ionic provides useful pre-generated
app setup with simple layouts.
* The apps are built in very clean and modular way,
so it's very maintainable and easy to update.

But it also has limitations:

* Testing can be tricky since browser doesn't always give you right information
about the phone environment.
* It can be hard to combine different native functionalities.
You can run into plugin compatibility issues, which leads to build errors hard to debug.
* Hybrid apps tend to be slower than the native ones,
but since the mobile technologies, this isn't generally an issue.

While there are many other mobile app frameworks one could use,
Ionic has established itself as leader in the hybrid mobile apps development space.
Ionic team keeps the framework updated by adapting to the latest trends,
and its ecosystem has grown so huge that you can easily find tons of development
resources from this open source community.

# Progressive Web Apps
On the whole, Progressive Web Apps describe a collection of technologies, design concepts,
and Web APIs that work in tandem to provide an app-like experience on the mobile web.

* [What the Heck is a Progressive Web App (PWA) Anyway?](https://it.toolbox.com/blogs/dennisstevenson/what-the-heck-is-a-progressive-web-app-pwa-anyway-102919)

* https://ionicframework.com/docs/developer-resources/progressive-web-apps/
* [How you can make a progressive web app in an hour](https://medium.freecodecamp.org/how-you-can-make-a-progressive-web-app-in-an-hour-7e36d560610e)
* [Developing Progressive Web Apps (PWAs) Course](https://codelabs.developers.google.com/dev-pwa-training/)

# Meteor
Meteor is a great backend solution for Angular and Ionic apps.

* [Ionic and Meteor: Two great things that go great together](http://blog.ionic.io/ionic-and-meteor/)
* [Meteor, Ionic and Cordova basic tutorial](https://www.codetutorial.io/meteor-ionic-and-cordova-basic-tutorial/)


# Ionic Development Tools
* [Ionic View](https://play.google.com/store/apps/details?id=com.ionic.viewapp) allows you to quickly and easily load, view and test the apps you build with Ionic Framework on a device.
* [Ionic Dashboard](https://apps.ionic.io/login) that makes it easy to build and share apps in your organization, as well as manage developers and users on your team.
* Icon comes with a [rich set of icons, navigation, gesture, popups. etc. tools](http://ionicframework.com/docs/v2/components/#overview) high-level building blocks called components.
* [Pre-build Iconic Apps][12] you can purchase (many are free) and reuse
* [Capacitor](https://capacitor.ionicframework.com/) Cross-platform runtime that makes it easy to build apps that run natively on iOS, Android, Electron, and the web - using HTML, JS, and CSS.

# Setting Up Your Development Environment
The development environment being defined here is for the [Ionic V2 Framework][08].
Ionic V2 software has been in beta for nearly a year now
([alpha release was in October 2015][09]) and appears to be fairly stable.
[Ionic's Getting Started page][07] and

My development platform is Ubuntu
and the first thing to do is to
[install Node.js on Ubuntu 16.04][13] using the [Node.js Version  manager, `nvm`][11].
(If you work with a lot of different Node.js utilities and projects,
you know sometimes you need to switch to other versions of Node.js.
That's where you can use `nvm` to download, install, and use different versions of Node.js.)
Then, install the latest Cordova and Ionic command-line tools in your terminal.
Then follow the Android and iOS platform guides to install required tools for development.
I followed the [Ionic V2 website  install procedures][10]

```bash
# install verion 6 or better node.js for Ionic V2
nvm install 6.9.4

# now use this installed version of node.js
nvm use 6.9.4

# install cordova ionic
sudo npm install -g cordova ionic
```

# Creating First Ionic App
This simple example follows fairly closely the tutorial example provide by Ionic
under their "[Setup & Tutorial][18]"  icon within their [documentation page][17].
You will find much more detail there.

```bash
# move to a directory where you want the ionic app to be stored
cd ~/src

# create the ionic app using an iconic's default tabs template
# NOTE: omit the --v2 option if you wish to use version 1 of iconic
ionic start MyIonic2Project tutorial --v2
```

* `start` will tell the CLI create a new app.
* `MyIonic2Project` will be the directory name and the app name from your project.
* `tutorial` will be the starter template for your project.
* `--v2` tells the CLI that you want a 2.0 project.

If the tutorial template isn’t something you want to use,
Ionic has a few templates available:

* `tabs`: a simple 3 tab layout
* `sidemenu`: a layout with a swipable menu on the side
* `blank`: a bare starter with a single page
* `tutorial`: a guided starter project

Along with creating your project,
this will also install npm modules for the application,
and get Cordova set up and ready to go.

To get a quick preview of your app in the browser,
use the serve command and go to `http://localhost:8100/` in your browser:

```bash
# enter project directory and start the ionic serve
cd MyIonic2Project
ionic serve
```

While the `ionic serve` is running,
any changes you make and after saving the file,
you will notice the `ionic serve` process will recompile your app with the new changes,
and reload the browser.

# Devloping with Ionic Creator
Drag and drop application development tools.

http://docs.usecreator.com/docs/beautiful-side-menus
http://ionicframework.com/getting-started/
https://www.joshmorony.com/is-ionics-drag-drop-app-builder-any-good/
https://www.producthunt.com/posts/ionic-creator-v2
http://thejackalofjavascript.com/ionic-creator-beta/

# Adding a Plugin
[Ionic Native][19] is a set of wrappers for [Cordova][21] / [PhoneGap][20] plugins
that assist in adding native functionality you need to your Ionic mobile app.

https://ionicframework.com/docs/v2/native/barcode-scanner/

# Ionic Market
[Proximi.io Ionic Starter App - Starter for all location-based apps - beacons, GPS, geofencing](http://market.ionic.io/starters/proximiio-ionic-demo-app)
    * [Proximi.io - Get access to all of your favourite positioning technologies through a single API: IndoorAtlas, iBeacon, Eddystone beacons, Wi-Fi, GPS and cellular geofencing.](https://proximi.io/)



[01]:http://ionicframework.com/
[02]:http://searchsoftwarequality.techtarget.com/definition/native-application-native-app
[03]:http://cordova.apache.org/
[04]:https://angularjs.org/
[05]:http://getbootstrap.com/
[06]:http://foundation.zurb.com/
[07]:http://ionicframework.com/getting-started/
[08]:http://blog.ionic.io/announcing-ionic-framework-2-beta/
[09]:http://blog.ionic.io/announcing-ionic-2-0-alpha/
[10]:https://ionicframework.com/docs/v2/setup/installation/
[11]:https://github.com/creationix/nvm/blob/master/README.markdown
[12]:https://market.ionic.io/
[13]:https://www.digitalocean.com/community/tutorials/how-to-install-node-js-on-ubuntu-16-04
[14]:http://www.tutorialspoint.com/android/android_environment_setup.htm
[15]:https://www.tutorialspoint.com/ios/ios_environment_setup.htm
[16]:https://www.typescriptlang.org/
[17]:https://ionicframework.com/docs/
[18]:https://ionicframework.com/docs/v2/setup/installation/
[19]:https://ionicframework.com/docs/v2/native/
[20]:http://docs.phonegap.com/phonegap-build/configuring/plugins/
[21]:http://ngcordova.com/docs/plugins/
[22]:
[23]:
[24]:
[25]:
[26]:
[27]:
[28]:
[29]:
[30]:
