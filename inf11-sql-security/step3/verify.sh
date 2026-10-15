#!/usr/bin/env bash
set -euo pipefail
grep -qx 'update=odmowa' /root/inf11-sql-raport.txt
! docker exec inf11-db mariadb -uaudyt -paudytlab -e 'UPDATE inf11.zdarzenia SET typ=typ WHERE id=1;' >/dev/null 2>&1
echo "OK: zadanie zaliczone."
