#!/usr/bin/env bash
set -e
echo "$SERVER_NAME" > /etc/hostname
echo "127.0.0.1 $SERVER_NAME" >> /etc/hosts
