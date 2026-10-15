#!/usr/bin/env bash
set -euo pipefail
cd /root/inf11-pki
[ "$(stat -c %a ca.key)" = 600 ]
[ "$(openssl pkey -in ca.key -text -noout | sed -n '1p' | grep -o '3072' | head -1)" = 3072 ]
openssl verify -CAfile ca.crt ca.crt >/dev/null
openssl x509 -in ca.crt -noout -subject | grep -q 'MTI INF11 Lab CA' 
echo "OK: zadanie zaliczone."
