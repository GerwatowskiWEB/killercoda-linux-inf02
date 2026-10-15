## netplan try

Zastosuj konfigurację z automatycznym wycofaniem zmian:

```bash
netplan try --timeout 30
```{{exec}}

Gdy pojawi się pytanie o potwierdzenie, naciśnij **Enter**. Potem sprawdź wynik:

```bash
ip -br a
ip route
```{{exec}}

## Zadanie

Interfejs `dummy2` ma mieć adres `192.168.70.2/24`, a w `ip route` **nie może** pojawić się nowa trasa domyślna przez `dummy2`.

Odpowiedz sobie na pytanie: co by się stało, gdyby trasa `default` z przykładu została w pliku?
