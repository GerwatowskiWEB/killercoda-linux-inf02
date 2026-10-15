# Krok 1. Zbadaj dane wejściowe

Otwórz `/root/inf11-python/logowania.csv`. Kolumny: `czas`, `adres_ip`, `uzytkownik`, `wynik`. Wynik `BLAD` oznacza nieudane logowanie.

```bash
head /root/inf11-python/logowania.csv
python3 --version
```{{exec}}

Napisz `/root/inf11-python/analiza.py`, który parsuje CSV przy użyciu standardowych modułów `csv`, `datetime`, `collections`, `json`. Rozpocznij od wczytania danych.
