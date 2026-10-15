#!/usr/bin/env bash
set -euo pipefail
[ "$(cat /root/inf11-dns.txt 2>/dev/null)" = 127.0.0.1 ]
getent ahostsv4 serwis.inf11.test | grep -q '^127.0.0.1' 
echo "OK: zadanie zaliczone."
