#!/bin/bash -e

# Get the directory of this script
CURRENT_DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"

cd $CURRENT_DIR
cd ../..

rm -rf stage2/03-accept-mathematica-eula
