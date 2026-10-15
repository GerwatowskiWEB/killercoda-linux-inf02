#!/bin/bash
echo "Przygotowuję środowisko (netplan)..."
while [ ! -f /tmp/finished ]; do sleep 1; done
echo "Gotowe. Możesz zaczynać."
