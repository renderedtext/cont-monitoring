# Continuous Monitoring for Semaphore

The idea is to run a job every hour that simulates visits to every page on
Semaphore.

Every visit to a page generates metrics in the backend. Based on this metrics we
can observe the health of the system, and trigger alerts in case of issues.
