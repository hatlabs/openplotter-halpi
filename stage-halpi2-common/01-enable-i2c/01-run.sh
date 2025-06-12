#!/bin/bash -e

# Append the config.txt file snippet to the original file
cat files/config.txt.part >> "${ROOTFS_DIR}/boot/firmware/config.txt"

if ! grep -q "i2c-dev" "${ROOTFS_DIR}/etc/modules"; then
    # Load the i2c-dev module at boot
    echo "i2c-dev" >> "${ROOTFS_DIR}/etc/modules"
fi
