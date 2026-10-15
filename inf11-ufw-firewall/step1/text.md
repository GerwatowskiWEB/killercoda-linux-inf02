# Krok 1. Sprawdź izolację i stan zapory

Środowisko UFW działa **w osobnym kontenerze** `inf11-fw` z oddzielną przestrzenią sieciową. Nie wywołuj `ufw enable` na hoście.

```bash
docker ps --filter name=inf11-fw
docker exec inf11-fw ufw status verbose
```{{exec}}

Zapisz `kontener=inf11-fw` w `/root/inf11-fw-audyt.txt`.
