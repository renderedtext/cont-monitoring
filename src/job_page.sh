#!/usr/bin/env bash

echo "---------------------------------"
echo "Job Page"
echo "---------------------------------"

page_url="https://semaphore.semaphoreci.com/jobs/9c7ade07-a287-4e53-9811-b7cc9a3ffc84"

set -x

curl -sSL -D - -H "Cookie: $SESSION_COOKIE_NAME=$SESSION_COOKIE" "$page_url" -o /dev/null
curl -sSL -D - -H "Cookie: $SESSION_COOKIE_NAME=$SESSION_COOKIE" "$page_url/logs" -o /dev/null
