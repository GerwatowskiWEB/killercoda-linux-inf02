#!/bin/bash
[ -s "$HOME/laboratorium/dns.txt" ] || { echo "Plik dns.txt jest pusty lub nie istnieje"; exit 1; }
grep -q "example.com" "$HOME/laboratorium/dns.txt" || { echo "Wynik powinien zawierać example.com"; exit 1; }
exit 0
