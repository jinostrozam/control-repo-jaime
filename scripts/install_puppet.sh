#!/bin/bash
source /etc/lsb-release
apt-key adv --fetch-keys http://apt.puppetlabs.com/DEB-GPG-KEY-puppet
wget http://apt.puppetlabs.com/puppet-release-${DISTRIB_CODENAME}.deb
dpkg -i puppet-release-${DISTRIB_CODENAME}.deb
apt-get update
apt-get -y install git puppet-agent
apt-get -y install git-core curl zlib1g-dev build-essential gcc libssl-dev libreadline-dev libyaml-dev libsqlite3-dev sqlite3 libxml2-dev libxslt1-dev libcurl4-openssl-dev software-properties-common libffi-dev gnupg rng-tools apt-transport-https zsh git curl
#apt-get -y dist-upgrade