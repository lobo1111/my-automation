#!/bin/bash

AUTOMATION_DIR=/opt/my-automation
mkdir -p $AUTOMATION_DIR
cd $AUTOMATION_DIR
if which chef > /dev/null; then
  echo "Chef already installed, skipping"
else
  curl -L https://omnitruck.chef.io/install.sh | sudo bash
fi
#chef-solo -j runlist.json --recipe-url https://github.com/lobo1111/my-automation/raw/master/my-automation.tar.gz
knife cookbook site install mymedia

