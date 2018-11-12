#!/bin/bash


function checkIfAppArmorOptionExist() {

  local occurrences=$(cat /mnt/boot/grub/grub.cfg | grep -c "apparmor");

  if [ $occurrences -gt 0 ]; then
      return 0;
  else
      return 1;
  fi
}

checkIfAppArmorOptionExist;
  if [ $? -eq 0 ]
  then
    echo "Successfully found some occurrences"
  else
    echo "Could not find any occurrences" >&2
  fi


exit
