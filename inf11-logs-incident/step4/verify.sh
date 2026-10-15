#!/usr/bin/env bash
set -euo pipefail
grep -qx 'naprawa=konfiguracja' /root/inf11-incydent.txt
grep -qx 'test=http_200' /root/inf11-incydent.txt
[ "$(curl -s -o /dev/null -w '%{http_code}' http://127.0.0.1:8080/)" = 200 ]
echo "OK: zadanie zaliczone."
