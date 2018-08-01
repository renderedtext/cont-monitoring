#!/usr/bin/env bash

echo "---------------------------------"
echo "New Org Page"
echo "---------------------------------"

page_url="https://me.semaphoreci.com/organizations/new"

set -x
curl -sSL -D - -H "Cookie: $SESSION_COOKIE_NAME=$SESSION_COOKIE" "$page_url" -o /dev/null
