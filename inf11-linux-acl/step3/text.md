# Krok 3. Nadaj dodatkowe prawo ACL

Użytkownik `bartek` ma uzyskać **tylko prawo odczytu pliku** `raport.txt`, bez zmiany jego właściciela. Użyj `setfacl -m u:bartek:r-- ...`. Sprawdź `getfacl` i maskę ACL; jeżeli maska ogranicza uprawnienia, popraw ją.

**Ważne:** ACL pliku nie zastępuje uprawnień przejścia (`x`) po katalogach. W tym laboratorium grupa `inf11analiza` ma takie prawo.
