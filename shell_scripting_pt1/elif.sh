#!/bin/bash

MY_BASH="yes"

if [ "$MY_BASH" = "no" ]
then
    echo "bash was a no" 
elif [ "$MY_BASH" = "yes" ]
then
    echo "bash was a yes"
else
    echo "you tell me whats going on"
fi
