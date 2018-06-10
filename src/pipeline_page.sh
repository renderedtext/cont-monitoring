#!/usr/bin/env bash


echo "---------------------------------"
echo "Pipeline Page"
echo "---------------------------------"

page_url="https://renderedtext.semaphoreci.com/pipelines/$SEMAPHORE_PIPELINE_ID"

set -x
curl -sSL -D - -H "Cookie: $SESSION_COOKIE_NAME=$SESSION_COOKIE_VALUE" "$page_url" -o /dev/null
