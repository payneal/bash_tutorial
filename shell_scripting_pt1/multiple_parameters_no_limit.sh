#!/bin/bash

echo "executing script: $0"

for args in $@
do
    echo "$args was a given parameter"
done
