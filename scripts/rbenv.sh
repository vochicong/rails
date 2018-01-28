#!/usr/bin/env bash
set -ex

[ -d /rbenv ] ||\
git clone https://github.com/rbenv/rbenv.git /rbenv

echo 'export RBENV_ROOT="/rbenv"' > /etc/profile.d/rbenv.sh
echo 'export PATH=${RBENV_ROOT}/bin:${PATH}' >> /etc/profile.d/rbenv.sh
echo 'eval "$(rbenv init -)"' >> /etc/profile.d/rbenv.sh
. /etc/profile.d/rbenv.sh

[ -d "$(rbenv root)"/plugins/ruby-build ] ||\
git clone https://github.com/rbenv/ruby-build.git "$(rbenv root)"/plugins/ruby-build
curl -fsSL https://github.com/rbenv/rbenv-installer/raw/master/bin/rbenv-doctor | bash
