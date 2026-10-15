#!/usr/bin/env bash
set -euo pipefail
trap 'rc=$?; [ "$rc" -ne 0 ] && touch /tmp/setup-failed; touch /tmp/finished' EXIT
export DEBIAN_FRONTEND=noninteractive
apt-get update -qq && apt-get install -y -qq nginx curl netcat-openbsd >/dev/null
printf '127.0.0.1 serwis.inf11.test
' >> /etc/hosts
mkdir -p /var/www/inf11
printf 'INF11: serwis lokalny
' > /var/www/inf11/index.html
rm -f /etc/nginx/sites-enabled/default
cat > /etc/nginx/sites-enabled/inf11-lab <<'EOF'
server { listen 127.0.0.1:8080; server_name serwis.inf11.test; root /var/www/inf11; index index.html; }
EOF
nginx -t && systemctl restart nginx
