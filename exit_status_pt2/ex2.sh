#! /bin/bash

# write a shell script that accepts a file or a directory name as an argument. have the script report is its a regular file, a directory, or other typoe of file. if its regiular file , exit with a 0 exit status, if its a directory exit with a 1 if it is someother type of file exit witha 2

FILE_OR_DIR=$1

echo "you gave this: $FILE_OR_DIR"

if [ -f $FILE_OR_DIR ]
then
    echo "regular file"
    exit 0
elif [ -d $FILE_OR_DIR ]
then
    echo "this is directory"
    exit 1
else
    echo "this isnt regular file or directory"
    exit 2
fi
