#!/usr/bin/env bash

echo "---------------------------------"
echo "Firefox Cookie setup"
echo "---------------------------------"

echo "Initializing Firefox cookie DB"
timeout 5 firefox https://google.com || true

echo "Inject session cookie into Firefox cookie DB"
sqlite3 ~/.mozilla/firefox/*.default/cookies.sqlite 'insert into moz_cookies (expiry, baseDomain, host, name, value) values (1517871990791021, "semaphoreci.com", "id.semaphoreci.com", "_semaphoreci_2_0_prod_session", "'$SESSION_COOKIE'")'
