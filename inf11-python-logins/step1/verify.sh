#!/usr/bin/env bash
set -euo pipefail
f=/root/inf11-python/analiza.py
[ -s "$f" ];python3 -m py_compile "$f"
python3 - <<'PYTEST'
import csv
with open('/root/inf11-python/logowania.csv',newline='') as f:
 rows=list(csv.DictReader(f))
assert len(rows)>=20
PYTEST
echo "OK: zadanie zaliczone."
