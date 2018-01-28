#!/usr/bin/env bash
set -ex

# Install various utils
amazon-linux-extras install vim
yum -y install git psmisc wget which unzip bzip2

# Install Google Chrome for Capybara testing
which google-chrome ||\
yum -y install https://dl.google.com/linux/direct/google-chrome-stable_current_x86_64.rpm

# For chromedriver
rpm --import http://mirror.centos.org/centos/RPM-GPG-KEY-CentOS-6
yum -y install GConf2

# Install Japanese fonts for Capybara testing
yum -y install ipa-gothic-fonts

# Development tools
yum -y install ruby gcc-c++ openssl-devel readline-devel
yum -y install ImageMagick-devel mysql-devel
curl --silent --location https://rpm.nodesource.com/setup_6.x | bash -
wget https://dl.yarnpkg.com/rpm/yarn.repo -O /etc/yum.repos.d/yarn.repo
yum -y install nodejs yarn
yum -y install graphviz cron
