Title: Conky for Ubuntu
Date: 2014-05-12 12:42
Category: Software
Tags: Conky, Linux, Ubuntu
Slug: conky-for-ubuntu
Author: "Jeff Irland"
Image: corky-screen-shot.jpg
Summary: Conky is a Linux system monitor tool using X Windows.  Conky is highly configurable and is able to monitor many system variables including the status of the CPU, memory, swap space, disk storage, temperatures, processes, network interfaces, battery power, system messages, e-mail in-boxes, Linux updates, runs many popular music players, and much more.

Over a Year ago, I created a [Conky configuration file for the Raspberry Pi][01].
I final got around to tailoring it for my desktop Linux box.
You find both version on [GitHub][02].
Screen shot is at the bottom.

```bash
# --------------------------------------------------------------------- #
#
# .conkyrc - derived from various examples across the 'net
#   Designed to support a 4 core processer running Ubunutu
#
# You can restart conky by running
#       killall -SIGUSR1 conky
#
# --------------------------------------------------------------------- #


# -------------------- Conky's Run Time Parameters -------------------- #

update_interval 2.0			# Conky update interval in seconds
total_run_times 0			# Number of updates before quitting.  Set to zero to run forever.
no_buffers yes				# Subtract file system buffers from used memory?
cpu_avg_samples 2			# Number of cpu samples to average. Set to 1 to disable averaging
net_avg_samples 2			# Number of net samples to average. Set to 1 to disable averaging


# -------------------- Conky's General Look & Feel -------------------- #

# --- defualt values --- #
default_color grey			# Default color and border color
default_bar_size 0 6		# Specify a default width and height for bars.
default_gauge_size 25 25	# Specify a default width and height for gauges.
default_graph_size 0 25		# Specify a default width and height for graphs.
default_outline_color green	# Default border and text outline color
default_shade_color yellow	# Default border and text shading color

# --- predefined colors - http://www.kgym.jp/freesoft/xrgb.html --- #
color0 FFFFFF				# white
color1 FFA500				# orange
color2 B22222				# firebrick
color3 696969				# dim gray
color4 D3D3D3				# light gray
color5 2F4F4F				# dark slate gray
color6 FFEC8B				# light golden rod
color7 54FF9F				# sea green
color8 FF8C69				# salmon
color9 FFE7BA				# wheat

# --- window layout & options --- #
own_window yes				# Conky creates its own window instead of using desktop
own_window_type normal		# If own_window is yes, use type normal, desktop, or override
own_window_transparent yes	# Use pseudo transparency with own_window?
own_window_colour blue		# If own_window_transparent is no, set the background colour
double_buffer yes			# Use double buffering (reduces flicker)
use_spacer right			# Adds spaces to stop object from moving
maximum_width 600			# Maximum width of window in pixels
own_window_hints undecorated,below,sticky,skip_taskbar,skip_pager

# --- window placment --- #
alignment top_right         # window placement can be top_right, top_left, bottom_left, bottom_right

# --- borders, margins, and outlines --- #
draw_graph_borders yes		# Do you want to draw borders around graphs
border_inner_margin 9		# Window's inner border margin (in pixels)
border_outer_margin 5		# Window's outer border margin (in pixels)
gap_x 10					# Gap between borders of screen and text (on x-axis)
gap_y 40					# Gap between borders of screen and text (on y-axis)
border_width 10				# Window's border width (in pixels)

# --- Text --- #
draw_outline no				# Do you want ot draw outlines
draw_shades no				# Do you want to draw shades
draw_borders no				# Do you want to draw borders around text
uppercase no				# set to yes if you want all text to be in uppercase
use_xft yes					# use the X FreeType interface library (anti-aliased font)
xftfont Monospace:size=8:weight=bold	# Xft font to be used


# -------------------- Conky's Displayed System Monitoring Parameters -------------------- #
TEXT
# General system information
${color1}SYSTEM INFORMATION ${hr 2}$color
${color0}System: $color$nodename ${alignr}${color0}Uptime: $color$uptime
${color0}Kernel: $color$kernel${alignr}${color0}Arch: $color$machine
${color0}Distribution: $color${execi 99999 lsb_release --description | awk '{ print $2" "$3 }'}
${color0}CPU Type: $color${execi 99999 grep 'model name' /proc/cpuinfo | awk '{ print $6 }' | sed '2,$d'} / ${execi 99999 grep 'model name' /proc/cpuinfo | wc -l} Cores
${color0}CPU Speed: $color${freq 0} MHz Current / ${execi 99999 grep 'model name' /proc/cpuinfo | awk '{ print $9 }' | sed '2,$d'} Max
${color0}Processor Temperature: $color${acpitemp}°C
#${color0}MAC Address (eth0): $color${execi 99999 cat /sys/class/net/eth0/address }
#${color0}MAC Address (eth1): $color${execi 99999 cat /sys/class/net/eth1/address }
#${color0}MAC Address (wlan0): $color${execi 99999 cat /sys/class/net/wlan0/address }

# CPU information
${color1}CPU ${hr 2}$color
${color0}CPU Usage:$color ${cpu cpu0}% ${color7}${cpubar cpu0}
${cpugraph cpu0 0000ff 00ff00}$color
${color0}Core 1:$color ${freq 1} MHz ${cpu cpu1}% ${color5}${cpubar cpu1}$color
${color0}Core 2:$color ${freq 2} MHz ${cpu cpu2}% ${color5}${cpubar cpu2}$color
${color0}Core 3:$color ${freq 3} MHz ${cpu cpu3}% ${color5}${cpubar cpu3}$color
${color0}Core 4:$color ${freq 4} MHz ${cpu cpu4}% ${color5}${cpubar cpu4}$color

# Top running processes
${color1}TOP 5 PROCESSES ${hr 2}$color
${color0}Processes:$color $processes  ${color0}Running:$color $running_processes
${color0}Threads:$color $threads  ${color0}Running:$color $running_threads
${stippled_hr 2}
${color0}CPU Usage$color
${color3} NAME              PID    CPU %   MEM$color
${color2} ${top name 1} ${top pid 1} ${top cpu 1} ${top mem 1}$color
 ${top name 2} ${top pid 2} ${top cpu 2} ${top mem 2}
 ${top name 3} ${top pid 3} ${top cpu 3} ${top mem 3}
 ${top name 4} ${top pid 4} ${top cpu 4} ${top mem 4}
 ${top name 5} ${top pid 5} ${top cpu 5} ${top mem 5}
${stippled_hr 2}
${color0}Mem Usage$color
${color3} NAME              PID    CPU %   MEM$color
${color2} ${top_mem name 1} ${top_mem pid 1} ${top_mem cpu 1} ${top_mem mem 1}$color
 ${top_mem name 2} ${top_mem pid 2} ${top_mem cpu 2} ${top_mem mem 2}
 ${top_mem name 3} ${top_mem pid 3} ${top_mem cpu 3} ${top_mem mem 3}
 ${top_mem name 4} ${top_mem pid 4} ${top_mem cpu 4} ${top_mem mem 4}
 ${top_mem name 5} ${top_mem pid 5} ${top_mem cpu 5} ${top_mem mem 5}

# Memory and swap space untilization
${color1}MEMORY & SWAP ${hr 2}$color
${color0}RAM Usage: ${color}$mem / $memmax
$memperc% ${color6}${membar}$color
${color0}Swap Usage: ${color}$swap / $swapmax
$swapperc% ${color6}${swapbar}$color

# File System utilization
${color1}FILE SYSTEM ${hr 2}$color
${color0}root:$color ${fs_used /} / ${fs_size /}
${fs_used_perc /}% ${color8}${fs_bar /}$color
${color0}boot:$color ${fs_used /boot} / ${fs_size /boot}
${fs_used_perc /boot}% ${color8}${fs_bar /boot}$color
${color0}home:$color ${fs_used /home} / ${fs_size /home}
${fs_used_perc /home}% ${color8}${fs_bar /home}$color
${color0}backup:$color ${fs_used /mnt/backup} / ${fs_size /mnt/backup}
${fs_used_perc /mnt/backup}% ${color8}${fs_bar /mnt/backup}$color

# Hard Drive Utilization
${color1}HARD DRIVE I/O ${hr 2}$color
${color0}Device:$color /dev/sda
${color0}Reads: $color${diskio_read /dev/sda}/s${alignr}${color0}Writes: $color${diskio_write /dev/sda}/s
${color8}${diskiograph_read /dev/sda 20,100 33FF00 FF3333 scale -t}$color${alignr}${color8}${diskiograph_write /dev/sda 20,100 33FF00 FF3333 scale -t}$color
${color0}Device:$color /dev/md0
${color0}Reads: $color${diskio_read /dev/md0}/s${alignr}${color0}Writes: $color${diskio_write /dev/md0}/s
${color8}${diskiograph_read /dev/md0 20,100 33FF00 FF3333 scale -t}$color${alignr}${color8}${diskiograph_write /dev/md0 20,100 33FF00 FF3333 scale -t}$color

# Ethernet utilization
${color1}NETWORKING ${hr 2}$color
${color0}Wired (${addr eth0})
${color0}Down:$color ${downspeed eth0}/s ${alignr}${color0}Up:$color ${upspeed eth0}/s
${color0}Total:$color ${totaldown eth0} ${alignr}${color0}Total: $color${totalup eth0}
${color0}${downspeedgraph eth0 25,120 000000 00ff00} ${alignr}${upspeedgraph eth0 25,120 000000 ff0000}$color
${stippled_hr 2}
${color0}Wireless (${addr wlan0})
${color0}Down:$color ${downspeed wlan0}/s ${alignr}${color0}Up:$color ${upspeed wlan0}/s
${color0}Total:$color ${totaldown wlan0} ${alignr}${color0}Total: $color${totalup wlan0}
${color0}${downspeedgraph wlan0 25,120 000000 00ff00} ${alignr}${upspeedgraph wlan0 25,120 000000 ff0000}$color

# Print the tail of the Linux system log
${color1}LOG FILES ${hr 2}$color
${color0}SysLog Messages$color
${color4}${font Arial:size=7}${execi 30 tail -n3 /var/log/syslog | fold -w50}$color$font
```
Screen shot is below with Corky instance on the right side:

[![Corky Screen Shot]({filename}/images/corky-screen-shot.jpg "Corky for Ubuntu on right of the desktop")]({filename}/images/corky-screen-shot.jpg)


[01]:http://jeffskinnerbox.me/posts/2012/Nov/02/conky-for-the-raspberry-pi/
[02]:https://github.com/jeffskinnerbox/dotconky
