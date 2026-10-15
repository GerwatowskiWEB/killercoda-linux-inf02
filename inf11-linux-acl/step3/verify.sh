#!/usr/bin/env bash
set -euo pipefail
p=/srv/inf11/dokumenty/raport.txt
getfacl -cp "$p" | grep -Eq '^user:bartek:r--$'
getfacl -cp "$p" | grep -Eq '^mask::r--$|^mask::rw-$|^mask::rwx$'
runuser -u bartek -- test -r "$p"
! runuser -u bartek -- test -w "$p"
echo "OK: zadanie zaliczone."
