#!/bin/bash
gw=$(ip route | awk '/default/ {print $3; exit}')
[ -n "$gw" ] || { echo "Brak bramy domyślnej w systemie"; exit 1; }
[ "$(tr -d '[:space:]' < "$HOME/laboratorium/brama.txt" 2>/dev/null)" = "$gw" ] || { echo "W brama.txt ma być adres $gw"; exit 1; }
exit 0
