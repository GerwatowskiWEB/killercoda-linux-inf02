## Rozbuduj konfigurację

Do pliku `/etc/netplan/60-lab.yaml` dodaj pod `dummy0`:

- drugi adres `10.10.10.1/24` (na liście `addresses`),
- trasę do sieci `172.16.0.0/16` przez bramę `192.168.50.1`,
- serwer DNS `1.1.1.1`.

Wzór (uzupełnij plik tak, żeby wyglądał jak poniżej):

```yaml
network:
  version: 2
  renderer: networkd
  dummy-devices:
    dummy0:
      addresses:
        - 192.168.50.10/24
        - 10.10.10.1/24
      routes:
        - to: 172.16.0.0/16
          via: 192.168.50.1
      nameservers:
        addresses: [1.1.1.1]
```

Zastosuj i sprawdź:

```bash
netplan generate
netplan apply
ip -br a
ip route
```{{exec}}

Brama `192.168.50.1` leży w tej samej podsieci co `dummy0`, więc trasa jest poprawna, choć takiego urządzenia fizycznie nie ma.

## Zadanie

`ip -br a` ma pokazywać oba adresy, a `ip route` trasę do `172.16.0.0/16`.
