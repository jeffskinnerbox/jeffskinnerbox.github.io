
# Coaxial Cable

* [UHF SO-239](https://www.amazon.com/Female-Chassis-Flange-Solder-Connector/dp/B007Q8JH4Y)
* [RF Coax Cable Connectors](http://www.fmuser.net/content/?852.html)
* [RF CONNECTORS, ATTENUATORS AND LOADS, TOGETHER WITH THEIR USES](http://www.harc.org.uk/?page=technical&sub=connectors)
* [The Modular Connector and How It Got That Way](https://hackaday.com/2018/10/02/the-modular-connector-and-how-it-got-that-way/#more-326628)
* [The BNC Connector and How It Got That Way](https://hackaday.com/2018/10/19/the-bnc-connector-and-how-it-got-that-way/)
* [Three Quick Tips About Using U.FL](https://learn.sparkfun.com/tutorials/three-quick-tips-about-using-ufl)


Essentials of Connector Technology
* [element14 Essentials: Connectors I](https://www.element14.com/community/docs/DOC-81482?CMP=EMC-NEWSLETTER-APR16-ESSENTIALS-CONNECTORS-1)
* [Co-Exist With Your Coax: Choose The Right Connector For The Job](http://hackaday.com/2016/03/31/co-exist-with-your-coax-choose-the-right-connector-for-the-job/)

## Coaxial Cable Types
[Coaxial cable][02] (aka "coax") is a common type of shielded data transmission cable,
which is made up of two conductors that are coaxially oriented,
but separated by a layer of dielectric insulation.
Coaxial cable is a [waveguide][01], designed to carry high-frequency signals,
and to protect those signals against electromagnetic interference from external sources
and to keep the signal from radiating to the outside world.

Coax is often typed (but not always) with the following convention: RG-#.
The "RG" is short for "Radio Guide," a term that dates back to obsolete World War II era standards.
The RG naming comvention specify different grades of coax and their applications.
The most common RG designations seen these days are RG-6, RG-8, RG-11, RG-58, and RG-59.
RG-6 and RG-59 cables are widely used in residential settings.
RG-59 best suited to low-frequency transmissions and short cable runs,
and RG-6 the ideal choice to carry high frequency signals over long distances.

Coax comes in a bewildering number of varieties.
Below is some of the typical cables you'll come accross.

 Cable Type | Outer Diameter | Center Conductor | Impedance | Typical Application | [Jonard Stripper][03]
|:---------:|:--------------:|:----------------:|:---------:|:-------------------:|:-------------:|
    RG-6    |  0.270 inches  |      18 AWG      |   75 Ω    | CATV/DBS/CCTV/HDTV  |     UST-500
    RG-7    |  0.320 inches  |      18 AWG      |   75 Ω    | CATV/DBS/CCTV/HDTV  |     UST-500
    RG-8    |  0.405 inches  |      13 AWG      |   50 Ω    |          AR         |
    RG-11   |  0.412 inches  |      14 AWG      |   75 Ω    | CATV/DBS/CCTV/HDTV  |     UST-500
    RG-58   |  0.195 inches  |      20 AWG      |   50 Ω    |          AR         |
    RG-59   |  0.242 inches  |      20 AWG      |   75 Ω    | CATV/DBS/CCTV/HDTV  |     UST-500
    RG-174  |  0.100 inches  |      26 AWG      |   50 Ω    |      pig tails      |     UST-175

* CATV - Cable Television
* DBS - Direct Broadcast Satellite
* CCTV - Closed-Circuit Television
* HDTV - High Definition Television
* SDI - Serial Digital Interface
* AR - Amateur Radio
* AWG - American Wire Gauge

## Coaxial Cable Connectors
Many [coaxial connector types][11] are available in the audio, video, digital, RF,
and microwave industries.
Each where designed for a specific purpose and application but their use has deversified.
Some of the widely used connector types are:

* [RCA][04] - RCA connector, sometimes called a phono connector or cinch connector, are commonly used to carry audio and video signals.
* [SMA][05] - SubMiniature version A connectors are semi-precision coaxial RF connectors for coaxial cable, with a screw type coupling mechanism. The connector has a 50 Ω impedance. It is designed for use from DC to 18 GHz.
* [SMB][10] - SubMiniature version B connectors are coaxial RF connectors that are smaller than SMA connectors.  They feature a snap-on coupling and are available in either 50 Ω or 75 Ω impedance. They designed to performance from DC to 4 GHz.
* [MCX][06] - Micro Coaxial connectors are coaxial RF connectors  th a snap-on interface and usually have a 50 Ω impedance (occasionally 75 Ω also) . They offer broadband capability from DC to 6 GHz.
* [BNC][07] - The BNC (Bayonet Neil-Conselman) connector is a miniature quick connect/disconnect RF connector used for coaxial cable and ideally suited for cable termination for miniature-to-subminiature coaxial cable (e.g., RG-58, RG-59). They are used with radio, television, and other radio-frequency electronic equipment, and test instruments. BNC connectors are made to match the characteristic impedance of cable at either 50 Ω or 75 Ω and frequencies below 4 GHz.
* [PL259][08] - Also goes by UHF connector, or Amphenol coaxial connector, it is a threaded RF connector design, from an era when UHF referred to frequencies over 30 MHz. The UHF connector is the most common connector in amateur radio applications up to 150 MHz.
* [F-Type][09] - The F connector is a coaxial RF connector commonly used for "over the air" terrestrial television, cable television, satellite television, and cable modems. It is usually connected to RG-6/U coax cable or with RG-59/U cable.
* U.FL - [Three Quick Tips About Using U.FL](https://learn.sparkfun.com/tutorials/three-quick-tips-about-using-ufl)

## Why 50 and 75 Ohms
There is a prevalence of 50 ohm coax.
Sure, you sometimes see 75 ohm coax, but overwhelmingly, RF circuits work at 50 ohms.
Apparently in the 1930s,
radio transmitters were pushing towards higher power levels.
You generally think that thicker wires have less loss.
For coax cable carrying RF though, it’s a bit more complicated.
The impedance is a function of the dielectric material,
the diameter of the center conductor,
and RF signals exhibit the skin effect (they don’t travel in the center of the conductor)

When you put all this together,
you learn that the loss of the cable is minimized at 77 ohms for a cable with air dielectric.
Of course, that’s not 50 ohms but closer to the 75 ohms used to carry weak antenna signals in TV systems.
According to [Microwaves 101][12], choice of 50 ohms is a compromise between power handling capability
and signal loss per unit length, for air dielectric.
For cheaper commercial cables, such as those that bring CATV to your home,
an impedance 75 ohms probably was a compromise between low loss and cable flexibility.

## Sources
* [Coaxial Cable FAQs](http://www.cableorganizer.com/articles/coaxial-cable-faqs.html)
* [Coaxial Cable Solutions Guide](http://www.digikey.com/Web%20Export/Supplier%20Content/GenCable_42/PDF/GenCable_CoaxialCable.pdf?redirected=1)
* [Coaxial cable](http://en.wikipedia.org/wiki/Coaxial_cable)
* [Common Coaxial Connectors](http://ecee.colorado.edu/~kuester/Coax/connchart.htm)
* []()
* []()


----


# USB Cables
USB cables are used to transfer data, power devices, and often both.
Sometimes, when selecting a random USB cable our devices do not work, charging is too slow, etc.
Your not sure if a crappy USB cable is the reason.

* [Avoid Surprises: How good are USB cables and how can you test yours?](https://www.youtube.com/watch?v=n70N_sBYepQ)
* [Is it me or is it USB?](https://www.tindie.com/products/nerfhammer/is-it-me-or-is-it-usb/)
* [Smart & Secure Fast-Charge USB Cable and Adapter](https://www.kickstarter.com/projects/andyfei/smart-and-secure-fast-charge-usb-cable-and-adapter)

What is a smart charging USB port? What's the difference between a smart one and a 1 or 2.1 a charger? - https://www.quora.com/What-is-a-smart-charging-USB-port-Whats-the-difference-between-a-smart-one-and-a-1-or-2-1-a-charger

## USB Cable Types
Your next phone or laptop will have a USB Type-C port for charging.
Type-C cables will subject to greater loads, and therefore,
will require higher levels of manufacturing tolerances.

* **USB Type-C** will not just give you data speeds which are 20 times more than USB 2.0,
but it also draws more power, A LOT more of it.
A regular Type-C cable is able to deliver 3A of current, while higher spec ones go up to 5A.
USB 2.0 can only support anywhere from 500mA up to 2A.

It’s 2019 and USB-C is still a mess - https://www.androidauthority.com/state-of-usb-c-870996/
The Problem With Micro-USB Cables - https://tekbotic.com/blogs/tekblog/how-to-fix-loose-micro-usb-cable

## The Annoyances of USB Charging
Most computers' USB ports can only charge smartphones slowly -- at 0.5 Amp max. Charge current, measured in Amp, indicates how fast it charges; e.g., 1.0 Amp means charging twice as fast as 0.5 Amp.

Worse yet, most computers' USB ports can't charge iPad or other tablets because they require higher charge current (1.0 Amp or higher). Some can still be charged, but very slowly.

Compatibility issues: USB chargers from different vendors often don't play nice with each other. A few examples: (1) the official iPad charger can't charge Samsung Galaxy tablets and some other tablets; (2) the official Samsung Galaxy tablet charger can't charge iPad; (3) some after-market chargers can charge one type of devices (iPad or Android tablet) at high speed (2 Amp or higher) but they charge the other type of devices at much reduced speed.

Many after-market chargers don't charge your phone or iPad/tablet as fast as they claim: many may claim they can charge at 1 Amp for phones and 2 Amp for iPad and other tablets, but the actual charging speed may be just half of that. That include some the so-called Smart or Universal chargers that are supposed to be cable to charge both iPad and other tablets at 2 Amp or higher.

Hacker attack! If you use a regular USB cable to connect your smartphones to a computer that has been compromised by a hacker, it is possible for the hacker to steal data off your phone; or worse, compromise your phone. It has been found that, it is even possible to hide a hacking device inside a normal-looking charger that is capable of stealing data from your phone or compromising it. Be careful when connecting your phone/tablet to a public computer or charger.
Introducing Smart & Secure Fast-Ch

They stop fitting snug in your device. They get loose, they fall out and stop charging or transferring data



[01]:http://en.wikipedia.org/wiki/Waveguide_(electromagnetism)
[02]:http://en.wikipedia.org/wiki/Coaxial_cable
[03]:http://www.jonard.com/jonard-ecommerce/control/category/~category_id=WIRE_STRIPPERS
[04]:http://en.wikipedia.org/wiki/RCA_connector
[05]:http://en.wikipedia.org/wiki/Sma_connector
[06]:http://en.wikipedia.org/wiki/MCX_connector
[07]:http://en.wikipedia.org/wiki/Bnc_connector
[08]:http://en.wikipedia.org/wiki/PL259
[09]:http://en.wikipedia.org/wiki/F_connector
[10]:http://en.wikipedia.org/wiki/SMB_connector
[11]:http://ecee.colorado.edu/~kuester/Coax/connchart.htm
[12]:http://www.microwaves101.com/encyclopedias/why-fifty-ohms
[13]:
[14]:
[15]:
[16]:
[17]:
[18]:
[19]:
[20]:
