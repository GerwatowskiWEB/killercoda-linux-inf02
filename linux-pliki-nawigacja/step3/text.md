## Zadanie

```bash
cd ~/laboratorium
cat notatka.txt
grep -n "INF.02" notatka.txt
head -n 1 notatka.txt
tail -n 1 notatka.txt
wc -l notatka.txt
```{{exec}}

`grep -n` podaje numer wiersza, `head` początek pliku, `tail` koniec, a `wc -l` liczbę wierszy. W `less` wychodzisz klawiszem `q`. W `nano` zapisujesz Ctrl+O, a wychodzisz Ctrl+X.

Zapisz **sam numer wiersza** z tekstem `INF.02` do pliku `~/laboratorium/numer.txt`.

<details><summary>Podpowiedź</summary>

`grep -n "INF.02" notatka.txt | cut -d: -f1 > numer.txt`
</details>
