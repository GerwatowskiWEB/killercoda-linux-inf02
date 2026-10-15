#!/usr/bin/env bash
set -euo pipefail
grants=$(docker exec inf11-db mariadb -N -uroot -plabroot -e "SHOW GRANTS FOR 'audyt'@'%';")
grep -qi 'GRANT SELECT ON `inf11`.`zdarzenia`' <<< "$grants"
! grep -qiE 'GRANT (ALL PRIVILEGES|INSERT|UPDATE|DELETE)' <<< "$grants"
docker exec inf11-db mariadb -uaudyt -paudytlab -e 'SELECT COUNT(*) FROM inf11.zdarzenia;' >/dev/null 2>&1
echo "OK: zadanie zaliczone."
