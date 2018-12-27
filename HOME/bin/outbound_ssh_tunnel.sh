#!/bin/sh
# Use this to work around an annoying ISP's controls
# ADJUST AS APPROPRIATE
#
#
# from <workstation1>, ssh to <central ssh server> on port 10000 and login as <user2>
#   forward port 2222 from <central ssh server> to port 22 on <workstation1>
#ssh -p 10000 -R 2222:localhost:22 <user2>@<central ssh server>
ssh -nNT -p 10000 -R 2222:localhost:22 <user2>@<central ssh server>

# on <central ssh server> run the following:
#cat >> /etc/ssh/sshd_config << EOF
#GatewayPorts yes
#EOF
#sudo service ssh restart

# from <workstation2>, ssh to <central ssh server> on port 2222 (which is connected to: <workstation1>:22)
#   and login as <user1> on <workstation1>
# DONT THIS RUN FROM HERE!
#ssh -p 2222 <user1>@<central ssh server>
