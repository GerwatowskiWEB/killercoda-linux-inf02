# Krok 1. Utwórz klucz CA i certyfikat

Pracuj w `/root/inf11-pki`. Utwórz klucz RSA 3072-bitowy `ca.key` i samopodpisany certyfikat `ca.crt` ważny 365 dni, z CN `MTI INF11 Lab CA`. W laboratorium klucz jest niezabezpieczony hasłem — na produkcji klucz CA musi być chroniony. Nadaj `ca.key` prawa `600`.
