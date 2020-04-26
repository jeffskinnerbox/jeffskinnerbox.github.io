
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

* [4 ways to create cross-platforms apps using web technologies](https://www.davrous.com/2019/01/11/4-ways-to-create-cross-platforms-apps-using-web-technologies/)






I'm not a web / UI developer; I have very limited HTML/CSS/JavaSripts/etc skills.
I have often struggled long and hard to create a website
and have typically followed the easy path using frameworks like Jekyll and Pelican.
There I said it!
For some reason, I feel a little bit embarrassed for admitting this.
Seems like every 12 year old know how to do web development, so why shouldn't I?




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


-----


# Progressive Web Apps (PWA)
Progressive Web Apps (PWA) represent the open web moving forward in its ability
to deliver fully-functioning applications that can be
delivered anywhere by anyone and be used on any platform.
PWAs don’t care if you are running iOS, Mac OS, Windows, Android or Chrome OS.
They just need a [modern browser][26] to function in.
In a nutshell, they represent the most flexible and versatile app platform available and up until now.

The term Progressive Web Apps (PWA) was originally coined by Google in 2015,
takes advantage of the latest technologies to combine the best of web and mobile apps.
On the whole, Progressive Web Apps describe a collection of technologies, design concepts,
and Web APIs that work in tandem to provide an app-like experience on the mobile web.
Think of it as a website built using web technologies but that acts and feels like an app.
So what does this mean to the developer and user?

* Progressive web apps take advantage of the much larger web ecosystem, plugins and community and the relative ease of deploying and maintaining a website when compared to a native application in the respective app stores.
* A website can be built in less time and generally be easier to deploy and maintain
* For a mobile app, you must download it, install it and then, finally, open it. When a user finds your progressive web app, they will be able to immediately start using it. And when the user returns to the app, they will be prompted to install the app and upgrade to a full-screen experience.
* A mobile native app can use push notifications and typically consumes less data and is much faster because some resources reside on the device. A progressive web application takes advantage of a mobile app’s characteristics, without the complications involved in maintaining a mobile application.
* A progressive web app works in all browsers, and the experience is enhanced whenever the user’s browser is updated with new and improved features and APIs.
* There is no compromise in the user experience with a progressive web app compared to a traditional website; however, you may have to decide what functionality to support offline, and you will have to facilitate navigation (remember that in standalone mode, the user does not have access to the back button).
* If certain features are required for critical user actions but are not yet available due to a lack of cross-browser support, then a native mobile application might be the better option, guaranteeing the same experience for all users.

## What Makes a Website a Progressive Web App?
Progressive Web Apps have the following [characteristics][22]:

* **Progressive -** By definition, a progressive web app must work on any device and enhance progressively, taking advantage of any features available on the user’s device and browser.
* **Discoverable -** Because a progressive web app is a website, it should be discoverable in search engines. This is a major advantage over native applications, which still lag behind websites in searchability.
* **Linkable -** As another characteristic inherited from websites, a well-designed website should use the URI to indicate the current state of the application. This will enable the web app to retain or reload its state when the user bookmarks or shares the app’s URL.
* **Responsive -** A progressive web app’s UI must fit the device’s form factor and screen size.
* **App-like -** A progressive web app should look like a native app and be built on the application shell model, with minimal page refreshes.
* **Connectivity-independent -** It should work in areas of low connectivity or offline.
* **Re-engageable -** Mobile app users are more likely to reuse their apps, and progressive web apps are intended to achieve the same goals through features such as push notifications.
* **Installable -** A progressive web app can be installed on the device’s home screen, making it readily available.
* **Fresh -** When new content is published and the user is connected to the Internet, that content should be made available in the app.
* **Safe -** Because a progressive web app has a more intimate user experience and because all network requests can be intercepted through service workers, it is imperative that the app be hosted over HTTPS to prevent man-in-the-middle attacks.

Technically speaking, in order to call a Web App a PWA, it should have the following features:

* **[Secure Contexts (HTTPS)][23] -** The web application must be served over a secure network. Being a secure site is not only a best practice, but it also establishes your web application as a trusted site especially if users need to make secure transactions. Most of the features related to a PWA such as geolocation and even service workers are available only once the app has been loaded using HTTPS.
* **[Service Workers -][24]** A service worker is a script that allows intercepting and control of how a web browser handles its network requests and asset caching. With service workers, web developers can create reliably fast web pages and offline experiences.
* **[Manifest File -][25]** A JSON file that controls how your app appears to the user and ensures that progressive web apps are discoverable. It describes the name of the app, the start URL, icons, and all of the other details necessary to transform the website into an app-like format.

Further reading:
* [Youtube TV is another Chromebook PWA You can Install Directly from the Play Store](https://chromeunboxed.com/youtube-tv-chromebook-pwa-install-google-play-store/)
* [Seriously, though. What is a progressive web app?](https://medium.com/@amberleyjohanna/seriously-though-what-is-a-progressive-web-app-56130600a093)
* [Progressive Web Apps: Escaping Tabs Without Losing Our Soul](https://infrequently.org/2015/06/progressive-apps-escaping-tabs-without-losing-our-soul/)
* [Progressive Web Apps 101: the What, Why and How](https://www.freecodecamp.org/news/progressive-web-apps-101-the-what-why-and-how-4aa5e9065ac2/)
* [A Beginner’s Guide To Progressive Web Apps](https://www.smashingmagazine.com/2016/08/a-beginners-guide-to-progressive-web-apps/)

## How Do You Build a PWA?
* [How to build a PWA from scratch with HTML, CSS, and JavaScript](https://www.freecodecamp.org/news/build-a-pwa-from-scratch-with-html-css-and-javascript/)
* [Learn how to build a PWA in 5 minutes](https://medium.com/dev-channel/learn-how-to-build-a-pwa-in-under-5-minutes-c860ad406ed)

## PWABuilder
* [Publishing your PWA in the Play Store in a couple of minutes using PWA Builder](https://www.davrous.com/2020/02/07/publishing-your-pwa-in-the-play-store-in-a-couple-of-minutes-using-pwa-builder/)
* [New PWABuilder release!](https://medium.com/pwabuilder/new-pwabuilder-release-b2932f4722a5)
* [PWABuilder 2.0 and beyond!](https://medium.com/pwabuilder/pwabuilder-2-0-and-beyond-579ad2944fac)
* [PWABuilder](https://www.pwabuilder.com/)


------


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
[22]:https://developers.google.com/web/fundamentals
[23]:https://developer.mozilla.org/en-US/docs/Web/Security/Secure_Contexts
[24]:https://developer.mozilla.org/en-US/docs/Web/API/Service_Worker_API
[25]:https://developer.mozilla.org/en-US/docs/Web/Manifest
[26]:https://developers.google.com/web/updates/2018/09/inside-browser-part1
[27]:
[28]:
[29]:
[30]:
