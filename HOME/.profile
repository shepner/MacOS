
# esp-idf
if [ -d $HOME/src/esp/xtensa-esp32-elf/bin ] ; then
  export PATH=$PATH:$HOME/src/esp/xtensa-esp32-elf/bin
  export IDF_PATH=~/src/esp/esp-idf
fi

# MacPorts
if [ -d $HOME/local/macports/bin ] ; then
	export PATH=$HOME/local/macports/bin:$HOME/local/macports/sbin:$PATH
	export MANPATH=$HOME/local/macports/share/man:$MANPATH
fi

# homebrew
if [ -d $HOME/local/homebrew/bin ] ; then
	export PATH=$HOME/local/homebrew/bin:$PATH
fi

# perlbrew
if [ -d $HOME/local/perl5/perlbrew ] ; then
	export PERLBREW_ROOT=$HOME/local/perl5/perlbrew
	source ${PERLBREW_ROOT}/etc/bashrc
	perlbrew switch perl-5.20.1
fi

####################################################
# my personal stuff
####################################################
export HISTCONTROL=erasedups
export HISTSIZE=10000
shopt -s histappend

if [ -d $HOME/bin ] ; then
  export PATH=$HOME/bin:$PATH
fi

if [ -d $HOME/sbin ] ; then
  export PATH=$HOME/sbin:$PATH
fi

alias h="history"
alias vim="mvim"
