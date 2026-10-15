# Krok 1. Zidentyfikuj role i uprawnienia

Baza `inf11` zawiera syntetyczną tabelę `zdarzenia`. Serwer MariaDB pracuje w kontenerze `inf11-db`, bez udostępniania portu na hoście.

```bash
docker exec inf11-db mariadb -uroot -plabroot -e 'SHOW DATABASES;'
docker exec inf11-db mariadb -uroot -plabroot -e "SHOW GRANTS FOR 'audyt'@'%';"
```{{exec}}

W `/root/inf11-sql-raport.txt` zapisz `baza=inf11`.
