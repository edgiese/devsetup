#!/bin/bash
# parses argument list a b c d into 
#a
#b
#c
#d
#
# also fails if there are no arguments.
set -e

if [ "$#" -eq 0 ]; then
    echo "Must have at least one customization"
    exit 1
fi    
printf "%s\n" "$@"
