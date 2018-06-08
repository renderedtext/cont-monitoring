#!/usr/bin/env bash

set -euo pipefail

url="https://renderedtext.semaphoreci.com/branches/$SEMAPHORE_BRANCH_ID"

while true; do
  echo "Opening $url"
  firefox -headless "$url"
  echo "Polling over Branch is about to start..."

  sleep 20
  kill $(pidof firefox)
  echo "Killed firefox"
done
