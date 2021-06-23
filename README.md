This is a set of udev rules for "SiGma Micro USB Keyboard" which should fix problems with recognizing Left Ctrl / Left Win / Left Alt as Left Shift keys.
I tested it on my "qumo dragon war" which was seen in `lsusb` output this way
```
# lsusb
Bus 005 Device 002: ID 1c4f:0056 SiGma Micro USB Keyboard
```

# Installation

```
git clone https://github.com/alex4321/sigma-keyboard-udev-rules/
cd sigma-keyboard-udev-rules/
sudo bash install.sh
```

# Removing

```
sudo rm "/etc/udev/hwdb.d/90-sigma-keyboard.hwdb"
systemd-hwdb update
```
