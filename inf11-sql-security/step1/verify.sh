#!/usr/bin/env bash
set -euo pipefail
docker exec inf11-db mariadb -uroot -plabroot -e 'SELECT COUNT(*) FROM inf11.zdarzenia;' >/dev/null 2>&1
grep -qx 'baza=inf11' /root/inf11-sql-raport.txt
echo "OK: zadanie zaliczone."
