#!/bin/bash

sudo mkdir -p /opt/<%= appName %>/
sudo mkdir -p /opt/<%= appName %>/config
sudo mkdir -p /opt/<%= appName %>/tmp

sudo chown ${USER} /opt/<%= appName %> -R
# sudo chown ${USER} /etc/init
# sudo chown ${USER} /etc/
sudo chown ${USER} /etc/systemd/system/
sudo chown ${USER} /lib/systemd/system/

# need new version of wait-for-mongo which uses mongodb node driver 2.2.x, otherwise it breaks.
sudo npm install -g forever userdown https://github.com/mkg20001/wait-for-mongo.git node-gyp

# Creating a non-privileged user
sudo useradd meteoruser || :
