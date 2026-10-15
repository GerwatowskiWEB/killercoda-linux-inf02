## systemctl

```bash
systemctl status nginx --no-pager
systemctl enable --now nginx
systemctl is-enabled nginx
systemctl is-active nginx
curl -I http://127.0.0.1
```{{exec}}

`enable` włącza start przy uruchomieniu systemu, a `--now` uruchamia też usługę od razu. Odpowiedź `HTTP/1.1 200 OK` potwierdza działanie.

## Zadanie

Upewnij się, że usługa jest **uruchomiona** i **włączona** przy starcie.
