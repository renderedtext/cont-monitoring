#!/usr/bin/env bash

page_url="https://renderedtext.semaphoreci.com/jobs/$SEMAPHORE_JOB_ID"

while true; do
  #
  # Generate logs for a minute
  #
  for i in {1..60}; do
    echo -e "Random output with some colors \e[31mRED\e[0m \e[32mGREEN\e[0m"
    echo -e "newlines"
    echo -e "  indentations"
    echo -e "and some weird Japanese characters. ありがとうございます"

    sleep 1
  done

  #
  # Open the page.
  #
  curl -s -H "Cookie: $SESSION_COOKIE_NAME=$SESSION_COOKIE_VALUE" "$page_url" > /dev/null

  #
  # Fetch the logs.
  #
  curl -s -H "Cookie: $SESSION_COOKIE_NAME=$SESSION_COOKIE_VALUE" "$page_url/logs" > /dev/null
done
