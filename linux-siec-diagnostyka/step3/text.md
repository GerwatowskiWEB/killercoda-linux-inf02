## ss

```bash
ss -tuln
```{{exec}}

## Zadanie

Uruchom prosty serwer WWW na porcie **8080** i potwierdź, że nasłuchuje:

```bash
nohup python3 -m http.server 8080 >/dev/null 2>&1 &
sleep 1
ss -tuln | grep 8080
curl -I http://127.0.0.1:8080
```{{exec}}
