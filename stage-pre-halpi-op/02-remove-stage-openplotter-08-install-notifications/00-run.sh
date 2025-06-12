#!/bin/bash -e

# OpenPlotter might occasionally flood the desktop with notification
# dialogs, rendering the system unusable.
# This script removes the OpenPlotter notifications stage from the build.

# Get the directory of this script
CURRENT_DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"

cd $CURRENT_DIR
cd ../..

rm -rf stage-openplotter/08-install-notifications
