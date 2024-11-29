#!/bin/bash -e

# Get the directory of this script
CURRENT_DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"

cd $CURRENT_DIR
cd ../..

rm -rf stage-pre-openplotter/03-modify-stage4-06-enable-wayland
