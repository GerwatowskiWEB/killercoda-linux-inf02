#!/usr/bin/env bash
set -euo pipefail
c=/opt/inf11/ssh/sshd_config
/usr/sbin/sshd -t -f "$c"
o=$(/usr/sbin/sshd -T -f "$c")
grep -qx 'permitrootlogin no' <<< "$o"
grep -qx 'passwordauthentication no' <<< "$o"
grep -qx 'pubkeyauthentication yes' <<< "$o"
grep -qx 'allowusers labssh' <<< "$o"
grep -Eq '^listenaddress 127\.0\.0\.1(:2222)?$' <<< "$o"
echo "OK: zadanie zaliczone."
