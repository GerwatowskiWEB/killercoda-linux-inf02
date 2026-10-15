#!/bin/bash
systemctl is-active --quiet nginx || { echo "nginx nie działa"; exit 1; }
systemctl is-enabled --quiet nginx || { echo "nginx nie jest włączony przy starcie"; exit 1; }
exit 0
