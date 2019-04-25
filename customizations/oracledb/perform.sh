#!/bin/bash

if [ -z "$devsetup_oracledb_version" ]; then
    echo "Must set devsetup_oracledb_version"
    exit 1
fi

# required 'check' code
if [ $1 == "check" ]; then
    exit 0
fi

# perform action (default)
image_name="store/oracle/database-enterprise:${devsetup_oracledb_version}${devsetup_oracledb_slim}"
sudo docker pull ${image_name}

