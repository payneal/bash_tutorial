#!/bin/bash

# write a script that executes the commans "cat /etc/shadow" if the command returns a 0 exit status report "Command succeeded" and exit with a 0 exit status. if the command returns a nonzero exit status report "Command failed" and exit with a 1 exit status

cat /etc/shadow

if [ "$?" -eq "0" ]
then
    echo "Command Succeeded"
    exit 0
fi

echo "Command Failed"
exit 1
