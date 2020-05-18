#!/usr/bin/env bash

echo "---------------------------------"
echo "Job Page"
echo "---------------------------------"

page_url="https://semaphore.semaphoreci.com/jobs/e8680793-96b5-4352-a05d-c2274d99f5e0"

set -x

curl -sSL -D - -H "Cookie: $SESSION_COOKIE_NAME=$SESSION_COOKIE" "$page_url" -o /dev/null
curl -sSL -D - -H "Cookie: $SESSION_COOKIE_NAME=$SESSION_COOKIE" "$page_url/logs" -o /dev/null
