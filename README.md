## What is this?

This is a binary patch to fix Cubase 11's baios.bundle causing the app to crash on Big Sur on AMD Ryzen chipsets. Patch was created with Cubase 9.5's baios.bundle because that one seems to work for some reason.

## How-to:

This requires a fresh install of Cubase 11, Homebrew and bsdiff/bspatch.

* Install [Homebrew](https://brew.sh/)
* Install the bsdiff package: *$ brew install bsdiff*
* Apply the binary patch using the script provided here

## In-depth description of the issue itself

After upgrading my Cubase 9.5 license to Cubase 11—to my disappointment—I immediately ran into a Ryzentosh-specific error on Big Sur resulting in Cubase crashing each time it tried to load up. 

The crash log showed it to be caused by a stack overflow error in a bundled executable file called "baios" which appears to handle Cubase's input/output settings such as the audio interface selection popup on the application's startup. 

I suspected this to be an issue with AppleALC.kext and made sure to test every layout-id supported by my built-in codec using the alcid=xxx boot argument, but to no avail. 

What I ended up doing was much simpler though as I just made a binary patch that downgrades that one baios executable to an earlier version that actually does run on AMD Ryzen. 

The isssue could still have something to do with AppleALC, such as the [No mic on AMD](https://dortania.github.io/OpenCore-Post-Install/universal/audio.html#no-mic-on-amd) issue or [AppleALC not working correctly with multiple sound cards](https://dortania.github.io/OpenCore-Post-Install/universal/audio.html#applealc-not-working-correctly-with-multiple-sound-cards) one and I might look deeper into this in the future when I have time.

Until then, enjoy this hack! ;3
