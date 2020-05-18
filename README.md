# Continuous Monitoring for Semaphore2

[![Build Status](https://semaphore.semaphoreci.com/badges/cont-monitoring-eins/branches/set-up-semaphore.svg?style=shields)](https://semaphore.semaphoreci.com/projects/cont-monitoring-eins)

The idea is to run a job every hour that simulates visits all vital pages on
Semaphore2. This is managed by Semaphore 1 Build Scheduler.

The project whose pages are visited is the
[cont-monitoring](https://semaphore.semaphoreci.com/projects/cont-monitoring).

Every visit to a page generates metrics in the backend. Based on this metrics we
can observe the health of the system, and trigger alerts in case of issues.


