#!/bin/bash -e

# Add virtual wlan interface for AP mode
iw dev wlan0 interface add wlan9 type __ap

# Remove power-saving from wlan0 and wlan9
iw wlan0 set power_save off
iw wlan9 set power_save off
