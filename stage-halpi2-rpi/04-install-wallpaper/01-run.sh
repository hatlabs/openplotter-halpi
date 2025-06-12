#!/bin/bash -e

# Override original OpenPlotter wallpaper
install -m 644 files/fisherman-halpi2.jpg		"${ROOTFS_DIR}/usr/share/rpd-wallpaper/"

install -v -o 1000 -g 1000 -d "${ROOTFS_DIR}/home/${FIRST_USER_NAME}/.config"
install -v -o 1000 -g 1000 -d "${ROOTFS_DIR}/home/${FIRST_USER_NAME}/.config/pcmanfm"
install -v -o 1000 -g 1000 -d "${ROOTFS_DIR}/home/${FIRST_USER_NAME}/.config/pcmanfm/LXDE-pi"
install -m 644 -o 1000 -g 1000 files/desktop-items-0.conf		"${ROOTFS_DIR}/home/${FIRST_USER_NAME}/.config/pcmanfm/LXDE-pi/"
