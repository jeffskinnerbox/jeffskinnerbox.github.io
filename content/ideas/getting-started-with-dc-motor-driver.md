
* [Introduction to AC Motors](http://www.allaboutcircuits.com/textbook/alternating-current/chpt-13/introduction-ac-motors/)
* [Balancing Robot Needs Innovative Controller and Motor](http://hackaday.com/2017/05/18/balancing-robot-needs-innovative-controller-and-motor/)
* [Smooth Moves from Cheap Motors](https://hackaday.com/2018/11/16/smooth-moves-from-cheap-motors/)

* [Driving a brushless DC motors slooooooowly](http://hackaday.com/2015/04/20/driving-a-brushless-dc-motor-sloooooooowly/)
* [Control a DC Motor with an Arduino](http://www.allaboutcircuits.com/projects/control-a-motor-with-an-arduino/)
* [The Little Things I Didn’t Know About Small DC Motors](http://hackaday.com/2016/10/17/the-little-things-i-didnt-know-about-small-dc-motors/)

* [All About Stepper Motors](https://learn.adafruit.com/all-about-stepper-motors)
* [Best Arduino Stepper Motors in 2019 ](https://all3dp.com/1/best-arduino-stepper-motors/)
* [How Accurate Is Microstepping Really?](http://hackaday.com/2016/08/29/how-accurate-is-microstepping-really/)
* [A Command-Line Stepper Library with All the Frills](http://hackaday.com/2017/03/05/a-command-line-stepper-library-with-all-the-frills/)
* [Giant Stepper Motor Gets You Up to Speed on Theory](http://hackaday.com/2015/08/20/giant-stepper-motor-gets-you-up-to-speed-on-theory/)





# DC Brushed Motor
![motor](http://www.robotshop.com/media/catalog/product/cache/1/image/800x800/9df78eab33525d08d6e5fb8d27136e95/p/o/pololu-30-1-micro-metal-gearmotor-mp.jpg "Micro Metal Gear Motor")
There are many types of motors.
They vary in size, strength, speed, precision of movement.
There are four basic types of motors:
brushed DC motors, brushless DC motors, and stepper motors, and linear motors.
Check out "[Adafruit Motor Selection Guide][05]"
and "[SparkFun: Motors and Selecting the Right One][06]" for more information.

My motor is a miniature brushed DC motor with a metal gearbox.
These tiny motors (0.94"x0.39"x0.47" available in a range of gearing ratios depending on use.
I have a 95:1 gear ratio, and a small sample of what is available and their specs is below:

| Ratio |  Speed @ 6V | Free-run current @ 6V | Stall torque @ 6V | Stall current @ 6V |
|:-----:|:-----------:|:---------------------:|:-----------------:|:------------------:|
|  50:1 | 420±10% rpm |    80mA (160mA max)   |      0.5kg cm     |       770mA        |
|  95:1 | 200±10% rpm |    70mA (140mA max)   |      1.4kg cm     |       700mA        |
| 298:1 |  75±10% rpm |    60mA (120mA max)   |      2.5kg cm     |       900mA        |
_Figures for 95:1 is estimated based on 100:1 motor by the same manufacture_

These tiny brushed DC gear motors are intended for use at nominal voltage of 6V.
To vary their speed, these kinds of motors can run at voltages above and below this nominal voltage,
and can comfortably operate in the 3V to 9V range
(some sites give a range of 1.5v to 12v).
Rotation can start at voltages as low as 0.5V.
Lower voltages might not be practical,
and higher voltages could start negatively affecting the life of the motor.

# Motor Controller
![controller](https://cdn-shop.adafruit.com/1200x900/3190-01.jpg "Adafruit DRV8871 DC Motor Driver")
I'm using the [Adafruit DRV8871 DC Motor Driver][01].
The [Texas Instrument DRV8871 chip][02] is a brushed-DC motor driver for small machines.
Two logic inputs control the [H-bridge driver][03], which can control motors bidirectionally
with up to 3.6A peak current.
The inputs can be pulse-width modulated (PWM) to control motor speed,
using a choice of [current-decay modes][04].

The specs for the DRV8871 are:

* Ability to control motors with 6.5V to 45V power voltage
* Up to 5.5V logic level on IN pins
* It can handle up to 3.6A peak current
* PWM control is used to control motor speed
* It can limiting/regulation motor current (without an inline sense resistor)
* Under-voltage lockout (i.e. turn off the power in the event of the voltage dropping below the operational value)
* Over-current protection (i.e. turn off if the current exceeds specifications)
* Thermal shutdown (i.e. turn off if the temperature exceeds a threshold)

Adafruit provides a [tutorial on how to use the DRV8871 DC Motor Driver board][07].
Not much needs to be done to the board unless you want to modify the default 2A current limit
(modify the external resistor **Rlim** to do this).
Just connect the motor to the **MOTOR** terminal pad
and the battery power source to the **POWER** terminal pad on the board.
You can also use the **VM** and **GND** pin outs
instead of the **Power** terminal pad.

To control the motor speed,
you apply a PWM signal to **IN1**  to spin in one direction
and a PWM to **IN2** to move in the opposite direction.
Use up to 5.5V DC logic on the **IN1**/**IN2** pins.
You can PWM the inputs up to 200KHz, but lower frequencies will be more efficient.

# Testing
Adafrut povides a [simple test program][08] for an Arduino.
This program just repeatly ramps up the motor speed in one direction,
ramps down, and then changes direction.
I have modified it slightly:

```cpp
// Basic sketch for trying out the Adafruit DRV8871 Breakout

#define MOTOR_IN1 9
#define MOTOR_IN2 10

void setup() {
  Serial.begin(9600);

  Serial.println("DRV8871 test");

  pinMode(MOTOR_IN1, OUTPUT);
  pinMode(MOTOR_IN2, OUTPUT);
}

void loop() {

  // ramp up forward
  digitalWrite(MOTOR_IN1, LOW);
  for (int i=0; i<255; i++) {
    analogWrite(MOTOR_IN2, i);
    delay(10);
  }

  // forward full speed for one second
  delay(1000);

  // ramp down forward
  for (int i=255; i>=0; i--) {
    analogWrite(MOTOR_IN2, i);
    delay(10);
  }

  // ramp up backward
  digitalWrite(MOTOR_IN2, LOW);
  for (int i=0; i<255; i++) {
    analogWrite(MOTOR_IN1, i);
    delay(10);
  }

  // backward full speed for one second
  delay(1000);

  // ramp down backward
  for (int i=255; i>=0; i--) {
    analogWrite(MOTOR_IN1, i);
    delay(10);
  }
}
```


-----


# Servo Motor
A servomotor is a closed-loop servomechanism that allows for
precise control of angular or linear position, velocity and acceleration.
It consists of a suitable motor coupled to a sensor for position feedback.
It also requires a relatively sophisticated controller,
often a dedicated module designed specifically for use with servomotors.

>**NOTE:** In control engineering a servomechanism, sometimes shortened to servo,
>is an automatic device that uses error-sensing negative feedback to correct the action of a mechanism.
>It usually includes a built-in encoder, or other position feedback mechanism,
>to ensure the output is achieving the desired effect.

* [Hackaday Dictionary: Servo Motors](https://hackaday.com/2016/03/24/hackaday-dictionary-servo-motors/)
* [Wrangling RC Servos Becoming a Hassle? Try Serial Bus Servos!](https://hackaday.com/2018/07/05/wrangling-rc-servos-becoming-a-hassle-try-serial-bus-servos/)


-----


# Stepper Motor
A stepper motor, also known as step motor or stepping motor,
is a brushless DC electric motor that divides a full rotation into a number of equal steps.
The motor's position can then be commanded to move and hold at one of these steps
without any position sensor for feedback (an open-loop controller),
as long as the motor is carefully sized to the application in respect to torque and speed.

## Stepper Motor Wiring
* [Deducing Stepper Motor Wiring](https://hackaday.com/2019/07/25/deducing-stepper-motor-wiring/)

# Switec Motors
The Switec motor is an unassuming bit of plastic and metal that is found behind the dashboards of many American cars and trucks. It’s only a little over an inch in diameter, but it reliably swings tachometer, speedometer, and fuel gauge needles
http://hackaday.com/2013/01/19/custom-gauges-with-a-stepper-motor-breakout-board/
https://github.com/clearwater/SwitecX25
http://guy.carpenter.id.au/gaugette/2012/01/05/what-is-gaugette/

# Electonic Speed Control (ESC)
* [An Open Source ESC For Brushless Motors](https://hackaday.com/2019/05/15/an-open-source-esc-for-brushless-motors/)

# Variable Frequency Drives (VFD)

# Motor Choke
* [What is a motor choke and why is it used?](https://www.motioncontroltips.com/what-is-a-motor-choke-and-why-is-it-used/)
* [A Practical Look At Chokes For EMI Control](https://hackaday.com/2020/03/15/a-practical-look-at-chokes-for-emi-control/)



[01]:https://www.adafruit.com/products/3190
[02]:http://www.ti.com/lit/ds/symlink/drv8871.pdf
[03]:https://en.wikipedia.org/wiki/H_bridge
[04]:http://ebldc.com/?p=86
[05]:https://learn.adafruit.com/adafruit-motor-selection-guide/types-of-motors
[06]:https://learn.sparkfun.com/tutorials/motors-and-selecting-the-right-one
[07]:https://learn.adafruit.com/adafruit-drv8871-brushed-dc-motor-driver-breakout/
[08]:https://learn.adafruit.com/adafruit-drv8871-brushed-dc-motor-driver-breakout/usage
[09]:
[10]:
[11]:
[12]:
[13]:
[14]:
[15]:
[16]:
[17]:
[18]:
[19]:
[20]:
