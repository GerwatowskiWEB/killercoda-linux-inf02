#!/usr/bin/env bash
set -euo pipefail
export DEBIAN_FRONTEND=noninteractive
apt-get update -qq && apt-get install -y -qq acl >/dev/null
getent group inf11analiza >/dev/null || groupadd inf11analiza
for u in anna bartek gosc; do id "$u" >/dev/null 2>&1 || useradd -m -s /bin/bash "$u"; done
usermod -aG inf11analiza anna
usermod -aG inf11analiza bartek
mkdir -p /srv/inf11
chmod 755 /srv/inf11
mkdir -p /srv/inf11/dokumenty
chown root:root /srv/inf11/dokumenty
chmod 755 /srv/inf11/dokumenty
