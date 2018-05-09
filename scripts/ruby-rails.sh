#!/usr/bin/env bash
set -ex

RUBY_VERSION="2.4.4"

[ -f /etc/profile.d/rbenv.sh ] && . /etc/profile.d/rbenv.sh
eval "$(rbenv init -)"

# rbenv install --list
rbenv install -s ${RUBY_VERSION}
rbenv global ${RUBY_VERSION}

which ruby
ruby --version
gem install bundler rails
