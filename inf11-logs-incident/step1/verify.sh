#!/usr/bin/env bash
set -euo pipefail
grep -qx 'usluga=nginx' /root/inf11-incydent.txt
echo "OK: zadanie zaliczone."
