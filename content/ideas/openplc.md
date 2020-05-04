
* [What Is a PLC? An Introduction to Programmable Logic Controllers](https://www.allaboutcircuits.com/technical-articles/what-is-a-plc-introduction-to-programmable-logic-controllers/)
* [An Overview of Software Languages for Programmable Logic Controllers (PLCs)](https://www.allaboutcircuits.com/technical-articles/overview-software-languages-for-programmable-logic-controllers-plcs)
* [Ladder Logic in Programmable Logic Controllers (PLCs)](https://www.allaboutcircuits.com/technical-articles/ladder-logic-programmable-logic-controller/)
* [Model-based control: Raspberry Pi vs programmable logic controllers](https://www.controlglobal.com/articles/2020/raspberry-pi-vs-plc-for-model-based-control/)

* [Ignition SCADA + MKR WiFi 1010](https://www.hackster.io/NRobinson2/ignition-scada-mkr-wifi-1010-4d2284)





OpenPLC is mainly used on industrial and home automation, internet of things and SCADA research.

* [OpenPLC](http://www.openplcproject.com/)
* [Video: Internet of Things using the OpenPLC - ESP8266](https://www.youtube.com/watch?v=xpTBpFHyluw)
* [Video: Free PLC Simulation | openPLC | Proteus 8.1](https://www.youtube.com/watch?v=WSCU0faw9-Y)

# Industrial PC (IPC)
[Revolution Pi](https://revolution.kunbus.com/)
is an Open Source IPC based on Raspberry Pi

# PLC or Arduino?
* [Video: Let's Learn PLC - PLC or Arduino?](https://www.youtube.com/watch?v=J4pMD-XfYlo)
* [PLC P1AM-100 Controller Compatible with Arduino](https://news.thomasnet.com/fullstory/new-p1am-100-controller-compatible-with-arduino-mkr-format-shields-40033353)

# SCADA
In large industrial structures, it is impractical or even impossible to control the individual parts of the system because, in most installations, the parts are often located very far from each other. Thus the need arises to monitor and control them with SCADA and HMI. The main difference between SCADA and HMI is their scope. HMI is actually just a part of the larger SCADA system. Without SCADA, the HMI would be pretty much useless.

SCADA stands for “Supervisory Control and Data Acquisition,”
which is an integrated system that is used to control and monitor
the workings of the individual parts of the plant.
The SCADA often controls pumps, fans, and other machinery along with their other characteristics.

The controlling mechanisms are electronic circuits known as programmable logic circuits or PLCs.
The PLC controls the machine as well as polls the sensors for data. The data is then sent to the control room.
In the control room, the operator needs to make sense of the data,
as well as issue commands like turning the machines on or off.

Human Machine Interface HMI is usually a graphical layout of the entire system
with gauges, lights, and controls situated in the corresponding locations of the machines.
The gauges show the normal range of operation, as well as the abnormal range,
so that the operator knows if the equipment is within the accepted operating range.
The lights may indicate if the machine is working or not,
as well as the occurrence of faults.
The controls send the instructions to the PLC, which in turn control the machine.

# Modbus
* [Video: Understanding Modbus Serial and TCP/IP](https://www.youtube.com/watch?v=k993tAFRLSE)

# Inductive Automation
* [Inductive Automation](https://inductiveautomation.com/)
* [Inductive Automation Documentation](https://docs.inductiveautomation.com/)

# Cirrus Link Solutions
[Cirrus Link Solutions](https://www.cirrus-link.com/)

### Step X: Download a Vagrant Box and Build Virtual Machine
establish a vagrant environment

```bash
# directory for my vagrant vm
mkdir ~/src/inductive
cd ~/src/inductive

# create a base Vagrantfile
# offical Ubuntu 16.04 LTS daily build
vagrant init ubuntu/xenial64
```

Enable the GUI by editing the generated Vagrantfile by uncommenting the following lines:

```bash
config.vm.provider "virtualbox" do |vb|
    # Display the VirtualBox GUI when booting the machine
    vb.gui = true

    # Customize the amount of memory on the VM:
    vb.memory = "2048"
end
```


```bash
spin it up!
vagrant up

# enter the box
vagrant ssh
```

You should be able to SSH the machine and see the VM running with the Unity desktop.
Login with username: vagrant, password: vagrant via the login prompt on the virtualbox GUI.

To load with success the X display manager along with Unity from TTY, use next command:

```bash
# start the X display manager for unity
sudo service lightdm start
```

# Create You Own Box
* [Steps to create a Vagrant Base Box with Ubuntu 14.04 Desktop (GUI) and VirtualBox](http://aruizca.com/steps-to-create-a-vagrant-base-box-with-ubuntu-14-04-desktop-gui-and-virtualbox/)
