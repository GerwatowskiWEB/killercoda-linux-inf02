#!/usr/bin/env bash
set -euo pipefail
[ -s /root/inf11-backup.sql ]
grep -q 'CREATE TABLE' /root/inf11-backup.sql
grep -q 'INSERT INTO' /root/inf11-backup.sql
grep -qx 'backup=ok' /root/inf11-sql-raport.txt
echo "OK: zadanie zaliczone."
