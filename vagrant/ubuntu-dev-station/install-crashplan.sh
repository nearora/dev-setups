#!/bin/bash -x

mkdir -p ~/crashplan
cd ~/crashplan && wget -q -O crashplan.tgz https://download.code42.com/installs/linux/install/CrashPlan/CrashPlan_4.8.2_Linux.tgz
cd ~/crashplan && tar -xf crashplan.tgz
cp /vagrant/install-crashplan.exp ~/crashplan/crashplan-install
cd ~/crashplan/crashplan-install && expect -f install-crashplan.exp
