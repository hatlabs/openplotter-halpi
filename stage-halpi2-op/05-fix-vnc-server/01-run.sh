#!/bin/bash -e

on_chroot << EOF
  systemctl disable vncserver-x11-serviced
  systemctl enable wayvnc
EOF
