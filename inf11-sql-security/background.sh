#!/usr/bin/env bash
set -euo pipefail
trap 'rc=$?; [ "$rc" -ne 0 ] && touch /tmp/setup-failed; touch /tmp/finished' EXIT
# Baza testowa, dane wyłącznie syntetyczne; MariaDB pozostaje w kontenerze Docker.
command -v docker >/dev/null; docker info >/dev/null
for i in $(seq 1 90); do docker image inspect mariadb:11 >/dev/null 2>&1 && break; docker pull mariadb:11 >/dev/null 2>&1 && break; sleep 2; done
docker rm -f inf11-db >/dev/null 2>&1 || true
docker run -d --name inf11-db -e MARIADB_ROOT_PASSWORD=labroot -e MARIADB_DATABASE=inf11 mariadb:11 >/dev/null
for i in $(seq 1 80); do docker exec inf11-db mariadb -h127.0.0.1 -uroot -plabroot -e 'SELECT 1' >/dev/null 2>&1 && break; sleep 2; done
docker exec -i inf11-db mariadb -uroot -plabroot <<'EOF'
CREATE DATABASE IF NOT EXISTS inf11;
CREATE TABLE IF NOT EXISTS inf11.zdarzenia (id INT PRIMARY KEY, typ VARCHAR(32), opis VARCHAR(80));
INSERT IGNORE INTO inf11.zdarzenia VALUES (1,'LOGIN','Logowanie poprawne'),(2,'FAIL','Nieudane logowanie'),(3,'LOGIN','Logowanie poprawne');
CREATE USER IF NOT EXISTS 'audyt'@'%' IDENTIFIED BY 'audytlab';
GRANT SELECT, INSERT, UPDATE, DELETE ON inf11.zdarzenia TO 'audyt'@'%';
EOF
