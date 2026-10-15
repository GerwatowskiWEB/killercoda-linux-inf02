# Krok 3. Włącz autoryzację kluczem

Utwórz klucz Ed25519 w `/opt/inf11/ssh/client_ed25519` (bez hasła, **tylko w tym laboratorium**) i dodaj klucz publiczny do `/home/labssh/.ssh/authorized_keys`. Nadaj katalogowi `.ssh` tryb `700`, plikowi `authorized_keys` tryb `600`, a obu obiektom właściciela `labssh`.

W rzeczywistych systemach klucze prywatne powinny być chronione hasłem.
