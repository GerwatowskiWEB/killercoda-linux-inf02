#!/usr/bin/env bash
echo "Przygotowuję środowisko laboratoryjne (pakiety, kontenery). Poczekaj na komunikat o gotowości..."
while [ ! -f /tmp/finished ]; do sleep 1; done
if [ -f /tmp/setup-failed ]; then
  echo "UWAGA: przygotowanie środowiska nie powiodło się. Zgłoś to nauczycielowi."
else
  echo "Gotowe. Możesz zaczynać."
fi
