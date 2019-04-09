#!/bin/bash
# prints default environment variable sets for all specified customizations
# fails if there are no arguments.

bin/parse_customizations.sh "${@:2}" | \
    while read -r line; do \
        echo "customizations/$line/defaults.sh"; \
    done | xargs cat > $1
echo "export devsetup_customizations=\"${@:2}\"" >> $1
chmod +x $1
