# Krok 1. Zidentyfikuj niedostępną usługę

Użytkownicy zgłaszają niedostępność strony WWW. Nie naprawiaj jeszcze problemu.

```bash
systemctl status nginx --no-pager || true
sudo nginx -t || true
sudo journalctl -u nginx -n 20 --no-pager
```{{exec}}

W `/root/inf11-incydent.txt` wpisz `usluga=nginx`.
