#!/usr/bin/env bash
set -euo pipefail
docker exec inf11-fw ufw status | grep -q 'Status: active'
docker exec inf11-fw ufw status | grep -q '8080/tcp'
docker exec inf11-fw ufw status | grep -q '9090/tcp'
grep -q 'Status: active' /root/inf11-fw-status.txt
echo "OK: zadanie zaliczone."
