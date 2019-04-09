#!/bin/bash
# parses argument list a b c d into 
#a
#b
#c
#d
#
# also fails if there are no arguments. or nonexistent directories
set -e

if [ "$#" -eq 0 ]; then
    echo "Must have at least one customization" > /dev/stderr
    exit 1
fi    

bad_customizations=0
cd $devsetup_dir
cd ../customizations

for file in "$@"; do \
    if [ ! -d $file ]; then
        printf "Illegal customization: %s\n" $file > /dev/stderr
        bad_customizations=1
    fi
done
if [ $bad_customizations = 1 ]; then
    exit 1
fi

printf "%s\n" "$@"
