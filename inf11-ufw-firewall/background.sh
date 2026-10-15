#!/usr/bin/env bash
set -euo pipefail
export DEBIAN_FRONTEND=noninteractive
# Kontener NET_ADMIN, bez --privileged i bez --network host. Brak mapowania portów na hosta.
command -v docker >/dev/null
docker info >/dev/null
for i in $(seq 1 90); do docker image inspect ubuntu:24.04 >/dev/null 2>&1 && break; docker pull ubuntu:24.04 >/dev/null 2>&1 && break; sleep 2; done
docker rm -f inf11-fw >/dev/null 2>&1 || true
docker run -d --name inf11-fw --cap-add NET_ADMIN ubuntu:24.04 sleep infinity >/dev/null
docker exec inf11-fw bash -lc 'apt-get update -qq && DEBIAN_FRONTEND=noninteractive apt-get install -y -qq ufw iptables >/dev/null'
