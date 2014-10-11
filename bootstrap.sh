#!/usr/bin/env bash

apt-get update
# Install all the stuff
apt-get install -y lxde tightvncserver

# Run the server on boot
cp /vagrant/init.d.vnc /etc/init.d/vnc
chmod 0755 /etc/init.d/vnc
update-rc.d vnc defaults
