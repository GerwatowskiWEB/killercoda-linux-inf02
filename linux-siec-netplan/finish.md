# Gotowe

Napisałeś plik netplan, dodałeś adresy, trasę i DNS, naprawiłeś błąd składni i użyłeś bezpiecznej metody wdrażania zmian.

**Pytania do przemyślenia:**
- Dlaczego warto zawsze uruchamiać `netplan generate` przed `netplan apply`?
- Jakie ryzyko niesie zmiana adresu głównego interfejsu przez SSH i jak pomaga `netplan try`?
- Jak wskazać w pliku YAML, że interfejs ma pobierać adres z DHCP?
