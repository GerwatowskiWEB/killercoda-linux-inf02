#!/usr/bin/env bash
set -euo pipefail
export DEBIAN_FRONTEND=noninteractive
apt-get update -qq && apt-get install -y -qq openssl >/dev/null
mkdir -p /root/inf11-pki
chmod 700 /root/inf11-pki
