#!/usr/bin/env bash

echo "---------------------------------"
echo "Branch Page"
echo "---------------------------------"

page_url="https://semaphore.semaphoreci.com/branches/62d3facb-5f38-479f-9fad-54052852929f"

set -x
curl -sSL -D - -H "Cookie: $SESSION_COOKIE_NAME=$SESSION_COOKIE" "$page_url" -o /dev/null
