headless-ubuntu-vncserver
=========================

Amazon workspace like experience. Took me too long to make this happen, here's a sample to save you time.

# Requires
* vagrant
* your own vnc viewer

# Usage
`vagrant up` will spin up the box and set everything up.
It forwards guest port 5901 to host 5901, so you should point your vnc viewer to localhost:15901
password is the super secure "password"

That should be it.

# Key learnings
## xstartup
it is generated automatically on the first run of tightvncserver. However, to get it to launch the correct window manager, you will need to change the first line. In our case, we run `/usr/bin/startlxde`. You shouldn't need to change anything else.

## init.d.vnc
This is run by root, so if you simply run tightvncserver, it will look for settings under `/root/.vnc`. A workaround is to use `su -c "command" username`. If you know of a generic way of achieving this please let me know. Eager to learn.

## tightvncserver
You should start the server with `-localhost` flag so it is not accessible from the internet
when you need to use it, make a ssh tunnel `ssh -p2222 -L 5901:localhost:5901 vagrant@localhost`
then you can access it from localhost:5901
