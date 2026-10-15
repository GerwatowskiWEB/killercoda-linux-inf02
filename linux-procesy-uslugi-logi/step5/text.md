## Symulacja błędu

Wprowadź błąd do konfiguracji:

```bash
echo "to_nie_jest_dyrektywa;" > /etc/nginx/conf.d/blad.conf
systemctl restart nginx
```{{exec}}

Restart się nie powiódł.

## Zadanie

1. Sprawdź `systemctl status nginx --no-pager`.
2. Przeczytaj log: `journalctl -u nginx -n 20 --no-pager`.
3. Przetestuj konfigurację: `nginx -t`. Wskaże plik i wiersz z błędem.
4. Napraw problem i uruchom usługę ponownie.

Nie zgaduj. Najpierw przeczytaj, co mówi system.
