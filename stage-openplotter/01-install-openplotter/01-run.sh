#!/bin/bash -e

#openplotter settings
install -v -o 1000 -g 1000 -d "${ROOTFS_DIR}/home/${FIRST_USER_NAME}/.config"
install -v -o 1000 -g 1000 -d "${ROOTFS_DIR}/home/${FIRST_USER_NAME}/.config/autostart"
install -m 644 -o 1000 -g 1000 files/openplotter-startup.desktop		"${ROOTFS_DIR}/home/${FIRST_USER_NAME}/.config/autostart/"
install -m 644 files/OpenPlotter.directory		"${ROOTFS_DIR}/usr/share/raspi-ui-overrides/desktop-directories/"
install -v -o 1000 -g 1000 -d "${ROOTFS_DIR}/home/${FIRST_USER_NAME}/.openplotter"
install -m 644 -o 1000 -g 1000 files/openplotter.conf		"${ROOTFS_DIR}/home/${FIRST_USER_NAME}/.openplotter/"

#desktop settings
install -v -o 1000 -g 1000 -d "${ROOTFS_DIR}/home/${FIRST_USER_NAME}/.config/pcmanfm"
install -v -o 1000 -g 1000 -d "${ROOTFS_DIR}/home/${FIRST_USER_NAME}/.config/pcmanfm/LXDE-pi"
install -m 644 files/OPwallpaper.png		"${ROOTFS_DIR}/usr/share/pixmaps/"
install -m 644 -o 1000 -g 1000 files/desktop-items-0.conf		"${ROOTFS_DIR}/home/${FIRST_USER_NAME}/.config/pcmanfm/LXDE-pi/"

#main menu
install -m 644 files/lxde-pi-applications.menu		"${ROOTFS_DIR}/etc/xdg/menus/"

#applications launch bar settings
install -v -o 1000 -g 1000 -d "${ROOTFS_DIR}/home/pi/.config/lxpanel"
install -v -o 1000 -g 1000 -d "${ROOTFS_DIR}/home/pi/.config/lxpanel/LXDE-pi"
install -v -o 1000 -g 1000 -d "${ROOTFS_DIR}/home/pi/.config/lxpanel/LXDE-pi/panels"
install -m 644 -o 1000 -g 1000 files/panel		"${ROOTFS_DIR}/home/pi/.config/lxpanel/LXDE-pi/panels/"
#applications launch bar settings wayland
install -m 644 -o 1000 -g 1000 files/wf-panel-pi.ini		"${ROOTFS_DIR}/home/pi/.config/"

#keyboard
install -m 644 files/matchbox-keyboard.desktop		"${ROOTFS_DIR}/usr/share/applications/inputmethods/"

#remove unwanted icons
rm -f "${ROOTFS_DIR}/usr/share/raspi-ui-overrides/applications/raspi_getstart.desktop"
rm -f "${ROOTFS_DIR}/usr/share/raspi-ui-overrides/applications/raspi_help.desktop"
rm -f "${ROOTFS_DIR}/usr/share/raspi-ui-overrides/applications/raspi_resources.desktop"
rm -f "${ROOTFS_DIR}/usr/share/raspi-ui-overrides/applications/debian-reference-common.desktop"
rm -f "${ROOTFS_DIR}/usr/share/raspi-ui-overrides/applications/magpi.desktop"
