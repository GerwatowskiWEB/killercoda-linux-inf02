#!/usr/bin/env bash
set -euo pipefail
f=/opt/inf11/ssh/audyt.txt
[ -f "$f" ];grep -qx 'root=yes' "$f";grep -qx 'hasla=yes' "$f"
echo "OK: zadanie zaliczone."
