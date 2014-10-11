headless-ubuntu-vncserver
=========================

Amazon workspace like experience. Took me too long to make this happen, here's a sample to save you time.

# Requires
* vagrant
* your own vnc viewer

# Usage
`vagrant up` will spin up the box and set everything up.
It forwards guest port 5901 to host 5901, so you should point your vnc viewer to localhost:15901

That should be it.
