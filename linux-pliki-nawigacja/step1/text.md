## Kim jestem i gdzie jestem

```bash
whoami
hostname
pwd
id
uname -a
```{{exec}}

Polecenie ma postać `program opcje argumenty`. W `ls -la /etc` programem jest `ls`, opcją `-la`, a argumentem `/etc`.

## Ścieżki

| Zapis | Znaczenie |
|---|---|
| `/` | katalog główny |
| `~` | katalog domowy |
| `.` / `..` | bieżący / nadrzędny |
| `/etc` | konfiguracja systemu |
| `/var/log` | dzienniki zdarzeń |

```bash
ls -lah
cd /etc
pwd
cd ..
cd ~
pwd
```{{exec}}

## Zadanie

Utwórz katalog `~/laboratorium/raporty` (jednym poleceniem, z katalogami nadrzędnymi) i wejdź do `~/laboratorium`.

<details><summary>Podpowiedź</summary>

`mkdir -p ~/laboratorium/raporty`, potem `cd ~/laboratorium`.
</details>
