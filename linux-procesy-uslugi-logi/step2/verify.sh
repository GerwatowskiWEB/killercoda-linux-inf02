#!/bin/bash
dpkg -s nginx >/dev/null 2>&1 || { echo "nginx nie jest zainstalowany"; exit 1; }
exit 0
