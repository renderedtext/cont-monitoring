#!/usr/bin/env bash

echo "---------------------------------"
echo "Workflows Page"
echo "---------------------------------"

page_url="https://semaphore.semaphoreci.com/workflows/45d5725c-e025-46e8-9fca-a85297c0ec4a"

set -x
curl -sSL -D - -H "Cookie: $SESSION_COOKIE_NAME=$SESSION_COOKIE" "$page_url" -o /dev/null
