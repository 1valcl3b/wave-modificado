#!/bin/bash

set -e

if [ -f mininet.pid ]; then
  sudo kill "$(cat mininet.pid)"
  rm -f mininet.pid
fi

sudo mn -c


