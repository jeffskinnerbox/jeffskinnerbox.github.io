The Advanced Package Tool, or APT,
works with core libraries to handle the installation and removal of software on the
Debian GNU/Linux distribution and its variants.

* [25 Useful Basic Commands of APT-GET and APT-CACHE for Package Management](http://www.tecmint.com/useful-basic-commands-of-apt-get-and-apt-cache-for-package-management/)
* [Debian Linux apt-get package management cheat sheet](http://www.cyberciti.biz/tips/linux-debian-package-management-cheat-sheet.html)
* [Jon's Apt-Get Cheat Sheet](http://jon.oxer.com.au/cheatsheet/apt)
* [An introduction to the GNU Core Utilities](https://opensource.com/article/18/4/gnu-core-utilities)

The file `/etc/apt/sources.list`
contains a list of sources for your system to use to retrieve packages.
It will generally contain a couple of http or ftp servers, and possibly some CD-ROM references.

To find out the package name used to install `/bin/ls`:

```bash
# package containing `/bin/ls`
$ dpkg -S /bin/ls
coreutils: /bin/ls
```

You can also obtain detailed status information about coreutils package, enter:

```bash
# detailed status information about coreutils package
$ dpkg -s coreutils
Package: coreutils
Essential: yes
Status: install ok installed
Priority: required
Section: utils
Installed-Size: 6504
Maintainer: Ubuntu Developers <ubuntu-devel-discuss@lists.ubuntu.com>
Architecture: amd64
Multi-Arch: foreign
Version: 8.26-3ubuntu4
Replaces: mktemp, realpath, timeout
Pre-Depends: libacl1 (>= 2.2.51-8), libattr1 (>= 1:2.4.46-8), libc6 (>= 2.17), libselinux1 (>= 2.1.13)
Conflicts: timeout
Description: GNU core utilities
 This package contains the basic file, shell and text manipulation
 utilities which are expected to exist on every operating system.
 .
 Specifically, this package includes:
 arch base64 basename cat chcon chgrp chmod chown chroot cksum comm cp
 csplit cut date dd df dir dircolors dirname du echo env expand expr
 factor false flock fmt fold groups head hostid id install join link ln
 logname ls md5sum mkdir mkfifo mknod mktemp mv nice nl nohup nproc numfmt
 od paste pathchk pinky pr printenv printf ptx pwd readlink realpath rm
 rmdir runcon sha*sum seq shred sleep sort split stat stty sum sync tac
 tail tee test timeout touch tr true truncate tsort tty uname unexpand
 uniq unlink users vdir wc who whoami yes
Homepage: http://gnu.org/software/coreutils
Original-Maintainer: Michael Stone <mstone@debian.org>
```

If you install `apt-file`, you can search of what package contains a file.
Here is an example for searching in which package the `more` tool is included:

```bash
# install apt-file utility
sudo apt-get install apt-file
sudo apt-file update

# find where the more executable is located
$ whereis more
more: /bin/more /usr/share/man/man1/more.1.gz

# which package contains /bin/more
$ apt-file search /bin/more
dosemu: /usr/lib/dosemu/drive_z/bin/more.exe
util-linux: /bin/more
```


```bash
sudo apt-get install --reinstall util-linux
```

`apt-key` is used to manage the list of keys used by apt to authenticate packages.
Packages which have been authenticated using these keys will be considered trusted.
"Authentication keys" are usually obtained from the maintainer of the software repository.
The maintainer will often place a copy of the authentication key
on a public key server such as `www.keyserver.net`.
The key can then be retrieved using the command.

For example, run the commands below to install VirtualBox repository key:

```bash
# install VirtualBox repository key
wget -q https://www.virtualbox.org/download/oracle_vbox_2016.asc -O- | sudo apt-key add -
wget -q https://www.virtualbox.org/download/oracle_vbox.asc -O- | sudo apt-key add -
```

# Purge
When you remove a package (e.g. `sudo apt remove php5.5-cgi`),
all files added by the package will be deleted except
for user configuration files that were modified.
When you purge a package (e.g. `sudo apt purge php5.5-cgi`), all the package files,
including modified configuration files, are deleted.

Unfortanately a few years,
your Ubuntu installation may start to accumulate old packages that were removed but not purged.
Fortunately, [Chris Jean's post][01] provides a simple script
to find those unpurged packages and purge them.

```bash
# list all the package that need to be purged
dpkg --list | grep ^rc | awk '{ print $2; }'

# purge all thes packages
sudo apt purge `dpkg --list | grep ^rc | awk '{ print $2; }'`
```



[01]:https://chrisjean.com/finding-and-purging-unpurged-packages-on-ubuntu/
[02]:
[03]:
[04]:
[05]:
[06]:
[07]:
[08]:
[09]:
[10]:
