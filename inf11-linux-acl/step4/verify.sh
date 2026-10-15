#!/usr/bin/env bash
set -euo pipefail
p=/srv/inf11/dokumenty/raport.txt
runuser -u anna -- test -r "$p"
runuser -u anna -- test -w "$p"
runuser -u bartek -- test -r "$p"
! runuser -u gosc -- test -r "$p"
f=/root/inf11-acl-wnioski.txt
[ -f "$f" ] || f="$HOME/inf11-acl-wnioski.txt"
[ -f "$f" ]; grep -qx 'anna=rw' "$f";grep -qx 'bartek=r' "$f";grep -qx 'gosc=brak' "$f"
echo "OK: zadanie zaliczone."
