# Netplan: praca na przykładowych plikach

Administrator rzadko pisze konfigurację od zera. Zwykle bierze **gotowy przykład** i dopasowuje go do swojej sieci. Pakiet `netplan.io` zawiera takie przykłady w katalogu `examples`.

W tym scenariuszu:
- odnajdziesz katalog z przykładami,
- skopiujesz plik `static.yaml` do `/etc/netplan/`,
- dopasujesz go do interfejsu wirtualnego i **usuniesz to, co mogłoby odciąć Cię od serwera**,
- zastosujesz go bezpiecznie.

**Ważne:** ćwiczysz tylko na interfejsie `dummy2`. Przykłady są pisane dla prawdziwej karty (`enp3s0`), więc nie wolno ich kopiować bez zmian.

Poczekaj, aż skończy się przygotowanie środowiska.
