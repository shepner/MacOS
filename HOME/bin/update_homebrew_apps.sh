#!/bin/sh

brew update    # update homebew itself

brew list  # lets see whats already installed
echo "Press a key to continue" ; read
brew outdated  # check to see what isnt needed anymore
brew upgrade   # update the everything


brew tap caskroom/cask  # this is where the non-OpenSource stuff is stored
brew cask list  # lets see whats already installed
echo "Press a key to continue" ; read
brew cask outdated  # check to see what isnt needed anymore
brew cask upgrade   # update the everything


brew cleanup   # get rid of the old versions


# the search command will perform a case-insensitive search across all available repos
#brew search <name>

###############################################
brew install wget
brew install python3
brew install python2

brew install tintin


###############################################
brew cask install keepingyouawake
brew cask install firefox
#brew cask installthunderbird
brew cask install google-chrome
brew cask install macvim

brew cask install istat-menus

brew cask install evernote
brew cask install dropbox
brew cask install quicken

brew cask install vlc
brew cask install plex-media-player
brew cask install tinymediamanager
#brew cask install handbrake
#brew cask install mp3tag

brew cask install steam

brew cask install parallels
#brew cask install virtualbox
#brew cask install virtualbox-extension-pack

brew cask install arduino
#brew install r
#brew cask install rstudio

#brew cask install path-finder
