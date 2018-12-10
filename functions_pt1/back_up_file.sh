#!/bin/bash

function backup_file () {
    if [ -f  $1 ]
    then
        local BACK= "/tmp/$(basename ${1}).$(date + %F).$$"
        echo "Backing up $1 to ${BACK}"
        
        # the exit status of the function will 
        # be the exit status of the cp command
        cp $1 $BACK
    else
        # the file doesnt exist
        return 1
    fi
}

backup_file /etc/hosts
if [ $? -eq 0 ]
then
    echo "Backup succeeded!"
else
    echo "Back up failed"
    exit 1
fi
