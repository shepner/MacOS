#!/bin/sh
# Use this to work around an annoying ISP's controls
# ADJUST AS APPROPRIATE

# from <workstation1>, ssh to <central ssh server> on port 10000 and login as <user2>
#   forward port 2222 from <central ssh server> to port 22 on <workstation1>
#   and DONT open a shell and run in the background
#CMD="ssh -nNTf -p 10000 -R 2222:localhost:22 <user2>@<central ssh server>"
CMD="ssh -nNTf -p 10000 -R 2222:localhost:22 <user2>@<central ssh server>"

# run the command if needed
if [ `ps axwww | grep "$CMD" | grep -c -v 'grep'` -eq 0 ] ; then
  echo "starting ssh tunnel"
  `$CMD`
else
  echo "ssh tunnel already running"
fi

##################################################################
# THE FOLLOWING IS JUST DOCUMENTATION.  DONT RUN FROM THIS SCRIPT!
##################################################################

# on <central ssh server> run the following:
#cat >> /etc/ssh/sshd_config << EOF
#GatewayPorts yes
#EOF
#sudo service ssh restart

# from <workstation2>, ssh to <central ssh server> on port 2222 (which is connected to: <workstation1>:22)
#   and login as <user1> on <workstation1>
#ssh -p 2222 <user1>@<central ssh server>

# then do the following to enable key authentication
#ssh-copy-id -i ~/.ssh/<ident> -p 2222 <user1>@<central ssh server>

# if desired, use sshuttle to establish a 'VPN'
# https://github.com/sshuttle/sshuttle
#sshuttle -r <user1>@<central ssh server>:2222 <0.0.0.0/0>
