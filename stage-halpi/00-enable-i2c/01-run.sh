#!/bin/bash -e

if ! grep -q "dtparam=ant2" "${ROOTFS_DIR}/boot/firmware/config.txt"; then
    # Append the config.txt file snippet to the original file
    cat files/config.txt.part >> "${ROOTFS_DIR}/boot/firmware/config.txt"
fi

if ! grep -q "i2c-dev" "${ROOTFS_DIR}/etc/modules"; then
    # Load the i2c-dev module at boot
    echo "i2c-dev" >> "${ROOTFS_DIR}/etc/modules"
fi
