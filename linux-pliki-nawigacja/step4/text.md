## Różnica między `>`, `>>` i `|`

```bash
cd ~/laboratorium
echo "Pierwszy wpis" > dziennik.txt
echo "Drugi wpis" >> dziennik.txt
cat dziennik.txt
ls -l /etc | head -n 5
grep -n "Drugi" dziennik.txt
```{{exec}}

- `>` zastępuje zawartość pliku,
- `>>` dopisuje na końcu,
- `|` przekazuje wynik jednego polecenia do następnego.

## Zadanie

Sprawdź, co się stanie, gdy ponownie użyjesz `>`:

```bash
echo "Nadpisanie" > dziennik.txt
cat dziennik.txt
```{{exec}}

Następnie przywróć plik tak, aby miał **dokładnie dwa wiersze**: `Pierwszy wpis` oraz `Drugi wpis`.
