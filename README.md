## What is this?

This is a binary patch to fix Cubase 11's baios.bundle causing the app to crash on Big Sur on AMD Ryzen chipsets. Patch was created with Cubase 9.5's baios.bundle because that seems to work for some reason.

## How-to:

This requires a fresh install of Cubase 11, Homebrew and bsdiff/bspatch.

* Install [Homebrew](https://brew.sh/)
* Install the bsdiff package: *$ brew install bsdiff*
* Apply the binary patch using the script provided here
