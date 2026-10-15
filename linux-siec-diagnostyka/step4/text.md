## Awaria

Ktoś „pomagał” i zmienił konfigurację:

```bash
echo "127.0.0.1 example.com" >> /etc/hosts
getent hosts example.com
ping -c 2 example.com
```{{exec}}

Nazwa wskazuje na złe miejsce, choć sieć działa.

## Zadanie

Ustal, **skąd** system bierze ten adres (podpowiedź: `cat /etc/hosts` i kolejność źródeł w `/etc/nsswitch.conf`, linia `hosts:`). Usuń przyczynę tak, aby `getent hosts example.com` zwracało prawdziwy adres z DNS.
