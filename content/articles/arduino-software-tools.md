Title: Arduino Software Tools
Date: 2012-09-04 00:01
Category: Electronics
Tags: Arduino
Slug: arduino-software-tools
Author: Jeff Irland
Image: arduino-ide.jpg
Summary: I assemble here a listing of useful tools for the Arduino developer. This includes things like Arduino IDE, Microsoft Visual Studio, Atmel AVR Studio 5, and even Scratch for Arduino. 

<h2>Arduino Specific Program Languages</h2>
<a href="http://arduino.cc/en/Main/Software">
    <img class="alignright size-thumbnail wp-image-45" style="margin: 0px 8px; float: left" title="Arduino IDE" alt="arduino IDE" src="/images/arduino-ide.jpg" width="150" height="143" />
</a>
Wiring is an open source electronics prototyping platform composed of a programming language, an integrated development environment (IDE), and a single-board microcontroller.
<ul>
<ul>
	<li><a href="http://wiring.org.co/">Wiring language</a></li>
	<li><a href="http://arduino.cc/en/Main/Software">Arduino IDE</a></li>
	<li><a href="http://www.processing.org/">Processing language</a></li>
	<li><a href="http://www.chipkin.com/using-eclipse-with-arduino-duemilanove/">Using Eclipse with Arduino Duemilanove</a></li>
</ul>
</ul>
<h2>Using Microsoft Visual Studio 2010 Professional</h2>
<a href="http://www.visualmicro.com">
    <img class="alignright size-medium wp-image-395" style="margin: 0px 8px; float: left" title="Arduino for Visual Studio Demo" alt="Visual Studio Demo" src="/images/arduino-for-visual-studio-demo.png" width="300" height="194" />
</a>
The Arduino Playground web site provides some advice and instructions on Using Microsoft Visual Studio 10  and a plugin called Visual Micro to provide a full Arduino development platform.  For more information, check out:
<ul>
<ul>
	<li><a href="http://arduino.cc/playground/Code/VisualStudio">Visual Studio Guide</a></li>
	<li><a href="http://arduino.cc/playground/Code/VisualMicro">Alternative Arduino IDE Programming in Microsoft Visual Studio</a></li>
	<li><a href="http://www.arduinodev.com/arduino-with-visual-studio/">Visual Studio 2008/2010 and Arduino?</a></li>
</ul>
</ul>

