# UNIX-OSX
Mac OS specific utils and tweaks

[Filesystem Hierarchy Standard](https://en.wikipedia.org/wiki/Filesystem_Hierarchy_Standard)

[Where should a local executable be placed?](https://unix.stackexchange.com/questions/36871/where-should-a-local-executable-be-placed)
The full local hierarchy would look like this.
* $HOME/bin Local binaries
* $HOME/etc Host-specific system configuration for local binaries
* $HOME/games Local game binaries
* $HOME/include Local C header files
* $HOME/lib Local libraries
* $HOME/lib64 Local 64-bit libraries
* $HOME/local Local store for applications
* $HOME/man Local online manuals
* $HOME/sbin Local system binaries
* $HOME/share Local architecture-independent hierarchy
* $HOME/src Local source code

---

[How to convert Audible aax files to mp3 in Linux](https://en.code-bude.net/2017/02/12/how-to-convert-audible-aax-files-to-mp3-in-linux/)

[AAXtoMP3](https://github.com/KrumpetPirate/AAXtoMP3)

[audible-activator](https://github.com/inAudible-NG/audible-activator)


To get the activation key run `audible-activator.py -l us` and the last line is the string needed for AAXtoMP3

To convert to MP3, run `AAXtoMP3.sh <authcode> <aax-file>`.  You can use wildcards (ie \*.aax) for the filename
