#!/usr/bin/env bash
set -euo pipefail
f=/root/inf11-siec-audyt.txt
[ -s "$f" ];grep -qx 'INTERFEJSY:' "$f";grep -qx 'TRASY:' "$f"
grep -q '127.0.0.1' "$f"
echo "OK: zadanie zaliczone."
