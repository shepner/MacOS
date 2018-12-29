
##############################################################################
# emulate doskey

export HISTCONTROL=erasedups
export HISTSIZE=10000
shopt -s histappend

##############################################################################
# set the local path

if [ -d $HOME/bin ] ; then
  export PATH=$HOME/bin:$PATH
fi

##############################################################################
# aliases

alias h="history"
alias dos2unix='perl -i.bak -p -e "s/\r//g\" $1'
alias unix2dos='perl -i -p -e "s|[\r\n]+|\r\n|g" $1'

# Set Finder to show or hide hidden files
# To toggle from Finder:  SHIFT + CMD + .
alias showFiles='defaults write com.apple.finder AppleShowAllFiles YES; killall Finder /System/Library/CoreServices/Finder.app'
alias hideFiles='defaults write com.apple.finder AppleShowAllFiles NO; killall Finder /System/Library/CoreServices/Finder.app'

if [ -f `which mvim` ] ; then
  alias vim="mvim"
fi

##############################################################################
