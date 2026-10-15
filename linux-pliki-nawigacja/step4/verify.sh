#!/bin/bash
f="$HOME/laboratorium/dziennik.txt"
[ -f "$f" ] || { echo "Brak dziennik.txt"; exit 1; }
[ "$(sed -n 1p "$f")" = "Pierwszy wpis" ] && [ "$(sed -n 2p "$f")" = "Drugi wpis" ] && [ "$(wc -l < "$f")" -eq 2 ] || { echo "Plik ma zawierać dokładnie 2 wiersze: Pierwszy wpis, Drugi wpis"; exit 1; }
exit 0
