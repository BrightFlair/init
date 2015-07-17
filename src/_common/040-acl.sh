#!/usr/bin/env bash
set -e
apt-get install -y acl
# Make filesystem automount with acl enabled.
sed -ri 's%^(LABEL=.+\s+/\s+\S+\s+\S+)(\s+.+)%\1,acl\2%' /etc/fstab
# Remount filesystem with acl now.
mount -o remount,acl /
