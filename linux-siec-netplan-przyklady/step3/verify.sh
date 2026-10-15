#!/bin/bash
ip -4 addr show dummy2 2>/dev/null | grep -q '192.168.70.2/24' || { echo "dummy2 nie ma adresu 192.168.70.2/24. Czy zastosowałeś konfigurację?"; exit 1; }
ip route show default | grep -q 'dev dummy2' && { echo "Jest trasa domyślna przez dummy2. Usuń routes z pliku i zastosuj ponownie."; exit 1; }
exit 0
