#!/bin/bash -e

on_chroot << EOF
	openplotter-ap enable
	raspi-config nonint do_vnc 0
	raspi-config nonint do_ssh 0
EOF