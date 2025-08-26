#!/bin/bash -e

# Append the config.txt file snippet to the original file
cat files/config.txt.part >> "${ROOTFS_DIR}/boot/firmware/config.txt"
