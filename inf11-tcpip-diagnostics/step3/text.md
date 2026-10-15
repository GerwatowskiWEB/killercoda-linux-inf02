# Krok 3. Sprawdź porty

Lokalna usługa nasłuchuje na porcie `8080`; na `9090` nic nie nasłuchuje. Użyj `ss -ltn`, `curl -I` i (opcjonalnie) `nc -zv`. Zapisz dwie linie do `/root/inf11-porty.txt`: `8080=otwarty` i `9090=zamkniety`.
