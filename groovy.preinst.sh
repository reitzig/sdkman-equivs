#!/bin/sh

candidate="/home/**/*/.sdkman/candidates/groovy/*"
file -E ${candidate}/bin > /dev/null 2>&1

if [ "$?" -ne "0" ]; then
    echo "ERROR: No candidate '${candidate}' found."
    exit 1
fi
