#!/usr/bin/env bash

echo "---------------------------------"
echo "Workflows Page"
echo "---------------------------------"

page_url="https://semaphore.semaphoreci.com/workflows/a2fe78a4-bd90-4966-b30e-7786ccafb46c"

set -x
curl -sSL -D - -H "Cookie: $SESSION_COOKIE_NAME=$SESSION_COOKIE" "$page_url" -o /dev/null
