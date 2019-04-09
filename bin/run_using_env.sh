#!/bin/bash
# prints default environment variable sets for all specified customizations
# fails if there are no arguments.
set -e

bin/parse_customizations.sh "$@" | \
    while read -r line; do \
        /bin/bash "customizations/$line/perform.sh"; \
    done

