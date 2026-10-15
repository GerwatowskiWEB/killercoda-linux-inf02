# Krok 4. Przygotuj diagnozę warstwową

W pliku `/root/inf11-diagnoza.txt` zapisz:

```text
adres=127.0.0.1
port=8080
http=200
```

Potwierdź kod statusu `curl -s -o /dev/null -w '%{http_code}' http://serwis.inf11.test:8080/`. Wyjaśnij różnicę między awarią DNS, zamkniętym portem i błędem HTTP.
