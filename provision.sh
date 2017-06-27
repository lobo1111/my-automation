#!/bin/bash

yum install -y git

gpg --keyserver hkp://keys.gnupg.net --recv-keys 409B6B1796C275462A1703113804BB82D39DC0E3 7D2BAF1CF37B13E2069D6956105BD0E739499BDB
curl -sSL https://get.rvm.io | bash -s $1
source $HOME/.rvm/scripts/rvm || source /etc/profile.d/rvm.sh
rvm use --default --install 2.3

gem install knife-solo

cd /opt
git clone https://github.com/lobo1111/my-automation.git

cd my-automation/cookbooks
knife supermarket download docker
tar zxf docker*
rm -f docker-*
cd ..

chef-solo -c solo.rb -j runlist.json
