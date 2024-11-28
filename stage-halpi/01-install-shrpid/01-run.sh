#!/bin/bash -e

mkdir -p "${ROOTFS_DIR}/opt/pipx/"
on_chroot << EOF
PIPX_HOME=/opt/pipx PIPX_BIN_DIR=/usr/local/bin pipx install shrpid
EOF
install -m 644 files/shrpid.service "${ROOTFS_DIR}/lib/systemd/system/"
on_chroot << EOF
systemctl enable shrpid
EOF
