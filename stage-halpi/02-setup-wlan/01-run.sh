#!/bin/bash -e

# Revert the forcehotspot stuff that runs the hardcoded AP setup in openplotter-settings

sed -i "s/forcehotspot = 1/forcehotspot = 0/g" "${ROOTFS_DIR}/home/${FIRST_USER_NAME}/.openplotter/openplotter.conf"
sed -i "s/forcehotspot=1/forcehotspot=0/g" "${ROOTFS_DIR}/home/${FIRST_USER_NAME}/.openplotter/openplotter.conf"

# Copy the OpenPlotter-Hotspot conf file to the right place
install -m 600 files/OpenPlotter-Hotspot.nmconnection "${ROOTFS_DIR}/etc/NetworkManager/system-connections/OpenPlotter-Hotspot.nmconnection"

# Add virtual wlan interface for AP mode
install -m 755 files/create_ap_interface.sh "${ROOTFS_DIR}/usr/local/bin/create_ap_interface.sh"

# Add the systemd unit file to create the AP interface
install -m 644 files/create_ap_interface.service "${ROOTFS_DIR}/etc/systemd/system/create_ap_interface.service"

# Enable the service
on_chroot << EOF
systemctl enable create_ap_interface
EOF

