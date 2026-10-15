## Gdzie leży konfiguracja

```bash
netplan --version
ls -l /etc/netplan/
cat /etc/netplan/*.yaml
ip -br a
```{{exec}}

Pliki `*.yaml` w `/etc/netplan/` są czytane w **kolejności alfabetycznej**, a późniejsze nadpisują wcześniejsze. Dlatego nazwy zaczynają się od numerów (np. `50-cloud-init.yaml`, `60-lab.yaml`).

Zasady składni YAML:
- wcięcia robisz **spacjami** (nie tabulatorami), zwykle po 2,
- `klucz: wartość` to pole, a `- element` to element listy,
- błąd we wcięciu zmienia znaczenie pliku lub go psuje.

## Zadanie

Sprawdź, czy interfejsu `dummy0` jeszcze nie ma w `ip -br a`, i zapisz do pliku `~/laboratorium/netplan-wersja.txt` wynik `netplan --version`.
