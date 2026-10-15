## Cudza konfiguracja

Kolega przygotował plik dla drugiego interfejsu. Wczytaj go:

```bash
cat > /etc/netplan/70-blad.yaml <<'EOF'
network:
  version: 2
  renderer: networkd
  dummy-devices:
    dummy1:
    addresses:
      - 192.168.60.10/24
EOF
chmod 600 /etc/netplan/70-blad.yaml
netplan generate
```{{exec}}

Netplan zgłosi błąd. Jeden błędny plik blokuje `netplan apply` dla całej konfiguracji.

## Zadanie

1. Przeczytaj komunikat: wskazuje plik, wiersz i kolumnę.
2. Popraw plik `/etc/netplan/70-blad.yaml` (`nano`), tak aby `dummy1` dostał adres `192.168.60.10/24`.
3. Uruchom `netplan generate`, a potem `netplan apply`.

<details><summary>Podpowiedź</summary>

Klucz `addresses` musi być **zagnieżdżony pod `dummy1`**, czyli wcięty o dwie spacje głębiej.
</details>
