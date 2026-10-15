#!/bin/bash
[ -f /etc/netplan/60-lab.yaml ] || { echo "Brak pliku /etc/netplan/60-lab.yaml"; exit 1; }
ip -4 addr show dummy0 2>/dev/null | grep -q '192.168.50.10/24' || { echo "dummy0 nie ma adresu 192.168.50.10/24. Czy wykonałeś netplan apply?"; exit 1; }
exit 0
