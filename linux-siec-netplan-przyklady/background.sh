#!/bin/bash
export DEBIAN_FRONTEND=noninteractive
modprobe dummy 2>/dev/null
if ! command -v netplan >/dev/null 2>&1; then
  apt-get update -qq
  apt-get install -y -qq netplan.io
fi
# Jesli obraz nie zawiera dokumentacji pakietu, dodaj przyklad w standardowej lokalizacji
if ! find / -path /proc -prune -o -name static.yaml -path '*netplan*' -print 2>/dev/null | grep -q .; then
  mkdir -p /usr/share/doc/netplan/examples
  cat > /usr/share/doc/netplan/examples/static.yaml <<'EOF'
network:
  version: 2
  renderer: networkd
  ethernets:
    enp3s0:
      addresses:
        - 10.10.10.2/24
      nameservers:
          search: [mydomain, otherdomain]
          addresses: [10.10.10.1, 1.1.1.1]
      routes:
        - to: default
          via: 10.10.10.1
EOF
fi
mkdir -p /root/laboratorium
touch /tmp/finished
