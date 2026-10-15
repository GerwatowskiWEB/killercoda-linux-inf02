# Krok 1. Przeprowadź audyt konfiguracji

Środowisko ma **oddzielną** konfigurację `/opt/inf11/ssh/sshd_config` — nie zmieniaj `/etc/ssh/sshd_config`.

```bash
/usr/sbin/sshd -T -f /opt/inf11/ssh/sshd_config | grep -E '^(port|permitrootlogin|passwordauthentication|pubkeyauthentication)'
```{{exec}}

Wykryj niebezpieczne ustawienia, a w pliku `/opt/inf11/ssh/audyt.txt` zapisz `root=yes` i `hasla=yes` w osobnych wierszach.
