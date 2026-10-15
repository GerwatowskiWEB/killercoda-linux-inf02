#!/bin/bash
d="$HOME/laboratorium/egzamin"
[ -f "$d/wynik.txt" ] || { echo "Brak egzamin/wynik.txt"; exit 1; }
[ "$(wc -l < "$d/wynik.txt")" -eq 3 ] || { echo "wynik.txt ma mieć dokładnie 3 wiersze"; exit 1; }
[ "$(sed -n 2p "$d/wynik.txt")" = "$(hostname)" ] || { echo "Wiersz 2 ma zawierać nazwę hosta"; exit 1; }
[ -n "$(sed -n 3p "$d/wynik.txt")" ] || { echo "Wiersz 3 (data) jest pusty"; exit 1; }
k="$HOME/laboratorium/raporty/wynik.txt"
[ -f "$k" ] || { echo "Brak kopii raporty/wynik.txt"; exit 1; }
cmp -s "$d/wynik.txt" "$k" || { echo "Kopia różni się od oryginału"; exit 1; }
[ "$(stat -c %a "$k")" = "600" ] || { echo "Kopia ma mieć prawa 600"; exit 1; }
grep -q "Filesystem" "$d/df.txt" 2>/dev/null || { echo "Brak egzamin/df.txt z wynikiem df -h"; exit 1; }
exit 0
