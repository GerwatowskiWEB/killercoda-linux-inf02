## Diagnostyka bez zmian konfiguracji

```bash
df -h
du -sh ~
free -h
uptime
ps aux | head -n 8
```{{exec}}

`top` pokazuje procesy na żywo (wyjście: `q`). `kill PID` wysyła sygnał zakończenia. Nie kończ procesów, których roli nie rozumiesz.

## Zadanie

Zapisz wynik `df -h` do pliku `~/laboratorium/dyski.txt` (najpierw `mkdir -p ~/laboratorium`).
