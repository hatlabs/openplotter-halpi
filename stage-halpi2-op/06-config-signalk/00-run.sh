#!/bin/bash -e

# Install Signal K config file
install -m 644 -o 1000 -g 1000 files/settings.json "${ROOTFS_DIR}/home/${FIRST_USER_NAME}/.signalk/settings.json"

# Install the unique number script
install -m 755 files/set-signalk-unique-number "${ROOTFS_DIR}/usr/sbin/"

# Install the systemd service
install -m 644 files/set-signalk-unique-number.service "${ROOTFS_DIR}/etc/systemd/system/"

# Enable the systemd service
on_chroot <<EOF
systemctl enable set-signalk-unique-number
EOF