To install the Microsoft Visual Studio 10, Visual Micro, and set it up for Arduino development, follow these steps:
<ol>
<ol>
	<li>Download and install Microsoft Visual Studio 2010 Professional (For a free copy of Visual Studio, check out <a href="http://www.visualmicro.com/page/Offer-Visual-Studio-Professional-Free-For-3-Years.aspx">http://www.visualmicro.com/page/Offer-Visual-Studio-Professional-Free-For-3-Years.aspx</a>).</li>
	<li>Download and install Visual Micro from <a href="http://www.visualmicro.com/">http://www.visualmicro.com/</a>.</li>
	<li>The above reference has a series of links that will take you through setting-up and testing the installation, configuring it, etc.  All well worth reviewing.</li>
	<li>There are a few things you need to do that were not included in the above reference:</li>
</ol>
<ul>
<ul>
	<li>Make sure “Upload Using Programmer” is uncheck within Tool &gt; Arduino</li>
	<li>To make sure you can “include” “.h” files within your source directory, add “$(ProjectDir)” in Properties &gt; Configuration Properties &gt; VC++ Directories &gt; Include Directories.</li>
</ul>
</ul>
</ol>
All of this is much easier than setting up and using Microsoft Visual C++ 2010 Express!
<h2>Atmel AVR Studio 5</h2>
This is an Integrated Development Environment (IDE) for developing and debugging embedded Atmel AVR applications write, build, and debug using C/C++ and assembler code.
<ul>
<ul>
	<li><a href="http://www.atmel.com/microsite/avr_studio_5/">Atmel AVR Studio 5</a></li>
	<li><a href="http://www.engblaze.com/tutorial-using-avr-studio-5-with-arduino-projects/">Tutorial: Using AVR Studio 5 with Arduino projects</a></li>
	<li><a href="http://automation.binarysage.net/?p=1493">Info: Arduino IDE or Atmel AVR Studio</a></li>
	<li><a href="http://www.avrfreaks.net/index.php?name=PNphpBB2&amp;file=viewtopic&amp;p=884538">AVR Studio 5 support for Arduino</a></li>
	<li><a href="http://www.normalexception.net/index.php/Projects/setting-up-avrstudio-for-arduino-development">AVR Studio 5 and Arduino</a></li>
</ul>
</ul>
<h2>Processing and Arduino</h2>
Processing is an open source programming language and environment for people who want to create images, animations, and interactions. Arduino comes with some basic examples for communicating with Processing (in Examples &gt; Communication). These are useful for when you want to write both Arduino and Processing programs and have them talk to each other.
<ul>
<ul>
	<li><a href="http://processing.org/learning/">Processing Tutorals</a></li>
	<li><a href="http://luckylarry.co.uk/programming-tutorials/processing/">Lucky Larry</a></li>
</ul>
</ul>
<h2>Arduino and openFrameworks</h2>
On the surface, openFrameworks seems very similar to Processing. openFrameworks is much better at creating projects that use a lot of 3D Graphics, computer vision libraries like OpenCV or projects that involve the real-time manipulation of video. Also, while Processing requires a Java backend, openFrameworks is simply a set of C++ libraries, meaning that developers comfortable with C++ will be right at home.
<ul>
<ul>
	<li><a href="http://www.sparkfun.com/tutorials/318">What is openFrameworks?</a></li>
	<li><a href="http://wiki.openframeworks.cc/index.php?title=Main_Page">OF wiki</a></li>
</ul>
</ul>
<h2>C and Arduino</h2>
The Arduino language is simply just a small refinement of C, in an effort to make the Arduino easier to code. Moving to C or C++ is very natural step up.
<ul>
<ul>
	<li><a href="http://www.wikihow.com/Write-Arduino-Software-in-C">How to Write Arduino Software in C</a></li>
	<li><a href="http://arduino.cc/playground/Interfacing/CPPWindows">Arduino and C++ (for Windows)</a></li>
	<li><a href="http://arduino.cc/playground/Code/VisualCPPExpress">Using Microsoft Visual C++ 2010 Express to write Arduino Sketches/Libraries</a></li>
	<li><a href="http://pragprog.com/magazines/2011-04/advanced-arduino-hacking">What’s wrong with the Arduino IDE?</a></li>
	<li><a href="http://bleaklow.com/2010/06/04/a_makefile_for_arduino_sketches.html">A Makefile for Arduino Sketches</a></li>
</ul>
</ul>
<h2>Scratch for Arduino</h2>
Scratch is a programming language learning environment enabling beginners to get results without having to learn syntactically correct writing first.
<ul>
<ul>
	<li><a href="http://scratch.mit.edu/">Scratch</a></li>
	<li><a href="http://seaside.citilab.eu/scratch/arduino">Projecte Scratch</a></li>
	<li><a href="http://cs.harvard.edu/malan/scratch/printer.php">Scratch for Budding Computer Scientists</a></li>
	<li><a href="http://mentalarcade.com/visa/scratch.html">Exploring Programming with Scratch</a></li>
	<li><a href="http://www.worcpublib.org/pdf/scratch/Scratch%20Reference%20Guide%20&amp;%20Dictionary.pdf">Scratch Reference Guide</a></li>
</ul>
</ul>
Scratch is evolving into a more powerful platform.
<ul>
<ul>
	<li><a href="http://wiki.scratch.mit.edu/wiki/Scratch_2.0">Scratch 2.0</a></li>
	<li><a href="http://www.modk.it/">Modkit Micro</a></li>
</ul>
</ul>
