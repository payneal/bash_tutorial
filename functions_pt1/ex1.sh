#!/bin/bash

# Write a shell script that consists of a function that display the number of fiules in the present working directory. Name this function "file count" and call it your script. if you use a varible in your function, remember to make it a local varible

# Hint The wc utility is used to count the number of lines, words and bytes

function file_count () {
    local count=$(ls -1q | wc -l)
    echo "this is the count: $count"   
}

file_count
