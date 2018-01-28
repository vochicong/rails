#!/usr/bin/env bash
set -ex

which yum && yum clean all
rm -rf /var/cache/yum
