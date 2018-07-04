#!/usr/bin/env bash

echo "---------------------------------"
echo "Organization Page"
echo "---------------------------------"

page_url="https://${ORGANIZATION_USERNAME}.semaphoreci.com"

set -x
curl -sSL -D - -H "Cookie: $SESSION_COOKIE_NAME=$SESSION_COOKIE_VALUE" "$page_url" -o /dev/null
