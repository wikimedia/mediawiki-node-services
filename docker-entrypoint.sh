#!/bin/bash

set -e
cd /src

OPTS="-n 1"

exec node server -c config.yaml $OPTS
