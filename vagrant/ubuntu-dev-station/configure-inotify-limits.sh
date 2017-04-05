#!/bin/bash

cp /vagrant/90-inotify.conf /etc/sysctl.d/
service systemd-sysctl restart
