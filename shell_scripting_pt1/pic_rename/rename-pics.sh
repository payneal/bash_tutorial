#!/bin/bash
PICTURES=$(ls *jpg)
DATE=$(date +%F)

echo "here is pictures: $PICTURES"
echo "here is date: $DATE"


for PICTURE in $PICTURES
do
    echo "renaming ${PICTURE} to ${DATE}-${PICTURE}"
    mv ${PICTURE} ${DATE}-${PICTURE}
done

