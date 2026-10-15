# Krok 2. Skonfiguruj bezpieczne reguły

W kontenerze ustaw polityki: domyślnie `deny incoming`, `allow outgoing`. Dodaj `allow 8080/tcp` oraz `deny 9090/tcp`.

```bash
docker exec inf11-fw ufw default deny incoming
docker exec inf11-fw ufw default allow outgoing
```{{exec}}

Nie musisz włączać UFW na hoście.
