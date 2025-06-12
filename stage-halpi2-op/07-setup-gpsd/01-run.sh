#!/bin/bash -e

# Install the gpsd configuration file
install -m 644 files/gpsd "${ROOTFS_DIR}/etc/default/gpsd"

# Disable the serial console
sed -i -e "s/console=serial0,[0-9]\+ //" "${ROOTFS_DIR}/boot/firmware/cmdline.txt"
