#!/bin/bash

export devsetup_final_steps_file=/tmp/devsetup_final_steps.txt

any_failures=0
while read -r line; do 
    /bin/bash customizations/$line/perform.sh check
    if [ $? != 0 ]; then 
        any_failures=1; 
    fi 
done <<< $(bin/parse_customizations.sh "$@")

if [ $any_failures = 1 ]; then
    echo "!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!"
    echo "!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!"
    echo "At least one command failed prerequisite check"
    exit 1
fi

rm "$devsetup_final_steps_file"
touch "$devsetup_final_steps_file"

while read -r line; do
    echo "******************************************************************************"
    echo "Running customization: $line"
    /bin/bash customizations/$line/perform.sh run;
    if [ $? != 0 ]; then 
        echo "!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!"
        echo "Failed at customization: ${line}"
        rm "$devsetup_final_steps_file"
        exit 1
    fi 
done <<< $(bin/parse_customizations.sh "$@")

if [ ! -z "$devsetup_final_step" ]; then
    echo "-------------------------------------------------------------------------" >> "$devsetup_final_steps_file"
    echo "$devsetup_final_step" >> "$devsetup_final_steps_file"
fi
echo "******************************************************************************"
# echo final steps if there are any
if [ $(wc -c < "$devsetup_final_steps_file") -gt 0 ]; then
    echo "DO THE FOLLOWING manual steps:"
    cat "$devsetup_final_steps_file"
    echo "******************************************************************************"
fi
rm "$devsetup_final_steps_file"
