# Krok 2. Przygotuj żądanie CSR

Wygeneruj klucz prywatny `server.key` (RSA 2048-bit) i CSR `server.csr` z CN `serwer.inf11.test`. Przygotuj plik `/root/inf11-pki/san.ext` z linią `subjectAltName=DNS:serwer.inf11.test`. Zadbaj o prywatność klucza (`chmod 600`).
