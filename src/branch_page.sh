#!/usr/bin/env bash

echo "---------------------------------"
echo "Branch Page"
echo "---------------------------------"

page_url="https://semaphore.semaphoreci.com/branches/d06123e9-a3bb-4941-901c-8c607c753573"

set -x
curl -sSL -D - -H "Cookie: $SESSION_COOKIE_NAME=$SESSION_COOKIE" "$page_url" -o /dev/null
