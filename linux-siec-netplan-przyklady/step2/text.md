## Praca na kopii

Skopiuj przykład do katalogu konfiguracji. Nigdy nie edytuj oryginału w `/usr/share/doc`:

```bash
cp /usr/share/doc/netplan/examples/static.yaml /etc/netplan/61-przyklad.yaml
chmod 600 /etc/netplan/61-przyklad.yaml
cat /etc/netplan/61-przyklad.yaml
```{{exec}}

(Jeśli Twój katalog z przykładami jest inny, podstaw ścieżkę z poprzedniego kroku.)

## Zadanie: dopasuj plik `/etc/netplan/61-przyklad.yaml` (`nano`)

1. Zamiast `ethernets:` i `enp3s0:` użyj **`dummy-devices:`** i **`dummy2:`**.
2. Zmień adres na `192.168.70.2/24`.
3. **Usuń całą sekcję `routes:`** z trasą domyślną. Trasa domyślna przez interfejs wirtualny przejęłaby ruch z Twojej sesji i mogłaby ją zerwać.
4. Resztę (np. `nameservers`) możesz zostawić.

Docelowo plik wygląda mniej więcej tak:

```yaml
network:
  version: 2
  renderer: networkd
  dummy-devices:
    dummy2:
      addresses:
        - 192.168.70.2/24
      nameservers:
          search: [mydomain, otherdomain]
          addresses: [10.10.10.1, 1.1.1.1]
```

Sprawdź składnię (jeszcze nie stosuj):

```bash
netplan generate
```{{exec}}
