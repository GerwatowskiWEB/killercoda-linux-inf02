#!/bin/bash
[ -s "$HOME/laboratorium/netplan-wersja.txt" ] || { echo "Zapisz wynik netplan --version do ~/laboratorium/netplan-wersja.txt"; exit 1; }
exit 0
