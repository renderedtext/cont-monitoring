#!/usr/bin/env bash

echo "==============================================================="
echo "="
echo "="

page_url="https://renderedtext.semaphoreci.com/jobs/$SEMAPHORE_JOB_ID"

echo "$page_url"

echo "Opening Job Page"
curl -i -H "Cookie: $SESSION_COOKIE_NAME=$SESSION_COOKIE_VALUE" "$page_url" > /dev/null

echo "Fetching the logs"
curl -i -H "Cookie: $SESSION_COOKIE_NAME=$SESSION_COOKIE_VALUE" "$page_url/logs" > /dev/null
