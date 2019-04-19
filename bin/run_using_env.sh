#!/bin/bash


any_failures=0
while read -r line; do 
    /bin/bash customizations/$line/perform.sh check
    if [ $? != 0 ]; then 
        any_failures=1; 
    fi 
done <<< $(bin/parse_customizations.sh "$@")

if [ $any_failures = 1 ]; then
    echo "At least one command failed prerequisite check"
    exit 1
fi

while read -r line; do
    /bin/bash customizations/$line/perform.sh run;
    if [ $? != 0 ]; then 
        echo "Failed at customization: ${line}"
        any_failures=1; 
    fi 
done <<< $(bin/parse_customizations.sh "$@")

