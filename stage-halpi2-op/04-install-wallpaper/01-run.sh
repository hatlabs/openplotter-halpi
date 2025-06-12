#!/bin/bash -e

# Override original OpenPlotter wallpaper
install -m 644 files/halpi2-wallpaper.jpg		"${ROOTFS_DIR}/usr/share/rpd-wallpaper/"
install -m 644 -o 1000 -g 1000 files/desktop-items-0.conf		"${ROOTFS_DIR}/home/${FIRST_USER_NAME}/.config/pcmanfm/LXDE-pi/"
