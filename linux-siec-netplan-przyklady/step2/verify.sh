#!/bin/bash
f=/etc/netplan/61-przyklad.yaml
[ -f "$f" ] || { echo "Brak pliku $f"; exit 1; }
grep -q 'enp3s0' "$f" && { echo "W pliku nadal jest interfejs enp3s0. Zamień go na dummy2 w sekcji dummy-devices."; exit 1; }
grep -q 'dummy-devices' "$f" && grep -q 'dummy2' "$f" || { echo "Użyj sekcji dummy-devices z interfejsem dummy2"; exit 1; }
grep -q '192.168.70.2/24' "$f" || { echo "Ustaw adres 192.168.70.2/24"; exit 1; }
grep -Eq 'to:[[:space:]]*(default|0\.0\.0\.0/0)' "$f" && { echo "Usuń trasę domyślną (routes) z pliku. Mogłaby zerwać Twoją sesję!"; exit 1; }
netplan generate >/dev/null 2>&1 || { echo "netplan generate zgłasza błąd składni"; exit 1; }
exit 0
