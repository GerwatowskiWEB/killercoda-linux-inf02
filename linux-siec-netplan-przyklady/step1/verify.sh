#!/bin/bash
f="$HOME/laboratorium/przyklady.txt"
[ -s "$f" ] || { echo "Zapisz ścieżkę katalogu z przykładami do ~/laboratorium/przyklady.txt"; exit 1; }
d=$(head -n1 "$f" | tr -d '[:space:]')
[ -f "$d/static.yaml" ] || { echo "W katalogu $d nie ma static.yaml. Zapisz sam katalog, bez nazwy pliku."; exit 1; }
exit 0
