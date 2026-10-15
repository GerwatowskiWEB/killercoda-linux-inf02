#!/bin/bash
ip -4 addr show dummy0 2>/dev/null | grep -q '192.168.50.10/24' || { echo "Brak adresu 192.168.50.10/24 na dummy0"; exit 1; }
ip -4 addr show dummy0 2>/dev/null | grep -q '10.10.10.1/24' || { echo "Brak adresu 10.10.10.1/24 na dummy0"; exit 1; }
ip route | grep -q '172.16.0.0/16 via 192.168.50.1' || { echo "Brak trasy 172.16.0.0/16 przez 192.168.50.1"; exit 1; }
grep -q '1.1.1.1' /etc/netplan/60-lab.yaml || { echo "Brak serwera DNS 1.1.1.1 w pliku"; exit 1; }
exit 0
