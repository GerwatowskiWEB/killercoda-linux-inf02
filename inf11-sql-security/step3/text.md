# Krok 3. Potwierdź blokadę modyfikacji danych

Spróbuj wykonać **nieszkodliwy test uprawnień**:

```bash
docker exec inf11-db mariadb -uaudyt -paudytlab -e "UPDATE inf11.zdarzenia SET typ=typ WHERE id=1;"
```{{exec}}

Powinieneś otrzymać odmowę dostępu. Wpisz do raportu `update=odmowa`. Nie zmieniaj ani nie usuwaj danych.
