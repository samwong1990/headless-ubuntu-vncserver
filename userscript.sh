#!/usr/bin/env bash

# Put all files in place so we can run tightvncserver without getting prompted for anything
mkdir -p ~/.vnc/
cp /vagrant/xstartup ~/.vnc/xstartup
# Important, must make it executable
chmod 700 ~/.vnc/xstartup
echo password | vncpasswd -f > ~/.vnc/passwd
# Important, must have restricted access. Similar to ssh keys
chmod 600 ~/.vnc/passwd

# Launch the server now so you can connect to it without rebooting
tightvncserver
