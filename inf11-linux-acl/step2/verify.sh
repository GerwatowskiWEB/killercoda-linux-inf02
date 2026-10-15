#!/usr/bin/env bash
set -euo pipefail
p=/srv/inf11/dokumenty/raport.txt
[ -f "$p" ]; grep -qx 'AUDYT INF11' "$p"
[ "$(stat -c %U:%G "$p")" = 'anna:inf11analiza' ]
[ "$(stat -c %a "$p")" = 640 ]
echo "OK: zadanie zaliczone."
