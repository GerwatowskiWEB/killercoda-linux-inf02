#!/usr/bin/env bash
set -euo pipefail
ss -ltn | grep -q ':8080'
! ss -ltn | grep -q ':9090'
grep -qx '8080=otwarty' /root/inf11-porty.txt
grep -qx '9090=zamkniety' /root/inf11-porty.txt
echo "OK: zadanie zaliczone."
