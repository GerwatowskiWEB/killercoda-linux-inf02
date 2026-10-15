#!/usr/bin/env bash
set -euo pipefail
p=/srv/inf11/dokumenty
[ -d "$p" ]
[ "$(stat -c %U:%G "$p")" = 'root:inf11analiza' ]
[ "$(stat -c %a "$p")" = 770 ]
echo "OK: zadanie zaliczone."
