#!/usr/bin/env bash

echo "---------------------------------"
echo "Project Page"
echo "---------------------------------"

page_url="https://renderedtext.semaphoreci.com/projects/$SEMAPHORE_PROJECT_ID"

set -x
curl -sSL -D - -H "Cookie: $SESSION_COOKIE_NAME=$SESSION_COOKIE_VALUE" "$page_url" -o /dev/null
