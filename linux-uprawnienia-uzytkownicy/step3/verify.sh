#!/bin/bash
id praktykant >/dev/null 2>&1 || { echo "Brak użytkownika praktykant"; exit 1; }
exit 0
