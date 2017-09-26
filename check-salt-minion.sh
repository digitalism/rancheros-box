#!/bin/bash
set -e -x

for i in $(seq 20); do
  if [ -x $(docker images -q mhdali/salt-minion:jessie) ]; then
    sleep 5
  else
    break
  fi
done

if [ -f /opt/salt-minion/minion_id ]; then
  sudo rm -fr /opt/salt-minion/{minion_id,pki}
fi
