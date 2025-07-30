#!/bin/bash -e

# Set autologin for the OpenPlotter user (pi)

on_chroot << EOF
raspi-config nonint do_autologin 2
EOF
