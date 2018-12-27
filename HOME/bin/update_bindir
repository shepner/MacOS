#!/bin/sh

WORKDIR=$HOME/tmp/MacOS
mkdir -p $WORKDIR

# Download/install the scripts
git clone https://github.com/shepner/MacOS.git $WORKDIR
cp -R $WORKDIR/HOME/bin $HOME/bin
chmod -R 750 $HOME/bin

# Clean up after ourselves
rm -Rf $WORKDIR
