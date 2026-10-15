## Skrypt

```bash
cd ~/laboratorium
printf '#!/bin/bash\necho "Dzialam jako $(whoami)"\n' > skrypt.sh
ls -l skrypt.sh
./skrypt.sh
```{{exec}}

Ostatnie polecenie się nie uda: plik nie ma prawa wykonywania (`Permission denied`).

## Zadanie

Nadaj `skrypt.sh` prawa `755` i uruchom go.

<details><summary>Podpowiedź</summary>

`chmod 755 skrypt.sh` albo `chmod +x skrypt.sh`
</details>
