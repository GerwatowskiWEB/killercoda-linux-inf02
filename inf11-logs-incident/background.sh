#!/usr/bin/env bash
set -euo pipefail
export DEBIAN_FRONTEND=noninteractive
apt-get update -qq && apt-get install -y -qq nginx curl >/dev/null
mkdir -p /var/www/inf11
printf 'INF11 OK
' >/var/www/inf11/index.html
rm -f /etc/nginx/sites-enabled/default
cat > /etc/nginx/sites-enabled/inf11-lab <<'EOF'
server {
    listen 8080;
    server_name localhost;
    root /var/www/inf11;
    index index.html;
    directive_typo inf11;
}
EOF
systemctl stop nginx >/dev/null 2>&1 || true
