Title: Coaxial Cable Guide
Date: 2100-01-01 00:00
Category:
Tags: Coaxial Cable
Slug: coaxial-cable-guide
Author: Jeff Irland
Summary: bla bla bla

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
* [BNC][07] - The BNC connector is a miniature quick connect/disconnect RF connector used for coaxial cable and ideally suited for cable termination for miniature-to-subminiature coaxial cable (e.g., RG-58, RG-59). They are used with radio, television, and other radio-frequency electronic equipment, and test instruments. BNC connectors are made to match the characteristic impedance of cable at either 50 Ω or 75 Ω and frequencies below 4 GHz.
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
