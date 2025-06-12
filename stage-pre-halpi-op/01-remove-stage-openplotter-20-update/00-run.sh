#!/bin/bash -e

# We don't want to run apt-get update as part of the build process because
# we always use the latest upstream repositories as the base image.

# Get the directory of this script
CURRENT_DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"

cd $CURRENT_DIR
cd ../..

rm -rf stage-openplotter/20-update
