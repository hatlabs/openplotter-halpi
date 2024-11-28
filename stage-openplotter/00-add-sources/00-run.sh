#!/bin/bash -e

install -m 644 files/openplotter.list "${ROOTFS_DIR}/etc/apt/sources.list.d/"

cat files/openplotter.gpg.key | gpg --dearmor > "${ROOTFS_DIR}/etc/apt/trusted.gpg.d/openplotter.gpg"
cat files/oss.boating.gpg.key | gpg --dearmor > "${ROOTFS_DIR}/etc/apt/trusted.gpg.d/oss.boating.gpg"
on_chroot << EOF
apt-get update
EOF
