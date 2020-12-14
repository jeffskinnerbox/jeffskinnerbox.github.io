

* [Getting Started With The TinyFPGA BX](https://www.woolseyworkshop.com/2019/08/30/getting-started-with-the-tinyfpga-bx/)
* [An FPGA Developer's Guide to Cheap Development Boards](https://www.hackster.io/news/an-fpga-developer-s-guide-to-cheap-development-boards-8f1782bb271a)
* [Cheap FPGA Development Boards](https://joelw.id.au/FPGA/CheapFPGADevelopmentBoards)


* [USING FPGAs](https://www.sparkfun.com/fpga)
* [How Does an FPGA Work?](https://learn.sparkfun.com/tutorials/how-does-an-fpga-work)
* [First FPGA Project - Getting Fancy with PWM](https://learn.sparkfun.com/tutorials/first-fpga-project---getting-fancy-with-pwm)
* [Programming an FPGA](https://learn.sparkfun.com/tutorials/programming-an-fpga)
* [External IO and Metastability](https://learn.sparkfun.com/tutorials/external-io-and-metastability)




Next stop, ULX3S
* http://radiona.org/ulx3s/
* https://www.crowdsupply.com/radiona/ulx3s
* [ULX3S: AN OPEN-SOURCE LATTICE ECP5 FPGA PCB](https://hackaday.com/2019/01/14/ulx3s-an-open-source-lattice-ecp5-fpga-pcb/)

Next Stop, Upduino
* https://blog.idorobots.org/entries/upduino-fpga-tutorial.html
* https://tinyvision.ai/

Next Stop, iCEBreaker
https://www.youtube.com/watch?v=u5HRhCOaTkw

More Challenging Projects (Lattice iCEstick)
* https://hackaday.com/2016/12/13/compiling-a-22-analyzer/


* [Introduction to FPGA and its Architecture](https://towardsdatascience.com/introduction-to-fpga-and-its-architecture-20a62c14421c)




# Digital Logic vs Computer Logic
[Computer logical](https://www.tutorialspoint.com/computer_logical_organization/index.htm)
refers to the level of abstraction above the
[digital logic](https://www.electronics-tutorials.ws/logic/logic_1.html) level,
but below the operating system level. At this level, the major components are functional units or subsystems that correspond to specific pieces of hardware built from the lower level building blocks.

# Register Transfer Level (RTL) Design vs Sequential Logic Design
Register-transfer level (RTL) is a design abstraction which models a synchronous digital circuit in terms of the flow of digital signals (data) between hardware registers, and the logical operations performed on those signals.

In simple terms RTL design or Register Transfer Level design is a method in which we can transfer data from one register to another.
**OR**
Constructing a digital design using [combinational circuits][29] and [sequential circuits][30]
in HDL like Verilog or VHDL which can model logical and hardware operation.

https://www.geeksforgeeks.org/rtl-register-transfer-level-design-vs-sequential-logic-design/
https://www.doulos.com/knowhow/verilog_designers_guide/rtl_verilog/

# What is VHDL?
[VHDL][31] (or VHSIC-HDL) is the Very High Speed Integrated Circuit (VHSIC) Hardware Description Language.
It can describe the behaviour and structure of digital and mixed-signal electronic systems,
but is particularly suited as a language to describe the
structure and behaviour of digital electronic hardware designs,
such as ASICs and FPGAs as well as conventional digital circuits.
Simulation and synthesis are the two main kinds of tools which operate on the VHDL language.
The VHDL Language Reference Manual does not define a simulator,
but unambiguously defines what each simulator must do with each part of the language.

* **VHDL Simulation** describe the behavior of the circuit in terms of
input signals, the output signals, knowledge of delays,
and behavior described in terms of occurrences of events and waveforms on signals.
* **VHDL Synthesis** is the process of infering the physical hardware design from the VHDL description.
* [Simulation and synthesis are complementary processes][32]

# VHDL vs Verilog vs SystemVerilog
[What’s the Difference Between VHDL, Verilog, and SystemVerilog?][34]
Verilog, standardized as IEEE 1364, is also a hardware description language (HDL) used to model electronic systems.
It is most commonly used in the design and verification of digital circuits,
but also used in the verification of analog circuits and mixed-signal circuits.
In 2009, the Verilog standard (IEEE 1364-2005) was merged into the SystemVerilog standard,
creating IEEE Standard 1800-2009.
Since then, Verilog is officially part of the SystemVerilog language.

So, which language is better for learning or using with FPGA?
Well, [it depends][33] but I choose Verilog.
I see more open source materials with Verilog,
and the world appear to be moving towards Verilog.

* [VHDL vs Verilog](https://blog.digilentinc.com/battle-over-the-fpga-vhdl-vs-verilog-who-is-the-true-champ/)

# Verilog Testbench
* [An Example Verilog Test Bench](https://www.youtube.com/watch?v=TtqZ-DwUYk4)
* [Writing a Verilog Testbench](https://www.youtube.com/watch?v=sGQoBnFcmwc)

# Chisel
* [Chisel Away at FPGA Development](https://hackaday.com/2019/10/28/chisel-away-at-fpga-development/)
* [Chisel](https://www.chisel-lang.org/)

# PipelineC
* [Write In PipelineC For FPGAs](https://hackaday.com/2020/08/16/write-in-pipelinec-for-fpgas/)
* [PipelineC](https://github.com/JulianKemmerer/PipelineC)

## FPGA Synthesis
Traditionally, to create an FPGA design, the application is described using a Hardware
Description Language (HDL) like Verilog or VHDL, and then multiple steps are carried out
until an FPGA bitstream is created and loaded into the FPGA. First, the hardware description is synthesized into a netlist.
All coding errors are determined in this step. In the next step, the mapping process maps all
functions in the netlist to functions that are available as hard-logic on the FPGA; any other
function will be implemented using soft-logic (LUTs). After that, the placement process
determines which of the multiple instances of each function on the FPGA should be used for
implementing the functions that are required by the design. If a design requires more instances
of a specific function than are available on the FPGA, placement will fail. In the next step, the
routing process will determine which routing resources are used and how they are connected
so that all functions are correctly connected to each other and all timing constraints are met.
Since routing resources are limited, routing could also fail in case of routing congestion. Finally,
the FPGA bitstream is generated. The bitstream is generally transferred to the FPGA using
JTAG to implement the synthesized design on the hardware. This chain of operations is the
equivalent of compilation for software programs, and all this functionality is provided by the
FPGA manufacturers’ tools. In case of Intel, these functions are provided by Intel Quartus
Prime Software. For the Intel Stratix V FPGA, total synthesis time is typically 3 to 5 hours but
can reach up to 8 hours, while for the larger Arria 10 device it is typically 8 to 12 hours but can
take over a day for very large designs that suffer from severe routing congestion.

## ASIC
An application-specific integrated circuit (ASIC /ˈeɪsɪk/) is an integrated circuit (IC) chip customized for a particular use, rather than intended for general-purpose use. For example, a chip designed to run in a digital voice recorder or a high-efficiency bitcoin miner is an ASIC.

### Open Source ASIC
* [Your Own Open Source ASIC: SkyWater-PDF Plans First 130 Nm Wafer In 2020](https://hackaday.com/2020/06/30/your-own-open-source-asic-skywater-pdf-plans-first-130-nm-wafer-in-2020/)





# FPGA Basics
* [FPGA Fundementals](https://www.ni.com/en-us/innovations/white-papers/08/fpga-fundamentals.html)
* [Comparing an FPGA to a Microcontroller, Microprocessor or an ASIC](https://www.element14.com/community/groups/fpga-group/blog/2018/02/22/comparing-an-fpga-to-a-microcontroller-microprocessor-or-an-asic)
* [FPGA Basics: Architecture, Applications and Uses](https://www.arrow.com/en/research-and-events/articles/fpga-basics-architecture-applications-and-uses)
* [Reverse-engineering the first FPGA chip, the XC2064](http://www.righto.com/2020/09/reverse-engineering-first-fpga-chip.html)

# Embedded FPGA (eFPGA)
a range of new startups provide embedded FPGA (eFPGA)

an FPGA chip is a core (the “fabric”) which is surrounded by various kinds of I/O including SERDES, DDR PHYs, USB, PCI-Express and GPIO, among others.

An eFPGA is just the core, without the analog I/O, which can be integrated into a chip using high speed CMOS inputs and outputs.  An eFPGA can be connected directly to processor buses of any kind, in the control path, in the data path and/or to the digital inputs of I/O blocks like SERDES, DDR PHYs, etc. as well as directly to RAM.

* [What is an FPGA?](https://www.achronix.com/blog/back-basics-laymans-introduction-efpga)
* [What is Embedded FPGA — Known as eFPGA](https://www.electronics-lab.com/embedded-fpga-known-efpga/)
* [And, the winner is … eFPGA](https://www.embedded-computing.com/guest-blogs/and-the-winner-is-efpga)

* [QuickFeater - low-power MCU + embedded FPGA](https://www.crowdsupply.com/quicklogic/quickfeather)

# Why use an FPGA instead of a CPU or GPU?
* [Why use an FPGA instead of a CPU or GPU?](https://blog.esciencecenter.nl/why-use-an-fpga-instead-of-a-cpu-or-gpu-b234cd4f309c)

# FPGA SoftCore
* [SoftCore CPU Comparison](https://hackaday.com/2020/07/12/softcore-cpu-comparison/)
* [A Scratch-Built RISC-V CPU in an FPGA](https://hackaday.com/2019/11/19/emulating-risc-v-on-an-fpga/)
* [Indian RISC-V Chip is Team’s Third Successful Chip](https://hackaday.com/2020/10/03/indian-risc-v-chip-is-teams-third-successful-chip/)

# Building a CPU on an FPGA
* [Building a CPU on an FPGA](https://www.youtube.com/watch?v=2fNBkUCjhcE&list=PLEeZWGE3PwbZ44SUf1-vA-UuX9_J_pifB)
* [The Z-Machine Standards Document](http://inform-fiction.org/zmachine/standards/z1point1/index.html)

# Verilog Tutorials
* [FPGA design for Software Engineers](https://www.walknsqualk.com/post/014-tiny-fpga-bx/)
* [FPGA design for Software Engineers, part 2](https://www.walknsqualk.com/post/015_fpga_design_p2/)
* [FPGA design for Software Engineers, part 3](https://www.walknsqualk.com/post/016_fpga_design_p3/)

# Verilog Tutorials and Examples
* [Verilog, Formal Verification and Verilator Beginner's Tutorial](https://zipcpu.com/tutorial/)
* [nandland: FPGA Fundamentals](https://www.nandland.com/articles/fpga-101-fpgas-for-beginners.html)
* [nandland: Verilog Tutorials and Examples](https://www.nandland.com/verilog/tutorials/index.html)
* [ FPGA 4 Fun](https://www.fpga4fun.com/)
* [FPGAwars](http://fpgawars.github.io/)
* [Asic World: Verilog Tutorial](http://asic-world.com/verilog/veritut.html)
* [Learning FPGA, yosys, nextpnr, and RISC-V](https://github.com/BrunoLevy/learn-fpga)
* [An FPGA Tutorial using the ZedBoard](https://www.beyond-circuits.com/wordpress/tutorial/)


* [What Is An FPGA?](https://www.youtube.com/watch?v=gUsHwi4M4xE)
* [What Is an FPGA? An Introduction to Programmable Logic](https://www.allaboutcircuits.com/technical-articles/what-is-an-fpga-introduction-to-programmable-logic-fpga-vs-microcontroller/)
* [David Williams - MicroFPGA – The Coming Revolution in Small Electronics](https://www.youtube.com/watch?v=ME_e06ApxJA&t=140s)

* [An FPGA Learning Experience](https://www.youtube.com/watch?v=HaD_ExYgMeM)
* [FPGA tutorials](https://hackaday.io/list/160076-fpga-tutorials)
* [Why use an FPGA instead of a CPU or GPU?](https://blog.esciencecenter.nl/why-use-an-fpga-instead-of-a-cpu-or-gpu-b234cd4f309c)

 * [KnowHow - Technical Resource for Hardware Design and Verification Languages](https://www.doulos.com/knowhow/)

# Other
* [Bringing FPGA Development To The Masses](https://hackaday.com/2019/07/05/bringing-fpga-development-to-the-masses/)
* [Cheap FPGA Board Roundup](https://hackaday.com/2018/08/20/cheap-fpga-board-roundup/)
* [Arduino MKR Vidor 4000](https://www.sparkfun.com/products/14870)
* [MKR Vidor-4000 FPGA](https://www.designnews.com/electronics-test/fpga-diy-electronics/79145038959945)

* [Zynq boards](http://www.pynq.io/board.html)
* [Setting up the PYNQ-Z1 for the Intel Movidius Neural Compute Stick](http://www.fpgadeveloper.com/2018/04/setting-up-the-pynq-z1-for-the-intel-movidius-neural-compute-stick.html)
* [FPGAdeveloper](http://www.fpgadeveloper.com/)

* [FPGA Makes Digital Analog Computer](https://hackaday.com/2019/02/14/fpga-makes-digital-analog-computer/)
* [A Scratch-built RISC-V CPU In An FPGA](https://hackaday.com/2019/11/19/emulating-risc-v-on-an-fpga/)
* [FPGA 6800 Uses Python Toolbox](https://hackaday.com/2019/12/27/fpga-6800-uses-python-toolbox/)
* [Timothy Ansell - Xilinx Series 7 FPGAs Now Have a Fully Open Source Toolchain!](https://www.youtube.com/watch?v=EHePto95qoE)
    * [SymbiFlow](https://symbiflow.github.io/)

* [OrangeCrab: A Formidable Feature-Packed FPGA Feather](https://www.hackster.io/news/orangecrab-a-formidable-feature-packed-fpga-feather-04fd6c99eb0f)

# Lattice MachXO2 FPGA
* [An FPGA And A Few Components Can Make A Radio](https://hackaday.com/2020/04/18/an-fpga-and-a-few-components-can-make-a-radio/)
* [ULX3S: An Open-Source Lattice ECP5 FPGA PCB](https://hackaday.com/2019/01/14/ulx3s-an-open-source-lattice-ecp5-fpga-pcb/)
* [Adding IceZero To The Raspberry Pi](https://hackaday.com/2017/02/08/adding-icezero-to-the-raspberry-pi/)
* [iCEBreaker FPGA](https://www.crowdsupply.com/1bitsquared/icebreaker-fpga)

# Avnet Ultra96-V2
The Ultra96-V2 is an Arm-based, Xilinx Zynq UltraScale+ ™ MPSoC development board based on the Linaro 96Boards Consumer Edition (CE) specification.
multiprocessor system on a chip = MPSoC
* [Ultra96 SDR Part One: Simple RF Spectrogram Web Application](https://www.hackster.io/whitney-knitter/ultra96-sdr-part-one-simple-rf-spectrogram-web-application-aae29e)

# CORDIC (Coordinate Rotation Digital Computer)
CORDIC (Coordinate Rotation Digital Computer), also sometimes known as Volder’s algorithm,
is a standard way to compute hyperbolic and trigonometric functions.
What’s nice is that the algorithm only requires addition, subtraction, bit shifts,
and a lookup table with an entry for each bit of precision you want.
This is perfect for simple CPUs and FPGAs.




################################################################################





# Background Information
A field programmable gate array (FPGA) is an integrated circuit that contains a large number of configurable logic blocks (CLB) that can be wired together to create custom digital circuits. FPGAs, depending on their size, can accommodate very large and complex designs.

Hardware description languages (HDL), such as Verilog or VHDL, are used to design your custom digital logic using high level programming constructs. These programs are then compiled into synthesized netlists containing primitives such as AND and OR gates. The netlists are then compiled further into FPGA specific bitstreams that are uploaded to FPGA boards to run your custom digital logic designs in actual hardware.

TinyFPGA is a family of low cost, open source FPGA development boards designed and created by Luke Valenty. The boards are supported by free (and many open source) toolsets.

* [Comparing an FPGA to a Microcontroller, Microprocessor or an ASIC](https://www.element14.com/community/groups/fpga-group/blog/2018/02/22/comparing-an-fpga-to-a-microcontroller-microprocessor-or-an-asic)
* [FPGA for Dummies](https://www.intel.com/content/dam/www/programmable/us/en/pdfs/literature/misc/fpgas_for_dummies_ebook.pdf)
* [Ben Eater's: Build an 8-bit computer from scratch](https://eater.net/8bit/)
* [Full 8-Bit Computer On Breadboards](https://hackaday.com/2020/11/23/full-8-bit-computer-on-breadboards/)


## iCE FPGA
The TinyFPGA BX has a [ICE40LP8K][06] by Lattice
https://en.wikipedia.org/wiki/ICE_(FPGA)

# Open Source FPGA
Most of the players in FPGA land have their own proprietary tools for creating bitstream files,
and synthesizing the HDL.
Using any of these FPGA tools usually means agreeing to terms and conditions that nobody reads.

* [An Open Source Toolchain For ICE40 FPGAs](https://hackaday.com/2015/05/29/an-open-source-toolchain-for-ice40-fpgas/)


## Lattice
* Lattice iCE40 devices supported by Project IceStorm
* Lattice ECP5 devices supported by Project Trellis
* [LATTICE SEMICONDUCTOR TARGETS BITSTREAM REVERSE ENGINEERING IN LATEST PROPEL SDK LICENSE](https://hackaday.com/2020/06/05/lattice-semiconductor-targets-bitstream-reverse-engineering-in-latest-propel-sdk-license/)
* [LATTICE DROPS EULA CLAUSE FORBIDDING FPGA BITSTREAM REVERSE ENGINEERING](https://hackaday.com/2020/06/06/lattice-drops-eula-clause-forbidding-fpga-bitstream-reverse-engineering/)

## Project IceStorm
Project IceStorm aims at documenting the bitstream format of Lattice iCE40 FPGAs and providing simple tools for analyzing and creating bitstream files.
http://www.clifford.at/icestorm/

## OpenCL
OpenCL is an open-source and royalty-free standard for programming heterogeneous
systems in a host/device fashion. An OpenCL-based application can be split into two separate
parts: one is the host code that executes on the host CPU and can be written in any programing
language as long as a compatible compiler exists, and the other is a C-based device code that
is more commonly called the kernel code. OpenCL provides the necessary APIs for controlling
the accelerator and communicating between the host processor and the accelerator. This
programming language can be considered as a device-agnostic alternative to the NVIDIA
CUDA programming language.
The typical flow of operation in OpenCL is that first, all necessary data is allocated in host
memory. Then, this data is transferred to the device memory using the respective OpenCL
functions. In the next step, the kernel is loaded and executed on the device, where inputs are
read from and outputs are written to the device memory. Finally, output data is transferred from
the device memory to the host.

In OpenCL, each thread is called a work-item and multiple work-items are grouped to form
a work-group. To execute an application, the thread space is distributed over multiple workgroups. Within each work-group, work-items are synchronized using barriers and data can be
shared between the work-items using the fast on-chip local memory. However, the only way to
share data between different work-groups is through the slow off-chip memory. The number
of work-items in a work-group is called the local work size, and the total number of work-items
necessary to fully execute an application is called the global work size. Work-items and workgroups can be arranged in multiple dimensions, up to three, in an index space called an
NDRange.

* [Why use OpenCL on FPGAs?](https://streamhpc.com/blog/2014-09-16/use-opencl-fpgas/)
* [FPGA Programming with OpenCL](https://blog.education-ecosystem.com/fpga-programming-with-opencl/)
* [How To Put OpenCL Into An FPGA](https://www.electronicdesign.com/technologies/fpgas/article/21794531/how-to-put-opencl-into-an-fpga)

## ECP5

# Tools Required
* Verilator: Handles compiling our code for simulation
* Yosys: The synthesis tool that will build our design
* NextPNR: Place-and-route tool that will figure out how to fit things into our FPGA
* IceTime:
* IcePack: Tool that packs the netlist from NextPNR into a bitstream we can load on to the TinyFPGA-BX
* IceProg:
* SymbiFlow:

## Verilator
Verilator is a free and open-source software tool which converts Verilog hardware description language
to a model in C++ or SystemC.
It is restricted to modeling the synthesizable subset of Verilog and the generated models
are cycle-accurate, 2-state, with synthesis (zero delay) semantics.
As a consequence, the models typically offer higher performance than the more widely used event-driven simulators
([event simulation versus cycle simulation][26]).

[Verilator is significantly faster than iverilog][27] (also see [here][28]).
Verilator takes longer to compile (3x as long for a serial build),
but simulates faster (4x-6x as fast).
You can parallelize the Verilator build (`make -jN`) to cut down on this.

* [Verilog, Formal Verification and Verilator Beginner's Tutorial](https://zipcpu.com/tutorial/)

## Icarus Verilog (iverilog)
Like Verilator, iverilog is a compiler that translates Verilog source code into executable programs for simulation.

* https://iverilog.fandom.com/wiki/Main_Page

## SymbiFlow
SymbiFlow is a fully open source toolchain for the development of FPGAs of multiple vendors. Currently, it targets the Xilinx 7-Series, Lattice iCE40 and Lattice ECP5 FPGAs, and is gradually being expanded to provide a comprehensive end-to-end FPGA synthesis flow.

## Project Trellis
* [Project Trellis](https://github.com/SymbiFlow/prjtrellis)

## Bitstreams
* [Lattice Drops EULA Clause Forbidding FPGA Bitstream Reverse Engineering](https://hackaday.com/2020/06/06/lattice-drops-eula-clause-forbidding-fpga-bitstream-reverse-engineering/)

## yosys – Yosys Open SYnthesis Suite

## nextpnr -- a portable FPGA place and route tool
* [nextpnr portable FPGA place and route tool](https://github.com/YosysHQ/nextpnr)


TinyFPGA Website
TinyFPGA BX GitHub
APIO GitHub
APIO Documentation
Wikipedia: Verilog
Wikipedia: Binary Number
Verilog HDL Quick Reference Guide
ASIC WORLD
NCSU Digital ASIC Design With Verilog Course






################################################################################




I haven't spent any time with FPGA (Field-Programmable Gate Array) boards,
not because of lack of interest, jut that I've just been occupied with other things.
Count me one of the [FPGA-curious][07].
Mastering FPGA seem like a tall hill to climb,
but I felt I needed to just jump in and do somthing/anything.
I wanted an inexpensive way to start with something that had a rich ecosystem of examples.
I stumbled into the [TinyFPGA][05], it seemed to be a match, and so I started there.

Before I could jump onto this FPGA board,
I spent significant amount of time getting to know this technology.

# Getting Smarter about FPGA
I'm accustom to microcomputers & microcontroller,
but frankly only have a basic idea as to what an FPGA is and what it does.
If you press me to explain,
I would blurt out something about FPGA's can perform lots of computations in parallel
and you do this by configuring (not programming) logic gates on an integrated circuit.
THe world of digital logic design, which FPGA is all about, can be a little intimidating.
To get more insight and calm my fears, I used the following artical to educate myself:

* FPGAs For MCU Guys and Gals
    * [The MCU guy’s introduction to FPGAs: The Hardware](https://www.embedded.com/the-mcu-guys-introduction-to-fpgas-the-hardware/)
    * [The MCU guy’s introduction to FPGAs: The Software](https://www.embedded.com/the-mcu-guys-introduction-to-fpgas-the-software/)
    * [The MCU guy’s introduction to FPGAs: Configuration Techniques & Technologies](https://www.embedded.com/the-mcu-guys-introduction-to-fpgas-configuration-techniques-technologies/)
* FPGA Bootcamp
    * [Bootcamp 0 - Covers basic digital logic concepts with simulations](https://hackaday.io/project/159720-fpga-bootcamp-0)
    * [Bootcamp 1 - Introduction to FPGA coding and simulation with combinatorial logic](https://hackaday.io/project/159191-fpga-bootcamp-1)
    * [Bootcamp 2 - More FPGA coding and simulation with flip flops (sequential logic)](https://hackaday.io/project/159216-fpga-bootcamp-2)
    * [Bootcamp 3 - Working with actual FPGA hardware](https://hackaday.io/project/159692-fpga-bootcamp-3)
    * [Bootcamp 4 - Most FPGA projects will have at least one state machine. Learn how to create these little dedicated CPUs](https://hackaday.io/project/161493-fpga-boot-camp-4-state-machines)
* Avoiding FPGA Hell
    * [FPGA Hell](https://zipcpu.com/blog/2017/05/19/fpga-hell.html)
* FPGA Design Process
    * [The Actual FPGA Design Process](http://zipcpu.com/blog/2017/06/02/design-process.html)
* First Projects Ideas
    * [Blinky](https://zipcpu.com/blog/2017/05/19/blinky.html)
    * [fpga4fun](https://www.fpga4fun.com/)
    * [Gisselquist Technology's Projects List](http://zipcpu.com/projects.html)
    * [Driving a VGA Display?! Getting started with an FPGA! (TinyFPGA)](https://www.youtube.com/watch?v=ZNunxg7o8l0)
    * [A simple GPU on a TinyFPGA BX](https://github.com/matt-kimball/toygpu)
    * [TinyFPGA BX Mandelbrot Generator](https://github.com/martin2250/tinyfpga-mandelbrot)
    * [FPGA Ethernet Cores](https://www.fpga-cores.com/)
    * [Building a Simple Logic PLL](https://zipcpu.com/dsp/2017/12/14/logic-pll.html)


* [FPGA tutorials](https://hackaday.io/list/160076-fpga-tutorials)
* [A Gentle Introduction to FPGA Programming](https://www.rs-online.com/designspark/a-gentle-introduction-to-fpga-programming)
* [Gisselquist Technology](https://zipcpu.com/about/)
* [SpokeFPGA](https://davidthings.github.io/spokefpga/) - Random blogs here look useful
* [Taking a look at the TinyFPGA BX](https://zipcpu.com/blog/2018/10/05/tinyfpga.html)

# What Is a Field-Programmable Gate Array?
[What Is a Field-Programmable Gate Array (FPGA)][01]?
An FPGA is a pool of logic gates that can be configured by a device developer.
In reality, FPGA is much more than just gates.
It’s an array of carefully designed and interconnected digital subcircuits
that efficiently implement common functions while also offering very high levels of flexibility.
The digital subcircuits are called configurable logic blocks (CLBs),
making FPGA’s programmable logic.

So when do you reach for an FPGA vs. microcontroller?
A processor accomplishes its tasks by executing instructions in a sequential fashion.
This adds overhead and it is not possible to accomplish multiple processing tasks simultaneously.
Even when the instruction set is designed to be at extremely high frequencies,
it does not eliminate the disadvantages of a software-based approach to digital design.

FPGA provides an alternative hardware-based approach.
It exploites CLBs that implements the exact functionality required by the system.
No need to write software, no instruction-set constraints, no processing delays,
just a device that has input pins, output pins, and in between,
digital circuitry corresponding precisely to the necessary operations.

So how does one “explain” to the FPGA device,
via configuring it or programming, what the CLBs needs to do?
FPGAs are always supported by development software that carries out
the complicated process of converting a hardware design (aka logic design) into the
programming bits that determine the behavior of interconnects and CLBs.

The programming language, generically called a hardware description language (HDL),
“describes” hardware.
The two most common HDLs are VHDL and Verilog.
HDL differ from software code in that HDL code is more like a hardware schematic
that uses text to introduce components and create interconnections.

* [What Is VHDL? Getting Started with Hardware Description Language for Digital Circuit Design](https://www.allaboutcircuits.com/technical-articles/hardware-description-langauge-getting-started-vhdl-digital-circuit-design/)
* [Purpose and Internal Functionality of FPGA Look-Up Tables](https://www.allaboutcircuits.com/technical-articles/purpose-and-internal-functionality-of-fpga-look-up-tables/)
* [Getting Started with FPGAs: The Development Environment and “Hello World”](https://www.allaboutcircuits.com/technical-articles/fpga-tutorial-step-1-the-development-environment-and-hello-world/)
* [FPGA and FPGA-Based Implementation of DSP Algorithms](https://forum.allaboutcircuits.com/ubs/the-list-of-my-articles-on-aac.1135/)
* [FPGA on All About Circuits](https://www.allaboutcircuits.com/search?q=fpga)

# ICE40 FPGA from Lattice
The ICE40 FPGA from Lattice for two major things going for it:
there are cheap development boards available and there are open source tools
to get you started developing low-cost, low-power FPGA designs.

* [ICESTORM TOOLS ROUNDUP: OPEN SOURCE FPGA DEV GUIDE](https://hackaday.com/2018/10/03/icestorm-tools-roundup/)

* [Getting started with the Lattice iCE40 FPGA: Device Applications and Capabilities (Part 1)](https://www.youtube.com/watch?v=DwxBkYhor80&t=21s)
* [Getting started with the Lattice iCE40 FPGA: Architecture and Technical Details (Part 2)](https://www.youtube.com/watch?v=UlgJ7TRU1KI)
* [Getting started with the Lattice iCE40 FPGA: Demo Boards, Programming w/ Radiant & iCEcube2 (Part 3)](https://www.youtube.com/watch?v=6UgVUExXlvg)
* [Getting started with the Lattice iCE40 FPGA: Programming w/ Open Source Tools (Part 4)](https://www.youtube.com/watch?v=dTL0qrzme4g)


-------


# Key Resources

## TinyFPGA BX
The [TinyFPGA AX & BX boards][04] are a new series of low-cost, open-source FPGA boards in a tiny form factor,
with solder on pins for use in a breadboard by [TinyFPGA][05].
TinyFPGA comes in two different families: [A-Series use Lattice Semiconductor’s MachXO2 FPGAs][02]
and [B-Series use Lattice Semiconductor’s iCE40 FPGAs][03].
I purchased the TinyFPGA BX which has a [ICE40LP8K FPGA chip][06].
Unlike the A-series, the BX is programed over USB and doesn't require a separate programmer.
The bootloader in the B2 is implemented inside the FPGA fabric,
thereby keeping the circuit board size small and the cost low.
It also supports an open hardware, bootloader, and toolchain.
You can work with it via the [IceStudio][08] or [Atom][09].

Sources:

* [A Look at TinyFPGA Boards](https://www.eeweb.com/profile/duane-benson-2/articles/a-look-at-tinyfpga-boards)
* [SparkFun TinyFPGA BX Board](https://www.sparkfun.com/products/14829)
* [TinyFPGA BX](https://www.crowdsupply.com/tinyfpga/tinyfpga-bx)
* [TinyFPGA BX User Guide](https://tinyfpga.com/bx/guide.html)
* [TinyFPGA BX GitHub](https://github.com/tinyfpga/TinyFPGA-BX)

## TinyFPGA's Onboard Bootloader
As the [TinyFPGA getting started guide][03] tells you,
the onboard bootloader behaves differently depending on what is connected to the USB port:

* If the TinyFPGAboard is connected to a USB host,
the bootloader will stay active and it will wait to be programmed by `tinyprog`.
* You can manually exit the bootloader and
load the user image from the onboard SPI flash by running `tinyprog -b`.
* If the board is connected to a dumb power supply,
the bootloader will timeout after one second and load the existing user image from the onboard SPI flash.
* Pressing the reset button will always return the board to the bootloader,
but it will only stay in the bootloader if its plugged into a USB host.

## APIO Toolset
Apio (pronounced [ˈa.pjo]) is a multiplatform toolbox, with static pre-built packages,
project configuration tools and easy command interface to verify, synthesize,
simulate, and upload your Verilog designs.
It uses the following tools for specific functionality under the hood.

[IceStorm][16] – synthesizing FPGA bitstreams
[Icarus Verilog][17] – `iverilog` is for simulation synthesis
[GTKWave][18] – `gtkwave` is for viewing simulation waveforms

The IceStorm and Icarus Verilog tools will be installed as part of the APIO package,
but GTKWave will not.
The GTKWave application needs to be installed if you are interested in viewing
signal waveforms created during test bench simulations.

Click the GTKWave link above and follow the instructions to install the appropriate binary for your system. Once installed, add the executable location to your path. This will enable GTKWave to function properly in both the Atom editor and the APIO command line. The path is /Applications/gtkwave.app/Contents/Resources/bin for my Mac.



-------


# Install Your Tools - DONE

>**NOTE:** My original plan was to set up VM environment for TinyFPGA.
>I never successfully got TinyFPGA to work within a VirtualBox/Vagrant VM framework,
>and it appears [others have had similar experiences][10].
>I could not get the VM to discover the TinyFPGA board when plugged into a USB port.
>Some very odd things are being done within the board with respect to device IDs.
>Before the board's bootloader is updated, the USB device ID is `1209:2100`
>with name 'Generic TinyFPGA B1 and B2 Boards'.
>After updating the bootloader, the USB device ID is `1d50:6130` and name 'OpenMoko, Inc.'.
>Nether of these ID are discovered via the VM's USB, no matter what I tried.

## Step 1: Install Atom - DONE
Atom is a free, open-source, modern (i.e. using web technologies based on [Electron][15])
source code editor for macOS, Linux, and Microsoft Windows.
It supports plug-ins written in Node.js and embedded Git "hooks" and
most of the extending packages are free / community-built.

Atom was able to be used as an integrated development environment (IDE)
until that feature was 'retired' in December 2018.
As a result, it does contain some of the characteristics of an IDE
such as its integration with Git and build / load tools.

```bash
# install dependencies
sudo apt-get -y install software-properties-common apt-transport-https wget

# install Atom using its official repository
wget -q https://packagecloud.io/AtomEditor/atom/gpgkey -O- | sudo apt-key add -

# ensure apt is set up to work with https sources
sudo apt-get -y update
sudo apt-get -y install apt-transport-https

# add its repository and install
sudo add-apt-repository "deb [arch=amd64] https://packagecloud.io/AtomEditor/atom/any/ any main"
sudo apt-get update
sudo apt-get -y install atom

# install atom packages
# once in atom, you will be requested to install additional packages
apm install apio-ide apio-linter-verilog

# install support for vim editor features
apm install vim-mode-plus
apm install vim-mode-plus-ex-mode
```

Now enter `atom` on the commandline and install
any additional packages the Atom request you to do.
After this, terminal `atom` and move to the next step.

## Step 2: Install APIO Toolset - DONE
We must update the Bootloader on the TinyFPGA board,
but first we must get `tinyprog` installed as shown below:

```bash
# create virtual environment called tinyfpga
mkvirtualenv tinyfpga -p python3

# activate the virtual environment
workon tinyfpga

# install APIO, tinyprog, as well as all of the necessary tools to actually program the FPGA
# for latest instructions - https://tinyfpga.com/bx/guide.html
pip install apio==0.4.0b5 tinyprog
apio install system scons icestorm iverilog
apio drivers --serial-enable

# tinyprog is the programmer for fpga boards using the TinyFPGA USB Bootloader
# https://github.com/tinyfpga/TinyFPGA-Bootloader/
$ tinyprog --help
usage: tinyprog [-h] [-l] [-p PROGRAM] [-u PROGRAM_USERDATA] [-b] [-c COM]
                [-i ID] [-d DEVICE] [-a ADDR] [-m] [--update-bootloader]
                [--libusb] [--pyserial]

optional arguments:
  -h, --help            show this help message and exit
  -l, --list            list connected and active FPGA boards
  -p PROGRAM, --program PROGRAM
                        program FPGA board with the given bitstream
  -u PROGRAM_USERDATA, --program-userdata PROGRAM_USERDATA
                        program FPGA board with the given user data
  -b, --boot            command the FPGA board to exit the bootloader and load
                        the user configuration
  -c COM, --com COM     serial port name
  -i ID, --id ID        FPGA board ID
  -d DEVICE, --device DEVICE
                        device id (vendor:product); default is (1d50:6130)
  -a ADDR, --addr ADDR  force the address to write the bitstream to
  -m, --meta            dump out the metadata for all connected boards in JSON
  --update-bootloader   check for new bootloader and update eligible connected
                        boards
  --libusb              try using libusb to connect to boards without a serial
                        driver attached
  --pyserial            use pyserial to connect to boards

# update the tinyprog (make sure tinyfpga board is plugged into usb port)
pip install --upgrade --no-cache-dir tinyprog
```
## Step X: Install Verilator & GTKWave - DONE
GTKWave is an analysis tool used to perform debugging on Verilog or VHDL simulation models,
such as Icarus Verilog.
With the exception of interactive Value Change Dump (VCD) viewing,
it is not intended to be run interactively with simulation,
but instead relies on a postmortem approach through the use of dumpfiles.

```bash
# install simulation tool verilator - converts verilog code to c++
sudo apt-get install verilator

# install gtkwave
sudo apt-get install gtkwave
```

Documentation:

* [GTKWave 3.3 Wave Analyzer User's Guide](http://gtkwave.sourceforge.net/gtkwave.pdf)
* [Taking a New Look at Verilator](https://zipcpu.com/blog/2017/06/21/looking-at-verilator.html)

## Step X: Update TinyFPGA's Onboard Bootloader - DONE
Now that `tinyprog` is installed, lets update the bootloader,
but make sure to first connect to the TinyFPGA board via USB:

```bash
# enter your working envirnment
workon tinyfpga

# update the tinyfpga bootloader
$ tinyprog --update-bootloader

    TinyProg CLI
    ------------
    Using device id 1d50:6130
    Only one board with active bootloader, using it.

    The following update:

        New Version: 1.0.1
        Notes: Updates USB VID:PID to fix issues with APIO not recognizing the board.

    is available for this board:

        /dev/ttyACM0: TinyFPGA BX 1.0.0
            UUID: 6b454c8e-37c1-40d7-a03b-70cde99aff6a
            FPGA: ice40lp8k-cm81

    Would you like to perform the update? [y/N] y
    Fetching stage one...
    Programming stage one...
    Erasing: 100%|████████████████████████████████████████████████████████████████████| 135k/135k [00:00<00:00, 156kB/s]
    Writing: 100%|████████████████████████████████████████████████████████████████████| 135k/135k [00:00<00:00, 209kB/s]
    Reading: 100%|████████████████████████████████████████████████████████████████████| 135k/135k [00:00<00:00, 478kB/s]
    ...Success!
    Waiting for stage one to reconnect....connected!
    Fetching stage two...
    Programming stage two...
    Erasing: 100%|████████████████████████████████████████████████████████████████████| 299k/299k [00:01<00:00, 177kB/s]
    Writing: 100%|████████████████████████████████████████████████████████████████████| 299k/299k [00:01<00:00, 220kB/s]
    Reading: 100%|████████████████████████████████████████████████████████████████████| 299k/299k [00:00<00:00, 452kB/s]
    ...Success!

# list connected and active FPGA boards
$ tinyprog --list

    TinyProg CLI
    ------------
    Using device id 1d50:6130
    Only one board with active bootloader, using it.
    Boards with active bootloaders:

        /dev/ttyACM0: TinyFPGA BX 1.0.0
            UUID: 6b454c8e-37c1-40d7-a03b-70cde99aff6a
            FPGA: ice40lp8k-cm81
```

Note that your TinyFPGA board now has the following device ID and device file:

```bash
# tinyfpga device ID
$ lsusb | grep OpenMoko
Bus 003 Device 109: ID 1d50:6130 OpenMoko, Inc.

# tinyfpga device file
ls /dev/ttyACM*
/dev/ttyACM0
```

>**NOTE:**
>`/dev/ttyS0` is a hardware serial port - the (typically) 9-pin D (RS-232) connector on the back of your computer.
>`/dev/ttyACM0` is a USB communication device (CDC) of sub-type "abstract control model" (ACM),
>typically used by micocontrollers.
>`/dev/ttyUSB0` is for a USB serial devices.
>For more information see [here][13] and [here][14].



-------



# Examples Below
* blink - The simplest example in the batch. This will show the basic steps outline in the TinyFBGA documentation.  It simply blinks an LED on the TinyFBGA board. Makes use of apio but nothing more. No simulation.
* counter - Doesn't make use of apio but shows how to use Verilator and TestBench.
* blinky
* comparator

# Blink, Test Drive of TinyFPGA - DONE
This first exercise is a Verilog based APIO project for the TinyFPGA BX that blinks the on-board LED.
We will not do any details of designing and implementing digital logic circuits in general,
but show the setting up a simple project, written Verilog, and programming the board with the project.

We'll use `atom` here on this simple example.
In a subsequent examples, we'll do everything via the command line.

Sources:
* [TinyFPGA BX User Guide][03]
* [Getting Started With The TinyFPGA BX][19]

## Step 1: Get Your Files - DONE
Using the ['TinyFPGA BX User Guide'][03] as your plan for this 'test drive',
copy the [apio_template project][11] from the [TinyFPGA BX repository][12]:

```bash
# go to the root of your FPGA projects directory`
cd ~/src/tinyfpga

# make a directory for your 'blink' project
mkdir blink
cd blink

# initialize this project (creates 'apio.ini' file)
# note -  APIO toolbar within the Atom editor has this capability
apio init --board TinyFPGA-BX

# download the project files
wget -q https://raw.githubusercontent.com/tinyfpga/TinyFPGA-BX/master/apio_template/pins.pcf
wget -q https://raw.githubusercontent.com/tinyfpga/TinyFPGA-BX/master/apio_template/top.v
```

* **`apio.ini`-** In addition to the code,
an apio project includes a configuration file `apio.ini` (or a Scons script called `SConstruct`)
* **`top.v`-** This is the project's verilog code doing the blinking
* **`pins.pcf`-** The `pins.pcf` file defines the pins available on the TinyFPGA BX board.
For instance, the `CLK` pin (defined on line 94) and the on-board `LED` pin (defined on line 86)
will be used as an input and output respectively in our design.
The `--warn-no-port` flags print warnings during the build if that particular pin is not used.

## Step 2: Flash the TinyFPGA Board - DONE
Now lets use Atom to create the FPGA code to load the SPI flash on the board:

1. Plug the TinyFPGA board into a USB port, execute Atom: `atom ~/src/tinyfpga/blink`.
2. From the “Apio” menu, select “Verify”.  The projects verilog code in the `top.v` file will be verified.
This could also be done on the commandline via `apio verify`.
This also creates a shell script `hardware.out`.
2. From the “Apio” menu, select “Upload”.  The project will automatically be built and uploaded to the TinyFPGA BX board. You can now close Atom.  This could also be done on the commandline via `apio load` or via `apio build` followed by `apio load`. `apio build` will synthesize the design and generate the bitstream file that will be uploaded to the FPGA.
3. If everything is working as it should, you should see the user LED on the board blinking a “SOS” in Morse Code.
4. If you unplug & re-plug-in the board on the USB port, you will see the blinking LED return to its state of blinking.
5. If you now execute `tinyfpga -b`, the SPI flash on th board will be reloaded and the "SOS" blinking will return.
6. When you’re satisfied that your design is working properly, you can remove all of the temporary build files by either clicking the "Clean" menu item within the APIO toolbar or running `apio clean`

If you choose too, you could do this on the command line via

```bash
apio init --board TinyFPGA-BX    # create the apio.ini file

apio verify                      # verify the top.v verilog code
apio build                       # generate the bitstream file
apio upload                      # upload the bitstream to the board

apio clean                       # delete all apio files (except apio.ini)
```

Notice that an executable file is created called `hardware.out`
resulting from the execution of `apio verify`
(specifical the execution of `iverilog`, aka [Icarus Verilog][20])
`iverilog` is a compiler that translates Verilog source code into executable programs
for simulation, or other [netlist formats][21] for further processing.
The intermediate form is called [vvp][23] assembly used for simulation, and FPGA for synthesis.



-------



# Counter, Now Using Verilator
This is another "Hello World" of FPGA electronics, a circuit the simply counts.
This example is basically taken from "[Experimenting with Verilator (counter)][25]".
Copied the verilog code from the website and created a file named `counter.v`
that implements the comparator function.

Verilator is a open source Verilog HDL simulator. It is very fast since it translates Verilog code into optimized C++. But it as also quiet different from other Verilog simulators like Icarus Verilog and commercial ones, it only supports synthesizable RTL language constructs.

This is a counter example
verilog RTL counter. This example has two registers, one running at clock posedge, the other on negedge.

>**NOTE:** In Verilog,
>usualy a clock is used as `posedge`, so everytime your clock signals goes from 0 to 1
>using `posedge` or `negedge` for the reset condition depends on the logic level you use or your design

We will not be using Atom,
but instead we'll do everything on the commandline.
It will look something like this:

Sources:
* [Experimenting with Verilator (counter)](https://www.walknsqualk.com/post/014-tiny-fpga-bx/)

## Step 1: Prepare Project Directory
Create your project directory, go into the new directory,
and initialize the project like we did previously project.

```bash
# create the project directory
cd ~/src/tinyfpga
mkdir counter
cd counter

# activate your virtual environment with your fpga tools
workon tinyfpga
```

We will not be using APIO, and therefore no need to create the `apio.ini` file
via `apio init` command.

We do need a `pins.pcf` file which
defines the TinyFPGA BX boards hardware based pin connections.
We can use the same file from the previsous project above:

```bash
# copy tinyfpga pins file
wget -q https://raw.githubusercontent.com/tinyfpga/TinyFPGA-BX/master/apio_template/pins.pcf
```

As to the logic for the counter,
you'll find what is needed here: create the `counter.v` file coping it from
`http://rattus-pubis.blogspot.com/2011/02/experimenting-with-verilator-counter.html`.

Next we verify your comparator’s Verilog code is syntactically correct:

```bash
# verify verilog code is syntactically correct
$ verilator --lint-only -Wall counter.v
```

## Step 2: Create the Testbench - DONE
Next we write a C++ testbench for the above Verilog code.
C++ is used for the bench since non-synthesizable Verilog features
would be needed to write a proper Verilog bench.
Anoter option would be to use SystemC,
but due to licensing issues it is very difficult to get a package for Linux distributions.

This testbench will toggle the clock and provide input values.
Here again, we get our code from "[Experimenting with Verilator (counter)][25]".
Create the `testbench.cpp` file coping it from
`http://rattus-pubis.blogspot.com/2011/02/experimenting-with-verilator-counter.html`.

## Step 3: Run Verilator - DONE
To create your simulation, your run `verilator` on the top level Verilog file.
In our case, this is `counter.v`.

```bash
# cleanup any old files
cd ~/src/tinyfpga/counter
rm -rf obj_dir counter.vcd hardware.blif counter.sav hardware.out

# run verilator to translate verilog into C++, include C++ testbench
verilator -Wall --cc --trace counter.v --exe testbench.cpp

# run the makefile in the newly created obj_dir directory
make -j -C obj_dir/ -f Vcounter.mk Vcounter
```

Assuming your design has no syntax errors,
you will have created a directory called `obj_dir` and a C++ class definition for `counter.v`
in the files `obj_dir/Vcounter.h` and `obj_dir/Vcounter.cpp`.
Another file in that directory, `obj_dir/Vcounter.mk`,
and you use this to “make” these files into the library that you will need to link your C++ driver program to.

## Step 4: Run the Simulator - DONE
Now we execute the simulator win the `obj_dir` directory, `Vcounter`.
This will create a `counter.vcd` file in your current directory.
This new file can then be analyized via the `gtkwave` program.

```bash
# run executable simulation
obj_dir/Vcounter

# view waveforms
gtkwave counter.vcd counter.sav &
```

## Step 5: Upload Bitstream to FPGA

```bash
# upload bitstream to fpga
tinyprog --boot
```

```bash
# cleanup any old files
cd ~/src/tinyfpga/counter
rm -rf obj_dir counter.vcd hardware.blif counter.sav hardware.out
```


-------



# Blinky, Now using Testbench
In this example, we are building a very similar module as the one above,
but this time, illustrating a simple development process.
We will not be using Atom,
but instead we'll do everything on the commandline.
It will look something like this:

```bash
apio init --board TinyFPGA-BX    # create the apio.ini file

apio verify                      # verify the top.v verilog code
apio build                       # generate the bitstream file
apio load                        # upload the bitstream to the board

apio clean                       # delete all apio files (except apio.ini)
```

Sources:
* [FPGA design for Software Engineers](https://www.walknsqualk.com/post/014-tiny-fpga-bx/)

## Step X: Prepare Project Directory
Create your project directory, go into the new directory,
and initialize the project like we did previously project.

```bash
# create the project directory
cd ~/src/tinyfpga
mkdir blinky
cd blinky

# activate your virtual environment with your fpga tools
workon tinyfpga

# initialize the project
apio init --board TinyFPGA-BX
```

This will create the `apio.ini` file in the current directory.

## Step X: Create Blinky Code
This is another "Hello World" of electronics, a blinking LED.
This example is basically the template from the [TinyFPGA-BX User Guide][03].
The difference is that we’ll simulate with Verilator first
and make sure things look good before deploying to our board.

Using verilog code, we'll create a file named `top.v`
that implements the comparator function.
You'll also need to create the `pins.pcf` file
to define our hardware based pin connections to the FPGA board.
This is unique to the FPGA board we are using and not dependent on what we are building.
You'll find what is needed here:

```bash
# copy blinky function code
wget -q https://gitlab.com/sr.jilarious/fpga_start/-/raw/master/00_blinky/top.v
wget -q https://gitlab.com/sr.jilarious/fpga_start/-/raw/master/00_blinky/pins.pcf
```

Next we verify your comparator’s Verilog code is syntactically correct:

```bash
# verify verilog code is syntactically correct
$ apio verify
iverilog -B "/home/jeff/.apio/packages/toolchain-iverilog/lib/ivl" -o hardware.out -D VCD_OUTPUT= "/home/jeff/.apio/packages/toolchain-iverilog/vlib/cells_sim.v" top.v
============================================= [SUCCESS] Took 0.20 seconds =============================================

# list to see what was created
$ ls
apio.ini  hardware.out*  pins.pcf  top.v
```

Notice that an executable file is created called `hardware.out` resulting
from the execution of `iverilog` (aka [Icarus Verilog][20])
`iverilog` is a compiler that translates Verilog source code into executable programs
for simulation, or other [netlist formats][21] for further processing.
The intermediate form is called [vvp][23] assembly used for simulation, and FPGA for synthesis.

## Step X: Run Verilator
To create your simulation, your run `verilator` on the top level Verilog file.
In our case, this is `top.v`.

```bash
# to list virlator's configuration
 $ verilator -V
Verilator 4.016 2019-06-16 rev UNKNOWN_REV

Copyright 2003-2019 by Wilson Snyder.  Verilator is free software; you can
redistribute it and/or modify the Verilator internals under the terms of
either the GNU Lesser General Public License Version 3 or the Perl Artistic
License Version 2.0.

See http://www.veripool.org/verilator for documentation

Summary of configuration:
  Compiled in defaults if not in environment:
    SYSTEMC            =
    SYSTEMC_ARCH       =
    SYSTEMC_INCLUDE    = /usr/include
    SYSTEMC_LIBDIR     = /usr/lib/x86_64-linux-gnu
    VERILATOR_ROOT     = /usr/share/verilator

Environment:
    PERL               =
    SYSTEMC            =
    SYSTEMC_ARCH       =
    SYSTEMC_INCLUDE    =
    SYSTEMC_LIBDIR     =
    VERILATOR_ROOT     =
    VERILATOR_BIN      =
```

```bash
# run veriloger on the top level verilog file
verilator -Wall -cc top.v

# or
#verilator -Wno-fatal --trace -CFLAGS "-g -03" --exe ../top.cpp  -Mdir top -Iobj_dir/ --cc top.v
```

Assuming your design has no syntax errors,
this will create a directory called `obj_dir` and a C++ class definition for `top.v`
in the files `obj_dir/Vtop.h` and `obj_dir/Vtop.cpp`.
Another file in that directory, `obj_dir/Vtop.mk`,
can be used to “make” these files into the library that you will need to link your C++ driver program to.
Let's run `make` within the directory `obj_dir`:

```bash
# run 'make' within the directory 'obj_dir'
make -C obj_dir -f Vtop.mk
```

```bash
# verilator -Wno-fatal -I$(RTLSRC)/ --cc $(@)_top.v --trace --exe ../$(@).cpp  -Mdir $(@) -CFLAGS "$(CFLAGS)"
# make -C $(@) -f V$(@)_top.mk
verilator -Wno-fatal -Iobj_dir/ --cc top.v --trace --exe ../top.cpp  -Mdir obj_dir -CFLAGS "-g -03"
make -C obj_dir -f Vtop.mk
```

## Step X: Create the Testbench Code
It is always a good idea to test your design before implementation.
When dealing with an FPGA this isn't as critical as when fabricating a chip in silicon.

We need to create a new file we'll call `comparator_tb.v`
that contains code used to test that our design is correct.
The `_tb` means it is the testbench for our underlying module.
The testbench code tests that our design is correct.
You'll find what is needed here:

```bash
# copy testbench code
wget -q https://gitlab.com/sr.jilarious/fpga_start/-/raw/master/support/TestBench.h
wget -q https://gitlab.com/sr.jilarious/fpga_start/-/raw/master/00_blinky/main.cpp

# make editoral changes for this build
sed -i 's/..\/support\/TestBench.h/TestBench.h/' main.cpp
sed -i 's/<verilated_vcd_c.h>/\"verilated_vcd_c.h\"/' TestBench.h
sed -i 's/#include "verilatedos.h"/\/\/#include "verilatedos.h"/' verilated_vcd_c.h
```

You'll find [here][24] a description of what this code is doing,
but basically its specifying the behavior you expect the hardware will produce.

Now lets launch the verilog simulation, using GTKWave,
from a verilog via the testbench file `comparator_tb.v`.


```bash
# run the simulation
$ apio sim
```



-------



# Using the Testbench
In this example, we are building a comparator that will compare two input numbers
and provide output signals as to whether the first number is
less than, equal to, or greater than the second number.
Also, in this case we'll build this example in steps,
illustrating a simple development process.

In this example, we will not be using Atom,
but instead we'll do everthing on the commandline.
It will look something like this:

```bash
apio init --board TinyFPGA-BX    # create the apio.ini file

apio verify                      # verify the top.v verilog code
apio build                       # generate the bitstream file
apio load                        # upload the bitstream to the board

apio clean                       # delete all apio files (except apio.ini)
```

Sources:
* [Getting Started With The TinyFPGA BX][19]

* [FPGA design for Software Engineers](https://www.walknsqualk.com/post/014-tiny-fpga-bx/)
* [FPGA design for Software Engineers, part 2](https://www.walknsqualk.com/post/015_fpga_design_p2/)
* [FPGA design for Software Engineers, part 3](https://www.walknsqualk.com/post/016_fpga_design_p3/)

## Step X: Prepare Project Directory
Create your project directory, go into the new directory,
and initialize the project like we did previously project.

```bash
# create the project directory
cd ~/src/tinyfpga
mkdir comparator
cd comparator

# activate your virtual envirnment with your fpga tools
workon tinyfpga

# initialize the project
apio init --board TinyFPGA-BX
```

This will create the `apio.ini` file in the current directory.

## Step X: Create Comparator Code
Using verilog code, create a new file named `comparator.v`
that implements the comparator function.
You'll also need to create the `pins.pcf` file
to define our hardware based pin connections to the FPGA board.
This is unique to the FPGA board we are using and not dependent on what we are building.
You'll find what is needed here:

```bash
# copy comparator function code
wget -q https://raw.githubusercontent.com/WoolseyWorkshop/Article-Getting-Started-With-The-TinyFPGA-BX/master/comparator/comparator.v
wget -q https://raw.githubusercontent.com/WoolseyWorkshop/Article-Getting-Started-With-The-TinyFPGA-BX/master/comparator/pins.pcf
```

This design with inputs of `a` and `b` along with outputs of `lt`, `eq`, and `gt`.
The assign statements compare the inputs and set the appropriate outputs.
The `WIDTH` parameter determines the size of our inputs and its value can be passed in from a parent module.
The default of 8 means that `a` and `b` will each be 8 bits wide.

Next we verify your comparator’s Verilog code is syntactically correct:

```bash
# create the apio.ini file
apio init --board TinyFPGA-BX

# verify verilog code is syntactically correct
$ apio verify
iverilog -B "/home/jeff/.apio/packages/toolchain-iverilog/lib/ivl" -o hardware.out -D VCD_OUTPUT= "/home/jeff/.apio/packages/toolchain-iverilog/vlib/cells_sim.v" comparator.v
============================================= [SUCCESS] Took 0.18 seconds =============================================

# list to see what was created
$ ls
apio.ini  comparator.v  hardware.out*  pins.pcf
```

Notice that an executable file is created called `hardware.out` resulting
from the execution of `iverilog` (aka [Icarus Verilog][20])
`iverilog` is a compiler that translates Verilog source code into executable programs
for simulation, or other [netlist formats][21] for further processing.
The intermediate form is called [vvp][23] assembly used for simulation, and FPGA for synthesis.

## Step X: Create the Testbench Code
It is always a good idea to test your design before implementation.
When dealing with an FPGA this isn't as critical as when fabricating a chip in silicon.

We need to create a new file we'll call `comparator_tb.v`
that contains code used to test that our design is correct.
The `_tb` means it is the testbench for our underlying module.
The testbench code tests that our design is correct.
You'll find what is needed here:

```bash
# copy testbench for comparator function code
wget -q https://raw.githubusercontent.com/WoolseyWorkshop/Article-Getting-Started-With-The-TinyFPGA-BX/master/comparator/comparator_tb.v
```

You'll find [here][24] a description of what this code is doing,
but basically its specifying the behavior you expect the hardware will produce.

Now lets launch the verilog simulation, using GTKWave,
from a verilog via the testbench file `comparator_tb.v`.


```bash
# run the simulation
$ apio sim
iverilog -B "/home/jeff/.apio/packages/toolchain-iverilog/lib/ivl" -o comparator_tb.out -D VCD_OUTPUT=comparator_tb "/home/jeff/.apio/packages/toolchain-iverilog/vlib/cells_sim.v" comparator.v comparator_tb.v
vvp -M "/home/jeff/.apio/packages/toolchain-iverilog/lib/ivl" comparator_tb.out
VCD info: dumpfile comparator_tb.vcd opened for output.
0 comparator_tb: Starting testbench simulation...
0 comparator_tb: MONITOR - a = x, b = x, lt = x, eq = x, gt = x.
2 comparator_tb: MONITOR - a = 0, b = 0, lt = 0, eq = 1, gt = 0.
4 comparator_tb: MONITOR - a = 0, b = 1, lt = 1, eq = 0, gt = 0.
6 comparator_tb: MONITOR - a = 0, b = 2, lt = 1, eq = 0, gt = 0.
8 comparator_tb: MONITOR - a = 0, b = 3, lt = 1, eq = 0, gt = 0.
10 comparator_tb: MONITOR - a = 1, b = 0, lt = 0, eq = 0, gt = 1.
12 comparator_tb: MONITOR - a = 1, b = 1, lt = 0, eq = 1, gt = 0.
14 comparator_tb: MONITOR - a = 1, b = 2, lt = 1, eq = 0, gt = 0.
16 comparator_tb: MONITOR - a = 1, b = 3, lt = 1, eq = 0, gt = 0.
18 comparator_tb: MONITOR - a = 2, b = 0, lt = 0, eq = 0, gt = 1.
20 comparator_tb: MONITOR - a = 2, b = 1, lt = 0, eq = 0, gt = 1.
22 comparator_tb: MONITOR - a = 2, b = 2, lt = 0, eq = 1, gt = 0.
24 comparator_tb: MONITOR - a = 2, b = 3, lt = 1, eq = 0, gt = 0.
26 comparator_tb: MONITOR - a = 3, b = 0, lt = 0, eq = 0, gt = 1.
28 comparator_tb: MONITOR - a = 3, b = 1, lt = 0, eq = 0, gt = 1.
30 comparator_tb: MONITOR - a = 3, b = 2, lt = 0, eq = 0, gt = 1.
32 comparator_tb: MONITOR - a = 3, b = 3, lt = 0, eq = 1, gt = 0.
34 comparator_tb: Testbench simulation PASSED.
gtkwave comparator_tb.vcd comparator_tb.gtkw

GTKWave Analyzer v3.3.101 (w)1999-2019 BSI

[0] start time.
[34000] end time.
** WARNING: Error opening save file 'comparator_tb.gtkw', skipping.
```




-------



# Getting Started: "Hello World"
* [Getting Started With The TinyFPGA BX][19]
* [Getting Started with FPGAs: The Development Environment and “Hello World”](https://www.allaboutcircuits.com/technical-articles/fpga-tutorial-step-1-the-development-environment-and-hello-world/)



[01]:https://www.allaboutcircuits.com/technical-articles/what-is-an-fpga-introduction-to-programmable-logic-fpga-vs-microcontroller/
[02]:https://tinyfpga.com/a-series-guide.html
[03]:https://tinyfpga.com/bx/guide.html
[04]:https://www.crowdsupply.com/tinyfpga/tinyfpga-ax-bx
[05]:https://tinyfpga.com/
[06]:https://cdn.sparkfun.com/assets/9/d/a/0/7/iCE40LPHXFamilyDataSheet.pdf
[07]:https://hackaday.com/2019/12/06/david-williams-is-fpga-curious/
[08]:https://icestudio.io/
[09]:https://blog.atom.io/2017/09/12/announcing-atom-ide.html
[10]:https://github.com/tinyfpga/TinyFPGA-BX/issues/4
[11]:https://github.com/tinyfpga/TinyFPGA-BX/tree/master/apio_template
[12]:https://github.com/tinyfpga/TinyFPGA-BX
[13]:https://rfc1149.net/blog/2013/03/05/what-is-the-difference-between-devttyusbx-and-devttyacmx/
[14]:https://unix.stackexchange.com/questions/307390/what-is-the-difference-between-ttys0-ttyusb0-and-ttyama0-in-linux
[15]:https://www.electronjs.org/
[16]:http://www.clifford.at/icestorm/
[17]:http://iverilog.icarus.com/
[18]:http://gtkwave.sourceforge.net/
[19]:https://www.woolseyworkshop.com/2019/08/30/getting-started-with-the-tinyfpga-bx/
[20]:https://iverilog.fandom.com/wiki/Main_Page
[21]:https://en.wikipedia.org/wiki/Netlist
[22]:https://www.systutorials.com/docs/linux/man/1-vvp/
[23]:https://linux.die.net/man/1/vvp
[24]:https://www.woolseyworkshop.com/2019/08/30/getting-started-with-the-tinyfpga-bx/#TestingTheComparator
[25]:http://rattus-pubis.blogspot.com/2011/02/experimenting-with-verilator-counter.html
[26]:https://en.wikipedia.org/wiki/Logic_simulation#Event_simulation_versus_cycle_simulation
[27]:https://www.veripool.org/wiki/veripool/Verilog_Simulator_Benchmarks#:~:text=Verilator%20is%2090x%20faster%20than,1.5x%20faster%20than%20VCS.
[28]:https://www.embecosm.com/appnotes/ean6/html/ch06s05s01.html
[29]:https://www.tutorialspoint.com/computer_logical_organization/combinational_circuits.htm
[30]:https://www.tutorialspoint.com/computer_logical_organization/sequential_circuits.htm
[31]:https://www.doulos.com/knowhow/vhdl_designers_guide/what_is_vhdl/
[32]:http://people.sabanciuniv.edu/erkays/el310/SimSyn_03.pdf
[33]:https://www.youtube.com/watch?v=uvqTRhAWi58
[34]:https://www.electronicdesign.com/resources/whats-the-difference-between/article/21800239/whats-the-difference-between-vhdl-verilog-and-systemverilog
[35]:
[36]:
[37]:
[38]:
[39]:
[40]:
