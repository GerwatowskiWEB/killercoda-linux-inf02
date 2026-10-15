# Krok 1. Przygotuj katalog projektu

Katalog ma być dostępny tylko dla jego właściciela i grupy `inf11analiza`. Sprawdź `id`, `ls -ld`, `getent group`.

**Zadanie:** utwórz katalog `/srv/inf11/dokumenty` o właścicielu `root`, grupie `inf11analiza` i trybie `770`. Przygotowane konta to `anna` i `bartek`.

```bash
getent group inf11analiza
ls -ld /srv/inf11
```{{exec}}

<details><summary>Podpowiedź</summary>`chown root:inf11analiza`, `chmod 770`.</details>
