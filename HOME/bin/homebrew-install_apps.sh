#!/bin/sh

brew update
brew tap caskroom/cask

#lets see whats already installed
brew list
brew cask list

#update the system
#brew upgrade
#brew cask upgrade

#get rid of the old versions
#brew cleanup
#brew cask cleanup

#brew cask upgrade

#brew cask search virtual  # Example of how to search caskroom

brew cask install virtualbox
brew cask install virtualbox-extension-pack

brew cask install evernote

brew cask install path-finder

brew cask install dropbox

brew cask install firefox
brew cask install google-chrome

brew cask install istat-menus

brew cask install keepingyouawake

brew install vim

brew cask install steam

brew cask install vlc

brew install r
brew cask install rstudio

brew cask install anaconda
