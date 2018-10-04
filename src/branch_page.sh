#!/usr/bin/env bash

echo "---------------------------------"
echo "Branch Page"
echo "---------------------------------"

page_url="https://semaphore.semaphoreci.com/branches/7cc735cc-1cdb-4f92-8215-3afe3cee1f52"

set -x
curl -sSL -D - -H "Cookie: $SESSION_COOKIE_NAME=$SESSION_COOKIE" "$page_url" -o /dev/null
