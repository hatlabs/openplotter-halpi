#!/bin/bash -e

curl -fsSL https://apt.hatlabs.fi/hat-labs-apt-key.asc | gpg --dearmor -o ${ROOTFS_DIR}/usr/share/keyrings/hatlabs.gpg
echo "deb [signed-by=/usr/share/keyrings/hatlabs.gpg] https://apt.hatlabs.fi stable main" | tee ${ROOTFS_DIR}/etc/apt/sources.list.d/hatlabs.list
on_chroot << EOF
apt-get update
EOF
