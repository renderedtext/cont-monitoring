# Continuous Monitoring for Semaphore2

[![Build
Status](https://semaphoreci.com/api/v1/renderedtext/cont-monitoring/branches/master/badge.svg)](https://semaphoreci.com/renderedtext/cont-monitoring)

The idea is to run a job every hour that simulates visits all vital pages on
Semaphore2. This is managed by Semaphore 1 Build Scheduler.

The project whose pages are visited is the
[project_page](https://semaphore.semaphoreci.com/projects/project_page).

Every visit to a page generates metrics in the backend. Based on this metrics we
can observe the health of the system, and trigger alerts in case of issues.
