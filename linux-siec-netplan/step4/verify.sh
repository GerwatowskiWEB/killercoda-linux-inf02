#!/bin/bash
netplan generate >/dev/null 2>&1 || { echo "netplan generate nadal zgłasza błąd"; exit 1; }
ip -4 addr show dummy1 2>/dev/null | grep -q '192.168.60.10/24' || { echo "dummy1 nie ma adresu 192.168.60.10/24. Czy wykonałeś netplan apply?"; exit 1; }
exit 0
