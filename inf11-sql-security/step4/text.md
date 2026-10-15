# Krok 4. Wykonaj i zweryfikuj backup

Wykonaj eksport bazy **tylko laboratoryjnej** do `/root/inf11-backup.sql` (np. `docker exec inf11-db mariadb-dump -uroot -plabroot inf11 > ...`). Sprawdź czy są w nim definicja `CREATE TABLE` i co najmniej jeden `INSERT INTO`. Dopisz do raportu `backup=ok`.

Nie zapisuj realnych haseł ani danych osobowych w repozytorium.
