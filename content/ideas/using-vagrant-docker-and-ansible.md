

# Using Vagrant, Docker, and Ansible

# Some Prerequisites

## Infrastructure as Code
In the not-so-distant past
(prior to the rise of DevOps),
if you wanted to build a software company,
you also had to manage a lot of hardware.
You would set up cabinets and racks, load them up with servers, hook up wiring,
install cooling, build redundant power systems, and so on.
The idea behind infrastructure as code (IAC)
is that you write and execute code to define, deploy, and update your infrastructure.
The article "[Why use Terraform?][36]" give a excellent description
and motivation for the multiple infrastructure tools.

The complexity of application stacks keeps going up

## HomeLab
Maybe you want to experiment with different technologies,
create development environments, or have your own private cloud.

* [How to set up a homelab from hardware to firewall](https://opensource.com/article/19/3/home-lab)
* [How to use infrastructure as code](https://opensource.com/article/19/7/infrastructure-code)


----


# VirtualBox
[VirtualBox][09] is a [full virtualization][07] x86 / AMD64 / Intel64 hardware architecture
(contrast this with [hardware-assisted virtualization][08]).
It creates a [virtual machine (VM)][06], aka an emulation of a computer system.
Virtual machines (VM) behave like a separate computer system,
complete with virtual hardware devices.
The VM runs as a process in a window on your current operating system.
You can boot an operating system installer disc (or live CD) inside the virtual machine,
and the operating system will be “tricked” into thinking it’s running on a real computer.
It will install and run just as it would on a real, physical machine.

## VBoxManage
[VBoxManage][53] is the command-line interface to Oracle VM VirtualBox.
With it, you can completely control Oracle VM VirtualBox from the command line of your host operating system.
It exposes all the features of the virtualization engine,
even those that cannot be accessed from the GUI.

```bash
# list vagrant boxes available
$ vagrant box list
ubuntu/bionic64 (virtualbox, 20190508.0.0)
ubuntu/disco64  (virtualbox, 20191204.0.0)
ubuntu/disco64  (virtualbox, 20191217.0.0)
ubuntu/trusty64 (virtualbox, 20180227.0.1)
ubuntu/xenial64 (virtualbox, 20180912.0.0)
windows10base   (virtualbox, 0)

# lists all virtual machines currently registered
$ VBoxManage list vms
"Windows 8" {13ac2827-612d-43cf-af2b-f578c1f4df9a}
"micropython_default_1550427608885_85428" {ee5c9ada-f0b8-45e8-9972-4d0efe77eb65}
"mosquitto_default_1556416097304_85598" {9a247aaa-571c-412a-8f1f-3f9732ce7a18}
"tensorflow_default_1576814704088_93718" {e9e714da-183b-42c6-981f-e5e547b52a89}
"tensorflow_default_1577381355317_77366" {dcb0ebdc-f906-4d21-ae77-0f11858819b7}
"rsyslog-test_default_1581097326775_97773" {5bf0edd8-8fde-48fa-9532-f9cfdae98ae0}
"windows-10_Windows10BaseBox_1581212590774_74597" {856f4ebb-3f51-4138-a51a-2091bf2ab296}

# lists the host DVD along with the name used to access them from within virtualbox
$ VBoxManage list hostdvds
UUID:         00445644-0000-0000-2f64-65762f737230
Name:         /dev/sr0

# shows information about a particular virtual machine
VBoxManage showvminfo windows-10_Windows10BaseBox_1581212590774_74597
```


```bash
# get the list of VMs that are running and their VM ID
$ VBoxManage list runningvms
"rsyslog-test_default_1581097326775_97773" {5bf0edd8-8fde-48fa-9532-f9cfdae98ae0}
"windows-10_Windows10BaseBox_1581212590774_74597" {856f4ebb-3f51-4138-a51a-2091bf2ab296}

# get the list of properties about the VM, so you can get the IDE controller name
$ VBoxManage showvminfo windows-10_Windows10BaseBox_1581212590774_74597 | grep "Controller Name"
Storage Controller Name (0):            IDE Controller

# add an empty optical drive
VBoxManage storageattach 856f4ebb-3f51-4138-a51a-2091bf2ab296 --storagectl "IDE Controller" --port 0 --device 1 --type dvddrive --medium emptydrive
```

```bash
# take snapshots so you can revert back to a known-good state rather than having to completely re-install
VBoxManage snapshot $VM take <name of snapshot>

# revert back to a particular snapshot
VBoxManage snapshot $VM restore <name of snapshot>
```


----


# Vagrant
* [Vagrant Crash Course](https://www.youtube.com/watch?v=vBreXjkizgo)
* [Crash Course on Vagrant](https://sysadmincasts.com/episodes/42-crash-course-on-vagrant-revised)
* [Managing virtual environments with Vagrant](https://opensource.com/article/18/4/vagrant-guide-get-started)

[Vagrant][01] is a tool that offers a simple and easy to use
command-line client for managing virtual environments.
I started using it because it made it easier for me to
standup new software solutions for testing without disrupting my working system.

[Vagrant][01] is a tool for building and managing virtual machine environments in a single workflow.
Vagrant has an easy-to-use workflow, makes automation easy, and lowers development environment setup time.
Machines are provisioned on top of VirtualBox, VMware, AWS, or any other provider.
Then, industry-standard provisioning tools such as
shell scripts, Chef, or Puppet, can automatically install
and configure software on the virtual machine.

**For developers**, Vagrant will isolate dependencies and their configuration within a
single disposable, consistent environment, without sacrificing
any of the tools you are used to working with (editors, browsers, debuggers, etc.).
Once you or someone else creates a single [Vagrantfile][10],
you just need to `vagrant up` and everything is installed and configured for you to work.

**For DevOps**, Vagrant gives you a disposable environment
and consistent workflow for developing and testing infrastructure management scripts.
You can quickly test things like shell scripts, Chef cookbooks, Puppet modules,
and more using local virtualization such as VirtualBox or VMware.
Then, with the same configuration, you can test these scripts
on remote clouds such as AWS or RackSpace with the same workflow.

So the high level difference between these two is VirtualBox is the creator of virtual machines
and Vagrant is a manager of the virtual machines environment.
Also, Vagrant and Docker suport different types of virtualisation.
Vagrant is related to virtual machines and Docker is a virtual environment tool.

Aside from reading [Vagrant's official documentation][05],
it also helps to know some of the basic terminology used by Vagrant:

* **Box:** A box is a packaged Vagrant environment, typically a virtual machine.
* **Provider:** A provider is the location in which the virtual environment runs.
It can be local (the default is to use VirtualBox), remote, or even a special case like a Docker container.
* **Provisioner:** A provisioner is a tool to set up the virtual environment,
and can be as simple as a shell script, but alternatively a more advanced tool
like Chef, Puppet, or Ansible can be used.

## Boxes
[Boxes][12] are the package format for Vagrant environments.
A box can be used by anyone on any platform that Vagrant supports
to bring up an identical working environment.
The `vagrant box` utility provides all the functionality for managing boxes.

Vagrant can ingest standard box templates, called base boxes,
to intialize your Vagrant VM.
The [Vagrant Cloud][13] and [Vagrantboex.es][11] websites
provide a list of base boxes organizations / people have made publicly available or can be purchased.

Vagrant boxes are all provider-specific. A box for VirtualBox is incompatible with the VMware Fusion provider, or any other provider. A box must be installed for each provider, and can share the same name as other boxes as long as the providers differ. So you can have both a VirtualBox and VMware Fusion "precise64" box.

## Defining Multiple Machines
* https://www.vagrantup.com/docs/multi-machine/

## What About Containers (e.g. Docker)
A container emulates the user space of an operating system.
You run a container engine to create isolated processes, memory, mount points, and networking.

* The **benefit** of this is that any container you run on top of the container engine
can only see its own user space, so it’s isolated from the host machine and other containers,
and will run exactly the same way in all environments.
Since the kernel and hardware are shared,
your containers can boot up in milliseconds and have virtually no CPU or memory overhead.
* The **drawback** is that all the containers running on a single server share
that server’s operating system kernel and hardware,
so the isolation is not as secure as with VMs.

Both docker and vagrant help create predictable and repeatable development environments. However, docker uses container technology while vagrant uses virtual machines to achieve this goal. Understanding the strengths and weaknesses of Docker and Vagrant will help developers mix and match these tools to achieve the desired results.

A Docker container is basically your complete application
and all of its dependencies wrapped up into one neat package.
Then you can run this image as a container on any machine running Docker.
You don’t need a new virtual machine for each container,
just one, as they are designed to run on top of a machine.
Then, you can run as many Docker containers as you like on that virtual machine,
as long as you have enough processing power and RAM.
If you can run Docker, you can run your application and it will work every time.

Vagrant is a tool focused on providing a consistent development environment workflow
across multiple operation systems.
Docker is a container management that can consistently run software
as long as a containerization system exists.

* [Container Basics](https://www.sdxcentral.com/containers/definitions/containers-basics-update/)

## Docker vs Vagrant
* [Docker Vs Vagrant](https://www.youtube.com/watch?v=9QGkJvbLpRA)
* [Docker – the Best Containerization Platform for an Efficient Software Development](https://www.cabotsolutions.com/2016/12/docker-best-containerization-platform-efficient-software-development/)
* [Docker vs Vagrant: Which is Better for Development?](https://www.devteam.space/blog/docker-vs-vagrant-which-is-better-for-development/)
* [Ansible and Docker: the Best Combination for an Efficient Software Product Management](https://medium.com/@cabot_solutions/ansible-and-docker-the-best-combination-for-an-efficient-software-product-management-28c86cfebe90)
* [Docker’s detached mode for beginners](https://www.freecodecamp.org/news/dockers-detached-mode-for-beginners-c53095193ee9/)

## Learning Vagrant
So Vagrant allows you to create portable work environments
which can be easily reproduced on any system.
It's useful for developers and system administrators
who want to mimic a server's configuration on their local machine.
Here are some materials to learn more about Vagrant:

* [Why Vagrant?](https://www.youtube.com/watch?v=N-8QuptIOvg)
* [Installing Vagrant and VirtualBox](https://www.youtube.com/watch?v=RhhF8Yh7OnE)

* [Tips for a better Vagrant-based development workflow](https://www.jeffgeerling.com/blogs/jeff-geerling/better-vagrant-development-workflow)
* [Vagrant: sudo access and the hostsupdater plugin](http://myrant.net/2016/05/07/vagrant-sudo-access-and-the-hostsupdater-plugin/)

* [Installing Vagrant and VirtualBox](https://www.youtube.com/watch?v=RhhF8Yh7OnE)
* [Crash Course on Vagrant](https://sysadmincasts.com/episodes/42-crash-course-on-vagrant-revised)

## Installing Vagrant

### Step 1: Installing Vagrant and VirtualBox - DONE
Its best to install both VirtualBox and Vagrant via their respective download pages,
not your operating systems distribution package manager.
To often these packages are missing dependencies or include very outdated versions.
Go to [VirtualBox download][03] and [Vagrant download][02] pages for your software and install procedures.
Once you download the Vagrant deb file, click on it, and follow the instructions.

As a quick sanity check, make sure that we have the `vagrant` command in your path,
check the version number with `vagrant -v`
or `vagrant version` to check if your running the latest version.

### Step 2: Install Vagrant Hosts Updater Plugin - DONE
The [`vagrant-hostsupdater`][04] plugin adds an entry to your `/etc/hosts`
file on the host system.
With this, every time you start or shut down a VM with Vagrant,
the relevant hosts entries will be placed in your system's hosts file,
without requiring you to do anything manually.

Another nice plugin is [`vagrant-scp`][52].
It adds a `scp` command to vagrant,
so you can copy files to your VM like you would normally do with `scp`.

```bash
# list plugins currently installed
vagrant plugin list

# install host updater and other plugin
vagrant plugin install vagrant-hostsupdater
vagrant plugin install vagrant-scp

# uninstall the plugins
vagrant plugin uninstall vagrant-hostsupdater

# update the plugin
vagrant plugin update vagrant-hostsupdater
```

A downside to using the `vagrant-hostsupdater` plugin
is that you have to enter your `sudo` password when you build and destroy VMs.
You can avoid this by adding the following lines to your `/etc/sudoers` configuration

>**NOTE:** Make sure to use `sudo visudo` instead of just editing it in your favorite editor.
Then quit and restart your Terminal session so the new settings are picked up.

```bash
############################  Vagrant Configuration  ###########################
# NOTE: Make sure the 'admin' group is changed to whatever group your user account is in

# Allow Vagrant to manage NFS exports.
Cmnd_Alias VAGRANT_EXPORTS_ADD = /usr/bin/tee -a /etc/exports
Cmnd_Alias VAGRANT_NFSD = /sbin/nfsd restart
Cmnd_Alias VAGRANT_EXPORTS_REMOVE = /usr/bin/sed -E -e /*/ d -ibak /etc/exports

# Allow Vagant to manage hosts file.
Cmnd_Alias VAGRANT_HOSTS_ADD = /bin/sh -c echo "*" >> /etc/hosts
Cmnd_Alias VAGRANT_HOSTS_REMOVE = /usr/bin/sed -i -e /*/ d /etc/hosts
%admin ALL=(root) NOPASSWD: VAGRANT_EXPORTS_ADD, VAGRANT_NFSD, VAGRANT_EXPORTS_REMOVE, VAGRANT_HOSTS_ADD, VAGRANT_HOSTS_REMOVE
```

For more information,
checkout

### Step X: Install the Cashier Pluggin
[speeds up Vagrant processing of packages](http://jeremybarthe.com/2015/02/02/speed-up-vagrant-environment-symfony2/)

```bash
vagrant plugin install vagrant-cachier
```

Also recommened to clear this problem - https://github.com/fgrehm/vagrant-cachier/issues/175

  if Vagrant.has_plugin?("vagrant-cachier")
    config.cache.scope = :machine

    config.cache.synced_folder_opts = {
      owner: "_apt",
      group: "_apt"
    }

* [`vagrant-cashier` plugin](http://fgrehm.viewdocs.io/vagrant-cachier/)
* [How To “Fix E: Could not open file /var/lib/dpkg/status”](https://www.unixmen.com/fix-e-open-file-varlibdpkgstatus/)

```bash
# this is how to fix
# "E: Could not open file /var/lib/dpkg/status”
# or "E: List directory /var/lib/apt/lists/partial is missing"

# if you get this
$ sudo apt-get update
Reading package lists... Error!
E: List directory /var/lib/apt/lists/partial is missing. - Acquire (2: No such file or directory)
E: flAbsPath on /var/lib/dpkg/status failed - realpath (2: No such file or directory)
E: Could not open file  - open (2: No such file or directory)
E: Problem opening
E: The package lists or status file could not be parsed or opened.

# then run this
sudo rm -r -f /var/lib/apt
sudo mkdir --parent /var/lib/apt/lists/partial
```

### Step X: Download a Vagrant Box and Build Virtual Machine
https://app.vagrantup.com/boxes/search?utf8=%E2%9C%93&sort=downloads&provider=&q=ubuntu+16.04

This puts wthe offical Ubuntu 16.04LTE (Xenia Xerus) daily build on your system.

```bash
# move to directory for vagrant vm
mkdir ~/tmp/vagrant-test
cd ~/tmp/vagrant-test

# create a base Vagrantfile (Ubuntu 16.04) and bring it up
vagrant init ubuntu/xenial64
vagrant up

# login to the machine
vagrant ssh
```

At a later time, you may want to update this box.
You can do this via:

```bash
# list the boxes you have installed
$ vagrant box list
ubuntu/trusty64 (virtualbox, 20180227.0.1)
ubuntu/xenial64 (virtualbox, 20180410.0.0)
ubuntu/xenial64 (virtualbox, 20180706.0.0)
```

To update the version of a box:

```bash
# check if there are updates available for all boxes
$ vagrant box outdated --global
* 'ubuntu/xenial64' for 'virtualbox' (v20180706.0.0) is up to date
* 'ubuntu/trusty64' for 'virtualbox' is outdated! Current: 20180227.0.1. Latest: 20180627.0.1

# updates a specified box
????

# updates the current vagrant environment if there are updates available
vagrant box update
```

To remove a box:

```bash
# list the boxes you have installed
$ vagrant box list
ubuntu/trusty64 (virtualbox, 20180227.0.1)
ubuntu/xenial64 (virtualbox, 20180410.0.0)
ubuntu/xenial64 (virtualbox, 20180706.0.0)

# remove the older ubuntu/xenial64 box
vagrant box remove ubuntu/xenial64 --box-version=20180410.0.0
```

### Step 3A: Setup SSH Keys on Linux
If you want to use your SSH credentials inside a Vagrant-powered VM,
you can turn on SSH agent forwarding on by adding the following line inside your Vagrantfile:

```
config.ssh.forward_agent = true
```

> **Note:** You usually don't have fowarding enabled if you are treating Vagrant VMs
strictly as sandboxed development environments.
If you are installing some software for testing inside the VM as the vagrant user,
you don't want it to be able to use your SSH credentials to do anything nefarious!
Generally that won't happen, but erring on the side of caution.

* https://www.cyberciti.biz/faq/how-to-set-up-ssh-keys-on-linux-unix/
* [Change Insecure Key To My Own Key On Vagrant](http://ermaker.github.io/blog/2015/11/18/change-insecure-key-to-my-own-key-on-vagrant.html)
* [Vagrant insecure by default?](https://stackoverflow.com/questions/14715678/vagrant-insecure-by-default)
* [security - Vagrant insecure by default?](https://code-examples.net/en/q/e08b1e)
* [Tips for a better Vagrant-based development workflow](https://www.jeffgeerling.com/blogs/jeff-geerling/better-vagrant-development-workflow)

### Step 3B: SSH Keys Inside Your VM - DONE
If you want to use your SSH credentials inside a Vagrant VM,
effectively re-use the key pair you have on the host machine,
you can turn on SSH agent forwarding on by adding
the following line inside your `vagrantfile` file:

```bash
# add this to the vagrantfile
config.ssh.forward_agent = true
```

>**NOTE:** If you're treating Vagrant VMs strictly as sandboxed development environments,
then usually you don't want to do this.
Doing so your could be mistakenly give your keys away to someone using the VM.

### Step X: Vagrantfile Setup
* [Vagrantfile Explained: Setting Up and Provisioning with Shell](https://www.sitepoint.com/vagrantfile-explained-setting-provisioning-shell/)

### Step X: Logging into Vagrant VM
```bash
# start your vagrant vm
$ vagrant up
Bringing machine 'default' up with 'virtualbox' provider...
==> default: Checking if box 'ubuntu/xenial64' is up to date...
==> default: Clearing any previously set forwarded ports...
==> default: Clearing any previously set network interfaces...
==> default: Preparing network interfaces based on configuration...
    default: Adapter 1: nat
==> default: Forwarding ports...
    default: 22 (guest) => 2222 (host) (adapter 1)
==> default: Running 'pre-boot' VM customizations...
==> default: Booting VM...
==> default: Waiting for machine to boot. This may take a few minutes...
    default: SSH address: 127.0.0.1:2222
    default: SSH username: vagrant
    default: SSH auth method: private key
==> default: Machine booted and ready!
==> default: Checking for guest additions in VM...
    default: The guest additions on this VM do not match the installed version of
    default: VirtualBox! In most cases this is fine, but in rare cases it can
    default: prevent things such as shared folders from working properly. If you see
    default: shared folder errors, please make sure the guest additions within the
    default: virtual machine match the version of VirtualBox you have installed on
    default: your host and reload your VM.
    default:
    default: Guest Additions Version: 5.1.34
    default: VirtualBox Version: 5.2
==> default: [vagrant-hostsupdater] Checking for host entries
==> default: Mounting shared folders...
    default: /vagrant => /home/jeff/src/test-env/mongodb
==> default: Machine already provisioned. Run `vagrant provision` or use the `--provision`
==> default: flag to force provisioning. Provisioners marked to run always will still run.

# login as the vagrant user
vagrant ssh
```

### Step X:
### Step X:
### Step X:

### Step X: Shutdown Vagrant Instance
To findout what machines Vagrant is managing, run the following command:

This command shuts down the running machine Vagrant is managing.

```bash
# gracefully turn down the running machine
vagrant halt
```

Vagrant will first attempt to gracefully shut down
the machine by running the guest OS shutdown mechanism.
If this fails, or if the `--force` flag is specified,
Vagrant will effectively just shut off power to the machine.

# Add Public Key to Vagrant
* [Add public key to Vagrant](https://medium.com/@Sohjiro/add-public-key-to-vagrant-4bd5424521bf)

# Upload Private SSH Key to Vagrant Box on "vagrant up"
Sometimes it is handy to have your own private SSH key on your vagrant box,
especially when you want to use git inside your box, rather then in you host OS.

Assuming you're using  Linux,
you can use shell provisioner to upload local file to remote box:

```bash
Vagrant.configure("2") do |config|
    config.vm.provision :shell, :inline => "echo -e '#{File.read("#{Dir.home}/.ssh/id_rsa")}' > '/home/vagrant/.ssh/id_rsa'"
end
```

```bash
Vagrant.configure("2") do |config|
    config.vm.provision "file", source: "~/.ssh/id_rsa.pub", destination: "~/.ssh/rsa.pub"
end
```

You may want to upload you git configuration file `~/.gitconfig`:

```bash
Vagrant.configure("2") do |config|
    config.vm.provision :shell, :inline => "echo -e '#{File.read("#{Dir.home}/.gitconfig")}' > '/home/vagrant/.gitconfig'"
end
```

# Development Workflow With Vagrant
* [Managing virtual environments with Vagrant](https://opensource.com/article/18/4/vagrant-guide-get-started)
* [Development Workflow With Vagrant](https://paulund.co.uk/development-workflow-vagrant)
* [A gentle introduction to Vagrant, the automated Virtual Machine builder](https://chariotsolutions.com/blog/post/a-gentle-introduction-to-vagrant-the-automated-virtual-machine-builder/)
* [Building a Vagrant Box from Start to Finish](https://www.engineyard.com/blog/building-a-vagrant-box-from-start-to-finish)
* [How to Create a Vagrant Base Box from an Existing One](https://scotch.io/tutorials/how-to-create-a-vagrant-base-box-from-an-existing-one)
* [How to Create and Share a Vagrant Base Box](https://www.sitepoint.com/create-share-vagrant-base-box/)
* [How to create a Vagrant Virtual Machine](https://codewithintent.com/how-to-creat-a-vagrant-virtual-machine/)
* https://howtoprogram.xyz/2017/08/11/change-vagrant-virtual-machine-name/
* https://howtoprogram.xyz/2016/07/11/basic-vagrant-commands/

## Vagrant Command-Line Interface
To list all the `vagrant` commands available:

```
# list all the vagrant commands
$ vagrant list-commands
Below is a listing of all available Vagrant commands and a brief
description of what they do.

box             manages boxes: installation, removal, etc.
cap             checks and executes capability
destroy         stops and deletes all traces of the vagrant machine
docker-exec     attach to an already-running docker container
docker-logs     outputs the logs from the Docker container
docker-run      run a one-off command in the context of a container
global-status   outputs status Vagrant environments for this user
halt            stops the vagrant machine
help            shows the help for a subcommand
init            initializes a new Vagrant environment by creating a Vagrantfile
list-commands   outputs all available Vagrant subcommands, even non-primary ones
login           log in to HashiCorps Vagrant Cloud
package         packages a running vagrant environment into a box
plugin          manages plugins: install, uninstall, update, etc.
port            displays information about guest port mappings
powershell      connects to machine via powershell remoting
provider        show provider for this environment
provision       provisions the vagrant machine
push            deploys code in this environment to a configured destination
rdp             connects to machine via RDP
reload          restarts vagrant machine, loads new Vagrantfile configuration
resume          resume a suspended vagrant machine
rsync           syncs rsync synced folders to remote machine
rsync-auto      syncs rsync synced folders automatically when files change
snapshot        manages snapshots: saving, restoring, etc.
ssh             connects to machine via SSH
ssh-config      outputs OpenSSH valid configuration to connect to the machine
status          outputs status of the vagrant machine
suspend         suspends the machine
up              starts and provisions the vagrant environment
validate        validates the Vagrantfile
version         prints current and latest Vagrant version
```

Check out [Vagrant's online documention][14] for adition information concurning Vagrant CLI.

### Step 1:
Before you run any of the `vagrant` commands,
make sure that your located in the directory where
you want save your files that will be used in your application.

Next you must select a virtual machine that you will want to init your file with.
You can find a list of available virtual machines at the
[Vagrant Cloud][13] and [Vagrantboex.es][11] websites.
You could also [build a Vagrant Box from scratch][15].

```bash
# directory for my vagrant vm
mkdir ~/tmp/vagrant-test
cd ~/tmp/vagrant-test

# create a base Vagrantfile (Ubuntu 16.04) and bring it up
vagrant init ubuntu/xenial64
vagrant up
```

Now the machine is created and up, lets connect to it used over an SSH connection.

```bash
vagrant ssh

### Step X:
```bash
# get status of all vagrant machines on the host
vagrant global-status

# get status of all vagrant machines for this directories vagrantfile
vagrant status

# list all the boxes - just to know the names
vagrant box list

# stop the vagrant machine
vagrant halt
```

## Step X: Remove Old Boxes Plugin
After using Vagrant for some time,
you end up with way too many old boxes,
and the only way you can remove them is one-by-one
via an multi-step operation like:

```bash
# list the boxes you have installed
$ vagrant box list
ubuntu/bionic64 (virtualbox, 20180907.0.0)
ubuntu/bionic64 (virtualbox, 20180913.0.0)
ubuntu/trusty64 (virtualbox, 20180227.0.1)
ubuntu/xenial64 (virtualbox, 20180831.0.0)
ubuntu/xenial64 (virtualbox, 20180912.0.0)

# remove only the specified ubuntu/xenial64 box
vagrant box remove ubuntu/xenial64 --box-version=20180831.0.0
```

Luckily there is builtin feature `vagrant box prune` and
it will remove older boxes with a specific name and from a specific provider,
or it can remove all but the latest installed boxes.

```bash
$ vagrant box prune --help
Usage: vagrant box prune [options]

Options:

    -p, --provider PROVIDER          The specific provider type for the boxes to destroy.
    -n, --dry-run                    Only print the boxes that would be removed.
        --name NAME                  The specific box name to check for outdated versions.
    -f, --force                      Destroy without confirmation even when box is in use.
    -h, --help                       Print this help
```

Here is an example of `vagrant box prune` at work:

```bash
# list the boxes you have installed
$ vagrant box list
ubuntu/bionic64 (virtualbox, 20180907.0.0)
ubuntu/bionic64 (virtualbox, 20180913.0.0)
ubuntu/trusty64 (virtualbox, 20180227.0.1)
ubuntu/xenial64 (virtualbox, 20180831.0.0)
ubuntu/xenial64 (virtualbox, 20180912.0.0)

# do a dry run to see the impact
$ vagrant box prune --dry-run
The following boxes will be kept...
ubuntu/bionic64 (virtualbox, 20180913.0.0)
ubuntu/trusty64 (virtualbox, 20180227.0.1)
ubuntu/xenial64 (virtualbox, 20180912.0.0)

Checking for older boxes...
Would remove ubuntu/bionic64 virtualbox 20180907.0.0
Would remove ubuntu/xenial64 virtualbox 20180831.0.0

# make the pruning
$ vagrant box prune
The following boxes will be kept...
ubuntu/bionic64 (virtualbox, 20180913.0.0)
ubuntu/trusty64 (virtualbox, 20180227.0.1)
ubuntu/xenial64 (virtualbox, 20180912.0.0)

Checking for older boxes...
Box 'ubuntu/bionic64' (v20180907.0.0) with provider 'virtualbox' appears
to still be in use by at least one Vagrant environment. Removing
the box could corrupt the environment. We recommend destroying
these environments first:

default (ID: ce0a38ee8cf347e1a125ea0cad47d28f)

Are you sure you want to remove this box? [y/N] N
Removing box 'ubuntu/xenial64' (v20180831.0.0) with provider 'virtualbox'...
```

## Vagrant Tools
Assuming you have only one box per provider,
this command will delete ALL Vagrant boxes you currently have on your system:

```bash
# outputs status of all vagrant machines
vagrant global-status

# delete all your vagrant boxes
vagrant box list | cut -f 1 -d ' ' | xargs -L 1 vagrant box remove -f

# packages a running virtualbox env in a reusable box
vagrant package
```

To remove a box:

```bash
# list the boxes you have installed
$ vagrant box list
ubuntu/trusty64 (virtualbox, 20180227.0.1)
ubuntu/xenial64 (virtualbox, 20180410.0.0)
ubuntu/xenial64 (virtualbox, 20180706.0.0)

# remove the older ubuntu/xenial64 box
vagrant box remove ubuntu/xenial64 --box-version=20180410.0.0
```

## Step X: Checking Status of Vagrant Boxes

```bash
#  lists all the boxes that are installed into Vagrant
vagrant box list

# check if box you are using in your current vagrant environment is outdated
vagrant box outdated

# check if every box if its outdated
vagrant box outdated --global

# state of all active vagrant environments on the system for the currently logged in user
vagrant global-status

# removes a box from vagrant that matches the given name
vagrant box remove NAME

# removes old versions of installed boxes; if in use confirm first.
vagrant box prune

# repackages the given box and puts it in the current directory
# name, provider, and version of the box can be retrieved using 'vagrant box list'
vagrant box update
```




###############################################################################
The private_network is a network that is only between your host and the guest vm. If you want to make the guest vm available to others systems on the same network as your host you need to use the "public_network" setup in vagrant. This will allow your guest to get/use an IP address on the network that your host is on.
###############################################################################

## Creating a Vagrant Base Box From an Existing One
* [Creating a Vagrant Base Box From an Existing One](https://scotch.io/tutorials/how-to-create-a-vagrant-base-box-from-an-existing-one)
* [Creating your own Vagrant base box](http://eudaimonia.io/2016/05/16/creating-your-own-vagrant-base-box.html)
* [Creating a Custom Box from Scratch](https://www.skoblenick.com/vagrant/creating-a-custom-box-from-scratch/)


----


## Vagrant Package: Custom Vagrant Boxes by Creating Your Own Base Box
* [Creating a Base Box](https://www.vagrantup.com/docs/virtualbox/boxes.html)
* [Creating Vagrant Base Box with Veewee](http://ruleoftech.com/2015/creating-vagrant-base-box-with-veewee)
* [Vagrant, Packer, Veewee.. what to use?](https://unscramblegk.tumblr.com/post/64993566557/vagrant-packer-veewee-what-to-use)
* [Repeatable Vagrant builds with Packer](https://techblog.covermymeds.com/infrastructure/repeatable-vagrant-builds-with-packer/)
* [Building VM images with Ansible and Packer](https://www.jeffgeerling.com/blog/server-vm-images-ansible-and-packer)
* [Using Packer and Vagrant to Build Virtual Machines](https://blog.codeship.com/packer-vagrant-tutorial/)
* [How to Install and use Packer on Ubuntu 18.04](https://computingforgeeks.com/how-to-install-and-use-packer/)
* [Packer Tutorial For Beginners – Automate AMI Creation](https://devopscube.com/packer-tutorial-for-beginners/)


# Packer
The creation of a Vagrant box starts with the creation of VM using virtualization tool like VirtualBox.
This is often a manual process, using a GUI or CLI,
and is very different for all the virtualization tools on the market (e.g. VitrualBox, VMWare, etc.).
Unfortunately, this doesn't fit the modern paradigm of [infrastructure as code][43].

To overcome this, the creates of Vagrant, [HasiCorp][44], offer a tool called [Packer][45].
[Why Use Packer][46]?
Packer embraces modern configuration management automates the creation of any type of machine image.
Packer is an open source tool for creating identical 'machine images'
for multiple virtualization tools from a single source configuration.
Packer runs on every major operating system, and creates machine images for multiple platforms in parallel.
Packer does not replace [configuration management][47] tools like Ansible, Chef, or Puppet.
In fact, when building images,
Packer is able to use configuration management tools to install software onto the image.
Packer lets you build Virtual Machine Images for different providers from one JSON file.
You can use the same file and commands to build an image on AWS, Digital Ocean VirtualBox and Vagrant.
This makes it possible to use exactly the same system for development which you then create in production.

>**NOTE:** A 'machine image' is a single static unit that contains a pre-configured operating system
>and installed software which is used to quickly create new running machines.
>Machine image formats change for each platform.
>Some examples include AMIs for an AWS EC2,VMDK/VMX files for VMware, OVF exports for VirtualBox, etc.

## Installing Packer
Packer may be installed from a precompiled binary or from source.
The easy and recommended method for all users is binary installation method.
Check the latest release of Packer on the [Downloads page][48].
Then download the recent version for your platform.
In my case:

```bash
# downlaod version 1.5.1  for ubuntu
cd ~/tmp
export VER="1.5.1"
wget https://releases.hashicorp.com/packer/${VER}/packer_${VER}_linux_amd64.zip

# uncompress the download file
unzip packer_${VER}_linux_amd64.zip

# move the packer binary into your path
sudo mv packer /usr/local/bin

# verify the install is working
$ packer --help
Usage: packer [--version] [--help] <command> [<args>]

Available commands are:
    build       build image(s) from template
    console     creates a console for testing variable interpolation
    fix         fixes templates from old versions of packer
    inspect     see components of a template
    validate    check that a template is valid
    version     Prints the Packer version
```

## How to Use Packer
Packer uses builders to generate images and create machines for various platforms from templates.
A template is a configuration file used to define what image is built and its format is JSON.
You can see a [full list of suppported builders and their templates][49].
A template has the following three main parts.

1. **variables** – Where you define custom variables.
2. **builders** – Where you mention all the required builder parameters.
3. **provisioners** – Where you can integrate a shell script,
ansible play or a chef cookbook for configuring a required application.

In my example, I will use [VirtualBox Builder][50] to create an
Ubuntu 19.04 VirtualBox Virtual Machine.
[This VirtualBox Packer builder][51] is able to create VirtualBox virtual machines
and export them in the OVF format,
starting from an existing OVF/OVA (exported virtual machine image).

>**NOTE:** When exporting from VirtualBox make sure to choose OVF Version 2,
>since Version 1 is not compatible and will generate errors.

The builder builds a virtual machine by importing an existing OVF or OVA file.
It then boots this image, runs provisioners on this new VM,
and exports that VM to create the image.
The imported machine is deleted prior to finishing the build.

### Step 1:
Here is a basic build template
https://computingforgeeks.com/how-to-install-and-use-packer/
https://devopscube.com/packer-tutorial-for-beginners/





----


**see "howto-use-docker-and-resin-on-the-raspberry-pi-and-openwrt.md" for more text**

# Docker
* [How To Install and Use Docker on Debian 10](https://www.digitalocean.com/community/tutorials/how-to-install-and-use-docker-on-debian-10)
* [A Beginner-Friendly Introduction to Containers, VMs and Docker](https://medium.freecodecamp.org/a-beginner-friendly-introduction-to-containers-vms-and-docker-79a9e3e119b)
* [Running a Docker container as a non-root user](https://medium.com/redbubble/running-a-docker-container-as-a-non-root-user-7d2e00f8ee15)

* [Docker Tutorial: Get Going From Scratch](https://stackify.com/docker-tutorial/)
* [A Practical Introduction to Container Terminology](https://developers.redhat.com/blog/2018/02/22/container-terminology-practical-introduction/)
* [A sysadmin's guide to containers](https://opensource.com/article/18/8/sysadmins-guide-containers)
* [Intro to Docker: Why and How to Use Containers on Any System](https://hackaday.com/2018/09/05/intro-to-docker-why-and-how-to-use-containers-on-any-system/)
* [Docker Tutorial: Play With Containers (Simple Examples)](https://dzone.com/articles/docker-tutorial-play-with-containers-simple-exampl)
* [Top Docker Commands Any Expert Should Know](https://dzone.com/articles/top-docker-commands-itsyndicate)
* [A Practical Introduction to Container Terminology](https://developers.redhat.com/blog/2018/02/22/container-terminology-practical-introduction/)
* [Docker – the Best Containerization Platform for an Efficient Software Development](https://www.cabotsolutions.com/2016/12/docker-best-containerization-platform-efficient-software-development/)
* [Why Kubernetes is The New Application Server](https://developers.redhat.com/blog/2018/06/28/why-kubernetes-is-the-new-application-server/)
* [Learning Docker Networking](https://hackernoon.com/learning-docker-networking-part-1-53b09fda9078)
* [How to Install and Use Docker on Ubuntu 18.04](https://www.digitalocean.com/community/tutorials/how-to-install-and-use-docker-on-ubuntu-18-04)
* [Removing Docker Images, Containers, and Volumes with Ease](https://medium.com/@jon.froiland/removing-docker-images-containers-and-volumes-with-ease-fdf16bebccec)
* [Docker’s detached mode for beginners](https://medium.freecodecamp.org/dockers-detached-mode-for-beginners-c53095193ee9)
* [Docker for App Dev](https://www.youtube.com/watch?v=tfOqLM9HjRg&list=PL6aLoEodmDP-SwkMXsLPnD2soWE7_2fwl)

## Snap
Canonical has deployed Snappy Ubuntu Core,
a tiny Linux-based operating system for large-scale cloud container deployments,
IoT devices, mobile phones, and anything that needs transitional updates and tiny footprint.
Snappy Ubuntu Core works more or less like Google’s Chrome OS where
it offers transitional image based updates for the system and apps that can be rolled back,
along with confinement that is known in the container world.

But as the article "[Canonical’s Snap: The Good, the Bad and the Ugly](https://thenewstack.io/canonicals-snap-great-good-bad-ugly/)" nicely outlines, does the world need another containerizer on Linux?

* [How To Package and Publish a Snap Application on Ubuntu 18.04](https://www.digitalocean.com/community/tutorials/how-to-package-and-publish-a-snap-application-on-ubuntu-18-04?utm_source=DigitalOcean_Newsletter)


----


# Ansible

* [How to use Ansible to patch systems and install applications](https://opensource.com/article/18/3/ansible-patch-systems)
* [A sysadmin's guide to Ansible: How to simplify tasks](https://opensource.com/article/18/7/sysadmin-tasks-ansible)

* [Ansible Vagrant beginners guide](https://www.inpimation.com/ansible-vagrant-beginners-guide/)
* [Ansible round 2, the awesome stuff](https://www.inpimation.com/ansible-round-2-awesome-stuff/)

* [Reboot and wait for reboot to complete in Ansible playbook](https://www.jeffgeerling.com/blog/2018/reboot-and-wait-reboot-complete-ansible-playbook)
* [Ansible Tutorial for Beginners](https://linuxhint.com/ansible-tutorial-beginners/)
* [19 Minutes With Ansible (Part 1/4)](https://sysadmincasts.com/episodes/43-19-minutes-with-ansible-part-1-4)
* [An Ansible2 Tutorial](https://serversforhackers.com/c/an-ansible2-tutorial)
    * [Ansible: Using Vault](https://serversforhackers.com/c/ansible-using-vault)
    * [Ansible: Roles](https://serversforhackers.com/c/ansible-roles)
* [Excellent Galaxy Examples](https://galaxy.ansible.com/geerlingguy)
* [Vagrant Ansible Provision](https://deparkes.co.uk/2017/12/29/vagrant-ansible-provision/)
* [Getting Started: Writing Your First Playbook](https://www.ansible.com/blog/getting-started-writing-your-first-playbook)
* [Configuration Management 101: Writing Ansible Playbooks](https://www.digitalocean.com/community/tutorials/configuration-management-101-writing-ansible-playbooks)
* [How to use Ansible to patch systems and install applications](https://opensource.com/article/18/3/ansible-patch-systems)
* [A sysadmin's guide to Ansible: How to simplify tasks](https://opensource.com/article/18/7/sysadmin-tasks-ansible)

You may have heard of using configuration management tools
like [Chef][17], [Puppet][18], [SaltStack][19], [Terraform][35], [CFEngine][41]
or simply using Bash scripts to provision servers or Vagrant Boxes.
The major difference between other configuration management tools and Anisble,
is that underneath Ansible is just SSH.
Chef and Puppet both have dependencies that must be installed
on the server before you can use them, Ansible does not.
[Ansible is agentless][20] — meaning there are no daemons or agents needed to run a particular action.
It runs on a machine apart from from your VMs
and uses SSH to connect to the servers and run the required commands.
Hence it is a push model, meaning no additional installs are not required at the end point VMs.

Why not just use Bash scripts, then?
Ansible has an edge over Bash scripts because
it features an goal-oriented resource model that
describes the desired state of computer systems and services,
not the paths to get them to this state.
No matter what state a system is in, Ansible understands how to transform it to the desired state.
Ansible is a simple to understand [configuration management approach][42].

Ansible just uses a list of tasks to run in YAML2 format.
Ansible also comes with [idempotency][16] out of the box.
That means you can run the same operation numerous times,
and the output will remain consistent
(i.e. it won't do something twice unless you ask it to).
You can write Bash scripts this way, but it requires quite a bit more overhead.

## Definitions
One important feature in Ansible is that a playbook describes a
desired state in a computer system,
so a playbook can be run multiple times against a server without impacting its state.
If a certain task has already been implemented (e.g., "user sysman already exists"),
then Ansible simply ignores it and moves on.

* **Tasks:** A task is the smallest unit of work.
It can be an action like "Install a database," "Install a web server,"
"Create a firewall rule," or "Copy this configuration file to that server."
* **Plays:** A play is made up of tasks. For example, the play
"Prepare a database to be used by a web server" is made up of tasks
(1) Install the database package,
(2) Set a password for the database administrator,
(3) Create a database; and 4) Set access to the database.
* **Playbook:** A playbook is made up of plays.
A playbook could be "Prepare my website with a database backend" and the plays would be
(1) Set up the database server,
(2) Set up the web server.
* **Roles:** Roles are used to save and organize playbooks and allow sharing and reuse of playbooks.
Following the previous examples, if you need to fully configure a web server,
you can use a role that others have written and shared to do just that.
Since roles are highly configurable (if written correctly),
they can be easily reused to suit any given deployment requirements.
* **Ansible Galaxy:** Ansible Galaxy is an online repository where roles are uploaded so they can be shared with others. It is integrated with GitHub, so roles can be organized into Git repositories and then shared via Ansible Galaxy.

These definitions and their relationships are depicted here:

[!ansible](https://opensource.com/sites/default/files/u128651/ansible-definitions.png)

* **Ansible Vault:**
* **Inventory:**
* **Modules:**
* **Handlers:**
* **Variables:**

## Why Ansible?
Unlike Puppet, Chef, and Salt:

* Ansible operates only over SSH and requires no agent on the taget machine.
* It’s writen in Python, a very mature and powerful scripting language.
* It’s self-documenting with simple YAML files describing the playbooks and roles.
* It’s feature-rich; often called "batteries included" hundreds of modules provided out of the box, and new ones are pretty easy to write.

## So what about Terraform?
Both Ansible and Terraform are products for creating infrastructure as code
so you can deploy repeatable environments.
The differences involves the concepts of configuration management and orchestration.
Ansible is primarily a configuration management tool,
and Terraform is an orchestration tool.

Terraform is declarative tool where you define your environment,
and if that environment changes, it fixes it.
Asible is, at least partually, a procedural tool where you describe an application
with the exact steps to be laid out in the code.
Ansible is somewhat of a hybrid.
You can perform ad-hoc commands that allow for procedural-style configuration
or use most of the modules that perform declarative-style.

So Ansible is optimized for configuration management but it can perform orchestration tasks.
Ansible gives greater and far more popular than Terraform.

For more information on the merits of Ansible, check out these sources:
* [What is Ansible, how it works and how it works for me](https://www.linkedin.com/pulse/what-ansible-how-works-me-ivica-kolenka%C5%A1/)
* [Ansible vs. Terraform: Fight!](https://linuxacademy.com/blog/tips/ansible-vs-terraform-fight/)
* [Why use Terraform?](https://www.oreilly.com/learning/why-use-terraform)

## Ansible Roles
One of the satated advantages of Ansible is that it is easy to learn and straightforward to use.
Sounds good, doesn’t it?  It is, with one exception.
Getting up and running with a limited knowledge of the features and best practices
often means creating superficial and inflexible roles.
But to quote the Ansible documentation about roles:
“You absolutely should be using roles. Roles are great. Use roles.
Roles! Did we say that enough? Roles are great.”.

One of the reasons why roles are great is that they are **reusable**.
At least they are meant to be.
To creating reusable Ansible roles,
you need to follow best practices, and is not as easy as it sounds.

## Ansible Playbook
How do you tell Ansible what actions to take on the server?
You write a playbook.
An Ansible playbook is written in a simplified subset of YAML,
which is highly readable and easy to pick up. A sample playbook looks like this:

```yaml
```

You can declare variables in your playbook, run loops and use conditionals. Playbooks are divided into sections. For example, tasks are defined in a special “tasks” section, while variables are declared in a special “vars” section, and handlers are defined in a special “handlers” section.

The tasks section is a list of commands, to be run on the remote computers, or if specified as a local action, on the Ansible server. Handlers are special tasks that, if signaled with a notify statement, are run at the end of a play.

Every task runs a corresponding Ansible module. For example, I can run the push code from Github by calling the git module:

```yaml
```

This task invokes Ansible’s git module, grabs code from the specified git url and pushes it in the destination directory. The module cleans up after itself — Ansible does not leave any cruft from executing the module on your server.

When you install Ansible, it ships with over 500 modules, which more than covers most basic needs. There are preexisting modules that execute bash commands, push code and config files, deploy and manage Docker containers, install packages, and yes, specifically manage your Rackspace account. A complete list of modules is found on the Ansible docs website.

If you want to develop your own modules, you can — the modules can be written in any language; the only hard and fast requirement is that it must return a JSON object.

To run your playbook, use the command “sudo Ansible-playbook –i inventory.txt main.yml” and watch your playbook run.


## Playbook vs Role vs Host
* https://stackoverflow.com/questions/32101001/ansible-playbooks-vs-roles

hosts is a single name for a group of hosts.
It allows you to reference multiple hosts by a single name.

Role is a set of tasks and additional files to configure host to serve for a certain role.

Playbook is a mapping between hosts and roles.

An example goes like this:

* Playbooks: `site.yml`, `webservers.yml`, `fooservers.yml` are playbooks.
* Roles: directories `roles/common/` and `roles/webservers/` contain definitions of common and webservers roles accordingly.

Inside a playbook (e.g. `webservers.yml`) you have something like:

```yaml
- hosts: webservers     <- this group of hosts defined in /etc/ansible/hosts, databases and mail_servers in example from your question
  roles:                <- this is list of roles to assign to these hosts
     - common
     - webservers
```

## Creating A Role
When creating a new role,
the first step is to build its directory structure.
Since version 1.4.2, Ansible provides a tool to create the base directory structure.
The tool is called `ansible-galaxy` and below is an example on how to use it:

```bash
$ ansible-galaxy init levono.config
lenovo.config was created successfully
```

## Inventory
In order to be able to set up the connection to servers Ansible is configuring,
an [Inventory][31] file is needed.
This file can have any name, but the convention is to name it "hosts"
and by default this file is located at `/etc/ansible/hosts`.
(Don’t mix it up with `/etc/hosts` file because they are not the same.
The `hosts` inventory file is [structured like an `.ini` file][21],
with the example shown below:

```
[loadbalancers]
loadbalancer1
loadbalancer2

[webservers]
web1.ans
web2.ans

[all_servers:children]
loadbalancers
webservers
```

An inventory can have standalone servers, grouped servers, and groups can be added to other groups.
Group names are defined inside square brackets [ ].
The above example shows groups "loadbalancers" and "webservers" which have multiple hosts in them.
Also, there is a parent group named "all_servers"
which is composed of previously defined groups.
A server can exist in multiple groups without issue.
It is also possible to create a dynamic inventory.
This is extremely useful if you are working with virtual machines hosted on any public cloud services.
find more details on [official Ansible docs on dynamic inventory][22].
The Ansible host file can handle significantly more advanced functionality than what I am using.
For more information, see the [Inventory documentation][40].

## Modules
Inventory is what servers Ansible is connected to.
What Ansible does with them is defined by modules.
Modules are components installed with Ansible that do all the heavy lifting configuration tasks.

Modules can be classified as core and extra modules.

* Core modules come with Ansible and are built and maintained by Ansible Inc. and RedHat employees.
* Extra modules can be easily installed using your distribution’s package manager or directly from GitHub.

Ansible is an open-source tool
(meaning that everyone can contribute code to it but Ansible Inc.
but they have final say as to what changes to the code base will be accepted.
Some of the core modules are copy, user, npm, ping, setup, cron, hostname and many others.
Continuously growing list of modules is available at [official Ansible docs: All Modulep][23].

Majority of modules expect one or more arguments that tune the way a module works.
For example, the `copy` module has _src_ and _dest_ arguments
that tell the module what is the source and destination of the file or directory to be copied.
Running this module from command line can look similar to this:

```bash
ansible -m copy -a "src=my_app.zip dest=/var/www/html"
```

## Tasks
Ansible modules can be invoked directly from the command line,
but they are rarely used in this way, but generally executed as a task.
Tasks are atomic actions with defined by name and an accompanying module.
Here is an example:

```
- name: install mysql
  yum: name=mysql state=install
```

In the example, the _name_ of the task is “install mysql”,
module to be use is _yum_,
The module has two arguments, first being _name_ argument refereing
to the package which needs to be in the _state_ of “installed”.

AN Ansible task does not expect commands or functions that do something
Ansible tasks describe the desired state of the configured server.
If a package named “mysql” is installed, Ansible will not install it again.
This means that it is perfectly safe to run tasks several times
as they will not alter the system if its configuration is in the state described in those tasks.

A single task can only use one module.
If, for example, I wanted to install MySQL and start the mysqld service,
I would need two tasks to achieve that.
However, many modules support “with_items” construct which acts as a loop,
providing different value to the module on each iteration.
For example, yum and apt modules can be used in a following way:

```
- name: install common packages
  yum: name={{ item }} state=present
  with_items:
    - mysql
    - httpd
    - php
    - phpmyadmin
```

Ansible will internally loop over the items and create an array which will be used with the yum module.
In essence, the following command will be generated internally, and it will be executed only once:

```bash
yum -y install mysql httpd php phpmyadmin
```

## Playbooks
Example Playbooks -
* https://github.com/twobitcircus/rpi-build-and-boot
* https://www.ansible.com/blog/getting-started-writing-your-first-playbook
* https://gist.github.com/marktheunissen/2979474
* https://leucos.github.io/ansible-files-layout
* https://deliciousbrains.com/automating-server-setup-ansible/
* Run ansible on a single host - https://coderwall.com/p/tx91cw/run-ansible-on-a-single-host

Tasks for themselves have no real use case, so they are combine into playbooks.
Playbooks are collections of tasks that describe a state of the configured server
and are executed to configure it.
Playbooks are written in YAML.
An example playbook may look like this:

```
- name: Common tasks
  hosts: webservers
  become: true
  tasks:
    - name: task 1
    .
    .
    .
  handlers:
  - name: handler 1
```

The first line starting with _name_ is the playbook name.
Next line tells Ansible on which hosts (from the `hosts`inventory file)
to apply the tasks from this playbook.
Third line contains _become_ which tells Ansible that it should
run the tasks with elevated privileges; e.g. as super user.
Next comes the list of tasks to perfrom.
Finally comes the definition of _handlers_ are defined.
More on handlers in the next section.

Tasks will be executed one by one in the order they are written in.
It is important to note that in the situation where Ansible executes a playbook on several servers,
tasks are running in parallel on all servers.

It is expected that sometimes a task or more tasks will fail for some reason.
In this case, Ansible will stop playbook execution and allow you to fix the error.
Running the same playbook again is completely safe.

* [Working With Playbooks](https://docs.ansible.com/ansible/latest/user_guide/playbooks.html#working-with-playbooks)
* [Ansible Playbook Structure](http://www.oznetnerd.com/ansible-playbook-structure/)

## Handlers
During the configuration process,
there is sometimes a need to conditionally execute a task.
Handlers are one of the conditional forms supported by Ansible.
A handler is similar to a task, but it runs only if it was notified by a task.
A task will fire the notification if Ansible recognizes that the task
has changed the state of the system.

An example situation where handlers are useful is when
a task modifies a configuration file of some service, MySQL for example.
In order for changes to take effect, the service needs to be restarted.

```
- name: change mysq max_connections
  copy: src=edited_my.cnf dest=/etc/my.cnf
  notify:
    - restart_mysql
```

Notify keyword acts as a trigger for the handler named “restart_mysql”.
Handlers are tasks with a few differences:
(1) they must have an unique name,
(2) they will not run if not triggered by a task.

Several tasks may trigger the same handler and it will run only once.
This is a nice feature,
since handlers are most commonly used to restart services or reboot servers.

## Variables
Ansible is not a programming language
but it has certain features common to programming languages, such as variables.
Variables are really useful because they can be defined in several places:
in the playbook, in inventory file, in special files reserved for variables,
they can be set at runtime on CLI, or they can be automatically collected.
In order to use variables in playbooks, you need to surround them with curly braces:

```
- name: Common tasks
  hosts: db_servers
  become: true
  vars:
    mysql_config_path: /etc/my.cnf
  tasks:
  - name: change mysql max_connection
    copy: src=edited_my.cnf dest="{{ mysql_config_path }}"
```

This code excerpt contains one difference from previous code,
which is the “vars” section.
This section is used for defining variables inside playbooks.
When the playbook is executed, name of the variable will be substituted with its value.
(**NOTE:** For security reasons, variable names have to be quoted to disable any malicious code in them.)

Variables can also be combined:

```
vars:
  file_name: my_app.zip
  server_name: http://myhost.com
  file_location: {{ server_name }}/files/{{ file_name }}
```

Another great thing about variables is that they can be
created dynamically while a playbook is running.
This is achieved by using the “register” keyword in a task.
An example shown below will create a new variable named “logged_in_user“
from the output of “whoami” command:

```
- name get current logged in usere
  command: whoami
  register: logged_in_user
```

As a final note,
when Ansible connects to a server it runs one of the core modules named “setup”.
This module collects information such as operating system name,
operating system version, hardware and network configuration and so on.
This data is known as facts and they are cached for as long as the playbook is running
and can be used just as variables are, with curly braces.

## YAML
Ansible playbooks are written in [YAML][27]
because it is easier for humans to read & write than other common data formats like XML or JSON.
YAML is a [data serialisation language][26],
it’s a strict superset of JSON,
with the addition of syntactically significant newlines and indentation, like Python.
Unlike Python, however, YAML doesn’t allow literal tab characters for indentation.

## Key Ansible Files

### ansible.cfg File
The `ansible.cfg` file contains the locations of our inventory and roles:

```ymal
File: ansible.cfg
-----------------

[defaults]
hostfile = hosts
roles_path = galaxy:roles
```

### hosts File
The `hosts` file is our inventory.
This defines the list of hosts machines,
together with their group membership and login credentials.

```
File: hosts
-----------

[lemp]
xxx.xxx.xxx.xxx ansible_ssh_user=bencer
```

### modules Directory
If you need to download any 3rd party modules:

```
$ mkdir galaxy
$ ansible-galaxy install --roles-path=./modules/roles jdauphant.NGINX
$ ansible-galaxy install --roles-path=./modules/roles debops.php5
```

## Ansible Vault
A common method for using Ansible is to set up passwordless
SSH keys to facilitate ease of management.
For now, simply generate an SSH key with the following command:

```bash
# generating An SSH Key
ssh-keygen

# copy key to remote host
ssh-copy-id root@remote-host
```

* [Ansible Vault: Maintaining Secure Secrets in Ansible | Jungle Disk](https://www.jungledisk.com/blog/2017/06/26/maintaining-secure-secrets-in-ansible/)
* [How Ansible Vault Works](https://serversforhackers.com/c/how-ansible-vault-works)
* [How To Use Vault to Protect Sensitive Ansible Data on Ubuntu 16.04](https://www.digitalocean.com/community/tutorials/how-to-use-vault-to-protect-sensitive-ansible-data-on-ubuntu-16-04)

## Ansible Galaxy Roles
[Ansible Galaxy][33], is a free site for finding, downloading, and sharing community developed roles.
It's analogous to Vagrant's XXX or Docker's XXX.
Use the Galaxy search page to find roles for your project,
you then download them onto your Ansible host using `ansible-galaxy`,
the command line tool that comes bundled with Ansible.

You can use Galaxy to jump-start your automation project via
packaged units of work known to Ansible as roles.
Roles can be dropped into Ansible PlayBooks and immediately put to work.
You’ll find roles for provisioning infrastructure,
deploying applications, and all of the tasks you do everyday.

Use [Galaxy’s Search page][29] to find roles for your project,
then download them onto your Ansible host using the command-line utility [`ansible-galaxy`][34].


* [How to Use Ansible Roles to Abstract your Infrastructure Environment](https://www.digitalocean.com/community/tutorials/how-to-use-ansible-roles-to-abstract-your-infrastructure-environment)


### Ansible Galaxy Useful Commands
Usage: ansible-galaxy [delete|import|info|init|install|list|login|remove|search|setup] [--help] [options] ...

If you want to directly install Ansible Galaxy role into your porjects `roles/` directory,
you'll need to append the `-p` flag,
and the path (relative or absolute) to your project's roles directory.
Otherwise they get installed in a global locations
`~/.ansible/roles` or `/usr/share/ansible/roles`.

So when you run `ansible-galaxy install -p ~/src/ansible-roles geerlingguy.dotfiles`
it gets installed at `~/src/ansible-roles`:

```bash
# install role to global directory

# install roles to your personal directory, not globally
$ ansible-galaxy install -p  ~/src/ansible-roles geerlingguy.dotfiles
- downloading role 'dotfiles', owned by geerlingguy
- downloading role from https://github.com/geerlingguy/ansible-role-dotfiles/archive/1.2.0.tar.gz
- extracting geerlingguy.dotfiles to /home/jeff/src/ansible-roles/geerlingguy.dotfiles
- geerlingguy.dotfiles (1.2.0) was installed successfully

# list the roles installed globally
$ ansible-galaxy list
- geerlingguy.git, 2.0.2
 [WARNING]: - the configured path /usr/share/ansible/roles does not exist.

# remove the role from the global directory
ansible-galaxy remove geerlingguy.git
```

In a way similar to the `pip freeze` command,
you can create a requirements file.
You can do this by running:

```bash
# create list for reimporting roles
ansible-galaxy list -p ~/src/ansible-roles >> galaxy-roles.txt
```

You then can reimport the whole bunch of useful roles with a single command:

```bash
ansible-galaxy install -r galaxy-roles.txt -p roles
```

Some other useful commands are:

```bash
# create a role in a format ready for submission to the Galaxy community
ansible-galaxy init

# show currently installed roles
ansible-galaxy list

# removes a currently installed role
ansible-galaxy remove [role name]
```

### Getting Started and Best Practices with Ansible
* [A developer's shortcut to getting started with Ansible](https://www.redhat.com/en/blog/developers-shortcut-getting-started-ansible)
* [Ansible and Ansible Tower: best practices from the field](http://www.juliosblog.com/ansible-and-ansible-tower-best-practices-from-the-field/)

#### Running Ad-Hoc Ansible Commands
After you have copied your SSH keys to all the servers in your inventory,
you are ready to start using Ansible.
A basic Ansible function is the ability to run ad hoc commands.
The syntax is: `ansible -a "some command"`.

A useful ad hoc command would be the Ansible ping module,
which is used to verify that a server is ready to receive commands:

```bash
# ping all machines in the inventory
ansible all -m ping
```

This will result in Ansible attempting to log in via SSH to all of the servers in your inventory.

Check this out
Ansible playbook "push_ssh_keys.yaml" - https://opensource.com/article/17/7/automate-sysadmin-ansible

#### Testing Ansible Roles
* [Testing Ansible roles with Molecule](https://opensource.com/article/18/12/testing-ansible-roles-molecule)

#### Ansible and Gathering Facts
Ansible has the ability to gather all kinds of facts about the target system. This can consume a significant amount of time if you have a large number of hosts. In my experience, it can take 1 to 2 seconds per host, and possibly longer; however, there are benefits to fact gathering.
Consider the following playbook used for turning off the ability for users to log in with a password as the root user:
https://opensource.com/article/17/7/automate-sysadmin-ansible

## Install Ansible
One of the beauties of Ansible is that it will not add a database,
and there will be no daemons to start or keep running.
You only need to install it on one machine
and it can manage an entire fleet of remote machines from that central point.
It does not leave software installed or running on them,
so there’s no real question about how to upgrade Ansible when moving to a new version.

Below we will creat Ansible Playbooks for:

* [Nginx][38] is a popular web server which can also be used as a reverse proxy,
load balancer, API gateway, mail proxy etc.
We'll create an Ansible role to setup and configure Nginx web server.

Some good videos for learning Ansible can be found [here][37].

### Step 1: Installing Ansible - DONE
You can install Ansible via a Linux PPA (Personal Package Archives) or via a Pyhton's
pip package management system.
I'll be doing this via Linux

```bash
# update and install prerequisites
sudo apt-get update
sudo apt-get upgrade
sudo apt-get install software-properties-common

# add ansible offical repository to your system’s software source and install ansible
sudo apt-add-repository ppa:ansible/ansible
sudo apt-get update
sudo apt-get install -y ansible

# test the ansible installation
$ ansible --version
ansible 2.6.1
  config file = /etc/ansible/ansible.cfg
  configured module search path = [u'/home/jeff/.ansible/plugins/modules', u'/usr/share/ansible/plugins/modules']
  ansible python module location = /usr/lib/python2.7/dist-packages/ansible
  executable location = /usr/bin/ansible
  python version = 2.7.14 (default, Sep 23 2017, 22:06:14) [GCC 7.2.0]
```

### Step 2: Set Your Ansible Path
Now configure your envirnmental varable `ANSIBLE_ROLES_PATH`.
This path is where Ansible Galaxy will save every role you install
and where Ansible will look when resolving the imports from your playbook.
The default path is `/etc/ansible/roles` or `$HOME/.ansible`.
Make sure that the user installing the roles has write permissions on the directory.

I put put the following in my `.bashrc` file:

```bash
# setup for ansible environment
export ANSIBLE_ROLES_PATH="$HOME/src/ansible-roles"
```

### Step 3: Installing Vim Plugin for Ansible
The Vim plugin, `ansible-vim` is a syntax plugin for Ansible 2.x,
it supports YAML playbooks, Jinja2 templates, and Ansible's hosts files.

### Step X: Clone Ansible Galaxy Roles
The `ansible-galaxy install ...` command clones the role repository found on Ansible Galaxy.
These repositories are an excellent starting point for roles you may be interested in creating.

```bash
# move to your ansible roles directory
cd ~/src/ansible-roles

# clone your desired ansible roles from galaxy
ansible-galaxy install --roles-path=~/src/ansible-roles geerlingguy.git
ansible-galaxy install --roles-path=~/src/ansible-roles geerlingguy.dotfiles
```

I proceed to modify these roles to reflect my needs and renamed them `git` and `dotefiles`.

### Step X: Create Your Remote Hosts - DONE
The Ansible host computers could exist anywhere as long as they are reachable via SSH.
For this exercise, I'm going to assume the host is on my Ansible server
as Vagrant instances.

So our next step will be to create our Vagrant file that will for our Nginx.

```bash
# list the boxes you have installed on your host
$ vagrant box list
ubuntu/trusty64 (virtualbox, 20180227.0.1)
ubuntu/xenial64 (virtualbox, 20180706.0.0)

# move to directory for vagrant vm
cd  ~/src/vagrant_machines
mkdir nginx
cd nginx

# create a base Vagrantfile (Ubuntu 16.04) and bring it up
vagrant init ubuntu/xenial64
vagrant up

# login to the machine to make sure its working
vagrant ssh
```

### Step X: Set Up SSH Keys
Ansible primarily communicates with client computers through SSH.
While it has the ability to handle password-based SSH authentication,
using SSH keys can help to keep things simple.
Check [here][39] if you need more information concerning SSH and its keys.

For our example here, where we are creating our Ansible hosts as Vagrant instances,
this setup and exchange of SSH keys isn't necessary.
It will be necessary if the Ansible host is remote.

#### Copying Public Key Using ssh-copy-id
A simpler method is to use the `ssh-copy-id` tool
included by default in many operating systems.
Launched from the Ansible server, the syntax is:
`ssh-copy-id username@remote_host`.

#### Copying Public Key Using SSH
If you do not have `ssh-copy-id` available,
but you have password-based SSH access to an account on your server,
you can upload your keys using a conventional SSH method:

```bash
# copying public key using ssh
cat ~/.ssh/id_rsa.pub | ssh username@remote_host "mkdir -p ~/.ssh && touch ~/.ssh/authorized_keys && chmod -R go= ~/.ssh && cat >> ~/.ssh/authorized_keys"
```

#### Copying Public Key Manually
Assuming SSH is already established on your Ansible server,
use the `cat` command to print the contents of your
non-root user’s SSH public key file to the terminal’s output:

```bash
# copy this public ssh key
cat ~/.ssh/id_rsa.pub
```

Copy the resulting output to your clipboard,
then open a new terminal and connect to one of your Ansible hosts using SSH,
and do the following:

1. Switch to the client machine’s root user.
1. As the root user, open the `authorized_keys` within the `~/.ssh` directory:
1. In the file, paste your Ansible server user’s SSH key, then save the file.

### Step X: Create Vagrantfile and Ansible Playbook
Next we create our Vagrant file that will be for our Nginx.

```bash
# list the boxes you have installed on your host
$ vagrant box list
ubuntu/trusty64 (virtualbox, 20180227.0.1)
ubuntu/xenial64 (virtualbox, 20180706.0.0)

# move to directory for vagrant vm
cd  ~/src/vagrant_machines
mkdir nginx
cd nginx

# create a base Vagrantfile (Ubuntu 16.04) and bring it up
vagrant init ubuntu/xenial64
vagrant up

# login to the machine
vagrant ssh
```

### Step X: Creating Ansible Nginx Role
Ansible Galaxy

### Step X: Creating Ansible Nginx Playbook
Next we create the Ansible Playbook that will be used within the Vagranfile.
Using a text editor, we create the following Playbook call `nginx.yml`:

```
 - hosts: web
   sudo: yes
   user: root

   tasks:
    - name: Add Nginx Repository
      apt_repository: repo='ppa:nginx/stable' state=present
      register: ppainstalled

    - name: Install Nginx
      apt: pkg=nginx state=latest update_cache=true
      when: ppainstalled|success
      notify:
       - Start Nginx

   handlers:
    - name: Start Nginx
      service: name=nginx state=started
```

So our Vagrantfile should now look like the following
to make use of the Ansible Playbook:

```bash
```

### Step X: Creating Hosts File
Ansible needs to know your remote server names or IP address.
This information is stored in a file called `hosts` and often refered to as your "inventory".
The default file is `/etc/ansible/hosts`.
You can edit this one or create a new one in your `$HOME` directory,
or better yet, place the `hosts` file in your projects directory referance it
on the command-line when running ansible.

### Step X: Update and Reboot
[Ansible reboot a Debian/Ubuntu Linux for kernel update and wait for it](https://www.cyberciti.biz/faq/ansible-reboot-debian-ubuntu-linux-for-kernel-update-waitforit/)


----


# Using Vagrant and Ansible
Vagrant has integrations with Ansible as a provisioner for Vagrant's virtual machines (VM)s.
The Vagrant Ansible provisioner allows you to provision the Vagrant VM
[using Ansible playbooks][24] by executing [`ansible-playbook`][25] from the Vagrant host.

The first step once you’ve installed Vagrant is to create a Vagrantfile
and customize it to suit your needs.
This is covered in detail in the Vagrant documentation,
but here is a quick example that includes a section to use the Ansible provisioner to manage a single machine:

```bash
# All Vagrant configuration is done below. The "2" in Vagrant.configure
# configures the configuration version
Vagrant.configure(2) do |config|

  # Every Vagrant development environment requires a box. You can search for
  # boxes at https://vagrantcloud.com/search.
  config.vm.box = "ubuntu/xenial64"

  # Disable the new default behavior introduced in Vagrant 1.7, to
  # ensure that all Vagrant machines will use the same SSH key pair.
  # See https://github.com/mitchellh/vagrant/issues/5005
  config.ssh.insert_key = false

  config.vm.provision "ansible" do |ansible|
    ansible.verbose = "v"
    ansible.playbook = "playbook.yml"
  end

end
```

Notice the `config.vm.provision` section that refers to an Ansible playbook
called `playbook.yml` in the same directory as the Vagrantfile.
Vagrant runs the provisioner once the virtual machine has booted and is ready for SSH access.

```bash
# start the virtual machine and run the provisioning playbook
vagrant up

# re-run a playbook on an existing virtual machine
vagrant provision
```

Sometimes you may want to run Ansible manually against the machines.  - https://docs.ansible.com/ansible/latest/scenario_guides/guide_vagrant.html#running-ansible-manually


* [Ansible tutorial part 1: Inventory files , vagrant and remote hosts](https://medium.com/@perwagnernielsen/ansible-tutorial-part-1-inventory-files-vagrant-and-remote-hosts-33a15b0185c0)
* [Ansible tutorial part 2: Installing packages](https://medium.com/@perwagnernielsen/ansible-tutorial-part-2-installing-packages-41d3ab28337d)

* [Ansible Vagrant beginners guide](https://www.inpimation.com/ansible-vagrant-beginners-guide/)
* [Ansible round 2, the awesome stuff](https://www.inpimation.com/ansible-round-2-awesome-stuff/)

* [19 Minutes With Ansible](https://sysadmincasts.com/episodes/43-19-minutes-with-ansible-part-1-4)
* [Using Ansible to Provision Vagrant Boxes](https://fedoramagazine.org/using-ansible-provision-vagrant-boxes/)
* [Using Vagrant and Ansible](https://docs.ansible.com/ansible/2.5/scenario_guides/guide_vagrant.html)
* [Developing in a VM with Vagrant and Ansible](https://blog.jetbrains.com/pycharm/2017/12/developing-in-a-vm-with-vagrant-and-ansible/)

## Using ansible-playbook
https://docs.ansible.com/ansible/latest/cli/ansible-playbook.html

## Ansible Playbook Structure
* [How to Manage Multistage Environments with Ansible](https://www.digitalocean.com/community/tutorials/how-to-manage-multistage-environments-with-ansible)
* [Creating a User in Ansible](https://serversforhackers.com/c/create-user-in-ansible)
* [Ansible Playbook Structure](http://www.oznetnerd.com/ansible-playbook-structure/)
* [The Anatomy of an Ansible Playbook](http://www.oznetnerd.com/anatomy-ansible-playbook/)

While Ansible is a powerful configuration management system,
you can get lost in a sea of options when it comes time to structure your Ansible Playbooks.
Ansible provides easy-to-read syntax, flexible workflows, and powerful tooling,
it can be challenging to structure your Playbooks when managing large numbers of hosts
that can vary by deployment environment and functionality.
For example, you can list your hosts and group variables in the `/etc/ansible/hosts` file,
or you can create your own inventory, hosts, and group files in your directory layout.
And there is a ridicules number of [different places your variables][30].

So which directory  structure method do you choose?
Ansible does provide a [Best Practices][32] page.
The approach demonstrated here relies on Ansible group variables and multiple inventories
and follows the ideas posted here:

* [How to Manage Multistage Environments with Ansible](https://www.digitalocean.com/community/tutorials/how-to-manage-multistage-environments-with-ansible)



To create a new project using this structure, you can do the following:

```bash
# create a new Ansible project
mkdir -p new_project
cd new_project

# create inventory and master playbook
touch production staging site.yml README.md

# folders
mkdir -p group_vars host_vars library filter_plugins

# create a role with all the folders (role is named common)
mkdir -p roles/common/{tasks,handlers,templates,files,vars,defaults,meta}
touch roles/common/{tasks,handlers,templates,files,vars,defaults,meta}/main.yml
```

Also see
* [How to design an Ansible directory structure](https://groups.google.com/forum/#!topic/ansible-project/OEYxzuNCwDE)
* [create-ansible-playbook-template.sh](https://gist.github.com/skamithi/11200462)
* [ansible-roles-oneliner](https://gist.github.com/mralexjuarez/c4cfae2f6f4f23af1d1b)

### Creating a User Playbook
You can't put a plaintext password into Ansible.
Instead you need to generate one!
The easiest way to do this is with the `mkpasswd` command.
This will prompt you for the plaintext password
and will give you a hashed password string you can paste into the task definition.
For password "password":

```bash
# generate for "password"
$ mkpasswd --method=sha-512
Password:
$6$j1kvmD5WQGrt8gv$/6ly6UjG0gGXfs0QtIPYWVcz31cUR1dRqFGZenlenuayf4KJF.Tgk4ZziygEZF1x1oKUPT6I38qCAau7bmBC40
```


```yaml
 - name: Create a login user
     user:
      name: jeff
      password: '$6$j1kvmD5WQGrt8gv$/6ly6UjG0gGXfs0QtIPYWVcz31cUR1dRqFGZenlenuayf4KJF.Tgk4ZziygEZF1x1oKUPT6I38qCAau7bmBC40'
      groups:                # Empty by default
       - docker
       - sudo
      state: present
      shell: /bin/bash       # Defaults to /bin/bash
      system: no             # Defaults to no
      createhome: yes        # Defaults to yes
      home: /home/jeff       # Defaults to /home/<username>
```

Check the [Ansible documentation][28] for more information,
such as creating an SSH key on the fly.

### Install Nginx
* [Deploying NGINX with Ansible](https://blog.serverdensity.com/deploying-nginx-with-ansible/)

We'll use the "apt" module to install Nginx across each server.
This let's us declaratively tell Ansible what we want the desired state to be.

```bash
# install nginx on all servers
ansible all -m apt -a "pkg=nginx state=latest update_cache=true" -u root --private-key=~/.ssh/id_ansible
```

This will install Nginx on each server!

* [How To Develop a Node.js TCP Server Application using PM2 and Nginx on Ubuntu 16.04](https://www.digitalocean.com/community/tutorials/how-to-develop-a-node-js-tcp-server-application-using-pm2-and-nginx-on-ubuntu-16-04)
* [DigitalOcean Tutorals](https://www.digitalocean.com/community/tutorials)

# Ansible Snippets
https://html5hive.org/ansible-quickies-useful-code-snippets/

# Testing Ansible Roles
* [Testing Ansible Roles with Travis CI on GitHub](https://www.jeffgeerling.com/blog/testing-ansible-roles-travis-ci-github)



[01]:https://www.vagrantup.com/
[02]:https://www.vagrantup.com/downloads.html
[03]:https://www.virtualbox.org/wiki/Downloads
[04]:https://github.com/cogitatio/vagrant-hostsupdater
[05]:https://www.vagrantup.com/docs/
[06]:https://en.wikipedia.org/wiki/Virtual_machine
[07]:https://www.virtualbox.org/wiki/Virtualization
[08]:https://en.wikipedia.org/wiki/Hardware-assisted_virtualization
[09]:https://www.virtualbox.org/
[10]:https://www.vagrantup.com/docs/vagrantfile/
[11]:http://www.vagrantbox.es/
[12]:https://www.vagrantup.com/docs/boxes.html
[13]:https://app.vagrantup.com/boxes/search
[14]:https://www.vagrantup.com/docs/cli/
[15]:https://www.youtube.com/watch?v=edoDx8bzU4M
[16]:https://stackoverflow.com/questions/1077412/what-is-an-idempotent-operation
[17]:https://www.chef.io/
[18]:https://puppet.com/
[19]:https://saltstack.com/
[20]:https://medium.com/@cabot_solutions/ansible-and-docker-the-best-combination-for-an-efficient-software-product-management-28c86cfebe90
[21]:https://en.wikipedia.org/wiki/INI_file
[22]:https://docs.ansible.com/ansible/latest/user_guide/intro_dynamic_inventory.html
[23]:https://docs.ansible.com/ansible/latest/modules/list_of_all_modules.html
[24]:https://docs.ansible.com/ansible/latest/scenario_guides/guide_vagrant.html
[25]:https://docs.ansible.com/ansible/latest/cli/ansible-playbook.html
[26]:https://en.wikipedia.org/wiki/Serialization
[27]:https://docs.ansible.com/ansible/latest/reference_appendices/YAMLSyntax.html#yaml-syntax
[28]:https://docs.ansible.com/ansible/latest/modules/user_module.html
[29]:https://galaxy.ansible.com/search
[30]:https://docs.ansible.com/ansible/latest/user_guide/playbooks_variables.html#variable-precedence-where-should-i-put-a-variable
[31]:https://docs.ansible.com/ansible/latest/user_guide/intro_inventory.html
[32]:https://docs.ansible.com/ansible/latest/user_guide/playbooks_best_practices.html#directory-layout
[33]:https://galaxy.ansible.com/home
[34]:https://docs.ansible.com/ansible/latest/reference_appendices/galaxy.html#the-command-line-tool
[35]:https://www.terraform.io/
[36]:https://www.oreilly.com/learning/why-use-terraform
[37]:https://serversforhackers.com/c/ansible-installation-and-basics
[38]:https://www.nginx.com/
[39]:https://www.digitalocean.com/community/tutorials/how-to-set-up-ssh-keys-on-ubuntu-1804
[40]:https://docs.ansible.com/ansible/latest/user_guide/intro_inventory.html
[41]:https://cfengine.com/
[42]:https://www.ansible.com/use-cases/configuration-management
[43]:https://en.wikipedia.org/wiki/Infrastructure_as_code
[44]:https://www.hashicorp.com/
[45]:https://www.packer.io/
[46]:https://www.packer.io/intro/why.html
[47]:https://www.ansible.com/use-cases/configuration-management
[48]:https://www.packer.io/downloads.html
[49]:https://www.packer.io/docs/builders/index.html
[50]:https://www.packer.io/docs/builders/virtualbox.html
[51]:https://www.packer.io/docs/builders/virtualbox-ovf.html
[52]:https://stackoverflow.com/questions/16704059/easiest-way-to-copy-a-single-file-from-host-to-vagrant-guest
[53]:https://docs.oracle.com/cd/E97728_01/E97727/html/vboxmanage-intro.html
[54]:
[55]:
[56]:
[57]:
[58]:
[58]:
[60]:
