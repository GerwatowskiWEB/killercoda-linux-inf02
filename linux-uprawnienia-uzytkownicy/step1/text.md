## Przygotowanie

```bash
mkdir -p ~/laboratorium && cd ~/laboratorium
touch tajne.txt publiczny.txt
ls -l
```{{exec}}

W zapisie `-rw-r--r--` pierwszy znak oznacza typ obiektu, a kolejne trzy zestawy to właściciel, grupa i pozostali.

## Zadanie

1. `tajne.txt`: właściciel czyta i zapisuje, nikt inny nic (`600`).
2. `publiczny.txt`: właściciel czyta i zapisuje, reszta tylko czyta (`644`).

Sprawdź efekt poleceniem `ls -l`.
