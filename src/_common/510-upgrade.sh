#!/usr/bin/env bash
set -e
# TODO: Add a call to dpkg-reconfigure at next boot.
# Ensure the system is up-to-date with release packages.
do-release-upgrade -f DistUpgradeViewNonInteractive
