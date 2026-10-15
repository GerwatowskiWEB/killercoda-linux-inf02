#!/bin/bash
[ -s "$HOME/laboratorium/nginx-log.txt" ] || { echo "Plik ~/laboratorium/nginx-log.txt jest pusty lub nie istnieje"; exit 1; }
exit 0
