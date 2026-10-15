# Krok 4. Sprawdź odporność na zmiany danych

Skopiuj plik `logowania.csv` do `logowania-test.csv`. Dopisz do kopii 5 nowych nieudanych logowań z adresu `192.0.2.77` w obrębie **jednego okna zegarowego** (np. 11:10–11:14, a nie 11:12–11:16, bo to przekracza granicę 11:15). Uruchom skrypt dla **pliku testowego** (np. przez argument `python3 analiza.py logowania-test.csv`). Wynik ma zawierać oba podejrzane adresy. Zapisz do `wynik-test.json` taki sam format jak w raporcie.

Wskazówka: unikaj liczenia wszystkich nieudanych logowań bez sprawdzania czasu.
