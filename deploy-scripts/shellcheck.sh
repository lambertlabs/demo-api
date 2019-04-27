#!/usr/bin/env bash

set -xe

if ! shellcheck deploy-scripts/*.sh; then
    exit 1
fi