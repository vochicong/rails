#!/usr/bin/env bash
set -ex

[ -f /etc/profile.d/rbenv.sh ] && . /etc/profile.d/rbenv.sh
eval "$(rbenv init -)"

[ -f /.dockerenv ] && cd /sample || cd sample
bin/bundle install
bin/yarn install
bin/rails server
