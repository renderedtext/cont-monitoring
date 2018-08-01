#!/usr/bin/env bash

echo "---------------------------------"
echo "Project Page"
echo "---------------------------------"

page_url="https://${ORGANIZATION_USERNAME}.semaphoreci.com/projects/cont-monitoring"

set -x
curl -sSL -D - -H "Cookie: $SESSION_COOKIE_NAME=$SESSION_COOKIE" "$page_url" -o /dev/null
