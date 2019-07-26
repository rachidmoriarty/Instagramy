#!/bin/bash
#HOSTIP=`ip addr show | grep docker0 | grep global | awk '{print $2}' | cut -d / -f1`
HOSTIP=172.18.10.172
sudo docker run -dit -p 80:8443 -p 1936:1936 --add-host=docker:${HOSTIP} --rm -it -v /btrfs/haproxy/haproxy.cfg:/usr/local/etc/haproxy/haproxy.cfg:ro --name myhaproxy haproxy:1.5
