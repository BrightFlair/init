#!/usr/bin/env bash
set -e
apt-get update
apt-get upgrade -y
apt-get install -y git-core
cd
git clone http://github.com/BrightFlair/init
cd init
src/$INIT_TYPE/init-$INIT_TYPE
