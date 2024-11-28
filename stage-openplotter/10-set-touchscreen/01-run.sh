#!/bin/bash -e

#touchscreen
sed -i "s/maximize = 0/maximize = 1/g" "${ROOTFS_DIR}/home/${FIRST_USER_NAME}/.openplotter/openplotter.conf"
sed -i "s/maximize=0/maximize=1/g" "${ROOTFS_DIR}/home/${FIRST_USER_NAME}/.openplotter/openplotter.conf"
sed -i "s/touchscreen = 0/touchscreen = 1/g" "${ROOTFS_DIR}/home/${FIRST_USER_NAME}/.openplotter/openplotter.conf"
sed -i "s/touchscreen=0/touchscreen=1/g" "${ROOTFS_DIR}/home/${FIRST_USER_NAME}/.openplotter/openplotter.conf"

echo "GTK_OVERLAY_SCROLLING=0" >> "${ROOTFS_DIR}/etc/environment"
install -m 644 -o 1000 -g 1000 files/openplotter.css "${ROOTFS_DIR}/usr/share/themes/PiXflat/gtk-3.0/"
echo '@import url("openplotter.css");' >> "${ROOTFS_DIR}/usr/share/themes/PiXflat/gtk-3.0/gtk.css"

#opencpn
sed -i "s/MobileTouch = 0/MobileTouch = 1/g" "${ROOTFS_DIR}/home/${FIRST_USER_NAME}/.opencpn/opencpn.conf"
sed -i "s/MobileTouch=0/MobileTouch=1/g" "${ROOTFS_DIR}/home/${FIRST_USER_NAME}/.opencpn/opencpn.conf"
sed -i "s/mobiletouch = 0/mobiletouch = 1/g" "${ROOTFS_DIR}/home/${FIRST_USER_NAME}/.opencpn/opencpn.conf"
sed -i "s/mobiletouch=0/mobiletouch=1/g" "${ROOTFS_DIR}/home/${FIRST_USER_NAME}/.opencpn/opencpn.conf"

#backlight
install -m 644 files/backlight-permissions.rules "${ROOTFS_DIR}/etc/udev/rules.d/"
install -m 644 files/openplotter-brightness.desktop "${ROOTFS_DIR}/usr/share/applications/"
install -m 644 -o 1000 -g 1000 files/panel		"${ROOTFS_DIR}/home/pi/.config/lxpanel/LXDE-pi/panels/"
install -m 644 -o 1000 -g 1000 files/wf-panel-pi.ini		"${ROOTFS_DIR}/home/pi/.config/"

on_chroot << EOF
pip3 install rpi_backlight -U --break-system-packages
EOF

