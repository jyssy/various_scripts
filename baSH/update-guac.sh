#!/bin/bash

if [[ $EUID -ne 0 ]]; then
  exec sudo /bin/bash "$0" "$@"
fi

set -euo pipefail

pushd /opt/guacamole/

# Get the new compose file
if [[ ! -f docker-compose.yml.new ]]; then
  curl -o docker-compose.yml.new 'https://gitlab.com/exosphere/exosphere/-/raw/master/ansible/roles/guacamole/files/docker-compose.yml?ref_type=heads&inline=false'
fi

# Make a backup
if [[ ! -f docker-compose.yml.bak ]]; then
  cp docker-compose.yml docker-compose.yml.bak
fi

# Swap
docker compose down
rm docker-compose.yml
mv docker-compose.yml.new docker-compose.yml

# Start the new containers
docker compose up -d

echo 'Guacamole updated!'
