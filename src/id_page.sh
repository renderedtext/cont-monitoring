#!/usr/bin/env bash

echo "---------------------------------"
echo "ID Page"
echo "---------------------------------"

page_url="https://id.semaphoreci.com"

set -x
curl -sSL -D - "$page_url" -o /dev/null
