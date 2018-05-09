#!/usr/bin/env bash
set -x

# cd `dirname $0`

brew update
brew bundle --file=mac/Brewfile
brew link --overwrite --force node@8

scripts/ruby-rails.sh
scripts/rails-sample.sh
scripts/ep-rails-sample.sh
