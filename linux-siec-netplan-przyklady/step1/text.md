## Przykładowe pliki netplan

Nie zawsze wiadomo, gdzie dokładnie leży dokumentacja pakietu. Znajdź przykłady poleceniem:

```bash
find / -name static.yaml -path '*netplan*' 2>/dev/null
```{{exec}}

Wypisz zawartość katalogu i obejrzyj plik `static.yaml` (podstaw znalezioną ścieżkę):

```bash
ls /usr/share/doc/netplan/examples/
cat /usr/share/doc/netplan/examples/static.yaml
```{{exec}}

Zwróć uwagę, że przykład dotyczy interfejsu `enp3s0` i zawiera m.in. adres, DNS oraz **trasę domyślną** (`to: default`).

## Zadanie

Zapisz do pliku `~/laboratorium/przyklady.txt` **ścieżkę katalogu** z przykładami (bez nazwy pliku).

<details><summary>Podpowiedź</summary>

`find / -name static.yaml -path '*netplan*' 2>/dev/null | xargs dirname > ~/laboratorium/przyklady.txt`
</details>
