#!/bin/bash

wget -q -O visual-studio-code-amd64.deb https://go.microsoft.com/fwlink/?LinkID=760868
dpkg -i visual-studio-code-amd64.deb
apt-get -y -f install
