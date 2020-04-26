
# Latest Version
* [The Evolution of a 3D Printed Off-Road R/C Car](https://hackaday.com/2020/04/09/the-evolution-of-a-3d-printed-off-road-r-c-car/)
    * [Tarmo4 RC Project](https://docs.google.com/document/d/1hfrpDU1DQm6QKrioJsxxcMdq8ormYTlwAHaiswDuSHI/edit#heading=h.flrf7kcrqwuu)

################################################################################


* See  - /home/jeff/blogging/content/ideas/3d-printed-radio-controlled-car.md

* [Excellent 3D-Printed RC Car Features Variety of Drivetrain Options](https://blog.hackster.io/excellent-3d-printed-car-features-variety-of-drivetrain-options-d8c1c552b285)
* [Nearly Entirely 3D Printed RC Car Is 4WD Fun](https://hackaday.com/2019/04/09/nearly-entirely-3d-printed-rc-car-is-4wd-fun/)
    * [3D Printed RC Car V3 -- Tarmo3 -- Front Parts](https://www.thingiverse.com/thing:3546277)
    * [3D Printed RC Car V3 -- Tarmo3 -- Drivetrain](https://www.thingiverse.com/thing:3547058)
    * [3D Printed RC Car v3 -- Tarmo3 -- Rear Parts](https://www.thingiverse.com/thing:3545173)
    * [BOM](https://docs.google.com/spreadsheets/d/10gS0H6_ADVWPt2O_ZIXLfmCgJAxFySBps5DkU6ocSow/edit#gid=0)


* [combine multiple .STL files to create a re-mix object](https://www.youtube.com/watch?v=sUe-Lnioagk)
* [FreeCAD Assembly Tutorial](https://www.youtube.com/watch?v=mnkecA9S7kc)
* [Convert STL to STEP](https://blog.bantamtools.com/convert-stl-to-step)
* []()
* []()
* []()



# Importing Tarmo3 Into FreeCAD For Assemble
I want to bring the 3D printer ready STL files in Thingiverse into FreeCAD.
This will allow me to further refine the design, if I so desire,
and I can create a FreeCAD assembly of the Tarmo3.

## Covert Files From STL to STEP
The first step in doing this, is to convert the Thingiverse STL files into STEP files.

>**NOTE: Since STLs are meshes, the resulting model won't be as
>precise as parts originally made as solids.

* [Convert STL to STEP](https://blog.bantamtools.com/convert-stl-to-step)
* [How to convert STL to STEP using FreeCAD](https://grabcad.com/tutorials/how-to-convert-stl-to-step-using-freecad)

# RC Basics
* [Introduction to Remote Control](https://www.youtube.com/playlist?list=PLYsWjANuAm4oWuE5ZDX4TAiHBv2i0Xl4m)

## Radios

### Open Source Radio Controller
* [Perfecting the Open Source RC Controller](https://hackaday.com/2019/05/15/perfecting-the-open-source-rc-controller/)
* [DEVELOPING THE ULTIMATE OPEN SOURCE RADIO CONTROL TRANSMITTER](https://hackaday.com/2019/04/03/developing-the-ultimate-open-source-radio-control-transmitter/)

### RC TX/RX Protocols Explained
* [RC TX RX PROTOCOLS EXPLAINED](https://oscarliang.com/pwm-ppm-sbus-dsm2-dsmx-sumd-difference/)
* [DIY PWM to PPM converter for 2.4GHz receiver using Arduino](https://www.electronicsinfoline.com/pin/23450/)

## Battery

Lithium polymer (LiPo) batteries are a wonder of the modern age
and have revolutionized the hobby of flying RC planes.

* [Understanding RC Batteries By Horizon Hobby](https://www.youtube.com/watch?v=PaPpRaJrzyI)
* [All about lipos for RC models](https://www.youtube.com/watch?v=ZJHlJYDJohc)

## Balance Charger
A balance charger (or balancer) does this by monitoring the individual cell voltages in a pack through a connector on the pack (called a balance connector) and adjusting their rate of charge accordingly. When such a balancer is built into a charger, the charger is known as a Balance Charger or Balancing Charger.

[Tenergy TB-6B 50W Balancing Charger][50]
for NiMH/NiCD/Li-PO/Li-Fe/SLA batteries.
It can a 1S to 6S cell Li-Ion/Li-Po/LiFe pack with a maximum current of 5A
and maximum discharge current of 1A.
it contains a wide range of charging connectors:
HiTech, JST, Tamiya, Mini Tamiya, Deans, bare leads, and EC3.
And if you have a wide range of battery types you are using,
it can store up to 10 different battery charging profiles.

[Tenergy TB-6B manual](https://system.na2.netsuite.com/core/media/media.nl?id=1036221&c=671216&h=41002c9378503e4db96c&_xt=.pdf)

* [Understanding RC Battery Chargers by Horizon Hobby](https://www.youtube.com/watch?v=MLfILtFVE_Q)
* [The 4 Best LiPo Chargers for the Money – Reviews 2019](http://www.mechanicalcaveman.com/best-lipo-charger-review-for-the-money-rc-lithium-polymer-battery/)

## Brushless Motor

## Electronic Speed Controllers (ESC)
* [RC Basics - Understanding Electronic Speed Controllers (ESC)](https://www.youtube.com/watch?v=OZNxbxL7cdc)

### Open Source ESC
* [An Open Source ESC For Brushless Motors](https://hackaday.com/2019/05/15/an-open-source-esc-for-brushless-motors/)
* [Battle Tested Current Limiter for Cheap DC Motor Controllers](https://hackaday.com/2019/05/11/battle-tested-current-limiter-for-cheap-dc-motor-controllers/)

### Firmware ESC

**Triditional** - Perfect for planes and helicopers use, setup via programming card or PC software
**SimonK** - One of the first specialized multiroto firwares. Faster throttle response and all of the other other settings done for you.
**BLHeli** - All of the power of SimonK with the ability to change elements like triditional using PC software.  Can be better with low spped motors.

## Battery Eliminator Circuits (BEC)







################################################################################


I have been passively investigating options for creating
an autonomous radio controlled car for sometime.
Such a project has the possibility of mixing many technologies
(e.g. RC car tech long with a wide range of sensors, SLAM, FPV, machine learning, etc.)
and could occupy my attention for a long time.
I started assembling a list of like-projects that address some of what I envisioned
(see the list section "Similar Projects" at the very end of this write-up)
but I didn't know where to begin and I didn't want to constraint myself to an initial build.

I then spotted a [write-up on Hackaday][21]
about a nearly 100% 3D printed RC Car designed by Kris Shellman.
Kris' website, [Engineering Nonsense][22],
has links to [posted plans][23] and [videos on Youtube][24]
for his PLA 3D printed RC car he calls Tarmo3.
This is [Kris' third version][25] of a 3D printed RC Car, now with 4 wheel drive
([2W vs 4W drive][20] - 4 wheels give you more traction/control but with higher maintenance).
I was impress with everything I saw,
since it appeared to be superior to all the other 3D printed RC cars out there,
so I decide to make my own.

# The RC Car World
The term "R/C" has been used to mean both "remote controlled" and "radio controlled",
where "remote controlled" includes vehicles that are connected to their controller by a wire,
but common use of "R/C" today usually refers to vehicles controlled by a radio-frequency link.
The world of [RC has many choices][04],
but you could lump all RC’ers into one of two groups (or [maybe you shouldn't][15]):
those who race and those who don’t.

* **Racer -** As the name implies, this is all about competitive racing other people.
This is serious stuff with high speed, reputations on the line, trophies & money at stake.
Check out the video ["This is RC Racing"][16].
* **Basher -** Bashing is racing without rules or regulations.
It is just driving and testing the limits of your RC car or truck.
Bashing includes making high jumps and not worrying too much about the landing.
Wrecks are not something to be avoided but rather something to laugh about.
See the video [What Is RC Bashing-The Basics][14].

I'm building my to get some first hand learning about the technology,
with a long term plan to repurpose it for autonomous driving,
and short term plan to entertain my grandson.
So I believe my interest fall closer to basher than racer.


----


# Components of the RC Car
A complete bill of materials, minus the 3D printed components,
can be found in the Excel spreadsheet `3d-car-bom.xlsx`.
My sources for the components include:

* Amazon (of course)
* [McMaster-Carr](https://www.mcmaster.com/)
* [Bolt Depot](https://www.boltdepot.com/)
* [Banggood](https://www.banggood.com/)
* [Holmes Hobbies](https://holmeshobbies.com/)

## 3D Printed Car Body
The car body comes from a [write-up on Hackaday][21]
and the car body is almost entirely printed on a 3D printer.
The only exceptions are the wheels & tires, suspension spring & shock absorber,
differential [spider gears][17],
gear box torsion spring, and the nuts & bolts to hold it all together.
All the printable parts are list on [Thingiverse][18].

## Radio Controller
The [remote controller, transmitter, radio controller][45], whatever you call them
come in pistol grip transmitter (typically used with RC cars)
and stick transmitter (typically used with aircraft).
I choose the pistol grip [DumboRC X6 2.4G 6CH Transmitter with X6FG Receiver][05].
Its an affordable easy to use Transmitter for cars,
and appears to be getting [good ratings][39].

The X6FG is a 6 channel receiver (voltage range: 4.8-12v, support 1S-3S batteries)
can handle just about any RC car model setup with extra auxiliary accessories.
Receiver response time is 3 milli-seconds and a range of distances from 400-500 meters.
To top it off, the X6FG receiver has a built in Gyro for applications where steering stabilisation is needed.
It also has a throttle speed limit adjustment function, allowing beginners to practice at a safe speed.

DumboRC X6 2.4G 6CH Transmitter documentation can be found
[here](https://www.banggood.com/DumboRC-X6-2_4G-6CH-Transmitter-with-X6FG-Receiver-for-JJRC-Q65-MN-90-Rc-Car-Boat-Tank-Model-Parts-p-1454329.html?ID=229&cur_warehouse=USA)

* [DumboRC radio - 6 channels, Gyro and V-Mixer in this price ??](https://www.youtube.com/watch?v=5hUZ9TYRY3w)
* [Dirt Cheap RC Car Rear Wheel Steer Conversion](https://www.youtube.com/watch?v=WnXzBBrqob4&feature=youtu.be)

* [Perfecting the Open Source RC Controller](https://hackaday.com/2019/05/15/perfecting-the-open-source-rc-controller/)
* [DEVELOPING THE ULTIMATE OPEN SOURCE RADIO CONTROL TRANSMITTER](https://hackaday.com/2019/04/03/developing-the-ultimate-open-source-radio-control-transmitter/)

* [10 RC LiPo Mistakes & How to Avoid Them](https://www.youtube.com/watch?v=lQtKgiv70DQ)

>**NOTE:** After seeing the write-ups below, I considered making my on radio controler,
>but I considered it would be distraction from my main objective.
>
>* [Joy Bonnet Pack without Soldering - Includes Pi Zero WH](https://www.adafruit.com/product/4085)
>* [Arduino RC Transmitter For Homebrew Projects](https://hackaday.com/2019/01/15/arduino-rc-transmitter-for-homebrew-projects/)
>* [DIY Arduino based RC Transmitter](https://www.youtube.com/watch?v=-BDCmwNssiw&app=desktop)

## Battery
[Gens ace 5000mAh 11.1V 3S 50C 3 Cell LiPo Battery Pack][32] with XT60 and Deans Plug

## Battery Charger
For charging the LiPo battery,
I purchased the [Tenergy TB6-B Balance Charger/Discharger][27],
one of the [top of the line chargers][28].
It can charge 1S to 6S battery packs for NiMH/NiCD/LiPo/LiFe
and comes with octopus multi-charging harness with
tamiya, mini tamiya, JST, HiTec, EC3, Deans connectors to be compatible with many charging connectors.
It has features like Li-ion / LiPo balancing charging, fast charging,
data storage, cyclic charging and discharging,
with a maximum charge current is 5A, and the maximum discharge current is 1A.

For operating the charge,
check out the [TB6B Product Manual][29],
or better yet, [this video][30] or [this video][31].
For learning more about battery care and safety,
consider the following videos:

* [Top 5 causes of Lipo Battery Fires - Lipo charging mistakes](https://www.youtube.com/watch?v=LIWUYSDWjfk)
* [Lessons In Li-Ion Safety](https://hackaday.com/2019/11/13/lessons-in-li-ion-safety/)

# Steering Servo
* [Vertical Servo Mount Kit for Tarmo3](https://www.thingiverse.com/thing:3633225)

## LiPo Battery Storage Bag
* [Hobbymate Lipo Safety Bag Review and Test](https://www.youtube.com/watch?v=dSnYDvj3BDs)

# Motor & ESC
Choosing a motor and electronic speed controller(ESC) can be challenging
and its not always clear what is the best for you.
I I just went with what my [source][21] used.
The article ["Choosing ESC and motor for Short Course -2018 Edit"][35],
the video ["Selecting A Brushed Speed Controller - ESC Terms to Know & Features To Look For - Holmes Hobbies"][38],
and the [less than stellar ratings][36] of my ESC,
give me reason to believe I made a poor decision.
But the motor/ESC are the most expensive components of a RC car
and maybe my choose is good for a newbie like me.

## Motor
You will not find much information online about the
[EMAX Toolcool GT2215-09 1180KV Outrunner Brushless Motor][37]
I purchased for this RC car.
Seems like a rather plain, general purpose motor,
although it appears to be primarily designed for quadcopters.

## Electronic Speed Control (ESC)
An [Electronic Speed Control (ESC)][10] is an electronic circuit that
controls and regulates the speed of an electric motor.
It may also provide reversing of the motor and [dynamic braking][09].

The ESC receive an input pulse position modulation (PPM) signal from the receiver.
This PPM signal is the exact same type of signal that controls the servos.
The ESC uses this proportional signal from the throttle channel of the receiver
to determine how much power to send to your motor to maintain the desired speed.

In the early days of RC technology, it wasn't uncommon to use
one battery for the receiver and another for the motor.
Now a days a battery eliminator circuit (BEC) with in the ESC to the receiver battery.
The high voltage of your LiPo pack is stepped down by the BEC to
a lower voltage of 5-6 volts to power a typical receiver.

An ESC will have three sets of wires.
One set of leads will plug into your your RC car's main battery.
The second set of leads will have a standard servo wire that plugs
into the throttle channel of your RC car's receiver.
The third set of wires actually power the motor.

ESC's are rated for a maximum current.
The more current an ESC is rated for,
the more expensive and heavier it will be.
Choose an electronic speed controller that is rated for slightly
more than what your motor will pull at full throttle.

LiPo batteries will be permanently damaged if the voltage of any cell drops below 3.0 volts.
For this reason, LiPo batteries require an ESC with a low voltage cutoff (LVC).
The LVC will cut the power to the motor when the voltage reached 3.2V,
or whatever you set the LVC to be.

You will also need to choose an ESC that can handle the voltage of the battery pack you plan to use.
The voltage rating for each ESC is clearly stated in the specifications.

* [RC Basics - Understanding Electronic Speed Controllers (ESC)](https://www.youtube.com/watch?v=OZNxbxL7cdc)
* [An Open Source ESC For Brushless Motors](https://hackaday.com/2019/05/15/an-open-source-esc-for-brushless-motors/)

## Hobbypower 60A SL V2 ESC
I used the recommended [Hobbypower 60A SL V2 ESC][12]
which suports 2-3 cells LiPo
with a continuous current 60A and burst current 380A.
It has a built in BEC who's output is 6V/1.5A to power the radio transmitter.

>**NOTE:** A [battery eliminator circuit (BEC)][34] is an electronic circuit designed
>to deliver electrical power to other circuitry without the need for multiple batteries.
>This ESC has a builtin BEC to deliver power to the radio system.

* Racing Features
    * It has three running modes: Racing mode (Forward), Forward/Backward mode, and Rock Crawler mode.
    * Proportional ABS brake function with 4 steps of maximum brake force adjustment,
    8 steps of drag-brake force adjustment and 4 steps of initial brake force adjustment.
    * It has 9 start modes (Also called "Punch" ) from "Soft" to "Very aggressive".

* Protection Featues
    * Multiple protection features: Low voltage cut-off protection for lithium or nickel battery,
    Over-heat protection, throttle signal loss protection, motor blocked protection.

* Programming Feature
    * With 8 steps of timing adjustment to get the best compatibility with various of motors.
    * Easily program with only one button and compatible with pocket-sized program card.
    * The ESC is USB supported. The firmware of the ESC can be updated through
    an USB adapter on the Advanced LCD Program Box (Optional device).

* [An Open Source ESC For Brushless Motors](https://hackaday.com/2019/05/15/an-open-source-esc-for-brushless-motors/)
* [Battle Tested Current Limiter for Cheap DC Motor Controllers](https://hackaday.com/2019/05/11/battle-tested-current-limiter-for-cheap-dc-motor-controllers/)

Hobbypower 60A SL V2 Brushless Speed Controller ESC - https://www.amazon.com/gp/product/B071777MG2/
http://www.rcuniverse.com/forum/rc-electric-off-road-trucks-buggies-truggies-more-147/11640199-60a-sl-brushless-esc.html
http://www.hobbywing.com/products/enpdf/EzRun60A.pdf

## ESC Programming Card
The Hobbypower 60A SL V2 ESC is programmable with [HobbyWing LED Program Card][11].

* [How To Program HobbyWing ESC](https://www.youtube.com/watch?v=OxKaE6xs-Kc)

[User Manual Of The Program Card For Brushless ESC](https://p11.secure.hostingprod.com/@site.hobbypartz.com/ssl/webfolder/hobbypartz/HW-10-v2.pdf)

# Gears
* [3D Printed Gears & Drivetrain in the OpenRC Truggy RC Car](https://www.youtube.com/watch?v=pYw43f6THb8)

# Tires

* [How To: Glue RC Short Course Tires](https://www.youtube.com/watch?v=d0X_2GJI1Fw)
* [Glue Your R/C Tires Like a Pro](https://www.youtube.com/watch?v=6pTghcWoNUo)
* [Adam Drake explains how to clean and glue Pro-Line tires](https://www.youtube.com/watch?v=AseHzskElek)
* [HOW TO BREAK IN TIRES || Tire prep methods explained](https://www.youtube.com/watch?v=BqxmfrW2KDM)

# RC Suspension Tuning
* [RC Suspension Tuning Guide](http://www.competitionx.com/rc-tuning-guide/)

## Shocks
* [RC Suspension Tuning Guide – Shocks](http://www.competitionx.com/rc-tuning-shocks/)

# Open vs Locked Differential
A [differential][06] (aka open differential)
is a gear train with three shafts that has the property
that the rotational speed of one shaft is the average of the speeds of the others,
or a fixed multiple of that average.
In automobiles and other wheeled vehicles,
the differential allows the outer drive wheel to rotate faster than the inner drive wheel during a turn.
The average of the rotational speed of the two driving wheels equals the input rotational speed of the drive shaft.
Therefore, an increase in the speed of one wheel is balanced by a decrease in the speed of the other.

A [locking differential][07] is designed to overcome the chief limitation
of a standard differential (aka open differential) by essentially "locking" both wheels
on an axle together as if on a common shaft.
This forces both wheels to turn in unison,
regardless of the traction (or lack thereof) available to either wheel individually.
A locked differential can provide a significant traction advantage over an open differential,
but only when the traction under each wheel differs significantly.

Differential Gear Set: - https://www.amazon.com/gp/product/B000XQ3GJ8/
output gears (2)/ spider gears (2)/ spider gear shaft/ diff carrier support


* [How a Differential works?](https://www.youtube.com/watch?v=SOgoejxzF8c)
* [Open vs Locked Differential - Explained](https://www.youtube.com/watch?v=gwJEU7p9U2Q)

# Torsion Spring
A [torsion spring][08] is a spring that works by twisting its end along its axis.
So its flexible elastic object that stores mechanical energy when it is twisted.
When it is twisted, it exerts a twisting force (aka torque) in the opposite direction,
proportional to the amount (angle) it is twisted.

In the case of the Tarmo3 RC Car,
there is a torsion spring in the drive train gearbox.


----


# RC Car Assembly and Configuration
While the assembly and configuration of this car took much more time than I anticipated,
I didn't hit any major problems.
I suspect the difficulty for me was this was the very first RC car I have ever encountered
and the fact that the RC car has no assembly plans to follow.
What follows should correct that later point.

## Step 1: Print the Body - DONE
Leveraging the [STL file's][48] from [Thingiverse][23],
I printed the RC car parts using a [Creality CR-10 3D-Printer][46]
and Ultimaker's [Cura][47] slicer.
I made some minor adjustments and improvements,
like making some part solid PLA (aka 100% fill)
since they had a tendency to brake under load.

## Step 2: Pre-Assemble the Printed Body Parts - DONE
Once all the body parts were successfully printed,
I pre-assembled the body using a limited number of nuts & bolts
just to make sure all the part fit properly.
I assembled the entire car, including steering servo,
and the motor attached to the drive train.
Absent was the battery, ESC, radio receiver.
I did this to make sure all the mechanics of the RC car was in good working order
and there would be no problems during final assembly.

## Step 3: Prepare and Charge the Battery - DONE
The [Gens ace 5000mAh 11.1V 3S 50C 3 Cell LiPo Battery Pack][32]
comes with XT60 and Deans Plug (not soldered on).
I had to install a male [Tamiya connector][13] on the battery
so it could mate with the [Hobbypower 60A SL V2 ESC][12] I'm using,
which has a female Tamiya connector.

I then studied the [Tenergy TB6-B Balance Charger/Discharger manual][29]
and did a balance charge on the battery.

## Step 4: Assembled the Whole Car - DONE
Next I finished the physical assembly of the RC car by including a bolts
and tight them down as required.  I also greased all gear boxes along the drive train.
I also install the electrical components: battery, ESC, radio receiver.

* **ESC** - The three wires for the motor can be connected in any order.
If the motor turns in the wrong direction, just exchange the two outer most ESC wires.
(see [RC Motor and ESC Wiring][26]).
* **Radio Receiver** - Channel 1 is steering and channel 2 is throttle.
Insert the steering servo in channel 1 and the ESC into channel 2.
In both cases, as shown in this [video at about 2:30 minutes][19],
the white wire should be facing towards the receiver's antenna.
* **Battery** - The battery attaches to the ESC.

## Step 5: Binding the Transmitter with the Radio Receiver - DONE
To bind the DumboRC X6 transmitter with its X6FG receiver,
first power up the transmitter and then the RC car via the switch on the ESC.
Press the very small button on the receiver.
The LED on the receiver should flash fast meaning it has entered binding mode
and it will automatically look for the nearest transmitter signal.
The light on the transmitter should be solid on after a successful binding.
See the [DumboRC X6 2.4G 6CH Transmitter documentation][33] for more information.

## Step 6: Transmitter Adjustments - DONE
Transmitters typically feature adjustment controls
that alter the receiver controls.
These refinements allow the driver to remotely alter things like the steering dead point
and how sensitive the steering or throttle controls are.

### Step 6A: Calibrating the ESC
ESC calibration is about telling you ESC what your transmitter's
full throttle point, full brake point, and neutral point is.
I following the [Hobbypower 60A SL V2 ESC user manual][43] to perform this task.

First, lets set the switches and trim pots on the radio controller
to their proper initial conditions for programming.
Pop the lid on the radio controller and note that:

* on the radio controller, make sure the right-side (throttle) slide switch is normal (NOR)
* right-side first row trim pot set to zero (set arrow vertical)
* right-side second row of trim pots set to 100%.

Next we do the following on your radio controller and ESC:

* Turn on the radio controller
* Turn on the ESC while holding down the programming button on the ESC.
When the red LED on the ESC begins to flash, make sure to release the programming button immediately.
* With the throttle trigger in neutral, push the ESC programming button and hear one beep.
* With the throttle trigger pulled all the way back, push the ESC programming button and hear two beeps.
* With the throttle trigger pushed all the way forward, push the ESC programming button and hear three beeps.
* Switch off the ESC.

Your throttle range is now set.
You can use the right-side second row trim pot to adjust the range of the throttle,
in effect slowing down the car.

For more information, check out these videos:

* [What is ESC calibration on RC speed controls?](https://www.youtube.com/watch?v=MIpvyi8vjHk)
* [Throttle Range Programming for your RC Cars](https://www.youtube.com/watch?v=CBI-SZgUkvQ)
* [HOBBYWING Calibration - ESC Calibration - ESC Setup - ESC Programming](https://www.youtube.com/watch?v=RRYwr14FwjE)
* [How to slow down your rc car for kids and beginners using endpoint EPA controls](https://www.youtube.com/watch?v=Bdl_lpH3E04)

# Step 6B: Slow Down the RC Car
You may want to slowing down your remote control car (I did!)
because your new to the RC car game or kids are using the controls.
You do this by adjusting the right-side second row trim pot to much less tha 100%.

For more information, check out these videos:

* [How to slow down your rc car for kids and beginners using endpoint EPA controls](https://www.youtube.com/watch?v=Bdl_lpH3E04)

### Step 6C: Adjust Steering Trim and Dual Rate
**Steering Trim** is the way the radio helps the car track perfectly straight,
and generally, should be checked/adjusted before every run.
To set your steering trim, it’s easiest to be behind the vehicle and have the vehicle drive away from you.
If your vehicle veers to the left, dial the steering trim knob to the right.
If it veers to the right, give it that twist to the left.

**Steering Dual Rate** gives you the ability to control the amount of travel,
both left and right, on the steering servo.
Dialing the dual rate knob down (counter-clockwise) will help when doing higher speeds
so smaller steering input will not result in hard turns.
Dialing the dual rate knob up (clockwise) will help in tight tracks where speeds are lower.

Do the following on your radio controller:

* on the radio controller, make sure the left-side (steering) slide switch is normal (NOR)
* left-side first row trim pot set to zero
* left-side second row of trim pots set to 100%.

For more information, check out these videos:

* [How To Use Your Steering Trim Adjustment](https://www.youtube.com/watch?v=d4g9MvWSSA0)


## Step 7: Programming the ESC
ESC's are programmable,
usually through a [programming card][11],
or through the reciever / transmitter.
via a "USB LinK" using a [PC based software][40], a [Castle Link cables][42],
and of course the right [ESC firmware][41].
There are even [ways to program an ESC without RF transmitter or programming card][49].
It will vary depending on the ESC,
but usually they have programmable braking, starting, battery voltage cutoff,
and other types of settings.

I'm programming my ESC with [HobbyWing LED Program Card][11].

I'm using HobbyWing LED Program Card, **not the HobbyPower version of the program card**.
As a result, I **cannot** use the table on the program card,
but instead use the table in the
I setup my ESC with the following settings:

Table 1 (EXRUN MAX Series Car ESC)

| Item | Value |                  Notes                    |
|:----:|:-----:|:------------------------------------------|
|   1  |   2   | Running Mode - forward/reverse with brake |
|   2  |   2   | Drag Brake Force -                        |
|   3  |   1   | Low Voltage Cut-Off Threshold -           |
|   4  |   3   | Start Mode (Punch) -                      |
|   5  |   4   | Maximum Brake Force -                     |
|   6  |   2   | Maximum Revers Force -                    |
|   7  |   1   | Initial Brake Force -                     |
|   8  |   2   | Neutral Range - 9% (normal)               |
|   9  |   5   | Timing - 15                               |
|  10  |   1   | Over-heat Protection - enabled            |
|  11  |   1   |                                           |

For some good video to learn more about programming the ESC,
check out the following for using Programming Card:

* [How To Program HobbyWing ESC](https://www.youtube.com/watch?v=OxKaE6xs-Kc)
* [How to program a Hobbywing sct pro ESC using the LED program box](https://www.youtube.com/watch?v=f-Sd6zGGEiE)
* [How to: Program the Hobbywing 1080 ESC](https://www.youtube.com/watch?v=BMjtsGJlYVM)
* [Programming your ESC's Running Mode](https://www.youtube.com/watch?v=9EeuaofVwvE)

## Step X: Program Receiver Gyro Mode
You can see the difference with the gyro off and on in [this video][44].

see "Receiver with Gyro function" in https://www.banggood.com/DumboRC-X6-2_4G-6CH-Transmitter-with-X6FG-Receiver-for-JJRC-Q65-MN-90-Rc-Car-Boat-Tank-Model-Parts-p-1454329.html?ID=229&cur_warehouse=USA

https://www.rc.futaba.co.jp/english/dl_manual/cgy440_e.pdf

## Step X: Tire Preparation - DONE
I didn't realize the amount of effort serious RC car racers put into preparing tires!
I didn't bother with any of this.

* [Glue Your R/C Tires Like a Pro](https://www.youtube.com/watch?v=6pTghcWoNUo)
* [Adam Drake explains how to clean and glue Pro-Line tires](https://www.youtube.com/watch?v=AseHzskElek)
* [HOW TO BREAK IN TIRES || Tire prep methods explained](https://www.youtube.com/watch?v=BqxmfrW2KDM)

## Step X:
## Step X:
## Step X:






# Telemetry
* [How To: Install Traxxas Telemetry Expander System into Your Rustler](http://www.competitionx.com/news-feed/how-to-install-traxxas-telemetry-expander-system-into-your-rustler/)
* [Bringing Pro-Level Data Recording To RC Racing](https://hackaday.com/2019/08/04/bringing-pro-level-data-recording-to-rc-racing/)
* [Testing SkyRC GPS Speed Run Meter & Data Logger](https://www.youtube.com/watch?v=Peh78u-0qyI)

## ESP32 Long-Range
* [External antennas and ESP32 Long-Range mode](https://www.youtube.com/watch?v=2rujjTOPIRU&app=desktop)
* [Wi-Fi Antennas with Gain and ESP32 Long-Range Mode (part2)](https://www.youtube.com/watch?v=PUppoaePi3A)

# Radio End point Adjustments (EPA)

# Camera
* [Lane Keeping RC Car Uses OpenCV](https://hackaday.com/2019/10/16/lane-keeping-rc-car-uses-opencv/)


----


# Similar Projects
These project can be a source of inspiration and code for the work above.

## Donkey Car
Donkey Car is a An open source DIY self driving platform for small RC scale cars.
It is developed for hobbyists and students with a focus on allowing
fast experimentation and easy community contributions.
Donkeycar community has built a self driving library for Python.

* [Donkey Car](http://www.donkeycar.com/)
* [Stereo Vision and LiDAR Powered Donkey Car](https://www.hackster.io/bluetiger9/stereo-vision-and-lidar-powered-donkey-car-575769)
* [Build an Autonomous R/C Car with Raspberry Pi](https://makezine.com/projects/build-autonomous-rc-car-raspberry-pi/)
* [Modular Robotics Made Easier With ROS](https://hackaday.com/2018/05/31/modular-robotics-made-easier-with-ros/)
* [Buy Or Build An Autonomous Race Car To Take The Checkered Flag](https://hackaday.com/2018/11/30/buy-or-build-an-autonomous-race-car-to-take-the-checkered-flag/)
* [Adventures building a Self Driving RC Car](https://rahulrav.com/blog/selfdriving.html)
* [AutoCarJetsonNano](https://github.com/bastulli/AutoCarJetsonNano)

Building an Autonomous Vehicle
* [Building an Autonomous Vehicle Part 1: Using Behavioral Cloning to make a Self-Driving Car drive like yourself](https://medium.com/@akhilsuri194/building-an-autonomous-vehicle-part-1-using-behavioral-cloning-to-make-a-self-driving-car-drive-92622d1c2dfe)
* [Building an Autonomous Vehicle Part 2: Using Computer Vision to detect lane lines on road](https://medium.com/@akhilsuri194/building-an-autonomous-vehicle-part-2-using-computer-vision-to-detect-lane-lines-on-road-31ea3cda0cbd)
* [Building an Autonomous Vehicle Part 3: Using Machine Learning techniques to detect vehicles on road](https://medium.com/@akhilsuri194/building-an-autonomous-vehicle-part-3-using-machine-learning-techniques-to-detect-vehicles-on-road-6cfdfbd926f8)
* [Building an Autonomous Vehicle Part 4.1: Sensor Fusion and Object Tracking using Kalman Filters](https://medium.com/@akhilsuri194/building-an-autonomous-vehicle-part-4-1-sensor-fusion-and-object-tracking-using-kalman-filters-66589e522965)
* [Building an Autonomous Vehicle Part 4.2: Sensor Fusion and Object Tracking using Extended Kalman Filters](https://medium.com/@akhilsuri194/building-an-autonomous-vehicle-part-4-2-8049cda5a92)
* [Building an Autonomous Vehicle Part 4.3: Sensor Fusion and Object Tracking using Unscented Kalman Filters](https://medium.com/@akhilsuri194/building-an-autonomous-vehicle-part-4-3-2a506e57d830)

## MIT RACECAR - Jetson RACECAR - RACECAR/J
[RACECAR/J][01] is derived from the open source [MIT RACECAR][02],
an “open-source powerful platform for robotics research and education”.
The RACECAR/J Chassis is based on the [TRAXXAS Slash 4×4 Platinum Truck][03],
an upgraded version of the normal Slash 4×4 which adds aluminum bits
and pieces such as C-hubs, steering blocks, rear hub carriers and axle nuts.

* [RACECAR](http://fast.scripts.mit.edu/racecar/)
* [MIT Autonomous RC Cars with NVIDIA Jetson embedded technology](https://www.youtube.com/watch?v=MCmgfHjMIKg)
* [Self Driving RC Car using Tensorflow and OpenCV/](http://ahmedmadbouly.me/Self-driving-RC-Car-using-Tensorflow-and-OpenCV/)
* [Jetson RACECAR](https://www.jetsonhacks.com/category/robotics/jetson-racecar/)
* [RACECAR/J](https://www.jetsonhacks.com/racecar-j/)
* [What is the difference between RACECAR projects?](http://www.jetsonhacks.com/2017/06/04/what-is-the-difference-between-racecar-projects/)

## Course Work
* [MIT 6.S094: Deep Learning for Self-Driving Cars](https://selfdrivingcars.mit.edu/)
    * https://github.com/marcotav/deepcars

## Autonomous RC Car
The general idea that Steven Daniluk has is to take an RC car,
attach a small computer and some sensors to it,
and enable it to drive around a track without any human controls.

* [Ghost — My Plan To Race An Autonomous RC Car](https://medium.com/hackernoon/ghost-my-plan-to-race-an-autonomous-rc-car-46a4b7f093cd)
* [Ghost II — Controlling An RC Car With A Computer](https://medium.com/hackernoon/ghost-ii-controlling-an-rc-car-with-a-computer-b1d1849d9e43)
* [Ghost III — Dead Reckoning Navigation](https://medium.com/hackernoon/ghost-iii-dead-reckoning-navigation-ffd6fd4de1cf)
* [Ghost IV — Sensor Fusion: Encoders + IM](https://medium.com/hackernoon/ghost-iv-sensor-fusion-encoders-imu-c099dd40a7b)
* [NAVIT](https://www.navit-project.org/)

* [TFmini Plus - ToF LIDAR Range Finder](https://www.seeedstudio.com/TFmini-Plus-LIDAR-Range-Finder-based-on-ToF-p-3222.html)
* [Homemade Lidar: OpenTOFLidar](https://hackaday.com/2020/03/24/lidar-system-isnt-just-a-rangefinder-anymore/)

## OpenPilot
[openpilot](https://github.com/commaai/openpilot)
is open source software built to improve upon the existing driver assistance in most new cars on the road today. Tesla Autopilot like functionality for your Toyota, Honda, and more.

## Remote Racing Car
This projects objective is to competitively a race RC cars over the internet,
in live races against other human opponents.
It makes use of a GoPro with special low-latency streaming software,
computer vision system for lap timing,
and automatic charging stations to help keep the cars juiced up for hours of play.

* [Race RC Cars From Anywhere On Earth](https://hackaday.com/2019/08/31/race-rc-cars-from-anywhere-on-earth/)

## 4G Rover - TKIRV
TKIRV (TK Internet Remote Vehicle) is a project idea to build a vehicle that
can be remotely controlled over the internet and can operate
indefinitely in the field through the use of solar power.

* [Video Streaming Like Your Raspberry Pi Depended on it](https://hackaday.com/2017/09/12/video-streaming-like-your-raspberry-pi-depended-on-it/)
* [Building a Raspberry Pi Rover: My Big Fat Linux Weekend](https://hackaday.com/2019/05/09/building-a-raspberry-pi-rover-my-big-fat-linux-weekend/)
a [A 4G Rover and the Benefits of a Shakedown Mission](https://hackaday.com/2019/09/12/a-4g-rover-and-the-benefits-of-a-shakedown-mission/)
* [TKIRV - Solar Powered Internet Rover](https://www.youtube.com/watch?v=J98U8cKF3cg&list=PLsc633rxag69uRwJf9E7wGeM3jIIy6vtt)

## Other Car's
* [Review: SunFounder Smart Video Car Kit for Raspberry Pi](https://www.elektormagazine.com/news/review-sunfounder-smart-video-car-kit-for-raspberry-pi/18054)
* [This Two-Wheeled RC Car Is Rather Quick](https://hackaday.com/2019/05/16/this-two-wheeled-rc-car-is-rather-quick/)
* [Self Driving Car Learns Online and On-board on Raspberry Pi 3](https://www.youtube.com/watch?v=0ibVhtuQkZA)
* [Autonomous Drifting using Machine Learning](https://www.youtube.com/watch?v=opsmd5yuBF0)
* [Active Suspension R/C Car Really Rocks](https://hackaday.com/2020/01/13/active-suspension-r-c-car-really-rocks/)

## Future Controller
I would like to have a simple, very protable controller / telemetry device for the RC Car.
Something as simple as this:

* [Bangle.js](https://banglejs.com/)
* [Badgy Is an ESP8266 E Ink Badge for DEF CON and More](https://www.hackster.io/news/badgy-is-an-esp8266-e-ink-badge-for-def-con-and-more-57ee5f3d54e2)




[01]:http://www.jetsonhacks.com/category/robotics/racecarj/
[02]:http://fast.scripts.mit.edu/racecar/
[03]:https://traxxas.com/products/models/electric/6804Rslash4x4platinum
[04]:http://www.rcdriver.com/racing-classes-explained/
[05]:https://hobbyporter.com/dumborc-x6-6-channel-rc-surface-transmitter-with-x6fg-6-ch-gyro-receiver-for-cars-trucks-boats_p1429.html
[06]:https://en.wikipedia.org/wiki/Differential_(mechanical_device)
[07]:https://en.wikipedia.org/wiki/Locking_differential
[08]:https://www.leespring.com/learn-about-torsion-springs
[09]:https://en.wikipedia.org/wiki/Dynamic_braking
[10]:https://en.wikipedia.org/wiki/Electronic_speed_control
[11]:https://www.hobbypartz.com/07e-hobbywing-led-programcard.html
[12]:https://www.amazon.com/gp/product/B071777MG2/
[13]:https://en.wikipedia.org/wiki/Tamiya_connector
[14]:https://www.youtube.com/watch?v=mE8419f7D70
[15]:http://www.rcdriver.com/racing-classes-explained/
[16]:https://www.youtube.com/watch?v=pDfFV1Hmy10
[17]:https://itstillruns.com/spider-gear-7214383.html
[18]:https://www.thingiverse.com/thing:3546277
[19]:https://www.youtube.com/watch?v=WnXzBBrqob4
[20]:https://www.youtube.com/watch?v=xSq9Et9U5cU
[21]:https://hackaday.com/2019/04/09/nearly-entirely-3d-printed-rc-car-is-4wd-fun/
[22]:https://www.instagram.com/engineeringns/
[23]:https://www.thingiverse.com/thing:3546277
[24]:https://www.youtube.com/c/KrisShellman
[25]:https://blog.hackster.io/excellent-3d-printed-car-features-variety-of-drivetrain-options-d8c1c552b285
[26]:https://www.youtube.com/watch?v=48MQR3UV7x0
[27]:https://www.amazon.com/gp/product/B00466PKE0/ref=ppx_yo_dt_b_asin_title_o08_s01
[28]:https://www.thesmartconsumer.com/best-lipo-charger
[29]:https://power.tenergy.com/content/manuals/01435_manual.pdf
[30]:https://www.youtube.com/watch?v=5AIAomVTKHw
[31]:https://www.youtube.com/watch?v=xbM4pjMIGHY
[32]:https://www.amazon.com/gp/product/B01JCSOJIY/ref=ppx_yo_dt_b_asin_title_o08_s01
[33]:https://www.banggood.com/DumboRC-X6-2_4G-6CH-Transmitter-with-X6FG-Receiver-for-JJRC-Q65-MN-90-Rc-Car-Boat-Tank-Model-Parts-p-1454329.html?ID=229&cur_warehouse=USA
[34]:https://rogershobbycenter.com/wiring-a-bec
[35]:https://www.eurorc.com/page/19/choosing-esc-and-motor-for-short-course--2018-edit
[36]:https://www.amazon.com/gp/product/B071777MG2/ref=ppx_yo_dt_b_asin_title_o07_s00?ie=UTF8&psc=1#customerReviews
[37]:https://www.amazon.com/gp/product/B01J82ZTG0
[38]:https://www.youtube.com/watch?v=zg8VQcifmMc
[39]:https://www.youtube.com/watch?v=VBbLG7l2ouU
[40]:http://www.hobbywing.com/Upload/software/USBLINKen.pdf
[41]:https://www.hobbywingdirect.com/pages/update-firmware
[42]:http://www.castlecreations.com/en/castle-link-v3-usb-programming-kit-011-0119-00
[43]:http://www.hobbywing.com/products/enpdf/EzRun60A.pdf
[44]:https://www.youtube.com/watch?v=mBuQSZVOxac
[45]:https://www.rcgeeks.co.uk/blog/rc-car-transmitter-overview-setup-guide
[46]:https://www.treatstock.com/blog/Creality-CR-10-review
[47]:https://ultimaker.com/en/products/ultimaker-cura-software
[48]:https://en.wikipedia.org/wiki/STL_(file_format)
[49]:https://www.instructables.com/id/Programming-Brushless-Motor-ESC-Without-RF-Transmi/
[50]:http://www.tenergy.com/01321

