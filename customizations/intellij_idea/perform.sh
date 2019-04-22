#!/bin/bash

if [ -z "$devsetup_intellij_idea_type" ]; then
    echo "Must set devsetup_intellij_idea_type"
    exit 1
fi
if [ "$devsetup_intellij_idea_type" != "ultimate" ]; then
    if [ "$devsetup_intellij_idea_type" != "community" ]; then
        echo "Must set devsetup_intellij_idea_type to 'ultimate' or 'community'"
        exit 1
    fi
fi

# required 'check' code
if [ $1 == "check" ]; then
    exit 0
fi

# perform action (default)
sudo snap install intellij-idea-${devsetup_intellij_idea_type} --classic
