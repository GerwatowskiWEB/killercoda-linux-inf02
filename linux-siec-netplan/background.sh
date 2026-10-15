#!/bin/bash
export DEBIAN_FRONTEND=noninteractive
modprobe dummy 2>/dev/null
if ! command -v netplan >/dev/null 2>&1; then
  apt-get update -qq
  apt-get install -y -qq netplan.io
fi
mkdir -p /root/laboratorium
touch /tmp/finished
