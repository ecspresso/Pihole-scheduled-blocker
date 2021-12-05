#!/bin/bash

declare -a list=(
    '(\.|^)example\.org$'
    '(\.|^)example\.com$'
    '(\.|^)example\.se$'
)

for domain in ${list[@]}; do
    if [ "$1" == 'block' ]; then
        /usr/local/bin/pihole regex $domain
    elif [ "$1" == 'unblock' ]; then
        /usr/local/bin/pihole regex -d $domain
    else
        echo $domain
    fi
    wait
done
