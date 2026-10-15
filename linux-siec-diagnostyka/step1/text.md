## Konfiguracja interfejsów

```bash
ip -br a
ip route
```{{exec}}

W `ip route` wiersz `default via ...` wskazuje bramę domyślną.

## Zadanie

Zapisz **sam adres bramy domyślnej** do `~/laboratorium/brama.txt`.

<details><summary>Podpowiedź</summary>

`mkdir -p ~/laboratorium` i `ip route | awk '/default/ {print $3}' > ~/laboratorium/brama.txt`
</details>
