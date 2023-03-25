#!/bin/bash
echo " "
echo "Lab Preparation Script"
echo "======================"
echo " "
echo "Please wait for 30 seconds."
echo "The script will cleanup and"
echo "switch DB12 into archivelog"
echo "mode for the Hands-On Lab."
echo " "
rm -rf /u02/oradata/UPGR
rm -rf /u02/oradata/CDB1
rm -rf /home/oracle/cloud
rm -rf /u02/fast_recovery_area/DB12/DB12/archivelog/2019*
. db12
sqlplus -s sys/oracle as sysdba << EOF
whenever sqlerror exit sql.sqlcode;
shutdown immediate;
startup mount;
alter database archivelog;
alter database open;
exit;
EOF
echo "Done!"
