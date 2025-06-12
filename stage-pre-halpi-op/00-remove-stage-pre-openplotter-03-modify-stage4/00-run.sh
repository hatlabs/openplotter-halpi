#!/bin/bash -e

# OpenPlotter wants to stick to X11, citing OpenCPN compatibility.
# At this point, however, Wayland probably provides a better overall
# experience, so we remove the OpenPlotter modification.

# Get the directory of this script
CURRENT_DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"

cd $CURRENT_DIR
cd ../..

rm -rf stage-pre-openplotter/03-modify-stage4-06-enable-wayland
