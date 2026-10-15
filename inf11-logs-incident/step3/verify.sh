#!/usr/bin/env bash
set -euo pipefail
nginx -t >/dev/null 2>&1
systemctl is-active --quiet nginx
curl -fsS --max-time 4 http://127.0.0.1:8080/ | grep -q 'INF11 OK'
ss -ltn | grep -q ':8080' 
echo "OK: zadanie zaliczone."
