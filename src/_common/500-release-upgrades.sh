#!/usr/bin/env bash
set -e
# Allow upgrades to all Ubuntu releases, not just LTS.
sed -i 's/^Prompt=lts/Prompt=normal/' /etc/update-manager/release-upgrades
