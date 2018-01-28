#!/usr/bin/env bash
set -ex

[ -f /etc/profile.d/rbenv.sh ] && . /etc/profile.d/rbenv.sh
eval "$(rbenv init -)"

cd /
rails new -h
[ -d sample ] || \
  rails new sample --database=mysql --webpack=vue

cd sample

[ -f .rspec ] || \
  cat ../Gemfile >> Gemfile &&\
  bin/bundle install --jobs=4 --retry=3 &&\
  bin/rails generate rspec:install

bin/rspec || bin/bundle exec rspec

bundle binstubs bundler --force
bin/webpack

bin/bundle exec spring binstub --all
bin/rubocop --version
bin/rake
bin/rspec
bin/rails webpacker

# Move the sample to /sample if inside docker
[ -f /.dockerenv ] && cd .. && mv sample /
