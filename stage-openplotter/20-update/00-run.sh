#!/bin/bash -e

on_chroot << EOF
apt update
apt full-upgrade -y
apt autoremove -y rp-bookshelf
EOF
