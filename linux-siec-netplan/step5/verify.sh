#!/bin/bash
ip -4 addr show dummy0 2>/dev/null | grep -q '192.168.50.20/24' || { echo "dummy0 nie ma adresu 192.168.50.20/24"; exit 1; }
ip -4 addr show dummy0 2>/dev/null | grep -q '192.168.50.10/24' && { echo "Stary adres 192.168.50.10/24 nadal jest na dummy0"; exit 1; }
exit 0
