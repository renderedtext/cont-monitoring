#!/usr/bin/env bash

echo "---------------------------------"
echo "Home Page"
echo "---------------------------------"

page_url="https://semaphore.semaphoreci.com/"

set -x
curl -sSL -D - -H "Cookie: $SESSION_COOKIE_NAME=$SESSION_COOKIE" "$page_url" -o /dev/null
curl -sSL -D - -H "Cookie: $SESSION_COOKIE_NAME=$SESSION_COOKIE" "$page_url/workflows" -o /dev/null
