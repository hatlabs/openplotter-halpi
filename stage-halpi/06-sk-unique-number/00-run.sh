#!/bin/bash -e

# Install the unique number script
install -m 755 files/set-signalk-unique-number "${ROOTFS_DIR}/usr/sbin/"

# Install the systemd service
install -m 644 files/set-signalk-unique-number.service "${ROOTFS_DIR}/etc/systemd/system/"

# Enable the systemd service
on_chroot <<EOF
systemctl enable set-signalk-unique-number
EOF
