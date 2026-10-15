## Statyczny adres na interfejsie wirtualnym

Utwórz plik `/etc/netplan/60-lab.yaml`. Możesz użyć edytora (`nano /etc/netplan/60-lab.yaml`) albo wkleić całość:

```bash
cat > /etc/netplan/60-lab.yaml <<'EOF'
network:
  version: 2
  renderer: networkd
  dummy-devices:
    dummy0:
      addresses:
        - 192.168.50.10/24
EOF
chmod 600 /etc/netplan/60-lab.yaml
```{{exec}}

Prawa `600` są wymagane: netplan ostrzega, gdy pliki konfiguracji są dostępne dla wszystkich.

Sprawdź składnię, zastosuj konfigurację i zobacz wynik:

```bash
netplan generate
netplan apply
ip -br a
```{{exec}}

`generate` tylko sprawdza i tworzy konfigurację, a `apply` ją stosuje. Zawsze zaczynaj od `generate`.

## Zadanie

Interfejs `dummy0` ma mieć adres `192.168.50.10/24`.
