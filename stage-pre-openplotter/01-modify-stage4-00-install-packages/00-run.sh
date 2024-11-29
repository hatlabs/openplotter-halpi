#!/bin/bash -e

# Get the directory of this script
CURRENT_DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"

cd $CURRENT_DIR
cd ../..

echo "Contents of the current directory"
ls -l

patch -p1 < $CURRENT_DIR/files/00-packages.patch
patch -p1 < $CURRENT_DIR/files/02-packages.patch
