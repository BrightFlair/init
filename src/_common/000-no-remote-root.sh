#!/usr/bin/env bash
set -e
sed -ri 's/^(PermitRootLogin) .+/\1 no/' /etc/ssh/sshd_config
