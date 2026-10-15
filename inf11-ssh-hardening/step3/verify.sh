#!/usr/bin/env bash
set -euo pipefail
d=/opt/inf11/ssh
[ -s "$d/client_ed25519" ] && [ -s "$d/client_ed25519.pub" ]
ssh-keygen -y -f "$d/client_ed25519" >/dev/null
[ "$(stat -c %a /home/labssh/.ssh)" = 700 ]
[ "$(stat -c %a /home/labssh/.ssh/authorized_keys)" = 600 ]
[ "$(stat -c %U /home/labssh/.ssh/authorized_keys)" = labssh ]
grep -qF "$(cat "$d/client_ed25519.pub")" /home/labssh/.ssh/authorized_keys
echo "OK: zadanie zaliczone."
