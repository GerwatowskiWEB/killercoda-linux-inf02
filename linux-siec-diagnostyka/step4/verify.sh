#!/bin/bash
if grep -Eq '^[^#]*[[:space:]]example\.com' /etc/hosts; then echo "W /etc/hosts nadal jest wpis dla example.com"; exit 1; fi
getent hosts example.com | grep -vq '^127\.' || { echo "example.com nadal wskazuje na 127.x"; exit 1; }
exit 0
