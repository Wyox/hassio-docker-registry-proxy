#!/bin/sh

echo Starting Docker Registry
# Replacing variables in YAML with env variables
REPLACER_USERNAME="s/\$USERNAME/$USERNAME/g"

set -e

CONFIG_PATH=/data/options.json

USERNAME=$(jq --raw-output '.username // empty' $CONFIG_PATH)
PASSWORD=$(jq --raw-output '.password // empty' $CONFIG_PATH)


sed -i -e "s/\$USERNAME/$USERNAME/g" /etc/docker/registry/config.yml
sed -i -e "s/\$PASSWORD/$PASSWORD/g" /etc/docker/registry/config.yml


cat /etc/docker/registry/config.yml

set -e

case "$1" in
    *.yaml|*.yml) set -- registry serve "$@" ;;
    serve|garbage-collect|help|-*) set -- registry "$@" ;;
esac

exec "$@"