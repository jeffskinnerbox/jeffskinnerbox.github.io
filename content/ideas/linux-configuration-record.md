
# Tools
[Get Linux System and Hardware Details on the Command Line](https://vitux.com/get-linux-system-and-hardware-details-on-the-command-line/)
[How to check Wireless network card and WiFi information from Linux Command Line](https://www.2daygeek.com/linux-find-out-wireless-network-wifi-speed-signal-strength-quality/)
[Linux Find Wireless Wifi Driver Chipset Information](https://www.cyberciti.biz/faq/linux-find-wireless-driver-chipset/)

# HDMI
* [Automatically detect when HDMI is plugged in](https://stackoverflow.com/questions/47960344/automatically-detect-when-hdmi-is-plugged-in/47964800)
* [Detecting HDMI cable whether it's plugged in or not](https://bbs.archlinux.org/viewtopic.php?id=133921)

# JSON
* [Converting CSV to JSON in bash](https://stackoverflow.com/questions/44780761/converting-csv-to-json-in-bash)
* [Transform plain data into json file](https://unix.stackexchange.com/questions/370032/transform-plain-data-into-json-file)
[7 Command-Line Tools for Data Science](https://www.datascienceworkshops.com/blog/seven-command-line-tools-for-data-science/)
* []()
* []()
* []()

# Hardware Configuration Data

```bash
# hardware architecture of the system
uname -a

# hardware information such as memory, CPU, disks, etc.
sudo lshw -json

# displays information about all the basic storage devices
lsblk --json

# lists information about all the USB controllers and the devices connected
lsusb

# detailed CPU information
lscpu

# wireless / wifi chipset
lspci | egrep -i 'wifi|wireless|intel|broadcom|realtek'
```

# Firmware Configuration Data
```bash
# list of all drivers (modules) loaded in the Linux Kernel
lsmod
```

# Software Configuration Data
```bash
```


# Configuration Comparison
[Using jq or alternative command line tools to compare JSON files](https://stackoverflow.com/questions/31930041/using-jq-or-alternative-command-line-tools-to-compare-json-files)

jq --argfile a a.json --argfile b b.json -n '($a | (.. | arrays) |= sort) as $a | ($b | (.. | arrays) |= sort) as $b | $a == $b'

jq --argfile a a.json --argfile b b.json -n 'def post_recurse(f): def r: (f | select(. != null) | r), .; r; def post_recurse: post_recurse(.[]?); ($a | (post_recurse | arrays) |= sort) as $a | ($b | (post_recurse | arrays) |= sort) as $b | $a == $b'
