#!/bin/bash
[ "$(stat -c %a "$HOME/laboratorium/tajne.txt" 2>/dev/null)" = "600" ] || { echo "tajne.txt powinien mieć prawa 600"; exit 1; }
[ "$(stat -c %a "$HOME/laboratorium/publiczny.txt" 2>/dev/null)" = "644" ] || { echo "publiczny.txt powinien mieć prawa 644"; exit 1; }
exit 0
