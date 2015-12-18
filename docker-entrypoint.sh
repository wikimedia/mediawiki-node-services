#!/bin/bash

set -e
cd /src

OPTS="-n 1"

if [ ! -z "$MEDIAWIKI_API_URL" ];then
    cleanedURL=$(echo $MEDIAWIKI_API_URL | sed -e 's/\//\\\//g')
    sed -e "s/http:\\/\\/localhost\\/w\\/api.php/$cleanedURL/" \
        < config.yaml > config.local.yaml
    exec node server -c config.local.yaml $OPTS
else
    exec node server -c config.yaml $OPTS
fi
