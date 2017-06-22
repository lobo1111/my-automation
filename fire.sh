#!/bin/bash

AUTOMATION_DIR=/opt/my-automation
mkdir -p $AUTOMATION_DIR
cd $AUTOMATION_DIR
curl -L https://omnitruck.chef.io/install.sh | sudo bash
chef-solo -j runlist.json --recipe-url https://github.com/lobo1111/my-automation/raw/master/my-automation.tar.gz

