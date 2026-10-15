#!/usr/bin/env bash
set -euo pipefail
cd /root/inf11-pki
[ "$(stat -c %a server.key)" = 600 ]
openssl req -in server.csr -noout -subject | grep -q serwer.inf11.test
openssl req -in server.csr -noout -verify >/dev/null 2>&1
openssl pkey -in server.key -noout >/dev/null
[ -f san.ext ]; grep -Eq '^subjectAltName[[:space:]]*=[[:space:]]*DNS:serwer\.inf11\.test' san.ext
echo "OK: zadanie zaliczone."
