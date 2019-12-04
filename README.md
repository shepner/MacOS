# UNIX-OSX
Mac OS specific utils and tweaks

Run this to bootstrap a new system:
``` Shell
bash <(curl -s https://raw.githubusercontent.com/shepner/MacOS/master/bootstrap.sh)
```

---

[Where should a local executable be placed?](https://unix.stackexchange.com/questions/36871/where-should-a-local-executable-be-placed)

| Directory     | Description                                           |
| :------------ |:------------------------------------------------------|
| $HOME/bin     | Local binaries                                        |
| $HOME/etc     | Configuration files |
| ~~$HOME/games~~   | ~~Local game binaries~~                                   |
| ~~$HOME/include~~ | ~~Local C header files~~                                  |
| $HOME/lib     | Libraries essential for the binaries in `~/bin` and `~/sbin`    |
| $HOME/local   | Local store for applications                          |
| ~~$HOME/man~~     | ~~Local online manuals~~                                  |
| ~~$HOME/sbin~~    | ~~Local system binaries~~                                 |
| ~~$HOME/share~~   | ~~Local architecture-independent hierarchy~~              |
| $HOME/src     | Source code                                     |
| ~~$HOME/tmp~~     | ~~Temporary files~~                                       |
| $HOME/var     | Variable files—files whose content is expected to continually change during normal operation of the system—such as logs, spool files, and temporary e-mail files.                                     |

[Filesystem Hierarchy Standard](https://en.wikipedia.org/wiki/Filesystem_Hierarchy_Standard)
