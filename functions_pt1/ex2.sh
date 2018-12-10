#!/bin/bash


# modify the script from the previous exercise. Make the "file_count" function accept a directory as an argument. Next have the function display the name of the directory followed by a colon. Finally,  display the number of files to the screen on the next line. Call the function 3 times. first on /etc , /var, /usr/biun


function file_count () {
    cd $1    
    local count=$(ls -1q | wc -l)
    echo "$1:"
    echo "$count"   
}

file_count $1

