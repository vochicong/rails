#!/usr/bin/env bash
set -x

cd `dirname $0`

brew update
brew bundle 

eval "$(rbenv init -)"

# Install Ruby
rbenv install -s 2.4.3
rbenv global 2.4.3
ruby -v

gem install bundler 
bundle install
