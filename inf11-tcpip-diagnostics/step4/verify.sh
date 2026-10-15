#!/usr/bin/env bash
set -euo pipefail
f=/root/inf11-diagnoza.txt
[ -f "$f" ];grep -qx 'adres=127.0.0.1' "$f";grep -qx 'port=8080' "$f";grep -qx 'http=200' "$f"
[ "$(curl -s --max-time 4 -o /dev/null -w '%{http_code}' http://serwis.inf11.test:8080/)" = 200 ]
echo "OK: zadanie zaliczone."
