#!/usr/bin/env bash
set -euo pipefail
trap 'rc=$?; [ "$rc" -ne 0 ] && touch /tmp/setup-failed; touch /tmp/finished' EXIT
export DEBIAN_FRONTEND=noninteractive
apt-get update -qq && apt-get install -y -qq openssl >/dev/null
mkdir -p /root/inf11-pki
chmod 700 /root/inf11-pki
