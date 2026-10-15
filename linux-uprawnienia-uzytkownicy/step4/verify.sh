#!/bin/bash
[ "$(stat -c %U "$HOME/laboratorium/tajne.txt" 2>/dev/null)" = "praktykant" ] || { echo "Właścicielem tajne.txt ma być praktykant"; exit 1; }
exit 0
