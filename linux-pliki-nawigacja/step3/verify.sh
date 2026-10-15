#!/bin/bash
[ -f "$HOME/laboratorium/numer.txt" ] || { echo "Brak pliku numer.txt"; exit 1; }
[ "$(tr -d '[:space:]' < "$HOME/laboratorium/numer.txt")" = "2" ] || { echo "W numer.txt powinna być tylko liczba 2"; exit 1; }
exit 0
