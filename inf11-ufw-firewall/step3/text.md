# Krok 3. Włącz filtr w kontenerze

Włącz UFW **wyłącznie poleceniem** `docker exec inf11-fw ufw --force enable`. Następnie sprawdź `docker exec inf11-fw ufw status verbose` i zapisz wynik do `/root/inf11-fw-status.txt`.

Jeśli UFW sygnalizuje brak uprawnień jądra, zakończ ćwiczenie i zgłoś nauczycielowi problem środowiska — nie próbuj uruchamiać zapory na hoście.
