#!/usr/bin/env bash
set -euo pipefail
trap 'rc=$?; [ "$rc" -ne 0 ] && touch /tmp/setup-failed; touch /tmp/finished' EXIT
export DEBIAN_FRONTEND=noninteractive
apt-get update -qq && apt-get install -y -qq openssh-server openssh-client >/dev/null
id labssh >/dev/null 2>&1 || useradd -m -s /bin/bash labssh
userpass=$(openssl rand -hex 18)
echo "labssh:${userpass}" | chpasswd
unset userpass
mkdir -p /run/sshd /opt/inf11/ssh
ssh-keygen -A >/dev/null
cat > /opt/inf11/ssh/sshd_config <<'EOF'
Port 2222
ListenAddress 127.0.0.1
HostKey /etc/ssh/ssh_host_ed25519_key
PidFile /opt/inf11/ssh/sshd.pid
AuthorizedKeysFile .ssh/authorized_keys
UsePAM no
PermitRootLogin yes
PasswordAuthentication yes
PubkeyAuthentication yes
Subsystem sftp internal-sftp
EOF
