#!/bin/bash -e

cat files/config.txt.part >>"${ROOTFS_DIR}/boot/firmware/config.txt"

# Install the can0 network interface file
install -D -m 644 files/80-can.network "${ROOTFS_DIR}/etc/systemd/network/80-can.network"

# Enable systemd-networkd
on_chroot <<EOF
systemctl enable systemd-networkd
EOF

# Install the can0 udev rules file to set the queue length
install -D -m 644 files/80-can.rules "${ROOTFS_DIR}/etc/udev/rules.d/80-can.rules"
