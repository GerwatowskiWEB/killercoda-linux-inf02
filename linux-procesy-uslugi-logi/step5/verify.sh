#!/bin/bash
[ ! -e /etc/nginx/conf.d/blad.conf ] || { echo "Błędny plik konfiguracji nadal istnieje"; exit 1; }
systemctl is-active --quiet nginx || { echo "nginx nadal nie działa"; exit 1; }
exit 0
