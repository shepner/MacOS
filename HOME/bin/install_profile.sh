#!/bin/sh
# download and overwrite the profile

WORKDIR=$HOME/tmp/MacOS
mkdir -p $WORKDIR

# Download/install the scripts
git clone https://github.com/shepner/MacOS.git $WORKDIR
cp -R $WORKDIR/HOME/.* $HOME

# Clean up after ourselves
rm -Rf $WORKDIR
