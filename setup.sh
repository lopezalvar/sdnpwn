#!/bin/bash

echo "

sdnpwn requires the following software...
From package manager:
   - python3
   - python3-netifaces
   - python3-scipy
   - bridge-utils
   - python3-pip
From pip3:
   - scapy-python
   - python-openflow
   - websocket-client

This script will now download the above software using apt-get and pip3. If you're ok with this enter 'y' to continue.


"
read -p "Install Required Software? [y/N] " res

if [ "$res" == "y" ]; then
  apt-get update
  apt-get install python3 python3-pip python3-netifaces python3-scipy bridge-utils python3-tabulate
  pip3 install scapy-python3
  pip3 install python-openflow
  pip3 install websocket-client

echo -e "\n

Maven is used by some modules to build Java-based SDN applications"

  read -p "Would you like to install Maven? [y/N] " res

  if [ "$res" == "y" ]; then
    apt-get install maven
  fi

else
  echo "Quiting."
fi

