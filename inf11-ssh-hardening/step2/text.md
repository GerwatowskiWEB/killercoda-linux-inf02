# Krok 2. Zabezpiecz konfigurację

Zmień wyłącznie plik laboratoryjny tak, aby obowiązywały ustawienia:

- `PermitRootLogin no`
- `PasswordAuthentication no`
- `PubkeyAuthentication yes`
- `AllowUsers labssh`
- `Port 2222`, `ListenAddress 127.0.0.1`

Następnie uruchom kontrolę składni poleceniem `sshd -t -f ...`. **Nie restartuj systemowej usługi SSH.**
