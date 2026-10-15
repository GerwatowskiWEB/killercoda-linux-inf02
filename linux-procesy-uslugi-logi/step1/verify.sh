#!/bin/bash
grep -q "Filesystem" "$HOME/laboratorium/dyski.txt" 2>/dev/null || { echo "Zapisz wynik df -h do ~/laboratorium/dyski.txt"; exit 1; }
exit 0
