#!/bin/sh
#
# Setting runtime environments
#
source ~/.bashrc
source /usr/local/bin/ftex
#
# Due to DG Broker DMON is terminated by firewall when idle time is over 2 hours
# Run DGMGRL> VALIDATE DATABASE <database name> every 1 hour to keep DMON alive
#
dgmgrl << EOF
connect /
SHOW CONFIGURATION LAG
exit
EOF
