#!/usr/bin/env bash

echo "---------------------------------"
echo "Live Log Follower"
echo "---------------------------------"

# The idea behind continiouosly monitoring the jobs page is to run a tests every
# hour, that prints a bunch of output for a whole hour.
#
# Then, to simulate a user that follows the live log, we will open the same job
# in a local fireofx that follow the live log.
#
# The JobPage and Loghub have internal metrics that we can follow.

page_url="https://semaphore.semaphoreci.com/jobs/9c7ade07-a287-4e53-9811-b7cc9a3ffc84"

echo "Opening $page_url"

firefox -headless $page_url &
