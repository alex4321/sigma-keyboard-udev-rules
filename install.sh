#!/bin/bash
if [ "$EUID" -ne 0 ]; then
    echo "You'll need root rights to add ude rules and update hardware database, so run this script through `sudo bash ./install.sh`"
    exit 1
fi
echo "Adding rules"
SCRIPT_DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" &> /dev/null && pwd )"
cp "$SCRIPT_DIR/90-sigma-keyboard.hwdb" "/etc/udev/hwdb.d/90-sigma-keyboard.hwdb"
systemd-hwdb update
echo "Rules applied successfully"
