#!/usr/bin/env bash
set -euo pipefail
grep -qx '8080=allow' /root/inf11-fw-audyt.txt
grep -qx '9090=deny' /root/inf11-fw-audyt.txt
docker exec inf11-fw ufw status | grep -E '8080/tcp .*ALLOW' >/dev/null
docker exec inf11-fw ufw status | grep -E '9090/tcp .*DENY' >/dev/null
echo "OK: zadanie zaliczone."
