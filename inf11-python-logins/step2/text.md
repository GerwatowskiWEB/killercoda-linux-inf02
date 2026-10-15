# Krok 2. Wykryj serię błędnych logowań

Dodaj analizę nieudanych logowań w **oknach 15-minutowych zegarowych** (09:00–09:14, 09:15–09:29, 09:30–09:44, 09:45–09:59 itd.). Za podejrzany uznaj adres IP z co najmniej **5 błędami w tym samym oknie**. Zapisz listę adresów w `/root/inf11-python/podejrzane.txt`, po jednym adresie na linię, bez innych komunikatów.
