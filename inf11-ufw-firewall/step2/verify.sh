#!/usr/bin/env bash
set -euo pipefail
docker exec inf11-fw ufw show added | grep -Eq 'allow 8080/tcp|allow 8080'
docker exec inf11-fw ufw show added | grep -Eq 'deny 9090/tcp|deny 9090'
docker exec inf11-fw grep -Eq '^DEFAULT_INPUT_POLICY="DROP"' /etc/default/ufw
docker exec inf11-fw grep -Eq '^DEFAULT_OUTPUT_POLICY="ACCEPT"' /etc/default/ufw
echo "OK: zadanie zaliczone."
