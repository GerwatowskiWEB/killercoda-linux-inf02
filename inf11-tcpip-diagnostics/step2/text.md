# Krok 2. Rozpoznaj problem DNS

W laboratorium domena `serwis.inf11.test` wskazuje na `127.0.0.1` dzięki lokalnemu `/etc/hosts`. Ustal jej adres przy pomocy `getent hosts`. Zapisz do `/root/inf11-dns.txt` dokładnie `127.0.0.1`.

`getent hosts` uwzględnia lokalny resolver; nie zakładaj, że zawsze odpyta publiczny serwer DNS.
