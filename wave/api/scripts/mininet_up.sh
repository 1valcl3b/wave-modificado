#!/bin/bash

set -e

sudo mn -c

sudo python3 ../../app/provision/network.py > mininet.log 2>&1 &

echo $! > mininet.pid

sleep 3

LAST_SWITCH=$(cat /tmp/ultimo_switch.txt)


sudo ip link set s1 up
sudo ip link set $LAST_SWITCH up


