
# Donkey Car
* [What is the difference between RACECAR projects?](http://www.jetsonhacks.com/2017/06/04/what-is-the-difference-between-racecar-projects/)
* [Build an Autonomous R/C Car with Raspberry Pi](https://makezine.com/projects/build-autonomous-rc-car-raspberry-pi/)
* [Donkey Car](http://www.donkeycar.com/)
* [Stereo Vision and LiDAR Powered Donkey Car](https://www.hackster.io/bluetiger9/stereo-vision-and-lidar-powered-donkey-car-575769)
* [Modular Robotics Made Easier With ROS](https://hackaday.com/2018/05/31/modular-robotics-made-easier-with-ros/)
* [Buy Or Build An Autonomous Race Car To Take The Checkered Flag](https://hackaday.com/2018/11/30/buy-or-build-an-autonomous-race-car-to-take-the-checkered-flag/)
* [Stereo Vision and LiDAR Powered Donkey Car](https://www.hackster.io/bluetiger9/stereo-vision-and-lidar-powered-donkey-car-575769)
* [Adventures building a Self Driving RC Car](https://rahulrav.com/blog/selfdriving.html)
* [AutoCarJetsonNano](https://github.com/bastulli/AutoCarJetsonNano)

# Other Car's
* [Review: SunFounder Smart Video Car Kit for Raspberry Pi](https://www.elektormagazine.com/news/review-sunfounder-smart-video-car-kit-for-raspberry-pi/18054)
* [DIY Arduino based RC Transmitter](https://www.youtube.com/watch?v=-BDCmwNssiw&app=desktop)
* [Arduino RC Transmitter For Homebrew Projects](https://hackaday.com/2019/01/15/arduino-rc-transmitter-for-homebrew-projects/)
* [Joy Bonnet Pack without Soldering - Includes Pi Zero WH](https://www.adafruit.com/product/4085)
* [Building a Raspberry Pi Rover: My Big Fat Linux Weekend](https://hackaday.com/2019/05/09/building-a-raspberry-pi-rover-my-big-fat-linux-weekend/)
* [This Two-Wheeled RC Car Is Rather Quick](https://hackaday.com/2019/05/16/this-two-wheeled-rc-car-is-rather-quick/)

# Autonomous RC Car
* [Ghost — My Plan To Race An Autonomous RC Car](https://medium.com/hackernoon/ghost-my-plan-to-race-an-autonomous-rc-car-46a4b7f093cd)
* [Ghost II — Controlling An RC Car With A Computer](https://medium.com/hackernoon/ghost-ii-controlling-an-rc-car-with-a-computer-b1d1849d9e43)
* [Ghost III — Dead Reckoning Navigation](https://medium.com/hackernoon/ghost-iii-dead-reckoning-navigation-ffd6fd4de1cf)
* [Ghost IV — Sensor Fusion: Encoders + IM](https://medium.com/hackernoon/ghost-iv-sensor-fusion-encoders-imu-c099dd40a7b)

# Remote Racing Car
* [Race RC Cars From Anywhere On Earth](https://hackaday.com/2019/08/31/race-rc-cars-from-anywhere-on-earth/)

# 4G Rover - TKIRV
TKIRV (TK Internet Remote Vehicle) is a project idea to build a vehicle that
can be remotely controlled over the internet and can operate
indefinitely in the field through the use of solar power.

* [TKIRV - Solar Powered Internet Rover](https://www.youtube.com/watch?v=J98U8cKF3cg&list=PLsc633rxag69uRwJf9E7wGeM3jIIy6vtt)
* [Video Streaming Like Your Raspberry Pi Depended on it](https://hackaday.com/2017/09/12/video-streaming-like-your-raspberry-pi-depended-on-it/)
* [A 4G Rover and the Benefits of a Shakedown Mission](https://hackaday.com/2019/09/12/a-4g-rover-and-the-benefits-of-a-shakedown-mission/)

# MIT RACECAR
[RACECAR/J][01] is derived from the open source [MIT RACECAR][02],
an “open-source powerful platform for robotics research and education”.
The RACECAR/J Chassis is based on the [TRAXXAS Slash 4×4 Platinum Truck][03],
an upgraded version of the normal Slash 4×4 which adds aluminum bits
and pieces such as C-hubs, steering blocks, rear hub carriers and axle nuts.

* [Self Driving RC Car using Tensorflow and OpenCV/](http://ahmedmadbouly.me/Self-driving-RC-Car-using-Tensorflow-and-OpenCV/)
* [Jetson RACECAR](http://www.jetsonhacks.com/category/robotics/jetson-racecar/)





################################################################################



I spotted a [write-up on Hackaday][21]
about a nearly 100% 3D printed RC Car designed by Kris Shellman (I think that is his name).
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
maybe repurpose it for autonomous driving, and entertain my grandson.
So I believe my interest fall closer to basher than racer.




# Components of the RC Car
A complete bill of materials, minus the 3D printed components,
can be found in the Excel spreadsheet `3d-car-bom.xlsx`.

* [McMaster-Carr](https://www.mcmaster.com/)
* [Bolt Depot](https://www.boltdepot.com/)
* [Banggood](https://www.banggood.com/)
* [Holmes Hobbies](https://holmeshobbies.com/)

## 3D Printed Car Body
The Tarmo3 car body comes from a [write-up on Hackaday][21]
The car body is almost entirely printed on a 3D printer.
The only exceptions are the wheels & tires, suspension spring & shock absorber,
differential [spider gears][17],
gear box torsion spring, and the nuts & bolts to hold it all together.
All the printable parts are list on [Thingiverse][18].

## Radio Controller
The [DumboRC X6 2.4G 6CH Transmitter with X6FG Receiver][05]
an affordable easy to use Transmitter for cars,
and appears to be getting [good ratings][39].
The X6FG is a 6 channel receiver (voltage range: 4.8-12v, support 1S-3S batteries)
can handle just about any model setup with extra auxiliary accessories.
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

## ESC Programm Card
The Hobbypower 60A SL V2 ESC is programmable with [HobbyWing LED Program Card][11].

* [How To Program HobbyWing ESC](https://www.youtube.com/watch?v=OxKaE6xs-Kc)

[User Manual Of The Program Card For Brushless ESC](https://p11.secure.hostingprod.com/@site.hobbypartz.com/ssl/webfolder/hobbypartz/HW-10-v2.pdf)

# Gears
* [3D Printed Gears & Drivetrain in the OpenRC Truggy RC Car](https://www.youtube.com/watch?v=pYw43f6THb8)

# Tires
* [How To: Glue RC Short Course Tires](https://www.youtube.com/watch?v=d0X_2GJI1Fw)
* [Glue Your R/C Tires Like a Pro](https://www.youtube.com/watch?v=6pTghcWoNUo)
* [Adam Drake explains how to clean and glue Pro-Line tires](https://www.youtube.com/watch?v=AseHzskElek)

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

# RC Car Assembly and Configuration

## Step 1: Print the Body

## Step 2: Pre-Assemble the Printed Body Parts
Once all the body parts were successfully printed,
I assembled the entire car, including steering servo, and the motor attached to the drive train.
Absent was the battery, ESC, radio receiver.
I didn't glue the tires but choose to wait on that after some initial testing.

I first pre-assembled the body using a limited number of nuts & bolts
just to make sure all the part fit properly.

## Step 3: Prepare and Charge the Battery
The Gens ace 5000mAh 11.1V 3S 50C 3 Cell LiPo Battery Pack
comes with XT60 and Deans Plug but not soldered on.
I had to install a male [Tamiya connector][13] on the battery
so it could mate with the [Hobbypower 60A SL V2 ESC][12] I'm using,
which has a female Tamiya connector.

I then studied the [Tenergy TB6-B Balance Charger/Discharger manual][29]
and did a balance charge on the my battery.

## Step 4: Pre-Assembled the Whole Car
Next I finished the assembly by installing the battery, ESC, radio receiver.

* ESC - The three wires for the motor can be connected in any order.
If the motor turns in the wrong direction, just exchange the two outer most ESC wires.
(see [RC Motor and ESC Wiring][26]).
* Radio Receiver - Channel 1 is steering and channel 2 is throttle.
Insert the steering servo in channel 1 and the ESC into channel 2.
In both cases, as shown in this [video at about 2:30 minutes][19], the white wire
should be facing towards the receiver's antenna.
* Battery - The battery attaches to the ESC.

## Step 5: Binding the Transmitter with the Radio Receiver
To bind the DumboRC X6 transmitter with the X6FG receiver,
power up the transmitter and then the RC car via the switch on the ESC.
Press the very small button on the receiver.
The LED on the receiver should flash fast meaning it has entered binding mode
and it will automatically look for the nearest transmitter signal.
The light on the transmitter should be solid on after a successful binding.
See the [DumboRC X6 2.4G 6CH Transmitter documentation][33] for more information.

## Step 6: Calibrating the ESC
ESC calibration is about telling you ESC what your transmitter's
full throttle point, full brake point, and neutral point is.

First, lets set the switches and trim pots on the radio controller
to their proper initial conditions for programming.
Pop the lid on the radio controller and note that the
left-hand side is for steering and the right is for throttle.
Set both slide switched to normal (NOR), first row of trim pots to zero,
and second row of trim pots to 100%.

For more information, check out these videos:

* [How to Calibrate Hobbywing EZRun 60A-SL ESC to controller](https://www.youtube.com/watch?v=Vggx4e5EcoM)
* [What is ESC calibration on RC speed controls?](https://www.youtube.com/watch?v=MIpvyi8vjHk)

### Step 6A: Programming ESC Throttle Range and Trim
I following the [Hobbypower 60A SL V2 ESC user manual][43] to perform this task.
For more information, check out these videos:

* [Throttle Range Programming for your RC Cars](https://www.youtube.com/watch?v=CBI-SZgUkvQ)
* [HOBBYWING Calibration - ESC Calibration - ESC Setup - ESC Programming](https://www.youtube.com/watch?v=RRYwr14FwjE)

* On the radio controller, make sure the right-side (throttle) slide switch is normal (NOR),
right-side first row trim pot set to zero,
and right-side second row of trim pots set to 100%.
* Turn on the radio controller and then turn on the ESC, while holding down the programming button on the ESC.
When the red LED begins to flash, make sure to release the key immediately.
* With the throttle trigger in neutral, push the push the ESC programming button and hear one beep.
* With the throttle trigger pulled all the way back, push the ESC programming button and hear two beeps.
* With the throttle trigger pushed all the way forward, push the ESC programming button and hear three beeps.
* Switch off the ESC.

Your throttle range is now set.
You can use the right-side second row trim pot to adjust the range of the throttle,
in effect slowing down the car.

### Step 6B: Adjust Steering Trim and Dual Rate
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

For more information, check out these videos:

* [How To Use Your Steering Trim Adjustment](https://www.youtube.com/watch?v=d4g9MvWSSA0)
* [RC HOT TIP: Setting Steering Dual Rates](https://www.youtube.com/watch?v=0Z4QSpZpx6w)

## Step X: Program the ESC
I'm programming my ESC with [HobbyWing LED Program Card][11],
but there are options, such as "USB LinK"
using a [PC based software][40], a [Castle Link cables][42], and of course the right [ESC firmware][41].
For some good video to learn more about programming the ESC,
check out the following:

Things you can program for the ESC
ESC LiPo cutoff - https://www.youtube.com/watch?v=TnWtLU4TH6k

* Using Program Card
    * [How To Program HobbyWing ESC](https://www.youtube.com/watch?v=OxKaE6xs-Kc)
    * [How to: Program the Hobbywing 1080 ESC](https://www.youtube.com/watch?v=BMjtsGJlYVM)
    * [Programming your ESC's Running Mode](https://www.youtube.com/watch?v=9EeuaofVwvE)
* Using USB Link
    * [How To Program A Brushed ESC! - Learn To Set Up Your Speed Control](https://www.youtube.com/watch?v=SmKM7IZBhzM)
    * [Programming ESCs for R/C Rock Crawlers](https://www.youtube.com/watch?v=6wvH4A_VqTs)

I'm using HobbyWing LED Program Card, **not the HobbyPower version of the program card**.
As a result, I **cannot** use the table on the program card,
but instead use the table in the
I setup my ESC with the following settings:

Table 1 (EXRUN MAX Series Car ESC)

| Item | Value | Notes |
|:----:|:-----:|:----------:|
|   1  |   2   | Running Mode - forward/reverse with brake |
|   2  |   2   | Drag Brake Force - |
|   3  |   1   | Low Voltage Cut-Off Threshold - |
|   4  |   3   | Start Mode (Punch) - |
|   5  |   4   | Maximum Brake Force - |
|   6  |   2   | Maximum Revers Force - |
|   7  |   1   | Initial Brake Force - |
|   8  |   2   | Neutral Range - 9% (normal) |
|   9  |   5   | Timing - 15 |
|  10  |   1   | Over-heat Protection - enabled |
|  11  |   1   | |

What is Running Mode - forward/reverse with brake ... see this https://www.youtube.com/watch?v=9EeuaofVwvE

## Step X: Program Receiver Gyro Mode
You can see the difference with the gyro off and on in [this video][44].

see "Receiver with Gyro function" in https://www.banggood.com/DumboRC-X6-2_4G-6CH-Transmitter-with-X6FG-Receiver-for-JJRC-Q65-MN-90-Rc-Car-Boat-Tank-Model-Parts-p-1454329.html?ID=229&cur_warehouse=USA

https://www.rc.futaba.co.jp/english/dl_manual/cgy440_e.pdf


## Step X:
## Step X:
## Step X:
## Step X:













# Telemetry
* [How To: Install Traxxas Telemetry Expander System into Your Rustler](http://www.competitionx.com/news-feed/how-to-install-traxxas-telemetry-expander-system-into-your-rustler/)
* [Bringing Pro-Level Data Recording To RC Racing](https://hackaday.com/2019/08/04/bringing-pro-level-data-recording-to-rc-racing/)

## ESP32 Long-Range
* [External antennas and ESP32 Long-Range mode](https://www.youtube.com/watch?v=2rujjTOPIRU&app=desktop)
* [Wi-Fi Antennas with Gain and ESP32 Long-Range Mode (part2)](https://www.youtube.com/watch?v=PUppoaePi3A)

# Slow Down the RC Car
* [How to slow down your rc car for kids and beginners using endpoint EPA controls](https://www.youtube.com/watch?v=Bdl_lpH3E04)

# Camera
* [Lane Keeping RC Car Uses OpenCV](https://hackaday.com/2019/10/16/lane-keeping-rc-car-uses-opencv/)



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
[33]: https://www.banggood.com/DumboRC-X6-2_4G-6CH-Transmitter-with-X6FG-Receiver-for-JJRC-Q65-MN-90-Rc-Car-Boat-Tank-Model-Parts-p-1454329.html?ID=229&cur_warehouse=USA
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
[45]:
[46]:
[47]:
[48]:
[49]:
[50]:

