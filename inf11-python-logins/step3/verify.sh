#!/usr/bin/env bash
set -euo pipefail
python3 /root/inf11-python/analiza.py >/dev/null
python3 - <<'PYTEST'
import json
p='/root/inf11-python/raport.json'
d=json.load(open(p))
assert d['prog']==5 and d['okno_min']==15
assert d['podejrzane_ip']==['203.0.113.50']
PYTEST
echo "OK: zadanie zaliczone."
