#!/usr/bin/env bash
set -euo pipefail
ss -ltn | grep -Eq '127\.0\.0\.1:2222'
ssh -F /dev/null -o BatchMode=yes -o StrictHostKeyChecking=accept-new -o UserKnownHostsFile=/opt/inf11/ssh/known_hosts -o ConnectTimeout=4 -p 2222 -i /opt/inf11/ssh/client_ed25519 labssh@127.0.0.1 'id -un' | grep -qx labssh
grep -qx 'ssh=ok' /opt/inf11/ssh/wynik.txt
echo "OK: zadanie zaliczone."
