#!/usr/bin/env bash

echo "---------------------------------"
echo "Job Page"
echo "---------------------------------"

page_url="https://${ORGANIZATION_USERNAME}.semaphoreci.com/jobs/$SEMAPHORE_JOB_ID"

set -x

curl -sSL -D - -H "Cookie: $SESSION_COOKIE_NAME=$SESSION_COOKIE" "$page_url" -o /dev/null
curl -sSL -D - -H "Cookie: $SESSION_COOKIE_NAME=$SESSION_COOKIE" "$page_url/logs" -o /dev/null
