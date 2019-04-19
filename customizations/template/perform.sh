#!/bin/bash

if [ -z "$devsetup_template_var1" ]; then
    echo "Must set devsetup_template_var1"
    exit 1
fi
if [ "$devsetup_template_var1" == "MUST CHANGE" ]; then
    echo "Must override devsetup_template_var1"
    exit 1
fi

# required 'check' code
if [ $1 == "check" ]; then
    exit 0
fi

# perform action (default)
echo "Template -- no action"
