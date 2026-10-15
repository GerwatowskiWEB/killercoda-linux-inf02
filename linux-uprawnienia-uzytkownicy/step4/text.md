## Zadanie

Zmień właściciela pliku `~/laboratorium/tajne.txt` na `praktykant` (`chown`). Potem sprawdź wynik:

```bash
ls -l ~/laboratorium/tajne.txt
```{{exec}}

Jesteś administratorem (root), więc plik nadal przeczytasz. Zwykły użytkownik, który nie jest właścicielem, już nie, bo prawa `600` dają dostęp tylko właścicielowi.

<details><summary>Podpowiedź</summary>

`chown praktykant ~/laboratorium/tajne.txt` (na koncie bez uprawnień roota: `sudo chown ...`)
</details>
