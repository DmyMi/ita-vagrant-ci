#!/usr/bin/env bash

sudo apt-get install build-essential dkms -y

curl -sL https://deb.nodesource.com/setup_8.x | sudo -E bash -

sudo apt-get install openjdk-8-jdk-headless nodejs maven -y

sudo curl -O https://storage.googleapis.com/golang/go1.9.2.linux-amd64.tar.gz

sudo tar -xvf go1.9.1.linux-amd64.tar.gz

sudo mv go /usr/local

echo "export PATH=$PATH:/usr/local/go/bin" >> /etc/profile.d/go.sh

echo "export GOROOT=$HOME/go" >> /etc/profile.d/go.sh
echo "export PATH=$PATH:$GOROOT/bin" >> /etc/profile.d/go.sh

sudo npm install -g @angular/cli

sudo npm install -g typescript

sudo npm install -g webpack

sudo apt-get autoclean -y

sudo apt-get autoremove -y
