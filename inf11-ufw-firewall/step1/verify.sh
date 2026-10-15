#!/usr/bin/env bash
set -euo pipefail
docker inspect -f '{{.State.Running}}' inf11-fw | grep -qx true
grep -qx 'kontener=inf11-fw' /root/inf11-fw-audyt.txt
echo "OK: zadanie zaliczone."
