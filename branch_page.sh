#!/usr/bin/env bash


echo "---------------------------------"
echo "Branch Page"
echo "---------------------------------"

page_url="https://renderedtext.semaphoreci.com/branches/$SEMAPHORE_BRANCH_ID"

set -x
curl -sSL -D - -H "Cookie: $SESSION_COOKIE_NAME=$SESSION_COOKIE_VALUE" "$page_url" -o /dev/null
