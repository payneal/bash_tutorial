#!/bin/bash

HOST="google.com"
ping -c 1 $HOST

# remeber $? is the exit code of last statement
if [ "$?" -eq "0" ]
then
    echo "$HOST reachable"
    exit 1
fi

exit 0
