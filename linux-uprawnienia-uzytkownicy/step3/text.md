## Odczyt (bez zmian w systemie)

```bash
whoami
id
getent passwd "$USER"
groups
getent group sudo
```{{exec}}

`/etc/passwd` zawiera dane kont (bez haseł), a `/etc/shadow`, czytelny tylko dla uprawnionych, zawiera hasze haseł.

## Zadanie

Utwórz konto `praktykant`:

```bash
adduser --disabled-password --gecos "" praktykant
id praktykant
```{{exec}}

> Na maszynie z hasłem użyłbyś `sudo adduser praktykant` i `sudo passwd praktykant`. Tutaj pomijamy hasło, żeby ćwiczenie było szybkie. Nigdy nie twórz kont ćwiczebnych na serwerze produkcyjnym.
