#!/usr/bin/env bash
set -euo pipefail
cd /root/inf11-python
python3 analiza.py >/dev/null
[ -f podejrzane.txt ]
grep -qx '203.0.113.50' podejrzane.txt
! grep -qx '198.51.100.12' podejrzane.txt
[ "$(wc -l < podejrzane.txt)" -eq 1 ]
echo "OK: zadanie zaliczone."
