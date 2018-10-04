# Continuous Monitoring for Semaphore2

[![Build
Status](https://semaphoreci.com/api/v1/renderedtext/cont-monitoring/branches/master/badge.svg)](https://semaphoreci.com/renderedtext/cont-monitoring)

The idea is to run a job every hour that simulates visits to every page on
Semaphore. This is managed by Semaphore 1 Build Scheduler.

Every visit to a page generates metrics in the backend. Based on this metrics we
can observe the health of the system, and trigger alerts in case of issues.
