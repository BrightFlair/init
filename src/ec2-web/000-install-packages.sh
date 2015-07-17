#!/usr/bin/env bash
set -e
apt-get update
apt-get install -y \
  nginx php5-fpm php5-curl php5-cli php5-common \
  php5-gd php5-imagick php5-json php5-sqlite php5-intl \
  php5-mysql mysql-client
