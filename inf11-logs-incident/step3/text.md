# Krok 3. Napraw i uruchom usługę

Usuń błędną dyrektywę, zachowaj `listen 8080` i `root /var/www/inf11`. Przetestuj składnię przed uruchomieniem usługi. Potem uruchom `sudo systemctl restart nginx`.

Sprawdź:

```bash
curl -fsS http://127.0.0.1:8080/
```{{exec}}
