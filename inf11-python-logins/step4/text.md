# Krok 4. Sprawdź odporność na zmiany danych

Skopiuj plik `logowania.csv` do `logowania-test.csv`. Dopisz do kopii 5 nowych nieudanych logowań z adresu `192.0.2.77` w ciągu jednego kwadransa. Uruchom skrypt dla **pliku testowego** (np. przez argument `python3 analiza.py logowania-test.csv`). Wynik ma zawierać oba podejrzane adresy. Zapisz do `wynik-test.json` taki sam format jak w raporcie.

Wskazówka: unikaj liczenia wszystkich nieudanych logowań bez sprawdzania czasu.
