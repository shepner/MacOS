
# emulate doskey
export HISTCONTROL=erasedups
export HISTSIZE=10000
shopt -s histappend

# set the path
if [ -d $HOME/bin ] ; then
  export PATH=$HOME/bin:$PATH
fi

# aliases
alias h="history"

if [ -d $HOME/bin/mvim ] ; then
  alias vim="mvim"
fi

