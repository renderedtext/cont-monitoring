#!/usr/bin/env bash

# The idea behind continiouosly monitoring the jobs page is to run a tests every
# hour, that prints a bunch of output for a whole hour.
#
# Then, to simulate a user that follows the live log, we will open the same job
# in a local fireofx that follow the live log.
#
# The JobPage and Loghub have internal metrics that we can follow.

page_url="https://renderedtext.semaphoreci.com/jobs/$SEMAPHORE_JOB_UUID"

echo "Opening $page_url"

firefox -headless $page_url &

# Firefox is now opened, live log is continiously follower. Let's now generate
# logs until Semaphore Runner kills us.

while true; do
  echo -e "Random output with some colors \e[31mRED\e[0m \e[32mGREEN\e[0m"
  echo -e "newlines"
  echo -e "  indentations"
  echo -e "and some weird Japanese characters. ありがとうございます"

  echo -ne '#####                     (33%)\r'
  sleep 1
  echo -ne '#############             (66%)\r'
  sleep 1
  echo -ne '#######################   (100%)\r'
  echo -ne '\n'

  sleep 1
done
