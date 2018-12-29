#!/bin/sh
# Update everything in homebrew and install stuff if needed
#
# the search command will perform a case-insensitive search across all available repos
# brew search <name>


brew update    # update homebew itself
brew tap caskroom/cask  # this is where the non-OpenSource stuff is stored

###############################################

#brew list  # lets see whats already installed
#brew cask list  # lets see whats already installed
#echo "Press a key to continue" ; read

###############################################

brew outdated  # check to see what isnt needed anymore
brew upgrade   # update the everything

brew cask outdated  # check to see what isnt needed anymore
brew cask upgrade   # update the everything

brew cleanup   # get rid of the old versions
