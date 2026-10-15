#!/usr/bin/env bash
set -euo pipefail
cd /root/inf11-pki
openssl verify -CAfile ca.crt server.crt | grep -q 'OK$'
openssl x509 -in server.crt -noout -ext subjectAltName | grep -q 'DNS:serwer.inf11.test'
openssl x509 -in server.crt -noout -issuer | grep -q 'MTI INF11 Lab CA'
openssl x509 -in server.crt -checkend 0 -noout >/dev/null
echo "OK: zadanie zaliczone."
