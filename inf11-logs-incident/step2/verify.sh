#!/usr/bin/env bash
set -euo pipefail
grep -qx 'przyczyna=nieznana_dyrektywa' /root/inf11-incydent.txt
nginx -t >/dev/null 2>&1 
echo "OK: zadanie zaliczone."
