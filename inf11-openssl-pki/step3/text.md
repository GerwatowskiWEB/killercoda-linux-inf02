# Krok 3. Podpisz certyfikat serwera

Podpisz CSR kluczem CA i zapisz `server.crt` ważny 90 dni, używając `-extfile san.ext`. Sprawdź `openssl verify -CAfile ca.crt server.crt` oraz rozszerzenie Subject Alternative Name. Nie używaj takiego certyfikatu na publicznej stronie internetowej.
