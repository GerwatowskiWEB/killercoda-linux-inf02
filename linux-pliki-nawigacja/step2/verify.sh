#!/bin/bash
[ -f "$HOME/laboratorium/notatka.txt" ] || { echo "Brak pliku notatka.txt"; exit 1; }
[ "$(wc -l < "$HOME/laboratorium/notatka.txt")" -eq 2 ] || { echo "notatka.txt powinna mieć 2 wiersze"; exit 1; }
grep -q "INF.02" "$HOME/laboratorium/notatka.txt" || { echo "Brak tekstu INF.02"; exit 1; }
[ -f "$HOME/laboratorium/raporty/raport.txt" ] || { echo "Brak raporty/raport.txt"; exit 1; }
[ ! -e "$HOME/laboratorium/raporty/kopia.txt" ] || { echo "kopia.txt powinna zostać przeniesiona"; exit 1; }
exit 0
