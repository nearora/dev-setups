#!/bin/bash

wget -q -O - https://dl.google.com/linux/linux_signing_key.pub | \
    apt-key add -
cp /vagrant/google-chrome.list /etc/apt/sources.list.d/

apt-get update
apt-get -y install google-chrome-stable
