#!/bin/bash
# prints default environment variable sets for all specified customizations
# fails if there are no arguments.
set -e

bin/parse_customizations.sh "$@" | \
    while read -r line; do \
        echo "customizations/$line/defaults.sh"; \
    done | xargs cat > /tmp/devsetup_env.sh
chmod +x /tmp/devsetup_env.sh
. /tmp/devsetup_env.sh
rm /tmp/devsetup_env.sh

