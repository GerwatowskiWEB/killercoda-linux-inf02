# Krok 2. Ogranicz uprawnienia konta audyt

Konto `audyt` ma mieć **jedynie SELECT** do `inf11.zdarzenia`, bez globalnych grantów i bez możliwości zapisu. Odbierz wszystkie nadmiarowe uprawnienia do tabeli i nadaj minimalne. Korzystaj z poleceń `REVOKE` i `GRANT`. Dla konta demo hasło jest jawne tylko na czas laboratorium.
