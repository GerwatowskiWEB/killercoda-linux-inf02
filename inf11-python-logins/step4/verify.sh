#!/usr/bin/env bash
set -euo pipefail
python3 - <<'PYTEST'
import json
p='/root/inf11-python/wynik-test.json'
d=json.load(open(p))
assert sorted(d['podejrzane_ip'])==['192.0.2.77','203.0.113.50']
PYTEST
python3 - <<'PYTEST'
import csv
p='/root/inf11-python/logowania-test.csv'
r=list(csv.DictReader(open(p)))
assert sum(x['adres_ip']=='192.0.2.77' and x['wynik']=='BLAD' for x in r)>=5
PYTEST
echo "OK: zadanie zaliczone."
