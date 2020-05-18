#!/usr/bin/env bash

echo "---------------------------------"
echo "Dashboard Page"
echo "---------------------------------"

page_url="https://semaphore.semaphoreci.com/dashboards/everyones-activity"

set -x
curl -sSL -D - -H "Cookie: $SESSION_COOKIE_NAME=$SESSION_COOKIE" "$page_url" -o /dev/null
curl -sSL -D - -H "Cookie: $SESSION_COOKIE_NAME=$SESSION_COOKIE" "$page_url/0/poll" -o /dev/null
