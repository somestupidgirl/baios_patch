#!/usr/bin/env bash

DIR="$(dirname "$(realpath "$0")")"

echo "Patching baios.bundle..."
sudo ./bspatch /Applications/Cubase\ 11.app/Contents/Components/baios.bundle/Contents/MacOS/baios /Applications/Cubase\ 11.app/Contents/Components/baios.bundle/Contents/MacOS/baios $DIR/baios.patch
echo "Done!"
exit 0
