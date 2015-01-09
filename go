#!/usr/bin/env bash
set -e
SCRIPT=$(basename $0)
apt-get update
apt-get upgrade -y
apt-get install -y git-core
cd
yes "yes" | git clone git@github.com:BrightFlair/init
cd init
src/$SCRIPT/init-$SCRIPT
