## netplan try

Gdy zmieniasz konfigurację zdalnie, błąd może Cię odciąć od serwera. `netplan try` stosuje zmianę na próbę i **sam ją cofa**, jeśli nie potwierdzisz jej w ciągu zadanego czasu.

## Zadanie

Zmień adres `dummy0` z `192.168.50.10/24` na `192.168.50.20/24` w pliku `/etc/netplan/60-lab.yaml`. Możesz użyć:

```bash
sed -i 's#192.168.50.10/24#192.168.50.20/24#' /etc/netplan/60-lab.yaml
grep 192.168.50 /etc/netplan/60-lab.yaml
```{{exec}}

Zastosuj z potwierdzeniem:

```bash
netplan try --timeout 30
```{{exec}}

Gdy zobaczysz pytanie o potwierdzenie, naciśnij **Enter**. (Gdybyś nic nie zrobił, zmiana wróciłaby do poprzedniego stanu po 30 sekundach.)

Sprawdź wynik:

```bash
ip -br a
```{{exec}}
