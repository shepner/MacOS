#!/bin/sh

# MacPorts
if [ -f `which port` ] ; then
  update_macports.sh
fi

# Homebrew
if [ -f `which brew` ] ; then
  update_homebrew.sh
fi

# DeDRM
if [ -d `find ~ -name "DeDRM.app" 2> /dev/null` ] ; then
  update_DeDRM.sh
fi

# MacOS
# http://osxdaily.com/2011/01/13/install-mac-os-x-software-updates-terminal/
softwareupdate -l  # list available updates
sudo softwareupdate -iva
