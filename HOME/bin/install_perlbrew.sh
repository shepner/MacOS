#!/bin/sh
# https://perlbrew.pl/

WORKDIR=$HOME/local
PERLBREW_ROOT=$WORKDIR/perl5/perlbrew

\curl -L https://install.perlbrew.pl | bash



cat >> $HOME/.profile << EOF

# perlbrew
if [ -d $HOME/local/perl5/perlbrew ] ; then
  export PERLBREW_ROOT=$HOME/local/perl5/perlbrew
  source ${PERLBREW_ROOT}/etc/bashrc
  perlbrew install perl-5.28.1
  perlbrew switch perl-5.28.1
fi

EOF
