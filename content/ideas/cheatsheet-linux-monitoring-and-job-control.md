
* [How to kill a process or stop a program in Linux](https://opensource.com/article/18/5/how-kill-process-stop-program-linux)

# File Magic
A "[shebang][13]" is the character sequence consisting of the characters number sign and exclamation mark (`#!`)
at the beginning of a script.
The `#!` syntax used in scripts to indicate an interpreter for execution under UNIX / Linux operating systems.
Therefore many Linux shell and perl / python script starts with the following line:
`#!/bin/bash` or `#!/usr/bin/perl` or `#!/usr/bin/python`.

* [Linux Fu: Shell Scripts In C, C++, And Others](https://hackaday.com/2019/09/17/linux-fu-shell-scripts-in-c-c-and-others/)

# Named Pipes
a named pipe (also known as a FIFO for its behavior)
is an extension to the traditional pipe concept on Unix.
A traditional pipe is "unnamed" and lasts only as long as the process.
A named pipe, however, can last as long as the system is up, beyond the life of the process.
It can be deleted if no longer used.
Usually a named pipe appears as a file, and generally processes attach to it for IPC.

* [Linux Fu: Named Pipe Dreams](https://hackaday.com/2019/07/12/linux-fu-named-pipe-dreams/)

# Linux System Monitoring
* [4 open source tools for Linux system monitoring](https://opensource.com/life/16/2/open-source-tools-system-monitoring?sc_cid=70160000000lcFhAAI)
* [How To Monitor Your Ubuntu 16.04 System with Sysdig](https://www.digitalocean.com/community/tutorials/how-to-monitor-your-ubuntu-16-04-system-with-sysdig)
* [Uptime Monitor - monitors your websites every 5 minutes and alerts you if your sites are down](https://uptimerobot.com/)

Linux is a multitasking operating systems, that is,
a system that can run multiple commands (process) during the same period of time.
Job control is nothing but the ability to stop/suspend the execution of processes
and continue/resume their execution as per your requirements.
This is done using your operating system and
[shell][05] such as [bash][03]/[ksh][04] or any [POSIX shell][02].
Your shell keeps a table of current jobs, called job table.
When you type command the shell assigns a jobID.
A jobID is nothing but small integer numbers.

Turning job control on via monitor mode:
You turn on job control via `set +m` (this is the default) and off via  `set -m`.
So with `set +m`, job control is enabled, all processes run in a separate process group,
and when a background job completes, the shell prints a line containing its exit status.

There are also shortcuts %+ for the most recently foregrounded job and %- for the previously foregrounded job, so you can switch back and forth rapidly between two jobs with CtrlZ followed by fg %- (suspend the current one, resume the other one) without having to remember the numbers. Or you can use the beginning of the command itself. If you have suspended an ffmpeg command, resuming it is as easy as fg %ff (assuming no other active jobs start with "ff"). And as one last shortcut, you don't have to type the fg. Just entering %- as a command foregrounds the previous job.


Foreground
:   Normal commands are run as foreground jobs.
    The shell waits (won't run anymore commands) until the foreground job finishes.
    ^C quits a foreground job. ^Z suspends a foreground job.
    There can (obviously) be only one foreground job at a time.

Background
:   A background job (or a job run in the background) runs as normal,
    but the shell does not wait.
    It can take other commands while the background job is running.
    Most commands run so quickly you won't even notice foreground/background,
    so I'll use the sleep command.
    sleep 3 says to wait for 3 seconds. A semi-colon separates two commands.

Session
:   A session is a set of processes which shares a controlling terminal.

Daemon
:   A daemon is a type of program on Unix-like operating systems
    that runs unobtrusively in the background,
    rather than under the direct control of a user,
    waiting to be activated by the occurrence of a specific event or condition.

# Sessions and Process Groups
* [Linux-Fu: Keeping Things Running](http://hackaday.com/2017/03/10/linux-fu-keeping-things-running/#more-246002)
* [The Process Model of Linux Application Development](http://www.informit.com/articles/article.aspx?p=397655&seqNum=6)
* [8 Linux commands for effective process management](https://opensource.com/article/18/9/linux-commands-process-management)

# Job Control Commands
* [Job Control Commands](http://tldp.org/LDP/abs/html/x9644.html)

* ps - list the processes running on the system
* jobs - list current jobs
* disown %<jobid> - separate a <jobid> from jobs table
* bg %<jobid> - run the suspended command in background
* fg %<jobid> - resume a background process to foreground
* who -
* wait -
* stop - Suspend the job (same as <Ctrl>-Z)
* sleep -
* kill - Terminate the job (same as <Ctrl>-C)
* setsid <command> - run a program in a new session
* setsid - Set Session ID creates a new session ID for the command you run using it, so it does not deppend on your shell session, therefore if that shell session is closed the other command will stay running.
* nohup <command> - run a command immune to SIGHUP signal , and redirect stdout to a normal file
* <command> & -

* <Ctrl>-Z - suspend the current program associated with your terminal. (sending SIGTSTP to it)
* <Ctrl>-C - stop the current program associated with your terminal. (sending SIGINT to it)

`setsid` is useful when you want to start a new session, because you have started to be connected to a new terminal -- such as when starting a shell inside a terminal emulator -- or you want a daemon (which you don't want to be associated with a controlling terminal).

# sudo
According to the [sudo website][12]:
"Sudo allows a system administrator to delegate authority by giving certain users
the ability to run some commands as root or another user while providing an
audit trail of the commands and their arguments."

* [What you probably didn’t know about sudo](https://opensource.com/article/19/10/know-about-sudo)
* [sudo blog](https://blog.sudo.ws/)

# Nohup vs. Screen vs. Setid
One thing must be clarified, using [screen][06] and nohup, you can return and check the output of the running commands, with screen because you can attach a screen session, and with nohup, because you can check the output file.

Using setsid that is not possible, so only use it, when the output is not important for you.
setsid creates a new session id for the command you run using it, so it does not deppend on your shell session, therefore if that shell session is closed the other command will stay running.

http://go2linux.garron.me/linux/2010/12/setsid-how-execute-commands-after-you-exit-shell-prompt-866/

# ps
xxx

```bash
$ xeyes
^Z
[1]+  Stopped                 xeyes

$ ps T
  PID TTY      STAT   TIME COMMAND
 2751 pts/24   T      0:00 xeyes
 2766 pts/24   R+     0:00 ps T
15044 pts/24   Ss     0:00 bash

$ bg 1
[1]+ xeyes &

$ ps T
  PID TTY      STAT   TIME COMMAND
 2751 pts/24   S      0:00 xeyes
 2777 pts/24   R+     0:00 ps T
15044 pts/24   Ss     0:00 bash
$
```

If you execute `ps aux` or `ps T` you see column called `STAT`, listing the process state code,
which has the following meaning:

```
PROCESS STATE CODES
       Here are the different values that the s, stat and state output specifiers (header "STAT" or "S") will display to describe the state of a process:
       D    uninterruptible sleep (usually IO)
       R    running or runnable (on run queue)
       S    interruptible sleep (waiting for an event to complete)
       T    stopped, either by a job control signal or because it is being traced.
       W    paging (not valid since the 2.6.xx kernel)
       X    dead (should never be seen)
       Z    defunct ("zombie") process, terminated but not reaped by its parent.

       For BSD formats and when the stat keyword is used, additional characters may be displayed:
       <    high-priority (not nice to other users)
       N    low-priority (nice to other users)
       L    has pages locked into memory (for real-time and custom IO)
       s    is a session leader
       l    is multi-threaded (using CLONE_THREAD, like NPTL pthreads do)
       +    is in the foreground process group.
```

# top and htop
`top` is a traditional command-line tool for monitoring real-time processes in a Unix/Linux systems.
It’s comes preinstalled on most if not all Linux distributions
and shows a useful summary of system information including
uptime, total number of processes
(and number of: running, sleeping, stopped and zombie processes),
CPU and RAM usage, and a list of processes or threads currently being managed by the kernel.
`htop` is an interactive, ncurses-based processes viewer for Linux systems.
It is practically a top-like tool, but it displays colorful text,
and uses ncurses to implement a text-graphical interface, and allows for output scrolling.

* [Linux Tip | How to use Htop](https://www.youtube.com/watch?v=Qw2ZUf0hTF8)
* [Understand Linux Htop Visually](https://hackaday.com/2020/01/30/understand-linux-htop-visually/)

# Kill
While the kill command is used to "kill" processes,
its real purpose is to send signals to processes.
Most of the time the signal is intended to tell the process to go away,
but there is more to it than that.
Programs (if they are properly written) listen for signals from the operating system and respond to them,
most often to allow some graceful method of terminating.
(For example, a text editor might listen for any signal that indicates that the user is
logging off or that the computer is shutting down.
When it receives this signal, it saves the work in progress before it exits.)

The kill command can send a variety of signals to processes.
Typing `kill -l` will give you a list of the signals it supports:

```bash
$ kill -l
 1) SIGHUP	      2) SIGINT        3) SIGQUIT	     4) SIGILL	     5) SIGTRAP
 6) SIGABRT	      7) SIGBUS  	   8) SIGFPE	     9) SIGKILL     10) SIGUSR1
11) SIGSEGV	     12) SIGUSR2      13) SIGPIPE     14) SIGALRM     15) SIGTERM
16) SIGSTKFLT	 17) SIGCHLD      18) SIGCONT     19) SIGSTOP     20) SIGTSTP
21) SIGTTIN      22) SIGTTOU      23) SIGURG      24) SIGXCPU     25) SIGXFSZ
26) SIGVTALRM    27) SIGPROF      28) SIGWINCH	29) SIGIO       30) SIGPWR
31) SIGSYS       34) SIGRTMIN     35) SIGRTMIN+1	36) SIGRTMIN+2	37) SIGRTMIN+3
38) SIGRTMIN+4   39) SIGRTMIN+5   40) SIGRTMIN+6	41) SIGRTMIN+7	42) SIGRTMIN+8
43) SIGRTMIN+9   44) SIGRTMIN+10  45) SIGRTMIN+11	46) SIGRTMIN+12	47) SIGRTMIN+13
48) SIGRTMIN+14  49) SIGRTMIN+15  50) SIGRTMAX-14	51) SIGRTMAX-13	52) SIGRTMAX-12
53) SIGRTMAX-11  54) SIGRTMAX-10  55) SIGRTMAX-9	56) SIGRTMAX-8	57) SIGRTMAX-7
58) SIGRTMAX-6   59) SIGRTMAX-5   60) SIGRTMAX-4	61) SIGRTMAX-3	62) SIGRTMAX-2
63) SIGRTMAX-1   64) SIGRTMAX
```

Most are rather obscure, but a few should be committed to memory:

| Signal No. | Signal Name | Description |
|:----------:|:-----------:|:------------|
|     1      |   SIGHUP    | Hang up signal. Programs can listen for this signal and act (or not act) upon it. |
|    15      |   SIGTERM   | Termination signal. This signal is given to processes to terminate them. Again, programs can process this signal and act upon it. You can also issue this signal directly by typing control-c in the terminal window where the program is running. This is the default signal sent by the kill command if no signal is specified. |
|     9      |   SIGKILL   | Kill signal. This signal causes the immediate termination of the process by the Linux kernel. Programs cannot listen for this signal. |

* [Linux Fu: It’s A Trap!](https://hackaday.com/2019/08/26/linux-fu-its-a-trap/)

# Cause a process to become a daemon
* [Cause a process to become a daemon](http://www.microhowto.info/howto/cause_a_process_to_become_a_daemon.html)
* [daemonizing bash](http://blog.n01se.net/blog-n01se-net-p-145.html)

# Screen
![vt-100](https://en.wikipedia.org/wiki/VT100#/media/File:DEC_VT100_terminal.jpg)
Most of the time on remote Linux system,
you login over `ssh` and start to work,
if you need to run two or three task at a time, you login over `ssh` two or three times.
However, with [`screen`][06] windows manager utility you can run multiple terminals
([terminal multiplexing][07])
at the same time from single login over `ssh` session.
This allows you to run several instances of programs out of one terminal window.
It can also maintain a persistent session, even when you aren’t connected,
so if you set it up on a server, you can connect, start a process, disconnect,
and return to it at a later date.
Each virtual terminal provides the functions of a classic, but de facto standard,
[DEC VT100 terminal][11] ([and a bit more functionality][10]).
On Ubuntu, can install `screen` via `sudo apt-get install screen`.

```bash
# start screen session and call that session ses_name
screen -S ses_name

# start screen session while running a command
screen emacs prog.c

# list screen sessions that are active
screen -ls
screen -list

# does not start screen, but detaches the elsewhere running screen session
screen -d

# reattach to a detached screen session
screen -r

# reattach to a detached screen session number 123
screen -r 123

# reattach a session and if necessary detach it first
screen -d -r

# attach a session on two separate computers or terminal windows
screen -x
```

You can kill a detached session which is not responding
within the `screen` session by doing the following:

1. Type `screen -list` to identify the detached screen session.
1. Get attached to the detached `screen` session (e.g. `screen -r 20751.name`).
1. Once connected to the session press `Ctrl-a` then type `:quit`.

Screen command provides different window types.
The first parameter to the screen command defines which type of window is created.
If a `tty` name (e.g. `/dev/ttyS0`) is specified as the first parameter to the screen command,
then the window is directly connected to this device.
An optional parameter is allowed consisting of a comma separated list of flags in the notation as follows:

`screen [ -options ] [ cmd [ args ] ]`

`screen -r [[pid.]tty[.host]]`

`screen /dev/ttySX baud_rate,cs8|cs7,ixon|-ixon,ixoff|-ixoff,istrip|-istrip`

`sudo screen /dev/ccable33v 115200,cs8`

Where,

* **`/dev/ttySX`**: Linux serial port (e.g., `/dev/ttyS0 [COM1]`)
* **`baud_rate`**: Usually 300, 1200, 9600, 19200, or 115200. This affects transmission as well as receive speed
* **`cs8`** or **`cs7`**: Specify the transmission of eight (or seven) bits per byte
* **`ixon`** or **`-ixon`**: Enables (or disables) software flow-control (CTRL-S/CTRL-Q) for sending data
* **`ixoff`** or **`-ixoff`**: Enables (or disables) software flow-control for receiving data
* **`istrip`** or **`-istrip`**: Clear (or keep) the eight bit in each received byte

Some examples:

```bash
# connect to device /dev/ttyS0 with 19200 baud rate and 8 bits per bite
screen /dev/ttyS0 19200,cs8

# connect to /dev/bus/usb/003/009 with 9600 baud rate, flow control off
screen /dev/bus/usb/003/009 9600,-ixon
```

To see your port status, use the command `CTRL-a` `i`

Common `screen` commands
(to learn more, check out "[How To Use Linux Screen][08]",
"[How to Install and Use Screen on an Ubuntu Cloud Server][09]",
and "[Linux and Unix screen command][10]"):

| Screen Command  |     Task     |
|:---------------:|:-------------|
|          | **Getting In** |
| screen -S <name> | start a new screen session with session name <name> |
| screen -x | attached to a running session |
| screen -r <name> | attached to a running session with name <name> |
| screen -list | list running sessions/screens |
|          | **Getting Out** |
| Ctrl-a d | detach from window |
| Ctrl-a D D | detach and logout (quick exit) |
|          | **Screen Status** |
| Ctrl-a ? | Display help screen i.e. display a list of commands |
| Ctrl-a v | Print version information about screen |
| Ctrl-a i | List port status |
|          | **Window Management** |
| Ctrl-a c | Create new window and the old window is still active |
| Ctrl-a n | switches you to the next window in list|
| Ctrl-a p | switches you to the previous window in list|
| Ctrl-a Ctrl-a | Toggle / switch between the current and previous window |
| C-a "    | list of windows (allows you to select a window to change to) |
| Ctrl-a 0-9 | Go to a window numbered 0 9, use Ctrl-a w to see number |
| Ctrl-a :fit | Fit screen size to new terminal size. You can also hit Ctrl-a F for the the same task |
| Ctrl-a :remove | Remove / delete region. You can also hit Ctrl-a X for the same tasks |
| Ctrl-a tab | Move to next region |
| Ctrl-a :resize | Resize region |
|          | **Screen Splitting** |
| Ctrl-a S | Split terminal horizontally into regions and press Ctrl-a c to create new window there |
| Ctrl-a V | Split terminal vertically into regions and press Ctrl-a c to create new window there |
| Ctrl-a tab | junp to next display region |
| Ctrl-a X | remove current region |
| Ctrl-a Q | remove all regions but the current one |
|          | **Window Monitoring** |
| Ctrl-a M | Toggles monitoring of the current window |
| Ctrl-a _ | Start/stop monitoring the current window for inactivity |
|          | **Window Termination** |
| Ctrl-a k | Kill the current window / session |
| Ctrl-a D (Shift-d) | Power detach and logout |
| Ctrl-a d | Detach but keep shell window open |
| Ctrl-a Ctrl-\ | Quit screen and kill all of your windows |
|          | **Misc** |
| Ctrl-a m | monitor window for activity |
| Ctrl-a _ | monitor window for silence |
| Ctrl-a H | enable logging in the screen session |
| Ctrl-a : | enter screen command, such as quit |

To see the serial port status and information type ctrl-a i.

To close the screen session after you finished, press Ctrl-a k.
To kill all screen session press Ctrl-a \.

To kill a detached screen session, do the following:

```bash
# list the running screen processes
$ screen -list
There is a screen on:
	14877.pts-18.desktop	(03/17/2017 11:09:20 PM)	(Detached)
1 Socket in /var/run/screen/S-jeff.

# kill the screen process
$ screen -S 14877.pts-18.desktop -p 0 -X quit

# list the running screen processes
$ screen -list
No Sockets found in /var/run/screen/S-jeff.
```

## The .screenrc File
When `screen` is invoked, it executes initialization commands from the files
`/etc/screenrc` and `$HOME/.screenrc`.
These are the "programmer's defaults" that can be overridden by the
environment variable `$SYSSCREENRC`
(this override feature may be disabled at compile-time).

* [Screen notes](http://www.noah.org/wiki/Screen_notes)
* [Speaking UNIX: Stayin' alive with Screen](http://www.ibm.com/developerworks/aix/library/au-gnu_screen/)
* [screen Quick Reference Sheet](http://aperiodic.net/screen/quick_reference)
* [screen Setup and Use](http://aperiodic.net/screen/)
* [Screen User's Manual](https://www.gnu.org/software/screen/manual/html_node/index.html)
* [Linux and Unix screen command](http://www.computerhope.com/unix/screen.htm)
* [How To Use Linux Screen](https://www.rackaid.com/blog/linux-screen-tutorial-and-how-to/)
* [10 Screen Command Examples to Manage Linux Terminals](http://www.tecmint.com/screen-command-examples-to-manage-linux-terminals/)
* [How do I kill all screens?](http://unix.stackexchange.com/questions/94527/how-do-i-kill-all-screens)
* [kill a screen (but not all screens)](http://serverfault.com/questions/96406/kill-a-screen-but-not-all-screens)
* [Move a running process to a new screen shell](http://monkeypatch.me/blog/move-a-running-process-to-a-new-screen-shell.html)
* [Using GNU Screen to Manage Persistent Terminal Sessions](https://www.linode.com/docs/networking/ssh/using-gnu-screen-to-manage-persistent-terminal-sessions)


[How do I Use Multiple Screens on One Terminal over ssh session?](http://www.cyberciti.biz/tips/linux-screen-command-howto.html)
* [How can I close a terminal without killing the command running in it?](http://unix.stackexchange.com/questions/4004/how-can-i-close-a-terminal-without-killing-the-command-running-in-it)
* [Difference between nohup, disown and &](http://unix.stackexchange.com/questions/3886/difference-between-nohup-disown-and)
* [Disown a Running Shell Process and Reattach It to a New Screen](https://www.shell-tips.com/2014/09/09/disown-a-running-shell-process-and-reattach-it-to-a-new-screen/)
* [LINUX - Jobs - Move Running Process to Background & Nohup](http://www.kossboss.com/linux---move-running-to-process-nohup)
* [11 fg, bg, disown and jobs commands you should know](http://www.linuxnix.com/11-fc-bg-jobs-commands-know/)
* [10 Linux/Unix Bash and KSH Shell Job Control Examples](http://www.cyberciti.biz/howto/unix-linux-job-control-command-examples-for-bash-ksh-shell/)
* []()

* [GNU screen screenrc tweaks - windows and titles](http://scottn.us/2011/02/gnu-screen-screenrc-tweaks-windows-and-titles/)
* [Understanding GNU Screen’s hardstatus strings](http://www.kilobitspersecond.com/2014/02/10/understanding-gnu-screens-hardstatus-strings/)
* [ Post your .screenrc with screenshots!](https://bbs.archlinux.org/viewtopic.php?id=55618)
* [A killer GNU Screen Config](https://gist.github.com/joaopizani/2718397)
* [A nice default screenrc](https://gist.github.com/ChrisWills/1337178)
* [Another Example of .screenrc](http://ftp.twaren.net/local-distfiles/pigfoot/gentoo-portage/app-misc/screen/files/screenrc)
* []()

# Tmux
Like `screen`, `tmux` is a terminal multiplexer.
While technically screen and tmux serve the same purpose,
their functionality and quality differ.
Development of screen started in 1987  resulting in a solid and proven piece of software.
On the other hand, the codebase isn’t clean nor easy to understand, and as a result,
development mostly has stopped and focus is on fixing critical bugs.
Tmux, on the other hand, started in 2007 and has learned from screen’s mistakes,
picking up existing and field-tested features, and is actively being developed.

* [tmux is sweet as heck](https://eev.ee/blog/2012/03/21/tmux-is-sweet-as-heck/)
* [A Quick and Easy Guide to tmux](http://www.hamvocke.com/blog/a-quick-and-easy-guide-to-tmux/)
* [Making tmux Pretty and Usable - A Guide to Customizing your tmux.conf](http://www.hamvocke.com/blog/a-guide-to-customizing-your-tmux-conf/)
* [Why You Should Try tmux Instead of screen](http://cinchrb.org/posts/2010/10/tmux-vs-screen/)
* [.tmux.conf](https://www.rafaelhart.com/dotfiles/tmux-conf/)
* [How to make tmux count windows starting from 1 instead of 0?](http://unix.stackexchange.com/questions/35924/how-to-make-tmux-count-windows-starting-from-1-instead-of-0)
* [/howto/tmux](http://transitiontech.ca/howto/tmux)
* [The Tao of tmux](http://tmuxp.readthedocs.io/en/latest/about_tmux.html)

* [A tmux cheat sheet](http://alvinalexander.com/linux-unix/tmux-cheat-sheet-commands-pdf)
* [tmux & screen cheat-sheet](http://www.dayid.org/comp/tm.html)
* [Learn X in Y minutes](https://learnxinyminutes.com/docs/tmux/)

# Nohup and Disown
* [Detaching a process from terminal - exec(), system(), setsid() and nohup](http://mihids.blogspot.com/2015/02/detaching-process-from-terminal-exec.html)
* [Detach Processes With Disown and Nohup](http://www.serverwatch.com/tutorials/article.php/3935306/Detach-Processes-With-Disown-and-Nohup.htm)
* [HOW TO DETACH PROCESS FROM THE TERMINAL IN LINUX](http://www.lostsaloon.com/technology/how-to-detach-process-from-the-terminal-in-linux/)
* [disown, zombie children, and the uninterruptible sleep](https://blogs.oracle.com/ksplice/entry/disown_zombie_children_and_the)
* [Linux:The Ultimate Job Control Commands (job, disown, bg, fg)](http://www.geekpills.com/operating-system/linux/the-ultimate-job-control-commands-job-disown-bg-fg)
* [Running bash commands in the background properly](https://felixmilea.com/2014/12/running-bash-commands-background-properly/)

Job control is nothing but the ability to stop/suspend the execution of processes
(command) and continue/resume their execution as per your requirements.

[`nohup`][]
[`disown`][]

What if you forget to use [`nohup`][01],
or if you didn't expect to be leaving the computer but get called away?
Then there's [`disown`][].

The use of `disown` is a bit more complex than `nohup`.
While your command is running, use `Ctrl-z` to stop it
and then use `bg` to put it in the background.
Then you'll use `disown %n` where `n` is the job number (jobspec).
You can find the job number using the jobs command.
Run jobs again to verify that the job has been detached
and you can use ps or top to verify that the job is actually still running.



[01]:http://linux.die.net/man/1/nohup
[02]:http://www.cyberciti.biz/faq/what-is-posix-shell/
[03]:https://www.gnu.org/software/bash/manual/bash.pdf
[04]:http://www.bolthole.com/solaris/ksh.html
[05]:http://www.freeos.com/guides/lsst/ch01sec07.html
[06]:http://www.computerhope.com/unix/screen.htm
[07]:https://en.wikipedia.org/wiki/Terminal_multiplexer
[08]:https://www.rackaid.com/blog/linux-screen-tutorial-and-how-to/
[09]:https://www.digitalocean.com/community/tutorials/how-to-install-and-use-screen-on-an-ubuntu-cloud-server
[10]:http://www.computerhope.com/unix/screen.htm
[11]:https://en.wikipedia.org/wiki/VT100
[12]:https://www.sudo.ws/
[13]:https://www.in-ulm.de/~mascheck/various/shebang/
[14]:
[15]:
[16]:
[17]:
[18]:
[19]:
[20]:
[21]:
[22]:
[23]:
[24]:
[25]:
[26]:
[27]:
[28]:
[29]:
[30]:
