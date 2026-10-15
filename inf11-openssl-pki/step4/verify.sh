#!/usr/bin/env bash
set -euo pipefail
cd /root/inf11-pki
[ -s server-copy.crt ]
cmp -s server.crt server-copy.crt
openssl verify -CAfile ca.crt server.crt >/dev/null
grep -qx 'lancuch=OK' weryfikacja.txt
grep -qx 'kopie=zgodne' weryfikacja.txt
echo "OK: zadanie zaliczone."
