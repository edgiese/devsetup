#!/bin/bash
set -e

if [[ -z "${ORACLE_DB_DOCKER_LOCATION}" ]]; then
    ORACLE_DB_DOCKER_LOCATION=ideaIU-2018.3.5
fi

# TODO:  Make this a little more idempotent
docker run -d -p 8080:8080 -p 1521:1521 --name OracleDB ${ORACLE_DB_DOCKER_LOCATION}


