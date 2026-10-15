## Testy

```bash
ping -c 4 127.0.0.1
ping -c 4 1.1.1.1
getent hosts example.com
resolvectl status | head -n 15
```{{exec}}

Brak odpowiedzi na `ping` nie zawsze oznacza awarię, bo ruch ICMP bywa blokowany. Jeśli po IP działa, a po nazwie nie, szukaj problemu w DNS.

## Zadanie

Zapisz do `~/laboratorium/dns.txt` wynik `getent hosts example.com`.
