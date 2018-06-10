#!/usr/bin/env bash

set -euo pipefail

echo "==============================================================="
echo ""
echo ""

url="https://renderedtext.semaphoreci.com/branches/$SEMAPHORE_BRANCH_ID"

echo "Opening $url"
firefox -headless "$url" &
echo "Polling over Branch is about to start..."

sleep 10
kill $(pidof firefox)
echo "Killed firefox"
