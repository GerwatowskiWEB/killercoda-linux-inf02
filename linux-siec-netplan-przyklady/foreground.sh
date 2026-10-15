#!/bin/bash
echo "Przygotowuję środowisko (netplan i przykłady)..."
while [ ! -f /tmp/finished ]; do sleep 1; done
echo "Gotowe. Możesz zaczynać."
