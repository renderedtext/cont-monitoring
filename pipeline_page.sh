#!/usr/bin/env bash

set -euo pipefail

url="https://renderedtext.semaphoreci.com/pipelines/$SEMAPHORE_PIPELINE_ID"

echo "Opening $url"
firefox -headless "$url"
echo "Polling over Pipeline is about to start..."

sleep 10
kill $(pidof firefox)
echo "Killed firefox"
