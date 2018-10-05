#!/usr/bin/env bash

echo "---------------------------------"
echo "Me Page"
echo "---------------------------------"

page_url="https://me.semaphoreci.com"

set -x
curl -sSL -D - -H "Cookie: $SESSION_COOKIE_NAME=$SESSION_COOKIE" "$page_url" -o /dev/null
curl -sSL -D - -H "Cookie: $SESSION_COOKIE_NAME=$SESSION_COOKIE" "$page_url/account" -o /dev/null
