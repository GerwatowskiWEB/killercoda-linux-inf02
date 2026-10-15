#!/bin/bash
ss -tln | grep -q ':8080' || { echo "Nic nie nasłuchuje na porcie 8080"; exit 1; }
exit 0
