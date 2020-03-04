#!/bin/sh

#install_perlbrew.sh
#install_macports.sh
install_homebrew.sh
update_homebrew.sh

brew tap Homebrew/homebrew-cask  # this is where the non-OpenSource stuff is stored

###############################################

# To install a cask in an alternative location: https://github.com/Homebrew/homebrew-cask/blob/master/USAGE.md
# brew cask install --appdir="~/Applications" google-chrome

brew install wget
brew cask install macvim
brew cask install keepingyouawake
brew cask install grandperspective
brew cask install istat-menus
#brew cask install path-finder
brew cask install geektool

brew cask install google-chrome
brew cask install brave-browser
brew cask install firefox
#brew cask install thunderbird

brew cask install parallels
#brew cask install virtualbox
#brew cask install virtualbox-extension-pack
#brew cask install xquartz  # password needed

#brew cask install libreoffice
#brew cask install openoffice
brew cask install evernote
brew cask install dropbox
#brew cask install malwarebytes

brew cask install quicken
brew cask install a-better-finder-rename
#brew cask install mcgimp

brew cask install vlc
brew cask install plex-media-player
#brew cask install calibre

brew cask install tinymediamanager
#brew cask install handbrake
#brew cask install mp3tag
install_aax2mp3tools.sh
update_DeDRM.sh

brew cask install steam
brew install tintin

brew install python3
#pip3 install aws
brew install python2
#brew install r
#brew cask install r-app
#brew cask install rstudio
brew cask install arduino
#brew cask install fritzing

brew cask install balenaetcher
