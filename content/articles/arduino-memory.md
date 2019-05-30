Title: Arduino Memory
Date: 2012-09-10 00:01
Category: Electronics
Tags: Arduino
Slug: arduino-memory
Author: Jeff Irland
Image: ardunio-logo.jpg
Summary: I explore here the Flash, SRAM, and EEPROM memory options available for the Arduino, and several useful links.  This table of information will be useful for later referance.

As I have been exploring the Arduino hardware platforms for my TBD project, I find myself forgetting the memory options available.  I'm recording here my findings so I can reference it later.
<center>
<table border="1" cellspacing="0" cellpadding="0">
<tbody>
<tr>
<td valign="top" width="115">
<p align="center"><strong>Arduino</strong></p>
</td>
<td valign="top" width="139">
<p align="center"><strong>Chip</strong></p>
</td>
<td valign="top" width="126">
<p align="center"><strong>Flash</strong></p>
</td>
<td valign="top" width="127">
<p align="center"><strong>SRAM</strong></p>
</td>
<td valign="top" width="133">
<p align="center"><strong>EEPROM</strong></p>
</td>
</tr>
<tr>
<td valign="top" width="115">
<p align="center"><strong>Nano 2.3</strong></p>
</td>
<td valign="top" width="139">
<p align="center">ATmega168</p>
</td>
<td valign="top" width="126">
<p align="center">16K bytes</p>
</td>
<td valign="top" width="127">
<p align="center">1024 bytes</p>
</td>
<td valign="top" width="133">
<p align="center">512 bytes</p>
</td>
</tr>
<tr>
<td valign="top" width="115">
<p align="center"><strong>Nano 3.0</strong></p>
</td>
<td valign="top" width="139">
<p align="center">ATmega328</p>
</td>
<td valign="top" width="126">
<p align="center">32K bytes</p>
</td>
<td valign="top" width="127">
<p align="center">2048 bytes</p>
</td>
<td valign="top" width="133">
<p align="center">1024 bytes</p>
</td>
</tr>
<tr>
<td valign="top" width="115">
<p align="center"><strong>Uno</strong></p>
</td>
<td valign="top" width="139">
<p align="center">ATmega328</p>
</td>
<td valign="top" width="126">
<p align="center">32K bytes</p>
</td>
<td valign="top" width="127">
<p align="center">2048 bytes</p>
</td>
<td valign="top" width="133">
<p align="center">1024 bytes</p>
</td>
</tr>
<tr>
<td valign="top" width="115">
<p align="center"><strong>Mega 2560</strong></p>
</td>
<td valign="top" width="139">
<p align="center">ATmega2560</p>
</td>
<td valign="top" width="126">
<p align="center">256K bytes</p>
</td>
<td valign="top" width="127">
<p align="center">8192 bytes</p>
</td>
<td valign="top" width="133">
<p align="center">4096 bytes</p>
</td>
</tr>
</tbody>
</table>
<ul>
<ul>
</center>
	<li>SRAM (Static Random Access Memory) is where the sketch creates and manipulates variables when it runs.</li>
	<li>EEPROM (Electrically Erasable Programmable Read-Only Memory) is memory space that programmers can use to store long-term information.</li>
	<li>Flash memory is where the Arduino sketch is stored (program space).  The bootloader takes about 2 KB of flash memory and remaining space is for the sketch.</li>
</ul>
</ul>
The Arduino IDE will tell you exactly how much Flash is being used after each compile/upload.  EEPROM is an older, more reliable technology. It is somewhat slower than Flash.  In Flash, a large block is erased all at once, much faster than the EEPROM method of going cell-by-cell.

If you don't need to modify the strings or data while your sketch is running, you can store them in Flash (program) memory instead of SRAM; to do this, use the PROGMEM keyword.

Part of my interest in the Arduino's memory is my concern about how much memory a sketch uses.  Here are some sites that provide insight and algorithms for calculating the memory:
<ul>
<ul>
	<li><a href="http://jeelabs.org/2011/05/22/atmega-memory-use/">ATmega memory use</a></li>
	<li><a href="http://www.nongnu.org/avr-libc/user-manual/malloc.html">Memory Areas and Using malloc()</a></li>
	<li><a href="http://code.google.com/p/cec-arduino/source/browse/branches/anc/MemoryFree.c?r=15">MemoryFree.c</a></li>
</ul>
</ul>
