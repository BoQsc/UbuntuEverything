#!/bin/bash


declare sudoPasswordCache=$((sudo -n true) 2>&1);
if [ "$sudoPasswordCache" = "sudo: a password is required" ];
then echo sdffddgdgr
else echo nope

fi

exit 
# If we can't run sudo without a password, complain and exit
if ! (sudo -n true 2> /dev/null)
then
       echo "please run as root" >&2
       echo "haha you have not power here" >&2
       echo "You need to enter password" >&2
fi

# If EUID isn't zero, replace and re-run this script as root using sudo.
if [ "$EUID" -ne 0 ]
then
        exec sudo bash "$0" "$@"
        echo "exec failed" >&2
        exit 1
fi

#########################################
####### The below section always runs as root #########
#########################################

declare commandOutput=$(apt-add-repository multiverse);
if echo "$commandOutput" | grep -q "distribution component is already enabled"; then 
  echo "multiverse repository is already enabled" >&2
fi
