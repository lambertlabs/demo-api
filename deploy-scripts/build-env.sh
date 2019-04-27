#!/usr/bin/env bash

set -xe

apt-get update

echo Updating conda...
conda update conda

echo building environment
conda env update --name root -f environment.yml
apt-get install zip

# Install linters globally
apt-get install shellcheck
