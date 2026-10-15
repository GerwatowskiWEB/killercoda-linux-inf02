# Krok 4. Przetestuj połączenie lokalne

Uruchom dodatkową instancję:

```bash
sudo /usr/sbin/sshd -f /opt/inf11/ssh/sshd_config -E /opt/inf11/ssh/sshd.log
```{{exec}}

Następnie połącz się lokalnie jako `labssh`, używając utworzonego klucza i opcji `StrictHostKeyChecking=accept-new`. Zapisz `ssh=ok` do `/opt/inf11/ssh/wynik.txt`. Nie kopiuj prywatnego klucza poza laboratorium.
