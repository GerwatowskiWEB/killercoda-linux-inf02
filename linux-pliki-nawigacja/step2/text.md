## Zadanie

W katalogu `~/laboratorium`:

1. utwórz plik `notatka.txt` z dwoma wierszami: `Ubuntu Server` oraz `Sieci INF.02`,
2. skopiuj go do `raporty/kopia.txt`,
3. zmień nazwę kopii na `raport.txt` (`mv`).

```bash
cd ~/laboratorium
touch notatka.txt
printf "Ubuntu Server\nSieci INF.02\n" > notatka.txt
cat notatka.txt
cp notatka.txt raporty/kopia.txt
ls -l raporty
mv raporty/kopia.txt raporty/raport.txt
find . -maxdepth 2 -type f
```{{exec}}

Oczekujesz dwóch plików: `./notatka.txt` i `./raporty/raport.txt`.

`mkdir -p` tworzy brakujące katalogi nadrzędne, `touch` tworzy pusty plik, `cp` kopiuje, a `mv` przenosi lub zmienia nazwę.
