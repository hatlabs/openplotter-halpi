#!/bin/bash -e

cat files/config.txt.part >>"${ROOTFS_DIR}/boot/firmware/config.txt"
