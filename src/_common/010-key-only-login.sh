#!/usr/bin/env bash
set -e
sed -ri 's/^(PasswordAuthentication) .+/\1 no/' /etc/ssh/sshd_config
/etc/init.d/ssh restart
