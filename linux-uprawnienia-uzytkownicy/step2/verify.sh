#!/bin/bash
[ -x "$HOME/laboratorium/skrypt.sh" ] || { echo "skrypt.sh nie ma prawa wykonywania"; exit 1; }
"$HOME/laboratorium/skrypt.sh" | grep -q "Dzialam" || exit 1
exit 0
